; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507198 () Bool)

(assert start!507198)

(declare-fun b!4855622 () Bool)

(declare-fun e!3035816 () Bool)

(declare-datatypes ((T!98532 0))(
  ( (T!98533 (val!22390 Int)) )
))
(declare-datatypes ((List!55858 0))(
  ( (Nil!55734) (Cons!55734 (h!62182 T!98532) (t!363388 List!55858)) )
))
(declare-datatypes ((IArray!29089 0))(
  ( (IArray!29090 (innerList!14602 List!55858)) )
))
(declare-datatypes ((Conc!14514 0))(
  ( (Node!14514 (left!40491 Conc!14514) (right!40821 Conc!14514) (csize!29258 Int) (cheight!14725 Int)) (Leaf!24186 (xs!17820 IArray!29089) (csize!29259 Int)) (Empty!14514) )
))
(declare-fun t!4677 () Conc!14514)

(declare-fun size!36695 (IArray!29089) Int)

(assert (=> b!4855622 (= e!3035816 (<= (size!36695 (xs!17820 t!4677)) 0))))

(declare-fun b!4855623 () Bool)

(declare-fun res!2072820 () Bool)

(assert (=> b!4855623 (=> (not res!2072820) (not e!3035816))))

(get-info :version)

(assert (=> b!4855623 (= res!2072820 ((_ is Leaf!24186) t!4677))))

(declare-fun e!3035817 () Bool)

(declare-fun b!4855624 () Bool)

(declare-fun tp!1366149 () Bool)

(declare-fun tp!1366150 () Bool)

(declare-fun inv!71501 (Conc!14514) Bool)

(assert (=> b!4855624 (= e!3035817 (and (inv!71501 (left!40491 t!4677)) tp!1366150 (inv!71501 (right!40821 t!4677)) tp!1366149))))

(declare-fun b!4855625 () Bool)

(declare-fun e!3035818 () Bool)

(declare-fun tp!1366151 () Bool)

(assert (=> b!4855625 (= e!3035818 tp!1366151)))

(declare-fun b!4855626 () Bool)

(declare-fun res!2072821 () Bool)

(assert (=> b!4855626 (=> (not res!2072821) (not e!3035816))))

(declare-fun isEmpty!29801 (Conc!14514) Bool)

(assert (=> b!4855626 (= res!2072821 (not (isEmpty!29801 t!4677)))))

(declare-fun res!2072819 () Bool)

(assert (=> start!507198 (=> (not res!2072819) (not e!3035816))))

(declare-fun isBalanced!3920 (Conc!14514) Bool)

(assert (=> start!507198 (= res!2072819 (isBalanced!3920 t!4677))))

(assert (=> start!507198 e!3035816))

(assert (=> start!507198 (and (inv!71501 t!4677) e!3035817)))

(declare-fun b!4855627 () Bool)

(declare-fun inv!71502 (IArray!29089) Bool)

(assert (=> b!4855627 (= e!3035817 (and (inv!71502 (xs!17820 t!4677)) e!3035818))))

(assert (= (and start!507198 res!2072819) b!4855626))

(assert (= (and b!4855626 res!2072821) b!4855623))

(assert (= (and b!4855623 res!2072820) b!4855622))

(assert (= (and start!507198 ((_ is Node!14514) t!4677)) b!4855624))

(assert (= b!4855627 b!4855625))

(assert (= (and start!507198 ((_ is Leaf!24186) t!4677)) b!4855627))

(declare-fun m!5853380 () Bool)

(assert (=> b!4855626 m!5853380))

(declare-fun m!5853382 () Bool)

(assert (=> start!507198 m!5853382))

(declare-fun m!5853384 () Bool)

(assert (=> start!507198 m!5853384))

(declare-fun m!5853386 () Bool)

(assert (=> b!4855622 m!5853386))

(declare-fun m!5853388 () Bool)

(assert (=> b!4855624 m!5853388))

(declare-fun m!5853390 () Bool)

(assert (=> b!4855624 m!5853390))

(declare-fun m!5853392 () Bool)

(assert (=> b!4855627 m!5853392))

(check-sat (not b!4855627) (not b!4855622) (not b!4855626) (not start!507198) (not b!4855625) (not b!4855624))
(check-sat)
(get-model)

(declare-fun d!1558558 () Bool)

(declare-fun lt!1991333 () Bool)

(declare-fun isEmpty!29803 (List!55858) Bool)

(declare-fun list!17390 (Conc!14514) List!55858)

(assert (=> d!1558558 (= lt!1991333 (isEmpty!29803 (list!17390 t!4677)))))

(declare-fun size!36697 (Conc!14514) Int)

(assert (=> d!1558558 (= lt!1991333 (= (size!36697 t!4677) 0))))

(assert (=> d!1558558 (= (isEmpty!29801 t!4677) lt!1991333)))

(declare-fun bs!1173713 () Bool)

(assert (= bs!1173713 d!1558558))

(declare-fun m!5853400 () Bool)

(assert (=> bs!1173713 m!5853400))

(assert (=> bs!1173713 m!5853400))

(declare-fun m!5853402 () Bool)

(assert (=> bs!1173713 m!5853402))

(declare-fun m!5853404 () Bool)

(assert (=> bs!1173713 m!5853404))

(assert (=> b!4855626 d!1558558))

(declare-fun d!1558562 () Bool)

(declare-fun size!36698 (List!55858) Int)

(assert (=> d!1558562 (= (inv!71502 (xs!17820 t!4677)) (<= (size!36698 (innerList!14602 (xs!17820 t!4677))) 2147483647))))

(declare-fun bs!1173714 () Bool)

(assert (= bs!1173714 d!1558562))

(declare-fun m!5853406 () Bool)

(assert (=> bs!1173714 m!5853406))

(assert (=> b!4855627 d!1558562))

(declare-fun d!1558564 () Bool)

(declare-fun lt!1991336 () Int)

(declare-fun list!17391 (IArray!29089) List!55858)

(assert (=> d!1558564 (= lt!1991336 (size!36698 (list!17391 (xs!17820 t!4677))))))

(declare-fun choose!35549 (IArray!29089) Int)

(assert (=> d!1558564 (= lt!1991336 (choose!35549 (xs!17820 t!4677)))))

(assert (=> d!1558564 (= (size!36695 (xs!17820 t!4677)) lt!1991336)))

(declare-fun bs!1173715 () Bool)

(assert (= bs!1173715 d!1558564))

(declare-fun m!5853416 () Bool)

(assert (=> bs!1173715 m!5853416))

(assert (=> bs!1173715 m!5853416))

(declare-fun m!5853418 () Bool)

(assert (=> bs!1173715 m!5853418))

(declare-fun m!5853420 () Bool)

(assert (=> bs!1173715 m!5853420))

(assert (=> b!4855622 d!1558564))

(declare-fun b!4855673 () Bool)

(declare-fun res!2072857 () Bool)

(declare-fun e!3035840 () Bool)

(assert (=> b!4855673 (=> (not res!2072857) (not e!3035840))))

(declare-fun height!1894 (Conc!14514) Int)

(assert (=> b!4855673 (= res!2072857 (<= (- (height!1894 (left!40491 t!4677)) (height!1894 (right!40821 t!4677))) 1))))

(declare-fun b!4855674 () Bool)

(declare-fun e!3035839 () Bool)

(assert (=> b!4855674 (= e!3035839 e!3035840)))

(declare-fun res!2072862 () Bool)

(assert (=> b!4855674 (=> (not res!2072862) (not e!3035840))))

(assert (=> b!4855674 (= res!2072862 (<= (- 1) (- (height!1894 (left!40491 t!4677)) (height!1894 (right!40821 t!4677)))))))

