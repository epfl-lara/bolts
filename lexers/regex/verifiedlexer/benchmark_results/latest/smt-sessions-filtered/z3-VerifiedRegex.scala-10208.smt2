; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532730 () Bool)

(assert start!532730)

(declare-fun b!5035737 () Bool)

(declare-datatypes ((T!104026 0))(
  ( (T!104027 (val!23492 Int)) )
))
(declare-datatypes ((List!58402 0))(
  ( (Nil!58278) (Cons!58278 (h!64726 T!104026) (t!370877 List!58402)) )
))
(declare-datatypes ((tuple2!63198 0))(
  ( (tuple2!63199 (_1!34902 List!58402) (_2!34902 List!58402)) )
))
(declare-fun lt!2083418 () tuple2!63198)

(declare-fun call!351272 () tuple2!63198)

(assert (=> b!5035737 (= lt!2083418 call!351272)))

(declare-fun e!3145404 () tuple2!63198)

(declare-fun call!351271 () List!58402)

(assert (=> b!5035737 (= e!3145404 (tuple2!63199 call!351271 (_2!34902 lt!2083418)))))

(declare-fun c!862531 () Bool)

(declare-fun bm!351266 () Bool)

(declare-fun lt!2083421 () List!58402)

(declare-fun lt!2083423 () List!58402)

(declare-fun lt!2083420 () tuple2!63198)

(declare-fun ++!12707 (List!58402 List!58402) List!58402)

(assert (=> bm!351266 (= call!351271 (++!12707 (ite c!862531 (_2!34902 lt!2083420) lt!2083423) (ite c!862531 lt!2083421 (_1!34902 lt!2083418))))))

(declare-fun b!5035738 () Bool)

(declare-fun res!2145746 () Bool)

(declare-fun e!3145405 () Bool)

(assert (=> b!5035738 (=> (not res!2145746) (not e!3145405))))

(declare-datatypes ((IArray!31041 0))(
  ( (IArray!31042 (innerList!15578 List!58402)) )
))
(declare-datatypes ((Conc!15490 0))(
  ( (Node!15490 (left!42664 Conc!15490) (right!42994 Conc!15490) (csize!31210 Int) (cheight!15701 Int)) (Leaf!25699 (xs!18816 IArray!31041) (csize!31211 Int)) (Empty!15490) )
))
(declare-fun t!4198 () Conc!15490)

(get-info :version)

(assert (=> b!5035738 (= res!2145746 (and (not ((_ is Empty!15490) t!4198)) (not ((_ is Leaf!25699) t!4198))))))

(declare-fun b!5035739 () Bool)

(declare-fun e!3145403 () Bool)

(declare-fun isBalanced!4352 (Conc!15490) Bool)

(assert (=> b!5035739 (= e!3145403 (isBalanced!4352 (right!42994 t!4198)))))

(declare-fun b!5035740 () Bool)

(declare-fun e!3145406 () Bool)

(declare-fun lt!2083417 () tuple2!63198)

(assert (=> b!5035740 (= e!3145406 (= lt!2083417 e!3145404))))

(declare-fun i!618 () Int)

(declare-fun lt!2083424 () Int)

(assert (=> b!5035740 (= c!862531 (< i!618 lt!2083424))))

(declare-fun e!3145402 () Bool)

(declare-fun tp!1410259 () Bool)

(declare-fun b!5035741 () Bool)

(declare-fun tp!1410258 () Bool)

(declare-fun inv!77031 (Conc!15490) Bool)

(assert (=> b!5035741 (= e!3145402 (and (inv!77031 (left!42664 t!4198)) tp!1410259 (inv!77031 (right!42994 t!4198)) tp!1410258))))

(declare-fun b!5035742 () Bool)

(declare-fun e!3145401 () Bool)

(declare-fun tp!1410260 () Bool)

(assert (=> b!5035742 (= e!3145401 tp!1410260)))

(declare-fun res!2145749 () Bool)

(assert (=> start!532730 (=> (not res!2145749) (not e!3145405))))

(assert (=> start!532730 (= res!2145749 (isBalanced!4352 t!4198))))

(assert (=> start!532730 e!3145405))

(assert (=> start!532730 (and (inv!77031 t!4198) e!3145402)))

(assert (=> start!532730 true))

(declare-fun b!5035743 () Bool)

(declare-fun inv!77032 (IArray!31041) Bool)

(assert (=> b!5035743 (= e!3145402 (and (inv!77032 (xs!18816 t!4198)) e!3145401))))

(declare-fun b!5035744 () Bool)

(assert (=> b!5035744 (= e!3145406 (= lt!2083417 (tuple2!63199 lt!2083423 lt!2083421)))))

(declare-fun b!5035745 () Bool)

(assert (=> b!5035745 (= e!3145405 (not e!3145403))))

(declare-fun res!2145745 () Bool)

(assert (=> b!5035745 (=> res!2145745 e!3145403)))

(declare-fun lt!2083419 () Int)

(assert (=> b!5035745 (= res!2145745 (or (= lt!2083419 i!618) (< i!618 lt!2083419)))))

(declare-fun size!38854 (Conc!15490) Int)

(assert (=> b!5035745 (= lt!2083419 (size!38854 (left!42664 t!4198)))))

(assert (=> b!5035745 e!3145406))

(declare-fun c!862530 () Bool)

(assert (=> b!5035745 (= c!862530 (= lt!2083424 i!618))))

(declare-fun splitAtIndex!191 (List!58402 Int) tuple2!63198)

(assert (=> b!5035745 (= lt!2083417 (splitAtIndex!191 (++!12707 lt!2083423 lt!2083421) i!618))))

(declare-fun size!38855 (List!58402) Int)

(assert (=> b!5035745 (= lt!2083424 (size!38855 lt!2083423))))

(declare-datatypes ((Unit!149475 0))(
  ( (Unit!149476) )
))
(declare-fun lt!2083422 () Unit!149475)

(declare-fun splitAtLemma!66 (List!58402 List!58402 Int) Unit!149475)

(assert (=> b!5035745 (= lt!2083422 (splitAtLemma!66 lt!2083423 lt!2083421 i!618))))

(declare-fun list!18871 (Conc!15490) List!58402)

(assert (=> b!5035745 (= lt!2083421 (list!18871 (right!42994 t!4198)))))

(assert (=> b!5035745 (= lt!2083423 (list!18871 (left!42664 t!4198)))))

(declare-fun b!5035746 () Bool)

