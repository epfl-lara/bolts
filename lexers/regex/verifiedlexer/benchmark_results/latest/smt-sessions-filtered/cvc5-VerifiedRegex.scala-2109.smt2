; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!106622 () Bool)

(assert start!106622)

(declare-fun res!540547 () Bool)

(declare-fun e!769180 () Bool)

(assert (=> start!106622 (=> (not res!540547) (not e!769180))))

(declare-fun from!553 () Int)

(declare-fun until!31 () Int)

(assert (=> start!106622 (= res!540547 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106622 e!769180))

(assert (=> start!106622 true))

(declare-datatypes ((T!21738 0))(
  ( (T!21739 (val!3881 Int)) )
))
(declare-datatypes ((List!12060 0))(
  ( (Nil!12036) (Cons!12036 (h!17437 T!21738) (t!112400 List!12060)) )
))
(declare-datatypes ((IArray!7943 0))(
  ( (IArray!7944 (innerList!4029 List!12060)) )
))
(declare-datatypes ((Conc!3969 0))(
  ( (Node!3969 (left!10502 Conc!3969) (right!10832 Conc!3969) (csize!8168 Int) (cheight!4180 Int)) (Leaf!6079 (xs!6676 IArray!7943) (csize!8169 Int)) (Empty!3969) )
))
(declare-fun t!4115 () Conc!3969)

(declare-fun e!769182 () Bool)

(declare-fun inv!16080 (Conc!3969) Bool)

(assert (=> start!106622 (and (inv!16080 t!4115) e!769182)))

(declare-fun b!1197877 () Bool)

(declare-fun e!769181 () List!12060)

(declare-fun call!83251 () List!12060)

(assert (=> b!1197877 (= e!769181 call!83251)))

(declare-fun b!1197878 () Bool)

(declare-fun res!540549 () Bool)

(assert (=> b!1197878 (=> (not res!540549) (not e!769180))))

(declare-fun isBalanced!1154 (Conc!3969) Bool)

(assert (=> b!1197878 (= res!540549 (isBalanced!1154 t!4115))))

(declare-fun b!1197879 () Bool)

(declare-fun e!769177 () Bool)

(assert (=> b!1197879 (= e!769180 (not e!769177))))

(declare-fun res!540545 () Bool)

(assert (=> b!1197879 (=> res!540545 e!769177)))

(declare-fun size!9556 (Conc!3969) Int)

(assert (=> b!1197879 (= res!540545 (> (size!9556 (left!10502 t!4115)) from!553))))

(declare-fun e!769178 () Bool)

(assert (=> b!1197879 e!769178))

(declare-fun c!199205 () Bool)

(declare-fun lt!410360 () Int)

(assert (=> b!1197879 (= c!199205 (<= lt!410360 from!553))))

(declare-fun lt!410359 () List!12060)

(declare-fun lt!410362 () List!12060)

(declare-fun lt!410363 () List!12060)

(declare-fun slice!460 (List!12060 Int Int) List!12060)

(declare-fun ++!3071 (List!12060 List!12060) List!12060)

(assert (=> b!1197879 (= lt!410362 (slice!460 (++!3071 lt!410359 lt!410363) from!553 until!31))))

(declare-fun size!9557 (List!12060) Int)

(assert (=> b!1197879 (= lt!410360 (size!9557 lt!410359))))

(declare-datatypes ((Unit!18442 0))(
  ( (Unit!18443) )
))
(declare-fun lt!410361 () Unit!18442)

(declare-fun sliceLemma!32 (List!12060 List!12060 Int Int) Unit!18442)

(assert (=> b!1197879 (= lt!410361 (sliceLemma!32 lt!410359 lt!410363 from!553 until!31))))

(declare-fun list!4472 (Conc!3969) List!12060)

(assert (=> b!1197879 (= lt!410363 (list!4472 (right!10832 t!4115)))))

(assert (=> b!1197879 (= lt!410359 (list!4472 (left!10502 t!4115)))))

(declare-fun b!1197880 () Bool)

(assert (=> b!1197880 (= e!769178 (= lt!410362 e!769181))))

(declare-fun c!199206 () Bool)

(assert (=> b!1197880 (= c!199206 (<= until!31 lt!410360))))

(declare-fun b!1197881 () Bool)

(declare-fun res!540548 () Bool)

(assert (=> b!1197881 (=> (not res!540548) (not e!769180))))

(assert (=> b!1197881 (= res!540548 (and (not (= from!553 until!31)) (not (is-Leaf!6079 t!4115)) (is-Node!3969 t!4115)))))

(declare-fun b!1197882 () Bool)

(declare-fun e!769179 () Bool)

(declare-fun tp!340998 () Bool)

(assert (=> b!1197882 (= e!769179 tp!340998)))

(declare-fun bm!83246 () Bool)

(declare-fun call!83252 () List!12060)

(assert (=> bm!83246 (= call!83251 call!83252)))

(declare-fun b!1197883 () Bool)

(assert (=> b!1197883 (= e!769181 (++!3071 (slice!460 lt!410359 from!553 lt!410360) call!83251))))

(declare-fun bm!83247 () Bool)

(assert (=> bm!83247 (= call!83252 (slice!460 (ite c!199205 lt!410363 (ite c!199206 lt!410359 lt!410363)) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0)) (ite c!199205 (- until!31 lt!410360) (ite c!199206 until!31 (- until!31 lt!410360)))))))

(declare-fun b!1197884 () Bool)

(assert (=> b!1197884 (= e!769178 (= lt!410362 call!83252))))

(declare-fun b!1197885 () Bool)

(declare-fun res!540546 () Bool)

(assert (=> b!1197885 (=> (not res!540546) (not e!769180))))

(assert (=> b!1197885 (= res!540546 (<= until!31 (size!9556 t!4115)))))

(declare-fun b!1197886 () Bool)

(declare-fun tp!340996 () Bool)

(declare-fun tp!340997 () Bool)

(assert (=> b!1197886 (= e!769182 (and (inv!16080 (left!10502 t!4115)) tp!340997 (inv!16080 (right!10832 t!4115)) tp!340996))))

(declare-fun b!1197887 () Bool)

(declare-fun ConcPrimitiveSize!3 (Conc!3969) Int)

(assert (=> b!1197887 (= e!769177 (< (ConcPrimitiveSize!3 (right!10832 t!4115)) (ConcPrimitiveSize!3 t!4115)))))

(declare-fun b!1197888 () Bool)

(declare-fun inv!16081 (IArray!7943) Bool)

(assert (=> b!1197888 (= e!769182 (and (inv!16081 (xs!6676 t!4115)) e!769179))))

(assert (= (and start!106622 res!540547) b!1197885))

(assert (= (and b!1197885 res!540546) b!1197878))

(assert (= (and b!1197878 res!540549) b!1197881))

(assert (= (and b!1197881 res!540548) b!1197879))

(assert (= (and b!1197879 c!199205) b!1197884))

(assert (= (and b!1197879 (not c!199205)) b!1197880))

(assert (= (and b!1197880 c!199206) b!1197877))

(assert (= (and b!1197880 (not c!199206)) b!1197883))

(assert (= (or b!1197877 b!1197883) bm!83246))

(assert (= (or b!1197884 bm!83246) bm!83247))

(assert (= (and b!1197879 (not res!540545)) b!1197887))

(assert (= (and start!106622 (is-Node!3969 t!4115)) b!1197886))

(assert (= b!1197888 b!1197882))

(assert (= (and start!106622 (is-Leaf!6079 t!4115)) b!1197888))

(declare-fun m!1373119 () Bool)

(assert (=> b!1197883 m!1373119))

(assert (=> b!1197883 m!1373119))

(declare-fun m!1373121 () Bool)

(assert (=> b!1197883 m!1373121))

(declare-fun m!1373123 () Bool)

(assert (=> bm!83247 m!1373123))

(declare-fun m!1373125 () Bool)

(assert (=> b!1197878 m!1373125))

(declare-fun m!1373127 () Bool)

(assert (=> b!1197887 m!1373127))

(declare-fun m!1373129 () Bool)

(assert (=> b!1197887 m!1373129))

(declare-fun m!1373131 () Bool)

(assert (=> b!1197886 m!1373131))

(declare-fun m!1373133 () Bool)

(assert (=> b!1197886 m!1373133))

(declare-fun m!1373135 () Bool)

(assert (=> b!1197888 m!1373135))

(declare-fun m!1373137 () Bool)

(assert (=> b!1197879 m!1373137))

(declare-fun m!1373139 () Bool)

(assert (=> b!1197879 m!1373139))

(declare-fun m!1373141 () Bool)

(assert (=> b!1197879 m!1373141))

(declare-fun m!1373143 () Bool)

(assert (=> b!1197879 m!1373143))

(declare-fun m!1373145 () Bool)

(assert (=> b!1197879 m!1373145))

(declare-fun m!1373147 () Bool)

(assert (=> b!1197879 m!1373147))

(assert (=> b!1197879 m!1373143))

(declare-fun m!1373149 () Bool)

(assert (=> b!1197879 m!1373149))

(declare-fun m!1373151 () Bool)

(assert (=> start!106622 m!1373151))

(declare-fun m!1373153 () Bool)

(assert (=> b!1197885 m!1373153))

(push 1)

(assert (not b!1197883))

(assert (not b!1197888))

(assert (not b!1197886))

(assert (not b!1197882))

(assert (not b!1197885))

(assert (not start!106622))

(assert (not b!1197887))

(assert (not b!1197878))

(assert (not b!1197879))

(assert (not bm!83247))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!342430 () Bool)

(declare-fun lt!410383 () Int)

(assert (=> d!342430 (= lt!410383 (size!9557 (list!4472 (left!10502 t!4115))))))

(assert (=> d!342430 (= lt!410383 (ite (is-Empty!3969 (left!10502 t!4115)) 0 (ite (is-Leaf!6079 (left!10502 t!4115)) (csize!8169 (left!10502 t!4115)) (csize!8168 (left!10502 t!4115)))))))

(assert (=> d!342430 (= (size!9556 (left!10502 t!4115)) lt!410383)))

(declare-fun bs!288171 () Bool)

(assert (= bs!288171 d!342430))

(assert (=> bs!288171 m!1373137))

(assert (=> bs!288171 m!1373137))

(declare-fun m!1373199 () Bool)

(assert (=> bs!288171 m!1373199))

(assert (=> b!1197879 d!342430))

(declare-fun d!342432 () Bool)

(declare-fun take!122 (List!12060 Int) List!12060)

(declare-fun drop!594 (List!12060 Int) List!12060)

(assert (=> d!342432 (= (slice!460 (++!3071 lt!410359 lt!410363) from!553 until!31) (take!122 (drop!594 (++!3071 lt!410359 lt!410363) from!553) (- until!31 from!553)))))

(declare-fun bs!288172 () Bool)

(assert (= bs!288172 d!342432))

(assert (=> bs!288172 m!1373143))

(declare-fun m!1373201 () Bool)

(assert (=> bs!288172 m!1373201))

(assert (=> bs!288172 m!1373201))

(declare-fun m!1373203 () Bool)

(assert (=> bs!288172 m!1373203))

(assert (=> b!1197879 d!342432))

(declare-fun d!342434 () Bool)

(declare-fun lt!410386 () Int)

(assert (=> d!342434 (>= lt!410386 0)))

(declare-fun e!769215 () Int)

(assert (=> d!342434 (= lt!410386 e!769215)))

(declare-fun c!199223 () Bool)

(assert (=> d!342434 (= c!199223 (is-Nil!12036 lt!410359))))

(assert (=> d!342434 (= (size!9557 lt!410359) lt!410386)))

(declare-fun b!1197949 () Bool)

(assert (=> b!1197949 (= e!769215 0)))

(declare-fun b!1197950 () Bool)

(assert (=> b!1197950 (= e!769215 (+ 1 (size!9557 (t!112400 lt!410359))))))

(assert (= (and d!342434 c!199223) b!1197949))

(assert (= (and d!342434 (not c!199223)) b!1197950))

(declare-fun m!1373205 () Bool)

(assert (=> b!1197950 m!1373205))

(assert (=> b!1197879 d!342434))

(declare-fun b!1197969 () Bool)

(declare-fun res!540574 () Bool)

(declare-fun e!769225 () Bool)

(assert (=> b!1197969 (=> (not res!540574) (not e!769225))))

(declare-fun lt!410391 () List!12060)

(assert (=> b!1197969 (= res!540574 (= (size!9557 lt!410391) (+ (size!9557 lt!410359) (size!9557 lt!410363))))))

(declare-fun b!1197967 () Bool)

(declare-fun e!769224 () List!12060)

(assert (=> b!1197967 (= e!769224 lt!410363)))

(declare-fun d!342436 () Bool)

(assert (=> d!342436 e!769225))

(declare-fun res!540573 () Bool)

(assert (=> d!342436 (=> (not res!540573) (not e!769225))))

(declare-fun content!1683 (List!12060) (Set T!21738))

(assert (=> d!342436 (= res!540573 (= (content!1683 lt!410391) (set.union (content!1683 lt!410359) (content!1683 lt!410363))))))

(assert (=> d!342436 (= lt!410391 e!769224)))

(declare-fun c!199230 () Bool)

(assert (=> d!342436 (= c!199230 (is-Nil!12036 lt!410359))))

(assert (=> d!342436 (= (++!3071 lt!410359 lt!410363) lt!410391)))

(declare-fun b!1197970 () Bool)

(assert (=> b!1197970 (= e!769225 (or (not (= lt!410363 Nil!12036)) (= lt!410391 lt!410359)))))

(declare-fun b!1197968 () Bool)

(assert (=> b!1197968 (= e!769224 (Cons!12036 (h!17437 lt!410359) (++!3071 (t!112400 lt!410359) lt!410363)))))

(assert (= (and d!342436 c!199230) b!1197967))

(assert (= (and d!342436 (not c!199230)) b!1197968))

(assert (= (and d!342436 res!540573) b!1197969))

(assert (= (and b!1197969 res!540574) b!1197970))

(declare-fun m!1373225 () Bool)

(assert (=> b!1197969 m!1373225))

(assert (=> b!1197969 m!1373147))

(declare-fun m!1373227 () Bool)

(assert (=> b!1197969 m!1373227))

(declare-fun m!1373229 () Bool)

(assert (=> d!342436 m!1373229))

(declare-fun m!1373231 () Bool)

(assert (=> d!342436 m!1373231))

(declare-fun m!1373233 () Bool)

(assert (=> d!342436 m!1373233))

(declare-fun m!1373235 () Bool)

(assert (=> b!1197968 m!1373235))

(assert (=> b!1197879 d!342436))

(declare-fun b!1197979 () Bool)

(declare-fun e!769230 () List!12060)

(assert (=> b!1197979 (= e!769230 Nil!12036)))

(declare-fun d!342442 () Bool)

(declare-fun c!199235 () Bool)

(assert (=> d!342442 (= c!199235 (is-Empty!3969 (left!10502 t!4115)))))

(assert (=> d!342442 (= (list!4472 (left!10502 t!4115)) e!769230)))

(declare-fun b!1197982 () Bool)

(declare-fun e!769231 () List!12060)

(assert (=> b!1197982 (= e!769231 (++!3071 (list!4472 (left!10502 (left!10502 t!4115))) (list!4472 (right!10832 (left!10502 t!4115)))))))

(declare-fun b!1197981 () Bool)

(declare-fun list!4474 (IArray!7943) List!12060)

(assert (=> b!1197981 (= e!769231 (list!4474 (xs!6676 (left!10502 t!4115))))))

(declare-fun b!1197980 () Bool)

(assert (=> b!1197980 (= e!769230 e!769231)))

(declare-fun c!199236 () Bool)

(assert (=> b!1197980 (= c!199236 (is-Leaf!6079 (left!10502 t!4115)))))

(assert (= (and d!342442 c!199235) b!1197979))

(assert (= (and d!342442 (not c!199235)) b!1197980))

(assert (= (and b!1197980 c!199236) b!1197981))

(assert (= (and b!1197980 (not c!199236)) b!1197982))

(declare-fun m!1373241 () Bool)

(assert (=> b!1197982 m!1373241))

(declare-fun m!1373243 () Bool)

(assert (=> b!1197982 m!1373243))

(assert (=> b!1197982 m!1373241))

(assert (=> b!1197982 m!1373243))

(declare-fun m!1373245 () Bool)

(assert (=> b!1197982 m!1373245))

(declare-fun m!1373247 () Bool)

(assert (=> b!1197981 m!1373247))

(assert (=> b!1197879 d!342442))

(declare-fun b!1197983 () Bool)

(declare-fun e!769232 () List!12060)

(assert (=> b!1197983 (= e!769232 Nil!12036)))

(declare-fun d!342446 () Bool)

(declare-fun c!199237 () Bool)

(assert (=> d!342446 (= c!199237 (is-Empty!3969 (right!10832 t!4115)))))

(assert (=> d!342446 (= (list!4472 (right!10832 t!4115)) e!769232)))

(declare-fun b!1197986 () Bool)

(declare-fun e!769233 () List!12060)

(assert (=> b!1197986 (= e!769233 (++!3071 (list!4472 (left!10502 (right!10832 t!4115))) (list!4472 (right!10832 (right!10832 t!4115)))))))

(declare-fun b!1197985 () Bool)

(assert (=> b!1197985 (= e!769233 (list!4474 (xs!6676 (right!10832 t!4115))))))

(declare-fun b!1197984 () Bool)

(assert (=> b!1197984 (= e!769232 e!769233)))

(declare-fun c!199238 () Bool)

(assert (=> b!1197984 (= c!199238 (is-Leaf!6079 (right!10832 t!4115)))))

(assert (= (and d!342446 c!199237) b!1197983))

(assert (= (and d!342446 (not c!199237)) b!1197984))

(assert (= (and b!1197984 c!199238) b!1197985))

(assert (= (and b!1197984 (not c!199238)) b!1197986))

(declare-fun m!1373249 () Bool)

(assert (=> b!1197986 m!1373249))

(declare-fun m!1373251 () Bool)

(assert (=> b!1197986 m!1373251))

(assert (=> b!1197986 m!1373249))

(assert (=> b!1197986 m!1373251))

(declare-fun m!1373253 () Bool)

(assert (=> b!1197986 m!1373253))

(declare-fun m!1373255 () Bool)

(assert (=> b!1197985 m!1373255))

(assert (=> b!1197879 d!342446))

(declare-fun bm!83264 () Bool)

(declare-fun c!199246 () Bool)

(declare-fun c!199247 () Bool)

(assert (=> bm!83264 (= c!199246 c!199247)))

(declare-fun call!83271 () List!12060)

(declare-fun call!83270 () List!12060)

(assert (=> bm!83264 (= call!83271 call!83270)))

(declare-fun b!1198013 () Bool)

(declare-fun e!769246 () Int)

(assert (=> b!1198013 (= e!769246 until!31)))

(declare-fun e!769247 () Bool)

(declare-fun b!1198014 () Bool)

(assert (=> b!1198014 (= e!769247 (<= until!31 (+ (size!9557 lt!410359) (size!9557 lt!410363))))))

(declare-fun b!1198015 () Bool)

(declare-fun e!769248 () List!12060)

(assert (=> b!1198015 (= e!769248 call!83270)))

(declare-fun bm!83265 () Bool)

(declare-fun call!83269 () Int)

(assert (=> bm!83265 (= call!83269 (size!9557 lt!410359))))

(declare-fun e!769249 () List!12060)

(declare-fun b!1198017 () Bool)

(assert (=> b!1198017 (= e!769249 (++!3071 call!83271 (slice!460 lt!410363 0 (- until!31 call!83269))))))

(declare-fun b!1198018 () Bool)

(assert (=> b!1198018 (= e!769249 call!83271)))

(declare-fun b!1198019 () Bool)

(assert (=> b!1198019 (= e!769246 call!83269)))

(declare-fun c!199245 () Bool)

(declare-fun bm!83266 () Bool)

(assert (=> bm!83266 (= call!83270 (slice!460 (ite c!199245 lt!410363 lt!410359) (ite c!199245 (- from!553 call!83269) from!553) (ite c!199245 (- until!31 call!83269) e!769246)))))

(declare-fun d!342448 () Bool)

(assert (=> d!342448 (= (slice!460 (++!3071 lt!410359 lt!410363) from!553 until!31) e!769248)))

