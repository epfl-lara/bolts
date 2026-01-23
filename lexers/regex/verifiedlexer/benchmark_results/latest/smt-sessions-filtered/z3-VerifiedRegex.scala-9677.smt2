; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507418 () Bool)

(assert start!507418)

(declare-fun b!4856954 () Bool)

(declare-fun e!3036556 () Bool)

(declare-datatypes ((T!98616 0))(
  ( (T!98617 (val!22402 Int)) )
))
(declare-datatypes ((List!55870 0))(
  ( (Nil!55746) (Cons!55746 (h!62194 T!98616) (t!363436 List!55870)) )
))
(declare-datatypes ((IArray!29113 0))(
  ( (IArray!29114 (innerList!14614 List!55870)) )
))
(declare-datatypes ((Conc!14526 0))(
  ( (Node!14526 (left!40509 Conc!14526) (right!40839 Conc!14526) (csize!29282 Int) (cheight!14737 Int)) (Leaf!24204 (xs!17832 IArray!29113) (csize!29283 Int)) (Empty!14526) )
))
(declare-fun t!4677 () Conc!14526)

(declare-fun isEmpty!29824 (List!55870) Bool)

(declare-fun list!17412 (Conc!14526) List!55870)

(assert (=> b!4856954 (= e!3036556 (isEmpty!29824 (list!17412 t!4677)))))

(declare-fun res!2073433 () Bool)

(assert (=> start!507418 (=> (not res!2073433) (not e!3036556))))

(declare-fun isBalanced!3932 (Conc!14526) Bool)

(assert (=> start!507418 (= res!2073433 (isBalanced!3932 t!4677))))

(assert (=> start!507418 e!3036556))

(declare-fun e!3036557 () Bool)

(declare-fun inv!71563 (Conc!14526) Bool)

(assert (=> start!507418 (and (inv!71563 t!4677) e!3036557)))

(declare-fun b!4856955 () Bool)

(declare-fun res!2073432 () Bool)

(assert (=> b!4856955 (=> (not res!2073432) (not e!3036556))))

(get-info :version)

(assert (=> b!4856955 (= res!2073432 (and (not ((_ is Leaf!24204) t!4677)) (not ((_ is Node!14526) t!4677))))))

(declare-fun b!4856956 () Bool)

(declare-fun e!3036558 () Bool)

(declare-fun inv!71564 (IArray!29113) Bool)

(assert (=> b!4856956 (= e!3036557 (and (inv!71564 (xs!17832 t!4677)) e!3036558))))

(declare-fun b!4856957 () Bool)

(declare-fun tp!1366437 () Bool)

(assert (=> b!4856957 (= e!3036558 tp!1366437)))

(declare-fun b!4856958 () Bool)

(declare-fun res!2073431 () Bool)

(assert (=> b!4856958 (=> (not res!2073431) (not e!3036556))))

(declare-fun isEmpty!29825 (Conc!14526) Bool)

(assert (=> b!4856958 (= res!2073431 (not (isEmpty!29825 t!4677)))))

(declare-fun b!4856959 () Bool)

(declare-fun tp!1366438 () Bool)

(declare-fun tp!1366439 () Bool)

(assert (=> b!4856959 (= e!3036557 (and (inv!71563 (left!40509 t!4677)) tp!1366438 (inv!71563 (right!40839 t!4677)) tp!1366439))))

(assert (= (and start!507418 res!2073433) b!4856958))

(assert (= (and b!4856958 res!2073431) b!4856955))

(assert (= (and b!4856955 res!2073432) b!4856954))

(assert (= (and start!507418 ((_ is Node!14526) t!4677)) b!4856959))

(assert (= b!4856956 b!4856957))

(assert (= (and start!507418 ((_ is Leaf!24204) t!4677)) b!4856956))

(declare-fun m!5854734 () Bool)

(assert (=> b!4856956 m!5854734))

(declare-fun m!5854736 () Bool)

(assert (=> start!507418 m!5854736))

(declare-fun m!5854738 () Bool)

(assert (=> start!507418 m!5854738))

