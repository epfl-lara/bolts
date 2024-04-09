; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134464 () Bool)

(assert start!134464)

(declare-fun res!1072694 () Bool)

(declare-fun e!874970 () Bool)

(assert (=> start!134464 (=> (not res!1072694) (not e!874970))))

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun key2!21 () (_ BitVec 64))

(assert (=> start!134464 (= res!1072694 (not (= key1!37 key2!21)))))

(assert (=> start!134464 e!874970))

(assert (=> start!134464 true))

(declare-fun e!874971 () Bool)

(assert (=> start!134464 e!874971))

(declare-fun b!1569501 () Bool)

(declare-fun res!1072693 () Bool)

(assert (=> b!1569501 (=> (not res!1072693) (not e!874970))))

(declare-datatypes ((B!2522 0))(
  ( (B!2523 (val!19623 Int)) )
))
(declare-datatypes ((tuple2!25512 0))(
  ( (tuple2!25513 (_1!12766 (_ BitVec 64)) (_2!12766 B!2522)) )
))
(declare-datatypes ((List!36904 0))(
  ( (Nil!36901) (Cons!36900 (h!38348 tuple2!25512) (t!51819 List!36904)) )
))
(declare-fun l!750 () List!36904)

(declare-fun isStrictlySorted!1008 (List!36904) Bool)

(assert (=> b!1569501 (= res!1072693 (isStrictlySorted!1008 l!750))))

(declare-fun b!1569502 () Bool)

(declare-fun ListPrimitiveSize!187 (List!36904) Int)

(assert (=> b!1569502 (= e!874970 (< (ListPrimitiveSize!187 l!750) 0))))

(declare-fun b!1569503 () Bool)

(declare-fun tp_is_empty!39073 () Bool)

(declare-fun tp!114148 () Bool)

(assert (=> b!1569503 (= e!874971 (and tp_is_empty!39073 tp!114148))))

(assert (= (and start!134464 res!1072694) b!1569501))

(assert (= (and b!1569501 res!1072693) b!1569502))

(assert (= (and start!134464 (is-Cons!36900 l!750)) b!1569503))

(declare-fun m!1443781 () Bool)

(assert (=> b!1569501 m!1443781))

(declare-fun m!1443783 () Bool)

(assert (=> b!1569502 m!1443783))

(push 1)

(assert (not b!1569502))

(assert (not b!1569501))

(assert (not b!1569503))

(assert tp_is_empty!39073)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163841 () Bool)

(declare-fun lt!673246 () Int)

(assert (=> d!163841 (>= lt!673246 0)))

(declare-fun e!874998 () Int)

(assert (=> d!163841 (= lt!673246 e!874998)))

(declare-fun c!144717 () Bool)

(assert (=> d!163841 (= c!144717 (is-Nil!36901 l!750))))

(assert (=> d!163841 (= (ListPrimitiveSize!187 l!750) lt!673246)))

(declare-fun b!1569544 () Bool)

(assert (=> b!1569544 (= e!874998 0)))

(declare-fun b!1569545 () Bool)

(assert (=> b!1569545 (= e!874998 (+ 1 (ListPrimitiveSize!187 (t!51819 l!750))))))

(assert (= (and d!163841 c!144717) b!1569544))

(assert (= (and d!163841 (not c!144717)) b!1569545))

(declare-fun m!1443799 () Bool)

(assert (=> b!1569545 m!1443799))

(assert (=> b!1569502 d!163841))

(declare-fun d!163847 () Bool)

(declare-fun res!1072723 () Bool)

(declare-fun e!875015 () Bool)

(assert (=> d!163847 (=> res!1072723 e!875015)))

(assert (=> d!163847 (= res!1072723 (or (is-Nil!36901 l!750) (is-Nil!36901 (t!51819 l!750))))))

(assert (=> d!163847 (= (isStrictlySorted!1008 l!750) e!875015)))

(declare-fun b!1569566 () Bool)

(declare-fun e!875016 () Bool)

(assert (=> b!1569566 (= e!875015 e!875016)))

(declare-fun res!1072724 () Bool)

(assert (=> b!1569566 (=> (not res!1072724) (not e!875016))))

(assert (=> b!1569566 (= res!1072724 (bvslt (_1!12766 (h!38348 l!750)) (_1!12766 (h!38348 (t!51819 l!750)))))))

(declare-fun b!1569567 () Bool)

(assert (=> b!1569567 (= e!875016 (isStrictlySorted!1008 (t!51819 l!750)))))

(assert (= (and d!163847 (not res!1072723)) b!1569566))

(assert (= (and b!1569566 res!1072724) b!1569567))

(declare-fun m!1443803 () Bool)

(assert (=> b!1569567 m!1443803))

(assert (=> b!1569501 d!163847))

(declare-fun b!1569572 () Bool)

(declare-fun e!875019 () Bool)

(declare-fun tp!114163 () Bool)

(assert (=> b!1569572 (= e!875019 (and tp_is_empty!39073 tp!114163))))

(assert (=> b!1569503 (= tp!114148 e!875019)))

(assert (= (and b!1569503 (is-Cons!36900 (t!51819 l!750))) b!1569572))

(push 1)