(assert (=> d!342448 (= c!199245 (<= (size!9557 lt!410359) from!553))))

(declare-fun lt!410394 () Unit!18442)

(declare-fun choose!7725 (List!12060 List!12060 Int Int) Unit!18442)

(assert (=> d!342448 (= lt!410394 (choose!7725 lt!410359 lt!410363 from!553 until!31))))

(assert (=> d!342448 e!769247))

(declare-fun res!540589 () Bool)

(assert (=> d!342448 (=> (not res!540589) (not e!769247))))

(assert (=> d!342448 (= res!540589 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!342448 (= (sliceLemma!32 lt!410359 lt!410363 from!553 until!31) lt!410394)))

(declare-fun b!1198016 () Bool)

(assert (=> b!1198016 (= e!769248 e!769249)))

(assert (=> b!1198016 (= c!199247 (<= until!31 call!83269))))

(assert (= (and d!342448 res!540589) b!1198014))

(assert (= (and d!342448 c!199245) b!1198015))

(assert (= (and d!342448 (not c!199245)) b!1198016))

(assert (= (and b!1198016 c!199247) b!1198018))

(assert (= (and b!1198016 (not c!199247)) b!1198017))

(assert (= (or b!1198018 b!1198017) bm!83264))

(assert (= (and bm!83264 c!199246) b!1198013))

(assert (= (and bm!83264 (not c!199246)) b!1198019))

(assert (= (or b!1198015 b!1198019 b!1198016 b!1198017) bm!83265))

(assert (= (or b!1198015 bm!83264) bm!83266))

(assert (=> b!1198014 m!1373147))

(assert (=> b!1198014 m!1373227))

(declare-fun m!1373257 () Bool)

(assert (=> bm!83266 m!1373257))

(assert (=> d!342448 m!1373143))

(assert (=> d!342448 m!1373143))

(assert (=> d!342448 m!1373145))

(assert (=> d!342448 m!1373147))

(declare-fun m!1373259 () Bool)

(assert (=> d!342448 m!1373259))

(declare-fun m!1373261 () Bool)

(assert (=> b!1198017 m!1373261))

(assert (=> b!1198017 m!1373261))

(declare-fun m!1373263 () Bool)

(assert (=> b!1198017 m!1373263))

(assert (=> bm!83265 m!1373147))

(assert (=> b!1197879 d!342448))

(declare-fun b!1198028 () Bool)

(declare-fun res!540597 () Bool)

(declare-fun e!769253 () Bool)

(assert (=> b!1198028 (=> (not res!540597) (not e!769253))))

(declare-fun lt!410395 () List!12060)

(assert (=> b!1198028 (= res!540597 (= (size!9557 lt!410395) (+ (size!9557 (slice!460 lt!410359 from!553 lt!410360)) (size!9557 call!83251))))))

(declare-fun b!1198026 () Bool)

(declare-fun e!769252 () List!12060)

(assert (=> b!1198026 (= e!769252 call!83251)))

(declare-fun d!342450 () Bool)

(assert (=> d!342450 e!769253))

(declare-fun res!540596 () Bool)

(assert (=> d!342450 (=> (not res!540596) (not e!769253))))

(assert (=> d!342450 (= res!540596 (= (content!1683 lt!410395) (set.union (content!1683 (slice!460 lt!410359 from!553 lt!410360)) (content!1683 call!83251))))))

(assert (=> d!342450 (= lt!410395 e!769252)))

(declare-fun c!199248 () Bool)

(assert (=> d!342450 (= c!199248 (is-Nil!12036 (slice!460 lt!410359 from!553 lt!410360)))))

(assert (=> d!342450 (= (++!3071 (slice!460 lt!410359 from!553 lt!410360) call!83251) lt!410395)))

(declare-fun b!1198029 () Bool)

(assert (=> b!1198029 (= e!769253 (or (not (= call!83251 Nil!12036)) (= lt!410395 (slice!460 lt!410359 from!553 lt!410360))))))

(declare-fun b!1198027 () Bool)

(assert (=> b!1198027 (= e!769252 (Cons!12036 (h!17437 (slice!460 lt!410359 from!553 lt!410360)) (++!3071 (t!112400 (slice!460 lt!410359 from!553 lt!410360)) call!83251)))))

(assert (= (and d!342450 c!199248) b!1198026))

(assert (= (and d!342450 (not c!199248)) b!1198027))

(assert (= (and d!342450 res!540596) b!1198028))

(assert (= (and b!1198028 res!540597) b!1198029))

(declare-fun m!1373267 () Bool)

(assert (=> b!1198028 m!1373267))

(assert (=> b!1198028 m!1373119))

(declare-fun m!1373269 () Bool)

(assert (=> b!1198028 m!1373269))

(declare-fun m!1373272 () Bool)

(assert (=> b!1198028 m!1373272))

(declare-fun m!1373275 () Bool)

(assert (=> d!342450 m!1373275))

(assert (=> d!342450 m!1373119))

(declare-fun m!1373277 () Bool)

(assert (=> d!342450 m!1373277))

(declare-fun m!1373281 () Bool)

(assert (=> d!342450 m!1373281))

(declare-fun m!1373283 () Bool)

(assert (=> b!1198027 m!1373283))

(assert (=> b!1197883 d!342450))

(declare-fun d!342452 () Bool)

(assert (=> d!342452 (= (slice!460 lt!410359 from!553 lt!410360) (take!122 (drop!594 lt!410359 from!553) (- lt!410360 from!553)))))

(declare-fun bs!288174 () Bool)

(assert (= bs!288174 d!342452))

(declare-fun m!1373291 () Bool)

(assert (=> bs!288174 m!1373291))

(assert (=> bs!288174 m!1373291))

(declare-fun m!1373293 () Bool)

(assert (=> bs!288174 m!1373293))

(assert (=> b!1197883 d!342452))

(declare-fun d!342456 () Bool)

(assert (=> d!342456 (= (slice!460 (ite c!199205 lt!410363 (ite c!199206 lt!410359 lt!410363)) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0)) (ite c!199205 (- until!31 lt!410360) (ite c!199206 until!31 (- until!31 lt!410360)))) (take!122 (drop!594 (ite c!199205 lt!410363 (ite c!199206 lt!410359 lt!410363)) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0))) (- (ite c!199205 (- until!31 lt!410360) (ite c!199206 until!31 (- until!31 lt!410360))) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0)))))))

(declare-fun bs!288175 () Bool)

(assert (= bs!288175 d!342456))

(declare-fun m!1373295 () Bool)

(assert (=> bs!288175 m!1373295))

(assert (=> bs!288175 m!1373295))

(declare-fun m!1373297 () Bool)

(assert (=> bs!288175 m!1373297))

(assert (=> bm!83247 d!342456))

(declare-fun d!342458 () Bool)

(assert (=> d!342458 (= (inv!16081 (xs!6676 t!4115)) (<= (size!9557 (innerList!4029 (xs!6676 t!4115))) 2147483647))))

(declare-fun bs!288176 () Bool)

(assert (= bs!288176 d!342458))

(declare-fun m!1373299 () Bool)

(assert (=> bs!288176 m!1373299))

(assert (=> b!1197888 d!342458))

(declare-fun d!342460 () Bool)

(declare-fun c!199251 () Bool)

(assert (=> d!342460 (= c!199251 (is-Node!3969 (left!10502 t!4115)))))

(declare-fun e!769258 () Bool)

(assert (=> d!342460 (= (inv!16080 (left!10502 t!4115)) e!769258)))

(declare-fun b!1198036 () Bool)

(declare-fun inv!16084 (Conc!3969) Bool)

(assert (=> b!1198036 (= e!769258 (inv!16084 (left!10502 t!4115)))))

(declare-fun b!1198037 () Bool)

(declare-fun e!769259 () Bool)

(assert (=> b!1198037 (= e!769258 e!769259)))

(declare-fun res!540600 () Bool)

(assert (=> b!1198037 (= res!540600 (not (is-Leaf!6079 (left!10502 t!4115))))))

(assert (=> b!1198037 (=> res!540600 e!769259)))

(declare-fun b!1198038 () Bool)

(declare-fun inv!16085 (Conc!3969) Bool)

(assert (=> b!1198038 (= e!769259 (inv!16085 (left!10502 t!4115)))))

(assert (= (and d!342460 c!199251) b!1198036))

(assert (= (and d!342460 (not c!199251)) b!1198037))

(assert (= (and b!1198037 (not res!540600)) b!1198038))

(declare-fun m!1373303 () Bool)

(assert (=> b!1198036 m!1373303))

(declare-fun m!1373305 () Bool)

(assert (=> b!1198038 m!1373305))

(assert (=> b!1197886 d!342460))

(declare-fun d!342464 () Bool)

(declare-fun c!199252 () Bool)

(assert (=> d!342464 (= c!199252 (is-Node!3969 (right!10832 t!4115)))))

(declare-fun e!769260 () Bool)

(assert (=> d!342464 (= (inv!16080 (right!10832 t!4115)) e!769260)))

(declare-fun b!1198039 () Bool)

(assert (=> b!1198039 (= e!769260 (inv!16084 (right!10832 t!4115)))))

(declare-fun b!1198040 () Bool)

(declare-fun e!769261 () Bool)

(assert (=> b!1198040 (= e!769260 e!769261)))

(declare-fun res!540601 () Bool)

(assert (=> b!1198040 (= res!540601 (not (is-Leaf!6079 (right!10832 t!4115))))))

(assert (=> b!1198040 (=> res!540601 e!769261)))

(declare-fun b!1198041 () Bool)

(assert (=> b!1198041 (= e!769261 (inv!16085 (right!10832 t!4115)))))

(assert (= (and d!342464 c!199252) b!1198039))

(assert (= (and d!342464 (not c!199252)) b!1198040))

(assert (= (and b!1198040 (not res!540601)) b!1198041))

(declare-fun m!1373307 () Bool)

(assert (=> b!1198039 m!1373307))

(declare-fun m!1373309 () Bool)

(assert (=> b!1198041 m!1373309))

(assert (=> b!1197886 d!342464))

(declare-fun b!1198054 () Bool)

(declare-fun e!769268 () Int)

(declare-fun call!83274 () Int)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> b!1198054 (= e!769268 (+ 1 (ConcPrimitiveSize!3 (left!10502 (right!10832 t!4115))) (ConcPrimitiveSize!3 (right!10832 (right!10832 t!4115))) (BigIntAbs!0 (csize!8168 (right!10832 t!4115))) call!83274))))

(declare-fun d!342466 () Bool)

(declare-fun lt!410403 () Int)

(assert (=> d!342466 (>= lt!410403 0)))

(assert (=> d!342466 (= lt!410403 e!769268)))

(declare-fun c!199260 () Bool)

(assert (=> d!342466 (= c!199260 (is-Node!3969 (right!10832 t!4115)))))

(assert (=> d!342466 (= (ConcPrimitiveSize!3 (right!10832 t!4115)) lt!410403)))

(declare-fun b!1198055 () Bool)

(declare-fun e!769269 () Int)

(declare-fun IArrayPrimitiveSize!3 (IArray!7943) Int)

(assert (=> b!1198055 (= e!769269 (+ 1 (IArrayPrimitiveSize!3 (xs!6676 (right!10832 t!4115))) call!83274))))

(declare-fun b!1198056 () Bool)

(assert (=> b!1198056 (= e!769268 e!769269)))

(declare-fun c!199259 () Bool)

(assert (=> b!1198056 (= c!199259 (is-Leaf!6079 (right!10832 t!4115)))))

(declare-fun bm!83269 () Bool)

(assert (=> bm!83269 (= call!83274 (BigIntAbs!0 (ite c!199260 (cheight!4180 (right!10832 t!4115)) (csize!8169 (right!10832 t!4115)))))))

(declare-fun b!1198057 () Bool)

(assert (=> b!1198057 (= e!769269 0)))

(assert (= (and d!342466 c!199260) b!1198054))

(assert (= (and d!342466 (not c!199260)) b!1198056))

(assert (= (and b!1198056 c!199259) b!1198055))

(assert (= (and b!1198056 (not c!199259)) b!1198057))

(assert (= (or b!1198054 b!1198055) bm!83269))

(declare-fun m!1373315 () Bool)

(assert (=> b!1198054 m!1373315))

(declare-fun m!1373317 () Bool)

(assert (=> b!1198054 m!1373317))

(declare-fun m!1373319 () Bool)

(assert (=> b!1198054 m!1373319))

(declare-fun m!1373321 () Bool)

(assert (=> b!1198055 m!1373321))

(declare-fun m!1373323 () Bool)

(assert (=> bm!83269 m!1373323))

(assert (=> b!1197887 d!342466))

(declare-fun b!1198058 () Bool)

(declare-fun e!769270 () Int)

(declare-fun call!83275 () Int)

(assert (=> b!1198058 (= e!769270 (+ 1 (ConcPrimitiveSize!3 (left!10502 t!4115)) (ConcPrimitiveSize!3 (right!10832 t!4115)) (BigIntAbs!0 (csize!8168 t!4115)) call!83275))))

(declare-fun d!342470 () Bool)

(declare-fun lt!410404 () Int)

(assert (=> d!342470 (>= lt!410404 0)))

(assert (=> d!342470 (= lt!410404 e!769270)))

(declare-fun c!199262 () Bool)

(assert (=> d!342470 (= c!199262 (is-Node!3969 t!4115))))

(assert (=> d!342470 (= (ConcPrimitiveSize!3 t!4115) lt!410404)))

(declare-fun b!1198059 () Bool)

(declare-fun e!769271 () Int)

(assert (=> b!1198059 (= e!769271 (+ 1 (IArrayPrimitiveSize!3 (xs!6676 t!4115)) call!83275))))

(declare-fun b!1198060 () Bool)

(assert (=> b!1198060 (= e!769270 e!769271)))

(declare-fun c!199261 () Bool)

(assert (=> b!1198060 (= c!199261 (is-Leaf!6079 t!4115))))

(declare-fun bm!83270 () Bool)

(assert (=> bm!83270 (= call!83275 (BigIntAbs!0 (ite c!199262 (cheight!4180 t!4115) (csize!8169 t!4115))))))

(declare-fun b!1198061 () Bool)

(assert (=> b!1198061 (= e!769271 0)))

(assert (= (and d!342470 c!199262) b!1198058))

(assert (= (and d!342470 (not c!199262)) b!1198060))

(assert (= (and b!1198060 c!199261) b!1198059))

(assert (= (and b!1198060 (not c!199261)) b!1198061))

(assert (= (or b!1198058 b!1198059) bm!83270))

(declare-fun m!1373325 () Bool)

(assert (=> b!1198058 m!1373325))

(assert (=> b!1198058 m!1373127))

(declare-fun m!1373327 () Bool)

(assert (=> b!1198058 m!1373327))

(declare-fun m!1373329 () Bool)

(assert (=> b!1198059 m!1373329))

(declare-fun m!1373331 () Bool)

(assert (=> bm!83270 m!1373331))

(assert (=> b!1197887 d!342470))

(declare-fun b!1198076 () Bool)

(declare-fun e!769277 () Bool)

(declare-fun e!769278 () Bool)

(assert (=> b!1198076 (= e!769277 e!769278)))

(declare-fun res!540618 () Bool)

(assert (=> b!1198076 (=> (not res!540618) (not e!769278))))

(declare-fun height!563 (Conc!3969) Int)

(assert (=> b!1198076 (= res!540618 (<= (- 1) (- (height!563 (left!10502 t!4115)) (height!563 (right!10832 t!4115)))))))

(declare-fun b!1198077 () Bool)

(declare-fun res!540617 () Bool)

(assert (=> b!1198077 (=> (not res!540617) (not e!769278))))

(assert (=> b!1198077 (= res!540617 (isBalanced!1154 (right!10832 t!4115)))))

(declare-fun b!1198078 () Bool)

(declare-fun res!540614 () Bool)

(assert (=> b!1198078 (=> (not res!540614) (not e!769278))))

(assert (=> b!1198078 (= res!540614 (<= (- (height!563 (left!10502 t!4115)) (height!563 (right!10832 t!4115))) 1))))

(declare-fun b!1198079 () Bool)

(declare-fun isEmpty!7252 (Conc!3969) Bool)

(assert (=> b!1198079 (= e!769278 (not (isEmpty!7252 (right!10832 t!4115))))))

(declare-fun b!1198080 () Bool)

(declare-fun res!540615 () Bool)

(assert (=> b!1198080 (=> (not res!540615) (not e!769278))))

(assert (=> b!1198080 (= res!540615 (not (isEmpty!7252 (left!10502 t!4115))))))

(declare-fun d!342472 () Bool)

(declare-fun res!540616 () Bool)

(assert (=> d!342472 (=> res!540616 e!769277)))

(assert (=> d!342472 (= res!540616 (not (is-Node!3969 t!4115)))))

(assert (=> d!342472 (= (isBalanced!1154 t!4115) e!769277)))

(declare-fun b!1198081 () Bool)

(declare-fun res!540619 () Bool)

(assert (=> b!1198081 (=> (not res!540619) (not e!769278))))

(assert (=> b!1198081 (= res!540619 (isBalanced!1154 (left!10502 t!4115)))))

(assert (= (and d!342472 (not res!540616)) b!1198076))

(assert (= (and b!1198076 res!540618) b!1198078))

(assert (= (and b!1198078 res!540614) b!1198081))

(assert (= (and b!1198081 res!540619) b!1198077))

(assert (= (and b!1198077 res!540617) b!1198080))

(assert (= (and b!1198080 res!540615) b!1198079))

(declare-fun m!1373335 () Bool)

(assert (=> b!1198079 m!1373335))

(declare-fun m!1373337 () Bool)

(assert (=> b!1198077 m!1373337))

(declare-fun m!1373339 () Bool)

(assert (=> b!1198078 m!1373339))

(declare-fun m!1373341 () Bool)

(assert (=> b!1198078 m!1373341))

(assert (=> b!1198076 m!1373339))

(assert (=> b!1198076 m!1373341))

(declare-fun m!1373343 () Bool)

(assert (=> b!1198080 m!1373343))

(declare-fun m!1373345 () Bool)

(assert (=> b!1198081 m!1373345))

(assert (=> b!1197878 d!342472))

(declare-fun d!342476 () Bool)

(declare-fun lt!410406 () Int)

(assert (=> d!342476 (= lt!410406 (size!9557 (list!4472 t!4115)))))

(assert (=> d!342476 (= lt!410406 (ite (is-Empty!3969 t!4115) 0 (ite (is-Leaf!6079 t!4115) (csize!8169 t!4115) (csize!8168 t!4115))))))

(assert (=> d!342476 (= (size!9556 t!4115) lt!410406)))

(declare-fun bs!288179 () Bool)

(assert (= bs!288179 d!342476))

(declare-fun m!1373347 () Bool)

(assert (=> bs!288179 m!1373347))

(assert (=> bs!288179 m!1373347))

(declare-fun m!1373349 () Bool)

(assert (=> bs!288179 m!1373349))

(assert (=> b!1197885 d!342476))

(declare-fun d!342478 () Bool)

(declare-fun c!199264 () Bool)

(assert (=> d!342478 (= c!199264 (is-Node!3969 t!4115))))

(declare-fun e!769279 () Bool)

(assert (=> d!342478 (= (inv!16080 t!4115) e!769279)))

(declare-fun b!1198082 () Bool)

(assert (=> b!1198082 (= e!769279 (inv!16084 t!4115))))

(declare-fun b!1198083 () Bool)

(declare-fun e!769280 () Bool)

(assert (=> b!1198083 (= e!769279 e!769280)))

(declare-fun res!540620 () Bool)

(assert (=> b!1198083 (= res!540620 (not (is-Leaf!6079 t!4115)))))

(assert (=> b!1198083 (=> res!540620 e!769280)))

(declare-fun b!1198084 () Bool)

(assert (=> b!1198084 (= e!769280 (inv!16085 t!4115))))

(assert (= (and d!342478 c!199264) b!1198082))

(assert (= (and d!342478 (not c!199264)) b!1198083))

(assert (= (and b!1198083 (not res!540620)) b!1198084))

(declare-fun m!1373351 () Bool)

(assert (=> b!1198082 m!1373351))

(declare-fun m!1373353 () Bool)

(assert (=> b!1198084 m!1373353))

(assert (=> start!106622 d!342478))

(declare-fun tp!341014 () Bool)