(declare-fun m!5854740 () Bool)

(assert (=> b!4856958 m!5854740))

(declare-fun m!5854742 () Bool)

(assert (=> b!4856959 m!5854742))

(declare-fun m!5854744 () Bool)

(assert (=> b!4856959 m!5854744))

(declare-fun m!5854746 () Bool)

(assert (=> b!4856954 m!5854746))

(assert (=> b!4856954 m!5854746))

(declare-fun m!5854748 () Bool)

(assert (=> b!4856954 m!5854748))

(check-sat (not start!507418) (not b!4856959) (not b!4856956) (not b!4856957) (not b!4856954) (not b!4856958))
(check-sat)
(get-model)

(declare-fun d!1558920 () Bool)

(declare-fun lt!1991578 () Bool)

(assert (=> d!1558920 (= lt!1991578 (isEmpty!29824 (list!17412 t!4677)))))

(declare-fun size!36718 (Conc!14526) Int)

(assert (=> d!1558920 (= lt!1991578 (= (size!36718 t!4677) 0))))

(assert (=> d!1558920 (= (isEmpty!29825 t!4677) lt!1991578)))

(declare-fun bs!1173762 () Bool)

(assert (= bs!1173762 d!1558920))

(assert (=> bs!1173762 m!5854746))

(assert (=> bs!1173762 m!5854746))

(assert (=> bs!1173762 m!5854748))

(declare-fun m!5854750 () Bool)

(assert (=> bs!1173762 m!5854750))

(assert (=> b!4856958 d!1558920))

(declare-fun d!1558922 () Bool)

(declare-fun size!36719 (List!55870) Int)

(assert (=> d!1558922 (= (inv!71564 (xs!17832 t!4677)) (<= (size!36719 (innerList!14614 (xs!17832 t!4677))) 2147483647))))

(declare-fun bs!1173763 () Bool)

(assert (= bs!1173763 d!1558922))

(declare-fun m!5854752 () Bool)

(assert (=> bs!1173763 m!5854752))

(assert (=> b!4856956 d!1558922))

(declare-fun b!4856999 () Bool)

(declare-fun res!2073467 () Bool)

(declare-fun e!3036576 () Bool)

(assert (=> b!4856999 (=> (not res!2073467) (not e!3036576))))

(declare-fun height!1905 (Conc!14526) Int)

(assert (=> b!4856999 (= res!2073467 (<= (- (height!1905 (left!40509 t!4677)) (height!1905 (right!40839 t!4677))) 1))))

(declare-fun b!4857000 () Bool)

(declare-fun res!2073469 () Bool)

(assert (=> b!4857000 (=> (not res!2073469) (not e!3036576))))

(assert (=> b!4857000 (= res!2073469 (isBalanced!3932 (right!40839 t!4677)))))

(declare-fun b!4857001 () Bool)

(declare-fun res!2073471 () Bool)

(assert (=> b!4857001 (=> (not res!2073471) (not e!3036576))))

(assert (=> b!4857001 (= res!2073471 (isBalanced!3932 (left!40509 t!4677)))))

(declare-fun b!4857002 () Bool)

(assert (=> b!4857002 (= e!3036576 (not (isEmpty!29825 (right!40839 t!4677))))))

(declare-fun b!4857003 () Bool)

(declare-fun e!3036575 () Bool)

(assert (=> b!4857003 (= e!3036575 e!3036576)))

(declare-fun res!2073470 () Bool)

(assert (=> b!4857003 (=> (not res!2073470) (not e!3036576))))

(assert (=> b!4857003 (= res!2073470 (<= (- 1) (- (height!1905 (left!40509 t!4677)) (height!1905 (right!40839 t!4677)))))))

(declare-fun d!1558924 () Bool)

(declare-fun res!2073468 () Bool)

(assert (=> d!1558924 (=> res!2073468 e!3036575)))

(assert (=> d!1558924 (= res!2073468 (not ((_ is Node!14526) t!4677)))))

(assert (=> d!1558924 (= (isBalanced!3932 t!4677) e!3036575)))

(declare-fun b!4857004 () Bool)

