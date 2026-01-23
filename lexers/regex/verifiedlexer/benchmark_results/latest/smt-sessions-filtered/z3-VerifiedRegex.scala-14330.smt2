; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!748342 () Bool)

(assert start!748342)

(declare-fun b!7926280 () Bool)

(declare-fun e!4677912 () Bool)

(declare-fun tp!2358622 () Bool)

(declare-datatypes ((T!145790 0))(
  ( (T!145791 (val!32058 Int)) )
))
(declare-datatypes ((List!74570 0))(
  ( (Nil!74446) (Cons!74446 (h!80894 T!145790) (t!390181 List!74570)) )
))
(declare-datatypes ((IArray!31861 0))(
  ( (IArray!31862 (innerList!15988 List!74570)) )
))
(declare-datatypes ((Conc!15900 0))(
  ( (Node!15900 (left!56870 Conc!15900) (right!57200 Conc!15900) (csize!32030 Int) (cheight!16111 Int)) (Leaf!30231 (xs!19288 IArray!31861) (csize!32031 Int)) (Empty!15900) )
))
(declare-fun t!4440 () Conc!15900)

(declare-fun tp!2358620 () Bool)

(declare-fun inv!95708 (Conc!15900) Bool)

(assert (=> b!7926280 (= e!4677912 (and (inv!95708 (left!56870 t!4440)) tp!2358620 (inv!95708 (right!57200 t!4440)) tp!2358622))))

(declare-fun res!3145296 () Bool)

(declare-fun e!4677910 () Bool)

(assert (=> start!748342 (=> (not res!3145296) (not e!4677910))))

(declare-fun isBalanced!4526 (Conc!15900) Bool)

(assert (=> start!748342 (= res!3145296 (isBalanced!4526 t!4440))))

(assert (=> start!748342 e!4677910))

(assert (=> start!748342 (and (inv!95708 t!4440) e!4677912)))

(declare-fun b!7926281 () Bool)

(declare-fun ConcPrimitiveSize!46 (Conc!15900) Int)

(assert (=> b!7926281 (= e!4677910 (>= (ConcPrimitiveSize!46 (right!57200 t!4440)) (ConcPrimitiveSize!46 t!4440)))))

(declare-fun b!7926282 () Bool)

(declare-fun e!4677911 () Bool)

(declare-fun tp!2358621 () Bool)

(assert (=> b!7926282 (= e!4677911 tp!2358621)))

(declare-fun b!7926283 () Bool)

(declare-fun inv!95709 (IArray!31861) Bool)

(assert (=> b!7926283 (= e!4677912 (and (inv!95709 (xs!19288 t!4440)) e!4677911))))

(declare-fun b!7926284 () Bool)

(declare-fun res!3145295 () Bool)

(assert (=> b!7926284 (=> (not res!3145295) (not e!4677910))))

(get-info :version)

(assert (=> b!7926284 (= res!3145295 (and (not ((_ is Empty!15900) t!4440)) ((_ is Node!15900) t!4440)))))

(assert (= (and start!748342 res!3145296) b!7926284))

(assert (= (and b!7926284 res!3145295) b!7926281))

(assert (= (and start!748342 ((_ is Node!15900) t!4440)) b!7926280))

(assert (= b!7926283 b!7926282))

(assert (= (and start!748342 ((_ is Leaf!30231) t!4440)) b!7926283))

(declare-fun m!8307366 () Bool)

(assert (=> b!7926280 m!8307366))

(declare-fun m!8307368 () Bool)

(assert (=> b!7926280 m!8307368))

(declare-fun m!8307370 () Bool)

(assert (=> start!748342 m!8307370))

(declare-fun m!8307372 () Bool)

(assert (=> start!748342 m!8307372))

(declare-fun m!8307374 () Bool)

(assert (=> b!7926281 m!8307374))

(declare-fun m!8307376 () Bool)

(assert (=> b!7926281 m!8307376))

(declare-fun m!8307378 () Bool)

(assert (=> b!7926283 m!8307378))

(check-sat (not b!7926280) (not start!748342) (not b!7926281) (not b!7926282) (not b!7926283))
(check-sat)
(get-model)

(declare-fun d!2367323 () Bool)

(declare-fun c!1455291 () Bool)

(assert (=> d!2367323 (= c!1455291 ((_ is Node!15900) (left!56870 t!4440)))))

(declare-fun e!4677921 () Bool)

(assert (=> d!2367323 (= (inv!95708 (left!56870 t!4440)) e!4677921)))

(declare-fun b!7926297 () Bool)

(declare-fun inv!95710 (Conc!15900) Bool)

(assert (=> b!7926297 (= e!4677921 (inv!95710 (left!56870 t!4440)))))

(declare-fun b!7926298 () Bool)

(declare-fun e!4677922 () Bool)

(assert (=> b!7926298 (= e!4677921 e!4677922)))

(declare-fun res!3145301 () Bool)

(assert (=> b!7926298 (= res!3145301 (not ((_ is Leaf!30231) (left!56870 t!4440))))))

(assert (=> b!7926298 (=> res!3145301 e!4677922)))

(declare-fun b!7926299 () Bool)

(declare-fun inv!95712 (Conc!15900) Bool)

(assert (=> b!7926299 (= e!4677922 (inv!95712 (left!56870 t!4440)))))

(assert (= (and d!2367323 c!1455291) b!7926297))

(assert (= (and d!2367323 (not c!1455291)) b!7926298))

(assert (= (and b!7926298 (not res!3145301)) b!7926299))

(declare-fun m!8307380 () Bool)

(assert (=> b!7926297 m!8307380))

(declare-fun m!8307382 () Bool)

(assert (=> b!7926299 m!8307382))

(assert (=> b!7926280 d!2367323))

(declare-fun d!2367327 () Bool)

(declare-fun c!1455292 () Bool)

(assert (=> d!2367327 (= c!1455292 ((_ is Node!15900) (right!57200 t!4440)))))

(declare-fun e!4677923 () Bool)

(assert (=> d!2367327 (= (inv!95708 (right!57200 t!4440)) e!4677923)))

(declare-fun b!7926300 () Bool)

(assert (=> b!7926300 (= e!4677923 (inv!95710 (right!57200 t!4440)))))

(declare-fun b!7926301 () Bool)

(declare-fun e!4677924 () Bool)

(assert (=> b!7926301 (= e!4677923 e!4677924)))

(declare-fun res!3145302 () Bool)

(assert (=> b!7926301 (= res!3145302 (not ((_ is Leaf!30231) (right!57200 t!4440))))))

(assert (=> b!7926301 (=> res!3145302 e!4677924)))

(declare-fun b!7926302 () Bool)

(assert (=> b!7926302 (= e!4677924 (inv!95712 (right!57200 t!4440)))))

(assert (= (and d!2367327 c!1455292) b!7926300))

(assert (= (and d!2367327 (not c!1455292)) b!7926301))

(assert (= (and b!7926301 (not res!3145302)) b!7926302))

(declare-fun m!8307384 () Bool)

(assert (=> b!7926300 m!8307384))

(declare-fun m!8307386 () Bool)

(assert (=> b!7926302 m!8307386))

(assert (=> b!7926280 d!2367327))

(declare-fun b!7926321 () Bool)

(declare-fun e!4677937 () Int)

(assert (=> b!7926321 (= e!4677937 0)))

(declare-fun b!7926322 () Bool)

(declare-fun e!4677938 () Int)

(declare-fun call!735115 () Int)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> b!7926322 (= e!4677938 (+ 1 (ConcPrimitiveSize!46 (left!56870 (right!57200 t!4440))) (ConcPrimitiveSize!46 (right!57200 (right!57200 t!4440))) (BigIntAbs!0 (csize!32030 (right!57200 t!4440))) call!735115))))

(declare-fun bm!735110 () Bool)

(declare-fun c!1455299 () Bool)

(assert (=> bm!735110 (= call!735115 (BigIntAbs!0 (ite c!1455299 (cheight!16111 (right!57200 t!4440)) (csize!32031 (right!57200 t!4440)))))))

(declare-fun d!2367329 () Bool)

(declare-fun lt!2692901 () Int)

(assert (=> d!2367329 (>= lt!2692901 0)))

(assert (=> d!2367329 (= lt!2692901 e!4677938)))

(assert (=> d!2367329 (= c!1455299 ((_ is Node!15900) (right!57200 t!4440)))))

(assert (=> d!2367329 (= (ConcPrimitiveSize!46 (right!57200 t!4440)) lt!2692901)))

(declare-fun b!7926325 () Bool)

(declare-fun IArrayPrimitiveSize!44 (IArray!31861) Int)

(assert (=> b!7926325 (= e!4677937 (+ 1 (IArrayPrimitiveSize!44 (xs!19288 (right!57200 t!4440))) call!735115))))

(declare-fun b!7926326 () Bool)

(assert (=> b!7926326 (= e!4677938 e!4677937)))

(declare-fun c!1455300 () Bool)

(assert (=> b!7926326 (= c!1455300 ((_ is Leaf!30231) (right!57200 t!4440)))))

