; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134500 () Bool)

(assert start!134500)

(declare-fun b!1569667 () Bool)

(declare-fun e!875085 () Bool)

(declare-datatypes ((B!2540 0))(
  ( (B!2541 (val!19632 Int)) )
))
(declare-datatypes ((tuple2!25530 0))(
  ( (tuple2!25531 (_1!12775 (_ BitVec 64)) (_2!12775 B!2540)) )
))
(declare-datatypes ((List!36913 0))(
  ( (Nil!36910) (Cons!36909 (h!38357 tuple2!25530) (t!51828 List!36913)) )
))
(declare-fun l!750 () List!36913)

(declare-fun ListPrimitiveSize!190 (List!36913) Int)

(assert (=> b!1569667 (= e!875085 (>= (ListPrimitiveSize!190 (t!51828 l!750)) (ListPrimitiveSize!190 l!750)))))

(declare-fun b!1569668 () Bool)

(declare-fun res!1072786 () Bool)

(assert (=> b!1569668 (=> (not res!1072786) (not e!875085))))

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(assert (=> b!1569668 (= res!1072786 (and (is-Cons!36909 l!750) (bvslt (_1!12775 (h!38357 l!750)) key1!37) (bvslt (_1!12775 (h!38357 l!750)) key2!21)))))

(declare-fun res!1072787 () Bool)

(assert (=> start!134500 (=> (not res!1072787) (not e!875085))))

(assert (=> start!134500 (= res!1072787 (not (= key1!37 key2!21)))))

(assert (=> start!134500 e!875085))

(assert (=> start!134500 true))

(declare-fun e!875084 () Bool)

(assert (=> start!134500 e!875084))

(declare-fun b!1569669 () Bool)

(declare-fun res!1072785 () Bool)

(assert (=> b!1569669 (=> (not res!1072785) (not e!875085))))

(declare-fun isStrictlySorted!1014 (List!36913) Bool)

(assert (=> b!1569669 (= res!1072785 (isStrictlySorted!1014 l!750))))

(declare-fun b!1569670 () Bool)

(declare-fun res!1072784 () Bool)

(assert (=> b!1569670 (=> (not res!1072784) (not e!875085))))

(assert (=> b!1569670 (= res!1072784 (isStrictlySorted!1014 (t!51828 l!750)))))

(declare-fun b!1569671 () Bool)

(declare-fun tp_is_empty!39091 () Bool)

(declare-fun tp!114193 () Bool)

(assert (=> b!1569671 (= e!875084 (and tp_is_empty!39091 tp!114193))))

(assert (= (and start!134500 res!1072787) b!1569669))

(assert (= (and b!1569669 res!1072785) b!1569668))

(assert (= (and b!1569668 res!1072786) b!1569670))

(assert (= (and b!1569670 res!1072784) b!1569667))

(assert (= (and start!134500 (is-Cons!36909 l!750)) b!1569671))

(declare-fun m!1443823 () Bool)

(assert (=> b!1569667 m!1443823))

(declare-fun m!1443825 () Bool)

(assert (=> b!1569667 m!1443825))

(declare-fun m!1443827 () Bool)

(assert (=> b!1569669 m!1443827))

(declare-fun m!1443829 () Bool)

(assert (=> b!1569670 m!1443829))

(push 1)

(assert (not b!1569670))

(assert (not b!1569667))

(assert tp_is_empty!39091)

(assert (not b!1569671))

(assert (not b!1569669))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163873 () Bool)

(declare-fun lt!673253 () Int)

(assert (=> d!163873 (>= lt!673253 0)))

(declare-fun e!875114 () Int)

(assert (=> d!163873 (= lt!673253 e!875114)))

(declare-fun c!144724 () Bool)

(assert (=> d!163873 (= c!144724 (is-Nil!36910 (t!51828 l!750)))))

(assert (=> d!163873 (= (ListPrimitiveSize!190 (t!51828 l!750)) lt!673253)))

(declare-fun b!1569726 () Bool)

(assert (=> b!1569726 (= e!875114 0)))

(declare-fun b!1569727 () Bool)

(assert (=> b!1569727 (= e!875114 (+ 1 (ListPrimitiveSize!190 (t!51828 (t!51828 l!750)))))))

