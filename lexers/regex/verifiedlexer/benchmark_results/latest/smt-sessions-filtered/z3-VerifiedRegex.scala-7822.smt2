; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!410864 () Bool)

(assert start!410864)

(declare-fun b!4277305 () Bool)

(declare-fun e!2655565 () Bool)

(declare-datatypes ((T!79962 0))(
  ( (T!79963 (val!15268 Int)) )
))
(declare-datatypes ((List!47477 0))(
  ( (Nil!47353) (Cons!47353 (h!52773 T!79962) (t!354042 List!47477)) )
))
(declare-datatypes ((IArray!28675 0))(
  ( (IArray!28676 (innerList!14395 List!47477)) )
))
(declare-datatypes ((Conc!14335 0))(
  ( (Node!14335 (left!35285 Conc!14335) (right!35615 Conc!14335) (csize!28900 Int) (cheight!14546 Int)) (Leaf!22158 (xs!17641 IArray!28675) (csize!28901 Int)) (Empty!14335) )
))
(declare-fun t!3602 () Conc!14335)

(declare-fun e!2655563 () Bool)

(declare-fun inv!62699 (IArray!28675) Bool)

(assert (=> b!4277305 (= e!2655565 (and (inv!62699 (xs!17641 t!3602)) e!2655563))))

(declare-fun b!4277307 () Bool)

(declare-fun e!2655562 () Bool)

(declare-fun tp_is_empty!22945 () Bool)

(declare-fun tp!1308815 () Bool)

(assert (=> b!4277307 (= e!2655562 (and tp_is_empty!22945 tp!1308815))))

(declare-fun b!4277306 () Bool)

(declare-fun e!2655564 () Bool)

(declare-fun acc!259 () List!47477)

(declare-fun ++!12099 (List!47477 List!47477) List!47477)

(declare-fun efficientList!600 (IArray!28675) List!47477)

(declare-fun list!17268 (Conc!14335) List!47477)

(assert (=> b!4277306 (= e!2655564 (not (= (++!12099 (efficientList!600 (xs!17641 t!3602)) acc!259) (++!12099 (list!17268 t!3602) acc!259))))))

(declare-fun res!1756267 () Bool)

(assert (=> start!410864 (=> (not res!1756267) (not e!2655564))))

(get-info :version)

(assert (=> start!410864 (= res!1756267 (and (not ((_ is Empty!14335) t!3602)) ((_ is Leaf!22158) t!3602)))))

(assert (=> start!410864 e!2655564))

(declare-fun inv!62700 (Conc!14335) Bool)

(assert (=> start!410864 (and (inv!62700 t!3602) e!2655565)))

(assert (=> start!410864 e!2655562))

(declare-fun b!4277308 () Bool)

(declare-fun tp!1308818 () Bool)

(assert (=> b!4277308 (= e!2655563 tp!1308818)))

(declare-fun b!4277309 () Bool)

(declare-fun tp!1308817 () Bool)

(declare-fun tp!1308816 () Bool)

(assert (=> b!4277309 (= e!2655565 (and (inv!62700 (left!35285 t!3602)) tp!1308817 (inv!62700 (right!35615 t!3602)) tp!1308816))))

(assert (= (and start!410864 res!1756267) b!4277306))

(assert (= (and start!410864 ((_ is Node!14335) t!3602)) b!4277309))

(assert (= b!4277305 b!4277308))

(assert (= (and start!410864 ((_ is Leaf!22158) t!3602)) b!4277305))

(assert (= (and start!410864 ((_ is Cons!47353) acc!259)) b!4277307))

(declare-fun m!4873333 () Bool)

(assert (=> b!4277305 m!4873333))

(declare-fun m!4873335 () Bool)

(assert (=> b!4277306 m!4873335))

(assert (=> b!4277306 m!4873335))

(declare-fun m!4873337 () Bool)

(assert (=> b!4277306 m!4873337))

(declare-fun m!4873339 () Bool)

(assert (=> b!4277306 m!4873339))

(assert (=> b!4277306 m!4873339))

(declare-fun m!4873341 () Bool)

(assert (=> b!4277306 m!4873341))

(declare-fun m!4873343 () Bool)

(assert (=> start!410864 m!4873343))

(declare-fun m!4873345 () Bool)

(assert (=> b!4277309 m!4873345))

(declare-fun m!4873347 () Bool)

(assert (=> b!4277309 m!4873347))

(check-sat (not start!410864) (not b!4277307) tp_is_empty!22945 (not b!4277308) (not b!4277305) (not b!4277309) (not b!4277306))
(check-sat)
(get-model)

