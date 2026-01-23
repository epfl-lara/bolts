; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534574 () Bool)

(assert start!534574)

(declare-fun b!5054926 () Bool)

(declare-fun res!2152472 () Bool)

(declare-fun e!3155605 () Bool)

(assert (=> b!5054926 (=> (not res!2152472) (not e!3155605))))

(declare-datatypes ((T!104992 0))(
  ( (T!104993 (val!23630 Int)) )
))
(declare-datatypes ((List!58540 0))(
  ( (Nil!58416) (Cons!58416 (h!64864 T!104992) (t!371203 List!58540)) )
))
(declare-datatypes ((IArray!31153 0))(
  ( (IArray!31154 (innerList!15634 List!58540)) )
))
(declare-datatypes ((Conc!15546 0))(
  ( (Node!15546 (left!42789 Conc!15546) (right!43119 Conc!15546) (csize!31322 Int) (cheight!15757 Int)) (Leaf!25824 (xs!18876 IArray!31153) (csize!31323 Int)) (Empty!15546) )
))
(declare-fun ys!41 () Conc!15546)

(declare-fun isBalanced!4408 (Conc!15546) Bool)

(assert (=> b!5054926 (= res!2152472 (isBalanced!4408 ys!41))))

(declare-fun b!5054927 () Bool)

(declare-fun inv!77456 (Conc!15546) Bool)

(assert (=> b!5054927 (= e!3155605 (not (inv!77456 Empty!15546)))))

(declare-fun b!5054928 () Bool)

(declare-fun tp!1412965 () Bool)

(declare-fun tp!1412967 () Bool)

(declare-fun e!3155606 () Bool)

(assert (=> b!5054928 (= e!3155606 (and (inv!77456 (left!42789 ys!41)) tp!1412965 (inv!77456 (right!43119 ys!41)) tp!1412967))))

(declare-fun b!5054929 () Bool)

(declare-fun e!3155604 () Bool)

(declare-fun xs!286 () Conc!15546)

(declare-fun e!3155603 () Bool)

(declare-fun inv!77457 (IArray!31153) Bool)

(assert (=> b!5054929 (= e!3155604 (and (inv!77457 (xs!18876 xs!286)) e!3155603))))

(declare-fun res!2152473 () Bool)

(assert (=> start!534574 (=> (not res!2152473) (not e!3155605))))

(assert (=> start!534574 (= res!2152473 (isBalanced!4408 xs!286))))

(assert (=> start!534574 e!3155605))

(assert (=> start!534574 (and (inv!77456 xs!286) e!3155604)))

(assert (=> start!534574 (and (inv!77456 ys!41) e!3155606)))

(declare-fun b!5054930 () Bool)

(declare-fun e!3155602 () Bool)

(declare-fun tp!1412968 () Bool)

(assert (=> b!5054930 (= e!3155602 tp!1412968)))

(declare-fun tp!1412966 () Bool)

(declare-fun b!5054931 () Bool)

(declare-fun tp!1412964 () Bool)

(assert (=> b!5054931 (= e!3155604 (and (inv!77456 (left!42789 xs!286)) tp!1412966 (inv!77456 (right!43119 xs!286)) tp!1412964))))

(declare-fun b!5054932 () Bool)

(assert (=> b!5054932 (= e!3155606 (and (inv!77457 (xs!18876 ys!41)) e!3155602))))

(declare-fun b!5054933 () Bool)

(declare-fun tp!1412969 () Bool)

(assert (=> b!5054933 (= e!3155603 tp!1412969)))

(assert (= (and start!534574 res!2152473) b!5054926))

(assert (= (and b!5054926 res!2152472) b!5054927))

(get-info :version)

(assert (= (and start!534574 ((_ is Node!15546) xs!286)) b!5054931))

(assert (= b!5054929 b!5054933))

(assert (= (and start!534574 ((_ is Leaf!25824) xs!286)) b!5054929))