(declare-fun b!4855675 () Bool)

(declare-fun res!2072860 () Bool)

(assert (=> b!4855675 (=> (not res!2072860) (not e!3035840))))

(assert (=> b!4855675 (= res!2072860 (isBalanced!3920 (left!40491 t!4677)))))

(declare-fun b!4855676 () Bool)

(declare-fun res!2072861 () Bool)

(assert (=> b!4855676 (=> (not res!2072861) (not e!3035840))))

(assert (=> b!4855676 (= res!2072861 (not (isEmpty!29801 (left!40491 t!4677))))))

(declare-fun b!4855677 () Bool)

(assert (=> b!4855677 (= e!3035840 (not (isEmpty!29801 (right!40821 t!4677))))))

(declare-fun d!1558570 () Bool)

(declare-fun res!2072858 () Bool)

(assert (=> d!1558570 (=> res!2072858 e!3035839)))

(assert (=> d!1558570 (= res!2072858 (not ((_ is Node!14514) t!4677)))))

(assert (=> d!1558570 (= (isBalanced!3920 t!4677) e!3035839)))

(declare-fun b!4855678 () Bool)

(declare-fun res!2072859 () Bool)

(assert (=> b!4855678 (=> (not res!2072859) (not e!3035840))))

(assert (=> b!4855678 (= res!2072859 (isBalanced!3920 (right!40821 t!4677)))))

(assert (= (and d!1558570 (not res!2072858)) b!4855674))

(assert (= (and b!4855674 res!2072862) b!4855673))

(assert (= (and b!4855673 res!2072857) b!4855675))

(assert (= (and b!4855675 res!2072860) b!4855678))

(assert (= (and b!4855678 res!2072859) b!4855676))

(assert (= (and b!4855676 res!2072861) b!4855677))

(declare-fun m!5853438 () Bool)

(assert (=> b!4855678 m!5853438))

(declare-fun m!5853440 () Bool)

(assert (=> b!4855676 m!5853440))

(declare-fun m!5853442 () Bool)

(assert (=> b!4855677 m!5853442))

(declare-fun m!5853444 () Bool)

(assert (=> b!4855673 m!5853444))

(declare-fun m!5853446 () Bool)

(assert (=> b!4855673 m!5853446))

(assert (=> b!4855674 m!5853444))

(assert (=> b!4855674 m!5853446))

(declare-fun m!5853448 () Bool)

(assert (=> b!4855675 m!5853448))

(assert (=> start!507198 d!1558570))

(declare-fun d!1558576 () Bool)

(declare-fun c!826035 () Bool)

(assert (=> d!1558576 (= c!826035 ((_ is Node!14514) t!4677))))

(declare-fun e!3035852 () Bool)

(assert (=> d!1558576 (= (inv!71501 t!4677) e!3035852)))

(declare-fun b!4855698 () Bool)

(declare-fun inv!71505 (Conc!14514) Bool)

(assert (=> b!4855698 (= e!3035852 (inv!71505 t!4677))))

(declare-fun b!4855699 () Bool)

(declare-fun e!3035853 () Bool)

(assert (=> b!4855699 (= e!3035852 e!3035853)))

(declare-fun res!2072865 () Bool)

(assert (=> b!4855699 (= res!2072865 (not ((_ is Leaf!24186) t!4677)))))

(assert (=> b!4855699 (=> res!2072865 e!3035853)))

(declare-fun b!4855700 () Bool)

(declare-fun inv!71506 (Conc!14514) Bool)

(assert (=> b!4855700 (= e!3035853 (inv!71506 t!4677))))

(assert (= (and d!1558576 c!826035) b!4855698))

(assert (= (and d!1558576 (not c!826035)) b!4855699))

(assert (= (and b!4855699 (not res!2072865)) b!4855700))

(declare-fun m!5853458 () Bool)

(assert (=> b!4855698 m!5853458))

(declare-fun m!5853460 () Bool)

(assert (=> b!4855700 m!5853460))

(assert (=> start!507198 d!1558576))

(declare-fun d!1558580 () Bool)

(declare-fun c!826036 () Bool)

(assert (=> d!1558580 (= c!826036 ((_ is Node!14514) (left!40491 t!4677)))))

(declare-fun e!3035854 () Bool)

(assert (=> d!1558580 (= (inv!71501 (left!40491 t!4677)) e!3035854)))

(declare-fun b!4855701 () Bool)

(assert (=> b!4855701 (= e!3035854 (inv!71505 (left!40491 t!4677)))))

(declare-fun b!4855702 () Bool)

(declare-fun e!3035855 () Bool)

(assert (=> b!4855702 (= e!3035854 e!3035855)))

(declare-fun res!2072866 () Bool)

(assert (=> b!4855702 (= res!2072866 (not ((_ is Leaf!24186) (left!40491 t!4677))))))

(assert (=> b!4855702 (=> res!2072866 e!3035855)))

(declare-fun b!4855703 () Bool)

(assert (=> b!4855703 (= e!3035855 (inv!71506 (left!40491 t!4677)))))

(assert (= (and d!1558580 c!826036) b!4855701))

(assert (= (and d!1558580 (not c!826036)) b!4855702))

(assert (= (and b!4855702 (not res!2072866)) b!4855703))

(declare-fun m!5853462 () Bool)

(assert (=> b!4855701 m!5853462))

(declare-fun m!5853464 () Bool)

(assert (=> b!4855703 m!5853464))

(assert (=> b!4855624 d!1558580))

(declare-fun d!1558582 () Bool)

(declare-fun c!826037 () Bool)

(assert (=> d!1558582 (= c!826037 ((_ is Node!14514) (right!40821 t!4677)))))

(declare-fun e!3035858 () Bool)

(assert (=> d!1558582 (= (inv!71501 (right!40821 t!4677)) e!3035858)))

(declare-fun b!4855707 () Bool)

(assert (=> b!4855707 (= e!3035858 (inv!71505 (right!40821 t!4677)))))

(declare-fun b!4855708 () Bool)

(declare-fun e!3035859 () Bool)

(assert (=> b!4855708 (= e!3035858 e!3035859)))

(declare-fun res!2072867 () Bool)

(assert (=> b!4855708 (= res!2072867 (not ((_ is Leaf!24186) (right!40821 t!4677))))))

(assert (=> b!4855708 (=> res!2072867 e!3035859)))

(declare-fun b!4855709 () Bool)

(assert (=> b!4855709 (= e!3035859 (inv!71506 (right!40821 t!4677)))))

(assert (= (and d!1558582 c!826037) b!4855707))

(assert (= (and d!1558582 (not c!826037)) b!4855708))

(assert (= (and b!4855708 (not res!2072867)) b!4855709))

(declare-fun m!5853466 () Bool)

(assert (=> b!4855707 m!5853466))

(declare-fun m!5853468 () Bool)

(assert (=> b!4855709 m!5853468))

(assert (=> b!4855624 d!1558582))

(declare-fun b!4855717 () Bool)

(declare-fun e!3035864 () Bool)

(declare-fun tp_is_empty!35491 () Bool)

(declare-fun tp!1366169 () Bool)

(assert (=> b!4855717 (= e!3035864 (and tp_is_empty!35491 tp!1366169))))

(assert (=> b!4855625 (= tp!1366151 e!3035864)))

(assert (= (and b!4855625 ((_ is Cons!55734) (innerList!14602 (xs!17820 t!4677)))) b!4855717))

(declare-fun b!4855726 () Bool)

(declare-fun e!3035869 () Bool)

(declare-fun tp!1366178 () Bool)

(declare-fun tp!1366177 () Bool)

(assert (=> b!4855726 (= e!3035869 (and (inv!71501 (left!40491 (left!40491 t!4677))) tp!1366177 (inv!71501 (right!40821 (left!40491 t!4677))) tp!1366178))))