(declare-fun b!4277320 () Bool)

(declare-fun res!1756272 () Bool)

(declare-fun e!2655570 () Bool)

(assert (=> b!4277320 (=> (not res!1756272) (not e!2655570))))

(declare-fun lt!1514003 () List!47477)

(declare-fun size!34662 (List!47477) Int)

(assert (=> b!4277320 (= res!1756272 (= (size!34662 lt!1514003) (+ (size!34662 (efficientList!600 (xs!17641 t!3602))) (size!34662 acc!259))))))

(declare-fun d!1262691 () Bool)

(assert (=> d!1262691 e!2655570))

(declare-fun res!1756273 () Bool)

(assert (=> d!1262691 (=> (not res!1756273) (not e!2655570))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7487 (List!47477) (InoxSet T!79962))

(assert (=> d!1262691 (= res!1756273 (= (content!7487 lt!1514003) ((_ map or) (content!7487 (efficientList!600 (xs!17641 t!3602))) (content!7487 acc!259))))))

(declare-fun e!2655571 () List!47477)

(assert (=> d!1262691 (= lt!1514003 e!2655571)))

(declare-fun c!728481 () Bool)

(assert (=> d!1262691 (= c!728481 ((_ is Nil!47353) (efficientList!600 (xs!17641 t!3602))))))

(assert (=> d!1262691 (= (++!12099 (efficientList!600 (xs!17641 t!3602)) acc!259) lt!1514003)))

(declare-fun b!4277318 () Bool)

(assert (=> b!4277318 (= e!2655571 acc!259)))

(declare-fun b!4277321 () Bool)

(assert (=> b!4277321 (= e!2655570 (or (not (= acc!259 Nil!47353)) (= lt!1514003 (efficientList!600 (xs!17641 t!3602)))))))

(declare-fun b!4277319 () Bool)

(assert (=> b!4277319 (= e!2655571 (Cons!47353 (h!52773 (efficientList!600 (xs!17641 t!3602))) (++!12099 (t!354042 (efficientList!600 (xs!17641 t!3602))) acc!259)))))

(assert (= (and d!1262691 c!728481) b!4277318))

(assert (= (and d!1262691 (not c!728481)) b!4277319))

(assert (= (and d!1262691 res!1756273) b!4277320))

(assert (= (and b!4277320 res!1756272) b!4277321))

(declare-fun m!4873349 () Bool)

(assert (=> b!4277320 m!4873349))

(assert (=> b!4277320 m!4873335))

(declare-fun m!4873351 () Bool)

(assert (=> b!4277320 m!4873351))

(declare-fun m!4873353 () Bool)

(assert (=> b!4277320 m!4873353))

(declare-fun m!4873355 () Bool)

(assert (=> d!1262691 m!4873355))

(assert (=> d!1262691 m!4873335))

(declare-fun m!4873357 () Bool)

(assert (=> d!1262691 m!4873357))

(declare-fun m!4873359 () Bool)

(assert (=> d!1262691 m!4873359))

(declare-fun m!4873361 () Bool)

(assert (=> b!4277319 m!4873361))

(assert (=> b!4277306 d!1262691))

(declare-fun d!1262695 () Bool)

(declare-fun lt!1514006 () List!47477)

(declare-fun list!17269 (IArray!28675) List!47477)

(assert (=> d!1262695 (= lt!1514006 (list!17269 (xs!17641 t!3602)))))

(declare-fun rec!37 (IArray!28675 Int List!47477) List!47477)

(declare-fun size!34663 (IArray!28675) Int)

(assert (=> d!1262695 (= lt!1514006 (rec!37 (xs!17641 t!3602) (size!34663 (xs!17641 t!3602)) Nil!47353))))

(assert (=> d!1262695 (= (efficientList!600 (xs!17641 t!3602)) lt!1514006)))

(declare-fun bs!602581 () Bool)

(assert (= bs!602581 d!1262695))

(declare-fun m!4873363 () Bool)

(assert (=> bs!602581 m!4873363))

(declare-fun m!4873365 () Bool)

(assert (=> bs!602581 m!4873365))

(assert (=> bs!602581 m!4873365))

(declare-fun m!4873367 () Bool)

(assert (=> bs!602581 m!4873367))

(assert (=> b!4277306 d!1262695))

(declare-fun b!4277326 () Bool)

(declare-fun res!1756274 () Bool)

(declare-fun e!2655572 () Bool)

(assert (=> b!4277326 (=> (not res!1756274) (not e!2655572))))

(declare-fun lt!1514007 () List!47477)

(assert (=> b!4277326 (= res!1756274 (= (size!34662 lt!1514007) (+ (size!34662 (list!17268 t!3602)) (size!34662 acc!259))))))

(declare-fun d!1262697 () Bool)

(assert (=> d!1262697 e!2655572))

(declare-fun res!1756275 () Bool)

(assert (=> d!1262697 (=> (not res!1756275) (not e!2655572))))

(assert (=> d!1262697 (= res!1756275 (= (content!7487 lt!1514007) ((_ map or) (content!7487 (list!17268 t!3602)) (content!7487 acc!259))))))

(declare-fun e!2655573 () List!47477)

(assert (=> d!1262697 (= lt!1514007 e!2655573)))

(declare-fun c!728482 () Bool)

(assert (=> d!1262697 (= c!728482 ((_ is Nil!47353) (list!17268 t!3602)))))

(assert (=> d!1262697 (= (++!12099 (list!17268 t!3602) acc!259) lt!1514007)))

(declare-fun b!4277324 () Bool)

(assert (=> b!4277324 (= e!2655573 acc!259)))

(declare-fun b!4277327 () Bool)

(assert (=> b!4277327 (= e!2655572 (or (not (= acc!259 Nil!47353)) (= lt!1514007 (list!17268 t!3602))))))

(declare-fun b!4277325 () Bool)

(assert (=> b!4277325 (= e!2655573 (Cons!47353 (h!52773 (list!17268 t!3602)) (++!12099 (t!354042 (list!17268 t!3602)) acc!259)))))

(assert (= (and d!1262697 c!728482) b!4277324))

(assert (= (and d!1262697 (not c!728482)) b!4277325))

(assert (= (and d!1262697 res!1756275) b!4277326))

(assert (= (and b!4277326 res!1756274) b!4277327))

(declare-fun m!4873369 () Bool)

(assert (=> b!4277326 m!4873369))

(assert (=> b!4277326 m!4873339))

(declare-fun m!4873371 () Bool)

(assert (=> b!4277326 m!4873371))

(assert (=> b!4277326 m!4873353))

(declare-fun m!4873373 () Bool)

(assert (=> d!1262697 m!4873373))

(assert (=> d!1262697 m!4873339))

(declare-fun m!4873375 () Bool)

(assert (=> d!1262697 m!4873375))

(assert (=> d!1262697 m!4873359))

(declare-fun m!4873377 () Bool)

(assert (=> b!4277325 m!4873377))

(assert (=> b!4277306 d!1262697))

(declare-fun d!1262699 () Bool)

(declare-fun c!728490 () Bool)

(assert (=> d!1262699 (= c!728490 ((_ is Empty!14335) t!3602))))

(declare-fun e!2655584 () List!47477)

(assert (=> d!1262699 (= (list!17268 t!3602) e!2655584)))

(declare-fun b!4277343 () Bool)

(assert (=> b!4277343 (= e!2655584 Nil!47353)))

(declare-fun b!4277344 () Bool)

(declare-fun e!2655585 () List!47477)

(assert (=> b!4277344 (= e!2655584 e!2655585)))

(declare-fun c!728491 () Bool)

(assert (=> b!4277344 (= c!728491 ((_ is Leaf!22158) t!3602))))

(declare-fun b!4277345 () Bool)

(assert (=> b!4277345 (= e!2655585 (list!17269 (xs!17641 t!3602)))))

(declare-fun b!4277346 () Bool)

(assert (=> b!4277346 (= e!2655585 (++!12099 (list!17268 (left!35285 t!3602)) (list!17268 (right!35615 t!3602))))))

(assert (= (and d!1262699 c!728490) b!4277343))

(assert (= (and d!1262699 (not c!728490)) b!4277344))

(assert (= (and b!4277344 c!728491) b!4277345))

(assert (= (and b!4277344 (not c!728491)) b!4277346))

(assert (=> b!4277345 m!4873363))

(declare-fun m!4873383 () Bool)

(assert (=> b!4277346 m!4873383))

(declare-fun m!4873385 () Bool)

(assert (=> b!4277346 m!4873385))

(assert (=> b!4277346 m!4873383))

(assert (=> b!4277346 m!4873385))

(declare-fun m!4873387 () Bool)

(assert (=> b!4277346 m!4873387))

(assert (=> b!4277306 d!1262699))

(declare-fun d!1262703 () Bool)

(assert (=> d!1262703 (= (inv!62699 (xs!17641 t!3602)) (<= (size!34662 (innerList!14395 (xs!17641 t!3602))) 2147483647))))

(declare-fun bs!602582 () Bool)

(assert (= bs!602582 d!1262703))

(declare-fun m!4873397 () Bool)

(assert (=> bs!602582 m!4873397))

(assert (=> b!4277305 d!1262703))

(declare-fun d!1262709 () Bool)

(declare-fun c!728496 () Bool)

(assert (=> d!1262709 (= c!728496 ((_ is Node!14335) (left!35285 t!3602)))))

(declare-fun e!2655594 () Bool)

(assert (=> d!1262709 (= (inv!62700 (left!35285 t!3602)) e!2655594)))

(declare-fun b!4277359 () Bool)

(declare-fun inv!62701 (Conc!14335) Bool)

(assert (=> b!4277359 (= e!2655594 (inv!62701 (left!35285 t!3602)))))

(declare-fun b!4277360 () Bool)

(declare-fun e!2655595 () Bool)

(assert (=> b!4277360 (= e!2655594 e!2655595)))

(declare-fun res!1756283 () Bool)

(assert (=> b!4277360 (= res!1756283 (not ((_ is Leaf!22158) (left!35285 t!3602))))))

(assert (=> b!4277360 (=> res!1756283 e!2655595)))

(declare-fun b!4277361 () Bool)

(declare-fun inv!62702 (Conc!14335) Bool)

(assert (=> b!4277361 (= e!2655595 (inv!62702 (left!35285 t!3602)))))

(assert (= (and d!1262709 c!728496) b!4277359))

(assert (= (and d!1262709 (not c!728496)) b!4277360))

(assert (= (and b!4277360 (not res!1756283)) b!4277361))

(declare-fun m!4873399 () Bool)

(assert (=> b!4277359 m!4873399))

(declare-fun m!4873401 () Bool)

(assert (=> b!4277361 m!4873401))

(assert (=> b!4277309 d!1262709))

(declare-fun d!1262711 () Bool)

(declare-fun c!728497 () Bool)

(assert (=> d!1262711 (= c!728497 ((_ is Node!14335) (right!35615 t!3602)))))

(declare-fun e!2655596 () Bool)

(assert (=> d!1262711 (= (inv!62700 (right!35615 t!3602)) e!2655596)))

(declare-fun b!4277362 () Bool)

(assert (=> b!4277362 (= e!2655596 (inv!62701 (right!35615 t!3602)))))

(declare-fun b!4277363 () Bool)

(declare-fun e!2655597 () Bool)

(assert (=> b!4277363 (= e!2655596 e!2655597)))

(declare-fun res!1756284 () Bool)

(assert (=> b!4277363 (= res!1756284 (not ((_ is Leaf!22158) (right!35615 t!3602))))))

(assert (=> b!4277363 (=> res!1756284 e!2655597)))

(declare-fun b!4277364 () Bool)

(assert (=> b!4277364 (= e!2655597 (inv!62702 (right!35615 t!3602)))))

(assert (= (and d!1262711 c!728497) b!4277362))

(assert (= (and d!1262711 (not c!728497)) b!4277363))

(assert (= (and b!4277363 (not res!1756284)) b!4277364))

(declare-fun m!4873403 () Bool)

(assert (=> b!4277362 m!4873403))

(declare-fun m!4873405 () Bool)

(assert (=> b!4277364 m!4873405))

(assert (=> b!4277309 d!1262711))

(declare-fun d!1262713 () Bool)

(declare-fun c!728498 () Bool)

(assert (=> d!1262713 (= c!728498 ((_ is Node!14335) t!3602))))

(declare-fun e!2655598 () Bool)

(assert (=> d!1262713 (= (inv!62700 t!3602) e!2655598)))

(declare-fun b!4277365 () Bool)

(assert (=> b!4277365 (= e!2655598 (inv!62701 t!3602))))

(declare-fun b!4277366 () Bool)

(declare-fun e!2655599 () Bool)

(assert (=> b!4277366 (= e!2655598 e!2655599)))

(declare-fun res!1756285 () Bool)

(assert (=> b!4277366 (= res!1756285 (not ((_ is Leaf!22158) t!3602)))))

(assert (=> b!4277366 (=> res!1756285 e!2655599)))

(declare-fun b!4277367 () Bool)

(assert (=> b!4277367 (= e!2655599 (inv!62702 t!3602))))

(assert (= (and d!1262713 c!728498) b!4277365))

(assert (= (and d!1262713 (not c!728498)) b!4277366))

(assert (= (and b!4277366 (not res!1756285)) b!4277367))

(declare-fun m!4873407 () Bool)

(assert (=> b!4277365 m!4873407))

(declare-fun m!4873409 () Bool)

(assert (=> b!4277367 m!4873409))

(assert (=> start!410864 d!1262713))

(declare-fun b!4277372 () Bool)

(declare-fun e!2655602 () Bool)

(declare-fun tp!1308821 () Bool)

(assert (=> b!4277372 (= e!2655602 (and tp_is_empty!22945 tp!1308821))))

(assert (=> b!4277307 (= tp!1308815 e!2655602)))

(assert (= (and b!4277307 ((_ is Cons!47353) (t!354042 acc!259))) b!4277372))

(declare-fun tp!1308830 () Bool)

(declare-fun b!4277385 () Bool)

(declare-fun tp!1308828 () Bool)

(declare-fun e!2655608 () Bool)

(assert (=> b!4277385 (= e!2655608 (and (inv!62700 (left!35285 (left!35285 t!3602))) tp!1308830 (inv!62700 (right!35615 (left!35285 t!3602))) tp!1308828))))

(declare-fun b!4277387 () Bool)

(declare-fun e!2655610 () Bool)

(declare-fun tp!1308829 () Bool)

(assert (=> b!4277387 (= e!2655610 tp!1308829)))

(declare-fun b!4277386 () Bool)

(assert (=> b!4277386 (= e!2655608 (and (inv!62699 (xs!17641 (left!35285 t!3602))) e!2655610))))

(assert (=> b!4277309 (= tp!1308817 (and (inv!62700 (left!35285 t!3602)) e!2655608))))

(assert (= (and b!4277309 ((_ is Node!14335) (left!35285 t!3602))) b!4277385))

(assert (= b!4277386 b!4277387))

(assert (= (and b!4277309 ((_ is Leaf!22158) (left!35285 t!3602))) b!4277386))

(declare-fun m!4873411 () Bool)

(assert (=> b!4277385 m!4873411))

(declare-fun m!4873413 () Bool)

(assert (=> b!4277385 m!4873413))

(declare-fun m!4873415 () Bool)

(assert (=> b!4277386 m!4873415))

(assert (=> b!4277309 m!4873345))

(declare-fun tp!1308831 () Bool)

(declare-fun b!4277388 () Bool)

(declare-fun tp!1308833 () Bool)

(declare-fun e!2655611 () Bool)

(assert (=> b!4277388 (= e!2655611 (and (inv!62700 (left!35285 (right!35615 t!3602))) tp!1308833 (inv!62700 (right!35615 (right!35615 t!3602))) tp!1308831))))

(declare-fun b!4277390 () Bool)

(declare-fun e!2655612 () Bool)

(declare-fun tp!1308832 () Bool)

(assert (=> b!4277390 (= e!2655612 tp!1308832)))

(declare-fun b!4277389 () Bool)

(assert (=> b!4277389 (= e!2655611 (and (inv!62699 (xs!17641 (right!35615 t!3602))) e!2655612))))

(assert (=> b!4277309 (= tp!1308816 (and (inv!62700 (right!35615 t!3602)) e!2655611))))

(assert (= (and b!4277309 ((_ is Node!14335) (right!35615 t!3602))) b!4277388))

(assert (= b!4277389 b!4277390))

(assert (= (and b!4277309 ((_ is Leaf!22158) (right!35615 t!3602))) b!4277389))

(declare-fun m!4873417 () Bool)

(assert (=> b!4277388 m!4873417))

(declare-fun m!4873419 () Bool)

(assert (=> b!4277388 m!4873419))

(declare-fun m!4873421 () Bool)

(assert (=> b!4277389 m!4873421))

(assert (=> b!4277309 m!4873347))

(declare-fun b!4277391 () Bool)

(declare-fun e!2655613 () Bool)

(declare-fun tp!1308834 () Bool)

(assert (=> b!4277391 (= e!2655613 (and tp_is_empty!22945 tp!1308834))))

(assert (=> b!4277308 (= tp!1308818 e!2655613)))

(assert (= (and b!4277308 ((_ is Cons!47353) (innerList!14395 (xs!17641 t!3602)))) b!4277391))

(check-sat (not b!4277386) (not b!4277391) (not b!4277388) (not b!4277385) (not b!4277364) (not b!4277389) (not b!4277367) (not d!1262703) (not b!4277319) (not b!4277365) (not b!4277387) (not b!4277325) (not b!4277362) tp_is_empty!22945 (not b!4277359) (not b!4277372) (not b!4277326) (not b!4277390) (not d!1262691) (not b!4277346) (not d!1262695) (not b!4277309) (not b!4277361) (not b!4277345) (not b!4277320) (not d!1262697))
(check-sat)