(assert (= (and start!534574 ((_ is Node!15546) ys!41)) b!5054928))

(assert (= b!5054932 b!5054930))

(assert (= (and start!534574 ((_ is Leaf!25824) ys!41)) b!5054932))

(declare-fun m!6089412 () Bool)

(assert (=> b!5054932 m!6089412))

(declare-fun m!6089414 () Bool)

(assert (=> b!5054927 m!6089414))

(declare-fun m!6089416 () Bool)

(assert (=> b!5054929 m!6089416))

(declare-fun m!6089418 () Bool)

(assert (=> start!534574 m!6089418))

(declare-fun m!6089420 () Bool)

(assert (=> start!534574 m!6089420))

(declare-fun m!6089422 () Bool)

(assert (=> start!534574 m!6089422))

(declare-fun m!6089424 () Bool)

(assert (=> b!5054926 m!6089424))

(declare-fun m!6089426 () Bool)

(assert (=> b!5054931 m!6089426))

(declare-fun m!6089428 () Bool)

(assert (=> b!5054931 m!6089428))

(declare-fun m!6089430 () Bool)

(assert (=> b!5054928 m!6089430))

(declare-fun m!6089432 () Bool)

(assert (=> b!5054928 m!6089432))

(check-sat (not b!5054928) (not b!5054931) (not b!5054929) (not b!5054933) (not b!5054927) (not b!5054932) (not b!5054926) (not start!534574) (not b!5054930))
(check-sat)
(get-model)

(declare-fun d!1626698 () Bool)

(declare-fun size!39042 (List!58540) Int)

(assert (=> d!1626698 (= (inv!77457 (xs!18876 xs!286)) (<= (size!39042 (innerList!15634 (xs!18876 xs!286))) 2147483647))))

(declare-fun bs!1189354 () Bool)

(assert (= bs!1189354 d!1626698))

(declare-fun m!6089434 () Bool)

(assert (=> bs!1189354 m!6089434))

(assert (=> b!5054929 d!1626698))

(declare-fun b!5054967 () Bool)

(declare-fun res!2152496 () Bool)

(declare-fun e!3155625 () Bool)

(assert (=> b!5054967 (=> (not res!2152496) (not e!3155625))))

(declare-fun height!2122 (Conc!15546) Int)

(assert (=> b!5054967 (= res!2152496 (<= (- (height!2122 (left!42789 xs!286)) (height!2122 (right!43119 xs!286))) 1))))

(declare-fun b!5054968 () Bool)

(declare-fun e!3155626 () Bool)

(assert (=> b!5054968 (= e!3155626 e!3155625)))

(declare-fun res!2152497 () Bool)

(assert (=> b!5054968 (=> (not res!2152497) (not e!3155625))))

(assert (=> b!5054968 (= res!2152497 (<= (- 1) (- (height!2122 (left!42789 xs!286)) (height!2122 (right!43119 xs!286)))))))

(declare-fun b!5054969 () Bool)

(declare-fun res!2152494 () Bool)

(assert (=> b!5054969 (=> (not res!2152494) (not e!3155625))))

(declare-fun isEmpty!31598 (Conc!15546) Bool)

(assert (=> b!5054969 (= res!2152494 (not (isEmpty!31598 (left!42789 xs!286))))))

(declare-fun d!1626702 () Bool)

(declare-fun res!2152498 () Bool)

(assert (=> d!1626702 (=> res!2152498 e!3155626)))

(assert (=> d!1626702 (= res!2152498 (not ((_ is Node!15546) xs!286)))))

(assert (=> d!1626702 (= (isBalanced!4408 xs!286) e!3155626)))

(declare-fun b!5054970 () Bool)

(declare-fun res!2152495 () Bool)

(assert (=> b!5054970 (=> (not res!2152495) (not e!3155625))))

(assert (=> b!5054970 (= res!2152495 (isBalanced!4408 (left!42789 xs!286)))))

(declare-fun b!5054971 () Bool)

