; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437522 () Bool)

(assert start!437522)

(declare-fun b!4461544 () Bool)

(declare-fun res!1850281 () Bool)

(declare-fun e!2778181 () Bool)

(assert (=> b!4461544 (=> (not res!1850281) (not e!2778181))))

(declare-datatypes ((K!11618 0))(
  ( (K!11619 (val!17565 Int)) )
))
(declare-datatypes ((V!11864 0))(
  ( (V!11865 (val!17566 Int)) )
))
(declare-datatypes ((tuple2!50398 0))(
  ( (tuple2!50399 (_1!28493 K!11618) (_2!28493 V!11864)) )
))
(declare-datatypes ((List!50325 0))(
  ( (Nil!50201) (Cons!50201 (h!55946 tuple2!50398) (t!357275 List!50325)) )
))
(declare-datatypes ((tuple2!50400 0))(
  ( (tuple2!50401 (_1!28494 (_ BitVec 64)) (_2!28494 List!50325)) )
))
(declare-datatypes ((List!50326 0))(
  ( (Nil!50202) (Cons!50202 (h!55947 tuple2!50400) (t!357276 List!50326)) )
))
(declare-datatypes ((ListLongMap!2621 0))(
  ( (ListLongMap!2622 (toList!3989 List!50326)) )
))
(declare-fun lm!1477 () ListLongMap!2621)

(declare-datatypes ((Hashable!5386 0))(
  ( (HashableExt!5385 (__x!31089 Int)) )
))
(declare-fun hashF!1107 () Hashable!5386)

(declare-fun allKeysSameHashInMap!1098 (ListLongMap!2621 Hashable!5386) Bool)

(assert (=> b!4461544 (= res!1850281 (allKeysSameHashInMap!1098 lm!1477 hashF!1107))))

(declare-fun res!1850282 () Bool)

(assert (=> start!437522 (=> (not res!1850282) (not e!2778181))))

(declare-fun lambda!161888 () Int)

(declare-fun forall!9931 (List!50326 Int) Bool)

(assert (=> start!437522 (= res!1850282 (forall!9931 (toList!3989 lm!1477) lambda!161888))))

(assert (=> start!437522 e!2778181))

(assert (=> start!437522 true))

(declare-fun e!2778179 () Bool)

(declare-fun inv!65803 (ListLongMap!2621) Bool)

(assert (=> start!437522 (and (inv!65803 lm!1477) e!2778179)))

(declare-fun tp_is_empty!27241 () Bool)

(assert (=> start!437522 tp_is_empty!27241))

(declare-fun e!2778180 () Bool)

(assert (=> start!437522 e!2778180))

(declare-fun tp!1335832 () Bool)

(declare-fun b!4461545 () Bool)

(declare-fun tp_is_empty!27243 () Bool)

(assert (=> b!4461545 (= e!2778180 (and tp_is_empty!27241 tp_is_empty!27243 tp!1335832))))

(declare-fun b!4461546 () Bool)

(declare-fun e!2778178 () Bool)

(assert (=> b!4461546 (= e!2778181 e!2778178)))

(declare-fun res!1850278 () Bool)

(assert (=> b!4461546 (=> (not res!1850278) (not e!2778178))))

(declare-fun lt!1652581 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4461546 (= res!1850278 (= lt!1652581 hash!344))))

(declare-fun key!3287 () K!11618)

(declare-fun hash!2373 (Hashable!5386 K!11618) (_ BitVec 64))

(assert (=> b!4461546 (= lt!1652581 (hash!2373 hashF!1107 key!3287))))

(declare-fun b!4461547 () Bool)

(declare-fun contains!12709 (ListLongMap!2621 (_ BitVec 64)) Bool)

(assert (=> b!4461547 (= e!2778178 (not (contains!12709 lm!1477 hash!344)))))

(declare-fun lt!1652577 () tuple2!50400)

(declare-datatypes ((Unit!86860 0))(
  ( (Unit!86861) )
))
(declare-fun lt!1652582 () Unit!86860)

(declare-fun forallContained!2208 (List!50326 Int tuple2!50400) Unit!86860)

(assert (=> b!4461547 (= lt!1652582 (forallContained!2208 (toList!3989 lm!1477) lambda!161888 lt!1652577))))

(declare-fun contains!12710 (List!50326 tuple2!50400) Bool)

(assert (=> b!4461547 (contains!12710 (toList!3989 lm!1477) lt!1652577)))

