; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534438 () Bool)

(assert start!534438)

(declare-fun b!5053277 () Bool)

(declare-fun e!3154740 () Bool)

(declare-datatypes ((T!104922 0))(
  ( (T!104923 (val!23620 Int)) )
))
(declare-datatypes ((List!58530 0))(
  ( (Nil!58406) (Cons!58406 (h!64854 T!104922) (t!371169 List!58530)) )
))
(declare-datatypes ((IArray!31133 0))(
  ( (IArray!31134 (innerList!15624 List!58530)) )
))
(declare-datatypes ((Conc!15536 0))(
  ( (Node!15536 (left!42774 Conc!15536) (right!43104 Conc!15536) (csize!31302 Int) (cheight!15747 Int)) (Leaf!25809 (xs!18866 IArray!31133) (csize!31303 Int)) (Empty!15536) )
))
(declare-fun ys!41 () Conc!15536)

(declare-fun e!3154737 () Bool)

(declare-fun inv!77401 (IArray!31133) Bool)

(assert (=> b!5053277 (= e!3154740 (and (inv!77401 (xs!18866 ys!41)) e!3154737))))

(declare-fun b!5053278 () Bool)

(declare-fun tp!1412444 () Bool)

(assert (=> b!5053278 (= e!3154737 tp!1412444)))

(declare-fun b!5053279 () Bool)

(declare-fun e!3154742 () Bool)

(declare-fun xs!286 () Conc!15536)

(declare-fun e!3154739 () Bool)

(assert (=> b!5053279 (= e!3154742 (and (inv!77401 (xs!18866 xs!286)) e!3154739))))

(declare-fun b!5053281 () Bool)

(declare-fun e!3154738 () Bool)

(declare-fun e!3154741 () Bool)

(assert (=> b!5053281 (= e!3154738 e!3154741)))

(declare-fun res!2151639 () Bool)

(assert (=> b!5053281 (=> (not res!2151639) (not e!3154741))))

(declare-fun lt!2087249 () Int)

(get-info :version)

(assert (=> b!5053281 (= res!2151639 (and (or (> (- 1) lt!2087249) (> lt!2087249 1)) (< lt!2087249 (- 1)) ((_ is Node!15536) xs!286)))))

(declare-fun height!2113 (Conc!15536) Int)

(assert (=> b!5053281 (= lt!2087249 (- (height!2113 ys!41) (height!2113 xs!286)))))

(declare-fun b!5053282 () Bool)

(declare-fun res!2151643 () Bool)

(assert (=> b!5053282 (=> (not res!2151643) (not e!3154741))))

(assert (=> b!5053282 (= res!2151643 (>= (height!2113 (left!42774 xs!286)) (height!2113 (right!43104 xs!286))))))

(declare-fun b!5053283 () Bool)

(declare-fun isBalanced!4398 (Conc!15536) Bool)

(assert (=> b!5053283 (= e!3154741 (not (isBalanced!4398 (right!43104 xs!286))))))

(declare-fun b!5053284 () Bool)

(declare-fun res!2151641 () Bool)

(assert (=> b!5053284 (=> (not res!2151641) (not e!3154738))))

(assert (=> b!5053284 (= res!2151641 (isBalanced!4398 ys!41))))

(declare-fun b!5053285 () Bool)

(declare-fun res!2151642 () Bool)

(assert (=> b!5053285 (=> (not res!2151642) (not e!3154738))))

(assert (=> b!5053285 (= res!2151642 (and (not (= xs!286 Empty!15536)) (not (= ys!41 Empty!15536))))))

(declare-fun b!5053280 () Bool)

(declare-fun tp!1412448 () Bool)

(assert (=> b!5053280 (= e!3154739 tp!1412448)))

(declare-fun res!2151640 () Bool)

(assert (=> start!534438 (=> (not res!2151640) (not e!3154738))))

(assert (=> start!534438 (= res!2151640 (isBalanced!4398 xs!286))))

(assert (=> start!534438 e!3154738))

(declare-fun inv!77402 (Conc!15536) Bool)

(assert (=> start!534438 (and (inv!77402 xs!286) e!3154742)))

(assert (=> start!534438 (and (inv!77402 ys!41) e!3154740)))

(declare-fun tp!1412447 () Bool)

(declare-fun b!5053286 () Bool)

(declare-fun tp!1412446 () Bool)

(assert (=> b!5053286 (= e!3154742 (and (inv!77402 (left!42774 xs!286)) tp!1412446 (inv!77402 (right!43104 xs!286)) tp!1412447))))

(declare-fun b!5053287 () Bool)

