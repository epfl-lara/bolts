; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!747722 () Bool)

(assert start!747722)

(declare-fun b!7916753 () Bool)

(declare-fun e!4673058 () Bool)

(declare-datatypes ((T!145622 0))(
  ( (T!145623 (val!32034 Int)) )
))
(declare-datatypes ((List!74546 0))(
  ( (Nil!74422) (Cons!74422 (h!80870 T!145622) (t!390067 List!74546)) )
))
(declare-datatypes ((IArray!31813 0))(
  ( (IArray!31814 (innerList!15964 List!74546)) )
))
(declare-datatypes ((Conc!15876 0))(
  ( (Node!15876 (left!56834 Conc!15876) (right!57164 Conc!15876) (csize!31982 Int) (cheight!16087 Int)) (Leaf!30195 (xs!19260 IArray!31813) (csize!31983 Int)) (Empty!15876) )
))
(declare-fun c!5365 () Conc!15876)

(declare-fun e!4673061 () Bool)

(declare-fun inv!95578 (IArray!31813) Bool)

(assert (=> b!7916753 (= e!4673058 (and (inv!95578 (xs!19260 c!5365)) e!4673061))))

(declare-fun b!7916754 () Bool)

(declare-fun e!4673062 () Bool)

(declare-fun e!4673057 () Bool)

(assert (=> b!7916754 (= e!4673062 e!4673057)))

(declare-fun res!3142114 () Bool)

(assert (=> b!7916754 (=> (not res!3142114) (not e!4673057))))

(declare-fun lt!2690519 () List!74546)

(declare-fun lt!2690524 () List!74546)

(assert (=> b!7916754 (= res!3142114 (= lt!2690519 lt!2690524))))

(declare-fun lt!2690521 () List!74546)

(declare-fun lt!2690517 () List!74546)

(declare-fun ++!18240 (List!74546 List!74546) List!74546)

(assert (=> b!7916754 (= lt!2690524 (++!18240 lt!2690521 lt!2690517))))

(declare-fun ll!14 () List!74546)

(assert (=> b!7916754 (= lt!2690517 (Cons!74422 (h!80870 ll!14) Nil!74422))))

(declare-fun list!19371 (Conc!15876) List!74546)

(assert (=> b!7916754 (= lt!2690521 (list!19371 c!5365))))

(declare-fun b!7916755 () Bool)

(declare-fun res!3142116 () Bool)

(declare-fun e!4673059 () Bool)

(assert (=> b!7916755 (=> (not res!3142116) (not e!4673059))))

(get-info :version)

(assert (=> b!7916755 (= res!3142116 (not ((_ is Nil!74422) ll!14)))))

(declare-fun b!7916756 () Bool)

(declare-fun tp!2357506 () Bool)

(assert (=> b!7916756 (= e!4673061 tp!2357506)))

(declare-fun b!7916758 () Bool)

(declare-fun e!4673060 () Bool)

(declare-fun tp_is_empty!53177 () Bool)

(declare-fun tp!2357503 () Bool)

(assert (=> b!7916758 (= e!4673060 (and tp_is_empty!53177 tp!2357503))))

(declare-fun lt!2690525 () List!74546)

(declare-fun b!7916759 () Bool)

(declare-fun $colon$colon!3419 (List!74546 T!145622) List!74546)

(assert (=> b!7916759 (= e!4673057 (not (= lt!2690525 (++!18240 lt!2690521 ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14))))))))

(declare-fun lt!2690518 () List!74546)

(assert (=> b!7916759 (= lt!2690525 (++!18240 lt!2690521 lt!2690518))))

(assert (=> b!7916759 (= lt!2690525 (++!18240 lt!2690524 (t!390067 ll!14)))))

(assert (=> b!7916759 (= lt!2690518 (++!18240 lt!2690517 (t!390067 ll!14)))))

(declare-datatypes ((Unit!169545 0))(
  ( (Unit!169546) )
))
(declare-fun lt!2690520 () Unit!169545)

(declare-fun lemmaConcatAssociativity!3146 (List!74546 List!74546 List!74546) Unit!169545)

(assert (=> b!7916759 (= lt!2690520 (lemmaConcatAssociativity!3146 lt!2690521 lt!2690517 (t!390067 ll!14)))))

(declare-fun b!7916760 () Bool)

(assert (=> b!7916760 (= e!4673059 e!4673062)))

(declare-fun res!3142113 () Bool)

(assert (=> b!7916760 (=> (not res!3142113) (not e!4673062))))

(declare-fun lt!2690523 () Conc!15876)

(assert (=> b!7916760 (= res!3142113 (= (list!19371 lt!2690523) (++!18240 lt!2690519 (t!390067 ll!14))))))

(declare-fun lt!2690522 () Conc!15876)

(assert (=> b!7916760 (= lt!2690519 (list!19371 lt!2690522))))

(declare-fun rec!57 (List!74546 Conc!15876) Conc!15876)

(assert (=> b!7916760 (= lt!2690523 (rec!57 (t!390067 ll!14) lt!2690522))))

(declare-fun append!1124 (Conc!15876 T!145622) Conc!15876)

(assert (=> b!7916760 (= lt!2690522 (append!1124 c!5365 (h!80870 ll!14)))))

(declare-fun res!3142115 () Bool)

(assert (=> start!747722 (=> (not res!3142115) (not e!4673059))))

(declare-fun isBalanced!4502 (Conc!15876) Bool)

(assert (=> start!747722 (= res!3142115 (isBalanced!4502 c!5365))))

(assert (=> start!747722 e!4673059))

(declare-fun inv!95579 (Conc!15876) Bool)

(assert (=> start!747722 (and (inv!95579 c!5365) e!4673058)))

(assert (=> start!747722 e!4673060))

(declare-fun b!7916757 () Bool)

(declare-fun tp!2357505 () Bool)

(declare-fun tp!2357504 () Bool)

(assert (=> b!7916757 (= e!4673058 (and (inv!95579 (left!56834 c!5365)) tp!2357505 (inv!95579 (right!57164 c!5365)) tp!2357504))))

(assert (= (and start!747722 res!3142115) b!7916755))

(assert (= (and b!7916755 res!3142116) b!7916760))

(assert (= (and b!7916760 res!3142113) b!7916754))

(assert (= (and b!7916754 res!3142114) b!7916759))

(assert (= (and start!747722 ((_ is Node!15876) c!5365)) b!7916757))

(assert (= b!7916753 b!7916756))

(assert (= (and start!747722 ((_ is Leaf!30195) c!5365)) b!7916753))

(assert (= (and start!747722 ((_ is Cons!74422) ll!14)) b!7916758))

(declare-fun m!8291704 () Bool)

(assert (=> b!7916754 m!8291704))

(declare-fun m!8291706 () Bool)

(assert (=> b!7916754 m!8291706))

(declare-fun m!8291708 () Bool)

(assert (=> b!7916760 m!8291708))

(declare-fun m!8291710 () Bool)

(assert (=> b!7916760 m!8291710))

(declare-fun m!8291712 () Bool)

(assert (=> b!7916760 m!8291712))

(declare-fun m!8291714 () Bool)

(assert (=> b!7916760 m!8291714))

(declare-fun m!8291716 () Bool)

(assert (=> b!7916760 m!8291716))

(declare-fun m!8291718 () Bool)

(assert (=> start!747722 m!8291718))

(declare-fun m!8291720 () Bool)

(assert (=> start!747722 m!8291720))

(declare-fun m!8291722 () Bool)

(assert (=> b!7916759 m!8291722))

(declare-fun m!8291724 () Bool)

(assert (=> b!7916759 m!8291724))

(declare-fun m!8291726 () Bool)

(assert (=> b!7916759 m!8291726))

(declare-fun m!8291728 () Bool)

(assert (=> b!7916759 m!8291728))

(assert (=> b!7916759 m!8291728))

(declare-fun m!8291730 () Bool)

(assert (=> b!7916759 m!8291730))

(declare-fun m!8291732 () Bool)

(assert (=> b!7916759 m!8291732))

(declare-fun m!8291734 () Bool)

(assert (=> b!7916753 m!8291734))

(declare-fun m!8291736 () Bool)

(assert (=> b!7916757 m!8291736))

(declare-fun m!8291738 () Bool)

(assert (=> b!7916757 m!8291738))

(check-sat tp_is_empty!53177 (not b!7916757) (not b!7916756) (not b!7916758) (not b!7916753) (not b!7916760) (not b!7916754) (not b!7916759) (not start!747722))
(check-sat)
(get-model)

(declare-fun d!2361927 () Bool)

(declare-fun c!1452721 () Bool)

(assert (=> d!2361927 (= c!1452721 ((_ is Node!15876) (left!56834 c!5365)))))

(declare-fun e!4673075 () Bool)

(assert (=> d!2361927 (= (inv!95579 (left!56834 c!5365)) e!4673075)))

(declare-fun b!7916779 () Bool)

(declare-fun inv!95582 (Conc!15876) Bool)

(assert (=> b!7916779 (= e!4673075 (inv!95582 (left!56834 c!5365)))))

(declare-fun b!7916780 () Bool)

(declare-fun e!4673076 () Bool)

(assert (=> b!7916780 (= e!4673075 e!4673076)))

(declare-fun res!3142123 () Bool)

(assert (=> b!7916780 (= res!3142123 (not ((_ is Leaf!30195) (left!56834 c!5365))))))

(assert (=> b!7916780 (=> res!3142123 e!4673076)))

(declare-fun b!7916781 () Bool)

(declare-fun inv!95583 (Conc!15876) Bool)

(assert (=> b!7916781 (= e!4673076 (inv!95583 (left!56834 c!5365)))))

(assert (= (and d!2361927 c!1452721) b!7916779))

(assert (= (and d!2361927 (not c!1452721)) b!7916780))

(assert (= (and b!7916780 (not res!3142123)) b!7916781))

(declare-fun m!8291748 () Bool)

(assert (=> b!7916779 m!8291748))

(declare-fun m!8291750 () Bool)

(assert (=> b!7916781 m!8291750))

(assert (=> b!7916757 d!2361927))

(declare-fun d!2361933 () Bool)

(declare-fun c!1452722 () Bool)

(assert (=> d!2361933 (= c!1452722 ((_ is Node!15876) (right!57164 c!5365)))))

(declare-fun e!4673077 () Bool)

(assert (=> d!2361933 (= (inv!95579 (right!57164 c!5365)) e!4673077)))

(declare-fun b!7916782 () Bool)

(assert (=> b!7916782 (= e!4673077 (inv!95582 (right!57164 c!5365)))))

(declare-fun b!7916783 () Bool)

(declare-fun e!4673078 () Bool)

(assert (=> b!7916783 (= e!4673077 e!4673078)))

(declare-fun res!3142124 () Bool)

(assert (=> b!7916783 (= res!3142124 (not ((_ is Leaf!30195) (right!57164 c!5365))))))

(assert (=> b!7916783 (=> res!3142124 e!4673078)))

(declare-fun b!7916784 () Bool)

(assert (=> b!7916784 (= e!4673078 (inv!95583 (right!57164 c!5365)))))

(assert (= (and d!2361933 c!1452722) b!7916782))

(assert (= (and d!2361933 (not c!1452722)) b!7916783))

(assert (= (and b!7916783 (not res!3142124)) b!7916784))

(declare-fun m!8291752 () Bool)

(assert (=> b!7916782 m!8291752))

(declare-fun m!8291754 () Bool)

(assert (=> b!7916784 m!8291754))

(assert (=> b!7916757 d!2361933))

(declare-fun b!7916817 () Bool)

(declare-fun e!4673094 () Bool)

(declare-fun e!4673093 () Bool)

(assert (=> b!7916817 (= e!4673094 e!4673093)))

(declare-fun res!3142147 () Bool)

(assert (=> b!7916817 (=> (not res!3142147) (not e!4673093))))

(declare-fun height!2192 (Conc!15876) Int)

(assert (=> b!7916817 (= res!3142147 (<= (- 1) (- (height!2192 (left!56834 c!5365)) (height!2192 (right!57164 c!5365)))))))

(declare-fun b!7916818 () Bool)

(declare-fun res!3142143 () Bool)

(assert (=> b!7916818 (=> (not res!3142143) (not e!4673093))))

(assert (=> b!7916818 (= res!3142143 (isBalanced!4502 (left!56834 c!5365)))))

(declare-fun b!7916819 () Bool)

(declare-fun res!3142145 () Bool)

(assert (=> b!7916819 (=> (not res!3142145) (not e!4673093))))

(declare-fun isEmpty!42739 (Conc!15876) Bool)

(assert (=> b!7916819 (= res!3142145 (not (isEmpty!42739 (left!56834 c!5365))))))

(declare-fun b!7916820 () Bool)

(declare-fun res!3142148 () Bool)

(assert (=> b!7916820 (=> (not res!3142148) (not e!4673093))))

(assert (=> b!7916820 (= res!3142148 (<= (- (height!2192 (left!56834 c!5365)) (height!2192 (right!57164 c!5365))) 1))))

(declare-fun b!7916821 () Bool)

(declare-fun res!3142146 () Bool)

(assert (=> b!7916821 (=> (not res!3142146) (not e!4673093))))

(assert (=> b!7916821 (= res!3142146 (isBalanced!4502 (right!57164 c!5365)))))

(declare-fun b!7916822 () Bool)

(assert (=> b!7916822 (= e!4673093 (not (isEmpty!42739 (right!57164 c!5365))))))

(declare-fun d!2361935 () Bool)

(declare-fun res!3142144 () Bool)

(assert (=> d!2361935 (=> res!3142144 e!4673094)))

(assert (=> d!2361935 (= res!3142144 (not ((_ is Node!15876) c!5365)))))

(assert (=> d!2361935 (= (isBalanced!4502 c!5365) e!4673094)))

(assert (= (and d!2361935 (not res!3142144)) b!7916817))

(assert (= (and b!7916817 res!3142147) b!7916820))

(assert (= (and b!7916820 res!3142148) b!7916818))

(assert (= (and b!7916818 res!3142143) b!7916821))

(assert (= (and b!7916821 res!3142146) b!7916819))

(assert (= (and b!7916819 res!3142145) b!7916822))

(declare-fun m!8291770 () Bool)

(assert (=> b!7916819 m!8291770))

(declare-fun m!8291772 () Bool)

(assert (=> b!7916818 m!8291772))

(declare-fun m!8291774 () Bool)

(assert (=> b!7916822 m!8291774))

(declare-fun m!8291776 () Bool)

(assert (=> b!7916821 m!8291776))

(declare-fun m!8291778 () Bool)

(assert (=> b!7916820 m!8291778))

(declare-fun m!8291780 () Bool)

(assert (=> b!7916820 m!8291780))

(assert (=> b!7916817 m!8291778))

(assert (=> b!7916817 m!8291780))

(assert (=> start!747722 d!2361935))

(declare-fun d!2361939 () Bool)

(declare-fun c!1452732 () Bool)

(assert (=> d!2361939 (= c!1452732 ((_ is Node!15876) c!5365))))

(declare-fun e!4673097 () Bool)

(assert (=> d!2361939 (= (inv!95579 c!5365) e!4673097)))

(declare-fun b!7916827 () Bool)

(assert (=> b!7916827 (= e!4673097 (inv!95582 c!5365))))

(declare-fun b!7916828 () Bool)

(declare-fun e!4673098 () Bool)

(assert (=> b!7916828 (= e!4673097 e!4673098)))

(declare-fun res!3142149 () Bool)

(assert (=> b!7916828 (= res!3142149 (not ((_ is Leaf!30195) c!5365)))))

(assert (=> b!7916828 (=> res!3142149 e!4673098)))

(declare-fun b!7916829 () Bool)

(assert (=> b!7916829 (= e!4673098 (inv!95583 c!5365))))

(assert (= (and d!2361939 c!1452732) b!7916827))

(assert (= (and d!2361939 (not c!1452732)) b!7916828))

(assert (= (and b!7916828 (not res!3142149)) b!7916829))

(declare-fun m!8291786 () Bool)

(assert (=> b!7916827 m!8291786))

(declare-fun m!8291790 () Bool)

(assert (=> b!7916829 m!8291790))

(assert (=> start!747722 d!2361939))

(declare-fun d!2361941 () Bool)

(declare-fun c!1452737 () Bool)

(assert (=> d!2361941 (= c!1452737 ((_ is Empty!15876) lt!2690523))))

(declare-fun e!4673103 () List!74546)

(assert (=> d!2361941 (= (list!19371 lt!2690523) e!4673103)))

(declare-fun b!7916838 () Bool)

(assert (=> b!7916838 (= e!4673103 Nil!74422)))

(declare-fun b!7916840 () Bool)

(declare-fun e!4673104 () List!74546)

(declare-fun list!19373 (IArray!31813) List!74546)

(assert (=> b!7916840 (= e!4673104 (list!19373 (xs!19260 lt!2690523)))))

(declare-fun b!7916841 () Bool)

(assert (=> b!7916841 (= e!4673104 (++!18240 (list!19371 (left!56834 lt!2690523)) (list!19371 (right!57164 lt!2690523))))))

(declare-fun b!7916839 () Bool)

(assert (=> b!7916839 (= e!4673103 e!4673104)))

(declare-fun c!1452738 () Bool)

(assert (=> b!7916839 (= c!1452738 ((_ is Leaf!30195) lt!2690523))))

(assert (= (and d!2361941 c!1452737) b!7916838))

(assert (= (and d!2361941 (not c!1452737)) b!7916839))

(assert (= (and b!7916839 c!1452738) b!7916840))

(assert (= (and b!7916839 (not c!1452738)) b!7916841))

(declare-fun m!8291794 () Bool)

(assert (=> b!7916840 m!8291794))

(declare-fun m!8291796 () Bool)

(assert (=> b!7916841 m!8291796))

(declare-fun m!8291798 () Bool)

(assert (=> b!7916841 m!8291798))

(assert (=> b!7916841 m!8291796))

(assert (=> b!7916841 m!8291798))

(declare-fun m!8291800 () Bool)

(assert (=> b!7916841 m!8291800))

(assert (=> b!7916760 d!2361941))

(declare-fun d!2361945 () Bool)

(declare-fun e!4673121 () Bool)

(assert (=> d!2361945 e!4673121))

(declare-fun res!3142173 () Bool)

(assert (=> d!2361945 (=> (not res!3142173) (not e!4673121))))

(declare-fun lt!2690542 () Conc!15876)

(assert (=> d!2361945 (= res!3142173 (= (list!19371 lt!2690542) (++!18240 (list!19371 lt!2690522) (t!390067 ll!14))))))

(declare-fun e!4673122 () Conc!15876)

(assert (=> d!2361945 (= lt!2690542 e!4673122)))

(declare-fun c!1452746 () Bool)

(assert (=> d!2361945 (= c!1452746 ((_ is Nil!74422) (t!390067 ll!14)))))

(assert (=> d!2361945 (isBalanced!4502 lt!2690522)))

(assert (=> d!2361945 (= (rec!57 (t!390067 ll!14) lt!2690522) lt!2690542)))

(declare-fun b!7916877 () Bool)

(assert (=> b!7916877 (= e!4673122 lt!2690522)))

(declare-fun b!7916878 () Bool)

(assert (=> b!7916878 (= e!4673122 (rec!57 (t!390067 (t!390067 ll!14)) (append!1124 lt!2690522 (h!80870 (t!390067 ll!14)))))))

(declare-fun lt!2690541 () List!74546)

(assert (=> b!7916878 (= lt!2690541 (list!19371 lt!2690522))))

(declare-fun lt!2690540 () List!74546)

(assert (=> b!7916878 (= lt!2690540 (Cons!74422 (h!80870 (t!390067 ll!14)) Nil!74422))))

(declare-fun lt!2690543 () Unit!169545)

(assert (=> b!7916878 (= lt!2690543 (lemmaConcatAssociativity!3146 lt!2690541 lt!2690540 (t!390067 (t!390067 ll!14))))))

(assert (=> b!7916878 (= (++!18240 (++!18240 lt!2690541 lt!2690540) (t!390067 (t!390067 ll!14))) (++!18240 lt!2690541 (++!18240 lt!2690540 (t!390067 (t!390067 ll!14)))))))

(declare-fun lt!2690544 () Unit!169545)

(assert (=> b!7916878 (= lt!2690544 lt!2690543)))

(declare-fun b!7916879 () Bool)

(assert (=> b!7916879 (= e!4673121 (isBalanced!4502 lt!2690542))))

(assert (= (and d!2361945 c!1452746) b!7916877))

(assert (= (and d!2361945 (not c!1452746)) b!7916878))

(assert (= (and d!2361945 res!3142173) b!7916879))

(declare-fun m!8291842 () Bool)

(assert (=> d!2361945 m!8291842))

(assert (=> d!2361945 m!8291708))

(assert (=> d!2361945 m!8291708))

(declare-fun m!8291844 () Bool)

(assert (=> d!2361945 m!8291844))

(declare-fun m!8291846 () Bool)

(assert (=> d!2361945 m!8291846))

(declare-fun m!8291848 () Bool)

(assert (=> b!7916878 m!8291848))

(declare-fun m!8291850 () Bool)

(assert (=> b!7916878 m!8291850))

(declare-fun m!8291852 () Bool)

(assert (=> b!7916878 m!8291852))

(assert (=> b!7916878 m!8291708))

(declare-fun m!8291854 () Bool)

(assert (=> b!7916878 m!8291854))

(declare-fun m!8291856 () Bool)

(assert (=> b!7916878 m!8291856))

(declare-fun m!8291858 () Bool)

(assert (=> b!7916878 m!8291858))

(assert (=> b!7916878 m!8291850))

(assert (=> b!7916878 m!8291848))

(declare-fun m!8291860 () Bool)

(assert (=> b!7916878 m!8291860))

(assert (=> b!7916878 m!8291854))

(declare-fun m!8291862 () Bool)

(assert (=> b!7916879 m!8291862))

(assert (=> b!7916760 d!2361945))

(declare-fun d!2361957 () Bool)

(declare-fun c!1452747 () Bool)

(assert (=> d!2361957 (= c!1452747 ((_ is Empty!15876) lt!2690522))))

(declare-fun e!4673123 () List!74546)

(assert (=> d!2361957 (= (list!19371 lt!2690522) e!4673123)))

(declare-fun b!7916880 () Bool)

(assert (=> b!7916880 (= e!4673123 Nil!74422)))

(declare-fun b!7916882 () Bool)

(declare-fun e!4673124 () List!74546)

(assert (=> b!7916882 (= e!4673124 (list!19373 (xs!19260 lt!2690522)))))

(declare-fun b!7916883 () Bool)

(assert (=> b!7916883 (= e!4673124 (++!18240 (list!19371 (left!56834 lt!2690522)) (list!19371 (right!57164 lt!2690522))))))

(declare-fun b!7916881 () Bool)

(assert (=> b!7916881 (= e!4673123 e!4673124)))

(declare-fun c!1452748 () Bool)

(assert (=> b!7916881 (= c!1452748 ((_ is Leaf!30195) lt!2690522))))

(assert (= (and d!2361957 c!1452747) b!7916880))

(assert (= (and d!2361957 (not c!1452747)) b!7916881))

(assert (= (and b!7916881 c!1452748) b!7916882))

(assert (= (and b!7916881 (not c!1452748)) b!7916883))

(declare-fun m!8291864 () Bool)

(assert (=> b!7916882 m!8291864))

(declare-fun m!8291866 () Bool)

(assert (=> b!7916883 m!8291866))

(declare-fun m!8291868 () Bool)

(assert (=> b!7916883 m!8291868))

(assert (=> b!7916883 m!8291866))

(assert (=> b!7916883 m!8291868))

(declare-fun m!8291870 () Bool)

(assert (=> b!7916883 m!8291870))

(assert (=> b!7916760 d!2361957))

(declare-fun b!7916907 () Bool)

(declare-fun res!3142181 () Bool)

(declare-fun e!4673137 () Bool)

(assert (=> b!7916907 (=> (not res!3142181) (not e!4673137))))

(declare-fun lt!2690562 () List!74546)

(declare-fun size!43203 (List!74546) Int)

(assert (=> b!7916907 (= res!3142181 (= (size!43203 lt!2690562) (+ (size!43203 lt!2690519) (size!43203 (t!390067 ll!14)))))))

(declare-fun b!7916906 () Bool)

(declare-fun e!4673138 () List!74546)

(assert (=> b!7916906 (= e!4673138 (Cons!74422 (h!80870 lt!2690519) (++!18240 (t!390067 lt!2690519) (t!390067 ll!14))))))

(declare-fun d!2361959 () Bool)

(assert (=> d!2361959 e!4673137))

(declare-fun res!3142182 () Bool)