(assert (= (and d!2367329 c!1455299) b!7926322))

(assert (= (and d!2367329 (not c!1455299)) b!7926326))

(assert (= (and b!7926326 c!1455300) b!7926325))

(assert (= (and b!7926326 (not c!1455300)) b!7926321))

(assert (= (or b!7926322 b!7926325) bm!735110))

(declare-fun m!8307398 () Bool)

(assert (=> b!7926322 m!8307398))

(declare-fun m!8307400 () Bool)

(assert (=> b!7926322 m!8307400))

(declare-fun m!8307402 () Bool)

(assert (=> b!7926322 m!8307402))

(declare-fun m!8307404 () Bool)

(assert (=> bm!735110 m!8307404))

(declare-fun m!8307406 () Bool)

(assert (=> b!7926325 m!8307406))

(assert (=> b!7926281 d!2367329))

(declare-fun b!7926333 () Bool)

(declare-fun e!4677939 () Int)

(assert (=> b!7926333 (= e!4677939 0)))

(declare-fun b!7926334 () Bool)

(declare-fun e!4677940 () Int)

(declare-fun call!735116 () Int)

(assert (=> b!7926334 (= e!4677940 (+ 1 (ConcPrimitiveSize!46 (left!56870 t!4440)) (ConcPrimitiveSize!46 (right!57200 t!4440)) (BigIntAbs!0 (csize!32030 t!4440)) call!735116))))

(declare-fun bm!735111 () Bool)

(declare-fun c!1455301 () Bool)

(assert (=> bm!735111 (= call!735116 (BigIntAbs!0 (ite c!1455301 (cheight!16111 t!4440) (csize!32031 t!4440))))))

(declare-fun d!2367337 () Bool)

(declare-fun lt!2692902 () Int)

(assert (=> d!2367337 (>= lt!2692902 0)))

(assert (=> d!2367337 (= lt!2692902 e!4677940)))

(assert (=> d!2367337 (= c!1455301 ((_ is Node!15900) t!4440))))

(assert (=> d!2367337 (= (ConcPrimitiveSize!46 t!4440) lt!2692902)))

(declare-fun b!7926335 () Bool)

(assert (=> b!7926335 (= e!4677939 (+ 1 (IArrayPrimitiveSize!44 (xs!19288 t!4440)) call!735116))))

(declare-fun b!7926336 () Bool)

(assert (=> b!7926336 (= e!4677940 e!4677939)))

(declare-fun c!1455302 () Bool)

(assert (=> b!7926336 (= c!1455302 ((_ is Leaf!30231) t!4440))))

(assert (= (and d!2367337 c!1455301) b!7926334))

(assert (= (and d!2367337 (not c!1455301)) b!7926336))

(assert (= (and b!7926336 c!1455302) b!7926335))

(assert (= (and b!7926336 (not c!1455302)) b!7926333))

(assert (= (or b!7926334 b!7926335) bm!735111))

(declare-fun m!8307408 () Bool)

(assert (=> b!7926334 m!8307408))

(assert (=> b!7926334 m!8307374))

(declare-fun m!8307410 () Bool)

(assert (=> b!7926334 m!8307410))

(declare-fun m!8307412 () Bool)

(assert (=> bm!735111 m!8307412))

(declare-fun m!8307414 () Bool)

(assert (=> b!7926335 m!8307414))

(assert (=> b!7926281 d!2367337))

(declare-fun b!7926366 () Bool)

(declare-fun res!3145340 () Bool)

(declare-fun e!4677954 () Bool)

(assert (=> b!7926366 (=> (not res!3145340) (not e!4677954))))

(declare-fun height!2215 (Conc!15900) Int)

(assert (=> b!7926366 (= res!3145340 (<= (- (height!2215 (left!56870 t!4440)) (height!2215 (right!57200 t!4440))) 1))))

(declare-fun b!7926367 () Bool)

(declare-fun res!3145341 () Bool)

(assert (=> b!7926367 (=> (not res!3145341) (not e!4677954))))

(assert (=> b!7926367 (= res!3145341 (isBalanced!4526 (left!56870 t!4440)))))

(declare-fun b!7926368 () Bool)

(declare-fun e!4677953 () Bool)

(assert (=> b!7926368 (= e!4677953 e!4677954)))

(declare-fun res!3145336 () Bool)

(assert (=> b!7926368 (=> (not res!3145336) (not e!4677954))))

(assert (=> b!7926368 (= res!3145336 (<= (- 1) (- (height!2215 (left!56870 t!4440)) (height!2215 (right!57200 t!4440)))))))

(declare-fun d!2367339 () Bool)

(declare-fun res!3145337 () Bool)

(assert (=> d!2367339 (=> res!3145337 e!4677953)))

(assert (=> d!2367339 (= res!3145337 (not ((_ is Node!15900) t!4440)))))

(assert (=> d!2367339 (= (isBalanced!4526 t!4440) e!4677953)))

(declare-fun b!7926369 () Bool)

(declare-fun res!3145339 () Bool)

(assert (=> b!7926369 (=> (not res!3145339) (not e!4677954))))

(declare-fun isEmpty!42772 (Conc!15900) Bool)

(assert (=> b!7926369 (= res!3145339 (not (isEmpty!42772 (left!56870 t!4440))))))

(declare-fun b!7926370 () Bool)

(declare-fun res!3145338 () Bool)

(assert (=> b!7926370 (=> (not res!3145338) (not e!4677954))))

(assert (=> b!7926370 (= res!3145338 (isBalanced!4526 (right!57200 t!4440)))))

(declare-fun b!7926371 () Bool)

(assert (=> b!7926371 (= e!4677954 (not (isEmpty!42772 (right!57200 t!4440))))))

(assert (= (and d!2367339 (not res!3145337)) b!7926368))

(assert (= (and b!7926368 res!3145336) b!7926366))

(assert (= (and b!7926366 res!3145340) b!7926367))

(assert (= (and b!7926367 res!3145341) b!7926370))

(assert (= (and b!7926370 res!3145338) b!7926369))

(assert (= (and b!7926369 res!3145339) b!7926371))

(declare-fun m!8307432 () Bool)

(assert (=> b!7926369 m!8307432))

(declare-fun m!8307434 () Bool)

(assert (=> b!7926367 m!8307434))

(declare-fun m!8307436 () Bool)

(assert (=> b!7926370 m!8307436))

(declare-fun m!8307438 () Bool)

(assert (=> b!7926371 m!8307438))

(declare-fun m!8307440 () Bool)

(assert (=> b!7926368 m!8307440))

(declare-fun m!8307442 () Bool)

(assert (=> b!7926368 m!8307442))

(assert (=> b!7926366 m!8307440))

(assert (=> b!7926366 m!8307442))

(assert (=> start!748342 d!2367339))

(declare-fun d!2367345 () Bool)

(declare-fun c!1455308 () Bool)

(assert (=> d!2367345 (= c!1455308 ((_ is Node!15900) t!4440))))

(declare-fun e!4677955 () Bool)

(assert (=> d!2367345 (= (inv!95708 t!4440) e!4677955)))

(declare-fun b!7926372 () Bool)

(assert (=> b!7926372 (= e!4677955 (inv!95710 t!4440))))

(declare-fun b!7926373 () Bool)

(declare-fun e!4677956 () Bool)

(assert (=> b!7926373 (= e!4677955 e!4677956)))

(declare-fun res!3145342 () Bool)

(assert (=> b!7926373 (= res!3145342 (not ((_ is Leaf!30231) t!4440)))))

(assert (=> b!7926373 (=> res!3145342 e!4677956)))

(declare-fun b!7926374 () Bool)

(assert (=> b!7926374 (= e!4677956 (inv!95712 t!4440))))

(assert (= (and d!2367345 c!1455308) b!7926372))

(assert (= (and d!2367345 (not c!1455308)) b!7926373))

(assert (= (and b!7926373 (not res!3145342)) b!7926374))

(declare-fun m!8307444 () Bool)

(assert (=> b!7926372 m!8307444))

(declare-fun m!8307446 () Bool)

(assert (=> b!7926374 m!8307446))

(assert (=> start!748342 d!2367345))

(declare-fun d!2367347 () Bool)

(declare-fun size!43243 (List!74570) Int)

(assert (=> d!2367347 (= (inv!95709 (xs!19288 t!4440)) (<= (size!43243 (innerList!15988 (xs!19288 t!4440))) 2147483647))))

(declare-fun bs!1968818 () Bool)

(assert (= bs!1968818 d!2367347))

(declare-fun m!8307458 () Bool)

(assert (=> bs!1968818 m!8307458))

(assert (=> b!7926283 d!2367347))

(declare-fun tp!2358637 () Bool)

(declare-fun e!4677970 () Bool)

(declare-fun tp!2358635 () Bool)

(declare-fun b!7926399 () Bool)

(assert (=> b!7926399 (= e!4677970 (and (inv!95708 (left!56870 (left!56870 t!4440))) tp!2358637 (inv!95708 (right!57200 (left!56870 t!4440))) tp!2358635))))