(declare-fun tp!1412449 () Bool)

(declare-fun tp!1412445 () Bool)

(assert (=> b!5053287 (= e!3154740 (and (inv!77402 (left!42774 ys!41)) tp!1412449 (inv!77402 (right!43104 ys!41)) tp!1412445))))

(assert (= (and start!534438 res!2151640) b!5053284))

(assert (= (and b!5053284 res!2151641) b!5053285))

(assert (= (and b!5053285 res!2151642) b!5053281))

(assert (= (and b!5053281 res!2151639) b!5053282))

(assert (= (and b!5053282 res!2151643) b!5053283))

(assert (= (and start!534438 ((_ is Node!15536) xs!286)) b!5053286))

(assert (= b!5053279 b!5053280))

(assert (= (and start!534438 ((_ is Leaf!25809) xs!286)) b!5053279))

(assert (= (and start!534438 ((_ is Node!15536) ys!41)) b!5053287))

(assert (= b!5053277 b!5053278))

(assert (= (and start!534438 ((_ is Leaf!25809) ys!41)) b!5053277))

(declare-fun m!6087312 () Bool)

(assert (=> b!5053277 m!6087312))

(declare-fun m!6087314 () Bool)

(assert (=> b!5053283 m!6087314))

(declare-fun m!6087316 () Bool)

(assert (=> b!5053286 m!6087316))

(declare-fun m!6087318 () Bool)

(assert (=> b!5053286 m!6087318))

(declare-fun m!6087320 () Bool)

(assert (=> b!5053284 m!6087320))

(declare-fun m!6087322 () Bool)

(assert (=> b!5053282 m!6087322))

(declare-fun m!6087324 () Bool)

(assert (=> b!5053282 m!6087324))

(declare-fun m!6087326 () Bool)

(assert (=> b!5053279 m!6087326))

(declare-fun m!6087328 () Bool)

(assert (=> b!5053287 m!6087328))

(declare-fun m!6087330 () Bool)

(assert (=> b!5053287 m!6087330))

(declare-fun m!6087332 () Bool)

(assert (=> b!5053281 m!6087332))

(declare-fun m!6087334 () Bool)

(assert (=> b!5053281 m!6087334))

(declare-fun m!6087336 () Bool)

(assert (=> start!534438 m!6087336))

(declare-fun m!6087338 () Bool)

(assert (=> start!534438 m!6087338))

(declare-fun m!6087340 () Bool)

(assert (=> start!534438 m!6087340))

(check-sat (not b!5053277) (not b!5053282) (not start!534438) (not b!5053287) (not b!5053284) (not b!5053280) (not b!5053283) (not b!5053279) (not b!5053278) (not b!5053286) (not b!5053281))
(check-sat)
(get-model)

(declare-fun d!1626067 () Bool)

(assert (=> d!1626067 (= (height!2113 ys!41) (ite ((_ is Empty!15536) ys!41) 0 (ite ((_ is Leaf!25809) ys!41) 1 (cheight!15747 ys!41))))))

(assert (=> b!5053281 d!1626067))

(declare-fun d!1626069 () Bool)

(assert (=> d!1626069 (= (height!2113 xs!286) (ite ((_ is Empty!15536) xs!286) 0 (ite ((_ is Leaf!25809) xs!286) 1 (cheight!15747 xs!286))))))

(assert (=> b!5053281 d!1626069))

(declare-fun d!1626071 () Bool)

(assert (=> d!1626071 (= (height!2113 (left!42774 xs!286)) (ite ((_ is Empty!15536) (left!42774 xs!286)) 0 (ite ((_ is Leaf!25809) (left!42774 xs!286)) 1 (cheight!15747 (left!42774 xs!286)))))))

(assert (=> b!5053282 d!1626071))

(declare-fun d!1626075 () Bool)

(assert (=> d!1626075 (= (height!2113 (right!43104 xs!286)) (ite ((_ is Empty!15536) (right!43104 xs!286)) 0 (ite ((_ is Leaf!25809) (right!43104 xs!286)) 1 (cheight!15747 (right!43104 xs!286)))))))

(assert (=> b!5053282 d!1626075))

(declare-fun d!1626077 () Bool)

(declare-fun c!867130 () Bool)

(assert (=> d!1626077 (= c!867130 ((_ is Node!15536) (left!42774 ys!41)))))

(declare-fun e!3154751 () Bool)

(assert (=> d!1626077 (= (inv!77402 (left!42774 ys!41)) e!3154751)))

(declare-fun b!5053306 () Bool)

(declare-fun inv!77403 (Conc!15536) Bool)

