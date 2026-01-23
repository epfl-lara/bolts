; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!461222 () Bool)

(assert start!461222)

(declare-fun res!1930680 () Bool)

(declare-fun e!2876386 () Bool)

(assert (=> start!461222 (=> (not res!1930680) (not e!2876386))))

(declare-datatypes ((K!12618 0))(
  ( (K!12619 (val!18365 Int)) )
))
(declare-datatypes ((V!12864 0))(
  ( (V!12865 (val!18366 Int)) )
))
(declare-datatypes ((tuple2!51994 0))(
  ( (tuple2!51995 (_1!29291 K!12618) (_2!29291 V!12864)) )
))
(declare-datatypes ((List!51369 0))(
  ( (Nil!51245) (Cons!51245 (h!57243 tuple2!51994) (t!358363 List!51369)) )
))
(declare-fun oldBucket!40 () List!51369)

(declare-fun noDuplicateKeys!1387 (List!51369) Bool)

(assert (=> start!461222 (= res!1930680 (noDuplicateKeys!1387 oldBucket!40))))

(assert (=> start!461222 e!2876386))

(assert (=> start!461222 true))

(declare-fun e!2876387 () Bool)

(assert (=> start!461222 e!2876387))

(declare-fun tp_is_empty!28841 () Bool)

(assert (=> start!461222 tp_is_empty!28841))

(declare-fun e!2876388 () Bool)

(assert (=> start!461222 e!2876388))

(declare-fun b!4611167 () Bool)

(declare-fun e!2876385 () Bool)

(declare-datatypes ((ListMap!4043 0))(
  ( (ListMap!4044 (toList!4775 List!51369)) )
))
(declare-fun lt!1767190 () ListMap!4043)

(declare-fun addToMapMapFromBucket!848 (List!51369 ListMap!4043) ListMap!4043)

(declare-datatypes ((tuple2!51996 0))(
  ( (tuple2!51997 (_1!29292 (_ BitVec 64)) (_2!29292 List!51369)) )
))
(declare-datatypes ((List!51370 0))(
  ( (Nil!51246) (Cons!51246 (h!57244 tuple2!51996) (t!358364 List!51370)) )
))
(declare-fun extractMap!1443 (List!51370) ListMap!4043)

(assert (=> b!4611167 (= e!2876385 (= lt!1767190 (addToMapMapFromBucket!848 oldBucket!40 (extractMap!1443 Nil!51246))))))

(declare-fun b!4611168 () Bool)

(declare-fun res!1930679 () Bool)

(declare-fun e!2876389 () Bool)

(assert (=> b!4611168 (=> (not res!1930679) (not e!2876389))))

(declare-datatypes ((Hashable!5784 0))(
  ( (HashableExt!5783 (__x!31487 Int)) )
))
(declare-fun hashF!1389 () Hashable!5784)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun newBucket!224 () List!51369)

(declare-fun allKeysSameHash!1241 (List!51369 (_ BitVec 64) Hashable!5784) Bool)

