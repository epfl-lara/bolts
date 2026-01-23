; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536178 () Bool)

(assert start!536178)

(declare-fun b!5088768 () Bool)

(declare-datatypes ((T!105454 0))(
  ( (T!105455 (val!23700 Int)) )
))
(declare-datatypes ((List!58625 0))(
  ( (Nil!58501) (Cons!58501 (h!64949 T!105454) (t!371498 List!58625)) )
))
(declare-datatypes ((IArray!31293 0))(
  ( (IArray!31294 (innerList!15704 List!58625)) )
))
(declare-datatypes ((Conc!15616 0))(
  ( (Node!15616 (left!42896 Conc!15616) (right!43226 Conc!15616) (csize!31462 Int) (cheight!15827 Int)) (Leaf!25929 (xs!18998 IArray!31293) (csize!31463 Int)) (Empty!15616) )
))
(declare-fun t!3643 () Conc!15616)

(declare-fun e!3173718 () Bool)

(declare-fun tp!1418679 () Bool)

(declare-fun tp!1418681 () Bool)

(declare-fun inv!77833 (Conc!15616) Bool)

(assert (=> b!5088768 (= e!3173718 (and (inv!77833 (left!42896 t!3643)) tp!1418681 (inv!77833 (right!43226 t!3643)) tp!1418679))))

(declare-fun b!5088769 () Bool)

(declare-fun e!3173720 () Bool)

(declare-fun tp!1418680 () Bool)

(assert (=> b!5088769 (= e!3173720 tp!1418680)))

(declare-fun b!5088770 () Bool)

(declare-fun inv!77834 (IArray!31293) Bool)

(assert (=> b!5088770 (= e!3173718 (and (inv!77834 (xs!18998 t!3643)) e!3173720))))

(declare-fun b!5088771 () Bool)

(declare-fun e!3173719 () Bool)

(declare-fun i!607 () Int)

(declare-fun size!39174 (List!58625) Int)

(declare-fun list!19067 (Conc!15616) List!58625)

(assert (=> b!5088771 (= e!3173719 (>= i!607 (size!39174 (list!19067 t!3643))))))

(declare-fun lt!2092126 () T!105454)

(declare-fun apply!14248 (IArray!31293 Int) T!105454)

(assert (=> b!5088771 (= lt!2092126 (apply!14248 (xs!18998 t!3643) i!607))))

(declare-fun res!2166266 () Bool)

(assert (=> start!536178 (=> (not res!2166266) (not e!3173719))))

(assert (=> start!536178 (= res!2166266 (<= 0 i!607))))

(assert (=> start!536178 e!3173719))

(assert (=> start!536178 true))

(assert (=> start!536178 (and (inv!77833 t!3643) e!3173718)))

(declare-fun b!5088772 () Bool)

(declare-fun res!2166267 () Bool)

(assert (=> b!5088772 (=> (not res!2166267) (not e!3173719))))

(declare-fun size!39175 (Conc!15616) Int)

(assert (=> b!5088772 (= res!2166267 (< i!607 (size!39175 t!3643)))))

(declare-fun b!5088773 () Bool)

(declare-fun res!2166265 () Bool)

(assert (=> b!5088773 (=> (not res!2166265) (not e!3173719))))

(declare-fun list!19068 (IArray!31293) List!58625)

(assert (=> b!5088773 (= res!2166265 (<= (size!39174 (list!19068 (xs!18998 t!3643))) 512))))

(declare-fun b!5088774 () Bool)

(declare-fun res!2166268 () Bool)

(assert (=> b!5088774 (=> (not res!2166268) (not e!3173719))))

(get-info :version)

(assert (=> b!5088774 (= res!2166268 (and ((_ is Leaf!25929) t!3643) (>= i!607 0) (< i!607 (csize!31463 t!3643))))))

(assert (= (and start!536178 res!2166266) b!5088772))

(assert (= (and b!5088772 res!2166267) b!5088774))

(assert (= (and b!5088774 res!2166268) b!5088773))

(assert (= (and b!5088773 res!2166265) b!5088771))

(assert (= (and start!536178 ((_ is Node!15616) t!3643)) b!5088768))

(assert (= b!5088770 b!5088769))

(assert (= (and start!536178 ((_ is Leaf!25929) t!3643)) b!5088770))