(assert (=> d!2361959 (=> (not res!3142182) (not e!4673137))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15766 (List!74546) (InoxSet T!145622))

(assert (=> d!2361959 (= res!3142182 (= (content!15766 lt!2690562) ((_ map or) (content!15766 lt!2690519) (content!15766 (t!390067 ll!14)))))))

(assert (=> d!2361959 (= lt!2690562 e!4673138)))

(declare-fun c!1452757 () Bool)

(assert (=> d!2361959 (= c!1452757 ((_ is Nil!74422) lt!2690519))))

(assert (=> d!2361959 (= (++!18240 lt!2690519 (t!390067 ll!14)) lt!2690562)))

(declare-fun b!7916905 () Bool)

(assert (=> b!7916905 (= e!4673138 (t!390067 ll!14))))

(declare-fun b!7916908 () Bool)

(assert (=> b!7916908 (= e!4673137 (or (not (= (t!390067 ll!14) Nil!74422)) (= lt!2690562 lt!2690519)))))

(assert (= (and d!2361959 c!1452757) b!7916905))

(assert (= (and d!2361959 (not c!1452757)) b!7916906))

(assert (= (and d!2361959 res!3142182) b!7916907))

(assert (= (and b!7916907 res!3142181) b!7916908))

(declare-fun m!8291902 () Bool)

(assert (=> b!7916907 m!8291902))

(declare-fun m!8291904 () Bool)

(assert (=> b!7916907 m!8291904))

(declare-fun m!8291906 () Bool)

(assert (=> b!7916907 m!8291906))

(declare-fun m!8291908 () Bool)

(assert (=> b!7916906 m!8291908))

(declare-fun m!8291910 () Bool)

(assert (=> d!2361959 m!8291910))

(declare-fun m!8291912 () Bool)

(assert (=> d!2361959 m!8291912))

(declare-fun m!8291914 () Bool)

(assert (=> d!2361959 m!8291914))

(assert (=> b!7916760 d!2361959))

(declare-fun bm!734638 () Bool)

(declare-fun c!1452791 () Bool)

(declare-fun c!1452790 () Bool)

(assert (=> bm!734638 (= c!1452791 c!1452790)))

(declare-fun e!4673189 () Conc!15876)

(declare-fun call!734651 () Conc!15876)

(declare-fun <>!413 (Conc!15876 Conc!15876) Conc!15876)

(assert (=> bm!734638 (= call!734651 (<>!413 (ite c!1452790 (left!56834 c!5365) c!5365) e!4673189))))

(declare-fun b!7917010 () Bool)

(declare-fun e!4673191 () Conc!15876)

(declare-fun call!734643 () Conc!15876)

(declare-fun lt!2690661 () Conc!15876)

(assert (=> b!7917010 (= e!4673191 (<>!413 call!734643 (right!57164 lt!2690661)))))

(declare-fun lt!2690671 () List!74546)

(declare-fun call!734645 () List!74546)

(assert (=> b!7917010 (= lt!2690671 call!734645)))

(declare-fun lt!2690674 () List!74546)

(assert (=> b!7917010 (= lt!2690674 (list!19371 (left!56834 lt!2690661)))))

(declare-fun lt!2690666 () List!74546)

(assert (=> b!7917010 (= lt!2690666 (list!19371 (right!57164 lt!2690661)))))

(declare-fun lt!2690673 () Unit!169545)

(declare-fun lemmaConcatAssociativity!3148 (List!74546 List!74546 List!74546) Unit!169545)

(assert (=> b!7917010 (= lt!2690673 (lemmaConcatAssociativity!3148 lt!2690671 lt!2690674 lt!2690666))))

(declare-fun call!734647 () List!74546)

(declare-fun call!734650 () List!74546)

(assert (=> b!7917010 (= (++!18240 call!734647 lt!2690666) (++!18240 lt!2690671 call!734650))))

(declare-fun lt!2690662 () Unit!169545)

(assert (=> b!7917010 (= lt!2690662 lt!2690673)))

(declare-fun lt!2690675 () List!74546)

(assert (=> b!7917010 (= lt!2690675 call!734645)))

(declare-fun lt!2690670 () List!74546)

(declare-fun call!734652 () List!74546)

(assert (=> b!7917010 (= lt!2690670 call!734652)))

(declare-fun lt!2690676 () List!74546)

(assert (=> b!7917010 (= lt!2690676 (Cons!74422 (h!80870 ll!14) Nil!74422))))

(declare-fun lt!2690664 () Unit!169545)

(declare-fun call!734649 () Unit!169545)

(assert (=> b!7917010 (= lt!2690664 call!734649)))

(declare-fun call!734648 () List!74546)

(declare-fun call!734646 () List!74546)

(assert (=> b!7917010 (= (++!18240 call!734646 lt!2690676) (++!18240 lt!2690675 call!734648))))

(declare-fun lt!2690665 () Unit!169545)

(assert (=> b!7917010 (= lt!2690665 lt!2690664)))

(declare-fun b!7917011 () Bool)

(declare-fun c!1452787 () Bool)

(assert (=> b!7917011 (= e!4673189 (ite c!1452787 lt!2690661 (left!56834 lt!2690661)))))

(declare-fun bm!734639 () Bool)

(assert (=> bm!734639 (= call!734643 call!734651)))

(declare-fun b!7917012 () Bool)

(assert (=> b!7917012 (= e!4673191 call!734643)))

(declare-fun lt!2690677 () List!74546)

(assert (=> b!7917012 (= lt!2690677 call!734645)))

(declare-fun lt!2690660 () List!74546)

(assert (=> b!7917012 (= lt!2690660 call!734652)))

(declare-fun lt!2690669 () List!74546)

(assert (=> b!7917012 (= lt!2690669 (Cons!74422 (h!80870 ll!14) Nil!74422))))

(declare-fun lt!2690667 () Unit!169545)

(assert (=> b!7917012 (= lt!2690667 call!734649)))

(assert (=> b!7917012 (= call!734646 call!734648)))

(declare-fun lt!2690672 () Unit!169545)

(assert (=> b!7917012 (= lt!2690672 lt!2690667)))

(declare-fun b!7917013 () Bool)

(declare-fun res!3142208 () Bool)

(declare-fun e!4673190 () Bool)

(assert (=> b!7917013 (=> (not res!3142208) (not e!4673190))))

(declare-fun lt!2690668 () Conc!15876)

(assert (=> b!7917013 (= res!3142208 (<= (height!2192 c!5365) (height!2192 lt!2690668)))))

(declare-fun b!7917014 () Bool)

(declare-fun c!1452789 () Bool)

(assert (=> b!7917014 (= c!1452789 (< (csize!31983 c!5365) 512))))

(declare-fun e!4673192 () Conc!15876)

(declare-fun e!4673193 () Conc!15876)

(assert (=> b!7917014 (= e!4673192 e!4673193)))

(declare-fun b!7917015 () Bool)

(declare-fun $colon+!299 (List!74546 T!145622) List!74546)

(assert (=> b!7917015 (= e!4673190 (= (list!19371 lt!2690668) ($colon+!299 (list!19371 c!5365) (h!80870 ll!14))))))

(declare-fun bm!734640 () Bool)

(assert (=> bm!734640 (= call!734645 (list!19371 (left!56834 c!5365)))))

(declare-fun b!7917016 () Bool)

(declare-fun append!1126 (IArray!31813 T!145622) IArray!31813)

(assert (=> b!7917016 (= e!4673193 (Leaf!30195 (append!1126 (xs!19260 c!5365) (h!80870 ll!14)) (+ (csize!31983 c!5365) 1)))))

(declare-fun lt!2690663 () List!74546)

(assert (=> b!7917016 (= lt!2690663 ($colon+!299 (list!19373 (xs!19260 c!5365)) (h!80870 ll!14)))))

(declare-fun d!2361965 () Bool)

(assert (=> d!2361965 e!4673190))

(declare-fun res!3142206 () Bool)

(assert (=> d!2361965 (=> (not res!3142206) (not e!4673190))))

(assert (=> d!2361965 (= res!3142206 (isBalanced!4502 lt!2690668))))

(declare-fun e!4673194 () Conc!15876)

(assert (=> d!2361965 (= lt!2690668 e!4673194)))

(declare-fun c!1452788 () Bool)

(assert (=> d!2361965 (= c!1452788 ((_ is Empty!15876) c!5365))))

(assert (=> d!2361965 (isBalanced!4502 c!5365)))

(assert (=> d!2361965 (= (append!1124 c!5365 (h!80870 ll!14)) lt!2690668)))

(declare-fun bm!734641 () Bool)

(assert (=> bm!734641 (= call!734647 (++!18240 (ite c!1452787 lt!2690660 lt!2690671) (ite c!1452787 lt!2690669 lt!2690674)))))

(declare-fun b!7917017 () Bool)

(assert (=> b!7917017 (= e!4673193 call!734651)))

(declare-fun bm!734642 () Bool)

(assert (=> bm!734642 (= call!734646 (++!18240 (ite c!1452787 call!734650 lt!2690675) (ite c!1452787 lt!2690669 lt!2690670)))))

(declare-fun b!7917018 () Bool)

(declare-fun call!734644 () IArray!31813)

(assert (=> b!7917018 (= e!4673194 (Leaf!30195 call!734644 1))))

(declare-fun bm!734643 () Bool)

(assert (=> bm!734643 (= call!734649 (lemmaConcatAssociativity!3148 (ite c!1452787 lt!2690677 lt!2690675) (ite c!1452787 lt!2690660 lt!2690670) (ite c!1452787 lt!2690669 lt!2690676)))))

(declare-fun bm!734644 () Bool)

(declare-fun fill!257 (Int T!145622) IArray!31813)

(assert (=> bm!734644 (= call!734644 (fill!257 1 (h!80870 ll!14)))))

(declare-fun b!7917019 () Bool)

(assert (=> b!7917019 (= e!4673194 e!4673192)))

(assert (=> b!7917019 (= c!1452790 ((_ is Node!15876) c!5365))))

(declare-fun bm!734645 () Bool)

(assert (=> bm!734645 (= call!734650 (++!18240 (ite c!1452787 lt!2690677 lt!2690674) (ite c!1452787 lt!2690660 lt!2690666)))))

(declare-fun b!7917020 () Bool)

(assert (=> b!7917020 (= e!4673189 (Leaf!30195 call!734644 1))))

(declare-fun b!7917021 () Bool)

(declare-fun res!3142207 () Bool)

(assert (=> b!7917021 (=> (not res!3142207) (not e!4673190))))

(assert (=> b!7917021 (= res!3142207 (<= (height!2192 lt!2690668) (+ (height!2192 c!5365) 1)))))

(declare-fun b!7917022 () Bool)

(assert (=> b!7917022 (= c!1452787 (<= (height!2192 lt!2690661) (+ (height!2192 (left!56834 c!5365)) 1)))))

(assert (=> b!7917022 (= lt!2690661 (append!1124 (right!57164 c!5365) (h!80870 ll!14)))))

(assert (=> b!7917022 (= e!4673192 e!4673191)))

(declare-fun bm!734646 () Bool)

(assert (=> bm!734646 (= call!734648 (++!18240 (ite c!1452787 lt!2690677 lt!2690670) (ite c!1452787 call!734647 lt!2690676)))))

(declare-fun bm!734647 () Bool)

(assert (=> bm!734647 (= call!734652 (list!19371 (right!57164 c!5365)))))

(assert (= (and d!2361965 c!1452788) b!7917018))

(assert (= (and d!2361965 (not c!1452788)) b!7917019))

(assert (= (and b!7917019 c!1452790) b!7917022))

(assert (= (and b!7917019 (not c!1452790)) b!7917014))

(assert (= (and b!7917022 c!1452787) b!7917012))

(assert (= (and b!7917022 (not c!1452787)) b!7917010))

(assert (= (or b!7917012 b!7917010) bm!734640))

(assert (= (or b!7917012 b!7917010) bm!734645))

(assert (= (or b!7917012 b!7917010) bm!734647))

(assert (= (or b!7917012 b!7917010) bm!734639))

(assert (= (or b!7917012 b!7917010) bm!734643))

(assert (= (or b!7917012 b!7917010) bm!734641))

(assert (= (or b!7917012 b!7917010) bm!734646))

(assert (= (or b!7917012 b!7917010) bm!734642))

(assert (= (and b!7917014 c!1452789) b!7917016))

(assert (= (and b!7917014 (not c!1452789)) b!7917017))

(assert (= (or bm!734639 b!7917017) bm!734638))

(assert (= (and bm!734638 c!1452791) b!7917011))

(assert (= (and bm!734638 (not c!1452791)) b!7917020))

(assert (= (or b!7917018 b!7917020) bm!734644))

(assert (= (and d!2361965 res!3142206) b!7917013))

(assert (= (and b!7917013 res!3142208) b!7917021))

(assert (= (and b!7917021 res!3142207) b!7917015))

(declare-fun m!8292018 () Bool)

(assert (=> d!2361965 m!8292018))

(assert (=> d!2361965 m!8291718))

(declare-fun m!8292020 () Bool)

(assert (=> b!7917022 m!8292020))

(assert (=> b!7917022 m!8291778))

(declare-fun m!8292022 () Bool)

(assert (=> b!7917022 m!8292022))

(declare-fun m!8292024 () Bool)

(assert (=> bm!734638 m!8292024))

(declare-fun m!8292026 () Bool)

(assert (=> bm!734644 m!8292026))

(declare-fun m!8292028 () Bool)

(assert (=> bm!734646 m!8292028))

(declare-fun m!8292030 () Bool)

(assert (=> bm!734640 m!8292030))

(declare-fun m!8292032 () Bool)

(assert (=> b!7917010 m!8292032))

(declare-fun m!8292034 () Bool)

(assert (=> b!7917010 m!8292034))

(declare-fun m!8292036 () Bool)

(assert (=> b!7917010 m!8292036))

(declare-fun m!8292038 () Bool)

(assert (=> b!7917010 m!8292038))

(declare-fun m!8292040 () Bool)

(assert (=> b!7917010 m!8292040))

(declare-fun m!8292042 () Bool)

(assert (=> b!7917010 m!8292042))

(declare-fun m!8292044 () Bool)

(assert (=> b!7917010 m!8292044))

(declare-fun m!8292046 () Bool)

(assert (=> b!7917010 m!8292046))

(declare-fun m!8292048 () Bool)

(assert (=> bm!734641 m!8292048))

(declare-fun m!8292050 () Bool)

(assert (=> bm!734647 m!8292050))

(declare-fun m!8292052 () Bool)

(assert (=> b!7917015 m!8292052))

(assert (=> b!7917015 m!8291706))

(assert (=> b!7917015 m!8291706))

(declare-fun m!8292054 () Bool)

(assert (=> b!7917015 m!8292054))

(declare-fun m!8292056 () Bool)

(assert (=> b!7917016 m!8292056))

(declare-fun m!8292058 () Bool)

(assert (=> b!7917016 m!8292058))

(assert (=> b!7917016 m!8292058))

(declare-fun m!8292060 () Bool)

(assert (=> b!7917016 m!8292060))

(declare-fun m!8292062 () Bool)

(assert (=> bm!734642 m!8292062))

(declare-fun m!8292064 () Bool)

(assert (=> b!7917021 m!8292064))

(declare-fun m!8292066 () Bool)

(assert (=> b!7917021 m!8292066))

(declare-fun m!8292068 () Bool)

(assert (=> bm!734645 m!8292068))

(declare-fun m!8292070 () Bool)

(assert (=> bm!734643 m!8292070))

(assert (=> b!7917013 m!8292066))

(assert (=> b!7917013 m!8292064))

(assert (=> b!7916760 d!2361965))

(declare-fun b!7917025 () Bool)

(declare-fun res!3142209 () Bool)

(declare-fun e!4673195 () Bool)

(assert (=> b!7917025 (=> (not res!3142209) (not e!4673195))))

(declare-fun lt!2690678 () List!74546)

(assert (=> b!7917025 (= res!3142209 (= (size!43203 lt!2690678) (+ (size!43203 lt!2690521) (size!43203 lt!2690517))))))

(declare-fun b!7917024 () Bool)

(declare-fun e!4673196 () List!74546)

(assert (=> b!7917024 (= e!4673196 (Cons!74422 (h!80870 lt!2690521) (++!18240 (t!390067 lt!2690521) lt!2690517)))))

(declare-fun d!2361979 () Bool)

(assert (=> d!2361979 e!4673195))

(declare-fun res!3142210 () Bool)

(assert (=> d!2361979 (=> (not res!3142210) (not e!4673195))))

(assert (=> d!2361979 (= res!3142210 (= (content!15766 lt!2690678) ((_ map or) (content!15766 lt!2690521) (content!15766 lt!2690517))))))

(assert (=> d!2361979 (= lt!2690678 e!4673196)))

(declare-fun c!1452792 () Bool)

(assert (=> d!2361979 (= c!1452792 ((_ is Nil!74422) lt!2690521))))

(assert (=> d!2361979 (= (++!18240 lt!2690521 lt!2690517) lt!2690678)))

(declare-fun b!7917023 () Bool)

(assert (=> b!7917023 (= e!4673196 lt!2690517)))

(declare-fun b!7917026 () Bool)

(assert (=> b!7917026 (= e!4673195 (or (not (= lt!2690517 Nil!74422)) (= lt!2690678 lt!2690521)))))

(assert (= (and d!2361979 c!1452792) b!7917023))

(assert (= (and d!2361979 (not c!1452792)) b!7917024))

(assert (= (and d!2361979 res!3142210) b!7917025))

(assert (= (and b!7917025 res!3142209) b!7917026))

(declare-fun m!8292072 () Bool)

(assert (=> b!7917025 m!8292072))

(declare-fun m!8292074 () Bool)

(assert (=> b!7917025 m!8292074))

(declare-fun m!8292076 () Bool)

(assert (=> b!7917025 m!8292076))

(declare-fun m!8292078 () Bool)

(assert (=> b!7917024 m!8292078))

(declare-fun m!8292080 () Bool)

(assert (=> d!2361979 m!8292080))

(declare-fun m!8292082 () Bool)

(assert (=> d!2361979 m!8292082))

(declare-fun m!8292084 () Bool)

(assert (=> d!2361979 m!8292084))

(assert (=> b!7916754 d!2361979))

(declare-fun d!2361981 () Bool)

(declare-fun c!1452793 () Bool)

(assert (=> d!2361981 (= c!1452793 ((_ is Empty!15876) c!5365))))

(declare-fun e!4673197 () List!74546)

(assert (=> d!2361981 (= (list!19371 c!5365) e!4673197)))

(declare-fun b!7917027 () Bool)

(assert (=> b!7917027 (= e!4673197 Nil!74422)))

(declare-fun b!7917029 () Bool)

(declare-fun e!4673198 () List!74546)

(assert (=> b!7917029 (= e!4673198 (list!19373 (xs!19260 c!5365)))))

(declare-fun b!7917030 () Bool)

(assert (=> b!7917030 (= e!4673198 (++!18240 (list!19371 (left!56834 c!5365)) (list!19371 (right!57164 c!5365))))))

(declare-fun b!7917028 () Bool)

(assert (=> b!7917028 (= e!4673197 e!4673198)))

(declare-fun c!1452794 () Bool)

(assert (=> b!7917028 (= c!1452794 ((_ is Leaf!30195) c!5365))))

(assert (= (and d!2361981 c!1452793) b!7917027))

(assert (= (and d!2361981 (not c!1452793)) b!7917028))

(assert (= (and b!7917028 c!1452794) b!7917029))

(assert (= (and b!7917028 (not c!1452794)) b!7917030))

(assert (=> b!7917029 m!8292058))

(assert (=> b!7917030 m!8292030))

(assert (=> b!7917030 m!8292050))

(assert (=> b!7917030 m!8292030))

(assert (=> b!7917030 m!8292050))

(declare-fun m!8292086 () Bool)

(assert (=> b!7917030 m!8292086))

(assert (=> b!7916754 d!2361981))

(declare-fun b!7917033 () Bool)

(declare-fun res!3142211 () Bool)

(declare-fun e!4673199 () Bool)

(assert (=> b!7917033 (=> (not res!3142211) (not e!4673199))))

(declare-fun lt!2690679 () List!74546)

(assert (=> b!7917033 (= res!3142211 (= (size!43203 lt!2690679) (+ (size!43203 lt!2690524) (size!43203 (t!390067 ll!14)))))))

(declare-fun b!7917032 () Bool)

(declare-fun e!4673200 () List!74546)

(assert (=> b!7917032 (= e!4673200 (Cons!74422 (h!80870 lt!2690524) (++!18240 (t!390067 lt!2690524) (t!390067 ll!14))))))

(declare-fun d!2361983 () Bool)

(assert (=> d!2361983 e!4673199))

(declare-fun res!3142212 () Bool)

(assert (=> d!2361983 (=> (not res!3142212) (not e!4673199))))

(assert (=> d!2361983 (= res!3142212 (= (content!15766 lt!2690679) ((_ map or) (content!15766 lt!2690524) (content!15766 (t!390067 ll!14)))))))

(assert (=> d!2361983 (= lt!2690679 e!4673200)))

(declare-fun c!1452795 () Bool)

(assert (=> d!2361983 (= c!1452795 ((_ is Nil!74422) lt!2690524))))

(assert (=> d!2361983 (= (++!18240 lt!2690524 (t!390067 ll!14)) lt!2690679)))

(declare-fun b!7917031 () Bool)

(assert (=> b!7917031 (= e!4673200 (t!390067 ll!14))))

(declare-fun b!7917034 () Bool)

(assert (=> b!7917034 (= e!4673199 (or (not (= (t!390067 ll!14) Nil!74422)) (= lt!2690679 lt!2690524)))))

(assert (= (and d!2361983 c!1452795) b!7917031))

(assert (= (and d!2361983 (not c!1452795)) b!7917032))

(assert (= (and d!2361983 res!3142212) b!7917033))

(assert (= (and b!7917033 res!3142211) b!7917034))

(declare-fun m!8292088 () Bool)

(assert (=> b!7917033 m!8292088))

(declare-fun m!8292090 () Bool)

(assert (=> b!7917033 m!8292090))

(assert (=> b!7917033 m!8291906))

(declare-fun m!8292092 () Bool)

(assert (=> b!7917032 m!8292092))

(declare-fun m!8292094 () Bool)

(assert (=> d!2361983 m!8292094))

(declare-fun m!8292096 () Bool)

(assert (=> d!2361983 m!8292096))

(assert (=> d!2361983 m!8291914))

(assert (=> b!7916759 d!2361983))

(declare-fun d!2361985 () Bool)

(assert (=> d!2361985 (= (++!18240 (++!18240 lt!2690521 lt!2690517) (t!390067 ll!14)) (++!18240 lt!2690521 (++!18240 lt!2690517 (t!390067 ll!14))))))

(declare-fun lt!2690682 () Unit!169545)

(declare-fun choose!59801 (List!74546 List!74546 List!74546) Unit!169545)

(assert (=> d!2361985 (= lt!2690682 (choose!59801 lt!2690521 lt!2690517 (t!390067 ll!14)))))

(assert (=> d!2361985 (= (lemmaConcatAssociativity!3146 lt!2690521 lt!2690517 (t!390067 ll!14)) lt!2690682)))

(declare-fun bs!1968477 () Bool)

(assert (= bs!1968477 d!2361985))

(assert (=> bs!1968477 m!8291704))

(assert (=> bs!1968477 m!8291722))

(declare-fun m!8292098 () Bool)

(assert (=> bs!1968477 m!8292098))

(assert (=> bs!1968477 m!8291704))

(declare-fun m!8292100 () Bool)

(assert (=> bs!1968477 m!8292100))

(assert (=> bs!1968477 m!8291722))

(declare-fun m!8292102 () Bool)

(assert (=> bs!1968477 m!8292102))

(assert (=> b!7916759 d!2361985))

(declare-fun b!7917037 () Bool)

(declare-fun res!3142213 () Bool)

(declare-fun e!4673201 () Bool)

(assert (=> b!7917037 (=> (not res!3142213) (not e!4673201))))

(declare-fun lt!2690683 () List!74546)

(assert (=> b!7917037 (= res!3142213 (= (size!43203 lt!2690683) (+ (size!43203 lt!2690521) (size!43203 lt!2690518))))))

(declare-fun b!7917036 () Bool)

(declare-fun e!4673202 () List!74546)

(assert (=> b!7917036 (= e!4673202 (Cons!74422 (h!80870 lt!2690521) (++!18240 (t!390067 lt!2690521) lt!2690518)))))

(declare-fun d!2361987 () Bool)

(assert (=> d!2361987 e!4673201))

(declare-fun res!3142214 () Bool)

(assert (=> d!2361987 (=> (not res!3142214) (not e!4673201))))

(assert (=> d!2361987 (= res!3142214 (= (content!15766 lt!2690683) ((_ map or) (content!15766 lt!2690521) (content!15766 lt!2690518))))))

(assert (=> d!2361987 (= lt!2690683 e!4673202)))

(declare-fun c!1452796 () Bool)

(assert (=> d!2361987 (= c!1452796 ((_ is Nil!74422) lt!2690521))))

(assert (=> d!2361987 (= (++!18240 lt!2690521 lt!2690518) lt!2690683)))

(declare-fun b!7917035 () Bool)

(assert (=> b!7917035 (= e!4673202 lt!2690518)))

(declare-fun b!7917038 () Bool)

(assert (=> b!7917038 (= e!4673201 (or (not (= lt!2690518 Nil!74422)) (= lt!2690683 lt!2690521)))))

(assert (= (and d!2361987 c!1452796) b!7917035))

(assert (= (and d!2361987 (not c!1452796)) b!7917036))

(assert (= (and d!2361987 res!3142214) b!7917037))

(assert (= (and b!7917037 res!3142213) b!7917038))

(declare-fun m!8292104 () Bool)

(assert (=> b!7917037 m!8292104))

(assert (=> b!7917037 m!8292074))

(declare-fun m!8292106 () Bool)

(assert (=> b!7917037 m!8292106))

(declare-fun m!8292108 () Bool)

(assert (=> b!7917036 m!8292108))

(declare-fun m!8292110 () Bool)

(assert (=> d!2361987 m!8292110))

(assert (=> d!2361987 m!8292082))

(declare-fun m!8292112 () Bool)

(assert (=> d!2361987 m!8292112))

(assert (=> b!7916759 d!2361987))

(declare-fun d!2361989 () Bool)

(assert (=> d!2361989 (= ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14)) (Cons!74422 (h!80870 ll!14) (t!390067 ll!14)))))

(assert (=> b!7916759 d!2361989))

(declare-fun b!7917041 () Bool)

(declare-fun res!3142215 () Bool)

(declare-fun e!4673203 () Bool)

(assert (=> b!7917041 (=> (not res!3142215) (not e!4673203))))

(declare-fun lt!2690684 () List!74546)

(assert (=> b!7917041 (= res!3142215 (= (size!43203 lt!2690684) (+ (size!43203 lt!2690521) (size!43203 ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14))))))))

(declare-fun b!7917040 () Bool)

(declare-fun e!4673204 () List!74546)

(assert (=> b!7917040 (= e!4673204 (Cons!74422 (h!80870 lt!2690521) (++!18240 (t!390067 lt!2690521) ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14)))))))

(declare-fun d!2361991 () Bool)

(assert (=> d!2361991 e!4673203))

(declare-fun res!3142216 () Bool)

(assert (=> d!2361991 (=> (not res!3142216) (not e!4673203))))

(assert (=> d!2361991 (= res!3142216 (= (content!15766 lt!2690684) ((_ map or) (content!15766 lt!2690521) (content!15766 ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14))))))))

(assert (=> d!2361991 (= lt!2690684 e!4673204)))

(declare-fun c!1452797 () Bool)

(assert (=> d!2361991 (= c!1452797 ((_ is Nil!74422) lt!2690521))))

(assert (=> d!2361991 (= (++!18240 lt!2690521 ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14))) lt!2690684)))

(declare-fun b!7917039 () Bool)

(assert (=> b!7917039 (= e!4673204 ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14)))))

(declare-fun b!7917042 () Bool)

(assert (=> b!7917042 (= e!4673203 (or (not (= ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14)) Nil!74422)) (= lt!2690684 lt!2690521)))))

(assert (= (and d!2361991 c!1452797) b!7917039))

(assert (= (and d!2361991 (not c!1452797)) b!7917040))

(assert (= (and d!2361991 res!3142216) b!7917041))

(assert (= (and b!7917041 res!3142215) b!7917042))

(declare-fun m!8292114 () Bool)

(assert (=> b!7917041 m!8292114))

(assert (=> b!7917041 m!8292074))

(assert (=> b!7917041 m!8291728))

(declare-fun m!8292116 () Bool)

(assert (=> b!7917041 m!8292116))

(assert (=> b!7917040 m!8291728))

(declare-fun m!8292118 () Bool)

(assert (=> b!7917040 m!8292118))

(declare-fun m!8292120 () Bool)

(assert (=> d!2361991 m!8292120))

(assert (=> d!2361991 m!8292082))

(assert (=> d!2361991 m!8291728))

(declare-fun m!8292122 () Bool)

(assert (=> d!2361991 m!8292122))

(assert (=> b!7916759 d!2361991))

(declare-fun b!7917045 () Bool)

(declare-fun res!3142217 () Bool)

(declare-fun e!4673205 () Bool)

(assert (=> b!7917045 (=> (not res!3142217) (not e!4673205))))

(declare-fun lt!2690685 () List!74546)

(assert (=> b!7917045 (= res!3142217 (= (size!43203 lt!2690685) (+ (size!43203 lt!2690517) (size!43203 (t!390067 ll!14)))))))

(declare-fun b!7917044 () Bool)

(declare-fun e!4673206 () List!74546)

(assert (=> b!7917044 (= e!4673206 (Cons!74422 (h!80870 lt!2690517) (++!18240 (t!390067 lt!2690517) (t!390067 ll!14))))))

(declare-fun d!2361993 () Bool)

(assert (=> d!2361993 e!4673205))

(declare-fun res!3142218 () Bool)

(assert (=> d!2361993 (=> (not res!3142218) (not e!4673205))))

(assert (=> d!2361993 (= res!3142218 (= (content!15766 lt!2690685) ((_ map or) (content!15766 lt!2690517) (content!15766 (t!390067 ll!14)))))))

(assert (=> d!2361993 (= lt!2690685 e!4673206)))

(declare-fun c!1452798 () Bool)

(assert (=> d!2361993 (= c!1452798 ((_ is Nil!74422) lt!2690517))))

(assert (=> d!2361993 (= (++!18240 lt!2690517 (t!390067 ll!14)) lt!2690685)))

(declare-fun b!7917043 () Bool)

(assert (=> b!7917043 (= e!4673206 (t!390067 ll!14))))

(declare-fun b!7917046 () Bool)

(assert (=> b!7917046 (= e!4673205 (or (not (= (t!390067 ll!14) Nil!74422)) (= lt!2690685 lt!2690517)))))

(assert (= (and d!2361993 c!1452798) b!7917043))

(assert (= (and d!2361993 (not c!1452798)) b!7917044))

(assert (= (and d!2361993 res!3142218) b!7917045))

(assert (= (and b!7917045 res!3142217) b!7917046))

(declare-fun m!8292124 () Bool)

(assert (=> b!7917045 m!8292124))

(assert (=> b!7917045 m!8292076))

(assert (=> b!7917045 m!8291906))

(declare-fun m!8292126 () Bool)

(assert (=> b!7917044 m!8292126))

(declare-fun m!8292128 () Bool)

(assert (=> d!2361993 m!8292128))

(assert (=> d!2361993 m!8292084))

(assert (=> d!2361993 m!8291914))

(assert (=> b!7916759 d!2361993))

(declare-fun d!2361995 () Bool)

(assert (=> d!2361995 (= (inv!95578 (xs!19260 c!5365)) (<= (size!43203 (innerList!15964 (xs!19260 c!5365))) 2147483647))))

(declare-fun bs!1968478 () Bool)

(assert (= bs!1968478 d!2361995))

(declare-fun m!8292130 () Bool)

(assert (=> bs!1968478 m!8292130))

(assert (=> b!7916753 d!2361995))

(declare-fun e!4673212 () Bool)

(declare-fun tp!2357531 () Bool)

(declare-fun b!7917055 () Bool)

(declare-fun tp!2357529 () Bool)

(assert (=> b!7917055 (= e!4673212 (and (inv!95579 (left!56834 (left!56834 c!5365))) tp!2357529 (inv!95579 (right!57164 (left!56834 c!5365))) tp!2357531))))

(declare-fun b!7917057 () Bool)

(declare-fun e!4673211 () Bool)

(declare-fun tp!2357530 () Bool)

(assert (=> b!7917057 (= e!4673211 tp!2357530)))

(declare-fun b!7917056 () Bool)

(assert (=> b!7917056 (= e!4673212 (and (inv!95578 (xs!19260 (left!56834 c!5365))) e!4673211))))

(assert (=> b!7916757 (= tp!2357505 (and (inv!95579 (left!56834 c!5365)) e!4673212))))

(assert (= (and b!7916757 ((_ is Node!15876) (left!56834 c!5365))) b!7917055))

(assert (= b!7917056 b!7917057))

(assert (= (and b!7916757 ((_ is Leaf!30195) (left!56834 c!5365))) b!7917056))

(declare-fun m!8292132 () Bool)

(assert (=> b!7917055 m!8292132))

(declare-fun m!8292134 () Bool)

(assert (=> b!7917055 m!8292134))

(declare-fun m!8292136 () Bool)

(assert (=> b!7917056 m!8292136))

(assert (=> b!7916757 m!8291736))

(declare-fun b!7917058 () Bool)

(declare-fun e!4673214 () Bool)

(declare-fun tp!2357534 () Bool)

(declare-fun tp!2357532 () Bool)

(assert (=> b!7917058 (= e!4673214 (and (inv!95579 (left!56834 (right!57164 c!5365))) tp!2357532 (inv!95579 (right!57164 (right!57164 c!5365))) tp!2357534))))

(declare-fun b!7917060 () Bool)

(declare-fun e!4673213 () Bool)

(declare-fun tp!2357533 () Bool)

(assert (=> b!7917060 (= e!4673213 tp!2357533)))

(declare-fun b!7917059 () Bool)

(assert (=> b!7917059 (= e!4673214 (and (inv!95578 (xs!19260 (right!57164 c!5365))) e!4673213))))

(assert (=> b!7916757 (= tp!2357504 (and (inv!95579 (right!57164 c!5365)) e!4673214))))

(assert (= (and b!7916757 ((_ is Node!15876) (right!57164 c!5365))) b!7917058))

(assert (= b!7917059 b!7917060))

(assert (= (and b!7916757 ((_ is Leaf!30195) (right!57164 c!5365))) b!7917059))

(declare-fun m!8292138 () Bool)

(assert (=> b!7917058 m!8292138))

(declare-fun m!8292140 () Bool)

(assert (=> b!7917058 m!8292140))

(declare-fun m!8292142 () Bool)

(assert (=> b!7917059 m!8292142))

(assert (=> b!7916757 m!8291738))

(declare-fun b!7917065 () Bool)

(declare-fun e!4673217 () Bool)

(declare-fun tp!2357537 () Bool)

(assert (=> b!7917065 (= e!4673217 (and tp_is_empty!53177 tp!2357537))))

(assert (=> b!7916756 (= tp!2357506 e!4673217)))

(assert (= (and b!7916756 ((_ is Cons!74422) (innerList!15964 (xs!19260 c!5365)))) b!7917065))

(declare-fun b!7917066 () Bool)

(declare-fun e!4673218 () Bool)

(declare-fun tp!2357538 () Bool)

(assert (=> b!7917066 (= e!4673218 (and tp_is_empty!53177 tp!2357538))))

(assert (=> b!7916758 (= tp!2357503 e!4673218)))

(assert (= (and b!7916758 ((_ is Cons!74422) (t!390067 ll!14))) b!7917066))

(check-sat (not b!7917066) (not bm!734641) (not b!7917036) (not b!7916829) (not b!7917013) (not b!7917056) (not b!7916827) (not b!7917060) (not b!7917030) (not b!7916818) (not b!7917057) (not b!7916907) (not b!7916817) (not b!7917041) (not b!7917029) tp_is_empty!53177 (not b!7917025) (not b!7917032) (not d!2361987) (not b!7917016) (not b!7916906) (not b!7916841) (not bm!734642) (not bm!734645) (not d!2361995) (not b!7917037) (not b!7916782) (not bm!734640) (not b!7916879) (not b!7917040) (not b!7917021) (not b!7916821) (not b!7916757) (not b!7917065) (not b!7917024) (not bm!734643) (not bm!734644) (not d!2361985) (not b!7917022) (not b!7917055) (not b!7916819) (not b!7916882) (not b!7917058) (not d!2361959) (not b!7916840) (not b!7917033) (not bm!734646) (not b!7917010) (not d!2361945) (not b!7916781) (not b!7916822) (not b!7917015) (not bm!734638) (not b!7916820) (not d!2361993) (not b!7916784) (not b!7917059) (not b!7916878) (not d!2361983) (not b!7916779) (not b!7916883) (not b!7917044) (not d!2361991) (not b!7917045) (not d!2361979) (not d!2361965) (not bm!734647))
(check-sat)
(get-model)

(declare-fun b!7917069 () Bool)

(declare-fun res!3142219 () Bool)

(declare-fun e!4673219 () Bool)

(assert (=> b!7917069 (=> (not res!3142219) (not e!4673219))))

(declare-fun lt!2690686 () List!74546)

(assert (=> b!7917069 (= res!3142219 (= (size!43203 lt!2690686) (+ (size!43203 (t!390067 lt!2690521)) (size!43203 lt!2690518))))))

(declare-fun b!7917068 () Bool)

(declare-fun e!4673220 () List!74546)

(assert (=> b!7917068 (= e!4673220 (Cons!74422 (h!80870 (t!390067 lt!2690521)) (++!18240 (t!390067 (t!390067 lt!2690521)) lt!2690518)))))

(declare-fun d!2361997 () Bool)

(assert (=> d!2361997 e!4673219))

(declare-fun res!3142220 () Bool)

(assert (=> d!2361997 (=> (not res!3142220) (not e!4673219))))

(assert (=> d!2361997 (= res!3142220 (= (content!15766 lt!2690686) ((_ map or) (content!15766 (t!390067 lt!2690521)) (content!15766 lt!2690518))))))

(assert (=> d!2361997 (= lt!2690686 e!4673220)))

(declare-fun c!1452799 () Bool)

(assert (=> d!2361997 (= c!1452799 ((_ is Nil!74422) (t!390067 lt!2690521)))))

(assert (=> d!2361997 (= (++!18240 (t!390067 lt!2690521) lt!2690518) lt!2690686)))

(declare-fun b!7917067 () Bool)

(assert (=> b!7917067 (= e!4673220 lt!2690518)))

(declare-fun b!7917070 () Bool)

(assert (=> b!7917070 (= e!4673219 (or (not (= lt!2690518 Nil!74422)) (= lt!2690686 (t!390067 lt!2690521))))))

(assert (= (and d!2361997 c!1452799) b!7917067))

(assert (= (and d!2361997 (not c!1452799)) b!7917068))

(assert (= (and d!2361997 res!3142220) b!7917069))

(assert (= (and b!7917069 res!3142219) b!7917070))

(declare-fun m!8292144 () Bool)

(assert (=> b!7917069 m!8292144))

(declare-fun m!8292146 () Bool)

(assert (=> b!7917069 m!8292146))

(assert (=> b!7917069 m!8292106))

(declare-fun m!8292148 () Bool)

(assert (=> b!7917068 m!8292148))

(declare-fun m!8292150 () Bool)

(assert (=> d!2361997 m!8292150))

(declare-fun m!8292152 () Bool)

(assert (=> d!2361997 m!8292152))

(assert (=> d!2361997 m!8292112))

(assert (=> b!7917036 d!2361997))

(declare-fun d!2361999 () Bool)

(declare-fun c!1452802 () Bool)

(assert (=> d!2361999 (= c!1452802 ((_ is Nil!74422) lt!2690684))))

(declare-fun e!4673223 () (InoxSet T!145622))

(assert (=> d!2361999 (= (content!15766 lt!2690684) e!4673223)))

(declare-fun b!7917075 () Bool)

(assert (=> b!7917075 (= e!4673223 ((as const (Array T!145622 Bool)) false))))

(declare-fun b!7917076 () Bool)

(assert (=> b!7917076 (= e!4673223 ((_ map or) (store ((as const (Array T!145622 Bool)) false) (h!80870 lt!2690684) true) (content!15766 (t!390067 lt!2690684))))))

(assert (= (and d!2361999 c!1452802) b!7917075))

(assert (= (and d!2361999 (not c!1452802)) b!7917076))

(declare-fun m!8292154 () Bool)

(assert (=> b!7917076 m!8292154))

(declare-fun m!8292156 () Bool)

(assert (=> b!7917076 m!8292156))

(assert (=> d!2361991 d!2361999))

(declare-fun d!2362001 () Bool)

(declare-fun c!1452803 () Bool)

(assert (=> d!2362001 (= c!1452803 ((_ is Nil!74422) lt!2690521))))

(declare-fun e!4673224 () (InoxSet T!145622))

(assert (=> d!2362001 (= (content!15766 lt!2690521) e!4673224)))

(declare-fun b!7917077 () Bool)

(assert (=> b!7917077 (= e!4673224 ((as const (Array T!145622 Bool)) false))))

(declare-fun b!7917078 () Bool)

(assert (=> b!7917078 (= e!4673224 ((_ map or) (store ((as const (Array T!145622 Bool)) false) (h!80870 lt!2690521) true) (content!15766 (t!390067 lt!2690521))))))

(assert (= (and d!2362001 c!1452803) b!7917077))

(assert (= (and d!2362001 (not c!1452803)) b!7917078))

(declare-fun m!8292158 () Bool)

(assert (=> b!7917078 m!8292158))

(assert (=> b!7917078 m!8292152))

(assert (=> d!2361991 d!2362001))

(declare-fun d!2362003 () Bool)

(declare-fun c!1452804 () Bool)

(assert (=> d!2362003 (= c!1452804 ((_ is Nil!74422) ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14))))))

(declare-fun e!4673225 () (InoxSet T!145622))

(assert (=> d!2362003 (= (content!15766 ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14))) e!4673225)))

(declare-fun b!7917079 () Bool)

(assert (=> b!7917079 (= e!4673225 ((as const (Array T!145622 Bool)) false))))

(declare-fun b!7917080 () Bool)

(assert (=> b!7917080 (= e!4673225 ((_ map or) (store ((as const (Array T!145622 Bool)) false) (h!80870 ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14))) true) (content!15766 (t!390067 ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14))))))))

(assert (= (and d!2362003 c!1452804) b!7917079))

(assert (= (and d!2362003 (not c!1452804)) b!7917080))

(declare-fun m!8292160 () Bool)

(assert (=> b!7917080 m!8292160))

(declare-fun m!8292162 () Bool)

(assert (=> b!7917080 m!8292162))

(assert (=> d!2361991 d!2362003))

(declare-fun b!7917081 () Bool)

(declare-fun e!4673227 () Bool)

(declare-fun e!4673226 () Bool)

(assert (=> b!7917081 (= e!4673227 e!4673226)))

(declare-fun res!3142225 () Bool)

(assert (=> b!7917081 (=> (not res!3142225) (not e!4673226))))

(assert (=> b!7917081 (= res!3142225 (<= (- 1) (- (height!2192 (left!56834 lt!2690542)) (height!2192 (right!57164 lt!2690542)))))))

(declare-fun b!7917082 () Bool)

(declare-fun res!3142221 () Bool)

(assert (=> b!7917082 (=> (not res!3142221) (not e!4673226))))

(assert (=> b!7917082 (= res!3142221 (isBalanced!4502 (left!56834 lt!2690542)))))

(declare-fun b!7917083 () Bool)

(declare-fun res!3142223 () Bool)

(assert (=> b!7917083 (=> (not res!3142223) (not e!4673226))))

(assert (=> b!7917083 (= res!3142223 (not (isEmpty!42739 (left!56834 lt!2690542))))))

(declare-fun b!7917084 () Bool)

(declare-fun res!3142226 () Bool)

(assert (=> b!7917084 (=> (not res!3142226) (not e!4673226))))

(assert (=> b!7917084 (= res!3142226 (<= (- (height!2192 (left!56834 lt!2690542)) (height!2192 (right!57164 lt!2690542))) 1))))

(declare-fun b!7917085 () Bool)

(declare-fun res!3142224 () Bool)

(assert (=> b!7917085 (=> (not res!3142224) (not e!4673226))))

(assert (=> b!7917085 (= res!3142224 (isBalanced!4502 (right!57164 lt!2690542)))))

(declare-fun b!7917086 () Bool)

(assert (=> b!7917086 (= e!4673226 (not (isEmpty!42739 (right!57164 lt!2690542))))))

(declare-fun d!2362005 () Bool)

(declare-fun res!3142222 () Bool)

(assert (=> d!2362005 (=> res!3142222 e!4673227)))

(assert (=> d!2362005 (= res!3142222 (not ((_ is Node!15876) lt!2690542)))))

(assert (=> d!2362005 (= (isBalanced!4502 lt!2690542) e!4673227)))

(assert (= (and d!2362005 (not res!3142222)) b!7917081))

(assert (= (and b!7917081 res!3142225) b!7917084))

(assert (= (and b!7917084 res!3142226) b!7917082))

(assert (= (and b!7917082 res!3142221) b!7917085))

(assert (= (and b!7917085 res!3142224) b!7917083))

(assert (= (and b!7917083 res!3142223) b!7917086))

(declare-fun m!8292164 () Bool)

(assert (=> b!7917083 m!8292164))

(declare-fun m!8292166 () Bool)

(assert (=> b!7917082 m!8292166))

(declare-fun m!8292168 () Bool)

(assert (=> b!7917086 m!8292168))

(declare-fun m!8292170 () Bool)

(assert (=> b!7917085 m!8292170))

(declare-fun m!8292172 () Bool)

(assert (=> b!7917084 m!8292172))

(declare-fun m!8292174 () Bool)

(assert (=> b!7917084 m!8292174))

(assert (=> b!7917081 m!8292172))

(assert (=> b!7917081 m!8292174))

(assert (=> b!7916879 d!2362005))

(declare-fun d!2362007 () Bool)

(declare-fun c!1452805 () Bool)

(assert (=> d!2362007 (= c!1452805 ((_ is Nil!74422) lt!2690562))))

(declare-fun e!4673228 () (InoxSet T!145622))

(assert (=> d!2362007 (= (content!15766 lt!2690562) e!4673228)))

(declare-fun b!7917087 () Bool)

(assert (=> b!7917087 (= e!4673228 ((as const (Array T!145622 Bool)) false))))

