; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532770 () Bool)

(assert start!532770)

(declare-fun b!5036101 () Bool)

(declare-fun e!3145593 () Bool)

(declare-datatypes ((T!104040 0))(
  ( (T!104041 (val!23494 Int)) )
))
(declare-datatypes ((List!58404 0))(
  ( (Nil!58280) (Cons!58280 (h!64728 T!104040) (t!370885 List!58404)) )
))
(declare-datatypes ((tuple2!63202 0))(
  ( (tuple2!63203 (_1!34904 List!58404) (_2!34904 List!58404)) )
))
(declare-fun lt!2083532 () tuple2!63202)

(declare-fun e!3145592 () tuple2!63202)

(assert (=> b!5036101 (= e!3145593 (= lt!2083532 e!3145592))))

(declare-fun c!862616 () Bool)

(declare-fun i!618 () Int)

(declare-fun lt!2083526 () Int)

(assert (=> b!5036101 (= c!862616 (< i!618 lt!2083526))))

(declare-fun b!5036102 () Bool)

(declare-fun e!3145591 () Bool)

(declare-fun e!3145594 () Bool)

(assert (=> b!5036102 (= e!3145591 e!3145594)))

(declare-fun res!2145881 () Bool)

(assert (=> b!5036102 (=> res!2145881 e!3145594)))

(declare-datatypes ((IArray!31045 0))(
  ( (IArray!31046 (innerList!15580 List!58404)) )
))
(declare-datatypes ((Conc!15492 0))(
  ( (Node!15492 (left!42667 Conc!15492) (right!42997 Conc!15492) (csize!31214 Int) (cheight!15703 Int)) (Leaf!25702 (xs!18818 IArray!31045) (csize!31215 Int)) (Empty!15492) )
))
(declare-fun t!4198 () Conc!15492)

(declare-fun isBalanced!4354 (Conc!15492) Bool)

(assert (=> b!5036102 (= res!2145881 (not (isBalanced!4354 (right!42997 t!4198))))))

(declare-fun lt!2083533 () Int)

(declare-fun lt!2083534 () Int)

(assert (=> b!5036102 (= lt!2083533 (- i!618 lt!2083534))))

(declare-fun b!5036103 () Bool)

(declare-fun res!2145882 () Bool)

(declare-fun e!3145598 () Bool)

(assert (=> b!5036103 (=> (not res!2145882) (not e!3145598))))

(get-info :version)

(assert (=> b!5036103 (= res!2145882 (and (not ((_ is Empty!15492) t!4198)) (not ((_ is Leaf!25702) t!4198))))))

(declare-fun b!5036104 () Bool)

(declare-fun e!3145595 () Bool)

(declare-fun tp!1410306 () Bool)

(assert (=> b!5036104 (= e!3145595 tp!1410306)))

(declare-fun b!5036105 () Bool)

(declare-fun e!3145597 () Bool)

(declare-fun inv!77042 (IArray!31045) Bool)

(assert (=> b!5036105 (= e!3145597 (and (inv!77042 (xs!18818 t!4198)) e!3145595))))

(declare-fun b!5036106 () Bool)

(declare-fun lt!2083531 () tuple2!63202)

(declare-fun call!351295 () tuple2!63202)

(assert (=> b!5036106 (= lt!2083531 call!351295)))

(declare-fun call!351296 () List!58404)

(assert (=> b!5036106 (= e!3145592 (tuple2!63203 call!351296 (_2!34904 lt!2083531)))))

(declare-fun bm!351290 () Bool)

(declare-fun lt!2083530 () List!58404)

(declare-fun lt!2083527 () List!58404)

(declare-fun lt!2083528 () tuple2!63202)

(declare-fun ++!12709 (List!58404 List!58404) List!58404)

(assert (=> bm!351290 (= call!351296 (++!12709 (ite c!862616 (_2!34904 lt!2083528) lt!2083530) (ite c!862616 lt!2083527 (_1!34904 lt!2083531))))))

(declare-fun tp!1410308 () Bool)

(declare-fun tp!1410307 () Bool)

(declare-fun b!5036107 () Bool)

(declare-fun inv!77043 (Conc!15492) Bool)

(assert (=> b!5036107 (= e!3145597 (and (inv!77043 (left!42667 t!4198)) tp!1410308 (inv!77043 (right!42997 t!4198)) tp!1410307))))

(declare-fun res!2145887 () Bool)

(assert (=> start!532770 (=> (not res!2145887) (not e!3145598))))

(assert (=> start!532770 (= res!2145887 (isBalanced!4354 t!4198))))

(assert (=> start!532770 e!3145598))

(assert (=> start!532770 (and (inv!77043 t!4198) e!3145597)))

(assert (=> start!532770 true))

(declare-fun b!5036108 () Bool)

(assert (=> b!5036108 (= e!3145598 (not e!3145591))))

(declare-fun res!2145885 () Bool)

(assert (=> b!5036108 (=> res!2145885 e!3145591)))

(assert (=> b!5036108 (= res!2145885 (or (= lt!2083534 i!618) (< i!618 lt!2083534)))))

(declare-fun size!38858 (Conc!15492) Int)

(assert (=> b!5036108 (= lt!2083534 (size!38858 (left!42667 t!4198)))))

(assert (=> b!5036108 e!3145593))

(declare-fun c!862617 () Bool)

(assert (=> b!5036108 (= c!862617 (= lt!2083526 i!618))))

(declare-fun splitAtIndex!193 (List!58404 Int) tuple2!63202)

(assert (=> b!5036108 (= lt!2083532 (splitAtIndex!193 (++!12709 lt!2083530 lt!2083527) i!618))))

(declare-fun size!38859 (List!58404) Int)

(assert (=> b!5036108 (= lt!2083526 (size!38859 lt!2083530))))

(declare-datatypes ((Unit!149479 0))(
  ( (Unit!149480) )
))
(declare-fun lt!2083529 () Unit!149479)

(declare-fun splitAtLemma!68 (List!58404 List!58404 Int) Unit!149479)

(assert (=> b!5036108 (= lt!2083529 (splitAtLemma!68 lt!2083530 lt!2083527 i!618))))

(declare-fun list!18875 (Conc!15492) List!58404)

(assert (=> b!5036108 (= lt!2083527 (list!18875 (right!42997 t!4198)))))

(assert (=> b!5036108 (= lt!2083530 (list!18875 (left!42667 t!4198)))))

(declare-fun b!5036109 () Bool)

(assert (=> b!5036109 (= e!3145593 (= lt!2083532 (tuple2!63203 lt!2083530 lt!2083527)))))

(declare-fun b!5036110 () Bool)

(declare-fun res!2145886 () Bool)

