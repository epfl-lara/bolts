; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534950 () Bool)

(assert start!534950)

(declare-datatypes ((T!105090 0))(
  ( (T!105091 (val!23644 Int)) )
))
(declare-datatypes ((List!58554 0))(
  ( (Nil!58430) (Cons!58430 (h!64878 T!105090) (t!371267 List!58554)) )
))
(declare-datatypes ((IArray!31181 0))(
  ( (IArray!31182 (innerList!15648 List!58554)) )
))
(declare-datatypes ((Conc!15560 0))(
  ( (Node!15560 (left!42810 Conc!15560) (right!43140 Conc!15560) (csize!31350 Int) (cheight!15771 Int)) (Leaf!25845 (xs!18904 IArray!31181) (csize!31351 Int)) (Empty!15560) )
))
(declare-fun xs!286 () Conc!15560)

(declare-fun lt!2088314 () Int)

(declare-fun lt!2088315 () Int)

(declare-fun b!5062266 () Bool)

(declare-fun e!3159544 () Bool)

(declare-fun abs!0 (Int) Int)

(declare-fun height!2137 (Conc!15560) Int)

(assert (=> b!5062266 (= e!3159544 (>= (abs!0 (- (height!2137 (right!43140 (right!43140 xs!286))) lt!2088315)) (abs!0 (- lt!2088314 lt!2088315))))))

(declare-fun b!5062267 () Bool)

(declare-fun res!2155498 () Bool)

(declare-fun e!3159539 () Bool)

(assert (=> b!5062267 (=> (not res!2155498) (not e!3159539))))

(declare-fun ys!41 () Conc!15560)

(assert (=> b!5062267 (= res!2155498 (and (not (= xs!286 Empty!15560)) (not (= ys!41 Empty!15560))))))

(declare-fun b!5062268 () Bool)

(declare-fun tp!1414196 () Bool)

(declare-fun e!3159543 () Bool)

(declare-fun tp!1414199 () Bool)

(declare-fun inv!77533 (Conc!15560) Bool)

(assert (=> b!5062268 (= e!3159543 (and (inv!77533 (left!42810 xs!286)) tp!1414196 (inv!77533 (right!43140 xs!286)) tp!1414199))))

(declare-fun b!5062269 () Bool)

(declare-fun e!3159542 () Bool)

(declare-fun tp!1414200 () Bool)

(assert (=> b!5062269 (= e!3159542 tp!1414200)))

(declare-fun b!5062270 () Bool)

(declare-fun inv!77534 (IArray!31181) Bool)

(assert (=> b!5062270 (= e!3159543 (and (inv!77534 (xs!18904 xs!286)) e!3159542))))

(declare-fun b!5062271 () Bool)

(declare-fun e!3159541 () Bool)

(declare-fun tp!1414201 () Bool)

(assert (=> b!5062271 (= e!3159541 tp!1414201)))

(declare-fun b!5062272 () Bool)

(assert (=> b!5062272 (= e!3159539 e!3159544)))

(declare-fun res!2155496 () Bool)

(assert (=> b!5062272 (=> (not res!2155496) (not e!3159544))))

(declare-fun lt!2088313 () Int)

(get-info :version)

(assert (=> b!5062272 (= res!2155496 (and (or (> (- 1) lt!2088313) (> lt!2088313 1)) (< lt!2088313 (- 1)) ((_ is Node!15560) xs!286)))))

(assert (=> b!5062272 (= lt!2088313 (- lt!2088315 lt!2088314))))

(assert (=> b!5062272 (= lt!2088314 (height!2137 xs!286))))

(assert (=> b!5062272 (= lt!2088315 (height!2137 ys!41))))

(declare-fun b!5062273 () Bool)

(declare-fun e!3159540 () Bool)

(assert (=> b!5062273 (= e!3159540 (and (inv!77534 (xs!18904 ys!41)) e!3159541))))

(declare-fun tp!1414198 () Bool)

(declare-fun b!5062274 () Bool)

(declare-fun tp!1414197 () Bool)

(assert (=> b!5062274 (= e!3159540 (and (inv!77533 (left!42810 ys!41)) tp!1414197 (inv!77533 (right!43140 ys!41)) tp!1414198))))

(declare-fun b!5062275 () Bool)

(declare-fun res!2155497 () Bool)

(assert (=> b!5062275 (=> (not res!2155497) (not e!3159544))))

(assert (=> b!5062275 (= res!2155497 ((_ is Node!15560) (right!43140 xs!286)))))

(declare-fun res!2155500 () Bool)

(assert (=> start!534950 (=> (not res!2155500) (not e!3159539))))

(declare-fun isBalanced!4422 (Conc!15560) Bool)

(assert (=> start!534950 (= res!2155500 (isBalanced!4422 xs!286))))

(assert (=> start!534950 e!3159539))

(assert (=> start!534950 (and (inv!77533 xs!286) e!3159543)))

(assert (=> start!534950 (and (inv!77533 ys!41) e!3159540)))

(declare-fun b!5062276 () Bool)

(declare-fun res!2155499 () Bool)

(assert (=> b!5062276 (=> (not res!2155499) (not e!3159544))))

(assert (=> b!5062276 (= res!2155499 (< (height!2137 (left!42810 xs!286)) (height!2137 (right!43140 xs!286))))))

(declare-fun b!5062277 () Bool)

(declare-fun res!2155501 () Bool)

(assert (=> b!5062277 (=> (not res!2155501) (not e!3159539))))

(assert (=> b!5062277 (= res!2155501 (isBalanced!4422 ys!41))))

(assert (= (and start!534950 res!2155500) b!5062277))

(assert (= (and b!5062277 res!2155501) b!5062267))

(assert (= (and b!5062267 res!2155498) b!5062272))

(assert (= (and b!5062272 res!2155496) b!5062276))

(assert (= (and b!5062276 res!2155499) b!5062275))

(assert (= (and b!5062275 res!2155497) b!5062266))

(assert (= (and start!534950 ((_ is Node!15560) xs!286)) b!5062268))

(assert (= b!5062270 b!5062269))

(assert (= (and start!534950 ((_ is Leaf!25845) xs!286)) b!5062270))

(assert (= (and start!534950 ((_ is Node!15560) ys!41)) b!5062274))

(assert (= b!5062273 b!5062271))

(assert (= (and start!534950 ((_ is Leaf!25845) ys!41)) b!5062273))

(declare-fun m!6101520 () Bool)

(assert (=> b!5062266 m!6101520))

(declare-fun m!6101522 () Bool)

(assert (=> b!5062266 m!6101522))

(declare-fun m!6101524 () Bool)

(assert (=> b!5062266 m!6101524))

(declare-fun m!6101526 () Bool)

(assert (=> start!534950 m!6101526))

(declare-fun m!6101528 () Bool)

(assert (=> start!534950 m!6101528))

(declare-fun m!6101530 () Bool)

(assert (=> start!534950 m!6101530))

(declare-fun m!6101532 () Bool)

(assert (=> b!5062268 m!6101532))

(declare-fun m!6101534 () Bool)

(assert (=> b!5062268 m!6101534))

(declare-fun m!6101536 () Bool)

(assert (=> b!5062273 m!6101536))

(declare-fun m!6101538 () Bool)

(assert (=> b!5062277 m!6101538))

(declare-fun m!6101540 () Bool)

(assert (=> b!5062272 m!6101540))

(declare-fun m!6101542 () Bool)

(assert (=> b!5062272 m!6101542))

(declare-fun m!6101544 () Bool)

(assert (=> b!5062274 m!6101544))

(declare-fun m!6101546 () Bool)

(assert (=> b!5062274 m!6101546))

(declare-fun m!6101548 () Bool)

(assert (=> b!5062276 m!6101548))

(declare-fun m!6101550 () Bool)

(assert (=> b!5062276 m!6101550))

(declare-fun m!6101552 () Bool)

(assert (=> b!5062270 m!6101552))

(check-sat (not b!5062273) (not b!5062271) (not b!5062266) (not start!534950) (not b!5062276) (not b!5062269) (not b!5062274) (not b!5062277) (not b!5062272) (not b!5062270) (not b!5062268))
(check-sat)
(get-model)

(declare-fun d!1630957 () Bool)

(assert (=> d!1630957 (= (abs!0 (- (height!2137 (right!43140 (right!43140 xs!286))) lt!2088315)) (ite (<= 0 (- (height!2137 (right!43140 (right!43140 xs!286))) lt!2088315)) (- (height!2137 (right!43140 (right!43140 xs!286))) lt!2088315) (- (- (height!2137 (right!43140 (right!43140 xs!286))) lt!2088315))))))

(assert (=> b!5062266 d!1630957))

(declare-fun d!1630961 () Bool)

(assert (=> d!1630961 (= (height!2137 (right!43140 (right!43140 xs!286))) (ite ((_ is Empty!15560) (right!43140 (right!43140 xs!286))) 0 (ite ((_ is Leaf!25845) (right!43140 (right!43140 xs!286))) 1 (cheight!15771 (right!43140 (right!43140 xs!286))))))))

(assert (=> b!5062266 d!1630961))

(declare-fun d!1630963 () Bool)

(assert (=> d!1630963 (= (abs!0 (- lt!2088314 lt!2088315)) (ite (<= 0 (- lt!2088314 lt!2088315)) (- lt!2088314 lt!2088315) (- (- lt!2088314 lt!2088315))))))

(assert (=> b!5062266 d!1630963))

(declare-fun d!1630965 () Bool)

(assert (=> d!1630965 (= (height!2137 (left!42810 xs!286)) (ite ((_ is Empty!15560) (left!42810 xs!286)) 0 (ite ((_ is Leaf!25845) (left!42810 xs!286)) 1 (cheight!15771 (left!42810 xs!286)))))))

(assert (=> b!5062276 d!1630965))

(declare-fun d!1630967 () Bool)

(assert (=> d!1630967 (= (height!2137 (right!43140 xs!286)) (ite ((_ is Empty!15560) (right!43140 xs!286)) 0 (ite ((_ is Leaf!25845) (right!43140 xs!286)) 1 (cheight!15771 (right!43140 xs!286)))))))

(assert (=> b!5062276 d!1630967))

(declare-fun d!1630969 () Bool)

(assert (=> d!1630969 (= (height!2137 xs!286) (ite ((_ is Empty!15560) xs!286) 0 (ite ((_ is Leaf!25845) xs!286) 1 (cheight!15771 xs!286))))))

(assert (=> b!5062272 d!1630969))

(declare-fun d!1630971 () Bool)

(assert (=> d!1630971 (= (height!2137 ys!41) (ite ((_ is Empty!15560) ys!41) 0 (ite ((_ is Leaf!25845) ys!41) 1 (cheight!15771 ys!41))))))

(assert (=> b!5062272 d!1630971))

(declare-fun d!1630973 () Bool)

(declare-fun res!2155537 () Bool)

(declare-fun e!3159556 () Bool)

(assert (=> d!1630973 (=> res!2155537 e!3159556)))

(assert (=> d!1630973 (= res!2155537 (not ((_ is Node!15560) ys!41)))))

(assert (=> d!1630973 (= (isBalanced!4422 ys!41) e!3159556)))

(declare-fun b!5062308 () Bool)

(declare-fun res!2155532 () Bool)

(declare-fun e!3159555 () Bool)

(assert (=> b!5062308 (=> (not res!2155532) (not e!3159555))))

(assert (=> b!5062308 (= res!2155532 (isBalanced!4422 (right!43140 ys!41)))))

(declare-fun b!5062309 () Bool)

(declare-fun isEmpty!31623 (Conc!15560) Bool)

(assert (=> b!5062309 (= e!3159555 (not (isEmpty!31623 (right!43140 ys!41))))))

(declare-fun b!5062310 () Bool)

(assert (=> b!5062310 (= e!3159556 e!3159555)))

(declare-fun res!2155534 () Bool)

(assert (=> b!5062310 (=> (not res!2155534) (not e!3159555))))

(assert (=> b!5062310 (= res!2155534 (<= (- 1) (- (height!2137 (left!42810 ys!41)) (height!2137 (right!43140 ys!41)))))))

(declare-fun b!5062311 () Bool)

(declare-fun res!2155535 () Bool)

(assert (=> b!5062311 (=> (not res!2155535) (not e!3159555))))

(assert (=> b!5062311 (= res!2155535 (<= (- (height!2137 (left!42810 ys!41)) (height!2137 (right!43140 ys!41))) 1))))

(declare-fun b!5062312 () Bool)

(declare-fun res!2155536 () Bool)

(assert (=> b!5062312 (=> (not res!2155536) (not e!3159555))))

(assert (=> b!5062312 (= res!2155536 (not (isEmpty!31623 (left!42810 ys!41))))))

(declare-fun b!5062313 () Bool)

(declare-fun res!2155533 () Bool)

(assert (=> b!5062313 (=> (not res!2155533) (not e!3159555))))

(assert (=> b!5062313 (= res!2155533 (isBalanced!4422 (left!42810 ys!41)))))

(assert (= (and d!1630973 (not res!2155537)) b!5062310))

(assert (= (and b!5062310 res!2155534) b!5062311))

(assert (= (and b!5062311 res!2155535) b!5062313))

(assert (= (and b!5062313 res!2155533) b!5062308))

(assert (= (and b!5062308 res!2155532) b!5062312))

(assert (= (and b!5062312 res!2155536) b!5062309))

(declare-fun m!6101568 () Bool)

(assert (=> b!5062311 m!6101568))

(declare-fun m!6101570 () Bool)

(assert (=> b!5062311 m!6101570))

(declare-fun m!6101572 () Bool)

(assert (=> b!5062309 m!6101572))

(declare-fun m!6101574 () Bool)

(assert (=> b!5062308 m!6101574))

(assert (=> b!5062310 m!6101568))

(assert (=> b!5062310 m!6101570))

(declare-fun m!6101576 () Bool)

(assert (=> b!5062312 m!6101576))

(declare-fun m!6101578 () Bool)

(assert (=> b!5062313 m!6101578))

(assert (=> b!5062277 d!1630973))

(declare-fun d!1630979 () Bool)

(declare-fun res!2155543 () Bool)

(declare-fun e!3159558 () Bool)

(assert (=> d!1630979 (=> res!2155543 e!3159558)))

(assert (=> d!1630979 (= res!2155543 (not ((_ is Node!15560) xs!286)))))

(assert (=> d!1630979 (= (isBalanced!4422 xs!286) e!3159558)))

(declare-fun b!5062314 () Bool)

(declare-fun res!2155538 () Bool)

(declare-fun e!3159557 () Bool)

(assert (=> b!5062314 (=> (not res!2155538) (not e!3159557))))

(assert (=> b!5062314 (= res!2155538 (isBalanced!4422 (right!43140 xs!286)))))

(declare-fun b!5062315 () Bool)

(assert (=> b!5062315 (= e!3159557 (not (isEmpty!31623 (right!43140 xs!286))))))

(declare-fun b!5062316 () Bool)

(assert (=> b!5062316 (= e!3159558 e!3159557)))

(declare-fun res!2155540 () Bool)

(assert (=> b!5062316 (=> (not res!2155540) (not e!3159557))))

(assert (=> b!5062316 (= res!2155540 (<= (- 1) (- (height!2137 (left!42810 xs!286)) (height!2137 (right!43140 xs!286)))))))

(declare-fun b!5062317 () Bool)

(declare-fun res!2155541 () Bool)

(assert (=> b!5062317 (=> (not res!2155541) (not e!3159557))))

(assert (=> b!5062317 (= res!2155541 (<= (- (height!2137 (left!42810 xs!286)) (height!2137 (right!43140 xs!286))) 1))))

(declare-fun b!5062318 () Bool)

(declare-fun res!2155542 () Bool)

(assert (=> b!5062318 (=> (not res!2155542) (not e!3159557))))

(assert (=> b!5062318 (= res!2155542 (not (isEmpty!31623 (left!42810 xs!286))))))

(declare-fun b!5062319 () Bool)

(declare-fun res!2155539 () Bool)

(assert (=> b!5062319 (=> (not res!2155539) (not e!3159557))))

(assert (=> b!5062319 (= res!2155539 (isBalanced!4422 (left!42810 xs!286)))))

(assert (= (and d!1630979 (not res!2155543)) b!5062316))

(assert (= (and b!5062316 res!2155540) b!5062317))

(assert (= (and b!5062317 res!2155541) b!5062319))

(assert (= (and b!5062319 res!2155539) b!5062314))

(assert (= (and b!5062314 res!2155538) b!5062318))

(assert (= (and b!5062318 res!2155542) b!5062315))

(assert (=> b!5062317 m!6101548))

(assert (=> b!5062317 m!6101550))

(declare-fun m!6101580 () Bool)

(assert (=> b!5062315 m!6101580))

(declare-fun m!6101582 () Bool)

(assert (=> b!5062314 m!6101582))

(assert (=> b!5062316 m!6101548))

(assert (=> b!5062316 m!6101550))

(declare-fun m!6101584 () Bool)

(assert (=> b!5062318 m!6101584))

(declare-fun m!6101586 () Bool)

(assert (=> b!5062319 m!6101586))

(assert (=> start!534950 d!1630979))

(declare-fun d!1630981 () Bool)

(declare-fun c!868776 () Bool)

(assert (=> d!1630981 (= c!868776 ((_ is Node!15560) xs!286))))

(declare-fun e!3159571 () Bool)

(assert (=> d!1630981 (= (inv!77533 xs!286) e!3159571)))

(declare-fun b!5062338 () Bool)

(declare-fun inv!77537 (Conc!15560) Bool)

(assert (=> b!5062338 (= e!3159571 (inv!77537 xs!286))))

(declare-fun b!5062339 () Bool)

(declare-fun e!3159572 () Bool)

(assert (=> b!5062339 (= e!3159571 e!3159572)))

(declare-fun res!2155550 () Bool)

(assert (=> b!5062339 (= res!2155550 (not ((_ is Leaf!25845) xs!286)))))

(assert (=> b!5062339 (=> res!2155550 e!3159572)))

(declare-fun b!5062340 () Bool)

(declare-fun inv!77538 (Conc!15560) Bool)

(assert (=> b!5062340 (= e!3159572 (inv!77538 xs!286))))

(assert (= (and d!1630981 c!868776) b!5062338))

(assert (= (and d!1630981 (not c!868776)) b!5062339))

(assert (= (and b!5062339 (not res!2155550)) b!5062340))

(declare-fun m!6101596 () Bool)

(assert (=> b!5062338 m!6101596))

(declare-fun m!6101598 () Bool)

(assert (=> b!5062340 m!6101598))

(assert (=> start!534950 d!1630981))

(declare-fun d!1630987 () Bool)

(declare-fun c!868777 () Bool)

(assert (=> d!1630987 (= c!868777 ((_ is Node!15560) ys!41))))

(declare-fun e!3159573 () Bool)

(assert (=> d!1630987 (= (inv!77533 ys!41) e!3159573)))

(declare-fun b!5062341 () Bool)

(assert (=> b!5062341 (= e!3159573 (inv!77537 ys!41))))

(declare-fun b!5062342 () Bool)

(declare-fun e!3159574 () Bool)

(assert (=> b!5062342 (= e!3159573 e!3159574)))

(declare-fun res!2155551 () Bool)

(assert (=> b!5062342 (= res!2155551 (not ((_ is Leaf!25845) ys!41)))))

(assert (=> b!5062342 (=> res!2155551 e!3159574)))

(declare-fun b!5062343 () Bool)

(assert (=> b!5062343 (= e!3159574 (inv!77538 ys!41))))

(assert (= (and d!1630987 c!868777) b!5062341))

(assert (= (and d!1630987 (not c!868777)) b!5062342))

(assert (= (and b!5062342 (not res!2155551)) b!5062343))

(declare-fun m!6101600 () Bool)

(assert (=> b!5062341 m!6101600))

(declare-fun m!6101602 () Bool)

(assert (=> b!5062343 m!6101602))

(assert (=> start!534950 d!1630987))

(declare-fun d!1630993 () Bool)

(declare-fun c!868778 () Bool)

(assert (=> d!1630993 (= c!868778 ((_ is Node!15560) (left!42810 ys!41)))))

(declare-fun e!3159577 () Bool)

(assert (=> d!1630993 (= (inv!77533 (left!42810 ys!41)) e!3159577)))

(declare-fun b!5062350 () Bool)

(assert (=> b!5062350 (= e!3159577 (inv!77537 (left!42810 ys!41)))))

(declare-fun b!5062351 () Bool)

(declare-fun e!3159578 () Bool)

(assert (=> b!5062351 (= e!3159577 e!3159578)))

(declare-fun res!2155558 () Bool)

(assert (=> b!5062351 (= res!2155558 (not ((_ is Leaf!25845) (left!42810 ys!41))))))

(assert (=> b!5062351 (=> res!2155558 e!3159578)))

(declare-fun b!5062352 () Bool)

(assert (=> b!5062352 (= e!3159578 (inv!77538 (left!42810 ys!41)))))

(assert (= (and d!1630993 c!868778) b!5062350))

(assert (= (and d!1630993 (not c!868778)) b!5062351))

(assert (= (and b!5062351 (not res!2155558)) b!5062352))

(declare-fun m!6101604 () Bool)

(assert (=> b!5062350 m!6101604))

(declare-fun m!6101606 () Bool)

(assert (=> b!5062352 m!6101606))

(assert (=> b!5062274 d!1630993))

(declare-fun d!1630995 () Bool)

(declare-fun c!868779 () Bool)

(assert (=> d!1630995 (= c!868779 ((_ is Node!15560) (right!43140 ys!41)))))

(declare-fun e!3159579 () Bool)

(assert (=> d!1630995 (= (inv!77533 (right!43140 ys!41)) e!3159579)))

(declare-fun b!5062353 () Bool)

(assert (=> b!5062353 (= e!3159579 (inv!77537 (right!43140 ys!41)))))

(declare-fun b!5062354 () Bool)

(declare-fun e!3159580 () Bool)

(assert (=> b!5062354 (= e!3159579 e!3159580)))

(declare-fun res!2155559 () Bool)

(assert (=> b!5062354 (= res!2155559 (not ((_ is Leaf!25845) (right!43140 ys!41))))))

(assert (=> b!5062354 (=> res!2155559 e!3159580)))

(declare-fun b!5062355 () Bool)

(assert (=> b!5062355 (= e!3159580 (inv!77538 (right!43140 ys!41)))))

(assert (= (and d!1630995 c!868779) b!5062353))

(assert (= (and d!1630995 (not c!868779)) b!5062354))

(assert (= (and b!5062354 (not res!2155559)) b!5062355))

(declare-fun m!6101608 () Bool)

(assert (=> b!5062353 m!6101608))

(declare-fun m!6101610 () Bool)

(assert (=> b!5062355 m!6101610))

(assert (=> b!5062274 d!1630995))

(declare-fun d!1630997 () Bool)

(declare-fun c!868780 () Bool)

(assert (=> d!1630997 (= c!868780 ((_ is Node!15560) (left!42810 xs!286)))))

(declare-fun e!3159581 () Bool)

(assert (=> d!1630997 (= (inv!77533 (left!42810 xs!286)) e!3159581)))

(declare-fun b!5062356 () Bool)

(assert (=> b!5062356 (= e!3159581 (inv!77537 (left!42810 xs!286)))))

(declare-fun b!5062357 () Bool)

(declare-fun e!3159582 () Bool)

(assert (=> b!5062357 (= e!3159581 e!3159582)))

(declare-fun res!2155560 () Bool)

(assert (=> b!5062357 (= res!2155560 (not ((_ is Leaf!25845) (left!42810 xs!286))))))

(assert (=> b!5062357 (=> res!2155560 e!3159582)))

(declare-fun b!5062358 () Bool)

(assert (=> b!5062358 (= e!3159582 (inv!77538 (left!42810 xs!286)))))

(assert (= (and d!1630997 c!868780) b!5062356))

(assert (= (and d!1630997 (not c!868780)) b!5062357))

(assert (= (and b!5062357 (not res!2155560)) b!5062358))

(declare-fun m!6101620 () Bool)

(assert (=> b!5062356 m!6101620))

(declare-fun m!6101622 () Bool)

(assert (=> b!5062358 m!6101622))

(assert (=> b!5062268 d!1630997))

(declare-fun d!1631001 () Bool)

(declare-fun c!868782 () Bool)

(assert (=> d!1631001 (= c!868782 ((_ is Node!15560) (right!43140 xs!286)))))

(declare-fun e!3159585 () Bool)

(assert (=> d!1631001 (= (inv!77533 (right!43140 xs!286)) e!3159585)))

(declare-fun b!5062362 () Bool)

(assert (=> b!5062362 (= e!3159585 (inv!77537 (right!43140 xs!286)))))

(declare-fun b!5062363 () Bool)

(declare-fun e!3159586 () Bool)

(assert (=> b!5062363 (= e!3159585 e!3159586)))

(declare-fun res!2155562 () Bool)

(assert (=> b!5062363 (= res!2155562 (not ((_ is Leaf!25845) (right!43140 xs!286))))))

(assert (=> b!5062363 (=> res!2155562 e!3159586)))

(declare-fun b!5062364 () Bool)

(assert (=> b!5062364 (= e!3159586 (inv!77538 (right!43140 xs!286)))))

(assert (= (and d!1631001 c!868782) b!5062362))

(assert (= (and d!1631001 (not c!868782)) b!5062363))

(assert (= (and b!5062363 (not res!2155562)) b!5062364))

(declare-fun m!6101628 () Bool)

(assert (=> b!5062362 m!6101628))

(declare-fun m!6101630 () Bool)

(assert (=> b!5062364 m!6101630))

(assert (=> b!5062268 d!1631001))

(declare-fun d!1631005 () Bool)

(declare-fun size!39067 (List!58554) Int)

(assert (=> d!1631005 (= (inv!77534 (xs!18904 ys!41)) (<= (size!39067 (innerList!15648 (xs!18904 ys!41))) 2147483647))))

(declare-fun bs!1189695 () Bool)

(assert (= bs!1189695 d!1631005))

(declare-fun m!6101644 () Bool)

(assert (=> bs!1189695 m!6101644))

(assert (=> b!5062273 d!1631005))

(declare-fun d!1631017 () Bool)

(assert (=> d!1631017 (= (inv!77534 (xs!18904 xs!286)) (<= (size!39067 (innerList!15648 (xs!18904 xs!286))) 2147483647))))

(declare-fun bs!1189696 () Bool)

(assert (= bs!1189696 d!1631017))

(declare-fun m!6101646 () Bool)

(assert (=> bs!1189696 m!6101646))

(assert (=> b!5062270 d!1631017))

(declare-fun b!5062382 () Bool)

(declare-fun e!3159597 () Bool)

(declare-fun tp_is_empty!37041 () Bool)

(declare-fun tp!1414206 () Bool)

(assert (=> b!5062382 (= e!3159597 (and tp_is_empty!37041 tp!1414206))))

(assert (=> b!5062271 (= tp!1414201 e!3159597)))

(assert (= (and b!5062271 ((_ is Cons!58430) (innerList!15648 (xs!18904 ys!41)))) b!5062382))

(declare-fun e!3159608 () Bool)

(declare-fun tp!1414220 () Bool)

(declare-fun tp!1414222 () Bool)

(declare-fun b!5062400 () Bool)

(assert (=> b!5062400 (= e!3159608 (and (inv!77533 (left!42810 (left!42810 ys!41))) tp!1414220 (inv!77533 (right!43140 (left!42810 ys!41))) tp!1414222))))

(declare-fun b!5062402 () Bool)

(declare-fun e!3159607 () Bool)

(declare-fun tp!1414221 () Bool)

(assert (=> b!5062402 (= e!3159607 tp!1414221)))

(declare-fun b!5062401 () Bool)

(assert (=> b!5062401 (= e!3159608 (and (inv!77534 (xs!18904 (left!42810 ys!41))) e!3159607))))

(assert (=> b!5062274 (= tp!1414197 (and (inv!77533 (left!42810 ys!41)) e!3159608))))

(assert (= (and b!5062274 ((_ is Node!15560) (left!42810 ys!41))) b!5062400))

(assert (= b!5062401 b!5062402))

(assert (= (and b!5062274 ((_ is Leaf!25845) (left!42810 ys!41))) b!5062401))

(declare-fun m!6101650 () Bool)

(assert (=> b!5062400 m!6101650))

(declare-fun m!6101652 () Bool)

(assert (=> b!5062400 m!6101652))

(declare-fun m!6101654 () Bool)

(assert (=> b!5062401 m!6101654))

(assert (=> b!5062274 m!6101544))

(declare-fun e!3159612 () Bool)

(declare-fun tp!1414228 () Bool)

(declare-fun tp!1414226 () Bool)

(declare-fun b!5062406 () Bool)

(assert (=> b!5062406 (= e!3159612 (and (inv!77533 (left!42810 (right!43140 ys!41))) tp!1414226 (inv!77533 (right!43140 (right!43140 ys!41))) tp!1414228))))

(declare-fun b!5062408 () Bool)

(declare-fun e!3159611 () Bool)

(declare-fun tp!1414227 () Bool)

(assert (=> b!5062408 (= e!3159611 tp!1414227)))

(declare-fun b!5062407 () Bool)

(assert (=> b!5062407 (= e!3159612 (and (inv!77534 (xs!18904 (right!43140 ys!41))) e!3159611))))

(assert (=> b!5062274 (= tp!1414198 (and (inv!77533 (right!43140 ys!41)) e!3159612))))

(assert (= (and b!5062274 ((_ is Node!15560) (right!43140 ys!41))) b!5062406))

(assert (= b!5062407 b!5062408))

(assert (= (and b!5062274 ((_ is Leaf!25845) (right!43140 ys!41))) b!5062407))

(declare-fun m!6101656 () Bool)

(assert (=> b!5062406 m!6101656))

(declare-fun m!6101660 () Bool)

(assert (=> b!5062406 m!6101660))

(declare-fun m!6101662 () Bool)

(assert (=> b!5062407 m!6101662))

(assert (=> b!5062274 m!6101546))

(declare-fun e!3159614 () Bool)

(declare-fun tp!1414231 () Bool)

(declare-fun b!5062409 () Bool)

(declare-fun tp!1414229 () Bool)

(assert (=> b!5062409 (= e!3159614 (and (inv!77533 (left!42810 (left!42810 xs!286))) tp!1414229 (inv!77533 (right!43140 (left!42810 xs!286))) tp!1414231))))

(declare-fun b!5062411 () Bool)

(declare-fun e!3159613 () Bool)

(declare-fun tp!1414230 () Bool)

(assert (=> b!5062411 (= e!3159613 tp!1414230)))

(declare-fun b!5062410 () Bool)

(assert (=> b!5062410 (= e!3159614 (and (inv!77534 (xs!18904 (left!42810 xs!286))) e!3159613))))

(assert (=> b!5062268 (= tp!1414196 (and (inv!77533 (left!42810 xs!286)) e!3159614))))

(assert (= (and b!5062268 ((_ is Node!15560) (left!42810 xs!286))) b!5062409))

(assert (= b!5062410 b!5062411))

(assert (= (and b!5062268 ((_ is Leaf!25845) (left!42810 xs!286))) b!5062410))

(declare-fun m!6101668 () Bool)

(assert (=> b!5062409 m!6101668))

(declare-fun m!6101670 () Bool)

(assert (=> b!5062409 m!6101670))

(declare-fun m!6101672 () Bool)

(assert (=> b!5062410 m!6101672))

(assert (=> b!5062268 m!6101532))

(declare-fun e!3159618 () Bool)

(declare-fun tp!1414237 () Bool)

(declare-fun tp!1414235 () Bool)

(declare-fun b!5062415 () Bool)

(assert (=> b!5062415 (= e!3159618 (and (inv!77533 (left!42810 (right!43140 xs!286))) tp!1414235 (inv!77533 (right!43140 (right!43140 xs!286))) tp!1414237))))

(declare-fun b!5062417 () Bool)

(declare-fun e!3159617 () Bool)

(declare-fun tp!1414236 () Bool)

(assert (=> b!5062417 (= e!3159617 tp!1414236)))

(declare-fun b!5062416 () Bool)

(assert (=> b!5062416 (= e!3159618 (and (inv!77534 (xs!18904 (right!43140 xs!286))) e!3159617))))

(assert (=> b!5062268 (= tp!1414199 (and (inv!77533 (right!43140 xs!286)) e!3159618))))

(assert (= (and b!5062268 ((_ is Node!15560) (right!43140 xs!286))) b!5062415))

(assert (= b!5062416 b!5062417))

(assert (= (and b!5062268 ((_ is Leaf!25845) (right!43140 xs!286))) b!5062416))

(declare-fun m!6101680 () Bool)

(assert (=> b!5062415 m!6101680))

(declare-fun m!6101682 () Bool)

(assert (=> b!5062415 m!6101682))

(declare-fun m!6101684 () Bool)

(assert (=> b!5062416 m!6101684))

(assert (=> b!5062268 m!6101534))

(declare-fun b!5062422 () Bool)

(declare-fun e!3159622 () Bool)

(declare-fun tp!1414242 () Bool)

(assert (=> b!5062422 (= e!3159622 (and tp_is_empty!37041 tp!1414242))))

(assert (=> b!5062269 (= tp!1414200 e!3159622)))

(assert (= (and b!5062269 ((_ is Cons!58430) (innerList!15648 (xs!18904 xs!286)))) b!5062422))

(check-sat (not b!5062416) (not b!5062409) (not b!5062352) (not b!5062400) (not b!5062311) (not d!1631005) (not b!5062341) (not b!5062355) (not b!5062362) (not b!5062315) (not b!5062410) (not b!5062411) (not b!5062268) (not b!5062343) (not b!5062356) (not b!5062314) (not b!5062313) (not b!5062309) (not b!5062316) (not b!5062358) (not b!5062312) (not b!5062340) (not d!1631017) (not b!5062407) (not b!5062310) (not b!5062415) (not b!5062319) (not b!5062350) (not b!5062382) (not b!5062364) (not b!5062274) (not b!5062422) (not b!5062401) (not b!5062353) (not b!5062417) (not b!5062408) (not b!5062317) (not b!5062402) (not b!5062338) (not b!5062406) tp_is_empty!37041 (not b!5062318) (not b!5062308))
(check-sat)
(get-model)

(declare-fun d!1631025 () Bool)

(declare-fun res!2155571 () Bool)

(declare-fun e!3159626 () Bool)

(assert (=> d!1631025 (=> res!2155571 e!3159626)))

(assert (=> d!1631025 (= res!2155571 (not ((_ is Node!15560) (right!43140 xs!286))))))

(assert (=> d!1631025 (= (isBalanced!4422 (right!43140 xs!286)) e!3159626)))

(declare-fun b!5062426 () Bool)

(declare-fun res!2155566 () Bool)

(declare-fun e!3159625 () Bool)

(assert (=> b!5062426 (=> (not res!2155566) (not e!3159625))))

(assert (=> b!5062426 (= res!2155566 (isBalanced!4422 (right!43140 (right!43140 xs!286))))))

(declare-fun b!5062427 () Bool)

(assert (=> b!5062427 (= e!3159625 (not (isEmpty!31623 (right!43140 (right!43140 xs!286)))))))

(declare-fun b!5062428 () Bool)

(assert (=> b!5062428 (= e!3159626 e!3159625)))

(declare-fun res!2155568 () Bool)

(assert (=> b!5062428 (=> (not res!2155568) (not e!3159625))))

(assert (=> b!5062428 (= res!2155568 (<= (- 1) (- (height!2137 (left!42810 (right!43140 xs!286))) (height!2137 (right!43140 (right!43140 xs!286))))))))

(declare-fun b!5062429 () Bool)

(declare-fun res!2155569 () Bool)

(assert (=> b!5062429 (=> (not res!2155569) (not e!3159625))))

