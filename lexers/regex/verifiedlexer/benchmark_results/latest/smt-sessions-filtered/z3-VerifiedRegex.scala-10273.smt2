; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534458 () Bool)

(assert start!534458)

(declare-fun tp!1412525 () Bool)

(declare-fun e!3154862 () Bool)

(declare-datatypes ((T!104936 0))(
  ( (T!104937 (val!23622 Int)) )
))
(declare-datatypes ((List!58532 0))(
  ( (Nil!58408) (Cons!58408 (h!64856 T!104936) (t!371175 List!58532)) )
))
(declare-datatypes ((IArray!31137 0))(
  ( (IArray!31138 (innerList!15626 List!58532)) )
))
(declare-datatypes ((Conc!15538 0))(
  ( (Node!15538 (left!42777 Conc!15538) (right!43107 Conc!15538) (csize!31306 Int) (cheight!15749 Int)) (Leaf!25812 (xs!18868 IArray!31137) (csize!31307 Int)) (Empty!15538) )
))
(declare-fun ys!41 () Conc!15538)

(declare-fun tp!1412524 () Bool)

(declare-fun b!5053508 () Bool)

(declare-fun inv!77412 (Conc!15538) Bool)

(assert (=> b!5053508 (= e!3154862 (and (inv!77412 (left!42777 ys!41)) tp!1412524 (inv!77412 (right!43107 ys!41)) tp!1412525))))

(declare-fun e!3154859 () Bool)

(declare-fun b!5053510 () Bool)

(declare-fun tp!1412527 () Bool)

(declare-fun xs!286 () Conc!15538)

(declare-fun tp!1412529 () Bool)

(assert (=> b!5053510 (= e!3154859 (and (inv!77412 (left!42777 xs!286)) tp!1412527 (inv!77412 (right!43107 xs!286)) tp!1412529))))

(declare-fun b!5053511 () Bool)

(declare-fun res!2151755 () Bool)

(declare-fun e!3154857 () Bool)

(assert (=> b!5053511 (=> (not res!2151755) (not e!3154857))))

(assert (=> b!5053511 (= res!2151755 (and (not (= xs!286 Empty!15538)) (not (= ys!41 Empty!15538))))))

(declare-fun b!5053512 () Bool)

(declare-fun res!2151752 () Bool)

(declare-fun e!3154861 () Bool)

(assert (=> b!5053512 (=> (not res!2151752) (not e!3154861))))

(get-info :version)

(assert (=> b!5053512 (= res!2151752 ((_ is Node!15538) (right!43107 xs!286)))))

(declare-fun b!5053513 () Bool)

(declare-fun e!3154860 () Bool)

(declare-fun tp!1412528 () Bool)

(assert (=> b!5053513 (= e!3154860 tp!1412528)))

(declare-fun b!5053514 () Bool)

(declare-fun inv!77413 (IArray!31137) Bool)

(assert (=> b!5053514 (= e!3154859 (and (inv!77413 (xs!18868 xs!286)) e!3154860))))

(declare-fun b!5053515 () Bool)

(declare-fun res!2151751 () Bool)

(assert (=> b!5053515 (=> (not res!2151751) (not e!3154857))))

(declare-fun isBalanced!4400 (Conc!15538) Bool)

(assert (=> b!5053515 (= res!2151751 (isBalanced!4400 ys!41))))

(declare-fun b!5053509 () Bool)

(declare-fun e!3154858 () Bool)

(assert (=> b!5053509 (= e!3154862 (and (inv!77413 (xs!18868 ys!41)) e!3154858))))

(declare-fun res!2151754 () Bool)

(assert (=> start!534458 (=> (not res!2151754) (not e!3154857))))

(assert (=> start!534458 (= res!2151754 (isBalanced!4400 xs!286))))

(assert (=> start!534458 e!3154857))

(assert (=> start!534458 (and (inv!77412 xs!286) e!3154859)))

(assert (=> start!534458 (and (inv!77412 ys!41) e!3154862)))

(declare-fun b!5053516 () Bool)

(assert (=> b!5053516 (= e!3154857 e!3154861)))

(declare-fun res!2151750 () Bool)

(assert (=> b!5053516 (=> (not res!2151750) (not e!3154861))))

(declare-fun lt!2087255 () Int)

(assert (=> b!5053516 (= res!2151750 (and (or (> (- 1) lt!2087255) (> lt!2087255 1)) (< lt!2087255 (- 1)) ((_ is Node!15538) xs!286)))))

(declare-fun height!2115 (Conc!15538) Int)

(assert (=> b!5053516 (= lt!2087255 (- (height!2115 ys!41) (height!2115 xs!286)))))

(declare-fun b!5053517 () Bool)

(declare-fun tp!1412526 () Bool)

(assert (=> b!5053517 (= e!3154858 tp!1412526)))

(declare-fun b!5053518 () Bool)

(declare-fun res!2151753 () Bool)

(assert (=> b!5053518 (=> (not res!2151753) (not e!3154861))))

(assert (=> b!5053518 (= res!2151753 (< (height!2115 (left!42777 xs!286)) (height!2115 (right!43107 xs!286))))))

(declare-fun b!5053519 () Bool)

(assert (=> b!5053519 (= e!3154861 (not (isBalanced!4400 (right!43107 (right!43107 xs!286)))))))

(assert (= (and start!534458 res!2151754) b!5053515))

(assert (= (and b!5053515 res!2151751) b!5053511))

(assert (= (and b!5053511 res!2151755) b!5053516))

(assert (= (and b!5053516 res!2151750) b!5053518))

(assert (= (and b!5053518 res!2151753) b!5053512))

(assert (= (and b!5053512 res!2151752) b!5053519))

(assert (= (and start!534458 ((_ is Node!15538) xs!286)) b!5053510))

(assert (= b!5053514 b!5053513))

(assert (= (and start!534458 ((_ is Leaf!25812) xs!286)) b!5053514))

(assert (= (and start!534458 ((_ is Node!15538) ys!41)) b!5053508))

(assert (= b!5053509 b!5053517))

(assert (= (and start!534458 ((_ is Leaf!25812) ys!41)) b!5053509))

(declare-fun m!6087536 () Bool)

(assert (=> b!5053510 m!6087536))

(declare-fun m!6087538 () Bool)

(assert (=> b!5053510 m!6087538))

(declare-fun m!6087540 () Bool)

(assert (=> b!5053516 m!6087540))

(declare-fun m!6087542 () Bool)

(assert (=> b!5053516 m!6087542))

(declare-fun m!6087544 () Bool)

(assert (=> b!5053514 m!6087544))

(declare-fun m!6087546 () Bool)

(assert (=> b!5053519 m!6087546))

(declare-fun m!6087548 () Bool)

(assert (=> b!5053515 m!6087548))

(declare-fun m!6087550 () Bool)

(assert (=> start!534458 m!6087550))

(declare-fun m!6087552 () Bool)

(assert (=> start!534458 m!6087552))

(declare-fun m!6087554 () Bool)

(assert (=> start!534458 m!6087554))

(declare-fun m!6087556 () Bool)

(assert (=> b!5053518 m!6087556))

(declare-fun m!6087558 () Bool)

(assert (=> b!5053518 m!6087558))

(declare-fun m!6087560 () Bool)

(assert (=> b!5053509 m!6087560))

(declare-fun m!6087562 () Bool)

(assert (=> b!5053508 m!6087562))

(declare-fun m!6087564 () Bool)

(assert (=> b!5053508 m!6087564))

(check-sat (not b!5053508) (not b!5053509) (not b!5053519) (not start!534458) (not b!5053514) (not b!5053515) (not b!5053513) (not b!5053517) (not b!5053516) (not b!5053510) (not b!5053518))
(check-sat)
(get-model)

(declare-fun b!5053545 () Bool)

(declare-fun res!2151784 () Bool)

(declare-fun e!3154872 () Bool)

(assert (=> b!5053545 (=> (not res!2151784) (not e!3154872))))

(assert (=> b!5053545 (= res!2151784 (isBalanced!4400 (left!42777 ys!41)))))

(declare-fun b!5053546 () Bool)

(declare-fun res!2151780 () Bool)

(assert (=> b!5053546 (=> (not res!2151780) (not e!3154872))))

(assert (=> b!5053546 (= res!2151780 (isBalanced!4400 (right!43107 ys!41)))))

(declare-fun b!5053547 () Bool)

(declare-fun isEmpty!31586 (Conc!15538) Bool)

(assert (=> b!5053547 (= e!3154872 (not (isEmpty!31586 (right!43107 ys!41))))))

(declare-fun b!5053548 () Bool)

(declare-fun e!3154871 () Bool)

(assert (=> b!5053548 (= e!3154871 e!3154872)))

(declare-fun res!2151785 () Bool)

(assert (=> b!5053548 (=> (not res!2151785) (not e!3154872))))

(assert (=> b!5053548 (= res!2151785 (<= (- 1) (- (height!2115 (left!42777 ys!41)) (height!2115 (right!43107 ys!41)))))))

(declare-fun b!5053549 () Bool)

(declare-fun res!2151781 () Bool)

(assert (=> b!5053549 (=> (not res!2151781) (not e!3154872))))

(assert (=> b!5053549 (= res!2151781 (not (isEmpty!31586 (left!42777 ys!41))))))

(declare-fun b!5053544 () Bool)

(declare-fun res!2151782 () Bool)

(assert (=> b!5053544 (=> (not res!2151782) (not e!3154872))))

(assert (=> b!5053544 (= res!2151782 (<= (- (height!2115 (left!42777 ys!41)) (height!2115 (right!43107 ys!41))) 1))))

(declare-fun d!1626126 () Bool)

(declare-fun res!2151783 () Bool)

(assert (=> d!1626126 (=> res!2151783 e!3154871)))

(assert (=> d!1626126 (= res!2151783 (not ((_ is Node!15538) ys!41)))))

(assert (=> d!1626126 (= (isBalanced!4400 ys!41) e!3154871)))

(assert (= (and d!1626126 (not res!2151783)) b!5053548))

(assert (= (and b!5053548 res!2151785) b!5053544))

(assert (= (and b!5053544 res!2151782) b!5053545))

(assert (= (and b!5053545 res!2151784) b!5053546))

(assert (= (and b!5053546 res!2151780) b!5053549))

(assert (= (and b!5053549 res!2151781) b!5053547))

(declare-fun m!6087566 () Bool)

(assert (=> b!5053548 m!6087566))

(declare-fun m!6087568 () Bool)

(assert (=> b!5053548 m!6087568))

(declare-fun m!6087570 () Bool)

(assert (=> b!5053545 m!6087570))

(assert (=> b!5053544 m!6087566))

(assert (=> b!5053544 m!6087568))

(declare-fun m!6087572 () Bool)

(assert (=> b!5053546 m!6087572))

(declare-fun m!6087574 () Bool)

(assert (=> b!5053547 m!6087574))

(declare-fun m!6087576 () Bool)

(assert (=> b!5053549 m!6087576))

(assert (=> b!5053515 d!1626126))

(declare-fun d!1626130 () Bool)

(declare-fun c!867146 () Bool)

(assert (=> d!1626130 (= c!867146 ((_ is Node!15538) (left!42777 xs!286)))))

(declare-fun e!3154879 () Bool)

(assert (=> d!1626130 (= (inv!77412 (left!42777 xs!286)) e!3154879)))

(declare-fun b!5053562 () Bool)

(declare-fun inv!77414 (Conc!15538) Bool)

(assert (=> b!5053562 (= e!3154879 (inv!77414 (left!42777 xs!286)))))

(declare-fun b!5053563 () Bool)

(declare-fun e!3154880 () Bool)

(assert (=> b!5053563 (= e!3154879 e!3154880)))

(declare-fun res!2151794 () Bool)

(assert (=> b!5053563 (= res!2151794 (not ((_ is Leaf!25812) (left!42777 xs!286))))))

(assert (=> b!5053563 (=> res!2151794 e!3154880)))

(declare-fun b!5053564 () Bool)

(declare-fun inv!77415 (Conc!15538) Bool)

(assert (=> b!5053564 (= e!3154880 (inv!77415 (left!42777 xs!286)))))

(assert (= (and d!1626130 c!867146) b!5053562))

(assert (= (and d!1626130 (not c!867146)) b!5053563))

(assert (= (and b!5053563 (not res!2151794)) b!5053564))

(declare-fun m!6087590 () Bool)

(assert (=> b!5053562 m!6087590))

(declare-fun m!6087592 () Bool)

(assert (=> b!5053564 m!6087592))

(assert (=> b!5053510 d!1626130))

(declare-fun d!1626134 () Bool)

(declare-fun c!867147 () Bool)

(assert (=> d!1626134 (= c!867147 ((_ is Node!15538) (right!43107 xs!286)))))

(declare-fun e!3154881 () Bool)

(assert (=> d!1626134 (= (inv!77412 (right!43107 xs!286)) e!3154881)))

(declare-fun b!5053565 () Bool)

(assert (=> b!5053565 (= e!3154881 (inv!77414 (right!43107 xs!286)))))

(declare-fun b!5053566 () Bool)

(declare-fun e!3154882 () Bool)

(assert (=> b!5053566 (= e!3154881 e!3154882)))

(declare-fun res!2151795 () Bool)

(assert (=> b!5053566 (= res!2151795 (not ((_ is Leaf!25812) (right!43107 xs!286))))))

(assert (=> b!5053566 (=> res!2151795 e!3154882)))

(declare-fun b!5053567 () Bool)

(assert (=> b!5053567 (= e!3154882 (inv!77415 (right!43107 xs!286)))))

(assert (= (and d!1626134 c!867147) b!5053565))

(assert (= (and d!1626134 (not c!867147)) b!5053566))

(assert (= (and b!5053566 (not res!2151795)) b!5053567))

(declare-fun m!6087594 () Bool)

(assert (=> b!5053565 m!6087594))

(declare-fun m!6087596 () Bool)

(assert (=> b!5053567 m!6087596))

(assert (=> b!5053510 d!1626134))

(declare-fun d!1626136 () Bool)

(declare-fun c!867150 () Bool)

(assert (=> d!1626136 (= c!867150 ((_ is Node!15538) (left!42777 ys!41)))))

(declare-fun e!3154887 () Bool)

(assert (=> d!1626136 (= (inv!77412 (left!42777 ys!41)) e!3154887)))

(declare-fun b!5053574 () Bool)

(assert (=> b!5053574 (= e!3154887 (inv!77414 (left!42777 ys!41)))))

(declare-fun b!5053575 () Bool)

(declare-fun e!3154888 () Bool)

(assert (=> b!5053575 (= e!3154887 e!3154888)))

(declare-fun res!2151798 () Bool)

(assert (=> b!5053575 (= res!2151798 (not ((_ is Leaf!25812) (left!42777 ys!41))))))

(assert (=> b!5053575 (=> res!2151798 e!3154888)))

(declare-fun b!5053576 () Bool)

(assert (=> b!5053576 (= e!3154888 (inv!77415 (left!42777 ys!41)))))

(assert (= (and d!1626136 c!867150) b!5053574))

(assert (= (and d!1626136 (not c!867150)) b!5053575))

(assert (= (and b!5053575 (not res!2151798)) b!5053576))

(declare-fun m!6087598 () Bool)