(assert (=> b!5053306 (= e!3154751 (inv!77403 (left!42774 ys!41)))))

(declare-fun b!5053307 () Bool)

(declare-fun e!3154752 () Bool)

(assert (=> b!5053307 (= e!3154751 e!3154752)))

(declare-fun res!2151658 () Bool)

(assert (=> b!5053307 (= res!2151658 (not ((_ is Leaf!25809) (left!42774 ys!41))))))

(assert (=> b!5053307 (=> res!2151658 e!3154752)))

(declare-fun b!5053308 () Bool)

(declare-fun inv!77404 (Conc!15536) Bool)

(assert (=> b!5053308 (= e!3154752 (inv!77404 (left!42774 ys!41)))))

(assert (= (and d!1626077 c!867130) b!5053306))

(assert (= (and d!1626077 (not c!867130)) b!5053307))

(assert (= (and b!5053307 (not res!2151658)) b!5053308))

(declare-fun m!6087346 () Bool)

(assert (=> b!5053306 m!6087346))

(declare-fun m!6087348 () Bool)

(assert (=> b!5053308 m!6087348))

(assert (=> b!5053287 d!1626077))

(declare-fun d!1626081 () Bool)

(declare-fun c!867131 () Bool)

(assert (=> d!1626081 (= c!867131 ((_ is Node!15536) (right!43104 ys!41)))))

(declare-fun e!3154753 () Bool)

(assert (=> d!1626081 (= (inv!77402 (right!43104 ys!41)) e!3154753)))

(declare-fun b!5053309 () Bool)

(assert (=> b!5053309 (= e!3154753 (inv!77403 (right!43104 ys!41)))))

(declare-fun b!5053310 () Bool)

(declare-fun e!3154754 () Bool)

(assert (=> b!5053310 (= e!3154753 e!3154754)))

(declare-fun res!2151659 () Bool)

(assert (=> b!5053310 (= res!2151659 (not ((_ is Leaf!25809) (right!43104 ys!41))))))

(assert (=> b!5053310 (=> res!2151659 e!3154754)))

(declare-fun b!5053311 () Bool)

(assert (=> b!5053311 (= e!3154754 (inv!77404 (right!43104 ys!41)))))

(assert (= (and d!1626081 c!867131) b!5053309))

(assert (= (and d!1626081 (not c!867131)) b!5053310))

(assert (= (and b!5053310 (not res!2151659)) b!5053311))

(declare-fun m!6087350 () Bool)

(assert (=> b!5053309 m!6087350))

(declare-fun m!6087352 () Bool)

(assert (=> b!5053311 m!6087352))

(assert (=> b!5053287 d!1626081))

(declare-fun b!5053339 () Bool)

(declare-fun res!2151681 () Bool)

(declare-fun e!3154767 () Bool)

(assert (=> b!5053339 (=> (not res!2151681) (not e!3154767))))

(declare-fun isEmpty!31585 (Conc!15536) Bool)

(assert (=> b!5053339 (= res!2151681 (not (isEmpty!31585 (left!42774 xs!286))))))

(declare-fun b!5053340 () Bool)

(assert (=> b!5053340 (= e!3154767 (not (isEmpty!31585 (right!43104 xs!286))))))

(declare-fun d!1626083 () Bool)

(declare-fun res!2151683 () Bool)

(declare-fun e!3154769 () Bool)

(assert (=> d!1626083 (=> res!2151683 e!3154769)))

(assert (=> d!1626083 (= res!2151683 (not ((_ is Node!15536) xs!286)))))

(assert (=> d!1626083 (= (isBalanced!4398 xs!286) e!3154769)))

(declare-fun b!5053342 () Bool)

(assert (=> b!5053342 (= e!3154769 e!3154767)))

(declare-fun res!2151684 () Bool)

(assert (=> b!5053342 (=> (not res!2151684) (not e!3154767))))

(assert (=> b!5053342 (= res!2151684 (<= (- 1) (- (height!2113 (left!42774 xs!286)) (height!2113 (right!43104 xs!286)))))))

(declare-fun b!5053344 () Bool)

(declare-fun res!2151686 () Bool)

(assert (=> b!5053344 (=> (not res!2151686) (not e!3154767))))

(assert (=> b!5053344 (= res!2151686 (<= (- (height!2113 (left!42774 xs!286)) (height!2113 (right!43104 xs!286))) 1))))

(declare-fun b!5053346 () Bool)

(declare-fun res!2151682 () Bool)

(assert (=> b!5053346 (=> (not res!2151682) (not e!3154767))))

(assert (=> b!5053346 (= res!2151682 (isBalanced!4398 (right!43104 xs!286)))))

