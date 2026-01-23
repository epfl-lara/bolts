; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532922 () Bool)

(assert start!532922)

(declare-fun e!3146296 () Bool)

(declare-fun tp!1410499 () Bool)

(declare-datatypes ((T!104096 0))(
  ( (T!104097 (val!23502 Int)) )
))
(declare-datatypes ((List!58412 0))(
  ( (Nil!58288) (Cons!58288 (h!64736 T!104096) (t!370915 List!58412)) )
))
(declare-datatypes ((IArray!31061 0))(
  ( (IArray!31062 (innerList!15588 List!58412)) )
))
(declare-datatypes ((Conc!15500 0))(
  ( (Node!15500 (left!42679 Conc!15500) (right!43009 Conc!15500) (csize!31230 Int) (cheight!15711 Int)) (Leaf!25714 (xs!18826 IArray!31061) (csize!31231 Int)) (Empty!15500) )
))
(declare-fun t!4198 () Conc!15500)

(declare-fun tp!1410498 () Bool)

(declare-fun b!5037466 () Bool)

(declare-fun inv!77084 (Conc!15500) Bool)

(assert (=> b!5037466 (= e!3146296 (and (inv!77084 (left!42679 t!4198)) tp!1410499 (inv!77084 (right!43009 t!4198)) tp!1410498))))

(declare-fun b!5037467 () Bool)

(declare-fun e!3146295 () Bool)

(declare-fun tp!1410500 () Bool)

(assert (=> b!5037467 (= e!3146295 tp!1410500)))

(declare-fun b!5037468 () Bool)

(declare-fun res!2146363 () Bool)

(declare-fun e!3146294 () Bool)

(assert (=> b!5037468 (=> (not res!2146363) (not e!3146294))))

(declare-fun i!618 () Int)

(declare-fun size!38874 (Conc!15500) Int)

(assert (=> b!5037468 (= res!2146363 (<= i!618 (size!38874 t!4198)))))

(declare-fun b!5037469 () Bool)

(declare-fun e!3146298 () Bool)

(declare-fun e!3146297 () Bool)

(assert (=> b!5037469 (= e!3146298 e!3146297)))

(declare-fun res!2146360 () Bool)

(assert (=> b!5037469 (=> (not res!2146360) (not e!3146297))))

(declare-datatypes ((tuple2!63222 0))(
  ( (tuple2!63223 (_1!34914 List!58412) (_2!34914 List!58412)) )
))
(declare-fun lt!2083874 () tuple2!63222)

(declare-fun lt!2083873 () List!58412)

(assert (=> b!5037469 (= res!2146360 (= (_2!34914 lt!2083874) lt!2083873))))

(declare-fun lt!2083875 () List!58412)

(declare-fun drop!2624 (List!58412 Int) List!58412)

(assert (=> b!5037469 (= lt!2083873 (drop!2624 lt!2083875 i!618))))

(declare-fun b!5037470 () Bool)

(declare-fun res!2146361 () Bool)

(assert (=> b!5037470 (=> (not res!2146361) (not e!3146294))))

(assert (=> b!5037470 (= res!2146361 (<= 0 i!618))))

(declare-fun b!5037471 () Bool)

(declare-fun inv!77085 (IArray!31061) Bool)

(assert (=> b!5037471 (= e!3146296 (and (inv!77085 (xs!18826 t!4198)) e!3146295))))

(declare-fun res!2146359 () Bool)

(assert (=> start!532922 (=> (not res!2146359) (not e!3146294))))

(declare-fun isBalanced!4362 (Conc!15500) Bool)

(assert (=> start!532922 (= res!2146359 (isBalanced!4362 t!4198))))

(assert (=> start!532922 e!3146294))

(assert (=> start!532922 (and (inv!77084 t!4198) e!3146296)))

(assert (=> start!532922 true))

(declare-fun b!5037472 () Bool)

(assert (=> b!5037472 (= e!3146294 e!3146298)))

(declare-fun res!2146362 () Bool)

(assert (=> b!5037472 (=> (not res!2146362) (not e!3146298))))

(declare-fun take!817 (List!58412 Int) List!58412)

(assert (=> b!5037472 (= res!2146362 (= (_1!34914 lt!2083874) (take!817 lt!2083875 i!618)))))

(declare-fun splitAtIndex!201 (List!58412 Int) tuple2!63222)

(assert (=> b!5037472 (= lt!2083874 (splitAtIndex!201 lt!2083875 i!618))))

(declare-fun list!18891 (IArray!31061) List!58412)

(assert (=> b!5037472 (= lt!2083875 (list!18891 (xs!18826 t!4198)))))

(declare-fun b!5037473 () Bool)

(declare-fun res!2146358 () Bool)

(assert (=> b!5037473 (=> (not res!2146358) (not e!3146294))))

(get-info :version)

(assert (=> b!5037473 (= res!2146358 (and (not ((_ is Empty!15500) t!4198)) ((_ is Leaf!25714) t!4198) (> i!618 0) (not (= i!618 (csize!31231 t!4198)))))))

(declare-fun b!5037474 () Bool)

(declare-fun slice!849 (List!58412 Int Int) List!58412)

(assert (=> b!5037474 (= e!3146297 (not (= (_1!34914 lt!2083874) (slice!849 lt!2083875 0 i!618))))))

(declare-fun size!38875 (List!58412) Int)

(assert (=> b!5037474 (= lt!2083873 (slice!849 lt!2083875 i!618 (size!38875 lt!2083875)))))

(declare-datatypes ((Unit!149487 0))(
  ( (Unit!149488) )
))
(declare-fun lt!2083876 () Unit!149487)

(declare-fun dropLemma!70 (List!58412 Int) Unit!149487)

(assert (=> b!5037474 (= lt!2083876 (dropLemma!70 lt!2083875 i!618))))

(assert (= (and start!532922 res!2146359) b!5037470))

(assert (= (and b!5037470 res!2146361) b!5037468))

(assert (= (and b!5037468 res!2146363) b!5037473))

(assert (= (and b!5037473 res!2146358) b!5037472))

(assert (= (and b!5037472 res!2146362) b!5037469))

(assert (= (and b!5037469 res!2146360) b!5037474))

(assert (= (and start!532922 ((_ is Node!15500) t!4198)) b!5037466))

(assert (= b!5037471 b!5037467))

(assert (= (and start!532922 ((_ is Leaf!25714) t!4198)) b!5037471))

(declare-fun m!6071364 () Bool)

(assert (=> b!5037469 m!6071364))

(declare-fun m!6071366 () Bool)

(assert (=> b!5037474 m!6071366))

(declare-fun m!6071368 () Bool)

(assert (=> b!5037474 m!6071368))

(assert (=> b!5037474 m!6071368))

(declare-fun m!6071370 () Bool)

(assert (=> b!5037474 m!6071370))

(declare-fun m!6071372 () Bool)

(assert (=> b!5037474 m!6071372))

(declare-fun m!6071374 () Bool)

(assert (=> b!5037472 m!6071374))

(declare-fun m!6071376 () Bool)

(assert (=> b!5037472 m!6071376))

(declare-fun m!6071378 () Bool)

(assert (=> b!5037472 m!6071378))

(declare-fun m!6071380 () Bool)

(assert (=> b!5037471 m!6071380))

(declare-fun m!6071382 () Bool)

(assert (=> b!5037466 m!6071382))

(declare-fun m!6071384 () Bool)

(assert (=> b!5037466 m!6071384))

(declare-fun m!6071386 () Bool)

(assert (=> b!5037468 m!6071386))

(declare-fun m!6071388 () Bool)

(assert (=> start!532922 m!6071388))

(declare-fun m!6071390 () Bool)

(assert (=> start!532922 m!6071390))

(check-sat (not b!5037467) (not b!5037474) (not b!5037471) (not start!532922) (not b!5037469) (not b!5037468) (not b!5037472) (not b!5037466))
(check-sat)
(get-model)

(declare-fun d!1620310 () Bool)

(declare-fun c!862952 () Bool)

(assert (=> d!1620310 (= c!862952 ((_ is Node!15500) (left!42679 t!4198)))))

(declare-fun e!3146305 () Bool)

(assert (=> d!1620310 (= (inv!77084 (left!42679 t!4198)) e!3146305)))

(declare-fun b!5037485 () Bool)

(declare-fun inv!77086 (Conc!15500) Bool)

(assert (=> b!5037485 (= e!3146305 (inv!77086 (left!42679 t!4198)))))

(declare-fun b!5037486 () Bool)

(declare-fun e!3146306 () Bool)

(assert (=> b!5037486 (= e!3146305 e!3146306)))

(declare-fun res!2146366 () Bool)

(assert (=> b!5037486 (= res!2146366 (not ((_ is Leaf!25714) (left!42679 t!4198))))))

(assert (=> b!5037486 (=> res!2146366 e!3146306)))

(declare-fun b!5037487 () Bool)

(declare-fun inv!77087 (Conc!15500) Bool)

(assert (=> b!5037487 (= e!3146306 (inv!77087 (left!42679 t!4198)))))

(assert (= (and d!1620310 c!862952) b!5037485))

(assert (= (and d!1620310 (not c!862952)) b!5037486))

(assert (= (and b!5037486 (not res!2146366)) b!5037487))

(declare-fun m!6071392 () Bool)

(assert (=> b!5037485 m!6071392))

(declare-fun m!6071394 () Bool)

(assert (=> b!5037487 m!6071394))

(assert (=> b!5037466 d!1620310))

(declare-fun d!1620314 () Bool)

(declare-fun c!862957 () Bool)

(assert (=> d!1620314 (= c!862957 ((_ is Node!15500) (right!43009 t!4198)))))

(declare-fun e!3146313 () Bool)

(assert (=> d!1620314 (= (inv!77084 (right!43009 t!4198)) e!3146313)))

(declare-fun b!5037498 () Bool)

(assert (=> b!5037498 (= e!3146313 (inv!77086 (right!43009 t!4198)))))

(declare-fun b!5037499 () Bool)

(declare-fun e!3146314 () Bool)

(assert (=> b!5037499 (= e!3146313 e!3146314)))

(declare-fun res!2146369 () Bool)

(assert (=> b!5037499 (= res!2146369 (not ((_ is Leaf!25714) (right!43009 t!4198))))))

(assert (=> b!5037499 (=> res!2146369 e!3146314)))

(declare-fun b!5037500 () Bool)

(assert (=> b!5037500 (= e!3146314 (inv!77087 (right!43009 t!4198)))))

(assert (= (and d!1620314 c!862957) b!5037498))

(assert (= (and d!1620314 (not c!862957)) b!5037499))

(assert (= (and b!5037499 (not res!2146369)) b!5037500))

(declare-fun m!6071396 () Bool)

(assert (=> b!5037498 m!6071396))

(declare-fun m!6071398 () Bool)

(assert (=> b!5037500 m!6071398))

(assert (=> b!5037466 d!1620314))

(declare-fun d!1620316 () Bool)

(assert (=> d!1620316 (= (inv!77085 (xs!18826 t!4198)) (<= (size!38875 (innerList!15588 (xs!18826 t!4198))) 2147483647))))

(declare-fun bs!1188790 () Bool)

(assert (= bs!1188790 d!1620316))

(declare-fun m!6071400 () Bool)

(assert (=> bs!1188790 m!6071400))

(assert (=> b!5037471 d!1620316))

(declare-fun d!1620318 () Bool)

(declare-fun e!3146334 () Bool)

(assert (=> d!1620318 e!3146334))

(declare-fun res!2146373 () Bool)

(assert (=> d!1620318 (=> (not res!2146373) (not e!3146334))))

(declare-fun lt!2083886 () List!58412)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10351 (List!58412) (InoxSet T!104096))

(assert (=> d!1620318 (= res!2146373 (= ((_ map implies) (content!10351 lt!2083886) (content!10351 lt!2083875)) ((as const (InoxSet T!104096)) true)))))

(declare-fun e!3146333 () List!58412)

(assert (=> d!1620318 (= lt!2083886 e!3146333)))

(declare-fun c!862973 () Bool)

(assert (=> d!1620318 (= c!862973 (or ((_ is Nil!58288) lt!2083875) (<= i!618 0)))))

(assert (=> d!1620318 (= (take!817 lt!2083875 i!618) lt!2083886)))

(declare-fun b!5037530 () Bool)

(declare-fun e!3146331 () Int)

(assert (=> b!5037530 (= e!3146331 i!618)))

(declare-fun b!5037531 () Bool)

(declare-fun e!3146332 () Int)

(assert (=> b!5037531 (= e!3146334 (= (size!38875 lt!2083886) e!3146332))))

(declare-fun c!862972 () Bool)

(assert (=> b!5037531 (= c!862972 (<= i!618 0))))

(declare-fun b!5037532 () Bool)

(assert (=> b!5037532 (= e!3146333 Nil!58288)))

(declare-fun b!5037533 () Bool)

(assert (=> b!5037533 (= e!3146331 (size!38875 lt!2083875))))

(declare-fun b!5037534 () Bool)

(assert (=> b!5037534 (= e!3146332 e!3146331)))

(declare-fun c!862971 () Bool)

(assert (=> b!5037534 (= c!862971 (>= i!618 (size!38875 lt!2083875)))))

(declare-fun b!5037535 () Bool)

(assert (=> b!5037535 (= e!3146332 0)))

(declare-fun b!5037536 () Bool)

(assert (=> b!5037536 (= e!3146333 (Cons!58288 (h!64736 lt!2083875) (take!817 (t!370915 lt!2083875) (- i!618 1))))))

