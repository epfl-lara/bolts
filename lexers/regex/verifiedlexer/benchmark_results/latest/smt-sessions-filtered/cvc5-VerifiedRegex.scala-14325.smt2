; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!747980 () Bool)

(assert start!747980)

(declare-fun b!7919277 () Bool)

(declare-fun e!4674381 () Bool)

(declare-datatypes ((T!145718 0))(
  ( (T!145719 (val!32047 Int)) )
))
(declare-datatypes ((List!74559 0))(
  ( (Nil!74435) (Cons!74435 (h!80883 T!145718) (t!390122 List!74559)) )
))
(declare-datatypes ((IArray!31839 0))(
  ( (IArray!31840 (innerList!15977 List!74559)) )
))
(declare-datatypes ((Conc!15889 0))(
  ( (Node!15889 (left!56854 Conc!15889) (right!57184 Conc!15889) (csize!32008 Int) (cheight!16100 Int)) (Leaf!30215 (xs!19275 IArray!31839) (csize!32009 Int)) (Empty!15889) )
))
(declare-fun t!4440 () Conc!15889)

(declare-fun e!4674379 () Bool)

(declare-fun inv!95653 (IArray!31839) Bool)

(assert (=> b!7919277 (= e!4674381 (and (inv!95653 (xs!19275 t!4440)) e!4674379))))

(declare-fun tp!2357907 () Bool)

(declare-fun b!7919278 () Bool)

(declare-fun tp!2357905 () Bool)

(declare-fun inv!95654 (Conc!15889) Bool)

(assert (=> b!7919278 (= e!4674381 (and (inv!95654 (left!56854 t!4440)) tp!2357905 (inv!95654 (right!57184 t!4440)) tp!2357907))))

(declare-fun b!7919279 () Bool)

(declare-fun tp!2357906 () Bool)

(assert (=> b!7919279 (= e!4674379 tp!2357906)))

(declare-fun res!3143040 () Bool)

(declare-fun e!4674380 () Bool)

(assert (=> start!747980 (=> (not res!3143040) (not e!4674380))))

(declare-fun isBalanced!4515 (Conc!15889) Bool)

(assert (=> start!747980 (= res!3143040 (isBalanced!4515 t!4440))))

(assert (=> start!747980 e!4674380))

(assert (=> start!747980 (and (inv!95654 t!4440) e!4674381)))

(declare-fun tp_is_empty!53203 () Bool)

(assert (=> start!747980 tp_is_empty!53203))

(declare-fun b!7919280 () Bool)

(declare-fun res!3143039 () Bool)

(assert (=> b!7919280 (=> (not res!3143039) (not e!4674380))))

(assert (=> b!7919280 (= res!3143039 (and (not (is-Empty!15889 t!4440)) (not (is-Node!15889 t!4440)) (< (csize!32009 t!4440) 512)))))

(declare-fun b!7919281 () Bool)

(declare-fun size!43220 (IArray!31839) Int)

(assert (=> b!7919281 (= e!4674380 (> (+ 1 (size!43220 (xs!19275 t!4440))) 2147483647))))

(declare-fun b!7919282 () Bool)

(declare-fun res!3143041 () Bool)

(assert (=> b!7919282 (=> (not res!3143041) (not e!4674380))))

(declare-fun v!5484 () T!145718)

(declare-fun size!43221 (List!74559) Int)

(declare-fun $colon+!306 (List!74559 T!145718) List!74559)

(declare-fun list!19390 (IArray!31839) List!74559)

(assert (=> b!7919282 (= res!3143041 (= (size!43221 ($colon+!306 (list!19390 (xs!19275 t!4440)) v!5484)) (+ 1 (csize!32009 t!4440))))))

(assert (= (and start!747980 res!3143040) b!7919280))

(assert (= (and b!7919280 res!3143039) b!7919282))

(assert (= (and b!7919282 res!3143041) b!7919281))

(assert (= (and start!747980 (is-Node!15889 t!4440)) b!7919278))

(assert (= b!7919277 b!7919279))

(assert (= (and start!747980 (is-Leaf!30215 t!4440)) b!7919277))

(declare-fun m!8295282 () Bool)

(assert (=> b!7919278 m!8295282))

(declare-fun m!8295284 () Bool)

(assert (=> b!7919278 m!8295284))

(declare-fun m!8295286 () Bool)