(assert (=> b!5062429 (= res!2155569 (<= (- (height!2137 (left!42810 (right!43140 xs!286))) (height!2137 (right!43140 (right!43140 xs!286)))) 1))))

(declare-fun b!5062430 () Bool)

(declare-fun res!2155570 () Bool)

(assert (=> b!5062430 (=> (not res!2155570) (not e!3159625))))

(assert (=> b!5062430 (= res!2155570 (not (isEmpty!31623 (left!42810 (right!43140 xs!286)))))))

(declare-fun b!5062431 () Bool)

(declare-fun res!2155567 () Bool)

(assert (=> b!5062431 (=> (not res!2155567) (not e!3159625))))

(assert (=> b!5062431 (= res!2155567 (isBalanced!4422 (left!42810 (right!43140 xs!286))))))

(assert (= (and d!1631025 (not res!2155571)) b!5062428))

(assert (= (and b!5062428 res!2155568) b!5062429))

(assert (= (and b!5062429 res!2155569) b!5062431))

(assert (= (and b!5062431 res!2155567) b!5062426))

(assert (= (and b!5062426 res!2155566) b!5062430))

(assert (= (and b!5062430 res!2155570) b!5062427))

(declare-fun m!6101698 () Bool)

(assert (=> b!5062429 m!6101698))

(assert (=> b!5062429 m!6101520))

(declare-fun m!6101700 () Bool)

(assert (=> b!5062427 m!6101700))

(declare-fun m!6101702 () Bool)

(assert (=> b!5062426 m!6101702))

(assert (=> b!5062428 m!6101698))

(assert (=> b!5062428 m!6101520))

(declare-fun m!6101704 () Bool)

(assert (=> b!5062430 m!6101704))

(declare-fun m!6101706 () Bool)

(assert (=> b!5062431 m!6101706))

(assert (=> b!5062314 d!1631025))

(declare-fun d!1631027 () Bool)

(declare-fun res!2155576 () Bool)

(declare-fun e!3159629 () Bool)

(assert (=> d!1631027 (=> (not res!2155576) (not e!3159629))))

(declare-fun list!18980 (IArray!31181) List!58554)

(assert (=> d!1631027 (= res!2155576 (<= (size!39067 (list!18980 (xs!18904 (left!42810 ys!41)))) 512))))

(assert (=> d!1631027 (= (inv!77538 (left!42810 ys!41)) e!3159629)))

(declare-fun b!5062436 () Bool)

(declare-fun res!2155577 () Bool)

(assert (=> b!5062436 (=> (not res!2155577) (not e!3159629))))

(assert (=> b!5062436 (= res!2155577 (= (csize!31351 (left!42810 ys!41)) (size!39067 (list!18980 (xs!18904 (left!42810 ys!41))))))))

(declare-fun b!5062437 () Bool)

(assert (=> b!5062437 (= e!3159629 (and (> (csize!31351 (left!42810 ys!41)) 0) (<= (csize!31351 (left!42810 ys!41)) 512)))))

(assert (= (and d!1631027 res!2155576) b!5062436))

(assert (= (and b!5062436 res!2155577) b!5062437))

(declare-fun m!6101708 () Bool)

(assert (=> d!1631027 m!6101708))

(assert (=> d!1631027 m!6101708))

(declare-fun m!6101710 () Bool)

(assert (=> d!1631027 m!6101710))

(assert (=> b!5062436 m!6101708))

(assert (=> b!5062436 m!6101708))

(assert (=> b!5062436 m!6101710))

(assert (=> b!5062352 d!1631027))

(declare-fun d!1631029 () Bool)

(declare-fun lt!2088318 () Bool)

(declare-fun isEmpty!31624 (List!58554) Bool)

(declare-fun list!18981 (Conc!15560) List!58554)

(assert (=> d!1631029 (= lt!2088318 (isEmpty!31624 (list!18981 (right!43140 xs!286))))))

(declare-fun size!39068 (Conc!15560) Int)

(assert (=> d!1631029 (= lt!2088318 (= (size!39068 (right!43140 xs!286)) 0))))

(assert (=> d!1631029 (= (isEmpty!31623 (right!43140 xs!286)) lt!2088318)))

(declare-fun bs!1189698 () Bool)

(assert (= bs!1189698 d!1631029))

(declare-fun m!6101712 () Bool)

(assert (=> bs!1189698 m!6101712))

(assert (=> bs!1189698 m!6101712))

(declare-fun m!6101714 () Bool)

(assert (=> bs!1189698 m!6101714))

(declare-fun m!6101716 () Bool)

(assert (=> bs!1189698 m!6101716))

(assert (=> b!5062315 d!1631029))

(assert (=> b!5062317 d!1630965))

(assert (=> b!5062317 d!1630967))

(assert (=> b!5062316 d!1630965))

(assert (=> b!5062316 d!1630967))

(declare-fun d!1631031 () Bool)

(declare-fun lt!2088319 () Bool)

(assert (=> d!1631031 (= lt!2088319 (isEmpty!31624 (list!18981 (left!42810 xs!286))))))

(assert (=> d!1631031 (= lt!2088319 (= (size!39068 (left!42810 xs!286)) 0))))

(assert (=> d!1631031 (= (isEmpty!31623 (left!42810 xs!286)) lt!2088319)))

(declare-fun bs!1189699 () Bool)

(assert (= bs!1189699 d!1631031))

(declare-fun m!6101718 () Bool)

(assert (=> bs!1189699 m!6101718))

(assert (=> bs!1189699 m!6101718))

(declare-fun m!6101720 () Bool)

(assert (=> bs!1189699 m!6101720))

(declare-fun m!6101722 () Bool)

(assert (=> bs!1189699 m!6101722))

(assert (=> b!5062318 d!1631031))

(declare-fun d!1631033 () Bool)

(declare-fun res!2155584 () Bool)

(declare-fun e!3159632 () Bool)

(assert (=> d!1631033 (=> (not res!2155584) (not e!3159632))))

(assert (=> d!1631033 (= res!2155584 (= (csize!31350 (left!42810 xs!286)) (+ (size!39068 (left!42810 (left!42810 xs!286))) (size!39068 (right!43140 (left!42810 xs!286))))))))

(assert (=> d!1631033 (= (inv!77537 (left!42810 xs!286)) e!3159632)))

(declare-fun b!5062444 () Bool)

(declare-fun res!2155585 () Bool)

(assert (=> b!5062444 (=> (not res!2155585) (not e!3159632))))

(assert (=> b!5062444 (= res!2155585 (and (not (= (left!42810 (left!42810 xs!286)) Empty!15560)) (not (= (right!43140 (left!42810 xs!286)) Empty!15560))))))

(declare-fun b!5062445 () Bool)

(declare-fun res!2155586 () Bool)

(assert (=> b!5062445 (=> (not res!2155586) (not e!3159632))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5062445 (= res!2155586 (= (cheight!15771 (left!42810 xs!286)) (+ (max!0 (height!2137 (left!42810 (left!42810 xs!286))) (height!2137 (right!43140 (left!42810 xs!286)))) 1)))))

(declare-fun b!5062446 () Bool)

(assert (=> b!5062446 (= e!3159632 (<= 0 (cheight!15771 (left!42810 xs!286))))))

(assert (= (and d!1631033 res!2155584) b!5062444))

(assert (= (and b!5062444 res!2155585) b!5062445))

(assert (= (and b!5062445 res!2155586) b!5062446))

(declare-fun m!6101724 () Bool)

(assert (=> d!1631033 m!6101724))

(declare-fun m!6101726 () Bool)

(assert (=> d!1631033 m!6101726))

(declare-fun m!6101728 () Bool)

(assert (=> b!5062445 m!6101728))

(declare-fun m!6101730 () Bool)

(assert (=> b!5062445 m!6101730))

(assert (=> b!5062445 m!6101728))

(assert (=> b!5062445 m!6101730))

(declare-fun m!6101732 () Bool)

(assert (=> b!5062445 m!6101732))

(assert (=> b!5062356 d!1631033))

(declare-fun d!1631035 () Bool)

(declare-fun res!2155587 () Bool)

(declare-fun e!3159633 () Bool)

(assert (=> d!1631035 (=> (not res!2155587) (not e!3159633))))

(assert (=> d!1631035 (= res!2155587 (= (csize!31350 xs!286) (+ (size!39068 (left!42810 xs!286)) (size!39068 (right!43140 xs!286)))))))

(assert (=> d!1631035 (= (inv!77537 xs!286) e!3159633)))

(declare-fun b!5062447 () Bool)

(declare-fun res!2155588 () Bool)

(assert (=> b!5062447 (=> (not res!2155588) (not e!3159633))))

(assert (=> b!5062447 (= res!2155588 (and (not (= (left!42810 xs!286) Empty!15560)) (not (= (right!43140 xs!286) Empty!15560))))))

(declare-fun b!5062448 () Bool)

(declare-fun res!2155589 () Bool)

(assert (=> b!5062448 (=> (not res!2155589) (not e!3159633))))

(assert (=> b!5062448 (= res!2155589 (= (cheight!15771 xs!286) (+ (max!0 (height!2137 (left!42810 xs!286)) (height!2137 (right!43140 xs!286))) 1)))))

(declare-fun b!5062449 () Bool)

(assert (=> b!5062449 (= e!3159633 (<= 0 (cheight!15771 xs!286)))))

(assert (= (and d!1631035 res!2155587) b!5062447))

(assert (= (and b!5062447 res!2155588) b!5062448))

(assert (= (and b!5062448 res!2155589) b!5062449))

(assert (=> d!1631035 m!6101722))

(assert (=> d!1631035 m!6101716))

(assert (=> b!5062448 m!6101548))

(assert (=> b!5062448 m!6101550))

(assert (=> b!5062448 m!6101548))

(assert (=> b!5062448 m!6101550))

(declare-fun m!6101734 () Bool)

(assert (=> b!5062448 m!6101734))

(assert (=> b!5062338 d!1631035))

(declare-fun d!1631037 () Bool)

(declare-fun lt!2088322 () Int)

(assert (=> d!1631037 (>= lt!2088322 0)))

(declare-fun e!3159636 () Int)

(assert (=> d!1631037 (= lt!2088322 e!3159636)))

(declare-fun c!868788 () Bool)

(assert (=> d!1631037 (= c!868788 ((_ is Nil!58430) (innerList!15648 (xs!18904 xs!286))))))

(assert (=> d!1631037 (= (size!39067 (innerList!15648 (xs!18904 xs!286))) lt!2088322)))

(declare-fun b!5062454 () Bool)

(assert (=> b!5062454 (= e!3159636 0)))

(declare-fun b!5062455 () Bool)

(assert (=> b!5062455 (= e!3159636 (+ 1 (size!39067 (t!371267 (innerList!15648 (xs!18904 xs!286))))))))

(assert (= (and d!1631037 c!868788) b!5062454))

(assert (= (and d!1631037 (not c!868788)) b!5062455))

(declare-fun m!6101736 () Bool)

(assert (=> b!5062455 m!6101736))

(assert (=> d!1631017 d!1631037))

(declare-fun d!1631039 () Bool)

(declare-fun res!2155590 () Bool)

(declare-fun e!3159637 () Bool)

(assert (=> d!1631039 (=> (not res!2155590) (not e!3159637))))

(assert (=> d!1631039 (= res!2155590 (<= (size!39067 (list!18980 (xs!18904 xs!286))) 512))))

(assert (=> d!1631039 (= (inv!77538 xs!286) e!3159637)))

(declare-fun b!5062456 () Bool)

(declare-fun res!2155591 () Bool)

(assert (=> b!5062456 (=> (not res!2155591) (not e!3159637))))

(assert (=> b!5062456 (= res!2155591 (= (csize!31351 xs!286) (size!39067 (list!18980 (xs!18904 xs!286)))))))

(declare-fun b!5062457 () Bool)

(assert (=> b!5062457 (= e!3159637 (and (> (csize!31351 xs!286) 0) (<= (csize!31351 xs!286) 512)))))

(assert (= (and d!1631039 res!2155590) b!5062456))

(assert (= (and b!5062456 res!2155591) b!5062457))

(declare-fun m!6101738 () Bool)

(assert (=> d!1631039 m!6101738))

(assert (=> d!1631039 m!6101738))

(declare-fun m!6101740 () Bool)

(assert (=> d!1631039 m!6101740))

(assert (=> b!5062456 m!6101738))

(assert (=> b!5062456 m!6101738))

(assert (=> b!5062456 m!6101740))

(assert (=> b!5062340 d!1631039))

(declare-fun d!1631041 () Bool)

(declare-fun res!2155592 () Bool)

(declare-fun e!3159638 () Bool)

(assert (=> d!1631041 (=> (not res!2155592) (not e!3159638))))

(assert (=> d!1631041 (= res!2155592 (= (csize!31350 (left!42810 ys!41)) (+ (size!39068 (left!42810 (left!42810 ys!41))) (size!39068 (right!43140 (left!42810 ys!41))))))))

(assert (=> d!1631041 (= (inv!77537 (left!42810 ys!41)) e!3159638)))

(declare-fun b!5062458 () Bool)

(declare-fun res!2155593 () Bool)

(assert (=> b!5062458 (=> (not res!2155593) (not e!3159638))))

(assert (=> b!5062458 (= res!2155593 (and (not (= (left!42810 (left!42810 ys!41)) Empty!15560)) (not (= (right!43140 (left!42810 ys!41)) Empty!15560))))))

(declare-fun b!5062459 () Bool)

(declare-fun res!2155594 () Bool)

(assert (=> b!5062459 (=> (not res!2155594) (not e!3159638))))

(assert (=> b!5062459 (= res!2155594 (= (cheight!15771 (left!42810 ys!41)) (+ (max!0 (height!2137 (left!42810 (left!42810 ys!41))) (height!2137 (right!43140 (left!42810 ys!41)))) 1)))))

(declare-fun b!5062460 () Bool)

(assert (=> b!5062460 (= e!3159638 (<= 0 (cheight!15771 (left!42810 ys!41))))))

(assert (= (and d!1631041 res!2155592) b!5062458))

(assert (= (and b!5062458 res!2155593) b!5062459))

(assert (= (and b!5062459 res!2155594) b!5062460))

(declare-fun m!6101742 () Bool)

(assert (=> d!1631041 m!6101742))

(declare-fun m!6101744 () Bool)

(assert (=> d!1631041 m!6101744))

(declare-fun m!6101746 () Bool)

(assert (=> b!5062459 m!6101746))

(declare-fun m!6101748 () Bool)

(assert (=> b!5062459 m!6101748))

(assert (=> b!5062459 m!6101746))

(assert (=> b!5062459 m!6101748))

(declare-fun m!6101750 () Bool)

(assert (=> b!5062459 m!6101750))

(assert (=> b!5062350 d!1631041))

(declare-fun d!1631043 () Bool)

(assert (=> d!1631043 (= (inv!77534 (xs!18904 (right!43140 xs!286))) (<= (size!39067 (innerList!15648 (xs!18904 (right!43140 xs!286)))) 2147483647))))

(declare-fun bs!1189700 () Bool)

(assert (= bs!1189700 d!1631043))

(declare-fun m!6101752 () Bool)

(assert (=> bs!1189700 m!6101752))

(assert (=> b!5062416 d!1631043))

(declare-fun d!1631045 () Bool)

(declare-fun res!2155595 () Bool)

(declare-fun e!3159639 () Bool)

(assert (=> d!1631045 (=> (not res!2155595) (not e!3159639))))

(assert (=> d!1631045 (= res!2155595 (= (csize!31350 ys!41) (+ (size!39068 (left!42810 ys!41)) (size!39068 (right!43140 ys!41)))))))

(assert (=> d!1631045 (= (inv!77537 ys!41) e!3159639)))

(declare-fun b!5062461 () Bool)

(declare-fun res!2155596 () Bool)

(assert (=> b!5062461 (=> (not res!2155596) (not e!3159639))))

(assert (=> b!5062461 (= res!2155596 (and (not (= (left!42810 ys!41) Empty!15560)) (not (= (right!43140 ys!41) Empty!15560))))))

(declare-fun b!5062462 () Bool)

(declare-fun res!2155597 () Bool)

(assert (=> b!5062462 (=> (not res!2155597) (not e!3159639))))

(assert (=> b!5062462 (= res!2155597 (= (cheight!15771 ys!41) (+ (max!0 (height!2137 (left!42810 ys!41)) (height!2137 (right!43140 ys!41))) 1)))))

(declare-fun b!5062463 () Bool)

(assert (=> b!5062463 (= e!3159639 (<= 0 (cheight!15771 ys!41)))))

(assert (= (and d!1631045 res!2155595) b!5062461))

(assert (= (and b!5062461 res!2155596) b!5062462))

(assert (= (and b!5062462 res!2155597) b!5062463))

(declare-fun m!6101754 () Bool)

(assert (=> d!1631045 m!6101754))

(declare-fun m!6101756 () Bool)

(assert (=> d!1631045 m!6101756))

(assert (=> b!5062462 m!6101568))

(assert (=> b!5062462 m!6101570))

(assert (=> b!5062462 m!6101568))

(assert (=> b!5062462 m!6101570))

(declare-fun m!6101758 () Bool)

(assert (=> b!5062462 m!6101758))

(assert (=> b!5062341 d!1631045))

(declare-fun d!1631047 () Bool)

(declare-fun lt!2088323 () Bool)

(assert (=> d!1631047 (= lt!2088323 (isEmpty!31624 (list!18981 (left!42810 ys!41))))))

(assert (=> d!1631047 (= lt!2088323 (= (size!39068 (left!42810 ys!41)) 0))))

(assert (=> d!1631047 (= (isEmpty!31623 (left!42810 ys!41)) lt!2088323)))

(declare-fun bs!1189701 () Bool)

(assert (= bs!1189701 d!1631047))

(declare-fun m!6101760 () Bool)

(assert (=> bs!1189701 m!6101760))

(assert (=> bs!1189701 m!6101760))

(declare-fun m!6101762 () Bool)

(assert (=> bs!1189701 m!6101762))

(assert (=> bs!1189701 m!6101754))

(assert (=> b!5062312 d!1631047))

(declare-fun d!1631049 () Bool)

(declare-fun res!2155598 () Bool)

(declare-fun e!3159640 () Bool)

(assert (=> d!1631049 (=> (not res!2155598) (not e!3159640))))

(assert (=> d!1631049 (= res!2155598 (= (csize!31350 (right!43140 xs!286)) (+ (size!39068 (left!42810 (right!43140 xs!286))) (size!39068 (right!43140 (right!43140 xs!286))))))))

(assert (=> d!1631049 (= (inv!77537 (right!43140 xs!286)) e!3159640)))

(declare-fun b!5062464 () Bool)

(declare-fun res!2155599 () Bool)

(assert (=> b!5062464 (=> (not res!2155599) (not e!3159640))))

(assert (=> b!5062464 (= res!2155599 (and (not (= (left!42810 (right!43140 xs!286)) Empty!15560)) (not (= (right!43140 (right!43140 xs!286)) Empty!15560))))))

(declare-fun b!5062465 () Bool)

(declare-fun res!2155600 () Bool)

(assert (=> b!5062465 (=> (not res!2155600) (not e!3159640))))

(assert (=> b!5062465 (= res!2155600 (= (cheight!15771 (right!43140 xs!286)) (+ (max!0 (height!2137 (left!42810 (right!43140 xs!286))) (height!2137 (right!43140 (right!43140 xs!286)))) 1)))))

(declare-fun b!5062466 () Bool)

(assert (=> b!5062466 (= e!3159640 (<= 0 (cheight!15771 (right!43140 xs!286))))))

(assert (= (and d!1631049 res!2155598) b!5062464))

(assert (= (and b!5062464 res!2155599) b!5062465))

(assert (= (and b!5062465 res!2155600) b!5062466))

(declare-fun m!6101764 () Bool)

(assert (=> d!1631049 m!6101764))

(declare-fun m!6101766 () Bool)

(assert (=> d!1631049 m!6101766))

(assert (=> b!5062465 m!6101698))

(assert (=> b!5062465 m!6101520))

(assert (=> b!5062465 m!6101698))

(assert (=> b!5062465 m!6101520))

(declare-fun m!6101768 () Bool)

(assert (=> b!5062465 m!6101768))

(assert (=> b!5062362 d!1631049))

(declare-fun d!1631051 () Bool)

(declare-fun res!2155601 () Bool)

(declare-fun e!3159641 () Bool)

(assert (=> d!1631051 (=> (not res!2155601) (not e!3159641))))

(assert (=> d!1631051 (= res!2155601 (= (csize!31350 (right!43140 ys!41)) (+ (size!39068 (left!42810 (right!43140 ys!41))) (size!39068 (right!43140 (right!43140 ys!41))))))))

(assert (=> d!1631051 (= (inv!77537 (right!43140 ys!41)) e!3159641)))

(declare-fun b!5062467 () Bool)

(declare-fun res!2155602 () Bool)

(assert (=> b!5062467 (=> (not res!2155602) (not e!3159641))))

(assert (=> b!5062467 (= res!2155602 (and (not (= (left!42810 (right!43140 ys!41)) Empty!15560)) (not (= (right!43140 (right!43140 ys!41)) Empty!15560))))))

(declare-fun b!5062468 () Bool)

(declare-fun res!2155603 () Bool)

(assert (=> b!5062468 (=> (not res!2155603) (not e!3159641))))

(assert (=> b!5062468 (= res!2155603 (= (cheight!15771 (right!43140 ys!41)) (+ (max!0 (height!2137 (left!42810 (right!43140 ys!41))) (height!2137 (right!43140 (right!43140 ys!41)))) 1)))))

(declare-fun b!5062469 () Bool)

(assert (=> b!5062469 (= e!3159641 (<= 0 (cheight!15771 (right!43140 ys!41))))))

(assert (= (and d!1631051 res!2155601) b!5062467))

(assert (= (and b!5062467 res!2155602) b!5062468))

(assert (= (and b!5062468 res!2155603) b!5062469))

(declare-fun m!6101770 () Bool)

(assert (=> d!1631051 m!6101770))

(declare-fun m!6101772 () Bool)

(assert (=> d!1631051 m!6101772))

(declare-fun m!6101774 () Bool)

(assert (=> b!5062468 m!6101774))

(declare-fun m!6101776 () Bool)

(assert (=> b!5062468 m!6101776))

(assert (=> b!5062468 m!6101774))

(assert (=> b!5062468 m!6101776))

(declare-fun m!6101778 () Bool)

(assert (=> b!5062468 m!6101778))

(assert (=> b!5062353 d!1631051))

(declare-fun d!1631053 () Bool)

(declare-fun lt!2088324 () Int)

(assert (=> d!1631053 (>= lt!2088324 0)))

(declare-fun e!3159642 () Int)

(assert (=> d!1631053 (= lt!2088324 e!3159642)))

(declare-fun c!868789 () Bool)

(assert (=> d!1631053 (= c!868789 ((_ is Nil!58430) (innerList!15648 (xs!18904 ys!41))))))

(assert (=> d!1631053 (= (size!39067 (innerList!15648 (xs!18904 ys!41))) lt!2088324)))

(declare-fun b!5062470 () Bool)

(assert (=> b!5062470 (= e!3159642 0)))

(declare-fun b!5062471 () Bool)

(assert (=> b!5062471 (= e!3159642 (+ 1 (size!39067 (t!371267 (innerList!15648 (xs!18904 ys!41))))))))

(assert (= (and d!1631053 c!868789) b!5062470))

(assert (= (and d!1631053 (not c!868789)) b!5062471))

(declare-fun m!6101780 () Bool)

(assert (=> b!5062471 m!6101780))

(assert (=> d!1631005 d!1631053))

(declare-fun d!1631055 () Bool)

(declare-fun res!2155609 () Bool)

(declare-fun e!3159644 () Bool)

(assert (=> d!1631055 (=> res!2155609 e!3159644)))

(assert (=> d!1631055 (= res!2155609 (not ((_ is Node!15560) (left!42810 ys!41))))))

(assert (=> d!1631055 (= (isBalanced!4422 (left!42810 ys!41)) e!3159644)))

(declare-fun b!5062472 () Bool)

(declare-fun res!2155604 () Bool)

(declare-fun e!3159643 () Bool)

(assert (=> b!5062472 (=> (not res!2155604) (not e!3159643))))

(assert (=> b!5062472 (= res!2155604 (isBalanced!4422 (right!43140 (left!42810 ys!41))))))

(declare-fun b!5062473 () Bool)

(assert (=> b!5062473 (= e!3159643 (not (isEmpty!31623 (right!43140 (left!42810 ys!41)))))))

(declare-fun b!5062474 () Bool)

(assert (=> b!5062474 (= e!3159644 e!3159643)))

(declare-fun res!2155606 () Bool)

(assert (=> b!5062474 (=> (not res!2155606) (not e!3159643))))

(assert (=> b!5062474 (= res!2155606 (<= (- 1) (- (height!2137 (left!42810 (left!42810 ys!41))) (height!2137 (right!43140 (left!42810 ys!41))))))))

(declare-fun b!5062475 () Bool)

(declare-fun res!2155607 () Bool)

(assert (=> b!5062475 (=> (not res!2155607) (not e!3159643))))

(assert (=> b!5062475 (= res!2155607 (<= (- (height!2137 (left!42810 (left!42810 ys!41))) (height!2137 (right!43140 (left!42810 ys!41)))) 1))))

(declare-fun b!5062476 () Bool)

(declare-fun res!2155608 () Bool)

(assert (=> b!5062476 (=> (not res!2155608) (not e!3159643))))

(assert (=> b!5062476 (= res!2155608 (not (isEmpty!31623 (left!42810 (left!42810 ys!41)))))))

(declare-fun b!5062477 () Bool)

(declare-fun res!2155605 () Bool)

(assert (=> b!5062477 (=> (not res!2155605) (not e!3159643))))

(assert (=> b!5062477 (= res!2155605 (isBalanced!4422 (left!42810 (left!42810 ys!41))))))

(assert (= (and d!1631055 (not res!2155609)) b!5062474))

(assert (= (and b!5062474 res!2155606) b!5062475))

(assert (= (and b!5062475 res!2155607) b!5062477))

(assert (= (and b!5062477 res!2155605) b!5062472))

(assert (= (and b!5062472 res!2155604) b!5062476))

(assert (= (and b!5062476 res!2155608) b!5062473))

(assert (=> b!5062475 m!6101746))

(assert (=> b!5062475 m!6101748))

(declare-fun m!6101782 () Bool)

(assert (=> b!5062473 m!6101782))

(declare-fun m!6101784 () Bool)

(assert (=> b!5062472 m!6101784))

(assert (=> b!5062474 m!6101746))

(assert (=> b!5062474 m!6101748))

(declare-fun m!6101786 () Bool)

(assert (=> b!5062476 m!6101786))

(declare-fun m!6101788 () Bool)

(assert (=> b!5062477 m!6101788))

(assert (=> b!5062313 d!1631055))

(assert (=> b!5062274 d!1630993))

(assert (=> b!5062274 d!1630995))

(declare-fun d!1631057 () Bool)

(declare-fun res!2155610 () Bool)

(declare-fun e!3159645 () Bool)

(assert (=> d!1631057 (=> (not res!2155610) (not e!3159645))))

(assert (=> d!1631057 (= res!2155610 (<= (size!39067 (list!18980 (xs!18904 ys!41))) 512))))

(assert (=> d!1631057 (= (inv!77538 ys!41) e!3159645)))

(declare-fun b!5062478 () Bool)

(declare-fun res!2155611 () Bool)

(assert (=> b!5062478 (=> (not res!2155611) (not e!3159645))))

(assert (=> b!5062478 (= res!2155611 (= (csize!31351 ys!41) (size!39067 (list!18980 (xs!18904 ys!41)))))))

(declare-fun b!5062479 () Bool)

(assert (=> b!5062479 (= e!3159645 (and (> (csize!31351 ys!41) 0) (<= (csize!31351 ys!41) 512)))))

(assert (= (and d!1631057 res!2155610) b!5062478))

(assert (= (and b!5062478 res!2155611) b!5062479))

(declare-fun m!6101790 () Bool)

(assert (=> d!1631057 m!6101790))

(assert (=> d!1631057 m!6101790))

(declare-fun m!6101792 () Bool)

(assert (=> d!1631057 m!6101792))

(assert (=> b!5062478 m!6101790))

(assert (=> b!5062478 m!6101790))

(assert (=> b!5062478 m!6101792))

(assert (=> b!5062343 d!1631057))

(declare-fun d!1631059 () Bool)

(declare-fun res!2155612 () Bool)

(declare-fun e!3159646 () Bool)

(assert (=> d!1631059 (=> (not res!2155612) (not e!3159646))))

(assert (=> d!1631059 (= res!2155612 (<= (size!39067 (list!18980 (xs!18904 (right!43140 xs!286)))) 512))))

(assert (=> d!1631059 (= (inv!77538 (right!43140 xs!286)) e!3159646)))

(declare-fun b!5062480 () Bool)

(declare-fun res!2155613 () Bool)

(assert (=> b!5062480 (=> (not res!2155613) (not e!3159646))))

(assert (=> b!5062480 (= res!2155613 (= (csize!31351 (right!43140 xs!286)) (size!39067 (list!18980 (xs!18904 (right!43140 xs!286))))))))

(declare-fun b!5062481 () Bool)

(assert (=> b!5062481 (= e!3159646 (and (> (csize!31351 (right!43140 xs!286)) 0) (<= (csize!31351 (right!43140 xs!286)) 512)))))

(assert (= (and d!1631059 res!2155612) b!5062480))

(assert (= (and b!5062480 res!2155613) b!5062481))

(declare-fun m!6101794 () Bool)

(assert (=> d!1631059 m!6101794))

(assert (=> d!1631059 m!6101794))

(declare-fun m!6101796 () Bool)

(assert (=> d!1631059 m!6101796))

(assert (=> b!5062480 m!6101794))

(assert (=> b!5062480 m!6101794))

(assert (=> b!5062480 m!6101796))

(assert (=> b!5062364 d!1631059))

(declare-fun d!1631061 () Bool)

(declare-fun res!2155614 () Bool)

(declare-fun e!3159647 () Bool)

(assert (=> d!1631061 (=> (not res!2155614) (not e!3159647))))

(assert (=> d!1631061 (= res!2155614 (<= (size!39067 (list!18980 (xs!18904 (right!43140 ys!41)))) 512))))

(assert (=> d!1631061 (= (inv!77538 (right!43140 ys!41)) e!3159647)))

(declare-fun b!5062482 () Bool)

(declare-fun res!2155615 () Bool)

(assert (=> b!5062482 (=> (not res!2155615) (not e!3159647))))

(assert (=> b!5062482 (= res!2155615 (= (csize!31351 (right!43140 ys!41)) (size!39067 (list!18980 (xs!18904 (right!43140 ys!41))))))))

(declare-fun b!5062483 () Bool)

(assert (=> b!5062483 (= e!3159647 (and (> (csize!31351 (right!43140 ys!41)) 0) (<= (csize!31351 (right!43140 ys!41)) 512)))))

(assert (= (and d!1631061 res!2155614) b!5062482))

(assert (= (and b!5062482 res!2155615) b!5062483))

(declare-fun m!6101798 () Bool)

(assert (=> d!1631061 m!6101798))

(assert (=> d!1631061 m!6101798))

(declare-fun m!6101800 () Bool)

(assert (=> d!1631061 m!6101800))

(assert (=> b!5062482 m!6101798))

(assert (=> b!5062482 m!6101798))

(assert (=> b!5062482 m!6101800))

(assert (=> b!5062355 d!1631061))

(declare-fun d!1631063 () Bool)

(declare-fun res!2155616 () Bool)

(declare-fun e!3159648 () Bool)

(assert (=> d!1631063 (=> (not res!2155616) (not e!3159648))))

(assert (=> d!1631063 (= res!2155616 (<= (size!39067 (list!18980 (xs!18904 (left!42810 xs!286)))) 512))))

(assert (=> d!1631063 (= (inv!77538 (left!42810 xs!286)) e!3159648)))

(declare-fun b!5062484 () Bool)

(declare-fun res!2155617 () Bool)

(assert (=> b!5062484 (=> (not res!2155617) (not e!3159648))))

(assert (=> b!5062484 (= res!2155617 (= (csize!31351 (left!42810 xs!286)) (size!39067 (list!18980 (xs!18904 (left!42810 xs!286))))))))

(declare-fun b!5062485 () Bool)

(assert (=> b!5062485 (= e!3159648 (and (> (csize!31351 (left!42810 xs!286)) 0) (<= (csize!31351 (left!42810 xs!286)) 512)))))

(assert (= (and d!1631063 res!2155616) b!5062484))

(assert (= (and b!5062484 res!2155617) b!5062485))

(declare-fun m!6101802 () Bool)

(assert (=> d!1631063 m!6101802))

(assert (=> d!1631063 m!6101802))

(declare-fun m!6101804 () Bool)

(assert (=> d!1631063 m!6101804))

(assert (=> b!5062484 m!6101802))

(assert (=> b!5062484 m!6101802))

(assert (=> b!5062484 m!6101804))

(assert (=> b!5062358 d!1631063))

(declare-fun d!1631065 () Bool)

(declare-fun c!868790 () Bool)

(assert (=> d!1631065 (= c!868790 ((_ is Node!15560) (left!42810 (left!42810 ys!41))))))

(declare-fun e!3159649 () Bool)

(assert (=> d!1631065 (= (inv!77533 (left!42810 (left!42810 ys!41))) e!3159649)))

(declare-fun b!5062486 () Bool)

(assert (=> b!5062486 (= e!3159649 (inv!77537 (left!42810 (left!42810 ys!41))))))

(declare-fun b!5062487 () Bool)

(declare-fun e!3159650 () Bool)

(assert (=> b!5062487 (= e!3159649 e!3159650)))

(declare-fun res!2155618 () Bool)

(assert (=> b!5062487 (= res!2155618 (not ((_ is Leaf!25845) (left!42810 (left!42810 ys!41)))))))

(assert (=> b!5062487 (=> res!2155618 e!3159650)))

(declare-fun b!5062488 () Bool)

(assert (=> b!5062488 (= e!3159650 (inv!77538 (left!42810 (left!42810 ys!41))))))

(assert (= (and d!1631065 c!868790) b!5062486))

(assert (= (and d!1631065 (not c!868790)) b!5062487))

(assert (= (and b!5062487 (not res!2155618)) b!5062488))

(declare-fun m!6101806 () Bool)

(assert (=> b!5062486 m!6101806))

(declare-fun m!6101808 () Bool)

(assert (=> b!5062488 m!6101808))

(assert (=> b!5062400 d!1631065))

(declare-fun d!1631067 () Bool)

(declare-fun c!868791 () Bool)

(assert (=> d!1631067 (= c!868791 ((_ is Node!15560) (right!43140 (left!42810 ys!41))))))

(declare-fun e!3159651 () Bool)

(assert (=> d!1631067 (= (inv!77533 (right!43140 (left!42810 ys!41))) e!3159651)))

(declare-fun b!5062489 () Bool)

(assert (=> b!5062489 (= e!3159651 (inv!77537 (right!43140 (left!42810 ys!41))))))

(declare-fun b!5062490 () Bool)

(declare-fun e!3159652 () Bool)

(assert (=> b!5062490 (= e!3159651 e!3159652)))

(declare-fun res!2155619 () Bool)

(assert (=> b!5062490 (= res!2155619 (not ((_ is Leaf!25845) (right!43140 (left!42810 ys!41)))))))

(assert (=> b!5062490 (=> res!2155619 e!3159652)))

(declare-fun b!5062491 () Bool)

(assert (=> b!5062491 (= e!3159652 (inv!77538 (right!43140 (left!42810 ys!41))))))

(assert (= (and d!1631067 c!868791) b!5062489))