(declare-fun b!7926401 () Bool)

(declare-fun e!4677969 () Bool)

(declare-fun tp!2358636 () Bool)

(assert (=> b!7926401 (= e!4677969 tp!2358636)))

(declare-fun b!7926400 () Bool)

(assert (=> b!7926400 (= e!4677970 (and (inv!95709 (xs!19288 (left!56870 t!4440))) e!4677969))))

(assert (=> b!7926280 (= tp!2358620 (and (inv!95708 (left!56870 t!4440)) e!4677970))))

(assert (= (and b!7926280 ((_ is Node!15900) (left!56870 t!4440))) b!7926399))

(assert (= b!7926400 b!7926401))

(assert (= (and b!7926280 ((_ is Leaf!30231) (left!56870 t!4440))) b!7926400))

(declare-fun m!8307468 () Bool)

(assert (=> b!7926399 m!8307468))

(declare-fun m!8307470 () Bool)

(assert (=> b!7926399 m!8307470))

(declare-fun m!8307472 () Bool)

(assert (=> b!7926400 m!8307472))

(assert (=> b!7926280 m!8307366))

(declare-fun b!7926405 () Bool)

(declare-fun tp!2358643 () Bool)

(declare-fun e!4677974 () Bool)

(declare-fun tp!2358641 () Bool)

(assert (=> b!7926405 (= e!4677974 (and (inv!95708 (left!56870 (right!57200 t!4440))) tp!2358643 (inv!95708 (right!57200 (right!57200 t!4440))) tp!2358641))))

(declare-fun b!7926407 () Bool)

(declare-fun e!4677973 () Bool)

(declare-fun tp!2358642 () Bool)

(assert (=> b!7926407 (= e!4677973 tp!2358642)))

(declare-fun b!7926406 () Bool)

(assert (=> b!7926406 (= e!4677974 (and (inv!95709 (xs!19288 (right!57200 t!4440))) e!4677973))))

(assert (=> b!7926280 (= tp!2358622 (and (inv!95708 (right!57200 t!4440)) e!4677974))))

(assert (= (and b!7926280 ((_ is Node!15900) (right!57200 t!4440))) b!7926405))

(assert (= b!7926406 b!7926407))

(assert (= (and b!7926280 ((_ is Leaf!30231) (right!57200 t!4440))) b!7926406))

(declare-fun m!8307480 () Bool)

(assert (=> b!7926405 m!8307480))

(declare-fun m!8307482 () Bool)

(assert (=> b!7926405 m!8307482))

(declare-fun m!8307484 () Bool)

(assert (=> b!7926406 m!8307484))

(assert (=> b!7926280 m!8307368))

(declare-fun b!7926419 () Bool)

(declare-fun e!4677981 () Bool)

(declare-fun tp_is_empty!53223 () Bool)

(declare-fun tp!2358651 () Bool)

(assert (=> b!7926419 (= e!4677981 (and tp_is_empty!53223 tp!2358651))))

(assert (=> b!7926282 (= tp!2358621 e!4677981)))

(assert (= (and b!7926282 ((_ is Cons!74446) (innerList!15988 (xs!19288 t!4440)))) b!7926419))

(check-sat (not b!7926299) (not b!7926322) (not b!7926401) (not bm!735110) (not b!7926372) (not b!7926371) (not b!7926297) (not b!7926369) (not b!7926407) (not b!7926335) (not d!2367347) (not b!7926280) (not b!7926406) (not b!7926300) (not b!7926325) tp_is_empty!53223 (not b!7926368) (not b!7926366) (not b!7926400) (not b!7926370) (not b!7926302) (not b!7926367) (not b!7926405) (not b!7926399) (not b!7926334) (not bm!735111) (not b!7926374) (not b!7926419))
(check-sat)
(get-model)

(assert (=> b!7926280 d!2367323))

(assert (=> b!7926280 d!2367327))

(declare-fun d!2367351 () Bool)

(assert (=> d!2367351 (= (BigIntAbs!0 (ite c!1455299 (cheight!16111 (right!57200 t!4440)) (csize!32031 (right!57200 t!4440)))) (ite (>= (ite c!1455299 (cheight!16111 (right!57200 t!4440)) (csize!32031 (right!57200 t!4440))) 0) (ite c!1455299 (cheight!16111 (right!57200 t!4440)) (csize!32031 (right!57200 t!4440))) (- (ite c!1455299 (cheight!16111 (right!57200 t!4440)) (csize!32031 (right!57200 t!4440))))))))

(assert (=> bm!735110 d!2367351))

(declare-fun d!2367353 () Bool)

(declare-fun res!3145349 () Bool)

(declare-fun e!4677985 () Bool)

(assert (=> d!2367353 (=> (not res!3145349) (not e!4677985))))

(declare-fun size!43244 (Conc!15900) Int)

(assert (=> d!2367353 (= res!3145349 (= (csize!32030 (left!56870 t!4440)) (+ (size!43244 (left!56870 (left!56870 t!4440))) (size!43244 (right!57200 (left!56870 t!4440))))))))

(assert (=> d!2367353 (= (inv!95710 (left!56870 t!4440)) e!4677985)))

(declare-fun b!7926427 () Bool)

(declare-fun res!3145350 () Bool)

(assert (=> b!7926427 (=> (not res!3145350) (not e!4677985))))

(assert (=> b!7926427 (= res!3145350 (and (not (= (left!56870 (left!56870 t!4440)) Empty!15900)) (not (= (right!57200 (left!56870 t!4440)) Empty!15900))))))

(declare-fun b!7926428 () Bool)

(declare-fun res!3145351 () Bool)

(assert (=> b!7926428 (=> (not res!3145351) (not e!4677985))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!7926428 (= res!3145351 (= (cheight!16111 (left!56870 t!4440)) (+ (max!0 (height!2215 (left!56870 (left!56870 t!4440))) (height!2215 (right!57200 (left!56870 t!4440)))) 1)))))

(declare-fun b!7926429 () Bool)

(assert (=> b!7926429 (= e!4677985 (<= 0 (cheight!16111 (left!56870 t!4440))))))

(assert (= (and d!2367353 res!3145349) b!7926427))

(assert (= (and b!7926427 res!3145350) b!7926428))

(assert (= (and b!7926428 res!3145351) b!7926429))

(declare-fun m!8307492 () Bool)

(assert (=> d!2367353 m!8307492))

(declare-fun m!8307494 () Bool)

(assert (=> d!2367353 m!8307494))

(declare-fun m!8307496 () Bool)

(assert (=> b!7926428 m!8307496))

(declare-fun m!8307498 () Bool)

(assert (=> b!7926428 m!8307498))

(assert (=> b!7926428 m!8307496))

(assert (=> b!7926428 m!8307498))

(declare-fun m!8307500 () Bool)

(assert (=> b!7926428 m!8307500))

(assert (=> b!7926297 d!2367353))

(declare-fun d!2367355 () Bool)

(declare-fun res!3145356 () Bool)

(declare-fun e!4677988 () Bool)

(assert (=> d!2367355 (=> (not res!3145356) (not e!4677988))))

(declare-fun list!19408 (IArray!31861) List!74570)

(assert (=> d!2367355 (= res!3145356 (<= (size!43243 (list!19408 (xs!19288 (left!56870 t!4440)))) 512))))

(assert (=> d!2367355 (= (inv!95712 (left!56870 t!4440)) e!4677988)))

(declare-fun b!7926434 () Bool)

(declare-fun res!3145357 () Bool)

(assert (=> b!7926434 (=> (not res!3145357) (not e!4677988))))

(assert (=> b!7926434 (= res!3145357 (= (csize!32031 (left!56870 t!4440)) (size!43243 (list!19408 (xs!19288 (left!56870 t!4440))))))))

(declare-fun b!7926435 () Bool)

(assert (=> b!7926435 (= e!4677988 (and (> (csize!32031 (left!56870 t!4440)) 0) (<= (csize!32031 (left!56870 t!4440)) 512)))))

(assert (= (and d!2367355 res!3145356) b!7926434))

(assert (= (and b!7926434 res!3145357) b!7926435))

(declare-fun m!8307502 () Bool)

(assert (=> d!2367355 m!8307502))

(assert (=> d!2367355 m!8307502))

(declare-fun m!8307504 () Bool)

(assert (=> d!2367355 m!8307504))

(assert (=> b!7926434 m!8307502))

(assert (=> b!7926434 m!8307502))

(assert (=> b!7926434 m!8307504))

(assert (=> b!7926299 d!2367355))

(declare-fun d!2367357 () Bool)

(declare-fun lt!2692909 () Int)

(assert (=> d!2367357 (>= lt!2692909 0)))

(declare-fun ListPrimitiveSize!477 (List!74570) Int)

(assert (=> d!2367357 (= lt!2692909 (+ 1 (ListPrimitiveSize!477 (innerList!15988 (xs!19288 (right!57200 t!4440))))))))