(assert (=> b!5054971 (= e!3155625 (not (isEmpty!31598 (right!43119 xs!286))))))

(declare-fun b!5054972 () Bool)

(declare-fun res!2152493 () Bool)

(assert (=> b!5054972 (=> (not res!2152493) (not e!3155625))))

(assert (=> b!5054972 (= res!2152493 (isBalanced!4408 (right!43119 xs!286)))))

(assert (= (and d!1626702 (not res!2152498)) b!5054968))

(assert (= (and b!5054968 res!2152497) b!5054967))

(assert (= (and b!5054967 res!2152496) b!5054970))

(assert (= (and b!5054970 res!2152495) b!5054972))

(assert (= (and b!5054972 res!2152493) b!5054969))

(assert (= (and b!5054969 res!2152494) b!5054971))

(declare-fun m!6089460 () Bool)

(assert (=> b!5054971 m!6089460))

(declare-fun m!6089462 () Bool)

(assert (=> b!5054972 m!6089462))

(declare-fun m!6089464 () Bool)

(assert (=> b!5054969 m!6089464))

(declare-fun m!6089466 () Bool)

(assert (=> b!5054968 m!6089466))

(declare-fun m!6089468 () Bool)

(assert (=> b!5054968 m!6089468))

(assert (=> b!5054967 m!6089466))

(assert (=> b!5054967 m!6089468))

(declare-fun m!6089470 () Bool)

(assert (=> b!5054970 m!6089470))

(assert (=> start!534574 d!1626702))

(declare-fun d!1626718 () Bool)

(declare-fun c!867265 () Bool)

(assert (=> d!1626718 (= c!867265 ((_ is Node!15546) xs!286))))

(declare-fun e!3155635 () Bool)

(assert (=> d!1626718 (= (inv!77456 xs!286) e!3155635)))

(declare-fun b!5054991 () Bool)

(declare-fun inv!77460 (Conc!15546) Bool)

(assert (=> b!5054991 (= e!3155635 (inv!77460 xs!286))))

(declare-fun b!5054992 () Bool)

(declare-fun e!3155636 () Bool)

(assert (=> b!5054992 (= e!3155635 e!3155636)))

(declare-fun res!2152513 () Bool)

(assert (=> b!5054992 (= res!2152513 (not ((_ is Leaf!25824) xs!286)))))

(assert (=> b!5054992 (=> res!2152513 e!3155636)))

(declare-fun b!5054993 () Bool)

(declare-fun inv!77461 (Conc!15546) Bool)

(assert (=> b!5054993 (= e!3155636 (inv!77461 xs!286))))

(assert (= (and d!1626718 c!867265) b!5054991))

(assert (= (and d!1626718 (not c!867265)) b!5054992))

(assert (= (and b!5054992 (not res!2152513)) b!5054993))

(declare-fun m!6089472 () Bool)

(assert (=> b!5054991 m!6089472))

(declare-fun m!6089474 () Bool)

(assert (=> b!5054993 m!6089474))

(assert (=> start!534574 d!1626718))

(declare-fun d!1626720 () Bool)

(declare-fun c!867266 () Bool)

(assert (=> d!1626720 (= c!867266 ((_ is Node!15546) ys!41))))

(declare-fun e!3155637 () Bool)

(assert (=> d!1626720 (= (inv!77456 ys!41) e!3155637)))

(declare-fun b!5054994 () Bool)

(assert (=> b!5054994 (= e!3155637 (inv!77460 ys!41))))

(declare-fun b!5054995 () Bool)

(declare-fun e!3155638 () Bool)

(assert (=> b!5054995 (= e!3155637 e!3155638)))

(declare-fun res!2152514 () Bool)

(assert (=> b!5054995 (= res!2152514 (not ((_ is Leaf!25824) ys!41)))))

(assert (=> b!5054995 (=> res!2152514 e!3155638)))

(declare-fun b!5054996 () Bool)

(assert (=> b!5054996 (= e!3155638 (inv!77461 ys!41))))