(declare-fun b!4855728 () Bool)

(declare-fun e!3035870 () Bool)

(declare-fun tp!1366176 () Bool)

(assert (=> b!4855728 (= e!3035870 tp!1366176)))

(declare-fun b!4855727 () Bool)

(assert (=> b!4855727 (= e!3035869 (and (inv!71502 (xs!17820 (left!40491 t!4677))) e!3035870))))

(assert (=> b!4855624 (= tp!1366150 (and (inv!71501 (left!40491 t!4677)) e!3035869))))

(assert (= (and b!4855624 ((_ is Node!14514) (left!40491 t!4677))) b!4855726))

(assert (= b!4855727 b!4855728))

(assert (= (and b!4855624 ((_ is Leaf!24186) (left!40491 t!4677))) b!4855727))

(declare-fun m!5853482 () Bool)

(assert (=> b!4855726 m!5853482))

(declare-fun m!5853484 () Bool)

(assert (=> b!4855726 m!5853484))

(declare-fun m!5853486 () Bool)

(assert (=> b!4855727 m!5853486))

(assert (=> b!4855624 m!5853388))

(declare-fun b!4855729 () Bool)

(declare-fun tp!1366181 () Bool)

(declare-fun e!3035871 () Bool)

(declare-fun tp!1366180 () Bool)

(assert (=> b!4855729 (= e!3035871 (and (inv!71501 (left!40491 (right!40821 t!4677))) tp!1366180 (inv!71501 (right!40821 (right!40821 t!4677))) tp!1366181))))

(declare-fun b!4855731 () Bool)

(declare-fun e!3035872 () Bool)

(declare-fun tp!1366179 () Bool)

(assert (=> b!4855731 (= e!3035872 tp!1366179)))

(declare-fun b!4855730 () Bool)

(assert (=> b!4855730 (= e!3035871 (and (inv!71502 (xs!17820 (right!40821 t!4677))) e!3035872))))

(assert (=> b!4855624 (= tp!1366149 (and (inv!71501 (right!40821 t!4677)) e!3035871))))

(assert (= (and b!4855624 ((_ is Node!14514) (right!40821 t!4677))) b!4855729))

(assert (= b!4855730 b!4855731))

(assert (= (and b!4855624 ((_ is Leaf!24186) (right!40821 t!4677))) b!4855730))

(declare-fun m!5853488 () Bool)

(assert (=> b!4855729 m!5853488))

(declare-fun m!5853490 () Bool)

(assert (=> b!4855729 m!5853490))

(declare-fun m!5853492 () Bool)

(assert (=> b!4855730 m!5853492))

(assert (=> b!4855624 m!5853390))

(check-sat (not b!4855698) (not b!4855675) (not b!4855676) (not b!4855717) (not b!4855730) (not d!1558562) (not d!1558558) (not b!4855703) tp_is_empty!35491 (not b!4855701) (not b!4855707) (not b!4855727) (not b!4855700) (not b!4855709) (not b!4855678) (not d!1558564) (not b!4855726) (not b!4855677) (not b!4855674) (not b!4855673) (not b!4855728) (not b!4855624) (not b!4855729) (not b!4855731))
(check-sat)
(get-model)

(declare-fun d!1558584 () Bool)

(declare-fun lt!1991342 () Int)

(assert (=> d!1558584 (>= lt!1991342 0)))

(declare-fun e!3035875 () Int)

(assert (=> d!1558584 (= lt!1991342 e!3035875)))

(declare-fun c!826040 () Bool)

(assert (=> d!1558584 (= c!826040 ((_ is Nil!55734) (innerList!14602 (xs!17820 t!4677))))))

(assert (=> d!1558584 (= (size!36698 (innerList!14602 (xs!17820 t!4677))) lt!1991342)))

(declare-fun b!4855736 () Bool)

(assert (=> b!4855736 (= e!3035875 0)))

(declare-fun b!4855737 () Bool)

(assert (=> b!4855737 (= e!3035875 (+ 1 (size!36698 (t!363388 (innerList!14602 (xs!17820 t!4677))))))))

(assert (= (and d!1558584 c!826040) b!4855736))

(assert (= (and d!1558584 (not c!826040)) b!4855737))

(declare-fun m!5853494 () Bool)

(assert (=> b!4855737 m!5853494))

(assert (=> d!1558562 d!1558584))

(declare-fun d!1558586 () Bool)

(assert (=> d!1558586 (= (isEmpty!29803 (list!17390 t!4677)) ((_ is Nil!55734) (list!17390 t!4677)))))

(assert (=> d!1558558 d!1558586))

(declare-fun d!1558588 () Bool)

(declare-fun c!826045 () Bool)

(assert (=> d!1558588 (= c!826045 ((_ is Empty!14514) t!4677))))

(declare-fun e!3035880 () List!55858)

(assert (=> d!1558588 (= (list!17390 t!4677) e!3035880)))

(declare-fun b!4855749 () Bool)

(declare-fun e!3035881 () List!55858)

(declare-fun ++!12118 (List!55858 List!55858) List!55858)

(assert (=> b!4855749 (= e!3035881 (++!12118 (list!17390 (left!40491 t!4677)) (list!17390 (right!40821 t!4677))))))

(declare-fun b!4855748 () Bool)

(assert (=> b!4855748 (= e!3035881 (list!17391 (xs!17820 t!4677)))))

(declare-fun b!4855747 () Bool)

(assert (=> b!4855747 (= e!3035880 e!3035881)))

(declare-fun c!826046 () Bool)

(assert (=> b!4855747 (= c!826046 ((_ is Leaf!24186) t!4677))))

(declare-fun b!4855746 () Bool)

(assert (=> b!4855746 (= e!3035880 Nil!55734)))

(assert (= (and d!1558588 c!826045) b!4855746))

(assert (= (and d!1558588 (not c!826045)) b!4855747))

(assert (= (and b!4855747 c!826046) b!4855748))

(assert (= (and b!4855747 (not c!826046)) b!4855749))

(declare-fun m!5853496 () Bool)

(assert (=> b!4855749 m!5853496))

(declare-fun m!5853498 () Bool)

(assert (=> b!4855749 m!5853498))

(assert (=> b!4855749 m!5853496))

(assert (=> b!4855749 m!5853498))

(declare-fun m!5853500 () Bool)

(assert (=> b!4855749 m!5853500))

(assert (=> b!4855748 m!5853416))

(assert (=> d!1558558 d!1558588))

(declare-fun d!1558590 () Bool)

(declare-fun lt!1991345 () Int)

(assert (=> d!1558590 (= lt!1991345 (size!36698 (list!17390 t!4677)))))

(assert (=> d!1558590 (= lt!1991345 (ite ((_ is Empty!14514) t!4677) 0 (ite ((_ is Leaf!24186) t!4677) (csize!29259 t!4677) (csize!29258 t!4677))))))

(assert (=> d!1558590 (= (size!36697 t!4677) lt!1991345)))

(declare-fun bs!1173718 () Bool)

(assert (= bs!1173718 d!1558590))

(assert (=> bs!1173718 m!5853400))

(assert (=> bs!1173718 m!5853400))

(declare-fun m!5853502 () Bool)

(assert (=> bs!1173718 m!5853502))

(assert (=> d!1558558 d!1558590))

(declare-fun d!1558592 () Bool)

(assert (=> d!1558592 (= (height!1894 (left!40491 t!4677)) (ite ((_ is Empty!14514) (left!40491 t!4677)) 0 (ite ((_ is Leaf!24186) (left!40491 t!4677)) 1 (cheight!14725 (left!40491 t!4677)))))))

(assert (=> b!4855674 d!1558592))

