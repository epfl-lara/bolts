; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749100 () Bool)

(assert start!749100)

(declare-fun tp!2359795 () Bool)

(declare-datatypes ((T!145938 0))(
  ( (T!145939 (val!32079 Int)) )
))
(declare-datatypes ((List!74591 0))(
  ( (Nil!74467) (Cons!74467 (h!80915 T!145938) (t!390304 List!74591)) )
))
(declare-datatypes ((IArray!31899 0))(
  ( (IArray!31900 (innerList!16007 List!74591)) )
))
(declare-datatypes ((Conc!15919 0))(
  ( (Node!15919 (left!56900 Conc!15919) (right!57230 Conc!15919) (csize!32068 Int) (cheight!16130 Int)) (Leaf!30261 (xs!19317 IArray!31899) (csize!32069 Int)) (Empty!15919) )
))
(declare-fun xs!273 () Conc!15919)

(declare-fun tp!2359794 () Bool)

(declare-fun e!4683484 () Bool)

(declare-fun b!7937347 () Bool)

(declare-fun inv!95815 (Conc!15919) Bool)

(assert (=> b!7937347 (= e!4683484 (and (inv!95815 (left!56900 xs!273)) tp!2359795 (inv!95815 (right!57230 xs!273)) tp!2359794))))

(declare-fun b!7937348 () Bool)

(declare-fun ys!40 () Conc!15919)

(declare-fun tp!2359793 () Bool)

(declare-fun tp!2359796 () Bool)

(declare-fun e!4683486 () Bool)

(assert (=> b!7937348 (= e!4683486 (and (inv!95815 (left!56900 ys!40)) tp!2359793 (inv!95815 (right!57230 ys!40)) tp!2359796))))

(declare-fun res!3149143 () Bool)

(declare-fun e!4683485 () Bool)

(assert (=> start!749100 (=> (not res!3149143) (not e!4683485))))

(assert (=> start!749100 (= res!3149143 (= xs!273 Empty!15919))))

(assert (=> start!749100 e!4683485))

(assert (=> start!749100 (and (inv!95815 xs!273) e!4683484)))

(assert (=> start!749100 (and (inv!95815 ys!40) e!4683486)))

(declare-fun b!7937349 () Bool)

(declare-fun e!4683483 () Bool)

(declare-fun inv!95816 (IArray!31899) Bool)

(assert (=> b!7937349 (= e!4683484 (and (inv!95816 (xs!19317 xs!273)) e!4683483))))

(declare-fun b!7937350 () Bool)

(declare-fun lt!2695569 () List!74591)

(declare-fun lt!2695570 () List!74591)

(declare-fun ++!18276 (List!74591 List!74591) List!74591)

(assert (=> b!7937350 (= e!4683485 (not (= lt!2695569 (++!18276 lt!2695570 lt!2695569))))))

(declare-fun list!19444 (Conc!15919) List!74591)

(assert (=> b!7937350 (= lt!2695569 (list!19444 ys!40))))

(assert (=> b!7937350 (= lt!2695570 (list!19444 xs!273))))

(declare-fun b!7937351 () Bool)

(declare-fun tp!2359791 () Bool)

(assert (=> b!7937351 (= e!4683483 tp!2359791)))

(declare-fun b!7937352 () Bool)

(declare-fun e!4683487 () Bool)

(assert (=> b!7937352 (= e!4683486 (and (inv!95816 (xs!19317 ys!40)) e!4683487))))

(declare-fun b!7937353 () Bool)

(declare-fun tp!2359792 () Bool)

(assert (=> b!7937353 (= e!4683487 tp!2359792)))

(assert (= (and start!749100 res!3149143) b!7937350))

(assert (= (and start!749100 (is-Node!15919 xs!273)) b!7937347))

(assert (= b!7937349 b!7937351))

(assert (= (and start!749100 (is-Leaf!30261 xs!273)) b!7937349))

(assert (= (and start!749100 (is-Node!15919 ys!40)) b!7937348))

(assert (= b!7937352 b!7937353))

(assert (= (and start!749100 (is-Leaf!30261 ys!40)) b!7937352))

(declare-fun m!8326220 () Bool)

(assert (=> start!749100 m!8326220))

(declare-fun m!8326222 () Bool)

(assert (=> start!749100 m!8326222))