(declare-fun b!1198093 () Bool)

(declare-fun e!769285 () Bool)

(declare-fun tp!341016 () Bool)

(assert (=> b!1198093 (= e!769285 (and (inv!16080 (left!10502 (left!10502 t!4115))) tp!341016 (inv!16080 (right!10832 (left!10502 t!4115))) tp!341014))))

(declare-fun b!1198095 () Bool)

(declare-fun e!769286 () Bool)

(declare-fun tp!341015 () Bool)

(assert (=> b!1198095 (= e!769286 tp!341015)))

(declare-fun b!1198094 () Bool)

(assert (=> b!1198094 (= e!769285 (and (inv!16081 (xs!6676 (left!10502 t!4115))) e!769286))))

(assert (=> b!1197886 (= tp!340997 (and (inv!16080 (left!10502 t!4115)) e!769285))))

(assert (= (and b!1197886 (is-Node!3969 (left!10502 t!4115))) b!1198093))

(assert (= b!1198094 b!1198095))

(assert (= (and b!1197886 (is-Leaf!6079 (left!10502 t!4115))) b!1198094))

(declare-fun m!1373355 () Bool)

(assert (=> b!1198093 m!1373355))

(declare-fun m!1373357 () Bool)

(assert (=> b!1198093 m!1373357))

(declare-fun m!1373359 () Bool)

(assert (=> b!1198094 m!1373359))

(assert (=> b!1197886 m!1373131))

(declare-fun b!1198096 () Bool)

(declare-fun e!769287 () Bool)

(declare-fun tp!341019 () Bool)

(declare-fun tp!341017 () Bool)

(assert (=> b!1198096 (= e!769287 (and (inv!16080 (left!10502 (right!10832 t!4115))) tp!341019 (inv!16080 (right!10832 (right!10832 t!4115))) tp!341017))))

(declare-fun b!1198098 () Bool)

(declare-fun e!769288 () Bool)

(declare-fun tp!341018 () Bool)

(assert (=> b!1198098 (= e!769288 tp!341018)))

(declare-fun b!1198097 () Bool)

(assert (=> b!1198097 (= e!769287 (and (inv!16081 (xs!6676 (right!10832 t!4115))) e!769288))))

(assert (=> b!1197886 (= tp!340996 (and (inv!16080 (right!10832 t!4115)) e!769287))))

(assert (= (and b!1197886 (is-Node!3969 (right!10832 t!4115))) b!1198096))

(assert (= b!1198097 b!1198098))

(assert (= (and b!1197886 (is-Leaf!6079 (right!10832 t!4115))) b!1198097))

(declare-fun m!1373361 () Bool)

(assert (=> b!1198096 m!1373361))

(declare-fun m!1373363 () Bool)

(assert (=> b!1198096 m!1373363))

(declare-fun m!1373365 () Bool)

(assert (=> b!1198097 m!1373365))

(assert (=> b!1197886 m!1373133))

(declare-fun b!1198103 () Bool)

(declare-fun e!769291 () Bool)

(declare-fun tp_is_empty!5965 () Bool)

(declare-fun tp!341022 () Bool)

(assert (=> b!1198103 (= e!769291 (and tp_is_empty!5965 tp!341022))))

(assert (=> b!1197882 (= tp!340998 e!769291)))

(assert (= (and b!1197882 (is-Cons!12036 (innerList!4029 (xs!6676 t!4115)))) b!1198103))

(push 1)

(assert tp_is_empty!5965)

(assert (not b!1197969))

(assert (not b!1198014))

(assert (not b!1198078))

(assert (not bm!83269))

(assert (not b!1198096))

(assert (not b!1198082))

(assert (not d!342452))

(assert (not d!342448))

(assert (not b!1197950))

(assert (not b!1198055))

(assert (not d!342458))

(assert (not b!1197985))

(assert (not b!1198098))

(assert (not bm!83270))

(assert (not b!1198027))

(assert (not b!1198084))

(assert (not b!1198059))

(assert (not b!1198077))

(assert (not b!1198054))

(assert (not b!1198058))

(assert (not b!1198095))

(assert (not b!1198036))

(assert (not b!1198079))

(assert (not b!1198038))

(assert (not d!342432))

(assert (not b!1197982))

(assert (not b!1197981))

(assert (not d!342436))

(assert (not b!1197886))

(assert (not b!1198028))

(assert (not b!1198041))

(assert (not d!342456))

(assert (not b!1198081))

(assert (not b!1198076))

(assert (not b!1198097))

(assert (not d!342450))

(assert (not b!1198039))

(assert (not bm!83265))

(assert (not bm!83266))

(assert (not b!1198094))

(assert (not b!1198093))

(assert (not d!342476))

(assert (not d!342430))

(assert (not b!1198080))

(assert (not b!1198017))

(assert (not b!1197968))

(assert (not b!1198103))

(assert (not b!1197986))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!342496 () Bool)

(declare-fun res!540639 () Bool)

(declare-fun e!769335 () Bool)

(assert (=> d!342496 (=> (not res!540639) (not e!769335))))

(assert (=> d!342496 (= res!540639 (= (csize!8168 (right!10832 t!4115)) (+ (size!9556 (left!10502 (right!10832 t!4115))) (size!9556 (right!10832 (right!10832 t!4115))))))))

(assert (=> d!342496 (= (inv!16084 (right!10832 t!4115)) e!769335)))

(declare-fun b!1198185 () Bool)

(declare-fun res!540640 () Bool)

(assert (=> b!1198185 (=> (not res!540640) (not e!769335))))

(assert (=> b!1198185 (= res!540640 (and (not (= (left!10502 (right!10832 t!4115)) Empty!3969)) (not (= (right!10832 (right!10832 t!4115)) Empty!3969))))))

(declare-fun b!1198186 () Bool)

(declare-fun res!540641 () Bool)

(assert (=> b!1198186 (=> (not res!540641) (not e!769335))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1198186 (= res!540641 (= (cheight!4180 (right!10832 t!4115)) (+ (max!0 (height!563 (left!10502 (right!10832 t!4115))) (height!563 (right!10832 (right!10832 t!4115)))) 1)))))

(declare-fun b!1198187 () Bool)

(assert (=> b!1198187 (= e!769335 (<= 0 (cheight!4180 (right!10832 t!4115))))))

(assert (= (and d!342496 res!540639) b!1198185))

(assert (= (and b!1198185 res!540640) b!1198186))

(assert (= (and b!1198186 res!540641) b!1198187))

(declare-fun m!1373443 () Bool)

(assert (=> d!342496 m!1373443))

(declare-fun m!1373445 () Bool)

(assert (=> d!342496 m!1373445))

(declare-fun m!1373447 () Bool)

(assert (=> b!1198186 m!1373447))

(declare-fun m!1373449 () Bool)

(assert (=> b!1198186 m!1373449))

(assert (=> b!1198186 m!1373447))

(assert (=> b!1198186 m!1373449))

(declare-fun m!1373451 () Bool)

(assert (=> b!1198186 m!1373451))

(assert (=> b!1198039 d!342496))

(declare-fun d!342498 () Bool)

(declare-fun lt!410417 () Int)

(assert (=> d!342498 (>= lt!410417 0)))

(declare-fun ListPrimitiveSize!75 (List!12060) Int)

(assert (=> d!342498 (= lt!410417 (+ 1 (ListPrimitiveSize!75 (innerList!4029 (xs!6676 (right!10832 t!4115))))))))

(assert (=> d!342498 (= (IArrayPrimitiveSize!3 (xs!6676 (right!10832 t!4115))) lt!410417)))

(declare-fun bs!288183 () Bool)

(assert (= bs!288183 d!342498))

(declare-fun m!1373453 () Bool)

(assert (=> bs!288183 m!1373453))

(assert (=> b!1198055 d!342498))

(declare-fun d!342500 () Bool)

(declare-fun c!199289 () Bool)

(assert (=> d!342500 (= c!199289 (is-Nil!12036 lt!410391))))

(declare-fun e!769338 () (Set T!21738))

(assert (=> d!342500 (= (content!1683 lt!410391) e!769338)))

(declare-fun b!1198192 () Bool)

(assert (=> b!1198192 (= e!769338 (as set.empty (Set T!21738)))))

(declare-fun b!1198193 () Bool)

(assert (=> b!1198193 (= e!769338 (set.union (set.insert (h!17437 lt!410391) (as set.empty (Set T!21738))) (content!1683 (t!112400 lt!410391))))))

(assert (= (and d!342500 c!199289) b!1198192))

(assert (= (and d!342500 (not c!199289)) b!1198193))

(declare-fun m!1373455 () Bool)

(assert (=> b!1198193 m!1373455))

(declare-fun m!1373457 () Bool)

(assert (=> b!1198193 m!1373457))

(assert (=> d!342436 d!342500))

(declare-fun d!342502 () Bool)

(declare-fun c!199290 () Bool)

(assert (=> d!342502 (= c!199290 (is-Nil!12036 lt!410359))))

(declare-fun e!769339 () (Set T!21738))

(assert (=> d!342502 (= (content!1683 lt!410359) e!769339)))

(declare-fun b!1198194 () Bool)

(assert (=> b!1198194 (= e!769339 (as set.empty (Set T!21738)))))

(declare-fun b!1198195 () Bool)

(assert (=> b!1198195 (= e!769339 (set.union (set.insert (h!17437 lt!410359) (as set.empty (Set T!21738))) (content!1683 (t!112400 lt!410359))))))

(assert (= (and d!342502 c!199290) b!1198194))

(assert (= (and d!342502 (not c!199290)) b!1198195))

(declare-fun m!1373459 () Bool)

(assert (=> b!1198195 m!1373459))

(declare-fun m!1373461 () Bool)

(assert (=> b!1198195 m!1373461))

(assert (=> d!342436 d!342502))

(declare-fun d!342504 () Bool)

(declare-fun c!199291 () Bool)

(assert (=> d!342504 (= c!199291 (is-Nil!12036 lt!410363))))

(declare-fun e!769340 () (Set T!21738))

(assert (=> d!342504 (= (content!1683 lt!410363) e!769340)))

(declare-fun b!1198196 () Bool)

(assert (=> b!1198196 (= e!769340 (as set.empty (Set T!21738)))))

(declare-fun b!1198197 () Bool)

(assert (=> b!1198197 (= e!769340 (set.union (set.insert (h!17437 lt!410363) (as set.empty (Set T!21738))) (content!1683 (t!112400 lt!410363))))))

(assert (= (and d!342504 c!199291) b!1198196))

(assert (= (and d!342504 (not c!199291)) b!1198197))

(declare-fun m!1373463 () Bool)

(assert (=> b!1198197 m!1373463))

(declare-fun m!1373465 () Bool)

(assert (=> b!1198197 m!1373465))

(assert (=> d!342436 d!342504))

(declare-fun b!1198198 () Bool)

(declare-fun e!769341 () Int)

(declare-fun call!83285 () Int)

(assert (=> b!1198198 (= e!769341 (+ 1 (ConcPrimitiveSize!3 (left!10502 (left!10502 t!4115))) (ConcPrimitiveSize!3 (right!10832 (left!10502 t!4115))) (BigIntAbs!0 (csize!8168 (left!10502 t!4115))) call!83285))))

(declare-fun d!342506 () Bool)

(declare-fun lt!410418 () Int)

(assert (=> d!342506 (>= lt!410418 0)))

(assert (=> d!342506 (= lt!410418 e!769341)))

(declare-fun c!199293 () Bool)

(assert (=> d!342506 (= c!199293 (is-Node!3969 (left!10502 t!4115)))))

(assert (=> d!342506 (= (ConcPrimitiveSize!3 (left!10502 t!4115)) lt!410418)))

(declare-fun b!1198199 () Bool)

(declare-fun e!769342 () Int)

(assert (=> b!1198199 (= e!769342 (+ 1 (IArrayPrimitiveSize!3 (xs!6676 (left!10502 t!4115))) call!83285))))

(declare-fun b!1198200 () Bool)

(assert (=> b!1198200 (= e!769341 e!769342)))

(declare-fun c!199292 () Bool)

(assert (=> b!1198200 (= c!199292 (is-Leaf!6079 (left!10502 t!4115)))))

(declare-fun bm!83280 () Bool)

(assert (=> bm!83280 (= call!83285 (BigIntAbs!0 (ite c!199293 (cheight!4180 (left!10502 t!4115)) (csize!8169 (left!10502 t!4115)))))))

(declare-fun b!1198201 () Bool)

(assert (=> b!1198201 (= e!769342 0)))

(assert (= (and d!342506 c!199293) b!1198198))

(assert (= (and d!342506 (not c!199293)) b!1198200))

(assert (= (and b!1198200 c!199292) b!1198199))

(assert (= (and b!1198200 (not c!199292)) b!1198201))

(assert (= (or b!1198198 b!1198199) bm!83280))

(declare-fun m!1373467 () Bool)

(assert (=> b!1198198 m!1373467))

(declare-fun m!1373469 () Bool)

(assert (=> b!1198198 m!1373469))

(declare-fun m!1373471 () Bool)

(assert (=> b!1198198 m!1373471))

(declare-fun m!1373473 () Bool)

(assert (=> b!1198199 m!1373473))

(declare-fun m!1373475 () Bool)

(assert (=> bm!83280 m!1373475))

(assert (=> b!1198058 d!342506))

(assert (=> b!1198058 d!342466))

(declare-fun d!342508 () Bool)

(assert (=> d!342508 (= (BigIntAbs!0 (csize!8168 t!4115)) (ite (>= (csize!8168 t!4115) 0) (csize!8168 t!4115) (- (csize!8168 t!4115))))))

(assert (=> b!1198058 d!342508))

(declare-fun b!1198202 () Bool)

(declare-fun e!769343 () Bool)

(declare-fun e!769344 () Bool)

(assert (=> b!1198202 (= e!769343 e!769344)))

(declare-fun res!540646 () Bool)

(assert (=> b!1198202 (=> (not res!540646) (not e!769344))))

(assert (=> b!1198202 (= res!540646 (<= (- 1) (- (height!563 (left!10502 (right!10832 t!4115))) (height!563 (right!10832 (right!10832 t!4115))))))))

(declare-fun b!1198203 () Bool)

(declare-fun res!540645 () Bool)

(assert (=> b!1198203 (=> (not res!540645) (not e!769344))))

(assert (=> b!1198203 (= res!540645 (isBalanced!1154 (right!10832 (right!10832 t!4115))))))

(declare-fun b!1198204 () Bool)

(declare-fun res!540642 () Bool)

(assert (=> b!1198204 (=> (not res!540642) (not e!769344))))

(assert (=> b!1198204 (= res!540642 (<= (- (height!563 (left!10502 (right!10832 t!4115))) (height!563 (right!10832 (right!10832 t!4115)))) 1))))

(declare-fun b!1198205 () Bool)

(assert (=> b!1198205 (= e!769344 (not (isEmpty!7252 (right!10832 (right!10832 t!4115)))))))

(declare-fun b!1198206 () Bool)

(declare-fun res!540643 () Bool)

(assert (=> b!1198206 (=> (not res!540643) (not e!769344))))

(assert (=> b!1198206 (= res!540643 (not (isEmpty!7252 (left!10502 (right!10832 t!4115)))))))

(declare-fun d!342510 () Bool)

(declare-fun res!540644 () Bool)

(assert (=> d!342510 (=> res!540644 e!769343)))

(assert (=> d!342510 (= res!540644 (not (is-Node!3969 (right!10832 t!4115))))))

(assert (=> d!342510 (= (isBalanced!1154 (right!10832 t!4115)) e!769343)))

(declare-fun b!1198207 () Bool)

(declare-fun res!540647 () Bool)

(assert (=> b!1198207 (=> (not res!540647) (not e!769344))))

(assert (=> b!1198207 (= res!540647 (isBalanced!1154 (left!10502 (right!10832 t!4115))))))

(assert (= (and d!342510 (not res!540644)) b!1198202))

(assert (= (and b!1198202 res!540646) b!1198204))

(assert (= (and b!1198204 res!540642) b!1198207))

(assert (= (and b!1198207 res!540647) b!1198203))

(assert (= (and b!1198203 res!540645) b!1198206))

(assert (= (and b!1198206 res!540643) b!1198205))

(declare-fun m!1373477 () Bool)

(assert (=> b!1198205 m!1373477))

(declare-fun m!1373479 () Bool)

(assert (=> b!1198203 m!1373479))

(assert (=> b!1198204 m!1373447))

(assert (=> b!1198204 m!1373449))

(assert (=> b!1198202 m!1373447))

(assert (=> b!1198202 m!1373449))

(declare-fun m!1373481 () Bool)

(assert (=> b!1198206 m!1373481))

(declare-fun m!1373483 () Bool)

(assert (=> b!1198207 m!1373483))

(assert (=> b!1198077 d!342510))

(declare-fun b!1198222 () Bool)

(declare-fun e!769354 () Int)

(assert (=> b!1198222 (= e!769354 0)))

(declare-fun b!1198223 () Bool)

(declare-fun e!769353 () Bool)

(declare-fun lt!410421 () List!12060)

(assert (=> b!1198223 (= e!769353 (= (size!9557 lt!410421) e!769354))))

(declare-fun c!199300 () Bool)

(assert (=> b!1198223 (= c!199300 (<= (- until!31 from!553) 0))))

(declare-fun b!1198224 () Bool)

(declare-fun e!769355 () List!12060)

(assert (=> b!1198224 (= e!769355 Nil!12036)))

(declare-fun b!1198225 () Bool)

(declare-fun e!769356 () Int)

(assert (=> b!1198225 (= e!769354 e!769356)))

(declare-fun c!199302 () Bool)

(assert (=> b!1198225 (= c!199302 (>= (- until!31 from!553) (size!9557 (drop!594 (++!3071 lt!410359 lt!410363) from!553))))))

(declare-fun d!342512 () Bool)

(assert (=> d!342512 e!769353))

(declare-fun res!540650 () Bool)

(assert (=> d!342512 (=> (not res!540650) (not e!769353))))

(assert (=> d!342512 (= res!540650 (set.subset (content!1683 lt!410421) (content!1683 (drop!594 (++!3071 lt!410359 lt!410363) from!553))))))

(assert (=> d!342512 (= lt!410421 e!769355)))

(declare-fun c!199301 () Bool)

(assert (=> d!342512 (= c!199301 (or (is-Nil!12036 (drop!594 (++!3071 lt!410359 lt!410363) from!553)) (<= (- until!31 from!553) 0)))))

(assert (=> d!342512 (= (take!122 (drop!594 (++!3071 lt!410359 lt!410363) from!553) (- until!31 from!553)) lt!410421)))

(declare-fun b!1198226 () Bool)

(assert (=> b!1198226 (= e!769355 (Cons!12036 (h!17437 (drop!594 (++!3071 lt!410359 lt!410363) from!553)) (take!122 (t!112400 (drop!594 (++!3071 lt!410359 lt!410363) from!553)) (- (- until!31 from!553) 1))))))

(declare-fun b!1198227 () Bool)

(assert (=> b!1198227 (= e!769356 (- until!31 from!553))))

(declare-fun b!1198228 () Bool)

(assert (=> b!1198228 (= e!769356 (size!9557 (drop!594 (++!3071 lt!410359 lt!410363) from!553)))))

(assert (= (and d!342512 c!199301) b!1198224))

(assert (= (and d!342512 (not c!199301)) b!1198226))

(assert (= (and d!342512 res!540650) b!1198223))

(assert (= (and b!1198223 c!199300) b!1198222))

(assert (= (and b!1198223 (not c!199300)) b!1198225))

(assert (= (and b!1198225 c!199302) b!1198228))

(assert (= (and b!1198225 (not c!199302)) b!1198227))

(assert (=> b!1198228 m!1373201))

(declare-fun m!1373485 () Bool)

(assert (=> b!1198228 m!1373485))

(declare-fun m!1373487 () Bool)

(assert (=> b!1198226 m!1373487))

(declare-fun m!1373489 () Bool)

(assert (=> d!342512 m!1373489))

(assert (=> d!342512 m!1373201))

(declare-fun m!1373491 () Bool)

(assert (=> d!342512 m!1373491))

(assert (=> b!1198225 m!1373201))

(assert (=> b!1198225 m!1373485))

(declare-fun m!1373493 () Bool)

(assert (=> b!1198223 m!1373493))