(assert (=> b!5053574 m!6087598))

(declare-fun m!6087600 () Bool)

(assert (=> b!5053576 m!6087600))

(assert (=> b!5053508 d!1626136))

(declare-fun d!1626138 () Bool)

(declare-fun c!867151 () Bool)

(assert (=> d!1626138 (= c!867151 ((_ is Node!15538) (right!43107 ys!41)))))

(declare-fun e!3154889 () Bool)

(assert (=> d!1626138 (= (inv!77412 (right!43107 ys!41)) e!3154889)))

(declare-fun b!5053577 () Bool)

(assert (=> b!5053577 (= e!3154889 (inv!77414 (right!43107 ys!41)))))

(declare-fun b!5053578 () Bool)

(declare-fun e!3154890 () Bool)

(assert (=> b!5053578 (= e!3154889 e!3154890)))

(declare-fun res!2151799 () Bool)

(assert (=> b!5053578 (= res!2151799 (not ((_ is Leaf!25812) (right!43107 ys!41))))))

(assert (=> b!5053578 (=> res!2151799 e!3154890)))

(declare-fun b!5053579 () Bool)

(assert (=> b!5053579 (= e!3154890 (inv!77415 (right!43107 ys!41)))))

(assert (= (and d!1626138 c!867151) b!5053577))

(assert (= (and d!1626138 (not c!867151)) b!5053578))

(assert (= (and b!5053578 (not res!2151799)) b!5053579))

(declare-fun m!6087602 () Bool)

(assert (=> b!5053577 m!6087602))

(declare-fun m!6087604 () Bool)

(assert (=> b!5053579 m!6087604))

(assert (=> b!5053508 d!1626138))

(declare-fun b!5053581 () Bool)

(declare-fun res!2151804 () Bool)

(declare-fun e!3154892 () Bool)

(assert (=> b!5053581 (=> (not res!2151804) (not e!3154892))))

(assert (=> b!5053581 (= res!2151804 (isBalanced!4400 (left!42777 (right!43107 (right!43107 xs!286)))))))

(declare-fun b!5053582 () Bool)

(declare-fun res!2151800 () Bool)

(assert (=> b!5053582 (=> (not res!2151800) (not e!3154892))))

(assert (=> b!5053582 (= res!2151800 (isBalanced!4400 (right!43107 (right!43107 (right!43107 xs!286)))))))

(declare-fun b!5053583 () Bool)

(assert (=> b!5053583 (= e!3154892 (not (isEmpty!31586 (right!43107 (right!43107 (right!43107 xs!286))))))))

(declare-fun b!5053584 () Bool)

(declare-fun e!3154891 () Bool)

(assert (=> b!5053584 (= e!3154891 e!3154892)))

(declare-fun res!2151805 () Bool)

(assert (=> b!5053584 (=> (not res!2151805) (not e!3154892))))

(assert (=> b!5053584 (= res!2151805 (<= (- 1) (- (height!2115 (left!42777 (right!43107 (right!43107 xs!286)))) (height!2115 (right!43107 (right!43107 (right!43107 xs!286)))))))))

(declare-fun b!5053585 () Bool)

(declare-fun res!2151801 () Bool)

(assert (=> b!5053585 (=> (not res!2151801) (not e!3154892))))

(assert (=> b!5053585 (= res!2151801 (not (isEmpty!31586 (left!42777 (right!43107 (right!43107 xs!286))))))))

(declare-fun b!5053580 () Bool)

(declare-fun res!2151802 () Bool)

(assert (=> b!5053580 (=> (not res!2151802) (not e!3154892))))

(assert (=> b!5053580 (= res!2151802 (<= (- (height!2115 (left!42777 (right!43107 (right!43107 xs!286)))) (height!2115 (right!43107 (right!43107 (right!43107 xs!286))))) 1))))

(declare-fun d!1626140 () Bool)

(declare-fun res!2151803 () Bool)

(assert (=> d!1626140 (=> res!2151803 e!3154891)))

(assert (=> d!1626140 (= res!2151803 (not ((_ is Node!15538) (right!43107 (right!43107 xs!286)))))))

(assert (=> d!1626140 (= (isBalanced!4400 (right!43107 (right!43107 xs!286))) e!3154891)))

(assert (= (and d!1626140 (not res!2151803)) b!5053584))

(assert (= (and b!5053584 res!2151805) b!5053580))

(assert (= (and b!5053580 res!2151802) b!5053581))

(assert (= (and b!5053581 res!2151804) b!5053582))

(assert (= (and b!5053582 res!2151800) b!5053585))

(assert (= (and b!5053585 res!2151801) b!5053583))

(declare-fun m!6087606 () Bool)

(assert (=> b!5053584 m!6087606))

(declare-fun m!6087608 () Bool)

(assert (=> b!5053584 m!6087608))

(declare-fun m!6087610 () Bool)

(assert (=> b!5053581 m!6087610))

(assert (=> b!5053580 m!6087606))

(assert (=> b!5053580 m!6087608))

(declare-fun m!6087612 () Bool)

(assert (=> b!5053582 m!6087612))

(declare-fun m!6087614 () Bool)

(assert (=> b!5053583 m!6087614))

(declare-fun m!6087616 () Bool)

(assert (=> b!5053585 m!6087616))

(assert (=> b!5053519 d!1626140))

(declare-fun d!1626142 () Bool)

(declare-fun size!39030 (List!58532) Int)

(assert (=> d!1626142 (= (inv!77413 (xs!18868 xs!286)) (<= (size!39030 (innerList!15626 (xs!18868 xs!286))) 2147483647))))

(declare-fun bs!1189290 () Bool)

(assert (= bs!1189290 d!1626142))

(declare-fun m!6087626 () Bool)

(assert (=> bs!1189290 m!6087626))

(assert (=> b!5053514 d!1626142))

(declare-fun d!1626148 () Bool)

(assert (=> d!1626148 (= (inv!77413 (xs!18868 ys!41)) (<= (size!39030 (innerList!15626 (xs!18868 ys!41))) 2147483647))))

(declare-fun bs!1189291 () Bool)

(assert (= bs!1189291 d!1626148))

(declare-fun m!6087628 () Bool)

(assert (=> bs!1189291 m!6087628))

(assert (=> b!5053509 d!1626148))

(declare-fun d!1626152 () Bool)

(assert (=> d!1626152 (= (height!2115 (left!42777 xs!286)) (ite ((_ is Empty!15538) (left!42777 xs!286)) 0 (ite ((_ is Leaf!25812) (left!42777 xs!286)) 1 (cheight!15749 (left!42777 xs!286)))))))

(assert (=> b!5053518 d!1626152))

(declare-fun d!1626160 () Bool)

(assert (=> d!1626160 (= (height!2115 (right!43107 xs!286)) (ite ((_ is Empty!15538) (right!43107 xs!286)) 0 (ite ((_ is Leaf!25812) (right!43107 xs!286)) 1 (cheight!15749 (right!43107 xs!286)))))))

(assert (=> b!5053518 d!1626160))

(declare-fun d!1626162 () Bool)

(assert (=> d!1626162 (= (height!2115 ys!41) (ite ((_ is Empty!15538) ys!41) 0 (ite ((_ is Leaf!25812) ys!41) 1 (cheight!15749 ys!41))))))

(assert (=> b!5053516 d!1626162))

(declare-fun d!1626164 () Bool)

(assert (=> d!1626164 (= (height!2115 xs!286) (ite ((_ is Empty!15538) xs!286) 0 (ite ((_ is Leaf!25812) xs!286) 1 (cheight!15749 xs!286))))))

(assert (=> b!5053516 d!1626164))

(declare-fun b!5053599 () Bool)

(declare-fun res!2151814 () Bool)

(declare-fun e!3154902 () Bool)

(assert (=> b!5053599 (=> (not res!2151814) (not e!3154902))))

(assert (=> b!5053599 (= res!2151814 (isBalanced!4400 (left!42777 xs!286)))))

(declare-fun b!5053600 () Bool)

(declare-fun res!2151810 () Bool)

(assert (=> b!5053600 (=> (not res!2151810) (not e!3154902))))

(assert (=> b!5053600 (= res!2151810 (isBalanced!4400 (right!43107 xs!286)))))

(declare-fun b!5053601 () Bool)

(assert (=> b!5053601 (= e!3154902 (not (isEmpty!31586 (right!43107 xs!286))))))

(declare-fun b!5053602 () Bool)

(declare-fun e!3154901 () Bool)

(assert (=> b!5053602 (= e!3154901 e!3154902)))

(declare-fun res!2151815 () Bool)

(assert (=> b!5053602 (=> (not res!2151815) (not e!3154902))))

(assert (=> b!5053602 (= res!2151815 (<= (- 1) (- (height!2115 (left!42777 xs!286)) (height!2115 (right!43107 xs!286)))))))

(declare-fun b!5053603 () Bool)

(declare-fun res!2151811 () Bool)

(assert (=> b!5053603 (=> (not res!2151811) (not e!3154902))))

(assert (=> b!5053603 (= res!2151811 (not (isEmpty!31586 (left!42777 xs!286))))))

(declare-fun b!5053598 () Bool)

(declare-fun res!2151812 () Bool)

(assert (=> b!5053598 (=> (not res!2151812) (not e!3154902))))

(assert (=> b!5053598 (= res!2151812 (<= (- (height!2115 (left!42777 xs!286)) (height!2115 (right!43107 xs!286))) 1))))

(declare-fun d!1626166 () Bool)

(declare-fun res!2151813 () Bool)

(assert (=> d!1626166 (=> res!2151813 e!3154901)))

(assert (=> d!1626166 (= res!2151813 (not ((_ is Node!15538) xs!286)))))

(assert (=> d!1626166 (= (isBalanced!4400 xs!286) e!3154901)))

(assert (= (and d!1626166 (not res!2151813)) b!5053602))

(assert (= (and b!5053602 res!2151815) b!5053598))

(assert (= (and b!5053598 res!2151812) b!5053599))

(assert (= (and b!5053599 res!2151814) b!5053600))

(assert (= (and b!5053600 res!2151810) b!5053603))

(assert (= (and b!5053603 res!2151811) b!5053601))

(assert (=> b!5053602 m!6087556))

(assert (=> b!5053602 m!6087558))

(declare-fun m!6087638 () Bool)

(assert (=> b!5053599 m!6087638))

(assert (=> b!5053598 m!6087556))

(assert (=> b!5053598 m!6087558))

(declare-fun m!6087640 () Bool)

(assert (=> b!5053600 m!6087640))

(declare-fun m!6087642 () Bool)

(assert (=> b!5053601 m!6087642))

(declare-fun m!6087644 () Bool)

(assert (=> b!5053603 m!6087644))

(assert (=> start!534458 d!1626166))

(declare-fun d!1626168 () Bool)

(declare-fun c!867156 () Bool)

(assert (=> d!1626168 (= c!867156 ((_ is Node!15538) xs!286))))

(declare-fun e!3154903 () Bool)

(assert (=> d!1626168 (= (inv!77412 xs!286) e!3154903)))

(declare-fun b!5053604 () Bool)

(assert (=> b!5053604 (= e!3154903 (inv!77414 xs!286))))

(declare-fun b!5053605 () Bool)

(declare-fun e!3154904 () Bool)

(assert (=> b!5053605 (= e!3154903 e!3154904)))

(declare-fun res!2151816 () Bool)

(assert (=> b!5053605 (= res!2151816 (not ((_ is Leaf!25812) xs!286)))))

(assert (=> b!5053605 (=> res!2151816 e!3154904)))

(declare-fun b!5053606 () Bool)

(assert (=> b!5053606 (= e!3154904 (inv!77415 xs!286))))

(assert (= (and d!1626168 c!867156) b!5053604))

(assert (= (and d!1626168 (not c!867156)) b!5053605))

(assert (= (and b!5053605 (not res!2151816)) b!5053606))

(declare-fun m!6087646 () Bool)

(assert (=> b!5053604 m!6087646))

(declare-fun m!6087648 () Bool)

(assert (=> b!5053606 m!6087648))

(assert (=> start!534458 d!1626168))

(declare-fun d!1626170 () Bool)

(declare-fun c!867157 () Bool)

(assert (=> d!1626170 (= c!867157 ((_ is Node!15538) ys!41))))

(declare-fun e!3154905 () Bool)

(assert (=> d!1626170 (= (inv!77412 ys!41) e!3154905)))

(declare-fun b!5053607 () Bool)

(assert (=> b!5053607 (= e!3154905 (inv!77414 ys!41))))

(declare-fun b!5053608 () Bool)

(declare-fun e!3154906 () Bool)

(assert (=> b!5053608 (= e!3154905 e!3154906)))

(declare-fun res!2151817 () Bool)

(assert (=> b!5053608 (= res!2151817 (not ((_ is Leaf!25812) ys!41)))))

(assert (=> b!5053608 (=> res!2151817 e!3154906)))

(declare-fun b!5053609 () Bool)

(assert (=> b!5053609 (= e!3154906 (inv!77415 ys!41))))

(assert (= (and d!1626170 c!867157) b!5053607))

(assert (= (and d!1626170 (not c!867157)) b!5053608))

(assert (= (and b!5053608 (not res!2151817)) b!5053609))

(declare-fun m!6087650 () Bool)

(assert (=> b!5053607 m!6087650))

(declare-fun m!6087652 () Bool)

(assert (=> b!5053609 m!6087652))

(assert (=> start!534458 d!1626170))

(declare-fun tp!1412536 () Bool)

(declare-fun tp!1412537 () Bool)

(declare-fun b!5053627 () Bool)

(declare-fun e!3154915 () Bool)

(assert (=> b!5053627 (= e!3154915 (and (inv!77412 (left!42777 (left!42777 xs!286))) tp!1412536 (inv!77412 (right!43107 (left!42777 xs!286))) tp!1412537))))

(declare-fun b!5053629 () Bool)

(declare-fun e!3154916 () Bool)

(declare-fun tp!1412538 () Bool)

(assert (=> b!5053629 (= e!3154916 tp!1412538)))

(declare-fun b!5053628 () Bool)

(assert (=> b!5053628 (= e!3154915 (and (inv!77413 (xs!18868 (left!42777 xs!286))) e!3154916))))

(assert (=> b!5053510 (= tp!1412527 (and (inv!77412 (left!42777 xs!286)) e!3154915))))

(assert (= (and b!5053510 ((_ is Node!15538) (left!42777 xs!286))) b!5053627))

(assert (= b!5053628 b!5053629))

(assert (= (and b!5053510 ((_ is Leaf!25812) (left!42777 xs!286))) b!5053628))

(declare-fun m!6087670 () Bool)

(assert (=> b!5053627 m!6087670))

(declare-fun m!6087672 () Bool)

(assert (=> b!5053627 m!6087672))

(declare-fun m!6087674 () Bool)

(assert (=> b!5053628 m!6087674))

(assert (=> b!5053510 m!6087536))

(declare-fun tp!1412540 () Bool)

(declare-fun e!3154919 () Bool)

(declare-fun b!5053633 () Bool)

(declare-fun tp!1412539 () Bool)

(assert (=> b!5053633 (= e!3154919 (and (inv!77412 (left!42777 (right!43107 xs!286))) tp!1412539 (inv!77412 (right!43107 (right!43107 xs!286))) tp!1412540))))

