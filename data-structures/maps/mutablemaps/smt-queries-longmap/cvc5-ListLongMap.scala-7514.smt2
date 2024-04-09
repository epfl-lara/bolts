; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95296 () Bool)

(assert start!95296)

(declare-fun res!717617 () Bool)

(declare-fun e!615478 () Bool)

(assert (=> start!95296 (=> (not res!717617) (not e!615478))))

(declare-fun a1!69 () (_ BitVec 64))

(declare-fun a2!57 () (_ BitVec 64))

(assert (=> start!95296 (= res!717617 (not (= a1!69 a2!57)))))

(assert (=> start!95296 e!615478))

(assert (=> start!95296 true))

(declare-datatypes ((B!1766 0))(
  ( (B!1767 (val!13086 Int)) )
))
(declare-datatypes ((tuple2!16754 0))(
  ( (tuple2!16755 (_1!8387 (_ BitVec 64)) (_2!8387 B!1766)) )
))
(declare-datatypes ((List!23321 0))(
  ( (Nil!23318) (Cons!23317 (h!24526 tuple2!16754) (t!32687 List!23321)) )
))
(declare-datatypes ((ListLongMap!14735 0))(
  ( (ListLongMap!14736 (toList!7383 List!23321)) )
))
(declare-fun lm!214 () ListLongMap!14735)

(declare-fun e!615479 () Bool)

(declare-fun inv!37853 (ListLongMap!14735) Bool)

(assert (=> start!95296 (and (inv!37853 lm!214) e!615479)))

(declare-fun b!1076587 () Bool)

(declare-fun isStrictlySorted!717 (List!23321) Bool)

(assert (=> b!1076587 (= e!615478 (not (isStrictlySorted!717 (toList!7383 lm!214))))))

(declare-fun b!1076588 () Bool)

(declare-fun tp!78261 () Bool)

(assert (=> b!1076588 (= e!615479 tp!78261)))

(assert (= (and start!95296 res!717617) b!1076587))

(assert (= start!95296 b!1076588))

(declare-fun m!995721 () Bool)

(assert (=> start!95296 m!995721))

(declare-fun m!995723 () Bool)

(assert (=> b!1076587 m!995723))

(push 1)

(assert (not b!1076587))

(assert (not start!95296))

(assert (not b!1076588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!129671 () Bool)

(declare-fun res!717638 () Bool)

(declare-fun e!615506 () Bool)

(assert (=> d!129671 (=> res!717638 e!615506)))

(assert (=> d!129671 (= res!717638 (or (is-Nil!23318 (toList!7383 lm!214)) (is-Nil!23318 (t!32687 (toList!7383 lm!214)))))))

(assert (=> d!129671 (= (isStrictlySorted!717 (toList!7383 lm!214)) e!615506)))

(declare-fun b!1076615 () Bool)

(declare-fun e!615507 () Bool)

(assert (=> b!1076615 (= e!615506 e!615507)))

(declare-fun res!717639 () Bool)

(assert (=> b!1076615 (=> (not res!717639) (not e!615507))))

(assert (=> b!1076615 (= res!717639 (bvslt (_1!8387 (h!24526 (toList!7383 lm!214))) (_1!8387 (h!24526 (t!32687 (toList!7383 lm!214))))))))

(declare-fun b!1076616 () Bool)

(assert (=> b!1076616 (= e!615507 (isStrictlySorted!717 (t!32687 (toList!7383 lm!214))))))

(assert (= (and d!129671 (not res!717638)) b!1076615))

(assert (= (and b!1076615 res!717639) b!1076616))

(declare-fun m!995735 () Bool)

(assert (=> b!1076616 m!995735))

(assert (=> b!1076587 d!129671))

(declare-fun d!129675 () Bool)

(assert (=> d!129675 (= (inv!37853 lm!214) (isStrictlySorted!717 (toList!7383 lm!214)))))

(declare-fun bs!31714 () Bool)

(assert (= bs!31714 d!129675))

(assert (=> bs!31714 m!995723))

(assert (=> start!95296 d!129675))

(declare-fun b!1076633 () Bool)

(declare-fun e!615518 () Bool)

(declare-fun tp_is_empty!26063 () Bool)

(declare-fun tp!78276 () Bool)

(assert (=> b!1076633 (= e!615518 (and tp_is_empty!26063 tp!78276))))

(assert (=> b!1076588 (= tp!78261 e!615518)))

(assert (= (and b!1076588 (is-Cons!23317 (toList!7383 lm!214))) b!1076633))

(push 1)

