; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534550 () Bool)

(assert start!534550)

(declare-fun b!5054730 () Bool)

(declare-fun e!3155495 () Bool)

(declare-datatypes ((T!104978 0))(
  ( (T!104979 (val!23628 Int)) )
))
(declare-datatypes ((List!58538 0))(
  ( (Nil!58414) (Cons!58414 (h!64862 T!104978) (t!371197 List!58538)) )
))
(declare-datatypes ((IArray!31149 0))(
  ( (IArray!31150 (innerList!15632 List!58538)) )
))
(declare-datatypes ((Conc!15544 0))(
  ( (Node!15544 (left!42786 Conc!15544) (right!43116 Conc!15544) (csize!31318 Int) (cheight!15755 Int)) (Leaf!25821 (xs!18874 IArray!31149) (csize!31319 Int)) (Empty!15544) )
))
(declare-fun xs!286 () Conc!15544)

(declare-fun e!3155492 () Bool)

(declare-fun inv!77445 (IArray!31149) Bool)

(assert (=> b!5054730 (= e!3155495 (and (inv!77445 (xs!18874 xs!286)) e!3155492))))

(declare-fun b!5054731 () Bool)

(declare-fun e!3155493 () Bool)

(declare-fun ys!41 () Conc!15544)

(declare-fun e!3155496 () Bool)

(assert (=> b!5054731 (= e!3155493 (and (inv!77445 (xs!18874 ys!41)) e!3155496))))

(declare-fun res!2152396 () Bool)

(declare-fun e!3155494 () Bool)

(assert (=> start!534550 (=> (not res!2152396) (not e!3155494))))

(declare-fun isBalanced!4406 (Conc!15544) Bool)

(assert (=> start!534550 (= res!2152396 (isBalanced!4406 xs!286))))

(assert (=> start!534550 e!3155494))

(declare-fun inv!77446 (Conc!15544) Bool)

(assert (=> start!534550 (and (inv!77446 xs!286) e!3155495)))

(assert (=> start!534550 (and (inv!77446 ys!41) e!3155493)))

(declare-fun b!5054732 () Bool)

(declare-fun abs!0 (Int) Int)

(declare-fun height!2121 (Conc!15544) Int)

(assert (=> b!5054732 (= e!3155494 (< (abs!0 (- (height!2121 xs!286) (height!2121 ys!41))) 0))))

(declare-fun b!5054733 () Bool)

(declare-fun res!2152397 () Bool)

(assert (=> b!5054733 (=> (not res!2152397) (not e!3155494))))

(assert (=> b!5054733 (= res!2152397 (isBalanced!4406 ys!41))))

(declare-fun tp!1412888 () Bool)

(declare-fun b!5054734 () Bool)

(declare-fun tp!1412887 () Bool)

(assert (=> b!5054734 (= e!3155493 (and (inv!77446 (left!42786 ys!41)) tp!1412888 (inv!77446 (right!43116 ys!41)) tp!1412887))))

(declare-fun tp!1412889 () Bool)

(declare-fun b!5054735 () Bool)

(declare-fun tp!1412886 () Bool)

(assert (=> b!5054735 (= e!3155495 (and (inv!77446 (left!42786 xs!286)) tp!1412889 (inv!77446 (right!43116 xs!286)) tp!1412886))))

(declare-fun b!5054736 () Bool)

(declare-fun tp!1412885 () Bool)

(assert (=> b!5054736 (= e!3155496 tp!1412885)))

(declare-fun b!5054737 () Bool)

(declare-fun tp!1412884 () Bool)

(assert (=> b!5054737 (= e!3155492 tp!1412884)))

(assert (= (and start!534550 res!2152396) b!5054733))

(assert (= (and b!5054733 res!2152397) b!5054732))

(get-info :version)

(assert (= (and start!534550 ((_ is Node!15544) xs!286)) b!5054735))

(assert (= b!5054730 b!5054737))