(declare-fun b!5053635 () Bool)

(declare-fun e!3154920 () Bool)

(declare-fun tp!1412541 () Bool)

(assert (=> b!5053635 (= e!3154920 tp!1412541)))

(declare-fun b!5053634 () Bool)

(assert (=> b!5053634 (= e!3154919 (and (inv!77413 (xs!18868 (right!43107 xs!286))) e!3154920))))

(assert (=> b!5053510 (= tp!1412529 (and (inv!77412 (right!43107 xs!286)) e!3154919))))

(assert (= (and b!5053510 ((_ is Node!15538) (right!43107 xs!286))) b!5053633))

(assert (= b!5053634 b!5053635))

(assert (= (and b!5053510 ((_ is Leaf!25812) (right!43107 xs!286))) b!5053634))

(declare-fun m!6087678 () Bool)

(assert (=> b!5053633 m!6087678))

(declare-fun m!6087682 () Bool)

(assert (=> b!5053633 m!6087682))

(declare-fun m!6087684 () Bool)

(assert (=> b!5053634 m!6087684))

(assert (=> b!5053510 m!6087538))

(declare-fun tp!1412543 () Bool)

(declare-fun b!5053636 () Bool)

(declare-fun tp!1412542 () Bool)

(declare-fun e!3154922 () Bool)

(assert (=> b!5053636 (= e!3154922 (and (inv!77412 (left!42777 (left!42777 ys!41))) tp!1412542 (inv!77412 (right!43107 (left!42777 ys!41))) tp!1412543))))

(declare-fun b!5053638 () Bool)

(declare-fun e!3154923 () Bool)

(declare-fun tp!1412544 () Bool)

(assert (=> b!5053638 (= e!3154923 tp!1412544)))

(declare-fun b!5053637 () Bool)

(assert (=> b!5053637 (= e!3154922 (and (inv!77413 (xs!18868 (left!42777 ys!41))) e!3154923))))

(assert (=> b!5053508 (= tp!1412524 (and (inv!77412 (left!42777 ys!41)) e!3154922))))

(assert (= (and b!5053508 ((_ is Node!15538) (left!42777 ys!41))) b!5053636))

(assert (= b!5053637 b!5053638))

(assert (= (and b!5053508 ((_ is Leaf!25812) (left!42777 ys!41))) b!5053637))

(declare-fun m!6087686 () Bool)

(assert (=> b!5053636 m!6087686))

(declare-fun m!6087688 () Bool)

(assert (=> b!5053636 m!6087688))

(declare-fun m!6087690 () Bool)

(assert (=> b!5053637 m!6087690))

(assert (=> b!5053508 m!6087562))

(declare-fun b!5053645 () Bool)

(declare-fun e!3154925 () Bool)

(declare-fun tp!1412546 () Bool)

(declare-fun tp!1412545 () Bool)

(assert (=> b!5053645 (= e!3154925 (and (inv!77412 (left!42777 (right!43107 ys!41))) tp!1412545 (inv!77412 (right!43107 (right!43107 ys!41))) tp!1412546))))

(declare-fun b!5053647 () Bool)

(declare-fun e!3154926 () Bool)

(declare-fun tp!1412547 () Bool)

(assert (=> b!5053647 (= e!3154926 tp!1412547)))

(declare-fun b!5053646 () Bool)

(assert (=> b!5053646 (= e!3154925 (and (inv!77413 (xs!18868 (right!43107 ys!41))) e!3154926))))

(assert (=> b!5053508 (= tp!1412525 (and (inv!77412 (right!43107 ys!41)) e!3154925))))

(assert (= (and b!5053508 ((_ is Node!15538) (right!43107 ys!41))) b!5053645))

(assert (= b!5053646 b!5053647))

(assert (= (and b!5053508 ((_ is Leaf!25812) (right!43107 ys!41))) b!5053646))

(declare-fun m!6087692 () Bool)

(assert (=> b!5053645 m!6087692))

(declare-fun m!6087694 () Bool)

(assert (=> b!5053645 m!6087694))

(declare-fun m!6087696 () Bool)

(assert (=> b!5053646 m!6087696))

(assert (=> b!5053508 m!6087564))

(declare-fun b!5053652 () Bool)

(declare-fun e!3154929 () Bool)

(declare-fun tp_is_empty!36997 () Bool)

(declare-fun tp!1412550 () Bool)

(assert (=> b!5053652 (= e!3154929 (and tp_is_empty!36997 tp!1412550))))

(assert (=> b!5053513 (= tp!1412528 e!3154929)))

(assert (= (and b!5053513 ((_ is Cons!58408) (innerList!15626 (xs!18868 xs!286)))) b!5053652))

(declare-fun b!5053656 () Bool)

(declare-fun e!3154930 () Bool)

(declare-fun tp!1412551 () Bool)

(assert (=> b!5053656 (= e!3154930 (and tp_is_empty!36997 tp!1412551))))

(assert (=> b!5053517 (= tp!1412526 e!3154930)))

(assert (= (and b!5053517 ((_ is Cons!58408) (innerList!15626 (xs!18868 ys!41)))) b!5053656))

(check-sat (not b!5053607) (not b!5053580) (not b!5053582) (not b!5053565) (not b!5053601) (not b!5053633) (not b!5053510) (not b!5053603) (not b!5053508) (not b!5053636) (not b!5053577) (not b!5053629) (not b!5053564) (not b!5053574) (not b!5053583) (not b!5053628) (not b!5053606) (not b!5053656) (not b!5053634) tp_is_empty!36997 (not b!5053549) (not b!5053546) (not b!5053548) (not b!5053576) (not b!5053562) (not b!5053579) (not b!5053646) (not b!5053545) (not b!5053609) (not b!5053647) (not b!5053544) (not b!5053604) (not b!5053638) (not b!5053637) (not b!5053598) (not b!5053547) (not d!1626148) (not b!5053602) (not b!5053567) (not b!5053600) (not b!5053627) (not b!5053652) (not b!5053635) (not b!5053585) (not b!5053645) (not b!5053584) (not b!5053581) (not b!5053599) (not d!1626142))
(check-sat)
(get-model)

(declare-fun b!5053681 () Bool)

(declare-fun res!2151836 () Bool)

(declare-fun e!3154948 () Bool)

(assert (=> b!5053681 (=> (not res!2151836) (not e!3154948))))

(assert (=> b!5053681 (= res!2151836 (isBalanced!4400 (left!42777 (right!43107 xs!286))))))

(declare-fun b!5053682 () Bool)

(declare-fun res!2151832 () Bool)

(assert (=> b!5053682 (=> (not res!2151832) (not e!3154948))))

(assert (=> b!5053682 (= res!2151832 (isBalanced!4400 (right!43107 (right!43107 xs!286))))))

(declare-fun b!5053683 () Bool)

(assert (=> b!5053683 (= e!3154948 (not (isEmpty!31586 (right!43107 (right!43107 xs!286)))))))

(declare-fun b!5053684 () Bool)

(declare-fun e!3154947 () Bool)

(assert (=> b!5053684 (= e!3154947 e!3154948)))

(declare-fun res!2151837 () Bool)

(assert (=> b!5053684 (=> (not res!2151837) (not e!3154948))))

(assert (=> b!5053684 (= res!2151837 (<= (- 1) (- (height!2115 (left!42777 (right!43107 xs!286))) (height!2115 (right!43107 (right!43107 xs!286))))))))

(declare-fun b!5053685 () Bool)

(declare-fun res!2151833 () Bool)

(assert (=> b!5053685 (=> (not res!2151833) (not e!3154948))))

(assert (=> b!5053685 (= res!2151833 (not (isEmpty!31586 (left!42777 (right!43107 xs!286)))))))

(declare-fun b!5053680 () Bool)

(declare-fun res!2151834 () Bool)

(assert (=> b!5053680 (=> (not res!2151834) (not e!3154948))))

(assert (=> b!5053680 (= res!2151834 (<= (- (height!2115 (left!42777 (right!43107 xs!286))) (height!2115 (right!43107 (right!43107 xs!286)))) 1))))

(declare-fun d!1626186 () Bool)

(declare-fun res!2151835 () Bool)

(assert (=> d!1626186 (=> res!2151835 e!3154947)))

(assert (=> d!1626186 (= res!2151835 (not ((_ is Node!15538) (right!43107 xs!286))))))

(assert (=> d!1626186 (= (isBalanced!4400 (right!43107 xs!286)) e!3154947)))

(assert (= (and d!1626186 (not res!2151835)) b!5053684))

(assert (= (and b!5053684 res!2151837) b!5053680))

(assert (= (and b!5053680 res!2151834) b!5053681))

(assert (= (and b!5053681 res!2151836) b!5053682))

(assert (= (and b!5053682 res!2151832) b!5053685))

(assert (= (and b!5053685 res!2151833) b!5053683))

(declare-fun m!6087734 () Bool)

(assert (=> b!5053684 m!6087734))

(declare-fun m!6087736 () Bool)

(assert (=> b!5053684 m!6087736))

(declare-fun m!6087738 () Bool)

(assert (=> b!5053681 m!6087738))

(assert (=> b!5053680 m!6087734))

(assert (=> b!5053680 m!6087736))

(assert (=> b!5053682 m!6087546))

(declare-fun m!6087740 () Bool)

(assert (=> b!5053683 m!6087740))

(declare-fun m!6087742 () Bool)

(assert (=> b!5053685 m!6087742))

(assert (=> b!5053600 d!1626186))

(declare-fun d!1626188 () Bool)

(declare-fun res!2151842 () Bool)

(declare-fun e!3154951 () Bool)

(assert (=> d!1626188 (=> (not res!2151842) (not e!3154951))))

(declare-fun list!18952 (IArray!31137) List!58532)

(assert (=> d!1626188 (= res!2151842 (<= (size!39030 (list!18952 (xs!18868 (right!43107 ys!41)))) 512))))

(assert (=> d!1626188 (= (inv!77415 (right!43107 ys!41)) e!3154951)))

(declare-fun b!5053690 () Bool)

(declare-fun res!2151843 () Bool)

(assert (=> b!5053690 (=> (not res!2151843) (not e!3154951))))

(assert (=> b!5053690 (= res!2151843 (= (csize!31307 (right!43107 ys!41)) (size!39030 (list!18952 (xs!18868 (right!43107 ys!41))))))))

(declare-fun b!5053691 () Bool)

(assert (=> b!5053691 (= e!3154951 (and (> (csize!31307 (right!43107 ys!41)) 0) (<= (csize!31307 (right!43107 ys!41)) 512)))))

(assert (= (and d!1626188 res!2151842) b!5053690))

(assert (= (and b!5053690 res!2151843) b!5053691))

(declare-fun m!6087744 () Bool)

(assert (=> d!1626188 m!6087744))

(assert (=> d!1626188 m!6087744))

(declare-fun m!6087746 () Bool)

(assert (=> d!1626188 m!6087746))

(assert (=> b!5053690 m!6087744))

(assert (=> b!5053690 m!6087744))

(assert (=> b!5053690 m!6087746))

(assert (=> b!5053579 d!1626188))

(declare-fun d!1626190 () Bool)

(assert (=> d!1626190 (= (height!2115 (left!42777 ys!41)) (ite ((_ is Empty!15538) (left!42777 ys!41)) 0 (ite ((_ is Leaf!25812) (left!42777 ys!41)) 1 (cheight!15749 (left!42777 ys!41)))))))

(assert (=> b!5053544 d!1626190))

(declare-fun d!1626192 () Bool)

(assert (=> d!1626192 (= (height!2115 (right!43107 ys!41)) (ite ((_ is Empty!15538) (right!43107 ys!41)) 0 (ite ((_ is Leaf!25812) (right!43107 ys!41)) 1 (cheight!15749 (right!43107 ys!41)))))))

(assert (=> b!5053544 d!1626192))

(declare-fun d!1626194 () Bool)

(declare-fun lt!2087258 () Bool)

(declare-fun isEmpty!31588 (List!58532) Bool)

(declare-fun list!18953 (Conc!15538) List!58532)

(assert (=> d!1626194 (= lt!2087258 (isEmpty!31588 (list!18953 (right!43107 xs!286))))))

(declare-fun size!39032 (Conc!15538) Int)

(assert (=> d!1626194 (= lt!2087258 (= (size!39032 (right!43107 xs!286)) 0))))

(assert (=> d!1626194 (= (isEmpty!31586 (right!43107 xs!286)) lt!2087258)))

(declare-fun bs!1189294 () Bool)

(assert (= bs!1189294 d!1626194))

(declare-fun m!6087748 () Bool)

(assert (=> bs!1189294 m!6087748))

(assert (=> bs!1189294 m!6087748))

(declare-fun m!6087750 () Bool)

(assert (=> bs!1189294 m!6087750))

(declare-fun m!6087752 () Bool)

(assert (=> bs!1189294 m!6087752))

(assert (=> b!5053601 d!1626194))

(declare-fun d!1626196 () Bool)

(declare-fun lt!2087259 () Bool)

(assert (=> d!1626196 (= lt!2087259 (isEmpty!31588 (list!18953 (left!42777 (right!43107 (right!43107 xs!286))))))))

(assert (=> d!1626196 (= lt!2087259 (= (size!39032 (left!42777 (right!43107 (right!43107 xs!286)))) 0))))

(assert (=> d!1626196 (= (isEmpty!31586 (left!42777 (right!43107 (right!43107 xs!286)))) lt!2087259)))

(declare-fun bs!1189295 () Bool)

(assert (= bs!1189295 d!1626196))

(declare-fun m!6087754 () Bool)

(assert (=> bs!1189295 m!6087754))

(assert (=> bs!1189295 m!6087754))

(declare-fun m!6087756 () Bool)

(assert (=> bs!1189295 m!6087756))

(declare-fun m!6087758 () Bool)

(assert (=> bs!1189295 m!6087758))

(assert (=> b!5053585 d!1626196))

(declare-fun b!5053693 () Bool)

(declare-fun res!2151848 () Bool)

(declare-fun e!3154953 () Bool)

(assert (=> b!5053693 (=> (not res!2151848) (not e!3154953))))

(assert (=> b!5053693 (= res!2151848 (isBalanced!4400 (left!42777 (left!42777 xs!286))))))

(declare-fun b!5053694 () Bool)

(declare-fun res!2151844 () Bool)

(assert (=> b!5053694 (=> (not res!2151844) (not e!3154953))))

(assert (=> b!5053694 (= res!2151844 (isBalanced!4400 (right!43107 (left!42777 xs!286))))))

(declare-fun b!5053695 () Bool)

(assert (=> b!5053695 (= e!3154953 (not (isEmpty!31586 (right!43107 (left!42777 xs!286)))))))

(declare-fun b!5053696 () Bool)

(declare-fun e!3154952 () Bool)

(assert (=> b!5053696 (= e!3154952 e!3154953)))

(declare-fun res!2151849 () Bool)

(assert (=> b!5053696 (=> (not res!2151849) (not e!3154953))))

(assert (=> b!5053696 (= res!2151849 (<= (- 1) (- (height!2115 (left!42777 (left!42777 xs!286))) (height!2115 (right!43107 (left!42777 xs!286))))))))

(declare-fun b!5053697 () Bool)

(declare-fun res!2151845 () Bool)