(assert (= (and d!1626720 c!867266) b!5054994))

(assert (= (and d!1626720 (not c!867266)) b!5054995))

(assert (= (and b!5054995 (not res!2152514)) b!5054996))

(declare-fun m!6089476 () Bool)

(assert (=> b!5054994 m!6089476))

(declare-fun m!6089478 () Bool)

(assert (=> b!5054996 m!6089478))

(assert (=> start!534574 d!1626720))

(declare-fun d!1626722 () Bool)

(declare-fun c!867267 () Bool)

(assert (=> d!1626722 (= c!867267 ((_ is Node!15546) (left!42789 ys!41)))))

(declare-fun e!3155639 () Bool)

(assert (=> d!1626722 (= (inv!77456 (left!42789 ys!41)) e!3155639)))

(declare-fun b!5054997 () Bool)

(assert (=> b!5054997 (= e!3155639 (inv!77460 (left!42789 ys!41)))))

(declare-fun b!5054998 () Bool)

(declare-fun e!3155640 () Bool)

(assert (=> b!5054998 (= e!3155639 e!3155640)))

(declare-fun res!2152515 () Bool)

(assert (=> b!5054998 (= res!2152515 (not ((_ is Leaf!25824) (left!42789 ys!41))))))

(assert (=> b!5054998 (=> res!2152515 e!3155640)))

(declare-fun b!5054999 () Bool)

(assert (=> b!5054999 (= e!3155640 (inv!77461 (left!42789 ys!41)))))

(assert (= (and d!1626722 c!867267) b!5054997))

(assert (= (and d!1626722 (not c!867267)) b!5054998))

(assert (= (and b!5054998 (not res!2152515)) b!5054999))

(declare-fun m!6089480 () Bool)

(assert (=> b!5054997 m!6089480))

(declare-fun m!6089482 () Bool)

(assert (=> b!5054999 m!6089482))

(assert (=> b!5054928 d!1626722))

(declare-fun d!1626724 () Bool)

(declare-fun c!867268 () Bool)

(assert (=> d!1626724 (= c!867268 ((_ is Node!15546) (right!43119 ys!41)))))

(declare-fun e!3155641 () Bool)

(assert (=> d!1626724 (= (inv!77456 (right!43119 ys!41)) e!3155641)))

(declare-fun b!5055000 () Bool)

(assert (=> b!5055000 (= e!3155641 (inv!77460 (right!43119 ys!41)))))

(declare-fun b!5055001 () Bool)

(declare-fun e!3155642 () Bool)

(assert (=> b!5055001 (= e!3155641 e!3155642)))

(declare-fun res!2152516 () Bool)

(assert (=> b!5055001 (= res!2152516 (not ((_ is Leaf!25824) (right!43119 ys!41))))))

(assert (=> b!5055001 (=> res!2152516 e!3155642)))

(declare-fun b!5055002 () Bool)

(assert (=> b!5055002 (= e!3155642 (inv!77461 (right!43119 ys!41)))))

(assert (= (and d!1626724 c!867268) b!5055000))

(assert (= (and d!1626724 (not c!867268)) b!5055001))

(assert (= (and b!5055001 (not res!2152516)) b!5055002))

(declare-fun m!6089484 () Bool)

(assert (=> b!5055000 m!6089484))

(declare-fun m!6089486 () Bool)

(assert (=> b!5055002 m!6089486))

(assert (=> b!5054928 d!1626724))

(declare-fun d!1626726 () Bool)

(declare-fun c!867269 () Bool)

(assert (=> d!1626726 (= c!867269 ((_ is Node!15546) Empty!15546))))

(declare-fun e!3155643 () Bool)

(assert (=> d!1626726 (= (inv!77456 Empty!15546) e!3155643)))

(declare-fun b!5055003 () Bool)

(assert (=> b!5055003 (= e!3155643 (inv!77460 Empty!15546))))