(assert (= (and d!163873 c!144724) b!1569726))

(assert (= (and d!163873 (not c!144724)) b!1569727))

(declare-fun m!1443851 () Bool)

(assert (=> b!1569727 m!1443851))

(assert (=> b!1569667 d!163873))

(declare-fun d!163877 () Bool)

(declare-fun lt!673254 () Int)

(assert (=> d!163877 (>= lt!673254 0)))

(declare-fun e!875116 () Int)

(assert (=> d!163877 (= lt!673254 e!875116)))

(declare-fun c!144725 () Bool)

(assert (=> d!163877 (= c!144725 (is-Nil!36910 l!750))))

(assert (=> d!163877 (= (ListPrimitiveSize!190 l!750) lt!673254)))

(declare-fun b!1569729 () Bool)

(assert (=> b!1569729 (= e!875116 0)))

(declare-fun b!1569730 () Bool)

(assert (=> b!1569730 (= e!875116 (+ 1 (ListPrimitiveSize!190 (t!51828 l!750))))))

(assert (= (and d!163877 c!144725) b!1569729))

(assert (= (and d!163877 (not c!144725)) b!1569730))

(assert (=> b!1569730 m!1443823))

(assert (=> b!1569667 d!163877))

(declare-fun d!163881 () Bool)

(declare-fun res!1072828 () Bool)

(declare-fun e!875125 () Bool)

(assert (=> d!163881 (=> res!1072828 e!875125)))

(assert (=> d!163881 (= res!1072828 (or (is-Nil!36910 l!750) (is-Nil!36910 (t!51828 l!750))))))

(assert (=> d!163881 (= (isStrictlySorted!1014 l!750) e!875125)))

(declare-fun b!1569740 () Bool)

(declare-fun e!875127 () Bool)

(assert (=> b!1569740 (= e!875125 e!875127)))

(declare-fun res!1072830 () Bool)

(assert (=> b!1569740 (=> (not res!1072830) (not e!875127))))

(assert (=> b!1569740 (= res!1072830 (bvslt (_1!12775 (h!38357 l!750)) (_1!12775 (h!38357 (t!51828 l!750)))))))

(declare-fun b!1569742 () Bool)

(assert (=> b!1569742 (= e!875127 (isStrictlySorted!1014 (t!51828 l!750)))))

(assert (= (and d!163881 (not res!1072828)) b!1569740))

(assert (= (and b!1569740 res!1072830) b!1569742))

(assert (=> b!1569742 m!1443829))

(assert (=> b!1569669 d!163881))

(declare-fun d!163885 () Bool)

(declare-fun res!1072832 () Bool)

(declare-fun e!875129 () Bool)

(assert (=> d!163885 (=> res!1072832 e!875129)))

(assert (=> d!163885 (= res!1072832 (or (is-Nil!36910 (t!51828 l!750)) (is-Nil!36910 (t!51828 (t!51828 l!750)))))))

(assert (=> d!163885 (= (isStrictlySorted!1014 (t!51828 l!750)) e!875129)))

(declare-fun b!1569743 () Bool)

(declare-fun e!875130 () Bool)

(assert (=> b!1569743 (= e!875129 e!875130)))

(declare-fun res!1072833 () Bool)

(assert (=> b!1569743 (=> (not res!1072833) (not e!875130))))

(assert (=> b!1569743 (= res!1072833 (bvslt (_1!12775 (h!38357 (t!51828 l!750))) (_1!12775 (h!38357 (t!51828 (t!51828 l!750))))))))

(declare-fun b!1569744 () Bool)

(assert (=> b!1569744 (= e!875130 (isStrictlySorted!1014 (t!51828 (t!51828 l!750))))))

(assert (= (and d!163885 (not res!1072832)) b!1569743))

(assert (= (and b!1569743 res!1072833) b!1569744))

(declare-fun m!1443853 () Bool)

(assert (=> b!1569744 m!1443853))

(assert (=> b!1569670 d!163885))

(declare-fun b!1569749 () Bool)

(declare-fun e!875133 () Bool)

(declare-fun tp!114205 () Bool)