(assert (= (and start!534550 ((_ is Leaf!25821) xs!286)) b!5054730))

(assert (= (and start!534550 ((_ is Node!15544) ys!41)) b!5054734))

(assert (= b!5054731 b!5054736))

(assert (= (and start!534550 ((_ is Leaf!25821) ys!41)) b!5054731))

(declare-fun m!6089212 () Bool)

(assert (=> b!5054731 m!6089212))

(declare-fun m!6089214 () Bool)

(assert (=> start!534550 m!6089214))

(declare-fun m!6089216 () Bool)

(assert (=> start!534550 m!6089216))

(declare-fun m!6089218 () Bool)

(assert (=> start!534550 m!6089218))

(declare-fun m!6089220 () Bool)

(assert (=> b!5054732 m!6089220))

(declare-fun m!6089222 () Bool)

(assert (=> b!5054732 m!6089222))

(declare-fun m!6089224 () Bool)

(assert (=> b!5054732 m!6089224))

(declare-fun m!6089226 () Bool)

(assert (=> b!5054733 m!6089226))

(declare-fun m!6089228 () Bool)

(assert (=> b!5054735 m!6089228))

(declare-fun m!6089230 () Bool)

(assert (=> b!5054735 m!6089230))

(declare-fun m!6089232 () Bool)

(assert (=> b!5054730 m!6089232))

(declare-fun m!6089234 () Bool)

(assert (=> b!5054734 m!6089234))

(declare-fun m!6089236 () Bool)

(assert (=> b!5054734 m!6089236))

(check-sat (not start!534550) (not b!5054734) (not b!5054737) (not b!5054733) (not b!5054736) (not b!5054735) (not b!5054731) (not b!5054730) (not b!5054732))
(check-sat)
(get-model)

(declare-fun b!5054750 () Bool)

(declare-fun e!3155502 () Bool)

(declare-fun isEmpty!31596 (Conc!15544) Bool)

(assert (=> b!5054750 (= e!3155502 (not (isEmpty!31596 (right!43116 ys!41))))))

(declare-fun b!5054751 () Bool)

(declare-fun res!2152415 () Bool)

(assert (=> b!5054751 (=> (not res!2152415) (not e!3155502))))

(assert (=> b!5054751 (= res!2152415 (isBalanced!4406 (left!42786 ys!41)))))

(declare-fun b!5054752 () Bool)

(declare-fun res!2152413 () Bool)

(assert (=> b!5054752 (=> (not res!2152413) (not e!3155502))))

(assert (=> b!5054752 (= res!2152413 (isBalanced!4406 (right!43116 ys!41)))))

(declare-fun b!5054754 () Bool)

(declare-fun res!2152411 () Bool)

(assert (=> b!5054754 (=> (not res!2152411) (not e!3155502))))

(assert (=> b!5054754 (= res!2152411 (<= (- (height!2121 (left!42786 ys!41)) (height!2121 (right!43116 ys!41))) 1))))

(declare-fun b!5054755 () Bool)

(declare-fun e!3155501 () Bool)

(assert (=> b!5054755 (= e!3155501 e!3155502)))

(declare-fun res!2152412 () Bool)

(assert (=> b!5054755 (=> (not res!2152412) (not e!3155502))))

(assert (=> b!5054755 (= res!2152412 (<= (- 1) (- (height!2121 (left!42786 ys!41)) (height!2121 (right!43116 ys!41)))))))

(declare-fun d!1626645 () Bool)

(declare-fun res!2152410 () Bool)

(assert (=> d!1626645 (=> res!2152410 e!3155501)))

(assert (=> d!1626645 (= res!2152410 (not ((_ is Node!15544) ys!41)))))

(assert (=> d!1626645 (= (isBalanced!4406 ys!41) e!3155501)))

(declare-fun b!5054753 () Bool)

(declare-fun res!2152414 () Bool)

(assert (=> b!5054753 (=> (not res!2152414) (not e!3155502))))