(assert (= (and d!1631067 (not c!868791)) b!5062490))

(assert (= (and b!5062490 (not res!2155619)) b!5062491))

(declare-fun m!6101810 () Bool)

(assert (=> b!5062489 m!6101810))

(declare-fun m!6101812 () Bool)

(assert (=> b!5062491 m!6101812))

(assert (=> b!5062400 d!1631067))

(declare-fun d!1631069 () Bool)

(declare-fun res!2155625 () Bool)

(declare-fun e!3159654 () Bool)

(assert (=> d!1631069 (=> res!2155625 e!3159654)))

(assert (=> d!1631069 (= res!2155625 (not ((_ is Node!15560) (left!42810 xs!286))))))

(assert (=> d!1631069 (= (isBalanced!4422 (left!42810 xs!286)) e!3159654)))

(declare-fun b!5062492 () Bool)

(declare-fun res!2155620 () Bool)

(declare-fun e!3159653 () Bool)

(assert (=> b!5062492 (=> (not res!2155620) (not e!3159653))))

(assert (=> b!5062492 (= res!2155620 (isBalanced!4422 (right!43140 (left!42810 xs!286))))))

(declare-fun b!5062493 () Bool)

(assert (=> b!5062493 (= e!3159653 (not (isEmpty!31623 (right!43140 (left!42810 xs!286)))))))

(declare-fun b!5062494 () Bool)

(assert (=> b!5062494 (= e!3159654 e!3159653)))

(declare-fun res!2155622 () Bool)

(assert (=> b!5062494 (=> (not res!2155622) (not e!3159653))))

(assert (=> b!5062494 (= res!2155622 (<= (- 1) (- (height!2137 (left!42810 (left!42810 xs!286))) (height!2137 (right!43140 (left!42810 xs!286))))))))

(declare-fun b!5062495 () Bool)

(declare-fun res!2155623 () Bool)

(assert (=> b!5062495 (=> (not res!2155623) (not e!3159653))))

(assert (=> b!5062495 (= res!2155623 (<= (- (height!2137 (left!42810 (left!42810 xs!286))) (height!2137 (right!43140 (left!42810 xs!286)))) 1))))

(declare-fun b!5062496 () Bool)

(declare-fun res!2155624 () Bool)

(assert (=> b!5062496 (=> (not res!2155624) (not e!3159653))))

(assert (=> b!5062496 (= res!2155624 (not (isEmpty!31623 (left!42810 (left!42810 xs!286)))))))

(declare-fun b!5062497 () Bool)

(declare-fun res!2155621 () Bool)

(assert (=> b!5062497 (=> (not res!2155621) (not e!3159653))))

(assert (=> b!5062497 (= res!2155621 (isBalanced!4422 (left!42810 (left!42810 xs!286))))))

(assert (= (and d!1631069 (not res!2155625)) b!5062494))

(assert (= (and b!5062494 res!2155622) b!5062495))

(assert (= (and b!5062495 res!2155623) b!5062497))

(assert (= (and b!5062497 res!2155621) b!5062492))

(assert (= (and b!5062492 res!2155620) b!5062496))

(assert (= (and b!5062496 res!2155624) b!5062493))

(assert (=> b!5062495 m!6101728))

(assert (=> b!5062495 m!6101730))

(declare-fun m!6101814 () Bool)

(assert (=> b!5062493 m!6101814))

(declare-fun m!6101816 () Bool)

(assert (=> b!5062492 m!6101816))

(assert (=> b!5062494 m!6101728))

(assert (=> b!5062494 m!6101730))

(declare-fun m!6101818 () Bool)

(assert (=> b!5062496 m!6101818))

(declare-fun m!6101820 () Bool)

(assert (=> b!5062497 m!6101820))

(assert (=> b!5062319 d!1631069))

(declare-fun d!1631071 () Bool)

(declare-fun c!868792 () Bool)

(assert (=> d!1631071 (= c!868792 ((_ is Node!15560) (left!42810 (left!42810 xs!286))))))

(declare-fun e!3159655 () Bool)

(assert (=> d!1631071 (= (inv!77533 (left!42810 (left!42810 xs!286))) e!3159655)))

(declare-fun b!5062498 () Bool)

(assert (=> b!5062498 (= e!3159655 (inv!77537 (left!42810 (left!42810 xs!286))))))

(declare-fun b!5062499 () Bool)

(declare-fun e!3159656 () Bool)

(assert (=> b!5062499 (= e!3159655 e!3159656)))

(declare-fun res!2155626 () Bool)

(assert (=> b!5062499 (= res!2155626 (not ((_ is Leaf!25845) (left!42810 (left!42810 xs!286)))))))

(assert (=> b!5062499 (=> res!2155626 e!3159656)))

(declare-fun b!5062500 () Bool)

(assert (=> b!5062500 (= e!3159656 (inv!77538 (left!42810 (left!42810 xs!286))))))

(assert (= (and d!1631071 c!868792) b!5062498))

(assert (= (and d!1631071 (not c!868792)) b!5062499))

(assert (= (and b!5062499 (not res!2155626)) b!5062500))

(declare-fun m!6101822 () Bool)

(assert (=> b!5062498 m!6101822))

(declare-fun m!6101824 () Bool)

(assert (=> b!5062500 m!6101824))

(assert (=> b!5062409 d!1631071))

(declare-fun d!1631073 () Bool)

(declare-fun c!868793 () Bool)

(assert (=> d!1631073 (= c!868793 ((_ is Node!15560) (right!43140 (left!42810 xs!286))))))

(declare-fun e!3159657 () Bool)

(assert (=> d!1631073 (= (inv!77533 (right!43140 (left!42810 xs!286))) e!3159657)))

(declare-fun b!5062501 () Bool)

(assert (=> b!5062501 (= e!3159657 (inv!77537 (right!43140 (left!42810 xs!286))))))

(declare-fun b!5062502 () Bool)

(declare-fun e!3159658 () Bool)

(assert (=> b!5062502 (= e!3159657 e!3159658)))

(declare-fun res!2155627 () Bool)

(assert (=> b!5062502 (= res!2155627 (not ((_ is Leaf!25845) (right!43140 (left!42810 xs!286)))))))

(assert (=> b!5062502 (=> res!2155627 e!3159658)))

(declare-fun b!5062503 () Bool)

(assert (=> b!5062503 (= e!3159658 (inv!77538 (right!43140 (left!42810 xs!286))))))

(assert (= (and d!1631073 c!868793) b!5062501))

(assert (= (and d!1631073 (not c!868793)) b!5062502))

(assert (= (and b!5062502 (not res!2155627)) b!5062503))

(declare-fun m!6101826 () Bool)

(assert (=> b!5062501 m!6101826))

(declare-fun m!6101828 () Bool)

(assert (=> b!5062503 m!6101828))

(assert (=> b!5062409 d!1631073))

(declare-fun d!1631075 () Bool)

(assert (=> d!1631075 (= (inv!77534 (xs!18904 (left!42810 ys!41))) (<= (size!39067 (innerList!15648 (xs!18904 (left!42810 ys!41)))) 2147483647))))

(declare-fun bs!1189702 () Bool)

(assert (= bs!1189702 d!1631075))

(declare-fun m!6101830 () Bool)

(assert (=> bs!1189702 m!6101830))

(assert (=> b!5062401 d!1631075))

(declare-fun d!1631077 () Bool)

(declare-fun res!2155633 () Bool)

(declare-fun e!3159660 () Bool)

(assert (=> d!1631077 (=> res!2155633 e!3159660)))

(assert (=> d!1631077 (= res!2155633 (not ((_ is Node!15560) (right!43140 ys!41))))))

(assert (=> d!1631077 (= (isBalanced!4422 (right!43140 ys!41)) e!3159660)))

(declare-fun b!5062504 () Bool)

(declare-fun res!2155628 () Bool)

(declare-fun e!3159659 () Bool)

(assert (=> b!5062504 (=> (not res!2155628) (not e!3159659))))

(assert (=> b!5062504 (= res!2155628 (isBalanced!4422 (right!43140 (right!43140 ys!41))))))

(declare-fun b!5062505 () Bool)

(assert (=> b!5062505 (= e!3159659 (not (isEmpty!31623 (right!43140 (right!43140 ys!41)))))))

(declare-fun b!5062506 () Bool)

(assert (=> b!5062506 (= e!3159660 e!3159659)))

(declare-fun res!2155630 () Bool)

(assert (=> b!5062506 (=> (not res!2155630) (not e!3159659))))

(assert (=> b!5062506 (= res!2155630 (<= (- 1) (- (height!2137 (left!42810 (right!43140 ys!41))) (height!2137 (right!43140 (right!43140 ys!41))))))))

(declare-fun b!5062507 () Bool)

(declare-fun res!2155631 () Bool)

(assert (=> b!5062507 (=> (not res!2155631) (not e!3159659))))

(assert (=> b!5062507 (= res!2155631 (<= (- (height!2137 (left!42810 (right!43140 ys!41))) (height!2137 (right!43140 (right!43140 ys!41)))) 1))))

(declare-fun b!5062508 () Bool)

(declare-fun res!2155632 () Bool)

(assert (=> b!5062508 (=> (not res!2155632) (not e!3159659))))

(assert (=> b!5062508 (= res!2155632 (not (isEmpty!31623 (left!42810 (right!43140 ys!41)))))))

(declare-fun b!5062509 () Bool)

(declare-fun res!2155629 () Bool)

(assert (=> b!5062509 (=> (not res!2155629) (not e!3159659))))

(assert (=> b!5062509 (= res!2155629 (isBalanced!4422 (left!42810 (right!43140 ys!41))))))

(assert (= (and d!1631077 (not res!2155633)) b!5062506))

(assert (= (and b!5062506 res!2155630) b!5062507))

(assert (= (and b!5062507 res!2155631) b!5062509))

(assert (= (and b!5062509 res!2155629) b!5062504))

(assert (= (and b!5062504 res!2155628) b!5062508))

(assert (= (and b!5062508 res!2155632) b!5062505))

(assert (=> b!5062507 m!6101774))

(assert (=> b!5062507 m!6101776))

(declare-fun m!6101832 () Bool)

(assert (=> b!5062505 m!6101832))

(declare-fun m!6101834 () Bool)

(assert (=> b!5062504 m!6101834))

(assert (=> b!5062506 m!6101774))

(assert (=> b!5062506 m!6101776))

(declare-fun m!6101836 () Bool)

(assert (=> b!5062508 m!6101836))

(declare-fun m!6101838 () Bool)

(assert (=> b!5062509 m!6101838))

(assert (=> b!5062308 d!1631077))

(declare-fun d!1631079 () Bool)

(assert (=> d!1631079 (= (inv!77534 (xs!18904 (left!42810 xs!286))) (<= (size!39067 (innerList!15648 (xs!18904 (left!42810 xs!286)))) 2147483647))))

(declare-fun bs!1189703 () Bool)

(assert (= bs!1189703 d!1631079))

(declare-fun m!6101840 () Bool)

(assert (=> bs!1189703 m!6101840))

(assert (=> b!5062410 d!1631079))

(declare-fun d!1631081 () Bool)

(declare-fun c!868794 () Bool)

(assert (=> d!1631081 (= c!868794 ((_ is Node!15560) (left!42810 (right!43140 ys!41))))))

(declare-fun e!3159661 () Bool)

(assert (=> d!1631081 (= (inv!77533 (left!42810 (right!43140 ys!41))) e!3159661)))

(declare-fun b!5062510 () Bool)

(assert (=> b!5062510 (= e!3159661 (inv!77537 (left!42810 (right!43140 ys!41))))))

(declare-fun b!5062511 () Bool)

(declare-fun e!3159662 () Bool)

(assert (=> b!5062511 (= e!3159661 e!3159662)))

(declare-fun res!2155634 () Bool)

(assert (=> b!5062511 (= res!2155634 (not ((_ is Leaf!25845) (left!42810 (right!43140 ys!41)))))))

(assert (=> b!5062511 (=> res!2155634 e!3159662)))

(declare-fun b!5062512 () Bool)

(assert (=> b!5062512 (= e!3159662 (inv!77538 (left!42810 (right!43140 ys!41))))))

(assert (= (and d!1631081 c!868794) b!5062510))

(assert (= (and d!1631081 (not c!868794)) b!5062511))

(assert (= (and b!5062511 (not res!2155634)) b!5062512))

(declare-fun m!6101842 () Bool)

(assert (=> b!5062510 m!6101842))

(declare-fun m!6101844 () Bool)

(assert (=> b!5062512 m!6101844))

(assert (=> b!5062406 d!1631081))

(declare-fun d!1631083 () Bool)

(declare-fun c!868795 () Bool)

(assert (=> d!1631083 (= c!868795 ((_ is Node!15560) (right!43140 (right!43140 ys!41))))))

(declare-fun e!3159663 () Bool)

(assert (=> d!1631083 (= (inv!77533 (right!43140 (right!43140 ys!41))) e!3159663)))

(declare-fun b!5062513 () Bool)

(assert (=> b!5062513 (= e!3159663 (inv!77537 (right!43140 (right!43140 ys!41))))))

(declare-fun b!5062514 () Bool)

(declare-fun e!3159664 () Bool)

(assert (=> b!5062514 (= e!3159663 e!3159664)))

(declare-fun res!2155635 () Bool)

(assert (=> b!5062514 (= res!2155635 (not ((_ is Leaf!25845) (right!43140 (right!43140 ys!41)))))))

(assert (=> b!5062514 (=> res!2155635 e!3159664)))

(declare-fun b!5062515 () Bool)

(assert (=> b!5062515 (= e!3159664 (inv!77538 (right!43140 (right!43140 ys!41))))))

(assert (= (and d!1631083 c!868795) b!5062513))

(assert (= (and d!1631083 (not c!868795)) b!5062514))

(assert (= (and b!5062514 (not res!2155635)) b!5062515))

(declare-fun m!6101846 () Bool)

(assert (=> b!5062513 m!6101846))

(declare-fun m!6101848 () Bool)

(assert (=> b!5062515 m!6101848))

(assert (=> b!5062406 d!1631083))

(declare-fun d!1631085 () Bool)

(declare-fun lt!2088325 () Bool)

(assert (=> d!1631085 (= lt!2088325 (isEmpty!31624 (list!18981 (right!43140 ys!41))))))

(assert (=> d!1631085 (= lt!2088325 (= (size!39068 (right!43140 ys!41)) 0))))

(assert (=> d!1631085 (= (isEmpty!31623 (right!43140 ys!41)) lt!2088325)))

(declare-fun bs!1189704 () Bool)

(assert (= bs!1189704 d!1631085))

(declare-fun m!6101850 () Bool)

(assert (=> bs!1189704 m!6101850))

(assert (=> bs!1189704 m!6101850))

(declare-fun m!6101852 () Bool)

(assert (=> bs!1189704 m!6101852))

(assert (=> bs!1189704 m!6101756))

(assert (=> b!5062309 d!1631085))

(assert (=> b!5062268 d!1630997))

(assert (=> b!5062268 d!1631001))

(declare-fun d!1631087 () Bool)

(assert (=> d!1631087 (= (inv!77534 (xs!18904 (right!43140 ys!41))) (<= (size!39067 (innerList!15648 (xs!18904 (right!43140 ys!41)))) 2147483647))))

(declare-fun bs!1189705 () Bool)

(assert (= bs!1189705 d!1631087))

(declare-fun m!6101854 () Bool)

(assert (=> bs!1189705 m!6101854))

(assert (=> b!5062407 d!1631087))

(declare-fun d!1631089 () Bool)

(assert (=> d!1631089 (= (height!2137 (left!42810 ys!41)) (ite ((_ is Empty!15560) (left!42810 ys!41)) 0 (ite ((_ is Leaf!25845) (left!42810 ys!41)) 1 (cheight!15771 (left!42810 ys!41)))))))

(assert (=> b!5062311 d!1631089))

(declare-fun d!1631091 () Bool)

(assert (=> d!1631091 (= (height!2137 (right!43140 ys!41)) (ite ((_ is Empty!15560) (right!43140 ys!41)) 0 (ite ((_ is Leaf!25845) (right!43140 ys!41)) 1 (cheight!15771 (right!43140 ys!41)))))))

(assert (=> b!5062311 d!1631091))

(declare-fun d!1631093 () Bool)

(declare-fun c!868796 () Bool)

(assert (=> d!1631093 (= c!868796 ((_ is Node!15560) (left!42810 (right!43140 xs!286))))))

(declare-fun e!3159665 () Bool)

(assert (=> d!1631093 (= (inv!77533 (left!42810 (right!43140 xs!286))) e!3159665)))

(declare-fun b!5062516 () Bool)

(assert (=> b!5062516 (= e!3159665 (inv!77537 (left!42810 (right!43140 xs!286))))))

(declare-fun b!5062517 () Bool)

(declare-fun e!3159666 () Bool)

(assert (=> b!5062517 (= e!3159665 e!3159666)))

(declare-fun res!2155636 () Bool)

(assert (=> b!5062517 (= res!2155636 (not ((_ is Leaf!25845) (left!42810 (right!43140 xs!286)))))))

(assert (=> b!5062517 (=> res!2155636 e!3159666)))

(declare-fun b!5062518 () Bool)

(assert (=> b!5062518 (= e!3159666 (inv!77538 (left!42810 (right!43140 xs!286))))))

(assert (= (and d!1631093 c!868796) b!5062516))

(assert (= (and d!1631093 (not c!868796)) b!5062517))

(assert (= (and b!5062517 (not res!2155636)) b!5062518))

(declare-fun m!6101856 () Bool)

(assert (=> b!5062516 m!6101856))

(declare-fun m!6101858 () Bool)

(assert (=> b!5062518 m!6101858))

(assert (=> b!5062415 d!1631093))

(declare-fun d!1631095 () Bool)

(declare-fun c!868797 () Bool)

(assert (=> d!1631095 (= c!868797 ((_ is Node!15560) (right!43140 (right!43140 xs!286))))))

(declare-fun e!3159667 () Bool)

(assert (=> d!1631095 (= (inv!77533 (right!43140 (right!43140 xs!286))) e!3159667)))

(declare-fun b!5062519 () Bool)

(assert (=> b!5062519 (= e!3159667 (inv!77537 (right!43140 (right!43140 xs!286))))))

(declare-fun b!5062520 () Bool)

(declare-fun e!3159668 () Bool)

(assert (=> b!5062520 (= e!3159667 e!3159668)))

(declare-fun res!2155637 () Bool)

(assert (=> b!5062520 (= res!2155637 (not ((_ is Leaf!25845) (right!43140 (right!43140 xs!286)))))))

(assert (=> b!5062520 (=> res!2155637 e!3159668)))

(declare-fun b!5062521 () Bool)

(assert (=> b!5062521 (= e!3159668 (inv!77538 (right!43140 (right!43140 xs!286))))))

(assert (= (and d!1631095 c!868797) b!5062519))

(assert (= (and d!1631095 (not c!868797)) b!5062520))

(assert (= (and b!5062520 (not res!2155637)) b!5062521))

(declare-fun m!6101860 () Bool)

(assert (=> b!5062519 m!6101860))

(declare-fun m!6101862 () Bool)

(assert (=> b!5062521 m!6101862))

(assert (=> b!5062415 d!1631095))

(assert (=> b!5062310 d!1631089))

(assert (=> b!5062310 d!1631091))

(declare-fun tp!1414246 () Bool)

(declare-fun b!5062522 () Bool)

(declare-fun e!3159670 () Bool)

(declare-fun tp!1414248 () Bool)

(assert (=> b!5062522 (= e!3159670 (and (inv!77533 (left!42810 (left!42810 (left!42810 ys!41)))) tp!1414246 (inv!77533 (right!43140 (left!42810 (left!42810 ys!41)))) tp!1414248))))

(declare-fun b!5062524 () Bool)

(declare-fun e!3159669 () Bool)

(declare-fun tp!1414247 () Bool)

(assert (=> b!5062524 (= e!3159669 tp!1414247)))

(declare-fun b!5062523 () Bool)

(assert (=> b!5062523 (= e!3159670 (and (inv!77534 (xs!18904 (left!42810 (left!42810 ys!41)))) e!3159669))))

(assert (=> b!5062400 (= tp!1414220 (and (inv!77533 (left!42810 (left!42810 ys!41))) e!3159670))))

(assert (= (and b!5062400 ((_ is Node!15560) (left!42810 (left!42810 ys!41)))) b!5062522))

(assert (= b!5062523 b!5062524))

(assert (= (and b!5062400 ((_ is Leaf!25845) (left!42810 (left!42810 ys!41)))) b!5062523))

(declare-fun m!6101864 () Bool)

(assert (=> b!5062522 m!6101864))

(declare-fun m!6101866 () Bool)

(assert (=> b!5062522 m!6101866))

(declare-fun m!6101868 () Bool)

(assert (=> b!5062523 m!6101868))

(assert (=> b!5062400 m!6101650))

(declare-fun tp!1414251 () Bool)

(declare-fun e!3159672 () Bool)

(declare-fun tp!1414249 () Bool)

(declare-fun b!5062525 () Bool)

(assert (=> b!5062525 (= e!3159672 (and (inv!77533 (left!42810 (right!43140 (left!42810 ys!41)))) tp!1414249 (inv!77533 (right!43140 (right!43140 (left!42810 ys!41)))) tp!1414251))))

(declare-fun b!5062527 () Bool)

(declare-fun e!3159671 () Bool)

(declare-fun tp!1414250 () Bool)

(assert (=> b!5062527 (= e!3159671 tp!1414250)))

(declare-fun b!5062526 () Bool)

(assert (=> b!5062526 (= e!3159672 (and (inv!77534 (xs!18904 (right!43140 (left!42810 ys!41)))) e!3159671))))

(assert (=> b!5062400 (= tp!1414222 (and (inv!77533 (right!43140 (left!42810 ys!41))) e!3159672))))

(assert (= (and b!5062400 ((_ is Node!15560) (right!43140 (left!42810 ys!41)))) b!5062525))

(assert (= b!5062526 b!5062527))

(assert (= (and b!5062400 ((_ is Leaf!25845) (right!43140 (left!42810 ys!41)))) b!5062526))

(declare-fun m!6101870 () Bool)

(assert (=> b!5062525 m!6101870))

(declare-fun m!6101872 () Bool)

(assert (=> b!5062525 m!6101872))

(declare-fun m!6101874 () Bool)

(assert (=> b!5062526 m!6101874))

(assert (=> b!5062400 m!6101652))

(declare-fun tp!1414254 () Bool)

(declare-fun b!5062528 () Bool)

(declare-fun e!3159674 () Bool)

(declare-fun tp!1414252 () Bool)

(assert (=> b!5062528 (= e!3159674 (and (inv!77533 (left!42810 (left!42810 (left!42810 xs!286)))) tp!1414252 (inv!77533 (right!43140 (left!42810 (left!42810 xs!286)))) tp!1414254))))

(declare-fun b!5062530 () Bool)

(declare-fun e!3159673 () Bool)

(declare-fun tp!1414253 () Bool)

(assert (=> b!5062530 (= e!3159673 tp!1414253)))

(declare-fun b!5062529 () Bool)

(assert (=> b!5062529 (= e!3159674 (and (inv!77534 (xs!18904 (left!42810 (left!42810 xs!286)))) e!3159673))))

(assert (=> b!5062409 (= tp!1414229 (and (inv!77533 (left!42810 (left!42810 xs!286))) e!3159674))))

(assert (= (and b!5062409 ((_ is Node!15560) (left!42810 (left!42810 xs!286)))) b!5062528))

(assert (= b!5062529 b!5062530))

(assert (= (and b!5062409 ((_ is Leaf!25845) (left!42810 (left!42810 xs!286)))) b!5062529))

(declare-fun m!6101876 () Bool)

(assert (=> b!5062528 m!6101876))

(declare-fun m!6101878 () Bool)

(assert (=> b!5062528 m!6101878))

(declare-fun m!6101880 () Bool)

(assert (=> b!5062529 m!6101880))

(assert (=> b!5062409 m!6101668))

(declare-fun tp!1414257 () Bool)

(declare-fun e!3159676 () Bool)

(declare-fun tp!1414255 () Bool)

(declare-fun b!5062531 () Bool)

(assert (=> b!5062531 (= e!3159676 (and (inv!77533 (left!42810 (right!43140 (left!42810 xs!286)))) tp!1414255 (inv!77533 (right!43140 (right!43140 (left!42810 xs!286)))) tp!1414257))))

(declare-fun b!5062533 () Bool)

(declare-fun e!3159675 () Bool)

(declare-fun tp!1414256 () Bool)

(assert (=> b!5062533 (= e!3159675 tp!1414256)))

(declare-fun b!5062532 () Bool)

(assert (=> b!5062532 (= e!3159676 (and (inv!77534 (xs!18904 (right!43140 (left!42810 xs!286)))) e!3159675))))

(assert (=> b!5062409 (= tp!1414231 (and (inv!77533 (right!43140 (left!42810 xs!286))) e!3159676))))

(assert (= (and b!5062409 ((_ is Node!15560) (right!43140 (left!42810 xs!286)))) b!5062531))

(assert (= b!5062532 b!5062533))

(assert (= (and b!5062409 ((_ is Leaf!25845) (right!43140 (left!42810 xs!286)))) b!5062532))

(declare-fun m!6101882 () Bool)

(assert (=> b!5062531 m!6101882))

(declare-fun m!6101884 () Bool)

(assert (=> b!5062531 m!6101884))

(declare-fun m!6101886 () Bool)

(assert (=> b!5062532 m!6101886))

(assert (=> b!5062409 m!6101670))

(declare-fun b!5062534 () Bool)

(declare-fun e!3159677 () Bool)

(declare-fun tp!1414258 () Bool)

(assert (=> b!5062534 (= e!3159677 (and tp_is_empty!37041 tp!1414258))))

(assert (=> b!5062411 (= tp!1414230 e!3159677)))

(assert (= (and b!5062411 ((_ is Cons!58430) (innerList!15648 (xs!18904 (left!42810 xs!286))))) b!5062534))

(declare-fun b!5062535 () Bool)

(declare-fun e!3159678 () Bool)

(declare-fun tp!1414259 () Bool)

(assert (=> b!5062535 (= e!3159678 (and tp_is_empty!37041 tp!1414259))))

(assert (=> b!5062422 (= tp!1414242 e!3159678)))

(assert (= (and b!5062422 ((_ is Cons!58430) (t!371267 (innerList!15648 (xs!18904 xs!286))))) b!5062535))

(declare-fun b!5062536 () Bool)

(declare-fun e!3159679 () Bool)

(declare-fun tp!1414260 () Bool)

(assert (=> b!5062536 (= e!3159679 (and tp_is_empty!37041 tp!1414260))))

(assert (=> b!5062382 (= tp!1414206 e!3159679)))

(assert (= (and b!5062382 ((_ is Cons!58430) (t!371267 (innerList!15648 (xs!18904 ys!41))))) b!5062536))

(declare-fun tp!1414261 () Bool)

(declare-fun b!5062537 () Bool)

(declare-fun e!3159681 () Bool)

(declare-fun tp!1414263 () Bool)

(assert (=> b!5062537 (= e!3159681 (and (inv!77533 (left!42810 (left!42810 (right!43140 ys!41)))) tp!1414261 (inv!77533 (right!43140 (left!42810 (right!43140 ys!41)))) tp!1414263))))

(declare-fun b!5062539 () Bool)

(declare-fun e!3159680 () Bool)

(declare-fun tp!1414262 () Bool)

(assert (=> b!5062539 (= e!3159680 tp!1414262)))

(declare-fun b!5062538 () Bool)

(assert (=> b!5062538 (= e!3159681 (and (inv!77534 (xs!18904 (left!42810 (right!43140 ys!41)))) e!3159680))))

(assert (=> b!5062406 (= tp!1414226 (and (inv!77533 (left!42810 (right!43140 ys!41))) e!3159681))))

(assert (= (and b!5062406 ((_ is Node!15560) (left!42810 (right!43140 ys!41)))) b!5062537))

(assert (= b!5062538 b!5062539))

(assert (= (and b!5062406 ((_ is Leaf!25845) (left!42810 (right!43140 ys!41)))) b!5062538))

(declare-fun m!6101888 () Bool)

(assert (=> b!5062537 m!6101888))

(declare-fun m!6101890 () Bool)

(assert (=> b!5062537 m!6101890))

(declare-fun m!6101892 () Bool)

(assert (=> b!5062538 m!6101892))

(assert (=> b!5062406 m!6101656))

(declare-fun tp!1414266 () Bool)

(declare-fun e!3159683 () Bool)

(declare-fun b!5062540 () Bool)

(declare-fun tp!1414264 () Bool)

(assert (=> b!5062540 (= e!3159683 (and (inv!77533 (left!42810 (right!43140 (right!43140 ys!41)))) tp!1414264 (inv!77533 (right!43140 (right!43140 (right!43140 ys!41)))) tp!1414266))))

(declare-fun b!5062542 () Bool)

(declare-fun e!3159682 () Bool)

(declare-fun tp!1414265 () Bool)

(assert (=> b!5062542 (= e!3159682 tp!1414265)))

(declare-fun b!5062541 () Bool)

(assert (=> b!5062541 (= e!3159683 (and (inv!77534 (xs!18904 (right!43140 (right!43140 ys!41)))) e!3159682))))

(assert (=> b!5062406 (= tp!1414228 (and (inv!77533 (right!43140 (right!43140 ys!41))) e!3159683))))

(assert (= (and b!5062406 ((_ is Node!15560) (right!43140 (right!43140 ys!41)))) b!5062540))

(assert (= b!5062541 b!5062542))

(assert (= (and b!5062406 ((_ is Leaf!25845) (right!43140 (right!43140 ys!41)))) b!5062541))

(declare-fun m!6101894 () Bool)

(assert (=> b!5062540 m!6101894))

(declare-fun m!6101896 () Bool)

(assert (=> b!5062540 m!6101896))

(declare-fun m!6101898 () Bool)

(assert (=> b!5062541 m!6101898))

(assert (=> b!5062406 m!6101660))

(declare-fun b!5062543 () Bool)

(declare-fun e!3159684 () Bool)

(declare-fun tp!1414267 () Bool)

(assert (=> b!5062543 (= e!3159684 (and tp_is_empty!37041 tp!1414267))))

(assert (=> b!5062408 (= tp!1414227 e!3159684)))

(assert (= (and b!5062408 ((_ is Cons!58430) (innerList!15648 (xs!18904 (right!43140 ys!41))))) b!5062543))

(declare-fun b!5062544 () Bool)

(declare-fun e!3159685 () Bool)

(declare-fun tp!1414268 () Bool)

(assert (=> b!5062544 (= e!3159685 (and tp_is_empty!37041 tp!1414268))))

(assert (=> b!5062417 (= tp!1414236 e!3159685)))

(assert (= (and b!5062417 ((_ is Cons!58430) (innerList!15648 (xs!18904 (right!43140 xs!286))))) b!5062544))

(declare-fun b!5062545 () Bool)

(declare-fun e!3159686 () Bool)

(declare-fun tp!1414269 () Bool)

(assert (=> b!5062545 (= e!3159686 (and tp_is_empty!37041 tp!1414269))))

(assert (=> b!5062402 (= tp!1414221 e!3159686)))

(assert (= (and b!5062402 ((_ is Cons!58430) (innerList!15648 (xs!18904 (left!42810 ys!41))))) b!5062545))

(declare-fun tp!1414272 () Bool)

(declare-fun b!5062546 () Bool)

(declare-fun tp!1414270 () Bool)

(declare-fun e!3159688 () Bool)

(assert (=> b!5062546 (= e!3159688 (and (inv!77533 (left!42810 (left!42810 (right!43140 xs!286)))) tp!1414270 (inv!77533 (right!43140 (left!42810 (right!43140 xs!286)))) tp!1414272))))

(declare-fun b!5062548 () Bool)

(declare-fun e!3159687 () Bool)

(declare-fun tp!1414271 () Bool)

(assert (=> b!5062548 (= e!3159687 tp!1414271)))

(declare-fun b!5062547 () Bool)

(assert (=> b!5062547 (= e!3159688 (and (inv!77534 (xs!18904 (left!42810 (right!43140 xs!286)))) e!3159687))))

(assert (=> b!5062415 (= tp!1414235 (and (inv!77533 (left!42810 (right!43140 xs!286))) e!3159688))))

(assert (= (and b!5062415 ((_ is Node!15560) (left!42810 (right!43140 xs!286)))) b!5062546))

(assert (= b!5062547 b!5062548))

(assert (= (and b!5062415 ((_ is Leaf!25845) (left!42810 (right!43140 xs!286)))) b!5062547))

(declare-fun m!6101900 () Bool)

(assert (=> b!5062546 m!6101900))

(declare-fun m!6101902 () Bool)

(assert (=> b!5062546 m!6101902))

(declare-fun m!6101904 () Bool)

(assert (=> b!5062547 m!6101904))

(assert (=> b!5062415 m!6101680))

(declare-fun e!3159690 () Bool)

(declare-fun tp!1414273 () Bool)

(declare-fun tp!1414275 () Bool)

(declare-fun b!5062549 () Bool)

(assert (=> b!5062549 (= e!3159690 (and (inv!77533 (left!42810 (right!43140 (right!43140 xs!286)))) tp!1414273 (inv!77533 (right!43140 (right!43140 (right!43140 xs!286)))) tp!1414275))))

(declare-fun b!5062551 () Bool)

(declare-fun e!3159689 () Bool)

(declare-fun tp!1414274 () Bool)

(assert (=> b!5062551 (= e!3159689 tp!1414274)))

(declare-fun b!5062550 () Bool)

(assert (=> b!5062550 (= e!3159690 (and (inv!77534 (xs!18904 (right!43140 (right!43140 xs!286)))) e!3159689))))

(assert (=> b!5062415 (= tp!1414237 (and (inv!77533 (right!43140 (right!43140 xs!286))) e!3159690))))

(assert (= (and b!5062415 ((_ is Node!15560) (right!43140 (right!43140 xs!286)))) b!5062549))

(assert (= b!5062550 b!5062551))

(assert (= (and b!5062415 ((_ is Leaf!25845) (right!43140 (right!43140 xs!286)))) b!5062550))

(declare-fun m!6101906 () Bool)

(assert (=> b!5062549 m!6101906))

(declare-fun m!6101908 () Bool)

(assert (=> b!5062549 m!6101908))

(declare-fun m!6101910 () Bool)

(assert (=> b!5062550 m!6101910))

(assert (=> b!5062415 m!6101682))

(check-sat (not b!5062509) (not b!5062515) (not d!1631039) (not b!5062551) (not d!1631087) (not b!5062526) (not b!5062491) (not b!5062544) (not b!5062522) (not b!5062549) (not d!1631051) (not b!5062535) (not d!1631045) (not b!5062428) (not b!5062538) (not b!5062409) (not b!5062474) (not b!5062427) (not b!5062465) (not b!5062486) (not b!5062521) (not d!1631029) (not b!5062524) (not b!5062478) (not b!5062528) (not d!1631085) (not b!5062541) (not b!5062429) (not b!5062540) (not d!1631049) (not b!5062534) (not b!5062473) (not b!5062430) (not b!5062400) (not b!5062513) (not d!1631061) (not d!1631047) (not b!5062500) (not b!5062484) (not d!1631075) (not b!5062545) (not b!5062431) (not b!5062472) (not b!5062488) (not b!5062498) (not b!5062529) (not b!5062492) (not b!5062530) (not b!5062477) (not b!5062519) (not b!5062415) (not b!5062537) (not b!5062456) (not b!5062455) (not b!5062548) (not b!5062506) (not b!5062510) (not b!5062504) (not d!1631027) (not b!5062507) (not b!5062468) (not d!1631043) (not b!5062525) (not b!5062518) (not b!5062536) (not b!5062471) (not b!5062448) (not b!5062547) (not b!5062532) (not b!5062495) (not b!5062523) (not b!5062475) (not b!5062462) (not d!1631035) (not d!1631079) (not b!5062459) (not b!5062531) (not b!5062489) (not b!5062543) (not b!5062505) (not b!5062497) (not d!1631059) (not b!5062426) (not b!5062406) tp_is_empty!37041 (not b!5062480) (not b!5062493) (not d!1631031) (not b!5062436) (not b!5062512) (not b!5062501) (not b!5062527) (not b!5062508) (not d!1631033) (not b!5062546) (not b!5062496) (not d!1631041) (not b!5062533) (not b!5062542) (not b!5062482) (not b!5062476) (not b!5062516) (not b!5062503) (not d!1631063) (not b!5062550) (not b!5062539) (not d!1631057) (not b!5062445) (not b!5062494))
(check-sat)
(get-model)

