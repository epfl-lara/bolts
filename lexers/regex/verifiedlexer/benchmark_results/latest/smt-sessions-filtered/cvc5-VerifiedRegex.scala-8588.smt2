; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!456862 () Bool)

(assert start!456862)

(declare-fun b!4589085 () Bool)

(declare-fun e!2862079 () Bool)

(assert (=> b!4589085 (= e!2862079 false)))

(declare-fun b!4589086 () Bool)

(declare-fun res!1918237 () Bool)

(assert (=> b!4589086 (=> (not res!1918237) (not e!2862079))))

(declare-datatypes ((K!12343 0))(
  ( (K!12344 (val!18145 Int)) )
))
(declare-datatypes ((V!12589 0))(
  ( (V!12590 (val!18146 Int)) )
))
(declare-datatypes ((tuple2!51558 0))(
  ( (tuple2!51559 (_1!29073 K!12343) (_2!29073 V!12589)) )
))
(declare-datatypes ((List!51098 0))(
  ( (Nil!50974) (Cons!50974 (h!56915 tuple2!51558) (t!358092 List!51098)) )
))
(declare-datatypes ((tuple2!51560 0))(
  ( (tuple2!51561 (_1!29074 (_ BitVec 64)) (_2!29074 List!51098)) )
))
(declare-datatypes ((List!51099 0))(
  ( (Nil!50975) (Cons!50975 (h!56916 tuple2!51560) (t!358093 List!51099)) )
))
(declare-datatypes ((ListLongMap!3201 0))(
  ( (ListLongMap!3202 (toList!4569 List!51099)) )
))
(declare-fun lm!1477 () ListLongMap!3201)

(declare-datatypes ((Hashable!5676 0))(
  ( (HashableExt!5675 (__x!31379 Int)) )
))
(declare-fun hashF!1107 () Hashable!5676)

(declare-fun allKeysSameHashInMap!1388 (ListLongMap!3201 Hashable!5676) Bool)

(assert (=> b!4589086 (= res!1918237 (allKeysSameHashInMap!1388 lm!1477 hashF!1107))))

(declare-fun b!4589087 () Bool)

(declare-fun e!2862080 () Bool)

(declare-fun tp!1339871 () Bool)

(declare-fun tp_is_empty!28403 () Bool)

(declare-fun tp_is_empty!28401 () Bool)

(assert (=> b!4589087 (= e!2862080 (and tp_is_empty!28401 tp_is_empty!28403 tp!1339871))))

(declare-fun b!4589088 () Bool)

(declare-fun e!2862078 () Bool)

(declare-fun tp!1339870 () Bool)

(assert (=> b!4589088 (= e!2862078 tp!1339870)))

(declare-fun res!1918238 () Bool)

(assert (=> start!456862 (=> (not res!1918238) (not e!2862079))))

(declare-fun lambda!184406 () Int)

(declare-fun forall!10519 (List!51099 Int) Bool)

(assert (=> start!456862 (= res!1918238 (forall!10519 (toList!4569 lm!1477) lambda!184406))))

(assert (=> start!456862 e!2862079))

(assert (=> start!456862 true))

(declare-fun inv!66528 (ListLongMap!3201) Bool)

(assert (=> start!456862 (and (inv!66528 lm!1477) e!2862078)))

(assert (=> start!456862 tp_is_empty!28401))

(assert (=> start!456862 e!2862080))

(declare-fun b!4589089 () Bool)

(declare-fun res!1918235 () Bool)

(assert (=> b!4589089 (=> (not res!1918235) (not e!2862079))))

(declare-fun key!3287 () K!12343)

(declare-datatypes ((ListMap!3831 0))(
  ( (ListMap!3832 (toList!4570 List!51098)) )
))
(declare-fun contains!13880 (ListMap!3831 K!12343) Bool)

(declare-fun extractMap!1337 (List!51099) ListMap!3831)

(assert (=> b!4589089 (= res!1918235 (contains!13880 (extractMap!1337 (toList!4569 lm!1477)) key!3287))))

(declare-fun b!4589090 () Bool)

(declare-fun res!1918236 () Bool)

(assert (=> b!4589090 (=> (not res!1918236) (not e!2862079))))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun hash!3144 (Hashable!5676 K!12343) (_ BitVec 64))

(assert (=> b!4589090 (= res!1918236 (= (hash!3144 hashF!1107 key!3287) hash!344))))

(assert (= (and start!456862 res!1918238) b!4589086))

(assert (= (and b!4589086 res!1918237) b!4589089))

(assert (= (and b!4589089 res!1918235) b!4589090))

(assert (= (and b!4589090 res!1918236) b!4589085))

(assert (= start!456862 b!4589088))

(declare-fun newBucket!178 () List!51098)

(assert (= (and start!456862 (is-Cons!50974 newBucket!178)) b!4589087))

(declare-fun m!5411975 () Bool)

(assert (=> b!4589086 m!5411975))

(declare-fun m!5411977 () Bool)

(assert (=> start!456862 m!5411977))

(declare-fun m!5411979 () Bool)

(assert (=> start!456862 m!5411979))

(declare-fun m!5411981 () Bool)

(assert (=> b!4589089 m!5411981))

(assert (=> b!4589089 m!5411981))

(declare-fun m!5411983 () Bool)

(assert (=> b!4589089 m!5411983))

(declare-fun m!5411985 () Bool)

(assert (=> b!4589090 m!5411985))

(push 1)

(assert (not b!4589086))

(assert (not b!4589087))

(assert (not b!4589089))

(assert tp_is_empty!28403)

(assert (not start!456862))

(assert (not b!4589090))

(assert tp_is_empty!28401)

(assert (not b!4589088))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