(assert (= (and d!1620318 c!862973) b!5037532))

(assert (= (and d!1620318 (not c!862973)) b!5037536))

(assert (= (and d!1620318 res!2146373) b!5037531))

(assert (= (and b!5037531 c!862972) b!5037535))

(assert (= (and b!5037531 (not c!862972)) b!5037534))

(assert (= (and b!5037534 c!862971) b!5037533))

(assert (= (and b!5037534 (not c!862971)) b!5037530))

(declare-fun m!6071410 () Bool)

(assert (=> b!5037531 m!6071410))

(assert (=> b!5037533 m!6071368))

(assert (=> b!5037534 m!6071368))

(declare-fun m!6071412 () Bool)

(assert (=> d!1620318 m!6071412))

(declare-fun m!6071414 () Bool)

(assert (=> d!1620318 m!6071414))

(declare-fun m!6071416 () Bool)

(assert (=> b!5037536 m!6071416))

(assert (=> b!5037472 d!1620318))

(declare-fun b!5037559 () Bool)

(declare-fun res!2146385 () Bool)

(declare-fun e!3146348 () Bool)

(assert (=> b!5037559 (=> (not res!2146385) (not e!3146348))))

(declare-fun lt!2083896 () tuple2!63222)

(assert (=> b!5037559 (= res!2146385 (= (_1!34914 lt!2083896) (take!817 lt!2083875 i!618)))))

(declare-fun b!5037560 () Bool)

(declare-fun lt!2083897 () tuple2!63222)

(assert (=> b!5037560 (= lt!2083897 (splitAtIndex!201 (t!370915 lt!2083875) (- i!618 1)))))

(declare-fun e!3146346 () tuple2!63222)

(assert (=> b!5037560 (= e!3146346 (tuple2!63223 (Cons!58288 (h!64736 lt!2083875) (_1!34914 lt!2083897)) (_2!34914 lt!2083897)))))

(declare-fun b!5037561 () Bool)

(assert (=> b!5037561 (= e!3146348 (= (_2!34914 lt!2083896) (drop!2624 lt!2083875 i!618)))))

(declare-fun b!5037562 () Bool)

(assert (=> b!5037562 (= e!3146346 (tuple2!63223 Nil!58288 lt!2083875))))

(declare-fun d!1620322 () Bool)

(assert (=> d!1620322 e!3146348))

(declare-fun res!2146384 () Bool)

(assert (=> d!1620322 (=> (not res!2146384) (not e!3146348))))

(declare-fun ++!12719 (List!58412 List!58412) List!58412)

(assert (=> d!1620322 (= res!2146384 (= (++!12719 (_1!34914 lt!2083896) (_2!34914 lt!2083896)) lt!2083875))))

(declare-fun e!3146347 () tuple2!63222)

(assert (=> d!1620322 (= lt!2083896 e!3146347)))

(declare-fun c!862981 () Bool)

(assert (=> d!1620322 (= c!862981 ((_ is Nil!58288) lt!2083875))))

(assert (=> d!1620322 (= (splitAtIndex!201 lt!2083875 i!618) lt!2083896)))

(declare-fun b!5037563 () Bool)

(assert (=> b!5037563 (= e!3146347 e!3146346)))

(declare-fun c!862980 () Bool)

(assert (=> b!5037563 (= c!862980 (<= i!618 0))))

(declare-fun b!5037564 () Bool)

(assert (=> b!5037564 (= e!3146347 (tuple2!63223 Nil!58288 Nil!58288))))

(assert (= (and d!1620322 c!862981) b!5037564))

(assert (= (and d!1620322 (not c!862981)) b!5037563))

(assert (= (and b!5037563 c!862980) b!5037562))

(assert (= (and b!5037563 (not c!862980)) b!5037560))

(assert (= (and d!1620322 res!2146384) b!5037559))

(assert (= (and b!5037559 res!2146385) b!5037561))

(assert (=> b!5037559 m!6071374))

(declare-fun m!6071426 () Bool)

(assert (=> b!5037560 m!6071426))

(assert (=> b!5037561 m!6071364))

(declare-fun m!6071428 () Bool)

(assert (=> d!1620322 m!6071428))

(assert (=> b!5037472 d!1620322))

(declare-fun d!1620330 () Bool)

(assert (=> d!1620330 (= (list!18891 (xs!18826 t!4198)) (innerList!15588 (xs!18826 t!4198)))))

(assert (=> b!5037472 d!1620330))

(declare-fun d!1620332 () Bool)

(declare-fun lt!2083900 () Int)

(declare-fun list!18893 (Conc!15500) List!58412)

(assert (=> d!1620332 (= lt!2083900 (size!38875 (list!18893 t!4198)))))

(assert (=> d!1620332 (= lt!2083900 (ite ((_ is Empty!15500) t!4198) 0 (ite ((_ is Leaf!25714) t!4198) (csize!31231 t!4198) (csize!31230 t!4198))))))

(assert (=> d!1620332 (= (size!38874 t!4198) lt!2083900)))

(declare-fun bs!1188792 () Bool)

(assert (= bs!1188792 d!1620332))

(declare-fun m!6071438 () Bool)

(assert (=> bs!1188792 m!6071438))

(assert (=> bs!1188792 m!6071438))

(declare-fun m!6071440 () Bool)

(assert (=> bs!1188792 m!6071440))

(assert (=> b!5037468 d!1620332))

(declare-fun d!1620338 () Bool)

(declare-fun res!2146421 () Bool)

(declare-fun e!3146369 () Bool)

(assert (=> d!1620338 (=> res!2146421 e!3146369)))

(assert (=> d!1620338 (= res!2146421 (not ((_ is Node!15500) t!4198)))))

(assert (=> d!1620338 (= (isBalanced!4362 t!4198) e!3146369)))

(declare-fun b!5037610 () Bool)

(declare-fun res!2146425 () Bool)

(declare-fun e!3146370 () Bool)

(assert (=> b!5037610 (=> (not res!2146425) (not e!3146370))))

(declare-fun height!2079 (Conc!15500) Int)

(assert (=> b!5037610 (= res!2146425 (<= (- (height!2079 (left!42679 t!4198)) (height!2079 (right!43009 t!4198))) 1))))

(declare-fun b!5037611 () Bool)

(declare-fun isEmpty!31516 (Conc!15500) Bool)

(assert (=> b!5037611 (= e!3146370 (not (isEmpty!31516 (right!43009 t!4198))))))

(declare-fun b!5037612 () Bool)

(declare-fun res!2146422 () Bool)

(assert (=> b!5037612 (=> (not res!2146422) (not e!3146370))))

(assert (=> b!5037612 (= res!2146422 (isBalanced!4362 (left!42679 t!4198)))))

(declare-fun b!5037613 () Bool)

(declare-fun res!2146424 () Bool)

(assert (=> b!5037613 (=> (not res!2146424) (not e!3146370))))

(assert (=> b!5037613 (= res!2146424 (isBalanced!4362 (right!43009 t!4198)))))

(declare-fun b!5037614 () Bool)

(declare-fun res!2146426 () Bool)

(assert (=> b!5037614 (=> (not res!2146426) (not e!3146370))))

(assert (=> b!5037614 (= res!2146426 (not (isEmpty!31516 (left!42679 t!4198))))))

(declare-fun b!5037615 () Bool)

(assert (=> b!5037615 (= e!3146369 e!3146370)))

(declare-fun res!2146423 () Bool)

(assert (=> b!5037615 (=> (not res!2146423) (not e!3146370))))

(assert (=> b!5037615 (= res!2146423 (<= (- 1) (- (height!2079 (left!42679 t!4198)) (height!2079 (right!43009 t!4198)))))))

(assert (= (and d!1620338 (not res!2146421)) b!5037615))

(assert (= (and b!5037615 res!2146423) b!5037610))

(assert (= (and b!5037610 res!2146425) b!5037612))

(assert (= (and b!5037612 res!2146422) b!5037613))

(assert (= (and b!5037613 res!2146424) b!5037614))

(assert (= (and b!5037614 res!2146426) b!5037611))

(declare-fun m!6071458 () Bool)

(assert (=> b!5037615 m!6071458))

(declare-fun m!6071460 () Bool)

(assert (=> b!5037615 m!6071460))

(declare-fun m!6071462 () Bool)

(assert (=> b!5037614 m!6071462))

(declare-fun m!6071464 () Bool)

(assert (=> b!5037611 m!6071464))

(declare-fun m!6071466 () Bool)

(assert (=> b!5037612 m!6071466))

(declare-fun m!6071468 () Bool)

(assert (=> b!5037613 m!6071468))

(assert (=> b!5037610 m!6071458))

(assert (=> b!5037610 m!6071460))

(assert (=> start!532922 d!1620338))

(declare-fun d!1620344 () Bool)

(declare-fun c!862987 () Bool)

(assert (=> d!1620344 (= c!862987 ((_ is Node!15500) t!4198))))

(declare-fun e!3146371 () Bool)

(assert (=> d!1620344 (= (inv!77084 t!4198) e!3146371)))

(declare-fun b!5037616 () Bool)

(assert (=> b!5037616 (= e!3146371 (inv!77086 t!4198))))

(declare-fun b!5037617 () Bool)

(declare-fun e!3146372 () Bool)

(assert (=> b!5037617 (= e!3146371 e!3146372)))

(declare-fun res!2146427 () Bool)

(assert (=> b!5037617 (= res!2146427 (not ((_ is Leaf!25714) t!4198)))))

(assert (=> b!5037617 (=> res!2146427 e!3146372)))

(declare-fun b!5037618 () Bool)

(assert (=> b!5037618 (= e!3146372 (inv!77087 t!4198))))

(assert (= (and d!1620344 c!862987) b!5037616))

(assert (= (and d!1620344 (not c!862987)) b!5037617))

(assert (= (and b!5037617 (not res!2146427)) b!5037618))

(declare-fun m!6071470 () Bool)

(assert (=> b!5037616 m!6071470))

(declare-fun m!6071472 () Bool)

(assert (=> b!5037618 m!6071472))

(assert (=> start!532922 d!1620344))

(declare-fun d!1620346 () Bool)

(assert (=> d!1620346 (= (slice!849 lt!2083875 0 i!618) (take!817 (drop!2624 lt!2083875 0) (- i!618 0)))))

(declare-fun bs!1188793 () Bool)

(assert (= bs!1188793 d!1620346))

(declare-fun m!6071474 () Bool)

(assert (=> bs!1188793 m!6071474))

(assert (=> bs!1188793 m!6071474))

(declare-fun m!6071476 () Bool)

(assert (=> bs!1188793 m!6071476))

(assert (=> b!5037474 d!1620346))

(declare-fun d!1620348 () Bool)

(assert (=> d!1620348 (= (slice!849 lt!2083875 i!618 (size!38875 lt!2083875)) (take!817 (drop!2624 lt!2083875 i!618) (- (size!38875 lt!2083875) i!618)))))

(declare-fun bs!1188794 () Bool)

(assert (= bs!1188794 d!1620348))

(assert (=> bs!1188794 m!6071364))

(assert (=> bs!1188794 m!6071364))

(declare-fun m!6071478 () Bool)

(assert (=> bs!1188794 m!6071478))

(assert (=> b!5037474 d!1620348))

(declare-fun d!1620350 () Bool)

(declare-fun lt!2083905 () Int)

(assert (=> d!1620350 (>= lt!2083905 0)))

(declare-fun e!3146385 () Int)

(assert (=> d!1620350 (= lt!2083905 e!3146385)))

(declare-fun c!862998 () Bool)

(assert (=> d!1620350 (= c!862998 ((_ is Nil!58288) lt!2083875))))

(assert (=> d!1620350 (= (size!38875 lt!2083875) lt!2083905)))

(declare-fun b!5037641 () Bool)

(assert (=> b!5037641 (= e!3146385 0)))

(declare-fun b!5037642 () Bool)

(assert (=> b!5037642 (= e!3146385 (+ 1 (size!38875 (t!370915 lt!2083875))))))

(assert (= (and d!1620350 c!862998) b!5037641))

(assert (= (and d!1620350 (not c!862998)) b!5037642))

(declare-fun m!6071480 () Bool)

(assert (=> b!5037642 m!6071480))

(assert (=> b!5037474 d!1620350))

(declare-fun d!1620352 () Bool)

(assert (=> d!1620352 (= (drop!2624 lt!2083875 i!618) (slice!849 lt!2083875 i!618 (size!38875 lt!2083875)))))

(declare-fun lt!2083909 () Unit!149487)

(declare-fun choose!37252 (List!58412 Int) Unit!149487)

(assert (=> d!1620352 (= lt!2083909 (choose!37252 lt!2083875 i!618))))

(declare-fun e!3146393 () Bool)

(assert (=> d!1620352 e!3146393))

(declare-fun res!2146433 () Bool)

(assert (=> d!1620352 (=> (not res!2146433) (not e!3146393))))

(assert (=> d!1620352 (= res!2146433 (<= 0 i!618))))

(assert (=> d!1620352 (= (dropLemma!70 lt!2083875 i!618) lt!2083909)))

(declare-fun b!5037654 () Bool)

(assert (=> b!5037654 (= e!3146393 (<= i!618 (size!38875 lt!2083875)))))

(assert (= (and d!1620352 res!2146433) b!5037654))

(assert (=> d!1620352 m!6071364))

(assert (=> d!1620352 m!6071368))

(assert (=> d!1620352 m!6071368))

(assert (=> d!1620352 m!6071370))

(declare-fun m!6071490 () Bool)

(assert (=> d!1620352 m!6071490))

