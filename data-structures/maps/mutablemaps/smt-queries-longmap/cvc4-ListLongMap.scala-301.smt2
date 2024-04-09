; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5246 () Bool)

(assert start!5246)

(declare-datatypes ((B!798 0))(
  ( (B!799 (val!899 Int)) )
))
(declare-datatypes ((tuple2!1462 0))(
  ( (tuple2!1463 (_1!741 (_ BitVec 64)) (_2!741 B!798)) )
))
(declare-datatypes ((List!1025 0))(
  ( (Nil!1022) (Cons!1021 (h!1589 tuple2!1462) (t!3866 List!1025)) )
))
(declare-datatypes ((ListLongMap!1043 0))(
  ( (ListLongMap!1044 (toList!537 List!1025)) )
))
(declare-fun lm!266 () ListLongMap!1043)

(declare-fun isStrictlySorted!201 (List!1025) Bool)

(assert (=> start!5246 (not (isStrictlySorted!201 (toList!537 lm!266)))))

(declare-fun e!24204 () Bool)

(declare-fun inv!1709 (ListLongMap!1043) Bool)

(assert (=> start!5246 (and (inv!1709 lm!266) e!24204)))

(declare-fun b!38070 () Bool)

(declare-fun tp!5657 () Bool)

(assert (=> b!38070 (= e!24204 tp!5657)))

(assert (= start!5246 b!38070))

(declare-fun m!30775 () Bool)

(assert (=> start!5246 m!30775))

(declare-fun m!30777 () Bool)

(assert (=> start!5246 m!30777))

(push 1)

(assert (not start!5246))

(assert (not b!38070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6187 () Bool)

(declare-fun res!22989 () Bool)

(declare-fun e!24221 () Bool)

(assert (=> d!6187 (=> res!22989 e!24221)))

(assert (=> d!6187 (= res!22989 (or (is-Nil!1022 (toList!537 lm!266)) (is-Nil!1022 (t!3866 (toList!537 lm!266)))))))

(assert (=> d!6187 (= (isStrictlySorted!201 (toList!537 lm!266)) e!24221)))

(declare-fun b!38087 () Bool)

(declare-fun e!24222 () Bool)

(assert (=> b!38087 (= e!24221 e!24222)))

(declare-fun res!22990 () Bool)

(assert (=> b!38087 (=> (not res!22990) (not e!24222))))

(assert (=> b!38087 (= res!22990 (bvslt (_1!741 (h!1589 (toList!537 lm!266))) (_1!741 (h!1589 (t!3866 (toList!537 lm!266))))))))

(declare-fun b!38088 () Bool)

(assert (=> b!38088 (= e!24222 (isStrictlySorted!201 (t!3866 (toList!537 lm!266))))))

(assert (= (and d!6187 (not res!22989)) b!38087))

(assert (= (and b!38087 res!22990) b!38088))

(declare-fun m!30783 () Bool)

(assert (=> b!38088 m!30783))

(assert (=> start!5246 d!6187))

