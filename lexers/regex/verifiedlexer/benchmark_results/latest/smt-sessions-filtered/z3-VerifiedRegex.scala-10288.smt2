; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!535226 () Bool)

(assert start!535226)

(declare-fun res!2158455 () Bool)

(declare-fun e!3163372 () Bool)

(assert (=> start!535226 (=> (not res!2158455) (not e!3163372))))

(declare-datatypes ((T!105146 0))(
  ( (T!105147 (val!23652 Int)) )
))
(declare-datatypes ((List!58562 0))(
  ( (Nil!58438) (Cons!58438 (h!64886 T!105146) (t!371315 List!58562)) )
))
(declare-datatypes ((IArray!31197 0))(
  ( (IArray!31198 (innerList!15656 List!58562)) )
))
(declare-datatypes ((Conc!15568 0))(
  ( (Node!15568 (left!42822 Conc!15568) (right!43152 Conc!15568) (csize!31366 Int) (cheight!15779 Int)) (Leaf!25857 (xs!18924 IArray!31197) (csize!31367 Int)) (Empty!15568) )
))
(declare-fun xs!286 () Conc!15568)

(declare-fun isBalanced!4430 (Conc!15568) Bool)

(assert (=> start!535226 (= res!2158455 (isBalanced!4430 xs!286))))

(assert (=> start!535226 e!3163372))

(declare-fun e!3163374 () Bool)

(declare-fun inv!77577 (Conc!15568) Bool)

(assert (=> start!535226 (and (inv!77577 xs!286) e!3163374)))

(declare-fun ys!41 () Conc!15568)

(declare-fun e!3163376 () Bool)

(assert (=> start!535226 (and (inv!77577 ys!41) e!3163376)))

(declare-fun b!5069578 () Bool)

(declare-fun res!2158458 () Bool)

(declare-fun e!3163371 () Bool)

(assert (=> b!5069578 (=> res!2158458 e!3163371)))

(declare-fun lt!2089379 () Conc!15568)

(assert (=> b!5069578 (= res!2158458 (not (isBalanced!4430 lt!2089379)))))

(declare-fun b!5069579 () Bool)

(declare-fun res!2158454 () Bool)

(assert (=> b!5069579 (=> (not res!2158454) (not e!3163372))))

(assert (=> b!5069579 (= res!2158454 (isBalanced!4430 ys!41))))

(declare-fun b!5069580 () Bool)

(declare-fun e!3163377 () Bool)

(declare-fun inv!77578 (IArray!31197) Bool)

(assert (=> b!5069580 (= e!3163376 (and (inv!77578 (xs!18924 ys!41)) e!3163377))))

(declare-fun e!3163378 () Bool)

(declare-fun b!5069581 () Bool)

(declare-fun list!18997 (Conc!15568) List!58562)

(declare-fun ++!12793 (List!58562 List!58562) List!58562)

(assert (=> b!5069581 (= e!3163378 (not (= (list!18997 lt!2089379) (++!12793 (list!18997 xs!286) (list!18997 ys!41)))))))

(declare-fun b!5069582 () Bool)

(declare-fun res!2158461 () Bool)

(declare-fun e!3163375 () Bool)

(assert (=> b!5069582 (=> (not res!2158461) (not e!3163375))))

(declare-fun height!2145 (Conc!15568) Int)

(assert (=> b!5069582 (= res!2158461 (< (height!2145 (left!42822 xs!286)) (height!2145 (right!43152 xs!286))))))

(declare-fun b!5069583 () Bool)

(assert (=> b!5069583 (= e!3163375 e!3163371)))

(declare-fun res!2158453 () Bool)

(assert (=> b!5069583 (=> res!2158453 e!3163371)))

(declare-fun appendAssocInst!912 (Conc!15568 Conc!15568) Bool)

(assert (=> b!5069583 (= res!2158453 (not (appendAssocInst!912 xs!286 ys!41)))))

(declare-fun err!4601 () Conc!15568)

(assert (=> b!5069583 (= lt!2089379 err!4601)))

(assert (=> b!5069583 true))

(declare-fun e!3163373 () Bool)

(assert (=> b!5069583 (and (inv!77577 err!4601) e!3163373)))

(declare-fun b!5069584 () Bool)

(declare-fun e!3163380 () Bool)

(declare-fun tp!1415269 () Bool)

(assert (=> b!5069584 (= e!3163380 tp!1415269)))

(declare-fun tp!1415267 () Bool)

(declare-fun b!5069585 () Bool)

(declare-fun tp!1415270 () Bool)

(assert (=> b!5069585 (= e!3163376 (and (inv!77577 (left!42822 ys!41)) tp!1415270 (inv!77577 (right!43152 ys!41)) tp!1415267))))

(declare-fun b!5069586 () Bool)

(assert (=> b!5069586 (= e!3163373 (and (inv!77578 (xs!18924 err!4601)) e!3163380))))

(declare-fun tp!1415268 () Bool)

(declare-fun tp!1415275 () Bool)

(declare-fun b!5069587 () Bool)

(assert (=> b!5069587 (= e!3163374 (and (inv!77577 (left!42822 xs!286)) tp!1415268 (inv!77577 (right!43152 xs!286)) tp!1415275))))

(declare-fun b!5069588 () Bool)

(declare-fun tp!1415274 () Bool)

(assert (=> b!5069588 (= e!3163377 tp!1415274)))

(declare-fun b!5069589 () Bool)

(declare-fun e!3163379 () Bool)

(assert (=> b!5069589 (= e!3163374 (and (inv!77578 (xs!18924 xs!286)) e!3163379))))

(declare-fun b!5069590 () Bool)

(declare-fun tp!1415271 () Bool)

(assert (=> b!5069590 (= e!3163379 tp!1415271)))

(declare-fun b!5069591 () Bool)

(assert (=> b!5069591 (= e!3163372 e!3163375)))

(declare-fun res!2158457 () Bool)

(assert (=> b!5069591 (=> (not res!2158457) (not e!3163375))))

(declare-fun lt!2089378 () Int)

(get-info :version)

(assert (=> b!5069591 (= res!2158457 (and (or (> (- 1) lt!2089378) (> lt!2089378 1)) (< lt!2089378 (- 1)) ((_ is Node!15568) xs!286)))))

(declare-fun lt!2089383 () Int)

(declare-fun lt!2089381 () Int)

(assert (=> b!5069591 (= lt!2089378 (- lt!2089383 lt!2089381))))

(assert (=> b!5069591 (= lt!2089381 (height!2145 xs!286))))

(assert (=> b!5069591 (= lt!2089383 (height!2145 ys!41))))

(declare-fun b!5069592 () Bool)

(declare-fun res!2158456 () Bool)

(assert (=> b!5069592 (=> (not res!2158456) (not e!3163375))))

(assert (=> b!5069592 (= res!2158456 (not ((_ is Node!15568) (right!43152 xs!286))))))

(declare-fun b!5069593 () Bool)

(assert (=> b!5069593 (= e!3163371 e!3163378)))

(declare-fun res!2158460 () Bool)

(assert (=> b!5069593 (=> res!2158460 e!3163378)))

(declare-fun lt!2089382 () Int)

(declare-fun lt!2089380 () Int)

(assert (=> b!5069593 (= res!2158460 (or (> lt!2089382 (+ 1 lt!2089380)) (< lt!2089382 lt!2089380)))))

(assert (=> b!5069593 (= lt!2089382 (height!2145 lt!2089379))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5069593 (= lt!2089380 (max!0 lt!2089381 lt!2089383))))

(declare-fun b!5069594 () Bool)

(declare-fun res!2158459 () Bool)

(assert (=> b!5069594 (=> (not res!2158459) (not e!3163372))))

(assert (=> b!5069594 (= res!2158459 (and (not (= xs!286 Empty!15568)) (not (= ys!41 Empty!15568))))))

(declare-fun b!5069595 () Bool)

(declare-fun tp!1415272 () Bool)

(declare-fun tp!1415273 () Bool)

(assert (=> b!5069595 (= e!3163373 (and (inv!77577 (left!42822 err!4601)) tp!1415272 (inv!77577 (right!43152 err!4601)) tp!1415273))))

(assert (= (and start!535226 res!2158455) b!5069579))

(assert (= (and b!5069579 res!2158454) b!5069594))

(assert (= (and b!5069594 res!2158459) b!5069591))

(assert (= (and b!5069591 res!2158457) b!5069582))

(assert (= (and b!5069582 res!2158461) b!5069592))

(assert (= (and b!5069592 res!2158456) b!5069583))

(assert (= (and b!5069583 ((_ is Node!15568) err!4601)) b!5069595))

(assert (= b!5069586 b!5069584))

(assert (= (and b!5069583 ((_ is Leaf!25857) err!4601)) b!5069586))

(assert (= (and b!5069583 (not res!2158453)) b!5069578))

(assert (= (and b!5069578 (not res!2158458)) b!5069593))

(assert (= (and b!5069593 (not res!2158460)) b!5069581))

(assert (= (and start!535226 ((_ is Node!15568) xs!286)) b!5069587))

(assert (= b!5069589 b!5069590))

(assert (= (and start!535226 ((_ is Leaf!25857) xs!286)) b!5069589))

(assert (= (and start!535226 ((_ is Node!15568) ys!41)) b!5069585))

(assert (= b!5069580 b!5069588))

(assert (= (and start!535226 ((_ is Leaf!25857) ys!41)) b!5069580))

(declare-fun m!6114378 () Bool)

(assert (=> b!5069591 m!6114378))

(declare-fun m!6114380 () Bool)

(assert (=> b!5069591 m!6114380))

(declare-fun m!6114382 () Bool)

(assert (=> b!5069582 m!6114382))

(declare-fun m!6114384 () Bool)

(assert (=> b!5069582 m!6114384))

(declare-fun m!6114386 () Bool)

(assert (=> b!5069585 m!6114386))

(declare-fun m!6114388 () Bool)

(assert (=> b!5069585 m!6114388))

(declare-fun m!6114390 () Bool)

(assert (=> b!5069589 m!6114390))

(declare-fun m!6114392 () Bool)

(assert (=> b!5069595 m!6114392))

(declare-fun m!6114394 () Bool)

(assert (=> b!5069595 m!6114394))

(declare-fun m!6114396 () Bool)

(assert (=> b!5069583 m!6114396))

(declare-fun m!6114398 () Bool)

(assert (=> b!5069583 m!6114398))

(declare-fun m!6114400 () Bool)

(assert (=> b!5069578 m!6114400))

(declare-fun m!6114402 () Bool)

(assert (=> start!535226 m!6114402))

(declare-fun m!6114404 () Bool)

(assert (=> start!535226 m!6114404))

(declare-fun m!6114406 () Bool)

(assert (=> start!535226 m!6114406))

(declare-fun m!6114408 () Bool)

(assert (=> b!5069581 m!6114408))

(declare-fun m!6114410 () Bool)

(assert (=> b!5069581 m!6114410))

(declare-fun m!6114412 () Bool)

(assert (=> b!5069581 m!6114412))

(assert (=> b!5069581 m!6114410))

(assert (=> b!5069581 m!6114412))

(declare-fun m!6114414 () Bool)

(assert (=> b!5069581 m!6114414))

(declare-fun m!6114416 () Bool)

(assert (=> b!5069587 m!6114416))

(declare-fun m!6114418 () Bool)

(assert (=> b!5069587 m!6114418))

(declare-fun m!6114420 () Bool)

(assert (=> b!5069586 m!6114420))

(declare-fun m!6114422 () Bool)

(assert (=> b!5069579 m!6114422))

(declare-fun m!6114424 () Bool)

(assert (=> b!5069580 m!6114424))

(declare-fun m!6114426 () Bool)

(assert (=> b!5069593 m!6114426))

(declare-fun m!6114428 () Bool)

(assert (=> b!5069593 m!6114428))

(check-sat (not b!5069589) (not b!5069584) (not b!5069579) (not b!5069585) (not b!5069591) (not b!5069595) (not b!5069582) (not start!535226) (not b!5069586) (not b!5069588) (not b!5069583) (not b!5069587) (not b!5069593) (not b!5069581) (not b!5069578) (not b!5069590) (not b!5069580))
(check-sat)
(get-model)

(declare-fun d!1635645 () Bool)

(declare-fun size!39082 (List!58562) Int)

(assert (=> d!1635645 (= (inv!77578 (xs!18924 err!4601)) (<= (size!39082 (innerList!15656 (xs!18924 err!4601))) 2147483647))))

(declare-fun bs!1190078 () Bool)

(assert (= bs!1190078 d!1635645))

(declare-fun m!6114430 () Bool)

(assert (=> bs!1190078 m!6114430))

(assert (=> b!5069586 d!1635645))

(declare-fun d!1635647 () Bool)

(declare-fun res!2158474 () Bool)

(declare-fun e!3163386 () Bool)

(assert (=> d!1635647 (=> res!2158474 e!3163386)))

(assert (=> d!1635647 (= res!2158474 (not ((_ is Node!15568) xs!286)))))

(assert (=> d!1635647 (= (isBalanced!4430 xs!286) e!3163386)))

(declare-fun b!5069608 () Bool)

(declare-fun res!2158477 () Bool)

(declare-fun e!3163385 () Bool)

(assert (=> b!5069608 (=> (not res!2158477) (not e!3163385))))

(declare-fun isEmpty!31638 (Conc!15568) Bool)

(assert (=> b!5069608 (= res!2158477 (not (isEmpty!31638 (left!42822 xs!286))))))

(declare-fun b!5069609 () Bool)

(declare-fun res!2158478 () Bool)

(assert (=> b!5069609 (=> (not res!2158478) (not e!3163385))))

(assert (=> b!5069609 (= res!2158478 (isBalanced!4430 (right!43152 xs!286)))))

(declare-fun b!5069610 () Bool)

(assert (=> b!5069610 (= e!3163386 e!3163385)))

(declare-fun res!2158479 () Bool)

(assert (=> b!5069610 (=> (not res!2158479) (not e!3163385))))

(assert (=> b!5069610 (= res!2158479 (<= (- 1) (- (height!2145 (left!42822 xs!286)) (height!2145 (right!43152 xs!286)))))))

(declare-fun b!5069611 () Bool)

(declare-fun res!2158476 () Bool)

(assert (=> b!5069611 (=> (not res!2158476) (not e!3163385))))

(assert (=> b!5069611 (= res!2158476 (isBalanced!4430 (left!42822 xs!286)))))

(declare-fun b!5069612 () Bool)

(declare-fun res!2158475 () Bool)

(assert (=> b!5069612 (=> (not res!2158475) (not e!3163385))))

(assert (=> b!5069612 (= res!2158475 (<= (- (height!2145 (left!42822 xs!286)) (height!2145 (right!43152 xs!286))) 1))))

(declare-fun b!5069613 () Bool)

(assert (=> b!5069613 (= e!3163385 (not (isEmpty!31638 (right!43152 xs!286))))))

(assert (= (and d!1635647 (not res!2158474)) b!5069610))

(assert (= (and b!5069610 res!2158479) b!5069612))

(assert (= (and b!5069612 res!2158475) b!5069611))

(assert (= (and b!5069611 res!2158476) b!5069609))

(assert (= (and b!5069609 res!2158478) b!5069608))

(assert (= (and b!5069608 res!2158477) b!5069613))

(declare-fun m!6114432 () Bool)

(assert (=> b!5069609 m!6114432))

(declare-fun m!6114434 () Bool)

(assert (=> b!5069613 m!6114434))

(declare-fun m!6114436 () Bool)

(assert (=> b!5069611 m!6114436))

(assert (=> b!5069610 m!6114382))

(assert (=> b!5069610 m!6114384))

(declare-fun m!6114438 () Bool)

(assert (=> b!5069608 m!6114438))

(assert (=> b!5069612 m!6114382))

(assert (=> b!5069612 m!6114384))

(assert (=> start!535226 d!1635647))

(declare-fun d!1635651 () Bool)

(declare-fun c!870398 () Bool)

(assert (=> d!1635651 (= c!870398 ((_ is Node!15568) xs!286))))

(declare-fun e!3163391 () Bool)

(assert (=> d!1635651 (= (inv!77577 xs!286) e!3163391)))

(declare-fun b!5069620 () Bool)

(declare-fun inv!77580 (Conc!15568) Bool)

(assert (=> b!5069620 (= e!3163391 (inv!77580 xs!286))))

(declare-fun b!5069621 () Bool)

(declare-fun e!3163392 () Bool)

(assert (=> b!5069621 (= e!3163391 e!3163392)))

(declare-fun res!2158482 () Bool)

(assert (=> b!5069621 (= res!2158482 (not ((_ is Leaf!25857) xs!286)))))

(assert (=> b!5069621 (=> res!2158482 e!3163392)))

(declare-fun b!5069622 () Bool)

(declare-fun inv!77582 (Conc!15568) Bool)

(assert (=> b!5069622 (= e!3163392 (inv!77582 xs!286))))

(assert (= (and d!1635651 c!870398) b!5069620))

(assert (= (and d!1635651 (not c!870398)) b!5069621))

(assert (= (and b!5069621 (not res!2158482)) b!5069622))

(declare-fun m!6114442 () Bool)

(assert (=> b!5069620 m!6114442))

(declare-fun m!6114444 () Bool)

(assert (=> b!5069622 m!6114444))

(assert (=> start!535226 d!1635651))

(declare-fun d!1635659 () Bool)

(declare-fun c!870399 () Bool)

(assert (=> d!1635659 (= c!870399 ((_ is Node!15568) ys!41))))

(declare-fun e!3163393 () Bool)

(assert (=> d!1635659 (= (inv!77577 ys!41) e!3163393)))

(declare-fun b!5069623 () Bool)

(assert (=> b!5069623 (= e!3163393 (inv!77580 ys!41))))

(declare-fun b!5069624 () Bool)

(declare-fun e!3163394 () Bool)

(assert (=> b!5069624 (= e!3163393 e!3163394)))

(declare-fun res!2158483 () Bool)

(assert (=> b!5069624 (= res!2158483 (not ((_ is Leaf!25857) ys!41)))))

(assert (=> b!5069624 (=> res!2158483 e!3163394)))

(declare-fun b!5069625 () Bool)

(assert (=> b!5069625 (= e!3163394 (inv!77582 ys!41))))

(assert (= (and d!1635659 c!870399) b!5069623))

(assert (= (and d!1635659 (not c!870399)) b!5069624))

(assert (= (and b!5069624 (not res!2158483)) b!5069625))

(declare-fun m!6114446 () Bool)

(assert (=> b!5069623 m!6114446))

(declare-fun m!6114448 () Bool)

(assert (=> b!5069625 m!6114448))

(assert (=> start!535226 d!1635659))

(declare-fun d!1635661 () Bool)

(declare-fun c!870400 () Bool)

(assert (=> d!1635661 (= c!870400 ((_ is Node!15568) (left!42822 ys!41)))))

(declare-fun e!3163395 () Bool)

(assert (=> d!1635661 (= (inv!77577 (left!42822 ys!41)) e!3163395)))

(declare-fun b!5069626 () Bool)

(assert (=> b!5069626 (= e!3163395 (inv!77580 (left!42822 ys!41)))))

(declare-fun b!5069627 () Bool)

(declare-fun e!3163396 () Bool)

(assert (=> b!5069627 (= e!3163395 e!3163396)))

(declare-fun res!2158484 () Bool)

(assert (=> b!5069627 (= res!2158484 (not ((_ is Leaf!25857) (left!42822 ys!41))))))

(assert (=> b!5069627 (=> res!2158484 e!3163396)))

(declare-fun b!5069628 () Bool)

(assert (=> b!5069628 (= e!3163396 (inv!77582 (left!42822 ys!41)))))

(assert (= (and d!1635661 c!870400) b!5069626))

(assert (= (and d!1635661 (not c!870400)) b!5069627))

(assert (= (and b!5069627 (not res!2158484)) b!5069628))

(declare-fun m!6114450 () Bool)

(assert (=> b!5069626 m!6114450))

(declare-fun m!6114452 () Bool)

(assert (=> b!5069628 m!6114452))

(assert (=> b!5069585 d!1635661))

(declare-fun d!1635663 () Bool)

(declare-fun c!870401 () Bool)

(assert (=> d!1635663 (= c!870401 ((_ is Node!15568) (right!43152 ys!41)))))

(declare-fun e!3163397 () Bool)

(assert (=> d!1635663 (= (inv!77577 (right!43152 ys!41)) e!3163397)))

(declare-fun b!5069629 () Bool)

(assert (=> b!5069629 (= e!3163397 (inv!77580 (right!43152 ys!41)))))

(declare-fun b!5069630 () Bool)

(declare-fun e!3163398 () Bool)

(assert (=> b!5069630 (= e!3163397 e!3163398)))

(declare-fun res!2158485 () Bool)

(assert (=> b!5069630 (= res!2158485 (not ((_ is Leaf!25857) (right!43152 ys!41))))))

(assert (=> b!5069630 (=> res!2158485 e!3163398)))

(declare-fun b!5069631 () Bool)

(assert (=> b!5069631 (= e!3163398 (inv!77582 (right!43152 ys!41)))))

(assert (= (and d!1635663 c!870401) b!5069629))

(assert (= (and d!1635663 (not c!870401)) b!5069630))

(assert (= (and b!5069630 (not res!2158485)) b!5069631))

(declare-fun m!6114454 () Bool)

(assert (=> b!5069629 m!6114454))

(declare-fun m!6114456 () Bool)

(assert (=> b!5069631 m!6114456))

(assert (=> b!5069585 d!1635663))

(declare-fun d!1635665 () Bool)

(declare-fun c!870402 () Bool)

(assert (=> d!1635665 (= c!870402 ((_ is Node!15568) (left!42822 err!4601)))))

(declare-fun e!3163399 () Bool)

(assert (=> d!1635665 (= (inv!77577 (left!42822 err!4601)) e!3163399)))

(declare-fun b!5069632 () Bool)

(assert (=> b!5069632 (= e!3163399 (inv!77580 (left!42822 err!4601)))))

(declare-fun b!5069633 () Bool)

(declare-fun e!3163400 () Bool)

(assert (=> b!5069633 (= e!3163399 e!3163400)))

(declare-fun res!2158486 () Bool)

(assert (=> b!5069633 (= res!2158486 (not ((_ is Leaf!25857) (left!42822 err!4601))))))

(assert (=> b!5069633 (=> res!2158486 e!3163400)))

(declare-fun b!5069634 () Bool)

(assert (=> b!5069634 (= e!3163400 (inv!77582 (left!42822 err!4601)))))

(assert (= (and d!1635665 c!870402) b!5069632))

(assert (= (and d!1635665 (not c!870402)) b!5069633))

(assert (= (and b!5069633 (not res!2158486)) b!5069634))

(declare-fun m!6114458 () Bool)

(assert (=> b!5069632 m!6114458))

(declare-fun m!6114460 () Bool)

(assert (=> b!5069634 m!6114460))

(assert (=> b!5069595 d!1635665))

(declare-fun d!1635667 () Bool)

(declare-fun c!870405 () Bool)

(assert (=> d!1635667 (= c!870405 ((_ is Node!15568) (right!43152 err!4601)))))

(declare-fun e!3163405 () Bool)

(assert (=> d!1635667 (= (inv!77577 (right!43152 err!4601)) e!3163405)))

(declare-fun b!5069641 () Bool)

(assert (=> b!5069641 (= e!3163405 (inv!77580 (right!43152 err!4601)))))

(declare-fun b!5069642 () Bool)

(declare-fun e!3163406 () Bool)

(assert (=> b!5069642 (= e!3163405 e!3163406)))

(declare-fun res!2158489 () Bool)

(assert (=> b!5069642 (= res!2158489 (not ((_ is Leaf!25857) (right!43152 err!4601))))))

(assert (=> b!5069642 (=> res!2158489 e!3163406)))

(declare-fun b!5069643 () Bool)

(assert (=> b!5069643 (= e!3163406 (inv!77582 (right!43152 err!4601)))))

(assert (= (and d!1635667 c!870405) b!5069641))

(assert (= (and d!1635667 (not c!870405)) b!5069642))

(assert (= (and b!5069642 (not res!2158489)) b!5069643))

(declare-fun m!6114462 () Bool)

(assert (=> b!5069641 m!6114462))

(declare-fun m!6114464 () Bool)

(assert (=> b!5069643 m!6114464))

(assert (=> b!5069595 d!1635667))

(declare-fun b!5069701 () Bool)

(declare-fun e!3163451 () Bool)

(declare-fun e!3163445 () Bool)

(assert (=> b!5069701 (= e!3163451 e!3163445)))

(declare-fun res!2158517 () Bool)

(assert (=> b!5069701 (=> res!2158517 e!3163445)))

(assert (=> b!5069701 (= res!2158517 (not ((_ is Node!15568) (right!43152 xs!286))))))

(declare-fun b!5069702 () Bool)

(declare-fun e!3163452 () Bool)

(assert (=> b!5069702 (= e!3163445 e!3163452)))

(declare-fun res!2158516 () Bool)

(assert (=> b!5069702 (=> (not res!2158516) (not e!3163452))))

(declare-fun appendAssoc!303 (List!58562 List!58562 List!58562) Bool)

(assert (=> b!5069702 (= res!2158516 (appendAssoc!303 (list!18997 (left!42822 (right!43152 xs!286))) (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41)))))

(declare-fun b!5069703 () Bool)

(declare-fun e!3163448 () Bool)

(assert (=> b!5069703 (= e!3163448 e!3163451)))

(declare-fun res!2158523 () Bool)

(assert (=> b!5069703 (=> (not res!2158523) (not e!3163451))))

(assert (=> b!5069703 (= res!2158523 (appendAssoc!303 (list!18997 (left!42822 xs!286)) (list!18997 (right!43152 xs!286)) (list!18997 ys!41)))))

(declare-fun b!5069704 () Bool)

(declare-fun e!3163449 () Bool)

(assert (=> b!5069704 (= e!3163449 (appendAssoc!303 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41)))) (list!18997 (right!43152 (left!42822 ys!41))) (list!18997 (right!43152 ys!41))))))

(declare-fun b!5069705 () Bool)

(declare-fun e!3163447 () Bool)

(declare-fun e!3163453 () Bool)

(assert (=> b!5069705 (= e!3163447 e!3163453)))

(declare-fun res!2158518 () Bool)

(assert (=> b!5069705 (=> res!2158518 e!3163453)))

(assert (=> b!5069705 (= res!2158518 (not ((_ is Node!15568) (left!42822 ys!41))))))

(declare-fun b!5069706 () Bool)

(declare-fun e!3163450 () Bool)

(declare-fun e!3163446 () Bool)

(assert (=> b!5069706 (= e!3163450 e!3163446)))

(declare-fun res!2158521 () Bool)

(assert (=> b!5069706 (=> res!2158521 e!3163446)))

(assert (=> b!5069706 (= res!2158521 (not ((_ is Node!15568) ys!41)))))

(declare-fun d!1635669 () Bool)

(assert (=> d!1635669 e!3163450))

(declare-fun res!2158520 () Bool)

(assert (=> d!1635669 (=> (not res!2158520) (not e!3163450))))

(assert (=> d!1635669 (= res!2158520 e!3163448)))

(declare-fun res!2158522 () Bool)

(assert (=> d!1635669 (=> res!2158522 e!3163448)))

(assert (=> d!1635669 (= res!2158522 (not ((_ is Node!15568) xs!286)))))

(assert (=> d!1635669 (= (appendAssocInst!912 xs!286 ys!41) true)))

(declare-fun b!5069700 () Bool)

(assert (=> b!5069700 (= e!3163452 (appendAssoc!303 (list!18997 (left!42822 xs!286)) (list!18997 (left!42822 (right!43152 xs!286))) (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41))))))

(declare-fun b!5069707 () Bool)

(assert (=> b!5069707 (= e!3163453 e!3163449)))

(declare-fun res!2158524 () Bool)

(assert (=> b!5069707 (=> (not res!2158524) (not e!3163449))))

(assert (=> b!5069707 (= res!2158524 (appendAssoc!303 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))) (list!18997 (right!43152 (left!42822 ys!41)))))))

(declare-fun b!5069708 () Bool)

(assert (=> b!5069708 (= e!3163446 e!3163447)))

(declare-fun res!2158519 () Bool)

(assert (=> b!5069708 (=> (not res!2158519) (not e!3163447))))

(assert (=> b!5069708 (= res!2158519 (appendAssoc!303 (list!18997 xs!286) (list!18997 (left!42822 ys!41)) (list!18997 (right!43152 ys!41))))))

(assert (= (and d!1635669 (not res!2158522)) b!5069703))

(assert (= (and b!5069703 res!2158523) b!5069701))

(assert (= (and b!5069701 (not res!2158517)) b!5069702))

(assert (= (and b!5069702 res!2158516) b!5069700))

(assert (= (and d!1635669 res!2158520) b!5069706))

(assert (= (and b!5069706 (not res!2158521)) b!5069708))

(assert (= (and b!5069708 res!2158519) b!5069705))

(assert (= (and b!5069705 (not res!2158518)) b!5069707))

(assert (= (and b!5069707 res!2158524) b!5069704))

(assert (=> b!5069704 m!6114410))

(assert (=> b!5069704 m!6114410))

(declare-fun m!6114512 () Bool)

(assert (=> b!5069704 m!6114512))

(declare-fun m!6114514 () Bool)

(assert (=> b!5069704 m!6114514))

(declare-fun m!6114516 () Bool)

(assert (=> b!5069704 m!6114516))

(declare-fun m!6114518 () Bool)

(assert (=> b!5069704 m!6114518))

(assert (=> b!5069704 m!6114514))

(assert (=> b!5069704 m!6114516))

(assert (=> b!5069704 m!6114518))

(declare-fun m!6114520 () Bool)

(assert (=> b!5069704 m!6114520))

(assert (=> b!5069704 m!6114512))

(declare-fun m!6114522 () Bool)

(assert (=> b!5069702 m!6114522))

(declare-fun m!6114524 () Bool)

(assert (=> b!5069702 m!6114524))

(assert (=> b!5069702 m!6114412))

(assert (=> b!5069702 m!6114522))

(assert (=> b!5069702 m!6114524))

(assert (=> b!5069702 m!6114412))

(declare-fun m!6114526 () Bool)

(assert (=> b!5069702 m!6114526))

(assert (=> b!5069707 m!6114410))

(assert (=> b!5069707 m!6114512))

(assert (=> b!5069707 m!6114516))

(assert (=> b!5069707 m!6114410))

(assert (=> b!5069707 m!6114512))

(assert (=> b!5069707 m!6114516))

(declare-fun m!6114528 () Bool)

(assert (=> b!5069707 m!6114528))

(assert (=> b!5069708 m!6114410))

(declare-fun m!6114530 () Bool)

(assert (=> b!5069708 m!6114530))

(assert (=> b!5069708 m!6114518))

(assert (=> b!5069708 m!6114410))

(assert (=> b!5069708 m!6114530))

(assert (=> b!5069708 m!6114518))

(declare-fun m!6114532 () Bool)

(assert (=> b!5069708 m!6114532))

(declare-fun m!6114534 () Bool)

(assert (=> b!5069703 m!6114534))

(declare-fun m!6114536 () Bool)

(assert (=> b!5069703 m!6114536))

(assert (=> b!5069703 m!6114412))

(assert (=> b!5069703 m!6114534))

(assert (=> b!5069703 m!6114536))

(assert (=> b!5069703 m!6114412))

(declare-fun m!6114538 () Bool)

(assert (=> b!5069703 m!6114538))

(assert (=> b!5069700 m!6114524))

(assert (=> b!5069700 m!6114412))

(declare-fun m!6114540 () Bool)

(assert (=> b!5069700 m!6114540))

(assert (=> b!5069700 m!6114524))

(assert (=> b!5069700 m!6114522))

(assert (=> b!5069700 m!6114534))

(assert (=> b!5069700 m!6114534))

(assert (=> b!5069700 m!6114522))

(assert (=> b!5069700 m!6114540))

(declare-fun m!6114542 () Bool)

(assert (=> b!5069700 m!6114542))

(assert (=> b!5069700 m!6114412))

(assert (=> b!5069583 d!1635669))

(declare-fun d!1635683 () Bool)

(declare-fun c!870421 () Bool)

(assert (=> d!1635683 (= c!870421 ((_ is Node!15568) err!4601))))

(declare-fun e!3163458 () Bool)

(assert (=> d!1635683 (= (inv!77577 err!4601) e!3163458)))

(declare-fun b!5069721 () Bool)

(assert (=> b!5069721 (= e!3163458 (inv!77580 err!4601))))

(declare-fun b!5069722 () Bool)

(declare-fun e!3163459 () Bool)

(assert (=> b!5069722 (= e!3163458 e!3163459)))

(declare-fun res!2158537 () Bool)

(assert (=> b!5069722 (= res!2158537 (not ((_ is Leaf!25857) err!4601)))))

(assert (=> b!5069722 (=> res!2158537 e!3163459)))

(declare-fun b!5069723 () Bool)

(assert (=> b!5069723 (= e!3163459 (inv!77582 err!4601))))

(assert (= (and d!1635683 c!870421) b!5069721))

(assert (= (and d!1635683 (not c!870421)) b!5069722))

(assert (= (and b!5069722 (not res!2158537)) b!5069723))

(declare-fun m!6114544 () Bool)

(assert (=> b!5069721 m!6114544))

(declare-fun m!6114546 () Bool)

(assert (=> b!5069723 m!6114546))

(assert (=> b!5069583 d!1635683))

(declare-fun d!1635685 () Bool)

(assert (=> d!1635685 (= (height!2145 lt!2089379) (ite ((_ is Empty!15568) lt!2089379) 0 (ite ((_ is Leaf!25857) lt!2089379) 1 (cheight!15779 lt!2089379))))))

(assert (=> b!5069593 d!1635685))

(declare-fun d!1635687 () Bool)

(assert (=> d!1635687 (= (max!0 lt!2089381 lt!2089383) (ite (< lt!2089381 lt!2089383) lt!2089383 lt!2089381))))

(assert (=> b!5069593 d!1635687))

(declare-fun d!1635689 () Bool)

(assert (=> d!1635689 (= (height!2145 (left!42822 xs!286)) (ite ((_ is Empty!15568) (left!42822 xs!286)) 0 (ite ((_ is Leaf!25857) (left!42822 xs!286)) 1 (cheight!15779 (left!42822 xs!286)))))))

(assert (=> b!5069582 d!1635689))

(declare-fun d!1635691 () Bool)

(assert (=> d!1635691 (= (height!2145 (right!43152 xs!286)) (ite ((_ is Empty!15568) (right!43152 xs!286)) 0 (ite ((_ is Leaf!25857) (right!43152 xs!286)) 1 (cheight!15779 (right!43152 xs!286)))))))

(assert (=> b!5069582 d!1635691))

(declare-fun b!5069764 () Bool)

(declare-fun e!3163481 () List!58562)

(declare-fun list!18999 (IArray!31197) List!58562)

(assert (=> b!5069764 (= e!3163481 (list!18999 (xs!18924 lt!2089379)))))

(declare-fun d!1635693 () Bool)

(declare-fun c!870432 () Bool)

(assert (=> d!1635693 (= c!870432 ((_ is Empty!15568) lt!2089379))))

(declare-fun e!3163480 () List!58562)

(assert (=> d!1635693 (= (list!18997 lt!2089379) e!3163480)))

(declare-fun b!5069763 () Bool)

(assert (=> b!5069763 (= e!3163480 e!3163481)))

(declare-fun c!870433 () Bool)

(assert (=> b!5069763 (= c!870433 ((_ is Leaf!25857) lt!2089379))))

(declare-fun b!5069762 () Bool)

(assert (=> b!5069762 (= e!3163480 Nil!58438)))

(declare-fun b!5069765 () Bool)

(assert (=> b!5069765 (= e!3163481 (++!12793 (list!18997 (left!42822 lt!2089379)) (list!18997 (right!43152 lt!2089379))))))

(assert (= (and d!1635693 c!870432) b!5069762))

(assert (= (and d!1635693 (not c!870432)) b!5069763))

(assert (= (and b!5069763 c!870433) b!5069764))

(assert (= (and b!5069763 (not c!870433)) b!5069765))

(declare-fun m!6114596 () Bool)

(assert (=> b!5069764 m!6114596))

(declare-fun m!6114598 () Bool)

(assert (=> b!5069765 m!6114598))

(declare-fun m!6114600 () Bool)

(assert (=> b!5069765 m!6114600))

(assert (=> b!5069765 m!6114598))

(assert (=> b!5069765 m!6114600))

(declare-fun m!6114602 () Bool)

(assert (=> b!5069765 m!6114602))

(assert (=> b!5069581 d!1635693))

(declare-fun b!5069776 () Bool)

(declare-fun res!2158561 () Bool)

(declare-fun e!3163487 () Bool)

(assert (=> b!5069776 (=> (not res!2158561) (not e!3163487))))

(declare-fun lt!2089389 () List!58562)

(assert (=> b!5069776 (= res!2158561 (= (size!39082 lt!2089389) (+ (size!39082 (list!18997 xs!286)) (size!39082 (list!18997 ys!41)))))))

(declare-fun b!5069777 () Bool)

(assert (=> b!5069777 (= e!3163487 (or (not (= (list!18997 ys!41) Nil!58438)) (= lt!2089389 (list!18997 xs!286))))))

(declare-fun b!5069774 () Bool)

(declare-fun e!3163486 () List!58562)

(assert (=> b!5069774 (= e!3163486 (list!18997 ys!41))))

(declare-fun d!1635715 () Bool)

(assert (=> d!1635715 e!3163487))

(declare-fun res!2158560 () Bool)

(assert (=> d!1635715 (=> (not res!2158560) (not e!3163487))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10420 (List!58562) (InoxSet T!105146))

(assert (=> d!1635715 (= res!2158560 (= (content!10420 lt!2089389) ((_ map or) (content!10420 (list!18997 xs!286)) (content!10420 (list!18997 ys!41)))))))

(assert (=> d!1635715 (= lt!2089389 e!3163486)))

(declare-fun c!870436 () Bool)

(assert (=> d!1635715 (= c!870436 ((_ is Nil!58438) (list!18997 xs!286)))))

(assert (=> d!1635715 (= (++!12793 (list!18997 xs!286) (list!18997 ys!41)) lt!2089389)))

(declare-fun b!5069775 () Bool)

(assert (=> b!5069775 (= e!3163486 (Cons!58438 (h!64886 (list!18997 xs!286)) (++!12793 (t!371315 (list!18997 xs!286)) (list!18997 ys!41))))))

(assert (= (and d!1635715 c!870436) b!5069774))

(assert (= (and d!1635715 (not c!870436)) b!5069775))

(assert (= (and d!1635715 res!2158560) b!5069776))

(assert (= (and b!5069776 res!2158561) b!5069777))

(declare-fun m!6114604 () Bool)

(assert (=> b!5069776 m!6114604))

(assert (=> b!5069776 m!6114410))

(declare-fun m!6114606 () Bool)

(assert (=> b!5069776 m!6114606))

(assert (=> b!5069776 m!6114412))

(declare-fun m!6114608 () Bool)

(assert (=> b!5069776 m!6114608))

(declare-fun m!6114610 () Bool)

(assert (=> d!1635715 m!6114610))

(assert (=> d!1635715 m!6114410))

(declare-fun m!6114612 () Bool)

(assert (=> d!1635715 m!6114612))

(assert (=> d!1635715 m!6114412))

(declare-fun m!6114614 () Bool)

(assert (=> d!1635715 m!6114614))

(assert (=> b!5069775 m!6114412))

(declare-fun m!6114616 () Bool)

(assert (=> b!5069775 m!6114616))

(assert (=> b!5069581 d!1635715))

(declare-fun b!5069780 () Bool)

(declare-fun e!3163491 () List!58562)

(assert (=> b!5069780 (= e!3163491 (list!18999 (xs!18924 xs!286)))))

(declare-fun d!1635717 () Bool)

(declare-fun c!870437 () Bool)

(assert (=> d!1635717 (= c!870437 ((_ is Empty!15568) xs!286))))

(declare-fun e!3163490 () List!58562)

(assert (=> d!1635717 (= (list!18997 xs!286) e!3163490)))

(declare-fun b!5069779 () Bool)

(assert (=> b!5069779 (= e!3163490 e!3163491)))

(declare-fun c!870438 () Bool)

(assert (=> b!5069779 (= c!870438 ((_ is Leaf!25857) xs!286))))

(declare-fun b!5069778 () Bool)

(assert (=> b!5069778 (= e!3163490 Nil!58438)))

(declare-fun b!5069781 () Bool)

(assert (=> b!5069781 (= e!3163491 (++!12793 (list!18997 (left!42822 xs!286)) (list!18997 (right!43152 xs!286))))))

(assert (= (and d!1635717 c!870437) b!5069778))

(assert (= (and d!1635717 (not c!870437)) b!5069779))

(assert (= (and b!5069779 c!870438) b!5069780))

(assert (= (and b!5069779 (not c!870438)) b!5069781))

(declare-fun m!6114618 () Bool)

(assert (=> b!5069780 m!6114618))

(assert (=> b!5069781 m!6114534))

(assert (=> b!5069781 m!6114536))

(assert (=> b!5069781 m!6114534))

(assert (=> b!5069781 m!6114536))

(declare-fun m!6114620 () Bool)

(assert (=> b!5069781 m!6114620))

(assert (=> b!5069581 d!1635717))

(declare-fun b!5069795 () Bool)

(declare-fun e!3163503 () List!58562)

(assert (=> b!5069795 (= e!3163503 (list!18999 (xs!18924 ys!41)))))

(declare-fun d!1635719 () Bool)

(declare-fun c!870439 () Bool)

(assert (=> d!1635719 (= c!870439 ((_ is Empty!15568) ys!41))))

(declare-fun e!3163502 () List!58562)

(assert (=> d!1635719 (= (list!18997 ys!41) e!3163502)))

(declare-fun b!5069793 () Bool)

(assert (=> b!5069793 (= e!3163502 e!3163503)))

(declare-fun c!870440 () Bool)

(assert (=> b!5069793 (= c!870440 ((_ is Leaf!25857) ys!41))))

(declare-fun b!5069792 () Bool)

(assert (=> b!5069792 (= e!3163502 Nil!58438)))

(declare-fun b!5069797 () Bool)

(assert (=> b!5069797 (= e!3163503 (++!12793 (list!18997 (left!42822 ys!41)) (list!18997 (right!43152 ys!41))))))

(assert (= (and d!1635719 c!870439) b!5069792))

(assert (= (and d!1635719 (not c!870439)) b!5069793))

(assert (= (and b!5069793 c!870440) b!5069795))

(assert (= (and b!5069793 (not c!870440)) b!5069797))

(declare-fun m!6114622 () Bool)

(assert (=> b!5069795 m!6114622))

(assert (=> b!5069797 m!6114530))

(assert (=> b!5069797 m!6114518))

(assert (=> b!5069797 m!6114530))

(assert (=> b!5069797 m!6114518))

(declare-fun m!6114624 () Bool)

(assert (=> b!5069797 m!6114624))

(assert (=> b!5069581 d!1635719))

(declare-fun d!1635721 () Bool)

(assert (=> d!1635721 (= (height!2145 xs!286) (ite ((_ is Empty!15568) xs!286) 0 (ite ((_ is Leaf!25857) xs!286) 1 (cheight!15779 xs!286))))))

(assert (=> b!5069591 d!1635721))

(declare-fun d!1635723 () Bool)

(assert (=> d!1635723 (= (height!2145 ys!41) (ite ((_ is Empty!15568) ys!41) 0 (ite ((_ is Leaf!25857) ys!41) 1 (cheight!15779 ys!41))))))

(assert (=> b!5069591 d!1635723))

(declare-fun d!1635725 () Bool)

(assert (=> d!1635725 (= (inv!77578 (xs!18924 ys!41)) (<= (size!39082 (innerList!15656 (xs!18924 ys!41))) 2147483647))))

(declare-fun bs!1190082 () Bool)

(assert (= bs!1190082 d!1635725))

(declare-fun m!6114626 () Bool)

(assert (=> bs!1190082 m!6114626))

(assert (=> b!5069580 d!1635725))

(declare-fun d!1635727 () Bool)

(declare-fun res!2158580 () Bool)

(declare-fun e!3163511 () Bool)

(assert (=> d!1635727 (=> res!2158580 e!3163511)))

(assert (=> d!1635727 (= res!2158580 (not ((_ is Node!15568) ys!41)))))

(assert (=> d!1635727 (= (isBalanced!4430 ys!41) e!3163511)))

(declare-fun b!5069804 () Bool)

(declare-fun res!2158583 () Bool)

(declare-fun e!3163510 () Bool)

(assert (=> b!5069804 (=> (not res!2158583) (not e!3163510))))

(assert (=> b!5069804 (= res!2158583 (not (isEmpty!31638 (left!42822 ys!41))))))

(declare-fun b!5069805 () Bool)

(declare-fun res!2158584 () Bool)

(assert (=> b!5069805 (=> (not res!2158584) (not e!3163510))))

(assert (=> b!5069805 (= res!2158584 (isBalanced!4430 (right!43152 ys!41)))))

(declare-fun b!5069806 () Bool)

(assert (=> b!5069806 (= e!3163511 e!3163510)))

(declare-fun res!2158585 () Bool)

(assert (=> b!5069806 (=> (not res!2158585) (not e!3163510))))

(assert (=> b!5069806 (= res!2158585 (<= (- 1) (- (height!2145 (left!42822 ys!41)) (height!2145 (right!43152 ys!41)))))))

(declare-fun b!5069807 () Bool)

(declare-fun res!2158582 () Bool)

(assert (=> b!5069807 (=> (not res!2158582) (not e!3163510))))

(assert (=> b!5069807 (= res!2158582 (isBalanced!4430 (left!42822 ys!41)))))

(declare-fun b!5069808 () Bool)

(declare-fun res!2158581 () Bool)

(assert (=> b!5069808 (=> (not res!2158581) (not e!3163510))))

(assert (=> b!5069808 (= res!2158581 (<= (- (height!2145 (left!42822 ys!41)) (height!2145 (right!43152 ys!41))) 1))))

(declare-fun b!5069809 () Bool)

(assert (=> b!5069809 (= e!3163510 (not (isEmpty!31638 (right!43152 ys!41))))))

(assert (= (and d!1635727 (not res!2158580)) b!5069806))

(assert (= (and b!5069806 res!2158585) b!5069808))

(assert (= (and b!5069808 res!2158581) b!5069807))

(assert (= (and b!5069807 res!2158582) b!5069805))

(assert (= (and b!5069805 res!2158584) b!5069804))

(assert (= (and b!5069804 res!2158583) b!5069809))

(declare-fun m!6114628 () Bool)

(assert (=> b!5069805 m!6114628))

(declare-fun m!6114630 () Bool)

(assert (=> b!5069809 m!6114630))

(declare-fun m!6114632 () Bool)

(assert (=> b!5069807 m!6114632))

(declare-fun m!6114634 () Bool)

(assert (=> b!5069806 m!6114634))

(declare-fun m!6114636 () Bool)

(assert (=> b!5069806 m!6114636))

(declare-fun m!6114638 () Bool)

(assert (=> b!5069804 m!6114638))

(assert (=> b!5069808 m!6114634))

(assert (=> b!5069808 m!6114636))

(assert (=> b!5069579 d!1635727))

(declare-fun d!1635729 () Bool)

(assert (=> d!1635729 (= (inv!77578 (xs!18924 xs!286)) (<= (size!39082 (innerList!15656 (xs!18924 xs!286))) 2147483647))))

(declare-fun bs!1190083 () Bool)

(assert (= bs!1190083 d!1635729))

(declare-fun m!6114640 () Bool)

(assert (=> bs!1190083 m!6114640))

(assert (=> b!5069589 d!1635729))

(declare-fun d!1635731 () Bool)

(declare-fun res!2158586 () Bool)

(declare-fun e!3163513 () Bool)

(assert (=> d!1635731 (=> res!2158586 e!3163513)))

(assert (=> d!1635731 (= res!2158586 (not ((_ is Node!15568) lt!2089379)))))

(assert (=> d!1635731 (= (isBalanced!4430 lt!2089379) e!3163513)))

(declare-fun b!5069810 () Bool)

(declare-fun res!2158589 () Bool)

(declare-fun e!3163512 () Bool)

(assert (=> b!5069810 (=> (not res!2158589) (not e!3163512))))

(assert (=> b!5069810 (= res!2158589 (not (isEmpty!31638 (left!42822 lt!2089379))))))

(declare-fun b!5069811 () Bool)

(declare-fun res!2158590 () Bool)

(assert (=> b!5069811 (=> (not res!2158590) (not e!3163512))))

(assert (=> b!5069811 (= res!2158590 (isBalanced!4430 (right!43152 lt!2089379)))))

(declare-fun b!5069812 () Bool)

(assert (=> b!5069812 (= e!3163513 e!3163512)))

(declare-fun res!2158591 () Bool)

(assert (=> b!5069812 (=> (not res!2158591) (not e!3163512))))

(assert (=> b!5069812 (= res!2158591 (<= (- 1) (- (height!2145 (left!42822 lt!2089379)) (height!2145 (right!43152 lt!2089379)))))))

(declare-fun b!5069813 () Bool)

(declare-fun res!2158588 () Bool)

(assert (=> b!5069813 (=> (not res!2158588) (not e!3163512))))

(assert (=> b!5069813 (= res!2158588 (isBalanced!4430 (left!42822 lt!2089379)))))

(declare-fun b!5069814 () Bool)

(declare-fun res!2158587 () Bool)

(assert (=> b!5069814 (=> (not res!2158587) (not e!3163512))))

(assert (=> b!5069814 (= res!2158587 (<= (- (height!2145 (left!42822 lt!2089379)) (height!2145 (right!43152 lt!2089379))) 1))))

(declare-fun b!5069815 () Bool)

(assert (=> b!5069815 (= e!3163512 (not (isEmpty!31638 (right!43152 lt!2089379))))))

(assert (= (and d!1635731 (not res!2158586)) b!5069812))

(assert (= (and b!5069812 res!2158591) b!5069814))

(assert (= (and b!5069814 res!2158587) b!5069813))

(assert (= (and b!5069813 res!2158588) b!5069811))

(assert (= (and b!5069811 res!2158590) b!5069810))

(assert (= (and b!5069810 res!2158589) b!5069815))

(declare-fun m!6114642 () Bool)

(assert (=> b!5069811 m!6114642))

(declare-fun m!6114644 () Bool)

(assert (=> b!5069815 m!6114644))

(declare-fun m!6114646 () Bool)

(assert (=> b!5069813 m!6114646))

(declare-fun m!6114648 () Bool)

(assert (=> b!5069812 m!6114648))

(declare-fun m!6114650 () Bool)

(assert (=> b!5069812 m!6114650))

(declare-fun m!6114652 () Bool)

(assert (=> b!5069810 m!6114652))

(assert (=> b!5069814 m!6114648))

(assert (=> b!5069814 m!6114650))

(assert (=> b!5069578 d!1635731))

(declare-fun d!1635733 () Bool)

(declare-fun c!870441 () Bool)

(assert (=> d!1635733 (= c!870441 ((_ is Node!15568) (left!42822 xs!286)))))

(declare-fun e!3163514 () Bool)

(assert (=> d!1635733 (= (inv!77577 (left!42822 xs!286)) e!3163514)))

(declare-fun b!5069816 () Bool)

(assert (=> b!5069816 (= e!3163514 (inv!77580 (left!42822 xs!286)))))

(declare-fun b!5069817 () Bool)

(declare-fun e!3163515 () Bool)

(assert (=> b!5069817 (= e!3163514 e!3163515)))

(declare-fun res!2158592 () Bool)

(assert (=> b!5069817 (= res!2158592 (not ((_ is Leaf!25857) (left!42822 xs!286))))))

(assert (=> b!5069817 (=> res!2158592 e!3163515)))

(declare-fun b!5069818 () Bool)

(assert (=> b!5069818 (= e!3163515 (inv!77582 (left!42822 xs!286)))))

(assert (= (and d!1635733 c!870441) b!5069816))

(assert (= (and d!1635733 (not c!870441)) b!5069817))

(assert (= (and b!5069817 (not res!2158592)) b!5069818))

(declare-fun m!6114654 () Bool)

(assert (=> b!5069816 m!6114654))

(declare-fun m!6114656 () Bool)

(assert (=> b!5069818 m!6114656))

(assert (=> b!5069587 d!1635733))

(declare-fun d!1635735 () Bool)

(declare-fun c!870442 () Bool)

(assert (=> d!1635735 (= c!870442 ((_ is Node!15568) (right!43152 xs!286)))))

(declare-fun e!3163516 () Bool)

(assert (=> d!1635735 (= (inv!77577 (right!43152 xs!286)) e!3163516)))

(declare-fun b!5069819 () Bool)

(assert (=> b!5069819 (= e!3163516 (inv!77580 (right!43152 xs!286)))))

(declare-fun b!5069820 () Bool)

(declare-fun e!3163517 () Bool)

(assert (=> b!5069820 (= e!3163516 e!3163517)))

(declare-fun res!2158593 () Bool)

(assert (=> b!5069820 (= res!2158593 (not ((_ is Leaf!25857) (right!43152 xs!286))))))

(assert (=> b!5069820 (=> res!2158593 e!3163517)))

(declare-fun b!5069821 () Bool)

(assert (=> b!5069821 (= e!3163517 (inv!77582 (right!43152 xs!286)))))

(assert (= (and d!1635735 c!870442) b!5069819))

(assert (= (and d!1635735 (not c!870442)) b!5069820))

(assert (= (and b!5069820 (not res!2158593)) b!5069821))

(declare-fun m!6114658 () Bool)

(assert (=> b!5069819 m!6114658))

(declare-fun m!6114660 () Bool)

(assert (=> b!5069821 m!6114660))

(assert (=> b!5069587 d!1635735))

(declare-fun e!3163523 () Bool)

(declare-fun tp!1415283 () Bool)

(declare-fun b!5069830 () Bool)

(declare-fun tp!1415284 () Bool)

(assert (=> b!5069830 (= e!3163523 (and (inv!77577 (left!42822 (left!42822 ys!41))) tp!1415284 (inv!77577 (right!43152 (left!42822 ys!41))) tp!1415283))))

(declare-fun b!5069832 () Bool)

(declare-fun e!3163522 () Bool)

(declare-fun tp!1415282 () Bool)

(assert (=> b!5069832 (= e!3163522 tp!1415282)))

(declare-fun b!5069831 () Bool)

(assert (=> b!5069831 (= e!3163523 (and (inv!77578 (xs!18924 (left!42822 ys!41))) e!3163522))))

(assert (=> b!5069585 (= tp!1415270 (and (inv!77577 (left!42822 ys!41)) e!3163523))))

(assert (= (and b!5069585 ((_ is Node!15568) (left!42822 ys!41))) b!5069830))

(assert (= b!5069831 b!5069832))

(assert (= (and b!5069585 ((_ is Leaf!25857) (left!42822 ys!41))) b!5069831))

(declare-fun m!6114662 () Bool)

(assert (=> b!5069830 m!6114662))

(declare-fun m!6114664 () Bool)

(assert (=> b!5069830 m!6114664))

(declare-fun m!6114666 () Bool)

(assert (=> b!5069831 m!6114666))

(assert (=> b!5069585 m!6114386))

(declare-fun b!5069833 () Bool)

(declare-fun e!3163525 () Bool)

(declare-fun tp!1415286 () Bool)

(declare-fun tp!1415287 () Bool)

(assert (=> b!5069833 (= e!3163525 (and (inv!77577 (left!42822 (right!43152 ys!41))) tp!1415287 (inv!77577 (right!43152 (right!43152 ys!41))) tp!1415286))))

(declare-fun b!5069835 () Bool)

(declare-fun e!3163524 () Bool)

(declare-fun tp!1415285 () Bool)

(assert (=> b!5069835 (= e!3163524 tp!1415285)))

(declare-fun b!5069834 () Bool)

(assert (=> b!5069834 (= e!3163525 (and (inv!77578 (xs!18924 (right!43152 ys!41))) e!3163524))))

(assert (=> b!5069585 (= tp!1415267 (and (inv!77577 (right!43152 ys!41)) e!3163525))))

(assert (= (and b!5069585 ((_ is Node!15568) (right!43152 ys!41))) b!5069833))

(assert (= b!5069834 b!5069835))

(assert (= (and b!5069585 ((_ is Leaf!25857) (right!43152 ys!41))) b!5069834))

(declare-fun m!6114668 () Bool)

(assert (=> b!5069833 m!6114668))

(declare-fun m!6114670 () Bool)

(assert (=> b!5069833 m!6114670))

(declare-fun m!6114672 () Bool)

(assert (=> b!5069834 m!6114672))

(assert (=> b!5069585 m!6114388))

(declare-fun b!5069849 () Bool)

(declare-fun e!3163537 () Bool)

(declare-fun tp_is_empty!37057 () Bool)

(declare-fun tp!1415290 () Bool)

(assert (=> b!5069849 (= e!3163537 (and tp_is_empty!37057 tp!1415290))))

(assert (=> b!5069590 (= tp!1415271 e!3163537)))

(assert (= (and b!5069590 ((_ is Cons!58438) (innerList!15656 (xs!18924 xs!286)))) b!5069849))

(declare-fun tp!1415293 () Bool)

(declare-fun tp!1415292 () Bool)

(declare-fun e!3163539 () Bool)

(declare-fun b!5069850 () Bool)

(assert (=> b!5069850 (= e!3163539 (and (inv!77577 (left!42822 (left!42822 err!4601))) tp!1415293 (inv!77577 (right!43152 (left!42822 err!4601))) tp!1415292))))

(declare-fun b!5069852 () Bool)

(declare-fun e!3163538 () Bool)

(declare-fun tp!1415291 () Bool)

(assert (=> b!5069852 (= e!3163538 tp!1415291)))

(declare-fun b!5069851 () Bool)

(assert (=> b!5069851 (= e!3163539 (and (inv!77578 (xs!18924 (left!42822 err!4601))) e!3163538))))

(assert (=> b!5069595 (= tp!1415272 (and (inv!77577 (left!42822 err!4601)) e!3163539))))

(assert (= (and b!5069595 ((_ is Node!15568) (left!42822 err!4601))) b!5069850))

(assert (= b!5069851 b!5069852))

(assert (= (and b!5069595 ((_ is Leaf!25857) (left!42822 err!4601))) b!5069851))

(declare-fun m!6114674 () Bool)

(assert (=> b!5069850 m!6114674))

(declare-fun m!6114676 () Bool)

(assert (=> b!5069850 m!6114676))

(declare-fun m!6114678 () Bool)

(assert (=> b!5069851 m!6114678))

(assert (=> b!5069595 m!6114392))

(declare-fun b!5069853 () Bool)

(declare-fun tp!1415295 () Bool)

(declare-fun e!3163541 () Bool)

(declare-fun tp!1415296 () Bool)

(assert (=> b!5069853 (= e!3163541 (and (inv!77577 (left!42822 (right!43152 err!4601))) tp!1415296 (inv!77577 (right!43152 (right!43152 err!4601))) tp!1415295))))

(declare-fun b!5069855 () Bool)

(declare-fun e!3163540 () Bool)

(declare-fun tp!1415294 () Bool)

(assert (=> b!5069855 (= e!3163540 tp!1415294)))

(declare-fun b!5069854 () Bool)

(assert (=> b!5069854 (= e!3163541 (and (inv!77578 (xs!18924 (right!43152 err!4601))) e!3163540))))

(assert (=> b!5069595 (= tp!1415273 (and (inv!77577 (right!43152 err!4601)) e!3163541))))

(assert (= (and b!5069595 ((_ is Node!15568) (right!43152 err!4601))) b!5069853))

(assert (= b!5069854 b!5069855))

(assert (= (and b!5069595 ((_ is Leaf!25857) (right!43152 err!4601))) b!5069854))

(declare-fun m!6114690 () Bool)

(assert (=> b!5069853 m!6114690))

(declare-fun m!6114692 () Bool)

(assert (=> b!5069853 m!6114692))

(declare-fun m!6114694 () Bool)

(assert (=> b!5069854 m!6114694))

(assert (=> b!5069595 m!6114394))

(declare-fun b!5069856 () Bool)

(declare-fun e!3163542 () Bool)

(declare-fun tp!1415297 () Bool)

(assert (=> b!5069856 (= e!3163542 (and tp_is_empty!37057 tp!1415297))))

(assert (=> b!5069584 (= tp!1415269 e!3163542)))

(assert (= (and b!5069584 ((_ is Cons!58438) (innerList!15656 (xs!18924 err!4601)))) b!5069856))

(declare-fun b!5069857 () Bool)

(declare-fun e!3163543 () Bool)

(declare-fun tp!1415298 () Bool)

(assert (=> b!5069857 (= e!3163543 (and tp_is_empty!37057 tp!1415298))))

(assert (=> b!5069588 (= tp!1415274 e!3163543)))

(assert (= (and b!5069588 ((_ is Cons!58438) (innerList!15656 (xs!18924 ys!41)))) b!5069857))

(declare-fun e!3163545 () Bool)

(declare-fun tp!1415301 () Bool)

(declare-fun tp!1415300 () Bool)

(declare-fun b!5069858 () Bool)

(assert (=> b!5069858 (= e!3163545 (and (inv!77577 (left!42822 (left!42822 xs!286))) tp!1415301 (inv!77577 (right!43152 (left!42822 xs!286))) tp!1415300))))

(declare-fun b!5069860 () Bool)

(declare-fun e!3163544 () Bool)

(declare-fun tp!1415299 () Bool)

(assert (=> b!5069860 (= e!3163544 tp!1415299)))

(declare-fun b!5069859 () Bool)

(assert (=> b!5069859 (= e!3163545 (and (inv!77578 (xs!18924 (left!42822 xs!286))) e!3163544))))

(assert (=> b!5069587 (= tp!1415268 (and (inv!77577 (left!42822 xs!286)) e!3163545))))

(assert (= (and b!5069587 ((_ is Node!15568) (left!42822 xs!286))) b!5069858))

(assert (= b!5069859 b!5069860))

(assert (= (and b!5069587 ((_ is Leaf!25857) (left!42822 xs!286))) b!5069859))

(declare-fun m!6114704 () Bool)

(assert (=> b!5069858 m!6114704))

(declare-fun m!6114708 () Bool)

(assert (=> b!5069858 m!6114708))

(declare-fun m!6114710 () Bool)

(assert (=> b!5069859 m!6114710))

(assert (=> b!5069587 m!6114416))

(declare-fun tp!1415303 () Bool)

(declare-fun tp!1415304 () Bool)

(declare-fun e!3163547 () Bool)

(declare-fun b!5069861 () Bool)

(assert (=> b!5069861 (= e!3163547 (and (inv!77577 (left!42822 (right!43152 xs!286))) tp!1415304 (inv!77577 (right!43152 (right!43152 xs!286))) tp!1415303))))

(declare-fun b!5069863 () Bool)

(declare-fun e!3163546 () Bool)

(declare-fun tp!1415302 () Bool)

(assert (=> b!5069863 (= e!3163546 tp!1415302)))

(declare-fun b!5069862 () Bool)

(assert (=> b!5069862 (= e!3163547 (and (inv!77578 (xs!18924 (right!43152 xs!286))) e!3163546))))

(assert (=> b!5069587 (= tp!1415275 (and (inv!77577 (right!43152 xs!286)) e!3163547))))

(assert (= (and b!5069587 ((_ is Node!15568) (right!43152 xs!286))) b!5069861))

(assert (= b!5069862 b!5069863))

(assert (= (and b!5069587 ((_ is Leaf!25857) (right!43152 xs!286))) b!5069862))

(declare-fun m!6114716 () Bool)

(assert (=> b!5069861 m!6114716))

(declare-fun m!6114718 () Bool)

(assert (=> b!5069861 m!6114718))

(declare-fun m!6114720 () Bool)

(assert (=> b!5069862 m!6114720))

(assert (=> b!5069587 m!6114418))

(check-sat (not b!5069856) (not b!5069765) (not b!5069806) (not b!5069859) (not d!1635715) (not b!5069620) (not b!5069804) (not b!5069816) (not d!1635729) (not b!5069814) (not b!5069849) (not b!5069853) (not b!5069776) (not b!5069641) (not b!5069626) (not b!5069643) (not b!5069587) (not b!5069821) (not b!5069721) (not b!5069830) (not b!5069812) (not b!5069609) (not b!5069862) (not b!5069703) (not b!5069805) (not b!5069811) (not b!5069622) (not b!5069707) (not b!5069613) (not b!5069625) (not b!5069700) (not b!5069775) (not b!5069834) (not b!5069863) (not b!5069780) (not b!5069608) (not b!5069585) (not b!5069723) (not b!5069858) (not b!5069808) (not b!5069764) (not b!5069813) (not d!1635725) (not b!5069809) (not b!5069852) (not d!1635645) (not b!5069628) (not b!5069595) (not b!5069704) (not b!5069851) (not b!5069860) (not b!5069795) tp_is_empty!37057 (not b!5069861) (not b!5069819) (not b!5069631) (not b!5069610) (not b!5069831) (not b!5069629) (not b!5069818) (not b!5069857) (not b!5069634) (not b!5069623) (not b!5069833) (not b!5069850) (not b!5069832) (not b!5069854) (not b!5069835) (not b!5069702) (not b!5069815) (not b!5069807) (not b!5069612) (not b!5069632) (not b!5069810) (not b!5069781) (not b!5069611) (not b!5069708) (not b!5069855) (not b!5069797))
(check-sat)
(get-model)

(declare-fun d!1635749 () Bool)

(declare-fun res!2158610 () Bool)

(declare-fun e!3163574 () Bool)

(assert (=> d!1635749 (=> res!2158610 e!3163574)))

(assert (=> d!1635749 (= res!2158610 (not ((_ is Node!15568) (left!42822 lt!2089379))))))

(assert (=> d!1635749 (= (isBalanced!4430 (left!42822 lt!2089379)) e!3163574)))

(declare-fun b!5069906 () Bool)

(declare-fun res!2158613 () Bool)

(declare-fun e!3163573 () Bool)

(assert (=> b!5069906 (=> (not res!2158613) (not e!3163573))))

(assert (=> b!5069906 (= res!2158613 (not (isEmpty!31638 (left!42822 (left!42822 lt!2089379)))))))

(declare-fun b!5069907 () Bool)

(declare-fun res!2158614 () Bool)

(assert (=> b!5069907 (=> (not res!2158614) (not e!3163573))))

(assert (=> b!5069907 (= res!2158614 (isBalanced!4430 (right!43152 (left!42822 lt!2089379))))))

(declare-fun b!5069908 () Bool)

(assert (=> b!5069908 (= e!3163574 e!3163573)))

(declare-fun res!2158615 () Bool)

(assert (=> b!5069908 (=> (not res!2158615) (not e!3163573))))

(assert (=> b!5069908 (= res!2158615 (<= (- 1) (- (height!2145 (left!42822 (left!42822 lt!2089379))) (height!2145 (right!43152 (left!42822 lt!2089379))))))))

(declare-fun b!5069909 () Bool)

(declare-fun res!2158612 () Bool)

(assert (=> b!5069909 (=> (not res!2158612) (not e!3163573))))

(assert (=> b!5069909 (= res!2158612 (isBalanced!4430 (left!42822 (left!42822 lt!2089379))))))

(declare-fun b!5069910 () Bool)

(declare-fun res!2158611 () Bool)

(assert (=> b!5069910 (=> (not res!2158611) (not e!3163573))))

(assert (=> b!5069910 (= res!2158611 (<= (- (height!2145 (left!42822 (left!42822 lt!2089379))) (height!2145 (right!43152 (left!42822 lt!2089379)))) 1))))

(declare-fun b!5069911 () Bool)

(assert (=> b!5069911 (= e!3163573 (not (isEmpty!31638 (right!43152 (left!42822 lt!2089379)))))))

(assert (= (and d!1635749 (not res!2158610)) b!5069908))

(assert (= (and b!5069908 res!2158615) b!5069910))

(assert (= (and b!5069910 res!2158611) b!5069909))

(assert (= (and b!5069909 res!2158612) b!5069907))

(assert (= (and b!5069907 res!2158614) b!5069906))

(assert (= (and b!5069906 res!2158613) b!5069911))

(declare-fun m!6114774 () Bool)

(assert (=> b!5069907 m!6114774))

(declare-fun m!6114776 () Bool)

(assert (=> b!5069911 m!6114776))

(declare-fun m!6114778 () Bool)

(assert (=> b!5069909 m!6114778))

(declare-fun m!6114780 () Bool)

(assert (=> b!5069908 m!6114780))

(declare-fun m!6114782 () Bool)

(assert (=> b!5069908 m!6114782))

(declare-fun m!6114784 () Bool)

(assert (=> b!5069906 m!6114784))

(assert (=> b!5069910 m!6114780))

(assert (=> b!5069910 m!6114782))

(assert (=> b!5069813 d!1635749))

(assert (=> b!5069585 d!1635661))

(assert (=> b!5069585 d!1635663))

(declare-fun b!5069914 () Bool)

(declare-fun res!2158617 () Bool)

(declare-fun e!3163576 () Bool)

(assert (=> b!5069914 (=> (not res!2158617) (not e!3163576))))

(declare-fun lt!2089390 () List!58562)

(assert (=> b!5069914 (= res!2158617 (= (size!39082 lt!2089390) (+ (size!39082 (list!18997 (left!42822 lt!2089379))) (size!39082 (list!18997 (right!43152 lt!2089379))))))))

(declare-fun b!5069915 () Bool)

(assert (=> b!5069915 (= e!3163576 (or (not (= (list!18997 (right!43152 lt!2089379)) Nil!58438)) (= lt!2089390 (list!18997 (left!42822 lt!2089379)))))))

(declare-fun b!5069912 () Bool)

(declare-fun e!3163575 () List!58562)

(assert (=> b!5069912 (= e!3163575 (list!18997 (right!43152 lt!2089379)))))

(declare-fun d!1635751 () Bool)

(assert (=> d!1635751 e!3163576))

(declare-fun res!2158616 () Bool)

(assert (=> d!1635751 (=> (not res!2158616) (not e!3163576))))

(assert (=> d!1635751 (= res!2158616 (= (content!10420 lt!2089390) ((_ map or) (content!10420 (list!18997 (left!42822 lt!2089379))) (content!10420 (list!18997 (right!43152 lt!2089379))))))))

(assert (=> d!1635751 (= lt!2089390 e!3163575)))

(declare-fun c!870444 () Bool)

(assert (=> d!1635751 (= c!870444 ((_ is Nil!58438) (list!18997 (left!42822 lt!2089379))))))

(assert (=> d!1635751 (= (++!12793 (list!18997 (left!42822 lt!2089379)) (list!18997 (right!43152 lt!2089379))) lt!2089390)))

(declare-fun b!5069913 () Bool)

(assert (=> b!5069913 (= e!3163575 (Cons!58438 (h!64886 (list!18997 (left!42822 lt!2089379))) (++!12793 (t!371315 (list!18997 (left!42822 lt!2089379))) (list!18997 (right!43152 lt!2089379)))))))

(assert (= (and d!1635751 c!870444) b!5069912))

(assert (= (and d!1635751 (not c!870444)) b!5069913))

(assert (= (and d!1635751 res!2158616) b!5069914))

(assert (= (and b!5069914 res!2158617) b!5069915))

(declare-fun m!6114786 () Bool)

(assert (=> b!5069914 m!6114786))

(assert (=> b!5069914 m!6114598))

(declare-fun m!6114788 () Bool)

(assert (=> b!5069914 m!6114788))

(assert (=> b!5069914 m!6114600))

(declare-fun m!6114790 () Bool)

(assert (=> b!5069914 m!6114790))

(declare-fun m!6114792 () Bool)

(assert (=> d!1635751 m!6114792))

(assert (=> d!1635751 m!6114598))

(declare-fun m!6114794 () Bool)

(assert (=> d!1635751 m!6114794))

(assert (=> d!1635751 m!6114600))

(declare-fun m!6114796 () Bool)

(assert (=> d!1635751 m!6114796))

(assert (=> b!5069913 m!6114600))

(declare-fun m!6114798 () Bool)

(assert (=> b!5069913 m!6114798))

(assert (=> b!5069765 d!1635751))

(declare-fun b!5069918 () Bool)

(declare-fun e!3163578 () List!58562)

(assert (=> b!5069918 (= e!3163578 (list!18999 (xs!18924 (left!42822 lt!2089379))))))

(declare-fun d!1635753 () Bool)

(declare-fun c!870445 () Bool)

(assert (=> d!1635753 (= c!870445 ((_ is Empty!15568) (left!42822 lt!2089379)))))

(declare-fun e!3163577 () List!58562)

(assert (=> d!1635753 (= (list!18997 (left!42822 lt!2089379)) e!3163577)))

(declare-fun b!5069917 () Bool)

(assert (=> b!5069917 (= e!3163577 e!3163578)))

(declare-fun c!870446 () Bool)

(assert (=> b!5069917 (= c!870446 ((_ is Leaf!25857) (left!42822 lt!2089379)))))

(declare-fun b!5069916 () Bool)

(assert (=> b!5069916 (= e!3163577 Nil!58438)))

(declare-fun b!5069919 () Bool)

(assert (=> b!5069919 (= e!3163578 (++!12793 (list!18997 (left!42822 (left!42822 lt!2089379))) (list!18997 (right!43152 (left!42822 lt!2089379)))))))

(assert (= (and d!1635753 c!870445) b!5069916))

(assert (= (and d!1635753 (not c!870445)) b!5069917))

(assert (= (and b!5069917 c!870446) b!5069918))

(assert (= (and b!5069917 (not c!870446)) b!5069919))

(declare-fun m!6114800 () Bool)

(assert (=> b!5069918 m!6114800))

(declare-fun m!6114802 () Bool)

(assert (=> b!5069919 m!6114802))

(declare-fun m!6114804 () Bool)

(assert (=> b!5069919 m!6114804))

(assert (=> b!5069919 m!6114802))

(assert (=> b!5069919 m!6114804))

(declare-fun m!6114806 () Bool)

(assert (=> b!5069919 m!6114806))

(assert (=> b!5069765 d!1635753))

(declare-fun b!5069922 () Bool)

(declare-fun e!3163580 () List!58562)

(assert (=> b!5069922 (= e!3163580 (list!18999 (xs!18924 (right!43152 lt!2089379))))))

(declare-fun d!1635755 () Bool)

(declare-fun c!870447 () Bool)

(assert (=> d!1635755 (= c!870447 ((_ is Empty!15568) (right!43152 lt!2089379)))))

(declare-fun e!3163579 () List!58562)

(assert (=> d!1635755 (= (list!18997 (right!43152 lt!2089379)) e!3163579)))

(declare-fun b!5069921 () Bool)

(assert (=> b!5069921 (= e!3163579 e!3163580)))

(declare-fun c!870448 () Bool)

(assert (=> b!5069921 (= c!870448 ((_ is Leaf!25857) (right!43152 lt!2089379)))))

(declare-fun b!5069920 () Bool)

(assert (=> b!5069920 (= e!3163579 Nil!58438)))

(declare-fun b!5069923 () Bool)

(assert (=> b!5069923 (= e!3163580 (++!12793 (list!18997 (left!42822 (right!43152 lt!2089379))) (list!18997 (right!43152 (right!43152 lt!2089379)))))))

(assert (= (and d!1635755 c!870447) b!5069920))

(assert (= (and d!1635755 (not c!870447)) b!5069921))

(assert (= (and b!5069921 c!870448) b!5069922))

(assert (= (and b!5069921 (not c!870448)) b!5069923))

(declare-fun m!6114808 () Bool)

(assert (=> b!5069922 m!6114808))

(declare-fun m!6114810 () Bool)

(assert (=> b!5069923 m!6114810))

(declare-fun m!6114812 () Bool)

(assert (=> b!5069923 m!6114812))

(assert (=> b!5069923 m!6114810))

(assert (=> b!5069923 m!6114812))

(declare-fun m!6114814 () Bool)

(assert (=> b!5069923 m!6114814))

(assert (=> b!5069765 d!1635755))

(declare-fun d!1635757 () Bool)

(declare-fun res!2158624 () Bool)

(declare-fun e!3163583 () Bool)

(assert (=> d!1635757 (=> (not res!2158624) (not e!3163583))))

(declare-fun size!39084 (Conc!15568) Int)

(assert (=> d!1635757 (= res!2158624 (= (csize!31366 (left!42822 xs!286)) (+ (size!39084 (left!42822 (left!42822 xs!286))) (size!39084 (right!43152 (left!42822 xs!286))))))))

(assert (=> d!1635757 (= (inv!77580 (left!42822 xs!286)) e!3163583)))

(declare-fun b!5069930 () Bool)

(declare-fun res!2158625 () Bool)

(assert (=> b!5069930 (=> (not res!2158625) (not e!3163583))))

(assert (=> b!5069930 (= res!2158625 (and (not (= (left!42822 (left!42822 xs!286)) Empty!15568)) (not (= (right!43152 (left!42822 xs!286)) Empty!15568))))))

(declare-fun b!5069931 () Bool)

(declare-fun res!2158626 () Bool)

(assert (=> b!5069931 (=> (not res!2158626) (not e!3163583))))

(assert (=> b!5069931 (= res!2158626 (= (cheight!15779 (left!42822 xs!286)) (+ (max!0 (height!2145 (left!42822 (left!42822 xs!286))) (height!2145 (right!43152 (left!42822 xs!286)))) 1)))))

(declare-fun b!5069932 () Bool)

(assert (=> b!5069932 (= e!3163583 (<= 0 (cheight!15779 (left!42822 xs!286))))))

(assert (= (and d!1635757 res!2158624) b!5069930))

(assert (= (and b!5069930 res!2158625) b!5069931))

(assert (= (and b!5069931 res!2158626) b!5069932))

(declare-fun m!6114816 () Bool)

(assert (=> d!1635757 m!6114816))

(declare-fun m!6114818 () Bool)

(assert (=> d!1635757 m!6114818))

(declare-fun m!6114820 () Bool)

(assert (=> b!5069931 m!6114820))

(declare-fun m!6114822 () Bool)

(assert (=> b!5069931 m!6114822))

(assert (=> b!5069931 m!6114820))

(assert (=> b!5069931 m!6114822))

(declare-fun m!6114824 () Bool)

(assert (=> b!5069931 m!6114824))

(assert (=> b!5069816 d!1635757))

(declare-fun d!1635759 () Bool)

(declare-fun res!2158627 () Bool)

(declare-fun e!3163585 () Bool)

(assert (=> d!1635759 (=> res!2158627 e!3163585)))

(assert (=> d!1635759 (= res!2158627 (not ((_ is Node!15568) (right!43152 lt!2089379))))))

(assert (=> d!1635759 (= (isBalanced!4430 (right!43152 lt!2089379)) e!3163585)))

(declare-fun b!5069933 () Bool)

(declare-fun res!2158630 () Bool)

(declare-fun e!3163584 () Bool)

(assert (=> b!5069933 (=> (not res!2158630) (not e!3163584))))

(assert (=> b!5069933 (= res!2158630 (not (isEmpty!31638 (left!42822 (right!43152 lt!2089379)))))))

(declare-fun b!5069934 () Bool)

(declare-fun res!2158631 () Bool)

(assert (=> b!5069934 (=> (not res!2158631) (not e!3163584))))

(assert (=> b!5069934 (= res!2158631 (isBalanced!4430 (right!43152 (right!43152 lt!2089379))))))

(declare-fun b!5069935 () Bool)

(assert (=> b!5069935 (= e!3163585 e!3163584)))

(declare-fun res!2158632 () Bool)

(assert (=> b!5069935 (=> (not res!2158632) (not e!3163584))))

(assert (=> b!5069935 (= res!2158632 (<= (- 1) (- (height!2145 (left!42822 (right!43152 lt!2089379))) (height!2145 (right!43152 (right!43152 lt!2089379))))))))

(declare-fun b!5069936 () Bool)

(declare-fun res!2158629 () Bool)

(assert (=> b!5069936 (=> (not res!2158629) (not e!3163584))))

(assert (=> b!5069936 (= res!2158629 (isBalanced!4430 (left!42822 (right!43152 lt!2089379))))))

(declare-fun b!5069937 () Bool)

(declare-fun res!2158628 () Bool)

(assert (=> b!5069937 (=> (not res!2158628) (not e!3163584))))

(assert (=> b!5069937 (= res!2158628 (<= (- (height!2145 (left!42822 (right!43152 lt!2089379))) (height!2145 (right!43152 (right!43152 lt!2089379)))) 1))))

(declare-fun b!5069938 () Bool)

(assert (=> b!5069938 (= e!3163584 (not (isEmpty!31638 (right!43152 (right!43152 lt!2089379)))))))

(assert (= (and d!1635759 (not res!2158627)) b!5069935))

(assert (= (and b!5069935 res!2158632) b!5069937))

(assert (= (and b!5069937 res!2158628) b!5069936))

(assert (= (and b!5069936 res!2158629) b!5069934))

(assert (= (and b!5069934 res!2158631) b!5069933))

(assert (= (and b!5069933 res!2158630) b!5069938))

(declare-fun m!6114826 () Bool)

(assert (=> b!5069934 m!6114826))

(declare-fun m!6114828 () Bool)

(assert (=> b!5069938 m!6114828))

(declare-fun m!6114830 () Bool)

(assert (=> b!5069936 m!6114830))

(declare-fun m!6114832 () Bool)

(assert (=> b!5069935 m!6114832))

(declare-fun m!6114834 () Bool)

(assert (=> b!5069935 m!6114834))

(declare-fun m!6114836 () Bool)

(assert (=> b!5069933 m!6114836))

(assert (=> b!5069937 m!6114832))

(assert (=> b!5069937 m!6114834))

(assert (=> b!5069811 d!1635759))

(declare-fun d!1635761 () Bool)

(declare-fun c!870449 () Bool)

(assert (=> d!1635761 (= c!870449 ((_ is Node!15568) (left!42822 (right!43152 xs!286))))))

(declare-fun e!3163586 () Bool)

(assert (=> d!1635761 (= (inv!77577 (left!42822 (right!43152 xs!286))) e!3163586)))

(declare-fun b!5069939 () Bool)

(assert (=> b!5069939 (= e!3163586 (inv!77580 (left!42822 (right!43152 xs!286))))))

(declare-fun b!5069940 () Bool)

(declare-fun e!3163587 () Bool)

(assert (=> b!5069940 (= e!3163586 e!3163587)))

(declare-fun res!2158633 () Bool)

(assert (=> b!5069940 (= res!2158633 (not ((_ is Leaf!25857) (left!42822 (right!43152 xs!286)))))))

(assert (=> b!5069940 (=> res!2158633 e!3163587)))

(declare-fun b!5069941 () Bool)

(assert (=> b!5069941 (= e!3163587 (inv!77582 (left!42822 (right!43152 xs!286))))))

(assert (= (and d!1635761 c!870449) b!5069939))

(assert (= (and d!1635761 (not c!870449)) b!5069940))

(assert (= (and b!5069940 (not res!2158633)) b!5069941))

(declare-fun m!6114838 () Bool)

(assert (=> b!5069939 m!6114838))

(declare-fun m!6114840 () Bool)

(assert (=> b!5069941 m!6114840))

(assert (=> b!5069861 d!1635761))

(declare-fun d!1635763 () Bool)

(declare-fun c!870450 () Bool)

(assert (=> d!1635763 (= c!870450 ((_ is Node!15568) (right!43152 (right!43152 xs!286))))))

(declare-fun e!3163588 () Bool)

(assert (=> d!1635763 (= (inv!77577 (right!43152 (right!43152 xs!286))) e!3163588)))

(declare-fun b!5069942 () Bool)

(assert (=> b!5069942 (= e!3163588 (inv!77580 (right!43152 (right!43152 xs!286))))))

(declare-fun b!5069943 () Bool)

(declare-fun e!3163589 () Bool)

(assert (=> b!5069943 (= e!3163588 e!3163589)))

(declare-fun res!2158634 () Bool)

(assert (=> b!5069943 (= res!2158634 (not ((_ is Leaf!25857) (right!43152 (right!43152 xs!286)))))))

(assert (=> b!5069943 (=> res!2158634 e!3163589)))

(declare-fun b!5069944 () Bool)

(assert (=> b!5069944 (= e!3163589 (inv!77582 (right!43152 (right!43152 xs!286))))))

(assert (= (and d!1635763 c!870450) b!5069942))

(assert (= (and d!1635763 (not c!870450)) b!5069943))

(assert (= (and b!5069943 (not res!2158634)) b!5069944))

(declare-fun m!6114842 () Bool)

(assert (=> b!5069942 m!6114842))

(declare-fun m!6114844 () Bool)

(assert (=> b!5069944 m!6114844))

(assert (=> b!5069861 d!1635763))

(declare-fun d!1635765 () Bool)

(declare-fun c!870451 () Bool)

(assert (=> d!1635765 (= c!870451 ((_ is Node!15568) (left!42822 (right!43152 ys!41))))))

(declare-fun e!3163590 () Bool)

(assert (=> d!1635765 (= (inv!77577 (left!42822 (right!43152 ys!41))) e!3163590)))

(declare-fun b!5069945 () Bool)

(assert (=> b!5069945 (= e!3163590 (inv!77580 (left!42822 (right!43152 ys!41))))))

(declare-fun b!5069946 () Bool)

(declare-fun e!3163591 () Bool)

(assert (=> b!5069946 (= e!3163590 e!3163591)))

(declare-fun res!2158635 () Bool)

(assert (=> b!5069946 (= res!2158635 (not ((_ is Leaf!25857) (left!42822 (right!43152 ys!41)))))))

(assert (=> b!5069946 (=> res!2158635 e!3163591)))

(declare-fun b!5069947 () Bool)

(assert (=> b!5069947 (= e!3163591 (inv!77582 (left!42822 (right!43152 ys!41))))))

(assert (= (and d!1635765 c!870451) b!5069945))

(assert (= (and d!1635765 (not c!870451)) b!5069946))

(assert (= (and b!5069946 (not res!2158635)) b!5069947))

(declare-fun m!6114846 () Bool)

(assert (=> b!5069945 m!6114846))

(declare-fun m!6114848 () Bool)

(assert (=> b!5069947 m!6114848))

(assert (=> b!5069833 d!1635765))

(declare-fun d!1635767 () Bool)

(declare-fun c!870452 () Bool)

(assert (=> d!1635767 (= c!870452 ((_ is Node!15568) (right!43152 (right!43152 ys!41))))))

(declare-fun e!3163592 () Bool)

(assert (=> d!1635767 (= (inv!77577 (right!43152 (right!43152 ys!41))) e!3163592)))

(declare-fun b!5069948 () Bool)

(assert (=> b!5069948 (= e!3163592 (inv!77580 (right!43152 (right!43152 ys!41))))))

(declare-fun b!5069949 () Bool)

(declare-fun e!3163593 () Bool)

(assert (=> b!5069949 (= e!3163592 e!3163593)))

(declare-fun res!2158636 () Bool)

(assert (=> b!5069949 (= res!2158636 (not ((_ is Leaf!25857) (right!43152 (right!43152 ys!41)))))))

(assert (=> b!5069949 (=> res!2158636 e!3163593)))

(declare-fun b!5069950 () Bool)

(assert (=> b!5069950 (= e!3163593 (inv!77582 (right!43152 (right!43152 ys!41))))))

(assert (= (and d!1635767 c!870452) b!5069948))

(assert (= (and d!1635767 (not c!870452)) b!5069949))

(assert (= (and b!5069949 (not res!2158636)) b!5069950))

(declare-fun m!6114850 () Bool)

(assert (=> b!5069948 m!6114850))

(declare-fun m!6114852 () Bool)

(assert (=> b!5069950 m!6114852))

(assert (=> b!5069833 d!1635767))

(declare-fun d!1635769 () Bool)

(assert (=> d!1635769 (= (inv!77578 (xs!18924 (left!42822 xs!286))) (<= (size!39082 (innerList!15656 (xs!18924 (left!42822 xs!286)))) 2147483647))))

(declare-fun bs!1190084 () Bool)

(assert (= bs!1190084 d!1635769))

(declare-fun m!6114854 () Bool)

(assert (=> bs!1190084 m!6114854))

(assert (=> b!5069859 d!1635769))

(declare-fun d!1635771 () Bool)

(declare-fun res!2158641 () Bool)

(declare-fun e!3163596 () Bool)

(assert (=> d!1635771 (=> (not res!2158641) (not e!3163596))))

(assert (=> d!1635771 (= res!2158641 (<= (size!39082 (list!18999 (xs!18924 err!4601))) 512))))

(assert (=> d!1635771 (= (inv!77582 err!4601) e!3163596)))

(declare-fun b!5069955 () Bool)

(declare-fun res!2158642 () Bool)

(assert (=> b!5069955 (=> (not res!2158642) (not e!3163596))))

(assert (=> b!5069955 (= res!2158642 (= (csize!31367 err!4601) (size!39082 (list!18999 (xs!18924 err!4601)))))))

(declare-fun b!5069956 () Bool)

(assert (=> b!5069956 (= e!3163596 (and (> (csize!31367 err!4601) 0) (<= (csize!31367 err!4601) 512)))))

(assert (= (and d!1635771 res!2158641) b!5069955))

(assert (= (and b!5069955 res!2158642) b!5069956))

(declare-fun m!6114856 () Bool)

(assert (=> d!1635771 m!6114856))

(assert (=> d!1635771 m!6114856))

(declare-fun m!6114858 () Bool)

(assert (=> d!1635771 m!6114858))

(assert (=> b!5069955 m!6114856))

(assert (=> b!5069955 m!6114856))

(assert (=> b!5069955 m!6114858))

(assert (=> b!5069723 d!1635771))

(declare-fun d!1635773 () Bool)

(declare-fun res!2158643 () Bool)

(declare-fun e!3163597 () Bool)

(assert (=> d!1635773 (=> (not res!2158643) (not e!3163597))))

(assert (=> d!1635773 (= res!2158643 (<= (size!39082 (list!18999 (xs!18924 (left!42822 err!4601)))) 512))))

(assert (=> d!1635773 (= (inv!77582 (left!42822 err!4601)) e!3163597)))

(declare-fun b!5069957 () Bool)

(declare-fun res!2158644 () Bool)

(assert (=> b!5069957 (=> (not res!2158644) (not e!3163597))))

(assert (=> b!5069957 (= res!2158644 (= (csize!31367 (left!42822 err!4601)) (size!39082 (list!18999 (xs!18924 (left!42822 err!4601))))))))

(declare-fun b!5069958 () Bool)

(assert (=> b!5069958 (= e!3163597 (and (> (csize!31367 (left!42822 err!4601)) 0) (<= (csize!31367 (left!42822 err!4601)) 512)))))

(assert (= (and d!1635773 res!2158643) b!5069957))

(assert (= (and b!5069957 res!2158644) b!5069958))

(declare-fun m!6114860 () Bool)

(assert (=> d!1635773 m!6114860))

(assert (=> d!1635773 m!6114860))

(declare-fun m!6114862 () Bool)

(assert (=> d!1635773 m!6114862))

(assert (=> b!5069957 m!6114860))

(assert (=> b!5069957 m!6114860))

(assert (=> b!5069957 m!6114862))

(assert (=> b!5069634 d!1635773))

(declare-fun d!1635775 () Bool)

(assert (=> d!1635775 (= (list!18999 (xs!18924 ys!41)) (innerList!15656 (xs!18924 ys!41)))))

(assert (=> b!5069795 d!1635775))

(assert (=> b!5069704 d!1635717))

(declare-fun b!5069961 () Bool)

(declare-fun e!3163599 () List!58562)

(assert (=> b!5069961 (= e!3163599 (list!18999 (xs!18924 (right!43152 ys!41))))))

(declare-fun d!1635777 () Bool)

(declare-fun c!870453 () Bool)

(assert (=> d!1635777 (= c!870453 ((_ is Empty!15568) (right!43152 ys!41)))))

(declare-fun e!3163598 () List!58562)

(assert (=> d!1635777 (= (list!18997 (right!43152 ys!41)) e!3163598)))

(declare-fun b!5069960 () Bool)

(assert (=> b!5069960 (= e!3163598 e!3163599)))

(declare-fun c!870454 () Bool)

(assert (=> b!5069960 (= c!870454 ((_ is Leaf!25857) (right!43152 ys!41)))))

(declare-fun b!5069959 () Bool)

(assert (=> b!5069959 (= e!3163598 Nil!58438)))

(declare-fun b!5069962 () Bool)

(assert (=> b!5069962 (= e!3163599 (++!12793 (list!18997 (left!42822 (right!43152 ys!41))) (list!18997 (right!43152 (right!43152 ys!41)))))))

(assert (= (and d!1635777 c!870453) b!5069959))

(assert (= (and d!1635777 (not c!870453)) b!5069960))

(assert (= (and b!5069960 c!870454) b!5069961))

(assert (= (and b!5069960 (not c!870454)) b!5069962))

(declare-fun m!6114864 () Bool)

(assert (=> b!5069961 m!6114864))

(declare-fun m!6114866 () Bool)

(assert (=> b!5069962 m!6114866))

(declare-fun m!6114868 () Bool)

(assert (=> b!5069962 m!6114868))

(assert (=> b!5069962 m!6114866))

(assert (=> b!5069962 m!6114868))

(declare-fun m!6114870 () Bool)

(assert (=> b!5069962 m!6114870))

(assert (=> b!5069704 d!1635777))

(declare-fun b!5069965 () Bool)

(declare-fun e!3163601 () List!58562)

(assert (=> b!5069965 (= e!3163601 (list!18999 (xs!18924 (right!43152 (left!42822 ys!41)))))))

(declare-fun d!1635779 () Bool)

(declare-fun c!870455 () Bool)

(assert (=> d!1635779 (= c!870455 ((_ is Empty!15568) (right!43152 (left!42822 ys!41))))))

(declare-fun e!3163600 () List!58562)

(assert (=> d!1635779 (= (list!18997 (right!43152 (left!42822 ys!41))) e!3163600)))

(declare-fun b!5069964 () Bool)

(assert (=> b!5069964 (= e!3163600 e!3163601)))

(declare-fun c!870456 () Bool)

(assert (=> b!5069964 (= c!870456 ((_ is Leaf!25857) (right!43152 (left!42822 ys!41))))))

(declare-fun b!5069963 () Bool)

(assert (=> b!5069963 (= e!3163600 Nil!58438)))

(declare-fun b!5069966 () Bool)

(assert (=> b!5069966 (= e!3163601 (++!12793 (list!18997 (left!42822 (right!43152 (left!42822 ys!41)))) (list!18997 (right!43152 (right!43152 (left!42822 ys!41))))))))

(assert (= (and d!1635779 c!870455) b!5069963))

(assert (= (and d!1635779 (not c!870455)) b!5069964))

(assert (= (and b!5069964 c!870456) b!5069965))

(assert (= (and b!5069964 (not c!870456)) b!5069966))

(declare-fun m!6114872 () Bool)

(assert (=> b!5069965 m!6114872))

(declare-fun m!6114874 () Bool)

(assert (=> b!5069966 m!6114874))

(declare-fun m!6114876 () Bool)

(assert (=> b!5069966 m!6114876))

(assert (=> b!5069966 m!6114874))

(assert (=> b!5069966 m!6114876))

(declare-fun m!6114878 () Bool)

(assert (=> b!5069966 m!6114878))

(assert (=> b!5069704 d!1635779))

(declare-fun d!1635781 () Bool)

(declare-fun e!3163604 () Bool)

(assert (=> d!1635781 e!3163604))

(declare-fun c!870459 () Bool)

(assert (=> d!1635781 (= c!870459 ((_ is Nil!58438) (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))))))))

(assert (=> d!1635781 (= (appendAssoc!303 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41)))) (list!18997 (right!43152 (left!42822 ys!41))) (list!18997 (right!43152 ys!41))) true)))

(declare-fun bm!353233 () Bool)

(declare-fun call!353238 () List!58562)

(assert (=> bm!353233 (= call!353238 (++!12793 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41)))) (list!18997 (right!43152 (left!42822 ys!41)))))))

(declare-fun call!353240 () List!58562)

(declare-fun call!353239 () List!58562)

(declare-fun bm!353234 () Bool)

(assert (=> bm!353234 (= call!353239 (++!12793 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41)))) call!353240))))

(declare-fun b!5069971 () Bool)

(declare-fun call!353241 () List!58562)

(assert (=> b!5069971 (= e!3163604 (= call!353241 call!353239))))

(declare-fun lt!2089393 () Bool)

(assert (=> b!5069971 (= lt!2089393 (appendAssoc!303 (t!371315 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))))) (list!18997 (right!43152 (left!42822 ys!41))) (list!18997 (right!43152 ys!41))))))

(declare-fun b!5069972 () Bool)

(assert (=> b!5069972 (= e!3163604 (= call!353241 call!353239))))

(declare-fun bm!353235 () Bool)

(assert (=> bm!353235 (= call!353240 (++!12793 (list!18997 (right!43152 (left!42822 ys!41))) (list!18997 (right!43152 ys!41))))))

(declare-fun bm!353236 () Bool)

(assert (=> bm!353236 (= call!353241 (++!12793 call!353238 (list!18997 (right!43152 ys!41))))))

(assert (= (and d!1635781 c!870459) b!5069972))

(assert (= (and d!1635781 (not c!870459)) b!5069971))

(assert (= (or b!5069972 b!5069971) bm!353233))

(assert (= (or b!5069972 b!5069971) bm!353235))

(assert (= (or b!5069972 b!5069971) bm!353234))

(assert (= (or b!5069972 b!5069971) bm!353236))

(assert (=> bm!353235 m!6114516))

(assert (=> bm!353235 m!6114518))

(declare-fun m!6114880 () Bool)

(assert (=> bm!353235 m!6114880))

(assert (=> bm!353233 m!6114514))

(assert (=> bm!353233 m!6114516))

(declare-fun m!6114882 () Bool)

(assert (=> bm!353233 m!6114882))

(assert (=> b!5069971 m!6114516))

(assert (=> b!5069971 m!6114518))

(declare-fun m!6114884 () Bool)

(assert (=> b!5069971 m!6114884))

(assert (=> bm!353234 m!6114514))

(declare-fun m!6114886 () Bool)

(assert (=> bm!353234 m!6114886))

(assert (=> bm!353236 m!6114518))

(declare-fun m!6114888 () Bool)

(assert (=> bm!353236 m!6114888))

(assert (=> b!5069704 d!1635781))

(declare-fun b!5069975 () Bool)

(declare-fun res!2158646 () Bool)

(declare-fun e!3163606 () Bool)

(assert (=> b!5069975 (=> (not res!2158646) (not e!3163606))))

(declare-fun lt!2089394 () List!58562)

(assert (=> b!5069975 (= res!2158646 (= (size!39082 lt!2089394) (+ (size!39082 (list!18997 xs!286)) (size!39082 (list!18997 (left!42822 (left!42822 ys!41)))))))))

(declare-fun b!5069976 () Bool)

(assert (=> b!5069976 (= e!3163606 (or (not (= (list!18997 (left!42822 (left!42822 ys!41))) Nil!58438)) (= lt!2089394 (list!18997 xs!286))))))

(declare-fun b!5069973 () Bool)

(declare-fun e!3163605 () List!58562)

(assert (=> b!5069973 (= e!3163605 (list!18997 (left!42822 (left!42822 ys!41))))))

(declare-fun d!1635783 () Bool)

(assert (=> d!1635783 e!3163606))

(declare-fun res!2158645 () Bool)

(assert (=> d!1635783 (=> (not res!2158645) (not e!3163606))))

(assert (=> d!1635783 (= res!2158645 (= (content!10420 lt!2089394) ((_ map or) (content!10420 (list!18997 xs!286)) (content!10420 (list!18997 (left!42822 (left!42822 ys!41)))))))))

(assert (=> d!1635783 (= lt!2089394 e!3163605)))

(declare-fun c!870460 () Bool)

(assert (=> d!1635783 (= c!870460 ((_ is Nil!58438) (list!18997 xs!286)))))

(assert (=> d!1635783 (= (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41)))) lt!2089394)))

(declare-fun b!5069974 () Bool)

(assert (=> b!5069974 (= e!3163605 (Cons!58438 (h!64886 (list!18997 xs!286)) (++!12793 (t!371315 (list!18997 xs!286)) (list!18997 (left!42822 (left!42822 ys!41))))))))

(assert (= (and d!1635783 c!870460) b!5069973))

(assert (= (and d!1635783 (not c!870460)) b!5069974))

(assert (= (and d!1635783 res!2158645) b!5069975))

(assert (= (and b!5069975 res!2158646) b!5069976))

(declare-fun m!6114890 () Bool)

(assert (=> b!5069975 m!6114890))

(assert (=> b!5069975 m!6114410))

(assert (=> b!5069975 m!6114606))

(assert (=> b!5069975 m!6114512))

(declare-fun m!6114892 () Bool)

(assert (=> b!5069975 m!6114892))

(declare-fun m!6114894 () Bool)

(assert (=> d!1635783 m!6114894))

(assert (=> d!1635783 m!6114410))

(assert (=> d!1635783 m!6114612))

(assert (=> d!1635783 m!6114512))

(declare-fun m!6114896 () Bool)

(assert (=> d!1635783 m!6114896))

(assert (=> b!5069974 m!6114512))

(declare-fun m!6114898 () Bool)

(assert (=> b!5069974 m!6114898))

(assert (=> b!5069704 d!1635783))

(declare-fun b!5069979 () Bool)

(declare-fun e!3163608 () List!58562)

(assert (=> b!5069979 (= e!3163608 (list!18999 (xs!18924 (left!42822 (left!42822 ys!41)))))))

(declare-fun d!1635785 () Bool)

(declare-fun c!870461 () Bool)

(assert (=> d!1635785 (= c!870461 ((_ is Empty!15568) (left!42822 (left!42822 ys!41))))))

(declare-fun e!3163607 () List!58562)

(assert (=> d!1635785 (= (list!18997 (left!42822 (left!42822 ys!41))) e!3163607)))

(declare-fun b!5069978 () Bool)

(assert (=> b!5069978 (= e!3163607 e!3163608)))

(declare-fun c!870462 () Bool)

(assert (=> b!5069978 (= c!870462 ((_ is Leaf!25857) (left!42822 (left!42822 ys!41))))))

(declare-fun b!5069977 () Bool)

(assert (=> b!5069977 (= e!3163607 Nil!58438)))

(declare-fun b!5069980 () Bool)

(assert (=> b!5069980 (= e!3163608 (++!12793 (list!18997 (left!42822 (left!42822 (left!42822 ys!41)))) (list!18997 (right!43152 (left!42822 (left!42822 ys!41))))))))

(assert (= (and d!1635785 c!870461) b!5069977))

(assert (= (and d!1635785 (not c!870461)) b!5069978))

(assert (= (and b!5069978 c!870462) b!5069979))

(assert (= (and b!5069978 (not c!870462)) b!5069980))

(declare-fun m!6114900 () Bool)

(assert (=> b!5069979 m!6114900))

(declare-fun m!6114902 () Bool)

(assert (=> b!5069980 m!6114902))

(declare-fun m!6114904 () Bool)

(assert (=> b!5069980 m!6114904))

(assert (=> b!5069980 m!6114902))

(assert (=> b!5069980 m!6114904))

(declare-fun m!6114906 () Bool)

(assert (=> b!5069980 m!6114906))

(assert (=> b!5069704 d!1635785))

(declare-fun d!1635787 () Bool)

(assert (=> d!1635787 (= (inv!77578 (xs!18924 (right!43152 err!4601))) (<= (size!39082 (innerList!15656 (xs!18924 (right!43152 err!4601)))) 2147483647))))

(declare-fun bs!1190085 () Bool)

(assert (= bs!1190085 d!1635787))

(declare-fun m!6114908 () Bool)

(assert (=> bs!1190085 m!6114908))

(assert (=> b!5069854 d!1635787))

(declare-fun d!1635789 () Bool)

(assert (=> d!1635789 (= (inv!77578 (xs!18924 (left!42822 ys!41))) (<= (size!39082 (innerList!15656 (xs!18924 (left!42822 ys!41)))) 2147483647))))

(declare-fun bs!1190086 () Bool)

(assert (= bs!1190086 d!1635789))

(declare-fun m!6114910 () Bool)

(assert (=> bs!1190086 m!6114910))

(assert (=> b!5069831 d!1635789))

(declare-fun b!5069983 () Bool)

(declare-fun res!2158648 () Bool)

(declare-fun e!3163610 () Bool)

(assert (=> b!5069983 (=> (not res!2158648) (not e!3163610))))

(declare-fun lt!2089395 () List!58562)

(assert (=> b!5069983 (= res!2158648 (= (size!39082 lt!2089395) (+ (size!39082 (list!18997 (left!42822 xs!286))) (size!39082 (list!18997 (right!43152 xs!286))))))))

(declare-fun b!5069984 () Bool)

(assert (=> b!5069984 (= e!3163610 (or (not (= (list!18997 (right!43152 xs!286)) Nil!58438)) (= lt!2089395 (list!18997 (left!42822 xs!286)))))))

(declare-fun b!5069981 () Bool)

(declare-fun e!3163609 () List!58562)

(assert (=> b!5069981 (= e!3163609 (list!18997 (right!43152 xs!286)))))

(declare-fun d!1635791 () Bool)

(assert (=> d!1635791 e!3163610))

(declare-fun res!2158647 () Bool)

(assert (=> d!1635791 (=> (not res!2158647) (not e!3163610))))

(assert (=> d!1635791 (= res!2158647 (= (content!10420 lt!2089395) ((_ map or) (content!10420 (list!18997 (left!42822 xs!286))) (content!10420 (list!18997 (right!43152 xs!286))))))))

(assert (=> d!1635791 (= lt!2089395 e!3163609)))

(declare-fun c!870463 () Bool)

(assert (=> d!1635791 (= c!870463 ((_ is Nil!58438) (list!18997 (left!42822 xs!286))))))

(assert (=> d!1635791 (= (++!12793 (list!18997 (left!42822 xs!286)) (list!18997 (right!43152 xs!286))) lt!2089395)))

(declare-fun b!5069982 () Bool)

(assert (=> b!5069982 (= e!3163609 (Cons!58438 (h!64886 (list!18997 (left!42822 xs!286))) (++!12793 (t!371315 (list!18997 (left!42822 xs!286))) (list!18997 (right!43152 xs!286)))))))

(assert (= (and d!1635791 c!870463) b!5069981))

(assert (= (and d!1635791 (not c!870463)) b!5069982))

(assert (= (and d!1635791 res!2158647) b!5069983))

(assert (= (and b!5069983 res!2158648) b!5069984))

(declare-fun m!6114912 () Bool)

(assert (=> b!5069983 m!6114912))

(assert (=> b!5069983 m!6114534))

(declare-fun m!6114914 () Bool)

(assert (=> b!5069983 m!6114914))

(assert (=> b!5069983 m!6114536))

(declare-fun m!6114916 () Bool)

(assert (=> b!5069983 m!6114916))

(declare-fun m!6114918 () Bool)

(assert (=> d!1635791 m!6114918))

(assert (=> d!1635791 m!6114534))

(declare-fun m!6114920 () Bool)

(assert (=> d!1635791 m!6114920))

(assert (=> d!1635791 m!6114536))

(declare-fun m!6114922 () Bool)

(assert (=> d!1635791 m!6114922))

(assert (=> b!5069982 m!6114536))

(declare-fun m!6114924 () Bool)

(assert (=> b!5069982 m!6114924))

(assert (=> b!5069781 d!1635791))

(declare-fun b!5069987 () Bool)

(declare-fun e!3163612 () List!58562)

(assert (=> b!5069987 (= e!3163612 (list!18999 (xs!18924 (left!42822 xs!286))))))

(declare-fun d!1635793 () Bool)

(declare-fun c!870464 () Bool)

(assert (=> d!1635793 (= c!870464 ((_ is Empty!15568) (left!42822 xs!286)))))

(declare-fun e!3163611 () List!58562)

(assert (=> d!1635793 (= (list!18997 (left!42822 xs!286)) e!3163611)))

(declare-fun b!5069986 () Bool)

(assert (=> b!5069986 (= e!3163611 e!3163612)))

(declare-fun c!870465 () Bool)

(assert (=> b!5069986 (= c!870465 ((_ is Leaf!25857) (left!42822 xs!286)))))

(declare-fun b!5069985 () Bool)

(assert (=> b!5069985 (= e!3163611 Nil!58438)))

(declare-fun b!5069988 () Bool)

(assert (=> b!5069988 (= e!3163612 (++!12793 (list!18997 (left!42822 (left!42822 xs!286))) (list!18997 (right!43152 (left!42822 xs!286)))))))

(assert (= (and d!1635793 c!870464) b!5069985))

(assert (= (and d!1635793 (not c!870464)) b!5069986))

(assert (= (and b!5069986 c!870465) b!5069987))

(assert (= (and b!5069986 (not c!870465)) b!5069988))

(declare-fun m!6114926 () Bool)

(assert (=> b!5069987 m!6114926))

(declare-fun m!6114928 () Bool)

(assert (=> b!5069988 m!6114928))

(declare-fun m!6114930 () Bool)

(assert (=> b!5069988 m!6114930))

(assert (=> b!5069988 m!6114928))

(assert (=> b!5069988 m!6114930))

(declare-fun m!6114932 () Bool)

(assert (=> b!5069988 m!6114932))

(assert (=> b!5069781 d!1635793))

(declare-fun b!5069991 () Bool)

(declare-fun e!3163614 () List!58562)

(assert (=> b!5069991 (= e!3163614 (list!18999 (xs!18924 (right!43152 xs!286))))))

(declare-fun d!1635795 () Bool)

(declare-fun c!870466 () Bool)

(assert (=> d!1635795 (= c!870466 ((_ is Empty!15568) (right!43152 xs!286)))))

(declare-fun e!3163613 () List!58562)

(assert (=> d!1635795 (= (list!18997 (right!43152 xs!286)) e!3163613)))

(declare-fun b!5069990 () Bool)

(assert (=> b!5069990 (= e!3163613 e!3163614)))

(declare-fun c!870467 () Bool)

(assert (=> b!5069990 (= c!870467 ((_ is Leaf!25857) (right!43152 xs!286)))))

(declare-fun b!5069989 () Bool)

(assert (=> b!5069989 (= e!3163613 Nil!58438)))

(declare-fun b!5069992 () Bool)

(assert (=> b!5069992 (= e!3163614 (++!12793 (list!18997 (left!42822 (right!43152 xs!286))) (list!18997 (right!43152 (right!43152 xs!286)))))))

(assert (= (and d!1635795 c!870466) b!5069989))

(assert (= (and d!1635795 (not c!870466)) b!5069990))

(assert (= (and b!5069990 c!870467) b!5069991))

(assert (= (and b!5069990 (not c!870467)) b!5069992))

(declare-fun m!6114934 () Bool)

(assert (=> b!5069991 m!6114934))

(assert (=> b!5069992 m!6114522))

(assert (=> b!5069992 m!6114524))

(assert (=> b!5069992 m!6114522))

(assert (=> b!5069992 m!6114524))

(declare-fun m!6114936 () Bool)

(assert (=> b!5069992 m!6114936))

(assert (=> b!5069781 d!1635795))

(declare-fun d!1635797 () Bool)

(declare-fun lt!2089398 () Int)

(assert (=> d!1635797 (>= lt!2089398 0)))

(declare-fun e!3163617 () Int)

(assert (=> d!1635797 (= lt!2089398 e!3163617)))

(declare-fun c!870470 () Bool)

(assert (=> d!1635797 (= c!870470 ((_ is Nil!58438) (innerList!15656 (xs!18924 xs!286))))))

(assert (=> d!1635797 (= (size!39082 (innerList!15656 (xs!18924 xs!286))) lt!2089398)))

(declare-fun b!5069997 () Bool)

(assert (=> b!5069997 (= e!3163617 0)))

(declare-fun b!5069998 () Bool)

(assert (=> b!5069998 (= e!3163617 (+ 1 (size!39082 (t!371315 (innerList!15656 (xs!18924 xs!286))))))))

(assert (= (and d!1635797 c!870470) b!5069997))

(assert (= (and d!1635797 (not c!870470)) b!5069998))

(declare-fun m!6114938 () Bool)

(assert (=> b!5069998 m!6114938))

(assert (=> d!1635729 d!1635797))

(declare-fun d!1635799 () Bool)

(declare-fun res!2158649 () Bool)

(declare-fun e!3163618 () Bool)

(assert (=> d!1635799 (=> (not res!2158649) (not e!3163618))))

(assert (=> d!1635799 (= res!2158649 (<= (size!39082 (list!18999 (xs!18924 (right!43152 ys!41)))) 512))))

(assert (=> d!1635799 (= (inv!77582 (right!43152 ys!41)) e!3163618)))

(declare-fun b!5069999 () Bool)

(declare-fun res!2158650 () Bool)

(assert (=> b!5069999 (=> (not res!2158650) (not e!3163618))))

(assert (=> b!5069999 (= res!2158650 (= (csize!31367 (right!43152 ys!41)) (size!39082 (list!18999 (xs!18924 (right!43152 ys!41))))))))

(declare-fun b!5070000 () Bool)

(assert (=> b!5070000 (= e!3163618 (and (> (csize!31367 (right!43152 ys!41)) 0) (<= (csize!31367 (right!43152 ys!41)) 512)))))

(assert (= (and d!1635799 res!2158649) b!5069999))

(assert (= (and b!5069999 res!2158650) b!5070000))

(assert (=> d!1635799 m!6114864))

(assert (=> d!1635799 m!6114864))

(declare-fun m!6114940 () Bool)

(assert (=> d!1635799 m!6114940))

(assert (=> b!5069999 m!6114864))

(assert (=> b!5069999 m!6114864))

(assert (=> b!5069999 m!6114940))

(assert (=> b!5069631 d!1635799))

(declare-fun d!1635801 () Bool)

(declare-fun e!3163619 () Bool)

(assert (=> d!1635801 e!3163619))

(declare-fun c!870471 () Bool)

(assert (=> d!1635801 (= c!870471 ((_ is Nil!58438) (list!18997 (left!42822 (right!43152 xs!286)))))))

(assert (=> d!1635801 (= (appendAssoc!303 (list!18997 (left!42822 (right!43152 xs!286))) (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41)) true)))

(declare-fun bm!353237 () Bool)

(declare-fun call!353242 () List!58562)

(assert (=> bm!353237 (= call!353242 (++!12793 (list!18997 (left!42822 (right!43152 xs!286))) (list!18997 (right!43152 (right!43152 xs!286)))))))

(declare-fun bm!353238 () Bool)

(declare-fun call!353243 () List!58562)

(declare-fun call!353244 () List!58562)

(assert (=> bm!353238 (= call!353243 (++!12793 (list!18997 (left!42822 (right!43152 xs!286))) call!353244))))

(declare-fun b!5070001 () Bool)

(declare-fun call!353245 () List!58562)

(assert (=> b!5070001 (= e!3163619 (= call!353245 call!353243))))

(declare-fun lt!2089399 () Bool)

(assert (=> b!5070001 (= lt!2089399 (appendAssoc!303 (t!371315 (list!18997 (left!42822 (right!43152 xs!286)))) (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41)))))

(declare-fun b!5070002 () Bool)

(assert (=> b!5070002 (= e!3163619 (= call!353245 call!353243))))

(declare-fun bm!353239 () Bool)

(assert (=> bm!353239 (= call!353244 (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41)))))

(declare-fun bm!353240 () Bool)

(assert (=> bm!353240 (= call!353245 (++!12793 call!353242 (list!18997 ys!41)))))

(assert (= (and d!1635801 c!870471) b!5070002))

(assert (= (and d!1635801 (not c!870471)) b!5070001))

(assert (= (or b!5070002 b!5070001) bm!353237))

(assert (= (or b!5070002 b!5070001) bm!353239))

(assert (= (or b!5070002 b!5070001) bm!353238))

(assert (= (or b!5070002 b!5070001) bm!353240))

(assert (=> bm!353239 m!6114524))

(assert (=> bm!353239 m!6114412))

(assert (=> bm!353239 m!6114540))

(assert (=> bm!353237 m!6114522))

(assert (=> bm!353237 m!6114524))

(assert (=> bm!353237 m!6114936))

(assert (=> b!5070001 m!6114524))

(assert (=> b!5070001 m!6114412))

(declare-fun m!6114942 () Bool)

(assert (=> b!5070001 m!6114942))

(assert (=> bm!353238 m!6114522))

(declare-fun m!6114944 () Bool)

(assert (=> bm!353238 m!6114944))

(assert (=> bm!353240 m!6114412))

(declare-fun m!6114946 () Bool)

(assert (=> bm!353240 m!6114946))

(assert (=> b!5069702 d!1635801))

(declare-fun b!5070005 () Bool)

(declare-fun e!3163621 () List!58562)

(assert (=> b!5070005 (= e!3163621 (list!18999 (xs!18924 (left!42822 (right!43152 xs!286)))))))

(declare-fun d!1635803 () Bool)

(declare-fun c!870472 () Bool)

(assert (=> d!1635803 (= c!870472 ((_ is Empty!15568) (left!42822 (right!43152 xs!286))))))

(declare-fun e!3163620 () List!58562)

(assert (=> d!1635803 (= (list!18997 (left!42822 (right!43152 xs!286))) e!3163620)))

(declare-fun b!5070004 () Bool)

(assert (=> b!5070004 (= e!3163620 e!3163621)))

(declare-fun c!870473 () Bool)

(assert (=> b!5070004 (= c!870473 ((_ is Leaf!25857) (left!42822 (right!43152 xs!286))))))

(declare-fun b!5070003 () Bool)

(assert (=> b!5070003 (= e!3163620 Nil!58438)))

(declare-fun b!5070006 () Bool)

(assert (=> b!5070006 (= e!3163621 (++!12793 (list!18997 (left!42822 (left!42822 (right!43152 xs!286)))) (list!18997 (right!43152 (left!42822 (right!43152 xs!286))))))))

(assert (= (and d!1635803 c!870472) b!5070003))

(assert (= (and d!1635803 (not c!870472)) b!5070004))

(assert (= (and b!5070004 c!870473) b!5070005))

(assert (= (and b!5070004 (not c!870473)) b!5070006))

(declare-fun m!6114948 () Bool)

(assert (=> b!5070005 m!6114948))

(declare-fun m!6114950 () Bool)

(assert (=> b!5070006 m!6114950))

(declare-fun m!6114952 () Bool)

(assert (=> b!5070006 m!6114952))

(assert (=> b!5070006 m!6114950))

(assert (=> b!5070006 m!6114952))

(declare-fun m!6114954 () Bool)

(assert (=> b!5070006 m!6114954))

(assert (=> b!5069702 d!1635803))

(declare-fun b!5070009 () Bool)

(declare-fun e!3163623 () List!58562)

(assert (=> b!5070009 (= e!3163623 (list!18999 (xs!18924 (right!43152 (right!43152 xs!286)))))))

(declare-fun d!1635805 () Bool)

(declare-fun c!870474 () Bool)

(assert (=> d!1635805 (= c!870474 ((_ is Empty!15568) (right!43152 (right!43152 xs!286))))))

(declare-fun e!3163622 () List!58562)

(assert (=> d!1635805 (= (list!18997 (right!43152 (right!43152 xs!286))) e!3163622)))

(declare-fun b!5070008 () Bool)

(assert (=> b!5070008 (= e!3163622 e!3163623)))

(declare-fun c!870475 () Bool)

(assert (=> b!5070008 (= c!870475 ((_ is Leaf!25857) (right!43152 (right!43152 xs!286))))))

(declare-fun b!5070007 () Bool)

(assert (=> b!5070007 (= e!3163622 Nil!58438)))

(declare-fun b!5070010 () Bool)

(assert (=> b!5070010 (= e!3163623 (++!12793 (list!18997 (left!42822 (right!43152 (right!43152 xs!286)))) (list!18997 (right!43152 (right!43152 (right!43152 xs!286))))))))

(assert (= (and d!1635805 c!870474) b!5070007))

(assert (= (and d!1635805 (not c!870474)) b!5070008))

(assert (= (and b!5070008 c!870475) b!5070009))

(assert (= (and b!5070008 (not c!870475)) b!5070010))

(declare-fun m!6114956 () Bool)

(assert (=> b!5070009 m!6114956))

(declare-fun m!6114958 () Bool)

(assert (=> b!5070010 m!6114958))

(declare-fun m!6114960 () Bool)

(assert (=> b!5070010 m!6114960))

(assert (=> b!5070010 m!6114958))

(assert (=> b!5070010 m!6114960))

(declare-fun m!6114962 () Bool)

(assert (=> b!5070010 m!6114962))

(assert (=> b!5069702 d!1635805))

(assert (=> b!5069702 d!1635719))

(declare-fun d!1635807 () Bool)

(declare-fun lt!2089402 () Bool)

(declare-fun isEmpty!31640 (List!58562) Bool)

(assert (=> d!1635807 (= lt!2089402 (isEmpty!31640 (list!18997 (right!43152 lt!2089379))))))

(assert (=> d!1635807 (= lt!2089402 (= (size!39084 (right!43152 lt!2089379)) 0))))

(assert (=> d!1635807 (= (isEmpty!31638 (right!43152 lt!2089379)) lt!2089402)))

(declare-fun bs!1190087 () Bool)

(assert (= bs!1190087 d!1635807))

(assert (=> bs!1190087 m!6114600))

(assert (=> bs!1190087 m!6114600))

(declare-fun m!6114964 () Bool)

(assert (=> bs!1190087 m!6114964))

(declare-fun m!6114966 () Bool)

(assert (=> bs!1190087 m!6114966))

(assert (=> b!5069815 d!1635807))

(declare-fun d!1635809 () Bool)

(declare-fun res!2158651 () Bool)

(declare-fun e!3163624 () Bool)

(assert (=> d!1635809 (=> (not res!2158651) (not e!3163624))))

(assert (=> d!1635809 (= res!2158651 (= (csize!31366 (right!43152 ys!41)) (+ (size!39084 (left!42822 (right!43152 ys!41))) (size!39084 (right!43152 (right!43152 ys!41))))))))

(assert (=> d!1635809 (= (inv!77580 (right!43152 ys!41)) e!3163624)))

(declare-fun b!5070011 () Bool)

(declare-fun res!2158652 () Bool)

(assert (=> b!5070011 (=> (not res!2158652) (not e!3163624))))

(assert (=> b!5070011 (= res!2158652 (and (not (= (left!42822 (right!43152 ys!41)) Empty!15568)) (not (= (right!43152 (right!43152 ys!41)) Empty!15568))))))

(declare-fun b!5070012 () Bool)

(declare-fun res!2158653 () Bool)

(assert (=> b!5070012 (=> (not res!2158653) (not e!3163624))))

(assert (=> b!5070012 (= res!2158653 (= (cheight!15779 (right!43152 ys!41)) (+ (max!0 (height!2145 (left!42822 (right!43152 ys!41))) (height!2145 (right!43152 (right!43152 ys!41)))) 1)))))

(declare-fun b!5070013 () Bool)

(assert (=> b!5070013 (= e!3163624 (<= 0 (cheight!15779 (right!43152 ys!41))))))

(assert (= (and d!1635809 res!2158651) b!5070011))

(assert (= (and b!5070011 res!2158652) b!5070012))

(assert (= (and b!5070012 res!2158653) b!5070013))

(declare-fun m!6114968 () Bool)

(assert (=> d!1635809 m!6114968))

(declare-fun m!6114970 () Bool)

(assert (=> d!1635809 m!6114970))

(declare-fun m!6114972 () Bool)

(assert (=> b!5070012 m!6114972))

(declare-fun m!6114974 () Bool)

(assert (=> b!5070012 m!6114974))

(assert (=> b!5070012 m!6114972))

(assert (=> b!5070012 m!6114974))

(declare-fun m!6114976 () Bool)

(assert (=> b!5070012 m!6114976))

(assert (=> b!5069629 d!1635809))

(assert (=> b!5069587 d!1635733))

(assert (=> b!5069587 d!1635735))

(assert (=> b!5069700 d!1635719))

(assert (=> b!5069700 d!1635793))

(assert (=> b!5069700 d!1635805))

(declare-fun d!1635811 () Bool)

(declare-fun e!3163625 () Bool)

(assert (=> d!1635811 e!3163625))

(declare-fun c!870476 () Bool)

(assert (=> d!1635811 (= c!870476 ((_ is Nil!58438) (list!18997 (left!42822 xs!286))))))

(assert (=> d!1635811 (= (appendAssoc!303 (list!18997 (left!42822 xs!286)) (list!18997 (left!42822 (right!43152 xs!286))) (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41))) true)))

(declare-fun bm!353241 () Bool)

(declare-fun call!353246 () List!58562)

(assert (=> bm!353241 (= call!353246 (++!12793 (list!18997 (left!42822 xs!286)) (list!18997 (left!42822 (right!43152 xs!286)))))))

(declare-fun bm!353242 () Bool)

(declare-fun call!353247 () List!58562)

(declare-fun call!353248 () List!58562)

(assert (=> bm!353242 (= call!353247 (++!12793 (list!18997 (left!42822 xs!286)) call!353248))))

(declare-fun b!5070014 () Bool)

(declare-fun call!353249 () List!58562)

(assert (=> b!5070014 (= e!3163625 (= call!353249 call!353247))))

(declare-fun lt!2089403 () Bool)

(assert (=> b!5070014 (= lt!2089403 (appendAssoc!303 (t!371315 (list!18997 (left!42822 xs!286))) (list!18997 (left!42822 (right!43152 xs!286))) (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41))))))

(declare-fun b!5070015 () Bool)

(assert (=> b!5070015 (= e!3163625 (= call!353249 call!353247))))

(declare-fun bm!353243 () Bool)

(assert (=> bm!353243 (= call!353248 (++!12793 (list!18997 (left!42822 (right!43152 xs!286))) (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41))))))

(declare-fun bm!353244 () Bool)

(assert (=> bm!353244 (= call!353249 (++!12793 call!353246 (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41))))))

(assert (= (and d!1635811 c!870476) b!5070015))

(assert (= (and d!1635811 (not c!870476)) b!5070014))

(assert (= (or b!5070015 b!5070014) bm!353241))

(assert (= (or b!5070015 b!5070014) bm!353243))

(assert (= (or b!5070015 b!5070014) bm!353242))

(assert (= (or b!5070015 b!5070014) bm!353244))

(assert (=> bm!353243 m!6114522))

(assert (=> bm!353243 m!6114540))

(declare-fun m!6114978 () Bool)

(assert (=> bm!353243 m!6114978))

(assert (=> bm!353241 m!6114534))

(assert (=> bm!353241 m!6114522))

(declare-fun m!6114980 () Bool)

(assert (=> bm!353241 m!6114980))

(assert (=> b!5070014 m!6114522))

(assert (=> b!5070014 m!6114540))

(declare-fun m!6114982 () Bool)

(assert (=> b!5070014 m!6114982))

(assert (=> bm!353242 m!6114534))

(declare-fun m!6114984 () Bool)

(assert (=> bm!353242 m!6114984))

(assert (=> bm!353244 m!6114540))

(declare-fun m!6114986 () Bool)

(assert (=> bm!353244 m!6114986))

(assert (=> b!5069700 d!1635811))

(assert (=> b!5069700 d!1635803))

(declare-fun b!5070018 () Bool)

(declare-fun res!2158655 () Bool)

(declare-fun e!3163627 () Bool)

(assert (=> b!5070018 (=> (not res!2158655) (not e!3163627))))

(declare-fun lt!2089404 () List!58562)

(assert (=> b!5070018 (= res!2158655 (= (size!39082 lt!2089404) (+ (size!39082 (list!18997 (right!43152 (right!43152 xs!286)))) (size!39082 (list!18997 ys!41)))))))

(declare-fun b!5070019 () Bool)

(assert (=> b!5070019 (= e!3163627 (or (not (= (list!18997 ys!41) Nil!58438)) (= lt!2089404 (list!18997 (right!43152 (right!43152 xs!286))))))))

(declare-fun b!5070016 () Bool)

(declare-fun e!3163626 () List!58562)

(assert (=> b!5070016 (= e!3163626 (list!18997 ys!41))))

(declare-fun d!1635813 () Bool)

(assert (=> d!1635813 e!3163627))

(declare-fun res!2158654 () Bool)

(assert (=> d!1635813 (=> (not res!2158654) (not e!3163627))))

(assert (=> d!1635813 (= res!2158654 (= (content!10420 lt!2089404) ((_ map or) (content!10420 (list!18997 (right!43152 (right!43152 xs!286)))) (content!10420 (list!18997 ys!41)))))))

(assert (=> d!1635813 (= lt!2089404 e!3163626)))

(declare-fun c!870477 () Bool)

(assert (=> d!1635813 (= c!870477 ((_ is Nil!58438) (list!18997 (right!43152 (right!43152 xs!286)))))))

(assert (=> d!1635813 (= (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41)) lt!2089404)))

(declare-fun b!5070017 () Bool)

(assert (=> b!5070017 (= e!3163626 (Cons!58438 (h!64886 (list!18997 (right!43152 (right!43152 xs!286)))) (++!12793 (t!371315 (list!18997 (right!43152 (right!43152 xs!286)))) (list!18997 ys!41))))))

(assert (= (and d!1635813 c!870477) b!5070016))

(assert (= (and d!1635813 (not c!870477)) b!5070017))

(assert (= (and d!1635813 res!2158654) b!5070018))

(assert (= (and b!5070018 res!2158655) b!5070019))

(declare-fun m!6114988 () Bool)

(assert (=> b!5070018 m!6114988))

(assert (=> b!5070018 m!6114524))

(declare-fun m!6114990 () Bool)

(assert (=> b!5070018 m!6114990))

(assert (=> b!5070018 m!6114412))

(assert (=> b!5070018 m!6114608))

(declare-fun m!6114992 () Bool)

(assert (=> d!1635813 m!6114992))

(assert (=> d!1635813 m!6114524))

(declare-fun m!6114994 () Bool)

(assert (=> d!1635813 m!6114994))

(assert (=> d!1635813 m!6114412))

(assert (=> d!1635813 m!6114614))

(assert (=> b!5070017 m!6114412))

(declare-fun m!6114996 () Bool)

(assert (=> b!5070017 m!6114996))

(assert (=> b!5069700 d!1635813))

(declare-fun d!1635815 () Bool)

(declare-fun res!2158656 () Bool)

(declare-fun e!3163628 () Bool)

(assert (=> d!1635815 (=> (not res!2158656) (not e!3163628))))

(assert (=> d!1635815 (= res!2158656 (<= (size!39082 (list!18999 (xs!18924 (left!42822 xs!286)))) 512))))

(assert (=> d!1635815 (= (inv!77582 (left!42822 xs!286)) e!3163628)))

(declare-fun b!5070020 () Bool)

(declare-fun res!2158657 () Bool)

(assert (=> b!5070020 (=> (not res!2158657) (not e!3163628))))

(assert (=> b!5070020 (= res!2158657 (= (csize!31367 (left!42822 xs!286)) (size!39082 (list!18999 (xs!18924 (left!42822 xs!286))))))))

(declare-fun b!5070021 () Bool)

(assert (=> b!5070021 (= e!3163628 (and (> (csize!31367 (left!42822 xs!286)) 0) (<= (csize!31367 (left!42822 xs!286)) 512)))))

(assert (= (and d!1635815 res!2158656) b!5070020))

(assert (= (and b!5070020 res!2158657) b!5070021))

(assert (=> d!1635815 m!6114926))

(assert (=> d!1635815 m!6114926))

(declare-fun m!6114998 () Bool)

(assert (=> d!1635815 m!6114998))

(assert (=> b!5070020 m!6114926))

(assert (=> b!5070020 m!6114926))

(assert (=> b!5070020 m!6114998))

(assert (=> b!5069818 d!1635815))

(declare-fun d!1635817 () Bool)

(declare-fun res!2158658 () Bool)

(declare-fun e!3163630 () Bool)

(assert (=> d!1635817 (=> res!2158658 e!3163630)))

(assert (=> d!1635817 (= res!2158658 (not ((_ is Node!15568) (left!42822 ys!41))))))

(assert (=> d!1635817 (= (isBalanced!4430 (left!42822 ys!41)) e!3163630)))

(declare-fun b!5070022 () Bool)

(declare-fun res!2158661 () Bool)

(declare-fun e!3163629 () Bool)

(assert (=> b!5070022 (=> (not res!2158661) (not e!3163629))))

(assert (=> b!5070022 (= res!2158661 (not (isEmpty!31638 (left!42822 (left!42822 ys!41)))))))

(declare-fun b!5070023 () Bool)

(declare-fun res!2158662 () Bool)

(assert (=> b!5070023 (=> (not res!2158662) (not e!3163629))))

(assert (=> b!5070023 (= res!2158662 (isBalanced!4430 (right!43152 (left!42822 ys!41))))))

(declare-fun b!5070024 () Bool)

(assert (=> b!5070024 (= e!3163630 e!3163629)))

(declare-fun res!2158663 () Bool)

(assert (=> b!5070024 (=> (not res!2158663) (not e!3163629))))

(assert (=> b!5070024 (= res!2158663 (<= (- 1) (- (height!2145 (left!42822 (left!42822 ys!41))) (height!2145 (right!43152 (left!42822 ys!41))))))))

(declare-fun b!5070025 () Bool)

(declare-fun res!2158660 () Bool)

(assert (=> b!5070025 (=> (not res!2158660) (not e!3163629))))

(assert (=> b!5070025 (= res!2158660 (isBalanced!4430 (left!42822 (left!42822 ys!41))))))

(declare-fun b!5070026 () Bool)

(declare-fun res!2158659 () Bool)

(assert (=> b!5070026 (=> (not res!2158659) (not e!3163629))))

(assert (=> b!5070026 (= res!2158659 (<= (- (height!2145 (left!42822 (left!42822 ys!41))) (height!2145 (right!43152 (left!42822 ys!41)))) 1))))

(declare-fun b!5070027 () Bool)

(assert (=> b!5070027 (= e!3163629 (not (isEmpty!31638 (right!43152 (left!42822 ys!41)))))))

(assert (= (and d!1635817 (not res!2158658)) b!5070024))

(assert (= (and b!5070024 res!2158663) b!5070026))

(assert (= (and b!5070026 res!2158659) b!5070025))

(assert (= (and b!5070025 res!2158660) b!5070023))

(assert (= (and b!5070023 res!2158662) b!5070022))

(assert (= (and b!5070022 res!2158661) b!5070027))

(declare-fun m!6115000 () Bool)

(assert (=> b!5070023 m!6115000))

(declare-fun m!6115002 () Bool)

(assert (=> b!5070027 m!6115002))

(declare-fun m!6115004 () Bool)

(assert (=> b!5070025 m!6115004))

(declare-fun m!6115006 () Bool)

(assert (=> b!5070024 m!6115006))

(declare-fun m!6115008 () Bool)

(assert (=> b!5070024 m!6115008))

(declare-fun m!6115010 () Bool)

(assert (=> b!5070022 m!6115010))

(assert (=> b!5070026 m!6115006))

(assert (=> b!5070026 m!6115008))

(assert (=> b!5069807 d!1635817))

(declare-fun d!1635819 () Bool)

(declare-fun e!3163631 () Bool)

(assert (=> d!1635819 e!3163631))

(declare-fun c!870478 () Bool)

(assert (=> d!1635819 (= c!870478 ((_ is Nil!58438) (list!18997 xs!286)))))

(assert (=> d!1635819 (= (appendAssoc!303 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))) (list!18997 (right!43152 (left!42822 ys!41)))) true)))

(declare-fun bm!353245 () Bool)

(declare-fun call!353250 () List!58562)

(assert (=> bm!353245 (= call!353250 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41)))))))

(declare-fun bm!353246 () Bool)

(declare-fun call!353251 () List!58562)

(declare-fun call!353252 () List!58562)

(assert (=> bm!353246 (= call!353251 (++!12793 (list!18997 xs!286) call!353252))))

(declare-fun b!5070028 () Bool)

(declare-fun call!353253 () List!58562)

(assert (=> b!5070028 (= e!3163631 (= call!353253 call!353251))))

(declare-fun lt!2089405 () Bool)

(assert (=> b!5070028 (= lt!2089405 (appendAssoc!303 (t!371315 (list!18997 xs!286)) (list!18997 (left!42822 (left!42822 ys!41))) (list!18997 (right!43152 (left!42822 ys!41)))))))

(declare-fun b!5070029 () Bool)

(assert (=> b!5070029 (= e!3163631 (= call!353253 call!353251))))

(declare-fun bm!353247 () Bool)

(assert (=> bm!353247 (= call!353252 (++!12793 (list!18997 (left!42822 (left!42822 ys!41))) (list!18997 (right!43152 (left!42822 ys!41)))))))

(declare-fun bm!353248 () Bool)

(assert (=> bm!353248 (= call!353253 (++!12793 call!353250 (list!18997 (right!43152 (left!42822 ys!41)))))))

(assert (= (and d!1635819 c!870478) b!5070029))

(assert (= (and d!1635819 (not c!870478)) b!5070028))

(assert (= (or b!5070029 b!5070028) bm!353245))

(assert (= (or b!5070029 b!5070028) bm!353247))

(assert (= (or b!5070029 b!5070028) bm!353246))

(assert (= (or b!5070029 b!5070028) bm!353248))

(assert (=> bm!353247 m!6114512))

(assert (=> bm!353247 m!6114516))

(declare-fun m!6115012 () Bool)

(assert (=> bm!353247 m!6115012))

(assert (=> bm!353245 m!6114410))

(assert (=> bm!353245 m!6114512))

(assert (=> bm!353245 m!6114514))

(assert (=> b!5070028 m!6114512))

(assert (=> b!5070028 m!6114516))

(declare-fun m!6115014 () Bool)

(assert (=> b!5070028 m!6115014))

(assert (=> bm!353246 m!6114410))

(declare-fun m!6115016 () Bool)

(assert (=> bm!353246 m!6115016))

(assert (=> bm!353248 m!6114516))

(declare-fun m!6115018 () Bool)

(assert (=> bm!353248 m!6115018))

(assert (=> b!5069707 d!1635819))

(assert (=> b!5069707 d!1635717))

(assert (=> b!5069707 d!1635785))

(assert (=> b!5069707 d!1635779))

(declare-fun d!1635821 () Bool)

(declare-fun res!2158664 () Bool)

(declare-fun e!3163632 () Bool)

(assert (=> d!1635821 (=> (not res!2158664) (not e!3163632))))

(assert (=> d!1635821 (= res!2158664 (<= (size!39082 (list!18999 (xs!18924 xs!286))) 512))))

(assert (=> d!1635821 (= (inv!77582 xs!286) e!3163632)))

(declare-fun b!5070030 () Bool)

(declare-fun res!2158665 () Bool)

(assert (=> b!5070030 (=> (not res!2158665) (not e!3163632))))

(assert (=> b!5070030 (= res!2158665 (= (csize!31367 xs!286) (size!39082 (list!18999 (xs!18924 xs!286)))))))

(declare-fun b!5070031 () Bool)

(assert (=> b!5070031 (= e!3163632 (and (> (csize!31367 xs!286) 0) (<= (csize!31367 xs!286) 512)))))

(assert (= (and d!1635821 res!2158664) b!5070030))

(assert (= (and b!5070030 res!2158665) b!5070031))

(assert (=> d!1635821 m!6114618))

(assert (=> d!1635821 m!6114618))

(declare-fun m!6115020 () Bool)

(assert (=> d!1635821 m!6115020))

(assert (=> b!5070030 m!6114618))

(assert (=> b!5070030 m!6114618))

(assert (=> b!5070030 m!6115020))

(assert (=> b!5069622 d!1635821))

(declare-fun d!1635823 () Bool)

(declare-fun res!2158666 () Bool)

(declare-fun e!3163634 () Bool)

(assert (=> d!1635823 (=> res!2158666 e!3163634)))

(assert (=> d!1635823 (= res!2158666 (not ((_ is Node!15568) (right!43152 ys!41))))))

(assert (=> d!1635823 (= (isBalanced!4430 (right!43152 ys!41)) e!3163634)))

(declare-fun b!5070032 () Bool)

(declare-fun res!2158669 () Bool)

(declare-fun e!3163633 () Bool)

(assert (=> b!5070032 (=> (not res!2158669) (not e!3163633))))

(assert (=> b!5070032 (= res!2158669 (not (isEmpty!31638 (left!42822 (right!43152 ys!41)))))))

(declare-fun b!5070033 () Bool)

(declare-fun res!2158670 () Bool)

(assert (=> b!5070033 (=> (not res!2158670) (not e!3163633))))

(assert (=> b!5070033 (= res!2158670 (isBalanced!4430 (right!43152 (right!43152 ys!41))))))

(declare-fun b!5070034 () Bool)

(assert (=> b!5070034 (= e!3163634 e!3163633)))

(declare-fun res!2158671 () Bool)

(assert (=> b!5070034 (=> (not res!2158671) (not e!3163633))))

(assert (=> b!5070034 (= res!2158671 (<= (- 1) (- (height!2145 (left!42822 (right!43152 ys!41))) (height!2145 (right!43152 (right!43152 ys!41))))))))

(declare-fun b!5070035 () Bool)

(declare-fun res!2158668 () Bool)

(assert (=> b!5070035 (=> (not res!2158668) (not e!3163633))))

(assert (=> b!5070035 (= res!2158668 (isBalanced!4430 (left!42822 (right!43152 ys!41))))))

(declare-fun b!5070036 () Bool)

(declare-fun res!2158667 () Bool)

(assert (=> b!5070036 (=> (not res!2158667) (not e!3163633))))

(assert (=> b!5070036 (= res!2158667 (<= (- (height!2145 (left!42822 (right!43152 ys!41))) (height!2145 (right!43152 (right!43152 ys!41)))) 1))))

(declare-fun b!5070037 () Bool)

(assert (=> b!5070037 (= e!3163633 (not (isEmpty!31638 (right!43152 (right!43152 ys!41)))))))

(assert (= (and d!1635823 (not res!2158666)) b!5070034))

(assert (= (and b!5070034 res!2158671) b!5070036))

(assert (= (and b!5070036 res!2158667) b!5070035))

(assert (= (and b!5070035 res!2158668) b!5070033))

(assert (= (and b!5070033 res!2158670) b!5070032))

(assert (= (and b!5070032 res!2158669) b!5070037))

(declare-fun m!6115022 () Bool)

(assert (=> b!5070033 m!6115022))

(declare-fun m!6115024 () Bool)

(assert (=> b!5070037 m!6115024))

(declare-fun m!6115026 () Bool)

(assert (=> b!5070035 m!6115026))

(assert (=> b!5070034 m!6114972))

(assert (=> b!5070034 m!6114974))

(declare-fun m!6115028 () Bool)

(assert (=> b!5070032 m!6115028))

(assert (=> b!5070036 m!6114972))

(assert (=> b!5070036 m!6114974))

(assert (=> b!5069805 d!1635823))

(declare-fun d!1635825 () Bool)

(declare-fun lt!2089406 () Bool)

(assert (=> d!1635825 (= lt!2089406 (isEmpty!31640 (list!18997 (right!43152 xs!286))))))

(assert (=> d!1635825 (= lt!2089406 (= (size!39084 (right!43152 xs!286)) 0))))

(assert (=> d!1635825 (= (isEmpty!31638 (right!43152 xs!286)) lt!2089406)))

(declare-fun bs!1190088 () Bool)

(assert (= bs!1190088 d!1635825))

(assert (=> bs!1190088 m!6114536))

(assert (=> bs!1190088 m!6114536))

(declare-fun m!6115030 () Bool)

(assert (=> bs!1190088 m!6115030))

(declare-fun m!6115032 () Bool)

(assert (=> bs!1190088 m!6115032))

(assert (=> b!5069613 d!1635825))

(declare-fun d!1635827 () Bool)

(declare-fun res!2158672 () Bool)

(declare-fun e!3163635 () Bool)

(assert (=> d!1635827 (=> (not res!2158672) (not e!3163635))))

(assert (=> d!1635827 (= res!2158672 (= (csize!31366 err!4601) (+ (size!39084 (left!42822 err!4601)) (size!39084 (right!43152 err!4601)))))))

(assert (=> d!1635827 (= (inv!77580 err!4601) e!3163635)))

(declare-fun b!5070038 () Bool)

(declare-fun res!2158673 () Bool)

(assert (=> b!5070038 (=> (not res!2158673) (not e!3163635))))

(assert (=> b!5070038 (= res!2158673 (and (not (= (left!42822 err!4601) Empty!15568)) (not (= (right!43152 err!4601) Empty!15568))))))

(declare-fun b!5070039 () Bool)

(declare-fun res!2158674 () Bool)

(assert (=> b!5070039 (=> (not res!2158674) (not e!3163635))))

(assert (=> b!5070039 (= res!2158674 (= (cheight!15779 err!4601) (+ (max!0 (height!2145 (left!42822 err!4601)) (height!2145 (right!43152 err!4601))) 1)))))

(declare-fun b!5070040 () Bool)

(assert (=> b!5070040 (= e!3163635 (<= 0 (cheight!15779 err!4601)))))

(assert (= (and d!1635827 res!2158672) b!5070038))

(assert (= (and b!5070038 res!2158673) b!5070039))

(assert (= (and b!5070039 res!2158674) b!5070040))

(declare-fun m!6115034 () Bool)

(assert (=> d!1635827 m!6115034))

(declare-fun m!6115036 () Bool)

(assert (=> d!1635827 m!6115036))

(declare-fun m!6115038 () Bool)

(assert (=> b!5070039 m!6115038))

(declare-fun m!6115040 () Bool)

(assert (=> b!5070039 m!6115040))

(assert (=> b!5070039 m!6115038))

(assert (=> b!5070039 m!6115040))

(declare-fun m!6115042 () Bool)

(assert (=> b!5070039 m!6115042))

(assert (=> b!5069721 d!1635827))

(declare-fun d!1635829 () Bool)

(declare-fun res!2158675 () Bool)

(declare-fun e!3163636 () Bool)

(assert (=> d!1635829 (=> (not res!2158675) (not e!3163636))))

(assert (=> d!1635829 (= res!2158675 (<= (size!39082 (list!18999 (xs!18924 (right!43152 xs!286)))) 512))))

(assert (=> d!1635829 (= (inv!77582 (right!43152 xs!286)) e!3163636)))

(declare-fun b!5070041 () Bool)

(declare-fun res!2158676 () Bool)

(assert (=> b!5070041 (=> (not res!2158676) (not e!3163636))))

(assert (=> b!5070041 (= res!2158676 (= (csize!31367 (right!43152 xs!286)) (size!39082 (list!18999 (xs!18924 (right!43152 xs!286))))))))

(declare-fun b!5070042 () Bool)

(assert (=> b!5070042 (= e!3163636 (and (> (csize!31367 (right!43152 xs!286)) 0) (<= (csize!31367 (right!43152 xs!286)) 512)))))

(assert (= (and d!1635829 res!2158675) b!5070041))

(assert (= (and b!5070041 res!2158676) b!5070042))

(assert (=> d!1635829 m!6114934))

(assert (=> d!1635829 m!6114934))

(declare-fun m!6115044 () Bool)

(assert (=> d!1635829 m!6115044))

(assert (=> b!5070041 m!6114934))

(assert (=> b!5070041 m!6114934))

(assert (=> b!5070041 m!6115044))

(assert (=> b!5069821 d!1635829))

(declare-fun d!1635831 () Bool)

(declare-fun res!2158677 () Bool)

(declare-fun e!3163637 () Bool)

(assert (=> d!1635831 (=> (not res!2158677) (not e!3163637))))

(assert (=> d!1635831 (= res!2158677 (= (csize!31366 (left!42822 err!4601)) (+ (size!39084 (left!42822 (left!42822 err!4601))) (size!39084 (right!43152 (left!42822 err!4601))))))))

(assert (=> d!1635831 (= (inv!77580 (left!42822 err!4601)) e!3163637)))

(declare-fun b!5070043 () Bool)

(declare-fun res!2158678 () Bool)

(assert (=> b!5070043 (=> (not res!2158678) (not e!3163637))))

(assert (=> b!5070043 (= res!2158678 (and (not (= (left!42822 (left!42822 err!4601)) Empty!15568)) (not (= (right!43152 (left!42822 err!4601)) Empty!15568))))))

(declare-fun b!5070044 () Bool)

(declare-fun res!2158679 () Bool)

(assert (=> b!5070044 (=> (not res!2158679) (not e!3163637))))

(assert (=> b!5070044 (= res!2158679 (= (cheight!15779 (left!42822 err!4601)) (+ (max!0 (height!2145 (left!42822 (left!42822 err!4601))) (height!2145 (right!43152 (left!42822 err!4601)))) 1)))))

(declare-fun b!5070045 () Bool)

(assert (=> b!5070045 (= e!3163637 (<= 0 (cheight!15779 (left!42822 err!4601))))))

(assert (= (and d!1635831 res!2158677) b!5070043))

(assert (= (and b!5070043 res!2158678) b!5070044))

(assert (= (and b!5070044 res!2158679) b!5070045))

(declare-fun m!6115046 () Bool)

(assert (=> d!1635831 m!6115046))

(declare-fun m!6115048 () Bool)

(assert (=> d!1635831 m!6115048))

(declare-fun m!6115050 () Bool)

(assert (=> b!5070044 m!6115050))

(declare-fun m!6115052 () Bool)

(assert (=> b!5070044 m!6115052))

(assert (=> b!5070044 m!6115050))

(assert (=> b!5070044 m!6115052))

(declare-fun m!6115054 () Bool)

(assert (=> b!5070044 m!6115054))

(assert (=> b!5069632 d!1635831))

(declare-fun d!1635833 () Bool)

(declare-fun res!2158680 () Bool)

(declare-fun e!3163639 () Bool)

(assert (=> d!1635833 (=> res!2158680 e!3163639)))

(assert (=> d!1635833 (= res!2158680 (not ((_ is Node!15568) (left!42822 xs!286))))))

(assert (=> d!1635833 (= (isBalanced!4430 (left!42822 xs!286)) e!3163639)))

(declare-fun b!5070046 () Bool)

(declare-fun res!2158683 () Bool)

(declare-fun e!3163638 () Bool)

(assert (=> b!5070046 (=> (not res!2158683) (not e!3163638))))

(assert (=> b!5070046 (= res!2158683 (not (isEmpty!31638 (left!42822 (left!42822 xs!286)))))))

(declare-fun b!5070047 () Bool)

(declare-fun res!2158684 () Bool)

(assert (=> b!5070047 (=> (not res!2158684) (not e!3163638))))

(assert (=> b!5070047 (= res!2158684 (isBalanced!4430 (right!43152 (left!42822 xs!286))))))

(declare-fun b!5070048 () Bool)

(assert (=> b!5070048 (= e!3163639 e!3163638)))

(declare-fun res!2158685 () Bool)

(assert (=> b!5070048 (=> (not res!2158685) (not e!3163638))))

(assert (=> b!5070048 (= res!2158685 (<= (- 1) (- (height!2145 (left!42822 (left!42822 xs!286))) (height!2145 (right!43152 (left!42822 xs!286))))))))

(declare-fun b!5070049 () Bool)

(declare-fun res!2158682 () Bool)

(assert (=> b!5070049 (=> (not res!2158682) (not e!3163638))))

(assert (=> b!5070049 (= res!2158682 (isBalanced!4430 (left!42822 (left!42822 xs!286))))))

(declare-fun b!5070050 () Bool)

(declare-fun res!2158681 () Bool)

(assert (=> b!5070050 (=> (not res!2158681) (not e!3163638))))

(assert (=> b!5070050 (= res!2158681 (<= (- (height!2145 (left!42822 (left!42822 xs!286))) (height!2145 (right!43152 (left!42822 xs!286)))) 1))))

(declare-fun b!5070051 () Bool)

(assert (=> b!5070051 (= e!3163638 (not (isEmpty!31638 (right!43152 (left!42822 xs!286)))))))

(assert (= (and d!1635833 (not res!2158680)) b!5070048))

(assert (= (and b!5070048 res!2158685) b!5070050))

(assert (= (and b!5070050 res!2158681) b!5070049))

(assert (= (and b!5070049 res!2158682) b!5070047))

(assert (= (and b!5070047 res!2158684) b!5070046))

(assert (= (and b!5070046 res!2158683) b!5070051))

(declare-fun m!6115056 () Bool)

(assert (=> b!5070047 m!6115056))

(declare-fun m!6115058 () Bool)

(assert (=> b!5070051 m!6115058))

(declare-fun m!6115060 () Bool)

(assert (=> b!5070049 m!6115060))

(assert (=> b!5070048 m!6114820))

(assert (=> b!5070048 m!6114822))

(declare-fun m!6115062 () Bool)

(assert (=> b!5070046 m!6115062))

(assert (=> b!5070050 m!6114820))

(assert (=> b!5070050 m!6114822))

(assert (=> b!5069611 d!1635833))

(declare-fun d!1635835 () Bool)

(declare-fun lt!2089407 () Int)

(assert (=> d!1635835 (>= lt!2089407 0)))

(declare-fun e!3163640 () Int)

(assert (=> d!1635835 (= lt!2089407 e!3163640)))

(declare-fun c!870479 () Bool)

(assert (=> d!1635835 (= c!870479 ((_ is Nil!58438) (innerList!15656 (xs!18924 ys!41))))))

(assert (=> d!1635835 (= (size!39082 (innerList!15656 (xs!18924 ys!41))) lt!2089407)))

(declare-fun b!5070052 () Bool)

(assert (=> b!5070052 (= e!3163640 0)))

(declare-fun b!5070053 () Bool)

(assert (=> b!5070053 (= e!3163640 (+ 1 (size!39082 (t!371315 (innerList!15656 (xs!18924 ys!41))))))))

(assert (= (and d!1635835 c!870479) b!5070052))

(assert (= (and d!1635835 (not c!870479)) b!5070053))

(declare-fun m!6115064 () Bool)

(assert (=> b!5070053 m!6115064))

(assert (=> d!1635725 d!1635835))

(declare-fun d!1635837 () Bool)

(declare-fun lt!2089408 () Int)

(assert (=> d!1635837 (>= lt!2089408 0)))

(declare-fun e!3163641 () Int)

(assert (=> d!1635837 (= lt!2089408 e!3163641)))

(declare-fun c!870480 () Bool)

(assert (=> d!1635837 (= c!870480 ((_ is Nil!58438) lt!2089389))))

(assert (=> d!1635837 (= (size!39082 lt!2089389) lt!2089408)))

(declare-fun b!5070054 () Bool)

(assert (=> b!5070054 (= e!3163641 0)))

(declare-fun b!5070055 () Bool)

(assert (=> b!5070055 (= e!3163641 (+ 1 (size!39082 (t!371315 lt!2089389))))))

(assert (= (and d!1635837 c!870480) b!5070054))

(assert (= (and d!1635837 (not c!870480)) b!5070055))

(declare-fun m!6115066 () Bool)

(assert (=> b!5070055 m!6115066))

(assert (=> b!5069776 d!1635837))

(declare-fun d!1635839 () Bool)

(declare-fun lt!2089409 () Int)

(assert (=> d!1635839 (>= lt!2089409 0)))

(declare-fun e!3163642 () Int)

(assert (=> d!1635839 (= lt!2089409 e!3163642)))

(declare-fun c!870481 () Bool)

(assert (=> d!1635839 (= c!870481 ((_ is Nil!58438) (list!18997 xs!286)))))

(assert (=> d!1635839 (= (size!39082 (list!18997 xs!286)) lt!2089409)))

(declare-fun b!5070056 () Bool)

(assert (=> b!5070056 (= e!3163642 0)))

(declare-fun b!5070057 () Bool)

(assert (=> b!5070057 (= e!3163642 (+ 1 (size!39082 (t!371315 (list!18997 xs!286)))))))

(assert (= (and d!1635839 c!870481) b!5070056))

(assert (= (and d!1635839 (not c!870481)) b!5070057))

(declare-fun m!6115068 () Bool)

(assert (=> b!5070057 m!6115068))

(assert (=> b!5069776 d!1635839))

(declare-fun d!1635841 () Bool)

(declare-fun lt!2089410 () Int)

(assert (=> d!1635841 (>= lt!2089410 0)))

(declare-fun e!3163643 () Int)

(assert (=> d!1635841 (= lt!2089410 e!3163643)))

(declare-fun c!870482 () Bool)

(assert (=> d!1635841 (= c!870482 ((_ is Nil!58438) (list!18997 ys!41)))))

(assert (=> d!1635841 (= (size!39082 (list!18997 ys!41)) lt!2089410)))

(declare-fun b!5070058 () Bool)

(assert (=> b!5070058 (= e!3163643 0)))

(declare-fun b!5070059 () Bool)

(assert (=> b!5070059 (= e!3163643 (+ 1 (size!39082 (t!371315 (list!18997 ys!41)))))))

(assert (= (and d!1635841 c!870482) b!5070058))

(assert (= (and d!1635841 (not c!870482)) b!5070059))

(declare-fun m!6115070 () Bool)

(assert (=> b!5070059 m!6115070))

(assert (=> b!5069776 d!1635841))

(declare-fun d!1635843 () Bool)

(declare-fun res!2158686 () Bool)

(declare-fun e!3163644 () Bool)

(assert (=> d!1635843 (=> (not res!2158686) (not e!3163644))))

(assert (=> d!1635843 (= res!2158686 (= (csize!31366 (right!43152 xs!286)) (+ (size!39084 (left!42822 (right!43152 xs!286))) (size!39084 (right!43152 (right!43152 xs!286))))))))

(assert (=> d!1635843 (= (inv!77580 (right!43152 xs!286)) e!3163644)))

(declare-fun b!5070060 () Bool)

(declare-fun res!2158687 () Bool)

(assert (=> b!5070060 (=> (not res!2158687) (not e!3163644))))

(assert (=> b!5070060 (= res!2158687 (and (not (= (left!42822 (right!43152 xs!286)) Empty!15568)) (not (= (right!43152 (right!43152 xs!286)) Empty!15568))))))

(declare-fun b!5070061 () Bool)

(declare-fun res!2158688 () Bool)

(assert (=> b!5070061 (=> (not res!2158688) (not e!3163644))))

(assert (=> b!5070061 (= res!2158688 (= (cheight!15779 (right!43152 xs!286)) (+ (max!0 (height!2145 (left!42822 (right!43152 xs!286))) (height!2145 (right!43152 (right!43152 xs!286)))) 1)))))

(declare-fun b!5070062 () Bool)

(assert (=> b!5070062 (= e!3163644 (<= 0 (cheight!15779 (right!43152 xs!286))))))

(assert (= (and d!1635843 res!2158686) b!5070060))

(assert (= (and b!5070060 res!2158687) b!5070061))

(assert (= (and b!5070061 res!2158688) b!5070062))

(declare-fun m!6115072 () Bool)

(assert (=> d!1635843 m!6115072))

(declare-fun m!6115074 () Bool)

(assert (=> d!1635843 m!6115074))

(declare-fun m!6115076 () Bool)

(assert (=> b!5070061 m!6115076))

(declare-fun m!6115078 () Bool)

(assert (=> b!5070061 m!6115078))

(assert (=> b!5070061 m!6115076))

(assert (=> b!5070061 m!6115078))

(declare-fun m!6115080 () Bool)

(assert (=> b!5070061 m!6115080))

(assert (=> b!5069819 d!1635843))

(declare-fun d!1635845 () Bool)

(assert (=> d!1635845 (= (inv!77578 (xs!18924 (left!42822 err!4601))) (<= (size!39082 (innerList!15656 (xs!18924 (left!42822 err!4601)))) 2147483647))))

(declare-fun bs!1190089 () Bool)

(assert (= bs!1190089 d!1635845))

(declare-fun m!6115082 () Bool)

(assert (=> bs!1190089 m!6115082))

(assert (=> b!5069851 d!1635845))

(declare-fun d!1635847 () Bool)

(declare-fun res!2158689 () Bool)

(declare-fun e!3163646 () Bool)

(assert (=> d!1635847 (=> res!2158689 e!3163646)))

(assert (=> d!1635847 (= res!2158689 (not ((_ is Node!15568) (right!43152 xs!286))))))

(assert (=> d!1635847 (= (isBalanced!4430 (right!43152 xs!286)) e!3163646)))

(declare-fun b!5070063 () Bool)

(declare-fun res!2158692 () Bool)

(declare-fun e!3163645 () Bool)

(assert (=> b!5070063 (=> (not res!2158692) (not e!3163645))))

(assert (=> b!5070063 (= res!2158692 (not (isEmpty!31638 (left!42822 (right!43152 xs!286)))))))

(declare-fun b!5070064 () Bool)

(declare-fun res!2158693 () Bool)

(assert (=> b!5070064 (=> (not res!2158693) (not e!3163645))))

(assert (=> b!5070064 (= res!2158693 (isBalanced!4430 (right!43152 (right!43152 xs!286))))))

(declare-fun b!5070065 () Bool)

(assert (=> b!5070065 (= e!3163646 e!3163645)))

(declare-fun res!2158694 () Bool)

(assert (=> b!5070065 (=> (not res!2158694) (not e!3163645))))

(assert (=> b!5070065 (= res!2158694 (<= (- 1) (- (height!2145 (left!42822 (right!43152 xs!286))) (height!2145 (right!43152 (right!43152 xs!286))))))))

(declare-fun b!5070066 () Bool)

(declare-fun res!2158691 () Bool)

(assert (=> b!5070066 (=> (not res!2158691) (not e!3163645))))

(assert (=> b!5070066 (= res!2158691 (isBalanced!4430 (left!42822 (right!43152 xs!286))))))

(declare-fun b!5070067 () Bool)

(declare-fun res!2158690 () Bool)

(assert (=> b!5070067 (=> (not res!2158690) (not e!3163645))))

(assert (=> b!5070067 (= res!2158690 (<= (- (height!2145 (left!42822 (right!43152 xs!286))) (height!2145 (right!43152 (right!43152 xs!286)))) 1))))

(declare-fun b!5070068 () Bool)

(assert (=> b!5070068 (= e!3163645 (not (isEmpty!31638 (right!43152 (right!43152 xs!286)))))))

(assert (= (and d!1635847 (not res!2158689)) b!5070065))

(assert (= (and b!5070065 res!2158694) b!5070067))

(assert (= (and b!5070067 res!2158690) b!5070066))

(assert (= (and b!5070066 res!2158691) b!5070064))

(assert (= (and b!5070064 res!2158693) b!5070063))

(assert (= (and b!5070063 res!2158692) b!5070068))

(declare-fun m!6115084 () Bool)

(assert (=> b!5070064 m!6115084))

(declare-fun m!6115086 () Bool)

(assert (=> b!5070068 m!6115086))

(declare-fun m!6115088 () Bool)

(assert (=> b!5070066 m!6115088))

(assert (=> b!5070065 m!6115076))

(assert (=> b!5070065 m!6115078))

(declare-fun m!6115090 () Bool)

(assert (=> b!5070063 m!6115090))

(assert (=> b!5070067 m!6115076))

(assert (=> b!5070067 m!6115078))

(assert (=> b!5069609 d!1635847))

(declare-fun d!1635849 () Bool)

(declare-fun lt!2089411 () Bool)

(assert (=> d!1635849 (= lt!2089411 (isEmpty!31640 (list!18997 (right!43152 ys!41))))))

(assert (=> d!1635849 (= lt!2089411 (= (size!39084 (right!43152 ys!41)) 0))))

(assert (=> d!1635849 (= (isEmpty!31638 (right!43152 ys!41)) lt!2089411)))

(declare-fun bs!1190090 () Bool)

(assert (= bs!1190090 d!1635849))

(assert (=> bs!1190090 m!6114518))

(assert (=> bs!1190090 m!6114518))

(declare-fun m!6115092 () Bool)

(assert (=> bs!1190090 m!6115092))

(declare-fun m!6115094 () Bool)

(assert (=> bs!1190090 m!6115094))

(assert (=> b!5069809 d!1635849))

(declare-fun d!1635851 () Bool)

(declare-fun res!2158695 () Bool)

(declare-fun e!3163647 () Bool)

(assert (=> d!1635851 (=> (not res!2158695) (not e!3163647))))

(assert (=> d!1635851 (= res!2158695 (<= (size!39082 (list!18999 (xs!18924 ys!41))) 512))))

(assert (=> d!1635851 (= (inv!77582 ys!41) e!3163647)))

(declare-fun b!5070069 () Bool)

(declare-fun res!2158696 () Bool)

(assert (=> b!5070069 (=> (not res!2158696) (not e!3163647))))

(assert (=> b!5070069 (= res!2158696 (= (csize!31367 ys!41) (size!39082 (list!18999 (xs!18924 ys!41)))))))

(declare-fun b!5070070 () Bool)

(assert (=> b!5070070 (= e!3163647 (and (> (csize!31367 ys!41) 0) (<= (csize!31367 ys!41) 512)))))

(assert (= (and d!1635851 res!2158695) b!5070069))

(assert (= (and b!5070069 res!2158696) b!5070070))

(assert (=> d!1635851 m!6114622))

(assert (=> d!1635851 m!6114622))

(declare-fun m!6115096 () Bool)

(assert (=> d!1635851 m!6115096))

(assert (=> b!5070069 m!6114622))

(assert (=> b!5070069 m!6114622))

(assert (=> b!5070069 m!6115096))

(assert (=> b!5069625 d!1635851))

(declare-fun d!1635853 () Bool)

(assert (=> d!1635853 (= (height!2145 (left!42822 lt!2089379)) (ite ((_ is Empty!15568) (left!42822 lt!2089379)) 0 (ite ((_ is Leaf!25857) (left!42822 lt!2089379)) 1 (cheight!15779 (left!42822 lt!2089379)))))))

(assert (=> b!5069812 d!1635853))

(declare-fun d!1635855 () Bool)

(assert (=> d!1635855 (= (height!2145 (right!43152 lt!2089379)) (ite ((_ is Empty!15568) (right!43152 lt!2089379)) 0 (ite ((_ is Leaf!25857) (right!43152 lt!2089379)) 1 (cheight!15779 (right!43152 lt!2089379)))))))

(assert (=> b!5069812 d!1635855))

(declare-fun d!1635857 () Bool)

(assert (=> d!1635857 (= (list!18999 (xs!18924 lt!2089379)) (innerList!15656 (xs!18924 lt!2089379)))))

(assert (=> b!5069764 d!1635857))

(declare-fun d!1635859 () Bool)

(assert (=> d!1635859 (= (inv!77578 (xs!18924 (right!43152 xs!286))) (<= (size!39082 (innerList!15656 (xs!18924 (right!43152 xs!286)))) 2147483647))))

(declare-fun bs!1190091 () Bool)

(assert (= bs!1190091 d!1635859))

(declare-fun m!6115098 () Bool)

(assert (=> bs!1190091 m!6115098))

(assert (=> b!5069862 d!1635859))

(declare-fun d!1635861 () Bool)

(assert (=> d!1635861 (= (inv!77578 (xs!18924 (right!43152 ys!41))) (<= (size!39082 (innerList!15656 (xs!18924 (right!43152 ys!41)))) 2147483647))))

(declare-fun bs!1190092 () Bool)

(assert (= bs!1190092 d!1635861))

(declare-fun m!6115100 () Bool)

(assert (=> bs!1190092 m!6115100))

(assert (=> b!5069834 d!1635861))

(declare-fun d!1635863 () Bool)

(declare-fun res!2158697 () Bool)

(declare-fun e!3163648 () Bool)

(assert (=> d!1635863 (=> (not res!2158697) (not e!3163648))))

(assert (=> d!1635863 (= res!2158697 (= (csize!31366 ys!41) (+ (size!39084 (left!42822 ys!41)) (size!39084 (right!43152 ys!41)))))))

(assert (=> d!1635863 (= (inv!77580 ys!41) e!3163648)))

(declare-fun b!5070071 () Bool)

(declare-fun res!2158698 () Bool)

(assert (=> b!5070071 (=> (not res!2158698) (not e!3163648))))

(assert (=> b!5070071 (= res!2158698 (and (not (= (left!42822 ys!41) Empty!15568)) (not (= (right!43152 ys!41) Empty!15568))))))

(declare-fun b!5070072 () Bool)

(declare-fun res!2158699 () Bool)

(assert (=> b!5070072 (=> (not res!2158699) (not e!3163648))))

(assert (=> b!5070072 (= res!2158699 (= (cheight!15779 ys!41) (+ (max!0 (height!2145 (left!42822 ys!41)) (height!2145 (right!43152 ys!41))) 1)))))

(declare-fun b!5070073 () Bool)

(assert (=> b!5070073 (= e!3163648 (<= 0 (cheight!15779 ys!41)))))

(assert (= (and d!1635863 res!2158697) b!5070071))

(assert (= (and b!5070071 res!2158698) b!5070072))

(assert (= (and b!5070072 res!2158699) b!5070073))

(declare-fun m!6115102 () Bool)

(assert (=> d!1635863 m!6115102))

(assert (=> d!1635863 m!6115094))

(assert (=> b!5070072 m!6114634))

(assert (=> b!5070072 m!6114636))

(assert (=> b!5070072 m!6114634))

(assert (=> b!5070072 m!6114636))

(declare-fun m!6115104 () Bool)

(assert (=> b!5070072 m!6115104))

(assert (=> b!5069623 d!1635863))

(declare-fun d!1635865 () Bool)

(declare-fun lt!2089412 () Bool)

(assert (=> d!1635865 (= lt!2089412 (isEmpty!31640 (list!18997 (left!42822 lt!2089379))))))

(assert (=> d!1635865 (= lt!2089412 (= (size!39084 (left!42822 lt!2089379)) 0))))

(assert (=> d!1635865 (= (isEmpty!31638 (left!42822 lt!2089379)) lt!2089412)))

(declare-fun bs!1190093 () Bool)

(assert (= bs!1190093 d!1635865))

(assert (=> bs!1190093 m!6114598))

(assert (=> bs!1190093 m!6114598))

(declare-fun m!6115106 () Bool)

(assert (=> bs!1190093 m!6115106))

(declare-fun m!6115108 () Bool)

(assert (=> bs!1190093 m!6115108))

(assert (=> b!5069810 d!1635865))

(declare-fun d!1635867 () Bool)

(declare-fun c!870483 () Bool)

(assert (=> d!1635867 (= c!870483 ((_ is Node!15568) (left!42822 (left!42822 xs!286))))))

(declare-fun e!3163649 () Bool)

(assert (=> d!1635867 (= (inv!77577 (left!42822 (left!42822 xs!286))) e!3163649)))

(declare-fun b!5070074 () Bool)

(assert (=> b!5070074 (= e!3163649 (inv!77580 (left!42822 (left!42822 xs!286))))))

(declare-fun b!5070075 () Bool)

(declare-fun e!3163650 () Bool)

(assert (=> b!5070075 (= e!3163649 e!3163650)))

(declare-fun res!2158700 () Bool)

(assert (=> b!5070075 (= res!2158700 (not ((_ is Leaf!25857) (left!42822 (left!42822 xs!286)))))))

(assert (=> b!5070075 (=> res!2158700 e!3163650)))

(declare-fun b!5070076 () Bool)

(assert (=> b!5070076 (= e!3163650 (inv!77582 (left!42822 (left!42822 xs!286))))))

(assert (= (and d!1635867 c!870483) b!5070074))

(assert (= (and d!1635867 (not c!870483)) b!5070075))

(assert (= (and b!5070075 (not res!2158700)) b!5070076))

(declare-fun m!6115110 () Bool)

(assert (=> b!5070074 m!6115110))

(declare-fun m!6115112 () Bool)

(assert (=> b!5070076 m!6115112))

(assert (=> b!5069858 d!1635867))

(declare-fun d!1635869 () Bool)

(declare-fun c!870484 () Bool)

(assert (=> d!1635869 (= c!870484 ((_ is Node!15568) (right!43152 (left!42822 xs!286))))))

(declare-fun e!3163651 () Bool)

(assert (=> d!1635869 (= (inv!77577 (right!43152 (left!42822 xs!286))) e!3163651)))

(declare-fun b!5070077 () Bool)

(assert (=> b!5070077 (= e!3163651 (inv!77580 (right!43152 (left!42822 xs!286))))))

(declare-fun b!5070078 () Bool)

(declare-fun e!3163652 () Bool)

(assert (=> b!5070078 (= e!3163651 e!3163652)))

(declare-fun res!2158701 () Bool)

(assert (=> b!5070078 (= res!2158701 (not ((_ is Leaf!25857) (right!43152 (left!42822 xs!286)))))))

(assert (=> b!5070078 (=> res!2158701 e!3163652)))

(declare-fun b!5070079 () Bool)

(assert (=> b!5070079 (= e!3163652 (inv!77582 (right!43152 (left!42822 xs!286))))))

(assert (= (and d!1635869 c!870484) b!5070077))

(assert (= (and d!1635869 (not c!870484)) b!5070078))

(assert (= (and b!5070078 (not res!2158701)) b!5070079))

(declare-fun m!6115114 () Bool)

(assert (=> b!5070077 m!6115114))

(declare-fun m!6115116 () Bool)

(assert (=> b!5070079 m!6115116))

(assert (=> b!5069858 d!1635869))

(declare-fun d!1635871 () Bool)

(declare-fun res!2158702 () Bool)

(declare-fun e!3163653 () Bool)

(assert (=> d!1635871 (=> (not res!2158702) (not e!3163653))))

(assert (=> d!1635871 (= res!2158702 (= (csize!31366 xs!286) (+ (size!39084 (left!42822 xs!286)) (size!39084 (right!43152 xs!286)))))))

(assert (=> d!1635871 (= (inv!77580 xs!286) e!3163653)))

(declare-fun b!5070080 () Bool)

(declare-fun res!2158703 () Bool)

(assert (=> b!5070080 (=> (not res!2158703) (not e!3163653))))

(assert (=> b!5070080 (= res!2158703 (and (not (= (left!42822 xs!286) Empty!15568)) (not (= (right!43152 xs!286) Empty!15568))))))

(declare-fun b!5070081 () Bool)

(declare-fun res!2158704 () Bool)

(assert (=> b!5070081 (=> (not res!2158704) (not e!3163653))))

(assert (=> b!5070081 (= res!2158704 (= (cheight!15779 xs!286) (+ (max!0 (height!2145 (left!42822 xs!286)) (height!2145 (right!43152 xs!286))) 1)))))

(declare-fun b!5070082 () Bool)

(assert (=> b!5070082 (= e!3163653 (<= 0 (cheight!15779 xs!286)))))

(assert (= (and d!1635871 res!2158702) b!5070080))

(assert (= (and b!5070080 res!2158703) b!5070081))

(assert (= (and b!5070081 res!2158704) b!5070082))

(declare-fun m!6115118 () Bool)

(assert (=> d!1635871 m!6115118))

(assert (=> d!1635871 m!6115032))

(assert (=> b!5070081 m!6114382))

(assert (=> b!5070081 m!6114384))

(assert (=> b!5070081 m!6114382))

(assert (=> b!5070081 m!6114384))

(declare-fun m!6115120 () Bool)

(assert (=> b!5070081 m!6115120))

(assert (=> b!5069620 d!1635871))

(declare-fun d!1635873 () Bool)

(declare-fun c!870485 () Bool)

(assert (=> d!1635873 (= c!870485 ((_ is Node!15568) (left!42822 (right!43152 err!4601))))))

(declare-fun e!3163654 () Bool)

(assert (=> d!1635873 (= (inv!77577 (left!42822 (right!43152 err!4601))) e!3163654)))

(declare-fun b!5070083 () Bool)

(assert (=> b!5070083 (= e!3163654 (inv!77580 (left!42822 (right!43152 err!4601))))))

(declare-fun b!5070084 () Bool)

(declare-fun e!3163655 () Bool)

(assert (=> b!5070084 (= e!3163654 e!3163655)))

(declare-fun res!2158705 () Bool)

(assert (=> b!5070084 (= res!2158705 (not ((_ is Leaf!25857) (left!42822 (right!43152 err!4601)))))))

(assert (=> b!5070084 (=> res!2158705 e!3163655)))

(declare-fun b!5070085 () Bool)

(assert (=> b!5070085 (= e!3163655 (inv!77582 (left!42822 (right!43152 err!4601))))))

(assert (= (and d!1635873 c!870485) b!5070083))

(assert (= (and d!1635873 (not c!870485)) b!5070084))

(assert (= (and b!5070084 (not res!2158705)) b!5070085))

(declare-fun m!6115122 () Bool)

(assert (=> b!5070083 m!6115122))

(declare-fun m!6115124 () Bool)

(assert (=> b!5070085 m!6115124))

(assert (=> b!5069853 d!1635873))

(declare-fun d!1635875 () Bool)

(declare-fun c!870486 () Bool)

(assert (=> d!1635875 (= c!870486 ((_ is Node!15568) (right!43152 (right!43152 err!4601))))))

(declare-fun e!3163656 () Bool)

(assert (=> d!1635875 (= (inv!77577 (right!43152 (right!43152 err!4601))) e!3163656)))

(declare-fun b!5070086 () Bool)

(assert (=> b!5070086 (= e!3163656 (inv!77580 (right!43152 (right!43152 err!4601))))))

(declare-fun b!5070087 () Bool)

(declare-fun e!3163657 () Bool)

(assert (=> b!5070087 (= e!3163656 e!3163657)))

(declare-fun res!2158706 () Bool)

(assert (=> b!5070087 (= res!2158706 (not ((_ is Leaf!25857) (right!43152 (right!43152 err!4601)))))))

(assert (=> b!5070087 (=> res!2158706 e!3163657)))

(declare-fun b!5070088 () Bool)

(assert (=> b!5070088 (= e!3163657 (inv!77582 (right!43152 (right!43152 err!4601))))))

(assert (= (and d!1635875 c!870486) b!5070086))

(assert (= (and d!1635875 (not c!870486)) b!5070087))

(assert (= (and b!5070087 (not res!2158706)) b!5070088))

(declare-fun m!6115126 () Bool)

(assert (=> b!5070086 m!6115126))

(declare-fun m!6115128 () Bool)

(assert (=> b!5070088 m!6115128))

(assert (=> b!5069853 d!1635875))

(declare-fun d!1635877 () Bool)

(declare-fun e!3163658 () Bool)

(assert (=> d!1635877 e!3163658))

(declare-fun c!870487 () Bool)

(assert (=> d!1635877 (= c!870487 ((_ is Nil!58438) (list!18997 (left!42822 xs!286))))))

(assert (=> d!1635877 (= (appendAssoc!303 (list!18997 (left!42822 xs!286)) (list!18997 (right!43152 xs!286)) (list!18997 ys!41)) true)))

(declare-fun bm!353249 () Bool)

(declare-fun call!353254 () List!58562)

(assert (=> bm!353249 (= call!353254 (++!12793 (list!18997 (left!42822 xs!286)) (list!18997 (right!43152 xs!286))))))

(declare-fun bm!353250 () Bool)

(declare-fun call!353255 () List!58562)

(declare-fun call!353256 () List!58562)

(assert (=> bm!353250 (= call!353255 (++!12793 (list!18997 (left!42822 xs!286)) call!353256))))

(declare-fun b!5070089 () Bool)

(declare-fun call!353257 () List!58562)

(assert (=> b!5070089 (= e!3163658 (= call!353257 call!353255))))

(declare-fun lt!2089413 () Bool)

(assert (=> b!5070089 (= lt!2089413 (appendAssoc!303 (t!371315 (list!18997 (left!42822 xs!286))) (list!18997 (right!43152 xs!286)) (list!18997 ys!41)))))

(declare-fun b!5070090 () Bool)

(assert (=> b!5070090 (= e!3163658 (= call!353257 call!353255))))

(declare-fun bm!353251 () Bool)

(assert (=> bm!353251 (= call!353256 (++!12793 (list!18997 (right!43152 xs!286)) (list!18997 ys!41)))))

(declare-fun bm!353252 () Bool)

(assert (=> bm!353252 (= call!353257 (++!12793 call!353254 (list!18997 ys!41)))))

(assert (= (and d!1635877 c!870487) b!5070090))

(assert (= (and d!1635877 (not c!870487)) b!5070089))

(assert (= (or b!5070090 b!5070089) bm!353249))

(assert (= (or b!5070090 b!5070089) bm!353251))

(assert (= (or b!5070090 b!5070089) bm!353250))

(assert (= (or b!5070090 b!5070089) bm!353252))

(assert (=> bm!353251 m!6114536))

(assert (=> bm!353251 m!6114412))

(declare-fun m!6115130 () Bool)

(assert (=> bm!353251 m!6115130))

(assert (=> bm!353249 m!6114534))

(assert (=> bm!353249 m!6114536))

(assert (=> bm!353249 m!6114620))

(assert (=> b!5070089 m!6114536))

(assert (=> b!5070089 m!6114412))

(declare-fun m!6115132 () Bool)

(assert (=> b!5070089 m!6115132))

(assert (=> bm!353250 m!6114534))

(declare-fun m!6115134 () Bool)

(assert (=> bm!353250 m!6115134))

(assert (=> bm!353252 m!6114412))

(declare-fun m!6115136 () Bool)

(assert (=> bm!353252 m!6115136))

(assert (=> b!5069703 d!1635877))

(assert (=> b!5069703 d!1635793))

(assert (=> b!5069703 d!1635795))

(assert (=> b!5069703 d!1635719))

(declare-fun d!1635879 () Bool)

(declare-fun c!870488 () Bool)

(assert (=> d!1635879 (= c!870488 ((_ is Node!15568) (left!42822 (left!42822 ys!41))))))

(declare-fun e!3163659 () Bool)

(assert (=> d!1635879 (= (inv!77577 (left!42822 (left!42822 ys!41))) e!3163659)))

(declare-fun b!5070091 () Bool)

(assert (=> b!5070091 (= e!3163659 (inv!77580 (left!42822 (left!42822 ys!41))))))

(declare-fun b!5070092 () Bool)

(declare-fun e!3163660 () Bool)

(assert (=> b!5070092 (= e!3163659 e!3163660)))

(declare-fun res!2158707 () Bool)

(assert (=> b!5070092 (= res!2158707 (not ((_ is Leaf!25857) (left!42822 (left!42822 ys!41)))))))

(assert (=> b!5070092 (=> res!2158707 e!3163660)))

(declare-fun b!5070093 () Bool)

(assert (=> b!5070093 (= e!3163660 (inv!77582 (left!42822 (left!42822 ys!41))))))

(assert (= (and d!1635879 c!870488) b!5070091))

(assert (= (and d!1635879 (not c!870488)) b!5070092))

(assert (= (and b!5070092 (not res!2158707)) b!5070093))

(declare-fun m!6115138 () Bool)

(assert (=> b!5070091 m!6115138))

(declare-fun m!6115140 () Bool)

(assert (=> b!5070093 m!6115140))

(assert (=> b!5069830 d!1635879))

(declare-fun d!1635881 () Bool)

(declare-fun c!870489 () Bool)

(assert (=> d!1635881 (= c!870489 ((_ is Node!15568) (right!43152 (left!42822 ys!41))))))

(declare-fun e!3163661 () Bool)

(assert (=> d!1635881 (= (inv!77577 (right!43152 (left!42822 ys!41))) e!3163661)))

(declare-fun b!5070094 () Bool)

(assert (=> b!5070094 (= e!3163661 (inv!77580 (right!43152 (left!42822 ys!41))))))

(declare-fun b!5070095 () Bool)

(declare-fun e!3163662 () Bool)

(assert (=> b!5070095 (= e!3163661 e!3163662)))

(declare-fun res!2158708 () Bool)

(assert (=> b!5070095 (= res!2158708 (not ((_ is Leaf!25857) (right!43152 (left!42822 ys!41)))))))

(assert (=> b!5070095 (=> res!2158708 e!3163662)))

(declare-fun b!5070096 () Bool)

(assert (=> b!5070096 (= e!3163662 (inv!77582 (right!43152 (left!42822 ys!41))))))

(assert (= (and d!1635881 c!870489) b!5070094))

(assert (= (and d!1635881 (not c!870489)) b!5070095))

(assert (= (and b!5070095 (not res!2158708)) b!5070096))

(declare-fun m!6115142 () Bool)

(assert (=> b!5070094 m!6115142))

(declare-fun m!6115144 () Bool)

(assert (=> b!5070096 m!6115144))

(assert (=> b!5069830 d!1635881))

(declare-fun d!1635883 () Bool)

(declare-fun res!2158709 () Bool)

(declare-fun e!3163663 () Bool)

(assert (=> d!1635883 (=> (not res!2158709) (not e!3163663))))

(assert (=> d!1635883 (= res!2158709 (<= (size!39082 (list!18999 (xs!18924 (right!43152 err!4601)))) 512))))

(assert (=> d!1635883 (= (inv!77582 (right!43152 err!4601)) e!3163663)))

(declare-fun b!5070097 () Bool)

(declare-fun res!2158710 () Bool)

(assert (=> b!5070097 (=> (not res!2158710) (not e!3163663))))

(assert (=> b!5070097 (= res!2158710 (= (csize!31367 (right!43152 err!4601)) (size!39082 (list!18999 (xs!18924 (right!43152 err!4601))))))))

(declare-fun b!5070098 () Bool)

(assert (=> b!5070098 (= e!3163663 (and (> (csize!31367 (right!43152 err!4601)) 0) (<= (csize!31367 (right!43152 err!4601)) 512)))))

(assert (= (and d!1635883 res!2158709) b!5070097))

(assert (= (and b!5070097 res!2158710) b!5070098))

(declare-fun m!6115146 () Bool)

(assert (=> d!1635883 m!6115146))

(assert (=> d!1635883 m!6115146))

(declare-fun m!6115148 () Bool)

(assert (=> d!1635883 m!6115148))

(assert (=> b!5070097 m!6115146))

(assert (=> b!5070097 m!6115146))

(assert (=> b!5070097 m!6115148))

(assert (=> b!5069643 d!1635883))

(declare-fun d!1635885 () Bool)

(assert (=> d!1635885 (= (list!18999 (xs!18924 xs!286)) (innerList!15656 (xs!18924 xs!286)))))

(assert (=> b!5069780 d!1635885))

(declare-fun d!1635887 () Bool)

(declare-fun res!2158711 () Bool)

(declare-fun e!3163664 () Bool)

(assert (=> d!1635887 (=> (not res!2158711) (not e!3163664))))

(assert (=> d!1635887 (= res!2158711 (= (csize!31366 (right!43152 err!4601)) (+ (size!39084 (left!42822 (right!43152 err!4601))) (size!39084 (right!43152 (right!43152 err!4601))))))))

(assert (=> d!1635887 (= (inv!77580 (right!43152 err!4601)) e!3163664)))

(declare-fun b!5070099 () Bool)

(declare-fun res!2158712 () Bool)

(assert (=> b!5070099 (=> (not res!2158712) (not e!3163664))))

(assert (=> b!5070099 (= res!2158712 (and (not (= (left!42822 (right!43152 err!4601)) Empty!15568)) (not (= (right!43152 (right!43152 err!4601)) Empty!15568))))))

(declare-fun b!5070100 () Bool)

(declare-fun res!2158713 () Bool)

(assert (=> b!5070100 (=> (not res!2158713) (not e!3163664))))

(assert (=> b!5070100 (= res!2158713 (= (cheight!15779 (right!43152 err!4601)) (+ (max!0 (height!2145 (left!42822 (right!43152 err!4601))) (height!2145 (right!43152 (right!43152 err!4601)))) 1)))))

(declare-fun b!5070101 () Bool)

(assert (=> b!5070101 (= e!3163664 (<= 0 (cheight!15779 (right!43152 err!4601))))))

(assert (= (and d!1635887 res!2158711) b!5070099))

(assert (= (and b!5070099 res!2158712) b!5070100))

(assert (= (and b!5070100 res!2158713) b!5070101))

(declare-fun m!6115150 () Bool)

(assert (=> d!1635887 m!6115150))

(declare-fun m!6115152 () Bool)

(assert (=> d!1635887 m!6115152))

(declare-fun m!6115154 () Bool)

(assert (=> b!5070100 m!6115154))

(declare-fun m!6115156 () Bool)

(assert (=> b!5070100 m!6115156))

(assert (=> b!5070100 m!6115154))

(assert (=> b!5070100 m!6115156))

(declare-fun m!6115158 () Bool)

(assert (=> b!5070100 m!6115158))

(assert (=> b!5069641 d!1635887))

(declare-fun d!1635889 () Bool)

(declare-fun c!870492 () Bool)

(assert (=> d!1635889 (= c!870492 ((_ is Nil!58438) lt!2089389))))

(declare-fun e!3163667 () (InoxSet T!105146))

(assert (=> d!1635889 (= (content!10420 lt!2089389) e!3163667)))

(declare-fun b!5070106 () Bool)

(assert (=> b!5070106 (= e!3163667 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070107 () Bool)

(assert (=> b!5070107 (= e!3163667 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 lt!2089389) true) (content!10420 (t!371315 lt!2089389))))))

(assert (= (and d!1635889 c!870492) b!5070106))

(assert (= (and d!1635889 (not c!870492)) b!5070107))

(declare-fun m!6115160 () Bool)

(assert (=> b!5070107 m!6115160))

(declare-fun m!6115162 () Bool)

(assert (=> b!5070107 m!6115162))

(assert (=> d!1635715 d!1635889))

(declare-fun d!1635891 () Bool)

(declare-fun c!870493 () Bool)

(assert (=> d!1635891 (= c!870493 ((_ is Nil!58438) (list!18997 xs!286)))))

(declare-fun e!3163668 () (InoxSet T!105146))

(assert (=> d!1635891 (= (content!10420 (list!18997 xs!286)) e!3163668)))

(declare-fun b!5070108 () Bool)

(assert (=> b!5070108 (= e!3163668 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070109 () Bool)

(assert (=> b!5070109 (= e!3163668 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 (list!18997 xs!286)) true) (content!10420 (t!371315 (list!18997 xs!286)))))))

(assert (= (and d!1635891 c!870493) b!5070108))

(assert (= (and d!1635891 (not c!870493)) b!5070109))

(declare-fun m!6115164 () Bool)

(assert (=> b!5070109 m!6115164))

(declare-fun m!6115166 () Bool)

(assert (=> b!5070109 m!6115166))

(assert (=> d!1635715 d!1635891))

(declare-fun d!1635893 () Bool)

(declare-fun c!870494 () Bool)

(assert (=> d!1635893 (= c!870494 ((_ is Nil!58438) (list!18997 ys!41)))))

(declare-fun e!3163669 () (InoxSet T!105146))

(assert (=> d!1635893 (= (content!10420 (list!18997 ys!41)) e!3163669)))

(declare-fun b!5070110 () Bool)

(assert (=> b!5070110 (= e!3163669 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070111 () Bool)

(assert (=> b!5070111 (= e!3163669 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 (list!18997 ys!41)) true) (content!10420 (t!371315 (list!18997 ys!41)))))))

(assert (= (and d!1635893 c!870494) b!5070110))

(assert (= (and d!1635893 (not c!870494)) b!5070111))

(declare-fun m!6115168 () Bool)

(assert (=> b!5070111 m!6115168))

(declare-fun m!6115170 () Bool)

(assert (=> b!5070111 m!6115170))

(assert (=> d!1635715 d!1635893))

(assert (=> b!5069814 d!1635853))

(assert (=> b!5069814 d!1635855))

(declare-fun d!1635895 () Bool)

(assert (=> d!1635895 (= (height!2145 (left!42822 ys!41)) (ite ((_ is Empty!15568) (left!42822 ys!41)) 0 (ite ((_ is Leaf!25857) (left!42822 ys!41)) 1 (cheight!15779 (left!42822 ys!41)))))))

(assert (=> b!5069808 d!1635895))

(declare-fun d!1635897 () Bool)

(assert (=> d!1635897 (= (height!2145 (right!43152 ys!41)) (ite ((_ is Empty!15568) (right!43152 ys!41)) 0 (ite ((_ is Leaf!25857) (right!43152 ys!41)) 1 (cheight!15779 (right!43152 ys!41)))))))

(assert (=> b!5069808 d!1635897))

(declare-fun d!1635899 () Bool)

(declare-fun res!2158714 () Bool)

(declare-fun e!3163670 () Bool)

(assert (=> d!1635899 (=> (not res!2158714) (not e!3163670))))

(assert (=> d!1635899 (= res!2158714 (= (csize!31366 (left!42822 ys!41)) (+ (size!39084 (left!42822 (left!42822 ys!41))) (size!39084 (right!43152 (left!42822 ys!41))))))))

(assert (=> d!1635899 (= (inv!77580 (left!42822 ys!41)) e!3163670)))

(declare-fun b!5070112 () Bool)

(declare-fun res!2158715 () Bool)

(assert (=> b!5070112 (=> (not res!2158715) (not e!3163670))))

(assert (=> b!5070112 (= res!2158715 (and (not (= (left!42822 (left!42822 ys!41)) Empty!15568)) (not (= (right!43152 (left!42822 ys!41)) Empty!15568))))))

(declare-fun b!5070113 () Bool)

(declare-fun res!2158716 () Bool)

(assert (=> b!5070113 (=> (not res!2158716) (not e!3163670))))

(assert (=> b!5070113 (= res!2158716 (= (cheight!15779 (left!42822 ys!41)) (+ (max!0 (height!2145 (left!42822 (left!42822 ys!41))) (height!2145 (right!43152 (left!42822 ys!41)))) 1)))))

(declare-fun b!5070114 () Bool)

(assert (=> b!5070114 (= e!3163670 (<= 0 (cheight!15779 (left!42822 ys!41))))))

(assert (= (and d!1635899 res!2158714) b!5070112))

(assert (= (and b!5070112 res!2158715) b!5070113))

(assert (= (and b!5070113 res!2158716) b!5070114))

(declare-fun m!6115172 () Bool)

(assert (=> d!1635899 m!6115172))

(declare-fun m!6115174 () Bool)

(assert (=> d!1635899 m!6115174))

(assert (=> b!5070113 m!6115006))

(assert (=> b!5070113 m!6115008))

(assert (=> b!5070113 m!6115006))

(assert (=> b!5070113 m!6115008))

(declare-fun m!6115176 () Bool)

(assert (=> b!5070113 m!6115176))

(assert (=> b!5069626 d!1635899))

(assert (=> b!5069595 d!1635665))

(assert (=> b!5069595 d!1635667))

(declare-fun d!1635901 () Bool)

(declare-fun e!3163671 () Bool)

(assert (=> d!1635901 e!3163671))

(declare-fun c!870495 () Bool)

(assert (=> d!1635901 (= c!870495 ((_ is Nil!58438) (list!18997 xs!286)))))

(assert (=> d!1635901 (= (appendAssoc!303 (list!18997 xs!286) (list!18997 (left!42822 ys!41)) (list!18997 (right!43152 ys!41))) true)))

(declare-fun bm!353253 () Bool)

(declare-fun call!353258 () List!58562)

(assert (=> bm!353253 (= call!353258 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 ys!41))))))

(declare-fun bm!353254 () Bool)

(declare-fun call!353259 () List!58562)

(declare-fun call!353260 () List!58562)

(assert (=> bm!353254 (= call!353259 (++!12793 (list!18997 xs!286) call!353260))))

(declare-fun b!5070115 () Bool)

(declare-fun call!353261 () List!58562)

(assert (=> b!5070115 (= e!3163671 (= call!353261 call!353259))))

(declare-fun lt!2089414 () Bool)

(assert (=> b!5070115 (= lt!2089414 (appendAssoc!303 (t!371315 (list!18997 xs!286)) (list!18997 (left!42822 ys!41)) (list!18997 (right!43152 ys!41))))))

(declare-fun b!5070116 () Bool)

(assert (=> b!5070116 (= e!3163671 (= call!353261 call!353259))))

(declare-fun bm!353255 () Bool)

(assert (=> bm!353255 (= call!353260 (++!12793 (list!18997 (left!42822 ys!41)) (list!18997 (right!43152 ys!41))))))

(declare-fun bm!353256 () Bool)

(assert (=> bm!353256 (= call!353261 (++!12793 call!353258 (list!18997 (right!43152 ys!41))))))

(assert (= (and d!1635901 c!870495) b!5070116))

(assert (= (and d!1635901 (not c!870495)) b!5070115))

(assert (= (or b!5070116 b!5070115) bm!353253))

(assert (= (or b!5070116 b!5070115) bm!353255))

(assert (= (or b!5070116 b!5070115) bm!353254))

(assert (= (or b!5070116 b!5070115) bm!353256))

(assert (=> bm!353255 m!6114530))

(assert (=> bm!353255 m!6114518))

(assert (=> bm!353255 m!6114624))

(assert (=> bm!353253 m!6114410))

(assert (=> bm!353253 m!6114530))

(declare-fun m!6115178 () Bool)

(assert (=> bm!353253 m!6115178))

(assert (=> b!5070115 m!6114530))

(assert (=> b!5070115 m!6114518))

(declare-fun m!6115180 () Bool)

(assert (=> b!5070115 m!6115180))

(assert (=> bm!353254 m!6114410))

(declare-fun m!6115182 () Bool)

(assert (=> bm!353254 m!6115182))

(assert (=> bm!353256 m!6114518))

(declare-fun m!6115184 () Bool)

(assert (=> bm!353256 m!6115184))

(assert (=> b!5069708 d!1635901))

(assert (=> b!5069708 d!1635717))

(declare-fun b!5070119 () Bool)

(declare-fun e!3163673 () List!58562)

(assert (=> b!5070119 (= e!3163673 (list!18999 (xs!18924 (left!42822 ys!41))))))

(declare-fun d!1635903 () Bool)

(declare-fun c!870496 () Bool)

(assert (=> d!1635903 (= c!870496 ((_ is Empty!15568) (left!42822 ys!41)))))

(declare-fun e!3163672 () List!58562)

(assert (=> d!1635903 (= (list!18997 (left!42822 ys!41)) e!3163672)))

(declare-fun b!5070118 () Bool)

(assert (=> b!5070118 (= e!3163672 e!3163673)))

(declare-fun c!870497 () Bool)

(assert (=> b!5070118 (= c!870497 ((_ is Leaf!25857) (left!42822 ys!41)))))

(declare-fun b!5070117 () Bool)

(assert (=> b!5070117 (= e!3163672 Nil!58438)))

(declare-fun b!5070120 () Bool)

(assert (=> b!5070120 (= e!3163673 (++!12793 (list!18997 (left!42822 (left!42822 ys!41))) (list!18997 (right!43152 (left!42822 ys!41)))))))

(assert (= (and d!1635903 c!870496) b!5070117))

(assert (= (and d!1635903 (not c!870496)) b!5070118))

(assert (= (and b!5070118 c!870497) b!5070119))

(assert (= (and b!5070118 (not c!870497)) b!5070120))

(declare-fun m!6115186 () Bool)

(assert (=> b!5070119 m!6115186))

(assert (=> b!5070120 m!6114512))

(assert (=> b!5070120 m!6114516))

(assert (=> b!5070120 m!6114512))

(assert (=> b!5070120 m!6114516))

(assert (=> b!5070120 m!6115012))

(assert (=> b!5069708 d!1635903))

(assert (=> b!5069708 d!1635777))

(assert (=> b!5069806 d!1635895))

(assert (=> b!5069806 d!1635897))

(declare-fun b!5070123 () Bool)

(declare-fun res!2158718 () Bool)

(declare-fun e!3163675 () Bool)

(assert (=> b!5070123 (=> (not res!2158718) (not e!3163675))))

(declare-fun lt!2089415 () List!58562)

(assert (=> b!5070123 (= res!2158718 (= (size!39082 lt!2089415) (+ (size!39082 (list!18997 (left!42822 ys!41))) (size!39082 (list!18997 (right!43152 ys!41))))))))

(declare-fun b!5070124 () Bool)

(assert (=> b!5070124 (= e!3163675 (or (not (= (list!18997 (right!43152 ys!41)) Nil!58438)) (= lt!2089415 (list!18997 (left!42822 ys!41)))))))

(declare-fun b!5070121 () Bool)

(declare-fun e!3163674 () List!58562)

(assert (=> b!5070121 (= e!3163674 (list!18997 (right!43152 ys!41)))))

(declare-fun d!1635905 () Bool)

(assert (=> d!1635905 e!3163675))

(declare-fun res!2158717 () Bool)

(assert (=> d!1635905 (=> (not res!2158717) (not e!3163675))))

(assert (=> d!1635905 (= res!2158717 (= (content!10420 lt!2089415) ((_ map or) (content!10420 (list!18997 (left!42822 ys!41))) (content!10420 (list!18997 (right!43152 ys!41))))))))

(assert (=> d!1635905 (= lt!2089415 e!3163674)))

(declare-fun c!870498 () Bool)

(assert (=> d!1635905 (= c!870498 ((_ is Nil!58438) (list!18997 (left!42822 ys!41))))))

(assert (=> d!1635905 (= (++!12793 (list!18997 (left!42822 ys!41)) (list!18997 (right!43152 ys!41))) lt!2089415)))

(declare-fun b!5070122 () Bool)

(assert (=> b!5070122 (= e!3163674 (Cons!58438 (h!64886 (list!18997 (left!42822 ys!41))) (++!12793 (t!371315 (list!18997 (left!42822 ys!41))) (list!18997 (right!43152 ys!41)))))))

(assert (= (and d!1635905 c!870498) b!5070121))

(assert (= (and d!1635905 (not c!870498)) b!5070122))

(assert (= (and d!1635905 res!2158717) b!5070123))

(assert (= (and b!5070123 res!2158718) b!5070124))

(declare-fun m!6115188 () Bool)

(assert (=> b!5070123 m!6115188))

(assert (=> b!5070123 m!6114530))

(declare-fun m!6115190 () Bool)

(assert (=> b!5070123 m!6115190))

(assert (=> b!5070123 m!6114518))

(declare-fun m!6115192 () Bool)

(assert (=> b!5070123 m!6115192))

(declare-fun m!6115194 () Bool)

(assert (=> d!1635905 m!6115194))

(assert (=> d!1635905 m!6114530))

(declare-fun m!6115196 () Bool)

(assert (=> d!1635905 m!6115196))

(assert (=> d!1635905 m!6114518))

(declare-fun m!6115198 () Bool)

(assert (=> d!1635905 m!6115198))

(assert (=> b!5070122 m!6114518))

(declare-fun m!6115200 () Bool)

(assert (=> b!5070122 m!6115200))

(assert (=> b!5069797 d!1635905))

(assert (=> b!5069797 d!1635903))

(assert (=> b!5069797 d!1635777))

(declare-fun d!1635907 () Bool)

(declare-fun lt!2089416 () Bool)

(assert (=> d!1635907 (= lt!2089416 (isEmpty!31640 (list!18997 (left!42822 ys!41))))))

(assert (=> d!1635907 (= lt!2089416 (= (size!39084 (left!42822 ys!41)) 0))))

(assert (=> d!1635907 (= (isEmpty!31638 (left!42822 ys!41)) lt!2089416)))

(declare-fun bs!1190094 () Bool)

(assert (= bs!1190094 d!1635907))

(assert (=> bs!1190094 m!6114530))

(assert (=> bs!1190094 m!6114530))

(declare-fun m!6115202 () Bool)

(assert (=> bs!1190094 m!6115202))

(assert (=> bs!1190094 m!6115102))

(assert (=> b!5069804 d!1635907))

(declare-fun d!1635909 () Bool)

(declare-fun lt!2089417 () Int)

(assert (=> d!1635909 (>= lt!2089417 0)))

(declare-fun e!3163676 () Int)

(assert (=> d!1635909 (= lt!2089417 e!3163676)))

(declare-fun c!870499 () Bool)

(assert (=> d!1635909 (= c!870499 ((_ is Nil!58438) (innerList!15656 (xs!18924 err!4601))))))

(assert (=> d!1635909 (= (size!39082 (innerList!15656 (xs!18924 err!4601))) lt!2089417)))

(declare-fun b!5070125 () Bool)

(assert (=> b!5070125 (= e!3163676 0)))

(declare-fun b!5070126 () Bool)

(assert (=> b!5070126 (= e!3163676 (+ 1 (size!39082 (t!371315 (innerList!15656 (xs!18924 err!4601))))))))

(assert (= (and d!1635909 c!870499) b!5070125))

(assert (= (and d!1635909 (not c!870499)) b!5070126))

(declare-fun m!6115204 () Bool)

(assert (=> b!5070126 m!6115204))

(assert (=> d!1635645 d!1635909))

(assert (=> b!5069612 d!1635689))

(assert (=> b!5069612 d!1635691))

(assert (=> b!5069610 d!1635689))

(assert (=> b!5069610 d!1635691))

(declare-fun b!5070129 () Bool)

(declare-fun res!2158720 () Bool)

(declare-fun e!3163678 () Bool)

(assert (=> b!5070129 (=> (not res!2158720) (not e!3163678))))

(declare-fun lt!2089418 () List!58562)

(assert (=> b!5070129 (= res!2158720 (= (size!39082 lt!2089418) (+ (size!39082 (t!371315 (list!18997 xs!286))) (size!39082 (list!18997 ys!41)))))))

(declare-fun b!5070130 () Bool)

(assert (=> b!5070130 (= e!3163678 (or (not (= (list!18997 ys!41) Nil!58438)) (= lt!2089418 (t!371315 (list!18997 xs!286)))))))

(declare-fun b!5070127 () Bool)

(declare-fun e!3163677 () List!58562)

(assert (=> b!5070127 (= e!3163677 (list!18997 ys!41))))

(declare-fun d!1635911 () Bool)

(assert (=> d!1635911 e!3163678))

(declare-fun res!2158719 () Bool)

(assert (=> d!1635911 (=> (not res!2158719) (not e!3163678))))

(assert (=> d!1635911 (= res!2158719 (= (content!10420 lt!2089418) ((_ map or) (content!10420 (t!371315 (list!18997 xs!286))) (content!10420 (list!18997 ys!41)))))))

(assert (=> d!1635911 (= lt!2089418 e!3163677)))

(declare-fun c!870500 () Bool)

(assert (=> d!1635911 (= c!870500 ((_ is Nil!58438) (t!371315 (list!18997 xs!286))))))

(assert (=> d!1635911 (= (++!12793 (t!371315 (list!18997 xs!286)) (list!18997 ys!41)) lt!2089418)))

(declare-fun b!5070128 () Bool)

(assert (=> b!5070128 (= e!3163677 (Cons!58438 (h!64886 (t!371315 (list!18997 xs!286))) (++!12793 (t!371315 (t!371315 (list!18997 xs!286))) (list!18997 ys!41))))))

(assert (= (and d!1635911 c!870500) b!5070127))

(assert (= (and d!1635911 (not c!870500)) b!5070128))

(assert (= (and d!1635911 res!2158719) b!5070129))

(assert (= (and b!5070129 res!2158720) b!5070130))

(declare-fun m!6115206 () Bool)

(assert (=> b!5070129 m!6115206))

(assert (=> b!5070129 m!6115068))

(assert (=> b!5070129 m!6114412))

(assert (=> b!5070129 m!6114608))

(declare-fun m!6115208 () Bool)

(assert (=> d!1635911 m!6115208))

(assert (=> d!1635911 m!6115166))

(assert (=> d!1635911 m!6114412))

(assert (=> d!1635911 m!6114614))

(assert (=> b!5070128 m!6114412))

(declare-fun m!6115210 () Bool)

(assert (=> b!5070128 m!6115210))

(assert (=> b!5069775 d!1635911))

(declare-fun d!1635913 () Bool)

(declare-fun c!870501 () Bool)

(assert (=> d!1635913 (= c!870501 ((_ is Node!15568) (left!42822 (left!42822 err!4601))))))

(declare-fun e!3163679 () Bool)

(assert (=> d!1635913 (= (inv!77577 (left!42822 (left!42822 err!4601))) e!3163679)))

(declare-fun b!5070131 () Bool)

(assert (=> b!5070131 (= e!3163679 (inv!77580 (left!42822 (left!42822 err!4601))))))

(declare-fun b!5070132 () Bool)

(declare-fun e!3163680 () Bool)

(assert (=> b!5070132 (= e!3163679 e!3163680)))

(declare-fun res!2158721 () Bool)

(assert (=> b!5070132 (= res!2158721 (not ((_ is Leaf!25857) (left!42822 (left!42822 err!4601)))))))

(assert (=> b!5070132 (=> res!2158721 e!3163680)))

(declare-fun b!5070133 () Bool)

(assert (=> b!5070133 (= e!3163680 (inv!77582 (left!42822 (left!42822 err!4601))))))

(assert (= (and d!1635913 c!870501) b!5070131))

(assert (= (and d!1635913 (not c!870501)) b!5070132))

(assert (= (and b!5070132 (not res!2158721)) b!5070133))

(declare-fun m!6115212 () Bool)

(assert (=> b!5070131 m!6115212))

(declare-fun m!6115214 () Bool)

(assert (=> b!5070133 m!6115214))

(assert (=> b!5069850 d!1635913))

(declare-fun d!1635915 () Bool)

(declare-fun c!870502 () Bool)

(assert (=> d!1635915 (= c!870502 ((_ is Node!15568) (right!43152 (left!42822 err!4601))))))

(declare-fun e!3163681 () Bool)

(assert (=> d!1635915 (= (inv!77577 (right!43152 (left!42822 err!4601))) e!3163681)))

(declare-fun b!5070134 () Bool)

(assert (=> b!5070134 (= e!3163681 (inv!77580 (right!43152 (left!42822 err!4601))))))

(declare-fun b!5070135 () Bool)

(declare-fun e!3163682 () Bool)

(assert (=> b!5070135 (= e!3163681 e!3163682)))

(declare-fun res!2158722 () Bool)

(assert (=> b!5070135 (= res!2158722 (not ((_ is Leaf!25857) (right!43152 (left!42822 err!4601)))))))

(assert (=> b!5070135 (=> res!2158722 e!3163682)))

(declare-fun b!5070136 () Bool)

(assert (=> b!5070136 (= e!3163682 (inv!77582 (right!43152 (left!42822 err!4601))))))

(assert (= (and d!1635915 c!870502) b!5070134))

(assert (= (and d!1635915 (not c!870502)) b!5070135))

(assert (= (and b!5070135 (not res!2158722)) b!5070136))

(declare-fun m!6115216 () Bool)

(assert (=> b!5070134 m!6115216))

(declare-fun m!6115218 () Bool)

(assert (=> b!5070136 m!6115218))

(assert (=> b!5069850 d!1635915))

(declare-fun d!1635917 () Bool)

(declare-fun res!2158723 () Bool)

(declare-fun e!3163683 () Bool)

(assert (=> d!1635917 (=> (not res!2158723) (not e!3163683))))

(assert (=> d!1635917 (= res!2158723 (<= (size!39082 (list!18999 (xs!18924 (left!42822 ys!41)))) 512))))

(assert (=> d!1635917 (= (inv!77582 (left!42822 ys!41)) e!3163683)))

(declare-fun b!5070137 () Bool)

(declare-fun res!2158724 () Bool)

(assert (=> b!5070137 (=> (not res!2158724) (not e!3163683))))

(assert (=> b!5070137 (= res!2158724 (= (csize!31367 (left!42822 ys!41)) (size!39082 (list!18999 (xs!18924 (left!42822 ys!41))))))))

(declare-fun b!5070138 () Bool)

(assert (=> b!5070138 (= e!3163683 (and (> (csize!31367 (left!42822 ys!41)) 0) (<= (csize!31367 (left!42822 ys!41)) 512)))))

(assert (= (and d!1635917 res!2158723) b!5070137))

(assert (= (and b!5070137 res!2158724) b!5070138))

(assert (=> d!1635917 m!6115186))

(assert (=> d!1635917 m!6115186))

(declare-fun m!6115220 () Bool)

(assert (=> d!1635917 m!6115220))

(assert (=> b!5070137 m!6115186))

(assert (=> b!5070137 m!6115186))

(assert (=> b!5070137 m!6115220))

(assert (=> b!5069628 d!1635917))

(declare-fun d!1635919 () Bool)

(declare-fun lt!2089419 () Bool)

(assert (=> d!1635919 (= lt!2089419 (isEmpty!31640 (list!18997 (left!42822 xs!286))))))

(assert (=> d!1635919 (= lt!2089419 (= (size!39084 (left!42822 xs!286)) 0))))

(assert (=> d!1635919 (= (isEmpty!31638 (left!42822 xs!286)) lt!2089419)))

(declare-fun bs!1190095 () Bool)

(assert (= bs!1190095 d!1635919))

(assert (=> bs!1190095 m!6114534))

(assert (=> bs!1190095 m!6114534))

(declare-fun m!6115222 () Bool)

(assert (=> bs!1190095 m!6115222))

(assert (=> bs!1190095 m!6115118))

(assert (=> b!5069608 d!1635919))

(declare-fun b!5070139 () Bool)

(declare-fun e!3163684 () Bool)

(declare-fun tp!1415334 () Bool)

(assert (=> b!5070139 (= e!3163684 (and tp_is_empty!37057 tp!1415334))))

(assert (=> b!5069863 (= tp!1415302 e!3163684)))

(assert (= (and b!5069863 ((_ is Cons!58438) (innerList!15656 (xs!18924 (right!43152 xs!286))))) b!5070139))

(declare-fun b!5070140 () Bool)

(declare-fun e!3163685 () Bool)

(declare-fun tp!1415335 () Bool)

(assert (=> b!5070140 (= e!3163685 (and tp_is_empty!37057 tp!1415335))))

(assert (=> b!5069835 (= tp!1415285 e!3163685)))

(assert (= (and b!5069835 ((_ is Cons!58438) (innerList!15656 (xs!18924 (right!43152 ys!41))))) b!5070140))

(declare-fun b!5070141 () Bool)

(declare-fun e!3163686 () Bool)

(declare-fun tp!1415336 () Bool)

(assert (=> b!5070141 (= e!3163686 (and tp_is_empty!37057 tp!1415336))))

(assert (=> b!5069860 (= tp!1415299 e!3163686)))

(assert (= (and b!5069860 ((_ is Cons!58438) (innerList!15656 (xs!18924 (left!42822 xs!286))))) b!5070141))

(declare-fun tp!1415338 () Bool)

(declare-fun b!5070142 () Bool)

(declare-fun tp!1415339 () Bool)

(declare-fun e!3163688 () Bool)

(assert (=> b!5070142 (= e!3163688 (and (inv!77577 (left!42822 (left!42822 (right!43152 xs!286)))) tp!1415339 (inv!77577 (right!43152 (left!42822 (right!43152 xs!286)))) tp!1415338))))

(declare-fun b!5070144 () Bool)

(declare-fun e!3163687 () Bool)

(declare-fun tp!1415337 () Bool)

(assert (=> b!5070144 (= e!3163687 tp!1415337)))

(declare-fun b!5070143 () Bool)

(assert (=> b!5070143 (= e!3163688 (and (inv!77578 (xs!18924 (left!42822 (right!43152 xs!286)))) e!3163687))))

(assert (=> b!5069861 (= tp!1415304 (and (inv!77577 (left!42822 (right!43152 xs!286))) e!3163688))))

(assert (= (and b!5069861 ((_ is Node!15568) (left!42822 (right!43152 xs!286)))) b!5070142))

(assert (= b!5070143 b!5070144))

(assert (= (and b!5069861 ((_ is Leaf!25857) (left!42822 (right!43152 xs!286)))) b!5070143))

(declare-fun m!6115224 () Bool)

(assert (=> b!5070142 m!6115224))

(declare-fun m!6115226 () Bool)

(assert (=> b!5070142 m!6115226))

(declare-fun m!6115228 () Bool)

(assert (=> b!5070143 m!6115228))

(assert (=> b!5069861 m!6114716))

(declare-fun e!3163690 () Bool)

(declare-fun b!5070145 () Bool)

(declare-fun tp!1415341 () Bool)

(declare-fun tp!1415342 () Bool)

(assert (=> b!5070145 (= e!3163690 (and (inv!77577 (left!42822 (right!43152 (right!43152 xs!286)))) tp!1415342 (inv!77577 (right!43152 (right!43152 (right!43152 xs!286)))) tp!1415341))))

(declare-fun b!5070147 () Bool)

(declare-fun e!3163689 () Bool)

(declare-fun tp!1415340 () Bool)

(assert (=> b!5070147 (= e!3163689 tp!1415340)))

(declare-fun b!5070146 () Bool)

(assert (=> b!5070146 (= e!3163690 (and (inv!77578 (xs!18924 (right!43152 (right!43152 xs!286)))) e!3163689))))

(assert (=> b!5069861 (= tp!1415303 (and (inv!77577 (right!43152 (right!43152 xs!286))) e!3163690))))

(assert (= (and b!5069861 ((_ is Node!15568) (right!43152 (right!43152 xs!286)))) b!5070145))

(assert (= b!5070146 b!5070147))

(assert (= (and b!5069861 ((_ is Leaf!25857) (right!43152 (right!43152 xs!286)))) b!5070146))

(declare-fun m!6115230 () Bool)

(assert (=> b!5070145 m!6115230))

(declare-fun m!6115232 () Bool)

(assert (=> b!5070145 m!6115232))

(declare-fun m!6115234 () Bool)

(assert (=> b!5070146 m!6115234))

(assert (=> b!5069861 m!6114718))

(declare-fun e!3163692 () Bool)

(declare-fun tp!1415344 () Bool)

(declare-fun b!5070148 () Bool)

(declare-fun tp!1415345 () Bool)

(assert (=> b!5070148 (= e!3163692 (and (inv!77577 (left!42822 (left!42822 (right!43152 ys!41)))) tp!1415345 (inv!77577 (right!43152 (left!42822 (right!43152 ys!41)))) tp!1415344))))

(declare-fun b!5070150 () Bool)

(declare-fun e!3163691 () Bool)

(declare-fun tp!1415343 () Bool)

(assert (=> b!5070150 (= e!3163691 tp!1415343)))

(declare-fun b!5070149 () Bool)

(assert (=> b!5070149 (= e!3163692 (and (inv!77578 (xs!18924 (left!42822 (right!43152 ys!41)))) e!3163691))))

(assert (=> b!5069833 (= tp!1415287 (and (inv!77577 (left!42822 (right!43152 ys!41))) e!3163692))))

(assert (= (and b!5069833 ((_ is Node!15568) (left!42822 (right!43152 ys!41)))) b!5070148))

(assert (= b!5070149 b!5070150))

(assert (= (and b!5069833 ((_ is Leaf!25857) (left!42822 (right!43152 ys!41)))) b!5070149))

(declare-fun m!6115236 () Bool)

(assert (=> b!5070148 m!6115236))

(declare-fun m!6115238 () Bool)

(assert (=> b!5070148 m!6115238))

(declare-fun m!6115240 () Bool)

(assert (=> b!5070149 m!6115240))

(assert (=> b!5069833 m!6114668))

(declare-fun tp!1415347 () Bool)

(declare-fun b!5070151 () Bool)

(declare-fun e!3163694 () Bool)

(declare-fun tp!1415348 () Bool)

(assert (=> b!5070151 (= e!3163694 (and (inv!77577 (left!42822 (right!43152 (right!43152 ys!41)))) tp!1415348 (inv!77577 (right!43152 (right!43152 (right!43152 ys!41)))) tp!1415347))))

(declare-fun b!5070153 () Bool)

(declare-fun e!3163693 () Bool)

(declare-fun tp!1415346 () Bool)

(assert (=> b!5070153 (= e!3163693 tp!1415346)))

(declare-fun b!5070152 () Bool)

(assert (=> b!5070152 (= e!3163694 (and (inv!77578 (xs!18924 (right!43152 (right!43152 ys!41)))) e!3163693))))

(assert (=> b!5069833 (= tp!1415286 (and (inv!77577 (right!43152 (right!43152 ys!41))) e!3163694))))

(assert (= (and b!5069833 ((_ is Node!15568) (right!43152 (right!43152 ys!41)))) b!5070151))

(assert (= b!5070152 b!5070153))

(assert (= (and b!5069833 ((_ is Leaf!25857) (right!43152 (right!43152 ys!41)))) b!5070152))

(declare-fun m!6115242 () Bool)

(assert (=> b!5070151 m!6115242))

(declare-fun m!6115244 () Bool)

(assert (=> b!5070151 m!6115244))

(declare-fun m!6115246 () Bool)

(assert (=> b!5070152 m!6115246))

(assert (=> b!5069833 m!6114670))

(declare-fun b!5070154 () Bool)

(declare-fun e!3163695 () Bool)

(declare-fun tp!1415349 () Bool)

(assert (=> b!5070154 (= e!3163695 (and tp_is_empty!37057 tp!1415349))))

(assert (=> b!5069855 (= tp!1415294 e!3163695)))

(assert (= (and b!5069855 ((_ is Cons!58438) (innerList!15656 (xs!18924 (right!43152 err!4601))))) b!5070154))

(declare-fun b!5070155 () Bool)

(declare-fun tp!1415352 () Bool)

(declare-fun tp!1415351 () Bool)

(declare-fun e!3163697 () Bool)

(assert (=> b!5070155 (= e!3163697 (and (inv!77577 (left!42822 (left!42822 (left!42822 xs!286)))) tp!1415352 (inv!77577 (right!43152 (left!42822 (left!42822 xs!286)))) tp!1415351))))

(declare-fun b!5070157 () Bool)

(declare-fun e!3163696 () Bool)

(declare-fun tp!1415350 () Bool)

(assert (=> b!5070157 (= e!3163696 tp!1415350)))

(declare-fun b!5070156 () Bool)

(assert (=> b!5070156 (= e!3163697 (and (inv!77578 (xs!18924 (left!42822 (left!42822 xs!286)))) e!3163696))))

(assert (=> b!5069858 (= tp!1415301 (and (inv!77577 (left!42822 (left!42822 xs!286))) e!3163697))))

(assert (= (and b!5069858 ((_ is Node!15568) (left!42822 (left!42822 xs!286)))) b!5070155))

(assert (= b!5070156 b!5070157))

(assert (= (and b!5069858 ((_ is Leaf!25857) (left!42822 (left!42822 xs!286)))) b!5070156))

(declare-fun m!6115248 () Bool)

(assert (=> b!5070155 m!6115248))

(declare-fun m!6115250 () Bool)

(assert (=> b!5070155 m!6115250))

(declare-fun m!6115252 () Bool)

(assert (=> b!5070156 m!6115252))

(assert (=> b!5069858 m!6114704))

(declare-fun e!3163699 () Bool)

(declare-fun tp!1415355 () Bool)

(declare-fun tp!1415354 () Bool)

(declare-fun b!5070158 () Bool)

(assert (=> b!5070158 (= e!3163699 (and (inv!77577 (left!42822 (right!43152 (left!42822 xs!286)))) tp!1415355 (inv!77577 (right!43152 (right!43152 (left!42822 xs!286)))) tp!1415354))))

(declare-fun b!5070160 () Bool)

(declare-fun e!3163698 () Bool)

(declare-fun tp!1415353 () Bool)

(assert (=> b!5070160 (= e!3163698 tp!1415353)))

(declare-fun b!5070159 () Bool)

(assert (=> b!5070159 (= e!3163699 (and (inv!77578 (xs!18924 (right!43152 (left!42822 xs!286)))) e!3163698))))

(assert (=> b!5069858 (= tp!1415300 (and (inv!77577 (right!43152 (left!42822 xs!286))) e!3163699))))

(assert (= (and b!5069858 ((_ is Node!15568) (right!43152 (left!42822 xs!286)))) b!5070158))

(assert (= b!5070159 b!5070160))

(assert (= (and b!5069858 ((_ is Leaf!25857) (right!43152 (left!42822 xs!286)))) b!5070159))

(declare-fun m!6115254 () Bool)

(assert (=> b!5070158 m!6115254))

(declare-fun m!6115256 () Bool)

(assert (=> b!5070158 m!6115256))

(declare-fun m!6115258 () Bool)

(assert (=> b!5070159 m!6115258))

(assert (=> b!5069858 m!6114708))

(declare-fun b!5070161 () Bool)

(declare-fun e!3163700 () Bool)

(declare-fun tp!1415356 () Bool)

(assert (=> b!5070161 (= e!3163700 (and tp_is_empty!37057 tp!1415356))))

(assert (=> b!5069832 (= tp!1415282 e!3163700)))

(assert (= (and b!5069832 ((_ is Cons!58438) (innerList!15656 (xs!18924 (left!42822 ys!41))))) b!5070161))

(declare-fun b!5070162 () Bool)

(declare-fun e!3163701 () Bool)

(declare-fun tp!1415357 () Bool)

(assert (=> b!5070162 (= e!3163701 (and tp_is_empty!37057 tp!1415357))))

(assert (=> b!5069849 (= tp!1415290 e!3163701)))

(assert (= (and b!5069849 ((_ is Cons!58438) (t!371315 (innerList!15656 (xs!18924 xs!286))))) b!5070162))

(declare-fun b!5070163 () Bool)

(declare-fun e!3163702 () Bool)

(declare-fun tp!1415358 () Bool)

(assert (=> b!5070163 (= e!3163702 (and tp_is_empty!37057 tp!1415358))))

(assert (=> b!5069856 (= tp!1415297 e!3163702)))

(assert (= (and b!5069856 ((_ is Cons!58438) (t!371315 (innerList!15656 (xs!18924 err!4601))))) b!5070163))

(declare-fun e!3163704 () Bool)

(declare-fun tp!1415360 () Bool)

(declare-fun b!5070164 () Bool)

(declare-fun tp!1415361 () Bool)

(assert (=> b!5070164 (= e!3163704 (and (inv!77577 (left!42822 (left!42822 (right!43152 err!4601)))) tp!1415361 (inv!77577 (right!43152 (left!42822 (right!43152 err!4601)))) tp!1415360))))

(declare-fun b!5070166 () Bool)

(declare-fun e!3163703 () Bool)

(declare-fun tp!1415359 () Bool)

(assert (=> b!5070166 (= e!3163703 tp!1415359)))

(declare-fun b!5070165 () Bool)

(assert (=> b!5070165 (= e!3163704 (and (inv!77578 (xs!18924 (left!42822 (right!43152 err!4601)))) e!3163703))))

(assert (=> b!5069853 (= tp!1415296 (and (inv!77577 (left!42822 (right!43152 err!4601))) e!3163704))))

(assert (= (and b!5069853 ((_ is Node!15568) (left!42822 (right!43152 err!4601)))) b!5070164))

(assert (= b!5070165 b!5070166))

(assert (= (and b!5069853 ((_ is Leaf!25857) (left!42822 (right!43152 err!4601)))) b!5070165))

(declare-fun m!6115260 () Bool)

(assert (=> b!5070164 m!6115260))

(declare-fun m!6115262 () Bool)

(assert (=> b!5070164 m!6115262))

(declare-fun m!6115264 () Bool)

(assert (=> b!5070165 m!6115264))

(assert (=> b!5069853 m!6114690))

(declare-fun e!3163706 () Bool)

(declare-fun tp!1415364 () Bool)

(declare-fun b!5070167 () Bool)

(declare-fun tp!1415363 () Bool)

(assert (=> b!5070167 (= e!3163706 (and (inv!77577 (left!42822 (right!43152 (right!43152 err!4601)))) tp!1415364 (inv!77577 (right!43152 (right!43152 (right!43152 err!4601)))) tp!1415363))))

(declare-fun b!5070169 () Bool)

(declare-fun e!3163705 () Bool)

(declare-fun tp!1415362 () Bool)

(assert (=> b!5070169 (= e!3163705 tp!1415362)))

(declare-fun b!5070168 () Bool)

(assert (=> b!5070168 (= e!3163706 (and (inv!77578 (xs!18924 (right!43152 (right!43152 err!4601)))) e!3163705))))

(assert (=> b!5069853 (= tp!1415295 (and (inv!77577 (right!43152 (right!43152 err!4601))) e!3163706))))

(assert (= (and b!5069853 ((_ is Node!15568) (right!43152 (right!43152 err!4601)))) b!5070167))

(assert (= b!5070168 b!5070169))

(assert (= (and b!5069853 ((_ is Leaf!25857) (right!43152 (right!43152 err!4601)))) b!5070168))

(declare-fun m!6115266 () Bool)

(assert (=> b!5070167 m!6115266))

(declare-fun m!6115268 () Bool)

(assert (=> b!5070167 m!6115268))

(declare-fun m!6115270 () Bool)

(assert (=> b!5070168 m!6115270))

(assert (=> b!5069853 m!6114692))

(declare-fun tp!1415367 () Bool)

(declare-fun b!5070170 () Bool)

(declare-fun tp!1415366 () Bool)

(declare-fun e!3163708 () Bool)

(assert (=> b!5070170 (= e!3163708 (and (inv!77577 (left!42822 (left!42822 (left!42822 ys!41)))) tp!1415367 (inv!77577 (right!43152 (left!42822 (left!42822 ys!41)))) tp!1415366))))

(declare-fun b!5070172 () Bool)

(declare-fun e!3163707 () Bool)

(declare-fun tp!1415365 () Bool)

(assert (=> b!5070172 (= e!3163707 tp!1415365)))

(declare-fun b!5070171 () Bool)

(assert (=> b!5070171 (= e!3163708 (and (inv!77578 (xs!18924 (left!42822 (left!42822 ys!41)))) e!3163707))))

(assert (=> b!5069830 (= tp!1415284 (and (inv!77577 (left!42822 (left!42822 ys!41))) e!3163708))))

(assert (= (and b!5069830 ((_ is Node!15568) (left!42822 (left!42822 ys!41)))) b!5070170))

(assert (= b!5070171 b!5070172))

(assert (= (and b!5069830 ((_ is Leaf!25857) (left!42822 (left!42822 ys!41)))) b!5070171))

(declare-fun m!6115272 () Bool)

(assert (=> b!5070170 m!6115272))

(declare-fun m!6115274 () Bool)

(assert (=> b!5070170 m!6115274))

(declare-fun m!6115276 () Bool)

(assert (=> b!5070171 m!6115276))

(assert (=> b!5069830 m!6114662))

(declare-fun tp!1415370 () Bool)

(declare-fun tp!1415369 () Bool)

(declare-fun b!5070173 () Bool)

(declare-fun e!3163710 () Bool)

(assert (=> b!5070173 (= e!3163710 (and (inv!77577 (left!42822 (right!43152 (left!42822 ys!41)))) tp!1415370 (inv!77577 (right!43152 (right!43152 (left!42822 ys!41)))) tp!1415369))))

(declare-fun b!5070175 () Bool)

(declare-fun e!3163709 () Bool)

(declare-fun tp!1415368 () Bool)

(assert (=> b!5070175 (= e!3163709 tp!1415368)))

(declare-fun b!5070174 () Bool)

(assert (=> b!5070174 (= e!3163710 (and (inv!77578 (xs!18924 (right!43152 (left!42822 ys!41)))) e!3163709))))

(assert (=> b!5069830 (= tp!1415283 (and (inv!77577 (right!43152 (left!42822 ys!41))) e!3163710))))

(assert (= (and b!5069830 ((_ is Node!15568) (right!43152 (left!42822 ys!41)))) b!5070173))

(assert (= b!5070174 b!5070175))

(assert (= (and b!5069830 ((_ is Leaf!25857) (right!43152 (left!42822 ys!41)))) b!5070174))

(declare-fun m!6115278 () Bool)

(assert (=> b!5070173 m!6115278))

(declare-fun m!6115280 () Bool)

(assert (=> b!5070173 m!6115280))

(declare-fun m!6115282 () Bool)

(assert (=> b!5070174 m!6115282))

(assert (=> b!5069830 m!6114664))

(declare-fun b!5070176 () Bool)

(declare-fun e!3163711 () Bool)

(declare-fun tp!1415371 () Bool)

(assert (=> b!5070176 (= e!3163711 (and tp_is_empty!37057 tp!1415371))))

(assert (=> b!5069852 (= tp!1415291 e!3163711)))

(assert (= (and b!5069852 ((_ is Cons!58438) (innerList!15656 (xs!18924 (left!42822 err!4601))))) b!5070176))

(declare-fun tp!1415374 () Bool)

(declare-fun b!5070177 () Bool)

(declare-fun e!3163713 () Bool)

(declare-fun tp!1415373 () Bool)

(assert (=> b!5070177 (= e!3163713 (and (inv!77577 (left!42822 (left!42822 (left!42822 err!4601)))) tp!1415374 (inv!77577 (right!43152 (left!42822 (left!42822 err!4601)))) tp!1415373))))

(declare-fun b!5070179 () Bool)

(declare-fun e!3163712 () Bool)

(declare-fun tp!1415372 () Bool)

(assert (=> b!5070179 (= e!3163712 tp!1415372)))

(declare-fun b!5070178 () Bool)

(assert (=> b!5070178 (= e!3163713 (and (inv!77578 (xs!18924 (left!42822 (left!42822 err!4601)))) e!3163712))))

(assert (=> b!5069850 (= tp!1415293 (and (inv!77577 (left!42822 (left!42822 err!4601))) e!3163713))))

(assert (= (and b!5069850 ((_ is Node!15568) (left!42822 (left!42822 err!4601)))) b!5070177))

(assert (= b!5070178 b!5070179))

(assert (= (and b!5069850 ((_ is Leaf!25857) (left!42822 (left!42822 err!4601)))) b!5070178))

(declare-fun m!6115284 () Bool)

(assert (=> b!5070177 m!6115284))

(declare-fun m!6115286 () Bool)

(assert (=> b!5070177 m!6115286))

(declare-fun m!6115288 () Bool)

(assert (=> b!5070178 m!6115288))

(assert (=> b!5069850 m!6114674))

(declare-fun tp!1415377 () Bool)

(declare-fun tp!1415376 () Bool)

(declare-fun e!3163715 () Bool)

(declare-fun b!5070180 () Bool)

(assert (=> b!5070180 (= e!3163715 (and (inv!77577 (left!42822 (right!43152 (left!42822 err!4601)))) tp!1415377 (inv!77577 (right!43152 (right!43152 (left!42822 err!4601)))) tp!1415376))))

(declare-fun b!5070182 () Bool)

(declare-fun e!3163714 () Bool)

(declare-fun tp!1415375 () Bool)

(assert (=> b!5070182 (= e!3163714 tp!1415375)))

(declare-fun b!5070181 () Bool)

(assert (=> b!5070181 (= e!3163715 (and (inv!77578 (xs!18924 (right!43152 (left!42822 err!4601)))) e!3163714))))

(assert (=> b!5069850 (= tp!1415292 (and (inv!77577 (right!43152 (left!42822 err!4601))) e!3163715))))

(assert (= (and b!5069850 ((_ is Node!15568) (right!43152 (left!42822 err!4601)))) b!5070180))

(assert (= b!5070181 b!5070182))

(assert (= (and b!5069850 ((_ is Leaf!25857) (right!43152 (left!42822 err!4601)))) b!5070181))

(declare-fun m!6115290 () Bool)

(assert (=> b!5070180 m!6115290))

(declare-fun m!6115292 () Bool)

(assert (=> b!5070180 m!6115292))

(declare-fun m!6115294 () Bool)

(assert (=> b!5070181 m!6115294))

(assert (=> b!5069850 m!6114676))

(declare-fun b!5070183 () Bool)

(declare-fun e!3163716 () Bool)

(declare-fun tp!1415378 () Bool)

(assert (=> b!5070183 (= e!3163716 (and tp_is_empty!37057 tp!1415378))))

(assert (=> b!5069857 (= tp!1415298 e!3163716)))

(assert (= (and b!5069857 ((_ is Cons!58438) (t!371315 (innerList!15656 (xs!18924 ys!41))))) b!5070183))

(check-sat (not b!5070161) (not b!5069991) (not bm!353236) (not b!5069983) (not b!5070023) (not b!5070012) (not b!5070178) (not b!5070144) (not b!5069934) (not b!5070068) (not b!5070074) (not b!5070033) (not b!5070017) (not b!5070049) (not b!5069939) (not b!5070137) (not b!5069853) (not bm!353241) (not b!5070083) (not b!5069988) (not b!5070113) (not b!5070030) (not b!5070165) (not b!5069942) (not d!1635789) (not b!5070022) (not b!5070159) (not b!5070162) (not b!5070069) (not bm!353235) (not b!5070160) (not b!5070053) (not b!5070072) (not b!5069910) (not d!1635751) (not b!5069906) (not b!5070183) (not b!5070039) (not b!5070156) (not b!5069830) (not b!5070089) (not b!5070088) (not b!5069957) (not b!5069941) (not d!1635825) (not bm!353250) (not b!5069979) (not d!1635859) (not b!5070096) (not b!5070180) (not d!1635827) (not d!1635783) (not b!5070018) (not b!5069980) (not b!5070063) (not b!5070158) (not b!5070151) (not b!5069923) (not b!5069975) (not b!5070131) (not bm!353256) (not b!5069947) (not b!5070010) (not b!5070152) (not bm!353252) (not b!5070027) (not b!5070005) (not b!5070079) (not bm!353245) (not b!5069919) (not b!5070093) (not b!5069962) (not d!1635769) (not d!1635757) (not b!5069998) (not b!5070146) (not b!5069913) (not d!1635849) (not d!1635845) (not bm!353248) (not b!5070119) (not b!5070123) (not b!5070122) (not b!5070153) (not b!5070086) (not b!5070035) (not b!5069911) (not d!1635815) (not b!5070067) (not b!5070085) (not b!5070044) (not d!1635771) (not b!5069931) (not b!5070172) (not b!5070133) (not b!5070111) (not d!1635787) (not b!5070059) (not b!5070177) (not b!5069966) (not d!1635871) (not b!5070037) (not b!5069987) (not b!5070026) (not b!5069858) (not bm!353249) (not d!1635863) (not b!5070064) (not b!5070129) (not b!5069907) (not bm!353244) (not b!5070171) (not bm!353251) (not b!5070050) (not d!1635911) (not b!5070107) (not b!5070134) (not b!5069948) (not b!5070065) (not d!1635843) (not b!5069971) (not b!5070149) (not b!5069938) (not b!5070181) (not b!5070066) (not b!5070032) (not b!5070174) (not b!5070136) (not b!5070025) (not d!1635887) (not d!1635919) (not d!1635829) (not bm!353234) (not b!5070148) (not b!5070145) tp_is_empty!37057 (not b!5070120) (not b!5070128) (not b!5069944) (not b!5069861) (not b!5069955) (not d!1635809) (not b!5070094) (not b!5069908) (not bm!353246) (not b!5070170) (not b!5070051) (not b!5069933) (not d!1635851) (not d!1635791) (not b!5070076) (not b!5070034) (not b!5069945) (not b!5070091) (not bm!353255) (not b!5069965) (not b!5070126) (not b!5069914) (not b!5070142) (not b!5070047) (not d!1635905) (not b!5070020) (not b!5070041) (not b!5070057) (not d!1635773) (not b!5069850) (not b!5069974) (not b!5070139) (not bm!353254) (not d!1635861) (not b!5070061) (not b!5069833) (not b!5069935) (not b!5070100) (not b!5069937) (not b!5070163) (not b!5070046) (not bm!353242) (not b!5070143) (not b!5070155) (not bm!353237) (not b!5070077) (not bm!353247) (not bm!353239) (not d!1635807) (not d!1635821) (not bm!353253) (not b!5070001) (not b!5069909) (not d!1635865) (not b!5070164) (not b!5070097) (not b!5069918) (not bm!353233) (not b!5070055) (not b!5070176) (not b!5070173) (not b!5070182) (not b!5069950) (not d!1635899) (not b!5070009) (not b!5069922) (not b!5070169) (not d!1635799) (not b!5070150) (not b!5070179) (not d!1635813) (not b!5070028) (not b!5070167) (not b!5070036) (not b!5070175) (not b!5069982) (not d!1635907) (not b!5070166) (not b!5070014) (not b!5070157) (not b!5070024) (not b!5070048) (not d!1635831) (not b!5070140) (not bm!353240) (not b!5069936) (not bm!353238) (not b!5070115) (not b!5069999) (not b!5069961) (not d!1635883) (not b!5070154) (not b!5070006) (not bm!353243) (not b!5070147) (not b!5070168) (not d!1635917) (not b!5069992) (not b!5070081) (not b!5070109) (not b!5070141))
(check-sat)
(get-model)

(declare-fun d!1636093 () Bool)

(declare-fun res!2158840 () Bool)

(declare-fun e!3163861 () Bool)

(assert (=> d!1636093 (=> (not res!2158840) (not e!3163861))))

(assert (=> d!1636093 (= res!2158840 (<= (size!39082 (list!18999 (xs!18924 (right!43152 (left!42822 ys!41))))) 512))))

(assert (=> d!1636093 (= (inv!77582 (right!43152 (left!42822 ys!41))) e!3163861)))

(declare-fun b!5070462 () Bool)

(declare-fun res!2158841 () Bool)

(assert (=> b!5070462 (=> (not res!2158841) (not e!3163861))))

(assert (=> b!5070462 (= res!2158841 (= (csize!31367 (right!43152 (left!42822 ys!41))) (size!39082 (list!18999 (xs!18924 (right!43152 (left!42822 ys!41)))))))))

(declare-fun b!5070463 () Bool)

(assert (=> b!5070463 (= e!3163861 (and (> (csize!31367 (right!43152 (left!42822 ys!41))) 0) (<= (csize!31367 (right!43152 (left!42822 ys!41))) 512)))))

(assert (= (and d!1636093 res!2158840) b!5070462))

(assert (= (and b!5070462 res!2158841) b!5070463))

(assert (=> d!1636093 m!6114872))

(assert (=> d!1636093 m!6114872))

(declare-fun m!6115818 () Bool)

(assert (=> d!1636093 m!6115818))

(assert (=> b!5070462 m!6114872))

(assert (=> b!5070462 m!6114872))

(assert (=> b!5070462 m!6115818))

(assert (=> b!5070096 d!1636093))

(declare-fun d!1636095 () Bool)

(declare-fun res!2158842 () Bool)

(declare-fun e!3163863 () Bool)

(assert (=> d!1636095 (=> res!2158842 e!3163863)))

(assert (=> d!1636095 (= res!2158842 (not ((_ is Node!15568) (left!42822 (left!42822 lt!2089379)))))))

(assert (=> d!1636095 (= (isBalanced!4430 (left!42822 (left!42822 lt!2089379))) e!3163863)))

(declare-fun b!5070464 () Bool)

(declare-fun res!2158845 () Bool)

(declare-fun e!3163862 () Bool)

(assert (=> b!5070464 (=> (not res!2158845) (not e!3163862))))

(assert (=> b!5070464 (= res!2158845 (not (isEmpty!31638 (left!42822 (left!42822 (left!42822 lt!2089379))))))))

(declare-fun b!5070465 () Bool)

(declare-fun res!2158846 () Bool)

(assert (=> b!5070465 (=> (not res!2158846) (not e!3163862))))

(assert (=> b!5070465 (= res!2158846 (isBalanced!4430 (right!43152 (left!42822 (left!42822 lt!2089379)))))))

(declare-fun b!5070466 () Bool)

(assert (=> b!5070466 (= e!3163863 e!3163862)))

(declare-fun res!2158847 () Bool)

(assert (=> b!5070466 (=> (not res!2158847) (not e!3163862))))

(assert (=> b!5070466 (= res!2158847 (<= (- 1) (- (height!2145 (left!42822 (left!42822 (left!42822 lt!2089379)))) (height!2145 (right!43152 (left!42822 (left!42822 lt!2089379)))))))))

(declare-fun b!5070467 () Bool)

(declare-fun res!2158844 () Bool)

(assert (=> b!5070467 (=> (not res!2158844) (not e!3163862))))

(assert (=> b!5070467 (= res!2158844 (isBalanced!4430 (left!42822 (left!42822 (left!42822 lt!2089379)))))))

(declare-fun b!5070468 () Bool)

(declare-fun res!2158843 () Bool)

(assert (=> b!5070468 (=> (not res!2158843) (not e!3163862))))

(assert (=> b!5070468 (= res!2158843 (<= (- (height!2145 (left!42822 (left!42822 (left!42822 lt!2089379)))) (height!2145 (right!43152 (left!42822 (left!42822 lt!2089379))))) 1))))

(declare-fun b!5070469 () Bool)

(assert (=> b!5070469 (= e!3163862 (not (isEmpty!31638 (right!43152 (left!42822 (left!42822 lt!2089379))))))))

(assert (= (and d!1636095 (not res!2158842)) b!5070466))

(assert (= (and b!5070466 res!2158847) b!5070468))

(assert (= (and b!5070468 res!2158843) b!5070467))

(assert (= (and b!5070467 res!2158844) b!5070465))

(assert (= (and b!5070465 res!2158846) b!5070464))

(assert (= (and b!5070464 res!2158845) b!5070469))

(declare-fun m!6115820 () Bool)

(assert (=> b!5070465 m!6115820))

(declare-fun m!6115822 () Bool)

(assert (=> b!5070469 m!6115822))

(declare-fun m!6115824 () Bool)

(assert (=> b!5070467 m!6115824))

(declare-fun m!6115826 () Bool)

(assert (=> b!5070466 m!6115826))

(declare-fun m!6115828 () Bool)

(assert (=> b!5070466 m!6115828))

(declare-fun m!6115830 () Bool)

(assert (=> b!5070464 m!6115830))

(assert (=> b!5070468 m!6115826))

(assert (=> b!5070468 m!6115828))

(assert (=> b!5069909 d!1636095))

(declare-fun d!1636097 () Bool)

(declare-fun c!870562 () Bool)

(assert (=> d!1636097 (= c!870562 ((_ is Node!15568) (left!42822 (right!43152 (left!42822 xs!286)))))))

(declare-fun e!3163864 () Bool)

(assert (=> d!1636097 (= (inv!77577 (left!42822 (right!43152 (left!42822 xs!286)))) e!3163864)))

(declare-fun b!5070470 () Bool)

(assert (=> b!5070470 (= e!3163864 (inv!77580 (left!42822 (right!43152 (left!42822 xs!286)))))))

(declare-fun b!5070471 () Bool)

(declare-fun e!3163865 () Bool)

(assert (=> b!5070471 (= e!3163864 e!3163865)))

(declare-fun res!2158848 () Bool)

(assert (=> b!5070471 (= res!2158848 (not ((_ is Leaf!25857) (left!42822 (right!43152 (left!42822 xs!286))))))))

(assert (=> b!5070471 (=> res!2158848 e!3163865)))

(declare-fun b!5070472 () Bool)

(assert (=> b!5070472 (= e!3163865 (inv!77582 (left!42822 (right!43152 (left!42822 xs!286)))))))

(assert (= (and d!1636097 c!870562) b!5070470))

(assert (= (and d!1636097 (not c!870562)) b!5070471))

(assert (= (and b!5070471 (not res!2158848)) b!5070472))

(declare-fun m!6115832 () Bool)

(assert (=> b!5070470 m!6115832))

(declare-fun m!6115834 () Bool)

(assert (=> b!5070472 m!6115834))

(assert (=> b!5070158 d!1636097))

(declare-fun d!1636099 () Bool)

(declare-fun c!870563 () Bool)

(assert (=> d!1636099 (= c!870563 ((_ is Node!15568) (right!43152 (right!43152 (left!42822 xs!286)))))))

(declare-fun e!3163866 () Bool)

(assert (=> d!1636099 (= (inv!77577 (right!43152 (right!43152 (left!42822 xs!286)))) e!3163866)))

(declare-fun b!5070473 () Bool)

(assert (=> b!5070473 (= e!3163866 (inv!77580 (right!43152 (right!43152 (left!42822 xs!286)))))))

(declare-fun b!5070474 () Bool)

(declare-fun e!3163867 () Bool)

(assert (=> b!5070474 (= e!3163866 e!3163867)))

(declare-fun res!2158849 () Bool)

(assert (=> b!5070474 (= res!2158849 (not ((_ is Leaf!25857) (right!43152 (right!43152 (left!42822 xs!286))))))))

(assert (=> b!5070474 (=> res!2158849 e!3163867)))

(declare-fun b!5070475 () Bool)

(assert (=> b!5070475 (= e!3163867 (inv!77582 (right!43152 (right!43152 (left!42822 xs!286)))))))

(assert (= (and d!1636099 c!870563) b!5070473))

(assert (= (and d!1636099 (not c!870563)) b!5070474))

(assert (= (and b!5070474 (not res!2158849)) b!5070475))

(declare-fun m!6115836 () Bool)

(assert (=> b!5070473 m!6115836))

(declare-fun m!6115838 () Bool)

(assert (=> b!5070475 m!6115838))

(assert (=> b!5070158 d!1636099))

(declare-fun b!5070478 () Bool)

(declare-fun res!2158851 () Bool)

(declare-fun e!3163869 () Bool)

(assert (=> b!5070478 (=> (not res!2158851) (not e!3163869))))

(declare-fun lt!2089450 () List!58562)

(assert (=> b!5070478 (= res!2158851 (= (size!39082 lt!2089450) (+ (size!39082 call!353238) (size!39082 (list!18997 (right!43152 ys!41))))))))

(declare-fun b!5070479 () Bool)

(assert (=> b!5070479 (= e!3163869 (or (not (= (list!18997 (right!43152 ys!41)) Nil!58438)) (= lt!2089450 call!353238)))))

(declare-fun b!5070476 () Bool)

(declare-fun e!3163868 () List!58562)

(assert (=> b!5070476 (= e!3163868 (list!18997 (right!43152 ys!41)))))

(declare-fun d!1636101 () Bool)

(assert (=> d!1636101 e!3163869))

(declare-fun res!2158850 () Bool)

(assert (=> d!1636101 (=> (not res!2158850) (not e!3163869))))

(assert (=> d!1636101 (= res!2158850 (= (content!10420 lt!2089450) ((_ map or) (content!10420 call!353238) (content!10420 (list!18997 (right!43152 ys!41))))))))

(assert (=> d!1636101 (= lt!2089450 e!3163868)))

(declare-fun c!870564 () Bool)

(assert (=> d!1636101 (= c!870564 ((_ is Nil!58438) call!353238))))

(assert (=> d!1636101 (= (++!12793 call!353238 (list!18997 (right!43152 ys!41))) lt!2089450)))

(declare-fun b!5070477 () Bool)

(assert (=> b!5070477 (= e!3163868 (Cons!58438 (h!64886 call!353238) (++!12793 (t!371315 call!353238) (list!18997 (right!43152 ys!41)))))))

(assert (= (and d!1636101 c!870564) b!5070476))

(assert (= (and d!1636101 (not c!870564)) b!5070477))

(assert (= (and d!1636101 res!2158850) b!5070478))

(assert (= (and b!5070478 res!2158851) b!5070479))

(declare-fun m!6115840 () Bool)

(assert (=> b!5070478 m!6115840))

(declare-fun m!6115842 () Bool)

(assert (=> b!5070478 m!6115842))

(assert (=> b!5070478 m!6114518))

(assert (=> b!5070478 m!6115192))

(declare-fun m!6115844 () Bool)

(assert (=> d!1636101 m!6115844))

(declare-fun m!6115846 () Bool)

(assert (=> d!1636101 m!6115846))

(assert (=> d!1636101 m!6114518))

(assert (=> d!1636101 m!6115198))

(assert (=> b!5070477 m!6114518))

(declare-fun m!6115848 () Bool)

(assert (=> b!5070477 m!6115848))

(assert (=> bm!353236 d!1636101))

(declare-fun d!1636103 () Bool)

(declare-fun res!2158852 () Bool)

(declare-fun e!3163871 () Bool)

(assert (=> d!1636103 (=> res!2158852 e!3163871)))

(assert (=> d!1636103 (= res!2158852 (not ((_ is Node!15568) (left!42822 (right!43152 lt!2089379)))))))

(assert (=> d!1636103 (= (isBalanced!4430 (left!42822 (right!43152 lt!2089379))) e!3163871)))

(declare-fun b!5070480 () Bool)

(declare-fun res!2158855 () Bool)

(declare-fun e!3163870 () Bool)

(assert (=> b!5070480 (=> (not res!2158855) (not e!3163870))))

(assert (=> b!5070480 (= res!2158855 (not (isEmpty!31638 (left!42822 (left!42822 (right!43152 lt!2089379))))))))

(declare-fun b!5070481 () Bool)

(declare-fun res!2158856 () Bool)

(assert (=> b!5070481 (=> (not res!2158856) (not e!3163870))))

(assert (=> b!5070481 (= res!2158856 (isBalanced!4430 (right!43152 (left!42822 (right!43152 lt!2089379)))))))

(declare-fun b!5070482 () Bool)

(assert (=> b!5070482 (= e!3163871 e!3163870)))

(declare-fun res!2158857 () Bool)

(assert (=> b!5070482 (=> (not res!2158857) (not e!3163870))))

(assert (=> b!5070482 (= res!2158857 (<= (- 1) (- (height!2145 (left!42822 (left!42822 (right!43152 lt!2089379)))) (height!2145 (right!43152 (left!42822 (right!43152 lt!2089379)))))))))

(declare-fun b!5070483 () Bool)

(declare-fun res!2158854 () Bool)

(assert (=> b!5070483 (=> (not res!2158854) (not e!3163870))))

(assert (=> b!5070483 (= res!2158854 (isBalanced!4430 (left!42822 (left!42822 (right!43152 lt!2089379)))))))

(declare-fun b!5070484 () Bool)

(declare-fun res!2158853 () Bool)

(assert (=> b!5070484 (=> (not res!2158853) (not e!3163870))))

(assert (=> b!5070484 (= res!2158853 (<= (- (height!2145 (left!42822 (left!42822 (right!43152 lt!2089379)))) (height!2145 (right!43152 (left!42822 (right!43152 lt!2089379))))) 1))))

(declare-fun b!5070485 () Bool)

(assert (=> b!5070485 (= e!3163870 (not (isEmpty!31638 (right!43152 (left!42822 (right!43152 lt!2089379))))))))

(assert (= (and d!1636103 (not res!2158852)) b!5070482))

(assert (= (and b!5070482 res!2158857) b!5070484))

(assert (= (and b!5070484 res!2158853) b!5070483))

(assert (= (and b!5070483 res!2158854) b!5070481))

(assert (= (and b!5070481 res!2158856) b!5070480))

(assert (= (and b!5070480 res!2158855) b!5070485))

(declare-fun m!6115850 () Bool)

(assert (=> b!5070481 m!6115850))

(declare-fun m!6115852 () Bool)

(assert (=> b!5070485 m!6115852))

(declare-fun m!6115854 () Bool)

(assert (=> b!5070483 m!6115854))

(declare-fun m!6115856 () Bool)

(assert (=> b!5070482 m!6115856))

(declare-fun m!6115858 () Bool)

(assert (=> b!5070482 m!6115858))

(declare-fun m!6115860 () Bool)

(assert (=> b!5070480 m!6115860))

(assert (=> b!5070484 m!6115856))

(assert (=> b!5070484 m!6115858))

(assert (=> b!5069936 d!1636103))

(declare-fun b!5070488 () Bool)

(declare-fun res!2158859 () Bool)

(declare-fun e!3163873 () Bool)

(assert (=> b!5070488 (=> (not res!2158859) (not e!3163873))))

(declare-fun lt!2089451 () List!58562)

(assert (=> b!5070488 (= res!2158859 (= (size!39082 lt!2089451) (+ (size!39082 (list!18997 (left!42822 (left!42822 (left!42822 ys!41))))) (size!39082 (list!18997 (right!43152 (left!42822 (left!42822 ys!41))))))))))

(declare-fun b!5070489 () Bool)

(assert (=> b!5070489 (= e!3163873 (or (not (= (list!18997 (right!43152 (left!42822 (left!42822 ys!41)))) Nil!58438)) (= lt!2089451 (list!18997 (left!42822 (left!42822 (left!42822 ys!41)))))))))

(declare-fun b!5070486 () Bool)

(declare-fun e!3163872 () List!58562)

(assert (=> b!5070486 (= e!3163872 (list!18997 (right!43152 (left!42822 (left!42822 ys!41)))))))

(declare-fun d!1636105 () Bool)

(assert (=> d!1636105 e!3163873))

(declare-fun res!2158858 () Bool)

(assert (=> d!1636105 (=> (not res!2158858) (not e!3163873))))

(assert (=> d!1636105 (= res!2158858 (= (content!10420 lt!2089451) ((_ map or) (content!10420 (list!18997 (left!42822 (left!42822 (left!42822 ys!41))))) (content!10420 (list!18997 (right!43152 (left!42822 (left!42822 ys!41))))))))))

(assert (=> d!1636105 (= lt!2089451 e!3163872)))

(declare-fun c!870565 () Bool)

(assert (=> d!1636105 (= c!870565 ((_ is Nil!58438) (list!18997 (left!42822 (left!42822 (left!42822 ys!41))))))))

(assert (=> d!1636105 (= (++!12793 (list!18997 (left!42822 (left!42822 (left!42822 ys!41)))) (list!18997 (right!43152 (left!42822 (left!42822 ys!41))))) lt!2089451)))

(declare-fun b!5070487 () Bool)

(assert (=> b!5070487 (= e!3163872 (Cons!58438 (h!64886 (list!18997 (left!42822 (left!42822 (left!42822 ys!41))))) (++!12793 (t!371315 (list!18997 (left!42822 (left!42822 (left!42822 ys!41))))) (list!18997 (right!43152 (left!42822 (left!42822 ys!41)))))))))

(assert (= (and d!1636105 c!870565) b!5070486))

(assert (= (and d!1636105 (not c!870565)) b!5070487))

(assert (= (and d!1636105 res!2158858) b!5070488))

(assert (= (and b!5070488 res!2158859) b!5070489))

(declare-fun m!6115862 () Bool)

(assert (=> b!5070488 m!6115862))

(assert (=> b!5070488 m!6114902))

(declare-fun m!6115864 () Bool)

(assert (=> b!5070488 m!6115864))

(assert (=> b!5070488 m!6114904))

(declare-fun m!6115866 () Bool)

(assert (=> b!5070488 m!6115866))

(declare-fun m!6115868 () Bool)

(assert (=> d!1636105 m!6115868))

(assert (=> d!1636105 m!6114902))

(declare-fun m!6115870 () Bool)

(assert (=> d!1636105 m!6115870))

(assert (=> d!1636105 m!6114904))

(declare-fun m!6115872 () Bool)

(assert (=> d!1636105 m!6115872))

(assert (=> b!5070487 m!6114904))

(declare-fun m!6115874 () Bool)

(assert (=> b!5070487 m!6115874))

(assert (=> b!5069980 d!1636105))

(declare-fun b!5070492 () Bool)

(declare-fun e!3163875 () List!58562)

(assert (=> b!5070492 (= e!3163875 (list!18999 (xs!18924 (left!42822 (left!42822 (left!42822 ys!41))))))))

(declare-fun d!1636107 () Bool)

(declare-fun c!870566 () Bool)

(assert (=> d!1636107 (= c!870566 ((_ is Empty!15568) (left!42822 (left!42822 (left!42822 ys!41)))))))

(declare-fun e!3163874 () List!58562)

(assert (=> d!1636107 (= (list!18997 (left!42822 (left!42822 (left!42822 ys!41)))) e!3163874)))

(declare-fun b!5070491 () Bool)

(assert (=> b!5070491 (= e!3163874 e!3163875)))

(declare-fun c!870567 () Bool)

(assert (=> b!5070491 (= c!870567 ((_ is Leaf!25857) (left!42822 (left!42822 (left!42822 ys!41)))))))

(declare-fun b!5070490 () Bool)

(assert (=> b!5070490 (= e!3163874 Nil!58438)))

(declare-fun b!5070493 () Bool)

(assert (=> b!5070493 (= e!3163875 (++!12793 (list!18997 (left!42822 (left!42822 (left!42822 (left!42822 ys!41))))) (list!18997 (right!43152 (left!42822 (left!42822 (left!42822 ys!41)))))))))

(assert (= (and d!1636107 c!870566) b!5070490))

(assert (= (and d!1636107 (not c!870566)) b!5070491))

(assert (= (and b!5070491 c!870567) b!5070492))

(assert (= (and b!5070491 (not c!870567)) b!5070493))

(declare-fun m!6115876 () Bool)

(assert (=> b!5070492 m!6115876))

(declare-fun m!6115878 () Bool)

(assert (=> b!5070493 m!6115878))

(declare-fun m!6115880 () Bool)

(assert (=> b!5070493 m!6115880))

(assert (=> b!5070493 m!6115878))

(assert (=> b!5070493 m!6115880))

(declare-fun m!6115882 () Bool)

(assert (=> b!5070493 m!6115882))

(assert (=> b!5069980 d!1636107))

(declare-fun b!5070496 () Bool)

(declare-fun e!3163877 () List!58562)

(assert (=> b!5070496 (= e!3163877 (list!18999 (xs!18924 (right!43152 (left!42822 (left!42822 ys!41))))))))

(declare-fun d!1636109 () Bool)

(declare-fun c!870568 () Bool)

(assert (=> d!1636109 (= c!870568 ((_ is Empty!15568) (right!43152 (left!42822 (left!42822 ys!41)))))))

(declare-fun e!3163876 () List!58562)

(assert (=> d!1636109 (= (list!18997 (right!43152 (left!42822 (left!42822 ys!41)))) e!3163876)))

(declare-fun b!5070495 () Bool)

(assert (=> b!5070495 (= e!3163876 e!3163877)))

(declare-fun c!870569 () Bool)

(assert (=> b!5070495 (= c!870569 ((_ is Leaf!25857) (right!43152 (left!42822 (left!42822 ys!41)))))))

(declare-fun b!5070494 () Bool)

(assert (=> b!5070494 (= e!3163876 Nil!58438)))

(declare-fun b!5070497 () Bool)

(assert (=> b!5070497 (= e!3163877 (++!12793 (list!18997 (left!42822 (right!43152 (left!42822 (left!42822 ys!41))))) (list!18997 (right!43152 (right!43152 (left!42822 (left!42822 ys!41)))))))))

(assert (= (and d!1636109 c!870568) b!5070494))

(assert (= (and d!1636109 (not c!870568)) b!5070495))

(assert (= (and b!5070495 c!870569) b!5070496))

(assert (= (and b!5070495 (not c!870569)) b!5070497))

(declare-fun m!6115884 () Bool)

(assert (=> b!5070496 m!6115884))

(declare-fun m!6115886 () Bool)

(assert (=> b!5070497 m!6115886))

(declare-fun m!6115888 () Bool)

(assert (=> b!5070497 m!6115888))

(assert (=> b!5070497 m!6115886))

(assert (=> b!5070497 m!6115888))

(declare-fun m!6115890 () Bool)

(assert (=> b!5070497 m!6115890))

(assert (=> b!5069980 d!1636109))

(assert (=> b!5069833 d!1635765))

(assert (=> b!5069833 d!1635767))

(declare-fun d!1636111 () Bool)

(declare-fun res!2158860 () Bool)

(declare-fun e!3163879 () Bool)

(assert (=> d!1636111 (=> res!2158860 e!3163879)))

(assert (=> d!1636111 (= res!2158860 (not ((_ is Node!15568) (right!43152 (left!42822 xs!286)))))))

(assert (=> d!1636111 (= (isBalanced!4430 (right!43152 (left!42822 xs!286))) e!3163879)))

(declare-fun b!5070498 () Bool)

(declare-fun res!2158863 () Bool)

(declare-fun e!3163878 () Bool)

(assert (=> b!5070498 (=> (not res!2158863) (not e!3163878))))

(assert (=> b!5070498 (= res!2158863 (not (isEmpty!31638 (left!42822 (right!43152 (left!42822 xs!286))))))))

(declare-fun b!5070499 () Bool)

(declare-fun res!2158864 () Bool)

(assert (=> b!5070499 (=> (not res!2158864) (not e!3163878))))

(assert (=> b!5070499 (= res!2158864 (isBalanced!4430 (right!43152 (right!43152 (left!42822 xs!286)))))))

(declare-fun b!5070500 () Bool)

(assert (=> b!5070500 (= e!3163879 e!3163878)))

(declare-fun res!2158865 () Bool)

(assert (=> b!5070500 (=> (not res!2158865) (not e!3163878))))

(assert (=> b!5070500 (= res!2158865 (<= (- 1) (- (height!2145 (left!42822 (right!43152 (left!42822 xs!286)))) (height!2145 (right!43152 (right!43152 (left!42822 xs!286)))))))))

(declare-fun b!5070501 () Bool)

(declare-fun res!2158862 () Bool)

(assert (=> b!5070501 (=> (not res!2158862) (not e!3163878))))

(assert (=> b!5070501 (= res!2158862 (isBalanced!4430 (left!42822 (right!43152 (left!42822 xs!286)))))))

(declare-fun b!5070502 () Bool)

(declare-fun res!2158861 () Bool)

(assert (=> b!5070502 (=> (not res!2158861) (not e!3163878))))

(assert (=> b!5070502 (= res!2158861 (<= (- (height!2145 (left!42822 (right!43152 (left!42822 xs!286)))) (height!2145 (right!43152 (right!43152 (left!42822 xs!286))))) 1))))

(declare-fun b!5070503 () Bool)

(assert (=> b!5070503 (= e!3163878 (not (isEmpty!31638 (right!43152 (right!43152 (left!42822 xs!286))))))))

(assert (= (and d!1636111 (not res!2158860)) b!5070500))

(assert (= (and b!5070500 res!2158865) b!5070502))

(assert (= (and b!5070502 res!2158861) b!5070501))

(assert (= (and b!5070501 res!2158862) b!5070499))

(assert (= (and b!5070499 res!2158864) b!5070498))

(assert (= (and b!5070498 res!2158863) b!5070503))

(declare-fun m!6115892 () Bool)

(assert (=> b!5070499 m!6115892))

(declare-fun m!6115894 () Bool)

(assert (=> b!5070503 m!6115894))

(declare-fun m!6115896 () Bool)

(assert (=> b!5070501 m!6115896))

(declare-fun m!6115898 () Bool)

(assert (=> b!5070500 m!6115898))

(declare-fun m!6115900 () Bool)

(assert (=> b!5070500 m!6115900))

(declare-fun m!6115902 () Bool)

(assert (=> b!5070498 m!6115902))

(assert (=> b!5070502 m!6115898))

(assert (=> b!5070502 m!6115900))

(assert (=> b!5070047 d!1636111))

(declare-fun d!1636113 () Bool)

(declare-fun res!2158866 () Bool)

(declare-fun e!3163880 () Bool)

(assert (=> d!1636113 (=> (not res!2158866) (not e!3163880))))

(assert (=> d!1636113 (= res!2158866 (= (csize!31366 (right!43152 (left!42822 err!4601))) (+ (size!39084 (left!42822 (right!43152 (left!42822 err!4601)))) (size!39084 (right!43152 (right!43152 (left!42822 err!4601)))))))))

(assert (=> d!1636113 (= (inv!77580 (right!43152 (left!42822 err!4601))) e!3163880)))

(declare-fun b!5070504 () Bool)

(declare-fun res!2158867 () Bool)

(assert (=> b!5070504 (=> (not res!2158867) (not e!3163880))))

(assert (=> b!5070504 (= res!2158867 (and (not (= (left!42822 (right!43152 (left!42822 err!4601))) Empty!15568)) (not (= (right!43152 (right!43152 (left!42822 err!4601))) Empty!15568))))))

(declare-fun b!5070505 () Bool)

(declare-fun res!2158868 () Bool)

(assert (=> b!5070505 (=> (not res!2158868) (not e!3163880))))

(assert (=> b!5070505 (= res!2158868 (= (cheight!15779 (right!43152 (left!42822 err!4601))) (+ (max!0 (height!2145 (left!42822 (right!43152 (left!42822 err!4601)))) (height!2145 (right!43152 (right!43152 (left!42822 err!4601))))) 1)))))

(declare-fun b!5070506 () Bool)

(assert (=> b!5070506 (= e!3163880 (<= 0 (cheight!15779 (right!43152 (left!42822 err!4601)))))))

(assert (= (and d!1636113 res!2158866) b!5070504))

(assert (= (and b!5070504 res!2158867) b!5070505))

(assert (= (and b!5070505 res!2158868) b!5070506))

(declare-fun m!6115904 () Bool)

(assert (=> d!1636113 m!6115904))

(declare-fun m!6115906 () Bool)

(assert (=> d!1636113 m!6115906))

(declare-fun m!6115908 () Bool)

(assert (=> b!5070505 m!6115908))

(declare-fun m!6115910 () Bool)

(assert (=> b!5070505 m!6115910))

(assert (=> b!5070505 m!6115908))

(assert (=> b!5070505 m!6115910))

(declare-fun m!6115912 () Bool)

(assert (=> b!5070505 m!6115912))

(assert (=> b!5070134 d!1636113))

(declare-fun d!1636115 () Bool)

(declare-fun res!2158869 () Bool)

(declare-fun e!3163881 () Bool)

(assert (=> d!1636115 (=> (not res!2158869) (not e!3163881))))

(assert (=> d!1636115 (= res!2158869 (<= (size!39082 (list!18999 (xs!18924 (left!42822 (left!42822 xs!286))))) 512))))

(assert (=> d!1636115 (= (inv!77582 (left!42822 (left!42822 xs!286))) e!3163881)))

(declare-fun b!5070507 () Bool)

(declare-fun res!2158870 () Bool)

(assert (=> b!5070507 (=> (not res!2158870) (not e!3163881))))

(assert (=> b!5070507 (= res!2158870 (= (csize!31367 (left!42822 (left!42822 xs!286))) (size!39082 (list!18999 (xs!18924 (left!42822 (left!42822 xs!286)))))))))

(declare-fun b!5070508 () Bool)

(assert (=> b!5070508 (= e!3163881 (and (> (csize!31367 (left!42822 (left!42822 xs!286))) 0) (<= (csize!31367 (left!42822 (left!42822 xs!286))) 512)))))

(assert (= (and d!1636115 res!2158869) b!5070507))

(assert (= (and b!5070507 res!2158870) b!5070508))

(declare-fun m!6115914 () Bool)

(assert (=> d!1636115 m!6115914))

(assert (=> d!1636115 m!6115914))

(declare-fun m!6115916 () Bool)

(assert (=> d!1636115 m!6115916))

(assert (=> b!5070507 m!6115914))

(assert (=> b!5070507 m!6115914))

(assert (=> b!5070507 m!6115916))

(assert (=> b!5070076 d!1636115))

(declare-fun d!1636117 () Bool)

(assert (=> d!1636117 (= (height!2145 (left!42822 (right!43152 ys!41))) (ite ((_ is Empty!15568) (left!42822 (right!43152 ys!41))) 0 (ite ((_ is Leaf!25857) (left!42822 (right!43152 ys!41))) 1 (cheight!15779 (left!42822 (right!43152 ys!41))))))))

(assert (=> b!5070036 d!1636117))

(declare-fun d!1636119 () Bool)

(assert (=> d!1636119 (= (height!2145 (right!43152 (right!43152 ys!41))) (ite ((_ is Empty!15568) (right!43152 (right!43152 ys!41))) 0 (ite ((_ is Leaf!25857) (right!43152 (right!43152 ys!41))) 1 (cheight!15779 (right!43152 (right!43152 ys!41))))))))

(assert (=> b!5070036 d!1636119))

(declare-fun d!1636121 () Bool)

(declare-fun c!870570 () Bool)

(assert (=> d!1636121 (= c!870570 ((_ is Node!15568) (left!42822 (right!43152 (right!43152 xs!286)))))))

(declare-fun e!3163882 () Bool)

(assert (=> d!1636121 (= (inv!77577 (left!42822 (right!43152 (right!43152 xs!286)))) e!3163882)))

(declare-fun b!5070509 () Bool)

(assert (=> b!5070509 (= e!3163882 (inv!77580 (left!42822 (right!43152 (right!43152 xs!286)))))))

(declare-fun b!5070510 () Bool)

(declare-fun e!3163883 () Bool)

(assert (=> b!5070510 (= e!3163882 e!3163883)))

(declare-fun res!2158871 () Bool)

(assert (=> b!5070510 (= res!2158871 (not ((_ is Leaf!25857) (left!42822 (right!43152 (right!43152 xs!286))))))))

(assert (=> b!5070510 (=> res!2158871 e!3163883)))

(declare-fun b!5070511 () Bool)

(assert (=> b!5070511 (= e!3163883 (inv!77582 (left!42822 (right!43152 (right!43152 xs!286)))))))

(assert (= (and d!1636121 c!870570) b!5070509))

(assert (= (and d!1636121 (not c!870570)) b!5070510))

(assert (= (and b!5070510 (not res!2158871)) b!5070511))

(declare-fun m!6115918 () Bool)

(assert (=> b!5070509 m!6115918))

(declare-fun m!6115920 () Bool)

(assert (=> b!5070511 m!6115920))

(assert (=> b!5070145 d!1636121))

(declare-fun d!1636123 () Bool)

(declare-fun c!870571 () Bool)

(assert (=> d!1636123 (= c!870571 ((_ is Node!15568) (right!43152 (right!43152 (right!43152 xs!286)))))))

(declare-fun e!3163884 () Bool)

(assert (=> d!1636123 (= (inv!77577 (right!43152 (right!43152 (right!43152 xs!286)))) e!3163884)))

(declare-fun b!5070512 () Bool)

(assert (=> b!5070512 (= e!3163884 (inv!77580 (right!43152 (right!43152 (right!43152 xs!286)))))))

(declare-fun b!5070513 () Bool)

(declare-fun e!3163885 () Bool)

(assert (=> b!5070513 (= e!3163884 e!3163885)))

(declare-fun res!2158872 () Bool)

(assert (=> b!5070513 (= res!2158872 (not ((_ is Leaf!25857) (right!43152 (right!43152 (right!43152 xs!286))))))))

(assert (=> b!5070513 (=> res!2158872 e!3163885)))

(declare-fun b!5070514 () Bool)

(assert (=> b!5070514 (= e!3163885 (inv!77582 (right!43152 (right!43152 (right!43152 xs!286)))))))

(assert (= (and d!1636123 c!870571) b!5070512))

(assert (= (and d!1636123 (not c!870571)) b!5070513))

(assert (= (and b!5070513 (not res!2158872)) b!5070514))

(declare-fun m!6115922 () Bool)

(assert (=> b!5070512 m!6115922))

(declare-fun m!6115924 () Bool)

(assert (=> b!5070514 m!6115924))

(assert (=> b!5070145 d!1636123))

(declare-fun d!1636125 () Bool)

(declare-fun lt!2089452 () Int)

(assert (=> d!1636125 (>= lt!2089452 0)))

(declare-fun e!3163886 () Int)

(assert (=> d!1636125 (= lt!2089452 e!3163886)))

(declare-fun c!870572 () Bool)

(assert (=> d!1636125 (= c!870572 ((_ is Nil!58438) (list!18999 (xs!18924 (right!43152 xs!286)))))))

(assert (=> d!1636125 (= (size!39082 (list!18999 (xs!18924 (right!43152 xs!286)))) lt!2089452)))

(declare-fun b!5070515 () Bool)

(assert (=> b!5070515 (= e!3163886 0)))

(declare-fun b!5070516 () Bool)

(assert (=> b!5070516 (= e!3163886 (+ 1 (size!39082 (t!371315 (list!18999 (xs!18924 (right!43152 xs!286)))))))))

(assert (= (and d!1636125 c!870572) b!5070515))

(assert (= (and d!1636125 (not c!870572)) b!5070516))

(declare-fun m!6115926 () Bool)

(assert (=> b!5070516 m!6115926))

(assert (=> b!5070041 d!1636125))

(declare-fun d!1636127 () Bool)

(assert (=> d!1636127 (= (list!18999 (xs!18924 (right!43152 xs!286))) (innerList!15656 (xs!18924 (right!43152 xs!286))))))

(assert (=> b!5070041 d!1636127))

(declare-fun d!1636129 () Bool)

(declare-fun lt!2089453 () Int)

(assert (=> d!1636129 (>= lt!2089453 0)))

(declare-fun e!3163887 () Int)

(assert (=> d!1636129 (= lt!2089453 e!3163887)))

(declare-fun c!870573 () Bool)

(assert (=> d!1636129 (= c!870573 ((_ is Nil!58438) (list!18999 (xs!18924 (left!42822 ys!41)))))))

(assert (=> d!1636129 (= (size!39082 (list!18999 (xs!18924 (left!42822 ys!41)))) lt!2089453)))

(declare-fun b!5070517 () Bool)

(assert (=> b!5070517 (= e!3163887 0)))

(declare-fun b!5070518 () Bool)

(assert (=> b!5070518 (= e!3163887 (+ 1 (size!39082 (t!371315 (list!18999 (xs!18924 (left!42822 ys!41)))))))))

(assert (= (and d!1636129 c!870573) b!5070517))

(assert (= (and d!1636129 (not c!870573)) b!5070518))

(declare-fun m!6115928 () Bool)

(assert (=> b!5070518 m!6115928))

(assert (=> d!1635917 d!1636129))

(declare-fun d!1636131 () Bool)

(assert (=> d!1636131 (= (list!18999 (xs!18924 (left!42822 ys!41))) (innerList!15656 (xs!18924 (left!42822 ys!41))))))

(assert (=> d!1635917 d!1636131))

(declare-fun d!1636133 () Bool)

(declare-fun lt!2089454 () Int)

(assert (=> d!1636133 (>= lt!2089454 0)))

(declare-fun e!3163888 () Int)

(assert (=> d!1636133 (= lt!2089454 e!3163888)))

(declare-fun c!870574 () Bool)

(assert (=> d!1636133 (= c!870574 ((_ is Nil!58438) lt!2089390))))

(assert (=> d!1636133 (= (size!39082 lt!2089390) lt!2089454)))

(declare-fun b!5070519 () Bool)

(assert (=> b!5070519 (= e!3163888 0)))

(declare-fun b!5070520 () Bool)

(assert (=> b!5070520 (= e!3163888 (+ 1 (size!39082 (t!371315 lt!2089390))))))

(assert (= (and d!1636133 c!870574) b!5070519))

(assert (= (and d!1636133 (not c!870574)) b!5070520))

(declare-fun m!6115930 () Bool)

(assert (=> b!5070520 m!6115930))

(assert (=> b!5069914 d!1636133))

(declare-fun d!1636135 () Bool)

(declare-fun lt!2089455 () Int)

(assert (=> d!1636135 (>= lt!2089455 0)))

(declare-fun e!3163889 () Int)

(assert (=> d!1636135 (= lt!2089455 e!3163889)))

(declare-fun c!870575 () Bool)

(assert (=> d!1636135 (= c!870575 ((_ is Nil!58438) (list!18997 (left!42822 lt!2089379))))))

(assert (=> d!1636135 (= (size!39082 (list!18997 (left!42822 lt!2089379))) lt!2089455)))

(declare-fun b!5070521 () Bool)

(assert (=> b!5070521 (= e!3163889 0)))

(declare-fun b!5070522 () Bool)

(assert (=> b!5070522 (= e!3163889 (+ 1 (size!39082 (t!371315 (list!18997 (left!42822 lt!2089379))))))))

(assert (= (and d!1636135 c!870575) b!5070521))

(assert (= (and d!1636135 (not c!870575)) b!5070522))

(declare-fun m!6115932 () Bool)

(assert (=> b!5070522 m!6115932))

(assert (=> b!5069914 d!1636135))

(declare-fun d!1636137 () Bool)

(declare-fun lt!2089456 () Int)

(assert (=> d!1636137 (>= lt!2089456 0)))

(declare-fun e!3163890 () Int)

(assert (=> d!1636137 (= lt!2089456 e!3163890)))

(declare-fun c!870576 () Bool)

(assert (=> d!1636137 (= c!870576 ((_ is Nil!58438) (list!18997 (right!43152 lt!2089379))))))

(assert (=> d!1636137 (= (size!39082 (list!18997 (right!43152 lt!2089379))) lt!2089456)))

(declare-fun b!5070523 () Bool)

(assert (=> b!5070523 (= e!3163890 0)))

(declare-fun b!5070524 () Bool)

(assert (=> b!5070524 (= e!3163890 (+ 1 (size!39082 (t!371315 (list!18997 (right!43152 lt!2089379))))))))

(assert (= (and d!1636137 c!870576) b!5070523))

(assert (= (and d!1636137 (not c!870576)) b!5070524))

(declare-fun m!6115934 () Bool)

(assert (=> b!5070524 m!6115934))

(assert (=> b!5069914 d!1636137))

(declare-fun d!1636139 () Bool)

(assert (=> d!1636139 (= (max!0 (height!2145 (left!42822 (right!43152 err!4601))) (height!2145 (right!43152 (right!43152 err!4601)))) (ite (< (height!2145 (left!42822 (right!43152 err!4601))) (height!2145 (right!43152 (right!43152 err!4601)))) (height!2145 (right!43152 (right!43152 err!4601))) (height!2145 (left!42822 (right!43152 err!4601)))))))

(assert (=> b!5070100 d!1636139))

(declare-fun d!1636141 () Bool)

(assert (=> d!1636141 (= (height!2145 (left!42822 (right!43152 err!4601))) (ite ((_ is Empty!15568) (left!42822 (right!43152 err!4601))) 0 (ite ((_ is Leaf!25857) (left!42822 (right!43152 err!4601))) 1 (cheight!15779 (left!42822 (right!43152 err!4601))))))))

(assert (=> b!5070100 d!1636141))

(declare-fun d!1636143 () Bool)

(assert (=> d!1636143 (= (height!2145 (right!43152 (right!43152 err!4601))) (ite ((_ is Empty!15568) (right!43152 (right!43152 err!4601))) 0 (ite ((_ is Leaf!25857) (right!43152 (right!43152 err!4601))) 1 (cheight!15779 (right!43152 (right!43152 err!4601))))))))

(assert (=> b!5070100 d!1636143))

(declare-fun d!1636145 () Bool)

(assert (=> d!1636145 (= (list!18999 (xs!18924 (right!43152 lt!2089379))) (innerList!15656 (xs!18924 (right!43152 lt!2089379))))))

(assert (=> b!5069922 d!1636145))

(declare-fun d!1636147 () Bool)

(declare-fun lt!2089459 () Int)

(assert (=> d!1636147 (= lt!2089459 (size!39082 (list!18997 (left!42822 (right!43152 xs!286)))))))

(assert (=> d!1636147 (= lt!2089459 (ite ((_ is Empty!15568) (left!42822 (right!43152 xs!286))) 0 (ite ((_ is Leaf!25857) (left!42822 (right!43152 xs!286))) (csize!31367 (left!42822 (right!43152 xs!286))) (csize!31366 (left!42822 (right!43152 xs!286))))))))

(assert (=> d!1636147 (= (size!39084 (left!42822 (right!43152 xs!286))) lt!2089459)))

(declare-fun bs!1190108 () Bool)

(assert (= bs!1190108 d!1636147))

(assert (=> bs!1190108 m!6114522))

(assert (=> bs!1190108 m!6114522))

(declare-fun m!6115936 () Bool)

(assert (=> bs!1190108 m!6115936))

(assert (=> d!1635843 d!1636147))

(declare-fun d!1636149 () Bool)

(declare-fun lt!2089460 () Int)

(assert (=> d!1636149 (= lt!2089460 (size!39082 (list!18997 (right!43152 (right!43152 xs!286)))))))

(assert (=> d!1636149 (= lt!2089460 (ite ((_ is Empty!15568) (right!43152 (right!43152 xs!286))) 0 (ite ((_ is Leaf!25857) (right!43152 (right!43152 xs!286))) (csize!31367 (right!43152 (right!43152 xs!286))) (csize!31366 (right!43152 (right!43152 xs!286))))))))

(assert (=> d!1636149 (= (size!39084 (right!43152 (right!43152 xs!286))) lt!2089460)))

(declare-fun bs!1190109 () Bool)

(assert (= bs!1190109 d!1636149))

(assert (=> bs!1190109 m!6114524))

(assert (=> bs!1190109 m!6114524))

(assert (=> bs!1190109 m!6114990))

(assert (=> d!1635843 d!1636149))

(declare-fun d!1636151 () Bool)

(declare-fun res!2158873 () Bool)

(declare-fun e!3163891 () Bool)

(assert (=> d!1636151 (=> (not res!2158873) (not e!3163891))))

(assert (=> d!1636151 (= res!2158873 (= (csize!31366 (right!43152 (right!43152 xs!286))) (+ (size!39084 (left!42822 (right!43152 (right!43152 xs!286)))) (size!39084 (right!43152 (right!43152 (right!43152 xs!286)))))))))

(assert (=> d!1636151 (= (inv!77580 (right!43152 (right!43152 xs!286))) e!3163891)))

(declare-fun b!5070525 () Bool)

(declare-fun res!2158874 () Bool)

(assert (=> b!5070525 (=> (not res!2158874) (not e!3163891))))

(assert (=> b!5070525 (= res!2158874 (and (not (= (left!42822 (right!43152 (right!43152 xs!286))) Empty!15568)) (not (= (right!43152 (right!43152 (right!43152 xs!286))) Empty!15568))))))

(declare-fun b!5070526 () Bool)

(declare-fun res!2158875 () Bool)

(assert (=> b!5070526 (=> (not res!2158875) (not e!3163891))))

(assert (=> b!5070526 (= res!2158875 (= (cheight!15779 (right!43152 (right!43152 xs!286))) (+ (max!0 (height!2145 (left!42822 (right!43152 (right!43152 xs!286)))) (height!2145 (right!43152 (right!43152 (right!43152 xs!286))))) 1)))))

(declare-fun b!5070527 () Bool)

(assert (=> b!5070527 (= e!3163891 (<= 0 (cheight!15779 (right!43152 (right!43152 xs!286)))))))

(assert (= (and d!1636151 res!2158873) b!5070525))

(assert (= (and b!5070525 res!2158874) b!5070526))

(assert (= (and b!5070526 res!2158875) b!5070527))

(declare-fun m!6115938 () Bool)

(assert (=> d!1636151 m!6115938))

(declare-fun m!6115940 () Bool)

(assert (=> d!1636151 m!6115940))

(declare-fun m!6115942 () Bool)

(assert (=> b!5070526 m!6115942))

(declare-fun m!6115944 () Bool)

(assert (=> b!5070526 m!6115944))

(assert (=> b!5070526 m!6115942))

(assert (=> b!5070526 m!6115944))

(declare-fun m!6115946 () Bool)

(assert (=> b!5070526 m!6115946))

(assert (=> b!5069942 d!1636151))

(declare-fun d!1636153 () Bool)

(declare-fun e!3163892 () Bool)

(assert (=> d!1636153 e!3163892))

(declare-fun c!870577 () Bool)

(assert (=> d!1636153 (= c!870577 ((_ is Nil!58438) (t!371315 (list!18997 (left!42822 xs!286)))))))

(assert (=> d!1636153 (= (appendAssoc!303 (t!371315 (list!18997 (left!42822 xs!286))) (list!18997 (right!43152 xs!286)) (list!18997 ys!41)) true)))

(declare-fun bm!353289 () Bool)

(declare-fun call!353294 () List!58562)

(assert (=> bm!353289 (= call!353294 (++!12793 (t!371315 (list!18997 (left!42822 xs!286))) (list!18997 (right!43152 xs!286))))))

(declare-fun bm!353290 () Bool)

(declare-fun call!353295 () List!58562)

(declare-fun call!353296 () List!58562)

(assert (=> bm!353290 (= call!353295 (++!12793 (t!371315 (list!18997 (left!42822 xs!286))) call!353296))))

(declare-fun b!5070528 () Bool)

(declare-fun call!353297 () List!58562)

(assert (=> b!5070528 (= e!3163892 (= call!353297 call!353295))))

(declare-fun lt!2089461 () Bool)

(assert (=> b!5070528 (= lt!2089461 (appendAssoc!303 (t!371315 (t!371315 (list!18997 (left!42822 xs!286)))) (list!18997 (right!43152 xs!286)) (list!18997 ys!41)))))

(declare-fun b!5070529 () Bool)

(assert (=> b!5070529 (= e!3163892 (= call!353297 call!353295))))

(declare-fun bm!353291 () Bool)

(assert (=> bm!353291 (= call!353296 (++!12793 (list!18997 (right!43152 xs!286)) (list!18997 ys!41)))))

(declare-fun bm!353292 () Bool)

(assert (=> bm!353292 (= call!353297 (++!12793 call!353294 (list!18997 ys!41)))))

(assert (= (and d!1636153 c!870577) b!5070529))

(assert (= (and d!1636153 (not c!870577)) b!5070528))

(assert (= (or b!5070529 b!5070528) bm!353289))

(assert (= (or b!5070529 b!5070528) bm!353291))

(assert (= (or b!5070529 b!5070528) bm!353290))

(assert (= (or b!5070529 b!5070528) bm!353292))

(assert (=> bm!353291 m!6114536))

(assert (=> bm!353291 m!6114412))

(assert (=> bm!353291 m!6115130))

(assert (=> bm!353289 m!6114536))

(assert (=> bm!353289 m!6114924))

(assert (=> b!5070528 m!6114536))

(assert (=> b!5070528 m!6114412))

(declare-fun m!6115948 () Bool)

(assert (=> b!5070528 m!6115948))

(declare-fun m!6115950 () Bool)

(assert (=> bm!353290 m!6115950))

(assert (=> bm!353292 m!6114412))

(declare-fun m!6115952 () Bool)

(assert (=> bm!353292 m!6115952))

(assert (=> b!5070089 d!1636153))

(declare-fun b!5070532 () Bool)

(declare-fun res!2158877 () Bool)

(declare-fun e!3163894 () Bool)

(assert (=> b!5070532 (=> (not res!2158877) (not e!3163894))))

(declare-fun lt!2089462 () List!58562)

(assert (=> b!5070532 (= res!2158877 (= (size!39082 lt!2089462) (+ (size!39082 (list!18997 (left!42822 (right!43152 xs!286)))) (size!39082 call!353244))))))

(declare-fun b!5070533 () Bool)

(assert (=> b!5070533 (= e!3163894 (or (not (= call!353244 Nil!58438)) (= lt!2089462 (list!18997 (left!42822 (right!43152 xs!286))))))))

(declare-fun b!5070530 () Bool)

(declare-fun e!3163893 () List!58562)

(assert (=> b!5070530 (= e!3163893 call!353244)))

(declare-fun d!1636155 () Bool)

(assert (=> d!1636155 e!3163894))

(declare-fun res!2158876 () Bool)

(assert (=> d!1636155 (=> (not res!2158876) (not e!3163894))))

(assert (=> d!1636155 (= res!2158876 (= (content!10420 lt!2089462) ((_ map or) (content!10420 (list!18997 (left!42822 (right!43152 xs!286)))) (content!10420 call!353244))))))

(assert (=> d!1636155 (= lt!2089462 e!3163893)))

(declare-fun c!870578 () Bool)

(assert (=> d!1636155 (= c!870578 ((_ is Nil!58438) (list!18997 (left!42822 (right!43152 xs!286)))))))

(assert (=> d!1636155 (= (++!12793 (list!18997 (left!42822 (right!43152 xs!286))) call!353244) lt!2089462)))

(declare-fun b!5070531 () Bool)

(assert (=> b!5070531 (= e!3163893 (Cons!58438 (h!64886 (list!18997 (left!42822 (right!43152 xs!286)))) (++!12793 (t!371315 (list!18997 (left!42822 (right!43152 xs!286)))) call!353244)))))

(assert (= (and d!1636155 c!870578) b!5070530))

(assert (= (and d!1636155 (not c!870578)) b!5070531))

(assert (= (and d!1636155 res!2158876) b!5070532))

(assert (= (and b!5070532 res!2158877) b!5070533))

(declare-fun m!6115954 () Bool)

(assert (=> b!5070532 m!6115954))

(assert (=> b!5070532 m!6114522))

(assert (=> b!5070532 m!6115936))

(declare-fun m!6115956 () Bool)

(assert (=> b!5070532 m!6115956))

(declare-fun m!6115958 () Bool)

(assert (=> d!1636155 m!6115958))

(assert (=> d!1636155 m!6114522))

(declare-fun m!6115960 () Bool)

(assert (=> d!1636155 m!6115960))

(declare-fun m!6115962 () Bool)

(assert (=> d!1636155 m!6115962))

(declare-fun m!6115964 () Bool)

(assert (=> b!5070531 m!6115964))

(assert (=> bm!353238 d!1636155))

(declare-fun d!1636157 () Bool)

(declare-fun c!870579 () Bool)

(assert (=> d!1636157 (= c!870579 ((_ is Node!15568) (left!42822 (left!42822 (left!42822 ys!41)))))))

(declare-fun e!3163895 () Bool)

(assert (=> d!1636157 (= (inv!77577 (left!42822 (left!42822 (left!42822 ys!41)))) e!3163895)))

(declare-fun b!5070534 () Bool)

(assert (=> b!5070534 (= e!3163895 (inv!77580 (left!42822 (left!42822 (left!42822 ys!41)))))))

(declare-fun b!5070535 () Bool)

(declare-fun e!3163896 () Bool)

(assert (=> b!5070535 (= e!3163895 e!3163896)))

(declare-fun res!2158878 () Bool)

(assert (=> b!5070535 (= res!2158878 (not ((_ is Leaf!25857) (left!42822 (left!42822 (left!42822 ys!41))))))))

(assert (=> b!5070535 (=> res!2158878 e!3163896)))

(declare-fun b!5070536 () Bool)

(assert (=> b!5070536 (= e!3163896 (inv!77582 (left!42822 (left!42822 (left!42822 ys!41)))))))

(assert (= (and d!1636157 c!870579) b!5070534))

(assert (= (and d!1636157 (not c!870579)) b!5070535))

(assert (= (and b!5070535 (not res!2158878)) b!5070536))

(declare-fun m!6115966 () Bool)

(assert (=> b!5070534 m!6115966))

(declare-fun m!6115968 () Bool)

(assert (=> b!5070536 m!6115968))

(assert (=> b!5070170 d!1636157))

(declare-fun d!1636159 () Bool)

(declare-fun c!870580 () Bool)

(assert (=> d!1636159 (= c!870580 ((_ is Node!15568) (right!43152 (left!42822 (left!42822 ys!41)))))))

(declare-fun e!3163897 () Bool)

(assert (=> d!1636159 (= (inv!77577 (right!43152 (left!42822 (left!42822 ys!41)))) e!3163897)))

(declare-fun b!5070537 () Bool)

(assert (=> b!5070537 (= e!3163897 (inv!77580 (right!43152 (left!42822 (left!42822 ys!41)))))))

(declare-fun b!5070538 () Bool)

(declare-fun e!3163898 () Bool)

(assert (=> b!5070538 (= e!3163897 e!3163898)))

(declare-fun res!2158879 () Bool)

(assert (=> b!5070538 (= res!2158879 (not ((_ is Leaf!25857) (right!43152 (left!42822 (left!42822 ys!41))))))))

(assert (=> b!5070538 (=> res!2158879 e!3163898)))

(declare-fun b!5070539 () Bool)

(assert (=> b!5070539 (= e!3163898 (inv!77582 (right!43152 (left!42822 (left!42822 ys!41)))))))

(assert (= (and d!1636159 c!870580) b!5070537))

(assert (= (and d!1636159 (not c!870580)) b!5070538))

(assert (= (and b!5070538 (not res!2158879)) b!5070539))

(declare-fun m!6115970 () Bool)

(assert (=> b!5070537 m!6115970))

(declare-fun m!6115972 () Bool)

(assert (=> b!5070539 m!6115972))

(assert (=> b!5070170 d!1636159))

(declare-fun b!5070542 () Bool)

(declare-fun res!2158881 () Bool)

(declare-fun e!3163900 () Bool)

(assert (=> b!5070542 (=> (not res!2158881) (not e!3163900))))

(declare-fun lt!2089463 () List!58562)

(assert (=> b!5070542 (= res!2158881 (= (size!39082 lt!2089463) (+ (size!39082 (list!18997 (left!42822 (right!43152 xs!286)))) (size!39082 (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41))))))))

(declare-fun b!5070543 () Bool)

(assert (=> b!5070543 (= e!3163900 (or (not (= (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41)) Nil!58438)) (= lt!2089463 (list!18997 (left!42822 (right!43152 xs!286))))))))

(declare-fun b!5070540 () Bool)

(declare-fun e!3163899 () List!58562)

(assert (=> b!5070540 (= e!3163899 (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41)))))

(declare-fun d!1636161 () Bool)

(assert (=> d!1636161 e!3163900))

(declare-fun res!2158880 () Bool)

(assert (=> d!1636161 (=> (not res!2158880) (not e!3163900))))

(assert (=> d!1636161 (= res!2158880 (= (content!10420 lt!2089463) ((_ map or) (content!10420 (list!18997 (left!42822 (right!43152 xs!286)))) (content!10420 (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41))))))))

(assert (=> d!1636161 (= lt!2089463 e!3163899)))

(declare-fun c!870581 () Bool)

(assert (=> d!1636161 (= c!870581 ((_ is Nil!58438) (list!18997 (left!42822 (right!43152 xs!286)))))))

(assert (=> d!1636161 (= (++!12793 (list!18997 (left!42822 (right!43152 xs!286))) (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41))) lt!2089463)))

(declare-fun b!5070541 () Bool)

(assert (=> b!5070541 (= e!3163899 (Cons!58438 (h!64886 (list!18997 (left!42822 (right!43152 xs!286)))) (++!12793 (t!371315 (list!18997 (left!42822 (right!43152 xs!286)))) (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41)))))))

(assert (= (and d!1636161 c!870581) b!5070540))

(assert (= (and d!1636161 (not c!870581)) b!5070541))

(assert (= (and d!1636161 res!2158880) b!5070542))

(assert (= (and b!5070542 res!2158881) b!5070543))

(declare-fun m!6115974 () Bool)

(assert (=> b!5070542 m!6115974))

(assert (=> b!5070542 m!6114522))

(assert (=> b!5070542 m!6115936))

(assert (=> b!5070542 m!6114540))

(declare-fun m!6115976 () Bool)

(assert (=> b!5070542 m!6115976))

(declare-fun m!6115978 () Bool)

(assert (=> d!1636161 m!6115978))

(assert (=> d!1636161 m!6114522))

(assert (=> d!1636161 m!6115960))

(assert (=> d!1636161 m!6114540))

(declare-fun m!6115980 () Bool)

(assert (=> d!1636161 m!6115980))

(assert (=> b!5070541 m!6114540))

(declare-fun m!6115982 () Bool)

(assert (=> b!5070541 m!6115982))

(assert (=> bm!353243 d!1636161))

(declare-fun d!1636163 () Bool)

(declare-fun res!2158882 () Bool)

(declare-fun e!3163902 () Bool)

(assert (=> d!1636163 (=> res!2158882 e!3163902)))

(assert (=> d!1636163 (= res!2158882 (not ((_ is Node!15568) (right!43152 (right!43152 xs!286)))))))

(assert (=> d!1636163 (= (isBalanced!4430 (right!43152 (right!43152 xs!286))) e!3163902)))

(declare-fun b!5070544 () Bool)

(declare-fun res!2158885 () Bool)

(declare-fun e!3163901 () Bool)

(assert (=> b!5070544 (=> (not res!2158885) (not e!3163901))))

(assert (=> b!5070544 (= res!2158885 (not (isEmpty!31638 (left!42822 (right!43152 (right!43152 xs!286))))))))

(declare-fun b!5070545 () Bool)

(declare-fun res!2158886 () Bool)

(assert (=> b!5070545 (=> (not res!2158886) (not e!3163901))))

(assert (=> b!5070545 (= res!2158886 (isBalanced!4430 (right!43152 (right!43152 (right!43152 xs!286)))))))

(declare-fun b!5070546 () Bool)

(assert (=> b!5070546 (= e!3163902 e!3163901)))

(declare-fun res!2158887 () Bool)

(assert (=> b!5070546 (=> (not res!2158887) (not e!3163901))))

(assert (=> b!5070546 (= res!2158887 (<= (- 1) (- (height!2145 (left!42822 (right!43152 (right!43152 xs!286)))) (height!2145 (right!43152 (right!43152 (right!43152 xs!286)))))))))

(declare-fun b!5070547 () Bool)

(declare-fun res!2158884 () Bool)

(assert (=> b!5070547 (=> (not res!2158884) (not e!3163901))))

(assert (=> b!5070547 (= res!2158884 (isBalanced!4430 (left!42822 (right!43152 (right!43152 xs!286)))))))

(declare-fun b!5070548 () Bool)

(declare-fun res!2158883 () Bool)

(assert (=> b!5070548 (=> (not res!2158883) (not e!3163901))))

(assert (=> b!5070548 (= res!2158883 (<= (- (height!2145 (left!42822 (right!43152 (right!43152 xs!286)))) (height!2145 (right!43152 (right!43152 (right!43152 xs!286))))) 1))))

(declare-fun b!5070549 () Bool)

(assert (=> b!5070549 (= e!3163901 (not (isEmpty!31638 (right!43152 (right!43152 (right!43152 xs!286))))))))

(assert (= (and d!1636163 (not res!2158882)) b!5070546))

(assert (= (and b!5070546 res!2158887) b!5070548))

(assert (= (and b!5070548 res!2158883) b!5070547))

(assert (= (and b!5070547 res!2158884) b!5070545))

(assert (= (and b!5070545 res!2158886) b!5070544))

(assert (= (and b!5070544 res!2158885) b!5070549))

(declare-fun m!6115984 () Bool)

(assert (=> b!5070545 m!6115984))

(declare-fun m!6115986 () Bool)

(assert (=> b!5070549 m!6115986))

(declare-fun m!6115988 () Bool)

(assert (=> b!5070547 m!6115988))

(assert (=> b!5070546 m!6115942))

(assert (=> b!5070546 m!6115944))

(declare-fun m!6115990 () Bool)

(assert (=> b!5070544 m!6115990))

(assert (=> b!5070548 m!6115942))

(assert (=> b!5070548 m!6115944))

(assert (=> b!5070064 d!1636163))

(declare-fun b!5070552 () Bool)

(declare-fun res!2158889 () Bool)

(declare-fun e!3163904 () Bool)

(assert (=> b!5070552 (=> (not res!2158889) (not e!3163904))))

(declare-fun lt!2089464 () List!58562)

(assert (=> b!5070552 (= res!2158889 (= (size!39082 lt!2089464) (+ (size!39082 (list!18997 (left!42822 (left!42822 ys!41)))) (size!39082 (list!18997 (right!43152 (left!42822 ys!41)))))))))

(declare-fun b!5070553 () Bool)

(assert (=> b!5070553 (= e!3163904 (or (not (= (list!18997 (right!43152 (left!42822 ys!41))) Nil!58438)) (= lt!2089464 (list!18997 (left!42822 (left!42822 ys!41))))))))

(declare-fun b!5070550 () Bool)

(declare-fun e!3163903 () List!58562)

(assert (=> b!5070550 (= e!3163903 (list!18997 (right!43152 (left!42822 ys!41))))))

(declare-fun d!1636165 () Bool)

(assert (=> d!1636165 e!3163904))

(declare-fun res!2158888 () Bool)

(assert (=> d!1636165 (=> (not res!2158888) (not e!3163904))))

(assert (=> d!1636165 (= res!2158888 (= (content!10420 lt!2089464) ((_ map or) (content!10420 (list!18997 (left!42822 (left!42822 ys!41)))) (content!10420 (list!18997 (right!43152 (left!42822 ys!41)))))))))

(assert (=> d!1636165 (= lt!2089464 e!3163903)))

(declare-fun c!870582 () Bool)

(assert (=> d!1636165 (= c!870582 ((_ is Nil!58438) (list!18997 (left!42822 (left!42822 ys!41)))))))

(assert (=> d!1636165 (= (++!12793 (list!18997 (left!42822 (left!42822 ys!41))) (list!18997 (right!43152 (left!42822 ys!41)))) lt!2089464)))

(declare-fun b!5070551 () Bool)

(assert (=> b!5070551 (= e!3163903 (Cons!58438 (h!64886 (list!18997 (left!42822 (left!42822 ys!41)))) (++!12793 (t!371315 (list!18997 (left!42822 (left!42822 ys!41)))) (list!18997 (right!43152 (left!42822 ys!41))))))))

(assert (= (and d!1636165 c!870582) b!5070550))

(assert (= (and d!1636165 (not c!870582)) b!5070551))

(assert (= (and d!1636165 res!2158888) b!5070552))

(assert (= (and b!5070552 res!2158889) b!5070553))

(declare-fun m!6115992 () Bool)

(assert (=> b!5070552 m!6115992))

(assert (=> b!5070552 m!6114512))

(assert (=> b!5070552 m!6114892))

(assert (=> b!5070552 m!6114516))

(declare-fun m!6115994 () Bool)

(assert (=> b!5070552 m!6115994))

(declare-fun m!6115996 () Bool)

(assert (=> d!1636165 m!6115996))

(assert (=> d!1636165 m!6114512))

(assert (=> d!1636165 m!6114896))

(assert (=> d!1636165 m!6114516))

(declare-fun m!6115998 () Bool)

(assert (=> d!1636165 m!6115998))

(assert (=> b!5070551 m!6114516))

(declare-fun m!6116000 () Bool)

(assert (=> b!5070551 m!6116000))

(assert (=> bm!353247 d!1636165))

(declare-fun d!1636167 () Bool)

(assert (=> d!1636167 (= (max!0 (height!2145 (left!42822 (left!42822 xs!286))) (height!2145 (right!43152 (left!42822 xs!286)))) (ite (< (height!2145 (left!42822 (left!42822 xs!286))) (height!2145 (right!43152 (left!42822 xs!286)))) (height!2145 (right!43152 (left!42822 xs!286))) (height!2145 (left!42822 (left!42822 xs!286)))))))

(assert (=> b!5069931 d!1636167))

(declare-fun d!1636169 () Bool)

(assert (=> d!1636169 (= (height!2145 (left!42822 (left!42822 xs!286))) (ite ((_ is Empty!15568) (left!42822 (left!42822 xs!286))) 0 (ite ((_ is Leaf!25857) (left!42822 (left!42822 xs!286))) 1 (cheight!15779 (left!42822 (left!42822 xs!286))))))))

(assert (=> b!5069931 d!1636169))

(declare-fun d!1636171 () Bool)

(assert (=> d!1636171 (= (height!2145 (right!43152 (left!42822 xs!286))) (ite ((_ is Empty!15568) (right!43152 (left!42822 xs!286))) 0 (ite ((_ is Leaf!25857) (right!43152 (left!42822 xs!286))) 1 (cheight!15779 (right!43152 (left!42822 xs!286))))))))

(assert (=> b!5069931 d!1636171))

(declare-fun d!1636173 () Bool)

(declare-fun lt!2089465 () Int)

(assert (=> d!1636173 (>= lt!2089465 0)))

(declare-fun e!3163905 () Int)

(assert (=> d!1636173 (= lt!2089465 e!3163905)))

(declare-fun c!870583 () Bool)

(assert (=> d!1636173 (= c!870583 ((_ is Nil!58438) (innerList!15656 (xs!18924 (right!43152 ys!41)))))))

(assert (=> d!1636173 (= (size!39082 (innerList!15656 (xs!18924 (right!43152 ys!41)))) lt!2089465)))

(declare-fun b!5070554 () Bool)

(assert (=> b!5070554 (= e!3163905 0)))

(declare-fun b!5070555 () Bool)

(assert (=> b!5070555 (= e!3163905 (+ 1 (size!39082 (t!371315 (innerList!15656 (xs!18924 (right!43152 ys!41)))))))))

(assert (= (and d!1636173 c!870583) b!5070554))

(assert (= (and d!1636173 (not c!870583)) b!5070555))

(declare-fun m!6116002 () Bool)

(assert (=> b!5070555 m!6116002))

(assert (=> d!1635861 d!1636173))

(declare-fun d!1636175 () Bool)

(assert (=> d!1636175 (= (isEmpty!31640 (list!18997 (left!42822 xs!286))) ((_ is Nil!58438) (list!18997 (left!42822 xs!286))))))

(assert (=> d!1635919 d!1636175))

(assert (=> d!1635919 d!1635793))

(declare-fun d!1636177 () Bool)

(declare-fun lt!2089466 () Int)

(assert (=> d!1636177 (= lt!2089466 (size!39082 (list!18997 (left!42822 xs!286))))))

(assert (=> d!1636177 (= lt!2089466 (ite ((_ is Empty!15568) (left!42822 xs!286)) 0 (ite ((_ is Leaf!25857) (left!42822 xs!286)) (csize!31367 (left!42822 xs!286)) (csize!31366 (left!42822 xs!286)))))))

(assert (=> d!1636177 (= (size!39084 (left!42822 xs!286)) lt!2089466)))

(declare-fun bs!1190110 () Bool)

(assert (= bs!1190110 d!1636177))

(assert (=> bs!1190110 m!6114534))

(assert (=> bs!1190110 m!6114534))

(assert (=> bs!1190110 m!6114914))

(assert (=> d!1635919 d!1636177))

(declare-fun d!1636179 () Bool)

(declare-fun lt!2089467 () Int)

(assert (=> d!1636179 (>= lt!2089467 0)))

(declare-fun e!3163906 () Int)

(assert (=> d!1636179 (= lt!2089467 e!3163906)))

(declare-fun c!870584 () Bool)

(assert (=> d!1636179 (= c!870584 ((_ is Nil!58438) (list!18999 (xs!18924 (left!42822 err!4601)))))))

(assert (=> d!1636179 (= (size!39082 (list!18999 (xs!18924 (left!42822 err!4601)))) lt!2089467)))

(declare-fun b!5070556 () Bool)

(assert (=> b!5070556 (= e!3163906 0)))

(declare-fun b!5070557 () Bool)

(assert (=> b!5070557 (= e!3163906 (+ 1 (size!39082 (t!371315 (list!18999 (xs!18924 (left!42822 err!4601)))))))))

(assert (= (and d!1636179 c!870584) b!5070556))

(assert (= (and d!1636179 (not c!870584)) b!5070557))

(declare-fun m!6116004 () Bool)

(assert (=> b!5070557 m!6116004))

(assert (=> b!5069957 d!1636179))

(declare-fun d!1636181 () Bool)

(assert (=> d!1636181 (= (list!18999 (xs!18924 (left!42822 err!4601))) (innerList!15656 (xs!18924 (left!42822 err!4601))))))

(assert (=> b!5069957 d!1636181))

(declare-fun d!1636183 () Bool)

(assert (=> d!1636183 (= (max!0 (height!2145 (left!42822 (right!43152 ys!41))) (height!2145 (right!43152 (right!43152 ys!41)))) (ite (< (height!2145 (left!42822 (right!43152 ys!41))) (height!2145 (right!43152 (right!43152 ys!41)))) (height!2145 (right!43152 (right!43152 ys!41))) (height!2145 (left!42822 (right!43152 ys!41)))))))

(assert (=> b!5070012 d!1636183))

(assert (=> b!5070012 d!1636117))

(assert (=> b!5070012 d!1636119))

(declare-fun d!1636185 () Bool)

(assert (=> d!1636185 (= (height!2145 (left!42822 (left!42822 lt!2089379))) (ite ((_ is Empty!15568) (left!42822 (left!42822 lt!2089379))) 0 (ite ((_ is Leaf!25857) (left!42822 (left!42822 lt!2089379))) 1 (cheight!15779 (left!42822 (left!42822 lt!2089379))))))))

(assert (=> b!5069910 d!1636185))

(declare-fun d!1636187 () Bool)

(assert (=> d!1636187 (= (height!2145 (right!43152 (left!42822 lt!2089379))) (ite ((_ is Empty!15568) (right!43152 (left!42822 lt!2089379))) 0 (ite ((_ is Leaf!25857) (right!43152 (left!42822 lt!2089379))) 1 (cheight!15779 (right!43152 (left!42822 lt!2089379))))))))

(assert (=> b!5069910 d!1636187))

(declare-fun d!1636189 () Bool)

(assert (=> d!1636189 (= (inv!77578 (xs!18924 (right!43152 (left!42822 xs!286)))) (<= (size!39082 (innerList!15656 (xs!18924 (right!43152 (left!42822 xs!286))))) 2147483647))))

(declare-fun bs!1190111 () Bool)

(assert (= bs!1190111 d!1636189))

(declare-fun m!6116006 () Bool)

(assert (=> bs!1190111 m!6116006))

(assert (=> b!5070159 d!1636189))

(declare-fun d!1636191 () Bool)

(assert (=> d!1636191 (= (height!2145 (left!42822 (right!43152 lt!2089379))) (ite ((_ is Empty!15568) (left!42822 (right!43152 lt!2089379))) 0 (ite ((_ is Leaf!25857) (left!42822 (right!43152 lt!2089379))) 1 (cheight!15779 (left!42822 (right!43152 lt!2089379))))))))

(assert (=> b!5069937 d!1636191))

(declare-fun d!1636193 () Bool)

(assert (=> d!1636193 (= (height!2145 (right!43152 (right!43152 lt!2089379))) (ite ((_ is Empty!15568) (right!43152 (right!43152 lt!2089379))) 0 (ite ((_ is Leaf!25857) (right!43152 (right!43152 lt!2089379))) 1 (cheight!15779 (right!43152 (right!43152 lt!2089379))))))))

(assert (=> b!5069937 d!1636193))

(declare-fun d!1636195 () Bool)

(declare-fun lt!2089468 () Int)

(assert (=> d!1636195 (>= lt!2089468 0)))

(declare-fun e!3163907 () Int)

(assert (=> d!1636195 (= lt!2089468 e!3163907)))

(declare-fun c!870585 () Bool)

(assert (=> d!1636195 (= c!870585 ((_ is Nil!58438) (list!18999 (xs!18924 ys!41))))))

(assert (=> d!1636195 (= (size!39082 (list!18999 (xs!18924 ys!41))) lt!2089468)))

(declare-fun b!5070558 () Bool)

(assert (=> b!5070558 (= e!3163907 0)))

(declare-fun b!5070559 () Bool)

(assert (=> b!5070559 (= e!3163907 (+ 1 (size!39082 (t!371315 (list!18999 (xs!18924 ys!41))))))))

(assert (= (and d!1636195 c!870585) b!5070558))

(assert (= (and d!1636195 (not c!870585)) b!5070559))

(declare-fun m!6116008 () Bool)

(assert (=> b!5070559 m!6116008))

(assert (=> b!5070069 d!1636195))

(assert (=> b!5070069 d!1635775))

(declare-fun b!5070562 () Bool)

(declare-fun res!2158891 () Bool)

(declare-fun e!3163909 () Bool)

(assert (=> b!5070562 (=> (not res!2158891) (not e!3163909))))

(declare-fun lt!2089469 () List!58562)

(assert (=> b!5070562 (= res!2158891 (= (size!39082 lt!2089469) (+ (size!39082 call!353246) (size!39082 (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41))))))))

(declare-fun b!5070563 () Bool)

(assert (=> b!5070563 (= e!3163909 (or (not (= (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41)) Nil!58438)) (= lt!2089469 call!353246)))))

(declare-fun b!5070560 () Bool)

(declare-fun e!3163908 () List!58562)

(assert (=> b!5070560 (= e!3163908 (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41)))))

(declare-fun d!1636197 () Bool)

(assert (=> d!1636197 e!3163909))

(declare-fun res!2158890 () Bool)

(assert (=> d!1636197 (=> (not res!2158890) (not e!3163909))))

(assert (=> d!1636197 (= res!2158890 (= (content!10420 lt!2089469) ((_ map or) (content!10420 call!353246) (content!10420 (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41))))))))

(assert (=> d!1636197 (= lt!2089469 e!3163908)))

(declare-fun c!870586 () Bool)

(assert (=> d!1636197 (= c!870586 ((_ is Nil!58438) call!353246))))

(assert (=> d!1636197 (= (++!12793 call!353246 (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41))) lt!2089469)))

(declare-fun b!5070561 () Bool)

(assert (=> b!5070561 (= e!3163908 (Cons!58438 (h!64886 call!353246) (++!12793 (t!371315 call!353246) (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41)))))))

(assert (= (and d!1636197 c!870586) b!5070560))

(assert (= (and d!1636197 (not c!870586)) b!5070561))

(assert (= (and d!1636197 res!2158890) b!5070562))

(assert (= (and b!5070562 res!2158891) b!5070563))

(declare-fun m!6116010 () Bool)

(assert (=> b!5070562 m!6116010))

(declare-fun m!6116012 () Bool)

(assert (=> b!5070562 m!6116012))

(assert (=> b!5070562 m!6114540))

(assert (=> b!5070562 m!6115976))

(declare-fun m!6116014 () Bool)

(assert (=> d!1636197 m!6116014))

(declare-fun m!6116016 () Bool)

(assert (=> d!1636197 m!6116016))

(assert (=> d!1636197 m!6114540))

(assert (=> d!1636197 m!6115980))

(assert (=> b!5070561 m!6114540))

(declare-fun m!6116018 () Bool)

(assert (=> b!5070561 m!6116018))

(assert (=> bm!353244 d!1636197))

(assert (=> b!5070048 d!1636169))

(assert (=> b!5070048 d!1636171))

(declare-fun d!1636199 () Bool)

(declare-fun lt!2089470 () Bool)

(assert (=> d!1636199 (= lt!2089470 (isEmpty!31640 (list!18997 (right!43152 (right!43152 ys!41)))))))

(assert (=> d!1636199 (= lt!2089470 (= (size!39084 (right!43152 (right!43152 ys!41))) 0))))

(assert (=> d!1636199 (= (isEmpty!31638 (right!43152 (right!43152 ys!41))) lt!2089470)))

(declare-fun bs!1190112 () Bool)

(assert (= bs!1190112 d!1636199))

(assert (=> bs!1190112 m!6114868))

(assert (=> bs!1190112 m!6114868))

(declare-fun m!6116020 () Bool)

(assert (=> bs!1190112 m!6116020))

(assert (=> bs!1190112 m!6114970))

(assert (=> b!5070037 d!1636199))

(declare-fun b!5070566 () Bool)

(declare-fun res!2158893 () Bool)

(declare-fun e!3163911 () Bool)

(assert (=> b!5070566 (=> (not res!2158893) (not e!3163911))))

(declare-fun lt!2089471 () List!58562)

(assert (=> b!5070566 (= res!2158893 (= (size!39082 lt!2089471) (+ (size!39082 (list!18997 (left!42822 (right!43152 lt!2089379)))) (size!39082 (list!18997 (right!43152 (right!43152 lt!2089379)))))))))

(declare-fun b!5070567 () Bool)

(assert (=> b!5070567 (= e!3163911 (or (not (= (list!18997 (right!43152 (right!43152 lt!2089379))) Nil!58438)) (= lt!2089471 (list!18997 (left!42822 (right!43152 lt!2089379))))))))

(declare-fun b!5070564 () Bool)

(declare-fun e!3163910 () List!58562)

(assert (=> b!5070564 (= e!3163910 (list!18997 (right!43152 (right!43152 lt!2089379))))))

(declare-fun d!1636201 () Bool)

(assert (=> d!1636201 e!3163911))

(declare-fun res!2158892 () Bool)

(assert (=> d!1636201 (=> (not res!2158892) (not e!3163911))))

(assert (=> d!1636201 (= res!2158892 (= (content!10420 lt!2089471) ((_ map or) (content!10420 (list!18997 (left!42822 (right!43152 lt!2089379)))) (content!10420 (list!18997 (right!43152 (right!43152 lt!2089379)))))))))

(assert (=> d!1636201 (= lt!2089471 e!3163910)))

(declare-fun c!870587 () Bool)

(assert (=> d!1636201 (= c!870587 ((_ is Nil!58438) (list!18997 (left!42822 (right!43152 lt!2089379)))))))

(assert (=> d!1636201 (= (++!12793 (list!18997 (left!42822 (right!43152 lt!2089379))) (list!18997 (right!43152 (right!43152 lt!2089379)))) lt!2089471)))

(declare-fun b!5070565 () Bool)

(assert (=> b!5070565 (= e!3163910 (Cons!58438 (h!64886 (list!18997 (left!42822 (right!43152 lt!2089379)))) (++!12793 (t!371315 (list!18997 (left!42822 (right!43152 lt!2089379)))) (list!18997 (right!43152 (right!43152 lt!2089379))))))))

(assert (= (and d!1636201 c!870587) b!5070564))

(assert (= (and d!1636201 (not c!870587)) b!5070565))

(assert (= (and d!1636201 res!2158892) b!5070566))

(assert (= (and b!5070566 res!2158893) b!5070567))

(declare-fun m!6116022 () Bool)

(assert (=> b!5070566 m!6116022))

(assert (=> b!5070566 m!6114810))

(declare-fun m!6116024 () Bool)

(assert (=> b!5070566 m!6116024))

(assert (=> b!5070566 m!6114812))

(declare-fun m!6116026 () Bool)

(assert (=> b!5070566 m!6116026))

(declare-fun m!6116028 () Bool)

(assert (=> d!1636201 m!6116028))

(assert (=> d!1636201 m!6114810))

(declare-fun m!6116030 () Bool)

(assert (=> d!1636201 m!6116030))

(assert (=> d!1636201 m!6114812))

(declare-fun m!6116032 () Bool)

(assert (=> d!1636201 m!6116032))

(assert (=> b!5070565 m!6114812))

(declare-fun m!6116034 () Bool)

(assert (=> b!5070565 m!6116034))

(assert (=> b!5069923 d!1636201))

(declare-fun b!5070570 () Bool)

(declare-fun e!3163913 () List!58562)

(assert (=> b!5070570 (= e!3163913 (list!18999 (xs!18924 (left!42822 (right!43152 lt!2089379)))))))

(declare-fun d!1636203 () Bool)

(declare-fun c!870588 () Bool)

(assert (=> d!1636203 (= c!870588 ((_ is Empty!15568) (left!42822 (right!43152 lt!2089379))))))

(declare-fun e!3163912 () List!58562)

(assert (=> d!1636203 (= (list!18997 (left!42822 (right!43152 lt!2089379))) e!3163912)))

(declare-fun b!5070569 () Bool)

(assert (=> b!5070569 (= e!3163912 e!3163913)))

(declare-fun c!870589 () Bool)

(assert (=> b!5070569 (= c!870589 ((_ is Leaf!25857) (left!42822 (right!43152 lt!2089379))))))

(declare-fun b!5070568 () Bool)

(assert (=> b!5070568 (= e!3163912 Nil!58438)))

(declare-fun b!5070571 () Bool)

(assert (=> b!5070571 (= e!3163913 (++!12793 (list!18997 (left!42822 (left!42822 (right!43152 lt!2089379)))) (list!18997 (right!43152 (left!42822 (right!43152 lt!2089379))))))))

(assert (= (and d!1636203 c!870588) b!5070568))

(assert (= (and d!1636203 (not c!870588)) b!5070569))

(assert (= (and b!5070569 c!870589) b!5070570))

(assert (= (and b!5070569 (not c!870589)) b!5070571))

(declare-fun m!6116036 () Bool)

(assert (=> b!5070570 m!6116036))

(declare-fun m!6116038 () Bool)

(assert (=> b!5070571 m!6116038))

(declare-fun m!6116040 () Bool)

(assert (=> b!5070571 m!6116040))

(assert (=> b!5070571 m!6116038))

(assert (=> b!5070571 m!6116040))

(declare-fun m!6116042 () Bool)

(assert (=> b!5070571 m!6116042))

(assert (=> b!5069923 d!1636203))

(declare-fun b!5070574 () Bool)

(declare-fun e!3163915 () List!58562)

(assert (=> b!5070574 (= e!3163915 (list!18999 (xs!18924 (right!43152 (right!43152 lt!2089379)))))))

(declare-fun d!1636205 () Bool)

(declare-fun c!870590 () Bool)

(assert (=> d!1636205 (= c!870590 ((_ is Empty!15568) (right!43152 (right!43152 lt!2089379))))))

(declare-fun e!3163914 () List!58562)

(assert (=> d!1636205 (= (list!18997 (right!43152 (right!43152 lt!2089379))) e!3163914)))

(declare-fun b!5070573 () Bool)

(assert (=> b!5070573 (= e!3163914 e!3163915)))

(declare-fun c!870591 () Bool)

(assert (=> b!5070573 (= c!870591 ((_ is Leaf!25857) (right!43152 (right!43152 lt!2089379))))))

(declare-fun b!5070572 () Bool)

(assert (=> b!5070572 (= e!3163914 Nil!58438)))

(declare-fun b!5070575 () Bool)

(assert (=> b!5070575 (= e!3163915 (++!12793 (list!18997 (left!42822 (right!43152 (right!43152 lt!2089379)))) (list!18997 (right!43152 (right!43152 (right!43152 lt!2089379))))))))

(assert (= (and d!1636205 c!870590) b!5070572))

(assert (= (and d!1636205 (not c!870590)) b!5070573))

(assert (= (and b!5070573 c!870591) b!5070574))

(assert (= (and b!5070573 (not c!870591)) b!5070575))

(declare-fun m!6116044 () Bool)

(assert (=> b!5070574 m!6116044))

(declare-fun m!6116046 () Bool)

(assert (=> b!5070575 m!6116046))

(declare-fun m!6116048 () Bool)

(assert (=> b!5070575 m!6116048))

(assert (=> b!5070575 m!6116046))

(assert (=> b!5070575 m!6116048))

(declare-fun m!6116050 () Bool)

(assert (=> b!5070575 m!6116050))

(assert (=> b!5069923 d!1636205))

(declare-fun d!1636207 () Bool)

(assert (=> d!1636207 (= (inv!77578 (xs!18924 (right!43152 (right!43152 xs!286)))) (<= (size!39082 (innerList!15656 (xs!18924 (right!43152 (right!43152 xs!286))))) 2147483647))))

(declare-fun bs!1190113 () Bool)

(assert (= bs!1190113 d!1636207))

(declare-fun m!6116052 () Bool)

(assert (=> bs!1190113 m!6116052))

(assert (=> b!5070146 d!1636207))

(assert (=> bm!353255 d!1635905))

(declare-fun d!1636209 () Bool)

(declare-fun lt!2089472 () Int)

(assert (=> d!1636209 (>= lt!2089472 0)))

(declare-fun e!3163916 () Int)

(assert (=> d!1636209 (= lt!2089472 e!3163916)))

(declare-fun c!870592 () Bool)

(assert (=> d!1636209 (= c!870592 ((_ is Nil!58438) (innerList!15656 (xs!18924 (left!42822 xs!286)))))))

(assert (=> d!1636209 (= (size!39082 (innerList!15656 (xs!18924 (left!42822 xs!286)))) lt!2089472)))

(declare-fun b!5070576 () Bool)

(assert (=> b!5070576 (= e!3163916 0)))

(declare-fun b!5070577 () Bool)

(assert (=> b!5070577 (= e!3163916 (+ 1 (size!39082 (t!371315 (innerList!15656 (xs!18924 (left!42822 xs!286)))))))))

(assert (= (and d!1636209 c!870592) b!5070576))

(assert (= (and d!1636209 (not c!870592)) b!5070577))

(declare-fun m!6116054 () Bool)

(assert (=> b!5070577 m!6116054))

(assert (=> d!1635769 d!1636209))

(declare-fun d!1636211 () Bool)

(declare-fun e!3163917 () Bool)

(assert (=> d!1636211 e!3163917))

(declare-fun c!870593 () Bool)

(assert (=> d!1636211 (= c!870593 ((_ is Nil!58438) (t!371315 (list!18997 (left!42822 (right!43152 xs!286))))))))

(assert (=> d!1636211 (= (appendAssoc!303 (t!371315 (list!18997 (left!42822 (right!43152 xs!286)))) (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41)) true)))

(declare-fun bm!353293 () Bool)

(declare-fun call!353298 () List!58562)

(assert (=> bm!353293 (= call!353298 (++!12793 (t!371315 (list!18997 (left!42822 (right!43152 xs!286)))) (list!18997 (right!43152 (right!43152 xs!286)))))))

(declare-fun bm!353294 () Bool)

(declare-fun call!353299 () List!58562)

(declare-fun call!353300 () List!58562)

(assert (=> bm!353294 (= call!353299 (++!12793 (t!371315 (list!18997 (left!42822 (right!43152 xs!286)))) call!353300))))

(declare-fun b!5070578 () Bool)

(declare-fun call!353301 () List!58562)

(assert (=> b!5070578 (= e!3163917 (= call!353301 call!353299))))

(declare-fun lt!2089473 () Bool)

(assert (=> b!5070578 (= lt!2089473 (appendAssoc!303 (t!371315 (t!371315 (list!18997 (left!42822 (right!43152 xs!286))))) (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41)))))

(declare-fun b!5070579 () Bool)

(assert (=> b!5070579 (= e!3163917 (= call!353301 call!353299))))

(declare-fun bm!353295 () Bool)

(assert (=> bm!353295 (= call!353300 (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41)))))

(declare-fun bm!353296 () Bool)

(assert (=> bm!353296 (= call!353301 (++!12793 call!353298 (list!18997 ys!41)))))

(assert (= (and d!1636211 c!870593) b!5070579))

(assert (= (and d!1636211 (not c!870593)) b!5070578))

(assert (= (or b!5070579 b!5070578) bm!353293))

(assert (= (or b!5070579 b!5070578) bm!353295))

(assert (= (or b!5070579 b!5070578) bm!353294))

(assert (= (or b!5070579 b!5070578) bm!353296))

(assert (=> bm!353295 m!6114524))

(assert (=> bm!353295 m!6114412))

(assert (=> bm!353295 m!6114540))

(assert (=> bm!353293 m!6114524))

(declare-fun m!6116056 () Bool)

(assert (=> bm!353293 m!6116056))

(assert (=> b!5070578 m!6114524))

(assert (=> b!5070578 m!6114412))

(declare-fun m!6116058 () Bool)

(assert (=> b!5070578 m!6116058))

(declare-fun m!6116060 () Bool)

(assert (=> bm!353294 m!6116060))

(assert (=> bm!353296 m!6114412))

(declare-fun m!6116062 () Bool)

(assert (=> bm!353296 m!6116062))

(assert (=> b!5070001 d!1636211))

(declare-fun d!1636213 () Bool)

(declare-fun lt!2089474 () Int)

(assert (=> d!1636213 (>= lt!2089474 0)))

(declare-fun e!3163918 () Int)

(assert (=> d!1636213 (= lt!2089474 e!3163918)))

(declare-fun c!870594 () Bool)

(assert (=> d!1636213 (= c!870594 ((_ is Nil!58438) (list!18999 (xs!18924 (right!43152 err!4601)))))))

(assert (=> d!1636213 (= (size!39082 (list!18999 (xs!18924 (right!43152 err!4601)))) lt!2089474)))

(declare-fun b!5070580 () Bool)

(assert (=> b!5070580 (= e!3163918 0)))

(declare-fun b!5070581 () Bool)

(assert (=> b!5070581 (= e!3163918 (+ 1 (size!39082 (t!371315 (list!18999 (xs!18924 (right!43152 err!4601)))))))))

(assert (= (and d!1636213 c!870594) b!5070580))

(assert (= (and d!1636213 (not c!870594)) b!5070581))

(declare-fun m!6116064 () Bool)

(assert (=> b!5070581 m!6116064))

(assert (=> b!5070097 d!1636213))

(declare-fun d!1636215 () Bool)

(assert (=> d!1636215 (= (list!18999 (xs!18924 (right!43152 err!4601))) (innerList!15656 (xs!18924 (right!43152 err!4601))))))

(assert (=> b!5070097 d!1636215))

(declare-fun d!1636217 () Bool)

(assert (=> d!1636217 (= (inv!77578 (xs!18924 (left!42822 (left!42822 ys!41)))) (<= (size!39082 (innerList!15656 (xs!18924 (left!42822 (left!42822 ys!41))))) 2147483647))))

(declare-fun bs!1190114 () Bool)

(assert (= bs!1190114 d!1636217))

(declare-fun m!6116066 () Bool)

(assert (=> bs!1190114 m!6116066))

(assert (=> b!5070171 d!1636217))

(declare-fun d!1636219 () Bool)

(declare-fun lt!2089475 () Int)

(assert (=> d!1636219 (>= lt!2089475 0)))

(declare-fun e!3163919 () Int)

(assert (=> d!1636219 (= lt!2089475 e!3163919)))

(declare-fun c!870595 () Bool)

(assert (=> d!1636219 (= c!870595 ((_ is Nil!58438) (innerList!15656 (xs!18924 (right!43152 err!4601)))))))

(assert (=> d!1636219 (= (size!39082 (innerList!15656 (xs!18924 (right!43152 err!4601)))) lt!2089475)))

(declare-fun b!5070582 () Bool)

(assert (=> b!5070582 (= e!3163919 0)))

(declare-fun b!5070583 () Bool)

(assert (=> b!5070583 (= e!3163919 (+ 1 (size!39082 (t!371315 (innerList!15656 (xs!18924 (right!43152 err!4601)))))))))

(assert (= (and d!1636219 c!870595) b!5070582))

(assert (= (and d!1636219 (not c!870595)) b!5070583))

(declare-fun m!6116068 () Bool)

(assert (=> b!5070583 m!6116068))

(assert (=> d!1635787 d!1636219))

(declare-fun d!1636221 () Bool)

(declare-fun lt!2089476 () Int)

(assert (=> d!1636221 (>= lt!2089476 0)))

(declare-fun e!3163920 () Int)

(assert (=> d!1636221 (= lt!2089476 e!3163920)))

(declare-fun c!870596 () Bool)

(assert (=> d!1636221 (= c!870596 ((_ is Nil!58438) (list!18999 (xs!18924 (left!42822 xs!286)))))))

(assert (=> d!1636221 (= (size!39082 (list!18999 (xs!18924 (left!42822 xs!286)))) lt!2089476)))

(declare-fun b!5070584 () Bool)

(assert (=> b!5070584 (= e!3163920 0)))

(declare-fun b!5070585 () Bool)

(assert (=> b!5070585 (= e!3163920 (+ 1 (size!39082 (t!371315 (list!18999 (xs!18924 (left!42822 xs!286)))))))))

(assert (= (and d!1636221 c!870596) b!5070584))

(assert (= (and d!1636221 (not c!870596)) b!5070585))

(declare-fun m!6116070 () Bool)

(assert (=> b!5070585 m!6116070))

(assert (=> d!1635815 d!1636221))

(declare-fun d!1636223 () Bool)

(assert (=> d!1636223 (= (list!18999 (xs!18924 (left!42822 xs!286))) (innerList!15656 (xs!18924 (left!42822 xs!286))))))

(assert (=> d!1635815 d!1636223))

(declare-fun b!5070588 () Bool)

(declare-fun res!2158895 () Bool)

(declare-fun e!3163922 () Bool)

(assert (=> b!5070588 (=> (not res!2158895) (not e!3163922))))

(declare-fun lt!2089477 () List!58562)

(assert (=> b!5070588 (= res!2158895 (= (size!39082 lt!2089477) (+ (size!39082 call!353250) (size!39082 (list!18997 (right!43152 (left!42822 ys!41)))))))))

(declare-fun b!5070589 () Bool)

(assert (=> b!5070589 (= e!3163922 (or (not (= (list!18997 (right!43152 (left!42822 ys!41))) Nil!58438)) (= lt!2089477 call!353250)))))

(declare-fun b!5070586 () Bool)

(declare-fun e!3163921 () List!58562)

(assert (=> b!5070586 (= e!3163921 (list!18997 (right!43152 (left!42822 ys!41))))))

(declare-fun d!1636225 () Bool)

(assert (=> d!1636225 e!3163922))

(declare-fun res!2158894 () Bool)

(assert (=> d!1636225 (=> (not res!2158894) (not e!3163922))))

(assert (=> d!1636225 (= res!2158894 (= (content!10420 lt!2089477) ((_ map or) (content!10420 call!353250) (content!10420 (list!18997 (right!43152 (left!42822 ys!41)))))))))

(assert (=> d!1636225 (= lt!2089477 e!3163921)))

(declare-fun c!870597 () Bool)

(assert (=> d!1636225 (= c!870597 ((_ is Nil!58438) call!353250))))

(assert (=> d!1636225 (= (++!12793 call!353250 (list!18997 (right!43152 (left!42822 ys!41)))) lt!2089477)))

(declare-fun b!5070587 () Bool)

(assert (=> b!5070587 (= e!3163921 (Cons!58438 (h!64886 call!353250) (++!12793 (t!371315 call!353250) (list!18997 (right!43152 (left!42822 ys!41))))))))

(assert (= (and d!1636225 c!870597) b!5070586))

(assert (= (and d!1636225 (not c!870597)) b!5070587))

(assert (= (and d!1636225 res!2158894) b!5070588))

(assert (= (and b!5070588 res!2158895) b!5070589))

(declare-fun m!6116072 () Bool)

(assert (=> b!5070588 m!6116072))

(declare-fun m!6116074 () Bool)

(assert (=> b!5070588 m!6116074))

(assert (=> b!5070588 m!6114516))

(assert (=> b!5070588 m!6115994))

(declare-fun m!6116076 () Bool)

(assert (=> d!1636225 m!6116076))

(declare-fun m!6116078 () Bool)

(assert (=> d!1636225 m!6116078))

(assert (=> d!1636225 m!6114516))

(assert (=> d!1636225 m!6115998))

(assert (=> b!5070587 m!6114516))

(declare-fun m!6116080 () Bool)

(assert (=> b!5070587 m!6116080))

(assert (=> bm!353248 d!1636225))

(declare-fun d!1636227 () Bool)

(assert (=> d!1636227 (= (height!2145 (left!42822 (right!43152 xs!286))) (ite ((_ is Empty!15568) (left!42822 (right!43152 xs!286))) 0 (ite ((_ is Leaf!25857) (left!42822 (right!43152 xs!286))) 1 (cheight!15779 (left!42822 (right!43152 xs!286))))))))

(assert (=> b!5070065 d!1636227))

(declare-fun d!1636229 () Bool)

(assert (=> d!1636229 (= (height!2145 (right!43152 (right!43152 xs!286))) (ite ((_ is Empty!15568) (right!43152 (right!43152 xs!286))) 0 (ite ((_ is Leaf!25857) (right!43152 (right!43152 xs!286))) 1 (cheight!15779 (right!43152 (right!43152 xs!286))))))))

(assert (=> b!5070065 d!1636229))

(declare-fun d!1636231 () Bool)

(declare-fun res!2158896 () Bool)

(declare-fun e!3163923 () Bool)

(assert (=> d!1636231 (=> (not res!2158896) (not e!3163923))))

(assert (=> d!1636231 (= res!2158896 (= (csize!31366 (right!43152 (right!43152 ys!41))) (+ (size!39084 (left!42822 (right!43152 (right!43152 ys!41)))) (size!39084 (right!43152 (right!43152 (right!43152 ys!41)))))))))

(assert (=> d!1636231 (= (inv!77580 (right!43152 (right!43152 ys!41))) e!3163923)))

(declare-fun b!5070590 () Bool)

(declare-fun res!2158897 () Bool)

(assert (=> b!5070590 (=> (not res!2158897) (not e!3163923))))

(assert (=> b!5070590 (= res!2158897 (and (not (= (left!42822 (right!43152 (right!43152 ys!41))) Empty!15568)) (not (= (right!43152 (right!43152 (right!43152 ys!41))) Empty!15568))))))

(declare-fun b!5070591 () Bool)

(declare-fun res!2158898 () Bool)

(assert (=> b!5070591 (=> (not res!2158898) (not e!3163923))))

(assert (=> b!5070591 (= res!2158898 (= (cheight!15779 (right!43152 (right!43152 ys!41))) (+ (max!0 (height!2145 (left!42822 (right!43152 (right!43152 ys!41)))) (height!2145 (right!43152 (right!43152 (right!43152 ys!41))))) 1)))))

(declare-fun b!5070592 () Bool)

(assert (=> b!5070592 (= e!3163923 (<= 0 (cheight!15779 (right!43152 (right!43152 ys!41)))))))

(assert (= (and d!1636231 res!2158896) b!5070590))

(assert (= (and b!5070590 res!2158897) b!5070591))

(assert (= (and b!5070591 res!2158898) b!5070592))

(declare-fun m!6116082 () Bool)

(assert (=> d!1636231 m!6116082))

(declare-fun m!6116084 () Bool)

(assert (=> d!1636231 m!6116084))

(declare-fun m!6116086 () Bool)

(assert (=> b!5070591 m!6116086))

(declare-fun m!6116088 () Bool)

(assert (=> b!5070591 m!6116088))

(assert (=> b!5070591 m!6116086))

(assert (=> b!5070591 m!6116088))

(declare-fun m!6116090 () Bool)

(assert (=> b!5070591 m!6116090))

(assert (=> b!5069948 d!1636231))

(declare-fun d!1636233 () Bool)

(declare-fun res!2158899 () Bool)

(declare-fun e!3163924 () Bool)

(assert (=> d!1636233 (=> (not res!2158899) (not e!3163924))))

(assert (=> d!1636233 (= res!2158899 (<= (size!39082 (list!18999 (xs!18924 (right!43152 (right!43152 err!4601))))) 512))))

(assert (=> d!1636233 (= (inv!77582 (right!43152 (right!43152 err!4601))) e!3163924)))

(declare-fun b!5070593 () Bool)

(declare-fun res!2158900 () Bool)

(assert (=> b!5070593 (=> (not res!2158900) (not e!3163924))))

(assert (=> b!5070593 (= res!2158900 (= (csize!31367 (right!43152 (right!43152 err!4601))) (size!39082 (list!18999 (xs!18924 (right!43152 (right!43152 err!4601)))))))))

(declare-fun b!5070594 () Bool)

(assert (=> b!5070594 (= e!3163924 (and (> (csize!31367 (right!43152 (right!43152 err!4601))) 0) (<= (csize!31367 (right!43152 (right!43152 err!4601))) 512)))))

(assert (= (and d!1636233 res!2158899) b!5070593))

(assert (= (and b!5070593 res!2158900) b!5070594))

(declare-fun m!6116092 () Bool)

(assert (=> d!1636233 m!6116092))

(assert (=> d!1636233 m!6116092))

(declare-fun m!6116094 () Bool)

(assert (=> d!1636233 m!6116094))

(assert (=> b!5070593 m!6116092))

(assert (=> b!5070593 m!6116092))

(assert (=> b!5070593 m!6116094))

(assert (=> b!5070088 d!1636233))

(declare-fun d!1636235 () Bool)

(assert (=> d!1636235 (= (isEmpty!31640 (list!18997 (left!42822 lt!2089379))) ((_ is Nil!58438) (list!18997 (left!42822 lt!2089379))))))

(assert (=> d!1635865 d!1636235))

(assert (=> d!1635865 d!1635753))

(declare-fun d!1636237 () Bool)

(declare-fun lt!2089478 () Int)

(assert (=> d!1636237 (= lt!2089478 (size!39082 (list!18997 (left!42822 lt!2089379))))))

(assert (=> d!1636237 (= lt!2089478 (ite ((_ is Empty!15568) (left!42822 lt!2089379)) 0 (ite ((_ is Leaf!25857) (left!42822 lt!2089379)) (csize!31367 (left!42822 lt!2089379)) (csize!31366 (left!42822 lt!2089379)))))))

(assert (=> d!1636237 (= (size!39084 (left!42822 lt!2089379)) lt!2089478)))

(declare-fun bs!1190115 () Bool)

(assert (= bs!1190115 d!1636237))

(assert (=> bs!1190115 m!6114598))

(assert (=> bs!1190115 m!6114598))

(assert (=> bs!1190115 m!6114788))

(assert (=> d!1635865 d!1636237))

(assert (=> b!5070119 d!1636131))

(declare-fun d!1636239 () Bool)

(declare-fun lt!2089479 () Bool)

(assert (=> d!1636239 (= lt!2089479 (isEmpty!31640 (list!18997 (right!43152 (right!43152 lt!2089379)))))))

(assert (=> d!1636239 (= lt!2089479 (= (size!39084 (right!43152 (right!43152 lt!2089379))) 0))))

(assert (=> d!1636239 (= (isEmpty!31638 (right!43152 (right!43152 lt!2089379))) lt!2089479)))

(declare-fun bs!1190116 () Bool)

(assert (= bs!1190116 d!1636239))

(assert (=> bs!1190116 m!6114812))

(assert (=> bs!1190116 m!6114812))

(declare-fun m!6116096 () Bool)

(assert (=> bs!1190116 m!6116096))

(declare-fun m!6116098 () Bool)

(assert (=> bs!1190116 m!6116098))

(assert (=> b!5069938 d!1636239))

(declare-fun d!1636241 () Bool)

(declare-fun lt!2089480 () Int)

(assert (=> d!1636241 (>= lt!2089480 0)))

(declare-fun e!3163925 () Int)

(assert (=> d!1636241 (= lt!2089480 e!3163925)))

(declare-fun c!870598 () Bool)

(assert (=> d!1636241 (= c!870598 ((_ is Nil!58438) (innerList!15656 (xs!18924 (left!42822 err!4601)))))))

(assert (=> d!1636241 (= (size!39082 (innerList!15656 (xs!18924 (left!42822 err!4601)))) lt!2089480)))

(declare-fun b!5070595 () Bool)

(assert (=> b!5070595 (= e!3163925 0)))

(declare-fun b!5070596 () Bool)

(assert (=> b!5070596 (= e!3163925 (+ 1 (size!39082 (t!371315 (innerList!15656 (xs!18924 (left!42822 err!4601)))))))))

(assert (= (and d!1636241 c!870598) b!5070595))

(assert (= (and d!1636241 (not c!870598)) b!5070596))

(declare-fun m!6116100 () Bool)

(assert (=> b!5070596 m!6116100))

(assert (=> d!1635845 d!1636241))

(declare-fun d!1636243 () Bool)

(declare-fun res!2158901 () Bool)

(declare-fun e!3163926 () Bool)

(assert (=> d!1636243 (=> (not res!2158901) (not e!3163926))))

(assert (=> d!1636243 (= res!2158901 (<= (size!39082 (list!18999 (xs!18924 (right!43152 (left!42822 err!4601))))) 512))))

(assert (=> d!1636243 (= (inv!77582 (right!43152 (left!42822 err!4601))) e!3163926)))

(declare-fun b!5070597 () Bool)

(declare-fun res!2158902 () Bool)

(assert (=> b!5070597 (=> (not res!2158902) (not e!3163926))))

(assert (=> b!5070597 (= res!2158902 (= (csize!31367 (right!43152 (left!42822 err!4601))) (size!39082 (list!18999 (xs!18924 (right!43152 (left!42822 err!4601)))))))))

(declare-fun b!5070598 () Bool)

(assert (=> b!5070598 (= e!3163926 (and (> (csize!31367 (right!43152 (left!42822 err!4601))) 0) (<= (csize!31367 (right!43152 (left!42822 err!4601))) 512)))))

(assert (= (and d!1636243 res!2158901) b!5070597))

(assert (= (and b!5070597 res!2158902) b!5070598))

(declare-fun m!6116102 () Bool)

(assert (=> d!1636243 m!6116102))

(assert (=> d!1636243 m!6116102))

(declare-fun m!6116104 () Bool)

(assert (=> d!1636243 m!6116104))

(assert (=> b!5070597 m!6116102))

(assert (=> b!5070597 m!6116102))

(assert (=> b!5070597 m!6116104))

(assert (=> b!5070136 d!1636243))

(declare-fun d!1636245 () Bool)

(declare-fun lt!2089481 () Int)

(assert (=> d!1636245 (>= lt!2089481 0)))

(declare-fun e!3163927 () Int)

(assert (=> d!1636245 (= lt!2089481 e!3163927)))

(declare-fun c!870599 () Bool)

(assert (=> d!1636245 (= c!870599 ((_ is Nil!58438) (t!371315 (innerList!15656 (xs!18924 err!4601)))))))

(assert (=> d!1636245 (= (size!39082 (t!371315 (innerList!15656 (xs!18924 err!4601)))) lt!2089481)))

(declare-fun b!5070599 () Bool)

(assert (=> b!5070599 (= e!3163927 0)))

(declare-fun b!5070600 () Bool)

(assert (=> b!5070600 (= e!3163927 (+ 1 (size!39082 (t!371315 (t!371315 (innerList!15656 (xs!18924 err!4601)))))))))

(assert (= (and d!1636245 c!870599) b!5070599))

(assert (= (and d!1636245 (not c!870599)) b!5070600))

(declare-fun m!6116106 () Bool)

(assert (=> b!5070600 m!6116106))

(assert (=> b!5070126 d!1636245))

(declare-fun d!1636247 () Bool)

(declare-fun lt!2089482 () Int)

(assert (=> d!1636247 (= lt!2089482 (size!39082 (list!18997 (left!42822 (right!43152 err!4601)))))))

(assert (=> d!1636247 (= lt!2089482 (ite ((_ is Empty!15568) (left!42822 (right!43152 err!4601))) 0 (ite ((_ is Leaf!25857) (left!42822 (right!43152 err!4601))) (csize!31367 (left!42822 (right!43152 err!4601))) (csize!31366 (left!42822 (right!43152 err!4601))))))))

(assert (=> d!1636247 (= (size!39084 (left!42822 (right!43152 err!4601))) lt!2089482)))

(declare-fun bs!1190117 () Bool)

(assert (= bs!1190117 d!1636247))

(declare-fun m!6116108 () Bool)

(assert (=> bs!1190117 m!6116108))

(assert (=> bs!1190117 m!6116108))

(declare-fun m!6116110 () Bool)

(assert (=> bs!1190117 m!6116110))

(assert (=> d!1635887 d!1636247))

(declare-fun d!1636249 () Bool)

(declare-fun lt!2089483 () Int)

(assert (=> d!1636249 (= lt!2089483 (size!39082 (list!18997 (right!43152 (right!43152 err!4601)))))))

(assert (=> d!1636249 (= lt!2089483 (ite ((_ is Empty!15568) (right!43152 (right!43152 err!4601))) 0 (ite ((_ is Leaf!25857) (right!43152 (right!43152 err!4601))) (csize!31367 (right!43152 (right!43152 err!4601))) (csize!31366 (right!43152 (right!43152 err!4601))))))))

(assert (=> d!1636249 (= (size!39084 (right!43152 (right!43152 err!4601))) lt!2089483)))

(declare-fun bs!1190118 () Bool)

(assert (= bs!1190118 d!1636249))

(declare-fun m!6116112 () Bool)

(assert (=> bs!1190118 m!6116112))

(assert (=> bs!1190118 m!6116112))

(declare-fun m!6116114 () Bool)

(assert (=> bs!1190118 m!6116114))

(assert (=> d!1635887 d!1636249))

(assert (=> b!5069861 d!1635761))

(assert (=> b!5069861 d!1635763))

(declare-fun d!1636251 () Bool)

(declare-fun res!2158903 () Bool)

(declare-fun e!3163929 () Bool)

(assert (=> d!1636251 (=> res!2158903 e!3163929)))

(assert (=> d!1636251 (= res!2158903 (not ((_ is Node!15568) (left!42822 (left!42822 xs!286)))))))

(assert (=> d!1636251 (= (isBalanced!4430 (left!42822 (left!42822 xs!286))) e!3163929)))

(declare-fun b!5070601 () Bool)

(declare-fun res!2158906 () Bool)

(declare-fun e!3163928 () Bool)

(assert (=> b!5070601 (=> (not res!2158906) (not e!3163928))))

(assert (=> b!5070601 (= res!2158906 (not (isEmpty!31638 (left!42822 (left!42822 (left!42822 xs!286))))))))

(declare-fun b!5070602 () Bool)

(declare-fun res!2158907 () Bool)

(assert (=> b!5070602 (=> (not res!2158907) (not e!3163928))))

(assert (=> b!5070602 (= res!2158907 (isBalanced!4430 (right!43152 (left!42822 (left!42822 xs!286)))))))

(declare-fun b!5070603 () Bool)

(assert (=> b!5070603 (= e!3163929 e!3163928)))

(declare-fun res!2158908 () Bool)

(assert (=> b!5070603 (=> (not res!2158908) (not e!3163928))))

(assert (=> b!5070603 (= res!2158908 (<= (- 1) (- (height!2145 (left!42822 (left!42822 (left!42822 xs!286)))) (height!2145 (right!43152 (left!42822 (left!42822 xs!286)))))))))

(declare-fun b!5070604 () Bool)

(declare-fun res!2158905 () Bool)

(assert (=> b!5070604 (=> (not res!2158905) (not e!3163928))))

(assert (=> b!5070604 (= res!2158905 (isBalanced!4430 (left!42822 (left!42822 (left!42822 xs!286)))))))

(declare-fun b!5070605 () Bool)

(declare-fun res!2158904 () Bool)

(assert (=> b!5070605 (=> (not res!2158904) (not e!3163928))))

(assert (=> b!5070605 (= res!2158904 (<= (- (height!2145 (left!42822 (left!42822 (left!42822 xs!286)))) (height!2145 (right!43152 (left!42822 (left!42822 xs!286))))) 1))))

(declare-fun b!5070606 () Bool)

(assert (=> b!5070606 (= e!3163928 (not (isEmpty!31638 (right!43152 (left!42822 (left!42822 xs!286))))))))

(assert (= (and d!1636251 (not res!2158903)) b!5070603))

(assert (= (and b!5070603 res!2158908) b!5070605))

(assert (= (and b!5070605 res!2158904) b!5070604))

(assert (= (and b!5070604 res!2158905) b!5070602))

(assert (= (and b!5070602 res!2158907) b!5070601))

(assert (= (and b!5070601 res!2158906) b!5070606))

(declare-fun m!6116116 () Bool)

(assert (=> b!5070602 m!6116116))

(declare-fun m!6116118 () Bool)

(assert (=> b!5070606 m!6116118))

(declare-fun m!6116120 () Bool)

(assert (=> b!5070604 m!6116120))

(declare-fun m!6116122 () Bool)

(assert (=> b!5070603 m!6116122))

(declare-fun m!6116124 () Bool)

(assert (=> b!5070603 m!6116124))

(declare-fun m!6116126 () Bool)

(assert (=> b!5070601 m!6116126))

(assert (=> b!5070605 m!6116122))

(assert (=> b!5070605 m!6116124))

(assert (=> b!5070049 d!1636251))

(declare-fun d!1636253 () Bool)

(declare-fun res!2158909 () Bool)

(declare-fun e!3163931 () Bool)

(assert (=> d!1636253 (=> res!2158909 e!3163931)))

(assert (=> d!1636253 (= res!2158909 (not ((_ is Node!15568) (left!42822 (right!43152 xs!286)))))))

(assert (=> d!1636253 (= (isBalanced!4430 (left!42822 (right!43152 xs!286))) e!3163931)))

(declare-fun b!5070607 () Bool)

(declare-fun res!2158912 () Bool)

(declare-fun e!3163930 () Bool)

(assert (=> b!5070607 (=> (not res!2158912) (not e!3163930))))

(assert (=> b!5070607 (= res!2158912 (not (isEmpty!31638 (left!42822 (left!42822 (right!43152 xs!286))))))))

(declare-fun b!5070608 () Bool)

(declare-fun res!2158913 () Bool)

(assert (=> b!5070608 (=> (not res!2158913) (not e!3163930))))

(assert (=> b!5070608 (= res!2158913 (isBalanced!4430 (right!43152 (left!42822 (right!43152 xs!286)))))))

(declare-fun b!5070609 () Bool)

(assert (=> b!5070609 (= e!3163931 e!3163930)))

(declare-fun res!2158914 () Bool)

(assert (=> b!5070609 (=> (not res!2158914) (not e!3163930))))

(assert (=> b!5070609 (= res!2158914 (<= (- 1) (- (height!2145 (left!42822 (left!42822 (right!43152 xs!286)))) (height!2145 (right!43152 (left!42822 (right!43152 xs!286)))))))))

(declare-fun b!5070610 () Bool)

(declare-fun res!2158911 () Bool)

(assert (=> b!5070610 (=> (not res!2158911) (not e!3163930))))

(assert (=> b!5070610 (= res!2158911 (isBalanced!4430 (left!42822 (left!42822 (right!43152 xs!286)))))))

(declare-fun b!5070611 () Bool)

(declare-fun res!2158910 () Bool)

(assert (=> b!5070611 (=> (not res!2158910) (not e!3163930))))

(assert (=> b!5070611 (= res!2158910 (<= (- (height!2145 (left!42822 (left!42822 (right!43152 xs!286)))) (height!2145 (right!43152 (left!42822 (right!43152 xs!286))))) 1))))

(declare-fun b!5070612 () Bool)

(assert (=> b!5070612 (= e!3163930 (not (isEmpty!31638 (right!43152 (left!42822 (right!43152 xs!286))))))))

(assert (= (and d!1636253 (not res!2158909)) b!5070609))

(assert (= (and b!5070609 res!2158914) b!5070611))

(assert (= (and b!5070611 res!2158910) b!5070610))

(assert (= (and b!5070610 res!2158911) b!5070608))

(assert (= (and b!5070608 res!2158913) b!5070607))

(assert (= (and b!5070607 res!2158912) b!5070612))

(declare-fun m!6116128 () Bool)

(assert (=> b!5070608 m!6116128))

(declare-fun m!6116130 () Bool)

(assert (=> b!5070612 m!6116130))

(declare-fun m!6116132 () Bool)

(assert (=> b!5070610 m!6116132))

(declare-fun m!6116134 () Bool)

(assert (=> b!5070609 m!6116134))

(declare-fun m!6116136 () Bool)

(assert (=> b!5070609 m!6116136))

(declare-fun m!6116138 () Bool)

(assert (=> b!5070607 m!6116138))

(assert (=> b!5070611 m!6116134))

(assert (=> b!5070611 m!6116136))

(assert (=> b!5070066 d!1636253))

(declare-fun d!1636255 () Bool)

(declare-fun res!2158915 () Bool)

(declare-fun e!3163932 () Bool)

(assert (=> d!1636255 (=> (not res!2158915) (not e!3163932))))

(assert (=> d!1636255 (= res!2158915 (= (csize!31366 (left!42822 (left!42822 ys!41))) (+ (size!39084 (left!42822 (left!42822 (left!42822 ys!41)))) (size!39084 (right!43152 (left!42822 (left!42822 ys!41)))))))))

(assert (=> d!1636255 (= (inv!77580 (left!42822 (left!42822 ys!41))) e!3163932)))

(declare-fun b!5070613 () Bool)

(declare-fun res!2158916 () Bool)

(assert (=> b!5070613 (=> (not res!2158916) (not e!3163932))))

(assert (=> b!5070613 (= res!2158916 (and (not (= (left!42822 (left!42822 (left!42822 ys!41))) Empty!15568)) (not (= (right!43152 (left!42822 (left!42822 ys!41))) Empty!15568))))))

(declare-fun b!5070614 () Bool)

(declare-fun res!2158917 () Bool)

(assert (=> b!5070614 (=> (not res!2158917) (not e!3163932))))

(assert (=> b!5070614 (= res!2158917 (= (cheight!15779 (left!42822 (left!42822 ys!41))) (+ (max!0 (height!2145 (left!42822 (left!42822 (left!42822 ys!41)))) (height!2145 (right!43152 (left!42822 (left!42822 ys!41))))) 1)))))

(declare-fun b!5070615 () Bool)

(assert (=> b!5070615 (= e!3163932 (<= 0 (cheight!15779 (left!42822 (left!42822 ys!41)))))))

(assert (= (and d!1636255 res!2158915) b!5070613))

(assert (= (and b!5070613 res!2158916) b!5070614))

(assert (= (and b!5070614 res!2158917) b!5070615))

(declare-fun m!6116140 () Bool)

(assert (=> d!1636255 m!6116140))

(declare-fun m!6116142 () Bool)

(assert (=> d!1636255 m!6116142))

(declare-fun m!6116144 () Bool)

(assert (=> b!5070614 m!6116144))

(declare-fun m!6116146 () Bool)

(assert (=> b!5070614 m!6116146))

(assert (=> b!5070614 m!6116144))

(assert (=> b!5070614 m!6116146))

(declare-fun m!6116148 () Bool)

(assert (=> b!5070614 m!6116148))

(assert (=> b!5070091 d!1636255))

(declare-fun b!5070618 () Bool)

(declare-fun res!2158919 () Bool)

(declare-fun e!3163934 () Bool)

(assert (=> b!5070618 (=> (not res!2158919) (not e!3163934))))

(declare-fun lt!2089484 () List!58562)

(assert (=> b!5070618 (= res!2158919 (= (size!39082 lt!2089484) (+ (size!39082 call!353258) (size!39082 (list!18997 (right!43152 ys!41))))))))

(declare-fun b!5070619 () Bool)

(assert (=> b!5070619 (= e!3163934 (or (not (= (list!18997 (right!43152 ys!41)) Nil!58438)) (= lt!2089484 call!353258)))))

(declare-fun b!5070616 () Bool)

(declare-fun e!3163933 () List!58562)

(assert (=> b!5070616 (= e!3163933 (list!18997 (right!43152 ys!41)))))

(declare-fun d!1636257 () Bool)

(assert (=> d!1636257 e!3163934))

(declare-fun res!2158918 () Bool)

(assert (=> d!1636257 (=> (not res!2158918) (not e!3163934))))

(assert (=> d!1636257 (= res!2158918 (= (content!10420 lt!2089484) ((_ map or) (content!10420 call!353258) (content!10420 (list!18997 (right!43152 ys!41))))))))

(assert (=> d!1636257 (= lt!2089484 e!3163933)))

(declare-fun c!870600 () Bool)

(assert (=> d!1636257 (= c!870600 ((_ is Nil!58438) call!353258))))

(assert (=> d!1636257 (= (++!12793 call!353258 (list!18997 (right!43152 ys!41))) lt!2089484)))

(declare-fun b!5070617 () Bool)

(assert (=> b!5070617 (= e!3163933 (Cons!58438 (h!64886 call!353258) (++!12793 (t!371315 call!353258) (list!18997 (right!43152 ys!41)))))))

(assert (= (and d!1636257 c!870600) b!5070616))

(assert (= (and d!1636257 (not c!870600)) b!5070617))

(assert (= (and d!1636257 res!2158918) b!5070618))

(assert (= (and b!5070618 res!2158919) b!5070619))

(declare-fun m!6116150 () Bool)

(assert (=> b!5070618 m!6116150))

(declare-fun m!6116152 () Bool)

(assert (=> b!5070618 m!6116152))

(assert (=> b!5070618 m!6114518))

(assert (=> b!5070618 m!6115192))

(declare-fun m!6116154 () Bool)

(assert (=> d!1636257 m!6116154))

(declare-fun m!6116156 () Bool)

(assert (=> d!1636257 m!6116156))

(assert (=> d!1636257 m!6114518))

(assert (=> d!1636257 m!6115198))

(assert (=> b!5070617 m!6114518))

(declare-fun m!6116158 () Bool)

(assert (=> b!5070617 m!6116158))

(assert (=> bm!353256 d!1636257))

(declare-fun d!1636259 () Bool)

(declare-fun lt!2089485 () Int)

(assert (=> d!1636259 (= lt!2089485 (size!39082 (list!18997 (left!42822 err!4601))))))

(assert (=> d!1636259 (= lt!2089485 (ite ((_ is Empty!15568) (left!42822 err!4601)) 0 (ite ((_ is Leaf!25857) (left!42822 err!4601)) (csize!31367 (left!42822 err!4601)) (csize!31366 (left!42822 err!4601)))))))

(assert (=> d!1636259 (= (size!39084 (left!42822 err!4601)) lt!2089485)))

(declare-fun bs!1190119 () Bool)

(assert (= bs!1190119 d!1636259))

(declare-fun m!6116160 () Bool)

(assert (=> bs!1190119 m!6116160))

(assert (=> bs!1190119 m!6116160))

(declare-fun m!6116162 () Bool)

(assert (=> bs!1190119 m!6116162))

(assert (=> d!1635827 d!1636259))

(declare-fun d!1636261 () Bool)

(declare-fun lt!2089486 () Int)

(assert (=> d!1636261 (= lt!2089486 (size!39082 (list!18997 (right!43152 err!4601))))))

(assert (=> d!1636261 (= lt!2089486 (ite ((_ is Empty!15568) (right!43152 err!4601)) 0 (ite ((_ is Leaf!25857) (right!43152 err!4601)) (csize!31367 (right!43152 err!4601)) (csize!31366 (right!43152 err!4601)))))))

(assert (=> d!1636261 (= (size!39084 (right!43152 err!4601)) lt!2089486)))

(declare-fun bs!1190120 () Bool)

(assert (= bs!1190120 d!1636261))

(declare-fun m!6116164 () Bool)

(assert (=> bs!1190120 m!6116164))

(assert (=> bs!1190120 m!6116164))

(declare-fun m!6116166 () Bool)

(assert (=> bs!1190120 m!6116166))

(assert (=> d!1635827 d!1636261))

(assert (=> d!1635871 d!1636177))

(declare-fun d!1636263 () Bool)

(declare-fun lt!2089487 () Int)

(assert (=> d!1636263 (= lt!2089487 (size!39082 (list!18997 (right!43152 xs!286))))))

(assert (=> d!1636263 (= lt!2089487 (ite ((_ is Empty!15568) (right!43152 xs!286)) 0 (ite ((_ is Leaf!25857) (right!43152 xs!286)) (csize!31367 (right!43152 xs!286)) (csize!31366 (right!43152 xs!286)))))))

(assert (=> d!1636263 (= (size!39084 (right!43152 xs!286)) lt!2089487)))

(declare-fun bs!1190121 () Bool)

(assert (= bs!1190121 d!1636263))

(assert (=> bs!1190121 m!6114536))

(assert (=> bs!1190121 m!6114536))

(assert (=> bs!1190121 m!6114916))

(assert (=> d!1635871 d!1636263))

(declare-fun d!1636265 () Bool)

(declare-fun lt!2089488 () Bool)

(assert (=> d!1636265 (= lt!2089488 (isEmpty!31640 (list!18997 (right!43152 (left!42822 lt!2089379)))))))

(assert (=> d!1636265 (= lt!2089488 (= (size!39084 (right!43152 (left!42822 lt!2089379))) 0))))

(assert (=> d!1636265 (= (isEmpty!31638 (right!43152 (left!42822 lt!2089379))) lt!2089488)))

(declare-fun bs!1190122 () Bool)

(assert (= bs!1190122 d!1636265))

(assert (=> bs!1190122 m!6114804))

(assert (=> bs!1190122 m!6114804))

(declare-fun m!6116168 () Bool)

(assert (=> bs!1190122 m!6116168))

(declare-fun m!6116170 () Bool)

(assert (=> bs!1190122 m!6116170))

(assert (=> b!5069911 d!1636265))

(declare-fun d!1636267 () Bool)

(assert (=> d!1636267 (= (list!18999 (xs!18924 (right!43152 ys!41))) (innerList!15656 (xs!18924 (right!43152 ys!41))))))

(assert (=> b!5069961 d!1636267))

(declare-fun d!1636269 () Bool)

(declare-fun c!870601 () Bool)

(assert (=> d!1636269 (= c!870601 ((_ is Node!15568) (left!42822 (right!43152 (right!43152 ys!41)))))))

(declare-fun e!3163935 () Bool)

(assert (=> d!1636269 (= (inv!77577 (left!42822 (right!43152 (right!43152 ys!41)))) e!3163935)))

(declare-fun b!5070620 () Bool)

(assert (=> b!5070620 (= e!3163935 (inv!77580 (left!42822 (right!43152 (right!43152 ys!41)))))))

(declare-fun b!5070621 () Bool)

(declare-fun e!3163936 () Bool)

(assert (=> b!5070621 (= e!3163935 e!3163936)))

(declare-fun res!2158920 () Bool)

(assert (=> b!5070621 (= res!2158920 (not ((_ is Leaf!25857) (left!42822 (right!43152 (right!43152 ys!41))))))))

(assert (=> b!5070621 (=> res!2158920 e!3163936)))

(declare-fun b!5070622 () Bool)

(assert (=> b!5070622 (= e!3163936 (inv!77582 (left!42822 (right!43152 (right!43152 ys!41)))))))

(assert (= (and d!1636269 c!870601) b!5070620))

(assert (= (and d!1636269 (not c!870601)) b!5070621))

(assert (= (and b!5070621 (not res!2158920)) b!5070622))

(declare-fun m!6116172 () Bool)

(assert (=> b!5070620 m!6116172))

(declare-fun m!6116174 () Bool)

(assert (=> b!5070622 m!6116174))

(assert (=> b!5070151 d!1636269))

(declare-fun d!1636271 () Bool)

(declare-fun c!870602 () Bool)

(assert (=> d!1636271 (= c!870602 ((_ is Node!15568) (right!43152 (right!43152 (right!43152 ys!41)))))))

(declare-fun e!3163937 () Bool)

(assert (=> d!1636271 (= (inv!77577 (right!43152 (right!43152 (right!43152 ys!41)))) e!3163937)))

(declare-fun b!5070623 () Bool)

(assert (=> b!5070623 (= e!3163937 (inv!77580 (right!43152 (right!43152 (right!43152 ys!41)))))))

(declare-fun b!5070624 () Bool)

(declare-fun e!3163938 () Bool)

(assert (=> b!5070624 (= e!3163937 e!3163938)))

(declare-fun res!2158921 () Bool)

(assert (=> b!5070624 (= res!2158921 (not ((_ is Leaf!25857) (right!43152 (right!43152 (right!43152 ys!41))))))))

(assert (=> b!5070624 (=> res!2158921 e!3163938)))

(declare-fun b!5070625 () Bool)

(assert (=> b!5070625 (= e!3163938 (inv!77582 (right!43152 (right!43152 (right!43152 ys!41)))))))

(assert (= (and d!1636271 c!870602) b!5070623))

(assert (= (and d!1636271 (not c!870602)) b!5070624))

(assert (= (and b!5070624 (not res!2158921)) b!5070625))

(declare-fun m!6116176 () Bool)

(assert (=> b!5070623 m!6116176))

(declare-fun m!6116178 () Bool)

(assert (=> b!5070625 m!6116178))

(assert (=> b!5070151 d!1636271))

(declare-fun b!5070628 () Bool)

(declare-fun res!2158923 () Bool)

(declare-fun e!3163940 () Bool)

(assert (=> b!5070628 (=> (not res!2158923) (not e!3163940))))

(declare-fun lt!2089489 () List!58562)

(assert (=> b!5070628 (= res!2158923 (= (size!39082 lt!2089489) (+ (size!39082 (list!18997 (right!43152 xs!286))) (size!39082 (list!18997 ys!41)))))))

(declare-fun b!5070629 () Bool)

(assert (=> b!5070629 (= e!3163940 (or (not (= (list!18997 ys!41) Nil!58438)) (= lt!2089489 (list!18997 (right!43152 xs!286)))))))

(declare-fun b!5070626 () Bool)

(declare-fun e!3163939 () List!58562)

(assert (=> b!5070626 (= e!3163939 (list!18997 ys!41))))

(declare-fun d!1636273 () Bool)

(assert (=> d!1636273 e!3163940))

(declare-fun res!2158922 () Bool)

(assert (=> d!1636273 (=> (not res!2158922) (not e!3163940))))

(assert (=> d!1636273 (= res!2158922 (= (content!10420 lt!2089489) ((_ map or) (content!10420 (list!18997 (right!43152 xs!286))) (content!10420 (list!18997 ys!41)))))))

(assert (=> d!1636273 (= lt!2089489 e!3163939)))

(declare-fun c!870603 () Bool)

(assert (=> d!1636273 (= c!870603 ((_ is Nil!58438) (list!18997 (right!43152 xs!286))))))

(assert (=> d!1636273 (= (++!12793 (list!18997 (right!43152 xs!286)) (list!18997 ys!41)) lt!2089489)))

(declare-fun b!5070627 () Bool)

(assert (=> b!5070627 (= e!3163939 (Cons!58438 (h!64886 (list!18997 (right!43152 xs!286))) (++!12793 (t!371315 (list!18997 (right!43152 xs!286))) (list!18997 ys!41))))))

(assert (= (and d!1636273 c!870603) b!5070626))

(assert (= (and d!1636273 (not c!870603)) b!5070627))

(assert (= (and d!1636273 res!2158922) b!5070628))

(assert (= (and b!5070628 res!2158923) b!5070629))

(declare-fun m!6116180 () Bool)

(assert (=> b!5070628 m!6116180))

(assert (=> b!5070628 m!6114536))

(assert (=> b!5070628 m!6114916))

(assert (=> b!5070628 m!6114412))

(assert (=> b!5070628 m!6114608))

(declare-fun m!6116182 () Bool)

(assert (=> d!1636273 m!6116182))

(assert (=> d!1636273 m!6114536))

(assert (=> d!1636273 m!6114922))

(assert (=> d!1636273 m!6114412))

(assert (=> d!1636273 m!6114614))

(assert (=> b!5070627 m!6114412))

(declare-fun m!6116184 () Bool)

(assert (=> b!5070627 m!6116184))

(assert (=> bm!353251 d!1636273))

(declare-fun d!1636275 () Bool)

(declare-fun c!870604 () Bool)

(assert (=> d!1636275 (= c!870604 ((_ is Node!15568) (left!42822 (left!42822 (right!43152 xs!286)))))))

(declare-fun e!3163941 () Bool)

(assert (=> d!1636275 (= (inv!77577 (left!42822 (left!42822 (right!43152 xs!286)))) e!3163941)))

(declare-fun b!5070630 () Bool)

(assert (=> b!5070630 (= e!3163941 (inv!77580 (left!42822 (left!42822 (right!43152 xs!286)))))))

(declare-fun b!5070631 () Bool)

(declare-fun e!3163942 () Bool)

(assert (=> b!5070631 (= e!3163941 e!3163942)))

(declare-fun res!2158924 () Bool)

(assert (=> b!5070631 (= res!2158924 (not ((_ is Leaf!25857) (left!42822 (left!42822 (right!43152 xs!286))))))))

(assert (=> b!5070631 (=> res!2158924 e!3163942)))

(declare-fun b!5070632 () Bool)

(assert (=> b!5070632 (= e!3163942 (inv!77582 (left!42822 (left!42822 (right!43152 xs!286)))))))

(assert (= (and d!1636275 c!870604) b!5070630))

(assert (= (and d!1636275 (not c!870604)) b!5070631))

(assert (= (and b!5070631 (not res!2158924)) b!5070632))

(declare-fun m!6116186 () Bool)

(assert (=> b!5070630 m!6116186))

(declare-fun m!6116188 () Bool)

(assert (=> b!5070632 m!6116188))

(assert (=> b!5070142 d!1636275))

(declare-fun d!1636277 () Bool)

(declare-fun c!870605 () Bool)

(assert (=> d!1636277 (= c!870605 ((_ is Node!15568) (right!43152 (left!42822 (right!43152 xs!286)))))))

(declare-fun e!3163943 () Bool)

(assert (=> d!1636277 (= (inv!77577 (right!43152 (left!42822 (right!43152 xs!286)))) e!3163943)))

(declare-fun b!5070633 () Bool)

(assert (=> b!5070633 (= e!3163943 (inv!77580 (right!43152 (left!42822 (right!43152 xs!286)))))))

(declare-fun b!5070634 () Bool)

(declare-fun e!3163944 () Bool)

(assert (=> b!5070634 (= e!3163943 e!3163944)))

(declare-fun res!2158925 () Bool)

(assert (=> b!5070634 (= res!2158925 (not ((_ is Leaf!25857) (right!43152 (left!42822 (right!43152 xs!286))))))))

(assert (=> b!5070634 (=> res!2158925 e!3163944)))

(declare-fun b!5070635 () Bool)

(assert (=> b!5070635 (= e!3163944 (inv!77582 (right!43152 (left!42822 (right!43152 xs!286)))))))

(assert (= (and d!1636277 c!870605) b!5070633))

(assert (= (and d!1636277 (not c!870605)) b!5070634))

(assert (= (and b!5070634 (not res!2158925)) b!5070635))

(declare-fun m!6116190 () Bool)

(assert (=> b!5070633 m!6116190))

(declare-fun m!6116192 () Bool)

(assert (=> b!5070635 m!6116192))

(assert (=> b!5070142 d!1636277))

(declare-fun d!1636279 () Bool)

(declare-fun c!870606 () Bool)

(assert (=> d!1636279 (= c!870606 ((_ is Nil!58438) (t!371315 lt!2089389)))))

(declare-fun e!3163945 () (InoxSet T!105146))

(assert (=> d!1636279 (= (content!10420 (t!371315 lt!2089389)) e!3163945)))

(declare-fun b!5070636 () Bool)

(assert (=> b!5070636 (= e!3163945 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070637 () Bool)

(assert (=> b!5070637 (= e!3163945 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 (t!371315 lt!2089389)) true) (content!10420 (t!371315 (t!371315 lt!2089389)))))))

(assert (= (and d!1636279 c!870606) b!5070636))

(assert (= (and d!1636279 (not c!870606)) b!5070637))

(declare-fun m!6116194 () Bool)

(assert (=> b!5070637 m!6116194))

(declare-fun m!6116196 () Bool)

(assert (=> b!5070637 m!6116196))

(assert (=> b!5070107 d!1636279))

(assert (=> b!5069987 d!1636223))

(declare-fun d!1636281 () Bool)

(assert (=> d!1636281 (= (list!18999 (xs!18924 (left!42822 (right!43152 xs!286)))) (innerList!15656 (xs!18924 (left!42822 (right!43152 xs!286)))))))

(assert (=> b!5070005 d!1636281))

(declare-fun d!1636283 () Bool)

(declare-fun lt!2089490 () Int)

(assert (=> d!1636283 (= lt!2089490 (size!39082 (list!18997 (left!42822 (right!43152 ys!41)))))))

(assert (=> d!1636283 (= lt!2089490 (ite ((_ is Empty!15568) (left!42822 (right!43152 ys!41))) 0 (ite ((_ is Leaf!25857) (left!42822 (right!43152 ys!41))) (csize!31367 (left!42822 (right!43152 ys!41))) (csize!31366 (left!42822 (right!43152 ys!41))))))))

(assert (=> d!1636283 (= (size!39084 (left!42822 (right!43152 ys!41))) lt!2089490)))

(declare-fun bs!1190123 () Bool)

(assert (= bs!1190123 d!1636283))

(assert (=> bs!1190123 m!6114866))

(assert (=> bs!1190123 m!6114866))

(declare-fun m!6116198 () Bool)

(assert (=> bs!1190123 m!6116198))

(assert (=> d!1635809 d!1636283))

(declare-fun d!1636285 () Bool)

(declare-fun lt!2089491 () Int)

(assert (=> d!1636285 (= lt!2089491 (size!39082 (list!18997 (right!43152 (right!43152 ys!41)))))))

(assert (=> d!1636285 (= lt!2089491 (ite ((_ is Empty!15568) (right!43152 (right!43152 ys!41))) 0 (ite ((_ is Leaf!25857) (right!43152 (right!43152 ys!41))) (csize!31367 (right!43152 (right!43152 ys!41))) (csize!31366 (right!43152 (right!43152 ys!41))))))))

(assert (=> d!1636285 (= (size!39084 (right!43152 (right!43152 ys!41))) lt!2089491)))

(declare-fun bs!1190124 () Bool)

(assert (= bs!1190124 d!1636285))

(assert (=> bs!1190124 m!6114868))

(assert (=> bs!1190124 m!6114868))

(declare-fun m!6116200 () Bool)

(assert (=> bs!1190124 m!6116200))

(assert (=> d!1635809 d!1636285))

(declare-fun d!1636287 () Bool)

(assert (=> d!1636287 (= (isEmpty!31640 (list!18997 (right!43152 xs!286))) ((_ is Nil!58438) (list!18997 (right!43152 xs!286))))))

(assert (=> d!1635825 d!1636287))

(assert (=> d!1635825 d!1635795))

(assert (=> d!1635825 d!1636263))

(declare-fun d!1636289 () Bool)

(declare-fun res!2158926 () Bool)

(declare-fun e!3163946 () Bool)

(assert (=> d!1636289 (=> (not res!2158926) (not e!3163946))))

(assert (=> d!1636289 (= res!2158926 (= (csize!31366 (right!43152 (left!42822 xs!286))) (+ (size!39084 (left!42822 (right!43152 (left!42822 xs!286)))) (size!39084 (right!43152 (right!43152 (left!42822 xs!286)))))))))

(assert (=> d!1636289 (= (inv!77580 (right!43152 (left!42822 xs!286))) e!3163946)))

(declare-fun b!5070638 () Bool)

(declare-fun res!2158927 () Bool)

(assert (=> b!5070638 (=> (not res!2158927) (not e!3163946))))

(assert (=> b!5070638 (= res!2158927 (and (not (= (left!42822 (right!43152 (left!42822 xs!286))) Empty!15568)) (not (= (right!43152 (right!43152 (left!42822 xs!286))) Empty!15568))))))

(declare-fun b!5070639 () Bool)

(declare-fun res!2158928 () Bool)

(assert (=> b!5070639 (=> (not res!2158928) (not e!3163946))))

(assert (=> b!5070639 (= res!2158928 (= (cheight!15779 (right!43152 (left!42822 xs!286))) (+ (max!0 (height!2145 (left!42822 (right!43152 (left!42822 xs!286)))) (height!2145 (right!43152 (right!43152 (left!42822 xs!286))))) 1)))))

(declare-fun b!5070640 () Bool)

(assert (=> b!5070640 (= e!3163946 (<= 0 (cheight!15779 (right!43152 (left!42822 xs!286)))))))

(assert (= (and d!1636289 res!2158926) b!5070638))

(assert (= (and b!5070638 res!2158927) b!5070639))

(assert (= (and b!5070639 res!2158928) b!5070640))

(declare-fun m!6116202 () Bool)

(assert (=> d!1636289 m!6116202))

(declare-fun m!6116204 () Bool)

(assert (=> d!1636289 m!6116204))

(assert (=> b!5070639 m!6115898))

(assert (=> b!5070639 m!6115900))

(assert (=> b!5070639 m!6115898))

(assert (=> b!5070639 m!6115900))

(declare-fun m!6116206 () Bool)

(assert (=> b!5070639 m!6116206))

(assert (=> b!5070077 d!1636289))

(declare-fun d!1636291 () Bool)

(declare-fun lt!2089492 () Int)

(assert (=> d!1636291 (>= lt!2089492 0)))

(declare-fun e!3163947 () Int)

(assert (=> d!1636291 (= lt!2089492 e!3163947)))

(declare-fun c!870607 () Bool)

(assert (=> d!1636291 (= c!870607 ((_ is Nil!58438) (t!371315 (innerList!15656 (xs!18924 ys!41)))))))

(assert (=> d!1636291 (= (size!39082 (t!371315 (innerList!15656 (xs!18924 ys!41)))) lt!2089492)))

(declare-fun b!5070641 () Bool)

(assert (=> b!5070641 (= e!3163947 0)))

(declare-fun b!5070642 () Bool)

(assert (=> b!5070642 (= e!3163947 (+ 1 (size!39082 (t!371315 (t!371315 (innerList!15656 (xs!18924 ys!41)))))))))

(assert (= (and d!1636291 c!870607) b!5070641))

(assert (= (and d!1636291 (not c!870607)) b!5070642))

(declare-fun m!6116208 () Bool)

(assert (=> b!5070642 m!6116208))

(assert (=> b!5070053 d!1636291))

(declare-fun d!1636293 () Bool)

(assert (=> d!1636293 (= (max!0 (height!2145 (left!42822 (left!42822 err!4601))) (height!2145 (right!43152 (left!42822 err!4601)))) (ite (< (height!2145 (left!42822 (left!42822 err!4601))) (height!2145 (right!43152 (left!42822 err!4601)))) (height!2145 (right!43152 (left!42822 err!4601))) (height!2145 (left!42822 (left!42822 err!4601)))))))

(assert (=> b!5070044 d!1636293))

(declare-fun d!1636295 () Bool)

(assert (=> d!1636295 (= (height!2145 (left!42822 (left!42822 err!4601))) (ite ((_ is Empty!15568) (left!42822 (left!42822 err!4601))) 0 (ite ((_ is Leaf!25857) (left!42822 (left!42822 err!4601))) 1 (cheight!15779 (left!42822 (left!42822 err!4601))))))))

(assert (=> b!5070044 d!1636295))

(declare-fun d!1636297 () Bool)

(assert (=> d!1636297 (= (height!2145 (right!43152 (left!42822 err!4601))) (ite ((_ is Empty!15568) (right!43152 (left!42822 err!4601))) 0 (ite ((_ is Leaf!25857) (right!43152 (left!42822 err!4601))) 1 (cheight!15779 (right!43152 (left!42822 err!4601))))))))

(assert (=> b!5070044 d!1636297))

(declare-fun d!1636299 () Bool)

(declare-fun lt!2089493 () Int)

(assert (=> d!1636299 (= lt!2089493 (size!39082 (list!18997 (left!42822 (left!42822 xs!286)))))))

(assert (=> d!1636299 (= lt!2089493 (ite ((_ is Empty!15568) (left!42822 (left!42822 xs!286))) 0 (ite ((_ is Leaf!25857) (left!42822 (left!42822 xs!286))) (csize!31367 (left!42822 (left!42822 xs!286))) (csize!31366 (left!42822 (left!42822 xs!286))))))))

(assert (=> d!1636299 (= (size!39084 (left!42822 (left!42822 xs!286))) lt!2089493)))

(declare-fun bs!1190125 () Bool)

(assert (= bs!1190125 d!1636299))

(assert (=> bs!1190125 m!6114928))

(assert (=> bs!1190125 m!6114928))

(declare-fun m!6116210 () Bool)

(assert (=> bs!1190125 m!6116210))

(assert (=> d!1635757 d!1636299))

(declare-fun d!1636301 () Bool)

(declare-fun lt!2089494 () Int)

(assert (=> d!1636301 (= lt!2089494 (size!39082 (list!18997 (right!43152 (left!42822 xs!286)))))))

(assert (=> d!1636301 (= lt!2089494 (ite ((_ is Empty!15568) (right!43152 (left!42822 xs!286))) 0 (ite ((_ is Leaf!25857) (right!43152 (left!42822 xs!286))) (csize!31367 (right!43152 (left!42822 xs!286))) (csize!31366 (right!43152 (left!42822 xs!286))))))))

(assert (=> d!1636301 (= (size!39084 (right!43152 (left!42822 xs!286))) lt!2089494)))

(declare-fun bs!1190126 () Bool)

(assert (= bs!1190126 d!1636301))

(assert (=> bs!1190126 m!6114930))

(assert (=> bs!1190126 m!6114930))

(declare-fun m!6116212 () Bool)

(assert (=> bs!1190126 m!6116212))

(assert (=> d!1635757 d!1636301))

(declare-fun d!1636303 () Bool)

(declare-fun res!2158929 () Bool)

(declare-fun e!3163948 () Bool)

(assert (=> d!1636303 (=> (not res!2158929) (not e!3163948))))

(assert (=> d!1636303 (= res!2158929 (<= (size!39082 (list!18999 (xs!18924 (right!43152 (right!43152 xs!286))))) 512))))

(assert (=> d!1636303 (= (inv!77582 (right!43152 (right!43152 xs!286))) e!3163948)))

(declare-fun b!5070643 () Bool)

(declare-fun res!2158930 () Bool)

(assert (=> b!5070643 (=> (not res!2158930) (not e!3163948))))

(assert (=> b!5070643 (= res!2158930 (= (csize!31367 (right!43152 (right!43152 xs!286))) (size!39082 (list!18999 (xs!18924 (right!43152 (right!43152 xs!286)))))))))

(declare-fun b!5070644 () Bool)

(assert (=> b!5070644 (= e!3163948 (and (> (csize!31367 (right!43152 (right!43152 xs!286))) 0) (<= (csize!31367 (right!43152 (right!43152 xs!286))) 512)))))

(assert (= (and d!1636303 res!2158929) b!5070643))

(assert (= (and b!5070643 res!2158930) b!5070644))

(assert (=> d!1636303 m!6114956))

(assert (=> d!1636303 m!6114956))

(declare-fun m!6116214 () Bool)

(assert (=> d!1636303 m!6116214))

(assert (=> b!5070643 m!6114956))

(assert (=> b!5070643 m!6114956))

(assert (=> b!5070643 m!6116214))

(assert (=> b!5069944 d!1636303))

(declare-fun d!1636305 () Bool)

(declare-fun res!2158931 () Bool)

(declare-fun e!3163949 () Bool)

(assert (=> d!1636305 (=> (not res!2158931) (not e!3163949))))

(assert (=> d!1636305 (= res!2158931 (= (csize!31366 (left!42822 (right!43152 err!4601))) (+ (size!39084 (left!42822 (left!42822 (right!43152 err!4601)))) (size!39084 (right!43152 (left!42822 (right!43152 err!4601)))))))))

(assert (=> d!1636305 (= (inv!77580 (left!42822 (right!43152 err!4601))) e!3163949)))

(declare-fun b!5070645 () Bool)

(declare-fun res!2158932 () Bool)

(assert (=> b!5070645 (=> (not res!2158932) (not e!3163949))))

(assert (=> b!5070645 (= res!2158932 (and (not (= (left!42822 (left!42822 (right!43152 err!4601))) Empty!15568)) (not (= (right!43152 (left!42822 (right!43152 err!4601))) Empty!15568))))))

(declare-fun b!5070646 () Bool)

(declare-fun res!2158933 () Bool)

(assert (=> b!5070646 (=> (not res!2158933) (not e!3163949))))

(assert (=> b!5070646 (= res!2158933 (= (cheight!15779 (left!42822 (right!43152 err!4601))) (+ (max!0 (height!2145 (left!42822 (left!42822 (right!43152 err!4601)))) (height!2145 (right!43152 (left!42822 (right!43152 err!4601))))) 1)))))

(declare-fun b!5070647 () Bool)

(assert (=> b!5070647 (= e!3163949 (<= 0 (cheight!15779 (left!42822 (right!43152 err!4601)))))))

(assert (= (and d!1636305 res!2158931) b!5070645))

(assert (= (and b!5070645 res!2158932) b!5070646))

(assert (= (and b!5070646 res!2158933) b!5070647))

(declare-fun m!6116216 () Bool)

(assert (=> d!1636305 m!6116216))

(declare-fun m!6116218 () Bool)

(assert (=> d!1636305 m!6116218))

(declare-fun m!6116220 () Bool)

(assert (=> b!5070646 m!6116220))

(declare-fun m!6116222 () Bool)

(assert (=> b!5070646 m!6116222))

(assert (=> b!5070646 m!6116220))

(assert (=> b!5070646 m!6116222))

(declare-fun m!6116224 () Bool)

(assert (=> b!5070646 m!6116224))

(assert (=> b!5070083 d!1636305))

(assert (=> b!5070120 d!1636165))

(assert (=> b!5070120 d!1635785))

(assert (=> b!5070120 d!1635779))

(assert (=> b!5070050 d!1636169))

(assert (=> b!5070050 d!1636171))

(assert (=> b!5070067 d!1636227))

(assert (=> b!5070067 d!1636229))

(declare-fun b!5070650 () Bool)

(declare-fun res!2158935 () Bool)

(declare-fun e!3163951 () Bool)

(assert (=> b!5070650 (=> (not res!2158935) (not e!3163951))))

(declare-fun lt!2089495 () List!58562)

(assert (=> b!5070650 (= res!2158935 (= (size!39082 lt!2089495) (+ (size!39082 (t!371315 (list!18997 xs!286))) (size!39082 (list!18997 (left!42822 (left!42822 ys!41)))))))))

(declare-fun b!5070651 () Bool)

(assert (=> b!5070651 (= e!3163951 (or (not (= (list!18997 (left!42822 (left!42822 ys!41))) Nil!58438)) (= lt!2089495 (t!371315 (list!18997 xs!286)))))))

(declare-fun b!5070648 () Bool)

(declare-fun e!3163950 () List!58562)

(assert (=> b!5070648 (= e!3163950 (list!18997 (left!42822 (left!42822 ys!41))))))

(declare-fun d!1636307 () Bool)

(assert (=> d!1636307 e!3163951))

(declare-fun res!2158934 () Bool)

(assert (=> d!1636307 (=> (not res!2158934) (not e!3163951))))

(assert (=> d!1636307 (= res!2158934 (= (content!10420 lt!2089495) ((_ map or) (content!10420 (t!371315 (list!18997 xs!286))) (content!10420 (list!18997 (left!42822 (left!42822 ys!41)))))))))

(assert (=> d!1636307 (= lt!2089495 e!3163950)))

(declare-fun c!870608 () Bool)

(assert (=> d!1636307 (= c!870608 ((_ is Nil!58438) (t!371315 (list!18997 xs!286))))))

(assert (=> d!1636307 (= (++!12793 (t!371315 (list!18997 xs!286)) (list!18997 (left!42822 (left!42822 ys!41)))) lt!2089495)))

(declare-fun b!5070649 () Bool)

(assert (=> b!5070649 (= e!3163950 (Cons!58438 (h!64886 (t!371315 (list!18997 xs!286))) (++!12793 (t!371315 (t!371315 (list!18997 xs!286))) (list!18997 (left!42822 (left!42822 ys!41))))))))

(assert (= (and d!1636307 c!870608) b!5070648))

(assert (= (and d!1636307 (not c!870608)) b!5070649))

(assert (= (and d!1636307 res!2158934) b!5070650))

(assert (= (and b!5070650 res!2158935) b!5070651))

(declare-fun m!6116226 () Bool)

(assert (=> b!5070650 m!6116226))

(assert (=> b!5070650 m!6115068))

(assert (=> b!5070650 m!6114512))

(assert (=> b!5070650 m!6114892))

(declare-fun m!6116228 () Bool)

(assert (=> d!1636307 m!6116228))

(assert (=> d!1636307 m!6115166))

(assert (=> d!1636307 m!6114512))

(assert (=> d!1636307 m!6114896))

(assert (=> b!5070649 m!6114512))

(declare-fun m!6116230 () Bool)

(assert (=> b!5070649 m!6116230))

(assert (=> b!5069974 d!1636307))

(declare-fun d!1636309 () Bool)

(declare-fun c!870609 () Bool)

(assert (=> d!1636309 (= c!870609 ((_ is Nil!58438) lt!2089395))))

(declare-fun e!3163952 () (InoxSet T!105146))

(assert (=> d!1636309 (= (content!10420 lt!2089395) e!3163952)))

(declare-fun b!5070652 () Bool)

(assert (=> b!5070652 (= e!3163952 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070653 () Bool)

(assert (=> b!5070653 (= e!3163952 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 lt!2089395) true) (content!10420 (t!371315 lt!2089395))))))

(assert (= (and d!1636309 c!870609) b!5070652))

(assert (= (and d!1636309 (not c!870609)) b!5070653))

(declare-fun m!6116232 () Bool)

(assert (=> b!5070653 m!6116232))

(declare-fun m!6116234 () Bool)

(assert (=> b!5070653 m!6116234))

(assert (=> d!1635791 d!1636309))

(declare-fun d!1636311 () Bool)

(declare-fun c!870610 () Bool)

(assert (=> d!1636311 (= c!870610 ((_ is Nil!58438) (list!18997 (left!42822 xs!286))))))

(declare-fun e!3163953 () (InoxSet T!105146))

(assert (=> d!1636311 (= (content!10420 (list!18997 (left!42822 xs!286))) e!3163953)))

(declare-fun b!5070654 () Bool)

(assert (=> b!5070654 (= e!3163953 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070655 () Bool)

(assert (=> b!5070655 (= e!3163953 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 (list!18997 (left!42822 xs!286))) true) (content!10420 (t!371315 (list!18997 (left!42822 xs!286))))))))

(assert (= (and d!1636311 c!870610) b!5070654))

(assert (= (and d!1636311 (not c!870610)) b!5070655))

(declare-fun m!6116236 () Bool)

(assert (=> b!5070655 m!6116236))

(declare-fun m!6116238 () Bool)

(assert (=> b!5070655 m!6116238))

(assert (=> d!1635791 d!1636311))

(declare-fun d!1636313 () Bool)

(declare-fun c!870611 () Bool)

(assert (=> d!1636313 (= c!870611 ((_ is Nil!58438) (list!18997 (right!43152 xs!286))))))

(declare-fun e!3163954 () (InoxSet T!105146))

(assert (=> d!1636313 (= (content!10420 (list!18997 (right!43152 xs!286))) e!3163954)))

(declare-fun b!5070656 () Bool)

(assert (=> b!5070656 (= e!3163954 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070657 () Bool)

(assert (=> b!5070657 (= e!3163954 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 (list!18997 (right!43152 xs!286))) true) (content!10420 (t!371315 (list!18997 (right!43152 xs!286))))))))

(assert (= (and d!1636313 c!870611) b!5070656))

(assert (= (and d!1636313 (not c!870611)) b!5070657))

(declare-fun m!6116240 () Bool)

(assert (=> b!5070657 m!6116240))

(declare-fun m!6116242 () Bool)

(assert (=> b!5070657 m!6116242))

(assert (=> d!1635791 d!1636313))

(declare-fun d!1636315 () Bool)

(declare-fun res!2158936 () Bool)

(declare-fun e!3163955 () Bool)

(assert (=> d!1636315 (=> (not res!2158936) (not e!3163955))))

(assert (=> d!1636315 (= res!2158936 (<= (size!39082 (list!18999 (xs!18924 (right!43152 (right!43152 ys!41))))) 512))))

(assert (=> d!1636315 (= (inv!77582 (right!43152 (right!43152 ys!41))) e!3163955)))

(declare-fun b!5070658 () Bool)

(declare-fun res!2158937 () Bool)

(assert (=> b!5070658 (=> (not res!2158937) (not e!3163955))))

(assert (=> b!5070658 (= res!2158937 (= (csize!31367 (right!43152 (right!43152 ys!41))) (size!39082 (list!18999 (xs!18924 (right!43152 (right!43152 ys!41)))))))))

(declare-fun b!5070659 () Bool)

(assert (=> b!5070659 (= e!3163955 (and (> (csize!31367 (right!43152 (right!43152 ys!41))) 0) (<= (csize!31367 (right!43152 (right!43152 ys!41))) 512)))))

(assert (= (and d!1636315 res!2158936) b!5070658))

(assert (= (and b!5070658 res!2158937) b!5070659))

(declare-fun m!6116244 () Bool)

(assert (=> d!1636315 m!6116244))

(assert (=> d!1636315 m!6116244))

(declare-fun m!6116246 () Bool)

(assert (=> d!1636315 m!6116246))

(assert (=> b!5070658 m!6116244))

(assert (=> b!5070658 m!6116244))

(assert (=> b!5070658 m!6116246))

(assert (=> b!5069950 d!1636315))

(declare-fun d!1636317 () Bool)

(declare-fun lt!2089496 () Bool)

(assert (=> d!1636317 (= lt!2089496 (isEmpty!31640 (list!18997 (left!42822 (left!42822 ys!41)))))))

(assert (=> d!1636317 (= lt!2089496 (= (size!39084 (left!42822 (left!42822 ys!41))) 0))))

(assert (=> d!1636317 (= (isEmpty!31638 (left!42822 (left!42822 ys!41))) lt!2089496)))

(declare-fun bs!1190127 () Bool)

(assert (= bs!1190127 d!1636317))

(assert (=> bs!1190127 m!6114512))

(assert (=> bs!1190127 m!6114512))

(declare-fun m!6116248 () Bool)

(assert (=> bs!1190127 m!6116248))

(assert (=> bs!1190127 m!6115172))

(assert (=> b!5070022 d!1636317))

(declare-fun d!1636319 () Bool)

(declare-fun c!870612 () Bool)

(assert (=> d!1636319 (= c!870612 ((_ is Node!15568) (left!42822 (left!42822 (left!42822 xs!286)))))))

(declare-fun e!3163956 () Bool)

(assert (=> d!1636319 (= (inv!77577 (left!42822 (left!42822 (left!42822 xs!286)))) e!3163956)))

(declare-fun b!5070660 () Bool)

(assert (=> b!5070660 (= e!3163956 (inv!77580 (left!42822 (left!42822 (left!42822 xs!286)))))))

(declare-fun b!5070661 () Bool)

(declare-fun e!3163957 () Bool)

(assert (=> b!5070661 (= e!3163956 e!3163957)))

(declare-fun res!2158938 () Bool)

(assert (=> b!5070661 (= res!2158938 (not ((_ is Leaf!25857) (left!42822 (left!42822 (left!42822 xs!286))))))))

(assert (=> b!5070661 (=> res!2158938 e!3163957)))

(declare-fun b!5070662 () Bool)

(assert (=> b!5070662 (= e!3163957 (inv!77582 (left!42822 (left!42822 (left!42822 xs!286)))))))

(assert (= (and d!1636319 c!870612) b!5070660))

(assert (= (and d!1636319 (not c!870612)) b!5070661))

(assert (= (and b!5070661 (not res!2158938)) b!5070662))

(declare-fun m!6116250 () Bool)

(assert (=> b!5070660 m!6116250))

(declare-fun m!6116252 () Bool)

(assert (=> b!5070662 m!6116252))

(assert (=> b!5070155 d!1636319))

(declare-fun d!1636321 () Bool)

(declare-fun c!870613 () Bool)

(assert (=> d!1636321 (= c!870613 ((_ is Node!15568) (right!43152 (left!42822 (left!42822 xs!286)))))))

(declare-fun e!3163958 () Bool)

(assert (=> d!1636321 (= (inv!77577 (right!43152 (left!42822 (left!42822 xs!286)))) e!3163958)))

(declare-fun b!5070663 () Bool)

(assert (=> b!5070663 (= e!3163958 (inv!77580 (right!43152 (left!42822 (left!42822 xs!286)))))))

(declare-fun b!5070664 () Bool)

(declare-fun e!3163959 () Bool)

(assert (=> b!5070664 (= e!3163958 e!3163959)))

(declare-fun res!2158939 () Bool)

(assert (=> b!5070664 (= res!2158939 (not ((_ is Leaf!25857) (right!43152 (left!42822 (left!42822 xs!286))))))))

(assert (=> b!5070664 (=> res!2158939 e!3163959)))

(declare-fun b!5070665 () Bool)

(assert (=> b!5070665 (= e!3163959 (inv!77582 (right!43152 (left!42822 (left!42822 xs!286)))))))

(assert (= (and d!1636321 c!870613) b!5070663))

(assert (= (and d!1636321 (not c!870613)) b!5070664))

(assert (= (and b!5070664 (not res!2158939)) b!5070665))

(declare-fun m!6116254 () Bool)

(assert (=> b!5070663 m!6116254))

(declare-fun m!6116256 () Bool)

(assert (=> b!5070665 m!6116256))

(assert (=> b!5070155 d!1636321))

(assert (=> b!5069830 d!1635879))

(assert (=> b!5069830 d!1635881))

(declare-fun b!5070668 () Bool)

(declare-fun res!2158941 () Bool)

(declare-fun e!3163961 () Bool)

(assert (=> b!5070668 (=> (not res!2158941) (not e!3163961))))

(declare-fun lt!2089497 () List!58562)

(assert (=> b!5070668 (= res!2158941 (= (size!39082 lt!2089497) (+ (size!39082 (t!371315 (list!18997 (left!42822 xs!286)))) (size!39082 (list!18997 (right!43152 xs!286))))))))

(declare-fun b!5070669 () Bool)

(assert (=> b!5070669 (= e!3163961 (or (not (= (list!18997 (right!43152 xs!286)) Nil!58438)) (= lt!2089497 (t!371315 (list!18997 (left!42822 xs!286))))))))

(declare-fun b!5070666 () Bool)

(declare-fun e!3163960 () List!58562)

(assert (=> b!5070666 (= e!3163960 (list!18997 (right!43152 xs!286)))))

(declare-fun d!1636323 () Bool)

(assert (=> d!1636323 e!3163961))

(declare-fun res!2158940 () Bool)

(assert (=> d!1636323 (=> (not res!2158940) (not e!3163961))))

(assert (=> d!1636323 (= res!2158940 (= (content!10420 lt!2089497) ((_ map or) (content!10420 (t!371315 (list!18997 (left!42822 xs!286)))) (content!10420 (list!18997 (right!43152 xs!286))))))))

(assert (=> d!1636323 (= lt!2089497 e!3163960)))

(declare-fun c!870614 () Bool)

(assert (=> d!1636323 (= c!870614 ((_ is Nil!58438) (t!371315 (list!18997 (left!42822 xs!286)))))))

(assert (=> d!1636323 (= (++!12793 (t!371315 (list!18997 (left!42822 xs!286))) (list!18997 (right!43152 xs!286))) lt!2089497)))

(declare-fun b!5070667 () Bool)

(assert (=> b!5070667 (= e!3163960 (Cons!58438 (h!64886 (t!371315 (list!18997 (left!42822 xs!286)))) (++!12793 (t!371315 (t!371315 (list!18997 (left!42822 xs!286)))) (list!18997 (right!43152 xs!286)))))))

(assert (= (and d!1636323 c!870614) b!5070666))

(assert (= (and d!1636323 (not c!870614)) b!5070667))

(assert (= (and d!1636323 res!2158940) b!5070668))

(assert (= (and b!5070668 res!2158941) b!5070669))

(declare-fun m!6116258 () Bool)

(assert (=> b!5070668 m!6116258))

(declare-fun m!6116260 () Bool)

(assert (=> b!5070668 m!6116260))

(assert (=> b!5070668 m!6114536))

(assert (=> b!5070668 m!6114916))

(declare-fun m!6116262 () Bool)

(assert (=> d!1636323 m!6116262))

(assert (=> d!1636323 m!6116238))

(assert (=> d!1636323 m!6114536))

(assert (=> d!1636323 m!6114922))

(assert (=> b!5070667 m!6114536))

(declare-fun m!6116264 () Bool)

(assert (=> b!5070667 m!6116264))

(assert (=> b!5069982 d!1636323))

(declare-fun d!1636325 () Bool)

(assert (=> d!1636325 (= (max!0 (height!2145 (left!42822 ys!41)) (height!2145 (right!43152 ys!41))) (ite (< (height!2145 (left!42822 ys!41)) (height!2145 (right!43152 ys!41))) (height!2145 (right!43152 ys!41)) (height!2145 (left!42822 ys!41))))))

(assert (=> b!5070072 d!1636325))

(assert (=> b!5070072 d!1635895))

(assert (=> b!5070072 d!1635897))

(declare-fun d!1636327 () Bool)

(declare-fun lt!2089498 () Int)

(assert (=> d!1636327 (>= lt!2089498 0)))

(declare-fun e!3163962 () Int)

(assert (=> d!1636327 (= lt!2089498 e!3163962)))

(declare-fun c!870615 () Bool)

(assert (=> d!1636327 (= c!870615 ((_ is Nil!58438) (list!18999 (xs!18924 xs!286))))))

(assert (=> d!1636327 (= (size!39082 (list!18999 (xs!18924 xs!286))) lt!2089498)))

(declare-fun b!5070670 () Bool)

(assert (=> b!5070670 (= e!3163962 0)))

(declare-fun b!5070671 () Bool)

(assert (=> b!5070671 (= e!3163962 (+ 1 (size!39082 (t!371315 (list!18999 (xs!18924 xs!286))))))))

(assert (= (and d!1636327 c!870615) b!5070670))

(assert (= (and d!1636327 (not c!870615)) b!5070671))

(declare-fun m!6116266 () Bool)

(assert (=> b!5070671 m!6116266))

(assert (=> d!1635821 d!1636327))

(assert (=> d!1635821 d!1635885))

(declare-fun d!1636329 () Bool)

(declare-fun lt!2089499 () Int)

(assert (=> d!1636329 (>= lt!2089499 0)))

(declare-fun e!3163963 () Int)

(assert (=> d!1636329 (= lt!2089499 e!3163963)))

(declare-fun c!870616 () Bool)

(assert (=> d!1636329 (= c!870616 ((_ is Nil!58438) (t!371315 lt!2089389)))))

(assert (=> d!1636329 (= (size!39082 (t!371315 lt!2089389)) lt!2089499)))

(declare-fun b!5070672 () Bool)

(assert (=> b!5070672 (= e!3163963 0)))

(declare-fun b!5070673 () Bool)

(assert (=> b!5070673 (= e!3163963 (+ 1 (size!39082 (t!371315 (t!371315 lt!2089389)))))))

(assert (= (and d!1636329 c!870616) b!5070672))

(assert (= (and d!1636329 (not c!870616)) b!5070673))

(declare-fun m!6116268 () Bool)

(assert (=> b!5070673 m!6116268))

(assert (=> b!5070055 d!1636329))

(declare-fun d!1636331 () Bool)

(declare-fun lt!2089500 () Int)

(assert (=> d!1636331 (>= lt!2089500 0)))

(declare-fun e!3163964 () Int)

(assert (=> d!1636331 (= lt!2089500 e!3163964)))

(declare-fun c!870617 () Bool)

(assert (=> d!1636331 (= c!870617 ((_ is Nil!58438) (t!371315 (list!18997 xs!286))))))

(assert (=> d!1636331 (= (size!39082 (t!371315 (list!18997 xs!286))) lt!2089500)))

(declare-fun b!5070674 () Bool)

(assert (=> b!5070674 (= e!3163964 0)))

(declare-fun b!5070675 () Bool)

(assert (=> b!5070675 (= e!3163964 (+ 1 (size!39082 (t!371315 (t!371315 (list!18997 xs!286))))))))

(assert (= (and d!1636331 c!870617) b!5070674))

(assert (= (and d!1636331 (not c!870617)) b!5070675))

(declare-fun m!6116270 () Bool)

(assert (=> b!5070675 m!6116270))

(assert (=> b!5070057 d!1636331))

(declare-fun d!1636333 () Bool)

(assert (=> d!1636333 (= (inv!77578 (xs!18924 (right!43152 (right!43152 ys!41)))) (<= (size!39082 (innerList!15656 (xs!18924 (right!43152 (right!43152 ys!41))))) 2147483647))))

(declare-fun bs!1190128 () Bool)

(assert (= bs!1190128 d!1636333))

(declare-fun m!6116272 () Bool)

(assert (=> bs!1190128 m!6116272))

(assert (=> b!5070152 d!1636333))

(declare-fun d!1636335 () Bool)

(declare-fun c!870618 () Bool)

(assert (=> d!1636335 (= c!870618 ((_ is Nil!58438) lt!2089394))))

(declare-fun e!3163965 () (InoxSet T!105146))

(assert (=> d!1636335 (= (content!10420 lt!2089394) e!3163965)))

(declare-fun b!5070676 () Bool)

(assert (=> b!5070676 (= e!3163965 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070677 () Bool)

(assert (=> b!5070677 (= e!3163965 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 lt!2089394) true) (content!10420 (t!371315 lt!2089394))))))

(assert (= (and d!1636335 c!870618) b!5070676))

(assert (= (and d!1636335 (not c!870618)) b!5070677))

(declare-fun m!6116274 () Bool)

(assert (=> b!5070677 m!6116274))

(declare-fun m!6116276 () Bool)

(assert (=> b!5070677 m!6116276))

(assert (=> d!1635783 d!1636335))

(assert (=> d!1635783 d!1635891))

(declare-fun d!1636337 () Bool)

(declare-fun c!870619 () Bool)

(assert (=> d!1636337 (= c!870619 ((_ is Nil!58438) (list!18997 (left!42822 (left!42822 ys!41)))))))

(declare-fun e!3163966 () (InoxSet T!105146))

(assert (=> d!1636337 (= (content!10420 (list!18997 (left!42822 (left!42822 ys!41)))) e!3163966)))

(declare-fun b!5070678 () Bool)

(assert (=> b!5070678 (= e!3163966 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070679 () Bool)

(assert (=> b!5070679 (= e!3163966 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 (list!18997 (left!42822 (left!42822 ys!41)))) true) (content!10420 (t!371315 (list!18997 (left!42822 (left!42822 ys!41)))))))))

(assert (= (and d!1636337 c!870619) b!5070678))

(assert (= (and d!1636337 (not c!870619)) b!5070679))

(declare-fun m!6116278 () Bool)

(assert (=> b!5070679 m!6116278))

(declare-fun m!6116280 () Bool)

(assert (=> b!5070679 m!6116280))

(assert (=> d!1635783 d!1636337))

(declare-fun d!1636339 () Bool)

(declare-fun c!870620 () Bool)

(assert (=> d!1636339 (= c!870620 ((_ is Node!15568) (left!42822 (right!43152 (left!42822 err!4601)))))))

(declare-fun e!3163967 () Bool)

(assert (=> d!1636339 (= (inv!77577 (left!42822 (right!43152 (left!42822 err!4601)))) e!3163967)))

(declare-fun b!5070680 () Bool)

(assert (=> b!5070680 (= e!3163967 (inv!77580 (left!42822 (right!43152 (left!42822 err!4601)))))))

(declare-fun b!5070681 () Bool)

(declare-fun e!3163968 () Bool)

(assert (=> b!5070681 (= e!3163967 e!3163968)))

(declare-fun res!2158942 () Bool)

(assert (=> b!5070681 (= res!2158942 (not ((_ is Leaf!25857) (left!42822 (right!43152 (left!42822 err!4601))))))))

(assert (=> b!5070681 (=> res!2158942 e!3163968)))

(declare-fun b!5070682 () Bool)

(assert (=> b!5070682 (= e!3163968 (inv!77582 (left!42822 (right!43152 (left!42822 err!4601)))))))

(assert (= (and d!1636339 c!870620) b!5070680))

(assert (= (and d!1636339 (not c!870620)) b!5070681))

(assert (= (and b!5070681 (not res!2158942)) b!5070682))

(declare-fun m!6116282 () Bool)

(assert (=> b!5070680 m!6116282))

(declare-fun m!6116284 () Bool)

(assert (=> b!5070682 m!6116284))

(assert (=> b!5070180 d!1636339))

(declare-fun d!1636341 () Bool)

(declare-fun c!870621 () Bool)

(assert (=> d!1636341 (= c!870621 ((_ is Node!15568) (right!43152 (right!43152 (left!42822 err!4601)))))))

(declare-fun e!3163969 () Bool)

(assert (=> d!1636341 (= (inv!77577 (right!43152 (right!43152 (left!42822 err!4601)))) e!3163969)))

(declare-fun b!5070683 () Bool)

(assert (=> b!5070683 (= e!3163969 (inv!77580 (right!43152 (right!43152 (left!42822 err!4601)))))))

(declare-fun b!5070684 () Bool)

(declare-fun e!3163970 () Bool)

(assert (=> b!5070684 (= e!3163969 e!3163970)))

(declare-fun res!2158943 () Bool)

(assert (=> b!5070684 (= res!2158943 (not ((_ is Leaf!25857) (right!43152 (right!43152 (left!42822 err!4601))))))))

(assert (=> b!5070684 (=> res!2158943 e!3163970)))

(declare-fun b!5070685 () Bool)

(assert (=> b!5070685 (= e!3163970 (inv!77582 (right!43152 (right!43152 (left!42822 err!4601)))))))

(assert (= (and d!1636341 c!870621) b!5070683))

(assert (= (and d!1636341 (not c!870621)) b!5070684))

(assert (= (and b!5070684 (not res!2158943)) b!5070685))

(declare-fun m!6116286 () Bool)

(assert (=> b!5070683 m!6116286))

(declare-fun m!6116288 () Bool)

(assert (=> b!5070685 m!6116288))

(assert (=> b!5070180 d!1636341))

(declare-fun d!1636343 () Bool)

(declare-fun lt!2089501 () Int)

(assert (=> d!1636343 (>= lt!2089501 0)))

(declare-fun e!3163971 () Int)

(assert (=> d!1636343 (= lt!2089501 e!3163971)))

(declare-fun c!870622 () Bool)

(assert (=> d!1636343 (= c!870622 ((_ is Nil!58438) (innerList!15656 (xs!18924 (right!43152 xs!286)))))))

(assert (=> d!1636343 (= (size!39082 (innerList!15656 (xs!18924 (right!43152 xs!286)))) lt!2089501)))

(declare-fun b!5070686 () Bool)

(assert (=> b!5070686 (= e!3163971 0)))

(declare-fun b!5070687 () Bool)

(assert (=> b!5070687 (= e!3163971 (+ 1 (size!39082 (t!371315 (innerList!15656 (xs!18924 (right!43152 xs!286)))))))))

(assert (= (and d!1636343 c!870622) b!5070686))

(assert (= (and d!1636343 (not c!870622)) b!5070687))

(declare-fun m!6116290 () Bool)

(assert (=> b!5070687 m!6116290))

(assert (=> d!1635859 d!1636343))

(declare-fun b!5070690 () Bool)

(declare-fun res!2158945 () Bool)

(declare-fun e!3163973 () Bool)

(assert (=> b!5070690 (=> (not res!2158945) (not e!3163973))))

(declare-fun lt!2089502 () List!58562)

(assert (=> b!5070690 (= res!2158945 (= (size!39082 lt!2089502) (+ (size!39082 (list!18997 (left!42822 (left!42822 xs!286)))) (size!39082 (list!18997 (right!43152 (left!42822 xs!286)))))))))

(declare-fun b!5070691 () Bool)

(assert (=> b!5070691 (= e!3163973 (or (not (= (list!18997 (right!43152 (left!42822 xs!286))) Nil!58438)) (= lt!2089502 (list!18997 (left!42822 (left!42822 xs!286))))))))

(declare-fun b!5070688 () Bool)

(declare-fun e!3163972 () List!58562)

(assert (=> b!5070688 (= e!3163972 (list!18997 (right!43152 (left!42822 xs!286))))))

(declare-fun d!1636345 () Bool)

(assert (=> d!1636345 e!3163973))

(declare-fun res!2158944 () Bool)

(assert (=> d!1636345 (=> (not res!2158944) (not e!3163973))))

(assert (=> d!1636345 (= res!2158944 (= (content!10420 lt!2089502) ((_ map or) (content!10420 (list!18997 (left!42822 (left!42822 xs!286)))) (content!10420 (list!18997 (right!43152 (left!42822 xs!286)))))))))

(assert (=> d!1636345 (= lt!2089502 e!3163972)))

(declare-fun c!870623 () Bool)

(assert (=> d!1636345 (= c!870623 ((_ is Nil!58438) (list!18997 (left!42822 (left!42822 xs!286)))))))

(assert (=> d!1636345 (= (++!12793 (list!18997 (left!42822 (left!42822 xs!286))) (list!18997 (right!43152 (left!42822 xs!286)))) lt!2089502)))

(declare-fun b!5070689 () Bool)

(assert (=> b!5070689 (= e!3163972 (Cons!58438 (h!64886 (list!18997 (left!42822 (left!42822 xs!286)))) (++!12793 (t!371315 (list!18997 (left!42822 (left!42822 xs!286)))) (list!18997 (right!43152 (left!42822 xs!286))))))))

(assert (= (and d!1636345 c!870623) b!5070688))

(assert (= (and d!1636345 (not c!870623)) b!5070689))

(assert (= (and d!1636345 res!2158944) b!5070690))

(assert (= (and b!5070690 res!2158945) b!5070691))

(declare-fun m!6116292 () Bool)

(assert (=> b!5070690 m!6116292))

(assert (=> b!5070690 m!6114928))

(assert (=> b!5070690 m!6116210))

(assert (=> b!5070690 m!6114930))

(assert (=> b!5070690 m!6116212))

(declare-fun m!6116294 () Bool)

(assert (=> d!1636345 m!6116294))

(assert (=> d!1636345 m!6114928))

(declare-fun m!6116296 () Bool)

(assert (=> d!1636345 m!6116296))

(assert (=> d!1636345 m!6114930))

(declare-fun m!6116298 () Bool)

(assert (=> d!1636345 m!6116298))

(assert (=> b!5070689 m!6114930))

(declare-fun m!6116300 () Bool)

(assert (=> b!5070689 m!6116300))

(assert (=> b!5069988 d!1636345))

(declare-fun b!5070694 () Bool)

(declare-fun e!3163975 () List!58562)

(assert (=> b!5070694 (= e!3163975 (list!18999 (xs!18924 (left!42822 (left!42822 xs!286)))))))

(declare-fun d!1636347 () Bool)

(declare-fun c!870624 () Bool)

(assert (=> d!1636347 (= c!870624 ((_ is Empty!15568) (left!42822 (left!42822 xs!286))))))

(declare-fun e!3163974 () List!58562)

(assert (=> d!1636347 (= (list!18997 (left!42822 (left!42822 xs!286))) e!3163974)))

(declare-fun b!5070693 () Bool)

(assert (=> b!5070693 (= e!3163974 e!3163975)))

(declare-fun c!870625 () Bool)

(assert (=> b!5070693 (= c!870625 ((_ is Leaf!25857) (left!42822 (left!42822 xs!286))))))

(declare-fun b!5070692 () Bool)

(assert (=> b!5070692 (= e!3163974 Nil!58438)))

(declare-fun b!5070695 () Bool)

(assert (=> b!5070695 (= e!3163975 (++!12793 (list!18997 (left!42822 (left!42822 (left!42822 xs!286)))) (list!18997 (right!43152 (left!42822 (left!42822 xs!286))))))))

(assert (= (and d!1636347 c!870624) b!5070692))

(assert (= (and d!1636347 (not c!870624)) b!5070693))

(assert (= (and b!5070693 c!870625) b!5070694))

(assert (= (and b!5070693 (not c!870625)) b!5070695))

(assert (=> b!5070694 m!6115914))

(declare-fun m!6116302 () Bool)

(assert (=> b!5070695 m!6116302))

(declare-fun m!6116304 () Bool)

(assert (=> b!5070695 m!6116304))

(assert (=> b!5070695 m!6116302))

(assert (=> b!5070695 m!6116304))

(declare-fun m!6116306 () Bool)

(assert (=> b!5070695 m!6116306))

(assert (=> b!5069988 d!1636347))

(declare-fun b!5070698 () Bool)

(declare-fun e!3163977 () List!58562)

(assert (=> b!5070698 (= e!3163977 (list!18999 (xs!18924 (right!43152 (left!42822 xs!286)))))))

(declare-fun d!1636349 () Bool)

(declare-fun c!870626 () Bool)

(assert (=> d!1636349 (= c!870626 ((_ is Empty!15568) (right!43152 (left!42822 xs!286))))))

(declare-fun e!3163976 () List!58562)

(assert (=> d!1636349 (= (list!18997 (right!43152 (left!42822 xs!286))) e!3163976)))

(declare-fun b!5070697 () Bool)

(assert (=> b!5070697 (= e!3163976 e!3163977)))

(declare-fun c!870627 () Bool)

(assert (=> b!5070697 (= c!870627 ((_ is Leaf!25857) (right!43152 (left!42822 xs!286))))))

(declare-fun b!5070696 () Bool)

(assert (=> b!5070696 (= e!3163976 Nil!58438)))

(declare-fun b!5070699 () Bool)

(assert (=> b!5070699 (= e!3163977 (++!12793 (list!18997 (left!42822 (right!43152 (left!42822 xs!286)))) (list!18997 (right!43152 (right!43152 (left!42822 xs!286))))))))

(assert (= (and d!1636349 c!870626) b!5070696))

(assert (= (and d!1636349 (not c!870626)) b!5070697))

(assert (= (and b!5070697 c!870627) b!5070698))

(assert (= (and b!5070697 (not c!870627)) b!5070699))

(declare-fun m!6116308 () Bool)

(assert (=> b!5070698 m!6116308))

(declare-fun m!6116310 () Bool)

(assert (=> b!5070699 m!6116310))

(declare-fun m!6116312 () Bool)

(assert (=> b!5070699 m!6116312))

(assert (=> b!5070699 m!6116310))

(assert (=> b!5070699 m!6116312))

(declare-fun m!6116314 () Bool)

(assert (=> b!5070699 m!6116314))

(assert (=> b!5069988 d!1636349))

(declare-fun d!1636351 () Bool)

(declare-fun res!2158946 () Bool)

(declare-fun e!3163978 () Bool)

(assert (=> d!1636351 (=> (not res!2158946) (not e!3163978))))

(assert (=> d!1636351 (= res!2158946 (<= (size!39082 (list!18999 (xs!18924 (left!42822 (left!42822 ys!41))))) 512))))

(assert (=> d!1636351 (= (inv!77582 (left!42822 (left!42822 ys!41))) e!3163978)))

(declare-fun b!5070700 () Bool)

(declare-fun res!2158947 () Bool)

(assert (=> b!5070700 (=> (not res!2158947) (not e!3163978))))

(assert (=> b!5070700 (= res!2158947 (= (csize!31367 (left!42822 (left!42822 ys!41))) (size!39082 (list!18999 (xs!18924 (left!42822 (left!42822 ys!41)))))))))

(declare-fun b!5070701 () Bool)

(assert (=> b!5070701 (= e!3163978 (and (> (csize!31367 (left!42822 (left!42822 ys!41))) 0) (<= (csize!31367 (left!42822 (left!42822 ys!41))) 512)))))

(assert (= (and d!1636351 res!2158946) b!5070700))

(assert (= (and b!5070700 res!2158947) b!5070701))

(assert (=> d!1636351 m!6114900))

(assert (=> d!1636351 m!6114900))

(declare-fun m!6116316 () Bool)

(assert (=> d!1636351 m!6116316))

(assert (=> b!5070700 m!6114900))

(assert (=> b!5070700 m!6114900))

(assert (=> b!5070700 m!6116316))

(assert (=> b!5070093 d!1636351))

(declare-fun d!1636353 () Bool)

(declare-fun lt!2089503 () Int)

(assert (=> d!1636353 (>= lt!2089503 0)))

(declare-fun e!3163979 () Int)

(assert (=> d!1636353 (= lt!2089503 e!3163979)))

(declare-fun c!870628 () Bool)

(assert (=> d!1636353 (= c!870628 ((_ is Nil!58438) (t!371315 (innerList!15656 (xs!18924 xs!286)))))))

(assert (=> d!1636353 (= (size!39082 (t!371315 (innerList!15656 (xs!18924 xs!286)))) lt!2089503)))

(declare-fun b!5070702 () Bool)

(assert (=> b!5070702 (= e!3163979 0)))

(declare-fun b!5070703 () Bool)

(assert (=> b!5070703 (= e!3163979 (+ 1 (size!39082 (t!371315 (t!371315 (innerList!15656 (xs!18924 xs!286)))))))))

(assert (= (and d!1636353 c!870628) b!5070702))

(assert (= (and d!1636353 (not c!870628)) b!5070703))

(declare-fun m!6116318 () Bool)

(assert (=> b!5070703 m!6116318))

(assert (=> b!5069998 d!1636353))

(declare-fun d!1636355 () Bool)

(assert (=> d!1636355 (= (list!18999 (xs!18924 (right!43152 (left!42822 ys!41)))) (innerList!15656 (xs!18924 (right!43152 (left!42822 ys!41)))))))

(assert (=> b!5069965 d!1636355))

(declare-fun b!5070706 () Bool)

(declare-fun res!2158949 () Bool)

(declare-fun e!3163981 () Bool)

(assert (=> b!5070706 (=> (not res!2158949) (not e!3163981))))

(declare-fun lt!2089504 () List!58562)

(assert (=> b!5070706 (= res!2158949 (= (size!39082 lt!2089504) (+ (size!39082 (list!18997 (left!42822 (left!42822 (right!43152 xs!286))))) (size!39082 (list!18997 (right!43152 (left!42822 (right!43152 xs!286))))))))))

(declare-fun b!5070707 () Bool)

(assert (=> b!5070707 (= e!3163981 (or (not (= (list!18997 (right!43152 (left!42822 (right!43152 xs!286)))) Nil!58438)) (= lt!2089504 (list!18997 (left!42822 (left!42822 (right!43152 xs!286)))))))))

(declare-fun b!5070704 () Bool)

(declare-fun e!3163980 () List!58562)

(assert (=> b!5070704 (= e!3163980 (list!18997 (right!43152 (left!42822 (right!43152 xs!286)))))))

(declare-fun d!1636357 () Bool)

(assert (=> d!1636357 e!3163981))

(declare-fun res!2158948 () Bool)

(assert (=> d!1636357 (=> (not res!2158948) (not e!3163981))))

(assert (=> d!1636357 (= res!2158948 (= (content!10420 lt!2089504) ((_ map or) (content!10420 (list!18997 (left!42822 (left!42822 (right!43152 xs!286))))) (content!10420 (list!18997 (right!43152 (left!42822 (right!43152 xs!286))))))))))

(assert (=> d!1636357 (= lt!2089504 e!3163980)))

(declare-fun c!870629 () Bool)

(assert (=> d!1636357 (= c!870629 ((_ is Nil!58438) (list!18997 (left!42822 (left!42822 (right!43152 xs!286))))))))

(assert (=> d!1636357 (= (++!12793 (list!18997 (left!42822 (left!42822 (right!43152 xs!286)))) (list!18997 (right!43152 (left!42822 (right!43152 xs!286))))) lt!2089504)))

(declare-fun b!5070705 () Bool)

(assert (=> b!5070705 (= e!3163980 (Cons!58438 (h!64886 (list!18997 (left!42822 (left!42822 (right!43152 xs!286))))) (++!12793 (t!371315 (list!18997 (left!42822 (left!42822 (right!43152 xs!286))))) (list!18997 (right!43152 (left!42822 (right!43152 xs!286)))))))))

(assert (= (and d!1636357 c!870629) b!5070704))

(assert (= (and d!1636357 (not c!870629)) b!5070705))

(assert (= (and d!1636357 res!2158948) b!5070706))

(assert (= (and b!5070706 res!2158949) b!5070707))

(declare-fun m!6116320 () Bool)

(assert (=> b!5070706 m!6116320))

(assert (=> b!5070706 m!6114950))

(declare-fun m!6116322 () Bool)

(assert (=> b!5070706 m!6116322))

(assert (=> b!5070706 m!6114952))

(declare-fun m!6116324 () Bool)

(assert (=> b!5070706 m!6116324))

(declare-fun m!6116326 () Bool)

(assert (=> d!1636357 m!6116326))

(assert (=> d!1636357 m!6114950))

(declare-fun m!6116328 () Bool)

(assert (=> d!1636357 m!6116328))

(assert (=> d!1636357 m!6114952))

(declare-fun m!6116330 () Bool)

(assert (=> d!1636357 m!6116330))

(assert (=> b!5070705 m!6114952))

(declare-fun m!6116332 () Bool)

(assert (=> b!5070705 m!6116332))

(assert (=> b!5070006 d!1636357))

(declare-fun b!5070710 () Bool)

(declare-fun e!3163983 () List!58562)

(assert (=> b!5070710 (= e!3163983 (list!18999 (xs!18924 (left!42822 (left!42822 (right!43152 xs!286))))))))

(declare-fun d!1636359 () Bool)

(declare-fun c!870630 () Bool)

(assert (=> d!1636359 (= c!870630 ((_ is Empty!15568) (left!42822 (left!42822 (right!43152 xs!286)))))))

(declare-fun e!3163982 () List!58562)

(assert (=> d!1636359 (= (list!18997 (left!42822 (left!42822 (right!43152 xs!286)))) e!3163982)))

(declare-fun b!5070709 () Bool)

(assert (=> b!5070709 (= e!3163982 e!3163983)))

(declare-fun c!870631 () Bool)

(assert (=> b!5070709 (= c!870631 ((_ is Leaf!25857) (left!42822 (left!42822 (right!43152 xs!286)))))))

(declare-fun b!5070708 () Bool)

(assert (=> b!5070708 (= e!3163982 Nil!58438)))

(declare-fun b!5070711 () Bool)

(assert (=> b!5070711 (= e!3163983 (++!12793 (list!18997 (left!42822 (left!42822 (left!42822 (right!43152 xs!286))))) (list!18997 (right!43152 (left!42822 (left!42822 (right!43152 xs!286)))))))))

(assert (= (and d!1636359 c!870630) b!5070708))

(assert (= (and d!1636359 (not c!870630)) b!5070709))

(assert (= (and b!5070709 c!870631) b!5070710))

(assert (= (and b!5070709 (not c!870631)) b!5070711))

(declare-fun m!6116334 () Bool)

(assert (=> b!5070710 m!6116334))

(declare-fun m!6116336 () Bool)

(assert (=> b!5070711 m!6116336))

(declare-fun m!6116338 () Bool)

(assert (=> b!5070711 m!6116338))

(assert (=> b!5070711 m!6116336))

(assert (=> b!5070711 m!6116338))

(declare-fun m!6116340 () Bool)

(assert (=> b!5070711 m!6116340))

(assert (=> b!5070006 d!1636359))

(declare-fun b!5070714 () Bool)

(declare-fun e!3163985 () List!58562)

(assert (=> b!5070714 (= e!3163985 (list!18999 (xs!18924 (right!43152 (left!42822 (right!43152 xs!286))))))))

(declare-fun d!1636361 () Bool)

(declare-fun c!870632 () Bool)

(assert (=> d!1636361 (= c!870632 ((_ is Empty!15568) (right!43152 (left!42822 (right!43152 xs!286)))))))

(declare-fun e!3163984 () List!58562)

(assert (=> d!1636361 (= (list!18997 (right!43152 (left!42822 (right!43152 xs!286)))) e!3163984)))

(declare-fun b!5070713 () Bool)

(assert (=> b!5070713 (= e!3163984 e!3163985)))

(declare-fun c!870633 () Bool)

(assert (=> b!5070713 (= c!870633 ((_ is Leaf!25857) (right!43152 (left!42822 (right!43152 xs!286)))))))

(declare-fun b!5070712 () Bool)

(assert (=> b!5070712 (= e!3163984 Nil!58438)))

(declare-fun b!5070715 () Bool)

(assert (=> b!5070715 (= e!3163985 (++!12793 (list!18997 (left!42822 (right!43152 (left!42822 (right!43152 xs!286))))) (list!18997 (right!43152 (right!43152 (left!42822 (right!43152 xs!286)))))))))

(assert (= (and d!1636361 c!870632) b!5070712))

(assert (= (and d!1636361 (not c!870632)) b!5070713))

(assert (= (and b!5070713 c!870633) b!5070714))

(assert (= (and b!5070713 (not c!870633)) b!5070715))

(declare-fun m!6116342 () Bool)

(assert (=> b!5070714 m!6116342))

(declare-fun m!6116344 () Bool)

(assert (=> b!5070715 m!6116344))

(declare-fun m!6116346 () Bool)

(assert (=> b!5070715 m!6116346))

(assert (=> b!5070715 m!6116344))

(assert (=> b!5070715 m!6116346))

(declare-fun m!6116348 () Bool)

(assert (=> b!5070715 m!6116348))

(assert (=> b!5070006 d!1636361))

(assert (=> b!5070137 d!1636129))

(assert (=> b!5070137 d!1636131))

(declare-fun d!1636363 () Bool)

(assert (=> d!1636363 (= (inv!77578 (xs!18924 (left!42822 (left!42822 xs!286)))) (<= (size!39082 (innerList!15656 (xs!18924 (left!42822 (left!42822 xs!286))))) 2147483647))))

(declare-fun bs!1190129 () Bool)

(assert (= bs!1190129 d!1636363))

(declare-fun m!6116350 () Bool)

(assert (=> bs!1190129 m!6116350))

(assert (=> b!5070156 d!1636363))

(declare-fun d!1636365 () Bool)

(declare-fun lt!2089505 () Int)

(assert (=> d!1636365 (>= lt!2089505 0)))

(declare-fun e!3163986 () Int)

(assert (=> d!1636365 (= lt!2089505 e!3163986)))

(declare-fun c!870634 () Bool)

(assert (=> d!1636365 (= c!870634 ((_ is Nil!58438) (list!18999 (xs!18924 (right!43152 ys!41)))))))

(assert (=> d!1636365 (= (size!39082 (list!18999 (xs!18924 (right!43152 ys!41)))) lt!2089505)))

(declare-fun b!5070716 () Bool)

(assert (=> b!5070716 (= e!3163986 0)))

(declare-fun b!5070717 () Bool)

(assert (=> b!5070717 (= e!3163986 (+ 1 (size!39082 (t!371315 (list!18999 (xs!18924 (right!43152 ys!41)))))))))

(assert (= (and d!1636365 c!870634) b!5070716))

(assert (= (and d!1636365 (not c!870634)) b!5070717))

(declare-fun m!6116352 () Bool)

(assert (=> b!5070717 m!6116352))

(assert (=> b!5069999 d!1636365))

(assert (=> b!5069999 d!1636267))

(declare-fun b!5070720 () Bool)

(declare-fun res!2158951 () Bool)

(declare-fun e!3163988 () Bool)

(assert (=> b!5070720 (=> (not res!2158951) (not e!3163988))))

(declare-fun lt!2089506 () List!58562)

(assert (=> b!5070720 (= res!2158951 (= (size!39082 lt!2089506) (+ (size!39082 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))))) (size!39082 (list!18997 (right!43152 (left!42822 ys!41)))))))))

(declare-fun b!5070721 () Bool)

(assert (=> b!5070721 (= e!3163988 (or (not (= (list!18997 (right!43152 (left!42822 ys!41))) Nil!58438)) (= lt!2089506 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41)))))))))

(declare-fun b!5070718 () Bool)

(declare-fun e!3163987 () List!58562)

(assert (=> b!5070718 (= e!3163987 (list!18997 (right!43152 (left!42822 ys!41))))))

(declare-fun d!1636367 () Bool)

(assert (=> d!1636367 e!3163988))

(declare-fun res!2158950 () Bool)

(assert (=> d!1636367 (=> (not res!2158950) (not e!3163988))))

(assert (=> d!1636367 (= res!2158950 (= (content!10420 lt!2089506) ((_ map or) (content!10420 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))))) (content!10420 (list!18997 (right!43152 (left!42822 ys!41)))))))))

(assert (=> d!1636367 (= lt!2089506 e!3163987)))

(declare-fun c!870635 () Bool)

(assert (=> d!1636367 (= c!870635 ((_ is Nil!58438) (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))))))))

(assert (=> d!1636367 (= (++!12793 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41)))) (list!18997 (right!43152 (left!42822 ys!41)))) lt!2089506)))

(declare-fun b!5070719 () Bool)

(assert (=> b!5070719 (= e!3163987 (Cons!58438 (h!64886 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))))) (++!12793 (t!371315 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))))) (list!18997 (right!43152 (left!42822 ys!41))))))))

(assert (= (and d!1636367 c!870635) b!5070718))

(assert (= (and d!1636367 (not c!870635)) b!5070719))

(assert (= (and d!1636367 res!2158950) b!5070720))

(assert (= (and b!5070720 res!2158951) b!5070721))

(declare-fun m!6116354 () Bool)

(assert (=> b!5070720 m!6116354))

(assert (=> b!5070720 m!6114514))

(declare-fun m!6116356 () Bool)

(assert (=> b!5070720 m!6116356))

(assert (=> b!5070720 m!6114516))

(assert (=> b!5070720 m!6115994))

(declare-fun m!6116358 () Bool)

(assert (=> d!1636367 m!6116358))

(assert (=> d!1636367 m!6114514))

(declare-fun m!6116360 () Bool)

(assert (=> d!1636367 m!6116360))

(assert (=> d!1636367 m!6114516))

(assert (=> d!1636367 m!6115998))

(assert (=> b!5070719 m!6114516))

(declare-fun m!6116362 () Bool)

(assert (=> b!5070719 m!6116362))

(assert (=> bm!353233 d!1636367))

(declare-fun d!1636369 () Bool)

(declare-fun c!870636 () Bool)

(assert (=> d!1636369 (= c!870636 ((_ is Node!15568) (left!42822 (right!43152 (right!43152 err!4601)))))))

(declare-fun e!3163989 () Bool)

(assert (=> d!1636369 (= (inv!77577 (left!42822 (right!43152 (right!43152 err!4601)))) e!3163989)))

(declare-fun b!5070722 () Bool)

(assert (=> b!5070722 (= e!3163989 (inv!77580 (left!42822 (right!43152 (right!43152 err!4601)))))))

(declare-fun b!5070723 () Bool)

(declare-fun e!3163990 () Bool)

(assert (=> b!5070723 (= e!3163989 e!3163990)))

(declare-fun res!2158952 () Bool)

(assert (=> b!5070723 (= res!2158952 (not ((_ is Leaf!25857) (left!42822 (right!43152 (right!43152 err!4601))))))))

(assert (=> b!5070723 (=> res!2158952 e!3163990)))

(declare-fun b!5070724 () Bool)

(assert (=> b!5070724 (= e!3163990 (inv!77582 (left!42822 (right!43152 (right!43152 err!4601)))))))

(assert (= (and d!1636369 c!870636) b!5070722))

(assert (= (and d!1636369 (not c!870636)) b!5070723))

(assert (= (and b!5070723 (not res!2158952)) b!5070724))

(declare-fun m!6116364 () Bool)

(assert (=> b!5070722 m!6116364))

(declare-fun m!6116366 () Bool)

(assert (=> b!5070724 m!6116366))

(assert (=> b!5070167 d!1636369))

(declare-fun d!1636371 () Bool)

(declare-fun c!870637 () Bool)

(assert (=> d!1636371 (= c!870637 ((_ is Node!15568) (right!43152 (right!43152 (right!43152 err!4601)))))))

(declare-fun e!3163991 () Bool)

(assert (=> d!1636371 (= (inv!77577 (right!43152 (right!43152 (right!43152 err!4601)))) e!3163991)))

(declare-fun b!5070725 () Bool)

(assert (=> b!5070725 (= e!3163991 (inv!77580 (right!43152 (right!43152 (right!43152 err!4601)))))))

(declare-fun b!5070726 () Bool)

(declare-fun e!3163992 () Bool)

(assert (=> b!5070726 (= e!3163991 e!3163992)))

(declare-fun res!2158953 () Bool)

(assert (=> b!5070726 (= res!2158953 (not ((_ is Leaf!25857) (right!43152 (right!43152 (right!43152 err!4601))))))))

(assert (=> b!5070726 (=> res!2158953 e!3163992)))

(declare-fun b!5070727 () Bool)

(assert (=> b!5070727 (= e!3163992 (inv!77582 (right!43152 (right!43152 (right!43152 err!4601)))))))

(assert (= (and d!1636371 c!870637) b!5070725))

(assert (= (and d!1636371 (not c!870637)) b!5070726))

(assert (= (and b!5070726 (not res!2158953)) b!5070727))

(declare-fun m!6116368 () Bool)

(assert (=> b!5070725 m!6116368))

(declare-fun m!6116370 () Bool)

(assert (=> b!5070727 m!6116370))

(assert (=> b!5070167 d!1636371))

(assert (=> bm!353239 d!1635813))

(declare-fun d!1636373 () Bool)

(assert (=> d!1636373 (= (inv!77578 (xs!18924 (left!42822 (right!43152 xs!286)))) (<= (size!39082 (innerList!15656 (xs!18924 (left!42822 (right!43152 xs!286))))) 2147483647))))

(declare-fun bs!1190130 () Bool)

(assert (= bs!1190130 d!1636373))

(declare-fun m!6116372 () Bool)

(assert (=> bs!1190130 m!6116372))

(assert (=> b!5070143 d!1636373))

(declare-fun b!5070730 () Bool)

(declare-fun res!2158955 () Bool)

(declare-fun e!3163994 () Bool)

(assert (=> b!5070730 (=> (not res!2158955) (not e!3163994))))

(declare-fun lt!2089507 () List!58562)

(assert (=> b!5070730 (= res!2158955 (= (size!39082 lt!2089507) (+ (size!39082 (list!18997 (left!42822 (right!43152 ys!41)))) (size!39082 (list!18997 (right!43152 (right!43152 ys!41)))))))))

(declare-fun b!5070731 () Bool)

(assert (=> b!5070731 (= e!3163994 (or (not (= (list!18997 (right!43152 (right!43152 ys!41))) Nil!58438)) (= lt!2089507 (list!18997 (left!42822 (right!43152 ys!41))))))))

(declare-fun b!5070728 () Bool)

(declare-fun e!3163993 () List!58562)

(assert (=> b!5070728 (= e!3163993 (list!18997 (right!43152 (right!43152 ys!41))))))

(declare-fun d!1636375 () Bool)

(assert (=> d!1636375 e!3163994))

(declare-fun res!2158954 () Bool)

(assert (=> d!1636375 (=> (not res!2158954) (not e!3163994))))

(assert (=> d!1636375 (= res!2158954 (= (content!10420 lt!2089507) ((_ map or) (content!10420 (list!18997 (left!42822 (right!43152 ys!41)))) (content!10420 (list!18997 (right!43152 (right!43152 ys!41)))))))))

(assert (=> d!1636375 (= lt!2089507 e!3163993)))

(declare-fun c!870638 () Bool)

(assert (=> d!1636375 (= c!870638 ((_ is Nil!58438) (list!18997 (left!42822 (right!43152 ys!41)))))))

(assert (=> d!1636375 (= (++!12793 (list!18997 (left!42822 (right!43152 ys!41))) (list!18997 (right!43152 (right!43152 ys!41)))) lt!2089507)))

(declare-fun b!5070729 () Bool)

(assert (=> b!5070729 (= e!3163993 (Cons!58438 (h!64886 (list!18997 (left!42822 (right!43152 ys!41)))) (++!12793 (t!371315 (list!18997 (left!42822 (right!43152 ys!41)))) (list!18997 (right!43152 (right!43152 ys!41))))))))

(assert (= (and d!1636375 c!870638) b!5070728))

(assert (= (and d!1636375 (not c!870638)) b!5070729))

(assert (= (and d!1636375 res!2158954) b!5070730))

(assert (= (and b!5070730 res!2158955) b!5070731))

(declare-fun m!6116374 () Bool)

(assert (=> b!5070730 m!6116374))

(assert (=> b!5070730 m!6114866))

(assert (=> b!5070730 m!6116198))

(assert (=> b!5070730 m!6114868))

(assert (=> b!5070730 m!6116200))

(declare-fun m!6116376 () Bool)

(assert (=> d!1636375 m!6116376))

(assert (=> d!1636375 m!6114866))

(declare-fun m!6116378 () Bool)

(assert (=> d!1636375 m!6116378))

(assert (=> d!1636375 m!6114868))

(declare-fun m!6116380 () Bool)

(assert (=> d!1636375 m!6116380))

(assert (=> b!5070729 m!6114868))

(declare-fun m!6116382 () Bool)

(assert (=> b!5070729 m!6116382))

(assert (=> b!5069962 d!1636375))

(declare-fun b!5070734 () Bool)

(declare-fun e!3163996 () List!58562)

(assert (=> b!5070734 (= e!3163996 (list!18999 (xs!18924 (left!42822 (right!43152 ys!41)))))))

(declare-fun d!1636377 () Bool)

(declare-fun c!870639 () Bool)

(assert (=> d!1636377 (= c!870639 ((_ is Empty!15568) (left!42822 (right!43152 ys!41))))))

(declare-fun e!3163995 () List!58562)

(assert (=> d!1636377 (= (list!18997 (left!42822 (right!43152 ys!41))) e!3163995)))

(declare-fun b!5070733 () Bool)

(assert (=> b!5070733 (= e!3163995 e!3163996)))

(declare-fun c!870640 () Bool)

(assert (=> b!5070733 (= c!870640 ((_ is Leaf!25857) (left!42822 (right!43152 ys!41))))))

(declare-fun b!5070732 () Bool)

(assert (=> b!5070732 (= e!3163995 Nil!58438)))

(declare-fun b!5070735 () Bool)

(assert (=> b!5070735 (= e!3163996 (++!12793 (list!18997 (left!42822 (left!42822 (right!43152 ys!41)))) (list!18997 (right!43152 (left!42822 (right!43152 ys!41))))))))

(assert (= (and d!1636377 c!870639) b!5070732))

(assert (= (and d!1636377 (not c!870639)) b!5070733))

(assert (= (and b!5070733 c!870640) b!5070734))

(assert (= (and b!5070733 (not c!870640)) b!5070735))

(declare-fun m!6116384 () Bool)

(assert (=> b!5070734 m!6116384))

(declare-fun m!6116386 () Bool)

(assert (=> b!5070735 m!6116386))

(declare-fun m!6116388 () Bool)

(assert (=> b!5070735 m!6116388))

(assert (=> b!5070735 m!6116386))

(assert (=> b!5070735 m!6116388))

(declare-fun m!6116390 () Bool)

(assert (=> b!5070735 m!6116390))

(assert (=> b!5069962 d!1636377))

(declare-fun b!5070738 () Bool)

(declare-fun e!3163998 () List!58562)

(assert (=> b!5070738 (= e!3163998 (list!18999 (xs!18924 (right!43152 (right!43152 ys!41)))))))

(declare-fun d!1636379 () Bool)

(declare-fun c!870641 () Bool)

(assert (=> d!1636379 (= c!870641 ((_ is Empty!15568) (right!43152 (right!43152 ys!41))))))

(declare-fun e!3163997 () List!58562)

(assert (=> d!1636379 (= (list!18997 (right!43152 (right!43152 ys!41))) e!3163997)))

(declare-fun b!5070737 () Bool)

(assert (=> b!5070737 (= e!3163997 e!3163998)))

(declare-fun c!870642 () Bool)

(assert (=> b!5070737 (= c!870642 ((_ is Leaf!25857) (right!43152 (right!43152 ys!41))))))

(declare-fun b!5070736 () Bool)

(assert (=> b!5070736 (= e!3163997 Nil!58438)))

(declare-fun b!5070739 () Bool)

(assert (=> b!5070739 (= e!3163998 (++!12793 (list!18997 (left!42822 (right!43152 (right!43152 ys!41)))) (list!18997 (right!43152 (right!43152 (right!43152 ys!41))))))))

(assert (= (and d!1636379 c!870641) b!5070736))

(assert (= (and d!1636379 (not c!870641)) b!5070737))

(assert (= (and b!5070737 c!870642) b!5070738))

(assert (= (and b!5070737 (not c!870642)) b!5070739))

(assert (=> b!5070738 m!6116244))

(declare-fun m!6116392 () Bool)

(assert (=> b!5070739 m!6116392))

(declare-fun m!6116394 () Bool)

(assert (=> b!5070739 m!6116394))

(assert (=> b!5070739 m!6116392))

(assert (=> b!5070739 m!6116394))

(declare-fun m!6116396 () Bool)

(assert (=> b!5070739 m!6116396))

(assert (=> b!5069962 d!1636379))

(declare-fun b!5070742 () Bool)

(declare-fun res!2158957 () Bool)

(declare-fun e!3164000 () Bool)

(assert (=> b!5070742 (=> (not res!2158957) (not e!3164000))))

(declare-fun lt!2089508 () List!58562)

(assert (=> b!5070742 (= res!2158957 (= (size!39082 lt!2089508) (+ (size!39082 call!353254) (size!39082 (list!18997 ys!41)))))))

(declare-fun b!5070743 () Bool)

(assert (=> b!5070743 (= e!3164000 (or (not (= (list!18997 ys!41) Nil!58438)) (= lt!2089508 call!353254)))))

(declare-fun b!5070740 () Bool)

(declare-fun e!3163999 () List!58562)

(assert (=> b!5070740 (= e!3163999 (list!18997 ys!41))))

(declare-fun d!1636381 () Bool)

(assert (=> d!1636381 e!3164000))

(declare-fun res!2158956 () Bool)

(assert (=> d!1636381 (=> (not res!2158956) (not e!3164000))))

(assert (=> d!1636381 (= res!2158956 (= (content!10420 lt!2089508) ((_ map or) (content!10420 call!353254) (content!10420 (list!18997 ys!41)))))))

(assert (=> d!1636381 (= lt!2089508 e!3163999)))

(declare-fun c!870643 () Bool)

(assert (=> d!1636381 (= c!870643 ((_ is Nil!58438) call!353254))))

(assert (=> d!1636381 (= (++!12793 call!353254 (list!18997 ys!41)) lt!2089508)))

(declare-fun b!5070741 () Bool)

(assert (=> b!5070741 (= e!3163999 (Cons!58438 (h!64886 call!353254) (++!12793 (t!371315 call!353254) (list!18997 ys!41))))))

(assert (= (and d!1636381 c!870643) b!5070740))

(assert (= (and d!1636381 (not c!870643)) b!5070741))

(assert (= (and d!1636381 res!2158956) b!5070742))

(assert (= (and b!5070742 res!2158957) b!5070743))

(declare-fun m!6116398 () Bool)

(assert (=> b!5070742 m!6116398))

(declare-fun m!6116400 () Bool)

(assert (=> b!5070742 m!6116400))

(assert (=> b!5070742 m!6114412))

(assert (=> b!5070742 m!6114608))

(declare-fun m!6116402 () Bool)

(assert (=> d!1636381 m!6116402))

(declare-fun m!6116404 () Bool)

(assert (=> d!1636381 m!6116404))

(assert (=> d!1636381 m!6114412))

(assert (=> d!1636381 m!6114614))

(assert (=> b!5070741 m!6114412))

(declare-fun m!6116406 () Bool)

(assert (=> b!5070741 m!6116406))

(assert (=> bm!353252 d!1636381))

(declare-fun d!1636383 () Bool)

(declare-fun lt!2089509 () Bool)

(assert (=> d!1636383 (= lt!2089509 (isEmpty!31640 (list!18997 (right!43152 (left!42822 xs!286)))))))

(assert (=> d!1636383 (= lt!2089509 (= (size!39084 (right!43152 (left!42822 xs!286))) 0))))

(assert (=> d!1636383 (= (isEmpty!31638 (right!43152 (left!42822 xs!286))) lt!2089509)))

(declare-fun bs!1190131 () Bool)

(assert (= bs!1190131 d!1636383))

(assert (=> bs!1190131 m!6114930))

(assert (=> bs!1190131 m!6114930))

(declare-fun m!6116408 () Bool)

(assert (=> bs!1190131 m!6116408))

(assert (=> bs!1190131 m!6114818))

(assert (=> b!5070051 d!1636383))

(assert (=> d!1635829 d!1636125))

(assert (=> d!1635829 d!1636127))

(declare-fun d!1636385 () Bool)

(declare-fun c!870644 () Bool)

(assert (=> d!1636385 (= c!870644 ((_ is Nil!58438) (t!371315 (list!18997 xs!286))))))

(declare-fun e!3164001 () (InoxSet T!105146))

(assert (=> d!1636385 (= (content!10420 (t!371315 (list!18997 xs!286))) e!3164001)))

(declare-fun b!5070744 () Bool)

(assert (=> b!5070744 (= e!3164001 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070745 () Bool)

(assert (=> b!5070745 (= e!3164001 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 (t!371315 (list!18997 xs!286))) true) (content!10420 (t!371315 (t!371315 (list!18997 xs!286))))))))

(assert (= (and d!1636385 c!870644) b!5070744))

(assert (= (and d!1636385 (not c!870644)) b!5070745))

(declare-fun m!6116410 () Bool)

(assert (=> b!5070745 m!6116410))

(declare-fun m!6116412 () Bool)

(assert (=> b!5070745 m!6116412))

(assert (=> b!5070109 d!1636385))

(declare-fun d!1636387 () Bool)

(declare-fun lt!2089510 () Bool)

(assert (=> d!1636387 (= lt!2089510 (isEmpty!31640 (list!18997 (right!43152 (right!43152 xs!286)))))))

(assert (=> d!1636387 (= lt!2089510 (= (size!39084 (right!43152 (right!43152 xs!286))) 0))))

(assert (=> d!1636387 (= (isEmpty!31638 (right!43152 (right!43152 xs!286))) lt!2089510)))

(declare-fun bs!1190132 () Bool)

(assert (= bs!1190132 d!1636387))

(assert (=> bs!1190132 m!6114524))

(assert (=> bs!1190132 m!6114524))

(declare-fun m!6116414 () Bool)

(assert (=> bs!1190132 m!6116414))

(assert (=> bs!1190132 m!6115074))

(assert (=> b!5070068 d!1636387))

(declare-fun d!1636389 () Bool)

(declare-fun lt!2089511 () Int)

(assert (=> d!1636389 (>= lt!2089511 0)))

(declare-fun e!3164002 () Int)

(assert (=> d!1636389 (= lt!2089511 e!3164002)))

(declare-fun c!870645 () Bool)

(assert (=> d!1636389 (= c!870645 ((_ is Nil!58438) lt!2089394))))

(assert (=> d!1636389 (= (size!39082 lt!2089394) lt!2089511)))

(declare-fun b!5070746 () Bool)

(assert (=> b!5070746 (= e!3164002 0)))

(declare-fun b!5070747 () Bool)

(assert (=> b!5070747 (= e!3164002 (+ 1 (size!39082 (t!371315 lt!2089394))))))

(assert (= (and d!1636389 c!870645) b!5070746))

(assert (= (and d!1636389 (not c!870645)) b!5070747))

(declare-fun m!6116416 () Bool)

(assert (=> b!5070747 m!6116416))

(assert (=> b!5069975 d!1636389))

(assert (=> b!5069975 d!1635839))

(declare-fun d!1636391 () Bool)

(declare-fun lt!2089512 () Int)

(assert (=> d!1636391 (>= lt!2089512 0)))

(declare-fun e!3164003 () Int)

(assert (=> d!1636391 (= lt!2089512 e!3164003)))

(declare-fun c!870646 () Bool)

(assert (=> d!1636391 (= c!870646 ((_ is Nil!58438) (list!18997 (left!42822 (left!42822 ys!41)))))))

(assert (=> d!1636391 (= (size!39082 (list!18997 (left!42822 (left!42822 ys!41)))) lt!2089512)))

(declare-fun b!5070748 () Bool)

(assert (=> b!5070748 (= e!3164003 0)))

(declare-fun b!5070749 () Bool)

(assert (=> b!5070749 (= e!3164003 (+ 1 (size!39082 (t!371315 (list!18997 (left!42822 (left!42822 ys!41)))))))))

(assert (= (and d!1636391 c!870646) b!5070748))

(assert (= (and d!1636391 (not c!870646)) b!5070749))

(declare-fun m!6116418 () Bool)

(assert (=> b!5070749 m!6116418))

(assert (=> b!5069975 d!1636391))

(declare-fun d!1636393 () Bool)

(declare-fun lt!2089513 () Int)

(assert (=> d!1636393 (>= lt!2089513 0)))

(declare-fun e!3164004 () Int)

(assert (=> d!1636393 (= lt!2089513 e!3164004)))

(declare-fun c!870647 () Bool)

(assert (=> d!1636393 (= c!870647 ((_ is Nil!58438) (t!371315 (list!18997 ys!41))))))

(assert (=> d!1636393 (= (size!39082 (t!371315 (list!18997 ys!41))) lt!2089513)))

(declare-fun b!5070750 () Bool)

(assert (=> b!5070750 (= e!3164004 0)))

(declare-fun b!5070751 () Bool)

(assert (=> b!5070751 (= e!3164004 (+ 1 (size!39082 (t!371315 (t!371315 (list!18997 ys!41))))))))

(assert (= (and d!1636393 c!870647) b!5070750))

(assert (= (and d!1636393 (not c!870647)) b!5070751))

(declare-fun m!6116420 () Bool)

(assert (=> b!5070751 m!6116420))

(assert (=> b!5070059 d!1636393))

(declare-fun d!1636395 () Bool)

(declare-fun res!2158958 () Bool)

(declare-fun e!3164005 () Bool)

(assert (=> d!1636395 (=> (not res!2158958) (not e!3164005))))

(assert (=> d!1636395 (= res!2158958 (<= (size!39082 (list!18999 (xs!18924 (right!43152 (left!42822 xs!286))))) 512))))

(assert (=> d!1636395 (= (inv!77582 (right!43152 (left!42822 xs!286))) e!3164005)))

(declare-fun b!5070752 () Bool)

(declare-fun res!2158959 () Bool)

(assert (=> b!5070752 (=> (not res!2158959) (not e!3164005))))

(assert (=> b!5070752 (= res!2158959 (= (csize!31367 (right!43152 (left!42822 xs!286))) (size!39082 (list!18999 (xs!18924 (right!43152 (left!42822 xs!286)))))))))

(declare-fun b!5070753 () Bool)

(assert (=> b!5070753 (= e!3164005 (and (> (csize!31367 (right!43152 (left!42822 xs!286))) 0) (<= (csize!31367 (right!43152 (left!42822 xs!286))) 512)))))

(assert (= (and d!1636395 res!2158958) b!5070752))

(assert (= (and b!5070752 res!2158959) b!5070753))

(assert (=> d!1636395 m!6116308))

(assert (=> d!1636395 m!6116308))

(declare-fun m!6116422 () Bool)

(assert (=> d!1636395 m!6116422))

(assert (=> b!5070752 m!6116308))

(assert (=> b!5070752 m!6116308))

(assert (=> b!5070752 m!6116422))

(assert (=> b!5070079 d!1636395))

(declare-fun d!1636397 () Bool)

(declare-fun res!2158960 () Bool)

(declare-fun e!3164006 () Bool)

(assert (=> d!1636397 (=> (not res!2158960) (not e!3164006))))

(assert (=> d!1636397 (= res!2158960 (= (csize!31366 (left!42822 (right!43152 xs!286))) (+ (size!39084 (left!42822 (left!42822 (right!43152 xs!286)))) (size!39084 (right!43152 (left!42822 (right!43152 xs!286)))))))))

(assert (=> d!1636397 (= (inv!77580 (left!42822 (right!43152 xs!286))) e!3164006)))

(declare-fun b!5070754 () Bool)

(declare-fun res!2158961 () Bool)

(assert (=> b!5070754 (=> (not res!2158961) (not e!3164006))))

(assert (=> b!5070754 (= res!2158961 (and (not (= (left!42822 (left!42822 (right!43152 xs!286))) Empty!15568)) (not (= (right!43152 (left!42822 (right!43152 xs!286))) Empty!15568))))))

(declare-fun b!5070755 () Bool)

(declare-fun res!2158962 () Bool)

(assert (=> b!5070755 (=> (not res!2158962) (not e!3164006))))

(assert (=> b!5070755 (= res!2158962 (= (cheight!15779 (left!42822 (right!43152 xs!286))) (+ (max!0 (height!2145 (left!42822 (left!42822 (right!43152 xs!286)))) (height!2145 (right!43152 (left!42822 (right!43152 xs!286))))) 1)))))

(declare-fun b!5070756 () Bool)

(assert (=> b!5070756 (= e!3164006 (<= 0 (cheight!15779 (left!42822 (right!43152 xs!286)))))))

(assert (= (and d!1636397 res!2158960) b!5070754))

(assert (= (and b!5070754 res!2158961) b!5070755))

(assert (= (and b!5070755 res!2158962) b!5070756))

(declare-fun m!6116424 () Bool)

(assert (=> d!1636397 m!6116424))

(declare-fun m!6116426 () Bool)

(assert (=> d!1636397 m!6116426))

(assert (=> b!5070755 m!6116134))

(assert (=> b!5070755 m!6116136))

(assert (=> b!5070755 m!6116134))

(assert (=> b!5070755 m!6116136))

(declare-fun m!6116428 () Bool)

(assert (=> b!5070755 m!6116428))

(assert (=> b!5069939 d!1636397))

(declare-fun d!1636399 () Bool)

(declare-fun lt!2089514 () Int)

(assert (=> d!1636399 (>= lt!2089514 0)))

(declare-fun e!3164007 () Int)

(assert (=> d!1636399 (= lt!2089514 e!3164007)))

(declare-fun c!870648 () Bool)

(assert (=> d!1636399 (= c!870648 ((_ is Nil!58438) lt!2089395))))

(assert (=> d!1636399 (= (size!39082 lt!2089395) lt!2089514)))

(declare-fun b!5070757 () Bool)

(assert (=> b!5070757 (= e!3164007 0)))

(declare-fun b!5070758 () Bool)

(assert (=> b!5070758 (= e!3164007 (+ 1 (size!39082 (t!371315 lt!2089395))))))

(assert (= (and d!1636399 c!870648) b!5070757))

(assert (= (and d!1636399 (not c!870648)) b!5070758))

(declare-fun m!6116430 () Bool)

(assert (=> b!5070758 m!6116430))

(assert (=> b!5069983 d!1636399))

(declare-fun d!1636401 () Bool)

(declare-fun lt!2089515 () Int)

(assert (=> d!1636401 (>= lt!2089515 0)))

(declare-fun e!3164008 () Int)

(assert (=> d!1636401 (= lt!2089515 e!3164008)))

(declare-fun c!870649 () Bool)

(assert (=> d!1636401 (= c!870649 ((_ is Nil!58438) (list!18997 (left!42822 xs!286))))))

(assert (=> d!1636401 (= (size!39082 (list!18997 (left!42822 xs!286))) lt!2089515)))

(declare-fun b!5070759 () Bool)

(assert (=> b!5070759 (= e!3164008 0)))

(declare-fun b!5070760 () Bool)

(assert (=> b!5070760 (= e!3164008 (+ 1 (size!39082 (t!371315 (list!18997 (left!42822 xs!286))))))))

(assert (= (and d!1636401 c!870649) b!5070759))

(assert (= (and d!1636401 (not c!870649)) b!5070760))

(assert (=> b!5070760 m!6116260))

(assert (=> b!5069983 d!1636401))

(declare-fun d!1636403 () Bool)

(declare-fun lt!2089516 () Int)

(assert (=> d!1636403 (>= lt!2089516 0)))

(declare-fun e!3164009 () Int)

(assert (=> d!1636403 (= lt!2089516 e!3164009)))

(declare-fun c!870650 () Bool)

(assert (=> d!1636403 (= c!870650 ((_ is Nil!58438) (list!18997 (right!43152 xs!286))))))

(assert (=> d!1636403 (= (size!39082 (list!18997 (right!43152 xs!286))) lt!2089516)))

(declare-fun b!5070761 () Bool)

(assert (=> b!5070761 (= e!3164009 0)))

(declare-fun b!5070762 () Bool)

(assert (=> b!5070762 (= e!3164009 (+ 1 (size!39082 (t!371315 (list!18997 (right!43152 xs!286))))))))

(assert (= (and d!1636403 c!870650) b!5070761))

(assert (= (and d!1636403 (not c!870650)) b!5070762))

(declare-fun m!6116432 () Bool)

(assert (=> b!5070762 m!6116432))

(assert (=> b!5069983 d!1636403))

(assert (=> b!5069991 d!1636127))

(declare-fun d!1636405 () Bool)

(declare-fun res!2158963 () Bool)

(declare-fun e!3164011 () Bool)

(assert (=> d!1636405 (=> res!2158963 e!3164011)))

(assert (=> d!1636405 (= res!2158963 (not ((_ is Node!15568) (right!43152 (left!42822 ys!41)))))))

(assert (=> d!1636405 (= (isBalanced!4430 (right!43152 (left!42822 ys!41))) e!3164011)))

(declare-fun b!5070763 () Bool)

(declare-fun res!2158966 () Bool)

(declare-fun e!3164010 () Bool)

(assert (=> b!5070763 (=> (not res!2158966) (not e!3164010))))

(assert (=> b!5070763 (= res!2158966 (not (isEmpty!31638 (left!42822 (right!43152 (left!42822 ys!41))))))))

(declare-fun b!5070764 () Bool)

(declare-fun res!2158967 () Bool)

(assert (=> b!5070764 (=> (not res!2158967) (not e!3164010))))

(assert (=> b!5070764 (= res!2158967 (isBalanced!4430 (right!43152 (right!43152 (left!42822 ys!41)))))))

(declare-fun b!5070765 () Bool)

(assert (=> b!5070765 (= e!3164011 e!3164010)))

(declare-fun res!2158968 () Bool)

(assert (=> b!5070765 (=> (not res!2158968) (not e!3164010))))

(assert (=> b!5070765 (= res!2158968 (<= (- 1) (- (height!2145 (left!42822 (right!43152 (left!42822 ys!41)))) (height!2145 (right!43152 (right!43152 (left!42822 ys!41)))))))))

(declare-fun b!5070766 () Bool)

(declare-fun res!2158965 () Bool)

(assert (=> b!5070766 (=> (not res!2158965) (not e!3164010))))

(assert (=> b!5070766 (= res!2158965 (isBalanced!4430 (left!42822 (right!43152 (left!42822 ys!41)))))))

(declare-fun b!5070767 () Bool)

(declare-fun res!2158964 () Bool)

(assert (=> b!5070767 (=> (not res!2158964) (not e!3164010))))

(assert (=> b!5070767 (= res!2158964 (<= (- (height!2145 (left!42822 (right!43152 (left!42822 ys!41)))) (height!2145 (right!43152 (right!43152 (left!42822 ys!41))))) 1))))

(declare-fun b!5070768 () Bool)

(assert (=> b!5070768 (= e!3164010 (not (isEmpty!31638 (right!43152 (right!43152 (left!42822 ys!41))))))))

(assert (= (and d!1636405 (not res!2158963)) b!5070765))

(assert (= (and b!5070765 res!2158968) b!5070767))

(assert (= (and b!5070767 res!2158964) b!5070766))

(assert (= (and b!5070766 res!2158965) b!5070764))

(assert (= (and b!5070764 res!2158967) b!5070763))

(assert (= (and b!5070763 res!2158966) b!5070768))

(declare-fun m!6116434 () Bool)

(assert (=> b!5070764 m!6116434))

(declare-fun m!6116436 () Bool)

(assert (=> b!5070768 m!6116436))

(declare-fun m!6116438 () Bool)

(assert (=> b!5070766 m!6116438))

(declare-fun m!6116440 () Bool)

(assert (=> b!5070765 m!6116440))

(declare-fun m!6116442 () Bool)

(assert (=> b!5070765 m!6116442))

(declare-fun m!6116444 () Bool)

(assert (=> b!5070763 m!6116444))

(assert (=> b!5070767 m!6116440))

(assert (=> b!5070767 m!6116442))

(assert (=> b!5070023 d!1636405))

(declare-fun d!1636407 () Bool)

(assert (=> d!1636407 (= (list!18999 (xs!18924 (right!43152 (right!43152 xs!286)))) (innerList!15656 (xs!18924 (right!43152 (right!43152 xs!286)))))))

(assert (=> b!5070009 d!1636407))

(declare-fun d!1636409 () Bool)

(declare-fun res!2158969 () Bool)

(declare-fun e!3164012 () Bool)

(assert (=> d!1636409 (=> (not res!2158969) (not e!3164012))))

(assert (=> d!1636409 (= res!2158969 (= (csize!31366 (left!42822 (left!42822 err!4601))) (+ (size!39084 (left!42822 (left!42822 (left!42822 err!4601)))) (size!39084 (right!43152 (left!42822 (left!42822 err!4601)))))))))

(assert (=> d!1636409 (= (inv!77580 (left!42822 (left!42822 err!4601))) e!3164012)))

(declare-fun b!5070769 () Bool)

(declare-fun res!2158970 () Bool)

(assert (=> b!5070769 (=> (not res!2158970) (not e!3164012))))

(assert (=> b!5070769 (= res!2158970 (and (not (= (left!42822 (left!42822 (left!42822 err!4601))) Empty!15568)) (not (= (right!43152 (left!42822 (left!42822 err!4601))) Empty!15568))))))

(declare-fun b!5070770 () Bool)

(declare-fun res!2158971 () Bool)

(assert (=> b!5070770 (=> (not res!2158971) (not e!3164012))))

(assert (=> b!5070770 (= res!2158971 (= (cheight!15779 (left!42822 (left!42822 err!4601))) (+ (max!0 (height!2145 (left!42822 (left!42822 (left!42822 err!4601)))) (height!2145 (right!43152 (left!42822 (left!42822 err!4601))))) 1)))))

(declare-fun b!5070771 () Bool)

(assert (=> b!5070771 (= e!3164012 (<= 0 (cheight!15779 (left!42822 (left!42822 err!4601)))))))

(assert (= (and d!1636409 res!2158969) b!5070769))

(assert (= (and b!5070769 res!2158970) b!5070770))

(assert (= (and b!5070770 res!2158971) b!5070771))

(declare-fun m!6116446 () Bool)

(assert (=> d!1636409 m!6116446))

(declare-fun m!6116448 () Bool)

(assert (=> d!1636409 m!6116448))

(declare-fun m!6116450 () Bool)

(assert (=> b!5070770 m!6116450))

(declare-fun m!6116452 () Bool)

(assert (=> b!5070770 m!6116452))

(assert (=> b!5070770 m!6116450))

(assert (=> b!5070770 m!6116452))

(declare-fun m!6116454 () Bool)

(assert (=> b!5070770 m!6116454))

(assert (=> b!5070131 d!1636409))

(declare-fun d!1636411 () Bool)

(declare-fun lt!2089517 () Bool)

(assert (=> d!1636411 (= lt!2089517 (isEmpty!31640 (list!18997 (left!42822 (right!43152 ys!41)))))))

(assert (=> d!1636411 (= lt!2089517 (= (size!39084 (left!42822 (right!43152 ys!41))) 0))))

(assert (=> d!1636411 (= (isEmpty!31638 (left!42822 (right!43152 ys!41))) lt!2089517)))

(declare-fun bs!1190133 () Bool)

(assert (= bs!1190133 d!1636411))

(assert (=> bs!1190133 m!6114866))

(assert (=> bs!1190133 m!6114866))

(declare-fun m!6116456 () Bool)

(assert (=> bs!1190133 m!6116456))

(assert (=> bs!1190133 m!6114968))

(assert (=> b!5070032 d!1636411))

(assert (=> bm!353245 d!1635783))

(declare-fun d!1636413 () Bool)

(assert (=> d!1636413 (= (inv!77578 (xs!18924 (right!43152 (left!42822 err!4601)))) (<= (size!39082 (innerList!15656 (xs!18924 (right!43152 (left!42822 err!4601))))) 2147483647))))

(declare-fun bs!1190134 () Bool)

(assert (= bs!1190134 d!1636413))

(declare-fun m!6116458 () Bool)

(assert (=> bs!1190134 m!6116458))

(assert (=> b!5070181 d!1636413))

(declare-fun d!1636415 () Bool)

(declare-fun lt!2089518 () Int)

(assert (=> d!1636415 (= lt!2089518 (size!39082 (list!18997 (left!42822 (left!42822 err!4601)))))))

(assert (=> d!1636415 (= lt!2089518 (ite ((_ is Empty!15568) (left!42822 (left!42822 err!4601))) 0 (ite ((_ is Leaf!25857) (left!42822 (left!42822 err!4601))) (csize!31367 (left!42822 (left!42822 err!4601))) (csize!31366 (left!42822 (left!42822 err!4601))))))))

(assert (=> d!1636415 (= (size!39084 (left!42822 (left!42822 err!4601))) lt!2089518)))

(declare-fun bs!1190135 () Bool)

(assert (= bs!1190135 d!1636415))

(declare-fun m!6116460 () Bool)

(assert (=> bs!1190135 m!6116460))

(assert (=> bs!1190135 m!6116460))

(declare-fun m!6116462 () Bool)

(assert (=> bs!1190135 m!6116462))

(assert (=> d!1635831 d!1636415))

(declare-fun d!1636417 () Bool)

(declare-fun lt!2089519 () Int)

(assert (=> d!1636417 (= lt!2089519 (size!39082 (list!18997 (right!43152 (left!42822 err!4601)))))))

(assert (=> d!1636417 (= lt!2089519 (ite ((_ is Empty!15568) (right!43152 (left!42822 err!4601))) 0 (ite ((_ is Leaf!25857) (right!43152 (left!42822 err!4601))) (csize!31367 (right!43152 (left!42822 err!4601))) (csize!31366 (right!43152 (left!42822 err!4601))))))))

(assert (=> d!1636417 (= (size!39084 (right!43152 (left!42822 err!4601))) lt!2089519)))

(declare-fun bs!1190136 () Bool)

(assert (= bs!1190136 d!1636417))

(declare-fun m!6116464 () Bool)

(assert (=> bs!1190136 m!6116464))

(assert (=> bs!1190136 m!6116464))

(declare-fun m!6116466 () Bool)

(assert (=> bs!1190136 m!6116466))

(assert (=> d!1635831 d!1636417))

(assert (=> d!1635773 d!1636179))

(assert (=> d!1635773 d!1636181))

(declare-fun b!5070774 () Bool)

(declare-fun res!2158973 () Bool)

(declare-fun e!3164014 () Bool)

(assert (=> b!5070774 (=> (not res!2158973) (not e!3164014))))

(declare-fun lt!2089520 () List!58562)

(assert (=> b!5070774 (= res!2158973 (= (size!39082 lt!2089520) (+ (size!39082 (list!18997 (left!42822 (right!43152 (left!42822 ys!41))))) (size!39082 (list!18997 (right!43152 (right!43152 (left!42822 ys!41))))))))))

(declare-fun b!5070775 () Bool)

(assert (=> b!5070775 (= e!3164014 (or (not (= (list!18997 (right!43152 (right!43152 (left!42822 ys!41)))) Nil!58438)) (= lt!2089520 (list!18997 (left!42822 (right!43152 (left!42822 ys!41)))))))))

(declare-fun b!5070772 () Bool)

(declare-fun e!3164013 () List!58562)

(assert (=> b!5070772 (= e!3164013 (list!18997 (right!43152 (right!43152 (left!42822 ys!41)))))))

(declare-fun d!1636419 () Bool)

(assert (=> d!1636419 e!3164014))

(declare-fun res!2158972 () Bool)

(assert (=> d!1636419 (=> (not res!2158972) (not e!3164014))))

(assert (=> d!1636419 (= res!2158972 (= (content!10420 lt!2089520) ((_ map or) (content!10420 (list!18997 (left!42822 (right!43152 (left!42822 ys!41))))) (content!10420 (list!18997 (right!43152 (right!43152 (left!42822 ys!41))))))))))

(assert (=> d!1636419 (= lt!2089520 e!3164013)))

(declare-fun c!870651 () Bool)

(assert (=> d!1636419 (= c!870651 ((_ is Nil!58438) (list!18997 (left!42822 (right!43152 (left!42822 ys!41))))))))

(assert (=> d!1636419 (= (++!12793 (list!18997 (left!42822 (right!43152 (left!42822 ys!41)))) (list!18997 (right!43152 (right!43152 (left!42822 ys!41))))) lt!2089520)))

(declare-fun b!5070773 () Bool)

(assert (=> b!5070773 (= e!3164013 (Cons!58438 (h!64886 (list!18997 (left!42822 (right!43152 (left!42822 ys!41))))) (++!12793 (t!371315 (list!18997 (left!42822 (right!43152 (left!42822 ys!41))))) (list!18997 (right!43152 (right!43152 (left!42822 ys!41)))))))))

(assert (= (and d!1636419 c!870651) b!5070772))

(assert (= (and d!1636419 (not c!870651)) b!5070773))

(assert (= (and d!1636419 res!2158972) b!5070774))

(assert (= (and b!5070774 res!2158973) b!5070775))

(declare-fun m!6116468 () Bool)

(assert (=> b!5070774 m!6116468))

(assert (=> b!5070774 m!6114874))

(declare-fun m!6116470 () Bool)

(assert (=> b!5070774 m!6116470))

(assert (=> b!5070774 m!6114876))

(declare-fun m!6116472 () Bool)

(assert (=> b!5070774 m!6116472))

(declare-fun m!6116474 () Bool)

(assert (=> d!1636419 m!6116474))

(assert (=> d!1636419 m!6114874))

(declare-fun m!6116476 () Bool)

(assert (=> d!1636419 m!6116476))

(assert (=> d!1636419 m!6114876))

(declare-fun m!6116478 () Bool)

(assert (=> d!1636419 m!6116478))

(assert (=> b!5070773 m!6114876))

(declare-fun m!6116480 () Bool)

(assert (=> b!5070773 m!6116480))

(assert (=> b!5069966 d!1636419))

(declare-fun b!5070778 () Bool)

(declare-fun e!3164016 () List!58562)

(assert (=> b!5070778 (= e!3164016 (list!18999 (xs!18924 (left!42822 (right!43152 (left!42822 ys!41))))))))

(declare-fun d!1636421 () Bool)

(declare-fun c!870652 () Bool)

(assert (=> d!1636421 (= c!870652 ((_ is Empty!15568) (left!42822 (right!43152 (left!42822 ys!41)))))))

(declare-fun e!3164015 () List!58562)

(assert (=> d!1636421 (= (list!18997 (left!42822 (right!43152 (left!42822 ys!41)))) e!3164015)))

(declare-fun b!5070777 () Bool)

(assert (=> b!5070777 (= e!3164015 e!3164016)))

(declare-fun c!870653 () Bool)

(assert (=> b!5070777 (= c!870653 ((_ is Leaf!25857) (left!42822 (right!43152 (left!42822 ys!41)))))))

(declare-fun b!5070776 () Bool)

(assert (=> b!5070776 (= e!3164015 Nil!58438)))

(declare-fun b!5070779 () Bool)

(assert (=> b!5070779 (= e!3164016 (++!12793 (list!18997 (left!42822 (left!42822 (right!43152 (left!42822 ys!41))))) (list!18997 (right!43152 (left!42822 (right!43152 (left!42822 ys!41)))))))))

(assert (= (and d!1636421 c!870652) b!5070776))

(assert (= (and d!1636421 (not c!870652)) b!5070777))

(assert (= (and b!5070777 c!870653) b!5070778))

(assert (= (and b!5070777 (not c!870653)) b!5070779))

(declare-fun m!6116482 () Bool)

(assert (=> b!5070778 m!6116482))

(declare-fun m!6116484 () Bool)

(assert (=> b!5070779 m!6116484))

(declare-fun m!6116486 () Bool)

(assert (=> b!5070779 m!6116486))

(assert (=> b!5070779 m!6116484))

(assert (=> b!5070779 m!6116486))

(declare-fun m!6116488 () Bool)

(assert (=> b!5070779 m!6116488))

(assert (=> b!5069966 d!1636421))

(declare-fun b!5070782 () Bool)

(declare-fun e!3164018 () List!58562)

(assert (=> b!5070782 (= e!3164018 (list!18999 (xs!18924 (right!43152 (right!43152 (left!42822 ys!41))))))))

(declare-fun d!1636423 () Bool)

(declare-fun c!870654 () Bool)

(assert (=> d!1636423 (= c!870654 ((_ is Empty!15568) (right!43152 (right!43152 (left!42822 ys!41)))))))

(declare-fun e!3164017 () List!58562)

(assert (=> d!1636423 (= (list!18997 (right!43152 (right!43152 (left!42822 ys!41)))) e!3164017)))

(declare-fun b!5070781 () Bool)

(assert (=> b!5070781 (= e!3164017 e!3164018)))

(declare-fun c!870655 () Bool)

(assert (=> b!5070781 (= c!870655 ((_ is Leaf!25857) (right!43152 (right!43152 (left!42822 ys!41)))))))

(declare-fun b!5070780 () Bool)

(assert (=> b!5070780 (= e!3164017 Nil!58438)))

(declare-fun b!5070783 () Bool)

(assert (=> b!5070783 (= e!3164018 (++!12793 (list!18997 (left!42822 (right!43152 (right!43152 (left!42822 ys!41))))) (list!18997 (right!43152 (right!43152 (right!43152 (left!42822 ys!41)))))))))

(assert (= (and d!1636423 c!870654) b!5070780))

(assert (= (and d!1636423 (not c!870654)) b!5070781))

(assert (= (and b!5070781 c!870655) b!5070782))

(assert (= (and b!5070781 (not c!870655)) b!5070783))

(declare-fun m!6116490 () Bool)

(assert (=> b!5070782 m!6116490))

(declare-fun m!6116492 () Bool)

(assert (=> b!5070783 m!6116492))

(declare-fun m!6116494 () Bool)

(assert (=> b!5070783 m!6116494))

(assert (=> b!5070783 m!6116492))

(assert (=> b!5070783 m!6116494))

(declare-fun m!6116496 () Bool)

(assert (=> b!5070783 m!6116496))

(assert (=> b!5069966 d!1636423))

(declare-fun d!1636425 () Bool)

(declare-fun c!870656 () Bool)

(assert (=> d!1636425 (= c!870656 ((_ is Nil!58438) lt!2089404))))

(declare-fun e!3164019 () (InoxSet T!105146))

(assert (=> d!1636425 (= (content!10420 lt!2089404) e!3164019)))

(declare-fun b!5070784 () Bool)

(assert (=> b!5070784 (= e!3164019 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070785 () Bool)

(assert (=> b!5070785 (= e!3164019 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 lt!2089404) true) (content!10420 (t!371315 lt!2089404))))))

(assert (= (and d!1636425 c!870656) b!5070784))

(assert (= (and d!1636425 (not c!870656)) b!5070785))

(declare-fun m!6116498 () Bool)

(assert (=> b!5070785 m!6116498))

(declare-fun m!6116500 () Bool)

(assert (=> b!5070785 m!6116500))

(assert (=> d!1635813 d!1636425))

(declare-fun d!1636427 () Bool)

(declare-fun c!870657 () Bool)

(assert (=> d!1636427 (= c!870657 ((_ is Nil!58438) (list!18997 (right!43152 (right!43152 xs!286)))))))

(declare-fun e!3164020 () (InoxSet T!105146))

(assert (=> d!1636427 (= (content!10420 (list!18997 (right!43152 (right!43152 xs!286)))) e!3164020)))

(declare-fun b!5070786 () Bool)

(assert (=> b!5070786 (= e!3164020 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070787 () Bool)

(assert (=> b!5070787 (= e!3164020 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 (list!18997 (right!43152 (right!43152 xs!286)))) true) (content!10420 (t!371315 (list!18997 (right!43152 (right!43152 xs!286)))))))))

(assert (= (and d!1636427 c!870657) b!5070786))

(assert (= (and d!1636427 (not c!870657)) b!5070787))

(declare-fun m!6116502 () Bool)

(assert (=> b!5070787 m!6116502))

(declare-fun m!6116504 () Bool)

(assert (=> b!5070787 m!6116504))

(assert (=> d!1635813 d!1636427))

(assert (=> d!1635813 d!1635893))

(declare-fun d!1636429 () Bool)

(assert (=> d!1636429 (= (height!2145 (left!42822 (left!42822 ys!41))) (ite ((_ is Empty!15568) (left!42822 (left!42822 ys!41))) 0 (ite ((_ is Leaf!25857) (left!42822 (left!42822 ys!41))) 1 (cheight!15779 (left!42822 (left!42822 ys!41))))))))

(assert (=> b!5070024 d!1636429))

(declare-fun d!1636431 () Bool)

(assert (=> d!1636431 (= (height!2145 (right!43152 (left!42822 ys!41))) (ite ((_ is Empty!15568) (right!43152 (left!42822 ys!41))) 0 (ite ((_ is Leaf!25857) (right!43152 (left!42822 ys!41))) 1 (cheight!15779 (right!43152 (left!42822 ys!41))))))))

(assert (=> b!5070024 d!1636431))

(declare-fun b!5070790 () Bool)

(declare-fun res!2158975 () Bool)

(declare-fun e!3164022 () Bool)

(assert (=> b!5070790 (=> (not res!2158975) (not e!3164022))))

(declare-fun lt!2089521 () List!58562)

(assert (=> b!5070790 (= res!2158975 (= (size!39082 lt!2089521) (+ (size!39082 (t!371315 (list!18997 (right!43152 (right!43152 xs!286))))) (size!39082 (list!18997 ys!41)))))))

(declare-fun b!5070791 () Bool)

(assert (=> b!5070791 (= e!3164022 (or (not (= (list!18997 ys!41) Nil!58438)) (= lt!2089521 (t!371315 (list!18997 (right!43152 (right!43152 xs!286)))))))))

(declare-fun b!5070788 () Bool)

(declare-fun e!3164021 () List!58562)

(assert (=> b!5070788 (= e!3164021 (list!18997 ys!41))))

(declare-fun d!1636433 () Bool)

(assert (=> d!1636433 e!3164022))

(declare-fun res!2158974 () Bool)

(assert (=> d!1636433 (=> (not res!2158974) (not e!3164022))))

(assert (=> d!1636433 (= res!2158974 (= (content!10420 lt!2089521) ((_ map or) (content!10420 (t!371315 (list!18997 (right!43152 (right!43152 xs!286))))) (content!10420 (list!18997 ys!41)))))))

(assert (=> d!1636433 (= lt!2089521 e!3164021)))

(declare-fun c!870658 () Bool)

(assert (=> d!1636433 (= c!870658 ((_ is Nil!58438) (t!371315 (list!18997 (right!43152 (right!43152 xs!286))))))))

(assert (=> d!1636433 (= (++!12793 (t!371315 (list!18997 (right!43152 (right!43152 xs!286)))) (list!18997 ys!41)) lt!2089521)))

(declare-fun b!5070789 () Bool)

(assert (=> b!5070789 (= e!3164021 (Cons!58438 (h!64886 (t!371315 (list!18997 (right!43152 (right!43152 xs!286))))) (++!12793 (t!371315 (t!371315 (list!18997 (right!43152 (right!43152 xs!286))))) (list!18997 ys!41))))))

(assert (= (and d!1636433 c!870658) b!5070788))

(assert (= (and d!1636433 (not c!870658)) b!5070789))

(assert (= (and d!1636433 res!2158974) b!5070790))

(assert (= (and b!5070790 res!2158975) b!5070791))

(declare-fun m!6116506 () Bool)

(assert (=> b!5070790 m!6116506))

(declare-fun m!6116508 () Bool)

(assert (=> b!5070790 m!6116508))

(assert (=> b!5070790 m!6114412))

(assert (=> b!5070790 m!6114608))

(declare-fun m!6116510 () Bool)

(assert (=> d!1636433 m!6116510))

(assert (=> d!1636433 m!6116504))

(assert (=> d!1636433 m!6114412))

(assert (=> d!1636433 m!6114614))

(assert (=> b!5070789 m!6114412))

(declare-fun m!6116512 () Bool)

(assert (=> b!5070789 m!6116512))

(assert (=> b!5070017 d!1636433))

(declare-fun b!5070794 () Bool)

(declare-fun res!2158977 () Bool)

(declare-fun e!3164024 () Bool)

(assert (=> b!5070794 (=> (not res!2158977) (not e!3164024))))

(declare-fun lt!2089522 () List!58562)

(assert (=> b!5070794 (= res!2158977 (= (size!39082 lt!2089522) (+ (size!39082 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))))) (size!39082 call!353240))))))

(declare-fun b!5070795 () Bool)

(assert (=> b!5070795 (= e!3164024 (or (not (= call!353240 Nil!58438)) (= lt!2089522 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41)))))))))

(declare-fun b!5070792 () Bool)

(declare-fun e!3164023 () List!58562)

(assert (=> b!5070792 (= e!3164023 call!353240)))

(declare-fun d!1636435 () Bool)

(assert (=> d!1636435 e!3164024))

(declare-fun res!2158976 () Bool)

(assert (=> d!1636435 (=> (not res!2158976) (not e!3164024))))

(assert (=> d!1636435 (= res!2158976 (= (content!10420 lt!2089522) ((_ map or) (content!10420 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))))) (content!10420 call!353240))))))

(assert (=> d!1636435 (= lt!2089522 e!3164023)))

(declare-fun c!870659 () Bool)

(assert (=> d!1636435 (= c!870659 ((_ is Nil!58438) (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))))))))

(assert (=> d!1636435 (= (++!12793 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41)))) call!353240) lt!2089522)))

(declare-fun b!5070793 () Bool)

(assert (=> b!5070793 (= e!3164023 (Cons!58438 (h!64886 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))))) (++!12793 (t!371315 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))))) call!353240)))))

(assert (= (and d!1636435 c!870659) b!5070792))

(assert (= (and d!1636435 (not c!870659)) b!5070793))

(assert (= (and d!1636435 res!2158976) b!5070794))

(assert (= (and b!5070794 res!2158977) b!5070795))

(declare-fun m!6116514 () Bool)

(assert (=> b!5070794 m!6116514))

(assert (=> b!5070794 m!6114514))

(assert (=> b!5070794 m!6116356))

(declare-fun m!6116516 () Bool)

(assert (=> b!5070794 m!6116516))

(declare-fun m!6116518 () Bool)

(assert (=> d!1636435 m!6116518))

(assert (=> d!1636435 m!6114514))

(assert (=> d!1636435 m!6116360))

(declare-fun m!6116520 () Bool)

(assert (=> d!1636435 m!6116520))

(declare-fun m!6116522 () Bool)

(assert (=> b!5070793 m!6116522))

(assert (=> bm!353234 d!1636435))

(declare-fun d!1636437 () Bool)

(assert (=> d!1636437 (= (inv!77578 (xs!18924 (right!43152 (right!43152 err!4601)))) (<= (size!39082 (innerList!15656 (xs!18924 (right!43152 (right!43152 err!4601))))) 2147483647))))

(declare-fun bs!1190137 () Bool)

(assert (= bs!1190137 d!1636437))

(declare-fun m!6116524 () Bool)

(assert (=> bs!1190137 m!6116524))

(assert (=> b!5070168 d!1636437))

(declare-fun b!5070798 () Bool)

(declare-fun res!2158979 () Bool)

(declare-fun e!3164026 () Bool)

(assert (=> b!5070798 (=> (not res!2158979) (not e!3164026))))

(declare-fun lt!2089523 () List!58562)

(assert (=> b!5070798 (= res!2158979 (= (size!39082 lt!2089523) (+ (size!39082 call!353242) (size!39082 (list!18997 ys!41)))))))

(declare-fun b!5070799 () Bool)

(assert (=> b!5070799 (= e!3164026 (or (not (= (list!18997 ys!41) Nil!58438)) (= lt!2089523 call!353242)))))

(declare-fun b!5070796 () Bool)

(declare-fun e!3164025 () List!58562)

(assert (=> b!5070796 (= e!3164025 (list!18997 ys!41))))

(declare-fun d!1636439 () Bool)

(assert (=> d!1636439 e!3164026))

(declare-fun res!2158978 () Bool)

(assert (=> d!1636439 (=> (not res!2158978) (not e!3164026))))

(assert (=> d!1636439 (= res!2158978 (= (content!10420 lt!2089523) ((_ map or) (content!10420 call!353242) (content!10420 (list!18997 ys!41)))))))

(assert (=> d!1636439 (= lt!2089523 e!3164025)))

(declare-fun c!870660 () Bool)

(assert (=> d!1636439 (= c!870660 ((_ is Nil!58438) call!353242))))

(assert (=> d!1636439 (= (++!12793 call!353242 (list!18997 ys!41)) lt!2089523)))

(declare-fun b!5070797 () Bool)

(assert (=> b!5070797 (= e!3164025 (Cons!58438 (h!64886 call!353242) (++!12793 (t!371315 call!353242) (list!18997 ys!41))))))

(assert (= (and d!1636439 c!870660) b!5070796))

(assert (= (and d!1636439 (not c!870660)) b!5070797))

(assert (= (and d!1636439 res!2158978) b!5070798))

(assert (= (and b!5070798 res!2158979) b!5070799))

(declare-fun m!6116526 () Bool)

(assert (=> b!5070798 m!6116526))

(declare-fun m!6116528 () Bool)

(assert (=> b!5070798 m!6116528))

(assert (=> b!5070798 m!6114412))

(assert (=> b!5070798 m!6114608))

(declare-fun m!6116530 () Bool)

(assert (=> d!1636439 m!6116530))

(declare-fun m!6116532 () Bool)

(assert (=> d!1636439 m!6116532))

(assert (=> d!1636439 m!6114412))

(assert (=> d!1636439 m!6114614))

(assert (=> b!5070797 m!6114412))

(declare-fun m!6116534 () Bool)

(assert (=> b!5070797 m!6116534))

(assert (=> bm!353240 d!1636439))

(declare-fun b!5070802 () Bool)

(declare-fun res!2158981 () Bool)

(declare-fun e!3164028 () Bool)

(assert (=> b!5070802 (=> (not res!2158981) (not e!3164028))))

(declare-fun lt!2089524 () List!58562)

(assert (=> b!5070802 (= res!2158981 (= (size!39082 lt!2089524) (+ (size!39082 (list!18997 (left!42822 xs!286))) (size!39082 (list!18997 (left!42822 (right!43152 xs!286)))))))))

(declare-fun b!5070803 () Bool)

(assert (=> b!5070803 (= e!3164028 (or (not (= (list!18997 (left!42822 (right!43152 xs!286))) Nil!58438)) (= lt!2089524 (list!18997 (left!42822 xs!286)))))))

(declare-fun b!5070800 () Bool)

(declare-fun e!3164027 () List!58562)

(assert (=> b!5070800 (= e!3164027 (list!18997 (left!42822 (right!43152 xs!286))))))

(declare-fun d!1636441 () Bool)

(assert (=> d!1636441 e!3164028))

(declare-fun res!2158980 () Bool)

(assert (=> d!1636441 (=> (not res!2158980) (not e!3164028))))

(assert (=> d!1636441 (= res!2158980 (= (content!10420 lt!2089524) ((_ map or) (content!10420 (list!18997 (left!42822 xs!286))) (content!10420 (list!18997 (left!42822 (right!43152 xs!286)))))))))

(assert (=> d!1636441 (= lt!2089524 e!3164027)))

(declare-fun c!870661 () Bool)

(assert (=> d!1636441 (= c!870661 ((_ is Nil!58438) (list!18997 (left!42822 xs!286))))))

(assert (=> d!1636441 (= (++!12793 (list!18997 (left!42822 xs!286)) (list!18997 (left!42822 (right!43152 xs!286)))) lt!2089524)))

(declare-fun b!5070801 () Bool)

(assert (=> b!5070801 (= e!3164027 (Cons!58438 (h!64886 (list!18997 (left!42822 xs!286))) (++!12793 (t!371315 (list!18997 (left!42822 xs!286))) (list!18997 (left!42822 (right!43152 xs!286))))))))

(assert (= (and d!1636441 c!870661) b!5070800))

(assert (= (and d!1636441 (not c!870661)) b!5070801))

(assert (= (and d!1636441 res!2158980) b!5070802))

(assert (= (and b!5070802 res!2158981) b!5070803))

(declare-fun m!6116536 () Bool)

(assert (=> b!5070802 m!6116536))

(assert (=> b!5070802 m!6114534))

(assert (=> b!5070802 m!6114914))

(assert (=> b!5070802 m!6114522))

(assert (=> b!5070802 m!6115936))

(declare-fun m!6116538 () Bool)

(assert (=> d!1636441 m!6116538))

(assert (=> d!1636441 m!6114534))

(assert (=> d!1636441 m!6114920))

(assert (=> d!1636441 m!6114522))

(assert (=> d!1636441 m!6115960))

(assert (=> b!5070801 m!6114522))

(declare-fun m!6116540 () Bool)

(assert (=> b!5070801 m!6116540))

(assert (=> bm!353241 d!1636441))

(declare-fun d!1636443 () Bool)

(declare-fun lt!2089525 () Int)

(assert (=> d!1636443 (= lt!2089525 (size!39082 (list!18997 (left!42822 ys!41))))))

(assert (=> d!1636443 (= lt!2089525 (ite ((_ is Empty!15568) (left!42822 ys!41)) 0 (ite ((_ is Leaf!25857) (left!42822 ys!41)) (csize!31367 (left!42822 ys!41)) (csize!31366 (left!42822 ys!41)))))))

(assert (=> d!1636443 (= (size!39084 (left!42822 ys!41)) lt!2089525)))

(declare-fun bs!1190138 () Bool)

(assert (= bs!1190138 d!1636443))

(assert (=> bs!1190138 m!6114530))

(assert (=> bs!1190138 m!6114530))

(assert (=> bs!1190138 m!6115190))

(assert (=> d!1635863 d!1636443))

(declare-fun d!1636445 () Bool)

(declare-fun lt!2089526 () Int)

(assert (=> d!1636445 (= lt!2089526 (size!39082 (list!18997 (right!43152 ys!41))))))

(assert (=> d!1636445 (= lt!2089526 (ite ((_ is Empty!15568) (right!43152 ys!41)) 0 (ite ((_ is Leaf!25857) (right!43152 ys!41)) (csize!31367 (right!43152 ys!41)) (csize!31366 (right!43152 ys!41)))))))

(assert (=> d!1636445 (= (size!39084 (right!43152 ys!41)) lt!2089526)))

(declare-fun bs!1190139 () Bool)

(assert (= bs!1190139 d!1636445))

(assert (=> bs!1190139 m!6114518))

(assert (=> bs!1190139 m!6114518))

(assert (=> bs!1190139 m!6115192))

(assert (=> d!1635863 d!1636445))

(declare-fun b!5070806 () Bool)

(declare-fun res!2158983 () Bool)

(declare-fun e!3164030 () Bool)

(assert (=> b!5070806 (=> (not res!2158983) (not e!3164030))))

(declare-fun lt!2089527 () List!58562)

(assert (=> b!5070806 (= res!2158983 (= (size!39082 lt!2089527) (+ (size!39082 (list!18997 xs!286)) (size!39082 (list!18997 (left!42822 ys!41))))))))

(declare-fun b!5070807 () Bool)

(assert (=> b!5070807 (= e!3164030 (or (not (= (list!18997 (left!42822 ys!41)) Nil!58438)) (= lt!2089527 (list!18997 xs!286))))))

(declare-fun b!5070804 () Bool)

(declare-fun e!3164029 () List!58562)

(assert (=> b!5070804 (= e!3164029 (list!18997 (left!42822 ys!41)))))

(declare-fun d!1636447 () Bool)

(assert (=> d!1636447 e!3164030))

(declare-fun res!2158982 () Bool)

(assert (=> d!1636447 (=> (not res!2158982) (not e!3164030))))

(assert (=> d!1636447 (= res!2158982 (= (content!10420 lt!2089527) ((_ map or) (content!10420 (list!18997 xs!286)) (content!10420 (list!18997 (left!42822 ys!41))))))))

(assert (=> d!1636447 (= lt!2089527 e!3164029)))

(declare-fun c!870662 () Bool)

(assert (=> d!1636447 (= c!870662 ((_ is Nil!58438) (list!18997 xs!286)))))

(assert (=> d!1636447 (= (++!12793 (list!18997 xs!286) (list!18997 (left!42822 ys!41))) lt!2089527)))

(declare-fun b!5070805 () Bool)

(assert (=> b!5070805 (= e!3164029 (Cons!58438 (h!64886 (list!18997 xs!286)) (++!12793 (t!371315 (list!18997 xs!286)) (list!18997 (left!42822 ys!41)))))))

(assert (= (and d!1636447 c!870662) b!5070804))

(assert (= (and d!1636447 (not c!870662)) b!5070805))

(assert (= (and d!1636447 res!2158982) b!5070806))

(assert (= (and b!5070806 res!2158983) b!5070807))

(declare-fun m!6116542 () Bool)

(assert (=> b!5070806 m!6116542))

(assert (=> b!5070806 m!6114410))

(assert (=> b!5070806 m!6114606))

(assert (=> b!5070806 m!6114530))

(assert (=> b!5070806 m!6115190))

(declare-fun m!6116544 () Bool)

(assert (=> d!1636447 m!6116544))

(assert (=> d!1636447 m!6114410))

(assert (=> d!1636447 m!6114612))

(assert (=> d!1636447 m!6114530))

(assert (=> d!1636447 m!6115196))

(assert (=> b!5070805 m!6114530))

(declare-fun m!6116546 () Bool)

(assert (=> b!5070805 m!6116546))

(assert (=> bm!353253 d!1636447))

(assert (=> b!5069858 d!1635867))

(assert (=> b!5069858 d!1635869))

(declare-fun d!1636449 () Bool)

(declare-fun lt!2089528 () Bool)

(assert (=> d!1636449 (= lt!2089528 (isEmpty!31640 (list!18997 (left!42822 (left!42822 lt!2089379)))))))

(assert (=> d!1636449 (= lt!2089528 (= (size!39084 (left!42822 (left!42822 lt!2089379))) 0))))

(assert (=> d!1636449 (= (isEmpty!31638 (left!42822 (left!42822 lt!2089379))) lt!2089528)))

(declare-fun bs!1190140 () Bool)

(assert (= bs!1190140 d!1636449))

(assert (=> bs!1190140 m!6114802))

(assert (=> bs!1190140 m!6114802))

(declare-fun m!6116548 () Bool)

(assert (=> bs!1190140 m!6116548))

(declare-fun m!6116550 () Bool)

(assert (=> bs!1190140 m!6116550))

(assert (=> b!5069906 d!1636449))

(declare-fun d!1636451 () Bool)

(declare-fun e!3164031 () Bool)

(assert (=> d!1636451 e!3164031))

(declare-fun c!870663 () Bool)

(assert (=> d!1636451 (= c!870663 ((_ is Nil!58438) (t!371315 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41)))))))))

(assert (=> d!1636451 (= (appendAssoc!303 (t!371315 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))))) (list!18997 (right!43152 (left!42822 ys!41))) (list!18997 (right!43152 ys!41))) true)))

(declare-fun bm!353297 () Bool)

(declare-fun call!353302 () List!58562)

(assert (=> bm!353297 (= call!353302 (++!12793 (t!371315 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))))) (list!18997 (right!43152 (left!42822 ys!41)))))))

(declare-fun bm!353298 () Bool)

(declare-fun call!353304 () List!58562)

(declare-fun call!353303 () List!58562)

(assert (=> bm!353298 (= call!353303 (++!12793 (t!371315 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41))))) call!353304))))

(declare-fun b!5070808 () Bool)

(declare-fun call!353305 () List!58562)

(assert (=> b!5070808 (= e!3164031 (= call!353305 call!353303))))

(declare-fun lt!2089529 () Bool)

(assert (=> b!5070808 (= lt!2089529 (appendAssoc!303 (t!371315 (t!371315 (++!12793 (list!18997 xs!286) (list!18997 (left!42822 (left!42822 ys!41)))))) (list!18997 (right!43152 (left!42822 ys!41))) (list!18997 (right!43152 ys!41))))))

(declare-fun b!5070809 () Bool)

(assert (=> b!5070809 (= e!3164031 (= call!353305 call!353303))))

(declare-fun bm!353299 () Bool)

(assert (=> bm!353299 (= call!353304 (++!12793 (list!18997 (right!43152 (left!42822 ys!41))) (list!18997 (right!43152 ys!41))))))

(declare-fun bm!353300 () Bool)

(assert (=> bm!353300 (= call!353305 (++!12793 call!353302 (list!18997 (right!43152 ys!41))))))

(assert (= (and d!1636451 c!870663) b!5070809))

(assert (= (and d!1636451 (not c!870663)) b!5070808))

(assert (= (or b!5070809 b!5070808) bm!353297))

(assert (= (or b!5070809 b!5070808) bm!353299))

(assert (= (or b!5070809 b!5070808) bm!353298))

(assert (= (or b!5070809 b!5070808) bm!353300))

(assert (=> bm!353299 m!6114516))

(assert (=> bm!353299 m!6114518))

(assert (=> bm!353299 m!6114880))

(assert (=> bm!353297 m!6114516))

(assert (=> bm!353297 m!6116362))

(assert (=> b!5070808 m!6114516))

(assert (=> b!5070808 m!6114518))

(declare-fun m!6116552 () Bool)

(assert (=> b!5070808 m!6116552))

(declare-fun m!6116554 () Bool)

(assert (=> bm!353298 m!6116554))

(assert (=> bm!353300 m!6114518))

(declare-fun m!6116556 () Bool)

(assert (=> bm!353300 m!6116556))

(assert (=> b!5069971 d!1636451))

(declare-fun d!1636453 () Bool)

(declare-fun c!870664 () Bool)

(assert (=> d!1636453 (= c!870664 ((_ is Node!15568) (left!42822 (left!42822 (right!43152 ys!41)))))))

(declare-fun e!3164032 () Bool)

(assert (=> d!1636453 (= (inv!77577 (left!42822 (left!42822 (right!43152 ys!41)))) e!3164032)))

(declare-fun b!5070810 () Bool)

(assert (=> b!5070810 (= e!3164032 (inv!77580 (left!42822 (left!42822 (right!43152 ys!41)))))))

(declare-fun b!5070811 () Bool)

(declare-fun e!3164033 () Bool)

(assert (=> b!5070811 (= e!3164032 e!3164033)))

(declare-fun res!2158984 () Bool)

(assert (=> b!5070811 (= res!2158984 (not ((_ is Leaf!25857) (left!42822 (left!42822 (right!43152 ys!41))))))))

(assert (=> b!5070811 (=> res!2158984 e!3164033)))

(declare-fun b!5070812 () Bool)

(assert (=> b!5070812 (= e!3164033 (inv!77582 (left!42822 (left!42822 (right!43152 ys!41)))))))

(assert (= (and d!1636453 c!870664) b!5070810))

(assert (= (and d!1636453 (not c!870664)) b!5070811))

(assert (= (and b!5070811 (not res!2158984)) b!5070812))

(declare-fun m!6116558 () Bool)

(assert (=> b!5070810 m!6116558))

(declare-fun m!6116560 () Bool)

(assert (=> b!5070812 m!6116560))

(assert (=> b!5070148 d!1636453))

(declare-fun d!1636455 () Bool)

(declare-fun c!870665 () Bool)

(assert (=> d!1636455 (= c!870665 ((_ is Node!15568) (right!43152 (left!42822 (right!43152 ys!41)))))))

(declare-fun e!3164034 () Bool)

(assert (=> d!1636455 (= (inv!77577 (right!43152 (left!42822 (right!43152 ys!41)))) e!3164034)))

(declare-fun b!5070813 () Bool)

(assert (=> b!5070813 (= e!3164034 (inv!77580 (right!43152 (left!42822 (right!43152 ys!41)))))))

(declare-fun b!5070814 () Bool)

(declare-fun e!3164035 () Bool)

(assert (=> b!5070814 (= e!3164034 e!3164035)))

(declare-fun res!2158985 () Bool)

(assert (=> b!5070814 (= res!2158985 (not ((_ is Leaf!25857) (right!43152 (left!42822 (right!43152 ys!41))))))))

(assert (=> b!5070814 (=> res!2158985 e!3164035)))

(declare-fun b!5070815 () Bool)

(assert (=> b!5070815 (= e!3164035 (inv!77582 (right!43152 (left!42822 (right!43152 ys!41)))))))

(assert (= (and d!1636455 c!870665) b!5070813))

(assert (= (and d!1636455 (not c!870665)) b!5070814))

(assert (= (and b!5070814 (not res!2158985)) b!5070815))

(declare-fun m!6116562 () Bool)

(assert (=> b!5070813 m!6116562))

(declare-fun m!6116564 () Bool)

(assert (=> b!5070815 m!6116564))

(assert (=> b!5070148 d!1636455))

(declare-fun b!5070818 () Bool)

(declare-fun res!2158987 () Bool)

(declare-fun e!3164037 () Bool)

(assert (=> b!5070818 (=> (not res!2158987) (not e!3164037))))

(declare-fun lt!2089530 () List!58562)

(assert (=> b!5070818 (= res!2158987 (= (size!39082 lt!2089530) (+ (size!39082 (list!18997 (left!42822 (right!43152 xs!286)))) (size!39082 (list!18997 (right!43152 (right!43152 xs!286)))))))))

(declare-fun b!5070819 () Bool)

(assert (=> b!5070819 (= e!3164037 (or (not (= (list!18997 (right!43152 (right!43152 xs!286))) Nil!58438)) (= lt!2089530 (list!18997 (left!42822 (right!43152 xs!286))))))))

(declare-fun b!5070816 () Bool)

(declare-fun e!3164036 () List!58562)

(assert (=> b!5070816 (= e!3164036 (list!18997 (right!43152 (right!43152 xs!286))))))

(declare-fun d!1636457 () Bool)

(assert (=> d!1636457 e!3164037))

(declare-fun res!2158986 () Bool)

(assert (=> d!1636457 (=> (not res!2158986) (not e!3164037))))

(assert (=> d!1636457 (= res!2158986 (= (content!10420 lt!2089530) ((_ map or) (content!10420 (list!18997 (left!42822 (right!43152 xs!286)))) (content!10420 (list!18997 (right!43152 (right!43152 xs!286)))))))))

(assert (=> d!1636457 (= lt!2089530 e!3164036)))

(declare-fun c!870666 () Bool)

(assert (=> d!1636457 (= c!870666 ((_ is Nil!58438) (list!18997 (left!42822 (right!43152 xs!286)))))))

(assert (=> d!1636457 (= (++!12793 (list!18997 (left!42822 (right!43152 xs!286))) (list!18997 (right!43152 (right!43152 xs!286)))) lt!2089530)))

(declare-fun b!5070817 () Bool)

(assert (=> b!5070817 (= e!3164036 (Cons!58438 (h!64886 (list!18997 (left!42822 (right!43152 xs!286)))) (++!12793 (t!371315 (list!18997 (left!42822 (right!43152 xs!286)))) (list!18997 (right!43152 (right!43152 xs!286))))))))

(assert (= (and d!1636457 c!870666) b!5070816))

(assert (= (and d!1636457 (not c!870666)) b!5070817))

(assert (= (and d!1636457 res!2158986) b!5070818))

(assert (= (and b!5070818 res!2158987) b!5070819))

(declare-fun m!6116566 () Bool)

(assert (=> b!5070818 m!6116566))

(assert (=> b!5070818 m!6114522))

(assert (=> b!5070818 m!6115936))

(assert (=> b!5070818 m!6114524))

(assert (=> b!5070818 m!6114990))

(declare-fun m!6116568 () Bool)

(assert (=> d!1636457 m!6116568))

(assert (=> d!1636457 m!6114522))

(assert (=> d!1636457 m!6115960))

(assert (=> d!1636457 m!6114524))

(assert (=> d!1636457 m!6114994))

(assert (=> b!5070817 m!6114524))

(assert (=> b!5070817 m!6116056))

(assert (=> b!5069992 d!1636457))

(assert (=> b!5069992 d!1635803))

(assert (=> b!5069992 d!1635805))

(assert (=> b!5069853 d!1635873))

(assert (=> b!5069853 d!1635875))

(declare-fun b!5070822 () Bool)

(declare-fun res!2158989 () Bool)

(declare-fun e!3164039 () Bool)

(assert (=> b!5070822 (=> (not res!2158989) (not e!3164039))))

(declare-fun lt!2089531 () List!58562)

(assert (=> b!5070822 (= res!2158989 (= (size!39082 lt!2089531) (+ (size!39082 (list!18997 (left!42822 (right!43152 (right!43152 xs!286))))) (size!39082 (list!18997 (right!43152 (right!43152 (right!43152 xs!286))))))))))

(declare-fun b!5070823 () Bool)

(assert (=> b!5070823 (= e!3164039 (or (not (= (list!18997 (right!43152 (right!43152 (right!43152 xs!286)))) Nil!58438)) (= lt!2089531 (list!18997 (left!42822 (right!43152 (right!43152 xs!286)))))))))

(declare-fun b!5070820 () Bool)

(declare-fun e!3164038 () List!58562)

(assert (=> b!5070820 (= e!3164038 (list!18997 (right!43152 (right!43152 (right!43152 xs!286)))))))

(declare-fun d!1636459 () Bool)

(assert (=> d!1636459 e!3164039))

(declare-fun res!2158988 () Bool)

(assert (=> d!1636459 (=> (not res!2158988) (not e!3164039))))

(assert (=> d!1636459 (= res!2158988 (= (content!10420 lt!2089531) ((_ map or) (content!10420 (list!18997 (left!42822 (right!43152 (right!43152 xs!286))))) (content!10420 (list!18997 (right!43152 (right!43152 (right!43152 xs!286))))))))))

(assert (=> d!1636459 (= lt!2089531 e!3164038)))

(declare-fun c!870667 () Bool)

(assert (=> d!1636459 (= c!870667 ((_ is Nil!58438) (list!18997 (left!42822 (right!43152 (right!43152 xs!286))))))))

(assert (=> d!1636459 (= (++!12793 (list!18997 (left!42822 (right!43152 (right!43152 xs!286)))) (list!18997 (right!43152 (right!43152 (right!43152 xs!286))))) lt!2089531)))

(declare-fun b!5070821 () Bool)

(assert (=> b!5070821 (= e!3164038 (Cons!58438 (h!64886 (list!18997 (left!42822 (right!43152 (right!43152 xs!286))))) (++!12793 (t!371315 (list!18997 (left!42822 (right!43152 (right!43152 xs!286))))) (list!18997 (right!43152 (right!43152 (right!43152 xs!286)))))))))

(assert (= (and d!1636459 c!870667) b!5070820))

(assert (= (and d!1636459 (not c!870667)) b!5070821))

(assert (= (and d!1636459 res!2158988) b!5070822))

(assert (= (and b!5070822 res!2158989) b!5070823))

(declare-fun m!6116570 () Bool)

(assert (=> b!5070822 m!6116570))

(assert (=> b!5070822 m!6114958))

(declare-fun m!6116572 () Bool)

(assert (=> b!5070822 m!6116572))

(assert (=> b!5070822 m!6114960))

(declare-fun m!6116574 () Bool)

(assert (=> b!5070822 m!6116574))

(declare-fun m!6116576 () Bool)

(assert (=> d!1636459 m!6116576))

(assert (=> d!1636459 m!6114958))

(declare-fun m!6116578 () Bool)

(assert (=> d!1636459 m!6116578))

(assert (=> d!1636459 m!6114960))

(declare-fun m!6116580 () Bool)

(assert (=> d!1636459 m!6116580))

(assert (=> b!5070821 m!6114960))

(declare-fun m!6116582 () Bool)

(assert (=> b!5070821 m!6116582))

(assert (=> b!5070010 d!1636459))

(declare-fun b!5070826 () Bool)

(declare-fun e!3164041 () List!58562)

(assert (=> b!5070826 (= e!3164041 (list!18999 (xs!18924 (left!42822 (right!43152 (right!43152 xs!286))))))))

(declare-fun d!1636461 () Bool)

(declare-fun c!870668 () Bool)

(assert (=> d!1636461 (= c!870668 ((_ is Empty!15568) (left!42822 (right!43152 (right!43152 xs!286)))))))

(declare-fun e!3164040 () List!58562)

(assert (=> d!1636461 (= (list!18997 (left!42822 (right!43152 (right!43152 xs!286)))) e!3164040)))

(declare-fun b!5070825 () Bool)

(assert (=> b!5070825 (= e!3164040 e!3164041)))

(declare-fun c!870669 () Bool)

(assert (=> b!5070825 (= c!870669 ((_ is Leaf!25857) (left!42822 (right!43152 (right!43152 xs!286)))))))

(declare-fun b!5070824 () Bool)

(assert (=> b!5070824 (= e!3164040 Nil!58438)))

(declare-fun b!5070827 () Bool)

(assert (=> b!5070827 (= e!3164041 (++!12793 (list!18997 (left!42822 (left!42822 (right!43152 (right!43152 xs!286))))) (list!18997 (right!43152 (left!42822 (right!43152 (right!43152 xs!286)))))))))

(assert (= (and d!1636461 c!870668) b!5070824))

(assert (= (and d!1636461 (not c!870668)) b!5070825))

(assert (= (and b!5070825 c!870669) b!5070826))

(assert (= (and b!5070825 (not c!870669)) b!5070827))

(declare-fun m!6116584 () Bool)

(assert (=> b!5070826 m!6116584))

(declare-fun m!6116586 () Bool)

(assert (=> b!5070827 m!6116586))

(declare-fun m!6116588 () Bool)

(assert (=> b!5070827 m!6116588))

(assert (=> b!5070827 m!6116586))

(assert (=> b!5070827 m!6116588))

(declare-fun m!6116590 () Bool)

(assert (=> b!5070827 m!6116590))

(assert (=> b!5070010 d!1636461))

(declare-fun b!5070830 () Bool)

(declare-fun e!3164043 () List!58562)

(assert (=> b!5070830 (= e!3164043 (list!18999 (xs!18924 (right!43152 (right!43152 (right!43152 xs!286))))))))

(declare-fun d!1636463 () Bool)

(declare-fun c!870670 () Bool)

(assert (=> d!1636463 (= c!870670 ((_ is Empty!15568) (right!43152 (right!43152 (right!43152 xs!286)))))))

(declare-fun e!3164042 () List!58562)

(assert (=> d!1636463 (= (list!18997 (right!43152 (right!43152 (right!43152 xs!286)))) e!3164042)))

(declare-fun b!5070829 () Bool)

(assert (=> b!5070829 (= e!3164042 e!3164043)))

(declare-fun c!870671 () Bool)

(assert (=> b!5070829 (= c!870671 ((_ is Leaf!25857) (right!43152 (right!43152 (right!43152 xs!286)))))))

(declare-fun b!5070828 () Bool)

(assert (=> b!5070828 (= e!3164042 Nil!58438)))

(declare-fun b!5070831 () Bool)

(assert (=> b!5070831 (= e!3164043 (++!12793 (list!18997 (left!42822 (right!43152 (right!43152 (right!43152 xs!286))))) (list!18997 (right!43152 (right!43152 (right!43152 (right!43152 xs!286)))))))))

(assert (= (and d!1636463 c!870670) b!5070828))

(assert (= (and d!1636463 (not c!870670)) b!5070829))

(assert (= (and b!5070829 c!870671) b!5070830))

(assert (= (and b!5070829 (not c!870671)) b!5070831))

(declare-fun m!6116592 () Bool)

(assert (=> b!5070830 m!6116592))

(declare-fun m!6116594 () Bool)

(assert (=> b!5070831 m!6116594))

(declare-fun m!6116596 () Bool)

(assert (=> b!5070831 m!6116596))

(assert (=> b!5070831 m!6116594))

(assert (=> b!5070831 m!6116596))

(declare-fun m!6116598 () Bool)

(assert (=> b!5070831 m!6116598))

(assert (=> b!5070010 d!1636463))

(declare-fun d!1636465 () Bool)

(assert (=> d!1636465 (= (max!0 (height!2145 (left!42822 (left!42822 ys!41))) (height!2145 (right!43152 (left!42822 ys!41)))) (ite (< (height!2145 (left!42822 (left!42822 ys!41))) (height!2145 (right!43152 (left!42822 ys!41)))) (height!2145 (right!43152 (left!42822 ys!41))) (height!2145 (left!42822 (left!42822 ys!41)))))))

(assert (=> b!5070113 d!1636465))

(assert (=> b!5070113 d!1636429))

(assert (=> b!5070113 d!1636431))

(declare-fun d!1636467 () Bool)

(declare-fun res!2158990 () Bool)

(declare-fun e!3164044 () Bool)

(assert (=> d!1636467 (=> (not res!2158990) (not e!3164044))))

(assert (=> d!1636467 (= res!2158990 (= (csize!31366 (left!42822 (right!43152 ys!41))) (+ (size!39084 (left!42822 (left!42822 (right!43152 ys!41)))) (size!39084 (right!43152 (left!42822 (right!43152 ys!41)))))))))

(assert (=> d!1636467 (= (inv!77580 (left!42822 (right!43152 ys!41))) e!3164044)))

(declare-fun b!5070832 () Bool)

(declare-fun res!2158991 () Bool)

(assert (=> b!5070832 (=> (not res!2158991) (not e!3164044))))

(assert (=> b!5070832 (= res!2158991 (and (not (= (left!42822 (left!42822 (right!43152 ys!41))) Empty!15568)) (not (= (right!43152 (left!42822 (right!43152 ys!41))) Empty!15568))))))

(declare-fun b!5070833 () Bool)

(declare-fun res!2158992 () Bool)

(assert (=> b!5070833 (=> (not res!2158992) (not e!3164044))))

(assert (=> b!5070833 (= res!2158992 (= (cheight!15779 (left!42822 (right!43152 ys!41))) (+ (max!0 (height!2145 (left!42822 (left!42822 (right!43152 ys!41)))) (height!2145 (right!43152 (left!42822 (right!43152 ys!41))))) 1)))))

(declare-fun b!5070834 () Bool)

(assert (=> b!5070834 (= e!3164044 (<= 0 (cheight!15779 (left!42822 (right!43152 ys!41)))))))

(assert (= (and d!1636467 res!2158990) b!5070832))

(assert (= (and b!5070832 res!2158991) b!5070833))

(assert (= (and b!5070833 res!2158992) b!5070834))

(declare-fun m!6116600 () Bool)

(assert (=> d!1636467 m!6116600))

(declare-fun m!6116602 () Bool)

(assert (=> d!1636467 m!6116602))

(declare-fun m!6116604 () Bool)

(assert (=> b!5070833 m!6116604))

(declare-fun m!6116606 () Bool)

(assert (=> b!5070833 m!6116606))

(assert (=> b!5070833 m!6116604))

(assert (=> b!5070833 m!6116606))

(declare-fun m!6116608 () Bool)

(assert (=> b!5070833 m!6116608))

(assert (=> b!5069945 d!1636467))

(declare-fun d!1636469 () Bool)

(declare-fun res!2158993 () Bool)

(declare-fun e!3164046 () Bool)

(assert (=> d!1636469 (=> res!2158993 e!3164046)))

(assert (=> d!1636469 (= res!2158993 (not ((_ is Node!15568) (right!43152 (right!43152 ys!41)))))))

(assert (=> d!1636469 (= (isBalanced!4430 (right!43152 (right!43152 ys!41))) e!3164046)))

(declare-fun b!5070835 () Bool)

(declare-fun res!2158996 () Bool)

(declare-fun e!3164045 () Bool)

(assert (=> b!5070835 (=> (not res!2158996) (not e!3164045))))

(assert (=> b!5070835 (= res!2158996 (not (isEmpty!31638 (left!42822 (right!43152 (right!43152 ys!41))))))))

(declare-fun b!5070836 () Bool)

(declare-fun res!2158997 () Bool)

(assert (=> b!5070836 (=> (not res!2158997) (not e!3164045))))

(assert (=> b!5070836 (= res!2158997 (isBalanced!4430 (right!43152 (right!43152 (right!43152 ys!41)))))))

(declare-fun b!5070837 () Bool)

(assert (=> b!5070837 (= e!3164046 e!3164045)))

(declare-fun res!2158998 () Bool)

(assert (=> b!5070837 (=> (not res!2158998) (not e!3164045))))

(assert (=> b!5070837 (= res!2158998 (<= (- 1) (- (height!2145 (left!42822 (right!43152 (right!43152 ys!41)))) (height!2145 (right!43152 (right!43152 (right!43152 ys!41)))))))))

(declare-fun b!5070838 () Bool)

(declare-fun res!2158995 () Bool)

(assert (=> b!5070838 (=> (not res!2158995) (not e!3164045))))

(assert (=> b!5070838 (= res!2158995 (isBalanced!4430 (left!42822 (right!43152 (right!43152 ys!41)))))))

(declare-fun b!5070839 () Bool)

(declare-fun res!2158994 () Bool)

(assert (=> b!5070839 (=> (not res!2158994) (not e!3164045))))

(assert (=> b!5070839 (= res!2158994 (<= (- (height!2145 (left!42822 (right!43152 (right!43152 ys!41)))) (height!2145 (right!43152 (right!43152 (right!43152 ys!41))))) 1))))

(declare-fun b!5070840 () Bool)

(assert (=> b!5070840 (= e!3164045 (not (isEmpty!31638 (right!43152 (right!43152 (right!43152 ys!41))))))))

(assert (= (and d!1636469 (not res!2158993)) b!5070837))

(assert (= (and b!5070837 res!2158998) b!5070839))

(assert (= (and b!5070839 res!2158994) b!5070838))

(assert (= (and b!5070838 res!2158995) b!5070836))

(assert (= (and b!5070836 res!2158997) b!5070835))

(assert (= (and b!5070835 res!2158996) b!5070840))

(declare-fun m!6116610 () Bool)

(assert (=> b!5070836 m!6116610))

(declare-fun m!6116612 () Bool)

(assert (=> b!5070840 m!6116612))

(declare-fun m!6116614 () Bool)

(assert (=> b!5070838 m!6116614))

(assert (=> b!5070837 m!6116086))

(assert (=> b!5070837 m!6116088))

(declare-fun m!6116616 () Bool)

(assert (=> b!5070835 m!6116616))

(assert (=> b!5070839 m!6116086))

(assert (=> b!5070839 m!6116088))

(assert (=> b!5070033 d!1636469))

(declare-fun d!1636471 () Bool)

(declare-fun res!2158999 () Bool)

(declare-fun e!3164047 () Bool)

(assert (=> d!1636471 (=> (not res!2158999) (not e!3164047))))

(assert (=> d!1636471 (= res!2158999 (<= (size!39082 (list!18999 (xs!18924 (left!42822 (right!43152 err!4601))))) 512))))

(assert (=> d!1636471 (= (inv!77582 (left!42822 (right!43152 err!4601))) e!3164047)))

(declare-fun b!5070841 () Bool)

(declare-fun res!2159000 () Bool)

(assert (=> b!5070841 (=> (not res!2159000) (not e!3164047))))

(assert (=> b!5070841 (= res!2159000 (= (csize!31367 (left!42822 (right!43152 err!4601))) (size!39082 (list!18999 (xs!18924 (left!42822 (right!43152 err!4601)))))))))

(declare-fun b!5070842 () Bool)

(assert (=> b!5070842 (= e!3164047 (and (> (csize!31367 (left!42822 (right!43152 err!4601))) 0) (<= (csize!31367 (left!42822 (right!43152 err!4601))) 512)))))

(assert (= (and d!1636471 res!2158999) b!5070841))

(assert (= (and b!5070841 res!2159000) b!5070842))

(declare-fun m!6116618 () Bool)

(assert (=> d!1636471 m!6116618))

(assert (=> d!1636471 m!6116618))

(declare-fun m!6116620 () Bool)

(assert (=> d!1636471 m!6116620))

(assert (=> b!5070841 m!6116618))

(assert (=> b!5070841 m!6116618))

(assert (=> b!5070841 m!6116620))

(assert (=> b!5070085 d!1636471))

(declare-fun b!5070845 () Bool)

(declare-fun res!2159002 () Bool)

(declare-fun e!3164049 () Bool)

(assert (=> b!5070845 (=> (not res!2159002) (not e!3164049))))

(declare-fun lt!2089532 () List!58562)

(assert (=> b!5070845 (= res!2159002 (= (size!39082 lt!2089532) (+ (size!39082 (t!371315 (t!371315 (list!18997 xs!286)))) (size!39082 (list!18997 ys!41)))))))

(declare-fun b!5070846 () Bool)

(assert (=> b!5070846 (= e!3164049 (or (not (= (list!18997 ys!41) Nil!58438)) (= lt!2089532 (t!371315 (t!371315 (list!18997 xs!286))))))))

(declare-fun b!5070843 () Bool)

(declare-fun e!3164048 () List!58562)

(assert (=> b!5070843 (= e!3164048 (list!18997 ys!41))))

(declare-fun d!1636473 () Bool)

(assert (=> d!1636473 e!3164049))

(declare-fun res!2159001 () Bool)

(assert (=> d!1636473 (=> (not res!2159001) (not e!3164049))))

(assert (=> d!1636473 (= res!2159001 (= (content!10420 lt!2089532) ((_ map or) (content!10420 (t!371315 (t!371315 (list!18997 xs!286)))) (content!10420 (list!18997 ys!41)))))))

(assert (=> d!1636473 (= lt!2089532 e!3164048)))

(declare-fun c!870672 () Bool)

(assert (=> d!1636473 (= c!870672 ((_ is Nil!58438) (t!371315 (t!371315 (list!18997 xs!286)))))))

(assert (=> d!1636473 (= (++!12793 (t!371315 (t!371315 (list!18997 xs!286))) (list!18997 ys!41)) lt!2089532)))

(declare-fun b!5070844 () Bool)

(assert (=> b!5070844 (= e!3164048 (Cons!58438 (h!64886 (t!371315 (t!371315 (list!18997 xs!286)))) (++!12793 (t!371315 (t!371315 (t!371315 (list!18997 xs!286)))) (list!18997 ys!41))))))

(assert (= (and d!1636473 c!870672) b!5070843))

(assert (= (and d!1636473 (not c!870672)) b!5070844))

(assert (= (and d!1636473 res!2159001) b!5070845))

(assert (= (and b!5070845 res!2159002) b!5070846))

(declare-fun m!6116622 () Bool)

(assert (=> b!5070845 m!6116622))

(assert (=> b!5070845 m!6116270))

(assert (=> b!5070845 m!6114412))

(assert (=> b!5070845 m!6114608))

(declare-fun m!6116624 () Bool)

(assert (=> d!1636473 m!6116624))

(assert (=> d!1636473 m!6116412))

(assert (=> d!1636473 m!6114412))

(assert (=> d!1636473 m!6114614))

(assert (=> b!5070844 m!6114412))

(declare-fun m!6116626 () Bool)

(assert (=> b!5070844 m!6116626))

(assert (=> b!5070128 d!1636473))

(declare-fun d!1636475 () Bool)

(assert (=> d!1636475 (= (max!0 (height!2145 (left!42822 (right!43152 xs!286))) (height!2145 (right!43152 (right!43152 xs!286)))) (ite (< (height!2145 (left!42822 (right!43152 xs!286))) (height!2145 (right!43152 (right!43152 xs!286)))) (height!2145 (right!43152 (right!43152 xs!286))) (height!2145 (left!42822 (right!43152 xs!286)))))))

(assert (=> b!5070061 d!1636475))

(assert (=> b!5070061 d!1636227))

(assert (=> b!5070061 d!1636229))

(declare-fun d!1636477 () Bool)

(declare-fun res!2159003 () Bool)

(declare-fun e!3164051 () Bool)

(assert (=> d!1636477 (=> res!2159003 e!3164051)))

(assert (=> d!1636477 (= res!2159003 (not ((_ is Node!15568) (left!42822 (left!42822 ys!41)))))))

(assert (=> d!1636477 (= (isBalanced!4430 (left!42822 (left!42822 ys!41))) e!3164051)))

(declare-fun b!5070847 () Bool)

(declare-fun res!2159006 () Bool)

(declare-fun e!3164050 () Bool)

(assert (=> b!5070847 (=> (not res!2159006) (not e!3164050))))

(assert (=> b!5070847 (= res!2159006 (not (isEmpty!31638 (left!42822 (left!42822 (left!42822 ys!41))))))))

(declare-fun b!5070848 () Bool)

(declare-fun res!2159007 () Bool)

(assert (=> b!5070848 (=> (not res!2159007) (not e!3164050))))

(assert (=> b!5070848 (= res!2159007 (isBalanced!4430 (right!43152 (left!42822 (left!42822 ys!41)))))))

(declare-fun b!5070849 () Bool)

(assert (=> b!5070849 (= e!3164051 e!3164050)))

(declare-fun res!2159008 () Bool)

(assert (=> b!5070849 (=> (not res!2159008) (not e!3164050))))

(assert (=> b!5070849 (= res!2159008 (<= (- 1) (- (height!2145 (left!42822 (left!42822 (left!42822 ys!41)))) (height!2145 (right!43152 (left!42822 (left!42822 ys!41)))))))))

(declare-fun b!5070850 () Bool)

(declare-fun res!2159005 () Bool)

(assert (=> b!5070850 (=> (not res!2159005) (not e!3164050))))

(assert (=> b!5070850 (= res!2159005 (isBalanced!4430 (left!42822 (left!42822 (left!42822 ys!41)))))))

(declare-fun b!5070851 () Bool)

(declare-fun res!2159004 () Bool)

(assert (=> b!5070851 (=> (not res!2159004) (not e!3164050))))

(assert (=> b!5070851 (= res!2159004 (<= (- (height!2145 (left!42822 (left!42822 (left!42822 ys!41)))) (height!2145 (right!43152 (left!42822 (left!42822 ys!41))))) 1))))

(declare-fun b!5070852 () Bool)

(assert (=> b!5070852 (= e!3164050 (not (isEmpty!31638 (right!43152 (left!42822 (left!42822 ys!41))))))))

(assert (= (and d!1636477 (not res!2159003)) b!5070849))

(assert (= (and b!5070849 res!2159008) b!5070851))

(assert (= (and b!5070851 res!2159004) b!5070850))

(assert (= (and b!5070850 res!2159005) b!5070848))

(assert (= (and b!5070848 res!2159007) b!5070847))

(assert (= (and b!5070847 res!2159006) b!5070852))

(declare-fun m!6116628 () Bool)

(assert (=> b!5070848 m!6116628))

(declare-fun m!6116630 () Bool)

(assert (=> b!5070852 m!6116630))

(declare-fun m!6116632 () Bool)

(assert (=> b!5070850 m!6116632))

(assert (=> b!5070849 m!6116144))

(assert (=> b!5070849 m!6116146))

(declare-fun m!6116634 () Bool)

(assert (=> b!5070847 m!6116634))

(assert (=> b!5070851 m!6116144))

(assert (=> b!5070851 m!6116146))

(assert (=> b!5070025 d!1636477))

(declare-fun d!1636479 () Bool)

(declare-fun c!870673 () Bool)

(assert (=> d!1636479 (= c!870673 ((_ is Nil!58438) (t!371315 (list!18997 ys!41))))))

(declare-fun e!3164052 () (InoxSet T!105146))

(assert (=> d!1636479 (= (content!10420 (t!371315 (list!18997 ys!41))) e!3164052)))

(declare-fun b!5070853 () Bool)

(assert (=> b!5070853 (= e!3164052 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070854 () Bool)

(assert (=> b!5070854 (= e!3164052 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 (t!371315 (list!18997 ys!41))) true) (content!10420 (t!371315 (t!371315 (list!18997 ys!41))))))))

(assert (= (and d!1636479 c!870673) b!5070853))

(assert (= (and d!1636479 (not c!870673)) b!5070854))

(declare-fun m!6116636 () Bool)

(assert (=> b!5070854 m!6116636))

(declare-fun m!6116638 () Bool)

(assert (=> b!5070854 m!6116638))

(assert (=> b!5070111 d!1636479))

(declare-fun d!1636481 () Bool)

(assert (=> d!1636481 (= (isEmpty!31640 (list!18997 (right!43152 ys!41))) ((_ is Nil!58438) (list!18997 (right!43152 ys!41))))))

(assert (=> d!1635849 d!1636481))

(assert (=> d!1635849 d!1635777))

(assert (=> d!1635849 d!1636445))

(declare-fun d!1636483 () Bool)

(declare-fun res!2159009 () Bool)

(declare-fun e!3164053 () Bool)

(assert (=> d!1636483 (=> (not res!2159009) (not e!3164053))))

(assert (=> d!1636483 (= res!2159009 (<= (size!39082 (list!18999 (xs!18924 (left!42822 (left!42822 err!4601))))) 512))))

(assert (=> d!1636483 (= (inv!77582 (left!42822 (left!42822 err!4601))) e!3164053)))

(declare-fun b!5070855 () Bool)

(declare-fun res!2159010 () Bool)

(assert (=> b!5070855 (=> (not res!2159010) (not e!3164053))))

(assert (=> b!5070855 (= res!2159010 (= (csize!31367 (left!42822 (left!42822 err!4601))) (size!39082 (list!18999 (xs!18924 (left!42822 (left!42822 err!4601)))))))))

(declare-fun b!5070856 () Bool)

(assert (=> b!5070856 (= e!3164053 (and (> (csize!31367 (left!42822 (left!42822 err!4601))) 0) (<= (csize!31367 (left!42822 (left!42822 err!4601))) 512)))))

(assert (= (and d!1636483 res!2159009) b!5070855))

(assert (= (and b!5070855 res!2159010) b!5070856))

(declare-fun m!6116640 () Bool)

(assert (=> d!1636483 m!6116640))

(assert (=> d!1636483 m!6116640))

(declare-fun m!6116642 () Bool)

(assert (=> d!1636483 m!6116642))

(assert (=> b!5070855 m!6116640))

(assert (=> b!5070855 m!6116640))

(assert (=> b!5070855 m!6116642))

(assert (=> b!5070133 d!1636483))

(declare-fun d!1636485 () Bool)

(declare-fun lt!2089533 () Int)

(assert (=> d!1636485 (>= lt!2089533 0)))

(declare-fun e!3164054 () Int)

(assert (=> d!1636485 (= lt!2089533 e!3164054)))

(declare-fun c!870674 () Bool)

(assert (=> d!1636485 (= c!870674 ((_ is Nil!58438) (list!18999 (xs!18924 err!4601))))))

(assert (=> d!1636485 (= (size!39082 (list!18999 (xs!18924 err!4601))) lt!2089533)))

(declare-fun b!5070857 () Bool)

(assert (=> b!5070857 (= e!3164054 0)))

(declare-fun b!5070858 () Bool)

(assert (=> b!5070858 (= e!3164054 (+ 1 (size!39082 (t!371315 (list!18999 (xs!18924 err!4601))))))))

(assert (= (and d!1636485 c!870674) b!5070857))

(assert (= (and d!1636485 (not c!870674)) b!5070858))

(declare-fun m!6116644 () Bool)

(assert (=> b!5070858 m!6116644))

(assert (=> d!1635771 d!1636485))

(declare-fun d!1636487 () Bool)

(assert (=> d!1636487 (= (list!18999 (xs!18924 err!4601)) (innerList!15656 (xs!18924 err!4601)))))

(assert (=> d!1635771 d!1636487))

(declare-fun d!1636489 () Bool)

(declare-fun lt!2089534 () Int)

(assert (=> d!1636489 (>= lt!2089534 0)))

(declare-fun e!3164055 () Int)

(assert (=> d!1636489 (= lt!2089534 e!3164055)))

(declare-fun c!870675 () Bool)

(assert (=> d!1636489 (= c!870675 ((_ is Nil!58438) lt!2089404))))

(assert (=> d!1636489 (= (size!39082 lt!2089404) lt!2089534)))

(declare-fun b!5070859 () Bool)

(assert (=> b!5070859 (= e!3164055 0)))

(declare-fun b!5070860 () Bool)

(assert (=> b!5070860 (= e!3164055 (+ 1 (size!39082 (t!371315 lt!2089404))))))

(assert (= (and d!1636489 c!870675) b!5070859))

(assert (= (and d!1636489 (not c!870675)) b!5070860))

(declare-fun m!6116646 () Bool)

(assert (=> b!5070860 m!6116646))

(assert (=> b!5070018 d!1636489))

(declare-fun d!1636491 () Bool)

(declare-fun lt!2089535 () Int)

(assert (=> d!1636491 (>= lt!2089535 0)))

(declare-fun e!3164056 () Int)

(assert (=> d!1636491 (= lt!2089535 e!3164056)))

(declare-fun c!870676 () Bool)

(assert (=> d!1636491 (= c!870676 ((_ is Nil!58438) (list!18997 (right!43152 (right!43152 xs!286)))))))

(assert (=> d!1636491 (= (size!39082 (list!18997 (right!43152 (right!43152 xs!286)))) lt!2089535)))

(declare-fun b!5070861 () Bool)

(assert (=> b!5070861 (= e!3164056 0)))

(declare-fun b!5070862 () Bool)

(assert (=> b!5070862 (= e!3164056 (+ 1 (size!39082 (t!371315 (list!18997 (right!43152 (right!43152 xs!286)))))))))

(assert (= (and d!1636491 c!870676) b!5070861))

(assert (= (and d!1636491 (not c!870676)) b!5070862))

(assert (=> b!5070862 m!6116508))

(assert (=> b!5070018 d!1636491))

(assert (=> b!5070018 d!1635841))

(declare-fun d!1636493 () Bool)

(declare-fun lt!2089536 () Bool)

(assert (=> d!1636493 (= lt!2089536 (isEmpty!31640 (list!18997 (left!42822 (right!43152 lt!2089379)))))))

(assert (=> d!1636493 (= lt!2089536 (= (size!39084 (left!42822 (right!43152 lt!2089379))) 0))))

(assert (=> d!1636493 (= (isEmpty!31638 (left!42822 (right!43152 lt!2089379))) lt!2089536)))

(declare-fun bs!1190141 () Bool)

(assert (= bs!1190141 d!1636493))

(assert (=> bs!1190141 m!6114810))

(assert (=> bs!1190141 m!6114810))

(declare-fun m!6116648 () Bool)

(assert (=> bs!1190141 m!6116648))

(declare-fun m!6116650 () Bool)

(assert (=> bs!1190141 m!6116650))

(assert (=> b!5069933 d!1636493))

(assert (=> d!1635851 d!1636195))

(assert (=> d!1635851 d!1635775))

(declare-fun b!5070865 () Bool)

(declare-fun res!2159012 () Bool)

(declare-fun e!3164058 () Bool)

(assert (=> b!5070865 (=> (not res!2159012) (not e!3164058))))

(declare-fun lt!2089537 () List!58562)

(assert (=> b!5070865 (= res!2159012 (= (size!39082 lt!2089537) (+ (size!39082 (list!18997 (left!42822 xs!286))) (size!39082 call!353248))))))

(declare-fun b!5070866 () Bool)

(assert (=> b!5070866 (= e!3164058 (or (not (= call!353248 Nil!58438)) (= lt!2089537 (list!18997 (left!42822 xs!286)))))))

(declare-fun b!5070863 () Bool)

(declare-fun e!3164057 () List!58562)

(assert (=> b!5070863 (= e!3164057 call!353248)))

(declare-fun d!1636495 () Bool)

(assert (=> d!1636495 e!3164058))

(declare-fun res!2159011 () Bool)

(assert (=> d!1636495 (=> (not res!2159011) (not e!3164058))))

(assert (=> d!1636495 (= res!2159011 (= (content!10420 lt!2089537) ((_ map or) (content!10420 (list!18997 (left!42822 xs!286))) (content!10420 call!353248))))))

(assert (=> d!1636495 (= lt!2089537 e!3164057)))

(declare-fun c!870677 () Bool)

(assert (=> d!1636495 (= c!870677 ((_ is Nil!58438) (list!18997 (left!42822 xs!286))))))

(assert (=> d!1636495 (= (++!12793 (list!18997 (left!42822 xs!286)) call!353248) lt!2089537)))

(declare-fun b!5070864 () Bool)

(assert (=> b!5070864 (= e!3164057 (Cons!58438 (h!64886 (list!18997 (left!42822 xs!286))) (++!12793 (t!371315 (list!18997 (left!42822 xs!286))) call!353248)))))

(assert (= (and d!1636495 c!870677) b!5070863))

(assert (= (and d!1636495 (not c!870677)) b!5070864))

(assert (= (and d!1636495 res!2159011) b!5070865))

(assert (= (and b!5070865 res!2159012) b!5070866))

(declare-fun m!6116652 () Bool)

(assert (=> b!5070865 m!6116652))

(assert (=> b!5070865 m!6114534))

(assert (=> b!5070865 m!6114914))

(declare-fun m!6116654 () Bool)

(assert (=> b!5070865 m!6116654))

(declare-fun m!6116656 () Bool)

(assert (=> d!1636495 m!6116656))

(assert (=> d!1636495 m!6114534))

(assert (=> d!1636495 m!6114920))

(declare-fun m!6116658 () Bool)

(assert (=> d!1636495 m!6116658))

(declare-fun m!6116660 () Bool)

(assert (=> b!5070864 m!6116660))

(assert (=> bm!353242 d!1636495))

(declare-fun b!5070869 () Bool)

(declare-fun res!2159014 () Bool)

(declare-fun e!3164060 () Bool)

(assert (=> b!5070869 (=> (not res!2159014) (not e!3164060))))

(declare-fun lt!2089538 () List!58562)

(assert (=> b!5070869 (= res!2159014 (= (size!39082 lt!2089538) (+ (size!39082 (list!18997 xs!286)) (size!39082 call!353252))))))

(declare-fun b!5070870 () Bool)

(assert (=> b!5070870 (= e!3164060 (or (not (= call!353252 Nil!58438)) (= lt!2089538 (list!18997 xs!286))))))

(declare-fun b!5070867 () Bool)

(declare-fun e!3164059 () List!58562)

(assert (=> b!5070867 (= e!3164059 call!353252)))

(declare-fun d!1636497 () Bool)

(assert (=> d!1636497 e!3164060))

(declare-fun res!2159013 () Bool)

(assert (=> d!1636497 (=> (not res!2159013) (not e!3164060))))

(assert (=> d!1636497 (= res!2159013 (= (content!10420 lt!2089538) ((_ map or) (content!10420 (list!18997 xs!286)) (content!10420 call!353252))))))

(assert (=> d!1636497 (= lt!2089538 e!3164059)))

(declare-fun c!870678 () Bool)

(assert (=> d!1636497 (= c!870678 ((_ is Nil!58438) (list!18997 xs!286)))))

(assert (=> d!1636497 (= (++!12793 (list!18997 xs!286) call!353252) lt!2089538)))

(declare-fun b!5070868 () Bool)

(assert (=> b!5070868 (= e!3164059 (Cons!58438 (h!64886 (list!18997 xs!286)) (++!12793 (t!371315 (list!18997 xs!286)) call!353252)))))

(assert (= (and d!1636497 c!870678) b!5070867))

(assert (= (and d!1636497 (not c!870678)) b!5070868))

(assert (= (and d!1636497 res!2159013) b!5070869))

(assert (= (and b!5070869 res!2159014) b!5070870))

(declare-fun m!6116662 () Bool)

(assert (=> b!5070869 m!6116662))

(assert (=> b!5070869 m!6114410))

(assert (=> b!5070869 m!6114606))

(declare-fun m!6116664 () Bool)

(assert (=> b!5070869 m!6116664))

(declare-fun m!6116666 () Bool)

(assert (=> d!1636497 m!6116666))

(assert (=> d!1636497 m!6114410))

(assert (=> d!1636497 m!6114612))

(declare-fun m!6116668 () Bool)

(assert (=> d!1636497 m!6116668))

(declare-fun m!6116670 () Bool)

(assert (=> b!5070868 m!6116670))

(assert (=> bm!353246 d!1636497))

(assert (=> b!5070020 d!1636221))

(assert (=> b!5070020 d!1636223))

(declare-fun b!5070873 () Bool)

(declare-fun res!2159016 () Bool)

(declare-fun e!3164062 () Bool)

(assert (=> b!5070873 (=> (not res!2159016) (not e!3164062))))

(declare-fun lt!2089539 () List!58562)

(assert (=> b!5070873 (= res!2159016 (= (size!39082 lt!2089539) (+ (size!39082 (list!18997 xs!286)) (size!39082 call!353260))))))

(declare-fun b!5070874 () Bool)

(assert (=> b!5070874 (= e!3164062 (or (not (= call!353260 Nil!58438)) (= lt!2089539 (list!18997 xs!286))))))

(declare-fun b!5070871 () Bool)

(declare-fun e!3164061 () List!58562)

(assert (=> b!5070871 (= e!3164061 call!353260)))

(declare-fun d!1636499 () Bool)

(assert (=> d!1636499 e!3164062))

(declare-fun res!2159015 () Bool)

(assert (=> d!1636499 (=> (not res!2159015) (not e!3164062))))

(assert (=> d!1636499 (= res!2159015 (= (content!10420 lt!2089539) ((_ map or) (content!10420 (list!18997 xs!286)) (content!10420 call!353260))))))

(assert (=> d!1636499 (= lt!2089539 e!3164061)))

(declare-fun c!870679 () Bool)

(assert (=> d!1636499 (= c!870679 ((_ is Nil!58438) (list!18997 xs!286)))))

(assert (=> d!1636499 (= (++!12793 (list!18997 xs!286) call!353260) lt!2089539)))

(declare-fun b!5070872 () Bool)

(assert (=> b!5070872 (= e!3164061 (Cons!58438 (h!64886 (list!18997 xs!286)) (++!12793 (t!371315 (list!18997 xs!286)) call!353260)))))

(assert (= (and d!1636499 c!870679) b!5070871))

(assert (= (and d!1636499 (not c!870679)) b!5070872))

(assert (= (and d!1636499 res!2159015) b!5070873))

(assert (= (and b!5070873 res!2159016) b!5070874))

(declare-fun m!6116672 () Bool)

(assert (=> b!5070873 m!6116672))

(assert (=> b!5070873 m!6114410))

(assert (=> b!5070873 m!6114606))

(declare-fun m!6116674 () Bool)

(assert (=> b!5070873 m!6116674))

(declare-fun m!6116676 () Bool)

(assert (=> d!1636499 m!6116676))

(assert (=> d!1636499 m!6114410))

(assert (=> d!1636499 m!6114612))

(declare-fun m!6116678 () Bool)

(assert (=> d!1636499 m!6116678))

(declare-fun m!6116680 () Bool)

(assert (=> b!5070872 m!6116680))

(assert (=> bm!353254 d!1636499))

(declare-fun d!1636501 () Bool)

(declare-fun c!870680 () Bool)

(assert (=> d!1636501 (= c!870680 ((_ is Node!15568) (left!42822 (right!43152 (left!42822 ys!41)))))))

(declare-fun e!3164063 () Bool)

(assert (=> d!1636501 (= (inv!77577 (left!42822 (right!43152 (left!42822 ys!41)))) e!3164063)))

(declare-fun b!5070875 () Bool)

(assert (=> b!5070875 (= e!3164063 (inv!77580 (left!42822 (right!43152 (left!42822 ys!41)))))))

(declare-fun b!5070876 () Bool)

(declare-fun e!3164064 () Bool)

(assert (=> b!5070876 (= e!3164063 e!3164064)))

(declare-fun res!2159017 () Bool)

(assert (=> b!5070876 (= res!2159017 (not ((_ is Leaf!25857) (left!42822 (right!43152 (left!42822 ys!41))))))))

(assert (=> b!5070876 (=> res!2159017 e!3164064)))

(declare-fun b!5070877 () Bool)

(assert (=> b!5070877 (= e!3164064 (inv!77582 (left!42822 (right!43152 (left!42822 ys!41)))))))

(assert (= (and d!1636501 c!870680) b!5070875))

(assert (= (and d!1636501 (not c!870680)) b!5070876))

(assert (= (and b!5070876 (not res!2159017)) b!5070877))

(declare-fun m!6116682 () Bool)

(assert (=> b!5070875 m!6116682))

(declare-fun m!6116684 () Bool)

(assert (=> b!5070877 m!6116684))

(assert (=> b!5070173 d!1636501))

(declare-fun d!1636503 () Bool)

(declare-fun c!870681 () Bool)

(assert (=> d!1636503 (= c!870681 ((_ is Node!15568) (right!43152 (right!43152 (left!42822 ys!41)))))))

(declare-fun e!3164065 () Bool)

(assert (=> d!1636503 (= (inv!77577 (right!43152 (right!43152 (left!42822 ys!41)))) e!3164065)))

(declare-fun b!5070878 () Bool)

(assert (=> b!5070878 (= e!3164065 (inv!77580 (right!43152 (right!43152 (left!42822 ys!41)))))))

(declare-fun b!5070879 () Bool)

(declare-fun e!3164066 () Bool)

(assert (=> b!5070879 (= e!3164065 e!3164066)))

(declare-fun res!2159018 () Bool)

(assert (=> b!5070879 (= res!2159018 (not ((_ is Leaf!25857) (right!43152 (right!43152 (left!42822 ys!41))))))))

(assert (=> b!5070879 (=> res!2159018 e!3164066)))

(declare-fun b!5070880 () Bool)

(assert (=> b!5070880 (= e!3164066 (inv!77582 (right!43152 (right!43152 (left!42822 ys!41)))))))

(assert (= (and d!1636503 c!870681) b!5070878))

(assert (= (and d!1636503 (not c!870681)) b!5070879))

(assert (= (and b!5070879 (not res!2159018)) b!5070880))

(declare-fun m!6116686 () Bool)

(assert (=> b!5070878 m!6116686))

(declare-fun m!6116688 () Bool)

(assert (=> b!5070880 m!6116688))

(assert (=> b!5070173 d!1636503))

(declare-fun d!1636505 () Bool)

(declare-fun c!870682 () Bool)

(assert (=> d!1636505 (= c!870682 ((_ is Node!15568) (left!42822 (left!42822 (right!43152 err!4601)))))))

(declare-fun e!3164067 () Bool)

(assert (=> d!1636505 (= (inv!77577 (left!42822 (left!42822 (right!43152 err!4601)))) e!3164067)))

(declare-fun b!5070881 () Bool)

(assert (=> b!5070881 (= e!3164067 (inv!77580 (left!42822 (left!42822 (right!43152 err!4601)))))))

(declare-fun b!5070882 () Bool)

(declare-fun e!3164068 () Bool)

(assert (=> b!5070882 (= e!3164067 e!3164068)))

(declare-fun res!2159019 () Bool)

(assert (=> b!5070882 (= res!2159019 (not ((_ is Leaf!25857) (left!42822 (left!42822 (right!43152 err!4601))))))))

(assert (=> b!5070882 (=> res!2159019 e!3164068)))

(declare-fun b!5070883 () Bool)

(assert (=> b!5070883 (= e!3164068 (inv!77582 (left!42822 (left!42822 (right!43152 err!4601)))))))

(assert (= (and d!1636505 c!870682) b!5070881))

(assert (= (and d!1636505 (not c!870682)) b!5070882))

(assert (= (and b!5070882 (not res!2159019)) b!5070883))

(declare-fun m!6116690 () Bool)

(assert (=> b!5070881 m!6116690))

(declare-fun m!6116692 () Bool)

(assert (=> b!5070883 m!6116692))

(assert (=> b!5070164 d!1636505))

(declare-fun d!1636507 () Bool)

(declare-fun c!870683 () Bool)

(assert (=> d!1636507 (= c!870683 ((_ is Node!15568) (right!43152 (left!42822 (right!43152 err!4601)))))))

(declare-fun e!3164069 () Bool)

(assert (=> d!1636507 (= (inv!77577 (right!43152 (left!42822 (right!43152 err!4601)))) e!3164069)))

(declare-fun b!5070884 () Bool)

(assert (=> b!5070884 (= e!3164069 (inv!77580 (right!43152 (left!42822 (right!43152 err!4601)))))))

(declare-fun b!5070885 () Bool)

(declare-fun e!3164070 () Bool)

(assert (=> b!5070885 (= e!3164069 e!3164070)))

(declare-fun res!2159020 () Bool)

(assert (=> b!5070885 (= res!2159020 (not ((_ is Leaf!25857) (right!43152 (left!42822 (right!43152 err!4601))))))))

(assert (=> b!5070885 (=> res!2159020 e!3164070)))

(declare-fun b!5070886 () Bool)

(assert (=> b!5070886 (= e!3164070 (inv!77582 (right!43152 (left!42822 (right!43152 err!4601)))))))

(assert (= (and d!1636507 c!870683) b!5070884))

(assert (= (and d!1636507 (not c!870683)) b!5070885))

(assert (= (and b!5070885 (not res!2159020)) b!5070886))

(declare-fun m!6116694 () Bool)

(assert (=> b!5070884 m!6116694))

(declare-fun m!6116696 () Bool)

(assert (=> b!5070886 m!6116696))

(assert (=> b!5070164 d!1636507))

(declare-fun d!1636509 () Bool)

(declare-fun res!2159021 () Bool)

(declare-fun e!3164071 () Bool)

(assert (=> d!1636509 (=> (not res!2159021) (not e!3164071))))

(assert (=> d!1636509 (= res!2159021 (<= (size!39082 (list!18999 (xs!18924 (left!42822 (right!43152 xs!286))))) 512))))

(assert (=> d!1636509 (= (inv!77582 (left!42822 (right!43152 xs!286))) e!3164071)))

(declare-fun b!5070887 () Bool)

(declare-fun res!2159022 () Bool)

(assert (=> b!5070887 (=> (not res!2159022) (not e!3164071))))

(assert (=> b!5070887 (= res!2159022 (= (csize!31367 (left!42822 (right!43152 xs!286))) (size!39082 (list!18999 (xs!18924 (left!42822 (right!43152 xs!286)))))))))

(declare-fun b!5070888 () Bool)

(assert (=> b!5070888 (= e!3164071 (and (> (csize!31367 (left!42822 (right!43152 xs!286))) 0) (<= (csize!31367 (left!42822 (right!43152 xs!286))) 512)))))

(assert (= (and d!1636509 res!2159021) b!5070887))

(assert (= (and b!5070887 res!2159022) b!5070888))

(assert (=> d!1636509 m!6114948))

(assert (=> d!1636509 m!6114948))

(declare-fun m!6116698 () Bool)

(assert (=> d!1636509 m!6116698))

(assert (=> b!5070887 m!6114948))

(assert (=> b!5070887 m!6114948))

(assert (=> b!5070887 m!6116698))

(assert (=> b!5069941 d!1636509))

(declare-fun d!1636511 () Bool)

(declare-fun res!2159023 () Bool)

(declare-fun e!3164073 () Bool)

(assert (=> d!1636511 (=> res!2159023 e!3164073)))

(assert (=> d!1636511 (= res!2159023 (not ((_ is Node!15568) (right!43152 (left!42822 lt!2089379)))))))

(assert (=> d!1636511 (= (isBalanced!4430 (right!43152 (left!42822 lt!2089379))) e!3164073)))

(declare-fun b!5070889 () Bool)

(declare-fun res!2159026 () Bool)

(declare-fun e!3164072 () Bool)

(assert (=> b!5070889 (=> (not res!2159026) (not e!3164072))))

(assert (=> b!5070889 (= res!2159026 (not (isEmpty!31638 (left!42822 (right!43152 (left!42822 lt!2089379))))))))

(declare-fun b!5070890 () Bool)

(declare-fun res!2159027 () Bool)

(assert (=> b!5070890 (=> (not res!2159027) (not e!3164072))))

(assert (=> b!5070890 (= res!2159027 (isBalanced!4430 (right!43152 (right!43152 (left!42822 lt!2089379)))))))

(declare-fun b!5070891 () Bool)

(assert (=> b!5070891 (= e!3164073 e!3164072)))

(declare-fun res!2159028 () Bool)

(assert (=> b!5070891 (=> (not res!2159028) (not e!3164072))))

(assert (=> b!5070891 (= res!2159028 (<= (- 1) (- (height!2145 (left!42822 (right!43152 (left!42822 lt!2089379)))) (height!2145 (right!43152 (right!43152 (left!42822 lt!2089379)))))))))

(declare-fun b!5070892 () Bool)

(declare-fun res!2159025 () Bool)

(assert (=> b!5070892 (=> (not res!2159025) (not e!3164072))))

(assert (=> b!5070892 (= res!2159025 (isBalanced!4430 (left!42822 (right!43152 (left!42822 lt!2089379)))))))

(declare-fun b!5070893 () Bool)

(declare-fun res!2159024 () Bool)

(assert (=> b!5070893 (=> (not res!2159024) (not e!3164072))))

(assert (=> b!5070893 (= res!2159024 (<= (- (height!2145 (left!42822 (right!43152 (left!42822 lt!2089379)))) (height!2145 (right!43152 (right!43152 (left!42822 lt!2089379))))) 1))))

(declare-fun b!5070894 () Bool)

(assert (=> b!5070894 (= e!3164072 (not (isEmpty!31638 (right!43152 (right!43152 (left!42822 lt!2089379))))))))

(assert (= (and d!1636511 (not res!2159023)) b!5070891))

(assert (= (and b!5070891 res!2159028) b!5070893))

(assert (= (and b!5070893 res!2159024) b!5070892))

(assert (= (and b!5070892 res!2159025) b!5070890))

(assert (= (and b!5070890 res!2159027) b!5070889))

(assert (= (and b!5070889 res!2159026) b!5070894))

(declare-fun m!6116700 () Bool)

(assert (=> b!5070890 m!6116700))

(declare-fun m!6116702 () Bool)

(assert (=> b!5070894 m!6116702))

(declare-fun m!6116704 () Bool)

(assert (=> b!5070892 m!6116704))

(declare-fun m!6116706 () Bool)

(assert (=> b!5070891 m!6116706))

(declare-fun m!6116708 () Bool)

(assert (=> b!5070891 m!6116708))

(declare-fun m!6116710 () Bool)

(assert (=> b!5070889 m!6116710))

(assert (=> b!5070893 m!6116706))

(assert (=> b!5070893 m!6116708))

(assert (=> b!5069907 d!1636511))

(declare-fun d!1636513 () Bool)

(assert (=> d!1636513 (= (inv!77578 (xs!18924 (left!42822 (right!43152 ys!41)))) (<= (size!39082 (innerList!15656 (xs!18924 (left!42822 (right!43152 ys!41))))) 2147483647))))

(declare-fun bs!1190142 () Bool)

(assert (= bs!1190142 d!1636513))

(declare-fun m!6116712 () Bool)

(assert (=> bs!1190142 m!6116712))

(assert (=> b!5070149 d!1636513))

(declare-fun d!1636515 () Bool)

(declare-fun res!2159029 () Bool)

(declare-fun e!3164074 () Bool)

(assert (=> d!1636515 (=> (not res!2159029) (not e!3164074))))

(assert (=> d!1636515 (= res!2159029 (= (csize!31366 (right!43152 (left!42822 ys!41))) (+ (size!39084 (left!42822 (right!43152 (left!42822 ys!41)))) (size!39084 (right!43152 (right!43152 (left!42822 ys!41)))))))))

(assert (=> d!1636515 (= (inv!77580 (right!43152 (left!42822 ys!41))) e!3164074)))

(declare-fun b!5070895 () Bool)

(declare-fun res!2159030 () Bool)

(assert (=> b!5070895 (=> (not res!2159030) (not e!3164074))))

(assert (=> b!5070895 (= res!2159030 (and (not (= (left!42822 (right!43152 (left!42822 ys!41))) Empty!15568)) (not (= (right!43152 (right!43152 (left!42822 ys!41))) Empty!15568))))))

(declare-fun b!5070896 () Bool)

(declare-fun res!2159031 () Bool)

(assert (=> b!5070896 (=> (not res!2159031) (not e!3164074))))

(assert (=> b!5070896 (= res!2159031 (= (cheight!15779 (right!43152 (left!42822 ys!41))) (+ (max!0 (height!2145 (left!42822 (right!43152 (left!42822 ys!41)))) (height!2145 (right!43152 (right!43152 (left!42822 ys!41))))) 1)))))

(declare-fun b!5070897 () Bool)

(assert (=> b!5070897 (= e!3164074 (<= 0 (cheight!15779 (right!43152 (left!42822 ys!41)))))))

(assert (= (and d!1636515 res!2159029) b!5070895))

(assert (= (and b!5070895 res!2159030) b!5070896))

(assert (= (and b!5070896 res!2159031) b!5070897))

(declare-fun m!6116714 () Bool)

(assert (=> d!1636515 m!6116714))

(declare-fun m!6116716 () Bool)

(assert (=> d!1636515 m!6116716))

(assert (=> b!5070896 m!6116440))

(assert (=> b!5070896 m!6116442))

(assert (=> b!5070896 m!6116440))

(assert (=> b!5070896 m!6116442))

(declare-fun m!6116718 () Bool)

(assert (=> b!5070896 m!6116718))

(assert (=> b!5070094 d!1636515))

(declare-fun d!1636517 () Bool)

(declare-fun res!2159032 () Bool)

(declare-fun e!3164076 () Bool)

(assert (=> d!1636517 (=> res!2159032 e!3164076)))

(assert (=> d!1636517 (= res!2159032 (not ((_ is Node!15568) (right!43152 (right!43152 lt!2089379)))))))

(assert (=> d!1636517 (= (isBalanced!4430 (right!43152 (right!43152 lt!2089379))) e!3164076)))

(declare-fun b!5070898 () Bool)

(declare-fun res!2159035 () Bool)

(declare-fun e!3164075 () Bool)

(assert (=> b!5070898 (=> (not res!2159035) (not e!3164075))))

(assert (=> b!5070898 (= res!2159035 (not (isEmpty!31638 (left!42822 (right!43152 (right!43152 lt!2089379))))))))

(declare-fun b!5070899 () Bool)

(declare-fun res!2159036 () Bool)

(assert (=> b!5070899 (=> (not res!2159036) (not e!3164075))))

(assert (=> b!5070899 (= res!2159036 (isBalanced!4430 (right!43152 (right!43152 (right!43152 lt!2089379)))))))

(declare-fun b!5070900 () Bool)

(assert (=> b!5070900 (= e!3164076 e!3164075)))

(declare-fun res!2159037 () Bool)

(assert (=> b!5070900 (=> (not res!2159037) (not e!3164075))))

(assert (=> b!5070900 (= res!2159037 (<= (- 1) (- (height!2145 (left!42822 (right!43152 (right!43152 lt!2089379)))) (height!2145 (right!43152 (right!43152 (right!43152 lt!2089379)))))))))

(declare-fun b!5070901 () Bool)

(declare-fun res!2159034 () Bool)

(assert (=> b!5070901 (=> (not res!2159034) (not e!3164075))))

(assert (=> b!5070901 (= res!2159034 (isBalanced!4430 (left!42822 (right!43152 (right!43152 lt!2089379)))))))

(declare-fun b!5070902 () Bool)

(declare-fun res!2159033 () Bool)

(assert (=> b!5070902 (=> (not res!2159033) (not e!3164075))))

(assert (=> b!5070902 (= res!2159033 (<= (- (height!2145 (left!42822 (right!43152 (right!43152 lt!2089379)))) (height!2145 (right!43152 (right!43152 (right!43152 lt!2089379))))) 1))))

(declare-fun b!5070903 () Bool)

(assert (=> b!5070903 (= e!3164075 (not (isEmpty!31638 (right!43152 (right!43152 (right!43152 lt!2089379))))))))

(assert (= (and d!1636517 (not res!2159032)) b!5070900))

(assert (= (and b!5070900 res!2159037) b!5070902))

(assert (= (and b!5070902 res!2159033) b!5070901))

(assert (= (and b!5070901 res!2159034) b!5070899))

(assert (= (and b!5070899 res!2159036) b!5070898))

(assert (= (and b!5070898 res!2159035) b!5070903))

(declare-fun m!6116720 () Bool)

(assert (=> b!5070899 m!6116720))

(declare-fun m!6116722 () Bool)

(assert (=> b!5070903 m!6116722))

(declare-fun m!6116724 () Bool)

(assert (=> b!5070901 m!6116724))

(declare-fun m!6116726 () Bool)

(assert (=> b!5070900 m!6116726))

(declare-fun m!6116728 () Bool)

(assert (=> b!5070900 m!6116728))

(declare-fun m!6116730 () Bool)

(assert (=> b!5070898 m!6116730))

(assert (=> b!5070902 m!6116726))

(assert (=> b!5070902 m!6116728))

(assert (=> b!5069934 d!1636517))

(assert (=> d!1635883 d!1636213))

(assert (=> d!1635883 d!1636215))

(assert (=> b!5069955 d!1636485))

(assert (=> b!5069955 d!1636487))

(declare-fun d!1636519 () Bool)

(declare-fun res!2159038 () Bool)

(declare-fun e!3164077 () Bool)

(assert (=> d!1636519 (=> (not res!2159038) (not e!3164077))))

(assert (=> d!1636519 (= res!2159038 (= (csize!31366 (left!42822 (left!42822 xs!286))) (+ (size!39084 (left!42822 (left!42822 (left!42822 xs!286)))) (size!39084 (right!43152 (left!42822 (left!42822 xs!286)))))))))

(assert (=> d!1636519 (= (inv!77580 (left!42822 (left!42822 xs!286))) e!3164077)))

(declare-fun b!5070904 () Bool)

(declare-fun res!2159039 () Bool)

(assert (=> b!5070904 (=> (not res!2159039) (not e!3164077))))

(assert (=> b!5070904 (= res!2159039 (and (not (= (left!42822 (left!42822 (left!42822 xs!286))) Empty!15568)) (not (= (right!43152 (left!42822 (left!42822 xs!286))) Empty!15568))))))

(declare-fun b!5070905 () Bool)

(declare-fun res!2159040 () Bool)

(assert (=> b!5070905 (=> (not res!2159040) (not e!3164077))))

(assert (=> b!5070905 (= res!2159040 (= (cheight!15779 (left!42822 (left!42822 xs!286))) (+ (max!0 (height!2145 (left!42822 (left!42822 (left!42822 xs!286)))) (height!2145 (right!43152 (left!42822 (left!42822 xs!286))))) 1)))))

(declare-fun b!5070906 () Bool)

(assert (=> b!5070906 (= e!3164077 (<= 0 (cheight!15779 (left!42822 (left!42822 xs!286)))))))

(assert (= (and d!1636519 res!2159038) b!5070904))

(assert (= (and b!5070904 res!2159039) b!5070905))

(assert (= (and b!5070905 res!2159040) b!5070906))

(declare-fun m!6116732 () Bool)

(assert (=> d!1636519 m!6116732))

(declare-fun m!6116734 () Bool)

(assert (=> d!1636519 m!6116734))

(assert (=> b!5070905 m!6116122))

(assert (=> b!5070905 m!6116124))

(assert (=> b!5070905 m!6116122))

(assert (=> b!5070905 m!6116124))

(declare-fun m!6116736 () Bool)

(assert (=> b!5070905 m!6116736))

(assert (=> b!5070074 d!1636519))

(assert (=> b!5070034 d!1636117))

(assert (=> b!5070034 d!1636119))

(declare-fun d!1636521 () Bool)

(declare-fun c!870684 () Bool)

(assert (=> d!1636521 (= c!870684 ((_ is Nil!58438) lt!2089418))))

(declare-fun e!3164078 () (InoxSet T!105146))

(assert (=> d!1636521 (= (content!10420 lt!2089418) e!3164078)))

(declare-fun b!5070907 () Bool)

(assert (=> b!5070907 (= e!3164078 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070908 () Bool)

(assert (=> b!5070908 (= e!3164078 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 lt!2089418) true) (content!10420 (t!371315 lt!2089418))))))

(assert (= (and d!1636521 c!870684) b!5070907))

(assert (= (and d!1636521 (not c!870684)) b!5070908))

(declare-fun m!6116738 () Bool)

(assert (=> b!5070908 m!6116738))

(declare-fun m!6116740 () Bool)

(assert (=> b!5070908 m!6116740))

(assert (=> d!1635911 d!1636521))

(assert (=> d!1635911 d!1636385))

(assert (=> d!1635911 d!1635893))

(assert (=> b!5070026 d!1636429))

(assert (=> b!5070026 d!1636431))

(assert (=> b!5070030 d!1636327))

(assert (=> b!5070030 d!1635885))

(assert (=> bm!353249 d!1635791))

(declare-fun d!1636523 () Bool)

(declare-fun c!870685 () Bool)

(assert (=> d!1636523 (= c!870685 ((_ is Node!15568) (left!42822 (left!42822 (left!42822 err!4601)))))))

(declare-fun e!3164079 () Bool)

(assert (=> d!1636523 (= (inv!77577 (left!42822 (left!42822 (left!42822 err!4601)))) e!3164079)))

(declare-fun b!5070909 () Bool)

(assert (=> b!5070909 (= e!3164079 (inv!77580 (left!42822 (left!42822 (left!42822 err!4601)))))))

(declare-fun b!5070910 () Bool)

(declare-fun e!3164080 () Bool)

(assert (=> b!5070910 (= e!3164079 e!3164080)))

(declare-fun res!2159041 () Bool)

(assert (=> b!5070910 (= res!2159041 (not ((_ is Leaf!25857) (left!42822 (left!42822 (left!42822 err!4601))))))))

(assert (=> b!5070910 (=> res!2159041 e!3164080)))

(declare-fun b!5070911 () Bool)

(assert (=> b!5070911 (= e!3164080 (inv!77582 (left!42822 (left!42822 (left!42822 err!4601)))))))

(assert (= (and d!1636523 c!870685) b!5070909))

(assert (= (and d!1636523 (not c!870685)) b!5070910))

(assert (= (and b!5070910 (not res!2159041)) b!5070911))

(declare-fun m!6116742 () Bool)

(assert (=> b!5070909 m!6116742))

(declare-fun m!6116744 () Bool)

(assert (=> b!5070911 m!6116744))

(assert (=> b!5070177 d!1636523))

(declare-fun d!1636525 () Bool)

(declare-fun c!870686 () Bool)

(assert (=> d!1636525 (= c!870686 ((_ is Node!15568) (right!43152 (left!42822 (left!42822 err!4601)))))))

(declare-fun e!3164081 () Bool)

(assert (=> d!1636525 (= (inv!77577 (right!43152 (left!42822 (left!42822 err!4601)))) e!3164081)))

(declare-fun b!5070912 () Bool)

(assert (=> b!5070912 (= e!3164081 (inv!77580 (right!43152 (left!42822 (left!42822 err!4601)))))))

(declare-fun b!5070913 () Bool)

(declare-fun e!3164082 () Bool)

(assert (=> b!5070913 (= e!3164081 e!3164082)))

(declare-fun res!2159042 () Bool)

(assert (=> b!5070913 (= res!2159042 (not ((_ is Leaf!25857) (right!43152 (left!42822 (left!42822 err!4601))))))))

(assert (=> b!5070913 (=> res!2159042 e!3164082)))

(declare-fun b!5070914 () Bool)

(assert (=> b!5070914 (= e!3164082 (inv!77582 (right!43152 (left!42822 (left!42822 err!4601)))))))

(assert (= (and d!1636525 c!870686) b!5070912))

(assert (= (and d!1636525 (not c!870686)) b!5070913))

(assert (= (and b!5070913 (not res!2159042)) b!5070914))

(declare-fun m!6116746 () Bool)

(assert (=> b!5070912 m!6116746))

(declare-fun m!6116748 () Bool)

(assert (=> b!5070914 m!6116748))

(assert (=> b!5070177 d!1636525))

(declare-fun d!1636527 () Bool)

(assert (=> d!1636527 (= (isEmpty!31640 (list!18997 (right!43152 lt!2089379))) ((_ is Nil!58438) (list!18997 (right!43152 lt!2089379))))))

(assert (=> d!1635807 d!1636527))

(assert (=> d!1635807 d!1635755))

(declare-fun d!1636529 () Bool)

(declare-fun lt!2089540 () Int)

(assert (=> d!1636529 (= lt!2089540 (size!39082 (list!18997 (right!43152 lt!2089379))))))

(assert (=> d!1636529 (= lt!2089540 (ite ((_ is Empty!15568) (right!43152 lt!2089379)) 0 (ite ((_ is Leaf!25857) (right!43152 lt!2089379)) (csize!31367 (right!43152 lt!2089379)) (csize!31366 (right!43152 lt!2089379)))))))

(assert (=> d!1636529 (= (size!39084 (right!43152 lt!2089379)) lt!2089540)))

(declare-fun bs!1190143 () Bool)

(assert (= bs!1190143 d!1636529))

(assert (=> bs!1190143 m!6114600))

(assert (=> bs!1190143 m!6114600))

(assert (=> bs!1190143 m!6114790))

(assert (=> d!1635807 d!1636529))

(declare-fun d!1636531 () Bool)

(declare-fun e!3164083 () Bool)

(assert (=> d!1636531 e!3164083))

(declare-fun c!870687 () Bool)

(assert (=> d!1636531 (= c!870687 ((_ is Nil!58438) (t!371315 (list!18997 (left!42822 xs!286)))))))

(assert (=> d!1636531 (= (appendAssoc!303 (t!371315 (list!18997 (left!42822 xs!286))) (list!18997 (left!42822 (right!43152 xs!286))) (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41))) true)))

(declare-fun bm!353301 () Bool)

(declare-fun call!353306 () List!58562)

(assert (=> bm!353301 (= call!353306 (++!12793 (t!371315 (list!18997 (left!42822 xs!286))) (list!18997 (left!42822 (right!43152 xs!286)))))))

(declare-fun bm!353302 () Bool)

(declare-fun call!353307 () List!58562)

(declare-fun call!353308 () List!58562)

(assert (=> bm!353302 (= call!353307 (++!12793 (t!371315 (list!18997 (left!42822 xs!286))) call!353308))))

(declare-fun b!5070915 () Bool)

(declare-fun call!353309 () List!58562)

(assert (=> b!5070915 (= e!3164083 (= call!353309 call!353307))))

(declare-fun lt!2089541 () Bool)

(assert (=> b!5070915 (= lt!2089541 (appendAssoc!303 (t!371315 (t!371315 (list!18997 (left!42822 xs!286)))) (list!18997 (left!42822 (right!43152 xs!286))) (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41))))))

(declare-fun b!5070916 () Bool)

(assert (=> b!5070916 (= e!3164083 (= call!353309 call!353307))))

(declare-fun bm!353303 () Bool)

(assert (=> bm!353303 (= call!353308 (++!12793 (list!18997 (left!42822 (right!43152 xs!286))) (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41))))))

(declare-fun bm!353304 () Bool)

(assert (=> bm!353304 (= call!353309 (++!12793 call!353306 (++!12793 (list!18997 (right!43152 (right!43152 xs!286))) (list!18997 ys!41))))))

(assert (= (and d!1636531 c!870687) b!5070916))

(assert (= (and d!1636531 (not c!870687)) b!5070915))

(assert (= (or b!5070916 b!5070915) bm!353301))

(assert (= (or b!5070916 b!5070915) bm!353303))

(assert (= (or b!5070916 b!5070915) bm!353302))

(assert (= (or b!5070916 b!5070915) bm!353304))

(assert (=> bm!353303 m!6114522))

(assert (=> bm!353303 m!6114540))

(assert (=> bm!353303 m!6114978))

(assert (=> bm!353301 m!6114522))

(assert (=> bm!353301 m!6116540))

(assert (=> b!5070915 m!6114522))

(assert (=> b!5070915 m!6114540))

(declare-fun m!6116750 () Bool)

(assert (=> b!5070915 m!6116750))

(declare-fun m!6116752 () Bool)

(assert (=> bm!353302 m!6116752))

(assert (=> bm!353304 m!6114540))

(declare-fun m!6116754 () Bool)

(assert (=> bm!353304 m!6116754))

(assert (=> b!5070014 d!1636531))

(declare-fun d!1636533 () Bool)

(declare-fun lt!2089542 () Int)

(assert (=> d!1636533 (>= lt!2089542 0)))

(declare-fun e!3164084 () Int)

(assert (=> d!1636533 (= lt!2089542 e!3164084)))

(declare-fun c!870688 () Bool)

(assert (=> d!1636533 (= c!870688 ((_ is Nil!58438) (innerList!15656 (xs!18924 (left!42822 ys!41)))))))

(assert (=> d!1636533 (= (size!39082 (innerList!15656 (xs!18924 (left!42822 ys!41)))) lt!2089542)))

(declare-fun b!5070917 () Bool)

(assert (=> b!5070917 (= e!3164084 0)))

(declare-fun b!5070918 () Bool)

(assert (=> b!5070918 (= e!3164084 (+ 1 (size!39082 (t!371315 (innerList!15656 (xs!18924 (left!42822 ys!41)))))))))

(assert (= (and d!1636533 c!870688) b!5070917))

(assert (= (and d!1636533 (not c!870688)) b!5070918))

(declare-fun m!6116756 () Bool)

(assert (=> b!5070918 m!6116756))

(assert (=> d!1635789 d!1636533))

(declare-fun d!1636535 () Bool)

(declare-fun lt!2089543 () Int)

(assert (=> d!1636535 (>= lt!2089543 0)))

(declare-fun e!3164085 () Int)

(assert (=> d!1636535 (= lt!2089543 e!3164085)))

(declare-fun c!870689 () Bool)

(assert (=> d!1636535 (= c!870689 ((_ is Nil!58438) lt!2089418))))

(assert (=> d!1636535 (= (size!39082 lt!2089418) lt!2089543)))

(declare-fun b!5070919 () Bool)

(assert (=> b!5070919 (= e!3164085 0)))

(declare-fun b!5070920 () Bool)

(assert (=> b!5070920 (= e!3164085 (+ 1 (size!39082 (t!371315 lt!2089418))))))

(assert (= (and d!1636535 c!870689) b!5070919))

(assert (= (and d!1636535 (not c!870689)) b!5070920))

(declare-fun m!6116758 () Bool)

(assert (=> b!5070920 m!6116758))

(assert (=> b!5070129 d!1636535))

(assert (=> b!5070129 d!1636331))

(assert (=> b!5070129 d!1635841))

(declare-fun d!1636537 () Bool)

(declare-fun e!3164086 () Bool)

(assert (=> d!1636537 e!3164086))

(declare-fun c!870690 () Bool)

(assert (=> d!1636537 (= c!870690 ((_ is Nil!58438) (t!371315 (list!18997 xs!286))))))

(assert (=> d!1636537 (= (appendAssoc!303 (t!371315 (list!18997 xs!286)) (list!18997 (left!42822 (left!42822 ys!41))) (list!18997 (right!43152 (left!42822 ys!41)))) true)))

(declare-fun bm!353305 () Bool)

(declare-fun call!353310 () List!58562)

(assert (=> bm!353305 (= call!353310 (++!12793 (t!371315 (list!18997 xs!286)) (list!18997 (left!42822 (left!42822 ys!41)))))))

(declare-fun bm!353306 () Bool)

(declare-fun call!353311 () List!58562)

(declare-fun call!353312 () List!58562)

(assert (=> bm!353306 (= call!353311 (++!12793 (t!371315 (list!18997 xs!286)) call!353312))))

(declare-fun b!5070921 () Bool)

(declare-fun call!353313 () List!58562)

(assert (=> b!5070921 (= e!3164086 (= call!353313 call!353311))))

(declare-fun lt!2089544 () Bool)

(assert (=> b!5070921 (= lt!2089544 (appendAssoc!303 (t!371315 (t!371315 (list!18997 xs!286))) (list!18997 (left!42822 (left!42822 ys!41))) (list!18997 (right!43152 (left!42822 ys!41)))))))

(declare-fun b!5070922 () Bool)

(assert (=> b!5070922 (= e!3164086 (= call!353313 call!353311))))

(declare-fun bm!353307 () Bool)

(assert (=> bm!353307 (= call!353312 (++!12793 (list!18997 (left!42822 (left!42822 ys!41))) (list!18997 (right!43152 (left!42822 ys!41)))))))

(declare-fun bm!353308 () Bool)

(assert (=> bm!353308 (= call!353313 (++!12793 call!353310 (list!18997 (right!43152 (left!42822 ys!41)))))))

(assert (= (and d!1636537 c!870690) b!5070922))

(assert (= (and d!1636537 (not c!870690)) b!5070921))

(assert (= (or b!5070922 b!5070921) bm!353305))

(assert (= (or b!5070922 b!5070921) bm!353307))

(assert (= (or b!5070922 b!5070921) bm!353306))

(assert (= (or b!5070922 b!5070921) bm!353308))

(assert (=> bm!353307 m!6114512))

(assert (=> bm!353307 m!6114516))

(assert (=> bm!353307 m!6115012))

(assert (=> bm!353305 m!6114512))

(assert (=> bm!353305 m!6114898))

(assert (=> b!5070921 m!6114512))

(assert (=> b!5070921 m!6114516))

(declare-fun m!6116760 () Bool)

(assert (=> b!5070921 m!6116760))

(declare-fun m!6116762 () Bool)

(assert (=> bm!353306 m!6116762))

(assert (=> bm!353308 m!6114516))

(declare-fun m!6116764 () Bool)

(assert (=> bm!353308 m!6116764))

(assert (=> b!5070028 d!1636537))

(declare-fun b!5070925 () Bool)

(declare-fun res!2159044 () Bool)

(declare-fun e!3164088 () Bool)

(assert (=> b!5070925 (=> (not res!2159044) (not e!3164088))))

(declare-fun lt!2089545 () List!58562)

(assert (=> b!5070925 (= res!2159044 (= (size!39082 lt!2089545) (+ (size!39082 (t!371315 (list!18997 (left!42822 ys!41)))) (size!39082 (list!18997 (right!43152 ys!41))))))))

(declare-fun b!5070926 () Bool)

(assert (=> b!5070926 (= e!3164088 (or (not (= (list!18997 (right!43152 ys!41)) Nil!58438)) (= lt!2089545 (t!371315 (list!18997 (left!42822 ys!41))))))))

(declare-fun b!5070923 () Bool)

(declare-fun e!3164087 () List!58562)

(assert (=> b!5070923 (= e!3164087 (list!18997 (right!43152 ys!41)))))

(declare-fun d!1636539 () Bool)

(assert (=> d!1636539 e!3164088))

(declare-fun res!2159043 () Bool)

(assert (=> d!1636539 (=> (not res!2159043) (not e!3164088))))

(assert (=> d!1636539 (= res!2159043 (= (content!10420 lt!2089545) ((_ map or) (content!10420 (t!371315 (list!18997 (left!42822 ys!41)))) (content!10420 (list!18997 (right!43152 ys!41))))))))

(assert (=> d!1636539 (= lt!2089545 e!3164087)))

(declare-fun c!870691 () Bool)

(assert (=> d!1636539 (= c!870691 ((_ is Nil!58438) (t!371315 (list!18997 (left!42822 ys!41)))))))

(assert (=> d!1636539 (= (++!12793 (t!371315 (list!18997 (left!42822 ys!41))) (list!18997 (right!43152 ys!41))) lt!2089545)))

(declare-fun b!5070924 () Bool)

(assert (=> b!5070924 (= e!3164087 (Cons!58438 (h!64886 (t!371315 (list!18997 (left!42822 ys!41)))) (++!12793 (t!371315 (t!371315 (list!18997 (left!42822 ys!41)))) (list!18997 (right!43152 ys!41)))))))

(assert (= (and d!1636539 c!870691) b!5070923))

(assert (= (and d!1636539 (not c!870691)) b!5070924))

(assert (= (and d!1636539 res!2159043) b!5070925))

(assert (= (and b!5070925 res!2159044) b!5070926))

(declare-fun m!6116766 () Bool)

(assert (=> b!5070925 m!6116766))

(declare-fun m!6116768 () Bool)

(assert (=> b!5070925 m!6116768))

(assert (=> b!5070925 m!6114518))

(assert (=> b!5070925 m!6115192))

(declare-fun m!6116770 () Bool)

(assert (=> d!1636539 m!6116770))

(declare-fun m!6116772 () Bool)

(assert (=> d!1636539 m!6116772))

(assert (=> d!1636539 m!6114518))

(assert (=> d!1636539 m!6115198))

(assert (=> b!5070924 m!6114518))

(declare-fun m!6116774 () Bool)

(assert (=> b!5070924 m!6116774))

(assert (=> b!5070122 d!1636539))

(declare-fun d!1636541 () Bool)

(assert (=> d!1636541 (= (inv!77578 (xs!18924 (right!43152 (left!42822 ys!41)))) (<= (size!39082 (innerList!15656 (xs!18924 (right!43152 (left!42822 ys!41))))) 2147483647))))

(declare-fun bs!1190144 () Bool)

(assert (= bs!1190144 d!1636541))

(declare-fun m!6116776 () Bool)

(assert (=> bs!1190144 m!6116776))

(assert (=> b!5070174 d!1636541))

(assert (=> b!5069908 d!1636185))

(assert (=> b!5069908 d!1636187))

(declare-fun b!5070929 () Bool)

(declare-fun res!2159046 () Bool)

(declare-fun e!3164090 () Bool)

(assert (=> b!5070929 (=> (not res!2159046) (not e!3164090))))

(declare-fun lt!2089546 () List!58562)

(assert (=> b!5070929 (= res!2159046 (= (size!39082 lt!2089546) (+ (size!39082 (list!18997 (right!43152 (left!42822 ys!41)))) (size!39082 (list!18997 (right!43152 ys!41))))))))

(declare-fun b!5070930 () Bool)

(assert (=> b!5070930 (= e!3164090 (or (not (= (list!18997 (right!43152 ys!41)) Nil!58438)) (= lt!2089546 (list!18997 (right!43152 (left!42822 ys!41))))))))

(declare-fun b!5070927 () Bool)

(declare-fun e!3164089 () List!58562)

(assert (=> b!5070927 (= e!3164089 (list!18997 (right!43152 ys!41)))))

(declare-fun d!1636543 () Bool)

(assert (=> d!1636543 e!3164090))

(declare-fun res!2159045 () Bool)

(assert (=> d!1636543 (=> (not res!2159045) (not e!3164090))))

(assert (=> d!1636543 (= res!2159045 (= (content!10420 lt!2089546) ((_ map or) (content!10420 (list!18997 (right!43152 (left!42822 ys!41)))) (content!10420 (list!18997 (right!43152 ys!41))))))))

(assert (=> d!1636543 (= lt!2089546 e!3164089)))

(declare-fun c!870692 () Bool)

(assert (=> d!1636543 (= c!870692 ((_ is Nil!58438) (list!18997 (right!43152 (left!42822 ys!41)))))))

(assert (=> d!1636543 (= (++!12793 (list!18997 (right!43152 (left!42822 ys!41))) (list!18997 (right!43152 ys!41))) lt!2089546)))

(declare-fun b!5070928 () Bool)

(assert (=> b!5070928 (= e!3164089 (Cons!58438 (h!64886 (list!18997 (right!43152 (left!42822 ys!41)))) (++!12793 (t!371315 (list!18997 (right!43152 (left!42822 ys!41)))) (list!18997 (right!43152 ys!41)))))))

(assert (= (and d!1636543 c!870692) b!5070927))

(assert (= (and d!1636543 (not c!870692)) b!5070928))

(assert (= (and d!1636543 res!2159045) b!5070929))

(assert (= (and b!5070929 res!2159046) b!5070930))

(declare-fun m!6116778 () Bool)

(assert (=> b!5070929 m!6116778))

(assert (=> b!5070929 m!6114516))

(assert (=> b!5070929 m!6115994))

(assert (=> b!5070929 m!6114518))

(assert (=> b!5070929 m!6115192))

(declare-fun m!6116780 () Bool)

(assert (=> d!1636543 m!6116780))

(assert (=> d!1636543 m!6114516))

(assert (=> d!1636543 m!6115998))

(assert (=> d!1636543 m!6114518))

(assert (=> d!1636543 m!6115198))

(assert (=> b!5070928 m!6114518))

(declare-fun m!6116782 () Bool)

(assert (=> b!5070928 m!6116782))

(assert (=> bm!353235 d!1636543))

(declare-fun d!1636545 () Bool)

(declare-fun lt!2089547 () Int)

(assert (=> d!1636545 (= lt!2089547 (size!39082 (list!18997 (left!42822 (left!42822 ys!41)))))))

(assert (=> d!1636545 (= lt!2089547 (ite ((_ is Empty!15568) (left!42822 (left!42822 ys!41))) 0 (ite ((_ is Leaf!25857) (left!42822 (left!42822 ys!41))) (csize!31367 (left!42822 (left!42822 ys!41))) (csize!31366 (left!42822 (left!42822 ys!41))))))))

(assert (=> d!1636545 (= (size!39084 (left!42822 (left!42822 ys!41))) lt!2089547)))

(declare-fun bs!1190145 () Bool)

(assert (= bs!1190145 d!1636545))

(assert (=> bs!1190145 m!6114512))

(assert (=> bs!1190145 m!6114512))

(assert (=> bs!1190145 m!6114892))

(assert (=> d!1635899 d!1636545))

(declare-fun d!1636547 () Bool)

(declare-fun lt!2089548 () Int)

(assert (=> d!1636547 (= lt!2089548 (size!39082 (list!18997 (right!43152 (left!42822 ys!41)))))))

(assert (=> d!1636547 (= lt!2089548 (ite ((_ is Empty!15568) (right!43152 (left!42822 ys!41))) 0 (ite ((_ is Leaf!25857) (right!43152 (left!42822 ys!41))) (csize!31367 (right!43152 (left!42822 ys!41))) (csize!31366 (right!43152 (left!42822 ys!41))))))))

(assert (=> d!1636547 (= (size!39084 (right!43152 (left!42822 ys!41))) lt!2089548)))

(declare-fun bs!1190146 () Bool)

(assert (= bs!1190146 d!1636547))

(assert (=> bs!1190146 m!6114516))

(assert (=> bs!1190146 m!6114516))

(assert (=> bs!1190146 m!6115994))

(assert (=> d!1635899 d!1636547))

(declare-fun d!1636549 () Bool)

(assert (=> d!1636549 (= (list!18999 (xs!18924 (left!42822 (left!42822 ys!41)))) (innerList!15656 (xs!18924 (left!42822 (left!42822 ys!41)))))))

(assert (=> b!5069979 d!1636549))

(assert (=> b!5069935 d!1636191))

(assert (=> b!5069935 d!1636193))

(declare-fun d!1636551 () Bool)

(assert (=> d!1636551 (= (inv!77578 (xs!18924 (left!42822 (left!42822 err!4601)))) (<= (size!39082 (innerList!15656 (xs!18924 (left!42822 (left!42822 err!4601))))) 2147483647))))

(declare-fun bs!1190147 () Bool)

(assert (= bs!1190147 d!1636551))

(declare-fun m!6116784 () Bool)

(assert (=> bs!1190147 m!6116784))

(assert (=> b!5070178 d!1636551))

(declare-fun d!1636553 () Bool)

(assert (=> d!1636553 (= (list!18999 (xs!18924 (left!42822 lt!2089379))) (innerList!15656 (xs!18924 (left!42822 lt!2089379))))))

(assert (=> b!5069918 d!1636553))

(declare-fun d!1636555 () Bool)

(declare-fun res!2159047 () Bool)

(declare-fun e!3164092 () Bool)

(assert (=> d!1636555 (=> res!2159047 e!3164092)))

(assert (=> d!1636555 (= res!2159047 (not ((_ is Node!15568) (left!42822 (right!43152 ys!41)))))))

(assert (=> d!1636555 (= (isBalanced!4430 (left!42822 (right!43152 ys!41))) e!3164092)))

(declare-fun b!5070931 () Bool)

(declare-fun res!2159050 () Bool)

(declare-fun e!3164091 () Bool)

(assert (=> b!5070931 (=> (not res!2159050) (not e!3164091))))

(assert (=> b!5070931 (= res!2159050 (not (isEmpty!31638 (left!42822 (left!42822 (right!43152 ys!41))))))))

(declare-fun b!5070932 () Bool)

(declare-fun res!2159051 () Bool)

(assert (=> b!5070932 (=> (not res!2159051) (not e!3164091))))

(assert (=> b!5070932 (= res!2159051 (isBalanced!4430 (right!43152 (left!42822 (right!43152 ys!41)))))))

(declare-fun b!5070933 () Bool)

(assert (=> b!5070933 (= e!3164092 e!3164091)))

(declare-fun res!2159052 () Bool)

(assert (=> b!5070933 (=> (not res!2159052) (not e!3164091))))

(assert (=> b!5070933 (= res!2159052 (<= (- 1) (- (height!2145 (left!42822 (left!42822 (right!43152 ys!41)))) (height!2145 (right!43152 (left!42822 (right!43152 ys!41)))))))))

(declare-fun b!5070934 () Bool)

(declare-fun res!2159049 () Bool)

(assert (=> b!5070934 (=> (not res!2159049) (not e!3164091))))

(assert (=> b!5070934 (= res!2159049 (isBalanced!4430 (left!42822 (left!42822 (right!43152 ys!41)))))))

(declare-fun b!5070935 () Bool)

(declare-fun res!2159048 () Bool)

(assert (=> b!5070935 (=> (not res!2159048) (not e!3164091))))

(assert (=> b!5070935 (= res!2159048 (<= (- (height!2145 (left!42822 (left!42822 (right!43152 ys!41)))) (height!2145 (right!43152 (left!42822 (right!43152 ys!41))))) 1))))

(declare-fun b!5070936 () Bool)

(assert (=> b!5070936 (= e!3164091 (not (isEmpty!31638 (right!43152 (left!42822 (right!43152 ys!41))))))))

(assert (= (and d!1636555 (not res!2159047)) b!5070933))

(assert (= (and b!5070933 res!2159052) b!5070935))

(assert (= (and b!5070935 res!2159048) b!5070934))

(assert (= (and b!5070934 res!2159049) b!5070932))

(assert (= (and b!5070932 res!2159051) b!5070931))

(assert (= (and b!5070931 res!2159050) b!5070936))

(declare-fun m!6116786 () Bool)

(assert (=> b!5070932 m!6116786))

(declare-fun m!6116788 () Bool)

(assert (=> b!5070936 m!6116788))

(declare-fun m!6116790 () Bool)

(assert (=> b!5070934 m!6116790))

(assert (=> b!5070933 m!6116604))

(assert (=> b!5070933 m!6116606))

(declare-fun m!6116792 () Bool)

(assert (=> b!5070931 m!6116792))

(assert (=> b!5070935 m!6116604))

(assert (=> b!5070935 m!6116606))

(assert (=> b!5070035 d!1636555))

(declare-fun d!1636557 () Bool)

(declare-fun c!870693 () Bool)

(assert (=> d!1636557 (= c!870693 ((_ is Nil!58438) lt!2089415))))

(declare-fun e!3164093 () (InoxSet T!105146))

(assert (=> d!1636557 (= (content!10420 lt!2089415) e!3164093)))

(declare-fun b!5070937 () Bool)

(assert (=> b!5070937 (= e!3164093 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070938 () Bool)

(assert (=> b!5070938 (= e!3164093 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 lt!2089415) true) (content!10420 (t!371315 lt!2089415))))))

(assert (= (and d!1636557 c!870693) b!5070937))

(assert (= (and d!1636557 (not c!870693)) b!5070938))

(declare-fun m!6116794 () Bool)

(assert (=> b!5070938 m!6116794))

(declare-fun m!6116796 () Bool)

(assert (=> b!5070938 m!6116796))

(assert (=> d!1635905 d!1636557))

(declare-fun d!1636559 () Bool)

(declare-fun c!870694 () Bool)

(assert (=> d!1636559 (= c!870694 ((_ is Nil!58438) (list!18997 (left!42822 ys!41))))))

(declare-fun e!3164094 () (InoxSet T!105146))

(assert (=> d!1636559 (= (content!10420 (list!18997 (left!42822 ys!41))) e!3164094)))

(declare-fun b!5070939 () Bool)

(assert (=> b!5070939 (= e!3164094 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070940 () Bool)

(assert (=> b!5070940 (= e!3164094 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 (list!18997 (left!42822 ys!41))) true) (content!10420 (t!371315 (list!18997 (left!42822 ys!41))))))))

(assert (= (and d!1636559 c!870694) b!5070939))

(assert (= (and d!1636559 (not c!870694)) b!5070940))

(declare-fun m!6116798 () Bool)

(assert (=> b!5070940 m!6116798))

(assert (=> b!5070940 m!6116772))

(assert (=> d!1635905 d!1636559))

(declare-fun d!1636561 () Bool)

(declare-fun c!870695 () Bool)

(assert (=> d!1636561 (= c!870695 ((_ is Nil!58438) (list!18997 (right!43152 ys!41))))))

(declare-fun e!3164095 () (InoxSet T!105146))

(assert (=> d!1636561 (= (content!10420 (list!18997 (right!43152 ys!41))) e!3164095)))

(declare-fun b!5070941 () Bool)

(assert (=> b!5070941 (= e!3164095 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070942 () Bool)

(assert (=> b!5070942 (= e!3164095 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 (list!18997 (right!43152 ys!41))) true) (content!10420 (t!371315 (list!18997 (right!43152 ys!41))))))))

(assert (= (and d!1636561 c!870695) b!5070941))

(assert (= (and d!1636561 (not c!870695)) b!5070942))

(declare-fun m!6116800 () Bool)

(assert (=> b!5070942 m!6116800))

(declare-fun m!6116802 () Bool)

(assert (=> b!5070942 m!6116802))

(assert (=> d!1635905 d!1636561))

(declare-fun d!1636563 () Bool)

(declare-fun res!2159053 () Bool)

(declare-fun e!3164096 () Bool)

(assert (=> d!1636563 (=> (not res!2159053) (not e!3164096))))

(assert (=> d!1636563 (= res!2159053 (<= (size!39082 (list!18999 (xs!18924 (left!42822 (right!43152 ys!41))))) 512))))

(assert (=> d!1636563 (= (inv!77582 (left!42822 (right!43152 ys!41))) e!3164096)))

(declare-fun b!5070943 () Bool)

(declare-fun res!2159054 () Bool)

(assert (=> b!5070943 (=> (not res!2159054) (not e!3164096))))

(assert (=> b!5070943 (= res!2159054 (= (csize!31367 (left!42822 (right!43152 ys!41))) (size!39082 (list!18999 (xs!18924 (left!42822 (right!43152 ys!41)))))))))

(declare-fun b!5070944 () Bool)

(assert (=> b!5070944 (= e!3164096 (and (> (csize!31367 (left!42822 (right!43152 ys!41))) 0) (<= (csize!31367 (left!42822 (right!43152 ys!41))) 512)))))

(assert (= (and d!1636563 res!2159053) b!5070943))

(assert (= (and b!5070943 res!2159054) b!5070944))

(assert (=> d!1636563 m!6116384))

(assert (=> d!1636563 m!6116384))

(declare-fun m!6116804 () Bool)

(assert (=> d!1636563 m!6116804))

(assert (=> b!5070943 m!6116384))

(assert (=> b!5070943 m!6116384))

(assert (=> b!5070943 m!6116804))

(assert (=> b!5069947 d!1636563))

(declare-fun b!5070947 () Bool)

(declare-fun res!2159056 () Bool)

(declare-fun e!3164098 () Bool)

(assert (=> b!5070947 (=> (not res!2159056) (not e!3164098))))

(declare-fun lt!2089549 () List!58562)

(assert (=> b!5070947 (= res!2159056 (= (size!39082 lt!2089549) (+ (size!39082 (t!371315 (list!18997 (left!42822 lt!2089379)))) (size!39082 (list!18997 (right!43152 lt!2089379))))))))

(declare-fun b!5070948 () Bool)

(assert (=> b!5070948 (= e!3164098 (or (not (= (list!18997 (right!43152 lt!2089379)) Nil!58438)) (= lt!2089549 (t!371315 (list!18997 (left!42822 lt!2089379))))))))

(declare-fun b!5070945 () Bool)

(declare-fun e!3164097 () List!58562)

(assert (=> b!5070945 (= e!3164097 (list!18997 (right!43152 lt!2089379)))))

(declare-fun d!1636565 () Bool)

(assert (=> d!1636565 e!3164098))

(declare-fun res!2159055 () Bool)

(assert (=> d!1636565 (=> (not res!2159055) (not e!3164098))))

(assert (=> d!1636565 (= res!2159055 (= (content!10420 lt!2089549) ((_ map or) (content!10420 (t!371315 (list!18997 (left!42822 lt!2089379)))) (content!10420 (list!18997 (right!43152 lt!2089379))))))))

(assert (=> d!1636565 (= lt!2089549 e!3164097)))

(declare-fun c!870696 () Bool)

(assert (=> d!1636565 (= c!870696 ((_ is Nil!58438) (t!371315 (list!18997 (left!42822 lt!2089379)))))))

(assert (=> d!1636565 (= (++!12793 (t!371315 (list!18997 (left!42822 lt!2089379))) (list!18997 (right!43152 lt!2089379))) lt!2089549)))

(declare-fun b!5070946 () Bool)

(assert (=> b!5070946 (= e!3164097 (Cons!58438 (h!64886 (t!371315 (list!18997 (left!42822 lt!2089379)))) (++!12793 (t!371315 (t!371315 (list!18997 (left!42822 lt!2089379)))) (list!18997 (right!43152 lt!2089379)))))))

(assert (= (and d!1636565 c!870696) b!5070945))

(assert (= (and d!1636565 (not c!870696)) b!5070946))

(assert (= (and d!1636565 res!2159055) b!5070947))

(assert (= (and b!5070947 res!2159056) b!5070948))

(declare-fun m!6116806 () Bool)

(assert (=> b!5070947 m!6116806))

(assert (=> b!5070947 m!6115932))

(assert (=> b!5070947 m!6114600))

(assert (=> b!5070947 m!6114790))

(declare-fun m!6116808 () Bool)

(assert (=> d!1636565 m!6116808))

(declare-fun m!6116810 () Bool)

(assert (=> d!1636565 m!6116810))

(assert (=> d!1636565 m!6114600))

(assert (=> d!1636565 m!6114796))

(assert (=> b!5070946 m!6114600))

(declare-fun m!6116812 () Bool)

(assert (=> b!5070946 m!6116812))

(assert (=> b!5069913 d!1636565))

(declare-fun d!1636567 () Bool)

(assert (=> d!1636567 (= (inv!77578 (xs!18924 (left!42822 (right!43152 err!4601)))) (<= (size!39082 (innerList!15656 (xs!18924 (left!42822 (right!43152 err!4601))))) 2147483647))))

(declare-fun bs!1190148 () Bool)

(assert (= bs!1190148 d!1636567))

(declare-fun m!6116814 () Bool)

(assert (=> bs!1190148 m!6116814))

(assert (=> b!5070165 d!1636567))

(declare-fun d!1636569 () Bool)

(declare-fun e!3164099 () Bool)

(assert (=> d!1636569 e!3164099))

(declare-fun c!870697 () Bool)

(assert (=> d!1636569 (= c!870697 ((_ is Nil!58438) (t!371315 (list!18997 xs!286))))))

(assert (=> d!1636569 (= (appendAssoc!303 (t!371315 (list!18997 xs!286)) (list!18997 (left!42822 ys!41)) (list!18997 (right!43152 ys!41))) true)))

(declare-fun bm!353309 () Bool)

(declare-fun call!353314 () List!58562)

(assert (=> bm!353309 (= call!353314 (++!12793 (t!371315 (list!18997 xs!286)) (list!18997 (left!42822 ys!41))))))

(declare-fun bm!353310 () Bool)

(declare-fun call!353315 () List!58562)

(declare-fun call!353316 () List!58562)

(assert (=> bm!353310 (= call!353315 (++!12793 (t!371315 (list!18997 xs!286)) call!353316))))

(declare-fun b!5070949 () Bool)

(declare-fun call!353317 () List!58562)

(assert (=> b!5070949 (= e!3164099 (= call!353317 call!353315))))

(declare-fun lt!2089550 () Bool)

(assert (=> b!5070949 (= lt!2089550 (appendAssoc!303 (t!371315 (t!371315 (list!18997 xs!286))) (list!18997 (left!42822 ys!41)) (list!18997 (right!43152 ys!41))))))

(declare-fun b!5070950 () Bool)

(assert (=> b!5070950 (= e!3164099 (= call!353317 call!353315))))

(declare-fun bm!353311 () Bool)

(assert (=> bm!353311 (= call!353316 (++!12793 (list!18997 (left!42822 ys!41)) (list!18997 (right!43152 ys!41))))))

(declare-fun bm!353312 () Bool)

(assert (=> bm!353312 (= call!353317 (++!12793 call!353314 (list!18997 (right!43152 ys!41))))))

(assert (= (and d!1636569 c!870697) b!5070950))

(assert (= (and d!1636569 (not c!870697)) b!5070949))

(assert (= (or b!5070950 b!5070949) bm!353309))

(assert (= (or b!5070950 b!5070949) bm!353311))

(assert (= (or b!5070950 b!5070949) bm!353310))

(assert (= (or b!5070950 b!5070949) bm!353312))

(assert (=> bm!353311 m!6114530))

(assert (=> bm!353311 m!6114518))

(assert (=> bm!353311 m!6114624))

(assert (=> bm!353309 m!6114530))

(assert (=> bm!353309 m!6116546))

(assert (=> b!5070949 m!6114530))

(assert (=> b!5070949 m!6114518))

(declare-fun m!6116816 () Bool)

(assert (=> b!5070949 m!6116816))

(declare-fun m!6116818 () Bool)

(assert (=> bm!353310 m!6116818))

(assert (=> bm!353312 m!6114518))

(declare-fun m!6116820 () Bool)

(assert (=> bm!353312 m!6116820))

(assert (=> b!5070115 d!1636569))

(declare-fun d!1636571 () Bool)

(assert (=> d!1636571 (= (isEmpty!31640 (list!18997 (left!42822 ys!41))) ((_ is Nil!58438) (list!18997 (left!42822 ys!41))))))

(assert (=> d!1635907 d!1636571))

(assert (=> d!1635907 d!1635903))

(assert (=> d!1635907 d!1636443))

(declare-fun d!1636573 () Bool)

(assert (=> d!1636573 (= (max!0 (height!2145 (left!42822 xs!286)) (height!2145 (right!43152 xs!286))) (ite (< (height!2145 (left!42822 xs!286)) (height!2145 (right!43152 xs!286))) (height!2145 (right!43152 xs!286)) (height!2145 (left!42822 xs!286))))))

(assert (=> b!5070081 d!1636573))

(assert (=> b!5070081 d!1635689))

(assert (=> b!5070081 d!1635691))

(declare-fun d!1636575 () Bool)

(declare-fun lt!2089551 () Bool)

(assert (=> d!1636575 (= lt!2089551 (isEmpty!31640 (list!18997 (right!43152 (left!42822 ys!41)))))))

(assert (=> d!1636575 (= lt!2089551 (= (size!39084 (right!43152 (left!42822 ys!41))) 0))))

(assert (=> d!1636575 (= (isEmpty!31638 (right!43152 (left!42822 ys!41))) lt!2089551)))

(declare-fun bs!1190149 () Bool)

(assert (= bs!1190149 d!1636575))

(assert (=> bs!1190149 m!6114516))

(assert (=> bs!1190149 m!6114516))

(declare-fun m!6116822 () Bool)

(assert (=> bs!1190149 m!6116822))

(assert (=> bs!1190149 m!6115174))

(assert (=> b!5070027 d!1636575))

(assert (=> bm!353237 d!1636457))

(declare-fun d!1636577 () Bool)

(assert (=> d!1636577 (= (max!0 (height!2145 (left!42822 err!4601)) (height!2145 (right!43152 err!4601))) (ite (< (height!2145 (left!42822 err!4601)) (height!2145 (right!43152 err!4601))) (height!2145 (right!43152 err!4601)) (height!2145 (left!42822 err!4601))))))

(assert (=> b!5070039 d!1636577))

(declare-fun d!1636579 () Bool)

(assert (=> d!1636579 (= (height!2145 (left!42822 err!4601)) (ite ((_ is Empty!15568) (left!42822 err!4601)) 0 (ite ((_ is Leaf!25857) (left!42822 err!4601)) 1 (cheight!15779 (left!42822 err!4601)))))))

(assert (=> b!5070039 d!1636579))

(declare-fun d!1636581 () Bool)

(assert (=> d!1636581 (= (height!2145 (right!43152 err!4601)) (ite ((_ is Empty!15568) (right!43152 err!4601)) 0 (ite ((_ is Leaf!25857) (right!43152 err!4601)) 1 (cheight!15779 (right!43152 err!4601)))))))

(assert (=> b!5070039 d!1636581))

(declare-fun b!5070953 () Bool)

(declare-fun res!2159058 () Bool)

(declare-fun e!3164101 () Bool)

(assert (=> b!5070953 (=> (not res!2159058) (not e!3164101))))

(declare-fun lt!2089552 () List!58562)

(assert (=> b!5070953 (= res!2159058 (= (size!39082 lt!2089552) (+ (size!39082 (list!18997 (left!42822 xs!286))) (size!39082 call!353256))))))

(declare-fun b!5070954 () Bool)

(assert (=> b!5070954 (= e!3164101 (or (not (= call!353256 Nil!58438)) (= lt!2089552 (list!18997 (left!42822 xs!286)))))))

(declare-fun b!5070951 () Bool)

(declare-fun e!3164100 () List!58562)

(assert (=> b!5070951 (= e!3164100 call!353256)))

(declare-fun d!1636583 () Bool)

(assert (=> d!1636583 e!3164101))

(declare-fun res!2159057 () Bool)

(assert (=> d!1636583 (=> (not res!2159057) (not e!3164101))))

(assert (=> d!1636583 (= res!2159057 (= (content!10420 lt!2089552) ((_ map or) (content!10420 (list!18997 (left!42822 xs!286))) (content!10420 call!353256))))))

(assert (=> d!1636583 (= lt!2089552 e!3164100)))

(declare-fun c!870698 () Bool)

(assert (=> d!1636583 (= c!870698 ((_ is Nil!58438) (list!18997 (left!42822 xs!286))))))

(assert (=> d!1636583 (= (++!12793 (list!18997 (left!42822 xs!286)) call!353256) lt!2089552)))

(declare-fun b!5070952 () Bool)

(assert (=> b!5070952 (= e!3164100 (Cons!58438 (h!64886 (list!18997 (left!42822 xs!286))) (++!12793 (t!371315 (list!18997 (left!42822 xs!286))) call!353256)))))

(assert (= (and d!1636583 c!870698) b!5070951))

(assert (= (and d!1636583 (not c!870698)) b!5070952))

(assert (= (and d!1636583 res!2159057) b!5070953))

(assert (= (and b!5070953 res!2159058) b!5070954))

(declare-fun m!6116824 () Bool)

(assert (=> b!5070953 m!6116824))

(assert (=> b!5070953 m!6114534))

(assert (=> b!5070953 m!6114914))

(declare-fun m!6116826 () Bool)

(assert (=> b!5070953 m!6116826))

(declare-fun m!6116828 () Bool)

(assert (=> d!1636583 m!6116828))

(assert (=> d!1636583 m!6114534))

(assert (=> d!1636583 m!6114920))

(declare-fun m!6116830 () Bool)

(assert (=> d!1636583 m!6116830))

(declare-fun m!6116832 () Bool)

(assert (=> b!5070952 m!6116832))

(assert (=> bm!353250 d!1636583))

(declare-fun b!5070957 () Bool)

(declare-fun res!2159060 () Bool)

(declare-fun e!3164103 () Bool)

(assert (=> b!5070957 (=> (not res!2159060) (not e!3164103))))

(declare-fun lt!2089553 () List!58562)

(assert (=> b!5070957 (= res!2159060 (= (size!39082 lt!2089553) (+ (size!39082 (list!18997 (left!42822 (left!42822 lt!2089379)))) (size!39082 (list!18997 (right!43152 (left!42822 lt!2089379)))))))))

(declare-fun b!5070958 () Bool)

(assert (=> b!5070958 (= e!3164103 (or (not (= (list!18997 (right!43152 (left!42822 lt!2089379))) Nil!58438)) (= lt!2089553 (list!18997 (left!42822 (left!42822 lt!2089379))))))))

(declare-fun b!5070955 () Bool)

(declare-fun e!3164102 () List!58562)

(assert (=> b!5070955 (= e!3164102 (list!18997 (right!43152 (left!42822 lt!2089379))))))

(declare-fun d!1636585 () Bool)

(assert (=> d!1636585 e!3164103))

(declare-fun res!2159059 () Bool)

(assert (=> d!1636585 (=> (not res!2159059) (not e!3164103))))

(assert (=> d!1636585 (= res!2159059 (= (content!10420 lt!2089553) ((_ map or) (content!10420 (list!18997 (left!42822 (left!42822 lt!2089379)))) (content!10420 (list!18997 (right!43152 (left!42822 lt!2089379)))))))))

(assert (=> d!1636585 (= lt!2089553 e!3164102)))

(declare-fun c!870699 () Bool)

(assert (=> d!1636585 (= c!870699 ((_ is Nil!58438) (list!18997 (left!42822 (left!42822 lt!2089379)))))))

(assert (=> d!1636585 (= (++!12793 (list!18997 (left!42822 (left!42822 lt!2089379))) (list!18997 (right!43152 (left!42822 lt!2089379)))) lt!2089553)))

(declare-fun b!5070956 () Bool)

(assert (=> b!5070956 (= e!3164102 (Cons!58438 (h!64886 (list!18997 (left!42822 (left!42822 lt!2089379)))) (++!12793 (t!371315 (list!18997 (left!42822 (left!42822 lt!2089379)))) (list!18997 (right!43152 (left!42822 lt!2089379))))))))

(assert (= (and d!1636585 c!870699) b!5070955))

(assert (= (and d!1636585 (not c!870699)) b!5070956))

(assert (= (and d!1636585 res!2159059) b!5070957))

(assert (= (and b!5070957 res!2159060) b!5070958))

(declare-fun m!6116834 () Bool)

(assert (=> b!5070957 m!6116834))

(assert (=> b!5070957 m!6114802))

(declare-fun m!6116836 () Bool)

(assert (=> b!5070957 m!6116836))

(assert (=> b!5070957 m!6114804))

(declare-fun m!6116838 () Bool)

(assert (=> b!5070957 m!6116838))

(declare-fun m!6116840 () Bool)

(assert (=> d!1636585 m!6116840))

(assert (=> d!1636585 m!6114802))

(declare-fun m!6116842 () Bool)

(assert (=> d!1636585 m!6116842))

(assert (=> d!1636585 m!6114804))

(declare-fun m!6116844 () Bool)

(assert (=> d!1636585 m!6116844))

(assert (=> b!5070956 m!6114804))

(declare-fun m!6116846 () Bool)

(assert (=> b!5070956 m!6116846))

(assert (=> b!5069919 d!1636585))

(declare-fun b!5070961 () Bool)

(declare-fun e!3164105 () List!58562)

(assert (=> b!5070961 (= e!3164105 (list!18999 (xs!18924 (left!42822 (left!42822 lt!2089379)))))))

(declare-fun d!1636587 () Bool)

(declare-fun c!870700 () Bool)

(assert (=> d!1636587 (= c!870700 ((_ is Empty!15568) (left!42822 (left!42822 lt!2089379))))))

(declare-fun e!3164104 () List!58562)

(assert (=> d!1636587 (= (list!18997 (left!42822 (left!42822 lt!2089379))) e!3164104)))

(declare-fun b!5070960 () Bool)

(assert (=> b!5070960 (= e!3164104 e!3164105)))

(declare-fun c!870701 () Bool)

(assert (=> b!5070960 (= c!870701 ((_ is Leaf!25857) (left!42822 (left!42822 lt!2089379))))))

(declare-fun b!5070959 () Bool)

(assert (=> b!5070959 (= e!3164104 Nil!58438)))

(declare-fun b!5070962 () Bool)

(assert (=> b!5070962 (= e!3164105 (++!12793 (list!18997 (left!42822 (left!42822 (left!42822 lt!2089379)))) (list!18997 (right!43152 (left!42822 (left!42822 lt!2089379))))))))

(assert (= (and d!1636587 c!870700) b!5070959))

(assert (= (and d!1636587 (not c!870700)) b!5070960))

(assert (= (and b!5070960 c!870701) b!5070961))

(assert (= (and b!5070960 (not c!870701)) b!5070962))

(declare-fun m!6116848 () Bool)

(assert (=> b!5070961 m!6116848))

(declare-fun m!6116850 () Bool)

(assert (=> b!5070962 m!6116850))

(declare-fun m!6116852 () Bool)

(assert (=> b!5070962 m!6116852))

(assert (=> b!5070962 m!6116850))

(assert (=> b!5070962 m!6116852))

(declare-fun m!6116854 () Bool)

(assert (=> b!5070962 m!6116854))

(assert (=> b!5069919 d!1636587))

(declare-fun b!5070965 () Bool)

(declare-fun e!3164107 () List!58562)

(assert (=> b!5070965 (= e!3164107 (list!18999 (xs!18924 (right!43152 (left!42822 lt!2089379)))))))

(declare-fun d!1636589 () Bool)

(declare-fun c!870702 () Bool)

(assert (=> d!1636589 (= c!870702 ((_ is Empty!15568) (right!43152 (left!42822 lt!2089379))))))

(declare-fun e!3164106 () List!58562)

(assert (=> d!1636589 (= (list!18997 (right!43152 (left!42822 lt!2089379))) e!3164106)))

(declare-fun b!5070964 () Bool)

(assert (=> b!5070964 (= e!3164106 e!3164107)))

(declare-fun c!870703 () Bool)

(assert (=> b!5070964 (= c!870703 ((_ is Leaf!25857) (right!43152 (left!42822 lt!2089379))))))

(declare-fun b!5070963 () Bool)

(assert (=> b!5070963 (= e!3164106 Nil!58438)))

(declare-fun b!5070966 () Bool)

(assert (=> b!5070966 (= e!3164107 (++!12793 (list!18997 (left!42822 (right!43152 (left!42822 lt!2089379)))) (list!18997 (right!43152 (right!43152 (left!42822 lt!2089379))))))))

(assert (= (and d!1636589 c!870702) b!5070963))

(assert (= (and d!1636589 (not c!870702)) b!5070964))

(assert (= (and b!5070964 c!870703) b!5070965))

(assert (= (and b!5070964 (not c!870703)) b!5070966))

(declare-fun m!6116856 () Bool)

(assert (=> b!5070965 m!6116856))

(declare-fun m!6116858 () Bool)

(assert (=> b!5070966 m!6116858))

(declare-fun m!6116860 () Bool)

(assert (=> b!5070966 m!6116860))

(assert (=> b!5070966 m!6116858))

(assert (=> b!5070966 m!6116860))

(declare-fun m!6116862 () Bool)

(assert (=> b!5070966 m!6116862))

(assert (=> b!5069919 d!1636589))

(declare-fun d!1636591 () Bool)

(declare-fun lt!2089554 () Bool)

(assert (=> d!1636591 (= lt!2089554 (isEmpty!31640 (list!18997 (left!42822 (left!42822 xs!286)))))))

(assert (=> d!1636591 (= lt!2089554 (= (size!39084 (left!42822 (left!42822 xs!286))) 0))))

(assert (=> d!1636591 (= (isEmpty!31638 (left!42822 (left!42822 xs!286))) lt!2089554)))

(declare-fun bs!1190150 () Bool)

(assert (= bs!1190150 d!1636591))

(assert (=> bs!1190150 m!6114928))

(assert (=> bs!1190150 m!6114928))

(declare-fun m!6116864 () Bool)

(assert (=> bs!1190150 m!6116864))

(assert (=> bs!1190150 m!6114816))

(assert (=> b!5070046 d!1636591))

(declare-fun d!1636593 () Bool)

(declare-fun c!870704 () Bool)

(assert (=> d!1636593 (= c!870704 ((_ is Nil!58438) lt!2089390))))

(declare-fun e!3164108 () (InoxSet T!105146))

(assert (=> d!1636593 (= (content!10420 lt!2089390) e!3164108)))

(declare-fun b!5070967 () Bool)

(assert (=> b!5070967 (= e!3164108 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070968 () Bool)

(assert (=> b!5070968 (= e!3164108 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 lt!2089390) true) (content!10420 (t!371315 lt!2089390))))))

(assert (= (and d!1636593 c!870704) b!5070967))

(assert (= (and d!1636593 (not c!870704)) b!5070968))

(declare-fun m!6116866 () Bool)

(assert (=> b!5070968 m!6116866))

(declare-fun m!6116868 () Bool)

(assert (=> b!5070968 m!6116868))

(assert (=> d!1635751 d!1636593))

(declare-fun d!1636595 () Bool)

(declare-fun c!870705 () Bool)

(assert (=> d!1636595 (= c!870705 ((_ is Nil!58438) (list!18997 (left!42822 lt!2089379))))))

(declare-fun e!3164109 () (InoxSet T!105146))

(assert (=> d!1636595 (= (content!10420 (list!18997 (left!42822 lt!2089379))) e!3164109)))

(declare-fun b!5070969 () Bool)

(assert (=> b!5070969 (= e!3164109 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070970 () Bool)

(assert (=> b!5070970 (= e!3164109 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 (list!18997 (left!42822 lt!2089379))) true) (content!10420 (t!371315 (list!18997 (left!42822 lt!2089379))))))))

(assert (= (and d!1636595 c!870705) b!5070969))

(assert (= (and d!1636595 (not c!870705)) b!5070970))

(declare-fun m!6116870 () Bool)

(assert (=> b!5070970 m!6116870))

(assert (=> b!5070970 m!6116810))

(assert (=> d!1635751 d!1636595))

(declare-fun d!1636597 () Bool)

(declare-fun c!870706 () Bool)

(assert (=> d!1636597 (= c!870706 ((_ is Nil!58438) (list!18997 (right!43152 lt!2089379))))))

(declare-fun e!3164110 () (InoxSet T!105146))

(assert (=> d!1636597 (= (content!10420 (list!18997 (right!43152 lt!2089379))) e!3164110)))

(declare-fun b!5070971 () Bool)

(assert (=> b!5070971 (= e!3164110 ((as const (Array T!105146 Bool)) false))))

(declare-fun b!5070972 () Bool)

(assert (=> b!5070972 (= e!3164110 ((_ map or) (store ((as const (Array T!105146 Bool)) false) (h!64886 (list!18997 (right!43152 lt!2089379))) true) (content!10420 (t!371315 (list!18997 (right!43152 lt!2089379))))))))

(assert (= (and d!1636597 c!870706) b!5070971))

(assert (= (and d!1636597 (not c!870706)) b!5070972))

(declare-fun m!6116872 () Bool)

(assert (=> b!5070972 m!6116872))

(declare-fun m!6116874 () Bool)

(assert (=> b!5070972 m!6116874))

(assert (=> d!1635751 d!1636597))

(declare-fun d!1636599 () Bool)

(declare-fun lt!2089555 () Bool)

(assert (=> d!1636599 (= lt!2089555 (isEmpty!31640 (list!18997 (left!42822 (right!43152 xs!286)))))))

(assert (=> d!1636599 (= lt!2089555 (= (size!39084 (left!42822 (right!43152 xs!286))) 0))))

(assert (=> d!1636599 (= (isEmpty!31638 (left!42822 (right!43152 xs!286))) lt!2089555)))

(declare-fun bs!1190151 () Bool)

(assert (= bs!1190151 d!1636599))

(assert (=> bs!1190151 m!6114522))

(assert (=> bs!1190151 m!6114522))

(declare-fun m!6116876 () Bool)

(assert (=> bs!1190151 m!6116876))

(assert (=> bs!1190151 m!6115072))

(assert (=> b!5070063 d!1636599))

(declare-fun d!1636601 () Bool)

(declare-fun lt!2089556 () Int)

(assert (=> d!1636601 (>= lt!2089556 0)))

(declare-fun e!3164111 () Int)

(assert (=> d!1636601 (= lt!2089556 e!3164111)))

(declare-fun c!870707 () Bool)

(assert (=> d!1636601 (= c!870707 ((_ is Nil!58438) lt!2089415))))

(assert (=> d!1636601 (= (size!39082 lt!2089415) lt!2089556)))

(declare-fun b!5070973 () Bool)

(assert (=> b!5070973 (= e!3164111 0)))

(declare-fun b!5070974 () Bool)

(assert (=> b!5070974 (= e!3164111 (+ 1 (size!39082 (t!371315 lt!2089415))))))

(assert (= (and d!1636601 c!870707) b!5070973))

(assert (= (and d!1636601 (not c!870707)) b!5070974))

(declare-fun m!6116878 () Bool)

(assert (=> b!5070974 m!6116878))

(assert (=> b!5070123 d!1636601))

(declare-fun d!1636603 () Bool)

(declare-fun lt!2089557 () Int)

(assert (=> d!1636603 (>= lt!2089557 0)))

(declare-fun e!3164112 () Int)

(assert (=> d!1636603 (= lt!2089557 e!3164112)))

(declare-fun c!870708 () Bool)

(assert (=> d!1636603 (= c!870708 ((_ is Nil!58438) (list!18997 (left!42822 ys!41))))))

(assert (=> d!1636603 (= (size!39082 (list!18997 (left!42822 ys!41))) lt!2089557)))

(declare-fun b!5070975 () Bool)

(assert (=> b!5070975 (= e!3164112 0)))

(declare-fun b!5070976 () Bool)

(assert (=> b!5070976 (= e!3164112 (+ 1 (size!39082 (t!371315 (list!18997 (left!42822 ys!41))))))))

(assert (= (and d!1636603 c!870708) b!5070975))

(assert (= (and d!1636603 (not c!870708)) b!5070976))

(assert (=> b!5070976 m!6116768))

(assert (=> b!5070123 d!1636603))

(declare-fun d!1636605 () Bool)

(declare-fun lt!2089558 () Int)

(assert (=> d!1636605 (>= lt!2089558 0)))

(declare-fun e!3164113 () Int)

(assert (=> d!1636605 (= lt!2089558 e!3164113)))

(declare-fun c!870709 () Bool)

(assert (=> d!1636605 (= c!870709 ((_ is Nil!58438) (list!18997 (right!43152 ys!41))))))

(assert (=> d!1636605 (= (size!39082 (list!18997 (right!43152 ys!41))) lt!2089558)))

(declare-fun b!5070977 () Bool)

(assert (=> b!5070977 (= e!3164113 0)))

(declare-fun b!5070978 () Bool)

(assert (=> b!5070978 (= e!3164113 (+ 1 (size!39082 (t!371315 (list!18997 (right!43152 ys!41))))))))

(assert (= (and d!1636605 c!870709) b!5070977))

(assert (= (and d!1636605 (not c!870709)) b!5070978))

(declare-fun m!6116880 () Bool)

(assert (=> b!5070978 m!6116880))

(assert (=> b!5070123 d!1636605))

(assert (=> b!5069850 d!1635913))

(assert (=> b!5069850 d!1635915))

(assert (=> d!1635799 d!1636365))

(assert (=> d!1635799 d!1636267))

(declare-fun d!1636607 () Bool)

(declare-fun res!2159061 () Bool)

(declare-fun e!3164114 () Bool)

(assert (=> d!1636607 (=> (not res!2159061) (not e!3164114))))

(assert (=> d!1636607 (= res!2159061 (= (csize!31366 (right!43152 (right!43152 err!4601))) (+ (size!39084 (left!42822 (right!43152 (right!43152 err!4601)))) (size!39084 (right!43152 (right!43152 (right!43152 err!4601)))))))))

(assert (=> d!1636607 (= (inv!77580 (right!43152 (right!43152 err!4601))) e!3164114)))

(declare-fun b!5070979 () Bool)

(declare-fun res!2159062 () Bool)

(assert (=> b!5070979 (=> (not res!2159062) (not e!3164114))))

(assert (=> b!5070979 (= res!2159062 (and (not (= (left!42822 (right!43152 (right!43152 err!4601))) Empty!15568)) (not (= (right!43152 (right!43152 (right!43152 err!4601))) Empty!15568))))))

(declare-fun b!5070980 () Bool)

(declare-fun res!2159063 () Bool)

(assert (=> b!5070980 (=> (not res!2159063) (not e!3164114))))

(assert (=> b!5070980 (= res!2159063 (= (cheight!15779 (right!43152 (right!43152 err!4601))) (+ (max!0 (height!2145 (left!42822 (right!43152 (right!43152 err!4601)))) (height!2145 (right!43152 (right!43152 (right!43152 err!4601))))) 1)))))

(declare-fun b!5070981 () Bool)

(assert (=> b!5070981 (= e!3164114 (<= 0 (cheight!15779 (right!43152 (right!43152 err!4601)))))))

(assert (= (and d!1636607 res!2159061) b!5070979))

(assert (= (and b!5070979 res!2159062) b!5070980))

(assert (= (and b!5070980 res!2159063) b!5070981))

(declare-fun m!6116882 () Bool)

(assert (=> d!1636607 m!6116882))

(declare-fun m!6116884 () Bool)

(assert (=> d!1636607 m!6116884))

(declare-fun m!6116886 () Bool)

(assert (=> b!5070980 m!6116886))

(declare-fun m!6116888 () Bool)

(assert (=> b!5070980 m!6116888))

(assert (=> b!5070980 m!6116886))

(assert (=> b!5070980 m!6116888))

(declare-fun m!6116890 () Bool)

(assert (=> b!5070980 m!6116890))

(assert (=> b!5070086 d!1636607))

(declare-fun b!5070982 () Bool)

(declare-fun e!3164115 () Bool)

(declare-fun tp!1415424 () Bool)

(assert (=> b!5070982 (= e!3164115 (and tp_is_empty!37057 tp!1415424))))

(assert (=> b!5070154 (= tp!1415349 e!3164115)))

(assert (= (and b!5070154 ((_ is Cons!58438) (t!371315 (innerList!15656 (xs!18924 (right!43152 err!4601)))))) b!5070982))

(declare-fun tp!1415426 () Bool)

(declare-fun b!5070983 () Bool)

(declare-fun tp!1415427 () Bool)

(declare-fun e!3164117 () Bool)

(assert (=> b!5070983 (= e!3164117 (and (inv!77577 (left!42822 (left!42822 (right!43152 (left!42822 ys!41))))) tp!1415427 (inv!77577 (right!43152 (left!42822 (right!43152 (left!42822 ys!41))))) tp!1415426))))

(declare-fun b!5070985 () Bool)

(declare-fun e!3164116 () Bool)

(declare-fun tp!1415425 () Bool)

(assert (=> b!5070985 (= e!3164116 tp!1415425)))

(declare-fun b!5070984 () Bool)

(assert (=> b!5070984 (= e!3164117 (and (inv!77578 (xs!18924 (left!42822 (right!43152 (left!42822 ys!41))))) e!3164116))))

(assert (=> b!5070173 (= tp!1415370 (and (inv!77577 (left!42822 (right!43152 (left!42822 ys!41)))) e!3164117))))

(assert (= (and b!5070173 ((_ is Node!15568) (left!42822 (right!43152 (left!42822 ys!41))))) b!5070983))

(assert (= b!5070984 b!5070985))

(assert (= (and b!5070173 ((_ is Leaf!25857) (left!42822 (right!43152 (left!42822 ys!41))))) b!5070984))

(declare-fun m!6116892 () Bool)

(assert (=> b!5070983 m!6116892))

(declare-fun m!6116894 () Bool)

(assert (=> b!5070983 m!6116894))

(declare-fun m!6116896 () Bool)

(assert (=> b!5070984 m!6116896))

(assert (=> b!5070173 m!6115278))

(declare-fun tp!1415429 () Bool)

(declare-fun tp!1415430 () Bool)

(declare-fun e!3164119 () Bool)

(declare-fun b!5070986 () Bool)

(assert (=> b!5070986 (= e!3164119 (and (inv!77577 (left!42822 (right!43152 (right!43152 (left!42822 ys!41))))) tp!1415430 (inv!77577 (right!43152 (right!43152 (right!43152 (left!42822 ys!41))))) tp!1415429))))

(declare-fun b!5070988 () Bool)

(declare-fun e!3164118 () Bool)

(declare-fun tp!1415428 () Bool)

(assert (=> b!5070988 (= e!3164118 tp!1415428)))

(declare-fun b!5070987 () Bool)

(assert (=> b!5070987 (= e!3164119 (and (inv!77578 (xs!18924 (right!43152 (right!43152 (left!42822 ys!41))))) e!3164118))))

(assert (=> b!5070173 (= tp!1415369 (and (inv!77577 (right!43152 (right!43152 (left!42822 ys!41)))) e!3164119))))

(assert (= (and b!5070173 ((_ is Node!15568) (right!43152 (right!43152 (left!42822 ys!41))))) b!5070986))

(assert (= b!5070987 b!5070988))

(assert (= (and b!5070173 ((_ is Leaf!25857) (right!43152 (right!43152 (left!42822 ys!41))))) b!5070987))

(declare-fun m!6116898 () Bool)

(assert (=> b!5070986 m!6116898))

(declare-fun m!6116900 () Bool)

(assert (=> b!5070986 m!6116900))

(declare-fun m!6116902 () Bool)

(assert (=> b!5070987 m!6116902))

(assert (=> b!5070173 m!6115280))

(declare-fun b!5070989 () Bool)

(declare-fun e!3164120 () Bool)

(declare-fun tp!1415431 () Bool)

(assert (=> b!5070989 (= e!3164120 (and tp_is_empty!37057 tp!1415431))))

(assert (=> b!5070160 (= tp!1415353 e!3164120)))

(assert (= (and b!5070160 ((_ is Cons!58438) (innerList!15656 (xs!18924 (right!43152 (left!42822 xs!286)))))) b!5070989))

(declare-fun tp!1415433 () Bool)

(declare-fun tp!1415434 () Bool)

(declare-fun e!3164122 () Bool)

(declare-fun b!5070990 () Bool)

(assert (=> b!5070990 (= e!3164122 (and (inv!77577 (left!42822 (left!42822 (left!42822 (right!43152 err!4601))))) tp!1415434 (inv!77577 (right!43152 (left!42822 (left!42822 (right!43152 err!4601))))) tp!1415433))))

(declare-fun b!5070992 () Bool)

(declare-fun e!3164121 () Bool)

(declare-fun tp!1415432 () Bool)

(assert (=> b!5070992 (= e!3164121 tp!1415432)))

(declare-fun b!5070991 () Bool)

(assert (=> b!5070991 (= e!3164122 (and (inv!77578 (xs!18924 (left!42822 (left!42822 (right!43152 err!4601))))) e!3164121))))

(assert (=> b!5070164 (= tp!1415361 (and (inv!77577 (left!42822 (left!42822 (right!43152 err!4601)))) e!3164122))))

(assert (= (and b!5070164 ((_ is Node!15568) (left!42822 (left!42822 (right!43152 err!4601))))) b!5070990))

(assert (= b!5070991 b!5070992))

(assert (= (and b!5070164 ((_ is Leaf!25857) (left!42822 (left!42822 (right!43152 err!4601))))) b!5070991))

(declare-fun m!6116904 () Bool)

(assert (=> b!5070990 m!6116904))

(declare-fun m!6116906 () Bool)

(assert (=> b!5070990 m!6116906))

(declare-fun m!6116908 () Bool)

(assert (=> b!5070991 m!6116908))

(assert (=> b!5070164 m!6115260))

(declare-fun e!3164124 () Bool)

(declare-fun tp!1415437 () Bool)

(declare-fun b!5070993 () Bool)

(declare-fun tp!1415436 () Bool)

(assert (=> b!5070993 (= e!3164124 (and (inv!77577 (left!42822 (right!43152 (left!42822 (right!43152 err!4601))))) tp!1415437 (inv!77577 (right!43152 (right!43152 (left!42822 (right!43152 err!4601))))) tp!1415436))))

(declare-fun b!5070995 () Bool)

(declare-fun e!3164123 () Bool)

(declare-fun tp!1415435 () Bool)

(assert (=> b!5070995 (= e!3164123 tp!1415435)))

(declare-fun b!5070994 () Bool)

(assert (=> b!5070994 (= e!3164124 (and (inv!77578 (xs!18924 (right!43152 (left!42822 (right!43152 err!4601))))) e!3164123))))

(assert (=> b!5070164 (= tp!1415360 (and (inv!77577 (right!43152 (left!42822 (right!43152 err!4601)))) e!3164124))))

(assert (= (and b!5070164 ((_ is Node!15568) (right!43152 (left!42822 (right!43152 err!4601))))) b!5070993))

(assert (= b!5070994 b!5070995))

(assert (= (and b!5070164 ((_ is Leaf!25857) (right!43152 (left!42822 (right!43152 err!4601))))) b!5070994))

(declare-fun m!6116910 () Bool)

(assert (=> b!5070993 m!6116910))

(declare-fun m!6116912 () Bool)

(assert (=> b!5070993 m!6116912))

(declare-fun m!6116914 () Bool)

(assert (=> b!5070994 m!6116914))

(assert (=> b!5070164 m!6115262))

(declare-fun b!5070996 () Bool)

(declare-fun tp!1415439 () Bool)

(declare-fun tp!1415440 () Bool)

(declare-fun e!3164126 () Bool)

(assert (=> b!5070996 (= e!3164126 (and (inv!77577 (left!42822 (left!42822 (right!43152 (left!42822 xs!286))))) tp!1415440 (inv!77577 (right!43152 (left!42822 (right!43152 (left!42822 xs!286))))) tp!1415439))))

(declare-fun b!5070998 () Bool)

(declare-fun e!3164125 () Bool)

(declare-fun tp!1415438 () Bool)

(assert (=> b!5070998 (= e!3164125 tp!1415438)))

(declare-fun b!5070997 () Bool)

(assert (=> b!5070997 (= e!3164126 (and (inv!77578 (xs!18924 (left!42822 (right!43152 (left!42822 xs!286))))) e!3164125))))

(assert (=> b!5070158 (= tp!1415355 (and (inv!77577 (left!42822 (right!43152 (left!42822 xs!286)))) e!3164126))))

(assert (= (and b!5070158 ((_ is Node!15568) (left!42822 (right!43152 (left!42822 xs!286))))) b!5070996))

(assert (= b!5070997 b!5070998))

(assert (= (and b!5070158 ((_ is Leaf!25857) (left!42822 (right!43152 (left!42822 xs!286))))) b!5070997))

(declare-fun m!6116916 () Bool)

(assert (=> b!5070996 m!6116916))

(declare-fun m!6116918 () Bool)

(assert (=> b!5070996 m!6116918))

(declare-fun m!6116920 () Bool)

(assert (=> b!5070997 m!6116920))

(assert (=> b!5070158 m!6115254))

(declare-fun tp!1415442 () Bool)

(declare-fun tp!1415443 () Bool)

(declare-fun e!3164128 () Bool)

(declare-fun b!5070999 () Bool)

(assert (=> b!5070999 (= e!3164128 (and (inv!77577 (left!42822 (right!43152 (right!43152 (left!42822 xs!286))))) tp!1415443 (inv!77577 (right!43152 (right!43152 (right!43152 (left!42822 xs!286))))) tp!1415442))))

(declare-fun b!5071001 () Bool)

(declare-fun e!3164127 () Bool)

(declare-fun tp!1415441 () Bool)

(assert (=> b!5071001 (= e!3164127 tp!1415441)))

(declare-fun b!5071000 () Bool)

(assert (=> b!5071000 (= e!3164128 (and (inv!77578 (xs!18924 (right!43152 (right!43152 (left!42822 xs!286))))) e!3164127))))

(assert (=> b!5070158 (= tp!1415354 (and (inv!77577 (right!43152 (right!43152 (left!42822 xs!286)))) e!3164128))))

(assert (= (and b!5070158 ((_ is Node!15568) (right!43152 (right!43152 (left!42822 xs!286))))) b!5070999))

(assert (= b!5071000 b!5071001))

(assert (= (and b!5070158 ((_ is Leaf!25857) (right!43152 (right!43152 (left!42822 xs!286))))) b!5071000))

(declare-fun m!6116922 () Bool)

(assert (=> b!5070999 m!6116922))

(declare-fun m!6116924 () Bool)

(assert (=> b!5070999 m!6116924))

(declare-fun m!6116926 () Bool)

(assert (=> b!5071000 m!6116926))

(assert (=> b!5070158 m!6115256))

(declare-fun b!5071002 () Bool)

(declare-fun e!3164129 () Bool)

(declare-fun tp!1415444 () Bool)

(assert (=> b!5071002 (= e!3164129 (and tp_is_empty!37057 tp!1415444))))

(assert (=> b!5070150 (= tp!1415343 e!3164129)))

(assert (= (and b!5070150 ((_ is Cons!58438) (innerList!15656 (xs!18924 (left!42822 (right!43152 ys!41)))))) b!5071002))

(declare-fun b!5071003 () Bool)

(declare-fun e!3164130 () Bool)

(declare-fun tp!1415445 () Bool)

(assert (=> b!5071003 (= e!3164130 (and tp_is_empty!37057 tp!1415445))))

(assert (=> b!5070183 (= tp!1415378 e!3164130)))

(assert (= (and b!5070183 ((_ is Cons!58438) (t!371315 (t!371315 (innerList!15656 (xs!18924 ys!41)))))) b!5071003))

(declare-fun b!5071004 () Bool)

(declare-fun e!3164131 () Bool)

(declare-fun tp!1415446 () Bool)

(assert (=> b!5071004 (= e!3164131 (and tp_is_empty!37057 tp!1415446))))

(assert (=> b!5070139 (= tp!1415334 e!3164131)))

(assert (= (and b!5070139 ((_ is Cons!58438) (t!371315 (innerList!15656 (xs!18924 (right!43152 xs!286)))))) b!5071004))

(declare-fun b!5071005 () Bool)

(declare-fun e!3164132 () Bool)

(declare-fun tp!1415447 () Bool)

(assert (=> b!5071005 (= e!3164132 (and tp_is_empty!37057 tp!1415447))))

(assert (=> b!5070179 (= tp!1415372 e!3164132)))

(assert (= (and b!5070179 ((_ is Cons!58438) (innerList!15656 (xs!18924 (left!42822 (left!42822 err!4601)))))) b!5071005))

(declare-fun e!3164134 () Bool)

(declare-fun tp!1415449 () Bool)

(declare-fun b!5071006 () Bool)

(declare-fun tp!1415450 () Bool)

(assert (=> b!5071006 (= e!3164134 (and (inv!77577 (left!42822 (left!42822 (left!42822 (right!43152 ys!41))))) tp!1415450 (inv!77577 (right!43152 (left!42822 (left!42822 (right!43152 ys!41))))) tp!1415449))))

(declare-fun b!5071008 () Bool)

(declare-fun e!3164133 () Bool)

(declare-fun tp!1415448 () Bool)

(assert (=> b!5071008 (= e!3164133 tp!1415448)))

(declare-fun b!5071007 () Bool)

(assert (=> b!5071007 (= e!3164134 (and (inv!77578 (xs!18924 (left!42822 (left!42822 (right!43152 ys!41))))) e!3164133))))

(assert (=> b!5070148 (= tp!1415345 (and (inv!77577 (left!42822 (left!42822 (right!43152 ys!41)))) e!3164134))))

(assert (= (and b!5070148 ((_ is Node!15568) (left!42822 (left!42822 (right!43152 ys!41))))) b!5071006))

(assert (= b!5071007 b!5071008))

(assert (= (and b!5070148 ((_ is Leaf!25857) (left!42822 (left!42822 (right!43152 ys!41))))) b!5071007))

(declare-fun m!6116928 () Bool)

(assert (=> b!5071006 m!6116928))

(declare-fun m!6116930 () Bool)

(assert (=> b!5071006 m!6116930))

(declare-fun m!6116932 () Bool)

(assert (=> b!5071007 m!6116932))

(assert (=> b!5070148 m!6115236))

(declare-fun b!5071009 () Bool)

(declare-fun tp!1415452 () Bool)

(declare-fun e!3164136 () Bool)

(declare-fun tp!1415453 () Bool)

(assert (=> b!5071009 (= e!3164136 (and (inv!77577 (left!42822 (right!43152 (left!42822 (right!43152 ys!41))))) tp!1415453 (inv!77577 (right!43152 (right!43152 (left!42822 (right!43152 ys!41))))) tp!1415452))))

(declare-fun b!5071011 () Bool)

(declare-fun e!3164135 () Bool)

(declare-fun tp!1415451 () Bool)

(assert (=> b!5071011 (= e!3164135 tp!1415451)))

(declare-fun b!5071010 () Bool)

(assert (=> b!5071010 (= e!3164136 (and (inv!77578 (xs!18924 (right!43152 (left!42822 (right!43152 ys!41))))) e!3164135))))

(assert (=> b!5070148 (= tp!1415344 (and (inv!77577 (right!43152 (left!42822 (right!43152 ys!41)))) e!3164136))))

(assert (= (and b!5070148 ((_ is Node!15568) (right!43152 (left!42822 (right!43152 ys!41))))) b!5071009))

(assert (= b!5071010 b!5071011))

(assert (= (and b!5070148 ((_ is Leaf!25857) (right!43152 (left!42822 (right!43152 ys!41))))) b!5071010))

(declare-fun m!6116934 () Bool)

(assert (=> b!5071009 m!6116934))

(declare-fun m!6116936 () Bool)

(assert (=> b!5071009 m!6116936))

(declare-fun m!6116938 () Bool)

(assert (=> b!5071010 m!6116938))

(assert (=> b!5070148 m!6115238))

(declare-fun b!5071012 () Bool)

(declare-fun e!3164137 () Bool)

(declare-fun tp!1415454 () Bool)

(assert (=> b!5071012 (= e!3164137 (and tp_is_empty!37057 tp!1415454))))

(assert (=> b!5070141 (= tp!1415336 e!3164137)))

(assert (= (and b!5070141 ((_ is Cons!58438) (t!371315 (innerList!15656 (xs!18924 (left!42822 xs!286)))))) b!5071012))

(declare-fun tp!1415457 () Bool)

(declare-fun tp!1415456 () Bool)

(declare-fun e!3164139 () Bool)

(declare-fun b!5071013 () Bool)

(assert (=> b!5071013 (= e!3164139 (and (inv!77577 (left!42822 (left!42822 (left!42822 (left!42822 xs!286))))) tp!1415457 (inv!77577 (right!43152 (left!42822 (left!42822 (left!42822 xs!286))))) tp!1415456))))

(declare-fun b!5071015 () Bool)

(declare-fun e!3164138 () Bool)

(declare-fun tp!1415455 () Bool)

(assert (=> b!5071015 (= e!3164138 tp!1415455)))

(declare-fun b!5071014 () Bool)

(assert (=> b!5071014 (= e!3164139 (and (inv!77578 (xs!18924 (left!42822 (left!42822 (left!42822 xs!286))))) e!3164138))))

(assert (=> b!5070155 (= tp!1415352 (and (inv!77577 (left!42822 (left!42822 (left!42822 xs!286)))) e!3164139))))

(assert (= (and b!5070155 ((_ is Node!15568) (left!42822 (left!42822 (left!42822 xs!286))))) b!5071013))

(assert (= b!5071014 b!5071015))

(assert (= (and b!5070155 ((_ is Leaf!25857) (left!42822 (left!42822 (left!42822 xs!286))))) b!5071014))

(declare-fun m!6116940 () Bool)

(assert (=> b!5071013 m!6116940))

(declare-fun m!6116942 () Bool)

(assert (=> b!5071013 m!6116942))

(declare-fun m!6116944 () Bool)

(assert (=> b!5071014 m!6116944))

(assert (=> b!5070155 m!6115248))

(declare-fun tp!1415459 () Bool)

(declare-fun e!3164141 () Bool)

(declare-fun tp!1415460 () Bool)

(declare-fun b!5071016 () Bool)

(assert (=> b!5071016 (= e!3164141 (and (inv!77577 (left!42822 (right!43152 (left!42822 (left!42822 xs!286))))) tp!1415460 (inv!77577 (right!43152 (right!43152 (left!42822 (left!42822 xs!286))))) tp!1415459))))

(declare-fun b!5071018 () Bool)

(declare-fun e!3164140 () Bool)

(declare-fun tp!1415458 () Bool)

(assert (=> b!5071018 (= e!3164140 tp!1415458)))

(declare-fun b!5071017 () Bool)

(assert (=> b!5071017 (= e!3164141 (and (inv!77578 (xs!18924 (right!43152 (left!42822 (left!42822 xs!286))))) e!3164140))))

(assert (=> b!5070155 (= tp!1415351 (and (inv!77577 (right!43152 (left!42822 (left!42822 xs!286)))) e!3164141))))

(assert (= (and b!5070155 ((_ is Node!15568) (right!43152 (left!42822 (left!42822 xs!286))))) b!5071016))

(assert (= b!5071017 b!5071018))

(assert (= (and b!5070155 ((_ is Leaf!25857) (right!43152 (left!42822 (left!42822 xs!286))))) b!5071017))

(declare-fun m!6116946 () Bool)

(assert (=> b!5071016 m!6116946))

(declare-fun m!6116948 () Bool)

(assert (=> b!5071016 m!6116948))

(declare-fun m!6116950 () Bool)

(assert (=> b!5071017 m!6116950))

(assert (=> b!5070155 m!6115250))

(declare-fun b!5071019 () Bool)

(declare-fun e!3164142 () Bool)

(declare-fun tp!1415461 () Bool)

(assert (=> b!5071019 (= e!3164142 (and tp_is_empty!37057 tp!1415461))))

(assert (=> b!5070147 (= tp!1415340 e!3164142)))

(assert (= (and b!5070147 ((_ is Cons!58438) (innerList!15656 (xs!18924 (right!43152 (right!43152 xs!286)))))) b!5071019))

(declare-fun tp!1415463 () Bool)

(declare-fun e!3164144 () Bool)

(declare-fun b!5071020 () Bool)

(declare-fun tp!1415464 () Bool)

(assert (=> b!5071020 (= e!3164144 (and (inv!77577 (left!42822 (left!42822 (right!43152 (right!43152 xs!286))))) tp!1415464 (inv!77577 (right!43152 (left!42822 (right!43152 (right!43152 xs!286))))) tp!1415463))))

(declare-fun b!5071022 () Bool)

(declare-fun e!3164143 () Bool)

(declare-fun tp!1415462 () Bool)

(assert (=> b!5071022 (= e!3164143 tp!1415462)))

(declare-fun b!5071021 () Bool)

(assert (=> b!5071021 (= e!3164144 (and (inv!77578 (xs!18924 (left!42822 (right!43152 (right!43152 xs!286))))) e!3164143))))

(assert (=> b!5070145 (= tp!1415342 (and (inv!77577 (left!42822 (right!43152 (right!43152 xs!286)))) e!3164144))))

(assert (= (and b!5070145 ((_ is Node!15568) (left!42822 (right!43152 (right!43152 xs!286))))) b!5071020))

(assert (= b!5071021 b!5071022))

(assert (= (and b!5070145 ((_ is Leaf!25857) (left!42822 (right!43152 (right!43152 xs!286))))) b!5071021))

(declare-fun m!6116952 () Bool)

(assert (=> b!5071020 m!6116952))

(declare-fun m!6116954 () Bool)

(assert (=> b!5071020 m!6116954))

(declare-fun m!6116956 () Bool)

(assert (=> b!5071021 m!6116956))

(assert (=> b!5070145 m!6115230))

(declare-fun tp!1415466 () Bool)

(declare-fun tp!1415467 () Bool)

(declare-fun b!5071023 () Bool)

(declare-fun e!3164146 () Bool)

(assert (=> b!5071023 (= e!3164146 (and (inv!77577 (left!42822 (right!43152 (right!43152 (right!43152 xs!286))))) tp!1415467 (inv!77577 (right!43152 (right!43152 (right!43152 (right!43152 xs!286))))) tp!1415466))))

(declare-fun b!5071025 () Bool)

(declare-fun e!3164145 () Bool)

(declare-fun tp!1415465 () Bool)

(assert (=> b!5071025 (= e!3164145 tp!1415465)))

(declare-fun b!5071024 () Bool)

(assert (=> b!5071024 (= e!3164146 (and (inv!77578 (xs!18924 (right!43152 (right!43152 (right!43152 xs!286))))) e!3164145))))

(assert (=> b!5070145 (= tp!1415341 (and (inv!77577 (right!43152 (right!43152 (right!43152 xs!286)))) e!3164146))))

(assert (= (and b!5070145 ((_ is Node!15568) (right!43152 (right!43152 (right!43152 xs!286))))) b!5071023))

(assert (= b!5071024 b!5071025))

(assert (= (and b!5070145 ((_ is Leaf!25857) (right!43152 (right!43152 (right!43152 xs!286))))) b!5071024))

(declare-fun m!6116958 () Bool)

(assert (=> b!5071023 m!6116958))

(declare-fun m!6116960 () Bool)

(assert (=> b!5071023 m!6116960))

(declare-fun m!6116962 () Bool)

(assert (=> b!5071024 m!6116962))

(assert (=> b!5070145 m!6115232))

(declare-fun b!5071026 () Bool)

(declare-fun e!3164147 () Bool)

(declare-fun tp!1415468 () Bool)

(assert (=> b!5071026 (= e!3164147 (and tp_is_empty!37057 tp!1415468))))

(assert (=> b!5070166 (= tp!1415359 e!3164147)))

(assert (= (and b!5070166 ((_ is Cons!58438) (innerList!15656 (xs!18924 (left!42822 (right!43152 err!4601)))))) b!5071026))

(declare-fun b!5071027 () Bool)

(declare-fun e!3164148 () Bool)

(declare-fun tp!1415469 () Bool)

(assert (=> b!5071027 (= e!3164148 (and tp_is_empty!37057 tp!1415469))))

(assert (=> b!5070140 (= tp!1415335 e!3164148)))

(assert (= (and b!5070140 ((_ is Cons!58438) (t!371315 (innerList!15656 (xs!18924 (right!43152 ys!41)))))) b!5071027))

(declare-fun b!5071028 () Bool)

(declare-fun e!3164149 () Bool)

(declare-fun tp!1415470 () Bool)

(assert (=> b!5071028 (= e!3164149 (and tp_is_empty!37057 tp!1415470))))

(assert (=> b!5070175 (= tp!1415368 e!3164149)))

(assert (= (and b!5070175 ((_ is Cons!58438) (innerList!15656 (xs!18924 (right!43152 (left!42822 ys!41)))))) b!5071028))

(declare-fun b!5071029 () Bool)

(declare-fun e!3164150 () Bool)

(declare-fun tp!1415471 () Bool)

(assert (=> b!5071029 (= e!3164150 (and tp_is_empty!37057 tp!1415471))))

(assert (=> b!5070176 (= tp!1415371 e!3164150)))

(assert (= (and b!5070176 ((_ is Cons!58438) (t!371315 (innerList!15656 (xs!18924 (left!42822 err!4601)))))) b!5071029))

(declare-fun e!3164152 () Bool)

(declare-fun b!5071030 () Bool)

(declare-fun tp!1415473 () Bool)

(declare-fun tp!1415474 () Bool)

(assert (=> b!5071030 (= e!3164152 (and (inv!77577 (left!42822 (left!42822 (right!43152 (right!43152 ys!41))))) tp!1415474 (inv!77577 (right!43152 (left!42822 (right!43152 (right!43152 ys!41))))) tp!1415473))))

(declare-fun b!5071032 () Bool)

(declare-fun e!3164151 () Bool)

(declare-fun tp!1415472 () Bool)

(assert (=> b!5071032 (= e!3164151 tp!1415472)))

(declare-fun b!5071031 () Bool)

(assert (=> b!5071031 (= e!3164152 (and (inv!77578 (xs!18924 (left!42822 (right!43152 (right!43152 ys!41))))) e!3164151))))

(assert (=> b!5070151 (= tp!1415348 (and (inv!77577 (left!42822 (right!43152 (right!43152 ys!41)))) e!3164152))))

(assert (= (and b!5070151 ((_ is Node!15568) (left!42822 (right!43152 (right!43152 ys!41))))) b!5071030))

(assert (= b!5071031 b!5071032))

(assert (= (and b!5070151 ((_ is Leaf!25857) (left!42822 (right!43152 (right!43152 ys!41))))) b!5071031))

(declare-fun m!6116964 () Bool)

(assert (=> b!5071030 m!6116964))

(declare-fun m!6116966 () Bool)

(assert (=> b!5071030 m!6116966))

(declare-fun m!6116968 () Bool)

(assert (=> b!5071031 m!6116968))

(assert (=> b!5070151 m!6115242))

(declare-fun tp!1415476 () Bool)

(declare-fun b!5071033 () Bool)

(declare-fun e!3164154 () Bool)

(declare-fun tp!1415477 () Bool)

(assert (=> b!5071033 (= e!3164154 (and (inv!77577 (left!42822 (right!43152 (right!43152 (right!43152 ys!41))))) tp!1415477 (inv!77577 (right!43152 (right!43152 (right!43152 (right!43152 ys!41))))) tp!1415476))))

(declare-fun b!5071035 () Bool)

(declare-fun e!3164153 () Bool)

(declare-fun tp!1415475 () Bool)

(assert (=> b!5071035 (= e!3164153 tp!1415475)))

(declare-fun b!5071034 () Bool)

(assert (=> b!5071034 (= e!3164154 (and (inv!77578 (xs!18924 (right!43152 (right!43152 (right!43152 ys!41))))) e!3164153))))

(assert (=> b!5070151 (= tp!1415347 (and (inv!77577 (right!43152 (right!43152 (right!43152 ys!41)))) e!3164154))))

(assert (= (and b!5070151 ((_ is Node!15568) (right!43152 (right!43152 (right!43152 ys!41))))) b!5071033))

(assert (= b!5071034 b!5071035))

(assert (= (and b!5070151 ((_ is Leaf!25857) (right!43152 (right!43152 (right!43152 ys!41))))) b!5071034))

(declare-fun m!6116970 () Bool)

(assert (=> b!5071033 m!6116970))

(declare-fun m!6116972 () Bool)

(assert (=> b!5071033 m!6116972))

(declare-fun m!6116974 () Bool)

(assert (=> b!5071034 m!6116974))

(assert (=> b!5070151 m!6115244))

(declare-fun b!5071036 () Bool)

(declare-fun e!3164155 () Bool)

(declare-fun tp!1415478 () Bool)

(assert (=> b!5071036 (= e!3164155 (and tp_is_empty!37057 tp!1415478))))

(assert (=> b!5070182 (= tp!1415375 e!3164155)))

(assert (= (and b!5070182 ((_ is Cons!58438) (innerList!15656 (xs!18924 (right!43152 (left!42822 err!4601)))))) b!5071036))

(declare-fun tp!1415481 () Bool)

(declare-fun tp!1415480 () Bool)

(declare-fun b!5071037 () Bool)

(declare-fun e!3164157 () Bool)

(assert (=> b!5071037 (= e!3164157 (and (inv!77577 (left!42822 (left!42822 (left!42822 (right!43152 xs!286))))) tp!1415481 (inv!77577 (right!43152 (left!42822 (left!42822 (right!43152 xs!286))))) tp!1415480))))

(declare-fun b!5071039 () Bool)

(declare-fun e!3164156 () Bool)

(declare-fun tp!1415479 () Bool)

(assert (=> b!5071039 (= e!3164156 tp!1415479)))

(declare-fun b!5071038 () Bool)

(assert (=> b!5071038 (= e!3164157 (and (inv!77578 (xs!18924 (left!42822 (left!42822 (right!43152 xs!286))))) e!3164156))))

(assert (=> b!5070142 (= tp!1415339 (and (inv!77577 (left!42822 (left!42822 (right!43152 xs!286)))) e!3164157))))

(assert (= (and b!5070142 ((_ is Node!15568) (left!42822 (left!42822 (right!43152 xs!286))))) b!5071037))

(assert (= b!5071038 b!5071039))

(assert (= (and b!5070142 ((_ is Leaf!25857) (left!42822 (left!42822 (right!43152 xs!286))))) b!5071038))

(declare-fun m!6116976 () Bool)

(assert (=> b!5071037 m!6116976))

(declare-fun m!6116978 () Bool)

(assert (=> b!5071037 m!6116978))

(declare-fun m!6116980 () Bool)

(assert (=> b!5071038 m!6116980))

(assert (=> b!5070142 m!6115224))

(declare-fun e!3164159 () Bool)

(declare-fun tp!1415483 () Bool)

(declare-fun b!5071040 () Bool)

(declare-fun tp!1415484 () Bool)

(assert (=> b!5071040 (= e!3164159 (and (inv!77577 (left!42822 (right!43152 (left!42822 (right!43152 xs!286))))) tp!1415484 (inv!77577 (right!43152 (right!43152 (left!42822 (right!43152 xs!286))))) tp!1415483))))

(declare-fun b!5071042 () Bool)

(declare-fun e!3164158 () Bool)

(declare-fun tp!1415482 () Bool)

(assert (=> b!5071042 (= e!3164158 tp!1415482)))

(declare-fun b!5071041 () Bool)

(assert (=> b!5071041 (= e!3164159 (and (inv!77578 (xs!18924 (right!43152 (left!42822 (right!43152 xs!286))))) e!3164158))))

(assert (=> b!5070142 (= tp!1415338 (and (inv!77577 (right!43152 (left!42822 (right!43152 xs!286)))) e!3164159))))

(assert (= (and b!5070142 ((_ is Node!15568) (right!43152 (left!42822 (right!43152 xs!286))))) b!5071040))

(assert (= b!5071041 b!5071042))

(assert (= (and b!5070142 ((_ is Leaf!25857) (right!43152 (left!42822 (right!43152 xs!286))))) b!5071041))

(declare-fun m!6116982 () Bool)

(assert (=> b!5071040 m!6116982))

(declare-fun m!6116984 () Bool)

(assert (=> b!5071040 m!6116984))

(declare-fun m!6116986 () Bool)

(assert (=> b!5071041 m!6116986))

(assert (=> b!5070142 m!6115226))

(declare-fun b!5071043 () Bool)

(declare-fun e!3164161 () Bool)

(declare-fun tp!1415486 () Bool)

(declare-fun tp!1415487 () Bool)

(assert (=> b!5071043 (= e!3164161 (and (inv!77577 (left!42822 (left!42822 (right!43152 (left!42822 err!4601))))) tp!1415487 (inv!77577 (right!43152 (left!42822 (right!43152 (left!42822 err!4601))))) tp!1415486))))

(declare-fun b!5071045 () Bool)

(declare-fun e!3164160 () Bool)

(declare-fun tp!1415485 () Bool)

(assert (=> b!5071045 (= e!3164160 tp!1415485)))

(declare-fun b!5071044 () Bool)

(assert (=> b!5071044 (= e!3164161 (and (inv!77578 (xs!18924 (left!42822 (right!43152 (left!42822 err!4601))))) e!3164160))))

(assert (=> b!5070180 (= tp!1415377 (and (inv!77577 (left!42822 (right!43152 (left!42822 err!4601)))) e!3164161))))

(assert (= (and b!5070180 ((_ is Node!15568) (left!42822 (right!43152 (left!42822 err!4601))))) b!5071043))

(assert (= b!5071044 b!5071045))

(assert (= (and b!5070180 ((_ is Leaf!25857) (left!42822 (right!43152 (left!42822 err!4601))))) b!5071044))

(declare-fun m!6116988 () Bool)

(assert (=> b!5071043 m!6116988))

(declare-fun m!6116990 () Bool)

(assert (=> b!5071043 m!6116990))

(declare-fun m!6116992 () Bool)

(assert (=> b!5071044 m!6116992))

(assert (=> b!5070180 m!6115290))

(declare-fun e!3164163 () Bool)

(declare-fun b!5071046 () Bool)

(declare-fun tp!1415490 () Bool)

(declare-fun tp!1415489 () Bool)

(assert (=> b!5071046 (= e!3164163 (and (inv!77577 (left!42822 (right!43152 (right!43152 (left!42822 err!4601))))) tp!1415490 (inv!77577 (right!43152 (right!43152 (right!43152 (left!42822 err!4601))))) tp!1415489))))

(declare-fun b!5071048 () Bool)

(declare-fun e!3164162 () Bool)

(declare-fun tp!1415488 () Bool)

(assert (=> b!5071048 (= e!3164162 tp!1415488)))

(declare-fun b!5071047 () Bool)

(assert (=> b!5071047 (= e!3164163 (and (inv!77578 (xs!18924 (right!43152 (right!43152 (left!42822 err!4601))))) e!3164162))))

(assert (=> b!5070180 (= tp!1415376 (and (inv!77577 (right!43152 (right!43152 (left!42822 err!4601)))) e!3164163))))

(assert (= (and b!5070180 ((_ is Node!15568) (right!43152 (right!43152 (left!42822 err!4601))))) b!5071046))

(assert (= b!5071047 b!5071048))

(assert (= (and b!5070180 ((_ is Leaf!25857) (right!43152 (right!43152 (left!42822 err!4601))))) b!5071047))

(declare-fun m!6116994 () Bool)

(assert (=> b!5071046 m!6116994))

(declare-fun m!6116996 () Bool)

(assert (=> b!5071046 m!6116996))

(declare-fun m!6116998 () Bool)

(assert (=> b!5071047 m!6116998))

(assert (=> b!5070180 m!6115292))

(declare-fun b!5071049 () Bool)

(declare-fun e!3164164 () Bool)

(declare-fun tp!1415491 () Bool)

(assert (=> b!5071049 (= e!3164164 (and tp_is_empty!37057 tp!1415491))))

(assert (=> b!5070172 (= tp!1415365 e!3164164)))

(assert (= (and b!5070172 ((_ is Cons!58438) (innerList!15656 (xs!18924 (left!42822 (left!42822 ys!41)))))) b!5071049))

(declare-fun b!5071050 () Bool)

(declare-fun e!3164165 () Bool)

(declare-fun tp!1415492 () Bool)

(assert (=> b!5071050 (= e!3164165 (and tp_is_empty!37057 tp!1415492))))

(assert (=> b!5070161 (= tp!1415356 e!3164165)))

(assert (= (and b!5070161 ((_ is Cons!58438) (t!371315 (innerList!15656 (xs!18924 (left!42822 ys!41)))))) b!5071050))

(declare-fun b!5071051 () Bool)

(declare-fun e!3164166 () Bool)

(declare-fun tp!1415493 () Bool)

(assert (=> b!5071051 (= e!3164166 (and tp_is_empty!37057 tp!1415493))))

(assert (=> b!5070157 (= tp!1415350 e!3164166)))

(assert (= (and b!5070157 ((_ is Cons!58438) (innerList!15656 (xs!18924 (left!42822 (left!42822 xs!286)))))) b!5071051))

(declare-fun tp!1415496 () Bool)

(declare-fun e!3164168 () Bool)

(declare-fun tp!1415495 () Bool)

(declare-fun b!5071052 () Bool)

(assert (=> b!5071052 (= e!3164168 (and (inv!77577 (left!42822 (left!42822 (left!42822 (left!42822 ys!41))))) tp!1415496 (inv!77577 (right!43152 (left!42822 (left!42822 (left!42822 ys!41))))) tp!1415495))))

(declare-fun b!5071054 () Bool)

(declare-fun e!3164167 () Bool)

(declare-fun tp!1415494 () Bool)

(assert (=> b!5071054 (= e!3164167 tp!1415494)))

(declare-fun b!5071053 () Bool)

(assert (=> b!5071053 (= e!3164168 (and (inv!77578 (xs!18924 (left!42822 (left!42822 (left!42822 ys!41))))) e!3164167))))

(assert (=> b!5070170 (= tp!1415367 (and (inv!77577 (left!42822 (left!42822 (left!42822 ys!41)))) e!3164168))))

(assert (= (and b!5070170 ((_ is Node!15568) (left!42822 (left!42822 (left!42822 ys!41))))) b!5071052))

(assert (= b!5071053 b!5071054))

(assert (= (and b!5070170 ((_ is Leaf!25857) (left!42822 (left!42822 (left!42822 ys!41))))) b!5071053))

(declare-fun m!6117000 () Bool)

(assert (=> b!5071052 m!6117000))

(declare-fun m!6117002 () Bool)

(assert (=> b!5071052 m!6117002))

(declare-fun m!6117004 () Bool)

(assert (=> b!5071053 m!6117004))

(assert (=> b!5070170 m!6115272))

(declare-fun tp!1415498 () Bool)

(declare-fun e!3164170 () Bool)

(declare-fun b!5071055 () Bool)

(declare-fun tp!1415499 () Bool)

(assert (=> b!5071055 (= e!3164170 (and (inv!77577 (left!42822 (right!43152 (left!42822 (left!42822 ys!41))))) tp!1415499 (inv!77577 (right!43152 (right!43152 (left!42822 (left!42822 ys!41))))) tp!1415498))))

(declare-fun b!5071057 () Bool)

(declare-fun e!3164169 () Bool)

(declare-fun tp!1415497 () Bool)

(assert (=> b!5071057 (= e!3164169 tp!1415497)))

(declare-fun b!5071056 () Bool)

(assert (=> b!5071056 (= e!3164170 (and (inv!77578 (xs!18924 (right!43152 (left!42822 (left!42822 ys!41))))) e!3164169))))

(assert (=> b!5070170 (= tp!1415366 (and (inv!77577 (right!43152 (left!42822 (left!42822 ys!41)))) e!3164170))))

(assert (= (and b!5070170 ((_ is Node!15568) (right!43152 (left!42822 (left!42822 ys!41))))) b!5071055))

(assert (= b!5071056 b!5071057))

(assert (= (and b!5070170 ((_ is Leaf!25857) (right!43152 (left!42822 (left!42822 ys!41))))) b!5071056))

(declare-fun m!6117006 () Bool)

(assert (=> b!5071055 m!6117006))

(declare-fun m!6117008 () Bool)

(assert (=> b!5071055 m!6117008))

(declare-fun m!6117010 () Bool)

(assert (=> b!5071056 m!6117010))

(assert (=> b!5070170 m!6115274))

(declare-fun b!5071058 () Bool)

(declare-fun e!3164171 () Bool)

(declare-fun tp!1415500 () Bool)

(assert (=> b!5071058 (= e!3164171 (and tp_is_empty!37057 tp!1415500))))

(assert (=> b!5070163 (= tp!1415358 e!3164171)))

(assert (= (and b!5070163 ((_ is Cons!58438) (t!371315 (t!371315 (innerList!15656 (xs!18924 err!4601)))))) b!5071058))

(declare-fun b!5071059 () Bool)

(declare-fun tp!1415502 () Bool)

(declare-fun tp!1415503 () Bool)

(declare-fun e!3164173 () Bool)

(assert (=> b!5071059 (= e!3164173 (and (inv!77577 (left!42822 (left!42822 (left!42822 (left!42822 err!4601))))) tp!1415503 (inv!77577 (right!43152 (left!42822 (left!42822 (left!42822 err!4601))))) tp!1415502))))

(declare-fun b!5071061 () Bool)

(declare-fun e!3164172 () Bool)

(declare-fun tp!1415501 () Bool)

(assert (=> b!5071061 (= e!3164172 tp!1415501)))

(declare-fun b!5071060 () Bool)

(assert (=> b!5071060 (= e!3164173 (and (inv!77578 (xs!18924 (left!42822 (left!42822 (left!42822 err!4601))))) e!3164172))))

(assert (=> b!5070177 (= tp!1415374 (and (inv!77577 (left!42822 (left!42822 (left!42822 err!4601)))) e!3164173))))

(assert (= (and b!5070177 ((_ is Node!15568) (left!42822 (left!42822 (left!42822 err!4601))))) b!5071059))

(assert (= b!5071060 b!5071061))

(assert (= (and b!5070177 ((_ is Leaf!25857) (left!42822 (left!42822 (left!42822 err!4601))))) b!5071060))

(declare-fun m!6117012 () Bool)

(assert (=> b!5071059 m!6117012))

(declare-fun m!6117014 () Bool)

(assert (=> b!5071059 m!6117014))

(declare-fun m!6117016 () Bool)

(assert (=> b!5071060 m!6117016))

(assert (=> b!5070177 m!6115284))

(declare-fun tp!1415506 () Bool)

(declare-fun tp!1415505 () Bool)

(declare-fun b!5071062 () Bool)

(declare-fun e!3164175 () Bool)

(assert (=> b!5071062 (= e!3164175 (and (inv!77577 (left!42822 (right!43152 (left!42822 (left!42822 err!4601))))) tp!1415506 (inv!77577 (right!43152 (right!43152 (left!42822 (left!42822 err!4601))))) tp!1415505))))

(declare-fun b!5071064 () Bool)

(declare-fun e!3164174 () Bool)

(declare-fun tp!1415504 () Bool)

(assert (=> b!5071064 (= e!3164174 tp!1415504)))

(declare-fun b!5071063 () Bool)

(assert (=> b!5071063 (= e!3164175 (and (inv!77578 (xs!18924 (right!43152 (left!42822 (left!42822 err!4601))))) e!3164174))))

(assert (=> b!5070177 (= tp!1415373 (and (inv!77577 (right!43152 (left!42822 (left!42822 err!4601)))) e!3164175))))

(assert (= (and b!5070177 ((_ is Node!15568) (right!43152 (left!42822 (left!42822 err!4601))))) b!5071062))

(assert (= b!5071063 b!5071064))

(assert (= (and b!5070177 ((_ is Leaf!25857) (right!43152 (left!42822 (left!42822 err!4601))))) b!5071063))

(declare-fun m!6117018 () Bool)

(assert (=> b!5071062 m!6117018))

(declare-fun m!6117020 () Bool)

(assert (=> b!5071062 m!6117020))

(declare-fun m!6117022 () Bool)

(assert (=> b!5071063 m!6117022))

(assert (=> b!5070177 m!6115286))

(declare-fun b!5071065 () Bool)

(declare-fun e!3164176 () Bool)

(declare-fun tp!1415507 () Bool)

(assert (=> b!5071065 (= e!3164176 (and tp_is_empty!37057 tp!1415507))))

(assert (=> b!5070169 (= tp!1415362 e!3164176)))

(assert (= (and b!5070169 ((_ is Cons!58438) (innerList!15656 (xs!18924 (right!43152 (right!43152 err!4601)))))) b!5071065))

(declare-fun b!5071066 () Bool)

(declare-fun e!3164178 () Bool)

(declare-fun tp!1415509 () Bool)

(declare-fun tp!1415510 () Bool)

(assert (=> b!5071066 (= e!3164178 (and (inv!77577 (left!42822 (left!42822 (right!43152 (right!43152 err!4601))))) tp!1415510 (inv!77577 (right!43152 (left!42822 (right!43152 (right!43152 err!4601))))) tp!1415509))))

(declare-fun b!5071068 () Bool)

(declare-fun e!3164177 () Bool)

(declare-fun tp!1415508 () Bool)

(assert (=> b!5071068 (= e!3164177 tp!1415508)))

(declare-fun b!5071067 () Bool)

(assert (=> b!5071067 (= e!3164178 (and (inv!77578 (xs!18924 (left!42822 (right!43152 (right!43152 err!4601))))) e!3164177))))

(assert (=> b!5070167 (= tp!1415364 (and (inv!77577 (left!42822 (right!43152 (right!43152 err!4601)))) e!3164178))))

(assert (= (and b!5070167 ((_ is Node!15568) (left!42822 (right!43152 (right!43152 err!4601))))) b!5071066))

(assert (= b!5071067 b!5071068))

(assert (= (and b!5070167 ((_ is Leaf!25857) (left!42822 (right!43152 (right!43152 err!4601))))) b!5071067))

(declare-fun m!6117024 () Bool)

(assert (=> b!5071066 m!6117024))

(declare-fun m!6117026 () Bool)

(assert (=> b!5071066 m!6117026))

(declare-fun m!6117028 () Bool)

(assert (=> b!5071067 m!6117028))

(assert (=> b!5070167 m!6115266))

(declare-fun tp!1415513 () Bool)

(declare-fun tp!1415512 () Bool)

(declare-fun b!5071069 () Bool)

(declare-fun e!3164180 () Bool)

(assert (=> b!5071069 (= e!3164180 (and (inv!77577 (left!42822 (right!43152 (right!43152 (right!43152 err!4601))))) tp!1415513 (inv!77577 (right!43152 (right!43152 (right!43152 (right!43152 err!4601))))) tp!1415512))))

(declare-fun b!5071071 () Bool)

(declare-fun e!3164179 () Bool)

(declare-fun tp!1415511 () Bool)

(assert (=> b!5071071 (= e!3164179 tp!1415511)))

(declare-fun b!5071070 () Bool)

(assert (=> b!5071070 (= e!3164180 (and (inv!77578 (xs!18924 (right!43152 (right!43152 (right!43152 err!4601))))) e!3164179))))

(assert (=> b!5070167 (= tp!1415363 (and (inv!77577 (right!43152 (right!43152 (right!43152 err!4601)))) e!3164180))))

(assert (= (and b!5070167 ((_ is Node!15568) (right!43152 (right!43152 (right!43152 err!4601))))) b!5071069))

(assert (= b!5071070 b!5071071))

(assert (= (and b!5070167 ((_ is Leaf!25857) (right!43152 (right!43152 (right!43152 err!4601))))) b!5071070))

(declare-fun m!6117030 () Bool)

(assert (=> b!5071069 m!6117030))

(declare-fun m!6117032 () Bool)

(assert (=> b!5071069 m!6117032))

(declare-fun m!6117034 () Bool)

(assert (=> b!5071070 m!6117034))

(assert (=> b!5070167 m!6115268))

(declare-fun b!5071072 () Bool)

(declare-fun e!3164181 () Bool)

(declare-fun tp!1415514 () Bool)

(assert (=> b!5071072 (= e!3164181 (and tp_is_empty!37057 tp!1415514))))

(assert (=> b!5070144 (= tp!1415337 e!3164181)))

(assert (= (and b!5070144 ((_ is Cons!58438) (innerList!15656 (xs!18924 (left!42822 (right!43152 xs!286)))))) b!5071072))

(declare-fun b!5071073 () Bool)

(declare-fun e!3164182 () Bool)

(declare-fun tp!1415515 () Bool)

(assert (=> b!5071073 (= e!3164182 (and tp_is_empty!37057 tp!1415515))))

(assert (=> b!5070162 (= tp!1415357 e!3164182)))

(assert (= (and b!5070162 ((_ is Cons!58438) (t!371315 (t!371315 (innerList!15656 (xs!18924 xs!286)))))) b!5071073))

(declare-fun b!5071074 () Bool)

(declare-fun e!3164183 () Bool)

(declare-fun tp!1415516 () Bool)

(assert (=> b!5071074 (= e!3164183 (and tp_is_empty!37057 tp!1415516))))

(assert (=> b!5070153 (= tp!1415346 e!3164183)))

(assert (= (and b!5070153 ((_ is Cons!58438) (innerList!15656 (xs!18924 (right!43152 (right!43152 ys!41)))))) b!5071074))

(check-sat (not b!5070798) (not b!5070690) (not b!5070497) (not b!5070518) (not b!5070965) (not bm!353306) (not b!5070683) (not b!5070875) (not b!5070552) (not b!5070593) (not d!1636563) (not b!5070858) (not b!5070662) (not b!5070818) (not d!1636247) (not d!1636155) (not b!5070961) (not b!5070852) (not b!5071000) (not b!5070831) (not d!1636115) (not b!5070911) (not d!1636197) (not b!5070532) (not d!1636599) (not b!5070597) (not d!1636357) (not b!5070500) (not b!5070974) (not b!5070738) (not d!1636539) (not b!5070559) (not b!5071065) (not b!5070827) (not b!5070689) (not b!5070571) (not b!5070466) (not d!1636373) (not b!5070606) (not b!5070934) (not b!5070475) (not b!5070628) (not b!5070496) (not b!5071047) (not b!5070854) (not d!1636305) (not b!5070488) (not d!1636413) (not b!5070782) (not d!1636515) (not b!5070665) (not b!5070492) (not b!5071071) (not b!5070789) (not b!5071061) (not d!1636177) (not b!5070557) (not d!1636231) (not b!5071072) (not b!5070893) (not b!5070649) (not b!5070608) (not bm!353302) (not b!5071028) (not b!5070790) (not b!5071018) (not b!5070758) (not b!5071025) (not b!5070915) (not b!5070873) (not bm!353295) (not d!1636149) (not d!1636263) (not b!5070549) (not b!5070994) (not b!5070675) (not b!5071015) (not b!5070889) (not b!5070722) (not b!5070610) (not b!5070531) (not b!5070841) (not b!5071023) (not b!5070562) (not b!5070605) (not b!5070880) (not d!1636323) (not d!1636439) (not b!5070566) (not b!5070465) (not b!5070940) (not b!5070920) (not b!5071011) (not d!1636545) (not b!5070180) (not b!5070503) (not b!5070158) (not b!5070632) (not bm!353298) (not b!5070524) (not b!5070509) (not d!1636551) (not b!5070544) (not b!5070968) (not b!5071017) (not b!5071013) (not b!5071014) (not b!5070677) (not b!5070844) (not b!5070883) (not d!1636249) (not b!5070516) (not b!5070774) (not d!1636543) (not b!5071021) (not b!5070635) (not b!5070802) (not b!5070755) (not b!5070548) (not b!5070151) (not b!5070878) (not b!5070611) (not d!1636283) (not d!1636415) (not b!5070729) (not d!1636383) (not b!5070993) (not b!5070470) (not b!5070663) (not b!5071016) (not b!5070812) (not b!5070957) (not b!5070925) (not b!5070901) (not b!5070512) (not b!5070902) (not b!5070763) (not d!1636433) (not d!1636541) (not b!5070596) (not b!5070617) (not b!5071005) (not b!5070607) (not b!5070699) (not b!5070511) (not b!5070886) (not d!1636457) (not b!5070894) (not b!5070999) (not b!5071037) (not b!5071009) (not bm!353293) (not b!5070673) (not b!5070987) (not d!1636417) (not b!5070749) (not b!5070900) (not b!5070992) (not b!5070868) (not d!1636449) (not b!5071001) (not b!5070603) (not d!1636113) (not d!1636259) (not b!5070620) (not b!5070472) (not b!5070679) (not b!5070887) (not b!5070997) (not d!1636261) (not b!5071050) (not d!1636299) (not b!5070830) (not b!5070872) (not b!5070660) (not b!5070765) (not b!5070585) (not b!5070741) (not b!5070946) (not b!5071039) (not b!5070473) (not b!5070794) (not b!5071062) (not d!1636575) (not b!5070522) (not b!5070642) (not b!5070505) (not b!5070469) (not b!5070481) (not b!5070976) (not b!5070826) (not d!1636093) (not b!5070752) (not d!1636441) (not b!5070837) (not b!5071046) (not b!5070600) (not b!5071058) (not b!5071066) (not bm!353296) (not b!5071068) (not b!5070706) (not d!1636351) (not b!5070499) (not b!5070484) (not b!5070890) (not d!1636381) (not d!1636519) (not b!5071004) (not b!5070850) (not d!1636237) (not b!5070938) (not b!5070483) (not b!5070933) (not b!5070464) (not b!5071020) (not b!5070534) (not b!5071022) (not b!5070627) (not b!5070643) (not b!5070962) (not b!5070177) (not b!5070822) (not b!5070838) (not b!5071006) (not b!5070936) (not d!1636435) (not b!5070493) (not b!5071052) (not d!1636367) (not d!1636445) (not d!1636303) (not b!5070942) (not d!1636493) (not d!1636265) (not b!5070507) (not d!1636161) (not b!5070995) (not d!1636419) (not b!5071073) (not b!5070881) (not b!5070847) (not d!1636395) (not b!5070921) (not b!5070766) (not b!5071060) (not b!5070896) (not b!5070578) (not b!5070779) (not b!5070537) (not bm!353303) (not b!5070985) (not b!5070720) (not b!5070787) (not b!5070813) (not d!1636459) (not d!1636529) (not b!5070682) (not b!5070724) (not b!5070815) (not d!1636583) (not d!1636255) (not d!1636497) (not b!5070956) (not b!5070630) (not b!5070501) (not b!5070478) (not b!5070949) (not bm!353291) (not b!5070978) (not b!5070717) (not b!5070908) (not b!5070891) (not b!5071007) (not d!1636345) (not bm!353312) (not b!5070980) (not bm!353308) (not d!1636333) (not b!5071048) (not d!1636443) (not b!5070929) (not b!5070806) (not b!5070583) (not b!5070903) (not b!5070609) (not b!5070845) (not d!1636257) (not b!5070667) (not b!5071040) (not bm!353307) (not b!5071035) (not b!5070840) (not b!5070839) (not b!5070711) (not b!5070570) (not b!5070877) (not bm!353299) (not b!5070739) (not d!1636273) (not d!1636217) (not d!1636189) (not b!5070528) (not b!5071074) (not b!5070685) (not b!5070719) (not b!5070943) (not b!5071054) (not b!5070148) (not b!5070498) (not b!5070145) tp_is_empty!37057 (not bm!353289) (not b!5070695) (not d!1636101) (not b!5070952) (not b!5070551) (not b!5070855) (not b!5070526) (not d!1636243) (not bm!353297) (not b!5070657) (not d!1636499) (not b!5070170) (not d!1636607) (not b!5071030) (not b!5070658) (not b!5071027) (not b!5071057) (not b!5070998) (not b!5070801) (not d!1636447) (not d!1636471) (not b!5070864) (not d!1636513) (not b!5071043) (not b!5070986) (not b!5070909) (not b!5070623) (not b!5071070) (not b!5070899) (not bm!353310) (not b!5070745) (not bm!353311) (not b!5070953) (not bm!353304) (not b!5070833) (not d!1636585) (not b!5071044) (not b!5071063) (not b!5071042) (not b!5070778) (not b!5070477) (not b!5070650) (not b!5071026) (not d!1636591) (not b!5070142) (not b!5070714) (not b!5070581) (not b!5070735) (not b!5070546) (not d!1636201) (not b!5070514) (not b!5070547) (not b!5070622) (not b!5071002) (not b!5070653) (not b!5071067) (not b!5070836) (not b!5070742) (not b!5071003) (not b!5070805) (not b!5070680) (not b!5070725) (not d!1636239) (not b!5071034) (not b!5070931) (not b!5071049) (not b!5070574) (not b!5071031) (not b!5070860) (not d!1636307) (not b!5071069) (not b!5070991) (not b!5070633) (not b!5070851) (not b!5070983) (not d!1636317) (not d!1636375) (not d!1636199) (not bm!353309) (not b!5071032) (not b!5070905) (not b!5070947) (not b!5070767) (not b!5071029) (not b!5070155) (not b!5070989) (not b!5070575) (not bm!353294) (not b!5070687) (not bm!353292) (not d!1636411) (not b!5070810) (not b!5070764) (not d!1636105) (not b!5070577) (not d!1636509) (not b!5070700) (not b!5071045) (not b!5070898) (not b!5070462) (not b!5070966) (not b!5070768) (not bm!353305) (not b!5070467) (not d!1636565) (not b!5070821) (not b!5070705) (not b!5070996) (not b!5070972) (not b!5070793) (not b!5070865) (not d!1636473) (not d!1636289) (not b!5070164) (not b!5070698) (not b!5070935) (not b!5070808) (not b!5070173) (not b!5071053) (not bm!353290) (not b!5070639) (not d!1636151) (not b!5071010) (not b!5070914) (not b!5070565) (not b!5070928) (not b!5070601) (not b!5071055) (not b!5070770) (not b!5070591) (not b!5071008) (not b!5070587) (not bm!353301) (not b!5070884) (not b!5071036) (not d!1636315) (not b!5070555) (not bm!353300) (not b!5070918) (not b!5070536) (not b!5070727) (not b!5070982) (not b!5070932) (not b!5070715) (not b!5070984) (not b!5070751) (not b!5070588) (not b!5071012) (not b!5070988) (not d!1636547) (not b!5070924) (not d!1636233) (not d!1636437) (not b!5070970) (not b!5070694) (not b!5070655) (not b!5070539) (not b!5070167) (not b!5070602) (not d!1636409) (not b!5070646) (not b!5070612) (not b!5070785) (not b!5071051) (not b!5070468) (not b!5070604) (not d!1636225) (not b!5070480) (not b!5070703) (not d!1636207) (not b!5070862) (not b!5070762) (not b!5071056) (not d!1636147) (not b!5070730) (not b!5070990) (not d!1636285) (not b!5070561) (not b!5071064) (not b!5071059) (not b!5070671) (not b!5070710) (not b!5070817) (not b!5070797) (not b!5070614) (not b!5070869) (not d!1636483) (not b!5070502) (not b!5071038) (not b!5070849) (not b!5071033) (not b!5070668) (not b!5070487) (not d!1636397) (not d!1636363) (not d!1636387) (not b!5070618) (not d!1636495) (not b!5071024) (not b!5070912) (not d!1636467) (not b!5070760) (not d!1636567) (not b!5070773) (not b!5070520) (not d!1636301) (not b!5070783) (not b!5070747) (not b!5070541) (not b!5070637) (not b!5070892) (not b!5070545) (not b!5070482) (not b!5070848) (not b!5071041) (not b!5070542) (not d!1636165) (not b!5071019) (not b!5070734) (not b!5070485) (not b!5070835) (not b!5070625))
(check-sat)