(assert (=> d!2367357 (= (IArrayPrimitiveSize!44 (xs!19288 (right!57200 t!4440))) lt!2692909)))

(declare-fun bs!1968819 () Bool)

(assert (= bs!1968819 d!2367357))

(declare-fun m!8307506 () Bool)

(assert (=> bs!1968819 m!8307506))

(assert (=> b!7926325 d!2367357))

(declare-fun d!2367359 () Bool)

(assert (=> d!2367359 (= (height!2215 (left!56870 t!4440)) (ite ((_ is Empty!15900) (left!56870 t!4440)) 0 (ite ((_ is Leaf!30231) (left!56870 t!4440)) 1 (cheight!16111 (left!56870 t!4440)))))))

(assert (=> b!7926366 d!2367359))

(declare-fun d!2367361 () Bool)

(assert (=> d!2367361 (= (height!2215 (right!57200 t!4440)) (ite ((_ is Empty!15900) (right!57200 t!4440)) 0 (ite ((_ is Leaf!30231) (right!57200 t!4440)) 1 (cheight!16111 (right!57200 t!4440)))))))

(assert (=> b!7926366 d!2367361))

(declare-fun b!7926436 () Bool)

(declare-fun res!3145362 () Bool)

(declare-fun e!4677990 () Bool)

(assert (=> b!7926436 (=> (not res!3145362) (not e!4677990))))

(assert (=> b!7926436 (= res!3145362 (<= (- (height!2215 (left!56870 (left!56870 t!4440))) (height!2215 (right!57200 (left!56870 t!4440)))) 1))))

(declare-fun b!7926437 () Bool)

(declare-fun res!3145363 () Bool)

(assert (=> b!7926437 (=> (not res!3145363) (not e!4677990))))

(assert (=> b!7926437 (= res!3145363 (isBalanced!4526 (left!56870 (left!56870 t!4440))))))

(declare-fun b!7926438 () Bool)

(declare-fun e!4677989 () Bool)

(assert (=> b!7926438 (= e!4677989 e!4677990)))

(declare-fun res!3145358 () Bool)

(assert (=> b!7926438 (=> (not res!3145358) (not e!4677990))))

(assert (=> b!7926438 (= res!3145358 (<= (- 1) (- (height!2215 (left!56870 (left!56870 t!4440))) (height!2215 (right!57200 (left!56870 t!4440))))))))

(declare-fun d!2367363 () Bool)

(declare-fun res!3145359 () Bool)

(assert (=> d!2367363 (=> res!3145359 e!4677989)))

(assert (=> d!2367363 (= res!3145359 (not ((_ is Node!15900) (left!56870 t!4440))))))

(assert (=> d!2367363 (= (isBalanced!4526 (left!56870 t!4440)) e!4677989)))

(declare-fun b!7926439 () Bool)

(declare-fun res!3145361 () Bool)

(assert (=> b!7926439 (=> (not res!3145361) (not e!4677990))))

(assert (=> b!7926439 (= res!3145361 (not (isEmpty!42772 (left!56870 (left!56870 t!4440)))))))

(declare-fun b!7926440 () Bool)

(declare-fun res!3145360 () Bool)

(assert (=> b!7926440 (=> (not res!3145360) (not e!4677990))))

(assert (=> b!7926440 (= res!3145360 (isBalanced!4526 (right!57200 (left!56870 t!4440))))))

(declare-fun b!7926441 () Bool)

(assert (=> b!7926441 (= e!4677990 (not (isEmpty!42772 (right!57200 (left!56870 t!4440)))))))

(assert (= (and d!2367363 (not res!3145359)) b!7926438))

(assert (= (and b!7926438 res!3145358) b!7926436))

(assert (= (and b!7926436 res!3145362) b!7926437))

(assert (= (and b!7926437 res!3145363) b!7926440))

(assert (= (and b!7926440 res!3145360) b!7926439))

(assert (= (and b!7926439 res!3145361) b!7926441))

(declare-fun m!8307508 () Bool)

(assert (=> b!7926439 m!8307508))

(declare-fun m!8307510 () Bool)

(assert (=> b!7926437 m!8307510))

(declare-fun m!8307512 () Bool)

(assert (=> b!7926440 m!8307512))

(declare-fun m!8307514 () Bool)

(assert (=> b!7926441 m!8307514))

(assert (=> b!7926438 m!8307496))

(assert (=> b!7926438 m!8307498))

(assert (=> b!7926436 m!8307496))

(assert (=> b!7926436 m!8307498))

(assert (=> b!7926367 d!2367363))

(assert (=> b!7926368 d!2367359))

(assert (=> b!7926368 d!2367361))

(declare-fun d!2367365 () Bool)

(declare-fun c!1455313 () Bool)

(assert (=> d!2367365 (= c!1455313 ((_ is Node!15900) (left!56870 (left!56870 t!4440))))))

(declare-fun e!4677991 () Bool)

(assert (=> d!2367365 (= (inv!95708 (left!56870 (left!56870 t!4440))) e!4677991)))

(declare-fun b!7926442 () Bool)

(assert (=> b!7926442 (= e!4677991 (inv!95710 (left!56870 (left!56870 t!4440))))))

(declare-fun b!7926443 () Bool)

(declare-fun e!4677992 () Bool)

(assert (=> b!7926443 (= e!4677991 e!4677992)))

(declare-fun res!3145364 () Bool)

(assert (=> b!7926443 (= res!3145364 (not ((_ is Leaf!30231) (left!56870 (left!56870 t!4440)))))))

(assert (=> b!7926443 (=> res!3145364 e!4677992)))

(declare-fun b!7926444 () Bool)

(assert (=> b!7926444 (= e!4677992 (inv!95712 (left!56870 (left!56870 t!4440))))))

(assert (= (and d!2367365 c!1455313) b!7926442))

(assert (= (and d!2367365 (not c!1455313)) b!7926443))

(assert (= (and b!7926443 (not res!3145364)) b!7926444))

(declare-fun m!8307516 () Bool)

(assert (=> b!7926442 m!8307516))

(declare-fun m!8307518 () Bool)

(assert (=> b!7926444 m!8307518))

(assert (=> b!7926399 d!2367365))

(declare-fun d!2367367 () Bool)

(declare-fun c!1455314 () Bool)

(assert (=> d!2367367 (= c!1455314 ((_ is Node!15900) (right!57200 (left!56870 t!4440))))))

(declare-fun e!4677993 () Bool)

(assert (=> d!2367367 (= (inv!95708 (right!57200 (left!56870 t!4440))) e!4677993)))

(declare-fun b!7926445 () Bool)

(assert (=> b!7926445 (= e!4677993 (inv!95710 (right!57200 (left!56870 t!4440))))))

(declare-fun b!7926446 () Bool)

(declare-fun e!4677994 () Bool)

(assert (=> b!7926446 (= e!4677993 e!4677994)))

(declare-fun res!3145365 () Bool)

(assert (=> b!7926446 (= res!3145365 (not ((_ is Leaf!30231) (right!57200 (left!56870 t!4440)))))))

(assert (=> b!7926446 (=> res!3145365 e!4677994)))

(declare-fun b!7926447 () Bool)

(assert (=> b!7926447 (= e!4677994 (inv!95712 (right!57200 (left!56870 t!4440))))))

(assert (= (and d!2367367 c!1455314) b!7926445))

(assert (= (and d!2367367 (not c!1455314)) b!7926446))

(assert (= (and b!7926446 (not res!3145365)) b!7926447))

(declare-fun m!8307520 () Bool)

(assert (=> b!7926445 m!8307520))

(declare-fun m!8307522 () Bool)

(assert (=> b!7926447 m!8307522))

(assert (=> b!7926399 d!2367367))

(declare-fun d!2367369 () Bool)

(declare-fun lt!2692912 () Bool)

(declare-fun isEmpty!42773 (List!74570) Bool)

(declare-fun list!19409 (Conc!15900) List!74570)

(assert (=> d!2367369 (= lt!2692912 (isEmpty!42773 (list!19409 (left!56870 t!4440))))))

(assert (=> d!2367369 (= lt!2692912 (= (size!43244 (left!56870 t!4440)) 0))))

(assert (=> d!2367369 (= (isEmpty!42772 (left!56870 t!4440)) lt!2692912)))

(declare-fun bs!1968820 () Bool)

(assert (= bs!1968820 d!2367369))

(declare-fun m!8307524 () Bool)

(assert (=> bs!1968820 m!8307524))

(assert (=> bs!1968820 m!8307524))

(declare-fun m!8307526 () Bool)

(assert (=> bs!1968820 m!8307526))

(declare-fun m!8307528 () Bool)

(assert (=> bs!1968820 m!8307528))

(assert (=> b!7926369 d!2367369))

(declare-fun d!2367371 () Bool)

(assert (=> d!2367371 (= (inv!95709 (xs!19288 (left!56870 t!4440))) (<= (size!43243 (innerList!15988 (xs!19288 (left!56870 t!4440)))) 2147483647))))

(declare-fun bs!1968821 () Bool)