(declare-fun d!1558594 () Bool)

(assert (=> d!1558594 (= (height!1894 (right!40821 t!4677)) (ite ((_ is Empty!14514) (right!40821 t!4677)) 0 (ite ((_ is Leaf!24186) (right!40821 t!4677)) 1 (cheight!14725 (right!40821 t!4677)))))))

(assert (=> b!4855674 d!1558594))

(assert (=> b!4855673 d!1558592))

(assert (=> b!4855673 d!1558594))

(declare-fun d!1558596 () Bool)

(declare-fun res!2072880 () Bool)

(declare-fun e!3035886 () Bool)

(assert (=> d!1558596 (=> (not res!2072880) (not e!3035886))))

(assert (=> d!1558596 (= res!2072880 (= (csize!29258 t!4677) (+ (size!36697 (left!40491 t!4677)) (size!36697 (right!40821 t!4677)))))))

(assert (=> d!1558596 (= (inv!71505 t!4677) e!3035886)))

(declare-fun b!4855762 () Bool)

(declare-fun res!2072881 () Bool)

(assert (=> b!4855762 (=> (not res!2072881) (not e!3035886))))

(assert (=> b!4855762 (= res!2072881 (and (not (= (left!40491 t!4677) Empty!14514)) (not (= (right!40821 t!4677) Empty!14514))))))

(declare-fun b!4855763 () Bool)

(declare-fun res!2072882 () Bool)

(assert (=> b!4855763 (=> (not res!2072882) (not e!3035886))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4855763 (= res!2072882 (= (cheight!14725 t!4677) (+ (max!0 (height!1894 (left!40491 t!4677)) (height!1894 (right!40821 t!4677))) 1)))))

(declare-fun b!4855764 () Bool)

(assert (=> b!4855764 (= e!3035886 (<= 0 (cheight!14725 t!4677)))))

(assert (= (and d!1558596 res!2072880) b!4855762))

(assert (= (and b!4855762 res!2072881) b!4855763))

(assert (= (and b!4855763 res!2072882) b!4855764))

(declare-fun m!5853516 () Bool)

(assert (=> d!1558596 m!5853516))

(declare-fun m!5853518 () Bool)

(assert (=> d!1558596 m!5853518))

(assert (=> b!4855763 m!5853444))

(assert (=> b!4855763 m!5853446))

(assert (=> b!4855763 m!5853444))

(assert (=> b!4855763 m!5853446))

(declare-fun m!5853520 () Bool)

(assert (=> b!4855763 m!5853520))

(assert (=> b!4855698 d!1558596))

(declare-fun b!4855769 () Bool)

(declare-fun res!2072883 () Bool)

(declare-fun e!3035890 () Bool)

(assert (=> b!4855769 (=> (not res!2072883) (not e!3035890))))

(assert (=> b!4855769 (= res!2072883 (<= (- (height!1894 (left!40491 (left!40491 t!4677))) (height!1894 (right!40821 (left!40491 t!4677)))) 1))))

(declare-fun b!4855770 () Bool)

(declare-fun e!3035889 () Bool)

(assert (=> b!4855770 (= e!3035889 e!3035890)))

(declare-fun res!2072888 () Bool)

(assert (=> b!4855770 (=> (not res!2072888) (not e!3035890))))

(assert (=> b!4855770 (= res!2072888 (<= (- 1) (- (height!1894 (left!40491 (left!40491 t!4677))) (height!1894 (right!40821 (left!40491 t!4677))))))))

(declare-fun b!4855771 () Bool)

(declare-fun res!2072886 () Bool)

(assert (=> b!4855771 (=> (not res!2072886) (not e!3035890))))

(assert (=> b!4855771 (= res!2072886 (isBalanced!3920 (left!40491 (left!40491 t!4677))))))

(declare-fun b!4855772 () Bool)

(declare-fun res!2072887 () Bool)

(assert (=> b!4855772 (=> (not res!2072887) (not e!3035890))))

(assert (=> b!4855772 (= res!2072887 (not (isEmpty!29801 (left!40491 (left!40491 t!4677)))))))

(declare-fun b!4855773 () Bool)

(assert (=> b!4855773 (= e!3035890 (not (isEmpty!29801 (right!40821 (left!40491 t!4677)))))))

(declare-fun d!1558602 () Bool)

(declare-fun res!2072884 () Bool)

(assert (=> d!1558602 (=> res!2072884 e!3035889)))

(assert (=> d!1558602 (= res!2072884 (not ((_ is Node!14514) (left!40491 t!4677))))))

(assert (=> d!1558602 (= (isBalanced!3920 (left!40491 t!4677)) e!3035889)))

(declare-fun b!4855774 () Bool)

(declare-fun res!2072885 () Bool)

(assert (=> b!4855774 (=> (not res!2072885) (not e!3035890))))

(assert (=> b!4855774 (= res!2072885 (isBalanced!3920 (right!40821 (left!40491 t!4677))))))

(assert (= (and d!1558602 (not res!2072884)) b!4855770))

(assert (= (and b!4855770 res!2072888) b!4855769))

(assert (= (and b!4855769 res!2072883) b!4855771))

(assert (= (and b!4855771 res!2072886) b!4855774))

(assert (= (and b!4855774 res!2072885) b!4855772))

(assert (= (and b!4855772 res!2072887) b!4855773))

(declare-fun m!5853522 () Bool)

(assert (=> b!4855774 m!5853522))

(declare-fun m!5853524 () Bool)

(assert (=> b!4855772 m!5853524))

(declare-fun m!5853526 () Bool)

(assert (=> b!4855773 m!5853526))

(declare-fun m!5853528 () Bool)

(assert (=> b!4855769 m!5853528))

(declare-fun m!5853530 () Bool)

(assert (=> b!4855769 m!5853530))

(assert (=> b!4855770 m!5853528))

(assert (=> b!4855770 m!5853530))

(declare-fun m!5853532 () Bool)

(assert (=> b!4855771 m!5853532))

(assert (=> b!4855675 d!1558602))

(declare-fun d!1558604 () Bool)

(declare-fun lt!1991349 () Int)

(assert (=> d!1558604 (>= lt!1991349 0)))

(declare-fun e!3035892 () Int)

(assert (=> d!1558604 (= lt!1991349 e!3035892)))

(declare-fun c!826050 () Bool)

(assert (=> d!1558604 (= c!826050 ((_ is Nil!55734) (list!17391 (xs!17820 t!4677))))))

(assert (=> d!1558604 (= (size!36698 (list!17391 (xs!17820 t!4677))) lt!1991349)))

(declare-fun b!4855777 () Bool)

(assert (=> b!4855777 (= e!3035892 0)))

(declare-fun b!4855778 () Bool)

(assert (=> b!4855778 (= e!3035892 (+ 1 (size!36698 (t!363388 (list!17391 (xs!17820 t!4677))))))))

(assert (= (and d!1558604 c!826050) b!4855777))

(assert (= (and d!1558604 (not c!826050)) b!4855778))

(declare-fun m!5853536 () Bool)

(assert (=> b!4855778 m!5853536))

(assert (=> d!1558564 d!1558604))

(declare-fun d!1558608 () Bool)

(assert (=> d!1558608 (= (list!17391 (xs!17820 t!4677)) (innerList!14602 (xs!17820 t!4677)))))

(assert (=> d!1558564 d!1558608))

(declare-fun d!1558610 () Bool)

(declare-fun _$1!11175 () Int)

(assert (=> d!1558610 (= _$1!11175 (size!36698 (list!17391 (xs!17820 t!4677))))))

(assert (=> d!1558610 true))

(assert (=> d!1558610 (= (choose!35549 (xs!17820 t!4677)) _$1!11175)))