(declare-fun res!2073472 () Bool)

(assert (=> b!4857004 (=> (not res!2073472) (not e!3036576))))

(assert (=> b!4857004 (= res!2073472 (not (isEmpty!29825 (left!40509 t!4677))))))

(assert (= (and d!1558924 (not res!2073468)) b!4857003))

(assert (= (and b!4857003 res!2073470) b!4856999))

(assert (= (and b!4856999 res!2073467) b!4857001))

(assert (= (and b!4857001 res!2073471) b!4857000))

(assert (= (and b!4857000 res!2073469) b!4857004))

(assert (= (and b!4857004 res!2073472) b!4857002))

(declare-fun m!5854770 () Bool)

(assert (=> b!4857004 m!5854770))

(declare-fun m!5854772 () Bool)

(assert (=> b!4856999 m!5854772))

(declare-fun m!5854774 () Bool)

(assert (=> b!4856999 m!5854774))

(assert (=> b!4857003 m!5854772))

(assert (=> b!4857003 m!5854774))

(declare-fun m!5854776 () Bool)

(assert (=> b!4857002 m!5854776))

(declare-fun m!5854778 () Bool)

(assert (=> b!4857000 m!5854778))

(declare-fun m!5854780 () Bool)

(assert (=> b!4857001 m!5854780))

(assert (=> start!507418 d!1558924))

(declare-fun d!1558930 () Bool)

(declare-fun c!826229 () Bool)

(assert (=> d!1558930 (= c!826229 ((_ is Node!14526) t!4677))))

(declare-fun e!3036581 () Bool)

(assert (=> d!1558930 (= (inv!71563 t!4677) e!3036581)))

(declare-fun b!4857011 () Bool)

(declare-fun inv!71567 (Conc!14526) Bool)

(assert (=> b!4857011 (= e!3036581 (inv!71567 t!4677))))

(declare-fun b!4857012 () Bool)

(declare-fun e!3036582 () Bool)

(assert (=> b!4857012 (= e!3036581 e!3036582)))

(declare-fun res!2073475 () Bool)

(assert (=> b!4857012 (= res!2073475 (not ((_ is Leaf!24204) t!4677)))))

(assert (=> b!4857012 (=> res!2073475 e!3036582)))

(declare-fun b!4857013 () Bool)

(declare-fun inv!71568 (Conc!14526) Bool)

(assert (=> b!4857013 (= e!3036582 (inv!71568 t!4677))))

(assert (= (and d!1558930 c!826229) b!4857011))

(assert (= (and d!1558930 (not c!826229)) b!4857012))

(assert (= (and b!4857012 (not res!2073475)) b!4857013))

(declare-fun m!5854786 () Bool)

(assert (=> b!4857011 m!5854786))

(declare-fun m!5854788 () Bool)

(assert (=> b!4857013 m!5854788))

(assert (=> start!507418 d!1558930))

(declare-fun d!1558938 () Bool)

(declare-fun c!826230 () Bool)

(assert (=> d!1558938 (= c!826230 ((_ is Node!14526) (left!40509 t!4677)))))

(declare-fun e!3036583 () Bool)

(assert (=> d!1558938 (= (inv!71563 (left!40509 t!4677)) e!3036583)))

(declare-fun b!4857014 () Bool)

(assert (=> b!4857014 (= e!3036583 (inv!71567 (left!40509 t!4677)))))

(declare-fun b!4857015 () Bool)

(declare-fun e!3036584 () Bool)

(assert (=> b!4857015 (= e!3036583 e!3036584)))

(declare-fun res!2073476 () Bool)

(assert (=> b!4857015 (= res!2073476 (not ((_ is Leaf!24204) (left!40509 t!4677))))))

(assert (=> b!4857015 (=> res!2073476 e!3036584)))

(declare-fun b!4857016 () Bool)

(assert (=> b!4857016 (= e!3036584 (inv!71568 (left!40509 t!4677)))))

(assert (= (and d!1558938 c!826230) b!4857014))

(assert (= (and d!1558938 (not c!826230)) b!4857015))