(declare-fun res!2145748 () Bool)

(assert (=> b!5035746 (=> (not res!2145748) (not e!3145405))))

(assert (=> b!5035746 (= res!2145748 (<= 0 i!618))))

(declare-fun bm!351267 () Bool)

(assert (=> bm!351267 (= call!351272 (splitAtIndex!191 (ite c!862531 lt!2083423 lt!2083421) (ite c!862531 i!618 (- i!618 lt!2083424))))))

(declare-fun b!5035747 () Bool)

(declare-fun res!2145747 () Bool)

(assert (=> b!5035747 (=> (not res!2145747) (not e!3145405))))

(assert (=> b!5035747 (= res!2145747 (<= i!618 (size!38854 t!4198)))))

(declare-fun b!5035748 () Bool)

(assert (=> b!5035748 (= lt!2083420 call!351272)))

(assert (=> b!5035748 (= e!3145404 (tuple2!63199 (_1!34902 lt!2083420) call!351271))))

(assert (= (and start!532730 res!2145749) b!5035746))

(assert (= (and b!5035746 res!2145748) b!5035747))

(assert (= (and b!5035747 res!2145747) b!5035738))

(assert (= (and b!5035738 res!2145746) b!5035745))

(assert (= (and b!5035745 c!862530) b!5035744))

(assert (= (and b!5035745 (not c!862530)) b!5035740))

(assert (= (and b!5035740 c!862531) b!5035748))

(assert (= (and b!5035740 (not c!862531)) b!5035737))

(assert (= (or b!5035748 b!5035737) bm!351266))

(assert (= (or b!5035748 b!5035737) bm!351267))

(assert (= (and b!5035745 (not res!2145745)) b!5035739))

(assert (= (and start!532730 ((_ is Node!15490) t!4198)) b!5035741))

(assert (= b!5035743 b!5035742))

(assert (= (and start!532730 ((_ is Leaf!25699) t!4198)) b!5035743))

(declare-fun m!6070024 () Bool)

(assert (=> b!5035745 m!6070024))

(declare-fun m!6070026 () Bool)

(assert (=> b!5035745 m!6070026))

(declare-fun m!6070028 () Bool)

(assert (=> b!5035745 m!6070028))

(declare-fun m!6070030 () Bool)

(assert (=> b!5035745 m!6070030))

(declare-fun m!6070032 () Bool)

(assert (=> b!5035745 m!6070032))

(declare-fun m!6070034 () Bool)

(assert (=> b!5035745 m!6070034))

(assert (=> b!5035745 m!6070030))

(declare-fun m!6070036 () Bool)

(assert (=> b!5035745 m!6070036))

(declare-fun m!6070038 () Bool)

(assert (=> b!5035743 m!6070038))

(declare-fun m!6070040 () Bool)

(assert (=> b!5035739 m!6070040))

(declare-fun m!6070042 () Bool)

(assert (=> start!532730 m!6070042))

(declare-fun m!6070044 () Bool)

(assert (=> start!532730 m!6070044))

(declare-fun m!6070046 () Bool)

(assert (=> bm!351266 m!6070046))

(declare-fun m!6070048 () Bool)

(assert (=> b!5035741 m!6070048))

(declare-fun m!6070050 () Bool)

(assert (=> b!5035741 m!6070050))

(declare-fun m!6070052 () Bool)

(assert (=> bm!351267 m!6070052))

(declare-fun m!6070054 () Bool)

(assert (=> b!5035747 m!6070054))

(check-sat (not b!5035739) (not bm!351266) (not b!5035747) (not start!532730) (not bm!351267) (not b!5035741) (not b!5035743) (not b!5035745) (not b!5035742))
(check-sat)
(get-model)

(declare-fun d!1620025 () Bool)

(declare-fun c!862534 () Bool)

(assert (=> d!1620025 (= c!862534 ((_ is Node!15490) (left!42664 t!4198)))))

(declare-fun e!3145411 () Bool)

(assert (=> d!1620025 (= (inv!77031 (left!42664 t!4198)) e!3145411)))

(declare-fun b!5035755 () Bool)

(declare-fun inv!77033 (Conc!15490) Bool)

(assert (=> b!5035755 (= e!3145411 (inv!77033 (left!42664 t!4198)))))

(declare-fun b!5035756 () Bool)

(declare-fun e!3145412 () Bool)

(assert (=> b!5035756 (= e!3145411 e!3145412)))

(declare-fun res!2145752 () Bool)

(assert (=> b!5035756 (= res!2145752 (not ((_ is Leaf!25699) (left!42664 t!4198))))))

(assert (=> b!5035756 (=> res!2145752 e!3145412)))

(declare-fun b!5035757 () Bool)

(declare-fun inv!77034 (Conc!15490) Bool)

(assert (=> b!5035757 (= e!3145412 (inv!77034 (left!42664 t!4198)))))

(assert (= (and d!1620025 c!862534) b!5035755))

(assert (= (and d!1620025 (not c!862534)) b!5035756))

(assert (= (and b!5035756 (not res!2145752)) b!5035757))

(declare-fun m!6070056 () Bool)

(assert (=> b!5035755 m!6070056))

(declare-fun m!6070058 () Bool)

(assert (=> b!5035757 m!6070058))

(assert (=> b!5035741 d!1620025))

(declare-fun d!1620027 () Bool)

(declare-fun c!862535 () Bool)

(assert (=> d!1620027 (= c!862535 ((_ is Node!15490) (right!42994 t!4198)))))

(declare-fun e!3145413 () Bool)

(assert (=> d!1620027 (= (inv!77031 (right!42994 t!4198)) e!3145413)))

(declare-fun b!5035758 () Bool)

(assert (=> b!5035758 (= e!3145413 (inv!77033 (right!42994 t!4198)))))

(declare-fun b!5035759 () Bool)

(declare-fun e!3145414 () Bool)

(assert (=> b!5035759 (= e!3145413 e!3145414)))

(declare-fun res!2145753 () Bool)

(assert (=> b!5035759 (= res!2145753 (not ((_ is Leaf!25699) (right!42994 t!4198))))))

(assert (=> b!5035759 (=> res!2145753 e!3145414)))

(declare-fun b!5035760 () Bool)

(assert (=> b!5035760 (= e!3145414 (inv!77034 (right!42994 t!4198)))))

(assert (= (and d!1620027 c!862535) b!5035758))

(assert (= (and d!1620027 (not c!862535)) b!5035759))

(assert (= (and b!5035759 (not res!2145753)) b!5035760))