(declare-fun b!5055004 () Bool)

(declare-fun e!3155644 () Bool)

(assert (=> b!5055004 (= e!3155643 e!3155644)))

(declare-fun res!2152517 () Bool)

(assert (=> b!5055004 (= res!2152517 (not ((_ is Leaf!25824) Empty!15546)))))

(assert (=> b!5055004 (=> res!2152517 e!3155644)))

(declare-fun b!5055005 () Bool)

(assert (=> b!5055005 (= e!3155644 (inv!77461 Empty!15546))))

(assert (= (and d!1626726 c!867269) b!5055003))

(assert (= (and d!1626726 (not c!867269)) b!5055004))

(assert (= (and b!5055004 (not res!2152517)) b!5055005))

(declare-fun m!6089488 () Bool)

(assert (=> b!5055003 m!6089488))

(declare-fun m!6089490 () Bool)

(assert (=> b!5055005 m!6089490))

(assert (=> b!5054927 d!1626726))

(declare-fun d!1626728 () Bool)

(assert (=> d!1626728 (= (inv!77457 (xs!18876 ys!41)) (<= (size!39042 (innerList!15634 (xs!18876 ys!41))) 2147483647))))

(declare-fun bs!1189357 () Bool)

(assert (= bs!1189357 d!1626728))

(declare-fun m!6089492 () Bool)

(assert (=> bs!1189357 m!6089492))

(assert (=> b!5054932 d!1626728))

(declare-fun d!1626730 () Bool)

(declare-fun c!867270 () Bool)

(assert (=> d!1626730 (= c!867270 ((_ is Node!15546) (left!42789 xs!286)))))

(declare-fun e!3155645 () Bool)

(assert (=> d!1626730 (= (inv!77456 (left!42789 xs!286)) e!3155645)))

(declare-fun b!5055006 () Bool)

(assert (=> b!5055006 (= e!3155645 (inv!77460 (left!42789 xs!286)))))

(declare-fun b!5055007 () Bool)

(declare-fun e!3155646 () Bool)

(assert (=> b!5055007 (= e!3155645 e!3155646)))

(declare-fun res!2152518 () Bool)

(assert (=> b!5055007 (= res!2152518 (not ((_ is Leaf!25824) (left!42789 xs!286))))))

(assert (=> b!5055007 (=> res!2152518 e!3155646)))

(declare-fun b!5055008 () Bool)

(assert (=> b!5055008 (= e!3155646 (inv!77461 (left!42789 xs!286)))))

(assert (= (and d!1626730 c!867270) b!5055006))

(assert (= (and d!1626730 (not c!867270)) b!5055007))

(assert (= (and b!5055007 (not res!2152518)) b!5055008))

(declare-fun m!6089494 () Bool)

(assert (=> b!5055006 m!6089494))

(declare-fun m!6089496 () Bool)

(assert (=> b!5055008 m!6089496))

(assert (=> b!5054931 d!1626730))

(declare-fun d!1626732 () Bool)

(declare-fun c!867271 () Bool)

(assert (=> d!1626732 (= c!867271 ((_ is Node!15546) (right!43119 xs!286)))))

(declare-fun e!3155649 () Bool)

(assert (=> d!1626732 (= (inv!77456 (right!43119 xs!286)) e!3155649)))

(declare-fun b!5055015 () Bool)

(assert (=> b!5055015 (= e!3155649 (inv!77460 (right!43119 xs!286)))))

(declare-fun b!5055016 () Bool)

(declare-fun e!3155650 () Bool)

(assert (=> b!5055016 (= e!3155649 e!3155650)))

(declare-fun res!2152525 () Bool)

(assert (=> b!5055016 (= res!2152525 (not ((_ is Leaf!25824) (right!43119 xs!286))))))

(assert (=> b!5055016 (=> res!2152525 e!3155650)))

(declare-fun b!5055017 () Bool)

(assert (=> b!5055017 (= e!3155650 (inv!77461 (right!43119 xs!286)))))