(declare-fun b!5053347 () Bool)

(declare-fun res!2151685 () Bool)

(assert (=> b!5053347 (=> (not res!2151685) (not e!3154767))))

(assert (=> b!5053347 (= res!2151685 (isBalanced!4398 (left!42774 xs!286)))))

(assert (= (and d!1626083 (not res!2151683)) b!5053342))

(assert (= (and b!5053342 res!2151684) b!5053344))

(assert (= (and b!5053344 res!2151686) b!5053347))

(assert (= (and b!5053347 res!2151685) b!5053346))

(assert (= (and b!5053346 res!2151682) b!5053339))

(assert (= (and b!5053339 res!2151681) b!5053340))

(declare-fun m!6087372 () Bool)

(assert (=> b!5053340 m!6087372))

(declare-fun m!6087374 () Bool)

(assert (=> b!5053347 m!6087374))

(assert (=> b!5053346 m!6087314))

(assert (=> b!5053342 m!6087322))

(assert (=> b!5053342 m!6087324))

(declare-fun m!6087376 () Bool)

(assert (=> b!5053339 m!6087376))

(assert (=> b!5053344 m!6087322))

(assert (=> b!5053344 m!6087324))

(assert (=> start!534438 d!1626083))

(declare-fun d!1626093 () Bool)

(declare-fun c!867138 () Bool)

(assert (=> d!1626093 (= c!867138 ((_ is Node!15536) xs!286))))

(declare-fun e!3154775 () Bool)

(assert (=> d!1626093 (= (inv!77402 xs!286) e!3154775)))

(declare-fun b!5053354 () Bool)

(assert (=> b!5053354 (= e!3154775 (inv!77403 xs!286))))

(declare-fun b!5053355 () Bool)

(declare-fun e!3154776 () Bool)

(assert (=> b!5053355 (= e!3154775 e!3154776)))

(declare-fun res!2151690 () Bool)

(assert (=> b!5053355 (= res!2151690 (not ((_ is Leaf!25809) xs!286)))))

(assert (=> b!5053355 (=> res!2151690 e!3154776)))

(declare-fun b!5053356 () Bool)

(assert (=> b!5053356 (= e!3154776 (inv!77404 xs!286))))

(assert (= (and d!1626093 c!867138) b!5053354))

(assert (= (and d!1626093 (not c!867138)) b!5053355))

(assert (= (and b!5053355 (not res!2151690)) b!5053356))

(declare-fun m!6087386 () Bool)

(assert (=> b!5053354 m!6087386))

(declare-fun m!6087388 () Bool)

(assert (=> b!5053356 m!6087388))

(assert (=> start!534438 d!1626093))

(declare-fun d!1626099 () Bool)

(declare-fun c!867141 () Bool)

(assert (=> d!1626099 (= c!867141 ((_ is Node!15536) ys!41))))

(declare-fun e!3154781 () Bool)

(assert (=> d!1626099 (= (inv!77402 ys!41) e!3154781)))

(declare-fun b!5053363 () Bool)

(assert (=> b!5053363 (= e!3154781 (inv!77403 ys!41))))

(declare-fun b!5053364 () Bool)

(declare-fun e!3154782 () Bool)

(assert (=> b!5053364 (= e!3154781 e!3154782)))

(declare-fun res!2151693 () Bool)

(assert (=> b!5053364 (= res!2151693 (not ((_ is Leaf!25809) ys!41)))))

(assert (=> b!5053364 (=> res!2151693 e!3154782)))

(declare-fun b!5053365 () Bool)

(assert (=> b!5053365 (= e!3154782 (inv!77404 ys!41))))

(assert (= (and d!1626099 c!867141) b!5053363))

(assert (= (and d!1626099 (not c!867141)) b!5053364))

(assert (= (and b!5053364 (not res!2151693)) b!5053365))

(declare-fun m!6087394 () Bool)

(assert (=> b!5053363 m!6087394))

(declare-fun m!6087396 () Bool)

(assert (=> b!5053365 m!6087396))

(assert (=> start!534438 d!1626099))

(declare-fun d!1626103 () Bool)

(declare-fun c!867142 () Bool)

(assert (=> d!1626103 (= c!867142 ((_ is Node!15536) (left!42774 xs!286)))))

(declare-fun e!3154785 () Bool)

(assert (=> d!1626103 (= (inv!77402 (left!42774 xs!286)) e!3154785)))

(declare-fun b!5053372 () Bool)

(assert (=> b!5053372 (= e!3154785 (inv!77403 (left!42774 xs!286)))))