(declare-fun m!6146674 () Bool)

(assert (=> b!5088768 m!6146674))

(declare-fun m!6146676 () Bool)

(assert (=> b!5088768 m!6146676))

(declare-fun m!6146678 () Bool)

(assert (=> b!5088771 m!6146678))

(assert (=> b!5088771 m!6146678))

(declare-fun m!6146680 () Bool)

(assert (=> b!5088771 m!6146680))

(declare-fun m!6146682 () Bool)

(assert (=> b!5088771 m!6146682))

(declare-fun m!6146684 () Bool)

(assert (=> b!5088770 m!6146684))

(declare-fun m!6146686 () Bool)

(assert (=> b!5088773 m!6146686))

(assert (=> b!5088773 m!6146686))

(declare-fun m!6146688 () Bool)

(assert (=> b!5088773 m!6146688))

(declare-fun m!6146690 () Bool)

(assert (=> start!536178 m!6146690))

(declare-fun m!6146692 () Bool)

(assert (=> b!5088772 m!6146692))

(check-sat (not b!5088771) (not b!5088770) (not b!5088772) (not b!5088768) (not b!5088769) (not start!536178) (not b!5088773))
(check-sat)
(get-model)

(declare-fun d!1647133 () Bool)

(declare-fun c!874391 () Bool)

(assert (=> d!1647133 (= c!874391 ((_ is Node!15616) t!3643))))

(declare-fun e!3173725 () Bool)

(assert (=> d!1647133 (= (inv!77833 t!3643) e!3173725)))

(declare-fun b!5088781 () Bool)

(declare-fun inv!77835 (Conc!15616) Bool)

(assert (=> b!5088781 (= e!3173725 (inv!77835 t!3643))))

(declare-fun b!5088782 () Bool)

(declare-fun e!3173726 () Bool)

(assert (=> b!5088782 (= e!3173725 e!3173726)))

(declare-fun res!2166271 () Bool)

(assert (=> b!5088782 (= res!2166271 (not ((_ is Leaf!25929) t!3643)))))

(assert (=> b!5088782 (=> res!2166271 e!3173726)))

(declare-fun b!5088783 () Bool)

(declare-fun inv!77836 (Conc!15616) Bool)

(assert (=> b!5088783 (= e!3173726 (inv!77836 t!3643))))

(assert (= (and d!1647133 c!874391) b!5088781))

(assert (= (and d!1647133 (not c!874391)) b!5088782))

(assert (= (and b!5088782 (not res!2166271)) b!5088783))

(declare-fun m!6146696 () Bool)

(assert (=> b!5088781 m!6146696))

(declare-fun m!6146698 () Bool)

(assert (=> b!5088783 m!6146698))

(assert (=> start!536178 d!1647133))

(declare-fun d!1647141 () Bool)

(declare-fun c!874392 () Bool)

(assert (=> d!1647141 (= c!874392 ((_ is Node!15616) (left!42896 t!3643)))))

(declare-fun e!3173727 () Bool)

(assert (=> d!1647141 (= (inv!77833 (left!42896 t!3643)) e!3173727)))

(declare-fun b!5088784 () Bool)

(assert (=> b!5088784 (= e!3173727 (inv!77835 (left!42896 t!3643)))))

(declare-fun b!5088785 () Bool)

(declare-fun e!3173728 () Bool)

(assert (=> b!5088785 (= e!3173727 e!3173728)))

(declare-fun res!2166272 () Bool)

(assert (=> b!5088785 (= res!2166272 (not ((_ is Leaf!25929) (left!42896 t!3643))))))

(assert (=> b!5088785 (=> res!2166272 e!3173728)))

(declare-fun b!5088786 () Bool)

(assert (=> b!5088786 (= e!3173728 (inv!77836 (left!42896 t!3643)))))

(assert (= (and d!1647141 c!874392) b!5088784))

(assert (= (and d!1647141 (not c!874392)) b!5088785))

(assert (= (and b!5088785 (not res!2166272)) b!5088786))

(declare-fun m!6146700 () Bool)

(assert (=> b!5088784 m!6146700))

(declare-fun m!6146702 () Bool)

(assert (=> b!5088786 m!6146702))

(assert (=> b!5088768 d!1647141))

