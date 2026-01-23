; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507626 () Bool)

(assert start!507626)

(declare-fun b!4858335 () Bool)

(declare-fun e!3037304 () Bool)

(declare-datatypes ((T!98672 0))(
  ( (T!98673 (val!22410 Int)) )
))
(declare-datatypes ((List!55878 0))(
  ( (Nil!55754) (Cons!55754 (h!62202 T!98672) (t!363476 List!55878)) )
))
(declare-datatypes ((IArray!29129 0))(
  ( (IArray!29130 (innerList!14622 List!55878)) )
))
(declare-datatypes ((Conc!14534 0))(
  ( (Node!14534 (left!40521 Conc!14534) (right!40851 Conc!14534) (csize!29298 Int) (cheight!14745 Int)) (Leaf!24216 (xs!17840 IArray!29129) (csize!29299 Int)) (Empty!14534) )
))
(declare-fun t!4677 () Conc!14534)

(declare-fun e!3037306 () Bool)

(declare-fun inv!71607 (IArray!29129) Bool)

(assert (=> b!4858335 (= e!3037304 (and (inv!71607 (xs!17840 t!4677)) e!3037306))))

(declare-fun b!4858336 () Bool)

(declare-fun e!3037303 () Bool)

(declare-fun lt!1991781 () List!55878)

(declare-fun lt!1991778 () List!55878)

(declare-fun last!405 (List!55878) T!98672)

(declare-fun ++!12139 (List!55878 List!55878) List!55878)

(assert (=> b!4858336 (= e!3037303 (= (last!405 (++!12139 lt!1991781 lt!1991778)) (last!405 lt!1991778)))))

(declare-fun b!4858337 () Bool)

(declare-fun tp!1366690 () Bool)

(assert (=> b!4858337 (= e!3037306 tp!1366690)))

(declare-fun b!4858338 () Bool)

(declare-fun e!3037305 () Bool)

(declare-fun last!406 (Conc!14534) T!98672)

(declare-fun list!17428 (Conc!14534) List!55878)

(assert (=> b!4858338 (= e!3037305 (not (= (last!406 (right!40851 t!4677)) (last!405 (list!17428 t!4677)))))))

(declare-fun e!3037307 () Bool)

(assert (=> b!4858338 e!3037307))

(declare-fun res!2073992 () Bool)

(assert (=> b!4858338 (=> res!2073992 e!3037307)))

(declare-fun e!3037308 () Bool)

(assert (=> b!4858338 (= res!2073992 e!3037308)))

(declare-fun res!2073990 () Bool)

(assert (=> b!4858338 (=> (not res!2073990) (not e!3037308))))

(declare-fun lt!1991780 () Bool)

(assert (=> b!4858338 (= res!2073990 lt!1991780)))

(declare-fun isEmpty!29840 (List!55878) Bool)

(assert (=> b!4858338 (= lt!1991780 (isEmpty!29840 lt!1991778))))

(declare-datatypes ((Unit!145859 0))(
  ( (Unit!145860) )
))
(declare-fun lt!1991779 () Unit!145859)

(declare-fun lemmaLastOfConcatIsLastOfRhs!36 (List!55878 List!55878) Unit!145859)

(assert (=> b!4858338 (= lt!1991779 (lemmaLastOfConcatIsLastOfRhs!36 lt!1991781 lt!1991778))))

(assert (=> b!4858338 (= lt!1991778 (list!17428 (right!40851 t!4677)))))

(assert (=> b!4858338 (= lt!1991781 (list!17428 (left!40521 t!4677)))))

(declare-fun b!4858339 () Bool)

(declare-fun res!2073993 () Bool)

(assert (=> b!4858339 (=> (not res!2073993) (not e!3037305))))

(declare-fun isEmpty!29841 (Conc!14534) Bool)

(assert (=> b!4858339 (= res!2073993 (not (isEmpty!29841 t!4677)))))

(declare-fun res!2073989 () Bool)

(assert (=> start!507626 (=> (not res!2073989) (not e!3037305))))

(declare-fun isBalanced!3940 (Conc!14534) Bool)

(assert (=> start!507626 (= res!2073989 (isBalanced!3940 t!4677))))

(assert (=> start!507626 e!3037305))

(declare-fun inv!71608 (Conc!14534) Bool)

(assert (=> start!507626 (and (inv!71608 t!4677) e!3037304)))

(declare-fun b!4858340 () Bool)

(assert (=> b!4858340 (= e!3037307 e!3037303)))

(declare-fun res!2073991 () Bool)

(assert (=> b!4858340 (=> (not res!2073991) (not e!3037303))))

(assert (=> b!4858340 (= res!2073991 (not lt!1991780))))

(declare-fun b!4858341 () Bool)

(assert (=> b!4858341 (= e!3037308 (= (last!405 (++!12139 lt!1991781 lt!1991778)) (last!405 lt!1991781)))))

(declare-fun tp!1366689 () Bool)

(declare-fun b!4858342 () Bool)

(declare-fun tp!1366691 () Bool)

(assert (=> b!4858342 (= e!3037304 (and (inv!71608 (left!40521 t!4677)) tp!1366691 (inv!71608 (right!40851 t!4677)) tp!1366689))))

(declare-fun b!4858343 () Bool)

(declare-fun res!2073988 () Bool)

(assert (=> b!4858343 (=> (not res!2073988) (not e!3037305))))

(get-info :version)

(assert (=> b!4858343 (= res!2073988 (and (not ((_ is Leaf!24216) t!4677)) ((_ is Node!14534) t!4677)))))

(assert (= (and start!507626 res!2073989) b!4858339))

(assert (= (and b!4858339 res!2073993) b!4858343))

(assert (= (and b!4858343 res!2073988) b!4858338))

(assert (= (and b!4858338 res!2073990) b!4858341))

(assert (= (and b!4858338 (not res!2073992)) b!4858340))

(assert (= (and b!4858340 res!2073991) b!4858336))

(assert (= (and start!507626 ((_ is Node!14534) t!4677)) b!4858342))

(assert (= b!4858335 b!4858337))

(assert (= (and start!507626 ((_ is Leaf!24216) t!4677)) b!4858335))

(declare-fun m!5856388 () Bool)

(assert (=> b!4858342 m!5856388))

(declare-fun m!5856390 () Bool)

(assert (=> b!4858342 m!5856390))

(declare-fun m!5856392 () Bool)

(assert (=> b!4858341 m!5856392))

(assert (=> b!4858341 m!5856392))

(declare-fun m!5856394 () Bool)

(assert (=> b!4858341 m!5856394))

(declare-fun m!5856396 () Bool)

(assert (=> b!4858341 m!5856396))

(assert (=> b!4858336 m!5856392))

(assert (=> b!4858336 m!5856392))

(assert (=> b!4858336 m!5856394))

(declare-fun m!5856398 () Bool)

(assert (=> b!4858336 m!5856398))

(declare-fun m!5856400 () Bool)

(assert (=> b!4858339 m!5856400))

(declare-fun m!5856402 () Bool)

(assert (=> b!4858335 m!5856402))

(declare-fun m!5856404 () Bool)

(assert (=> b!4858338 m!5856404))

(declare-fun m!5856406 () Bool)

(assert (=> b!4858338 m!5856406))

(declare-fun m!5856408 () Bool)

(assert (=> b!4858338 m!5856408))

(declare-fun m!5856410 () Bool)

(assert (=> b!4858338 m!5856410))

(assert (=> b!4858338 m!5856408))

(declare-fun m!5856412 () Bool)

(assert (=> b!4858338 m!5856412))

(declare-fun m!5856414 () Bool)

(assert (=> b!4858338 m!5856414))

(declare-fun m!5856416 () Bool)

(assert (=> b!4858338 m!5856416))

(declare-fun m!5856418 () Bool)

(assert (=> start!507626 m!5856418))

(declare-fun m!5856420 () Bool)

(assert (=> start!507626 m!5856420))

(check-sat (not b!4858335) (not b!4858342) (not start!507626) (not b!4858338) (not b!4858337) (not b!4858339) (not b!4858341) (not b!4858336))
(check-sat)
(get-model)

(declare-fun d!1559464 () Bool)

(declare-fun size!36736 (List!55878) Int)

(assert (=> d!1559464 (= (inv!71607 (xs!17840 t!4677)) (<= (size!36736 (innerList!14622 (xs!17840 t!4677))) 2147483647))))

(declare-fun bs!1173812 () Bool)

(assert (= bs!1173812 d!1559464))

(declare-fun m!5856422 () Bool)

(assert (=> bs!1173812 m!5856422))

(assert (=> b!4858335 d!1559464))

(declare-fun d!1559466 () Bool)

(declare-fun res!2074025 () Bool)

(declare-fun e!3037319 () Bool)

(assert (=> d!1559466 (=> res!2074025 e!3037319)))

(assert (=> d!1559466 (= res!2074025 (not ((_ is Node!14534) t!4677)))))

(assert (=> d!1559466 (= (isBalanced!3940 t!4677) e!3037319)))

(declare-fun b!4858374 () Bool)

(declare-fun res!2074028 () Bool)

(declare-fun e!3037320 () Bool)

(assert (=> b!4858374 (=> (not res!2074028) (not e!3037320))))

(assert (=> b!4858374 (= res!2074028 (not (isEmpty!29841 (left!40521 t!4677))))))

(declare-fun b!4858375 () Bool)

(declare-fun res!2074026 () Bool)

(assert (=> b!4858375 (=> (not res!2074026) (not e!3037320))))

(declare-fun height!1913 (Conc!14534) Int)

(assert (=> b!4858375 (= res!2074026 (<= (- (height!1913 (left!40521 t!4677)) (height!1913 (right!40851 t!4677))) 1))))

(declare-fun b!4858376 () Bool)

(declare-fun res!2074027 () Bool)

(assert (=> b!4858376 (=> (not res!2074027) (not e!3037320))))

(assert (=> b!4858376 (= res!2074027 (isBalanced!3940 (right!40851 t!4677)))))

(declare-fun b!4858377 () Bool)

(declare-fun res!2074024 () Bool)

(assert (=> b!4858377 (=> (not res!2074024) (not e!3037320))))

(assert (=> b!4858377 (= res!2074024 (isBalanced!3940 (left!40521 t!4677)))))

(declare-fun b!4858378 () Bool)

(assert (=> b!4858378 (= e!3037319 e!3037320)))

(declare-fun res!2074029 () Bool)

(assert (=> b!4858378 (=> (not res!2074029) (not e!3037320))))

(assert (=> b!4858378 (= res!2074029 (<= (- 1) (- (height!1913 (left!40521 t!4677)) (height!1913 (right!40851 t!4677)))))))

(declare-fun b!4858379 () Bool)

(assert (=> b!4858379 (= e!3037320 (not (isEmpty!29841 (right!40851 t!4677))))))

(assert (= (and d!1559466 (not res!2074025)) b!4858378))

(assert (= (and b!4858378 res!2074029) b!4858375))

(assert (= (and b!4858375 res!2074026) b!4858377))

(assert (= (and b!4858377 res!2074024) b!4858376))

(assert (= (and b!4858376 res!2074027) b!4858374))

(assert (= (and b!4858374 res!2074028) b!4858379))

(declare-fun m!5856436 () Bool)

(assert (=> b!4858374 m!5856436))

(declare-fun m!5856438 () Bool)

(assert (=> b!4858378 m!5856438))

(declare-fun m!5856440 () Bool)

(assert (=> b!4858378 m!5856440))

(declare-fun m!5856442 () Bool)

(assert (=> b!4858377 m!5856442))

(assert (=> b!4858375 m!5856438))

(assert (=> b!4858375 m!5856440))

(declare-fun m!5856444 () Bool)

(assert (=> b!4858376 m!5856444))

(declare-fun m!5856446 () Bool)

(assert (=> b!4858379 m!5856446))

(assert (=> start!507626 d!1559466))

(declare-fun d!1559470 () Bool)

(declare-fun c!826499 () Bool)

(assert (=> d!1559470 (= c!826499 ((_ is Node!14534) t!4677))))

(declare-fun e!3037331 () Bool)

(assert (=> d!1559470 (= (inv!71608 t!4677) e!3037331)))

(declare-fun b!4858395 () Bool)

(declare-fun inv!71611 (Conc!14534) Bool)

(assert (=> b!4858395 (= e!3037331 (inv!71611 t!4677))))

(declare-fun b!4858396 () Bool)

(declare-fun e!3037332 () Bool)

(assert (=> b!4858396 (= e!3037331 e!3037332)))

(declare-fun res!2074035 () Bool)

(assert (=> b!4858396 (= res!2074035 (not ((_ is Leaf!24216) t!4677)))))

(assert (=> b!4858396 (=> res!2074035 e!3037332)))

(declare-fun b!4858397 () Bool)

(declare-fun inv!71612 (Conc!14534) Bool)

(assert (=> b!4858397 (= e!3037332 (inv!71612 t!4677))))

(assert (= (and d!1559470 c!826499) b!4858395))

(assert (= (and d!1559470 (not c!826499)) b!4858396))

(assert (= (and b!4858396 (not res!2074035)) b!4858397))

(declare-fun m!5856456 () Bool)

(assert (=> b!4858395 m!5856456))

(declare-fun m!5856458 () Bool)

(assert (=> b!4858397 m!5856458))

(assert (=> start!507626 d!1559470))

(declare-fun d!1559476 () Bool)

(declare-fun lt!1991787 () Bool)

(assert (=> d!1559476 (= lt!1991787 (isEmpty!29840 (list!17428 t!4677)))))

(declare-fun size!36738 (Conc!14534) Int)

(assert (=> d!1559476 (= lt!1991787 (= (size!36738 t!4677) 0))))

(assert (=> d!1559476 (= (isEmpty!29841 t!4677) lt!1991787)))

(declare-fun bs!1173815 () Bool)

(assert (= bs!1173815 d!1559476))

(assert (=> bs!1173815 m!5856408))

(assert (=> bs!1173815 m!5856408))

(declare-fun m!5856470 () Bool)

(assert (=> bs!1173815 m!5856470))

(declare-fun m!5856472 () Bool)

(assert (=> bs!1173815 m!5856472))

(assert (=> b!4858339 d!1559476))

(declare-fun b!4858434 () Bool)

(declare-fun e!3037357 () Bool)

(declare-fun lt!1991809 () List!55878)

(declare-fun lt!1991806 () List!55878)

(assert (=> b!4858434 (= e!3037357 (= (last!405 (++!12139 lt!1991809 lt!1991806)) (last!405 lt!1991806)))))

(declare-fun b!4858435 () Bool)

(declare-fun e!3037356 () T!98672)

(assert (=> b!4858435 (= e!3037356 (last!406 (right!40851 (right!40851 t!4677))))))

(assert (=> b!4858435 (= lt!1991809 (list!17428 (left!40521 (right!40851 t!4677))))))

(assert (=> b!4858435 (= lt!1991806 (list!17428 (right!40851 (right!40851 t!4677))))))

(declare-fun lt!1991807 () Unit!145859)

(assert (=> b!4858435 (= lt!1991807 (lemmaLastOfConcatIsLastOfRhs!36 lt!1991809 lt!1991806))))

(declare-fun res!2074050 () Bool)

(assert (=> b!4858435 (= res!2074050 (isEmpty!29840 lt!1991806))))

(declare-fun e!3037358 () Bool)

(assert (=> b!4858435 (=> (not res!2074050) (not e!3037358))))

(declare-fun res!2074051 () Bool)

(assert (=> b!4858435 (= res!2074051 e!3037358)))

(declare-fun e!3037355 () Bool)

(assert (=> b!4858435 (=> res!2074051 e!3037355)))

(assert (=> b!4858435 e!3037355))

(declare-fun lt!1991805 () Unit!145859)

(assert (=> b!4858435 (= lt!1991805 lt!1991807)))

(declare-fun b!4858436 () Bool)

(assert (=> b!4858436 (= e!3037358 (= (last!405 (++!12139 lt!1991809 lt!1991806)) (last!405 lt!1991809)))))

(declare-fun b!4858437 () Bool)

(declare-fun last!407 (IArray!29129) T!98672)

(assert (=> b!4858437 (= e!3037356 (last!407 (xs!17840 (right!40851 t!4677))))))

(declare-fun d!1559484 () Bool)

(declare-fun lt!1991808 () T!98672)

(assert (=> d!1559484 (= lt!1991808 (last!405 (list!17428 (right!40851 t!4677))))))

(assert (=> d!1559484 (= lt!1991808 e!3037356)))

(declare-fun c!826511 () Bool)

(assert (=> d!1559484 (= c!826511 ((_ is Leaf!24216) (right!40851 t!4677)))))

(assert (=> d!1559484 (isBalanced!3940 (right!40851 t!4677))))

(assert (=> d!1559484 (= (last!406 (right!40851 t!4677)) lt!1991808)))

(declare-fun b!4858438 () Bool)

(declare-fun res!2074052 () Bool)

(assert (=> b!4858438 (= res!2074052 (not (isEmpty!29840 lt!1991806)))))

(assert (=> b!4858438 (=> (not res!2074052) (not e!3037357))))

(assert (=> b!4858438 (= e!3037355 e!3037357)))

(assert (= (and d!1559484 c!826511) b!4858437))

(assert (= (and d!1559484 (not c!826511)) b!4858435))

(assert (= (and b!4858435 res!2074050) b!4858436))

(assert (= (and b!4858435 (not res!2074051)) b!4858438))

(assert (= (and b!4858438 res!2074052) b!4858434))

(declare-fun m!5856500 () Bool)

(assert (=> b!4858438 m!5856500))

(assert (=> d!1559484 m!5856412))

(assert (=> d!1559484 m!5856412))

(declare-fun m!5856502 () Bool)

(assert (=> d!1559484 m!5856502))

(assert (=> d!1559484 m!5856444))

(declare-fun m!5856504 () Bool)

(assert (=> b!4858436 m!5856504))

(assert (=> b!4858436 m!5856504))

(declare-fun m!5856506 () Bool)

(assert (=> b!4858436 m!5856506))

(declare-fun m!5856508 () Bool)

(assert (=> b!4858436 m!5856508))

(assert (=> b!4858434 m!5856504))

(assert (=> b!4858434 m!5856504))