(assert (=> d!342432 d!342512))

(declare-fun b!1198247 () Bool)

(declare-fun e!769367 () List!12060)

(declare-fun e!769371 () List!12060)

(assert (=> b!1198247 (= e!769367 e!769371)))

(declare-fun c!199314 () Bool)

(assert (=> b!1198247 (= c!199314 (<= from!553 0))))

(declare-fun b!1198248 () Bool)

(declare-fun e!769369 () Int)

(declare-fun call!83288 () Int)

(assert (=> b!1198248 (= e!769369 call!83288)))

(declare-fun b!1198249 () Bool)

(declare-fun e!769370 () Int)

(assert (=> b!1198249 (= e!769370 (- call!83288 from!553))))

(declare-fun bm!83283 () Bool)

(assert (=> bm!83283 (= call!83288 (size!9557 (++!3071 lt!410359 lt!410363)))))

(declare-fun b!1198250 () Bool)

(assert (=> b!1198250 (= e!769371 (drop!594 (t!112400 (++!3071 lt!410359 lt!410363)) (- from!553 1)))))

(declare-fun d!342514 () Bool)

(declare-fun e!769368 () Bool)

(assert (=> d!342514 e!769368))

(declare-fun res!540653 () Bool)

(assert (=> d!342514 (=> (not res!540653) (not e!769368))))

(declare-fun lt!410424 () List!12060)

(assert (=> d!342514 (= res!540653 (set.subset (content!1683 lt!410424) (content!1683 (++!3071 lt!410359 lt!410363))))))

(assert (=> d!342514 (= lt!410424 e!769367)))

(declare-fun c!199312 () Bool)

(assert (=> d!342514 (= c!199312 (is-Nil!12036 (++!3071 lt!410359 lt!410363)))))

(assert (=> d!342514 (= (drop!594 (++!3071 lt!410359 lt!410363) from!553) lt!410424)))

(declare-fun b!1198251 () Bool)

(assert (=> b!1198251 (= e!769371 (++!3071 lt!410359 lt!410363))))

(declare-fun b!1198252 () Bool)

(assert (=> b!1198252 (= e!769368 (= (size!9557 lt!410424) e!769369))))

(declare-fun c!199311 () Bool)

(assert (=> b!1198252 (= c!199311 (<= from!553 0))))

(declare-fun b!1198253 () Bool)

(assert (=> b!1198253 (= e!769367 Nil!12036)))

(declare-fun b!1198254 () Bool)

(assert (=> b!1198254 (= e!769370 0)))

(declare-fun b!1198255 () Bool)

(assert (=> b!1198255 (= e!769369 e!769370)))

(declare-fun c!199313 () Bool)

(assert (=> b!1198255 (= c!199313 (>= from!553 call!83288))))

(assert (= (and d!342514 c!199312) b!1198253))

(assert (= (and d!342514 (not c!199312)) b!1198247))

(assert (= (and b!1198247 c!199314) b!1198251))

(assert (= (and b!1198247 (not c!199314)) b!1198250))

(assert (= (and d!342514 res!540653) b!1198252))

(assert (= (and b!1198252 c!199311) b!1198248))

(assert (= (and b!1198252 (not c!199311)) b!1198255))

(assert (= (and b!1198255 c!199313) b!1198254))

(assert (= (and b!1198255 (not c!199313)) b!1198249))

(assert (= (or b!1198248 b!1198255 b!1198249) bm!83283))

(assert (=> bm!83283 m!1373143))

(declare-fun m!1373495 () Bool)

(assert (=> bm!83283 m!1373495))

(declare-fun m!1373497 () Bool)

(assert (=> b!1198250 m!1373497))

(declare-fun m!1373499 () Bool)

(assert (=> d!342514 m!1373499))

(assert (=> d!342514 m!1373143))

(declare-fun m!1373501 () Bool)

(assert (=> d!342514 m!1373501))

(declare-fun m!1373503 () Bool)

(assert (=> b!1198252 m!1373503))

(assert (=> d!342432 d!342514))

(declare-fun d!342516 () Bool)

(declare-fun c!199315 () Bool)

(assert (=> d!342516 (= c!199315 (is-Nil!12036 lt!410395))))

(declare-fun e!769372 () (Set T!21738))

(assert (=> d!342516 (= (content!1683 lt!410395) e!769372)))

(declare-fun b!1198256 () Bool)

(assert (=> b!1198256 (= e!769372 (as set.empty (Set T!21738)))))

(declare-fun b!1198257 () Bool)

(assert (=> b!1198257 (= e!769372 (set.union (set.insert (h!17437 lt!410395) (as set.empty (Set T!21738))) (content!1683 (t!112400 lt!410395))))))

(assert (= (and d!342516 c!199315) b!1198256))

(assert (= (and d!342516 (not c!199315)) b!1198257))

(declare-fun m!1373505 () Bool)

(assert (=> b!1198257 m!1373505))

(declare-fun m!1373507 () Bool)

(assert (=> b!1198257 m!1373507))

(assert (=> d!342450 d!342516))

(declare-fun d!342518 () Bool)

(declare-fun c!199316 () Bool)

(assert (=> d!342518 (= c!199316 (is-Nil!12036 (slice!460 lt!410359 from!553 lt!410360)))))

(declare-fun e!769373 () (Set T!21738))

(assert (=> d!342518 (= (content!1683 (slice!460 lt!410359 from!553 lt!410360)) e!769373)))

(declare-fun b!1198258 () Bool)

(assert (=> b!1198258 (= e!769373 (as set.empty (Set T!21738)))))

(declare-fun b!1198259 () Bool)

(assert (=> b!1198259 (= e!769373 (set.union (set.insert (h!17437 (slice!460 lt!410359 from!553 lt!410360)) (as set.empty (Set T!21738))) (content!1683 (t!112400 (slice!460 lt!410359 from!553 lt!410360)))))))

(assert (= (and d!342518 c!199316) b!1198258))

(assert (= (and d!342518 (not c!199316)) b!1198259))

(declare-fun m!1373509 () Bool)

(assert (=> b!1198259 m!1373509))

(declare-fun m!1373511 () Bool)

(assert (=> b!1198259 m!1373511))

(assert (=> d!342450 d!342518))

(declare-fun d!342520 () Bool)

(declare-fun c!199317 () Bool)

(assert (=> d!342520 (= c!199317 (is-Nil!12036 call!83251))))

(declare-fun e!769374 () (Set T!21738))

(assert (=> d!342520 (= (content!1683 call!83251) e!769374)))

(declare-fun b!1198260 () Bool)

(assert (=> b!1198260 (= e!769374 (as set.empty (Set T!21738)))))

(declare-fun b!1198261 () Bool)

(assert (=> b!1198261 (= e!769374 (set.union (set.insert (h!17437 call!83251) (as set.empty (Set T!21738))) (content!1683 (t!112400 call!83251))))))

(assert (= (and d!342520 c!199317) b!1198260))

(assert (= (and d!342520 (not c!199317)) b!1198261))

(declare-fun m!1373513 () Bool)

(assert (=> b!1198261 m!1373513))

(declare-fun m!1373515 () Bool)

(assert (=> b!1198261 m!1373515))

(assert (=> d!342450 d!342520))

(declare-fun b!1198262 () Bool)

(declare-fun e!769375 () Int)

(declare-fun call!83289 () Int)

(assert (=> b!1198262 (= e!769375 (+ 1 (ConcPrimitiveSize!3 (left!10502 (left!10502 (right!10832 t!4115)))) (ConcPrimitiveSize!3 (right!10832 (left!10502 (right!10832 t!4115)))) (BigIntAbs!0 (csize!8168 (left!10502 (right!10832 t!4115)))) call!83289))))

(declare-fun d!342522 () Bool)

(declare-fun lt!410425 () Int)

(assert (=> d!342522 (>= lt!410425 0)))

(assert (=> d!342522 (= lt!410425 e!769375)))

(declare-fun c!199319 () Bool)

(assert (=> d!342522 (= c!199319 (is-Node!3969 (left!10502 (right!10832 t!4115))))))

(assert (=> d!342522 (= (ConcPrimitiveSize!3 (left!10502 (right!10832 t!4115))) lt!410425)))

(declare-fun b!1198263 () Bool)

(declare-fun e!769376 () Int)

(assert (=> b!1198263 (= e!769376 (+ 1 (IArrayPrimitiveSize!3 (xs!6676 (left!10502 (right!10832 t!4115)))) call!83289))))

(declare-fun b!1198264 () Bool)

(assert (=> b!1198264 (= e!769375 e!769376)))

(declare-fun c!199318 () Bool)

(assert (=> b!1198264 (= c!199318 (is-Leaf!6079 (left!10502 (right!10832 t!4115))))))

(declare-fun bm!83284 () Bool)

(assert (=> bm!83284 (= call!83289 (BigIntAbs!0 (ite c!199319 (cheight!4180 (left!10502 (right!10832 t!4115))) (csize!8169 (left!10502 (right!10832 t!4115))))))))

(declare-fun b!1198265 () Bool)

(assert (=> b!1198265 (= e!769376 0)))

(assert (= (and d!342522 c!199319) b!1198262))

(assert (= (and d!342522 (not c!199319)) b!1198264))

(assert (= (and b!1198264 c!199318) b!1198263))

(assert (= (and b!1198264 (not c!199318)) b!1198265))

(assert (= (or b!1198262 b!1198263) bm!83284))

(declare-fun m!1373517 () Bool)

(assert (=> b!1198262 m!1373517))

(declare-fun m!1373519 () Bool)

(assert (=> b!1198262 m!1373519))

(declare-fun m!1373521 () Bool)

(assert (=> b!1198262 m!1373521))

(declare-fun m!1373523 () Bool)

(assert (=> b!1198263 m!1373523))

(declare-fun m!1373525 () Bool)

(assert (=> bm!83284 m!1373525))

(assert (=> b!1198054 d!342522))

(declare-fun b!1198266 () Bool)

(declare-fun e!769377 () Int)

(declare-fun call!83290 () Int)

(assert (=> b!1198266 (= e!769377 (+ 1 (ConcPrimitiveSize!3 (left!10502 (right!10832 (right!10832 t!4115)))) (ConcPrimitiveSize!3 (right!10832 (right!10832 (right!10832 t!4115)))) (BigIntAbs!0 (csize!8168 (right!10832 (right!10832 t!4115)))) call!83290))))

(declare-fun d!342524 () Bool)

(declare-fun lt!410426 () Int)

(assert (=> d!342524 (>= lt!410426 0)))

(assert (=> d!342524 (= lt!410426 e!769377)))

(declare-fun c!199321 () Bool)

(assert (=> d!342524 (= c!199321 (is-Node!3969 (right!10832 (right!10832 t!4115))))))

(assert (=> d!342524 (= (ConcPrimitiveSize!3 (right!10832 (right!10832 t!4115))) lt!410426)))

(declare-fun b!1198267 () Bool)

(declare-fun e!769378 () Int)

(assert (=> b!1198267 (= e!769378 (+ 1 (IArrayPrimitiveSize!3 (xs!6676 (right!10832 (right!10832 t!4115)))) call!83290))))

(declare-fun b!1198268 () Bool)

(assert (=> b!1198268 (= e!769377 e!769378)))

(declare-fun c!199320 () Bool)

(assert (=> b!1198268 (= c!199320 (is-Leaf!6079 (right!10832 (right!10832 t!4115))))))

(declare-fun bm!83285 () Bool)

(assert (=> bm!83285 (= call!83290 (BigIntAbs!0 (ite c!199321 (cheight!4180 (right!10832 (right!10832 t!4115))) (csize!8169 (right!10832 (right!10832 t!4115))))))))

(declare-fun b!1198269 () Bool)

(assert (=> b!1198269 (= e!769378 0)))

(assert (= (and d!342524 c!199321) b!1198266))

(assert (= (and d!342524 (not c!199321)) b!1198268))

(assert (= (and b!1198268 c!199320) b!1198267))

(assert (= (and b!1198268 (not c!199320)) b!1198269))

(assert (= (or b!1198266 b!1198267) bm!83285))

(declare-fun m!1373527 () Bool)

(assert (=> b!1198266 m!1373527))

(declare-fun m!1373529 () Bool)

(assert (=> b!1198266 m!1373529))

(declare-fun m!1373531 () Bool)

(assert (=> b!1198266 m!1373531))

(declare-fun m!1373533 () Bool)

(assert (=> b!1198267 m!1373533))

(declare-fun m!1373535 () Bool)

(assert (=> bm!83285 m!1373535))

(assert (=> b!1198054 d!342524))

(declare-fun d!342526 () Bool)

(assert (=> d!342526 (= (BigIntAbs!0 (csize!8168 (right!10832 t!4115))) (ite (>= (csize!8168 (right!10832 t!4115)) 0) (csize!8168 (right!10832 t!4115)) (- (csize!8168 (right!10832 t!4115)))))))

(assert (=> b!1198054 d!342526))

(assert (=> d!342448 d!342432))

(assert (=> d!342448 d!342436))

(assert (=> d!342448 d!342434))

(declare-fun b!1198282 () Bool)

(declare-fun e!769387 () List!12060)

(declare-fun call!83299 () List!12060)

(assert (=> b!1198282 (= e!769387 call!83299)))

(declare-fun bm!83292 () Bool)

(declare-fun c!199330 () Bool)

(declare-fun c!199329 () Bool)

(declare-fun call!83298 () Int)

(declare-fun e!769385 () Int)

(assert (=> bm!83292 (= call!83299 (slice!460 (ite c!199330 lt!410363 (ite c!199329 lt!410359 lt!410363)) (ite c!199330 (- from!553 call!83298) (ite c!199329 from!553 0)) (ite c!199330 (- until!31 call!83298) e!769385)))))

(declare-fun call!83297 () List!12060)

(declare-fun b!1198283 () Bool)

(declare-fun e!769386 () List!12060)

(assert (=> b!1198283 (= e!769386 (++!3071 (slice!460 lt!410359 from!553 call!83298) call!83297))))

(declare-fun b!1198284 () Bool)

(assert (=> b!1198284 (= e!769387 e!769386)))

(assert (=> b!1198284 (= c!199329 (<= until!31 call!83298))))

(declare-fun b!1198285 () Bool)

(assert (=> b!1198285 (= e!769385 until!31)))

(declare-fun bm!83293 () Bool)

(assert (=> bm!83293 (= call!83298 (size!9557 lt!410359))))

(declare-fun b!1198286 () Bool)

(assert (=> b!1198286 (= e!769386 call!83297)))

(declare-fun b!1198287 () Bool)

(assert (=> b!1198287 (= e!769385 (- until!31 call!83298))))

(declare-fun bm!83294 () Bool)

(declare-fun c!199328 () Bool)

(assert (=> bm!83294 (= c!199328 c!199329)))

(assert (=> bm!83294 (= call!83297 call!83299)))

(declare-fun d!342528 () Bool)

(assert (=> d!342528 (= (slice!460 (++!3071 lt!410359 lt!410363) from!553 until!31) e!769387)))

(assert (=> d!342528 (= c!199330 (<= (size!9557 lt!410359) from!553))))

(assert (=> d!342528 true))

(declare-fun _$8!197 () Unit!18442)

(assert (=> d!342528 (= (choose!7725 lt!410359 lt!410363 from!553 until!31) _$8!197)))

(assert (= (and d!342528 c!199330) b!1198282))

(assert (= (and d!342528 (not c!199330)) b!1198284))

(assert (= (and b!1198284 c!199329) b!1198286))

(assert (= (and b!1198284 (not c!199329)) b!1198283))

(assert (= (or b!1198286 b!1198283) bm!83294))

(assert (= (and bm!83294 c!199328) b!1198285))

(assert (= (and bm!83294 (not c!199328)) b!1198287))

(assert (= (or b!1198282 b!1198283 b!1198284 b!1198287) bm!83293))

(assert (= (or b!1198282 bm!83294) bm!83292))

(declare-fun m!1373537 () Bool)

(assert (=> bm!83292 m!1373537))

(declare-fun m!1373539 () Bool)

(assert (=> b!1198283 m!1373539))

(assert (=> b!1198283 m!1373539))

(declare-fun m!1373541 () Bool)

(assert (=> b!1198283 m!1373541))

(assert (=> bm!83293 m!1373147))

(assert (=> d!342528 m!1373143))

(assert (=> d!342528 m!1373143))

(assert (=> d!342528 m!1373145))

(assert (=> d!342528 m!1373147))

(assert (=> d!342448 d!342528))

(declare-fun d!342530 () Bool)

(assert (=> d!342530 (= (height!563 (left!10502 t!4115)) (ite (is-Empty!3969 (left!10502 t!4115)) 0 (ite (is-Leaf!6079 (left!10502 t!4115)) 1 (cheight!4180 (left!10502 t!4115)))))))

(assert (=> b!1198076 d!342530))

(declare-fun d!342532 () Bool)

(assert (=> d!342532 (= (height!563 (right!10832 t!4115)) (ite (is-Empty!3969 (right!10832 t!4115)) 0 (ite (is-Leaf!6079 (right!10832 t!4115)) 1 (cheight!4180 (right!10832 t!4115)))))))

(assert (=> b!1198076 d!342532))

(declare-fun d!342534 () Bool)

(declare-fun lt!410427 () Int)

(assert (=> d!342534 (>= lt!410427 0)))

(declare-fun e!769388 () Int)

(assert (=> d!342534 (= lt!410427 e!769388)))

(declare-fun c!199331 () Bool)

(assert (=> d!342534 (= c!199331 (is-Nil!12036 (list!4472 t!4115)))))

(assert (=> d!342534 (= (size!9557 (list!4472 t!4115)) lt!410427)))

(declare-fun b!1198288 () Bool)

(assert (=> b!1198288 (= e!769388 0)))

(declare-fun b!1198289 () Bool)

(assert (=> b!1198289 (= e!769388 (+ 1 (size!9557 (t!112400 (list!4472 t!4115)))))))

(assert (= (and d!342534 c!199331) b!1198288))

(assert (= (and d!342534 (not c!199331)) b!1198289))

(declare-fun m!1373543 () Bool)

(assert (=> b!1198289 m!1373543))

(assert (=> d!342476 d!342534))

(declare-fun b!1198290 () Bool)

(declare-fun e!769389 () List!12060)

(assert (=> b!1198290 (= e!769389 Nil!12036)))

(declare-fun d!342536 () Bool)

(declare-fun c!199332 () Bool)

(assert (=> d!342536 (= c!199332 (is-Empty!3969 t!4115))))

(assert (=> d!342536 (= (list!4472 t!4115) e!769389)))

(declare-fun b!1198293 () Bool)

(declare-fun e!769390 () List!12060)

(assert (=> b!1198293 (= e!769390 (++!3071 (list!4472 (left!10502 t!4115)) (list!4472 (right!10832 t!4115))))))

(declare-fun b!1198292 () Bool)

(assert (=> b!1198292 (= e!769390 (list!4474 (xs!6676 t!4115)))))

(declare-fun b!1198291 () Bool)

(assert (=> b!1198291 (= e!769389 e!769390)))

(declare-fun c!199333 () Bool)

(assert (=> b!1198291 (= c!199333 (is-Leaf!6079 t!4115))))

(assert (= (and d!342536 c!199332) b!1198290))

(assert (= (and d!342536 (not c!199332)) b!1198291))

(assert (= (and b!1198291 c!199333) b!1198292))

(assert (= (and b!1198291 (not c!199333)) b!1198293))

(assert (=> b!1198293 m!1373137))

(assert (=> b!1198293 m!1373141))

(assert (=> b!1198293 m!1373137))

(assert (=> b!1198293 m!1373141))

(declare-fun m!1373545 () Bool)

(assert (=> b!1198293 m!1373545))

(declare-fun m!1373547 () Bool)

(assert (=> b!1198292 m!1373547))

(assert (=> d!342476 d!342536))

(declare-fun d!342538 () Bool)

(assert (=> d!342538 (= (slice!460 (ite c!199245 lt!410363 lt!410359) (ite c!199245 (- from!553 call!83269) from!553) (ite c!199245 (- until!31 call!83269) e!769246)) (take!122 (drop!594 (ite c!199245 lt!410363 lt!410359) (ite c!199245 (- from!553 call!83269) from!553)) (- (ite c!199245 (- until!31 call!83269) e!769246) (ite c!199245 (- from!553 call!83269) from!553))))))