(assert (=> start!747980 m!8295286))

(declare-fun m!8295288 () Bool)

(assert (=> start!747980 m!8295288))

(declare-fun m!8295290 () Bool)

(assert (=> b!7919277 m!8295290))

(declare-fun m!8295292 () Bool)

(assert (=> b!7919282 m!8295292))

(assert (=> b!7919282 m!8295292))

(declare-fun m!8295294 () Bool)

(assert (=> b!7919282 m!8295294))

(assert (=> b!7919282 m!8295294))

(declare-fun m!8295296 () Bool)

(assert (=> b!7919282 m!8295296))

(declare-fun m!8295298 () Bool)

(assert (=> b!7919281 m!8295298))

(push 1)

(assert (not b!7919278))

(assert (not b!7919277))

(assert (not b!7919281))

(assert tp_is_empty!53203)

(assert (not b!7919282))

(assert (not b!7919279))

(assert (not start!747980))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2362676 () Bool)

(declare-fun lt!2691480 () Int)

(assert (=> d!2362676 (= lt!2691480 (size!43221 (list!19390 (xs!19275 t!4440))))))

(declare-fun choose!59812 (IArray!31839) Int)

(assert (=> d!2362676 (= lt!2691480 (choose!59812 (xs!19275 t!4440)))))

(assert (=> d!2362676 (= (size!43220 (xs!19275 t!4440)) lt!2691480)))

(declare-fun bs!1968529 () Bool)

(assert (= bs!1968529 d!2362676))

(assert (=> bs!1968529 m!8295292))

(assert (=> bs!1968529 m!8295292))

(declare-fun m!8295318 () Bool)

(assert (=> bs!1968529 m!8295318))

(declare-fun m!8295320 () Bool)

(assert (=> bs!1968529 m!8295320))

(assert (=> b!7919281 d!2362676))

(declare-fun d!2362678 () Bool)

(assert (=> d!2362678 (= (inv!95653 (xs!19275 t!4440)) (<= (size!43221 (innerList!15977 (xs!19275 t!4440))) 2147483647))))

(declare-fun bs!1968530 () Bool)

(assert (= bs!1968530 d!2362678))

(declare-fun m!8295322 () Bool)

(assert (=> bs!1968530 m!8295322))

(assert (=> b!7919277 d!2362678))

(declare-fun d!2362680 () Bool)

(declare-fun lt!2691483 () Int)

(assert (=> d!2362680 (>= lt!2691483 0)))

(declare-fun e!4674393 () Int)

(assert (=> d!2362680 (= lt!2691483 e!4674393)))

(declare-fun c!1453293 () Bool)

(assert (=> d!2362680 (= c!1453293 (is-Nil!74435 ($colon+!306 (list!19390 (xs!19275 t!4440)) v!5484)))))

(assert (=> d!2362680 (= (size!43221 ($colon+!306 (list!19390 (xs!19275 t!4440)) v!5484)) lt!2691483)))

(declare-fun b!7919305 () Bool)

(assert (=> b!7919305 (= e!4674393 0)))

(declare-fun b!7919306 () Bool)

(assert (=> b!7919306 (= e!4674393 (+ 1 (size!43221 (t!390122 ($colon+!306 (list!19390 (xs!19275 t!4440)) v!5484)))))))

(assert (= (and d!2362680 c!1453293) b!7919305))

(assert (= (and d!2362680 (not c!1453293)) b!7919306))

(declare-fun m!8295324 () Bool)

(assert (=> b!7919306 m!8295324))

(assert (=> b!7919282 d!2362680))

(declare-fun bm!734888 () Bool)

(declare-fun call!734893 () (_ BitVec 32))

(declare-fun lt!2691489 () List!74559)

(declare-fun isize!111 (List!74559) (_ BitVec 32))

(assert (=> bm!734888 (= call!734893 (isize!111 lt!2691489))))

(declare-fun bm!734889 () Bool)

(declare-fun call!734894 () (_ BitVec 32))

(assert (=> bm!734889 (= call!734894 (isize!111 (list!19390 (xs!19275 t!4440))))))

(declare-fun b!7919329 () Bool)

(declare-fun e!4674405 () List!74559)

(assert (=> b!7919329 (= e!4674405 (Cons!74435 v!5484 (list!19390 (xs!19275 t!4440))))))

(declare-fun b!7919330 () Bool)