(declare-fun m!8326224 () Bool)

(assert (=> b!7937348 m!8326224))

(declare-fun m!8326226 () Bool)

(assert (=> b!7937348 m!8326226))

(declare-fun m!8326228 () Bool)

(assert (=> b!7937352 m!8326228))

(declare-fun m!8326230 () Bool)

(assert (=> b!7937350 m!8326230))

(declare-fun m!8326232 () Bool)

(assert (=> b!7937350 m!8326232))

(declare-fun m!8326234 () Bool)

(assert (=> b!7937350 m!8326234))

(declare-fun m!8326236 () Bool)

(assert (=> b!7937349 m!8326236))

(declare-fun m!8326238 () Bool)

(assert (=> b!7937347 m!8326238))

(declare-fun m!8326240 () Bool)

(assert (=> b!7937347 m!8326240))

(push 1)

(assert (not b!7937347))

(assert (not b!7937348))

(assert (not b!7937352))

(assert (not b!7937349))

(assert (not b!7937351))

(assert (not b!7937350))

(assert (not b!7937353))

(assert (not start!749100))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2373948 () Bool)

(declare-fun c!1458275 () Bool)

(assert (=> d!2373948 (= c!1458275 (is-Node!15919 (left!56900 ys!40)))))

(declare-fun e!4683507 () Bool)

(assert (=> d!2373948 (= (inv!95815 (left!56900 ys!40)) e!4683507)))

(declare-fun b!7937381 () Bool)

(declare-fun inv!95819 (Conc!15919) Bool)

(assert (=> b!7937381 (= e!4683507 (inv!95819 (left!56900 ys!40)))))

(declare-fun b!7937382 () Bool)

(declare-fun e!4683508 () Bool)

(assert (=> b!7937382 (= e!4683507 e!4683508)))

(declare-fun res!3149149 () Bool)

(assert (=> b!7937382 (= res!3149149 (not (is-Leaf!30261 (left!56900 ys!40))))))

(assert (=> b!7937382 (=> res!3149149 e!4683508)))

(declare-fun b!7937383 () Bool)

(declare-fun inv!95820 (Conc!15919) Bool)

(assert (=> b!7937383 (= e!4683508 (inv!95820 (left!56900 ys!40)))))

(assert (= (and d!2373948 c!1458275) b!7937381))

(assert (= (and d!2373948 (not c!1458275)) b!7937382))

(assert (= (and b!7937382 (not res!3149149)) b!7937383))

(declare-fun m!8326264 () Bool)

(assert (=> b!7937381 m!8326264))

(declare-fun m!8326266 () Bool)

(assert (=> b!7937383 m!8326266))

(assert (=> b!7937348 d!2373948))

(declare-fun d!2373952 () Bool)

(declare-fun c!1458276 () Bool)

(assert (=> d!2373952 (= c!1458276 (is-Node!15919 (right!57230 ys!40)))))

(declare-fun e!4683509 () Bool)

(assert (=> d!2373952 (= (inv!95815 (right!57230 ys!40)) e!4683509)))

(declare-fun b!7937384 () Bool)

(assert (=> b!7937384 (= e!4683509 (inv!95819 (right!57230 ys!40)))))

(declare-fun b!7937385 () Bool)

(declare-fun e!4683510 () Bool)

(assert (=> b!7937385 (= e!4683509 e!4683510)))

(declare-fun res!3149150 () Bool)

(assert (=> b!7937385 (= res!3149150 (not (is-Leaf!30261 (right!57230 ys!40))))))

(assert (=> b!7937385 (=> res!3149150 e!4683510)))

(declare-fun b!7937386 () Bool)

(assert (=> b!7937386 (= e!4683510 (inv!95820 (right!57230 ys!40)))))

(assert (= (and d!2373952 c!1458276) b!7937384))

(assert (= (and d!2373952 (not c!1458276)) b!7937385))

(assert (= (and b!7937385 (not res!3149150)) b!7937386))

(declare-fun m!8326268 () Bool)

(assert (=> b!7937384 m!8326268))

(declare-fun m!8326270 () Bool)

(assert (=> b!7937386 m!8326270))

(assert (=> b!7937348 d!2373952))

(declare-fun d!2373954 () Bool)

(declare-fun c!1458277 () Bool)