(assert (= (and d!1626732 c!867271) b!5055015))

(assert (= (and d!1626732 (not c!867271)) b!5055016))

(assert (= (and b!5055016 (not res!2152525)) b!5055017))

(declare-fun m!6089498 () Bool)

(assert (=> b!5055015 m!6089498))

(declare-fun m!6089500 () Bool)

(assert (=> b!5055017 m!6089500))

(assert (=> b!5054931 d!1626732))

(declare-fun b!5055018 () Bool)

(declare-fun res!2152529 () Bool)

(declare-fun e!3155651 () Bool)

(assert (=> b!5055018 (=> (not res!2152529) (not e!3155651))))

(assert (=> b!5055018 (= res!2152529 (<= (- (height!2122 (left!42789 ys!41)) (height!2122 (right!43119 ys!41))) 1))))

(declare-fun b!5055019 () Bool)

(declare-fun e!3155652 () Bool)

(assert (=> b!5055019 (= e!3155652 e!3155651)))

(declare-fun res!2152530 () Bool)

(assert (=> b!5055019 (=> (not res!2152530) (not e!3155651))))

(assert (=> b!5055019 (= res!2152530 (<= (- 1) (- (height!2122 (left!42789 ys!41)) (height!2122 (right!43119 ys!41)))))))

(declare-fun b!5055020 () Bool)

(declare-fun res!2152527 () Bool)

(assert (=> b!5055020 (=> (not res!2152527) (not e!3155651))))

(assert (=> b!5055020 (= res!2152527 (not (isEmpty!31598 (left!42789 ys!41))))))

(declare-fun d!1626734 () Bool)

(declare-fun res!2152531 () Bool)

(assert (=> d!1626734 (=> res!2152531 e!3155652)))

(assert (=> d!1626734 (= res!2152531 (not ((_ is Node!15546) ys!41)))))

(assert (=> d!1626734 (= (isBalanced!4408 ys!41) e!3155652)))

(declare-fun b!5055021 () Bool)

(declare-fun res!2152528 () Bool)

(assert (=> b!5055021 (=> (not res!2152528) (not e!3155651))))

(assert (=> b!5055021 (= res!2152528 (isBalanced!4408 (left!42789 ys!41)))))

(declare-fun b!5055022 () Bool)

(assert (=> b!5055022 (= e!3155651 (not (isEmpty!31598 (right!43119 ys!41))))))

(declare-fun b!5055023 () Bool)

(declare-fun res!2152526 () Bool)

(assert (=> b!5055023 (=> (not res!2152526) (not e!3155651))))

(assert (=> b!5055023 (= res!2152526 (isBalanced!4408 (right!43119 ys!41)))))

(assert (= (and d!1626734 (not res!2152531)) b!5055019))

(assert (= (and b!5055019 res!2152530) b!5055018))

(assert (= (and b!5055018 res!2152529) b!5055021))

(assert (= (and b!5055021 res!2152528) b!5055023))

(assert (= (and b!5055023 res!2152526) b!5055020))

(assert (= (and b!5055020 res!2152527) b!5055022))

(declare-fun m!6089514 () Bool)

(assert (=> b!5055022 m!6089514))

(declare-fun m!6089516 () Bool)

(assert (=> b!5055023 m!6089516))

(declare-fun m!6089518 () Bool)

(assert (=> b!5055020 m!6089518))

(declare-fun m!6089520 () Bool)

(assert (=> b!5055019 m!6089520))

(declare-fun m!6089522 () Bool)

(assert (=> b!5055019 m!6089522))

(assert (=> b!5055018 m!6089520))

(assert (=> b!5055018 m!6089522))

(declare-fun m!6089524 () Bool)

(assert (=> b!5055021 m!6089524))

(assert (=> b!5054926 d!1626734))

(declare-fun b!5055040 () Bool)

(declare-fun e!3155661 () Bool)

(declare-fun tp_is_empty!37013 () Bool)