(declare-fun d!1647143 () Bool)

(declare-fun c!874393 () Bool)

(assert (=> d!1647143 (= c!874393 ((_ is Node!15616) (right!43226 t!3643)))))

(declare-fun e!3173729 () Bool)

(assert (=> d!1647143 (= (inv!77833 (right!43226 t!3643)) e!3173729)))

(declare-fun b!5088787 () Bool)

(assert (=> b!5088787 (= e!3173729 (inv!77835 (right!43226 t!3643)))))

(declare-fun b!5088788 () Bool)

(declare-fun e!3173730 () Bool)

(assert (=> b!5088788 (= e!3173729 e!3173730)))

(declare-fun res!2166273 () Bool)

(assert (=> b!5088788 (= res!2166273 (not ((_ is Leaf!25929) (right!43226 t!3643))))))

(assert (=> b!5088788 (=> res!2166273 e!3173730)))

(declare-fun b!5088789 () Bool)

(assert (=> b!5088789 (= e!3173730 (inv!77836 (right!43226 t!3643)))))

(assert (= (and d!1647143 c!874393) b!5088787))

(assert (= (and d!1647143 (not c!874393)) b!5088788))

(assert (= (and b!5088788 (not res!2166273)) b!5088789))

(declare-fun m!6146704 () Bool)

(assert (=> b!5088787 m!6146704))

(declare-fun m!6146706 () Bool)

(assert (=> b!5088789 m!6146706))

(assert (=> b!5088768 d!1647143))

(declare-fun d!1647145 () Bool)

(declare-fun lt!2092135 () Int)

(assert (=> d!1647145 (>= lt!2092135 0)))

(declare-fun e!3173736 () Int)

(assert (=> d!1647145 (= lt!2092135 e!3173736)))

(declare-fun c!874399 () Bool)

(assert (=> d!1647145 (= c!874399 ((_ is Nil!58501) (list!19068 (xs!18998 t!3643))))))

(assert (=> d!1647145 (= (size!39174 (list!19068 (xs!18998 t!3643))) lt!2092135)))

(declare-fun b!5088800 () Bool)

(assert (=> b!5088800 (= e!3173736 0)))

(declare-fun b!5088801 () Bool)

(assert (=> b!5088801 (= e!3173736 (+ 1 (size!39174 (t!371498 (list!19068 (xs!18998 t!3643))))))))

(assert (= (and d!1647145 c!874399) b!5088800))

(assert (= (and d!1647145 (not c!874399)) b!5088801))

(declare-fun m!6146710 () Bool)

(assert (=> b!5088801 m!6146710))

(assert (=> b!5088773 d!1647145))

(declare-fun d!1647151 () Bool)

(assert (=> d!1647151 (= (list!19068 (xs!18998 t!3643)) (innerList!15704 (xs!18998 t!3643)))))

(assert (=> b!5088773 d!1647151))

(declare-fun d!1647153 () Bool)

(assert (=> d!1647153 (= (inv!77834 (xs!18998 t!3643)) (<= (size!39174 (innerList!15704 (xs!18998 t!3643))) 2147483647))))

(declare-fun bs!1191066 () Bool)

(assert (= bs!1191066 d!1647153))

(declare-fun m!6146712 () Bool)

(assert (=> bs!1191066 m!6146712))

(assert (=> b!5088770 d!1647153))

(declare-fun d!1647155 () Bool)

(declare-fun lt!2092136 () Int)

(assert (=> d!1647155 (>= lt!2092136 0)))

(declare-fun e!3173737 () Int)

(assert (=> d!1647155 (= lt!2092136 e!3173737)))

(declare-fun c!874400 () Bool)

(assert (=> d!1647155 (= c!874400 ((_ is Nil!58501) (list!19067 t!3643)))))

(assert (=> d!1647155 (= (size!39174 (list!19067 t!3643)) lt!2092136)))

(declare-fun b!5088802 () Bool)

(assert (=> b!5088802 (= e!3173737 0)))

(declare-fun b!5088803 () Bool)

(assert (=> b!5088803 (= e!3173737 (+ 1 (size!39174 (t!371498 (list!19067 t!3643)))))))

(assert (= (and d!1647155 c!874400) b!5088802))

(assert (= (and d!1647155 (not c!874400)) b!5088803))