(assert (=> b!5036110 (=> (not res!2145886) (not e!3145598))))

(assert (=> b!5036110 (= res!2145886 (<= 0 i!618))))

(declare-fun b!5036111 () Bool)

(declare-fun e!3145596 () Bool)

(assert (=> b!5036111 (= e!3145596 (<= lt!2083533 (size!38858 (right!42997 t!4198))))))

(declare-fun b!5036112 () Bool)

(assert (=> b!5036112 (= lt!2083528 call!351295)))

(assert (=> b!5036112 (= e!3145592 (tuple2!63203 (_1!34904 lt!2083528) call!351296))))

(declare-fun b!5036113 () Bool)

(declare-fun res!2145884 () Bool)

(assert (=> b!5036113 (=> (not res!2145884) (not e!3145598))))

(assert (=> b!5036113 (= res!2145884 (<= i!618 (size!38858 t!4198)))))

(declare-fun b!5036114 () Bool)

(assert (=> b!5036114 (= e!3145594 e!3145596)))

(declare-fun res!2145883 () Bool)

(assert (=> b!5036114 (=> (not res!2145883) (not e!3145596))))

(assert (=> b!5036114 (= res!2145883 (<= 0 lt!2083533))))

(declare-fun bm!351291 () Bool)

(assert (=> bm!351291 (= call!351295 (splitAtIndex!193 (ite c!862616 lt!2083530 lt!2083527) (ite c!862616 i!618 (- i!618 lt!2083526))))))

(assert (= (and start!532770 res!2145887) b!5036110))

(assert (= (and b!5036110 res!2145886) b!5036113))

(assert (= (and b!5036113 res!2145884) b!5036103))

(assert (= (and b!5036103 res!2145882) b!5036108))

(assert (= (and b!5036108 c!862617) b!5036109))

(assert (= (and b!5036108 (not c!862617)) b!5036101))

(assert (= (and b!5036101 c!862616) b!5036112))

(assert (= (and b!5036101 (not c!862616)) b!5036106))

(assert (= (or b!5036112 b!5036106) bm!351290))

(assert (= (or b!5036112 b!5036106) bm!351291))

(assert (= (and b!5036108 (not res!2145885)) b!5036102))

(assert (= (and b!5036102 (not res!2145881)) b!5036114))

(assert (= (and b!5036114 res!2145883) b!5036111))

(assert (= (and start!532770 ((_ is Node!15492) t!4198)) b!5036107))

(assert (= b!5036105 b!5036104))

(assert (= (and start!532770 ((_ is Leaf!25702) t!4198)) b!5036105))

(declare-fun m!6070330 () Bool)

(assert (=> bm!351290 m!6070330))

(declare-fun m!6070332 () Bool)

(assert (=> b!5036111 m!6070332))

(declare-fun m!6070334 () Bool)

(assert (=> start!532770 m!6070334))

(declare-fun m!6070336 () Bool)

(assert (=> start!532770 m!6070336))

(declare-fun m!6070338 () Bool)

(assert (=> bm!351291 m!6070338))

(declare-fun m!6070340 () Bool)

(assert (=> b!5036105 m!6070340))

(declare-fun m!6070342 () Bool)

(assert (=> b!5036113 m!6070342))

(declare-fun m!6070344 () Bool)

(assert (=> b!5036108 m!6070344))

(declare-fun m!6070346 () Bool)

(assert (=> b!5036108 m!6070346))

(declare-fun m!6070348 () Bool)

(assert (=> b!5036108 m!6070348))

(declare-fun m!6070350 () Bool)

(assert (=> b!5036108 m!6070350))

(declare-fun m!6070352 () Bool)

(assert (=> b!5036108 m!6070352))

(declare-fun m!6070354 () Bool)

(assert (=> b!5036108 m!6070354))

(assert (=> b!5036108 m!6070346))

(declare-fun m!6070356 () Bool)

(assert (=> b!5036108 m!6070356))

(declare-fun m!6070358 () Bool)

(assert (=> b!5036102 m!6070358))

(declare-fun m!6070360 () Bool)

(assert (=> b!5036107 m!6070360))

(declare-fun m!6070362 () Bool)

(assert (=> b!5036107 m!6070362))

(check-sat (not b!5036104) (not bm!351291) (not b!5036113) (not bm!351290) (not b!5036108) (not b!5036105) (not start!532770) (not b!5036107) (not b!5036111) (not b!5036102))
(check-sat)
(get-model)

(declare-fun d!1620090 () Bool)

(declare-fun c!862620 () Bool)

(assert (=> d!1620090 (= c!862620 ((_ is Node!15492) (left!42667 t!4198)))))

(declare-fun e!3145603 () Bool)

(assert (=> d!1620090 (= (inv!77043 (left!42667 t!4198)) e!3145603)))

(declare-fun b!5036121 () Bool)

(declare-fun inv!77044 (Conc!15492) Bool)

(assert (=> b!5036121 (= e!3145603 (inv!77044 (left!42667 t!4198)))))

(declare-fun b!5036122 () Bool)

(declare-fun e!3145604 () Bool)

(assert (=> b!5036122 (= e!3145603 e!3145604)))

(declare-fun res!2145890 () Bool)

(assert (=> b!5036122 (= res!2145890 (not ((_ is Leaf!25702) (left!42667 t!4198))))))

(assert (=> b!5036122 (=> res!2145890 e!3145604)))

(declare-fun b!5036123 () Bool)

(declare-fun inv!77045 (Conc!15492) Bool)

(assert (=> b!5036123 (= e!3145604 (inv!77045 (left!42667 t!4198)))))

(assert (= (and d!1620090 c!862620) b!5036121))

(assert (= (and d!1620090 (not c!862620)) b!5036122))

(assert (= (and b!5036122 (not res!2145890)) b!5036123))

(declare-fun m!6070366 () Bool)

(assert (=> b!5036121 m!6070366))

(declare-fun m!6070368 () Bool)

(assert (=> b!5036123 m!6070368))

(assert (=> b!5036107 d!1620090))

(declare-fun d!1620096 () Bool)

(declare-fun c!862621 () Bool)

(assert (=> d!1620096 (= c!862621 ((_ is Node!15492) (right!42997 t!4198)))))

(declare-fun e!3145605 () Bool)

(assert (=> d!1620096 (= (inv!77043 (right!42997 t!4198)) e!3145605)))

(declare-fun b!5036124 () Bool)

(assert (=> b!5036124 (= e!3145605 (inv!77044 (right!42997 t!4198)))))

(declare-fun b!5036125 () Bool)

(declare-fun e!3145606 () Bool)

(assert (=> b!5036125 (= e!3145605 e!3145606)))

(declare-fun res!2145891 () Bool)