(declare-fun m!6070060 () Bool)

(assert (=> b!5035758 m!6070060))

(declare-fun m!6070062 () Bool)

(assert (=> b!5035760 m!6070062))

(assert (=> b!5035741 d!1620027))

(declare-fun d!1620029 () Bool)

(declare-fun res!2145767 () Bool)

(declare-fun e!3145420 () Bool)

(assert (=> d!1620029 (=> res!2145767 e!3145420)))

(assert (=> d!1620029 (= res!2145767 (not ((_ is Node!15490) t!4198)))))

(assert (=> d!1620029 (= (isBalanced!4352 t!4198) e!3145420)))

(declare-fun b!5035773 () Bool)

(declare-fun res!2145768 () Bool)

(declare-fun e!3145419 () Bool)

(assert (=> b!5035773 (=> (not res!2145768) (not e!3145419))))

(declare-fun isEmpty!31505 (Conc!15490) Bool)

(assert (=> b!5035773 (= res!2145768 (not (isEmpty!31505 (left!42664 t!4198))))))

(declare-fun b!5035774 () Bool)

(assert (=> b!5035774 (= e!3145419 (not (isEmpty!31505 (right!42994 t!4198))))))

(declare-fun b!5035775 () Bool)

(declare-fun res!2145771 () Bool)

(assert (=> b!5035775 (=> (not res!2145771) (not e!3145419))))

(declare-fun height!2068 (Conc!15490) Int)

(assert (=> b!5035775 (= res!2145771 (<= (- (height!2068 (left!42664 t!4198)) (height!2068 (right!42994 t!4198))) 1))))

(declare-fun b!5035776 () Bool)

(declare-fun res!2145770 () Bool)

(assert (=> b!5035776 (=> (not res!2145770) (not e!3145419))))

(assert (=> b!5035776 (= res!2145770 (isBalanced!4352 (right!42994 t!4198)))))

(declare-fun b!5035777 () Bool)

(assert (=> b!5035777 (= e!3145420 e!3145419)))

(declare-fun res!2145769 () Bool)

(assert (=> b!5035777 (=> (not res!2145769) (not e!3145419))))

(assert (=> b!5035777 (= res!2145769 (<= (- 1) (- (height!2068 (left!42664 t!4198)) (height!2068 (right!42994 t!4198)))))))

(declare-fun b!5035778 () Bool)

(declare-fun res!2145766 () Bool)

(assert (=> b!5035778 (=> (not res!2145766) (not e!3145419))))

(assert (=> b!5035778 (= res!2145766 (isBalanced!4352 (left!42664 t!4198)))))

(assert (= (and d!1620029 (not res!2145767)) b!5035777))

(assert (= (and b!5035777 res!2145769) b!5035775))

(assert (= (and b!5035775 res!2145771) b!5035778))

(assert (= (and b!5035778 res!2145766) b!5035776))

(assert (= (and b!5035776 res!2145770) b!5035773))

(assert (= (and b!5035773 res!2145768) b!5035774))

(declare-fun m!6070064 () Bool)

(assert (=> b!5035777 m!6070064))

(declare-fun m!6070066 () Bool)

(assert (=> b!5035777 m!6070066))

(declare-fun m!6070068 () Bool)

(assert (=> b!5035774 m!6070068))

(declare-fun m!6070070 () Bool)

(assert (=> b!5035778 m!6070070))

(declare-fun m!6070072 () Bool)

(assert (=> b!5035773 m!6070072))

(assert (=> b!5035775 m!6070064))

(assert (=> b!5035775 m!6070066))

(assert (=> b!5035776 m!6070040))

(assert (=> start!532730 d!1620029))

(declare-fun d!1620031 () Bool)

(declare-fun c!862536 () Bool)

(assert (=> d!1620031 (= c!862536 ((_ is Node!15490) t!4198))))

(declare-fun e!3145421 () Bool)

(assert (=> d!1620031 (= (inv!77031 t!4198) e!3145421)))

(declare-fun b!5035779 () Bool)

(assert (=> b!5035779 (= e!3145421 (inv!77033 t!4198))))

(declare-fun b!5035780 () Bool)

(declare-fun e!3145422 () Bool)

(assert (=> b!5035780 (= e!3145421 e!3145422)))

(declare-fun res!2145772 () Bool)

(assert (=> b!5035780 (= res!2145772 (not ((_ is Leaf!25699) t!4198)))))

(assert (=> b!5035780 (=> res!2145772 e!3145422)))

(declare-fun b!5035781 () Bool)

(assert (=> b!5035781 (= e!3145422 (inv!77034 t!4198))))

(assert (= (and d!1620031 c!862536) b!5035779))

(assert (= (and d!1620031 (not c!862536)) b!5035780))

(assert (= (and b!5035780 (not res!2145772)) b!5035781))

(declare-fun m!6070074 () Bool)

(assert (=> b!5035779 m!6070074))

(declare-fun m!6070076 () Bool)

(assert (=> b!5035781 m!6070076))

(assert (=> start!532730 d!1620031))

(declare-fun e!3145429 () tuple2!63198)

(declare-fun b!5035794 () Bool)

(assert (=> b!5035794 (= e!3145429 (tuple2!63199 Nil!58278 (ite c!862531 lt!2083423 lt!2083421)))))

(declare-fun d!1620033 () Bool)

(declare-fun e!3145431 () Bool)

(assert (=> d!1620033 e!3145431))

(declare-fun res!2145777 () Bool)

(assert (=> d!1620033 (=> (not res!2145777) (not e!3145431))))

(declare-fun lt!2083430 () tuple2!63198)

(assert (=> d!1620033 (= res!2145777 (= (++!12707 (_1!34902 lt!2083430) (_2!34902 lt!2083430)) (ite c!862531 lt!2083423 lt!2083421)))))

(declare-fun e!3145430 () tuple2!63198)

(assert (=> d!1620033 (= lt!2083430 e!3145430)))

(declare-fun c!862542 () Bool)

(assert (=> d!1620033 (= c!862542 ((_ is Nil!58278) (ite c!862531 lt!2083423 lt!2083421)))))

(assert (=> d!1620033 (= (splitAtIndex!191 (ite c!862531 lt!2083423 lt!2083421) (ite c!862531 i!618 (- i!618 lt!2083424))) lt!2083430)))

(declare-fun b!5035795 () Bool)

(declare-fun res!2145778 () Bool)

