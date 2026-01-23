; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749194 () Bool)

(assert start!749194)

(declare-fun b!7938264 () Bool)

(declare-fun e!4684046 () Bool)

(declare-datatypes ((T!145996 0))(
  ( (T!145997 (val!32088 Int)) )
))
(declare-datatypes ((List!74600 0))(
  ( (Nil!74476) (Cons!74476 (h!80924 T!145996) (t!390323 List!74600)) )
))
(declare-datatypes ((IArray!31917 0))(
  ( (IArray!31918 (innerList!16016 List!74600)) )
))
(declare-datatypes ((Conc!15928 0))(
  ( (Node!15928 (left!56913 Conc!15928) (right!57243 Conc!15928) (csize!32086 Int) (cheight!16139 Int)) (Leaf!30274 (xs!19326 IArray!31917) (csize!32087 Int)) (Empty!15928) )
))
(declare-fun ys!40 () Conc!15928)

(declare-fun e!4684044 () Bool)

(declare-fun inv!95861 (IArray!31917) Bool)

(assert (=> b!7938264 (= e!4684046 (and (inv!95861 (xs!19326 ys!40)) e!4684044))))

(declare-fun b!7938265 () Bool)

(declare-fun e!4684045 () Bool)

(declare-fun xs!273 () Conc!15928)

(declare-fun list!19457 (Conc!15928) List!74600)

(declare-fun size!43302 (Conc!15928) Int)

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2235 (Conc!15928) Int)

(declare-fun ++!18283 (List!74600 List!74600) List!74600)

(assert (=> b!7938265 (= e!4684045 (not (= (list!19457 (Node!15928 xs!273 ys!40 (+ (size!43302 xs!273) (size!43302 ys!40)) (+ 1 (max!0 (height!2235 xs!273) (height!2235 ys!40))))) (++!18283 (list!19457 xs!273) (list!19457 ys!40)))))))

(declare-fun res!3149362 () Bool)

(assert (=> start!749194 (=> (not res!3149362) (not e!4684045))))

(assert (=> start!749194 (= res!3149362 (and (not (= xs!273 Empty!15928)) (not (= ys!40 Empty!15928))))))

(assert (=> start!749194 e!4684045))

(declare-fun e!4684048 () Bool)

(declare-fun inv!95862 (Conc!15928) Bool)

(assert (=> start!749194 (and (inv!95862 xs!273) e!4684048)))

(assert (=> start!749194 (and (inv!95862 ys!40) e!4684046)))

(declare-fun b!7938266 () Bool)

(declare-fun tp!2360160 () Bool)

(assert (=> b!7938266 (= e!4684044 tp!2360160)))

(declare-fun b!7938267 () Bool)

(declare-fun e!4684047 () Bool)

(declare-fun tp!2360162 () Bool)

(assert (=> b!7938267 (= e!4684047 tp!2360162)))

(declare-fun tp!2360157 () Bool)

(declare-fun tp!2360159 () Bool)

(declare-fun b!7938268 () Bool)

(assert (=> b!7938268 (= e!4684046 (and (inv!95862 (left!56913 ys!40)) tp!2360157 (inv!95862 (right!57243 ys!40)) tp!2360159))))

(declare-fun b!7938269 () Bool)

(assert (=> b!7938269 (= e!4684048 (and (inv!95861 (xs!19326 xs!273)) e!4684047))))

(declare-fun b!7938270 () Bool)

(declare-fun tp!2360158 () Bool)

(declare-fun tp!2360161 () Bool)

(assert (=> b!7938270 (= e!4684048 (and (inv!95862 (left!56913 xs!273)) tp!2360158 (inv!95862 (right!57243 xs!273)) tp!2360161))))

(assert (= (and start!749194 res!3149362) b!7938265))

(get-info :version)

(assert (= (and start!749194 ((_ is Node!15928) xs!273)) b!7938270))

(assert (= b!7938269 b!7938267))

(assert (= (and start!749194 ((_ is Leaf!30274) xs!273)) b!7938269))

(assert (= (and start!749194 ((_ is Node!15928) ys!40)) b!7938268))

(assert (= b!7938264 b!7938266))

(assert (= (and start!749194 ((_ is Leaf!30274) ys!40)) b!7938264))

(declare-fun m!8327346 () Bool)

(assert (=> b!7938268 m!8327346))

(declare-fun m!8327348 () Bool)

(assert (=> b!7938268 m!8327348))

(declare-fun m!8327350 () Bool)

(assert (=> b!7938264 m!8327350))

(declare-fun m!8327352 () Bool)

