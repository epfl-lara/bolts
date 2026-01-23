; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437502 () Bool)

(assert start!437502)

(declare-fun b!4461338 () Bool)

(declare-fun e!2778063 () Bool)

(declare-fun tp!1335773 () Bool)

(assert (=> b!4461338 (= e!2778063 tp!1335773)))

(declare-fun b!4461339 () Bool)

(declare-fun res!1850133 () Bool)

(declare-fun e!2778062 () Bool)

(assert (=> b!4461339 (=> (not res!1850133) (not e!2778062))))

(declare-datatypes ((K!11593 0))(
  ( (K!11594 (val!17545 Int)) )
))
(declare-datatypes ((V!11839 0))(
  ( (V!11840 (val!17546 Int)) )
))
(declare-datatypes ((tuple2!50358 0))(
  ( (tuple2!50359 (_1!28473 K!11593) (_2!28473 V!11839)) )
))
(declare-datatypes ((List!50305 0))(
  ( (Nil!50181) (Cons!50181 (h!55926 tuple2!50358) (t!357255 List!50305)) )
))
(declare-datatypes ((tuple2!50360 0))(
  ( (tuple2!50361 (_1!28474 (_ BitVec 64)) (_2!28474 List!50305)) )
))
(declare-datatypes ((List!50306 0))(
  ( (Nil!50182) (Cons!50182 (h!55927 tuple2!50360) (t!357256 List!50306)) )
))
(declare-datatypes ((ListLongMap!2601 0))(
  ( (ListLongMap!2602 (toList!3969 List!50306)) )
))
(declare-fun lm!1477 () ListLongMap!2601)

(declare-datatypes ((Hashable!5376 0))(
  ( (HashableExt!5375 (__x!31079 Int)) )
))
(declare-fun hashF!1107 () Hashable!5376)

(declare-fun allKeysSameHashInMap!1088 (ListLongMap!2601 Hashable!5376) Bool)

(assert (=> b!4461339 (= res!1850133 (allKeysSameHashInMap!1088 lm!1477 hashF!1107))))

(declare-fun b!4461340 () Bool)

(declare-fun res!1850135 () Bool)

(assert (=> b!4461340 (=> (not res!1850135) (not e!2778062))))

(declare-fun key!3287 () K!11593)

(declare-datatypes ((ListMap!3231 0))(
  ( (ListMap!3232 (toList!3970 List!50305)) )
))
(declare-fun contains!12687 (ListMap!3231 K!11593) Bool)

(declare-fun extractMap!1037 (List!50306) ListMap!3231)

(assert (=> b!4461340 (= res!1850135 (contains!12687 (extractMap!1037 (toList!3969 lm!1477)) key!3287))))

(declare-fun b!4461342 () Bool)

(declare-fun res!1850134 () Bool)

(assert (=> b!4461342 (=> (not res!1850134) (not e!2778062))))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun hash!2363 (Hashable!5376 K!11593) (_ BitVec 64))

(assert (=> b!4461342 (= res!1850134 (= (hash!2363 hashF!1107 key!3287) hash!344))))

(declare-fun b!4461343 () Bool)

(assert (=> b!4461343 (= e!2778062 false)))

(declare-fun res!1850132 () Bool)

(assert (=> start!437502 (=> (not res!1850132) (not e!2778062))))

(declare-fun lambda!161852 () Int)

(declare-fun forall!9921 (List!50306 Int) Bool)

(assert (=> start!437502 (= res!1850132 (forall!9921 (toList!3969 lm!1477) lambda!161852))))

(assert (=> start!437502 e!2778062))

(assert (=> start!437502 true))

(declare-fun inv!65778 (ListLongMap!2601) Bool)

(assert (=> start!437502 (and (inv!65778 lm!1477) e!2778063)))

(declare-fun tp_is_empty!27201 () Bool)

(assert (=> start!437502 tp_is_empty!27201))

(declare-fun e!2778064 () Bool)

(assert (=> start!437502 e!2778064))

(declare-fun tp_is_empty!27203 () Bool)

(declare-fun tp!1335772 () Bool)

(declare-fun b!4461341 () Bool)

(assert (=> b!4461341 (= e!2778064 (and tp_is_empty!27201 tp_is_empty!27203 tp!1335772))))

(assert (= (and start!437502 res!1850132) b!4461339))

(assert (= (and b!4461339 res!1850133) b!4461340))

(assert (= (and b!4461340 res!1850135) b!4461342))

(assert (= (and b!4461342 res!1850134) b!4461343))

(assert (= start!437502 b!4461338))

(declare-fun newBucket!178 () List!50305)

(assert (= (and start!437502 (is-Cons!50181 newBucket!178)) b!4461341))

(declare-fun m!5164321 () Bool)

(assert (=> b!4461339 m!5164321))

(declare-fun m!5164323 () Bool)

(assert (=> b!4461340 m!5164323))

(assert (=> b!4461340 m!5164323))

(declare-fun m!5164325 () Bool)

(assert (=> b!4461340 m!5164325))

(declare-fun m!5164327 () Bool)

(assert (=> b!4461342 m!5164327))

(declare-fun m!5164329 () Bool)

(assert (=> start!437502 m!5164329))

(declare-fun m!5164331 () Bool)

(assert (=> start!437502 m!5164331))

(push 1)

(assert (not start!437502))

(assert tp_is_empty!27203)

(assert tp_is_empty!27201)

(assert (not b!4461339))

(assert (not b!4461342))

(assert (not b!4461341))

(assert (not b!4461340))

(assert (not b!4461338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