(declare-fun d!1631169 () Bool)

(declare-fun c!868810 () Bool)

(assert (=> d!1631169 (= c!868810 ((_ is Node!15560) (left!42810 (left!42810 (right!43140 xs!286)))))))

(declare-fun e!3159757 () Bool)

(assert (=> d!1631169 (= (inv!77533 (left!42810 (left!42810 (right!43140 xs!286)))) e!3159757)))

(declare-fun b!5062678 () Bool)

(assert (=> b!5062678 (= e!3159757 (inv!77537 (left!42810 (left!42810 (right!43140 xs!286)))))))

(declare-fun b!5062679 () Bool)

(declare-fun e!3159758 () Bool)

(assert (=> b!5062679 (= e!3159757 e!3159758)))

(declare-fun res!2155710 () Bool)

(assert (=> b!5062679 (= res!2155710 (not ((_ is Leaf!25845) (left!42810 (left!42810 (right!43140 xs!286))))))))

(assert (=> b!5062679 (=> res!2155710 e!3159758)))

(declare-fun b!5062680 () Bool)

(assert (=> b!5062680 (= e!3159758 (inv!77538 (left!42810 (left!42810 (right!43140 xs!286)))))))

(assert (= (and d!1631169 c!868810) b!5062678))

(assert (= (and d!1631169 (not c!868810)) b!5062679))

(assert (= (and b!5062679 (not res!2155710)) b!5062680))

(declare-fun m!6102126 () Bool)

(assert (=> b!5062678 m!6102126))

(declare-fun m!6102128 () Bool)

(assert (=> b!5062680 m!6102128))

(assert (=> b!5062546 d!1631169))

(declare-fun d!1631171 () Bool)

(declare-fun c!868811 () Bool)

(assert (=> d!1631171 (= c!868811 ((_ is Node!15560) (right!43140 (left!42810 (right!43140 xs!286)))))))

(declare-fun e!3159759 () Bool)

(assert (=> d!1631171 (= (inv!77533 (right!43140 (left!42810 (right!43140 xs!286)))) e!3159759)))

(declare-fun b!5062681 () Bool)

(assert (=> b!5062681 (= e!3159759 (inv!77537 (right!43140 (left!42810 (right!43140 xs!286)))))))

(declare-fun b!5062682 () Bool)

(declare-fun e!3159760 () Bool)

(assert (=> b!5062682 (= e!3159759 e!3159760)))

(declare-fun res!2155711 () Bool)

(assert (=> b!5062682 (= res!2155711 (not ((_ is Leaf!25845) (right!43140 (left!42810 (right!43140 xs!286))))))))

(assert (=> b!5062682 (=> res!2155711 e!3159760)))

(declare-fun b!5062683 () Bool)

(assert (=> b!5062683 (= e!3159760 (inv!77538 (right!43140 (left!42810 (right!43140 xs!286)))))))

(assert (= (and d!1631171 c!868811) b!5062681))

(assert (= (and d!1631171 (not c!868811)) b!5062682))

(assert (= (and b!5062682 (not res!2155711)) b!5062683))

(declare-fun m!6102130 () Bool)

(assert (=> b!5062681 m!6102130))

(declare-fun m!6102132 () Bool)

(assert (=> b!5062683 m!6102132))

(assert (=> b!5062546 d!1631171))

(declare-fun d!1631173 () Bool)

(assert (=> d!1631173 (= (height!2137 (left!42810 (right!43140 ys!41))) (ite ((_ is Empty!15560) (left!42810 (right!43140 ys!41))) 0 (ite ((_ is Leaf!25845) (left!42810 (right!43140 ys!41))) 1 (cheight!15771 (left!42810 (right!43140 ys!41))))))))

(assert (=> b!5062506 d!1631173))

(declare-fun d!1631175 () Bool)

(assert (=> d!1631175 (= (height!2137 (right!43140 (right!43140 ys!41))) (ite ((_ is Empty!15560) (right!43140 (right!43140 ys!41))) 0 (ite ((_ is Leaf!25845) (right!43140 (right!43140 ys!41))) 1 (cheight!15771 (right!43140 (right!43140 ys!41))))))))

(assert (=> b!5062506 d!1631175))

(declare-fun d!1631177 () Bool)

(assert (=> d!1631177 (= (height!2137 (left!42810 (left!42810 ys!41))) (ite ((_ is Empty!15560) (left!42810 (left!42810 ys!41))) 0 (ite ((_ is Leaf!25845) (left!42810 (left!42810 ys!41))) 1 (cheight!15771 (left!42810 (left!42810 ys!41))))))))

(assert (=> b!5062474 d!1631177))

(declare-fun d!1631179 () Bool)

(assert (=> d!1631179 (= (height!2137 (right!43140 (left!42810 ys!41))) (ite ((_ is Empty!15560) (right!43140 (left!42810 ys!41))) 0 (ite ((_ is Leaf!25845) (right!43140 (left!42810 ys!41))) 1 (cheight!15771 (right!43140 (left!42810 ys!41))))))))

(assert (=> b!5062474 d!1631179))

(declare-fun d!1631181 () Bool)

(declare-fun lt!2088336 () Bool)

(assert (=> d!1631181 (= lt!2088336 (isEmpty!31624 (list!18981 (left!42810 (right!43140 ys!41)))))))

(assert (=> d!1631181 (= lt!2088336 (= (size!39068 (left!42810 (right!43140 ys!41))) 0))))

(assert (=> d!1631181 (= (isEmpty!31623 (left!42810 (right!43140 ys!41))) lt!2088336)))

(declare-fun bs!1189714 () Bool)

(assert (= bs!1189714 d!1631181))

(declare-fun m!6102134 () Bool)

(assert (=> bs!1189714 m!6102134))

(assert (=> bs!1189714 m!6102134))

(declare-fun m!6102136 () Bool)

(assert (=> bs!1189714 m!6102136))

(assert (=> bs!1189714 m!6101770))

(assert (=> b!5062508 d!1631181))

(declare-fun d!1631183 () Bool)

(declare-fun lt!2088337 () Bool)

(assert (=> d!1631183 (= lt!2088337 (isEmpty!31624 (list!18981 (left!42810 (left!42810 ys!41)))))))

(assert (=> d!1631183 (= lt!2088337 (= (size!39068 (left!42810 (left!42810 ys!41))) 0))))

(assert (=> d!1631183 (= (isEmpty!31623 (left!42810 (left!42810 ys!41))) lt!2088337)))

(declare-fun bs!1189715 () Bool)

(assert (= bs!1189715 d!1631183))

(declare-fun m!6102138 () Bool)

(assert (=> bs!1189715 m!6102138))

(assert (=> bs!1189715 m!6102138))

(declare-fun m!6102140 () Bool)

(assert (=> bs!1189715 m!6102140))

(assert (=> bs!1189715 m!6101742))

(assert (=> b!5062476 d!1631183))

(declare-fun d!1631185 () Bool)

(assert (=> d!1631185 (= (isEmpty!31624 (list!18981 (left!42810 xs!286))) ((_ is Nil!58430) (list!18981 (left!42810 xs!286))))))

(assert (=> d!1631031 d!1631185))

(declare-fun b!5062693 () Bool)

(declare-fun e!3159765 () List!58554)

(declare-fun e!3159766 () List!58554)

(assert (=> b!5062693 (= e!3159765 e!3159766)))

(declare-fun c!868817 () Bool)

(assert (=> b!5062693 (= c!868817 ((_ is Leaf!25845) (left!42810 xs!286)))))

(declare-fun b!5062695 () Bool)

(declare-fun ++!12780 (List!58554 List!58554) List!58554)

(assert (=> b!5062695 (= e!3159766 (++!12780 (list!18981 (left!42810 (left!42810 xs!286))) (list!18981 (right!43140 (left!42810 xs!286)))))))

(declare-fun b!5062692 () Bool)

(assert (=> b!5062692 (= e!3159765 Nil!58430)))

(declare-fun d!1631187 () Bool)

(declare-fun c!868816 () Bool)

(assert (=> d!1631187 (= c!868816 ((_ is Empty!15560) (left!42810 xs!286)))))

(assert (=> d!1631187 (= (list!18981 (left!42810 xs!286)) e!3159765)))

(declare-fun b!5062694 () Bool)

(assert (=> b!5062694 (= e!3159766 (list!18980 (xs!18904 (left!42810 xs!286))))))

(assert (= (and d!1631187 c!868816) b!5062692))

(assert (= (and d!1631187 (not c!868816)) b!5062693))

(assert (= (and b!5062693 c!868817) b!5062694))

(assert (= (and b!5062693 (not c!868817)) b!5062695))

(declare-fun m!6102142 () Bool)

(assert (=> b!5062695 m!6102142))

(declare-fun m!6102144 () Bool)

(assert (=> b!5062695 m!6102144))

(assert (=> b!5062695 m!6102142))

(assert (=> b!5062695 m!6102144))

(declare-fun m!6102146 () Bool)

(assert (=> b!5062695 m!6102146))

(assert (=> b!5062694 m!6101802))

(assert (=> d!1631031 d!1631187))

(declare-fun d!1631189 () Bool)

(declare-fun lt!2088340 () Int)

(assert (=> d!1631189 (= lt!2088340 (size!39067 (list!18981 (left!42810 xs!286))))))

(assert (=> d!1631189 (= lt!2088340 (ite ((_ is Empty!15560) (left!42810 xs!286)) 0 (ite ((_ is Leaf!25845) (left!42810 xs!286)) (csize!31351 (left!42810 xs!286)) (csize!31350 (left!42810 xs!286)))))))

(assert (=> d!1631189 (= (size!39068 (left!42810 xs!286)) lt!2088340)))

(declare-fun bs!1189716 () Bool)

(assert (= bs!1189716 d!1631189))

(assert (=> bs!1189716 m!6101718))

(assert (=> bs!1189716 m!6101718))

(declare-fun m!6102148 () Bool)

(assert (=> bs!1189716 m!6102148))

(assert (=> d!1631031 d!1631189))

(declare-fun d!1631191 () Bool)

(assert (=> d!1631191 (= (isEmpty!31624 (list!18981 (right!43140 ys!41))) ((_ is Nil!58430) (list!18981 (right!43140 ys!41))))))

(assert (=> d!1631085 d!1631191))

(declare-fun b!5062697 () Bool)

(declare-fun e!3159767 () List!58554)

(declare-fun e!3159768 () List!58554)

(assert (=> b!5062697 (= e!3159767 e!3159768)))

(declare-fun c!868819 () Bool)

(assert (=> b!5062697 (= c!868819 ((_ is Leaf!25845) (right!43140 ys!41)))))

(declare-fun b!5062699 () Bool)

(assert (=> b!5062699 (= e!3159768 (++!12780 (list!18981 (left!42810 (right!43140 ys!41))) (list!18981 (right!43140 (right!43140 ys!41)))))))

(declare-fun b!5062696 () Bool)

(assert (=> b!5062696 (= e!3159767 Nil!58430)))

(declare-fun d!1631193 () Bool)

(declare-fun c!868818 () Bool)

(assert (=> d!1631193 (= c!868818 ((_ is Empty!15560) (right!43140 ys!41)))))

(assert (=> d!1631193 (= (list!18981 (right!43140 ys!41)) e!3159767)))

(declare-fun b!5062698 () Bool)

(assert (=> b!5062698 (= e!3159768 (list!18980 (xs!18904 (right!43140 ys!41))))))

(assert (= (and d!1631193 c!868818) b!5062696))

(assert (= (and d!1631193 (not c!868818)) b!5062697))

(assert (= (and b!5062697 c!868819) b!5062698))

(assert (= (and b!5062697 (not c!868819)) b!5062699))

(assert (=> b!5062699 m!6102134))

(declare-fun m!6102150 () Bool)

(assert (=> b!5062699 m!6102150))

(assert (=> b!5062699 m!6102134))

(assert (=> b!5062699 m!6102150))

(declare-fun m!6102152 () Bool)

(assert (=> b!5062699 m!6102152))

(assert (=> b!5062698 m!6101798))

(assert (=> d!1631085 d!1631193))

(declare-fun d!1631195 () Bool)

(declare-fun lt!2088341 () Int)

(assert (=> d!1631195 (= lt!2088341 (size!39067 (list!18981 (right!43140 ys!41))))))

(assert (=> d!1631195 (= lt!2088341 (ite ((_ is Empty!15560) (right!43140 ys!41)) 0 (ite ((_ is Leaf!25845) (right!43140 ys!41)) (csize!31351 (right!43140 ys!41)) (csize!31350 (right!43140 ys!41)))))))

(assert (=> d!1631195 (= (size!39068 (right!43140 ys!41)) lt!2088341)))

(declare-fun bs!1189717 () Bool)

(assert (= bs!1189717 d!1631195))

(assert (=> bs!1189717 m!6101850))

(assert (=> bs!1189717 m!6101850))

(declare-fun m!6102154 () Bool)

(assert (=> bs!1189717 m!6102154))

(assert (=> d!1631085 d!1631195))

(declare-fun d!1631197 () Bool)

(declare-fun res!2155712 () Bool)

(declare-fun e!3159769 () Bool)

(assert (=> d!1631197 (=> (not res!2155712) (not e!3159769))))

(assert (=> d!1631197 (= res!2155712 (= (csize!31350 (left!42810 (right!43140 ys!41))) (+ (size!39068 (left!42810 (left!42810 (right!43140 ys!41)))) (size!39068 (right!43140 (left!42810 (right!43140 ys!41)))))))))

(assert (=> d!1631197 (= (inv!77537 (left!42810 (right!43140 ys!41))) e!3159769)))

(declare-fun b!5062700 () Bool)

(declare-fun res!2155713 () Bool)

(assert (=> b!5062700 (=> (not res!2155713) (not e!3159769))))

(assert (=> b!5062700 (= res!2155713 (and (not (= (left!42810 (left!42810 (right!43140 ys!41))) Empty!15560)) (not (= (right!43140 (left!42810 (right!43140 ys!41))) Empty!15560))))))

(declare-fun b!5062701 () Bool)

(declare-fun res!2155714 () Bool)

(assert (=> b!5062701 (=> (not res!2155714) (not e!3159769))))

(assert (=> b!5062701 (= res!2155714 (= (cheight!15771 (left!42810 (right!43140 ys!41))) (+ (max!0 (height!2137 (left!42810 (left!42810 (right!43140 ys!41)))) (height!2137 (right!43140 (left!42810 (right!43140 ys!41))))) 1)))))

(declare-fun b!5062702 () Bool)

(assert (=> b!5062702 (= e!3159769 (<= 0 (cheight!15771 (left!42810 (right!43140 ys!41)))))))

(assert (= (and d!1631197 res!2155712) b!5062700))

(assert (= (and b!5062700 res!2155713) b!5062701))

(assert (= (and b!5062701 res!2155714) b!5062702))

(declare-fun m!6102156 () Bool)

(assert (=> d!1631197 m!6102156))

(declare-fun m!6102158 () Bool)

(assert (=> d!1631197 m!6102158))

(declare-fun m!6102160 () Bool)

(assert (=> b!5062701 m!6102160))

(declare-fun m!6102162 () Bool)

(assert (=> b!5062701 m!6102162))

(assert (=> b!5062701 m!6102160))

(assert (=> b!5062701 m!6102162))

(declare-fun m!6102164 () Bool)

(assert (=> b!5062701 m!6102164))

(assert (=> b!5062510 d!1631197))

(declare-fun d!1631199 () Bool)

(declare-fun lt!2088342 () Int)

(assert (=> d!1631199 (>= lt!2088342 0)))

(declare-fun e!3159770 () Int)

(assert (=> d!1631199 (= lt!2088342 e!3159770)))

(declare-fun c!868820 () Bool)

(assert (=> d!1631199 (= c!868820 ((_ is Nil!58430) (innerList!15648 (xs!18904 (right!43140 xs!286)))))))

(assert (=> d!1631199 (= (size!39067 (innerList!15648 (xs!18904 (right!43140 xs!286)))) lt!2088342)))

(declare-fun b!5062703 () Bool)

(assert (=> b!5062703 (= e!3159770 0)))

(declare-fun b!5062704 () Bool)

(assert (=> b!5062704 (= e!3159770 (+ 1 (size!39067 (t!371267 (innerList!15648 (xs!18904 (right!43140 xs!286)))))))))

(assert (= (and d!1631199 c!868820) b!5062703))

(assert (= (and d!1631199 (not c!868820)) b!5062704))

(declare-fun m!6102166 () Bool)

(assert (=> b!5062704 m!6102166))

(assert (=> d!1631043 d!1631199))

(declare-fun d!1631201 () Bool)

(declare-fun res!2155715 () Bool)

(declare-fun e!3159771 () Bool)

(assert (=> d!1631201 (=> (not res!2155715) (not e!3159771))))

(assert (=> d!1631201 (= res!2155715 (<= (size!39067 (list!18980 (xs!18904 (left!42810 (right!43140 ys!41))))) 512))))

(assert (=> d!1631201 (= (inv!77538 (left!42810 (right!43140 ys!41))) e!3159771)))

(declare-fun b!5062705 () Bool)

(declare-fun res!2155716 () Bool)

(assert (=> b!5062705 (=> (not res!2155716) (not e!3159771))))

(assert (=> b!5062705 (= res!2155716 (= (csize!31351 (left!42810 (right!43140 ys!41))) (size!39067 (list!18980 (xs!18904 (left!42810 (right!43140 ys!41)))))))))

(declare-fun b!5062706 () Bool)

(assert (=> b!5062706 (= e!3159771 (and (> (csize!31351 (left!42810 (right!43140 ys!41))) 0) (<= (csize!31351 (left!42810 (right!43140 ys!41))) 512)))))

(assert (= (and d!1631201 res!2155715) b!5062705))

(assert (= (and b!5062705 res!2155716) b!5062706))

(declare-fun m!6102168 () Bool)

(assert (=> d!1631201 m!6102168))

(assert (=> d!1631201 m!6102168))

(declare-fun m!6102170 () Bool)

(assert (=> d!1631201 m!6102170))

(assert (=> b!5062705 m!6102168))

(assert (=> b!5062705 m!6102168))

(assert (=> b!5062705 m!6102170))

(assert (=> b!5062512 d!1631201))

(declare-fun d!1631203 () Bool)

(declare-fun lt!2088343 () Int)

(assert (=> d!1631203 (>= lt!2088343 0)))

(declare-fun e!3159772 () Int)

(assert (=> d!1631203 (= lt!2088343 e!3159772)))

(declare-fun c!868821 () Bool)

(assert (=> d!1631203 (= c!868821 ((_ is Nil!58430) (list!18980 (xs!18904 (left!42810 xs!286)))))))

(assert (=> d!1631203 (= (size!39067 (list!18980 (xs!18904 (left!42810 xs!286)))) lt!2088343)))

(declare-fun b!5062707 () Bool)

(assert (=> b!5062707 (= e!3159772 0)))

(declare-fun b!5062708 () Bool)

(assert (=> b!5062708 (= e!3159772 (+ 1 (size!39067 (t!371267 (list!18980 (xs!18904 (left!42810 xs!286)))))))))

(assert (= (and d!1631203 c!868821) b!5062707))

(assert (= (and d!1631203 (not c!868821)) b!5062708))

(declare-fun m!6102172 () Bool)

(assert (=> b!5062708 m!6102172))

(assert (=> d!1631063 d!1631203))

(declare-fun d!1631205 () Bool)

(assert (=> d!1631205 (= (list!18980 (xs!18904 (left!42810 xs!286))) (innerList!15648 (xs!18904 (left!42810 xs!286))))))

(assert (=> d!1631063 d!1631205))

(assert (=> d!1631035 d!1631189))

(declare-fun d!1631207 () Bool)

(declare-fun lt!2088344 () Int)

(assert (=> d!1631207 (= lt!2088344 (size!39067 (list!18981 (right!43140 xs!286))))))

(assert (=> d!1631207 (= lt!2088344 (ite ((_ is Empty!15560) (right!43140 xs!286)) 0 (ite ((_ is Leaf!25845) (right!43140 xs!286)) (csize!31351 (right!43140 xs!286)) (csize!31350 (right!43140 xs!286)))))))

(assert (=> d!1631207 (= (size!39068 (right!43140 xs!286)) lt!2088344)))

(declare-fun bs!1189718 () Bool)

(assert (= bs!1189718 d!1631207))

(assert (=> bs!1189718 m!6101712))

(assert (=> bs!1189718 m!6101712))

(declare-fun m!6102174 () Bool)

(assert (=> bs!1189718 m!6102174))

(assert (=> d!1631035 d!1631207))

(declare-fun d!1631209 () Bool)

(declare-fun res!2155717 () Bool)

(declare-fun e!3159773 () Bool)

(assert (=> d!1631209 (=> (not res!2155717) (not e!3159773))))

(assert (=> d!1631209 (= res!2155717 (<= (size!39067 (list!18980 (xs!18904 (right!43140 (right!43140 ys!41))))) 512))))

(assert (=> d!1631209 (= (inv!77538 (right!43140 (right!43140 ys!41))) e!3159773)))

(declare-fun b!5062709 () Bool)

(declare-fun res!2155718 () Bool)

(assert (=> b!5062709 (=> (not res!2155718) (not e!3159773))))

(assert (=> b!5062709 (= res!2155718 (= (csize!31351 (right!43140 (right!43140 ys!41))) (size!39067 (list!18980 (xs!18904 (right!43140 (right!43140 ys!41)))))))))

(declare-fun b!5062710 () Bool)

(assert (=> b!5062710 (= e!3159773 (and (> (csize!31351 (right!43140 (right!43140 ys!41))) 0) (<= (csize!31351 (right!43140 (right!43140 ys!41))) 512)))))

(assert (= (and d!1631209 res!2155717) b!5062709))

(assert (= (and b!5062709 res!2155718) b!5062710))

(declare-fun m!6102176 () Bool)

(assert (=> d!1631209 m!6102176))

(assert (=> d!1631209 m!6102176))

(declare-fun m!6102178 () Bool)

(assert (=> d!1631209 m!6102178))

(assert (=> b!5062709 m!6102176))

(assert (=> b!5062709 m!6102176))

(assert (=> b!5062709 m!6102178))

(assert (=> b!5062515 d!1631209))

(declare-fun d!1631211 () Bool)

(assert (=> d!1631211 (= (inv!77534 (xs!18904 (right!43140 (right!43140 xs!286)))) (<= (size!39067 (innerList!15648 (xs!18904 (right!43140 (right!43140 xs!286))))) 2147483647))))

(declare-fun bs!1189719 () Bool)

(assert (= bs!1189719 d!1631211))

(declare-fun m!6102180 () Bool)

(assert (=> bs!1189719 m!6102180))

(assert (=> b!5062550 d!1631211))

(declare-fun d!1631213 () Bool)

(assert (=> d!1631213 (= (max!0 (height!2137 (left!42810 (right!43140 xs!286))) (height!2137 (right!43140 (right!43140 xs!286)))) (ite (< (height!2137 (left!42810 (right!43140 xs!286))) (height!2137 (right!43140 (right!43140 xs!286)))) (height!2137 (right!43140 (right!43140 xs!286))) (height!2137 (left!42810 (right!43140 xs!286)))))))

(assert (=> b!5062465 d!1631213))

(declare-fun d!1631215 () Bool)

(assert (=> d!1631215 (= (height!2137 (left!42810 (right!43140 xs!286))) (ite ((_ is Empty!15560) (left!42810 (right!43140 xs!286))) 0 (ite ((_ is Leaf!25845) (left!42810 (right!43140 xs!286))) 1 (cheight!15771 (left!42810 (right!43140 xs!286))))))))

(assert (=> b!5062465 d!1631215))

(assert (=> b!5062465 d!1630961))

(declare-fun d!1631217 () Bool)

(declare-fun lt!2088345 () Int)

(assert (=> d!1631217 (>= lt!2088345 0)))

(declare-fun e!3159774 () Int)

(assert (=> d!1631217 (= lt!2088345 e!3159774)))

(declare-fun c!868822 () Bool)

(assert (=> d!1631217 (= c!868822 ((_ is Nil!58430) (list!18980 (xs!18904 ys!41))))))

(assert (=> d!1631217 (= (size!39067 (list!18980 (xs!18904 ys!41))) lt!2088345)))

(declare-fun b!5062711 () Bool)

(assert (=> b!5062711 (= e!3159774 0)))

(declare-fun b!5062712 () Bool)

(assert (=> b!5062712 (= e!3159774 (+ 1 (size!39067 (t!371267 (list!18980 (xs!18904 ys!41))))))))

(assert (= (and d!1631217 c!868822) b!5062711))

(assert (= (and d!1631217 (not c!868822)) b!5062712))

(declare-fun m!6102182 () Bool)

(assert (=> b!5062712 m!6102182))

(assert (=> b!5062478 d!1631217))

(declare-fun d!1631219 () Bool)

(assert (=> d!1631219 (= (list!18980 (xs!18904 ys!41)) (innerList!15648 (xs!18904 ys!41)))))

(assert (=> b!5062478 d!1631219))

(declare-fun d!1631221 () Bool)

(declare-fun res!2155724 () Bool)

(declare-fun e!3159776 () Bool)

(assert (=> d!1631221 (=> res!2155724 e!3159776)))

(assert (=> d!1631221 (= res!2155724 (not ((_ is Node!15560) (right!43140 (right!43140 ys!41)))))))

(assert (=> d!1631221 (= (isBalanced!4422 (right!43140 (right!43140 ys!41))) e!3159776)))

(declare-fun b!5062713 () Bool)

(declare-fun res!2155719 () Bool)

(declare-fun e!3159775 () Bool)

(assert (=> b!5062713 (=> (not res!2155719) (not e!3159775))))

(assert (=> b!5062713 (= res!2155719 (isBalanced!4422 (right!43140 (right!43140 (right!43140 ys!41)))))))

(declare-fun b!5062714 () Bool)

(assert (=> b!5062714 (= e!3159775 (not (isEmpty!31623 (right!43140 (right!43140 (right!43140 ys!41))))))))

(declare-fun b!5062715 () Bool)

(assert (=> b!5062715 (= e!3159776 e!3159775)))

(declare-fun res!2155721 () Bool)

(assert (=> b!5062715 (=> (not res!2155721) (not e!3159775))))

(assert (=> b!5062715 (= res!2155721 (<= (- 1) (- (height!2137 (left!42810 (right!43140 (right!43140 ys!41)))) (height!2137 (right!43140 (right!43140 (right!43140 ys!41)))))))))

(declare-fun b!5062716 () Bool)

(declare-fun res!2155722 () Bool)

(assert (=> b!5062716 (=> (not res!2155722) (not e!3159775))))

(assert (=> b!5062716 (= res!2155722 (<= (- (height!2137 (left!42810 (right!43140 (right!43140 ys!41)))) (height!2137 (right!43140 (right!43140 (right!43140 ys!41))))) 1))))

(declare-fun b!5062717 () Bool)

(declare-fun res!2155723 () Bool)

(assert (=> b!5062717 (=> (not res!2155723) (not e!3159775))))

(assert (=> b!5062717 (= res!2155723 (not (isEmpty!31623 (left!42810 (right!43140 (right!43140 ys!41))))))))

(declare-fun b!5062718 () Bool)

(declare-fun res!2155720 () Bool)

(assert (=> b!5062718 (=> (not res!2155720) (not e!3159775))))

(assert (=> b!5062718 (= res!2155720 (isBalanced!4422 (left!42810 (right!43140 (right!43140 ys!41)))))))

(assert (= (and d!1631221 (not res!2155724)) b!5062715))

(assert (= (and b!5062715 res!2155721) b!5062716))

(assert (= (and b!5062716 res!2155722) b!5062718))

(assert (= (and b!5062718 res!2155720) b!5062713))

(assert (= (and b!5062713 res!2155719) b!5062717))

(assert (= (and b!5062717 res!2155723) b!5062714))

(declare-fun m!6102184 () Bool)

(assert (=> b!5062716 m!6102184))

(declare-fun m!6102186 () Bool)

(assert (=> b!5062716 m!6102186))

(declare-fun m!6102188 () Bool)

(assert (=> b!5062714 m!6102188))

(declare-fun m!6102190 () Bool)

(assert (=> b!5062713 m!6102190))

(assert (=> b!5062715 m!6102184))

(assert (=> b!5062715 m!6102186))

(declare-fun m!6102192 () Bool)

(assert (=> b!5062717 m!6102192))

(declare-fun m!6102194 () Bool)

(assert (=> b!5062718 m!6102194))

(assert (=> b!5062504 d!1631221))

(declare-fun d!1631223 () Bool)

(declare-fun res!2155730 () Bool)

(declare-fun e!3159778 () Bool)

(assert (=> d!1631223 (=> res!2155730 e!3159778)))

(assert (=> d!1631223 (= res!2155730 (not ((_ is Node!15560) (right!43140 (left!42810 ys!41)))))))

(assert (=> d!1631223 (= (isBalanced!4422 (right!43140 (left!42810 ys!41))) e!3159778)))

(declare-fun b!5062719 () Bool)

(declare-fun res!2155725 () Bool)

(declare-fun e!3159777 () Bool)

(assert (=> b!5062719 (=> (not res!2155725) (not e!3159777))))

(assert (=> b!5062719 (= res!2155725 (isBalanced!4422 (right!43140 (right!43140 (left!42810 ys!41)))))))

(declare-fun b!5062720 () Bool)

(assert (=> b!5062720 (= e!3159777 (not (isEmpty!31623 (right!43140 (right!43140 (left!42810 ys!41))))))))

(declare-fun b!5062721 () Bool)

(assert (=> b!5062721 (= e!3159778 e!3159777)))

(declare-fun res!2155727 () Bool)

(assert (=> b!5062721 (=> (not res!2155727) (not e!3159777))))

(assert (=> b!5062721 (= res!2155727 (<= (- 1) (- (height!2137 (left!42810 (right!43140 (left!42810 ys!41)))) (height!2137 (right!43140 (right!43140 (left!42810 ys!41)))))))))

(declare-fun b!5062722 () Bool)

(declare-fun res!2155728 () Bool)

(assert (=> b!5062722 (=> (not res!2155728) (not e!3159777))))

(assert (=> b!5062722 (= res!2155728 (<= (- (height!2137 (left!42810 (right!43140 (left!42810 ys!41)))) (height!2137 (right!43140 (right!43140 (left!42810 ys!41))))) 1))))

(declare-fun b!5062723 () Bool)

(declare-fun res!2155729 () Bool)

(assert (=> b!5062723 (=> (not res!2155729) (not e!3159777))))

(assert (=> b!5062723 (= res!2155729 (not (isEmpty!31623 (left!42810 (right!43140 (left!42810 ys!41))))))))

(declare-fun b!5062724 () Bool)

(declare-fun res!2155726 () Bool)

(assert (=> b!5062724 (=> (not res!2155726) (not e!3159777))))

(assert (=> b!5062724 (= res!2155726 (isBalanced!4422 (left!42810 (right!43140 (left!42810 ys!41)))))))

(assert (= (and d!1631223 (not res!2155730)) b!5062721))

(assert (= (and b!5062721 res!2155727) b!5062722))

(assert (= (and b!5062722 res!2155728) b!5062724))

(assert (= (and b!5062724 res!2155726) b!5062719))

(assert (= (and b!5062719 res!2155725) b!5062723))

(assert (= (and b!5062723 res!2155729) b!5062720))

(declare-fun m!6102196 () Bool)

(assert (=> b!5062722 m!6102196))

(declare-fun m!6102198 () Bool)

(assert (=> b!5062722 m!6102198))

(declare-fun m!6102200 () Bool)

(assert (=> b!5062720 m!6102200))

(declare-fun m!6102202 () Bool)

(assert (=> b!5062719 m!6102202))

(assert (=> b!5062721 m!6102196))

(assert (=> b!5062721 m!6102198))

(declare-fun m!6102204 () Bool)

(assert (=> b!5062723 m!6102204))

(declare-fun m!6102206 () Bool)

(assert (=> b!5062724 m!6102206))

(assert (=> b!5062472 d!1631223))

(declare-fun d!1631225 () Bool)

(declare-fun c!868823 () Bool)

(assert (=> d!1631225 (= c!868823 ((_ is Node!15560) (left!42810 (right!43140 (left!42810 ys!41)))))))

(declare-fun e!3159779 () Bool)

(assert (=> d!1631225 (= (inv!77533 (left!42810 (right!43140 (left!42810 ys!41)))) e!3159779)))

(declare-fun b!5062725 () Bool)

(assert (=> b!5062725 (= e!3159779 (inv!77537 (left!42810 (right!43140 (left!42810 ys!41)))))))

(declare-fun b!5062726 () Bool)

(declare-fun e!3159780 () Bool)

(assert (=> b!5062726 (= e!3159779 e!3159780)))

(declare-fun res!2155731 () Bool)

(assert (=> b!5062726 (= res!2155731 (not ((_ is Leaf!25845) (left!42810 (right!43140 (left!42810 ys!41))))))))

(assert (=> b!5062726 (=> res!2155731 e!3159780)))

(declare-fun b!5062727 () Bool)

(assert (=> b!5062727 (= e!3159780 (inv!77538 (left!42810 (right!43140 (left!42810 ys!41)))))))

(assert (= (and d!1631225 c!868823) b!5062725))

(assert (= (and d!1631225 (not c!868823)) b!5062726))

(assert (= (and b!5062726 (not res!2155731)) b!5062727))

(declare-fun m!6102208 () Bool)

(assert (=> b!5062725 m!6102208))

(declare-fun m!6102210 () Bool)

(assert (=> b!5062727 m!6102210))

(assert (=> b!5062525 d!1631225))

(declare-fun d!1631227 () Bool)

(declare-fun c!868824 () Bool)

(assert (=> d!1631227 (= c!868824 ((_ is Node!15560) (right!43140 (right!43140 (left!42810 ys!41)))))))

(declare-fun e!3159781 () Bool)

(assert (=> d!1631227 (= (inv!77533 (right!43140 (right!43140 (left!42810 ys!41)))) e!3159781)))

(declare-fun b!5062728 () Bool)

(assert (=> b!5062728 (= e!3159781 (inv!77537 (right!43140 (right!43140 (left!42810 ys!41)))))))

(declare-fun b!5062729 () Bool)

(declare-fun e!3159782 () Bool)

(assert (=> b!5062729 (= e!3159781 e!3159782)))

(declare-fun res!2155732 () Bool)

(assert (=> b!5062729 (= res!2155732 (not ((_ is Leaf!25845) (right!43140 (right!43140 (left!42810 ys!41))))))))

(assert (=> b!5062729 (=> res!2155732 e!3159782)))

(declare-fun b!5062730 () Bool)

(assert (=> b!5062730 (= e!3159782 (inv!77538 (right!43140 (right!43140 (left!42810 ys!41)))))))

(assert (= (and d!1631227 c!868824) b!5062728))

(assert (= (and d!1631227 (not c!868824)) b!5062729))