(declare-fun bs!1173719 () Bool)

(assert (= bs!1173719 d!1558610))

(assert (=> bs!1173719 m!5853416))

(assert (=> bs!1173719 m!5853416))

(assert (=> bs!1173719 m!5853418))

(assert (=> d!1558564 d!1558610))

(declare-fun d!1558612 () Bool)

(declare-fun res!2072889 () Bool)

(declare-fun e!3035893 () Bool)

(assert (=> d!1558612 (=> (not res!2072889) (not e!3035893))))

(assert (=> d!1558612 (= res!2072889 (= (csize!29258 (right!40821 t!4677)) (+ (size!36697 (left!40491 (right!40821 t!4677))) (size!36697 (right!40821 (right!40821 t!4677))))))))

(assert (=> d!1558612 (= (inv!71505 (right!40821 t!4677)) e!3035893)))

(declare-fun b!4855779 () Bool)

(declare-fun res!2072890 () Bool)

(assert (=> b!4855779 (=> (not res!2072890) (not e!3035893))))

(assert (=> b!4855779 (= res!2072890 (and (not (= (left!40491 (right!40821 t!4677)) Empty!14514)) (not (= (right!40821 (right!40821 t!4677)) Empty!14514))))))

(declare-fun b!4855780 () Bool)

(declare-fun res!2072891 () Bool)

(assert (=> b!4855780 (=> (not res!2072891) (not e!3035893))))

(assert (=> b!4855780 (= res!2072891 (= (cheight!14725 (right!40821 t!4677)) (+ (max!0 (height!1894 (left!40491 (right!40821 t!4677))) (height!1894 (right!40821 (right!40821 t!4677)))) 1)))))

(declare-fun b!4855781 () Bool)

(assert (=> b!4855781 (= e!3035893 (<= 0 (cheight!14725 (right!40821 t!4677))))))

(assert (= (and d!1558612 res!2072889) b!4855779))

(assert (= (and b!4855779 res!2072890) b!4855780))

(assert (= (and b!4855780 res!2072891) b!4855781))

(declare-fun m!5853538 () Bool)

(assert (=> d!1558612 m!5853538))

(declare-fun m!5853540 () Bool)

(assert (=> d!1558612 m!5853540))

(declare-fun m!5853542 () Bool)

(assert (=> b!4855780 m!5853542))

(declare-fun m!5853544 () Bool)

(assert (=> b!4855780 m!5853544))

(assert (=> b!4855780 m!5853542))

(assert (=> b!4855780 m!5853544))

(declare-fun m!5853546 () Bool)

(assert (=> b!4855780 m!5853546))

(assert (=> b!4855707 d!1558612))

(declare-fun d!1558614 () Bool)

(declare-fun res!2072902 () Bool)

(declare-fun e!3035898 () Bool)

(assert (=> d!1558614 (=> (not res!2072902) (not e!3035898))))

(assert (=> d!1558614 (= res!2072902 (<= (size!36698 (list!17391 (xs!17820 t!4677))) 512))))

(assert (=> d!1558614 (= (inv!71506 t!4677) e!3035898)))

(declare-fun b!4855792 () Bool)

(declare-fun res!2072903 () Bool)

(assert (=> b!4855792 (=> (not res!2072903) (not e!3035898))))

(assert (=> b!4855792 (= res!2072903 (= (csize!29259 t!4677) (size!36698 (list!17391 (xs!17820 t!4677)))))))

(declare-fun b!4855793 () Bool)

(assert (=> b!4855793 (= e!3035898 (and (> (csize!29259 t!4677) 0) (<= (csize!29259 t!4677) 512)))))

(assert (= (and d!1558614 res!2072902) b!4855792))

(assert (= (and b!4855792 res!2072903) b!4855793))

(assert (=> d!1558614 m!5853416))

(assert (=> d!1558614 m!5853416))

(assert (=> d!1558614 m!5853418))

(assert (=> b!4855792 m!5853416))

(assert (=> b!4855792 m!5853416))

(assert (=> b!4855792 m!5853418))

(assert (=> b!4855700 d!1558614))

(declare-fun d!1558616 () Bool)

(declare-fun c!826051 () Bool)

(assert (=> d!1558616 (= c!826051 ((_ is Node!14514) (left!40491 (left!40491 t!4677))))))

(declare-fun e!3035900 () Bool)

(assert (=> d!1558616 (= (inv!71501 (left!40491 (left!40491 t!4677))) e!3035900)))

(declare-fun b!4855797 () Bool)

(assert (=> b!4855797 (= e!3035900 (inv!71505 (left!40491 (left!40491 t!4677))))))

(declare-fun b!4855798 () Bool)

(declare-fun e!3035901 () Bool)

(assert (=> b!4855798 (= e!3035900 e!3035901)))

(declare-fun res!2072907 () Bool)

(assert (=> b!4855798 (= res!2072907 (not ((_ is Leaf!24186) (left!40491 (left!40491 t!4677)))))))

(assert (=> b!4855798 (=> res!2072907 e!3035901)))

(declare-fun b!4855799 () Bool)

(assert (=> b!4855799 (= e!3035901 (inv!71506 (left!40491 (left!40491 t!4677))))))

(assert (= (and d!1558616 c!826051) b!4855797))

(assert (= (and d!1558616 (not c!826051)) b!4855798))

(assert (= (and b!4855798 (not res!2072907)) b!4855799))

(declare-fun m!5853554 () Bool)

(assert (=> b!4855797 m!5853554))

(declare-fun m!5853556 () Bool)

(assert (=> b!4855799 m!5853556))

(assert (=> b!4855726 d!1558616))

(declare-fun d!1558620 () Bool)

(declare-fun c!826052 () Bool)

(assert (=> d!1558620 (= c!826052 ((_ is Node!14514) (right!40821 (left!40491 t!4677))))))

(declare-fun e!3035902 () Bool)

(assert (=> d!1558620 (= (inv!71501 (right!40821 (left!40491 t!4677))) e!3035902)))

(declare-fun b!4855800 () Bool)

(assert (=> b!4855800 (= e!3035902 (inv!71505 (right!40821 (left!40491 t!4677))))))

(declare-fun b!4855801 () Bool)

(declare-fun e!3035903 () Bool)

(assert (=> b!4855801 (= e!3035902 e!3035903)))

(declare-fun res!2072908 () Bool)

(assert (=> b!4855801 (= res!2072908 (not ((_ is Leaf!24186) (right!40821 (left!40491 t!4677)))))))

(assert (=> b!4855801 (=> res!2072908 e!3035903)))

(declare-fun b!4855802 () Bool)

(assert (=> b!4855802 (= e!3035903 (inv!71506 (right!40821 (left!40491 t!4677))))))

(assert (= (and d!1558620 c!826052) b!4855800))

(assert (= (and d!1558620 (not c!826052)) b!4855801))

(assert (= (and b!4855801 (not res!2072908)) b!4855802))

(declare-fun m!5853558 () Bool)

(assert (=> b!4855800 m!5853558))

(declare-fun m!5853560 () Bool)

(assert (=> b!4855802 m!5853560))

(assert (=> b!4855726 d!1558620))

(declare-fun d!1558622 () Bool)

(declare-fun res!2072909 () Bool)

(declare-fun e!3035904 () Bool)

(assert (=> d!1558622 (=> (not res!2072909) (not e!3035904))))

(assert (=> d!1558622 (= res!2072909 (= (csize!29258 (left!40491 t!4677)) (+ (size!36697 (left!40491 (left!40491 t!4677))) (size!36697 (right!40821 (left!40491 t!4677))))))))

(assert (=> d!1558622 (= (inv!71505 (left!40491 t!4677)) e!3035904)))

(declare-fun b!4855803 () Bool)