(declare-fun b!7917088 () Bool)

(assert (=> b!7917088 (= e!4673228 ((_ map or) (store ((as const (Array T!145622 Bool)) false) (h!80870 lt!2690562) true) (content!15766 (t!390067 lt!2690562))))))

(assert (= (and d!2362007 c!1452805) b!7917087))

(assert (= (and d!2362007 (not c!1452805)) b!7917088))

(declare-fun m!8292176 () Bool)

(assert (=> b!7917088 m!8292176))

(declare-fun m!8292178 () Bool)

(assert (=> b!7917088 m!8292178))

(assert (=> d!2361959 d!2362007))

(declare-fun d!2362009 () Bool)

(declare-fun c!1452806 () Bool)

(assert (=> d!2362009 (= c!1452806 ((_ is Nil!74422) lt!2690519))))

(declare-fun e!4673229 () (InoxSet T!145622))

(assert (=> d!2362009 (= (content!15766 lt!2690519) e!4673229)))

(declare-fun b!7917089 () Bool)

(assert (=> b!7917089 (= e!4673229 ((as const (Array T!145622 Bool)) false))))

(declare-fun b!7917090 () Bool)

(assert (=> b!7917090 (= e!4673229 ((_ map or) (store ((as const (Array T!145622 Bool)) false) (h!80870 lt!2690519) true) (content!15766 (t!390067 lt!2690519))))))

(assert (= (and d!2362009 c!1452806) b!7917089))

(assert (= (and d!2362009 (not c!1452806)) b!7917090))

(declare-fun m!8292180 () Bool)

(assert (=> b!7917090 m!8292180))

(declare-fun m!8292182 () Bool)

(assert (=> b!7917090 m!8292182))

(assert (=> d!2361959 d!2362009))

(declare-fun d!2362011 () Bool)

(declare-fun c!1452807 () Bool)

(assert (=> d!2362011 (= c!1452807 ((_ is Nil!74422) (t!390067 ll!14)))))

(declare-fun e!4673230 () (InoxSet T!145622))

(assert (=> d!2362011 (= (content!15766 (t!390067 ll!14)) e!4673230)))

(declare-fun b!7917091 () Bool)

(assert (=> b!7917091 (= e!4673230 ((as const (Array T!145622 Bool)) false))))

(declare-fun b!7917092 () Bool)

(assert (=> b!7917092 (= e!4673230 ((_ map or) (store ((as const (Array T!145622 Bool)) false) (h!80870 (t!390067 ll!14)) true) (content!15766 (t!390067 (t!390067 ll!14)))))))

(assert (= (and d!2362011 c!1452807) b!7917091))

(assert (= (and d!2362011 (not c!1452807)) b!7917092))

(declare-fun m!8292184 () Bool)

(assert (=> b!7917092 m!8292184))

(declare-fun m!8292186 () Bool)

(assert (=> b!7917092 m!8292186))

(assert (=> d!2361959 d!2362011))

(declare-fun d!2362013 () Bool)

(assert (=> d!2362013 (= (++!18240 (++!18240 (ite c!1452787 lt!2690677 lt!2690675) (ite c!1452787 lt!2690660 lt!2690670)) (ite c!1452787 lt!2690669 lt!2690676)) (++!18240 (ite c!1452787 lt!2690677 lt!2690675) (++!18240 (ite c!1452787 lt!2690660 lt!2690670) (ite c!1452787 lt!2690669 lt!2690676))))))

(declare-fun lt!2690689 () Unit!169545)

(declare-fun choose!59802 (List!74546 List!74546 List!74546) Unit!169545)

(assert (=> d!2362013 (= lt!2690689 (choose!59802 (ite c!1452787 lt!2690677 lt!2690675) (ite c!1452787 lt!2690660 lt!2690670) (ite c!1452787 lt!2690669 lt!2690676)))))

(assert (=> d!2362013 (= (lemmaConcatAssociativity!3148 (ite c!1452787 lt!2690677 lt!2690675) (ite c!1452787 lt!2690660 lt!2690670) (ite c!1452787 lt!2690669 lt!2690676)) lt!2690689)))

(declare-fun bs!1968479 () Bool)

(assert (= bs!1968479 d!2362013))

(declare-fun m!8292188 () Bool)

(assert (=> bs!1968479 m!8292188))

(assert (=> bs!1968479 m!8292188))

(declare-fun m!8292190 () Bool)

(assert (=> bs!1968479 m!8292190))

(declare-fun m!8292192 () Bool)

(assert (=> bs!1968479 m!8292192))

(declare-fun m!8292194 () Bool)

(assert (=> bs!1968479 m!8292194))

(declare-fun m!8292196 () Bool)

(assert (=> bs!1968479 m!8292196))

(assert (=> bs!1968479 m!8292192))

(assert (=> bm!734643 d!2362013))

(declare-fun d!2362015 () Bool)

(assert (=> d!2362015 (= (list!19373 (xs!19260 lt!2690523)) (innerList!15964 (xs!19260 lt!2690523)))))

(assert (=> b!7916840 d!2362015))

(declare-fun d!2362017 () Bool)

(declare-fun lt!2690692 () Int)

(assert (=> d!2362017 (>= lt!2690692 0)))

(declare-fun e!4673233 () Int)

(assert (=> d!2362017 (= lt!2690692 e!4673233)))

(declare-fun c!1452810 () Bool)

(assert (=> d!2362017 (= c!1452810 ((_ is Nil!74422) (innerList!15964 (xs!19260 c!5365))))))

(assert (=> d!2362017 (= (size!43203 (innerList!15964 (xs!19260 c!5365))) lt!2690692)))

(declare-fun b!7917097 () Bool)

(assert (=> b!7917097 (= e!4673233 0)))

(declare-fun b!7917098 () Bool)

(assert (=> b!7917098 (= e!4673233 (+ 1 (size!43203 (t!390067 (innerList!15964 (xs!19260 c!5365))))))))

(assert (= (and d!2362017 c!1452810) b!7917097))

(assert (= (and d!2362017 (not c!1452810)) b!7917098))

(declare-fun m!8292198 () Bool)

(assert (=> b!7917098 m!8292198))

(assert (=> d!2361995 d!2362017))

(declare-fun b!7917101 () Bool)

(declare-fun res!3142227 () Bool)

(declare-fun e!4673234 () Bool)

(assert (=> b!7917101 (=> (not res!3142227) (not e!4673234))))

(declare-fun lt!2690693 () List!74546)

(assert (=> b!7917101 (= res!3142227 (= (size!43203 lt!2690693) (+ (size!43203 (ite c!1452787 call!734650 lt!2690675)) (size!43203 (ite c!1452787 lt!2690669 lt!2690670)))))))

(declare-fun e!4673235 () List!74546)

(declare-fun b!7917100 () Bool)

(assert (=> b!7917100 (= e!4673235 (Cons!74422 (h!80870 (ite c!1452787 call!734650 lt!2690675)) (++!18240 (t!390067 (ite c!1452787 call!734650 lt!2690675)) (ite c!1452787 lt!2690669 lt!2690670))))))

(declare-fun d!2362019 () Bool)

(assert (=> d!2362019 e!4673234))

(declare-fun res!3142228 () Bool)

(assert (=> d!2362019 (=> (not res!3142228) (not e!4673234))))

(assert (=> d!2362019 (= res!3142228 (= (content!15766 lt!2690693) ((_ map or) (content!15766 (ite c!1452787 call!734650 lt!2690675)) (content!15766 (ite c!1452787 lt!2690669 lt!2690670)))))))

(assert (=> d!2362019 (= lt!2690693 e!4673235)))

(declare-fun c!1452811 () Bool)

(assert (=> d!2362019 (= c!1452811 ((_ is Nil!74422) (ite c!1452787 call!734650 lt!2690675)))))

(assert (=> d!2362019 (= (++!18240 (ite c!1452787 call!734650 lt!2690675) (ite c!1452787 lt!2690669 lt!2690670)) lt!2690693)))

(declare-fun b!7917099 () Bool)

(assert (=> b!7917099 (= e!4673235 (ite c!1452787 lt!2690669 lt!2690670))))

(declare-fun b!7917102 () Bool)

(assert (=> b!7917102 (= e!4673234 (or (not (= (ite c!1452787 lt!2690669 lt!2690670) Nil!74422)) (= lt!2690693 (ite c!1452787 call!734650 lt!2690675))))))

(assert (= (and d!2362019 c!1452811) b!7917099))

(assert (= (and d!2362019 (not c!1452811)) b!7917100))

(assert (= (and d!2362019 res!3142228) b!7917101))

(assert (= (and b!7917101 res!3142227) b!7917102))

(declare-fun m!8292200 () Bool)

(assert (=> b!7917101 m!8292200))

(declare-fun m!8292202 () Bool)

(assert (=> b!7917101 m!8292202))

(declare-fun m!8292204 () Bool)

(assert (=> b!7917101 m!8292204))

(declare-fun m!8292206 () Bool)

(assert (=> b!7917100 m!8292206))

(declare-fun m!8292208 () Bool)

(assert (=> d!2362019 m!8292208))

(declare-fun m!8292210 () Bool)

(assert (=> d!2362019 m!8292210))

(declare-fun m!8292212 () Bool)

(assert (=> d!2362019 m!8292212))

(assert (=> bm!734642 d!2362019))

(declare-fun b!7917105 () Bool)

(declare-fun res!3142229 () Bool)

(declare-fun e!4673236 () Bool)

(assert (=> b!7917105 (=> (not res!3142229) (not e!4673236))))

(declare-fun lt!2690694 () List!74546)

(assert (=> b!7917105 (= res!3142229 (= (size!43203 lt!2690694) (+ (size!43203 (++!18240 lt!2690521 lt!2690517)) (size!43203 (t!390067 ll!14)))))))

(declare-fun e!4673237 () List!74546)

(declare-fun b!7917104 () Bool)

(assert (=> b!7917104 (= e!4673237 (Cons!74422 (h!80870 (++!18240 lt!2690521 lt!2690517)) (++!18240 (t!390067 (++!18240 lt!2690521 lt!2690517)) (t!390067 ll!14))))))

(declare-fun d!2362021 () Bool)

(assert (=> d!2362021 e!4673236))

(declare-fun res!3142230 () Bool)

(assert (=> d!2362021 (=> (not res!3142230) (not e!4673236))))

(assert (=> d!2362021 (= res!3142230 (= (content!15766 lt!2690694) ((_ map or) (content!15766 (++!18240 lt!2690521 lt!2690517)) (content!15766 (t!390067 ll!14)))))))

(assert (=> d!2362021 (= lt!2690694 e!4673237)))

(declare-fun c!1452812 () Bool)

(assert (=> d!2362021 (= c!1452812 ((_ is Nil!74422) (++!18240 lt!2690521 lt!2690517)))))

(assert (=> d!2362021 (= (++!18240 (++!18240 lt!2690521 lt!2690517) (t!390067 ll!14)) lt!2690694)))

(declare-fun b!7917103 () Bool)

(assert (=> b!7917103 (= e!4673237 (t!390067 ll!14))))

(declare-fun b!7917106 () Bool)

(assert (=> b!7917106 (= e!4673236 (or (not (= (t!390067 ll!14) Nil!74422)) (= lt!2690694 (++!18240 lt!2690521 lt!2690517))))))

(assert (= (and d!2362021 c!1452812) b!7917103))

(assert (= (and d!2362021 (not c!1452812)) b!7917104))

(assert (= (and d!2362021 res!3142230) b!7917105))

(assert (= (and b!7917105 res!3142229) b!7917106))

(declare-fun m!8292214 () Bool)

(assert (=> b!7917105 m!8292214))

(assert (=> b!7917105 m!8291704))

(declare-fun m!8292216 () Bool)

(assert (=> b!7917105 m!8292216))

(assert (=> b!7917105 m!8291906))

(declare-fun m!8292218 () Bool)

(assert (=> b!7917104 m!8292218))

(declare-fun m!8292220 () Bool)

(assert (=> d!2362021 m!8292220))

(assert (=> d!2362021 m!8291704))

(declare-fun m!8292222 () Bool)

(assert (=> d!2362021 m!8292222))

(assert (=> d!2362021 m!8291914))

(assert (=> d!2361985 d!2362021))

(assert (=> d!2361985 d!2361979))

(declare-fun b!7917109 () Bool)

(declare-fun res!3142231 () Bool)

(declare-fun e!4673238 () Bool)

(assert (=> b!7917109 (=> (not res!3142231) (not e!4673238))))

(declare-fun lt!2690695 () List!74546)

(assert (=> b!7917109 (= res!3142231 (= (size!43203 lt!2690695) (+ (size!43203 lt!2690521) (size!43203 (++!18240 lt!2690517 (t!390067 ll!14))))))))

(declare-fun b!7917108 () Bool)

(declare-fun e!4673239 () List!74546)

(assert (=> b!7917108 (= e!4673239 (Cons!74422 (h!80870 lt!2690521) (++!18240 (t!390067 lt!2690521) (++!18240 lt!2690517 (t!390067 ll!14)))))))

(declare-fun d!2362023 () Bool)

(assert (=> d!2362023 e!4673238))

(declare-fun res!3142232 () Bool)

(assert (=> d!2362023 (=> (not res!3142232) (not e!4673238))))

(assert (=> d!2362023 (= res!3142232 (= (content!15766 lt!2690695) ((_ map or) (content!15766 lt!2690521) (content!15766 (++!18240 lt!2690517 (t!390067 ll!14))))))))

(assert (=> d!2362023 (= lt!2690695 e!4673239)))

(declare-fun c!1452813 () Bool)

(assert (=> d!2362023 (= c!1452813 ((_ is Nil!74422) lt!2690521))))

(assert (=> d!2362023 (= (++!18240 lt!2690521 (++!18240 lt!2690517 (t!390067 ll!14))) lt!2690695)))

(declare-fun b!7917107 () Bool)

(assert (=> b!7917107 (= e!4673239 (++!18240 lt!2690517 (t!390067 ll!14)))))

(declare-fun b!7917110 () Bool)

(assert (=> b!7917110 (= e!4673238 (or (not (= (++!18240 lt!2690517 (t!390067 ll!14)) Nil!74422)) (= lt!2690695 lt!2690521)))))

(assert (= (and d!2362023 c!1452813) b!7917107))

(assert (= (and d!2362023 (not c!1452813)) b!7917108))

(assert (= (and d!2362023 res!3142232) b!7917109))

(assert (= (and b!7917109 res!3142231) b!7917110))

(declare-fun m!8292224 () Bool)

(assert (=> b!7917109 m!8292224))

(assert (=> b!7917109 m!8292074))

(assert (=> b!7917109 m!8291722))

(declare-fun m!8292226 () Bool)

(assert (=> b!7917109 m!8292226))

(assert (=> b!7917108 m!8291722))

(declare-fun m!8292228 () Bool)

(assert (=> b!7917108 m!8292228))

(declare-fun m!8292230 () Bool)

(assert (=> d!2362023 m!8292230))

(assert (=> d!2362023 m!8292082))

(assert (=> d!2362023 m!8291722))

(declare-fun m!8292232 () Bool)

(assert (=> d!2362023 m!8292232))

(assert (=> d!2361985 d!2362023))

(declare-fun d!2362025 () Bool)

(assert (=> d!2362025 (= (++!18240 (++!18240 lt!2690521 lt!2690517) (t!390067 ll!14)) (++!18240 lt!2690521 (++!18240 lt!2690517 (t!390067 ll!14))))))

(assert (=> d!2362025 true))

(declare-fun _$52!2505 () Unit!169545)

(assert (=> d!2362025 (= (choose!59801 lt!2690521 lt!2690517 (t!390067 ll!14)) _$52!2505)))

(declare-fun bs!1968480 () Bool)

(assert (= bs!1968480 d!2362025))

(assert (=> bs!1968480 m!8291704))

(assert (=> bs!1968480 m!8291704))

(assert (=> bs!1968480 m!8292100))

(assert (=> bs!1968480 m!8291722))

(assert (=> bs!1968480 m!8291722))

(assert (=> bs!1968480 m!8292098))

(assert (=> d!2361985 d!2362025))

(assert (=> d!2361985 d!2361993))

(declare-fun d!2362027 () Bool)

(declare-fun c!1452814 () Bool)

(assert (=> d!2362027 (= c!1452814 ((_ is Empty!15876) (right!57164 c!5365)))))

(declare-fun e!4673240 () List!74546)

(assert (=> d!2362027 (= (list!19371 (right!57164 c!5365)) e!4673240)))

(declare-fun b!7917111 () Bool)

(assert (=> b!7917111 (= e!4673240 Nil!74422)))

(declare-fun b!7917113 () Bool)

(declare-fun e!4673241 () List!74546)

(assert (=> b!7917113 (= e!4673241 (list!19373 (xs!19260 (right!57164 c!5365))))))

(declare-fun b!7917114 () Bool)

(assert (=> b!7917114 (= e!4673241 (++!18240 (list!19371 (left!56834 (right!57164 c!5365))) (list!19371 (right!57164 (right!57164 c!5365)))))))

(declare-fun b!7917112 () Bool)

(assert (=> b!7917112 (= e!4673240 e!4673241)))

(declare-fun c!1452815 () Bool)

(assert (=> b!7917112 (= c!1452815 ((_ is Leaf!30195) (right!57164 c!5365)))))

(assert (= (and d!2362027 c!1452814) b!7917111))

(assert (= (and d!2362027 (not c!1452814)) b!7917112))

(assert (= (and b!7917112 c!1452815) b!7917113))

(assert (= (and b!7917112 (not c!1452815)) b!7917114))

(declare-fun m!8292234 () Bool)

(assert (=> b!7917113 m!8292234))

(declare-fun m!8292236 () Bool)

(assert (=> b!7917114 m!8292236))

(declare-fun m!8292238 () Bool)

(assert (=> b!7917114 m!8292238))

(assert (=> b!7917114 m!8292236))

(assert (=> b!7917114 m!8292238))

(declare-fun m!8292240 () Bool)

(assert (=> b!7917114 m!8292240))

(assert (=> bm!734647 d!2362027))

(declare-fun d!2362029 () Bool)

(declare-fun lt!2690696 () Int)

(assert (=> d!2362029 (>= lt!2690696 0)))

(declare-fun e!4673242 () Int)

(assert (=> d!2362029 (= lt!2690696 e!4673242)))

(declare-fun c!1452816 () Bool)

(assert (=> d!2362029 (= c!1452816 ((_ is Nil!74422) lt!2690562))))

(assert (=> d!2362029 (= (size!43203 lt!2690562) lt!2690696)))

(declare-fun b!7917115 () Bool)

(assert (=> b!7917115 (= e!4673242 0)))

(declare-fun b!7917116 () Bool)

(assert (=> b!7917116 (= e!4673242 (+ 1 (size!43203 (t!390067 lt!2690562))))))

(assert (= (and d!2362029 c!1452816) b!7917115))

(assert (= (and d!2362029 (not c!1452816)) b!7917116))

(declare-fun m!8292242 () Bool)

(assert (=> b!7917116 m!8292242))

(assert (=> b!7916907 d!2362029))

(declare-fun d!2362031 () Bool)

(declare-fun lt!2690697 () Int)

(assert (=> d!2362031 (>= lt!2690697 0)))

(declare-fun e!4673243 () Int)

(assert (=> d!2362031 (= lt!2690697 e!4673243)))

(declare-fun c!1452817 () Bool)

(assert (=> d!2362031 (= c!1452817 ((_ is Nil!74422) lt!2690519))))

(assert (=> d!2362031 (= (size!43203 lt!2690519) lt!2690697)))

(declare-fun b!7917117 () Bool)

(assert (=> b!7917117 (= e!4673243 0)))

(declare-fun b!7917118 () Bool)

(assert (=> b!7917118 (= e!4673243 (+ 1 (size!43203 (t!390067 lt!2690519))))))

(assert (= (and d!2362031 c!1452817) b!7917117))

(assert (= (and d!2362031 (not c!1452817)) b!7917118))

(declare-fun m!8292244 () Bool)

(assert (=> b!7917118 m!8292244))

(assert (=> b!7916907 d!2362031))

(declare-fun d!2362033 () Bool)

(declare-fun lt!2690698 () Int)

(assert (=> d!2362033 (>= lt!2690698 0)))

(declare-fun e!4673244 () Int)

(assert (=> d!2362033 (= lt!2690698 e!4673244)))

(declare-fun c!1452818 () Bool)

(assert (=> d!2362033 (= c!1452818 ((_ is Nil!74422) (t!390067 ll!14)))))

(assert (=> d!2362033 (= (size!43203 (t!390067 ll!14)) lt!2690698)))

(declare-fun b!7917119 () Bool)

(assert (=> b!7917119 (= e!4673244 0)))

(declare-fun b!7917120 () Bool)

(assert (=> b!7917120 (= e!4673244 (+ 1 (size!43203 (t!390067 (t!390067 ll!14)))))))

(assert (= (and d!2362033 c!1452818) b!7917119))

(assert (= (and d!2362033 (not c!1452818)) b!7917120))

(declare-fun m!8292246 () Bool)

(assert (=> b!7917120 m!8292246))

(assert (=> b!7916907 d!2362033))

(declare-fun d!2362035 () Bool)

(declare-fun lt!2690699 () Int)

(assert (=> d!2362035 (>= lt!2690699 0)))

(declare-fun e!4673245 () Int)

(assert (=> d!2362035 (= lt!2690699 e!4673245)))

(declare-fun c!1452819 () Bool)

(assert (=> d!2362035 (= c!1452819 ((_ is Nil!74422) lt!2690679))))

(assert (=> d!2362035 (= (size!43203 lt!2690679) lt!2690699)))

(declare-fun b!7917121 () Bool)

(assert (=> b!7917121 (= e!4673245 0)))

(declare-fun b!7917122 () Bool)

(assert (=> b!7917122 (= e!4673245 (+ 1 (size!43203 (t!390067 lt!2690679))))))

(assert (= (and d!2362035 c!1452819) b!7917121))

(assert (= (and d!2362035 (not c!1452819)) b!7917122))

(declare-fun m!8292248 () Bool)

(assert (=> b!7917122 m!8292248))

(assert (=> b!7917033 d!2362035))

(declare-fun d!2362037 () Bool)

(declare-fun lt!2690700 () Int)

(assert (=> d!2362037 (>= lt!2690700 0)))

(declare-fun e!4673246 () Int)

(assert (=> d!2362037 (= lt!2690700 e!4673246)))

(declare-fun c!1452820 () Bool)

(assert (=> d!2362037 (= c!1452820 ((_ is Nil!74422) lt!2690524))))

(assert (=> d!2362037 (= (size!43203 lt!2690524) lt!2690700)))

(declare-fun b!7917123 () Bool)

(assert (=> b!7917123 (= e!4673246 0)))

(declare-fun b!7917124 () Bool)

(assert (=> b!7917124 (= e!4673246 (+ 1 (size!43203 (t!390067 lt!2690524))))))

(assert (= (and d!2362037 c!1452820) b!7917123))

(assert (= (and d!2362037 (not c!1452820)) b!7917124))

(declare-fun m!8292250 () Bool)

(assert (=> b!7917124 m!8292250))

(assert (=> b!7917033 d!2362037))

(assert (=> b!7917033 d!2362033))

(declare-fun b!7917125 () Bool)

(declare-fun e!4673248 () Bool)

(declare-fun e!4673247 () Bool)

(assert (=> b!7917125 (= e!4673248 e!4673247)))

(declare-fun res!3142237 () Bool)

(assert (=> b!7917125 (=> (not res!3142237) (not e!4673247))))

(assert (=> b!7917125 (= res!3142237 (<= (- 1) (- (height!2192 (left!56834 (left!56834 c!5365))) (height!2192 (right!57164 (left!56834 c!5365))))))))

(declare-fun b!7917126 () Bool)

(declare-fun res!3142233 () Bool)

(assert (=> b!7917126 (=> (not res!3142233) (not e!4673247))))

(assert (=> b!7917126 (= res!3142233 (isBalanced!4502 (left!56834 (left!56834 c!5365))))))

(declare-fun b!7917127 () Bool)

(declare-fun res!3142235 () Bool)

(assert (=> b!7917127 (=> (not res!3142235) (not e!4673247))))

(assert (=> b!7917127 (= res!3142235 (not (isEmpty!42739 (left!56834 (left!56834 c!5365)))))))

(declare-fun b!7917128 () Bool)

(declare-fun res!3142238 () Bool)

(assert (=> b!7917128 (=> (not res!3142238) (not e!4673247))))

(assert (=> b!7917128 (= res!3142238 (<= (- (height!2192 (left!56834 (left!56834 c!5365))) (height!2192 (right!57164 (left!56834 c!5365)))) 1))))

(declare-fun b!7917129 () Bool)

(declare-fun res!3142236 () Bool)

(assert (=> b!7917129 (=> (not res!3142236) (not e!4673247))))

(assert (=> b!7917129 (= res!3142236 (isBalanced!4502 (right!57164 (left!56834 c!5365))))))

(declare-fun b!7917130 () Bool)

(assert (=> b!7917130 (= e!4673247 (not (isEmpty!42739 (right!57164 (left!56834 c!5365)))))))

(declare-fun d!2362039 () Bool)

(declare-fun res!3142234 () Bool)

(assert (=> d!2362039 (=> res!3142234 e!4673248)))

(assert (=> d!2362039 (= res!3142234 (not ((_ is Node!15876) (left!56834 c!5365))))))

(assert (=> d!2362039 (= (isBalanced!4502 (left!56834 c!5365)) e!4673248)))

(assert (= (and d!2362039 (not res!3142234)) b!7917125))

(assert (= (and b!7917125 res!3142237) b!7917128))

(assert (= (and b!7917128 res!3142238) b!7917126))

(assert (= (and b!7917126 res!3142233) b!7917129))

(assert (= (and b!7917129 res!3142236) b!7917127))

(assert (= (and b!7917127 res!3142235) b!7917130))

(declare-fun m!8292252 () Bool)

(assert (=> b!7917127 m!8292252))

(declare-fun m!8292254 () Bool)

(assert (=> b!7917126 m!8292254))

(declare-fun m!8292256 () Bool)

(assert (=> b!7917130 m!8292256))

(declare-fun m!8292258 () Bool)

(assert (=> b!7917129 m!8292258))

(declare-fun m!8292260 () Bool)

(assert (=> b!7917128 m!8292260))

(declare-fun m!8292262 () Bool)

(assert (=> b!7917128 m!8292262))

(assert (=> b!7917125 m!8292260))

(assert (=> b!7917125 m!8292262))

(assert (=> b!7916818 d!2362039))

(declare-fun d!2362041 () Bool)

(assert (=> d!2362041 (= (height!2192 lt!2690661) (ite ((_ is Empty!15876) lt!2690661) 0 (ite ((_ is Leaf!30195) lt!2690661) 1 (cheight!16087 lt!2690661))))))

(assert (=> b!7917022 d!2362041))

(declare-fun d!2362043 () Bool)

(assert (=> d!2362043 (= (height!2192 (left!56834 c!5365)) (ite ((_ is Empty!15876) (left!56834 c!5365)) 0 (ite ((_ is Leaf!30195) (left!56834 c!5365)) 1 (cheight!16087 (left!56834 c!5365)))))))

(assert (=> b!7917022 d!2362043))

(declare-fun bm!734648 () Bool)

(declare-fun c!1452825 () Bool)

(declare-fun c!1452824 () Bool)

(assert (=> bm!734648 (= c!1452825 c!1452824)))

(declare-fun e!4673249 () Conc!15876)

(declare-fun call!734661 () Conc!15876)

(assert (=> bm!734648 (= call!734661 (<>!413 (ite c!1452824 (left!56834 (right!57164 c!5365)) (right!57164 c!5365)) e!4673249))))

(declare-fun b!7917131 () Bool)

(declare-fun e!4673251 () Conc!15876)

(declare-fun call!734653 () Conc!15876)

(declare-fun lt!2690702 () Conc!15876)

(assert (=> b!7917131 (= e!4673251 (<>!413 call!734653 (right!57164 lt!2690702)))))

(declare-fun lt!2690712 () List!74546)

(declare-fun call!734655 () List!74546)

(assert (=> b!7917131 (= lt!2690712 call!734655)))

(declare-fun lt!2690715 () List!74546)

(assert (=> b!7917131 (= lt!2690715 (list!19371 (left!56834 lt!2690702)))))

(declare-fun lt!2690707 () List!74546)

(assert (=> b!7917131 (= lt!2690707 (list!19371 (right!57164 lt!2690702)))))

(declare-fun lt!2690714 () Unit!169545)

(assert (=> b!7917131 (= lt!2690714 (lemmaConcatAssociativity!3148 lt!2690712 lt!2690715 lt!2690707))))

(declare-fun call!734657 () List!74546)

(declare-fun call!734660 () List!74546)

(assert (=> b!7917131 (= (++!18240 call!734657 lt!2690707) (++!18240 lt!2690712 call!734660))))

(declare-fun lt!2690703 () Unit!169545)

(assert (=> b!7917131 (= lt!2690703 lt!2690714)))

(declare-fun lt!2690716 () List!74546)

(assert (=> b!7917131 (= lt!2690716 call!734655)))

(declare-fun lt!2690711 () List!74546)

(declare-fun call!734662 () List!74546)

(assert (=> b!7917131 (= lt!2690711 call!734662)))

(declare-fun lt!2690717 () List!74546)

(assert (=> b!7917131 (= lt!2690717 (Cons!74422 (h!80870 ll!14) Nil!74422))))

(declare-fun lt!2690705 () Unit!169545)

(declare-fun call!734659 () Unit!169545)

(assert (=> b!7917131 (= lt!2690705 call!734659)))

(declare-fun call!734656 () List!74546)

(declare-fun call!734658 () List!74546)

(assert (=> b!7917131 (= (++!18240 call!734656 lt!2690717) (++!18240 lt!2690716 call!734658))))

(declare-fun lt!2690706 () Unit!169545)

(assert (=> b!7917131 (= lt!2690706 lt!2690705)))

(declare-fun b!7917132 () Bool)

(declare-fun c!1452821 () Bool)

(assert (=> b!7917132 (= e!4673249 (ite c!1452821 lt!2690702 (left!56834 lt!2690702)))))

(declare-fun bm!734649 () Bool)

(assert (=> bm!734649 (= call!734653 call!734661)))

(declare-fun b!7917133 () Bool)

(assert (=> b!7917133 (= e!4673251 call!734653)))

(declare-fun lt!2690718 () List!74546)

(assert (=> b!7917133 (= lt!2690718 call!734655)))

(declare-fun lt!2690701 () List!74546)

(assert (=> b!7917133 (= lt!2690701 call!734662)))

(declare-fun lt!2690710 () List!74546)

(assert (=> b!7917133 (= lt!2690710 (Cons!74422 (h!80870 ll!14) Nil!74422))))

(declare-fun lt!2690708 () Unit!169545)

(assert (=> b!7917133 (= lt!2690708 call!734659)))

(assert (=> b!7917133 (= call!734656 call!734658)))

(declare-fun lt!2690713 () Unit!169545)

(assert (=> b!7917133 (= lt!2690713 lt!2690708)))

(declare-fun b!7917134 () Bool)

(declare-fun res!3142241 () Bool)

(declare-fun e!4673250 () Bool)

(assert (=> b!7917134 (=> (not res!3142241) (not e!4673250))))

(declare-fun lt!2690709 () Conc!15876)

(assert (=> b!7917134 (= res!3142241 (<= (height!2192 (right!57164 c!5365)) (height!2192 lt!2690709)))))

(declare-fun b!7917135 () Bool)

(declare-fun c!1452823 () Bool)

(assert (=> b!7917135 (= c!1452823 (< (csize!31983 (right!57164 c!5365)) 512))))

(declare-fun e!4673252 () Conc!15876)

(declare-fun e!4673253 () Conc!15876)

(assert (=> b!7917135 (= e!4673252 e!4673253)))

(declare-fun b!7917136 () Bool)

(assert (=> b!7917136 (= e!4673250 (= (list!19371 lt!2690709) ($colon+!299 (list!19371 (right!57164 c!5365)) (h!80870 ll!14))))))

(declare-fun bm!734650 () Bool)

(assert (=> bm!734650 (= call!734655 (list!19371 (left!56834 (right!57164 c!5365))))))

(declare-fun b!7917137 () Bool)

(assert (=> b!7917137 (= e!4673253 (Leaf!30195 (append!1126 (xs!19260 (right!57164 c!5365)) (h!80870 ll!14)) (+ (csize!31983 (right!57164 c!5365)) 1)))))

(declare-fun lt!2690704 () List!74546)

(assert (=> b!7917137 (= lt!2690704 ($colon+!299 (list!19373 (xs!19260 (right!57164 c!5365))) (h!80870 ll!14)))))

(declare-fun d!2362045 () Bool)

(assert (=> d!2362045 e!4673250))

(declare-fun res!3142239 () Bool)

(assert (=> d!2362045 (=> (not res!3142239) (not e!4673250))))

(assert (=> d!2362045 (= res!3142239 (isBalanced!4502 lt!2690709))))

(declare-fun e!4673254 () Conc!15876)

(assert (=> d!2362045 (= lt!2690709 e!4673254)))

(declare-fun c!1452822 () Bool)

(assert (=> d!2362045 (= c!1452822 ((_ is Empty!15876) (right!57164 c!5365)))))

(assert (=> d!2362045 (isBalanced!4502 (right!57164 c!5365))))

(assert (=> d!2362045 (= (append!1124 (right!57164 c!5365) (h!80870 ll!14)) lt!2690709)))

(declare-fun bm!734651 () Bool)

(assert (=> bm!734651 (= call!734657 (++!18240 (ite c!1452821 lt!2690701 lt!2690712) (ite c!1452821 lt!2690710 lt!2690715)))))

(declare-fun b!7917138 () Bool)

(assert (=> b!7917138 (= e!4673253 call!734661)))

(declare-fun bm!734652 () Bool)

(assert (=> bm!734652 (= call!734656 (++!18240 (ite c!1452821 call!734660 lt!2690716) (ite c!1452821 lt!2690710 lt!2690711)))))

(declare-fun b!7917139 () Bool)

(declare-fun call!734654 () IArray!31813)

(assert (=> b!7917139 (= e!4673254 (Leaf!30195 call!734654 1))))

(declare-fun bm!734653 () Bool)

(assert (=> bm!734653 (= call!734659 (lemmaConcatAssociativity!3148 (ite c!1452821 lt!2690718 lt!2690716) (ite c!1452821 lt!2690701 lt!2690711) (ite c!1452821 lt!2690710 lt!2690717)))))

(declare-fun bm!734654 () Bool)

(assert (=> bm!734654 (= call!734654 (fill!257 1 (h!80870 ll!14)))))

(declare-fun b!7917140 () Bool)

(assert (=> b!7917140 (= e!4673254 e!4673252)))

(assert (=> b!7917140 (= c!1452824 ((_ is Node!15876) (right!57164 c!5365)))))

(declare-fun bm!734655 () Bool)

(assert (=> bm!734655 (= call!734660 (++!18240 (ite c!1452821 lt!2690718 lt!2690715) (ite c!1452821 lt!2690701 lt!2690707)))))

(declare-fun b!7917141 () Bool)

(assert (=> b!7917141 (= e!4673249 (Leaf!30195 call!734654 1))))

(declare-fun b!7917142 () Bool)

(declare-fun res!3142240 () Bool)

(assert (=> b!7917142 (=> (not res!3142240) (not e!4673250))))

(assert (=> b!7917142 (= res!3142240 (<= (height!2192 lt!2690709) (+ (height!2192 (right!57164 c!5365)) 1)))))

(declare-fun b!7917143 () Bool)