(assert (=> b!5037654 m!6071368))

(assert (=> b!5037474 d!1620352))

(declare-fun b!5037701 () Bool)

(declare-fun e!3146423 () List!58412)

(assert (=> b!5037701 (= e!3146423 Nil!58288)))

(declare-fun b!5037702 () Bool)

(declare-fun e!3146422 () List!58412)

(assert (=> b!5037702 (= e!3146422 (drop!2624 (t!370915 lt!2083875) (- i!618 1)))))

(declare-fun b!5037703 () Bool)

(declare-fun e!3146424 () Bool)

(declare-fun lt!2083918 () List!58412)

(declare-fun e!3146425 () Int)

(assert (=> b!5037703 (= e!3146424 (= (size!38875 lt!2083918) e!3146425))))

(declare-fun c!863014 () Bool)

(assert (=> b!5037703 (= c!863014 (<= i!618 0))))

(declare-fun b!5037704 () Bool)

(declare-fun e!3146421 () Int)

(declare-fun call!351380 () Int)

(assert (=> b!5037704 (= e!3146421 (- call!351380 i!618))))

(declare-fun bm!351375 () Bool)

(assert (=> bm!351375 (= call!351380 (size!38875 lt!2083875))))

(declare-fun b!5037705 () Bool)

(assert (=> b!5037705 (= e!3146425 call!351380)))

(declare-fun d!1620358 () Bool)

(assert (=> d!1620358 e!3146424))

(declare-fun res!2146439 () Bool)

(assert (=> d!1620358 (=> (not res!2146439) (not e!3146424))))

(assert (=> d!1620358 (= res!2146439 (= ((_ map implies) (content!10351 lt!2083918) (content!10351 lt!2083875)) ((as const (InoxSet T!104096)) true)))))

(assert (=> d!1620358 (= lt!2083918 e!3146423)))

(declare-fun c!863015 () Bool)

(assert (=> d!1620358 (= c!863015 ((_ is Nil!58288) lt!2083875))))

(assert (=> d!1620358 (= (drop!2624 lt!2083875 i!618) lt!2083918)))

(declare-fun b!5037706 () Bool)

(assert (=> b!5037706 (= e!3146423 e!3146422)))

(declare-fun c!863017 () Bool)

(assert (=> b!5037706 (= c!863017 (<= i!618 0))))

(declare-fun b!5037707 () Bool)

(assert (=> b!5037707 (= e!3146422 lt!2083875)))

(declare-fun b!5037708 () Bool)

(assert (=> b!5037708 (= e!3146421 0)))

(declare-fun b!5037709 () Bool)

(assert (=> b!5037709 (= e!3146425 e!3146421)))

(declare-fun c!863016 () Bool)

(assert (=> b!5037709 (= c!863016 (>= i!618 call!351380))))

(assert (= (and d!1620358 c!863015) b!5037701))

(assert (= (and d!1620358 (not c!863015)) b!5037706))

(assert (= (and b!5037706 c!863017) b!5037707))

(assert (= (and b!5037706 (not c!863017)) b!5037702))

(assert (= (and d!1620358 res!2146439) b!5037703))

(assert (= (and b!5037703 c!863014) b!5037705))

(assert (= (and b!5037703 (not c!863014)) b!5037709))

(assert (= (and b!5037709 c!863016) b!5037708))

(assert (= (and b!5037709 (not c!863016)) b!5037704))

(assert (= (or b!5037705 b!5037709 b!5037704) bm!351375))

(declare-fun m!6071514 () Bool)

(assert (=> b!5037702 m!6071514))

(declare-fun m!6071516 () Bool)

(assert (=> b!5037703 m!6071516))

(assert (=> bm!351375 m!6071368))

(declare-fun m!6071518 () Bool)

(assert (=> d!1620358 m!6071518))

(assert (=> d!1620358 m!6071414))

(assert (=> b!5037469 d!1620358))

(declare-fun tp!1410524 () Bool)

(declare-fun tp!1410522 () Bool)

(declare-fun e!3146431 () Bool)

(declare-fun b!5037718 () Bool)

(assert (=> b!5037718 (= e!3146431 (and (inv!77084 (left!42679 (left!42679 t!4198))) tp!1410522 (inv!77084 (right!43009 (left!42679 t!4198))) tp!1410524))))

(declare-fun b!5037720 () Bool)

(declare-fun e!3146430 () Bool)

(declare-fun tp!1410523 () Bool)

(assert (=> b!5037720 (= e!3146430 tp!1410523)))

(declare-fun b!5037719 () Bool)

(assert (=> b!5037719 (= e!3146431 (and (inv!77085 (xs!18826 (left!42679 t!4198))) e!3146430))))

(assert (=> b!5037466 (= tp!1410499 (and (inv!77084 (left!42679 t!4198)) e!3146431))))

(assert (= (and b!5037466 ((_ is Node!15500) (left!42679 t!4198))) b!5037718))

(assert (= b!5037719 b!5037720))

(assert (= (and b!5037466 ((_ is Leaf!25714) (left!42679 t!4198))) b!5037719))

(declare-fun m!6071520 () Bool)

(assert (=> b!5037718 m!6071520))

(declare-fun m!6071522 () Bool)

(assert (=> b!5037718 m!6071522))

(declare-fun m!6071524 () Bool)

(assert (=> b!5037719 m!6071524))

(assert (=> b!5037466 m!6071382))

(declare-fun b!5037721 () Bool)

(declare-fun e!3146433 () Bool)

(declare-fun tp!1410525 () Bool)

(declare-fun tp!1410527 () Bool)

(assert (=> b!5037721 (= e!3146433 (and (inv!77084 (left!42679 (right!43009 t!4198))) tp!1410525 (inv!77084 (right!43009 (right!43009 t!4198))) tp!1410527))))

(declare-fun b!5037723 () Bool)

(declare-fun e!3146432 () Bool)

(declare-fun tp!1410526 () Bool)

(assert (=> b!5037723 (= e!3146432 tp!1410526)))

(declare-fun b!5037722 () Bool)

(assert (=> b!5037722 (= e!3146433 (and (inv!77085 (xs!18826 (right!43009 t!4198))) e!3146432))))

(assert (=> b!5037466 (= tp!1410498 (and (inv!77084 (right!43009 t!4198)) e!3146433))))

(assert (= (and b!5037466 ((_ is Node!15500) (right!43009 t!4198))) b!5037721))

(assert (= b!5037722 b!5037723))

(assert (= (and b!5037466 ((_ is Leaf!25714) (right!43009 t!4198))) b!5037722))

(declare-fun m!6071526 () Bool)

(assert (=> b!5037721 m!6071526))

(declare-fun m!6071528 () Bool)

(assert (=> b!5037721 m!6071528))

(declare-fun m!6071530 () Bool)

(assert (=> b!5037722 m!6071530))

(assert (=> b!5037466 m!6071384))

(declare-fun b!5037728 () Bool)

(declare-fun e!3146436 () Bool)

(declare-fun tp_is_empty!36763 () Bool)

(declare-fun tp!1410530 () Bool)

(assert (=> b!5037728 (= e!3146436 (and tp_is_empty!36763 tp!1410530))))

(assert (=> b!5037467 (= tp!1410500 e!3146436)))

(assert (= (and b!5037467 ((_ is Cons!58288) (innerList!15588 (xs!18826 t!4198)))) b!5037728))

(check-sat (not b!5037718) (not b!5037614) (not d!1620352) (not b!5037485) (not bm!351375) (not d!1620348) (not b!5037702) (not d!1620318) (not b!5037720) (not b!5037533) (not b!5037560) (not b!5037487) (not b!5037728) (not b!5037561) (not b!5037613) (not b!5037616) (not b!5037610) (not d!1620358) (not b!5037615) (not b!5037703) (not b!5037721) (not b!5037612) tp_is_empty!36763 (not b!5037531) (not b!5037536) (not b!5037618) (not b!5037498) (not b!5037722) (not b!5037642) (not d!1620322) (not b!5037719) (not b!5037723) (not d!1620332) (not b!5037611) (not d!1620316) (not b!5037534) (not b!5037466) (not b!5037654) (not d!1620346) (not b!5037559) (not b!5037500))
(check-sat)
(get-model)

(declare-fun d!1620368 () Bool)

(declare-fun c!863025 () Bool)

(assert (=> d!1620368 (= c!863025 ((_ is Nil!58288) lt!2083918))))

(declare-fun e!3146446 () (InoxSet T!104096))

(assert (=> d!1620368 (= (content!10351 lt!2083918) e!3146446)))

(declare-fun b!5037745 () Bool)

(assert (=> b!5037745 (= e!3146446 ((as const (Array T!104096 Bool)) false))))

(declare-fun b!5037746 () Bool)

(assert (=> b!5037746 (= e!3146446 ((_ map or) (store ((as const (Array T!104096 Bool)) false) (h!64736 lt!2083918) true) (content!10351 (t!370915 lt!2083918))))))

(assert (= (and d!1620368 c!863025) b!5037745))

(assert (= (and d!1620368 (not c!863025)) b!5037746))

(declare-fun m!6071542 () Bool)

(assert (=> b!5037746 m!6071542))

(declare-fun m!6071544 () Bool)

(assert (=> b!5037746 m!6071544))

(assert (=> d!1620358 d!1620368))

(declare-fun d!1620376 () Bool)

(declare-fun c!863027 () Bool)

(assert (=> d!1620376 (= c!863027 ((_ is Nil!58288) lt!2083875))))

(declare-fun e!3146448 () (InoxSet T!104096))

(assert (=> d!1620376 (= (content!10351 lt!2083875) e!3146448)))

(declare-fun b!5037749 () Bool)

(assert (=> b!5037749 (= e!3146448 ((as const (Array T!104096 Bool)) false))))

(declare-fun b!5037750 () Bool)

(assert (=> b!5037750 (= e!3146448 ((_ map or) (store ((as const (Array T!104096 Bool)) false) (h!64736 lt!2083875) true) (content!10351 (t!370915 lt!2083875))))))

(assert (= (and d!1620376 c!863027) b!5037749))

(assert (= (and d!1620376 (not c!863027)) b!5037750))

(declare-fun m!6071550 () Bool)

(assert (=> b!5037750 m!6071550))

(declare-fun m!6071552 () Bool)

(assert (=> b!5037750 m!6071552))

(assert (=> d!1620358 d!1620376))

(declare-fun d!1620380 () Bool)

(declare-fun e!3146453 () Bool)

(assert (=> d!1620380 e!3146453))

(declare-fun res!2146442 () Bool)

(assert (=> d!1620380 (=> (not res!2146442) (not e!3146453))))

(declare-fun lt!2083920 () List!58412)

(assert (=> d!1620380 (= res!2146442 (= ((_ map implies) (content!10351 lt!2083920) (content!10351 (t!370915 lt!2083875))) ((as const (InoxSet T!104096)) true)))))

(declare-fun e!3146452 () List!58412)

(assert (=> d!1620380 (= lt!2083920 e!3146452)))

(declare-fun c!863031 () Bool)

(assert (=> d!1620380 (= c!863031 (or ((_ is Nil!58288) (t!370915 lt!2083875)) (<= (- i!618 1) 0)))))

(assert (=> d!1620380 (= (take!817 (t!370915 lt!2083875) (- i!618 1)) lt!2083920)))

(declare-fun b!5037753 () Bool)

(declare-fun e!3146450 () Int)

(assert (=> b!5037753 (= e!3146450 (- i!618 1))))

(declare-fun b!5037754 () Bool)

(declare-fun e!3146451 () Int)

(assert (=> b!5037754 (= e!3146453 (= (size!38875 lt!2083920) e!3146451))))

(declare-fun c!863030 () Bool)

(assert (=> b!5037754 (= c!863030 (<= (- i!618 1) 0))))

(declare-fun b!5037755 () Bool)

(assert (=> b!5037755 (= e!3146452 Nil!58288)))

(declare-fun b!5037756 () Bool)

(assert (=> b!5037756 (= e!3146450 (size!38875 (t!370915 lt!2083875)))))

(declare-fun b!5037757 () Bool)

(assert (=> b!5037757 (= e!3146451 e!3146450)))

(declare-fun c!863029 () Bool)

(assert (=> b!5037757 (= c!863029 (>= (- i!618 1) (size!38875 (t!370915 lt!2083875))))))

(declare-fun b!5037758 () Bool)

(assert (=> b!5037758 (= e!3146451 0)))

(declare-fun b!5037759 () Bool)

(assert (=> b!5037759 (= e!3146452 (Cons!58288 (h!64736 (t!370915 lt!2083875)) (take!817 (t!370915 (t!370915 lt!2083875)) (- (- i!618 1) 1))))))

(assert (= (and d!1620380 c!863031) b!5037755))

(assert (= (and d!1620380 (not c!863031)) b!5037759))

(assert (= (and d!1620380 res!2146442) b!5037754))

(assert (= (and b!5037754 c!863030) b!5037758))

(assert (= (and b!5037754 (not c!863030)) b!5037757))

(assert (= (and b!5037757 c!863029) b!5037756))

(assert (= (and b!5037757 (not c!863029)) b!5037753))

(declare-fun m!6071566 () Bool)

(assert (=> b!5037754 m!6071566))

(assert (=> b!5037756 m!6071480))

(assert (=> b!5037757 m!6071480))

(declare-fun m!6071568 () Bool)

(assert (=> d!1620380 m!6071568))

(assert (=> d!1620380 m!6071552))

(declare-fun m!6071570 () Bool)

(assert (=> b!5037759 m!6071570))

(assert (=> b!5037536 d!1620380))