(declare-fun lt!1652580 () List!50325)

(assert (=> b!4461547 (= lt!1652577 (tuple2!50401 hash!344 lt!1652580))))

(declare-fun lt!1652578 () Unit!86860)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!503 (List!50326 (_ BitVec 64) List!50325) Unit!86860)

(assert (=> b!4461547 (= lt!1652578 (lemmaGetValueByKeyImpliesContainsTuple!503 (toList!3989 lm!1477) hash!344 lt!1652580))))

(declare-fun apply!11728 (ListLongMap!2621 (_ BitVec 64)) List!50325)

(assert (=> b!4461547 (= lt!1652580 (apply!11728 lm!1477 hash!344))))

(assert (=> b!4461547 (contains!12709 lm!1477 lt!1652581)))

(declare-fun lt!1652579 () Unit!86860)

(declare-fun lemmaInGenMapThenLongMapContainsHash!65 (ListLongMap!2621 K!11618 Hashable!5386) Unit!86860)

(assert (=> b!4461547 (= lt!1652579 (lemmaInGenMapThenLongMapContainsHash!65 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4461548 () Bool)

(declare-fun tp!1335833 () Bool)

(assert (=> b!4461548 (= e!2778179 tp!1335833)))

(declare-fun b!4461549 () Bool)

(declare-fun res!1850279 () Bool)

(assert (=> b!4461549 (=> (not res!1850279) (not e!2778178))))

(declare-fun newBucket!178 () List!50325)

(declare-fun allKeysSameHash!845 (List!50325 (_ BitVec 64) Hashable!5386) Bool)

(assert (=> b!4461549 (= res!1850279 (allKeysSameHash!845 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4461550 () Bool)

(declare-fun res!1850280 () Bool)

(assert (=> b!4461550 (=> (not res!1850280) (not e!2778181))))

(declare-datatypes ((ListMap!3251 0))(
  ( (ListMap!3252 (toList!3990 List!50325)) )
))
(declare-fun contains!12711 (ListMap!3251 K!11618) Bool)

(declare-fun extractMap!1047 (List!50326) ListMap!3251)

(assert (=> b!4461550 (= res!1850280 (contains!12711 (extractMap!1047 (toList!3989 lm!1477)) key!3287))))

(assert (= (and start!437522 res!1850282) b!4461544))

(assert (= (and b!4461544 res!1850281) b!4461550))

(assert (= (and b!4461550 res!1850280) b!4461546))

(assert (= (and b!4461546 res!1850278) b!4461549))

(assert (= (and b!4461549 res!1850279) b!4461547))

(assert (= start!437522 b!4461548))

(assert (= (and start!437522 (is-Cons!50201 newBucket!178)) b!4461545))

(declare-fun m!5164525 () Bool)

(assert (=> b!4461550 m!5164525))

(assert (=> b!4461550 m!5164525))

(declare-fun m!5164527 () Bool)

(assert (=> b!4461550 m!5164527))

(declare-fun m!5164529 () Bool)

(assert (=> b!4461544 m!5164529))

(declare-fun m!5164531 () Bool)

(assert (=> start!437522 m!5164531))

(declare-fun m!5164533 () Bool)

(assert (=> start!437522 m!5164533))

(declare-fun m!5164535 () Bool)

(assert (=> b!4461549 m!5164535))

(declare-fun m!5164537 () Bool)

(assert (=> b!4461547 m!5164537))

(declare-fun m!5164539 () Bool)

(assert (=> b!4461547 m!5164539))

(declare-fun m!5164541 () Bool)

(assert (=> b!4461547 m!5164541))

(declare-fun m!5164543 () Bool)

(assert (=> b!4461547 m!5164543))

(declare-fun m!5164545 () Bool)

(assert (=> b!4461547 m!5164545))

(declare-fun m!5164547 () Bool)

(assert (=> b!4461547 m!5164547))

(declare-fun m!5164549 () Bool)

(assert (=> b!4461547 m!5164549))

(declare-fun m!5164551 () Bool)

(assert (=> b!4461546 m!5164551))

(push 1)

(assert (not b!4461548))

(assert (not b!4461544))

(assert (not start!437522))

(assert (not b!4461545))

(assert (not b!4461547))

(assert (not b!4461546))

(assert tp_is_empty!27241)

(assert tp_is_empty!27243)

(assert (not b!4461550))

(assert (not b!4461549))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