(assert (=> b!5036125 (= res!2145891 (not ((_ is Leaf!25702) (right!42997 t!4198))))))

(assert (=> b!5036125 (=> res!2145891 e!3145606)))

(declare-fun b!5036126 () Bool)

(assert (=> b!5036126 (= e!3145606 (inv!77045 (right!42997 t!4198)))))

(assert (= (and d!1620096 c!862621) b!5036124))

(assert (= (and d!1620096 (not c!862621)) b!5036125))

(assert (= (and b!5036125 (not res!2145891)) b!5036126))

(declare-fun m!6070370 () Bool)

(assert (=> b!5036124 m!6070370))

(declare-fun m!6070372 () Bool)

(assert (=> b!5036126 m!6070372))

(assert (=> b!5036107 d!1620096))

(declare-fun b!5036155 () Bool)

(declare-fun res!2145914 () Bool)

(declare-fun e!3145617 () Bool)

(assert (=> b!5036155 (=> (not res!2145914) (not e!3145617))))

(declare-fun lt!2083540 () List!58404)

(assert (=> b!5036155 (= res!2145914 (= (size!38859 lt!2083540) (+ (size!38859 (ite c!862616 (_2!34904 lt!2083528) lt!2083530)) (size!38859 (ite c!862616 lt!2083527 (_1!34904 lt!2083531))))))))

(declare-fun e!3145618 () List!58404)

(declare-fun b!5036154 () Bool)

(assert (=> b!5036154 (= e!3145618 (Cons!58280 (h!64728 (ite c!862616 (_2!34904 lt!2083528) lt!2083530)) (++!12709 (t!370885 (ite c!862616 (_2!34904 lt!2083528) lt!2083530)) (ite c!862616 lt!2083527 (_1!34904 lt!2083531)))))))

(declare-fun b!5036153 () Bool)

(assert (=> b!5036153 (= e!3145618 (ite c!862616 lt!2083527 (_1!34904 lt!2083531)))))

(declare-fun b!5036156 () Bool)

(assert (=> b!5036156 (= e!3145617 (or (not (= (ite c!862616 lt!2083527 (_1!34904 lt!2083531)) Nil!58280)) (= lt!2083540 (ite c!862616 (_2!34904 lt!2083528) lt!2083530))))))

(declare-fun d!1620098 () Bool)

(assert (=> d!1620098 e!3145617))

(declare-fun res!2145915 () Bool)