(assert (=> d!1620352 d!1620358))

(assert (=> d!1620352 d!1620348))

(assert (=> d!1620352 d!1620350))

(declare-fun d!1620390 () Bool)

(assert (=> d!1620390 (= (drop!2624 lt!2083875 i!618) (slice!849 lt!2083875 i!618 (size!38875 lt!2083875)))))

(assert (=> d!1620390 true))

(declare-fun _$10!200 () Unit!149487)

(assert (=> d!1620390 (= (choose!37252 lt!2083875 i!618) _$10!200)))

(declare-fun bs!1188799 () Bool)

(assert (= bs!1188799 d!1620390))

(assert (=> bs!1188799 m!6071364))

(assert (=> bs!1188799 m!6071368))

(assert (=> bs!1188799 m!6071368))

(assert (=> bs!1188799 m!6071370))

(assert (=> d!1620352 d!1620390))

(declare-fun d!1620392 () Bool)

(declare-fun c!863038 () Bool)

(assert (=> d!1620392 (= c!863038 ((_ is Node!15500) (left!42679 (right!43009 t!4198))))))

(declare-fun e!3146460 () Bool)

(assert (=> d!1620392 (= (inv!77084 (left!42679 (right!43009 t!4198))) e!3146460)))

(declare-fun b!5037772 () Bool)

(assert (=> b!5037772 (= e!3146460 (inv!77086 (left!42679 (right!43009 t!4198))))))

(declare-fun b!5037773 () Bool)

(declare-fun e!3146461 () Bool)

(assert (=> b!5037773 (= e!3146460 e!3146461)))

(declare-fun res!2146443 () Bool)

(assert (=> b!5037773 (= res!2146443 (not ((_ is Leaf!25714) (left!42679 (right!43009 t!4198)))))))

(assert (=> b!5037773 (=> res!2146443 e!3146461)))

(declare-fun b!5037774 () Bool)

(assert (=> b!5037774 (= e!3146461 (inv!77087 (left!42679 (right!43009 t!4198))))))

(assert (= (and d!1620392 c!863038) b!5037772))

(assert (= (and d!1620392 (not c!863038)) b!5037773))

(assert (= (and b!5037773 (not res!2146443)) b!5037774))

(declare-fun m!6071572 () Bool)

(assert (=> b!5037772 m!6071572))

(declare-fun m!6071574 () Bool)

(assert (=> b!5037774 m!6071574))

(assert (=> b!5037721 d!1620392))

(declare-fun d!1620394 () Bool)

(declare-fun c!863039 () Bool)

(assert (=> d!1620394 (= c!863039 ((_ is Node!15500) (right!43009 (right!43009 t!4198))))))

(declare-fun e!3146462 () Bool)

(assert (=> d!1620394 (= (inv!77084 (right!43009 (right!43009 t!4198))) e!3146462)))

(declare-fun b!5037775 () Bool)

(assert (=> b!5037775 (= e!3146462 (inv!77086 (right!43009 (right!43009 t!4198))))))

(declare-fun b!5037776 () Bool)

(declare-fun e!3146463 () Bool)

(assert (=> b!5037776 (= e!3146462 e!3146463)))

(declare-fun res!2146444 () Bool)

(assert (=> b!5037776 (= res!2146444 (not ((_ is Leaf!25714) (right!43009 (right!43009 t!4198)))))))

(assert (=> b!5037776 (=> res!2146444 e!3146463)))

(declare-fun b!5037777 () Bool)

(assert (=> b!5037777 (= e!3146463 (inv!77087 (right!43009 (right!43009 t!4198))))))

(assert (= (and d!1620394 c!863039) b!5037775))

(assert (= (and d!1620394 (not c!863039)) b!5037776))

(assert (= (and b!5037776 (not res!2146444)) b!5037777))

(declare-fun m!6071576 () Bool)

(assert (=> b!5037775 m!6071576))

(declare-fun m!6071578 () Bool)

(assert (=> b!5037777 m!6071578))

(assert (=> b!5037721 d!1620394))

(declare-fun d!1620396 () Bool)

(assert (=> d!1620396 (= (inv!77085 (xs!18826 (right!43009 t!4198))) (<= (size!38875 (innerList!15588 (xs!18826 (right!43009 t!4198)))) 2147483647))))

(declare-fun bs!1188800 () Bool)

(assert (= bs!1188800 d!1620396))

(declare-fun m!6071580 () Bool)

(assert (=> bs!1188800 m!6071580))

(assert (=> b!5037722 d!1620396))

(declare-fun d!1620398 () Bool)

(declare-fun c!863042 () Bool)

(assert (=> d!1620398 (= c!863042 ((_ is Nil!58288) lt!2083886))))

(declare-fun e!3146466 () (InoxSet T!104096))

(assert (=> d!1620398 (= (content!10351 lt!2083886) e!3146466)))

(declare-fun b!5037782 () Bool)

(assert (=> b!5037782 (= e!3146466 ((as const (Array T!104096 Bool)) false))))

(declare-fun b!5037783 () Bool)

(assert (=> b!5037783 (= e!3146466 ((_ map or) (store ((as const (Array T!104096 Bool)) false) (h!64736 lt!2083886) true) (content!10351 (t!370915 lt!2083886))))))

(assert (= (and d!1620398 c!863042) b!5037782))

(assert (= (and d!1620398 (not c!863042)) b!5037783))

(declare-fun m!6071588 () Bool)

(assert (=> b!5037783 m!6071588))

(declare-fun m!6071590 () Bool)

(assert (=> b!5037783 m!6071590))

(assert (=> d!1620318 d!1620398))

(assert (=> d!1620318 d!1620376))

(declare-fun d!1620402 () Bool)

(declare-fun lt!2083922 () Int)

(assert (=> d!1620402 (>= lt!2083922 0)))

(declare-fun e!3146467 () Int)

(assert (=> d!1620402 (= lt!2083922 e!3146467)))

(declare-fun c!863043 () Bool)

(assert (=> d!1620402 (= c!863043 ((_ is Nil!58288) (list!18893 t!4198)))))

(assert (=> d!1620402 (= (size!38875 (list!18893 t!4198)) lt!2083922)))

(declare-fun b!5037784 () Bool)

(assert (=> b!5037784 (= e!3146467 0)))

(declare-fun b!5037785 () Bool)

(assert (=> b!5037785 (= e!3146467 (+ 1 (size!38875 (t!370915 (list!18893 t!4198)))))))

(assert (= (and d!1620402 c!863043) b!5037784))

(assert (= (and d!1620402 (not c!863043)) b!5037785))

(declare-fun m!6071592 () Bool)

(assert (=> b!5037785 m!6071592))

(assert (=> d!1620332 d!1620402))

(declare-fun b!5037800 () Bool)

(declare-fun e!3146474 () List!58412)

(assert (=> b!5037800 (= e!3146474 Nil!58288)))

(declare-fun b!5037801 () Bool)

(declare-fun e!3146475 () List!58412)

(assert (=> b!5037801 (= e!3146474 e!3146475)))

(declare-fun c!863049 () Bool)

(assert (=> b!5037801 (= c!863049 ((_ is Leaf!25714) t!4198))))

(declare-fun b!5037803 () Bool)

(assert (=> b!5037803 (= e!3146475 (++!12719 (list!18893 (left!42679 t!4198)) (list!18893 (right!43009 t!4198))))))

(declare-fun d!1620404 () Bool)

(declare-fun c!863048 () Bool)

(assert (=> d!1620404 (= c!863048 ((_ is Empty!15500) t!4198))))

(assert (=> d!1620404 (= (list!18893 t!4198) e!3146474)))

(declare-fun b!5037802 () Bool)

(assert (=> b!5037802 (= e!3146475 (list!18891 (xs!18826 t!4198)))))

(assert (= (and d!1620404 c!863048) b!5037800))

(assert (= (and d!1620404 (not c!863048)) b!5037801))

(assert (= (and b!5037801 c!863049) b!5037802))

(assert (= (and b!5037801 (not c!863049)) b!5037803))

(declare-fun m!6071594 () Bool)

(assert (=> b!5037803 m!6071594))

(declare-fun m!6071596 () Bool)

(assert (=> b!5037803 m!6071596))

(assert (=> b!5037803 m!6071594))

(assert (=> b!5037803 m!6071596))

(declare-fun m!6071598 () Bool)

(assert (=> b!5037803 m!6071598))

(assert (=> b!5037802 m!6071378))

(assert (=> d!1620332 d!1620404))

(declare-fun d!1620406 () Bool)

(assert (=> d!1620406 (= (height!2079 (left!42679 t!4198)) (ite ((_ is Empty!15500) (left!42679 t!4198)) 0 (ite ((_ is Leaf!25714) (left!42679 t!4198)) 1 (cheight!15711 (left!42679 t!4198)))))))

(assert (=> b!5037610 d!1620406))

(declare-fun d!1620410 () Bool)

(assert (=> d!1620410 (= (height!2079 (right!43009 t!4198)) (ite ((_ is Empty!15500) (right!43009 t!4198)) 0 (ite ((_ is Leaf!25714) (right!43009 t!4198)) 1 (cheight!15711 (right!43009 t!4198)))))))

(assert (=> b!5037610 d!1620410))

(assert (=> b!5037466 d!1620310))

(assert (=> b!5037466 d!1620314))

(declare-fun b!5037814 () Bool)

(declare-fun e!3146483 () List!58412)

(assert (=> b!5037814 (= e!3146483 Nil!58288)))

(declare-fun b!5037815 () Bool)

(declare-fun e!3146482 () List!58412)

(assert (=> b!5037815 (= e!3146482 (drop!2624 (t!370915 (t!370915 lt!2083875)) (- (- i!618 1) 1)))))

(declare-fun b!5037816 () Bool)

(declare-fun e!3146484 () Bool)

(declare-fun lt!2083924 () List!58412)

(declare-fun e!3146485 () Int)

(assert (=> b!5037816 (= e!3146484 (= (size!38875 lt!2083924) e!3146485))))

(declare-fun c!863053 () Bool)

(assert (=> b!5037816 (= c!863053 (<= (- i!618 1) 0))))

(declare-fun b!5037817 () Bool)

(declare-fun e!3146481 () Int)

(declare-fun call!351381 () Int)

(assert (=> b!5037817 (= e!3146481 (- call!351381 (- i!618 1)))))

(declare-fun bm!351376 () Bool)

(assert (=> bm!351376 (= call!351381 (size!38875 (t!370915 lt!2083875)))))

(declare-fun b!5037818 () Bool)

(assert (=> b!5037818 (= e!3146485 call!351381)))

(declare-fun d!1620412 () Bool)

(assert (=> d!1620412 e!3146484))

(declare-fun res!2146455 () Bool)

(assert (=> d!1620412 (=> (not res!2146455) (not e!3146484))))

(assert (=> d!1620412 (= res!2146455 (= ((_ map implies) (content!10351 lt!2083924) (content!10351 (t!370915 lt!2083875))) ((as const (InoxSet T!104096)) true)))))

(assert (=> d!1620412 (= lt!2083924 e!3146483)))

(declare-fun c!863054 () Bool)

(assert (=> d!1620412 (= c!863054 ((_ is Nil!58288) (t!370915 lt!2083875)))))

(assert (=> d!1620412 (= (drop!2624 (t!370915 lt!2083875) (- i!618 1)) lt!2083924)))

(declare-fun b!5037819 () Bool)

(assert (=> b!5037819 (= e!3146483 e!3146482)))

(declare-fun c!863056 () Bool)

(assert (=> b!5037819 (= c!863056 (<= (- i!618 1) 0))))

(declare-fun b!5037820 () Bool)

(assert (=> b!5037820 (= e!3146482 (t!370915 lt!2083875))))

(declare-fun b!5037821 () Bool)

(assert (=> b!5037821 (= e!3146481 0)))

(declare-fun b!5037822 () Bool)

(assert (=> b!5037822 (= e!3146485 e!3146481)))

(declare-fun c!863055 () Bool)

(assert (=> b!5037822 (= c!863055 (>= (- i!618 1) call!351381))))

(assert (= (and d!1620412 c!863054) b!5037814))

(assert (= (and d!1620412 (not c!863054)) b!5037819))

(assert (= (and b!5037819 c!863056) b!5037820))

(assert (= (and b!5037819 (not c!863056)) b!5037815))

(assert (= (and d!1620412 res!2146455) b!5037816))

(assert (= (and b!5037816 c!863053) b!5037818))

(assert (= (and b!5037816 (not c!863053)) b!5037822))

(assert (= (and b!5037822 c!863055) b!5037821))

(assert (= (and b!5037822 (not c!863055)) b!5037817))

(assert (= (or b!5037818 b!5037822 b!5037817) bm!351376))

(declare-fun m!6071620 () Bool)

(assert (=> b!5037815 m!6071620))

(declare-fun m!6071622 () Bool)

(assert (=> b!5037816 m!6071622))

(assert (=> bm!351376 m!6071480))

(declare-fun m!6071624 () Bool)

(assert (=> d!1620412 m!6071624))

(assert (=> d!1620412 m!6071552))

(assert (=> b!5037702 d!1620412))

(declare-fun d!1620416 () Bool)

(declare-fun res!2146470 () Bool)

(declare-fun e!3146502 () Bool)

(assert (=> d!1620416 (=> (not res!2146470) (not e!3146502))))

(assert (=> d!1620416 (= res!2146470 (= (csize!31230 (right!43009 t!4198)) (+ (size!38874 (left!42679 (right!43009 t!4198))) (size!38874 (right!43009 (right!43009 t!4198))))))))