(assert (=> b!5053697 (=> (not res!2151845) (not e!3154953))))

(assert (=> b!5053697 (= res!2151845 (not (isEmpty!31586 (left!42777 (left!42777 xs!286)))))))

(declare-fun b!5053692 () Bool)

(declare-fun res!2151846 () Bool)

(assert (=> b!5053692 (=> (not res!2151846) (not e!3154953))))

(assert (=> b!5053692 (= res!2151846 (<= (- (height!2115 (left!42777 (left!42777 xs!286))) (height!2115 (right!43107 (left!42777 xs!286)))) 1))))

(declare-fun d!1626198 () Bool)

(declare-fun res!2151847 () Bool)

(assert (=> d!1626198 (=> res!2151847 e!3154952)))

(assert (=> d!1626198 (= res!2151847 (not ((_ is Node!15538) (left!42777 xs!286))))))

(assert (=> d!1626198 (= (isBalanced!4400 (left!42777 xs!286)) e!3154952)))

(assert (= (and d!1626198 (not res!2151847)) b!5053696))

(assert (= (and b!5053696 res!2151849) b!5053692))

(assert (= (and b!5053692 res!2151846) b!5053693))

(assert (= (and b!5053693 res!2151848) b!5053694))

(assert (= (and b!5053694 res!2151844) b!5053697))

(assert (= (and b!5053697 res!2151845) b!5053695))

(declare-fun m!6087760 () Bool)

(assert (=> b!5053696 m!6087760))

(declare-fun m!6087762 () Bool)

(assert (=> b!5053696 m!6087762))

(declare-fun m!6087764 () Bool)

(assert (=> b!5053693 m!6087764))

(assert (=> b!5053692 m!6087760))

(assert (=> b!5053692 m!6087762))

(declare-fun m!6087766 () Bool)

(assert (=> b!5053694 m!6087766))

(declare-fun m!6087768 () Bool)

(assert (=> b!5053695 m!6087768))

(declare-fun m!6087770 () Bool)

(assert (=> b!5053697 m!6087770))

(assert (=> b!5053599 d!1626198))

(declare-fun d!1626200 () Bool)

(declare-fun res!2151850 () Bool)

(declare-fun e!3154954 () Bool)

(assert (=> d!1626200 (=> (not res!2151850) (not e!3154954))))

(assert (=> d!1626200 (= res!2151850 (<= (size!39030 (list!18952 (xs!18868 (right!43107 xs!286)))) 512))))

(assert (=> d!1626200 (= (inv!77415 (right!43107 xs!286)) e!3154954)))

(declare-fun b!5053698 () Bool)

(declare-fun res!2151851 () Bool)

(assert (=> b!5053698 (=> (not res!2151851) (not e!3154954))))

(assert (=> b!5053698 (= res!2151851 (= (csize!31307 (right!43107 xs!286)) (size!39030 (list!18952 (xs!18868 (right!43107 xs!286))))))))

(declare-fun b!5053699 () Bool)

(assert (=> b!5053699 (= e!3154954 (and (> (csize!31307 (right!43107 xs!286)) 0) (<= (csize!31307 (right!43107 xs!286)) 512)))))

(assert (= (and d!1626200 res!2151850) b!5053698))

(assert (= (and b!5053698 res!2151851) b!5053699))

(declare-fun m!6087772 () Bool)

(assert (=> d!1626200 m!6087772))

(assert (=> d!1626200 m!6087772))

(declare-fun m!6087774 () Bool)

(assert (=> d!1626200 m!6087774))

(assert (=> b!5053698 m!6087772))

(assert (=> b!5053698 m!6087772))

(assert (=> b!5053698 m!6087774))

(assert (=> b!5053567 d!1626200))

(declare-fun d!1626202 () Bool)

(declare-fun res!2151858 () Bool)

(declare-fun e!3154957 () Bool)

(assert (=> d!1626202 (=> (not res!2151858) (not e!3154957))))

(assert (=> d!1626202 (= res!2151858 (= (csize!31306 xs!286) (+ (size!39032 (left!42777 xs!286)) (size!39032 (right!43107 xs!286)))))))

(assert (=> d!1626202 (= (inv!77414 xs!286) e!3154957)))

(declare-fun b!5053706 () Bool)

(declare-fun res!2151859 () Bool)

(assert (=> b!5053706 (=> (not res!2151859) (not e!3154957))))

(assert (=> b!5053706 (= res!2151859 (and (not (= (left!42777 xs!286) Empty!15538)) (not (= (right!43107 xs!286) Empty!15538))))))

(declare-fun b!5053707 () Bool)

(declare-fun res!2151860 () Bool)

(assert (=> b!5053707 (=> (not res!2151860) (not e!3154957))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5053707 (= res!2151860 (= (cheight!15749 xs!286) (+ (max!0 (height!2115 (left!42777 xs!286)) (height!2115 (right!43107 xs!286))) 1)))))

(declare-fun b!5053708 () Bool)

(assert (=> b!5053708 (= e!3154957 (<= 0 (cheight!15749 xs!286)))))

(assert (= (and d!1626202 res!2151858) b!5053706))

(assert (= (and b!5053706 res!2151859) b!5053707))

(assert (= (and b!5053707 res!2151860) b!5053708))

(declare-fun m!6087776 () Bool)

(assert (=> d!1626202 m!6087776))

(assert (=> d!1626202 m!6087752))

(assert (=> b!5053707 m!6087556))

(assert (=> b!5053707 m!6087558))

(assert (=> b!5053707 m!6087556))

(assert (=> b!5053707 m!6087558))

(declare-fun m!6087778 () Bool)

(assert (=> b!5053707 m!6087778))

(assert (=> b!5053604 d!1626202))

(declare-fun d!1626204 () Bool)

(declare-fun res!2151861 () Bool)

(declare-fun e!3154958 () Bool)

(assert (=> d!1626204 (=> (not res!2151861) (not e!3154958))))

(assert (=> d!1626204 (= res!2151861 (= (csize!31306 (right!43107 xs!286)) (+ (size!39032 (left!42777 (right!43107 xs!286))) (size!39032 (right!43107 (right!43107 xs!286))))))))

(assert (=> d!1626204 (= (inv!77414 (right!43107 xs!286)) e!3154958)))

(declare-fun b!5053709 () Bool)

(declare-fun res!2151862 () Bool)

(assert (=> b!5053709 (=> (not res!2151862) (not e!3154958))))

(assert (=> b!5053709 (= res!2151862 (and (not (= (left!42777 (right!43107 xs!286)) Empty!15538)) (not (= (right!43107 (right!43107 xs!286)) Empty!15538))))))

(declare-fun b!5053710 () Bool)

(declare-fun res!2151863 () Bool)

(assert (=> b!5053710 (=> (not res!2151863) (not e!3154958))))

(assert (=> b!5053710 (= res!2151863 (= (cheight!15749 (right!43107 xs!286)) (+ (max!0 (height!2115 (left!42777 (right!43107 xs!286))) (height!2115 (right!43107 (right!43107 xs!286)))) 1)))))

(declare-fun b!5053711 () Bool)

(assert (=> b!5053711 (= e!3154958 (<= 0 (cheight!15749 (right!43107 xs!286))))))

(assert (= (and d!1626204 res!2151861) b!5053709))

(assert (= (and b!5053709 res!2151862) b!5053710))

(assert (= (and b!5053710 res!2151863) b!5053711))

(declare-fun m!6087780 () Bool)

(assert (=> d!1626204 m!6087780))

(declare-fun m!6087782 () Bool)

(assert (=> d!1626204 m!6087782))

(assert (=> b!5053710 m!6087734))

(assert (=> b!5053710 m!6087736))

(assert (=> b!5053710 m!6087734))

(assert (=> b!5053710 m!6087736))

(declare-fun m!6087784 () Bool)

(assert (=> b!5053710 m!6087784))

(assert (=> b!5053565 d!1626204))

(declare-fun d!1626206 () Bool)

(assert (=> d!1626206 (= (height!2115 (left!42777 (right!43107 (right!43107 xs!286)))) (ite ((_ is Empty!15538) (left!42777 (right!43107 (right!43107 xs!286)))) 0 (ite ((_ is Leaf!25812) (left!42777 (right!43107 (right!43107 xs!286)))) 1 (cheight!15749 (left!42777 (right!43107 (right!43107 xs!286)))))))))

(assert (=> b!5053584 d!1626206))

(declare-fun d!1626208 () Bool)

(assert (=> d!1626208 (= (height!2115 (right!43107 (right!43107 (right!43107 xs!286)))) (ite ((_ is Empty!15538) (right!43107 (right!43107 (right!43107 xs!286)))) 0 (ite ((_ is Leaf!25812) (right!43107 (right!43107 (right!43107 xs!286)))) 1 (cheight!15749 (right!43107 (right!43107 (right!43107 xs!286)))))))))

(assert (=> b!5053584 d!1626208))

(assert (=> b!5053598 d!1626152))

(assert (=> b!5053598 d!1626160))

(declare-fun d!1626210 () Bool)

(declare-fun res!2151864 () Bool)

(declare-fun e!3154959 () Bool)

(assert (=> d!1626210 (=> (not res!2151864) (not e!3154959))))

(assert (=> d!1626210 (= res!2151864 (= (csize!31306 (right!43107 ys!41)) (+ (size!39032 (left!42777 (right!43107 ys!41))) (size!39032 (right!43107 (right!43107 ys!41))))))))

(assert (=> d!1626210 (= (inv!77414 (right!43107 ys!41)) e!3154959)))

(declare-fun b!5053712 () Bool)

(declare-fun res!2151865 () Bool)

(assert (=> b!5053712 (=> (not res!2151865) (not e!3154959))))

(assert (=> b!5053712 (= res!2151865 (and (not (= (left!42777 (right!43107 ys!41)) Empty!15538)) (not (= (right!43107 (right!43107 ys!41)) Empty!15538))))))

(declare-fun b!5053713 () Bool)

(declare-fun res!2151866 () Bool)

(assert (=> b!5053713 (=> (not res!2151866) (not e!3154959))))

(assert (=> b!5053713 (= res!2151866 (= (cheight!15749 (right!43107 ys!41)) (+ (max!0 (height!2115 (left!42777 (right!43107 ys!41))) (height!2115 (right!43107 (right!43107 ys!41)))) 1)))))

(declare-fun b!5053714 () Bool)

(assert (=> b!5053714 (= e!3154959 (<= 0 (cheight!15749 (right!43107 ys!41))))))

(assert (= (and d!1626210 res!2151864) b!5053712))

(assert (= (and b!5053712 res!2151865) b!5053713))

(assert (= (and b!5053713 res!2151866) b!5053714))

(declare-fun m!6087786 () Bool)

(assert (=> d!1626210 m!6087786))

(declare-fun m!6087788 () Bool)

(assert (=> d!1626210 m!6087788))

(declare-fun m!6087790 () Bool)

(assert (=> b!5053713 m!6087790))

(declare-fun m!6087792 () Bool)

(assert (=> b!5053713 m!6087792))

(assert (=> b!5053713 m!6087790))

(assert (=> b!5053713 m!6087792))

(declare-fun m!6087794 () Bool)

(assert (=> b!5053713 m!6087794))

(assert (=> b!5053577 d!1626210))

(declare-fun d!1626212 () Bool)

(declare-fun c!867160 () Bool)

(assert (=> d!1626212 (= c!867160 ((_ is Node!15538) (left!42777 (right!43107 ys!41))))))

(declare-fun e!3154960 () Bool)

(assert (=> d!1626212 (= (inv!77412 (left!42777 (right!43107 ys!41))) e!3154960)))

(declare-fun b!5053715 () Bool)

(assert (=> b!5053715 (= e!3154960 (inv!77414 (left!42777 (right!43107 ys!41))))))

(declare-fun b!5053716 () Bool)

(declare-fun e!3154961 () Bool)

(assert (=> b!5053716 (= e!3154960 e!3154961)))

(declare-fun res!2151867 () Bool)

(assert (=> b!5053716 (= res!2151867 (not ((_ is Leaf!25812) (left!42777 (right!43107 ys!41)))))))

(assert (=> b!5053716 (=> res!2151867 e!3154961)))

(declare-fun b!5053717 () Bool)

(assert (=> b!5053717 (= e!3154961 (inv!77415 (left!42777 (right!43107 ys!41))))))

(assert (= (and d!1626212 c!867160) b!5053715))

(assert (= (and d!1626212 (not c!867160)) b!5053716))

(assert (= (and b!5053716 (not res!2151867)) b!5053717))

(declare-fun m!6087796 () Bool)

(assert (=> b!5053715 m!6087796))

(declare-fun m!6087798 () Bool)

(assert (=> b!5053717 m!6087798))

(assert (=> b!5053645 d!1626212))

(declare-fun d!1626214 () Bool)

(declare-fun c!867161 () Bool)

(assert (=> d!1626214 (= c!867161 ((_ is Node!15538) (right!43107 (right!43107 ys!41))))))

(declare-fun e!3154962 () Bool)

(assert (=> d!1626214 (= (inv!77412 (right!43107 (right!43107 ys!41))) e!3154962)))

(declare-fun b!5053718 () Bool)

(assert (=> b!5053718 (= e!3154962 (inv!77414 (right!43107 (right!43107 ys!41))))))

(declare-fun b!5053719 () Bool)

(declare-fun e!3154963 () Bool)

(assert (=> b!5053719 (= e!3154962 e!3154963)))

(declare-fun res!2151868 () Bool)

(assert (=> b!5053719 (= res!2151868 (not ((_ is Leaf!25812) (right!43107 (right!43107 ys!41)))))))

(assert (=> b!5053719 (=> res!2151868 e!3154963)))

(declare-fun b!5053720 () Bool)

(assert (=> b!5053720 (= e!3154963 (inv!77415 (right!43107 (right!43107 ys!41))))))

(assert (= (and d!1626214 c!867161) b!5053718))

(assert (= (and d!1626214 (not c!867161)) b!5053719))

(assert (= (and b!5053719 (not res!2151868)) b!5053720))

(declare-fun m!6087800 () Bool)

(assert (=> b!5053718 m!6087800))

(declare-fun m!6087802 () Bool)

(assert (=> b!5053720 m!6087802))

(assert (=> b!5053645 d!1626214))

(declare-fun d!1626216 () Bool)

(declare-fun lt!2087260 () Bool)

(assert (=> d!1626216 (= lt!2087260 (isEmpty!31588 (list!18953 (right!43107 (right!43107 (right!43107 xs!286))))))))

(assert (=> d!1626216 (= lt!2087260 (= (size!39032 (right!43107 (right!43107 (right!43107 xs!286)))) 0))))

(assert (=> d!1626216 (= (isEmpty!31586 (right!43107 (right!43107 (right!43107 xs!286)))) lt!2087260)))

(declare-fun bs!1189296 () Bool)

(assert (= bs!1189296 d!1626216))

(declare-fun m!6087804 () Bool)

(assert (=> bs!1189296 m!6087804))

(assert (=> bs!1189296 m!6087804))

(declare-fun m!6087806 () Bool)

(assert (=> bs!1189296 m!6087806))

(declare-fun m!6087808 () Bool)

(assert (=> bs!1189296 m!6087808))

(assert (=> b!5053583 d!1626216))

