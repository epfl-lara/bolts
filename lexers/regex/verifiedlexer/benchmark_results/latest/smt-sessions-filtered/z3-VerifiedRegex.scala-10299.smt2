; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!535922 () Bool)

(assert start!535922)

(declare-fun b!5086610 () Bool)

(declare-fun res!2165442 () Bool)

(declare-fun e!3172424 () Bool)

(assert (=> b!5086610 (=> (not res!2165442) (not e!3172424))))

(declare-datatypes ((T!105300 0))(
  ( (T!105301 (val!23674 Int)) )
))
(declare-datatypes ((List!58584 0))(
  ( (Nil!58460) (Cons!58460 (h!64908 T!105300) (t!371437 List!58584)) )
))
(declare-datatypes ((IArray!31241 0))(
  ( (IArray!31242 (innerList!15678 List!58584)) )
))
(declare-datatypes ((Conc!15590 0))(
  ( (Node!15590 (left!42855 Conc!15590) (right!43185 Conc!15590) (csize!31410 Int) (cheight!15801 Int)) (Leaf!25890 (xs!18970 IArray!31241) (csize!31411 Int)) (Empty!15590) )
))
(declare-fun ys!41 () Conc!15590)

(declare-fun isBalanced!4452 (Conc!15590) Bool)

(assert (=> b!5086610 (= res!2165442 (isBalanced!4452 ys!41))))

(declare-fun b!5086611 () Bool)

(declare-fun e!3172427 () Bool)

(declare-fun tp!1418110 () Bool)

(assert (=> b!5086611 (= e!3172427 tp!1418110)))

(declare-fun b!5086612 () Bool)

(declare-fun e!3172426 () Bool)

(declare-fun e!3172425 () Bool)

(assert (=> b!5086612 (= e!3172426 e!3172425)))

(declare-fun res!2165444 () Bool)

(assert (=> b!5086612 (=> res!2165444 e!3172425)))

(declare-fun xs!286 () Conc!15590)

(declare-fun appendAssocInst!924 (Conc!15590 Conc!15590) Bool)

(assert (=> b!5086612 (= res!2165444 (not (appendAssocInst!924 xs!286 ys!41)))))

(declare-fun lt!2091737 () Conc!15590)

(declare-fun err!4625 () Conc!15590)

(assert (=> b!5086612 (= lt!2091737 err!4625)))

(assert (=> b!5086612 true))

(declare-fun e!3172423 () Bool)

(declare-fun inv!77698 (Conc!15590) Bool)

(assert (=> b!5086612 (and (inv!77698 err!4625) e!3172423)))

(declare-fun b!5086613 () Bool)

(assert (=> b!5086613 (= e!3172424 e!3172426)))

(declare-fun res!2165440 () Bool)

(assert (=> b!5086613 (=> (not res!2165440) (not e!3172426))))

(declare-fun lt!2091738 () Int)

(get-info :version)

(assert (=> b!5086613 (= res!2165440 (and (or (> (- 1) lt!2091738) (> lt!2091738 1)) (>= lt!2091738 (- 1)) (not ((_ is Node!15590) ys!41))))))

(declare-fun lt!2091734 () Int)

(declare-fun lt!2091736 () Int)

(assert (=> b!5086613 (= lt!2091738 (- lt!2091734 lt!2091736))))

(declare-fun height!2167 (Conc!15590) Int)

(assert (=> b!5086613 (= lt!2091736 (height!2167 xs!286))))

(assert (=> b!5086613 (= lt!2091734 (height!2167 ys!41))))

(declare-fun res!2165445 () Bool)

(assert (=> start!535922 (=> (not res!2165445) (not e!3172424))))

(assert (=> start!535922 (= res!2165445 (isBalanced!4452 xs!286))))

(assert (=> start!535922 e!3172424))

(declare-fun e!3172430 () Bool)

(assert (=> start!535922 (and (inv!77698 xs!286) e!3172430)))

(declare-fun e!3172421 () Bool)

(assert (=> start!535922 (and (inv!77698 ys!41) e!3172421)))

(declare-fun b!5086614 () Bool)

(declare-fun tp!1418116 () Bool)

(declare-fun tp!1418114 () Bool)

(assert (=> b!5086614 (= e!3172423 (and (inv!77698 (left!42855 err!4625)) tp!1418116 (inv!77698 (right!43185 err!4625)) tp!1418114))))

(declare-fun tp!1418115 () Bool)

(declare-fun b!5086615 () Bool)

(declare-fun tp!1418109 () Bool)

(assert (=> b!5086615 (= e!3172421 (and (inv!77698 (left!42855 ys!41)) tp!1418109 (inv!77698 (right!43185 ys!41)) tp!1418115))))

(declare-fun b!5086616 () Bool)

(declare-fun inv!77699 (IArray!31241) Bool)

(assert (=> b!5086616 (= e!3172423 (and (inv!77699 (xs!18970 err!4625)) e!3172427))))

(declare-fun b!5086617 () Bool)

(declare-fun e!3172422 () Bool)

(declare-fun tp!1418112 () Bool)

(assert (=> b!5086617 (= e!3172422 tp!1418112)))

(declare-fun b!5086618 () Bool)

(declare-fun e!3172429 () Bool)

(assert (=> b!5086618 (= e!3172425 e!3172429)))

(declare-fun res!2165441 () Bool)

(assert (=> b!5086618 (=> res!2165441 e!3172429)))

(declare-fun lt!2091735 () Int)

(declare-fun lt!2091739 () Int)

(assert (=> b!5086618 (= res!2165441 (or (> lt!2091735 (+ 1 lt!2091739)) (< lt!2091735 lt!2091739)))))

(assert (=> b!5086618 (= lt!2091735 (height!2167 lt!2091737))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5086618 (= lt!2091739 (max!0 lt!2091736 lt!2091734))))

(declare-fun b!5086619 () Bool)

(declare-fun e!3172428 () Bool)

(assert (=> b!5086619 (= e!3172430 (and (inv!77699 (xs!18970 xs!286)) e!3172428))))

(declare-fun b!5086620 () Bool)

(assert (=> b!5086620 (= e!3172421 (and (inv!77699 (xs!18970 ys!41)) e!3172422))))

(declare-fun tp!1418113 () Bool)

(declare-fun tp!1418111 () Bool)

(declare-fun b!5086621 () Bool)

(assert (=> b!5086621 (= e!3172430 (and (inv!77698 (left!42855 xs!286)) tp!1418113 (inv!77698 (right!43185 xs!286)) tp!1418111))))

(declare-fun b!5086622 () Bool)

(declare-fun res!2165443 () Bool)

(assert (=> b!5086622 (=> (not res!2165443) (not e!3172424))))

(assert (=> b!5086622 (= res!2165443 (and (not (= xs!286 Empty!15590)) (not (= ys!41 Empty!15590))))))

(declare-fun b!5086623 () Bool)

(declare-fun list!19041 (Conc!15590) List!58584)

(declare-fun ++!12817 (List!58584 List!58584) List!58584)

(assert (=> b!5086623 (= e!3172429 (not (= (list!19041 lt!2091737) (++!12817 (list!19041 xs!286) (list!19041 ys!41)))))))

(declare-fun b!5086624 () Bool)

(declare-fun res!2165439 () Bool)

(assert (=> b!5086624 (=> res!2165439 e!3172425)))

(assert (=> b!5086624 (= res!2165439 (not (isBalanced!4452 lt!2091737)))))

(declare-fun b!5086625 () Bool)

(declare-fun tp!1418117 () Bool)

(assert (=> b!5086625 (= e!3172428 tp!1418117)))

(assert (= (and start!535922 res!2165445) b!5086610))

(assert (= (and b!5086610 res!2165442) b!5086622))

(assert (= (and b!5086622 res!2165443) b!5086613))

(assert (= (and b!5086613 res!2165440) b!5086612))

(assert (= (and b!5086612 ((_ is Node!15590) err!4625)) b!5086614))

(assert (= b!5086616 b!5086611))

(assert (= (and b!5086612 ((_ is Leaf!25890) err!4625)) b!5086616))

(assert (= (and b!5086612 (not res!2165444)) b!5086624))

(assert (= (and b!5086624 (not res!2165439)) b!5086618))

(assert (= (and b!5086618 (not res!2165441)) b!5086623))

(assert (= (and start!535922 ((_ is Node!15590) xs!286)) b!5086621))

(assert (= b!5086619 b!5086625))

(assert (= (and start!535922 ((_ is Leaf!25890) xs!286)) b!5086619))

(assert (= (and start!535922 ((_ is Node!15590) ys!41)) b!5086615))

(assert (= b!5086620 b!5086617))

(assert (= (and start!535922 ((_ is Leaf!25890) ys!41)) b!5086620))

(declare-fun m!6143918 () Bool)

(assert (=> start!535922 m!6143918))

(declare-fun m!6143920 () Bool)

(assert (=> start!535922 m!6143920))

(declare-fun m!6143922 () Bool)

(assert (=> start!535922 m!6143922))

(declare-fun m!6143924 () Bool)

(assert (=> b!5086619 m!6143924))

(declare-fun m!6143926 () Bool)

(assert (=> b!5086614 m!6143926))

(declare-fun m!6143928 () Bool)

(assert (=> b!5086614 m!6143928))

(declare-fun m!6143930 () Bool)

(assert (=> b!5086612 m!6143930))

(declare-fun m!6143932 () Bool)

(assert (=> b!5086612 m!6143932))

(declare-fun m!6143934 () Bool)

(assert (=> b!5086620 m!6143934))

(declare-fun m!6143936 () Bool)

(assert (=> b!5086623 m!6143936))

(declare-fun m!6143938 () Bool)

(assert (=> b!5086623 m!6143938))

(declare-fun m!6143940 () Bool)

(assert (=> b!5086623 m!6143940))

(assert (=> b!5086623 m!6143938))

(assert (=> b!5086623 m!6143940))

(declare-fun m!6143942 () Bool)

(assert (=> b!5086623 m!6143942))

(declare-fun m!6143944 () Bool)

(assert (=> b!5086610 m!6143944))

(declare-fun m!6143946 () Bool)

(assert (=> b!5086616 m!6143946))

(declare-fun m!6143948 () Bool)

(assert (=> b!5086621 m!6143948))

(declare-fun m!6143950 () Bool)

(assert (=> b!5086621 m!6143950))

(declare-fun m!6143952 () Bool)

(assert (=> b!5086618 m!6143952))

(declare-fun m!6143954 () Bool)

(assert (=> b!5086618 m!6143954))

(declare-fun m!6143956 () Bool)

(assert (=> b!5086613 m!6143956))

(declare-fun m!6143958 () Bool)

(assert (=> b!5086613 m!6143958))

(declare-fun m!6143960 () Bool)

(assert (=> b!5086615 m!6143960))

(declare-fun m!6143962 () Bool)

(assert (=> b!5086615 m!6143962))

(declare-fun m!6143964 () Bool)

(assert (=> b!5086624 m!6143964))

(check-sat (not b!5086612) (not b!5086610) (not b!5086621) (not b!5086619) (not b!5086611) (not b!5086614) (not start!535922) (not b!5086624) (not b!5086615) (not b!5086613) (not b!5086620) (not b!5086625) (not b!5086617) (not b!5086618) (not b!5086616) (not b!5086623))
(check-sat)
(get-model)

(declare-fun d!1646384 () Bool)

(assert (=> d!1646384 (= (height!2167 lt!2091737) (ite ((_ is Empty!15590) lt!2091737) 0 (ite ((_ is Leaf!25890) lt!2091737) 1 (cheight!15801 lt!2091737))))))

(assert (=> b!5086618 d!1646384))

(declare-fun d!1646388 () Bool)

(assert (=> d!1646388 (= (max!0 lt!2091736 lt!2091734) (ite (< lt!2091736 lt!2091734) lt!2091734 lt!2091736))))

(assert (=> b!5086618 d!1646388))

(declare-fun b!5086650 () Bool)

(declare-fun res!2165464 () Bool)

(declare-fun e!3172444 () Bool)

(assert (=> b!5086650 (=> (not res!2165464) (not e!3172444))))

(assert (=> b!5086650 (= res!2165464 (isBalanced!4452 (left!42855 xs!286)))))

(declare-fun b!5086651 () Bool)

(declare-fun e!3172443 () Bool)

(assert (=> b!5086651 (= e!3172443 e!3172444)))

(declare-fun res!2165466 () Bool)

(assert (=> b!5086651 (=> (not res!2165466) (not e!3172444))))

(assert (=> b!5086651 (= res!2165466 (<= (- 1) (- (height!2167 (left!42855 xs!286)) (height!2167 (right!43185 xs!286)))))))

(declare-fun b!5086652 () Bool)

(declare-fun res!2165462 () Bool)

(assert (=> b!5086652 (=> (not res!2165462) (not e!3172444))))

(assert (=> b!5086652 (= res!2165462 (<= (- (height!2167 (left!42855 xs!286)) (height!2167 (right!43185 xs!286))) 1))))

(declare-fun b!5086653 () Bool)

(declare-fun isEmpty!31683 (Conc!15590) Bool)

(assert (=> b!5086653 (= e!3172444 (not (isEmpty!31683 (right!43185 xs!286))))))

(declare-fun b!5086654 () Bool)

(declare-fun res!2165465 () Bool)

(assert (=> b!5086654 (=> (not res!2165465) (not e!3172444))))

(assert (=> b!5086654 (= res!2165465 (isBalanced!4452 (right!43185 xs!286)))))

(declare-fun b!5086655 () Bool)

(declare-fun res!2165467 () Bool)

(assert (=> b!5086655 (=> (not res!2165467) (not e!3172444))))

(assert (=> b!5086655 (= res!2165467 (not (isEmpty!31683 (left!42855 xs!286))))))

(declare-fun d!1646394 () Bool)

(declare-fun res!2165463 () Bool)

(assert (=> d!1646394 (=> res!2165463 e!3172443)))

(assert (=> d!1646394 (= res!2165463 (not ((_ is Node!15590) xs!286)))))

(assert (=> d!1646394 (= (isBalanced!4452 xs!286) e!3172443)))

(assert (= (and d!1646394 (not res!2165463)) b!5086651))

(assert (= (and b!5086651 res!2165466) b!5086652))

(assert (= (and b!5086652 res!2165462) b!5086650))

(assert (= (and b!5086650 res!2165464) b!5086654))

(assert (= (and b!5086654 res!2165465) b!5086655))

(assert (= (and b!5086655 res!2165467) b!5086653))

(declare-fun m!6143976 () Bool)

(assert (=> b!5086652 m!6143976))

(declare-fun m!6143978 () Bool)

(assert (=> b!5086652 m!6143978))

(assert (=> b!5086651 m!6143976))

(assert (=> b!5086651 m!6143978))

(declare-fun m!6143980 () Bool)

(assert (=> b!5086654 m!6143980))

(declare-fun m!6143982 () Bool)

(assert (=> b!5086655 m!6143982))

(declare-fun m!6143984 () Bool)

(assert (=> b!5086650 m!6143984))

(declare-fun m!6143986 () Bool)

(assert (=> b!5086653 m!6143986))

(assert (=> start!535922 d!1646394))

(declare-fun d!1646402 () Bool)

(declare-fun c!873960 () Bool)

(assert (=> d!1646402 (= c!873960 ((_ is Node!15590) xs!286))))

(declare-fun e!3172452 () Bool)

(assert (=> d!1646402 (= (inv!77698 xs!286) e!3172452)))

(declare-fun b!5086662 () Bool)

(declare-fun inv!77702 (Conc!15590) Bool)

(assert (=> b!5086662 (= e!3172452 (inv!77702 xs!286))))

(declare-fun b!5086663 () Bool)

(declare-fun e!3172454 () Bool)

(assert (=> b!5086663 (= e!3172452 e!3172454)))

(declare-fun res!2165473 () Bool)

(assert (=> b!5086663 (= res!2165473 (not ((_ is Leaf!25890) xs!286)))))

(assert (=> b!5086663 (=> res!2165473 e!3172454)))

(declare-fun b!5086664 () Bool)

(declare-fun inv!77703 (Conc!15590) Bool)

(assert (=> b!5086664 (= e!3172454 (inv!77703 xs!286))))

(assert (= (and d!1646402 c!873960) b!5086662))

(assert (= (and d!1646402 (not c!873960)) b!5086663))

(assert (= (and b!5086663 (not res!2165473)) b!5086664))

(declare-fun m!6143988 () Bool)

(assert (=> b!5086662 m!6143988))

(declare-fun m!6143990 () Bool)

(assert (=> b!5086664 m!6143990))

(assert (=> start!535922 d!1646402))

(declare-fun d!1646404 () Bool)

(declare-fun c!873961 () Bool)

(assert (=> d!1646404 (= c!873961 ((_ is Node!15590) ys!41))))

(declare-fun e!3172461 () Bool)

(assert (=> d!1646404 (= (inv!77698 ys!41) e!3172461)))

(declare-fun b!5086675 () Bool)

(assert (=> b!5086675 (= e!3172461 (inv!77702 ys!41))))

(declare-fun b!5086676 () Bool)

(declare-fun e!3172462 () Bool)

(assert (=> b!5086676 (= e!3172461 e!3172462)))

(declare-fun res!2165481 () Bool)

(assert (=> b!5086676 (= res!2165481 (not ((_ is Leaf!25890) ys!41)))))

(assert (=> b!5086676 (=> res!2165481 e!3172462)))

(declare-fun b!5086677 () Bool)

(assert (=> b!5086677 (= e!3172462 (inv!77703 ys!41))))

(assert (= (and d!1646404 c!873961) b!5086675))

(assert (= (and d!1646404 (not c!873961)) b!5086676))

(assert (= (and b!5086676 (not res!2165481)) b!5086677))

(declare-fun m!6143992 () Bool)

(assert (=> b!5086675 m!6143992))

(declare-fun m!6143994 () Bool)

(assert (=> b!5086677 m!6143994))

(assert (=> start!535922 d!1646404))

(declare-fun d!1646406 () Bool)

(declare-fun c!873962 () Bool)

(assert (=> d!1646406 (= c!873962 ((_ is Node!15590) (left!42855 ys!41)))))

(declare-fun e!3172471 () Bool)

(assert (=> d!1646406 (= (inv!77698 (left!42855 ys!41)) e!3172471)))

(declare-fun b!5086686 () Bool)

(assert (=> b!5086686 (= e!3172471 (inv!77702 (left!42855 ys!41)))))

(declare-fun b!5086687 () Bool)

(declare-fun e!3172472 () Bool)

(assert (=> b!5086687 (= e!3172471 e!3172472)))

(declare-fun res!2165490 () Bool)

(assert (=> b!5086687 (= res!2165490 (not ((_ is Leaf!25890) (left!42855 ys!41))))))

(assert (=> b!5086687 (=> res!2165490 e!3172472)))

(declare-fun b!5086688 () Bool)

(assert (=> b!5086688 (= e!3172472 (inv!77703 (left!42855 ys!41)))))

(assert (= (and d!1646406 c!873962) b!5086686))

(assert (= (and d!1646406 (not c!873962)) b!5086687))

(assert (= (and b!5086687 (not res!2165490)) b!5086688))

(declare-fun m!6143996 () Bool)

(assert (=> b!5086686 m!6143996))

(declare-fun m!6143998 () Bool)

(assert (=> b!5086688 m!6143998))

(assert (=> b!5086615 d!1646406))

(declare-fun d!1646408 () Bool)

(declare-fun c!873963 () Bool)

(assert (=> d!1646408 (= c!873963 ((_ is Node!15590) (right!43185 ys!41)))))

(declare-fun e!3172473 () Bool)

(assert (=> d!1646408 (= (inv!77698 (right!43185 ys!41)) e!3172473)))

(declare-fun b!5086689 () Bool)

(assert (=> b!5086689 (= e!3172473 (inv!77702 (right!43185 ys!41)))))

(declare-fun b!5086690 () Bool)

(declare-fun e!3172474 () Bool)

(assert (=> b!5086690 (= e!3172473 e!3172474)))

(declare-fun res!2165491 () Bool)

(assert (=> b!5086690 (= res!2165491 (not ((_ is Leaf!25890) (right!43185 ys!41))))))

(assert (=> b!5086690 (=> res!2165491 e!3172474)))

(declare-fun b!5086691 () Bool)

(assert (=> b!5086691 (= e!3172474 (inv!77703 (right!43185 ys!41)))))

(assert (= (and d!1646408 c!873963) b!5086689))

(assert (= (and d!1646408 (not c!873963)) b!5086690))

(assert (= (and b!5086690 (not res!2165491)) b!5086691))

(declare-fun m!6144000 () Bool)

(assert (=> b!5086689 m!6144000))

(declare-fun m!6144002 () Bool)

(assert (=> b!5086691 m!6144002))

(assert (=> b!5086615 d!1646408))

(declare-fun d!1646410 () Bool)

(declare-fun size!39127 (List!58584) Int)

(assert (=> d!1646410 (= (inv!77699 (xs!18970 err!4625)) (<= (size!39127 (innerList!15678 (xs!18970 err!4625))) 2147483647))))

(declare-fun bs!1190965 () Bool)

(assert (= bs!1190965 d!1646410))

(declare-fun m!6144004 () Bool)

(assert (=> bs!1190965 m!6144004))

(assert (=> b!5086616 d!1646410))

(declare-fun d!1646412 () Bool)

(declare-fun c!873964 () Bool)

(assert (=> d!1646412 (= c!873964 ((_ is Node!15590) (left!42855 err!4625)))))

(declare-fun e!3172475 () Bool)

(assert (=> d!1646412 (= (inv!77698 (left!42855 err!4625)) e!3172475)))

(declare-fun b!5086692 () Bool)

(assert (=> b!5086692 (= e!3172475 (inv!77702 (left!42855 err!4625)))))

(declare-fun b!5086693 () Bool)

(declare-fun e!3172476 () Bool)

(assert (=> b!5086693 (= e!3172475 e!3172476)))

(declare-fun res!2165492 () Bool)

(assert (=> b!5086693 (= res!2165492 (not ((_ is Leaf!25890) (left!42855 err!4625))))))

(assert (=> b!5086693 (=> res!2165492 e!3172476)))

(declare-fun b!5086694 () Bool)

(assert (=> b!5086694 (= e!3172476 (inv!77703 (left!42855 err!4625)))))

(assert (= (and d!1646412 c!873964) b!5086692))

(assert (= (and d!1646412 (not c!873964)) b!5086693))

(assert (= (and b!5086693 (not res!2165492)) b!5086694))

(declare-fun m!6144006 () Bool)

(assert (=> b!5086692 m!6144006))

(declare-fun m!6144008 () Bool)

(assert (=> b!5086694 m!6144008))

(assert (=> b!5086614 d!1646412))

(declare-fun d!1646414 () Bool)

(declare-fun c!873965 () Bool)

(assert (=> d!1646414 (= c!873965 ((_ is Node!15590) (right!43185 err!4625)))))

(declare-fun e!3172477 () Bool)

(assert (=> d!1646414 (= (inv!77698 (right!43185 err!4625)) e!3172477)))

(declare-fun b!5086695 () Bool)

(assert (=> b!5086695 (= e!3172477 (inv!77702 (right!43185 err!4625)))))

(declare-fun b!5086696 () Bool)

(declare-fun e!3172478 () Bool)

(assert (=> b!5086696 (= e!3172477 e!3172478)))

(declare-fun res!2165493 () Bool)

(assert (=> b!5086696 (= res!2165493 (not ((_ is Leaf!25890) (right!43185 err!4625))))))

(assert (=> b!5086696 (=> res!2165493 e!3172478)))

(declare-fun b!5086697 () Bool)

(assert (=> b!5086697 (= e!3172478 (inv!77703 (right!43185 err!4625)))))

(assert (= (and d!1646414 c!873965) b!5086695))

(assert (= (and d!1646414 (not c!873965)) b!5086696))

(assert (= (and b!5086696 (not res!2165493)) b!5086697))

(declare-fun m!6144010 () Bool)

(assert (=> b!5086695 m!6144010))

(declare-fun m!6144012 () Bool)

(assert (=> b!5086697 m!6144012))

(assert (=> b!5086614 d!1646414))

(declare-fun b!5086716 () Bool)

(declare-fun e!3172492 () List!58584)

(declare-fun e!3172493 () List!58584)

(assert (=> b!5086716 (= e!3172492 e!3172493)))

(declare-fun c!873971 () Bool)

(assert (=> b!5086716 (= c!873971 ((_ is Leaf!25890) lt!2091737))))

(declare-fun b!5086717 () Bool)

(declare-fun list!19043 (IArray!31241) List!58584)

(assert (=> b!5086717 (= e!3172493 (list!19043 (xs!18970 lt!2091737)))))

(declare-fun b!5086718 () Bool)

(assert (=> b!5086718 (= e!3172493 (++!12817 (list!19041 (left!42855 lt!2091737)) (list!19041 (right!43185 lt!2091737))))))

(declare-fun b!5086715 () Bool)

(assert (=> b!5086715 (= e!3172492 Nil!58460)))

(declare-fun d!1646416 () Bool)

(declare-fun c!873970 () Bool)

(assert (=> d!1646416 (= c!873970 ((_ is Empty!15590) lt!2091737))))

(assert (=> d!1646416 (= (list!19041 lt!2091737) e!3172492)))

(assert (= (and d!1646416 c!873970) b!5086715))

(assert (= (and d!1646416 (not c!873970)) b!5086716))

(assert (= (and b!5086716 c!873971) b!5086717))

(assert (= (and b!5086716 (not c!873971)) b!5086718))

(declare-fun m!6144014 () Bool)

(assert (=> b!5086717 m!6144014))

(declare-fun m!6144016 () Bool)

(assert (=> b!5086718 m!6144016))

(declare-fun m!6144018 () Bool)

(assert (=> b!5086718 m!6144018))

(assert (=> b!5086718 m!6144016))

(assert (=> b!5086718 m!6144018))

(declare-fun m!6144024 () Bool)

(assert (=> b!5086718 m!6144024))

(assert (=> b!5086623 d!1646416))

(declare-fun e!3172504 () Bool)

(declare-fun b!5086745 () Bool)

(declare-fun lt!2091742 () List!58584)

(assert (=> b!5086745 (= e!3172504 (or (not (= (list!19041 ys!41) Nil!58460)) (= lt!2091742 (list!19041 xs!286))))))

(declare-fun b!5086743 () Bool)

(declare-fun e!3172505 () List!58584)

(assert (=> b!5086743 (= e!3172505 (Cons!58460 (h!64908 (list!19041 xs!286)) (++!12817 (t!371437 (list!19041 xs!286)) (list!19041 ys!41))))))

(declare-fun d!1646418 () Bool)

(assert (=> d!1646418 e!3172504))

(declare-fun res!2165520 () Bool)