(assert (= (and b!5062729 (not res!2155732)) b!5062730))

(declare-fun m!6102212 () Bool)

(assert (=> b!5062728 m!6102212))

(declare-fun m!6102214 () Bool)

(assert (=> b!5062730 m!6102214))

(assert (=> b!5062525 d!1631227))

(declare-fun d!1631229 () Bool)

(declare-fun c!868825 () Bool)

(assert (=> d!1631229 (= c!868825 ((_ is Node!15560) (left!42810 (right!43140 (right!43140 ys!41)))))))

(declare-fun e!3159783 () Bool)

(assert (=> d!1631229 (= (inv!77533 (left!42810 (right!43140 (right!43140 ys!41)))) e!3159783)))

(declare-fun b!5062731 () Bool)

(assert (=> b!5062731 (= e!3159783 (inv!77537 (left!42810 (right!43140 (right!43140 ys!41)))))))

(declare-fun b!5062732 () Bool)

(declare-fun e!3159784 () Bool)

(assert (=> b!5062732 (= e!3159783 e!3159784)))

(declare-fun res!2155733 () Bool)

(assert (=> b!5062732 (= res!2155733 (not ((_ is Leaf!25845) (left!42810 (right!43140 (right!43140 ys!41))))))))

(assert (=> b!5062732 (=> res!2155733 e!3159784)))

(declare-fun b!5062733 () Bool)

(assert (=> b!5062733 (= e!3159784 (inv!77538 (left!42810 (right!43140 (right!43140 ys!41)))))))

(assert (= (and d!1631229 c!868825) b!5062731))

(assert (= (and d!1631229 (not c!868825)) b!5062732))

(assert (= (and b!5062732 (not res!2155733)) b!5062733))

(declare-fun m!6102216 () Bool)

(assert (=> b!5062731 m!6102216))

(declare-fun m!6102218 () Bool)

(assert (=> b!5062733 m!6102218))

(assert (=> b!5062540 d!1631229))

(declare-fun d!1631231 () Bool)

(declare-fun c!868826 () Bool)

(assert (=> d!1631231 (= c!868826 ((_ is Node!15560) (right!43140 (right!43140 (right!43140 ys!41)))))))

(declare-fun e!3159785 () Bool)

(assert (=> d!1631231 (= (inv!77533 (right!43140 (right!43140 (right!43140 ys!41)))) e!3159785)))

(declare-fun b!5062734 () Bool)

(assert (=> b!5062734 (= e!3159785 (inv!77537 (right!43140 (right!43140 (right!43140 ys!41)))))))

(declare-fun b!5062735 () Bool)

(declare-fun e!3159786 () Bool)

(assert (=> b!5062735 (= e!3159785 e!3159786)))

(declare-fun res!2155734 () Bool)

(assert (=> b!5062735 (= res!2155734 (not ((_ is Leaf!25845) (right!43140 (right!43140 (right!43140 ys!41))))))))

(assert (=> b!5062735 (=> res!2155734 e!3159786)))

(declare-fun b!5062736 () Bool)

(assert (=> b!5062736 (= e!3159786 (inv!77538 (right!43140 (right!43140 (right!43140 ys!41)))))))

(assert (= (and d!1631231 c!868826) b!5062734))

(assert (= (and d!1631231 (not c!868826)) b!5062735))

(assert (= (and b!5062735 (not res!2155734)) b!5062736))

(declare-fun m!6102220 () Bool)

(assert (=> b!5062734 m!6102220))

(declare-fun m!6102222 () Bool)

(assert (=> b!5062736 m!6102222))

(assert (=> b!5062540 d!1631231))

(declare-fun d!1631233 () Bool)

(declare-fun lt!2088346 () Int)

(assert (=> d!1631233 (= lt!2088346 (size!39067 (list!18981 (left!42810 (left!42810 xs!286)))))))

(assert (=> d!1631233 (= lt!2088346 (ite ((_ is Empty!15560) (left!42810 (left!42810 xs!286))) 0 (ite ((_ is Leaf!25845) (left!42810 (left!42810 xs!286))) (csize!31351 (left!42810 (left!42810 xs!286))) (csize!31350 (left!42810 (left!42810 xs!286))))))))

(assert (=> d!1631233 (= (size!39068 (left!42810 (left!42810 xs!286))) lt!2088346)))

(declare-fun bs!1189720 () Bool)

(assert (= bs!1189720 d!1631233))

(assert (=> bs!1189720 m!6102142))

(assert (=> bs!1189720 m!6102142))

(declare-fun m!6102224 () Bool)

(assert (=> bs!1189720 m!6102224))

(assert (=> d!1631033 d!1631233))

(declare-fun d!1631235 () Bool)

(declare-fun lt!2088347 () Int)

(assert (=> d!1631235 (= lt!2088347 (size!39067 (list!18981 (right!43140 (left!42810 xs!286)))))))

(assert (=> d!1631235 (= lt!2088347 (ite ((_ is Empty!15560) (right!43140 (left!42810 xs!286))) 0 (ite ((_ is Leaf!25845) (right!43140 (left!42810 xs!286))) (csize!31351 (right!43140 (left!42810 xs!286))) (csize!31350 (right!43140 (left!42810 xs!286))))))))

(assert (=> d!1631235 (= (size!39068 (right!43140 (left!42810 xs!286))) lt!2088347)))

(declare-fun bs!1189721 () Bool)

(assert (= bs!1189721 d!1631235))

(assert (=> bs!1189721 m!6102144))

(assert (=> bs!1189721 m!6102144))

(declare-fun m!6102226 () Bool)

(assert (=> bs!1189721 m!6102226))

(assert (=> d!1631033 d!1631235))

(declare-fun d!1631237 () Bool)

(declare-fun res!2155735 () Bool)

(declare-fun e!3159787 () Bool)

(assert (=> d!1631237 (=> (not res!2155735) (not e!3159787))))

(assert (=> d!1631237 (= res!2155735 (= (csize!31350 (right!43140 (left!42810 ys!41))) (+ (size!39068 (left!42810 (right!43140 (left!42810 ys!41)))) (size!39068 (right!43140 (right!43140 (left!42810 ys!41)))))))))

(assert (=> d!1631237 (= (inv!77537 (right!43140 (left!42810 ys!41))) e!3159787)))

(declare-fun b!5062737 () Bool)

(declare-fun res!2155736 () Bool)

(assert (=> b!5062737 (=> (not res!2155736) (not e!3159787))))

(assert (=> b!5062737 (= res!2155736 (and (not (= (left!42810 (right!43140 (left!42810 ys!41))) Empty!15560)) (not (= (right!43140 (right!43140 (left!42810 ys!41))) Empty!15560))))))

(declare-fun b!5062738 () Bool)

(declare-fun res!2155737 () Bool)

(assert (=> b!5062738 (=> (not res!2155737) (not e!3159787))))

(assert (=> b!5062738 (= res!2155737 (= (cheight!15771 (right!43140 (left!42810 ys!41))) (+ (max!0 (height!2137 (left!42810 (right!43140 (left!42810 ys!41)))) (height!2137 (right!43140 (right!43140 (left!42810 ys!41))))) 1)))))

(declare-fun b!5062739 () Bool)

(assert (=> b!5062739 (= e!3159787 (<= 0 (cheight!15771 (right!43140 (left!42810 ys!41)))))))

(assert (= (and d!1631237 res!2155735) b!5062737))

(assert (= (and b!5062737 res!2155736) b!5062738))

(assert (= (and b!5062738 res!2155737) b!5062739))

(declare-fun m!6102228 () Bool)

(assert (=> d!1631237 m!6102228))

(declare-fun m!6102230 () Bool)

(assert (=> d!1631237 m!6102230))

(assert (=> b!5062738 m!6102196))

(assert (=> b!5062738 m!6102198))

(assert (=> b!5062738 m!6102196))

(assert (=> b!5062738 m!6102198))

(declare-fun m!6102232 () Bool)

(assert (=> b!5062738 m!6102232))

(assert (=> b!5062489 d!1631237))

(declare-fun d!1631239 () Bool)

(assert (=> d!1631239 (= (max!0 (height!2137 (left!42810 xs!286)) (height!2137 (right!43140 xs!286))) (ite (< (height!2137 (left!42810 xs!286)) (height!2137 (right!43140 xs!286))) (height!2137 (right!43140 xs!286)) (height!2137 (left!42810 xs!286))))))

(assert (=> b!5062448 d!1631239))

(assert (=> b!5062448 d!1630965))

(assert (=> b!5062448 d!1630967))

(declare-fun d!1631241 () Bool)

(declare-fun lt!2088348 () Bool)

(assert (=> d!1631241 (= lt!2088348 (isEmpty!31624 (list!18981 (left!42810 (left!42810 xs!286)))))))

(assert (=> d!1631241 (= lt!2088348 (= (size!39068 (left!42810 (left!42810 xs!286))) 0))))

(assert (=> d!1631241 (= (isEmpty!31623 (left!42810 (left!42810 xs!286))) lt!2088348)))

(declare-fun bs!1189722 () Bool)

(assert (= bs!1189722 d!1631241))

(assert (=> bs!1189722 m!6102142))

(assert (=> bs!1189722 m!6102142))

(declare-fun m!6102234 () Bool)

(assert (=> bs!1189722 m!6102234))

(assert (=> bs!1189722 m!6101724))

(assert (=> b!5062496 d!1631241))

(declare-fun d!1631243 () Bool)

(assert (=> d!1631243 (= (max!0 (height!2137 (left!42810 (left!42810 xs!286))) (height!2137 (right!43140 (left!42810 xs!286)))) (ite (< (height!2137 (left!42810 (left!42810 xs!286))) (height!2137 (right!43140 (left!42810 xs!286)))) (height!2137 (right!43140 (left!42810 xs!286))) (height!2137 (left!42810 (left!42810 xs!286)))))))

(assert (=> b!5062445 d!1631243))

(declare-fun d!1631245 () Bool)

(assert (=> d!1631245 (= (height!2137 (left!42810 (left!42810 xs!286))) (ite ((_ is Empty!15560) (left!42810 (left!42810 xs!286))) 0 (ite ((_ is Leaf!25845) (left!42810 (left!42810 xs!286))) 1 (cheight!15771 (left!42810 (left!42810 xs!286))))))))

(assert (=> b!5062445 d!1631245))

(declare-fun d!1631247 () Bool)

(assert (=> d!1631247 (= (height!2137 (right!43140 (left!42810 xs!286))) (ite ((_ is Empty!15560) (right!43140 (left!42810 xs!286))) 0 (ite ((_ is Leaf!25845) (right!43140 (left!42810 xs!286))) 1 (cheight!15771 (right!43140 (left!42810 xs!286))))))))

(assert (=> b!5062445 d!1631247))

(declare-fun d!1631249 () Bool)

(assert (=> d!1631249 (= (max!0 (height!2137 (left!42810 (left!42810 ys!41))) (height!2137 (right!43140 (left!42810 ys!41)))) (ite (< (height!2137 (left!42810 (left!42810 ys!41))) (height!2137 (right!43140 (left!42810 ys!41)))) (height!2137 (right!43140 (left!42810 ys!41))) (height!2137 (left!42810 (left!42810 ys!41)))))))

(assert (=> b!5062459 d!1631249))

(assert (=> b!5062459 d!1631177))

(assert (=> b!5062459 d!1631179))

(assert (=> b!5062429 d!1631215))

(assert (=> b!5062429 d!1630961))

(declare-fun d!1631251 () Bool)

(declare-fun lt!2088349 () Int)

(assert (=> d!1631251 (>= lt!2088349 0)))

(declare-fun e!3159788 () Int)

(assert (=> d!1631251 (= lt!2088349 e!3159788)))

(declare-fun c!868827 () Bool)

(assert (=> d!1631251 (= c!868827 ((_ is Nil!58430) (t!371267 (innerList!15648 (xs!18904 xs!286)))))))

(assert (=> d!1631251 (= (size!39067 (t!371267 (innerList!15648 (xs!18904 xs!286)))) lt!2088349)))

(declare-fun b!5062740 () Bool)

(assert (=> b!5062740 (= e!3159788 0)))

(declare-fun b!5062741 () Bool)

(assert (=> b!5062741 (= e!3159788 (+ 1 (size!39067 (t!371267 (t!371267 (innerList!15648 (xs!18904 xs!286)))))))))

(assert (= (and d!1631251 c!868827) b!5062740))

(assert (= (and d!1631251 (not c!868827)) b!5062741))

(declare-fun m!6102236 () Bool)

(assert (=> b!5062741 m!6102236))

(assert (=> b!5062455 d!1631251))

(declare-fun d!1631253 () Bool)

(declare-fun c!868828 () Bool)

(assert (=> d!1631253 (= c!868828 ((_ is Node!15560) (left!42810 (left!42810 (left!42810 xs!286)))))))

(declare-fun e!3159789 () Bool)

(assert (=> d!1631253 (= (inv!77533 (left!42810 (left!42810 (left!42810 xs!286)))) e!3159789)))

(declare-fun b!5062742 () Bool)

(assert (=> b!5062742 (= e!3159789 (inv!77537 (left!42810 (left!42810 (left!42810 xs!286)))))))

(declare-fun b!5062743 () Bool)

(declare-fun e!3159790 () Bool)

(assert (=> b!5062743 (= e!3159789 e!3159790)))

(declare-fun res!2155738 () Bool)

(assert (=> b!5062743 (= res!2155738 (not ((_ is Leaf!25845) (left!42810 (left!42810 (left!42810 xs!286))))))))

(assert (=> b!5062743 (=> res!2155738 e!3159790)))

(declare-fun b!5062744 () Bool)

(assert (=> b!5062744 (= e!3159790 (inv!77538 (left!42810 (left!42810 (left!42810 xs!286)))))))

(assert (= (and d!1631253 c!868828) b!5062742))

(assert (= (and d!1631253 (not c!868828)) b!5062743))

(assert (= (and b!5062743 (not res!2155738)) b!5062744))

(declare-fun m!6102238 () Bool)

(assert (=> b!5062742 m!6102238))

(declare-fun m!6102240 () Bool)

(assert (=> b!5062744 m!6102240))

(assert (=> b!5062528 d!1631253))

(declare-fun d!1631255 () Bool)

(declare-fun c!868829 () Bool)

(assert (=> d!1631255 (= c!868829 ((_ is Node!15560) (right!43140 (left!42810 (left!42810 xs!286)))))))

(declare-fun e!3159791 () Bool)

(assert (=> d!1631255 (= (inv!77533 (right!43140 (left!42810 (left!42810 xs!286)))) e!3159791)))

(declare-fun b!5062745 () Bool)

(assert (=> b!5062745 (= e!3159791 (inv!77537 (right!43140 (left!42810 (left!42810 xs!286)))))))

(declare-fun b!5062746 () Bool)

(declare-fun e!3159792 () Bool)

(assert (=> b!5062746 (= e!3159791 e!3159792)))

(declare-fun res!2155739 () Bool)

(assert (=> b!5062746 (= res!2155739 (not ((_ is Leaf!25845) (right!43140 (left!42810 (left!42810 xs!286))))))))

(assert (=> b!5062746 (=> res!2155739 e!3159792)))

(declare-fun b!5062747 () Bool)

(assert (=> b!5062747 (= e!3159792 (inv!77538 (right!43140 (left!42810 (left!42810 xs!286)))))))

(assert (= (and d!1631255 c!868829) b!5062745))

(assert (= (and d!1631255 (not c!868829)) b!5062746))

(assert (= (and b!5062746 (not res!2155739)) b!5062747))

(declare-fun m!6102242 () Bool)

(assert (=> b!5062745 m!6102242))

(declare-fun m!6102244 () Bool)

(assert (=> b!5062747 m!6102244))

(assert (=> b!5062528 d!1631255))

(declare-fun d!1631257 () Bool)

(declare-fun lt!2088350 () Int)

(assert (=> d!1631257 (>= lt!2088350 0)))

(declare-fun e!3159793 () Int)

(assert (=> d!1631257 (= lt!2088350 e!3159793)))

(declare-fun c!868830 () Bool)

(assert (=> d!1631257 (= c!868830 ((_ is Nil!58430) (list!18980 (xs!18904 (right!43140 ys!41)))))))

(assert (=> d!1631257 (= (size!39067 (list!18980 (xs!18904 (right!43140 ys!41)))) lt!2088350)))

(declare-fun b!5062748 () Bool)

(assert (=> b!5062748 (= e!3159793 0)))

(declare-fun b!5062749 () Bool)

(assert (=> b!5062749 (= e!3159793 (+ 1 (size!39067 (t!371267 (list!18980 (xs!18904 (right!43140 ys!41)))))))))

(assert (= (and d!1631257 c!868830) b!5062748))

(assert (= (and d!1631257 (not c!868830)) b!5062749))

(declare-fun m!6102246 () Bool)

(assert (=> b!5062749 m!6102246))

(assert (=> d!1631061 d!1631257))

(declare-fun d!1631259 () Bool)

(assert (=> d!1631259 (= (list!18980 (xs!18904 (right!43140 ys!41))) (innerList!15648 (xs!18904 (right!43140 ys!41))))))

(assert (=> d!1631061 d!1631259))

(declare-fun d!1631261 () Bool)

(declare-fun res!2155745 () Bool)

(declare-fun e!3159795 () Bool)

(assert (=> d!1631261 (=> res!2155745 e!3159795)))

(assert (=> d!1631261 (= res!2155745 (not ((_ is Node!15560) (left!42810 (right!43140 xs!286)))))))

(assert (=> d!1631261 (= (isBalanced!4422 (left!42810 (right!43140 xs!286))) e!3159795)))

(declare-fun b!5062750 () Bool)

(declare-fun res!2155740 () Bool)

(declare-fun e!3159794 () Bool)

(assert (=> b!5062750 (=> (not res!2155740) (not e!3159794))))

(assert (=> b!5062750 (= res!2155740 (isBalanced!4422 (right!43140 (left!42810 (right!43140 xs!286)))))))

(declare-fun b!5062751 () Bool)

(assert (=> b!5062751 (= e!3159794 (not (isEmpty!31623 (right!43140 (left!42810 (right!43140 xs!286))))))))

(declare-fun b!5062752 () Bool)

(assert (=> b!5062752 (= e!3159795 e!3159794)))

(declare-fun res!2155742 () Bool)

(assert (=> b!5062752 (=> (not res!2155742) (not e!3159794))))

(assert (=> b!5062752 (= res!2155742 (<= (- 1) (- (height!2137 (left!42810 (left!42810 (right!43140 xs!286)))) (height!2137 (right!43140 (left!42810 (right!43140 xs!286)))))))))

(declare-fun b!5062753 () Bool)

(declare-fun res!2155743 () Bool)

(assert (=> b!5062753 (=> (not res!2155743) (not e!3159794))))

(assert (=> b!5062753 (= res!2155743 (<= (- (height!2137 (left!42810 (left!42810 (right!43140 xs!286)))) (height!2137 (right!43140 (left!42810 (right!43140 xs!286))))) 1))))

(declare-fun b!5062754 () Bool)

(declare-fun res!2155744 () Bool)

(assert (=> b!5062754 (=> (not res!2155744) (not e!3159794))))

(assert (=> b!5062754 (= res!2155744 (not (isEmpty!31623 (left!42810 (left!42810 (right!43140 xs!286))))))))

(declare-fun b!5062755 () Bool)

(declare-fun res!2155741 () Bool)

(assert (=> b!5062755 (=> (not res!2155741) (not e!3159794))))

(assert (=> b!5062755 (= res!2155741 (isBalanced!4422 (left!42810 (left!42810 (right!43140 xs!286)))))))

(assert (= (and d!1631261 (not res!2155745)) b!5062752))

(assert (= (and b!5062752 res!2155742) b!5062753))

(assert (= (and b!5062753 res!2155743) b!5062755))

(assert (= (and b!5062755 res!2155741) b!5062750))

(assert (= (and b!5062750 res!2155740) b!5062754))

(assert (= (and b!5062754 res!2155744) b!5062751))

(declare-fun m!6102248 () Bool)

(assert (=> b!5062753 m!6102248))

(declare-fun m!6102250 () Bool)

(assert (=> b!5062753 m!6102250))

(declare-fun m!6102252 () Bool)

(assert (=> b!5062751 m!6102252))

(declare-fun m!6102254 () Bool)

(assert (=> b!5062750 m!6102254))

(assert (=> b!5062752 m!6102248))

(assert (=> b!5062752 m!6102250))

(declare-fun m!6102256 () Bool)

(assert (=> b!5062754 m!6102256))

(declare-fun m!6102258 () Bool)

(assert (=> b!5062755 m!6102258))

(assert (=> b!5062431 d!1631261))

(declare-fun d!1631263 () Bool)

(declare-fun res!2155746 () Bool)

(declare-fun e!3159796 () Bool)

(assert (=> d!1631263 (=> (not res!2155746) (not e!3159796))))

(assert (=> d!1631263 (= res!2155746 (<= (size!39067 (list!18980 (xs!18904 (right!43140 (left!42810 ys!41))))) 512))))

(assert (=> d!1631263 (= (inv!77538 (right!43140 (left!42810 ys!41))) e!3159796)))

(declare-fun b!5062756 () Bool)

(declare-fun res!2155747 () Bool)

(assert (=> b!5062756 (=> (not res!2155747) (not e!3159796))))

(assert (=> b!5062756 (= res!2155747 (= (csize!31351 (right!43140 (left!42810 ys!41))) (size!39067 (list!18980 (xs!18904 (right!43140 (left!42810 ys!41)))))))))

(declare-fun b!5062757 () Bool)

(assert (=> b!5062757 (= e!3159796 (and (> (csize!31351 (right!43140 (left!42810 ys!41))) 0) (<= (csize!31351 (right!43140 (left!42810 ys!41))) 512)))))

(assert (= (and d!1631263 res!2155746) b!5062756))

(assert (= (and b!5062756 res!2155747) b!5062757))

(declare-fun m!6102260 () Bool)

(assert (=> d!1631263 m!6102260))

(assert (=> d!1631263 m!6102260))

(declare-fun m!6102262 () Bool)

(assert (=> d!1631263 m!6102262))

(assert (=> b!5062756 m!6102260))

(assert (=> b!5062756 m!6102260))

(assert (=> b!5062756 m!6102262))

(assert (=> b!5062491 d!1631263))

(declare-fun d!1631265 () Bool)

(declare-fun c!868831 () Bool)

(assert (=> d!1631265 (= c!868831 ((_ is Node!15560) (left!42810 (right!43140 (right!43140 xs!286)))))))

(declare-fun e!3159797 () Bool)

(assert (=> d!1631265 (= (inv!77533 (left!42810 (right!43140 (right!43140 xs!286)))) e!3159797)))

(declare-fun b!5062758 () Bool)

(assert (=> b!5062758 (= e!3159797 (inv!77537 (left!42810 (right!43140 (right!43140 xs!286)))))))

(declare-fun b!5062759 () Bool)

(declare-fun e!3159798 () Bool)

(assert (=> b!5062759 (= e!3159797 e!3159798)))

(declare-fun res!2155748 () Bool)

(assert (=> b!5062759 (= res!2155748 (not ((_ is Leaf!25845) (left!42810 (right!43140 (right!43140 xs!286))))))))

(assert (=> b!5062759 (=> res!2155748 e!3159798)))

(declare-fun b!5062760 () Bool)

(assert (=> b!5062760 (= e!3159798 (inv!77538 (left!42810 (right!43140 (right!43140 xs!286)))))))

(assert (= (and d!1631265 c!868831) b!5062758))

(assert (= (and d!1631265 (not c!868831)) b!5062759))

(assert (= (and b!5062759 (not res!2155748)) b!5062760))

(declare-fun m!6102264 () Bool)

(assert (=> b!5062758 m!6102264))

(declare-fun m!6102266 () Bool)

(assert (=> b!5062760 m!6102266))

(assert (=> b!5062549 d!1631265))

(declare-fun d!1631267 () Bool)

(declare-fun c!868832 () Bool)

(assert (=> d!1631267 (= c!868832 ((_ is Node!15560) (right!43140 (right!43140 (right!43140 xs!286)))))))

(declare-fun e!3159799 () Bool)

(assert (=> d!1631267 (= (inv!77533 (right!43140 (right!43140 (right!43140 xs!286)))) e!3159799)))

(declare-fun b!5062761 () Bool)

(assert (=> b!5062761 (= e!3159799 (inv!77537 (right!43140 (right!43140 (right!43140 xs!286)))))))

(declare-fun b!5062762 () Bool)

(declare-fun e!3159800 () Bool)

(assert (=> b!5062762 (= e!3159799 e!3159800)))

(declare-fun res!2155749 () Bool)

(assert (=> b!5062762 (= res!2155749 (not ((_ is Leaf!25845) (right!43140 (right!43140 (right!43140 xs!286))))))))

(assert (=> b!5062762 (=> res!2155749 e!3159800)))

(declare-fun b!5062763 () Bool)

(assert (=> b!5062763 (= e!3159800 (inv!77538 (right!43140 (right!43140 (right!43140 xs!286)))))))

(assert (= (and d!1631267 c!868832) b!5062761))

(assert (= (and d!1631267 (not c!868832)) b!5062762))

(assert (= (and b!5062762 (not res!2155749)) b!5062763))

(declare-fun m!6102268 () Bool)

(assert (=> b!5062761 m!6102268))

(declare-fun m!6102270 () Bool)

(assert (=> b!5062763 m!6102270))

(assert (=> b!5062549 d!1631267))

(declare-fun d!1631269 () Bool)

(declare-fun res!2155750 () Bool)

(declare-fun e!3159801 () Bool)

(assert (=> d!1631269 (=> (not res!2155750) (not e!3159801))))

(assert (=> d!1631269 (= res!2155750 (= (csize!31350 (right!43140 (right!43140 xs!286))) (+ (size!39068 (left!42810 (right!43140 (right!43140 xs!286)))) (size!39068 (right!43140 (right!43140 (right!43140 xs!286)))))))))

(assert (=> d!1631269 (= (inv!77537 (right!43140 (right!43140 xs!286))) e!3159801)))

(declare-fun b!5062764 () Bool)

(declare-fun res!2155751 () Bool)

(assert (=> b!5062764 (=> (not res!2155751) (not e!3159801))))

(assert (=> b!5062764 (= res!2155751 (and (not (= (left!42810 (right!43140 (right!43140 xs!286))) Empty!15560)) (not (= (right!43140 (right!43140 (right!43140 xs!286))) Empty!15560))))))

(declare-fun b!5062765 () Bool)

(declare-fun res!2155752 () Bool)

(assert (=> b!5062765 (=> (not res!2155752) (not e!3159801))))

(assert (=> b!5062765 (= res!2155752 (= (cheight!15771 (right!43140 (right!43140 xs!286))) (+ (max!0 (height!2137 (left!42810 (right!43140 (right!43140 xs!286)))) (height!2137 (right!43140 (right!43140 (right!43140 xs!286))))) 1)))))

(declare-fun b!5062766 () Bool)

(assert (=> b!5062766 (= e!3159801 (<= 0 (cheight!15771 (right!43140 (right!43140 xs!286)))))))

(assert (= (and d!1631269 res!2155750) b!5062764))

(assert (= (and b!5062764 res!2155751) b!5062765))

(assert (= (and b!5062765 res!2155752) b!5062766))

(declare-fun m!6102272 () Bool)

(assert (=> d!1631269 m!6102272))

(declare-fun m!6102274 () Bool)

(assert (=> d!1631269 m!6102274))

(declare-fun m!6102276 () Bool)

(assert (=> b!5062765 m!6102276))

(declare-fun m!6102278 () Bool)

(assert (=> b!5062765 m!6102278))

(assert (=> b!5062765 m!6102276))

(assert (=> b!5062765 m!6102278))

(declare-fun m!6102280 () Bool)

(assert (=> b!5062765 m!6102280))

(assert (=> b!5062519 d!1631269))

(declare-fun d!1631271 () Bool)

(declare-fun lt!2088351 () Int)

(assert (=> d!1631271 (= lt!2088351 (size!39067 (list!18981 (left!42810 (left!42810 ys!41)))))))

(assert (=> d!1631271 (= lt!2088351 (ite ((_ is Empty!15560) (left!42810 (left!42810 ys!41))) 0 (ite ((_ is Leaf!25845) (left!42810 (left!42810 ys!41))) (csize!31351 (left!42810 (left!42810 ys!41))) (csize!31350 (left!42810 (left!42810 ys!41))))))))

(assert (=> d!1631271 (= (size!39068 (left!42810 (left!42810 ys!41))) lt!2088351)))

(declare-fun bs!1189723 () Bool)

(assert (= bs!1189723 d!1631271))

(assert (=> bs!1189723 m!6102138))

(assert (=> bs!1189723 m!6102138))

(declare-fun m!6102282 () Bool)

(assert (=> bs!1189723 m!6102282))

(assert (=> d!1631041 d!1631271))

(declare-fun d!1631273 () Bool)

(declare-fun lt!2088352 () Int)

(assert (=> d!1631273 (= lt!2088352 (size!39067 (list!18981 (right!43140 (left!42810 ys!41)))))))

(assert (=> d!1631273 (= lt!2088352 (ite ((_ is Empty!15560) (right!43140 (left!42810 ys!41))) 0 (ite ((_ is Leaf!25845) (right!43140 (left!42810 ys!41))) (csize!31351 (right!43140 (left!42810 ys!41))) (csize!31350 (right!43140 (left!42810 ys!41))))))))

(assert (=> d!1631273 (= (size!39068 (right!43140 (left!42810 ys!41))) lt!2088352)))

(declare-fun bs!1189724 () Bool)

(assert (= bs!1189724 d!1631273))

(declare-fun m!6102284 () Bool)

(assert (=> bs!1189724 m!6102284))

(assert (=> bs!1189724 m!6102284))

(declare-fun m!6102286 () Bool)

(assert (=> bs!1189724 m!6102286))

(assert (=> d!1631041 d!1631273))

(declare-fun d!1631275 () Bool)

(assert (=> d!1631275 (= (inv!77534 (xs!18904 (right!43140 (left!42810 xs!286)))) (<= (size!39067 (innerList!15648 (xs!18904 (right!43140 (left!42810 xs!286))))) 2147483647))))

(declare-fun bs!1189725 () Bool)

(assert (= bs!1189725 d!1631275))

(declare-fun m!6102288 () Bool)

(assert (=> bs!1189725 m!6102288))

(assert (=> b!5062532 d!1631275))

(assert (=> b!5062400 d!1631065))

(assert (=> b!5062400 d!1631067))

(assert (=> b!5062409 d!1631071))

(assert (=> b!5062409 d!1631073))

(declare-fun d!1631277 () Bool)

(assert (=> d!1631277 (= (isEmpty!31624 (list!18981 (right!43140 xs!286))) ((_ is Nil!58430) (list!18981 (right!43140 xs!286))))))

(assert (=> d!1631029 d!1631277))

(declare-fun b!5062768 () Bool)

(declare-fun e!3159802 () List!58554)

(declare-fun e!3159803 () List!58554)

(assert (=> b!5062768 (= e!3159802 e!3159803)))

(declare-fun c!868834 () Bool)

(assert (=> b!5062768 (= c!868834 ((_ is Leaf!25845) (right!43140 xs!286)))))

(declare-fun b!5062770 () Bool)

(assert (=> b!5062770 (= e!3159803 (++!12780 (list!18981 (left!42810 (right!43140 xs!286))) (list!18981 (right!43140 (right!43140 xs!286)))))))

(declare-fun b!5062767 () Bool)

(assert (=> b!5062767 (= e!3159802 Nil!58430)))

(declare-fun d!1631279 () Bool)

(declare-fun c!868833 () Bool)

(assert (=> d!1631279 (= c!868833 ((_ is Empty!15560) (right!43140 xs!286)))))

(assert (=> d!1631279 (= (list!18981 (right!43140 xs!286)) e!3159802)))

(declare-fun b!5062769 () Bool)

(assert (=> b!5062769 (= e!3159803 (list!18980 (xs!18904 (right!43140 xs!286))))))

(assert (= (and d!1631279 c!868833) b!5062767))

(assert (= (and d!1631279 (not c!868833)) b!5062768))

(assert (= (and b!5062768 c!868834) b!5062769))

(assert (= (and b!5062768 (not c!868834)) b!5062770))

(declare-fun m!6102290 () Bool)

(assert (=> b!5062770 m!6102290))

(declare-fun m!6102292 () Bool)

(assert (=> b!5062770 m!6102292))

(assert (=> b!5062770 m!6102290))

(assert (=> b!5062770 m!6102292))

(declare-fun m!6102294 () Bool)

(assert (=> b!5062770 m!6102294))

(assert (=> b!5062769 m!6101794))

(assert (=> d!1631029 d!1631279))

(assert (=> d!1631029 d!1631207))

(declare-fun d!1631281 () Bool)

(assert (=> d!1631281 (= (inv!77534 (xs!18904 (left!42810 (right!43140 ys!41)))) (<= (size!39067 (innerList!15648 (xs!18904 (left!42810 (right!43140 ys!41))))) 2147483647))))

(declare-fun bs!1189726 () Bool)

(assert (= bs!1189726 d!1631281))

(declare-fun m!6102296 () Bool)

(assert (=> bs!1189726 m!6102296))

(assert (=> b!5062538 d!1631281))

(assert (=> b!5062484 d!1631203))

(assert (=> b!5062484 d!1631205))

(declare-fun d!1631283 () Bool)

(declare-fun lt!2088353 () Int)

(assert (=> d!1631283 (>= lt!2088353 0)))

(declare-fun e!3159804 () Int)

(assert (=> d!1631283 (= lt!2088353 e!3159804)))

(declare-fun c!868835 () Bool)

(assert (=> d!1631283 (= c!868835 ((_ is Nil!58430) (t!371267 (innerList!15648 (xs!18904 ys!41)))))))

(assert (=> d!1631283 (= (size!39067 (t!371267 (innerList!15648 (xs!18904 ys!41)))) lt!2088353)))

(declare-fun b!5062771 () Bool)

(assert (=> b!5062771 (= e!3159804 0)))

(declare-fun b!5062772 () Bool)

(assert (=> b!5062772 (= e!3159804 (+ 1 (size!39067 (t!371267 (t!371267 (innerList!15648 (xs!18904 ys!41)))))))))

(assert (= (and d!1631283 c!868835) b!5062771))

(assert (= (and d!1631283 (not c!868835)) b!5062772))

(declare-fun m!6102298 () Bool)

(assert (=> b!5062772 m!6102298))

(assert (=> b!5062471 d!1631283))

(declare-fun d!1631285 () Bool)

(assert (=> d!1631285 (= (inv!77534 (xs!18904 (left!42810 (left!42810 ys!41)))) (<= (size!39067 (innerList!15648 (xs!18904 (left!42810 (left!42810 ys!41))))) 2147483647))))

(declare-fun bs!1189727 () Bool)

(assert (= bs!1189727 d!1631285))

(declare-fun m!6102300 () Bool)

(assert (=> bs!1189727 m!6102300))

(assert (=> b!5062523 d!1631285))

(declare-fun d!1631287 () Bool)

(declare-fun res!2155758 () Bool)

(declare-fun e!3159806 () Bool)

(assert (=> d!1631287 (=> res!2155758 e!3159806)))

(assert (=> d!1631287 (= res!2155758 (not ((_ is Node!15560) (right!43140 (left!42810 xs!286)))))))

(assert (=> d!1631287 (= (isBalanced!4422 (right!43140 (left!42810 xs!286))) e!3159806)))

(declare-fun b!5062773 () Bool)

(declare-fun res!2155753 () Bool)

(declare-fun e!3159805 () Bool)

(assert (=> b!5062773 (=> (not res!2155753) (not e!3159805))))