(declare-fun tp!1412972 () Bool)

(assert (=> b!5055040 (= e!3155661 (and tp_is_empty!37013 tp!1412972))))

(assert (=> b!5054933 (= tp!1412969 e!3155661)))

(assert (= (and b!5054933 ((_ is Cons!58416) (innerList!15634 (xs!18876 xs!286)))) b!5055040))

(declare-fun e!3155674 () Bool)

(declare-fun tp!1412991 () Bool)

(declare-fun b!5055063 () Bool)

(declare-fun tp!1412989 () Bool)

(assert (=> b!5055063 (= e!3155674 (and (inv!77456 (left!42789 (left!42789 ys!41))) tp!1412991 (inv!77456 (right!43119 (left!42789 ys!41))) tp!1412989))))

(declare-fun b!5055065 () Bool)

(declare-fun e!3155675 () Bool)

(declare-fun tp!1412990 () Bool)

(assert (=> b!5055065 (= e!3155675 tp!1412990)))

(declare-fun b!5055064 () Bool)

(assert (=> b!5055064 (= e!3155674 (and (inv!77457 (xs!18876 (left!42789 ys!41))) e!3155675))))

(assert (=> b!5054928 (= tp!1412965 (and (inv!77456 (left!42789 ys!41)) e!3155674))))

(assert (= (and b!5054928 ((_ is Node!15546) (left!42789 ys!41))) b!5055063))

(assert (= b!5055064 b!5055065))

(assert (= (and b!5054928 ((_ is Leaf!25824) (left!42789 ys!41))) b!5055064))

(declare-fun m!6089546 () Bool)

(assert (=> b!5055063 m!6089546))

(declare-fun m!6089548 () Bool)

(assert (=> b!5055063 m!6089548))

(declare-fun m!6089550 () Bool)

(assert (=> b!5055064 m!6089550))

(assert (=> b!5054928 m!6089430))

(declare-fun e!3155676 () Bool)

(declare-fun b!5055066 () Bool)

(declare-fun tp!1412994 () Bool)

(declare-fun tp!1412992 () Bool)

(assert (=> b!5055066 (= e!3155676 (and (inv!77456 (left!42789 (right!43119 ys!41))) tp!1412994 (inv!77456 (right!43119 (right!43119 ys!41))) tp!1412992))))

(declare-fun b!5055068 () Bool)

(declare-fun e!3155677 () Bool)

(declare-fun tp!1412993 () Bool)

(assert (=> b!5055068 (= e!3155677 tp!1412993)))

(declare-fun b!5055067 () Bool)

(assert (=> b!5055067 (= e!3155676 (and (inv!77457 (xs!18876 (right!43119 ys!41))) e!3155677))))

(assert (=> b!5054928 (= tp!1412967 (and (inv!77456 (right!43119 ys!41)) e!3155676))))

(assert (= (and b!5054928 ((_ is Node!15546) (right!43119 ys!41))) b!5055066))

(assert (= b!5055067 b!5055068))

(assert (= (and b!5054928 ((_ is Leaf!25824) (right!43119 ys!41))) b!5055067))

(declare-fun m!6089552 () Bool)

(assert (=> b!5055066 m!6089552))

(declare-fun m!6089554 () Bool)

(assert (=> b!5055066 m!6089554))

(declare-fun m!6089556 () Bool)

(assert (=> b!5055067 m!6089556))

(assert (=> b!5054928 m!6089432))

(declare-fun b!5055069 () Bool)

(declare-fun tp!1412995 () Bool)

(declare-fun tp!1412997 () Bool)

(declare-fun e!3155678 () Bool)

(assert (=> b!5055069 (= e!3155678 (and (inv!77456 (left!42789 (left!42789 xs!286))) tp!1412997 (inv!77456 (right!43119 (left!42789 xs!286))) tp!1412995))))

(declare-fun b!5055071 () Bool)

(declare-fun e!3155679 () Bool)