(declare-fun d!1626218 () Bool)

(assert (=> d!1626218 (= (inv!77413 (xs!18868 (right!43107 ys!41))) (<= (size!39030 (innerList!15626 (xs!18868 (right!43107 ys!41)))) 2147483647))))

(declare-fun bs!1189297 () Bool)

(assert (= bs!1189297 d!1626218))

(declare-fun m!6087810 () Bool)

(assert (=> bs!1189297 m!6087810))

(assert (=> b!5053646 d!1626218))

(declare-fun b!5053722 () Bool)

(declare-fun res!2151873 () Bool)

(declare-fun e!3154965 () Bool)

(assert (=> b!5053722 (=> (not res!2151873) (not e!3154965))))

(assert (=> b!5053722 (= res!2151873 (isBalanced!4400 (left!42777 (left!42777 (right!43107 (right!43107 xs!286))))))))

(declare-fun b!5053723 () Bool)

(declare-fun res!2151869 () Bool)

(assert (=> b!5053723 (=> (not res!2151869) (not e!3154965))))

(assert (=> b!5053723 (= res!2151869 (isBalanced!4400 (right!43107 (left!42777 (right!43107 (right!43107 xs!286))))))))

(declare-fun b!5053724 () Bool)

(assert (=> b!5053724 (= e!3154965 (not (isEmpty!31586 (right!43107 (left!42777 (right!43107 (right!43107 xs!286)))))))))

(declare-fun b!5053725 () Bool)

(declare-fun e!3154964 () Bool)

(assert (=> b!5053725 (= e!3154964 e!3154965)))

(declare-fun res!2151874 () Bool)

(assert (=> b!5053725 (=> (not res!2151874) (not e!3154965))))

(assert (=> b!5053725 (= res!2151874 (<= (- 1) (- (height!2115 (left!42777 (left!42777 (right!43107 (right!43107 xs!286))))) (height!2115 (right!43107 (left!42777 (right!43107 (right!43107 xs!286))))))))))

(declare-fun b!5053726 () Bool)

(declare-fun res!2151870 () Bool)

(assert (=> b!5053726 (=> (not res!2151870) (not e!3154965))))

(assert (=> b!5053726 (= res!2151870 (not (isEmpty!31586 (left!42777 (left!42777 (right!43107 (right!43107 xs!286)))))))))

(declare-fun b!5053721 () Bool)

(declare-fun res!2151871 () Bool)

(assert (=> b!5053721 (=> (not res!2151871) (not e!3154965))))

(assert (=> b!5053721 (= res!2151871 (<= (- (height!2115 (left!42777 (left!42777 (right!43107 (right!43107 xs!286))))) (height!2115 (right!43107 (left!42777 (right!43107 (right!43107 xs!286)))))) 1))))

(declare-fun d!1626220 () Bool)

(declare-fun res!2151872 () Bool)

(assert (=> d!1626220 (=> res!2151872 e!3154964)))

(assert (=> d!1626220 (= res!2151872 (not ((_ is Node!15538) (left!42777 (right!43107 (right!43107 xs!286))))))))

(assert (=> d!1626220 (= (isBalanced!4400 (left!42777 (right!43107 (right!43107 xs!286)))) e!3154964)))

(assert (= (and d!1626220 (not res!2151872)) b!5053725))

(assert (= (and b!5053725 res!2151874) b!5053721))

(assert (= (and b!5053721 res!2151871) b!5053722))

(assert (= (and b!5053722 res!2151873) b!5053723))

(assert (= (and b!5053723 res!2151869) b!5053726))

(assert (= (and b!5053726 res!2151870) b!5053724))

(declare-fun m!6087812 () Bool)

(assert (=> b!5053725 m!6087812))

(declare-fun m!6087814 () Bool)

(assert (=> b!5053725 m!6087814))

(declare-fun m!6087816 () Bool)

(assert (=> b!5053722 m!6087816))

(assert (=> b!5053721 m!6087812))

(assert (=> b!5053721 m!6087814))

(declare-fun m!6087818 () Bool)

(assert (=> b!5053723 m!6087818))

(declare-fun m!6087820 () Bool)

(assert (=> b!5053724 m!6087820))

(declare-fun m!6087822 () Bool)

(assert (=> b!5053726 m!6087822))

(assert (=> b!5053581 d!1626220))

(declare-fun b!5053728 () Bool)

(declare-fun res!2151879 () Bool)

(declare-fun e!3154967 () Bool)

(assert (=> b!5053728 (=> (not res!2151879) (not e!3154967))))

(assert (=> b!5053728 (= res!2151879 (isBalanced!4400 (left!42777 (right!43107 (right!43107 (right!43107 xs!286))))))))

(declare-fun b!5053729 () Bool)

(declare-fun res!2151875 () Bool)

(assert (=> b!5053729 (=> (not res!2151875) (not e!3154967))))

(assert (=> b!5053729 (= res!2151875 (isBalanced!4400 (right!43107 (right!43107 (right!43107 (right!43107 xs!286))))))))

(declare-fun b!5053730 () Bool)

(assert (=> b!5053730 (= e!3154967 (not (isEmpty!31586 (right!43107 (right!43107 (right!43107 (right!43107 xs!286)))))))))

(declare-fun b!5053731 () Bool)

(declare-fun e!3154966 () Bool)

(assert (=> b!5053731 (= e!3154966 e!3154967)))

(declare-fun res!2151880 () Bool)

(assert (=> b!5053731 (=> (not res!2151880) (not e!3154967))))

(assert (=> b!5053731 (= res!2151880 (<= (- 1) (- (height!2115 (left!42777 (right!43107 (right!43107 (right!43107 xs!286))))) (height!2115 (right!43107 (right!43107 (right!43107 (right!43107 xs!286))))))))))

(declare-fun b!5053732 () Bool)

(declare-fun res!2151876 () Bool)

(assert (=> b!5053732 (=> (not res!2151876) (not e!3154967))))

(assert (=> b!5053732 (= res!2151876 (not (isEmpty!31586 (left!42777 (right!43107 (right!43107 (right!43107 xs!286)))))))))

(declare-fun b!5053727 () Bool)

(declare-fun res!2151877 () Bool)

(assert (=> b!5053727 (=> (not res!2151877) (not e!3154967))))

(assert (=> b!5053727 (= res!2151877 (<= (- (height!2115 (left!42777 (right!43107 (right!43107 (right!43107 xs!286))))) (height!2115 (right!43107 (right!43107 (right!43107 (right!43107 xs!286)))))) 1))))

(declare-fun d!1626222 () Bool)

(declare-fun res!2151878 () Bool)

(assert (=> d!1626222 (=> res!2151878 e!3154966)))

(assert (=> d!1626222 (= res!2151878 (not ((_ is Node!15538) (right!43107 (right!43107 (right!43107 xs!286))))))))

(assert (=> d!1626222 (= (isBalanced!4400 (right!43107 (right!43107 (right!43107 xs!286)))) e!3154966)))

(assert (= (and d!1626222 (not res!2151878)) b!5053731))

(assert (= (and b!5053731 res!2151880) b!5053727))

(assert (= (and b!5053727 res!2151877) b!5053728))

(assert (= (and b!5053728 res!2151879) b!5053729))

(assert (= (and b!5053729 res!2151875) b!5053732))

(assert (= (and b!5053732 res!2151876) b!5053730))

(declare-fun m!6087824 () Bool)

(assert (=> b!5053731 m!6087824))

(declare-fun m!6087826 () Bool)

(assert (=> b!5053731 m!6087826))

(declare-fun m!6087828 () Bool)

(assert (=> b!5053728 m!6087828))

(assert (=> b!5053727 m!6087824))

(assert (=> b!5053727 m!6087826))

(declare-fun m!6087830 () Bool)

(assert (=> b!5053729 m!6087830))

(declare-fun m!6087832 () Bool)

(assert (=> b!5053730 m!6087832))

(declare-fun m!6087834 () Bool)

(assert (=> b!5053732 m!6087834))

(assert (=> b!5053582 d!1626222))

(declare-fun d!1626224 () Bool)

(declare-fun res!2151881 () Bool)

(declare-fun e!3154968 () Bool)

(assert (=> d!1626224 (=> (not res!2151881) (not e!3154968))))

(assert (=> d!1626224 (= res!2151881 (<= (size!39030 (list!18952 (xs!18868 ys!41))) 512))))

(assert (=> d!1626224 (= (inv!77415 ys!41) e!3154968)))

(declare-fun b!5053733 () Bool)

(declare-fun res!2151882 () Bool)

(assert (=> b!5053733 (=> (not res!2151882) (not e!3154968))))

(assert (=> b!5053733 (= res!2151882 (= (csize!31307 ys!41) (size!39030 (list!18952 (xs!18868 ys!41)))))))

(declare-fun b!5053734 () Bool)

(assert (=> b!5053734 (= e!3154968 (and (> (csize!31307 ys!41) 0) (<= (csize!31307 ys!41) 512)))))

(assert (= (and d!1626224 res!2151881) b!5053733))

(assert (= (and b!5053733 res!2151882) b!5053734))

(declare-fun m!6087836 () Bool)

(assert (=> d!1626224 m!6087836))

(assert (=> d!1626224 m!6087836))

(declare-fun m!6087838 () Bool)

(assert (=> d!1626224 m!6087838))

(assert (=> b!5053733 m!6087836))

(assert (=> b!5053733 m!6087836))

(assert (=> b!5053733 m!6087838))

(assert (=> b!5053609 d!1626224))

(assert (=> b!5053580 d!1626206))

(assert (=> b!5053580 d!1626208))

(declare-fun d!1626226 () Bool)

(assert (=> d!1626226 (= (inv!77413 (xs!18868 (left!42777 ys!41))) (<= (size!39030 (innerList!15626 (xs!18868 (left!42777 ys!41)))) 2147483647))))

(declare-fun bs!1189298 () Bool)

(assert (= bs!1189298 d!1626226))

(declare-fun m!6087840 () Bool)

(assert (=> bs!1189298 m!6087840))

(assert (=> b!5053637 d!1626226))

(declare-fun d!1626228 () Bool)

(declare-fun c!867162 () Bool)

(assert (=> d!1626228 (= c!867162 ((_ is Node!15538) (left!42777 (left!42777 ys!41))))))

(declare-fun e!3154969 () Bool)

(assert (=> d!1626228 (= (inv!77412 (left!42777 (left!42777 ys!41))) e!3154969)))

(declare-fun b!5053735 () Bool)

(assert (=> b!5053735 (= e!3154969 (inv!77414 (left!42777 (left!42777 ys!41))))))

(declare-fun b!5053736 () Bool)

(declare-fun e!3154970 () Bool)

(assert (=> b!5053736 (= e!3154969 e!3154970)))

(declare-fun res!2151883 () Bool)

(assert (=> b!5053736 (= res!2151883 (not ((_ is Leaf!25812) (left!42777 (left!42777 ys!41)))))))

(assert (=> b!5053736 (=> res!2151883 e!3154970)))

(declare-fun b!5053737 () Bool)

(assert (=> b!5053737 (= e!3154970 (inv!77415 (left!42777 (left!42777 ys!41))))))

(assert (= (and d!1626228 c!867162) b!5053735))

(assert (= (and d!1626228 (not c!867162)) b!5053736))

(assert (= (and b!5053736 (not res!2151883)) b!5053737))

(declare-fun m!6087842 () Bool)

(assert (=> b!5053735 m!6087842))

(declare-fun m!6087844 () Bool)

(assert (=> b!5053737 m!6087844))

(assert (=> b!5053636 d!1626228))

(declare-fun d!1626230 () Bool)

(declare-fun c!867163 () Bool)

(assert (=> d!1626230 (= c!867163 ((_ is Node!15538) (right!43107 (left!42777 ys!41))))))

(declare-fun e!3154971 () Bool)

(assert (=> d!1626230 (= (inv!77412 (right!43107 (left!42777 ys!41))) e!3154971)))

(declare-fun b!5053738 () Bool)

(assert (=> b!5053738 (= e!3154971 (inv!77414 (right!43107 (left!42777 ys!41))))))

(declare-fun b!5053739 () Bool)

(declare-fun e!3154972 () Bool)

(assert (=> b!5053739 (= e!3154971 e!3154972)))

(declare-fun res!2151884 () Bool)

(assert (=> b!5053739 (= res!2151884 (not ((_ is Leaf!25812) (right!43107 (left!42777 ys!41)))))))

(assert (=> b!5053739 (=> res!2151884 e!3154972)))

(declare-fun b!5053740 () Bool)

(assert (=> b!5053740 (= e!3154972 (inv!77415 (right!43107 (left!42777 ys!41))))))

(assert (= (and d!1626230 c!867163) b!5053738))

(assert (= (and d!1626230 (not c!867163)) b!5053739))

(assert (= (and b!5053739 (not res!2151884)) b!5053740))

(declare-fun m!6087846 () Bool)

(assert (=> b!5053738 m!6087846))

(declare-fun m!6087848 () Bool)

(assert (=> b!5053740 m!6087848))

(assert (=> b!5053636 d!1626230))

(declare-fun d!1626232 () Bool)

(declare-fun c!867164 () Bool)

(assert (=> d!1626232 (= c!867164 ((_ is Node!15538) (left!42777 (right!43107 xs!286))))))

(declare-fun e!3154973 () Bool)

(assert (=> d!1626232 (= (inv!77412 (left!42777 (right!43107 xs!286))) e!3154973)))

(declare-fun b!5053741 () Bool)

(assert (=> b!5053741 (= e!3154973 (inv!77414 (left!42777 (right!43107 xs!286))))))

(declare-fun b!5053742 () Bool)

(declare-fun e!3154974 () Bool)

(assert (=> b!5053742 (= e!3154973 e!3154974)))

(declare-fun res!2151885 () Bool)

(assert (=> b!5053742 (= res!2151885 (not ((_ is Leaf!25812) (left!42777 (right!43107 xs!286)))))))

(assert (=> b!5053742 (=> res!2151885 e!3154974)))

(declare-fun b!5053743 () Bool)

(assert (=> b!5053743 (= e!3154974 (inv!77415 (left!42777 (right!43107 xs!286))))))

(assert (= (and d!1626232 c!867164) b!5053741))

(assert (= (and d!1626232 (not c!867164)) b!5053742))

(assert (= (and b!5053742 (not res!2151885)) b!5053743))

(declare-fun m!6087850 () Bool)

(assert (=> b!5053741 m!6087850))

(declare-fun m!6087852 () Bool)

(assert (=> b!5053743 m!6087852))

(assert (=> b!5053633 d!1626232))

(declare-fun d!1626234 () Bool)

(declare-fun c!867165 () Bool)

(assert (=> d!1626234 (= c!867165 ((_ is Node!15538) (right!43107 (right!43107 xs!286))))))

(declare-fun e!3154975 () Bool)

(assert (=> d!1626234 (= (inv!77412 (right!43107 (right!43107 xs!286))) e!3154975)))

(declare-fun b!5053744 () Bool)

(assert (=> b!5053744 (= e!3154975 (inv!77414 (right!43107 (right!43107 xs!286))))))

(declare-fun b!5053745 () Bool)

(declare-fun e!3154976 () Bool)

(assert (=> b!5053745 (= e!3154975 e!3154976)))

(declare-fun res!2151886 () Bool)