(assert (=> b!5062773 (= res!2155753 (isBalanced!4422 (right!43140 (right!43140 (left!42810 xs!286)))))))

(declare-fun b!5062774 () Bool)

(assert (=> b!5062774 (= e!3159805 (not (isEmpty!31623 (right!43140 (right!43140 (left!42810 xs!286))))))))

(declare-fun b!5062775 () Bool)

(assert (=> b!5062775 (= e!3159806 e!3159805)))

(declare-fun res!2155755 () Bool)

(assert (=> b!5062775 (=> (not res!2155755) (not e!3159805))))

(assert (=> b!5062775 (= res!2155755 (<= (- 1) (- (height!2137 (left!42810 (right!43140 (left!42810 xs!286)))) (height!2137 (right!43140 (right!43140 (left!42810 xs!286)))))))))

(declare-fun b!5062776 () Bool)

(declare-fun res!2155756 () Bool)

(assert (=> b!5062776 (=> (not res!2155756) (not e!3159805))))

(assert (=> b!5062776 (= res!2155756 (<= (- (height!2137 (left!42810 (right!43140 (left!42810 xs!286)))) (height!2137 (right!43140 (right!43140 (left!42810 xs!286))))) 1))))

(declare-fun b!5062777 () Bool)

(declare-fun res!2155757 () Bool)

(assert (=> b!5062777 (=> (not res!2155757) (not e!3159805))))

(assert (=> b!5062777 (= res!2155757 (not (isEmpty!31623 (left!42810 (right!43140 (left!42810 xs!286))))))))

(declare-fun b!5062778 () Bool)

(declare-fun res!2155754 () Bool)

(assert (=> b!5062778 (=> (not res!2155754) (not e!3159805))))

(assert (=> b!5062778 (= res!2155754 (isBalanced!4422 (left!42810 (right!43140 (left!42810 xs!286)))))))

(assert (= (and d!1631287 (not res!2155758)) b!5062775))

(assert (= (and b!5062775 res!2155755) b!5062776))

(assert (= (and b!5062776 res!2155756) b!5062778))

(assert (= (and b!5062778 res!2155754) b!5062773))

(assert (= (and b!5062773 res!2155753) b!5062777))

(assert (= (and b!5062777 res!2155757) b!5062774))

(declare-fun m!6102302 () Bool)

(assert (=> b!5062776 m!6102302))

(declare-fun m!6102304 () Bool)

(assert (=> b!5062776 m!6102304))

(declare-fun m!6102306 () Bool)

(assert (=> b!5062774 m!6102306))

(declare-fun m!6102308 () Bool)

(assert (=> b!5062773 m!6102308))

(assert (=> b!5062775 m!6102302))

(assert (=> b!5062775 m!6102304))

(declare-fun m!6102310 () Bool)

(assert (=> b!5062777 m!6102310))

(declare-fun m!6102312 () Bool)

(assert (=> b!5062778 m!6102312))

(assert (=> b!5062492 d!1631287))

(assert (=> b!5062494 d!1631245))

(assert (=> b!5062494 d!1631247))

(declare-fun d!1631289 () Bool)

(declare-fun lt!2088354 () Bool)

(assert (=> d!1631289 (= lt!2088354 (isEmpty!31624 (list!18981 (right!43140 (right!43140 xs!286)))))))

(assert (=> d!1631289 (= lt!2088354 (= (size!39068 (right!43140 (right!43140 xs!286))) 0))))

(assert (=> d!1631289 (= (isEmpty!31623 (right!43140 (right!43140 xs!286))) lt!2088354)))

(declare-fun bs!1189728 () Bool)

(assert (= bs!1189728 d!1631289))

(assert (=> bs!1189728 m!6102292))

(assert (=> bs!1189728 m!6102292))

(declare-fun m!6102314 () Bool)

(assert (=> bs!1189728 m!6102314))

(assert (=> bs!1189728 m!6101766))

(assert (=> b!5062427 d!1631289))

(declare-fun d!1631291 () Bool)

(declare-fun lt!2088355 () Int)

(assert (=> d!1631291 (>= lt!2088355 0)))

(declare-fun e!3159807 () Int)

(assert (=> d!1631291 (= lt!2088355 e!3159807)))

(declare-fun c!868836 () Bool)

(assert (=> d!1631291 (= c!868836 ((_ is Nil!58430) (innerList!15648 (xs!18904 (right!43140 ys!41)))))))

(assert (=> d!1631291 (= (size!39067 (innerList!15648 (xs!18904 (right!43140 ys!41)))) lt!2088355)))

(declare-fun b!5062779 () Bool)

(assert (=> b!5062779 (= e!3159807 0)))

(declare-fun b!5062780 () Bool)

(assert (=> b!5062780 (= e!3159807 (+ 1 (size!39067 (t!371267 (innerList!15648 (xs!18904 (right!43140 ys!41)))))))))

(assert (= (and d!1631291 c!868836) b!5062779))

(assert (= (and d!1631291 (not c!868836)) b!5062780))

(declare-fun m!6102316 () Bool)

(assert (=> b!5062780 m!6102316))

(assert (=> d!1631087 d!1631291))

(declare-fun d!1631293 () Bool)

(declare-fun lt!2088356 () Int)

(assert (=> d!1631293 (>= lt!2088356 0)))

(declare-fun e!3159808 () Int)

(assert (=> d!1631293 (= lt!2088356 e!3159808)))

(declare-fun c!868837 () Bool)

(assert (=> d!1631293 (= c!868837 ((_ is Nil!58430) (list!18980 (xs!18904 (left!42810 ys!41)))))))

(assert (=> d!1631293 (= (size!39067 (list!18980 (xs!18904 (left!42810 ys!41)))) lt!2088356)))

(declare-fun b!5062781 () Bool)

(assert (=> b!5062781 (= e!3159808 0)))

(declare-fun b!5062782 () Bool)

(assert (=> b!5062782 (= e!3159808 (+ 1 (size!39067 (t!371267 (list!18980 (xs!18904 (left!42810 ys!41)))))))))

(assert (= (and d!1631293 c!868837) b!5062781))

(assert (= (and d!1631293 (not c!868837)) b!5062782))

(declare-fun m!6102318 () Bool)

(assert (=> b!5062782 m!6102318))

(assert (=> b!5062436 d!1631293))

(declare-fun d!1631295 () Bool)

(assert (=> d!1631295 (= (list!18980 (xs!18904 (left!42810 ys!41))) (innerList!15648 (xs!18904 (left!42810 ys!41))))))

(assert (=> b!5062436 d!1631295))

(assert (=> b!5062507 d!1631173))

(assert (=> b!5062507 d!1631175))

(declare-fun d!1631297 () Bool)

(assert (=> d!1631297 (= (inv!77534 (xs!18904 (right!43140 (right!43140 ys!41)))) (<= (size!39067 (innerList!15648 (xs!18904 (right!43140 (right!43140 ys!41))))) 2147483647))))

(declare-fun bs!1189729 () Bool)

(assert (= bs!1189729 d!1631297))

(declare-fun m!6102320 () Bool)

(assert (=> bs!1189729 m!6102320))

(assert (=> b!5062541 d!1631297))

(declare-fun d!1631299 () Bool)

(declare-fun res!2155759 () Bool)

(declare-fun e!3159809 () Bool)

(assert (=> d!1631299 (=> (not res!2155759) (not e!3159809))))

(assert (=> d!1631299 (= res!2155759 (<= (size!39067 (list!18980 (xs!18904 (left!42810 (left!42810 ys!41))))) 512))))

(assert (=> d!1631299 (= (inv!77538 (left!42810 (left!42810 ys!41))) e!3159809)))

(declare-fun b!5062783 () Bool)

(declare-fun res!2155760 () Bool)

(assert (=> b!5062783 (=> (not res!2155760) (not e!3159809))))

(assert (=> b!5062783 (= res!2155760 (= (csize!31351 (left!42810 (left!42810 ys!41))) (size!39067 (list!18980 (xs!18904 (left!42810 (left!42810 ys!41)))))))))

(declare-fun b!5062784 () Bool)

(assert (=> b!5062784 (= e!3159809 (and (> (csize!31351 (left!42810 (left!42810 ys!41))) 0) (<= (csize!31351 (left!42810 (left!42810 ys!41))) 512)))))

(assert (= (and d!1631299 res!2155759) b!5062783))

(assert (= (and b!5062783 res!2155760) b!5062784))

(declare-fun m!6102322 () Bool)

(assert (=> d!1631299 m!6102322))

(assert (=> d!1631299 m!6102322))

(declare-fun m!6102324 () Bool)

(assert (=> d!1631299 m!6102324))

(assert (=> b!5062783 m!6102322))

(assert (=> b!5062783 m!6102322))

(assert (=> b!5062783 m!6102324))

(assert (=> b!5062488 d!1631299))

(declare-fun d!1631301 () Bool)

(assert (=> d!1631301 (= (inv!77534 (xs!18904 (left!42810 (right!43140 xs!286)))) (<= (size!39067 (innerList!15648 (xs!18904 (left!42810 (right!43140 xs!286))))) 2147483647))))

(declare-fun bs!1189730 () Bool)

(assert (= bs!1189730 d!1631301))

(declare-fun m!6102326 () Bool)

(assert (=> bs!1189730 m!6102326))

(assert (=> b!5062547 d!1631301))

(declare-fun d!1631303 () Bool)

(declare-fun res!2155761 () Bool)

(declare-fun e!3159810 () Bool)

(assert (=> d!1631303 (=> (not res!2155761) (not e!3159810))))

(assert (=> d!1631303 (= res!2155761 (= (csize!31350 (left!42810 (right!43140 xs!286))) (+ (size!39068 (left!42810 (left!42810 (right!43140 xs!286)))) (size!39068 (right!43140 (left!42810 (right!43140 xs!286)))))))))

(assert (=> d!1631303 (= (inv!77537 (left!42810 (right!43140 xs!286))) e!3159810)))

(declare-fun b!5062785 () Bool)

(declare-fun res!2155762 () Bool)

(assert (=> b!5062785 (=> (not res!2155762) (not e!3159810))))

(assert (=> b!5062785 (= res!2155762 (and (not (= (left!42810 (left!42810 (right!43140 xs!286))) Empty!15560)) (not (= (right!43140 (left!42810 (right!43140 xs!286))) Empty!15560))))))

(declare-fun b!5062786 () Bool)

(declare-fun res!2155763 () Bool)

(assert (=> b!5062786 (=> (not res!2155763) (not e!3159810))))

(assert (=> b!5062786 (= res!2155763 (= (cheight!15771 (left!42810 (right!43140 xs!286))) (+ (max!0 (height!2137 (left!42810 (left!42810 (right!43140 xs!286)))) (height!2137 (right!43140 (left!42810 (right!43140 xs!286))))) 1)))))

(declare-fun b!5062787 () Bool)

(assert (=> b!5062787 (= e!3159810 (<= 0 (cheight!15771 (left!42810 (right!43140 xs!286)))))))

(assert (= (and d!1631303 res!2155761) b!5062785))

(assert (= (and b!5062785 res!2155762) b!5062786))

(assert (= (and b!5062786 res!2155763) b!5062787))

(declare-fun m!6102328 () Bool)

(assert (=> d!1631303 m!6102328))

(declare-fun m!6102330 () Bool)

(assert (=> d!1631303 m!6102330))

(assert (=> b!5062786 m!6102248))

(assert (=> b!5062786 m!6102250))

(assert (=> b!5062786 m!6102248))

(assert (=> b!5062786 m!6102250))

(declare-fun m!6102332 () Bool)

(assert (=> b!5062786 m!6102332))

(assert (=> b!5062516 d!1631303))

(declare-fun d!1631305 () Bool)

(assert (=> d!1631305 (= (isEmpty!31624 (list!18981 (left!42810 ys!41))) ((_ is Nil!58430) (list!18981 (left!42810 ys!41))))))

(assert (=> d!1631047 d!1631305))

(declare-fun b!5062789 () Bool)

(declare-fun e!3159811 () List!58554)

(declare-fun e!3159812 () List!58554)

(assert (=> b!5062789 (= e!3159811 e!3159812)))

(declare-fun c!868839 () Bool)

(assert (=> b!5062789 (= c!868839 ((_ is Leaf!25845) (left!42810 ys!41)))))

(declare-fun b!5062791 () Bool)

(assert (=> b!5062791 (= e!3159812 (++!12780 (list!18981 (left!42810 (left!42810 ys!41))) (list!18981 (right!43140 (left!42810 ys!41)))))))

(declare-fun b!5062788 () Bool)

(assert (=> b!5062788 (= e!3159811 Nil!58430)))

(declare-fun d!1631307 () Bool)

(declare-fun c!868838 () Bool)

(assert (=> d!1631307 (= c!868838 ((_ is Empty!15560) (left!42810 ys!41)))))

(assert (=> d!1631307 (= (list!18981 (left!42810 ys!41)) e!3159811)))

(declare-fun b!5062790 () Bool)

(assert (=> b!5062790 (= e!3159812 (list!18980 (xs!18904 (left!42810 ys!41))))))

(assert (= (and d!1631307 c!868838) b!5062788))

(assert (= (and d!1631307 (not c!868838)) b!5062789))

(assert (= (and b!5062789 c!868839) b!5062790))

(assert (= (and b!5062789 (not c!868839)) b!5062791))

(assert (=> b!5062791 m!6102138))

(assert (=> b!5062791 m!6102284))

(assert (=> b!5062791 m!6102138))

(assert (=> b!5062791 m!6102284))

(declare-fun m!6102334 () Bool)

(assert (=> b!5062791 m!6102334))

(assert (=> b!5062790 m!6101708))

(assert (=> d!1631047 d!1631307))

(declare-fun d!1631309 () Bool)

(declare-fun lt!2088357 () Int)

(assert (=> d!1631309 (= lt!2088357 (size!39067 (list!18981 (left!42810 ys!41))))))

(assert (=> d!1631309 (= lt!2088357 (ite ((_ is Empty!15560) (left!42810 ys!41)) 0 (ite ((_ is Leaf!25845) (left!42810 ys!41)) (csize!31351 (left!42810 ys!41)) (csize!31350 (left!42810 ys!41)))))))

(assert (=> d!1631309 (= (size!39068 (left!42810 ys!41)) lt!2088357)))

(declare-fun bs!1189731 () Bool)

(assert (= bs!1189731 d!1631309))

(assert (=> bs!1189731 m!6101760))

(assert (=> bs!1189731 m!6101760))

(declare-fun m!6102336 () Bool)

(assert (=> bs!1189731 m!6102336))

(assert (=> d!1631047 d!1631309))

(assert (=> b!5062475 d!1631177))

(assert (=> b!5062475 d!1631179))

(declare-fun d!1631311 () Bool)

(declare-fun res!2155769 () Bool)

(declare-fun e!3159814 () Bool)

(assert (=> d!1631311 (=> res!2155769 e!3159814)))

(assert (=> d!1631311 (= res!2155769 (not ((_ is Node!15560) (left!42810 (left!42810 ys!41)))))))

(assert (=> d!1631311 (= (isBalanced!4422 (left!42810 (left!42810 ys!41))) e!3159814)))

(declare-fun b!5062792 () Bool)

(declare-fun res!2155764 () Bool)

(declare-fun e!3159813 () Bool)

(assert (=> b!5062792 (=> (not res!2155764) (not e!3159813))))

(assert (=> b!5062792 (= res!2155764 (isBalanced!4422 (right!43140 (left!42810 (left!42810 ys!41)))))))

(declare-fun b!5062793 () Bool)

(assert (=> b!5062793 (= e!3159813 (not (isEmpty!31623 (right!43140 (left!42810 (left!42810 ys!41))))))))

(declare-fun b!5062794 () Bool)

(assert (=> b!5062794 (= e!3159814 e!3159813)))

(declare-fun res!2155766 () Bool)

(assert (=> b!5062794 (=> (not res!2155766) (not e!3159813))))

(assert (=> b!5062794 (= res!2155766 (<= (- 1) (- (height!2137 (left!42810 (left!42810 (left!42810 ys!41)))) (height!2137 (right!43140 (left!42810 (left!42810 ys!41)))))))))

(declare-fun b!5062795 () Bool)

(declare-fun res!2155767 () Bool)

(assert (=> b!5062795 (=> (not res!2155767) (not e!3159813))))

(assert (=> b!5062795 (= res!2155767 (<= (- (height!2137 (left!42810 (left!42810 (left!42810 ys!41)))) (height!2137 (right!43140 (left!42810 (left!42810 ys!41))))) 1))))

(declare-fun b!5062796 () Bool)

(declare-fun res!2155768 () Bool)

(assert (=> b!5062796 (=> (not res!2155768) (not e!3159813))))

(assert (=> b!5062796 (= res!2155768 (not (isEmpty!31623 (left!42810 (left!42810 (left!42810 ys!41))))))))

(declare-fun b!5062797 () Bool)

(declare-fun res!2155765 () Bool)

(assert (=> b!5062797 (=> (not res!2155765) (not e!3159813))))

(assert (=> b!5062797 (= res!2155765 (isBalanced!4422 (left!42810 (left!42810 (left!42810 ys!41)))))))

(assert (= (and d!1631311 (not res!2155769)) b!5062794))

(assert (= (and b!5062794 res!2155766) b!5062795))

(assert (= (and b!5062795 res!2155767) b!5062797))

(assert (= (and b!5062797 res!2155765) b!5062792))

(assert (= (and b!5062792 res!2155764) b!5062796))

(assert (= (and b!5062796 res!2155768) b!5062793))

(declare-fun m!6102338 () Bool)

(assert (=> b!5062795 m!6102338))

(declare-fun m!6102340 () Bool)

(assert (=> b!5062795 m!6102340))

(declare-fun m!6102342 () Bool)

(assert (=> b!5062793 m!6102342))

(declare-fun m!6102344 () Bool)

(assert (=> b!5062792 m!6102344))

(assert (=> b!5062794 m!6102338))

(assert (=> b!5062794 m!6102340))

(declare-fun m!6102346 () Bool)

(assert (=> b!5062796 m!6102346))

(declare-fun m!6102348 () Bool)

(assert (=> b!5062797 m!6102348))

(assert (=> b!5062477 d!1631311))

(declare-fun d!1631313 () Bool)

(declare-fun lt!2088358 () Int)

(assert (=> d!1631313 (>= lt!2088358 0)))

(declare-fun e!3159815 () Int)

(assert (=> d!1631313 (= lt!2088358 e!3159815)))

(declare-fun c!868840 () Bool)

(assert (=> d!1631313 (= c!868840 ((_ is Nil!58430) (list!18980 (xs!18904 (right!43140 xs!286)))))))

(assert (=> d!1631313 (= (size!39067 (list!18980 (xs!18904 (right!43140 xs!286)))) lt!2088358)))

(declare-fun b!5062798 () Bool)

(assert (=> b!5062798 (= e!3159815 0)))

(declare-fun b!5062799 () Bool)

(assert (=> b!5062799 (= e!3159815 (+ 1 (size!39067 (t!371267 (list!18980 (xs!18904 (right!43140 xs!286)))))))))

(assert (= (and d!1631313 c!868840) b!5062798))

(assert (= (and d!1631313 (not c!868840)) b!5062799))

(declare-fun m!6102350 () Bool)

(assert (=> b!5062799 m!6102350))

(assert (=> d!1631059 d!1631313))

(declare-fun d!1631315 () Bool)

(assert (=> d!1631315 (= (list!18980 (xs!18904 (right!43140 xs!286))) (innerList!15648 (xs!18904 (right!43140 xs!286))))))

(assert (=> d!1631059 d!1631315))

(declare-fun d!1631317 () Bool)

(declare-fun res!2155775 () Bool)

(declare-fun e!3159817 () Bool)

(assert (=> d!1631317 (=> res!2155775 e!3159817)))

(assert (=> d!1631317 (= res!2155775 (not ((_ is Node!15560) (left!42810 (right!43140 ys!41)))))))

(assert (=> d!1631317 (= (isBalanced!4422 (left!42810 (right!43140 ys!41))) e!3159817)))

(declare-fun b!5062800 () Bool)

(declare-fun res!2155770 () Bool)

(declare-fun e!3159816 () Bool)

(assert (=> b!5062800 (=> (not res!2155770) (not e!3159816))))

(assert (=> b!5062800 (= res!2155770 (isBalanced!4422 (right!43140 (left!42810 (right!43140 ys!41)))))))

(declare-fun b!5062801 () Bool)

(assert (=> b!5062801 (= e!3159816 (not (isEmpty!31623 (right!43140 (left!42810 (right!43140 ys!41))))))))

(declare-fun b!5062802 () Bool)

(assert (=> b!5062802 (= e!3159817 e!3159816)))

(declare-fun res!2155772 () Bool)

(assert (=> b!5062802 (=> (not res!2155772) (not e!3159816))))

(assert (=> b!5062802 (= res!2155772 (<= (- 1) (- (height!2137 (left!42810 (left!42810 (right!43140 ys!41)))) (height!2137 (right!43140 (left!42810 (right!43140 ys!41)))))))))

(declare-fun b!5062803 () Bool)

(declare-fun res!2155773 () Bool)

(assert (=> b!5062803 (=> (not res!2155773) (not e!3159816))))

(assert (=> b!5062803 (= res!2155773 (<= (- (height!2137 (left!42810 (left!42810 (right!43140 ys!41)))) (height!2137 (right!43140 (left!42810 (right!43140 ys!41))))) 1))))

(declare-fun b!5062804 () Bool)

(declare-fun res!2155774 () Bool)

(assert (=> b!5062804 (=> (not res!2155774) (not e!3159816))))

(assert (=> b!5062804 (= res!2155774 (not (isEmpty!31623 (left!42810 (left!42810 (right!43140 ys!41))))))))

(declare-fun b!5062805 () Bool)

(declare-fun res!2155771 () Bool)

(assert (=> b!5062805 (=> (not res!2155771) (not e!3159816))))

(assert (=> b!5062805 (= res!2155771 (isBalanced!4422 (left!42810 (left!42810 (right!43140 ys!41)))))))

(assert (= (and d!1631317 (not res!2155775)) b!5062802))

(assert (= (and b!5062802 res!2155772) b!5062803))

(assert (= (and b!5062803 res!2155773) b!5062805))

(assert (= (and b!5062805 res!2155771) b!5062800))

(assert (= (and b!5062800 res!2155770) b!5062804))

(assert (= (and b!5062804 res!2155774) b!5062801))

(assert (=> b!5062803 m!6102160))

(assert (=> b!5062803 m!6102162))

(declare-fun m!6102352 () Bool)

(assert (=> b!5062801 m!6102352))

(declare-fun m!6102354 () Bool)

(assert (=> b!5062800 m!6102354))

(assert (=> b!5062802 m!6102160))

(assert (=> b!5062802 m!6102162))

(declare-fun m!6102356 () Bool)

(assert (=> b!5062804 m!6102356))

(declare-fun m!6102358 () Bool)

(assert (=> b!5062805 m!6102358))

(assert (=> b!5062509 d!1631317))

(assert (=> d!1631027 d!1631293))

(assert (=> d!1631027 d!1631295))

(declare-fun d!1631319 () Bool)

(declare-fun c!868841 () Bool)

(assert (=> d!1631319 (= c!868841 ((_ is Node!15560) (left!42810 (right!43140 (left!42810 xs!286)))))))

(declare-fun e!3159818 () Bool)

(assert (=> d!1631319 (= (inv!77533 (left!42810 (right!43140 (left!42810 xs!286)))) e!3159818)))

(declare-fun b!5062806 () Bool)

(assert (=> b!5062806 (= e!3159818 (inv!77537 (left!42810 (right!43140 (left!42810 xs!286)))))))

(declare-fun b!5062807 () Bool)

(declare-fun e!3159819 () Bool)

(assert (=> b!5062807 (= e!3159818 e!3159819)))

(declare-fun res!2155776 () Bool)

(assert (=> b!5062807 (= res!2155776 (not ((_ is Leaf!25845) (left!42810 (right!43140 (left!42810 xs!286))))))))

(assert (=> b!5062807 (=> res!2155776 e!3159819)))

(declare-fun b!5062808 () Bool)

(assert (=> b!5062808 (= e!3159819 (inv!77538 (left!42810 (right!43140 (left!42810 xs!286)))))))

(assert (= (and d!1631319 c!868841) b!5062806))

(assert (= (and d!1631319 (not c!868841)) b!5062807))

(assert (= (and b!5062807 (not res!2155776)) b!5062808))

(declare-fun m!6102360 () Bool)

(assert (=> b!5062806 m!6102360))

(declare-fun m!6102362 () Bool)

(assert (=> b!5062808 m!6102362))

(assert (=> b!5062531 d!1631319))

(declare-fun d!1631321 () Bool)

(declare-fun c!868842 () Bool)

(assert (=> d!1631321 (= c!868842 ((_ is Node!15560) (right!43140 (right!43140 (left!42810 xs!286)))))))

(declare-fun e!3159820 () Bool)

(assert (=> d!1631321 (= (inv!77533 (right!43140 (right!43140 (left!42810 xs!286)))) e!3159820)))

(declare-fun b!5062809 () Bool)

(assert (=> b!5062809 (= e!3159820 (inv!77537 (right!43140 (right!43140 (left!42810 xs!286)))))))

(declare-fun b!5062810 () Bool)

(declare-fun e!3159821 () Bool)

(assert (=> b!5062810 (= e!3159820 e!3159821)))

(declare-fun res!2155777 () Bool)

(assert (=> b!5062810 (= res!2155777 (not ((_ is Leaf!25845) (right!43140 (right!43140 (left!42810 xs!286))))))))

(assert (=> b!5062810 (=> res!2155777 e!3159821)))

(declare-fun b!5062811 () Bool)

(assert (=> b!5062811 (= e!3159821 (inv!77538 (right!43140 (right!43140 (left!42810 xs!286)))))))

(assert (= (and d!1631321 c!868842) b!5062809))

(assert (= (and d!1631321 (not c!868842)) b!5062810))

(assert (= (and b!5062810 (not res!2155777)) b!5062811))

(declare-fun m!6102364 () Bool)

(assert (=> b!5062809 m!6102364))

(declare-fun m!6102366 () Bool)

(assert (=> b!5062811 m!6102366))

(assert (=> b!5062531 d!1631321))

(declare-fun d!1631323 () Bool)

(declare-fun lt!2088359 () Int)

(assert (=> d!1631323 (= lt!2088359 (size!39067 (list!18981 (left!42810 (right!43140 ys!41)))))))

(assert (=> d!1631323 (= lt!2088359 (ite ((_ is Empty!15560) (left!42810 (right!43140 ys!41))) 0 (ite ((_ is Leaf!25845) (left!42810 (right!43140 ys!41))) (csize!31351 (left!42810 (right!43140 ys!41))) (csize!31350 (left!42810 (right!43140 ys!41))))))))

(assert (=> d!1631323 (= (size!39068 (left!42810 (right!43140 ys!41))) lt!2088359)))

(declare-fun bs!1189732 () Bool)

(assert (= bs!1189732 d!1631323))

(assert (=> bs!1189732 m!6102134))

(assert (=> bs!1189732 m!6102134))

(declare-fun m!6102368 () Bool)

(assert (=> bs!1189732 m!6102368))

(assert (=> d!1631051 d!1631323))

(declare-fun d!1631325 () Bool)

(declare-fun lt!2088360 () Int)

(assert (=> d!1631325 (= lt!2088360 (size!39067 (list!18981 (right!43140 (right!43140 ys!41)))))))

(assert (=> d!1631325 (= lt!2088360 (ite ((_ is Empty!15560) (right!43140 (right!43140 ys!41))) 0 (ite ((_ is Leaf!25845) (right!43140 (right!43140 ys!41))) (csize!31351 (right!43140 (right!43140 ys!41))) (csize!31350 (right!43140 (right!43140 ys!41))))))))

(assert (=> d!1631325 (= (size!39068 (right!43140 (right!43140 ys!41))) lt!2088360)))

(declare-fun bs!1189733 () Bool)

(assert (= bs!1189733 d!1631325))

(assert (=> bs!1189733 m!6102150))

(assert (=> bs!1189733 m!6102150))

(declare-fun m!6102370 () Bool)

(assert (=> bs!1189733 m!6102370))

(assert (=> d!1631051 d!1631325))

(declare-fun d!1631327 () Bool)

(declare-fun res!2155778 () Bool)

(declare-fun e!3159822 () Bool)

(assert (=> d!1631327 (=> (not res!2155778) (not e!3159822))))

(assert (=> d!1631327 (= res!2155778 (<= (size!39067 (list!18980 (xs!18904 (left!42810 (right!43140 xs!286))))) 512))))

(assert (=> d!1631327 (= (inv!77538 (left!42810 (right!43140 xs!286))) e!3159822)))

(declare-fun b!5062812 () Bool)

(declare-fun res!2155779 () Bool)

(assert (=> b!5062812 (=> (not res!2155779) (not e!3159822))))

(assert (=> b!5062812 (= res!2155779 (= (csize!31351 (left!42810 (right!43140 xs!286))) (size!39067 (list!18980 (xs!18904 (left!42810 (right!43140 xs!286)))))))))

(declare-fun b!5062813 () Bool)

(assert (=> b!5062813 (= e!3159822 (and (> (csize!31351 (left!42810 (right!43140 xs!286))) 0) (<= (csize!31351 (left!42810 (right!43140 xs!286))) 512)))))

(assert (= (and d!1631327 res!2155778) b!5062812))

(assert (= (and b!5062812 res!2155779) b!5062813))

(declare-fun m!6102372 () Bool)

(assert (=> d!1631327 m!6102372))

(assert (=> d!1631327 m!6102372))

(declare-fun m!6102374 () Bool)

(assert (=> d!1631327 m!6102374))

(assert (=> b!5062812 m!6102372))

(assert (=> b!5062812 m!6102372))

(assert (=> b!5062812 m!6102374))

(assert (=> b!5062518 d!1631327))

(declare-fun d!1631329 () Bool)

(declare-fun res!2155780 () Bool)

(declare-fun e!3159823 () Bool)

(assert (=> d!1631329 (=> (not res!2155780) (not e!3159823))))

(assert (=> d!1631329 (= res!2155780 (<= (size!39067 (list!18980 (xs!18904 (right!43140 (right!43140 xs!286))))) 512))))

(assert (=> d!1631329 (= (inv!77538 (right!43140 (right!43140 xs!286))) e!3159823)))

(declare-fun b!5062814 () Bool)

(declare-fun res!2155781 () Bool)

(assert (=> b!5062814 (=> (not res!2155781) (not e!3159823))))

(assert (=> b!5062814 (= res!2155781 (= (csize!31351 (right!43140 (right!43140 xs!286))) (size!39067 (list!18980 (xs!18904 (right!43140 (right!43140 xs!286)))))))))

(declare-fun b!5062815 () Bool)

(assert (=> b!5062815 (= e!3159823 (and (> (csize!31351 (right!43140 (right!43140 xs!286))) 0) (<= (csize!31351 (right!43140 (right!43140 xs!286))) 512)))))

(assert (= (and d!1631329 res!2155780) b!5062814))

(assert (= (and b!5062814 res!2155781) b!5062815))

(declare-fun m!6102376 () Bool)

(assert (=> d!1631329 m!6102376))

(assert (=> d!1631329 m!6102376))

(declare-fun m!6102378 () Bool)

(assert (=> d!1631329 m!6102378))

(assert (=> b!5062814 m!6102376))

(assert (=> b!5062814 m!6102376))

(assert (=> b!5062814 m!6102378))

(assert (=> b!5062521 d!1631329))

(declare-fun d!1631331 () Bool)

(declare-fun lt!2088361 () Int)

(assert (=> d!1631331 (>= lt!2088361 0)))

(declare-fun e!3159824 () Int)

(assert (=> d!1631331 (= lt!2088361 e!3159824)))

(declare-fun c!868843 () Bool)

(assert (=> d!1631331 (= c!868843 ((_ is Nil!58430) (list!18980 (xs!18904 xs!286))))))

(assert (=> d!1631331 (= (size!39067 (list!18980 (xs!18904 xs!286))) lt!2088361)))

(declare-fun b!5062816 () Bool)

(assert (=> b!5062816 (= e!3159824 0)))

(declare-fun b!5062817 () Bool)

(assert (=> b!5062817 (= e!3159824 (+ 1 (size!39067 (t!371267 (list!18980 (xs!18904 xs!286))))))))

(assert (= (and d!1631331 c!868843) b!5062816))

(assert (= (and d!1631331 (not c!868843)) b!5062817))

(declare-fun m!6102380 () Bool)

(assert (=> b!5062817 m!6102380))

(assert (=> d!1631039 d!1631331))

(declare-fun d!1631333 () Bool)

(assert (=> d!1631333 (= (list!18980 (xs!18904 xs!286)) (innerList!15648 (xs!18904 xs!286)))))

(assert (=> d!1631039 d!1631333))

(assert (=> b!5062482 d!1631257))

(assert (=> b!5062482 d!1631259))

(declare-fun d!1631335 () Bool)

(declare-fun res!2155782 () Bool)

(declare-fun e!3159825 () Bool)

(assert (=> d!1631335 (=> (not res!2155782) (not e!3159825))))

(assert (=> d!1631335 (= res!2155782 (= (csize!31350 (left!42810 (left!42810 ys!41))) (+ (size!39068 (left!42810 (left!42810 (left!42810 ys!41)))) (size!39068 (right!43140 (left!42810 (left!42810 ys!41)))))))))

(assert (=> d!1631335 (= (inv!77537 (left!42810 (left!42810 ys!41))) e!3159825)))

(declare-fun b!5062818 () Bool)

(declare-fun res!2155783 () Bool)

(assert (=> b!5062818 (=> (not res!2155783) (not e!3159825))))

(assert (=> b!5062818 (= res!2155783 (and (not (= (left!42810 (left!42810 (left!42810 ys!41))) Empty!15560)) (not (= (right!43140 (left!42810 (left!42810 ys!41))) Empty!15560))))))

(declare-fun b!5062819 () Bool)

(declare-fun res!2155784 () Bool)

(assert (=> b!5062819 (=> (not res!2155784) (not e!3159825))))

(assert (=> b!5062819 (= res!2155784 (= (cheight!15771 (left!42810 (left!42810 ys!41))) (+ (max!0 (height!2137 (left!42810 (left!42810 (left!42810 ys!41)))) (height!2137 (right!43140 (left!42810 (left!42810 ys!41))))) 1)))))

(declare-fun b!5062820 () Bool)

(assert (=> b!5062820 (= e!3159825 (<= 0 (cheight!15771 (left!42810 (left!42810 ys!41)))))))

(assert (= (and d!1631335 res!2155782) b!5062818))

(assert (= (and b!5062818 res!2155783) b!5062819))

(assert (= (and b!5062819 res!2155784) b!5062820))

(declare-fun m!6102382 () Bool)

(assert (=> d!1631335 m!6102382))

(declare-fun m!6102384 () Bool)

(assert (=> d!1631335 m!6102384))

(assert (=> b!5062819 m!6102338))

(assert (=> b!5062819 m!6102340))

(assert (=> b!5062819 m!6102338))

(assert (=> b!5062819 m!6102340))

(declare-fun m!6102386 () Bool)

(assert (=> b!5062819 m!6102386))

(assert (=> b!5062486 d!1631335))

(declare-fun d!1631337 () Bool)

(declare-fun res!2155785 () Bool)

(declare-fun e!3159826 () Bool)

(assert (=> d!1631337 (=> (not res!2155785) (not e!3159826))))

(assert (=> d!1631337 (= res!2155785 (= (csize!31350 (right!43140 (left!42810 xs!286))) (+ (size!39068 (left!42810 (right!43140 (left!42810 xs!286)))) (size!39068 (right!43140 (right!43140 (left!42810 xs!286)))))))))

