; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1680 () Bool)

(assert start!1680)

(declare-fun b!11934 () Bool)

(declare-fun res!9797 () Bool)

(declare-fun e!7109 () Bool)

(assert (=> b!11934 (=> (not res!9797) (not e!7109))))

(declare-datatypes ((B!416 0))(
  ( (B!417 (val!303 Int)) )
))
(declare-datatypes ((tuple2!388 0))(
  ( (tuple2!389 (_1!194 (_ BitVec 64)) (_2!194 B!416)) )
))
(declare-datatypes ((List!350 0))(
  ( (Nil!347) (Cons!346 (h!912 tuple2!388) (t!2737 List!350)) )
))
(declare-datatypes ((ListLongMap!369 0))(
  ( (ListLongMap!370 (toList!200 List!350)) )
))
(declare-fun lm!265 () ListLongMap!369)

(declare-fun isStrictlySorted!53 (List!350) Bool)

(assert (=> b!11934 (= res!9797 (isStrictlySorted!53 (toList!200 lm!265)))))

(declare-fun b!11936 () Bool)

(declare-fun e!7108 () Bool)

(declare-fun tp!1997 () Bool)

(assert (=> b!11936 (= e!7108 tp!1997)))

(declare-fun b!11935 () Bool)

(assert (=> b!11935 (= e!7109 (not true))))

(declare-fun a!527 () (_ BitVec 64))

(declare-fun b!100 () B!416)

(declare-fun contains!167 (List!350 tuple2!388) Bool)

(assert (=> b!11935 (contains!167 (toList!200 lm!265) (tuple2!389 a!527 b!100))))

(declare-datatypes ((Unit!260 0))(
  ( (Unit!261) )
))
(declare-fun lt!3081 () Unit!260)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1 (List!350 (_ BitVec 64) B!416) Unit!260)

(assert (=> b!11935 (= lt!3081 (lemmaGetValueByKeyImpliesContainsTuple!1 (toList!200 lm!265) a!527 b!100))))

(declare-fun res!9799 () Bool)

(assert (=> start!1680 (=> (not res!9799) (not e!7109))))

(declare-fun contains!168 (ListLongMap!369 (_ BitVec 64)) Bool)

(assert (=> start!1680 (= res!9799 (contains!168 lm!265 a!527))))

(assert (=> start!1680 e!7109))

(declare-fun inv!598 (ListLongMap!369) Bool)

(assert (=> start!1680 (and (inv!598 lm!265) e!7108)))

(assert (=> start!1680 true))

(declare-fun tp_is_empty!589 () Bool)

(assert (=> start!1680 tp_is_empty!589))

(declare-fun b!11933 () Bool)

(declare-fun res!9798 () Bool)

(assert (=> b!11933 (=> (not res!9798) (not e!7109))))

(declare-datatypes ((Option!41 0))(
  ( (Some!40 (v!1355 B!416)) (None!39) )
))
(declare-fun getValueByKey!35 (List!350 (_ BitVec 64)) Option!41)

(assert (=> b!11933 (= res!9798 (= (getValueByKey!35 (toList!200 lm!265) a!527) (Some!40 b!100)))))

(assert (= (and start!1680 res!9799) b!11933))

(assert (= (and b!11933 res!9798) b!11934))

(assert (= (and b!11934 res!9797) b!11935))

(assert (= start!1680 b!11936))

(declare-fun m!8291 () Bool)

(assert (=> b!11934 m!8291))

(declare-fun m!8293 () Bool)

(assert (=> b!11935 m!8293))

(declare-fun m!8295 () Bool)

(assert (=> b!11935 m!8295))

(declare-fun m!8297 () Bool)

(assert (=> start!1680 m!8297))

(declare-fun m!8299 () Bool)

(assert (=> start!1680 m!8299))

(declare-fun m!8301 () Bool)

(assert (=> b!11933 m!8301))

(push 1)

(assert (not b!11933))

(assert (not b!11934))

(assert (not start!1680))

(assert tp_is_empty!589)

(assert (not b!11936))

(assert (not b!11935))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

