; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87316 () Bool)

(assert start!87316)

(declare-fun res!679794 () Bool)

(declare-fun e!569200 () Bool)

(assert (=> start!87316 (=> (not res!679794) (not e!569200))))

(declare-datatypes ((B!1310 0))(
  ( (B!1311 (val!11739 Int)) )
))
(declare-datatypes ((tuple2!15114 0))(
  ( (tuple2!15115 (_1!7567 (_ BitVec 64)) (_2!7567 B!1310)) )
))
(declare-datatypes ((List!21445 0))(
  ( (Nil!21442) (Cons!21441 (h!22639 tuple2!15114) (t!30454 List!21445)) )
))
(declare-fun l!412 () List!21445)

(declare-fun isStrictlySorted!515 (List!21445) Bool)

(assert (=> start!87316 (= res!679794 (isStrictlySorted!515 l!412))))

(assert (=> start!87316 e!569200))

(declare-fun e!569201 () Bool)

(assert (=> start!87316 e!569201))

(declare-fun tp_is_empty!23377 () Bool)

(assert (=> start!87316 tp_is_empty!23377))

(declare-fun b!1011746 () Bool)

(declare-fun res!679795 () Bool)

(assert (=> b!1011746 (=> (not res!679795) (not e!569200))))

(declare-fun value!115 () B!1310)

(assert (=> b!1011746 (= res!679795 (and (is-Cons!21441 l!412) (= (_2!7567 (h!22639 l!412)) value!115)))))

(declare-fun b!1011747 () Bool)

(assert (=> b!1011747 (= e!569200 (not (isStrictlySorted!515 (t!30454 l!412))))))

(declare-fun b!1011748 () Bool)

(declare-fun tp!70212 () Bool)

(assert (=> b!1011748 (= e!569201 (and tp_is_empty!23377 tp!70212))))

(assert (= (and start!87316 res!679794) b!1011746))

(assert (= (and b!1011746 res!679795) b!1011747))

(assert (= (and start!87316 (is-Cons!21441 l!412)) b!1011748))

(declare-fun m!935823 () Bool)

(assert (=> start!87316 m!935823))

(declare-fun m!935825 () Bool)

(assert (=> b!1011747 m!935825))

(push 1)

(assert (not start!87316))

(assert (not b!1011747))

(assert (not b!1011748))

(assert tp_is_empty!23377)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120169 () Bool)

(declare-fun res!679816 () Bool)

(declare-fun e!569222 () Bool)

(assert (=> d!120169 (=> res!679816 e!569222)))

(assert (=> d!120169 (= res!679816 (or (is-Nil!21442 l!412) (is-Nil!21442 (t!30454 l!412))))))

(assert (=> d!120169 (= (isStrictlySorted!515 l!412) e!569222)))

(declare-fun b!1011775 () Bool)

(declare-fun e!569223 () Bool)

(assert (=> b!1011775 (= e!569222 e!569223)))

(declare-fun res!679817 () Bool)

(assert (=> b!1011775 (=> (not res!679817) (not e!569223))))

(assert (=> b!1011775 (= res!679817 (bvslt (_1!7567 (h!22639 l!412)) (_1!7567 (h!22639 (t!30454 l!412)))))))

(declare-fun b!1011776 () Bool)

(assert (=> b!1011776 (= e!569223 (isStrictlySorted!515 (t!30454 l!412)))))

(assert (= (and d!120169 (not res!679816)) b!1011775))

(assert (= (and b!1011775 res!679817) b!1011776))

(assert (=> b!1011776 m!935825))

(assert (=> start!87316 d!120169))

(declare-fun d!120175 () Bool)

(declare-fun res!679820 () Bool)

(declare-fun e!569226 () Bool)

(assert (=> d!120175 (=> res!679820 e!569226)))

(assert (=> d!120175 (= res!679820 (or (is-Nil!21442 (t!30454 l!412)) (is-Nil!21442 (t!30454 (t!30454 l!412)))))))

(assert (=> d!120175 (= (isStrictlySorted!515 (t!30454 l!412)) e!569226)))

(declare-fun b!1011779 () Bool)

(declare-fun e!569227 () Bool)

(assert (=> b!1011779 (= e!569226 e!569227)))

(declare-fun res!679821 () Bool)

(assert (=> b!1011779 (=> (not res!679821) (not e!569227))))

(assert (=> b!1011779 (= res!679821 (bvslt (_1!7567 (h!22639 (t!30454 l!412))) (_1!7567 (h!22639 (t!30454 (t!30454 l!412))))))))

(declare-fun b!1011780 () Bool)

(assert (=> b!1011780 (= e!569227 (isStrictlySorted!515 (t!30454 (t!30454 l!412))))))

(assert (= (and d!120175 (not res!679820)) b!1011779))

(assert (= (and b!1011779 res!679821) b!1011780))

(declare-fun m!935835 () Bool)

(assert (=> b!1011780 m!935835))

(assert (=> b!1011747 d!120175))

(declare-fun b!1011795 () Bool)

(declare-fun e!569238 () Bool)

(declare-fun tp!70223 () Bool)

(assert (=> b!1011795 (= e!569238 (and tp_is_empty!23377 tp!70223))))

(assert (=> b!1011748 (= tp!70212 e!569238)))

(assert (= (and b!1011748 (is-Cons!21441 (t!30454 l!412))) b!1011795))

(push 1)

(assert (not b!1011780))

(assert (not b!1011776))

(assert (not b!1011795))

(assert tp_is_empty!23377)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