(declare-fun b!5053373 () Bool)

(declare-fun e!3154786 () Bool)

(assert (=> b!5053373 (= e!3154785 e!3154786)))

(declare-fun res!2151700 () Bool)

(assert (=> b!5053373 (= res!2151700 (not ((_ is Leaf!25809) (left!42774 xs!286))))))

(assert (=> b!5053373 (=> res!2151700 e!3154786)))

(declare-fun b!5053374 () Bool)

(assert (=> b!5053374 (= e!3154786 (inv!77404 (left!42774 xs!286)))))

(assert (= (and d!1626103 c!867142) b!5053372))

(assert (= (and d!1626103 (not c!867142)) b!5053373))

(assert (= (and b!5053373 (not res!2151700)) b!5053374))

(declare-fun m!6087398 () Bool)

(assert (=> b!5053372 m!6087398))

(declare-fun m!6087400 () Bool)

(assert (=> b!5053374 m!6087400))

(assert (=> b!5053286 d!1626103))

(declare-fun d!1626105 () Bool)

(declare-fun c!867143 () Bool)

(assert (=> d!1626105 (= c!867143 ((_ is Node!15536) (right!43104 xs!286)))))

(declare-fun e!3154787 () Bool)

(assert (=> d!1626105 (= (inv!77402 (right!43104 xs!286)) e!3154787)))

(declare-fun b!5053375 () Bool)

(assert (=> b!5053375 (= e!3154787 (inv!77403 (right!43104 xs!286)))))

(declare-fun b!5053376 () Bool)

(declare-fun e!3154788 () Bool)

(assert (=> b!5053376 (= e!3154787 e!3154788)))

(declare-fun res!2151701 () Bool)

(assert (=> b!5053376 (= res!2151701 (not ((_ is Leaf!25809) (right!43104 xs!286))))))

(assert (=> b!5053376 (=> res!2151701 e!3154788)))

(declare-fun b!5053377 () Bool)

(assert (=> b!5053377 (= e!3154788 (inv!77404 (right!43104 xs!286)))))

(assert (= (and d!1626105 c!867143) b!5053375))

(assert (= (and d!1626105 (not c!867143)) b!5053376))

(assert (= (and b!5053376 (not res!2151701)) b!5053377))

(declare-fun m!6087402 () Bool)

(assert (=> b!5053375 m!6087402))

(declare-fun m!6087406 () Bool)

(assert (=> b!5053377 m!6087406))

(assert (=> b!5053286 d!1626105))

(declare-fun b!5053378 () Bool)

(declare-fun res!2151702 () Bool)

(declare-fun e!3154789 () Bool)

(assert (=> b!5053378 (=> (not res!2151702) (not e!3154789))))

(assert (=> b!5053378 (= res!2151702 (not (isEmpty!31585 (left!42774 ys!41))))))

(declare-fun b!5053379 () Bool)

(assert (=> b!5053379 (= e!3154789 (not (isEmpty!31585 (right!43104 ys!41))))))

(declare-fun d!1626107 () Bool)

(declare-fun res!2151704 () Bool)

(declare-fun e!3154790 () Bool)

(assert (=> d!1626107 (=> res!2151704 e!3154790)))

(assert (=> d!1626107 (= res!2151704 (not ((_ is Node!15536) ys!41)))))

(assert (=> d!1626107 (= (isBalanced!4398 ys!41) e!3154790)))

(declare-fun b!5053380 () Bool)

(assert (=> b!5053380 (= e!3154790 e!3154789)))

(declare-fun res!2151705 () Bool)

(assert (=> b!5053380 (=> (not res!2151705) (not e!3154789))))

(assert (=> b!5053380 (= res!2151705 (<= (- 1) (- (height!2113 (left!42774 ys!41)) (height!2113 (right!43104 ys!41)))))))

(declare-fun b!5053381 () Bool)

(declare-fun res!2151707 () Bool)

(assert (=> b!5053381 (=> (not res!2151707) (not e!3154789))))

(assert (=> b!5053381 (= res!2151707 (<= (- (height!2113 (left!42774 ys!41)) (height!2113 (right!43104 ys!41))) 1))))

(declare-fun b!5053382 () Bool)

(declare-fun res!2151703 () Bool)

(assert (=> b!5053382 (=> (not res!2151703) (not e!3154789))))

(assert (=> b!5053382 (= res!2151703 (isBalanced!4398 (right!43104 ys!41)))))

(declare-fun b!5053383 () Bool)

(declare-fun res!2151706 () Bool)

(assert (=> b!5053383 (=> (not res!2151706) (not e!3154789))))