(assert (=> b!5053745 (= res!2151886 (not ((_ is Leaf!25812) (right!43107 (right!43107 xs!286)))))))

(assert (=> b!5053745 (=> res!2151886 e!3154976)))

(declare-fun b!5053746 () Bool)

(assert (=> b!5053746 (= e!3154976 (inv!77415 (right!43107 (right!43107 xs!286))))))

(assert (= (and d!1626234 c!867165) b!5053744))

(assert (= (and d!1626234 (not c!867165)) b!5053745))

(assert (= (and b!5053745 (not res!2151886)) b!5053746))

(declare-fun m!6087854 () Bool)

(assert (=> b!5053744 m!6087854))

(declare-fun m!6087856 () Bool)

(assert (=> b!5053746 m!6087856))

(assert (=> b!5053633 d!1626234))

(declare-fun d!1626236 () Bool)

(declare-fun res!2151887 () Bool)

(declare-fun e!3154977 () Bool)

(assert (=> d!1626236 (=> (not res!2151887) (not e!3154977))))

(assert (=> d!1626236 (= res!2151887 (= (csize!31306 ys!41) (+ (size!39032 (left!42777 ys!41)) (size!39032 (right!43107 ys!41)))))))

(assert (=> d!1626236 (= (inv!77414 ys!41) e!3154977)))

(declare-fun b!5053747 () Bool)

(declare-fun res!2151888 () Bool)

(assert (=> b!5053747 (=> (not res!2151888) (not e!3154977))))

(assert (=> b!5053747 (= res!2151888 (and (not (= (left!42777 ys!41) Empty!15538)) (not (= (right!43107 ys!41) Empty!15538))))))

(declare-fun b!5053748 () Bool)

(declare-fun res!2151889 () Bool)

(assert (=> b!5053748 (=> (not res!2151889) (not e!3154977))))

(assert (=> b!5053748 (= res!2151889 (= (cheight!15749 ys!41) (+ (max!0 (height!2115 (left!42777 ys!41)) (height!2115 (right!43107 ys!41))) 1)))))

(declare-fun b!5053749 () Bool)

(assert (=> b!5053749 (= e!3154977 (<= 0 (cheight!15749 ys!41)))))

(assert (= (and d!1626236 res!2151887) b!5053747))

(assert (= (and b!5053747 res!2151888) b!5053748))

(assert (= (and b!5053748 res!2151889) b!5053749))

(declare-fun m!6087858 () Bool)

(assert (=> d!1626236 m!6087858))

(declare-fun m!6087860 () Bool)

(assert (=> d!1626236 m!6087860))

(assert (=> b!5053748 m!6087566))

(assert (=> b!5053748 m!6087568))

(assert (=> b!5053748 m!6087566))

(assert (=> b!5053748 m!6087568))

(declare-fun m!6087862 () Bool)

(assert (=> b!5053748 m!6087862))

(assert (=> b!5053607 d!1626236))

(declare-fun d!1626238 () Bool)

(declare-fun lt!2087263 () Int)

(assert (=> d!1626238 (>= lt!2087263 0)))

(declare-fun e!3154980 () Int)

(assert (=> d!1626238 (= lt!2087263 e!3154980)))

(declare-fun c!867168 () Bool)

(assert (=> d!1626238 (= c!867168 ((_ is Nil!58408) (innerList!15626 (xs!18868 xs!286))))))

(assert (=> d!1626238 (= (size!39030 (innerList!15626 (xs!18868 xs!286))) lt!2087263)))

(declare-fun b!5053754 () Bool)

(assert (=> b!5053754 (= e!3154980 0)))

(declare-fun b!5053755 () Bool)

(assert (=> b!5053755 (= e!3154980 (+ 1 (size!39030 (t!371175 (innerList!15626 (xs!18868 xs!286))))))))

(assert (= (and d!1626238 c!867168) b!5053754))

(assert (= (and d!1626238 (not c!867168)) b!5053755))

(declare-fun m!6087864 () Bool)

(assert (=> b!5053755 m!6087864))

(assert (=> d!1626142 d!1626238))

(declare-fun d!1626240 () Bool)

(assert (=> d!1626240 (= (inv!77413 (xs!18868 (right!43107 xs!286))) (<= (size!39030 (innerList!15626 (xs!18868 (right!43107 xs!286)))) 2147483647))))

(declare-fun bs!1189299 () Bool)

(assert (= bs!1189299 d!1626240))

(declare-fun m!6087866 () Bool)

(assert (=> bs!1189299 m!6087866))

(assert (=> b!5053634 d!1626240))

(assert (=> b!5053510 d!1626130))

(assert (=> b!5053510 d!1626134))

(assert (=> b!5053508 d!1626136))

(assert (=> b!5053508 d!1626138))

(declare-fun d!1626242 () Bool)

(declare-fun res!2151890 () Bool)

(declare-fun e!3154981 () Bool)

(assert (=> d!1626242 (=> (not res!2151890) (not e!3154981))))

(assert (=> d!1626242 (= res!2151890 (<= (size!39030 (list!18952 (xs!18868 (left!42777 xs!286)))) 512))))

(assert (=> d!1626242 (= (inv!77415 (left!42777 xs!286)) e!3154981)))

(declare-fun b!5053756 () Bool)

(declare-fun res!2151891 () Bool)

(assert (=> b!5053756 (=> (not res!2151891) (not e!3154981))))

(assert (=> b!5053756 (= res!2151891 (= (csize!31307 (left!42777 xs!286)) (size!39030 (list!18952 (xs!18868 (left!42777 xs!286))))))))

(declare-fun b!5053757 () Bool)

(assert (=> b!5053757 (= e!3154981 (and (> (csize!31307 (left!42777 xs!286)) 0) (<= (csize!31307 (left!42777 xs!286)) 512)))))

(assert (= (and d!1626242 res!2151890) b!5053756))

(assert (= (and b!5053756 res!2151891) b!5053757))

(declare-fun m!6087868 () Bool)

(assert (=> d!1626242 m!6087868))

(assert (=> d!1626242 m!6087868))

(declare-fun m!6087870 () Bool)

(assert (=> d!1626242 m!6087870))

(assert (=> b!5053756 m!6087868))

(assert (=> b!5053756 m!6087868))

(assert (=> b!5053756 m!6087870))

(assert (=> b!5053564 d!1626242))

(declare-fun d!1626244 () Bool)

(declare-fun res!2151892 () Bool)

(declare-fun e!3154982 () Bool)

(assert (=> d!1626244 (=> (not res!2151892) (not e!3154982))))

(assert (=> d!1626244 (= res!2151892 (<= (size!39030 (list!18952 (xs!18868 (left!42777 ys!41)))) 512))))

(assert (=> d!1626244 (= (inv!77415 (left!42777 ys!41)) e!3154982)))

(declare-fun b!5053758 () Bool)

(declare-fun res!2151893 () Bool)

(assert (=> b!5053758 (=> (not res!2151893) (not e!3154982))))

(assert (=> b!5053758 (= res!2151893 (= (csize!31307 (left!42777 ys!41)) (size!39030 (list!18952 (xs!18868 (left!42777 ys!41))))))))

(declare-fun b!5053759 () Bool)

(assert (=> b!5053759 (= e!3154982 (and (> (csize!31307 (left!42777 ys!41)) 0) (<= (csize!31307 (left!42777 ys!41)) 512)))))

(assert (= (and d!1626244 res!2151892) b!5053758))

(assert (= (and b!5053758 res!2151893) b!5053759))

(declare-fun m!6087872 () Bool)

(assert (=> d!1626244 m!6087872))

(assert (=> d!1626244 m!6087872))

(declare-fun m!6087874 () Bool)

(assert (=> d!1626244 m!6087874))

(assert (=> b!5053758 m!6087872))

(assert (=> b!5053758 m!6087872))

(assert (=> b!5053758 m!6087874))

(assert (=> b!5053576 d!1626244))

(declare-fun d!1626246 () Bool)

(declare-fun lt!2087264 () Int)

(assert (=> d!1626246 (>= lt!2087264 0)))

(declare-fun e!3154983 () Int)

(assert (=> d!1626246 (= lt!2087264 e!3154983)))

(declare-fun c!867169 () Bool)

(assert (=> d!1626246 (= c!867169 ((_ is Nil!58408) (innerList!15626 (xs!18868 ys!41))))))

(assert (=> d!1626246 (= (size!39030 (innerList!15626 (xs!18868 ys!41))) lt!2087264)))

(declare-fun b!5053760 () Bool)

(assert (=> b!5053760 (= e!3154983 0)))

(declare-fun b!5053761 () Bool)

(assert (=> b!5053761 (= e!3154983 (+ 1 (size!39030 (t!371175 (innerList!15626 (xs!18868 ys!41))))))))

(assert (= (and d!1626246 c!867169) b!5053760))

(assert (= (and d!1626246 (not c!867169)) b!5053761))

(declare-fun m!6087876 () Bool)

(assert (=> b!5053761 m!6087876))

(assert (=> d!1626148 d!1626246))

(declare-fun d!1626248 () Bool)

(assert (=> d!1626248 (= (inv!77413 (xs!18868 (left!42777 xs!286))) (<= (size!39030 (innerList!15626 (xs!18868 (left!42777 xs!286)))) 2147483647))))

(declare-fun bs!1189300 () Bool)

(assert (= bs!1189300 d!1626248))

(declare-fun m!6087878 () Bool)

(assert (=> bs!1189300 m!6087878))

(assert (=> b!5053628 d!1626248))

(declare-fun d!1626250 () Bool)

(declare-fun lt!2087265 () Bool)

(assert (=> d!1626250 (= lt!2087265 (isEmpty!31588 (list!18953 (left!42777 ys!41))))))

(assert (=> d!1626250 (= lt!2087265 (= (size!39032 (left!42777 ys!41)) 0))))

(assert (=> d!1626250 (= (isEmpty!31586 (left!42777 ys!41)) lt!2087265)))

(declare-fun bs!1189301 () Bool)

(assert (= bs!1189301 d!1626250))

(declare-fun m!6087880 () Bool)

(assert (=> bs!1189301 m!6087880))

(assert (=> bs!1189301 m!6087880))

(declare-fun m!6087882 () Bool)

(assert (=> bs!1189301 m!6087882))

(assert (=> bs!1189301 m!6087858))

(assert (=> b!5053549 d!1626250))

(declare-fun d!1626252 () Bool)

(declare-fun res!2151894 () Bool)

(declare-fun e!3154984 () Bool)

(assert (=> d!1626252 (=> (not res!2151894) (not e!3154984))))

(assert (=> d!1626252 (= res!2151894 (= (csize!31306 (left!42777 xs!286)) (+ (size!39032 (left!42777 (left!42777 xs!286))) (size!39032 (right!43107 (left!42777 xs!286))))))))

(assert (=> d!1626252 (= (inv!77414 (left!42777 xs!286)) e!3154984)))

(declare-fun b!5053762 () Bool)

(declare-fun res!2151895 () Bool)

(assert (=> b!5053762 (=> (not res!2151895) (not e!3154984))))

(assert (=> b!5053762 (= res!2151895 (and (not (= (left!42777 (left!42777 xs!286)) Empty!15538)) (not (= (right!43107 (left!42777 xs!286)) Empty!15538))))))

(declare-fun b!5053763 () Bool)

(declare-fun res!2151896 () Bool)

(assert (=> b!5053763 (=> (not res!2151896) (not e!3154984))))

(assert (=> b!5053763 (= res!2151896 (= (cheight!15749 (left!42777 xs!286)) (+ (max!0 (height!2115 (left!42777 (left!42777 xs!286))) (height!2115 (right!43107 (left!42777 xs!286)))) 1)))))

(declare-fun b!5053764 () Bool)

(assert (=> b!5053764 (= e!3154984 (<= 0 (cheight!15749 (left!42777 xs!286))))))

(assert (= (and d!1626252 res!2151894) b!5053762))

(assert (= (and b!5053762 res!2151895) b!5053763))

(assert (= (and b!5053763 res!2151896) b!5053764))

(declare-fun m!6087884 () Bool)

(assert (=> d!1626252 m!6087884))

(declare-fun m!6087886 () Bool)

(assert (=> d!1626252 m!6087886))

(assert (=> b!5053763 m!6087760))

(assert (=> b!5053763 m!6087762))

(assert (=> b!5053763 m!6087760))

(assert (=> b!5053763 m!6087762))

(declare-fun m!6087888 () Bool)

(assert (=> b!5053763 m!6087888))

(assert (=> b!5053562 d!1626252))

(declare-fun d!1626254 () Bool)

(declare-fun c!867170 () Bool)

(assert (=> d!1626254 (= c!867170 ((_ is Node!15538) (left!42777 (left!42777 xs!286))))))

(declare-fun e!3154985 () Bool)

(assert (=> d!1626254 (= (inv!77412 (left!42777 (left!42777 xs!286))) e!3154985)))

(declare-fun b!5053765 () Bool)

(assert (=> b!5053765 (= e!3154985 (inv!77414 (left!42777 (left!42777 xs!286))))))

(declare-fun b!5053766 () Bool)

(declare-fun e!3154986 () Bool)

(assert (=> b!5053766 (= e!3154985 e!3154986)))

(declare-fun res!2151897 () Bool)

(assert (=> b!5053766 (= res!2151897 (not ((_ is Leaf!25812) (left!42777 (left!42777 xs!286)))))))

(assert (=> b!5053766 (=> res!2151897 e!3154986)))

(declare-fun b!5053767 () Bool)

(assert (=> b!5053767 (= e!3154986 (inv!77415 (left!42777 (left!42777 xs!286))))))

(assert (= (and d!1626254 c!867170) b!5053765))

(assert (= (and d!1626254 (not c!867170)) b!5053766))

(assert (= (and b!5053766 (not res!2151897)) b!5053767))

(declare-fun m!6087890 () Bool)

(assert (=> b!5053765 m!6087890))

(declare-fun m!6087892 () Bool)

(assert (=> b!5053767 m!6087892))

(assert (=> b!5053627 d!1626254))

(declare-fun d!1626256 () Bool)

(declare-fun c!867171 () Bool)

(assert (=> d!1626256 (= c!867171 ((_ is Node!15538) (right!43107 (left!42777 xs!286))))))

(declare-fun e!3154987 () Bool)

(assert (=> d!1626256 (= (inv!77412 (right!43107 (left!42777 xs!286))) e!3154987)))

(declare-fun b!5053768 () Bool)

(assert (=> b!5053768 (= e!3154987 (inv!77414 (right!43107 (left!42777 xs!286))))))

(declare-fun b!5053769 () Bool)

(declare-fun e!3154988 () Bool)

(assert (=> b!5053769 (= e!3154987 e!3154988)))

(declare-fun res!2151898 () Bool)

(assert (=> b!5053769 (= res!2151898 (not ((_ is Leaf!25812) (right!43107 (left!42777 xs!286)))))))

(assert (=> b!5053769 (=> res!2151898 e!3154988)))

(declare-fun b!5053770 () Bool)

(assert (=> b!5053770 (= e!3154988 (inv!77415 (right!43107 (left!42777 xs!286))))))

(assert (= (and d!1626256 c!867171) b!5053768))

(assert (= (and d!1626256 (not c!867171)) b!5053769))