(assert (=> b!7938270 m!8327352))

(declare-fun m!8327354 () Bool)

(assert (=> b!7938270 m!8327354))

(declare-fun m!8327356 () Bool)

(assert (=> b!7938269 m!8327356))

(declare-fun m!8327358 () Bool)

(assert (=> b!7938265 m!8327358))

(declare-fun m!8327360 () Bool)

(assert (=> b!7938265 m!8327360))

(declare-fun m!8327362 () Bool)

(assert (=> b!7938265 m!8327362))

(declare-fun m!8327364 () Bool)

(assert (=> b!7938265 m!8327364))

(declare-fun m!8327366 () Bool)

(assert (=> b!7938265 m!8327366))

(declare-fun m!8327368 () Bool)

(assert (=> b!7938265 m!8327368))

(declare-fun m!8327370 () Bool)

(assert (=> b!7938265 m!8327370))

(assert (=> b!7938265 m!8327360))

(assert (=> b!7938265 m!8327358))

(assert (=> b!7938265 m!8327366))

(assert (=> b!7938265 m!8327370))

(declare-fun m!8327372 () Bool)

(assert (=> b!7938265 m!8327372))

(declare-fun m!8327374 () Bool)

(assert (=> b!7938265 m!8327374))

(declare-fun m!8327376 () Bool)

(assert (=> start!749194 m!8327376))

(declare-fun m!8327378 () Bool)

(assert (=> start!749194 m!8327378))

(check-sat (not b!7938267) (not b!7938264) (not b!7938265) (not start!749194) (not b!7938269) (not b!7938268) (not b!7938270) (not b!7938266))
(check-sat)
(get-model)

(declare-fun d!2374244 () Bool)

(declare-fun c!1458429 () Bool)

(assert (=> d!2374244 (= c!1458429 ((_ is Node!15928) xs!273))))

(declare-fun e!4684057 () Bool)

(assert (=> d!2374244 (= (inv!95862 xs!273) e!4684057)))

(declare-fun b!7938285 () Bool)

(declare-fun inv!95863 (Conc!15928) Bool)

(assert (=> b!7938285 (= e!4684057 (inv!95863 xs!273))))

(declare-fun b!7938286 () Bool)

(declare-fun e!4684058 () Bool)

(assert (=> b!7938286 (= e!4684057 e!4684058)))

(declare-fun res!3149365 () Bool)

(assert (=> b!7938286 (= res!3149365 (not ((_ is Leaf!30274) xs!273)))))

(assert (=> b!7938286 (=> res!3149365 e!4684058)))

(declare-fun b!7938287 () Bool)

(declare-fun inv!95864 (Conc!15928) Bool)

(assert (=> b!7938287 (= e!4684058 (inv!95864 xs!273))))

(assert (= (and d!2374244 c!1458429) b!7938285))

(assert (= (and d!2374244 (not c!1458429)) b!7938286))

(assert (= (and b!7938286 (not res!3149365)) b!7938287))

(declare-fun m!8327380 () Bool)

(assert (=> b!7938285 m!8327380))

(declare-fun m!8327382 () Bool)

(assert (=> b!7938287 m!8327382))

(assert (=> start!749194 d!2374244))

(declare-fun d!2374252 () Bool)

(declare-fun c!1458430 () Bool)

(assert (=> d!2374252 (= c!1458430 ((_ is Node!15928) ys!40))))

(declare-fun e!4684059 () Bool)

(assert (=> d!2374252 (= (inv!95862 ys!40) e!4684059)))

(declare-fun b!7938288 () Bool)

(assert (=> b!7938288 (= e!4684059 (inv!95863 ys!40))))

(declare-fun b!7938289 () Bool)

(declare-fun e!4684060 () Bool)

(assert (=> b!7938289 (= e!4684059 e!4684060)))

(declare-fun res!3149366 () Bool)

(assert (=> b!7938289 (= res!3149366 (not ((_ is Leaf!30274) ys!40)))))

(assert (=> b!7938289 (=> res!3149366 e!4684060)))

(declare-fun b!7938290 () Bool)

(assert (=> b!7938290 (= e!4684060 (inv!95864 ys!40))))

(assert (= (and d!2374252 c!1458430) b!7938288))

(assert (= (and d!2374252 (not c!1458430)) b!7938289))

(assert (= (and b!7938289 (not res!3149366)) b!7938290))

(declare-fun m!8327384 () Bool)

(assert (=> b!7938288 m!8327384))

(declare-fun m!8327386 () Bool)

(assert (=> b!7938290 m!8327386))

(assert (=> start!749194 d!2374252))