(assert (=> d!1631337 (= (inv!77537 (right!43140 (left!42810 xs!286))) e!3159826)))

(declare-fun b!5062821 () Bool)

(declare-fun res!2155786 () Bool)

(assert (=> b!5062821 (=> (not res!2155786) (not e!3159826))))

(assert (=> b!5062821 (= res!2155786 (and (not (= (left!42810 (right!43140 (left!42810 xs!286))) Empty!15560)) (not (= (right!43140 (right!43140 (left!42810 xs!286))) Empty!15560))))))

(declare-fun b!5062822 () Bool)

(declare-fun res!2155787 () Bool)

(assert (=> b!5062822 (=> (not res!2155787) (not e!3159826))))

(assert (=> b!5062822 (= res!2155787 (= (cheight!15771 (right!43140 (left!42810 xs!286))) (+ (max!0 (height!2137 (left!42810 (right!43140 (left!42810 xs!286)))) (height!2137 (right!43140 (right!43140 (left!42810 xs!286))))) 1)))))

(declare-fun b!5062823 () Bool)

(assert (=> b!5062823 (= e!3159826 (<= 0 (cheight!15771 (right!43140 (left!42810 xs!286)))))))

(assert (= (and d!1631337 res!2155785) b!5062821))

(assert (= (and b!5062821 res!2155786) b!5062822))

(assert (= (and b!5062822 res!2155787) b!5062823))

(declare-fun m!6102388 () Bool)

(assert (=> d!1631337 m!6102388))

(declare-fun m!6102390 () Bool)

(assert (=> d!1631337 m!6102390))

(assert (=> b!5062822 m!6102302))

(assert (=> b!5062822 m!6102304))

(assert (=> b!5062822 m!6102302))

(assert (=> b!5062822 m!6102304))

(declare-fun m!6102392 () Bool)

(assert (=> b!5062822 m!6102392))

(assert (=> b!5062501 d!1631337))

(declare-fun d!1631339 () Bool)

(declare-fun lt!2088362 () Bool)

(assert (=> d!1631339 (= lt!2088362 (isEmpty!31624 (list!18981 (right!43140 (left!42810 ys!41)))))))

(assert (=> d!1631339 (= lt!2088362 (= (size!39068 (right!43140 (left!42810 ys!41))) 0))))

(assert (=> d!1631339 (= (isEmpty!31623 (right!43140 (left!42810 ys!41))) lt!2088362)))

(declare-fun bs!1189734 () Bool)

(assert (= bs!1189734 d!1631339))

(assert (=> bs!1189734 m!6102284))

(assert (=> bs!1189734 m!6102284))

(declare-fun m!6102394 () Bool)

(assert (=> bs!1189734 m!6102394))

(assert (=> bs!1189734 m!6101744))

(assert (=> b!5062473 d!1631339))

(declare-fun d!1631341 () Bool)

(assert (=> d!1631341 (= (inv!77534 (xs!18904 (right!43140 (left!42810 ys!41)))) (<= (size!39067 (innerList!15648 (xs!18904 (right!43140 (left!42810 ys!41))))) 2147483647))))

(declare-fun bs!1189735 () Bool)

(assert (= bs!1189735 d!1631341))

(declare-fun m!6102396 () Bool)

(assert (=> bs!1189735 m!6102396))

(assert (=> b!5062526 d!1631341))

(declare-fun d!1631343 () Bool)

(declare-fun res!2155788 () Bool)

(declare-fun e!3159827 () Bool)

(assert (=> d!1631343 (=> (not res!2155788) (not e!3159827))))

(assert (=> d!1631343 (= res!2155788 (<= (size!39067 (list!18980 (xs!18904 (right!43140 (left!42810 xs!286))))) 512))))

(assert (=> d!1631343 (= (inv!77538 (right!43140 (left!42810 xs!286))) e!3159827)))

(declare-fun b!5062824 () Bool)

(declare-fun res!2155789 () Bool)

(assert (=> b!5062824 (=> (not res!2155789) (not e!3159827))))

(assert (=> b!5062824 (= res!2155789 (= (csize!31351 (right!43140 (left!42810 xs!286))) (size!39067 (list!18980 (xs!18904 (right!43140 (left!42810 xs!286)))))))))

(declare-fun b!5062825 () Bool)

(assert (=> b!5062825 (= e!3159827 (and (> (csize!31351 (right!43140 (left!42810 xs!286))) 0) (<= (csize!31351 (right!43140 (left!42810 xs!286))) 512)))))

(assert (= (and d!1631343 res!2155788) b!5062824))

(assert (= (and b!5062824 res!2155789) b!5062825))

(declare-fun m!6102398 () Bool)

(assert (=> d!1631343 m!6102398))

(assert (=> d!1631343 m!6102398))

(declare-fun m!6102400 () Bool)

(assert (=> d!1631343 m!6102400))

(assert (=> b!5062824 m!6102398))

(assert (=> b!5062824 m!6102398))

(assert (=> b!5062824 m!6102400))

(assert (=> b!5062503 d!1631343))

(assert (=> b!5062456 d!1631331))

(assert (=> b!5062456 d!1631333))

(declare-fun d!1631345 () Bool)

(declare-fun lt!2088363 () Bool)

(assert (=> d!1631345 (= lt!2088363 (isEmpty!31624 (list!18981 (right!43140 (right!43140 ys!41)))))))

(assert (=> d!1631345 (= lt!2088363 (= (size!39068 (right!43140 (right!43140 ys!41))) 0))))

(assert (=> d!1631345 (= (isEmpty!31623 (right!43140 (right!43140 ys!41))) lt!2088363)))

(declare-fun bs!1189736 () Bool)

(assert (= bs!1189736 d!1631345))

(assert (=> bs!1189736 m!6102150))

(assert (=> bs!1189736 m!6102150))

(declare-fun m!6102402 () Bool)

(assert (=> bs!1189736 m!6102402))

(assert (=> bs!1189736 m!6101772))

(assert (=> b!5062505 d!1631345))

(assert (=> b!5062428 d!1631215))

(assert (=> b!5062428 d!1630961))

(declare-fun d!1631347 () Bool)

(declare-fun lt!2088364 () Int)

(assert (=> d!1631347 (>= lt!2088364 0)))

(declare-fun e!3159828 () Int)

(assert (=> d!1631347 (= lt!2088364 e!3159828)))

(declare-fun c!868844 () Bool)

(assert (=> d!1631347 (= c!868844 ((_ is Nil!58430) (innerList!15648 (xs!18904 (left!42810 xs!286)))))))

(assert (=> d!1631347 (= (size!39067 (innerList!15648 (xs!18904 (left!42810 xs!286)))) lt!2088364)))

(declare-fun b!5062826 () Bool)

(assert (=> b!5062826 (= e!3159828 0)))

(declare-fun b!5062827 () Bool)

(assert (=> b!5062827 (= e!3159828 (+ 1 (size!39067 (t!371267 (innerList!15648 (xs!18904 (left!42810 xs!286)))))))))

(assert (= (and d!1631347 c!868844) b!5062826))

(assert (= (and d!1631347 (not c!868844)) b!5062827))

(declare-fun m!6102404 () Bool)

(assert (=> b!5062827 m!6102404))

(assert (=> d!1631079 d!1631347))

(declare-fun d!1631349 () Bool)

(declare-fun res!2155795 () Bool)

(declare-fun e!3159830 () Bool)

(assert (=> d!1631349 (=> res!2155795 e!3159830)))

(assert (=> d!1631349 (= res!2155795 (not ((_ is Node!15560) (left!42810 (left!42810 xs!286)))))))

(assert (=> d!1631349 (= (isBalanced!4422 (left!42810 (left!42810 xs!286))) e!3159830)))

(declare-fun b!5062828 () Bool)

(declare-fun res!2155790 () Bool)

(declare-fun e!3159829 () Bool)

(assert (=> b!5062828 (=> (not res!2155790) (not e!3159829))))

(assert (=> b!5062828 (= res!2155790 (isBalanced!4422 (right!43140 (left!42810 (left!42810 xs!286)))))))

(declare-fun b!5062829 () Bool)

(assert (=> b!5062829 (= e!3159829 (not (isEmpty!31623 (right!43140 (left!42810 (left!42810 xs!286))))))))

(declare-fun b!5062830 () Bool)

(assert (=> b!5062830 (= e!3159830 e!3159829)))

(declare-fun res!2155792 () Bool)

(assert (=> b!5062830 (=> (not res!2155792) (not e!3159829))))

(assert (=> b!5062830 (= res!2155792 (<= (- 1) (- (height!2137 (left!42810 (left!42810 (left!42810 xs!286)))) (height!2137 (right!43140 (left!42810 (left!42810 xs!286)))))))))

(declare-fun b!5062831 () Bool)

(declare-fun res!2155793 () Bool)

(assert (=> b!5062831 (=> (not res!2155793) (not e!3159829))))

(assert (=> b!5062831 (= res!2155793 (<= (- (height!2137 (left!42810 (left!42810 (left!42810 xs!286)))) (height!2137 (right!43140 (left!42810 (left!42810 xs!286))))) 1))))

(declare-fun b!5062832 () Bool)

(declare-fun res!2155794 () Bool)

(assert (=> b!5062832 (=> (not res!2155794) (not e!3159829))))

(assert (=> b!5062832 (= res!2155794 (not (isEmpty!31623 (left!42810 (left!42810 (left!42810 xs!286))))))))

(declare-fun b!5062833 () Bool)

(declare-fun res!2155791 () Bool)

(assert (=> b!5062833 (=> (not res!2155791) (not e!3159829))))

(assert (=> b!5062833 (= res!2155791 (isBalanced!4422 (left!42810 (left!42810 (left!42810 xs!286)))))))

(assert (= (and d!1631349 (not res!2155795)) b!5062830))

(assert (= (and b!5062830 res!2155792) b!5062831))

(assert (= (and b!5062831 res!2155793) b!5062833))

(assert (= (and b!5062833 res!2155791) b!5062828))

(assert (= (and b!5062828 res!2155790) b!5062832))

(assert (= (and b!5062832 res!2155794) b!5062829))

(declare-fun m!6102406 () Bool)

(assert (=> b!5062831 m!6102406))

(declare-fun m!6102408 () Bool)

(assert (=> b!5062831 m!6102408))

(declare-fun m!6102410 () Bool)

(assert (=> b!5062829 m!6102410))

(declare-fun m!6102412 () Bool)

(assert (=> b!5062828 m!6102412))

(assert (=> b!5062830 m!6102406))

(assert (=> b!5062830 m!6102408))

(declare-fun m!6102414 () Bool)

(assert (=> b!5062832 m!6102414))

(declare-fun m!6102416 () Bool)

(assert (=> b!5062833 m!6102416))

(assert (=> b!5062497 d!1631349))

(assert (=> d!1631057 d!1631217))

(assert (=> d!1631057 d!1631219))

(declare-fun d!1631351 () Bool)

(declare-fun lt!2088365 () Bool)

(assert (=> d!1631351 (= lt!2088365 (isEmpty!31624 (list!18981 (left!42810 (right!43140 xs!286)))))))

(assert (=> d!1631351 (= lt!2088365 (= (size!39068 (left!42810 (right!43140 xs!286))) 0))))

(assert (=> d!1631351 (= (isEmpty!31623 (left!42810 (right!43140 xs!286))) lt!2088365)))

(declare-fun bs!1189737 () Bool)

(assert (= bs!1189737 d!1631351))

(assert (=> bs!1189737 m!6102290))

(assert (=> bs!1189737 m!6102290))

(declare-fun m!6102418 () Bool)

(assert (=> bs!1189737 m!6102418))

(assert (=> bs!1189737 m!6101764))

(assert (=> b!5062430 d!1631351))

(declare-fun d!1631353 () Bool)

(assert (=> d!1631353 (= (inv!77534 (xs!18904 (left!42810 (left!42810 xs!286)))) (<= (size!39067 (innerList!15648 (xs!18904 (left!42810 (left!42810 xs!286))))) 2147483647))))

(declare-fun bs!1189738 () Bool)

(assert (= bs!1189738 d!1631353))

(declare-fun m!6102420 () Bool)

(assert (=> bs!1189738 m!6102420))

(assert (=> b!5062529 d!1631353))

(declare-fun d!1631355 () Bool)

(assert (=> d!1631355 (= (max!0 (height!2137 (left!42810 ys!41)) (height!2137 (right!43140 ys!41))) (ite (< (height!2137 (left!42810 ys!41)) (height!2137 (right!43140 ys!41))) (height!2137 (right!43140 ys!41)) (height!2137 (left!42810 ys!41))))))

(assert (=> b!5062462 d!1631355))

(assert (=> b!5062462 d!1631089))

(assert (=> b!5062462 d!1631091))

(declare-fun d!1631357 () Bool)

(declare-fun res!2155796 () Bool)

(declare-fun e!3159831 () Bool)

(assert (=> d!1631357 (=> (not res!2155796) (not e!3159831))))

(assert (=> d!1631357 (= res!2155796 (= (csize!31350 (right!43140 (right!43140 ys!41))) (+ (size!39068 (left!42810 (right!43140 (right!43140 ys!41)))) (size!39068 (right!43140 (right!43140 (right!43140 ys!41)))))))))

(assert (=> d!1631357 (= (inv!77537 (right!43140 (right!43140 ys!41))) e!3159831)))

(declare-fun b!5062834 () Bool)

(declare-fun res!2155797 () Bool)

(assert (=> b!5062834 (=> (not res!2155797) (not e!3159831))))

(assert (=> b!5062834 (= res!2155797 (and (not (= (left!42810 (right!43140 (right!43140 ys!41))) Empty!15560)) (not (= (right!43140 (right!43140 (right!43140 ys!41))) Empty!15560))))))

(declare-fun b!5062835 () Bool)

(declare-fun res!2155798 () Bool)

(assert (=> b!5062835 (=> (not res!2155798) (not e!3159831))))

(assert (=> b!5062835 (= res!2155798 (= (cheight!15771 (right!43140 (right!43140 ys!41))) (+ (max!0 (height!2137 (left!42810 (right!43140 (right!43140 ys!41)))) (height!2137 (right!43140 (right!43140 (right!43140 ys!41))))) 1)))))

(declare-fun b!5062836 () Bool)

(assert (=> b!5062836 (= e!3159831 (<= 0 (cheight!15771 (right!43140 (right!43140 ys!41)))))))

(assert (= (and d!1631357 res!2155796) b!5062834))

(assert (= (and b!5062834 res!2155797) b!5062835))

(assert (= (and b!5062835 res!2155798) b!5062836))

(declare-fun m!6102422 () Bool)

(assert (=> d!1631357 m!6102422))

(declare-fun m!6102424 () Bool)

(assert (=> d!1631357 m!6102424))

(assert (=> b!5062835 m!6102184))

(assert (=> b!5062835 m!6102186))

(assert (=> b!5062835 m!6102184))

(assert (=> b!5062835 m!6102186))

(declare-fun m!6102426 () Bool)

(assert (=> b!5062835 m!6102426))

(assert (=> b!5062513 d!1631357))

(declare-fun d!1631359 () Bool)

(declare-fun lt!2088366 () Int)

(assert (=> d!1631359 (>= lt!2088366 0)))

(declare-fun e!3159832 () Int)

(assert (=> d!1631359 (= lt!2088366 e!3159832)))

(declare-fun c!868845 () Bool)

(assert (=> d!1631359 (= c!868845 ((_ is Nil!58430) (innerList!15648 (xs!18904 (left!42810 ys!41)))))))

(assert (=> d!1631359 (= (size!39067 (innerList!15648 (xs!18904 (left!42810 ys!41)))) lt!2088366)))

(declare-fun b!5062837 () Bool)

(assert (=> b!5062837 (= e!3159832 0)))

(declare-fun b!5062838 () Bool)

(assert (=> b!5062838 (= e!3159832 (+ 1 (size!39067 (t!371267 (innerList!15648 (xs!18904 (left!42810 ys!41)))))))))

(assert (= (and d!1631359 c!868845) b!5062837))

(assert (= (and d!1631359 (not c!868845)) b!5062838))

(declare-fun m!6102428 () Bool)

(assert (=> b!5062838 m!6102428))

(assert (=> d!1631075 d!1631359))

(declare-fun d!1631361 () Bool)

(declare-fun c!868846 () Bool)

(assert (=> d!1631361 (= c!868846 ((_ is Node!15560) (left!42810 (left!42810 (left!42810 ys!41)))))))

(declare-fun e!3159833 () Bool)

(assert (=> d!1631361 (= (inv!77533 (left!42810 (left!42810 (left!42810 ys!41)))) e!3159833)))

(declare-fun b!5062839 () Bool)

(assert (=> b!5062839 (= e!3159833 (inv!77537 (left!42810 (left!42810 (left!42810 ys!41)))))))

(declare-fun b!5062840 () Bool)

(declare-fun e!3159834 () Bool)

(assert (=> b!5062840 (= e!3159833 e!3159834)))

(declare-fun res!2155799 () Bool)

(assert (=> b!5062840 (= res!2155799 (not ((_ is Leaf!25845) (left!42810 (left!42810 (left!42810 ys!41))))))))

(assert (=> b!5062840 (=> res!2155799 e!3159834)))

(declare-fun b!5062841 () Bool)

(assert (=> b!5062841 (= e!3159834 (inv!77538 (left!42810 (left!42810 (left!42810 ys!41)))))))

(assert (= (and d!1631361 c!868846) b!5062839))

(assert (= (and d!1631361 (not c!868846)) b!5062840))

(assert (= (and b!5062840 (not res!2155799)) b!5062841))

(declare-fun m!6102430 () Bool)

(assert (=> b!5062839 m!6102430))

(declare-fun m!6102432 () Bool)

(assert (=> b!5062841 m!6102432))

(assert (=> b!5062522 d!1631361))

(declare-fun d!1631363 () Bool)

(declare-fun c!868847 () Bool)

(assert (=> d!1631363 (= c!868847 ((_ is Node!15560) (right!43140 (left!42810 (left!42810 ys!41)))))))

(declare-fun e!3159835 () Bool)

(assert (=> d!1631363 (= (inv!77533 (right!43140 (left!42810 (left!42810 ys!41)))) e!3159835)))

(declare-fun b!5062842 () Bool)

(assert (=> b!5062842 (= e!3159835 (inv!77537 (right!43140 (left!42810 (left!42810 ys!41)))))))

(declare-fun b!5062843 () Bool)

(declare-fun e!3159836 () Bool)

(assert (=> b!5062843 (= e!3159835 e!3159836)))

(declare-fun res!2155800 () Bool)

(assert (=> b!5062843 (= res!2155800 (not ((_ is Leaf!25845) (right!43140 (left!42810 (left!42810 ys!41))))))))

(assert (=> b!5062843 (=> res!2155800 e!3159836)))

(declare-fun b!5062844 () Bool)

(assert (=> b!5062844 (= e!3159836 (inv!77538 (right!43140 (left!42810 (left!42810 ys!41)))))))

(assert (= (and d!1631363 c!868847) b!5062842))

(assert (= (and d!1631363 (not c!868847)) b!5062843))

(assert (= (and b!5062843 (not res!2155800)) b!5062844))

(declare-fun m!6102434 () Bool)

(assert (=> b!5062842 m!6102434))

(declare-fun m!6102436 () Bool)

(assert (=> b!5062844 m!6102436))

(assert (=> b!5062522 d!1631363))

(declare-fun d!1631365 () Bool)

(declare-fun res!2155801 () Bool)

(declare-fun e!3159837 () Bool)

(assert (=> d!1631365 (=> (not res!2155801) (not e!3159837))))

(assert (=> d!1631365 (= res!2155801 (= (csize!31350 (left!42810 (left!42810 xs!286))) (+ (size!39068 (left!42810 (left!42810 (left!42810 xs!286)))) (size!39068 (right!43140 (left!42810 (left!42810 xs!286)))))))))

(assert (=> d!1631365 (= (inv!77537 (left!42810 (left!42810 xs!286))) e!3159837)))

(declare-fun b!5062845 () Bool)

(declare-fun res!2155802 () Bool)

(assert (=> b!5062845 (=> (not res!2155802) (not e!3159837))))

(assert (=> b!5062845 (= res!2155802 (and (not (= (left!42810 (left!42810 (left!42810 xs!286))) Empty!15560)) (not (= (right!43140 (left!42810 (left!42810 xs!286))) Empty!15560))))))

(declare-fun b!5062846 () Bool)

(declare-fun res!2155803 () Bool)

(assert (=> b!5062846 (=> (not res!2155803) (not e!3159837))))

(assert (=> b!5062846 (= res!2155803 (= (cheight!15771 (left!42810 (left!42810 xs!286))) (+ (max!0 (height!2137 (left!42810 (left!42810 (left!42810 xs!286)))) (height!2137 (right!43140 (left!42810 (left!42810 xs!286))))) 1)))))

(declare-fun b!5062847 () Bool)

(assert (=> b!5062847 (= e!3159837 (<= 0 (cheight!15771 (left!42810 (left!42810 xs!286)))))))

(assert (= (and d!1631365 res!2155801) b!5062845))

(assert (= (and b!5062845 res!2155802) b!5062846))

(assert (= (and b!5062846 res!2155803) b!5062847))

(declare-fun m!6102438 () Bool)

(assert (=> d!1631365 m!6102438))

(declare-fun m!6102440 () Bool)

(assert (=> d!1631365 m!6102440))

(assert (=> b!5062846 m!6102406))

(assert (=> b!5062846 m!6102408))

(assert (=> b!5062846 m!6102406))

(assert (=> b!5062846 m!6102408))

(declare-fun m!6102442 () Bool)

(assert (=> b!5062846 m!6102442))

(assert (=> b!5062498 d!1631365))

(declare-fun d!1631367 () Bool)

(declare-fun res!2155804 () Bool)

(declare-fun e!3159838 () Bool)

(assert (=> d!1631367 (=> (not res!2155804) (not e!3159838))))

(assert (=> d!1631367 (= res!2155804 (<= (size!39067 (list!18980 (xs!18904 (left!42810 (left!42810 xs!286))))) 512))))

(assert (=> d!1631367 (= (inv!77538 (left!42810 (left!42810 xs!286))) e!3159838)))

(declare-fun b!5062848 () Bool)

(declare-fun res!2155805 () Bool)

(assert (=> b!5062848 (=> (not res!2155805) (not e!3159838))))

(assert (=> b!5062848 (= res!2155805 (= (csize!31351 (left!42810 (left!42810 xs!286))) (size!39067 (list!18980 (xs!18904 (left!42810 (left!42810 xs!286)))))))))

(declare-fun b!5062849 () Bool)

(assert (=> b!5062849 (= e!3159838 (and (> (csize!31351 (left!42810 (left!42810 xs!286))) 0) (<= (csize!31351 (left!42810 (left!42810 xs!286))) 512)))))

(assert (= (and d!1631367 res!2155804) b!5062848))

(assert (= (and b!5062848 res!2155805) b!5062849))

(declare-fun m!6102444 () Bool)

(assert (=> d!1631367 m!6102444))

(assert (=> d!1631367 m!6102444))

(declare-fun m!6102446 () Bool)

(assert (=> d!1631367 m!6102446))

(assert (=> b!5062848 m!6102444))

(assert (=> b!5062848 m!6102444))

(assert (=> b!5062848 m!6102446))

(assert (=> b!5062500 d!1631367))

(declare-fun d!1631369 () Bool)

(declare-fun c!868848 () Bool)

(assert (=> d!1631369 (= c!868848 ((_ is Node!15560) (left!42810 (left!42810 (right!43140 ys!41)))))))

(declare-fun e!3159839 () Bool)

(assert (=> d!1631369 (= (inv!77533 (left!42810 (left!42810 (right!43140 ys!41)))) e!3159839)))

(declare-fun b!5062850 () Bool)

(assert (=> b!5062850 (= e!3159839 (inv!77537 (left!42810 (left!42810 (right!43140 ys!41)))))))

(declare-fun b!5062851 () Bool)

(declare-fun e!3159840 () Bool)

(assert (=> b!5062851 (= e!3159839 e!3159840)))

(declare-fun res!2155806 () Bool)

(assert (=> b!5062851 (= res!2155806 (not ((_ is Leaf!25845) (left!42810 (left!42810 (right!43140 ys!41))))))))

(assert (=> b!5062851 (=> res!2155806 e!3159840)))

(declare-fun b!5062852 () Bool)

(assert (=> b!5062852 (= e!3159840 (inv!77538 (left!42810 (left!42810 (right!43140 ys!41)))))))

(assert (= (and d!1631369 c!868848) b!5062850))

(assert (= (and d!1631369 (not c!868848)) b!5062851))

(assert (= (and b!5062851 (not res!2155806)) b!5062852))

(declare-fun m!6102448 () Bool)

(assert (=> b!5062850 m!6102448))

(declare-fun m!6102450 () Bool)

(assert (=> b!5062852 m!6102450))

(assert (=> b!5062537 d!1631369))

(declare-fun d!1631371 () Bool)

(declare-fun c!868849 () Bool)

(assert (=> d!1631371 (= c!868849 ((_ is Node!15560) (right!43140 (left!42810 (right!43140 ys!41)))))))

(declare-fun e!3159841 () Bool)

(assert (=> d!1631371 (= (inv!77533 (right!43140 (left!42810 (right!43140 ys!41)))) e!3159841)))

(declare-fun b!5062853 () Bool)

(assert (=> b!5062853 (= e!3159841 (inv!77537 (right!43140 (left!42810 (right!43140 ys!41)))))))

(declare-fun b!5062854 () Bool)

(declare-fun e!3159842 () Bool)

(assert (=> b!5062854 (= e!3159841 e!3159842)))

(declare-fun res!2155807 () Bool)

(assert (=> b!5062854 (= res!2155807 (not ((_ is Leaf!25845) (right!43140 (left!42810 (right!43140 ys!41))))))))

(assert (=> b!5062854 (=> res!2155807 e!3159842)))

(declare-fun b!5062855 () Bool)

(assert (=> b!5062855 (= e!3159842 (inv!77538 (right!43140 (left!42810 (right!43140 ys!41)))))))

(assert (= (and d!1631371 c!868849) b!5062853))

(assert (= (and d!1631371 (not c!868849)) b!5062854))

(assert (= (and b!5062854 (not res!2155807)) b!5062855))

(declare-fun m!6102452 () Bool)

(assert (=> b!5062853 m!6102452))

(declare-fun m!6102454 () Bool)

(assert (=> b!5062855 m!6102454))

(assert (=> b!5062537 d!1631371))

(assert (=> b!5062406 d!1631081))

(assert (=> b!5062406 d!1631083))

(assert (=> b!5062480 d!1631313))

(assert (=> b!5062480 d!1631315))

(assert (=> d!1631045 d!1631309))

(assert (=> d!1631045 d!1631195))

(declare-fun d!1631373 () Bool)

(declare-fun lt!2088367 () Bool)

(assert (=> d!1631373 (= lt!2088367 (isEmpty!31624 (list!18981 (right!43140 (left!42810 xs!286)))))))

(assert (=> d!1631373 (= lt!2088367 (= (size!39068 (right!43140 (left!42810 xs!286))) 0))))

(assert (=> d!1631373 (= (isEmpty!31623 (right!43140 (left!42810 xs!286))) lt!2088367)))

(declare-fun bs!1189739 () Bool)

(assert (= bs!1189739 d!1631373))

(assert (=> bs!1189739 m!6102144))

(assert (=> bs!1189739 m!6102144))

(declare-fun m!6102456 () Bool)

(assert (=> bs!1189739 m!6102456))

(assert (=> bs!1189739 m!6101726))

(assert (=> b!5062493 d!1631373))

(declare-fun d!1631375 () Bool)

(assert (=> d!1631375 (= (max!0 (height!2137 (left!42810 (right!43140 ys!41))) (height!2137 (right!43140 (right!43140 ys!41)))) (ite (< (height!2137 (left!42810 (right!43140 ys!41))) (height!2137 (right!43140 (right!43140 ys!41)))) (height!2137 (right!43140 (right!43140 ys!41))) (height!2137 (left!42810 (right!43140 ys!41)))))))

(assert (=> b!5062468 d!1631375))

(assert (=> b!5062468 d!1631173))

(assert (=> b!5062468 d!1631175))

(assert (=> b!5062495 d!1631245))

(assert (=> b!5062495 d!1631247))

(declare-fun d!1631377 () Bool)

(declare-fun lt!2088368 () Int)

(assert (=> d!1631377 (= lt!2088368 (size!39067 (list!18981 (left!42810 (right!43140 xs!286)))))))

(assert (=> d!1631377 (= lt!2088368 (ite ((_ is Empty!15560) (left!42810 (right!43140 xs!286))) 0 (ite ((_ is Leaf!25845) (left!42810 (right!43140 xs!286))) (csize!31351 (left!42810 (right!43140 xs!286))) (csize!31350 (left!42810 (right!43140 xs!286))))))))

(assert (=> d!1631377 (= (size!39068 (left!42810 (right!43140 xs!286))) lt!2088368)))

(declare-fun bs!1189740 () Bool)

(assert (= bs!1189740 d!1631377))

(assert (=> bs!1189740 m!6102290))

(assert (=> bs!1189740 m!6102290))

(declare-fun m!6102458 () Bool)

(assert (=> bs!1189740 m!6102458))

(assert (=> d!1631049 d!1631377))

(declare-fun d!1631379 () Bool)

(declare-fun lt!2088369 () Int)

(assert (=> d!1631379 (= lt!2088369 (size!39067 (list!18981 (right!43140 (right!43140 xs!286)))))))

(assert (=> d!1631379 (= lt!2088369 (ite ((_ is Empty!15560) (right!43140 (right!43140 xs!286))) 0 (ite ((_ is Leaf!25845) (right!43140 (right!43140 xs!286))) (csize!31351 (right!43140 (right!43140 xs!286))) (csize!31350 (right!43140 (right!43140 xs!286))))))))

(assert (=> d!1631379 (= (size!39068 (right!43140 (right!43140 xs!286))) lt!2088369)))

(declare-fun bs!1189741 () Bool)

(assert (= bs!1189741 d!1631379))

(assert (=> bs!1189741 m!6102292))

(assert (=> bs!1189741 m!6102292))

(declare-fun m!6102460 () Bool)

(assert (=> bs!1189741 m!6102460))

(assert (=> d!1631049 d!1631379))

(assert (=> b!5062415 d!1631093))

(assert (=> b!5062415 d!1631095))

(declare-fun d!1631381 () Bool)

(declare-fun res!2155813 () Bool)

(declare-fun e!3159844 () Bool)

(assert (=> d!1631381 (=> res!2155813 e!3159844)))

(assert (=> d!1631381 (= res!2155813 (not ((_ is Node!15560) (right!43140 (right!43140 xs!286)))))))

(assert (=> d!1631381 (= (isBalanced!4422 (right!43140 (right!43140 xs!286))) e!3159844)))

(declare-fun b!5062856 () Bool)

(declare-fun res!2155808 () Bool)

(declare-fun e!3159843 () Bool)

(assert (=> b!5062856 (=> (not res!2155808) (not e!3159843))))

(assert (=> b!5062856 (= res!2155808 (isBalanced!4422 (right!43140 (right!43140 (right!43140 xs!286)))))))

(declare-fun b!5062857 () Bool)

(assert (=> b!5062857 (= e!3159843 (not (isEmpty!31623 (right!43140 (right!43140 (right!43140 xs!286))))))))

(declare-fun b!5062858 () Bool)

(assert (=> b!5062858 (= e!3159844 e!3159843)))

(declare-fun res!2155810 () Bool)

(assert (=> b!5062858 (=> (not res!2155810) (not e!3159843))))

(assert (=> b!5062858 (= res!2155810 (<= (- 1) (- (height!2137 (left!42810 (right!43140 (right!43140 xs!286)))) (height!2137 (right!43140 (right!43140 (right!43140 xs!286)))))))))

(declare-fun b!5062859 () Bool)

(declare-fun res!2155811 () Bool)

(assert (=> b!5062859 (=> (not res!2155811) (not e!3159843))))

(assert (=> b!5062859 (= res!2155811 (<= (- (height!2137 (left!42810 (right!43140 (right!43140 xs!286)))) (height!2137 (right!43140 (right!43140 (right!43140 xs!286))))) 1))))

(declare-fun b!5062860 () Bool)

(declare-fun res!2155812 () Bool)

(assert (=> b!5062860 (=> (not res!2155812) (not e!3159843))))

(assert (=> b!5062860 (= res!2155812 (not (isEmpty!31623 (left!42810 (right!43140 (right!43140 xs!286))))))))

(declare-fun b!5062861 () Bool)

(declare-fun res!2155809 () Bool)

(assert (=> b!5062861 (=> (not res!2155809) (not e!3159843))))

(assert (=> b!5062861 (= res!2155809 (isBalanced!4422 (left!42810 (right!43140 (right!43140 xs!286)))))))

(assert (= (and d!1631381 (not res!2155813)) b!5062858))

(assert (= (and b!5062858 res!2155810) b!5062859))

(assert (= (and b!5062859 res!2155811) b!5062861))

(assert (= (and b!5062861 res!2155809) b!5062856))

(assert (= (and b!5062856 res!2155808) b!5062860))

(assert (= (and b!5062860 res!2155812) b!5062857))

(assert (=> b!5062859 m!6102276))

(assert (=> b!5062859 m!6102278))

(declare-fun m!6102462 () Bool)

(assert (=> b!5062857 m!6102462))

(declare-fun m!6102464 () Bool)

(assert (=> b!5062856 m!6102464))

(assert (=> b!5062858 m!6102276))

(assert (=> b!5062858 m!6102278))

(declare-fun m!6102466 () Bool)

(assert (=> b!5062860 m!6102466))

(declare-fun m!6102468 () Bool)

(assert (=> b!5062861 m!6102468))

(assert (=> b!5062426 d!1631381))

(declare-fun b!5062862 () Bool)

(declare-fun e!3159845 () Bool)

(declare-fun tp!1414306 () Bool)

(assert (=> b!5062862 (= e!3159845 (and tp_is_empty!37041 tp!1414306))))

(assert (=> b!5062536 (= tp!1414260 e!3159845)))

(assert (= (and b!5062536 ((_ is Cons!58430) (t!371267 (t!371267 (innerList!15648 (xs!18904 ys!41)))))) b!5062862))

(declare-fun e!3159847 () Bool)

(declare-fun b!5062863 () Bool)

(declare-fun tp!1414309 () Bool)

(declare-fun tp!1414307 () Bool)

(assert (=> b!5062863 (= e!3159847 (and (inv!77533 (left!42810 (left!42810 (left!42810 (right!43140 xs!286))))) tp!1414307 (inv!77533 (right!43140 (left!42810 (left!42810 (right!43140 xs!286))))) tp!1414309))))

(declare-fun b!5062865 () Bool)

(declare-fun e!3159846 () Bool)

(declare-fun tp!1414308 () Bool)

(assert (=> b!5062865 (= e!3159846 tp!1414308)))

(declare-fun b!5062864 () Bool)

(assert (=> b!5062864 (= e!3159847 (and (inv!77534 (xs!18904 (left!42810 (left!42810 (right!43140 xs!286))))) e!3159846))))

(assert (=> b!5062546 (= tp!1414270 (and (inv!77533 (left!42810 (left!42810 (right!43140 xs!286)))) e!3159847))))

(assert (= (and b!5062546 ((_ is Node!15560) (left!42810 (left!42810 (right!43140 xs!286))))) b!5062863))

(assert (= b!5062864 b!5062865))

(assert (= (and b!5062546 ((_ is Leaf!25845) (left!42810 (left!42810 (right!43140 xs!286))))) b!5062864))

(declare-fun m!6102470 () Bool)

(assert (=> b!5062863 m!6102470))