(assert (=> b!4858434 m!5856506))

(declare-fun m!5856510 () Bool)

(assert (=> b!4858434 m!5856510))

(declare-fun m!5856512 () Bool)

(assert (=> b!4858435 m!5856512))

(declare-fun m!5856514 () Bool)

(assert (=> b!4858435 m!5856514))

(assert (=> b!4858435 m!5856500))

(declare-fun m!5856516 () Bool)

(assert (=> b!4858435 m!5856516))

(declare-fun m!5856518 () Bool)

(assert (=> b!4858435 m!5856518))

(declare-fun m!5856520 () Bool)

(assert (=> b!4858437 m!5856520))

(assert (=> b!4858338 d!1559484))

(declare-fun d!1559492 () Bool)

(declare-fun lt!1991812 () T!98672)

(declare-fun contains!19367 (List!55878 T!98672) Bool)

(assert (=> d!1559492 (contains!19367 (list!17428 t!4677) lt!1991812)))

(declare-fun e!3037361 () T!98672)

(assert (=> d!1559492 (= lt!1991812 e!3037361)))

(declare-fun c!826514 () Bool)

(assert (=> d!1559492 (= c!826514 (and ((_ is Cons!55754) (list!17428 t!4677)) ((_ is Nil!55754) (t!363476 (list!17428 t!4677)))))))

(assert (=> d!1559492 (not (isEmpty!29840 (list!17428 t!4677)))))

(assert (=> d!1559492 (= (last!405 (list!17428 t!4677)) lt!1991812)))

(declare-fun b!4858443 () Bool)

(assert (=> b!4858443 (= e!3037361 (h!62202 (list!17428 t!4677)))))

(declare-fun b!4858444 () Bool)

(assert (=> b!4858444 (= e!3037361 (last!405 (t!363476 (list!17428 t!4677))))))

(assert (= (and d!1559492 c!826514) b!4858443))

(assert (= (and d!1559492 (not c!826514)) b!4858444))

(assert (=> d!1559492 m!5856408))

(declare-fun m!5856522 () Bool)

(assert (=> d!1559492 m!5856522))

(assert (=> d!1559492 m!5856408))

(assert (=> d!1559492 m!5856470))

(declare-fun m!5856524 () Bool)

(assert (=> b!4858444 m!5856524))

(assert (=> b!4858338 d!1559492))

(declare-fun d!1559494 () Bool)

(declare-fun e!3037380 () Bool)

(assert (=> d!1559494 e!3037380))

(declare-fun res!2074069 () Bool)

(assert (=> d!1559494 (=> res!2074069 e!3037380)))

(declare-fun e!3037381 () Bool)

(assert (=> d!1559494 (= res!2074069 e!3037381)))

(declare-fun res!2074070 () Bool)

(assert (=> d!1559494 (=> (not res!2074070) (not e!3037381))))

(assert (=> d!1559494 (= res!2074070 (isEmpty!29840 lt!1991778))))

(declare-fun lt!1991830 () Unit!145859)

(declare-fun choose!35563 (List!55878 List!55878) Unit!145859)

(assert (=> d!1559494 (= lt!1991830 (choose!35563 lt!1991781 lt!1991778))))

(assert (=> d!1559494 (not (isEmpty!29840 (++!12139 lt!1991781 lt!1991778)))))

(assert (=> d!1559494 (= (lemmaLastOfConcatIsLastOfRhs!36 lt!1991781 lt!1991778) lt!1991830)))

(declare-fun b!4858466 () Bool)

(assert (=> b!4858466 (= e!3037381 (= (last!405 (++!12139 lt!1991781 lt!1991778)) (last!405 lt!1991781)))))

(declare-fun b!4858467 () Bool)

(declare-fun e!3037382 () Bool)

(assert (=> b!4858467 (= e!3037380 e!3037382)))

(declare-fun res!2074068 () Bool)

(assert (=> b!4858467 (=> (not res!2074068) (not e!3037382))))

(assert (=> b!4858467 (= res!2074068 (not (isEmpty!29840 lt!1991778)))))

(declare-fun b!4858468 () Bool)

(assert (=> b!4858468 (= e!3037382 (= (last!405 (++!12139 lt!1991781 lt!1991778)) (last!405 lt!1991778)))))

(assert (= (and d!1559494 res!2074070) b!4858466))

(assert (= (and d!1559494 (not res!2074069)) b!4858467))

(assert (= (and b!4858467 res!2074068) b!4858468))

(assert (=> d!1559494 m!5856416))

(declare-fun m!5856548 () Bool)

(assert (=> d!1559494 m!5856548))

(assert (=> d!1559494 m!5856392))

(assert (=> d!1559494 m!5856392))

(declare-fun m!5856550 () Bool)

(assert (=> d!1559494 m!5856550))

(assert (=> b!4858466 m!5856392))

(assert (=> b!4858466 m!5856392))

(assert (=> b!4858466 m!5856394))

(assert (=> b!4858466 m!5856396))

(assert (=> b!4858467 m!5856416))

(assert (=> b!4858468 m!5856392))

(assert (=> b!4858468 m!5856392))

(assert (=> b!4858468 m!5856394))

(assert (=> b!4858468 m!5856398))

(assert (=> b!4858338 d!1559494))

(declare-fun b!4858487 () Bool)

(declare-fun e!3037396 () List!55878)

(declare-fun e!3037397 () List!55878)

(assert (=> b!4858487 (= e!3037396 e!3037397)))

(declare-fun c!826523 () Bool)

(assert (=> b!4858487 (= c!826523 ((_ is Leaf!24216) (right!40851 t!4677)))))

(declare-fun d!1559498 () Bool)

(declare-fun c!826522 () Bool)

(assert (=> d!1559498 (= c!826522 ((_ is Empty!14534) (right!40851 t!4677)))))

(assert (=> d!1559498 (= (list!17428 (right!40851 t!4677)) e!3037396)))

(declare-fun b!4858486 () Bool)

(assert (=> b!4858486 (= e!3037396 Nil!55754)))

(declare-fun b!4858488 () Bool)

(declare-fun list!17429 (IArray!29129) List!55878)

(assert (=> b!4858488 (= e!3037397 (list!17429 (xs!17840 (right!40851 t!4677))))))

(declare-fun b!4858489 () Bool)

(assert (=> b!4858489 (= e!3037397 (++!12139 (list!17428 (left!40521 (right!40851 t!4677))) (list!17428 (right!40851 (right!40851 t!4677)))))))

(assert (= (and d!1559498 c!826522) b!4858486))

(assert (= (and d!1559498 (not c!826522)) b!4858487))

(assert (= (and b!4858487 c!826523) b!4858488))

(assert (= (and b!4858487 (not c!826523)) b!4858489))

(declare-fun m!5856554 () Bool)

(assert (=> b!4858488 m!5856554))

(assert (=> b!4858489 m!5856518))

(assert (=> b!4858489 m!5856512))

(assert (=> b!4858489 m!5856518))

(assert (=> b!4858489 m!5856512))

(declare-fun m!5856556 () Bool)

(assert (=> b!4858489 m!5856556))

(assert (=> b!4858338 d!1559498))

(declare-fun b!4858493 () Bool)

(declare-fun e!3037399 () List!55878)

(declare-fun e!3037400 () List!55878)

(assert (=> b!4858493 (= e!3037399 e!3037400)))

(declare-fun c!826526 () Bool)

(assert (=> b!4858493 (= c!826526 ((_ is Leaf!24216) (left!40521 t!4677)))))

(declare-fun d!1559504 () Bool)

(declare-fun c!826525 () Bool)

(assert (=> d!1559504 (= c!826525 ((_ is Empty!14534) (left!40521 t!4677)))))

(assert (=> d!1559504 (= (list!17428 (left!40521 t!4677)) e!3037399)))

(declare-fun b!4858492 () Bool)

(assert (=> b!4858492 (= e!3037399 Nil!55754)))

(declare-fun b!4858494 () Bool)

(assert (=> b!4858494 (= e!3037400 (list!17429 (xs!17840 (left!40521 t!4677))))))

(declare-fun b!4858495 () Bool)

(assert (=> b!4858495 (= e!3037400 (++!12139 (list!17428 (left!40521 (left!40521 t!4677))) (list!17428 (right!40851 (left!40521 t!4677)))))))

(assert (= (and d!1559504 c!826525) b!4858492))

(assert (= (and d!1559504 (not c!826525)) b!4858493))

(assert (= (and b!4858493 c!826526) b!4858494))

(assert (= (and b!4858493 (not c!826526)) b!4858495))

(declare-fun m!5856562 () Bool)

(assert (=> b!4858494 m!5856562))

(declare-fun m!5856564 () Bool)

(assert (=> b!4858495 m!5856564))

(declare-fun m!5856566 () Bool)

(assert (=> b!4858495 m!5856566))

(assert (=> b!4858495 m!5856564))

(assert (=> b!4858495 m!5856566))

(declare-fun m!5856568 () Bool)

(assert (=> b!4858495 m!5856568))

(assert (=> b!4858338 d!1559504))

(declare-fun d!1559508 () Bool)

(assert (=> d!1559508 (= (isEmpty!29840 lt!1991778) ((_ is Nil!55754) lt!1991778))))

(assert (=> b!4858338 d!1559508))

(declare-fun b!4858497 () Bool)

(declare-fun e!3037401 () List!55878)

(declare-fun e!3037402 () List!55878)

(assert (=> b!4858497 (= e!3037401 e!3037402)))

(declare-fun c!826528 () Bool)

(assert (=> b!4858497 (= c!826528 ((_ is Leaf!24216) t!4677))))

(declare-fun d!1559510 () Bool)

(declare-fun c!826527 () Bool)

(assert (=> d!1559510 (= c!826527 ((_ is Empty!14534) t!4677))))

(assert (=> d!1559510 (= (list!17428 t!4677) e!3037401)))

(declare-fun b!4858496 () Bool)

(assert (=> b!4858496 (= e!3037401 Nil!55754)))

(declare-fun b!4858498 () Bool)

(assert (=> b!4858498 (= e!3037402 (list!17429 (xs!17840 t!4677)))))

(declare-fun b!4858499 () Bool)

(assert (=> b!4858499 (= e!3037402 (++!12139 (list!17428 (left!40521 t!4677)) (list!17428 (right!40851 t!4677))))))

(assert (= (and d!1559510 c!826527) b!4858496))

(assert (= (and d!1559510 (not c!826527)) b!4858497))

(assert (= (and b!4858497 c!826528) b!4858498))

(assert (= (and b!4858497 (not c!826528)) b!4858499))

(declare-fun m!5856570 () Bool)

(assert (=> b!4858498 m!5856570))

(assert (=> b!4858499 m!5856406))

(assert (=> b!4858499 m!5856412))

(assert (=> b!4858499 m!5856406))

(assert (=> b!4858499 m!5856412))

(declare-fun m!5856572 () Bool)

(assert (=> b!4858499 m!5856572))

(assert (=> b!4858338 d!1559510))

(declare-fun d!1559512 () Bool)

(declare-fun c!826533 () Bool)

(assert (=> d!1559512 (= c!826533 ((_ is Node!14534) (left!40521 t!4677)))))

(declare-fun e!3037407 () Bool)

(assert (=> d!1559512 (= (inv!71608 (left!40521 t!4677)) e!3037407)))

(declare-fun b!4858508 () Bool)

(assert (=> b!4858508 (= e!3037407 (inv!71611 (left!40521 t!4677)))))

(declare-fun b!4858509 () Bool)

(declare-fun e!3037408 () Bool)

(assert (=> b!4858509 (= e!3037407 e!3037408)))

(declare-fun res!2074080 () Bool)

(assert (=> b!4858509 (= res!2074080 (not ((_ is Leaf!24216) (left!40521 t!4677))))))

(assert (=> b!4858509 (=> res!2074080 e!3037408)))

(declare-fun b!4858510 () Bool)

(assert (=> b!4858510 (= e!3037408 (inv!71612 (left!40521 t!4677)))))

(assert (= (and d!1559512 c!826533) b!4858508))

(assert (= (and d!1559512 (not c!826533)) b!4858509))

(assert (= (and b!4858509 (not res!2074080)) b!4858510))

(declare-fun m!5856574 () Bool)

(assert (=> b!4858508 m!5856574))

(declare-fun m!5856576 () Bool)

(assert (=> b!4858510 m!5856576))

(assert (=> b!4858342 d!1559512))

(declare-fun d!1559514 () Bool)

(declare-fun c!826534 () Bool)

(assert (=> d!1559514 (= c!826534 ((_ is Node!14534) (right!40851 t!4677)))))

(declare-fun e!3037409 () Bool)

(assert (=> d!1559514 (= (inv!71608 (right!40851 t!4677)) e!3037409)))

(declare-fun b!4858511 () Bool)

(assert (=> b!4858511 (= e!3037409 (inv!71611 (right!40851 t!4677)))))

(declare-fun b!4858512 () Bool)

(declare-fun e!3037410 () Bool)

(assert (=> b!4858512 (= e!3037409 e!3037410)))

(declare-fun res!2074081 () Bool)

(assert (=> b!4858512 (= res!2074081 (not ((_ is Leaf!24216) (right!40851 t!4677))))))

(assert (=> b!4858512 (=> res!2074081 e!3037410)))

(declare-fun b!4858513 () Bool)

(assert (=> b!4858513 (= e!3037410 (inv!71612 (right!40851 t!4677)))))

(assert (= (and d!1559514 c!826534) b!4858511))

(assert (= (and d!1559514 (not c!826534)) b!4858512))

(assert (= (and b!4858512 (not res!2074081)) b!4858513))

(declare-fun m!5856578 () Bool)

(assert (=> b!4858511 m!5856578))

(declare-fun m!5856580 () Bool)

(assert (=> b!4858513 m!5856580))

(assert (=> b!4858342 d!1559514))

(declare-fun d!1559516 () Bool)

(declare-fun lt!1991835 () T!98672)

(assert (=> d!1559516 (contains!19367 (++!12139 lt!1991781 lt!1991778) lt!1991835)))

(declare-fun e!3037411 () T!98672)

(assert (=> d!1559516 (= lt!1991835 e!3037411)))

(declare-fun c!826535 () Bool)

(assert (=> d!1559516 (= c!826535 (and ((_ is Cons!55754) (++!12139 lt!1991781 lt!1991778)) ((_ is Nil!55754) (t!363476 (++!12139 lt!1991781 lt!1991778)))))))

(assert (=> d!1559516 (not (isEmpty!29840 (++!12139 lt!1991781 lt!1991778)))))

(assert (=> d!1559516 (= (last!405 (++!12139 lt!1991781 lt!1991778)) lt!1991835)))

(declare-fun b!4858514 () Bool)

(assert (=> b!4858514 (= e!3037411 (h!62202 (++!12139 lt!1991781 lt!1991778)))))

(declare-fun b!4858515 () Bool)

(assert (=> b!4858515 (= e!3037411 (last!405 (t!363476 (++!12139 lt!1991781 lt!1991778))))))

(assert (= (and d!1559516 c!826535) b!4858514))

(assert (= (and d!1559516 (not c!826535)) b!4858515))

(assert (=> d!1559516 m!5856392))

(declare-fun m!5856582 () Bool)

(assert (=> d!1559516 m!5856582))

(assert (=> d!1559516 m!5856392))

(assert (=> d!1559516 m!5856550))

(declare-fun m!5856584 () Bool)

(assert (=> b!4858515 m!5856584))

(assert (=> b!4858341 d!1559516))

(declare-fun b!4858557 () Bool)

(declare-fun e!3037434 () List!55878)

(assert (=> b!4858557 (= e!3037434 lt!1991778)))

(declare-fun b!4858558 () Bool)

(assert (=> b!4858558 (= e!3037434 (Cons!55754 (h!62202 lt!1991781) (++!12139 (t!363476 lt!1991781) lt!1991778)))))

(declare-fun b!4858559 () Bool)

(declare-fun res!2074087 () Bool)

(declare-fun e!3037435 () Bool)

(assert (=> b!4858559 (=> (not res!2074087) (not e!3037435))))

(declare-fun lt!1991839 () List!55878)

(assert (=> b!4858559 (= res!2074087 (= (size!36736 lt!1991839) (+ (size!36736 lt!1991781) (size!36736 lt!1991778))))))

(declare-fun b!4858560 () Bool)

(assert (=> b!4858560 (= e!3037435 (or (not (= lt!1991778 Nil!55754)) (= lt!1991839 lt!1991781)))))

(declare-fun d!1559518 () Bool)

(assert (=> d!1559518 e!3037435))

(declare-fun res!2074086 () Bool)