(declare-fun d!2374254 () Bool)

(declare-fun c!1458431 () Bool)

(assert (=> d!2374254 (= c!1458431 ((_ is Node!15928) (left!56913 ys!40)))))

(declare-fun e!4684061 () Bool)

(assert (=> d!2374254 (= (inv!95862 (left!56913 ys!40)) e!4684061)))

(declare-fun b!7938291 () Bool)

(assert (=> b!7938291 (= e!4684061 (inv!95863 (left!56913 ys!40)))))

(declare-fun b!7938292 () Bool)

(declare-fun e!4684062 () Bool)

(assert (=> b!7938292 (= e!4684061 e!4684062)))

(declare-fun res!3149367 () Bool)

(assert (=> b!7938292 (= res!3149367 (not ((_ is Leaf!30274) (left!56913 ys!40))))))

(assert (=> b!7938292 (=> res!3149367 e!4684062)))

(declare-fun b!7938293 () Bool)

(assert (=> b!7938293 (= e!4684062 (inv!95864 (left!56913 ys!40)))))

(assert (= (and d!2374254 c!1458431) b!7938291))

(assert (= (and d!2374254 (not c!1458431)) b!7938292))

(assert (= (and b!7938292 (not res!3149367)) b!7938293))

(declare-fun m!8327388 () Bool)

(assert (=> b!7938291 m!8327388))

(declare-fun m!8327390 () Bool)

(assert (=> b!7938293 m!8327390))

(assert (=> b!7938268 d!2374254))

(declare-fun d!2374256 () Bool)

(declare-fun c!1458432 () Bool)

(assert (=> d!2374256 (= c!1458432 ((_ is Node!15928) (right!57243 ys!40)))))

(declare-fun e!4684063 () Bool)

(assert (=> d!2374256 (= (inv!95862 (right!57243 ys!40)) e!4684063)))

(declare-fun b!7938294 () Bool)

(assert (=> b!7938294 (= e!4684063 (inv!95863 (right!57243 ys!40)))))

(declare-fun b!7938295 () Bool)

(declare-fun e!4684064 () Bool)

(assert (=> b!7938295 (= e!4684063 e!4684064)))

(declare-fun res!3149368 () Bool)

(assert (=> b!7938295 (= res!3149368 (not ((_ is Leaf!30274) (right!57243 ys!40))))))

(assert (=> b!7938295 (=> res!3149368 e!4684064)))

(declare-fun b!7938296 () Bool)

(assert (=> b!7938296 (= e!4684064 (inv!95864 (right!57243 ys!40)))))

(assert (= (and d!2374256 c!1458432) b!7938294))

(assert (= (and d!2374256 (not c!1458432)) b!7938295))

(assert (= (and b!7938295 (not res!3149368)) b!7938296))

(declare-fun m!8327392 () Bool)

(assert (=> b!7938294 m!8327392))

(declare-fun m!8327394 () Bool)

(assert (=> b!7938296 m!8327394))

(assert (=> b!7938268 d!2374256))

(declare-fun d!2374258 () Bool)

(declare-fun size!43304 (List!74600) Int)

(assert (=> d!2374258 (= (inv!95861 (xs!19326 xs!273)) (<= (size!43304 (innerList!16016 (xs!19326 xs!273))) 2147483647))))

(declare-fun bs!1969301 () Bool)

(assert (= bs!1969301 d!2374258))

(declare-fun m!8327404 () Bool)

(assert (=> bs!1969301 m!8327404))

(assert (=> b!7938269 d!2374258))

(declare-fun d!2374262 () Bool)

(assert (=> d!2374262 (= (inv!95861 (xs!19326 ys!40)) (<= (size!43304 (innerList!16016 (xs!19326 ys!40))) 2147483647))))

(declare-fun bs!1969302 () Bool)

(assert (= bs!1969302 d!2374262))

(declare-fun m!8327406 () Bool)

(assert (=> bs!1969302 m!8327406))

(assert (=> b!7938264 d!2374262))

(declare-fun d!2374264 () Bool)

(declare-fun c!1458435 () Bool)

(assert (=> d!2374264 (= c!1458435 ((_ is Node!15928) (left!56913 xs!273)))))

(declare-fun e!4684067 () Bool)

(assert (=> d!2374264 (= (inv!95862 (left!56913 xs!273)) e!4684067)))

(declare-fun b!7938301 () Bool)

(assert (=> b!7938301 (= e!4684067 (inv!95863 (left!56913 xs!273)))))

(declare-fun b!7938302 () Bool)

(declare-fun e!4684068 () Bool)