(declare-fun res!2072910 () Bool)

(assert (=> b!4855803 (=> (not res!2072910) (not e!3035904))))

(assert (=> b!4855803 (= res!2072910 (and (not (= (left!40491 (left!40491 t!4677)) Empty!14514)) (not (= (right!40821 (left!40491 t!4677)) Empty!14514))))))

(declare-fun b!4855804 () Bool)

(declare-fun res!2072911 () Bool)

(assert (=> b!4855804 (=> (not res!2072911) (not e!3035904))))

(assert (=> b!4855804 (= res!2072911 (= (cheight!14725 (left!40491 t!4677)) (+ (max!0 (height!1894 (left!40491 (left!40491 t!4677))) (height!1894 (right!40821 (left!40491 t!4677)))) 1)))))

(declare-fun b!4855805 () Bool)

(assert (=> b!4855805 (= e!3035904 (<= 0 (cheight!14725 (left!40491 t!4677))))))

(assert (= (and d!1558622 res!2072909) b!4855803))

(assert (= (and b!4855803 res!2072910) b!4855804))

(assert (= (and b!4855804 res!2072911) b!4855805))

(declare-fun m!5853562 () Bool)

(assert (=> d!1558622 m!5853562))

(declare-fun m!5853564 () Bool)

(assert (=> d!1558622 m!5853564))

(assert (=> b!4855804 m!5853528))

(assert (=> b!4855804 m!5853530))

(assert (=> b!4855804 m!5853528))

(assert (=> b!4855804 m!5853530))

(declare-fun m!5853566 () Bool)

(assert (=> b!4855804 m!5853566))

(assert (=> b!4855701 d!1558622))

(declare-fun d!1558624 () Bool)

(assert (=> d!1558624 (= (inv!71502 (xs!17820 (left!40491 t!4677))) (<= (size!36698 (innerList!14602 (xs!17820 (left!40491 t!4677)))) 2147483647))))

(declare-fun bs!1173720 () Bool)

(assert (= bs!1173720 d!1558624))

(declare-fun m!5853568 () Bool)

(assert (=> bs!1173720 m!5853568))

(assert (=> b!4855727 d!1558624))

(declare-fun d!1558626 () Bool)

(declare-fun lt!1991350 () Bool)

(assert (=> d!1558626 (= lt!1991350 (isEmpty!29803 (list!17390 (left!40491 t!4677))))))

(assert (=> d!1558626 (= lt!1991350 (= (size!36697 (left!40491 t!4677)) 0))))

(assert (=> d!1558626 (= (isEmpty!29801 (left!40491 t!4677)) lt!1991350)))

(declare-fun bs!1173721 () Bool)

(assert (= bs!1173721 d!1558626))

(assert (=> bs!1173721 m!5853496))

(assert (=> bs!1173721 m!5853496))

(declare-fun m!5853570 () Bool)

(assert (=> bs!1173721 m!5853570))

(assert (=> bs!1173721 m!5853516))

(assert (=> b!4855676 d!1558626))

(declare-fun d!1558628 () Bool)

(declare-fun res!2072914 () Bool)

(declare-fun e!3035907 () Bool)

(assert (=> d!1558628 (=> (not res!2072914) (not e!3035907))))

(assert (=> d!1558628 (= res!2072914 (<= (size!36698 (list!17391 (xs!17820 (left!40491 t!4677)))) 512))))

(assert (=> d!1558628 (= (inv!71506 (left!40491 t!4677)) e!3035907)))

(declare-fun b!4855808 () Bool)

(declare-fun res!2072915 () Bool)

(assert (=> b!4855808 (=> (not res!2072915) (not e!3035907))))

(assert (=> b!4855808 (= res!2072915 (= (csize!29259 (left!40491 t!4677)) (size!36698 (list!17391 (xs!17820 (left!40491 t!4677))))))))

(declare-fun b!4855809 () Bool)

(assert (=> b!4855809 (= e!3035907 (and (> (csize!29259 (left!40491 t!4677)) 0) (<= (csize!29259 (left!40491 t!4677)) 512)))))

(assert (= (and d!1558628 res!2072914) b!4855808))

(assert (= (and b!4855808 res!2072915) b!4855809))

(declare-fun m!5853572 () Bool)

(assert (=> d!1558628 m!5853572))

(assert (=> d!1558628 m!5853572))

(declare-fun m!5853574 () Bool)

(assert (=> d!1558628 m!5853574))

(assert (=> b!4855808 m!5853572))

(assert (=> b!4855808 m!5853572))

(assert (=> b!4855808 m!5853574))

(assert (=> b!4855703 d!1558628))

(declare-fun b!4855812 () Bool)

(declare-fun res!2072918 () Bool)

(declare-fun e!3035909 () Bool)

(assert (=> b!4855812 (=> (not res!2072918) (not e!3035909))))

(assert (=> b!4855812 (= res!2072918 (<= (- (height!1894 (left!40491 (right!40821 t!4677))) (height!1894 (right!40821 (right!40821 t!4677)))) 1))))

(declare-fun b!4855813 () Bool)

(declare-fun e!3035908 () Bool)

(assert (=> b!4855813 (= e!3035908 e!3035909)))

(declare-fun res!2072923 () Bool)

(assert (=> b!4855813 (=> (not res!2072923) (not e!3035909))))

(assert (=> b!4855813 (= res!2072923 (<= (- 1) (- (height!1894 (left!40491 (right!40821 t!4677))) (height!1894 (right!40821 (right!40821 t!4677))))))))

(declare-fun b!4855814 () Bool)

(declare-fun res!2072921 () Bool)

(assert (=> b!4855814 (=> (not res!2072921) (not e!3035909))))

(assert (=> b!4855814 (= res!2072921 (isBalanced!3920 (left!40491 (right!40821 t!4677))))))

(declare-fun b!4855815 () Bool)

(declare-fun res!2072922 () Bool)

(assert (=> b!4855815 (=> (not res!2072922) (not e!3035909))))

(assert (=> b!4855815 (= res!2072922 (not (isEmpty!29801 (left!40491 (right!40821 t!4677)))))))

(declare-fun b!4855816 () Bool)

(assert (=> b!4855816 (= e!3035909 (not (isEmpty!29801 (right!40821 (right!40821 t!4677)))))))

(declare-fun d!1558630 () Bool)

(declare-fun res!2072919 () Bool)

(assert (=> d!1558630 (=> res!2072919 e!3035908)))

(assert (=> d!1558630 (= res!2072919 (not ((_ is Node!14514) (right!40821 t!4677))))))

(assert (=> d!1558630 (= (isBalanced!3920 (right!40821 t!4677)) e!3035908)))

(declare-fun b!4855817 () Bool)

(declare-fun res!2072920 () Bool)

(assert (=> b!4855817 (=> (not res!2072920) (not e!3035909))))

(assert (=> b!4855817 (= res!2072920 (isBalanced!3920 (right!40821 (right!40821 t!4677))))))

(assert (= (and d!1558630 (not res!2072919)) b!4855813))

(assert (= (and b!4855813 res!2072923) b!4855812))

(assert (= (and b!4855812 res!2072918) b!4855814))

(assert (= (and b!4855814 res!2072921) b!4855817))

(assert (= (and b!4855817 res!2072920) b!4855815))

(assert (= (and b!4855815 res!2072922) b!4855816))

(declare-fun m!5853576 () Bool)

(assert (=> b!4855817 m!5853576))

(declare-fun m!5853578 () Bool)

(assert (=> b!4855815 m!5853578))

(declare-fun m!5853580 () Bool)

(assert (=> b!4855816 m!5853580))

(assert (=> b!4855812 m!5853542))

(assert (=> b!4855812 m!5853544))