(assert (=> d!2373954 (= c!1458277 (is-Node!15919 xs!273))))

(declare-fun e!4683511 () Bool)

(assert (=> d!2373954 (= (inv!95815 xs!273) e!4683511)))

(declare-fun b!7937387 () Bool)

(assert (=> b!7937387 (= e!4683511 (inv!95819 xs!273))))

(declare-fun b!7937388 () Bool)

(declare-fun e!4683512 () Bool)

(assert (=> b!7937388 (= e!4683511 e!4683512)))

(declare-fun res!3149151 () Bool)

(assert (=> b!7937388 (= res!3149151 (not (is-Leaf!30261 xs!273)))))

(assert (=> b!7937388 (=> res!3149151 e!4683512)))

(declare-fun b!7937389 () Bool)

(assert (=> b!7937389 (= e!4683512 (inv!95820 xs!273))))

(assert (= (and d!2373954 c!1458277) b!7937387))

(assert (= (and d!2373954 (not c!1458277)) b!7937388))

(assert (= (and b!7937388 (not res!3149151)) b!7937389))

(declare-fun m!8326272 () Bool)

(assert (=> b!7937387 m!8326272))

(declare-fun m!8326274 () Bool)

(assert (=> b!7937389 m!8326274))

(assert (=> start!749100 d!2373954))

(declare-fun d!2373956 () Bool)

(declare-fun c!1458278 () Bool)

(assert (=> d!2373956 (= c!1458278 (is-Node!15919 ys!40))))

(declare-fun e!4683513 () Bool)

(assert (=> d!2373956 (= (inv!95815 ys!40) e!4683513)))

(declare-fun b!7937390 () Bool)

(assert (=> b!7937390 (= e!4683513 (inv!95819 ys!40))))

(declare-fun b!7937391 () Bool)

(declare-fun e!4683514 () Bool)

(assert (=> b!7937391 (= e!4683513 e!4683514)))

(declare-fun res!3149152 () Bool)

(assert (=> b!7937391 (= res!3149152 (not (is-Leaf!30261 ys!40)))))

(assert (=> b!7937391 (=> res!3149152 e!4683514)))

(declare-fun b!7937392 () Bool)

(assert (=> b!7937392 (= e!4683514 (inv!95820 ys!40))))

(assert (= (and d!2373956 c!1458278) b!7937390))

(assert (= (and d!2373956 (not c!1458278)) b!7937391))

(assert (= (and b!7937391 (not res!3149152)) b!7937392))

(declare-fun m!8326276 () Bool)

(assert (=> b!7937390 m!8326276))

(declare-fun m!8326278 () Bool)

(assert (=> b!7937392 m!8326278))

(assert (=> start!749100 d!2373956))

(declare-fun d!2373958 () Bool)

(declare-fun size!43291 (List!74591) Int)

(assert (=> d!2373958 (= (inv!95816 (xs!19317 ys!40)) (<= (size!43291 (innerList!16007 (xs!19317 ys!40))) 2147483647))))

(declare-fun bs!1969267 () Bool)

(assert (= bs!1969267 d!2373958))

(declare-fun m!8326280 () Bool)

(assert (=> bs!1969267 m!8326280))

(assert (=> b!7937352 d!2373958))

(declare-fun d!2373960 () Bool)

(declare-fun c!1458279 () Bool)

(assert (=> d!2373960 (= c!1458279 (is-Node!15919 (left!56900 xs!273)))))

(declare-fun e!4683515 () Bool)

(assert (=> d!2373960 (= (inv!95815 (left!56900 xs!273)) e!4683515)))

(declare-fun b!7937393 () Bool)

(assert (=> b!7937393 (= e!4683515 (inv!95819 (left!56900 xs!273)))))

(declare-fun b!7937394 () Bool)

(declare-fun e!4683516 () Bool)

(assert (=> b!7937394 (= e!4683515 e!4683516)))

(declare-fun res!3149153 () Bool)

(assert (=> b!7937394 (= res!3149153 (not (is-Leaf!30261 (left!56900 xs!273))))))

(assert (=> b!7937394 (=> res!3149153 e!4683516)))

(declare-fun b!7937395 () Bool)

(assert (=> b!7937395 (= e!4683516 (inv!95820 (left!56900 xs!273)))))

(assert (= (and d!2373960 c!1458279) b!7937393))