(assert (= bs!1968821 d!2367371))

(declare-fun m!8307530 () Bool)

(assert (=> bs!1968821 m!8307530))

(assert (=> b!7926400 d!2367371))

(declare-fun d!2367373 () Bool)

(declare-fun res!3145366 () Bool)

(declare-fun e!4677995 () Bool)

(assert (=> d!2367373 (=> (not res!3145366) (not e!4677995))))

(assert (=> d!2367373 (= res!3145366 (= (csize!32030 t!4440) (+ (size!43244 (left!56870 t!4440)) (size!43244 (right!57200 t!4440)))))))

(assert (=> d!2367373 (= (inv!95710 t!4440) e!4677995)))

(declare-fun b!7926448 () Bool)

(declare-fun res!3145367 () Bool)

(assert (=> b!7926448 (=> (not res!3145367) (not e!4677995))))

(assert (=> b!7926448 (= res!3145367 (and (not (= (left!56870 t!4440) Empty!15900)) (not (= (right!57200 t!4440) Empty!15900))))))

(declare-fun b!7926449 () Bool)

(declare-fun res!3145368 () Bool)

(assert (=> b!7926449 (=> (not res!3145368) (not e!4677995))))

(assert (=> b!7926449 (= res!3145368 (= (cheight!16111 t!4440) (+ (max!0 (height!2215 (left!56870 t!4440)) (height!2215 (right!57200 t!4440))) 1)))))

(declare-fun b!7926450 () Bool)

(assert (=> b!7926450 (= e!4677995 (<= 0 (cheight!16111 t!4440)))))

(assert (= (and d!2367373 res!3145366) b!7926448))

(assert (= (and b!7926448 res!3145367) b!7926449))

(assert (= (and b!7926449 res!3145368) b!7926450))

(assert (=> d!2367373 m!8307528))

(declare-fun m!8307532 () Bool)

(assert (=> d!2367373 m!8307532))

(assert (=> b!7926449 m!8307440))

(assert (=> b!7926449 m!8307442))

(assert (=> b!7926449 m!8307440))

(assert (=> b!7926449 m!8307442))

(declare-fun m!8307534 () Bool)

(assert (=> b!7926449 m!8307534))

(assert (=> b!7926372 d!2367373))

(declare-fun d!2367375 () Bool)

(declare-fun c!1455315 () Bool)

(assert (=> d!2367375 (= c!1455315 ((_ is Node!15900) (left!56870 (right!57200 t!4440))))))

(declare-fun e!4677996 () Bool)

(assert (=> d!2367375 (= (inv!95708 (left!56870 (right!57200 t!4440))) e!4677996)))

(declare-fun b!7926451 () Bool)

(assert (=> b!7926451 (= e!4677996 (inv!95710 (left!56870 (right!57200 t!4440))))))

(declare-fun b!7926452 () Bool)

(declare-fun e!4677997 () Bool)

(assert (=> b!7926452 (= e!4677996 e!4677997)))

(declare-fun res!3145369 () Bool)

(assert (=> b!7926452 (= res!3145369 (not ((_ is Leaf!30231) (left!56870 (right!57200 t!4440)))))))

(assert (=> b!7926452 (=> res!3145369 e!4677997)))

(declare-fun b!7926453 () Bool)

(assert (=> b!7926453 (= e!4677997 (inv!95712 (left!56870 (right!57200 t!4440))))))

(assert (= (and d!2367375 c!1455315) b!7926451))

(assert (= (and d!2367375 (not c!1455315)) b!7926452))

(assert (= (and b!7926452 (not res!3145369)) b!7926453))

(declare-fun m!8307536 () Bool)

(assert (=> b!7926451 m!8307536))

(declare-fun m!8307538 () Bool)

(assert (=> b!7926453 m!8307538))

(assert (=> b!7926405 d!2367375))

(declare-fun d!2367377 () Bool)

(declare-fun c!1455316 () Bool)

(assert (=> d!2367377 (= c!1455316 ((_ is Node!15900) (right!57200 (right!57200 t!4440))))))

(declare-fun e!4677998 () Bool)

(assert (=> d!2367377 (= (inv!95708 (right!57200 (right!57200 t!4440))) e!4677998)))

(declare-fun b!7926454 () Bool)

(assert (=> b!7926454 (= e!4677998 (inv!95710 (right!57200 (right!57200 t!4440))))))

(declare-fun b!7926455 () Bool)

(declare-fun e!4677999 () Bool)

(assert (=> b!7926455 (= e!4677998 e!4677999)))

(declare-fun res!3145370 () Bool)

(assert (=> b!7926455 (= res!3145370 (not ((_ is Leaf!30231) (right!57200 (right!57200 t!4440)))))))

(assert (=> b!7926455 (=> res!3145370 e!4677999)))

(declare-fun b!7926456 () Bool)

(assert (=> b!7926456 (= e!4677999 (inv!95712 (right!57200 (right!57200 t!4440))))))

(assert (= (and d!2367377 c!1455316) b!7926454))

(assert (= (and d!2367377 (not c!1455316)) b!7926455))

(assert (= (and b!7926455 (not res!3145370)) b!7926456))

(declare-fun m!8307540 () Bool)

(assert (=> b!7926454 m!8307540))

(declare-fun m!8307542 () Bool)

(assert (=> b!7926456 m!8307542))

(assert (=> b!7926405 d!2367377))

(declare-fun d!2367379 () Bool)

(assert (=> d!2367379 (= (inv!95709 (xs!19288 (right!57200 t!4440))) (<= (size!43243 (innerList!15988 (xs!19288 (right!57200 t!4440)))) 2147483647))))

(declare-fun bs!1968822 () Bool)

(assert (= bs!1968822 d!2367379))

(declare-fun m!8307544 () Bool)

(assert (=> bs!1968822 m!8307544))

(assert (=> b!7926406 d!2367379))

(declare-fun b!7926457 () Bool)

(declare-fun res!3145375 () Bool)

(declare-fun e!4678001 () Bool)

(assert (=> b!7926457 (=> (not res!3145375) (not e!4678001))))

(assert (=> b!7926457 (= res!3145375 (<= (- (height!2215 (left!56870 (right!57200 t!4440))) (height!2215 (right!57200 (right!57200 t!4440)))) 1))))

(declare-fun b!7926458 () Bool)

(declare-fun res!3145376 () Bool)

(assert (=> b!7926458 (=> (not res!3145376) (not e!4678001))))

(assert (=> b!7926458 (= res!3145376 (isBalanced!4526 (left!56870 (right!57200 t!4440))))))

(declare-fun b!7926459 () Bool)

(declare-fun e!4678000 () Bool)

(assert (=> b!7926459 (= e!4678000 e!4678001)))

(declare-fun res!3145371 () Bool)

(assert (=> b!7926459 (=> (not res!3145371) (not e!4678001))))

(assert (=> b!7926459 (= res!3145371 (<= (- 1) (- (height!2215 (left!56870 (right!57200 t!4440))) (height!2215 (right!57200 (right!57200 t!4440))))))))

(declare-fun d!2367381 () Bool)

(declare-fun res!3145372 () Bool)

(assert (=> d!2367381 (=> res!3145372 e!4678000)))

(assert (=> d!2367381 (= res!3145372 (not ((_ is Node!15900) (right!57200 t!4440))))))

(assert (=> d!2367381 (= (isBalanced!4526 (right!57200 t!4440)) e!4678000)))

(declare-fun b!7926460 () Bool)

(declare-fun res!3145374 () Bool)

(assert (=> b!7926460 (=> (not res!3145374) (not e!4678001))))

(assert (=> b!7926460 (= res!3145374 (not (isEmpty!42772 (left!56870 (right!57200 t!4440)))))))

(declare-fun b!7926461 () Bool)

(declare-fun res!3145373 () Bool)

(assert (=> b!7926461 (=> (not res!3145373) (not e!4678001))))

(assert (=> b!7926461 (= res!3145373 (isBalanced!4526 (right!57200 (right!57200 t!4440))))))

(declare-fun b!7926462 () Bool)

(assert (=> b!7926462 (= e!4678001 (not (isEmpty!42772 (right!57200 (right!57200 t!4440)))))))

(assert (= (and d!2367381 (not res!3145372)) b!7926459))

(assert (= (and b!7926459 res!3145371) b!7926457))

(assert (= (and b!7926457 res!3145375) b!7926458))

(assert (= (and b!7926458 res!3145376) b!7926461))

(assert (= (and b!7926461 res!3145373) b!7926460))

(assert (= (and b!7926460 res!3145374) b!7926462))

(declare-fun m!8307546 () Bool)

(assert (=> b!7926460 m!8307546))

(declare-fun m!8307548 () Bool)

(assert (=> b!7926458 m!8307548))

(declare-fun m!8307550 () Bool)

(assert (=> b!7926461 m!8307550))

(declare-fun m!8307552 () Bool)

(assert (=> b!7926462 m!8307552))

(declare-fun m!8307554 () Bool)

(assert (=> b!7926459 m!8307554))