(declare-fun m!6146714 () Bool)

(assert (=> b!5088803 m!6146714))

(assert (=> b!5088771 d!1647155))

(declare-fun d!1647157 () Bool)

(declare-fun c!874411 () Bool)

(assert (=> d!1647157 (= c!874411 ((_ is Empty!15616) t!3643))))

(declare-fun e!3173753 () List!58625)

(assert (=> d!1647157 (= (list!19067 t!3643) e!3173753)))

(declare-fun b!5088829 () Bool)

(assert (=> b!5088829 (= e!3173753 Nil!58501)))

(declare-fun b!5088830 () Bool)

(declare-fun e!3173754 () List!58625)

(assert (=> b!5088830 (= e!3173753 e!3173754)))

(declare-fun c!874412 () Bool)

(assert (=> b!5088830 (= c!874412 ((_ is Leaf!25929) t!3643))))

(declare-fun b!5088832 () Bool)

(declare-fun ++!12822 (List!58625 List!58625) List!58625)

(assert (=> b!5088832 (= e!3173754 (++!12822 (list!19067 (left!42896 t!3643)) (list!19067 (right!43226 t!3643))))))

(declare-fun b!5088831 () Bool)

(assert (=> b!5088831 (= e!3173754 (list!19068 (xs!18998 t!3643)))))

(assert (= (and d!1647157 c!874411) b!5088829))

(assert (= (and d!1647157 (not c!874411)) b!5088830))

(assert (= (and b!5088830 c!874412) b!5088831))

(assert (= (and b!5088830 (not c!874412)) b!5088832))

(declare-fun m!6146730 () Bool)

(assert (=> b!5088832 m!6146730))

(declare-fun m!6146732 () Bool)

(assert (=> b!5088832 m!6146732))

(assert (=> b!5088832 m!6146730))

(assert (=> b!5088832 m!6146732))

(declare-fun m!6146734 () Bool)

(assert (=> b!5088832 m!6146734))

(assert (=> b!5088831 m!6146686))

(assert (=> b!5088771 d!1647157))

(declare-fun d!1647167 () Bool)

(declare-fun lt!2092140 () T!105454)

(declare-fun apply!14249 (List!58625 Int) T!105454)

(assert (=> d!1647167 (= lt!2092140 (apply!14249 (list!19068 (xs!18998 t!3643)) i!607))))

(declare-fun choose!37290 (IArray!31293 Int) T!105454)

(assert (=> d!1647167 (= lt!2092140 (choose!37290 (xs!18998 t!3643) i!607))))

(declare-fun e!3173763 () Bool)

(assert (=> d!1647167 e!3173763))

(declare-fun res!2166281 () Bool)

(assert (=> d!1647167 (=> (not res!2166281) (not e!3173763))))

(assert (=> d!1647167 (= res!2166281 (<= 0 i!607))))

(assert (=> d!1647167 (= (apply!14248 (xs!18998 t!3643) i!607) lt!2092140)))

(declare-fun b!5088847 () Bool)

(declare-fun size!39176 (IArray!31293) Int)

(assert (=> b!5088847 (= e!3173763 (< i!607 (size!39176 (xs!18998 t!3643))))))

(assert (= (and d!1647167 res!2166281) b!5088847))

(assert (=> d!1647167 m!6146686))

(assert (=> d!1647167 m!6146686))

(declare-fun m!6146742 () Bool)

(assert (=> d!1647167 m!6146742))

(declare-fun m!6146744 () Bool)

(assert (=> d!1647167 m!6146744))

(declare-fun m!6146746 () Bool)

(assert (=> b!5088847 m!6146746))

(assert (=> b!5088771 d!1647167))

(declare-fun d!1647171 () Bool)

(declare-fun lt!2092145 () Int)

(assert (=> d!1647171 (= lt!2092145 (size!39174 (list!19067 t!3643)))))

(assert (=> d!1647171 (= lt!2092145 (ite ((_ is Empty!15616) t!3643) 0 (ite ((_ is Leaf!25929) t!3643) (csize!31463 t!3643) (csize!31462 t!3643))))))

(assert (=> d!1647171 (= (size!39175 t!3643) lt!2092145)))

(declare-fun bs!1191067 () Bool)

(assert (= bs!1191067 d!1647171))