(assert (=> b!4855813 m!5853542))

(assert (=> b!4855813 m!5853544))

(declare-fun m!5853582 () Bool)

(assert (=> b!4855814 m!5853582))

(assert (=> b!4855678 d!1558630))

(declare-fun d!1558632 () Bool)

(declare-fun c!826053 () Bool)

(assert (=> d!1558632 (= c!826053 ((_ is Node!14514) (left!40491 (right!40821 t!4677))))))

(declare-fun e!3035910 () Bool)

(assert (=> d!1558632 (= (inv!71501 (left!40491 (right!40821 t!4677))) e!3035910)))

(declare-fun b!4855818 () Bool)

(assert (=> b!4855818 (= e!3035910 (inv!71505 (left!40491 (right!40821 t!4677))))))

(declare-fun b!4855819 () Bool)

(declare-fun e!3035911 () Bool)

(assert (=> b!4855819 (= e!3035910 e!3035911)))

(declare-fun res!2072924 () Bool)

(assert (=> b!4855819 (= res!2072924 (not ((_ is Leaf!24186) (left!40491 (right!40821 t!4677)))))))

(assert (=> b!4855819 (=> res!2072924 e!3035911)))

(declare-fun b!4855820 () Bool)

(assert (=> b!4855820 (= e!3035911 (inv!71506 (left!40491 (right!40821 t!4677))))))

(assert (= (and d!1558632 c!826053) b!4855818))

(assert (= (and d!1558632 (not c!826053)) b!4855819))

(assert (= (and b!4855819 (not res!2072924)) b!4855820))

(declare-fun m!5853584 () Bool)

(assert (=> b!4855818 m!5853584))

(declare-fun m!5853586 () Bool)

(assert (=> b!4855820 m!5853586))

(assert (=> b!4855729 d!1558632))

(declare-fun d!1558634 () Bool)

(declare-fun c!826054 () Bool)

(assert (=> d!1558634 (= c!826054 ((_ is Node!14514) (right!40821 (right!40821 t!4677))))))

(declare-fun e!3035913 () Bool)

(assert (=> d!1558634 (= (inv!71501 (right!40821 (right!40821 t!4677))) e!3035913)))

(declare-fun b!4855823 () Bool)

(assert (=> b!4855823 (= e!3035913 (inv!71505 (right!40821 (right!40821 t!4677))))))

(declare-fun b!4855824 () Bool)

(declare-fun e!3035914 () Bool)

(assert (=> b!4855824 (= e!3035913 e!3035914)))

(declare-fun res!2072927 () Bool)

(assert (=> b!4855824 (= res!2072927 (not ((_ is Leaf!24186) (right!40821 (right!40821 t!4677)))))))

(assert (=> b!4855824 (=> res!2072927 e!3035914)))

(declare-fun b!4855825 () Bool)

(assert (=> b!4855825 (= e!3035914 (inv!71506 (right!40821 (right!40821 t!4677))))))

(assert (= (and d!1558634 c!826054) b!4855823))

(assert (= (and d!1558634 (not c!826054)) b!4855824))

(assert (= (and b!4855824 (not res!2072927)) b!4855825))

(declare-fun m!5853592 () Bool)

(assert (=> b!4855823 m!5853592))

(declare-fun m!5853594 () Bool)

(assert (=> b!4855825 m!5853594))

(assert (=> b!4855729 d!1558634))

(declare-fun d!1558636 () Bool)

(declare-fun lt!1991351 () Bool)

(assert (=> d!1558636 (= lt!1991351 (isEmpty!29803 (list!17390 (right!40821 t!4677))))))

(assert (=> d!1558636 (= lt!1991351 (= (size!36697 (right!40821 t!4677)) 0))))

(assert (=> d!1558636 (= (isEmpty!29801 (right!40821 t!4677)) lt!1991351)))

(declare-fun bs!1173722 () Bool)

(assert (= bs!1173722 d!1558636))

(assert (=> bs!1173722 m!5853498))

(assert (=> bs!1173722 m!5853498))

(declare-fun m!5853596 () Bool)

(assert (=> bs!1173722 m!5853596))

(assert (=> bs!1173722 m!5853518))

(assert (=> b!4855677 d!1558636))

(declare-fun d!1558640 () Bool)

(declare-fun res!2072928 () Bool)

(declare-fun e!3035915 () Bool)

(assert (=> d!1558640 (=> (not res!2072928) (not e!3035915))))

(assert (=> d!1558640 (= res!2072928 (<= (size!36698 (list!17391 (xs!17820 (right!40821 t!4677)))) 512))))

(assert (=> d!1558640 (= (inv!71506 (right!40821 t!4677)) e!3035915)))

(declare-fun b!4855826 () Bool)

(declare-fun res!2072929 () Bool)

(assert (=> b!4855826 (=> (not res!2072929) (not e!3035915))))

(assert (=> b!4855826 (= res!2072929 (= (csize!29259 (right!40821 t!4677)) (size!36698 (list!17391 (xs!17820 (right!40821 t!4677))))))))

(declare-fun b!4855827 () Bool)

(assert (=> b!4855827 (= e!3035915 (and (> (csize!29259 (right!40821 t!4677)) 0) (<= (csize!29259 (right!40821 t!4677)) 512)))))

(assert (= (and d!1558640 res!2072928) b!4855826))

(assert (= (and b!4855826 res!2072929) b!4855827))

(declare-fun m!5853598 () Bool)

(assert (=> d!1558640 m!5853598))

(assert (=> d!1558640 m!5853598))

(declare-fun m!5853600 () Bool)

(assert (=> d!1558640 m!5853600))

(assert (=> b!4855826 m!5853598))

(assert (=> b!4855826 m!5853598))

(assert (=> b!4855826 m!5853600))

(assert (=> b!4855709 d!1558640))

(declare-fun d!1558642 () Bool)

(assert (=> d!1558642 (= (inv!71502 (xs!17820 (right!40821 t!4677))) (<= (size!36698 (innerList!14602 (xs!17820 (right!40821 t!4677)))) 2147483647))))

(declare-fun bs!1173723 () Bool)

(assert (= bs!1173723 d!1558642))

(declare-fun m!5853602 () Bool)

(assert (=> bs!1173723 m!5853602))

(assert (=> b!4855730 d!1558642))

(assert (=> b!4855624 d!1558580))

(assert (=> b!4855624 d!1558582))

(declare-fun b!4855828 () Bool)

(declare-fun e!3035916 () Bool)

(declare-fun tp!1366182 () Bool)

(assert (=> b!4855828 (= e!3035916 (and tp_is_empty!35491 tp!1366182))))

(assert (=> b!4855728 (= tp!1366176 e!3035916)))

(assert (= (and b!4855728 ((_ is Cons!55734) (innerList!14602 (xs!17820 (left!40491 t!4677))))) b!4855828))

(declare-fun b!4855829 () Bool)

(declare-fun e!3035917 () Bool)

(declare-fun tp!1366183 () Bool)

(assert (=> b!4855829 (= e!3035917 (and tp_is_empty!35491 tp!1366183))))

(assert (=> b!4855717 (= tp!1366169 e!3035917)))

(assert (= (and b!4855717 ((_ is Cons!55734) (t!363388 (innerList!14602 (xs!17820 t!4677))))) b!4855829))

(declare-fun e!3035918 () Bool)

(declare-fun b!4855830 () Bool)

(declare-fun tp!1366185 () Bool)

(declare-fun tp!1366186 () Bool)

(assert (=> b!4855830 (= e!3035918 (and (inv!71501 (left!40491 (left!40491 (right!40821 t!4677)))) tp!1366185 (inv!71501 (right!40821 (left!40491 (right!40821 t!4677)))) tp!1366186))))