(assert (=> b!5054753 (= res!2152414 (not (isEmpty!31596 (left!42786 ys!41))))))

(assert (= (and d!1626645 (not res!2152410)) b!5054755))

(assert (= (and b!5054755 res!2152412) b!5054754))

(assert (= (and b!5054754 res!2152411) b!5054751))

(assert (= (and b!5054751 res!2152415) b!5054752))

(assert (= (and b!5054752 res!2152413) b!5054753))

(assert (= (and b!5054753 res!2152414) b!5054750))

(declare-fun m!6089242 () Bool)

(assert (=> b!5054755 m!6089242))

(declare-fun m!6089244 () Bool)

(assert (=> b!5054755 m!6089244))

(declare-fun m!6089246 () Bool)

(assert (=> b!5054752 m!6089246))

(declare-fun m!6089248 () Bool)

(assert (=> b!5054750 m!6089248))

(assert (=> b!5054754 m!6089242))

(assert (=> b!5054754 m!6089244))

(declare-fun m!6089250 () Bool)

(assert (=> b!5054753 m!6089250))

(declare-fun m!6089252 () Bool)

(assert (=> b!5054751 m!6089252))

(assert (=> b!5054733 d!1626645))

(declare-fun b!5054768 () Bool)

(declare-fun e!3155508 () Bool)

(assert (=> b!5054768 (= e!3155508 (not (isEmpty!31596 (right!43116 xs!286))))))

(declare-fun b!5054769 () Bool)

(declare-fun res!2152433 () Bool)

(assert (=> b!5054769 (=> (not res!2152433) (not e!3155508))))

(assert (=> b!5054769 (= res!2152433 (isBalanced!4406 (left!42786 xs!286)))))

(declare-fun b!5054770 () Bool)

(declare-fun res!2152431 () Bool)

(assert (=> b!5054770 (=> (not res!2152431) (not e!3155508))))

(assert (=> b!5054770 (= res!2152431 (isBalanced!4406 (right!43116 xs!286)))))

(declare-fun b!5054772 () Bool)

(declare-fun res!2152429 () Bool)

(assert (=> b!5054772 (=> (not res!2152429) (not e!3155508))))

(assert (=> b!5054772 (= res!2152429 (<= (- (height!2121 (left!42786 xs!286)) (height!2121 (right!43116 xs!286))) 1))))

(declare-fun b!5054773 () Bool)

(declare-fun e!3155507 () Bool)

(assert (=> b!5054773 (= e!3155507 e!3155508)))

(declare-fun res!2152430 () Bool)

(assert (=> b!5054773 (=> (not res!2152430) (not e!3155508))))

(assert (=> b!5054773 (= res!2152430 (<= (- 1) (- (height!2121 (left!42786 xs!286)) (height!2121 (right!43116 xs!286)))))))

(declare-fun d!1626659 () Bool)

(declare-fun res!2152428 () Bool)

(assert (=> d!1626659 (=> res!2152428 e!3155507)))

(assert (=> d!1626659 (= res!2152428 (not ((_ is Node!15544) xs!286)))))

(assert (=> d!1626659 (= (isBalanced!4406 xs!286) e!3155507)))

(declare-fun b!5054771 () Bool)

(declare-fun res!2152432 () Bool)

(assert (=> b!5054771 (=> (not res!2152432) (not e!3155508))))

(assert (=> b!5054771 (= res!2152432 (not (isEmpty!31596 (left!42786 xs!286))))))

(assert (= (and d!1626659 (not res!2152428)) b!5054773))

(assert (= (and b!5054773 res!2152430) b!5054772))

(assert (= (and b!5054772 res!2152429) b!5054769))

(assert (= (and b!5054769 res!2152433) b!5054770))

(assert (= (and b!5054770 res!2152431) b!5054771))

(assert (= (and b!5054771 res!2152432) b!5054768))

(declare-fun m!6089254 () Bool)

