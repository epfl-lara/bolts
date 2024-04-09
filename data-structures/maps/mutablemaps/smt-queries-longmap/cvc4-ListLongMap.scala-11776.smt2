; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138362 () Bool)

(assert start!138362)

(declare-fun b!1585807 () Bool)

(declare-fun e!885492 () Bool)

(declare-datatypes ((B!3000 0))(
  ( (B!3001 (val!19862 Int)) )
))
(declare-datatypes ((tuple2!26056 0))(
  ( (tuple2!26057 (_1!13038 (_ BitVec 64)) (_2!13038 B!3000)) )
))
(declare-datatypes ((List!37143 0))(
  ( (Nil!37140) (Cons!37139 (h!38683 tuple2!26056) (t!52076 List!37143)) )
))
(declare-fun lt!677382 () List!37143)

(declare-fun lt!677383 () tuple2!26056)

(declare-fun contains!10557 (List!37143 tuple2!26056) Bool)

(assert (=> b!1585807 (= e!885492 (not (contains!10557 lt!677382 lt!677383)))))

(declare-fun b!1585808 () Bool)

(declare-fun e!885491 () Bool)

(declare-fun tp_is_empty!39533 () Bool)

(declare-fun tp!115309 () Bool)

(assert (=> b!1585808 (= e!885491 (and tp_is_empty!39533 tp!115309))))

(declare-fun b!1585809 () Bool)

(declare-fun res!1083105 () Bool)

(assert (=> b!1585809 (=> res!1083105 e!885492)))

(declare-fun newKey!21 () (_ BitVec 64))

(declare-fun containsKey!1015 (List!37143 (_ BitVec 64)) Bool)

(assert (=> b!1585809 (= res!1083105 (not (containsKey!1015 lt!677382 newKey!21)))))

(declare-fun b!1585810 () Bool)

(declare-fun e!885490 () Bool)

(assert (=> b!1585810 (= e!885490 e!885492)))

(declare-fun res!1083106 () Bool)

(assert (=> b!1585810 (=> res!1083106 e!885492)))

(declare-fun isStrictlySorted!1202 (List!37143) Bool)

(assert (=> b!1585810 (= res!1083106 (not (isStrictlySorted!1202 lt!677382)))))

(declare-fun l!556 () List!37143)

(declare-fun $colon$colon!1048 (List!37143 tuple2!26056) List!37143)

(assert (=> b!1585810 (= lt!677382 ($colon$colon!1048 l!556 lt!677383))))

(declare-fun newValue!21 () B!3000)

(assert (=> b!1585810 (= lt!677383 (tuple2!26057 newKey!21 newValue!21))))

(declare-fun b!1585811 () Bool)

(declare-fun res!1083107 () Bool)

(assert (=> b!1585811 (=> (not res!1083107) (not e!885490))))

(assert (=> b!1585811 (= res!1083107 (and (or (not (is-Cons!37139 l!556)) (bvsge (_1!13038 (h!38683 l!556)) newKey!21)) (not (= (_1!13038 (h!38683 l!556)) newKey!21)) (is-Cons!37139 l!556) (bvsgt (_1!13038 (h!38683 l!556)) newKey!21)))))

(declare-fun res!1083104 () Bool)

(assert (=> start!138362 (=> (not res!1083104) (not e!885490))))

(assert (=> start!138362 (= res!1083104 (isStrictlySorted!1202 l!556))))

(assert (=> start!138362 e!885490))

(assert (=> start!138362 e!885491))

(assert (=> start!138362 true))

(assert (=> start!138362 tp_is_empty!39533))

(assert (= (and start!138362 res!1083104) b!1585811))

(assert (= (and b!1585811 res!1083107) b!1585810))

(assert (= (and b!1585810 (not res!1083106)) b!1585809))

(assert (= (and b!1585809 (not res!1083105)) b!1585807))

(assert (= (and start!138362 (is-Cons!37139 l!556)) b!1585808))

(declare-fun m!1454513 () Bool)

(assert (=> b!1585807 m!1454513))

(declare-fun m!1454515 () Bool)

(assert (=> b!1585809 m!1454515))

(declare-fun m!1454517 () Bool)

(assert (=> b!1585810 m!1454517))

(declare-fun m!1454519 () Bool)

(assert (=> b!1585810 m!1454519))

(declare-fun m!1454521 () Bool)

(assert (=> start!138362 m!1454521))

(push 1)

(assert tp_is_empty!39533)

(assert (not start!138362))

(assert (not b!1585808))

(assert (not b!1585807))

(assert (not b!1585810))

(assert (not b!1585809))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167811 () Bool)

(declare-fun res!1083152 () Bool)

(declare-fun e!885543 () Bool)

(assert (=> d!167811 (=> res!1083152 e!885543)))

(assert (=> d!167811 (= res!1083152 (or (is-Nil!37140 l!556) (is-Nil!37140 (t!52076 l!556))))))

(assert (=> d!167811 (= (isStrictlySorted!1202 l!556) e!885543)))

(declare-fun b!1585866 () Bool)

(declare-fun e!885544 () Bool)

(assert (=> b!1585866 (= e!885543 e!885544)))

(declare-fun res!1083153 () Bool)

(assert (=> b!1585866 (=> (not res!1083153) (not e!885544))))

(assert (=> b!1585866 (= res!1083153 (bvslt (_1!13038 (h!38683 l!556)) (_1!13038 (h!38683 (t!52076 l!556)))))))

(declare-fun b!1585867 () Bool)