(assert (=> d!1620416 (= (inv!77086 (right!43009 t!4198)) e!3146502)))

(declare-fun b!5037855 () Bool)

(declare-fun res!2146471 () Bool)

(assert (=> b!5037855 (=> (not res!2146471) (not e!3146502))))

(assert (=> b!5037855 (= res!2146471 (and (not (= (left!42679 (right!43009 t!4198)) Empty!15500)) (not (= (right!43009 (right!43009 t!4198)) Empty!15500))))))

(declare-fun b!5037856 () Bool)

(declare-fun res!2146472 () Bool)

(assert (=> b!5037856 (=> (not res!2146472) (not e!3146502))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5037856 (= res!2146472 (= (cheight!15711 (right!43009 t!4198)) (+ (max!0 (height!2079 (left!42679 (right!43009 t!4198))) (height!2079 (right!43009 (right!43009 t!4198)))) 1)))))

(declare-fun b!5037857 () Bool)

(assert (=> b!5037857 (= e!3146502 (<= 0 (cheight!15711 (right!43009 t!4198))))))

(assert (= (and d!1620416 res!2146470) b!5037855))

(assert (= (and b!5037855 res!2146471) b!5037856))

(assert (= (and b!5037856 res!2146472) b!5037857))

(declare-fun m!6071650 () Bool)

(assert (=> d!1620416 m!6071650))

(declare-fun m!6071652 () Bool)

(assert (=> d!1620416 m!6071652))

(declare-fun m!6071654 () Bool)

(assert (=> b!5037856 m!6071654))

(declare-fun m!6071656 () Bool)

(assert (=> b!5037856 m!6071656))

(assert (=> b!5037856 m!6071654))

(assert (=> b!5037856 m!6071656))

(declare-fun m!6071658 () Bool)

(assert (=> b!5037856 m!6071658))

(assert (=> b!5037498 d!1620416))

(declare-fun d!1620428 () Bool)

(declare-fun c!863066 () Bool)

(assert (=> d!1620428 (= c!863066 ((_ is Node!15500) (left!42679 (left!42679 t!4198))))))

(declare-fun e!3146503 () Bool)

(assert (=> d!1620428 (= (inv!77084 (left!42679 (left!42679 t!4198))) e!3146503)))

(declare-fun b!5037858 () Bool)

(assert (=> b!5037858 (= e!3146503 (inv!77086 (left!42679 (left!42679 t!4198))))))

(declare-fun b!5037859 () Bool)

(declare-fun e!3146504 () Bool)

(assert (=> b!5037859 (= e!3146503 e!3146504)))

(declare-fun res!2146473 () Bool)

(assert (=> b!5037859 (= res!2146473 (not ((_ is Leaf!25714) (left!42679 (left!42679 t!4198)))))))

(assert (=> b!5037859 (=> res!2146473 e!3146504)))

(declare-fun b!5037860 () Bool)

(assert (=> b!5037860 (= e!3146504 (inv!77087 (left!42679 (left!42679 t!4198))))))

(assert (= (and d!1620428 c!863066) b!5037858))

(assert (= (and d!1620428 (not c!863066)) b!5037859))

(assert (= (and b!5037859 (not res!2146473)) b!5037860))

(declare-fun m!6071660 () Bool)

(assert (=> b!5037858 m!6071660))

(declare-fun m!6071662 () Bool)

(assert (=> b!5037860 m!6071662))

(assert (=> b!5037718 d!1620428))

(declare-fun d!1620430 () Bool)

(declare-fun c!863067 () Bool)

(assert (=> d!1620430 (= c!863067 ((_ is Node!15500) (right!43009 (left!42679 t!4198))))))

(declare-fun e!3146505 () Bool)

(assert (=> d!1620430 (= (inv!77084 (right!43009 (left!42679 t!4198))) e!3146505)))

(declare-fun b!5037861 () Bool)

(assert (=> b!5037861 (= e!3146505 (inv!77086 (right!43009 (left!42679 t!4198))))))

(declare-fun b!5037862 () Bool)

(declare-fun e!3146506 () Bool)

(assert (=> b!5037862 (= e!3146505 e!3146506)))

(declare-fun res!2146474 () Bool)

(assert (=> b!5037862 (= res!2146474 (not ((_ is Leaf!25714) (right!43009 (left!42679 t!4198)))))))

(assert (=> b!5037862 (=> res!2146474 e!3146506)))

(declare-fun b!5037863 () Bool)

(assert (=> b!5037863 (= e!3146506 (inv!77087 (right!43009 (left!42679 t!4198))))))

(assert (= (and d!1620430 c!863067) b!5037861))

(assert (= (and d!1620430 (not c!863067)) b!5037862))

(assert (= (and b!5037862 (not res!2146474)) b!5037863))

(declare-fun m!6071664 () Bool)

(assert (=> b!5037861 m!6071664))

(declare-fun m!6071666 () Bool)

(assert (=> b!5037863 m!6071666))

(assert (=> b!5037718 d!1620430))

(declare-fun d!1620432 () Bool)

(declare-fun lt!2083933 () Bool)

(declare-fun isEmpty!31517 (List!58412) Bool)

(assert (=> d!1620432 (= lt!2083933 (isEmpty!31517 (list!18893 (right!43009 t!4198))))))

(assert (=> d!1620432 (= lt!2083933 (= (size!38874 (right!43009 t!4198)) 0))))

(assert (=> d!1620432 (= (isEmpty!31516 (right!43009 t!4198)) lt!2083933)))

(declare-fun bs!1188801 () Bool)

(assert (= bs!1188801 d!1620432))

(assert (=> bs!1188801 m!6071596))

(assert (=> bs!1188801 m!6071596))

(declare-fun m!6071668 () Bool)

(assert (=> bs!1188801 m!6071668))

(declare-fun m!6071670 () Bool)

(assert (=> bs!1188801 m!6071670))

(assert (=> b!5037611 d!1620432))

(declare-fun d!1620434 () Bool)

(declare-fun e!3146514 () Bool)

(assert (=> d!1620434 e!3146514))

(declare-fun res!2146479 () Bool)

(assert (=> d!1620434 (=> (not res!2146479) (not e!3146514))))

(declare-fun lt!2083934 () List!58412)

(assert (=> d!1620434 (= res!2146479 (= ((_ map implies) (content!10351 lt!2083934) (content!10351 (drop!2624 lt!2083875 i!618))) ((as const (InoxSet T!104096)) true)))))

(declare-fun e!3146513 () List!58412)

(assert (=> d!1620434 (= lt!2083934 e!3146513)))

(declare-fun c!863072 () Bool)

(assert (=> d!1620434 (= c!863072 (or ((_ is Nil!58288) (drop!2624 lt!2083875 i!618)) (<= (- (size!38875 lt!2083875) i!618) 0)))))

(assert (=> d!1620434 (= (take!817 (drop!2624 lt!2083875 i!618) (- (size!38875 lt!2083875) i!618)) lt!2083934)))

(declare-fun b!5037872 () Bool)

(declare-fun e!3146511 () Int)

(assert (=> b!5037872 (= e!3146511 (- (size!38875 lt!2083875) i!618))))

(declare-fun b!5037873 () Bool)

(declare-fun e!3146512 () Int)

(assert (=> b!5037873 (= e!3146514 (= (size!38875 lt!2083934) e!3146512))))

(declare-fun c!863071 () Bool)

(assert (=> b!5037873 (= c!863071 (<= (- (size!38875 lt!2083875) i!618) 0))))

(declare-fun b!5037874 () Bool)

(assert (=> b!5037874 (= e!3146513 Nil!58288)))

(declare-fun b!5037875 () Bool)

(assert (=> b!5037875 (= e!3146511 (size!38875 (drop!2624 lt!2083875 i!618)))))

(declare-fun b!5037876 () Bool)

(assert (=> b!5037876 (= e!3146512 e!3146511)))

(declare-fun c!863070 () Bool)

(assert (=> b!5037876 (= c!863070 (>= (- (size!38875 lt!2083875) i!618) (size!38875 (drop!2624 lt!2083875 i!618))))))

(declare-fun b!5037877 () Bool)

(assert (=> b!5037877 (= e!3146512 0)))

(declare-fun b!5037878 () Bool)

(assert (=> b!5037878 (= e!3146513 (Cons!58288 (h!64736 (drop!2624 lt!2083875 i!618)) (take!817 (t!370915 (drop!2624 lt!2083875 i!618)) (- (- (size!38875 lt!2083875) i!618) 1))))))

(assert (= (and d!1620434 c!863072) b!5037874))

(assert (= (and d!1620434 (not c!863072)) b!5037878))

(assert (= (and d!1620434 res!2146479) b!5037873))

(assert (= (and b!5037873 c!863071) b!5037877))

(assert (= (and b!5037873 (not c!863071)) b!5037876))

(assert (= (and b!5037876 c!863070) b!5037875))

(assert (= (and b!5037876 (not c!863070)) b!5037872))

(declare-fun m!6071672 () Bool)

(assert (=> b!5037873 m!6071672))

(assert (=> b!5037875 m!6071364))

(declare-fun m!6071674 () Bool)

(assert (=> b!5037875 m!6071674))

(assert (=> b!5037876 m!6071364))

(assert (=> b!5037876 m!6071674))

(declare-fun m!6071676 () Bool)

(assert (=> d!1620434 m!6071676))

(assert (=> d!1620434 m!6071364))

(declare-fun m!6071678 () Bool)

(assert (=> d!1620434 m!6071678))

(declare-fun m!6071680 () Bool)

(assert (=> b!5037878 m!6071680))

(assert (=> d!1620348 d!1620434))

(assert (=> d!1620348 d!1620358))

(declare-fun d!1620436 () Bool)

(declare-fun lt!2083936 () Int)

(assert (=> d!1620436 (>= lt!2083936 0)))

(declare-fun e!3146517 () Int)

(assert (=> d!1620436 (= lt!2083936 e!3146517)))

(declare-fun c!863074 () Bool)

(assert (=> d!1620436 (= c!863074 ((_ is Nil!58288) lt!2083918))))

(assert (=> d!1620436 (= (size!38875 lt!2083918) lt!2083936)))

(declare-fun b!5037883 () Bool)

(assert (=> b!5037883 (= e!3146517 0)))

(declare-fun b!5037884 () Bool)

(assert (=> b!5037884 (= e!3146517 (+ 1 (size!38875 (t!370915 lt!2083918))))))

(assert (= (and d!1620436 c!863074) b!5037883))

(assert (= (and d!1620436 (not c!863074)) b!5037884))

(declare-fun m!6071682 () Bool)

(assert (=> b!5037884 m!6071682))

(assert (=> b!5037703 d!1620436))

(declare-fun d!1620438 () Bool)

(assert (=> d!1620438 (= (inv!77085 (xs!18826 (left!42679 t!4198))) (<= (size!38875 (innerList!15588 (xs!18826 (left!42679 t!4198)))) 2147483647))))

(declare-fun bs!1188802 () Bool)

(assert (= bs!1188802 d!1620438))

(declare-fun m!6071692 () Bool)

(assert (=> bs!1188802 m!6071692))

(assert (=> b!5037719 d!1620438))

(declare-fun d!1620440 () Bool)

(declare-fun res!2146482 () Bool)

(declare-fun e!3146518 () Bool)

(assert (=> d!1620440 (=> res!2146482 e!3146518)))

(assert (=> d!1620440 (= res!2146482 (not ((_ is Node!15500) (left!42679 t!4198))))))

(assert (=> d!1620440 (= (isBalanced!4362 (left!42679 t!4198)) e!3146518)))

(declare-fun b!5037885 () Bool)

(declare-fun res!2146486 () Bool)

(declare-fun e!3146519 () Bool)

(assert (=> b!5037885 (=> (not res!2146486) (not e!3146519))))

(assert (=> b!5037885 (= res!2146486 (<= (- (height!2079 (left!42679 (left!42679 t!4198))) (height!2079 (right!43009 (left!42679 t!4198)))) 1))))

(declare-fun b!5037886 () Bool)

(assert (=> b!5037886 (= e!3146519 (not (isEmpty!31516 (right!43009 (left!42679 t!4198)))))))

(declare-fun b!5037887 () Bool)

(declare-fun res!2146483 () Bool)

(assert (=> b!5037887 (=> (not res!2146483) (not e!3146519))))

(assert (=> b!5037887 (= res!2146483 (isBalanced!4362 (left!42679 (left!42679 t!4198))))))

(declare-fun b!5037888 () Bool)

(declare-fun res!2146485 () Bool)

(assert (=> b!5037888 (=> (not res!2146485) (not e!3146519))))

(assert (=> b!5037888 (= res!2146485 (isBalanced!4362 (right!43009 (left!42679 t!4198))))))

(declare-fun b!5037889 () Bool)

(declare-fun res!2146487 () Bool)

(assert (=> b!5037889 (=> (not res!2146487) (not e!3146519))))

(assert (=> b!5037889 (= res!2146487 (not (isEmpty!31516 (left!42679 (left!42679 t!4198)))))))

(declare-fun b!5037890 () Bool)

(assert (=> b!5037890 (= e!3146518 e!3146519)))

(declare-fun res!2146484 () Bool)

(assert (=> b!5037890 (=> (not res!2146484) (not e!3146519))))

(assert (=> b!5037890 (= res!2146484 (<= (- 1) (- (height!2079 (left!42679 (left!42679 t!4198))) (height!2079 (right!43009 (left!42679 t!4198))))))))

(assert (= (and d!1620440 (not res!2146482)) b!5037890))