(assert (=> b!5054773 m!6089254))

(declare-fun m!6089256 () Bool)

(assert (=> b!5054773 m!6089256))

(declare-fun m!6089258 () Bool)

(assert (=> b!5054770 m!6089258))

(declare-fun m!6089260 () Bool)

(assert (=> b!5054768 m!6089260))

(assert (=> b!5054772 m!6089254))

(assert (=> b!5054772 m!6089256))

(declare-fun m!6089262 () Bool)

(assert (=> b!5054771 m!6089262))

(declare-fun m!6089264 () Bool)

(assert (=> b!5054769 m!6089264))

(assert (=> start!534550 d!1626659))

(declare-fun d!1626661 () Bool)

(declare-fun c!867242 () Bool)

(assert (=> d!1626661 (= c!867242 ((_ is Node!15544) xs!286))))

(declare-fun e!3155515 () Bool)

(assert (=> d!1626661 (= (inv!77446 xs!286) e!3155515)))

(declare-fun b!5054786 () Bool)

(declare-fun inv!77448 (Conc!15544) Bool)

(assert (=> b!5054786 (= e!3155515 (inv!77448 xs!286))))

(declare-fun b!5054787 () Bool)

(declare-fun e!3155516 () Bool)

(assert (=> b!5054787 (= e!3155515 e!3155516)))

(declare-fun res!2152442 () Bool)

(assert (=> b!5054787 (= res!2152442 (not ((_ is Leaf!25821) xs!286)))))

(assert (=> b!5054787 (=> res!2152442 e!3155516)))

(declare-fun b!5054788 () Bool)

(declare-fun inv!77450 (Conc!15544) Bool)

(assert (=> b!5054788 (= e!3155516 (inv!77450 xs!286))))

(assert (= (and d!1626661 c!867242) b!5054786))

(assert (= (and d!1626661 (not c!867242)) b!5054787))

(assert (= (and b!5054787 (not res!2152442)) b!5054788))

(declare-fun m!6089278 () Bool)

(assert (=> b!5054786 m!6089278))

(declare-fun m!6089280 () Bool)

(assert (=> b!5054788 m!6089280))

(assert (=> start!534550 d!1626661))

(declare-fun d!1626665 () Bool)

(declare-fun c!867243 () Bool)

(assert (=> d!1626665 (= c!867243 ((_ is Node!15544) ys!41))))

(declare-fun e!3155517 () Bool)

(assert (=> d!1626665 (= (inv!77446 ys!41) e!3155517)))

(declare-fun b!5054789 () Bool)

(assert (=> b!5054789 (= e!3155517 (inv!77448 ys!41))))

(declare-fun b!5054790 () Bool)

(declare-fun e!3155518 () Bool)

(assert (=> b!5054790 (= e!3155517 e!3155518)))

(declare-fun res!2152443 () Bool)

(assert (=> b!5054790 (= res!2152443 (not ((_ is Leaf!25821) ys!41)))))

(assert (=> b!5054790 (=> res!2152443 e!3155518)))

(declare-fun b!5054791 () Bool)

(assert (=> b!5054791 (= e!3155518 (inv!77450 ys!41))))

(assert (= (and d!1626665 c!867243) b!5054789))

(assert (= (and d!1626665 (not c!867243)) b!5054790))

(assert (= (and b!5054790 (not res!2152443)) b!5054791))

(declare-fun m!6089282 () Bool)

(assert (=> b!5054789 m!6089282))

(declare-fun m!6089284 () Bool)

(assert (=> b!5054791 m!6089284))

(assert (=> start!534550 d!1626665))

(declare-fun d!1626667 () Bool)

(assert (=> d!1626667 (= (abs!0 (- (height!2121 xs!286) (height!2121 ys!41))) (ite (<= 0 (- (height!2121 xs!286) (height!2121 ys!41))) (- (height!2121 xs!286) (height!2121 ys!41)) (- (- (height!2121 xs!286) (height!2121 ys!41)))))))