(assert (=> b!5053383 (= res!2151706 (isBalanced!4398 (left!42774 ys!41)))))

(assert (= (and d!1626107 (not res!2151704)) b!5053380))

(assert (= (and b!5053380 res!2151705) b!5053381))

(assert (= (and b!5053381 res!2151707) b!5053383))

(assert (= (and b!5053383 res!2151706) b!5053382))

(assert (= (and b!5053382 res!2151703) b!5053378))

(assert (= (and b!5053378 res!2151702) b!5053379))

(declare-fun m!6087418 () Bool)

(assert (=> b!5053379 m!6087418))

(declare-fun m!6087420 () Bool)

(assert (=> b!5053383 m!6087420))

(declare-fun m!6087422 () Bool)

(assert (=> b!5053382 m!6087422))

(declare-fun m!6087424 () Bool)

(assert (=> b!5053380 m!6087424))

(declare-fun m!6087426 () Bool)

(assert (=> b!5053380 m!6087426))

(declare-fun m!6087428 () Bool)

(assert (=> b!5053378 m!6087428))

(assert (=> b!5053381 m!6087424))

(assert (=> b!5053381 m!6087426))

(assert (=> b!5053284 d!1626107))

(declare-fun d!1626111 () Bool)

(declare-fun size!39029 (List!58530) Int)

(assert (=> d!1626111 (= (inv!77401 (xs!18866 xs!286)) (<= (size!39029 (innerList!15624 (xs!18866 xs!286))) 2147483647))))

(declare-fun bs!1189286 () Bool)

(assert (= bs!1189286 d!1626111))

(declare-fun m!6087442 () Bool)

(assert (=> bs!1189286 m!6087442))

(assert (=> b!5053279 d!1626111))

(declare-fun d!1626121 () Bool)

(assert (=> d!1626121 (= (inv!77401 (xs!18866 ys!41)) (<= (size!39029 (innerList!15624 (xs!18866 ys!41))) 2147483647))))

(declare-fun bs!1189287 () Bool)

(assert (= bs!1189287 d!1626121))

(declare-fun m!6087444 () Bool)

(assert (=> bs!1189287 m!6087444))

(assert (=> b!5053277 d!1626121))

(declare-fun b!5053395 () Bool)

(declare-fun res!2151714 () Bool)

(declare-fun e!3154796 () Bool)

(assert (=> b!5053395 (=> (not res!2151714) (not e!3154796))))

(assert (=> b!5053395 (= res!2151714 (not (isEmpty!31585 (left!42774 (right!43104 xs!286)))))))

(declare-fun b!5053396 () Bool)

(assert (=> b!5053396 (= e!3154796 (not (isEmpty!31585 (right!43104 (right!43104 xs!286)))))))

(declare-fun d!1626123 () Bool)

(declare-fun res!2151716 () Bool)

(declare-fun e!3154797 () Bool)

(assert (=> d!1626123 (=> res!2151716 e!3154797)))

(assert (=> d!1626123 (= res!2151716 (not ((_ is Node!15536) (right!43104 xs!286))))))

(assert (=> d!1626123 (= (isBalanced!4398 (right!43104 xs!286)) e!3154797)))

(declare-fun b!5053397 () Bool)

(assert (=> b!5053397 (= e!3154797 e!3154796)))

(declare-fun res!2151717 () Bool)

(assert (=> b!5053397 (=> (not res!2151717) (not e!3154796))))

(assert (=> b!5053397 (= res!2151717 (<= (- 1) (- (height!2113 (left!42774 (right!43104 xs!286))) (height!2113 (right!43104 (right!43104 xs!286))))))))

(declare-fun b!5053398 () Bool)

(declare-fun res!2151719 () Bool)

(assert (=> b!5053398 (=> (not res!2151719) (not e!3154796))))

(assert (=> b!5053398 (= res!2151719 (<= (- (height!2113 (left!42774 (right!43104 xs!286))) (height!2113 (right!43104 (right!43104 xs!286)))) 1))))

(declare-fun b!5053399 () Bool)

(declare-fun res!2151715 () Bool)

(assert (=> b!5053399 (=> (not res!2151715) (not e!3154796))))

(assert (=> b!5053399 (= res!2151715 (isBalanced!4398 (right!43104 (right!43104 xs!286))))))

(declare-fun b!5053400 () Bool)

(declare-fun res!2151718 () Bool)

(assert (=> b!5053400 (=> (not res!2151718) (not e!3154796))))

(assert (=> b!5053400 (= res!2151718 (isBalanced!4398 (left!42774 (right!43104 xs!286))))))

