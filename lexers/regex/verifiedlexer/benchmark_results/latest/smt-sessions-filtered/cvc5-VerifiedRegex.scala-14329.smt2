; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!748256 () Bool)

(assert start!748256)

(declare-fun b!7925193 () Bool)

(declare-fun res!3144857 () Bool)

(declare-fun e!4677363 () Bool)

(assert (=> b!7925193 (=> (not res!3144857) (not e!4677363))))

(declare-datatypes ((T!145774 0))(
  ( (T!145775 (val!32055 Int)) )
))
(declare-datatypes ((List!74567 0))(
  ( (Nil!74443) (Cons!74443 (h!80891 T!145774) (t!390166 List!74567)) )
))
(declare-datatypes ((IArray!31855 0))(
  ( (IArray!31856 (innerList!15985 List!74567)) )
))
(declare-datatypes ((Conc!15897 0))(
  ( (Node!15897 (left!56866 Conc!15897) (right!57196 Conc!15897) (csize!32024 Int) (cheight!16108 Int)) (Leaf!30227 (xs!19285 IArray!31855) (csize!32025 Int)) (Empty!15897) )
))
(declare-fun t!4440 () Conc!15897)

(assert (=> b!7925193 (= res!3144857 (is-Empty!15897 t!4440))))

(declare-fun b!7925194 () Bool)

(declare-fun e!4677360 () Bool)

(declare-fun e!4677361 () Bool)

(declare-fun inv!95695 (IArray!31855) Bool)

(assert (=> b!7925194 (= e!4677360 (and (inv!95695 (xs!19285 t!4440)) e!4677361))))

(declare-fun b!7925195 () Bool)

(declare-fun e!4677359 () Bool)

(assert (=> b!7925195 (= e!4677363 e!4677359)))

(declare-fun res!3144859 () Bool)

(assert (=> b!7925195 (=> res!3144859 e!4677359)))

(declare-fun lt!2692717 () Conc!15897)

(declare-fun isBalanced!4523 (Conc!15897) Bool)

(assert (=> b!7925195 (= res!3144859 (not (isBalanced!4523 lt!2692717)))))

(declare-fun v!5484 () T!145774)

(declare-fun fill!274 (Int T!145774) IArray!31855)

(assert (=> b!7925195 (= lt!2692717 (Leaf!30227 (fill!274 1 v!5484) 1))))

(declare-fun b!7925196 () Bool)

(declare-fun tp!2358464 () Bool)

(assert (=> b!7925196 (= e!4677361 tp!2358464)))

(declare-fun tp!2358463 () Bool)

(declare-fun tp!2358465 () Bool)

(declare-fun b!7925197 () Bool)

(declare-fun inv!95696 (Conc!15897) Bool)

(assert (=> b!7925197 (= e!4677360 (and (inv!95696 (left!56866 t!4440)) tp!2358465 (inv!95696 (right!57196 t!4440)) tp!2358463))))

(declare-fun b!7925198 () Bool)

(declare-fun e!4677362 () Bool)

(assert (=> b!7925198 (= e!4677359 e!4677362)))

(declare-fun res!3144858 () Bool)

(assert (=> b!7925198 (=> res!3144858 e!4677362)))

(declare-fun lt!2692719 () Int)

(declare-fun lt!2692718 () Int)

(assert (=> b!7925198 (= res!3144858 (or (> lt!2692719 lt!2692718) (> lt!2692718 (+ 1 lt!2692719))))))

(declare-fun height!2212 (Conc!15897) Int)

(assert (=> b!7925198 (= lt!2692718 (height!2212 lt!2692717))))

(assert (=> b!7925198 (= lt!2692719 (height!2212 t!4440))))

(declare-fun res!3144860 () Bool)

(assert (=> start!748256 (=> (not res!3144860) (not e!4677363))))

(assert (=> start!748256 (= res!3144860 (isBalanced!4523 t!4440))))

(assert (=> start!748256 e!4677363))

(assert (=> start!748256 (and (inv!95696 t!4440) e!4677360)))

(declare-fun tp_is_empty!53219 () Bool)

(assert (=> start!748256 tp_is_empty!53219))

(declare-fun b!7925199 () Bool)

(declare-fun list!19404 (Conc!15897) List!74567)

(declare-fun $colon+!312 (List!74567 T!145774) List!74567)

(assert (=> b!7925199 (= e!4677362 (not (= (list!19404 lt!2692717) ($colon+!312 (list!19404 t!4440) v!5484))))))

(assert (= (and start!748256 res!3144860) b!7925193))

(assert (= (and b!7925193 res!3144857) b!7925195))

(assert (= (and b!7925195 (not res!3144859)) b!7925198))

(assert (= (and b!7925198 (not res!3144858)) b!7925199))

(assert (= (and start!748256 (is-Node!15897 t!4440)) b!7925197))

(assert (= b!7925194 b!7925196))

(assert (= (and start!748256 (is-Leaf!30227 t!4440)) b!7925194))

(declare-fun m!8305696 () Bool)

(assert (=> b!7925195 m!8305696))

(declare-fun m!8305698 () Bool)

(assert (=> b!7925195 m!8305698))

(declare-fun m!8305700 () Bool)

(assert (=> b!7925198 m!8305700))

(declare-fun m!8305702 () Bool)

(assert (=> b!7925198 m!8305702))

(declare-fun m!8305704 () Bool)

(assert (=> start!748256 m!8305704))

(declare-fun m!8305706 () Bool)

(assert (=> start!748256 m!8305706))

(declare-fun m!8305708 () Bool)

(assert (=> b!7925197 m!8305708))

(declare-fun m!8305710 () Bool)

(assert (=> b!7925197 m!8305710))

(declare-fun m!8305712 () Bool)

(assert (=> b!7925194 m!8305712))

(declare-fun m!8305714 () Bool)

(assert (=> b!7925199 m!8305714))

(declare-fun m!8305716 () Bool)

(assert (=> b!7925199 m!8305716))

(assert (=> b!7925199 m!8305716))

(declare-fun m!8305718 () Bool)

(assert (=> b!7925199 m!8305718))

(push 1)

(assert (not b!7925197))

(assert (not b!7925199))

(assert (not b!7925196))

(assert (not b!7925198))

(assert tp_is_empty!53219)

(assert (not b!7925195))

(assert (not start!748256))

(assert (not b!7925194))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2366646 () Bool)

(assert (=> d!2366646 (= (height!2212 lt!2692717) (ite (is-Empty!15897 lt!2692717) 0 (ite (is-Leaf!30227 lt!2692717) 1 (cheight!16108 lt!2692717))))))

(assert (=> b!7925198 d!2366646))

(declare-fun d!2366648 () Bool)

(assert (=> d!2366648 (= (height!2212 t!4440) (ite (is-Empty!15897 t!4440) 0 (ite (is-Leaf!30227 t!4440) 1 (cheight!16108 t!4440))))))

(assert (=> b!7925198 d!2366648))

(declare-fun d!2366650 () Bool)

(declare-fun c!1455047 () Bool)

(assert (=> d!2366650 (= c!1455047 (is-Node!15897 (left!56866 t!4440)))))

(declare-fun e!4677383 () Bool)

(assert (=> d!2366650 (= (inv!95696 (left!56866 t!4440)) e!4677383)))

(declare-fun b!7925227 () Bool)

(declare-fun inv!95699 (Conc!15897) Bool)

(assert (=> b!7925227 (= e!4677383 (inv!95699 (left!56866 t!4440)))))

(declare-fun b!7925228 () Bool)

(declare-fun e!4677384 () Bool)

(assert (=> b!7925228 (= e!4677383 e!4677384)))

(declare-fun res!3144875 () Bool)

(assert (=> b!7925228 (= res!3144875 (not (is-Leaf!30227 (left!56866 t!4440))))))

(assert (=> b!7925228 (=> res!3144875 e!4677384)))

(declare-fun b!7925229 () Bool)

(declare-fun inv!95700 (Conc!15897) Bool)

(assert (=> b!7925229 (= e!4677384 (inv!95700 (left!56866 t!4440)))))

(assert (= (and d!2366650 c!1455047) b!7925227))

(assert (= (and d!2366650 (not c!1455047)) b!7925228))

(assert (= (and b!7925228 (not res!3144875)) b!7925229))

(declare-fun m!8305744 () Bool)

(assert (=> b!7925227 m!8305744))

(declare-fun m!8305746 () Bool)

(assert (=> b!7925229 m!8305746))

(assert (=> b!7925197 d!2366650))

(declare-fun d!2366654 () Bool)

(declare-fun c!1455048 () Bool)

(assert (=> d!2366654 (= c!1455048 (is-Node!15897 (right!57196 t!4440)))))

(declare-fun e!4677385 () Bool)

(assert (=> d!2366654 (= (inv!95696 (right!57196 t!4440)) e!4677385)))

(declare-fun b!7925230 () Bool)

(assert (=> b!7925230 (= e!4677385 (inv!95699 (right!57196 t!4440)))))

(declare-fun b!7925231 () Bool)

(declare-fun e!4677386 () Bool)

(assert (=> b!7925231 (= e!4677385 e!4677386)))

(declare-fun res!3144876 () Bool)

(assert (=> b!7925231 (= res!3144876 (not (is-Leaf!30227 (right!57196 t!4440))))))

(assert (=> b!7925231 (=> res!3144876 e!4677386)))

(declare-fun b!7925232 () Bool)

(assert (=> b!7925232 (= e!4677386 (inv!95700 (right!57196 t!4440)))))

(assert (= (and d!2366654 c!1455048) b!7925230))

(assert (= (and d!2366654 (not c!1455048)) b!7925231))

(assert (= (and b!7925231 (not res!3144876)) b!7925232))

(declare-fun m!8305748 () Bool)

(assert (=> b!7925230 m!8305748))

(declare-fun m!8305750 () Bool)

(assert (=> b!7925232 m!8305750))

(assert (=> b!7925197 d!2366654))

(declare-fun b!7925245 () Bool)

(declare-fun res!3144889 () Bool)

(declare-fun e!4677392 () Bool)

(assert (=> b!7925245 (=> (not res!3144889) (not e!4677392))))

(assert (=> b!7925245 (= res!3144889 (isBalanced!4523 (right!57196 t!4440)))))

(declare-fun b!7925246 () Bool)

(declare-fun isEmpty!42767 (Conc!15897) Bool)

(assert (=> b!7925246 (= e!4677392 (not (isEmpty!42767 (right!57196 t!4440))))))

(declare-fun b!7925247 () Bool)

(declare-fun res!3144892 () Bool)

(assert (=> b!7925247 (=> (not res!3144892) (not e!4677392))))

(assert (=> b!7925247 (= res!3144892 (isBalanced!4523 (left!56866 t!4440)))))

(declare-fun d!2366656 () Bool)

(declare-fun res!3144894 () Bool)

(declare-fun e!4677391 () Bool)

(assert (=> d!2366656 (=> res!3144894 e!4677391)))

(assert (=> d!2366656 (= res!3144894 (not (is-Node!15897 t!4440)))))

(assert (=> d!2366656 (= (isBalanced!4523 t!4440) e!4677391)))

(declare-fun b!7925248 () Bool)

(declare-fun res!3144891 () Bool)

(assert (=> b!7925248 (=> (not res!3144891) (not e!4677392))))

(assert (=> b!7925248 (= res!3144891 (not (isEmpty!42767 (left!56866 t!4440))))))

(declare-fun b!7925249 () Bool)

(declare-fun res!3144890 () Bool)

(assert (=> b!7925249 (=> (not res!3144890) (not e!4677392))))

(assert (=> b!7925249 (= res!3144890 (<= (- (height!2212 (left!56866 t!4440)) (height!2212 (right!57196 t!4440))) 1))))

(declare-fun b!7925250 () Bool)

(assert (=> b!7925250 (= e!4677391 e!4677392)))

(declare-fun res!3144893 () Bool)

(assert (=> b!7925250 (=> (not res!3144893) (not e!4677392))))

(assert (=> b!7925250 (= res!3144893 (<= (- 1) (- (height!2212 (left!56866 t!4440)) (height!2212 (right!57196 t!4440)))))))

(assert (= (and d!2366656 (not res!3144894)) b!7925250))

(assert (= (and b!7925250 res!3144893) b!7925249))

(assert (= (and b!7925249 res!3144890) b!7925247))

(assert (= (and b!7925247 res!3144892) b!7925245))

(assert (= (and b!7925245 res!3144889) b!7925248))

(assert (= (and b!7925248 res!3144891) b!7925246))

(declare-fun m!8305752 () Bool)

(assert (=> b!7925246 m!8305752))

(declare-fun m!8305754 () Bool)

(assert (=> b!7925245 m!8305754))

(declare-fun m!8305756 () Bool)

(assert (=> b!7925250 m!8305756))

(declare-fun m!8305758 () Bool)

(assert (=> b!7925250 m!8305758))

(declare-fun m!8305760 () Bool)

(assert (=> b!7925247 m!8305760))

(declare-fun m!8305762 () Bool)

(assert (=> b!7925248 m!8305762))

(assert (=> b!7925249 m!8305756))

(assert (=> b!7925249 m!8305758))

(assert (=> start!748256 d!2366656))

(declare-fun d!2366658 () Bool)

(declare-fun c!1455049 () Bool)

(assert (=> d!2366658 (= c!1455049 (is-Node!15897 t!4440))))

(declare-fun e!4677393 () Bool)

(assert (=> d!2366658 (= (inv!95696 t!4440) e!4677393)))

(declare-fun b!7925251 () Bool)

(assert (=> b!7925251 (= e!4677393 (inv!95699 t!4440))))

(declare-fun b!7925252 () Bool)

(declare-fun e!4677394 () Bool)

(assert (=> b!7925252 (= e!4677393 e!4677394)))

(declare-fun res!3144895 () Bool)

(assert (=> b!7925252 (= res!3144895 (not (is-Leaf!30227 t!4440)))))

(assert (=> b!7925252 (=> res!3144895 e!4677394)))

(declare-fun b!7925253 () Bool)

(assert (=> b!7925253 (= e!4677394 (inv!95700 t!4440))))

(assert (= (and d!2366658 c!1455049) b!7925251))

(assert (= (and d!2366658 (not c!1455049)) b!7925252))

(assert (= (and b!7925252 (not res!3144895)) b!7925253))

(declare-fun m!8305764 () Bool)

(assert (=> b!7925251 m!8305764))

(declare-fun m!8305766 () Bool)

(assert (=> b!7925253 m!8305766))

(assert (=> start!748256 d!2366658))

(declare-fun b!7925254 () Bool)

(declare-fun res!3144896 () Bool)

(declare-fun e!4677396 () Bool)

(assert (=> b!7925254 (=> (not res!3144896) (not e!4677396))))

(assert (=> b!7925254 (= res!3144896 (isBalanced!4523 (right!57196 lt!2692717)))))

(declare-fun b!7925255 () Bool)

(assert (=> b!7925255 (= e!4677396 (not (isEmpty!42767 (right!57196 lt!2692717))))))

(declare-fun b!7925256 () Bool)

(declare-fun res!3144899 () Bool)

(assert (=> b!7925256 (=> (not res!3144899) (not e!4677396))))

(assert (=> b!7925256 (= res!3144899 (isBalanced!4523 (left!56866 lt!2692717)))))

(declare-fun d!2366660 () Bool)

(declare-fun res!3144901 () Bool)

(declare-fun e!4677395 () Bool)

(assert (=> d!2366660 (=> res!3144901 e!4677395)))

(assert (=> d!2366660 (= res!3144901 (not (is-Node!15897 lt!2692717)))))

(assert (=> d!2366660 (= (isBalanced!4523 lt!2692717) e!4677395)))

(declare-fun b!7925257 () Bool)

(declare-fun res!3144898 () Bool)

(assert (=> b!7925257 (=> (not res!3144898) (not e!4677396))))

(assert (=> b!7925257 (= res!3144898 (not (isEmpty!42767 (left!56866 lt!2692717))))))

(declare-fun b!7925258 () Bool)

(declare-fun res!3144897 () Bool)

(assert (=> b!7925258 (=> (not res!3144897) (not e!4677396))))

(assert (=> b!7925258 (= res!3144897 (<= (- (height!2212 (left!56866 lt!2692717)) (height!2212 (right!57196 lt!2692717))) 1))))

(declare-fun b!7925259 () Bool)

(assert (=> b!7925259 (= e!4677395 e!4677396)))

(declare-fun res!3144900 () Bool)

(assert (=> b!7925259 (=> (not res!3144900) (not e!4677396))))

(assert (=> b!7925259 (= res!3144900 (<= (- 1) (- (height!2212 (left!56866 lt!2692717)) (height!2212 (right!57196 lt!2692717)))))))

(assert (= (and d!2366660 (not res!3144901)) b!7925259))

(assert (= (and b!7925259 res!3144900) b!7925258))

(assert (= (and b!7925258 res!3144897) b!7925256))

(assert (= (and b!7925256 res!3144899) b!7925254))

(assert (= (and b!7925254 res!3144896) b!7925257))

(assert (= (and b!7925257 res!3144898) b!7925255))

(declare-fun m!8305768 () Bool)

(assert (=> b!7925255 m!8305768))

(declare-fun m!8305770 () Bool)

(assert (=> b!7925254 m!8305770))

(declare-fun m!8305772 () Bool)

(assert (=> b!7925259 m!8305772))

(declare-fun m!8305774 () Bool)

(assert (=> b!7925259 m!8305774))

(declare-fun m!8305776 () Bool)

(assert (=> b!7925256 m!8305776))

(declare-fun m!8305778 () Bool)

(assert (=> b!7925257 m!8305778))

(assert (=> b!7925258 m!8305772))

(assert (=> b!7925258 m!8305774))

(assert (=> b!7925195 d!2366660))

(declare-fun d!2366662 () Bool)

(declare-fun lt!2692731 () IArray!31855)

(declare-fun fill!276 (Int T!145774) List!74567)

(assert (=> d!2366662 (= lt!2692731 (IArray!31856 (fill!276 1 v!5484)))))

(declare-fun choose!59823 (Int T!145774) IArray!31855)

(assert (=> d!2366662 (= lt!2692731 (choose!59823 1 v!5484))))

(assert (=> d!2366662 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!2366662 (= (fill!274 1 v!5484) lt!2692731)))

(declare-fun bs!1968757 () Bool)

(assert (= bs!1968757 d!2366662))

(declare-fun m!8305780 () Bool)

(assert (=> bs!1968757 m!8305780))

(declare-fun m!8305782 () Bool)

(assert (=> bs!1968757 m!8305782))

(assert (=> b!7925195 d!2366662))

(declare-fun b!7925283 () Bool)

(declare-fun e!4677408 () List!74567)

(declare-fun ++!18256 (List!74567 List!74567) List!74567)

(assert (=> b!7925283 (= e!4677408 (++!18256 (list!19404 (left!56866 lt!2692717)) (list!19404 (right!57196 lt!2692717))))))

(declare-fun d!2366664 () Bool)

(declare-fun c!1455060 () Bool)

(assert (=> d!2366664 (= c!1455060 (is-Empty!15897 lt!2692717))))

(declare-fun e!4677407 () List!74567)

(assert (=> d!2366664 (= (list!19404 lt!2692717) e!4677407)))

(declare-fun b!7925282 () Bool)

(declare-fun list!19406 (IArray!31855) List!74567)

(assert (=> b!7925282 (= e!4677408 (list!19406 (xs!19285 lt!2692717)))))

(declare-fun b!7925281 () Bool)

(assert (=> b!7925281 (= e!4677407 e!4677408)))

(declare-fun c!1455061 () Bool)

(assert (=> b!7925281 (= c!1455061 (is-Leaf!30227 lt!2692717))))

(declare-fun b!7925280 () Bool)

(assert (=> b!7925280 (= e!4677407 Nil!74443)))

(assert (= (and d!2366664 c!1455060) b!7925280))

(assert (= (and d!2366664 (not c!1455060)) b!7925281))

(assert (= (and b!7925281 c!1455061) b!7925282))

(assert (= (and b!7925281 (not c!1455061)) b!7925283))

(declare-fun m!8305792 () Bool)

(assert (=> b!7925283 m!8305792))

(declare-fun m!8305794 () Bool)

(assert (=> b!7925283 m!8305794))

(assert (=> b!7925283 m!8305792))

(assert (=> b!7925283 m!8305794))

(declare-fun m!8305796 () Bool)

(assert (=> b!7925283 m!8305796))

(declare-fun m!8305798 () Bool)

(assert (=> b!7925282 m!8305798))

(assert (=> b!7925199 d!2366664))

(declare-fun b!7925300 () Bool)

(declare-fun e!4677417 () Bool)

(declare-fun call!735097 () (_ BitVec 32))

(declare-fun call!735098 () (_ BitVec 32))