(assert (=> b!5054732 d!1626667))

(declare-fun d!1626669 () Bool)

(assert (=> d!1626669 (= (height!2121 xs!286) (ite ((_ is Empty!15544) xs!286) 0 (ite ((_ is Leaf!25821) xs!286) 1 (cheight!15755 xs!286))))))

(assert (=> b!5054732 d!1626669))

(declare-fun d!1626671 () Bool)

(assert (=> d!1626671 (= (height!2121 ys!41) (ite ((_ is Empty!15544) ys!41) 0 (ite ((_ is Leaf!25821) ys!41) 1 (cheight!15755 ys!41))))))

(assert (=> b!5054732 d!1626671))

(declare-fun d!1626673 () Bool)

(declare-fun size!39041 (List!58538) Int)

(assert (=> d!1626673 (= (inv!77445 (xs!18874 ys!41)) (<= (size!39041 (innerList!15632 (xs!18874 ys!41))) 2147483647))))

(declare-fun bs!1189350 () Bool)

(assert (= bs!1189350 d!1626673))

(declare-fun m!6089294 () Bool)

(assert (=> bs!1189350 m!6089294))

(assert (=> b!5054731 d!1626673))

(declare-fun d!1626679 () Bool)

(assert (=> d!1626679 (= (inv!77445 (xs!18874 xs!286)) (<= (size!39041 (innerList!15632 (xs!18874 xs!286))) 2147483647))))

(declare-fun bs!1189351 () Bool)

(assert (= bs!1189351 d!1626679))

(declare-fun m!6089296 () Bool)

(assert (=> bs!1189351 m!6089296))

(assert (=> b!5054730 d!1626679))

(declare-fun d!1626681 () Bool)

(declare-fun c!867248 () Bool)

(assert (=> d!1626681 (= c!867248 ((_ is Node!15544) (left!42786 xs!286)))))

(declare-fun e!3155529 () Bool)

(assert (=> d!1626681 (= (inv!77446 (left!42786 xs!286)) e!3155529)))

(declare-fun b!5054810 () Bool)

(assert (=> b!5054810 (= e!3155529 (inv!77448 (left!42786 xs!286)))))

(declare-fun b!5054811 () Bool)

(declare-fun e!3155530 () Bool)

(assert (=> b!5054811 (= e!3155529 e!3155530)))

(declare-fun res!2152454 () Bool)

(assert (=> b!5054811 (= res!2152454 (not ((_ is Leaf!25821) (left!42786 xs!286))))))

(assert (=> b!5054811 (=> res!2152454 e!3155530)))

(declare-fun b!5054812 () Bool)

(assert (=> b!5054812 (= e!3155530 (inv!77450 (left!42786 xs!286)))))

(assert (= (and d!1626681 c!867248) b!5054810))

(assert (= (and d!1626681 (not c!867248)) b!5054811))

(assert (= (and b!5054811 (not res!2152454)) b!5054812))

(declare-fun m!6089310 () Bool)

(assert (=> b!5054810 m!6089310))

(declare-fun m!6089312 () Bool)

(assert (=> b!5054812 m!6089312))

(assert (=> b!5054735 d!1626681))

(declare-fun d!1626685 () Bool)

(declare-fun c!867250 () Bool)

(assert (=> d!1626685 (= c!867250 ((_ is Node!15544) (right!43116 xs!286)))))

(declare-fun e!3155533 () Bool)

(assert (=> d!1626685 (= (inv!77446 (right!43116 xs!286)) e!3155533)))

(declare-fun b!5054816 () Bool)

(assert (=> b!5054816 (= e!3155533 (inv!77448 (right!43116 xs!286)))))

(declare-fun b!5054817 () Bool)

(declare-fun e!3155534 () Bool)

(assert (=> b!5054817 (= e!3155533 e!3155534)))

(declare-fun res!2152456 () Bool)