(assert (=> d!1646418 (=> (not res!2165520) (not e!3172504))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10432 (List!58584) (InoxSet T!105300))

(assert (=> d!1646418 (= res!2165520 (= (content!10432 lt!2091742) ((_ map or) (content!10432 (list!19041 xs!286)) (content!10432 (list!19041 ys!41)))))))

(assert (=> d!1646418 (= lt!2091742 e!3172505)))

(declare-fun c!873975 () Bool)

(assert (=> d!1646418 (= c!873975 ((_ is Nil!58460) (list!19041 xs!286)))))

(assert (=> d!1646418 (= (++!12817 (list!19041 xs!286) (list!19041 ys!41)) lt!2091742)))

(declare-fun b!5086744 () Bool)

(declare-fun res!2165521 () Bool)

(assert (=> b!5086744 (=> (not res!2165521) (not e!3172504))))

(assert (=> b!5086744 (= res!2165521 (= (size!39127 lt!2091742) (+ (size!39127 (list!19041 xs!286)) (size!39127 (list!19041 ys!41)))))))

(declare-fun b!5086742 () Bool)

(assert (=> b!5086742 (= e!3172505 (list!19041 ys!41))))

(assert (= (and d!1646418 c!873975) b!5086742))

(assert (= (and d!1646418 (not c!873975)) b!5086743))

(assert (= (and d!1646418 res!2165520) b!5086744))

(assert (= (and b!5086744 res!2165521) b!5086745))

(assert (=> b!5086743 m!6143940))

(declare-fun m!6144058 () Bool)

(assert (=> b!5086743 m!6144058))

(declare-fun m!6144060 () Bool)

(assert (=> d!1646418 m!6144060))

(assert (=> d!1646418 m!6143938))

(declare-fun m!6144062 () Bool)

(assert (=> d!1646418 m!6144062))

(assert (=> d!1646418 m!6143940))

(declare-fun m!6144064 () Bool)

(assert (=> d!1646418 m!6144064))

(declare-fun m!6144066 () Bool)

(assert (=> b!5086744 m!6144066))

(assert (=> b!5086744 m!6143938))

(declare-fun m!6144068 () Bool)

(assert (=> b!5086744 m!6144068))

(assert (=> b!5086744 m!6143940))

(declare-fun m!6144070 () Bool)

(assert (=> b!5086744 m!6144070))

(assert (=> b!5086623 d!1646418))

(declare-fun b!5086753 () Bool)

(declare-fun e!3172508 () List!58584)

(declare-fun e!3172509 () List!58584)

(assert (=> b!5086753 (= e!3172508 e!3172509)))

(declare-fun c!873977 () Bool)

(assert (=> b!5086753 (= c!873977 ((_ is Leaf!25890) xs!286))))

(declare-fun b!5086754 () Bool)

(assert (=> b!5086754 (= e!3172509 (list!19043 (xs!18970 xs!286)))))

(declare-fun b!5086755 () Bool)

(assert (=> b!5086755 (= e!3172509 (++!12817 (list!19041 (left!42855 xs!286)) (list!19041 (right!43185 xs!286))))))

(declare-fun b!5086752 () Bool)

(assert (=> b!5086752 (= e!3172508 Nil!58460)))

(declare-fun d!1646424 () Bool)

(declare-fun c!873976 () Bool)

(assert (=> d!1646424 (= c!873976 ((_ is Empty!15590) xs!286))))

(assert (=> d!1646424 (= (list!19041 xs!286) e!3172508)))

(assert (= (and d!1646424 c!873976) b!5086752))

(assert (= (and d!1646424 (not c!873976)) b!5086753))

(assert (= (and b!5086753 c!873977) b!5086754))

(assert (= (and b!5086753 (not c!873977)) b!5086755))

(declare-fun m!6144088 () Bool)

(assert (=> b!5086754 m!6144088))

(declare-fun m!6144090 () Bool)

(assert (=> b!5086755 m!6144090))

(declare-fun m!6144092 () Bool)

(assert (=> b!5086755 m!6144092))

(assert (=> b!5086755 m!6144090))

(assert (=> b!5086755 m!6144092))

(declare-fun m!6144094 () Bool)

(assert (=> b!5086755 m!6144094))

(assert (=> b!5086623 d!1646424))

(declare-fun b!5086763 () Bool)

(declare-fun e!3172514 () List!58584)

(declare-fun e!3172515 () List!58584)

(assert (=> b!5086763 (= e!3172514 e!3172515)))

(declare-fun c!873981 () Bool)

(assert (=> b!5086763 (= c!873981 ((_ is Leaf!25890) ys!41))))

(declare-fun b!5086764 () Bool)

(assert (=> b!5086764 (= e!3172515 (list!19043 (xs!18970 ys!41)))))

(declare-fun b!5086765 () Bool)

(assert (=> b!5086765 (= e!3172515 (++!12817 (list!19041 (left!42855 ys!41)) (list!19041 (right!43185 ys!41))))))

(declare-fun b!5086762 () Bool)

(assert (=> b!5086762 (= e!3172514 Nil!58460)))

(declare-fun d!1646430 () Bool)

(declare-fun c!873980 () Bool)

(assert (=> d!1646430 (= c!873980 ((_ is Empty!15590) ys!41))))

(assert (=> d!1646430 (= (list!19041 ys!41) e!3172514)))

(assert (= (and d!1646430 c!873980) b!5086762))

(assert (= (and d!1646430 (not c!873980)) b!5086763))

(assert (= (and b!5086763 c!873981) b!5086764))

(assert (= (and b!5086763 (not c!873981)) b!5086765))

(declare-fun m!6144104 () Bool)

(assert (=> b!5086764 m!6144104))

(declare-fun m!6144106 () Bool)

(assert (=> b!5086765 m!6144106))

(declare-fun m!6144108 () Bool)

(assert (=> b!5086765 m!6144108))

(assert (=> b!5086765 m!6144106))

(assert (=> b!5086765 m!6144108))

(declare-fun m!6144112 () Bool)

(assert (=> b!5086765 m!6144112))

(assert (=> b!5086623 d!1646430))

(declare-fun b!5086778 () Bool)

(declare-fun res!2165540 () Bool)

(declare-fun e!3172523 () Bool)

(assert (=> b!5086778 (=> (not res!2165540) (not e!3172523))))

(assert (=> b!5086778 (= res!2165540 (isBalanced!4452 (left!42855 lt!2091737)))))

(declare-fun b!5086779 () Bool)

(declare-fun e!3172522 () Bool)

(assert (=> b!5086779 (= e!3172522 e!3172523)))

(declare-fun res!2165542 () Bool)

(assert (=> b!5086779 (=> (not res!2165542) (not e!3172523))))

(assert (=> b!5086779 (= res!2165542 (<= (- 1) (- (height!2167 (left!42855 lt!2091737)) (height!2167 (right!43185 lt!2091737)))))))

(declare-fun b!5086780 () Bool)

(declare-fun res!2165538 () Bool)

(assert (=> b!5086780 (=> (not res!2165538) (not e!3172523))))

(assert (=> b!5086780 (= res!2165538 (<= (- (height!2167 (left!42855 lt!2091737)) (height!2167 (right!43185 lt!2091737))) 1))))

(declare-fun b!5086781 () Bool)

(assert (=> b!5086781 (= e!3172523 (not (isEmpty!31683 (right!43185 lt!2091737))))))

(declare-fun b!5086782 () Bool)

(declare-fun res!2165541 () Bool)

(assert (=> b!5086782 (=> (not res!2165541) (not e!3172523))))

(assert (=> b!5086782 (= res!2165541 (isBalanced!4452 (right!43185 lt!2091737)))))

(declare-fun b!5086783 () Bool)

(declare-fun res!2165543 () Bool)

(assert (=> b!5086783 (=> (not res!2165543) (not e!3172523))))

(assert (=> b!5086783 (= res!2165543 (not (isEmpty!31683 (left!42855 lt!2091737))))))

(declare-fun d!1646438 () Bool)

(declare-fun res!2165539 () Bool)

(assert (=> d!1646438 (=> res!2165539 e!3172522)))

(assert (=> d!1646438 (= res!2165539 (not ((_ is Node!15590) lt!2091737)))))

(assert (=> d!1646438 (= (isBalanced!4452 lt!2091737) e!3172522)))

(assert (= (and d!1646438 (not res!2165539)) b!5086779))

(assert (= (and b!5086779 res!2165542) b!5086780))

(assert (= (and b!5086780 res!2165538) b!5086778))

(assert (= (and b!5086778 res!2165540) b!5086782))

(assert (= (and b!5086782 res!2165541) b!5086783))

(assert (= (and b!5086783 res!2165543) b!5086781))

(declare-fun m!6144128 () Bool)

(assert (=> b!5086780 m!6144128))

(declare-fun m!6144130 () Bool)

(assert (=> b!5086780 m!6144130))

(assert (=> b!5086779 m!6144128))

(assert (=> b!5086779 m!6144130))

(declare-fun m!6144132 () Bool)

(assert (=> b!5086782 m!6144132))

(declare-fun m!6144134 () Bool)

(assert (=> b!5086783 m!6144134))

(declare-fun m!6144136 () Bool)

(assert (=> b!5086778 m!6144136))

(declare-fun m!6144138 () Bool)

(assert (=> b!5086781 m!6144138))

(assert (=> b!5086624 d!1646438))

(declare-fun d!1646444 () Bool)

(assert (=> d!1646444 (= (height!2167 xs!286) (ite ((_ is Empty!15590) xs!286) 0 (ite ((_ is Leaf!25890) xs!286) 1 (cheight!15801 xs!286))))))

(assert (=> b!5086613 d!1646444))

(declare-fun d!1646446 () Bool)

(assert (=> d!1646446 (= (height!2167 ys!41) (ite ((_ is Empty!15590) ys!41) 0 (ite ((_ is Leaf!25890) ys!41) 1 (cheight!15801 ys!41))))))

(assert (=> b!5086613 d!1646446))

(declare-fun b!5086879 () Bool)

(declare-fun e!3172586 () Bool)

(declare-fun appendAssoc!316 (List!58584 List!58584 List!58584) Bool)

(assert (=> b!5086879 (= e!3172586 (appendAssoc!316 (++!12817 (list!19041 xs!286) (list!19041 (left!42855 (left!42855 ys!41)))) (list!19041 (right!43185 (left!42855 ys!41))) (list!19041 (right!43185 ys!41))))))

(declare-fun b!5086880 () Bool)

(declare-fun e!3172588 () Bool)

(declare-fun e!3172587 () Bool)

(assert (=> b!5086880 (= e!3172588 e!3172587)))

(declare-fun res!2165582 () Bool)

(assert (=> b!5086880 (=> (not res!2165582) (not e!3172587))))

(assert (=> b!5086880 (= res!2165582 (appendAssoc!316 (list!19041 (left!42855 xs!286)) (list!19041 (right!43185 xs!286)) (list!19041 ys!41)))))

(declare-fun b!5086881 () Bool)

(declare-fun e!3172593 () Bool)

(assert (=> b!5086881 (= e!3172593 (appendAssoc!316 (list!19041 (left!42855 xs!286)) (list!19041 (left!42855 (right!43185 xs!286))) (++!12817 (list!19041 (right!43185 (right!43185 xs!286))) (list!19041 ys!41))))))

(declare-fun b!5086882 () Bool)

(declare-fun e!3172590 () Bool)

(assert (=> b!5086882 (= e!3172590 e!3172593)))

(declare-fun res!2165576 () Bool)

(assert (=> b!5086882 (=> (not res!2165576) (not e!3172593))))

(assert (=> b!5086882 (= res!2165576 (appendAssoc!316 (list!19041 (left!42855 (right!43185 xs!286))) (list!19041 (right!43185 (right!43185 xs!286))) (list!19041 ys!41)))))

(declare-fun b!5086883 () Bool)

(declare-fun e!3172585 () Bool)

(declare-fun e!3172589 () Bool)

(assert (=> b!5086883 (= e!3172585 e!3172589)))

(declare-fun res!2165584 () Bool)

(assert (=> b!5086883 (=> (not res!2165584) (not e!3172589))))

(assert (=> b!5086883 (= res!2165584 (appendAssoc!316 (list!19041 xs!286) (list!19041 (left!42855 ys!41)) (list!19041 (right!43185 ys!41))))))

(declare-fun b!5086884 () Bool)

(declare-fun e!3172592 () Bool)

(assert (=> b!5086884 (= e!3172589 e!3172592)))

(declare-fun res!2165579 () Bool)

(assert (=> b!5086884 (=> res!2165579 e!3172592)))

(assert (=> b!5086884 (= res!2165579 (not ((_ is Node!15590) (left!42855 ys!41))))))

(declare-fun b!5086885 () Bool)

(assert (=> b!5086885 (= e!3172587 e!3172590)))

(declare-fun res!2165581 () Bool)

(assert (=> b!5086885 (=> res!2165581 e!3172590)))

(assert (=> b!5086885 (= res!2165581 (not ((_ is Node!15590) (right!43185 xs!286))))))

(declare-fun b!5086886 () Bool)

(declare-fun e!3172591 () Bool)

(assert (=> b!5086886 (= e!3172591 e!3172585)))

(declare-fun res!2165583 () Bool)

(assert (=> b!5086886 (=> res!2165583 e!3172585)))

(assert (=> b!5086886 (= res!2165583 (not ((_ is Node!15590) ys!41)))))

(declare-fun b!5086887 () Bool)

(assert (=> b!5086887 (= e!3172592 e!3172586)))

(declare-fun res!2165580 () Bool)

(assert (=> b!5086887 (=> (not res!2165580) (not e!3172586))))

(assert (=> b!5086887 (= res!2165580 (appendAssoc!316 (list!19041 xs!286) (list!19041 (left!42855 (left!42855 ys!41))) (list!19041 (right!43185 (left!42855 ys!41)))))))

(declare-fun d!1646448 () Bool)

(assert (=> d!1646448 e!3172591))

(declare-fun res!2165577 () Bool)

(assert (=> d!1646448 (=> (not res!2165577) (not e!3172591))))

(assert (=> d!1646448 (= res!2165577 e!3172588)))

(declare-fun res!2165578 () Bool)

(assert (=> d!1646448 (=> res!2165578 e!3172588)))

(assert (=> d!1646448 (= res!2165578 (not ((_ is Node!15590) xs!286)))))

(assert (=> d!1646448 (= (appendAssocInst!924 xs!286 ys!41) true)))

(assert (= (and d!1646448 (not res!2165578)) b!5086880))

(assert (= (and b!5086880 res!2165582) b!5086885))

(assert (= (and b!5086885 (not res!2165581)) b!5086882))

(assert (= (and b!5086882 res!2165576) b!5086881))

(assert (= (and d!1646448 res!2165577) b!5086886))

(assert (= (and b!5086886 (not res!2165583)) b!5086883))

(assert (= (and b!5086883 res!2165584) b!5086884))

(assert (= (and b!5086884 (not res!2165579)) b!5086887))

(assert (= (and b!5086887 res!2165580) b!5086879))

(assert (=> b!5086883 m!6143938))

(assert (=> b!5086883 m!6144106))

(assert (=> b!5086883 m!6144108))

(assert (=> b!5086883 m!6143938))

(assert (=> b!5086883 m!6144106))

(assert (=> b!5086883 m!6144108))

(declare-fun m!6144230 () Bool)

(assert (=> b!5086883 m!6144230))

(declare-fun m!6144232 () Bool)

(assert (=> b!5086879 m!6144232))

(assert (=> b!5086879 m!6144108))

(declare-fun m!6144234 () Bool)

(assert (=> b!5086879 m!6144234))

(declare-fun m!6144236 () Bool)

(assert (=> b!5086879 m!6144236))

(assert (=> b!5086879 m!6144232))

(assert (=> b!5086879 m!6144108))

(declare-fun m!6144238 () Bool)

(assert (=> b!5086879 m!6144238))

(assert (=> b!5086879 m!6143938))

(assert (=> b!5086879 m!6144234))

(assert (=> b!5086879 m!6144236))

(assert (=> b!5086879 m!6143938))

(assert (=> b!5086880 m!6144090))

(assert (=> b!5086880 m!6144092))

(assert (=> b!5086880 m!6143940))

(assert (=> b!5086880 m!6144090))

(assert (=> b!5086880 m!6144092))

(assert (=> b!5086880 m!6143940))

(declare-fun m!6144240 () Bool)

(assert (=> b!5086880 m!6144240))

(declare-fun m!6144242 () Bool)

(assert (=> b!5086882 m!6144242))

(declare-fun m!6144244 () Bool)

(assert (=> b!5086882 m!6144244))

(assert (=> b!5086882 m!6143940))

(assert (=> b!5086882 m!6144242))

(assert (=> b!5086882 m!6144244))

(assert (=> b!5086882 m!6143940))

(declare-fun m!6144246 () Bool)

(assert (=> b!5086882 m!6144246))

(assert (=> b!5086881 m!6144090))

(assert (=> b!5086881 m!6144242))

(declare-fun m!6144248 () Bool)

(assert (=> b!5086881 m!6144248))

(declare-fun m!6144250 () Bool)

(assert (=> b!5086881 m!6144250))

(assert (=> b!5086881 m!6143940))

(assert (=> b!5086881 m!6144244))

(assert (=> b!5086881 m!6144090))

(assert (=> b!5086881 m!6144244))

(assert (=> b!5086881 m!6143940))

(assert (=> b!5086881 m!6144248))

(assert (=> b!5086881 m!6144242))

(assert (=> b!5086887 m!6143938))

(assert (=> b!5086887 m!6144234))

(assert (=> b!5086887 m!6144232))

(assert (=> b!5086887 m!6143938))

(assert (=> b!5086887 m!6144234))

(assert (=> b!5086887 m!6144232))

(declare-fun m!6144252 () Bool)

(assert (=> b!5086887 m!6144252))

(assert (=> b!5086612 d!1646448))

(declare-fun d!1646468 () Bool)

(declare-fun c!873999 () Bool)

(assert (=> d!1646468 (= c!873999 ((_ is Node!15590) err!4625))))

(declare-fun e!3172594 () Bool)

(assert (=> d!1646468 (= (inv!77698 err!4625) e!3172594)))

(declare-fun b!5086888 () Bool)

(assert (=> b!5086888 (= e!3172594 (inv!77702 err!4625))))

(declare-fun b!5086889 () Bool)

(declare-fun e!3172595 () Bool)

(assert (=> b!5086889 (= e!3172594 e!3172595)))

(declare-fun res!2165585 () Bool)

(assert (=> b!5086889 (= res!2165585 (not ((_ is Leaf!25890) err!4625)))))

(assert (=> b!5086889 (=> res!2165585 e!3172595)))

(declare-fun b!5086890 () Bool)

(assert (=> b!5086890 (= e!3172595 (inv!77703 err!4625))))

(assert (= (and d!1646468 c!873999) b!5086888))

(assert (= (and d!1646468 (not c!873999)) b!5086889))

(assert (= (and b!5086889 (not res!2165585)) b!5086890))

(declare-fun m!6144254 () Bool)

(assert (=> b!5086888 m!6144254))

(declare-fun m!6144256 () Bool)

(assert (=> b!5086890 m!6144256))

(assert (=> b!5086612 d!1646468))

(declare-fun b!5086891 () Bool)

(declare-fun res!2165588 () Bool)

(declare-fun e!3172597 () Bool)

(assert (=> b!5086891 (=> (not res!2165588) (not e!3172597))))

(assert (=> b!5086891 (= res!2165588 (isBalanced!4452 (left!42855 ys!41)))))

(declare-fun b!5086892 () Bool)

(declare-fun e!3172596 () Bool)

(assert (=> b!5086892 (= e!3172596 e!3172597)))

(declare-fun res!2165590 () Bool)

(assert (=> b!5086892 (=> (not res!2165590) (not e!3172597))))

(assert (=> b!5086892 (= res!2165590 (<= (- 1) (- (height!2167 (left!42855 ys!41)) (height!2167 (right!43185 ys!41)))))))

(declare-fun b!5086893 () Bool)

(declare-fun res!2165586 () Bool)

(assert (=> b!5086893 (=> (not res!2165586) (not e!3172597))))

(assert (=> b!5086893 (= res!2165586 (<= (- (height!2167 (left!42855 ys!41)) (height!2167 (right!43185 ys!41))) 1))))

(declare-fun b!5086894 () Bool)

(assert (=> b!5086894 (= e!3172597 (not (isEmpty!31683 (right!43185 ys!41))))))

(declare-fun b!5086895 () Bool)

(declare-fun res!2165589 () Bool)

(assert (=> b!5086895 (=> (not res!2165589) (not e!3172597))))

(assert (=> b!5086895 (= res!2165589 (isBalanced!4452 (right!43185 ys!41)))))

(declare-fun b!5086896 () Bool)

(declare-fun res!2165591 () Bool)

(assert (=> b!5086896 (=> (not res!2165591) (not e!3172597))))

(assert (=> b!5086896 (= res!2165591 (not (isEmpty!31683 (left!42855 ys!41))))))

(declare-fun d!1646470 () Bool)

(declare-fun res!2165587 () Bool)

(assert (=> d!1646470 (=> res!2165587 e!3172596)))

(assert (=> d!1646470 (= res!2165587 (not ((_ is Node!15590) ys!41)))))

(assert (=> d!1646470 (= (isBalanced!4452 ys!41) e!3172596)))

(assert (= (and d!1646470 (not res!2165587)) b!5086892))

(assert (= (and b!5086892 res!2165590) b!5086893))

(assert (= (and b!5086893 res!2165586) b!5086891))

(assert (= (and b!5086891 res!2165588) b!5086895))

(assert (= (and b!5086895 res!2165589) b!5086896))

(assert (= (and b!5086896 res!2165591) b!5086894))

(declare-fun m!6144258 () Bool)

(assert (=> b!5086893 m!6144258))

(declare-fun m!6144260 () Bool)

(assert (=> b!5086893 m!6144260))

(assert (=> b!5086892 m!6144258))

(assert (=> b!5086892 m!6144260))

(declare-fun m!6144262 () Bool)

(assert (=> b!5086895 m!6144262))

(declare-fun m!6144264 () Bool)

(assert (=> b!5086896 m!6144264))

(declare-fun m!6144266 () Bool)

(assert (=> b!5086891 m!6144266))

(declare-fun m!6144268 () Bool)

(assert (=> b!5086894 m!6144268))

(assert (=> b!5086610 d!1646470))

(declare-fun d!1646472 () Bool)

(declare-fun c!874000 () Bool)

(assert (=> d!1646472 (= c!874000 ((_ is Node!15590) (left!42855 xs!286)))))

(declare-fun e!3172598 () Bool)

(assert (=> d!1646472 (= (inv!77698 (left!42855 xs!286)) e!3172598)))

(declare-fun b!5086897 () Bool)

(assert (=> b!5086897 (= e!3172598 (inv!77702 (left!42855 xs!286)))))

(declare-fun b!5086898 () Bool)

(declare-fun e!3172599 () Bool)

(assert (=> b!5086898 (= e!3172598 e!3172599)))

(declare-fun res!2165592 () Bool)

(assert (=> b!5086898 (= res!2165592 (not ((_ is Leaf!25890) (left!42855 xs!286))))))

(assert (=> b!5086898 (=> res!2165592 e!3172599)))

(declare-fun b!5086899 () Bool)

(assert (=> b!5086899 (= e!3172599 (inv!77703 (left!42855 xs!286)))))

(assert (= (and d!1646472 c!874000) b!5086897))

(assert (= (and d!1646472 (not c!874000)) b!5086898))

(assert (= (and b!5086898 (not res!2165592)) b!5086899))

(declare-fun m!6144270 () Bool)

(assert (=> b!5086897 m!6144270))

(declare-fun m!6144272 () Bool)

(assert (=> b!5086899 m!6144272))

(assert (=> b!5086621 d!1646472))

(declare-fun d!1646474 () Bool)

(declare-fun c!874001 () Bool)

(assert (=> d!1646474 (= c!874001 ((_ is Node!15590) (right!43185 xs!286)))))

(declare-fun e!3172600 () Bool)

(assert (=> d!1646474 (= (inv!77698 (right!43185 xs!286)) e!3172600)))

(declare-fun b!5086900 () Bool)

(assert (=> b!5086900 (= e!3172600 (inv!77702 (right!43185 xs!286)))))

(declare-fun b!5086901 () Bool)

(declare-fun e!3172601 () Bool)

(assert (=> b!5086901 (= e!3172600 e!3172601)))

(declare-fun res!2165593 () Bool)

(assert (=> b!5086901 (= res!2165593 (not ((_ is Leaf!25890) (right!43185 xs!286))))))

(assert (=> b!5086901 (=> res!2165593 e!3172601)))

(declare-fun b!5086902 () Bool)

(assert (=> b!5086902 (= e!3172601 (inv!77703 (right!43185 xs!286)))))

(assert (= (and d!1646474 c!874001) b!5086900))

(assert (= (and d!1646474 (not c!874001)) b!5086901))

(assert (= (and b!5086901 (not res!2165593)) b!5086902))

(declare-fun m!6144274 () Bool)

(assert (=> b!5086900 m!6144274))

(declare-fun m!6144276 () Bool)

(assert (=> b!5086902 m!6144276))

(assert (=> b!5086621 d!1646474))

(declare-fun d!1646476 () Bool)

(assert (=> d!1646476 (= (inv!77699 (xs!18970 xs!286)) (<= (size!39127 (innerList!15678 (xs!18970 xs!286))) 2147483647))))

(declare-fun bs!1190968 () Bool)

(assert (= bs!1190968 d!1646476))

(declare-fun m!6144278 () Bool)

(assert (=> bs!1190968 m!6144278))

(assert (=> b!5086619 d!1646476))

(declare-fun d!1646478 () Bool)

(assert (=> d!1646478 (= (inv!77699 (xs!18970 ys!41)) (<= (size!39127 (innerList!15678 (xs!18970 ys!41))) 2147483647))))

(declare-fun bs!1190969 () Bool)

(assert (= bs!1190969 d!1646478))

(declare-fun m!6144280 () Bool)

(assert (=> bs!1190969 m!6144280))

(assert (=> b!5086620 d!1646478))

(declare-fun b!5086907 () Bool)

(declare-fun e!3172604 () Bool)

(declare-fun tp_is_empty!37103 () Bool)

(declare-fun tp!1418149 () Bool)

(assert (=> b!5086907 (= e!3172604 (and tp_is_empty!37103 tp!1418149))))

(assert (=> b!5086611 (= tp!1418110 e!3172604)))

(assert (= (and b!5086611 ((_ is Cons!58460) (innerList!15678 (xs!18970 err!4625)))) b!5086907))

(declare-fun b!5086908 () Bool)

(declare-fun e!3172605 () Bool)

(declare-fun tp!1418150 () Bool)

(assert (=> b!5086908 (= e!3172605 (and tp_is_empty!37103 tp!1418150))))

(assert (=> b!5086617 (= tp!1418112 e!3172605)))

(assert (= (and b!5086617 ((_ is Cons!58460) (innerList!15678 (xs!18970 ys!41)))) b!5086908))

(declare-fun tp!1418157 () Bool)

(declare-fun tp!1418159 () Bool)

(declare-fun b!5086917 () Bool)

(declare-fun e!3172611 () Bool)

(assert (=> b!5086917 (= e!3172611 (and (inv!77698 (left!42855 (left!42855 ys!41))) tp!1418159 (inv!77698 (right!43185 (left!42855 ys!41))) tp!1418157))))

(declare-fun b!5086919 () Bool)

(declare-fun e!3172610 () Bool)

(declare-fun tp!1418158 () Bool)

(assert (=> b!5086919 (= e!3172610 tp!1418158)))

(declare-fun b!5086918 () Bool)

(assert (=> b!5086918 (= e!3172611 (and (inv!77699 (xs!18970 (left!42855 ys!41))) e!3172610))))

(assert (=> b!5086615 (= tp!1418109 (and (inv!77698 (left!42855 ys!41)) e!3172611))))

(assert (= (and b!5086615 ((_ is Node!15590) (left!42855 ys!41))) b!5086917))

(assert (= b!5086918 b!5086919))

(assert (= (and b!5086615 ((_ is Leaf!25890) (left!42855 ys!41))) b!5086918))

(declare-fun m!6144282 () Bool)

(assert (=> b!5086917 m!6144282))

(declare-fun m!6144284 () Bool)

(assert (=> b!5086917 m!6144284))

(declare-fun m!6144286 () Bool)

(assert (=> b!5086918 m!6144286))

(assert (=> b!5086615 m!6143960))

(declare-fun e!3172613 () Bool)

(declare-fun tp!1418162 () Bool)

(declare-fun tp!1418160 () Bool)

(declare-fun b!5086920 () Bool)

(assert (=> b!5086920 (= e!3172613 (and (inv!77698 (left!42855 (right!43185 ys!41))) tp!1418162 (inv!77698 (right!43185 (right!43185 ys!41))) tp!1418160))))

(declare-fun b!5086922 () Bool)

(declare-fun e!3172612 () Bool)

(declare-fun tp!1418161 () Bool)

(assert (=> b!5086922 (= e!3172612 tp!1418161)))

(declare-fun b!5086921 () Bool)

(assert (=> b!5086921 (= e!3172613 (and (inv!77699 (xs!18970 (right!43185 ys!41))) e!3172612))))

(assert (=> b!5086615 (= tp!1418115 (and (inv!77698 (right!43185 ys!41)) e!3172613))))

(assert (= (and b!5086615 ((_ is Node!15590) (right!43185 ys!41))) b!5086920))

(assert (= b!5086921 b!5086922))

(assert (= (and b!5086615 ((_ is Leaf!25890) (right!43185 ys!41))) b!5086921))

(declare-fun m!6144288 () Bool)

(assert (=> b!5086920 m!6144288))

(declare-fun m!6144290 () Bool)

(assert (=> b!5086920 m!6144290))

(declare-fun m!6144292 () Bool)

(assert (=> b!5086921 m!6144292))

(assert (=> b!5086615 m!6143962))

(declare-fun e!3172615 () Bool)

(declare-fun tp!1418163 () Bool)

(declare-fun b!5086923 () Bool)

(declare-fun tp!1418165 () Bool)

(assert (=> b!5086923 (= e!3172615 (and (inv!77698 (left!42855 (left!42855 xs!286))) tp!1418165 (inv!77698 (right!43185 (left!42855 xs!286))) tp!1418163))))

(declare-fun b!5086925 () Bool)

(declare-fun e!3172614 () Bool)

(declare-fun tp!1418164 () Bool)

(assert (=> b!5086925 (= e!3172614 tp!1418164)))

(declare-fun b!5086924 () Bool)

(assert (=> b!5086924 (= e!3172615 (and (inv!77699 (xs!18970 (left!42855 xs!286))) e!3172614))))

(assert (=> b!5086621 (= tp!1418113 (and (inv!77698 (left!42855 xs!286)) e!3172615))))

(assert (= (and b!5086621 ((_ is Node!15590) (left!42855 xs!286))) b!5086923))

(assert (= b!5086924 b!5086925))

(assert (= (and b!5086621 ((_ is Leaf!25890) (left!42855 xs!286))) b!5086924))

(declare-fun m!6144294 () Bool)

(assert (=> b!5086923 m!6144294))

(declare-fun m!6144296 () Bool)

(assert (=> b!5086923 m!6144296))

(declare-fun m!6144298 () Bool)

(assert (=> b!5086924 m!6144298))

(assert (=> b!5086621 m!6143948))

(declare-fun tp!1418168 () Bool)

(declare-fun e!3172617 () Bool)

(declare-fun tp!1418166 () Bool)

(declare-fun b!5086926 () Bool)

(assert (=> b!5086926 (= e!3172617 (and (inv!77698 (left!42855 (right!43185 xs!286))) tp!1418168 (inv!77698 (right!43185 (right!43185 xs!286))) tp!1418166))))

(declare-fun b!5086928 () Bool)

(declare-fun e!3172616 () Bool)

(declare-fun tp!1418167 () Bool)

(assert (=> b!5086928 (= e!3172616 tp!1418167)))

(declare-fun b!5086927 () Bool)

(assert (=> b!5086927 (= e!3172617 (and (inv!77699 (xs!18970 (right!43185 xs!286))) e!3172616))))

(assert (=> b!5086621 (= tp!1418111 (and (inv!77698 (right!43185 xs!286)) e!3172617))))

(assert (= (and b!5086621 ((_ is Node!15590) (right!43185 xs!286))) b!5086926))

(assert (= b!5086927 b!5086928))

(assert (= (and b!5086621 ((_ is Leaf!25890) (right!43185 xs!286))) b!5086927))

(declare-fun m!6144300 () Bool)

(assert (=> b!5086926 m!6144300))

(declare-fun m!6144302 () Bool)

(assert (=> b!5086926 m!6144302))

(declare-fun m!6144304 () Bool)

(assert (=> b!5086927 m!6144304))

(assert (=> b!5086621 m!6143950))

(declare-fun b!5086929 () Bool)

(declare-fun e!3172619 () Bool)

(declare-fun tp!1418171 () Bool)

(declare-fun tp!1418169 () Bool)

(assert (=> b!5086929 (= e!3172619 (and (inv!77698 (left!42855 (left!42855 err!4625))) tp!1418171 (inv!77698 (right!43185 (left!42855 err!4625))) tp!1418169))))

(declare-fun b!5086931 () Bool)

(declare-fun e!3172618 () Bool)

(declare-fun tp!1418170 () Bool)

(assert (=> b!5086931 (= e!3172618 tp!1418170)))

(declare-fun b!5086930 () Bool)

(assert (=> b!5086930 (= e!3172619 (and (inv!77699 (xs!18970 (left!42855 err!4625))) e!3172618))))

(assert (=> b!5086614 (= tp!1418116 (and (inv!77698 (left!42855 err!4625)) e!3172619))))

(assert (= (and b!5086614 ((_ is Node!15590) (left!42855 err!4625))) b!5086929))

(assert (= b!5086930 b!5086931))

(assert (= (and b!5086614 ((_ is Leaf!25890) (left!42855 err!4625))) b!5086930))

(declare-fun m!6144306 () Bool)

(assert (=> b!5086929 m!6144306))

(declare-fun m!6144308 () Bool)

(assert (=> b!5086929 m!6144308))

(declare-fun m!6144310 () Bool)

(assert (=> b!5086930 m!6144310))

(assert (=> b!5086614 m!6143926))

(declare-fun b!5086932 () Bool)

(declare-fun e!3172621 () Bool)

(declare-fun tp!1418172 () Bool)

(declare-fun tp!1418174 () Bool)

(assert (=> b!5086932 (= e!3172621 (and (inv!77698 (left!42855 (right!43185 err!4625))) tp!1418174 (inv!77698 (right!43185 (right!43185 err!4625))) tp!1418172))))

(declare-fun b!5086934 () Bool)

(declare-fun e!3172620 () Bool)

(declare-fun tp!1418173 () Bool)

(assert (=> b!5086934 (= e!3172620 tp!1418173)))

(declare-fun b!5086933 () Bool)

(assert (=> b!5086933 (= e!3172621 (and (inv!77699 (xs!18970 (right!43185 err!4625))) e!3172620))))

(assert (=> b!5086614 (= tp!1418114 (and (inv!77698 (right!43185 err!4625)) e!3172621))))

(assert (= (and b!5086614 ((_ is Node!15590) (right!43185 err!4625))) b!5086932))

(assert (= b!5086933 b!5086934))

(assert (= (and b!5086614 ((_ is Leaf!25890) (right!43185 err!4625))) b!5086933))

(declare-fun m!6144312 () Bool)

(assert (=> b!5086932 m!6144312))

(declare-fun m!6144314 () Bool)

(assert (=> b!5086932 m!6144314))

(declare-fun m!6144316 () Bool)

(assert (=> b!5086933 m!6144316))

(assert (=> b!5086614 m!6143928))

(declare-fun b!5086935 () Bool)

(declare-fun e!3172622 () Bool)

(declare-fun tp!1418175 () Bool)

(assert (=> b!5086935 (= e!3172622 (and tp_is_empty!37103 tp!1418175))))

(assert (=> b!5086625 (= tp!1418117 e!3172622)))

(assert (= (and b!5086625 ((_ is Cons!58460) (innerList!15678 (xs!18970 xs!286)))) b!5086935))

(check-sat (not b!5086894) (not b!5086907) (not b!5086621) (not b!5086695) (not d!1646478) (not b!5086900) (not b!5086654) (not b!5086764) (not b!5086675) (not d!1646418) (not b!5086664) (not b!5086717) (not b!5086919) (not b!5086918) (not b!5086754) (not b!5086781) (not b!5086881) (not b!5086893) (not b!5086783) (not b!5086697) (not b!5086934) (not b!5086765) (not b!5086890) (not b!5086895) (not b!5086888) (not b!5086935) (not b!5086930) (not b!5086692) (not b!5086896) (not b!5086686) (not b!5086689) (not b!5086921) tp_is_empty!37103 (not b!5086614) (not b!5086922) (not b!5086924) (not b!5086887) (not b!5086778) (not b!5086651) (not b!5086926) (not b!5086902) (not b!5086615) (not b!5086932) (not b!5086662) (not b!5086755) (not b!5086933) (not d!1646410) (not b!5086920) (not b!5086917) (not b!5086743) (not b!5086925) (not b!5086653) (not b!5086883) (not b!5086891) (not b!5086927) (not b!5086892) (not b!5086694) (not b!5086899) (not b!5086879) (not b!5086929) (not b!5086928) (not b!5086780) (not b!5086652) (not b!5086655) (not b!5086897) (not b!5086931) (not b!5086782) (not d!1646476) (not b!5086718) (not b!5086908) (not b!5086880) (not b!5086923) (not b!5086691) (not b!5086882) (not b!5086744) (not b!5086779) (not b!5086650) (not b!5086688) (not b!5086677))
(check-sat)
(get-model)

(declare-fun b!5086971 () Bool)

(declare-fun e!3172639 () Bool)

(declare-fun call!354493 () List!58584)

(declare-fun call!354490 () List!58584)

(assert (=> b!5086971 (= e!3172639 (= call!354493 call!354490))))

(declare-fun lt!2091754 () Bool)

(assert (=> b!5086971 (= lt!2091754 (appendAssoc!316 (t!371437 (list!19041 (left!42855 (right!43185 xs!286)))) (list!19041 (right!43185 (right!43185 xs!286))) (list!19041 ys!41)))))

(declare-fun bm!354485 () Bool)

(declare-fun call!354492 () List!58584)

(assert (=> bm!354485 (= call!354490 (++!12817 (list!19041 (left!42855 (right!43185 xs!286))) call!354492))))

(declare-fun bm!354486 () Bool)

(assert (=> bm!354486 (= call!354492 (++!12817 (list!19041 (right!43185 (right!43185 xs!286))) (list!19041 ys!41)))))

(declare-fun d!1646488 () Bool)

(assert (=> d!1646488 e!3172639))

(declare-fun c!874011 () Bool)

(assert (=> d!1646488 (= c!874011 ((_ is Nil!58460) (list!19041 (left!42855 (right!43185 xs!286)))))))

(assert (=> d!1646488 (= (appendAssoc!316 (list!19041 (left!42855 (right!43185 xs!286))) (list!19041 (right!43185 (right!43185 xs!286))) (list!19041 ys!41)) true)))

(declare-fun bm!354487 () Bool)

(declare-fun call!354491 () List!58584)

(assert (=> bm!354487 (= call!354493 (++!12817 call!354491 (list!19041 ys!41)))))

(declare-fun b!5086972 () Bool)

(assert (=> b!5086972 (= e!3172639 (= call!354493 call!354490))))

(declare-fun bm!354488 () Bool)

(assert (=> bm!354488 (= call!354491 (++!12817 (list!19041 (left!42855 (right!43185 xs!286))) (list!19041 (right!43185 (right!43185 xs!286)))))))

(assert (= (and d!1646488 c!874011) b!5086972))

(assert (= (and d!1646488 (not c!874011)) b!5086971))

(assert (= (or b!5086972 b!5086971) bm!354488))

(assert (= (or b!5086972 b!5086971) bm!354486))

(assert (= (or b!5086972 b!5086971) bm!354485))

(assert (= (or b!5086972 b!5086971) bm!354487))

(assert (=> bm!354486 m!6144244))

(assert (=> bm!354486 m!6143940))

(assert (=> bm!354486 m!6144248))

(assert (=> bm!354485 m!6144242))

(declare-fun m!6144356 () Bool)

(assert (=> bm!354485 m!6144356))

(assert (=> bm!354487 m!6143940))

(declare-fun m!6144358 () Bool)

(assert (=> bm!354487 m!6144358))

(assert (=> b!5086971 m!6144244))

(assert (=> b!5086971 m!6143940))

(declare-fun m!6144360 () Bool)

(assert (=> b!5086971 m!6144360))

(assert (=> bm!354488 m!6144242))

(assert (=> bm!354488 m!6144244))

(declare-fun m!6144362 () Bool)

(assert (=> bm!354488 m!6144362))

(assert (=> b!5086882 d!1646488))

(declare-fun b!5086980 () Bool)

(declare-fun e!3172642 () List!58584)

(declare-fun e!3172643 () List!58584)

(assert (=> b!5086980 (= e!3172642 e!3172643)))

(declare-fun c!874013 () Bool)

(assert (=> b!5086980 (= c!874013 ((_ is Leaf!25890) (left!42855 (right!43185 xs!286))))))

(declare-fun b!5086981 () Bool)

(assert (=> b!5086981 (= e!3172643 (list!19043 (xs!18970 (left!42855 (right!43185 xs!286)))))))

(declare-fun b!5086982 () Bool)

(assert (=> b!5086982 (= e!3172643 (++!12817 (list!19041 (left!42855 (left!42855 (right!43185 xs!286)))) (list!19041 (right!43185 (left!42855 (right!43185 xs!286))))))))

(declare-fun b!5086979 () Bool)

(assert (=> b!5086979 (= e!3172642 Nil!58460)))

(declare-fun d!1646506 () Bool)

(declare-fun c!874012 () Bool)

(assert (=> d!1646506 (= c!874012 ((_ is Empty!15590) (left!42855 (right!43185 xs!286))))))

(assert (=> d!1646506 (= (list!19041 (left!42855 (right!43185 xs!286))) e!3172642)))

(assert (= (and d!1646506 c!874012) b!5086979))

(assert (= (and d!1646506 (not c!874012)) b!5086980))

(assert (= (and b!5086980 c!874013) b!5086981))

(assert (= (and b!5086980 (not c!874013)) b!5086982))

(declare-fun m!6144364 () Bool)

(assert (=> b!5086981 m!6144364))

(declare-fun m!6144366 () Bool)

(assert (=> b!5086982 m!6144366))

(declare-fun m!6144368 () Bool)

(assert (=> b!5086982 m!6144368))

(assert (=> b!5086982 m!6144366))

(assert (=> b!5086982 m!6144368))

(declare-fun m!6144374 () Bool)

(assert (=> b!5086982 m!6144374))

(assert (=> b!5086882 d!1646506))

(declare-fun b!5086984 () Bool)

(declare-fun e!3172644 () List!58584)

(declare-fun e!3172645 () List!58584)

(assert (=> b!5086984 (= e!3172644 e!3172645)))

(declare-fun c!874015 () Bool)

(assert (=> b!5086984 (= c!874015 ((_ is Leaf!25890) (right!43185 (right!43185 xs!286))))))

(declare-fun b!5086985 () Bool)

(assert (=> b!5086985 (= e!3172645 (list!19043 (xs!18970 (right!43185 (right!43185 xs!286)))))))

(declare-fun b!5086986 () Bool)

(assert (=> b!5086986 (= e!3172645 (++!12817 (list!19041 (left!42855 (right!43185 (right!43185 xs!286)))) (list!19041 (right!43185 (right!43185 (right!43185 xs!286))))))))

(declare-fun b!5086983 () Bool)

(assert (=> b!5086983 (= e!3172644 Nil!58460)))

(declare-fun d!1646508 () Bool)

(declare-fun c!874014 () Bool)

(assert (=> d!1646508 (= c!874014 ((_ is Empty!15590) (right!43185 (right!43185 xs!286))))))

(assert (=> d!1646508 (= (list!19041 (right!43185 (right!43185 xs!286))) e!3172644)))

(assert (= (and d!1646508 c!874014) b!5086983))

(assert (= (and d!1646508 (not c!874014)) b!5086984))

(assert (= (and b!5086984 c!874015) b!5086985))

(assert (= (and b!5086984 (not c!874015)) b!5086986))

(declare-fun m!6144384 () Bool)

(assert (=> b!5086985 m!6144384))

(declare-fun m!6144386 () Bool)

(assert (=> b!5086986 m!6144386))

(declare-fun m!6144388 () Bool)

(assert (=> b!5086986 m!6144388))

(assert (=> b!5086986 m!6144386))

(assert (=> b!5086986 m!6144388))

(declare-fun m!6144390 () Bool)

(assert (=> b!5086986 m!6144390))

(assert (=> b!5086882 d!1646508))

(assert (=> b!5086882 d!1646430))

(declare-fun b!5086991 () Bool)

(declare-fun e!3172648 () Bool)

(declare-fun call!354497 () List!58584)

(declare-fun call!354494 () List!58584)

(assert (=> b!5086991 (= e!3172648 (= call!354497 call!354494))))

(declare-fun lt!2091755 () Bool)

(assert (=> b!5086991 (= lt!2091755 (appendAssoc!316 (t!371437 (list!19041 (left!42855 xs!286))) (list!19041 (right!43185 xs!286)) (list!19041 ys!41)))))

(declare-fun bm!354489 () Bool)

(declare-fun call!354496 () List!58584)

(assert (=> bm!354489 (= call!354494 (++!12817 (list!19041 (left!42855 xs!286)) call!354496))))

(declare-fun bm!354490 () Bool)

(assert (=> bm!354490 (= call!354496 (++!12817 (list!19041 (right!43185 xs!286)) (list!19041 ys!41)))))

(declare-fun d!1646512 () Bool)

(assert (=> d!1646512 e!3172648))

(declare-fun c!874018 () Bool)

(assert (=> d!1646512 (= c!874018 ((_ is Nil!58460) (list!19041 (left!42855 xs!286))))))

(assert (=> d!1646512 (= (appendAssoc!316 (list!19041 (left!42855 xs!286)) (list!19041 (right!43185 xs!286)) (list!19041 ys!41)) true)))

(declare-fun bm!354491 () Bool)

(declare-fun call!354495 () List!58584)

(assert (=> bm!354491 (= call!354497 (++!12817 call!354495 (list!19041 ys!41)))))

(declare-fun b!5086992 () Bool)

(assert (=> b!5086992 (= e!3172648 (= call!354497 call!354494))))

(declare-fun bm!354492 () Bool)

(assert (=> bm!354492 (= call!354495 (++!12817 (list!19041 (left!42855 xs!286)) (list!19041 (right!43185 xs!286))))))

(assert (= (and d!1646512 c!874018) b!5086992))

(assert (= (and d!1646512 (not c!874018)) b!5086991))

(assert (= (or b!5086992 b!5086991) bm!354492))

(assert (= (or b!5086992 b!5086991) bm!354490))

(assert (= (or b!5086992 b!5086991) bm!354489))

(assert (= (or b!5086992 b!5086991) bm!354491))

(assert (=> bm!354490 m!6144092))

(assert (=> bm!354490 m!6143940))

(declare-fun m!6144406 () Bool)

(assert (=> bm!354490 m!6144406))

(assert (=> bm!354489 m!6144090))

(declare-fun m!6144410 () Bool)

(assert (=> bm!354489 m!6144410))

(assert (=> bm!354491 m!6143940))

(declare-fun m!6144412 () Bool)

(assert (=> bm!354491 m!6144412))

(assert (=> b!5086991 m!6144092))

(assert (=> b!5086991 m!6143940))

(declare-fun m!6144414 () Bool)

(assert (=> b!5086991 m!6144414))

(assert (=> bm!354492 m!6144090))

(assert (=> bm!354492 m!6144092))

(assert (=> bm!354492 m!6144094))

(assert (=> b!5086880 d!1646512))

(declare-fun b!5087000 () Bool)

(declare-fun e!3172652 () List!58584)

(declare-fun e!3172653 () List!58584)

(assert (=> b!5087000 (= e!3172652 e!3172653)))

(declare-fun c!874023 () Bool)

(assert (=> b!5087000 (= c!874023 ((_ is Leaf!25890) (left!42855 xs!286)))))

(declare-fun b!5087001 () Bool)

(assert (=> b!5087001 (= e!3172653 (list!19043 (xs!18970 (left!42855 xs!286))))))

(declare-fun b!5087002 () Bool)

(assert (=> b!5087002 (= e!3172653 (++!12817 (list!19041 (left!42855 (left!42855 xs!286))) (list!19041 (right!43185 (left!42855 xs!286)))))))

(declare-fun b!5086999 () Bool)

(assert (=> b!5086999 (= e!3172652 Nil!58460)))

(declare-fun d!1646518 () Bool)

(declare-fun c!874022 () Bool)

(assert (=> d!1646518 (= c!874022 ((_ is Empty!15590) (left!42855 xs!286)))))

(assert (=> d!1646518 (= (list!19041 (left!42855 xs!286)) e!3172652)))

(assert (= (and d!1646518 c!874022) b!5086999))

(assert (= (and d!1646518 (not c!874022)) b!5087000))

(assert (= (and b!5087000 c!874023) b!5087001))

(assert (= (and b!5087000 (not c!874023)) b!5087002))

(declare-fun m!6144416 () Bool)

(assert (=> b!5087001 m!6144416))

(declare-fun m!6144418 () Bool)

(assert (=> b!5087002 m!6144418))

(declare-fun m!6144420 () Bool)

(assert (=> b!5087002 m!6144420))

(assert (=> b!5087002 m!6144418))

(assert (=> b!5087002 m!6144420))

(declare-fun m!6144422 () Bool)

(assert (=> b!5087002 m!6144422))

(assert (=> b!5086880 d!1646518))

(declare-fun b!5087004 () Bool)

(declare-fun e!3172654 () List!58584)

(declare-fun e!3172655 () List!58584)

(assert (=> b!5087004 (= e!3172654 e!3172655)))

(declare-fun c!874025 () Bool)

(assert (=> b!5087004 (= c!874025 ((_ is Leaf!25890) (right!43185 xs!286)))))

(declare-fun b!5087005 () Bool)

(assert (=> b!5087005 (= e!3172655 (list!19043 (xs!18970 (right!43185 xs!286))))))

(declare-fun b!5087006 () Bool)

(assert (=> b!5087006 (= e!3172655 (++!12817 (list!19041 (left!42855 (right!43185 xs!286))) (list!19041 (right!43185 (right!43185 xs!286)))))))

(declare-fun b!5087003 () Bool)

(assert (=> b!5087003 (= e!3172654 Nil!58460)))

(declare-fun d!1646520 () Bool)

(declare-fun c!874024 () Bool)

(assert (=> d!1646520 (= c!874024 ((_ is Empty!15590) (right!43185 xs!286)))))

(assert (=> d!1646520 (= (list!19041 (right!43185 xs!286)) e!3172654)))

(assert (= (and d!1646520 c!874024) b!5087003))

(assert (= (and d!1646520 (not c!874024)) b!5087004))

(assert (= (and b!5087004 c!874025) b!5087005))

(assert (= (and b!5087004 (not c!874025)) b!5087006))

(declare-fun m!6144434 () Bool)

(assert (=> b!5087005 m!6144434))

(assert (=> b!5087006 m!6144242))

(assert (=> b!5087006 m!6144244))

(assert (=> b!5087006 m!6144242))

(assert (=> b!5087006 m!6144244))

(assert (=> b!5087006 m!6144362))

(assert (=> b!5086880 d!1646520))

(assert (=> b!5086880 d!1646430))

(declare-fun b!5087011 () Bool)

(declare-fun res!2165619 () Bool)

(declare-fun e!3172659 () Bool)

(assert (=> b!5087011 (=> (not res!2165619) (not e!3172659))))

(assert (=> b!5087011 (= res!2165619 (isBalanced!4452 (left!42855 (right!43185 xs!286))))))

(declare-fun b!5087012 () Bool)

(declare-fun e!3172658 () Bool)

(assert (=> b!5087012 (= e!3172658 e!3172659)))

(declare-fun res!2165621 () Bool)

(assert (=> b!5087012 (=> (not res!2165621) (not e!3172659))))

(assert (=> b!5087012 (= res!2165621 (<= (- 1) (- (height!2167 (left!42855 (right!43185 xs!286))) (height!2167 (right!43185 (right!43185 xs!286))))))))

(declare-fun b!5087013 () Bool)

(declare-fun res!2165617 () Bool)

(assert (=> b!5087013 (=> (not res!2165617) (not e!3172659))))

(assert (=> b!5087013 (= res!2165617 (<= (- (height!2167 (left!42855 (right!43185 xs!286))) (height!2167 (right!43185 (right!43185 xs!286)))) 1))))

(declare-fun b!5087014 () Bool)

(assert (=> b!5087014 (= e!3172659 (not (isEmpty!31683 (right!43185 (right!43185 xs!286)))))))

(declare-fun b!5087015 () Bool)

(declare-fun res!2165620 () Bool)

(assert (=> b!5087015 (=> (not res!2165620) (not e!3172659))))

(assert (=> b!5087015 (= res!2165620 (isBalanced!4452 (right!43185 (right!43185 xs!286))))))

(declare-fun b!5087016 () Bool)

(declare-fun res!2165622 () Bool)

(assert (=> b!5087016 (=> (not res!2165622) (not e!3172659))))

(assert (=> b!5087016 (= res!2165622 (not (isEmpty!31683 (left!42855 (right!43185 xs!286)))))))

(declare-fun d!1646524 () Bool)

(declare-fun res!2165618 () Bool)

(assert (=> d!1646524 (=> res!2165618 e!3172658)))

(assert (=> d!1646524 (= res!2165618 (not ((_ is Node!15590) (right!43185 xs!286))))))

(assert (=> d!1646524 (= (isBalanced!4452 (right!43185 xs!286)) e!3172658)))

(assert (= (and d!1646524 (not res!2165618)) b!5087012))

(assert (= (and b!5087012 res!2165621) b!5087013))

(assert (= (and b!5087013 res!2165617) b!5087011))

(assert (= (and b!5087011 res!2165619) b!5087015))

(assert (= (and b!5087015 res!2165620) b!5087016))

(assert (= (and b!5087016 res!2165622) b!5087014))

(declare-fun m!6144444 () Bool)

(assert (=> b!5087013 m!6144444))

(declare-fun m!6144446 () Bool)

(assert (=> b!5087013 m!6144446))

(assert (=> b!5087012 m!6144444))

(assert (=> b!5087012 m!6144446))

(declare-fun m!6144448 () Bool)

(assert (=> b!5087015 m!6144448))

(declare-fun m!6144450 () Bool)

(assert (=> b!5087016 m!6144450))

(declare-fun m!6144452 () Bool)

(assert (=> b!5087011 m!6144452))

(declare-fun m!6144454 () Bool)

(assert (=> b!5087014 m!6144454))

(assert (=> b!5086654 d!1646524))

(declare-fun d!1646528 () Bool)

(declare-fun lt!2091763 () Int)

(assert (=> d!1646528 (>= lt!2091763 0)))

(declare-fun e!3172667 () Int)

(assert (=> d!1646528 (= lt!2091763 e!3172667)))

(declare-fun c!874033 () Bool)

(assert (=> d!1646528 (= c!874033 ((_ is Nil!58460) (innerList!15678 (xs!18970 ys!41))))))

(assert (=> d!1646528 (= (size!39127 (innerList!15678 (xs!18970 ys!41))) lt!2091763)))

(declare-fun b!5087032 () Bool)

(assert (=> b!5087032 (= e!3172667 0)))

(declare-fun b!5087033 () Bool)

(assert (=> b!5087033 (= e!3172667 (+ 1 (size!39127 (t!371437 (innerList!15678 (xs!18970 ys!41))))))))

(assert (= (and d!1646528 c!874033) b!5087032))

(assert (= (and d!1646528 (not c!874033)) b!5087033))

(declare-fun m!6144480 () Bool)

(assert (=> b!5087033 m!6144480))

(assert (=> d!1646478 d!1646528))

(declare-fun d!1646536 () Bool)

(declare-fun lt!2091768 () Bool)

(declare-fun isEmpty!31685 (List!58584) Bool)

(assert (=> d!1646536 (= lt!2091768 (isEmpty!31685 (list!19041 (left!42855 lt!2091737))))))

(declare-fun size!39129 (Conc!15590) Int)

(assert (=> d!1646536 (= lt!2091768 (= (size!39129 (left!42855 lt!2091737)) 0))))

(assert (=> d!1646536 (= (isEmpty!31683 (left!42855 lt!2091737)) lt!2091768)))

(declare-fun bs!1190972 () Bool)

(assert (= bs!1190972 d!1646536))

(assert (=> bs!1190972 m!6144016))

(assert (=> bs!1190972 m!6144016))

(declare-fun m!6144510 () Bool)

(assert (=> bs!1190972 m!6144510))

(declare-fun m!6144512 () Bool)

(assert (=> bs!1190972 m!6144512))

(assert (=> b!5086783 d!1646536))

(declare-fun d!1646552 () Bool)

(declare-fun c!874039 () Bool)

(assert (=> d!1646552 (= c!874039 ((_ is Node!15590) (left!42855 (left!42855 err!4625))))))

(declare-fun e!3172677 () Bool)

(assert (=> d!1646552 (= (inv!77698 (left!42855 (left!42855 err!4625))) e!3172677)))

(declare-fun b!5087050 () Bool)

(assert (=> b!5087050 (= e!3172677 (inv!77702 (left!42855 (left!42855 err!4625))))))

(declare-fun b!5087051 () Bool)

(declare-fun e!3172678 () Bool)

(assert (=> b!5087051 (= e!3172677 e!3172678)))

(declare-fun res!2165634 () Bool)

(assert (=> b!5087051 (= res!2165634 (not ((_ is Leaf!25890) (left!42855 (left!42855 err!4625)))))))

(assert (=> b!5087051 (=> res!2165634 e!3172678)))

(declare-fun b!5087052 () Bool)

(assert (=> b!5087052 (= e!3172678 (inv!77703 (left!42855 (left!42855 err!4625))))))

(assert (= (and d!1646552 c!874039) b!5087050))

(assert (= (and d!1646552 (not c!874039)) b!5087051))

(assert (= (and b!5087051 (not res!2165634)) b!5087052))

(declare-fun m!6144518 () Bool)

(assert (=> b!5087050 m!6144518))

(declare-fun m!6144520 () Bool)

(assert (=> b!5087052 m!6144520))

(assert (=> b!5086929 d!1646552))

(declare-fun d!1646558 () Bool)

(declare-fun c!874042 () Bool)

(assert (=> d!1646558 (= c!874042 ((_ is Node!15590) (right!43185 (left!42855 err!4625))))))

(declare-fun e!3172681 () Bool)

(assert (=> d!1646558 (= (inv!77698 (right!43185 (left!42855 err!4625))) e!3172681)))

(declare-fun b!5087057 () Bool)

(assert (=> b!5087057 (= e!3172681 (inv!77702 (right!43185 (left!42855 err!4625))))))

(declare-fun b!5087058 () Bool)

(declare-fun e!3172682 () Bool)

(assert (=> b!5087058 (= e!3172681 e!3172682)))

(declare-fun res!2165635 () Bool)

(assert (=> b!5087058 (= res!2165635 (not ((_ is Leaf!25890) (right!43185 (left!42855 err!4625)))))))

(assert (=> b!5087058 (=> res!2165635 e!3172682)))

(declare-fun b!5087059 () Bool)

(assert (=> b!5087059 (= e!3172682 (inv!77703 (right!43185 (left!42855 err!4625))))))

(assert (= (and d!1646558 c!874042) b!5087057))

(assert (= (and d!1646558 (not c!874042)) b!5087058))

(assert (= (and b!5087058 (not res!2165635)) b!5087059))

(declare-fun m!6144524 () Bool)

(assert (=> b!5087057 m!6144524))

(declare-fun m!6144526 () Bool)

(assert (=> b!5087059 m!6144526))

(assert (=> b!5086929 d!1646558))

(declare-fun d!1646562 () Bool)

(declare-fun res!2165651 () Bool)

(declare-fun e!3172694 () Bool)

(assert (=> d!1646562 (=> (not res!2165651) (not e!3172694))))

(assert (=> d!1646562 (= res!2165651 (<= (size!39127 (list!19043 (xs!18970 ys!41))) 512))))

(assert (=> d!1646562 (= (inv!77703 ys!41) e!3172694)))

(declare-fun b!5087083 () Bool)

(declare-fun res!2165652 () Bool)

(assert (=> b!5087083 (=> (not res!2165652) (not e!3172694))))

(assert (=> b!5087083 (= res!2165652 (= (csize!31411 ys!41) (size!39127 (list!19043 (xs!18970 ys!41)))))))

(declare-fun b!5087084 () Bool)

(assert (=> b!5087084 (= e!3172694 (and (> (csize!31411 ys!41) 0) (<= (csize!31411 ys!41) 512)))))

(assert (= (and d!1646562 res!2165651) b!5087083))

(assert (= (and b!5087083 res!2165652) b!5087084))

(assert (=> d!1646562 m!6144104))

(assert (=> d!1646562 m!6144104))

(declare-fun m!6144554 () Bool)

(assert (=> d!1646562 m!6144554))

(assert (=> b!5087083 m!6144104))

(assert (=> b!5087083 m!6144104))

(assert (=> b!5087083 m!6144554))

(assert (=> b!5086677 d!1646562))

(declare-fun d!1646572 () Bool)

(declare-fun c!874047 () Bool)

(assert (=> d!1646572 (= c!874047 ((_ is Node!15590) (left!42855 (right!43185 ys!41))))))

(declare-fun e!3172695 () Bool)

(assert (=> d!1646572 (= (inv!77698 (left!42855 (right!43185 ys!41))) e!3172695)))

(declare-fun b!5087085 () Bool)

(assert (=> b!5087085 (= e!3172695 (inv!77702 (left!42855 (right!43185 ys!41))))))

(declare-fun b!5087086 () Bool)

(declare-fun e!3172696 () Bool)

(assert (=> b!5087086 (= e!3172695 e!3172696)))

(declare-fun res!2165653 () Bool)

(assert (=> b!5087086 (= res!2165653 (not ((_ is Leaf!25890) (left!42855 (right!43185 ys!41)))))))

(assert (=> b!5087086 (=> res!2165653 e!3172696)))

(declare-fun b!5087087 () Bool)

(assert (=> b!5087087 (= e!3172696 (inv!77703 (left!42855 (right!43185 ys!41))))))

(assert (= (and d!1646572 c!874047) b!5087085))

(assert (= (and d!1646572 (not c!874047)) b!5087086))

(assert (= (and b!5087086 (not res!2165653)) b!5087087))

(declare-fun m!6144556 () Bool)

(assert (=> b!5087085 m!6144556))

(declare-fun m!6144558 () Bool)

(assert (=> b!5087087 m!6144558))

(assert (=> b!5086920 d!1646572))

(declare-fun d!1646574 () Bool)

(declare-fun c!874048 () Bool)

(assert (=> d!1646574 (= c!874048 ((_ is Node!15590) (right!43185 (right!43185 ys!41))))))

(declare-fun e!3172697 () Bool)

(assert (=> d!1646574 (= (inv!77698 (right!43185 (right!43185 ys!41))) e!3172697)))

(declare-fun b!5087088 () Bool)

(assert (=> b!5087088 (= e!3172697 (inv!77702 (right!43185 (right!43185 ys!41))))))

(declare-fun b!5087089 () Bool)

(declare-fun e!3172698 () Bool)

(assert (=> b!5087089 (= e!3172697 e!3172698)))

(declare-fun res!2165654 () Bool)

(assert (=> b!5087089 (= res!2165654 (not ((_ is Leaf!25890) (right!43185 (right!43185 ys!41)))))))

(assert (=> b!5087089 (=> res!2165654 e!3172698)))

(declare-fun b!5087090 () Bool)

(assert (=> b!5087090 (= e!3172698 (inv!77703 (right!43185 (right!43185 ys!41))))))

(assert (= (and d!1646574 c!874048) b!5087088))

(assert (= (and d!1646574 (not c!874048)) b!5087089))

(assert (= (and b!5087089 (not res!2165654)) b!5087090))

(declare-fun m!6144560 () Bool)

(assert (=> b!5087088 m!6144560))

(declare-fun m!6144562 () Bool)

(assert (=> b!5087090 m!6144562))

(assert (=> b!5086920 d!1646574))

(declare-fun d!1646576 () Bool)

(declare-fun res!2165676 () Bool)

(declare-fun e!3172719 () Bool)

(assert (=> d!1646576 (=> (not res!2165676) (not e!3172719))))

(assert (=> d!1646576 (= res!2165676 (= (csize!31410 ys!41) (+ (size!39129 (left!42855 ys!41)) (size!39129 (right!43185 ys!41)))))))

(assert (=> d!1646576 (= (inv!77702 ys!41) e!3172719)))

(declare-fun b!5087132 () Bool)

(declare-fun res!2165677 () Bool)

(assert (=> b!5087132 (=> (not res!2165677) (not e!3172719))))

(assert (=> b!5087132 (= res!2165677 (and (not (= (left!42855 ys!41) Empty!15590)) (not (= (right!43185 ys!41) Empty!15590))))))

(declare-fun b!5087133 () Bool)

(declare-fun res!2165678 () Bool)

(assert (=> b!5087133 (=> (not res!2165678) (not e!3172719))))

(assert (=> b!5087133 (= res!2165678 (= (cheight!15801 ys!41) (+ (max!0 (height!2167 (left!42855 ys!41)) (height!2167 (right!43185 ys!41))) 1)))))

(declare-fun b!5087134 () Bool)

(assert (=> b!5087134 (= e!3172719 (<= 0 (cheight!15801 ys!41)))))

(assert (= (and d!1646576 res!2165676) b!5087132))

(assert (= (and b!5087132 res!2165677) b!5087133))

(assert (= (and b!5087133 res!2165678) b!5087134))

(declare-fun m!6144630 () Bool)

(assert (=> d!1646576 m!6144630))

(declare-fun m!6144632 () Bool)

(assert (=> d!1646576 m!6144632))

(assert (=> b!5087133 m!6144258))

(assert (=> b!5087133 m!6144260))

(assert (=> b!5087133 m!6144258))

(assert (=> b!5087133 m!6144260))

(declare-fun m!6144636 () Bool)

(assert (=> b!5087133 m!6144636))

(assert (=> b!5086675 d!1646576))

(declare-fun d!1646608 () Bool)

(declare-fun res!2165679 () Bool)

(declare-fun e!3172720 () Bool)

(assert (=> d!1646608 (=> (not res!2165679) (not e!3172720))))

(assert (=> d!1646608 (= res!2165679 (<= (size!39127 (list!19043 (xs!18970 err!4625))) 512))))

(assert (=> d!1646608 (= (inv!77703 err!4625) e!3172720)))

(declare-fun b!5087135 () Bool)

(declare-fun res!2165680 () Bool)

(assert (=> b!5087135 (=> (not res!2165680) (not e!3172720))))

(assert (=> b!5087135 (= res!2165680 (= (csize!31411 err!4625) (size!39127 (list!19043 (xs!18970 err!4625)))))))

(declare-fun b!5087136 () Bool)

(assert (=> b!5087136 (= e!3172720 (and (> (csize!31411 err!4625) 0) (<= (csize!31411 err!4625) 512)))))

(assert (= (and d!1646608 res!2165679) b!5087135))

(assert (= (and b!5087135 res!2165680) b!5087136))

(declare-fun m!6144640 () Bool)

(assert (=> d!1646608 m!6144640))

(assert (=> d!1646608 m!6144640))

(declare-fun m!6144642 () Bool)

(assert (=> d!1646608 m!6144642))

(assert (=> b!5087135 m!6144640))

(assert (=> b!5087135 m!6144640))

(assert (=> b!5087135 m!6144642))

(assert (=> b!5086890 d!1646608))

(declare-fun d!1646614 () Bool)

(declare-fun res!2165683 () Bool)

(declare-fun e!3172722 () Bool)

(assert (=> d!1646614 (=> (not res!2165683) (not e!3172722))))

(assert (=> d!1646614 (= res!2165683 (<= (size!39127 (list!19043 (xs!18970 (right!43185 err!4625)))) 512))))

(assert (=> d!1646614 (= (inv!77703 (right!43185 err!4625)) e!3172722)))

(declare-fun b!5087139 () Bool)

(declare-fun res!2165684 () Bool)

(assert (=> b!5087139 (=> (not res!2165684) (not e!3172722))))

(assert (=> b!5087139 (= res!2165684 (= (csize!31411 (right!43185 err!4625)) (size!39127 (list!19043 (xs!18970 (right!43185 err!4625))))))))

(declare-fun b!5087140 () Bool)

(assert (=> b!5087140 (= e!3172722 (and (> (csize!31411 (right!43185 err!4625)) 0) (<= (csize!31411 (right!43185 err!4625)) 512)))))

(assert (= (and d!1646614 res!2165683) b!5087139))

(assert (= (and b!5087139 res!2165684) b!5087140))

(declare-fun m!6144646 () Bool)

(assert (=> d!1646614 m!6144646))

(assert (=> d!1646614 m!6144646))

(declare-fun m!6144648 () Bool)

(assert (=> d!1646614 m!6144648))

(assert (=> b!5087139 m!6144646))

(assert (=> b!5087139 m!6144646))

(assert (=> b!5087139 m!6144648))

(assert (=> b!5086697 d!1646614))

(declare-fun d!1646618 () Bool)

(declare-fun res!2165688 () Bool)

(declare-fun e!3172724 () Bool)

(assert (=> d!1646618 (=> (not res!2165688) (not e!3172724))))

(assert (=> d!1646618 (= res!2165688 (= (csize!31410 (right!43185 err!4625)) (+ (size!39129 (left!42855 (right!43185 err!4625))) (size!39129 (right!43185 (right!43185 err!4625))))))))

(assert (=> d!1646618 (= (inv!77702 (right!43185 err!4625)) e!3172724)))

(declare-fun b!5087144 () Bool)

(declare-fun res!2165689 () Bool)

(assert (=> b!5087144 (=> (not res!2165689) (not e!3172724))))

(assert (=> b!5087144 (= res!2165689 (and (not (= (left!42855 (right!43185 err!4625)) Empty!15590)) (not (= (right!43185 (right!43185 err!4625)) Empty!15590))))))

(declare-fun b!5087145 () Bool)

(declare-fun res!2165690 () Bool)

(assert (=> b!5087145 (=> (not res!2165690) (not e!3172724))))

(assert (=> b!5087145 (= res!2165690 (= (cheight!15801 (right!43185 err!4625)) (+ (max!0 (height!2167 (left!42855 (right!43185 err!4625))) (height!2167 (right!43185 (right!43185 err!4625)))) 1)))))

(declare-fun b!5087146 () Bool)

(assert (=> b!5087146 (= e!3172724 (<= 0 (cheight!15801 (right!43185 err!4625))))))

(assert (= (and d!1646618 res!2165688) b!5087144))

(assert (= (and b!5087144 res!2165689) b!5087145))

(assert (= (and b!5087145 res!2165690) b!5087146))

(declare-fun m!6144662 () Bool)

(assert (=> d!1646618 m!6144662))

(declare-fun m!6144664 () Bool)

(assert (=> d!1646618 m!6144664))

(declare-fun m!6144666 () Bool)

(assert (=> b!5087145 m!6144666))

(declare-fun m!6144668 () Bool)

(assert (=> b!5087145 m!6144668))

(assert (=> b!5087145 m!6144666))

(assert (=> b!5087145 m!6144668))

(declare-fun m!6144670 () Bool)

(assert (=> b!5087145 m!6144670))

(assert (=> b!5086695 d!1646618))

(declare-fun d!1646624 () Bool)

(assert (=> d!1646624 (= (list!19043 (xs!18970 ys!41)) (innerList!15678 (xs!18970 ys!41)))))

(assert (=> b!5086764 d!1646624))

(declare-fun d!1646630 () Bool)

(assert (=> d!1646630 (= (height!2167 (left!42855 xs!286)) (ite ((_ is Empty!15590) (left!42855 xs!286)) 0 (ite ((_ is Leaf!25890) (left!42855 xs!286)) 1 (cheight!15801 (left!42855 xs!286)))))))

(assert (=> b!5086652 d!1646630))

(declare-fun d!1646632 () Bool)

(assert (=> d!1646632 (= (height!2167 (right!43185 xs!286)) (ite ((_ is Empty!15590) (right!43185 xs!286)) 0 (ite ((_ is Leaf!25890) (right!43185 xs!286)) 1 (cheight!15801 (right!43185 xs!286)))))))

(assert (=> b!5086652 d!1646632))

(declare-fun d!1646634 () Bool)

(declare-fun lt!2091776 () Bool)

(assert (=> d!1646634 (= lt!2091776 (isEmpty!31685 (list!19041 (right!43185 lt!2091737))))))

(assert (=> d!1646634 (= lt!2091776 (= (size!39129 (right!43185 lt!2091737)) 0))))

(assert (=> d!1646634 (= (isEmpty!31683 (right!43185 lt!2091737)) lt!2091776)))

(declare-fun bs!1190977 () Bool)

(assert (= bs!1190977 d!1646634))

(assert (=> bs!1190977 m!6144018))

(assert (=> bs!1190977 m!6144018))

(declare-fun m!6144684 () Bool)

(assert (=> bs!1190977 m!6144684))

(declare-fun m!6144686 () Bool)

(assert (=> bs!1190977 m!6144686))

(assert (=> b!5086781 d!1646634))

(declare-fun b!5087158 () Bool)

(declare-fun res!2165700 () Bool)

(declare-fun e!3172731 () Bool)

(assert (=> b!5087158 (=> (not res!2165700) (not e!3172731))))

(assert (=> b!5087158 (= res!2165700 (isBalanced!4452 (left!42855 (left!42855 xs!286))))))

(declare-fun b!5087159 () Bool)

(declare-fun e!3172730 () Bool)

(assert (=> b!5087159 (= e!3172730 e!3172731)))

(declare-fun res!2165702 () Bool)

(assert (=> b!5087159 (=> (not res!2165702) (not e!3172731))))

(assert (=> b!5087159 (= res!2165702 (<= (- 1) (- (height!2167 (left!42855 (left!42855 xs!286))) (height!2167 (right!43185 (left!42855 xs!286))))))))

(declare-fun b!5087160 () Bool)

(declare-fun res!2165698 () Bool)

(assert (=> b!5087160 (=> (not res!2165698) (not e!3172731))))

(assert (=> b!5087160 (= res!2165698 (<= (- (height!2167 (left!42855 (left!42855 xs!286))) (height!2167 (right!43185 (left!42855 xs!286)))) 1))))

(declare-fun b!5087161 () Bool)

(assert (=> b!5087161 (= e!3172731 (not (isEmpty!31683 (right!43185 (left!42855 xs!286)))))))

(declare-fun b!5087162 () Bool)

(declare-fun res!2165701 () Bool)

(assert (=> b!5087162 (=> (not res!2165701) (not e!3172731))))

(assert (=> b!5087162 (= res!2165701 (isBalanced!4452 (right!43185 (left!42855 xs!286))))))

(declare-fun b!5087163 () Bool)

(declare-fun res!2165703 () Bool)

(assert (=> b!5087163 (=> (not res!2165703) (not e!3172731))))

(assert (=> b!5087163 (= res!2165703 (not (isEmpty!31683 (left!42855 (left!42855 xs!286)))))))

(declare-fun d!1646638 () Bool)

(declare-fun res!2165699 () Bool)

(assert (=> d!1646638 (=> res!2165699 e!3172730)))

(assert (=> d!1646638 (= res!2165699 (not ((_ is Node!15590) (left!42855 xs!286))))))

(assert (=> d!1646638 (= (isBalanced!4452 (left!42855 xs!286)) e!3172730)))

(assert (= (and d!1646638 (not res!2165699)) b!5087159))

(assert (= (and b!5087159 res!2165702) b!5087160))

(assert (= (and b!5087160 res!2165698) b!5087158))

(assert (= (and b!5087158 res!2165700) b!5087162))

(assert (= (and b!5087162 res!2165701) b!5087163))

(assert (= (and b!5087163 res!2165703) b!5087161))

(declare-fun m!6144698 () Bool)

(assert (=> b!5087160 m!6144698))

(declare-fun m!6144700 () Bool)

(assert (=> b!5087160 m!6144700))

(assert (=> b!5087159 m!6144698))

(assert (=> b!5087159 m!6144700))

(declare-fun m!6144702 () Bool)

(assert (=> b!5087162 m!6144702))

(declare-fun m!6144704 () Bool)

(assert (=> b!5087163 m!6144704))

(declare-fun m!6144706 () Bool)

(assert (=> b!5087158 m!6144706))

(declare-fun m!6144708 () Bool)

(assert (=> b!5087161 m!6144708))

(assert (=> b!5086650 d!1646638))

(declare-fun d!1646646 () Bool)

(assert (=> d!1646646 (= (height!2167 (left!42855 lt!2091737)) (ite ((_ is Empty!15590) (left!42855 lt!2091737)) 0 (ite ((_ is Leaf!25890) (left!42855 lt!2091737)) 1 (cheight!15801 (left!42855 lt!2091737)))))))

(assert (=> b!5086779 d!1646646))

(declare-fun d!1646650 () Bool)

(assert (=> d!1646650 (= (height!2167 (right!43185 lt!2091737)) (ite ((_ is Empty!15590) (right!43185 lt!2091737)) 0 (ite ((_ is Leaf!25890) (right!43185 lt!2091737)) 1 (cheight!15801 (right!43185 lt!2091737)))))))

(assert (=> b!5086779 d!1646650))

(declare-fun b!5087179 () Bool)

(declare-fun res!2165721 () Bool)

(declare-fun e!3172738 () Bool)

(assert (=> b!5087179 (=> (not res!2165721) (not e!3172738))))

(assert (=> b!5087179 (= res!2165721 (isBalanced!4452 (left!42855 (right!43185 ys!41))))))

(declare-fun b!5087180 () Bool)

(declare-fun e!3172737 () Bool)

(assert (=> b!5087180 (= e!3172737 e!3172738)))

(declare-fun res!2165723 () Bool)

(assert (=> b!5087180 (=> (not res!2165723) (not e!3172738))))

(assert (=> b!5087180 (= res!2165723 (<= (- 1) (- (height!2167 (left!42855 (right!43185 ys!41))) (height!2167 (right!43185 (right!43185 ys!41))))))))

(declare-fun b!5087181 () Bool)

(declare-fun res!2165719 () Bool)

(assert (=> b!5087181 (=> (not res!2165719) (not e!3172738))))

(assert (=> b!5087181 (= res!2165719 (<= (- (height!2167 (left!42855 (right!43185 ys!41))) (height!2167 (right!43185 (right!43185 ys!41)))) 1))))

(declare-fun b!5087182 () Bool)

(assert (=> b!5087182 (= e!3172738 (not (isEmpty!31683 (right!43185 (right!43185 ys!41)))))))

(declare-fun b!5087183 () Bool)

(declare-fun res!2165722 () Bool)

(assert (=> b!5087183 (=> (not res!2165722) (not e!3172738))))

(assert (=> b!5087183 (= res!2165722 (isBalanced!4452 (right!43185 (right!43185 ys!41))))))

(declare-fun b!5087184 () Bool)

(declare-fun res!2165724 () Bool)

(assert (=> b!5087184 (=> (not res!2165724) (not e!3172738))))

(assert (=> b!5087184 (= res!2165724 (not (isEmpty!31683 (left!42855 (right!43185 ys!41)))))))

(declare-fun d!1646652 () Bool)

(declare-fun res!2165720 () Bool)

(assert (=> d!1646652 (=> res!2165720 e!3172737)))

(assert (=> d!1646652 (= res!2165720 (not ((_ is Node!15590) (right!43185 ys!41))))))

(assert (=> d!1646652 (= (isBalanced!4452 (right!43185 ys!41)) e!3172737)))

(assert (= (and d!1646652 (not res!2165720)) b!5087180))

(assert (= (and b!5087180 res!2165723) b!5087181))

(assert (= (and b!5087181 res!2165719) b!5087179))

(assert (= (and b!5087179 res!2165721) b!5087183))

(assert (= (and b!5087183 res!2165722) b!5087184))

(assert (= (and b!5087184 res!2165724) b!5087182))

(declare-fun m!6144734 () Bool)

(assert (=> b!5087181 m!6144734))

(declare-fun m!6144736 () Bool)

(assert (=> b!5087181 m!6144736))

(assert (=> b!5087180 m!6144734))

(assert (=> b!5087180 m!6144736))

(declare-fun m!6144738 () Bool)

(assert (=> b!5087183 m!6144738))

(declare-fun m!6144740 () Bool)

(assert (=> b!5087184 m!6144740))

(declare-fun m!6144742 () Bool)

(assert (=> b!5087179 m!6144742))

(declare-fun m!6144744 () Bool)

(assert (=> b!5087182 m!6144744))

(assert (=> b!5086895 d!1646652))

(declare-fun d!1646660 () Bool)

(declare-fun res!2165727 () Bool)

(declare-fun e!3172741 () Bool)

(assert (=> d!1646660 (=> (not res!2165727) (not e!3172741))))

(assert (=> d!1646660 (= res!2165727 (= (csize!31410 err!4625) (+ (size!39129 (left!42855 err!4625)) (size!39129 (right!43185 err!4625)))))))

(assert (=> d!1646660 (= (inv!77702 err!4625) e!3172741)))

(declare-fun b!5087189 () Bool)

(declare-fun res!2165728 () Bool)

(assert (=> b!5087189 (=> (not res!2165728) (not e!3172741))))

(assert (=> b!5087189 (= res!2165728 (and (not (= (left!42855 err!4625) Empty!15590)) (not (= (right!43185 err!4625) Empty!15590))))))

(declare-fun b!5087190 () Bool)

(declare-fun res!2165729 () Bool)

(assert (=> b!5087190 (=> (not res!2165729) (not e!3172741))))

(assert (=> b!5087190 (= res!2165729 (= (cheight!15801 err!4625) (+ (max!0 (height!2167 (left!42855 err!4625)) (height!2167 (right!43185 err!4625))) 1)))))

(declare-fun b!5087191 () Bool)

(assert (=> b!5087191 (= e!3172741 (<= 0 (cheight!15801 err!4625)))))

(assert (= (and d!1646660 res!2165727) b!5087189))

(assert (= (and b!5087189 res!2165728) b!5087190))

(assert (= (and b!5087190 res!2165729) b!5087191))

(declare-fun m!6144752 () Bool)

(assert (=> d!1646660 m!6144752))

(declare-fun m!6144754 () Bool)

(assert (=> d!1646660 m!6144754))

(declare-fun m!6144758 () Bool)

(assert (=> b!5087190 m!6144758))

(declare-fun m!6144764 () Bool)

(assert (=> b!5087190 m!6144764))

(assert (=> b!5087190 m!6144758))

(assert (=> b!5087190 m!6144764))

(declare-fun m!6144768 () Bool)

(assert (=> b!5087190 m!6144768))

(assert (=> b!5086888 d!1646660))

(declare-fun d!1646666 () Bool)

(assert (=> d!1646666 (= (inv!77699 (xs!18970 (left!42855 xs!286))) (<= (size!39127 (innerList!15678 (xs!18970 (left!42855 xs!286)))) 2147483647))))

(declare-fun bs!1190982 () Bool)

(assert (= bs!1190982 d!1646666))

(declare-fun m!6144772 () Bool)

(assert (=> bs!1190982 m!6144772))

(assert (=> b!5086924 d!1646666))

(declare-fun d!1646670 () Bool)

(assert (=> d!1646670 (= (height!2167 (left!42855 ys!41)) (ite ((_ is Empty!15590) (left!42855 ys!41)) 0 (ite ((_ is Leaf!25890) (left!42855 ys!41)) 1 (cheight!15801 (left!42855 ys!41)))))))

(assert (=> b!5086893 d!1646670))

(declare-fun d!1646676 () Bool)

(assert (=> d!1646676 (= (height!2167 (right!43185 ys!41)) (ite ((_ is Empty!15590) (right!43185 ys!41)) 0 (ite ((_ is Leaf!25890) (right!43185 ys!41)) 1 (cheight!15801 (right!43185 ys!41)))))))

(assert (=> b!5086893 d!1646676))

(declare-fun d!1646678 () Bool)

(assert (=> d!1646678 (= (list!19043 (xs!18970 lt!2091737)) (innerList!15678 (xs!18970 lt!2091737)))))

(assert (=> b!5086717 d!1646678))

(assert (=> b!5086621 d!1646472))

(assert (=> b!5086621 d!1646474))

(declare-fun d!1646680 () Bool)

(assert (=> d!1646680 (= (inv!77699 (xs!18970 (right!43185 err!4625))) (<= (size!39127 (innerList!15678 (xs!18970 (right!43185 err!4625)))) 2147483647))))

(declare-fun bs!1190983 () Bool)

(assert (= bs!1190983 d!1646680))

(declare-fun m!6144782 () Bool)

(assert (=> bs!1190983 m!6144782))

(assert (=> b!5086933 d!1646680))

(declare-fun d!1646684 () Bool)

(declare-fun lt!2091782 () Int)

(assert (=> d!1646684 (>= lt!2091782 0)))

(declare-fun e!3172746 () Int)

(assert (=> d!1646684 (= lt!2091782 e!3172746)))

(declare-fun c!874063 () Bool)

(assert (=> d!1646684 (= c!874063 ((_ is Nil!58460) (innerList!15678 (xs!18970 err!4625))))))

(assert (=> d!1646684 (= (size!39127 (innerList!15678 (xs!18970 err!4625))) lt!2091782)))

(declare-fun b!5087202 () Bool)

(assert (=> b!5087202 (= e!3172746 0)))

(declare-fun b!5087203 () Bool)

(assert (=> b!5087203 (= e!3172746 (+ 1 (size!39127 (t!371437 (innerList!15678 (xs!18970 err!4625))))))))

(assert (= (and d!1646684 c!874063) b!5087202))

(assert (= (and d!1646684 (not c!874063)) b!5087203))

(declare-fun m!6144786 () Bool)

(assert (=> b!5087203 m!6144786))

(assert (=> d!1646410 d!1646684))

(declare-fun d!1646688 () Bool)

(declare-fun c!874064 () Bool)

(assert (=> d!1646688 (= c!874064 ((_ is Node!15590) (left!42855 (right!43185 err!4625))))))

(declare-fun e!3172748 () Bool)

(assert (=> d!1646688 (= (inv!77698 (left!42855 (right!43185 err!4625))) e!3172748)))

(declare-fun b!5087207 () Bool)

(assert (=> b!5087207 (= e!3172748 (inv!77702 (left!42855 (right!43185 err!4625))))))

(declare-fun b!5087208 () Bool)

(declare-fun e!3172749 () Bool)

(assert (=> b!5087208 (= e!3172748 e!3172749)))

(declare-fun res!2165741 () Bool)

(assert (=> b!5087208 (= res!2165741 (not ((_ is Leaf!25890) (left!42855 (right!43185 err!4625)))))))

(assert (=> b!5087208 (=> res!2165741 e!3172749)))

(declare-fun b!5087209 () Bool)

(assert (=> b!5087209 (= e!3172749 (inv!77703 (left!42855 (right!43185 err!4625))))))

(assert (= (and d!1646688 c!874064) b!5087207))

(assert (= (and d!1646688 (not c!874064)) b!5087208))

(assert (= (and b!5087208 (not res!2165741)) b!5087209))

(declare-fun m!6144802 () Bool)

(assert (=> b!5087207 m!6144802))

(declare-fun m!6144804 () Bool)

(assert (=> b!5087209 m!6144804))

(assert (=> b!5086932 d!1646688))

(declare-fun d!1646696 () Bool)

(declare-fun c!874065 () Bool)

(assert (=> d!1646696 (= c!874065 ((_ is Node!15590) (right!43185 (right!43185 err!4625))))))

(declare-fun e!3172751 () Bool)

(assert (=> d!1646696 (= (inv!77698 (right!43185 (right!43185 err!4625))) e!3172751)))

(declare-fun b!5087213 () Bool)

(assert (=> b!5087213 (= e!3172751 (inv!77702 (right!43185 (right!43185 err!4625))))))

(declare-fun b!5087214 () Bool)

(declare-fun e!3172752 () Bool)

(assert (=> b!5087214 (= e!3172751 e!3172752)))

(declare-fun res!2165745 () Bool)

(assert (=> b!5087214 (= res!2165745 (not ((_ is Leaf!25890) (right!43185 (right!43185 err!4625)))))))

(assert (=> b!5087214 (=> res!2165745 e!3172752)))

(declare-fun b!5087215 () Bool)

(assert (=> b!5087215 (= e!3172752 (inv!77703 (right!43185 (right!43185 err!4625))))))

(assert (= (and d!1646696 c!874065) b!5087213))

(assert (= (and d!1646696 (not c!874065)) b!5087214))

(assert (= (and b!5087214 (not res!2165745)) b!5087215))

(declare-fun m!6144812 () Bool)

(assert (=> b!5087213 m!6144812))

(declare-fun m!6144814 () Bool)

(assert (=> b!5087215 m!6144814))

(assert (=> b!5086932 d!1646696))

(declare-fun b!5087223 () Bool)

(declare-fun e!3172755 () Bool)

(declare-fun lt!2091784 () List!58584)

(assert (=> b!5087223 (= e!3172755 (or (not (= (list!19041 (right!43185 xs!286)) Nil!58460)) (= lt!2091784 (list!19041 (left!42855 xs!286)))))))

(declare-fun b!5087221 () Bool)

(declare-fun e!3172756 () List!58584)

(assert (=> b!5087221 (= e!3172756 (Cons!58460 (h!64908 (list!19041 (left!42855 xs!286))) (++!12817 (t!371437 (list!19041 (left!42855 xs!286))) (list!19041 (right!43185 xs!286)))))))

(declare-fun d!1646700 () Bool)

(assert (=> d!1646700 e!3172755))

(declare-fun res!2165748 () Bool)

(assert (=> d!1646700 (=> (not res!2165748) (not e!3172755))))

(assert (=> d!1646700 (= res!2165748 (= (content!10432 lt!2091784) ((_ map or) (content!10432 (list!19041 (left!42855 xs!286))) (content!10432 (list!19041 (right!43185 xs!286))))))))

(assert (=> d!1646700 (= lt!2091784 e!3172756)))

(declare-fun c!874067 () Bool)

(assert (=> d!1646700 (= c!874067 ((_ is Nil!58460) (list!19041 (left!42855 xs!286))))))

(assert (=> d!1646700 (= (++!12817 (list!19041 (left!42855 xs!286)) (list!19041 (right!43185 xs!286))) lt!2091784)))

(declare-fun b!5087222 () Bool)

(declare-fun res!2165749 () Bool)

(assert (=> b!5087222 (=> (not res!2165749) (not e!3172755))))

(assert (=> b!5087222 (= res!2165749 (= (size!39127 lt!2091784) (+ (size!39127 (list!19041 (left!42855 xs!286))) (size!39127 (list!19041 (right!43185 xs!286))))))))

(declare-fun b!5087220 () Bool)

(assert (=> b!5087220 (= e!3172756 (list!19041 (right!43185 xs!286)))))

(assert (= (and d!1646700 c!874067) b!5087220))

(assert (= (and d!1646700 (not c!874067)) b!5087221))

(assert (= (and d!1646700 res!2165748) b!5087222))

(assert (= (and b!5087222 res!2165749) b!5087223))

(assert (=> b!5087221 m!6144092))

(declare-fun m!6144838 () Bool)

(assert (=> b!5087221 m!6144838))

(declare-fun m!6144840 () Bool)

(assert (=> d!1646700 m!6144840))

(assert (=> d!1646700 m!6144090))

(declare-fun m!6144842 () Bool)

(assert (=> d!1646700 m!6144842))

(assert (=> d!1646700 m!6144092))

(declare-fun m!6144844 () Bool)

(assert (=> d!1646700 m!6144844))

(declare-fun m!6144846 () Bool)

(assert (=> b!5087222 m!6144846))

(assert (=> b!5087222 m!6144090))

(declare-fun m!6144848 () Bool)

(assert (=> b!5087222 m!6144848))

(assert (=> b!5087222 m!6144092))

(declare-fun m!6144854 () Bool)

(assert (=> b!5087222 m!6144854))

(assert (=> b!5086755 d!1646700))

(assert (=> b!5086755 d!1646518))

(assert (=> b!5086755 d!1646520))

(assert (=> b!5086614 d!1646412))

(assert (=> b!5086614 d!1646414))

(declare-fun d!1646706 () Bool)

(assert (=> d!1646706 (= (inv!77699 (xs!18970 (left!42855 ys!41))) (<= (size!39127 (innerList!15678 (xs!18970 (left!42855 ys!41)))) 2147483647))))

(declare-fun bs!1190986 () Bool)

(assert (= bs!1190986 d!1646706))

(declare-fun m!6144860 () Bool)

(assert (=> bs!1190986 m!6144860))

(assert (=> b!5086918 d!1646706))

(declare-fun d!1646710 () Bool)

(declare-fun res!2165750 () Bool)

(declare-fun e!3172762 () Bool)

(assert (=> d!1646710 (=> (not res!2165750) (not e!3172762))))

(assert (=> d!1646710 (= res!2165750 (<= (size!39127 (list!19043 (xs!18970 (right!43185 xs!286)))) 512))))

(assert (=> d!1646710 (= (inv!77703 (right!43185 xs!286)) e!3172762)))

(declare-fun b!5087234 () Bool)

(declare-fun res!2165751 () Bool)

(assert (=> b!5087234 (=> (not res!2165751) (not e!3172762))))

(assert (=> b!5087234 (= res!2165751 (= (csize!31411 (right!43185 xs!286)) (size!39127 (list!19043 (xs!18970 (right!43185 xs!286))))))))

(declare-fun b!5087235 () Bool)

(assert (=> b!5087235 (= e!3172762 (and (> (csize!31411 (right!43185 xs!286)) 0) (<= (csize!31411 (right!43185 xs!286)) 512)))))

(assert (= (and d!1646710 res!2165750) b!5087234))

(assert (= (and b!5087234 res!2165751) b!5087235))

(assert (=> d!1646710 m!6144434))

(assert (=> d!1646710 m!6144434))

(declare-fun m!6144868 () Bool)

(assert (=> d!1646710 m!6144868))

(assert (=> b!5087234 m!6144434))

(assert (=> b!5087234 m!6144434))

(assert (=> b!5087234 m!6144868))

(assert (=> b!5086902 d!1646710))

(declare-fun d!1646714 () Bool)

(declare-fun res!2165752 () Bool)

(declare-fun e!3172765 () Bool)

(assert (=> d!1646714 (=> (not res!2165752) (not e!3172765))))

(assert (=> d!1646714 (= res!2165752 (<= (size!39127 (list!19043 (xs!18970 (right!43185 ys!41)))) 512))))

(assert (=> d!1646714 (= (inv!77703 (right!43185 ys!41)) e!3172765)))

(declare-fun b!5087240 () Bool)

(declare-fun res!2165753 () Bool)

(assert (=> b!5087240 (=> (not res!2165753) (not e!3172765))))

(assert (=> b!5087240 (= res!2165753 (= (csize!31411 (right!43185 ys!41)) (size!39127 (list!19043 (xs!18970 (right!43185 ys!41))))))))

(declare-fun b!5087241 () Bool)

(assert (=> b!5087241 (= e!3172765 (and (> (csize!31411 (right!43185 ys!41)) 0) (<= (csize!31411 (right!43185 ys!41)) 512)))))

(assert (= (and d!1646714 res!2165752) b!5087240))

(assert (= (and b!5087240 res!2165753) b!5087241))

(declare-fun m!6144880 () Bool)

(assert (=> d!1646714 m!6144880))

(assert (=> d!1646714 m!6144880))

(declare-fun m!6144886 () Bool)

(assert (=> d!1646714 m!6144886))

(assert (=> b!5087240 m!6144880))

(assert (=> b!5087240 m!6144880))

(assert (=> b!5087240 m!6144886))

(assert (=> b!5086691 d!1646714))

(declare-fun d!1646720 () Bool)

(declare-fun res!2165755 () Bool)

(declare-fun e!3172770 () Bool)

(assert (=> d!1646720 (=> (not res!2165755) (not e!3172770))))

(assert (=> d!1646720 (= res!2165755 (<= (size!39127 (list!19043 (xs!18970 (left!42855 err!4625)))) 512))))

(assert (=> d!1646720 (= (inv!77703 (left!42855 err!4625)) e!3172770)))

(declare-fun b!5087249 () Bool)

(declare-fun res!2165756 () Bool)

(assert (=> b!5087249 (=> (not res!2165756) (not e!3172770))))

(assert (=> b!5087249 (= res!2165756 (= (csize!31411 (left!42855 err!4625)) (size!39127 (list!19043 (xs!18970 (left!42855 err!4625))))))))

(declare-fun b!5087250 () Bool)

(assert (=> b!5087250 (= e!3172770 (and (> (csize!31411 (left!42855 err!4625)) 0) (<= (csize!31411 (left!42855 err!4625)) 512)))))

(assert (= (and d!1646720 res!2165755) b!5087249))

(assert (= (and b!5087249 res!2165756) b!5087250))

(declare-fun m!6144898 () Bool)

(assert (=> d!1646720 m!6144898))

(assert (=> d!1646720 m!6144898))

(declare-fun m!6144900 () Bool)

(assert (=> d!1646720 m!6144900))

(assert (=> b!5087249 m!6144898))

(assert (=> b!5087249 m!6144898))

(assert (=> b!5087249 m!6144900))

(assert (=> b!5086694 d!1646720))

(declare-fun d!1646726 () Bool)

(declare-fun res!2165760 () Bool)

(declare-fun e!3172775 () Bool)

(assert (=> d!1646726 (=> (not res!2165760) (not e!3172775))))

(assert (=> d!1646726 (= res!2165760 (= (csize!31410 (right!43185 xs!286)) (+ (size!39129 (left!42855 (right!43185 xs!286))) (size!39129 (right!43185 (right!43185 xs!286))))))))

(assert (=> d!1646726 (= (inv!77702 (right!43185 xs!286)) e!3172775)))

(declare-fun b!5087258 () Bool)

(declare-fun res!2165761 () Bool)

(assert (=> b!5087258 (=> (not res!2165761) (not e!3172775))))

(assert (=> b!5087258 (= res!2165761 (and (not (= (left!42855 (right!43185 xs!286)) Empty!15590)) (not (= (right!43185 (right!43185 xs!286)) Empty!15590))))))

(declare-fun b!5087259 () Bool)

(declare-fun res!2165762 () Bool)

(assert (=> b!5087259 (=> (not res!2165762) (not e!3172775))))

(assert (=> b!5087259 (= res!2165762 (= (cheight!15801 (right!43185 xs!286)) (+ (max!0 (height!2167 (left!42855 (right!43185 xs!286))) (height!2167 (right!43185 (right!43185 xs!286)))) 1)))))

(declare-fun b!5087260 () Bool)

(assert (=> b!5087260 (= e!3172775 (<= 0 (cheight!15801 (right!43185 xs!286))))))

(assert (= (and d!1646726 res!2165760) b!5087258))

(assert (= (and b!5087258 res!2165761) b!5087259))

(assert (= (and b!5087259 res!2165762) b!5087260))

(declare-fun m!6144916 () Bool)

(assert (=> d!1646726 m!6144916))

(declare-fun m!6144918 () Bool)

(assert (=> d!1646726 m!6144918))

(assert (=> b!5087259 m!6144444))

(assert (=> b!5087259 m!6144446))

(assert (=> b!5087259 m!6144444))

(assert (=> b!5087259 m!6144446))

(declare-fun m!6144920 () Bool)

(assert (=> b!5087259 m!6144920))

(assert (=> b!5086900 d!1646726))

(declare-fun lt!2091788 () List!58584)

(declare-fun e!3172777 () Bool)

(declare-fun b!5087266 () Bool)

(assert (=> b!5087266 (= e!3172777 (or (not (= (list!19041 ys!41) Nil!58460)) (= lt!2091788 (t!371437 (list!19041 xs!286)))))))

(declare-fun b!5087264 () Bool)

(declare-fun e!3172778 () List!58584)

(assert (=> b!5087264 (= e!3172778 (Cons!58460 (h!64908 (t!371437 (list!19041 xs!286))) (++!12817 (t!371437 (t!371437 (list!19041 xs!286))) (list!19041 ys!41))))))

(declare-fun d!1646730 () Bool)

(assert (=> d!1646730 e!3172777))

(declare-fun res!2165763 () Bool)

(assert (=> d!1646730 (=> (not res!2165763) (not e!3172777))))

(assert (=> d!1646730 (= res!2165763 (= (content!10432 lt!2091788) ((_ map or) (content!10432 (t!371437 (list!19041 xs!286))) (content!10432 (list!19041 ys!41)))))))

(assert (=> d!1646730 (= lt!2091788 e!3172778)))

(declare-fun c!874081 () Bool)

(assert (=> d!1646730 (= c!874081 ((_ is Nil!58460) (t!371437 (list!19041 xs!286))))))

(assert (=> d!1646730 (= (++!12817 (t!371437 (list!19041 xs!286)) (list!19041 ys!41)) lt!2091788)))

(declare-fun b!5087265 () Bool)

(declare-fun res!2165764 () Bool)

(assert (=> b!5087265 (=> (not res!2165764) (not e!3172777))))

(assert (=> b!5087265 (= res!2165764 (= (size!39127 lt!2091788) (+ (size!39127 (t!371437 (list!19041 xs!286))) (size!39127 (list!19041 ys!41)))))))

(declare-fun b!5087263 () Bool)

(assert (=> b!5087263 (= e!3172778 (list!19041 ys!41))))

(assert (= (and d!1646730 c!874081) b!5087263))

(assert (= (and d!1646730 (not c!874081)) b!5087264))

(assert (= (and d!1646730 res!2165763) b!5087265))

(assert (= (and b!5087265 res!2165764) b!5087266))

(assert (=> b!5087264 m!6143940))

(declare-fun m!6144932 () Bool)

(assert (=> b!5087264 m!6144932))

(declare-fun m!6144936 () Bool)

(assert (=> d!1646730 m!6144936))

(declare-fun m!6144940 () Bool)

(assert (=> d!1646730 m!6144940))

(assert (=> d!1646730 m!6143940))

(assert (=> d!1646730 m!6144064))

(declare-fun m!6144946 () Bool)

(assert (=> b!5087265 m!6144946))

(declare-fun m!6144950 () Bool)

(assert (=> b!5087265 m!6144950))

(assert (=> b!5087265 m!6143940))

(assert (=> b!5087265 m!6144070))

(assert (=> b!5086743 d!1646730))

(declare-fun d!1646736 () Bool)

(assert (=> d!1646736 (= (inv!77699 (xs!18970 (right!43185 xs!286))) (<= (size!39127 (innerList!15678 (xs!18970 (right!43185 xs!286)))) 2147483647))))

(declare-fun bs!1190987 () Bool)

(assert (= bs!1190987 d!1646736))

(declare-fun m!6144952 () Bool)

(assert (=> bs!1190987 m!6144952))

(assert (=> b!5086927 d!1646736))

(declare-fun d!1646738 () Bool)

(declare-fun res!2165768 () Bool)

(declare-fun e!3172783 () Bool)

(assert (=> d!1646738 (=> (not res!2165768) (not e!3172783))))

(assert (=> d!1646738 (= res!2165768 (= (csize!31410 (right!43185 ys!41)) (+ (size!39129 (left!42855 (right!43185 ys!41))) (size!39129 (right!43185 (right!43185 ys!41))))))))

(assert (=> d!1646738 (= (inv!77702 (right!43185 ys!41)) e!3172783)))

(declare-fun b!5087274 () Bool)

(declare-fun res!2165769 () Bool)

(assert (=> b!5087274 (=> (not res!2165769) (not e!3172783))))

(assert (=> b!5087274 (= res!2165769 (and (not (= (left!42855 (right!43185 ys!41)) Empty!15590)) (not (= (right!43185 (right!43185 ys!41)) Empty!15590))))))

(declare-fun b!5087275 () Bool)

(declare-fun res!2165770 () Bool)

(assert (=> b!5087275 (=> (not res!2165770) (not e!3172783))))

(assert (=> b!5087275 (= res!2165770 (= (cheight!15801 (right!43185 ys!41)) (+ (max!0 (height!2167 (left!42855 (right!43185 ys!41))) (height!2167 (right!43185 (right!43185 ys!41)))) 1)))))

(declare-fun b!5087276 () Bool)

(assert (=> b!5087276 (= e!3172783 (<= 0 (cheight!15801 (right!43185 ys!41))))))

(assert (= (and d!1646738 res!2165768) b!5087274))

(assert (= (and b!5087274 res!2165769) b!5087275))

(assert (= (and b!5087275 res!2165770) b!5087276))

(declare-fun m!6144966 () Bool)

(assert (=> d!1646738 m!6144966))

(declare-fun m!6144968 () Bool)

(assert (=> d!1646738 m!6144968))

(assert (=> b!5087275 m!6144734))

(assert (=> b!5087275 m!6144736))

(assert (=> b!5087275 m!6144734))

(assert (=> b!5087275 m!6144736))

(declare-fun m!6144970 () Bool)

(assert (=> b!5087275 m!6144970))

(assert (=> b!5086689 d!1646738))

(declare-fun d!1646744 () Bool)

(declare-fun res!2165774 () Bool)

(declare-fun e!3172788 () Bool)

(assert (=> d!1646744 (=> (not res!2165774) (not e!3172788))))

(assert (=> d!1646744 (= res!2165774 (= (csize!31410 (left!42855 err!4625)) (+ (size!39129 (left!42855 (left!42855 err!4625))) (size!39129 (right!43185 (left!42855 err!4625))))))))

(assert (=> d!1646744 (= (inv!77702 (left!42855 err!4625)) e!3172788)))

(declare-fun b!5087283 () Bool)

(declare-fun res!2165775 () Bool)

(assert (=> b!5087283 (=> (not res!2165775) (not e!3172788))))

(assert (=> b!5087283 (= res!2165775 (and (not (= (left!42855 (left!42855 err!4625)) Empty!15590)) (not (= (right!43185 (left!42855 err!4625)) Empty!15590))))))

(declare-fun b!5087284 () Bool)

(declare-fun res!2165776 () Bool)

(assert (=> b!5087284 (=> (not res!2165776) (not e!3172788))))

(assert (=> b!5087284 (= res!2165776 (= (cheight!15801 (left!42855 err!4625)) (+ (max!0 (height!2167 (left!42855 (left!42855 err!4625))) (height!2167 (right!43185 (left!42855 err!4625)))) 1)))))

(declare-fun b!5087285 () Bool)

(assert (=> b!5087285 (= e!3172788 (<= 0 (cheight!15801 (left!42855 err!4625))))))

(assert (= (and d!1646744 res!2165774) b!5087283))

(assert (= (and b!5087283 res!2165775) b!5087284))

(assert (= (and b!5087284 res!2165776) b!5087285))

(declare-fun m!6144978 () Bool)

(assert (=> d!1646744 m!6144978))

(declare-fun m!6144980 () Bool)

(assert (=> d!1646744 m!6144980))

(declare-fun m!6144982 () Bool)

(assert (=> b!5087284 m!6144982))

(declare-fun m!6144986 () Bool)

(assert (=> b!5087284 m!6144986))

(assert (=> b!5087284 m!6144982))

(assert (=> b!5087284 m!6144986))

(declare-fun m!6144992 () Bool)

(assert (=> b!5087284 m!6144992))

(assert (=> b!5086692 d!1646744))

(assert (=> b!5086881 d!1646430))

(assert (=> b!5086881 d!1646518))

(assert (=> b!5086881 d!1646508))

(declare-fun b!5087298 () Bool)

(declare-fun e!3172797 () Bool)

(declare-fun call!354521 () List!58584)

(declare-fun call!354518 () List!58584)

(assert (=> b!5087298 (= e!3172797 (= call!354521 call!354518))))

(declare-fun lt!2091790 () Bool)

(assert (=> b!5087298 (= lt!2091790 (appendAssoc!316 (t!371437 (list!19041 (left!42855 xs!286))) (list!19041 (left!42855 (right!43185 xs!286))) (++!12817 (list!19041 (right!43185 (right!43185 xs!286))) (list!19041 ys!41))))))

(declare-fun bm!354513 () Bool)

(declare-fun call!354520 () List!58584)

(assert (=> bm!354513 (= call!354518 (++!12817 (list!19041 (left!42855 xs!286)) call!354520))))

(declare-fun bm!354514 () Bool)

(assert (=> bm!354514 (= call!354520 (++!12817 (list!19041 (left!42855 (right!43185 xs!286))) (++!12817 (list!19041 (right!43185 (right!43185 xs!286))) (list!19041 ys!41))))))

(declare-fun d!1646746 () Bool)

(assert (=> d!1646746 e!3172797))

(declare-fun c!874085 () Bool)

(assert (=> d!1646746 (= c!874085 ((_ is Nil!58460) (list!19041 (left!42855 xs!286))))))

(assert (=> d!1646746 (= (appendAssoc!316 (list!19041 (left!42855 xs!286)) (list!19041 (left!42855 (right!43185 xs!286))) (++!12817 (list!19041 (right!43185 (right!43185 xs!286))) (list!19041 ys!41))) true)))

(declare-fun bm!354515 () Bool)

(declare-fun call!354519 () List!58584)

(assert (=> bm!354515 (= call!354521 (++!12817 call!354519 (++!12817 (list!19041 (right!43185 (right!43185 xs!286))) (list!19041 ys!41))))))

(declare-fun b!5087299 () Bool)

(assert (=> b!5087299 (= e!3172797 (= call!354521 call!354518))))

(declare-fun bm!354516 () Bool)

(assert (=> bm!354516 (= call!354519 (++!12817 (list!19041 (left!42855 xs!286)) (list!19041 (left!42855 (right!43185 xs!286)))))))

(assert (= (and d!1646746 c!874085) b!5087299))

(assert (= (and d!1646746 (not c!874085)) b!5087298))

(assert (= (or b!5087299 b!5087298) bm!354516))

(assert (= (or b!5087299 b!5087298) bm!354514))

(assert (= (or b!5087299 b!5087298) bm!354513))

(assert (= (or b!5087299 b!5087298) bm!354515))

(assert (=> bm!354514 m!6144242))

(assert (=> bm!354514 m!6144248))

(declare-fun m!6145012 () Bool)

(assert (=> bm!354514 m!6145012))

(assert (=> bm!354513 m!6144090))

(declare-fun m!6145014 () Bool)

(assert (=> bm!354513 m!6145014))

(assert (=> bm!354515 m!6144248))

(declare-fun m!6145016 () Bool)

(assert (=> bm!354515 m!6145016))

(assert (=> b!5087298 m!6144242))

(assert (=> b!5087298 m!6144248))

(declare-fun m!6145024 () Bool)

(assert (=> b!5087298 m!6145024))

(assert (=> bm!354516 m!6144090))

(assert (=> bm!354516 m!6144242))

(declare-fun m!6145026 () Bool)

(assert (=> bm!354516 m!6145026))

(assert (=> b!5086881 d!1646746))

(assert (=> b!5086881 d!1646506))

(declare-fun e!3172808 () Bool)

(declare-fun lt!2091791 () List!58584)

(declare-fun b!5087316 () Bool)

(assert (=> b!5087316 (= e!3172808 (or (not (= (list!19041 ys!41) Nil!58460)) (= lt!2091791 (list!19041 (right!43185 (right!43185 xs!286))))))))

(declare-fun b!5087314 () Bool)

(declare-fun e!3172809 () List!58584)

(assert (=> b!5087314 (= e!3172809 (Cons!58460 (h!64908 (list!19041 (right!43185 (right!43185 xs!286)))) (++!12817 (t!371437 (list!19041 (right!43185 (right!43185 xs!286)))) (list!19041 ys!41))))))

(declare-fun d!1646748 () Bool)

(assert (=> d!1646748 e!3172808))

(declare-fun res!2165777 () Bool)

(assert (=> d!1646748 (=> (not res!2165777) (not e!3172808))))

(assert (=> d!1646748 (= res!2165777 (= (content!10432 lt!2091791) ((_ map or) (content!10432 (list!19041 (right!43185 (right!43185 xs!286)))) (content!10432 (list!19041 ys!41)))))))

(assert (=> d!1646748 (= lt!2091791 e!3172809)))

(declare-fun c!874086 () Bool)

(assert (=> d!1646748 (= c!874086 ((_ is Nil!58460) (list!19041 (right!43185 (right!43185 xs!286)))))))

(assert (=> d!1646748 (= (++!12817 (list!19041 (right!43185 (right!43185 xs!286))) (list!19041 ys!41)) lt!2091791)))

(declare-fun b!5087315 () Bool)

(declare-fun res!2165778 () Bool)

(assert (=> b!5087315 (=> (not res!2165778) (not e!3172808))))

(assert (=> b!5087315 (= res!2165778 (= (size!39127 lt!2091791) (+ (size!39127 (list!19041 (right!43185 (right!43185 xs!286)))) (size!39127 (list!19041 ys!41)))))))

(declare-fun b!5087313 () Bool)

(assert (=> b!5087313 (= e!3172809 (list!19041 ys!41))))

(assert (= (and d!1646748 c!874086) b!5087313))

(assert (= (and d!1646748 (not c!874086)) b!5087314))

(assert (= (and d!1646748 res!2165777) b!5087315))

(assert (= (and b!5087315 res!2165778) b!5087316))

(assert (=> b!5087314 m!6143940))

(declare-fun m!6145040 () Bool)

(assert (=> b!5087314 m!6145040))

(declare-fun m!6145042 () Bool)

(assert (=> d!1646748 m!6145042))

(assert (=> d!1646748 m!6144244))

(declare-fun m!6145044 () Bool)

(assert (=> d!1646748 m!6145044))

(assert (=> d!1646748 m!6143940))

(assert (=> d!1646748 m!6144064))

(declare-fun m!6145046 () Bool)

(assert (=> b!5087315 m!6145046))

(assert (=> b!5087315 m!6144244))

(declare-fun m!6145048 () Bool)

(assert (=> b!5087315 m!6145048))

(assert (=> b!5087315 m!6143940))

(assert (=> b!5087315 m!6144070))

(assert (=> b!5086881 d!1646748))

(declare-fun d!1646750 () Bool)

(assert (=> d!1646750 (= (inv!77699 (xs!18970 (left!42855 err!4625))) (<= (size!39127 (innerList!15678 (xs!18970 (left!42855 err!4625)))) 2147483647))))

(declare-fun bs!1190988 () Bool)

(assert (= bs!1190988 d!1646750))

(declare-fun m!6145056 () Bool)

(assert (=> bs!1190988 m!6145056))

(assert (=> b!5086930 d!1646750))

(declare-fun d!1646752 () Bool)

(declare-fun lt!2091792 () Bool)

(assert (=> d!1646752 (= lt!2091792 (isEmpty!31685 (list!19041 (left!42855 xs!286))))))

(assert (=> d!1646752 (= lt!2091792 (= (size!39129 (left!42855 xs!286)) 0))))

(assert (=> d!1646752 (= (isEmpty!31683 (left!42855 xs!286)) lt!2091792)))

(declare-fun bs!1190989 () Bool)

(assert (= bs!1190989 d!1646752))

(assert (=> bs!1190989 m!6144090))

(assert (=> bs!1190989 m!6144090))

(declare-fun m!6145058 () Bool)

(assert (=> bs!1190989 m!6145058))

(declare-fun m!6145060 () Bool)

(assert (=> bs!1190989 m!6145060))

(assert (=> b!5086655 d!1646752))

(declare-fun d!1646754 () Bool)

(assert (=> d!1646754 (= (inv!77699 (xs!18970 (right!43185 ys!41))) (<= (size!39127 (innerList!15678 (xs!18970 (right!43185 ys!41)))) 2147483647))))

(declare-fun bs!1190990 () Bool)

(assert (= bs!1190990 d!1646754))

(declare-fun m!6145068 () Bool)

(assert (=> bs!1190990 m!6145068))

(assert (=> b!5086921 d!1646754))

(assert (=> b!5086879 d!1646424))

(declare-fun b!5087332 () Bool)

(declare-fun e!3172820 () List!58584)

(declare-fun e!3172821 () List!58584)

(assert (=> b!5087332 (= e!3172820 e!3172821)))

(declare-fun c!874088 () Bool)

(assert (=> b!5087332 (= c!874088 ((_ is Leaf!25890) (right!43185 ys!41)))))

(declare-fun b!5087333 () Bool)

(assert (=> b!5087333 (= e!3172821 (list!19043 (xs!18970 (right!43185 ys!41))))))

(declare-fun b!5087334 () Bool)

(assert (=> b!5087334 (= e!3172821 (++!12817 (list!19041 (left!42855 (right!43185 ys!41))) (list!19041 (right!43185 (right!43185 ys!41)))))))

(declare-fun b!5087331 () Bool)

(assert (=> b!5087331 (= e!3172820 Nil!58460)))

(declare-fun d!1646756 () Bool)

(declare-fun c!874087 () Bool)

(assert (=> d!1646756 (= c!874087 ((_ is Empty!15590) (right!43185 ys!41)))))

(assert (=> d!1646756 (= (list!19041 (right!43185 ys!41)) e!3172820)))

(assert (= (and d!1646756 c!874087) b!5087331))

(assert (= (and d!1646756 (not c!874087)) b!5087332))

(assert (= (and b!5087332 c!874088) b!5087333))

(assert (= (and b!5087332 (not c!874088)) b!5087334))

(assert (=> b!5087333 m!6144880))

(declare-fun m!6145076 () Bool)

(assert (=> b!5087334 m!6145076))

(declare-fun m!6145078 () Bool)

(assert (=> b!5087334 m!6145078))

(assert (=> b!5087334 m!6145076))

(assert (=> b!5087334 m!6145078))

(declare-fun m!6145080 () Bool)

(assert (=> b!5087334 m!6145080))

(assert (=> b!5086879 d!1646756))

(declare-fun b!5087339 () Bool)

(declare-fun e!3172824 () List!58584)

(declare-fun e!3172825 () List!58584)

(assert (=> b!5087339 (= e!3172824 e!3172825)))

(declare-fun c!874090 () Bool)

(assert (=> b!5087339 (= c!874090 ((_ is Leaf!25890) (right!43185 (left!42855 ys!41))))))

(declare-fun b!5087340 () Bool)

(assert (=> b!5087340 (= e!3172825 (list!19043 (xs!18970 (right!43185 (left!42855 ys!41)))))))

(declare-fun b!5087341 () Bool)

(assert (=> b!5087341 (= e!3172825 (++!12817 (list!19041 (left!42855 (right!43185 (left!42855 ys!41)))) (list!19041 (right!43185 (right!43185 (left!42855 ys!41))))))))

(declare-fun b!5087338 () Bool)

(assert (=> b!5087338 (= e!3172824 Nil!58460)))

(declare-fun d!1646758 () Bool)

(declare-fun c!874089 () Bool)

(assert (=> d!1646758 (= c!874089 ((_ is Empty!15590) (right!43185 (left!42855 ys!41))))))

(assert (=> d!1646758 (= (list!19041 (right!43185 (left!42855 ys!41))) e!3172824)))

(assert (= (and d!1646758 c!874089) b!5087338))

(assert (= (and d!1646758 (not c!874089)) b!5087339))

(assert (= (and b!5087339 c!874090) b!5087340))

(assert (= (and b!5087339 (not c!874090)) b!5087341))

(declare-fun m!6145088 () Bool)

(assert (=> b!5087340 m!6145088))

(declare-fun m!6145090 () Bool)

(assert (=> b!5087341 m!6145090))

(declare-fun m!6145092 () Bool)

(assert (=> b!5087341 m!6145092))

(assert (=> b!5087341 m!6145090))

(assert (=> b!5087341 m!6145092))

(declare-fun m!6145094 () Bool)

(assert (=> b!5087341 m!6145094))

(assert (=> b!5086879 d!1646758))

(declare-fun b!5087344 () Bool)

(declare-fun e!3172828 () Bool)

(declare-fun call!354525 () List!58584)

(declare-fun call!354522 () List!58584)

(assert (=> b!5087344 (= e!3172828 (= call!354525 call!354522))))

(declare-fun lt!2091793 () Bool)

(assert (=> b!5087344 (= lt!2091793 (appendAssoc!316 (t!371437 (++!12817 (list!19041 xs!286) (list!19041 (left!42855 (left!42855 ys!41))))) (list!19041 (right!43185 (left!42855 ys!41))) (list!19041 (right!43185 ys!41))))))

(declare-fun bm!354517 () Bool)

(declare-fun call!354524 () List!58584)

(assert (=> bm!354517 (= call!354522 (++!12817 (++!12817 (list!19041 xs!286) (list!19041 (left!42855 (left!42855 ys!41)))) call!354524))))

(declare-fun bm!354518 () Bool)

(assert (=> bm!354518 (= call!354524 (++!12817 (list!19041 (right!43185 (left!42855 ys!41))) (list!19041 (right!43185 ys!41))))))

(declare-fun d!1646760 () Bool)

(assert (=> d!1646760 e!3172828))

(declare-fun c!874091 () Bool)

(assert (=> d!1646760 (= c!874091 ((_ is Nil!58460) (++!12817 (list!19041 xs!286) (list!19041 (left!42855 (left!42855 ys!41))))))))

(assert (=> d!1646760 (= (appendAssoc!316 (++!12817 (list!19041 xs!286) (list!19041 (left!42855 (left!42855 ys!41)))) (list!19041 (right!43185 (left!42855 ys!41))) (list!19041 (right!43185 ys!41))) true)))

(declare-fun bm!354519 () Bool)

(declare-fun call!354523 () List!58584)

(assert (=> bm!354519 (= call!354525 (++!12817 call!354523 (list!19041 (right!43185 ys!41))))))

(declare-fun b!5087345 () Bool)

(assert (=> b!5087345 (= e!3172828 (= call!354525 call!354522))))

(declare-fun bm!354520 () Bool)

(assert (=> bm!354520 (= call!354523 (++!12817 (++!12817 (list!19041 xs!286) (list!19041 (left!42855 (left!42855 ys!41)))) (list!19041 (right!43185 (left!42855 ys!41)))))))

(assert (= (and d!1646760 c!874091) b!5087345))

(assert (= (and d!1646760 (not c!874091)) b!5087344))

(assert (= (or b!5087345 b!5087344) bm!354520))

(assert (= (or b!5087345 b!5087344) bm!354518))

(assert (= (or b!5087345 b!5087344) bm!354517))

(assert (= (or b!5087345 b!5087344) bm!354519))

(assert (=> bm!354518 m!6144232))

(assert (=> bm!354518 m!6144108))

(declare-fun m!6145096 () Bool)

(assert (=> bm!354518 m!6145096))

(assert (=> bm!354517 m!6144236))

(declare-fun m!6145098 () Bool)

(assert (=> bm!354517 m!6145098))

(assert (=> bm!354519 m!6144108))

(declare-fun m!6145100 () Bool)

(assert (=> bm!354519 m!6145100))

(assert (=> b!5087344 m!6144232))

(assert (=> b!5087344 m!6144108))

(declare-fun m!6145102 () Bool)

(assert (=> b!5087344 m!6145102))

(assert (=> bm!354520 m!6144236))

(assert (=> bm!354520 m!6144232))

(declare-fun m!6145104 () Bool)

(assert (=> bm!354520 m!6145104))

(assert (=> b!5086879 d!1646760))

(declare-fun e!3172829 () Bool)

(declare-fun lt!2091794 () List!58584)

(declare-fun b!5087349 () Bool)

(assert (=> b!5087349 (= e!3172829 (or (not (= (list!19041 (left!42855 (left!42855 ys!41))) Nil!58460)) (= lt!2091794 (list!19041 xs!286))))))

(declare-fun b!5087347 () Bool)

(declare-fun e!3172830 () List!58584)

(assert (=> b!5087347 (= e!3172830 (Cons!58460 (h!64908 (list!19041 xs!286)) (++!12817 (t!371437 (list!19041 xs!286)) (list!19041 (left!42855 (left!42855 ys!41))))))))

(declare-fun d!1646762 () Bool)

(assert (=> d!1646762 e!3172829))

(declare-fun res!2165779 () Bool)

(assert (=> d!1646762 (=> (not res!2165779) (not e!3172829))))

(assert (=> d!1646762 (= res!2165779 (= (content!10432 lt!2091794) ((_ map or) (content!10432 (list!19041 xs!286)) (content!10432 (list!19041 (left!42855 (left!42855 ys!41)))))))))

(assert (=> d!1646762 (= lt!2091794 e!3172830)))

(declare-fun c!874092 () Bool)

(assert (=> d!1646762 (= c!874092 ((_ is Nil!58460) (list!19041 xs!286)))))

(assert (=> d!1646762 (= (++!12817 (list!19041 xs!286) (list!19041 (left!42855 (left!42855 ys!41)))) lt!2091794)))

(declare-fun b!5087348 () Bool)

(declare-fun res!2165780 () Bool)

(assert (=> b!5087348 (=> (not res!2165780) (not e!3172829))))

(assert (=> b!5087348 (= res!2165780 (= (size!39127 lt!2091794) (+ (size!39127 (list!19041 xs!286)) (size!39127 (list!19041 (left!42855 (left!42855 ys!41)))))))))

(declare-fun b!5087346 () Bool)

(assert (=> b!5087346 (= e!3172830 (list!19041 (left!42855 (left!42855 ys!41))))))

(assert (= (and d!1646762 c!874092) b!5087346))

(assert (= (and d!1646762 (not c!874092)) b!5087347))

(assert (= (and d!1646762 res!2165779) b!5087348))

(assert (= (and b!5087348 res!2165780) b!5087349))

(assert (=> b!5087347 m!6144234))

(declare-fun m!6145106 () Bool)

(assert (=> b!5087347 m!6145106))

(declare-fun m!6145108 () Bool)

(assert (=> d!1646762 m!6145108))

(assert (=> d!1646762 m!6143938))

(assert (=> d!1646762 m!6144062))

(assert (=> d!1646762 m!6144234))

(declare-fun m!6145110 () Bool)

(assert (=> d!1646762 m!6145110))

(declare-fun m!6145112 () Bool)

(assert (=> b!5087348 m!6145112))

(assert (=> b!5087348 m!6143938))

(assert (=> b!5087348 m!6144068))

(assert (=> b!5087348 m!6144234))

(declare-fun m!6145114 () Bool)

(assert (=> b!5087348 m!6145114))

(assert (=> b!5086879 d!1646762))

(declare-fun b!5087351 () Bool)

(declare-fun e!3172831 () List!58584)

(declare-fun e!3172832 () List!58584)

(assert (=> b!5087351 (= e!3172831 e!3172832)))

(declare-fun c!874094 () Bool)

(assert (=> b!5087351 (= c!874094 ((_ is Leaf!25890) (left!42855 (left!42855 ys!41))))))

(declare-fun b!5087352 () Bool)

(assert (=> b!5087352 (= e!3172832 (list!19043 (xs!18970 (left!42855 (left!42855 ys!41)))))))

(declare-fun b!5087353 () Bool)

(assert (=> b!5087353 (= e!3172832 (++!12817 (list!19041 (left!42855 (left!42855 (left!42855 ys!41)))) (list!19041 (right!43185 (left!42855 (left!42855 ys!41))))))))

(declare-fun b!5087350 () Bool)

(assert (=> b!5087350 (= e!3172831 Nil!58460)))

(declare-fun d!1646764 () Bool)

(declare-fun c!874093 () Bool)

(assert (=> d!1646764 (= c!874093 ((_ is Empty!15590) (left!42855 (left!42855 ys!41))))))

(assert (=> d!1646764 (= (list!19041 (left!42855 (left!42855 ys!41))) e!3172831)))

(assert (= (and d!1646764 c!874093) b!5087350))

(assert (= (and d!1646764 (not c!874093)) b!5087351))

(assert (= (and b!5087351 c!874094) b!5087352))

(assert (= (and b!5087351 (not c!874094)) b!5087353))

(declare-fun m!6145116 () Bool)

(assert (=> b!5087352 m!6145116))

(declare-fun m!6145118 () Bool)

(assert (=> b!5087353 m!6145118))

(declare-fun m!6145120 () Bool)

(assert (=> b!5087353 m!6145120))

(assert (=> b!5087353 m!6145118))

(assert (=> b!5087353 m!6145120))

(declare-fun m!6145122 () Bool)

(assert (=> b!5087353 m!6145122))

(assert (=> b!5086879 d!1646764))

(declare-fun b!5087354 () Bool)

(declare-fun res!2165783 () Bool)

(declare-fun e!3172834 () Bool)

(assert (=> b!5087354 (=> (not res!2165783) (not e!3172834))))

(assert (=> b!5087354 (= res!2165783 (isBalanced!4452 (left!42855 (right!43185 lt!2091737))))))

(declare-fun b!5087355 () Bool)

(declare-fun e!3172833 () Bool)

(assert (=> b!5087355 (= e!3172833 e!3172834)))

(declare-fun res!2165785 () Bool)

(assert (=> b!5087355 (=> (not res!2165785) (not e!3172834))))

(assert (=> b!5087355 (= res!2165785 (<= (- 1) (- (height!2167 (left!42855 (right!43185 lt!2091737))) (height!2167 (right!43185 (right!43185 lt!2091737))))))))

(declare-fun b!5087356 () Bool)

(declare-fun res!2165781 () Bool)

(assert (=> b!5087356 (=> (not res!2165781) (not e!3172834))))

(assert (=> b!5087356 (= res!2165781 (<= (- (height!2167 (left!42855 (right!43185 lt!2091737))) (height!2167 (right!43185 (right!43185 lt!2091737)))) 1))))

(declare-fun b!5087357 () Bool)

(assert (=> b!5087357 (= e!3172834 (not (isEmpty!31683 (right!43185 (right!43185 lt!2091737)))))))

(declare-fun b!5087358 () Bool)

(declare-fun res!2165784 () Bool)

(assert (=> b!5087358 (=> (not res!2165784) (not e!3172834))))

(assert (=> b!5087358 (= res!2165784 (isBalanced!4452 (right!43185 (right!43185 lt!2091737))))))

(declare-fun b!5087359 () Bool)

(declare-fun res!2165786 () Bool)

(assert (=> b!5087359 (=> (not res!2165786) (not e!3172834))))

(assert (=> b!5087359 (= res!2165786 (not (isEmpty!31683 (left!42855 (right!43185 lt!2091737)))))))

(declare-fun d!1646766 () Bool)

(declare-fun res!2165782 () Bool)

(assert (=> d!1646766 (=> res!2165782 e!3172833)))

(assert (=> d!1646766 (= res!2165782 (not ((_ is Node!15590) (right!43185 lt!2091737))))))

(assert (=> d!1646766 (= (isBalanced!4452 (right!43185 lt!2091737)) e!3172833)))

(assert (= (and d!1646766 (not res!2165782)) b!5087355))

(assert (= (and b!5087355 res!2165785) b!5087356))

(assert (= (and b!5087356 res!2165781) b!5087354))

(assert (= (and b!5087354 res!2165783) b!5087358))

(assert (= (and b!5087358 res!2165784) b!5087359))

(assert (= (and b!5087359 res!2165786) b!5087357))

(declare-fun m!6145124 () Bool)

(assert (=> b!5087356 m!6145124))

(declare-fun m!6145126 () Bool)

(assert (=> b!5087356 m!6145126))

(assert (=> b!5087355 m!6145124))

(assert (=> b!5087355 m!6145126))

(declare-fun m!6145128 () Bool)

(assert (=> b!5087358 m!6145128))

(declare-fun m!6145130 () Bool)

(assert (=> b!5087359 m!6145130))

(declare-fun m!6145132 () Bool)

(assert (=> b!5087354 m!6145132))

(declare-fun m!6145134 () Bool)

(assert (=> b!5087357 m!6145134))

(assert (=> b!5086782 d!1646766))

(declare-fun d!1646768 () Bool)

(declare-fun lt!2091795 () Bool)

(assert (=> d!1646768 (= lt!2091795 (isEmpty!31685 (list!19041 (right!43185 xs!286))))))

(assert (=> d!1646768 (= lt!2091795 (= (size!39129 (right!43185 xs!286)) 0))))

(assert (=> d!1646768 (= (isEmpty!31683 (right!43185 xs!286)) lt!2091795)))

(declare-fun bs!1190991 () Bool)

(assert (= bs!1190991 d!1646768))

(assert (=> bs!1190991 m!6144092))

(assert (=> bs!1190991 m!6144092))

(declare-fun m!6145136 () Bool)

(assert (=> bs!1190991 m!6145136))

(declare-fun m!6145138 () Bool)

(assert (=> bs!1190991 m!6145138))

(assert (=> b!5086653 d!1646768))

(assert (=> b!5086780 d!1646646))

(assert (=> b!5086780 d!1646650))

(declare-fun d!1646770 () Bool)

(declare-fun res!2165787 () Bool)

(declare-fun e!3172835 () Bool)

(assert (=> d!1646770 (=> (not res!2165787) (not e!3172835))))

(assert (=> d!1646770 (= res!2165787 (<= (size!39127 (list!19043 (xs!18970 (left!42855 xs!286)))) 512))))

(assert (=> d!1646770 (= (inv!77703 (left!42855 xs!286)) e!3172835)))

(declare-fun b!5087360 () Bool)

(declare-fun res!2165788 () Bool)

(assert (=> b!5087360 (=> (not res!2165788) (not e!3172835))))

(assert (=> b!5087360 (= res!2165788 (= (csize!31411 (left!42855 xs!286)) (size!39127 (list!19043 (xs!18970 (left!42855 xs!286))))))))

(declare-fun b!5087361 () Bool)

(assert (=> b!5087361 (= e!3172835 (and (> (csize!31411 (left!42855 xs!286)) 0) (<= (csize!31411 (left!42855 xs!286)) 512)))))

(assert (= (and d!1646770 res!2165787) b!5087360))

(assert (= (and b!5087360 res!2165788) b!5087361))

(assert (=> d!1646770 m!6144416))

(assert (=> d!1646770 m!6144416))

(declare-fun m!6145140 () Bool)

(assert (=> d!1646770 m!6145140))

(assert (=> b!5087360 m!6144416))

(assert (=> b!5087360 m!6144416))

(assert (=> b!5087360 m!6145140))

(assert (=> b!5086899 d!1646770))

(assert (=> b!5086651 d!1646630))

(assert (=> b!5086651 d!1646632))

(declare-fun d!1646772 () Bool)

(declare-fun lt!2091796 () Bool)

(assert (=> d!1646772 (= lt!2091796 (isEmpty!31685 (list!19041 (left!42855 ys!41))))))

(assert (=> d!1646772 (= lt!2091796 (= (size!39129 (left!42855 ys!41)) 0))))

(assert (=> d!1646772 (= (isEmpty!31683 (left!42855 ys!41)) lt!2091796)))

(declare-fun bs!1190992 () Bool)

(assert (= bs!1190992 d!1646772))

(assert (=> bs!1190992 m!6144106))

(assert (=> bs!1190992 m!6144106))

(declare-fun m!6145142 () Bool)

(assert (=> bs!1190992 m!6145142))

(assert (=> bs!1190992 m!6144630))

(assert (=> b!5086896 d!1646772))

(declare-fun b!5087365 () Bool)

(declare-fun e!3172836 () Bool)

(declare-fun lt!2091797 () List!58584)

(assert (=> b!5087365 (= e!3172836 (or (not (= (list!19041 (right!43185 ys!41)) Nil!58460)) (= lt!2091797 (list!19041 (left!42855 ys!41)))))))

(declare-fun b!5087363 () Bool)

(declare-fun e!3172837 () List!58584)

(assert (=> b!5087363 (= e!3172837 (Cons!58460 (h!64908 (list!19041 (left!42855 ys!41))) (++!12817 (t!371437 (list!19041 (left!42855 ys!41))) (list!19041 (right!43185 ys!41)))))))

(declare-fun d!1646774 () Bool)

(assert (=> d!1646774 e!3172836))

(declare-fun res!2165789 () Bool)

(assert (=> d!1646774 (=> (not res!2165789) (not e!3172836))))

(assert (=> d!1646774 (= res!2165789 (= (content!10432 lt!2091797) ((_ map or) (content!10432 (list!19041 (left!42855 ys!41))) (content!10432 (list!19041 (right!43185 ys!41))))))))

(assert (=> d!1646774 (= lt!2091797 e!3172837)))

(declare-fun c!874095 () Bool)

(assert (=> d!1646774 (= c!874095 ((_ is Nil!58460) (list!19041 (left!42855 ys!41))))))

(assert (=> d!1646774 (= (++!12817 (list!19041 (left!42855 ys!41)) (list!19041 (right!43185 ys!41))) lt!2091797)))

(declare-fun b!5087364 () Bool)

(declare-fun res!2165790 () Bool)

(assert (=> b!5087364 (=> (not res!2165790) (not e!3172836))))

(assert (=> b!5087364 (= res!2165790 (= (size!39127 lt!2091797) (+ (size!39127 (list!19041 (left!42855 ys!41))) (size!39127 (list!19041 (right!43185 ys!41))))))))

(declare-fun b!5087362 () Bool)

(assert (=> b!5087362 (= e!3172837 (list!19041 (right!43185 ys!41)))))

(assert (= (and d!1646774 c!874095) b!5087362))

(assert (= (and d!1646774 (not c!874095)) b!5087363))

(assert (= (and d!1646774 res!2165789) b!5087364))

(assert (= (and b!5087364 res!2165790) b!5087365))

(assert (=> b!5087363 m!6144108))

(declare-fun m!6145144 () Bool)

(assert (=> b!5087363 m!6145144))

(declare-fun m!6145146 () Bool)

(assert (=> d!1646774 m!6145146))

(assert (=> d!1646774 m!6144106))

(declare-fun m!6145148 () Bool)

(assert (=> d!1646774 m!6145148))

(assert (=> d!1646774 m!6144108))

(declare-fun m!6145150 () Bool)

(assert (=> d!1646774 m!6145150))

(declare-fun m!6145152 () Bool)

(assert (=> b!5087364 m!6145152))

(assert (=> b!5087364 m!6144106))

(declare-fun m!6145154 () Bool)

(assert (=> b!5087364 m!6145154))

(assert (=> b!5087364 m!6144108))

(declare-fun m!6145156 () Bool)

(assert (=> b!5087364 m!6145156))

(assert (=> b!5086765 d!1646774))

(declare-fun b!5087367 () Bool)

(declare-fun e!3172838 () List!58584)

(declare-fun e!3172839 () List!58584)

(assert (=> b!5087367 (= e!3172838 e!3172839)))

(declare-fun c!874097 () Bool)

(assert (=> b!5087367 (= c!874097 ((_ is Leaf!25890) (left!42855 ys!41)))))

(declare-fun b!5087368 () Bool)

(assert (=> b!5087368 (= e!3172839 (list!19043 (xs!18970 (left!42855 ys!41))))))

(declare-fun b!5087369 () Bool)

(assert (=> b!5087369 (= e!3172839 (++!12817 (list!19041 (left!42855 (left!42855 ys!41))) (list!19041 (right!43185 (left!42855 ys!41)))))))

(declare-fun b!5087366 () Bool)

(assert (=> b!5087366 (= e!3172838 Nil!58460)))

(declare-fun d!1646776 () Bool)

(declare-fun c!874096 () Bool)

(assert (=> d!1646776 (= c!874096 ((_ is Empty!15590) (left!42855 ys!41)))))

(assert (=> d!1646776 (= (list!19041 (left!42855 ys!41)) e!3172838)))

(assert (= (and d!1646776 c!874096) b!5087366))

(assert (= (and d!1646776 (not c!874096)) b!5087367))

(assert (= (and b!5087367 c!874097) b!5087368))

(assert (= (and b!5087367 (not c!874097)) b!5087369))

(declare-fun m!6145158 () Bool)

(assert (=> b!5087368 m!6145158))

(assert (=> b!5087369 m!6144234))

(assert (=> b!5087369 m!6144232))

(assert (=> b!5087369 m!6144234))

(assert (=> b!5087369 m!6144232))

(declare-fun m!6145160 () Bool)

(assert (=> b!5087369 m!6145160))

(assert (=> b!5086765 d!1646776))

(assert (=> b!5086765 d!1646756))

(declare-fun d!1646778 () Bool)

(declare-fun lt!2091798 () Int)

(assert (=> d!1646778 (>= lt!2091798 0)))

(declare-fun e!3172840 () Int)

(assert (=> d!1646778 (= lt!2091798 e!3172840)))

(declare-fun c!874098 () Bool)

(assert (=> d!1646778 (= c!874098 ((_ is Nil!58460) (innerList!15678 (xs!18970 xs!286))))))

(assert (=> d!1646778 (= (size!39127 (innerList!15678 (xs!18970 xs!286))) lt!2091798)))

(declare-fun b!5087370 () Bool)

(assert (=> b!5087370 (= e!3172840 0)))

(declare-fun b!5087371 () Bool)

(assert (=> b!5087371 (= e!3172840 (+ 1 (size!39127 (t!371437 (innerList!15678 (xs!18970 xs!286))))))))

(assert (= (and d!1646778 c!874098) b!5087370))

(assert (= (and d!1646778 (not c!874098)) b!5087371))

(declare-fun m!6145162 () Bool)

(assert (=> b!5087371 m!6145162))

(assert (=> d!1646476 d!1646778))

(declare-fun b!5087375 () Bool)

(declare-fun e!3172841 () Bool)

(declare-fun lt!2091799 () List!58584)

(assert (=> b!5087375 (= e!3172841 (or (not (= (list!19041 (right!43185 lt!2091737)) Nil!58460)) (= lt!2091799 (list!19041 (left!42855 lt!2091737)))))))

(declare-fun b!5087373 () Bool)

(declare-fun e!3172842 () List!58584)

(assert (=> b!5087373 (= e!3172842 (Cons!58460 (h!64908 (list!19041 (left!42855 lt!2091737))) (++!12817 (t!371437 (list!19041 (left!42855 lt!2091737))) (list!19041 (right!43185 lt!2091737)))))))

(declare-fun d!1646780 () Bool)

(assert (=> d!1646780 e!3172841))

(declare-fun res!2165791 () Bool)

(assert (=> d!1646780 (=> (not res!2165791) (not e!3172841))))

(assert (=> d!1646780 (= res!2165791 (= (content!10432 lt!2091799) ((_ map or) (content!10432 (list!19041 (left!42855 lt!2091737))) (content!10432 (list!19041 (right!43185 lt!2091737))))))))

(assert (=> d!1646780 (= lt!2091799 e!3172842)))

(declare-fun c!874099 () Bool)

(assert (=> d!1646780 (= c!874099 ((_ is Nil!58460) (list!19041 (left!42855 lt!2091737))))))

(assert (=> d!1646780 (= (++!12817 (list!19041 (left!42855 lt!2091737)) (list!19041 (right!43185 lt!2091737))) lt!2091799)))

(declare-fun b!5087374 () Bool)

(declare-fun res!2165792 () Bool)

(assert (=> b!5087374 (=> (not res!2165792) (not e!3172841))))

(assert (=> b!5087374 (= res!2165792 (= (size!39127 lt!2091799) (+ (size!39127 (list!19041 (left!42855 lt!2091737))) (size!39127 (list!19041 (right!43185 lt!2091737))))))))

(declare-fun b!5087372 () Bool)

(assert (=> b!5087372 (= e!3172842 (list!19041 (right!43185 lt!2091737)))))

(assert (= (and d!1646780 c!874099) b!5087372))

(assert (= (and d!1646780 (not c!874099)) b!5087373))

(assert (= (and d!1646780 res!2165791) b!5087374))

(assert (= (and b!5087374 res!2165792) b!5087375))

(assert (=> b!5087373 m!6144018))

(declare-fun m!6145164 () Bool)

(assert (=> b!5087373 m!6145164))

(declare-fun m!6145166 () Bool)

(assert (=> d!1646780 m!6145166))

(assert (=> d!1646780 m!6144016))

(declare-fun m!6145168 () Bool)

(assert (=> d!1646780 m!6145168))

(assert (=> d!1646780 m!6144018))

(declare-fun m!6145170 () Bool)

(assert (=> d!1646780 m!6145170))

(declare-fun m!6145172 () Bool)

(assert (=> b!5087374 m!6145172))

(assert (=> b!5087374 m!6144016))

(declare-fun m!6145174 () Bool)

(assert (=> b!5087374 m!6145174))

(assert (=> b!5087374 m!6144018))

(declare-fun m!6145176 () Bool)

(assert (=> b!5087374 m!6145176))

(assert (=> b!5086718 d!1646780))

(declare-fun b!5087377 () Bool)

(declare-fun e!3172843 () List!58584)

(declare-fun e!3172844 () List!58584)

(assert (=> b!5087377 (= e!3172843 e!3172844)))

(declare-fun c!874101 () Bool)

(assert (=> b!5087377 (= c!874101 ((_ is Leaf!25890) (left!42855 lt!2091737)))))

(declare-fun b!5087378 () Bool)

(assert (=> b!5087378 (= e!3172844 (list!19043 (xs!18970 (left!42855 lt!2091737))))))

(declare-fun b!5087379 () Bool)

(assert (=> b!5087379 (= e!3172844 (++!12817 (list!19041 (left!42855 (left!42855 lt!2091737))) (list!19041 (right!43185 (left!42855 lt!2091737)))))))

(declare-fun b!5087376 () Bool)

(assert (=> b!5087376 (= e!3172843 Nil!58460)))

(declare-fun d!1646782 () Bool)

(declare-fun c!874100 () Bool)

(assert (=> d!1646782 (= c!874100 ((_ is Empty!15590) (left!42855 lt!2091737)))))

(assert (=> d!1646782 (= (list!19041 (left!42855 lt!2091737)) e!3172843)))

(assert (= (and d!1646782 c!874100) b!5087376))

(assert (= (and d!1646782 (not c!874100)) b!5087377))

(assert (= (and b!5087377 c!874101) b!5087378))

(assert (= (and b!5087377 (not c!874101)) b!5087379))

(declare-fun m!6145178 () Bool)

(assert (=> b!5087378 m!6145178))

(declare-fun m!6145180 () Bool)

(assert (=> b!5087379 m!6145180))

(declare-fun m!6145182 () Bool)

(assert (=> b!5087379 m!6145182))

(assert (=> b!5087379 m!6145180))

(assert (=> b!5087379 m!6145182))

(declare-fun m!6145184 () Bool)

(assert (=> b!5087379 m!6145184))

(assert (=> b!5086718 d!1646782))

(declare-fun b!5087381 () Bool)

(declare-fun e!3172845 () List!58584)

(declare-fun e!3172846 () List!58584)

(assert (=> b!5087381 (= e!3172845 e!3172846)))

(declare-fun c!874103 () Bool)

(assert (=> b!5087381 (= c!874103 ((_ is Leaf!25890) (right!43185 lt!2091737)))))

(declare-fun b!5087382 () Bool)

(assert (=> b!5087382 (= e!3172846 (list!19043 (xs!18970 (right!43185 lt!2091737))))))

(declare-fun b!5087383 () Bool)

(assert (=> b!5087383 (= e!3172846 (++!12817 (list!19041 (left!42855 (right!43185 lt!2091737))) (list!19041 (right!43185 (right!43185 lt!2091737)))))))

(declare-fun b!5087380 () Bool)

(assert (=> b!5087380 (= e!3172845 Nil!58460)))

(declare-fun d!1646784 () Bool)

(declare-fun c!874102 () Bool)

(assert (=> d!1646784 (= c!874102 ((_ is Empty!15590) (right!43185 lt!2091737)))))

(assert (=> d!1646784 (= (list!19041 (right!43185 lt!2091737)) e!3172845)))

(assert (= (and d!1646784 c!874102) b!5087380))

(assert (= (and d!1646784 (not c!874102)) b!5087381))

(assert (= (and b!5087381 c!874103) b!5087382))

(assert (= (and b!5087381 (not c!874103)) b!5087383))

(declare-fun m!6145186 () Bool)

(assert (=> b!5087382 m!6145186))

(declare-fun m!6145188 () Bool)

(assert (=> b!5087383 m!6145188))

(declare-fun m!6145190 () Bool)

(assert (=> b!5087383 m!6145190))

(assert (=> b!5087383 m!6145188))

(assert (=> b!5087383 m!6145190))

(declare-fun m!6145192 () Bool)

(assert (=> b!5087383 m!6145192))

(assert (=> b!5086718 d!1646784))

(declare-fun b!5087384 () Bool)

(declare-fun res!2165795 () Bool)

(declare-fun e!3172848 () Bool)

(assert (=> b!5087384 (=> (not res!2165795) (not e!3172848))))

(assert (=> b!5087384 (= res!2165795 (isBalanced!4452 (left!42855 (left!42855 lt!2091737))))))

(declare-fun b!5087385 () Bool)

(declare-fun e!3172847 () Bool)

(assert (=> b!5087385 (= e!3172847 e!3172848)))

(declare-fun res!2165797 () Bool)

(assert (=> b!5087385 (=> (not res!2165797) (not e!3172848))))

(assert (=> b!5087385 (= res!2165797 (<= (- 1) (- (height!2167 (left!42855 (left!42855 lt!2091737))) (height!2167 (right!43185 (left!42855 lt!2091737))))))))

(declare-fun b!5087386 () Bool)

(declare-fun res!2165793 () Bool)

(assert (=> b!5087386 (=> (not res!2165793) (not e!3172848))))

(assert (=> b!5087386 (= res!2165793 (<= (- (height!2167 (left!42855 (left!42855 lt!2091737))) (height!2167 (right!43185 (left!42855 lt!2091737)))) 1))))

(declare-fun b!5087387 () Bool)

(assert (=> b!5087387 (= e!3172848 (not (isEmpty!31683 (right!43185 (left!42855 lt!2091737)))))))

(declare-fun b!5087388 () Bool)

(declare-fun res!2165796 () Bool)

(assert (=> b!5087388 (=> (not res!2165796) (not e!3172848))))

(assert (=> b!5087388 (= res!2165796 (isBalanced!4452 (right!43185 (left!42855 lt!2091737))))))

(declare-fun b!5087389 () Bool)

(declare-fun res!2165798 () Bool)

(assert (=> b!5087389 (=> (not res!2165798) (not e!3172848))))

(assert (=> b!5087389 (= res!2165798 (not (isEmpty!31683 (left!42855 (left!42855 lt!2091737)))))))

(declare-fun d!1646786 () Bool)

(declare-fun res!2165794 () Bool)

(assert (=> d!1646786 (=> res!2165794 e!3172847)))

(assert (=> d!1646786 (= res!2165794 (not ((_ is Node!15590) (left!42855 lt!2091737))))))

(assert (=> d!1646786 (= (isBalanced!4452 (left!42855 lt!2091737)) e!3172847)))

(assert (= (and d!1646786 (not res!2165794)) b!5087385))

(assert (= (and b!5087385 res!2165797) b!5087386))

(assert (= (and b!5087386 res!2165793) b!5087384))

(assert (= (and b!5087384 res!2165795) b!5087388))

(assert (= (and b!5087388 res!2165796) b!5087389))

(assert (= (and b!5087389 res!2165798) b!5087387))

(declare-fun m!6145194 () Bool)

(assert (=> b!5087386 m!6145194))

(declare-fun m!6145196 () Bool)

(assert (=> b!5087386 m!6145196))

(assert (=> b!5087385 m!6145194))

(assert (=> b!5087385 m!6145196))

(declare-fun m!6145198 () Bool)

(assert (=> b!5087388 m!6145198))

(declare-fun m!6145200 () Bool)

(assert (=> b!5087389 m!6145200))

(declare-fun m!6145202 () Bool)

(assert (=> b!5087384 m!6145202))

(declare-fun m!6145204 () Bool)

(assert (=> b!5087387 m!6145204))

(assert (=> b!5086778 d!1646786))

(declare-fun d!1646788 () Bool)

(declare-fun res!2165799 () Bool)

(declare-fun e!3172849 () Bool)

(assert (=> d!1646788 (=> (not res!2165799) (not e!3172849))))

(assert (=> d!1646788 (= res!2165799 (= (csize!31410 (left!42855 xs!286)) (+ (size!39129 (left!42855 (left!42855 xs!286))) (size!39129 (right!43185 (left!42855 xs!286))))))))

(assert (=> d!1646788 (= (inv!77702 (left!42855 xs!286)) e!3172849)))

(declare-fun b!5087390 () Bool)

(declare-fun res!2165800 () Bool)

(assert (=> b!5087390 (=> (not res!2165800) (not e!3172849))))

(assert (=> b!5087390 (= res!2165800 (and (not (= (left!42855 (left!42855 xs!286)) Empty!15590)) (not (= (right!43185 (left!42855 xs!286)) Empty!15590))))))

(declare-fun b!5087391 () Bool)

(declare-fun res!2165801 () Bool)

(assert (=> b!5087391 (=> (not res!2165801) (not e!3172849))))

(assert (=> b!5087391 (= res!2165801 (= (cheight!15801 (left!42855 xs!286)) (+ (max!0 (height!2167 (left!42855 (left!42855 xs!286))) (height!2167 (right!43185 (left!42855 xs!286)))) 1)))))

(declare-fun b!5087392 () Bool)

(assert (=> b!5087392 (= e!3172849 (<= 0 (cheight!15801 (left!42855 xs!286))))))

(assert (= (and d!1646788 res!2165799) b!5087390))

(assert (= (and b!5087390 res!2165800) b!5087391))

(assert (= (and b!5087391 res!2165801) b!5087392))

(declare-fun m!6145206 () Bool)

(assert (=> d!1646788 m!6145206))

(declare-fun m!6145208 () Bool)

(assert (=> d!1646788 m!6145208))

(assert (=> b!5087391 m!6144698))

(assert (=> b!5087391 m!6144700))

(assert (=> b!5087391 m!6144698))

(assert (=> b!5087391 m!6144700))

(declare-fun m!6145210 () Bool)

(assert (=> b!5087391 m!6145210))

(assert (=> b!5086897 d!1646788))

(declare-fun d!1646790 () Bool)

(declare-fun res!2165802 () Bool)

(declare-fun e!3172850 () Bool)

(assert (=> d!1646790 (=> (not res!2165802) (not e!3172850))))

(assert (=> d!1646790 (= res!2165802 (<= (size!39127 (list!19043 (xs!18970 (left!42855 ys!41)))) 512))))

(assert (=> d!1646790 (= (inv!77703 (left!42855 ys!41)) e!3172850)))

(declare-fun b!5087393 () Bool)

(declare-fun res!2165803 () Bool)

(assert (=> b!5087393 (=> (not res!2165803) (not e!3172850))))

(assert (=> b!5087393 (= res!2165803 (= (csize!31411 (left!42855 ys!41)) (size!39127 (list!19043 (xs!18970 (left!42855 ys!41))))))))

(declare-fun b!5087394 () Bool)

(assert (=> b!5087394 (= e!3172850 (and (> (csize!31411 (left!42855 ys!41)) 0) (<= (csize!31411 (left!42855 ys!41)) 512)))))

(assert (= (and d!1646790 res!2165802) b!5087393))

(assert (= (and b!5087393 res!2165803) b!5087394))

(assert (=> d!1646790 m!6145158))

(assert (=> d!1646790 m!6145158))

(declare-fun m!6145212 () Bool)

(assert (=> d!1646790 m!6145212))

(assert (=> b!5087393 m!6145158))

(assert (=> b!5087393 m!6145158))

(assert (=> b!5087393 m!6145212))

(assert (=> b!5086688 d!1646790))

(declare-fun d!1646792 () Bool)

(declare-fun lt!2091800 () Bool)

(assert (=> d!1646792 (= lt!2091800 (isEmpty!31685 (list!19041 (right!43185 ys!41))))))

(assert (=> d!1646792 (= lt!2091800 (= (size!39129 (right!43185 ys!41)) 0))))

(assert (=> d!1646792 (= (isEmpty!31683 (right!43185 ys!41)) lt!2091800)))

(declare-fun bs!1190993 () Bool)

(assert (= bs!1190993 d!1646792))

(assert (=> bs!1190993 m!6144108))

(assert (=> bs!1190993 m!6144108))

(declare-fun m!6145214 () Bool)

(assert (=> bs!1190993 m!6145214))

(assert (=> bs!1190993 m!6144632))

(assert (=> b!5086894 d!1646792))

(declare-fun d!1646794 () Bool)

(declare-fun res!2165804 () Bool)

(declare-fun e!3172851 () Bool)

(assert (=> d!1646794 (=> (not res!2165804) (not e!3172851))))

(assert (=> d!1646794 (= res!2165804 (= (csize!31410 (left!42855 ys!41)) (+ (size!39129 (left!42855 (left!42855 ys!41))) (size!39129 (right!43185 (left!42855 ys!41))))))))

(assert (=> d!1646794 (= (inv!77702 (left!42855 ys!41)) e!3172851)))

(declare-fun b!5087395 () Bool)

(declare-fun res!2165805 () Bool)

(assert (=> b!5087395 (=> (not res!2165805) (not e!3172851))))

(assert (=> b!5087395 (= res!2165805 (and (not (= (left!42855 (left!42855 ys!41)) Empty!15590)) (not (= (right!43185 (left!42855 ys!41)) Empty!15590))))))

(declare-fun b!5087396 () Bool)

(declare-fun res!2165806 () Bool)

(assert (=> b!5087396 (=> (not res!2165806) (not e!3172851))))

(assert (=> b!5087396 (= res!2165806 (= (cheight!15801 (left!42855 ys!41)) (+ (max!0 (height!2167 (left!42855 (left!42855 ys!41))) (height!2167 (right!43185 (left!42855 ys!41)))) 1)))))

(declare-fun b!5087397 () Bool)

(assert (=> b!5087397 (= e!3172851 (<= 0 (cheight!15801 (left!42855 ys!41))))))

(assert (= (and d!1646794 res!2165804) b!5087395))

(assert (= (and b!5087395 res!2165805) b!5087396))

(assert (= (and b!5087396 res!2165806) b!5087397))

(declare-fun m!6145216 () Bool)

(assert (=> d!1646794 m!6145216))

(declare-fun m!6145218 () Bool)

(assert (=> d!1646794 m!6145218))

(declare-fun m!6145220 () Bool)

(assert (=> b!5087396 m!6145220))

(declare-fun m!6145222 () Bool)

(assert (=> b!5087396 m!6145222))

(assert (=> b!5087396 m!6145220))

(assert (=> b!5087396 m!6145222))

(declare-fun m!6145224 () Bool)

(assert (=> b!5087396 m!6145224))

(assert (=> b!5086686 d!1646794))

(declare-fun d!1646796 () Bool)

(declare-fun c!874104 () Bool)

(assert (=> d!1646796 (= c!874104 ((_ is Node!15590) (left!42855 (left!42855 xs!286))))))

(declare-fun e!3172852 () Bool)

(assert (=> d!1646796 (= (inv!77698 (left!42855 (left!42855 xs!286))) e!3172852)))

(declare-fun b!5087398 () Bool)

(assert (=> b!5087398 (= e!3172852 (inv!77702 (left!42855 (left!42855 xs!286))))))

(declare-fun b!5087399 () Bool)

(declare-fun e!3172853 () Bool)

(assert (=> b!5087399 (= e!3172852 e!3172853)))

(declare-fun res!2165807 () Bool)

(assert (=> b!5087399 (= res!2165807 (not ((_ is Leaf!25890) (left!42855 (left!42855 xs!286)))))))

(assert (=> b!5087399 (=> res!2165807 e!3172853)))

(declare-fun b!5087400 () Bool)

(assert (=> b!5087400 (= e!3172853 (inv!77703 (left!42855 (left!42855 xs!286))))))

(assert (= (and d!1646796 c!874104) b!5087398))

(assert (= (and d!1646796 (not c!874104)) b!5087399))

(assert (= (and b!5087399 (not res!2165807)) b!5087400))

(declare-fun m!6145226 () Bool)

(assert (=> b!5087398 m!6145226))

(declare-fun m!6145228 () Bool)

(assert (=> b!5087400 m!6145228))

(assert (=> b!5086923 d!1646796))

(declare-fun d!1646798 () Bool)

(declare-fun c!874105 () Bool)

(assert (=> d!1646798 (= c!874105 ((_ is Node!15590) (right!43185 (left!42855 xs!286))))))

(declare-fun e!3172854 () Bool)

(assert (=> d!1646798 (= (inv!77698 (right!43185 (left!42855 xs!286))) e!3172854)))

(declare-fun b!5087401 () Bool)

(assert (=> b!5087401 (= e!3172854 (inv!77702 (right!43185 (left!42855 xs!286))))))

(declare-fun b!5087402 () Bool)

(declare-fun e!3172855 () Bool)

(assert (=> b!5087402 (= e!3172854 e!3172855)))

(declare-fun res!2165808 () Bool)

(assert (=> b!5087402 (= res!2165808 (not ((_ is Leaf!25890) (right!43185 (left!42855 xs!286)))))))

(assert (=> b!5087402 (=> res!2165808 e!3172855)))

(declare-fun b!5087403 () Bool)

(assert (=> b!5087403 (= e!3172855 (inv!77703 (right!43185 (left!42855 xs!286))))))

(assert (= (and d!1646798 c!874105) b!5087401))

(assert (= (and d!1646798 (not c!874105)) b!5087402))

(assert (= (and b!5087402 (not res!2165808)) b!5087403))

(declare-fun m!6145230 () Bool)

(assert (=> b!5087401 m!6145230))

(declare-fun m!6145232 () Bool)

(assert (=> b!5087403 m!6145232))

(assert (=> b!5086923 d!1646798))

(assert (=> b!5086892 d!1646670))

(assert (=> b!5086892 d!1646676))

(declare-fun b!5087404 () Bool)

(declare-fun res!2165811 () Bool)

(declare-fun e!3172857 () Bool)

(assert (=> b!5087404 (=> (not res!2165811) (not e!3172857))))

(assert (=> b!5087404 (= res!2165811 (isBalanced!4452 (left!42855 (left!42855 ys!41))))))

(declare-fun b!5087405 () Bool)

(declare-fun e!3172856 () Bool)

(assert (=> b!5087405 (= e!3172856 e!3172857)))

(declare-fun res!2165813 () Bool)

(assert (=> b!5087405 (=> (not res!2165813) (not e!3172857))))

(assert (=> b!5087405 (= res!2165813 (<= (- 1) (- (height!2167 (left!42855 (left!42855 ys!41))) (height!2167 (right!43185 (left!42855 ys!41))))))))

(declare-fun b!5087406 () Bool)

(declare-fun res!2165809 () Bool)

(assert (=> b!5087406 (=> (not res!2165809) (not e!3172857))))

(assert (=> b!5087406 (= res!2165809 (<= (- (height!2167 (left!42855 (left!42855 ys!41))) (height!2167 (right!43185 (left!42855 ys!41)))) 1))))

(declare-fun b!5087407 () Bool)

(assert (=> b!5087407 (= e!3172857 (not (isEmpty!31683 (right!43185 (left!42855 ys!41)))))))

(declare-fun b!5087408 () Bool)

(declare-fun res!2165812 () Bool)

(assert (=> b!5087408 (=> (not res!2165812) (not e!3172857))))

(assert (=> b!5087408 (= res!2165812 (isBalanced!4452 (right!43185 (left!42855 ys!41))))))

(declare-fun b!5087409 () Bool)

(declare-fun res!2165814 () Bool)

(assert (=> b!5087409 (=> (not res!2165814) (not e!3172857))))

(assert (=> b!5087409 (= res!2165814 (not (isEmpty!31683 (left!42855 (left!42855 ys!41)))))))

(declare-fun d!1646800 () Bool)

(declare-fun res!2165810 () Bool)

(assert (=> d!1646800 (=> res!2165810 e!3172856)))

(assert (=> d!1646800 (= res!2165810 (not ((_ is Node!15590) (left!42855 ys!41))))))

(assert (=> d!1646800 (= (isBalanced!4452 (left!42855 ys!41)) e!3172856)))

(assert (= (and d!1646800 (not res!2165810)) b!5087405))

(assert (= (and b!5087405 res!2165813) b!5087406))

(assert (= (and b!5087406 res!2165809) b!5087404))

(assert (= (and b!5087404 res!2165811) b!5087408))

(assert (= (and b!5087408 res!2165812) b!5087409))

(assert (= (and b!5087409 res!2165814) b!5087407))

(assert (=> b!5087406 m!6145220))

(assert (=> b!5087406 m!6145222))

(assert (=> b!5087405 m!6145220))

(assert (=> b!5087405 m!6145222))

(declare-fun m!6145234 () Bool)

(assert (=> b!5087408 m!6145234))

(declare-fun m!6145236 () Bool)

(assert (=> b!5087409 m!6145236))

(declare-fun m!6145238 () Bool)

(assert (=> b!5087404 m!6145238))

(declare-fun m!6145240 () Bool)

(assert (=> b!5087407 m!6145240))

(assert (=> b!5086891 d!1646800))

(assert (=> b!5086615 d!1646406))

(assert (=> b!5086615 d!1646408))

(declare-fun d!1646802 () Bool)

(assert (=> d!1646802 (= (list!19043 (xs!18970 xs!286)) (innerList!15678 (xs!18970 xs!286)))))

(assert (=> b!5086754 d!1646802))

(declare-fun d!1646804 () Bool)

(declare-fun c!874108 () Bool)

(assert (=> d!1646804 (= c!874108 ((_ is Nil!58460) lt!2091742))))

(declare-fun e!3172860 () (InoxSet T!105300))

(assert (=> d!1646804 (= (content!10432 lt!2091742) e!3172860)))

(declare-fun b!5087414 () Bool)

(assert (=> b!5087414 (= e!3172860 ((as const (Array T!105300 Bool)) false))))

(declare-fun b!5087415 () Bool)

(assert (=> b!5087415 (= e!3172860 ((_ map or) (store ((as const (Array T!105300 Bool)) false) (h!64908 lt!2091742) true) (content!10432 (t!371437 lt!2091742))))))

(assert (= (and d!1646804 c!874108) b!5087414))

(assert (= (and d!1646804 (not c!874108)) b!5087415))

(declare-fun m!6145242 () Bool)

(assert (=> b!5087415 m!6145242))

(declare-fun m!6145244 () Bool)

(assert (=> b!5087415 m!6145244))

(assert (=> d!1646418 d!1646804))

(declare-fun d!1646806 () Bool)

(declare-fun c!874109 () Bool)

(assert (=> d!1646806 (= c!874109 ((_ is Nil!58460) (list!19041 xs!286)))))

(declare-fun e!3172861 () (InoxSet T!105300))

(assert (=> d!1646806 (= (content!10432 (list!19041 xs!286)) e!3172861)))

(declare-fun b!5087416 () Bool)

(assert (=> b!5087416 (= e!3172861 ((as const (Array T!105300 Bool)) false))))

(declare-fun b!5087417 () Bool)

(assert (=> b!5087417 (= e!3172861 ((_ map or) (store ((as const (Array T!105300 Bool)) false) (h!64908 (list!19041 xs!286)) true) (content!10432 (t!371437 (list!19041 xs!286)))))))

(assert (= (and d!1646806 c!874109) b!5087416))

(assert (= (and d!1646806 (not c!874109)) b!5087417))

(declare-fun m!6145246 () Bool)

(assert (=> b!5087417 m!6145246))

(assert (=> b!5087417 m!6144940))

(assert (=> d!1646418 d!1646806))

(declare-fun d!1646808 () Bool)

(declare-fun c!874110 () Bool)

(assert (=> d!1646808 (= c!874110 ((_ is Nil!58460) (list!19041 ys!41)))))

(declare-fun e!3172862 () (InoxSet T!105300))

(assert (=> d!1646808 (= (content!10432 (list!19041 ys!41)) e!3172862)))

(declare-fun b!5087418 () Bool)

(assert (=> b!5087418 (= e!3172862 ((as const (Array T!105300 Bool)) false))))

(declare-fun b!5087419 () Bool)

(assert (=> b!5087419 (= e!3172862 ((_ map or) (store ((as const (Array T!105300 Bool)) false) (h!64908 (list!19041 ys!41)) true) (content!10432 (t!371437 (list!19041 ys!41)))))))

(assert (= (and d!1646808 c!874110) b!5087418))

(assert (= (and d!1646808 (not c!874110)) b!5087419))

(declare-fun m!6145248 () Bool)

(assert (=> b!5087419 m!6145248))

(declare-fun m!6145250 () Bool)

(assert (=> b!5087419 m!6145250))

(assert (=> d!1646418 d!1646808))

(declare-fun d!1646810 () Bool)

(declare-fun lt!2091801 () Int)

(assert (=> d!1646810 (>= lt!2091801 0)))

(declare-fun e!3172863 () Int)

(assert (=> d!1646810 (= lt!2091801 e!3172863)))

(declare-fun c!874111 () Bool)

(assert (=> d!1646810 (= c!874111 ((_ is Nil!58460) lt!2091742))))

(assert (=> d!1646810 (= (size!39127 lt!2091742) lt!2091801)))

(declare-fun b!5087420 () Bool)

(assert (=> b!5087420 (= e!3172863 0)))

(declare-fun b!5087421 () Bool)

(assert (=> b!5087421 (= e!3172863 (+ 1 (size!39127 (t!371437 lt!2091742))))))

(assert (= (and d!1646810 c!874111) b!5087420))

(assert (= (and d!1646810 (not c!874111)) b!5087421))

(declare-fun m!6145252 () Bool)

(assert (=> b!5087421 m!6145252))

(assert (=> b!5086744 d!1646810))

(declare-fun d!1646812 () Bool)

(declare-fun lt!2091802 () Int)

(assert (=> d!1646812 (>= lt!2091802 0)))

(declare-fun e!3172864 () Int)

(assert (=> d!1646812 (= lt!2091802 e!3172864)))

(declare-fun c!874112 () Bool)

(assert (=> d!1646812 (= c!874112 ((_ is Nil!58460) (list!19041 xs!286)))))

(assert (=> d!1646812 (= (size!39127 (list!19041 xs!286)) lt!2091802)))

(declare-fun b!5087422 () Bool)

(assert (=> b!5087422 (= e!3172864 0)))

(declare-fun b!5087423 () Bool)

(assert (=> b!5087423 (= e!3172864 (+ 1 (size!39127 (t!371437 (list!19041 xs!286)))))))

(assert (= (and d!1646812 c!874112) b!5087422))

(assert (= (and d!1646812 (not c!874112)) b!5087423))

(assert (=> b!5087423 m!6144950))

(assert (=> b!5086744 d!1646812))

(declare-fun d!1646814 () Bool)

(declare-fun lt!2091803 () Int)

(assert (=> d!1646814 (>= lt!2091803 0)))

(declare-fun e!3172865 () Int)

(assert (=> d!1646814 (= lt!2091803 e!3172865)))

(declare-fun c!874113 () Bool)

(assert (=> d!1646814 (= c!874113 ((_ is Nil!58460) (list!19041 ys!41)))))

(assert (=> d!1646814 (= (size!39127 (list!19041 ys!41)) lt!2091803)))

(declare-fun b!5087424 () Bool)

(assert (=> b!5087424 (= e!3172865 0)))

(declare-fun b!5087425 () Bool)

(assert (=> b!5087425 (= e!3172865 (+ 1 (size!39127 (t!371437 (list!19041 ys!41)))))))

(assert (= (and d!1646814 c!874113) b!5087424))

(assert (= (and d!1646814 (not c!874113)) b!5087425))

(declare-fun m!6145254 () Bool)

(assert (=> b!5087425 m!6145254))

(assert (=> b!5086744 d!1646814))

(declare-fun d!1646816 () Bool)

(declare-fun c!874114 () Bool)

(assert (=> d!1646816 (= c!874114 ((_ is Node!15590) (left!42855 (left!42855 ys!41))))))

(declare-fun e!3172866 () Bool)

(assert (=> d!1646816 (= (inv!77698 (left!42855 (left!42855 ys!41))) e!3172866)))

(declare-fun b!5087426 () Bool)

(assert (=> b!5087426 (= e!3172866 (inv!77702 (left!42855 (left!42855 ys!41))))))

(declare-fun b!5087427 () Bool)

(declare-fun e!3172867 () Bool)

(assert (=> b!5087427 (= e!3172866 e!3172867)))

(declare-fun res!2165815 () Bool)

(assert (=> b!5087427 (= res!2165815 (not ((_ is Leaf!25890) (left!42855 (left!42855 ys!41)))))))

(assert (=> b!5087427 (=> res!2165815 e!3172867)))

(declare-fun b!5087428 () Bool)

(assert (=> b!5087428 (= e!3172867 (inv!77703 (left!42855 (left!42855 ys!41))))))

(assert (= (and d!1646816 c!874114) b!5087426))

(assert (= (and d!1646816 (not c!874114)) b!5087427))

(assert (= (and b!5087427 (not res!2165815)) b!5087428))

(declare-fun m!6145256 () Bool)

(assert (=> b!5087426 m!6145256))

(declare-fun m!6145258 () Bool)

(assert (=> b!5087428 m!6145258))

(assert (=> b!5086917 d!1646816))

(declare-fun d!1646818 () Bool)

(declare-fun c!874115 () Bool)

(assert (=> d!1646818 (= c!874115 ((_ is Node!15590) (right!43185 (left!42855 ys!41))))))

(declare-fun e!3172868 () Bool)

(assert (=> d!1646818 (= (inv!77698 (right!43185 (left!42855 ys!41))) e!3172868)))

(declare-fun b!5087429 () Bool)

(assert (=> b!5087429 (= e!3172868 (inv!77702 (right!43185 (left!42855 ys!41))))))

(declare-fun b!5087430 () Bool)

(declare-fun e!3172869 () Bool)

(assert (=> b!5087430 (= e!3172868 e!3172869)))

(declare-fun res!2165816 () Bool)

(assert (=> b!5087430 (= res!2165816 (not ((_ is Leaf!25890) (right!43185 (left!42855 ys!41)))))))

(assert (=> b!5087430 (=> res!2165816 e!3172869)))

(declare-fun b!5087431 () Bool)

(assert (=> b!5087431 (= e!3172869 (inv!77703 (right!43185 (left!42855 ys!41))))))

(assert (= (and d!1646818 c!874115) b!5087429))

(assert (= (and d!1646818 (not c!874115)) b!5087430))

(assert (= (and b!5087430 (not res!2165816)) b!5087431))

(declare-fun m!6145260 () Bool)

(assert (=> b!5087429 m!6145260))

(declare-fun m!6145262 () Bool)

(assert (=> b!5087431 m!6145262))

(assert (=> b!5086917 d!1646818))

(declare-fun b!5087432 () Bool)

(declare-fun e!3172870 () Bool)

(declare-fun call!354529 () List!58584)

(declare-fun call!354526 () List!58584)

(assert (=> b!5087432 (= e!3172870 (= call!354529 call!354526))))

(declare-fun lt!2091804 () Bool)

(assert (=> b!5087432 (= lt!2091804 (appendAssoc!316 (t!371437 (list!19041 xs!286)) (list!19041 (left!42855 (left!42855 ys!41))) (list!19041 (right!43185 (left!42855 ys!41)))))))

(declare-fun bm!354521 () Bool)

(declare-fun call!354528 () List!58584)

(assert (=> bm!354521 (= call!354526 (++!12817 (list!19041 xs!286) call!354528))))

(declare-fun bm!354522 () Bool)

(assert (=> bm!354522 (= call!354528 (++!12817 (list!19041 (left!42855 (left!42855 ys!41))) (list!19041 (right!43185 (left!42855 ys!41)))))))

(declare-fun d!1646820 () Bool)

(assert (=> d!1646820 e!3172870))

(declare-fun c!874116 () Bool)

(assert (=> d!1646820 (= c!874116 ((_ is Nil!58460) (list!19041 xs!286)))))

(assert (=> d!1646820 (= (appendAssoc!316 (list!19041 xs!286) (list!19041 (left!42855 (left!42855 ys!41))) (list!19041 (right!43185 (left!42855 ys!41)))) true)))

(declare-fun bm!354523 () Bool)

(declare-fun call!354527 () List!58584)

(assert (=> bm!354523 (= call!354529 (++!12817 call!354527 (list!19041 (right!43185 (left!42855 ys!41)))))))

(declare-fun b!5087433 () Bool)

(assert (=> b!5087433 (= e!3172870 (= call!354529 call!354526))))

(declare-fun bm!354524 () Bool)

(assert (=> bm!354524 (= call!354527 (++!12817 (list!19041 xs!286) (list!19041 (left!42855 (left!42855 ys!41)))))))

(assert (= (and d!1646820 c!874116) b!5087433))

(assert (= (and d!1646820 (not c!874116)) b!5087432))

(assert (= (or b!5087433 b!5087432) bm!354524))

(assert (= (or b!5087433 b!5087432) bm!354522))

(assert (= (or b!5087433 b!5087432) bm!354521))

(assert (= (or b!5087433 b!5087432) bm!354523))

(assert (=> bm!354522 m!6144234))

(assert (=> bm!354522 m!6144232))

(assert (=> bm!354522 m!6145160))

(assert (=> bm!354521 m!6143938))

(declare-fun m!6145264 () Bool)

(assert (=> bm!354521 m!6145264))

(assert (=> bm!354523 m!6144232))

(declare-fun m!6145266 () Bool)

(assert (=> bm!354523 m!6145266))

(assert (=> b!5087432 m!6144234))

(assert (=> b!5087432 m!6144232))

(declare-fun m!6145268 () Bool)

(assert (=> b!5087432 m!6145268))

(assert (=> bm!354524 m!6143938))

(assert (=> bm!354524 m!6144234))

(assert (=> bm!354524 m!6144236))

(assert (=> b!5086887 d!1646820))

(assert (=> b!5086887 d!1646424))

(assert (=> b!5086887 d!1646764))

(assert (=> b!5086887 d!1646758))

(declare-fun d!1646822 () Bool)

(declare-fun res!2165817 () Bool)

(declare-fun e!3172871 () Bool)

(assert (=> d!1646822 (=> (not res!2165817) (not e!3172871))))

(assert (=> d!1646822 (= res!2165817 (<= (size!39127 (list!19043 (xs!18970 xs!286))) 512))))

(assert (=> d!1646822 (= (inv!77703 xs!286) e!3172871)))

(declare-fun b!5087434 () Bool)

(declare-fun res!2165818 () Bool)

(assert (=> b!5087434 (=> (not res!2165818) (not e!3172871))))

(assert (=> b!5087434 (= res!2165818 (= (csize!31411 xs!286) (size!39127 (list!19043 (xs!18970 xs!286)))))))

(declare-fun b!5087435 () Bool)

(assert (=> b!5087435 (= e!3172871 (and (> (csize!31411 xs!286) 0) (<= (csize!31411 xs!286) 512)))))

(assert (= (and d!1646822 res!2165817) b!5087434))

(assert (= (and b!5087434 res!2165818) b!5087435))

(assert (=> d!1646822 m!6144088))

(assert (=> d!1646822 m!6144088))

(declare-fun m!6145270 () Bool)

(assert (=> d!1646822 m!6145270))

(assert (=> b!5087434 m!6144088))

(assert (=> b!5087434 m!6144088))

(assert (=> b!5087434 m!6145270))

(assert (=> b!5086664 d!1646822))

(declare-fun d!1646824 () Bool)

(declare-fun res!2165819 () Bool)

(declare-fun e!3172872 () Bool)

(assert (=> d!1646824 (=> (not res!2165819) (not e!3172872))))

(assert (=> d!1646824 (= res!2165819 (= (csize!31410 xs!286) (+ (size!39129 (left!42855 xs!286)) (size!39129 (right!43185 xs!286)))))))

(assert (=> d!1646824 (= (inv!77702 xs!286) e!3172872)))

(declare-fun b!5087436 () Bool)

(declare-fun res!2165820 () Bool)

(assert (=> b!5087436 (=> (not res!2165820) (not e!3172872))))

(assert (=> b!5087436 (= res!2165820 (and (not (= (left!42855 xs!286) Empty!15590)) (not (= (right!43185 xs!286) Empty!15590))))))

(declare-fun b!5087437 () Bool)

(declare-fun res!2165821 () Bool)

(assert (=> b!5087437 (=> (not res!2165821) (not e!3172872))))

(assert (=> b!5087437 (= res!2165821 (= (cheight!15801 xs!286) (+ (max!0 (height!2167 (left!42855 xs!286)) (height!2167 (right!43185 xs!286))) 1)))))

(declare-fun b!5087438 () Bool)

(assert (=> b!5087438 (= e!3172872 (<= 0 (cheight!15801 xs!286)))))

(assert (= (and d!1646824 res!2165819) b!5087436))

(assert (= (and b!5087436 res!2165820) b!5087437))

(assert (= (and b!5087437 res!2165821) b!5087438))

(assert (=> d!1646824 m!6145060))

(assert (=> d!1646824 m!6145138))

(assert (=> b!5087437 m!6143976))

(assert (=> b!5087437 m!6143978))

(assert (=> b!5087437 m!6143976))

(assert (=> b!5087437 m!6143978))

(declare-fun m!6145272 () Bool)

(assert (=> b!5087437 m!6145272))

(assert (=> b!5086662 d!1646824))

(declare-fun d!1646826 () Bool)

(declare-fun c!874117 () Bool)

(assert (=> d!1646826 (= c!874117 ((_ is Node!15590) (left!42855 (right!43185 xs!286))))))

(declare-fun e!3172873 () Bool)

(assert (=> d!1646826 (= (inv!77698 (left!42855 (right!43185 xs!286))) e!3172873)))

(declare-fun b!5087439 () Bool)

(assert (=> b!5087439 (= e!3172873 (inv!77702 (left!42855 (right!43185 xs!286))))))

(declare-fun b!5087440 () Bool)

(declare-fun e!3172874 () Bool)

(assert (=> b!5087440 (= e!3172873 e!3172874)))

(declare-fun res!2165822 () Bool)

(assert (=> b!5087440 (= res!2165822 (not ((_ is Leaf!25890) (left!42855 (right!43185 xs!286)))))))

(assert (=> b!5087440 (=> res!2165822 e!3172874)))

(declare-fun b!5087441 () Bool)

(assert (=> b!5087441 (= e!3172874 (inv!77703 (left!42855 (right!43185 xs!286))))))

(assert (= (and d!1646826 c!874117) b!5087439))

(assert (= (and d!1646826 (not c!874117)) b!5087440))

(assert (= (and b!5087440 (not res!2165822)) b!5087441))

(declare-fun m!6145274 () Bool)

(assert (=> b!5087439 m!6145274))

(declare-fun m!6145276 () Bool)

(assert (=> b!5087441 m!6145276))

(assert (=> b!5086926 d!1646826))

(declare-fun d!1646828 () Bool)

(declare-fun c!874118 () Bool)

(assert (=> d!1646828 (= c!874118 ((_ is Node!15590) (right!43185 (right!43185 xs!286))))))

(declare-fun e!3172875 () Bool)

(assert (=> d!1646828 (= (inv!77698 (right!43185 (right!43185 xs!286))) e!3172875)))

(declare-fun b!5087442 () Bool)

(assert (=> b!5087442 (= e!3172875 (inv!77702 (right!43185 (right!43185 xs!286))))))

(declare-fun b!5087443 () Bool)

(declare-fun e!3172876 () Bool)

(assert (=> b!5087443 (= e!3172875 e!3172876)))

(declare-fun res!2165823 () Bool)

(assert (=> b!5087443 (= res!2165823 (not ((_ is Leaf!25890) (right!43185 (right!43185 xs!286)))))))

(assert (=> b!5087443 (=> res!2165823 e!3172876)))

(declare-fun b!5087444 () Bool)

(assert (=> b!5087444 (= e!3172876 (inv!77703 (right!43185 (right!43185 xs!286))))))

(assert (= (and d!1646828 c!874118) b!5087442))

(assert (= (and d!1646828 (not c!874118)) b!5087443))

(assert (= (and b!5087443 (not res!2165823)) b!5087444))

(declare-fun m!6145278 () Bool)

(assert (=> b!5087442 m!6145278))

(declare-fun m!6145280 () Bool)

(assert (=> b!5087444 m!6145280))

(assert (=> b!5086926 d!1646828))

(declare-fun b!5087445 () Bool)

(declare-fun e!3172877 () Bool)

(declare-fun call!354533 () List!58584)

(declare-fun call!354530 () List!58584)

(assert (=> b!5087445 (= e!3172877 (= call!354533 call!354530))))

(declare-fun lt!2091805 () Bool)

(assert (=> b!5087445 (= lt!2091805 (appendAssoc!316 (t!371437 (list!19041 xs!286)) (list!19041 (left!42855 ys!41)) (list!19041 (right!43185 ys!41))))))

(declare-fun bm!354525 () Bool)

(declare-fun call!354532 () List!58584)

(assert (=> bm!354525 (= call!354530 (++!12817 (list!19041 xs!286) call!354532))))

(declare-fun bm!354526 () Bool)

(assert (=> bm!354526 (= call!354532 (++!12817 (list!19041 (left!42855 ys!41)) (list!19041 (right!43185 ys!41))))))

(declare-fun d!1646830 () Bool)

(assert (=> d!1646830 e!3172877))

(declare-fun c!874119 () Bool)

(assert (=> d!1646830 (= c!874119 ((_ is Nil!58460) (list!19041 xs!286)))))

(assert (=> d!1646830 (= (appendAssoc!316 (list!19041 xs!286) (list!19041 (left!42855 ys!41)) (list!19041 (right!43185 ys!41))) true)))

(declare-fun bm!354527 () Bool)

(declare-fun call!354531 () List!58584)

(assert (=> bm!354527 (= call!354533 (++!12817 call!354531 (list!19041 (right!43185 ys!41))))))

(declare-fun b!5087446 () Bool)

(assert (=> b!5087446 (= e!3172877 (= call!354533 call!354530))))

(declare-fun bm!354528 () Bool)

(assert (=> bm!354528 (= call!354531 (++!12817 (list!19041 xs!286) (list!19041 (left!42855 ys!41))))))

(assert (= (and d!1646830 c!874119) b!5087446))

(assert (= (and d!1646830 (not c!874119)) b!5087445))

(assert (= (or b!5087446 b!5087445) bm!354528))

(assert (= (or b!5087446 b!5087445) bm!354526))

(assert (= (or b!5087446 b!5087445) bm!354525))

(assert (= (or b!5087446 b!5087445) bm!354527))

(assert (=> bm!354526 m!6144106))

(assert (=> bm!354526 m!6144108))

(assert (=> bm!354526 m!6144112))

(assert (=> bm!354525 m!6143938))

(declare-fun m!6145282 () Bool)

(assert (=> bm!354525 m!6145282))

(assert (=> bm!354527 m!6144108))

(declare-fun m!6145284 () Bool)

(assert (=> bm!354527 m!6145284))

(assert (=> b!5087445 m!6144106))

(assert (=> b!5087445 m!6144108))

(declare-fun m!6145286 () Bool)

(assert (=> b!5087445 m!6145286))

(assert (=> bm!354528 m!6143938))

(assert (=> bm!354528 m!6144106))

(declare-fun m!6145288 () Bool)

(assert (=> bm!354528 m!6145288))

(assert (=> b!5086883 d!1646830))

(assert (=> b!5086883 d!1646424))

(assert (=> b!5086883 d!1646776))

(assert (=> b!5086883 d!1646756))

(declare-fun b!5087447 () Bool)

(declare-fun e!3172878 () Bool)

(declare-fun tp!1418221 () Bool)

(assert (=> b!5087447 (= e!3172878 (and tp_is_empty!37103 tp!1418221))))

(assert (=> b!5086922 (= tp!1418161 e!3172878)))

(assert (= (and b!5086922 ((_ is Cons!58460) (innerList!15678 (xs!18970 (right!43185 ys!41))))) b!5087447))

(declare-fun tp!1418222 () Bool)

(declare-fun b!5087448 () Bool)

(declare-fun tp!1418224 () Bool)

(declare-fun e!3172880 () Bool)

(assert (=> b!5087448 (= e!3172880 (and (inv!77698 (left!42855 (left!42855 (right!43185 err!4625)))) tp!1418224 (inv!77698 (right!43185 (left!42855 (right!43185 err!4625)))) tp!1418222))))

(declare-fun b!5087450 () Bool)

(declare-fun e!3172879 () Bool)

(declare-fun tp!1418223 () Bool)

(assert (=> b!5087450 (= e!3172879 tp!1418223)))

(declare-fun b!5087449 () Bool)

(assert (=> b!5087449 (= e!3172880 (and (inv!77699 (xs!18970 (left!42855 (right!43185 err!4625)))) e!3172879))))

(assert (=> b!5086932 (= tp!1418174 (and (inv!77698 (left!42855 (right!43185 err!4625))) e!3172880))))

(assert (= (and b!5086932 ((_ is Node!15590) (left!42855 (right!43185 err!4625)))) b!5087448))

(assert (= b!5087449 b!5087450))

(assert (= (and b!5086932 ((_ is Leaf!25890) (left!42855 (right!43185 err!4625)))) b!5087449))

(declare-fun m!6145290 () Bool)

(assert (=> b!5087448 m!6145290))

(declare-fun m!6145292 () Bool)

(assert (=> b!5087448 m!6145292))

(declare-fun m!6145294 () Bool)

(assert (=> b!5087449 m!6145294))

(assert (=> b!5086932 m!6144312))

(declare-fun e!3172882 () Bool)

(declare-fun tp!1418227 () Bool)

(declare-fun b!5087451 () Bool)

(declare-fun tp!1418225 () Bool)

(assert (=> b!5087451 (= e!3172882 (and (inv!77698 (left!42855 (right!43185 (right!43185 err!4625)))) tp!1418227 (inv!77698 (right!43185 (right!43185 (right!43185 err!4625)))) tp!1418225))))

(declare-fun b!5087453 () Bool)

(declare-fun e!3172881 () Bool)

(declare-fun tp!1418226 () Bool)

(assert (=> b!5087453 (= e!3172881 tp!1418226)))

(declare-fun b!5087452 () Bool)

(assert (=> b!5087452 (= e!3172882 (and (inv!77699 (xs!18970 (right!43185 (right!43185 err!4625)))) e!3172881))))

(assert (=> b!5086932 (= tp!1418172 (and (inv!77698 (right!43185 (right!43185 err!4625))) e!3172882))))

(assert (= (and b!5086932 ((_ is Node!15590) (right!43185 (right!43185 err!4625)))) b!5087451))

(assert (= b!5087452 b!5087453))

(assert (= (and b!5086932 ((_ is Leaf!25890) (right!43185 (right!43185 err!4625)))) b!5087452))

(declare-fun m!6145296 () Bool)

(assert (=> b!5087451 m!6145296))

(declare-fun m!6145298 () Bool)

(assert (=> b!5087451 m!6145298))

(declare-fun m!6145300 () Bool)

(assert (=> b!5087452 m!6145300))

(assert (=> b!5086932 m!6144314))

(declare-fun b!5087454 () Bool)

(declare-fun e!3172883 () Bool)

(declare-fun tp!1418228 () Bool)

(assert (=> b!5087454 (= e!3172883 (and tp_is_empty!37103 tp!1418228))))

(assert (=> b!5086908 (= tp!1418150 e!3172883)))

(assert (= (and b!5086908 ((_ is Cons!58460) (t!371437 (innerList!15678 (xs!18970 ys!41))))) b!5087454))

(declare-fun b!5087455 () Bool)

(declare-fun e!3172884 () Bool)

(declare-fun tp!1418229 () Bool)

(assert (=> b!5087455 (= e!3172884 (and tp_is_empty!37103 tp!1418229))))

(assert (=> b!5086931 (= tp!1418170 e!3172884)))

(assert (= (and b!5086931 ((_ is Cons!58460) (innerList!15678 (xs!18970 (left!42855 err!4625))))) b!5087455))

(declare-fun e!3172886 () Bool)

(declare-fun tp!1418230 () Bool)

(declare-fun b!5087456 () Bool)

(declare-fun tp!1418232 () Bool)

(assert (=> b!5087456 (= e!3172886 (and (inv!77698 (left!42855 (left!42855 (left!42855 err!4625)))) tp!1418232 (inv!77698 (right!43185 (left!42855 (left!42855 err!4625)))) tp!1418230))))

(declare-fun b!5087458 () Bool)

(declare-fun e!3172885 () Bool)

(declare-fun tp!1418231 () Bool)

(assert (=> b!5087458 (= e!3172885 tp!1418231)))

(declare-fun b!5087457 () Bool)

(assert (=> b!5087457 (= e!3172886 (and (inv!77699 (xs!18970 (left!42855 (left!42855 err!4625)))) e!3172885))))

(assert (=> b!5086929 (= tp!1418171 (and (inv!77698 (left!42855 (left!42855 err!4625))) e!3172886))))

(assert (= (and b!5086929 ((_ is Node!15590) (left!42855 (left!42855 err!4625)))) b!5087456))

(assert (= b!5087457 b!5087458))

(assert (= (and b!5086929 ((_ is Leaf!25890) (left!42855 (left!42855 err!4625)))) b!5087457))

(declare-fun m!6145302 () Bool)

(assert (=> b!5087456 m!6145302))

(declare-fun m!6145304 () Bool)

(assert (=> b!5087456 m!6145304))

(declare-fun m!6145306 () Bool)

(assert (=> b!5087457 m!6145306))

(assert (=> b!5086929 m!6144306))

(declare-fun tp!1418233 () Bool)

(declare-fun b!5087459 () Bool)

(declare-fun tp!1418235 () Bool)

(declare-fun e!3172888 () Bool)

(assert (=> b!5087459 (= e!3172888 (and (inv!77698 (left!42855 (right!43185 (left!42855 err!4625)))) tp!1418235 (inv!77698 (right!43185 (right!43185 (left!42855 err!4625)))) tp!1418233))))

(declare-fun b!5087461 () Bool)

(declare-fun e!3172887 () Bool)

(declare-fun tp!1418234 () Bool)

(assert (=> b!5087461 (= e!3172887 tp!1418234)))

(declare-fun b!5087460 () Bool)

(assert (=> b!5087460 (= e!3172888 (and (inv!77699 (xs!18970 (right!43185 (left!42855 err!4625)))) e!3172887))))

(assert (=> b!5086929 (= tp!1418169 (and (inv!77698 (right!43185 (left!42855 err!4625))) e!3172888))))

(assert (= (and b!5086929 ((_ is Node!15590) (right!43185 (left!42855 err!4625)))) b!5087459))

(assert (= b!5087460 b!5087461))

(assert (= (and b!5086929 ((_ is Leaf!25890) (right!43185 (left!42855 err!4625)))) b!5087460))

(declare-fun m!6145308 () Bool)

(assert (=> b!5087459 m!6145308))

(declare-fun m!6145310 () Bool)

(assert (=> b!5087459 m!6145310))

(declare-fun m!6145312 () Bool)

(assert (=> b!5087460 m!6145312))

(assert (=> b!5086929 m!6144308))

(declare-fun b!5087462 () Bool)

(declare-fun e!3172890 () Bool)

(declare-fun tp!1418238 () Bool)

(declare-fun tp!1418236 () Bool)

(assert (=> b!5087462 (= e!3172890 (and (inv!77698 (left!42855 (left!42855 (right!43185 ys!41)))) tp!1418238 (inv!77698 (right!43185 (left!42855 (right!43185 ys!41)))) tp!1418236))))

(declare-fun b!5087464 () Bool)

(declare-fun e!3172889 () Bool)

(declare-fun tp!1418237 () Bool)

(assert (=> b!5087464 (= e!3172889 tp!1418237)))

(declare-fun b!5087463 () Bool)

(assert (=> b!5087463 (= e!3172890 (and (inv!77699 (xs!18970 (left!42855 (right!43185 ys!41)))) e!3172889))))

(assert (=> b!5086920 (= tp!1418162 (and (inv!77698 (left!42855 (right!43185 ys!41))) e!3172890))))

(assert (= (and b!5086920 ((_ is Node!15590) (left!42855 (right!43185 ys!41)))) b!5087462))

(assert (= b!5087463 b!5087464))

(assert (= (and b!5086920 ((_ is Leaf!25890) (left!42855 (right!43185 ys!41)))) b!5087463))

(declare-fun m!6145314 () Bool)

(assert (=> b!5087462 m!6145314))

(declare-fun m!6145316 () Bool)

(assert (=> b!5087462 m!6145316))

(declare-fun m!6145318 () Bool)

(assert (=> b!5087463 m!6145318))

(assert (=> b!5086920 m!6144288))

(declare-fun b!5087465 () Bool)

(declare-fun e!3172892 () Bool)

(declare-fun tp!1418241 () Bool)

(declare-fun tp!1418239 () Bool)

(assert (=> b!5087465 (= e!3172892 (and (inv!77698 (left!42855 (right!43185 (right!43185 ys!41)))) tp!1418241 (inv!77698 (right!43185 (right!43185 (right!43185 ys!41)))) tp!1418239))))

(declare-fun b!5087467 () Bool)

(declare-fun e!3172891 () Bool)

(declare-fun tp!1418240 () Bool)

(assert (=> b!5087467 (= e!3172891 tp!1418240)))

(declare-fun b!5087466 () Bool)

(assert (=> b!5087466 (= e!3172892 (and (inv!77699 (xs!18970 (right!43185 (right!43185 ys!41)))) e!3172891))))

(assert (=> b!5086920 (= tp!1418160 (and (inv!77698 (right!43185 (right!43185 ys!41))) e!3172892))))

(assert (= (and b!5086920 ((_ is Node!15590) (right!43185 (right!43185 ys!41)))) b!5087465))

(assert (= b!5087466 b!5087467))

(assert (= (and b!5086920 ((_ is Leaf!25890) (right!43185 (right!43185 ys!41)))) b!5087466))

(declare-fun m!6145320 () Bool)

(assert (=> b!5087465 m!6145320))

(declare-fun m!6145322 () Bool)

(assert (=> b!5087465 m!6145322))

(declare-fun m!6145324 () Bool)

(assert (=> b!5087466 m!6145324))

(assert (=> b!5086920 m!6144290))

(declare-fun b!5087468 () Bool)

(declare-fun e!3172893 () Bool)

(declare-fun tp!1418242 () Bool)

(assert (=> b!5087468 (= e!3172893 (and tp_is_empty!37103 tp!1418242))))

(assert (=> b!5086907 (= tp!1418149 e!3172893)))

(assert (= (and b!5086907 ((_ is Cons!58460) (t!371437 (innerList!15678 (xs!18970 err!4625))))) b!5087468))

(declare-fun b!5087469 () Bool)

(declare-fun e!3172894 () Bool)

(declare-fun tp!1418243 () Bool)

(assert (=> b!5087469 (= e!3172894 (and tp_is_empty!37103 tp!1418243))))

(assert (=> b!5086928 (= tp!1418167 e!3172894)))

(assert (= (and b!5086928 ((_ is Cons!58460) (innerList!15678 (xs!18970 (right!43185 xs!286))))) b!5087469))

(declare-fun b!5087470 () Bool)

(declare-fun e!3172895 () Bool)

(declare-fun tp!1418244 () Bool)

(assert (=> b!5087470 (= e!3172895 (and tp_is_empty!37103 tp!1418244))))

(assert (=> b!5086919 (= tp!1418158 e!3172895)))

(assert (= (and b!5086919 ((_ is Cons!58460) (innerList!15678 (xs!18970 (left!42855 ys!41))))) b!5087470))

(declare-fun e!3172897 () Bool)

(declare-fun tp!1418247 () Bool)

(declare-fun b!5087471 () Bool)

(declare-fun tp!1418245 () Bool)

(assert (=> b!5087471 (= e!3172897 (and (inv!77698 (left!42855 (left!42855 (left!42855 ys!41)))) tp!1418247 (inv!77698 (right!43185 (left!42855 (left!42855 ys!41)))) tp!1418245))))

(declare-fun b!5087473 () Bool)

(declare-fun e!3172896 () Bool)

(declare-fun tp!1418246 () Bool)

(assert (=> b!5087473 (= e!3172896 tp!1418246)))

(declare-fun b!5087472 () Bool)

(assert (=> b!5087472 (= e!3172897 (and (inv!77699 (xs!18970 (left!42855 (left!42855 ys!41)))) e!3172896))))

(assert (=> b!5086917 (= tp!1418159 (and (inv!77698 (left!42855 (left!42855 ys!41))) e!3172897))))

(assert (= (and b!5086917 ((_ is Node!15590) (left!42855 (left!42855 ys!41)))) b!5087471))

(assert (= b!5087472 b!5087473))

(assert (= (and b!5086917 ((_ is Leaf!25890) (left!42855 (left!42855 ys!41)))) b!5087472))

(declare-fun m!6145326 () Bool)

(assert (=> b!5087471 m!6145326))

(declare-fun m!6145328 () Bool)

(assert (=> b!5087471 m!6145328))

(declare-fun m!6145330 () Bool)

(assert (=> b!5087472 m!6145330))

(assert (=> b!5086917 m!6144282))

(declare-fun e!3172899 () Bool)

(declare-fun tp!1418248 () Bool)

(declare-fun b!5087474 () Bool)

(declare-fun tp!1418250 () Bool)

(assert (=> b!5087474 (= e!3172899 (and (inv!77698 (left!42855 (right!43185 (left!42855 ys!41)))) tp!1418250 (inv!77698 (right!43185 (right!43185 (left!42855 ys!41)))) tp!1418248))))

(declare-fun b!5087476 () Bool)

(declare-fun e!3172898 () Bool)

(declare-fun tp!1418249 () Bool)

(assert (=> b!5087476 (= e!3172898 tp!1418249)))

(declare-fun b!5087475 () Bool)

(assert (=> b!5087475 (= e!3172899 (and (inv!77699 (xs!18970 (right!43185 (left!42855 ys!41)))) e!3172898))))

(assert (=> b!5086917 (= tp!1418157 (and (inv!77698 (right!43185 (left!42855 ys!41))) e!3172899))))

(assert (= (and b!5086917 ((_ is Node!15590) (right!43185 (left!42855 ys!41)))) b!5087474))

(assert (= b!5087475 b!5087476))

(assert (= (and b!5086917 ((_ is Leaf!25890) (right!43185 (left!42855 ys!41)))) b!5087475))

(declare-fun m!6145332 () Bool)

(assert (=> b!5087474 m!6145332))

(declare-fun m!6145334 () Bool)

(assert (=> b!5087474 m!6145334))

(declare-fun m!6145336 () Bool)

(assert (=> b!5087475 m!6145336))

(assert (=> b!5086917 m!6144284))

(declare-fun tp!1418253 () Bool)

(declare-fun tp!1418251 () Bool)

(declare-fun e!3172901 () Bool)

(declare-fun b!5087477 () Bool)

(assert (=> b!5087477 (= e!3172901 (and (inv!77698 (left!42855 (left!42855 (right!43185 xs!286)))) tp!1418253 (inv!77698 (right!43185 (left!42855 (right!43185 xs!286)))) tp!1418251))))

(declare-fun b!5087479 () Bool)

(declare-fun e!3172900 () Bool)

(declare-fun tp!1418252 () Bool)

(assert (=> b!5087479 (= e!3172900 tp!1418252)))

(declare-fun b!5087478 () Bool)

(assert (=> b!5087478 (= e!3172901 (and (inv!77699 (xs!18970 (left!42855 (right!43185 xs!286)))) e!3172900))))

(assert (=> b!5086926 (= tp!1418168 (and (inv!77698 (left!42855 (right!43185 xs!286))) e!3172901))))

(assert (= (and b!5086926 ((_ is Node!15590) (left!42855 (right!43185 xs!286)))) b!5087477))

(assert (= b!5087478 b!5087479))

(assert (= (and b!5086926 ((_ is Leaf!25890) (left!42855 (right!43185 xs!286)))) b!5087478))

(declare-fun m!6145338 () Bool)

(assert (=> b!5087477 m!6145338))

(declare-fun m!6145340 () Bool)

(assert (=> b!5087477 m!6145340))

(declare-fun m!6145342 () Bool)

(assert (=> b!5087478 m!6145342))

(assert (=> b!5086926 m!6144300))

(declare-fun b!5087480 () Bool)

(declare-fun tp!1418254 () Bool)

(declare-fun e!3172903 () Bool)

(declare-fun tp!1418256 () Bool)

(assert (=> b!5087480 (= e!3172903 (and (inv!77698 (left!42855 (right!43185 (right!43185 xs!286)))) tp!1418256 (inv!77698 (right!43185 (right!43185 (right!43185 xs!286)))) tp!1418254))))

(declare-fun b!5087482 () Bool)

(declare-fun e!3172902 () Bool)

(declare-fun tp!1418255 () Bool)

(assert (=> b!5087482 (= e!3172902 tp!1418255)))

(declare-fun b!5087481 () Bool)

(assert (=> b!5087481 (= e!3172903 (and (inv!77699 (xs!18970 (right!43185 (right!43185 xs!286)))) e!3172902))))

(assert (=> b!5086926 (= tp!1418166 (and (inv!77698 (right!43185 (right!43185 xs!286))) e!3172903))))

(assert (= (and b!5086926 ((_ is Node!15590) (right!43185 (right!43185 xs!286)))) b!5087480))

(assert (= b!5087481 b!5087482))

(assert (= (and b!5086926 ((_ is Leaf!25890) (right!43185 (right!43185 xs!286)))) b!5087481))

(declare-fun m!6145344 () Bool)

(assert (=> b!5087480 m!6145344))

(declare-fun m!6145346 () Bool)

(assert (=> b!5087480 m!6145346))

(declare-fun m!6145348 () Bool)

(assert (=> b!5087481 m!6145348))

(assert (=> b!5086926 m!6144302))

(declare-fun b!5087483 () Bool)

(declare-fun e!3172904 () Bool)

(declare-fun tp!1418257 () Bool)

(assert (=> b!5087483 (= e!3172904 (and tp_is_empty!37103 tp!1418257))))

(assert (=> b!5086934 (= tp!1418173 e!3172904)))

(assert (= (and b!5086934 ((_ is Cons!58460) (innerList!15678 (xs!18970 (right!43185 err!4625))))) b!5087483))

(declare-fun b!5087484 () Bool)

(declare-fun e!3172905 () Bool)

(declare-fun tp!1418258 () Bool)

(assert (=> b!5087484 (= e!3172905 (and tp_is_empty!37103 tp!1418258))))

(assert (=> b!5086925 (= tp!1418164 e!3172905)))

(assert (= (and b!5086925 ((_ is Cons!58460) (innerList!15678 (xs!18970 (left!42855 xs!286))))) b!5087484))

(declare-fun tp!1418259 () Bool)

(declare-fun tp!1418261 () Bool)

(declare-fun b!5087485 () Bool)

(declare-fun e!3172907 () Bool)

(assert (=> b!5087485 (= e!3172907 (and (inv!77698 (left!42855 (left!42855 (left!42855 xs!286)))) tp!1418261 (inv!77698 (right!43185 (left!42855 (left!42855 xs!286)))) tp!1418259))))

(declare-fun b!5087487 () Bool)

(declare-fun e!3172906 () Bool)

(declare-fun tp!1418260 () Bool)

(assert (=> b!5087487 (= e!3172906 tp!1418260)))

(declare-fun b!5087486 () Bool)

(assert (=> b!5087486 (= e!3172907 (and (inv!77699 (xs!18970 (left!42855 (left!42855 xs!286)))) e!3172906))))

(assert (=> b!5086923 (= tp!1418165 (and (inv!77698 (left!42855 (left!42855 xs!286))) e!3172907))))

(assert (= (and b!5086923 ((_ is Node!15590) (left!42855 (left!42855 xs!286)))) b!5087485))

(assert (= b!5087486 b!5087487))

(assert (= (and b!5086923 ((_ is Leaf!25890) (left!42855 (left!42855 xs!286)))) b!5087486))

(declare-fun m!6145350 () Bool)

(assert (=> b!5087485 m!6145350))

(declare-fun m!6145352 () Bool)

(assert (=> b!5087485 m!6145352))

(declare-fun m!6145354 () Bool)

(assert (=> b!5087486 m!6145354))

(assert (=> b!5086923 m!6144294))

(declare-fun b!5087488 () Bool)

(declare-fun tp!1418264 () Bool)

(declare-fun e!3172909 () Bool)

(declare-fun tp!1418262 () Bool)

(assert (=> b!5087488 (= e!3172909 (and (inv!77698 (left!42855 (right!43185 (left!42855 xs!286)))) tp!1418264 (inv!77698 (right!43185 (right!43185 (left!42855 xs!286)))) tp!1418262))))

(declare-fun b!5087490 () Bool)

(declare-fun e!3172908 () Bool)

(declare-fun tp!1418263 () Bool)

(assert (=> b!5087490 (= e!3172908 tp!1418263)))

(declare-fun b!5087489 () Bool)

(assert (=> b!5087489 (= e!3172909 (and (inv!77699 (xs!18970 (right!43185 (left!42855 xs!286)))) e!3172908))))

(assert (=> b!5086923 (= tp!1418163 (and (inv!77698 (right!43185 (left!42855 xs!286))) e!3172909))))

(assert (= (and b!5086923 ((_ is Node!15590) (right!43185 (left!42855 xs!286)))) b!5087488))

(assert (= b!5087489 b!5087490))

(assert (= (and b!5086923 ((_ is Leaf!25890) (right!43185 (left!42855 xs!286)))) b!5087489))

(declare-fun m!6145356 () Bool)

(assert (=> b!5087488 m!6145356))

(declare-fun m!6145358 () Bool)

(assert (=> b!5087488 m!6145358))

(declare-fun m!6145360 () Bool)

(assert (=> b!5087489 m!6145360))

(assert (=> b!5086923 m!6144296))

(declare-fun b!5087491 () Bool)

(declare-fun e!3172910 () Bool)

(declare-fun tp!1418265 () Bool)

(assert (=> b!5087491 (= e!3172910 (and tp_is_empty!37103 tp!1418265))))

(assert (=> b!5086935 (= tp!1418175 e!3172910)))

(assert (= (and b!5086935 ((_ is Cons!58460) (t!371437 (innerList!15678 (xs!18970 xs!286))))) b!5087491))

(check-sat (not b!5087383) (not b!5087491) (not bm!354491) (not b!5087447) (not b!5087406) (not b!5087145) (not d!1646666) (not b!5087387) (not b!5087357) (not b!5087052) (not b!5087484) (not b!5087385) (not bm!354487) (not b!5087369) (not b!5087352) (not b!5087203) (not d!1646752) (not d!1646762) (not bm!354488) (not b!5087378) (not b!5087386) (not d!1646744) (not b!5087466) (not b!5087472) (not d!1646824) (not b!5087190) (not d!1646790) (not b!5087407) (not b!5087015) (not b!5087429) (not b!5087006) (not d!1646788) (not b!5087139) (not b!5087334) (not bm!354492) (not b!5087482) (not d!1646536) (not b!5087382) (not b!5087033) (not b!5087404) (not b!5087160) (not b!5087344) (not b!5087083) (not bm!354526) (not bm!354517) (not b!5087259) (not b!5087215) (not b!5087014) (not b!5087434) (not b!5087161) (not b!5087162) (not b!5087452) (not b!5087090) (not b!5087421) (not b!5087441) (not b!5087354) (not b!5087050) (not d!1646618) (not b!5087364) (not b!5087222) (not b!5087159) (not b!5087398) (not b!5087463) (not d!1646706) (not b!5087333) (not d!1646576) (not b!5087356) (not b!5087409) (not b!5087088) (not b!5087460) (not d!1646608) (not b!5087470) tp_is_empty!37103 (not b!5087486) (not d!1646780) (not b!5087401) (not b!5087490) (not b!5087358) (not b!5087483) (not b!5087379) (not b!5087405) (not b!5087374) (not bm!354524) (not b!5087419) (not b!5087459) (not d!1646726) (not bm!354514) (not b!5087475) (not b!5087298) (not bm!354519) (not d!1646720) (not b!5087002) (not b!5086926) (not b!5087400) (not b!5087264) (not b!5086932) (not b!5087454) (not b!5087180) (not d!1646822) (not bm!354490) (not d!1646660) (not b!5087448) (not b!5087353) (not d!1646794) (not b!5087474) (not b!5087408) (not b!5087437) (not b!5087085) (not b!5087207) (not b!5087182) (not b!5087183) (not bm!354489) (not b!5087432) (not b!5087465) (not d!1646738) (not b!5086985) (not d!1646770) (not b!5087340) (not b!5087181) (not b!5087005) (not b!5087403) (not b!5087234) (not b!5087431) (not b!5087456) (not b!5086991) (not b!5087477) (not b!5087467) (not bm!354518) (not b!5087388) (not bm!354525) (not d!1646680) (not b!5087461) (not b!5087425) (not b!5087360) (not bm!354485) (not d!1646736) (not b!5087479) (not b!5087458) (not bm!354527) (not b!5086920) (not b!5087488) (not b!5087457) (not bm!354520) (not b!5087393) (not b!5086917) (not bm!354523) (not b!5087275) (not b!5087371) (not b!5087462) (not b!5087384) (not b!5087481) (not b!5087001) (not d!1646700) (not b!5087417) (not b!5087480) (not b!5087133) (not b!5087240) (not d!1646562) (not b!5087284) (not b!5087011) (not b!5087087) (not b!5087423) (not b!5087389) (not d!1646750) (not b!5086982) (not b!5087471) (not b!5086981) (not b!5087487) (not b!5087455) (not d!1646634) (not b!5087442) (not b!5087179) (not b!5087057) (not d!1646772) (not b!5087445) (not d!1646614) (not b!5087485) (not bm!354521) (not b!5087391) (not d!1646730) (not bm!354515) (not bm!354513) (not b!5087158) (not b!5087489) (not b!5087348) (not bm!354486) (not b!5087013) (not b!5086929) (not b!5087368) (not bm!354516) (not b!5087449) (not b!5087478) (not b!5087347) (not b!5087453) (not d!1646748) (not b!5087059) (not b!5087135) (not d!1646774) (not b!5087415) (not b!5087265) (not b!5087359) (not b!5087426) (not b!5087444) (not b!5087476) (not d!1646754) (not d!1646768) (not b!5087451) (not b!5087184) (not b!5087209) (not b!5087464) (not bm!354522) (not b!5087469) (not b!5087355) (not b!5087363) (not b!5087373) (not b!5086923) (not b!5087450) (not b!5087016) (not b!5087341) (not b!5087439) (not b!5087012) (not b!5087468) (not b!5087163) (not b!5086971) (not bm!354528) (not b!5087249) (not d!1646710) (not b!5087315) (not d!1646792) (not b!5087428) (not b!5086986) (not d!1646714) (not b!5087213) (not b!5087396) (not b!5087314) (not b!5087221) (not b!5087473))
(check-sat)