(declare-fun bs!288184 () Bool)

(assert (= bs!288184 d!342538))

(declare-fun m!1373549 () Bool)

(assert (=> bs!288184 m!1373549))

(assert (=> bs!288184 m!1373549))

(declare-fun m!1373551 () Bool)

(assert (=> bs!288184 m!1373551))

(assert (=> bm!83266 d!342538))

(declare-fun d!342540 () Bool)

(declare-fun res!540654 () Bool)

(declare-fun e!769391 () Bool)

(assert (=> d!342540 (=> (not res!540654) (not e!769391))))

(assert (=> d!342540 (= res!540654 (= (csize!8168 (left!10502 t!4115)) (+ (size!9556 (left!10502 (left!10502 t!4115))) (size!9556 (right!10832 (left!10502 t!4115))))))))

(assert (=> d!342540 (= (inv!16084 (left!10502 t!4115)) e!769391)))

(declare-fun b!1198294 () Bool)

(declare-fun res!540655 () Bool)

(assert (=> b!1198294 (=> (not res!540655) (not e!769391))))

(assert (=> b!1198294 (= res!540655 (and (not (= (left!10502 (left!10502 t!4115)) Empty!3969)) (not (= (right!10832 (left!10502 t!4115)) Empty!3969))))))

(declare-fun b!1198295 () Bool)

(declare-fun res!540656 () Bool)

(assert (=> b!1198295 (=> (not res!540656) (not e!769391))))

(assert (=> b!1198295 (= res!540656 (= (cheight!4180 (left!10502 t!4115)) (+ (max!0 (height!563 (left!10502 (left!10502 t!4115))) (height!563 (right!10832 (left!10502 t!4115)))) 1)))))

(declare-fun b!1198296 () Bool)

(assert (=> b!1198296 (= e!769391 (<= 0 (cheight!4180 (left!10502 t!4115))))))

(assert (= (and d!342540 res!540654) b!1198294))

(assert (= (and b!1198294 res!540655) b!1198295))

(assert (= (and b!1198295 res!540656) b!1198296))

(declare-fun m!1373553 () Bool)

(assert (=> d!342540 m!1373553))

(declare-fun m!1373555 () Bool)

(assert (=> d!342540 m!1373555))

(declare-fun m!1373557 () Bool)

(assert (=> b!1198295 m!1373557))

(declare-fun m!1373559 () Bool)

(assert (=> b!1198295 m!1373559))

(assert (=> b!1198295 m!1373557))

(assert (=> b!1198295 m!1373559))

(declare-fun m!1373561 () Bool)

(assert (=> b!1198295 m!1373561))

(assert (=> b!1198036 d!342540))

(declare-fun d!342542 () Bool)

(declare-fun lt!410428 () Int)

(assert (=> d!342542 (>= lt!410428 0)))

(declare-fun e!769392 () Int)

(assert (=> d!342542 (= lt!410428 e!769392)))

(declare-fun c!199334 () Bool)

(assert (=> d!342542 (= c!199334 (is-Nil!12036 (list!4472 (left!10502 t!4115))))))

(assert (=> d!342542 (= (size!9557 (list!4472 (left!10502 t!4115))) lt!410428)))

(declare-fun b!1198297 () Bool)

(assert (=> b!1198297 (= e!769392 0)))

(declare-fun b!1198298 () Bool)

(assert (=> b!1198298 (= e!769392 (+ 1 (size!9557 (t!112400 (list!4472 (left!10502 t!4115))))))))

(assert (= (and d!342542 c!199334) b!1198297))

(assert (= (and d!342542 (not c!199334)) b!1198298))

(declare-fun m!1373563 () Bool)

(assert (=> b!1198298 m!1373563))

(assert (=> d!342430 d!342542))

(assert (=> d!342430 d!342442))

(assert (=> b!1197886 d!342460))

(assert (=> b!1197886 d!342464))

(declare-fun b!1198299 () Bool)

(declare-fun e!769393 () Bool)

(declare-fun e!769394 () Bool)

(assert (=> b!1198299 (= e!769393 e!769394)))

(declare-fun res!540661 () Bool)

(assert (=> b!1198299 (=> (not res!540661) (not e!769394))))

(assert (=> b!1198299 (= res!540661 (<= (- 1) (- (height!563 (left!10502 (left!10502 t!4115))) (height!563 (right!10832 (left!10502 t!4115))))))))

(declare-fun b!1198300 () Bool)

(declare-fun res!540660 () Bool)

(assert (=> b!1198300 (=> (not res!540660) (not e!769394))))

(assert (=> b!1198300 (= res!540660 (isBalanced!1154 (right!10832 (left!10502 t!4115))))))

(declare-fun b!1198301 () Bool)

(declare-fun res!540657 () Bool)

(assert (=> b!1198301 (=> (not res!540657) (not e!769394))))

(assert (=> b!1198301 (= res!540657 (<= (- (height!563 (left!10502 (left!10502 t!4115))) (height!563 (right!10832 (left!10502 t!4115)))) 1))))

(declare-fun b!1198302 () Bool)

(assert (=> b!1198302 (= e!769394 (not (isEmpty!7252 (right!10832 (left!10502 t!4115)))))))

(declare-fun b!1198303 () Bool)

(declare-fun res!540658 () Bool)

(assert (=> b!1198303 (=> (not res!540658) (not e!769394))))

(assert (=> b!1198303 (= res!540658 (not (isEmpty!7252 (left!10502 (left!10502 t!4115)))))))

(declare-fun d!342544 () Bool)

(declare-fun res!540659 () Bool)

(assert (=> d!342544 (=> res!540659 e!769393)))

(assert (=> d!342544 (= res!540659 (not (is-Node!3969 (left!10502 t!4115))))))

(assert (=> d!342544 (= (isBalanced!1154 (left!10502 t!4115)) e!769393)))

(declare-fun b!1198304 () Bool)

(declare-fun res!540662 () Bool)

(assert (=> b!1198304 (=> (not res!540662) (not e!769394))))

(assert (=> b!1198304 (= res!540662 (isBalanced!1154 (left!10502 (left!10502 t!4115))))))

(assert (= (and d!342544 (not res!540659)) b!1198299))

(assert (= (and b!1198299 res!540661) b!1198301))

(assert (= (and b!1198301 res!540657) b!1198304))

(assert (= (and b!1198304 res!540662) b!1198300))

(assert (= (and b!1198300 res!540660) b!1198303))

(assert (= (and b!1198303 res!540658) b!1198302))

(declare-fun m!1373565 () Bool)

(assert (=> b!1198302 m!1373565))

(declare-fun m!1373567 () Bool)

(assert (=> b!1198300 m!1373567))

(assert (=> b!1198301 m!1373557))

(assert (=> b!1198301 m!1373559))

(assert (=> b!1198299 m!1373557))

(assert (=> b!1198299 m!1373559))

(declare-fun m!1373569 () Bool)

(assert (=> b!1198303 m!1373569))

(declare-fun m!1373571 () Bool)

(assert (=> b!1198304 m!1373571))

(assert (=> b!1198081 d!342544))

(declare-fun d!342546 () Bool)

(declare-fun lt!410429 () Int)

(assert (=> d!342546 (>= lt!410429 0)))

(declare-fun e!769395 () Int)

(assert (=> d!342546 (= lt!410429 e!769395)))

(declare-fun c!199335 () Bool)

(assert (=> d!342546 (= c!199335 (is-Nil!12036 lt!410391))))

(assert (=> d!342546 (= (size!9557 lt!410391) lt!410429)))

(declare-fun b!1198305 () Bool)

(assert (=> b!1198305 (= e!769395 0)))

(declare-fun b!1198306 () Bool)

(assert (=> b!1198306 (= e!769395 (+ 1 (size!9557 (t!112400 lt!410391))))))

(assert (= (and d!342546 c!199335) b!1198305))

(assert (= (and d!342546 (not c!199335)) b!1198306))

(declare-fun m!1373573 () Bool)

(assert (=> b!1198306 m!1373573))

(assert (=> b!1197969 d!342546))

(assert (=> b!1197969 d!342434))

(declare-fun d!342548 () Bool)

(declare-fun lt!410430 () Int)

(assert (=> d!342548 (>= lt!410430 0)))

(declare-fun e!769396 () Int)

(assert (=> d!342548 (= lt!410430 e!769396)))

(declare-fun c!199336 () Bool)

(assert (=> d!342548 (= c!199336 (is-Nil!12036 lt!410363))))

(assert (=> d!342548 (= (size!9557 lt!410363) lt!410430)))

(declare-fun b!1198307 () Bool)

(assert (=> b!1198307 (= e!769396 0)))

(declare-fun b!1198308 () Bool)

(assert (=> b!1198308 (= e!769396 (+ 1 (size!9557 (t!112400 lt!410363))))))

(assert (= (and d!342548 c!199336) b!1198307))

(assert (= (and d!342548 (not c!199336)) b!1198308))

(declare-fun m!1373575 () Bool)

(assert (=> b!1198308 m!1373575))

(assert (=> b!1197969 d!342548))

(declare-fun b!1198309 () Bool)

(declare-fun e!769398 () Int)

(assert (=> b!1198309 (= e!769398 0)))

(declare-fun b!1198310 () Bool)

(declare-fun e!769397 () Bool)

(declare-fun lt!410431 () List!12060)

(assert (=> b!1198310 (= e!769397 (= (size!9557 lt!410431) e!769398))))

(declare-fun c!199337 () Bool)

(assert (=> b!1198310 (= c!199337 (<= (- (ite c!199205 (- until!31 lt!410360) (ite c!199206 until!31 (- until!31 lt!410360))) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0))) 0))))

(declare-fun b!1198311 () Bool)

(declare-fun e!769399 () List!12060)

(assert (=> b!1198311 (= e!769399 Nil!12036)))

(declare-fun b!1198312 () Bool)

(declare-fun e!769400 () Int)

(assert (=> b!1198312 (= e!769398 e!769400)))

(declare-fun c!199339 () Bool)

(assert (=> b!1198312 (= c!199339 (>= (- (ite c!199205 (- until!31 lt!410360) (ite c!199206 until!31 (- until!31 lt!410360))) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0))) (size!9557 (drop!594 (ite c!199205 lt!410363 (ite c!199206 lt!410359 lt!410363)) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0))))))))

(declare-fun d!342550 () Bool)

(assert (=> d!342550 e!769397))

(declare-fun res!540663 () Bool)

(assert (=> d!342550 (=> (not res!540663) (not e!769397))))

(assert (=> d!342550 (= res!540663 (set.subset (content!1683 lt!410431) (content!1683 (drop!594 (ite c!199205 lt!410363 (ite c!199206 lt!410359 lt!410363)) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0))))))))

(assert (=> d!342550 (= lt!410431 e!769399)))

(declare-fun c!199338 () Bool)

(assert (=> d!342550 (= c!199338 (or (is-Nil!12036 (drop!594 (ite c!199205 lt!410363 (ite c!199206 lt!410359 lt!410363)) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0)))) (<= (- (ite c!199205 (- until!31 lt!410360) (ite c!199206 until!31 (- until!31 lt!410360))) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0))) 0)))))

(assert (=> d!342550 (= (take!122 (drop!594 (ite c!199205 lt!410363 (ite c!199206 lt!410359 lt!410363)) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0))) (- (ite c!199205 (- until!31 lt!410360) (ite c!199206 until!31 (- until!31 lt!410360))) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0)))) lt!410431)))

(declare-fun b!1198313 () Bool)

(assert (=> b!1198313 (= e!769399 (Cons!12036 (h!17437 (drop!594 (ite c!199205 lt!410363 (ite c!199206 lt!410359 lt!410363)) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0)))) (take!122 (t!112400 (drop!594 (ite c!199205 lt!410363 (ite c!199206 lt!410359 lt!410363)) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0)))) (- (- (ite c!199205 (- until!31 lt!410360) (ite c!199206 until!31 (- until!31 lt!410360))) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0))) 1))))))

(declare-fun b!1198314 () Bool)

(assert (=> b!1198314 (= e!769400 (- (ite c!199205 (- until!31 lt!410360) (ite c!199206 until!31 (- until!31 lt!410360))) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0))))))

(declare-fun b!1198315 () Bool)

(assert (=> b!1198315 (= e!769400 (size!9557 (drop!594 (ite c!199205 lt!410363 (ite c!199206 lt!410359 lt!410363)) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0)))))))

(assert (= (and d!342550 c!199338) b!1198311))

(assert (= (and d!342550 (not c!199338)) b!1198313))

(assert (= (and d!342550 res!540663) b!1198310))

(assert (= (and b!1198310 c!199337) b!1198309))

(assert (= (and b!1198310 (not c!199337)) b!1198312))

(assert (= (and b!1198312 c!199339) b!1198315))

(assert (= (and b!1198312 (not c!199339)) b!1198314))

(assert (=> b!1198315 m!1373295))

(declare-fun m!1373577 () Bool)

(assert (=> b!1198315 m!1373577))

(declare-fun m!1373579 () Bool)

(assert (=> b!1198313 m!1373579))

(declare-fun m!1373581 () Bool)

(assert (=> d!342550 m!1373581))

(assert (=> d!342550 m!1373295))

(declare-fun m!1373583 () Bool)

(assert (=> d!342550 m!1373583))

(assert (=> b!1198312 m!1373295))

(assert (=> b!1198312 m!1373577))

(declare-fun m!1373585 () Bool)

(assert (=> b!1198310 m!1373585))

(assert (=> d!342456 d!342550))

(declare-fun b!1198316 () Bool)

(declare-fun e!769401 () List!12060)

(declare-fun e!769405 () List!12060)

(assert (=> b!1198316 (= e!769401 e!769405)))

(declare-fun c!199343 () Bool)

(assert (=> b!1198316 (= c!199343 (<= (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0)) 0))))

(declare-fun b!1198317 () Bool)

(declare-fun e!769403 () Int)

(declare-fun call!83300 () Int)

(assert (=> b!1198317 (= e!769403 call!83300)))

(declare-fun e!769404 () Int)

(declare-fun b!1198318 () Bool)

(assert (=> b!1198318 (= e!769404 (- call!83300 (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0))))))

(declare-fun bm!83295 () Bool)

(assert (=> bm!83295 (= call!83300 (size!9557 (ite c!199205 lt!410363 (ite c!199206 lt!410359 lt!410363))))))

(declare-fun b!1198319 () Bool)

(assert (=> b!1198319 (= e!769405 (drop!594 (t!112400 (ite c!199205 lt!410363 (ite c!199206 lt!410359 lt!410363))) (- (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0)) 1)))))

(declare-fun d!342552 () Bool)

(declare-fun e!769402 () Bool)

(assert (=> d!342552 e!769402))

(declare-fun res!540664 () Bool)

(assert (=> d!342552 (=> (not res!540664) (not e!769402))))

(declare-fun lt!410432 () List!12060)

(assert (=> d!342552 (= res!540664 (set.subset (content!1683 lt!410432) (content!1683 (ite c!199205 lt!410363 (ite c!199206 lt!410359 lt!410363)))))))

(assert (=> d!342552 (= lt!410432 e!769401)))

(declare-fun c!199341 () Bool)

(assert (=> d!342552 (= c!199341 (is-Nil!12036 (ite c!199205 lt!410363 (ite c!199206 lt!410359 lt!410363))))))

(assert (=> d!342552 (= (drop!594 (ite c!199205 lt!410363 (ite c!199206 lt!410359 lt!410363)) (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0))) lt!410432)))

(declare-fun b!1198320 () Bool)

(assert (=> b!1198320 (= e!769405 (ite c!199205 lt!410363 (ite c!199206 lt!410359 lt!410363)))))

(declare-fun b!1198321 () Bool)

(assert (=> b!1198321 (= e!769402 (= (size!9557 lt!410432) e!769403))))

(declare-fun c!199340 () Bool)

(assert (=> b!1198321 (= c!199340 (<= (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0)) 0))))

(declare-fun b!1198322 () Bool)

(assert (=> b!1198322 (= e!769401 Nil!12036)))

(declare-fun b!1198323 () Bool)

(assert (=> b!1198323 (= e!769404 0)))

(declare-fun b!1198324 () Bool)

(assert (=> b!1198324 (= e!769403 e!769404)))

(declare-fun c!199342 () Bool)

(assert (=> b!1198324 (= c!199342 (>= (ite c!199205 (- from!553 lt!410360) (ite c!199206 from!553 0)) call!83300))))

(assert (= (and d!342552 c!199341) b!1198322))

(assert (= (and d!342552 (not c!199341)) b!1198316))

(assert (= (and b!1198316 c!199343) b!1198320))

(assert (= (and b!1198316 (not c!199343)) b!1198319))

(assert (= (and d!342552 res!540664) b!1198321))

(assert (= (and b!1198321 c!199340) b!1198317))

(assert (= (and b!1198321 (not c!199340)) b!1198324))

(assert (= (and b!1198324 c!199342) b!1198323))

(assert (= (and b!1198324 (not c!199342)) b!1198318))

(assert (= (or b!1198317 b!1198324 b!1198318) bm!83295))

(declare-fun m!1373587 () Bool)

(assert (=> bm!83295 m!1373587))

(declare-fun m!1373589 () Bool)

(assert (=> b!1198319 m!1373589))

(declare-fun m!1373591 () Bool)

(assert (=> d!342552 m!1373591))

(declare-fun m!1373593 () Bool)

(assert (=> d!342552 m!1373593))

(declare-fun m!1373595 () Bool)

(assert (=> b!1198321 m!1373595))

(assert (=> d!342456 d!342552))

(declare-fun d!342554 () Bool)

(declare-fun lt!410435 () Bool)

(declare-fun isEmpty!7254 (List!12060) Bool)

(assert (=> d!342554 (= lt!410435 (isEmpty!7254 (list!4472 (right!10832 t!4115))))))

(assert (=> d!342554 (= lt!410435 (= (size!9556 (right!10832 t!4115)) 0))))

(assert (=> d!342554 (= (isEmpty!7252 (right!10832 t!4115)) lt!410435)))

(declare-fun bs!288185 () Bool)

(assert (= bs!288185 d!342554))

(assert (=> bs!288185 m!1373141))

(assert (=> bs!288185 m!1373141))

(declare-fun m!1373597 () Bool)

(assert (=> bs!288185 m!1373597))

(declare-fun m!1373599 () Bool)

(assert (=> bs!288185 m!1373599))

(assert (=> b!1198079 d!342554))

(declare-fun d!342556 () Bool)

(assert (=> d!342556 (= (inv!16081 (xs!6676 (left!10502 t!4115))) (<= (size!9557 (innerList!4029 (xs!6676 (left!10502 t!4115)))) 2147483647))))

(declare-fun bs!288186 () Bool)

(assert (= bs!288186 d!342556))

(declare-fun m!1373601 () Bool)

(assert (=> bs!288186 m!1373601))

(assert (=> b!1198094 d!342556))

(declare-fun d!342558 () Bool)

(declare-fun res!540669 () Bool)

(declare-fun e!769408 () Bool)

(assert (=> d!342558 (=> (not res!540669) (not e!769408))))

(assert (=> d!342558 (= res!540669 (<= (size!9557 (list!4474 (xs!6676 (right!10832 t!4115)))) 512))))

(assert (=> d!342558 (= (inv!16085 (right!10832 t!4115)) e!769408)))

(declare-fun b!1198329 () Bool)

(declare-fun res!540670 () Bool)

(assert (=> b!1198329 (=> (not res!540670) (not e!769408))))

(assert (=> b!1198329 (= res!540670 (= (csize!8169 (right!10832 t!4115)) (size!9557 (list!4474 (xs!6676 (right!10832 t!4115))))))))

(declare-fun b!1198330 () Bool)

(assert (=> b!1198330 (= e!769408 (and (> (csize!8169 (right!10832 t!4115)) 0) (<= (csize!8169 (right!10832 t!4115)) 512)))))

(assert (= (and d!342558 res!540669) b!1198329))

(assert (= (and b!1198329 res!540670) b!1198330))

(assert (=> d!342558 m!1373255))

(assert (=> d!342558 m!1373255))

(declare-fun m!1373603 () Bool)

(assert (=> d!342558 m!1373603))

(assert (=> b!1198329 m!1373255))

(assert (=> b!1198329 m!1373255))

(assert (=> b!1198329 m!1373603))

(assert (=> b!1198041 d!342558))