(assert (=> b!7938302 (= e!4684067 e!4684068)))

(declare-fun res!3149369 () Bool)

(assert (=> b!7938302 (= res!3149369 (not ((_ is Leaf!30274) (left!56913 xs!273))))))

(assert (=> b!7938302 (=> res!3149369 e!4684068)))

(declare-fun b!7938303 () Bool)

(assert (=> b!7938303 (= e!4684068 (inv!95864 (left!56913 xs!273)))))

(assert (= (and d!2374264 c!1458435) b!7938301))

(assert (= (and d!2374264 (not c!1458435)) b!7938302))

(assert (= (and b!7938302 (not res!3149369)) b!7938303))

(declare-fun m!8327408 () Bool)

(assert (=> b!7938301 m!8327408))

(declare-fun m!8327410 () Bool)

(assert (=> b!7938303 m!8327410))

(assert (=> b!7938270 d!2374264))

(declare-fun d!2374266 () Bool)

(declare-fun c!1458436 () Bool)

(assert (=> d!2374266 (= c!1458436 ((_ is Node!15928) (right!57243 xs!273)))))

(declare-fun e!4684069 () Bool)

(assert (=> d!2374266 (= (inv!95862 (right!57243 xs!273)) e!4684069)))

(declare-fun b!7938304 () Bool)

(assert (=> b!7938304 (= e!4684069 (inv!95863 (right!57243 xs!273)))))

(declare-fun b!7938305 () Bool)

(declare-fun e!4684070 () Bool)

(assert (=> b!7938305 (= e!4684069 e!4684070)))

(declare-fun res!3149370 () Bool)

(assert (=> b!7938305 (= res!3149370 (not ((_ is Leaf!30274) (right!57243 xs!273))))))

(assert (=> b!7938305 (=> res!3149370 e!4684070)))

(declare-fun b!7938306 () Bool)

(assert (=> b!7938306 (= e!4684070 (inv!95864 (right!57243 xs!273)))))

(assert (= (and d!2374266 c!1458436) b!7938304))

(assert (= (and d!2374266 (not c!1458436)) b!7938305))

(assert (= (and b!7938305 (not res!3149370)) b!7938306))

(declare-fun m!8327412 () Bool)

(assert (=> b!7938304 m!8327412))

(declare-fun m!8327414 () Bool)

(assert (=> b!7938306 m!8327414))

(assert (=> b!7938270 d!2374266))

(declare-fun d!2374268 () Bool)

(assert (=> d!2374268 (= (height!2235 ys!40) (ite ((_ is Empty!15928) ys!40) 0 (ite ((_ is Leaf!30274) ys!40) 1 (cheight!16139 ys!40))))))

(assert (=> b!7938265 d!2374268))

(declare-fun d!2374270 () Bool)

(assert (=> d!2374270 (= (max!0 (height!2235 xs!273) (height!2235 ys!40)) (ite (< (height!2235 xs!273) (height!2235 ys!40)) (height!2235 ys!40) (height!2235 xs!273)))))

(assert (=> b!7938265 d!2374270))

(declare-fun b!7938325 () Bool)

(declare-fun e!4684080 () List!74600)

(declare-fun list!19459 (IArray!31917) List!74600)

(assert (=> b!7938325 (= e!4684080 (list!19459 (xs!19326 ys!40)))))

(declare-fun b!7938326 () Bool)

(assert (=> b!7938326 (= e!4684080 (++!18283 (list!19457 (left!56913 ys!40)) (list!19457 (right!57243 ys!40))))))

(declare-fun b!7938324 () Bool)

(declare-fun e!4684079 () List!74600)

(assert (=> b!7938324 (= e!4684079 e!4684080)))

(declare-fun c!1458446 () Bool)

(assert (=> b!7938324 (= c!1458446 ((_ is Leaf!30274) ys!40))))

(declare-fun d!2374274 () Bool)

(declare-fun c!1458445 () Bool)

(assert (=> d!2374274 (= c!1458445 ((_ is Empty!15928) ys!40))))

(assert (=> d!2374274 (= (list!19457 ys!40) e!4684079)))

(declare-fun b!7938323 () Bool)

(assert (=> b!7938323 (= e!4684079 Nil!74476)))

(assert (= (and d!2374274 c!1458445) b!7938323))

(assert (= (and d!2374274 (not c!1458445)) b!7938324))

(assert (= (and b!7938324 c!1458446) b!7938325))

(assert (= (and b!7938324 (not c!1458446)) b!7938326))

(declare-fun m!8327436 () Bool)

(assert (=> b!7938325 m!8327436))