(assert (=> d!1620098 (=> (not res!2145915) (not e!3145617))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10343 (List!58404) (InoxSet T!104040))

(assert (=> d!1620098 (= res!2145915 (= (content!10343 lt!2083540) ((_ map or) (content!10343 (ite c!862616 (_2!34904 lt!2083528) lt!2083530)) (content!10343 (ite c!862616 lt!2083527 (_1!34904 lt!2083531))))))))

(assert (=> d!1620098 (= lt!2083540 e!3145618)))

(declare-fun c!862624 () Bool)

(assert (=> d!1620098 (= c!862624 ((_ is Nil!58280) (ite c!862616 (_2!34904 lt!2083528) lt!2083530)))))

(assert (=> d!1620098 (= (++!12709 (ite c!862616 (_2!34904 lt!2083528) lt!2083530) (ite c!862616 lt!2083527 (_1!34904 lt!2083531))) lt!2083540)))

(assert (= (and d!1620098 c!862624) b!5036153))

(assert (= (and d!1620098 (not c!862624)) b!5036154))

(assert (= (and d!1620098 res!2145915) b!5036155))

(assert (= (and b!5036155 res!2145914) b!5036156))

(declare-fun m!6070390 () Bool)

(assert (=> b!5036155 m!6070390))

(declare-fun m!6070392 () Bool)

(assert (=> b!5036155 m!6070392))

(declare-fun m!6070394 () Bool)

(assert (=> b!5036155 m!6070394))

(declare-fun m!6070396 () Bool)

(assert (=> b!5036154 m!6070396))

(declare-fun m!6070398 () Bool)

(assert (=> d!1620098 m!6070398))

(declare-fun m!6070400 () Bool)

(assert (=> d!1620098 m!6070400))

(declare-fun m!6070402 () Bool)

(assert (=> d!1620098 m!6070402))

(assert (=> bm!351290 d!1620098))

(declare-fun b!5036181 () Bool)

(declare-fun e!3145629 () Bool)

(declare-fun isEmpty!31508 (Conc!15492) Bool)

(assert (=> b!5036181 (= e!3145629 (not (isEmpty!31508 (right!42997 (right!42997 t!4198)))))))

(declare-fun b!5036183 () Bool)

(declare-fun res!2145938 () Bool)

(assert (=> b!5036183 (=> (not res!2145938) (not e!3145629))))

(declare-fun height!2071 (Conc!15492) Int)

(assert (=> b!5036183 (= res!2145938 (<= (- (height!2071 (left!42667 (right!42997 t!4198))) (height!2071 (right!42997 (right!42997 t!4198)))) 1))))

(declare-fun b!5036184 () Bool)

(declare-fun e!3145630 () Bool)

(assert (=> b!5036184 (= e!3145630 e!3145629)))

(declare-fun res!2145937 () Bool)

(assert (=> b!5036184 (=> (not res!2145937) (not e!3145629))))

(assert (=> b!5036184 (= res!2145937 (<= (- 1) (- (height!2071 (left!42667 (right!42997 t!4198))) (height!2071 (right!42997 (right!42997 t!4198))))))))

(declare-fun b!5036185 () Bool)

(declare-fun res!2145935 () Bool)

(assert (=> b!5036185 (=> (not res!2145935) (not e!3145629))))

(assert (=> b!5036185 (= res!2145935 (isBalanced!4354 (left!42667 (right!42997 t!4198))))))

(declare-fun b!5036186 () Bool)

(declare-fun res!2145936 () Bool)

(assert (=> b!5036186 (=> (not res!2145936) (not e!3145629))))

(assert (=> b!5036186 (= res!2145936 (isBalanced!4354 (right!42997 (right!42997 t!4198))))))

(declare-fun d!1620104 () Bool)

(declare-fun res!2145934 () Bool)

(assert (=> d!1620104 (=> res!2145934 e!3145630)))

(assert (=> d!1620104 (= res!2145934 (not ((_ is Node!15492) (right!42997 t!4198))))))

(assert (=> d!1620104 (= (isBalanced!4354 (right!42997 t!4198)) e!3145630)))

(declare-fun b!5036182 () Bool)

(declare-fun res!2145939 () Bool)

(assert (=> b!5036182 (=> (not res!2145939) (not e!3145629))))

(assert (=> b!5036182 (= res!2145939 (not (isEmpty!31508 (left!42667 (right!42997 t!4198)))))))

(assert (= (and d!1620104 (not res!2145934)) b!5036184))

(assert (= (and b!5036184 res!2145937) b!5036183))

(assert (= (and b!5036183 res!2145938) b!5036185))

(assert (= (and b!5036185 res!2145935) b!5036186))

(assert (= (and b!5036186 res!2145936) b!5036182))

(assert (= (and b!5036182 res!2145939) b!5036181))

(declare-fun m!6070418 () Bool)

(assert (=> b!5036181 m!6070418))

(declare-fun m!6070420 () Bool)

(assert (=> b!5036184 m!6070420))

(declare-fun m!6070422 () Bool)

(assert (=> b!5036184 m!6070422))

(declare-fun m!6070424 () Bool)

(assert (=> b!5036185 m!6070424))

(declare-fun m!6070426 () Bool)

(assert (=> b!5036182 m!6070426))

(assert (=> b!5036183 m!6070420))

(assert (=> b!5036183 m!6070422))

(declare-fun m!6070428 () Bool)

(assert (=> b!5036186 m!6070428))

(assert (=> b!5036102 d!1620104))

(declare-fun d!1620108 () Bool)

(declare-fun lt!2083551 () Int)

(assert (=> d!1620108 (= lt!2083551 (size!38859 (list!18875 (right!42997 t!4198))))))

(assert (=> d!1620108 (= lt!2083551 (ite ((_ is Empty!15492) (right!42997 t!4198)) 0 (ite ((_ is Leaf!25702) (right!42997 t!4198)) (csize!31215 (right!42997 t!4198)) (csize!31214 (right!42997 t!4198)))))))

(assert (=> d!1620108 (= (size!38858 (right!42997 t!4198)) lt!2083551)))

(declare-fun bs!1188762 () Bool)

(assert (= bs!1188762 d!1620108))

(assert (=> bs!1188762 m!6070350))

(assert (=> bs!1188762 m!6070350))

(declare-fun m!6070430 () Bool)

(assert (=> bs!1188762 m!6070430))

(assert (=> b!5036111 d!1620108))

(declare-fun d!1620110 () Bool)

(assert (=> d!1620110 (= (inv!77042 (xs!18818 t!4198)) (<= (size!38859 (innerList!15580 (xs!18818 t!4198))) 2147483647))))

(declare-fun bs!1188763 () Bool)

(assert (= bs!1188763 d!1620110))

(declare-fun m!6070432 () Bool)

(assert (=> bs!1188763 m!6070432))

(assert (=> b!5036105 d!1620110))

(declare-fun b!5036249 () Bool)

(declare-fun lt!2083565 () tuple2!63202)

(assert (=> b!5036249 (= lt!2083565 (splitAtIndex!193 (t!370885 (ite c!862616 lt!2083530 lt!2083527)) (- (ite c!862616 i!618 (- i!618 lt!2083526)) 1)))))

(declare-fun e!3145663 () tuple2!63202)

(assert (=> b!5036249 (= e!3145663 (tuple2!63203 (Cons!58280 (h!64728 (ite c!862616 lt!2083530 lt!2083527)) (_1!34904 lt!2083565)) (_2!34904 lt!2083565)))))

(declare-fun b!5036250 () Bool)

(assert (=> b!5036250 (= e!3145663 (tuple2!63203 Nil!58280 (ite c!862616 lt!2083530 lt!2083527)))))

(declare-fun b!5036252 () Bool)

(declare-fun e!3145664 () tuple2!63202)

(assert (=> b!5036252 (= e!3145664 e!3145663)))

(declare-fun c!862652 () Bool)

(assert (=> b!5036252 (= c!862652 (<= (ite c!862616 i!618 (- i!618 lt!2083526)) 0))))

(declare-fun b!5036253 () Bool)

(declare-fun lt!2083566 () tuple2!63202)

(declare-fun e!3145662 () Bool)

(declare-fun drop!2616 (List!58404 Int) List!58404)

(assert (=> b!5036253 (= e!3145662 (= (_2!34904 lt!2083566) (drop!2616 (ite c!862616 lt!2083530 lt!2083527) (ite c!862616 i!618 (- i!618 lt!2083526)))))))

(declare-fun b!5036254 () Bool)

(declare-fun res!2145954 () Bool)

(assert (=> b!5036254 (=> (not res!2145954) (not e!3145662))))

(declare-fun take!809 (List!58404 Int) List!58404)

(assert (=> b!5036254 (= res!2145954 (= (_1!34904 lt!2083566) (take!809 (ite c!862616 lt!2083530 lt!2083527) (ite c!862616 i!618 (- i!618 lt!2083526)))))))

(declare-fun b!5036251 () Bool)

(assert (=> b!5036251 (= e!3145664 (tuple2!63203 Nil!58280 Nil!58280))))

(declare-fun d!1620112 () Bool)

(assert (=> d!1620112 e!3145662))

(declare-fun res!2145955 () Bool)

(assert (=> d!1620112 (=> (not res!2145955) (not e!3145662))))

(assert (=> d!1620112 (= res!2145955 (= (++!12709 (_1!34904 lt!2083566) (_2!34904 lt!2083566)) (ite c!862616 lt!2083530 lt!2083527)))))

(assert (=> d!1620112 (= lt!2083566 e!3145664)))

(declare-fun c!862653 () Bool)

(assert (=> d!1620112 (= c!862653 ((_ is Nil!58280) (ite c!862616 lt!2083530 lt!2083527)))))

(assert (=> d!1620112 (= (splitAtIndex!193 (ite c!862616 lt!2083530 lt!2083527) (ite c!862616 i!618 (- i!618 lt!2083526))) lt!2083566)))

(assert (= (and d!1620112 c!862653) b!5036251))

(assert (= (and d!1620112 (not c!862653)) b!5036252))

(assert (= (and b!5036252 c!862652) b!5036250))

(assert (= (and b!5036252 (not c!862652)) b!5036249))

(assert (= (and d!1620112 res!2145955) b!5036254))

(assert (= (and b!5036254 res!2145954) b!5036253))

(declare-fun m!6070482 () Bool)

(assert (=> b!5036249 m!6070482))

(declare-fun m!6070484 () Bool)

(assert (=> b!5036253 m!6070484))

(declare-fun m!6070486 () Bool)

(assert (=> b!5036254 m!6070486))

(declare-fun m!6070488 () Bool)

(assert (=> d!1620112 m!6070488))

(assert (=> bm!351291 d!1620112))

(declare-fun d!1620128 () Bool)

(declare-fun lt!2083569 () Int)

(assert (=> d!1620128 (>= lt!2083569 0)))

(declare-fun e!3145667 () Int)

(assert (=> d!1620128 (= lt!2083569 e!3145667)))

(declare-fun c!862656 () Bool)

(assert (=> d!1620128 (= c!862656 ((_ is Nil!58280) lt!2083530))))

(assert (=> d!1620128 (= (size!38859 lt!2083530) lt!2083569)))

(declare-fun b!5036259 () Bool)

(assert (=> b!5036259 (= e!3145667 0)))

(declare-fun b!5036260 () Bool)

(assert (=> b!5036260 (= e!3145667 (+ 1 (size!38859 (t!370885 lt!2083530))))))

(assert (= (and d!1620128 c!862656) b!5036259))

(assert (= (and d!1620128 (not c!862656)) b!5036260))

(declare-fun m!6070490 () Bool)

(assert (=> b!5036260 m!6070490))

(assert (=> b!5036108 d!1620128))

(declare-fun b!5036270 () Bool)

(declare-fun e!3145672 () List!58404)

(declare-fun e!3145673 () List!58404)

(assert (=> b!5036270 (= e!3145672 e!3145673)))

(declare-fun c!862662 () Bool)

(assert (=> b!5036270 (= c!862662 ((_ is Leaf!25702) (left!42667 t!4198)))))

(declare-fun b!5036271 () Bool)

(declare-fun list!18877 (IArray!31045) List!58404)

(assert (=> b!5036271 (= e!3145673 (list!18877 (xs!18818 (left!42667 t!4198))))))

(declare-fun b!5036269 () Bool)

(assert (=> b!5036269 (= e!3145672 Nil!58280)))

(declare-fun b!5036272 () Bool)

(assert (=> b!5036272 (= e!3145673 (++!12709 (list!18875 (left!42667 (left!42667 t!4198))) (list!18875 (right!42997 (left!42667 t!4198)))))))

(declare-fun d!1620130 () Bool)

(declare-fun c!862661 () Bool)

(assert (=> d!1620130 (= c!862661 ((_ is Empty!15492) (left!42667 t!4198)))))

(assert (=> d!1620130 (= (list!18875 (left!42667 t!4198)) e!3145672)))

(assert (= (and d!1620130 c!862661) b!5036269))

(assert (= (and d!1620130 (not c!862661)) b!5036270))

(assert (= (and b!5036270 c!862662) b!5036271))

(assert (= (and b!5036270 (not c!862662)) b!5036272))

(declare-fun m!6070492 () Bool)

(assert (=> b!5036271 m!6070492))

(declare-fun m!6070494 () Bool)

(assert (=> b!5036272 m!6070494))

(declare-fun m!6070496 () Bool)

(assert (=> b!5036272 m!6070496))

(assert (=> b!5036272 m!6070494))

(assert (=> b!5036272 m!6070496))

(declare-fun m!6070498 () Bool)

(assert (=> b!5036272 m!6070498))

(assert (=> b!5036108 d!1620130))

(declare-fun b!5036274 () Bool)

(declare-fun e!3145674 () List!58404)

(declare-fun e!3145675 () List!58404)

(assert (=> b!5036274 (= e!3145674 e!3145675)))

(declare-fun c!862664 () Bool)

(assert (=> b!5036274 (= c!862664 ((_ is Leaf!25702) (right!42997 t!4198)))))

(declare-fun b!5036275 () Bool)

(assert (=> b!5036275 (= e!3145675 (list!18877 (xs!18818 (right!42997 t!4198))))))

(declare-fun b!5036273 () Bool)

(assert (=> b!5036273 (= e!3145674 Nil!58280)))

(declare-fun b!5036276 () Bool)

(assert (=> b!5036276 (= e!3145675 (++!12709 (list!18875 (left!42667 (right!42997 t!4198))) (list!18875 (right!42997 (right!42997 t!4198)))))))

(declare-fun d!1620132 () Bool)

(declare-fun c!862663 () Bool)

(assert (=> d!1620132 (= c!862663 ((_ is Empty!15492) (right!42997 t!4198)))))

(assert (=> d!1620132 (= (list!18875 (right!42997 t!4198)) e!3145674)))

(assert (= (and d!1620132 c!862663) b!5036273))

(assert (= (and d!1620132 (not c!862663)) b!5036274))

(assert (= (and b!5036274 c!862664) b!5036275))

(assert (= (and b!5036274 (not c!862664)) b!5036276))

(declare-fun m!6070500 () Bool)

(assert (=> b!5036275 m!6070500))

(declare-fun m!6070502 () Bool)

(assert (=> b!5036276 m!6070502))

(declare-fun m!6070504 () Bool)

(assert (=> b!5036276 m!6070504))

(assert (=> b!5036276 m!6070502))

(assert (=> b!5036276 m!6070504))

(declare-fun m!6070506 () Bool)

(assert (=> b!5036276 m!6070506))

(assert (=> b!5036108 d!1620132))

(declare-fun d!1620134 () Bool)

(declare-fun lt!2083576 () Int)

(assert (=> d!1620134 (= lt!2083576 (size!38859 (list!18875 (left!42667 t!4198))))))

(assert (=> d!1620134 (= lt!2083576 (ite ((_ is Empty!15492) (left!42667 t!4198)) 0 (ite ((_ is Leaf!25702) (left!42667 t!4198)) (csize!31215 (left!42667 t!4198)) (csize!31214 (left!42667 t!4198)))))))

(assert (=> d!1620134 (= (size!38858 (left!42667 t!4198)) lt!2083576)))

(declare-fun bs!1188765 () Bool)

(assert (= bs!1188765 d!1620134))

(assert (=> bs!1188765 m!6070344))

(assert (=> bs!1188765 m!6070344))

(declare-fun m!6070508 () Bool)

(assert (=> bs!1188765 m!6070508))

(assert (=> b!5036108 d!1620134))

(declare-fun b!5036289 () Bool)

(declare-fun res!2145958 () Bool)

(declare-fun e!3145682 () Bool)

(assert (=> b!5036289 (=> (not res!2145958) (not e!3145682))))

(declare-fun lt!2083577 () List!58404)

(assert (=> b!5036289 (= res!2145958 (= (size!38859 lt!2083577) (+ (size!38859 lt!2083530) (size!38859 lt!2083527))))))

(declare-fun b!5036288 () Bool)

(declare-fun e!3145683 () List!58404)

(assert (=> b!5036288 (= e!3145683 (Cons!58280 (h!64728 lt!2083530) (++!12709 (t!370885 lt!2083530) lt!2083527)))))

(declare-fun b!5036287 () Bool)

(assert (=> b!5036287 (= e!3145683 lt!2083527)))

(declare-fun b!5036290 () Bool)

(assert (=> b!5036290 (= e!3145682 (or (not (= lt!2083527 Nil!58280)) (= lt!2083577 lt!2083530)))))

(declare-fun d!1620136 () Bool)

(assert (=> d!1620136 e!3145682))

(declare-fun res!2145959 () Bool)

(assert (=> d!1620136 (=> (not res!2145959) (not e!3145682))))

(assert (=> d!1620136 (= res!2145959 (= (content!10343 lt!2083577) ((_ map or) (content!10343 lt!2083530) (content!10343 lt!2083527))))))

(assert (=> d!1620136 (= lt!2083577 e!3145683)))

(declare-fun c!862669 () Bool)

(assert (=> d!1620136 (= c!862669 ((_ is Nil!58280) lt!2083530))))

(assert (=> d!1620136 (= (++!12709 lt!2083530 lt!2083527) lt!2083577)))

(assert (= (and d!1620136 c!862669) b!5036287))

(assert (= (and d!1620136 (not c!862669)) b!5036288))

(assert (= (and d!1620136 res!2145959) b!5036289))

(assert (= (and b!5036289 res!2145958) b!5036290))

(declare-fun m!6070510 () Bool)

(assert (=> b!5036289 m!6070510))

(assert (=> b!5036289 m!6070348))

(declare-fun m!6070512 () Bool)

(assert (=> b!5036289 m!6070512))

(declare-fun m!6070514 () Bool)

(assert (=> b!5036288 m!6070514))

(declare-fun m!6070516 () Bool)

(assert (=> d!1620136 m!6070516))

(declare-fun m!6070518 () Bool)

(assert (=> d!1620136 m!6070518))

(declare-fun m!6070520 () Bool)

(assert (=> d!1620136 m!6070520))

(assert (=> b!5036108 d!1620136))

(declare-fun b!5036295 () Bool)

(declare-fun lt!2083578 () tuple2!63202)

(assert (=> b!5036295 (= lt!2083578 (splitAtIndex!193 (t!370885 (++!12709 lt!2083530 lt!2083527)) (- i!618 1)))))

(declare-fun e!3145687 () tuple2!63202)

(assert (=> b!5036295 (= e!3145687 (tuple2!63203 (Cons!58280 (h!64728 (++!12709 lt!2083530 lt!2083527)) (_1!34904 lt!2083578)) (_2!34904 lt!2083578)))))

(declare-fun b!5036296 () Bool)

(assert (=> b!5036296 (= e!3145687 (tuple2!63203 Nil!58280 (++!12709 lt!2083530 lt!2083527)))))

(declare-fun b!5036298 () Bool)

(declare-fun e!3145688 () tuple2!63202)

(assert (=> b!5036298 (= e!3145688 e!3145687)))

(declare-fun c!862672 () Bool)

(assert (=> b!5036298 (= c!862672 (<= i!618 0))))

(declare-fun lt!2083579 () tuple2!63202)

(declare-fun e!3145686 () Bool)

(declare-fun b!5036299 () Bool)

(assert (=> b!5036299 (= e!3145686 (= (_2!34904 lt!2083579) (drop!2616 (++!12709 lt!2083530 lt!2083527) i!618)))))

(declare-fun b!5036300 () Bool)

(declare-fun res!2145960 () Bool)

(assert (=> b!5036300 (=> (not res!2145960) (not e!3145686))))

(assert (=> b!5036300 (= res!2145960 (= (_1!34904 lt!2083579) (take!809 (++!12709 lt!2083530 lt!2083527) i!618)))))

(declare-fun b!5036297 () Bool)

(assert (=> b!5036297 (= e!3145688 (tuple2!63203 Nil!58280 Nil!58280))))

(declare-fun d!1620138 () Bool)

(assert (=> d!1620138 e!3145686))

(declare-fun res!2145961 () Bool)

(assert (=> d!1620138 (=> (not res!2145961) (not e!3145686))))

(assert (=> d!1620138 (= res!2145961 (= (++!12709 (_1!34904 lt!2083579) (_2!34904 lt!2083579)) (++!12709 lt!2083530 lt!2083527)))))

(assert (=> d!1620138 (= lt!2083579 e!3145688)))

(declare-fun c!862673 () Bool)

(assert (=> d!1620138 (= c!862673 ((_ is Nil!58280) (++!12709 lt!2083530 lt!2083527)))))

(assert (=> d!1620138 (= (splitAtIndex!193 (++!12709 lt!2083530 lt!2083527) i!618) lt!2083579)))

(assert (= (and d!1620138 c!862673) b!5036297))

(assert (= (and d!1620138 (not c!862673)) b!5036298))

(assert (= (and b!5036298 c!862672) b!5036296))

(assert (= (and b!5036298 (not c!862672)) b!5036295))

(assert (= (and d!1620138 res!2145961) b!5036300))

(assert (= (and b!5036300 res!2145960) b!5036299))

(declare-fun m!6070522 () Bool)

(assert (=> b!5036295 m!6070522))

(assert (=> b!5036299 m!6070346))

(declare-fun m!6070524 () Bool)

(assert (=> b!5036299 m!6070524))

(assert (=> b!5036300 m!6070346))

(declare-fun m!6070526 () Bool)

(assert (=> b!5036300 m!6070526))

(declare-fun m!6070528 () Bool)

(assert (=> d!1620138 m!6070528))

(assert (=> b!5036108 d!1620138))

(declare-fun b!5036362 () Bool)

(declare-fun lt!2083589 () tuple2!63202)

(declare-fun call!351307 () tuple2!63202)

(assert (=> b!5036362 (= lt!2083589 call!351307)))

(declare-fun e!3145725 () tuple2!63202)

(declare-fun call!351308 () List!58404)

(assert (=> b!5036362 (= e!3145725 (tuple2!63203 (_1!34904 lt!2083589) call!351308))))

(declare-fun bm!351302 () Bool)

(declare-fun c!862690 () Bool)

(declare-fun c!862689 () Bool)

(assert (=> bm!351302 (= c!862690 c!862689)))

(declare-fun e!3145726 () Int)

(assert (=> bm!351302 (= call!351307 (splitAtIndex!193 (ite c!862689 lt!2083530 lt!2083527) e!3145726))))

(declare-fun b!5036363 () Bool)

(declare-fun e!3145724 () tuple2!63202)

(assert (=> b!5036363 (= e!3145724 (tuple2!63203 lt!2083530 lt!2083527))))

(declare-fun d!1620140 () Bool)

(assert (=> d!1620140 (= (splitAtIndex!193 (++!12709 lt!2083530 lt!2083527) i!618) e!3145724)))

(declare-fun c!862688 () Bool)

(assert (=> d!1620140 (= c!862688 (= (size!38859 lt!2083530) i!618))))

(declare-fun lt!2083590 () Unit!149479)

(declare-fun choose!37248 (List!58404 List!58404 Int) Unit!149479)

(assert (=> d!1620140 (= lt!2083590 (choose!37248 lt!2083530 lt!2083527 i!618))))

(declare-fun e!3145727 () Bool)

(assert (=> d!1620140 e!3145727))

(declare-fun res!2145976 () Bool)

(assert (=> d!1620140 (=> (not res!2145976) (not e!3145727))))

(assert (=> d!1620140 (= res!2145976 (<= 0 i!618))))

(assert (=> d!1620140 (= (splitAtLemma!68 lt!2083530 lt!2083527 i!618) lt!2083590)))

(declare-fun b!5036364 () Bool)

(declare-fun lt!2083591 () tuple2!63202)

(assert (=> b!5036364 (= lt!2083591 call!351307)))

(assert (=> b!5036364 (= e!3145725 (tuple2!63203 call!351308 (_2!34904 lt!2083591)))))

(declare-fun b!5036365 () Bool)

(assert (=> b!5036365 (= e!3145726 i!618)))

(declare-fun bm!351303 () Bool)

(assert (=> bm!351303 (= call!351308 (++!12709 (ite c!862689 (_2!34904 lt!2083589) lt!2083530) (ite c!862689 lt!2083527 (_1!34904 lt!2083591))))))

(declare-fun b!5036366 () Bool)

(assert (=> b!5036366 (= e!3145727 (<= i!618 (+ (size!38859 lt!2083530) (size!38859 lt!2083527))))))

(declare-fun b!5036367 () Bool)

(assert (=> b!5036367 (= e!3145726 (- i!618 (size!38859 lt!2083530)))))

(declare-fun b!5036368 () Bool)

(assert (=> b!5036368 (= e!3145724 e!3145725)))

(assert (=> b!5036368 (= c!862689 (< i!618 (size!38859 lt!2083530)))))

(assert (= (and d!1620140 res!2145976) b!5036366))

(assert (= (and d!1620140 c!862688) b!5036363))

(assert (= (and d!1620140 (not c!862688)) b!5036368))

(assert (= (and b!5036368 c!862689) b!5036362))

(assert (= (and b!5036368 (not c!862689)) b!5036364))

(assert (= (or b!5036362 b!5036364) bm!351303))

(assert (= (or b!5036362 b!5036364) bm!351302))

(assert (= (and bm!351302 c!862690) b!5036365))

(assert (= (and bm!351302 (not c!862690)) b!5036367))

(declare-fun m!6070572 () Bool)

(assert (=> bm!351302 m!6070572))

(assert (=> b!5036368 m!6070348))

(declare-fun m!6070574 () Bool)

(assert (=> bm!351303 m!6070574))

(assert (=> b!5036367 m!6070348))

(assert (=> d!1620140 m!6070346))

(assert (=> d!1620140 m!6070346))

(assert (=> d!1620140 m!6070356))

(assert (=> d!1620140 m!6070348))

(declare-fun m!6070576 () Bool)

(assert (=> d!1620140 m!6070576))

(assert (=> b!5036366 m!6070348))

(assert (=> b!5036366 m!6070512))

(assert (=> b!5036108 d!1620140))

(declare-fun b!5036369 () Bool)

(declare-fun e!3145728 () Bool)

(assert (=> b!5036369 (= e!3145728 (not (isEmpty!31508 (right!42997 t!4198))))))

(declare-fun b!5036371 () Bool)

(declare-fun res!2145981 () Bool)

(assert (=> b!5036371 (=> (not res!2145981) (not e!3145728))))

(assert (=> b!5036371 (= res!2145981 (<= (- (height!2071 (left!42667 t!4198)) (height!2071 (right!42997 t!4198))) 1))))

(declare-fun b!5036372 () Bool)

(declare-fun e!3145729 () Bool)

(assert (=> b!5036372 (= e!3145729 e!3145728)))

(declare-fun res!2145980 () Bool)

(assert (=> b!5036372 (=> (not res!2145980) (not e!3145728))))

(assert (=> b!5036372 (= res!2145980 (<= (- 1) (- (height!2071 (left!42667 t!4198)) (height!2071 (right!42997 t!4198)))))))

(declare-fun b!5036373 () Bool)

(declare-fun res!2145978 () Bool)

(assert (=> b!5036373 (=> (not res!2145978) (not e!3145728))))

(assert (=> b!5036373 (= res!2145978 (isBalanced!4354 (left!42667 t!4198)))))

(declare-fun b!5036374 () Bool)

(declare-fun res!2145979 () Bool)

(assert (=> b!5036374 (=> (not res!2145979) (not e!3145728))))

(assert (=> b!5036374 (= res!2145979 (isBalanced!4354 (right!42997 t!4198)))))

(declare-fun d!1620152 () Bool)

(declare-fun res!2145977 () Bool)

(assert (=> d!1620152 (=> res!2145977 e!3145729)))

(assert (=> d!1620152 (= res!2145977 (not ((_ is Node!15492) t!4198)))))

(assert (=> d!1620152 (= (isBalanced!4354 t!4198) e!3145729)))

(declare-fun b!5036370 () Bool)

(declare-fun res!2145982 () Bool)

(assert (=> b!5036370 (=> (not res!2145982) (not e!3145728))))

(assert (=> b!5036370 (= res!2145982 (not (isEmpty!31508 (left!42667 t!4198))))))

(assert (= (and d!1620152 (not res!2145977)) b!5036372))

(assert (= (and b!5036372 res!2145980) b!5036371))

(assert (= (and b!5036371 res!2145981) b!5036373))

(assert (= (and b!5036373 res!2145978) b!5036374))

(assert (= (and b!5036374 res!2145979) b!5036370))

(assert (= (and b!5036370 res!2145982) b!5036369))

(declare-fun m!6070578 () Bool)

(assert (=> b!5036369 m!6070578))

(declare-fun m!6070580 () Bool)

(assert (=> b!5036372 m!6070580))

(declare-fun m!6070582 () Bool)

(assert (=> b!5036372 m!6070582))

(declare-fun m!6070584 () Bool)

(assert (=> b!5036373 m!6070584))

(declare-fun m!6070586 () Bool)

(assert (=> b!5036370 m!6070586))

(assert (=> b!5036371 m!6070580))

(assert (=> b!5036371 m!6070582))

(assert (=> b!5036374 m!6070358))

(assert (=> start!532770 d!1620152))

(declare-fun d!1620154 () Bool)

(declare-fun c!862691 () Bool)

(assert (=> d!1620154 (= c!862691 ((_ is Node!15492) t!4198))))

(declare-fun e!3145730 () Bool)

(assert (=> d!1620154 (= (inv!77043 t!4198) e!3145730)))

(declare-fun b!5036375 () Bool)

(assert (=> b!5036375 (= e!3145730 (inv!77044 t!4198))))

(declare-fun b!5036376 () Bool)

(declare-fun e!3145731 () Bool)

(assert (=> b!5036376 (= e!3145730 e!3145731)))

(declare-fun res!2145983 () Bool)

(assert (=> b!5036376 (= res!2145983 (not ((_ is Leaf!25702) t!4198)))))

(assert (=> b!5036376 (=> res!2145983 e!3145731)))

(declare-fun b!5036377 () Bool)

(assert (=> b!5036377 (= e!3145731 (inv!77045 t!4198))))

(assert (= (and d!1620154 c!862691) b!5036375))

(assert (= (and d!1620154 (not c!862691)) b!5036376))

(assert (= (and b!5036376 (not res!2145983)) b!5036377))

(declare-fun m!6070588 () Bool)

(assert (=> b!5036375 m!6070588))

(declare-fun m!6070590 () Bool)

(assert (=> b!5036377 m!6070590))

(assert (=> start!532770 d!1620154))

(declare-fun d!1620156 () Bool)

(declare-fun lt!2083592 () Int)

(assert (=> d!1620156 (= lt!2083592 (size!38859 (list!18875 t!4198)))))

(assert (=> d!1620156 (= lt!2083592 (ite ((_ is Empty!15492) t!4198) 0 (ite ((_ is Leaf!25702) t!4198) (csize!31215 t!4198) (csize!31214 t!4198))))))

(assert (=> d!1620156 (= (size!38858 t!4198) lt!2083592)))

(declare-fun bs!1188767 () Bool)

(assert (= bs!1188767 d!1620156))

(declare-fun m!6070592 () Bool)

(assert (=> bs!1188767 m!6070592))

(assert (=> bs!1188767 m!6070592))

(declare-fun m!6070594 () Bool)

(assert (=> bs!1188767 m!6070594))

(assert (=> b!5036113 d!1620156))

(declare-fun e!3145737 () Bool)

(declare-fun tp!1410330 () Bool)

(declare-fun tp!1410331 () Bool)

(declare-fun b!5036386 () Bool)

(assert (=> b!5036386 (= e!3145737 (and (inv!77043 (left!42667 (left!42667 t!4198))) tp!1410330 (inv!77043 (right!42997 (left!42667 t!4198))) tp!1410331))))

(declare-fun b!5036388 () Bool)

(declare-fun e!3145736 () Bool)

(declare-fun tp!1410332 () Bool)

(assert (=> b!5036388 (= e!3145736 tp!1410332)))

(declare-fun b!5036387 () Bool)

(assert (=> b!5036387 (= e!3145737 (and (inv!77042 (xs!18818 (left!42667 t!4198))) e!3145736))))

(assert (=> b!5036107 (= tp!1410308 (and (inv!77043 (left!42667 t!4198)) e!3145737))))

(assert (= (and b!5036107 ((_ is Node!15492) (left!42667 t!4198))) b!5036386))

(assert (= b!5036387 b!5036388))

(assert (= (and b!5036107 ((_ is Leaf!25702) (left!42667 t!4198))) b!5036387))

(declare-fun m!6070596 () Bool)

(assert (=> b!5036386 m!6070596))

(declare-fun m!6070598 () Bool)

(assert (=> b!5036386 m!6070598))

(declare-fun m!6070600 () Bool)

(assert (=> b!5036387 m!6070600))

(assert (=> b!5036107 m!6070360))

(declare-fun e!3145739 () Bool)

(declare-fun tp!1410333 () Bool)

(declare-fun b!5036389 () Bool)

(declare-fun tp!1410334 () Bool)

(assert (=> b!5036389 (= e!3145739 (and (inv!77043 (left!42667 (right!42997 t!4198))) tp!1410333 (inv!77043 (right!42997 (right!42997 t!4198))) tp!1410334))))

(declare-fun b!5036391 () Bool)

(declare-fun e!3145738 () Bool)

(declare-fun tp!1410335 () Bool)

(assert (=> b!5036391 (= e!3145738 tp!1410335)))

(declare-fun b!5036390 () Bool)

(assert (=> b!5036390 (= e!3145739 (and (inv!77042 (xs!18818 (right!42997 t!4198))) e!3145738))))

(assert (=> b!5036107 (= tp!1410307 (and (inv!77043 (right!42997 t!4198)) e!3145739))))

(assert (= (and b!5036107 ((_ is Node!15492) (right!42997 t!4198))) b!5036389))

(assert (= b!5036390 b!5036391))

(assert (= (and b!5036107 ((_ is Leaf!25702) (right!42997 t!4198))) b!5036390))

(declare-fun m!6070602 () Bool)

(assert (=> b!5036389 m!6070602))

(declare-fun m!6070604 () Bool)

(assert (=> b!5036389 m!6070604))

(declare-fun m!6070606 () Bool)

(assert (=> b!5036390 m!6070606))

(assert (=> b!5036107 m!6070362))

(declare-fun b!5036396 () Bool)

(declare-fun e!3145742 () Bool)

(declare-fun tp_is_empty!36747 () Bool)

(declare-fun tp!1410338 () Bool)

(assert (=> b!5036396 (= e!3145742 (and tp_is_empty!36747 tp!1410338))))

(assert (=> b!5036104 (= tp!1410306 e!3145742)))

(assert (= (and b!5036104 ((_ is Cons!58280) (innerList!15580 (xs!18818 t!4198)))) b!5036396))

(check-sat (not b!5036375) (not b!5036253) (not b!5036369) (not b!5036155) (not b!5036391) (not b!5036373) (not b!5036386) (not b!5036371) (not b!5036275) (not d!1620112) (not d!1620134) (not b!5036184) (not d!1620156) (not b!5036367) (not b!5036272) (not b!5036182) tp_is_empty!36747 (not b!5036186) (not b!5036185) (not b!5036260) (not b!5036124) (not b!5036126) (not b!5036123) (not bm!351302) (not b!5036390) (not d!1620110) (not d!1620140) (not b!5036374) (not bm!351303) (not b!5036370) (not b!5036299) (not d!1620138) (not b!5036372) (not d!1620108) (not b!5036377) (not b!5036121) (not b!5036254) (not b!5036181) (not b!5036387) (not b!5036183) (not b!5036276) (not b!5036389) (not b!5036271) (not b!5036249) (not b!5036396) (not b!5036300) (not b!5036289) (not b!5036366) (not b!5036388) (not b!5036368) (not b!5036154) (not b!5036107) (not b!5036288) (not d!1620136) (not d!1620098) (not b!5036295))
(check-sat)