(declare-fun d!342560 () Bool)

(assert (=> d!342560 (= (BigIntAbs!0 (ite c!199262 (cheight!4180 t!4115) (csize!8169 t!4115))) (ite (>= (ite c!199262 (cheight!4180 t!4115) (csize!8169 t!4115)) 0) (ite c!199262 (cheight!4180 t!4115) (csize!8169 t!4115)) (- (ite c!199262 (cheight!4180 t!4115) (csize!8169 t!4115)))))))

(assert (=> bm!83270 d!342560))

(declare-fun d!342562 () Bool)

(declare-fun lt!410436 () Bool)

(assert (=> d!342562 (= lt!410436 (isEmpty!7254 (list!4472 (left!10502 t!4115))))))

(assert (=> d!342562 (= lt!410436 (= (size!9556 (left!10502 t!4115)) 0))))

(assert (=> d!342562 (= (isEmpty!7252 (left!10502 t!4115)) lt!410436)))

(declare-fun bs!288187 () Bool)

(assert (= bs!288187 d!342562))

(assert (=> bs!288187 m!1373137))

(assert (=> bs!288187 m!1373137))

(declare-fun m!1373605 () Bool)

(assert (=> bs!288187 m!1373605))

(assert (=> bs!288187 m!1373149))

(assert (=> b!1198080 d!342562))

(declare-fun d!342564 () Bool)

(declare-fun lt!410437 () Int)

(assert (=> d!342564 (>= lt!410437 0)))

(assert (=> d!342564 (= lt!410437 (+ 1 (ListPrimitiveSize!75 (innerList!4029 (xs!6676 t!4115)))))))

(assert (=> d!342564 (= (IArrayPrimitiveSize!3 (xs!6676 t!4115)) lt!410437)))

(declare-fun bs!288188 () Bool)

(assert (= bs!288188 d!342564))

(declare-fun m!1373607 () Bool)

(assert (=> bs!288188 m!1373607))

(assert (=> b!1198059 d!342564))

(assert (=> b!1198078 d!342530))

(assert (=> b!1198078 d!342532))

(declare-fun d!342566 () Bool)

(declare-fun c!199344 () Bool)

(assert (=> d!342566 (= c!199344 (is-Node!3969 (left!10502 (left!10502 t!4115))))))

(declare-fun e!769409 () Bool)

(assert (=> d!342566 (= (inv!16080 (left!10502 (left!10502 t!4115))) e!769409)))

(declare-fun b!1198331 () Bool)

(assert (=> b!1198331 (= e!769409 (inv!16084 (left!10502 (left!10502 t!4115))))))

(declare-fun b!1198332 () Bool)

(declare-fun e!769410 () Bool)

(assert (=> b!1198332 (= e!769409 e!769410)))

(declare-fun res!540671 () Bool)

(assert (=> b!1198332 (= res!540671 (not (is-Leaf!6079 (left!10502 (left!10502 t!4115)))))))

(assert (=> b!1198332 (=> res!540671 e!769410)))

(declare-fun b!1198333 () Bool)

(assert (=> b!1198333 (= e!769410 (inv!16085 (left!10502 (left!10502 t!4115))))))

(assert (= (and d!342566 c!199344) b!1198331))

(assert (= (and d!342566 (not c!199344)) b!1198332))

(assert (= (and b!1198332 (not res!540671)) b!1198333))

(declare-fun m!1373609 () Bool)

(assert (=> b!1198331 m!1373609))

(declare-fun m!1373611 () Bool)

(assert (=> b!1198333 m!1373611))

(assert (=> b!1198093 d!342566))

(declare-fun d!342568 () Bool)

(declare-fun c!199345 () Bool)

(assert (=> d!342568 (= c!199345 (is-Node!3969 (right!10832 (left!10502 t!4115))))))

(declare-fun e!769411 () Bool)

(assert (=> d!342568 (= (inv!16080 (right!10832 (left!10502 t!4115))) e!769411)))

(declare-fun b!1198334 () Bool)

(assert (=> b!1198334 (= e!769411 (inv!16084 (right!10832 (left!10502 t!4115))))))

(declare-fun b!1198335 () Bool)

(declare-fun e!769412 () Bool)

(assert (=> b!1198335 (= e!769411 e!769412)))

(declare-fun res!540672 () Bool)

(assert (=> b!1198335 (= res!540672 (not (is-Leaf!6079 (right!10832 (left!10502 t!4115)))))))

(assert (=> b!1198335 (=> res!540672 e!769412)))

(declare-fun b!1198336 () Bool)

(assert (=> b!1198336 (= e!769412 (inv!16085 (right!10832 (left!10502 t!4115))))))

(assert (= (and d!342568 c!199345) b!1198334))

(assert (= (and d!342568 (not c!199345)) b!1198335))

(assert (= (and b!1198335 (not res!540672)) b!1198336))

(declare-fun m!1373613 () Bool)

(assert (=> b!1198334 m!1373613))

(declare-fun m!1373615 () Bool)

(assert (=> b!1198336 m!1373615))

(assert (=> b!1198093 d!342568))

(declare-fun d!342570 () Bool)

(assert (=> d!342570 (= (BigIntAbs!0 (ite c!199260 (cheight!4180 (right!10832 t!4115)) (csize!8169 (right!10832 t!4115)))) (ite (>= (ite c!199260 (cheight!4180 (right!10832 t!4115)) (csize!8169 (right!10832 t!4115))) 0) (ite c!199260 (cheight!4180 (right!10832 t!4115)) (csize!8169 (right!10832 t!4115))) (- (ite c!199260 (cheight!4180 (right!10832 t!4115)) (csize!8169 (right!10832 t!4115))))))))

(assert (=> bm!83269 d!342570))

(declare-fun b!1198339 () Bool)

(declare-fun res!540674 () Bool)

(declare-fun e!769414 () Bool)

(assert (=> b!1198339 (=> (not res!540674) (not e!769414))))

(declare-fun lt!410438 () List!12060)

(assert (=> b!1198339 (= res!540674 (= (size!9557 lt!410438) (+ (size!9557 (t!112400 lt!410359)) (size!9557 lt!410363))))))

(declare-fun b!1198337 () Bool)

(declare-fun e!769413 () List!12060)

(assert (=> b!1198337 (= e!769413 lt!410363)))

(declare-fun d!342572 () Bool)

(assert (=> d!342572 e!769414))

(declare-fun res!540673 () Bool)

(assert (=> d!342572 (=> (not res!540673) (not e!769414))))

(assert (=> d!342572 (= res!540673 (= (content!1683 lt!410438) (set.union (content!1683 (t!112400 lt!410359)) (content!1683 lt!410363))))))

(assert (=> d!342572 (= lt!410438 e!769413)))

(declare-fun c!199346 () Bool)

(assert (=> d!342572 (= c!199346 (is-Nil!12036 (t!112400 lt!410359)))))

(assert (=> d!342572 (= (++!3071 (t!112400 lt!410359) lt!410363) lt!410438)))

(declare-fun b!1198340 () Bool)

(assert (=> b!1198340 (= e!769414 (or (not (= lt!410363 Nil!12036)) (= lt!410438 (t!112400 lt!410359))))))

(declare-fun b!1198338 () Bool)

(assert (=> b!1198338 (= e!769413 (Cons!12036 (h!17437 (t!112400 lt!410359)) (++!3071 (t!112400 (t!112400 lt!410359)) lt!410363)))))

(assert (= (and d!342572 c!199346) b!1198337))

(assert (= (and d!342572 (not c!199346)) b!1198338))

(assert (= (and d!342572 res!540673) b!1198339))

(assert (= (and b!1198339 res!540674) b!1198340))

(declare-fun m!1373617 () Bool)

(assert (=> b!1198339 m!1373617))

(assert (=> b!1198339 m!1373205))

(assert (=> b!1198339 m!1373227))

(declare-fun m!1373619 () Bool)

(assert (=> d!342572 m!1373619))

(assert (=> d!342572 m!1373461))

(assert (=> d!342572 m!1373233))

(declare-fun m!1373621 () Bool)

(assert (=> b!1198338 m!1373621))

(assert (=> b!1197968 d!342572))

(declare-fun b!1198343 () Bool)

(declare-fun res!540676 () Bool)

(declare-fun e!769416 () Bool)

(assert (=> b!1198343 (=> (not res!540676) (not e!769416))))

(declare-fun lt!410439 () List!12060)

(assert (=> b!1198343 (= res!540676 (= (size!9557 lt!410439) (+ (size!9557 (list!4472 (left!10502 (right!10832 t!4115)))) (size!9557 (list!4472 (right!10832 (right!10832 t!4115)))))))))

(declare-fun b!1198341 () Bool)

(declare-fun e!769415 () List!12060)

(assert (=> b!1198341 (= e!769415 (list!4472 (right!10832 (right!10832 t!4115))))))

(declare-fun d!342574 () Bool)

(assert (=> d!342574 e!769416))

(declare-fun res!540675 () Bool)

(assert (=> d!342574 (=> (not res!540675) (not e!769416))))

(assert (=> d!342574 (= res!540675 (= (content!1683 lt!410439) (set.union (content!1683 (list!4472 (left!10502 (right!10832 t!4115)))) (content!1683 (list!4472 (right!10832 (right!10832 t!4115)))))))))

(assert (=> d!342574 (= lt!410439 e!769415)))

(declare-fun c!199347 () Bool)

(assert (=> d!342574 (= c!199347 (is-Nil!12036 (list!4472 (left!10502 (right!10832 t!4115)))))))

(assert (=> d!342574 (= (++!3071 (list!4472 (left!10502 (right!10832 t!4115))) (list!4472 (right!10832 (right!10832 t!4115)))) lt!410439)))

(declare-fun b!1198344 () Bool)

(assert (=> b!1198344 (= e!769416 (or (not (= (list!4472 (right!10832 (right!10832 t!4115))) Nil!12036)) (= lt!410439 (list!4472 (left!10502 (right!10832 t!4115))))))))

(declare-fun b!1198342 () Bool)

(assert (=> b!1198342 (= e!769415 (Cons!12036 (h!17437 (list!4472 (left!10502 (right!10832 t!4115)))) (++!3071 (t!112400 (list!4472 (left!10502 (right!10832 t!4115)))) (list!4472 (right!10832 (right!10832 t!4115))))))))

(assert (= (and d!342574 c!199347) b!1198341))

(assert (= (and d!342574 (not c!199347)) b!1198342))

(assert (= (and d!342574 res!540675) b!1198343))

(assert (= (and b!1198343 res!540676) b!1198344))

(declare-fun m!1373623 () Bool)

(assert (=> b!1198343 m!1373623))

(assert (=> b!1198343 m!1373249))

(declare-fun m!1373625 () Bool)

(assert (=> b!1198343 m!1373625))

(assert (=> b!1198343 m!1373251))

(declare-fun m!1373627 () Bool)

(assert (=> b!1198343 m!1373627))

(declare-fun m!1373629 () Bool)

(assert (=> d!342574 m!1373629))

(assert (=> d!342574 m!1373249))

(declare-fun m!1373631 () Bool)

(assert (=> d!342574 m!1373631))

(assert (=> d!342574 m!1373251))

(declare-fun m!1373633 () Bool)

(assert (=> d!342574 m!1373633))

(assert (=> b!1198342 m!1373251))

(declare-fun m!1373635 () Bool)

(assert (=> b!1198342 m!1373635))

(assert (=> b!1197986 d!342574))

(declare-fun b!1198345 () Bool)

(declare-fun e!769417 () List!12060)

(assert (=> b!1198345 (= e!769417 Nil!12036)))

(declare-fun d!342576 () Bool)

(declare-fun c!199348 () Bool)

(assert (=> d!342576 (= c!199348 (is-Empty!3969 (left!10502 (right!10832 t!4115))))))

(assert (=> d!342576 (= (list!4472 (left!10502 (right!10832 t!4115))) e!769417)))

(declare-fun b!1198348 () Bool)

(declare-fun e!769418 () List!12060)

(assert (=> b!1198348 (= e!769418 (++!3071 (list!4472 (left!10502 (left!10502 (right!10832 t!4115)))) (list!4472 (right!10832 (left!10502 (right!10832 t!4115))))))))

(declare-fun b!1198347 () Bool)

(assert (=> b!1198347 (= e!769418 (list!4474 (xs!6676 (left!10502 (right!10832 t!4115)))))))

(declare-fun b!1198346 () Bool)

(assert (=> b!1198346 (= e!769417 e!769418)))

(declare-fun c!199349 () Bool)

(assert (=> b!1198346 (= c!199349 (is-Leaf!6079 (left!10502 (right!10832 t!4115))))))

(assert (= (and d!342576 c!199348) b!1198345))

(assert (= (and d!342576 (not c!199348)) b!1198346))

(assert (= (and b!1198346 c!199349) b!1198347))

(assert (= (and b!1198346 (not c!199349)) b!1198348))

(declare-fun m!1373637 () Bool)

(assert (=> b!1198348 m!1373637))

(declare-fun m!1373639 () Bool)

(assert (=> b!1198348 m!1373639))

(assert (=> b!1198348 m!1373637))

(assert (=> b!1198348 m!1373639))

(declare-fun m!1373641 () Bool)

(assert (=> b!1198348 m!1373641))

(declare-fun m!1373643 () Bool)

(assert (=> b!1198347 m!1373643))

(assert (=> b!1197986 d!342576))

(declare-fun b!1198349 () Bool)

(declare-fun e!769419 () List!12060)

(assert (=> b!1198349 (= e!769419 Nil!12036)))

(declare-fun d!342578 () Bool)

(declare-fun c!199350 () Bool)

(assert (=> d!342578 (= c!199350 (is-Empty!3969 (right!10832 (right!10832 t!4115))))))

(assert (=> d!342578 (= (list!4472 (right!10832 (right!10832 t!4115))) e!769419)))

(declare-fun b!1198352 () Bool)

(declare-fun e!769420 () List!12060)

(assert (=> b!1198352 (= e!769420 (++!3071 (list!4472 (left!10502 (right!10832 (right!10832 t!4115)))) (list!4472 (right!10832 (right!10832 (right!10832 t!4115))))))))

(declare-fun b!1198351 () Bool)

(assert (=> b!1198351 (= e!769420 (list!4474 (xs!6676 (right!10832 (right!10832 t!4115)))))))

(declare-fun b!1198350 () Bool)

(assert (=> b!1198350 (= e!769419 e!769420)))

(declare-fun c!199351 () Bool)

(assert (=> b!1198350 (= c!199351 (is-Leaf!6079 (right!10832 (right!10832 t!4115))))))

(assert (= (and d!342578 c!199350) b!1198349))

(assert (= (and d!342578 (not c!199350)) b!1198350))

(assert (= (and b!1198350 c!199351) b!1198351))

(assert (= (and b!1198350 (not c!199351)) b!1198352))

(declare-fun m!1373645 () Bool)

(assert (=> b!1198352 m!1373645))

(declare-fun m!1373647 () Bool)

(assert (=> b!1198352 m!1373647))

(assert (=> b!1198352 m!1373645))

(assert (=> b!1198352 m!1373647))

(declare-fun m!1373649 () Bool)

(assert (=> b!1198352 m!1373649))

(declare-fun m!1373651 () Bool)

(assert (=> b!1198351 m!1373651))

(assert (=> b!1197986 d!342578))

(declare-fun b!1198353 () Bool)

(declare-fun e!769422 () Int)

(assert (=> b!1198353 (= e!769422 0)))

(declare-fun b!1198354 () Bool)

(declare-fun e!769421 () Bool)

(declare-fun lt!410440 () List!12060)

(assert (=> b!1198354 (= e!769421 (= (size!9557 lt!410440) e!769422))))

(declare-fun c!199352 () Bool)

(assert (=> b!1198354 (= c!199352 (<= (- lt!410360 from!553) 0))))

(declare-fun b!1198355 () Bool)

(declare-fun e!769423 () List!12060)

(assert (=> b!1198355 (= e!769423 Nil!12036)))

(declare-fun b!1198356 () Bool)

(declare-fun e!769424 () Int)

(assert (=> b!1198356 (= e!769422 e!769424)))

(declare-fun c!199354 () Bool)

(assert (=> b!1198356 (= c!199354 (>= (- lt!410360 from!553) (size!9557 (drop!594 lt!410359 from!553))))))

(declare-fun d!342580 () Bool)

(assert (=> d!342580 e!769421))

(declare-fun res!540677 () Bool)

(assert (=> d!342580 (=> (not res!540677) (not e!769421))))

(assert (=> d!342580 (= res!540677 (set.subset (content!1683 lt!410440) (content!1683 (drop!594 lt!410359 from!553))))))

(assert (=> d!342580 (= lt!410440 e!769423)))

(declare-fun c!199353 () Bool)

(assert (=> d!342580 (= c!199353 (or (is-Nil!12036 (drop!594 lt!410359 from!553)) (<= (- lt!410360 from!553) 0)))))

(assert (=> d!342580 (= (take!122 (drop!594 lt!410359 from!553) (- lt!410360 from!553)) lt!410440)))

(declare-fun b!1198357 () Bool)

(assert (=> b!1198357 (= e!769423 (Cons!12036 (h!17437 (drop!594 lt!410359 from!553)) (take!122 (t!112400 (drop!594 lt!410359 from!553)) (- (- lt!410360 from!553) 1))))))

(declare-fun b!1198358 () Bool)

(assert (=> b!1198358 (= e!769424 (- lt!410360 from!553))))

(declare-fun b!1198359 () Bool)

(assert (=> b!1198359 (= e!769424 (size!9557 (drop!594 lt!410359 from!553)))))

(assert (= (and d!342580 c!199353) b!1198355))

(assert (= (and d!342580 (not c!199353)) b!1198357))

(assert (= (and d!342580 res!540677) b!1198354))

(assert (= (and b!1198354 c!199352) b!1198353))

(assert (= (and b!1198354 (not c!199352)) b!1198356))

(assert (= (and b!1198356 c!199354) b!1198359))

(assert (= (and b!1198356 (not c!199354)) b!1198358))

(assert (=> b!1198359 m!1373291))

(declare-fun m!1373653 () Bool)

(assert (=> b!1198359 m!1373653))

(declare-fun m!1373655 () Bool)

(assert (=> b!1198357 m!1373655))

(declare-fun m!1373657 () Bool)

(assert (=> d!342580 m!1373657))

(assert (=> d!342580 m!1373291))

(declare-fun m!1373659 () Bool)

(assert (=> d!342580 m!1373659))

(assert (=> b!1198356 m!1373291))

(assert (=> b!1198356 m!1373653))

(declare-fun m!1373661 () Bool)

(assert (=> b!1198354 m!1373661))

(assert (=> d!342452 d!342580))

(declare-fun b!1198360 () Bool)

(declare-fun e!769425 () List!12060)

(declare-fun e!769429 () List!12060)

(assert (=> b!1198360 (= e!769425 e!769429)))

(declare-fun c!199358 () Bool)

(assert (=> b!1198360 (= c!199358 (<= from!553 0))))

(declare-fun b!1198361 () Bool)

(declare-fun e!769427 () Int)

(declare-fun call!83301 () Int)

(assert (=> b!1198361 (= e!769427 call!83301)))

(declare-fun b!1198362 () Bool)

(declare-fun e!769428 () Int)

(assert (=> b!1198362 (= e!769428 (- call!83301 from!553))))

(declare-fun bm!83296 () Bool)

(assert (=> bm!83296 (= call!83301 (size!9557 lt!410359))))

(declare-fun b!1198363 () Bool)

(assert (=> b!1198363 (= e!769429 (drop!594 (t!112400 lt!410359) (- from!553 1)))))

(declare-fun d!342582 () Bool)

(declare-fun e!769426 () Bool)

(assert (=> d!342582 e!769426))

(declare-fun res!540678 () Bool)

(assert (=> d!342582 (=> (not res!540678) (not e!769426))))

(declare-fun lt!410441 () List!12060)

(assert (=> d!342582 (= res!540678 (set.subset (content!1683 lt!410441) (content!1683 lt!410359)))))

(assert (=> d!342582 (= lt!410441 e!769425)))

(declare-fun c!199356 () Bool)

(assert (=> d!342582 (= c!199356 (is-Nil!12036 lt!410359))))

(assert (=> d!342582 (= (drop!594 lt!410359 from!553) lt!410441)))