(assert (=> b!7917143 (= c!1452821 (<= (height!2192 lt!2690702) (+ (height!2192 (left!56834 (right!57164 c!5365))) 1)))))

(assert (=> b!7917143 (= lt!2690702 (append!1124 (right!57164 (right!57164 c!5365)) (h!80870 ll!14)))))

(assert (=> b!7917143 (= e!4673252 e!4673251)))

(declare-fun bm!734656 () Bool)

(assert (=> bm!734656 (= call!734658 (++!18240 (ite c!1452821 lt!2690718 lt!2690711) (ite c!1452821 call!734657 lt!2690717)))))

(declare-fun bm!734657 () Bool)

(assert (=> bm!734657 (= call!734662 (list!19371 (right!57164 (right!57164 c!5365))))))

(assert (= (and d!2362045 c!1452822) b!7917139))

(assert (= (and d!2362045 (not c!1452822)) b!7917140))

(assert (= (and b!7917140 c!1452824) b!7917143))

(assert (= (and b!7917140 (not c!1452824)) b!7917135))

(assert (= (and b!7917143 c!1452821) b!7917133))

(assert (= (and b!7917143 (not c!1452821)) b!7917131))

(assert (= (or b!7917133 b!7917131) bm!734650))

(assert (= (or b!7917133 b!7917131) bm!734655))

(assert (= (or b!7917133 b!7917131) bm!734657))

(assert (= (or b!7917133 b!7917131) bm!734649))

(assert (= (or b!7917133 b!7917131) bm!734653))

(assert (= (or b!7917133 b!7917131) bm!734651))

(assert (= (or b!7917133 b!7917131) bm!734656))

(assert (= (or b!7917133 b!7917131) bm!734652))

(assert (= (and b!7917135 c!1452823) b!7917137))

(assert (= (and b!7917135 (not c!1452823)) b!7917138))

(assert (= (or bm!734649 b!7917138) bm!734648))

(assert (= (and bm!734648 c!1452825) b!7917132))

(assert (= (and bm!734648 (not c!1452825)) b!7917141))

(assert (= (or b!7917139 b!7917141) bm!734654))

(assert (= (and d!2362045 res!3142239) b!7917134))

(assert (= (and b!7917134 res!3142241) b!7917142))

(assert (= (and b!7917142 res!3142240) b!7917136))

(declare-fun m!8292264 () Bool)

(assert (=> d!2362045 m!8292264))

(assert (=> d!2362045 m!8291776))

(declare-fun m!8292266 () Bool)

(assert (=> b!7917143 m!8292266))

(declare-fun m!8292268 () Bool)

(assert (=> b!7917143 m!8292268))

(declare-fun m!8292270 () Bool)

(assert (=> b!7917143 m!8292270))

(declare-fun m!8292272 () Bool)

(assert (=> bm!734648 m!8292272))

(assert (=> bm!734654 m!8292026))

(declare-fun m!8292274 () Bool)

(assert (=> bm!734656 m!8292274))

(assert (=> bm!734650 m!8292236))

(declare-fun m!8292276 () Bool)

(assert (=> b!7917131 m!8292276))

(declare-fun m!8292278 () Bool)

(assert (=> b!7917131 m!8292278))

(declare-fun m!8292280 () Bool)

(assert (=> b!7917131 m!8292280))

(declare-fun m!8292282 () Bool)

(assert (=> b!7917131 m!8292282))

(declare-fun m!8292284 () Bool)

(assert (=> b!7917131 m!8292284))

(declare-fun m!8292286 () Bool)

(assert (=> b!7917131 m!8292286))

(declare-fun m!8292288 () Bool)

(assert (=> b!7917131 m!8292288))

(declare-fun m!8292290 () Bool)

(assert (=> b!7917131 m!8292290))

(declare-fun m!8292292 () Bool)

(assert (=> bm!734651 m!8292292))

(assert (=> bm!734657 m!8292238))

(declare-fun m!8292294 () Bool)

(assert (=> b!7917136 m!8292294))

(assert (=> b!7917136 m!8292050))

(assert (=> b!7917136 m!8292050))

(declare-fun m!8292296 () Bool)

(assert (=> b!7917136 m!8292296))

(declare-fun m!8292298 () Bool)

(assert (=> b!7917137 m!8292298))

(assert (=> b!7917137 m!8292234))

(assert (=> b!7917137 m!8292234))

(declare-fun m!8292300 () Bool)

(assert (=> b!7917137 m!8292300))

(declare-fun m!8292302 () Bool)

(assert (=> bm!734652 m!8292302))

(declare-fun m!8292304 () Bool)

(assert (=> b!7917142 m!8292304))

(assert (=> b!7917142 m!8291780))

(declare-fun m!8292306 () Bool)

(assert (=> bm!734655 m!8292306))

(declare-fun m!8292308 () Bool)

(assert (=> bm!734653 m!8292308))

(assert (=> b!7917134 m!8291780))

(assert (=> b!7917134 m!8292304))

(assert (=> b!7917022 d!2362045))

(declare-fun d!2362047 () Bool)

(assert (=> d!2362047 (= (inv!95578 (xs!19260 (right!57164 c!5365))) (<= (size!43203 (innerList!15964 (xs!19260 (right!57164 c!5365)))) 2147483647))))

(declare-fun bs!1968481 () Bool)

(assert (= bs!1968481 d!2362047))

(declare-fun m!8292310 () Bool)

(assert (=> bs!1968481 m!8292310))

(assert (=> b!7917059 d!2362047))

(declare-fun b!7917144 () Bool)

(declare-fun e!4673256 () Bool)

(declare-fun e!4673255 () Bool)

(assert (=> b!7917144 (= e!4673256 e!4673255)))

(declare-fun res!3142246 () Bool)

(assert (=> b!7917144 (=> (not res!3142246) (not e!4673255))))

(assert (=> b!7917144 (= res!3142246 (<= (- 1) (- (height!2192 (left!56834 lt!2690668)) (height!2192 (right!57164 lt!2690668)))))))

(declare-fun b!7917145 () Bool)

(declare-fun res!3142242 () Bool)

(assert (=> b!7917145 (=> (not res!3142242) (not e!4673255))))

(assert (=> b!7917145 (= res!3142242 (isBalanced!4502 (left!56834 lt!2690668)))))

(declare-fun b!7917146 () Bool)

(declare-fun res!3142244 () Bool)

(assert (=> b!7917146 (=> (not res!3142244) (not e!4673255))))

(assert (=> b!7917146 (= res!3142244 (not (isEmpty!42739 (left!56834 lt!2690668))))))

(declare-fun b!7917147 () Bool)

(declare-fun res!3142247 () Bool)

(assert (=> b!7917147 (=> (not res!3142247) (not e!4673255))))

(assert (=> b!7917147 (= res!3142247 (<= (- (height!2192 (left!56834 lt!2690668)) (height!2192 (right!57164 lt!2690668))) 1))))

(declare-fun b!7917148 () Bool)

(declare-fun res!3142245 () Bool)

(assert (=> b!7917148 (=> (not res!3142245) (not e!4673255))))

(assert (=> b!7917148 (= res!3142245 (isBalanced!4502 (right!57164 lt!2690668)))))

(declare-fun b!7917149 () Bool)

(assert (=> b!7917149 (= e!4673255 (not (isEmpty!42739 (right!57164 lt!2690668))))))

(declare-fun d!2362049 () Bool)

(declare-fun res!3142243 () Bool)

(assert (=> d!2362049 (=> res!3142243 e!4673256)))

(assert (=> d!2362049 (= res!3142243 (not ((_ is Node!15876) lt!2690668)))))

(assert (=> d!2362049 (= (isBalanced!4502 lt!2690668) e!4673256)))

(assert (= (and d!2362049 (not res!3142243)) b!7917144))

(assert (= (and b!7917144 res!3142246) b!7917147))

(assert (= (and b!7917147 res!3142247) b!7917145))

(assert (= (and b!7917145 res!3142242) b!7917148))

(assert (= (and b!7917148 res!3142245) b!7917146))

(assert (= (and b!7917146 res!3142244) b!7917149))

(declare-fun m!8292312 () Bool)

(assert (=> b!7917146 m!8292312))

(declare-fun m!8292314 () Bool)

(assert (=> b!7917145 m!8292314))

(declare-fun m!8292316 () Bool)

(assert (=> b!7917149 m!8292316))

(declare-fun m!8292318 () Bool)

(assert (=> b!7917148 m!8292318))

(declare-fun m!8292320 () Bool)

(assert (=> b!7917147 m!8292320))

(declare-fun m!8292322 () Bool)

(assert (=> b!7917147 m!8292322))

(assert (=> b!7917144 m!8292320))

(assert (=> b!7917144 m!8292322))

(assert (=> d!2361965 d!2362049))

(assert (=> d!2361965 d!2361935))

(assert (=> b!7916757 d!2361927))

(assert (=> b!7916757 d!2361933))

(declare-fun d!2362051 () Bool)

(assert (=> d!2362051 (= (height!2192 c!5365) (ite ((_ is Empty!15876) c!5365) 0 (ite ((_ is Leaf!30195) c!5365) 1 (cheight!16087 c!5365))))))

(assert (=> b!7917013 d!2362051))

(declare-fun d!2362053 () Bool)

(assert (=> d!2362053 (= (height!2192 lt!2690668) (ite ((_ is Empty!15876) lt!2690668) 0 (ite ((_ is Leaf!30195) lt!2690668) 1 (cheight!16087 lt!2690668))))))

(assert (=> b!7917013 d!2362053))

(declare-fun d!2362055 () Bool)

(assert (=> d!2362055 (= (inv!95578 (xs!19260 (left!56834 c!5365))) (<= (size!43203 (innerList!15964 (xs!19260 (left!56834 c!5365)))) 2147483647))))

(declare-fun bs!1968482 () Bool)

(assert (= bs!1968482 d!2362055))

(declare-fun m!8292324 () Bool)

(assert (=> bs!1968482 m!8292324))

(assert (=> b!7917056 d!2362055))

(declare-fun d!2362057 () Bool)

(assert (=> d!2362057 (= (list!19373 (xs!19260 c!5365)) (innerList!15964 (xs!19260 c!5365)))))

(assert (=> b!7917029 d!2362057))

(declare-fun d!2362059 () Bool)

(declare-fun lt!2690719 () Int)

(assert (=> d!2362059 (>= lt!2690719 0)))

(declare-fun e!4673257 () Int)

(assert (=> d!2362059 (= lt!2690719 e!4673257)))

(declare-fun c!1452826 () Bool)

(assert (=> d!2362059 (= c!1452826 ((_ is Nil!74422) lt!2690685))))

(assert (=> d!2362059 (= (size!43203 lt!2690685) lt!2690719)))

(declare-fun b!7917150 () Bool)

(assert (=> b!7917150 (= e!4673257 0)))

(declare-fun b!7917151 () Bool)

(assert (=> b!7917151 (= e!4673257 (+ 1 (size!43203 (t!390067 lt!2690685))))))

(assert (= (and d!2362059 c!1452826) b!7917150))

(assert (= (and d!2362059 (not c!1452826)) b!7917151))

(declare-fun m!8292326 () Bool)

(assert (=> b!7917151 m!8292326))

(assert (=> b!7917045 d!2362059))

(declare-fun d!2362061 () Bool)

(declare-fun lt!2690720 () Int)

(assert (=> d!2362061 (>= lt!2690720 0)))

(declare-fun e!4673258 () Int)

(assert (=> d!2362061 (= lt!2690720 e!4673258)))

(declare-fun c!1452827 () Bool)

(assert (=> d!2362061 (= c!1452827 ((_ is Nil!74422) lt!2690517))))

(assert (=> d!2362061 (= (size!43203 lt!2690517) lt!2690720)))

(declare-fun b!7917152 () Bool)

(assert (=> b!7917152 (= e!4673258 0)))

(declare-fun b!7917153 () Bool)

(assert (=> b!7917153 (= e!4673258 (+ 1 (size!43203 (t!390067 lt!2690517))))))

(assert (= (and d!2362061 c!1452827) b!7917152))

(assert (= (and d!2362061 (not c!1452827)) b!7917153))

(declare-fun m!8292328 () Bool)

(assert (=> b!7917153 m!8292328))

(assert (=> b!7917045 d!2362061))

(assert (=> b!7917045 d!2362033))

(declare-fun d!2362063 () Bool)

(declare-fun lt!2690723 () Bool)

(declare-fun isEmpty!42740 (List!74546) Bool)

(assert (=> d!2362063 (= lt!2690723 (isEmpty!42740 (list!19371 (right!57164 c!5365))))))

(declare-fun size!43204 (Conc!15876) Int)

(assert (=> d!2362063 (= lt!2690723 (= (size!43204 (right!57164 c!5365)) 0))))

(assert (=> d!2362063 (= (isEmpty!42739 (right!57164 c!5365)) lt!2690723)))

(declare-fun bs!1968483 () Bool)

(assert (= bs!1968483 d!2362063))

(assert (=> bs!1968483 m!8292050))

(assert (=> bs!1968483 m!8292050))

(declare-fun m!8292330 () Bool)

(assert (=> bs!1968483 m!8292330))

(declare-fun m!8292332 () Bool)

(assert (=> bs!1968483 m!8292332))

(assert (=> b!7916822 d!2362063))

(declare-fun d!2362065 () Bool)

(assert (=> d!2362065 (= (list!19373 (xs!19260 lt!2690522)) (innerList!15964 (xs!19260 lt!2690522)))))

(assert (=> b!7916882 d!2362065))

(declare-fun d!2362067 () Bool)

(declare-fun lt!2690724 () Int)

(assert (=> d!2362067 (>= lt!2690724 0)))

(declare-fun e!4673259 () Int)

(assert (=> d!2362067 (= lt!2690724 e!4673259)))

(declare-fun c!1452828 () Bool)

(assert (=> d!2362067 (= c!1452828 ((_ is Nil!74422) lt!2690678))))

(assert (=> d!2362067 (= (size!43203 lt!2690678) lt!2690724)))

(declare-fun b!7917154 () Bool)

(assert (=> b!7917154 (= e!4673259 0)))

(declare-fun b!7917155 () Bool)

(assert (=> b!7917155 (= e!4673259 (+ 1 (size!43203 (t!390067 lt!2690678))))))

(assert (= (and d!2362067 c!1452828) b!7917154))

(assert (= (and d!2362067 (not c!1452828)) b!7917155))

(declare-fun m!8292334 () Bool)

(assert (=> b!7917155 m!8292334))

(assert (=> b!7917025 d!2362067))

(declare-fun d!2362069 () Bool)

(declare-fun lt!2690725 () Int)

(assert (=> d!2362069 (>= lt!2690725 0)))

(declare-fun e!4673260 () Int)

(assert (=> d!2362069 (= lt!2690725 e!4673260)))

(declare-fun c!1452829 () Bool)

(assert (=> d!2362069 (= c!1452829 ((_ is Nil!74422) lt!2690521))))

(assert (=> d!2362069 (= (size!43203 lt!2690521) lt!2690725)))

(declare-fun b!7917156 () Bool)

(assert (=> b!7917156 (= e!4673260 0)))

(declare-fun b!7917157 () Bool)

(assert (=> b!7917157 (= e!4673260 (+ 1 (size!43203 (t!390067 lt!2690521))))))

(assert (= (and d!2362069 c!1452829) b!7917156))

(assert (= (and d!2362069 (not c!1452829)) b!7917157))

(assert (=> b!7917157 m!8292146))

(assert (=> b!7917025 d!2362069))

(assert (=> b!7917025 d!2362061))

(declare-fun b!7917160 () Bool)

(declare-fun res!3142248 () Bool)

(declare-fun e!4673261 () Bool)

(assert (=> b!7917160 (=> (not res!3142248) (not e!4673261))))

(declare-fun lt!2690726 () List!74546)

(assert (=> b!7917160 (= res!3142248 (= (size!43203 lt!2690726) (+ (size!43203 (t!390067 lt!2690521)) (size!43203 ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14))))))))

(declare-fun b!7917159 () Bool)

(declare-fun e!4673262 () List!74546)

(assert (=> b!7917159 (= e!4673262 (Cons!74422 (h!80870 (t!390067 lt!2690521)) (++!18240 (t!390067 (t!390067 lt!2690521)) ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14)))))))

(declare-fun d!2362071 () Bool)

(assert (=> d!2362071 e!4673261))

(declare-fun res!3142249 () Bool)

(assert (=> d!2362071 (=> (not res!3142249) (not e!4673261))))

(assert (=> d!2362071 (= res!3142249 (= (content!15766 lt!2690726) ((_ map or) (content!15766 (t!390067 lt!2690521)) (content!15766 ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14))))))))

(assert (=> d!2362071 (= lt!2690726 e!4673262)))

(declare-fun c!1452830 () Bool)

(assert (=> d!2362071 (= c!1452830 ((_ is Nil!74422) (t!390067 lt!2690521)))))

(assert (=> d!2362071 (= (++!18240 (t!390067 lt!2690521) ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14))) lt!2690726)))

(declare-fun b!7917158 () Bool)

(assert (=> b!7917158 (= e!4673262 ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14)))))

(declare-fun b!7917161 () Bool)

(assert (=> b!7917161 (= e!4673261 (or (not (= ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14)) Nil!74422)) (= lt!2690726 (t!390067 lt!2690521))))))

(assert (= (and d!2362071 c!1452830) b!7917158))

(assert (= (and d!2362071 (not c!1452830)) b!7917159))

(assert (= (and d!2362071 res!3142249) b!7917160))

(assert (= (and b!7917160 res!3142248) b!7917161))

(declare-fun m!8292336 () Bool)

(assert (=> b!7917160 m!8292336))

(assert (=> b!7917160 m!8292146))

(assert (=> b!7917160 m!8291728))

(assert (=> b!7917160 m!8292116))

(assert (=> b!7917159 m!8291728))

(declare-fun m!8292338 () Bool)

(assert (=> b!7917159 m!8292338))

(declare-fun m!8292340 () Bool)

(assert (=> d!2362071 m!8292340))

(assert (=> d!2362071 m!8292152))

(assert (=> d!2362071 m!8291728))

(assert (=> d!2362071 m!8292122))

(assert (=> b!7917040 d!2362071))

(declare-fun d!2362073 () Bool)

(declare-fun c!1452831 () Bool)

(assert (=> d!2362073 (= c!1452831 ((_ is Empty!15876) (right!57164 lt!2690661)))))

(declare-fun e!4673263 () List!74546)

(assert (=> d!2362073 (= (list!19371 (right!57164 lt!2690661)) e!4673263)))

(declare-fun b!7917162 () Bool)

(assert (=> b!7917162 (= e!4673263 Nil!74422)))

(declare-fun b!7917164 () Bool)

(declare-fun e!4673264 () List!74546)

(assert (=> b!7917164 (= e!4673264 (list!19373 (xs!19260 (right!57164 lt!2690661))))))

(declare-fun b!7917165 () Bool)

(assert (=> b!7917165 (= e!4673264 (++!18240 (list!19371 (left!56834 (right!57164 lt!2690661))) (list!19371 (right!57164 (right!57164 lt!2690661)))))))

(declare-fun b!7917163 () Bool)

(assert (=> b!7917163 (= e!4673263 e!4673264)))

(declare-fun c!1452832 () Bool)

(assert (=> b!7917163 (= c!1452832 ((_ is Leaf!30195) (right!57164 lt!2690661)))))

(assert (= (and d!2362073 c!1452831) b!7917162))

(assert (= (and d!2362073 (not c!1452831)) b!7917163))

(assert (= (and b!7917163 c!1452832) b!7917164))

(assert (= (and b!7917163 (not c!1452832)) b!7917165))

(declare-fun m!8292342 () Bool)

(assert (=> b!7917164 m!8292342))

(declare-fun m!8292344 () Bool)

(assert (=> b!7917165 m!8292344))

(declare-fun m!8292346 () Bool)

(assert (=> b!7917165 m!8292346))

(assert (=> b!7917165 m!8292344))

(assert (=> b!7917165 m!8292346))

(declare-fun m!8292348 () Bool)

(assert (=> b!7917165 m!8292348))

(assert (=> b!7917010 d!2362073))

(declare-fun d!2362075 () Bool)

(declare-fun c!1452833 () Bool)

(assert (=> d!2362075 (= c!1452833 ((_ is Empty!15876) (left!56834 lt!2690661)))))

(declare-fun e!4673265 () List!74546)

(assert (=> d!2362075 (= (list!19371 (left!56834 lt!2690661)) e!4673265)))

(declare-fun b!7917166 () Bool)

(assert (=> b!7917166 (= e!4673265 Nil!74422)))

(declare-fun b!7917168 () Bool)

(declare-fun e!4673266 () List!74546)

(assert (=> b!7917168 (= e!4673266 (list!19373 (xs!19260 (left!56834 lt!2690661))))))

(declare-fun b!7917169 () Bool)

(assert (=> b!7917169 (= e!4673266 (++!18240 (list!19371 (left!56834 (left!56834 lt!2690661))) (list!19371 (right!57164 (left!56834 lt!2690661)))))))

(declare-fun b!7917167 () Bool)

(assert (=> b!7917167 (= e!4673265 e!4673266)))

(declare-fun c!1452834 () Bool)

(assert (=> b!7917167 (= c!1452834 ((_ is Leaf!30195) (left!56834 lt!2690661)))))

(assert (= (and d!2362075 c!1452833) b!7917166))

(assert (= (and d!2362075 (not c!1452833)) b!7917167))

(assert (= (and b!7917167 c!1452834) b!7917168))

(assert (= (and b!7917167 (not c!1452834)) b!7917169))

(declare-fun m!8292350 () Bool)

(assert (=> b!7917168 m!8292350))

(declare-fun m!8292352 () Bool)

(assert (=> b!7917169 m!8292352))

(declare-fun m!8292354 () Bool)

(assert (=> b!7917169 m!8292354))

(assert (=> b!7917169 m!8292352))

(assert (=> b!7917169 m!8292354))

(declare-fun m!8292356 () Bool)

(assert (=> b!7917169 m!8292356))

(assert (=> b!7917010 d!2362075))

(declare-fun b!7917172 () Bool)

(declare-fun res!3142250 () Bool)

(declare-fun e!4673267 () Bool)

(assert (=> b!7917172 (=> (not res!3142250) (not e!4673267))))

(declare-fun lt!2690727 () List!74546)

(assert (=> b!7917172 (= res!3142250 (= (size!43203 lt!2690727) (+ (size!43203 lt!2690671) (size!43203 call!734650))))))

(declare-fun b!7917171 () Bool)

(declare-fun e!4673268 () List!74546)

(assert (=> b!7917171 (= e!4673268 (Cons!74422 (h!80870 lt!2690671) (++!18240 (t!390067 lt!2690671) call!734650)))))

(declare-fun d!2362077 () Bool)

(assert (=> d!2362077 e!4673267))

(declare-fun res!3142251 () Bool)

(assert (=> d!2362077 (=> (not res!3142251) (not e!4673267))))

(assert (=> d!2362077 (= res!3142251 (= (content!15766 lt!2690727) ((_ map or) (content!15766 lt!2690671) (content!15766 call!734650))))))

(assert (=> d!2362077 (= lt!2690727 e!4673268)))

(declare-fun c!1452835 () Bool)

(assert (=> d!2362077 (= c!1452835 ((_ is Nil!74422) lt!2690671))))

(assert (=> d!2362077 (= (++!18240 lt!2690671 call!734650) lt!2690727)))

(declare-fun b!7917170 () Bool)

(assert (=> b!7917170 (= e!4673268 call!734650)))

(declare-fun b!7917173 () Bool)

(assert (=> b!7917173 (= e!4673267 (or (not (= call!734650 Nil!74422)) (= lt!2690727 lt!2690671)))))

(assert (= (and d!2362077 c!1452835) b!7917170))

(assert (= (and d!2362077 (not c!1452835)) b!7917171))

(assert (= (and d!2362077 res!3142251) b!7917172))

(assert (= (and b!7917172 res!3142250) b!7917173))

(declare-fun m!8292358 () Bool)

(assert (=> b!7917172 m!8292358))

(declare-fun m!8292360 () Bool)

(assert (=> b!7917172 m!8292360))

(declare-fun m!8292362 () Bool)

(assert (=> b!7917172 m!8292362))

(declare-fun m!8292364 () Bool)

(assert (=> b!7917171 m!8292364))

(declare-fun m!8292366 () Bool)

(assert (=> d!2362077 m!8292366))

(declare-fun m!8292368 () Bool)

(assert (=> d!2362077 m!8292368))

(declare-fun m!8292370 () Bool)

(assert (=> d!2362077 m!8292370))

(assert (=> b!7917010 d!2362077))

(declare-fun d!2362079 () Bool)

(assert (=> d!2362079 (= (++!18240 (++!18240 lt!2690671 lt!2690674) lt!2690666) (++!18240 lt!2690671 (++!18240 lt!2690674 lt!2690666)))))

(declare-fun lt!2690728 () Unit!169545)

(assert (=> d!2362079 (= lt!2690728 (choose!59802 lt!2690671 lt!2690674 lt!2690666))))

(assert (=> d!2362079 (= (lemmaConcatAssociativity!3148 lt!2690671 lt!2690674 lt!2690666) lt!2690728)))

(declare-fun bs!1968484 () Bool)

(assert (= bs!1968484 d!2362079))

(declare-fun m!8292372 () Bool)

(assert (=> bs!1968484 m!8292372))

(assert (=> bs!1968484 m!8292372))

(declare-fun m!8292374 () Bool)

(assert (=> bs!1968484 m!8292374))

(declare-fun m!8292376 () Bool)

(assert (=> bs!1968484 m!8292376))

(declare-fun m!8292378 () Bool)

(assert (=> bs!1968484 m!8292378))

(declare-fun m!8292380 () Bool)

(assert (=> bs!1968484 m!8292380))

(assert (=> bs!1968484 m!8292376))

(assert (=> b!7917010 d!2362079))

(declare-fun b!7917184 () Bool)

(declare-fun e!4673273 () Conc!15876)

(assert (=> b!7917184 (= e!4673273 call!734643)))

(declare-fun d!2362081 () Bool)

(declare-fun lt!2690731 () Conc!15876)

(assert (=> d!2362081 (= (list!19371 lt!2690731) (++!18240 (list!19371 call!734643) (list!19371 (right!57164 lt!2690661))))))

(declare-fun e!4673274 () Conc!15876)

(assert (=> d!2362081 (= lt!2690731 e!4673274)))

(declare-fun c!1452841 () Bool)

(assert (=> d!2362081 (= c!1452841 (= call!734643 Empty!15876))))

(assert (=> d!2362081 (= (<>!413 call!734643 (right!57164 lt!2690661)) lt!2690731)))

(declare-fun b!7917183 () Bool)

(assert (=> b!7917183 (= e!4673274 e!4673273)))

(declare-fun c!1452840 () Bool)

(assert (=> b!7917183 (= c!1452840 (= (right!57164 lt!2690661) Empty!15876))))

(declare-fun b!7917185 () Bool)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!7917185 (= e!4673273 (Node!15876 call!734643 (right!57164 lt!2690661) (+ (size!43204 call!734643) (size!43204 (right!57164 lt!2690661))) (+ (max!0 (height!2192 call!734643) (height!2192 (right!57164 lt!2690661))) 1)))))

(declare-fun b!7917182 () Bool)

(assert (=> b!7917182 (= e!4673274 (right!57164 lt!2690661))))

(assert (= (and d!2362081 c!1452841) b!7917182))

(assert (= (and d!2362081 (not c!1452841)) b!7917183))

(assert (= (and b!7917183 c!1452840) b!7917184))

(assert (= (and b!7917183 (not c!1452840)) b!7917185))

(declare-fun m!8292382 () Bool)

(assert (=> d!2362081 m!8292382))

(declare-fun m!8292384 () Bool)

(assert (=> d!2362081 m!8292384))

(assert (=> d!2362081 m!8292038))

(assert (=> d!2362081 m!8292384))

(assert (=> d!2362081 m!8292038))

(declare-fun m!8292386 () Bool)

(assert (=> d!2362081 m!8292386))

(declare-fun m!8292388 () Bool)

(assert (=> b!7917185 m!8292388))

(declare-fun m!8292390 () Bool)

(assert (=> b!7917185 m!8292390))

(declare-fun m!8292392 () Bool)

(assert (=> b!7917185 m!8292392))

(declare-fun m!8292394 () Bool)

(assert (=> b!7917185 m!8292394))

(assert (=> b!7917185 m!8292392))

(assert (=> b!7917185 m!8292390))

(declare-fun m!8292396 () Bool)

(assert (=> b!7917185 m!8292396))

(assert (=> b!7917010 d!2362081))

(declare-fun b!7917188 () Bool)

(declare-fun res!3142252 () Bool)

(declare-fun e!4673275 () Bool)

(assert (=> b!7917188 (=> (not res!3142252) (not e!4673275))))

(declare-fun lt!2690732 () List!74546)

(assert (=> b!7917188 (= res!3142252 (= (size!43203 lt!2690732) (+ (size!43203 call!734647) (size!43203 lt!2690666))))))

(declare-fun b!7917187 () Bool)

(declare-fun e!4673276 () List!74546)

(assert (=> b!7917187 (= e!4673276 (Cons!74422 (h!80870 call!734647) (++!18240 (t!390067 call!734647) lt!2690666)))))

(declare-fun d!2362083 () Bool)

(assert (=> d!2362083 e!4673275))

(declare-fun res!3142253 () Bool)

(assert (=> d!2362083 (=> (not res!3142253) (not e!4673275))))

(assert (=> d!2362083 (= res!3142253 (= (content!15766 lt!2690732) ((_ map or) (content!15766 call!734647) (content!15766 lt!2690666))))))

(assert (=> d!2362083 (= lt!2690732 e!4673276)))

(declare-fun c!1452842 () Bool)

(assert (=> d!2362083 (= c!1452842 ((_ is Nil!74422) call!734647))))

(assert (=> d!2362083 (= (++!18240 call!734647 lt!2690666) lt!2690732)))

(declare-fun b!7917186 () Bool)

(assert (=> b!7917186 (= e!4673276 lt!2690666)))

(declare-fun b!7917189 () Bool)

(assert (=> b!7917189 (= e!4673275 (or (not (= lt!2690666 Nil!74422)) (= lt!2690732 call!734647)))))

(assert (= (and d!2362083 c!1452842) b!7917186))

(assert (= (and d!2362083 (not c!1452842)) b!7917187))

(assert (= (and d!2362083 res!3142253) b!7917188))

(assert (= (and b!7917188 res!3142252) b!7917189))

(declare-fun m!8292398 () Bool)

(assert (=> b!7917188 m!8292398))

(declare-fun m!8292400 () Bool)

(assert (=> b!7917188 m!8292400))

(declare-fun m!8292402 () Bool)

(assert (=> b!7917188 m!8292402))

(declare-fun m!8292404 () Bool)

(assert (=> b!7917187 m!8292404))

(declare-fun m!8292406 () Bool)

(assert (=> d!2362083 m!8292406))

(declare-fun m!8292408 () Bool)

(assert (=> d!2362083 m!8292408))

(declare-fun m!8292410 () Bool)

(assert (=> d!2362083 m!8292410))

(assert (=> b!7917010 d!2362083))

(declare-fun b!7917192 () Bool)

(declare-fun res!3142254 () Bool)

(declare-fun e!4673277 () Bool)

(assert (=> b!7917192 (=> (not res!3142254) (not e!4673277))))

(declare-fun lt!2690733 () List!74546)

(assert (=> b!7917192 (= res!3142254 (= (size!43203 lt!2690733) (+ (size!43203 call!734646) (size!43203 lt!2690676))))))

(declare-fun b!7917191 () Bool)

(declare-fun e!4673278 () List!74546)

(assert (=> b!7917191 (= e!4673278 (Cons!74422 (h!80870 call!734646) (++!18240 (t!390067 call!734646) lt!2690676)))))

(declare-fun d!2362085 () Bool)

(assert (=> d!2362085 e!4673277))

(declare-fun res!3142255 () Bool)

(assert (=> d!2362085 (=> (not res!3142255) (not e!4673277))))

(assert (=> d!2362085 (= res!3142255 (= (content!15766 lt!2690733) ((_ map or) (content!15766 call!734646) (content!15766 lt!2690676))))))

(assert (=> d!2362085 (= lt!2690733 e!4673278)))

(declare-fun c!1452843 () Bool)

(assert (=> d!2362085 (= c!1452843 ((_ is Nil!74422) call!734646))))

(assert (=> d!2362085 (= (++!18240 call!734646 lt!2690676) lt!2690733)))

(declare-fun b!7917190 () Bool)

(assert (=> b!7917190 (= e!4673278 lt!2690676)))

(declare-fun b!7917193 () Bool)

(assert (=> b!7917193 (= e!4673277 (or (not (= lt!2690676 Nil!74422)) (= lt!2690733 call!734646)))))

(assert (= (and d!2362085 c!1452843) b!7917190))

(assert (= (and d!2362085 (not c!1452843)) b!7917191))

(assert (= (and d!2362085 res!3142255) b!7917192))

(assert (= (and b!7917192 res!3142254) b!7917193))

(declare-fun m!8292412 () Bool)

(assert (=> b!7917192 m!8292412))

(declare-fun m!8292414 () Bool)

(assert (=> b!7917192 m!8292414))

(declare-fun m!8292416 () Bool)

(assert (=> b!7917192 m!8292416))

(declare-fun m!8292418 () Bool)

(assert (=> b!7917191 m!8292418))

(declare-fun m!8292420 () Bool)

(assert (=> d!2362085 m!8292420))

(declare-fun m!8292422 () Bool)

(assert (=> d!2362085 m!8292422))

(declare-fun m!8292424 () Bool)

(assert (=> d!2362085 m!8292424))

(assert (=> b!7917010 d!2362085))

(declare-fun b!7917196 () Bool)

(declare-fun res!3142256 () Bool)

(declare-fun e!4673279 () Bool)

(assert (=> b!7917196 (=> (not res!3142256) (not e!4673279))))

(declare-fun lt!2690734 () List!74546)

(assert (=> b!7917196 (= res!3142256 (= (size!43203 lt!2690734) (+ (size!43203 lt!2690675) (size!43203 call!734648))))))

(declare-fun b!7917195 () Bool)

(declare-fun e!4673280 () List!74546)

(assert (=> b!7917195 (= e!4673280 (Cons!74422 (h!80870 lt!2690675) (++!18240 (t!390067 lt!2690675) call!734648)))))

(declare-fun d!2362087 () Bool)

(assert (=> d!2362087 e!4673279))

(declare-fun res!3142257 () Bool)

(assert (=> d!2362087 (=> (not res!3142257) (not e!4673279))))

(assert (=> d!2362087 (= res!3142257 (= (content!15766 lt!2690734) ((_ map or) (content!15766 lt!2690675) (content!15766 call!734648))))))

(assert (=> d!2362087 (= lt!2690734 e!4673280)))

(declare-fun c!1452844 () Bool)

(assert (=> d!2362087 (= c!1452844 ((_ is Nil!74422) lt!2690675))))

(assert (=> d!2362087 (= (++!18240 lt!2690675 call!734648) lt!2690734)))

(declare-fun b!7917194 () Bool)

(assert (=> b!7917194 (= e!4673280 call!734648)))

(declare-fun b!7917197 () Bool)

(assert (=> b!7917197 (= e!4673279 (or (not (= call!734648 Nil!74422)) (= lt!2690734 lt!2690675)))))

(assert (= (and d!2362087 c!1452844) b!7917194))

(assert (= (and d!2362087 (not c!1452844)) b!7917195))

(assert (= (and d!2362087 res!3142257) b!7917196))