(assert (= (and d!2373960 (not c!1458279)) b!7937394))

(assert (= (and b!7937394 (not res!3149153)) b!7937395))

(declare-fun m!8326282 () Bool)

(assert (=> b!7937393 m!8326282))

(declare-fun m!8326284 () Bool)

(assert (=> b!7937395 m!8326284))

(assert (=> b!7937347 d!2373960))

(declare-fun d!2373962 () Bool)

(declare-fun c!1458280 () Bool)

(assert (=> d!2373962 (= c!1458280 (is-Node!15919 (right!57230 xs!273)))))

(declare-fun e!4683517 () Bool)

(assert (=> d!2373962 (= (inv!95815 (right!57230 xs!273)) e!4683517)))

(declare-fun b!7937396 () Bool)

(assert (=> b!7937396 (= e!4683517 (inv!95819 (right!57230 xs!273)))))

(declare-fun b!7937397 () Bool)

(declare-fun e!4683518 () Bool)

(assert (=> b!7937397 (= e!4683517 e!4683518)))

(declare-fun res!3149154 () Bool)

(assert (=> b!7937397 (= res!3149154 (not (is-Leaf!30261 (right!57230 xs!273))))))

(assert (=> b!7937397 (=> res!3149154 e!4683518)))

(declare-fun b!7937398 () Bool)

(assert (=> b!7937398 (= e!4683518 (inv!95820 (right!57230 xs!273)))))

(assert (= (and d!2373962 c!1458280) b!7937396))

(assert (= (and d!2373962 (not c!1458280)) b!7937397))

(assert (= (and b!7937397 (not res!3149154)) b!7937398))

(declare-fun m!8326286 () Bool)

(assert (=> b!7937396 m!8326286))

(declare-fun m!8326288 () Bool)

(assert (=> b!7937398 m!8326288))

(assert (=> b!7937347 d!2373962))

(declare-fun d!2373964 () Bool)

(assert (=> d!2373964 (= (inv!95816 (xs!19317 xs!273)) (<= (size!43291 (innerList!16007 (xs!19317 xs!273))) 2147483647))))

(declare-fun bs!1969268 () Bool)

(assert (= bs!1969268 d!2373964))

(declare-fun m!8326290 () Bool)

(assert (=> bs!1969268 m!8326290))

(assert (=> b!7937349 d!2373964))

(declare-fun b!7937415 () Bool)

(declare-fun e!4683527 () List!74591)

(assert (=> b!7937415 (= e!4683527 lt!2695569)))

(declare-fun d!2373966 () Bool)

(declare-fun e!4683528 () Bool)

(assert (=> d!2373966 e!4683528))

(declare-fun res!3149164 () Bool)

(assert (=> d!2373966 (=> (not res!3149164) (not e!4683528))))

(declare-fun lt!2695581 () List!74591)

(declare-fun content!15800 (List!74591) (Set T!145938))

(assert (=> d!2373966 (= res!3149164 (= (content!15800 lt!2695581) (set.union (content!15800 lt!2695570) (content!15800 lt!2695569))))))

(assert (=> d!2373966 (= lt!2695581 e!4683527)))

(declare-fun c!1458285 () Bool)

(assert (=> d!2373966 (= c!1458285 (is-Nil!74467 lt!2695570))))

(assert (=> d!2373966 (= (++!18276 lt!2695570 lt!2695569) lt!2695581)))

(declare-fun b!7937416 () Bool)

(assert (=> b!7937416 (= e!4683527 (Cons!74467 (h!80915 lt!2695570) (++!18276 (t!390304 lt!2695570) lt!2695569)))))

(declare-fun b!7937417 () Bool)

(declare-fun res!3149163 () Bool)

(assert (=> b!7937417 (=> (not res!3149163) (not e!4683528))))

(assert (=> b!7937417 (= res!3149163 (= (size!43291 lt!2695581) (+ (size!43291 lt!2695570) (size!43291 lt!2695569))))))

(declare-fun b!7937418 () Bool)

(assert (=> b!7937418 (= e!4683528 (or (not (= lt!2695569 Nil!74467)) (= lt!2695581 lt!2695570)))))

(assert (= (and d!2373966 c!1458285) b!7937415))

(assert (= (and d!2373966 (not c!1458285)) b!7937416))