(assert (=> d!1559518 (=> (not res!2074086) (not e!3037435))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9939 (List!55878) (InoxSet T!98672))

(assert (=> d!1559518 (= res!2074086 (= (content!9939 lt!1991839) ((_ map or) (content!9939 lt!1991781) (content!9939 lt!1991778))))))

(assert (=> d!1559518 (= lt!1991839 e!3037434)))

(declare-fun c!826545 () Bool)

(assert (=> d!1559518 (= c!826545 ((_ is Nil!55754) lt!1991781))))

(assert (=> d!1559518 (= (++!12139 lt!1991781 lt!1991778) lt!1991839)))

(assert (= (and d!1559518 c!826545) b!4858557))

(assert (= (and d!1559518 (not c!826545)) b!4858558))

(assert (= (and d!1559518 res!2074086) b!4858559))

(assert (= (and b!4858559 res!2074087) b!4858560))

(declare-fun m!5856618 () Bool)

(assert (=> b!4858558 m!5856618))

(declare-fun m!5856620 () Bool)

(assert (=> b!4858559 m!5856620))

(declare-fun m!5856622 () Bool)

(assert (=> b!4858559 m!5856622))

(declare-fun m!5856624 () Bool)

(assert (=> b!4858559 m!5856624))

(declare-fun m!5856626 () Bool)

(assert (=> d!1559518 m!5856626))

(declare-fun m!5856628 () Bool)

(assert (=> d!1559518 m!5856628))

(declare-fun m!5856630 () Bool)

(assert (=> d!1559518 m!5856630))

(assert (=> b!4858341 d!1559518))

(declare-fun d!1559526 () Bool)

(declare-fun lt!1991840 () T!98672)

(assert (=> d!1559526 (contains!19367 lt!1991781 lt!1991840)))

(declare-fun e!3037436 () T!98672)

(assert (=> d!1559526 (= lt!1991840 e!3037436)))

(declare-fun c!826546 () Bool)

(assert (=> d!1559526 (= c!826546 (and ((_ is Cons!55754) lt!1991781) ((_ is Nil!55754) (t!363476 lt!1991781))))))

(assert (=> d!1559526 (not (isEmpty!29840 lt!1991781))))

(assert (=> d!1559526 (= (last!405 lt!1991781) lt!1991840)))

(declare-fun b!4858561 () Bool)

(assert (=> b!4858561 (= e!3037436 (h!62202 lt!1991781))))

(declare-fun b!4858562 () Bool)

(assert (=> b!4858562 (= e!3037436 (last!405 (t!363476 lt!1991781)))))

(assert (= (and d!1559526 c!826546) b!4858561))

(assert (= (and d!1559526 (not c!826546)) b!4858562))

(declare-fun m!5856632 () Bool)

(assert (=> d!1559526 m!5856632))

(declare-fun m!5856634 () Bool)

(assert (=> d!1559526 m!5856634))

(declare-fun m!5856636 () Bool)

(assert (=> b!4858562 m!5856636))

(assert (=> b!4858341 d!1559526))

(assert (=> b!4858336 d!1559516))

(assert (=> b!4858336 d!1559518))

(declare-fun d!1559528 () Bool)

(declare-fun lt!1991841 () T!98672)

(assert (=> d!1559528 (contains!19367 lt!1991778 lt!1991841)))

(declare-fun e!3037437 () T!98672)

(assert (=> d!1559528 (= lt!1991841 e!3037437)))

(declare-fun c!826547 () Bool)

(assert (=> d!1559528 (= c!826547 (and ((_ is Cons!55754) lt!1991778) ((_ is Nil!55754) (t!363476 lt!1991778))))))

(assert (=> d!1559528 (not (isEmpty!29840 lt!1991778))))

(assert (=> d!1559528 (= (last!405 lt!1991778) lt!1991841)))

(declare-fun b!4858563 () Bool)

(assert (=> b!4858563 (= e!3037437 (h!62202 lt!1991778))))

(declare-fun b!4858564 () Bool)

(assert (=> b!4858564 (= e!3037437 (last!405 (t!363476 lt!1991778)))))

(assert (= (and d!1559528 c!826547) b!4858563))

(assert (= (and d!1559528 (not c!826547)) b!4858564))

(declare-fun m!5856638 () Bool)

(assert (=> d!1559528 m!5856638))

(assert (=> d!1559528 m!5856416))

(declare-fun m!5856640 () Bool)

(assert (=> b!4858564 m!5856640))

(assert (=> b!4858336 d!1559528))

(declare-fun b!4858569 () Bool)

(declare-fun e!3037440 () Bool)

(declare-fun tp_is_empty!35527 () Bool)

(declare-fun tp!1366709 () Bool)

(assert (=> b!4858569 (= e!3037440 (and tp_is_empty!35527 tp!1366709))))

(assert (=> b!4858337 (= tp!1366690 e!3037440)))

(assert (= (and b!4858337 ((_ is Cons!55754) (innerList!14622 (xs!17840 t!4677)))) b!4858569))

(declare-fun tp!1366718 () Bool)

(declare-fun tp!1366717 () Bool)

(declare-fun b!4858578 () Bool)

(declare-fun e!3037446 () Bool)

(assert (=> b!4858578 (= e!3037446 (and (inv!71608 (left!40521 (left!40521 t!4677))) tp!1366718 (inv!71608 (right!40851 (left!40521 t!4677))) tp!1366717))))

(declare-fun b!4858580 () Bool)

(declare-fun e!3037445 () Bool)

(declare-fun tp!1366716 () Bool)

(assert (=> b!4858580 (= e!3037445 tp!1366716)))

(declare-fun b!4858579 () Bool)

(assert (=> b!4858579 (= e!3037446 (and (inv!71607 (xs!17840 (left!40521 t!4677))) e!3037445))))

(assert (=> b!4858342 (= tp!1366691 (and (inv!71608 (left!40521 t!4677)) e!3037446))))

(assert (= (and b!4858342 ((_ is Node!14534) (left!40521 t!4677))) b!4858578))

(assert (= b!4858579 b!4858580))

(assert (= (and b!4858342 ((_ is Leaf!24216) (left!40521 t!4677))) b!4858579))

(declare-fun m!5856642 () Bool)

(assert (=> b!4858578 m!5856642))

(declare-fun m!5856644 () Bool)

(assert (=> b!4858578 m!5856644))

(declare-fun m!5856646 () Bool)

(assert (=> b!4858579 m!5856646))

(assert (=> b!4858342 m!5856388))

(declare-fun tp!1366720 () Bool)

(declare-fun b!4858581 () Bool)

(declare-fun tp!1366721 () Bool)

(declare-fun e!3037448 () Bool)

(assert (=> b!4858581 (= e!3037448 (and (inv!71608 (left!40521 (right!40851 t!4677))) tp!1366721 (inv!71608 (right!40851 (right!40851 t!4677))) tp!1366720))))

(declare-fun b!4858583 () Bool)

(declare-fun e!3037447 () Bool)

(declare-fun tp!1366719 () Bool)

(assert (=> b!4858583 (= e!3037447 tp!1366719)))

(declare-fun b!4858582 () Bool)

(assert (=> b!4858582 (= e!3037448 (and (inv!71607 (xs!17840 (right!40851 t!4677))) e!3037447))))

(assert (=> b!4858342 (= tp!1366689 (and (inv!71608 (right!40851 t!4677)) e!3037448))))

(assert (= (and b!4858342 ((_ is Node!14534) (right!40851 t!4677))) b!4858581))

(assert (= b!4858582 b!4858583))

(assert (= (and b!4858342 ((_ is Leaf!24216) (right!40851 t!4677))) b!4858582))

(declare-fun m!5856648 () Bool)

(assert (=> b!4858581 m!5856648))

(declare-fun m!5856650 () Bool)

(assert (=> b!4858581 m!5856650))

(declare-fun m!5856652 () Bool)

(assert (=> b!4858582 m!5856652))

(assert (=> b!4858342 m!5856390))

(check-sat tp_is_empty!35527 (not d!1559464) (not b!4858499) (not b!4858488) (not b!4858582) (not b!4858395) (not b!4858468) (not b!4858466) (not d!1559516) (not b!4858564) (not b!4858579) (not b!4858510) (not b!4858569) (not b!4858559) (not b!4858494) (not b!4858437) (not b!4858397) (not b!4858562) (not b!4858580) (not d!1559484) (not b!4858513) (not b!4858444) (not b!4858342) (not b!4858375) (not b!4858377) (not d!1559526) (not b!4858558) (not b!4858581) (not d!1559476) (not b!4858498) (not b!4858435) (not b!4858511) (not b!4858434) (not d!1559518) (not b!4858467) (not b!4858376) (not b!4858438) (not b!4858374) (not b!4858583) (not b!4858495) (not b!4858489) (not b!4858436) (not b!4858578) (not d!1559492) (not b!4858378) (not d!1559528) (not d!1559494) (not b!4858515) (not b!4858508) (not b!4858379))
(check-sat)
(get-model)

(declare-fun d!1559530 () Bool)

(declare-fun lt!1991842 () T!98672)

(assert (=> d!1559530 (contains!19367 (list!17428 (right!40851 t!4677)) lt!1991842)))

(declare-fun e!3037449 () T!98672)

(assert (=> d!1559530 (= lt!1991842 e!3037449)))

(declare-fun c!826548 () Bool)

(assert (=> d!1559530 (= c!826548 (and ((_ is Cons!55754) (list!17428 (right!40851 t!4677))) ((_ is Nil!55754) (t!363476 (list!17428 (right!40851 t!4677))))))))

(assert (=> d!1559530 (not (isEmpty!29840 (list!17428 (right!40851 t!4677))))))

(assert (=> d!1559530 (= (last!405 (list!17428 (right!40851 t!4677))) lt!1991842)))

(declare-fun b!4858584 () Bool)

(assert (=> b!4858584 (= e!3037449 (h!62202 (list!17428 (right!40851 t!4677))))))

(declare-fun b!4858585 () Bool)

(assert (=> b!4858585 (= e!3037449 (last!405 (t!363476 (list!17428 (right!40851 t!4677)))))))

(assert (= (and d!1559530 c!826548) b!4858584))

(assert (= (and d!1559530 (not c!826548)) b!4858585))

(assert (=> d!1559530 m!5856412))

(declare-fun m!5856654 () Bool)

(assert (=> d!1559530 m!5856654))

(assert (=> d!1559530 m!5856412))

(declare-fun m!5856656 () Bool)

(assert (=> d!1559530 m!5856656))

(declare-fun m!5856658 () Bool)

(assert (=> b!4858585 m!5856658))

(assert (=> d!1559484 d!1559530))

(assert (=> d!1559484 d!1559498))

(declare-fun d!1559532 () Bool)

(declare-fun res!2074089 () Bool)

(declare-fun e!3037450 () Bool)

(assert (=> d!1559532 (=> res!2074089 e!3037450)))

(assert (=> d!1559532 (= res!2074089 (not ((_ is Node!14534) (right!40851 t!4677))))))

(assert (=> d!1559532 (= (isBalanced!3940 (right!40851 t!4677)) e!3037450)))

(declare-fun b!4858586 () Bool)

(declare-fun res!2074092 () Bool)

(declare-fun e!3037451 () Bool)

(assert (=> b!4858586 (=> (not res!2074092) (not e!3037451))))

(assert (=> b!4858586 (= res!2074092 (not (isEmpty!29841 (left!40521 (right!40851 t!4677)))))))

(declare-fun b!4858587 () Bool)

(declare-fun res!2074090 () Bool)

(assert (=> b!4858587 (=> (not res!2074090) (not e!3037451))))

(assert (=> b!4858587 (= res!2074090 (<= (- (height!1913 (left!40521 (right!40851 t!4677))) (height!1913 (right!40851 (right!40851 t!4677)))) 1))))

(declare-fun b!4858588 () Bool)

(declare-fun res!2074091 () Bool)

(assert (=> b!4858588 (=> (not res!2074091) (not e!3037451))))

(assert (=> b!4858588 (= res!2074091 (isBalanced!3940 (right!40851 (right!40851 t!4677))))))

(declare-fun b!4858589 () Bool)

(declare-fun res!2074088 () Bool)

(assert (=> b!4858589 (=> (not res!2074088) (not e!3037451))))

(assert (=> b!4858589 (= res!2074088 (isBalanced!3940 (left!40521 (right!40851 t!4677))))))

(declare-fun b!4858590 () Bool)

(assert (=> b!4858590 (= e!3037450 e!3037451)))

(declare-fun res!2074093 () Bool)

(assert (=> b!4858590 (=> (not res!2074093) (not e!3037451))))

(assert (=> b!4858590 (= res!2074093 (<= (- 1) (- (height!1913 (left!40521 (right!40851 t!4677))) (height!1913 (right!40851 (right!40851 t!4677))))))))

(declare-fun b!4858591 () Bool)

(assert (=> b!4858591 (= e!3037451 (not (isEmpty!29841 (right!40851 (right!40851 t!4677)))))))

(assert (= (and d!1559532 (not res!2074089)) b!4858590))

(assert (= (and b!4858590 res!2074093) b!4858587))

(assert (= (and b!4858587 res!2074090) b!4858589))

(assert (= (and b!4858589 res!2074088) b!4858588))

(assert (= (and b!4858588 res!2074091) b!4858586))

(assert (= (and b!4858586 res!2074092) b!4858591))

(declare-fun m!5856660 () Bool)

(assert (=> b!4858586 m!5856660))

(declare-fun m!5856662 () Bool)

(assert (=> b!4858590 m!5856662))

(declare-fun m!5856664 () Bool)

(assert (=> b!4858590 m!5856664))

(declare-fun m!5856666 () Bool)

(assert (=> b!4858589 m!5856666))

(assert (=> b!4858587 m!5856662))

(assert (=> b!4858587 m!5856664))

(declare-fun m!5856668 () Bool)

(assert (=> b!4858588 m!5856668))

(declare-fun m!5856670 () Bool)

(assert (=> b!4858591 m!5856670))

(assert (=> d!1559484 d!1559532))

(declare-fun b!4858592 () Bool)

(declare-fun e!3037452 () List!55878)

(assert (=> b!4858592 (= e!3037452 (list!17428 (right!40851 (left!40521 t!4677))))))

(declare-fun b!4858593 () Bool)

(assert (=> b!4858593 (= e!3037452 (Cons!55754 (h!62202 (list!17428 (left!40521 (left!40521 t!4677)))) (++!12139 (t!363476 (list!17428 (left!40521 (left!40521 t!4677)))) (list!17428 (right!40851 (left!40521 t!4677))))))))

(declare-fun b!4858594 () Bool)

(declare-fun res!2074095 () Bool)

(declare-fun e!3037453 () Bool)

(assert (=> b!4858594 (=> (not res!2074095) (not e!3037453))))

(declare-fun lt!1991843 () List!55878)

(assert (=> b!4858594 (= res!2074095 (= (size!36736 lt!1991843) (+ (size!36736 (list!17428 (left!40521 (left!40521 t!4677)))) (size!36736 (list!17428 (right!40851 (left!40521 t!4677)))))))))

(declare-fun b!4858595 () Bool)

(assert (=> b!4858595 (= e!3037453 (or (not (= (list!17428 (right!40851 (left!40521 t!4677))) Nil!55754)) (= lt!1991843 (list!17428 (left!40521 (left!40521 t!4677))))))))

(declare-fun d!1559534 () Bool)

(assert (=> d!1559534 e!3037453))

(declare-fun res!2074094 () Bool)

(assert (=> d!1559534 (=> (not res!2074094) (not e!3037453))))

(assert (=> d!1559534 (= res!2074094 (= (content!9939 lt!1991843) ((_ map or) (content!9939 (list!17428 (left!40521 (left!40521 t!4677)))) (content!9939 (list!17428 (right!40851 (left!40521 t!4677)))))))))

(assert (=> d!1559534 (= lt!1991843 e!3037452)))

(declare-fun c!826549 () Bool)

(assert (=> d!1559534 (= c!826549 ((_ is Nil!55754) (list!17428 (left!40521 (left!40521 t!4677)))))))

(assert (=> d!1559534 (= (++!12139 (list!17428 (left!40521 (left!40521 t!4677))) (list!17428 (right!40851 (left!40521 t!4677)))) lt!1991843)))

(assert (= (and d!1559534 c!826549) b!4858592))

(assert (= (and d!1559534 (not c!826549)) b!4858593))

(assert (= (and d!1559534 res!2074094) b!4858594))

(assert (= (and b!4858594 res!2074095) b!4858595))

(assert (=> b!4858593 m!5856566))

(declare-fun m!5856672 () Bool)

(assert (=> b!4858593 m!5856672))

(declare-fun m!5856674 () Bool)

(assert (=> b!4858594 m!5856674))

(assert (=> b!4858594 m!5856564))

(declare-fun m!5856676 () Bool)

(assert (=> b!4858594 m!5856676))

(assert (=> b!4858594 m!5856566))

(declare-fun m!5856678 () Bool)

(assert (=> b!4858594 m!5856678))

(declare-fun m!5856680 () Bool)

(assert (=> d!1559534 m!5856680))

(assert (=> d!1559534 m!5856564))

(declare-fun m!5856682 () Bool)

(assert (=> d!1559534 m!5856682))

(assert (=> d!1559534 m!5856566))

(declare-fun m!5856684 () Bool)

(assert (=> d!1559534 m!5856684))

(assert (=> b!4858495 d!1559534))

(declare-fun b!4858597 () Bool)

(declare-fun e!3037454 () List!55878)

(declare-fun e!3037455 () List!55878)

(assert (=> b!4858597 (= e!3037454 e!3037455)))

(declare-fun c!826551 () Bool)

(assert (=> b!4858597 (= c!826551 ((_ is Leaf!24216) (left!40521 (left!40521 t!4677))))))

(declare-fun d!1559536 () Bool)

(declare-fun c!826550 () Bool)

(assert (=> d!1559536 (= c!826550 ((_ is Empty!14534) (left!40521 (left!40521 t!4677))))))

(assert (=> d!1559536 (= (list!17428 (left!40521 (left!40521 t!4677))) e!3037454)))

(declare-fun b!4858596 () Bool)

(assert (=> b!4858596 (= e!3037454 Nil!55754)))

(declare-fun b!4858598 () Bool)

(assert (=> b!4858598 (= e!3037455 (list!17429 (xs!17840 (left!40521 (left!40521 t!4677)))))))

(declare-fun b!4858599 () Bool)

(assert (=> b!4858599 (= e!3037455 (++!12139 (list!17428 (left!40521 (left!40521 (left!40521 t!4677)))) (list!17428 (right!40851 (left!40521 (left!40521 t!4677))))))))

(assert (= (and d!1559536 c!826550) b!4858596))

(assert (= (and d!1559536 (not c!826550)) b!4858597))

(assert (= (and b!4858597 c!826551) b!4858598))

(assert (= (and b!4858597 (not c!826551)) b!4858599))

(declare-fun m!5856686 () Bool)

(assert (=> b!4858598 m!5856686))

(declare-fun m!5856688 () Bool)

(assert (=> b!4858599 m!5856688))

(declare-fun m!5856690 () Bool)

(assert (=> b!4858599 m!5856690))

(assert (=> b!4858599 m!5856688))

(assert (=> b!4858599 m!5856690))

(declare-fun m!5856692 () Bool)

(assert (=> b!4858599 m!5856692))

(assert (=> b!4858495 d!1559536))

(declare-fun b!4858601 () Bool)

(declare-fun e!3037456 () List!55878)

(declare-fun e!3037457 () List!55878)

(assert (=> b!4858601 (= e!3037456 e!3037457)))

(declare-fun c!826553 () Bool)

(assert (=> b!4858601 (= c!826553 ((_ is Leaf!24216) (right!40851 (left!40521 t!4677))))))

(declare-fun d!1559538 () Bool)

(declare-fun c!826552 () Bool)

(assert (=> d!1559538 (= c!826552 ((_ is Empty!14534) (right!40851 (left!40521 t!4677))))))

(assert (=> d!1559538 (= (list!17428 (right!40851 (left!40521 t!4677))) e!3037456)))

(declare-fun b!4858600 () Bool)

(assert (=> b!4858600 (= e!3037456 Nil!55754)))

(declare-fun b!4858602 () Bool)

(assert (=> b!4858602 (= e!3037457 (list!17429 (xs!17840 (right!40851 (left!40521 t!4677)))))))

(declare-fun b!4858603 () Bool)

(assert (=> b!4858603 (= e!3037457 (++!12139 (list!17428 (left!40521 (right!40851 (left!40521 t!4677)))) (list!17428 (right!40851 (right!40851 (left!40521 t!4677))))))))

(assert (= (and d!1559538 c!826552) b!4858600))

(assert (= (and d!1559538 (not c!826552)) b!4858601))

(assert (= (and b!4858601 c!826553) b!4858602))

(assert (= (and b!4858601 (not c!826553)) b!4858603))

(declare-fun m!5856694 () Bool)

(assert (=> b!4858602 m!5856694))

(declare-fun m!5856696 () Bool)

(assert (=> b!4858603 m!5856696))

(declare-fun m!5856698 () Bool)

(assert (=> b!4858603 m!5856698))

(assert (=> b!4858603 m!5856696))

(assert (=> b!4858603 m!5856698))

(declare-fun m!5856700 () Bool)

(assert (=> b!4858603 m!5856700))

(assert (=> b!4858495 d!1559538))

(declare-fun d!1559540 () Bool)

(declare-fun lt!1991846 () Bool)

(assert (=> d!1559540 (= lt!1991846 (select (content!9939 (list!17428 t!4677)) lt!1991812))))

(declare-fun e!3037463 () Bool)

(assert (=> d!1559540 (= lt!1991846 e!3037463)))

(declare-fun res!2074101 () Bool)

(assert (=> d!1559540 (=> (not res!2074101) (not e!3037463))))

(assert (=> d!1559540 (= res!2074101 ((_ is Cons!55754) (list!17428 t!4677)))))

(assert (=> d!1559540 (= (contains!19367 (list!17428 t!4677) lt!1991812) lt!1991846)))

(declare-fun b!4858608 () Bool)

(declare-fun e!3037462 () Bool)

(assert (=> b!4858608 (= e!3037463 e!3037462)))

(declare-fun res!2074100 () Bool)

(assert (=> b!4858608 (=> res!2074100 e!3037462)))

(assert (=> b!4858608 (= res!2074100 (= (h!62202 (list!17428 t!4677)) lt!1991812))))

(declare-fun b!4858609 () Bool)

(assert (=> b!4858609 (= e!3037462 (contains!19367 (t!363476 (list!17428 t!4677)) lt!1991812))))

(assert (= (and d!1559540 res!2074101) b!4858608))

(assert (= (and b!4858608 (not res!2074100)) b!4858609))

(assert (=> d!1559540 m!5856408))

(declare-fun m!5856702 () Bool)

(assert (=> d!1559540 m!5856702))

(declare-fun m!5856704 () Bool)

(assert (=> d!1559540 m!5856704))

(declare-fun m!5856706 () Bool)

(assert (=> b!4858609 m!5856706))

(assert (=> d!1559492 d!1559540))

(declare-fun d!1559542 () Bool)

(assert (=> d!1559542 (= (isEmpty!29840 (list!17428 t!4677)) ((_ is Nil!55754) (list!17428 t!4677)))))

(assert (=> d!1559492 d!1559542))

(declare-fun d!1559544 () Bool)

(declare-fun lt!1991847 () T!98672)

(assert (=> d!1559544 (contains!19367 (t!363476 (++!12139 lt!1991781 lt!1991778)) lt!1991847)))

(declare-fun e!3037464 () T!98672)

(assert (=> d!1559544 (= lt!1991847 e!3037464)))

(declare-fun c!826554 () Bool)

(assert (=> d!1559544 (= c!826554 (and ((_ is Cons!55754) (t!363476 (++!12139 lt!1991781 lt!1991778))) ((_ is Nil!55754) (t!363476 (t!363476 (++!12139 lt!1991781 lt!1991778))))))))

(assert (=> d!1559544 (not (isEmpty!29840 (t!363476 (++!12139 lt!1991781 lt!1991778))))))

(assert (=> d!1559544 (= (last!405 (t!363476 (++!12139 lt!1991781 lt!1991778))) lt!1991847)))

(declare-fun b!4858610 () Bool)

(assert (=> b!4858610 (= e!3037464 (h!62202 (t!363476 (++!12139 lt!1991781 lt!1991778))))))

(declare-fun b!4858611 () Bool)

(assert (=> b!4858611 (= e!3037464 (last!405 (t!363476 (t!363476 (++!12139 lt!1991781 lt!1991778)))))))

(assert (= (and d!1559544 c!826554) b!4858610))

(assert (= (and d!1559544 (not c!826554)) b!4858611))

(declare-fun m!5856708 () Bool)

(assert (=> d!1559544 m!5856708))

(declare-fun m!5856710 () Bool)

(assert (=> d!1559544 m!5856710))

(declare-fun m!5856712 () Bool)

(assert (=> b!4858611 m!5856712))

(assert (=> b!4858515 d!1559544))

(declare-fun d!1559546 () Bool)

(declare-fun res!2074108 () Bool)

(declare-fun e!3037467 () Bool)

(assert (=> d!1559546 (=> (not res!2074108) (not e!3037467))))

(assert (=> d!1559546 (= res!2074108 (= (csize!29298 t!4677) (+ (size!36738 (left!40521 t!4677)) (size!36738 (right!40851 t!4677)))))))

(assert (=> d!1559546 (= (inv!71611 t!4677) e!3037467)))

(declare-fun b!4858618 () Bool)

(declare-fun res!2074109 () Bool)

(assert (=> b!4858618 (=> (not res!2074109) (not e!3037467))))

(assert (=> b!4858618 (= res!2074109 (and (not (= (left!40521 t!4677) Empty!14534)) (not (= (right!40851 t!4677) Empty!14534))))))

(declare-fun b!4858619 () Bool)

(declare-fun res!2074110 () Bool)

(assert (=> b!4858619 (=> (not res!2074110) (not e!3037467))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4858619 (= res!2074110 (= (cheight!14745 t!4677) (+ (max!0 (height!1913 (left!40521 t!4677)) (height!1913 (right!40851 t!4677))) 1)))))

(declare-fun b!4858620 () Bool)

(assert (=> b!4858620 (= e!3037467 (<= 0 (cheight!14745 t!4677)))))

(assert (= (and d!1559546 res!2074108) b!4858618))

(assert (= (and b!4858618 res!2074109) b!4858619))

(assert (= (and b!4858619 res!2074110) b!4858620))

(declare-fun m!5856714 () Bool)

(assert (=> d!1559546 m!5856714))

(declare-fun m!5856716 () Bool)

(assert (=> d!1559546 m!5856716))

(assert (=> b!4858619 m!5856438))

(assert (=> b!4858619 m!5856440))

(assert (=> b!4858619 m!5856438))

(assert (=> b!4858619 m!5856440))

(declare-fun m!5856718 () Bool)

(assert (=> b!4858619 m!5856718))

(assert (=> b!4858395 d!1559546))

(declare-fun d!1559548 () Bool)

(declare-fun lt!1991848 () T!98672)

(assert (=> d!1559548 (contains!19367 (t!363476 lt!1991778) lt!1991848)))

(declare-fun e!3037468 () T!98672)

(assert (=> d!1559548 (= lt!1991848 e!3037468)))

(declare-fun c!826555 () Bool)

(assert (=> d!1559548 (= c!826555 (and ((_ is Cons!55754) (t!363476 lt!1991778)) ((_ is Nil!55754) (t!363476 (t!363476 lt!1991778)))))))

(assert (=> d!1559548 (not (isEmpty!29840 (t!363476 lt!1991778)))))

(assert (=> d!1559548 (= (last!405 (t!363476 lt!1991778)) lt!1991848)))

(declare-fun b!4858621 () Bool)

(assert (=> b!4858621 (= e!3037468 (h!62202 (t!363476 lt!1991778)))))

(declare-fun b!4858622 () Bool)

(assert (=> b!4858622 (= e!3037468 (last!405 (t!363476 (t!363476 lt!1991778))))))

(assert (= (and d!1559548 c!826555) b!4858621))

(assert (= (and d!1559548 (not c!826555)) b!4858622))

(declare-fun m!5856720 () Bool)

(assert (=> d!1559548 m!5856720))

(declare-fun m!5856722 () Bool)

(assert (=> d!1559548 m!5856722))

(declare-fun m!5856724 () Bool)

(assert (=> b!4858622 m!5856724))

(assert (=> b!4858564 d!1559548))

(declare-fun d!1559550 () Bool)

(declare-fun c!826556 () Bool)

(assert (=> d!1559550 (= c!826556 ((_ is Node!14534) (left!40521 (right!40851 t!4677))))))

(declare-fun e!3037469 () Bool)

(assert (=> d!1559550 (= (inv!71608 (left!40521 (right!40851 t!4677))) e!3037469)))

(declare-fun b!4858623 () Bool)

(assert (=> b!4858623 (= e!3037469 (inv!71611 (left!40521 (right!40851 t!4677))))))

(declare-fun b!4858624 () Bool)

(declare-fun e!3037470 () Bool)

(assert (=> b!4858624 (= e!3037469 e!3037470)))

(declare-fun res!2074111 () Bool)

(assert (=> b!4858624 (= res!2074111 (not ((_ is Leaf!24216) (left!40521 (right!40851 t!4677)))))))

(assert (=> b!4858624 (=> res!2074111 e!3037470)))

(declare-fun b!4858625 () Bool)

(assert (=> b!4858625 (= e!3037470 (inv!71612 (left!40521 (right!40851 t!4677))))))

(assert (= (and d!1559550 c!826556) b!4858623))

(assert (= (and d!1559550 (not c!826556)) b!4858624))

(assert (= (and b!4858624 (not res!2074111)) b!4858625))

(declare-fun m!5856726 () Bool)

(assert (=> b!4858623 m!5856726))

(declare-fun m!5856728 () Bool)

(assert (=> b!4858625 m!5856728))

(assert (=> b!4858581 d!1559550))

(declare-fun d!1559552 () Bool)

(declare-fun c!826557 () Bool)

(assert (=> d!1559552 (= c!826557 ((_ is Node!14534) (right!40851 (right!40851 t!4677))))))

(declare-fun e!3037471 () Bool)

(assert (=> d!1559552 (= (inv!71608 (right!40851 (right!40851 t!4677))) e!3037471)))

(declare-fun b!4858626 () Bool)

(assert (=> b!4858626 (= e!3037471 (inv!71611 (right!40851 (right!40851 t!4677))))))

(declare-fun b!4858627 () Bool)

(declare-fun e!3037472 () Bool)

(assert (=> b!4858627 (= e!3037471 e!3037472)))

(declare-fun res!2074112 () Bool)

(assert (=> b!4858627 (= res!2074112 (not ((_ is Leaf!24216) (right!40851 (right!40851 t!4677)))))))

(assert (=> b!4858627 (=> res!2074112 e!3037472)))

(declare-fun b!4858628 () Bool)

(assert (=> b!4858628 (= e!3037472 (inv!71612 (right!40851 (right!40851 t!4677))))))

(assert (= (and d!1559552 c!826557) b!4858626))

(assert (= (and d!1559552 (not c!826557)) b!4858627))

(assert (= (and b!4858627 (not res!2074112)) b!4858628))

(declare-fun m!5856730 () Bool)

(assert (=> b!4858626 m!5856730))

(declare-fun m!5856732 () Bool)

(assert (=> b!4858628 m!5856732))

(assert (=> b!4858581 d!1559552))

(declare-fun d!1559554 () Bool)

(assert (=> d!1559554 (= (inv!71607 (xs!17840 (right!40851 t!4677))) (<= (size!36736 (innerList!14622 (xs!17840 (right!40851 t!4677)))) 2147483647))))

(declare-fun bs!1173816 () Bool)

(assert (= bs!1173816 d!1559554))

(declare-fun m!5856734 () Bool)

(assert (=> bs!1173816 m!5856734))

(assert (=> b!4858582 d!1559554))

(assert (=> d!1559476 d!1559542))

(assert (=> d!1559476 d!1559510))

(declare-fun d!1559556 () Bool)

(declare-fun lt!1991851 () Int)

(assert (=> d!1559556 (= lt!1991851 (size!36736 (list!17428 t!4677)))))

(assert (=> d!1559556 (= lt!1991851 (ite ((_ is Empty!14534) t!4677) 0 (ite ((_ is Leaf!24216) t!4677) (csize!29299 t!4677) (csize!29298 t!4677))))))

(assert (=> d!1559556 (= (size!36738 t!4677) lt!1991851)))

(declare-fun bs!1173817 () Bool)

(assert (= bs!1173817 d!1559556))

(assert (=> bs!1173817 m!5856408))

(assert (=> bs!1173817 m!5856408))

(declare-fun m!5856736 () Bool)

(assert (=> bs!1173817 m!5856736))

(assert (=> d!1559476 d!1559556))

(assert (=> b!4858342 d!1559512))

(assert (=> b!4858342 d!1559514))

(declare-fun d!1559558 () Bool)

(declare-fun lt!1991852 () T!98672)

(assert (=> d!1559558 (contains!19367 (++!12139 lt!1991809 lt!1991806) lt!1991852)))

(declare-fun e!3037473 () T!98672)

(assert (=> d!1559558 (= lt!1991852 e!3037473)))

(declare-fun c!826558 () Bool)

(assert (=> d!1559558 (= c!826558 (and ((_ is Cons!55754) (++!12139 lt!1991809 lt!1991806)) ((_ is Nil!55754) (t!363476 (++!12139 lt!1991809 lt!1991806)))))))

(assert (=> d!1559558 (not (isEmpty!29840 (++!12139 lt!1991809 lt!1991806)))))

(assert (=> d!1559558 (= (last!405 (++!12139 lt!1991809 lt!1991806)) lt!1991852)))

(declare-fun b!4858629 () Bool)

(assert (=> b!4858629 (= e!3037473 (h!62202 (++!12139 lt!1991809 lt!1991806)))))

(declare-fun b!4858630 () Bool)

(assert (=> b!4858630 (= e!3037473 (last!405 (t!363476 (++!12139 lt!1991809 lt!1991806))))))

(assert (= (and d!1559558 c!826558) b!4858629))

(assert (= (and d!1559558 (not c!826558)) b!4858630))

(assert (=> d!1559558 m!5856504))

(declare-fun m!5856738 () Bool)

(assert (=> d!1559558 m!5856738))

(assert (=> d!1559558 m!5856504))

(declare-fun m!5856740 () Bool)

(assert (=> d!1559558 m!5856740))

(declare-fun m!5856742 () Bool)

(assert (=> b!4858630 m!5856742))

(assert (=> b!4858436 d!1559558))

(declare-fun b!4858631 () Bool)

(declare-fun e!3037474 () List!55878)

(assert (=> b!4858631 (= e!3037474 lt!1991806)))

(declare-fun b!4858632 () Bool)

(assert (=> b!4858632 (= e!3037474 (Cons!55754 (h!62202 lt!1991809) (++!12139 (t!363476 lt!1991809) lt!1991806)))))

(declare-fun b!4858633 () Bool)

(declare-fun res!2074114 () Bool)

(declare-fun e!3037475 () Bool)

(assert (=> b!4858633 (=> (not res!2074114) (not e!3037475))))

(declare-fun lt!1991853 () List!55878)

(assert (=> b!4858633 (= res!2074114 (= (size!36736 lt!1991853) (+ (size!36736 lt!1991809) (size!36736 lt!1991806))))))

(declare-fun b!4858634 () Bool)

(assert (=> b!4858634 (= e!3037475 (or (not (= lt!1991806 Nil!55754)) (= lt!1991853 lt!1991809)))))

(declare-fun d!1559560 () Bool)

(assert (=> d!1559560 e!3037475))

(declare-fun res!2074113 () Bool)

(assert (=> d!1559560 (=> (not res!2074113) (not e!3037475))))

(assert (=> d!1559560 (= res!2074113 (= (content!9939 lt!1991853) ((_ map or) (content!9939 lt!1991809) (content!9939 lt!1991806))))))

(assert (=> d!1559560 (= lt!1991853 e!3037474)))

(declare-fun c!826559 () Bool)

(assert (=> d!1559560 (= c!826559 ((_ is Nil!55754) lt!1991809))))

(assert (=> d!1559560 (= (++!12139 lt!1991809 lt!1991806) lt!1991853)))

(assert (= (and d!1559560 c!826559) b!4858631))

(assert (= (and d!1559560 (not c!826559)) b!4858632))

(assert (= (and d!1559560 res!2074113) b!4858633))

(assert (= (and b!4858633 res!2074114) b!4858634))

(declare-fun m!5856744 () Bool)

(assert (=> b!4858632 m!5856744))

(declare-fun m!5856746 () Bool)

(assert (=> b!4858633 m!5856746))

(declare-fun m!5856748 () Bool)

(assert (=> b!4858633 m!5856748))

(declare-fun m!5856750 () Bool)

(assert (=> b!4858633 m!5856750))

(declare-fun m!5856752 () Bool)

(assert (=> d!1559560 m!5856752))

(declare-fun m!5856754 () Bool)

(assert (=> d!1559560 m!5856754))

(declare-fun m!5856756 () Bool)

(assert (=> d!1559560 m!5856756))

(assert (=> b!4858436 d!1559560))

(declare-fun d!1559562 () Bool)

(declare-fun lt!1991854 () T!98672)

(assert (=> d!1559562 (contains!19367 lt!1991809 lt!1991854)))

(declare-fun e!3037476 () T!98672)

(assert (=> d!1559562 (= lt!1991854 e!3037476)))

(declare-fun c!826560 () Bool)

(assert (=> d!1559562 (= c!826560 (and ((_ is Cons!55754) lt!1991809) ((_ is Nil!55754) (t!363476 lt!1991809))))))

(assert (=> d!1559562 (not (isEmpty!29840 lt!1991809))))

(assert (=> d!1559562 (= (last!405 lt!1991809) lt!1991854)))

(declare-fun b!4858635 () Bool)

(assert (=> b!4858635 (= e!3037476 (h!62202 lt!1991809))))

(declare-fun b!4858636 () Bool)

(assert (=> b!4858636 (= e!3037476 (last!405 (t!363476 lt!1991809)))))

(assert (= (and d!1559562 c!826560) b!4858635))

(assert (= (and d!1559562 (not c!826560)) b!4858636))

(declare-fun m!5856758 () Bool)

(assert (=> d!1559562 m!5856758))

(declare-fun m!5856760 () Bool)

(assert (=> d!1559562 m!5856760))

(declare-fun m!5856762 () Bool)

(assert (=> b!4858636 m!5856762))

(assert (=> b!4858436 d!1559562))

(declare-fun d!1559564 () Bool)

(assert (=> d!1559564 (= (list!17429 (xs!17840 (right!40851 t!4677))) (innerList!14622 (xs!17840 (right!40851 t!4677))))))

(assert (=> b!4858488 d!1559564))

(declare-fun d!1559566 () Bool)

(assert (=> d!1559566 (= (isEmpty!29840 lt!1991806) ((_ is Nil!55754) lt!1991806))))

(assert (=> b!4858435 d!1559566))

(declare-fun d!1559568 () Bool)

(declare-fun e!3037477 () Bool)

(assert (=> d!1559568 e!3037477))

(declare-fun res!2074116 () Bool)

(assert (=> d!1559568 (=> res!2074116 e!3037477)))

(declare-fun e!3037478 () Bool)

(assert (=> d!1559568 (= res!2074116 e!3037478)))

(declare-fun res!2074117 () Bool)

(assert (=> d!1559568 (=> (not res!2074117) (not e!3037478))))

(assert (=> d!1559568 (= res!2074117 (isEmpty!29840 lt!1991806))))

(declare-fun lt!1991855 () Unit!145859)

(assert (=> d!1559568 (= lt!1991855 (choose!35563 lt!1991809 lt!1991806))))

(assert (=> d!1559568 (not (isEmpty!29840 (++!12139 lt!1991809 lt!1991806)))))

(assert (=> d!1559568 (= (lemmaLastOfConcatIsLastOfRhs!36 lt!1991809 lt!1991806) lt!1991855)))

(declare-fun b!4858637 () Bool)

(assert (=> b!4858637 (= e!3037478 (= (last!405 (++!12139 lt!1991809 lt!1991806)) (last!405 lt!1991809)))))

(declare-fun b!4858638 () Bool)

(declare-fun e!3037479 () Bool)

(assert (=> b!4858638 (= e!3037477 e!3037479)))

(declare-fun res!2074115 () Bool)

(assert (=> b!4858638 (=> (not res!2074115) (not e!3037479))))

(assert (=> b!4858638 (= res!2074115 (not (isEmpty!29840 lt!1991806)))))

(declare-fun b!4858639 () Bool)

(assert (=> b!4858639 (= e!3037479 (= (last!405 (++!12139 lt!1991809 lt!1991806)) (last!405 lt!1991806)))))

(assert (= (and d!1559568 res!2074117) b!4858637))

(assert (= (and d!1559568 (not res!2074116)) b!4858638))

(assert (= (and b!4858638 res!2074115) b!4858639))

(assert (=> d!1559568 m!5856500))

(declare-fun m!5856764 () Bool)

(assert (=> d!1559568 m!5856764))

(assert (=> d!1559568 m!5856504))

(assert (=> d!1559568 m!5856504))

(assert (=> d!1559568 m!5856740))

(assert (=> b!4858637 m!5856504))

(assert (=> b!4858637 m!5856504))

(assert (=> b!4858637 m!5856506))

(assert (=> b!4858637 m!5856508))

(assert (=> b!4858638 m!5856500))

(assert (=> b!4858639 m!5856504))

(assert (=> b!4858639 m!5856504))

(assert (=> b!4858639 m!5856506))

(assert (=> b!4858639 m!5856510))

(assert (=> b!4858435 d!1559568))

(declare-fun b!4858640 () Bool)

(declare-fun e!3037482 () Bool)

(declare-fun lt!1991860 () List!55878)

(declare-fun lt!1991857 () List!55878)

(assert (=> b!4858640 (= e!3037482 (= (last!405 (++!12139 lt!1991860 lt!1991857)) (last!405 lt!1991857)))))

(declare-fun b!4858641 () Bool)

(declare-fun e!3037481 () T!98672)

(assert (=> b!4858641 (= e!3037481 (last!406 (right!40851 (right!40851 (right!40851 t!4677)))))))

(assert (=> b!4858641 (= lt!1991860 (list!17428 (left!40521 (right!40851 (right!40851 t!4677)))))))

(assert (=> b!4858641 (= lt!1991857 (list!17428 (right!40851 (right!40851 (right!40851 t!4677)))))))

(declare-fun lt!1991858 () Unit!145859)

(assert (=> b!4858641 (= lt!1991858 (lemmaLastOfConcatIsLastOfRhs!36 lt!1991860 lt!1991857))))

(declare-fun res!2074118 () Bool)

(assert (=> b!4858641 (= res!2074118 (isEmpty!29840 lt!1991857))))

(declare-fun e!3037483 () Bool)

(assert (=> b!4858641 (=> (not res!2074118) (not e!3037483))))

(declare-fun res!2074119 () Bool)

(assert (=> b!4858641 (= res!2074119 e!3037483)))

(declare-fun e!3037480 () Bool)

(assert (=> b!4858641 (=> res!2074119 e!3037480)))

(assert (=> b!4858641 e!3037480))

(declare-fun lt!1991856 () Unit!145859)

(assert (=> b!4858641 (= lt!1991856 lt!1991858)))

(declare-fun b!4858642 () Bool)

(assert (=> b!4858642 (= e!3037483 (= (last!405 (++!12139 lt!1991860 lt!1991857)) (last!405 lt!1991860)))))

(declare-fun b!4858643 () Bool)

(assert (=> b!4858643 (= e!3037481 (last!407 (xs!17840 (right!40851 (right!40851 t!4677)))))))

(declare-fun d!1559570 () Bool)

(declare-fun lt!1991859 () T!98672)

(assert (=> d!1559570 (= lt!1991859 (last!405 (list!17428 (right!40851 (right!40851 t!4677)))))))

(assert (=> d!1559570 (= lt!1991859 e!3037481)))

(declare-fun c!826561 () Bool)

(assert (=> d!1559570 (= c!826561 ((_ is Leaf!24216) (right!40851 (right!40851 t!4677))))))

(assert (=> d!1559570 (isBalanced!3940 (right!40851 (right!40851 t!4677)))))

(assert (=> d!1559570 (= (last!406 (right!40851 (right!40851 t!4677))) lt!1991859)))

(declare-fun b!4858644 () Bool)

(declare-fun res!2074120 () Bool)

(assert (=> b!4858644 (= res!2074120 (not (isEmpty!29840 lt!1991857)))))

(assert (=> b!4858644 (=> (not res!2074120) (not e!3037482))))

(assert (=> b!4858644 (= e!3037480 e!3037482)))

(assert (= (and d!1559570 c!826561) b!4858643))

(assert (= (and d!1559570 (not c!826561)) b!4858641))

(assert (= (and b!4858641 res!2074118) b!4858642))

(assert (= (and b!4858641 (not res!2074119)) b!4858644))

(assert (= (and b!4858644 res!2074120) b!4858640))

(declare-fun m!5856766 () Bool)

(assert (=> b!4858644 m!5856766))

(assert (=> d!1559570 m!5856512))

(assert (=> d!1559570 m!5856512))

(declare-fun m!5856768 () Bool)

(assert (=> d!1559570 m!5856768))

(assert (=> d!1559570 m!5856668))

(declare-fun m!5856770 () Bool)

(assert (=> b!4858642 m!5856770))

(assert (=> b!4858642 m!5856770))

(declare-fun m!5856772 () Bool)

(assert (=> b!4858642 m!5856772))

(declare-fun m!5856774 () Bool)

(assert (=> b!4858642 m!5856774))

(assert (=> b!4858640 m!5856770))

(assert (=> b!4858640 m!5856770))

(assert (=> b!4858640 m!5856772))

(declare-fun m!5856776 () Bool)

(assert (=> b!4858640 m!5856776))

(declare-fun m!5856778 () Bool)

(assert (=> b!4858641 m!5856778))

(declare-fun m!5856780 () Bool)

(assert (=> b!4858641 m!5856780))

(assert (=> b!4858641 m!5856766))

(declare-fun m!5856782 () Bool)

(assert (=> b!4858641 m!5856782))

(declare-fun m!5856784 () Bool)

(assert (=> b!4858641 m!5856784))

(declare-fun m!5856786 () Bool)

(assert (=> b!4858643 m!5856786))

(assert (=> b!4858435 d!1559570))

(declare-fun b!4858646 () Bool)

(declare-fun e!3037484 () List!55878)

(declare-fun e!3037485 () List!55878)

(assert (=> b!4858646 (= e!3037484 e!3037485)))

(declare-fun c!826563 () Bool)

(assert (=> b!4858646 (= c!826563 ((_ is Leaf!24216) (left!40521 (right!40851 t!4677))))))

(declare-fun d!1559572 () Bool)

(declare-fun c!826562 () Bool)

(assert (=> d!1559572 (= c!826562 ((_ is Empty!14534) (left!40521 (right!40851 t!4677))))))

(assert (=> d!1559572 (= (list!17428 (left!40521 (right!40851 t!4677))) e!3037484)))

(declare-fun b!4858645 () Bool)

(assert (=> b!4858645 (= e!3037484 Nil!55754)))

(declare-fun b!4858647 () Bool)

(assert (=> b!4858647 (= e!3037485 (list!17429 (xs!17840 (left!40521 (right!40851 t!4677)))))))

(declare-fun b!4858648 () Bool)

(assert (=> b!4858648 (= e!3037485 (++!12139 (list!17428 (left!40521 (left!40521 (right!40851 t!4677)))) (list!17428 (right!40851 (left!40521 (right!40851 t!4677))))))))

(assert (= (and d!1559572 c!826562) b!4858645))

(assert (= (and d!1559572 (not c!826562)) b!4858646))

(assert (= (and b!4858646 c!826563) b!4858647))

(assert (= (and b!4858646 (not c!826563)) b!4858648))

(declare-fun m!5856788 () Bool)

(assert (=> b!4858647 m!5856788))

(declare-fun m!5856790 () Bool)

(assert (=> b!4858648 m!5856790))

(declare-fun m!5856792 () Bool)

(assert (=> b!4858648 m!5856792))

(assert (=> b!4858648 m!5856790))

(assert (=> b!4858648 m!5856792))

(declare-fun m!5856794 () Bool)

(assert (=> b!4858648 m!5856794))

(assert (=> b!4858435 d!1559572))

(declare-fun b!4858650 () Bool)

(declare-fun e!3037486 () List!55878)

(declare-fun e!3037487 () List!55878)

(assert (=> b!4858650 (= e!3037486 e!3037487)))

(declare-fun c!826565 () Bool)

(assert (=> b!4858650 (= c!826565 ((_ is Leaf!24216) (right!40851 (right!40851 t!4677))))))

(declare-fun d!1559574 () Bool)

(declare-fun c!826564 () Bool)

(assert (=> d!1559574 (= c!826564 ((_ is Empty!14534) (right!40851 (right!40851 t!4677))))))

(assert (=> d!1559574 (= (list!17428 (right!40851 (right!40851 t!4677))) e!3037486)))

(declare-fun b!4858649 () Bool)

(assert (=> b!4858649 (= e!3037486 Nil!55754)))

(declare-fun b!4858651 () Bool)

(assert (=> b!4858651 (= e!3037487 (list!17429 (xs!17840 (right!40851 (right!40851 t!4677)))))))

(declare-fun b!4858652 () Bool)

(assert (=> b!4858652 (= e!3037487 (++!12139 (list!17428 (left!40521 (right!40851 (right!40851 t!4677)))) (list!17428 (right!40851 (right!40851 (right!40851 t!4677))))))))

(assert (= (and d!1559574 c!826564) b!4858649))

(assert (= (and d!1559574 (not c!826564)) b!4858650))

(assert (= (and b!4858650 c!826565) b!4858651))

(assert (= (and b!4858650 (not c!826565)) b!4858652))

(declare-fun m!5856796 () Bool)

(assert (=> b!4858651 m!5856796))

(assert (=> b!4858652 m!5856784))

(assert (=> b!4858652 m!5856778))

(assert (=> b!4858652 m!5856784))

(assert (=> b!4858652 m!5856778))

(declare-fun m!5856798 () Bool)

(assert (=> b!4858652 m!5856798))

(assert (=> b!4858435 d!1559574))

(declare-fun lt!1991861 () Bool)

(declare-fun d!1559576 () Bool)

(assert (=> d!1559576 (= lt!1991861 (select (content!9939 (++!12139 lt!1991781 lt!1991778)) lt!1991835))))

(declare-fun e!3037489 () Bool)

(assert (=> d!1559576 (= lt!1991861 e!3037489)))

(declare-fun res!2074122 () Bool)

(assert (=> d!1559576 (=> (not res!2074122) (not e!3037489))))

(assert (=> d!1559576 (= res!2074122 ((_ is Cons!55754) (++!12139 lt!1991781 lt!1991778)))))

(assert (=> d!1559576 (= (contains!19367 (++!12139 lt!1991781 lt!1991778) lt!1991835) lt!1991861)))

(declare-fun b!4858653 () Bool)

(declare-fun e!3037488 () Bool)

(assert (=> b!4858653 (= e!3037489 e!3037488)))

(declare-fun res!2074121 () Bool)

(assert (=> b!4858653 (=> res!2074121 e!3037488)))

(assert (=> b!4858653 (= res!2074121 (= (h!62202 (++!12139 lt!1991781 lt!1991778)) lt!1991835))))

(declare-fun b!4858654 () Bool)

(assert (=> b!4858654 (= e!3037488 (contains!19367 (t!363476 (++!12139 lt!1991781 lt!1991778)) lt!1991835))))

(assert (= (and d!1559576 res!2074122) b!4858653))

(assert (= (and b!4858653 (not res!2074121)) b!4858654))

(assert (=> d!1559576 m!5856392))

(declare-fun m!5856800 () Bool)

(assert (=> d!1559576 m!5856800))

(declare-fun m!5856802 () Bool)

(assert (=> d!1559576 m!5856802))

(declare-fun m!5856804 () Bool)

(assert (=> b!4858654 m!5856804))

(assert (=> d!1559516 d!1559576))

(declare-fun d!1559578 () Bool)

(assert (=> d!1559578 (= (isEmpty!29840 (++!12139 lt!1991781 lt!1991778)) ((_ is Nil!55754) (++!12139 lt!1991781 lt!1991778)))))

(assert (=> d!1559516 d!1559578))

(declare-fun d!1559580 () Bool)

(declare-fun lt!1991862 () Bool)

(assert (=> d!1559580 (= lt!1991862 (isEmpty!29840 (list!17428 (right!40851 t!4677))))))

(assert (=> d!1559580 (= lt!1991862 (= (size!36738 (right!40851 t!4677)) 0))))

(assert (=> d!1559580 (= (isEmpty!29841 (right!40851 t!4677)) lt!1991862)))

(declare-fun bs!1173818 () Bool)

(assert (= bs!1173818 d!1559580))

(assert (=> bs!1173818 m!5856412))

(assert (=> bs!1173818 m!5856412))

(assert (=> bs!1173818 m!5856656))

(assert (=> bs!1173818 m!5856716))

(assert (=> b!4858379 d!1559580))

(declare-fun d!1559582 () Bool)

(assert (=> d!1559582 (= (height!1913 (left!40521 t!4677)) (ite ((_ is Empty!14534) (left!40521 t!4677)) 0 (ite ((_ is Leaf!24216) (left!40521 t!4677)) 1 (cheight!14745 (left!40521 t!4677)))))))

(assert (=> b!4858378 d!1559582))

(declare-fun d!1559584 () Bool)

(assert (=> d!1559584 (= (height!1913 (right!40851 t!4677)) (ite ((_ is Empty!14534) (right!40851 t!4677)) 0 (ite ((_ is Leaf!24216) (right!40851 t!4677)) 1 (cheight!14745 (right!40851 t!4677)))))))

(assert (=> b!4858378 d!1559584))

(assert (=> d!1559494 d!1559508))

(declare-fun d!1559586 () Bool)

(declare-fun e!3037498 () Bool)

(assert (=> d!1559586 e!3037498))

(declare-fun res!2074129 () Bool)

(assert (=> d!1559586 (=> res!2074129 e!3037498)))

(declare-fun e!3037496 () Bool)

(assert (=> d!1559586 (= res!2074129 e!3037496)))

(declare-fun res!2074130 () Bool)

(assert (=> d!1559586 (=> (not res!2074130) (not e!3037496))))

(assert (=> d!1559586 (= res!2074130 (isEmpty!29840 lt!1991778))))

(assert (=> d!1559586 true))

(declare-fun _$74!79 () Unit!145859)

(assert (=> d!1559586 (= (choose!35563 lt!1991781 lt!1991778) _$74!79)))

(declare-fun b!4858661 () Bool)

(assert (=> b!4858661 (= e!3037496 (= (last!405 (++!12139 lt!1991781 lt!1991778)) (last!405 lt!1991781)))))

(declare-fun b!4858662 () Bool)

(declare-fun e!3037497 () Bool)

(assert (=> b!4858662 (= e!3037498 e!3037497)))

(declare-fun res!2074131 () Bool)

(assert (=> b!4858662 (=> (not res!2074131) (not e!3037497))))

(assert (=> b!4858662 (= res!2074131 (not (isEmpty!29840 lt!1991778)))))

(declare-fun b!4858663 () Bool)

(assert (=> b!4858663 (= e!3037497 (= (last!405 (++!12139 lt!1991781 lt!1991778)) (last!405 lt!1991778)))))

(assert (= (and d!1559586 res!2074130) b!4858661))

(assert (= (and d!1559586 (not res!2074129)) b!4858662))

(assert (= (and b!4858662 res!2074131) b!4858663))

(assert (=> d!1559586 m!5856416))

(assert (=> b!4858661 m!5856392))

(assert (=> b!4858661 m!5856392))

(assert (=> b!4858661 m!5856394))

(assert (=> b!4858661 m!5856396))

(assert (=> b!4858662 m!5856416))

(assert (=> b!4858663 m!5856392))

(assert (=> b!4858663 m!5856392))

(assert (=> b!4858663 m!5856394))

(assert (=> b!4858663 m!5856398))

(assert (=> d!1559494 d!1559586))

(assert (=> d!1559494 d!1559578))

(assert (=> d!1559494 d!1559518))

(declare-fun d!1559588 () Bool)

(declare-fun res!2074132 () Bool)

(declare-fun e!3037499 () Bool)

(assert (=> d!1559588 (=> (not res!2074132) (not e!3037499))))

(assert (=> d!1559588 (= res!2074132 (= (csize!29298 (left!40521 t!4677)) (+ (size!36738 (left!40521 (left!40521 t!4677))) (size!36738 (right!40851 (left!40521 t!4677))))))))

(assert (=> d!1559588 (= (inv!71611 (left!40521 t!4677)) e!3037499)))

(declare-fun b!4858664 () Bool)

(declare-fun res!2074133 () Bool)

(assert (=> b!4858664 (=> (not res!2074133) (not e!3037499))))

(assert (=> b!4858664 (= res!2074133 (and (not (= (left!40521 (left!40521 t!4677)) Empty!14534)) (not (= (right!40851 (left!40521 t!4677)) Empty!14534))))))

(declare-fun b!4858665 () Bool)

(declare-fun res!2074134 () Bool)

(assert (=> b!4858665 (=> (not res!2074134) (not e!3037499))))

(assert (=> b!4858665 (= res!2074134 (= (cheight!14745 (left!40521 t!4677)) (+ (max!0 (height!1913 (left!40521 (left!40521 t!4677))) (height!1913 (right!40851 (left!40521 t!4677)))) 1)))))

(declare-fun b!4858666 () Bool)

(assert (=> b!4858666 (= e!3037499 (<= 0 (cheight!14745 (left!40521 t!4677))))))

(assert (= (and d!1559588 res!2074132) b!4858664))

(assert (= (and b!4858664 res!2074133) b!4858665))

(assert (= (and b!4858665 res!2074134) b!4858666))

(declare-fun m!5856806 () Bool)

(assert (=> d!1559588 m!5856806))

(declare-fun m!5856808 () Bool)

(assert (=> d!1559588 m!5856808))

(declare-fun m!5856810 () Bool)

(assert (=> b!4858665 m!5856810))

(declare-fun m!5856812 () Bool)

(assert (=> b!4858665 m!5856812))

(assert (=> b!4858665 m!5856810))

(assert (=> b!4858665 m!5856812))

(declare-fun m!5856814 () Bool)

(assert (=> b!4858665 m!5856814))

(assert (=> b!4858508 d!1559588))

(declare-fun d!1559590 () Bool)

(declare-fun lt!1991863 () Bool)

(assert (=> d!1559590 (= lt!1991863 (select (content!9939 lt!1991778) lt!1991841))))

(declare-fun e!3037501 () Bool)

(assert (=> d!1559590 (= lt!1991863 e!3037501)))

(declare-fun res!2074136 () Bool)

(assert (=> d!1559590 (=> (not res!2074136) (not e!3037501))))

(assert (=> d!1559590 (= res!2074136 ((_ is Cons!55754) lt!1991778))))

(assert (=> d!1559590 (= (contains!19367 lt!1991778 lt!1991841) lt!1991863)))

(declare-fun b!4858667 () Bool)

(declare-fun e!3037500 () Bool)

(assert (=> b!4858667 (= e!3037501 e!3037500)))

(declare-fun res!2074135 () Bool)

(assert (=> b!4858667 (=> res!2074135 e!3037500)))

(assert (=> b!4858667 (= res!2074135 (= (h!62202 lt!1991778) lt!1991841))))

(declare-fun b!4858668 () Bool)

(assert (=> b!4858668 (= e!3037500 (contains!19367 (t!363476 lt!1991778) lt!1991841))))

(assert (= (and d!1559590 res!2074136) b!4858667))

(assert (= (and b!4858667 (not res!2074135)) b!4858668))

(assert (=> d!1559590 m!5856630))

(declare-fun m!5856816 () Bool)

(assert (=> d!1559590 m!5856816))

(declare-fun m!5856818 () Bool)

(assert (=> b!4858668 m!5856818))

(assert (=> d!1559528 d!1559590))

(assert (=> d!1559528 d!1559508))

(declare-fun d!1559592 () Bool)

(assert (=> d!1559592 (= (list!17429 (xs!17840 (left!40521 t!4677))) (innerList!14622 (xs!17840 (left!40521 t!4677))))))

(assert (=> b!4858494 d!1559592))

(declare-fun b!4858669 () Bool)

(declare-fun e!3037502 () List!55878)

(assert (=> b!4858669 (= e!3037502 (list!17428 (right!40851 (right!40851 t!4677))))))

(declare-fun b!4858670 () Bool)

(assert (=> b!4858670 (= e!3037502 (Cons!55754 (h!62202 (list!17428 (left!40521 (right!40851 t!4677)))) (++!12139 (t!363476 (list!17428 (left!40521 (right!40851 t!4677)))) (list!17428 (right!40851 (right!40851 t!4677))))))))

(declare-fun b!4858671 () Bool)

(declare-fun res!2074138 () Bool)

(declare-fun e!3037503 () Bool)

(assert (=> b!4858671 (=> (not res!2074138) (not e!3037503))))

(declare-fun lt!1991864 () List!55878)

(assert (=> b!4858671 (= res!2074138 (= (size!36736 lt!1991864) (+ (size!36736 (list!17428 (left!40521 (right!40851 t!4677)))) (size!36736 (list!17428 (right!40851 (right!40851 t!4677)))))))))

(declare-fun b!4858672 () Bool)

(assert (=> b!4858672 (= e!3037503 (or (not (= (list!17428 (right!40851 (right!40851 t!4677))) Nil!55754)) (= lt!1991864 (list!17428 (left!40521 (right!40851 t!4677))))))))

(declare-fun d!1559594 () Bool)

(assert (=> d!1559594 e!3037503))

(declare-fun res!2074137 () Bool)

(assert (=> d!1559594 (=> (not res!2074137) (not e!3037503))))

(assert (=> d!1559594 (= res!2074137 (= (content!9939 lt!1991864) ((_ map or) (content!9939 (list!17428 (left!40521 (right!40851 t!4677)))) (content!9939 (list!17428 (right!40851 (right!40851 t!4677)))))))))

(assert (=> d!1559594 (= lt!1991864 e!3037502)))

(declare-fun c!826566 () Bool)

(assert (=> d!1559594 (= c!826566 ((_ is Nil!55754) (list!17428 (left!40521 (right!40851 t!4677)))))))

(assert (=> d!1559594 (= (++!12139 (list!17428 (left!40521 (right!40851 t!4677))) (list!17428 (right!40851 (right!40851 t!4677)))) lt!1991864)))

(assert (= (and d!1559594 c!826566) b!4858669))

(assert (= (and d!1559594 (not c!826566)) b!4858670))

(assert (= (and d!1559594 res!2074137) b!4858671))

(assert (= (and b!4858671 res!2074138) b!4858672))

(assert (=> b!4858670 m!5856512))

(declare-fun m!5856820 () Bool)

(assert (=> b!4858670 m!5856820))

(declare-fun m!5856822 () Bool)

(assert (=> b!4858671 m!5856822))

(assert (=> b!4858671 m!5856518))

(declare-fun m!5856824 () Bool)

(assert (=> b!4858671 m!5856824))

(assert (=> b!4858671 m!5856512))

(declare-fun m!5856826 () Bool)

(assert (=> b!4858671 m!5856826))

(declare-fun m!5856828 () Bool)

(assert (=> d!1559594 m!5856828))

(assert (=> d!1559594 m!5856518))

(declare-fun m!5856830 () Bool)

(assert (=> d!1559594 m!5856830))

(assert (=> d!1559594 m!5856512))

(declare-fun m!5856832 () Bool)

(assert (=> d!1559594 m!5856832))

(assert (=> b!4858489 d!1559594))

(assert (=> b!4858489 d!1559572))

(assert (=> b!4858489 d!1559574))

(assert (=> b!4858438 d!1559566))

(declare-fun d!1559596 () Bool)

(declare-fun res!2074143 () Bool)

(declare-fun e!3037506 () Bool)

(assert (=> d!1559596 (=> (not res!2074143) (not e!3037506))))

(assert (=> d!1559596 (= res!2074143 (<= (size!36736 (list!17429 (xs!17840 (left!40521 t!4677)))) 512))))

(assert (=> d!1559596 (= (inv!71612 (left!40521 t!4677)) e!3037506)))

(declare-fun b!4858677 () Bool)

(declare-fun res!2074144 () Bool)

(assert (=> b!4858677 (=> (not res!2074144) (not e!3037506))))

(assert (=> b!4858677 (= res!2074144 (= (csize!29299 (left!40521 t!4677)) (size!36736 (list!17429 (xs!17840 (left!40521 t!4677))))))))

(declare-fun b!4858678 () Bool)

(assert (=> b!4858678 (= e!3037506 (and (> (csize!29299 (left!40521 t!4677)) 0) (<= (csize!29299 (left!40521 t!4677)) 512)))))

(assert (= (and d!1559596 res!2074143) b!4858677))

(assert (= (and b!4858677 res!2074144) b!4858678))

(assert (=> d!1559596 m!5856562))

(assert (=> d!1559596 m!5856562))

(declare-fun m!5856834 () Bool)

(assert (=> d!1559596 m!5856834))

(assert (=> b!4858677 m!5856562))

(assert (=> b!4858677 m!5856562))

(assert (=> b!4858677 m!5856834))

(assert (=> b!4858510 d!1559596))

(declare-fun d!1559598 () Bool)

(declare-fun lt!1991867 () T!98672)

(assert (=> d!1559598 (= lt!1991867 (last!405 (list!17429 (xs!17840 (right!40851 t!4677)))))))

(declare-fun choose!35565 (IArray!29129) T!98672)

(assert (=> d!1559598 (= lt!1991867 (choose!35565 (xs!17840 (right!40851 t!4677))))))

(declare-fun size!36740 (IArray!29129) Int)

(assert (=> d!1559598 (> (size!36740 (xs!17840 (right!40851 t!4677))) 0)))

(assert (=> d!1559598 (= (last!407 (xs!17840 (right!40851 t!4677))) lt!1991867)))

(declare-fun bs!1173819 () Bool)

(assert (= bs!1173819 d!1559598))

(assert (=> bs!1173819 m!5856554))

(assert (=> bs!1173819 m!5856554))

(declare-fun m!5856836 () Bool)

(assert (=> bs!1173819 m!5856836))

(declare-fun m!5856838 () Bool)

(assert (=> bs!1173819 m!5856838))

(declare-fun m!5856840 () Bool)

(assert (=> bs!1173819 m!5856840))

(assert (=> b!4858437 d!1559598))

(declare-fun d!1559600 () Bool)

(declare-fun lt!1991868 () T!98672)

(assert (=> d!1559600 (contains!19367 (t!363476 (list!17428 t!4677)) lt!1991868)))

(declare-fun e!3037507 () T!98672)

(assert (=> d!1559600 (= lt!1991868 e!3037507)))

(declare-fun c!826567 () Bool)

(assert (=> d!1559600 (= c!826567 (and ((_ is Cons!55754) (t!363476 (list!17428 t!4677))) ((_ is Nil!55754) (t!363476 (t!363476 (list!17428 t!4677))))))))

(assert (=> d!1559600 (not (isEmpty!29840 (t!363476 (list!17428 t!4677))))))

(assert (=> d!1559600 (= (last!405 (t!363476 (list!17428 t!4677))) lt!1991868)))

(declare-fun b!4858679 () Bool)

(assert (=> b!4858679 (= e!3037507 (h!62202 (t!363476 (list!17428 t!4677))))))

(declare-fun b!4858680 () Bool)

(assert (=> b!4858680 (= e!3037507 (last!405 (t!363476 (t!363476 (list!17428 t!4677)))))))

(assert (= (and d!1559600 c!826567) b!4858679))

(assert (= (and d!1559600 (not c!826567)) b!4858680))

(declare-fun m!5856842 () Bool)

(assert (=> d!1559600 m!5856842))

(declare-fun m!5856844 () Bool)

(assert (=> d!1559600 m!5856844))

(declare-fun m!5856846 () Bool)

(assert (=> b!4858680 m!5856846))

(assert (=> b!4858444 d!1559600))

(declare-fun d!1559602 () Bool)

(declare-fun lt!1991869 () T!98672)

(assert (=> d!1559602 (contains!19367 (t!363476 lt!1991781) lt!1991869)))

(declare-fun e!3037508 () T!98672)

(assert (=> d!1559602 (= lt!1991869 e!3037508)))

(declare-fun c!826568 () Bool)

(assert (=> d!1559602 (= c!826568 (and ((_ is Cons!55754) (t!363476 lt!1991781)) ((_ is Nil!55754) (t!363476 (t!363476 lt!1991781)))))))

(assert (=> d!1559602 (not (isEmpty!29840 (t!363476 lt!1991781)))))

(assert (=> d!1559602 (= (last!405 (t!363476 lt!1991781)) lt!1991869)))

(declare-fun b!4858681 () Bool)

(assert (=> b!4858681 (= e!3037508 (h!62202 (t!363476 lt!1991781)))))

(declare-fun b!4858682 () Bool)

(assert (=> b!4858682 (= e!3037508 (last!405 (t!363476 (t!363476 lt!1991781))))))

(assert (= (and d!1559602 c!826568) b!4858681))

(assert (= (and d!1559602 (not c!826568)) b!4858682))

(declare-fun m!5856848 () Bool)

(assert (=> d!1559602 m!5856848))

(declare-fun m!5856850 () Bool)

(assert (=> d!1559602 m!5856850))

(declare-fun m!5856852 () Bool)

(assert (=> b!4858682 m!5856852))

(assert (=> b!4858562 d!1559602))

(declare-fun d!1559604 () Bool)

(assert (=> d!1559604 (= (inv!71607 (xs!17840 (left!40521 t!4677))) (<= (size!36736 (innerList!14622 (xs!17840 (left!40521 t!4677)))) 2147483647))))

(declare-fun bs!1173820 () Bool)

(assert (= bs!1173820 d!1559604))

(declare-fun m!5856854 () Bool)

(assert (=> bs!1173820 m!5856854))

(assert (=> b!4858579 d!1559604))

(assert (=> b!4858375 d!1559582))

(assert (=> b!4858375 d!1559584))

(assert (=> b!4858468 d!1559516))

(assert (=> b!4858468 d!1559518))

(assert (=> b!4858468 d!1559528))

(declare-fun d!1559606 () Bool)

(declare-fun lt!1991870 () Bool)

(assert (=> d!1559606 (= lt!1991870 (isEmpty!29840 (list!17428 (left!40521 t!4677))))))

(assert (=> d!1559606 (= lt!1991870 (= (size!36738 (left!40521 t!4677)) 0))))

(assert (=> d!1559606 (= (isEmpty!29841 (left!40521 t!4677)) lt!1991870)))

(declare-fun bs!1173821 () Bool)

(assert (= bs!1173821 d!1559606))

(assert (=> bs!1173821 m!5856406))

(assert (=> bs!1173821 m!5856406))

(declare-fun m!5856856 () Bool)

(assert (=> bs!1173821 m!5856856))

(assert (=> bs!1173821 m!5856714))

(assert (=> b!4858374 d!1559606))

(assert (=> b!4858467 d!1559508))

(declare-fun d!1559608 () Bool)

(declare-fun lt!1991873 () Int)

(assert (=> d!1559608 (>= lt!1991873 0)))

(declare-fun e!3037511 () Int)

(assert (=> d!1559608 (= lt!1991873 e!3037511)))

(declare-fun c!826571 () Bool)

(assert (=> d!1559608 (= c!826571 ((_ is Nil!55754) (innerList!14622 (xs!17840 t!4677))))))

(assert (=> d!1559608 (= (size!36736 (innerList!14622 (xs!17840 t!4677))) lt!1991873)))

(declare-fun b!4858687 () Bool)

(assert (=> b!4858687 (= e!3037511 0)))

(declare-fun b!4858688 () Bool)

(assert (=> b!4858688 (= e!3037511 (+ 1 (size!36736 (t!363476 (innerList!14622 (xs!17840 t!4677))))))))

(assert (= (and d!1559608 c!826571) b!4858687))

(assert (= (and d!1559608 (not c!826571)) b!4858688))

(declare-fun m!5856858 () Bool)

(assert (=> b!4858688 m!5856858))

(assert (=> d!1559464 d!1559608))

(declare-fun b!4858689 () Bool)

(declare-fun e!3037512 () List!55878)

(assert (=> b!4858689 (= e!3037512 lt!1991778)))

(declare-fun b!4858690 () Bool)

(assert (=> b!4858690 (= e!3037512 (Cons!55754 (h!62202 (t!363476 lt!1991781)) (++!12139 (t!363476 (t!363476 lt!1991781)) lt!1991778)))))

(declare-fun b!4858691 () Bool)

(declare-fun res!2074146 () Bool)

(declare-fun e!3037513 () Bool)

(assert (=> b!4858691 (=> (not res!2074146) (not e!3037513))))

(declare-fun lt!1991874 () List!55878)

(assert (=> b!4858691 (= res!2074146 (= (size!36736 lt!1991874) (+ (size!36736 (t!363476 lt!1991781)) (size!36736 lt!1991778))))))

(declare-fun b!4858692 () Bool)

(assert (=> b!4858692 (= e!3037513 (or (not (= lt!1991778 Nil!55754)) (= lt!1991874 (t!363476 lt!1991781))))))

(declare-fun d!1559610 () Bool)

(assert (=> d!1559610 e!3037513))

(declare-fun res!2074145 () Bool)

(assert (=> d!1559610 (=> (not res!2074145) (not e!3037513))))

(assert (=> d!1559610 (= res!2074145 (= (content!9939 lt!1991874) ((_ map or) (content!9939 (t!363476 lt!1991781)) (content!9939 lt!1991778))))))

(assert (=> d!1559610 (= lt!1991874 e!3037512)))

(declare-fun c!826572 () Bool)

(assert (=> d!1559610 (= c!826572 ((_ is Nil!55754) (t!363476 lt!1991781)))))

(assert (=> d!1559610 (= (++!12139 (t!363476 lt!1991781) lt!1991778) lt!1991874)))

(assert (= (and d!1559610 c!826572) b!4858689))

(assert (= (and d!1559610 (not c!826572)) b!4858690))

(assert (= (and d!1559610 res!2074145) b!4858691))

(assert (= (and b!4858691 res!2074146) b!4858692))

(declare-fun m!5856860 () Bool)

(assert (=> b!4858690 m!5856860))

(declare-fun m!5856862 () Bool)

(assert (=> b!4858691 m!5856862))

(declare-fun m!5856864 () Bool)

(assert (=> b!4858691 m!5856864))

(assert (=> b!4858691 m!5856624))

(declare-fun m!5856866 () Bool)

(assert (=> d!1559610 m!5856866))

(declare-fun m!5856868 () Bool)

(assert (=> d!1559610 m!5856868))

(assert (=> d!1559610 m!5856630))

(assert (=> b!4858558 d!1559610))

(declare-fun d!1559612 () Bool)

(declare-fun lt!1991875 () Int)

(assert (=> d!1559612 (>= lt!1991875 0)))

(declare-fun e!3037514 () Int)

(assert (=> d!1559612 (= lt!1991875 e!3037514)))

(declare-fun c!826573 () Bool)

(assert (=> d!1559612 (= c!826573 ((_ is Nil!55754) lt!1991839))))

(assert (=> d!1559612 (= (size!36736 lt!1991839) lt!1991875)))

(declare-fun b!4858693 () Bool)

(assert (=> b!4858693 (= e!3037514 0)))

(declare-fun b!4858694 () Bool)

(assert (=> b!4858694 (= e!3037514 (+ 1 (size!36736 (t!363476 lt!1991839))))))

(assert (= (and d!1559612 c!826573) b!4858693))

(assert (= (and d!1559612 (not c!826573)) b!4858694))

(declare-fun m!5856870 () Bool)

(assert (=> b!4858694 m!5856870))

(assert (=> b!4858559 d!1559612))

(declare-fun d!1559614 () Bool)

(declare-fun lt!1991876 () Int)

(assert (=> d!1559614 (>= lt!1991876 0)))

(declare-fun e!3037515 () Int)

(assert (=> d!1559614 (= lt!1991876 e!3037515)))

(declare-fun c!826574 () Bool)

(assert (=> d!1559614 (= c!826574 ((_ is Nil!55754) lt!1991781))))

(assert (=> d!1559614 (= (size!36736 lt!1991781) lt!1991876)))

(declare-fun b!4858695 () Bool)

(assert (=> b!4858695 (= e!3037515 0)))

(declare-fun b!4858696 () Bool)

(assert (=> b!4858696 (= e!3037515 (+ 1 (size!36736 (t!363476 lt!1991781))))))

(assert (= (and d!1559614 c!826574) b!4858695))

(assert (= (and d!1559614 (not c!826574)) b!4858696))

(assert (=> b!4858696 m!5856864))

(assert (=> b!4858559 d!1559614))

(declare-fun d!1559616 () Bool)

(declare-fun lt!1991877 () Int)

(assert (=> d!1559616 (>= lt!1991877 0)))

(declare-fun e!3037516 () Int)

(assert (=> d!1559616 (= lt!1991877 e!3037516)))

(declare-fun c!826575 () Bool)

(assert (=> d!1559616 (= c!826575 ((_ is Nil!55754) lt!1991778))))

(assert (=> d!1559616 (= (size!36736 lt!1991778) lt!1991877)))

(declare-fun b!4858697 () Bool)

(assert (=> b!4858697 (= e!3037516 0)))

(declare-fun b!4858698 () Bool)

(assert (=> b!4858698 (= e!3037516 (+ 1 (size!36736 (t!363476 lt!1991778))))))

(assert (= (and d!1559616 c!826575) b!4858697))

(assert (= (and d!1559616 (not c!826575)) b!4858698))

(declare-fun m!5856872 () Bool)

(assert (=> b!4858698 m!5856872))

(assert (=> b!4858559 d!1559616))

(declare-fun d!1559618 () Bool)

(declare-fun c!826576 () Bool)

(assert (=> d!1559618 (= c!826576 ((_ is Node!14534) (left!40521 (left!40521 t!4677))))))

(declare-fun e!3037517 () Bool)

(assert (=> d!1559618 (= (inv!71608 (left!40521 (left!40521 t!4677))) e!3037517)))

(declare-fun b!4858699 () Bool)

(assert (=> b!4858699 (= e!3037517 (inv!71611 (left!40521 (left!40521 t!4677))))))

(declare-fun b!4858700 () Bool)

(declare-fun e!3037518 () Bool)

(assert (=> b!4858700 (= e!3037517 e!3037518)))

(declare-fun res!2074147 () Bool)

(assert (=> b!4858700 (= res!2074147 (not ((_ is Leaf!24216) (left!40521 (left!40521 t!4677)))))))

(assert (=> b!4858700 (=> res!2074147 e!3037518)))

(declare-fun b!4858701 () Bool)

(assert (=> b!4858701 (= e!3037518 (inv!71612 (left!40521 (left!40521 t!4677))))))

(assert (= (and d!1559618 c!826576) b!4858699))

(assert (= (and d!1559618 (not c!826576)) b!4858700))

(assert (= (and b!4858700 (not res!2074147)) b!4858701))

(declare-fun m!5856874 () Bool)

(assert (=> b!4858699 m!5856874))

(declare-fun m!5856876 () Bool)

(assert (=> b!4858701 m!5856876))

(assert (=> b!4858578 d!1559618))

(declare-fun d!1559620 () Bool)

(declare-fun c!826577 () Bool)

(assert (=> d!1559620 (= c!826577 ((_ is Node!14534) (right!40851 (left!40521 t!4677))))))

(declare-fun e!3037519 () Bool)

(assert (=> d!1559620 (= (inv!71608 (right!40851 (left!40521 t!4677))) e!3037519)))

(declare-fun b!4858702 () Bool)

(assert (=> b!4858702 (= e!3037519 (inv!71611 (right!40851 (left!40521 t!4677))))))

(declare-fun b!4858703 () Bool)

(declare-fun e!3037520 () Bool)

(assert (=> b!4858703 (= e!3037519 e!3037520)))

(declare-fun res!2074148 () Bool)

(assert (=> b!4858703 (= res!2074148 (not ((_ is Leaf!24216) (right!40851 (left!40521 t!4677)))))))

(assert (=> b!4858703 (=> res!2074148 e!3037520)))

(declare-fun b!4858704 () Bool)

(assert (=> b!4858704 (= e!3037520 (inv!71612 (right!40851 (left!40521 t!4677))))))

(assert (= (and d!1559620 c!826577) b!4858702))

(assert (= (and d!1559620 (not c!826577)) b!4858703))

(assert (= (and b!4858703 (not res!2074148)) b!4858704))

(declare-fun m!5856878 () Bool)

(assert (=> b!4858702 m!5856878))

(declare-fun m!5856880 () Bool)

(assert (=> b!4858704 m!5856880))

(assert (=> b!4858578 d!1559620))

(assert (=> b!4858434 d!1559558))

(assert (=> b!4858434 d!1559560))

(declare-fun d!1559622 () Bool)

(declare-fun lt!1991878 () T!98672)

(assert (=> d!1559622 (contains!19367 lt!1991806 lt!1991878)))

(declare-fun e!3037521 () T!98672)

(assert (=> d!1559622 (= lt!1991878 e!3037521)))

(declare-fun c!826578 () Bool)

(assert (=> d!1559622 (= c!826578 (and ((_ is Cons!55754) lt!1991806) ((_ is Nil!55754) (t!363476 lt!1991806))))))

(assert (=> d!1559622 (not (isEmpty!29840 lt!1991806))))

(assert (=> d!1559622 (= (last!405 lt!1991806) lt!1991878)))

(declare-fun b!4858705 () Bool)

(assert (=> b!4858705 (= e!3037521 (h!62202 lt!1991806))))

(declare-fun b!4858706 () Bool)

(assert (=> b!4858706 (= e!3037521 (last!405 (t!363476 lt!1991806)))))

(assert (= (and d!1559622 c!826578) b!4858705))

(assert (= (and d!1559622 (not c!826578)) b!4858706))

(declare-fun m!5856882 () Bool)

(assert (=> d!1559622 m!5856882))

(assert (=> d!1559622 m!5856500))

(declare-fun m!5856884 () Bool)

(assert (=> b!4858706 m!5856884))

(assert (=> b!4858434 d!1559622))

(declare-fun d!1559624 () Bool)

(declare-fun res!2074150 () Bool)

(declare-fun e!3037522 () Bool)

(assert (=> d!1559624 (=> res!2074150 e!3037522)))

(assert (=> d!1559624 (= res!2074150 (not ((_ is Node!14534) (left!40521 t!4677))))))

(assert (=> d!1559624 (= (isBalanced!3940 (left!40521 t!4677)) e!3037522)))

(declare-fun b!4858707 () Bool)

(declare-fun res!2074153 () Bool)

(declare-fun e!3037523 () Bool)

(assert (=> b!4858707 (=> (not res!2074153) (not e!3037523))))

(assert (=> b!4858707 (= res!2074153 (not (isEmpty!29841 (left!40521 (left!40521 t!4677)))))))

(declare-fun b!4858708 () Bool)

(declare-fun res!2074151 () Bool)

(assert (=> b!4858708 (=> (not res!2074151) (not e!3037523))))

(assert (=> b!4858708 (= res!2074151 (<= (- (height!1913 (left!40521 (left!40521 t!4677))) (height!1913 (right!40851 (left!40521 t!4677)))) 1))))

(declare-fun b!4858709 () Bool)

(declare-fun res!2074152 () Bool)

(assert (=> b!4858709 (=> (not res!2074152) (not e!3037523))))

(assert (=> b!4858709 (= res!2074152 (isBalanced!3940 (right!40851 (left!40521 t!4677))))))

(declare-fun b!4858710 () Bool)

(declare-fun res!2074149 () Bool)

(assert (=> b!4858710 (=> (not res!2074149) (not e!3037523))))

(assert (=> b!4858710 (= res!2074149 (isBalanced!3940 (left!40521 (left!40521 t!4677))))))

(declare-fun b!4858711 () Bool)

(assert (=> b!4858711 (= e!3037522 e!3037523)))

(declare-fun res!2074154 () Bool)

(assert (=> b!4858711 (=> (not res!2074154) (not e!3037523))))

(assert (=> b!4858711 (= res!2074154 (<= (- 1) (- (height!1913 (left!40521 (left!40521 t!4677))) (height!1913 (right!40851 (left!40521 t!4677))))))))

(declare-fun b!4858712 () Bool)

(assert (=> b!4858712 (= e!3037523 (not (isEmpty!29841 (right!40851 (left!40521 t!4677)))))))

(assert (= (and d!1559624 (not res!2074150)) b!4858711))

(assert (= (and b!4858711 res!2074154) b!4858708))

(assert (= (and b!4858708 res!2074151) b!4858710))

(assert (= (and b!4858710 res!2074149) b!4858709))

(assert (= (and b!4858709 res!2074152) b!4858707))

(assert (= (and b!4858707 res!2074153) b!4858712))

(declare-fun m!5856886 () Bool)

(assert (=> b!4858707 m!5856886))

(assert (=> b!4858711 m!5856810))

(assert (=> b!4858711 m!5856812))

(declare-fun m!5856888 () Bool)

(assert (=> b!4858710 m!5856888))

(assert (=> b!4858708 m!5856810))

(assert (=> b!4858708 m!5856812))

(declare-fun m!5856890 () Bool)

(assert (=> b!4858709 m!5856890))

(declare-fun m!5856892 () Bool)

(assert (=> b!4858712 m!5856892))

(assert (=> b!4858377 d!1559624))

(assert (=> b!4858376 d!1559532))

(declare-fun d!1559626 () Bool)

(assert (=> d!1559626 (= (list!17429 (xs!17840 t!4677)) (innerList!14622 (xs!17840 t!4677)))))

(assert (=> b!4858498 d!1559626))

(declare-fun d!1559628 () Bool)

(declare-fun lt!1991879 () Bool)

(assert (=> d!1559628 (= lt!1991879 (select (content!9939 lt!1991781) lt!1991840))))

(declare-fun e!3037525 () Bool)

(assert (=> d!1559628 (= lt!1991879 e!3037525)))

(declare-fun res!2074156 () Bool)

(assert (=> d!1559628 (=> (not res!2074156) (not e!3037525))))

(assert (=> d!1559628 (= res!2074156 ((_ is Cons!55754) lt!1991781))))

(assert (=> d!1559628 (= (contains!19367 lt!1991781 lt!1991840) lt!1991879)))

(declare-fun b!4858713 () Bool)

(declare-fun e!3037524 () Bool)

(assert (=> b!4858713 (= e!3037525 e!3037524)))

(declare-fun res!2074155 () Bool)

(assert (=> b!4858713 (=> res!2074155 e!3037524)))

(assert (=> b!4858713 (= res!2074155 (= (h!62202 lt!1991781) lt!1991840))))

(declare-fun b!4858714 () Bool)

(assert (=> b!4858714 (= e!3037524 (contains!19367 (t!363476 lt!1991781) lt!1991840))))

(assert (= (and d!1559628 res!2074156) b!4858713))

(assert (= (and b!4858713 (not res!2074155)) b!4858714))

(assert (=> d!1559628 m!5856628))

(declare-fun m!5856894 () Bool)

(assert (=> d!1559628 m!5856894))

(declare-fun m!5856896 () Bool)

(assert (=> b!4858714 m!5856896))

(assert (=> d!1559526 d!1559628))

(declare-fun d!1559630 () Bool)

(assert (=> d!1559630 (= (isEmpty!29840 lt!1991781) ((_ is Nil!55754) lt!1991781))))

(assert (=> d!1559526 d!1559630))

(declare-fun d!1559632 () Bool)

(declare-fun c!826581 () Bool)

(assert (=> d!1559632 (= c!826581 ((_ is Nil!55754) lt!1991839))))

(declare-fun e!3037528 () (InoxSet T!98672))

(assert (=> d!1559632 (= (content!9939 lt!1991839) e!3037528)))

(declare-fun b!4858719 () Bool)

(assert (=> b!4858719 (= e!3037528 ((as const (Array T!98672 Bool)) false))))

(declare-fun b!4858720 () Bool)

(assert (=> b!4858720 (= e!3037528 ((_ map or) (store ((as const (Array T!98672 Bool)) false) (h!62202 lt!1991839) true) (content!9939 (t!363476 lt!1991839))))))

(assert (= (and d!1559632 c!826581) b!4858719))

(assert (= (and d!1559632 (not c!826581)) b!4858720))

(declare-fun m!5856898 () Bool)

(assert (=> b!4858720 m!5856898))

(declare-fun m!5856900 () Bool)

(assert (=> b!4858720 m!5856900))

(assert (=> d!1559518 d!1559632))

(declare-fun d!1559634 () Bool)

(declare-fun c!826582 () Bool)

(assert (=> d!1559634 (= c!826582 ((_ is Nil!55754) lt!1991781))))

(declare-fun e!3037529 () (InoxSet T!98672))

(assert (=> d!1559634 (= (content!9939 lt!1991781) e!3037529)))

(declare-fun b!4858721 () Bool)

(assert (=> b!4858721 (= e!3037529 ((as const (Array T!98672 Bool)) false))))

(declare-fun b!4858722 () Bool)

(assert (=> b!4858722 (= e!3037529 ((_ map or) (store ((as const (Array T!98672 Bool)) false) (h!62202 lt!1991781) true) (content!9939 (t!363476 lt!1991781))))))

(assert (= (and d!1559634 c!826582) b!4858721))

(assert (= (and d!1559634 (not c!826582)) b!4858722))

(declare-fun m!5856902 () Bool)

(assert (=> b!4858722 m!5856902))

(assert (=> b!4858722 m!5856868))

(assert (=> d!1559518 d!1559634))

(declare-fun d!1559636 () Bool)

(declare-fun c!826583 () Bool)

(assert (=> d!1559636 (= c!826583 ((_ is Nil!55754) lt!1991778))))

(declare-fun e!3037530 () (InoxSet T!98672))

(assert (=> d!1559636 (= (content!9939 lt!1991778) e!3037530)))

(declare-fun b!4858723 () Bool)

(assert (=> b!4858723 (= e!3037530 ((as const (Array T!98672 Bool)) false))))

(declare-fun b!4858724 () Bool)

(assert (=> b!4858724 (= e!3037530 ((_ map or) (store ((as const (Array T!98672 Bool)) false) (h!62202 lt!1991778) true) (content!9939 (t!363476 lt!1991778))))))

(assert (= (and d!1559636 c!826583) b!4858723))

(assert (= (and d!1559636 (not c!826583)) b!4858724))

(declare-fun m!5856904 () Bool)

(assert (=> b!4858724 m!5856904))

(declare-fun m!5856906 () Bool)

(assert (=> b!4858724 m!5856906))

(assert (=> d!1559518 d!1559636))

(declare-fun d!1559638 () Bool)

(declare-fun res!2074157 () Bool)

(declare-fun e!3037531 () Bool)

(assert (=> d!1559638 (=> (not res!2074157) (not e!3037531))))

(assert (=> d!1559638 (= res!2074157 (<= (size!36736 (list!17429 (xs!17840 (right!40851 t!4677)))) 512))))

(assert (=> d!1559638 (= (inv!71612 (right!40851 t!4677)) e!3037531)))

(declare-fun b!4858725 () Bool)

(declare-fun res!2074158 () Bool)

(assert (=> b!4858725 (=> (not res!2074158) (not e!3037531))))

(assert (=> b!4858725 (= res!2074158 (= (csize!29299 (right!40851 t!4677)) (size!36736 (list!17429 (xs!17840 (right!40851 t!4677))))))))

(declare-fun b!4858726 () Bool)

(assert (=> b!4858726 (= e!3037531 (and (> (csize!29299 (right!40851 t!4677)) 0) (<= (csize!29299 (right!40851 t!4677)) 512)))))

(assert (= (and d!1559638 res!2074157) b!4858725))

(assert (= (and b!4858725 res!2074158) b!4858726))

(assert (=> d!1559638 m!5856554))

(assert (=> d!1559638 m!5856554))

(declare-fun m!5856908 () Bool)

(assert (=> d!1559638 m!5856908))

(assert (=> b!4858725 m!5856554))

(assert (=> b!4858725 m!5856554))

(assert (=> b!4858725 m!5856908))

(assert (=> b!4858513 d!1559638))

(assert (=> b!4858466 d!1559516))

(assert (=> b!4858466 d!1559518))

(assert (=> b!4858466 d!1559526))

(declare-fun d!1559640 () Bool)

(declare-fun res!2074159 () Bool)

(declare-fun e!3037532 () Bool)

(assert (=> d!1559640 (=> (not res!2074159) (not e!3037532))))

(assert (=> d!1559640 (= res!2074159 (<= (size!36736 (list!17429 (xs!17840 t!4677))) 512))))

(assert (=> d!1559640 (= (inv!71612 t!4677) e!3037532)))

(declare-fun b!4858727 () Bool)

(declare-fun res!2074160 () Bool)

(assert (=> b!4858727 (=> (not res!2074160) (not e!3037532))))

(assert (=> b!4858727 (= res!2074160 (= (csize!29299 t!4677) (size!36736 (list!17429 (xs!17840 t!4677)))))))

(declare-fun b!4858728 () Bool)

(assert (=> b!4858728 (= e!3037532 (and (> (csize!29299 t!4677) 0) (<= (csize!29299 t!4677) 512)))))

(assert (= (and d!1559640 res!2074159) b!4858727))

(assert (= (and b!4858727 res!2074160) b!4858728))

(assert (=> d!1559640 m!5856570))

(assert (=> d!1559640 m!5856570))

(declare-fun m!5856910 () Bool)

(assert (=> d!1559640 m!5856910))

(assert (=> b!4858727 m!5856570))

(assert (=> b!4858727 m!5856570))

(assert (=> b!4858727 m!5856910))

(assert (=> b!4858397 d!1559640))

(declare-fun d!1559642 () Bool)

(declare-fun res!2074161 () Bool)

(declare-fun e!3037533 () Bool)

(assert (=> d!1559642 (=> (not res!2074161) (not e!3037533))))

(assert (=> d!1559642 (= res!2074161 (= (csize!29298 (right!40851 t!4677)) (+ (size!36738 (left!40521 (right!40851 t!4677))) (size!36738 (right!40851 (right!40851 t!4677))))))))

(assert (=> d!1559642 (= (inv!71611 (right!40851 t!4677)) e!3037533)))

(declare-fun b!4858729 () Bool)

(declare-fun res!2074162 () Bool)

(assert (=> b!4858729 (=> (not res!2074162) (not e!3037533))))

(assert (=> b!4858729 (= res!2074162 (and (not (= (left!40521 (right!40851 t!4677)) Empty!14534)) (not (= (right!40851 (right!40851 t!4677)) Empty!14534))))))

(declare-fun b!4858730 () Bool)

(declare-fun res!2074163 () Bool)

(assert (=> b!4858730 (=> (not res!2074163) (not e!3037533))))

(assert (=> b!4858730 (= res!2074163 (= (cheight!14745 (right!40851 t!4677)) (+ (max!0 (height!1913 (left!40521 (right!40851 t!4677))) (height!1913 (right!40851 (right!40851 t!4677)))) 1)))))

(declare-fun b!4858731 () Bool)

(assert (=> b!4858731 (= e!3037533 (<= 0 (cheight!14745 (right!40851 t!4677))))))

(assert (= (and d!1559642 res!2074161) b!4858729))

(assert (= (and b!4858729 res!2074162) b!4858730))

(assert (= (and b!4858730 res!2074163) b!4858731))

(declare-fun m!5856912 () Bool)

(assert (=> d!1559642 m!5856912))

(declare-fun m!5856914 () Bool)

(assert (=> d!1559642 m!5856914))

(assert (=> b!4858730 m!5856662))

(assert (=> b!4858730 m!5856664))

(assert (=> b!4858730 m!5856662))

(assert (=> b!4858730 m!5856664))

(declare-fun m!5856916 () Bool)

(assert (=> b!4858730 m!5856916))

(assert (=> b!4858511 d!1559642))

(declare-fun b!4858732 () Bool)

(declare-fun e!3037534 () List!55878)

(assert (=> b!4858732 (= e!3037534 (list!17428 (right!40851 t!4677)))))

(declare-fun b!4858733 () Bool)

(assert (=> b!4858733 (= e!3037534 (Cons!55754 (h!62202 (list!17428 (left!40521 t!4677))) (++!12139 (t!363476 (list!17428 (left!40521 t!4677))) (list!17428 (right!40851 t!4677)))))))

(declare-fun b!4858734 () Bool)

(declare-fun res!2074165 () Bool)

(declare-fun e!3037535 () Bool)

(assert (=> b!4858734 (=> (not res!2074165) (not e!3037535))))

(declare-fun lt!1991880 () List!55878)

(assert (=> b!4858734 (= res!2074165 (= (size!36736 lt!1991880) (+ (size!36736 (list!17428 (left!40521 t!4677))) (size!36736 (list!17428 (right!40851 t!4677))))))))

(declare-fun b!4858735 () Bool)

(assert (=> b!4858735 (= e!3037535 (or (not (= (list!17428 (right!40851 t!4677)) Nil!55754)) (= lt!1991880 (list!17428 (left!40521 t!4677)))))))

(declare-fun d!1559644 () Bool)

(assert (=> d!1559644 e!3037535))

(declare-fun res!2074164 () Bool)

(assert (=> d!1559644 (=> (not res!2074164) (not e!3037535))))

(assert (=> d!1559644 (= res!2074164 (= (content!9939 lt!1991880) ((_ map or) (content!9939 (list!17428 (left!40521 t!4677))) (content!9939 (list!17428 (right!40851 t!4677))))))))

(assert (=> d!1559644 (= lt!1991880 e!3037534)))

(declare-fun c!826584 () Bool)

(assert (=> d!1559644 (= c!826584 ((_ is Nil!55754) (list!17428 (left!40521 t!4677))))))

(assert (=> d!1559644 (= (++!12139 (list!17428 (left!40521 t!4677)) (list!17428 (right!40851 t!4677))) lt!1991880)))

(assert (= (and d!1559644 c!826584) b!4858732))

(assert (= (and d!1559644 (not c!826584)) b!4858733))

(assert (= (and d!1559644 res!2074164) b!4858734))

(assert (= (and b!4858734 res!2074165) b!4858735))

(assert (=> b!4858733 m!5856412))

(declare-fun m!5856918 () Bool)

(assert (=> b!4858733 m!5856918))

(declare-fun m!5856920 () Bool)

(assert (=> b!4858734 m!5856920))

(assert (=> b!4858734 m!5856406))

(declare-fun m!5856922 () Bool)

(assert (=> b!4858734 m!5856922))

(assert (=> b!4858734 m!5856412))

(declare-fun m!5856924 () Bool)

(assert (=> b!4858734 m!5856924))

(declare-fun m!5856926 () Bool)

(assert (=> d!1559644 m!5856926))

(assert (=> d!1559644 m!5856406))

(declare-fun m!5856928 () Bool)

(assert (=> d!1559644 m!5856928))

(assert (=> d!1559644 m!5856412))

(declare-fun m!5856930 () Bool)

(assert (=> d!1559644 m!5856930))

(assert (=> b!4858499 d!1559644))

(assert (=> b!4858499 d!1559504))

(assert (=> b!4858499 d!1559498))

(declare-fun b!4858736 () Bool)

(declare-fun e!3037536 () Bool)

(declare-fun tp!1366722 () Bool)

(assert (=> b!4858736 (= e!3037536 (and tp_is_empty!35527 tp!1366722))))

(assert (=> b!4858583 (= tp!1366719 e!3037536)))

(assert (= (and b!4858583 ((_ is Cons!55754) (innerList!14622 (xs!17840 (right!40851 t!4677))))) b!4858736))

(declare-fun e!3037538 () Bool)

(declare-fun tp!1366724 () Bool)

(declare-fun tp!1366725 () Bool)

(declare-fun b!4858737 () Bool)

(assert (=> b!4858737 (= e!3037538 (and (inv!71608 (left!40521 (left!40521 (left!40521 t!4677)))) tp!1366725 (inv!71608 (right!40851 (left!40521 (left!40521 t!4677)))) tp!1366724))))

(declare-fun b!4858739 () Bool)

(declare-fun e!3037537 () Bool)

(declare-fun tp!1366723 () Bool)

(assert (=> b!4858739 (= e!3037537 tp!1366723)))

(declare-fun b!4858738 () Bool)

(assert (=> b!4858738 (= e!3037538 (and (inv!71607 (xs!17840 (left!40521 (left!40521 t!4677)))) e!3037537))))

(assert (=> b!4858578 (= tp!1366718 (and (inv!71608 (left!40521 (left!40521 t!4677))) e!3037538))))

(assert (= (and b!4858578 ((_ is Node!14534) (left!40521 (left!40521 t!4677)))) b!4858737))

(assert (= b!4858738 b!4858739))

(assert (= (and b!4858578 ((_ is Leaf!24216) (left!40521 (left!40521 t!4677)))) b!4858738))

(declare-fun m!5856932 () Bool)

(assert (=> b!4858737 m!5856932))

(declare-fun m!5856934 () Bool)

(assert (=> b!4858737 m!5856934))

(declare-fun m!5856936 () Bool)

(assert (=> b!4858738 m!5856936))

(assert (=> b!4858578 m!5856642))

(declare-fun e!3037540 () Bool)

(declare-fun tp!1366727 () Bool)

(declare-fun tp!1366728 () Bool)

(declare-fun b!4858740 () Bool)

(assert (=> b!4858740 (= e!3037540 (and (inv!71608 (left!40521 (right!40851 (left!40521 t!4677)))) tp!1366728 (inv!71608 (right!40851 (right!40851 (left!40521 t!4677)))) tp!1366727))))

(declare-fun b!4858742 () Bool)

(declare-fun e!3037539 () Bool)

(declare-fun tp!1366726 () Bool)

(assert (=> b!4858742 (= e!3037539 tp!1366726)))

(declare-fun b!4858741 () Bool)

(assert (=> b!4858741 (= e!3037540 (and (inv!71607 (xs!17840 (right!40851 (left!40521 t!4677)))) e!3037539))))

(assert (=> b!4858578 (= tp!1366717 (and (inv!71608 (right!40851 (left!40521 t!4677))) e!3037540))))

(assert (= (and b!4858578 ((_ is Node!14534) (right!40851 (left!40521 t!4677)))) b!4858740))

(assert (= b!4858741 b!4858742))

(assert (= (and b!4858578 ((_ is Leaf!24216) (right!40851 (left!40521 t!4677)))) b!4858741))

(declare-fun m!5856938 () Bool)

(assert (=> b!4858740 m!5856938))

(declare-fun m!5856940 () Bool)

(assert (=> b!4858740 m!5856940))

(declare-fun m!5856942 () Bool)

(assert (=> b!4858741 m!5856942))

(assert (=> b!4858578 m!5856644))

(declare-fun b!4858743 () Bool)

(declare-fun tp!1366731 () Bool)

(declare-fun tp!1366730 () Bool)

(declare-fun e!3037542 () Bool)

(assert (=> b!4858743 (= e!3037542 (and (inv!71608 (left!40521 (left!40521 (right!40851 t!4677)))) tp!1366731 (inv!71608 (right!40851 (left!40521 (right!40851 t!4677)))) tp!1366730))))

(declare-fun b!4858745 () Bool)

(declare-fun e!3037541 () Bool)

(declare-fun tp!1366729 () Bool)

(assert (=> b!4858745 (= e!3037541 tp!1366729)))

(declare-fun b!4858744 () Bool)

(assert (=> b!4858744 (= e!3037542 (and (inv!71607 (xs!17840 (left!40521 (right!40851 t!4677)))) e!3037541))))

(assert (=> b!4858581 (= tp!1366721 (and (inv!71608 (left!40521 (right!40851 t!4677))) e!3037542))))

(assert (= (and b!4858581 ((_ is Node!14534) (left!40521 (right!40851 t!4677)))) b!4858743))

(assert (= b!4858744 b!4858745))

(assert (= (and b!4858581 ((_ is Leaf!24216) (left!40521 (right!40851 t!4677)))) b!4858744))

(declare-fun m!5856944 () Bool)

(assert (=> b!4858743 m!5856944))

(declare-fun m!5856946 () Bool)

(assert (=> b!4858743 m!5856946))

(declare-fun m!5856948 () Bool)

(assert (=> b!4858744 m!5856948))

(assert (=> b!4858581 m!5856648))

(declare-fun e!3037544 () Bool)

(declare-fun tp!1366733 () Bool)

(declare-fun b!4858746 () Bool)

(declare-fun tp!1366734 () Bool)

(assert (=> b!4858746 (= e!3037544 (and (inv!71608 (left!40521 (right!40851 (right!40851 t!4677)))) tp!1366734 (inv!71608 (right!40851 (right!40851 (right!40851 t!4677)))) tp!1366733))))

(declare-fun b!4858748 () Bool)

(declare-fun e!3037543 () Bool)

(declare-fun tp!1366732 () Bool)

(assert (=> b!4858748 (= e!3037543 tp!1366732)))

(declare-fun b!4858747 () Bool)

(assert (=> b!4858747 (= e!3037544 (and (inv!71607 (xs!17840 (right!40851 (right!40851 t!4677)))) e!3037543))))

(assert (=> b!4858581 (= tp!1366720 (and (inv!71608 (right!40851 (right!40851 t!4677))) e!3037544))))

(assert (= (and b!4858581 ((_ is Node!14534) (right!40851 (right!40851 t!4677)))) b!4858746))

(assert (= b!4858747 b!4858748))

(assert (= (and b!4858581 ((_ is Leaf!24216) (right!40851 (right!40851 t!4677)))) b!4858747))

(declare-fun m!5856950 () Bool)

(assert (=> b!4858746 m!5856950))

(declare-fun m!5856952 () Bool)

(assert (=> b!4858746 m!5856952))

(declare-fun m!5856954 () Bool)

(assert (=> b!4858747 m!5856954))

(assert (=> b!4858581 m!5856650))

(declare-fun b!4858749 () Bool)

(declare-fun e!3037545 () Bool)

(declare-fun tp!1366735 () Bool)

(assert (=> b!4858749 (= e!3037545 (and tp_is_empty!35527 tp!1366735))))

(assert (=> b!4858569 (= tp!1366709 e!3037545)))

(assert (= (and b!4858569 ((_ is Cons!55754) (t!363476 (innerList!14622 (xs!17840 t!4677))))) b!4858749))

(declare-fun b!4858750 () Bool)

(declare-fun e!3037546 () Bool)

(declare-fun tp!1366736 () Bool)

(assert (=> b!4858750 (= e!3037546 (and tp_is_empty!35527 tp!1366736))))

(assert (=> b!4858580 (= tp!1366716 e!3037546)))

(assert (= (and b!4858580 ((_ is Cons!55754) (innerList!14622 (xs!17840 (left!40521 t!4677))))) b!4858750))

(check-sat (not b!4858691) (not d!1559540) (not b!4858690) (not d!1559596) (not d!1559576) (not b!4858737) (not d!1559588) (not b!4858654) (not b!4858593) tp_is_empty!35527 (not b!4858682) (not b!4858750) (not b!4858626) (not b!4858611) (not d!1559644) (not b!4858630) (not b!4858628) (not b!4858661) (not d!1559642) (not d!1559556) (not b!4858591) (not d!1559570) (not b!4858702) (not b!4858586) (not b!4858722) (not d!1559558) (not b!4858594) (not b!4858680) (not b!4858668) (not d!1559560) (not b!4858724) (not b!4858740) (not d!1559554) (not b!4858640) (not b!4858699) (not b!4858665) (not b!4858739) (not b!4858602) (not b!4858633) (not b!4858623) (not b!4858632) (not b!4858643) (not b!4858581) (not b!4858590) (not d!1559610) (not b!4858714) (not b!4858706) (not b!4858671) (not b!4858625) (not b!4858609) (not d!1559622) (not b!4858662) (not b!4858747) (not b!4858746) (not b!4858637) (not b!4858587) (not b!4858642) (not b!4858647) (not b!4858636) (not d!1559606) (not b!4858710) (not d!1559544) (not b!4858745) (not b!4858730) (not d!1559548) (not d!1559586) (not b!4858742) (not b!4858641) (not b!4858663) (not d!1559598) (not b!4858696) (not b!4858619) (not d!1559638) (not d!1559640) (not b!4858741) (not b!4858708) (not b!4858648) (not b!4858644) (not d!1559568) (not b!4858712) (not d!1559530) (not b!4858598) (not d!1559600) (not b!4858694) (not b!4858709) (not b!4858704) (not b!4858748) (not b!4858651) (not b!4858734) (not b!4858670) (not b!4858622) (not b!4858652) (not b!4858698) (not b!4858638) (not b!4858711) (not b!4858677) (not d!1559562) (not d!1559580) (not d!1559604) (not b!4858727) (not b!4858578) (not b!4858688) (not b!4858588) (not b!4858733) (not b!4858599) (not b!4858603) (not d!1559602) (not b!4858585) (not b!4858744) (not d!1559628) (not b!4858725) (not d!1559594) (not b!4858749) (not d!1559534) (not b!4858720) (not d!1559546) (not d!1559590) (not b!4858738) (not b!4858589) (not b!4858701) (not b!4858736) (not b!4858743) (not b!4858707) (not b!4858639))
(check-sat)