(assert (=> b!4611168 (= res!1930679 (allKeysSameHash!1241 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4611169 () Bool)

(assert (=> b!4611169 (= e!2876386 e!2876389)))

(declare-fun res!1930682 () Bool)

(assert (=> b!4611169 (=> (not res!1930682) (not e!2876389))))

(declare-fun key!4968 () K!12618)

(declare-fun contains!14249 (ListMap!4043 K!12618) Bool)

(assert (=> b!4611169 (= res!1930682 (contains!14249 lt!1767190 key!4968))))

(assert (=> b!4611169 (= lt!1767190 (extractMap!1443 (Cons!51246 (tuple2!51997 hash!414 oldBucket!40) Nil!51246)))))

(declare-fun b!4611170 () Bool)

(declare-fun res!1930677 () Bool)

(assert (=> b!4611170 (=> (not res!1930677) (not e!2876386))))

(assert (=> b!4611170 (= res!1930677 (allKeysSameHash!1241 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp_is_empty!28843 () Bool)

(declare-fun tp!1341185 () Bool)

(declare-fun b!4611171 () Bool)

(assert (=> b!4611171 (= e!2876387 (and tp_is_empty!28841 tp_is_empty!28843 tp!1341185))))

(declare-fun b!4611172 () Bool)

(assert (=> b!4611172 (= e!2876389 (not true))))

(assert (=> b!4611172 e!2876385))

(declare-fun res!1930684 () Bool)

(assert (=> b!4611172 (=> (not res!1930684) (not e!2876385))))

(assert (=> b!4611172 (= res!1930684 true)))

(declare-fun tp!1341184 () Bool)

(declare-fun b!4611173 () Bool)

(assert (=> b!4611173 (= e!2876388 (and tp_is_empty!28841 tp_is_empty!28843 tp!1341184))))

(declare-fun b!4611174 () Bool)

(declare-fun res!1930683 () Bool)

(assert (=> b!4611174 (=> (not res!1930683) (not e!2876386))))

(declare-fun removePairForKey!1010 (List!51369 K!12618) List!51369)

(assert (=> b!4611174 (= res!1930683 (= (removePairForKey!1010 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4611175 () Bool)

(declare-fun res!1930678 () Bool)

(assert (=> b!4611175 (=> (not res!1930678) (not e!2876389))))

(declare-fun hash!3328 (Hashable!5784 K!12618) (_ BitVec 64))

(assert (=> b!4611175 (= res!1930678 (= (hash!3328 hashF!1389 key!4968) hash!414))))

(declare-fun b!4611176 () Bool)

(declare-fun res!1930681 () Bool)

(assert (=> b!4611176 (=> (not res!1930681) (not e!2876386))))

(assert (=> b!4611176 (= res!1930681 (noDuplicateKeys!1387 newBucket!224))))

(assert (= (and start!461222 res!1930680) b!4611176))

(assert (= (and b!4611176 res!1930681) b!4611174))

(assert (= (and b!4611174 res!1930683) b!4611170))

(assert (= (and b!4611170 res!1930677) b!4611169))

(assert (= (and b!4611169 res!1930682) b!4611175))

(assert (= (and b!4611175 res!1930678) b!4611168))

(assert (= (and b!4611168 res!1930679) b!4611172))

(assert (= (and b!4611172 res!1930684) b!4611167))

(assert (= (and start!461222 (is-Cons!51245 oldBucket!40)) b!4611171))

(assert (= (and start!461222 (is-Cons!51245 newBucket!224)) b!4611173))

(declare-fun m!5442671 () Bool)

(assert (=> b!4611167 m!5442671))

(assert (=> b!4611167 m!5442671))

(declare-fun m!5442673 () Bool)

(assert (=> b!4611167 m!5442673))

(declare-fun m!5442675 () Bool)

(assert (=> b!4611174 m!5442675))

(declare-fun m!5442677 () Bool)

(assert (=> b!4611168 m!5442677))

(declare-fun m!5442679 () Bool)

(assert (=> start!461222 m!5442679))

(declare-fun m!5442681 () Bool)

(assert (=> b!4611176 m!5442681))

(declare-fun m!5442683 () Bool)

(assert (=> b!4611169 m!5442683))

(declare-fun m!5442685 () Bool)

(assert (=> b!4611169 m!5442685))

(declare-fun m!5442687 () Bool)

(assert (=> b!4611175 m!5442687))

(declare-fun m!5442689 () Bool)

(assert (=> b!4611170 m!5442689))

(push 1)

(assert (not b!4611174))

(assert tp_is_empty!28841)

(assert (not b!4611176))

(assert tp_is_empty!28843)

(assert (not b!4611173))

(assert (not b!4611175))

(assert (not b!4611170))

(assert (not b!4611167))

(assert (not b!4611168))

(assert (not b!4611171))

(assert (not b!4611169))

(assert (not start!461222))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