(assert (= (and d!2373966 res!3149164) b!7937417))

(assert (= (and b!7937417 res!3149163) b!7937418))

(declare-fun m!8326292 () Bool)

(assert (=> d!2373966 m!8326292))

(declare-fun m!8326294 () Bool)

(assert (=> d!2373966 m!8326294))

(declare-fun m!8326296 () Bool)

(assert (=> d!2373966 m!8326296))

(declare-fun m!8326298 () Bool)

(assert (=> b!7937416 m!8326298))

(declare-fun m!8326300 () Bool)

(assert (=> b!7937417 m!8326300))

(declare-fun m!8326302 () Bool)

(assert (=> b!7937417 m!8326302))

(declare-fun m!8326304 () Bool)

(assert (=> b!7937417 m!8326304))

(assert (=> b!7937350 d!2373966))

(declare-fun b!7937431 () Bool)

(declare-fun e!4683535 () List!74591)

(assert (=> b!7937431 (= e!4683535 Nil!74467)))

(declare-fun d!2373968 () Bool)

(declare-fun c!1458291 () Bool)

(assert (=> d!2373968 (= c!1458291 (is-Empty!15919 ys!40))))

(assert (=> d!2373968 (= (list!19444 ys!40) e!4683535)))

(declare-fun b!7937432 () Bool)

(declare-fun e!4683536 () List!74591)

(assert (=> b!7937432 (= e!4683535 e!4683536)))

(declare-fun c!1458292 () Bool)

(assert (=> b!7937432 (= c!1458292 (is-Leaf!30261 ys!40))))

(declare-fun b!7937433 () Bool)

(declare-fun list!19446 (IArray!31899) List!74591)

(assert (=> b!7937433 (= e!4683536 (list!19446 (xs!19317 ys!40)))))

(declare-fun b!7937434 () Bool)

(assert (=> b!7937434 (= e!4683536 (++!18276 (list!19444 (left!56900 ys!40)) (list!19444 (right!57230 ys!40))))))

(assert (= (and d!2373968 c!1458291) b!7937431))

(assert (= (and d!2373968 (not c!1458291)) b!7937432))

(assert (= (and b!7937432 c!1458292) b!7937433))

(assert (= (and b!7937432 (not c!1458292)) b!7937434))

(declare-fun m!8326320 () Bool)

(assert (=> b!7937433 m!8326320))

(declare-fun m!8326322 () Bool)

(assert (=> b!7937434 m!8326322))

(declare-fun m!8326324 () Bool)

(assert (=> b!7937434 m!8326324))

(assert (=> b!7937434 m!8326322))

(assert (=> b!7937434 m!8326324))

(declare-fun m!8326326 () Bool)

(assert (=> b!7937434 m!8326326))

(assert (=> b!7937350 d!2373968))

(declare-fun b!7937435 () Bool)

(declare-fun e!4683537 () List!74591)

(assert (=> b!7937435 (= e!4683537 Nil!74467)))

(declare-fun d!2373972 () Bool)

(declare-fun c!1458293 () Bool)

(assert (=> d!2373972 (= c!1458293 (is-Empty!15919 xs!273))))

(assert (=> d!2373972 (= (list!19444 xs!273) e!4683537)))

(declare-fun b!7937436 () Bool)

(declare-fun e!4683538 () List!74591)

(assert (=> b!7937436 (= e!4683537 e!4683538)))

(declare-fun c!1458294 () Bool)

(assert (=> b!7937436 (= c!1458294 (is-Leaf!30261 xs!273))))

(declare-fun b!7937437 () Bool)

(assert (=> b!7937437 (= e!4683538 (list!19446 (xs!19317 xs!273)))))

(declare-fun b!7937438 () Bool)

(assert (=> b!7937438 (= e!4683538 (++!18276 (list!19444 (left!56900 xs!273)) (list!19444 (right!57230 xs!273))))))

(assert (= (and d!2373972 c!1458293) b!7937435))

(assert (= (and d!2373972 (not c!1458293)) b!7937436))

(assert (= (and b!7937436 c!1458294) b!7937437))

(assert (= (and b!7937436 (not c!1458294)) b!7937438))

(declare-fun m!8326328 () Bool)

(assert (=> b!7937437 m!8326328))

(declare-fun m!8326330 () Bool)