(declare-fun m!8307556 () Bool)

(assert (=> b!7926459 m!8307556))

(assert (=> b!7926457 m!8307554))

(assert (=> b!7926457 m!8307556))

(assert (=> b!7926370 d!2367381))

(declare-fun d!2367383 () Bool)

(declare-fun lt!2692913 () Bool)

(assert (=> d!2367383 (= lt!2692913 (isEmpty!42773 (list!19409 (right!57200 t!4440))))))

(assert (=> d!2367383 (= lt!2692913 (= (size!43244 (right!57200 t!4440)) 0))))

(assert (=> d!2367383 (= (isEmpty!42772 (right!57200 t!4440)) lt!2692913)))

(declare-fun bs!1968823 () Bool)

(assert (= bs!1968823 d!2367383))

(declare-fun m!8307558 () Bool)

(assert (=> bs!1968823 m!8307558))

(assert (=> bs!1968823 m!8307558))

(declare-fun m!8307560 () Bool)

(assert (=> bs!1968823 m!8307560))

(assert (=> bs!1968823 m!8307532))

(assert (=> b!7926371 d!2367383))

(declare-fun d!2367385 () Bool)

(declare-fun res!3145377 () Bool)

(declare-fun e!4678002 () Bool)

(assert (=> d!2367385 (=> (not res!3145377) (not e!4678002))))

(assert (=> d!2367385 (= res!3145377 (<= (size!43243 (list!19408 (xs!19288 t!4440))) 512))))

(assert (=> d!2367385 (= (inv!95712 t!4440) e!4678002)))

(declare-fun b!7926463 () Bool)

(declare-fun res!3145378 () Bool)

(assert (=> b!7926463 (=> (not res!3145378) (not e!4678002))))

(assert (=> b!7926463 (= res!3145378 (= (csize!32031 t!4440) (size!43243 (list!19408 (xs!19288 t!4440)))))))

(declare-fun b!7926464 () Bool)

(assert (=> b!7926464 (= e!4678002 (and (> (csize!32031 t!4440) 0) (<= (csize!32031 t!4440) 512)))))

(assert (= (and d!2367385 res!3145377) b!7926463))

(assert (= (and b!7926463 res!3145378) b!7926464))

(declare-fun m!8307562 () Bool)

(assert (=> d!2367385 m!8307562))

(assert (=> d!2367385 m!8307562))

(declare-fun m!8307564 () Bool)

(assert (=> d!2367385 m!8307564))

(assert (=> b!7926463 m!8307562))

(assert (=> b!7926463 m!8307562))

(assert (=> b!7926463 m!8307564))

(assert (=> b!7926374 d!2367385))

(declare-fun d!2367387 () Bool)

(declare-fun res!3145379 () Bool)

(declare-fun e!4678003 () Bool)

(assert (=> d!2367387 (=> (not res!3145379) (not e!4678003))))

(assert (=> d!2367387 (= res!3145379 (= (csize!32030 (right!57200 t!4440)) (+ (size!43244 (left!56870 (right!57200 t!4440))) (size!43244 (right!57200 (right!57200 t!4440))))))))

(assert (=> d!2367387 (= (inv!95710 (right!57200 t!4440)) e!4678003)))

(declare-fun b!7926465 () Bool)

(declare-fun res!3145380 () Bool)

(assert (=> b!7926465 (=> (not res!3145380) (not e!4678003))))

(assert (=> b!7926465 (= res!3145380 (and (not (= (left!56870 (right!57200 t!4440)) Empty!15900)) (not (= (right!57200 (right!57200 t!4440)) Empty!15900))))))

(declare-fun b!7926466 () Bool)

(declare-fun res!3145381 () Bool)

(assert (=> b!7926466 (=> (not res!3145381) (not e!4678003))))

(assert (=> b!7926466 (= res!3145381 (= (cheight!16111 (right!57200 t!4440)) (+ (max!0 (height!2215 (left!56870 (right!57200 t!4440))) (height!2215 (right!57200 (right!57200 t!4440)))) 1)))))

(declare-fun b!7926467 () Bool)

(assert (=> b!7926467 (= e!4678003 (<= 0 (cheight!16111 (right!57200 t!4440))))))

(assert (= (and d!2367387 res!3145379) b!7926465))

(assert (= (and b!7926465 res!3145380) b!7926466))

(assert (= (and b!7926466 res!3145381) b!7926467))

(declare-fun m!8307566 () Bool)

(assert (=> d!2367387 m!8307566))

(declare-fun m!8307568 () Bool)

(assert (=> d!2367387 m!8307568))

(assert (=> b!7926466 m!8307554))

(assert (=> b!7926466 m!8307556))

(assert (=> b!7926466 m!8307554))

(assert (=> b!7926466 m!8307556))

(declare-fun m!8307570 () Bool)

(assert (=> b!7926466 m!8307570))

(assert (=> b!7926300 d!2367387))

(declare-fun b!7926468 () Bool)

(declare-fun e!4678004 () Int)

(assert (=> b!7926468 (= e!4678004 0)))

(declare-fun b!7926469 () Bool)

(declare-fun e!4678005 () Int)

(declare-fun call!735121 () Int)

(assert (=> b!7926469 (= e!4678005 (+ 1 (ConcPrimitiveSize!46 (left!56870 (left!56870 t!4440))) (ConcPrimitiveSize!46 (right!57200 (left!56870 t!4440))) (BigIntAbs!0 (csize!32030 (left!56870 t!4440))) call!735121))))

(declare-fun bm!735116 () Bool)

(declare-fun c!1455317 () Bool)

(assert (=> bm!735116 (= call!735121 (BigIntAbs!0 (ite c!1455317 (cheight!16111 (left!56870 t!4440)) (csize!32031 (left!56870 t!4440)))))))

(declare-fun d!2367389 () Bool)

(declare-fun lt!2692914 () Int)

(assert (=> d!2367389 (>= lt!2692914 0)))

(assert (=> d!2367389 (= lt!2692914 e!4678005)))

(assert (=> d!2367389 (= c!1455317 ((_ is Node!15900) (left!56870 t!4440)))))

(assert (=> d!2367389 (= (ConcPrimitiveSize!46 (left!56870 t!4440)) lt!2692914)))

(declare-fun b!7926470 () Bool)

(assert (=> b!7926470 (= e!4678004 (+ 1 (IArrayPrimitiveSize!44 (xs!19288 (left!56870 t!4440))) call!735121))))

(declare-fun b!7926471 () Bool)

(assert (=> b!7926471 (= e!4678005 e!4678004)))

(declare-fun c!1455318 () Bool)

(assert (=> b!7926471 (= c!1455318 ((_ is Leaf!30231) (left!56870 t!4440)))))

(assert (= (and d!2367389 c!1455317) b!7926469))

(assert (= (and d!2367389 (not c!1455317)) b!7926471))

(assert (= (and b!7926471 c!1455318) b!7926470))

(assert (= (and b!7926471 (not c!1455318)) b!7926468))

(assert (= (or b!7926469 b!7926470) bm!735116))

(declare-fun m!8307572 () Bool)

(assert (=> b!7926469 m!8307572))

(declare-fun m!8307574 () Bool)

(assert (=> b!7926469 m!8307574))

(declare-fun m!8307576 () Bool)

(assert (=> b!7926469 m!8307576))

(declare-fun m!8307578 () Bool)

(assert (=> bm!735116 m!8307578))

(declare-fun m!8307580 () Bool)

(assert (=> b!7926470 m!8307580))

(assert (=> b!7926334 d!2367389))

(assert (=> b!7926334 d!2367329))

(declare-fun d!2367391 () Bool)

(assert (=> d!2367391 (= (BigIntAbs!0 (csize!32030 t!4440)) (ite (>= (csize!32030 t!4440) 0) (csize!32030 t!4440) (- (csize!32030 t!4440))))))

(assert (=> b!7926334 d!2367391))

(declare-fun d!2367393 () Bool)

(declare-fun res!3145382 () Bool)

(declare-fun e!4678006 () Bool)

(assert (=> d!2367393 (=> (not res!3145382) (not e!4678006))))

(assert (=> d!2367393 (= res!3145382 (<= (size!43243 (list!19408 (xs!19288 (right!57200 t!4440)))) 512))))

(assert (=> d!2367393 (= (inv!95712 (right!57200 t!4440)) e!4678006)))

(declare-fun b!7926472 () Bool)

(declare-fun res!3145383 () Bool)

(assert (=> b!7926472 (=> (not res!3145383) (not e!4678006))))

(assert (=> b!7926472 (= res!3145383 (= (csize!32031 (right!57200 t!4440)) (size!43243 (list!19408 (xs!19288 (right!57200 t!4440))))))))

(declare-fun b!7926473 () Bool)

(assert (=> b!7926473 (= e!4678006 (and (> (csize!32031 (right!57200 t!4440)) 0) (<= (csize!32031 (right!57200 t!4440)) 512)))))

(assert (= (and d!2367393 res!3145382) b!7926472))