(assert (=> b!1585867 (= e!885544 (isStrictlySorted!1202 (t!52076 l!556)))))

(assert (= (and d!167811 (not res!1083152)) b!1585866))

(assert (= (and b!1585866 res!1083153) b!1585867))

(declare-fun m!1454547 () Bool)

(assert (=> b!1585867 m!1454547))

(assert (=> start!138362 d!167811))

(declare-fun d!167813 () Bool)

(declare-fun lt!677392 () Bool)

(declare-fun content!876 (List!37143) (Set tuple2!26056))

(assert (=> d!167813 (= lt!677392 (member lt!677383 (content!876 lt!677382)))))

(declare-fun e!885549 () Bool)

(assert (=> d!167813 (= lt!677392 e!885549)))

(declare-fun res!1083158 () Bool)

(assert (=> d!167813 (=> (not res!1083158) (not e!885549))))

(assert (=> d!167813 (= res!1083158 (is-Cons!37139 lt!677382))))

(assert (=> d!167813 (= (contains!10557 lt!677382 lt!677383) lt!677392)))

(declare-fun b!1585872 () Bool)

(declare-fun e!885550 () Bool)

(assert (=> b!1585872 (= e!885549 e!885550)))

(declare-fun res!1083159 () Bool)

(assert (=> b!1585872 (=> res!1083159 e!885550)))

(assert (=> b!1585872 (= res!1083159 (= (h!38683 lt!677382) lt!677383))))

(declare-fun b!1585873 () Bool)

(assert (=> b!1585873 (= e!885550 (contains!10557 (t!52076 lt!677382) lt!677383))))

(assert (= (and d!167813 res!1083158) b!1585872))

(assert (= (and b!1585872 (not res!1083159)) b!1585873))

(declare-fun m!1454549 () Bool)

(assert (=> d!167813 m!1454549))

(declare-fun m!1454551 () Bool)

(assert (=> d!167813 m!1454551))

(declare-fun m!1454553 () Bool)

(assert (=> b!1585873 m!1454553))

(assert (=> b!1585807 d!167813))

(declare-fun d!167815 () Bool)

(declare-fun res!1083164 () Bool)

(declare-fun e!885555 () Bool)

(assert (=> d!167815 (=> res!1083164 e!885555)))

(assert (=> d!167815 (= res!1083164 (and (is-Cons!37139 lt!677382) (= (_1!13038 (h!38683 lt!677382)) newKey!21)))))

(assert (=> d!167815 (= (containsKey!1015 lt!677382 newKey!21) e!885555)))

(declare-fun b!1585878 () Bool)

(declare-fun e!885556 () Bool)

(assert (=> b!1585878 (= e!885555 e!885556)))

(declare-fun res!1083165 () Bool)

(assert (=> b!1585878 (=> (not res!1083165) (not e!885556))))

(assert (=> b!1585878 (= res!1083165 (and (or (not (is-Cons!37139 lt!677382)) (bvsle (_1!13038 (h!38683 lt!677382)) newKey!21)) (is-Cons!37139 lt!677382) (bvslt (_1!13038 (h!38683 lt!677382)) newKey!21)))))

(declare-fun b!1585879 () Bool)

(assert (=> b!1585879 (= e!885556 (containsKey!1015 (t!52076 lt!677382) newKey!21))))

(assert (= (and d!167815 (not res!1083164)) b!1585878))

(assert (= (and b!1585878 res!1083165) b!1585879))

(declare-fun m!1454555 () Bool)

(assert (=> b!1585879 m!1454555))

(assert (=> b!1585809 d!167815))

(declare-fun d!167817 () Bool)

(declare-fun res!1083166 () Bool)

(declare-fun e!885557 () Bool)

(assert (=> d!167817 (=> res!1083166 e!885557)))

(assert (=> d!167817 (= res!1083166 (or (is-Nil!37140 lt!677382) (is-Nil!37140 (t!52076 lt!677382))))))

(assert (=> d!167817 (= (isStrictlySorted!1202 lt!677382) e!885557)))

(declare-fun b!1585880 () Bool)

(declare-fun e!885558 () Bool)

(assert (=> b!1585880 (= e!885557 e!885558)))

(declare-fun res!1083167 () Bool)

(assert (=> b!1585880 (=> (not res!1083167) (not e!885558))))

(assert (=> b!1585880 (= res!1083167 (bvslt (_1!13038 (h!38683 lt!677382)) (_1!13038 (h!38683 (t!52076 lt!677382)))))))

(declare-fun b!1585881 () Bool)

(assert (=> b!1585881 (= e!885558 (isStrictlySorted!1202 (t!52076 lt!677382)))))

(assert (= (and d!167817 (not res!1083166)) b!1585880))

(assert (= (and b!1585880 res!1083167) b!1585881))

(declare-fun m!1454557 () Bool)

(assert (=> b!1585881 m!1454557))

(assert (=> b!1585810 d!167817))

(declare-fun d!167819 () Bool)

(assert (=> d!167819 (= ($colon$colon!1048 l!556 lt!677383) (Cons!37139 lt!677383 l!556))))

(assert (=> b!1585810 d!167819))

(declare-fun b!1585886 () Bool)

(declare-fun e!885561 () Bool)

(declare-fun tp!115318 () Bool)

(assert (=> b!1585886 (= e!885561 (and tp_is_empty!39533 tp!115318))))

(assert (=> b!1585808 (= tp!115309 e!885561)))

(assert (= (and b!1585808 (is-Cons!37139 (t!52076 l!556))) b!1585886))

(push 1)