(declare-fun m!6102472 () Bool)

(assert (=> b!5062863 m!6102472))

(declare-fun m!6102474 () Bool)

(assert (=> b!5062864 m!6102474))

(assert (=> b!5062546 m!6101900))

(declare-fun e!3159849 () Bool)

(declare-fun tp!1414312 () Bool)

(declare-fun b!5062866 () Bool)

(declare-fun tp!1414310 () Bool)

(assert (=> b!5062866 (= e!3159849 (and (inv!77533 (left!42810 (right!43140 (left!42810 (right!43140 xs!286))))) tp!1414310 (inv!77533 (right!43140 (right!43140 (left!42810 (right!43140 xs!286))))) tp!1414312))))

(declare-fun b!5062868 () Bool)

(declare-fun e!3159848 () Bool)

(declare-fun tp!1414311 () Bool)

(assert (=> b!5062868 (= e!3159848 tp!1414311)))

(declare-fun b!5062867 () Bool)

(assert (=> b!5062867 (= e!3159849 (and (inv!77534 (xs!18904 (right!43140 (left!42810 (right!43140 xs!286))))) e!3159848))))

(assert (=> b!5062546 (= tp!1414272 (and (inv!77533 (right!43140 (left!42810 (right!43140 xs!286)))) e!3159849))))

(assert (= (and b!5062546 ((_ is Node!15560) (right!43140 (left!42810 (right!43140 xs!286))))) b!5062866))

(assert (= b!5062867 b!5062868))

(assert (= (and b!5062546 ((_ is Leaf!25845) (right!43140 (left!42810 (right!43140 xs!286))))) b!5062867))

(declare-fun m!6102476 () Bool)

(assert (=> b!5062866 m!6102476))

(declare-fun m!6102478 () Bool)

(assert (=> b!5062866 m!6102478))

(declare-fun m!6102480 () Bool)

(assert (=> b!5062867 m!6102480))

(assert (=> b!5062546 m!6101902))

(declare-fun b!5062869 () Bool)

(declare-fun e!3159850 () Bool)

(declare-fun tp!1414313 () Bool)

(assert (=> b!5062869 (= e!3159850 (and tp_is_empty!37041 tp!1414313))))

(assert (=> b!5062527 (= tp!1414250 e!3159850)))

(assert (= (and b!5062527 ((_ is Cons!58430) (innerList!15648 (xs!18904 (right!43140 (left!42810 ys!41)))))) b!5062869))

(declare-fun b!5062870 () Bool)

(declare-fun e!3159851 () Bool)

(declare-fun tp!1414314 () Bool)

(assert (=> b!5062870 (= e!3159851 (and tp_is_empty!37041 tp!1414314))))

(assert (=> b!5062542 (= tp!1414265 e!3159851)))

(assert (= (and b!5062542 ((_ is Cons!58430) (innerList!15648 (xs!18904 (right!43140 (right!43140 ys!41)))))) b!5062870))

(declare-fun tp!1414317 () Bool)

(declare-fun e!3159853 () Bool)

(declare-fun tp!1414315 () Bool)

(declare-fun b!5062871 () Bool)

(assert (=> b!5062871 (= e!3159853 (and (inv!77533 (left!42810 (left!42810 (left!42810 (left!42810 xs!286))))) tp!1414315 (inv!77533 (right!43140 (left!42810 (left!42810 (left!42810 xs!286))))) tp!1414317))))

(declare-fun b!5062873 () Bool)

(declare-fun e!3159852 () Bool)

(declare-fun tp!1414316 () Bool)

(assert (=> b!5062873 (= e!3159852 tp!1414316)))

(declare-fun b!5062872 () Bool)

(assert (=> b!5062872 (= e!3159853 (and (inv!77534 (xs!18904 (left!42810 (left!42810 (left!42810 xs!286))))) e!3159852))))

(assert (=> b!5062528 (= tp!1414252 (and (inv!77533 (left!42810 (left!42810 (left!42810 xs!286)))) e!3159853))))

(assert (= (and b!5062528 ((_ is Node!15560) (left!42810 (left!42810 (left!42810 xs!286))))) b!5062871))

(assert (= b!5062872 b!5062873))

(assert (= (and b!5062528 ((_ is Leaf!25845) (left!42810 (left!42810 (left!42810 xs!286))))) b!5062872))

(declare-fun m!6102482 () Bool)

(assert (=> b!5062871 m!6102482))

(declare-fun m!6102484 () Bool)

(assert (=> b!5062871 m!6102484))

(declare-fun m!6102486 () Bool)

(assert (=> b!5062872 m!6102486))

(assert (=> b!5062528 m!6101876))

(declare-fun e!3159855 () Bool)

(declare-fun tp!1414318 () Bool)

(declare-fun tp!1414320 () Bool)

(declare-fun b!5062874 () Bool)

(assert (=> b!5062874 (= e!3159855 (and (inv!77533 (left!42810 (right!43140 (left!42810 (left!42810 xs!286))))) tp!1414318 (inv!77533 (right!43140 (right!43140 (left!42810 (left!42810 xs!286))))) tp!1414320))))

(declare-fun b!5062876 () Bool)

(declare-fun e!3159854 () Bool)

(declare-fun tp!1414319 () Bool)

(assert (=> b!5062876 (= e!3159854 tp!1414319)))

(declare-fun b!5062875 () Bool)

(assert (=> b!5062875 (= e!3159855 (and (inv!77534 (xs!18904 (right!43140 (left!42810 (left!42810 xs!286))))) e!3159854))))

(assert (=> b!5062528 (= tp!1414254 (and (inv!77533 (right!43140 (left!42810 (left!42810 xs!286)))) e!3159855))))

(assert (= (and b!5062528 ((_ is Node!15560) (right!43140 (left!42810 (left!42810 xs!286))))) b!5062874))

(assert (= b!5062875 b!5062876))

(assert (= (and b!5062528 ((_ is Leaf!25845) (right!43140 (left!42810 (left!42810 xs!286))))) b!5062875))

(declare-fun m!6102488 () Bool)

(assert (=> b!5062874 m!6102488))

(declare-fun m!6102490 () Bool)

(assert (=> b!5062874 m!6102490))

(declare-fun m!6102492 () Bool)

(assert (=> b!5062875 m!6102492))

(assert (=> b!5062528 m!6101878))

(declare-fun b!5062877 () Bool)

(declare-fun e!3159856 () Bool)

(declare-fun tp!1414321 () Bool)

(assert (=> b!5062877 (= e!3159856 (and tp_is_empty!37041 tp!1414321))))

(assert (=> b!5062530 (= tp!1414253 e!3159856)))

(assert (= (and b!5062530 ((_ is Cons!58430) (innerList!15648 (xs!18904 (left!42810 (left!42810 xs!286)))))) b!5062877))

(declare-fun b!5062878 () Bool)

(declare-fun e!3159857 () Bool)

(declare-fun tp!1414322 () Bool)

(assert (=> b!5062878 (= e!3159857 (and tp_is_empty!37041 tp!1414322))))

(assert (=> b!5062544 (= tp!1414268 e!3159857)))

(assert (= (and b!5062544 ((_ is Cons!58430) (t!371267 (innerList!15648 (xs!18904 (right!43140 xs!286)))))) b!5062878))

(declare-fun b!5062879 () Bool)

(declare-fun e!3159858 () Bool)

(declare-fun tp!1414323 () Bool)

(assert (=> b!5062879 (= e!3159858 (and tp_is_empty!37041 tp!1414323))))

(assert (=> b!5062548 (= tp!1414271 e!3159858)))

(assert (= (and b!5062548 ((_ is Cons!58430) (innerList!15648 (xs!18904 (left!42810 (right!43140 xs!286)))))) b!5062879))

(declare-fun tp!1414324 () Bool)

(declare-fun tp!1414326 () Bool)

(declare-fun e!3159860 () Bool)

(declare-fun b!5062880 () Bool)

(assert (=> b!5062880 (= e!3159860 (and (inv!77533 (left!42810 (left!42810 (right!43140 (left!42810 xs!286))))) tp!1414324 (inv!77533 (right!43140 (left!42810 (right!43140 (left!42810 xs!286))))) tp!1414326))))

(declare-fun b!5062882 () Bool)

(declare-fun e!3159859 () Bool)

(declare-fun tp!1414325 () Bool)

(assert (=> b!5062882 (= e!3159859 tp!1414325)))

(declare-fun b!5062881 () Bool)

(assert (=> b!5062881 (= e!3159860 (and (inv!77534 (xs!18904 (left!42810 (right!43140 (left!42810 xs!286))))) e!3159859))))

(assert (=> b!5062531 (= tp!1414255 (and (inv!77533 (left!42810 (right!43140 (left!42810 xs!286)))) e!3159860))))

(assert (= (and b!5062531 ((_ is Node!15560) (left!42810 (right!43140 (left!42810 xs!286))))) b!5062880))

(assert (= b!5062881 b!5062882))

(assert (= (and b!5062531 ((_ is Leaf!25845) (left!42810 (right!43140 (left!42810 xs!286))))) b!5062881))

(declare-fun m!6102494 () Bool)

(assert (=> b!5062880 m!6102494))

(declare-fun m!6102496 () Bool)

(assert (=> b!5062880 m!6102496))

(declare-fun m!6102498 () Bool)

(assert (=> b!5062881 m!6102498))

(assert (=> b!5062531 m!6101882))

(declare-fun e!3159862 () Bool)

(declare-fun tp!1414329 () Bool)

(declare-fun tp!1414327 () Bool)

(declare-fun b!5062883 () Bool)

(assert (=> b!5062883 (= e!3159862 (and (inv!77533 (left!42810 (right!43140 (right!43140 (left!42810 xs!286))))) tp!1414327 (inv!77533 (right!43140 (right!43140 (right!43140 (left!42810 xs!286))))) tp!1414329))))

(declare-fun b!5062885 () Bool)

(declare-fun e!3159861 () Bool)

(declare-fun tp!1414328 () Bool)

(assert (=> b!5062885 (= e!3159861 tp!1414328)))

(declare-fun b!5062884 () Bool)

(assert (=> b!5062884 (= e!3159862 (and (inv!77534 (xs!18904 (right!43140 (right!43140 (left!42810 xs!286))))) e!3159861))))

(assert (=> b!5062531 (= tp!1414257 (and (inv!77533 (right!43140 (right!43140 (left!42810 xs!286)))) e!3159862))))

(assert (= (and b!5062531 ((_ is Node!15560) (right!43140 (right!43140 (left!42810 xs!286))))) b!5062883))

(assert (= b!5062884 b!5062885))

(assert (= (and b!5062531 ((_ is Leaf!25845) (right!43140 (right!43140 (left!42810 xs!286))))) b!5062884))

(declare-fun m!6102500 () Bool)

(assert (=> b!5062883 m!6102500))

(declare-fun m!6102502 () Bool)

(assert (=> b!5062883 m!6102502))

(declare-fun m!6102504 () Bool)

(assert (=> b!5062884 m!6102504))

(assert (=> b!5062531 m!6101884))

(declare-fun b!5062886 () Bool)

(declare-fun tp!1414330 () Bool)

(declare-fun e!3159864 () Bool)

(declare-fun tp!1414332 () Bool)

(assert (=> b!5062886 (= e!3159864 (and (inv!77533 (left!42810 (left!42810 (right!43140 (right!43140 xs!286))))) tp!1414330 (inv!77533 (right!43140 (left!42810 (right!43140 (right!43140 xs!286))))) tp!1414332))))

(declare-fun b!5062888 () Bool)

(declare-fun e!3159863 () Bool)

(declare-fun tp!1414331 () Bool)

(assert (=> b!5062888 (= e!3159863 tp!1414331)))

(declare-fun b!5062887 () Bool)

(assert (=> b!5062887 (= e!3159864 (and (inv!77534 (xs!18904 (left!42810 (right!43140 (right!43140 xs!286))))) e!3159863))))

(assert (=> b!5062549 (= tp!1414273 (and (inv!77533 (left!42810 (right!43140 (right!43140 xs!286)))) e!3159864))))

(assert (= (and b!5062549 ((_ is Node!15560) (left!42810 (right!43140 (right!43140 xs!286))))) b!5062886))

(assert (= b!5062887 b!5062888))

(assert (= (and b!5062549 ((_ is Leaf!25845) (left!42810 (right!43140 (right!43140 xs!286))))) b!5062887))

(declare-fun m!6102506 () Bool)

(assert (=> b!5062886 m!6102506))

(declare-fun m!6102508 () Bool)

(assert (=> b!5062886 m!6102508))

(declare-fun m!6102510 () Bool)

(assert (=> b!5062887 m!6102510))

(assert (=> b!5062549 m!6101906))

(declare-fun b!5062889 () Bool)

(declare-fun tp!1414335 () Bool)

(declare-fun tp!1414333 () Bool)

(declare-fun e!3159866 () Bool)

(assert (=> b!5062889 (= e!3159866 (and (inv!77533 (left!42810 (right!43140 (right!43140 (right!43140 xs!286))))) tp!1414333 (inv!77533 (right!43140 (right!43140 (right!43140 (right!43140 xs!286))))) tp!1414335))))

(declare-fun b!5062891 () Bool)

(declare-fun e!3159865 () Bool)

(declare-fun tp!1414334 () Bool)

(assert (=> b!5062891 (= e!3159865 tp!1414334)))

(declare-fun b!5062890 () Bool)

(assert (=> b!5062890 (= e!3159866 (and (inv!77534 (xs!18904 (right!43140 (right!43140 (right!43140 xs!286))))) e!3159865))))

(assert (=> b!5062549 (= tp!1414275 (and (inv!77533 (right!43140 (right!43140 (right!43140 xs!286)))) e!3159866))))

(assert (= (and b!5062549 ((_ is Node!15560) (right!43140 (right!43140 (right!43140 xs!286))))) b!5062889))

(assert (= b!5062890 b!5062891))

(assert (= (and b!5062549 ((_ is Leaf!25845) (right!43140 (right!43140 (right!43140 xs!286))))) b!5062890))

(declare-fun m!6102512 () Bool)

(assert (=> b!5062889 m!6102512))

(declare-fun m!6102514 () Bool)

(assert (=> b!5062889 m!6102514))

(declare-fun m!6102516 () Bool)

(assert (=> b!5062890 m!6102516))

(assert (=> b!5062549 m!6101908))

(declare-fun b!5062892 () Bool)

(declare-fun e!3159867 () Bool)

(declare-fun tp!1414336 () Bool)

(assert (=> b!5062892 (= e!3159867 (and tp_is_empty!37041 tp!1414336))))

(assert (=> b!5062551 (= tp!1414274 e!3159867)))

(assert (= (and b!5062551 ((_ is Cons!58430) (innerList!15648 (xs!18904 (right!43140 (right!43140 xs!286)))))) b!5062892))

(declare-fun b!5062893 () Bool)

(declare-fun e!3159868 () Bool)

(declare-fun tp!1414337 () Bool)

(assert (=> b!5062893 (= e!3159868 (and tp_is_empty!37041 tp!1414337))))

(assert (=> b!5062534 (= tp!1414258 e!3159868)))

(assert (= (and b!5062534 ((_ is Cons!58430) (t!371267 (innerList!15648 (xs!18904 (left!42810 xs!286)))))) b!5062893))

(declare-fun b!5062894 () Bool)

(declare-fun e!3159869 () Bool)

(declare-fun tp!1414338 () Bool)

(assert (=> b!5062894 (= e!3159869 (and tp_is_empty!37041 tp!1414338))))

(assert (=> b!5062545 (= tp!1414269 e!3159869)))

(assert (= (and b!5062545 ((_ is Cons!58430) (t!371267 (innerList!15648 (xs!18904 (left!42810 ys!41)))))) b!5062894))

(declare-fun tp!1414341 () Bool)

(declare-fun b!5062895 () Bool)

(declare-fun tp!1414339 () Bool)

(declare-fun e!3159871 () Bool)

(assert (=> b!5062895 (= e!3159871 (and (inv!77533 (left!42810 (left!42810 (left!42810 (left!42810 ys!41))))) tp!1414339 (inv!77533 (right!43140 (left!42810 (left!42810 (left!42810 ys!41))))) tp!1414341))))

(declare-fun b!5062897 () Bool)

(declare-fun e!3159870 () Bool)

(declare-fun tp!1414340 () Bool)

(assert (=> b!5062897 (= e!3159870 tp!1414340)))

(declare-fun b!5062896 () Bool)

(assert (=> b!5062896 (= e!3159871 (and (inv!77534 (xs!18904 (left!42810 (left!42810 (left!42810 ys!41))))) e!3159870))))

(assert (=> b!5062522 (= tp!1414246 (and (inv!77533 (left!42810 (left!42810 (left!42810 ys!41)))) e!3159871))))

(assert (= (and b!5062522 ((_ is Node!15560) (left!42810 (left!42810 (left!42810 ys!41))))) b!5062895))

(assert (= b!5062896 b!5062897))

(assert (= (and b!5062522 ((_ is Leaf!25845) (left!42810 (left!42810 (left!42810 ys!41))))) b!5062896))

(declare-fun m!6102518 () Bool)

(assert (=> b!5062895 m!6102518))

(declare-fun m!6102520 () Bool)

(assert (=> b!5062895 m!6102520))

(declare-fun m!6102522 () Bool)

(assert (=> b!5062896 m!6102522))

(assert (=> b!5062522 m!6101864))

(declare-fun tp!1414344 () Bool)

(declare-fun b!5062898 () Bool)

(declare-fun e!3159873 () Bool)

(declare-fun tp!1414342 () Bool)

(assert (=> b!5062898 (= e!3159873 (and (inv!77533 (left!42810 (right!43140 (left!42810 (left!42810 ys!41))))) tp!1414342 (inv!77533 (right!43140 (right!43140 (left!42810 (left!42810 ys!41))))) tp!1414344))))

(declare-fun b!5062900 () Bool)

(declare-fun e!3159872 () Bool)

(declare-fun tp!1414343 () Bool)

(assert (=> b!5062900 (= e!3159872 tp!1414343)))

(declare-fun b!5062899 () Bool)

(assert (=> b!5062899 (= e!3159873 (and (inv!77534 (xs!18904 (right!43140 (left!42810 (left!42810 ys!41))))) e!3159872))))

(assert (=> b!5062522 (= tp!1414248 (and (inv!77533 (right!43140 (left!42810 (left!42810 ys!41)))) e!3159873))))

(assert (= (and b!5062522 ((_ is Node!15560) (right!43140 (left!42810 (left!42810 ys!41))))) b!5062898))

(assert (= b!5062899 b!5062900))

(assert (= (and b!5062522 ((_ is Leaf!25845) (right!43140 (left!42810 (left!42810 ys!41))))) b!5062899))

(declare-fun m!6102524 () Bool)

(assert (=> b!5062898 m!6102524))

(declare-fun m!6102526 () Bool)

(assert (=> b!5062898 m!6102526))

(declare-fun m!6102528 () Bool)

(assert (=> b!5062899 m!6102528))

(assert (=> b!5062522 m!6101866))

(declare-fun b!5062901 () Bool)

(declare-fun e!3159874 () Bool)

(declare-fun tp!1414345 () Bool)

(assert (=> b!5062901 (= e!3159874 (and tp_is_empty!37041 tp!1414345))))

(assert (=> b!5062524 (= tp!1414247 e!3159874)))

(assert (= (and b!5062524 ((_ is Cons!58430) (innerList!15648 (xs!18904 (left!42810 (left!42810 ys!41)))))) b!5062901))

(declare-fun b!5062902 () Bool)

(declare-fun tp!1414346 () Bool)

(declare-fun e!3159876 () Bool)

(declare-fun tp!1414348 () Bool)

(assert (=> b!5062902 (= e!3159876 (and (inv!77533 (left!42810 (left!42810 (left!42810 (right!43140 ys!41))))) tp!1414346 (inv!77533 (right!43140 (left!42810 (left!42810 (right!43140 ys!41))))) tp!1414348))))

(declare-fun b!5062904 () Bool)

(declare-fun e!3159875 () Bool)

(declare-fun tp!1414347 () Bool)

(assert (=> b!5062904 (= e!3159875 tp!1414347)))

(declare-fun b!5062903 () Bool)

(assert (=> b!5062903 (= e!3159876 (and (inv!77534 (xs!18904 (left!42810 (left!42810 (right!43140 ys!41))))) e!3159875))))

(assert (=> b!5062537 (= tp!1414261 (and (inv!77533 (left!42810 (left!42810 (right!43140 ys!41)))) e!3159876))))

(assert (= (and b!5062537 ((_ is Node!15560) (left!42810 (left!42810 (right!43140 ys!41))))) b!5062902))

(assert (= b!5062903 b!5062904))

(assert (= (and b!5062537 ((_ is Leaf!25845) (left!42810 (left!42810 (right!43140 ys!41))))) b!5062903))

(declare-fun m!6102530 () Bool)

(assert (=> b!5062902 m!6102530))

(declare-fun m!6102532 () Bool)

(assert (=> b!5062902 m!6102532))

(declare-fun m!6102534 () Bool)

(assert (=> b!5062903 m!6102534))

(assert (=> b!5062537 m!6101888))

(declare-fun e!3159878 () Bool)

(declare-fun tp!1414349 () Bool)

(declare-fun b!5062905 () Bool)

(declare-fun tp!1414351 () Bool)

(assert (=> b!5062905 (= e!3159878 (and (inv!77533 (left!42810 (right!43140 (left!42810 (right!43140 ys!41))))) tp!1414349 (inv!77533 (right!43140 (right!43140 (left!42810 (right!43140 ys!41))))) tp!1414351))))

(declare-fun b!5062907 () Bool)

(declare-fun e!3159877 () Bool)

(declare-fun tp!1414350 () Bool)

(assert (=> b!5062907 (= e!3159877 tp!1414350)))

(declare-fun b!5062906 () Bool)

(assert (=> b!5062906 (= e!3159878 (and (inv!77534 (xs!18904 (right!43140 (left!42810 (right!43140 ys!41))))) e!3159877))))

(assert (=> b!5062537 (= tp!1414263 (and (inv!77533 (right!43140 (left!42810 (right!43140 ys!41)))) e!3159878))))

(assert (= (and b!5062537 ((_ is Node!15560) (right!43140 (left!42810 (right!43140 ys!41))))) b!5062905))

(assert (= b!5062906 b!5062907))

(assert (= (and b!5062537 ((_ is Leaf!25845) (right!43140 (left!42810 (right!43140 ys!41))))) b!5062906))

(declare-fun m!6102536 () Bool)

(assert (=> b!5062905 m!6102536))

(declare-fun m!6102538 () Bool)

(assert (=> b!5062905 m!6102538))

(declare-fun m!6102540 () Bool)

(assert (=> b!5062906 m!6102540))

(assert (=> b!5062537 m!6101890))

(declare-fun b!5062908 () Bool)

(declare-fun e!3159879 () Bool)

(declare-fun tp!1414352 () Bool)

(assert (=> b!5062908 (= e!3159879 (and tp_is_empty!37041 tp!1414352))))

(assert (=> b!5062533 (= tp!1414256 e!3159879)))

(assert (= (and b!5062533 ((_ is Cons!58430) (innerList!15648 (xs!18904 (right!43140 (left!42810 xs!286)))))) b!5062908))

(declare-fun b!5062909 () Bool)

(declare-fun e!3159880 () Bool)

(declare-fun tp!1414353 () Bool)

(assert (=> b!5062909 (= e!3159880 (and tp_is_empty!37041 tp!1414353))))

(assert (=> b!5062539 (= tp!1414262 e!3159880)))

(assert (= (and b!5062539 ((_ is Cons!58430) (innerList!15648 (xs!18904 (left!42810 (right!43140 ys!41)))))) b!5062909))

(declare-fun b!5062910 () Bool)

(declare-fun tp!1414356 () Bool)

(declare-fun e!3159882 () Bool)

(declare-fun tp!1414354 () Bool)

(assert (=> b!5062910 (= e!3159882 (and (inv!77533 (left!42810 (left!42810 (right!43140 (left!42810 ys!41))))) tp!1414354 (inv!77533 (right!43140 (left!42810 (right!43140 (left!42810 ys!41))))) tp!1414356))))

(declare-fun b!5062912 () Bool)

(declare-fun e!3159881 () Bool)

(declare-fun tp!1414355 () Bool)

(assert (=> b!5062912 (= e!3159881 tp!1414355)))

(declare-fun b!5062911 () Bool)

(assert (=> b!5062911 (= e!3159882 (and (inv!77534 (xs!18904 (left!42810 (right!43140 (left!42810 ys!41))))) e!3159881))))

(assert (=> b!5062525 (= tp!1414249 (and (inv!77533 (left!42810 (right!43140 (left!42810 ys!41)))) e!3159882))))

(assert (= (and b!5062525 ((_ is Node!15560) (left!42810 (right!43140 (left!42810 ys!41))))) b!5062910))

(assert (= b!5062911 b!5062912))

(assert (= (and b!5062525 ((_ is Leaf!25845) (left!42810 (right!43140 (left!42810 ys!41))))) b!5062911))

(declare-fun m!6102542 () Bool)

(assert (=> b!5062910 m!6102542))

(declare-fun m!6102544 () Bool)

(assert (=> b!5062910 m!6102544))

(declare-fun m!6102546 () Bool)

(assert (=> b!5062911 m!6102546))

(assert (=> b!5062525 m!6101870))

(declare-fun tp!1414357 () Bool)

(declare-fun tp!1414359 () Bool)

(declare-fun e!3159884 () Bool)

(declare-fun b!5062913 () Bool)

(assert (=> b!5062913 (= e!3159884 (and (inv!77533 (left!42810 (right!43140 (right!43140 (left!42810 ys!41))))) tp!1414357 (inv!77533 (right!43140 (right!43140 (right!43140 (left!42810 ys!41))))) tp!1414359))))

(declare-fun b!5062915 () Bool)

(declare-fun e!3159883 () Bool)

(declare-fun tp!1414358 () Bool)

(assert (=> b!5062915 (= e!3159883 tp!1414358)))

(declare-fun b!5062914 () Bool)

(assert (=> b!5062914 (= e!3159884 (and (inv!77534 (xs!18904 (right!43140 (right!43140 (left!42810 ys!41))))) e!3159883))))

(assert (=> b!5062525 (= tp!1414251 (and (inv!77533 (right!43140 (right!43140 (left!42810 ys!41)))) e!3159884))))

(assert (= (and b!5062525 ((_ is Node!15560) (right!43140 (right!43140 (left!42810 ys!41))))) b!5062913))

(assert (= b!5062914 b!5062915))

(assert (= (and b!5062525 ((_ is Leaf!25845) (right!43140 (right!43140 (left!42810 ys!41))))) b!5062914))

(declare-fun m!6102548 () Bool)

(assert (=> b!5062913 m!6102548))

(declare-fun m!6102550 () Bool)

(assert (=> b!5062913 m!6102550))

(declare-fun m!6102552 () Bool)

(assert (=> b!5062914 m!6102552))

(assert (=> b!5062525 m!6101872))

(declare-fun b!5062916 () Bool)

(declare-fun e!3159885 () Bool)

(declare-fun tp!1414360 () Bool)

(assert (=> b!5062916 (= e!3159885 (and tp_is_empty!37041 tp!1414360))))

(assert (=> b!5062535 (= tp!1414259 e!3159885)))

(assert (= (and b!5062535 ((_ is Cons!58430) (t!371267 (t!371267 (innerList!15648 (xs!18904 xs!286)))))) b!5062916))

(declare-fun tp!1414363 () Bool)

(declare-fun b!5062917 () Bool)

(declare-fun e!3159887 () Bool)

(declare-fun tp!1414361 () Bool)

(assert (=> b!5062917 (= e!3159887 (and (inv!77533 (left!42810 (left!42810 (right!43140 (right!43140 ys!41))))) tp!1414361 (inv!77533 (right!43140 (left!42810 (right!43140 (right!43140 ys!41))))) tp!1414363))))

(declare-fun b!5062919 () Bool)

(declare-fun e!3159886 () Bool)

(declare-fun tp!1414362 () Bool)

(assert (=> b!5062919 (= e!3159886 tp!1414362)))

(declare-fun b!5062918 () Bool)

(assert (=> b!5062918 (= e!3159887 (and (inv!77534 (xs!18904 (left!42810 (right!43140 (right!43140 ys!41))))) e!3159886))))

(assert (=> b!5062540 (= tp!1414264 (and (inv!77533 (left!42810 (right!43140 (right!43140 ys!41)))) e!3159887))))

(assert (= (and b!5062540 ((_ is Node!15560) (left!42810 (right!43140 (right!43140 ys!41))))) b!5062917))

(assert (= b!5062918 b!5062919))

(assert (= (and b!5062540 ((_ is Leaf!25845) (left!42810 (right!43140 (right!43140 ys!41))))) b!5062918))

(declare-fun m!6102554 () Bool)

(assert (=> b!5062917 m!6102554))

(declare-fun m!6102556 () Bool)

(assert (=> b!5062917 m!6102556))

(declare-fun m!6102558 () Bool)

(assert (=> b!5062918 m!6102558))

(assert (=> b!5062540 m!6101894))

(declare-fun e!3159889 () Bool)

(declare-fun b!5062920 () Bool)

(declare-fun tp!1414366 () Bool)

(declare-fun tp!1414364 () Bool)

(assert (=> b!5062920 (= e!3159889 (and (inv!77533 (left!42810 (right!43140 (right!43140 (right!43140 ys!41))))) tp!1414364 (inv!77533 (right!43140 (right!43140 (right!43140 (right!43140 ys!41))))) tp!1414366))))

(declare-fun b!5062922 () Bool)

(declare-fun e!3159888 () Bool)

(declare-fun tp!1414365 () Bool)

(assert (=> b!5062922 (= e!3159888 tp!1414365)))

(declare-fun b!5062921 () Bool)

(assert (=> b!5062921 (= e!3159889 (and (inv!77534 (xs!18904 (right!43140 (right!43140 (right!43140 ys!41))))) e!3159888))))

(assert (=> b!5062540 (= tp!1414266 (and (inv!77533 (right!43140 (right!43140 (right!43140 ys!41)))) e!3159889))))

(assert (= (and b!5062540 ((_ is Node!15560) (right!43140 (right!43140 (right!43140 ys!41))))) b!5062920))

(assert (= b!5062921 b!5062922))

(assert (= (and b!5062540 ((_ is Leaf!25845) (right!43140 (right!43140 (right!43140 ys!41))))) b!5062921))

(declare-fun m!6102560 () Bool)

(assert (=> b!5062920 m!6102560))

(declare-fun m!6102562 () Bool)

(assert (=> b!5062920 m!6102562))

(declare-fun m!6102564 () Bool)

(assert (=> b!5062921 m!6102564))

(assert (=> b!5062540 m!6101896))

(declare-fun b!5062923 () Bool)

(declare-fun e!3159890 () Bool)

(declare-fun tp!1414367 () Bool)

(assert (=> b!5062923 (= e!3159890 (and tp_is_empty!37041 tp!1414367))))

(assert (=> b!5062543 (= tp!1414267 e!3159890)))

(assert (= (and b!5062543 ((_ is Cons!58430) (t!371267 (innerList!15648 (xs!18904 (right!43140 ys!41)))))) b!5062923))

(check-sat (not b!5062918) (not b!5062903) (not b!5062859) (not d!1631233) (not b!5062714) (not b!5062522) (not b!5062857) (not b!5062852) (not b!5062855) (not b!5062549) (not b!5062892) (not b!5062750) (not b!5062901) (not b!5062904) (not b!5062699) (not b!5062822) (not b!5062778) (not b!5062829) (not d!1631365) (not b!5062839) (not b!5062863) (not b!5062719) (not b!5062780) (not b!5062868) (not d!1631207) (not b!5062704) (not b!5062912) (not b!5062866) (not b!5062856) (not b!5062775) (not b!5062528) (not b!5062882) (not b!5062804) (not b!5062680) (not b!5062540) (not b!5062879) (not d!1631351) (not b!5062811) (not b!5062709) (not b!5062698) (not b!5062878) (not b!5062708) (not b!5062814) (not b!5062889) (not b!5062744) (not b!5062913) (not b!5062900) (not b!5062786) (not b!5062874) (not b!5062730) (not d!1631237) (not d!1631339) (not d!1631345) (not b!5062867) (not b!5062774) (not d!1631201) (not d!1631271) (not d!1631379) (not d!1631181) (not b!5062899) (not d!1631285) (not b!5062801) (not b!5062831) (not b!5062695) (not b!5062806) (not b!5062770) (not b!5062905) (not b!5062893) (not b!5062870) (not b!5062728) (not b!5062722) (not b!5062876) (not b!5062741) (not b!5062809) (not b!5062911) (not b!5062828) (not b!5062800) (not d!1631373) (not d!1631197) (not d!1631281) (not b!5062842) (not b!5062841) (not b!5062869) (not d!1631263) (not d!1631189) (not d!1631303) (not d!1631297) (not b!5062753) (not b!5062907) (not b!5062712) (not b!5062921) (not b!5062827) (not b!5062724) (not b!5062796) (not b!5062758) (not b!5062803) (not b!5062742) (not b!5062537) (not b!5062793) (not d!1631211) (not d!1631209) (not b!5062885) (not d!1631357) (not b!5062886) (not b!5062738) (not b!5062875) (not d!1631273) (not d!1631325) (not b!5062891) (not b!5062783) (not b!5062888) (not b!5062880) (not b!5062782) (not b!5062755) (not b!5062694) (not b!5062919) (not b!5062817) (not b!5062915) (not d!1631289) (not b!5062883) (not b!5062525) (not b!5062914) (not b!5062909) (not b!5062721) (not b!5062777) (not b!5062756) (not b!5062824) (not b!5062832) (not b!5062884) (not b!5062715) (not b!5062890) (not b!5062833) (not d!1631235) (not b!5062802) (not b!5062920) (not d!1631269) (not d!1631309) (not b!5062717) (not d!1631337) (not b!5062844) (not b!5062681) (not d!1631367) (not b!5062881) (not b!5062731) (not b!5062835) (not b!5062790) (not b!5062792) (not b!5062850) (not b!5062898) (not b!5062873) (not b!5062862) (not b!5062678) (not b!5062734) (not b!5062861) (not b!5062747) (not b!5062701) (not b!5062531) (not b!5062894) (not b!5062917) (not b!5062760) (not b!5062795) (not b!5062846) (not b!5062910) (not b!5062887) (not b!5062923) (not d!1631323) (not b!5062776) (not b!5062858) (not b!5062736) (not b!5062877) (not d!1631195) (not b!5062902) (not b!5062819) (not b!5062725) (not b!5062752) (not d!1631353) (not d!1631301) (not b!5062805) tp_is_empty!37041 (not d!1631329) (not b!5062908) (not b!5062716) (not b!5062763) (not d!1631275) (not b!5062769) (not d!1631377) (not b!5062761) (not b!5062860) (not b!5062838) (not b!5062830) (not b!5062922) (not b!5062723) (not b!5062546) (not b!5062745) (not b!5062718) (not b!5062794) (not b!5062765) (not d!1631335) (not b!5062848) (not b!5062791) (not b!5062872) (not b!5062727) (not b!5062906) (not b!5062799) (not b!5062683) (not b!5062808) (not b!5062895) (not b!5062865) (not d!1631299) (not d!1631183) (not b!5062773) (not b!5062749) (not b!5062897) (not b!5062720) (not b!5062853) (not b!5062864) (not d!1631241) (not b!5062705) (not b!5062772) (not b!5062797) (not d!1631341) (not b!5062896) (not d!1631327) (not b!5062916) (not b!5062751) (not b!5062713) (not b!5062733) (not b!5062754) (not b!5062812) (not b!5062871) (not d!1631343))
(check-sat)