(assert (= (and b!5053769 (not res!2151898)) b!5053770))

(declare-fun m!6087894 () Bool)

(assert (=> b!5053768 m!6087894))

(declare-fun m!6087896 () Bool)

(assert (=> b!5053770 m!6087896))

(assert (=> b!5053627 d!1626256))

(declare-fun d!1626258 () Bool)

(declare-fun res!2151899 () Bool)

(declare-fun e!3154989 () Bool)

(assert (=> d!1626258 (=> (not res!2151899) (not e!3154989))))

(assert (=> d!1626258 (= res!2151899 (= (csize!31306 (left!42777 ys!41)) (+ (size!39032 (left!42777 (left!42777 ys!41))) (size!39032 (right!43107 (left!42777 ys!41))))))))

(assert (=> d!1626258 (= (inv!77414 (left!42777 ys!41)) e!3154989)))

(declare-fun b!5053771 () Bool)

(declare-fun res!2151900 () Bool)

(assert (=> b!5053771 (=> (not res!2151900) (not e!3154989))))

(assert (=> b!5053771 (= res!2151900 (and (not (= (left!42777 (left!42777 ys!41)) Empty!15538)) (not (= (right!43107 (left!42777 ys!41)) Empty!15538))))))

(declare-fun b!5053772 () Bool)

(declare-fun res!2151901 () Bool)

(assert (=> b!5053772 (=> (not res!2151901) (not e!3154989))))

(assert (=> b!5053772 (= res!2151901 (= (cheight!15749 (left!42777 ys!41)) (+ (max!0 (height!2115 (left!42777 (left!42777 ys!41))) (height!2115 (right!43107 (left!42777 ys!41)))) 1)))))

(declare-fun b!5053773 () Bool)

(assert (=> b!5053773 (= e!3154989 (<= 0 (cheight!15749 (left!42777 ys!41))))))

(assert (= (and d!1626258 res!2151899) b!5053771))

(assert (= (and b!5053771 res!2151900) b!5053772))

(assert (= (and b!5053772 res!2151901) b!5053773))

(declare-fun m!6087898 () Bool)

(assert (=> d!1626258 m!6087898))

(declare-fun m!6087900 () Bool)

(assert (=> d!1626258 m!6087900))

(declare-fun m!6087902 () Bool)

(assert (=> b!5053772 m!6087902))

(declare-fun m!6087904 () Bool)

(assert (=> b!5053772 m!6087904))

(assert (=> b!5053772 m!6087902))

(assert (=> b!5053772 m!6087904))

(declare-fun m!6087906 () Bool)

(assert (=> b!5053772 m!6087906))

(assert (=> b!5053574 d!1626258))

(declare-fun d!1626260 () Bool)

(declare-fun lt!2087266 () Bool)

(assert (=> d!1626260 (= lt!2087266 (isEmpty!31588 (list!18953 (right!43107 ys!41))))))

(assert (=> d!1626260 (= lt!2087266 (= (size!39032 (right!43107 ys!41)) 0))))

(assert (=> d!1626260 (= (isEmpty!31586 (right!43107 ys!41)) lt!2087266)))

(declare-fun bs!1189302 () Bool)

(assert (= bs!1189302 d!1626260))

(declare-fun m!6087908 () Bool)

(assert (=> bs!1189302 m!6087908))

(assert (=> bs!1189302 m!6087908))

(declare-fun m!6087910 () Bool)

(assert (=> bs!1189302 m!6087910))

(assert (=> bs!1189302 m!6087860))

(assert (=> b!5053547 d!1626260))

(assert (=> b!5053548 d!1626190))

(assert (=> b!5053548 d!1626192))

(declare-fun b!5053775 () Bool)

(declare-fun res!2151906 () Bool)

(declare-fun e!3154991 () Bool)

(assert (=> b!5053775 (=> (not res!2151906) (not e!3154991))))

(assert (=> b!5053775 (= res!2151906 (isBalanced!4400 (left!42777 (right!43107 ys!41))))))

(declare-fun b!5053776 () Bool)

(declare-fun res!2151902 () Bool)

(assert (=> b!5053776 (=> (not res!2151902) (not e!3154991))))

(assert (=> b!5053776 (= res!2151902 (isBalanced!4400 (right!43107 (right!43107 ys!41))))))

(declare-fun b!5053777 () Bool)

(assert (=> b!5053777 (= e!3154991 (not (isEmpty!31586 (right!43107 (right!43107 ys!41)))))))

(declare-fun b!5053778 () Bool)

(declare-fun e!3154990 () Bool)

(assert (=> b!5053778 (= e!3154990 e!3154991)))

(declare-fun res!2151907 () Bool)

(assert (=> b!5053778 (=> (not res!2151907) (not e!3154991))))

(assert (=> b!5053778 (= res!2151907 (<= (- 1) (- (height!2115 (left!42777 (right!43107 ys!41))) (height!2115 (right!43107 (right!43107 ys!41))))))))

(declare-fun b!5053779 () Bool)

(declare-fun res!2151903 () Bool)

(assert (=> b!5053779 (=> (not res!2151903) (not e!3154991))))

(assert (=> b!5053779 (= res!2151903 (not (isEmpty!31586 (left!42777 (right!43107 ys!41)))))))

(declare-fun b!5053774 () Bool)

(declare-fun res!2151904 () Bool)

(assert (=> b!5053774 (=> (not res!2151904) (not e!3154991))))

(assert (=> b!5053774 (= res!2151904 (<= (- (height!2115 (left!42777 (right!43107 ys!41))) (height!2115 (right!43107 (right!43107 ys!41)))) 1))))

(declare-fun d!1626262 () Bool)

(declare-fun res!2151905 () Bool)

(assert (=> d!1626262 (=> res!2151905 e!3154990)))

(assert (=> d!1626262 (= res!2151905 (not ((_ is Node!15538) (right!43107 ys!41))))))

(assert (=> d!1626262 (= (isBalanced!4400 (right!43107 ys!41)) e!3154990)))

(assert (= (and d!1626262 (not res!2151905)) b!5053778))

(assert (= (and b!5053778 res!2151907) b!5053774))

(assert (= (and b!5053774 res!2151904) b!5053775))

(assert (= (and b!5053775 res!2151906) b!5053776))

(assert (= (and b!5053776 res!2151902) b!5053779))

(assert (= (and b!5053779 res!2151903) b!5053777))

(assert (=> b!5053778 m!6087790))

(assert (=> b!5053778 m!6087792))

(declare-fun m!6087912 () Bool)

(assert (=> b!5053775 m!6087912))

(assert (=> b!5053774 m!6087790))

(assert (=> b!5053774 m!6087792))

(declare-fun m!6087914 () Bool)

(assert (=> b!5053776 m!6087914))

(declare-fun m!6087916 () Bool)

(assert (=> b!5053777 m!6087916))

(declare-fun m!6087918 () Bool)

(assert (=> b!5053779 m!6087918))

(assert (=> b!5053546 d!1626262))

(declare-fun d!1626264 () Bool)

(declare-fun lt!2087267 () Bool)

(assert (=> d!1626264 (= lt!2087267 (isEmpty!31588 (list!18953 (left!42777 xs!286))))))

(assert (=> d!1626264 (= lt!2087267 (= (size!39032 (left!42777 xs!286)) 0))))

(assert (=> d!1626264 (= (isEmpty!31586 (left!42777 xs!286)) lt!2087267)))

(declare-fun bs!1189303 () Bool)

(assert (= bs!1189303 d!1626264))

(declare-fun m!6087920 () Bool)

(assert (=> bs!1189303 m!6087920))

(assert (=> bs!1189303 m!6087920))

(declare-fun m!6087922 () Bool)

(assert (=> bs!1189303 m!6087922))

(assert (=> bs!1189303 m!6087776))

(assert (=> b!5053603 d!1626264))

(declare-fun d!1626266 () Bool)

(declare-fun res!2151908 () Bool)

(declare-fun e!3154992 () Bool)

(assert (=> d!1626266 (=> (not res!2151908) (not e!3154992))))

(assert (=> d!1626266 (= res!2151908 (<= (size!39030 (list!18952 (xs!18868 xs!286))) 512))))

(assert (=> d!1626266 (= (inv!77415 xs!286) e!3154992)))

(declare-fun b!5053780 () Bool)

(declare-fun res!2151909 () Bool)

(assert (=> b!5053780 (=> (not res!2151909) (not e!3154992))))

(assert (=> b!5053780 (= res!2151909 (= (csize!31307 xs!286) (size!39030 (list!18952 (xs!18868 xs!286)))))))

(declare-fun b!5053781 () Bool)

(assert (=> b!5053781 (= e!3154992 (and (> (csize!31307 xs!286) 0) (<= (csize!31307 xs!286) 512)))))

(assert (= (and d!1626266 res!2151908) b!5053780))

(assert (= (and b!5053780 res!2151909) b!5053781))

(declare-fun m!6087924 () Bool)

(assert (=> d!1626266 m!6087924))

(assert (=> d!1626266 m!6087924))

(declare-fun m!6087926 () Bool)

(assert (=> d!1626266 m!6087926))

(assert (=> b!5053780 m!6087924))

(assert (=> b!5053780 m!6087924))

(assert (=> b!5053780 m!6087926))

(assert (=> b!5053606 d!1626266))

(declare-fun b!5053783 () Bool)

(declare-fun res!2151914 () Bool)

(declare-fun e!3154994 () Bool)

(assert (=> b!5053783 (=> (not res!2151914) (not e!3154994))))

(assert (=> b!5053783 (= res!2151914 (isBalanced!4400 (left!42777 (left!42777 ys!41))))))

(declare-fun b!5053784 () Bool)

(declare-fun res!2151910 () Bool)

(assert (=> b!5053784 (=> (not res!2151910) (not e!3154994))))

(assert (=> b!5053784 (= res!2151910 (isBalanced!4400 (right!43107 (left!42777 ys!41))))))

(declare-fun b!5053785 () Bool)

(assert (=> b!5053785 (= e!3154994 (not (isEmpty!31586 (right!43107 (left!42777 ys!41)))))))

(declare-fun b!5053786 () Bool)

(declare-fun e!3154993 () Bool)

(assert (=> b!5053786 (= e!3154993 e!3154994)))

(declare-fun res!2151915 () Bool)

(assert (=> b!5053786 (=> (not res!2151915) (not e!3154994))))

(assert (=> b!5053786 (= res!2151915 (<= (- 1) (- (height!2115 (left!42777 (left!42777 ys!41))) (height!2115 (right!43107 (left!42777 ys!41))))))))

(declare-fun b!5053787 () Bool)

(declare-fun res!2151911 () Bool)

(assert (=> b!5053787 (=> (not res!2151911) (not e!3154994))))

(assert (=> b!5053787 (= res!2151911 (not (isEmpty!31586 (left!42777 (left!42777 ys!41)))))))

(declare-fun b!5053782 () Bool)

(declare-fun res!2151912 () Bool)

(assert (=> b!5053782 (=> (not res!2151912) (not e!3154994))))

(assert (=> b!5053782 (= res!2151912 (<= (- (height!2115 (left!42777 (left!42777 ys!41))) (height!2115 (right!43107 (left!42777 ys!41)))) 1))))

(declare-fun d!1626268 () Bool)

(declare-fun res!2151913 () Bool)

(assert (=> d!1626268 (=> res!2151913 e!3154993)))

(assert (=> d!1626268 (= res!2151913 (not ((_ is Node!15538) (left!42777 ys!41))))))

(assert (=> d!1626268 (= (isBalanced!4400 (left!42777 ys!41)) e!3154993)))

(assert (= (and d!1626268 (not res!2151913)) b!5053786))

(assert (= (and b!5053786 res!2151915) b!5053782))

(assert (= (and b!5053782 res!2151912) b!5053783))

(assert (= (and b!5053783 res!2151914) b!5053784))

(assert (= (and b!5053784 res!2151910) b!5053787))

(assert (= (and b!5053787 res!2151911) b!5053785))

(assert (=> b!5053786 m!6087902))

(assert (=> b!5053786 m!6087904))

(declare-fun m!6087928 () Bool)

(assert (=> b!5053783 m!6087928))

(assert (=> b!5053782 m!6087902))

(assert (=> b!5053782 m!6087904))

(declare-fun m!6087930 () Bool)

(assert (=> b!5053784 m!6087930))

(declare-fun m!6087932 () Bool)

(assert (=> b!5053785 m!6087932))

(declare-fun m!6087934 () Bool)

(assert (=> b!5053787 m!6087934))

(assert (=> b!5053545 d!1626268))

(assert (=> b!5053602 d!1626152))

(assert (=> b!5053602 d!1626160))

(declare-fun b!5053788 () Bool)

(declare-fun tp!1412574 () Bool)

(declare-fun e!3154995 () Bool)

(declare-fun tp!1412575 () Bool)

(assert (=> b!5053788 (= e!3154995 (and (inv!77412 (left!42777 (left!42777 (left!42777 xs!286)))) tp!1412574 (inv!77412 (right!43107 (left!42777 (left!42777 xs!286)))) tp!1412575))))

(declare-fun b!5053790 () Bool)

(declare-fun e!3154996 () Bool)

(declare-fun tp!1412576 () Bool)

(assert (=> b!5053790 (= e!3154996 tp!1412576)))

(declare-fun b!5053789 () Bool)

(assert (=> b!5053789 (= e!3154995 (and (inv!77413 (xs!18868 (left!42777 (left!42777 xs!286)))) e!3154996))))

(assert (=> b!5053627 (= tp!1412536 (and (inv!77412 (left!42777 (left!42777 xs!286))) e!3154995))))

(assert (= (and b!5053627 ((_ is Node!15538) (left!42777 (left!42777 xs!286)))) b!5053788))

(assert (= b!5053789 b!5053790))

(assert (= (and b!5053627 ((_ is Leaf!25812) (left!42777 (left!42777 xs!286)))) b!5053789))

(declare-fun m!6087936 () Bool)

(assert (=> b!5053788 m!6087936))

(declare-fun m!6087938 () Bool)

(assert (=> b!5053788 m!6087938))

(declare-fun m!6087940 () Bool)

(assert (=> b!5053789 m!6087940))

(assert (=> b!5053627 m!6087670))

(declare-fun tp!1412578 () Bool)

(declare-fun tp!1412577 () Bool)

(declare-fun e!3154997 () Bool)

(declare-fun b!5053791 () Bool)

(assert (=> b!5053791 (= e!3154997 (and (inv!77412 (left!42777 (right!43107 (left!42777 xs!286)))) tp!1412577 (inv!77412 (right!43107 (right!43107 (left!42777 xs!286)))) tp!1412578))))

(declare-fun b!5053793 () Bool)

(declare-fun e!3154998 () Bool)

(declare-fun tp!1412579 () Bool)

(assert (=> b!5053793 (= e!3154998 tp!1412579)))

(declare-fun b!5053792 () Bool)

(assert (=> b!5053792 (= e!3154997 (and (inv!77413 (xs!18868 (right!43107 (left!42777 xs!286)))) e!3154998))))

(assert (=> b!5053627 (= tp!1412537 (and (inv!77412 (right!43107 (left!42777 xs!286))) e!3154997))))

(assert (= (and b!5053627 ((_ is Node!15538) (right!43107 (left!42777 xs!286)))) b!5053791))