(assert (=> b!5035795 (=> (not res!2145778) (not e!3145431))))

(declare-fun take!806 (List!58402 Int) List!58402)

(assert (=> b!5035795 (= res!2145778 (= (_1!34902 lt!2083430) (take!806 (ite c!862531 lt!2083423 lt!2083421) (ite c!862531 i!618 (- i!618 lt!2083424)))))))

(declare-fun b!5035796 () Bool)

(declare-fun lt!2083429 () tuple2!63198)

(assert (=> b!5035796 (= lt!2083429 (splitAtIndex!191 (t!370877 (ite c!862531 lt!2083423 lt!2083421)) (- (ite c!862531 i!618 (- i!618 lt!2083424)) 1)))))

(assert (=> b!5035796 (= e!3145429 (tuple2!63199 (Cons!58278 (h!64726 (ite c!862531 lt!2083423 lt!2083421)) (_1!34902 lt!2083429)) (_2!34902 lt!2083429)))))

(declare-fun b!5035797 () Bool)

(declare-fun drop!2613 (List!58402 Int) List!58402)

(assert (=> b!5035797 (= e!3145431 (= (_2!34902 lt!2083430) (drop!2613 (ite c!862531 lt!2083423 lt!2083421) (ite c!862531 i!618 (- i!618 lt!2083424)))))))

(declare-fun b!5035798 () Bool)

(assert (=> b!5035798 (= e!3145430 e!3145429)))

(declare-fun c!862541 () Bool)

(assert (=> b!5035798 (= c!862541 (<= (ite c!862531 i!618 (- i!618 lt!2083424)) 0))))

(declare-fun b!5035799 () Bool)

(assert (=> b!5035799 (= e!3145430 (tuple2!63199 Nil!58278 Nil!58278))))

(assert (= (and d!1620033 c!862542) b!5035799))

(assert (= (and d!1620033 (not c!862542)) b!5035798))

(assert (= (and b!5035798 c!862541) b!5035794))

(assert (= (and b!5035798 (not c!862541)) b!5035796))

(assert (= (and d!1620033 res!2145777) b!5035795))

(assert (= (and b!5035795 res!2145778) b!5035797))

(declare-fun m!6070078 () Bool)

(assert (=> d!1620033 m!6070078))

(declare-fun m!6070080 () Bool)

(assert (=> b!5035795 m!6070080))

(declare-fun m!6070082 () Bool)

(assert (=> b!5035796 m!6070082))

(declare-fun m!6070084 () Bool)

(assert (=> b!5035797 m!6070084))

(assert (=> bm!351267 d!1620033))

(declare-fun b!5035808 () Bool)

(declare-fun e!3145437 () List!58402)

(assert (=> b!5035808 (= e!3145437 (ite c!862531 lt!2083421 (_1!34902 lt!2083418)))))

(declare-fun b!5035809 () Bool)

(assert (=> b!5035809 (= e!3145437 (Cons!58278 (h!64726 (ite c!862531 (_2!34902 lt!2083420) lt!2083423)) (++!12707 (t!370877 (ite c!862531 (_2!34902 lt!2083420) lt!2083423)) (ite c!862531 lt!2083421 (_1!34902 lt!2083418)))))))

(declare-fun lt!2083433 () List!58402)

(declare-fun b!5035811 () Bool)

(declare-fun e!3145436 () Bool)

(assert (=> b!5035811 (= e!3145436 (or (not (= (ite c!862531 lt!2083421 (_1!34902 lt!2083418)) Nil!58278)) (= lt!2083433 (ite c!862531 (_2!34902 lt!2083420) lt!2083423))))))

(declare-fun b!5035810 () Bool)

(declare-fun res!2145783 () Bool)

(assert (=> b!5035810 (=> (not res!2145783) (not e!3145436))))

(assert (=> b!5035810 (= res!2145783 (= (size!38855 lt!2083433) (+ (size!38855 (ite c!862531 (_2!34902 lt!2083420) lt!2083423)) (size!38855 (ite c!862531 lt!2083421 (_1!34902 lt!2083418))))))))

(declare-fun d!1620035 () Bool)

(assert (=> d!1620035 e!3145436))

(declare-fun res!2145784 () Bool)