(declare-fun m!8327438 () Bool)

(assert (=> b!7938326 m!8327438))

(declare-fun m!8327440 () Bool)

(assert (=> b!7938326 m!8327440))

(assert (=> b!7938326 m!8327438))

(assert (=> b!7938326 m!8327440))

(declare-fun m!8327442 () Bool)

(assert (=> b!7938326 m!8327442))

(assert (=> b!7938265 d!2374274))

(declare-fun d!2374284 () Bool)

(declare-fun lt!2695629 () Int)

(assert (=> d!2374284 (= lt!2695629 (size!43304 (list!19457 ys!40)))))

(assert (=> d!2374284 (= lt!2695629 (ite ((_ is Empty!15928) ys!40) 0 (ite ((_ is Leaf!30274) ys!40) (csize!32087 ys!40) (csize!32086 ys!40))))))

(assert (=> d!2374284 (= (size!43302 ys!40) lt!2695629)))

(declare-fun bs!1969305 () Bool)

(assert (= bs!1969305 d!2374284))

(assert (=> bs!1969305 m!8327370))

(assert (=> bs!1969305 m!8327370))

(declare-fun m!8327444 () Bool)

(assert (=> bs!1969305 m!8327444))

(assert (=> b!7938265 d!2374284))

(declare-fun d!2374286 () Bool)

(declare-fun lt!2695630 () Int)

(assert (=> d!2374286 (= lt!2695630 (size!43304 (list!19457 xs!273)))))

(assert (=> d!2374286 (= lt!2695630 (ite ((_ is Empty!15928) xs!273) 0 (ite ((_ is Leaf!30274) xs!273) (csize!32087 xs!273) (csize!32086 xs!273))))))

(assert (=> d!2374286 (= (size!43302 xs!273) lt!2695630)))

(declare-fun bs!1969306 () Bool)

(assert (= bs!1969306 d!2374286))

(assert (=> bs!1969306 m!8327366))

(assert (=> bs!1969306 m!8327366))

(declare-fun m!8327446 () Bool)

(assert (=> bs!1969306 m!8327446))

(assert (=> b!7938265 d!2374286))

(declare-fun b!7938337 () Bool)

(declare-fun e!4684086 () List!74600)

(assert (=> b!7938337 (= e!4684086 (list!19459 (xs!19326 xs!273)))))

(declare-fun b!7938338 () Bool)

(assert (=> b!7938338 (= e!4684086 (++!18283 (list!19457 (left!56913 xs!273)) (list!19457 (right!57243 xs!273))))))

(declare-fun b!7938336 () Bool)

(declare-fun e!4684085 () List!74600)

(assert (=> b!7938336 (= e!4684085 e!4684086)))

(declare-fun c!1458450 () Bool)

(assert (=> b!7938336 (= c!1458450 ((_ is Leaf!30274) xs!273))))

(declare-fun d!2374288 () Bool)

(declare-fun c!1458449 () Bool)

(assert (=> d!2374288 (= c!1458449 ((_ is Empty!15928) xs!273))))

(assert (=> d!2374288 (= (list!19457 xs!273) e!4684085)))

(declare-fun b!7938335 () Bool)

(assert (=> b!7938335 (= e!4684085 Nil!74476)))

(assert (= (and d!2374288 c!1458449) b!7938335))

(assert (= (and d!2374288 (not c!1458449)) b!7938336))

(assert (= (and b!7938336 c!1458450) b!7938337))

(assert (= (and b!7938336 (not c!1458450)) b!7938338))

(declare-fun m!8327448 () Bool)

(assert (=> b!7938337 m!8327448))

(declare-fun m!8327450 () Bool)

(assert (=> b!7938338 m!8327450))

(declare-fun m!8327452 () Bool)

(assert (=> b!7938338 m!8327452))

(assert (=> b!7938338 m!8327450))

(assert (=> b!7938338 m!8327452))

(declare-fun m!8327454 () Bool)

(assert (=> b!7938338 m!8327454))

(assert (=> b!7938265 d!2374288))

(declare-fun b!7938345 () Bool)

(declare-fun e!4684090 () List!74600)

(assert (=> b!7938345 (= e!4684090 (list!19459 (xs!19326 (Node!15928 xs!273 ys!40 (+ (size!43302 xs!273) (size!43302 ys!40)) (+ 1 (max!0 (height!2235 xs!273) (height!2235 ys!40)))))))))

(declare-fun b!7938346 () Bool)

