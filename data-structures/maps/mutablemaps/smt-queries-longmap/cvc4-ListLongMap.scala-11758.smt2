; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138002 () Bool)

(assert start!138002)

(declare-fun b!1583607 () Bool)

(declare-fun res!1081837 () Bool)

(declare-fun e!883986 () Bool)

(assert (=> b!1583607 (=> (not res!1081837) (not e!883986))))

(declare-datatypes ((B!2892 0))(
  ( (B!2893 (val!19808 Int)) )
))
(declare-datatypes ((tuple2!25948 0))(
  ( (tuple2!25949 (_1!12984 (_ BitVec 64)) (_2!12984 B!2892)) )
))
(declare-datatypes ((List!37089 0))(
  ( (Nil!37086) (Cons!37085 (h!38629 tuple2!25948) (t!52010 List!37089)) )
))
(declare-fun l!1251 () List!37089)

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-fun containsKey!988 (List!37089 (_ BitVec 64)) Bool)

(assert (=> b!1583607 (= res!1081837 (not (containsKey!988 l!1251 otherKey!56)))))

(declare-fun b!1583608 () Bool)

(declare-fun res!1081839 () Bool)

(assert (=> b!1583608 (=> (not res!1081839) (not e!883986))))

(declare-fun newKey!123 () (_ BitVec 64))

(assert (=> b!1583608 (= res!1081839 (and (not (= otherKey!56 newKey!123)) (is-Cons!37085 l!1251)))))

(declare-fun b!1583609 () Bool)

(declare-fun res!1081838 () Bool)

(assert (=> b!1583609 (=> (not res!1081838) (not e!883986))))

(assert (=> b!1583609 (= res!1081838 (not (containsKey!988 (t!52010 l!1251) otherKey!56)))))

(declare-fun res!1081840 () Bool)

(assert (=> start!138002 (=> (not res!1081840) (not e!883986))))

(declare-fun isStrictlySorted!1154 (List!37089) Bool)

(assert (=> start!138002 (= res!1081840 (isStrictlySorted!1154 l!1251))))

(assert (=> start!138002 e!883986))

(declare-fun e!883985 () Bool)

(assert (=> start!138002 e!883985))

(assert (=> start!138002 true))

(declare-fun tp_is_empty!39425 () Bool)

(assert (=> start!138002 tp_is_empty!39425))

(declare-fun newValue!123 () B!2892)

(declare-fun b!1583610 () Bool)

(declare-fun insertStrictlySorted!621 (List!37089 (_ BitVec 64) B!2892) List!37089)

(assert (=> b!1583610 (= e!883986 (not (isStrictlySorted!1154 (insertStrictlySorted!621 l!1251 newKey!123 newValue!123))))))

(assert (=> b!1583610 (not (containsKey!988 (insertStrictlySorted!621 (t!52010 l!1251) newKey!123 newValue!123) otherKey!56))))

(declare-datatypes ((Unit!52233 0))(
  ( (Unit!52234) )
))
(declare-fun lt!677128 () Unit!52233)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!9 (List!37089 (_ BitVec 64) B!2892 (_ BitVec 64)) Unit!52233)

(assert (=> b!1583610 (= lt!677128 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!9 (t!52010 l!1251) newKey!123 newValue!123 otherKey!56))))

(declare-fun b!1583611 () Bool)

(declare-fun res!1081841 () Bool)

(assert (=> b!1583611 (=> (not res!1081841) (not e!883986))))

(assert (=> b!1583611 (= res!1081841 (isStrictlySorted!1154 (t!52010 l!1251)))))

(declare-fun b!1583612 () Bool)

(declare-fun tp!115030 () Bool)

(assert (=> b!1583612 (= e!883985 (and tp_is_empty!39425 tp!115030))))

(assert (= (and start!138002 res!1081840) b!1583607))

(assert (= (and b!1583607 res!1081837) b!1583608))

(assert (= (and b!1583608 res!1081839) b!1583611))

(assert (= (and b!1583611 res!1081841) b!1583609))

(assert (= (and b!1583609 res!1081838) b!1583610))

(assert (= (and start!138002 (is-Cons!37085 l!1251)) b!1583612))

(declare-fun m!1453373 () Bool)

(assert (=> b!1583610 m!1453373))

(declare-fun m!1453375 () Bool)

(assert (=> b!1583610 m!1453375))

(declare-fun m!1453377 () Bool)