(assert (=> b!7937438 m!8326330))

(declare-fun m!8326332 () Bool)

(assert (=> b!7937438 m!8326332))

(assert (=> b!7937438 m!8326330))

(assert (=> b!7937438 m!8326332))

(declare-fun m!8326334 () Bool)

(assert (=> b!7937438 m!8326334))

(assert (=> b!7937350 d!2373972))

(declare-fun b!7937445 () Bool)

(declare-fun e!4683541 () Bool)

(declare-fun tp_is_empty!53267 () Bool)

(declare-fun tp!2359817 () Bool)

(assert (=> b!7937445 (= e!4683541 (and tp_is_empty!53267 tp!2359817))))

(assert (=> b!7937353 (= tp!2359792 e!4683541)))

(assert (= (and b!7937353 (is-Cons!74467 (innerList!16007 (xs!19317 ys!40)))) b!7937445))

(declare-fun e!4683550 () Bool)

(declare-fun tp!2359825 () Bool)

(declare-fun tp!2359826 () Bool)

(declare-fun b!7937460 () Bool)

(assert (=> b!7937460 (= e!4683550 (and (inv!95815 (left!56900 (left!56900 ys!40))) tp!2359826 (inv!95815 (right!57230 (left!56900 ys!40))) tp!2359825))))

(declare-fun b!7937462 () Bool)

(declare-fun e!4683551 () Bool)

(declare-fun tp!2359824 () Bool)

(assert (=> b!7937462 (= e!4683551 tp!2359824)))

(declare-fun b!7937461 () Bool)

(assert (=> b!7937461 (= e!4683550 (and (inv!95816 (xs!19317 (left!56900 ys!40))) e!4683551))))

(assert (=> b!7937348 (= tp!2359793 (and (inv!95815 (left!56900 ys!40)) e!4683550))))

(assert (= (and b!7937348 (is-Node!15919 (left!56900 ys!40))) b!7937460))

(assert (= b!7937461 b!7937462))

(assert (= (and b!7937348 (is-Leaf!30261 (left!56900 ys!40))) b!7937461))

(declare-fun m!8326336 () Bool)

(assert (=> b!7937460 m!8326336))

(declare-fun m!8326338 () Bool)

(assert (=> b!7937460 m!8326338))

(declare-fun m!8326340 () Bool)

(assert (=> b!7937461 m!8326340))

(assert (=> b!7937348 m!8326224))

(declare-fun tp!2359828 () Bool)

(declare-fun b!7937463 () Bool)

(declare-fun e!4683552 () Bool)

(declare-fun tp!2359829 () Bool)

(assert (=> b!7937463 (= e!4683552 (and (inv!95815 (left!56900 (right!57230 ys!40))) tp!2359829 (inv!95815 (right!57230 (right!57230 ys!40))) tp!2359828))))

(declare-fun b!7937465 () Bool)

(declare-fun e!4683553 () Bool)

(declare-fun tp!2359827 () Bool)

(assert (=> b!7937465 (= e!4683553 tp!2359827)))

(declare-fun b!7937464 () Bool)

(assert (=> b!7937464 (= e!4683552 (and (inv!95816 (xs!19317 (right!57230 ys!40))) e!4683553))))

(assert (=> b!7937348 (= tp!2359796 (and (inv!95815 (right!57230 ys!40)) e!4683552))))

(assert (= (and b!7937348 (is-Node!15919 (right!57230 ys!40))) b!7937463))

(assert (= b!7937464 b!7937465))

(assert (= (and b!7937348 (is-Leaf!30261 (right!57230 ys!40))) b!7937464))

(declare-fun m!8326342 () Bool)

(assert (=> b!7937463 m!8326342))

(declare-fun m!8326344 () Bool)

(assert (=> b!7937463 m!8326344))

(declare-fun m!8326346 () Bool)

(assert (=> b!7937464 m!8326346))

(assert (=> b!7937348 m!8326226))

(declare-fun tp!2359832 () Bool)

(declare-fun tp!2359831 () Bool)

(declare-fun e!4683554 () Bool)

(declare-fun b!7937466 () Bool)

(assert (=> b!7937466 (= e!4683554 (and (inv!95815 (left!56900 (left!56900 xs!273))) tp!2359832 (inv!95815 (right!57230 (left!56900 xs!273))) tp!2359831))))