(assert (=> b!7925300 (= e!4677417 (= call!735097 (bvadd call!735098 #b00000000000000000000000000000001)))))

(declare-fun bm!735092 () Bool)

(declare-fun lt!2692734 () List!74567)

(declare-fun isize!116 (List!74567) (_ BitVec 32))

(assert (=> bm!735092 (= call!735097 (isize!116 lt!2692734))))

(declare-fun b!7925301 () Bool)

(assert (=> b!7925301 (= e!4677417 (= call!735097 call!735098))))

(declare-fun b!7925302 () Bool)

(declare-fun res!3144910 () Bool)

(declare-fun e!4677415 () Bool)

(assert (=> b!7925302 (=> (not res!3144910) (not e!4677415))))

(assert (=> b!7925302 (= res!3144910 e!4677417)))

(declare-fun c!1455066 () Bool)

(assert (=> b!7925302 (= c!1455066 (bvslt (isize!116 (list!19404 t!4440)) #b01111111111111111111111111111111))))

(declare-fun b!7925303 () Bool)

(declare-fun e!4677416 () List!74567)

(assert (=> b!7925303 (= e!4677416 (Cons!74443 (h!80891 (list!19404 t!4440)) ($colon+!312 (t!390166 (list!19404 t!4440)) v!5484)))))

(declare-fun b!7925304 () Bool)

(assert (=> b!7925304 (= e!4677416 (Cons!74443 v!5484 (list!19404 t!4440)))))

(declare-fun b!7925305 () Bool)

(assert (=> b!7925305 (= e!4677415 (= lt!2692734 (++!18256 (list!19404 t!4440) (Cons!74443 v!5484 Nil!74443))))))

(declare-fun b!7925306 () Bool)

(declare-fun res!3144913 () Bool)

(assert (=> b!7925306 (=> (not res!3144913) (not e!4677415))))

(declare-fun content!15780 (List!74567) (Set T!145774))

(assert (=> b!7925306 (= res!3144913 (= (content!15780 lt!2692734) (set.union (content!15780 (list!19404 t!4440)) (set.insert v!5484 (as set.empty (Set T!145774))))))))

(declare-fun b!7925307 () Bool)

(declare-fun res!3144911 () Bool)

(assert (=> b!7925307 (=> (not res!3144911) (not e!4677415))))

(declare-fun size!43238 (List!74567) Int)

(assert (=> b!7925307 (= res!3144911 (= (size!43238 lt!2692734) (+ (size!43238 (list!19404 t!4440)) 1)))))

(declare-fun d!2366668 () Bool)

(assert (=> d!2366668 e!4677415))

(declare-fun res!3144912 () Bool)

(assert (=> d!2366668 (=> (not res!3144912) (not e!4677415))))

(assert (=> d!2366668 (= res!3144912 (is-Cons!74443 lt!2692734))))

(assert (=> d!2366668 (= lt!2692734 e!4677416)))

(declare-fun c!1455067 () Bool)

(assert (=> d!2366668 (= c!1455067 (is-Nil!74443 (list!19404 t!4440)))))

(assert (=> d!2366668 (= ($colon+!312 (list!19404 t!4440) v!5484) lt!2692734)))

(declare-fun bm!735093 () Bool)

(assert (=> bm!735093 (= call!735098 (isize!116 (list!19404 t!4440)))))

(assert (= (and d!2366668 c!1455067) b!7925304))

(assert (= (and d!2366668 (not c!1455067)) b!7925303))

(assert (= (and d!2366668 res!3144912) b!7925307))

(assert (= (and b!7925307 res!3144911) b!7925302))

(assert (= (and b!7925302 c!1455066) b!7925300))

(assert (= (and b!7925302 (not c!1455066)) b!7925301))

(assert (= (or b!7925300 b!7925301) bm!735092))

(assert (= (or b!7925300 b!7925301) bm!735093))

(assert (= (and b!7925302 res!3144910) b!7925306))

(assert (= (and b!7925306 res!3144913) b!7925305))

(assert (=> b!7925305 m!8305716))

(declare-fun m!8305800 () Bool)

(assert (=> b!7925305 m!8305800))

(declare-fun m!8305802 () Bool)

(assert (=> b!7925303 m!8305802))

(declare-fun m!8305804 () Bool)

(assert (=> bm!735092 m!8305804))

(declare-fun m!8305806 () Bool)

(assert (=> b!7925307 m!8305806))

(assert (=> b!7925307 m!8305716))

(declare-fun m!8305808 () Bool)

(assert (=> b!7925307 m!8305808))

(assert (=> bm!735093 m!8305716))

(declare-fun m!8305810 () Bool)

(assert (=> bm!735093 m!8305810))

(declare-fun m!8305812 () Bool)

(assert (=> b!7925306 m!8305812))

(assert (=> b!7925306 m!8305716))

(declare-fun m!8305814 () Bool)

(assert (=> b!7925306 m!8305814))

(declare-fun m!8305816 () Bool)

(assert (=> b!7925306 m!8305816))

(assert (=> b!7925302 m!8305716))

(assert (=> b!7925302 m!8305810))

(assert (=> b!7925199 d!2366668))

(declare-fun b!7925315 () Bool)

(declare-fun e!4677421 () List!74567)

(assert (=> b!7925315 (= e!4677421 (++!18256 (list!19404 (left!56866 t!4440)) (list!19404 (right!57196 t!4440))))))

(declare-fun d!2366670 () Bool)

(declare-fun c!1455070 () Bool)

(assert (=> d!2366670 (= c!1455070 (is-Empty!15897 t!4440))))

(declare-fun e!4677420 () List!74567)

(assert (=> d!2366670 (= (list!19404 t!4440) e!4677420)))

(declare-fun b!7925314 () Bool)

(assert (=> b!7925314 (= e!4677421 (list!19406 (xs!19285 t!4440)))))

(declare-fun b!7925313 () Bool)

(assert (=> b!7925313 (= e!4677420 e!4677421)))

(declare-fun c!1455071 () Bool)

(assert (=> b!7925313 (= c!1455071 (is-Leaf!30227 t!4440))))

(declare-fun b!7925312 () Bool)

(assert (=> b!7925312 (= e!4677420 Nil!74443)))

(assert (= (and d!2366670 c!1455070) b!7925312))

(assert (= (and d!2366670 (not c!1455070)) b!7925313))

(assert (= (and b!7925313 c!1455071) b!7925314))

(assert (= (and b!7925313 (not c!1455071)) b!7925315))

(declare-fun m!8305818 () Bool)

(assert (=> b!7925315 m!8305818))

(declare-fun m!8305820 () Bool)

(assert (=> b!7925315 m!8305820))

(assert (=> b!7925315 m!8305818))

(assert (=> b!7925315 m!8305820))

(declare-fun m!8305822 () Bool)

(assert (=> b!7925315 m!8305822))

(declare-fun m!8305824 () Bool)

(assert (=> b!7925314 m!8305824))

(assert (=> b!7925199 d!2366670))

(declare-fun d!2366672 () Bool)

(assert (=> d!2366672 (= (inv!95695 (xs!19285 t!4440)) (<= (size!43238 (innerList!15985 (xs!19285 t!4440))) 2147483647))))

(declare-fun bs!1968758 () Bool)

(assert (= bs!1968758 d!2366672))

(declare-fun m!8305826 () Bool)

(assert (=> bs!1968758 m!8305826))

(assert (=> b!7925194 d!2366672))

(declare-fun e!4677430 () Bool)

(declare-fun b!7925336 () Bool)

(declare-fun tp!2358481 () Bool)

(declare-fun tp!2358482 () Bool)

(assert (=> b!7925336 (= e!4677430 (and (inv!95696 (left!56866 (left!56866 t!4440))) tp!2358482 (inv!95696 (right!57196 (left!56866 t!4440))) tp!2358481))))

(declare-fun b!7925338 () Bool)

(declare-fun e!4677431 () Bool)

(declare-fun tp!2358483 () Bool)

(assert (=> b!7925338 (= e!4677431 tp!2358483)))

(declare-fun b!7925337 () Bool)

(assert (=> b!7925337 (= e!4677430 (and (inv!95695 (xs!19285 (left!56866 t!4440))) e!4677431))))

(assert (=> b!7925197 (= tp!2358465 (and (inv!95696 (left!56866 t!4440)) e!4677430))))

(assert (= (and b!7925197 (is-Node!15897 (left!56866 t!4440))) b!7925336))

(assert (= b!7925337 b!7925338))

(assert (= (and b!7925197 (is-Leaf!30227 (left!56866 t!4440))) b!7925337))

(declare-fun m!8305828 () Bool)

(assert (=> b!7925336 m!8305828))

(declare-fun m!8305830 () Bool)

(assert (=> b!7925336 m!8305830))

(declare-fun m!8305832 () Bool)

(assert (=> b!7925337 m!8305832))

(assert (=> b!7925197 m!8305708))

(declare-fun tp!2358485 () Bool)

(declare-fun e!4677432 () Bool)

(declare-fun tp!2358484 () Bool)

(declare-fun b!7925339 () Bool)

(assert (=> b!7925339 (= e!4677432 (and (inv!95696 (left!56866 (right!57196 t!4440))) tp!2358485 (inv!95696 (right!57196 (right!57196 t!4440))) tp!2358484))))

(declare-fun b!7925341 () Bool)

(declare-fun e!4677433 () Bool)

(declare-fun tp!2358486 () Bool)

(assert (=> b!7925341 (= e!4677433 tp!2358486)))

(declare-fun b!7925340 () Bool)

(assert (=> b!7925340 (= e!4677432 (and (inv!95695 (xs!19285 (right!57196 t!4440))) e!4677433))))

(assert (=> b!7925197 (= tp!2358463 (and (inv!95696 (right!57196 t!4440)) e!4677432))))

(assert (= (and b!7925197 (is-Node!15897 (right!57196 t!4440))) b!7925339))

(assert (= b!7925340 b!7925341))

(assert (= (and b!7925197 (is-Leaf!30227 (right!57196 t!4440))) b!7925340))

(declare-fun m!8305834 () Bool)

(assert (=> b!7925339 m!8305834))

(declare-fun m!8305836 () Bool)

(assert (=> b!7925339 m!8305836))

(declare-fun m!8305838 () Bool)

(assert (=> b!7925340 m!8305838))

(assert (=> b!7925197 m!8305710))

(declare-fun b!7925346 () Bool)

(declare-fun e!4677436 () Bool)

(declare-fun tp!2358489 () Bool)

(assert (=> b!7925346 (= e!4677436 (and tp_is_empty!53219 tp!2358489))))

(assert (=> b!7925196 (= tp!2358464 e!4677436)))

(assert (= (and b!7925196 (is-Cons!74443 (innerList!15985 (xs!19285 t!4440)))) b!7925346))

(push 1)

(assert (not b!7925248))

(assert (not d!2366662))

(assert (not b!7925282))

(assert (not b!7925232))

(assert (not b!7925302))

(assert (not b!7925256))

(assert (not b!7925336))

(assert (not b!7925337))

(assert (not b!7925229))

(assert (not b!7925254))

(assert (not b!7925247))

(assert (not b!7925259))

(assert (not b!7925258))

(assert (not b!7925246))

(assert (not b!7925230))

(assert tp_is_empty!53219)

(assert (not d!2366672))

(assert (not b!7925245))

(assert (not bm!735092))

(assert (not b!7925340))

(assert (not b!7925346))

(assert (not b!7925227))

(assert (not b!7925283))

(assert (not b!7925257))

(assert (not b!7925255))

(assert (not b!7925338))

(assert (not b!7925251))

(assert (not b!7925339))

(assert (not b!7925341))

(assert (not b!7925197))

(assert (not b!7925303))

(assert (not b!7925305))

(assert (not b!7925314))

(assert (not bm!735093))

(assert (not b!7925315))

(assert (not b!7925250))

(assert (not b!7925306))

(assert (not b!7925249))

(assert (not b!7925307))

(assert (not b!7925253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7925417 () Bool)

(declare-fun res!3144955 () Bool)

(declare-fun e!4677472 () Bool)

(assert (=> b!7925417 (=> (not res!3144955) (not e!4677472))))

(assert (=> b!7925417 (= res!3144955 (isBalanced!4523 (right!57196 (right!57196 lt!2692717))))))

(declare-fun b!7925418 () Bool)

(assert (=> b!7925418 (= e!4677472 (not (isEmpty!42767 (right!57196 (right!57196 lt!2692717)))))))

(declare-fun b!7925419 () Bool)

(declare-fun res!3144958 () Bool)

(assert (=> b!7925419 (=> (not res!3144958) (not e!4677472))))

(assert (=> b!7925419 (= res!3144958 (isBalanced!4523 (left!56866 (right!57196 lt!2692717))))))

(declare-fun d!2366694 () Bool)

(declare-fun res!3144960 () Bool)

(declare-fun e!4677471 () Bool)

(assert (=> d!2366694 (=> res!3144960 e!4677471)))

(assert (=> d!2366694 (= res!3144960 (not (is-Node!15897 (right!57196 lt!2692717))))))

(assert (=> d!2366694 (= (isBalanced!4523 (right!57196 lt!2692717)) e!4677471)))

(declare-fun b!7925420 () Bool)

(declare-fun res!3144957 () Bool)

(assert (=> b!7925420 (=> (not res!3144957) (not e!4677472))))

(assert (=> b!7925420 (= res!3144957 (not (isEmpty!42767 (left!56866 (right!57196 lt!2692717)))))))

(declare-fun b!7925421 () Bool)

(declare-fun res!3144956 () Bool)

(assert (=> b!7925421 (=> (not res!3144956) (not e!4677472))))

(assert (=> b!7925421 (= res!3144956 (<= (- (height!2212 (left!56866 (right!57196 lt!2692717))) (height!2212 (right!57196 (right!57196 lt!2692717)))) 1))))

(declare-fun b!7925422 () Bool)

(assert (=> b!7925422 (= e!4677471 e!4677472)))

(declare-fun res!3144959 () Bool)

(assert (=> b!7925422 (=> (not res!3144959) (not e!4677472))))

(assert (=> b!7925422 (= res!3144959 (<= (- 1) (- (height!2212 (left!56866 (right!57196 lt!2692717))) (height!2212 (right!57196 (right!57196 lt!2692717))))))))

(assert (= (and d!2366694 (not res!3144960)) b!7925422))

(assert (= (and b!7925422 res!3144959) b!7925421))

(assert (= (and b!7925421 res!3144956) b!7925419))

(assert (= (and b!7925419 res!3144958) b!7925417))

(assert (= (and b!7925417 res!3144955) b!7925420))

(assert (= (and b!7925420 res!3144957) b!7925418))

(declare-fun m!8305920 () Bool)

(assert (=> b!7925418 m!8305920))

(declare-fun m!8305922 () Bool)

(assert (=> b!7925417 m!8305922))

(declare-fun m!8305924 () Bool)

(assert (=> b!7925422 m!8305924))

(declare-fun m!8305926 () Bool)

(assert (=> b!7925422 m!8305926))

(declare-fun m!8305928 () Bool)

(assert (=> b!7925419 m!8305928))

(declare-fun m!8305930 () Bool)

(assert (=> b!7925420 m!8305930))

(assert (=> b!7925421 m!8305924))

(assert (=> b!7925421 m!8305926))

(assert (=> b!7925254 d!2366694))

(declare-fun d!2366696 () Bool)

(assert (=> d!2366696 (= (inv!95695 (xs!19285 (left!56866 t!4440))) (<= (size!43238 (innerList!15985 (xs!19285 (left!56866 t!4440)))) 2147483647))))

(declare-fun bs!1968761 () Bool)

(assert (= bs!1968761 d!2366696))

(declare-fun m!8305932 () Bool)

(assert (=> bs!1968761 m!8305932))

(assert (=> b!7925337 d!2366696))

(declare-fun d!2366698 () Bool)

(declare-fun lt!2692745 () (_ BitVec 32))

(assert (=> d!2366698 (and (bvsle #b00000000000000000000000000000000 lt!2692745) (bvsle lt!2692745 #b01111111111111111111111111111111))))

(declare-fun e!4677475 () (_ BitVec 32))

(assert (=> d!2366698 (= lt!2692745 e!4677475)))

(declare-fun c!1455085 () Bool)

(assert (=> d!2366698 (= c!1455085 (is-Nil!74443 lt!2692734))))

(assert (=> d!2366698 (= (isize!116 lt!2692734) lt!2692745)))

(declare-fun b!7925427 () Bool)

(assert (=> b!7925427 (= e!4677475 #b00000000000000000000000000000000)))

(declare-fun b!7925428 () Bool)

(declare-fun lt!2692746 () (_ BitVec 32))

(assert (=> b!7925428 (= e!4677475 (ite (= lt!2692746 #b01111111111111111111111111111111) lt!2692746 (bvadd #b00000000000000000000000000000001 lt!2692746)))))

(assert (=> b!7925428 (= lt!2692746 (isize!116 (t!390166 lt!2692734)))))

(assert (= (and d!2366698 c!1455085) b!7925427))

(assert (= (and d!2366698 (not c!1455085)) b!7925428))

(declare-fun m!8305934 () Bool)

(assert (=> b!7925428 m!8305934))

(assert (=> bm!735092 d!2366698))

(declare-fun d!2366700 () Bool)

(declare-fun c!1455086 () Bool)

(assert (=> d!2366700 (= c!1455086 (is-Node!15897 (left!56866 (left!56866 t!4440))))))

(declare-fun e!4677476 () Bool)

(assert (=> d!2366700 (= (inv!95696 (left!56866 (left!56866 t!4440))) e!4677476)))

(declare-fun b!7925429 () Bool)

(assert (=> b!7925429 (= e!4677476 (inv!95699 (left!56866 (left!56866 t!4440))))))

(declare-fun b!7925430 () Bool)

(declare-fun e!4677477 () Bool)

(assert (=> b!7925430 (= e!4677476 e!4677477)))

(declare-fun res!3144961 () Bool)

(assert (=> b!7925430 (= res!3144961 (not (is-Leaf!30227 (left!56866 (left!56866 t!4440)))))))

(assert (=> b!7925430 (=> res!3144961 e!4677477)))

(declare-fun b!7925431 () Bool)

(assert (=> b!7925431 (= e!4677477 (inv!95700 (left!56866 (left!56866 t!4440))))))

(assert (= (and d!2366700 c!1455086) b!7925429))

(assert (= (and d!2366700 (not c!1455086)) b!7925430))

(assert (= (and b!7925430 (not res!3144961)) b!7925431))

(declare-fun m!8305936 () Bool)

(assert (=> b!7925429 m!8305936))

(declare-fun m!8305938 () Bool)

(assert (=> b!7925431 m!8305938))

(assert (=> b!7925336 d!2366700))

(declare-fun d!2366702 () Bool)

(declare-fun c!1455087 () Bool)

(assert (=> d!2366702 (= c!1455087 (is-Node!15897 (right!57196 (left!56866 t!4440))))))

(declare-fun e!4677478 () Bool)

(assert (=> d!2366702 (= (inv!95696 (right!57196 (left!56866 t!4440))) e!4677478)))

(declare-fun b!7925432 () Bool)

(assert (=> b!7925432 (= e!4677478 (inv!95699 (right!57196 (left!56866 t!4440))))))

(declare-fun b!7925433 () Bool)

(declare-fun e!4677479 () Bool)

(assert (=> b!7925433 (= e!4677478 e!4677479)))

(declare-fun res!3144962 () Bool)

(assert (=> b!7925433 (= res!3144962 (not (is-Leaf!30227 (right!57196 (left!56866 t!4440)))))))

(assert (=> b!7925433 (=> res!3144962 e!4677479)))

(declare-fun b!7925434 () Bool)

(assert (=> b!7925434 (= e!4677479 (inv!95700 (right!57196 (left!56866 t!4440))))))

(assert (= (and d!2366702 c!1455087) b!7925432))

(assert (= (and d!2366702 (not c!1455087)) b!7925433))

(assert (= (and b!7925433 (not res!3144962)) b!7925434))

(declare-fun m!8305940 () Bool)

(assert (=> b!7925432 m!8305940))

(declare-fun m!8305942 () Bool)

(assert (=> b!7925434 m!8305942))

(assert (=> b!7925336 d!2366702))

(declare-fun d!2366704 () Bool)

(declare-fun res!3144967 () Bool)

(declare-fun e!4677482 () Bool)

(assert (=> d!2366704 (=> (not res!3144967) (not e!4677482))))

(assert (=> d!2366704 (= res!3144967 (<= (size!43238 (list!19406 (xs!19285 (right!57196 t!4440)))) 512))))

(assert (=> d!2366704 (= (inv!95700 (right!57196 t!4440)) e!4677482)))

(declare-fun b!7925439 () Bool)

(declare-fun res!3144968 () Bool)

(assert (=> b!7925439 (=> (not res!3144968) (not e!4677482))))

(assert (=> b!7925439 (= res!3144968 (= (csize!32025 (right!57196 t!4440)) (size!43238 (list!19406 (xs!19285 (right!57196 t!4440))))))))

(declare-fun b!7925440 () Bool)

(assert (=> b!7925440 (= e!4677482 (and (> (csize!32025 (right!57196 t!4440)) 0) (<= (csize!32025 (right!57196 t!4440)) 512)))))

(assert (= (and d!2366704 res!3144967) b!7925439))

(assert (= (and b!7925439 res!3144968) b!7925440))

(declare-fun m!8305944 () Bool)

(assert (=> d!2366704 m!8305944))

(assert (=> d!2366704 m!8305944))

(declare-fun m!8305946 () Bool)

(assert (=> d!2366704 m!8305946))

(assert (=> b!7925439 m!8305944))

(assert (=> b!7925439 m!8305944))

(assert (=> b!7925439 m!8305946))

(assert (=> b!7925232 d!2366704))

(declare-fun d!2366706 () Bool)

(declare-fun res!3144975 () Bool)

(declare-fun e!4677485 () Bool)

(assert (=> d!2366706 (=> (not res!3144975) (not e!4677485))))

(declare-fun size!43240 (Conc!15897) Int)

(assert (=> d!2366706 (= res!3144975 (= (csize!32024 (left!56866 t!4440)) (+ (size!43240 (left!56866 (left!56866 t!4440))) (size!43240 (right!57196 (left!56866 t!4440))))))))

(assert (=> d!2366706 (= (inv!95699 (left!56866 t!4440)) e!4677485)))

(declare-fun b!7925447 () Bool)

(declare-fun res!3144976 () Bool)

(assert (=> b!7925447 (=> (not res!3144976) (not e!4677485))))

(assert (=> b!7925447 (= res!3144976 (and (not (= (left!56866 (left!56866 t!4440)) Empty!15897)) (not (= (right!57196 (left!56866 t!4440)) Empty!15897))))))

(declare-fun b!7925448 () Bool)

(declare-fun res!3144977 () Bool)

(assert (=> b!7925448 (=> (not res!3144977) (not e!4677485))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!7925448 (= res!3144977 (= (cheight!16108 (left!56866 t!4440)) (+ (max!0 (height!2212 (left!56866 (left!56866 t!4440))) (height!2212 (right!57196 (left!56866 t!4440)))) 1)))))

(declare-fun b!7925449 () Bool)

(assert (=> b!7925449 (= e!4677485 (<= 0 (cheight!16108 (left!56866 t!4440))))))

(assert (= (and d!2366706 res!3144975) b!7925447))

(assert (= (and b!7925447 res!3144976) b!7925448))

(assert (= (and b!7925448 res!3144977) b!7925449))

(declare-fun m!8305948 () Bool)

(assert (=> d!2366706 m!8305948))

(declare-fun m!8305950 () Bool)

(assert (=> d!2366706 m!8305950))

(declare-fun m!8305952 () Bool)

(assert (=> b!7925448 m!8305952))

(declare-fun m!8305954 () Bool)

(assert (=> b!7925448 m!8305954))

(assert (=> b!7925448 m!8305952))

(assert (=> b!7925448 m!8305954))

(declare-fun m!8305956 () Bool)

(assert (=> b!7925448 m!8305956))

(assert (=> b!7925227 d!2366706))

(declare-fun d!2366708 () Bool)

(declare-fun lt!2692749 () Bool)

(declare-fun isEmpty!42769 (List!74567) Bool)

(assert (=> d!2366708 (= lt!2692749 (isEmpty!42769 (list!19404 (right!57196 t!4440))))))

(assert (=> d!2366708 (= lt!2692749 (= (size!43240 (right!57196 t!4440)) 0))))

(assert (=> d!2366708 (= (isEmpty!42767 (right!57196 t!4440)) lt!2692749)))

(declare-fun bs!1968762 () Bool)

(assert (= bs!1968762 d!2366708))

(assert (=> bs!1968762 m!8305820))

(assert (=> bs!1968762 m!8305820))

(declare-fun m!8305958 () Bool)

(assert (=> bs!1968762 m!8305958))

(declare-fun m!8305960 () Bool)

(assert (=> bs!1968762 m!8305960))

(assert (=> b!7925246 d!2366708))

(declare-fun b!7925450 () Bool)

(declare-fun res!3144978 () Bool)

(declare-fun e!4677487 () Bool)

(assert (=> b!7925450 (=> (not res!3144978) (not e!4677487))))

(assert (=> b!7925450 (= res!3144978 (isBalanced!4523 (right!57196 (right!57196 t!4440))))))

(declare-fun b!7925451 () Bool)

(assert (=> b!7925451 (= e!4677487 (not (isEmpty!42767 (right!57196 (right!57196 t!4440)))))))

(declare-fun b!7925452 () Bool)

(declare-fun res!3144981 () Bool)

(assert (=> b!7925452 (=> (not res!3144981) (not e!4677487))))

(assert (=> b!7925452 (= res!3144981 (isBalanced!4523 (left!56866 (right!57196 t!4440))))))

(declare-fun d!2366710 () Bool)

(declare-fun res!3144983 () Bool)

(declare-fun e!4677486 () Bool)

(assert (=> d!2366710 (=> res!3144983 e!4677486)))

(assert (=> d!2366710 (= res!3144983 (not (is-Node!15897 (right!57196 t!4440))))))

(assert (=> d!2366710 (= (isBalanced!4523 (right!57196 t!4440)) e!4677486)))

(declare-fun b!7925453 () Bool)

(declare-fun res!3144980 () Bool)

(assert (=> b!7925453 (=> (not res!3144980) (not e!4677487))))

(assert (=> b!7925453 (= res!3144980 (not (isEmpty!42767 (left!56866 (right!57196 t!4440)))))))

(declare-fun b!7925454 () Bool)

(declare-fun res!3144979 () Bool)

(assert (=> b!7925454 (=> (not res!3144979) (not e!4677487))))

(assert (=> b!7925454 (= res!3144979 (<= (- (height!2212 (left!56866 (right!57196 t!4440))) (height!2212 (right!57196 (right!57196 t!4440)))) 1))))

(declare-fun b!7925455 () Bool)

(assert (=> b!7925455 (= e!4677486 e!4677487)))

(declare-fun res!3144982 () Bool)

(assert (=> b!7925455 (=> (not res!3144982) (not e!4677487))))

(assert (=> b!7925455 (= res!3144982 (<= (- 1) (- (height!2212 (left!56866 (right!57196 t!4440))) (height!2212 (right!57196 (right!57196 t!4440))))))))

(assert (= (and d!2366710 (not res!3144983)) b!7925455))

(assert (= (and b!7925455 res!3144982) b!7925454))

(assert (= (and b!7925454 res!3144979) b!7925452))

(assert (= (and b!7925452 res!3144981) b!7925450))

(assert (= (and b!7925450 res!3144978) b!7925453))

(assert (= (and b!7925453 res!3144980) b!7925451))

(declare-fun m!8305962 () Bool)

(assert (=> b!7925451 m!8305962))

(declare-fun m!8305964 () Bool)

(assert (=> b!7925450 m!8305964))

(declare-fun m!8305966 () Bool)

(assert (=> b!7925455 m!8305966))

(declare-fun m!8305968 () Bool)

(assert (=> b!7925455 m!8305968))

(declare-fun m!8305970 () Bool)

(assert (=> b!7925452 m!8305970))

(declare-fun m!8305972 () Bool)

(assert (=> b!7925453 m!8305972))

(assert (=> b!7925454 m!8305966))

(assert (=> b!7925454 m!8305968))

(assert (=> b!7925245 d!2366710))

(declare-fun b!7925456 () Bool)

(declare-fun res!3144984 () Bool)

(declare-fun e!4677489 () Bool)

(assert (=> b!7925456 (=> (not res!3144984) (not e!4677489))))

(assert (=> b!7925456 (= res!3144984 (isBalanced!4523 (right!57196 (left!56866 lt!2692717))))))

(declare-fun b!7925457 () Bool)

(assert (=> b!7925457 (= e!4677489 (not (isEmpty!42767 (right!57196 (left!56866 lt!2692717)))))))

(declare-fun b!7925458 () Bool)

(declare-fun res!3144987 () Bool)

(assert (=> b!7925458 (=> (not res!3144987) (not e!4677489))))

(assert (=> b!7925458 (= res!3144987 (isBalanced!4523 (left!56866 (left!56866 lt!2692717))))))

(declare-fun d!2366712 () Bool)

(declare-fun res!3144989 () Bool)

(declare-fun e!4677488 () Bool)

(assert (=> d!2366712 (=> res!3144989 e!4677488)))

(assert (=> d!2366712 (= res!3144989 (not (is-Node!15897 (left!56866 lt!2692717))))))

(assert (=> d!2366712 (= (isBalanced!4523 (left!56866 lt!2692717)) e!4677488)))

(declare-fun b!7925459 () Bool)

(declare-fun res!3144986 () Bool)

(assert (=> b!7925459 (=> (not res!3144986) (not e!4677489))))

(assert (=> b!7925459 (= res!3144986 (not (isEmpty!42767 (left!56866 (left!56866 lt!2692717)))))))

(declare-fun b!7925460 () Bool)

(declare-fun res!3144985 () Bool)

(assert (=> b!7925460 (=> (not res!3144985) (not e!4677489))))

(assert (=> b!7925460 (= res!3144985 (<= (- (height!2212 (left!56866 (left!56866 lt!2692717))) (height!2212 (right!57196 (left!56866 lt!2692717)))) 1))))

(declare-fun b!7925461 () Bool)

(assert (=> b!7925461 (= e!4677488 e!4677489)))

(declare-fun res!3144988 () Bool)

(assert (=> b!7925461 (=> (not res!3144988) (not e!4677489))))

(assert (=> b!7925461 (= res!3144988 (<= (- 1) (- (height!2212 (left!56866 (left!56866 lt!2692717))) (height!2212 (right!57196 (left!56866 lt!2692717))))))))

(assert (= (and d!2366712 (not res!3144989)) b!7925461))

(assert (= (and b!7925461 res!3144988) b!7925460))

(assert (= (and b!7925460 res!3144985) b!7925458))

(assert (= (and b!7925458 res!3144987) b!7925456))

(assert (= (and b!7925456 res!3144984) b!7925459))

(assert (= (and b!7925459 res!3144986) b!7925457))

(declare-fun m!8305974 () Bool)

(assert (=> b!7925457 m!8305974))

(declare-fun m!8305976 () Bool)

(assert (=> b!7925456 m!8305976))

(declare-fun m!8305978 () Bool)

(assert (=> b!7925461 m!8305978))

(declare-fun m!8305980 () Bool)

(assert (=> b!7925461 m!8305980))

(declare-fun m!8305982 () Bool)

(assert (=> b!7925458 m!8305982))

(declare-fun m!8305984 () Bool)

(assert (=> b!7925459 m!8305984))

(assert (=> b!7925460 m!8305978))

(assert (=> b!7925460 m!8305980))

(assert (=> b!7925256 d!2366712))

(declare-fun d!2366714 () Bool)

(declare-fun lt!2692750 () Bool)

(assert (=> d!2366714 (= lt!2692750 (isEmpty!42769 (list!19404 (right!57196 lt!2692717))))))

(assert (=> d!2366714 (= lt!2692750 (= (size!43240 (right!57196 lt!2692717)) 0))))

(assert (=> d!2366714 (= (isEmpty!42767 (right!57196 lt!2692717)) lt!2692750)))

(declare-fun bs!1968763 () Bool)

(assert (= bs!1968763 d!2366714))

(assert (=> bs!1968763 m!8305794))

(assert (=> bs!1968763 m!8305794))

(declare-fun m!8305986 () Bool)

(assert (=> bs!1968763 m!8305986))

(declare-fun m!8305988 () Bool)

(assert (=> bs!1968763 m!8305988))

(assert (=> b!7925255 d!2366714))

(declare-fun b!7925462 () Bool)

(declare-fun e!4677492 () Bool)

(declare-fun call!735105 () (_ BitVec 32))

(declare-fun call!735106 () (_ BitVec 32))

(assert (=> b!7925462 (= e!4677492 (= call!735105 (bvadd call!735106 #b00000000000000000000000000000001)))))

(declare-fun bm!735100 () Bool)

(declare-fun lt!2692751 () List!74567)

(assert (=> bm!735100 (= call!735105 (isize!116 lt!2692751))))

(declare-fun b!7925463 () Bool)

(assert (=> b!7925463 (= e!4677492 (= call!735105 call!735106))))

(declare-fun b!7925464 () Bool)

(declare-fun res!3144990 () Bool)

(declare-fun e!4677490 () Bool)

(assert (=> b!7925464 (=> (not res!3144990) (not e!4677490))))

(assert (=> b!7925464 (= res!3144990 e!4677492)))

(declare-fun c!1455088 () Bool)

(assert (=> b!7925464 (= c!1455088 (bvslt (isize!116 (t!390166 (list!19404 t!4440))) #b01111111111111111111111111111111))))

(declare-fun b!7925465 () Bool)

(declare-fun e!4677491 () List!74567)

(assert (=> b!7925465 (= e!4677491 (Cons!74443 (h!80891 (t!390166 (list!19404 t!4440))) ($colon+!312 (t!390166 (t!390166 (list!19404 t!4440))) v!5484)))))

(declare-fun b!7925466 () Bool)

(assert (=> b!7925466 (= e!4677491 (Cons!74443 v!5484 (t!390166 (list!19404 t!4440))))))

(declare-fun b!7925467 () Bool)

(assert (=> b!7925467 (= e!4677490 (= lt!2692751 (++!18256 (t!390166 (list!19404 t!4440)) (Cons!74443 v!5484 Nil!74443))))))

(declare-fun b!7925468 () Bool)

(declare-fun res!3144993 () Bool)

(assert (=> b!7925468 (=> (not res!3144993) (not e!4677490))))

(assert (=> b!7925468 (= res!3144993 (= (content!15780 lt!2692751) (set.union (content!15780 (t!390166 (list!19404 t!4440))) (set.insert v!5484 (as set.empty (Set T!145774))))))))

(declare-fun b!7925469 () Bool)

(declare-fun res!3144991 () Bool)

(assert (=> b!7925469 (=> (not res!3144991) (not e!4677490))))

(assert (=> b!7925469 (= res!3144991 (= (size!43238 lt!2692751) (+ (size!43238 (t!390166 (list!19404 t!4440))) 1)))))

(declare-fun d!2366716 () Bool)

(assert (=> d!2366716 e!4677490))

(declare-fun res!3144992 () Bool)

(assert (=> d!2366716 (=> (not res!3144992) (not e!4677490))))

(assert (=> d!2366716 (= res!3144992 (is-Cons!74443 lt!2692751))))

(assert (=> d!2366716 (= lt!2692751 e!4677491)))

(declare-fun c!1455089 () Bool)

(assert (=> d!2366716 (= c!1455089 (is-Nil!74443 (t!390166 (list!19404 t!4440))))))

(assert (=> d!2366716 (= ($colon+!312 (t!390166 (list!19404 t!4440)) v!5484) lt!2692751)))

(declare-fun bm!735101 () Bool)

(assert (=> bm!735101 (= call!735106 (isize!116 (t!390166 (list!19404 t!4440))))))

(assert (= (and d!2366716 c!1455089) b!7925466))

(assert (= (and d!2366716 (not c!1455089)) b!7925465))

(assert (= (and d!2366716 res!3144992) b!7925469))

(assert (= (and b!7925469 res!3144991) b!7925464))

(assert (= (and b!7925464 c!1455088) b!7925462))

(assert (= (and b!7925464 (not c!1455088)) b!7925463))

(assert (= (or b!7925462 b!7925463) bm!735100))

(assert (= (or b!7925462 b!7925463) bm!735101))

(assert (= (and b!7925464 res!3144990) b!7925468))

(assert (= (and b!7925468 res!3144993) b!7925467))

(declare-fun m!8305990 () Bool)

(assert (=> b!7925467 m!8305990))

(declare-fun m!8305992 () Bool)

(assert (=> b!7925465 m!8305992))

(declare-fun m!8305994 () Bool)

(assert (=> bm!735100 m!8305994))

(declare-fun m!8305996 () Bool)

(assert (=> b!7925469 m!8305996))

(declare-fun m!8305998 () Bool)

(assert (=> b!7925469 m!8305998))

(declare-fun m!8306000 () Bool)

(assert (=> bm!735101 m!8306000))

(declare-fun m!8306002 () Bool)

(assert (=> b!7925468 m!8306002))

(declare-fun m!8306004 () Bool)

(assert (=> b!7925468 m!8306004))

(assert (=> b!7925468 m!8305816))

(assert (=> b!7925464 m!8306000))

(assert (=> b!7925303 d!2366716))

(declare-fun d!2366718 () Bool)

(declare-fun lt!2692752 () (_ BitVec 32))

(assert (=> d!2366718 (and (bvsle #b00000000000000000000000000000000 lt!2692752) (bvsle lt!2692752 #b01111111111111111111111111111111))))

(declare-fun e!4677493 () (_ BitVec 32))

(assert (=> d!2366718 (= lt!2692752 e!4677493)))

(declare-fun c!1455090 () Bool)

(assert (=> d!2366718 (= c!1455090 (is-Nil!74443 (list!19404 t!4440)))))

(assert (=> d!2366718 (= (isize!116 (list!19404 t!4440)) lt!2692752)))

(declare-fun b!7925470 () Bool)

(assert (=> b!7925470 (= e!4677493 #b00000000000000000000000000000000)))

(declare-fun b!7925471 () Bool)

(declare-fun lt!2692753 () (_ BitVec 32))

(assert (=> b!7925471 (= e!4677493 (ite (= lt!2692753 #b01111111111111111111111111111111) lt!2692753 (bvadd #b00000000000000000000000000000001 lt!2692753)))))

(assert (=> b!7925471 (= lt!2692753 (isize!116 (t!390166 (list!19404 t!4440))))))

(assert (= (and d!2366718 c!1455090) b!7925470))

(assert (= (and d!2366718 (not c!1455090)) b!7925471))

(assert (=> b!7925471 m!8306000))

(assert (=> b!7925302 d!2366718))

(declare-fun d!2366720 () Bool)

(declare-fun e!4677498 () Bool)

(assert (=> d!2366720 e!4677498))

(declare-fun res!3144996 () Bool)

(assert (=> d!2366720 (=> (not res!3144996) (not e!4677498))))

(declare-fun lt!2692756 () List!74567)

(assert (=> d!2366720 (= res!3144996 (= (content!15780 lt!2692756) (ite (<= 1 0) (as set.empty (Set T!145774)) (set.insert v!5484 (as set.empty (Set T!145774))))))))

(declare-fun e!4677499 () List!74567)

(assert (=> d!2366720 (= lt!2692756 e!4677499)))

(declare-fun c!1455093 () Bool)

(assert (=> d!2366720 (= c!1455093 (<= 1 0))))

(assert (=> d!2366720 (= (fill!276 1 v!5484) lt!2692756)))

(declare-fun b!7925478 () Bool)

(assert (=> b!7925478 (= e!4677499 Nil!74443)))

(declare-fun b!7925479 () Bool)

(assert (=> b!7925479 (= e!4677499 (Cons!74443 v!5484 (fill!276 (- 1 1) v!5484)))))

(declare-fun b!7925480 () Bool)

(assert (=> b!7925480 (= e!4677498 (= (size!43238 lt!2692756) (ite (<= 1 0) 0 1)))))

(assert (= (and d!2366720 c!1455093) b!7925478))

(assert (= (and d!2366720 (not c!1455093)) b!7925479))

(assert (= (and d!2366720 res!3144996) b!7925480))

(declare-fun m!8306006 () Bool)

(assert (=> d!2366720 m!8306006))

(assert (=> d!2366720 m!8305816))

(declare-fun m!8306008 () Bool)

(assert (=> b!7925479 m!8306008))

(declare-fun m!8306010 () Bool)

(assert (=> b!7925480 m!8306010))

(assert (=> d!2366662 d!2366720))

(declare-fun d!2366722 () Bool)

(declare-fun _$14!1621 () IArray!31855)

(assert (=> d!2366722 (= _$14!1621 (IArray!31856 (fill!276 1 v!5484)))))

(declare-fun e!4677502 () Bool)

(assert (=> d!2366722 (and (inv!95695 _$14!1621) e!4677502)))

(assert (=> d!2366722 (= (choose!59823 1 v!5484) _$14!1621)))

(declare-fun b!7925483 () Bool)

(declare-fun tp!2358507 () Bool)

(assert (=> b!7925483 (= e!4677502 tp!2358507)))

(assert (= d!2366722 b!7925483))

(assert (=> d!2366722 m!8305780))

(declare-fun m!8306012 () Bool)

(assert (=> d!2366722 m!8306012))

(assert (=> d!2366662 d!2366722))

(declare-fun d!2366724 () Bool)

(assert (=> d!2366724 (= (height!2212 (left!56866 lt!2692717)) (ite (is-Empty!15897 (left!56866 lt!2692717)) 0 (ite (is-Leaf!30227 (left!56866 lt!2692717)) 1 (cheight!16108 (left!56866 lt!2692717)))))))

(assert (=> b!7925259 d!2366724))

(declare-fun d!2366726 () Bool)

(assert (=> d!2366726 (= (height!2212 (right!57196 lt!2692717)) (ite (is-Empty!15897 (right!57196 lt!2692717)) 0 (ite (is-Leaf!30227 (right!57196 lt!2692717)) 1 (cheight!16108 (right!57196 lt!2692717)))))))

(assert (=> b!7925259 d!2366726))

(assert (=> bm!735093 d!2366718))

(declare-fun d!2366728 () Bool)

(declare-fun c!1455096 () Bool)

(assert (=> d!2366728 (= c!1455096 (is-Nil!74443 lt!2692734))))

(declare-fun e!4677505 () (Set T!145774))

(assert (=> d!2366728 (= (content!15780 lt!2692734) e!4677505)))

(declare-fun b!7925488 () Bool)

(assert (=> b!7925488 (= e!4677505 (as set.empty (Set T!145774)))))

(declare-fun b!7925489 () Bool)

(assert (=> b!7925489 (= e!4677505 (set.union (set.insert (h!80891 lt!2692734) (as set.empty (Set T!145774))) (content!15780 (t!390166 lt!2692734))))))

(assert (= (and d!2366728 c!1455096) b!7925488))

(assert (= (and d!2366728 (not c!1455096)) b!7925489))

(declare-fun m!8306014 () Bool)

(assert (=> b!7925489 m!8306014))

(declare-fun m!8306016 () Bool)

(assert (=> b!7925489 m!8306016))

(assert (=> b!7925306 d!2366728))

(declare-fun d!2366730 () Bool)

(declare-fun c!1455097 () Bool)

(assert (=> d!2366730 (= c!1455097 (is-Nil!74443 (list!19404 t!4440)))))

(declare-fun e!4677506 () (Set T!145774))

(assert (=> d!2366730 (= (content!15780 (list!19404 t!4440)) e!4677506)))

(declare-fun b!7925490 () Bool)

(assert (=> b!7925490 (= e!4677506 (as set.empty (Set T!145774)))))

(declare-fun b!7925491 () Bool)

(assert (=> b!7925491 (= e!4677506 (set.union (set.insert (h!80891 (list!19404 t!4440)) (as set.empty (Set T!145774))) (content!15780 (t!390166 (list!19404 t!4440)))))))

(assert (= (and d!2366730 c!1455097) b!7925490))

(assert (= (and d!2366730 (not c!1455097)) b!7925491))

(declare-fun m!8306018 () Bool)

(assert (=> b!7925491 m!8306018))

(assert (=> b!7925491 m!8306004))

(assert (=> b!7925306 d!2366730))

(declare-fun d!2366732 () Bool)

(declare-fun res!3144997 () Bool)

(declare-fun e!4677507 () Bool)

(assert (=> d!2366732 (=> (not res!3144997) (not e!4677507))))

(assert (=> d!2366732 (= res!3144997 (= (csize!32024 t!4440) (+ (size!43240 (left!56866 t!4440)) (size!43240 (right!57196 t!4440)))))))

(assert (=> d!2366732 (= (inv!95699 t!4440) e!4677507)))

(declare-fun b!7925492 () Bool)

(declare-fun res!3144998 () Bool)

(assert (=> b!7925492 (=> (not res!3144998) (not e!4677507))))

(assert (=> b!7925492 (= res!3144998 (and (not (= (left!56866 t!4440) Empty!15897)) (not (= (right!57196 t!4440) Empty!15897))))))

(declare-fun b!7925493 () Bool)

(declare-fun res!3144999 () Bool)

(assert (=> b!7925493 (=> (not res!3144999) (not e!4677507))))

(assert (=> b!7925493 (= res!3144999 (= (cheight!16108 t!4440) (+ (max!0 (height!2212 (left!56866 t!4440)) (height!2212 (right!57196 t!4440))) 1)))))

(declare-fun b!7925494 () Bool)

(assert (=> b!7925494 (= e!4677507 (<= 0 (cheight!16108 t!4440)))))

(assert (= (and d!2366732 res!3144997) b!7925492))

(assert (= (and b!7925492 res!3144998) b!7925493))

(assert (= (and b!7925493 res!3144999) b!7925494))

(declare-fun m!8306020 () Bool)

(assert (=> d!2366732 m!8306020))

(assert (=> d!2366732 m!8305960))

(assert (=> b!7925493 m!8305756))

(assert (=> b!7925493 m!8305758))

(assert (=> b!7925493 m!8305756))

(assert (=> b!7925493 m!8305758))

(declare-fun m!8306022 () Bool)

(assert (=> b!7925493 m!8306022))

(assert (=> b!7925251 d!2366732))

(declare-fun d!2366734 () Bool)

(assert (=> d!2366734 (= (list!19406 (xs!19285 t!4440)) (innerList!15985 (xs!19285 t!4440)))))

(assert (=> b!7925314 d!2366734))

(declare-fun d!2366736 () Bool)

(declare-fun res!3145000 () Bool)

(declare-fun e!4677508 () Bool)

(assert (=> d!2366736 (=> (not res!3145000) (not e!4677508))))

(assert (=> d!2366736 (= res!3145000 (<= (size!43238 (list!19406 (xs!19285 (left!56866 t!4440)))) 512))))

(assert (=> d!2366736 (= (inv!95700 (left!56866 t!4440)) e!4677508)))

(declare-fun b!7925495 () Bool)

(declare-fun res!3145001 () Bool)

(assert (=> b!7925495 (=> (not res!3145001) (not e!4677508))))

(assert (=> b!7925495 (= res!3145001 (= (csize!32025 (left!56866 t!4440)) (size!43238 (list!19406 (xs!19285 (left!56866 t!4440))))))))

(declare-fun b!7925496 () Bool)

(assert (=> b!7925496 (= e!4677508 (and (> (csize!32025 (left!56866 t!4440)) 0) (<= (csize!32025 (left!56866 t!4440)) 512)))))

(assert (= (and d!2366736 res!3145000) b!7925495))

(assert (= (and b!7925495 res!3145001) b!7925496))

(declare-fun m!8306024 () Bool)

(assert (=> d!2366736 m!8306024))

(assert (=> d!2366736 m!8306024))

(declare-fun m!8306026 () Bool)

(assert (=> d!2366736 m!8306026))

(assert (=> b!7925495 m!8306024))

(assert (=> b!7925495 m!8306024))

(assert (=> b!7925495 m!8306026))

(assert (=> b!7925229 d!2366736))

(declare-fun d!2366738 () Bool)

(declare-fun lt!2692757 () Bool)

(assert (=> d!2366738 (= lt!2692757 (isEmpty!42769 (list!19404 (left!56866 t!4440))))))

(assert (=> d!2366738 (= lt!2692757 (= (size!43240 (left!56866 t!4440)) 0))))

(assert (=> d!2366738 (= (isEmpty!42767 (left!56866 t!4440)) lt!2692757)))

(declare-fun bs!1968764 () Bool)

(assert (= bs!1968764 d!2366738))

(assert (=> bs!1968764 m!8305818))

(assert (=> bs!1968764 m!8305818))

(declare-fun m!8306028 () Bool)

(assert (=> bs!1968764 m!8306028))

(assert (=> bs!1968764 m!8306020))

(assert (=> b!7925248 d!2366738))

(declare-fun b!7925497 () Bool)

(declare-fun res!3145002 () Bool)

(declare-fun e!4677510 () Bool)

(assert (=> b!7925497 (=> (not res!3145002) (not e!4677510))))

(assert (=> b!7925497 (= res!3145002 (isBalanced!4523 (right!57196 (left!56866 t!4440))))))

(declare-fun b!7925498 () Bool)

(assert (=> b!7925498 (= e!4677510 (not (isEmpty!42767 (right!57196 (left!56866 t!4440)))))))

(declare-fun b!7925499 () Bool)

(declare-fun res!3145005 () Bool)

(assert (=> b!7925499 (=> (not res!3145005) (not e!4677510))))

(assert (=> b!7925499 (= res!3145005 (isBalanced!4523 (left!56866 (left!56866 t!4440))))))

(declare-fun d!2366740 () Bool)

(declare-fun res!3145007 () Bool)

(declare-fun e!4677509 () Bool)

(assert (=> d!2366740 (=> res!3145007 e!4677509)))

(assert (=> d!2366740 (= res!3145007 (not (is-Node!15897 (left!56866 t!4440))))))

(assert (=> d!2366740 (= (isBalanced!4523 (left!56866 t!4440)) e!4677509)))

(declare-fun b!7925500 () Bool)

(declare-fun res!3145004 () Bool)

(assert (=> b!7925500 (=> (not res!3145004) (not e!4677510))))

(assert (=> b!7925500 (= res!3145004 (not (isEmpty!42767 (left!56866 (left!56866 t!4440)))))))

(declare-fun b!7925501 () Bool)

(declare-fun res!3145003 () Bool)

(assert (=> b!7925501 (=> (not res!3145003) (not e!4677510))))

(assert (=> b!7925501 (= res!3145003 (<= (- (height!2212 (left!56866 (left!56866 t!4440))) (height!2212 (right!57196 (left!56866 t!4440)))) 1))))

(declare-fun b!7925502 () Bool)

(assert (=> b!7925502 (= e!4677509 e!4677510)))

(declare-fun res!3145006 () Bool)

(assert (=> b!7925502 (=> (not res!3145006) (not e!4677510))))

(assert (=> b!7925502 (= res!3145006 (<= (- 1) (- (height!2212 (left!56866 (left!56866 t!4440))) (height!2212 (right!57196 (left!56866 t!4440))))))))

(assert (= (and d!2366740 (not res!3145007)) b!7925502))

(assert (= (and b!7925502 res!3145006) b!7925501))

(assert (= (and b!7925501 res!3145003) b!7925499))

(assert (= (and b!7925499 res!3145005) b!7925497))

(assert (= (and b!7925497 res!3145002) b!7925500))

(assert (= (and b!7925500 res!3145004) b!7925498))

(declare-fun m!8306030 () Bool)

(assert (=> b!7925498 m!8306030))

(declare-fun m!8306032 () Bool)

(assert (=> b!7925497 m!8306032))

(assert (=> b!7925502 m!8305952))

(assert (=> b!7925502 m!8305954))

(declare-fun m!8306034 () Bool)

(assert (=> b!7925499 m!8306034))

(declare-fun m!8306036 () Bool)

(assert (=> b!7925500 m!8306036))

(assert (=> b!7925501 m!8305952))

(assert (=> b!7925501 m!8305954))

(assert (=> b!7925247 d!2366740))

(assert (=> b!7925258 d!2366724))

(assert (=> b!7925258 d!2366726))

(declare-fun d!2366742 () Bool)

(declare-fun lt!2692758 () Bool)

(assert (=> d!2366742 (= lt!2692758 (isEmpty!42769 (list!19404 (left!56866 lt!2692717))))))

(assert (=> d!2366742 (= lt!2692758 (= (size!43240 (left!56866 lt!2692717)) 0))))

(assert (=> d!2366742 (= (isEmpty!42767 (left!56866 lt!2692717)) lt!2692758)))

(declare-fun bs!1968765 () Bool)

(assert (= bs!1968765 d!2366742))

(assert (=> bs!1968765 m!8305792))

(assert (=> bs!1968765 m!8305792))

(declare-fun m!8306038 () Bool)

(assert (=> bs!1968765 m!8306038))

(declare-fun m!8306040 () Bool)

(assert (=> bs!1968765 m!8306040))

(assert (=> b!7925257 d!2366742))

(declare-fun d!2366744 () Bool)

(declare-fun e!4677516 () Bool)

(assert (=> d!2366744 e!4677516))

(declare-fun res!3145012 () Bool)

(assert (=> d!2366744 (=> (not res!3145012) (not e!4677516))))

(declare-fun lt!2692761 () List!74567)

(assert (=> d!2366744 (= res!3145012 (= (content!15780 lt!2692761) (set.union (content!15780 (list!19404 t!4440)) (content!15780 (Cons!74443 v!5484 Nil!74443)))))))

(declare-fun e!4677515 () List!74567)

(assert (=> d!2366744 (= lt!2692761 e!4677515)))

(declare-fun c!1455100 () Bool)

(assert (=> d!2366744 (= c!1455100 (is-Nil!74443 (list!19404 t!4440)))))

(assert (=> d!2366744 (= (++!18256 (list!19404 t!4440) (Cons!74443 v!5484 Nil!74443)) lt!2692761)))

(declare-fun b!7925512 () Bool)

(assert (=> b!7925512 (= e!4677515 (Cons!74443 (h!80891 (list!19404 t!4440)) (++!18256 (t!390166 (list!19404 t!4440)) (Cons!74443 v!5484 Nil!74443))))))

(declare-fun b!7925514 () Bool)

(assert (=> b!7925514 (= e!4677516 (or (not (= (Cons!74443 v!5484 Nil!74443) Nil!74443)) (= lt!2692761 (list!19404 t!4440))))))

(declare-fun b!7925511 () Bool)

(assert (=> b!7925511 (= e!4677515 (Cons!74443 v!5484 Nil!74443))))

(declare-fun b!7925513 () Bool)

(declare-fun res!3145013 () Bool)

(assert (=> b!7925513 (=> (not res!3145013) (not e!4677516))))

(assert (=> b!7925513 (= res!3145013 (= (size!43238 lt!2692761) (+ (size!43238 (list!19404 t!4440)) (size!43238 (Cons!74443 v!5484 Nil!74443)))))))

(assert (= (and d!2366744 c!1455100) b!7925511))

(assert (= (and d!2366744 (not c!1455100)) b!7925512))

(assert (= (and d!2366744 res!3145012) b!7925513))

(assert (= (and b!7925513 res!3145013) b!7925514))

(declare-fun m!8306042 () Bool)

(assert (=> d!2366744 m!8306042))

(assert (=> d!2366744 m!8305716))

(assert (=> d!2366744 m!8305814))

(declare-fun m!8306044 () Bool)

(assert (=> d!2366744 m!8306044))

(assert (=> b!7925512 m!8305990))

(declare-fun m!8306046 () Bool)

(assert (=> b!7925513 m!8306046))

(assert (=> b!7925513 m!8305716))

(assert (=> b!7925513 m!8305808))

(declare-fun m!8306048 () Bool)

(assert (=> b!7925513 m!8306048))

(assert (=> b!7925305 d!2366744))

(declare-fun d!2366746 () Bool)

(declare-fun lt!2692764 () Int)

(assert (=> d!2366746 (>= lt!2692764 0)))

(declare-fun e!4677519 () Int)

(assert (=> d!2366746 (= lt!2692764 e!4677519)))

(declare-fun c!1455103 () Bool)

(assert (=> d!2366746 (= c!1455103 (is-Nil!74443 lt!2692734))))

(assert (=> d!2366746 (= (size!43238 lt!2692734) lt!2692764)))

(declare-fun b!7925519 () Bool)

(assert (=> b!7925519 (= e!4677519 0)))

(declare-fun b!7925520 () Bool)

(assert (=> b!7925520 (= e!4677519 (+ 1 (size!43238 (t!390166 lt!2692734))))))

(assert (= (and d!2366746 c!1455103) b!7925519))

(assert (= (and d!2366746 (not c!1455103)) b!7925520))

(declare-fun m!8306050 () Bool)

(assert (=> b!7925520 m!8306050))

(assert (=> b!7925307 d!2366746))

(declare-fun d!2366748 () Bool)

(declare-fun lt!2692765 () Int)

(assert (=> d!2366748 (>= lt!2692765 0)))

(declare-fun e!4677520 () Int)

(assert (=> d!2366748 (= lt!2692765 e!4677520)))

(declare-fun c!1455104 () Bool)

(assert (=> d!2366748 (= c!1455104 (is-Nil!74443 (list!19404 t!4440)))))

(assert (=> d!2366748 (= (size!43238 (list!19404 t!4440)) lt!2692765)))

(declare-fun b!7925521 () Bool)

(assert (=> b!7925521 (= e!4677520 0)))

(declare-fun b!7925522 () Bool)

(assert (=> b!7925522 (= e!4677520 (+ 1 (size!43238 (t!390166 (list!19404 t!4440)))))))

(assert (= (and d!2366748 c!1455104) b!7925521))

(assert (= (and d!2366748 (not c!1455104)) b!7925522))

(assert (=> b!7925522 m!8305998))

(assert (=> b!7925307 d!2366748))

(declare-fun d!2366750 () Bool)

(declare-fun res!3145014 () Bool)

(declare-fun e!4677521 () Bool)

(assert (=> d!2366750 (=> (not res!3145014) (not e!4677521))))

(assert (=> d!2366750 (= res!3145014 (<= (size!43238 (list!19406 (xs!19285 t!4440))) 512))))

(assert (=> d!2366750 (= (inv!95700 t!4440) e!4677521)))

(declare-fun b!7925523 () Bool)

(declare-fun res!3145015 () Bool)

(assert (=> b!7925523 (=> (not res!3145015) (not e!4677521))))

(assert (=> b!7925523 (= res!3145015 (= (csize!32025 t!4440) (size!43238 (list!19406 (xs!19285 t!4440)))))))

(declare-fun b!7925524 () Bool)

(assert (=> b!7925524 (= e!4677521 (and (> (csize!32025 t!4440) 0) (<= (csize!32025 t!4440) 512)))))

(assert (= (and d!2366750 res!3145014) b!7925523))

(assert (= (and b!7925523 res!3145015) b!7925524))

(assert (=> d!2366750 m!8305824))

(assert (=> d!2366750 m!8305824))

(declare-fun m!8306052 () Bool)

(assert (=> d!2366750 m!8306052))

(assert (=> b!7925523 m!8305824))

(assert (=> b!7925523 m!8305824))

(assert (=> b!7925523 m!8306052))

(assert (=> b!7925253 d!2366750))

(declare-fun d!2366752 () Bool)

(assert (=> d!2366752 (= (height!2212 (left!56866 t!4440)) (ite (is-Empty!15897 (left!56866 t!4440)) 0 (ite (is-Leaf!30227 (left!56866 t!4440)) 1 (cheight!16108 (left!56866 t!4440)))))))

(assert (=> b!7925250 d!2366752))

(declare-fun d!2366754 () Bool)

(assert (=> d!2366754 (= (height!2212 (right!57196 t!4440)) (ite (is-Empty!15897 (right!57196 t!4440)) 0 (ite (is-Leaf!30227 (right!57196 t!4440)) 1 (cheight!16108 (right!57196 t!4440)))))))

(assert (=> b!7925250 d!2366754))

(declare-fun d!2366756 () Bool)

(declare-fun e!4677523 () Bool)

(assert (=> d!2366756 e!4677523))

(declare-fun res!3145016 () Bool)

(assert (=> d!2366756 (=> (not res!3145016) (not e!4677523))))

(declare-fun lt!2692766 () List!74567)

(assert (=> d!2366756 (= res!3145016 (= (content!15780 lt!2692766) (set.union (content!15780 (list!19404 (left!56866 t!4440))) (content!15780 (list!19404 (right!57196 t!4440))))))))

(declare-fun e!4677522 () List!74567)

(assert (=> d!2366756 (= lt!2692766 e!4677522)))

(declare-fun c!1455105 () Bool)

(assert (=> d!2366756 (= c!1455105 (is-Nil!74443 (list!19404 (left!56866 t!4440))))))

(assert (=> d!2366756 (= (++!18256 (list!19404 (left!56866 t!4440)) (list!19404 (right!57196 t!4440))) lt!2692766)))

(declare-fun b!7925526 () Bool)

(assert (=> b!7925526 (= e!4677522 (Cons!74443 (h!80891 (list!19404 (left!56866 t!4440))) (++!18256 (t!390166 (list!19404 (left!56866 t!4440))) (list!19404 (right!57196 t!4440)))))))

(declare-fun b!7925528 () Bool)

(assert (=> b!7925528 (= e!4677523 (or (not (= (list!19404 (right!57196 t!4440)) Nil!74443)) (= lt!2692766 (list!19404 (left!56866 t!4440)))))))

(declare-fun b!7925525 () Bool)

(assert (=> b!7925525 (= e!4677522 (list!19404 (right!57196 t!4440)))))

(declare-fun b!7925527 () Bool)

(declare-fun res!3145017 () Bool)

(assert (=> b!7925527 (=> (not res!3145017) (not e!4677523))))

(assert (=> b!7925527 (= res!3145017 (= (size!43238 lt!2692766) (+ (size!43238 (list!19404 (left!56866 t!4440))) (size!43238 (list!19404 (right!57196 t!4440))))))))

(assert (= (and d!2366756 c!1455105) b!7925525))

(assert (= (and d!2366756 (not c!1455105)) b!7925526))

(assert (= (and d!2366756 res!3145016) b!7925527))

(assert (= (and b!7925527 res!3145017) b!7925528))

(declare-fun m!8306054 () Bool)

(assert (=> d!2366756 m!8306054))

(assert (=> d!2366756 m!8305818))

(declare-fun m!8306056 () Bool)

(assert (=> d!2366756 m!8306056))

(assert (=> d!2366756 m!8305820))

(declare-fun m!8306058 () Bool)

(assert (=> d!2366756 m!8306058))

(assert (=> b!7925526 m!8305820))

(declare-fun m!8306060 () Bool)

(assert (=> b!7925526 m!8306060))

(declare-fun m!8306062 () Bool)

(assert (=> b!7925527 m!8306062))

(assert (=> b!7925527 m!8305818))

(declare-fun m!8306064 () Bool)

(assert (=> b!7925527 m!8306064))

(assert (=> b!7925527 m!8305820))

(declare-fun m!8306066 () Bool)

(assert (=> b!7925527 m!8306066))

(assert (=> b!7925315 d!2366756))

(declare-fun b!7925532 () Bool)

(declare-fun e!4677525 () List!74567)

(assert (=> b!7925532 (= e!4677525 (++!18256 (list!19404 (left!56866 (left!56866 t!4440))) (list!19404 (right!57196 (left!56866 t!4440)))))))

(declare-fun d!2366758 () Bool)

(declare-fun c!1455106 () Bool)

(assert (=> d!2366758 (= c!1455106 (is-Empty!15897 (left!56866 t!4440)))))

(declare-fun e!4677524 () List!74567)

(assert (=> d!2366758 (= (list!19404 (left!56866 t!4440)) e!4677524)))

(declare-fun b!7925531 () Bool)

(assert (=> b!7925531 (= e!4677525 (list!19406 (xs!19285 (left!56866 t!4440))))))

(declare-fun b!7925530 () Bool)

(assert (=> b!7925530 (= e!4677524 e!4677525)))

(declare-fun c!1455107 () Bool)

(assert (=> b!7925530 (= c!1455107 (is-Leaf!30227 (left!56866 t!4440)))))

(declare-fun b!7925529 () Bool)

(assert (=> b!7925529 (= e!4677524 Nil!74443)))

(assert (= (and d!2366758 c!1455106) b!7925529))

(assert (= (and d!2366758 (not c!1455106)) b!7925530))

(assert (= (and b!7925530 c!1455107) b!7925531))

(assert (= (and b!7925530 (not c!1455107)) b!7925532))

(declare-fun m!8306068 () Bool)

(assert (=> b!7925532 m!8306068))

(declare-fun m!8306070 () Bool)

(assert (=> b!7925532 m!8306070))

(assert (=> b!7925532 m!8306068))

(assert (=> b!7925532 m!8306070))

(declare-fun m!8306072 () Bool)

(assert (=> b!7925532 m!8306072))

(assert (=> b!7925531 m!8306024))

(assert (=> b!7925315 d!2366758))

(declare-fun b!7925536 () Bool)

(declare-fun e!4677527 () List!74567)

(assert (=> b!7925536 (= e!4677527 (++!18256 (list!19404 (left!56866 (right!57196 t!4440))) (list!19404 (right!57196 (right!57196 t!4440)))))))

(declare-fun d!2366760 () Bool)

(declare-fun c!1455108 () Bool)

(assert (=> d!2366760 (= c!1455108 (is-Empty!15897 (right!57196 t!4440)))))

(declare-fun e!4677526 () List!74567)

(assert (=> d!2366760 (= (list!19404 (right!57196 t!4440)) e!4677526)))

(declare-fun b!7925535 () Bool)

(assert (=> b!7925535 (= e!4677527 (list!19406 (xs!19285 (right!57196 t!4440))))))

(declare-fun b!7925534 () Bool)

(assert (=> b!7925534 (= e!4677526 e!4677527)))

(declare-fun c!1455109 () Bool)

(assert (=> b!7925534 (= c!1455109 (is-Leaf!30227 (right!57196 t!4440)))))

(declare-fun b!7925533 () Bool)

(assert (=> b!7925533 (= e!4677526 Nil!74443)))

(assert (= (and d!2366760 c!1455108) b!7925533))

(assert (= (and d!2366760 (not c!1455108)) b!7925534))

(assert (= (and b!7925534 c!1455109) b!7925535))

(assert (= (and b!7925534 (not c!1455109)) b!7925536))

(declare-fun m!8306074 () Bool)

(assert (=> b!7925536 m!8306074))

(declare-fun m!8306076 () Bool)

(assert (=> b!7925536 m!8306076))

(assert (=> b!7925536 m!8306074))

(assert (=> b!7925536 m!8306076))

(declare-fun m!8306078 () Bool)

(assert (=> b!7925536 m!8306078))

(assert (=> b!7925535 m!8305944))

(assert (=> b!7925315 d!2366760))

(assert (=> b!7925249 d!2366752))

(assert (=> b!7925249 d!2366754))

(declare-fun d!2366762 () Bool)

(assert (=> d!2366762 (= (list!19406 (xs!19285 lt!2692717)) (innerList!15985 (xs!19285 lt!2692717)))))

(assert (=> b!7925282 d!2366762))

(assert (=> b!7925197 d!2366650))

(assert (=> b!7925197 d!2366654))

(declare-fun d!2366764 () Bool)

(declare-fun lt!2692767 () Int)

(assert (=> d!2366764 (>= lt!2692767 0)))

(declare-fun e!4677528 () Int)

(assert (=> d!2366764 (= lt!2692767 e!4677528)))

(declare-fun c!1455110 () Bool)

(assert (=> d!2366764 (= c!1455110 (is-Nil!74443 (innerList!15985 (xs!19285 t!4440))))))

(assert (=> d!2366764 (= (size!43238 (innerList!15985 (xs!19285 t!4440))) lt!2692767)))

(declare-fun b!7925537 () Bool)

(assert (=> b!7925537 (= e!4677528 0)))

(declare-fun b!7925538 () Bool)

(assert (=> b!7925538 (= e!4677528 (+ 1 (size!43238 (t!390166 (innerList!15985 (xs!19285 t!4440))))))))

(assert (= (and d!2366764 c!1455110) b!7925537))

(assert (= (and d!2366764 (not c!1455110)) b!7925538))

(declare-fun m!8306080 () Bool)

(assert (=> b!7925538 m!8306080))

(assert (=> d!2366672 d!2366764))

(declare-fun d!2366766 () Bool)

(assert (=> d!2366766 (= (inv!95695 (xs!19285 (right!57196 t!4440))) (<= (size!43238 (innerList!15985 (xs!19285 (right!57196 t!4440)))) 2147483647))))

(declare-fun bs!1968766 () Bool)

(assert (= bs!1968766 d!2366766))

(declare-fun m!8306082 () Bool)

(assert (=> bs!1968766 m!8306082))

(assert (=> b!7925340 d!2366766))

(declare-fun d!2366768 () Bool)

(declare-fun c!1455111 () Bool)

(assert (=> d!2366768 (= c!1455111 (is-Node!15897 (left!56866 (right!57196 t!4440))))))

(declare-fun e!4677529 () Bool)

(assert (=> d!2366768 (= (inv!95696 (left!56866 (right!57196 t!4440))) e!4677529)))

(declare-fun b!7925539 () Bool)

(assert (=> b!7925539 (= e!4677529 (inv!95699 (left!56866 (right!57196 t!4440))))))

(declare-fun b!7925540 () Bool)

(declare-fun e!4677530 () Bool)

(assert (=> b!7925540 (= e!4677529 e!4677530)))

(declare-fun res!3145018 () Bool)

(assert (=> b!7925540 (= res!3145018 (not (is-Leaf!30227 (left!56866 (right!57196 t!4440)))))))

(assert (=> b!7925540 (=> res!3145018 e!4677530)))

(declare-fun b!7925541 () Bool)

(assert (=> b!7925541 (= e!4677530 (inv!95700 (left!56866 (right!57196 t!4440))))))

(assert (= (and d!2366768 c!1455111) b!7925539))

(assert (= (and d!2366768 (not c!1455111)) b!7925540))

(assert (= (and b!7925540 (not res!3145018)) b!7925541))

(declare-fun m!8306084 () Bool)

(assert (=> b!7925539 m!8306084))

(declare-fun m!8306086 () Bool)

(assert (=> b!7925541 m!8306086))

(assert (=> b!7925339 d!2366768))

(declare-fun d!2366770 () Bool)

(declare-fun c!1455112 () Bool)

(assert (=> d!2366770 (= c!1455112 (is-Node!15897 (right!57196 (right!57196 t!4440))))))

(declare-fun e!4677531 () Bool)

(assert (=> d!2366770 (= (inv!95696 (right!57196 (right!57196 t!4440))) e!4677531)))

(declare-fun b!7925542 () Bool)

(assert (=> b!7925542 (= e!4677531 (inv!95699 (right!57196 (right!57196 t!4440))))))

(declare-fun b!7925543 () Bool)

(declare-fun e!4677532 () Bool)

(assert (=> b!7925543 (= e!4677531 e!4677532)))

(declare-fun res!3145019 () Bool)

(assert (=> b!7925543 (= res!3145019 (not (is-Leaf!30227 (right!57196 (right!57196 t!4440)))))))

(assert (=> b!7925543 (=> res!3145019 e!4677532)))

(declare-fun b!7925544 () Bool)

(assert (=> b!7925544 (= e!4677532 (inv!95700 (right!57196 (right!57196 t!4440))))))

(assert (= (and d!2366770 c!1455112) b!7925542))

(assert (= (and d!2366770 (not c!1455112)) b!7925543))

(assert (= (and b!7925543 (not res!3145019)) b!7925544))

(declare-fun m!8306088 () Bool)

(assert (=> b!7925542 m!8306088))

(declare-fun m!8306090 () Bool)

(assert (=> b!7925544 m!8306090))

(assert (=> b!7925339 d!2366770))

(declare-fun d!2366772 () Bool)

(declare-fun e!4677534 () Bool)

(assert (=> d!2366772 e!4677534))

(declare-fun res!3145020 () Bool)

(assert (=> d!2366772 (=> (not res!3145020) (not e!4677534))))

(declare-fun lt!2692768 () List!74567)

(assert (=> d!2366772 (= res!3145020 (= (content!15780 lt!2692768) (set.union (content!15780 (list!19404 (left!56866 lt!2692717))) (content!15780 (list!19404 (right!57196 lt!2692717))))))))

(declare-fun e!4677533 () List!74567)

(assert (=> d!2366772 (= lt!2692768 e!4677533)))

(declare-fun c!1455113 () Bool)

(assert (=> d!2366772 (= c!1455113 (is-Nil!74443 (list!19404 (left!56866 lt!2692717))))))

(assert (=> d!2366772 (= (++!18256 (list!19404 (left!56866 lt!2692717)) (list!19404 (right!57196 lt!2692717))) lt!2692768)))

(declare-fun b!7925546 () Bool)

(assert (=> b!7925546 (= e!4677533 (Cons!74443 (h!80891 (list!19404 (left!56866 lt!2692717))) (++!18256 (t!390166 (list!19404 (left!56866 lt!2692717))) (list!19404 (right!57196 lt!2692717)))))))

(declare-fun b!7925548 () Bool)

(assert (=> b!7925548 (= e!4677534 (or (not (= (list!19404 (right!57196 lt!2692717)) Nil!74443)) (= lt!2692768 (list!19404 (left!56866 lt!2692717)))))))

(declare-fun b!7925545 () Bool)

(assert (=> b!7925545 (= e!4677533 (list!19404 (right!57196 lt!2692717)))))

(declare-fun b!7925547 () Bool)

(declare-fun res!3145021 () Bool)

(assert (=> b!7925547 (=> (not res!3145021) (not e!4677534))))

(assert (=> b!7925547 (= res!3145021 (= (size!43238 lt!2692768) (+ (size!43238 (list!19404 (left!56866 lt!2692717))) (size!43238 (list!19404 (right!57196 lt!2692717))))))))

(assert (= (and d!2366772 c!1455113) b!7925545))

(assert (= (and d!2366772 (not c!1455113)) b!7925546))

(assert (= (and d!2366772 res!3145020) b!7925547))

(assert (= (and b!7925547 res!3145021) b!7925548))

(declare-fun m!8306092 () Bool)

(assert (=> d!2366772 m!8306092))

(assert (=> d!2366772 m!8305792))

(declare-fun m!8306094 () Bool)

(assert (=> d!2366772 m!8306094))

(assert (=> d!2366772 m!8305794))

(declare-fun m!8306096 () Bool)

(assert (=> d!2366772 m!8306096))

(assert (=> b!7925546 m!8305794))

(declare-fun m!8306098 () Bool)

(assert (=> b!7925546 m!8306098))

(declare-fun m!8306100 () Bool)

(assert (=> b!7925547 m!8306100))

(assert (=> b!7925547 m!8305792))

(declare-fun m!8306102 () Bool)

(assert (=> b!7925547 m!8306102))

(assert (=> b!7925547 m!8305794))

(declare-fun m!8306104 () Bool)

(assert (=> b!7925547 m!8306104))

(assert (=> b!7925283 d!2366772))

(declare-fun b!7925552 () Bool)

(declare-fun e!4677536 () List!74567)

(assert (=> b!7925552 (= e!4677536 (++!18256 (list!19404 (left!56866 (left!56866 lt!2692717))) (list!19404 (right!57196 (left!56866 lt!2692717)))))))

(declare-fun d!2366774 () Bool)

(declare-fun c!1455114 () Bool)

(assert (=> d!2366774 (= c!1455114 (is-Empty!15897 (left!56866 lt!2692717)))))

(declare-fun e!4677535 () List!74567)

(assert (=> d!2366774 (= (list!19404 (left!56866 lt!2692717)) e!4677535)))

(declare-fun b!7925551 () Bool)

(assert (=> b!7925551 (= e!4677536 (list!19406 (xs!19285 (left!56866 lt!2692717))))))

(declare-fun b!7925550 () Bool)

(assert (=> b!7925550 (= e!4677535 e!4677536)))

(declare-fun c!1455115 () Bool)

(assert (=> b!7925550 (= c!1455115 (is-Leaf!30227 (left!56866 lt!2692717)))))

(declare-fun b!7925549 () Bool)

(assert (=> b!7925549 (= e!4677535 Nil!74443)))

(assert (= (and d!2366774 c!1455114) b!7925549))

(assert (= (and d!2366774 (not c!1455114)) b!7925550))

(assert (= (and b!7925550 c!1455115) b!7925551))

(assert (= (and b!7925550 (not c!1455115)) b!7925552))

(declare-fun m!8306106 () Bool)

(assert (=> b!7925552 m!8306106))

(declare-fun m!8306108 () Bool)

(assert (=> b!7925552 m!8306108))

(assert (=> b!7925552 m!8306106))

(assert (=> b!7925552 m!8306108))

(declare-fun m!8306110 () Bool)

(assert (=> b!7925552 m!8306110))

(declare-fun m!8306112 () Bool)

(assert (=> b!7925551 m!8306112))

(assert (=> b!7925283 d!2366774))

(declare-fun b!7925556 () Bool)

(declare-fun e!4677538 () List!74567)

(assert (=> b!7925556 (= e!4677538 (++!18256 (list!19404 (left!56866 (right!57196 lt!2692717))) (list!19404 (right!57196 (right!57196 lt!2692717)))))))

(declare-fun d!2366776 () Bool)

(declare-fun c!1455116 () Bool)

(assert (=> d!2366776 (= c!1455116 (is-Empty!15897 (right!57196 lt!2692717)))))

(declare-fun e!4677537 () List!74567)

(assert (=> d!2366776 (= (list!19404 (right!57196 lt!2692717)) e!4677537)))

(declare-fun b!7925555 () Bool)

(assert (=> b!7925555 (= e!4677538 (list!19406 (xs!19285 (right!57196 lt!2692717))))))

(declare-fun b!7925554 () Bool)

(assert (=> b!7925554 (= e!4677537 e!4677538)))

(declare-fun c!1455117 () Bool)

(assert (=> b!7925554 (= c!1455117 (is-Leaf!30227 (right!57196 lt!2692717)))))

(declare-fun b!7925553 () Bool)

(assert (=> b!7925553 (= e!4677537 Nil!74443)))

(assert (= (and d!2366776 c!1455116) b!7925553))

(assert (= (and d!2366776 (not c!1455116)) b!7925554))

(assert (= (and b!7925554 c!1455117) b!7925555))

(assert (= (and b!7925554 (not c!1455117)) b!7925556))

(declare-fun m!8306114 () Bool)

(assert (=> b!7925556 m!8306114))

(declare-fun m!8306116 () Bool)

(assert (=> b!7925556 m!8306116))

(assert (=> b!7925556 m!8306114))

(assert (=> b!7925556 m!8306116))

(declare-fun m!8306118 () Bool)

(assert (=> b!7925556 m!8306118))

(declare-fun m!8306120 () Bool)

(assert (=> b!7925555 m!8306120))

(assert (=> b!7925283 d!2366776))

(declare-fun d!2366778 () Bool)

(declare-fun res!3145022 () Bool)

(declare-fun e!4677539 () Bool)

(assert (=> d!2366778 (=> (not res!3145022) (not e!4677539))))

(assert (=> d!2366778 (= res!3145022 (= (csize!32024 (right!57196 t!4440)) (+ (size!43240 (left!56866 (right!57196 t!4440))) (size!43240 (right!57196 (right!57196 t!4440))))))))

(assert (=> d!2366778 (= (inv!95699 (right!57196 t!4440)) e!4677539)))

(declare-fun b!7925557 () Bool)

(declare-fun res!3145023 () Bool)

(assert (=> b!7925557 (=> (not res!3145023) (not e!4677539))))

(assert (=> b!7925557 (= res!3145023 (and (not (= (left!56866 (right!57196 t!4440)) Empty!15897)) (not (= (right!57196 (right!57196 t!4440)) Empty!15897))))))

(declare-fun b!7925558 () Bool)

(declare-fun res!3145024 () Bool)

(assert (=> b!7925558 (=> (not res!3145024) (not e!4677539))))

(assert (=> b!7925558 (= res!3145024 (= (cheight!16108 (right!57196 t!4440)) (+ (max!0 (height!2212 (left!56866 (right!57196 t!4440))) (height!2212 (right!57196 (right!57196 t!4440)))) 1)))))

(declare-fun b!7925559 () Bool)

(assert (=> b!7925559 (= e!4677539 (<= 0 (cheight!16108 (right!57196 t!4440))))))

(assert (= (and d!2366778 res!3145022) b!7925557))

(assert (= (and b!7925557 res!3145023) b!7925558))

(assert (= (and b!7925558 res!3145024) b!7925559))

(declare-fun m!8306122 () Bool)

(assert (=> d!2366778 m!8306122))

(declare-fun m!8306124 () Bool)

(assert (=> d!2366778 m!8306124))

(assert (=> b!7925558 m!8305966))

(assert (=> b!7925558 m!8305968))

(assert (=> b!7925558 m!8305966))

(assert (=> b!7925558 m!8305968))

(declare-fun m!8306126 () Bool)

(assert (=> b!7925558 m!8306126))

(assert (=> b!7925230 d!2366778))

(declare-fun b!7925560 () Bool)

(declare-fun e!4677540 () Bool)

(declare-fun tp!2358508 () Bool)

(assert (=> b!7925560 (= e!4677540 (and tp_is_empty!53219 tp!2358508))))

(assert (=> b!7925341 (= tp!2358486 e!4677540)))

(assert (= (and b!7925341 (is-Cons!74443 (innerList!15985 (xs!19285 (right!57196 t!4440))))) b!7925560))

(declare-fun e!4677541 () Bool)

(declare-fun tp!2358510 () Bool)

(declare-fun tp!2358509 () Bool)

(declare-fun b!7925561 () Bool)

(assert (=> b!7925561 (= e!4677541 (and (inv!95696 (left!56866 (left!56866 (left!56866 t!4440)))) tp!2358510 (inv!95696 (right!57196 (left!56866 (left!56866 t!4440)))) tp!2358509))))

(declare-fun b!7925563 () Bool)

(declare-fun e!4677542 () Bool)

(declare-fun tp!2358511 () Bool)

(assert (=> b!7925563 (= e!4677542 tp!2358511)))

(declare-fun b!7925562 () Bool)

(assert (=> b!7925562 (= e!4677541 (and (inv!95695 (xs!19285 (left!56866 (left!56866 t!4440)))) e!4677542))))

(assert (=> b!7925336 (= tp!2358482 (and (inv!95696 (left!56866 (left!56866 t!4440))) e!4677541))))

(assert (= (and b!7925336 (is-Node!15897 (left!56866 (left!56866 t!4440)))) b!7925561))

(assert (= b!7925562 b!7925563))

(assert (= (and b!7925336 (is-Leaf!30227 (left!56866 (left!56866 t!4440)))) b!7925562))

(declare-fun m!8306128 () Bool)

(assert (=> b!7925561 m!8306128))

(declare-fun m!8306130 () Bool)

(assert (=> b!7925561 m!8306130))

(declare-fun m!8306132 () Bool)

(assert (=> b!7925562 m!8306132))

(assert (=> b!7925336 m!8305828))

(declare-fun tp!2358513 () Bool)

(declare-fun e!4677543 () Bool)

(declare-fun tp!2358512 () Bool)

(declare-fun b!7925564 () Bool)

(assert (=> b!7925564 (= e!4677543 (and (inv!95696 (left!56866 (right!57196 (left!56866 t!4440)))) tp!2358513 (inv!95696 (right!57196 (right!57196 (left!56866 t!4440)))) tp!2358512))))

(declare-fun b!7925566 () Bool)

(declare-fun e!4677544 () Bool)

(declare-fun tp!2358514 () Bool)

(assert (=> b!7925566 (= e!4677544 tp!2358514)))

(declare-fun b!7925565 () Bool)

(assert (=> b!7925565 (= e!4677543 (and (inv!95695 (xs!19285 (right!57196 (left!56866 t!4440)))) e!4677544))))

(assert (=> b!7925336 (= tp!2358481 (and (inv!95696 (right!57196 (left!56866 t!4440))) e!4677543))))

(assert (= (and b!7925336 (is-Node!15897 (right!57196 (left!56866 t!4440)))) b!7925564))

(assert (= b!7925565 b!7925566))

(assert (= (and b!7925336 (is-Leaf!30227 (right!57196 (left!56866 t!4440)))) b!7925565))

(declare-fun m!8306134 () Bool)

(assert (=> b!7925564 m!8306134))

(declare-fun m!8306136 () Bool)

(assert (=> b!7925564 m!8306136))

(declare-fun m!8306138 () Bool)

(assert (=> b!7925565 m!8306138))

(assert (=> b!7925336 m!8305830))

(declare-fun b!7925567 () Bool)

(declare-fun e!4677545 () Bool)

(declare-fun tp!2358515 () Bool)

(assert (=> b!7925567 (= e!4677545 (and tp_is_empty!53219 tp!2358515))))

(assert (=> b!7925346 (= tp!2358489 e!4677545)))

(assert (= (and b!7925346 (is-Cons!74443 (t!390166 (innerList!15985 (xs!19285 t!4440))))) b!7925567))

(declare-fun b!7925568 () Bool)

(declare-fun e!4677546 () Bool)

(declare-fun tp!2358516 () Bool)

(declare-fun tp!2358517 () Bool)

(assert (=> b!7925568 (= e!4677546 (and (inv!95696 (left!56866 (left!56866 (right!57196 t!4440)))) tp!2358517 (inv!95696 (right!57196 (left!56866 (right!57196 t!4440)))) tp!2358516))))

(declare-fun b!7925570 () Bool)

(declare-fun e!4677547 () Bool)

(declare-fun tp!2358518 () Bool)

(assert (=> b!7925570 (= e!4677547 tp!2358518)))

(declare-fun b!7925569 () Bool)

(assert (=> b!7925569 (= e!4677546 (and (inv!95695 (xs!19285 (left!56866 (right!57196 t!4440)))) e!4677547))))

(assert (=> b!7925339 (= tp!2358485 (and (inv!95696 (left!56866 (right!57196 t!4440))) e!4677546))))

(assert (= (and b!7925339 (is-Node!15897 (left!56866 (right!57196 t!4440)))) b!7925568))

(assert (= b!7925569 b!7925570))

(assert (= (and b!7925339 (is-Leaf!30227 (left!56866 (right!57196 t!4440)))) b!7925569))

(declare-fun m!8306140 () Bool)

(assert (=> b!7925568 m!8306140))

(declare-fun m!8306142 () Bool)

(assert (=> b!7925568 m!8306142))

(declare-fun m!8306144 () Bool)

(assert (=> b!7925569 m!8306144))

(assert (=> b!7925339 m!8305834))

(declare-fun e!4677548 () Bool)

(declare-fun b!7925571 () Bool)

(declare-fun tp!2358520 () Bool)

(declare-fun tp!2358519 () Bool)

(assert (=> b!7925571 (= e!4677548 (and (inv!95696 (left!56866 (right!57196 (right!57196 t!4440)))) tp!2358520 (inv!95696 (right!57196 (right!57196 (right!57196 t!4440)))) tp!2358519))))

(declare-fun b!7925573 () Bool)

(declare-fun e!4677549 () Bool)

(declare-fun tp!2358521 () Bool)

(assert (=> b!7925573 (= e!4677549 tp!2358521)))

(declare-fun b!7925572 () Bool)

(assert (=> b!7925572 (= e!4677548 (and (inv!95695 (xs!19285 (right!57196 (right!57196 t!4440)))) e!4677549))))

(assert (=> b!7925339 (= tp!2358484 (and (inv!95696 (right!57196 (right!57196 t!4440))) e!4677548))))

(assert (= (and b!7925339 (is-Node!15897 (right!57196 (right!57196 t!4440)))) b!7925571))

(assert (= b!7925572 b!7925573))

(assert (= (and b!7925339 (is-Leaf!30227 (right!57196 (right!57196 t!4440)))) b!7925572))

(declare-fun m!8306146 () Bool)

(assert (=> b!7925571 m!8306146))

(declare-fun m!8306148 () Bool)

(assert (=> b!7925571 m!8306148))

(declare-fun m!8306150 () Bool)

(assert (=> b!7925572 m!8306150))

(assert (=> b!7925339 m!8305836))

(declare-fun b!7925574 () Bool)

(declare-fun e!4677550 () Bool)

(declare-fun tp!2358522 () Bool)

(assert (=> b!7925574 (= e!4677550 (and tp_is_empty!53219 tp!2358522))))

(assert (=> b!7925338 (= tp!2358483 e!4677550)))

(assert (= (and b!7925338 (is-Cons!74443 (innerList!15985 (xs!19285 (left!56866 t!4440))))) b!7925574))

(push 1)

(assert (not b!7925497))

(assert (not d!2366696))

(assert (not b!7925455))

(assert (not b!7925467))

(assert (not b!7925432))

(assert (not b!7925500))

(assert (not b!7925471))

(assert (not bm!735101))

(assert (not d!2366742))

(assert (not b!7925498))

(assert (not d!2366714))

(assert (not b!7925532))

(assert (not b!7925453))

(assert (not b!7925563))

(assert (not b!7925574))

(assert (not b!7925556))

(assert (not b!7925421))

(assert (not b!7925527))

(assert (not d!2366744))

(assert (not b!7925461))

(assert (not b!7925417))

(assert (not bm!735100))

(assert (not b!7925569))

(assert (not b!7925513))

(assert (not b!7925429))

(assert (not b!7925565))

(assert (not b!7925495))

(assert (not b!7925499))

(assert (not b!7925489))

(assert (not b!7925451))

(assert (not b!7925541))

(assert (not d!2366778))

(assert (not b!7925465))

(assert (not b!7925538))

(assert tp_is_empty!53219)

(assert (not d!2366722))

(assert (not d!2366766))

(assert (not b!7925452))

(assert (not b!7925552))

(assert (not b!7925523))

(assert (not b!7925479))

(assert (not b!7925454))

(assert (not b!7925558))

(assert (not b!7925522))

(assert (not d!2366720))

(assert (not b!7925480))

(assert (not b!7925535))

(assert (not d!2366750))

(assert (not d!2366706))

(assert (not b!7925570))

(assert (not b!7925551))

(assert (not b!7925502))

(assert (not d!2366756))

(assert (not b!7925448))

(assert (not b!7925566))

(assert (not b!7925531))

(assert (not b!7925564))

(assert (not b!7925560))

(assert (not d!2366732))

(assert (not b!7925544))

(assert (not b!7925567))

(assert (not b!7925459))

(assert (not b!7925339))

(assert (not b!7925573))

(assert (not b!7925571))

(assert (not b!7925422))

(assert (not b!7925456))

(assert (not b!7925491))

(assert (not b!7925450))

(assert (not b!7925464))

(assert (not b!7925539))

(assert (not b!7925512))

(assert (not b!7925547))

(assert (not b!7925572))

(assert (not b!7925562))

(assert (not b!7925420))

(assert (not b!7925439))

(assert (not b!7925568))

(assert (not b!7925542))

(assert (not b!7925336))

(assert (not d!2366708))

(assert (not b!7925501))

(assert (not d!2366704))

(assert (not b!7925460))

(assert (not b!7925526))

(assert (not b!7925458))

(assert (not b!7925483))

(assert (not b!7925546))

(assert (not b!7925469))

(assert (not b!7925536))

(assert (not b!7925431))

(assert (not b!7925468))

(assert (not d!2366738))

(assert (not b!7925561))

(assert (not b!7925419))

(assert (not b!7925555))

(assert (not b!7925457))

(assert (not b!7925434))

(assert (not b!7925428))

(assert (not d!2366772))

(assert (not b!7925493))

(assert (not b!7925520))

(assert (not d!2366736))

(assert (not b!7925418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2366866 () Bool)

(declare-fun lt!2692797 () Int)

(assert (=> d!2366866 (>= lt!2692797 0)))

(declare-fun e!4677631 () Int)

(assert (=> d!2366866 (= lt!2692797 e!4677631)))

(declare-fun c!1455153 () Bool)

(assert (=> d!2366866 (= c!1455153 (is-Nil!74443 lt!2692761))))

(assert (=> d!2366866 (= (size!43238 lt!2692761) lt!2692797)))

(declare-fun b!7925733 () Bool)

(assert (=> b!7925733 (= e!4677631 0)))

(declare-fun b!7925734 () Bool)

(assert (=> b!7925734 (= e!4677631 (+ 1 (size!43238 (t!390166 lt!2692761))))))

(assert (= (and d!2366866 c!1455153) b!7925733))

(assert (= (and d!2366866 (not c!1455153)) b!7925734))

(declare-fun m!8306384 () Bool)

(assert (=> b!7925734 m!8306384))

(assert (=> b!7925513 d!2366866))

(assert (=> b!7925513 d!2366748))

(declare-fun d!2366868 () Bool)

(declare-fun lt!2692798 () Int)

(assert (=> d!2366868 (>= lt!2692798 0)))

(declare-fun e!4677632 () Int)

(assert (=> d!2366868 (= lt!2692798 e!4677632)))

(declare-fun c!1455154 () Bool)

(assert (=> d!2366868 (= c!1455154 (is-Nil!74443 (Cons!74443 v!5484 Nil!74443)))))

(assert (=> d!2366868 (= (size!43238 (Cons!74443 v!5484 Nil!74443)) lt!2692798)))

(declare-fun b!7925735 () Bool)

(assert (=> b!7925735 (= e!4677632 0)))

(declare-fun b!7925736 () Bool)

(assert (=> b!7925736 (= e!4677632 (+ 1 (size!43238 (t!390166 (Cons!74443 v!5484 Nil!74443)))))))

(assert (= (and d!2366868 c!1455154) b!7925735))

(assert (= (and d!2366868 (not c!1455154)) b!7925736))

(declare-fun m!8306386 () Bool)

(assert (=> b!7925736 m!8306386))

(assert (=> b!7925513 d!2366868))

(declare-fun d!2366870 () Bool)

(assert (=> d!2366870 (= (height!2212 (left!56866 (right!57196 lt!2692717))) (ite (is-Empty!15897 (left!56866 (right!57196 lt!2692717))) 0 (ite (is-Leaf!30227 (left!56866 (right!57196 lt!2692717))) 1 (cheight!16108 (left!56866 (right!57196 lt!2692717))))))))

(assert (=> b!7925421 d!2366870))

(declare-fun d!2366872 () Bool)

(assert (=> d!2366872 (= (height!2212 (right!57196 (right!57196 lt!2692717))) (ite (is-Empty!15897 (right!57196 (right!57196 lt!2692717))) 0 (ite (is-Leaf!30227 (right!57196 (right!57196 lt!2692717))) 1 (cheight!16108 (right!57196 (right!57196 lt!2692717))))))))

(assert (=> b!7925421 d!2366872))

(declare-fun d!2366874 () Bool)

(declare-fun res!3145095 () Bool)

(declare-fun e!4677633 () Bool)

(assert (=> d!2366874 (=> (not res!3145095) (not e!4677633))))

(assert (=> d!2366874 (= res!3145095 (<= (size!43238 (list!19406 (xs!19285 (right!57196 (left!56866 t!4440))))) 512))))

(assert (=> d!2366874 (= (inv!95700 (right!57196 (left!56866 t!4440))) e!4677633)))

(declare-fun b!7925737 () Bool)

(declare-fun res!3145096 () Bool)

(assert (=> b!7925737 (=> (not res!3145096) (not e!4677633))))

(assert (=> b!7925737 (= res!3145096 (= (csize!32025 (right!57196 (left!56866 t!4440))) (size!43238 (list!19406 (xs!19285 (right!57196 (left!56866 t!4440)))))))))

(declare-fun b!7925738 () Bool)

(assert (=> b!7925738 (= e!4677633 (and (> (csize!32025 (right!57196 (left!56866 t!4440))) 0) (<= (csize!32025 (right!57196 (left!56866 t!4440))) 512)))))

(assert (= (and d!2366874 res!3145095) b!7925737))

(assert (= (and b!7925737 res!3145096) b!7925738))

(declare-fun m!8306388 () Bool)

(assert (=> d!2366874 m!8306388))

(assert (=> d!2366874 m!8306388))

(declare-fun m!8306390 () Bool)

(assert (=> d!2366874 m!8306390))

(assert (=> b!7925737 m!8306388))

(assert (=> b!7925737 m!8306388))

(assert (=> b!7925737 m!8306390))

(assert (=> b!7925434 d!2366874))

(declare-fun d!2366876 () Bool)

(declare-fun c!1455155 () Bool)

(assert (=> d!2366876 (= c!1455155 (is-Nil!74443 lt!2692756))))

(declare-fun e!4677634 () (Set T!145774))

(assert (=> d!2366876 (= (content!15780 lt!2692756) e!4677634)))

(declare-fun b!7925739 () Bool)

(assert (=> b!7925739 (= e!4677634 (as set.empty (Set T!145774)))))

(declare-fun b!7925740 () Bool)

(assert (=> b!7925740 (= e!4677634 (set.union (set.insert (h!80891 lt!2692756) (as set.empty (Set T!145774))) (content!15780 (t!390166 lt!2692756))))))

(assert (= (and d!2366876 c!1455155) b!7925739))

(assert (= (and d!2366876 (not c!1455155)) b!7925740))

(declare-fun m!8306392 () Bool)

(assert (=> b!7925740 m!8306392))

(declare-fun m!8306394 () Bool)

(assert (=> b!7925740 m!8306394))

(assert (=> d!2366720 d!2366876))

(declare-fun d!2366878 () Bool)

(declare-fun lt!2692799 () Int)

(assert (=> d!2366878 (>= lt!2692799 0)))

(declare-fun e!4677635 () Int)

(assert (=> d!2366878 (= lt!2692799 e!4677635)))

(declare-fun c!1455156 () Bool)

(assert (=> d!2366878 (= c!1455156 (is-Nil!74443 (t!390166 lt!2692734)))))

(assert (=> d!2366878 (= (size!43238 (t!390166 lt!2692734)) lt!2692799)))

(declare-fun b!7925741 () Bool)

(assert (=> b!7925741 (= e!4677635 0)))

(declare-fun b!7925742 () Bool)

(assert (=> b!7925742 (= e!4677635 (+ 1 (size!43238 (t!390166 (t!390166 lt!2692734)))))))

(assert (= (and d!2366878 c!1455156) b!7925741))

(assert (= (and d!2366878 (not c!1455156)) b!7925742))

(declare-fun m!8306396 () Bool)

(assert (=> b!7925742 m!8306396))

(assert (=> b!7925520 d!2366878))

(declare-fun d!2366880 () Bool)

(declare-fun res!3145097 () Bool)

(declare-fun e!4677636 () Bool)

(assert (=> d!2366880 (=> (not res!3145097) (not e!4677636))))

(assert (=> d!2366880 (= res!3145097 (<= (size!43238 (list!19406 (xs!19285 (left!56866 (right!57196 t!4440))))) 512))))

(assert (=> d!2366880 (= (inv!95700 (left!56866 (right!57196 t!4440))) e!4677636)))

(declare-fun b!7925743 () Bool)

(declare-fun res!3145098 () Bool)

(assert (=> b!7925743 (=> (not res!3145098) (not e!4677636))))

(assert (=> b!7925743 (= res!3145098 (= (csize!32025 (left!56866 (right!57196 t!4440))) (size!43238 (list!19406 (xs!19285 (left!56866 (right!57196 t!4440)))))))))

(declare-fun b!7925744 () Bool)

(assert (=> b!7925744 (= e!4677636 (and (> (csize!32025 (left!56866 (right!57196 t!4440))) 0) (<= (csize!32025 (left!56866 (right!57196 t!4440))) 512)))))

(assert (= (and d!2366880 res!3145097) b!7925743))

(assert (= (and b!7925743 res!3145098) b!7925744))

(declare-fun m!8306398 () Bool)

(assert (=> d!2366880 m!8306398))

(assert (=> d!2366880 m!8306398))

(declare-fun m!8306400 () Bool)

(assert (=> d!2366880 m!8306400))

(assert (=> b!7925743 m!8306398))

(assert (=> b!7925743 m!8306398))

(assert (=> b!7925743 m!8306400))

(assert (=> b!7925541 d!2366880))

(declare-fun b!7925745 () Bool)

(declare-fun res!3145099 () Bool)

(declare-fun e!4677638 () Bool)

(assert (=> b!7925745 (=> (not res!3145099) (not e!4677638))))

(assert (=> b!7925745 (= res!3145099 (isBalanced!4523 (right!57196 (left!56866 (left!56866 t!4440)))))))

(declare-fun b!7925746 () Bool)

(assert (=> b!7925746 (= e!4677638 (not (isEmpty!42767 (right!57196 (left!56866 (left!56866 t!4440))))))))

(declare-fun b!7925747 () Bool)

(declare-fun res!3145102 () Bool)

(assert (=> b!7925747 (=> (not res!3145102) (not e!4677638))))

(assert (=> b!7925747 (= res!3145102 (isBalanced!4523 (left!56866 (left!56866 (left!56866 t!4440)))))))

(declare-fun d!2366882 () Bool)

(declare-fun res!3145104 () Bool)

(declare-fun e!4677637 () Bool)

(assert (=> d!2366882 (=> res!3145104 e!4677637)))

(assert (=> d!2366882 (= res!3145104 (not (is-Node!15897 (left!56866 (left!56866 t!4440)))))))

(assert (=> d!2366882 (= (isBalanced!4523 (left!56866 (left!56866 t!4440))) e!4677637)))

(declare-fun b!7925748 () Bool)

(declare-fun res!3145101 () Bool)

(assert (=> b!7925748 (=> (not res!3145101) (not e!4677638))))

(assert (=> b!7925748 (= res!3145101 (not (isEmpty!42767 (left!56866 (left!56866 (left!56866 t!4440))))))))

(declare-fun b!7925749 () Bool)

(declare-fun res!3145100 () Bool)

(assert (=> b!7925749 (=> (not res!3145100) (not e!4677638))))

(assert (=> b!7925749 (= res!3145100 (<= (- (height!2212 (left!56866 (left!56866 (left!56866 t!4440)))) (height!2212 (right!57196 (left!56866 (left!56866 t!4440))))) 1))))

(declare-fun b!7925750 () Bool)

(assert (=> b!7925750 (= e!4677637 e!4677638)))

(declare-fun res!3145103 () Bool)

(assert (=> b!7925750 (=> (not res!3145103) (not e!4677638))))

(assert (=> b!7925750 (= res!3145103 (<= (- 1) (- (height!2212 (left!56866 (left!56866 (left!56866 t!4440)))) (height!2212 (right!57196 (left!56866 (left!56866 t!4440)))))))))

(assert (= (and d!2366882 (not res!3145104)) b!7925750))

(assert (= (and b!7925750 res!3145103) b!7925749))

(assert (= (and b!7925749 res!3145100) b!7925747))

(assert (= (and b!7925747 res!3145102) b!7925745))

(assert (= (and b!7925745 res!3145099) b!7925748))

(assert (= (and b!7925748 res!3145101) b!7925746))

(declare-fun m!8306402 () Bool)

(assert (=> b!7925746 m!8306402))

(declare-fun m!8306404 () Bool)

(assert (=> b!7925745 m!8306404))

(declare-fun m!8306406 () Bool)

(assert (=> b!7925750 m!8306406))

(declare-fun m!8306408 () Bool)

(assert (=> b!7925750 m!8306408))

(declare-fun m!8306410 () Bool)

(assert (=> b!7925747 m!8306410))

(declare-fun m!8306412 () Bool)

(assert (=> b!7925748 m!8306412))

(assert (=> b!7925749 m!8306406))

(assert (=> b!7925749 m!8306408))

(assert (=> b!7925499 d!2366882))

(declare-fun d!2366884 () Bool)

(declare-fun lt!2692800 () Bool)

(assert (=> d!2366884 (= lt!2692800 (isEmpty!42769 (list!19404 (left!56866 (right!57196 t!4440)))))))

(assert (=> d!2366884 (= lt!2692800 (= (size!43240 (left!56866 (right!57196 t!4440))) 0))))

(assert (=> d!2366884 (= (isEmpty!42767 (left!56866 (right!57196 t!4440))) lt!2692800)))

(declare-fun bs!1968773 () Bool)

(assert (= bs!1968773 d!2366884))

(assert (=> bs!1968773 m!8306074))

(assert (=> bs!1968773 m!8306074))

(declare-fun m!8306414 () Bool)

(assert (=> bs!1968773 m!8306414))

(assert (=> bs!1968773 m!8306122))

(assert (=> b!7925453 d!2366884))

(declare-fun d!2366886 () Bool)

(declare-fun c!1455157 () Bool)

(assert (=> d!2366886 (= c!1455157 (is-Nil!74443 lt!2692761))))

(declare-fun e!4677639 () (Set T!145774))

(assert (=> d!2366886 (= (content!15780 lt!2692761) e!4677639)))

(declare-fun b!7925751 () Bool)

(assert (=> b!7925751 (= e!4677639 (as set.empty (Set T!145774)))))

(declare-fun b!7925752 () Bool)

(assert (=> b!7925752 (= e!4677639 (set.union (set.insert (h!80891 lt!2692761) (as set.empty (Set T!145774))) (content!15780 (t!390166 lt!2692761))))))

(assert (= (and d!2366886 c!1455157) b!7925751))

(assert (= (and d!2366886 (not c!1455157)) b!7925752))

(declare-fun m!8306416 () Bool)

(assert (=> b!7925752 m!8306416))

(declare-fun m!8306418 () Bool)

(assert (=> b!7925752 m!8306418))

(assert (=> d!2366744 d!2366886))

(assert (=> d!2366744 d!2366730))

(declare-fun d!2366888 () Bool)

(declare-fun c!1455158 () Bool)

(assert (=> d!2366888 (= c!1455158 (is-Nil!74443 (Cons!74443 v!5484 Nil!74443)))))

(declare-fun e!4677640 () (Set T!145774))

(assert (=> d!2366888 (= (content!15780 (Cons!74443 v!5484 Nil!74443)) e!4677640)))

(declare-fun b!7925753 () Bool)

(assert (=> b!7925753 (= e!4677640 (as set.empty (Set T!145774)))))

(declare-fun b!7925754 () Bool)

(assert (=> b!7925754 (= e!4677640 (set.union (set.insert (h!80891 (Cons!74443 v!5484 Nil!74443)) (as set.empty (Set T!145774))) (content!15780 (t!390166 (Cons!74443 v!5484 Nil!74443)))))))

(assert (= (and d!2366888 c!1455158) b!7925753))

(assert (= (and d!2366888 (not c!1455158)) b!7925754))

(declare-fun m!8306420 () Bool)

(assert (=> b!7925754 m!8306420))

(declare-fun m!8306422 () Bool)

(assert (=> b!7925754 m!8306422))

(assert (=> d!2366744 d!2366888))

(declare-fun d!2366890 () Bool)

(assert (=> d!2366890 (= (inv!95695 (xs!19285 (left!56866 (right!57196 t!4440)))) (<= (size!43238 (innerList!15985 (xs!19285 (left!56866 (right!57196 t!4440))))) 2147483647))))

(declare-fun bs!1968774 () Bool)

(assert (= bs!1968774 d!2366890))

(declare-fun m!8306424 () Bool)

(assert (=> bs!1968774 m!8306424))

(assert (=> b!7925569 d!2366890))

(declare-fun b!7925755 () Bool)

(declare-fun res!3145105 () Bool)

(declare-fun e!4677642 () Bool)

(assert (=> b!7925755 (=> (not res!3145105) (not e!4677642))))

(assert (=> b!7925755 (= res!3145105 (isBalanced!4523 (right!57196 (right!57196 (left!56866 lt!2692717)))))))

(declare-fun b!7925756 () Bool)

(assert (=> b!7925756 (= e!4677642 (not (isEmpty!42767 (right!57196 (right!57196 (left!56866 lt!2692717))))))))

(declare-fun b!7925757 () Bool)

(declare-fun res!3145108 () Bool)

(assert (=> b!7925757 (=> (not res!3145108) (not e!4677642))))

(assert (=> b!7925757 (= res!3145108 (isBalanced!4523 (left!56866 (right!57196 (left!56866 lt!2692717)))))))

(declare-fun d!2366892 () Bool)

(declare-fun res!3145110 () Bool)

(declare-fun e!4677641 () Bool)

(assert (=> d!2366892 (=> res!3145110 e!4677641)))

(assert (=> d!2366892 (= res!3145110 (not (is-Node!15897 (right!57196 (left!56866 lt!2692717)))))))

(assert (=> d!2366892 (= (isBalanced!4523 (right!57196 (left!56866 lt!2692717))) e!4677641)))

(declare-fun b!7925758 () Bool)

(declare-fun res!3145107 () Bool)

(assert (=> b!7925758 (=> (not res!3145107) (not e!4677642))))

(assert (=> b!7925758 (= res!3145107 (not (isEmpty!42767 (left!56866 (right!57196 (left!56866 lt!2692717))))))))

(declare-fun b!7925759 () Bool)

(declare-fun res!3145106 () Bool)

(assert (=> b!7925759 (=> (not res!3145106) (not e!4677642))))

(assert (=> b!7925759 (= res!3145106 (<= (- (height!2212 (left!56866 (right!57196 (left!56866 lt!2692717)))) (height!2212 (right!57196 (right!57196 (left!56866 lt!2692717))))) 1))))

(declare-fun b!7925760 () Bool)

(assert (=> b!7925760 (= e!4677641 e!4677642)))

(declare-fun res!3145109 () Bool)

(assert (=> b!7925760 (=> (not res!3145109) (not e!4677642))))

(assert (=> b!7925760 (= res!3145109 (<= (- 1) (- (height!2212 (left!56866 (right!57196 (left!56866 lt!2692717)))) (height!2212 (right!57196 (right!57196 (left!56866 lt!2692717)))))))))

(assert (= (and d!2366892 (not res!3145110)) b!7925760))

(assert (= (and b!7925760 res!3145109) b!7925759))

(assert (= (and b!7925759 res!3145106) b!7925757))

(assert (= (and b!7925757 res!3145108) b!7925755))

(assert (= (and b!7925755 res!3145105) b!7925758))

(assert (= (and b!7925758 res!3145107) b!7925756))

(declare-fun m!8306426 () Bool)

(assert (=> b!7925756 m!8306426))

(declare-fun m!8306428 () Bool)

(assert (=> b!7925755 m!8306428))

(declare-fun m!8306430 () Bool)

(assert (=> b!7925760 m!8306430))

(declare-fun m!8306432 () Bool)

(assert (=> b!7925760 m!8306432))

(declare-fun m!8306434 () Bool)

(assert (=> b!7925757 m!8306434))

(declare-fun m!8306436 () Bool)

(assert (=> b!7925758 m!8306436))

(assert (=> b!7925759 m!8306430))

(assert (=> b!7925759 m!8306432))

(assert (=> b!7925456 d!2366892))

(declare-fun d!2366894 () Bool)

(declare-fun lt!2692801 () Int)

(assert (=> d!2366894 (>= lt!2692801 0)))

(declare-fun e!4677643 () Int)

(assert (=> d!2366894 (= lt!2692801 e!4677643)))

(declare-fun c!1455159 () Bool)

(assert (=> d!2366894 (= c!1455159 (is-Nil!74443 (t!390166 (innerList!15985 (xs!19285 t!4440)))))))

(assert (=> d!2366894 (= (size!43238 (t!390166 (innerList!15985 (xs!19285 t!4440)))) lt!2692801)))

(declare-fun b!7925761 () Bool)

(assert (=> b!7925761 (= e!4677643 0)))

(declare-fun b!7925762 () Bool)

(assert (=> b!7925762 (= e!4677643 (+ 1 (size!43238 (t!390166 (t!390166 (innerList!15985 (xs!19285 t!4440)))))))))

(assert (= (and d!2366894 c!1455159) b!7925761))

(assert (= (and d!2366894 (not c!1455159)) b!7925762))

(declare-fun m!8306438 () Bool)

(assert (=> b!7925762 m!8306438))

(assert (=> b!7925538 d!2366894))

(declare-fun d!2366896 () Bool)

(declare-fun lt!2692802 () Int)

(assert (=> d!2366896 (>= lt!2692802 0)))

(declare-fun e!4677644 () Int)

(assert (=> d!2366896 (= lt!2692802 e!4677644)))

(declare-fun c!1455160 () Bool)

(assert (=> d!2366896 (= c!1455160 (is-Nil!74443 (innerList!15985 (xs!19285 (right!57196 t!4440)))))))

(assert (=> d!2366896 (= (size!43238 (innerList!15985 (xs!19285 (right!57196 t!4440)))) lt!2692802)))

(declare-fun b!7925763 () Bool)

(assert (=> b!7925763 (= e!4677644 0)))

(declare-fun b!7925764 () Bool)

(assert (=> b!7925764 (= e!4677644 (+ 1 (size!43238 (t!390166 (innerList!15985 (xs!19285 (right!57196 t!4440)))))))))

(assert (= (and d!2366896 c!1455160) b!7925763))

(assert (= (and d!2366896 (not c!1455160)) b!7925764))

(declare-fun m!8306440 () Bool)

(assert (=> b!7925764 m!8306440))

(assert (=> d!2366766 d!2366896))

(declare-fun b!7925765 () Bool)

(declare-fun res!3145111 () Bool)

(declare-fun e!4677646 () Bool)

(assert (=> b!7925765 (=> (not res!3145111) (not e!4677646))))

(assert (=> b!7925765 (= res!3145111 (isBalanced!4523 (right!57196 (right!57196 (right!57196 lt!2692717)))))))

(declare-fun b!7925766 () Bool)

(assert (=> b!7925766 (= e!4677646 (not (isEmpty!42767 (right!57196 (right!57196 (right!57196 lt!2692717))))))))

(declare-fun b!7925767 () Bool)

(declare-fun res!3145114 () Bool)

(assert (=> b!7925767 (=> (not res!3145114) (not e!4677646))))

(assert (=> b!7925767 (= res!3145114 (isBalanced!4523 (left!56866 (right!57196 (right!57196 lt!2692717)))))))

(declare-fun d!2366898 () Bool)

(declare-fun res!3145116 () Bool)

(declare-fun e!4677645 () Bool)

(assert (=> d!2366898 (=> res!3145116 e!4677645)))

(assert (=> d!2366898 (= res!3145116 (not (is-Node!15897 (right!57196 (right!57196 lt!2692717)))))))

(assert (=> d!2366898 (= (isBalanced!4523 (right!57196 (right!57196 lt!2692717))) e!4677645)))

(declare-fun b!7925768 () Bool)

(declare-fun res!3145113 () Bool)

(assert (=> b!7925768 (=> (not res!3145113) (not e!4677646))))

(assert (=> b!7925768 (= res!3145113 (not (isEmpty!42767 (left!56866 (right!57196 (right!57196 lt!2692717))))))))

(declare-fun b!7925769 () Bool)

(declare-fun res!3145112 () Bool)

(assert (=> b!7925769 (=> (not res!3145112) (not e!4677646))))

(assert (=> b!7925769 (= res!3145112 (<= (- (height!2212 (left!56866 (right!57196 (right!57196 lt!2692717)))) (height!2212 (right!57196 (right!57196 (right!57196 lt!2692717))))) 1))))

(declare-fun b!7925770 () Bool)

(assert (=> b!7925770 (= e!4677645 e!4677646)))

(declare-fun res!3145115 () Bool)

(assert (=> b!7925770 (=> (not res!3145115) (not e!4677646))))

(assert (=> b!7925770 (= res!3145115 (<= (- 1) (- (height!2212 (left!56866 (right!57196 (right!57196 lt!2692717)))) (height!2212 (right!57196 (right!57196 (right!57196 lt!2692717)))))))))

(assert (= (and d!2366898 (not res!3145116)) b!7925770))

(assert (= (and b!7925770 res!3145115) b!7925769))

(assert (= (and b!7925769 res!3145112) b!7925767))

(assert (= (and b!7925767 res!3145114) b!7925765))

(assert (= (and b!7925765 res!3145111) b!7925768))

(assert (= (and b!7925768 res!3145113) b!7925766))

(declare-fun m!8306442 () Bool)

(assert (=> b!7925766 m!8306442))

(declare-fun m!8306444 () Bool)

(assert (=> b!7925765 m!8306444))

(declare-fun m!8306446 () Bool)

(assert (=> b!7925770 m!8306446))

(declare-fun m!8306448 () Bool)

(assert (=> b!7925770 m!8306448))

(declare-fun m!8306450 () Bool)

(assert (=> b!7925767 m!8306450))

(declare-fun m!8306452 () Bool)

(assert (=> b!7925768 m!8306452))

(assert (=> b!7925769 m!8306446))

(assert (=> b!7925769 m!8306448))

(assert (=> b!7925417 d!2366898))

(declare-fun d!2366900 () Bool)

(assert (=> d!2366900 (= (max!0 (height!2212 (left!56866 (left!56866 t!4440))) (height!2212 (right!57196 (left!56866 t!4440)))) (ite (< (height!2212 (left!56866 (left!56866 t!4440))) (height!2212 (right!57196 (left!56866 t!4440)))) (height!2212 (right!57196 (left!56866 t!4440))) (height!2212 (left!56866 (left!56866 t!4440)))))))

(assert (=> b!7925448 d!2366900))

(declare-fun d!2366902 () Bool)

(assert (=> d!2366902 (= (height!2212 (left!56866 (left!56866 t!4440))) (ite (is-Empty!15897 (left!56866 (left!56866 t!4440))) 0 (ite (is-Leaf!30227 (left!56866 (left!56866 t!4440))) 1 (cheight!16108 (left!56866 (left!56866 t!4440))))))))

(assert (=> b!7925448 d!2366902))

(declare-fun d!2366904 () Bool)

(assert (=> d!2366904 (= (height!2212 (right!57196 (left!56866 t!4440))) (ite (is-Empty!15897 (right!57196 (left!56866 t!4440))) 0 (ite (is-Leaf!30227 (right!57196 (left!56866 t!4440))) 1 (cheight!16108 (right!57196 (left!56866 t!4440))))))))

(assert (=> b!7925448 d!2366904))

(declare-fun d!2366906 () Bool)

(assert (=> d!2366906 (= (isEmpty!42769 (list!19404 (left!56866 t!4440))) (is-Nil!74443 (list!19404 (left!56866 t!4440))))))

(assert (=> d!2366738 d!2366906))

(assert (=> d!2366738 d!2366758))

(declare-fun d!2366908 () Bool)

(declare-fun lt!2692805 () Int)

(assert (=> d!2366908 (= lt!2692805 (size!43238 (list!19404 (left!56866 t!4440))))))

(assert (=> d!2366908 (= lt!2692805 (ite (is-Empty!15897 (left!56866 t!4440)) 0 (ite (is-Leaf!30227 (left!56866 t!4440)) (csize!32025 (left!56866 t!4440)) (csize!32024 (left!56866 t!4440)))))))

(assert (=> d!2366908 (= (size!43240 (left!56866 t!4440)) lt!2692805)))

(declare-fun bs!1968775 () Bool)

(assert (= bs!1968775 d!2366908))

(assert (=> bs!1968775 m!8305818))

(assert (=> bs!1968775 m!8305818))

(assert (=> bs!1968775 m!8306064))

(assert (=> d!2366738 d!2366908))

(declare-fun d!2366910 () Bool)

(declare-fun res!3145117 () Bool)

(declare-fun e!4677647 () Bool)

(assert (=> d!2366910 (=> (not res!3145117) (not e!4677647))))

(assert (=> d!2366910 (= res!3145117 (<= (size!43238 (list!19406 (xs!19285 (right!57196 (right!57196 t!4440))))) 512))))

(assert (=> d!2366910 (= (inv!95700 (right!57196 (right!57196 t!4440))) e!4677647)))

(declare-fun b!7925771 () Bool)

(declare-fun res!3145118 () Bool)

(assert (=> b!7925771 (=> (not res!3145118) (not e!4677647))))

(assert (=> b!7925771 (= res!3145118 (= (csize!32025 (right!57196 (right!57196 t!4440))) (size!43238 (list!19406 (xs!19285 (right!57196 (right!57196 t!4440)))))))))

(declare-fun b!7925772 () Bool)

(assert (=> b!7925772 (= e!4677647 (and (> (csize!32025 (right!57196 (right!57196 t!4440))) 0) (<= (csize!32025 (right!57196 (right!57196 t!4440))) 512)))))

(assert (= (and d!2366910 res!3145117) b!7925771))

(assert (= (and b!7925771 res!3145118) b!7925772))

(declare-fun m!8306454 () Bool)

(assert (=> d!2366910 m!8306454))

(assert (=> d!2366910 m!8306454))

(declare-fun m!8306456 () Bool)

(assert (=> d!2366910 m!8306456))

(assert (=> b!7925771 m!8306454))

(assert (=> b!7925771 m!8306454))

(assert (=> b!7925771 m!8306456))

(assert (=> b!7925544 d!2366910))

(declare-fun d!2366912 () Bool)

(declare-fun e!4677649 () Bool)

(assert (=> d!2366912 e!4677649))

(declare-fun res!3145119 () Bool)

(assert (=> d!2366912 (=> (not res!3145119) (not e!4677649))))

(declare-fun lt!2692806 () List!74567)

(assert (=> d!2366912 (= res!3145119 (= (content!15780 lt!2692806) (set.union (content!15780 (t!390166 (list!19404 t!4440))) (content!15780 (Cons!74443 v!5484 Nil!74443)))))))

(declare-fun e!4677648 () List!74567)

(assert (=> d!2366912 (= lt!2692806 e!4677648)))

(declare-fun c!1455161 () Bool)

(assert (=> d!2366912 (= c!1455161 (is-Nil!74443 (t!390166 (list!19404 t!4440))))))

(assert (=> d!2366912 (= (++!18256 (t!390166 (list!19404 t!4440)) (Cons!74443 v!5484 Nil!74443)) lt!2692806)))

(declare-fun b!7925774 () Bool)

(assert (=> b!7925774 (= e!4677648 (Cons!74443 (h!80891 (t!390166 (list!19404 t!4440))) (++!18256 (t!390166 (t!390166 (list!19404 t!4440))) (Cons!74443 v!5484 Nil!74443))))))

(declare-fun b!7925776 () Bool)

(assert (=> b!7925776 (= e!4677649 (or (not (= (Cons!74443 v!5484 Nil!74443) Nil!74443)) (= lt!2692806 (t!390166 (list!19404 t!4440)))))))

(declare-fun b!7925773 () Bool)

(assert (=> b!7925773 (= e!4677648 (Cons!74443 v!5484 Nil!74443))))

(declare-fun b!7925775 () Bool)

(declare-fun res!3145120 () Bool)

(assert (=> b!7925775 (=> (not res!3145120) (not e!4677649))))

(assert (=> b!7925775 (= res!3145120 (= (size!43238 lt!2692806) (+ (size!43238 (t!390166 (list!19404 t!4440))) (size!43238 (Cons!74443 v!5484 Nil!74443)))))))

(assert (= (and d!2366912 c!1455161) b!7925773))

(assert (= (and d!2366912 (not c!1455161)) b!7925774))

(assert (= (and d!2366912 res!3145119) b!7925775))

(assert (= (and b!7925775 res!3145120) b!7925776))

(declare-fun m!8306458 () Bool)

(assert (=> d!2366912 m!8306458))

(assert (=> d!2366912 m!8306004))

(assert (=> d!2366912 m!8306044))

(declare-fun m!8306460 () Bool)

(assert (=> b!7925774 m!8306460))

(declare-fun m!8306462 () Bool)

(assert (=> b!7925775 m!8306462))

(assert (=> b!7925775 m!8305998))

(assert (=> b!7925775 m!8306048))

(assert (=> b!7925467 d!2366912))

(declare-fun d!2366914 () Bool)

(declare-fun lt!2692807 () Int)

(assert (=> d!2366914 (>= lt!2692807 0)))

(declare-fun e!4677650 () Int)

(assert (=> d!2366914 (= lt!2692807 e!4677650)))

(declare-fun c!1455162 () Bool)

(assert (=> d!2366914 (= c!1455162 (is-Nil!74443 (t!390166 (list!19404 t!4440))))))

(assert (=> d!2366914 (= (size!43238 (t!390166 (list!19404 t!4440))) lt!2692807)))

(declare-fun b!7925777 () Bool)

(assert (=> b!7925777 (= e!4677650 0)))

(declare-fun b!7925778 () Bool)

(assert (=> b!7925778 (= e!4677650 (+ 1 (size!43238 (t!390166 (t!390166 (list!19404 t!4440))))))))

(assert (= (and d!2366914 c!1455162) b!7925777))

(assert (= (and d!2366914 (not c!1455162)) b!7925778))

(declare-fun m!8306464 () Bool)

(assert (=> b!7925778 m!8306464))

(assert (=> b!7925522 d!2366914))

(declare-fun d!2366916 () Bool)

(assert (=> d!2366916 (= (inv!95695 (xs!19285 (right!57196 (left!56866 t!4440)))) (<= (size!43238 (innerList!15985 (xs!19285 (right!57196 (left!56866 t!4440))))) 2147483647))))

(declare-fun bs!1968776 () Bool)

(assert (= bs!1968776 d!2366916))

(declare-fun m!8306466 () Bool)

(assert (=> bs!1968776 m!8306466))

(assert (=> b!7925565 d!2366916))

(declare-fun d!2366918 () Bool)

(assert (=> d!2366918 (= (height!2212 (left!56866 (left!56866 lt!2692717))) (ite (is-Empty!15897 (left!56866 (left!56866 lt!2692717))) 0 (ite (is-Leaf!30227 (left!56866 (left!56866 lt!2692717))) 1 (cheight!16108 (left!56866 (left!56866 lt!2692717))))))))

(assert (=> b!7925460 d!2366918))

(declare-fun d!2366920 () Bool)

(assert (=> d!2366920 (= (height!2212 (right!57196 (left!56866 lt!2692717))) (ite (is-Empty!15897 (right!57196 (left!56866 lt!2692717))) 0 (ite (is-Leaf!30227 (right!57196 (left!56866 lt!2692717))) 1 (cheight!16108 (right!57196 (left!56866 lt!2692717))))))))

(assert (=> b!7925460 d!2366920))

(declare-fun d!2366922 () Bool)

(declare-fun lt!2692808 () (_ BitVec 32))

(assert (=> d!2366922 (and (bvsle #b00000000000000000000000000000000 lt!2692808) (bvsle lt!2692808 #b01111111111111111111111111111111))))

(declare-fun e!4677651 () (_ BitVec 32))

(assert (=> d!2366922 (= lt!2692808 e!4677651)))

(declare-fun c!1455163 () Bool)

(assert (=> d!2366922 (= c!1455163 (is-Nil!74443 (t!390166 lt!2692734)))))

(assert (=> d!2366922 (= (isize!116 (t!390166 lt!2692734)) lt!2692808)))

(declare-fun b!7925779 () Bool)

(assert (=> b!7925779 (= e!4677651 #b00000000000000000000000000000000)))

(declare-fun b!7925780 () Bool)

(declare-fun lt!2692809 () (_ BitVec 32))

(assert (=> b!7925780 (= e!4677651 (ite (= lt!2692809 #b01111111111111111111111111111111) lt!2692809 (bvadd #b00000000000000000000000000000001 lt!2692809)))))

(assert (=> b!7925780 (= lt!2692809 (isize!116 (t!390166 (t!390166 lt!2692734))))))

(assert (= (and d!2366922 c!1455163) b!7925779))

(assert (= (and d!2366922 (not c!1455163)) b!7925780))

(declare-fun m!8306468 () Bool)

(assert (=> b!7925780 m!8306468))

(assert (=> b!7925428 d!2366922))

(assert (=> b!7925422 d!2366870))

(assert (=> b!7925422 d!2366872))

(declare-fun d!2366924 () Bool)

(declare-fun c!1455164 () Bool)

(assert (=> d!2366924 (= c!1455164 (is-Nil!74443 (t!390166 (list!19404 t!4440))))))

(declare-fun e!4677652 () (Set T!145774))

(assert (=> d!2366924 (= (content!15780 (t!390166 (list!19404 t!4440))) e!4677652)))

(declare-fun b!7925781 () Bool)

(assert (=> b!7925781 (= e!4677652 (as set.empty (Set T!145774)))))

(declare-fun b!7925782 () Bool)

(assert (=> b!7925782 (= e!4677652 (set.union (set.insert (h!80891 (t!390166 (list!19404 t!4440))) (as set.empty (Set T!145774))) (content!15780 (t!390166 (t!390166 (list!19404 t!4440))))))))

(assert (= (and d!2366924 c!1455164) b!7925781))

(assert (= (and d!2366924 (not c!1455164)) b!7925782))

(declare-fun m!8306470 () Bool)

(assert (=> b!7925782 m!8306470))

(declare-fun m!8306472 () Bool)

(assert (=> b!7925782 m!8306472))

(assert (=> b!7925491 d!2366924))

(declare-fun d!2366926 () Bool)

(declare-fun lt!2692810 () Int)

(assert (=> d!2366926 (= lt!2692810 (size!43238 (list!19404 (left!56866 (right!57196 t!4440)))))))

(assert (=> d!2366926 (= lt!2692810 (ite (is-Empty!15897 (left!56866 (right!57196 t!4440))) 0 (ite (is-Leaf!30227 (left!56866 (right!57196 t!4440))) (csize!32025 (left!56866 (right!57196 t!4440))) (csize!32024 (left!56866 (right!57196 t!4440))))))))

(assert (=> d!2366926 (= (size!43240 (left!56866 (right!57196 t!4440))) lt!2692810)))

(declare-fun bs!1968777 () Bool)

(assert (= bs!1968777 d!2366926))

(assert (=> bs!1968777 m!8306074))

(assert (=> bs!1968777 m!8306074))

(declare-fun m!8306474 () Bool)

(assert (=> bs!1968777 m!8306474))

(assert (=> d!2366778 d!2366926))

(declare-fun d!2366928 () Bool)

(declare-fun lt!2692811 () Int)

(assert (=> d!2366928 (= lt!2692811 (size!43238 (list!19404 (right!57196 (right!57196 t!4440)))))))

(assert (=> d!2366928 (= lt!2692811 (ite (is-Empty!15897 (right!57196 (right!57196 t!4440))) 0 (ite (is-Leaf!30227 (right!57196 (right!57196 t!4440))) (csize!32025 (right!57196 (right!57196 t!4440))) (csize!32024 (right!57196 (right!57196 t!4440))))))))

(assert (=> d!2366928 (= (size!43240 (right!57196 (right!57196 t!4440))) lt!2692811)))

(declare-fun bs!1968778 () Bool)

(assert (= bs!1968778 d!2366928))

(assert (=> bs!1968778 m!8306076))

(assert (=> bs!1968778 m!8306076))

(declare-fun m!8306476 () Bool)

(assert (=> bs!1968778 m!8306476))

(assert (=> d!2366778 d!2366928))

(declare-fun d!2366930 () Bool)

(assert (=> d!2366930 (= (isEmpty!42769 (list!19404 (left!56866 lt!2692717))) (is-Nil!74443 (list!19404 (left!56866 lt!2692717))))))

(assert (=> d!2366742 d!2366930))

(assert (=> d!2366742 d!2366774))

(declare-fun d!2366932 () Bool)

(declare-fun lt!2692812 () Int)

(assert (=> d!2366932 (= lt!2692812 (size!43238 (list!19404 (left!56866 lt!2692717))))))

(assert (=> d!2366932 (= lt!2692812 (ite (is-Empty!15897 (left!56866 lt!2692717)) 0 (ite (is-Leaf!30227 (left!56866 lt!2692717)) (csize!32025 (left!56866 lt!2692717)) (csize!32024 (left!56866 lt!2692717)))))))

(assert (=> d!2366932 (= (size!43240 (left!56866 lt!2692717)) lt!2692812)))

(declare-fun bs!1968779 () Bool)

(assert (= bs!1968779 d!2366932))

(assert (=> bs!1968779 m!8305792))

(assert (=> bs!1968779 m!8305792))

(assert (=> bs!1968779 m!8306102))

(assert (=> d!2366742 d!2366932))

(declare-fun d!2366934 () Bool)

(declare-fun c!1455165 () Bool)

(assert (=> d!2366934 (= c!1455165 (is-Node!15897 (left!56866 (right!57196 (right!57196 t!4440)))))))

(declare-fun e!4677653 () Bool)

(assert (=> d!2366934 (= (inv!95696 (left!56866 (right!57196 (right!57196 t!4440)))) e!4677653)))

(declare-fun b!7925783 () Bool)

(assert (=> b!7925783 (= e!4677653 (inv!95699 (left!56866 (right!57196 (right!57196 t!4440)))))))

(declare-fun b!7925784 () Bool)

(declare-fun e!4677654 () Bool)

(assert (=> b!7925784 (= e!4677653 e!4677654)))

(declare-fun res!3145121 () Bool)

(assert (=> b!7925784 (= res!3145121 (not (is-Leaf!30227 (left!56866 (right!57196 (right!57196 t!4440))))))))

(assert (=> b!7925784 (=> res!3145121 e!4677654)))

(declare-fun b!7925785 () Bool)

(assert (=> b!7925785 (= e!4677654 (inv!95700 (left!56866 (right!57196 (right!57196 t!4440)))))))

(assert (= (and d!2366934 c!1455165) b!7925783))

(assert (= (and d!2366934 (not c!1455165)) b!7925784))

(assert (= (and b!7925784 (not res!3145121)) b!7925785))

(declare-fun m!8306478 () Bool)

(assert (=> b!7925783 m!8306478))

(declare-fun m!8306480 () Bool)

(assert (=> b!7925785 m!8306480))

(assert (=> b!7925571 d!2366934))

(declare-fun d!2366936 () Bool)

(declare-fun c!1455166 () Bool)

(assert (=> d!2366936 (= c!1455166 (is-Node!15897 (right!57196 (right!57196 (right!57196 t!4440)))))))

(declare-fun e!4677655 () Bool)

(assert (=> d!2366936 (= (inv!95696 (right!57196 (right!57196 (right!57196 t!4440)))) e!4677655)))

(declare-fun b!7925786 () Bool)

(assert (=> b!7925786 (= e!4677655 (inv!95699 (right!57196 (right!57196 (right!57196 t!4440)))))))

(declare-fun b!7925787 () Bool)

(declare-fun e!4677656 () Bool)

(assert (=> b!7925787 (= e!4677655 e!4677656)))

(declare-fun res!3145122 () Bool)

(assert (=> b!7925787 (= res!3145122 (not (is-Leaf!30227 (right!57196 (right!57196 (right!57196 t!4440))))))))

(assert (=> b!7925787 (=> res!3145122 e!4677656)))

(declare-fun b!7925788 () Bool)

(assert (=> b!7925788 (= e!4677656 (inv!95700 (right!57196 (right!57196 (right!57196 t!4440)))))))

(assert (= (and d!2366936 c!1455166) b!7925786))

(assert (= (and d!2366936 (not c!1455166)) b!7925787))

(assert (= (and b!7925787 (not res!3145122)) b!7925788))

(declare-fun m!8306482 () Bool)

(assert (=> b!7925786 m!8306482))

(declare-fun m!8306484 () Bool)

(assert (=> b!7925788 m!8306484))

(assert (=> b!7925571 d!2366936))

(declare-fun d!2366938 () Bool)

(assert (=> d!2366938 (= (isEmpty!42769 (list!19404 (right!57196 t!4440))) (is-Nil!74443 (list!19404 (right!57196 t!4440))))))

(assert (=> d!2366708 d!2366938))

(assert (=> d!2366708 d!2366760))

(declare-fun d!2366940 () Bool)

(declare-fun lt!2692813 () Int)

(assert (=> d!2366940 (= lt!2692813 (size!43238 (list!19404 (right!57196 t!4440))))))

(assert (=> d!2366940 (= lt!2692813 (ite (is-Empty!15897 (right!57196 t!4440)) 0 (ite (is-Leaf!30227 (right!57196 t!4440)) (csize!32025 (right!57196 t!4440)) (csize!32024 (right!57196 t!4440)))))))

(assert (=> d!2366940 (= (size!43240 (right!57196 t!4440)) lt!2692813)))

(declare-fun bs!1968780 () Bool)

(assert (= bs!1968780 d!2366940))

(assert (=> bs!1968780 m!8305820))

(assert (=> bs!1968780 m!8305820))

(assert (=> bs!1968780 m!8306066))

(assert (=> d!2366708 d!2366940))

(assert (=> d!2366732 d!2366908))

(assert (=> d!2366732 d!2366940))

(declare-fun d!2366942 () Bool)

(declare-fun lt!2692814 () Bool)

(assert (=> d!2366942 (= lt!2692814 (isEmpty!42769 (list!19404 (left!56866 (left!56866 t!4440)))))))

(assert (=> d!2366942 (= lt!2692814 (= (size!43240 (left!56866 (left!56866 t!4440))) 0))))

(assert (=> d!2366942 (= (isEmpty!42767 (left!56866 (left!56866 t!4440))) lt!2692814)))

(declare-fun bs!1968781 () Bool)

(assert (= bs!1968781 d!2366942))

(assert (=> bs!1968781 m!8306068))

(assert (=> bs!1968781 m!8306068))

(declare-fun m!8306486 () Bool)

(assert (=> bs!1968781 m!8306486))

(assert (=> bs!1968781 m!8305948))

(assert (=> b!7925500 d!2366942))

(declare-fun d!2366944 () Bool)

(assert (=> d!2366944 (= (height!2212 (left!56866 (right!57196 t!4440))) (ite (is-Empty!15897 (left!56866 (right!57196 t!4440))) 0 (ite (is-Leaf!30227 (left!56866 (right!57196 t!4440))) 1 (cheight!16108 (left!56866 (right!57196 t!4440))))))))

(assert (=> b!7925454 d!2366944))

(declare-fun d!2366946 () Bool)

(assert (=> d!2366946 (= (height!2212 (right!57196 (right!57196 t!4440))) (ite (is-Empty!15897 (right!57196 (right!57196 t!4440))) 0 (ite (is-Leaf!30227 (right!57196 (right!57196 t!4440))) 1 (cheight!16108 (right!57196 (right!57196 t!4440))))))))

(assert (=> b!7925454 d!2366946))

(declare-fun d!2366948 () Bool)

(declare-fun e!4677657 () Bool)

(assert (=> d!2366948 e!4677657))

(declare-fun res!3145123 () Bool)

(assert (=> d!2366948 (=> (not res!3145123) (not e!4677657))))

(declare-fun lt!2692815 () List!74567)

(assert (=> d!2366948 (= res!3145123 (= (content!15780 lt!2692815) (ite (<= (- 1 1) 0) (as set.empty (Set T!145774)) (set.insert v!5484 (as set.empty (Set T!145774))))))))

(declare-fun e!4677658 () List!74567)

(assert (=> d!2366948 (= lt!2692815 e!4677658)))

(declare-fun c!1455167 () Bool)

(assert (=> d!2366948 (= c!1455167 (<= (- 1 1) 0))))

(assert (=> d!2366948 (= (fill!276 (- 1 1) v!5484) lt!2692815)))

(declare-fun b!7925789 () Bool)

(assert (=> b!7925789 (= e!4677658 Nil!74443)))

(declare-fun b!7925790 () Bool)

(assert (=> b!7925790 (= e!4677658 (Cons!74443 v!5484 (fill!276 (- (- 1 1) 1) v!5484)))))

(declare-fun b!7925791 () Bool)

(assert (=> b!7925791 (= e!4677657 (= (size!43238 lt!2692815) (ite (<= (- 1 1) 0) 0 (- 1 1))))))

(assert (= (and d!2366948 c!1455167) b!7925789))

(assert (= (and d!2366948 (not c!1455167)) b!7925790))

(assert (= (and d!2366948 res!3145123) b!7925791))

(declare-fun m!8306488 () Bool)

(assert (=> d!2366948 m!8306488))

(assert (=> d!2366948 m!8305816))

(declare-fun m!8306490 () Bool)

(assert (=> b!7925790 m!8306490))

(declare-fun m!8306492 () Bool)

(assert (=> b!7925791 m!8306492))

(assert (=> b!7925479 d!2366948))

(declare-fun d!2366950 () Bool)

(declare-fun lt!2692816 () (_ BitVec 32))

(assert (=> d!2366950 (and (bvsle #b00000000000000000000000000000000 lt!2692816) (bvsle lt!2692816 #b01111111111111111111111111111111))))

(declare-fun e!4677659 () (_ BitVec 32))

(assert (=> d!2366950 (= lt!2692816 e!4677659)))

(declare-fun c!1455168 () Bool)

(assert (=> d!2366950 (= c!1455168 (is-Nil!74443 (t!390166 (list!19404 t!4440))))))

(assert (=> d!2366950 (= (isize!116 (t!390166 (list!19404 t!4440))) lt!2692816)))

(declare-fun b!7925792 () Bool)

(assert (=> b!7925792 (= e!4677659 #b00000000000000000000000000000000)))

(declare-fun b!7925793 () Bool)

(declare-fun lt!2692817 () (_ BitVec 32))

(assert (=> b!7925793 (= e!4677659 (ite (= lt!2692817 #b01111111111111111111111111111111) lt!2692817 (bvadd #b00000000000000000000000000000001 lt!2692817)))))

(assert (=> b!7925793 (= lt!2692817 (isize!116 (t!390166 (t!390166 (list!19404 t!4440)))))))

(assert (= (and d!2366950 c!1455168) b!7925792))

(assert (= (and d!2366950 (not c!1455168)) b!7925793))

(declare-fun m!8306494 () Bool)

(assert (=> b!7925793 m!8306494))

(assert (=> b!7925464 d!2366950))

(declare-fun d!2366952 () Bool)

(declare-fun e!4677661 () Bool)

(assert (=> d!2366952 e!4677661))

(declare-fun res!3145124 () Bool)

(assert (=> d!2366952 (=> (not res!3145124) (not e!4677661))))

(declare-fun lt!2692818 () List!74567)

(assert (=> d!2366952 (= res!3145124 (= (content!15780 lt!2692818) (set.union (content!15780 (t!390166 (list!19404 (left!56866 lt!2692717)))) (content!15780 (list!19404 (right!57196 lt!2692717))))))))

(declare-fun e!4677660 () List!74567)

(assert (=> d!2366952 (= lt!2692818 e!4677660)))

(declare-fun c!1455169 () Bool)

(assert (=> d!2366952 (= c!1455169 (is-Nil!74443 (t!390166 (list!19404 (left!56866 lt!2692717)))))))

(assert (=> d!2366952 (= (++!18256 (t!390166 (list!19404 (left!56866 lt!2692717))) (list!19404 (right!57196 lt!2692717))) lt!2692818)))

(declare-fun b!7925795 () Bool)

(assert (=> b!7925795 (= e!4677660 (Cons!74443 (h!80891 (t!390166 (list!19404 (left!56866 lt!2692717)))) (++!18256 (t!390166 (t!390166 (list!19404 (left!56866 lt!2692717)))) (list!19404 (right!57196 lt!2692717)))))))

(declare-fun b!7925797 () Bool)

(assert (=> b!7925797 (= e!4677661 (or (not (= (list!19404 (right!57196 lt!2692717)) Nil!74443)) (= lt!2692818 (t!390166 (list!19404 (left!56866 lt!2692717))))))))

(declare-fun b!7925794 () Bool)

(assert (=> b!7925794 (= e!4677660 (list!19404 (right!57196 lt!2692717)))))

(declare-fun b!7925796 () Bool)

(declare-fun res!3145125 () Bool)

(assert (=> b!7925796 (=> (not res!3145125) (not e!4677661))))

(assert (=> b!7925796 (= res!3145125 (= (size!43238 lt!2692818) (+ (size!43238 (t!390166 (list!19404 (left!56866 lt!2692717)))) (size!43238 (list!19404 (right!57196 lt!2692717))))))))

(assert (= (and d!2366952 c!1455169) b!7925794))

(assert (= (and d!2366952 (not c!1455169)) b!7925795))

(assert (= (and d!2366952 res!3145124) b!7925796))

(assert (= (and b!7925796 res!3145125) b!7925797))

(declare-fun m!8306496 () Bool)

(assert (=> d!2366952 m!8306496))

(declare-fun m!8306498 () Bool)

(assert (=> d!2366952 m!8306498))

(assert (=> d!2366952 m!8305794))

(assert (=> d!2366952 m!8306096))

(assert (=> b!7925795 m!8305794))

(declare-fun m!8306500 () Bool)

(assert (=> b!7925795 m!8306500))

(declare-fun m!8306502 () Bool)

(assert (=> b!7925796 m!8306502))

(declare-fun m!8306504 () Bool)

(assert (=> b!7925796 m!8306504))

(assert (=> b!7925796 m!8305794))

(assert (=> b!7925796 m!8306104))

(assert (=> b!7925546 d!2366952))

(declare-fun d!2366954 () Bool)

(declare-fun lt!2692819 () Int)

(assert (=> d!2366954 (= lt!2692819 (size!43238 (list!19404 (left!56866 (left!56866 t!4440)))))))

(assert (=> d!2366954 (= lt!2692819 (ite (is-Empty!15897 (left!56866 (left!56866 t!4440))) 0 (ite (is-Leaf!30227 (left!56866 (left!56866 t!4440))) (csize!32025 (left!56866 (left!56866 t!4440))) (csize!32024 (left!56866 (left!56866 t!4440))))))))

(assert (=> d!2366954 (= (size!43240 (left!56866 (left!56866 t!4440))) lt!2692819)))

(declare-fun bs!1968782 () Bool)

(assert (= bs!1968782 d!2366954))

(assert (=> bs!1968782 m!8306068))

(assert (=> bs!1968782 m!8306068))

(declare-fun m!8306506 () Bool)

(assert (=> bs!1968782 m!8306506))

(assert (=> d!2366706 d!2366954))

(declare-fun d!2366956 () Bool)

(declare-fun lt!2692820 () Int)

(assert (=> d!2366956 (= lt!2692820 (size!43238 (list!19404 (right!57196 (left!56866 t!4440)))))))

(assert (=> d!2366956 (= lt!2692820 (ite (is-Empty!15897 (right!57196 (left!56866 t!4440))) 0 (ite (is-Leaf!30227 (right!57196 (left!56866 t!4440))) (csize!32025 (right!57196 (left!56866 t!4440))) (csize!32024 (right!57196 (left!56866 t!4440))))))))

(assert (=> d!2366956 (= (size!43240 (right!57196 (left!56866 t!4440))) lt!2692820)))

(declare-fun bs!1968783 () Bool)

(assert (= bs!1968783 d!2366956))

(assert (=> bs!1968783 m!8306070))

(assert (=> bs!1968783 m!8306070))

(declare-fun m!8306508 () Bool)

(assert (=> bs!1968783 m!8306508))

(assert (=> d!2366706 d!2366956))

(declare-fun d!2366958 () Bool)

(assert (=> d!2366958 (= (list!19406 (xs!19285 (left!56866 lt!2692717))) (innerList!15985 (xs!19285 (left!56866 lt!2692717))))))

(assert (=> b!7925551 d!2366958))

(declare-fun d!2366960 () Bool)

(declare-fun lt!2692821 () Bool)

(assert (=> d!2366960 (= lt!2692821 (isEmpty!42769 (list!19404 (right!57196 (left!56866 lt!2692717)))))))

(assert (=> d!2366960 (= lt!2692821 (= (size!43240 (right!57196 (left!56866 lt!2692717))) 0))))

(assert (=> d!2366960 (= (isEmpty!42767 (right!57196 (left!56866 lt!2692717))) lt!2692821)))

(declare-fun bs!1968784 () Bool)

(assert (= bs!1968784 d!2366960))

(assert (=> bs!1968784 m!8306108))

(assert (=> bs!1968784 m!8306108))

(declare-fun m!8306510 () Bool)

(assert (=> bs!1968784 m!8306510))

(declare-fun m!8306512 () Bool)

(assert (=> bs!1968784 m!8306512))

(assert (=> b!7925457 d!2366960))

(assert (=> b!7925461 d!2366918))

(assert (=> b!7925461 d!2366920))

(declare-fun d!2366962 () Bool)

(assert (=> d!2366962 (= (list!19406 (xs!19285 (right!57196 t!4440))) (innerList!15985 (xs!19285 (right!57196 t!4440))))))

(assert (=> b!7925535 d!2366962))

(declare-fun d!2366964 () Bool)

(declare-fun c!1455170 () Bool)

(assert (=> d!2366964 (= c!1455170 (is-Nil!74443 lt!2692751))))

(declare-fun e!4677662 () (Set T!145774))

(assert (=> d!2366964 (= (content!15780 lt!2692751) e!4677662)))

(declare-fun b!7925798 () Bool)

(assert (=> b!7925798 (= e!4677662 (as set.empty (Set T!145774)))))

(declare-fun b!7925799 () Bool)

(assert (=> b!7925799 (= e!4677662 (set.union (set.insert (h!80891 lt!2692751) (as set.empty (Set T!145774))) (content!15780 (t!390166 lt!2692751))))))

(assert (= (and d!2366964 c!1455170) b!7925798))

(assert (= (and d!2366964 (not c!1455170)) b!7925799))

(declare-fun m!8306514 () Bool)

(assert (=> b!7925799 m!8306514))

(declare-fun m!8306516 () Bool)

(assert (=> b!7925799 m!8306516))

(assert (=> b!7925468 d!2366964))

(assert (=> b!7925468 d!2366924))

(declare-fun d!2366966 () Bool)

(declare-fun lt!2692822 () Bool)

(assert (=> d!2366966 (= lt!2692822 (isEmpty!42769 (list!19404 (right!57196 (right!57196 lt!2692717)))))))

(assert (=> d!2366966 (= lt!2692822 (= (size!43240 (right!57196 (right!57196 lt!2692717))) 0))))

(assert (=> d!2366966 (= (isEmpty!42767 (right!57196 (right!57196 lt!2692717))) lt!2692822)))

(declare-fun bs!1968785 () Bool)

(assert (= bs!1968785 d!2366966))

(assert (=> bs!1968785 m!8306116))

(assert (=> bs!1968785 m!8306116))

(declare-fun m!8306518 () Bool)

(assert (=> bs!1968785 m!8306518))

(declare-fun m!8306520 () Bool)

(assert (=> bs!1968785 m!8306520))

(assert (=> b!7925418 d!2366966))

(declare-fun d!2366968 () Bool)

(declare-fun res!3145126 () Bool)

(declare-fun e!4677663 () Bool)

(assert (=> d!2366968 (=> (not res!3145126) (not e!4677663))))

(assert (=> d!2366968 (= res!3145126 (= (csize!32024 (right!57196 (left!56866 t!4440))) (+ (size!43240 (left!56866 (right!57196 (left!56866 t!4440)))) (size!43240 (right!57196 (right!57196 (left!56866 t!4440)))))))))

(assert (=> d!2366968 (= (inv!95699 (right!57196 (left!56866 t!4440))) e!4677663)))

(declare-fun b!7925800 () Bool)

(declare-fun res!3145127 () Bool)

(assert (=> b!7925800 (=> (not res!3145127) (not e!4677663))))

(assert (=> b!7925800 (= res!3145127 (and (not (= (left!56866 (right!57196 (left!56866 t!4440))) Empty!15897)) (not (= (right!57196 (right!57196 (left!56866 t!4440))) Empty!15897))))))

(declare-fun b!7925801 () Bool)

(declare-fun res!3145128 () Bool)

(assert (=> b!7925801 (=> (not res!3145128) (not e!4677663))))

(assert (=> b!7925801 (= res!3145128 (= (cheight!16108 (right!57196 (left!56866 t!4440))) (+ (max!0 (height!2212 (left!56866 (right!57196 (left!56866 t!4440)))) (height!2212 (right!57196 (right!57196 (left!56866 t!4440))))) 1)))))

(declare-fun b!7925802 () Bool)

(assert (=> b!7925802 (= e!4677663 (<= 0 (cheight!16108 (right!57196 (left!56866 t!4440)))))))

(assert (= (and d!2366968 res!3145126) b!7925800))

(assert (= (and b!7925800 res!3145127) b!7925801))

(assert (= (and b!7925801 res!3145128) b!7925802))

(declare-fun m!8306522 () Bool)

(assert (=> d!2366968 m!8306522))

(declare-fun m!8306524 () Bool)

(assert (=> d!2366968 m!8306524))

(declare-fun m!8306526 () Bool)

(assert (=> b!7925801 m!8306526))

(declare-fun m!8306528 () Bool)

(assert (=> b!7925801 m!8306528))

(assert (=> b!7925801 m!8306526))

(assert (=> b!7925801 m!8306528))

(declare-fun m!8306530 () Bool)

(assert (=> b!7925801 m!8306530))

(assert (=> b!7925432 d!2366968))

(assert (=> b!7925336 d!2366700))

(assert (=> b!7925336 d!2366702))

(declare-fun d!2366970 () Bool)

(declare-fun c!1455171 () Bool)

(assert (=> d!2366970 (= c!1455171 (is-Node!15897 (left!56866 (left!56866 (left!56866 t!4440)))))))

(declare-fun e!4677664 () Bool)

(assert (=> d!2366970 (= (inv!95696 (left!56866 (left!56866 (left!56866 t!4440)))) e!4677664)))

(declare-fun b!7925803 () Bool)

(assert (=> b!7925803 (= e!4677664 (inv!95699 (left!56866 (left!56866 (left!56866 t!4440)))))))

(declare-fun b!7925804 () Bool)

(declare-fun e!4677665 () Bool)

(assert (=> b!7925804 (= e!4677664 e!4677665)))

(declare-fun res!3145129 () Bool)

(assert (=> b!7925804 (= res!3145129 (not (is-Leaf!30227 (left!56866 (left!56866 (left!56866 t!4440))))))))

(assert (=> b!7925804 (=> res!3145129 e!4677665)))

(declare-fun b!7925805 () Bool)

(assert (=> b!7925805 (= e!4677665 (inv!95700 (left!56866 (left!56866 (left!56866 t!4440)))))))

(assert (= (and d!2366970 c!1455171) b!7925803))

(assert (= (and d!2366970 (not c!1455171)) b!7925804))

(assert (= (and b!7925804 (not res!3145129)) b!7925805))

(declare-fun m!8306532 () Bool)

(assert (=> b!7925803 m!8306532))

(declare-fun m!8306534 () Bool)

(assert (=> b!7925805 m!8306534))

(assert (=> b!7925561 d!2366970))

(declare-fun d!2366972 () Bool)

(declare-fun c!1455172 () Bool)

(assert (=> d!2366972 (= c!1455172 (is-Node!15897 (right!57196 (left!56866 (left!56866 t!4440)))))))

(declare-fun e!4677666 () Bool)

(assert (=> d!2366972 (= (inv!95696 (right!57196 (left!56866 (left!56866 t!4440)))) e!4677666)))

(declare-fun b!7925806 () Bool)

(assert (=> b!7925806 (= e!4677666 (inv!95699 (right!57196 (left!56866 (left!56866 t!4440)))))))

(declare-fun b!7925807 () Bool)

(declare-fun e!4677667 () Bool)

(assert (=> b!7925807 (= e!4677666 e!4677667)))

(declare-fun res!3145130 () Bool)

(assert (=> b!7925807 (= res!3145130 (not (is-Leaf!30227 (right!57196 (left!56866 (left!56866 t!4440))))))))

(assert (=> b!7925807 (=> res!3145130 e!4677667)))

(declare-fun b!7925808 () Bool)

(assert (=> b!7925808 (= e!4677667 (inv!95700 (right!57196 (left!56866 (left!56866 t!4440)))))))

(assert (= (and d!2366972 c!1455172) b!7925806))

(assert (= (and d!2366972 (not c!1455172)) b!7925807))

(assert (= (and b!7925807 (not res!3145130)) b!7925808))

(declare-fun m!8306536 () Bool)

(assert (=> b!7925806 m!8306536))

(declare-fun m!8306538 () Bool)

(assert (=> b!7925808 m!8306538))

(assert (=> b!7925561 d!2366972))

(assert (=> b!7925471 d!2366950))

(declare-fun d!2366974 () Bool)

(assert (=> d!2366974 (= (list!19406 (xs!19285 (left!56866 t!4440))) (innerList!15985 (xs!19285 (left!56866 t!4440))))))

(assert (=> b!7925531 d!2366974))

(declare-fun d!2366976 () Bool)

(declare-fun lt!2692823 () Int)

(assert (=> d!2366976 (>= lt!2692823 0)))

(declare-fun e!4677668 () Int)

(assert (=> d!2366976 (= lt!2692823 e!4677668)))

(declare-fun c!1455173 () Bool)

(assert (=> d!2366976 (= c!1455173 (is-Nil!74443 (list!19406 (xs!19285 t!4440))))))

(assert (=> d!2366976 (= (size!43238 (list!19406 (xs!19285 t!4440))) lt!2692823)))

(declare-fun b!7925809 () Bool)

(assert (=> b!7925809 (= e!4677668 0)))

(declare-fun b!7925810 () Bool)

(assert (=> b!7925810 (= e!4677668 (+ 1 (size!43238 (t!390166 (list!19406 (xs!19285 t!4440))))))))

(assert (= (and d!2366976 c!1455173) b!7925809))

(assert (= (and d!2366976 (not c!1455173)) b!7925810))

(declare-fun m!8306540 () Bool)

(assert (=> b!7925810 m!8306540))

(assert (=> b!7925523 d!2366976))

(assert (=> b!7925523 d!2366734))

(declare-fun d!2366978 () Bool)

(assert (=> d!2366978 (= (inv!95695 (xs!19285 (right!57196 (right!57196 t!4440)))) (<= (size!43238 (innerList!15985 (xs!19285 (right!57196 (right!57196 t!4440))))) 2147483647))))

(declare-fun bs!1968786 () Bool)

(assert (= bs!1968786 d!2366978))

(declare-fun m!8306542 () Bool)

(assert (=> bs!1968786 m!8306542))

(assert (=> b!7925572 d!2366978))

(declare-fun d!2366980 () Bool)

(declare-fun c!1455174 () Bool)

(assert (=> d!2366980 (= c!1455174 (is-Nil!74443 lt!2692768))))

(declare-fun e!4677669 () (Set T!145774))

(assert (=> d!2366980 (= (content!15780 lt!2692768) e!4677669)))

(declare-fun b!7925811 () Bool)

(assert (=> b!7925811 (= e!4677669 (as set.empty (Set T!145774)))))

(declare-fun b!7925812 () Bool)

(assert (=> b!7925812 (= e!4677669 (set.union (set.insert (h!80891 lt!2692768) (as set.empty (Set T!145774))) (content!15780 (t!390166 lt!2692768))))))

(assert (= (and d!2366980 c!1455174) b!7925811))

(assert (= (and d!2366980 (not c!1455174)) b!7925812))

(declare-fun m!8306544 () Bool)

(assert (=> b!7925812 m!8306544))

(declare-fun m!8306546 () Bool)

(assert (=> b!7925812 m!8306546))

(assert (=> d!2366772 d!2366980))

(declare-fun d!2366982 () Bool)

(declare-fun c!1455175 () Bool)

(assert (=> d!2366982 (= c!1455175 (is-Nil!74443 (list!19404 (left!56866 lt!2692717))))))

(declare-fun e!4677670 () (Set T!145774))

(assert (=> d!2366982 (= (content!15780 (list!19404 (left!56866 lt!2692717))) e!4677670)))

(declare-fun b!7925813 () Bool)

(assert (=> b!7925813 (= e!4677670 (as set.empty (Set T!145774)))))

(declare-fun b!7925814 () Bool)

(assert (=> b!7925814 (= e!4677670 (set.union (set.insert (h!80891 (list!19404 (left!56866 lt!2692717))) (as set.empty (Set T!145774))) (content!15780 (t!390166 (list!19404 (left!56866 lt!2692717))))))))

(assert (= (and d!2366982 c!1455175) b!7925813))

(assert (= (and d!2366982 (not c!1455175)) b!7925814))

(declare-fun m!8306548 () Bool)

(assert (=> b!7925814 m!8306548))

(assert (=> b!7925814 m!8306498))

(assert (=> d!2366772 d!2366982))

(declare-fun d!2366984 () Bool)

(declare-fun c!1455176 () Bool)

(assert (=> d!2366984 (= c!1455176 (is-Nil!74443 (list!19404 (right!57196 lt!2692717))))))

(declare-fun e!4677671 () (Set T!145774))

(assert (=> d!2366984 (= (content!15780 (list!19404 (right!57196 lt!2692717))) e!4677671)))

(declare-fun b!7925815 () Bool)

(assert (=> b!7925815 (= e!4677671 (as set.empty (Set T!145774)))))

(declare-fun b!7925816 () Bool)

(assert (=> b!7925816 (= e!4677671 (set.union (set.insert (h!80891 (list!19404 (right!57196 lt!2692717))) (as set.empty (Set T!145774))) (content!15780 (t!390166 (list!19404 (right!57196 lt!2692717))))))))

(assert (= (and d!2366984 c!1455176) b!7925815))

(assert (= (and d!2366984 (not c!1455176)) b!7925816))

(declare-fun m!8306550 () Bool)

(assert (=> b!7925816 m!8306550))

(declare-fun m!8306552 () Bool)

(assert (=> b!7925816 m!8306552))

(assert (=> d!2366772 d!2366984))

(declare-fun d!2366986 () Bool)

(declare-fun lt!2692824 () Int)

(assert (=> d!2366986 (>= lt!2692824 0)))

(declare-fun e!4677672 () Int)

(assert (=> d!2366986 (= lt!2692824 e!4677672)))

(declare-fun c!1455177 () Bool)

(assert (=> d!2366986 (= c!1455177 (is-Nil!74443 (list!19406 (xs!19285 (right!57196 t!4440)))))))

(assert (=> d!2366986 (= (size!43238 (list!19406 (xs!19285 (right!57196 t!4440)))) lt!2692824)))

(declare-fun b!7925817 () Bool)

(assert (=> b!7925817 (= e!4677672 0)))

(declare-fun b!7925818 () Bool)

(assert (=> b!7925818 (= e!4677672 (+ 1 (size!43238 (t!390166 (list!19406 (xs!19285 (right!57196 t!4440)))))))))

(assert (= (and d!2366986 c!1455177) b!7925817))

(assert (= (and d!2366986 (not c!1455177)) b!7925818))

(declare-fun m!8306554 () Bool)

(assert (=> b!7925818 m!8306554))

(assert (=> b!7925439 d!2366986))

(assert (=> b!7925439 d!2366962))

(declare-fun d!2366988 () Bool)

(declare-fun lt!2692825 () Int)

(assert (=> d!2366988 (>= lt!2692825 0)))

(declare-fun e!4677673 () Int)

(assert (=> d!2366988 (= lt!2692825 e!4677673)))

(declare-fun c!1455178 () Bool)

(assert (=> d!2366988 (= c!1455178 (is-Nil!74443 (list!19406 (xs!19285 (left!56866 t!4440)))))))

(assert (=> d!2366988 (= (size!43238 (list!19406 (xs!19285 (left!56866 t!4440)))) lt!2692825)))

(declare-fun b!7925819 () Bool)

(assert (=> b!7925819 (= e!4677673 0)))

(declare-fun b!7925820 () Bool)

(assert (=> b!7925820 (= e!4677673 (+ 1 (size!43238 (t!390166 (list!19406 (xs!19285 (left!56866 t!4440)))))))))

(assert (= (and d!2366988 c!1455178) b!7925819))

(assert (= (and d!2366988 (not c!1455178)) b!7925820))

(declare-fun m!8306556 () Bool)

(assert (=> b!7925820 m!8306556))

(assert (=> d!2366736 d!2366988))

(assert (=> d!2366736 d!2366974))

(declare-fun d!2366990 () Bool)

(declare-fun res!3145131 () Bool)

(declare-fun e!4677674 () Bool)

(assert (=> d!2366990 (=> (not res!3145131) (not e!4677674))))

(assert (=> d!2366990 (= res!3145131 (= (csize!32024 (left!56866 (right!57196 t!4440))) (+ (size!43240 (left!56866 (left!56866 (right!57196 t!4440)))) (size!43240 (right!57196 (left!56866 (right!57196 t!4440)))))))))

(assert (=> d!2366990 (= (inv!95699 (left!56866 (right!57196 t!4440))) e!4677674)))

(declare-fun b!7925821 () Bool)

(declare-fun res!3145132 () Bool)

(assert (=> b!7925821 (=> (not res!3145132) (not e!4677674))))

(assert (=> b!7925821 (= res!3145132 (and (not (= (left!56866 (left!56866 (right!57196 t!4440))) Empty!15897)) (not (= (right!57196 (left!56866 (right!57196 t!4440))) Empty!15897))))))

(declare-fun b!7925822 () Bool)

(declare-fun res!3145133 () Bool)

(assert (=> b!7925822 (=> (not res!3145133) (not e!4677674))))

(assert (=> b!7925822 (= res!3145133 (= (cheight!16108 (left!56866 (right!57196 t!4440))) (+ (max!0 (height!2212 (left!56866 (left!56866 (right!57196 t!4440)))) (height!2212 (right!57196 (left!56866 (right!57196 t!4440))))) 1)))))

(declare-fun b!7925823 () Bool)

(assert (=> b!7925823 (= e!4677674 (<= 0 (cheight!16108 (left!56866 (right!57196 t!4440)))))))

(assert (= (and d!2366990 res!3145131) b!7925821))

(assert (= (and b!7925821 res!3145132) b!7925822))

(assert (= (and b!7925822 res!3145133) b!7925823))

(declare-fun m!8306558 () Bool)

(assert (=> d!2366990 m!8306558))

(declare-fun m!8306560 () Bool)

(assert (=> d!2366990 m!8306560))

(declare-fun m!8306562 () Bool)

(assert (=> b!7925822 m!8306562))

(declare-fun m!8306564 () Bool)

(assert (=> b!7925822 m!8306564))

(assert (=> b!7925822 m!8306562))

(assert (=> b!7925822 m!8306564))

(declare-fun m!8306566 () Bool)

(assert (=> b!7925822 m!8306566))

(assert (=> b!7925539 d!2366990))

(assert (=> b!7925495 d!2366988))

(assert (=> b!7925495 d!2366974))

(declare-fun d!2366992 () Bool)

(declare-fun res!3145134 () Bool)

(declare-fun e!4677675 () Bool)

(assert (=> d!2366992 (=> (not res!3145134) (not e!4677675))))

(assert (=> d!2366992 (= res!3145134 (= (csize!32024 (left!56866 (left!56866 t!4440))) (+ (size!43240 (left!56866 (left!56866 (left!56866 t!4440)))) (size!43240 (right!57196 (left!56866 (left!56866 t!4440)))))))))

(assert (=> d!2366992 (= (inv!95699 (left!56866 (left!56866 t!4440))) e!4677675)))

(declare-fun b!7925824 () Bool)

(declare-fun res!3145135 () Bool)

(assert (=> b!7925824 (=> (not res!3145135) (not e!4677675))))

(assert (=> b!7925824 (= res!3145135 (and (not (= (left!56866 (left!56866 (left!56866 t!4440))) Empty!15897)) (not (= (right!57196 (left!56866 (left!56866 t!4440))) Empty!15897))))))

(declare-fun b!7925825 () Bool)

(declare-fun res!3145136 () Bool)

(assert (=> b!7925825 (=> (not res!3145136) (not e!4677675))))

(assert (=> b!7925825 (= res!3145136 (= (cheight!16108 (left!56866 (left!56866 t!4440))) (+ (max!0 (height!2212 (left!56866 (left!56866 (left!56866 t!4440)))) (height!2212 (right!57196 (left!56866 (left!56866 t!4440))))) 1)))))

(declare-fun b!7925826 () Bool)

(assert (=> b!7925826 (= e!4677675 (<= 0 (cheight!16108 (left!56866 (left!56866 t!4440)))))))

(assert (= (and d!2366992 res!3145134) b!7925824))

(assert (= (and b!7925824 res!3145135) b!7925825))

(assert (= (and b!7925825 res!3145136) b!7925826))

(declare-fun m!8306568 () Bool)

(assert (=> d!2366992 m!8306568))

(declare-fun m!8306570 () Bool)

(assert (=> d!2366992 m!8306570))

(assert (=> b!7925825 m!8306406))

(assert (=> b!7925825 m!8306408))

(assert (=> b!7925825 m!8306406))

(assert (=> b!7925825 m!8306408))

(declare-fun m!8306572 () Bool)

(assert (=> b!7925825 m!8306572))

(assert (=> b!7925429 d!2366992))

(assert (=> d!2366704 d!2366986))

(assert (=> d!2366704 d!2366962))

(declare-fun b!7925827 () Bool)

(declare-fun res!3145137 () Bool)

(declare-fun e!4677677 () Bool)

(assert (=> b!7925827 (=> (not res!3145137) (not e!4677677))))

(assert (=> b!7925827 (= res!3145137 (isBalanced!4523 (right!57196 (right!57196 (right!57196 t!4440)))))))

(declare-fun b!7925828 () Bool)

(assert (=> b!7925828 (= e!4677677 (not (isEmpty!42767 (right!57196 (right!57196 (right!57196 t!4440))))))))

(declare-fun b!7925829 () Bool)

(declare-fun res!3145140 () Bool)

(assert (=> b!7925829 (=> (not res!3145140) (not e!4677677))))

(assert (=> b!7925829 (= res!3145140 (isBalanced!4523 (left!56866 (right!57196 (right!57196 t!4440)))))))

(declare-fun d!2366994 () Bool)

(declare-fun res!3145142 () Bool)

(declare-fun e!4677676 () Bool)

(assert (=> d!2366994 (=> res!3145142 e!4677676)))

(assert (=> d!2366994 (= res!3145142 (not (is-Node!15897 (right!57196 (right!57196 t!4440)))))))

(assert (=> d!2366994 (= (isBalanced!4523 (right!57196 (right!57196 t!4440))) e!4677676)))

(declare-fun b!7925830 () Bool)

(declare-fun res!3145139 () Bool)

(assert (=> b!7925830 (=> (not res!3145139) (not e!4677677))))

(assert (=> b!7925830 (= res!3145139 (not (isEmpty!42767 (left!56866 (right!57196 (right!57196 t!4440))))))))

(declare-fun b!7925831 () Bool)

(declare-fun res!3145138 () Bool)

(assert (=> b!7925831 (=> (not res!3145138) (not e!4677677))))

(assert (=> b!7925831 (= res!3145138 (<= (- (height!2212 (left!56866 (right!57196 (right!57196 t!4440)))) (height!2212 (right!57196 (right!57196 (right!57196 t!4440))))) 1))))

(declare-fun b!7925832 () Bool)

(assert (=> b!7925832 (= e!4677676 e!4677677)))

(declare-fun res!3145141 () Bool)

(assert (=> b!7925832 (=> (not res!3145141) (not e!4677677))))

(assert (=> b!7925832 (= res!3145141 (<= (- 1) (- (height!2212 (left!56866 (right!57196 (right!57196 t!4440)))) (height!2212 (right!57196 (right!57196 (right!57196 t!4440)))))))))

(assert (= (and d!2366994 (not res!3145142)) b!7925832))

(assert (= (and b!7925832 res!3145141) b!7925831))

(assert (= (and b!7925831 res!3145138) b!7925829))

(assert (= (and b!7925829 res!3145140) b!7925827))

(assert (= (and b!7925827 res!3145137) b!7925830))

(assert (= (and b!7925830 res!3145139) b!7925828))

(declare-fun m!8306574 () Bool)

(assert (=> b!7925828 m!8306574))

(declare-fun m!8306576 () Bool)

(assert (=> b!7925827 m!8306576))

(declare-fun m!8306578 () Bool)

(assert (=> b!7925832 m!8306578))

(declare-fun m!8306580 () Bool)

(assert (=> b!7925832 m!8306580))

(declare-fun m!8306582 () Bool)

(assert (=> b!7925829 m!8306582))

(declare-fun m!8306584 () Bool)

(assert (=> b!7925830 m!8306584))

(assert (=> b!7925831 m!8306578))

(assert (=> b!7925831 m!8306580))

(assert (=> b!7925450 d!2366994))

(declare-fun d!2366996 () Bool)

(declare-fun c!1455179 () Bool)

(assert (=> d!2366996 (= c!1455179 (is-Nil!74443 lt!2692766))))

(declare-fun e!4677678 () (Set T!145774))

(assert (=> d!2366996 (= (content!15780 lt!2692766) e!4677678)))

(declare-fun b!7925833 () Bool)

(assert (=> b!7925833 (= e!4677678 (as set.empty (Set T!145774)))))

(declare-fun b!7925834 () Bool)

(assert (=> b!7925834 (= e!4677678 (set.union (set.insert (h!80891 lt!2692766) (as set.empty (Set T!145774))) (content!15780 (t!390166 lt!2692766))))))

(assert (= (and d!2366996 c!1455179) b!7925833))

(assert (= (and d!2366996 (not c!1455179)) b!7925834))

(declare-fun m!8306586 () Bool)

(assert (=> b!7925834 m!8306586))

(declare-fun m!8306588 () Bool)

(assert (=> b!7925834 m!8306588))

(assert (=> d!2366756 d!2366996))

(declare-fun d!2366998 () Bool)

(declare-fun c!1455180 () Bool)

(assert (=> d!2366998 (= c!1455180 (is-Nil!74443 (list!19404 (left!56866 t!4440))))))

(declare-fun e!4677679 () (Set T!145774))

(assert (=> d!2366998 (= (content!15780 (list!19404 (left!56866 t!4440))) e!4677679)))

(declare-fun b!7925835 () Bool)

(assert (=> b!7925835 (= e!4677679 (as set.empty (Set T!145774)))))

(declare-fun b!7925836 () Bool)

(assert (=> b!7925836 (= e!4677679 (set.union (set.insert (h!80891 (list!19404 (left!56866 t!4440))) (as set.empty (Set T!145774))) (content!15780 (t!390166 (list!19404 (left!56866 t!4440))))))))

(assert (= (and d!2366998 c!1455180) b!7925835))

(assert (= (and d!2366998 (not c!1455180)) b!7925836))

(declare-fun m!8306590 () Bool)

(assert (=> b!7925836 m!8306590))

(declare-fun m!8306592 () Bool)

(assert (=> b!7925836 m!8306592))

(assert (=> d!2366756 d!2366998))

(declare-fun d!2367000 () Bool)

(declare-fun c!1455181 () Bool)

(assert (=> d!2367000 (= c!1455181 (is-Nil!74443 (list!19404 (right!57196 t!4440))))))

(declare-fun e!4677680 () (Set T!145774))

(assert (=> d!2367000 (= (content!15780 (list!19404 (right!57196 t!4440))) e!4677680)))

(declare-fun b!7925837 () Bool)

(assert (=> b!7925837 (= e!4677680 (as set.empty (Set T!145774)))))

(declare-fun b!7925838 () Bool)

(assert (=> b!7925838 (= e!4677680 (set.union (set.insert (h!80891 (list!19404 (right!57196 t!4440))) (as set.empty (Set T!145774))) (content!15780 (t!390166 (list!19404 (right!57196 t!4440))))))))

(assert (= (and d!2367000 c!1455181) b!7925837))

(assert (= (and d!2367000 (not c!1455181)) b!7925838))

(declare-fun m!8306594 () Bool)

(assert (=> b!7925838 m!8306594))

(declare-fun m!8306596 () Bool)

(assert (=> b!7925838 m!8306596))

(assert (=> d!2366756 d!2367000))

(declare-fun d!2367002 () Bool)

(assert (=> d!2367002 (= (isEmpty!42769 (list!19404 (right!57196 lt!2692717))) (is-Nil!74443 (list!19404 (right!57196 lt!2692717))))))

(assert (=> d!2366714 d!2367002))

(assert (=> d!2366714 d!2366776))

(declare-fun d!2367004 () Bool)

(declare-fun lt!2692826 () Int)

(assert (=> d!2367004 (= lt!2692826 (size!43238 (list!19404 (right!57196 lt!2692717))))))

(assert (=> d!2367004 (= lt!2692826 (ite (is-Empty!15897 (right!57196 lt!2692717)) 0 (ite (is-Leaf!30227 (right!57196 lt!2692717)) (csize!32025 (right!57196 lt!2692717)) (csize!32024 (right!57196 lt!2692717)))))))

(assert (=> d!2367004 (= (size!43240 (right!57196 lt!2692717)) lt!2692826)))

(declare-fun bs!1968787 () Bool)

(assert (= bs!1968787 d!2367004))

(assert (=> bs!1968787 m!8305794))

(assert (=> bs!1968787 m!8305794))

(assert (=> bs!1968787 m!8306104))

(assert (=> d!2366714 d!2367004))

(declare-fun d!2367006 () Bool)

(declare-fun lt!2692827 () Int)

(assert (=> d!2367006 (>= lt!2692827 0)))

(declare-fun e!4677681 () Int)

(assert (=> d!2367006 (= lt!2692827 e!4677681)))

(declare-fun c!1455182 () Bool)

(assert (=> d!2367006 (= c!1455182 (is-Nil!74443 lt!2692756))))

(assert (=> d!2367006 (= (size!43238 lt!2692756) lt!2692827)))

(declare-fun b!7925839 () Bool)

(assert (=> b!7925839 (= e!4677681 0)))

(declare-fun b!7925840 () Bool)

(assert (=> b!7925840 (= e!4677681 (+ 1 (size!43238 (t!390166 lt!2692756))))))

(assert (= (and d!2367006 c!1455182) b!7925839))

(assert (= (and d!2367006 (not c!1455182)) b!7925840))

(declare-fun m!8306598 () Bool)

(assert (=> b!7925840 m!8306598))

(assert (=> b!7925480 d!2367006))

(declare-fun d!2367008 () Bool)

(declare-fun lt!2692828 () Int)

(assert (=> d!2367008 (>= lt!2692828 0)))

(declare-fun e!4677682 () Int)

(assert (=> d!2367008 (= lt!2692828 e!4677682)))

(declare-fun c!1455183 () Bool)

(assert (=> d!2367008 (= c!1455183 (is-Nil!74443 lt!2692768))))

(assert (=> d!2367008 (= (size!43238 lt!2692768) lt!2692828)))

(declare-fun b!7925841 () Bool)

(assert (=> b!7925841 (= e!4677682 0)))

(declare-fun b!7925842 () Bool)

(assert (=> b!7925842 (= e!4677682 (+ 1 (size!43238 (t!390166 lt!2692768))))))

(assert (= (and d!2367008 c!1455183) b!7925841))

(assert (= (and d!2367008 (not c!1455183)) b!7925842))

(declare-fun m!8306600 () Bool)

(assert (=> b!7925842 m!8306600))

(assert (=> b!7925547 d!2367008))

(declare-fun d!2367010 () Bool)

(declare-fun lt!2692829 () Int)

(assert (=> d!2367010 (>= lt!2692829 0)))

(declare-fun e!4677683 () Int)

(assert (=> d!2367010 (= lt!2692829 e!4677683)))

(declare-fun c!1455184 () Bool)

(assert (=> d!2367010 (= c!1455184 (is-Nil!74443 (list!19404 (left!56866 lt!2692717))))))

(assert (=> d!2367010 (= (size!43238 (list!19404 (left!56866 lt!2692717))) lt!2692829)))

(declare-fun b!7925843 () Bool)

(assert (=> b!7925843 (= e!4677683 0)))

(declare-fun b!7925844 () Bool)

(assert (=> b!7925844 (= e!4677683 (+ 1 (size!43238 (t!390166 (list!19404 (left!56866 lt!2692717))))))))

(assert (= (and d!2367010 c!1455184) b!7925843))

(assert (= (and d!2367010 (not c!1455184)) b!7925844))

(assert (=> b!7925844 m!8306504))

(assert (=> b!7925547 d!2367010))

(declare-fun d!2367012 () Bool)

(declare-fun lt!2692830 () Int)

(assert (=> d!2367012 (>= lt!2692830 0)))

(declare-fun e!4677684 () Int)

(assert (=> d!2367012 (= lt!2692830 e!4677684)))

(declare-fun c!1455185 () Bool)

(assert (=> d!2367012 (= c!1455185 (is-Nil!74443 (list!19404 (right!57196 lt!2692717))))))

(assert (=> d!2367012 (= (size!43238 (list!19404 (right!57196 lt!2692717))) lt!2692830)))

(declare-fun b!7925845 () Bool)

(assert (=> b!7925845 (= e!4677684 0)))

(declare-fun b!7925846 () Bool)

(assert (=> b!7925846 (= e!4677684 (+ 1 (size!43238 (t!390166 (list!19404 (right!57196 lt!2692717))))))))

(assert (= (and d!2367012 c!1455185) b!7925845))

(assert (= (and d!2367012 (not c!1455185)) b!7925846))

(declare-fun m!8306602 () Bool)

(assert (=> b!7925846 m!8306602))

(assert (=> b!7925547 d!2367012))

(declare-fun d!2367014 () Bool)

(assert (=> d!2367014 (= (max!0 (height!2212 (left!56866 t!4440)) (height!2212 (right!57196 t!4440))) (ite (< (height!2212 (left!56866 t!4440)) (height!2212 (right!57196 t!4440))) (height!2212 (right!57196 t!4440)) (height!2212 (left!56866 t!4440))))))

(assert (=> b!7925493 d!2367014))

(assert (=> b!7925493 d!2366752))

(assert (=> b!7925493 d!2366754))

(assert (=> b!7925455 d!2366944))

(assert (=> b!7925455 d!2366946))

(declare-fun d!2367016 () Bool)

(assert (=> d!2367016 (= (list!19406 (xs!19285 (right!57196 lt!2692717))) (innerList!15985 (xs!19285 (right!57196 lt!2692717))))))

(assert (=> b!7925555 d!2367016))

(assert (=> b!7925501 d!2366902))

(assert (=> b!7925501 d!2366904))

(declare-fun b!7925847 () Bool)

(declare-fun res!3145143 () Bool)

(declare-fun e!4677686 () Bool)

(assert (=> b!7925847 (=> (not res!3145143) (not e!4677686))))

(assert (=> b!7925847 (= res!3145143 (isBalanced!4523 (right!57196 (left!56866 (left!56866 lt!2692717)))))))

(declare-fun b!7925848 () Bool)

(assert (=> b!7925848 (= e!4677686 (not (isEmpty!42767 (right!57196 (left!56866 (left!56866 lt!2692717))))))))

(declare-fun b!7925849 () Bool)

(declare-fun res!3145146 () Bool)

(assert (=> b!7925849 (=> (not res!3145146) (not e!4677686))))

(assert (=> b!7925849 (= res!3145146 (isBalanced!4523 (left!56866 (left!56866 (left!56866 lt!2692717)))))))

(declare-fun d!2367018 () Bool)

(declare-fun res!3145148 () Bool)

(declare-fun e!4677685 () Bool)

(assert (=> d!2367018 (=> res!3145148 e!4677685)))

(assert (=> d!2367018 (= res!3145148 (not (is-Node!15897 (left!56866 (left!56866 lt!2692717)))))))

(assert (=> d!2367018 (= (isBalanced!4523 (left!56866 (left!56866 lt!2692717))) e!4677685)))

(declare-fun b!7925850 () Bool)

(declare-fun res!3145145 () Bool)

(assert (=> b!7925850 (=> (not res!3145145) (not e!4677686))))

(assert (=> b!7925850 (= res!3145145 (not (isEmpty!42767 (left!56866 (left!56866 (left!56866 lt!2692717))))))))

(declare-fun b!7925851 () Bool)

(declare-fun res!3145144 () Bool)

(assert (=> b!7925851 (=> (not res!3145144) (not e!4677686))))

(assert (=> b!7925851 (= res!3145144 (<= (- (height!2212 (left!56866 (left!56866 (left!56866 lt!2692717)))) (height!2212 (right!57196 (left!56866 (left!56866 lt!2692717))))) 1))))

(declare-fun b!7925852 () Bool)

(assert (=> b!7925852 (= e!4677685 e!4677686)))

(declare-fun res!3145147 () Bool)

(assert (=> b!7925852 (=> (not res!3145147) (not e!4677686))))

(assert (=> b!7925852 (= res!3145147 (<= (- 1) (- (height!2212 (left!56866 (left!56866 (left!56866 lt!2692717)))) (height!2212 (right!57196 (left!56866 (left!56866 lt!2692717)))))))))

(assert (= (and d!2367018 (not res!3145148)) b!7925852))

(assert (= (and b!7925852 res!3145147) b!7925851))

(assert (= (and b!7925851 res!3145144) b!7925849))

(assert (= (and b!7925849 res!3145146) b!7925847))

(assert (= (and b!7925847 res!3145143) b!7925850))

(assert (= (and b!7925850 res!3145145) b!7925848))

(declare-fun m!8306604 () Bool)

(assert (=> b!7925848 m!8306604))

(declare-fun m!8306606 () Bool)

(assert (=> b!7925847 m!8306606))

(declare-fun m!8306608 () Bool)

(assert (=> b!7925852 m!8306608))

(declare-fun m!8306610 () Bool)

(assert (=> b!7925852 m!8306610))

(declare-fun m!8306612 () Bool)

(assert (=> b!7925849 m!8306612))

(declare-fun m!8306614 () Bool)

(assert (=> b!7925850 m!8306614))

(assert (=> b!7925851 m!8306608))

(assert (=> b!7925851 m!8306610))

(assert (=> b!7925458 d!2367018))

(declare-fun d!2367020 () Bool)

(declare-fun e!4677688 () Bool)

(assert (=> d!2367020 e!4677688))

(declare-fun res!3145149 () Bool)

(assert (=> d!2367020 (=> (not res!3145149) (not e!4677688))))

(declare-fun lt!2692831 () List!74567)

(assert (=> d!2367020 (= res!3145149 (= (content!15780 lt!2692831) (set.union (content!15780 (list!19404 (left!56866 (left!56866 lt!2692717)))) (content!15780 (list!19404 (right!57196 (left!56866 lt!2692717)))))))))

(declare-fun e!4677687 () List!74567)

(assert (=> d!2367020 (= lt!2692831 e!4677687)))

(declare-fun c!1455186 () Bool)

(assert (=> d!2367020 (= c!1455186 (is-Nil!74443 (list!19404 (left!56866 (left!56866 lt!2692717)))))))

(assert (=> d!2367020 (= (++!18256 (list!19404 (left!56866 (left!56866 lt!2692717))) (list!19404 (right!57196 (left!56866 lt!2692717)))) lt!2692831)))

(declare-fun b!7925854 () Bool)

(assert (=> b!7925854 (= e!4677687 (Cons!74443 (h!80891 (list!19404 (left!56866 (left!56866 lt!2692717)))) (++!18256 (t!390166 (list!19404 (left!56866 (left!56866 lt!2692717)))) (list!19404 (right!57196 (left!56866 lt!2692717))))))))

(declare-fun b!7925856 () Bool)

(assert (=> b!7925856 (= e!4677688 (or (not (= (list!19404 (right!57196 (left!56866 lt!2692717))) Nil!74443)) (= lt!2692831 (list!19404 (left!56866 (left!56866 lt!2692717))))))))

(declare-fun b!7925853 () Bool)

(assert (=> b!7925853 (= e!4677687 (list!19404 (right!57196 (left!56866 lt!2692717))))))

(declare-fun b!7925855 () Bool)

(declare-fun res!3145150 () Bool)

(assert (=> b!7925855 (=> (not res!3145150) (not e!4677688))))

(assert (=> b!7925855 (= res!3145150 (= (size!43238 lt!2692831) (+ (size!43238 (list!19404 (left!56866 (left!56866 lt!2692717)))) (size!43238 (list!19404 (right!57196 (left!56866 lt!2692717)))))))))

(assert (= (and d!2367020 c!1455186) b!7925853))

(assert (= (and d!2367020 (not c!1455186)) b!7925854))

(assert (= (and d!2367020 res!3145149) b!7925855))

(assert (= (and b!7925855 res!3145150) b!7925856))

(declare-fun m!8306616 () Bool)

(assert (=> d!2367020 m!8306616))

(assert (=> d!2367020 m!8306106))

(declare-fun m!8306618 () Bool)

(assert (=> d!2367020 m!8306618))

(assert (=> d!2367020 m!8306108))

(declare-fun m!8306620 () Bool)

(assert (=> d!2367020 m!8306620))

(assert (=> b!7925854 m!8306108))

(declare-fun m!8306622 () Bool)

(assert (=> b!7925854 m!8306622))

(declare-fun m!8306624 () Bool)

(assert (=> b!7925855 m!8306624))

(assert (=> b!7925855 m!8306106))

(declare-fun m!8306626 () Bool)

(assert (=> b!7925855 m!8306626))

(assert (=> b!7925855 m!8306108))

(declare-fun m!8306628 () Bool)

(assert (=> b!7925855 m!8306628))

(assert (=> b!7925552 d!2367020))

(declare-fun b!7925860 () Bool)

(declare-fun e!4677690 () List!74567)

(assert (=> b!7925860 (= e!4677690 (++!18256 (list!19404 (left!56866 (left!56866 (left!56866 lt!2692717)))) (list!19404 (right!57196 (left!56866 (left!56866 lt!2692717))))))))

(declare-fun d!2367022 () Bool)

(declare-fun c!1455187 () Bool)

(assert (=> d!2367022 (= c!1455187 (is-Empty!15897 (left!56866 (left!56866 lt!2692717))))))

(declare-fun e!4677689 () List!74567)

(assert (=> d!2367022 (= (list!19404 (left!56866 (left!56866 lt!2692717))) e!4677689)))

(declare-fun b!7925859 () Bool)

(assert (=> b!7925859 (= e!4677690 (list!19406 (xs!19285 (left!56866 (left!56866 lt!2692717)))))))

(declare-fun b!7925858 () Bool)

(assert (=> b!7925858 (= e!4677689 e!4677690)))

(declare-fun c!1455188 () Bool)

(assert (=> b!7925858 (= c!1455188 (is-Leaf!30227 (left!56866 (left!56866 lt!2692717))))))

(declare-fun b!7925857 () Bool)

(assert (=> b!7925857 (= e!4677689 Nil!74443)))

(assert (= (and d!2367022 c!1455187) b!7925857))

(assert (= (and d!2367022 (not c!1455187)) b!7925858))

(assert (= (and b!7925858 c!1455188) b!7925859))

(assert (= (and b!7925858 (not c!1455188)) b!7925860))

(declare-fun m!8306630 () Bool)

(assert (=> b!7925860 m!8306630))

(declare-fun m!8306632 () Bool)

(assert (=> b!7925860 m!8306632))

(assert (=> b!7925860 m!8306630))

(assert (=> b!7925860 m!8306632))

(declare-fun m!8306634 () Bool)

(assert (=> b!7925860 m!8306634))

(declare-fun m!8306636 () Bool)

(assert (=> b!7925859 m!8306636))

(assert (=> b!7925552 d!2367022))

(declare-fun b!7925864 () Bool)

(declare-fun e!4677692 () List!74567)

(assert (=> b!7925864 (= e!4677692 (++!18256 (list!19404 (left!56866 (right!57196 (left!56866 lt!2692717)))) (list!19404 (right!57196 (right!57196 (left!56866 lt!2692717))))))))

(declare-fun d!2367024 () Bool)

(declare-fun c!1455189 () Bool)

(assert (=> d!2367024 (= c!1455189 (is-Empty!15897 (right!57196 (left!56866 lt!2692717))))))

(declare-fun e!4677691 () List!74567)

(assert (=> d!2367024 (= (list!19404 (right!57196 (left!56866 lt!2692717))) e!4677691)))

(declare-fun b!7925863 () Bool)

(assert (=> b!7925863 (= e!4677692 (list!19406 (xs!19285 (right!57196 (left!56866 lt!2692717)))))))

(declare-fun b!7925862 () Bool)

(assert (=> b!7925862 (= e!4677691 e!4677692)))

(declare-fun c!1455190 () Bool)

(assert (=> b!7925862 (= c!1455190 (is-Leaf!30227 (right!57196 (left!56866 lt!2692717))))))

(declare-fun b!7925861 () Bool)

(assert (=> b!7925861 (= e!4677691 Nil!74443)))

(assert (= (and d!2367024 c!1455189) b!7925861))

(assert (= (and d!2367024 (not c!1455189)) b!7925862))

(assert (= (and b!7925862 c!1455190) b!7925863))

(assert (= (and b!7925862 (not c!1455190)) b!7925864))

(declare-fun m!8306638 () Bool)

(assert (=> b!7925864 m!8306638))

(declare-fun m!8306640 () Bool)

(assert (=> b!7925864 m!8306640))

(assert (=> b!7925864 m!8306638))

(assert (=> b!7925864 m!8306640))

(declare-fun m!8306642 () Bool)

(assert (=> b!7925864 m!8306642))

(declare-fun m!8306644 () Bool)

(assert (=> b!7925863 m!8306644))

(assert (=> b!7925552 d!2367024))

(declare-fun d!2367026 () Bool)

(declare-fun lt!2692832 () Int)

(assert (=> d!2367026 (>= lt!2692832 0)))

(declare-fun e!4677693 () Int)

(assert (=> d!2367026 (= lt!2692832 e!4677693)))

(declare-fun c!1455191 () Bool)

(assert (=> d!2367026 (= c!1455191 (is-Nil!74443 (innerList!15985 (xs!19285 (left!56866 t!4440)))))))

(assert (=> d!2367026 (= (size!43238 (innerList!15985 (xs!19285 (left!56866 t!4440)))) lt!2692832)))

(declare-fun b!7925865 () Bool)

(assert (=> b!7925865 (= e!4677693 0)))

(declare-fun b!7925866 () Bool)

(assert (=> b!7925866 (= e!4677693 (+ 1 (size!43238 (t!390166 (innerList!15985 (xs!19285 (left!56866 t!4440)))))))))

(assert (= (and d!2367026 c!1455191) b!7925865))

(assert (= (and d!2367026 (not c!1455191)) b!7925866))

(declare-fun m!8306646 () Bool)

(assert (=> b!7925866 m!8306646))

(assert (=> d!2366696 d!2367026))

(declare-fun b!7925867 () Bool)

(declare-fun e!4677696 () Bool)

(declare-fun call!735109 () (_ BitVec 32))

(declare-fun call!735110 () (_ BitVec 32))

(assert (=> b!7925867 (= e!4677696 (= call!735109 (bvadd call!735110 #b00000000000000000000000000000001)))))

(declare-fun bm!735104 () Bool)

(declare-fun lt!2692833 () List!74567)

(assert (=> bm!735104 (= call!735109 (isize!116 lt!2692833))))

(declare-fun b!7925868 () Bool)

(assert (=> b!7925868 (= e!4677696 (= call!735109 call!735110))))

(declare-fun b!7925869 () Bool)

(declare-fun res!3145151 () Bool)

(declare-fun e!4677694 () Bool)

(assert (=> b!7925869 (=> (not res!3145151) (not e!4677694))))

(assert (=> b!7925869 (= res!3145151 e!4677696)))

(declare-fun c!1455192 () Bool)

(assert (=> b!7925869 (= c!1455192 (bvslt (isize!116 (t!390166 (t!390166 (list!19404 t!4440)))) #b01111111111111111111111111111111))))

(declare-fun b!7925870 () Bool)

(declare-fun e!4677695 () List!74567)

(assert (=> b!7925870 (= e!4677695 (Cons!74443 (h!80891 (t!390166 (t!390166 (list!19404 t!4440)))) ($colon+!312 (t!390166 (t!390166 (t!390166 (list!19404 t!4440)))) v!5484)))))

(declare-fun b!7925871 () Bool)

(assert (=> b!7925871 (= e!4677695 (Cons!74443 v!5484 (t!390166 (t!390166 (list!19404 t!4440)))))))

(declare-fun b!7925872 () Bool)

(assert (=> b!7925872 (= e!4677694 (= lt!2692833 (++!18256 (t!390166 (t!390166 (list!19404 t!4440))) (Cons!74443 v!5484 Nil!74443))))))

(declare-fun b!7925873 () Bool)

(declare-fun res!3145154 () Bool)

(assert (=> b!7925873 (=> (not res!3145154) (not e!4677694))))

(assert (=> b!7925873 (= res!3145154 (= (content!15780 lt!2692833) (set.union (content!15780 (t!390166 (t!390166 (list!19404 t!4440)))) (set.insert v!5484 (as set.empty (Set T!145774))))))))

(declare-fun b!7925874 () Bool)

(declare-fun res!3145152 () Bool)

(assert (=> b!7925874 (=> (not res!3145152) (not e!4677694))))

(assert (=> b!7925874 (= res!3145152 (= (size!43238 lt!2692833) (+ (size!43238 (t!390166 (t!390166 (list!19404 t!4440)))) 1)))))

(declare-fun d!2367028 () Bool)

(assert (=> d!2367028 e!4677694))

(declare-fun res!3145153 () Bool)

(assert (=> d!2367028 (=> (not res!3145153) (not e!4677694))))

(assert (=> d!2367028 (= res!3145153 (is-Cons!74443 lt!2692833))))

(assert (=> d!2367028 (= lt!2692833 e!4677695)))

(declare-fun c!1455193 () Bool)

(assert (=> d!2367028 (= c!1455193 (is-Nil!74443 (t!390166 (t!390166 (list!19404 t!4440)))))))

(assert (=> d!2367028 (= ($colon+!312 (t!390166 (t!390166 (list!19404 t!4440))) v!5484) lt!2692833)))

(declare-fun bm!735105 () Bool)

(assert (=> bm!735105 (= call!735110 (isize!116 (t!390166 (t!390166 (list!19404 t!4440)))))))

(assert (= (and d!2367028 c!1455193) b!7925871))

(assert (= (and d!2367028 (not c!1455193)) b!7925870))

(assert (= (and d!2367028 res!3145153) b!7925874))

(assert (= (and b!7925874 res!3145152) b!7925869))

(assert (= (and b!7925869 c!1455192) b!7925867))

(assert (= (and b!7925869 (not c!1455192)) b!7925868))

(assert (= (or b!7925867 b!7925868) bm!735104))

(assert (= (or b!7925867 b!7925868) bm!735105))

(assert (= (and b!7925869 res!3145151) b!7925873))

(assert (= (and b!7925873 res!3145154) b!7925872))

(assert (=> b!7925872 m!8306460))

(declare-fun m!8306648 () Bool)

(assert (=> b!7925870 m!8306648))

(declare-fun m!8306650 () Bool)

(assert (=> bm!735104 m!8306650))

(declare-fun m!8306652 () Bool)

(assert (=> b!7925874 m!8306652))

(assert (=> b!7925874 m!8306464))

(assert (=> bm!735105 m!8306494))

(declare-fun m!8306654 () Bool)

(assert (=> b!7925873 m!8306654))

(assert (=> b!7925873 m!8306472))

(assert (=> b!7925873 m!8305816))

(assert (=> b!7925869 m!8306494))

(assert (=> b!7925465 d!2367028))

(declare-fun d!2367030 () Bool)

(declare-fun e!4677698 () Bool)

(assert (=> d!2367030 e!4677698))

(declare-fun res!3145155 () Bool)

(assert (=> d!2367030 (=> (not res!3145155) (not e!4677698))))

(declare-fun lt!2692834 () List!74567)

(assert (=> d!2367030 (= res!3145155 (= (content!15780 lt!2692834) (set.union (content!15780 (t!390166 (list!19404 (left!56866 t!4440)))) (content!15780 (list!19404 (right!57196 t!4440))))))))

(declare-fun e!4677697 () List!74567)

(assert (=> d!2367030 (= lt!2692834 e!4677697)))

(declare-fun c!1455194 () Bool)

(assert (=> d!2367030 (= c!1455194 (is-Nil!74443 (t!390166 (list!19404 (left!56866 t!4440)))))))

(assert (=> d!2367030 (= (++!18256 (t!390166 (list!19404 (left!56866 t!4440))) (list!19404 (right!57196 t!4440))) lt!2692834)))

(declare-fun b!7925876 () Bool)

(assert (=> b!7925876 (= e!4677697 (Cons!74443 (h!80891 (t!390166 (list!19404 (left!56866 t!4440)))) (++!18256 (t!390166 (t!390166 (list!19404 (left!56866 t!4440)))) (list!19404 (right!57196 t!4440)))))))

(declare-fun b!7925878 () Bool)

(assert (=> b!7925878 (= e!4677698 (or (not (= (list!19404 (right!57196 t!4440)) Nil!74443)) (= lt!2692834 (t!390166 (list!19404 (left!56866 t!4440))))))))

(declare-fun b!7925875 () Bool)

(assert (=> b!7925875 (= e!4677697 (list!19404 (right!57196 t!4440)))))

(declare-fun b!7925877 () Bool)

(declare-fun res!3145156 () Bool)

(assert (=> b!7925877 (=> (not res!3145156) (not e!4677698))))

(assert (=> b!7925877 (= res!3145156 (= (size!43238 lt!2692834) (+ (size!43238 (t!390166 (list!19404 (left!56866 t!4440)))) (size!43238 (list!19404 (right!57196 t!4440))))))))

(assert (= (and d!2367030 c!1455194) b!7925875))

(assert (= (and d!2367030 (not c!1455194)) b!7925876))

(assert (= (and d!2367030 res!3145155) b!7925877))

(assert (= (and b!7925877 res!3145156) b!7925878))

(declare-fun m!8306656 () Bool)

(assert (=> d!2367030 m!8306656))

(assert (=> d!2367030 m!8306592))

(assert (=> d!2367030 m!8305820))

(assert (=> d!2367030 m!8306058))

(assert (=> b!7925876 m!8305820))

(declare-fun m!8306658 () Bool)

(assert (=> b!7925876 m!8306658))

(declare-fun m!8306660 () Bool)

(assert (=> b!7925877 m!8306660))

(declare-fun m!8306662 () Bool)

(assert (=> b!7925877 m!8306662))

(assert (=> b!7925877 m!8305820))

(assert (=> b!7925877 m!8306066))

(assert (=> b!7925526 d!2367030))

(declare-fun b!7925879 () Bool)

(declare-fun res!3145157 () Bool)

(declare-fun e!4677700 () Bool)

(assert (=> b!7925879 (=> (not res!3145157) (not e!4677700))))

(assert (=> b!7925879 (= res!3145157 (isBalanced!4523 (right!57196 (left!56866 (right!57196 lt!2692717)))))))

(declare-fun b!7925880 () Bool)

(assert (=> b!7925880 (= e!4677700 (not (isEmpty!42767 (right!57196 (left!56866 (right!57196 lt!2692717))))))))

(declare-fun b!7925881 () Bool)

(declare-fun res!3145160 () Bool)

(assert (=> b!7925881 (=> (not res!3145160) (not e!4677700))))

(assert (=> b!7925881 (= res!3145160 (isBalanced!4523 (left!56866 (left!56866 (right!57196 lt!2692717)))))))

(declare-fun d!2367032 () Bool)

(declare-fun res!3145162 () Bool)

(declare-fun e!4677699 () Bool)

(assert (=> d!2367032 (=> res!3145162 e!4677699)))

(assert (=> d!2367032 (= res!3145162 (not (is-Node!15897 (left!56866 (right!57196 lt!2692717)))))))

(assert (=> d!2367032 (= (isBalanced!4523 (left!56866 (right!57196 lt!2692717))) e!4677699)))

(declare-fun b!7925882 () Bool)

(declare-fun res!3145159 () Bool)

(assert (=> b!7925882 (=> (not res!3145159) (not e!4677700))))

(assert (=> b!7925882 (= res!3145159 (not (isEmpty!42767 (left!56866 (left!56866 (right!57196 lt!2692717))))))))

(declare-fun b!7925883 () Bool)

(declare-fun res!3145158 () Bool)

(assert (=> b!7925883 (=> (not res!3145158) (not e!4677700))))

(assert (=> b!7925883 (= res!3145158 (<= (- (height!2212 (left!56866 (left!56866 (right!57196 lt!2692717)))) (height!2212 (right!57196 (left!56866 (right!57196 lt!2692717))))) 1))))

(declare-fun b!7925884 () Bool)

(assert (=> b!7925884 (= e!4677699 e!4677700)))

(declare-fun res!3145161 () Bool)

(assert (=> b!7925884 (=> (not res!3145161) (not e!4677700))))

(assert (=> b!7925884 (= res!3145161 (<= (- 1) (- (height!2212 (left!56866 (left!56866 (right!57196 lt!2692717)))) (height!2212 (right!57196 (left!56866 (right!57196 lt!2692717)))))))))

(assert (= (and d!2367032 (not res!3145162)) b!7925884))

(assert (= (and b!7925884 res!3145161) b!7925883))

(assert (= (and b!7925883 res!3145158) b!7925881))

(assert (= (and b!7925881 res!3145160) b!7925879))

(assert (= (and b!7925879 res!3145157) b!7925882))

(assert (= (and b!7925882 res!3145159) b!7925880))

(declare-fun m!8306664 () Bool)

(assert (=> b!7925880 m!8306664))

(declare-fun m!8306666 () Bool)

(assert (=> b!7925879 m!8306666))

(declare-fun m!8306668 () Bool)

(assert (=> b!7925884 m!8306668))

(declare-fun m!8306670 () Bool)

(assert (=> b!7925884 m!8306670))

(declare-fun m!8306672 () Bool)

(assert (=> b!7925881 m!8306672))

(declare-fun m!8306674 () Bool)

(assert (=> b!7925882 m!8306674))

(assert (=> b!7925883 m!8306668))

(assert (=> b!7925883 m!8306670))

(assert (=> b!7925419 d!2367032))

(assert (=> bm!735101 d!2366950))

(assert (=> d!2366750 d!2366976))

(assert (=> d!2366750 d!2366734))

(declare-fun d!2367034 () Bool)

(declare-fun res!3145163 () Bool)

(declare-fun e!4677701 () Bool)

(assert (=> d!2367034 (=> (not res!3145163) (not e!4677701))))

(assert (=> d!2367034 (= res!3145163 (= (csize!32024 (right!57196 (right!57196 t!4440))) (+ (size!43240 (left!56866 (right!57196 (right!57196 t!4440)))) (size!43240 (right!57196 (right!57196 (right!57196 t!4440)))))))))

(assert (=> d!2367034 (= (inv!95699 (right!57196 (right!57196 t!4440))) e!4677701)))

(declare-fun b!7925885 () Bool)

(declare-fun res!3145164 () Bool)

(assert (=> b!7925885 (=> (not res!3145164) (not e!4677701))))

(assert (=> b!7925885 (= res!3145164 (and (not (= (left!56866 (right!57196 (right!57196 t!4440))) Empty!15897)) (not (= (right!57196 (right!57196 (right!57196 t!4440))) Empty!15897))))))

(declare-fun b!7925886 () Bool)

(declare-fun res!3145165 () Bool)

(assert (=> b!7925886 (=> (not res!3145165) (not e!4677701))))

(assert (=> b!7925886 (= res!3145165 (= (cheight!16108 (right!57196 (right!57196 t!4440))) (+ (max!0 (height!2212 (left!56866 (right!57196 (right!57196 t!4440)))) (height!2212 (right!57196 (right!57196 (right!57196 t!4440))))) 1)))))

(declare-fun b!7925887 () Bool)

(assert (=> b!7925887 (= e!4677701 (<= 0 (cheight!16108 (right!57196 (right!57196 t!4440)))))))

(assert (= (and d!2367034 res!3145163) b!7925885))

(assert (= (and b!7925885 res!3145164) b!7925886))

(assert (= (and b!7925886 res!3145165) b!7925887))

(declare-fun m!8306676 () Bool)

(assert (=> d!2367034 m!8306676))

(declare-fun m!8306678 () Bool)

(assert (=> d!2367034 m!8306678))

(assert (=> b!7925886 m!8306578))

(assert (=> b!7925886 m!8306580))

(assert (=> b!7925886 m!8306578))

(assert (=> b!7925886 m!8306580))

(declare-fun m!8306680 () Bool)

(assert (=> b!7925886 m!8306680))

(assert (=> b!7925542 d!2367034))

(declare-fun d!2367036 () Bool)

(declare-fun e!4677703 () Bool)

(assert (=> d!2367036 e!4677703))

(declare-fun res!3145166 () Bool)

(assert (=> d!2367036 (=> (not res!3145166) (not e!4677703))))

(declare-fun lt!2692835 () List!74567)

(assert (=> d!2367036 (= res!3145166 (= (content!15780 lt!2692835) (set.union (content!15780 (list!19404 (left!56866 (right!57196 t!4440)))) (content!15780 (list!19404 (right!57196 (right!57196 t!4440)))))))))

(declare-fun e!4677702 () List!74567)

(assert (=> d!2367036 (= lt!2692835 e!4677702)))

(declare-fun c!1455195 () Bool)

(assert (=> d!2367036 (= c!1455195 (is-Nil!74443 (list!19404 (left!56866 (right!57196 t!4440)))))))

(assert (=> d!2367036 (= (++!18256 (list!19404 (left!56866 (right!57196 t!4440))) (list!19404 (right!57196 (right!57196 t!4440)))) lt!2692835)))

(declare-fun b!7925889 () Bool)

(assert (=> b!7925889 (= e!4677702 (Cons!74443 (h!80891 (list!19404 (left!56866 (right!57196 t!4440)))) (++!18256 (t!390166 (list!19404 (left!56866 (right!57196 t!4440)))) (list!19404 (right!57196 (right!57196 t!4440))))))))

(declare-fun b!7925891 () Bool)

(assert (=> b!7925891 (= e!4677703 (or (not (= (list!19404 (right!57196 (right!57196 t!4440))) Nil!74443)) (= lt!2692835 (list!19404 (left!56866 (right!57196 t!4440))))))))

(declare-fun b!7925888 () Bool)

(assert (=> b!7925888 (= e!4677702 (list!19404 (right!57196 (right!57196 t!4440))))))

(declare-fun b!7925890 () Bool)

(declare-fun res!3145167 () Bool)

(assert (=> b!7925890 (=> (not res!3145167) (not e!4677703))))

(assert (=> b!7925890 (= res!3145167 (= (size!43238 lt!2692835) (+ (size!43238 (list!19404 (left!56866 (right!57196 t!4440)))) (size!43238 (list!19404 (right!57196 (right!57196 t!4440)))))))))

(assert (= (and d!2367036 c!1455195) b!7925888))

(assert (= (and d!2367036 (not c!1455195)) b!7925889))

(assert (= (and d!2367036 res!3145166) b!7925890))

(assert (= (and b!7925890 res!3145167) b!7925891))

(declare-fun m!8306682 () Bool)

(assert (=> d!2367036 m!8306682))

(assert (=> d!2367036 m!8306074))

(declare-fun m!8306684 () Bool)

(assert (=> d!2367036 m!8306684))

(assert (=> d!2367036 m!8306076))

(declare-fun m!8306686 () Bool)

(assert (=> d!2367036 m!8306686))

(assert (=> b!7925889 m!8306076))

(declare-fun m!8306688 () Bool)

(assert (=> b!7925889 m!8306688))

(declare-fun m!8306690 () Bool)

(assert (=> b!7925890 m!8306690))

(assert (=> b!7925890 m!8306074))

(assert (=> b!7925890 m!8306474))

(assert (=> b!7925890 m!8306076))

(assert (=> b!7925890 m!8306476))

(assert (=> b!7925536 d!2367036))

(declare-fun b!7925895 () Bool)

(declare-fun e!4677705 () List!74567)

(assert (=> b!7925895 (= e!4677705 (++!18256 (list!19404 (left!56866 (left!56866 (right!57196 t!4440)))) (list!19404 (right!57196 (left!56866 (right!57196 t!4440))))))))

(declare-fun d!2367038 () Bool)

(declare-fun c!1455196 () Bool)

(assert (=> d!2367038 (= c!1455196 (is-Empty!15897 (left!56866 (right!57196 t!4440))))))

(declare-fun e!4677704 () List!74567)

(assert (=> d!2367038 (= (list!19404 (left!56866 (right!57196 t!4440))) e!4677704)))

(declare-fun b!7925894 () Bool)

(assert (=> b!7925894 (= e!4677705 (list!19406 (xs!19285 (left!56866 (right!57196 t!4440)))))))

(declare-fun b!7925893 () Bool)

(assert (=> b!7925893 (= e!4677704 e!4677705)))

(declare-fun c!1455197 () Bool)

(assert (=> b!7925893 (= c!1455197 (is-Leaf!30227 (left!56866 (right!57196 t!4440))))))

(declare-fun b!7925892 () Bool)

(assert (=> b!7925892 (= e!4677704 Nil!74443)))

(assert (= (and d!2367038 c!1455196) b!7925892))

(assert (= (and d!2367038 (not c!1455196)) b!7925893))

(assert (= (and b!7925893 c!1455197) b!7925894))

(assert (= (and b!7925893 (not c!1455197)) b!7925895))

(declare-fun m!8306692 () Bool)

(assert (=> b!7925895 m!8306692))

(declare-fun m!8306694 () Bool)

(assert (=> b!7925895 m!8306694))

(assert (=> b!7925895 m!8306692))

(assert (=> b!7925895 m!8306694))

(declare-fun m!8306696 () Bool)

(assert (=> b!7925895 m!8306696))

(assert (=> b!7925894 m!8306398))

(assert (=> b!7925536 d!2367038))

(declare-fun b!7925899 () Bool)

(declare-fun e!4677707 () List!74567)

(assert (=> b!7925899 (= e!4677707 (++!18256 (list!19404 (left!56866 (right!57196 (right!57196 t!4440)))) (list!19404 (right!57196 (right!57196 (right!57196 t!4440))))))))

(declare-fun d!2367040 () Bool)

(declare-fun c!1455198 () Bool)

(assert (=> d!2367040 (= c!1455198 (is-Empty!15897 (right!57196 (right!57196 t!4440))))))

(declare-fun e!4677706 () List!74567)

(assert (=> d!2367040 (= (list!19404 (right!57196 (right!57196 t!4440))) e!4677706)))

(declare-fun b!7925898 () Bool)

(assert (=> b!7925898 (= e!4677707 (list!19406 (xs!19285 (right!57196 (right!57196 t!4440)))))))

(declare-fun b!7925897 () Bool)

(assert (=> b!7925897 (= e!4677706 e!4677707)))

(declare-fun c!1455199 () Bool)

(assert (=> b!7925897 (= c!1455199 (is-Leaf!30227 (right!57196 (right!57196 t!4440))))))

(declare-fun b!7925896 () Bool)

(assert (=> b!7925896 (= e!4677706 Nil!74443)))

(assert (= (and d!2367040 c!1455198) b!7925896))

(assert (= (and d!2367040 (not c!1455198)) b!7925897))

(assert (= (and b!7925897 c!1455199) b!7925898))

(assert (= (and b!7925897 (not c!1455199)) b!7925899))

(declare-fun m!8306698 () Bool)

(assert (=> b!7925899 m!8306698))

(declare-fun m!8306700 () Bool)

(assert (=> b!7925899 m!8306700))

(assert (=> b!7925899 m!8306698))

(assert (=> b!7925899 m!8306700))

(declare-fun m!8306702 () Bool)

(assert (=> b!7925899 m!8306702))

(assert (=> b!7925898 m!8306454))

(assert (=> b!7925536 d!2367040))

(assert (=> d!2366722 d!2366720))

(declare-fun d!2367042 () Bool)

(assert (=> d!2367042 (= (inv!95695 _$14!1621) (<= (size!43238 (innerList!15985 _$14!1621)) 2147483647))))

(declare-fun bs!1968788 () Bool)

(assert (= bs!1968788 d!2367042))

(declare-fun m!8306704 () Bool)

(assert (=> bs!1968788 m!8306704))

(assert (=> d!2366722 d!2367042))

(declare-fun d!2367044 () Bool)

(declare-fun lt!2692836 () Int)

(assert (=> d!2367044 (>= lt!2692836 0)))

(declare-fun e!4677708 () Int)

(assert (=> d!2367044 (= lt!2692836 e!4677708)))

(declare-fun c!1455200 () Bool)

(assert (=> d!2367044 (= c!1455200 (is-Nil!74443 lt!2692751))))

(assert (=> d!2367044 (= (size!43238 lt!2692751) lt!2692836)))

(declare-fun b!7925900 () Bool)

(assert (=> b!7925900 (= e!4677708 0)))

(declare-fun b!7925901 () Bool)

(assert (=> b!7925901 (= e!4677708 (+ 1 (size!43238 (t!390166 lt!2692751))))))

(assert (= (and d!2367044 c!1455200) b!7925900))

(assert (= (and d!2367044 (not c!1455200)) b!7925901))

(declare-fun m!8306706 () Bool)

(assert (=> b!7925901 m!8306706))

(assert (=> b!7925469 d!2367044))

(assert (=> b!7925469 d!2366914))

(declare-fun d!2367046 () Bool)

(declare-fun lt!2692837 () Int)

(assert (=> d!2367046 (>= lt!2692837 0)))

(declare-fun e!4677709 () Int)

(assert (=> d!2367046 (= lt!2692837 e!4677709)))

(declare-fun c!1455201 () Bool)

(assert (=> d!2367046 (= c!1455201 (is-Nil!74443 lt!2692766))))

(assert (=> d!2367046 (= (size!43238 lt!2692766) lt!2692837)))

(declare-fun b!7925902 () Bool)

(assert (=> b!7925902 (= e!4677709 0)))

(declare-fun b!7925903 () Bool)

(assert (=> b!7925903 (= e!4677709 (+ 1 (size!43238 (t!390166 lt!2692766))))))

(assert (= (and d!2367046 c!1455201) b!7925902))

(assert (= (and d!2367046 (not c!1455201)) b!7925903))

(declare-fun m!8306708 () Bool)

(assert (=> b!7925903 m!8306708))

(assert (=> b!7925527 d!2367046))

(declare-fun d!2367048 () Bool)

(declare-fun lt!2692838 () Int)

(assert (=> d!2367048 (>= lt!2692838 0)))

(declare-fun e!4677710 () Int)

(assert (=> d!2367048 (= lt!2692838 e!4677710)))

(declare-fun c!1455202 () Bool)

(assert (=> d!2367048 (= c!1455202 (is-Nil!74443 (list!19404 (left!56866 t!4440))))))

(assert (=> d!2367048 (= (size!43238 (list!19404 (left!56866 t!4440))) lt!2692838)))

(declare-fun b!7925904 () Bool)

(assert (=> b!7925904 (= e!4677710 0)))

(declare-fun b!7925905 () Bool)

(assert (=> b!7925905 (= e!4677710 (+ 1 (size!43238 (t!390166 (list!19404 (left!56866 t!4440))))))))

(assert (= (and d!2367048 c!1455202) b!7925904))

(assert (= (and d!2367048 (not c!1455202)) b!7925905))

(assert (=> b!7925905 m!8306662))

(assert (=> b!7925527 d!2367048))

(declare-fun d!2367050 () Bool)

(declare-fun lt!2692839 () Int)

(assert (=> d!2367050 (>= lt!2692839 0)))

(declare-fun e!4677711 () Int)

(assert (=> d!2367050 (= lt!2692839 e!4677711)))

(declare-fun c!1455203 () Bool)

(assert (=> d!2367050 (= c!1455203 (is-Nil!74443 (list!19404 (right!57196 t!4440))))))

(assert (=> d!2367050 (= (size!43238 (list!19404 (right!57196 t!4440))) lt!2692839)))

(declare-fun b!7925906 () Bool)

(assert (=> b!7925906 (= e!4677711 0)))

(declare-fun b!7925907 () Bool)

(assert (=> b!7925907 (= e!4677711 (+ 1 (size!43238 (t!390166 (list!19404 (right!57196 t!4440))))))))

(assert (= (and d!2367050 c!1455203) b!7925906))

(assert (= (and d!2367050 (not c!1455203)) b!7925907))

(declare-fun m!8306710 () Bool)

(assert (=> b!7925907 m!8306710))

(assert (=> b!7925527 d!2367050))

(declare-fun d!2367052 () Bool)

(declare-fun lt!2692840 () Bool)

(assert (=> d!2367052 (= lt!2692840 (isEmpty!42769 (list!19404 (left!56866 (right!57196 lt!2692717)))))))

(assert (=> d!2367052 (= lt!2692840 (= (size!43240 (left!56866 (right!57196 lt!2692717))) 0))))

(assert (=> d!2367052 (= (isEmpty!42767 (left!56866 (right!57196 lt!2692717))) lt!2692840)))

(declare-fun bs!1968789 () Bool)

(assert (= bs!1968789 d!2367052))

(assert (=> bs!1968789 m!8306114))

(assert (=> bs!1968789 m!8306114))

(declare-fun m!8306712 () Bool)

(assert (=> bs!1968789 m!8306712))

(declare-fun m!8306714 () Bool)

(assert (=> bs!1968789 m!8306714))

(assert (=> b!7925420 d!2367052))

(assert (=> b!7925512 d!2366912))

(declare-fun d!2367054 () Bool)

(declare-fun e!4677713 () Bool)

(assert (=> d!2367054 e!4677713))

(declare-fun res!3145168 () Bool)

(assert (=> d!2367054 (=> (not res!3145168) (not e!4677713))))

(declare-fun lt!2692841 () List!74567)

(assert (=> d!2367054 (= res!3145168 (= (content!15780 lt!2692841) (set.union (content!15780 (list!19404 (left!56866 (left!56866 t!4440)))) (content!15780 (list!19404 (right!57196 (left!56866 t!4440)))))))))

(declare-fun e!4677712 () List!74567)

(assert (=> d!2367054 (= lt!2692841 e!4677712)))

(declare-fun c!1455204 () Bool)

(assert (=> d!2367054 (= c!1455204 (is-Nil!74443 (list!19404 (left!56866 (left!56866 t!4440)))))))

(assert (=> d!2367054 (= (++!18256 (list!19404 (left!56866 (left!56866 t!4440))) (list!19404 (right!57196 (left!56866 t!4440)))) lt!2692841)))

(declare-fun b!7925909 () Bool)

(assert (=> b!7925909 (= e!4677712 (Cons!74443 (h!80891 (list!19404 (left!56866 (left!56866 t!4440)))) (++!18256 (t!390166 (list!19404 (left!56866 (left!56866 t!4440)))) (list!19404 (right!57196 (left!56866 t!4440))))))))

(declare-fun b!7925911 () Bool)

(assert (=> b!7925911 (= e!4677713 (or (not (= (list!19404 (right!57196 (left!56866 t!4440))) Nil!74443)) (= lt!2692841 (list!19404 (left!56866 (left!56866 t!4440))))))))

(declare-fun b!7925908 () Bool)

(assert (=> b!7925908 (= e!4677712 (list!19404 (right!57196 (left!56866 t!4440))))))

(declare-fun b!7925910 () Bool)

(declare-fun res!3145169 () Bool)

(assert (=> b!7925910 (=> (not res!3145169) (not e!4677713))))

(assert (=> b!7925910 (= res!3145169 (= (size!43238 lt!2692841) (+ (size!43238 (list!19404 (left!56866 (left!56866 t!4440)))) (size!43238 (list!19404 (right!57196 (left!56866 t!4440)))))))))

(assert (= (and d!2367054 c!1455204) b!7925908))

(assert (= (and d!2367054 (not c!1455204)) b!7925909))

(assert (= (and d!2367054 res!3145168) b!7925910))

(assert (= (and b!7925910 res!3145169) b!7925911))

(declare-fun m!8306716 () Bool)

(assert (=> d!2367054 m!8306716))

(assert (=> d!2367054 m!8306068))

(declare-fun m!8306718 () Bool)

(assert (=> d!2367054 m!8306718))

(assert (=> d!2367054 m!8306070))

(declare-fun m!8306720 () Bool)

(assert (=> d!2367054 m!8306720))

(assert (=> b!7925909 m!8306070))

(declare-fun m!8306722 () Bool)

(assert (=> b!7925909 m!8306722))

(declare-fun m!8306724 () Bool)

(assert (=> b!7925910 m!8306724))

(assert (=> b!7925910 m!8306068))

(assert (=> b!7925910 m!8306506))

(assert (=> b!7925910 m!8306070))

(assert (=> b!7925910 m!8306508))

(assert (=> b!7925532 d!2367054))

(declare-fun b!7925915 () Bool)

(declare-fun e!4677715 () List!74567)

(assert (=> b!7925915 (= e!4677715 (++!18256 (list!19404 (left!56866 (left!56866 (left!56866 t!4440)))) (list!19404 (right!57196 (left!56866 (left!56866 t!4440))))))))

(declare-fun d!2367056 () Bool)

(declare-fun c!1455205 () Bool)

(assert (=> d!2367056 (= c!1455205 (is-Empty!15897 (left!56866 (left!56866 t!4440))))))

(declare-fun e!4677714 () List!74567)

(assert (=> d!2367056 (= (list!19404 (left!56866 (left!56866 t!4440))) e!4677714)))

(declare-fun b!7925914 () Bool)

(assert (=> b!7925914 (= e!4677715 (list!19406 (xs!19285 (left!56866 (left!56866 t!4440)))))))

(declare-fun b!7925913 () Bool)

(assert (=> b!7925913 (= e!4677714 e!4677715)))

(declare-fun c!1455206 () Bool)

(assert (=> b!7925913 (= c!1455206 (is-Leaf!30227 (left!56866 (left!56866 t!4440))))))

(declare-fun b!7925912 () Bool)

(assert (=> b!7925912 (= e!4677714 Nil!74443)))

(assert (= (and d!2367056 c!1455205) b!7925912))

(assert (= (and d!2367056 (not c!1455205)) b!7925913))

(assert (= (and b!7925913 c!1455206) b!7925914))

(assert (= (and b!7925913 (not c!1455206)) b!7925915))

(declare-fun m!8306726 () Bool)

(assert (=> b!7925915 m!8306726))

(declare-fun m!8306728 () Bool)

(assert (=> b!7925915 m!8306728))

(assert (=> b!7925915 m!8306726))

(assert (=> b!7925915 m!8306728))

(declare-fun m!8306730 () Bool)

(assert (=> b!7925915 m!8306730))

(declare-fun m!8306732 () Bool)

(assert (=> b!7925914 m!8306732))

(assert (=> b!7925532 d!2367056))

(declare-fun b!7925919 () Bool)

(declare-fun e!4677717 () List!74567)

(assert (=> b!7925919 (= e!4677717 (++!18256 (list!19404 (left!56866 (right!57196 (left!56866 t!4440)))) (list!19404 (right!57196 (right!57196 (left!56866 t!4440))))))))

(declare-fun d!2367058 () Bool)

(declare-fun c!1455207 () Bool)

(assert (=> d!2367058 (= c!1455207 (is-Empty!15897 (right!57196 (left!56866 t!4440))))))

(declare-fun e!4677716 () List!74567)

(assert (=> d!2367058 (= (list!19404 (right!57196 (left!56866 t!4440))) e!4677716)))

(declare-fun b!7925918 () Bool)

(assert (=> b!7925918 (= e!4677717 (list!19406 (xs!19285 (right!57196 (left!56866 t!4440)))))))

(declare-fun b!7925917 () Bool)

(assert (=> b!7925917 (= e!4677716 e!4677717)))

(declare-fun c!1455208 () Bool)

(assert (=> b!7925917 (= c!1455208 (is-Leaf!30227 (right!57196 (left!56866 t!4440))))))

(declare-fun b!7925916 () Bool)

(assert (=> b!7925916 (= e!4677716 Nil!74443)))

(assert (= (and d!2367058 c!1455207) b!7925916))

(assert (= (and d!2367058 (not c!1455207)) b!7925917))

(assert (= (and b!7925917 c!1455208) b!7925918))

(assert (= (and b!7925917 (not c!1455208)) b!7925919))

(declare-fun m!8306734 () Bool)

(assert (=> b!7925919 m!8306734))

(declare-fun m!8306736 () Bool)

(assert (=> b!7925919 m!8306736))

(assert (=> b!7925919 m!8306734))

(assert (=> b!7925919 m!8306736))

(declare-fun m!8306738 () Bool)

(assert (=> b!7925919 m!8306738))

(assert (=> b!7925918 m!8306388))

(assert (=> b!7925532 d!2367058))

(declare-fun d!2367060 () Bool)

(assert (=> d!2367060 (= (inv!95695 (xs!19285 (left!56866 (left!56866 t!4440)))) (<= (size!43238 (innerList!15985 (xs!19285 (left!56866 (left!56866 t!4440))))) 2147483647))))

(declare-fun bs!1968790 () Bool)

(assert (= bs!1968790 d!2367060))

(declare-fun m!8306740 () Bool)

(assert (=> bs!1968790 m!8306740))

(assert (=> b!7925562 d!2367060))

(declare-fun d!2367062 () Bool)

(assert (=> d!2367062 (= (max!0 (height!2212 (left!56866 (right!57196 t!4440))) (height!2212 (right!57196 (right!57196 t!4440)))) (ite (< (height!2212 (left!56866 (right!57196 t!4440))) (height!2212 (right!57196 (right!57196 t!4440)))) (height!2212 (right!57196 (right!57196 t!4440))) (height!2212 (left!56866 (right!57196 t!4440)))))))

(assert (=> b!7925558 d!2367062))

(assert (=> b!7925558 d!2366944))

(assert (=> b!7925558 d!2366946))

(declare-fun d!2367064 () Bool)

(declare-fun lt!2692842 () Bool)

(assert (=> d!2367064 (= lt!2692842 (isEmpty!42769 (list!19404 (right!57196 (right!57196 t!4440)))))))

(assert (=> d!2367064 (= lt!2692842 (= (size!43240 (right!57196 (right!57196 t!4440))) 0))))

(assert (=> d!2367064 (= (isEmpty!42767 (right!57196 (right!57196 t!4440))) lt!2692842)))

(declare-fun bs!1968791 () Bool)

(assert (= bs!1968791 d!2367064))

(assert (=> bs!1968791 m!8306076))

(assert (=> bs!1968791 m!8306076))

(declare-fun m!8306742 () Bool)

(assert (=> bs!1968791 m!8306742))

(assert (=> bs!1968791 m!8306124))

(assert (=> b!7925451 d!2367064))

(declare-fun b!7925920 () Bool)

(declare-fun res!3145170 () Bool)

(declare-fun e!4677719 () Bool)

(assert (=> b!7925920 (=> (not res!3145170) (not e!4677719))))

(assert (=> b!7925920 (= res!3145170 (isBalanced!4523 (right!57196 (right!57196 (left!56866 t!4440)))))))

(declare-fun b!7925921 () Bool)

(assert (=> b!7925921 (= e!4677719 (not (isEmpty!42767 (right!57196 (right!57196 (left!56866 t!4440))))))))

(declare-fun b!7925922 () Bool)

(declare-fun res!3145173 () Bool)

(assert (=> b!7925922 (=> (not res!3145173) (not e!4677719))))

(assert (=> b!7925922 (= res!3145173 (isBalanced!4523 (left!56866 (right!57196 (left!56866 t!4440)))))))

(declare-fun d!2367066 () Bool)

(declare-fun res!3145175 () Bool)

(declare-fun e!4677718 () Bool)

(assert (=> d!2367066 (=> res!3145175 e!4677718)))

(assert (=> d!2367066 (= res!3145175 (not (is-Node!15897 (right!57196 (left!56866 t!4440)))))))

(assert (=> d!2367066 (= (isBalanced!4523 (right!57196 (left!56866 t!4440))) e!4677718)))

(declare-fun b!7925923 () Bool)

(declare-fun res!3145172 () Bool)

(assert (=> b!7925923 (=> (not res!3145172) (not e!4677719))))

(assert (=> b!7925923 (= res!3145172 (not (isEmpty!42767 (left!56866 (right!57196 (left!56866 t!4440))))))))

(declare-fun b!7925924 () Bool)

(declare-fun res!3145171 () Bool)

(assert (=> b!7925924 (=> (not res!3145171) (not e!4677719))))

(assert (=> b!7925924 (= res!3145171 (<= (- (height!2212 (left!56866 (right!57196 (left!56866 t!4440)))) (height!2212 (right!57196 (right!57196 (left!56866 t!4440))))) 1))))

(declare-fun b!7925925 () Bool)

(assert (=> b!7925925 (= e!4677718 e!4677719)))

(declare-fun res!3145174 () Bool)

(assert (=> b!7925925 (=> (not res!3145174) (not e!4677719))))

(assert (=> b!7925925 (= res!3145174 (<= (- 1) (- (height!2212 (left!56866 (right!57196 (left!56866 t!4440)))) (height!2212 (right!57196 (right!57196 (left!56866 t!4440)))))))))

(assert (= (and d!2367066 (not res!3145175)) b!7925925))

(assert (= (and b!7925925 res!3145174) b!7925924))

(assert (= (and b!7925924 res!3145171) b!7925922))

(assert (= (and b!7925922 res!3145173) b!7925920))

(assert (= (and b!7925920 res!3145170) b!7925923))

(assert (= (and b!7925923 res!3145172) b!7925921))

(declare-fun m!8306744 () Bool)

(assert (=> b!7925921 m!8306744))

(declare-fun m!8306746 () Bool)

(assert (=> b!7925920 m!8306746))

(assert (=> b!7925925 m!8306526))

(assert (=> b!7925925 m!8306528))

(declare-fun m!8306748 () Bool)

(assert (=> b!7925922 m!8306748))

(declare-fun m!8306750 () Bool)

(assert (=> b!7925923 m!8306750))

(assert (=> b!7925924 m!8306526))

(assert (=> b!7925924 m!8306528))

(assert (=> b!7925497 d!2367066))

(declare-fun d!2367068 () Bool)

(declare-fun res!3145176 () Bool)

(declare-fun e!4677720 () Bool)

(assert (=> d!2367068 (=> (not res!3145176) (not e!4677720))))

(assert (=> d!2367068 (= res!3145176 (<= (size!43238 (list!19406 (xs!19285 (left!56866 (left!56866 t!4440))))) 512))))

(assert (=> d!2367068 (= (inv!95700 (left!56866 (left!56866 t!4440))) e!4677720)))

(declare-fun b!7925926 () Bool)

(declare-fun res!3145177 () Bool)

(assert (=> b!7925926 (=> (not res!3145177) (not e!4677720))))

(assert (=> b!7925926 (= res!3145177 (= (csize!32025 (left!56866 (left!56866 t!4440))) (size!43238 (list!19406 (xs!19285 (left!56866 (left!56866 t!4440)))))))))

(declare-fun b!7925927 () Bool)

(assert (=> b!7925927 (= e!4677720 (and (> (csize!32025 (left!56866 (left!56866 t!4440))) 0) (<= (csize!32025 (left!56866 (left!56866 t!4440))) 512)))))

(assert (= (and d!2367068 res!3145176) b!7925926))

(assert (= (and b!7925926 res!3145177) b!7925927))

(assert (=> d!2367068 m!8306732))

(assert (=> d!2367068 m!8306732))

(declare-fun m!8306752 () Bool)

(assert (=> d!2367068 m!8306752))

(assert (=> b!7925926 m!8306732))

(assert (=> b!7925926 m!8306732))

(assert (=> b!7925926 m!8306752))

(assert (=> b!7925431 d!2367068))

(declare-fun d!2367070 () Bool)

(declare-fun lt!2692843 () Bool)

(assert (=> d!2367070 (= lt!2692843 (isEmpty!42769 (list!19404 (right!57196 (left!56866 t!4440)))))))

(assert (=> d!2367070 (= lt!2692843 (= (size!43240 (right!57196 (left!56866 t!4440))) 0))))

(assert (=> d!2367070 (= (isEmpty!42767 (right!57196 (left!56866 t!4440))) lt!2692843)))

(declare-fun bs!1968792 () Bool)

(assert (= bs!1968792 d!2367070))

(assert (=> bs!1968792 m!8306070))

(assert (=> bs!1968792 m!8306070))

(declare-fun m!8306754 () Bool)

(assert (=> bs!1968792 m!8306754))

(assert (=> bs!1968792 m!8305950))

(assert (=> b!7925498 d!2367070))

(declare-fun b!7925928 () Bool)

(declare-fun res!3145178 () Bool)

(declare-fun e!4677722 () Bool)

(assert (=> b!7925928 (=> (not res!3145178) (not e!4677722))))

(assert (=> b!7925928 (= res!3145178 (isBalanced!4523 (right!57196 (left!56866 (right!57196 t!4440)))))))

(declare-fun b!7925929 () Bool)

(assert (=> b!7925929 (= e!4677722 (not (isEmpty!42767 (right!57196 (left!56866 (right!57196 t!4440))))))))

(declare-fun b!7925930 () Bool)

(declare-fun res!3145181 () Bool)

(assert (=> b!7925930 (=> (not res!3145181) (not e!4677722))))

(assert (=> b!7925930 (= res!3145181 (isBalanced!4523 (left!56866 (left!56866 (right!57196 t!4440)))))))

(declare-fun d!2367072 () Bool)

(declare-fun res!3145183 () Bool)

(declare-fun e!4677721 () Bool)

(assert (=> d!2367072 (=> res!3145183 e!4677721)))

(assert (=> d!2367072 (= res!3145183 (not (is-Node!15897 (left!56866 (right!57196 t!4440)))))))

(assert (=> d!2367072 (= (isBalanced!4523 (left!56866 (right!57196 t!4440))) e!4677721)))

(declare-fun b!7925931 () Bool)

(declare-fun res!3145180 () Bool)

(assert (=> b!7925931 (=> (not res!3145180) (not e!4677722))))

(assert (=> b!7925931 (= res!3145180 (not (isEmpty!42767 (left!56866 (left!56866 (right!57196 t!4440))))))))

(declare-fun b!7925932 () Bool)

(declare-fun res!3145179 () Bool)

(assert (=> b!7925932 (=> (not res!3145179) (not e!4677722))))

(assert (=> b!7925932 (= res!3145179 (<= (- (height!2212 (left!56866 (left!56866 (right!57196 t!4440)))) (height!2212 (right!57196 (left!56866 (right!57196 t!4440))))) 1))))

(declare-fun b!7925933 () Bool)

(assert (=> b!7925933 (= e!4677721 e!4677722)))

(declare-fun res!3145182 () Bool)

(assert (=> b!7925933 (=> (not res!3145182) (not e!4677722))))

(assert (=> b!7925933 (= res!3145182 (<= (- 1) (- (height!2212 (left!56866 (left!56866 (right!57196 t!4440)))) (height!2212 (right!57196 (left!56866 (right!57196 t!4440)))))))))

(assert (= (and d!2367072 (not res!3145183)) b!7925933))

(assert (= (and b!7925933 res!3145182) b!7925932))

(assert (= (and b!7925932 res!3145179) b!7925930))

(assert (= (and b!7925930 res!3145181) b!7925928))

(assert (= (and b!7925928 res!3145178) b!7925931))

(assert (= (and b!7925931 res!3145180) b!7925929))

(declare-fun m!8306756 () Bool)

(assert (=> b!7925929 m!8306756))

(declare-fun m!8306758 () Bool)

(assert (=> b!7925928 m!8306758))

(assert (=> b!7925933 m!8306562))

(assert (=> b!7925933 m!8306564))

(declare-fun m!8306760 () Bool)

(assert (=> b!7925930 m!8306760))

(declare-fun m!8306762 () Bool)

(assert (=> b!7925931 m!8306762))

(assert (=> b!7925932 m!8306562))

(assert (=> b!7925932 m!8306564))

(assert (=> b!7925452 d!2367072))

(declare-fun d!2367074 () Bool)

(declare-fun e!4677724 () Bool)

(assert (=> d!2367074 e!4677724))

(declare-fun res!3145184 () Bool)

(assert (=> d!2367074 (=> (not res!3145184) (not e!4677724))))

(declare-fun lt!2692844 () List!74567)

(assert (=> d!2367074 (= res!3145184 (= (content!15780 lt!2692844) (set.union (content!15780 (list!19404 (left!56866 (right!57196 lt!2692717)))) (content!15780 (list!19404 (right!57196 (right!57196 lt!2692717)))))))))

(declare-fun e!4677723 () List!74567)

(assert (=> d!2367074 (= lt!2692844 e!4677723)))

(declare-fun c!1455209 () Bool)

(assert (=> d!2367074 (= c!1455209 (is-Nil!74443 (list!19404 (left!56866 (right!57196 lt!2692717)))))))

(assert (=> d!2367074 (= (++!18256 (list!19404 (left!56866 (right!57196 lt!2692717))) (list!19404 (right!57196 (right!57196 lt!2692717)))) lt!2692844)))

(declare-fun b!7925935 () Bool)

(assert (=> b!7925935 (= e!4677723 (Cons!74443 (h!80891 (list!19404 (left!56866 (right!57196 lt!2692717)))) (++!18256 (t!390166 (list!19404 (left!56866 (right!57196 lt!2692717)))) (list!19404 (right!57196 (right!57196 lt!2692717))))))))

(declare-fun b!7925937 () Bool)

(assert (=> b!7925937 (= e!4677724 (or (not (= (list!19404 (right!57196 (right!57196 lt!2692717))) Nil!74443)) (= lt!2692844 (list!19404 (left!56866 (right!57196 lt!2692717))))))))

(declare-fun b!7925934 () Bool)

(assert (=> b!7925934 (= e!4677723 (list!19404 (right!57196 (right!57196 lt!2692717))))))

(declare-fun b!7925936 () Bool)

(declare-fun res!3145185 () Bool)

(assert (=> b!7925936 (=> (not res!3145185) (not e!4677724))))

(assert (=> b!7925936 (= res!3145185 (= (size!43238 lt!2692844) (+ (size!43238 (list!19404 (left!56866 (right!57196 lt!2692717)))) (size!43238 (list!19404 (right!57196 (right!57196 lt!2692717)))))))))

(assert (= (and d!2367074 c!1455209) b!7925934))

(assert (= (and d!2367074 (not c!1455209)) b!7925935))

(assert (= (and d!2367074 res!3145184) b!7925936))

(assert (= (and b!7925936 res!3145185) b!7925937))

(declare-fun m!8306764 () Bool)

(assert (=> d!2367074 m!8306764))

(assert (=> d!2367074 m!8306114))

(declare-fun m!8306766 () Bool)

(assert (=> d!2367074 m!8306766))

(assert (=> d!2367074 m!8306116))

(declare-fun m!8306768 () Bool)

(assert (=> d!2367074 m!8306768))

(assert (=> b!7925935 m!8306116))

(declare-fun m!8306770 () Bool)

(assert (=> b!7925935 m!8306770))

(declare-fun m!8306772 () Bool)

(assert (=> b!7925936 m!8306772))

(assert (=> b!7925936 m!8306114))

(declare-fun m!8306774 () Bool)

(assert (=> b!7925936 m!8306774))

(assert (=> b!7925936 m!8306116))

(declare-fun m!8306776 () Bool)

(assert (=> b!7925936 m!8306776))

(assert (=> b!7925556 d!2367074))

(declare-fun b!7925941 () Bool)

(declare-fun e!4677726 () List!74567)

(assert (=> b!7925941 (= e!4677726 (++!18256 (list!19404 (left!56866 (left!56866 (right!57196 lt!2692717)))) (list!19404 (right!57196 (left!56866 (right!57196 lt!2692717))))))))

(declare-fun d!2367076 () Bool)

(declare-fun c!1455210 () Bool)

(assert (=> d!2367076 (= c!1455210 (is-Empty!15897 (left!56866 (right!57196 lt!2692717))))))

(declare-fun e!4677725 () List!74567)

(assert (=> d!2367076 (= (list!19404 (left!56866 (right!57196 lt!2692717))) e!4677725)))

(declare-fun b!7925940 () Bool)

(assert (=> b!7925940 (= e!4677726 (list!19406 (xs!19285 (left!56866 (right!57196 lt!2692717)))))))

(declare-fun b!7925939 () Bool)

(assert (=> b!7925939 (= e!4677725 e!4677726)))

(declare-fun c!1455211 () Bool)

(assert (=> b!7925939 (= c!1455211 (is-Leaf!30227 (left!56866 (right!57196 lt!2692717))))))

(declare-fun b!7925938 () Bool)

(assert (=> b!7925938 (= e!4677725 Nil!74443)))

(assert (= (and d!2367076 c!1455210) b!7925938))

(assert (= (and d!2367076 (not c!1455210)) b!7925939))

(assert (= (and b!7925939 c!1455211) b!7925940))

(assert (= (and b!7925939 (not c!1455211)) b!7925941))

(declare-fun m!8306778 () Bool)

(assert (=> b!7925941 m!8306778))

(declare-fun m!8306780 () Bool)

(assert (=> b!7925941 m!8306780))

(assert (=> b!7925941 m!8306778))

(assert (=> b!7925941 m!8306780))

(declare-fun m!8306782 () Bool)

(assert (=> b!7925941 m!8306782))

(declare-fun m!8306784 () Bool)

(assert (=> b!7925940 m!8306784))

(assert (=> b!7925556 d!2367076))

(declare-fun b!7925945 () Bool)

(declare-fun e!4677728 () List!74567)

(assert (=> b!7925945 (= e!4677728 (++!18256 (list!19404 (left!56866 (right!57196 (right!57196 lt!2692717)))) (list!19404 (right!57196 (right!57196 (right!57196 lt!2692717))))))))

(declare-fun d!2367078 () Bool)

(declare-fun c!1455212 () Bool)

(assert (=> d!2367078 (= c!1455212 (is-Empty!15897 (right!57196 (right!57196 lt!2692717))))))

(declare-fun e!4677727 () List!74567)

(assert (=> d!2367078 (= (list!19404 (right!57196 (right!57196 lt!2692717))) e!4677727)))

(declare-fun b!7925944 () Bool)

(assert (=> b!7925944 (= e!4677728 (list!19406 (xs!19285 (right!57196 (right!57196 lt!2692717)))))))

(declare-fun b!7925943 () Bool)

(assert (=> b!7925943 (= e!4677727 e!4677728)))

(declare-fun c!1455213 () Bool)

(assert (=> b!7925943 (= c!1455213 (is-Leaf!30227 (right!57196 (right!57196 lt!2692717))))))

(declare-fun b!7925942 () Bool)

(assert (=> b!7925942 (= e!4677727 Nil!74443)))

(assert (= (and d!2367078 c!1455212) b!7925942))

(assert (= (and d!2367078 (not c!1455212)) b!7925943))

(assert (= (and b!7925943 c!1455213) b!7925944))

(assert (= (and b!7925943 (not c!1455213)) b!7925945))

(declare-fun m!8306786 () Bool)

(assert (=> b!7925945 m!8306786))

(declare-fun m!8306788 () Bool)

(assert (=> b!7925945 m!8306788))

(assert (=> b!7925945 m!8306786))

(assert (=> b!7925945 m!8306788))

(declare-fun m!8306790 () Bool)

(assert (=> b!7925945 m!8306790))

(declare-fun m!8306792 () Bool)

(assert (=> b!7925944 m!8306792))

(assert (=> b!7925556 d!2367078))

(assert (=> b!7925502 d!2366902))

(assert (=> b!7925502 d!2366904))

(assert (=> b!7925339 d!2366768))

(assert (=> b!7925339 d!2366770))

(declare-fun d!2367080 () Bool)

(declare-fun lt!2692845 () (_ BitVec 32))

(assert (=> d!2367080 (and (bvsle #b00000000000000000000000000000000 lt!2692845) (bvsle lt!2692845 #b01111111111111111111111111111111))))

(declare-fun e!4677729 () (_ BitVec 32))

(assert (=> d!2367080 (= lt!2692845 e!4677729)))

(declare-fun c!1455214 () Bool)

(assert (=> d!2367080 (= c!1455214 (is-Nil!74443 lt!2692751))))

(assert (=> d!2367080 (= (isize!116 lt!2692751) lt!2692845)))

(declare-fun b!7925946 () Bool)

(assert (=> b!7925946 (= e!4677729 #b00000000000000000000000000000000)))

(declare-fun b!7925947 () Bool)

(declare-fun lt!2692846 () (_ BitVec 32))

(assert (=> b!7925947 (= e!4677729 (ite (= lt!2692846 #b01111111111111111111111111111111) lt!2692846 (bvadd #b00000000000000000000000000000001 lt!2692846)))))

(assert (=> b!7925947 (= lt!2692846 (isize!116 (t!390166 lt!2692751)))))

(assert (= (and d!2367080 c!1455214) b!7925946))

(assert (= (and d!2367080 (not c!1455214)) b!7925947))

(declare-fun m!8306794 () Bool)

(assert (=> b!7925947 m!8306794))

(assert (=> bm!735100 d!2367080))

(declare-fun d!2367082 () Bool)

(declare-fun c!1455215 () Bool)

(assert (=> d!2367082 (= c!1455215 (is-Node!15897 (left!56866 (left!56866 (right!57196 t!4440)))))))

(declare-fun e!4677730 () Bool)

(assert (=> d!2367082 (= (inv!95696 (left!56866 (left!56866 (right!57196 t!4440)))) e!4677730)))

(declare-fun b!7925948 () Bool)

(assert (=> b!7925948 (= e!4677730 (inv!95699 (left!56866 (left!56866 (right!57196 t!4440)))))))

(declare-fun b!7925949 () Bool)

(declare-fun e!4677731 () Bool)

(assert (=> b!7925949 (= e!4677730 e!4677731)))

(declare-fun res!3145186 () Bool)

(assert (=> b!7925949 (= res!3145186 (not (is-Leaf!30227 (left!56866 (left!56866 (right!57196 t!4440))))))))

(assert (=> b!7925949 (=> res!3145186 e!4677731)))

(declare-fun b!7925950 () Bool)

(assert (=> b!7925950 (= e!4677731 (inv!95700 (left!56866 (left!56866 (right!57196 t!4440)))))))

(assert (= (and d!2367082 c!1455215) b!7925948))

(assert (= (and d!2367082 (not c!1455215)) b!7925949))

(assert (= (and b!7925949 (not res!3145186)) b!7925950))

(declare-fun m!8306796 () Bool)

(assert (=> b!7925948 m!8306796))

(declare-fun m!8306798 () Bool)

(assert (=> b!7925950 m!8306798))

(assert (=> b!7925568 d!2367082))

(declare-fun d!2367084 () Bool)

(declare-fun c!1455216 () Bool)

(assert (=> d!2367084 (= c!1455216 (is-Node!15897 (right!57196 (left!56866 (right!57196 t!4440)))))))

(declare-fun e!4677732 () Bool)

(assert (=> d!2367084 (= (inv!95696 (right!57196 (left!56866 (right!57196 t!4440)))) e!4677732)))

(declare-fun b!7925951 () Bool)

(assert (=> b!7925951 (= e!4677732 (inv!95699 (right!57196 (left!56866 (right!57196 t!4440)))))))

(declare-fun b!7925952 () Bool)

(declare-fun e!4677733 () Bool)

(assert (=> b!7925952 (= e!4677732 e!4677733)))

(declare-fun res!3145187 () Bool)

(assert (=> b!7925952 (= res!3145187 (not (is-Leaf!30227 (right!57196 (left!56866 (right!57196 t!4440))))))))

(assert (=> b!7925952 (=> res!3145187 e!4677733)))

(declare-fun b!7925953 () Bool)

(assert (=> b!7925953 (= e!4677733 (inv!95700 (right!57196 (left!56866 (right!57196 t!4440)))))))

(assert (= (and d!2367084 c!1455216) b!7925951))

(assert (= (and d!2367084 (not c!1455216)) b!7925952))

(assert (= (and b!7925952 (not res!3145187)) b!7925953))

(declare-fun m!8306800 () Bool)

(assert (=> b!7925951 m!8306800))

(declare-fun m!8306802 () Bool)

(assert (=> b!7925953 m!8306802))

(assert (=> b!7925568 d!2367084))

(declare-fun d!2367086 () Bool)

(declare-fun c!1455217 () Bool)

(assert (=> d!2367086 (= c!1455217 (is-Node!15897 (left!56866 (right!57196 (left!56866 t!4440)))))))

(declare-fun e!4677734 () Bool)

(assert (=> d!2367086 (= (inv!95696 (left!56866 (right!57196 (left!56866 t!4440)))) e!4677734)))

(declare-fun b!7925954 () Bool)

(assert (=> b!7925954 (= e!4677734 (inv!95699 (left!56866 (right!57196 (left!56866 t!4440)))))))

(declare-fun b!7925955 () Bool)

(declare-fun e!4677735 () Bool)

(assert (=> b!7925955 (= e!4677734 e!4677735)))

(declare-fun res!3145188 () Bool)

(assert (=> b!7925955 (= res!3145188 (not (is-Leaf!30227 (left!56866 (right!57196 (left!56866 t!4440))))))))

(assert (=> b!7925955 (=> res!3145188 e!4677735)))

(declare-fun b!7925956 () Bool)

(assert (=> b!7925956 (= e!4677735 (inv!95700 (left!56866 (right!57196 (left!56866 t!4440)))))))

(assert (= (and d!2367086 c!1455217) b!7925954))

(assert (= (and d!2367086 (not c!1455217)) b!7925955))

(assert (= (and b!7925955 (not res!3145188)) b!7925956))

(declare-fun m!8306804 () Bool)

(assert (=> b!7925954 m!8306804))

(declare-fun m!8306806 () Bool)

(assert (=> b!7925956 m!8306806))

(assert (=> b!7925564 d!2367086))

(declare-fun d!2367088 () Bool)

(declare-fun c!1455218 () Bool)

(assert (=> d!2367088 (= c!1455218 (is-Node!15897 (right!57196 (right!57196 (left!56866 t!4440)))))))

(declare-fun e!4677736 () Bool)

(assert (=> d!2367088 (= (inv!95696 (right!57196 (right!57196 (left!56866 t!4440)))) e!4677736)))

(declare-fun b!7925957 () Bool)

(assert (=> b!7925957 (= e!4677736 (inv!95699 (right!57196 (right!57196 (left!56866 t!4440)))))))

(declare-fun b!7925958 () Bool)

(declare-fun e!4677737 () Bool)

(assert (=> b!7925958 (= e!4677736 e!4677737)))

(declare-fun res!3145189 () Bool)

(assert (=> b!7925958 (= res!3145189 (not (is-Leaf!30227 (right!57196 (right!57196 (left!56866 t!4440))))))))

(assert (=> b!7925958 (=> res!3145189 e!4677737)))

(declare-fun b!7925959 () Bool)

(assert (=> b!7925959 (= e!4677737 (inv!95700 (right!57196 (right!57196 (left!56866 t!4440)))))))

(assert (= (and d!2367088 c!1455218) b!7925957))

(assert (= (and d!2367088 (not c!1455218)) b!7925958))

(assert (= (and b!7925958 (not res!3145189)) b!7925959))

(declare-fun m!8306808 () Bool)

(assert (=> b!7925957 m!8306808))

(declare-fun m!8306810 () Bool)

(assert (=> b!7925959 m!8306810))

(assert (=> b!7925564 d!2367088))

(declare-fun d!2367090 () Bool)

(declare-fun lt!2692847 () Bool)

(assert (=> d!2367090 (= lt!2692847 (isEmpty!42769 (list!19404 (left!56866 (left!56866 lt!2692717)))))))

(assert (=> d!2367090 (= lt!2692847 (= (size!43240 (left!56866 (left!56866 lt!2692717))) 0))))

(assert (=> d!2367090 (= (isEmpty!42767 (left!56866 (left!56866 lt!2692717))) lt!2692847)))

(declare-fun bs!1968793 () Bool)

(assert (= bs!1968793 d!2367090))

(assert (=> bs!1968793 m!8306106))

(assert (=> bs!1968793 m!8306106))

(declare-fun m!8306812 () Bool)

(assert (=> bs!1968793 m!8306812))

(declare-fun m!8306814 () Bool)

(assert (=> bs!1968793 m!8306814))

(assert (=> b!7925459 d!2367090))

(declare-fun d!2367092 () Bool)

(declare-fun c!1455219 () Bool)

(assert (=> d!2367092 (= c!1455219 (is-Nil!74443 (t!390166 lt!2692734)))))

(declare-fun e!4677738 () (Set T!145774))

(assert (=> d!2367092 (= (content!15780 (t!390166 lt!2692734)) e!4677738)))

(declare-fun b!7925960 () Bool)

(assert (=> b!7925960 (= e!4677738 (as set.empty (Set T!145774)))))

(declare-fun b!7925961 () Bool)

(assert (=> b!7925961 (= e!4677738 (set.union (set.insert (h!80891 (t!390166 lt!2692734)) (as set.empty (Set T!145774))) (content!15780 (t!390166 (t!390166 lt!2692734)))))))

(assert (= (and d!2367092 c!1455219) b!7925960))

(assert (= (and d!2367092 (not c!1455219)) b!7925961))

(declare-fun m!8306816 () Bool)

(assert (=> b!7925961 m!8306816))

(declare-fun m!8306818 () Bool)

(assert (=> b!7925961 m!8306818))

(assert (=> b!7925489 d!2367092))

(declare-fun tp!2358541 () Bool)

(declare-fun e!4677739 () Bool)

(declare-fun b!7925962 () Bool)

(declare-fun tp!2358542 () Bool)

(assert (=> b!7925962 (= e!4677739 (and (inv!95696 (left!56866 (left!56866 (left!56866 (left!56866 t!4440))))) tp!2358542 (inv!95696 (right!57196 (left!56866 (left!56866 (left!56866 t!4440))))) tp!2358541))))

(declare-fun b!7925964 () Bool)

(declare-fun e!4677740 () Bool)

(declare-fun tp!2358543 () Bool)

(assert (=> b!7925964 (= e!4677740 tp!2358543)))

(declare-fun b!7925963 () Bool)

(assert (=> b!7925963 (= e!4677739 (and (inv!95695 (xs!19285 (left!56866 (left!56866 (left!56866 t!4440))))) e!4677740))))

(assert (=> b!7925561 (= tp!2358510 (and (inv!95696 (left!56866 (left!56866 (left!56866 t!4440)))) e!4677739))))

(assert (= (and b!7925561 (is-Node!15897 (left!56866 (left!56866 (left!56866 t!4440))))) b!7925962))

(assert (= b!7925963 b!7925964))

(assert (= (and b!7925561 (is-Leaf!30227 (left!56866 (left!56866 (left!56866 t!4440))))) b!7925963))

(declare-fun m!8306820 () Bool)

(assert (=> b!7925962 m!8306820))

(declare-fun m!8306822 () Bool)

(assert (=> b!7925962 m!8306822))

(declare-fun m!8306824 () Bool)

(assert (=> b!7925963 m!8306824))

(assert (=> b!7925561 m!8306128))

(declare-fun e!4677741 () Bool)

(declare-fun tp!2358545 () Bool)

(declare-fun b!7925965 () Bool)

(declare-fun tp!2358544 () Bool)

(assert (=> b!7925965 (= e!4677741 (and (inv!95696 (left!56866 (right!57196 (left!56866 (left!56866 t!4440))))) tp!2358545 (inv!95696 (right!57196 (right!57196 (left!56866 (left!56866 t!4440))))) tp!2358544))))

(declare-fun b!7925967 () Bool)

(declare-fun e!4677742 () Bool)

(declare-fun tp!2358546 () Bool)

(assert (=> b!7925967 (= e!4677742 tp!2358546)))

(declare-fun b!7925966 () Bool)

(assert (=> b!7925966 (= e!4677741 (and (inv!95695 (xs!19285 (right!57196 (left!56866 (left!56866 t!4440))))) e!4677742))))

(assert (=> b!7925561 (= tp!2358509 (and (inv!95696 (right!57196 (left!56866 (left!56866 t!4440)))) e!4677741))))

(assert (= (and b!7925561 (is-Node!15897 (right!57196 (left!56866 (left!56866 t!4440))))) b!7925965))

(assert (= b!7925966 b!7925967))

(assert (= (and b!7925561 (is-Leaf!30227 (right!57196 (left!56866 (left!56866 t!4440))))) b!7925966))

(declare-fun m!8306826 () Bool)

(assert (=> b!7925965 m!8306826))

(declare-fun m!8306828 () Bool)

(assert (=> b!7925965 m!8306828))

(declare-fun m!8306830 () Bool)

(assert (=> b!7925966 m!8306830))

(assert (=> b!7925561 m!8306130))

(declare-fun b!7925968 () Bool)

(declare-fun e!4677743 () Bool)

(declare-fun tp!2358547 () Bool)

(assert (=> b!7925968 (= e!4677743 (and tp_is_empty!53219 tp!2358547))))

(assert (=> b!7925483 (= tp!2358507 e!4677743)))

(assert (= (and b!7925483 (is-Cons!74443 (innerList!15985 _$14!1621))) b!7925968))

(declare-fun b!7925969 () Bool)

(declare-fun tp!2358549 () Bool)

(declare-fun tp!2358548 () Bool)

(declare-fun e!4677744 () Bool)

(assert (=> b!7925969 (= e!4677744 (and (inv!95696 (left!56866 (left!56866 (left!56866 (right!57196 t!4440))))) tp!2358549 (inv!95696 (right!57196 (left!56866 (left!56866 (right!57196 t!4440))))) tp!2358548))))

(declare-fun b!7925971 () Bool)

(declare-fun e!4677745 () Bool)

(declare-fun tp!2358550 () Bool)

(assert (=> b!7925971 (= e!4677745 tp!2358550)))

(declare-fun b!7925970 () Bool)

(assert (=> b!7925970 (= e!4677744 (and (inv!95695 (xs!19285 (left!56866 (left!56866 (right!57196 t!4440))))) e!4677745))))

(assert (=> b!7925568 (= tp!2358517 (and (inv!95696 (left!56866 (left!56866 (right!57196 t!4440)))) e!4677744))))

(assert (= (and b!7925568 (is-Node!15897 (left!56866 (left!56866 (right!57196 t!4440))))) b!7925969))

(assert (= b!7925970 b!7925971))

(assert (= (and b!7925568 (is-Leaf!30227 (left!56866 (left!56866 (right!57196 t!4440))))) b!7925970))

(declare-fun m!8306832 () Bool)

(assert (=> b!7925969 m!8306832))

(declare-fun m!8306834 () Bool)

(assert (=> b!7925969 m!8306834))

(declare-fun m!8306836 () Bool)

(assert (=> b!7925970 m!8306836))

(assert (=> b!7925568 m!8306140))

(declare-fun tp!2358551 () Bool)

(declare-fun b!7925972 () Bool)

(declare-fun e!4677746 () Bool)

(declare-fun tp!2358552 () Bool)

(assert (=> b!7925972 (= e!4677746 (and (inv!95696 (left!56866 (right!57196 (left!56866 (right!57196 t!4440))))) tp!2358552 (inv!95696 (right!57196 (right!57196 (left!56866 (right!57196 t!4440))))) tp!2358551))))

(declare-fun b!7925974 () Bool)

(declare-fun e!4677747 () Bool)

(declare-fun tp!2358553 () Bool)

(assert (=> b!7925974 (= e!4677747 tp!2358553)))

(declare-fun b!7925973 () Bool)

(assert (=> b!7925973 (= e!4677746 (and (inv!95695 (xs!19285 (right!57196 (left!56866 (right!57196 t!4440))))) e!4677747))))

(assert (=> b!7925568 (= tp!2358516 (and (inv!95696 (right!57196 (left!56866 (right!57196 t!4440)))) e!4677746))))

(assert (= (and b!7925568 (is-Node!15897 (right!57196 (left!56866 (right!57196 t!4440))))) b!7925972))

(assert (= b!7925973 b!7925974))

(assert (= (and b!7925568 (is-Leaf!30227 (right!57196 (left!56866 (right!57196 t!4440))))) b!7925973))

(declare-fun m!8306838 () Bool)

(assert (=> b!7925972 m!8306838))

(declare-fun m!8306840 () Bool)

(assert (=> b!7925972 m!8306840))

(declare-fun m!8306842 () Bool)

(assert (=> b!7925973 m!8306842))

(assert (=> b!7925568 m!8306142))

(declare-fun b!7925975 () Bool)

(declare-fun e!4677748 () Bool)

(declare-fun tp!2358554 () Bool)

(assert (=> b!7925975 (= e!4677748 (and tp_is_empty!53219 tp!2358554))))

(assert (=> b!7925574 (= tp!2358522 e!4677748)))

(assert (= (and b!7925574 (is-Cons!74443 (t!390166 (innerList!15985 (xs!19285 (left!56866 t!4440)))))) b!7925975))

(declare-fun tp!2358555 () Bool)

(declare-fun e!4677749 () Bool)

(declare-fun b!7925976 () Bool)

(declare-fun tp!2358556 () Bool)

(assert (=> b!7925976 (= e!4677749 (and (inv!95696 (left!56866 (left!56866 (right!57196 (right!57196 t!4440))))) tp!2358556 (inv!95696 (right!57196 (left!56866 (right!57196 (right!57196 t!4440))))) tp!2358555))))

(declare-fun b!7925978 () Bool)

(declare-fun e!4677750 () Bool)

(declare-fun tp!2358557 () Bool)

(assert (=> b!7925978 (= e!4677750 tp!2358557)))

(declare-fun b!7925977 () Bool)

(assert (=> b!7925977 (= e!4677749 (and (inv!95695 (xs!19285 (left!56866 (right!57196 (right!57196 t!4440))))) e!4677750))))

(assert (=> b!7925571 (= tp!2358520 (and (inv!95696 (left!56866 (right!57196 (right!57196 t!4440)))) e!4677749))))

(assert (= (and b!7925571 (is-Node!15897 (left!56866 (right!57196 (right!57196 t!4440))))) b!7925976))

(assert (= b!7925977 b!7925978))

(assert (= (and b!7925571 (is-Leaf!30227 (left!56866 (right!57196 (right!57196 t!4440))))) b!7925977))

(declare-fun m!8306844 () Bool)

(assert (=> b!7925976 m!8306844))

(declare-fun m!8306846 () Bool)

(assert (=> b!7925976 m!8306846))

(declare-fun m!8306848 () Bool)

(assert (=> b!7925977 m!8306848))

(assert (=> b!7925571 m!8306146))

(declare-fun b!7925979 () Bool)

(declare-fun tp!2358559 () Bool)

(declare-fun tp!2358558 () Bool)

(declare-fun e!4677751 () Bool)

(assert (=> b!7925979 (= e!4677751 (and (inv!95696 (left!56866 (right!57196 (right!57196 (right!57196 t!4440))))) tp!2358559 (inv!95696 (right!57196 (right!57196 (right!57196 (right!57196 t!4440))))) tp!2358558))))

(declare-fun b!7925981 () Bool)

(declare-fun e!4677752 () Bool)

(declare-fun tp!2358560 () Bool)

(assert (=> b!7925981 (= e!4677752 tp!2358560)))

(declare-fun b!7925980 () Bool)

(assert (=> b!7925980 (= e!4677751 (and (inv!95695 (xs!19285 (right!57196 (right!57196 (right!57196 t!4440))))) e!4677752))))

(assert (=> b!7925571 (= tp!2358519 (and (inv!95696 (right!57196 (right!57196 (right!57196 t!4440)))) e!4677751))))

(assert (= (and b!7925571 (is-Node!15897 (right!57196 (right!57196 (right!57196 t!4440))))) b!7925979))

(assert (= b!7925980 b!7925981))

(assert (= (and b!7925571 (is-Leaf!30227 (right!57196 (right!57196 (right!57196 t!4440))))) b!7925980))

(declare-fun m!8306850 () Bool)

(assert (=> b!7925979 m!8306850))

(declare-fun m!8306852 () Bool)

(assert (=> b!7925979 m!8306852))

(declare-fun m!8306854 () Bool)

(assert (=> b!7925980 m!8306854))

(assert (=> b!7925571 m!8306148))

(declare-fun tp!2358561 () Bool)

(declare-fun e!4677753 () Bool)

(declare-fun tp!2358562 () Bool)

(declare-fun b!7925982 () Bool)

(assert (=> b!7925982 (= e!4677753 (and (inv!95696 (left!56866 (left!56866 (right!57196 (left!56866 t!4440))))) tp!2358562 (inv!95696 (right!57196 (left!56866 (right!57196 (left!56866 t!4440))))) tp!2358561))))

(declare-fun b!7925984 () Bool)

(declare-fun e!4677754 () Bool)

(declare-fun tp!2358563 () Bool)

(assert (=> b!7925984 (= e!4677754 tp!2358563)))

(declare-fun b!7925983 () Bool)

(assert (=> b!7925983 (= e!4677753 (and (inv!95695 (xs!19285 (left!56866 (right!57196 (left!56866 t!4440))))) e!4677754))))

(assert (=> b!7925564 (= tp!2358513 (and (inv!95696 (left!56866 (right!57196 (left!56866 t!4440)))) e!4677753))))

(assert (= (and b!7925564 (is-Node!15897 (left!56866 (right!57196 (left!56866 t!4440))))) b!7925982))

(assert (= b!7925983 b!7925984))

(assert (= (and b!7925564 (is-Leaf!30227 (left!56866 (right!57196 (left!56866 t!4440))))) b!7925983))

(declare-fun m!8306856 () Bool)

(assert (=> b!7925982 m!8306856))

(declare-fun m!8306858 () Bool)

(assert (=> b!7925982 m!8306858))

(declare-fun m!8306860 () Bool)

(assert (=> b!7925983 m!8306860))

(assert (=> b!7925564 m!8306134))

(declare-fun tp!2358565 () Bool)

(declare-fun tp!2358564 () Bool)

(declare-fun e!4677755 () Bool)

(declare-fun b!7925985 () Bool)

(assert (=> b!7925985 (= e!4677755 (and (inv!95696 (left!56866 (right!57196 (right!57196 (left!56866 t!4440))))) tp!2358565 (inv!95696 (right!57196 (right!57196 (right!57196 (left!56866 t!4440))))) tp!2358564))))

(declare-fun b!7925987 () Bool)

(declare-fun e!4677756 () Bool)

(declare-fun tp!2358566 () Bool)

(assert (=> b!7925987 (= e!4677756 tp!2358566)))

(declare-fun b!7925986 () Bool)

(assert (=> b!7925986 (= e!4677755 (and (inv!95695 (xs!19285 (right!57196 (right!57196 (left!56866 t!4440))))) e!4677756))))

(assert (=> b!7925564 (= tp!2358512 (and (inv!95696 (right!57196 (right!57196 (left!56866 t!4440)))) e!4677755))))

(assert (= (and b!7925564 (is-Node!15897 (right!57196 (right!57196 (left!56866 t!4440))))) b!7925985))

(assert (= b!7925986 b!7925987))

(assert (= (and b!7925564 (is-Leaf!30227 (right!57196 (right!57196 (left!56866 t!4440))))) b!7925986))

(declare-fun m!8306862 () Bool)

(assert (=> b!7925985 m!8306862))

(declare-fun m!8306864 () Bool)

(assert (=> b!7925985 m!8306864))

(declare-fun m!8306866 () Bool)

(assert (=> b!7925986 m!8306866))

(assert (=> b!7925564 m!8306136))

(declare-fun b!7925988 () Bool)

(declare-fun e!4677757 () Bool)

(declare-fun tp!2358567 () Bool)

(assert (=> b!7925988 (= e!4677757 (and tp_is_empty!53219 tp!2358567))))

(assert (=> b!7925570 (= tp!2358518 e!4677757)))

(assert (= (and b!7925570 (is-Cons!74443 (innerList!15985 (xs!19285 (left!56866 (right!57196 t!4440)))))) b!7925988))

(declare-fun b!7925989 () Bool)

(declare-fun e!4677758 () Bool)

(declare-fun tp!2358568 () Bool)

(assert (=> b!7925989 (= e!4677758 (and tp_is_empty!53219 tp!2358568))))

(assert (=> b!7925563 (= tp!2358511 e!4677758)))

(assert (= (and b!7925563 (is-Cons!74443 (innerList!15985 (xs!19285 (left!56866 (left!56866 t!4440)))))) b!7925989))

(declare-fun b!7925990 () Bool)

(declare-fun e!4677759 () Bool)

(declare-fun tp!2358569 () Bool)

(assert (=> b!7925990 (= e!4677759 (and tp_is_empty!53219 tp!2358569))))

(assert (=> b!7925566 (= tp!2358514 e!4677759)))

(assert (= (and b!7925566 (is-Cons!74443 (innerList!15985 (xs!19285 (right!57196 (left!56866 t!4440)))))) b!7925990))

(declare-fun b!7925991 () Bool)

(declare-fun e!4677760 () Bool)

(declare-fun tp!2358570 () Bool)

(assert (=> b!7925991 (= e!4677760 (and tp_is_empty!53219 tp!2358570))))

(assert (=> b!7925567 (= tp!2358515 e!4677760)))

(assert (= (and b!7925567 (is-Cons!74443 (t!390166 (t!390166 (innerList!15985 (xs!19285 t!4440)))))) b!7925991))

(declare-fun b!7925992 () Bool)

(declare-fun e!4677761 () Bool)

(declare-fun tp!2358571 () Bool)

(assert (=> b!7925992 (= e!4677761 (and tp_is_empty!53219 tp!2358571))))

(assert (=> b!7925560 (= tp!2358508 e!4677761)))

(assert (= (and b!7925560 (is-Cons!74443 (t!390166 (innerList!15985 (xs!19285 (right!57196 t!4440)))))) b!7925992))

(declare-fun b!7925993 () Bool)

(declare-fun e!4677762 () Bool)

(declare-fun tp!2358572 () Bool)

(assert (=> b!7925993 (= e!4677762 (and tp_is_empty!53219 tp!2358572))))

(assert (=> b!7925573 (= tp!2358521 e!4677762)))

(assert (= (and b!7925573 (is-Cons!74443 (innerList!15985 (xs!19285 (right!57196 (right!57196 t!4440)))))) b!7925993))

(push 1)

(assert (not b!7925982))

(assert (not b!7925886))

(assert (not b!7925903))

(assert (not d!2366910))

(assert (not b!7925870))

(assert (not d!2366890))

(assert (not b!7925925))

(assert (not d!2366992))

(assert (not b!7925978))

(assert (not b!7925894))

(assert (not b!7925805))

(assert (not b!7925945))

(assert (not b!7925855))

(assert (not b!7925919))

(assert (not b!7925930))

(assert (not b!7925759))

(assert (not d!2367042))

(assert (not d!2366956))

(assert (not b!7925775))

(assert (not b!7925790))

(assert (not b!7925923))

(assert (not b!7925767))

(assert (not b!7925941))

(assert (not b!7925796))

(assert (not b!7925898))

(assert (not d!2366940))

(assert (not b!7925846))

(assert (not b!7925755))

(assert (not d!2366880))

(assert (not b!7925986))

(assert (not d!2366990))

(assert (not b!7925921))

(assert (not b!7925850))

(assert (not b!7925985))

(assert (not b!7925829))

(assert (not b!7925970))

(assert (not b!7925899))

(assert (not b!7925847))

(assert (not d!2366952))

(assert (not b!7925836))

(assert (not b!7925745))

(assert (not b!7925976))

(assert (not b!7925915))

(assert (not b!7925799))

(assert (not b!7925988))

(assert (not b!7925989))

(assert (not b!7925877))

(assert (not d!2367060))

(assert (not b!7925812))

(assert (not b!7925768))

(assert (not b!7925931))

(assert (not b!7925967))

(assert (not b!7925914))

(assert (not d!2367034))

(assert (not b!7925972))

(assert (not d!2366948))

(assert (not b!7925884))

(assert (not b!7925922))

(assert (not b!7925928))

(assert (not b!7925880))

(assert (not b!7925752))

(assert (not d!2366926))

(assert (not d!2366928))

(assert (not b!7925895))

(assert (not b!7925788))

(assert tp_is_empty!53219)

(assert (not b!7925990))

(assert (not b!7925831))

(assert (not b!7925963))

(assert (not b!7925966))

(assert (not b!7925830))

(assert (not b!7925840))

(assert (not d!2367054))

(assert (not b!7925793))

(assert (not b!7925932))

(assert (not b!7925935))

(assert (not b!7925852))

(assert (not b!7925977))

(assert (not b!7925740))

(assert (not b!7925737))

(assert (not b!7925980))

(assert (not b!7925754))

(assert (not b!7925882))

(assert (not b!7925818))

(assert (not d!2366942))

(assert (not b!7925848))

(assert (not b!7925806))

(assert (not b!7925750))

(assert (not b!7925810))

(assert (not b!7925766))

(assert (not b!7925889))

(assert (not b!7925860))

(assert (not b!7925956))

(assert (not b!7925936))

(assert (not b!7925926))

(assert (not b!7925965))

(assert (not b!7925890))

(assert (not b!7925816))

(assert (not b!7925774))

(assert (not b!7925859))

(assert (not d!2367090))

(assert (not b!7925864))

(assert (not b!7925825))

(assert (not b!7925979))

(assert (not b!7925907))

(assert (not b!7925933))

(assert (not b!7925940))

(assert (not b!7925747))

(assert (not d!2367074))

(assert (not b!7925987))

(assert (not b!7925918))

(assert (not b!7925920))

(assert (not b!7925770))

(assert (not d!2366932))

(assert (not d!2367070))

(assert (not b!7925984))

(assert (not d!2366916))

(assert (not b!7925866))

(assert (not b!7925974))

(assert (not b!7925851))

(assert (not b!7925743))

(assert (not b!7925736))

(assert (not d!2367020))

(assert (not b!7925863))

(assert (not d!2366968))

(assert (not b!7925564))

(assert (not b!7925803))

(assert (not b!7925758))

(assert (not b!7925954))

(assert (not d!2367052))

(assert (not b!7925948))

(assert (not b!7925983))

(assert (not b!7925981))

(assert (not d!2366884))

(assert (not b!7925834))

(assert (not b!7925901))

(assert (not b!7925929))

(assert (not bm!735105))

(assert (not b!7925571))

(assert (not b!7925791))

(assert (not b!7925771))

(assert (not b!7925795))

(assert (not d!2367068))

(assert (not b!7925760))

(assert (not d!2367030))

(assert (not d!2366978))

(assert (not b!7925844))

(assert (not b!7925909))

(assert (not b!7925947))

(assert (not b!7925881))

(assert (not b!7925957))

(assert (not b!7925905))

(assert (not d!2366954))

(assert (not b!7925869))

(assert (not b!7925951))

(assert (not b!7925746))

(assert (not b!7925854))

(assert (not b!7925568))

(assert (not d!2366908))

(assert (not b!7925964))

(assert (not d!2367036))

(assert (not b!7925780))

(assert (not b!7925757))

(assert (not b!7925953))

(assert (not b!7925808))

(assert (not b!7925873))

(assert (not b!7925971))

(assert (not b!7925876))

(assert (not b!7925765))

(assert (not b!7925801))

(assert (not b!7925778))

(assert (not b!7925742))

(assert (not d!2366960))

(assert (not b!7925959))

(assert (not d!2367064))

(assert (not b!7925874))

(assert (not b!7925924))

(assert (not b!7925842))

(assert (not b!7925822))

(assert (not b!7925910))

(assert (not b!7925814))

(assert (not b!7925968))

(assert (not b!7925879))

(assert (not b!7925961))

(assert (not b!7925832))

(assert (not b!7925785))

(assert (not b!7925827))

(assert (not b!7925769))

(assert (not b!7925749))

(assert (not d!2366966))

(assert (not b!7925993))

(assert (not b!7925748))

(assert (not b!7925973))

(assert (not b!7925838))

(assert (not d!2367004))

(assert (not b!7925950))

(assert (not b!7925762))

(assert (not b!7925561))

(assert (not b!7925944))

(assert (not b!7925783))

(assert (not b!7925962))

(assert (not d!2366874))

(assert (not b!7925991))

(assert (not b!7925849))

(assert (not b!7925820))

(assert (not b!7925756))

(assert (not d!2366912))

(assert (not b!7925764))

(assert (not b!7925872))

(assert (not b!7925883))

(assert (not b!7925992))

(assert (not bm!735104))

(assert (not b!7925828))

(assert (not b!7925782))

(assert (not b!7925975))

(assert (not b!7925734))

(assert (not b!7925786))

(assert (not b!7925969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