(declare-fun b!1198364 () Bool)

(assert (=> b!1198364 (= e!769429 lt!410359)))

(declare-fun b!1198365 () Bool)

(assert (=> b!1198365 (= e!769426 (= (size!9557 lt!410441) e!769427))))

(declare-fun c!199355 () Bool)

(assert (=> b!1198365 (= c!199355 (<= from!553 0))))

(declare-fun b!1198366 () Bool)

(assert (=> b!1198366 (= e!769425 Nil!12036)))

(declare-fun b!1198367 () Bool)

(assert (=> b!1198367 (= e!769428 0)))

(declare-fun b!1198368 () Bool)

(assert (=> b!1198368 (= e!769427 e!769428)))

(declare-fun c!199357 () Bool)

(assert (=> b!1198368 (= c!199357 (>= from!553 call!83301))))

(assert (= (and d!342582 c!199356) b!1198366))

(assert (= (and d!342582 (not c!199356)) b!1198360))

(assert (= (and b!1198360 c!199358) b!1198364))

(assert (= (and b!1198360 (not c!199358)) b!1198363))

(assert (= (and d!342582 res!540678) b!1198365))

(assert (= (and b!1198365 c!199355) b!1198361))

(assert (= (and b!1198365 (not c!199355)) b!1198368))

(assert (= (and b!1198368 c!199357) b!1198367))

(assert (= (and b!1198368 (not c!199357)) b!1198362))

(assert (= (or b!1198361 b!1198368 b!1198362) bm!83296))

(assert (=> bm!83296 m!1373147))

(declare-fun m!1373663 () Bool)

(assert (=> b!1198363 m!1373663))

(declare-fun m!1373665 () Bool)

(assert (=> d!342582 m!1373665))

(assert (=> d!342582 m!1373231))

(declare-fun m!1373667 () Bool)

(assert (=> b!1198365 m!1373667))

(assert (=> d!342452 d!342582))

(assert (=> b!1198014 d!342434))

(assert (=> b!1198014 d!342548))

(declare-fun d!342584 () Bool)

(assert (=> d!342584 (= (list!4474 (xs!6676 (right!10832 t!4115))) (innerList!4029 (xs!6676 (right!10832 t!4115))))))

(assert (=> b!1197985 d!342584))

(declare-fun d!342586 () Bool)

(declare-fun lt!410442 () Int)

(assert (=> d!342586 (>= lt!410442 0)))

(declare-fun e!769430 () Int)

(assert (=> d!342586 (= lt!410442 e!769430)))

(declare-fun c!199359 () Bool)

(assert (=> d!342586 (= c!199359 (is-Nil!12036 (innerList!4029 (xs!6676 t!4115))))))

(assert (=> d!342586 (= (size!9557 (innerList!4029 (xs!6676 t!4115))) lt!410442)))

(declare-fun b!1198369 () Bool)

(assert (=> b!1198369 (= e!769430 0)))

(declare-fun b!1198370 () Bool)

(assert (=> b!1198370 (= e!769430 (+ 1 (size!9557 (t!112400 (innerList!4029 (xs!6676 t!4115))))))))

(assert (= (and d!342586 c!199359) b!1198369))

(assert (= (and d!342586 (not c!199359)) b!1198370))

(declare-fun m!1373669 () Bool)

(assert (=> b!1198370 m!1373669))

(assert (=> d!342458 d!342586))

(declare-fun d!342588 () Bool)

(declare-fun res!540679 () Bool)

(declare-fun e!769431 () Bool)

(assert (=> d!342588 (=> (not res!540679) (not e!769431))))

(assert (=> d!342588 (= res!540679 (= (csize!8168 t!4115) (+ (size!9556 (left!10502 t!4115)) (size!9556 (right!10832 t!4115)))))))

(assert (=> d!342588 (= (inv!16084 t!4115) e!769431)))

(declare-fun b!1198371 () Bool)

(declare-fun res!540680 () Bool)

(assert (=> b!1198371 (=> (not res!540680) (not e!769431))))

(assert (=> b!1198371 (= res!540680 (and (not (= (left!10502 t!4115) Empty!3969)) (not (= (right!10832 t!4115) Empty!3969))))))

(declare-fun b!1198372 () Bool)

(declare-fun res!540681 () Bool)

(assert (=> b!1198372 (=> (not res!540681) (not e!769431))))

(assert (=> b!1198372 (= res!540681 (= (cheight!4180 t!4115) (+ (max!0 (height!563 (left!10502 t!4115)) (height!563 (right!10832 t!4115))) 1)))))

(declare-fun b!1198373 () Bool)

(assert (=> b!1198373 (= e!769431 (<= 0 (cheight!4180 t!4115)))))

(assert (= (and d!342588 res!540679) b!1198371))

(assert (= (and b!1198371 res!540680) b!1198372))

(assert (= (and b!1198372 res!540681) b!1198373))

(assert (=> d!342588 m!1373149))

(assert (=> d!342588 m!1373599))

(assert (=> b!1198372 m!1373339))

(assert (=> b!1198372 m!1373341))

(assert (=> b!1198372 m!1373339))

(assert (=> b!1198372 m!1373341))

(declare-fun m!1373671 () Bool)

(assert (=> b!1198372 m!1373671))

(assert (=> b!1198082 d!342588))

(declare-fun b!1198376 () Bool)

(declare-fun res!540683 () Bool)

(declare-fun e!769433 () Bool)

(assert (=> b!1198376 (=> (not res!540683) (not e!769433))))

(declare-fun lt!410443 () List!12060)

(assert (=> b!1198376 (= res!540683 (= (size!9557 lt!410443) (+ (size!9557 (t!112400 (slice!460 lt!410359 from!553 lt!410360))) (size!9557 call!83251))))))

(declare-fun b!1198374 () Bool)

(declare-fun e!769432 () List!12060)

(assert (=> b!1198374 (= e!769432 call!83251)))

(declare-fun d!342590 () Bool)

(assert (=> d!342590 e!769433))

(declare-fun res!540682 () Bool)

(assert (=> d!342590 (=> (not res!540682) (not e!769433))))

(assert (=> d!342590 (= res!540682 (= (content!1683 lt!410443) (set.union (content!1683 (t!112400 (slice!460 lt!410359 from!553 lt!410360))) (content!1683 call!83251))))))

(assert (=> d!342590 (= lt!410443 e!769432)))

(declare-fun c!199360 () Bool)

(assert (=> d!342590 (= c!199360 (is-Nil!12036 (t!112400 (slice!460 lt!410359 from!553 lt!410360))))))

(assert (=> d!342590 (= (++!3071 (t!112400 (slice!460 lt!410359 from!553 lt!410360)) call!83251) lt!410443)))

(declare-fun b!1198377 () Bool)

(assert (=> b!1198377 (= e!769433 (or (not (= call!83251 Nil!12036)) (= lt!410443 (t!112400 (slice!460 lt!410359 from!553 lt!410360)))))))

(declare-fun b!1198375 () Bool)

(assert (=> b!1198375 (= e!769432 (Cons!12036 (h!17437 (t!112400 (slice!460 lt!410359 from!553 lt!410360))) (++!3071 (t!112400 (t!112400 (slice!460 lt!410359 from!553 lt!410360))) call!83251)))))

(assert (= (and d!342590 c!199360) b!1198374))

(assert (= (and d!342590 (not c!199360)) b!1198375))

(assert (= (and d!342590 res!540682) b!1198376))

(assert (= (and b!1198376 res!540683) b!1198377))

(declare-fun m!1373673 () Bool)

(assert (=> b!1198376 m!1373673))

(declare-fun m!1373675 () Bool)

(assert (=> b!1198376 m!1373675))

(assert (=> b!1198376 m!1373272))

(declare-fun m!1373677 () Bool)

(assert (=> d!342590 m!1373677))

(assert (=> d!342590 m!1373511))

(assert (=> d!342590 m!1373281))

(declare-fun m!1373679 () Bool)

(assert (=> b!1198375 m!1373679))

(assert (=> b!1198027 d!342590))

(declare-fun d!342592 () Bool)

(declare-fun lt!410444 () Int)

(assert (=> d!342592 (>= lt!410444 0)))

(declare-fun e!769434 () Int)

(assert (=> d!342592 (= lt!410444 e!769434)))

(declare-fun c!199361 () Bool)

(assert (=> d!342592 (= c!199361 (is-Nil!12036 lt!410395))))

(assert (=> d!342592 (= (size!9557 lt!410395) lt!410444)))

(declare-fun b!1198378 () Bool)

(assert (=> b!1198378 (= e!769434 0)))

(declare-fun b!1198379 () Bool)

(assert (=> b!1198379 (= e!769434 (+ 1 (size!9557 (t!112400 lt!410395))))))

(assert (= (and d!342592 c!199361) b!1198378))

(assert (= (and d!342592 (not c!199361)) b!1198379))

(declare-fun m!1373681 () Bool)

(assert (=> b!1198379 m!1373681))

(assert (=> b!1198028 d!342592))

(declare-fun d!342594 () Bool)

(declare-fun lt!410445 () Int)

(assert (=> d!342594 (>= lt!410445 0)))

(declare-fun e!769435 () Int)

(assert (=> d!342594 (= lt!410445 e!769435)))

(declare-fun c!199362 () Bool)

(assert (=> d!342594 (= c!199362 (is-Nil!12036 (slice!460 lt!410359 from!553 lt!410360)))))

(assert (=> d!342594 (= (size!9557 (slice!460 lt!410359 from!553 lt!410360)) lt!410445)))

(declare-fun b!1198380 () Bool)

(assert (=> b!1198380 (= e!769435 0)))

(declare-fun b!1198381 () Bool)

(assert (=> b!1198381 (= e!769435 (+ 1 (size!9557 (t!112400 (slice!460 lt!410359 from!553 lt!410360)))))))

(assert (= (and d!342594 c!199362) b!1198380))

(assert (= (and d!342594 (not c!199362)) b!1198381))

(assert (=> b!1198381 m!1373675))

(assert (=> b!1198028 d!342594))

(declare-fun d!342596 () Bool)

(declare-fun lt!410446 () Int)

(assert (=> d!342596 (>= lt!410446 0)))

(declare-fun e!769436 () Int)

(assert (=> d!342596 (= lt!410446 e!769436)))

(declare-fun c!199363 () Bool)

(assert (=> d!342596 (= c!199363 (is-Nil!12036 call!83251))))

(assert (=> d!342596 (= (size!9557 call!83251) lt!410446)))

(declare-fun b!1198382 () Bool)

(assert (=> b!1198382 (= e!769436 0)))

(declare-fun b!1198383 () Bool)

(assert (=> b!1198383 (= e!769436 (+ 1 (size!9557 (t!112400 call!83251))))))

(assert (= (and d!342596 c!199363) b!1198382))

(assert (= (and d!342596 (not c!199363)) b!1198383))

(declare-fun m!1373683 () Bool)

(assert (=> b!1198383 m!1373683))

(assert (=> b!1198028 d!342596))

(declare-fun d!342598 () Bool)

(declare-fun res!540684 () Bool)

(declare-fun e!769437 () Bool)

(assert (=> d!342598 (=> (not res!540684) (not e!769437))))

(assert (=> d!342598 (= res!540684 (<= (size!9557 (list!4474 (xs!6676 (left!10502 t!4115)))) 512))))

(assert (=> d!342598 (= (inv!16085 (left!10502 t!4115)) e!769437)))

(declare-fun b!1198384 () Bool)

(declare-fun res!540685 () Bool)

(assert (=> b!1198384 (=> (not res!540685) (not e!769437))))

(assert (=> b!1198384 (= res!540685 (= (csize!8169 (left!10502 t!4115)) (size!9557 (list!4474 (xs!6676 (left!10502 t!4115))))))))

(declare-fun b!1198385 () Bool)

(assert (=> b!1198385 (= e!769437 (and (> (csize!8169 (left!10502 t!4115)) 0) (<= (csize!8169 (left!10502 t!4115)) 512)))))

(assert (= (and d!342598 res!540684) b!1198384))

(assert (= (and b!1198384 res!540685) b!1198385))

(assert (=> d!342598 m!1373247))

(assert (=> d!342598 m!1373247))

(declare-fun m!1373685 () Bool)

(assert (=> d!342598 m!1373685))

(assert (=> b!1198384 m!1373247))

(assert (=> b!1198384 m!1373247))

(assert (=> b!1198384 m!1373685))

(assert (=> b!1198038 d!342598))

(declare-fun d!342600 () Bool)

(declare-fun lt!410447 () Int)

(assert (=> d!342600 (>= lt!410447 0)))

(declare-fun e!769438 () Int)

(assert (=> d!342600 (= lt!410447 e!769438)))

(declare-fun c!199364 () Bool)

(assert (=> d!342600 (= c!199364 (is-Nil!12036 (t!112400 lt!410359)))))

(assert (=> d!342600 (= (size!9557 (t!112400 lt!410359)) lt!410447)))

(declare-fun b!1198386 () Bool)

(assert (=> b!1198386 (= e!769438 0)))

(declare-fun b!1198387 () Bool)

(assert (=> b!1198387 (= e!769438 (+ 1 (size!9557 (t!112400 (t!112400 lt!410359)))))))

(assert (= (and d!342600 c!199364) b!1198386))

(assert (= (and d!342600 (not c!199364)) b!1198387))

(declare-fun m!1373687 () Bool)

(assert (=> b!1198387 m!1373687))

(assert (=> b!1197950 d!342600))

(declare-fun d!342602 () Bool)

(assert (=> d!342602 (= (inv!16081 (xs!6676 (right!10832 t!4115))) (<= (size!9557 (innerList!4029 (xs!6676 (right!10832 t!4115)))) 2147483647))))

(declare-fun bs!288189 () Bool)

(assert (= bs!288189 d!342602))

(declare-fun m!1373689 () Bool)

(assert (=> bs!288189 m!1373689))

(assert (=> b!1198097 d!342602))

(declare-fun d!342604 () Bool)

(declare-fun c!199365 () Bool)

(assert (=> d!342604 (= c!199365 (is-Node!3969 (left!10502 (right!10832 t!4115))))))

(declare-fun e!769439 () Bool)

(assert (=> d!342604 (= (inv!16080 (left!10502 (right!10832 t!4115))) e!769439)))

(declare-fun b!1198388 () Bool)

(assert (=> b!1198388 (= e!769439 (inv!16084 (left!10502 (right!10832 t!4115))))))

(declare-fun b!1198389 () Bool)

(declare-fun e!769440 () Bool)

(assert (=> b!1198389 (= e!769439 e!769440)))

(declare-fun res!540686 () Bool)

(assert (=> b!1198389 (= res!540686 (not (is-Leaf!6079 (left!10502 (right!10832 t!4115)))))))

(assert (=> b!1198389 (=> res!540686 e!769440)))

(declare-fun b!1198390 () Bool)

(assert (=> b!1198390 (= e!769440 (inv!16085 (left!10502 (right!10832 t!4115))))))

(assert (= (and d!342604 c!199365) b!1198388))

(assert (= (and d!342604 (not c!199365)) b!1198389))

(assert (= (and b!1198389 (not res!540686)) b!1198390))

(declare-fun m!1373691 () Bool)

(assert (=> b!1198388 m!1373691))

(declare-fun m!1373693 () Bool)

(assert (=> b!1198390 m!1373693))

(assert (=> b!1198096 d!342604))

(declare-fun d!342606 () Bool)

(declare-fun c!199366 () Bool)

(assert (=> d!342606 (= c!199366 (is-Node!3969 (right!10832 (right!10832 t!4115))))))

(declare-fun e!769441 () Bool)

(assert (=> d!342606 (= (inv!16080 (right!10832 (right!10832 t!4115))) e!769441)))

(declare-fun b!1198391 () Bool)

(assert (=> b!1198391 (= e!769441 (inv!16084 (right!10832 (right!10832 t!4115))))))

(declare-fun b!1198392 () Bool)

(declare-fun e!769442 () Bool)

(assert (=> b!1198392 (= e!769441 e!769442)))

(declare-fun res!540687 () Bool)

(assert (=> b!1198392 (= res!540687 (not (is-Leaf!6079 (right!10832 (right!10832 t!4115)))))))

(assert (=> b!1198392 (=> res!540687 e!769442)))

(declare-fun b!1198393 () Bool)

(assert (=> b!1198393 (= e!769442 (inv!16085 (right!10832 (right!10832 t!4115))))))

(assert (= (and d!342606 c!199366) b!1198391))

(assert (= (and d!342606 (not c!199366)) b!1198392))

(assert (= (and b!1198392 (not res!540687)) b!1198393))

(declare-fun m!1373695 () Bool)

(assert (=> b!1198391 m!1373695))

(declare-fun m!1373697 () Bool)

(assert (=> b!1198393 m!1373697))

(assert (=> b!1198096 d!342606))

(declare-fun d!342608 () Bool)

(assert (=> d!342608 (= (list!4474 (xs!6676 (left!10502 t!4115))) (innerList!4029 (xs!6676 (left!10502 t!4115))))))

(assert (=> b!1197981 d!342608))

(declare-fun b!1198396 () Bool)

(declare-fun res!540689 () Bool)

(declare-fun e!769444 () Bool)

(assert (=> b!1198396 (=> (not res!540689) (not e!769444))))

(declare-fun lt!410448 () List!12060)

(assert (=> b!1198396 (= res!540689 (= (size!9557 lt!410448) (+ (size!9557 (list!4472 (left!10502 (left!10502 t!4115)))) (size!9557 (list!4472 (right!10832 (left!10502 t!4115)))))))))

(declare-fun b!1198394 () Bool)

(declare-fun e!769443 () List!12060)

(assert (=> b!1198394 (= e!769443 (list!4472 (right!10832 (left!10502 t!4115))))))

(declare-fun d!342610 () Bool)

(assert (=> d!342610 e!769444))

(declare-fun res!540688 () Bool)

(assert (=> d!342610 (=> (not res!540688) (not e!769444))))

(assert (=> d!342610 (= res!540688 (= (content!1683 lt!410448) (set.union (content!1683 (list!4472 (left!10502 (left!10502 t!4115)))) (content!1683 (list!4472 (right!10832 (left!10502 t!4115)))))))))

(assert (=> d!342610 (= lt!410448 e!769443)))

(declare-fun c!199367 () Bool)

(assert (=> d!342610 (= c!199367 (is-Nil!12036 (list!4472 (left!10502 (left!10502 t!4115)))))))

(assert (=> d!342610 (= (++!3071 (list!4472 (left!10502 (left!10502 t!4115))) (list!4472 (right!10832 (left!10502 t!4115)))) lt!410448)))

(declare-fun b!1198397 () Bool)

(assert (=> b!1198397 (= e!769444 (or (not (= (list!4472 (right!10832 (left!10502 t!4115))) Nil!12036)) (= lt!410448 (list!4472 (left!10502 (left!10502 t!4115))))))))

(declare-fun b!1198395 () Bool)

(assert (=> b!1198395 (= e!769443 (Cons!12036 (h!17437 (list!4472 (left!10502 (left!10502 t!4115)))) (++!3071 (t!112400 (list!4472 (left!10502 (left!10502 t!4115)))) (list!4472 (right!10832 (left!10502 t!4115))))))))

(assert (= (and d!342610 c!199367) b!1198394))

(assert (= (and d!342610 (not c!199367)) b!1198395))

(assert (= (and d!342610 res!540688) b!1198396))

(assert (= (and b!1198396 res!540689) b!1198397))

(declare-fun m!1373699 () Bool)

(assert (=> b!1198396 m!1373699))

(assert (=> b!1198396 m!1373241))

(declare-fun m!1373701 () Bool)

(assert (=> b!1198396 m!1373701))

(assert (=> b!1198396 m!1373243))

(declare-fun m!1373703 () Bool)

(assert (=> b!1198396 m!1373703))

(declare-fun m!1373705 () Bool)

(assert (=> d!342610 m!1373705))

(assert (=> d!342610 m!1373241))

(declare-fun m!1373707 () Bool)

(assert (=> d!342610 m!1373707))

(assert (=> d!342610 m!1373243))

(declare-fun m!1373709 () Bool)

(assert (=> d!342610 m!1373709))

(assert (=> b!1198395 m!1373243))

(declare-fun m!1373711 () Bool)

(assert (=> b!1198395 m!1373711))

(assert (=> b!1197982 d!342610))