(assert (= (and b!7917196 res!3142256) b!7917197))

(declare-fun m!8292426 () Bool)

(assert (=> b!7917196 m!8292426))

(declare-fun m!8292428 () Bool)

(assert (=> b!7917196 m!8292428))

(declare-fun m!8292430 () Bool)

(assert (=> b!7917196 m!8292430))

(declare-fun m!8292432 () Bool)

(assert (=> b!7917195 m!8292432))

(declare-fun m!8292434 () Bool)

(assert (=> d!2362087 m!8292434))

(declare-fun m!8292436 () Bool)

(assert (=> d!2362087 m!8292436))

(declare-fun m!8292438 () Bool)

(assert (=> d!2362087 m!8292438))

(assert (=> b!7917010 d!2362087))

(assert (=> b!7916820 d!2362043))

(declare-fun d!2362089 () Bool)

(assert (=> d!2362089 (= (height!2192 (right!57164 c!5365)) (ite ((_ is Empty!15876) (right!57164 c!5365)) 0 (ite ((_ is Leaf!30195) (right!57164 c!5365)) 1 (cheight!16087 (right!57164 c!5365)))))))

(assert (=> b!7916820 d!2362089))

(declare-fun d!2362091 () Bool)

(declare-fun res!3142262 () Bool)

(declare-fun e!4673283 () Bool)

(assert (=> d!2362091 (=> (not res!3142262) (not e!4673283))))

(assert (=> d!2362091 (= res!3142262 (<= (size!43203 (list!19373 (xs!19260 (right!57164 c!5365)))) 512))))

(assert (=> d!2362091 (= (inv!95583 (right!57164 c!5365)) e!4673283)))

(declare-fun b!7917202 () Bool)

(declare-fun res!3142263 () Bool)

(assert (=> b!7917202 (=> (not res!3142263) (not e!4673283))))

(assert (=> b!7917202 (= res!3142263 (= (csize!31983 (right!57164 c!5365)) (size!43203 (list!19373 (xs!19260 (right!57164 c!5365))))))))

(declare-fun b!7917203 () Bool)

(assert (=> b!7917203 (= e!4673283 (and (> (csize!31983 (right!57164 c!5365)) 0) (<= (csize!31983 (right!57164 c!5365)) 512)))))

(assert (= (and d!2362091 res!3142262) b!7917202))

(assert (= (and b!7917202 res!3142263) b!7917203))

(assert (=> d!2362091 m!8292234))

(assert (=> d!2362091 m!8292234))

(declare-fun m!8292440 () Bool)

(assert (=> d!2362091 m!8292440))

(assert (=> b!7917202 m!8292234))

(assert (=> b!7917202 m!8292234))

(assert (=> b!7917202 m!8292440))

(assert (=> b!7916784 d!2362091))

(declare-fun d!2362093 () Bool)

(declare-fun res!3142264 () Bool)

(declare-fun e!4673284 () Bool)

(assert (=> d!2362093 (=> (not res!3142264) (not e!4673284))))

(assert (=> d!2362093 (= res!3142264 (<= (size!43203 (list!19373 (xs!19260 c!5365))) 512))))

(assert (=> d!2362093 (= (inv!95583 c!5365) e!4673284)))

(declare-fun b!7917204 () Bool)

(declare-fun res!3142265 () Bool)

(assert (=> b!7917204 (=> (not res!3142265) (not e!4673284))))

(assert (=> b!7917204 (= res!3142265 (= (csize!31983 c!5365) (size!43203 (list!19373 (xs!19260 c!5365)))))))

(declare-fun b!7917205 () Bool)

(assert (=> b!7917205 (= e!4673284 (and (> (csize!31983 c!5365) 0) (<= (csize!31983 c!5365) 512)))))

(assert (= (and d!2362093 res!3142264) b!7917204))

(assert (= (and b!7917204 res!3142265) b!7917205))

(assert (=> d!2362093 m!8292058))

(assert (=> d!2362093 m!8292058))

(declare-fun m!8292442 () Bool)

(assert (=> d!2362093 m!8292442))

(assert (=> b!7917204 m!8292058))

(assert (=> b!7917204 m!8292058))

(assert (=> b!7917204 m!8292442))

(assert (=> b!7916829 d!2362093))

(declare-fun d!2362095 () Bool)

(declare-fun c!1452845 () Bool)

(assert (=> d!2362095 (= c!1452845 ((_ is Empty!15876) lt!2690542))))

(declare-fun e!4673285 () List!74546)

(assert (=> d!2362095 (= (list!19371 lt!2690542) e!4673285)))

(declare-fun b!7917206 () Bool)

(assert (=> b!7917206 (= e!4673285 Nil!74422)))

(declare-fun b!7917208 () Bool)

(declare-fun e!4673286 () List!74546)

(assert (=> b!7917208 (= e!4673286 (list!19373 (xs!19260 lt!2690542)))))

(declare-fun b!7917209 () Bool)

(assert (=> b!7917209 (= e!4673286 (++!18240 (list!19371 (left!56834 lt!2690542)) (list!19371 (right!57164 lt!2690542))))))

(declare-fun b!7917207 () Bool)

(assert (=> b!7917207 (= e!4673285 e!4673286)))

(declare-fun c!1452846 () Bool)

(assert (=> b!7917207 (= c!1452846 ((_ is Leaf!30195) lt!2690542))))

(assert (= (and d!2362095 c!1452845) b!7917206))

(assert (= (and d!2362095 (not c!1452845)) b!7917207))

(assert (= (and b!7917207 c!1452846) b!7917208))

(assert (= (and b!7917207 (not c!1452846)) b!7917209))

(declare-fun m!8292444 () Bool)

(assert (=> b!7917208 m!8292444))

(declare-fun m!8292446 () Bool)

(assert (=> b!7917209 m!8292446))

(declare-fun m!8292448 () Bool)

(assert (=> b!7917209 m!8292448))

(assert (=> b!7917209 m!8292446))

(assert (=> b!7917209 m!8292448))

(declare-fun m!8292450 () Bool)

(assert (=> b!7917209 m!8292450))

(assert (=> d!2361945 d!2362095))

(declare-fun b!7917212 () Bool)

(declare-fun res!3142266 () Bool)

(declare-fun e!4673287 () Bool)

(assert (=> b!7917212 (=> (not res!3142266) (not e!4673287))))

(declare-fun lt!2690735 () List!74546)

(assert (=> b!7917212 (= res!3142266 (= (size!43203 lt!2690735) (+ (size!43203 (list!19371 lt!2690522)) (size!43203 (t!390067 ll!14)))))))

(declare-fun b!7917211 () Bool)

(declare-fun e!4673288 () List!74546)

(assert (=> b!7917211 (= e!4673288 (Cons!74422 (h!80870 (list!19371 lt!2690522)) (++!18240 (t!390067 (list!19371 lt!2690522)) (t!390067 ll!14))))))

(declare-fun d!2362097 () Bool)

(assert (=> d!2362097 e!4673287))

(declare-fun res!3142267 () Bool)

(assert (=> d!2362097 (=> (not res!3142267) (not e!4673287))))

(assert (=> d!2362097 (= res!3142267 (= (content!15766 lt!2690735) ((_ map or) (content!15766 (list!19371 lt!2690522)) (content!15766 (t!390067 ll!14)))))))

(assert (=> d!2362097 (= lt!2690735 e!4673288)))

(declare-fun c!1452847 () Bool)

(assert (=> d!2362097 (= c!1452847 ((_ is Nil!74422) (list!19371 lt!2690522)))))

(assert (=> d!2362097 (= (++!18240 (list!19371 lt!2690522) (t!390067 ll!14)) lt!2690735)))

(declare-fun b!7917210 () Bool)

(assert (=> b!7917210 (= e!4673288 (t!390067 ll!14))))

(declare-fun b!7917213 () Bool)

(assert (=> b!7917213 (= e!4673287 (or (not (= (t!390067 ll!14) Nil!74422)) (= lt!2690735 (list!19371 lt!2690522))))))

(assert (= (and d!2362097 c!1452847) b!7917210))

(assert (= (and d!2362097 (not c!1452847)) b!7917211))

(assert (= (and d!2362097 res!3142267) b!7917212))

(assert (= (and b!7917212 res!3142266) b!7917213))

(declare-fun m!8292452 () Bool)

(assert (=> b!7917212 m!8292452))

(assert (=> b!7917212 m!8291708))

(declare-fun m!8292454 () Bool)

(assert (=> b!7917212 m!8292454))

(assert (=> b!7917212 m!8291906))

(declare-fun m!8292456 () Bool)

(assert (=> b!7917211 m!8292456))

(declare-fun m!8292458 () Bool)

(assert (=> d!2362097 m!8292458))

(assert (=> d!2362097 m!8291708))

(declare-fun m!8292460 () Bool)

(assert (=> d!2362097 m!8292460))

(assert (=> d!2362097 m!8291914))

(assert (=> d!2361945 d!2362097))

(assert (=> d!2361945 d!2361957))

(declare-fun b!7917214 () Bool)

(declare-fun e!4673290 () Bool)

(declare-fun e!4673289 () Bool)

(assert (=> b!7917214 (= e!4673290 e!4673289)))

(declare-fun res!3142272 () Bool)

(assert (=> b!7917214 (=> (not res!3142272) (not e!4673289))))

(assert (=> b!7917214 (= res!3142272 (<= (- 1) (- (height!2192 (left!56834 lt!2690522)) (height!2192 (right!57164 lt!2690522)))))))

(declare-fun b!7917215 () Bool)

(declare-fun res!3142268 () Bool)

(assert (=> b!7917215 (=> (not res!3142268) (not e!4673289))))

(assert (=> b!7917215 (= res!3142268 (isBalanced!4502 (left!56834 lt!2690522)))))

(declare-fun b!7917216 () Bool)

(declare-fun res!3142270 () Bool)

(assert (=> b!7917216 (=> (not res!3142270) (not e!4673289))))

(assert (=> b!7917216 (= res!3142270 (not (isEmpty!42739 (left!56834 lt!2690522))))))

(declare-fun b!7917217 () Bool)

(declare-fun res!3142273 () Bool)

(assert (=> b!7917217 (=> (not res!3142273) (not e!4673289))))

(assert (=> b!7917217 (= res!3142273 (<= (- (height!2192 (left!56834 lt!2690522)) (height!2192 (right!57164 lt!2690522))) 1))))

(declare-fun b!7917218 () Bool)

(declare-fun res!3142271 () Bool)

(assert (=> b!7917218 (=> (not res!3142271) (not e!4673289))))

(assert (=> b!7917218 (= res!3142271 (isBalanced!4502 (right!57164 lt!2690522)))))

(declare-fun b!7917219 () Bool)

(assert (=> b!7917219 (= e!4673289 (not (isEmpty!42739 (right!57164 lt!2690522))))))

(declare-fun d!2362099 () Bool)

(declare-fun res!3142269 () Bool)

(assert (=> d!2362099 (=> res!3142269 e!4673290)))

(assert (=> d!2362099 (= res!3142269 (not ((_ is Node!15876) lt!2690522)))))

(assert (=> d!2362099 (= (isBalanced!4502 lt!2690522) e!4673290)))

(assert (= (and d!2362099 (not res!3142269)) b!7917214))

(assert (= (and b!7917214 res!3142272) b!7917217))

(assert (= (and b!7917217 res!3142273) b!7917215))

(assert (= (and b!7917215 res!3142268) b!7917218))

(assert (= (and b!7917218 res!3142271) b!7917216))

(assert (= (and b!7917216 res!3142270) b!7917219))

(declare-fun m!8292462 () Bool)

(assert (=> b!7917216 m!8292462))

(declare-fun m!8292464 () Bool)

(assert (=> b!7917215 m!8292464))

(declare-fun m!8292466 () Bool)

(assert (=> b!7917219 m!8292466))

(declare-fun m!8292468 () Bool)

(assert (=> b!7917218 m!8292468))

(declare-fun m!8292470 () Bool)

(assert (=> b!7917217 m!8292470))

(declare-fun m!8292472 () Bool)

(assert (=> b!7917217 m!8292472))

(assert (=> b!7917214 m!8292470))

(assert (=> b!7917214 m!8292472))

(assert (=> d!2361945 d!2362099))

(declare-fun d!2362101 () Bool)

(declare-fun lt!2690738 () IArray!31813)

(assert (=> d!2362101 (= lt!2690738 (IArray!31814 ($colon+!299 (list!19373 (xs!19260 c!5365)) (h!80870 ll!14))))))

(declare-fun choose!59803 (IArray!31813 T!145622) IArray!31813)

(assert (=> d!2362101 (= lt!2690738 (choose!59803 (xs!19260 c!5365) (h!80870 ll!14)))))

(declare-fun size!43205 (IArray!31813) Int)

(assert (=> d!2362101 (<= (+ (size!43205 (xs!19260 c!5365)) 1) 2147483647)))

(assert (=> d!2362101 (= (append!1126 (xs!19260 c!5365) (h!80870 ll!14)) lt!2690738)))

(declare-fun bs!1968485 () Bool)

(assert (= bs!1968485 d!2362101))

(assert (=> bs!1968485 m!8292058))

(assert (=> bs!1968485 m!8292058))

(assert (=> bs!1968485 m!8292060))

(declare-fun m!8292474 () Bool)

(assert (=> bs!1968485 m!8292474))

(declare-fun m!8292476 () Bool)

(assert (=> bs!1968485 m!8292476))

(assert (=> b!7917016 d!2362101))

(declare-fun b!7917236 () Bool)

(declare-fun res!3142285 () Bool)

(declare-fun e!4673298 () Bool)

(assert (=> b!7917236 (=> (not res!3142285) (not e!4673298))))

(declare-fun lt!2690741 () List!74546)

(assert (=> b!7917236 (= res!3142285 (= (size!43203 lt!2690741) (+ (size!43203 (list!19373 (xs!19260 c!5365))) 1)))))

(declare-fun b!7917237 () Bool)

(declare-fun res!3142283 () Bool)

(assert (=> b!7917237 (=> (not res!3142283) (not e!4673298))))

(assert (=> b!7917237 (= res!3142283 (= (content!15766 lt!2690741) ((_ map or) (content!15766 (list!19373 (xs!19260 c!5365))) (store ((as const (Array T!145622 Bool)) false) (h!80870 ll!14) true))))))

(declare-fun b!7917238 () Bool)

(assert (=> b!7917238 (= e!4673298 (= lt!2690741 (++!18240 (list!19373 (xs!19260 c!5365)) (Cons!74422 (h!80870 ll!14) Nil!74422))))))

(declare-fun b!7917239 () Bool)

(declare-fun res!3142284 () Bool)

(assert (=> b!7917239 (=> (not res!3142284) (not e!4673298))))

(declare-fun e!4673299 () Bool)

(assert (=> b!7917239 (= res!3142284 e!4673299)))

(declare-fun c!1452852 () Bool)

(declare-fun isize!110 (List!74546) (_ BitVec 32))