(declare-fun b!7937468 () Bool)

(declare-fun e!4683555 () Bool)

(declare-fun tp!2359830 () Bool)

(assert (=> b!7937468 (= e!4683555 tp!2359830)))

(declare-fun b!7937467 () Bool)

(assert (=> b!7937467 (= e!4683554 (and (inv!95816 (xs!19317 (left!56900 xs!273))) e!4683555))))

(assert (=> b!7937347 (= tp!2359795 (and (inv!95815 (left!56900 xs!273)) e!4683554))))

(assert (= (and b!7937347 (is-Node!15919 (left!56900 xs!273))) b!7937466))

(assert (= b!7937467 b!7937468))

(assert (= (and b!7937347 (is-Leaf!30261 (left!56900 xs!273))) b!7937467))

(declare-fun m!8326348 () Bool)

(assert (=> b!7937466 m!8326348))

(declare-fun m!8326350 () Bool)

(assert (=> b!7937466 m!8326350))

(declare-fun m!8326352 () Bool)

(assert (=> b!7937467 m!8326352))

(assert (=> b!7937347 m!8326238))

(declare-fun tp!2359835 () Bool)

(declare-fun e!4683556 () Bool)

(declare-fun b!7937469 () Bool)

(declare-fun tp!2359834 () Bool)

(assert (=> b!7937469 (= e!4683556 (and (inv!95815 (left!56900 (right!57230 xs!273))) tp!2359835 (inv!95815 (right!57230 (right!57230 xs!273))) tp!2359834))))

(declare-fun b!7937471 () Bool)

(declare-fun e!4683557 () Bool)

(declare-fun tp!2359833 () Bool)

(assert (=> b!7937471 (= e!4683557 tp!2359833)))

(declare-fun b!7937470 () Bool)

(assert (=> b!7937470 (= e!4683556 (and (inv!95816 (xs!19317 (right!57230 xs!273))) e!4683557))))

(assert (=> b!7937347 (= tp!2359794 (and (inv!95815 (right!57230 xs!273)) e!4683556))))

(assert (= (and b!7937347 (is-Node!15919 (right!57230 xs!273))) b!7937469))

(assert (= b!7937470 b!7937471))

(assert (= (and b!7937347 (is-Leaf!30261 (right!57230 xs!273))) b!7937470))

(declare-fun m!8326354 () Bool)

(assert (=> b!7937469 m!8326354))

(declare-fun m!8326356 () Bool)

(assert (=> b!7937469 m!8326356))

(declare-fun m!8326358 () Bool)

(assert (=> b!7937470 m!8326358))

(assert (=> b!7937347 m!8326240))

(declare-fun b!7937472 () Bool)

(declare-fun e!4683558 () Bool)

(declare-fun tp!2359836 () Bool)

(assert (=> b!7937472 (= e!4683558 (and tp_is_empty!53267 tp!2359836))))

(assert (=> b!7937351 (= tp!2359791 e!4683558)))

(assert (= (and b!7937351 (is-Cons!74467 (innerList!16007 (xs!19317 xs!273)))) b!7937472))

(push 1)

(assert (not b!7937467))

(assert (not d!2373958))

(assert (not b!7937437))

(assert (not b!7937393))

(assert (not b!7937461))

(assert (not b!7937466))

(assert (not b!7937433))

(assert (not b!7937383))

(assert (not b!7937463))

(assert (not b!7937392))

(assert (not b!7937390))

(assert tp_is_empty!53267)

(assert (not b!7937384))

(assert (not b!7937417))

(assert (not b!7937434))

(assert (not b!7937396))

(assert (not b!7937469))

(assert (not b!7937462))

(assert (not b!7937387))

(assert (not b!7937347))

(assert (not b!7937348))

(assert (not b!7937464))

(assert (not b!7937395))

(assert (not b!7937389))

(assert (not b!7937445))

(assert (not b!7937470))

(assert (not b!7937386))

(assert (not b!7937472))

(assert (not b!7937471))

(assert (not d!2373964))

(assert (not b!7937468))

(assert (not b!7937381))

(assert (not b!7937438))

(assert (not d!2373966))

(assert (not b!7937465))

(assert (not b!7937416))

(assert (not b!7937398))

(assert (not b!7937460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