(assert (= (and b!4857015 (not res!2073476)) b!4857016))

(declare-fun m!5854790 () Bool)

(assert (=> b!4857014 m!5854790))

(declare-fun m!5854792 () Bool)

(assert (=> b!4857016 m!5854792))

(assert (=> b!4856959 d!1558938))

(declare-fun d!1558940 () Bool)

(declare-fun c!826231 () Bool)

(assert (=> d!1558940 (= c!826231 ((_ is Node!14526) (right!40839 t!4677)))))

(declare-fun e!3036585 () Bool)

(assert (=> d!1558940 (= (inv!71563 (right!40839 t!4677)) e!3036585)))

(declare-fun b!4857017 () Bool)

(assert (=> b!4857017 (= e!3036585 (inv!71567 (right!40839 t!4677)))))

(declare-fun b!4857018 () Bool)

(declare-fun e!3036586 () Bool)

(assert (=> b!4857018 (= e!3036585 e!3036586)))

(declare-fun res!2073477 () Bool)

(assert (=> b!4857018 (= res!2073477 (not ((_ is Leaf!24204) (right!40839 t!4677))))))

(assert (=> b!4857018 (=> res!2073477 e!3036586)))

(declare-fun b!4857019 () Bool)

(assert (=> b!4857019 (= e!3036586 (inv!71568 (right!40839 t!4677)))))

(assert (= (and d!1558940 c!826231) b!4857017))

(assert (= (and d!1558940 (not c!826231)) b!4857018))

(assert (= (and b!4857018 (not res!2073477)) b!4857019))

(declare-fun m!5854794 () Bool)

(assert (=> b!4857017 m!5854794))

(declare-fun m!5854796 () Bool)

(assert (=> b!4857019 m!5854796))

(assert (=> b!4856959 d!1558940))

(declare-fun d!1558942 () Bool)

(assert (=> d!1558942 (= (isEmpty!29824 (list!17412 t!4677)) ((_ is Nil!55746) (list!17412 t!4677)))))

(assert (=> b!4856954 d!1558942))

(declare-fun d!1558944 () Bool)

(declare-fun c!826244 () Bool)

(assert (=> d!1558944 (= c!826244 ((_ is Empty!14526) t!4677))))

(declare-fun e!3036610 () List!55870)

(assert (=> d!1558944 (= (list!17412 t!4677) e!3036610)))

(declare-fun b!4857065 () Bool)

(declare-fun e!3036611 () List!55870)

(declare-fun ++!12131 (List!55870 List!55870) List!55870)

(assert (=> b!4857065 (= e!3036611 (++!12131 (list!17412 (left!40509 t!4677)) (list!17412 (right!40839 t!4677))))))

(declare-fun b!4857063 () Bool)

(assert (=> b!4857063 (= e!3036610 e!3036611)))

(declare-fun c!826245 () Bool)

(assert (=> b!4857063 (= c!826245 ((_ is Leaf!24204) t!4677))))

(declare-fun b!4857064 () Bool)

(declare-fun list!17414 (IArray!29113) List!55870)

(assert (=> b!4857064 (= e!3036611 (list!17414 (xs!17832 t!4677)))))

(declare-fun b!4857062 () Bool)

(assert (=> b!4857062 (= e!3036610 Nil!55746)))

(assert (= (and d!1558944 c!826244) b!4857062))

(assert (= (and d!1558944 (not c!826244)) b!4857063))

(assert (= (and b!4857063 c!826245) b!4857064))

(assert (= (and b!4857063 (not c!826245)) b!4857065))

(declare-fun m!5854821 () Bool)

(assert (=> b!4857065 m!5854821))

(declare-fun m!5854826 () Bool)

(assert (=> b!4857065 m!5854826))

(assert (=> b!4857065 m!5854821))

(assert (=> b!4857065 m!5854826))

(declare-fun m!5854830 () Bool)

(assert (=> b!4857065 m!5854830))

(declare-fun m!5854832 () Bool)

(assert (=> b!4857064 m!5854832))

(assert (=> b!4856954 d!1558944))

(declare-fun b!4857073 () Bool)

