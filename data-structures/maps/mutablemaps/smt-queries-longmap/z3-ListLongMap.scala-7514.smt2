; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95298 () Bool)

(assert start!95298)

(declare-fun res!717620 () Bool)

(declare-fun e!615484 () Bool)

(assert (=> start!95298 (=> (not res!717620) (not e!615484))))

(declare-fun a1!69 () (_ BitVec 64))

(declare-fun a2!57 () (_ BitVec 64))

(assert (=> start!95298 (= res!717620 (not (= a1!69 a2!57)))))

(assert (=> start!95298 e!615484))

(assert (=> start!95298 true))

(declare-datatypes ((B!1768 0))(
  ( (B!1769 (val!13087 Int)) )
))
(declare-datatypes ((tuple2!16756 0))(
  ( (tuple2!16757 (_1!8388 (_ BitVec 64)) (_2!8388 B!1768)) )
))
(declare-datatypes ((List!23322 0))(
  ( (Nil!23319) (Cons!23318 (h!24527 tuple2!16756) (t!32688 List!23322)) )
))
(declare-datatypes ((ListLongMap!14737 0))(
  ( (ListLongMap!14738 (toList!7384 List!23322)) )
))
(declare-fun lm!214 () ListLongMap!14737)

(declare-fun e!615485 () Bool)

(declare-fun inv!37854 (ListLongMap!14737) Bool)

(assert (=> start!95298 (and (inv!37854 lm!214) e!615485)))

(declare-fun b!1076593 () Bool)

(declare-fun isStrictlySorted!718 (List!23322) Bool)

(assert (=> b!1076593 (= e!615484 (not (isStrictlySorted!718 (toList!7384 lm!214))))))

(declare-fun b!1076594 () Bool)

(declare-fun tp!78264 () Bool)

(assert (=> b!1076594 (= e!615485 tp!78264)))

(assert (= (and start!95298 res!717620) b!1076593))

(assert (= start!95298 b!1076594))

(declare-fun m!995725 () Bool)

(assert (=> start!95298 m!995725))

(declare-fun m!995727 () Bool)

(assert (=> b!1076593 m!995727))

(check-sat (not start!95298) (not b!1076593) (not b!1076594))
(check-sat)
(get-model)

(declare-fun d!129665 () Bool)

(assert (=> d!129665 (= (inv!37854 lm!214) (isStrictlySorted!718 (toList!7384 lm!214)))))

(declare-fun bs!31712 () Bool)

(assert (= bs!31712 d!129665))

(assert (=> bs!31712 m!995727))

(assert (=> start!95298 d!129665))

(declare-fun d!129669 () Bool)

(declare-fun res!717636 () Bool)

(declare-fun e!615504 () Bool)

(assert (=> d!129669 (=> res!717636 e!615504)))

(get-info :version)

(assert (=> d!129669 (= res!717636 (or ((_ is Nil!23319) (toList!7384 lm!214)) ((_ is Nil!23319) (t!32688 (toList!7384 lm!214)))))))

(assert (=> d!129669 (= (isStrictlySorted!718 (toList!7384 lm!214)) e!615504)))

(declare-fun b!1076613 () Bool)

(declare-fun e!615505 () Bool)

(assert (=> b!1076613 (= e!615504 e!615505)))

(declare-fun res!717637 () Bool)

(assert (=> b!1076613 (=> (not res!717637) (not e!615505))))

(assert (=> b!1076613 (= res!717637 (bvslt (_1!8388 (h!24527 (toList!7384 lm!214))) (_1!8388 (h!24527 (t!32688 (toList!7384 lm!214))))))))

(declare-fun b!1076614 () Bool)

(assert (=> b!1076614 (= e!615505 (isStrictlySorted!718 (t!32688 (toList!7384 lm!214))))))

(assert (= (and d!129669 (not res!717636)) b!1076613))

(assert (= (and b!1076613 res!717637) b!1076614))

(declare-fun m!995733 () Bool)

(assert (=> b!1076614 m!995733))

(assert (=> b!1076593 d!129669))

(declare-fun b!1076623 () Bool)

(declare-fun e!615512 () Bool)

(declare-fun tp_is_empty!26059 () Bool)

(declare-fun tp!78270 () Bool)

(assert (=> b!1076623 (= e!615512 (and tp_is_empty!26059 tp!78270))))

(assert (=> b!1076594 (= tp!78264 e!615512)))

(assert (= (and b!1076594 ((_ is Cons!23318) (toList!7384 lm!214))) b!1076623))

(check-sat (not b!1076614) (not d!129665) (not b!1076623) tp_is_empty!26059)
(check-sat)