(assert (= (and b!5037890 res!2146484) b!5037885))

(assert (= (and b!5037885 res!2146486) b!5037887))

(assert (= (and b!5037887 res!2146483) b!5037888))

(assert (= (and b!5037888 res!2146485) b!5037889))

(assert (= (and b!5037889 res!2146487) b!5037886))

(declare-fun m!6071700 () Bool)

(assert (=> b!5037890 m!6071700))

(declare-fun m!6071702 () Bool)

(assert (=> b!5037890 m!6071702))

(declare-fun m!6071704 () Bool)

(assert (=> b!5037889 m!6071704))

(declare-fun m!6071706 () Bool)

(assert (=> b!5037886 m!6071706))

(declare-fun m!6071708 () Bool)

(assert (=> b!5037887 m!6071708))

(declare-fun m!6071710 () Bool)

(assert (=> b!5037888 m!6071710))

(assert (=> b!5037885 m!6071700))

(assert (=> b!5037885 m!6071702))

(assert (=> b!5037612 d!1620440))

(assert (=> b!5037654 d!1620350))

(declare-fun d!1620444 () Bool)

(declare-fun res!2146500 () Bool)

(declare-fun e!3146527 () Bool)

(assert (=> d!1620444 (=> (not res!2146500) (not e!3146527))))

(assert (=> d!1620444 (= res!2146500 (<= (size!38875 (list!18891 (xs!18826 (right!43009 t!4198)))) 512))))

(assert (=> d!1620444 (= (inv!77087 (right!43009 t!4198)) e!3146527)))

(declare-fun b!5037907 () Bool)

(declare-fun res!2146501 () Bool)

(assert (=> b!5037907 (=> (not res!2146501) (not e!3146527))))

(assert (=> b!5037907 (= res!2146501 (= (csize!31231 (right!43009 t!4198)) (size!38875 (list!18891 (xs!18826 (right!43009 t!4198))))))))

(declare-fun b!5037908 () Bool)

(assert (=> b!5037908 (= e!3146527 (and (> (csize!31231 (right!43009 t!4198)) 0) (<= (csize!31231 (right!43009 t!4198)) 512)))))

(assert (= (and d!1620444 res!2146500) b!5037907))

(assert (= (and b!5037907 res!2146501) b!5037908))

(declare-fun m!6071724 () Bool)

(assert (=> d!1620444 m!6071724))

(assert (=> d!1620444 m!6071724))

(declare-fun m!6071726 () Bool)

(assert (=> d!1620444 m!6071726))

(assert (=> b!5037907 m!6071724))

(assert (=> b!5037907 m!6071724))

(assert (=> b!5037907 m!6071726))

(assert (=> b!5037500 d!1620444))

(declare-fun d!1620452 () Bool)

(declare-fun res!2146502 () Bool)

(declare-fun e!3146528 () Bool)

(assert (=> d!1620452 (=> (not res!2146502) (not e!3146528))))

(assert (=> d!1620452 (= res!2146502 (= (csize!31230 t!4198) (+ (size!38874 (left!42679 t!4198)) (size!38874 (right!43009 t!4198)))))))

(assert (=> d!1620452 (= (inv!77086 t!4198) e!3146528)))

(declare-fun b!5037909 () Bool)

(declare-fun res!2146503 () Bool)

(assert (=> b!5037909 (=> (not res!2146503) (not e!3146528))))

(assert (=> b!5037909 (= res!2146503 (and (not (= (left!42679 t!4198) Empty!15500)) (not (= (right!43009 t!4198) Empty!15500))))))

(declare-fun b!5037910 () Bool)

(declare-fun res!2146504 () Bool)

(assert (=> b!5037910 (=> (not res!2146504) (not e!3146528))))

(assert (=> b!5037910 (= res!2146504 (= (cheight!15711 t!4198) (+ (max!0 (height!2079 (left!42679 t!4198)) (height!2079 (right!43009 t!4198))) 1)))))

(declare-fun b!5037911 () Bool)

(assert (=> b!5037911 (= e!3146528 (<= 0 (cheight!15711 t!4198)))))

(assert (= (and d!1620452 res!2146502) b!5037909))

(assert (= (and b!5037909 res!2146503) b!5037910))

(assert (= (and b!5037910 res!2146504) b!5037911))

(declare-fun m!6071728 () Bool)

(assert (=> d!1620452 m!6071728))

(assert (=> d!1620452 m!6071670))

(assert (=> b!5037910 m!6071458))

(assert (=> b!5037910 m!6071460))

(assert (=> b!5037910 m!6071458))

(assert (=> b!5037910 m!6071460))

(declare-fun m!6071730 () Bool)

(assert (=> b!5037910 m!6071730))

(assert (=> b!5037616 d!1620452))

(declare-fun d!1620454 () Bool)

(declare-fun res!2146505 () Bool)

(declare-fun e!3146529 () Bool)

(assert (=> d!1620454 (=> res!2146505 e!3146529)))

(assert (=> d!1620454 (= res!2146505 (not ((_ is Node!15500) (right!43009 t!4198))))))

(assert (=> d!1620454 (= (isBalanced!4362 (right!43009 t!4198)) e!3146529)))

(declare-fun b!5037912 () Bool)

(declare-fun res!2146509 () Bool)

(declare-fun e!3146530 () Bool)

(assert (=> b!5037912 (=> (not res!2146509) (not e!3146530))))

(assert (=> b!5037912 (= res!2146509 (<= (- (height!2079 (left!42679 (right!43009 t!4198))) (height!2079 (right!43009 (right!43009 t!4198)))) 1))))

(declare-fun b!5037913 () Bool)

(assert (=> b!5037913 (= e!3146530 (not (isEmpty!31516 (right!43009 (right!43009 t!4198)))))))

(declare-fun b!5037914 () Bool)

(declare-fun res!2146506 () Bool)

(assert (=> b!5037914 (=> (not res!2146506) (not e!3146530))))

(assert (=> b!5037914 (= res!2146506 (isBalanced!4362 (left!42679 (right!43009 t!4198))))))

(declare-fun b!5037915 () Bool)

(declare-fun res!2146508 () Bool)

(assert (=> b!5037915 (=> (not res!2146508) (not e!3146530))))

(assert (=> b!5037915 (= res!2146508 (isBalanced!4362 (right!43009 (right!43009 t!4198))))))

(declare-fun b!5037916 () Bool)

(declare-fun res!2146510 () Bool)

(assert (=> b!5037916 (=> (not res!2146510) (not e!3146530))))

(assert (=> b!5037916 (= res!2146510 (not (isEmpty!31516 (left!42679 (right!43009 t!4198)))))))

(declare-fun b!5037917 () Bool)

(assert (=> b!5037917 (= e!3146529 e!3146530)))

(declare-fun res!2146507 () Bool)

(assert (=> b!5037917 (=> (not res!2146507) (not e!3146530))))

(assert (=> b!5037917 (= res!2146507 (<= (- 1) (- (height!2079 (left!42679 (right!43009 t!4198))) (height!2079 (right!43009 (right!43009 t!4198))))))))

(assert (= (and d!1620454 (not res!2146505)) b!5037917))

(assert (= (and b!5037917 res!2146507) b!5037912))

(assert (= (and b!5037912 res!2146509) b!5037914))

(assert (= (and b!5037914 res!2146506) b!5037915))

(assert (= (and b!5037915 res!2146508) b!5037916))

(assert (= (and b!5037916 res!2146510) b!5037913))

(assert (=> b!5037917 m!6071654))

(assert (=> b!5037917 m!6071656))

(declare-fun m!6071732 () Bool)

(assert (=> b!5037916 m!6071732))

(declare-fun m!6071734 () Bool)

(assert (=> b!5037913 m!6071734))

(declare-fun m!6071738 () Bool)

(assert (=> b!5037914 m!6071738))

(declare-fun m!6071742 () Bool)

(assert (=> b!5037915 m!6071742))

(assert (=> b!5037912 m!6071654))

(assert (=> b!5037912 m!6071656))

(assert (=> b!5037613 d!1620454))

(assert (=> bm!351375 d!1620350))

(declare-fun d!1620460 () Bool)

(declare-fun lt!2083939 () Bool)

(assert (=> d!1620460 (= lt!2083939 (isEmpty!31517 (list!18893 (left!42679 t!4198))))))

(assert (=> d!1620460 (= lt!2083939 (= (size!38874 (left!42679 t!4198)) 0))))

(assert (=> d!1620460 (= (isEmpty!31516 (left!42679 t!4198)) lt!2083939)))

(declare-fun bs!1188804 () Bool)

(assert (= bs!1188804 d!1620460))

(assert (=> bs!1188804 m!6071594))

(assert (=> bs!1188804 m!6071594))

(declare-fun m!6071750 () Bool)

(assert (=> bs!1188804 m!6071750))

(assert (=> bs!1188804 m!6071728))

(assert (=> b!5037614 d!1620460))

(declare-fun d!1620464 () Bool)

(declare-fun res!2146514 () Bool)

(declare-fun e!3146532 () Bool)

(assert (=> d!1620464 (=> (not res!2146514) (not e!3146532))))

(assert (=> d!1620464 (= res!2146514 (<= (size!38875 (list!18891 (xs!18826 t!4198))) 512))))

(assert (=> d!1620464 (= (inv!77087 t!4198) e!3146532)))

(declare-fun b!5037921 () Bool)

(declare-fun res!2146515 () Bool)

(assert (=> b!5037921 (=> (not res!2146515) (not e!3146532))))

(assert (=> b!5037921 (= res!2146515 (= (csize!31231 t!4198) (size!38875 (list!18891 (xs!18826 t!4198)))))))

(declare-fun b!5037922 () Bool)

(assert (=> b!5037922 (= e!3146532 (and (> (csize!31231 t!4198) 0) (<= (csize!31231 t!4198) 512)))))

(assert (= (and d!1620464 res!2146514) b!5037921))

(assert (= (and b!5037921 res!2146515) b!5037922))

(assert (=> d!1620464 m!6071378))

(assert (=> d!1620464 m!6071378))

(declare-fun m!6071752 () Bool)

(assert (=> d!1620464 m!6071752))

(assert (=> b!5037921 m!6071378))

(assert (=> b!5037921 m!6071378))

(assert (=> b!5037921 m!6071752))

(assert (=> b!5037618 d!1620464))

(assert (=> b!5037615 d!1620406))

(assert (=> b!5037615 d!1620410))

(declare-fun d!1620466 () Bool)

(declare-fun lt!2083940 () Int)

(assert (=> d!1620466 (>= lt!2083940 0)))

(declare-fun e!3146533 () Int)

(assert (=> d!1620466 (= lt!2083940 e!3146533)))

(declare-fun c!863077 () Bool)

(assert (=> d!1620466 (= c!863077 ((_ is Nil!58288) lt!2083886))))

(assert (=> d!1620466 (= (size!38875 lt!2083886) lt!2083940)))

(declare-fun b!5037923 () Bool)

(assert (=> b!5037923 (= e!3146533 0)))

(declare-fun b!5037924 () Bool)

(assert (=> b!5037924 (= e!3146533 (+ 1 (size!38875 (t!370915 lt!2083886))))))

(assert (= (and d!1620466 c!863077) b!5037923))

(assert (= (and d!1620466 (not c!863077)) b!5037924))

(declare-fun m!6071754 () Bool)

(assert (=> b!5037924 m!6071754))

(assert (=> b!5037531 d!1620466))

(declare-fun d!1620468 () Bool)

(declare-fun res!2146516 () Bool)

(declare-fun e!3146534 () Bool)

(assert (=> d!1620468 (=> (not res!2146516) (not e!3146534))))

(assert (=> d!1620468 (= res!2146516 (= (csize!31230 (left!42679 t!4198)) (+ (size!38874 (left!42679 (left!42679 t!4198))) (size!38874 (right!43009 (left!42679 t!4198))))))))

(assert (=> d!1620468 (= (inv!77086 (left!42679 t!4198)) e!3146534)))

(declare-fun b!5037925 () Bool)

(declare-fun res!2146517 () Bool)

(assert (=> b!5037925 (=> (not res!2146517) (not e!3146534))))

(assert (=> b!5037925 (= res!2146517 (and (not (= (left!42679 (left!42679 t!4198)) Empty!15500)) (not (= (right!43009 (left!42679 t!4198)) Empty!15500))))))

(declare-fun b!5037926 () Bool)

(declare-fun res!2146518 () Bool)

(assert (=> b!5037926 (=> (not res!2146518) (not e!3146534))))

(assert (=> b!5037926 (= res!2146518 (= (cheight!15711 (left!42679 t!4198)) (+ (max!0 (height!2079 (left!42679 (left!42679 t!4198))) (height!2079 (right!43009 (left!42679 t!4198)))) 1)))))

(declare-fun b!5037927 () Bool)

(assert (=> b!5037927 (= e!3146534 (<= 0 (cheight!15711 (left!42679 t!4198))))))

(assert (= (and d!1620468 res!2146516) b!5037925))

(assert (= (and b!5037925 res!2146517) b!5037926))

(assert (= (and b!5037926 res!2146518) b!5037927))

(declare-fun m!6071756 () Bool)

(assert (=> d!1620468 m!6071756))

(declare-fun m!6071758 () Bool)

(assert (=> d!1620468 m!6071758))

(assert (=> b!5037926 m!6071700))

(assert (=> b!5037926 m!6071702))

(assert (=> b!5037926 m!6071700))

(assert (=> b!5037926 m!6071702))

(declare-fun m!6071760 () Bool)