(assert (=> b!7919330 (= e!4674405 (Cons!74435 (h!80883 (list!19390 (xs!19275 t!4440))) ($colon+!306 (t!390122 (list!19390 (xs!19275 t!4440))) v!5484)))))

(declare-fun b!7919331 () Bool)

(declare-fun e!4674404 () Bool)

(assert (=> b!7919331 (= e!4674404 (= call!734893 call!734894))))

(declare-fun e!4674403 () Bool)

(declare-fun b!7919332 () Bool)

(declare-fun ++!18249 (List!74559 List!74559) List!74559)

(assert (=> b!7919332 (= e!4674403 (= lt!2691489 (++!18249 (list!19390 (xs!19275 t!4440)) (Cons!74435 v!5484 Nil!74435))))))

(declare-fun b!7919333 () Bool)

(declare-fun res!3143062 () Bool)

(assert (=> b!7919333 (=> (not res!3143062) (not e!4674403))))

(declare-fun content!15773 (List!74559) (Set T!145718))

(assert (=> b!7919333 (= res!3143062 (= (content!15773 lt!2691489) (set.union (content!15773 (list!19390 (xs!19275 t!4440))) (set.insert v!5484 (as set.empty (Set T!145718))))))))

(declare-fun b!7919334 () Bool)

(declare-fun res!3143061 () Bool)

(assert (=> b!7919334 (=> (not res!3143061) (not e!4674403))))

(assert (=> b!7919334 (= res!3143061 (= (size!43221 lt!2691489) (+ (size!43221 (list!19390 (xs!19275 t!4440))) 1)))))

(declare-fun b!7919335 () Bool)

(declare-fun res!3143060 () Bool)

(assert (=> b!7919335 (=> (not res!3143060) (not e!4674403))))

(assert (=> b!7919335 (= res!3143060 e!4674404)))

(declare-fun c!1453302 () Bool)

