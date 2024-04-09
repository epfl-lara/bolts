; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72014 () Bool)

(assert start!72014)

(declare-fun res!568987 () Bool)

(declare-fun e!466477 () Bool)

(assert (=> start!72014 (=> (not res!568987) (not e!466477))))

(declare-datatypes ((B!1182 0))(
  ( (B!1183 (val!7673 Int)) )
))
(declare-datatypes ((tuple2!10224 0))(
  ( (tuple2!10225 (_1!5122 (_ BitVec 64)) (_2!5122 B!1182)) )
))
(declare-datatypes ((List!16032 0))(
  ( (Nil!16029) (Cons!16028 (h!17159 tuple2!10224) (t!22411 List!16032)) )
))
(declare-fun l!390 () List!16032)

(declare-fun isStrictlySorted!444 (List!16032) Bool)

(assert (=> start!72014 (= res!568987 (isStrictlySorted!444 l!390))))

(assert (=> start!72014 e!466477))

(declare-fun e!466478 () Bool)

(assert (=> start!72014 e!466478))

(declare-fun b!836115 () Bool)

(declare-fun res!568986 () Bool)

(assert (=> b!836115 (=> (not res!568986) (not e!466477))))

(assert (=> b!836115 (= res!568986 (is-Cons!16028 l!390))))

(declare-fun b!836116 () Bool)

(assert (=> b!836116 (= e!466477 (not (isStrictlySorted!444 (t!22411 l!390))))))

(declare-fun b!836117 () Bool)

(declare-fun tp_is_empty!15251 () Bool)

(declare-fun tp!47411 () Bool)

(assert (=> b!836117 (= e!466478 (and tp_is_empty!15251 tp!47411))))

(assert (= (and start!72014 res!568987) b!836115))

(assert (= (and b!836115 res!568986) b!836116))

(assert (= (and start!72014 (is-Cons!16028 l!390)) b!836117))

(declare-fun m!781599 () Bool)

(assert (=> start!72014 m!781599))

(declare-fun m!781601 () Bool)

(assert (=> b!836116 m!781601))

(push 1)

(assert (not b!836116))

(assert (not start!72014))

(assert (not b!836117))

(assert tp_is_empty!15251)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107469 () Bool)

(declare-fun res!569002 () Bool)

(declare-fun e!466493 () Bool)

(assert (=> d!107469 (=> res!569002 e!466493)))

(assert (=> d!107469 (= res!569002 (or (is-Nil!16029 (t!22411 l!390)) (is-Nil!16029 (t!22411 (t!22411 l!390)))))))

(assert (=> d!107469 (= (isStrictlySorted!444 (t!22411 l!390)) e!466493)))

(declare-fun b!836132 () Bool)

(declare-fun e!466494 () Bool)

(assert (=> b!836132 (= e!466493 e!466494)))

(declare-fun res!569003 () Bool)

(assert (=> b!836132 (=> (not res!569003) (not e!466494))))

(assert (=> b!836132 (= res!569003 (bvslt (_1!5122 (h!17159 (t!22411 l!390))) (_1!5122 (h!17159 (t!22411 (t!22411 l!390))))))))

(declare-fun b!836133 () Bool)

(assert (=> b!836133 (= e!466494 (isStrictlySorted!444 (t!22411 (t!22411 l!390))))))

(assert (= (and d!107469 (not res!569002)) b!836132))

(assert (= (and b!836132 res!569003) b!836133))

(declare-fun m!781603 () Bool)

(assert (=> b!836133 m!781603))

(assert (=> b!836116 d!107469))

(declare-fun d!107475 () Bool)

(declare-fun res!569008 () Bool)

(declare-fun e!466499 () Bool)

(assert (=> d!107475 (=> res!569008 e!466499)))

(assert (=> d!107475 (= res!569008 (or (is-Nil!16029 l!390) (is-Nil!16029 (t!22411 l!390))))))

(assert (=> d!107475 (= (isStrictlySorted!444 l!390) e!466499)))

(declare-fun b!836138 () Bool)

(declare-fun e!466500 () Bool)

(assert (=> b!836138 (= e!466499 e!466500)))

(declare-fun res!569009 () Bool)

(assert (=> b!836138 (=> (not res!569009) (not e!466500))))

(assert (=> b!836138 (= res!569009 (bvslt (_1!5122 (h!17159 l!390)) (_1!5122 (h!17159 (t!22411 l!390)))))))

(declare-fun b!836139 () Bool)

(assert (=> b!836139 (= e!466500 (isStrictlySorted!444 (t!22411 l!390)))))

(assert (= (and d!107475 (not res!569008)) b!836138))

(assert (= (and b!836138 res!569009) b!836139))

(assert (=> b!836139 m!781601))

(assert (=> start!72014 d!107475))

(declare-fun b!836155 () Bool)

(declare-fun e!466510 () Bool)

(declare-fun tp!47419 () Bool)

(assert (=> b!836155 (= e!466510 (and tp_is_empty!15251 tp!47419))))

(assert (=> b!836117 (= tp!47411 e!466510)))

(assert (= (and b!836117 (is-Cons!16028 (t!22411 l!390))) b!836155))

(push 1)