(assert (=> b!5037926 m!6071760))

(assert (=> b!5037485 d!1620468))

(assert (=> b!5037559 d!1620318))

(assert (=> b!5037533 d!1620350))

(declare-fun d!1620470 () Bool)

(declare-fun lt!2083941 () Int)

(assert (=> d!1620470 (>= lt!2083941 0)))

(declare-fun e!3146535 () Int)

(assert (=> d!1620470 (= lt!2083941 e!3146535)))

(declare-fun c!863078 () Bool)

(assert (=> d!1620470 (= c!863078 ((_ is Nil!58288) (t!370915 lt!2083875)))))

(assert (=> d!1620470 (= (size!38875 (t!370915 lt!2083875)) lt!2083941)))

(declare-fun b!5037928 () Bool)

(assert (=> b!5037928 (= e!3146535 0)))

(declare-fun b!5037929 () Bool)

(assert (=> b!5037929 (= e!3146535 (+ 1 (size!38875 (t!370915 (t!370915 lt!2083875)))))))

(assert (= (and d!1620470 c!863078) b!5037928))

(assert (= (and d!1620470 (not c!863078)) b!5037929))

(declare-fun m!6071762 () Bool)

(assert (=> b!5037929 m!6071762))

(assert (=> b!5037642 d!1620470))

(declare-fun d!1620472 () Bool)

(declare-fun lt!2083942 () Int)

(assert (=> d!1620472 (>= lt!2083942 0)))

(declare-fun e!3146536 () Int)

(assert (=> d!1620472 (= lt!2083942 e!3146536)))

(declare-fun c!863079 () Bool)

(assert (=> d!1620472 (= c!863079 ((_ is Nil!58288) (innerList!15588 (xs!18826 t!4198))))))

(assert (=> d!1620472 (= (size!38875 (innerList!15588 (xs!18826 t!4198))) lt!2083942)))

(declare-fun b!5037930 () Bool)

(assert (=> b!5037930 (= e!3146536 0)))

(declare-fun b!5037931 () Bool)

(assert (=> b!5037931 (= e!3146536 (+ 1 (size!38875 (t!370915 (innerList!15588 (xs!18826 t!4198))))))))

(assert (= (and d!1620472 c!863079) b!5037930))

(assert (= (and d!1620472 (not c!863079)) b!5037931))

(declare-fun m!6071764 () Bool)

(assert (=> b!5037931 m!6071764))

(assert (=> d!1620316 d!1620472))

(declare-fun b!5037932 () Bool)

(declare-fun res!2146520 () Bool)

(declare-fun e!3146539 () Bool)

(assert (=> b!5037932 (=> (not res!2146520) (not e!3146539))))

(declare-fun lt!2083945 () tuple2!63222)

(assert (=> b!5037932 (= res!2146520 (= (_1!34914 lt!2083945) (take!817 (t!370915 lt!2083875) (- i!618 1))))))

(declare-fun b!5037933 () Bool)

(declare-fun lt!2083946 () tuple2!63222)

(assert (=> b!5037933 (= lt!2083946 (splitAtIndex!201 (t!370915 (t!370915 lt!2083875)) (- (- i!618 1) 1)))))

(declare-fun e!3146537 () tuple2!63222)

(assert (=> b!5037933 (= e!3146537 (tuple2!63223 (Cons!58288 (h!64736 (t!370915 lt!2083875)) (_1!34914 lt!2083946)) (_2!34914 lt!2083946)))))

(declare-fun b!5037934 () Bool)

(assert (=> b!5037934 (= e!3146539 (= (_2!34914 lt!2083945) (drop!2624 (t!370915 lt!2083875) (- i!618 1))))))

(declare-fun b!5037935 () Bool)

(assert (=> b!5037935 (= e!3146537 (tuple2!63223 Nil!58288 (t!370915 lt!2083875)))))

(declare-fun d!1620474 () Bool)

(assert (=> d!1620474 e!3146539))

(declare-fun res!2146519 () Bool)

(assert (=> d!1620474 (=> (not res!2146519) (not e!3146539))))

(assert (=> d!1620474 (= res!2146519 (= (++!12719 (_1!34914 lt!2083945) (_2!34914 lt!2083945)) (t!370915 lt!2083875)))))

(declare-fun e!3146538 () tuple2!63222)

(assert (=> d!1620474 (= lt!2083945 e!3146538)))

(declare-fun c!863081 () Bool)

(assert (=> d!1620474 (= c!863081 ((_ is Nil!58288) (t!370915 lt!2083875)))))

(assert (=> d!1620474 (= (splitAtIndex!201 (t!370915 lt!2083875) (- i!618 1)) lt!2083945)))

(declare-fun b!5037936 () Bool)

(assert (=> b!5037936 (= e!3146538 e!3146537)))

(declare-fun c!863080 () Bool)

(assert (=> b!5037936 (= c!863080 (<= (- i!618 1) 0))))

(declare-fun b!5037937 () Bool)

(assert (=> b!5037937 (= e!3146538 (tuple2!63223 Nil!58288 Nil!58288))))

(assert (= (and d!1620474 c!863081) b!5037937))

(assert (= (and d!1620474 (not c!863081)) b!5037936))

(assert (= (and b!5037936 c!863080) b!5037935))

(assert (= (and b!5037936 (not c!863080)) b!5037933))

(assert (= (and d!1620474 res!2146519) b!5037932))

(assert (= (and b!5037932 res!2146520) b!5037934))

(assert (=> b!5037932 m!6071416))

(declare-fun m!6071770 () Bool)

(assert (=> b!5037933 m!6071770))

(assert (=> b!5037934 m!6071514))

(declare-fun m!6071772 () Bool)

(assert (=> d!1620474 m!6071772))

(assert (=> b!5037560 d!1620474))

(declare-fun d!1620478 () Bool)

(declare-fun res!2146522 () Bool)

(declare-fun e!3146542 () Bool)

(assert (=> d!1620478 (=> (not res!2146522) (not e!3146542))))

(assert (=> d!1620478 (= res!2146522 (<= (size!38875 (list!18891 (xs!18826 (left!42679 t!4198)))) 512))))

(assert (=> d!1620478 (= (inv!77087 (left!42679 t!4198)) e!3146542)))

(declare-fun b!5037941 () Bool)

(declare-fun res!2146523 () Bool)

(assert (=> b!5037941 (=> (not res!2146523) (not e!3146542))))

(assert (=> b!5037941 (= res!2146523 (= (csize!31231 (left!42679 t!4198)) (size!38875 (list!18891 (xs!18826 (left!42679 t!4198))))))))

(declare-fun b!5037942 () Bool)

(assert (=> b!5037942 (= e!3146542 (and (> (csize!31231 (left!42679 t!4198)) 0) (<= (csize!31231 (left!42679 t!4198)) 512)))))

(assert (= (and d!1620478 res!2146522) b!5037941))

(assert (= (and b!5037941 res!2146523) b!5037942))

(declare-fun m!6071778 () Bool)

(assert (=> d!1620478 m!6071778))

(assert (=> d!1620478 m!6071778))

(declare-fun m!6071780 () Bool)

(assert (=> d!1620478 m!6071780))

(assert (=> b!5037941 m!6071778))

(assert (=> b!5037941 m!6071778))

(assert (=> b!5037941 m!6071780))

(assert (=> b!5037487 d!1620478))

(assert (=> b!5037534 d!1620350))

(assert (=> b!5037561 d!1620358))

(declare-fun d!1620482 () Bool)

(declare-fun e!3146570 () Bool)

(assert (=> d!1620482 e!3146570))

(declare-fun res!2146545 () Bool)

(assert (=> d!1620482 (=> (not res!2146545) (not e!3146570))))

(declare-fun lt!2083954 () List!58412)

(assert (=> d!1620482 (= res!2146545 (= (content!10351 lt!2083954) ((_ map or) (content!10351 (_1!34914 lt!2083896)) (content!10351 (_2!34914 lt!2083896)))))))

(declare-fun e!3146571 () List!58412)

(assert (=> d!1620482 (= lt!2083954 e!3146571)))

(declare-fun c!863094 () Bool)

(assert (=> d!1620482 (= c!863094 ((_ is Nil!58288) (_1!34914 lt!2083896)))))

(assert (=> d!1620482 (= (++!12719 (_1!34914 lt!2083896) (_2!34914 lt!2083896)) lt!2083954)))

(declare-fun b!5037995 () Bool)

(declare-fun res!2146544 () Bool)

(assert (=> b!5037995 (=> (not res!2146544) (not e!3146570))))

(assert (=> b!5037995 (= res!2146544 (= (size!38875 lt!2083954) (+ (size!38875 (_1!34914 lt!2083896)) (size!38875 (_2!34914 lt!2083896)))))))

(declare-fun b!5037993 () Bool)

(assert (=> b!5037993 (= e!3146571 (_2!34914 lt!2083896))))

(declare-fun b!5037994 () Bool)

(assert (=> b!5037994 (= e!3146571 (Cons!58288 (h!64736 (_1!34914 lt!2083896)) (++!12719 (t!370915 (_1!34914 lt!2083896)) (_2!34914 lt!2083896))))))

(declare-fun b!5037996 () Bool)

(assert (=> b!5037996 (= e!3146570 (or (not (= (_2!34914 lt!2083896) Nil!58288)) (= lt!2083954 (_1!34914 lt!2083896))))))

(assert (= (and d!1620482 c!863094) b!5037993))

(assert (= (and d!1620482 (not c!863094)) b!5037994))

(assert (= (and d!1620482 res!2146545) b!5037995))

(assert (= (and b!5037995 res!2146544) b!5037996))

(declare-fun m!6071840 () Bool)

(assert (=> d!1620482 m!6071840))

(declare-fun m!6071842 () Bool)

(assert (=> d!1620482 m!6071842))

(declare-fun m!6071844 () Bool)

(assert (=> d!1620482 m!6071844))

(declare-fun m!6071846 () Bool)

(assert (=> b!5037995 m!6071846))

(declare-fun m!6071848 () Bool)

(assert (=> b!5037995 m!6071848))

(declare-fun m!6071850 () Bool)

(assert (=> b!5037995 m!6071850))

(declare-fun m!6071852 () Bool)

(assert (=> b!5037994 m!6071852))

(assert (=> d!1620322 d!1620482))

(declare-fun d!1620502 () Bool)

(declare-fun e!3146580 () Bool)

(assert (=> d!1620502 e!3146580))

(declare-fun res!2146546 () Bool)

(assert (=> d!1620502 (=> (not res!2146546) (not e!3146580))))

(declare-fun lt!2083955 () List!58412)

(assert (=> d!1620502 (= res!2146546 (= ((_ map implies) (content!10351 lt!2083955) (content!10351 (drop!2624 lt!2083875 0))) ((as const (InoxSet T!104096)) true)))))

(declare-fun e!3146579 () List!58412)

(assert (=> d!1620502 (= lt!2083955 e!3146579)))

(declare-fun c!863097 () Bool)

(assert (=> d!1620502 (= c!863097 (or ((_ is Nil!58288) (drop!2624 lt!2083875 0)) (<= (- i!618 0) 0)))))

(assert (=> d!1620502 (= (take!817 (drop!2624 lt!2083875 0) (- i!618 0)) lt!2083955)))

(declare-fun b!5038004 () Bool)

(declare-fun e!3146577 () Int)

(assert (=> b!5038004 (= e!3146577 (- i!618 0))))

(declare-fun b!5038005 () Bool)

(declare-fun e!3146578 () Int)

(assert (=> b!5038005 (= e!3146580 (= (size!38875 lt!2083955) e!3146578))))

(declare-fun c!863096 () Bool)

(assert (=> b!5038005 (= c!863096 (<= (- i!618 0) 0))))

(declare-fun b!5038006 () Bool)

(assert (=> b!5038006 (= e!3146579 Nil!58288)))

(declare-fun b!5038007 () Bool)

(assert (=> b!5038007 (= e!3146577 (size!38875 (drop!2624 lt!2083875 0)))))

(declare-fun b!5038008 () Bool)

(assert (=> b!5038008 (= e!3146578 e!3146577)))

(declare-fun c!863095 () Bool)

(assert (=> b!5038008 (= c!863095 (>= (- i!618 0) (size!38875 (drop!2624 lt!2083875 0))))))

(declare-fun b!5038009 () Bool)

(assert (=> b!5038009 (= e!3146578 0)))

(declare-fun b!5038010 () Bool)

(assert (=> b!5038010 (= e!3146579 (Cons!58288 (h!64736 (drop!2624 lt!2083875 0)) (take!817 (t!370915 (drop!2624 lt!2083875 0)) (- (- i!618 0) 1))))))

(assert (= (and d!1620502 c!863097) b!5038006))

(assert (= (and d!1620502 (not c!863097)) b!5038010))

(assert (= (and d!1620502 res!2146546) b!5038005))

(assert (= (and b!5038005 c!863096) b!5038009))

(assert (= (and b!5038005 (not c!863096)) b!5038008))

(assert (= (and b!5038008 c!863095) b!5038007))

(assert (= (and b!5038008 (not c!863095)) b!5038004))

(declare-fun m!6071860 () Bool)

(assert (=> b!5038005 m!6071860))

(assert (=> b!5038007 m!6071474))

(declare-fun m!6071862 () Bool)

(assert (=> b!5038007 m!6071862))

(assert (=> b!5038008 m!6071474))

(assert (=> b!5038008 m!6071862))

(declare-fun m!6071864 () Bool)

(assert (=> d!1620502 m!6071864))

(assert (=> d!1620502 m!6071474))