(assert (=> b!7938346 (= e!4684090 (++!18283 (list!19457 (left!56913 (Node!15928 xs!273 ys!40 (+ (size!43302 xs!273) (size!43302 ys!40)) (+ 1 (max!0 (height!2235 xs!273) (height!2235 ys!40)))))) (list!19457 (right!57243 (Node!15928 xs!273 ys!40 (+ (size!43302 xs!273) (size!43302 ys!40)) (+ 1 (max!0 (height!2235 xs!273) (height!2235 ys!40))))))))))

(declare-fun b!7938344 () Bool)

(declare-fun e!4684089 () List!74600)

(assert (=> b!7938344 (= e!4684089 e!4684090)))

(declare-fun c!1458453 () Bool)

(assert (=> b!7938344 (= c!1458453 ((_ is Leaf!30274) (Node!15928 xs!273 ys!40 (+ (size!43302 xs!273) (size!43302 ys!40)) (+ 1 (max!0 (height!2235 xs!273) (height!2235 ys!40))))))))

(declare-fun d!2374290 () Bool)

(declare-fun c!1458452 () Bool)

(assert (=> d!2374290 (= c!1458452 ((_ is Empty!15928) (Node!15928 xs!273 ys!40 (+ (size!43302 xs!273) (size!43302 ys!40)) (+ 1 (max!0 (height!2235 xs!273) (height!2235 ys!40))))))))

(assert (=> d!2374290 (= (list!19457 (Node!15928 xs!273 ys!40 (+ (size!43302 xs!273) (size!43302 ys!40)) (+ 1 (max!0 (height!2235 xs!273) (height!2235 ys!40))))) e!4684089)))

(declare-fun b!7938343 () Bool)

(assert (=> b!7938343 (= e!4684089 Nil!74476)))

(assert (= (and d!2374290 c!1458452) b!7938343))

(assert (= (and d!2374290 (not c!1458452)) b!7938344))

(assert (= (and b!7938344 c!1458453) b!7938345))

(assert (= (and b!7938344 (not c!1458453)) b!7938346))

(declare-fun m!8327458 () Bool)

(assert (=> b!7938345 m!8327458))

(declare-fun m!8327464 () Bool)

(assert (=> b!7938346 m!8327464))

(declare-fun m!8327468 () Bool)

(assert (=> b!7938346 m!8327468))

(assert (=> b!7938346 m!8327464))

(assert (=> b!7938346 m!8327468))

(declare-fun m!8327472 () Bool)

(assert (=> b!7938346 m!8327472))

(assert (=> b!7938265 d!2374290))

(declare-fun d!2374294 () Bool)

(assert (=> d!2374294 (= (height!2235 xs!273) (ite ((_ is Empty!15928) xs!273) 0 (ite ((_ is Leaf!30274) xs!273) 1 (cheight!16139 xs!273))))))

(assert (=> b!7938265 d!2374294))

(declare-fun b!7938370 () Bool)

(declare-fun e!4684106 () List!74600)

(assert (=> b!7938370 (= e!4684106 (list!19457 ys!40))))

(declare-fun b!7938371 () Bool)

(assert (=> b!7938371 (= e!4684106 (Cons!74476 (h!80924 (list!19457 xs!273)) (++!18283 (t!390323 (list!19457 xs!273)) (list!19457 ys!40))))))

(declare-fun d!2374296 () Bool)

(declare-fun e!4684105 () Bool)

(assert (=> d!2374296 e!4684105))

(declare-fun res!3149386 () Bool)

(assert (=> d!2374296 (=> (not res!3149386) (not e!4684105))))

(declare-fun lt!2695634 () List!74600)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15805 (List!74600) (InoxSet T!145996))

(assert (=> d!2374296 (= res!3149386 (= (content!15805 lt!2695634) ((_ map or) (content!15805 (list!19457 xs!273)) (content!15805 (list!19457 ys!40)))))))

(assert (=> d!2374296 (= lt!2695634 e!4684106)))

(declare-fun c!1458461 () Bool)

(assert (=> d!2374296 (= c!1458461 ((_ is Nil!74476) (list!19457 xs!273)))))

(assert (=> d!2374296 (= (++!18283 (list!19457 xs!273) (list!19457 ys!40)) lt!2695634)))

(declare-fun b!7938373 () Bool)

(assert (=> b!7938373 (= e!4684105 (or (not (= (list!19457 ys!40) Nil!74476)) (= lt!2695634 (list!19457 xs!273))))))

(declare-fun b!7938372 () Bool)

(declare-fun res!3149387 () Bool)

(assert (=> b!7938372 (=> (not res!3149387) (not e!4684105))))