(assert (=> b!5054817 (= res!2152456 (not ((_ is Leaf!25821) (right!43116 xs!286))))))

(assert (=> b!5054817 (=> res!2152456 e!3155534)))

(declare-fun b!5054818 () Bool)

(assert (=> b!5054818 (= e!3155534 (inv!77450 (right!43116 xs!286)))))

(assert (= (and d!1626685 c!867250) b!5054816))

(assert (= (and d!1626685 (not c!867250)) b!5054817))

(assert (= (and b!5054817 (not res!2152456)) b!5054818))

(declare-fun m!6089318 () Bool)

(assert (=> b!5054816 m!6089318))

(declare-fun m!6089320 () Bool)

(assert (=> b!5054818 m!6089320))

(assert (=> b!5054735 d!1626685))

(declare-fun d!1626689 () Bool)

(declare-fun c!867252 () Bool)

(assert (=> d!1626689 (= c!867252 ((_ is Node!15544) (left!42786 ys!41)))))

(declare-fun e!3155537 () Bool)

(assert (=> d!1626689 (= (inv!77446 (left!42786 ys!41)) e!3155537)))

(declare-fun b!5054822 () Bool)

(assert (=> b!5054822 (= e!3155537 (inv!77448 (left!42786 ys!41)))))

(declare-fun b!5054823 () Bool)

(declare-fun e!3155538 () Bool)

(assert (=> b!5054823 (= e!3155537 e!3155538)))

(declare-fun res!2152458 () Bool)

(assert (=> b!5054823 (= res!2152458 (not ((_ is Leaf!25821) (left!42786 ys!41))))))

(assert (=> b!5054823 (=> res!2152458 e!3155538)))

(declare-fun b!5054824 () Bool)

(assert (=> b!5054824 (= e!3155538 (inv!77450 (left!42786 ys!41)))))

(assert (= (and d!1626689 c!867252) b!5054822))

(assert (= (and d!1626689 (not c!867252)) b!5054823))

(assert (= (and b!5054823 (not res!2152458)) b!5054824))

(declare-fun m!6089326 () Bool)

(assert (=> b!5054822 m!6089326))

(declare-fun m!6089328 () Bool)

(assert (=> b!5054824 m!6089328))

(assert (=> b!5054734 d!1626689))

(declare-fun d!1626693 () Bool)

(declare-fun c!867254 () Bool)

(assert (=> d!1626693 (= c!867254 ((_ is Node!15544) (right!43116 ys!41)))))

(declare-fun e!3155541 () Bool)

(assert (=> d!1626693 (= (inv!77446 (right!43116 ys!41)) e!3155541)))

(declare-fun b!5054828 () Bool)

(assert (=> b!5054828 (= e!3155541 (inv!77448 (right!43116 ys!41)))))

(declare-fun b!5054829 () Bool)

(declare-fun e!3155542 () Bool)

(assert (=> b!5054829 (= e!3155541 e!3155542)))

(declare-fun res!2152460 () Bool)

(assert (=> b!5054829 (= res!2152460 (not ((_ is Leaf!25821) (right!43116 ys!41))))))

(assert (=> b!5054829 (=> res!2152460 e!3155542)))

(declare-fun b!5054830 () Bool)

(assert (=> b!5054830 (= e!3155542 (inv!77450 (right!43116 ys!41)))))

(assert (= (and d!1626693 c!867254) b!5054828))

(assert (= (and d!1626693 (not c!867254)) b!5054829))

(assert (= (and b!5054829 (not res!2152460)) b!5054830))

(declare-fun m!6089334 () Bool)

(assert (=> b!5054828 m!6089334))

(declare-fun m!6089336 () Bool)

(assert (=> b!5054830 m!6089336))

(assert (=> b!5054734 d!1626693))

(declare-fun b!5054842 () Bool)

(declare-fun e!3155549 () Bool)

(declare-fun tp_is_empty!37009 () Bool)