(assert (= (and d!1626123 (not res!2151716)) b!5053397))

(assert (= (and b!5053397 res!2151717) b!5053398))

(assert (= (and b!5053398 res!2151719) b!5053400))

(assert (= (and b!5053400 res!2151718) b!5053399))

(assert (= (and b!5053399 res!2151715) b!5053395))

(assert (= (and b!5053395 res!2151714) b!5053396))

(declare-fun m!6087446 () Bool)

(assert (=> b!5053396 m!6087446))

(declare-fun m!6087448 () Bool)

(assert (=> b!5053400 m!6087448))

(declare-fun m!6087450 () Bool)

(assert (=> b!5053399 m!6087450))

(declare-fun m!6087452 () Bool)

(assert (=> b!5053397 m!6087452))

(declare-fun m!6087454 () Bool)

(assert (=> b!5053397 m!6087454))

(declare-fun m!6087456 () Bool)

(assert (=> b!5053395 m!6087456))

(assert (=> b!5053398 m!6087452))

(assert (=> b!5053398 m!6087454))

(assert (=> b!5053283 d!1626123))

(declare-fun e!3154811 () Bool)

(declare-fun tp!1412472 () Bool)

(declare-fun b!5053423 () Bool)

(declare-fun tp!1412471 () Bool)

(assert (=> b!5053423 (= e!3154811 (and (inv!77402 (left!42774 (left!42774 ys!41))) tp!1412471 (inv!77402 (right!43104 (left!42774 ys!41))) tp!1412472))))

(declare-fun b!5053425 () Bool)

(declare-fun e!3154810 () Bool)

(declare-fun tp!1412473 () Bool)

(assert (=> b!5053425 (= e!3154810 tp!1412473)))

(declare-fun b!5053424 () Bool)

(assert (=> b!5053424 (= e!3154811 (and (inv!77401 (xs!18866 (left!42774 ys!41))) e!3154810))))

(assert (=> b!5053287 (= tp!1412449 (and (inv!77402 (left!42774 ys!41)) e!3154811))))

(assert (= (and b!5053287 ((_ is Node!15536) (left!42774 ys!41))) b!5053423))

(assert (= b!5053424 b!5053425))

(assert (= (and b!5053287 ((_ is Leaf!25809) (left!42774 ys!41))) b!5053424))

(declare-fun m!6087470 () Bool)

(assert (=> b!5053423 m!6087470))

(declare-fun m!6087472 () Bool)

(assert (=> b!5053423 m!6087472))

(declare-fun m!6087474 () Bool)

(assert (=> b!5053424 m!6087474))

(assert (=> b!5053287 m!6087328))

(declare-fun b!5053429 () Bool)

(declare-fun tp!1412477 () Bool)

(declare-fun tp!1412478 () Bool)

(declare-fun e!3154815 () Bool)

(assert (=> b!5053429 (= e!3154815 (and (inv!77402 (left!42774 (right!43104 ys!41))) tp!1412477 (inv!77402 (right!43104 (right!43104 ys!41))) tp!1412478))))

(declare-fun b!5053431 () Bool)

(declare-fun e!3154814 () Bool)

(declare-fun tp!1412479 () Bool)

(assert (=> b!5053431 (= e!3154814 tp!1412479)))

(declare-fun b!5053430 () Bool)

(assert (=> b!5053430 (= e!3154815 (and (inv!77401 (xs!18866 (right!43104 ys!41))) e!3154814))))

(assert (=> b!5053287 (= tp!1412445 (and (inv!77402 (right!43104 ys!41)) e!3154815))))

(assert (= (and b!5053287 ((_ is Node!15536) (right!43104 ys!41))) b!5053429))

(assert (= b!5053430 b!5053431))

(assert (= (and b!5053287 ((_ is Leaf!25809) (right!43104 ys!41))) b!5053430))

(declare-fun m!6087482 () Bool)

(assert (=> b!5053429 m!6087482))

(declare-fun m!6087484 () Bool)

(assert (=> b!5053429 m!6087484))

(declare-fun m!6087486 () Bool)

(assert (=> b!5053430 m!6087486))

(assert (=> b!5053287 m!6087330))

(declare-fun b!5053440 () Bool)

(declare-fun e!3154821 () Bool)

(declare-fun tp_is_empty!36995 () Bool)

(declare-fun tp!1412486 () Bool)

(assert (=> b!5053440 (= e!3154821 (and tp_is_empty!36995 tp!1412486))))

(assert (=> b!5053280 (= tp!1412448 e!3154821)))

(assert (= (and b!5053280 ((_ is Cons!58406) (innerList!15624 (xs!18866 xs!286)))) b!5053440))