(declare-fun b!1198398 () Bool)

(declare-fun e!769445 () List!12060)

(assert (=> b!1198398 (= e!769445 Nil!12036)))

(declare-fun d!342612 () Bool)

(declare-fun c!199368 () Bool)

(assert (=> d!342612 (= c!199368 (is-Empty!3969 (left!10502 (left!10502 t!4115))))))

(assert (=> d!342612 (= (list!4472 (left!10502 (left!10502 t!4115))) e!769445)))

(declare-fun b!1198401 () Bool)

(declare-fun e!769446 () List!12060)

(assert (=> b!1198401 (= e!769446 (++!3071 (list!4472 (left!10502 (left!10502 (left!10502 t!4115)))) (list!4472 (right!10832 (left!10502 (left!10502 t!4115))))))))

(declare-fun b!1198400 () Bool)

(assert (=> b!1198400 (= e!769446 (list!4474 (xs!6676 (left!10502 (left!10502 t!4115)))))))

(declare-fun b!1198399 () Bool)

(assert (=> b!1198399 (= e!769445 e!769446)))

(declare-fun c!199369 () Bool)

(assert (=> b!1198399 (= c!199369 (is-Leaf!6079 (left!10502 (left!10502 t!4115))))))

(assert (= (and d!342612 c!199368) b!1198398))

(assert (= (and d!342612 (not c!199368)) b!1198399))

(assert (= (and b!1198399 c!199369) b!1198400))

(assert (= (and b!1198399 (not c!199369)) b!1198401))

(declare-fun m!1373713 () Bool)

(assert (=> b!1198401 m!1373713))

(declare-fun m!1373715 () Bool)

(assert (=> b!1198401 m!1373715))

(assert (=> b!1198401 m!1373713))

(assert (=> b!1198401 m!1373715))

(declare-fun m!1373717 () Bool)

(assert (=> b!1198401 m!1373717))

(declare-fun m!1373719 () Bool)

(assert (=> b!1198400 m!1373719))

(assert (=> b!1197982 d!342612))

(declare-fun b!1198402 () Bool)

(declare-fun e!769447 () List!12060)

(assert (=> b!1198402 (= e!769447 Nil!12036)))

(declare-fun d!342614 () Bool)

(declare-fun c!199370 () Bool)

(assert (=> d!342614 (= c!199370 (is-Empty!3969 (right!10832 (left!10502 t!4115))))))

(assert (=> d!342614 (= (list!4472 (right!10832 (left!10502 t!4115))) e!769447)))

(declare-fun b!1198405 () Bool)

(declare-fun e!769448 () List!12060)

(assert (=> b!1198405 (= e!769448 (++!3071 (list!4472 (left!10502 (right!10832 (left!10502 t!4115)))) (list!4472 (right!10832 (right!10832 (left!10502 t!4115))))))))

(declare-fun b!1198404 () Bool)

(assert (=> b!1198404 (= e!769448 (list!4474 (xs!6676 (right!10832 (left!10502 t!4115)))))))

(declare-fun b!1198403 () Bool)

(assert (=> b!1198403 (= e!769447 e!769448)))

(declare-fun c!199371 () Bool)

(assert (=> b!1198403 (= c!199371 (is-Leaf!6079 (right!10832 (left!10502 t!4115))))))

(assert (= (and d!342614 c!199370) b!1198402))

(assert (= (and d!342614 (not c!199370)) b!1198403))

(assert (= (and b!1198403 c!199371) b!1198404))

(assert (= (and b!1198403 (not c!199371)) b!1198405))

(declare-fun m!1373721 () Bool)

(assert (=> b!1198405 m!1373721))

(declare-fun m!1373723 () Bool)

(assert (=> b!1198405 m!1373723))

(assert (=> b!1198405 m!1373721))

(assert (=> b!1198405 m!1373723))

(declare-fun m!1373725 () Bool)

(assert (=> b!1198405 m!1373725))

(declare-fun m!1373727 () Bool)

(assert (=> b!1198404 m!1373727))

(assert (=> b!1197982 d!342614))

(declare-fun b!1198408 () Bool)

(declare-fun res!540691 () Bool)

(declare-fun e!769450 () Bool)

(assert (=> b!1198408 (=> (not res!540691) (not e!769450))))

(declare-fun lt!410449 () List!12060)

(assert (=> b!1198408 (= res!540691 (= (size!9557 lt!410449) (+ (size!9557 call!83271) (size!9557 (slice!460 lt!410363 0 (- until!31 call!83269))))))))

(declare-fun b!1198406 () Bool)

(declare-fun e!769449 () List!12060)

(assert (=> b!1198406 (= e!769449 (slice!460 lt!410363 0 (- until!31 call!83269)))))

(declare-fun d!342616 () Bool)

(assert (=> d!342616 e!769450))

(declare-fun res!540690 () Bool)

(assert (=> d!342616 (=> (not res!540690) (not e!769450))))

(assert (=> d!342616 (= res!540690 (= (content!1683 lt!410449) (set.union (content!1683 call!83271) (content!1683 (slice!460 lt!410363 0 (- until!31 call!83269))))))))

(assert (=> d!342616 (= lt!410449 e!769449)))

(declare-fun c!199372 () Bool)

(assert (=> d!342616 (= c!199372 (is-Nil!12036 call!83271))))

(assert (=> d!342616 (= (++!3071 call!83271 (slice!460 lt!410363 0 (- until!31 call!83269))) lt!410449)))

(declare-fun b!1198409 () Bool)

(assert (=> b!1198409 (= e!769450 (or (not (= (slice!460 lt!410363 0 (- until!31 call!83269)) Nil!12036)) (= lt!410449 call!83271)))))

(declare-fun b!1198407 () Bool)

(assert (=> b!1198407 (= e!769449 (Cons!12036 (h!17437 call!83271) (++!3071 (t!112400 call!83271) (slice!460 lt!410363 0 (- until!31 call!83269)))))))

(assert (= (and d!342616 c!199372) b!1198406))

(assert (= (and d!342616 (not c!199372)) b!1198407))

(assert (= (and d!342616 res!540690) b!1198408))

(assert (= (and b!1198408 res!540691) b!1198409))

(declare-fun m!1373729 () Bool)

(assert (=> b!1198408 m!1373729))

(declare-fun m!1373731 () Bool)

(assert (=> b!1198408 m!1373731))

(assert (=> b!1198408 m!1373261))

(declare-fun m!1373733 () Bool)

(assert (=> b!1198408 m!1373733))

(declare-fun m!1373735 () Bool)

(assert (=> d!342616 m!1373735))

(declare-fun m!1373737 () Bool)

(assert (=> d!342616 m!1373737))

(assert (=> d!342616 m!1373261))

(declare-fun m!1373739 () Bool)

(assert (=> d!342616 m!1373739))

(assert (=> b!1198407 m!1373261))

(declare-fun m!1373741 () Bool)

(assert (=> b!1198407 m!1373741))

(assert (=> b!1198017 d!342616))

(declare-fun d!342618 () Bool)

(assert (=> d!342618 (= (slice!460 lt!410363 0 (- until!31 call!83269)) (take!122 (drop!594 lt!410363 0) (- (- until!31 call!83269) 0)))))

(declare-fun bs!288190 () Bool)

(assert (= bs!288190 d!342618))

(declare-fun m!1373743 () Bool)

(assert (=> bs!288190 m!1373743))

(assert (=> bs!288190 m!1373743))

(declare-fun m!1373745 () Bool)

(assert (=> bs!288190 m!1373745))

(assert (=> b!1198017 d!342618))

(assert (=> bm!83265 d!342434))

(declare-fun d!342620 () Bool)

(declare-fun res!540692 () Bool)

(declare-fun e!769451 () Bool)

(assert (=> d!342620 (=> (not res!540692) (not e!769451))))

(assert (=> d!342620 (= res!540692 (<= (size!9557 (list!4474 (xs!6676 t!4115))) 512))))

(assert (=> d!342620 (= (inv!16085 t!4115) e!769451)))

(declare-fun b!1198410 () Bool)

(declare-fun res!540693 () Bool)

(assert (=> b!1198410 (=> (not res!540693) (not e!769451))))

(assert (=> b!1198410 (= res!540693 (= (csize!8169 t!4115) (size!9557 (list!4474 (xs!6676 t!4115)))))))

(declare-fun b!1198411 () Bool)

(assert (=> b!1198411 (= e!769451 (and (> (csize!8169 t!4115) 0) (<= (csize!8169 t!4115) 512)))))

(assert (= (and d!342620 res!540692) b!1198410))

(assert (= (and b!1198410 res!540693) b!1198411))

(assert (=> d!342620 m!1373547))

(assert (=> d!342620 m!1373547))

(declare-fun m!1373747 () Bool)

(assert (=> d!342620 m!1373747))

(assert (=> b!1198410 m!1373547))

(assert (=> b!1198410 m!1373547))

(assert (=> b!1198410 m!1373747))

(assert (=> b!1198084 d!342620))

(declare-fun tp!341038 () Bool)

(declare-fun e!769452 () Bool)

(declare-fun b!1198412 () Bool)

(declare-fun tp!341040 () Bool)

(assert (=> b!1198412 (= e!769452 (and (inv!16080 (left!10502 (left!10502 (right!10832 t!4115)))) tp!341040 (inv!16080 (right!10832 (left!10502 (right!10832 t!4115)))) tp!341038))))

(declare-fun b!1198414 () Bool)

(declare-fun e!769453 () Bool)

(declare-fun tp!341039 () Bool)

(assert (=> b!1198414 (= e!769453 tp!341039)))

(declare-fun b!1198413 () Bool)

(assert (=> b!1198413 (= e!769452 (and (inv!16081 (xs!6676 (left!10502 (right!10832 t!4115)))) e!769453))))

(assert (=> b!1198096 (= tp!341019 (and (inv!16080 (left!10502 (right!10832 t!4115))) e!769452))))

(assert (= (and b!1198096 (is-Node!3969 (left!10502 (right!10832 t!4115)))) b!1198412))

(assert (= b!1198413 b!1198414))

(assert (= (and b!1198096 (is-Leaf!6079 (left!10502 (right!10832 t!4115)))) b!1198413))

(declare-fun m!1373749 () Bool)

(assert (=> b!1198412 m!1373749))

(declare-fun m!1373751 () Bool)

(assert (=> b!1198412 m!1373751))

(declare-fun m!1373753 () Bool)

(assert (=> b!1198413 m!1373753))

(assert (=> b!1198096 m!1373361))

(declare-fun tp!341041 () Bool)

(declare-fun e!769454 () Bool)

(declare-fun tp!341043 () Bool)

(declare-fun b!1198415 () Bool)

(assert (=> b!1198415 (= e!769454 (and (inv!16080 (left!10502 (right!10832 (right!10832 t!4115)))) tp!341043 (inv!16080 (right!10832 (right!10832 (right!10832 t!4115)))) tp!341041))))

(declare-fun b!1198417 () Bool)

(declare-fun e!769455 () Bool)

(declare-fun tp!341042 () Bool)

(assert (=> b!1198417 (= e!769455 tp!341042)))

(declare-fun b!1198416 () Bool)

(assert (=> b!1198416 (= e!769454 (and (inv!16081 (xs!6676 (right!10832 (right!10832 t!4115)))) e!769455))))

(assert (=> b!1198096 (= tp!341017 (and (inv!16080 (right!10832 (right!10832 t!4115))) e!769454))))

(assert (= (and b!1198096 (is-Node!3969 (right!10832 (right!10832 t!4115)))) b!1198415))

(assert (= b!1198416 b!1198417))

(assert (= (and b!1198096 (is-Leaf!6079 (right!10832 (right!10832 t!4115)))) b!1198416))

(declare-fun m!1373755 () Bool)

(assert (=> b!1198415 m!1373755))

(declare-fun m!1373757 () Bool)

(assert (=> b!1198415 m!1373757))

(declare-fun m!1373759 () Bool)

(assert (=> b!1198416 m!1373759))

(assert (=> b!1198096 m!1373363))

(declare-fun b!1198418 () Bool)

(declare-fun e!769456 () Bool)

(declare-fun tp!341044 () Bool)

(assert (=> b!1198418 (= e!769456 (and tp_is_empty!5965 tp!341044))))

(assert (=> b!1198103 (= tp!341022 e!769456)))

(assert (= (and b!1198103 (is-Cons!12036 (t!112400 (innerList!4029 (xs!6676 t!4115))))) b!1198418))

(declare-fun b!1198419 () Bool)

(declare-fun e!769457 () Bool)

(declare-fun tp!341045 () Bool)

(assert (=> b!1198419 (= e!769457 (and tp_is_empty!5965 tp!341045))))

(assert (=> b!1198095 (= tp!341015 e!769457)))

(assert (= (and b!1198095 (is-Cons!12036 (innerList!4029 (xs!6676 (left!10502 t!4115))))) b!1198419))

(declare-fun b!1198420 () Bool)

(declare-fun e!769458 () Bool)

(declare-fun tp!341046 () Bool)

(assert (=> b!1198420 (= e!769458 (and tp_is_empty!5965 tp!341046))))

(assert (=> b!1198098 (= tp!341018 e!769458)))

(assert (= (and b!1198098 (is-Cons!12036 (innerList!4029 (xs!6676 (right!10832 t!4115))))) b!1198420))

(declare-fun e!769459 () Bool)

(declare-fun b!1198421 () Bool)

(declare-fun tp!341047 () Bool)

(declare-fun tp!341049 () Bool)

(assert (=> b!1198421 (= e!769459 (and (inv!16080 (left!10502 (left!10502 (left!10502 t!4115)))) tp!341049 (inv!16080 (right!10832 (left!10502 (left!10502 t!4115)))) tp!341047))))

(declare-fun b!1198423 () Bool)

(declare-fun e!769460 () Bool)

(declare-fun tp!341048 () Bool)

(assert (=> b!1198423 (= e!769460 tp!341048)))

(declare-fun b!1198422 () Bool)

(assert (=> b!1198422 (= e!769459 (and (inv!16081 (xs!6676 (left!10502 (left!10502 t!4115)))) e!769460))))

(assert (=> b!1198093 (= tp!341016 (and (inv!16080 (left!10502 (left!10502 t!4115))) e!769459))))

(assert (= (and b!1198093 (is-Node!3969 (left!10502 (left!10502 t!4115)))) b!1198421))

(assert (= b!1198422 b!1198423))

(assert (= (and b!1198093 (is-Leaf!6079 (left!10502 (left!10502 t!4115)))) b!1198422))

(declare-fun m!1373761 () Bool)

(assert (=> b!1198421 m!1373761))

(declare-fun m!1373763 () Bool)

(assert (=> b!1198421 m!1373763))

(declare-fun m!1373765 () Bool)

(assert (=> b!1198422 m!1373765))

(assert (=> b!1198093 m!1373355))

(declare-fun tp!341050 () Bool)

(declare-fun b!1198424 () Bool)

(declare-fun tp!341052 () Bool)

(declare-fun e!769461 () Bool)

(assert (=> b!1198424 (= e!769461 (and (inv!16080 (left!10502 (right!10832 (left!10502 t!4115)))) tp!341052 (inv!16080 (right!10832 (right!10832 (left!10502 t!4115)))) tp!341050))))

(declare-fun b!1198426 () Bool)

(declare-fun e!769462 () Bool)

(declare-fun tp!341051 () Bool)

(assert (=> b!1198426 (= e!769462 tp!341051)))

(declare-fun b!1198425 () Bool)

(assert (=> b!1198425 (= e!769461 (and (inv!16081 (xs!6676 (right!10832 (left!10502 t!4115)))) e!769462))))

(assert (=> b!1198093 (= tp!341014 (and (inv!16080 (right!10832 (left!10502 t!4115))) e!769461))))

(assert (= (and b!1198093 (is-Node!3969 (right!10832 (left!10502 t!4115)))) b!1198424))

(assert (= b!1198425 b!1198426))

(assert (= (and b!1198093 (is-Leaf!6079 (right!10832 (left!10502 t!4115)))) b!1198425))

(declare-fun m!1373767 () Bool)

(assert (=> b!1198424 m!1373767))

(declare-fun m!1373769 () Bool)

(assert (=> b!1198424 m!1373769))

(declare-fun m!1373771 () Bool)

(assert (=> b!1198425 m!1373771))

(assert (=> b!1198093 m!1373357))

(push 1)

(assert (not bm!83280))

(assert (not b!1198356))

(assert (not d!342512))

(assert (not b!1198267))

(assert (not b!1198357))

(assert (not d!342616))

(assert (not b!1198289))

(assert (not d!342620))

(assert (not b!1198202))

(assert (not bm!83293))

(assert (not b!1198413))

(assert (not b!1198381))

(assert (not b!1198302))

(assert (not b!1198359))

(assert (not b!1198226))

(assert (not b!1198342))

(assert (not b!1198225))

(assert (not b!1198304))

(assert (not b!1198263))

(assert tp_is_empty!5965)

(assert (not b!1198418))

(assert (not b!1198300))

(assert (not b!1198303))

(assert (not b!1198376))

(assert (not b!1198228))

(assert (not b!1198400))

(assert (not b!1198310))

(assert (not b!1198266))

(assert (not b!1198421))

(assert (not b!1198387))

(assert (not b!1198338))

(assert (not b!1198198))

(assert (not b!1198339))

(assert (not b!1198321))

(assert (not b!1198408))

(assert (not d!342556))

(assert (not b!1198422))

(assert (not b!1198319))

(assert (not d!342528))

(assert (not b!1198223))

(assert (not b!1198388))

(assert (not b!1198206))

(assert (not b!1198252))

(assert (not b!1198306))

(assert (not b!1198372))

(assert (not b!1198415))

(assert (not b!1198404))

(assert (not b!1198292))

(assert (not bm!83284))

(assert (not b!1198370))

(assert (not d!342496))

(assert (not b!1198315))

(assert (not b!1198203))

(assert (not b!1198401))

(assert (not b!1198347))

(assert (not b!1198417))

(assert (not d!342562))

(assert (not b!1198354))

(assert (not b!1198312))

(assert (not b!1198363))

(assert (not d!342554))

(assert (not b!1198197))

(assert (not d!342590))

(assert (not b!1198390))

(assert (not b!1198299))

(assert (not b!1198205))

(assert (not b!1198204))

(assert (not b!1198313))

(assert (not b!1198195))

(assert (not b!1198333))

(assert (not b!1198407))

(assert (not b!1198207))

(assert (not d!342558))

(assert (not d!342610))

(assert (not b!1198096))

(assert (not b!1198423))

(assert (not b!1198301))

(assert (not d!342598))

(assert (not d!342564))

(assert (not b!1198352))

(assert (not d!342588))

(assert (not b!1198412))

(assert (not b!1198396))

(assert (not b!1198395))

(assert (not b!1198351))

(assert (not b!1198348))

(assert (not d!342540))

(assert (not d!342550))

(assert (not b!1198186))

(assert (not b!1198424))

(assert (not b!1198331))

(assert (not b!1198308))

(assert (not b!1198425))

(assert (not b!1198375))

(assert (not bm!83295))

(assert (not b!1198329))

(assert (not b!1198405))

(assert (not b!1198336))

(assert (not b!1198193))

(assert (not b!1198383))

(assert (not b!1198343))

(assert (not d!342602))

(assert (not b!1198283))

(assert (not b!1198293))

(assert (not d!342580))

(assert (not d!342618))

(assert (not b!1198420))

(assert (not d!342572))

(assert (not b!1198261))

(assert (not b!1198416))

(assert (not d!342538))

(assert (not b!1198257))

(assert (not d!342552))

(assert (not b!1198391))

(assert (not b!1198298))

(assert (not bm!83292))

(assert (not bm!83285))

(assert (not b!1198093))

(assert (not b!1198295))

(assert (not b!1198393))

(assert (not b!1198426))

(assert (not b!1198365))

(assert (not b!1198414))

(assert (not d!342574))

(assert (not b!1198262))

(assert (not b!1198379))

(assert (not d!342514))

(assert (not bm!83283))

(assert (not d!342582))

(assert (not b!1198384))

(assert (not b!1198259))

(assert (not b!1198410))

(assert (not b!1198199))

(assert (not bm!83296))

(assert (not b!1198334))

(assert (not b!1198419))

(assert (not d!342498))

(assert (not b!1198250))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