(assert (=> b!1583610 m!1453377))

(declare-fun m!1453379 () Bool)

(assert (=> b!1583610 m!1453379))

(assert (=> b!1583610 m!1453379))

(declare-fun m!1453381 () Bool)

(assert (=> b!1583610 m!1453381))

(assert (=> b!1583610 m!1453375))

(declare-fun m!1453383 () Bool)

(assert (=> b!1583609 m!1453383))

(declare-fun m!1453385 () Bool)

(assert (=> start!138002 m!1453385))

(declare-fun m!1453387 () Bool)

(assert (=> b!1583611 m!1453387))

(declare-fun m!1453389 () Bool)

(assert (=> b!1583607 m!1453389))

(push 1)

(assert (not b!1583612))

(assert (not b!1583611))

(assert (not b!1583607))

(assert tp_is_empty!39425)

(assert (not b!1583609))

(assert (not start!138002))

(assert (not b!1583610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167225 () Bool)

(declare-fun res!1081860 () Bool)

(declare-fun e!884005 () Bool)

(assert (=> d!167225 (=> res!1081860 e!884005)))

(assert (=> d!167225 (= res!1081860 (or (is-Nil!37086 (t!52010 l!1251)) (is-Nil!37086 (t!52010 (t!52010 l!1251)))))))

(assert (=> d!167225 (= (isStrictlySorted!1154 (t!52010 l!1251)) e!884005)))

(declare-fun b!1583631 () Bool)

(declare-fun e!884006 () Bool)

(assert (=> b!1583631 (= e!884005 e!884006)))

(declare-fun res!1081861 () Bool)

(assert (=> b!1583631 (=> (not res!1081861) (not e!884006))))

(assert (=> b!1583631 (= res!1081861 (bvslt (_1!12984 (h!38629 (t!52010 l!1251))) (_1!12984 (h!38629 (t!52010 (t!52010 l!1251))))))))

(declare-fun b!1583632 () Bool)

(assert (=> b!1583632 (= e!884006 (isStrictlySorted!1154 (t!52010 (t!52010 l!1251))))))

(assert (= (and d!167225 (not res!1081860)) b!1583631))

(assert (= (and b!1583631 res!1081861) b!1583632))

(declare-fun m!1453395 () Bool)

(assert (=> b!1583632 m!1453395))

(assert (=> b!1583611 d!167225))

(declare-fun d!167231 () Bool)

(declare-fun res!1081864 () Bool)

(declare-fun e!884009 () Bool)

(assert (=> d!167231 (=> res!1081864 e!884009)))

(assert (=> d!167231 (= res!1081864 (or (is-Nil!37086 l!1251) (is-Nil!37086 (t!52010 l!1251))))))

(assert (=> d!167231 (= (isStrictlySorted!1154 l!1251) e!884009)))

(declare-fun b!1583635 () Bool)

(declare-fun e!884010 () Bool)

(assert (=> b!1583635 (= e!884009 e!884010)))

(declare-fun res!1081865 () Bool)

(assert (=> b!1583635 (=> (not res!1081865) (not e!884010))))

(assert (=> b!1583635 (= res!1081865 (bvslt (_1!12984 (h!38629 l!1251)) (_1!12984 (h!38629 (t!52010 l!1251)))))))

(declare-fun b!1583636 () Bool)

(assert (=> b!1583636 (= e!884010 (isStrictlySorted!1154 (t!52010 l!1251)))))

(assert (= (and d!167231 (not res!1081864)) b!1583635))

(assert (= (and b!1583635 res!1081865) b!1583636))

(assert (=> b!1583636 m!1453387))

(assert (=> start!138002 d!167231))

(declare-fun d!167233 () Bool)

(declare-fun res!1081874 () Bool)

(declare-fun e!884025 () Bool)

(assert (=> d!167233 (=> res!1081874 e!884025)))

(assert (=> d!167233 (= res!1081874 (and (is-Cons!37085 l!1251) (= (_1!12984 (h!38629 l!1251)) otherKey!56)))))

(assert (=> d!167233 (= (containsKey!988 l!1251 otherKey!56) e!884025)))

(declare-fun b!1583657 () Bool)

(declare-fun e!884026 () Bool)

(assert (=> b!1583657 (= e!884025 e!884026)))

(declare-fun res!1081875 () Bool)

(assert (=> b!1583657 (=> (not res!1081875) (not e!884026))))

(assert (=> b!1583657 (= res!1081875 (and (or (not (is-Cons!37085 l!1251)) (bvsle (_1!12984 (h!38629 l!1251)) otherKey!56)) (is-Cons!37085 l!1251) (bvslt (_1!12984 (h!38629 l!1251)) otherKey!56)))))

(declare-fun b!1583658 () Bool)

(assert (=> b!1583658 (= e!884026 (containsKey!988 (t!52010 l!1251) otherKey!56))))

(assert (= (and d!167233 (not res!1081874)) b!1583657))

(assert (= (and b!1583657 res!1081875) b!1583658))

(assert (=> b!1583658 m!1453383))

(assert (=> b!1583607 d!167233))

(declare-fun d!167239 () Bool)

(declare-fun res!1081876 () Bool)

(declare-fun e!884027 () Bool)

(assert (=> d!167239 (=> res!1081876 e!884027)))

(assert (=> d!167239 (= res!1081876 (and (is-Cons!37085 (t!52010 l!1251)) (= (_1!12984 (h!38629 (t!52010 l!1251))) otherKey!56)))))

(assert (=> d!167239 (= (containsKey!988 (t!52010 l!1251) otherKey!56) e!884027)))

(declare-fun b!1583659 () Bool)

(declare-fun e!884028 () Bool)

(assert (=> b!1583659 (= e!884027 e!884028)))

(declare-fun res!1081877 () Bool)

(assert (=> b!1583659 (=> (not res!1081877) (not e!884028))))

(assert (=> b!1583659 (= res!1081877 (and (or (not (is-Cons!37085 (t!52010 l!1251))) (bvsle (_1!12984 (h!38629 (t!52010 l!1251))) otherKey!56)) (is-Cons!37085 (t!52010 l!1251)) (bvslt (_1!12984 (h!38629 (t!52010 l!1251))) otherKey!56)))))

(declare-fun b!1583660 () Bool)

(assert (=> b!1583660 (= e!884028 (containsKey!988 (t!52010 (t!52010 l!1251)) otherKey!56))))

(assert (= (and d!167239 (not res!1081876)) b!1583659))

(assert (= (and b!1583659 res!1081877) b!1583660))

(declare-fun m!1453397 () Bool)

(assert (=> b!1583660 m!1453397))

(assert (=> b!1583609 d!167239))

(declare-fun b!1583776 () Bool)

(declare-fun e!884096 () List!37089)

(declare-fun call!72509 () List!37089)

(assert (=> b!1583776 (= e!884096 call!72509)))

(declare-fun lt!677142 () List!37089)

(declare-fun b!1583777 () Bool)

(declare-fun e!884099 () Bool)

(declare-fun contains!10539 (List!37089 tuple2!25948) Bool)

(assert (=> b!1583777 (= e!884099 (contains!10539 lt!677142 (tuple2!25949 newKey!123 newValue!123)))))

(declare-fun bm!72504 () Bool)

(declare-fun call!72508 () List!37089)

(declare-fun call!72507 () List!37089)

(assert (=> bm!72504 (= call!72508 call!72507)))

(declare-fun b!1583778 () Bool)

(declare-fun res!1081921 () Bool)

(assert (=> b!1583778 (=> (not res!1081921) (not e!884099))))

(assert (=> b!1583778 (= res!1081921 (containsKey!988 lt!677142 newKey!123))))

(declare-fun bm!72505 () Bool)

(assert (=> bm!72505 (= call!72507 call!72509)))

(declare-fun e!884098 () List!37089)

(declare-fun c!146732 () Bool)

(declare-fun bm!72506 () Bool)

(declare-fun $colon$colon!1018 (List!37089 tuple2!25948) List!37089)

(assert (=> bm!72506 (= call!72509 ($colon$colon!1018 e!884098 (ite c!146732 (h!38629 l!1251) (tuple2!25949 newKey!123 newValue!123))))))

(declare-fun c!146735 () Bool)

(assert (=> bm!72506 (= c!146735 c!146732)))

(declare-fun b!1583779 () Bool)

(assert (=> b!1583779 (= e!884098 (insertStrictlySorted!621 (t!52010 l!1251) newKey!123 newValue!123))))

(declare-fun b!1583780 () Bool)

(declare-fun e!884097 () List!37089)

(assert (=> b!1583780 (= e!884097 call!72508)))

(declare-fun d!167241 () Bool)

(assert (=> d!167241 e!884099))

(declare-fun res!1081920 () Bool)

(assert (=> d!167241 (=> (not res!1081920) (not e!884099))))

(assert (=> d!167241 (= res!1081920 (isStrictlySorted!1154 lt!677142))))

(assert (=> d!167241 (= lt!677142 e!884096)))

(assert (=> d!167241 (= c!146732 (and (is-Cons!37085 l!1251) (bvslt (_1!12984 (h!38629 l!1251)) newKey!123)))))

(assert (=> d!167241 (isStrictlySorted!1154 l!1251)))

(assert (=> d!167241 (= (insertStrictlySorted!621 l!1251 newKey!123 newValue!123) lt!677142)))

(declare-fun c!146734 () Bool)

(declare-fun c!146733 () Bool)

(declare-fun b!1583781 () Bool)

(assert (=> b!1583781 (= e!884098 (ite c!146733 (t!52010 l!1251) (ite c!146734 (Cons!37085 (h!38629 l!1251) (t!52010 l!1251)) Nil!37086)))))

(declare-fun b!1583782 () Bool)

(assert (=> b!1583782 (= e!884097 call!72508)))

(declare-fun b!1583783 () Bool)

(assert (=> b!1583783 (= c!146734 (and (is-Cons!37085 l!1251) (bvsgt (_1!12984 (h!38629 l!1251)) newKey!123)))))

(declare-fun e!884095 () List!37089)

(assert (=> b!1583783 (= e!884095 e!884097)))

(declare-fun b!1583784 () Bool)

(assert (=> b!1583784 (= e!884095 call!72507)))

(declare-fun b!1583785 () Bool)

(assert (=> b!1583785 (= e!884096 e!884095)))

(assert (=> b!1583785 (= c!146733 (and (is-Cons!37085 l!1251) (= (_1!12984 (h!38629 l!1251)) newKey!123)))))

(assert (= (and d!167241 c!146732) b!1583776))

(assert (= (and d!167241 (not c!146732)) b!1583785))

(assert (= (and b!1583785 c!146733) b!1583784))

(assert (= (and b!1583785 (not c!146733)) b!1583783))

(assert (= (and b!1583783 c!146734) b!1583780))

(assert (= (and b!1583783 (not c!146734)) b!1583782))

(assert (= (or b!1583780 b!1583782) bm!72504))

(assert (= (or b!1583784 bm!72504) bm!72505))

(assert (= (or b!1583776 bm!72505) bm!72506))

(assert (= (and bm!72506 c!146735) b!1583779))

(assert (= (and bm!72506 (not c!146735)) b!1583781))

(assert (= (and d!167241 res!1081920) b!1583778))

(assert (= (and b!1583778 res!1081921) b!1583777))

(declare-fun m!1453445 () Bool)

(assert (=> d!167241 m!1453445))

(assert (=> d!167241 m!1453385))

(declare-fun m!1453447 () Bool)

(assert (=> b!1583777 m!1453447))

(declare-fun m!1453449 () Bool)

(assert (=> b!1583778 m!1453449))

(declare-fun m!1453451 () Bool)

(assert (=> bm!72506 m!1453451))

(assert (=> b!1583779 m!1453379))

(assert (=> b!1583610 d!167241))

(declare-fun d!167263 () Bool)

(declare-fun res!1081922 () Bool)

(declare-fun e!884100 () Bool)

(assert (=> d!167263 (=> res!1081922 e!884100)))

(assert (=> d!167263 (= res!1081922 (or (is-Nil!37086 (insertStrictlySorted!621 l!1251 newKey!123 newValue!123)) (is-Nil!37086 (t!52010 (insertStrictlySorted!621 l!1251 newKey!123 newValue!123)))))))

(assert (=> d!167263 (= (isStrictlySorted!1154 (insertStrictlySorted!621 l!1251 newKey!123 newValue!123)) e!884100)))

(declare-fun b!1583786 () Bool)

(declare-fun e!884101 () Bool)

(assert (=> b!1583786 (= e!884100 e!884101)))

(declare-fun res!1081923 () Bool)

(assert (=> b!1583786 (=> (not res!1081923) (not e!884101))))

(assert (=> b!1583786 (= res!1081923 (bvslt (_1!12984 (h!38629 (insertStrictlySorted!621 l!1251 newKey!123 newValue!123))) (_1!12984 (h!38629 (t!52010 (insertStrictlySorted!621 l!1251 newKey!123 newValue!123))))))))