(assert (=> d!1620035 (=> (not res!2145784) (not e!3145436))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10340 (List!58402) (InoxSet T!104026))

(assert (=> d!1620035 (= res!2145784 (= (content!10340 lt!2083433) ((_ map or) (content!10340 (ite c!862531 (_2!34902 lt!2083420) lt!2083423)) (content!10340 (ite c!862531 lt!2083421 (_1!34902 lt!2083418))))))))

(assert (=> d!1620035 (= lt!2083433 e!3145437)))

(declare-fun c!862545 () Bool)

(assert (=> d!1620035 (= c!862545 ((_ is Nil!58278) (ite c!862531 (_2!34902 lt!2083420) lt!2083423)))))

(assert (=> d!1620035 (= (++!12707 (ite c!862531 (_2!34902 lt!2083420) lt!2083423) (ite c!862531 lt!2083421 (_1!34902 lt!2083418))) lt!2083433)))

(assert (= (and d!1620035 c!862545) b!5035808))

(assert (= (and d!1620035 (not c!862545)) b!5035809))

(assert (= (and d!1620035 res!2145784) b!5035810))

(assert (= (and b!5035810 res!2145783) b!5035811))

(declare-fun m!6070086 () Bool)

(assert (=> b!5035809 m!6070086))

(declare-fun m!6070088 () Bool)

(assert (=> b!5035810 m!6070088))

(declare-fun m!6070090 () Bool)

(assert (=> b!5035810 m!6070090))

(declare-fun m!6070092 () Bool)

(assert (=> b!5035810 m!6070092))

(declare-fun m!6070094 () Bool)

(assert (=> d!1620035 m!6070094))

(declare-fun m!6070096 () Bool)

(assert (=> d!1620035 m!6070096))

(declare-fun m!6070098 () Bool)

(assert (=> d!1620035 m!6070098))

(assert (=> bm!351266 d!1620035))

(declare-fun d!1620039 () Bool)

(declare-fun lt!2083436 () Int)

(assert (=> d!1620039 (= lt!2083436 (size!38855 (list!18871 t!4198)))))

(assert (=> d!1620039 (= lt!2083436 (ite ((_ is Empty!15490) t!4198) 0 (ite ((_ is Leaf!25699) t!4198) (csize!31211 t!4198) (csize!31210 t!4198))))))

(assert (=> d!1620039 (= (size!38854 t!4198) lt!2083436)))

(declare-fun bs!1188752 () Bool)

(assert (= bs!1188752 d!1620039))

(declare-fun m!6070100 () Bool)

(assert (=> bs!1188752 m!6070100))

(assert (=> bs!1188752 m!6070100))

(declare-fun m!6070102 () Bool)

(assert (=> bs!1188752 m!6070102))

(assert (=> b!5035747 d!1620039))

(declare-fun d!1620041 () Bool)

(assert (=> d!1620041 (= (inv!77032 (xs!18816 t!4198)) (<= (size!38855 (innerList!15578 (xs!18816 t!4198))) 2147483647))))

(declare-fun bs!1188753 () Bool)

(assert (= bs!1188753 d!1620041))

(declare-fun m!6070104 () Bool)

(assert (=> bs!1188753 m!6070104))

(assert (=> b!5035743 d!1620041))

(declare-fun d!1620043 () Bool)

(declare-fun res!2145798 () Bool)

(declare-fun e!3145443 () Bool)

(assert (=> d!1620043 (=> res!2145798 e!3145443)))

(assert (=> d!1620043 (= res!2145798 (not ((_ is Node!15490) (right!42994 t!4198))))))

(assert (=> d!1620043 (= (isBalanced!4352 (right!42994 t!4198)) e!3145443)))

(declare-fun b!5035824 () Bool)

(declare-fun res!2145799 () Bool)

(declare-fun e!3145442 () Bool)

(assert (=> b!5035824 (=> (not res!2145799) (not e!3145442))))

(assert (=> b!5035824 (= res!2145799 (not (isEmpty!31505 (left!42664 (right!42994 t!4198)))))))

(declare-fun b!5035825 () Bool)

(assert (=> b!5035825 (= e!3145442 (not (isEmpty!31505 (right!42994 (right!42994 t!4198)))))))

(declare-fun b!5035826 () Bool)

(declare-fun res!2145802 () Bool)

(assert (=> b!5035826 (=> (not res!2145802) (not e!3145442))))

(assert (=> b!5035826 (= res!2145802 (<= (- (height!2068 (left!42664 (right!42994 t!4198))) (height!2068 (right!42994 (right!42994 t!4198)))) 1))))

(declare-fun b!5035827 () Bool)

(declare-fun res!2145801 () Bool)

(assert (=> b!5035827 (=> (not res!2145801) (not e!3145442))))

(assert (=> b!5035827 (= res!2145801 (isBalanced!4352 (right!42994 (right!42994 t!4198))))))

(declare-fun b!5035828 () Bool)

(assert (=> b!5035828 (= e!3145443 e!3145442)))

(declare-fun res!2145800 () Bool)

(assert (=> b!5035828 (=> (not res!2145800) (not e!3145442))))

(assert (=> b!5035828 (= res!2145800 (<= (- 1) (- (height!2068 (left!42664 (right!42994 t!4198))) (height!2068 (right!42994 (right!42994 t!4198))))))))

(declare-fun b!5035829 () Bool)

(declare-fun res!2145797 () Bool)

(assert (=> b!5035829 (=> (not res!2145797) (not e!3145442))))

(assert (=> b!5035829 (= res!2145797 (isBalanced!4352 (left!42664 (right!42994 t!4198))))))

(assert (= (and d!1620043 (not res!2145798)) b!5035828))

(assert (= (and b!5035828 res!2145800) b!5035826))

(assert (= (and b!5035826 res!2145802) b!5035829))

(assert (= (and b!5035829 res!2145797) b!5035827))

(assert (= (and b!5035827 res!2145801) b!5035824))

(assert (= (and b!5035824 res!2145799) b!5035825))

(declare-fun m!6070106 () Bool)

(assert (=> b!5035828 m!6070106))

(declare-fun m!6070108 () Bool)

(assert (=> b!5035828 m!6070108))

(declare-fun m!6070110 () Bool)

(assert (=> b!5035825 m!6070110))

(declare-fun m!6070112 () Bool)

(assert (=> b!5035829 m!6070112))

(declare-fun m!6070114 () Bool)

(assert (=> b!5035824 m!6070114))

(assert (=> b!5035826 m!6070106))

(assert (=> b!5035826 m!6070108))

(declare-fun m!6070116 () Bool)

(assert (=> b!5035827 m!6070116))

(assert (=> b!5035739 d!1620043))

(declare-fun b!5035830 () Bool)

(declare-fun e!3145444 () tuple2!63198)

(assert (=> b!5035830 (= e!3145444 (tuple2!63199 Nil!58278 (++!12707 lt!2083423 lt!2083421)))))

(declare-fun d!1620045 () Bool)

(declare-fun e!3145446 () Bool)

(assert (=> d!1620045 e!3145446))

(declare-fun res!2145803 () Bool)

(assert (=> d!1620045 (=> (not res!2145803) (not e!3145446))))

(declare-fun lt!2083438 () tuple2!63198)

(assert (=> d!1620045 (= res!2145803 (= (++!12707 (_1!34902 lt!2083438) (_2!34902 lt!2083438)) (++!12707 lt!2083423 lt!2083421)))))

(declare-fun e!3145445 () tuple2!63198)

(assert (=> d!1620045 (= lt!2083438 e!3145445)))

(declare-fun c!862547 () Bool)

(assert (=> d!1620045 (= c!862547 ((_ is Nil!58278) (++!12707 lt!2083423 lt!2083421)))))

(assert (=> d!1620045 (= (splitAtIndex!191 (++!12707 lt!2083423 lt!2083421) i!618) lt!2083438)))

(declare-fun b!5035831 () Bool)

(declare-fun res!2145804 () Bool)

(assert (=> b!5035831 (=> (not res!2145804) (not e!3145446))))

(assert (=> b!5035831 (= res!2145804 (= (_1!34902 lt!2083438) (take!806 (++!12707 lt!2083423 lt!2083421) i!618)))))

(declare-fun lt!2083437 () tuple2!63198)

(declare-fun b!5035832 () Bool)

(assert (=> b!5035832 (= lt!2083437 (splitAtIndex!191 (t!370877 (++!12707 lt!2083423 lt!2083421)) (- i!618 1)))))

(assert (=> b!5035832 (= e!3145444 (tuple2!63199 (Cons!58278 (h!64726 (++!12707 lt!2083423 lt!2083421)) (_1!34902 lt!2083437)) (_2!34902 lt!2083437)))))

(declare-fun b!5035833 () Bool)

(assert (=> b!5035833 (= e!3145446 (= (_2!34902 lt!2083438) (drop!2613 (++!12707 lt!2083423 lt!2083421) i!618)))))

(declare-fun b!5035834 () Bool)

(assert (=> b!5035834 (= e!3145445 e!3145444)))

(declare-fun c!862546 () Bool)

(assert (=> b!5035834 (= c!862546 (<= i!618 0))))

(declare-fun b!5035835 () Bool)

(assert (=> b!5035835 (= e!3145445 (tuple2!63199 Nil!58278 Nil!58278))))

(assert (= (and d!1620045 c!862547) b!5035835))

(assert (= (and d!1620045 (not c!862547)) b!5035834))

(assert (= (and b!5035834 c!862546) b!5035830))

(assert (= (and b!5035834 (not c!862546)) b!5035832))

(assert (= (and d!1620045 res!2145803) b!5035831))

(assert (= (and b!5035831 res!2145804) b!5035833))

(declare-fun m!6070118 () Bool)

(assert (=> d!1620045 m!6070118))

(assert (=> b!5035831 m!6070030))

(declare-fun m!6070120 () Bool)

(assert (=> b!5035831 m!6070120))

(declare-fun m!6070122 () Bool)

(assert (=> b!5035832 m!6070122))

(assert (=> b!5035833 m!6070030))

(declare-fun m!6070124 () Bool)

(assert (=> b!5035833 m!6070124))

(assert (=> b!5035745 d!1620045))

(declare-fun d!1620047 () Bool)

(declare-fun lt!2083441 () Int)

(assert (=> d!1620047 (>= lt!2083441 0)))

(declare-fun e!3145449 () Int)

(assert (=> d!1620047 (= lt!2083441 e!3145449)))

(declare-fun c!862550 () Bool)

(assert (=> d!1620047 (= c!862550 ((_ is Nil!58278) lt!2083423))))

(assert (=> d!1620047 (= (size!38855 lt!2083423) lt!2083441)))

(declare-fun b!5035840 () Bool)

(assert (=> b!5035840 (= e!3145449 0)))

(declare-fun b!5035841 () Bool)

(assert (=> b!5035841 (= e!3145449 (+ 1 (size!38855 (t!370877 lt!2083423))))))

(assert (= (and d!1620047 c!862550) b!5035840))

(assert (= (and d!1620047 (not c!862550)) b!5035841))

(declare-fun m!6070126 () Bool)

(assert (=> b!5035841 m!6070126))

(assert (=> b!5035745 d!1620047))

(declare-fun b!5035842 () Bool)

(declare-fun e!3145451 () List!58402)

(assert (=> b!5035842 (= e!3145451 lt!2083421)))

(declare-fun b!5035843 () Bool)

(assert (=> b!5035843 (= e!3145451 (Cons!58278 (h!64726 lt!2083423) (++!12707 (t!370877 lt!2083423) lt!2083421)))))

(declare-fun lt!2083442 () List!58402)

(declare-fun e!3145450 () Bool)

(declare-fun b!5035845 () Bool)

(assert (=> b!5035845 (= e!3145450 (or (not (= lt!2083421 Nil!58278)) (= lt!2083442 lt!2083423)))))

(declare-fun b!5035844 () Bool)

(declare-fun res!2145805 () Bool)

(assert (=> b!5035844 (=> (not res!2145805) (not e!3145450))))

(assert (=> b!5035844 (= res!2145805 (= (size!38855 lt!2083442) (+ (size!38855 lt!2083423) (size!38855 lt!2083421))))))

(declare-fun d!1620049 () Bool)

(assert (=> d!1620049 e!3145450))

(declare-fun res!2145806 () Bool)

(assert (=> d!1620049 (=> (not res!2145806) (not e!3145450))))

(assert (=> d!1620049 (= res!2145806 (= (content!10340 lt!2083442) ((_ map or) (content!10340 lt!2083423) (content!10340 lt!2083421))))))

(assert (=> d!1620049 (= lt!2083442 e!3145451)))

(declare-fun c!862551 () Bool)

(assert (=> d!1620049 (= c!862551 ((_ is Nil!58278) lt!2083423))))

(assert (=> d!1620049 (= (++!12707 lt!2083423 lt!2083421) lt!2083442)))

(assert (= (and d!1620049 c!862551) b!5035842))

(assert (= (and d!1620049 (not c!862551)) b!5035843))

(assert (= (and d!1620049 res!2145806) b!5035844))

(assert (= (and b!5035844 res!2145805) b!5035845))

(declare-fun m!6070128 () Bool)

(assert (=> b!5035843 m!6070128))

(declare-fun m!6070130 () Bool)

(assert (=> b!5035844 m!6070130))

(assert (=> b!5035844 m!6070026))

(declare-fun m!6070132 () Bool)

(assert (=> b!5035844 m!6070132))

(declare-fun m!6070134 () Bool)

(assert (=> d!1620049 m!6070134))

(declare-fun m!6070136 () Bool)

(assert (=> d!1620049 m!6070136))

(declare-fun m!6070138 () Bool)

(assert (=> d!1620049 m!6070138))

(assert (=> b!5035745 d!1620049))

(declare-fun b!5035863 () Bool)

(declare-fun e!3145459 () List!58402)

(assert (=> b!5035863 (= e!3145459 (++!12707 (list!18871 (left!42664 (left!42664 t!4198))) (list!18871 (right!42994 (left!42664 t!4198)))))))

(declare-fun d!1620051 () Bool)

(declare-fun c!862556 () Bool)

(assert (=> d!1620051 (= c!862556 ((_ is Empty!15490) (left!42664 t!4198)))))

(declare-fun e!3145458 () List!58402)

(assert (=> d!1620051 (= (list!18871 (left!42664 t!4198)) e!3145458)))

(declare-fun b!5035860 () Bool)

(assert (=> b!5035860 (= e!3145458 Nil!58278)))

(declare-fun b!5035861 () Bool)

(assert (=> b!5035861 (= e!3145458 e!3145459)))

(declare-fun c!862557 () Bool)

(assert (=> b!5035861 (= c!862557 ((_ is Leaf!25699) (left!42664 t!4198)))))

(declare-fun b!5035862 () Bool)

(declare-fun list!18872 (IArray!31041) List!58402)

(assert (=> b!5035862 (= e!3145459 (list!18872 (xs!18816 (left!42664 t!4198))))))

(assert (= (and d!1620051 c!862556) b!5035860))

(assert (= (and d!1620051 (not c!862556)) b!5035861))

(assert (= (and b!5035861 c!862557) b!5035862))

(assert (= (and b!5035861 (not c!862557)) b!5035863))

(declare-fun m!6070152 () Bool)

(assert (=> b!5035863 m!6070152))

(declare-fun m!6070154 () Bool)

(assert (=> b!5035863 m!6070154))

(assert (=> b!5035863 m!6070152))

(assert (=> b!5035863 m!6070154))

(declare-fun m!6070156 () Bool)

(assert (=> b!5035863 m!6070156))

(declare-fun m!6070158 () Bool)

(assert (=> b!5035862 m!6070158))

(assert (=> b!5035745 d!1620051))

(declare-fun b!5035867 () Bool)

(declare-fun e!3145461 () List!58402)

(assert (=> b!5035867 (= e!3145461 (++!12707 (list!18871 (left!42664 (right!42994 t!4198))) (list!18871 (right!42994 (right!42994 t!4198)))))))

(declare-fun d!1620055 () Bool)

(declare-fun c!862558 () Bool)

(assert (=> d!1620055 (= c!862558 ((_ is Empty!15490) (right!42994 t!4198)))))

(declare-fun e!3145460 () List!58402)

(assert (=> d!1620055 (= (list!18871 (right!42994 t!4198)) e!3145460)))

(declare-fun b!5035864 () Bool)

(assert (=> b!5035864 (= e!3145460 Nil!58278)))

(declare-fun b!5035865 () Bool)

(assert (=> b!5035865 (= e!3145460 e!3145461)))

(declare-fun c!862559 () Bool)

(assert (=> b!5035865 (= c!862559 ((_ is Leaf!25699) (right!42994 t!4198)))))

(declare-fun b!5035866 () Bool)

(assert (=> b!5035866 (= e!3145461 (list!18872 (xs!18816 (right!42994 t!4198))))))

(assert (= (and d!1620055 c!862558) b!5035864))

(assert (= (and d!1620055 (not c!862558)) b!5035865))

(assert (= (and b!5035865 c!862559) b!5035866))

(assert (= (and b!5035865 (not c!862559)) b!5035867))

(declare-fun m!6070160 () Bool)

(assert (=> b!5035867 m!6070160))

(declare-fun m!6070162 () Bool)

(assert (=> b!5035867 m!6070162))

(assert (=> b!5035867 m!6070160))

(assert (=> b!5035867 m!6070162))

(declare-fun m!6070164 () Bool)

(assert (=> b!5035867 m!6070164))

(declare-fun m!6070166 () Bool)

(assert (=> b!5035866 m!6070166))

(assert (=> b!5035745 d!1620055))

(declare-fun d!1620057 () Bool)

(declare-fun lt!2083443 () Int)

(assert (=> d!1620057 (= lt!2083443 (size!38855 (list!18871 (left!42664 t!4198))))))

(assert (=> d!1620057 (= lt!2083443 (ite ((_ is Empty!15490) (left!42664 t!4198)) 0 (ite ((_ is Leaf!25699) (left!42664 t!4198)) (csize!31211 (left!42664 t!4198)) (csize!31210 (left!42664 t!4198)))))))

(assert (=> d!1620057 (= (size!38854 (left!42664 t!4198)) lt!2083443)))

(declare-fun bs!1188754 () Bool)

(assert (= bs!1188754 d!1620057))

(assert (=> bs!1188754 m!6070024))

(assert (=> bs!1188754 m!6070024))

(declare-fun m!6070168 () Bool)

(assert (=> bs!1188754 m!6070168))

(assert (=> b!5035745 d!1620057))

(declare-fun e!3145479 () Bool)

(declare-fun b!5035900 () Bool)

(assert (=> b!5035900 (= e!3145479 (<= i!618 (+ (size!38855 lt!2083423) (size!38855 lt!2083421))))))

(declare-fun b!5035901 () Bool)

(declare-fun e!3145478 () Int)

(assert (=> b!5035901 (= e!3145478 (- i!618 (size!38855 lt!2083423)))))

(declare-fun b!5035902 () Bool)

(declare-fun e!3145481 () tuple2!63198)

(declare-fun e!3145480 () tuple2!63198)

(assert (=> b!5035902 (= e!3145481 e!3145480)))

(declare-fun c!862570 () Bool)

(assert (=> b!5035902 (= c!862570 (< i!618 (size!38855 lt!2083423)))))

(declare-fun d!1620059 () Bool)

(assert (=> d!1620059 (= (splitAtIndex!191 (++!12707 lt!2083423 lt!2083421) i!618) e!3145481)))

(declare-fun c!862569 () Bool)

(assert (=> d!1620059 (= c!862569 (= (size!38855 lt!2083423) i!618))))

(declare-fun lt!2083454 () Unit!149475)

(declare-fun choose!37246 (List!58402 List!58402 Int) Unit!149475)

(assert (=> d!1620059 (= lt!2083454 (choose!37246 lt!2083423 lt!2083421 i!618))))

(assert (=> d!1620059 e!3145479))

(declare-fun res!2145827 () Bool)

(assert (=> d!1620059 (=> (not res!2145827) (not e!3145479))))

(assert (=> d!1620059 (= res!2145827 (<= 0 i!618))))

(assert (=> d!1620059 (= (splitAtLemma!66 lt!2083423 lt!2083421 i!618) lt!2083454)))

(declare-fun b!5035903 () Bool)

(declare-fun lt!2083455 () tuple2!63198)

(declare-fun call!351278 () tuple2!63198)

(assert (=> b!5035903 (= lt!2083455 call!351278)))

(declare-fun call!351277 () List!58402)

(assert (=> b!5035903 (= e!3145480 (tuple2!63199 (_1!34902 lt!2083455) call!351277))))

(declare-fun bm!351272 () Bool)

(declare-fun lt!2083453 () tuple2!63198)

(assert (=> bm!351272 (= call!351277 (++!12707 (ite c!862570 (_2!34902 lt!2083455) lt!2083423) (ite c!862570 lt!2083421 (_1!34902 lt!2083453))))))

(declare-fun bm!351273 () Bool)

(declare-fun c!862571 () Bool)

(assert (=> bm!351273 (= c!862571 c!862570)))

(assert (=> bm!351273 (= call!351278 (splitAtIndex!191 (ite c!862570 lt!2083423 lt!2083421) e!3145478))))

(declare-fun b!5035904 () Bool)

(assert (=> b!5035904 (= e!3145478 i!618)))

(declare-fun b!5035905 () Bool)

(assert (=> b!5035905 (= e!3145481 (tuple2!63199 lt!2083423 lt!2083421))))

(declare-fun b!5035906 () Bool)

(assert (=> b!5035906 (= lt!2083453 call!351278)))

(assert (=> b!5035906 (= e!3145480 (tuple2!63199 call!351277 (_2!34902 lt!2083453)))))

(assert (= (and d!1620059 res!2145827) b!5035900))

(assert (= (and d!1620059 c!862569) b!5035905))

(assert (= (and d!1620059 (not c!862569)) b!5035902))

(assert (= (and b!5035902 c!862570) b!5035903))

(assert (= (and b!5035902 (not c!862570)) b!5035906))

(assert (= (or b!5035903 b!5035906) bm!351272))

(assert (= (or b!5035903 b!5035906) bm!351273))

(assert (= (and bm!351273 c!862571) b!5035904))

(assert (= (and bm!351273 (not c!862571)) b!5035901))

(declare-fun m!6070196 () Bool)

(assert (=> bm!351273 m!6070196))

(assert (=> b!5035900 m!6070026))

(assert (=> b!5035900 m!6070132))

(declare-fun m!6070198 () Bool)

(assert (=> bm!351272 m!6070198))

(assert (=> b!5035901 m!6070026))

(assert (=> d!1620059 m!6070030))

(assert (=> d!1620059 m!6070030))

(assert (=> d!1620059 m!6070036))

(assert (=> d!1620059 m!6070026))

(declare-fun m!6070200 () Bool)

(assert (=> d!1620059 m!6070200))

(assert (=> b!5035902 m!6070026))

(assert (=> b!5035745 d!1620059))

(declare-fun tp!1410268 () Bool)

(declare-fun e!3145486 () Bool)

(declare-fun tp!1410269 () Bool)

(declare-fun b!5035915 () Bool)

(assert (=> b!5035915 (= e!3145486 (and (inv!77031 (left!42664 (left!42664 t!4198))) tp!1410268 (inv!77031 (right!42994 (left!42664 t!4198))) tp!1410269))))

(declare-fun b!5035917 () Bool)

(declare-fun e!3145487 () Bool)

(declare-fun tp!1410267 () Bool)

(assert (=> b!5035917 (= e!3145487 tp!1410267)))

(declare-fun b!5035916 () Bool)

(assert (=> b!5035916 (= e!3145486 (and (inv!77032 (xs!18816 (left!42664 t!4198))) e!3145487))))

(assert (=> b!5035741 (= tp!1410259 (and (inv!77031 (left!42664 t!4198)) e!3145486))))

(assert (= (and b!5035741 ((_ is Node!15490) (left!42664 t!4198))) b!5035915))

(assert (= b!5035916 b!5035917))

(assert (= (and b!5035741 ((_ is Leaf!25699) (left!42664 t!4198))) b!5035916))

(declare-fun m!6070202 () Bool)

(assert (=> b!5035915 m!6070202))

(declare-fun m!6070204 () Bool)

(assert (=> b!5035915 m!6070204))

(declare-fun m!6070206 () Bool)

(assert (=> b!5035916 m!6070206))

(assert (=> b!5035741 m!6070048))

(declare-fun tp!1410272 () Bool)

(declare-fun e!3145490 () Bool)

(declare-fun tp!1410271 () Bool)

(declare-fun b!5035922 () Bool)

(assert (=> b!5035922 (= e!3145490 (and (inv!77031 (left!42664 (right!42994 t!4198))) tp!1410271 (inv!77031 (right!42994 (right!42994 t!4198))) tp!1410272))))

(declare-fun b!5035924 () Bool)

(declare-fun e!3145491 () Bool)

(declare-fun tp!1410270 () Bool)

(assert (=> b!5035924 (= e!3145491 tp!1410270)))

(declare-fun b!5035923 () Bool)

(assert (=> b!5035923 (= e!3145490 (and (inv!77032 (xs!18816 (right!42994 t!4198))) e!3145491))))

(assert (=> b!5035741 (= tp!1410258 (and (inv!77031 (right!42994 t!4198)) e!3145490))))

(assert (= (and b!5035741 ((_ is Node!15490) (right!42994 t!4198))) b!5035922))

(assert (= b!5035923 b!5035924))

(assert (= (and b!5035741 ((_ is Leaf!25699) (right!42994 t!4198))) b!5035923))

(declare-fun m!6070208 () Bool)

(assert (=> b!5035922 m!6070208))

(declare-fun m!6070210 () Bool)

(assert (=> b!5035922 m!6070210))

(declare-fun m!6070212 () Bool)

(assert (=> b!5035923 m!6070212))

(assert (=> b!5035741 m!6070050))

(declare-fun b!5035931 () Bool)

(declare-fun e!3145496 () Bool)

(declare-fun tp_is_empty!36741 () Bool)

(declare-fun tp!1410275 () Bool)

(assert (=> b!5035931 (= e!3145496 (and tp_is_empty!36741 tp!1410275))))

(assert (=> b!5035742 (= tp!1410260 e!3145496)))

(assert (= (and b!5035742 ((_ is Cons!58278) (innerList!15578 (xs!18816 t!4198)))) b!5035931))

(check-sat (not b!5035775) (not b!5035760) (not b!5035862) (not d!1620059) (not bm!351273) (not b!5035776) (not b!5035758) (not b!5035779) (not d!1620033) (not b!5035825) (not d!1620035) (not b!5035923) (not b!5035777) (not b!5035924) (not b!5035827) (not b!5035917) (not b!5035900) (not b!5035915) (not d!1620057) (not b!5035931) (not b!5035741) (not b!5035867) (not d!1620039) (not b!5035901) (not b!5035902) (not b!5035755) (not b!5035796) (not b!5035916) (not d!1620041) (not b!5035831) (not d!1620049) (not b!5035833) (not b!5035866) (not b!5035773) (not b!5035922) (not bm!351272) (not b!5035774) (not b!5035757) (not b!5035828) (not b!5035810) (not b!5035778) (not d!1620045) (not b!5035781) (not b!5035841) (not b!5035863) (not b!5035824) (not b!5035795) (not b!5035844) tp_is_empty!36741 (not b!5035826) (not b!5035797) (not b!5035832) (not b!5035829) (not b!5035843) (not b!5035809))
(check-sat)