(declare-fun e!3036616 () Bool)

(declare-fun tp_is_empty!35511 () Bool)

(declare-fun tp!1366457 () Bool)

(assert (=> b!4857073 (= e!3036616 (and tp_is_empty!35511 tp!1366457))))

(assert (=> b!4856957 (= tp!1366437 e!3036616)))

(assert (= (and b!4856957 ((_ is Cons!55746) (innerList!14614 (xs!17832 t!4677)))) b!4857073))

(declare-fun e!3036622 () Bool)

(declare-fun tp!1366465 () Bool)

(declare-fun b!4857082 () Bool)

(declare-fun tp!1366466 () Bool)

(assert (=> b!4857082 (= e!3036622 (and (inv!71563 (left!40509 (left!40509 t!4677))) tp!1366465 (inv!71563 (right!40839 (left!40509 t!4677))) tp!1366466))))

(declare-fun b!4857084 () Bool)

(declare-fun e!3036621 () Bool)

(declare-fun tp!1366464 () Bool)

(assert (=> b!4857084 (= e!3036621 tp!1366464)))

(declare-fun b!4857083 () Bool)

(assert (=> b!4857083 (= e!3036622 (and (inv!71564 (xs!17832 (left!40509 t!4677))) e!3036621))))

(assert (=> b!4856959 (= tp!1366438 (and (inv!71563 (left!40509 t!4677)) e!3036622))))

(assert (= (and b!4856959 ((_ is Node!14526) (left!40509 t!4677))) b!4857082))

(assert (= b!4857083 b!4857084))

(assert (= (and b!4856959 ((_ is Leaf!24204) (left!40509 t!4677))) b!4857083))

(declare-fun m!5854834 () Bool)

(assert (=> b!4857082 m!5854834))

(declare-fun m!5854836 () Bool)

(assert (=> b!4857082 m!5854836))

(declare-fun m!5854838 () Bool)

(assert (=> b!4857083 m!5854838))

(assert (=> b!4856959 m!5854742))

(declare-fun tp!1366468 () Bool)

(declare-fun tp!1366469 () Bool)

(declare-fun e!3036624 () Bool)

(declare-fun b!4857085 () Bool)

(assert (=> b!4857085 (= e!3036624 (and (inv!71563 (left!40509 (right!40839 t!4677))) tp!1366468 (inv!71563 (right!40839 (right!40839 t!4677))) tp!1366469))))

(declare-fun b!4857087 () Bool)

(declare-fun e!3036623 () Bool)

(declare-fun tp!1366467 () Bool)

(assert (=> b!4857087 (= e!3036623 tp!1366467)))

(declare-fun b!4857086 () Bool)

(assert (=> b!4857086 (= e!3036624 (and (inv!71564 (xs!17832 (right!40839 t!4677))) e!3036623))))

(assert (=> b!4856959 (= tp!1366439 (and (inv!71563 (right!40839 t!4677)) e!3036624))))

(assert (= (and b!4856959 ((_ is Node!14526) (right!40839 t!4677))) b!4857085))

(assert (= b!4857086 b!4857087))

(assert (= (and b!4856959 ((_ is Leaf!24204) (right!40839 t!4677))) b!4857086))

(declare-fun m!5854840 () Bool)

(assert (=> b!4857085 m!5854840))

(declare-fun m!5854842 () Bool)

(assert (=> b!4857085 m!5854842))

(declare-fun m!5854844 () Bool)

(assert (=> b!4857086 m!5854844))

(assert (=> b!4856959 m!5854744))

(check-sat (not b!4857001) (not b!4857086) (not b!4856959) (not b!4857019) (not b!4857083) tp_is_empty!35511 (not b!4857013) (not b!4856999) (not d!1558920) (not b!4857073) (not b!4857014) (not b!4857016) (not b!4857065) (not b!4857082) (not b!4857087) (not d!1558922) (not b!4857017) (not b!4857064) (not b!4857011) (not b!4857084) (not b!4857003) (not b!4857000) (not b!4857085) (not b!4857002) (not b!4857004))
(check-sat)