(declare-fun b!4855832 () Bool)

(declare-fun e!3035919 () Bool)

(declare-fun tp!1366184 () Bool)

(assert (=> b!4855832 (= e!3035919 tp!1366184)))

(declare-fun b!4855831 () Bool)

(assert (=> b!4855831 (= e!3035918 (and (inv!71502 (xs!17820 (left!40491 (right!40821 t!4677)))) e!3035919))))

(assert (=> b!4855729 (= tp!1366180 (and (inv!71501 (left!40491 (right!40821 t!4677))) e!3035918))))

(assert (= (and b!4855729 ((_ is Node!14514) (left!40491 (right!40821 t!4677)))) b!4855830))

(assert (= b!4855831 b!4855832))

(assert (= (and b!4855729 ((_ is Leaf!24186) (left!40491 (right!40821 t!4677)))) b!4855831))

(declare-fun m!5853604 () Bool)

(assert (=> b!4855830 m!5853604))

(declare-fun m!5853606 () Bool)

(assert (=> b!4855830 m!5853606))

(declare-fun m!5853608 () Bool)

(assert (=> b!4855831 m!5853608))

(assert (=> b!4855729 m!5853488))

(declare-fun b!4855833 () Bool)

(declare-fun e!3035920 () Bool)

(declare-fun tp!1366188 () Bool)

(declare-fun tp!1366189 () Bool)

(assert (=> b!4855833 (= e!3035920 (and (inv!71501 (left!40491 (right!40821 (right!40821 t!4677)))) tp!1366188 (inv!71501 (right!40821 (right!40821 (right!40821 t!4677)))) tp!1366189))))

(declare-fun b!4855835 () Bool)

(declare-fun e!3035921 () Bool)

(declare-fun tp!1366187 () Bool)

(assert (=> b!4855835 (= e!3035921 tp!1366187)))

(declare-fun b!4855834 () Bool)

(assert (=> b!4855834 (= e!3035920 (and (inv!71502 (xs!17820 (right!40821 (right!40821 t!4677)))) e!3035921))))

(assert (=> b!4855729 (= tp!1366181 (and (inv!71501 (right!40821 (right!40821 t!4677))) e!3035920))))

(assert (= (and b!4855729 ((_ is Node!14514) (right!40821 (right!40821 t!4677)))) b!4855833))

(assert (= b!4855834 b!4855835))

(assert (= (and b!4855729 ((_ is Leaf!24186) (right!40821 (right!40821 t!4677)))) b!4855834))

(declare-fun m!5853610 () Bool)

(assert (=> b!4855833 m!5853610))

(declare-fun m!5853612 () Bool)

(assert (=> b!4855833 m!5853612))

(declare-fun m!5853614 () Bool)

(assert (=> b!4855834 m!5853614))

(assert (=> b!4855729 m!5853490))

(declare-fun b!4855836 () Bool)

(declare-fun e!3035922 () Bool)

(declare-fun tp!1366190 () Bool)

(assert (=> b!4855836 (= e!3035922 (and tp_is_empty!35491 tp!1366190))))

(assert (=> b!4855731 (= tp!1366179 e!3035922)))

(assert (= (and b!4855731 ((_ is Cons!55734) (innerList!14602 (xs!17820 (right!40821 t!4677))))) b!4855836))

(declare-fun tp!1366192 () Bool)

(declare-fun b!4855837 () Bool)

(declare-fun tp!1366193 () Bool)

(declare-fun e!3035923 () Bool)

(assert (=> b!4855837 (= e!3035923 (and (inv!71501 (left!40491 (left!40491 (left!40491 t!4677)))) tp!1366192 (inv!71501 (right!40821 (left!40491 (left!40491 t!4677)))) tp!1366193))))

(declare-fun b!4855839 () Bool)

(declare-fun e!3035924 () Bool)

(declare-fun tp!1366191 () Bool)

(assert (=> b!4855839 (= e!3035924 tp!1366191)))

(declare-fun b!4855838 () Bool)

(assert (=> b!4855838 (= e!3035923 (and (inv!71502 (xs!17820 (left!40491 (left!40491 t!4677)))) e!3035924))))

(assert (=> b!4855726 (= tp!1366177 (and (inv!71501 (left!40491 (left!40491 t!4677))) e!3035923))))

(assert (= (and b!4855726 ((_ is Node!14514) (left!40491 (left!40491 t!4677)))) b!4855837))

(assert (= b!4855838 b!4855839))

(assert (= (and b!4855726 ((_ is Leaf!24186) (left!40491 (left!40491 t!4677)))) b!4855838))

(declare-fun m!5853616 () Bool)

(assert (=> b!4855837 m!5853616))

(declare-fun m!5853618 () Bool)

(assert (=> b!4855837 m!5853618))

(declare-fun m!5853620 () Bool)

(assert (=> b!4855838 m!5853620))

(assert (=> b!4855726 m!5853482))

(declare-fun b!4855840 () Bool)

(declare-fun tp!1366195 () Bool)

(declare-fun e!3035925 () Bool)

(declare-fun tp!1366196 () Bool)

(assert (=> b!4855840 (= e!3035925 (and (inv!71501 (left!40491 (right!40821 (left!40491 t!4677)))) tp!1366195 (inv!71501 (right!40821 (right!40821 (left!40491 t!4677)))) tp!1366196))))

(declare-fun b!4855842 () Bool)

(declare-fun e!3035926 () Bool)

(declare-fun tp!1366194 () Bool)

(assert (=> b!4855842 (= e!3035926 tp!1366194)))

(declare-fun b!4855841 () Bool)

(assert (=> b!4855841 (= e!3035925 (and (inv!71502 (xs!17820 (right!40821 (left!40491 t!4677)))) e!3035926))))

(assert (=> b!4855726 (= tp!1366178 (and (inv!71501 (right!40821 (left!40491 t!4677))) e!3035925))))

(assert (= (and b!4855726 ((_ is Node!14514) (right!40821 (left!40491 t!4677)))) b!4855840))

(assert (= b!4855841 b!4855842))

(assert (= (and b!4855726 ((_ is Leaf!24186) (right!40821 (left!40491 t!4677)))) b!4855841))

(declare-fun m!5853622 () Bool)

(assert (=> b!4855840 m!5853622))

(declare-fun m!5853624 () Bool)

(assert (=> b!4855840 m!5853624))

(declare-fun m!5853626 () Bool)

(assert (=> b!4855841 m!5853626))

(assert (=> b!4855726 m!5853484))

(check-sat (not d!1558596) (not b!4855818) (not b!4855834) (not b!4855825) (not b!4855842) (not b!4855729) (not b!4855780) (not d!1558612) (not b!4855737) (not b!4855830) (not b!4855817) (not b!4855836) (not b!4855837) (not b!4855820) (not b!4855763) (not b!4855797) (not d!1558610) (not b!4855808) tp_is_empty!35491 (not d!1558614) (not b!4855792) (not d!1558626) (not b!4855773) (not b!4855840) (not d!1558590) (not b!4855748) (not b!4855772) (not b!4855774) (not b!4855812) (not b!4855815) (not b!4855778) (not b!4855831) (not d!1558640) (not b!4855813) (not d!1558624) (not b!4855814) (not d!1558636) (not b!4855799) (not b!4855769) (not b!4855823) (not b!4855800) (not b!4855833) (not b!4855826) (not d!1558622) (not b!4855839) (not b!4855828) (not b!4855829) (not b!4855770) (not b!4855841) (not b!4855838) (not b!4855726) (not b!4855832) (not b!4855802) (not b!4855804) (not d!1558642) (not b!4855749) (not b!4855835) (not b!4855816) (not b!4855771) (not d!1558628))
(check-sat)