(assert (= b!5053792 b!5053793))

(assert (= (and b!5053627 ((_ is Leaf!25812) (right!43107 (left!42777 xs!286)))) b!5053792))

(declare-fun m!6087942 () Bool)

(assert (=> b!5053791 m!6087942))

(declare-fun m!6087944 () Bool)

(assert (=> b!5053791 m!6087944))

(declare-fun m!6087946 () Bool)

(assert (=> b!5053792 m!6087946))

(assert (=> b!5053627 m!6087672))

(declare-fun b!5053794 () Bool)

(declare-fun e!3154999 () Bool)

(declare-fun tp!1412580 () Bool)

(assert (=> b!5053794 (= e!3154999 (and tp_is_empty!36997 tp!1412580))))

(assert (=> b!5053652 (= tp!1412550 e!3154999)))

(assert (= (and b!5053652 ((_ is Cons!58408) (t!371175 (innerList!15626 (xs!18868 xs!286))))) b!5053794))

(declare-fun b!5053795 () Bool)

(declare-fun e!3155000 () Bool)

(declare-fun tp!1412581 () Bool)

(assert (=> b!5053795 (= e!3155000 (and tp_is_empty!36997 tp!1412581))))

(assert (=> b!5053629 (= tp!1412538 e!3155000)))

(assert (= (and b!5053629 ((_ is Cons!58408) (innerList!15626 (xs!18868 (left!42777 xs!286))))) b!5053795))

(declare-fun b!5053796 () Bool)

(declare-fun tp!1412583 () Bool)

(declare-fun e!3155001 () Bool)

(declare-fun tp!1412582 () Bool)

(assert (=> b!5053796 (= e!3155001 (and (inv!77412 (left!42777 (left!42777 (left!42777 ys!41)))) tp!1412582 (inv!77412 (right!43107 (left!42777 (left!42777 ys!41)))) tp!1412583))))

(declare-fun b!5053798 () Bool)

(declare-fun e!3155002 () Bool)

(declare-fun tp!1412584 () Bool)

(assert (=> b!5053798 (= e!3155002 tp!1412584)))

(declare-fun b!5053797 () Bool)

(assert (=> b!5053797 (= e!3155001 (and (inv!77413 (xs!18868 (left!42777 (left!42777 ys!41)))) e!3155002))))

(assert (=> b!5053636 (= tp!1412542 (and (inv!77412 (left!42777 (left!42777 ys!41))) e!3155001))))

(assert (= (and b!5053636 ((_ is Node!15538) (left!42777 (left!42777 ys!41)))) b!5053796))

(assert (= b!5053797 b!5053798))

(assert (= (and b!5053636 ((_ is Leaf!25812) (left!42777 (left!42777 ys!41)))) b!5053797))

(declare-fun m!6087948 () Bool)

(assert (=> b!5053796 m!6087948))

(declare-fun m!6087950 () Bool)

(assert (=> b!5053796 m!6087950))

(declare-fun m!6087952 () Bool)

(assert (=> b!5053797 m!6087952))

(assert (=> b!5053636 m!6087686))

(declare-fun b!5053799 () Bool)

(declare-fun tp!1412586 () Bool)

(declare-fun tp!1412585 () Bool)

(declare-fun e!3155003 () Bool)

(assert (=> b!5053799 (= e!3155003 (and (inv!77412 (left!42777 (right!43107 (left!42777 ys!41)))) tp!1412585 (inv!77412 (right!43107 (right!43107 (left!42777 ys!41)))) tp!1412586))))

(declare-fun b!5053801 () Bool)

(declare-fun e!3155004 () Bool)

(declare-fun tp!1412587 () Bool)

(assert (=> b!5053801 (= e!3155004 tp!1412587)))

(declare-fun b!5053800 () Bool)

(assert (=> b!5053800 (= e!3155003 (and (inv!77413 (xs!18868 (right!43107 (left!42777 ys!41)))) e!3155004))))

(assert (=> b!5053636 (= tp!1412543 (and (inv!77412 (right!43107 (left!42777 ys!41))) e!3155003))))

(assert (= (and b!5053636 ((_ is Node!15538) (right!43107 (left!42777 ys!41)))) b!5053799))

(assert (= b!5053800 b!5053801))

(assert (= (and b!5053636 ((_ is Leaf!25812) (right!43107 (left!42777 ys!41)))) b!5053800))

(declare-fun m!6087954 () Bool)

(assert (=> b!5053799 m!6087954))

(declare-fun m!6087956 () Bool)

(assert (=> b!5053799 m!6087956))

(declare-fun m!6087958 () Bool)

(assert (=> b!5053800 m!6087958))

(assert (=> b!5053636 m!6087688))

(declare-fun b!5053802 () Bool)

(declare-fun e!3155005 () Bool)

(declare-fun tp!1412588 () Bool)

(assert (=> b!5053802 (= e!3155005 (and tp_is_empty!36997 tp!1412588))))

(assert (=> b!5053635 (= tp!1412541 e!3155005)))

(assert (= (and b!5053635 ((_ is Cons!58408) (innerList!15626 (xs!18868 (right!43107 xs!286))))) b!5053802))

(declare-fun b!5053803 () Bool)

(declare-fun e!3155006 () Bool)

(declare-fun tp!1412589 () Bool)

(assert (=> b!5053803 (= e!3155006 (and tp_is_empty!36997 tp!1412589))))

(assert (=> b!5053647 (= tp!1412547 e!3155006)))

(assert (= (and b!5053647 ((_ is Cons!58408) (innerList!15626 (xs!18868 (right!43107 ys!41))))) b!5053803))

(declare-fun tp!1412591 () Bool)

(declare-fun tp!1412590 () Bool)

(declare-fun b!5053804 () Bool)

(declare-fun e!3155007 () Bool)

(assert (=> b!5053804 (= e!3155007 (and (inv!77412 (left!42777 (left!42777 (right!43107 xs!286)))) tp!1412590 (inv!77412 (right!43107 (left!42777 (right!43107 xs!286)))) tp!1412591))))

(declare-fun b!5053806 () Bool)

(declare-fun e!3155008 () Bool)

(declare-fun tp!1412592 () Bool)

(assert (=> b!5053806 (= e!3155008 tp!1412592)))

(declare-fun b!5053805 () Bool)

(assert (=> b!5053805 (= e!3155007 (and (inv!77413 (xs!18868 (left!42777 (right!43107 xs!286)))) e!3155008))))

(assert (=> b!5053633 (= tp!1412539 (and (inv!77412 (left!42777 (right!43107 xs!286))) e!3155007))))

(assert (= (and b!5053633 ((_ is Node!15538) (left!42777 (right!43107 xs!286)))) b!5053804))

(assert (= b!5053805 b!5053806))

(assert (= (and b!5053633 ((_ is Leaf!25812) (left!42777 (right!43107 xs!286)))) b!5053805))

(declare-fun m!6087960 () Bool)

(assert (=> b!5053804 m!6087960))

(declare-fun m!6087962 () Bool)

(assert (=> b!5053804 m!6087962))

(declare-fun m!6087964 () Bool)

(assert (=> b!5053805 m!6087964))

(assert (=> b!5053633 m!6087678))

(declare-fun b!5053807 () Bool)

(declare-fun e!3155009 () Bool)

(declare-fun tp!1412594 () Bool)

(declare-fun tp!1412593 () Bool)

(assert (=> b!5053807 (= e!3155009 (and (inv!77412 (left!42777 (right!43107 (right!43107 xs!286)))) tp!1412593 (inv!77412 (right!43107 (right!43107 (right!43107 xs!286)))) tp!1412594))))

(declare-fun b!5053809 () Bool)

(declare-fun e!3155010 () Bool)

(declare-fun tp!1412595 () Bool)

(assert (=> b!5053809 (= e!3155010 tp!1412595)))

(declare-fun b!5053808 () Bool)

(assert (=> b!5053808 (= e!3155009 (and (inv!77413 (xs!18868 (right!43107 (right!43107 xs!286)))) e!3155010))))

(assert (=> b!5053633 (= tp!1412540 (and (inv!77412 (right!43107 (right!43107 xs!286))) e!3155009))))

(assert (= (and b!5053633 ((_ is Node!15538) (right!43107 (right!43107 xs!286)))) b!5053807))

(assert (= b!5053808 b!5053809))

(assert (= (and b!5053633 ((_ is Leaf!25812) (right!43107 (right!43107 xs!286)))) b!5053808))

(declare-fun m!6087966 () Bool)

(assert (=> b!5053807 m!6087966))

(declare-fun m!6087968 () Bool)

(assert (=> b!5053807 m!6087968))

(declare-fun m!6087970 () Bool)

(assert (=> b!5053808 m!6087970))

(assert (=> b!5053633 m!6087682))

(declare-fun tp!1412597 () Bool)

(declare-fun tp!1412596 () Bool)

(declare-fun b!5053810 () Bool)

(declare-fun e!3155011 () Bool)

(assert (=> b!5053810 (= e!3155011 (and (inv!77412 (left!42777 (left!42777 (right!43107 ys!41)))) tp!1412596 (inv!77412 (right!43107 (left!42777 (right!43107 ys!41)))) tp!1412597))))

(declare-fun b!5053812 () Bool)

(declare-fun e!3155012 () Bool)

(declare-fun tp!1412598 () Bool)

(assert (=> b!5053812 (= e!3155012 tp!1412598)))

(declare-fun b!5053811 () Bool)

(assert (=> b!5053811 (= e!3155011 (and (inv!77413 (xs!18868 (left!42777 (right!43107 ys!41)))) e!3155012))))

(assert (=> b!5053645 (= tp!1412545 (and (inv!77412 (left!42777 (right!43107 ys!41))) e!3155011))))

(assert (= (and b!5053645 ((_ is Node!15538) (left!42777 (right!43107 ys!41)))) b!5053810))

(assert (= b!5053811 b!5053812))

(assert (= (and b!5053645 ((_ is Leaf!25812) (left!42777 (right!43107 ys!41)))) b!5053811))

(declare-fun m!6087972 () Bool)

(assert (=> b!5053810 m!6087972))

(declare-fun m!6087974 () Bool)

(assert (=> b!5053810 m!6087974))

(declare-fun m!6087976 () Bool)

(assert (=> b!5053811 m!6087976))

(assert (=> b!5053645 m!6087692))

(declare-fun tp!1412599 () Bool)

(declare-fun tp!1412600 () Bool)

(declare-fun b!5053813 () Bool)

(declare-fun e!3155013 () Bool)

(assert (=> b!5053813 (= e!3155013 (and (inv!77412 (left!42777 (right!43107 (right!43107 ys!41)))) tp!1412599 (inv!77412 (right!43107 (right!43107 (right!43107 ys!41)))) tp!1412600))))

(declare-fun b!5053815 () Bool)

(declare-fun e!3155014 () Bool)

(declare-fun tp!1412601 () Bool)

(assert (=> b!5053815 (= e!3155014 tp!1412601)))

(declare-fun b!5053814 () Bool)

(assert (=> b!5053814 (= e!3155013 (and (inv!77413 (xs!18868 (right!43107 (right!43107 ys!41)))) e!3155014))))

(assert (=> b!5053645 (= tp!1412546 (and (inv!77412 (right!43107 (right!43107 ys!41))) e!3155013))))

(assert (= (and b!5053645 ((_ is Node!15538) (right!43107 (right!43107 ys!41)))) b!5053813))

(assert (= b!5053814 b!5053815))

(assert (= (and b!5053645 ((_ is Leaf!25812) (right!43107 (right!43107 ys!41)))) b!5053814))

(declare-fun m!6087978 () Bool)

(assert (=> b!5053813 m!6087978))

(declare-fun m!6087980 () Bool)

(assert (=> b!5053813 m!6087980))

(declare-fun m!6087982 () Bool)

(assert (=> b!5053814 m!6087982))

(assert (=> b!5053645 m!6087694))

(declare-fun b!5053816 () Bool)

(declare-fun e!3155015 () Bool)

(declare-fun tp!1412602 () Bool)

(assert (=> b!5053816 (= e!3155015 (and tp_is_empty!36997 tp!1412602))))

(assert (=> b!5053638 (= tp!1412544 e!3155015)))

(assert (= (and b!5053638 ((_ is Cons!58408) (innerList!15626 (xs!18868 (left!42777 ys!41))))) b!5053816))

(declare-fun b!5053817 () Bool)

(declare-fun e!3155016 () Bool)

(declare-fun tp!1412603 () Bool)

(assert (=> b!5053817 (= e!3155016 (and tp_is_empty!36997 tp!1412603))))

(assert (=> b!5053656 (= tp!1412551 e!3155016)))

(assert (= (and b!5053656 ((_ is Cons!58408) (t!371175 (innerList!15626 (xs!18868 ys!41))))) b!5053817))

(check-sat (not d!1626216) (not d!1626240) (not b!5053810) (not b!5053636) (not b!5053723) (not b!5053738) (not b!5053774) (not b!5053741) (not b!5053756) (not b!5053789) (not b!5053684) (not b!5053815) (not b!5053746) (not b!5053802) (not b!5053731) (not b!5053812) (not b!5053808) (not b!5053807) (not b!5053809) (not d!1626236) (not b!5053796) (not d!1626188) (not b!5053727) (not d!1626226) (not b!5053718) (not d!1626202) (not b!5053782) (not b!5053801) (not b!5053788) (not b!5053767) (not d!1626196) (not b!5053804) (not d!1626200) (not b!5053791) (not d!1626218) (not b!5053720) (not d!1626266) (not b!5053735) (not b!5053737) (not b!5053772) (not d!1626224) (not b!5053744) tp_is_empty!36997 (not b!5053724) (not b!5053775) (not b!5053693) (not b!5053816) (not b!5053787) (not b!5053729) (not b!5053811) (not b!5053793) (not d!1626252) (not b!5053726) (not b!5053721) (not b!5053733) (not b!5053803) (not b!5053755) (not b!5053713) (not b!5053806) (not d!1626210) (not b!5053768) (not b!5053814) (not d!1626248) (not b!5053722) (not b!5053698) (not b!5053692) (not b!5053707) (not b!5053725) (not b!5053695) (not b!5053732) (not b!5053710) (not b!5053795) (not b!5053633) (not b!5053681) (not b!5053680) (not b!5053792) (not b!5053790) (not d!1626204) (not b!5053799) (not d!1626242) (not b!5053690) (not b!5053817) (not b!5053794) (not b!5053779) (not b!5053780) (not b!5053783) (not b!5053683) (not d!1626194) (not b!5053730) (not b!5053694) (not b!5053627) (not b!5053748) (not b!5053800) (not b!5053778) (not b!5053785) (not d!1626264) (not b!5053717) (not b!5053645) (not b!5053763) (not d!1626260) (not b!5053728) (not b!5053740) (not d!1626244) (not d!1626250) (not b!5053685) (not b!5053797) (not b!5053784) (not b!5053805) (not b!5053743) (not d!1626258) (not b!5053696) (not b!5053761) (not b!5053813) (not b!5053770) (not b!5053776) (not b!5053777) (not b!5053697) (not b!5053715) (not b!5053682) (not b!5053798) (not b!5053765) (not b!5053758) (not b!5053786))
(check-sat)