(declare-fun tp!1412487 () Bool)

(declare-fun e!3154823 () Bool)

(declare-fun b!5053441 () Bool)

(declare-fun tp!1412488 () Bool)

(assert (=> b!5053441 (= e!3154823 (and (inv!77402 (left!42774 (left!42774 xs!286))) tp!1412487 (inv!77402 (right!43104 (left!42774 xs!286))) tp!1412488))))

(declare-fun b!5053443 () Bool)

(declare-fun e!3154822 () Bool)

(declare-fun tp!1412489 () Bool)

(assert (=> b!5053443 (= e!3154822 tp!1412489)))

(declare-fun b!5053442 () Bool)

(assert (=> b!5053442 (= e!3154823 (and (inv!77401 (xs!18866 (left!42774 xs!286))) e!3154822))))

(assert (=> b!5053286 (= tp!1412446 (and (inv!77402 (left!42774 xs!286)) e!3154823))))

(assert (= (and b!5053286 ((_ is Node!15536) (left!42774 xs!286))) b!5053441))

(assert (= b!5053442 b!5053443))

(assert (= (and b!5053286 ((_ is Leaf!25809) (left!42774 xs!286))) b!5053442))

(declare-fun m!6087494 () Bool)

(assert (=> b!5053441 m!6087494))

(declare-fun m!6087496 () Bool)

(assert (=> b!5053441 m!6087496))

(declare-fun m!6087498 () Bool)

(assert (=> b!5053442 m!6087498))

(assert (=> b!5053286 m!6087316))

(declare-fun b!5053444 () Bool)

(declare-fun e!3154825 () Bool)

(declare-fun tp!1412490 () Bool)

(declare-fun tp!1412491 () Bool)

(assert (=> b!5053444 (= e!3154825 (and (inv!77402 (left!42774 (right!43104 xs!286))) tp!1412490 (inv!77402 (right!43104 (right!43104 xs!286))) tp!1412491))))

(declare-fun b!5053446 () Bool)

(declare-fun e!3154824 () Bool)

(declare-fun tp!1412492 () Bool)

(assert (=> b!5053446 (= e!3154824 tp!1412492)))

(declare-fun b!5053445 () Bool)

(assert (=> b!5053445 (= e!3154825 (and (inv!77401 (xs!18866 (right!43104 xs!286))) e!3154824))))

(assert (=> b!5053286 (= tp!1412447 (and (inv!77402 (right!43104 xs!286)) e!3154825))))

(assert (= (and b!5053286 ((_ is Node!15536) (right!43104 xs!286))) b!5053444))

(assert (= b!5053445 b!5053446))

(assert (= (and b!5053286 ((_ is Leaf!25809) (right!43104 xs!286))) b!5053445))

(declare-fun m!6087500 () Bool)

(assert (=> b!5053444 m!6087500))

(declare-fun m!6087502 () Bool)

(assert (=> b!5053444 m!6087502))

(declare-fun m!6087504 () Bool)

(assert (=> b!5053445 m!6087504))

(assert (=> b!5053286 m!6087318))

(declare-fun b!5053447 () Bool)

(declare-fun e!3154826 () Bool)

(declare-fun tp!1412493 () Bool)

(assert (=> b!5053447 (= e!3154826 (and tp_is_empty!36995 tp!1412493))))

(assert (=> b!5053278 (= tp!1412444 e!3154826)))

(assert (= (and b!5053278 ((_ is Cons!58406) (innerList!15624 (xs!18866 ys!41)))) b!5053447))

(check-sat (not b!5053311) (not b!5053395) (not b!5053424) (not b!5053374) (not b!5053440) (not b!5053425) (not b!5053429) (not b!5053383) (not b!5053396) (not b!5053379) (not b!5053430) (not b!5053442) (not b!5053398) (not b!5053356) (not b!5053400) tp_is_empty!36995 (not b!5053344) (not b!5053380) (not b!5053443) (not b!5053441) (not b!5053446) (not b!5053445) (not b!5053309) (not b!5053306) (not b!5053447) (not b!5053431) (not b!5053365) (not b!5053287) (not b!5053354) (not b!5053363) (not b!5053423) (not b!5053377) (not b!5053286) (not b!5053342) (not b!5053375) (not b!5053378) (not b!5053372) (not b!5053444) (not b!5053399) (not b!5053397) (not b!5053347) (not b!5053308) (not b!5053340) (not d!1626121) (not b!5053346) (not b!5053381) (not b!5053339) (not d!1626111) (not b!5053382))
(check-sat)