(declare-fun tp!1412894 () Bool)

(assert (=> b!5054842 (= e!3155549 (and tp_is_empty!37009 tp!1412894))))

(assert (=> b!5054737 (= tp!1412884 e!3155549)))

(assert (= (and b!5054737 ((_ is Cons!58414) (innerList!15632 (xs!18874 xs!286)))) b!5054842))

(declare-fun b!5054844 () Bool)

(declare-fun e!3155551 () Bool)

(declare-fun tp!1412896 () Bool)

(assert (=> b!5054844 (= e!3155551 (and tp_is_empty!37009 tp!1412896))))

(assert (=> b!5054736 (= tp!1412885 e!3155551)))

(assert (= (and b!5054736 ((_ is Cons!58414) (innerList!15632 (xs!18874 ys!41)))) b!5054844))

(declare-fun tp!1412910 () Bool)

(declare-fun e!3155561 () Bool)

(declare-fun b!5054862 () Bool)

(declare-fun tp!1412911 () Bool)

(assert (=> b!5054862 (= e!3155561 (and (inv!77446 (left!42786 (left!42786 xs!286))) tp!1412911 (inv!77446 (right!43116 (left!42786 xs!286))) tp!1412910))))

(declare-fun b!5054864 () Bool)

(declare-fun e!3155562 () Bool)

(declare-fun tp!1412912 () Bool)

(assert (=> b!5054864 (= e!3155562 tp!1412912)))

(declare-fun b!5054863 () Bool)

(assert (=> b!5054863 (= e!3155561 (and (inv!77445 (xs!18874 (left!42786 xs!286))) e!3155562))))

(assert (=> b!5054735 (= tp!1412889 (and (inv!77446 (left!42786 xs!286)) e!3155561))))

(assert (= (and b!5054735 ((_ is Node!15544) (left!42786 xs!286))) b!5054862))

(assert (= b!5054863 b!5054864))

(assert (= (and b!5054735 ((_ is Leaf!25821) (left!42786 xs!286))) b!5054863))

(declare-fun m!6089342 () Bool)

(assert (=> b!5054862 m!6089342))

(declare-fun m!6089344 () Bool)

(assert (=> b!5054862 m!6089344))

(declare-fun m!6089346 () Bool)

(assert (=> b!5054863 m!6089346))

(assert (=> b!5054735 m!6089228))

(declare-fun tp!1412917 () Bool)

(declare-fun b!5054868 () Bool)

(declare-fun tp!1412916 () Bool)

(declare-fun e!3155565 () Bool)

(assert (=> b!5054868 (= e!3155565 (and (inv!77446 (left!42786 (right!43116 xs!286))) tp!1412917 (inv!77446 (right!43116 (right!43116 xs!286))) tp!1412916))))

(declare-fun b!5054870 () Bool)

(declare-fun e!3155566 () Bool)

(declare-fun tp!1412918 () Bool)

(assert (=> b!5054870 (= e!3155566 tp!1412918)))

(declare-fun b!5054869 () Bool)

(assert (=> b!5054869 (= e!3155565 (and (inv!77445 (xs!18874 (right!43116 xs!286))) e!3155566))))

(assert (=> b!5054735 (= tp!1412886 (and (inv!77446 (right!43116 xs!286)) e!3155565))))

(assert (= (and b!5054735 ((_ is Node!15544) (right!43116 xs!286))) b!5054868))

(assert (= b!5054869 b!5054870))

(assert (= (and b!5054735 ((_ is Leaf!25821) (right!43116 xs!286))) b!5054869))

(declare-fun m!6089354 () Bool)

(assert (=> b!5054868 m!6089354))

(declare-fun m!6089356 () Bool)

(assert (=> b!5054868 m!6089356))

(declare-fun m!6089358 () Bool)

(assert (=> b!5054869 m!6089358))

(assert (=> b!5054735 m!6089230))

(declare-fun b!5054874 () Bool)