(assert (=> bs!1191067 m!6146678))

(assert (=> bs!1191067 m!6146678))

(assert (=> bs!1191067 m!6146680))

(assert (=> b!5088772 d!1647171))

(declare-fun e!3173776 () Bool)

(declare-fun tp!1418695 () Bool)

(declare-fun tp!1418696 () Bool)

(declare-fun b!5088867 () Bool)

(assert (=> b!5088867 (= e!3173776 (and (inv!77833 (left!42896 (left!42896 t!3643))) tp!1418695 (inv!77833 (right!43226 (left!42896 t!3643))) tp!1418696))))

(declare-fun b!5088869 () Bool)

(declare-fun e!3173775 () Bool)

(declare-fun tp!1418694 () Bool)

(assert (=> b!5088869 (= e!3173775 tp!1418694)))

(declare-fun b!5088868 () Bool)

(assert (=> b!5088868 (= e!3173776 (and (inv!77834 (xs!18998 (left!42896 t!3643))) e!3173775))))

(assert (=> b!5088768 (= tp!1418681 (and (inv!77833 (left!42896 t!3643)) e!3173776))))

(assert (= (and b!5088768 ((_ is Node!15616) (left!42896 t!3643))) b!5088867))

(assert (= b!5088868 b!5088869))

(assert (= (and b!5088768 ((_ is Leaf!25929) (left!42896 t!3643))) b!5088868))

(declare-fun m!6146754 () Bool)

(assert (=> b!5088867 m!6146754))

(declare-fun m!6146756 () Bool)

(assert (=> b!5088867 m!6146756))

(declare-fun m!6146758 () Bool)

(assert (=> b!5088868 m!6146758))

(assert (=> b!5088768 m!6146674))

(declare-fun b!5088870 () Bool)

(declare-fun tp!1418698 () Bool)

(declare-fun tp!1418699 () Bool)

(declare-fun e!3173778 () Bool)

(assert (=> b!5088870 (= e!3173778 (and (inv!77833 (left!42896 (right!43226 t!3643))) tp!1418698 (inv!77833 (right!43226 (right!43226 t!3643))) tp!1418699))))

(declare-fun b!5088872 () Bool)

(declare-fun e!3173777 () Bool)

(declare-fun tp!1418697 () Bool)

(assert (=> b!5088872 (= e!3173777 tp!1418697)))

(declare-fun b!5088871 () Bool)

(assert (=> b!5088871 (= e!3173778 (and (inv!77834 (xs!18998 (right!43226 t!3643))) e!3173777))))

(assert (=> b!5088768 (= tp!1418679 (and (inv!77833 (right!43226 t!3643)) e!3173778))))

(assert (= (and b!5088768 ((_ is Node!15616) (right!43226 t!3643))) b!5088870))

(assert (= b!5088871 b!5088872))

(assert (= (and b!5088768 ((_ is Leaf!25929) (right!43226 t!3643))) b!5088871))

(declare-fun m!6146760 () Bool)

(assert (=> b!5088870 m!6146760))

(declare-fun m!6146762 () Bool)

(assert (=> b!5088870 m!6146762))

(declare-fun m!6146764 () Bool)

(assert (=> b!5088871 m!6146764))

(assert (=> b!5088768 m!6146676))

(declare-fun b!5088883 () Bool)

(declare-fun e!3173785 () Bool)

(declare-fun tp_is_empty!37113 () Bool)

(declare-fun tp!1418708 () Bool)

(assert (=> b!5088883 (= e!3173785 (and tp_is_empty!37113 tp!1418708))))

(assert (=> b!5088769 (= tp!1418680 e!3173785)))

(assert (= (and b!5088769 ((_ is Cons!58501) (innerList!15704 (xs!18998 t!3643)))) b!5088883))

(check-sat (not d!1647153) (not d!1647167) (not b!5088789) (not b!5088883) (not b!5088786) tp_is_empty!37113 (not b!5088781) (not b!5088870) (not b!5088783) (not b!5088832) (not b!5088801) (not b!5088803) (not b!5088872) (not b!5088867) (not b!5088868) (not b!5088871) (not b!5088831) (not d!1647171) (not b!5088768) (not b!5088784) (not b!5088869) (not b!5088847) (not b!5088787))
(check-sat)