(assert (=> b!7938372 (= res!3149387 (= (size!43304 lt!2695634) (+ (size!43304 (list!19457 xs!273)) (size!43304 (list!19457 ys!40)))))))

(assert (= (and d!2374296 c!1458461) b!7938370))

(assert (= (and d!2374296 (not c!1458461)) b!7938371))

(assert (= (and d!2374296 res!3149386) b!7938372))

(assert (= (and b!7938372 res!3149387) b!7938373))

(assert (=> b!7938371 m!8327370))

(declare-fun m!8327498 () Bool)

(assert (=> b!7938371 m!8327498))

(declare-fun m!8327500 () Bool)

(assert (=> d!2374296 m!8327500))

(assert (=> d!2374296 m!8327366))

(declare-fun m!8327502 () Bool)

(assert (=> d!2374296 m!8327502))

(assert (=> d!2374296 m!8327370))

(declare-fun m!8327504 () Bool)

(assert (=> d!2374296 m!8327504))

(declare-fun m!8327506 () Bool)

(assert (=> b!7938372 m!8327506))

(assert (=> b!7938372 m!8327366))

(assert (=> b!7938372 m!8327446))

(assert (=> b!7938372 m!8327370))

(assert (=> b!7938372 m!8327444))

(assert (=> b!7938265 d!2374296))

(declare-fun b!7938391 () Bool)

(declare-fun e!4684117 () Bool)

(declare-fun tp_is_empty!53283 () Bool)

(declare-fun tp!2360167 () Bool)

(assert (=> b!7938391 (= e!4684117 (and tp_is_empty!53283 tp!2360167))))

(assert (=> b!7938266 (= tp!2360160 e!4684117)))

(assert (= (and b!7938266 ((_ is Cons!74476) (innerList!16016 (xs!19326 ys!40)))) b!7938391))

(declare-fun b!7938394 () Bool)

(declare-fun e!4684119 () Bool)

(declare-fun tp!2360169 () Bool)

(assert (=> b!7938394 (= e!4684119 (and tp_is_empty!53283 tp!2360169))))

(assert (=> b!7938267 (= tp!2360162 e!4684119)))

(assert (= (and b!7938267 ((_ is Cons!74476) (innerList!16016 (xs!19326 xs!273)))) b!7938394))

(declare-fun b!7938413 () Bool)

(declare-fun e!4684130 () Bool)

(declare-fun tp!2360185 () Bool)

(declare-fun tp!2360186 () Bool)

(assert (=> b!7938413 (= e!4684130 (and (inv!95862 (left!56913 (left!56913 ys!40))) tp!2360186 (inv!95862 (right!57243 (left!56913 ys!40))) tp!2360185))))

(declare-fun b!7938415 () Bool)

(declare-fun e!4684131 () Bool)

(declare-fun tp!2360187 () Bool)

(assert (=> b!7938415 (= e!4684131 tp!2360187)))

(declare-fun b!7938414 () Bool)

(assert (=> b!7938414 (= e!4684130 (and (inv!95861 (xs!19326 (left!56913 ys!40))) e!4684131))))

(assert (=> b!7938268 (= tp!2360157 (and (inv!95862 (left!56913 ys!40)) e!4684130))))

(assert (= (and b!7938268 ((_ is Node!15928) (left!56913 ys!40))) b!7938413))

(assert (= b!7938414 b!7938415))

(assert (= (and b!7938268 ((_ is Leaf!30274) (left!56913 ys!40))) b!7938414))

(declare-fun m!8327518 () Bool)

(assert (=> b!7938413 m!8327518))

(declare-fun m!8327520 () Bool)

(assert (=> b!7938413 m!8327520))

(declare-fun m!8327522 () Bool)

(assert (=> b!7938414 m!8327522))

(assert (=> b!7938268 m!8327346))

(declare-fun e!4684134 () Bool)

(declare-fun tp!2360191 () Bool)

(declare-fun tp!2360192 () Bool)

(declare-fun b!7938419 () Bool)

(assert (=> b!7938419 (= e!4684134 (and (inv!95862 (left!56913 (right!57243 ys!40))) tp!2360192 (inv!95862 (right!57243 (right!57243 ys!40))) tp!2360191))))

(declare-fun b!7938421 () Bool)

(declare-fun e!4684135 () Bool)

(declare-fun tp!2360193 () Bool)

(assert (=> b!7938421 (= e!4684135 tp!2360193)))

(declare-fun b!7938420 () Bool)

(assert (=> b!7938420 (= e!4684134 (and (inv!95861 (xs!19326 (right!57243 ys!40))) e!4684135))))

(assert (=> b!7938268 (= tp!2360159 (and (inv!95862 (right!57243 ys!40)) e!4684134))))