(assert (=> b!7919335 (= c!1453302 (bvslt (isize!111 (list!19390 (xs!19275 t!4440))) #b01111111111111111111111111111111))))

(declare-fun d!2362682 () Bool)

(assert (=> d!2362682 e!4674403))

(declare-fun res!3143059 () Bool)

(assert (=> d!2362682 (=> (not res!3143059) (not e!4674403))))

(assert (=> d!2362682 (= res!3143059 (is-Cons!74435 lt!2691489))))

(assert (=> d!2362682 (= lt!2691489 e!4674405)))

(declare-fun c!1453301 () Bool)

(assert (=> d!2362682 (= c!1453301 (is-Nil!74435 (list!19390 (xs!19275 t!4440))))))

(assert (=> d!2362682 (= ($colon+!306 (list!19390 (xs!19275 t!4440)) v!5484) lt!2691489)))

(declare-fun b!7919336 () Bool)

(assert (=> b!7919336 (= e!4674404 (= call!734893 (bvadd call!734894 #b00000000000000000000000000000001)))))

(assert (= (and d!2362682 c!1453301) b!7919329))

(assert (= (and d!2362682 (not c!1453301)) b!7919330))

(assert (= (and d!2362682 res!3143059) b!7919334))

(assert (= (and b!7919334 res!3143061) b!7919335))

(assert (= (and b!7919335 c!1453302) b!7919336))

(assert (= (and b!7919335 (not c!1453302)) b!7919331))

(assert (= (or b!7919336 b!7919331) bm!734888))

(assert (= (or b!7919336 b!7919331) bm!734889))

(assert (= (and b!7919335 res!3143060) b!7919333))

(assert (= (and b!7919333 res!3143062) b!7919332))

(assert (=> b!7919332 m!8295292))

(declare-fun m!8295328 () Bool)

(assert (=> b!7919332 m!8295328))

(assert (=> bm!734889 m!8295292))

(declare-fun m!8295330 () Bool)

(assert (=> bm!734889 m!8295330))

(declare-fun m!8295332 () Bool)

(assert (=> b!7919330 m!8295332))

(declare-fun m!8295334 () Bool)

(assert (=> bm!734888 m!8295334))

(declare-fun m!8295336 () Bool)

(assert (=> b!7919333 m!8295336))

(assert (=> b!7919333 m!8295292))

(declare-fun m!8295338 () Bool)

(assert (=> b!7919333 m!8295338))

(declare-fun m!8295340 () Bool)

(assert (=> b!7919333 m!8295340))

(declare-fun m!8295342 () Bool)

(assert (=> b!7919334 m!8295342))

(assert (=> b!7919334 m!8295292))

(assert (=> b!7919334 m!8295318))

(assert (=> b!7919335 m!8295292))

(assert (=> b!7919335 m!8295330))

(assert (=> b!7919282 d!2362682))

(declare-fun d!2362688 () Bool)

(assert (=> d!2362688 (= (list!19390 (xs!19275 t!4440)) (innerList!15977 (xs!19275 t!4440)))))

(assert (=> b!7919282 d!2362688))

(declare-fun d!2362690 () Bool)

(declare-fun c!1453305 () Bool)

(assert (=> d!2362690 (= c!1453305 (is-Node!15889 (left!56854 t!4440)))))

(declare-fun e!4674410 () Bool)

(assert (=> d!2362690 (= (inv!95654 (left!56854 t!4440)) e!4674410)))

(declare-fun b!7919343 () Bool)

(declare-fun inv!95657 (Conc!15889) Bool)

(assert (=> b!7919343 (= e!4674410 (inv!95657 (left!56854 t!4440)))))

(declare-fun b!7919344 () Bool)

(declare-fun e!4674411 () Bool)

(assert (=> b!7919344 (= e!4674410 e!4674411)))

(declare-fun res!3143065 () Bool)

(assert (=> b!7919344 (= res!3143065 (not (is-Leaf!30215 (left!56854 t!4440))))))

(assert (=> b!7919344 (=> res!3143065 e!4674411)))

(declare-fun b!7919345 () Bool)

(declare-fun inv!95658 (Conc!15889) Bool)

(assert (=> b!7919345 (= e!4674411 (inv!95658 (left!56854 t!4440)))))

(assert (= (and d!2362690 c!1453305) b!7919343))

(assert (= (and d!2362690 (not c!1453305)) b!7919344))

(assert (= (and b!7919344 (not res!3143065)) b!7919345))

(declare-fun m!8295344 () Bool)

(assert (=> b!7919343 m!8295344))

(declare-fun m!8295346 () Bool)

(assert (=> b!7919345 m!8295346))

(assert (=> b!7919278 d!2362690))

(declare-fun d!2362692 () Bool)

(declare-fun c!1453306 () Bool)

(assert (=> d!2362692 (= c!1453306 (is-Node!15889 (right!57184 t!4440)))))

(declare-fun e!4674412 () Bool)

(assert (=> d!2362692 (= (inv!95654 (right!57184 t!4440)) e!4674412)))

(declare-fun b!7919346 () Bool)

(assert (=> b!7919346 (= e!4674412 (inv!95657 (right!57184 t!4440)))))

(declare-fun b!7919347 () Bool)

(declare-fun e!4674413 () Bool)

(assert (=> b!7919347 (= e!4674412 e!4674413)))

(declare-fun res!3143066 () Bool)

(assert (=> b!7919347 (= res!3143066 (not (is-Leaf!30215 (right!57184 t!4440))))))

(assert (=> b!7919347 (=> res!3143066 e!4674413)))

(declare-fun b!7919348 () Bool)

(assert (=> b!7919348 (= e!4674413 (inv!95658 (right!57184 t!4440)))))

(assert (= (and d!2362692 c!1453306) b!7919346))

(assert (= (and d!2362692 (not c!1453306)) b!7919347))

(assert (= (and b!7919347 (not res!3143066)) b!7919348))

(declare-fun m!8295348 () Bool)

(assert (=> b!7919346 m!8295348))

(declare-fun m!8295350 () Bool)

(assert (=> b!7919348 m!8295350))

(assert (=> b!7919278 d!2362692))

(declare-fun b!7919361 () Bool)

(declare-fun res!3143081 () Bool)

(declare-fun e!4674418 () Bool)

(assert (=> b!7919361 (=> (not res!3143081) (not e!4674418))))

(declare-fun isEmpty!42754 (Conc!15889) Bool)

(assert (=> b!7919361 (= res!3143081 (not (isEmpty!42754 (left!56854 t!4440))))))

(declare-fun b!7919362 () Bool)

(declare-fun res!3143083 () Bool)

(assert (=> b!7919362 (=> (not res!3143083) (not e!4674418))))

(assert (=> b!7919362 (= res!3143083 (isBalanced!4515 (right!57184 t!4440)))))

(declare-fun b!7919363 () Bool)

(assert (=> b!7919363 (= e!4674418 (not (isEmpty!42754 (right!57184 t!4440))))))

(declare-fun d!2362694 () Bool)

(declare-fun res!3143080 () Bool)

(declare-fun e!4674419 () Bool)

(assert (=> d!2362694 (=> res!3143080 e!4674419)))

(assert (=> d!2362694 (= res!3143080 (not (is-Node!15889 t!4440)))))

(assert (=> d!2362694 (= (isBalanced!4515 t!4440) e!4674419)))

(declare-fun b!7919364 () Bool)

(declare-fun res!3143082 () Bool)

(assert (=> b!7919364 (=> (not res!3143082) (not e!4674418))))

(assert (=> b!7919364 (= res!3143082 (isBalanced!4515 (left!56854 t!4440)))))

(declare-fun b!7919365 () Bool)

(declare-fun res!3143084 () Bool)

(assert (=> b!7919365 (=> (not res!3143084) (not e!4674418))))

(declare-fun height!2205 (Conc!15889) Int)

(assert (=> b!7919365 (= res!3143084 (<= (- (height!2205 (left!56854 t!4440)) (height!2205 (right!57184 t!4440))) 1))))

(declare-fun b!7919366 () Bool)

(assert (=> b!7919366 (= e!4674419 e!4674418)))

(declare-fun res!3143079 () Bool)

(assert (=> b!7919366 (=> (not res!3143079) (not e!4674418))))

(assert (=> b!7919366 (= res!3143079 (<= (- 1) (- (height!2205 (left!56854 t!4440)) (height!2205 (right!57184 t!4440)))))))

(assert (= (and d!2362694 (not res!3143080)) b!7919366))

(assert (= (and b!7919366 res!3143079) b!7919365))

(assert (= (and b!7919365 res!3143084) b!7919364))

(assert (= (and b!7919364 res!3143082) b!7919362))

(assert (= (and b!7919362 res!3143083) b!7919361))

(assert (= (and b!7919361 res!3143081) b!7919363))

(declare-fun m!8295352 () Bool)

(assert (=> b!7919366 m!8295352))

(declare-fun m!8295354 () Bool)

(assert (=> b!7919366 m!8295354))

(declare-fun m!8295356 () Bool)

(assert (=> b!7919363 m!8295356))

(declare-fun m!8295358 () Bool)

(assert (=> b!7919361 m!8295358))

(declare-fun m!8295360 () Bool)

(assert (=> b!7919362 m!8295360))

(declare-fun m!8295362 () Bool)

(assert (=> b!7919364 m!8295362))

(assert (=> b!7919365 m!8295352))

(assert (=> b!7919365 m!8295354))

(assert (=> start!747980 d!2362694))

(declare-fun d!2362696 () Bool)

(declare-fun c!1453309 () Bool)

(assert (=> d!2362696 (= c!1453309 (is-Node!15889 t!4440))))

(declare-fun e!4674422 () Bool)

(assert (=> d!2362696 (= (inv!95654 t!4440) e!4674422)))

(declare-fun b!7919371 () Bool)

(assert (=> b!7919371 (= e!4674422 (inv!95657 t!4440))))

(declare-fun b!7919372 () Bool)

(declare-fun e!4674423 () Bool)

(assert (=> b!7919372 (= e!4674422 e!4674423)))

(declare-fun res!3143085 () Bool)

(assert (=> b!7919372 (= res!3143085 (not (is-Leaf!30215 t!4440)))))

(assert (=> b!7919372 (=> res!3143085 e!4674423)))

(declare-fun b!7919373 () Bool)

(assert (=> b!7919373 (= e!4674423 (inv!95658 t!4440))))

(assert (= (and d!2362696 c!1453309) b!7919371))

(assert (= (and d!2362696 (not c!1453309)) b!7919372))

(assert (= (and b!7919372 (not res!3143085)) b!7919373))

(declare-fun m!8295364 () Bool)

(assert (=> b!7919371 m!8295364))

(declare-fun m!8295366 () Bool)

(assert (=> b!7919373 m!8295366))

(assert (=> start!747980 d!2362696))

(declare-fun e!4674433 () Bool)

(declare-fun tp!2357924 () Bool)

(declare-fun b!7919390 () Bool)

(declare-fun tp!2357923 () Bool)

(assert (=> b!7919390 (= e!4674433 (and (inv!95654 (left!56854 (left!56854 t!4440))) tp!2357923 (inv!95654 (right!57184 (left!56854 t!4440))) tp!2357924))))

(declare-fun b!7919392 () Bool)

(declare-fun e!4674432 () Bool)

(declare-fun tp!2357925 () Bool)

(assert (=> b!7919392 (= e!4674432 tp!2357925)))

(declare-fun b!7919391 () Bool)

(assert (=> b!7919391 (= e!4674433 (and (inv!95653 (xs!19275 (left!56854 t!4440))) e!4674432))))

(assert (=> b!7919278 (= tp!2357905 (and (inv!95654 (left!56854 t!4440)) e!4674433))))

(assert (= (and b!7919278 (is-Node!15889 (left!56854 t!4440))) b!7919390))

(assert (= b!7919391 b!7919392))

(assert (= (and b!7919278 (is-Leaf!30215 (left!56854 t!4440))) b!7919391))

(declare-fun m!8295368 () Bool)

(assert (=> b!7919390 m!8295368))

(declare-fun m!8295370 () Bool)

(assert (=> b!7919390 m!8295370))

(declare-fun m!8295372 () Bool)

(assert (=> b!7919391 m!8295372))

(assert (=> b!7919278 m!8295282))

(declare-fun b!7919393 () Bool)

(declare-fun tp!2357926 () Bool)

(declare-fun tp!2357927 () Bool)

(declare-fun e!4674435 () Bool)

(assert (=> b!7919393 (= e!4674435 (and (inv!95654 (left!56854 (right!57184 t!4440))) tp!2357926 (inv!95654 (right!57184 (right!57184 t!4440))) tp!2357927))))

(declare-fun b!7919395 () Bool)

(declare-fun e!4674434 () Bool)

(declare-fun tp!2357928 () Bool)

(assert (=> b!7919395 (= e!4674434 tp!2357928)))

(declare-fun b!7919394 () Bool)

(assert (=> b!7919394 (= e!4674435 (and (inv!95653 (xs!19275 (right!57184 t!4440))) e!4674434))))

(assert (=> b!7919278 (= tp!2357907 (and (inv!95654 (right!57184 t!4440)) e!4674435))))

(assert (= (and b!7919278 (is-Node!15889 (right!57184 t!4440))) b!7919393))

(assert (= b!7919394 b!7919395))

(assert (= (and b!7919278 (is-Leaf!30215 (right!57184 t!4440))) b!7919394))

(declare-fun m!8295374 () Bool)

(assert (=> b!7919393 m!8295374))

(declare-fun m!8295376 () Bool)

(assert (=> b!7919393 m!8295376))

(declare-fun m!8295378 () Bool)

(assert (=> b!7919394 m!8295378))

(assert (=> b!7919278 m!8295284))

(declare-fun b!7919400 () Bool)

(declare-fun e!4674438 () Bool)

(declare-fun tp!2357931 () Bool)

(assert (=> b!7919400 (= e!4674438 (and tp_is_empty!53203 tp!2357931))))

(assert (=> b!7919279 (= tp!2357906 e!4674438)))

(assert (= (and b!7919279 (is-Cons!74435 (innerList!15977 (xs!19275 t!4440)))) b!7919400))

(push 1)

(assert (not b!7919395))

(assert (not b!7919361))

(assert (not b!7919343))

(assert (not b!7919346))

(assert (not b!7919278))

(assert (not b!7919333))

(assert (not b!7919335))

(assert (not b!7919362))

(assert (not b!7919363))

(assert (not bm!734888))

(assert (not b!7919391))

(assert (not b!7919365))

(assert (not b!7919392))

(assert (not b!7919366))

(assert (not d!2362676))

(assert (not b!7919345))

(assert (not bm!734889))

(assert (not b!7919348))

(assert (not b!7919394))

(assert (not b!7919334))

(assert (not d!2362678))

(assert (not b!7919330))

(assert (not b!7919393))

(assert (not b!7919373))

(assert (not b!7919400))

(assert (not b!7919332))

(assert tp_is_empty!53203)

(assert (not b!7919371))

(assert (not b!7919306))

(assert (not b!7919364))

(assert (not b!7919390))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