(assert (= (and b!7926472 res!3145383) b!7926473))

(declare-fun m!8307582 () Bool)

(assert (=> d!2367393 m!8307582))

(assert (=> d!2367393 m!8307582))

(declare-fun m!8307584 () Bool)

(assert (=> d!2367393 m!8307584))

(assert (=> b!7926472 m!8307582))

(assert (=> b!7926472 m!8307582))

(assert (=> b!7926472 m!8307584))

(assert (=> b!7926302 d!2367393))

(declare-fun d!2367395 () Bool)

(assert (=> d!2367395 (= (BigIntAbs!0 (ite c!1455301 (cheight!16111 t!4440) (csize!32031 t!4440))) (ite (>= (ite c!1455301 (cheight!16111 t!4440) (csize!32031 t!4440)) 0) (ite c!1455301 (cheight!16111 t!4440) (csize!32031 t!4440)) (- (ite c!1455301 (cheight!16111 t!4440) (csize!32031 t!4440)))))))

(assert (=> bm!735111 d!2367395))

(declare-fun d!2367397 () Bool)

(declare-fun lt!2692915 () Int)

(assert (=> d!2367397 (>= lt!2692915 0)))

(assert (=> d!2367397 (= lt!2692915 (+ 1 (ListPrimitiveSize!477 (innerList!15988 (xs!19288 t!4440)))))))

(assert (=> d!2367397 (= (IArrayPrimitiveSize!44 (xs!19288 t!4440)) lt!2692915)))

(declare-fun bs!1968824 () Bool)

(assert (= bs!1968824 d!2367397))

(declare-fun m!8307586 () Bool)

(assert (=> bs!1968824 m!8307586))

(assert (=> b!7926335 d!2367397))

(declare-fun d!2367399 () Bool)

(declare-fun lt!2692918 () Int)

(assert (=> d!2367399 (>= lt!2692918 0)))

(declare-fun e!4678009 () Int)

(assert (=> d!2367399 (= lt!2692918 e!4678009)))

(declare-fun c!1455321 () Bool)

(assert (=> d!2367399 (= c!1455321 ((_ is Nil!74446) (innerList!15988 (xs!19288 t!4440))))))

(assert (=> d!2367399 (= (size!43243 (innerList!15988 (xs!19288 t!4440))) lt!2692918)))

(declare-fun b!7926478 () Bool)

(assert (=> b!7926478 (= e!4678009 0)))

(declare-fun b!7926479 () Bool)

(assert (=> b!7926479 (= e!4678009 (+ 1 (size!43243 (t!390181 (innerList!15988 (xs!19288 t!4440))))))))

(assert (= (and d!2367399 c!1455321) b!7926478))

(assert (= (and d!2367399 (not c!1455321)) b!7926479))

(declare-fun m!8307588 () Bool)

(assert (=> b!7926479 m!8307588))

(assert (=> d!2367347 d!2367399))

(declare-fun b!7926480 () Bool)

(declare-fun e!4678010 () Int)

(assert (=> b!7926480 (= e!4678010 0)))

(declare-fun b!7926481 () Bool)

(declare-fun e!4678011 () Int)

(declare-fun call!735122 () Int)

(assert (=> b!7926481 (= e!4678011 (+ 1 (ConcPrimitiveSize!46 (left!56870 (left!56870 (right!57200 t!4440)))) (ConcPrimitiveSize!46 (right!57200 (left!56870 (right!57200 t!4440)))) (BigIntAbs!0 (csize!32030 (left!56870 (right!57200 t!4440)))) call!735122))))

(declare-fun bm!735117 () Bool)

(declare-fun c!1455322 () Bool)

(assert (=> bm!735117 (= call!735122 (BigIntAbs!0 (ite c!1455322 (cheight!16111 (left!56870 (right!57200 t!4440))) (csize!32031 (left!56870 (right!57200 t!4440))))))))

(declare-fun d!2367401 () Bool)

(declare-fun lt!2692919 () Int)

(assert (=> d!2367401 (>= lt!2692919 0)))

(assert (=> d!2367401 (= lt!2692919 e!4678011)))

(assert (=> d!2367401 (= c!1455322 ((_ is Node!15900) (left!56870 (right!57200 t!4440))))))

(assert (=> d!2367401 (= (ConcPrimitiveSize!46 (left!56870 (right!57200 t!4440))) lt!2692919)))

(declare-fun b!7926482 () Bool)

(assert (=> b!7926482 (= e!4678010 (+ 1 (IArrayPrimitiveSize!44 (xs!19288 (left!56870 (right!57200 t!4440)))) call!735122))))

(declare-fun b!7926483 () Bool)

(assert (=> b!7926483 (= e!4678011 e!4678010)))

(declare-fun c!1455323 () Bool)

(assert (=> b!7926483 (= c!1455323 ((_ is Leaf!30231) (left!56870 (right!57200 t!4440))))))

(assert (= (and d!2367401 c!1455322) b!7926481))

(assert (= (and d!2367401 (not c!1455322)) b!7926483))

(assert (= (and b!7926483 c!1455323) b!7926482))

(assert (= (and b!7926483 (not c!1455323)) b!7926480))

(assert (= (or b!7926481 b!7926482) bm!735117))

(declare-fun m!8307590 () Bool)

(assert (=> b!7926481 m!8307590))

(declare-fun m!8307592 () Bool)

(assert (=> b!7926481 m!8307592))

(declare-fun m!8307594 () Bool)

(assert (=> b!7926481 m!8307594))

(declare-fun m!8307596 () Bool)

(assert (=> bm!735117 m!8307596))

(declare-fun m!8307598 () Bool)

(assert (=> b!7926482 m!8307598))

(assert (=> b!7926322 d!2367401))

(declare-fun b!7926484 () Bool)

(declare-fun e!4678012 () Int)

(assert (=> b!7926484 (= e!4678012 0)))

(declare-fun b!7926485 () Bool)

(declare-fun e!4678013 () Int)

(declare-fun call!735123 () Int)

(assert (=> b!7926485 (= e!4678013 (+ 1 (ConcPrimitiveSize!46 (left!56870 (right!57200 (right!57200 t!4440)))) (ConcPrimitiveSize!46 (right!57200 (right!57200 (right!57200 t!4440)))) (BigIntAbs!0 (csize!32030 (right!57200 (right!57200 t!4440)))) call!735123))))

(declare-fun bm!735118 () Bool)

(declare-fun c!1455324 () Bool)

(assert (=> bm!735118 (= call!735123 (BigIntAbs!0 (ite c!1455324 (cheight!16111 (right!57200 (right!57200 t!4440))) (csize!32031 (right!57200 (right!57200 t!4440))))))))

(declare-fun d!2367403 () Bool)

(declare-fun lt!2692920 () Int)

(assert (=> d!2367403 (>= lt!2692920 0)))

(assert (=> d!2367403 (= lt!2692920 e!4678013)))

(assert (=> d!2367403 (= c!1455324 ((_ is Node!15900) (right!57200 (right!57200 t!4440))))))

(assert (=> d!2367403 (= (ConcPrimitiveSize!46 (right!57200 (right!57200 t!4440))) lt!2692920)))

(declare-fun b!7926486 () Bool)

(assert (=> b!7926486 (= e!4678012 (+ 1 (IArrayPrimitiveSize!44 (xs!19288 (right!57200 (right!57200 t!4440)))) call!735123))))

(declare-fun b!7926487 () Bool)

(assert (=> b!7926487 (= e!4678013 e!4678012)))

(declare-fun c!1455325 () Bool)

(assert (=> b!7926487 (= c!1455325 ((_ is Leaf!30231) (right!57200 (right!57200 t!4440))))))

(assert (= (and d!2367403 c!1455324) b!7926485))

(assert (= (and d!2367403 (not c!1455324)) b!7926487))

(assert (= (and b!7926487 c!1455325) b!7926486))

(assert (= (and b!7926487 (not c!1455325)) b!7926484))

(assert (= (or b!7926485 b!7926486) bm!735118))

(declare-fun m!8307600 () Bool)

(assert (=> b!7926485 m!8307600))

(declare-fun m!8307602 () Bool)

(assert (=> b!7926485 m!8307602))

(declare-fun m!8307604 () Bool)

(assert (=> b!7926485 m!8307604))

(declare-fun m!8307606 () Bool)

(assert (=> bm!735118 m!8307606))

(declare-fun m!8307608 () Bool)

(assert (=> b!7926486 m!8307608))

(assert (=> b!7926322 d!2367403))

(declare-fun d!2367407 () Bool)

(assert (=> d!2367407 (= (BigIntAbs!0 (csize!32030 (right!57200 t!4440))) (ite (>= (csize!32030 (right!57200 t!4440)) 0) (csize!32030 (right!57200 t!4440)) (- (csize!32030 (right!57200 t!4440)))))))

(assert (=> b!7926322 d!2367407))

(declare-fun b!7926488 () Bool)

(declare-fun e!4678014 () Bool)

(declare-fun tp!2358653 () Bool)