(assert (= (and b!7938268 ((_ is Node!15928) (right!57243 ys!40))) b!7938419))

(assert (= b!7938420 b!7938421))

(assert (= (and b!7938268 ((_ is Leaf!30274) (right!57243 ys!40))) b!7938420))

(declare-fun m!8327530 () Bool)

(assert (=> b!7938419 m!8327530))

(declare-fun m!8327532 () Bool)

(assert (=> b!7938419 m!8327532))

(declare-fun m!8327534 () Bool)

(assert (=> b!7938420 m!8327534))

(assert (=> b!7938268 m!8327348))

(declare-fun tp!2360198 () Bool)

(declare-fun tp!2360199 () Bool)

(declare-fun e!4684139 () Bool)

(declare-fun b!7938426 () Bool)

(assert (=> b!7938426 (= e!4684139 (and (inv!95862 (left!56913 (left!56913 xs!273))) tp!2360199 (inv!95862 (right!57243 (left!56913 xs!273))) tp!2360198))))

(declare-fun b!7938428 () Bool)

(declare-fun e!4684140 () Bool)

(declare-fun tp!2360200 () Bool)

(assert (=> b!7938428 (= e!4684140 tp!2360200)))

(declare-fun b!7938427 () Bool)

(assert (=> b!7938427 (= e!4684139 (and (inv!95861 (xs!19326 (left!56913 xs!273))) e!4684140))))

(assert (=> b!7938270 (= tp!2360158 (and (inv!95862 (left!56913 xs!273)) e!4684139))))

(assert (= (and b!7938270 ((_ is Node!15928) (left!56913 xs!273))) b!7938426))

(assert (= b!7938427 b!7938428))

(assert (= (and b!7938270 ((_ is Leaf!30274) (left!56913 xs!273))) b!7938427))

(declare-fun m!8327542 () Bool)

(assert (=> b!7938426 m!8327542))

(declare-fun m!8327544 () Bool)

(assert (=> b!7938426 m!8327544))

(declare-fun m!8327546 () Bool)

(assert (=> b!7938427 m!8327546))

(assert (=> b!7938270 m!8327352))

(declare-fun e!4684143 () Bool)

(declare-fun tp!2360205 () Bool)

(declare-fun b!7938432 () Bool)

(declare-fun tp!2360204 () Bool)

(assert (=> b!7938432 (= e!4684143 (and (inv!95862 (left!56913 (right!57243 xs!273))) tp!2360205 (inv!95862 (right!57243 (right!57243 xs!273))) tp!2360204))))

(declare-fun b!7938434 () Bool)

(declare-fun e!4684144 () Bool)

(declare-fun tp!2360206 () Bool)

(assert (=> b!7938434 (= e!4684144 tp!2360206)))

(declare-fun b!7938433 () Bool)

(assert (=> b!7938433 (= e!4684143 (and (inv!95861 (xs!19326 (right!57243 xs!273))) e!4684144))))

(assert (=> b!7938270 (= tp!2360161 (and (inv!95862 (right!57243 xs!273)) e!4684143))))

(assert (= (and b!7938270 ((_ is Node!15928) (right!57243 xs!273))) b!7938432))

(assert (= b!7938433 b!7938434))

(assert (= (and b!7938270 ((_ is Leaf!30274) (right!57243 xs!273))) b!7938433))

(declare-fun m!8327554 () Bool)

(assert (=> b!7938432 m!8327554))

(declare-fun m!8327556 () Bool)

(assert (=> b!7938432 m!8327556))

(declare-fun m!8327558 () Bool)

(assert (=> b!7938433 m!8327558))

(assert (=> b!7938270 m!8327354))

(check-sat (not d!2374262) (not b!7938337) (not b!7938428) (not b!7938419) (not b!7938304) (not b!7938427) (not b!7938290) (not b!7938372) (not b!7938426) (not b!7938413) (not d!2374258) (not b!7938434) (not d!2374296) (not b!7938291) (not b!7938293) (not b!7938301) (not b!7938433) (not b!7938415) (not b!7938287) (not b!7938432) (not b!7938303) (not b!7938414) (not b!7938285) (not b!7938346) (not b!7938296) (not d!2374286) (not b!7938326) (not b!7938345) (not b!7938288) (not b!7938325) (not b!7938420) (not b!7938394) (not b!7938268) (not b!7938338) (not b!7938391) (not b!7938306) (not b!7938294) tp_is_empty!53283 (not d!2374284) (not b!7938421) (not b!7938371) (not b!7938270))
(check-sat)