(assert (=> b!7917239 (= c!1452852 (bvslt (isize!110 (list!19373 (xs!19260 c!5365))) #b01111111111111111111111111111111))))

(declare-fun b!7917240 () Bool)

(declare-fun call!734667 () (_ BitVec 32))

(declare-fun call!734668 () (_ BitVec 32))

(assert (=> b!7917240 (= e!4673299 (= call!734667 call!734668))))

(declare-fun b!7917241 () Bool)

(declare-fun e!4673297 () List!74546)

(assert (=> b!7917241 (= e!4673297 (Cons!74422 (h!80870 ll!14) (list!19373 (xs!19260 c!5365))))))

(declare-fun d!2362103 () Bool)

(assert (=> d!2362103 e!4673298))

(declare-fun res!3142282 () Bool)

(assert (=> d!2362103 (=> (not res!3142282) (not e!4673298))))

(assert (=> d!2362103 (= res!3142282 ((_ is Cons!74422) lt!2690741))))

(assert (=> d!2362103 (= lt!2690741 e!4673297)))

(declare-fun c!1452853 () Bool)

(assert (=> d!2362103 (= c!1452853 ((_ is Nil!74422) (list!19373 (xs!19260 c!5365))))))

(assert (=> d!2362103 (= ($colon+!299 (list!19373 (xs!19260 c!5365)) (h!80870 ll!14)) lt!2690741)))

(declare-fun b!7917242 () Bool)

(assert (=> b!7917242 (= e!4673297 (Cons!74422 (h!80870 (list!19373 (xs!19260 c!5365))) ($colon+!299 (t!390067 (list!19373 (xs!19260 c!5365))) (h!80870 ll!14))))))

(declare-fun bm!734662 () Bool)

(assert (=> bm!734662 (= call!734668 (isize!110 (list!19373 (xs!19260 c!5365))))))

(declare-fun b!7917243 () Bool)

(assert (=> b!7917243 (= e!4673299 (= call!734667 (bvadd call!734668 #b00000000000000000000000000000001)))))

(declare-fun bm!734663 () Bool)

(assert (=> bm!734663 (= call!734667 (isize!110 lt!2690741))))

(assert (= (and d!2362103 c!1452853) b!7917241))

(assert (= (and d!2362103 (not c!1452853)) b!7917242))

(assert (= (and d!2362103 res!3142282) b!7917236))

(assert (= (and b!7917236 res!3142285) b!7917239))

(assert (= (and b!7917239 c!1452852) b!7917243))

(assert (= (and b!7917239 (not c!1452852)) b!7917240))

(assert (= (or b!7917243 b!7917240) bm!734663))

(assert (= (or b!7917243 b!7917240) bm!734662))

(assert (= (and b!7917239 res!3142284) b!7917237))

(assert (= (and b!7917237 res!3142283) b!7917238))

(declare-fun m!8292478 () Bool)

(assert (=> bm!734663 m!8292478))

(declare-fun m!8292480 () Bool)

(assert (=> b!7917237 m!8292480))

(assert (=> b!7917237 m!8292058))

(declare-fun m!8292482 () Bool)

(assert (=> b!7917237 m!8292482))

(declare-fun m!8292484 () Bool)

(assert (=> b!7917237 m!8292484))

(assert (=> b!7917238 m!8292058))

(declare-fun m!8292486 () Bool)

(assert (=> b!7917238 m!8292486))

(assert (=> bm!734662 m!8292058))

(declare-fun m!8292488 () Bool)

(assert (=> bm!734662 m!8292488))

(assert (=> b!7917239 m!8292058))

(assert (=> b!7917239 m!8292488))

(declare-fun m!8292490 () Bool)

(assert (=> b!7917236 m!8292490))

(assert (=> b!7917236 m!8292058))

(assert (=> b!7917236 m!8292442))

(declare-fun m!8292492 () Bool)

(assert (=> b!7917242 m!8292492))

(assert (=> b!7917016 d!2362103))

(assert (=> b!7917016 d!2362057))

(declare-fun d!2362105 () Bool)

(declare-fun res!3142292 () Bool)

(declare-fun e!4673302 () Bool)

(assert (=> d!2362105 (=> (not res!3142292) (not e!4673302))))

(assert (=> d!2362105 (= res!3142292 (= (csize!31982 (right!57164 c!5365)) (+ (size!43204 (left!56834 (right!57164 c!5365))) (size!43204 (right!57164 (right!57164 c!5365))))))))

(assert (=> d!2362105 (= (inv!95582 (right!57164 c!5365)) e!4673302)))

(declare-fun b!7917250 () Bool)

(declare-fun res!3142293 () Bool)

(assert (=> b!7917250 (=> (not res!3142293) (not e!4673302))))

(assert (=> b!7917250 (= res!3142293 (and (not (= (left!56834 (right!57164 c!5365)) Empty!15876)) (not (= (right!57164 (right!57164 c!5365)) Empty!15876))))))

(declare-fun b!7917251 () Bool)

(declare-fun res!3142294 () Bool)

(assert (=> b!7917251 (=> (not res!3142294) (not e!4673302))))

(assert (=> b!7917251 (= res!3142294 (= (cheight!16087 (right!57164 c!5365)) (+ (max!0 (height!2192 (left!56834 (right!57164 c!5365))) (height!2192 (right!57164 (right!57164 c!5365)))) 1)))))

(declare-fun b!7917252 () Bool)

(assert (=> b!7917252 (= e!4673302 (<= 0 (cheight!16087 (right!57164 c!5365))))))

(assert (= (and d!2362105 res!3142292) b!7917250))

(assert (= (and b!7917250 res!3142293) b!7917251))

(assert (= (and b!7917251 res!3142294) b!7917252))

(declare-fun m!8292494 () Bool)

(assert (=> d!2362105 m!8292494))

(declare-fun m!8292496 () Bool)

(assert (=> d!2362105 m!8292496))

(assert (=> b!7917251 m!8292268))

(declare-fun m!8292498 () Bool)

(assert (=> b!7917251 m!8292498))

(assert (=> b!7917251 m!8292268))

(assert (=> b!7917251 m!8292498))

(declare-fun m!8292500 () Bool)

(assert (=> b!7917251 m!8292500))

(assert (=> b!7916782 d!2362105))

(declare-fun d!2362107 () Bool)

(declare-fun res!3142295 () Bool)

(declare-fun e!4673303 () Bool)

(assert (=> d!2362107 (=> (not res!3142295) (not e!4673303))))

(assert (=> d!2362107 (= res!3142295 (= (csize!31982 c!5365) (+ (size!43204 (left!56834 c!5365)) (size!43204 (right!57164 c!5365)))))))

(assert (=> d!2362107 (= (inv!95582 c!5365) e!4673303)))

(declare-fun b!7917253 () Bool)

(declare-fun res!3142296 () Bool)

(assert (=> b!7917253 (=> (not res!3142296) (not e!4673303))))

(assert (=> b!7917253 (= res!3142296 (and (not (= (left!56834 c!5365) Empty!15876)) (not (= (right!57164 c!5365) Empty!15876))))))

(declare-fun b!7917254 () Bool)

(declare-fun res!3142297 () Bool)

(assert (=> b!7917254 (=> (not res!3142297) (not e!4673303))))

(assert (=> b!7917254 (= res!3142297 (= (cheight!16087 c!5365) (+ (max!0 (height!2192 (left!56834 c!5365)) (height!2192 (right!57164 c!5365))) 1)))))

(declare-fun b!7917255 () Bool)

(assert (=> b!7917255 (= e!4673303 (<= 0 (cheight!16087 c!5365)))))

(assert (= (and d!2362107 res!3142295) b!7917253))

(assert (= (and b!7917253 res!3142296) b!7917254))

(assert (= (and b!7917254 res!3142297) b!7917255))

(declare-fun m!8292502 () Bool)

(assert (=> d!2362107 m!8292502))

(assert (=> d!2362107 m!8292332))

(assert (=> b!7917254 m!8291778))

(assert (=> b!7917254 m!8291780))

(assert (=> b!7917254 m!8291778))

(assert (=> b!7917254 m!8291780))

(declare-fun m!8292504 () Bool)

(assert (=> b!7917254 m!8292504))

(assert (=> b!7916827 d!2362107))

(declare-fun d!2362109 () Bool)

(declare-fun c!1452854 () Bool)

(assert (=> d!2362109 (= c!1452854 ((_ is Empty!15876) lt!2690668))))

(declare-fun e!4673304 () List!74546)

(assert (=> d!2362109 (= (list!19371 lt!2690668) e!4673304)))

(declare-fun b!7917256 () Bool)

(assert (=> b!7917256 (= e!4673304 Nil!74422)))

(declare-fun b!7917258 () Bool)

(declare-fun e!4673305 () List!74546)

(assert (=> b!7917258 (= e!4673305 (list!19373 (xs!19260 lt!2690668)))))

(declare-fun b!7917259 () Bool)

(assert (=> b!7917259 (= e!4673305 (++!18240 (list!19371 (left!56834 lt!2690668)) (list!19371 (right!57164 lt!2690668))))))

(declare-fun b!7917257 () Bool)

(assert (=> b!7917257 (= e!4673304 e!4673305)))

(declare-fun c!1452855 () Bool)

(assert (=> b!7917257 (= c!1452855 ((_ is Leaf!30195) lt!2690668))))

(assert (= (and d!2362109 c!1452854) b!7917256))

(assert (= (and d!2362109 (not c!1452854)) b!7917257))

(assert (= (and b!7917257 c!1452855) b!7917258))

(assert (= (and b!7917257 (not c!1452855)) b!7917259))

(declare-fun m!8292506 () Bool)

(assert (=> b!7917258 m!8292506))

(declare-fun m!8292508 () Bool)

(assert (=> b!7917259 m!8292508))

(declare-fun m!8292510 () Bool)

(assert (=> b!7917259 m!8292510))

(assert (=> b!7917259 m!8292508))

(assert (=> b!7917259 m!8292510))

(declare-fun m!8292512 () Bool)

(assert (=> b!7917259 m!8292512))

(assert (=> b!7917015 d!2362109))

(declare-fun b!7917260 () Bool)

(declare-fun res!3142301 () Bool)

(declare-fun e!4673307 () Bool)

(assert (=> b!7917260 (=> (not res!3142301) (not e!4673307))))

(declare-fun lt!2690742 () List!74546)

(assert (=> b!7917260 (= res!3142301 (= (size!43203 lt!2690742) (+ (size!43203 (list!19371 c!5365)) 1)))))

(declare-fun b!7917261 () Bool)

(declare-fun res!3142299 () Bool)

(assert (=> b!7917261 (=> (not res!3142299) (not e!4673307))))

(assert (=> b!7917261 (= res!3142299 (= (content!15766 lt!2690742) ((_ map or) (content!15766 (list!19371 c!5365)) (store ((as const (Array T!145622 Bool)) false) (h!80870 ll!14) true))))))

(declare-fun b!7917262 () Bool)

(assert (=> b!7917262 (= e!4673307 (= lt!2690742 (++!18240 (list!19371 c!5365) (Cons!74422 (h!80870 ll!14) Nil!74422))))))

(declare-fun b!7917263 () Bool)

(declare-fun res!3142300 () Bool)

(assert (=> b!7917263 (=> (not res!3142300) (not e!4673307))))

(declare-fun e!4673308 () Bool)

(assert (=> b!7917263 (= res!3142300 e!4673308)))

(declare-fun c!1452856 () Bool)

(assert (=> b!7917263 (= c!1452856 (bvslt (isize!110 (list!19371 c!5365)) #b01111111111111111111111111111111))))

(declare-fun b!7917264 () Bool)

(declare-fun call!734669 () (_ BitVec 32))

(declare-fun call!734670 () (_ BitVec 32))

(assert (=> b!7917264 (= e!4673308 (= call!734669 call!734670))))

(declare-fun b!7917265 () Bool)

(declare-fun e!4673306 () List!74546)

(assert (=> b!7917265 (= e!4673306 (Cons!74422 (h!80870 ll!14) (list!19371 c!5365)))))

(declare-fun d!2362111 () Bool)

(assert (=> d!2362111 e!4673307))

(declare-fun res!3142298 () Bool)

(assert (=> d!2362111 (=> (not res!3142298) (not e!4673307))))

(assert (=> d!2362111 (= res!3142298 ((_ is Cons!74422) lt!2690742))))

(assert (=> d!2362111 (= lt!2690742 e!4673306)))

(declare-fun c!1452857 () Bool)

(assert (=> d!2362111 (= c!1452857 ((_ is Nil!74422) (list!19371 c!5365)))))

(assert (=> d!2362111 (= ($colon+!299 (list!19371 c!5365) (h!80870 ll!14)) lt!2690742)))

(declare-fun b!7917266 () Bool)

(assert (=> b!7917266 (= e!4673306 (Cons!74422 (h!80870 (list!19371 c!5365)) ($colon+!299 (t!390067 (list!19371 c!5365)) (h!80870 ll!14))))))

(declare-fun bm!734664 () Bool)

(assert (=> bm!734664 (= call!734670 (isize!110 (list!19371 c!5365)))))

(declare-fun b!7917267 () Bool)

(assert (=> b!7917267 (= e!4673308 (= call!734669 (bvadd call!734670 #b00000000000000000000000000000001)))))

(declare-fun bm!734665 () Bool)

(assert (=> bm!734665 (= call!734669 (isize!110 lt!2690742))))

(assert (= (and d!2362111 c!1452857) b!7917265))

(assert (= (and d!2362111 (not c!1452857)) b!7917266))

(assert (= (and d!2362111 res!3142298) b!7917260))

(assert (= (and b!7917260 res!3142301) b!7917263))

(assert (= (and b!7917263 c!1452856) b!7917267))

(assert (= (and b!7917263 (not c!1452856)) b!7917264))

(assert (= (or b!7917267 b!7917264) bm!734665))

(assert (= (or b!7917267 b!7917264) bm!734664))

(assert (= (and b!7917263 res!3142300) b!7917261))

(assert (= (and b!7917261 res!3142299) b!7917262))

(declare-fun m!8292514 () Bool)

(assert (=> bm!734665 m!8292514))

(declare-fun m!8292516 () Bool)

(assert (=> b!7917261 m!8292516))

(assert (=> b!7917261 m!8291706))

(declare-fun m!8292518 () Bool)

(assert (=> b!7917261 m!8292518))

(assert (=> b!7917261 m!8292484))

(assert (=> b!7917262 m!8291706))

(declare-fun m!8292520 () Bool)

(assert (=> b!7917262 m!8292520))

(assert (=> bm!734664 m!8291706))

(declare-fun m!8292522 () Bool)

(assert (=> bm!734664 m!8292522))

(assert (=> b!7917263 m!8291706))

(assert (=> b!7917263 m!8292522))

(declare-fun m!8292524 () Bool)

(assert (=> b!7917260 m!8292524))

(assert (=> b!7917260 m!8291706))

(declare-fun m!8292526 () Bool)

(assert (=> b!7917260 m!8292526))

(declare-fun m!8292528 () Bool)

(assert (=> b!7917266 m!8292528))

(assert (=> b!7917015 d!2362111))

(assert (=> b!7917015 d!2361981))

(declare-fun d!2362113 () Bool)

(declare-fun lt!2690743 () Int)

(assert (=> d!2362113 (>= lt!2690743 0)))

(declare-fun e!4673309 () Int)

(assert (=> d!2362113 (= lt!2690743 e!4673309)))

(declare-fun c!1452858 () Bool)

(assert (=> d!2362113 (= c!1452858 ((_ is Nil!74422) lt!2690683))))

(assert (=> d!2362113 (= (size!43203 lt!2690683) lt!2690743)))

(declare-fun b!7917268 () Bool)

(assert (=> b!7917268 (= e!4673309 0)))

(declare-fun b!7917269 () Bool)

(assert (=> b!7917269 (= e!4673309 (+ 1 (size!43203 (t!390067 lt!2690683))))))

(assert (= (and d!2362113 c!1452858) b!7917268))

(assert (= (and d!2362113 (not c!1452858)) b!7917269))

(declare-fun m!8292530 () Bool)

(assert (=> b!7917269 m!8292530))

(assert (=> b!7917037 d!2362113))

(assert (=> b!7917037 d!2362069))

(declare-fun d!2362115 () Bool)

(declare-fun lt!2690744 () Int)

(assert (=> d!2362115 (>= lt!2690744 0)))

(declare-fun e!4673310 () Int)

(assert (=> d!2362115 (= lt!2690744 e!4673310)))

(declare-fun c!1452859 () Bool)

(assert (=> d!2362115 (= c!1452859 ((_ is Nil!74422) lt!2690518))))

(assert (=> d!2362115 (= (size!43203 lt!2690518) lt!2690744)))

(declare-fun b!7917270 () Bool)

(assert (=> b!7917270 (= e!4673310 0)))

(declare-fun b!7917271 () Bool)

(assert (=> b!7917271 (= e!4673310 (+ 1 (size!43203 (t!390067 lt!2690518))))))

(assert (= (and d!2362115 c!1452859) b!7917270))

(assert (= (and d!2362115 (not c!1452859)) b!7917271))

(declare-fun m!8292532 () Bool)

(assert (=> b!7917271 m!8292532))

(assert (=> b!7917037 d!2362115))

(declare-fun d!2362117 () Bool)

(declare-fun c!1452860 () Bool)

(assert (=> d!2362117 (= c!1452860 ((_ is Nil!74422) lt!2690685))))

(declare-fun e!4673311 () (InoxSet T!145622))

(assert (=> d!2362117 (= (content!15766 lt!2690685) e!4673311)))

(declare-fun b!7917272 () Bool)

(assert (=> b!7917272 (= e!4673311 ((as const (Array T!145622 Bool)) false))))

(declare-fun b!7917273 () Bool)

(assert (=> b!7917273 (= e!4673311 ((_ map or) (store ((as const (Array T!145622 Bool)) false) (h!80870 lt!2690685) true) (content!15766 (t!390067 lt!2690685))))))

(assert (= (and d!2362117 c!1452860) b!7917272))

(assert (= (and d!2362117 (not c!1452860)) b!7917273))

(declare-fun m!8292534 () Bool)

(assert (=> b!7917273 m!8292534))

(declare-fun m!8292536 () Bool)

(assert (=> b!7917273 m!8292536))

(assert (=> d!2361993 d!2362117))

(declare-fun d!2362119 () Bool)

(declare-fun c!1452861 () Bool)

(assert (=> d!2362119 (= c!1452861 ((_ is Nil!74422) lt!2690517))))

(declare-fun e!4673312 () (InoxSet T!145622))

(assert (=> d!2362119 (= (content!15766 lt!2690517) e!4673312)))

(declare-fun b!7917274 () Bool)

(assert (=> b!7917274 (= e!4673312 ((as const (Array T!145622 Bool)) false))))

(declare-fun b!7917275 () Bool)

(assert (=> b!7917275 (= e!4673312 ((_ map or) (store ((as const (Array T!145622 Bool)) false) (h!80870 lt!2690517) true) (content!15766 (t!390067 lt!2690517))))))

(assert (= (and d!2362119 c!1452861) b!7917274))

(assert (= (and d!2362119 (not c!1452861)) b!7917275))

(declare-fun m!8292538 () Bool)

(assert (=> b!7917275 m!8292538))

(declare-fun m!8292540 () Bool)

(assert (=> b!7917275 m!8292540))

(assert (=> d!2361993 d!2362119))

(assert (=> d!2361993 d!2362011))

(declare-fun d!2362121 () Bool)

(declare-fun lt!2690747 () IArray!31813)

(declare-fun fill!258 (Int T!145622) List!74546)

(assert (=> d!2362121 (= lt!2690747 (IArray!31814 (fill!258 1 (h!80870 ll!14))))))

(declare-fun choose!59804 (Int T!145622) IArray!31813)

(assert (=> d!2362121 (= lt!2690747 (choose!59804 1 (h!80870 ll!14)))))

(assert (=> d!2362121 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!2362121 (= (fill!257 1 (h!80870 ll!14)) lt!2690747)))

(declare-fun bs!1968486 () Bool)

(assert (= bs!1968486 d!2362121))

(declare-fun m!8292542 () Bool)

(assert (=> bs!1968486 m!8292542))

(declare-fun m!8292544 () Bool)

(assert (=> bs!1968486 m!8292544))

(assert (=> bm!734644 d!2362121))

(declare-fun b!7917278 () Bool)

(declare-fun res!3142302 () Bool)

(declare-fun e!4673313 () Bool)

(assert (=> b!7917278 (=> (not res!3142302) (not e!4673313))))

(declare-fun lt!2690748 () List!74546)

(assert (=> b!7917278 (= res!3142302 (= (size!43203 lt!2690748) (+ (size!43203 (list!19371 (left!56834 lt!2690523))) (size!43203 (list!19371 (right!57164 lt!2690523))))))))

(declare-fun b!7917277 () Bool)

(declare-fun e!4673314 () List!74546)

(assert (=> b!7917277 (= e!4673314 (Cons!74422 (h!80870 (list!19371 (left!56834 lt!2690523))) (++!18240 (t!390067 (list!19371 (left!56834 lt!2690523))) (list!19371 (right!57164 lt!2690523)))))))

(declare-fun d!2362123 () Bool)

(assert (=> d!2362123 e!4673313))

(declare-fun res!3142303 () Bool)

(assert (=> d!2362123 (=> (not res!3142303) (not e!4673313))))

(assert (=> d!2362123 (= res!3142303 (= (content!15766 lt!2690748) ((_ map or) (content!15766 (list!19371 (left!56834 lt!2690523))) (content!15766 (list!19371 (right!57164 lt!2690523))))))))

(assert (=> d!2362123 (= lt!2690748 e!4673314)))

(declare-fun c!1452862 () Bool)

(assert (=> d!2362123 (= c!1452862 ((_ is Nil!74422) (list!19371 (left!56834 lt!2690523))))))

(assert (=> d!2362123 (= (++!18240 (list!19371 (left!56834 lt!2690523)) (list!19371 (right!57164 lt!2690523))) lt!2690748)))

(declare-fun b!7917276 () Bool)

(assert (=> b!7917276 (= e!4673314 (list!19371 (right!57164 lt!2690523)))))

(declare-fun b!7917279 () Bool)

(assert (=> b!7917279 (= e!4673313 (or (not (= (list!19371 (right!57164 lt!2690523)) Nil!74422)) (= lt!2690748 (list!19371 (left!56834 lt!2690523)))))))

(assert (= (and d!2362123 c!1452862) b!7917276))

(assert (= (and d!2362123 (not c!1452862)) b!7917277))

(assert (= (and d!2362123 res!3142303) b!7917278))

(assert (= (and b!7917278 res!3142302) b!7917279))

(declare-fun m!8292546 () Bool)

(assert (=> b!7917278 m!8292546))

(assert (=> b!7917278 m!8291796))

(declare-fun m!8292548 () Bool)

(assert (=> b!7917278 m!8292548))

(assert (=> b!7917278 m!8291798))

(declare-fun m!8292550 () Bool)

(assert (=> b!7917278 m!8292550))

(assert (=> b!7917277 m!8291798))

(declare-fun m!8292552 () Bool)

(assert (=> b!7917277 m!8292552))

(declare-fun m!8292554 () Bool)

(assert (=> d!2362123 m!8292554))

(assert (=> d!2362123 m!8291796))

(declare-fun m!8292556 () Bool)

(assert (=> d!2362123 m!8292556))

(assert (=> d!2362123 m!8291798))

(declare-fun m!8292558 () Bool)

(assert (=> d!2362123 m!8292558))

(assert (=> b!7916841 d!2362123))

(declare-fun d!2362125 () Bool)

(declare-fun c!1452863 () Bool)

(assert (=> d!2362125 (= c!1452863 ((_ is Empty!15876) (left!56834 lt!2690523)))))

(declare-fun e!4673315 () List!74546)

(assert (=> d!2362125 (= (list!19371 (left!56834 lt!2690523)) e!4673315)))

(declare-fun b!7917280 () Bool)

(assert (=> b!7917280 (= e!4673315 Nil!74422)))

(declare-fun b!7917282 () Bool)

(declare-fun e!4673316 () List!74546)

(assert (=> b!7917282 (= e!4673316 (list!19373 (xs!19260 (left!56834 lt!2690523))))))

(declare-fun b!7917283 () Bool)

(assert (=> b!7917283 (= e!4673316 (++!18240 (list!19371 (left!56834 (left!56834 lt!2690523))) (list!19371 (right!57164 (left!56834 lt!2690523)))))))

(declare-fun b!7917281 () Bool)

(assert (=> b!7917281 (= e!4673315 e!4673316)))

(declare-fun c!1452864 () Bool)

(assert (=> b!7917281 (= c!1452864 ((_ is Leaf!30195) (left!56834 lt!2690523)))))

(assert (= (and d!2362125 c!1452863) b!7917280))

(assert (= (and d!2362125 (not c!1452863)) b!7917281))

(assert (= (and b!7917281 c!1452864) b!7917282))

(assert (= (and b!7917281 (not c!1452864)) b!7917283))

(declare-fun m!8292560 () Bool)

(assert (=> b!7917282 m!8292560))

(declare-fun m!8292562 () Bool)

(assert (=> b!7917283 m!8292562))

(declare-fun m!8292564 () Bool)

(assert (=> b!7917283 m!8292564))

(assert (=> b!7917283 m!8292562))

(assert (=> b!7917283 m!8292564))

(declare-fun m!8292566 () Bool)

(assert (=> b!7917283 m!8292566))

(assert (=> b!7916841 d!2362125))

(declare-fun d!2362127 () Bool)

(declare-fun c!1452865 () Bool)

(assert (=> d!2362127 (= c!1452865 ((_ is Empty!15876) (right!57164 lt!2690523)))))

(declare-fun e!4673317 () List!74546)

(assert (=> d!2362127 (= (list!19371 (right!57164 lt!2690523)) e!4673317)))

(declare-fun b!7917284 () Bool)

(assert (=> b!7917284 (= e!4673317 Nil!74422)))

(declare-fun b!7917286 () Bool)

(declare-fun e!4673318 () List!74546)

(assert (=> b!7917286 (= e!4673318 (list!19373 (xs!19260 (right!57164 lt!2690523))))))

(declare-fun b!7917287 () Bool)

(assert (=> b!7917287 (= e!4673318 (++!18240 (list!19371 (left!56834 (right!57164 lt!2690523))) (list!19371 (right!57164 (right!57164 lt!2690523)))))))

(declare-fun b!7917285 () Bool)

(assert (=> b!7917285 (= e!4673317 e!4673318)))

(declare-fun c!1452866 () Bool)

(assert (=> b!7917285 (= c!1452866 ((_ is Leaf!30195) (right!57164 lt!2690523)))))

(assert (= (and d!2362127 c!1452865) b!7917284))

(assert (= (and d!2362127 (not c!1452865)) b!7917285))

(assert (= (and b!7917285 c!1452866) b!7917286))

(assert (= (and b!7917285 (not c!1452866)) b!7917287))

(declare-fun m!8292568 () Bool)

(assert (=> b!7917286 m!8292568))

(declare-fun m!8292570 () Bool)

(assert (=> b!7917287 m!8292570))

(declare-fun m!8292572 () Bool)

(assert (=> b!7917287 m!8292572))

(assert (=> b!7917287 m!8292570))

(assert (=> b!7917287 m!8292572))

(declare-fun m!8292574 () Bool)

(assert (=> b!7917287 m!8292574))

(assert (=> b!7916841 d!2362127))

(declare-fun d!2362129 () Bool)

(declare-fun c!1452867 () Bool)

(assert (=> d!2362129 (= c!1452867 ((_ is Nil!74422) lt!2690678))))

(declare-fun e!4673319 () (InoxSet T!145622))

(assert (=> d!2362129 (= (content!15766 lt!2690678) e!4673319)))

(declare-fun b!7917288 () Bool)

(assert (=> b!7917288 (= e!4673319 ((as const (Array T!145622 Bool)) false))))

(declare-fun b!7917289 () Bool)

(assert (=> b!7917289 (= e!4673319 ((_ map or) (store ((as const (Array T!145622 Bool)) false) (h!80870 lt!2690678) true) (content!15766 (t!390067 lt!2690678))))))

(assert (= (and d!2362129 c!1452867) b!7917288))

(assert (= (and d!2362129 (not c!1452867)) b!7917289))

(declare-fun m!8292576 () Bool)

(assert (=> b!7917289 m!8292576))

(declare-fun m!8292578 () Bool)

(assert (=> b!7917289 m!8292578))

(assert (=> d!2361979 d!2362129))

(assert (=> d!2361979 d!2362001))

(assert (=> d!2361979 d!2362119))

(declare-fun b!7917292 () Bool)

(declare-fun res!3142304 () Bool)

(declare-fun e!4673320 () Bool)

(assert (=> b!7917292 (=> (not res!3142304) (not e!4673320))))

(declare-fun lt!2690749 () List!74546)

(assert (=> b!7917292 (= res!3142304 (= (size!43203 lt!2690749) (+ (size!43203 lt!2690540) (size!43203 (t!390067 (t!390067 ll!14))))))))

(declare-fun b!7917291 () Bool)

(declare-fun e!4673321 () List!74546)

(assert (=> b!7917291 (= e!4673321 (Cons!74422 (h!80870 lt!2690540) (++!18240 (t!390067 lt!2690540) (t!390067 (t!390067 ll!14)))))))

(declare-fun d!2362131 () Bool)

(assert (=> d!2362131 e!4673320))

(declare-fun res!3142305 () Bool)

(assert (=> d!2362131 (=> (not res!3142305) (not e!4673320))))

(assert (=> d!2362131 (= res!3142305 (= (content!15766 lt!2690749) ((_ map or) (content!15766 lt!2690540) (content!15766 (t!390067 (t!390067 ll!14))))))))

(assert (=> d!2362131 (= lt!2690749 e!4673321)))

(declare-fun c!1452868 () Bool)

(assert (=> d!2362131 (= c!1452868 ((_ is Nil!74422) lt!2690540))))

(assert (=> d!2362131 (= (++!18240 lt!2690540 (t!390067 (t!390067 ll!14))) lt!2690749)))

(declare-fun b!7917290 () Bool)

(assert (=> b!7917290 (= e!4673321 (t!390067 (t!390067 ll!14)))))

(declare-fun b!7917293 () Bool)

(assert (=> b!7917293 (= e!4673320 (or (not (= (t!390067 (t!390067 ll!14)) Nil!74422)) (= lt!2690749 lt!2690540)))))

(assert (= (and d!2362131 c!1452868) b!7917290))

(assert (= (and d!2362131 (not c!1452868)) b!7917291))

(assert (= (and d!2362131 res!3142305) b!7917292))

(assert (= (and b!7917292 res!3142304) b!7917293))

(declare-fun m!8292580 () Bool)

(assert (=> b!7917292 m!8292580))

(declare-fun m!8292582 () Bool)

(assert (=> b!7917292 m!8292582))

(assert (=> b!7917292 m!8292246))

(declare-fun m!8292584 () Bool)

(assert (=> b!7917291 m!8292584))

(declare-fun m!8292586 () Bool)

(assert (=> d!2362131 m!8292586))

(declare-fun m!8292588 () Bool)

(assert (=> d!2362131 m!8292588))

(assert (=> d!2362131 m!8292186))

(assert (=> b!7916878 d!2362131))

(declare-fun b!7917296 () Bool)

(declare-fun res!3142306 () Bool)

(declare-fun e!4673322 () Bool)

(assert (=> b!7917296 (=> (not res!3142306) (not e!4673322))))

(declare-fun lt!2690750 () List!74546)

(assert (=> b!7917296 (= res!3142306 (= (size!43203 lt!2690750) (+ (size!43203 lt!2690541) (size!43203 lt!2690540))))))

(declare-fun b!7917295 () Bool)

(declare-fun e!4673323 () List!74546)

(assert (=> b!7917295 (= e!4673323 (Cons!74422 (h!80870 lt!2690541) (++!18240 (t!390067 lt!2690541) lt!2690540)))))

(declare-fun d!2362133 () Bool)

(assert (=> d!2362133 e!4673322))

(declare-fun res!3142307 () Bool)

(assert (=> d!2362133 (=> (not res!3142307) (not e!4673322))))

(assert (=> d!2362133 (= res!3142307 (= (content!15766 lt!2690750) ((_ map or) (content!15766 lt!2690541) (content!15766 lt!2690540))))))

(assert (=> d!2362133 (= lt!2690750 e!4673323)))

(declare-fun c!1452869 () Bool)

(assert (=> d!2362133 (= c!1452869 ((_ is Nil!74422) lt!2690541))))

(assert (=> d!2362133 (= (++!18240 lt!2690541 lt!2690540) lt!2690750)))

(declare-fun b!7917294 () Bool)

(assert (=> b!7917294 (= e!4673323 lt!2690540)))

(declare-fun b!7917297 () Bool)

(assert (=> b!7917297 (= e!4673322 (or (not (= lt!2690540 Nil!74422)) (= lt!2690750 lt!2690541)))))

(assert (= (and d!2362133 c!1452869) b!7917294))

(assert (= (and d!2362133 (not c!1452869)) b!7917295))

(assert (= (and d!2362133 res!3142307) b!7917296))

(assert (= (and b!7917296 res!3142306) b!7917297))

(declare-fun m!8292590 () Bool)

(assert (=> b!7917296 m!8292590))

(declare-fun m!8292592 () Bool)

(assert (=> b!7917296 m!8292592))

(assert (=> b!7917296 m!8292582))

(declare-fun m!8292594 () Bool)

(assert (=> b!7917295 m!8292594))

(declare-fun m!8292596 () Bool)

(assert (=> d!2362133 m!8292596))

(declare-fun m!8292598 () Bool)

(assert (=> d!2362133 m!8292598))

(assert (=> d!2362133 m!8292588))

(assert (=> b!7916878 d!2362133))

(declare-fun bm!734666 () Bool)

(declare-fun c!1452874 () Bool)

(declare-fun c!1452873 () Bool)

(assert (=> bm!734666 (= c!1452874 c!1452873)))

(declare-fun e!4673324 () Conc!15876)

(declare-fun call!734679 () Conc!15876)

(assert (=> bm!734666 (= call!734679 (<>!413 (ite c!1452873 (left!56834 lt!2690522) lt!2690522) e!4673324))))

(declare-fun b!7917298 () Bool)

(declare-fun e!4673326 () Conc!15876)

(declare-fun call!734671 () Conc!15876)

(declare-fun lt!2690752 () Conc!15876)

(assert (=> b!7917298 (= e!4673326 (<>!413 call!734671 (right!57164 lt!2690752)))))

(declare-fun lt!2690762 () List!74546)

(declare-fun call!734673 () List!74546)

(assert (=> b!7917298 (= lt!2690762 call!734673)))

(declare-fun lt!2690765 () List!74546)

(assert (=> b!7917298 (= lt!2690765 (list!19371 (left!56834 lt!2690752)))))

(declare-fun lt!2690757 () List!74546)

(assert (=> b!7917298 (= lt!2690757 (list!19371 (right!57164 lt!2690752)))))

(declare-fun lt!2690764 () Unit!169545)

(assert (=> b!7917298 (= lt!2690764 (lemmaConcatAssociativity!3148 lt!2690762 lt!2690765 lt!2690757))))

(declare-fun call!734675 () List!74546)

(declare-fun call!734678 () List!74546)

(assert (=> b!7917298 (= (++!18240 call!734675 lt!2690757) (++!18240 lt!2690762 call!734678))))

(declare-fun lt!2690753 () Unit!169545)

(assert (=> b!7917298 (= lt!2690753 lt!2690764)))

(declare-fun lt!2690766 () List!74546)

(assert (=> b!7917298 (= lt!2690766 call!734673)))

(declare-fun lt!2690761 () List!74546)

(declare-fun call!734680 () List!74546)

(assert (=> b!7917298 (= lt!2690761 call!734680)))

(declare-fun lt!2690767 () List!74546)

(assert (=> b!7917298 (= lt!2690767 (Cons!74422 (h!80870 (t!390067 ll!14)) Nil!74422))))

(declare-fun lt!2690755 () Unit!169545)

(declare-fun call!734677 () Unit!169545)

(assert (=> b!7917298 (= lt!2690755 call!734677)))

(declare-fun call!734674 () List!74546)

(declare-fun call!734676 () List!74546)

(assert (=> b!7917298 (= (++!18240 call!734674 lt!2690767) (++!18240 lt!2690766 call!734676))))

(declare-fun lt!2690756 () Unit!169545)

(assert (=> b!7917298 (= lt!2690756 lt!2690755)))

(declare-fun b!7917299 () Bool)

(declare-fun c!1452870 () Bool)

(assert (=> b!7917299 (= e!4673324 (ite c!1452870 lt!2690752 (left!56834 lt!2690752)))))

(declare-fun bm!734667 () Bool)

(assert (=> bm!734667 (= call!734671 call!734679)))

(declare-fun b!7917300 () Bool)

(assert (=> b!7917300 (= e!4673326 call!734671)))

(declare-fun lt!2690768 () List!74546)

(assert (=> b!7917300 (= lt!2690768 call!734673)))

(declare-fun lt!2690751 () List!74546)

(assert (=> b!7917300 (= lt!2690751 call!734680)))

(declare-fun lt!2690760 () List!74546)

(assert (=> b!7917300 (= lt!2690760 (Cons!74422 (h!80870 (t!390067 ll!14)) Nil!74422))))

(declare-fun lt!2690758 () Unit!169545)

(assert (=> b!7917300 (= lt!2690758 call!734677)))

(assert (=> b!7917300 (= call!734674 call!734676)))

(declare-fun lt!2690763 () Unit!169545)

(assert (=> b!7917300 (= lt!2690763 lt!2690758)))

(declare-fun b!7917301 () Bool)

(declare-fun res!3142310 () Bool)

(declare-fun e!4673325 () Bool)

(assert (=> b!7917301 (=> (not res!3142310) (not e!4673325))))

(declare-fun lt!2690759 () Conc!15876)

(assert (=> b!7917301 (= res!3142310 (<= (height!2192 lt!2690522) (height!2192 lt!2690759)))))

(declare-fun b!7917302 () Bool)

(declare-fun c!1452872 () Bool)

(assert (=> b!7917302 (= c!1452872 (< (csize!31983 lt!2690522) 512))))

(declare-fun e!4673327 () Conc!15876)

(declare-fun e!4673328 () Conc!15876)

(assert (=> b!7917302 (= e!4673327 e!4673328)))

(declare-fun b!7917303 () Bool)

(assert (=> b!7917303 (= e!4673325 (= (list!19371 lt!2690759) ($colon+!299 (list!19371 lt!2690522) (h!80870 (t!390067 ll!14)))))))

(declare-fun bm!734668 () Bool)

(assert (=> bm!734668 (= call!734673 (list!19371 (left!56834 lt!2690522)))))

(declare-fun b!7917304 () Bool)

(assert (=> b!7917304 (= e!4673328 (Leaf!30195 (append!1126 (xs!19260 lt!2690522) (h!80870 (t!390067 ll!14))) (+ (csize!31983 lt!2690522) 1)))))

(declare-fun lt!2690754 () List!74546)

(assert (=> b!7917304 (= lt!2690754 ($colon+!299 (list!19373 (xs!19260 lt!2690522)) (h!80870 (t!390067 ll!14))))))

(declare-fun d!2362135 () Bool)

(assert (=> d!2362135 e!4673325))

(declare-fun res!3142308 () Bool)

(assert (=> d!2362135 (=> (not res!3142308) (not e!4673325))))

(assert (=> d!2362135 (= res!3142308 (isBalanced!4502 lt!2690759))))

(declare-fun e!4673329 () Conc!15876)

(assert (=> d!2362135 (= lt!2690759 e!4673329)))

(declare-fun c!1452871 () Bool)

(assert (=> d!2362135 (= c!1452871 ((_ is Empty!15876) lt!2690522))))

(assert (=> d!2362135 (isBalanced!4502 lt!2690522)))

(assert (=> d!2362135 (= (append!1124 lt!2690522 (h!80870 (t!390067 ll!14))) lt!2690759)))

(declare-fun bm!734669 () Bool)

(assert (=> bm!734669 (= call!734675 (++!18240 (ite c!1452870 lt!2690751 lt!2690762) (ite c!1452870 lt!2690760 lt!2690765)))))

(declare-fun b!7917305 () Bool)

(assert (=> b!7917305 (= e!4673328 call!734679)))

(declare-fun bm!734670 () Bool)

(assert (=> bm!734670 (= call!734674 (++!18240 (ite c!1452870 call!734678 lt!2690766) (ite c!1452870 lt!2690760 lt!2690761)))))

(declare-fun b!7917306 () Bool)

(declare-fun call!734672 () IArray!31813)

(assert (=> b!7917306 (= e!4673329 (Leaf!30195 call!734672 1))))

(declare-fun bm!734671 () Bool)

(assert (=> bm!734671 (= call!734677 (lemmaConcatAssociativity!3148 (ite c!1452870 lt!2690768 lt!2690766) (ite c!1452870 lt!2690751 lt!2690761) (ite c!1452870 lt!2690760 lt!2690767)))))

(declare-fun bm!734672 () Bool)

(assert (=> bm!734672 (= call!734672 (fill!257 1 (h!80870 (t!390067 ll!14))))))

(declare-fun b!7917307 () Bool)

(assert (=> b!7917307 (= e!4673329 e!4673327)))

(assert (=> b!7917307 (= c!1452873 ((_ is Node!15876) lt!2690522))))

(declare-fun bm!734673 () Bool)

(assert (=> bm!734673 (= call!734678 (++!18240 (ite c!1452870 lt!2690768 lt!2690765) (ite c!1452870 lt!2690751 lt!2690757)))))

(declare-fun b!7917308 () Bool)

(assert (=> b!7917308 (= e!4673324 (Leaf!30195 call!734672 1))))

(declare-fun b!7917309 () Bool)

(declare-fun res!3142309 () Bool)

(assert (=> b!7917309 (=> (not res!3142309) (not e!4673325))))

(assert (=> b!7917309 (= res!3142309 (<= (height!2192 lt!2690759) (+ (height!2192 lt!2690522) 1)))))

(declare-fun b!7917310 () Bool)

(assert (=> b!7917310 (= c!1452870 (<= (height!2192 lt!2690752) (+ (height!2192 (left!56834 lt!2690522)) 1)))))

(assert (=> b!7917310 (= lt!2690752 (append!1124 (right!57164 lt!2690522) (h!80870 (t!390067 ll!14))))))

(assert (=> b!7917310 (= e!4673327 e!4673326)))

(declare-fun bm!734674 () Bool)

(assert (=> bm!734674 (= call!734676 (++!18240 (ite c!1452870 lt!2690768 lt!2690761) (ite c!1452870 call!734675 lt!2690767)))))

(declare-fun bm!734675 () Bool)

(assert (=> bm!734675 (= call!734680 (list!19371 (right!57164 lt!2690522)))))

(assert (= (and d!2362135 c!1452871) b!7917306))

(assert (= (and d!2362135 (not c!1452871)) b!7917307))

(assert (= (and b!7917307 c!1452873) b!7917310))

(assert (= (and b!7917307 (not c!1452873)) b!7917302))

(assert (= (and b!7917310 c!1452870) b!7917300))

(assert (= (and b!7917310 (not c!1452870)) b!7917298))

(assert (= (or b!7917300 b!7917298) bm!734668))

(assert (= (or b!7917300 b!7917298) bm!734673))

(assert (= (or b!7917300 b!7917298) bm!734675))

(assert (= (or b!7917300 b!7917298) bm!734667))

(assert (= (or b!7917300 b!7917298) bm!734671))

(assert (= (or b!7917300 b!7917298) bm!734669))

(assert (= (or b!7917300 b!7917298) bm!734674))

(assert (= (or b!7917300 b!7917298) bm!734670))

(assert (= (and b!7917302 c!1452872) b!7917304))

(assert (= (and b!7917302 (not c!1452872)) b!7917305))

(assert (= (or bm!734667 b!7917305) bm!734666))

(assert (= (and bm!734666 c!1452874) b!7917299))

(assert (= (and bm!734666 (not c!1452874)) b!7917308))

(assert (= (or b!7917306 b!7917308) bm!734672))

(assert (= (and d!2362135 res!3142308) b!7917301))

(assert (= (and b!7917301 res!3142310) b!7917309))

(assert (= (and b!7917309 res!3142309) b!7917303))

(declare-fun m!8292600 () Bool)

(assert (=> d!2362135 m!8292600))

(assert (=> d!2362135 m!8291846))

(declare-fun m!8292602 () Bool)

(assert (=> b!7917310 m!8292602))

(assert (=> b!7917310 m!8292470))

(declare-fun m!8292604 () Bool)

(assert (=> b!7917310 m!8292604))

(declare-fun m!8292606 () Bool)

(assert (=> bm!734666 m!8292606))

(declare-fun m!8292608 () Bool)

(assert (=> bm!734672 m!8292608))

(declare-fun m!8292610 () Bool)

(assert (=> bm!734674 m!8292610))

(assert (=> bm!734668 m!8291866))

(declare-fun m!8292612 () Bool)

(assert (=> b!7917298 m!8292612))

(declare-fun m!8292614 () Bool)

(assert (=> b!7917298 m!8292614))

(declare-fun m!8292616 () Bool)

(assert (=> b!7917298 m!8292616))

(declare-fun m!8292618 () Bool)

(assert (=> b!7917298 m!8292618))

(declare-fun m!8292620 () Bool)

(assert (=> b!7917298 m!8292620))

(declare-fun m!8292622 () Bool)

(assert (=> b!7917298 m!8292622))

(declare-fun m!8292624 () Bool)

(assert (=> b!7917298 m!8292624))

(declare-fun m!8292626 () Bool)

(assert (=> b!7917298 m!8292626))

(declare-fun m!8292628 () Bool)

(assert (=> bm!734669 m!8292628))

(assert (=> bm!734675 m!8291868))

(declare-fun m!8292630 () Bool)

(assert (=> b!7917303 m!8292630))

(assert (=> b!7917303 m!8291708))

(assert (=> b!7917303 m!8291708))

(declare-fun m!8292632 () Bool)

(assert (=> b!7917303 m!8292632))

(declare-fun m!8292634 () Bool)

(assert (=> b!7917304 m!8292634))

(assert (=> b!7917304 m!8291864))

(assert (=> b!7917304 m!8291864))

(declare-fun m!8292636 () Bool)

(assert (=> b!7917304 m!8292636))

(declare-fun m!8292638 () Bool)

(assert (=> bm!734670 m!8292638))

(declare-fun m!8292640 () Bool)

(assert (=> b!7917309 m!8292640))

(declare-fun m!8292642 () Bool)

(assert (=> b!7917309 m!8292642))

(declare-fun m!8292644 () Bool)

(assert (=> bm!734673 m!8292644))

(declare-fun m!8292646 () Bool)

(assert (=> bm!734671 m!8292646))

(assert (=> b!7917301 m!8292642))

(assert (=> b!7917301 m!8292640))

(assert (=> b!7916878 d!2362135))

(declare-fun b!7917313 () Bool)

(declare-fun res!3142311 () Bool)

(declare-fun e!4673330 () Bool)

(assert (=> b!7917313 (=> (not res!3142311) (not e!4673330))))

(declare-fun lt!2690769 () List!74546)

(assert (=> b!7917313 (= res!3142311 (= (size!43203 lt!2690769) (+ (size!43203 lt!2690541) (size!43203 (++!18240 lt!2690540 (t!390067 (t!390067 ll!14)))))))))

(declare-fun b!7917312 () Bool)

(declare-fun e!4673331 () List!74546)

(assert (=> b!7917312 (= e!4673331 (Cons!74422 (h!80870 lt!2690541) (++!18240 (t!390067 lt!2690541) (++!18240 lt!2690540 (t!390067 (t!390067 ll!14))))))))

(declare-fun d!2362137 () Bool)

(assert (=> d!2362137 e!4673330))

(declare-fun res!3142312 () Bool)

(assert (=> d!2362137 (=> (not res!3142312) (not e!4673330))))

(assert (=> d!2362137 (= res!3142312 (= (content!15766 lt!2690769) ((_ map or) (content!15766 lt!2690541) (content!15766 (++!18240 lt!2690540 (t!390067 (t!390067 ll!14)))))))))

(assert (=> d!2362137 (= lt!2690769 e!4673331)))

(declare-fun c!1452875 () Bool)

(assert (=> d!2362137 (= c!1452875 ((_ is Nil!74422) lt!2690541))))

(assert (=> d!2362137 (= (++!18240 lt!2690541 (++!18240 lt!2690540 (t!390067 (t!390067 ll!14)))) lt!2690769)))

(declare-fun b!7917311 () Bool)

(assert (=> b!7917311 (= e!4673331 (++!18240 lt!2690540 (t!390067 (t!390067 ll!14))))))

(declare-fun b!7917314 () Bool)

(assert (=> b!7917314 (= e!4673330 (or (not (= (++!18240 lt!2690540 (t!390067 (t!390067 ll!14))) Nil!74422)) (= lt!2690769 lt!2690541)))))

(assert (= (and d!2362137 c!1452875) b!7917311))

(assert (= (and d!2362137 (not c!1452875)) b!7917312))

(assert (= (and d!2362137 res!3142312) b!7917313))

(assert (= (and b!7917313 res!3142311) b!7917314))

(declare-fun m!8292648 () Bool)

(assert (=> b!7917313 m!8292648))

(assert (=> b!7917313 m!8292592))

(assert (=> b!7917313 m!8291850))

(declare-fun m!8292650 () Bool)

(assert (=> b!7917313 m!8292650))

(assert (=> b!7917312 m!8291850))

(declare-fun m!8292652 () Bool)

(assert (=> b!7917312 m!8292652))

(declare-fun m!8292654 () Bool)

(assert (=> d!2362137 m!8292654))

(assert (=> d!2362137 m!8292598))

(assert (=> d!2362137 m!8291850))

(declare-fun m!8292656 () Bool)

(assert (=> d!2362137 m!8292656))

(assert (=> b!7916878 d!2362137))

(declare-fun b!7917317 () Bool)

(declare-fun res!3142313 () Bool)

(declare-fun e!4673332 () Bool)

(assert (=> b!7917317 (=> (not res!3142313) (not e!4673332))))

(declare-fun lt!2690770 () List!74546)

(assert (=> b!7917317 (= res!3142313 (= (size!43203 lt!2690770) (+ (size!43203 (++!18240 lt!2690541 lt!2690540)) (size!43203 (t!390067 (t!390067 ll!14))))))))

(declare-fun e!4673333 () List!74546)

(declare-fun b!7917316 () Bool)

(assert (=> b!7917316 (= e!4673333 (Cons!74422 (h!80870 (++!18240 lt!2690541 lt!2690540)) (++!18240 (t!390067 (++!18240 lt!2690541 lt!2690540)) (t!390067 (t!390067 ll!14)))))))

(declare-fun d!2362139 () Bool)

(assert (=> d!2362139 e!4673332))

(declare-fun res!3142314 () Bool)

(assert (=> d!2362139 (=> (not res!3142314) (not e!4673332))))

(assert (=> d!2362139 (= res!3142314 (= (content!15766 lt!2690770) ((_ map or) (content!15766 (++!18240 lt!2690541 lt!2690540)) (content!15766 (t!390067 (t!390067 ll!14))))))))

(assert (=> d!2362139 (= lt!2690770 e!4673333)))

(declare-fun c!1452876 () Bool)

(assert (=> d!2362139 (= c!1452876 ((_ is Nil!74422) (++!18240 lt!2690541 lt!2690540)))))

(assert (=> d!2362139 (= (++!18240 (++!18240 lt!2690541 lt!2690540) (t!390067 (t!390067 ll!14))) lt!2690770)))

(declare-fun b!7917315 () Bool)

(assert (=> b!7917315 (= e!4673333 (t!390067 (t!390067 ll!14)))))

(declare-fun b!7917318 () Bool)

(assert (=> b!7917318 (= e!4673332 (or (not (= (t!390067 (t!390067 ll!14)) Nil!74422)) (= lt!2690770 (++!18240 lt!2690541 lt!2690540))))))

(assert (= (and d!2362139 c!1452876) b!7917315))

(assert (= (and d!2362139 (not c!1452876)) b!7917316))

(assert (= (and d!2362139 res!3142314) b!7917317))

(assert (= (and b!7917317 res!3142313) b!7917318))

(declare-fun m!8292658 () Bool)

(assert (=> b!7917317 m!8292658))

(assert (=> b!7917317 m!8291854))

(declare-fun m!8292660 () Bool)

(assert (=> b!7917317 m!8292660))

(assert (=> b!7917317 m!8292246))

(declare-fun m!8292662 () Bool)

(assert (=> b!7917316 m!8292662))

(declare-fun m!8292664 () Bool)

(assert (=> d!2362139 m!8292664))

(assert (=> d!2362139 m!8291854))

(declare-fun m!8292666 () Bool)

(assert (=> d!2362139 m!8292666))

(assert (=> d!2362139 m!8292186))

(assert (=> b!7916878 d!2362139))

(declare-fun d!2362143 () Bool)

(assert (=> d!2362143 (= (++!18240 (++!18240 lt!2690541 lt!2690540) (t!390067 (t!390067 ll!14))) (++!18240 lt!2690541 (++!18240 lt!2690540 (t!390067 (t!390067 ll!14)))))))

(declare-fun lt!2690771 () Unit!169545)

(assert (=> d!2362143 (= lt!2690771 (choose!59801 lt!2690541 lt!2690540 (t!390067 (t!390067 ll!14))))))

(assert (=> d!2362143 (= (lemmaConcatAssociativity!3146 lt!2690541 lt!2690540 (t!390067 (t!390067 ll!14))) lt!2690771)))

(declare-fun bs!1968487 () Bool)

(assert (= bs!1968487 d!2362143))

(assert (=> bs!1968487 m!8291854))

(assert (=> bs!1968487 m!8291850))

(assert (=> bs!1968487 m!8291852))

(assert (=> bs!1968487 m!8291854))

(assert (=> bs!1968487 m!8291856))

(assert (=> bs!1968487 m!8291850))

(declare-fun m!8292668 () Bool)

(assert (=> bs!1968487 m!8292668))

(assert (=> b!7916878 d!2362143))

(assert (=> b!7916878 d!2361957))

(declare-fun d!2362145 () Bool)

(declare-fun e!4673334 () Bool)

(assert (=> d!2362145 e!4673334))

(declare-fun res!3142315 () Bool)

(assert (=> d!2362145 (=> (not res!3142315) (not e!4673334))))

(declare-fun lt!2690774 () Conc!15876)

(assert (=> d!2362145 (= res!3142315 (= (list!19371 lt!2690774) (++!18240 (list!19371 (append!1124 lt!2690522 (h!80870 (t!390067 ll!14)))) (t!390067 (t!390067 ll!14)))))))

(declare-fun e!4673335 () Conc!15876)

(assert (=> d!2362145 (= lt!2690774 e!4673335)))

(declare-fun c!1452877 () Bool)

(assert (=> d!2362145 (= c!1452877 ((_ is Nil!74422) (t!390067 (t!390067 ll!14))))))

(assert (=> d!2362145 (isBalanced!4502 (append!1124 lt!2690522 (h!80870 (t!390067 ll!14))))))

(assert (=> d!2362145 (= (rec!57 (t!390067 (t!390067 ll!14)) (append!1124 lt!2690522 (h!80870 (t!390067 ll!14)))) lt!2690774)))

(declare-fun b!7917319 () Bool)

(assert (=> b!7917319 (= e!4673335 (append!1124 lt!2690522 (h!80870 (t!390067 ll!14))))))

(declare-fun b!7917320 () Bool)

(assert (=> b!7917320 (= e!4673335 (rec!57 (t!390067 (t!390067 (t!390067 ll!14))) (append!1124 (append!1124 lt!2690522 (h!80870 (t!390067 ll!14))) (h!80870 (t!390067 (t!390067 ll!14))))))))

(declare-fun lt!2690773 () List!74546)

(assert (=> b!7917320 (= lt!2690773 (list!19371 (append!1124 lt!2690522 (h!80870 (t!390067 ll!14)))))))

(declare-fun lt!2690772 () List!74546)

(assert (=> b!7917320 (= lt!2690772 (Cons!74422 (h!80870 (t!390067 (t!390067 ll!14))) Nil!74422))))

(declare-fun lt!2690775 () Unit!169545)

(assert (=> b!7917320 (= lt!2690775 (lemmaConcatAssociativity!3146 lt!2690773 lt!2690772 (t!390067 (t!390067 (t!390067 ll!14)))))))

(assert (=> b!7917320 (= (++!18240 (++!18240 lt!2690773 lt!2690772) (t!390067 (t!390067 (t!390067 ll!14)))) (++!18240 lt!2690773 (++!18240 lt!2690772 (t!390067 (t!390067 (t!390067 ll!14))))))))

(declare-fun lt!2690776 () Unit!169545)

(assert (=> b!7917320 (= lt!2690776 lt!2690775)))

(declare-fun b!7917321 () Bool)

(assert (=> b!7917321 (= e!4673334 (isBalanced!4502 lt!2690774))))

(assert (= (and d!2362145 c!1452877) b!7917319))

(assert (= (and d!2362145 (not c!1452877)) b!7917320))

(assert (= (and d!2362145 res!3142315) b!7917321))

(declare-fun m!8292670 () Bool)

(assert (=> d!2362145 m!8292670))

(assert (=> d!2362145 m!8291848))

(declare-fun m!8292672 () Bool)

(assert (=> d!2362145 m!8292672))

(assert (=> d!2362145 m!8292672))

(declare-fun m!8292674 () Bool)

(assert (=> d!2362145 m!8292674))

(assert (=> d!2362145 m!8291848))

(declare-fun m!8292676 () Bool)

(assert (=> d!2362145 m!8292676))

(assert (=> b!7917320 m!8291848))

(declare-fun m!8292678 () Bool)

(assert (=> b!7917320 m!8292678))

(declare-fun m!8292680 () Bool)

(assert (=> b!7917320 m!8292680))

(declare-fun m!8292682 () Bool)

(assert (=> b!7917320 m!8292682))

(assert (=> b!7917320 m!8291848))

(assert (=> b!7917320 m!8292672))

(declare-fun m!8292684 () Bool)

(assert (=> b!7917320 m!8292684))

(declare-fun m!8292686 () Bool)

(assert (=> b!7917320 m!8292686))

(declare-fun m!8292688 () Bool)

(assert (=> b!7917320 m!8292688))

(assert (=> b!7917320 m!8292680))

(assert (=> b!7917320 m!8292678))

(declare-fun m!8292690 () Bool)

(assert (=> b!7917320 m!8292690))

(assert (=> b!7917320 m!8292684))

(declare-fun m!8292692 () Bool)

(assert (=> b!7917321 m!8292692))

(assert (=> b!7916878 d!2362145))

(declare-fun b!7917324 () Bool)

(declare-fun res!3142316 () Bool)

(declare-fun e!4673336 () Bool)

(assert (=> b!7917324 (=> (not res!3142316) (not e!4673336))))

(declare-fun lt!2690777 () List!74546)

(assert (=> b!7917324 (= res!3142316 (= (size!43203 lt!2690777) (+ (size!43203 (t!390067 lt!2690521)) (size!43203 lt!2690517))))))

(declare-fun b!7917323 () Bool)

(declare-fun e!4673337 () List!74546)

(assert (=> b!7917323 (= e!4673337 (Cons!74422 (h!80870 (t!390067 lt!2690521)) (++!18240 (t!390067 (t!390067 lt!2690521)) lt!2690517)))))

(declare-fun d!2362147 () Bool)

(assert (=> d!2362147 e!4673336))

(declare-fun res!3142317 () Bool)

(assert (=> d!2362147 (=> (not res!3142317) (not e!4673336))))

(assert (=> d!2362147 (= res!3142317 (= (content!15766 lt!2690777) ((_ map or) (content!15766 (t!390067 lt!2690521)) (content!15766 lt!2690517))))))

(assert (=> d!2362147 (= lt!2690777 e!4673337)))

(declare-fun c!1452878 () Bool)

(assert (=> d!2362147 (= c!1452878 ((_ is Nil!74422) (t!390067 lt!2690521)))))

(assert (=> d!2362147 (= (++!18240 (t!390067 lt!2690521) lt!2690517) lt!2690777)))

(declare-fun b!7917322 () Bool)

(assert (=> b!7917322 (= e!4673337 lt!2690517)))

(declare-fun b!7917325 () Bool)

(assert (=> b!7917325 (= e!4673336 (or (not (= lt!2690517 Nil!74422)) (= lt!2690777 (t!390067 lt!2690521))))))

(assert (= (and d!2362147 c!1452878) b!7917322))

(assert (= (and d!2362147 (not c!1452878)) b!7917323))

(assert (= (and d!2362147 res!3142317) b!7917324))

(assert (= (and b!7917324 res!3142316) b!7917325))

(declare-fun m!8292694 () Bool)

(assert (=> b!7917324 m!8292694))

(assert (=> b!7917324 m!8292146))

(assert (=> b!7917324 m!8292076))

(declare-fun m!8292696 () Bool)

(assert (=> b!7917323 m!8292696))

(declare-fun m!8292698 () Bool)

(assert (=> d!2362147 m!8292698))

(assert (=> d!2362147 m!8292152))

(assert (=> d!2362147 m!8292084))

(assert (=> b!7917024 d!2362147))

(declare-fun d!2362151 () Bool)

(declare-fun lt!2690778 () Bool)

(assert (=> d!2362151 (= lt!2690778 (isEmpty!42740 (list!19371 (left!56834 c!5365))))))

(assert (=> d!2362151 (= lt!2690778 (= (size!43204 (left!56834 c!5365)) 0))))

(assert (=> d!2362151 (= (isEmpty!42739 (left!56834 c!5365)) lt!2690778)))

(declare-fun bs!1968488 () Bool)

(assert (= bs!1968488 d!2362151))

(assert (=> bs!1968488 m!8292030))

(assert (=> bs!1968488 m!8292030))

(declare-fun m!8292700 () Bool)

(assert (=> bs!1968488 m!8292700))

(assert (=> bs!1968488 m!8292502))

(assert (=> b!7916819 d!2362151))

(declare-fun b!7917328 () Bool)

(declare-fun res!3142318 () Bool)

(declare-fun e!4673338 () Bool)

(assert (=> b!7917328 (=> (not res!3142318) (not e!4673338))))

(declare-fun lt!2690779 () List!74546)

(assert (=> b!7917328 (= res!3142318 (= (size!43203 lt!2690779) (+ (size!43203 (ite c!1452787 lt!2690677 lt!2690670)) (size!43203 (ite c!1452787 call!734647 lt!2690676)))))))

(declare-fun b!7917327 () Bool)

(declare-fun e!4673339 () List!74546)

(assert (=> b!7917327 (= e!4673339 (Cons!74422 (h!80870 (ite c!1452787 lt!2690677 lt!2690670)) (++!18240 (t!390067 (ite c!1452787 lt!2690677 lt!2690670)) (ite c!1452787 call!734647 lt!2690676))))))

(declare-fun d!2362153 () Bool)

(assert (=> d!2362153 e!4673338))

(declare-fun res!3142319 () Bool)

(assert (=> d!2362153 (=> (not res!3142319) (not e!4673338))))

(assert (=> d!2362153 (= res!3142319 (= (content!15766 lt!2690779) ((_ map or) (content!15766 (ite c!1452787 lt!2690677 lt!2690670)) (content!15766 (ite c!1452787 call!734647 lt!2690676)))))))

(assert (=> d!2362153 (= lt!2690779 e!4673339)))

(declare-fun c!1452879 () Bool)

(assert (=> d!2362153 (= c!1452879 ((_ is Nil!74422) (ite c!1452787 lt!2690677 lt!2690670)))))

(assert (=> d!2362153 (= (++!18240 (ite c!1452787 lt!2690677 lt!2690670) (ite c!1452787 call!734647 lt!2690676)) lt!2690779)))

(declare-fun b!7917326 () Bool)

(assert (=> b!7917326 (= e!4673339 (ite c!1452787 call!734647 lt!2690676))))

(declare-fun b!7917329 () Bool)

(assert (=> b!7917329 (= e!4673338 (or (not (= (ite c!1452787 call!734647 lt!2690676) Nil!74422)) (= lt!2690779 (ite c!1452787 lt!2690677 lt!2690670))))))

(assert (= (and d!2362153 c!1452879) b!7917326))

(assert (= (and d!2362153 (not c!1452879)) b!7917327))

(assert (= (and d!2362153 res!3142319) b!7917328))

(assert (= (and b!7917328 res!3142318) b!7917329))

(declare-fun m!8292702 () Bool)

(assert (=> b!7917328 m!8292702))

(declare-fun m!8292704 () Bool)

(assert (=> b!7917328 m!8292704))

(declare-fun m!8292706 () Bool)

(assert (=> b!7917328 m!8292706))

(declare-fun m!8292708 () Bool)

(assert (=> b!7917327 m!8292708))

(declare-fun m!8292710 () Bool)

(assert (=> d!2362153 m!8292710))

(declare-fun m!8292712 () Bool)

(assert (=> d!2362153 m!8292712))

(declare-fun m!8292714 () Bool)

(assert (=> d!2362153 m!8292714))

(assert (=> bm!734646 d!2362153))

(declare-fun b!7917332 () Bool)

(declare-fun res!3142320 () Bool)

(declare-fun e!4673340 () Bool)

(assert (=> b!7917332 (=> (not res!3142320) (not e!4673340))))

(declare-fun lt!2690780 () List!74546)

(assert (=> b!7917332 (= res!3142320 (= (size!43203 lt!2690780) (+ (size!43203 (t!390067 lt!2690519)) (size!43203 (t!390067 ll!14)))))))

(declare-fun b!7917331 () Bool)

(declare-fun e!4673341 () List!74546)

(assert (=> b!7917331 (= e!4673341 (Cons!74422 (h!80870 (t!390067 lt!2690519)) (++!18240 (t!390067 (t!390067 lt!2690519)) (t!390067 ll!14))))))

(declare-fun d!2362155 () Bool)

(assert (=> d!2362155 e!4673340))

(declare-fun res!3142321 () Bool)

(assert (=> d!2362155 (=> (not res!3142321) (not e!4673340))))

(assert (=> d!2362155 (= res!3142321 (= (content!15766 lt!2690780) ((_ map or) (content!15766 (t!390067 lt!2690519)) (content!15766 (t!390067 ll!14)))))))

(assert (=> d!2362155 (= lt!2690780 e!4673341)))

(declare-fun c!1452880 () Bool)

(assert (=> d!2362155 (= c!1452880 ((_ is Nil!74422) (t!390067 lt!2690519)))))

(assert (=> d!2362155 (= (++!18240 (t!390067 lt!2690519) (t!390067 ll!14)) lt!2690780)))

(declare-fun b!7917330 () Bool)

(assert (=> b!7917330 (= e!4673341 (t!390067 ll!14))))

(declare-fun b!7917333 () Bool)

(assert (=> b!7917333 (= e!4673340 (or (not (= (t!390067 ll!14) Nil!74422)) (= lt!2690780 (t!390067 lt!2690519))))))

(assert (= (and d!2362155 c!1452880) b!7917330))

(assert (= (and d!2362155 (not c!1452880)) b!7917331))

(assert (= (and d!2362155 res!3142321) b!7917332))

(assert (= (and b!7917332 res!3142320) b!7917333))

(declare-fun m!8292716 () Bool)

(assert (=> b!7917332 m!8292716))

(assert (=> b!7917332 m!8292244))

(assert (=> b!7917332 m!8291906))

(declare-fun m!8292718 () Bool)

(assert (=> b!7917331 m!8292718))

(declare-fun m!8292720 () Bool)

(assert (=> d!2362155 m!8292720))

(assert (=> d!2362155 m!8292182))

(assert (=> d!2362155 m!8291914))

(assert (=> b!7916906 d!2362155))

(declare-fun b!7917338 () Bool)

(declare-fun e!4673342 () Conc!15876)

(assert (=> b!7917338 (= e!4673342 (ite c!1452790 (left!56834 c!5365) c!5365))))

(declare-fun d!2362157 () Bool)

(declare-fun lt!2690781 () Conc!15876)

(assert (=> d!2362157 (= (list!19371 lt!2690781) (++!18240 (list!19371 (ite c!1452790 (left!56834 c!5365) c!5365)) (list!19371 e!4673189)))))

(declare-fun e!4673343 () Conc!15876)

(assert (=> d!2362157 (= lt!2690781 e!4673343)))

(declare-fun c!1452882 () Bool)

(assert (=> d!2362157 (= c!1452882 (= (ite c!1452790 (left!56834 c!5365) c!5365) Empty!15876))))

(assert (=> d!2362157 (= (<>!413 (ite c!1452790 (left!56834 c!5365) c!5365) e!4673189) lt!2690781)))

(declare-fun b!7917337 () Bool)

(assert (=> b!7917337 (= e!4673343 e!4673342)))

(declare-fun c!1452881 () Bool)

(assert (=> b!7917337 (= c!1452881 (= e!4673189 Empty!15876))))

(declare-fun b!7917339 () Bool)

(assert (=> b!7917339 (= e!4673342 (Node!15876 (ite c!1452790 (left!56834 c!5365) c!5365) e!4673189 (+ (size!43204 (ite c!1452790 (left!56834 c!5365) c!5365)) (size!43204 e!4673189)) (+ (max!0 (height!2192 (ite c!1452790 (left!56834 c!5365) c!5365)) (height!2192 e!4673189)) 1)))))

(declare-fun b!7917336 () Bool)

(assert (=> b!7917336 (= e!4673343 e!4673189)))

(assert (= (and d!2362157 c!1452882) b!7917336))

(assert (= (and d!2362157 (not c!1452882)) b!7917337))

(assert (= (and b!7917337 c!1452881) b!7917338))

(assert (= (and b!7917337 (not c!1452881)) b!7917339))

(declare-fun m!8292722 () Bool)

(assert (=> d!2362157 m!8292722))

(declare-fun m!8292724 () Bool)

(assert (=> d!2362157 m!8292724))

(declare-fun m!8292726 () Bool)

(assert (=> d!2362157 m!8292726))

(assert (=> d!2362157 m!8292724))

(assert (=> d!2362157 m!8292726))

(declare-fun m!8292728 () Bool)

(assert (=> d!2362157 m!8292728))

(declare-fun m!8292730 () Bool)

(assert (=> b!7917339 m!8292730))

(declare-fun m!8292732 () Bool)

(assert (=> b!7917339 m!8292732))

(declare-fun m!8292734 () Bool)

(assert (=> b!7917339 m!8292734))

(declare-fun m!8292736 () Bool)

(assert (=> b!7917339 m!8292736))

(assert (=> b!7917339 m!8292734))

(assert (=> b!7917339 m!8292732))

(declare-fun m!8292738 () Bool)

(assert (=> b!7917339 m!8292738))

(assert (=> bm!734638 d!2362157))

(declare-fun d!2362159 () Bool)

(declare-fun res!3142322 () Bool)

(declare-fun e!4673346 () Bool)

(assert (=> d!2362159 (=> (not res!3142322) (not e!4673346))))

(assert (=> d!2362159 (= res!3142322 (<= (size!43203 (list!19373 (xs!19260 (left!56834 c!5365)))) 512))))

(assert (=> d!2362159 (= (inv!95583 (left!56834 c!5365)) e!4673346)))

(declare-fun b!7917342 () Bool)

(declare-fun res!3142323 () Bool)

(assert (=> b!7917342 (=> (not res!3142323) (not e!4673346))))

(assert (=> b!7917342 (= res!3142323 (= (csize!31983 (left!56834 c!5365)) (size!43203 (list!19373 (xs!19260 (left!56834 c!5365))))))))

(declare-fun b!7917343 () Bool)

(assert (=> b!7917343 (= e!4673346 (and (> (csize!31983 (left!56834 c!5365)) 0) (<= (csize!31983 (left!56834 c!5365)) 512)))))

(assert (= (and d!2362159 res!3142322) b!7917342))

(assert (= (and b!7917342 res!3142323) b!7917343))

(declare-fun m!8292740 () Bool)

(assert (=> d!2362159 m!8292740))

(assert (=> d!2362159 m!8292740))

(declare-fun m!8292742 () Bool)

(assert (=> d!2362159 m!8292742))

(assert (=> b!7917342 m!8292740))

(assert (=> b!7917342 m!8292740))

(assert (=> b!7917342 m!8292742))

(assert (=> b!7916781 d!2362159))

(assert (=> b!7916817 d!2362043))

(assert (=> b!7916817 d!2362089))

(assert (=> b!7917021 d!2362053))

(assert (=> b!7917021 d!2362051))

(declare-fun d!2362161 () Bool)

(declare-fun c!1452885 () Bool)

(assert (=> d!2362161 (= c!1452885 ((_ is Node!15876) (left!56834 (right!57164 c!5365))))))

(declare-fun e!4673347 () Bool)

(assert (=> d!2362161 (= (inv!95579 (left!56834 (right!57164 c!5365))) e!4673347)))

(declare-fun b!7917344 () Bool)

(assert (=> b!7917344 (= e!4673347 (inv!95582 (left!56834 (right!57164 c!5365))))))

(declare-fun b!7917345 () Bool)

(declare-fun e!4673348 () Bool)

(assert (=> b!7917345 (= e!4673347 e!4673348)))

(declare-fun res!3142324 () Bool)

(assert (=> b!7917345 (= res!3142324 (not ((_ is Leaf!30195) (left!56834 (right!57164 c!5365)))))))

(assert (=> b!7917345 (=> res!3142324 e!4673348)))

(declare-fun b!7917346 () Bool)

(assert (=> b!7917346 (= e!4673348 (inv!95583 (left!56834 (right!57164 c!5365))))))

(assert (= (and d!2362161 c!1452885) b!7917344))

(assert (= (and d!2362161 (not c!1452885)) b!7917345))

(assert (= (and b!7917345 (not res!3142324)) b!7917346))

(declare-fun m!8292744 () Bool)

(assert (=> b!7917344 m!8292744))

(declare-fun m!8292746 () Bool)

(assert (=> b!7917346 m!8292746))

(assert (=> b!7917058 d!2362161))

(declare-fun d!2362163 () Bool)

(declare-fun c!1452886 () Bool)

(assert (=> d!2362163 (= c!1452886 ((_ is Node!15876) (right!57164 (right!57164 c!5365))))))

(declare-fun e!4673349 () Bool)

(assert (=> d!2362163 (= (inv!95579 (right!57164 (right!57164 c!5365))) e!4673349)))

(declare-fun b!7917347 () Bool)

(assert (=> b!7917347 (= e!4673349 (inv!95582 (right!57164 (right!57164 c!5365))))))

(declare-fun b!7917348 () Bool)

(declare-fun e!4673350 () Bool)

(assert (=> b!7917348 (= e!4673349 e!4673350)))

(declare-fun res!3142325 () Bool)

(assert (=> b!7917348 (= res!3142325 (not ((_ is Leaf!30195) (right!57164 (right!57164 c!5365)))))))

(assert (=> b!7917348 (=> res!3142325 e!4673350)))

(declare-fun b!7917349 () Bool)

(assert (=> b!7917349 (= e!4673350 (inv!95583 (right!57164 (right!57164 c!5365))))))

(assert (= (and d!2362163 c!1452886) b!7917347))

(assert (= (and d!2362163 (not c!1452886)) b!7917348))

(assert (= (and b!7917348 (not res!3142325)) b!7917349))

(declare-fun m!8292748 () Bool)

(assert (=> b!7917347 m!8292748))

(declare-fun m!8292750 () Bool)

(assert (=> b!7917349 m!8292750))

(assert (=> b!7917058 d!2362163))

(declare-fun b!7917352 () Bool)

(declare-fun res!3142326 () Bool)

(declare-fun e!4673351 () Bool)

(assert (=> b!7917352 (=> (not res!3142326) (not e!4673351))))

(declare-fun lt!2690782 () List!74546)

(assert (=> b!7917352 (= res!3142326 (= (size!43203 lt!2690782) (+ (size!43203 (t!390067 lt!2690524)) (size!43203 (t!390067 ll!14)))))))

(declare-fun b!7917351 () Bool)

(declare-fun e!4673352 () List!74546)

(assert (=> b!7917351 (= e!4673352 (Cons!74422 (h!80870 (t!390067 lt!2690524)) (++!18240 (t!390067 (t!390067 lt!2690524)) (t!390067 ll!14))))))

(declare-fun d!2362165 () Bool)

(assert (=> d!2362165 e!4673351))

(declare-fun res!3142327 () Bool)

(assert (=> d!2362165 (=> (not res!3142327) (not e!4673351))))

(assert (=> d!2362165 (= res!3142327 (= (content!15766 lt!2690782) ((_ map or) (content!15766 (t!390067 lt!2690524)) (content!15766 (t!390067 ll!14)))))))

(assert (=> d!2362165 (= lt!2690782 e!4673352)))

(declare-fun c!1452887 () Bool)

(assert (=> d!2362165 (= c!1452887 ((_ is Nil!74422) (t!390067 lt!2690524)))))

(assert (=> d!2362165 (= (++!18240 (t!390067 lt!2690524) (t!390067 ll!14)) lt!2690782)))

(declare-fun b!7917350 () Bool)

(assert (=> b!7917350 (= e!4673352 (t!390067 ll!14))))

(declare-fun b!7917353 () Bool)

(assert (=> b!7917353 (= e!4673351 (or (not (= (t!390067 ll!14) Nil!74422)) (= lt!2690782 (t!390067 lt!2690524))))))

(assert (= (and d!2362165 c!1452887) b!7917350))

(assert (= (and d!2362165 (not c!1452887)) b!7917351))

(assert (= (and d!2362165 res!3142327) b!7917352))

(assert (= (and b!7917352 res!3142326) b!7917353))

(declare-fun m!8292752 () Bool)

(assert (=> b!7917352 m!8292752))

(assert (=> b!7917352 m!8292250))

(assert (=> b!7917352 m!8291906))

(declare-fun m!8292754 () Bool)

(assert (=> b!7917351 m!8292754))

(declare-fun m!8292756 () Bool)

(assert (=> d!2362165 m!8292756))

(declare-fun m!8292758 () Bool)

(assert (=> d!2362165 m!8292758))

(assert (=> d!2362165 m!8291914))

(assert (=> b!7917032 d!2362165))

(declare-fun d!2362167 () Bool)

(declare-fun res!3142328 () Bool)

(declare-fun e!4673353 () Bool)

(assert (=> d!2362167 (=> (not res!3142328) (not e!4673353))))

(assert (=> d!2362167 (= res!3142328 (= (csize!31982 (left!56834 c!5365)) (+ (size!43204 (left!56834 (left!56834 c!5365))) (size!43204 (right!57164 (left!56834 c!5365))))))))

(assert (=> d!2362167 (= (inv!95582 (left!56834 c!5365)) e!4673353)))

(declare-fun b!7917354 () Bool)

(declare-fun res!3142329 () Bool)

(assert (=> b!7917354 (=> (not res!3142329) (not e!4673353))))

(assert (=> b!7917354 (= res!3142329 (and (not (= (left!56834 (left!56834 c!5365)) Empty!15876)) (not (= (right!57164 (left!56834 c!5365)) Empty!15876))))))

(declare-fun b!7917355 () Bool)

(declare-fun res!3142330 () Bool)

(assert (=> b!7917355 (=> (not res!3142330) (not e!4673353))))

(assert (=> b!7917355 (= res!3142330 (= (cheight!16087 (left!56834 c!5365)) (+ (max!0 (height!2192 (left!56834 (left!56834 c!5365))) (height!2192 (right!57164 (left!56834 c!5365)))) 1)))))

(declare-fun b!7917356 () Bool)

(assert (=> b!7917356 (= e!4673353 (<= 0 (cheight!16087 (left!56834 c!5365))))))

(assert (= (and d!2362167 res!3142328) b!7917354))

(assert (= (and b!7917354 res!3142329) b!7917355))

(assert (= (and b!7917355 res!3142330) b!7917356))

(declare-fun m!8292760 () Bool)

(assert (=> d!2362167 m!8292760))

(declare-fun m!8292762 () Bool)

(assert (=> d!2362167 m!8292762))

(assert (=> b!7917355 m!8292260))

(assert (=> b!7917355 m!8292262))

(assert (=> b!7917355 m!8292260))

(assert (=> b!7917355 m!8292262))

(declare-fun m!8292764 () Bool)

(assert (=> b!7917355 m!8292764))

(assert (=> b!7916779 d!2362167))

(declare-fun b!7917359 () Bool)

(declare-fun res!3142331 () Bool)

(declare-fun e!4673354 () Bool)

(assert (=> b!7917359 (=> (not res!3142331) (not e!4673354))))

(declare-fun lt!2690783 () List!74546)

(assert (=> b!7917359 (= res!3142331 (= (size!43203 lt!2690783) (+ (size!43203 (ite c!1452787 lt!2690677 lt!2690674)) (size!43203 (ite c!1452787 lt!2690660 lt!2690666)))))))

(declare-fun e!4673355 () List!74546)

(declare-fun b!7917358 () Bool)

(assert (=> b!7917358 (= e!4673355 (Cons!74422 (h!80870 (ite c!1452787 lt!2690677 lt!2690674)) (++!18240 (t!390067 (ite c!1452787 lt!2690677 lt!2690674)) (ite c!1452787 lt!2690660 lt!2690666))))))

(declare-fun d!2362169 () Bool)

(assert (=> d!2362169 e!4673354))

(declare-fun res!3142332 () Bool)

(assert (=> d!2362169 (=> (not res!3142332) (not e!4673354))))

(assert (=> d!2362169 (= res!3142332 (= (content!15766 lt!2690783) ((_ map or) (content!15766 (ite c!1452787 lt!2690677 lt!2690674)) (content!15766 (ite c!1452787 lt!2690660 lt!2690666)))))))

(assert (=> d!2362169 (= lt!2690783 e!4673355)))

(declare-fun c!1452888 () Bool)

(assert (=> d!2362169 (= c!1452888 ((_ is Nil!74422) (ite c!1452787 lt!2690677 lt!2690674)))))

(assert (=> d!2362169 (= (++!18240 (ite c!1452787 lt!2690677 lt!2690674) (ite c!1452787 lt!2690660 lt!2690666)) lt!2690783)))

(declare-fun b!7917357 () Bool)

(assert (=> b!7917357 (= e!4673355 (ite c!1452787 lt!2690660 lt!2690666))))

(declare-fun b!7917360 () Bool)

(assert (=> b!7917360 (= e!4673354 (or (not (= (ite c!1452787 lt!2690660 lt!2690666) Nil!74422)) (= lt!2690783 (ite c!1452787 lt!2690677 lt!2690674))))))

(assert (= (and d!2362169 c!1452888) b!7917357))

(assert (= (and d!2362169 (not c!1452888)) b!7917358))

(assert (= (and d!2362169 res!3142332) b!7917359))

(assert (= (and b!7917359 res!3142331) b!7917360))

(declare-fun m!8292766 () Bool)

(assert (=> b!7917359 m!8292766))

(declare-fun m!8292768 () Bool)

(assert (=> b!7917359 m!8292768))

(declare-fun m!8292770 () Bool)

(assert (=> b!7917359 m!8292770))

(declare-fun m!8292772 () Bool)

(assert (=> b!7917358 m!8292772))

(declare-fun m!8292774 () Bool)

(assert (=> d!2362169 m!8292774))

(declare-fun m!8292776 () Bool)

(assert (=> d!2362169 m!8292776))

(declare-fun m!8292778 () Bool)

(assert (=> d!2362169 m!8292778))

(assert (=> bm!734645 d!2362169))

(declare-fun b!7917365 () Bool)

(declare-fun res!3142333 () Bool)

(declare-fun e!4673357 () Bool)

(assert (=> b!7917365 (=> (not res!3142333) (not e!4673357))))

(declare-fun lt!2690784 () List!74546)

(assert (=> b!7917365 (= res!3142333 (= (size!43203 lt!2690784) (+ (size!43203 (list!19371 (left!56834 lt!2690522))) (size!43203 (list!19371 (right!57164 lt!2690522))))))))

(declare-fun b!7917364 () Bool)

(declare-fun e!4673358 () List!74546)

(assert (=> b!7917364 (= e!4673358 (Cons!74422 (h!80870 (list!19371 (left!56834 lt!2690522))) (++!18240 (t!390067 (list!19371 (left!56834 lt!2690522))) (list!19371 (right!57164 lt!2690522)))))))

(declare-fun d!2362171 () Bool)

(assert (=> d!2362171 e!4673357))

(declare-fun res!3142334 () Bool)

(assert (=> d!2362171 (=> (not res!3142334) (not e!4673357))))

(assert (=> d!2362171 (= res!3142334 (= (content!15766 lt!2690784) ((_ map or) (content!15766 (list!19371 (left!56834 lt!2690522))) (content!15766 (list!19371 (right!57164 lt!2690522))))))))

(assert (=> d!2362171 (= lt!2690784 e!4673358)))

(declare-fun c!1452890 () Bool)

(assert (=> d!2362171 (= c!1452890 ((_ is Nil!74422) (list!19371 (left!56834 lt!2690522))))))

(assert (=> d!2362171 (= (++!18240 (list!19371 (left!56834 lt!2690522)) (list!19371 (right!57164 lt!2690522))) lt!2690784)))

(declare-fun b!7917363 () Bool)

(assert (=> b!7917363 (= e!4673358 (list!19371 (right!57164 lt!2690522)))))

(declare-fun b!7917366 () Bool)

(assert (=> b!7917366 (= e!4673357 (or (not (= (list!19371 (right!57164 lt!2690522)) Nil!74422)) (= lt!2690784 (list!19371 (left!56834 lt!2690522)))))))

(assert (= (and d!2362171 c!1452890) b!7917363))

(assert (= (and d!2362171 (not c!1452890)) b!7917364))

(assert (= (and d!2362171 res!3142334) b!7917365))

(assert (= (and b!7917365 res!3142333) b!7917366))

(declare-fun m!8292784 () Bool)

(assert (=> b!7917365 m!8292784))

(assert (=> b!7917365 m!8291866))

(declare-fun m!8292786 () Bool)

(assert (=> b!7917365 m!8292786))

(assert (=> b!7917365 m!8291868))

(declare-fun m!8292788 () Bool)

(assert (=> b!7917365 m!8292788))

(assert (=> b!7917364 m!8291868))

(declare-fun m!8292790 () Bool)

(assert (=> b!7917364 m!8292790))

(declare-fun m!8292792 () Bool)

(assert (=> d!2362171 m!8292792))

(assert (=> d!2362171 m!8291866))

(declare-fun m!8292794 () Bool)

(assert (=> d!2362171 m!8292794))

(assert (=> d!2362171 m!8291868))

(declare-fun m!8292796 () Bool)

(assert (=> d!2362171 m!8292796))

(assert (=> b!7916883 d!2362171))

(declare-fun d!2362175 () Bool)

(declare-fun c!1452892 () Bool)

(assert (=> d!2362175 (= c!1452892 ((_ is Empty!15876) (left!56834 lt!2690522)))))

(declare-fun e!4673360 () List!74546)

(assert (=> d!2362175 (= (list!19371 (left!56834 lt!2690522)) e!4673360)))

(declare-fun b!7917369 () Bool)

(assert (=> b!7917369 (= e!4673360 Nil!74422)))

(declare-fun b!7917371 () Bool)

(declare-fun e!4673361 () List!74546)

(assert (=> b!7917371 (= e!4673361 (list!19373 (xs!19260 (left!56834 lt!2690522))))))

(declare-fun b!7917372 () Bool)

(assert (=> b!7917372 (= e!4673361 (++!18240 (list!19371 (left!56834 (left!56834 lt!2690522))) (list!19371 (right!57164 (left!56834 lt!2690522)))))))

(declare-fun b!7917370 () Bool)

(assert (=> b!7917370 (= e!4673360 e!4673361)))

(declare-fun c!1452893 () Bool)

(assert (=> b!7917370 (= c!1452893 ((_ is Leaf!30195) (left!56834 lt!2690522)))))

(assert (= (and d!2362175 c!1452892) b!7917369))

(assert (= (and d!2362175 (not c!1452892)) b!7917370))

(assert (= (and b!7917370 c!1452893) b!7917371))

(assert (= (and b!7917370 (not c!1452893)) b!7917372))

(declare-fun m!8292802 () Bool)

(assert (=> b!7917371 m!8292802))

(declare-fun m!8292804 () Bool)

(assert (=> b!7917372 m!8292804))

(declare-fun m!8292806 () Bool)

(assert (=> b!7917372 m!8292806))

(assert (=> b!7917372 m!8292804))

(assert (=> b!7917372 m!8292806))

(declare-fun m!8292808 () Bool)

(assert (=> b!7917372 m!8292808))

(assert (=> b!7916883 d!2362175))

(declare-fun d!2362179 () Bool)

(declare-fun c!1452895 () Bool)

(assert (=> d!2362179 (= c!1452895 ((_ is Empty!15876) (right!57164 lt!2690522)))))

(declare-fun e!4673363 () List!74546)

(assert (=> d!2362179 (= (list!19371 (right!57164 lt!2690522)) e!4673363)))

(declare-fun b!7917375 () Bool)

(assert (=> b!7917375 (= e!4673363 Nil!74422)))

(declare-fun b!7917377 () Bool)

(declare-fun e!4673364 () List!74546)

(assert (=> b!7917377 (= e!4673364 (list!19373 (xs!19260 (right!57164 lt!2690522))))))

(declare-fun b!7917378 () Bool)

(assert (=> b!7917378 (= e!4673364 (++!18240 (list!19371 (left!56834 (right!57164 lt!2690522))) (list!19371 (right!57164 (right!57164 lt!2690522)))))))

(declare-fun b!7917376 () Bool)

(assert (=> b!7917376 (= e!4673363 e!4673364)))

(declare-fun c!1452896 () Bool)

(assert (=> b!7917376 (= c!1452896 ((_ is Leaf!30195) (right!57164 lt!2690522)))))

(assert (= (and d!2362179 c!1452895) b!7917375))

(assert (= (and d!2362179 (not c!1452895)) b!7917376))

(assert (= (and b!7917376 c!1452896) b!7917377))

(assert (= (and b!7917376 (not c!1452896)) b!7917378))

(declare-fun m!8292812 () Bool)

(assert (=> b!7917377 m!8292812))

(declare-fun m!8292814 () Bool)

(assert (=> b!7917378 m!8292814))

(declare-fun m!8292816 () Bool)

(assert (=> b!7917378 m!8292816))

(assert (=> b!7917378 m!8292814))

(assert (=> b!7917378 m!8292816))

(declare-fun m!8292820 () Bool)

(assert (=> b!7917378 m!8292820))

(assert (=> b!7916883 d!2362179))

(declare-fun d!2362183 () Bool)

(declare-fun c!1452897 () Bool)

(assert (=> d!2362183 (= c!1452897 ((_ is Node!15876) (left!56834 (left!56834 c!5365))))))

(declare-fun e!4673365 () Bool)

(assert (=> d!2362183 (= (inv!95579 (left!56834 (left!56834 c!5365))) e!4673365)))

(declare-fun b!7917379 () Bool)

(assert (=> b!7917379 (= e!4673365 (inv!95582 (left!56834 (left!56834 c!5365))))))

(declare-fun b!7917380 () Bool)

(declare-fun e!4673366 () Bool)

(assert (=> b!7917380 (= e!4673365 e!4673366)))

(declare-fun res!3142335 () Bool)

(assert (=> b!7917380 (= res!3142335 (not ((_ is Leaf!30195) (left!56834 (left!56834 c!5365)))))))

(assert (=> b!7917380 (=> res!3142335 e!4673366)))

(declare-fun b!7917381 () Bool)

(assert (=> b!7917381 (= e!4673366 (inv!95583 (left!56834 (left!56834 c!5365))))))

(assert (= (and d!2362183 c!1452897) b!7917379))

(assert (= (and d!2362183 (not c!1452897)) b!7917380))

(assert (= (and b!7917380 (not res!3142335)) b!7917381))

(declare-fun m!8292822 () Bool)

(assert (=> b!7917379 m!8292822))

(declare-fun m!8292824 () Bool)

(assert (=> b!7917381 m!8292824))

(assert (=> b!7917055 d!2362183))

(declare-fun d!2362185 () Bool)

(declare-fun c!1452898 () Bool)

(assert (=> d!2362185 (= c!1452898 ((_ is Node!15876) (right!57164 (left!56834 c!5365))))))

(declare-fun e!4673367 () Bool)

(assert (=> d!2362185 (= (inv!95579 (right!57164 (left!56834 c!5365))) e!4673367)))

(declare-fun b!7917382 () Bool)

(assert (=> b!7917382 (= e!4673367 (inv!95582 (right!57164 (left!56834 c!5365))))))

(declare-fun b!7917383 () Bool)

(declare-fun e!4673368 () Bool)

(assert (=> b!7917383 (= e!4673367 e!4673368)))

(declare-fun res!3142336 () Bool)

(assert (=> b!7917383 (= res!3142336 (not ((_ is Leaf!30195) (right!57164 (left!56834 c!5365)))))))

(assert (=> b!7917383 (=> res!3142336 e!4673368)))

(declare-fun b!7917384 () Bool)

(assert (=> b!7917384 (= e!4673368 (inv!95583 (right!57164 (left!56834 c!5365))))))

(assert (= (and d!2362185 c!1452898) b!7917382))

(assert (= (and d!2362185 (not c!1452898)) b!7917383))

(assert (= (and b!7917383 (not res!3142336)) b!7917384))

(declare-fun m!8292826 () Bool)

(assert (=> b!7917382 m!8292826))

(declare-fun m!8292828 () Bool)

(assert (=> b!7917384 m!8292828))

(assert (=> b!7917055 d!2362185))

(declare-fun d!2362187 () Bool)

(declare-fun lt!2690785 () Int)

(assert (=> d!2362187 (>= lt!2690785 0)))

(declare-fun e!4673369 () Int)

(assert (=> d!2362187 (= lt!2690785 e!4673369)))

(declare-fun c!1452899 () Bool)

(assert (=> d!2362187 (= c!1452899 ((_ is Nil!74422) lt!2690684))))

(assert (=> d!2362187 (= (size!43203 lt!2690684) lt!2690785)))

(declare-fun b!7917385 () Bool)

(assert (=> b!7917385 (= e!4673369 0)))

(declare-fun b!7917386 () Bool)

(assert (=> b!7917386 (= e!4673369 (+ 1 (size!43203 (t!390067 lt!2690684))))))

(assert (= (and d!2362187 c!1452899) b!7917385))

(assert (= (and d!2362187 (not c!1452899)) b!7917386))

(declare-fun m!8292830 () Bool)

(assert (=> b!7917386 m!8292830))

(assert (=> b!7917041 d!2362187))

(assert (=> b!7917041 d!2362069))

(declare-fun d!2362189 () Bool)

(declare-fun lt!2690786 () Int)

(assert (=> d!2362189 (>= lt!2690786 0)))

(declare-fun e!4673370 () Int)

(assert (=> d!2362189 (= lt!2690786 e!4673370)))

(declare-fun c!1452900 () Bool)

(assert (=> d!2362189 (= c!1452900 ((_ is Nil!74422) ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14))))))

(assert (=> d!2362189 (= (size!43203 ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14))) lt!2690786)))

(declare-fun b!7917387 () Bool)

(assert (=> b!7917387 (= e!4673370 0)))

(declare-fun b!7917388 () Bool)

(assert (=> b!7917388 (= e!4673370 (+ 1 (size!43203 (t!390067 ($colon$colon!3419 (t!390067 ll!14) (h!80870 ll!14))))))))

(assert (= (and d!2362189 c!1452900) b!7917387))

(assert (= (and d!2362189 (not c!1452900)) b!7917388))

(declare-fun m!8292832 () Bool)

(assert (=> b!7917388 m!8292832))

(assert (=> b!7917041 d!2362189))

(declare-fun b!7917391 () Bool)

(declare-fun res!3142337 () Bool)

(declare-fun e!4673371 () Bool)

(assert (=> b!7917391 (=> (not res!3142337) (not e!4673371))))

(declare-fun lt!2690787 () List!74546)

(assert (=> b!7917391 (= res!3142337 (= (size!43203 lt!2690787) (+ (size!43203 (t!390067 lt!2690517)) (size!43203 (t!390067 ll!14)))))))

(declare-fun b!7917390 () Bool)

(declare-fun e!4673372 () List!74546)

(assert (=> b!7917390 (= e!4673372 (Cons!74422 (h!80870 (t!390067 lt!2690517)) (++!18240 (t!390067 (t!390067 lt!2690517)) (t!390067 ll!14))))))

(declare-fun d!2362191 () Bool)

(assert (=> d!2362191 e!4673371))

(declare-fun res!3142338 () Bool)

(assert (=> d!2362191 (=> (not res!3142338) (not e!4673371))))

(assert (=> d!2362191 (= res!3142338 (= (content!15766 lt!2690787) ((_ map or) (content!15766 (t!390067 lt!2690517)) (content!15766 (t!390067 ll!14)))))))

(assert (=> d!2362191 (= lt!2690787 e!4673372)))

(declare-fun c!1452901 () Bool)

(assert (=> d!2362191 (= c!1452901 ((_ is Nil!74422) (t!390067 lt!2690517)))))

(assert (=> d!2362191 (= (++!18240 (t!390067 lt!2690517) (t!390067 ll!14)) lt!2690787)))

(declare-fun b!7917389 () Bool)

(assert (=> b!7917389 (= e!4673372 (t!390067 ll!14))))

(declare-fun b!7917392 () Bool)

(assert (=> b!7917392 (= e!4673371 (or (not (= (t!390067 ll!14) Nil!74422)) (= lt!2690787 (t!390067 lt!2690517))))))

(assert (= (and d!2362191 c!1452901) b!7917389))

(assert (= (and d!2362191 (not c!1452901)) b!7917390))

(assert (= (and d!2362191 res!3142338) b!7917391))

(assert (= (and b!7917391 res!3142337) b!7917392))

(declare-fun m!8292834 () Bool)

(assert (=> b!7917391 m!8292834))

(assert (=> b!7917391 m!8292328))

(assert (=> b!7917391 m!8291906))

(declare-fun m!8292836 () Bool)

(assert (=> b!7917390 m!8292836))

(declare-fun m!8292838 () Bool)

(assert (=> d!2362191 m!8292838))

(assert (=> d!2362191 m!8292540))

(assert (=> d!2362191 m!8291914))

(assert (=> b!7917044 d!2362191))

(declare-fun b!7917393 () Bool)

(declare-fun e!4673374 () Bool)

(declare-fun e!4673373 () Bool)

(assert (=> b!7917393 (= e!4673374 e!4673373)))

(declare-fun res!3142343 () Bool)

(assert (=> b!7917393 (=> (not res!3142343) (not e!4673373))))

(assert (=> b!7917393 (= res!3142343 (<= (- 1) (- (height!2192 (left!56834 (right!57164 c!5365))) (height!2192 (right!57164 (right!57164 c!5365))))))))

(declare-fun b!7917394 () Bool)

(declare-fun res!3142339 () Bool)

(assert (=> b!7917394 (=> (not res!3142339) (not e!4673373))))

(assert (=> b!7917394 (= res!3142339 (isBalanced!4502 (left!56834 (right!57164 c!5365))))))

(declare-fun b!7917395 () Bool)

(declare-fun res!3142341 () Bool)

(assert (=> b!7917395 (=> (not res!3142341) (not e!4673373))))

(assert (=> b!7917395 (= res!3142341 (not (isEmpty!42739 (left!56834 (right!57164 c!5365)))))))

(declare-fun b!7917396 () Bool)

(declare-fun res!3142344 () Bool)

(assert (=> b!7917396 (=> (not res!3142344) (not e!4673373))))

(assert (=> b!7917396 (= res!3142344 (<= (- (height!2192 (left!56834 (right!57164 c!5365))) (height!2192 (right!57164 (right!57164 c!5365)))) 1))))

(declare-fun b!7917397 () Bool)

(declare-fun res!3142342 () Bool)

(assert (=> b!7917397 (=> (not res!3142342) (not e!4673373))))

(assert (=> b!7917397 (= res!3142342 (isBalanced!4502 (right!57164 (right!57164 c!5365))))))

(declare-fun b!7917398 () Bool)

(assert (=> b!7917398 (= e!4673373 (not (isEmpty!42739 (right!57164 (right!57164 c!5365)))))))

(declare-fun d!2362193 () Bool)

(declare-fun res!3142340 () Bool)

(assert (=> d!2362193 (=> res!3142340 e!4673374)))

(assert (=> d!2362193 (= res!3142340 (not ((_ is Node!15876) (right!57164 c!5365))))))

(assert (=> d!2362193 (= (isBalanced!4502 (right!57164 c!5365)) e!4673374)))

(assert (= (and d!2362193 (not res!3142340)) b!7917393))

(assert (= (and b!7917393 res!3142343) b!7917396))

(assert (= (and b!7917396 res!3142344) b!7917394))

(assert (= (and b!7917394 res!3142339) b!7917397))

(assert (= (and b!7917397 res!3142342) b!7917395))

(assert (= (and b!7917395 res!3142341) b!7917398))

(declare-fun m!8292840 () Bool)

(assert (=> b!7917395 m!8292840))

(declare-fun m!8292842 () Bool)

(assert (=> b!7917394 m!8292842))

(declare-fun m!8292844 () Bool)

(assert (=> b!7917398 m!8292844))

(declare-fun m!8292846 () Bool)

(assert (=> b!7917397 m!8292846))

(assert (=> b!7917396 m!8292268))

(assert (=> b!7917396 m!8292498))

(assert (=> b!7917393 m!8292268))

(assert (=> b!7917393 m!8292498))

(assert (=> b!7916821 d!2362193))

(declare-fun d!2362199 () Bool)

(declare-fun c!1452902 () Bool)

(assert (=> d!2362199 (= c!1452902 ((_ is Nil!74422) lt!2690679))))

(declare-fun e!4673376 () (InoxSet T!145622))

(assert (=> d!2362199 (= (content!15766 lt!2690679) e!4673376)))

(declare-fun b!7917399 () Bool)

(assert (=> b!7917399 (= e!4673376 ((as const (Array T!145622 Bool)) false))))

(declare-fun b!7917400 () Bool)

(assert (=> b!7917400 (= e!4673376 ((_ map or) (store ((as const (Array T!145622 Bool)) false) (h!80870 lt!2690679) true) (content!15766 (t!390067 lt!2690679))))))

(assert (= (and d!2362199 c!1452902) b!7917399))

(assert (= (and d!2362199 (not c!1452902)) b!7917400))

(declare-fun m!8292848 () Bool)

(assert (=> b!7917400 m!8292848))

(declare-fun m!8292850 () Bool)

(assert (=> b!7917400 m!8292850))

(assert (=> d!2361983 d!2362199))

(declare-fun d!2362201 () Bool)

(declare-fun c!1452908 () Bool)

(assert (=> d!2362201 (= c!1452908 ((_ is Nil!74422) lt!2690524))))

(declare-fun e!4673382 () (InoxSet T!145622))

(assert (=> d!2362201 (= (content!15766 lt!2690524) e!4673382)))

(declare-fun b!7917405 () Bool)

(assert (=> b!7917405 (= e!4673382 ((as const (Array T!145622 Bool)) false))))

(declare-fun b!7917406 () Bool)

(assert (=> b!7917406 (= e!4673382 ((_ map or) (store ((as const (Array T!145622 Bool)) false) (h!80870 lt!2690524) true) (content!15766 (t!390067 lt!2690524))))))

(assert (= (and d!2362201 c!1452908) b!7917405))

(assert (= (and d!2362201 (not c!1452908)) b!7917406))

(declare-fun m!8292852 () Bool)

(assert (=> b!7917406 m!8292852))

(assert (=> b!7917406 m!8292758))

(assert (=> d!2361983 d!2362201))

(assert (=> d!2361983 d!2362011))

(declare-fun b!7917418 () Bool)

(declare-fun res!3142348 () Bool)

(declare-fun e!4673383 () Bool)

(assert (=> b!7917418 (=> (not res!3142348) (not e!4673383))))

(declare-fun lt!2690806 () List!74546)

(assert (=> b!7917418 (= res!3142348 (= (size!43203 lt!2690806) (+ (size!43203 (ite c!1452787 lt!2690660 lt!2690671)) (size!43203 (ite c!1452787 lt!2690669 lt!2690674)))))))

(declare-fun b!7917417 () Bool)

(declare-fun e!4673384 () List!74546)

(assert (=> b!7917417 (= e!4673384 (Cons!74422 (h!80870 (ite c!1452787 lt!2690660 lt!2690671)) (++!18240 (t!390067 (ite c!1452787 lt!2690660 lt!2690671)) (ite c!1452787 lt!2690669 lt!2690674))))))

(declare-fun d!2362203 () Bool)

(assert (=> d!2362203 e!4673383))

(declare-fun res!3142349 () Bool)

(assert (=> d!2362203 (=> (not res!3142349) (not e!4673383))))

(assert (=> d!2362203 (= res!3142349 (= (content!15766 lt!2690806) ((_ map or) (content!15766 (ite c!1452787 lt!2690660 lt!2690671)) (content!15766 (ite c!1452787 lt!2690669 lt!2690674)))))))

(assert (=> d!2362203 (= lt!2690806 e!4673384)))

(declare-fun c!1452909 () Bool)

(assert (=> d!2362203 (= c!1452909 ((_ is Nil!74422) (ite c!1452787 lt!2690660 lt!2690671)))))

(assert (=> d!2362203 (= (++!18240 (ite c!1452787 lt!2690660 lt!2690671) (ite c!1452787 lt!2690669 lt!2690674)) lt!2690806)))

(declare-fun b!7917416 () Bool)

(assert (=> b!7917416 (= e!4673384 (ite c!1452787 lt!2690669 lt!2690674))))

(declare-fun b!7917419 () Bool)

(assert (=> b!7917419 (= e!4673383 (or (not (= (ite c!1452787 lt!2690669 lt!2690674) Nil!74422)) (= lt!2690806 (ite c!1452787 lt!2690660 lt!2690671))))))

(assert (= (and d!2362203 c!1452909) b!7917416))

(assert (= (and d!2362203 (not c!1452909)) b!7917417))

(assert (= (and d!2362203 res!3142349) b!7917418))

(assert (= (and b!7917418 res!3142348) b!7917419))

(declare-fun m!8292854 () Bool)

(assert (=> b!7917418 m!8292854))

(declare-fun m!8292856 () Bool)

(assert (=> b!7917418 m!8292856))

(declare-fun m!8292858 () Bool)

(assert (=> b!7917418 m!8292858))

(declare-fun m!8292860 () Bool)

(assert (=> b!7917417 m!8292860))

(declare-fun m!8292862 () Bool)

(assert (=> d!2362203 m!8292862))

(declare-fun m!8292864 () Bool)

(assert (=> d!2362203 m!8292864))

(declare-fun m!8292866 () Bool)

(assert (=> d!2362203 m!8292866))

(assert (=> bm!734641 d!2362203))

(declare-fun d!2362205 () Bool)

(declare-fun c!1452910 () Bool)

(assert (=> d!2362205 (= c!1452910 ((_ is Nil!74422) lt!2690683))))

(declare-fun e!4673385 () (InoxSet T!145622))

(assert (=> d!2362205 (= (content!15766 lt!2690683) e!4673385)))

(declare-fun b!7917420 () Bool)

(assert (=> b!7917420 (= e!4673385 ((as const (Array T!145622 Bool)) false))))

(declare-fun b!7917421 () Bool)

(assert (=> b!7917421 (= e!4673385 ((_ map or) (store ((as const (Array T!145622 Bool)) false) (h!80870 lt!2690683) true) (content!15766 (t!390067 lt!2690683))))))

(assert (= (and d!2362205 c!1452910) b!7917420))

(assert (= (and d!2362205 (not c!1452910)) b!7917421))

(declare-fun m!8292868 () Bool)

(assert (=> b!7917421 m!8292868))

(declare-fun m!8292870 () Bool)

(assert (=> b!7917421 m!8292870))

(assert (=> d!2361987 d!2362205))

(assert (=> d!2361987 d!2362001))

(declare-fun d!2362207 () Bool)

(declare-fun c!1452911 () Bool)

(assert (=> d!2362207 (= c!1452911 ((_ is Nil!74422) lt!2690518))))

(declare-fun e!4673386 () (InoxSet T!145622))

(assert (=> d!2362207 (= (content!15766 lt!2690518) e!4673386)))

(declare-fun b!7917422 () Bool)

(assert (=> b!7917422 (= e!4673386 ((as const (Array T!145622 Bool)) false))))

(declare-fun b!7917423 () Bool)

(assert (=> b!7917423 (= e!4673386 ((_ map or) (store ((as const (Array T!145622 Bool)) false) (h!80870 lt!2690518) true) (content!15766 (t!390067 lt!2690518))))))

(assert (= (and d!2362207 c!1452911) b!7917422))

(assert (= (and d!2362207 (not c!1452911)) b!7917423))

(declare-fun m!8292872 () Bool)

(assert (=> b!7917423 m!8292872))

(declare-fun m!8292874 () Bool)

(assert (=> b!7917423 m!8292874))

(assert (=> d!2361987 d!2362207))

(declare-fun d!2362209 () Bool)

(declare-fun c!1452912 () Bool)

(assert (=> d!2362209 (= c!1452912 ((_ is Empty!15876) (left!56834 c!5365)))))

(declare-fun e!4673387 () List!74546)

(assert (=> d!2362209 (= (list!19371 (left!56834 c!5365)) e!4673387)))

(declare-fun b!7917424 () Bool)

(assert (=> b!7917424 (= e!4673387 Nil!74422)))

(declare-fun b!7917426 () Bool)

(declare-fun e!4673388 () List!74546)

(assert (=> b!7917426 (= e!4673388 (list!19373 (xs!19260 (left!56834 c!5365))))))

(declare-fun b!7917427 () Bool)

(assert (=> b!7917427 (= e!4673388 (++!18240 (list!19371 (left!56834 (left!56834 c!5365))) (list!19371 (right!57164 (left!56834 c!5365)))))))

(declare-fun b!7917425 () Bool)

(assert (=> b!7917425 (= e!4673387 e!4673388)))

(declare-fun c!1452913 () Bool)

(assert (=> b!7917425 (= c!1452913 ((_ is Leaf!30195) (left!56834 c!5365)))))

(assert (= (and d!2362209 c!1452912) b!7917424))

(assert (= (and d!2362209 (not c!1452912)) b!7917425))

(assert (= (and b!7917425 c!1452913) b!7917426))

(assert (= (and b!7917425 (not c!1452913)) b!7917427))

(assert (=> b!7917426 m!8292740))

(declare-fun m!8292876 () Bool)

(assert (=> b!7917427 m!8292876))

(declare-fun m!8292878 () Bool)

(assert (=> b!7917427 m!8292878))

(assert (=> b!7917427 m!8292876))

(assert (=> b!7917427 m!8292878))

(declare-fun m!8292880 () Bool)

(assert (=> b!7917427 m!8292880))

(assert (=> bm!734640 d!2362209))

(declare-fun b!7917430 () Bool)

(declare-fun res!3142350 () Bool)

(declare-fun e!4673389 () Bool)

(assert (=> b!7917430 (=> (not res!3142350) (not e!4673389))))

(declare-fun lt!2690807 () List!74546)

(assert (=> b!7917430 (= res!3142350 (= (size!43203 lt!2690807) (+ (size!43203 (list!19371 (left!56834 c!5365))) (size!43203 (list!19371 (right!57164 c!5365))))))))

(declare-fun b!7917429 () Bool)

(declare-fun e!4673390 () List!74546)

(assert (=> b!7917429 (= e!4673390 (Cons!74422 (h!80870 (list!19371 (left!56834 c!5365))) (++!18240 (t!390067 (list!19371 (left!56834 c!5365))) (list!19371 (right!57164 c!5365)))))))

(declare-fun d!2362211 () Bool)

(assert (=> d!2362211 e!4673389))

(declare-fun res!3142351 () Bool)

(assert (=> d!2362211 (=> (not res!3142351) (not e!4673389))))

(assert (=> d!2362211 (= res!3142351 (= (content!15766 lt!2690807) ((_ map or) (content!15766 (list!19371 (left!56834 c!5365))) (content!15766 (list!19371 (right!57164 c!5365))))))))

(assert (=> d!2362211 (= lt!2690807 e!4673390)))

(declare-fun c!1452914 () Bool)

(assert (=> d!2362211 (= c!1452914 ((_ is Nil!74422) (list!19371 (left!56834 c!5365))))))

(assert (=> d!2362211 (= (++!18240 (list!19371 (left!56834 c!5365)) (list!19371 (right!57164 c!5365))) lt!2690807)))

(declare-fun b!7917428 () Bool)

(assert (=> b!7917428 (= e!4673390 (list!19371 (right!57164 c!5365)))))

(declare-fun b!7917431 () Bool)

(assert (=> b!7917431 (= e!4673389 (or (not (= (list!19371 (right!57164 c!5365)) Nil!74422)) (= lt!2690807 (list!19371 (left!56834 c!5365)))))))

(assert (= (and d!2362211 c!1452914) b!7917428))

(assert (= (and d!2362211 (not c!1452914)) b!7917429))

(assert (= (and d!2362211 res!3142351) b!7917430))

(assert (= (and b!7917430 res!3142350) b!7917431))

(declare-fun m!8292882 () Bool)

(assert (=> b!7917430 m!8292882))

(assert (=> b!7917430 m!8292030))

(declare-fun m!8292884 () Bool)

(assert (=> b!7917430 m!8292884))

(assert (=> b!7917430 m!8292050))

(declare-fun m!8292886 () Bool)

(assert (=> b!7917430 m!8292886))

(assert (=> b!7917429 m!8292050))

(declare-fun m!8292888 () Bool)

(assert (=> b!7917429 m!8292888))

(declare-fun m!8292890 () Bool)

(assert (=> d!2362211 m!8292890))

(assert (=> d!2362211 m!8292030))

(declare-fun m!8292892 () Bool)

(assert (=> d!2362211 m!8292892))

(assert (=> d!2362211 m!8292050))

(declare-fun m!8292894 () Bool)

(assert (=> d!2362211 m!8292894))

(assert (=> b!7917030 d!2362211))

(assert (=> b!7917030 d!2362209))

(assert (=> b!7917030 d!2362027))

(declare-fun b!7917432 () Bool)

(declare-fun e!4673391 () Bool)

(declare-fun tp!2357539 () Bool)

(assert (=> b!7917432 (= e!4673391 (and tp_is_empty!53177 tp!2357539))))

(assert (=> b!7917057 (= tp!2357530 e!4673391)))

(assert (= (and b!7917057 ((_ is Cons!74422) (innerList!15964 (xs!19260 (left!56834 c!5365))))) b!7917432))

(declare-fun b!7917433 () Bool)

(declare-fun e!4673392 () Bool)

(declare-fun tp!2357540 () Bool)

(assert (=> b!7917433 (= e!4673392 (and tp_is_empty!53177 tp!2357540))))

(assert (=> b!7917060 (= tp!2357533 e!4673392)))

(assert (= (and b!7917060 ((_ is Cons!74422) (innerList!15964 (xs!19260 (right!57164 c!5365))))) b!7917433))

(declare-fun b!7917434 () Bool)

(declare-fun e!4673393 () Bool)

(declare-fun tp!2357541 () Bool)

(assert (=> b!7917434 (= e!4673393 (and tp_is_empty!53177 tp!2357541))))

(assert (=> b!7917065 (= tp!2357537 e!4673393)))

(assert (= (and b!7917065 ((_ is Cons!74422) (t!390067 (innerList!15964 (xs!19260 c!5365))))) b!7917434))

(declare-fun e!4673395 () Bool)

(declare-fun b!7917435 () Bool)

(declare-fun tp!2357542 () Bool)

(declare-fun tp!2357544 () Bool)

(assert (=> b!7917435 (= e!4673395 (and (inv!95579 (left!56834 (left!56834 (left!56834 c!5365)))) tp!2357542 (inv!95579 (right!57164 (left!56834 (left!56834 c!5365)))) tp!2357544))))

(declare-fun b!7917437 () Bool)

(declare-fun e!4673394 () Bool)

(declare-fun tp!2357543 () Bool)

(assert (=> b!7917437 (= e!4673394 tp!2357543)))

(declare-fun b!7917436 () Bool)

(assert (=> b!7917436 (= e!4673395 (and (inv!95578 (xs!19260 (left!56834 (left!56834 c!5365)))) e!4673394))))

(assert (=> b!7917055 (= tp!2357529 (and (inv!95579 (left!56834 (left!56834 c!5365))) e!4673395))))

(assert (= (and b!7917055 ((_ is Node!15876) (left!56834 (left!56834 c!5365)))) b!7917435))

(assert (= b!7917436 b!7917437))

(assert (= (and b!7917055 ((_ is Leaf!30195) (left!56834 (left!56834 c!5365)))) b!7917436))

(declare-fun m!8292896 () Bool)

(assert (=> b!7917435 m!8292896))

(declare-fun m!8292898 () Bool)

(assert (=> b!7917435 m!8292898))

(declare-fun m!8292900 () Bool)

(assert (=> b!7917436 m!8292900))

(assert (=> b!7917055 m!8292132))

(declare-fun e!4673397 () Bool)

(declare-fun b!7917438 () Bool)

(declare-fun tp!2357545 () Bool)

(declare-fun tp!2357547 () Bool)

(assert (=> b!7917438 (= e!4673397 (and (inv!95579 (left!56834 (right!57164 (left!56834 c!5365)))) tp!2357545 (inv!95579 (right!57164 (right!57164 (left!56834 c!5365)))) tp!2357547))))

(declare-fun b!7917440 () Bool)

(declare-fun e!4673396 () Bool)

(declare-fun tp!2357546 () Bool)

(assert (=> b!7917440 (= e!4673396 tp!2357546)))

(declare-fun b!7917439 () Bool)

(assert (=> b!7917439 (= e!4673397 (and (inv!95578 (xs!19260 (right!57164 (left!56834 c!5365)))) e!4673396))))

(assert (=> b!7917055 (= tp!2357531 (and (inv!95579 (right!57164 (left!56834 c!5365))) e!4673397))))

(assert (= (and b!7917055 ((_ is Node!15876) (right!57164 (left!56834 c!5365)))) b!7917438))

(assert (= b!7917439 b!7917440))

(assert (= (and b!7917055 ((_ is Leaf!30195) (right!57164 (left!56834 c!5365)))) b!7917439))

(declare-fun m!8292902 () Bool)

(assert (=> b!7917438 m!8292902))

(declare-fun m!8292904 () Bool)

(assert (=> b!7917438 m!8292904))

(declare-fun m!8292906 () Bool)

(assert (=> b!7917439 m!8292906))

(assert (=> b!7917055 m!8292134))

(declare-fun b!7917441 () Bool)

(declare-fun tp!2357548 () Bool)

(declare-fun tp!2357550 () Bool)

(declare-fun e!4673399 () Bool)

(assert (=> b!7917441 (= e!4673399 (and (inv!95579 (left!56834 (left!56834 (right!57164 c!5365)))) tp!2357548 (inv!95579 (right!57164 (left!56834 (right!57164 c!5365)))) tp!2357550))))

(declare-fun b!7917443 () Bool)

(declare-fun e!4673398 () Bool)

(declare-fun tp!2357549 () Bool)

(assert (=> b!7917443 (= e!4673398 tp!2357549)))

(declare-fun b!7917442 () Bool)

(assert (=> b!7917442 (= e!4673399 (and (inv!95578 (xs!19260 (left!56834 (right!57164 c!5365)))) e!4673398))))

(assert (=> b!7917058 (= tp!2357532 (and (inv!95579 (left!56834 (right!57164 c!5365))) e!4673399))))

(assert (= (and b!7917058 ((_ is Node!15876) (left!56834 (right!57164 c!5365)))) b!7917441))

(assert (= b!7917442 b!7917443))

(assert (= (and b!7917058 ((_ is Leaf!30195) (left!56834 (right!57164 c!5365)))) b!7917442))

(declare-fun m!8292908 () Bool)

(assert (=> b!7917441 m!8292908))

(declare-fun m!8292910 () Bool)

(assert (=> b!7917441 m!8292910))

(declare-fun m!8292912 () Bool)

(assert (=> b!7917442 m!8292912))

(assert (=> b!7917058 m!8292138))

(declare-fun tp!2357551 () Bool)

(declare-fun b!7917444 () Bool)

(declare-fun e!4673401 () Bool)

(declare-fun tp!2357553 () Bool)

(assert (=> b!7917444 (= e!4673401 (and (inv!95579 (left!56834 (right!57164 (right!57164 c!5365)))) tp!2357551 (inv!95579 (right!57164 (right!57164 (right!57164 c!5365)))) tp!2357553))))

(declare-fun b!7917446 () Bool)

(declare-fun e!4673400 () Bool)

(declare-fun tp!2357552 () Bool)

(assert (=> b!7917446 (= e!4673400 tp!2357552)))

(declare-fun b!7917445 () Bool)

(assert (=> b!7917445 (= e!4673401 (and (inv!95578 (xs!19260 (right!57164 (right!57164 c!5365)))) e!4673400))))

(assert (=> b!7917058 (= tp!2357534 (and (inv!95579 (right!57164 (right!57164 c!5365))) e!4673401))))

(assert (= (and b!7917058 ((_ is Node!15876) (right!57164 (right!57164 c!5365)))) b!7917444))

(assert (= b!7917445 b!7917446))

(assert (= (and b!7917058 ((_ is Leaf!30195) (right!57164 (right!57164 c!5365)))) b!7917445))

(declare-fun m!8292914 () Bool)

(assert (=> b!7917444 m!8292914))

(declare-fun m!8292916 () Bool)

(assert (=> b!7917444 m!8292916))

(declare-fun m!8292918 () Bool)

(assert (=> b!7917445 m!8292918))

(assert (=> b!7917058 m!8292140))

(declare-fun b!7917447 () Bool)

(declare-fun e!4673402 () Bool)

(declare-fun tp!2357554 () Bool)

(assert (=> b!7917447 (= e!4673402 (and tp_is_empty!53177 tp!2357554))))

(assert (=> b!7917066 (= tp!2357538 e!4673402)))

(assert (= (and b!7917066 ((_ is Cons!74422) (t!390067 (t!390067 ll!14)))) b!7917447))

(check-sat (not b!7917157) (not bm!734657) (not b!7917204) (not b!7917310) (not b!7917394) (not b!7917282) (not b!7917172) (not b!7917122) (not b!7917358) (not b!7917393) (not b!7917092) (not b!7917313) (not b!7917400) (not d!2362079) (not b!7917379) (not d!2362071) (not b!7917327) (not bm!734673) (not b!7917208) tp_is_empty!53177 (not b!7917289) (not b!7917136) (not b!7917317) (not b!7917084) (not d!2362133) (not b!7917126) (not b!7917378) (not b!7917254) (not bm!734663) (not b!7917108) (not b!7917295) (not bm!734671) (not d!2362171) (not bm!734675) (not b!7917359) (not b!7917088) (not d!2362165) (not b!7917153) (not b!7917432) (not b!7917433) (not d!2362121) (not b!7917437) (not b!7917113) (not b!7917296) (not b!7917236) (not d!2362123) (not b!7917078) (not b!7917429) (not b!7917130) (not b!7917441) (not b!7917328) (not d!2362203) (not b!7917390) (not d!2362021) (not b!7917304) (not b!7917277) (not b!7917339) (not b!7917258) (not b!7917291) (not b!7917262) (not b!7917301) (not b!7917124) (not bm!734664) (not d!2362101) (not b!7917259) (not b!7917185) (not b!7917435) (not bm!734648) (not d!2362139) (not b!7917082) (not b!7917321) (not b!7917068) (not bm!734656) (not b!7917131) (not b!7917371) (not d!2362167) (not b!7917076) (not bm!734669) (not b!7917344) (not b!7917398) (not b!7917283) (not b!7917165) (not b!7917160) (not b!7917331) (not d!2362081) (not b!7917101) (not b!7917388) (not bm!734655) (not b!7917266) (not b!7917100) (not d!2362097) (not d!2362047) (not b!7917384) (not d!2361997) (not bm!734652) (not b!7917142) (not b!7917069) (not b!7917303) (not b!7917287) (not d!2362085) (not bm!734650) (not b!7917278) (not b!7917191) (not b!7917323) (not b!7917406) (not d!2362083) (not bm!734674) (not b!7917086) (not d!2362157) (not b!7917134) (not bm!734651) (not b!7917137) (not b!7917444) (not b!7917188) (not b!7917273) (not d!2362143) (not b!7917430) (not d!2362087) (not d!2362145) (not bm!734665) (not d!2362131) (not b!7917426) (not b!7917144) (not d!2362151) (not d!2362191) (not b!7917120) (not b!7917242) (not d!2362159) (not b!7917237) (not b!7917055) (not b!7917396) (not b!7917286) (not b!7917309) (not b!7917271) (not b!7917292) (not b!7917192) (not b!7917447) (not b!7917090) (not d!2362135) (not b!7917058) (not b!7917171) (not b!7917251) (not b!7917238) (not b!7917436) (not b!7917129) (not b!7917423) (not d!2362077) (not b!7917109) (not b!7917187) (not b!7917217) (not b!7917146) (not b!7917104) (not bm!734653) (not b!7917397) (not d!2362091) (not b!7917219) (not b!7917364) (not b!7917105) (not d!2362025) (not b!7917395) (not b!7917332) (not b!7917148) (not b!7917216) (not b!7917080) (not b!7917372) (not b!7917427) (not bm!734672) (not b!7917212) (not b!7917381) (not b!7917168) (not b!7917215) (not b!7917145) (not b!7917149) (not b!7917261) (not b!7917098) (not b!7917147) (not b!7917421) (not b!7917275) (not b!7917128) (not b!7917196) (not b!7917151) (not b!7917083) (not b!7917195) (not b!7917164) (not b!7917316) (not b!7917377) (not b!7917352) (not d!2362019) (not d!2362093) (not b!7917342) (not b!7917417) (not b!7917211) (not b!7917446) (not b!7917312) (not b!7917445) (not b!7917438) (not bm!734662) (not b!7917349) (not b!7917263) (not b!7917355) (not b!7917347) (not bm!734654) (not b!7917442) (not b!7917114) (not b!7917159) (not d!2362137) (not b!7917127) (not b!7917365) (not d!2362105) (not b!7917218) (not b!7917382) (not d!2362055) (not b!7917269) (not bm!734666) (not d!2362045) (not b!7917298) (not b!7917324) (not b!7917434) (not b!7917418) (not b!7917320) (not d!2362013) (not b!7917155) (not b!7917214) (not b!7917391) (not b!7917116) (not b!7917346) (not bm!734670) (not b!7917143) (not b!7917118) (not b!7917443) (not d!2362155) (not d!2362169) (not d!2362063) (not b!7917209) (not b!7917239) (not d!2362153) (not b!7917260) (not b!7917440) (not d!2362107) (not d!2362211) (not bm!734668) (not b!7917439) (not b!7917351) (not d!2362147) (not b!7917085) (not b!7917202) (not b!7917386) (not d!2362023) (not b!7917125) (not b!7917081) (not b!7917169))
(check-sat)