(assert (=> b!7926488 (= e!4678014 (and tp_is_empty!53223 tp!2358653))))

(assert (=> b!7926407 (= tp!2358642 e!4678014)))

(assert (= (and b!7926407 ((_ is Cons!74446) (innerList!15988 (xs!19288 (right!57200 t!4440))))) b!7926488))

(declare-fun tp!2358656 () Bool)

(declare-fun e!4678016 () Bool)

(declare-fun b!7926489 () Bool)

(declare-fun tp!2358654 () Bool)

(assert (=> b!7926489 (= e!4678016 (and (inv!95708 (left!56870 (left!56870 (left!56870 t!4440)))) tp!2358656 (inv!95708 (right!57200 (left!56870 (left!56870 t!4440)))) tp!2358654))))

(declare-fun b!7926491 () Bool)

(declare-fun e!4678015 () Bool)

(declare-fun tp!2358655 () Bool)

(assert (=> b!7926491 (= e!4678015 tp!2358655)))

(declare-fun b!7926490 () Bool)

(assert (=> b!7926490 (= e!4678016 (and (inv!95709 (xs!19288 (left!56870 (left!56870 t!4440)))) e!4678015))))

(assert (=> b!7926399 (= tp!2358637 (and (inv!95708 (left!56870 (left!56870 t!4440))) e!4678016))))

(assert (= (and b!7926399 ((_ is Node!15900) (left!56870 (left!56870 t!4440)))) b!7926489))

(assert (= b!7926490 b!7926491))

(assert (= (and b!7926399 ((_ is Leaf!30231) (left!56870 (left!56870 t!4440)))) b!7926490))

(declare-fun m!8307610 () Bool)

(assert (=> b!7926489 m!8307610))

(declare-fun m!8307612 () Bool)

(assert (=> b!7926489 m!8307612))

(declare-fun m!8307614 () Bool)

(assert (=> b!7926490 m!8307614))

(assert (=> b!7926399 m!8307468))

(declare-fun tp!2358659 () Bool)

(declare-fun tp!2358657 () Bool)

(declare-fun e!4678018 () Bool)

(declare-fun b!7926492 () Bool)

(assert (=> b!7926492 (= e!4678018 (and (inv!95708 (left!56870 (right!57200 (left!56870 t!4440)))) tp!2358659 (inv!95708 (right!57200 (right!57200 (left!56870 t!4440)))) tp!2358657))))

(declare-fun b!7926494 () Bool)

(declare-fun e!4678017 () Bool)

(declare-fun tp!2358658 () Bool)

(assert (=> b!7926494 (= e!4678017 tp!2358658)))

(declare-fun b!7926493 () Bool)

(assert (=> b!7926493 (= e!4678018 (and (inv!95709 (xs!19288 (right!57200 (left!56870 t!4440)))) e!4678017))))

(assert (=> b!7926399 (= tp!2358635 (and (inv!95708 (right!57200 (left!56870 t!4440))) e!4678018))))

(assert (= (and b!7926399 ((_ is Node!15900) (right!57200 (left!56870 t!4440)))) b!7926492))

(assert (= b!7926493 b!7926494))

(assert (= (and b!7926399 ((_ is Leaf!30231) (right!57200 (left!56870 t!4440)))) b!7926493))

(declare-fun m!8307616 () Bool)

(assert (=> b!7926492 m!8307616))

(declare-fun m!8307618 () Bool)

(assert (=> b!7926492 m!8307618))

(declare-fun m!8307620 () Bool)

(assert (=> b!7926493 m!8307620))

(assert (=> b!7926399 m!8307470))

(declare-fun b!7926495 () Bool)

(declare-fun e!4678019 () Bool)

(declare-fun tp!2358660 () Bool)

(assert (=> b!7926495 (= e!4678019 (and tp_is_empty!53223 tp!2358660))))

(assert (=> b!7926419 (= tp!2358651 e!4678019)))

(assert (= (and b!7926419 ((_ is Cons!74446) (t!390181 (innerList!15988 (xs!19288 t!4440))))) b!7926495))

(declare-fun tp!2358663 () Bool)

(declare-fun tp!2358661 () Bool)

(declare-fun b!7926496 () Bool)

(declare-fun e!4678021 () Bool)

(assert (=> b!7926496 (= e!4678021 (and (inv!95708 (left!56870 (left!56870 (right!57200 t!4440)))) tp!2358663 (inv!95708 (right!57200 (left!56870 (right!57200 t!4440)))) tp!2358661))))

(declare-fun b!7926498 () Bool)

(declare-fun e!4678020 () Bool)

(declare-fun tp!2358662 () Bool)

(assert (=> b!7926498 (= e!4678020 tp!2358662)))

(declare-fun b!7926497 () Bool)

(assert (=> b!7926497 (= e!4678021 (and (inv!95709 (xs!19288 (left!56870 (right!57200 t!4440)))) e!4678020))))

(assert (=> b!7926405 (= tp!2358643 (and (inv!95708 (left!56870 (right!57200 t!4440))) e!4678021))))

(assert (= (and b!7926405 ((_ is Node!15900) (left!56870 (right!57200 t!4440)))) b!7926496))

(assert (= b!7926497 b!7926498))

(assert (= (and b!7926405 ((_ is Leaf!30231) (left!56870 (right!57200 t!4440)))) b!7926497))

(declare-fun m!8307622 () Bool)

(assert (=> b!7926496 m!8307622))

(declare-fun m!8307624 () Bool)

(assert (=> b!7926496 m!8307624))

(declare-fun m!8307626 () Bool)

(assert (=> b!7926497 m!8307626))

(assert (=> b!7926405 m!8307480))

(declare-fun e!4678023 () Bool)

(declare-fun tp!2358666 () Bool)

(declare-fun tp!2358664 () Bool)

(declare-fun b!7926499 () Bool)

(assert (=> b!7926499 (= e!4678023 (and (inv!95708 (left!56870 (right!57200 (right!57200 t!4440)))) tp!2358666 (inv!95708 (right!57200 (right!57200 (right!57200 t!4440)))) tp!2358664))))

(declare-fun b!7926501 () Bool)

(declare-fun e!4678022 () Bool)

(declare-fun tp!2358665 () Bool)

(assert (=> b!7926501 (= e!4678022 tp!2358665)))

(declare-fun b!7926500 () Bool)

(assert (=> b!7926500 (= e!4678023 (and (inv!95709 (xs!19288 (right!57200 (right!57200 t!4440)))) e!4678022))))

(assert (=> b!7926405 (= tp!2358641 (and (inv!95708 (right!57200 (right!57200 t!4440))) e!4678023))))

(assert (= (and b!7926405 ((_ is Node!15900) (right!57200 (right!57200 t!4440)))) b!7926499))

(assert (= b!7926500 b!7926501))

(assert (= (and b!7926405 ((_ is Leaf!30231) (right!57200 (right!57200 t!4440)))) b!7926500))

(declare-fun m!8307628 () Bool)

(assert (=> b!7926499 m!8307628))

(declare-fun m!8307630 () Bool)

(assert (=> b!7926499 m!8307630))

(declare-fun m!8307632 () Bool)

(assert (=> b!7926500 m!8307632))

(assert (=> b!7926405 m!8307482))

(declare-fun b!7926506 () Bool)

(declare-fun e!4678026 () Bool)

(declare-fun tp!2358667 () Bool)

(assert (=> b!7926506 (= e!4678026 (and tp_is_empty!53223 tp!2358667))))

(assert (=> b!7926401 (= tp!2358636 e!4678026)))

(assert (= (and b!7926401 ((_ is Cons!74446) (innerList!15988 (xs!19288 (left!56870 t!4440))))) b!7926506))

(check-sat (not b!7926428) (not d!2367397) (not b!7926444) (not bm!735118) (not b!7926489) (not b!7926434) (not d!2367353) (not d!2367357) (not b!7926405) (not b!7926499) (not b!7926469) (not b!7926500) (not d!2367379) (not b!7926501) (not b!7926461) (not b!7926506) (not b!7926470) (not d!2367371) (not d!2367369) (not b!7926439) (not b!7926493) (not b!7926497) (not b!7926442) (not b!7926486) (not b!7926440) (not b!7926451) (not b!7926491) (not b!7926462) (not b!7926445) (not b!7926457) (not bm!735116) (not b!7926495) (not b!7926466) (not b!7926472) (not b!7926449) (not d!2367383) (not b!7926482) (not b!7926485) (not b!7926454) (not d!2367355) (not b!7926460) (not b!7926479) (not b!7926494) (not d!2367385) tp_is_empty!53223 (not d!2367387) (not b!7926441) (not b!7926437) (not b!7926490) (not b!7926463) (not b!7926399) (not d!2367393) (not b!7926436) (not b!7926438) (not b!7926481) (not b!7926456) (not d!2367373) (not b!7926447) (not b!7926492) (not b!7926459) (not b!7926496) (not b!7926488) (not bm!735117) (not b!7926458) (not b!7926498) (not b!7926453))
(check-sat)