(declare-fun m!6071866 () Bool)

(assert (=> d!1620502 m!6071866))

(declare-fun m!6071868 () Bool)

(assert (=> b!5038010 m!6071868))

(assert (=> d!1620346 d!1620502))

(declare-fun b!5038011 () Bool)

(declare-fun e!3146583 () List!58412)

(assert (=> b!5038011 (= e!3146583 Nil!58288)))

(declare-fun b!5038012 () Bool)

(declare-fun e!3146582 () List!58412)

(assert (=> b!5038012 (= e!3146582 (drop!2624 (t!370915 lt!2083875) (- 0 1)))))

(declare-fun b!5038013 () Bool)

(declare-fun e!3146584 () Bool)

(declare-fun lt!2083956 () List!58412)

(declare-fun e!3146585 () Int)

(assert (=> b!5038013 (= e!3146584 (= (size!38875 lt!2083956) e!3146585))))

(declare-fun c!863098 () Bool)

(assert (=> b!5038013 (= c!863098 (<= 0 0))))

(declare-fun b!5038014 () Bool)

(declare-fun e!3146581 () Int)

(declare-fun call!351384 () Int)

(assert (=> b!5038014 (= e!3146581 (- call!351384 0))))

(declare-fun bm!351379 () Bool)

(assert (=> bm!351379 (= call!351384 (size!38875 lt!2083875))))

(declare-fun b!5038015 () Bool)

(assert (=> b!5038015 (= e!3146585 call!351384)))

(declare-fun d!1620504 () Bool)

(assert (=> d!1620504 e!3146584))

(declare-fun res!2146547 () Bool)

(assert (=> d!1620504 (=> (not res!2146547) (not e!3146584))))

(assert (=> d!1620504 (= res!2146547 (= ((_ map implies) (content!10351 lt!2083956) (content!10351 lt!2083875)) ((as const (InoxSet T!104096)) true)))))

(assert (=> d!1620504 (= lt!2083956 e!3146583)))

(declare-fun c!863099 () Bool)

(assert (=> d!1620504 (= c!863099 ((_ is Nil!58288) lt!2083875))))

(assert (=> d!1620504 (= (drop!2624 lt!2083875 0) lt!2083956)))

(declare-fun b!5038016 () Bool)

(assert (=> b!5038016 (= e!3146583 e!3146582)))

(declare-fun c!863101 () Bool)

(assert (=> b!5038016 (= c!863101 (<= 0 0))))

(declare-fun b!5038017 () Bool)

(assert (=> b!5038017 (= e!3146582 lt!2083875)))

(declare-fun b!5038018 () Bool)

(assert (=> b!5038018 (= e!3146581 0)))

(declare-fun b!5038019 () Bool)

(assert (=> b!5038019 (= e!3146585 e!3146581)))

(declare-fun c!863100 () Bool)

(assert (=> b!5038019 (= c!863100 (>= 0 call!351384))))

(assert (= (and d!1620504 c!863099) b!5038011))

(assert (= (and d!1620504 (not c!863099)) b!5038016))

(assert (= (and b!5038016 c!863101) b!5038017))

(assert (= (and b!5038016 (not c!863101)) b!5038012))

(assert (= (and d!1620504 res!2146547) b!5038013))

(assert (= (and b!5038013 c!863098) b!5038015))

(assert (= (and b!5038013 (not c!863098)) b!5038019))

(assert (= (and b!5038019 c!863100) b!5038018))

(assert (= (and b!5038019 (not c!863100)) b!5038014))

(assert (= (or b!5038015 b!5038019 b!5038014) bm!351379))

(declare-fun m!6071870 () Bool)

(assert (=> b!5038012 m!6071870))

(declare-fun m!6071872 () Bool)

(assert (=> b!5038013 m!6071872))

(assert (=> bm!351379 m!6071368))

(declare-fun m!6071874 () Bool)

(assert (=> d!1620504 m!6071874))

(assert (=> d!1620504 m!6071414))

(assert (=> d!1620346 d!1620504))

(declare-fun b!5038020 () Bool)

(declare-fun e!3146586 () Bool)

(declare-fun tp!1410546 () Bool)

(assert (=> b!5038020 (= e!3146586 (and tp_is_empty!36763 tp!1410546))))

(assert (=> b!5037723 (= tp!1410526 e!3146586)))

(assert (= (and b!5037723 ((_ is Cons!58288) (innerList!15588 (xs!18826 (right!43009 t!4198))))) b!5038020))

(declare-fun e!3146588 () Bool)

(declare-fun tp!1410547 () Bool)

(declare-fun b!5038021 () Bool)

(declare-fun tp!1410549 () Bool)

(assert (=> b!5038021 (= e!3146588 (and (inv!77084 (left!42679 (left!42679 (left!42679 t!4198)))) tp!1410547 (inv!77084 (right!43009 (left!42679 (left!42679 t!4198)))) tp!1410549))))

(declare-fun b!5038023 () Bool)

(declare-fun e!3146587 () Bool)

(declare-fun tp!1410548 () Bool)

(assert (=> b!5038023 (= e!3146587 tp!1410548)))

(declare-fun b!5038022 () Bool)

(assert (=> b!5038022 (= e!3146588 (and (inv!77085 (xs!18826 (left!42679 (left!42679 t!4198)))) e!3146587))))

(assert (=> b!5037718 (= tp!1410522 (and (inv!77084 (left!42679 (left!42679 t!4198))) e!3146588))))

(assert (= (and b!5037718 ((_ is Node!15500) (left!42679 (left!42679 t!4198)))) b!5038021))

(assert (= b!5038022 b!5038023))

(assert (= (and b!5037718 ((_ is Leaf!25714) (left!42679 (left!42679 t!4198)))) b!5038022))

(declare-fun m!6071876 () Bool)

(assert (=> b!5038021 m!6071876))

(declare-fun m!6071878 () Bool)

(assert (=> b!5038021 m!6071878))

(declare-fun m!6071880 () Bool)

(assert (=> b!5038022 m!6071880))

(assert (=> b!5037718 m!6071520))

(declare-fun tp!1410552 () Bool)

(declare-fun tp!1410550 () Bool)

(declare-fun e!3146590 () Bool)

(declare-fun b!5038024 () Bool)

(assert (=> b!5038024 (= e!3146590 (and (inv!77084 (left!42679 (right!43009 (left!42679 t!4198)))) tp!1410550 (inv!77084 (right!43009 (right!43009 (left!42679 t!4198)))) tp!1410552))))

(declare-fun b!5038026 () Bool)

(declare-fun e!3146589 () Bool)

(declare-fun tp!1410551 () Bool)

(assert (=> b!5038026 (= e!3146589 tp!1410551)))

(declare-fun b!5038025 () Bool)

(assert (=> b!5038025 (= e!3146590 (and (inv!77085 (xs!18826 (right!43009 (left!42679 t!4198)))) e!3146589))))

(assert (=> b!5037718 (= tp!1410524 (and (inv!77084 (right!43009 (left!42679 t!4198))) e!3146590))))

(assert (= (and b!5037718 ((_ is Node!15500) (right!43009 (left!42679 t!4198)))) b!5038024))

(assert (= b!5038025 b!5038026))

(assert (= (and b!5037718 ((_ is Leaf!25714) (right!43009 (left!42679 t!4198)))) b!5038025))

(declare-fun m!6071882 () Bool)

(assert (=> b!5038024 m!6071882))

(declare-fun m!6071884 () Bool)

(assert (=> b!5038024 m!6071884))

(declare-fun m!6071886 () Bool)

(assert (=> b!5038025 m!6071886))

(assert (=> b!5037718 m!6071522))

(declare-fun b!5038027 () Bool)

(declare-fun e!3146591 () Bool)

(declare-fun tp!1410553 () Bool)

(assert (=> b!5038027 (= e!3146591 (and tp_is_empty!36763 tp!1410553))))

(assert (=> b!5037728 (= tp!1410530 e!3146591)))

(assert (= (and b!5037728 ((_ is Cons!58288) (t!370915 (innerList!15588 (xs!18826 t!4198))))) b!5038027))

(declare-fun b!5038028 () Bool)

(declare-fun e!3146592 () Bool)

(declare-fun tp!1410554 () Bool)

(assert (=> b!5038028 (= e!3146592 (and tp_is_empty!36763 tp!1410554))))

(assert (=> b!5037720 (= tp!1410523 e!3146592)))

(assert (= (and b!5037720 ((_ is Cons!58288) (innerList!15588 (xs!18826 (left!42679 t!4198))))) b!5038028))

(declare-fun e!3146594 () Bool)

(declare-fun tp!1410557 () Bool)

(declare-fun b!5038029 () Bool)

(declare-fun tp!1410555 () Bool)

(assert (=> b!5038029 (= e!3146594 (and (inv!77084 (left!42679 (left!42679 (right!43009 t!4198)))) tp!1410555 (inv!77084 (right!43009 (left!42679 (right!43009 t!4198)))) tp!1410557))))

(declare-fun b!5038031 () Bool)

(declare-fun e!3146593 () Bool)

(declare-fun tp!1410556 () Bool)

(assert (=> b!5038031 (= e!3146593 tp!1410556)))

(declare-fun b!5038030 () Bool)

(assert (=> b!5038030 (= e!3146594 (and (inv!77085 (xs!18826 (left!42679 (right!43009 t!4198)))) e!3146593))))

(assert (=> b!5037721 (= tp!1410525 (and (inv!77084 (left!42679 (right!43009 t!4198))) e!3146594))))

(assert (= (and b!5037721 ((_ is Node!15500) (left!42679 (right!43009 t!4198)))) b!5038029))

(assert (= b!5038030 b!5038031))

(assert (= (and b!5037721 ((_ is Leaf!25714) (left!42679 (right!43009 t!4198)))) b!5038030))

(declare-fun m!6071888 () Bool)

(assert (=> b!5038029 m!6071888))

(declare-fun m!6071890 () Bool)

(assert (=> b!5038029 m!6071890))

(declare-fun m!6071892 () Bool)

(assert (=> b!5038030 m!6071892))

(assert (=> b!5037721 m!6071526))

(declare-fun e!3146596 () Bool)

(declare-fun tp!1410558 () Bool)

(declare-fun tp!1410560 () Bool)

(declare-fun b!5038032 () Bool)

(assert (=> b!5038032 (= e!3146596 (and (inv!77084 (left!42679 (right!43009 (right!43009 t!4198)))) tp!1410558 (inv!77084 (right!43009 (right!43009 (right!43009 t!4198)))) tp!1410560))))

(declare-fun b!5038034 () Bool)

(declare-fun e!3146595 () Bool)

(declare-fun tp!1410559 () Bool)

(assert (=> b!5038034 (= e!3146595 tp!1410559)))

(declare-fun b!5038033 () Bool)

(assert (=> b!5038033 (= e!3146596 (and (inv!77085 (xs!18826 (right!43009 (right!43009 t!4198)))) e!3146595))))

(assert (=> b!5037721 (= tp!1410527 (and (inv!77084 (right!43009 (right!43009 t!4198))) e!3146596))))

(assert (= (and b!5037721 ((_ is Node!15500) (right!43009 (right!43009 t!4198)))) b!5038032))

(assert (= b!5038033 b!5038034))

(assert (= (and b!5037721 ((_ is Leaf!25714) (right!43009 (right!43009 t!4198)))) b!5038033))

(declare-fun m!6071894 () Bool)

(assert (=> b!5038032 m!6071894))

(declare-fun m!6071896 () Bool)

(assert (=> b!5038032 m!6071896))

(declare-fun m!6071898 () Bool)

(assert (=> b!5038033 m!6071898))

(assert (=> b!5037721 m!6071528))

(check-sat (not b!5037932) (not b!5038029) (not d!1620478) (not b!5038010) (not b!5037917) (not b!5037890) (not b!5037777) (not b!5038028) (not b!5037934) (not b!5037802) (not bm!351379) (not b!5038030) (not b!5037718) (not b!5037878) (not b!5037783) (not d!1620468) (not d!1620502) (not b!5037785) (not b!5037863) (not b!5037914) (not b!5037756) (not b!5037754) (not b!5038025) (not b!5038013) (not b!5038022) (not b!5038005) (not b!5038023) (not d!1620474) (not b!5037858) (not b!5037889) (not d!1620482) (not b!5037910) (not b!5037816) (not b!5037772) (not b!5037994) (not b!5037803) (not b!5037916) (not b!5038031) (not b!5037856) (not b!5037721) (not b!5037915) (not d!1620412) (not b!5037941) (not b!5037924) (not d!1620434) (not b!5037912) (not b!5037913) (not b!5037757) (not b!5037933) (not b!5038032) (not b!5038020) (not b!5037873) (not b!5037775) tp_is_empty!36763 (not b!5037884) (not d!1620504) (not bm!351376) (not b!5037887) (not b!5038027) (not d!1620396) (not b!5037921) (not d!1620438) (not d!1620416) (not b!5037907) (not d!1620444) (not d!1620390) (not b!5037774) (not b!5037885) (not b!5037815) (not b!5037886) (not b!5037875) (not d!1620432) (not d!1620380) (not b!5037750) (not d!1620452) (not b!5037931) (not b!5038034) (not d!1620464) (not b!5037926) (not b!5037876) (not b!5038008) (not b!5038026) (not b!5037929) (not b!5037860) (not b!5037861) (not b!5038007) (not b!5037746) (not b!5037888) (not b!5037995) (not b!5038033) (not b!5037759) (not d!1620460) (not b!5038012) (not b!5038021) (not b!5038024))
(check-sat)
