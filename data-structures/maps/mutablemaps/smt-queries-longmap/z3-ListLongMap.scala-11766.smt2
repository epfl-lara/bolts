; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138210 () Bool)

(assert start!138210)

(declare-fun res!1082647 () Bool)

(declare-fun e!884927 () Bool)

(assert (=> start!138210 (=> (not res!1082647) (not e!884927))))

(declare-datatypes ((B!2938 0))(
  ( (B!2939 (val!19831 Int)) )
))
(declare-datatypes ((tuple2!25994 0))(
  ( (tuple2!25995 (_1!13007 (_ BitVec 64)) (_2!13007 B!2938)) )
))
(declare-datatypes ((List!37112 0))(
  ( (Nil!37109) (Cons!37108 (h!38652 tuple2!25994) (t!52039 List!37112)) )
))
(declare-fun l!556 () List!37112)

(declare-fun isStrictlySorted!1174 (List!37112) Bool)

(assert (=> start!138210 (= res!1082647 (isStrictlySorted!1174 l!556))))

(assert (=> start!138210 e!884927))

(declare-fun e!884928 () Bool)

(assert (=> start!138210 e!884928))

(assert (=> start!138210 true))

(declare-fun b!1585023 () Bool)

(declare-fun res!1082648 () Bool)

(assert (=> b!1585023 (=> (not res!1082648) (not e!884927))))

(declare-fun newKey!21 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1585023 (= res!1082648 (and ((_ is Cons!37108) l!556) (bvslt (_1!13007 (h!38652 l!556)) newKey!21)))))

(declare-fun b!1585024 () Bool)

(assert (=> b!1585024 (= e!884927 (not (isStrictlySorted!1174 (t!52039 l!556))))))

(declare-fun b!1585025 () Bool)

(declare-fun tp_is_empty!39471 () Bool)

(declare-fun tp!115168 () Bool)

(assert (=> b!1585025 (= e!884928 (and tp_is_empty!39471 tp!115168))))

(assert (= (and start!138210 res!1082647) b!1585023))

(assert (= (and b!1585023 res!1082648) b!1585024))

(assert (= (and start!138210 ((_ is Cons!37108) l!556)) b!1585025))

(declare-fun m!1454077 () Bool)

(assert (=> start!138210 m!1454077))

(declare-fun m!1454079 () Bool)

(assert (=> b!1585024 m!1454079))

(check-sat (not b!1585024) (not start!138210) (not b!1585025) tp_is_empty!39471)
(check-sat)
(get-model)

(declare-fun d!167603 () Bool)

(declare-fun res!1082659 () Bool)

(declare-fun e!884939 () Bool)

(assert (=> d!167603 (=> res!1082659 e!884939)))

(assert (=> d!167603 (= res!1082659 (or ((_ is Nil!37109) (t!52039 l!556)) ((_ is Nil!37109) (t!52039 (t!52039 l!556)))))))

(assert (=> d!167603 (= (isStrictlySorted!1174 (t!52039 l!556)) e!884939)))

(declare-fun b!1585039 () Bool)

(declare-fun e!884940 () Bool)

(assert (=> b!1585039 (= e!884939 e!884940)))

(declare-fun res!1082660 () Bool)

(assert (=> b!1585039 (=> (not res!1082660) (not e!884940))))

(assert (=> b!1585039 (= res!1082660 (bvslt (_1!13007 (h!38652 (t!52039 l!556))) (_1!13007 (h!38652 (t!52039 (t!52039 l!556))))))))

(declare-fun b!1585040 () Bool)

(assert (=> b!1585040 (= e!884940 (isStrictlySorted!1174 (t!52039 (t!52039 l!556))))))

(assert (= (and d!167603 (not res!1082659)) b!1585039))

(assert (= (and b!1585039 res!1082660) b!1585040))

(declare-fun m!1454085 () Bool)

(assert (=> b!1585040 m!1454085))

(assert (=> b!1585024 d!167603))

(declare-fun d!167607 () Bool)

(declare-fun res!1082661 () Bool)

(declare-fun e!884941 () Bool)

(assert (=> d!167607 (=> res!1082661 e!884941)))

(assert (=> d!167607 (= res!1082661 (or ((_ is Nil!37109) l!556) ((_ is Nil!37109) (t!52039 l!556))))))

(assert (=> d!167607 (= (isStrictlySorted!1174 l!556) e!884941)))

(declare-fun b!1585041 () Bool)

(declare-fun e!884942 () Bool)

(assert (=> b!1585041 (= e!884941 e!884942)))

(declare-fun res!1082662 () Bool)

(assert (=> b!1585041 (=> (not res!1082662) (not e!884942))))

(assert (=> b!1585041 (= res!1082662 (bvslt (_1!13007 (h!38652 l!556)) (_1!13007 (h!38652 (t!52039 l!556)))))))

(declare-fun b!1585042 () Bool)

(assert (=> b!1585042 (= e!884942 (isStrictlySorted!1174 (t!52039 l!556)))))

(assert (= (and d!167607 (not res!1082661)) b!1585041))

(assert (= (and b!1585041 res!1082662) b!1585042))

(assert (=> b!1585042 m!1454079))

(assert (=> start!138210 d!167607))

(declare-fun b!1585051 () Bool)

(declare-fun e!884949 () Bool)

(declare-fun tp!115174 () Bool)

(assert (=> b!1585051 (= e!884949 (and tp_is_empty!39471 tp!115174))))

(assert (=> b!1585025 (= tp!115168 e!884949)))

(assert (= (and b!1585025 ((_ is Cons!37108) (t!52039 l!556))) b!1585051))

(check-sat (not b!1585040) (not b!1585042) (not b!1585051) tp_is_empty!39471)
(check-sat)