(declare-fun tp!1412996 () Bool)

(assert (=> b!5055071 (= e!3155679 tp!1412996)))

(declare-fun b!5055070 () Bool)

(assert (=> b!5055070 (= e!3155678 (and (inv!77457 (xs!18876 (left!42789 xs!286))) e!3155679))))

(assert (=> b!5054931 (= tp!1412966 (and (inv!77456 (left!42789 xs!286)) e!3155678))))

(assert (= (and b!5054931 ((_ is Node!15546) (left!42789 xs!286))) b!5055069))

(assert (= b!5055070 b!5055071))

(assert (= (and b!5054931 ((_ is Leaf!25824) (left!42789 xs!286))) b!5055070))

(declare-fun m!6089558 () Bool)

(assert (=> b!5055069 m!6089558))

(declare-fun m!6089560 () Bool)

(assert (=> b!5055069 m!6089560))

(declare-fun m!6089562 () Bool)

(assert (=> b!5055070 m!6089562))

(assert (=> b!5054931 m!6089426))

(declare-fun tp!1413001 () Bool)

(declare-fun e!3155682 () Bool)

(declare-fun tp!1413003 () Bool)

(declare-fun b!5055075 () Bool)

(assert (=> b!5055075 (= e!3155682 (and (inv!77456 (left!42789 (right!43119 xs!286))) tp!1413003 (inv!77456 (right!43119 (right!43119 xs!286))) tp!1413001))))

(declare-fun b!5055077 () Bool)

(declare-fun e!3155683 () Bool)

(declare-fun tp!1413002 () Bool)

(assert (=> b!5055077 (= e!3155683 tp!1413002)))

(declare-fun b!5055076 () Bool)

(assert (=> b!5055076 (= e!3155682 (and (inv!77457 (xs!18876 (right!43119 xs!286))) e!3155683))))

(assert (=> b!5054931 (= tp!1412964 (and (inv!77456 (right!43119 xs!286)) e!3155682))))

(assert (= (and b!5054931 ((_ is Node!15546) (right!43119 xs!286))) b!5055075))

(assert (= b!5055076 b!5055077))

(assert (= (and b!5054931 ((_ is Leaf!25824) (right!43119 xs!286))) b!5055076))

(declare-fun m!6089564 () Bool)

(assert (=> b!5055075 m!6089564))

(declare-fun m!6089568 () Bool)

(assert (=> b!5055075 m!6089568))

(declare-fun m!6089570 () Bool)

(assert (=> b!5055076 m!6089570))

(assert (=> b!5054931 m!6089428))

(declare-fun b!5055078 () Bool)

(declare-fun e!3155684 () Bool)

(declare-fun tp!1413004 () Bool)

(assert (=> b!5055078 (= e!3155684 (and tp_is_empty!37013 tp!1413004))))

(assert (=> b!5054930 (= tp!1412968 e!3155684)))

(assert (= (and b!5054930 ((_ is Cons!58416) (innerList!15634 (xs!18876 ys!41)))) b!5055078))

(check-sat (not b!5055075) (not b!5055000) (not b!5054991) (not b!5054999) tp_is_empty!37013 (not b!5055070) (not b!5054969) (not b!5054996) (not b!5055018) (not b!5054972) (not d!1626728) (not b!5055015) (not b!5054968) (not b!5055064) (not b!5055017) (not b!5055063) (not b!5055021) (not b!5055006) (not b!5054994) (not b!5055008) (not b!5054967) (not b!5055003) (not b!5054928) (not b!5054970) (not b!5055069) (not b!5055002) (not b!5054931) (not b!5055076) (not b!5055067) (not b!5054993) (not b!5055065) (not b!5054997) (not b!5055005) (not b!5054971) (not d!1626698) (not b!5055077) (not b!5055066) (not b!5055019) (not b!5055040) (not b!5055023) (not b!5055020) (not b!5055078) (not b!5055068) (not b!5055071) (not b!5055022))
(check-sat)