(declare-fun tp!1412923 () Bool)

(declare-fun tp!1412922 () Bool)

(declare-fun e!3155569 () Bool)

(assert (=> b!5054874 (= e!3155569 (and (inv!77446 (left!42786 (left!42786 ys!41))) tp!1412923 (inv!77446 (right!43116 (left!42786 ys!41))) tp!1412922))))

(declare-fun b!5054876 () Bool)

(declare-fun e!3155570 () Bool)

(declare-fun tp!1412924 () Bool)

(assert (=> b!5054876 (= e!3155570 tp!1412924)))

(declare-fun b!5054875 () Bool)

(assert (=> b!5054875 (= e!3155569 (and (inv!77445 (xs!18874 (left!42786 ys!41))) e!3155570))))

(assert (=> b!5054734 (= tp!1412888 (and (inv!77446 (left!42786 ys!41)) e!3155569))))

(assert (= (and b!5054734 ((_ is Node!15544) (left!42786 ys!41))) b!5054874))

(assert (= b!5054875 b!5054876))

(assert (= (and b!5054734 ((_ is Leaf!25821) (left!42786 ys!41))) b!5054875))

(declare-fun m!6089366 () Bool)

(assert (=> b!5054874 m!6089366))

(declare-fun m!6089368 () Bool)

(assert (=> b!5054874 m!6089368))

(declare-fun m!6089370 () Bool)

(assert (=> b!5054875 m!6089370))

(assert (=> b!5054734 m!6089234))

(declare-fun tp!1412928 () Bool)

(declare-fun b!5054880 () Bool)

(declare-fun tp!1412929 () Bool)

(declare-fun e!3155573 () Bool)

(assert (=> b!5054880 (= e!3155573 (and (inv!77446 (left!42786 (right!43116 ys!41))) tp!1412929 (inv!77446 (right!43116 (right!43116 ys!41))) tp!1412928))))

(declare-fun b!5054882 () Bool)

(declare-fun e!3155574 () Bool)

(declare-fun tp!1412930 () Bool)

(assert (=> b!5054882 (= e!3155574 tp!1412930)))

(declare-fun b!5054881 () Bool)

(assert (=> b!5054881 (= e!3155573 (and (inv!77445 (xs!18874 (right!43116 ys!41))) e!3155574))))

(assert (=> b!5054734 (= tp!1412887 (and (inv!77446 (right!43116 ys!41)) e!3155573))))

(assert (= (and b!5054734 ((_ is Node!15544) (right!43116 ys!41))) b!5054880))

(assert (= b!5054881 b!5054882))

(assert (= (and b!5054734 ((_ is Leaf!25821) (right!43116 ys!41))) b!5054881))

(declare-fun m!6089378 () Bool)

(assert (=> b!5054880 m!6089378))

(declare-fun m!6089380 () Bool)

(assert (=> b!5054880 m!6089380))

(declare-fun m!6089382 () Bool)

(assert (=> b!5054881 m!6089382))

(assert (=> b!5054734 m!6089236))

(check-sat (not b!5054812) (not b!5054868) (not b!5054789) (not b!5054735) (not b!5054753) (not d!1626679) (not b!5054862) (not b!5054864) (not b!5054828) (not b!5054771) (not b!5054842) (not b!5054755) (not b!5054810) (not b!5054882) (not b!5054751) (not b!5054788) (not b!5054786) (not b!5054874) (not b!5054830) (not b!5054754) (not b!5054769) (not b!5054770) (not b!5054869) (not b!5054863) (not b!5054876) tp_is_empty!37009 (not b!5054772) (not b!5054844) (not b!5054734) (not b!5054773) (not b!5054750) (not b!5054818) (not b!5054880) (not b!5054875) (not b!5054881) (not b!5054791) (not d!1626673) (not b!5054816) (not b!5054824) (not b!5054870) (not b!5054822) (not b!5054768) (not b!5054752))
(check-sat)
