; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!456858 () Bool)

(assert start!456858)

(declare-fun b!4589045 () Bool)

(declare-fun res!1918208 () Bool)

(declare-fun e!2862060 () Bool)

(assert (=> b!4589045 (=> (not res!1918208) (not e!2862060))))

(declare-datatypes ((Hashable!5674 0))(
  ( (HashableExt!5673 (__x!31377 Int)) )
))
(declare-fun hashF!1107 () Hashable!5674)

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((K!12338 0))(
  ( (K!12339 (val!18141 Int)) )
))
(declare-datatypes ((V!12584 0))(
  ( (V!12585 (val!18142 Int)) )
))
(declare-datatypes ((tuple2!51550 0))(
  ( (tuple2!51551 (_1!29069 K!12338) (_2!29069 V!12584)) )
))
(declare-datatypes ((List!51094 0))(
  ( (Nil!50970) (Cons!50970 (h!56911 tuple2!51550) (t!358088 List!51094)) )
))
(declare-fun newBucket!178 () List!51094)

(declare-fun allKeysSameHash!1133 (List!51094 (_ BitVec 64) Hashable!5674) Bool)

(assert (=> b!4589045 (= res!1918208 (allKeysSameHash!1133 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4589046 () Bool)

(declare-datatypes ((tuple2!51552 0))(
  ( (tuple2!51553 (_1!29070 (_ BitVec 64)) (_2!29070 List!51094)) )
))
(declare-datatypes ((List!51095 0))(
  ( (Nil!50971) (Cons!50971 (h!56912 tuple2!51552) (t!358089 List!51095)) )
))
(declare-datatypes ((ListLongMap!3197 0))(
  ( (ListLongMap!3198 (toList!4565 List!51095)) )
))
(declare-fun lm!1477 () ListLongMap!3197)

(declare-fun lambda!184398 () Int)

(declare-fun forall!10517 (List!51095 Int) Bool)

(assert (=> b!4589046 (= e!2862060 (not (forall!10517 (toList!4565 lm!1477) lambda!184398)))))

(declare-fun tp_is_empty!28395 () Bool)

(declare-fun tp_is_empty!28393 () Bool)

(declare-fun e!2862062 () Bool)

(declare-fun b!4589047 () Bool)

(declare-fun tp!1339858 () Bool)

(assert (=> b!4589047 (= e!2862062 (and tp_is_empty!28393 tp_is_empty!28395 tp!1339858))))

(declare-fun b!4589048 () Bool)

(declare-fun res!1918209 () Bool)

(assert (=> b!4589048 (=> (not res!1918209) (not e!2862060))))

(declare-fun key!3287 () K!12338)

(declare-fun hash!3142 (Hashable!5674 K!12338) (_ BitVec 64))

(assert (=> b!4589048 (= res!1918209 (= (hash!3142 hashF!1107 key!3287) hash!344))))

(declare-fun b!4589049 () Bool)

(declare-fun res!1918207 () Bool)

(assert (=> b!4589049 (=> (not res!1918207) (not e!2862060))))

(declare-fun allKeysSameHashInMap!1386 (ListLongMap!3197 Hashable!5674) Bool)

(assert (=> b!4589049 (= res!1918207 (allKeysSameHashInMap!1386 lm!1477 hashF!1107))))

(declare-fun b!4589050 () Bool)

(declare-fun res!1918211 () Bool)

(assert (=> b!4589050 (=> (not res!1918211) (not e!2862060))))

(declare-datatypes ((ListMap!3827 0))(
  ( (ListMap!3828 (toList!4566 List!51094)) )
))
(declare-fun contains!13878 (ListMap!3827 K!12338) Bool)

(declare-fun extractMap!1335 (List!51095) ListMap!3827)

(assert (=> b!4589050 (= res!1918211 (contains!13878 (extractMap!1335 (toList!4565 lm!1477)) key!3287))))

(declare-fun res!1918210 () Bool)

(assert (=> start!456858 (=> (not res!1918210) (not e!2862060))))

(assert (=> start!456858 (= res!1918210 (forall!10517 (toList!4565 lm!1477) lambda!184398))))

(assert (=> start!456858 e!2862060))

(assert (=> start!456858 true))

(declare-fun e!2862061 () Bool)

(declare-fun inv!66523 (ListLongMap!3197) Bool)

(assert (=> start!456858 (and (inv!66523 lm!1477) e!2862061)))

(assert (=> start!456858 tp_is_empty!28393))

(assert (=> start!456858 e!2862062))

(declare-fun b!4589051 () Bool)

(declare-fun tp!1339859 () Bool)

(assert (=> b!4589051 (= e!2862061 tp!1339859)))

(assert (= (and start!456858 res!1918210) b!4589049))

(assert (= (and b!4589049 res!1918207) b!4589050))

(assert (= (and b!4589050 res!1918211) b!4589048))

(assert (= (and b!4589048 res!1918209) b!4589045))

(assert (= (and b!4589045 res!1918208) b!4589046))

(assert (= start!456858 b!4589051))

(assert (= (and start!456858 (is-Cons!50970 newBucket!178)) b!4589047))

(declare-fun m!5411947 () Bool)

(assert (=> b!4589048 m!5411947))

(declare-fun m!5411949 () Bool)

(assert (=> b!4589046 m!5411949))

(declare-fun m!5411951 () Bool)

(assert (=> b!4589049 m!5411951))

(declare-fun m!5411953 () Bool)

(assert (=> b!4589045 m!5411953))

(assert (=> start!456858 m!5411949))

(declare-fun m!5411955 () Bool)

(assert (=> start!456858 m!5411955))

(declare-fun m!5411957 () Bool)

(assert (=> b!4589050 m!5411957))

(assert (=> b!4589050 m!5411957))

(declare-fun m!5411959 () Bool)

(assert (=> b!4589050 m!5411959))

(push 1)

(assert tp_is_empty!28395)

(assert (not b!4589047))

(assert (not b!4589046))

(assert (not b!4589050))

(assert (not b!4589045))

(assert (not b!4589048))

(assert tp_is_empty!28393)

(assert (not b!4589049))

(assert (not b!4589051))

(assert (not start!456858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

