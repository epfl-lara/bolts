; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497756 () Bool)

(assert start!497756)

(declare-fun b!4813574 () Bool)

(declare-fun e!3007406 () Bool)

(assert (=> b!4813574 (= e!3007406 true)))

(declare-datatypes ((K!16259 0))(
  ( (K!16260 (val!21313 Int)) )
))
(declare-datatypes ((V!16505 0))(
  ( (V!16506 (val!21314 Int)) )
))
(declare-datatypes ((tuple2!57562 0))(
  ( (tuple2!57563 (_1!32075 K!16259) (_2!32075 V!16505)) )
))
(declare-datatypes ((List!54748 0))(
  ( (Nil!54624) (Cons!54624 (h!61056 tuple2!57562) (t!362244 List!54748)) )
))
(declare-datatypes ((tuple2!57564 0))(
  ( (tuple2!57565 (_1!32076 (_ BitVec 64)) (_2!32076 List!54748)) )
))
(declare-datatypes ((List!54749 0))(
  ( (Nil!54625) (Cons!54625 (h!61057 tuple2!57564) (t!362245 List!54749)) )
))
(declare-datatypes ((ListLongMap!5679 0))(
  ( (ListLongMap!5680 (toList!7199 List!54749)) )
))
(declare-fun lm!1254 () ListLongMap!5679)

(declare-fun lt!1964510 () (_ BitVec 64))

(declare-fun containsKey!4187 (List!54749 (_ BitVec 64)) Bool)

(assert (=> b!4813574 (containsKey!4187 (toList!7199 lm!1254) lt!1964510)))

(declare-datatypes ((Unit!141723 0))(
  ( (Unit!141724) )
))
(declare-fun lt!1964509 () Unit!141723)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!299 (List!54749 (_ BitVec 64)) Unit!141723)

(assert (=> b!4813574 (= lt!1964509 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!299 (toList!7199 lm!1254) lt!1964510))))

(declare-fun b!4813575 () Bool)

(declare-fun res!2047358 () Bool)

(declare-fun e!3007405 () Bool)

(assert (=> b!4813575 (=> (not res!2047358) (not e!3007405))))

(declare-fun key!2670 () K!16259)

(declare-datatypes ((ListMap!6613 0))(
  ( (ListMap!6614 (toList!7200 List!54748)) )
))
(declare-fun contains!18378 (ListMap!6613 K!16259) Bool)

(declare-fun extractMap!2558 (List!54749) ListMap!6613)

(assert (=> b!4813575 (= res!2047358 (contains!18378 (extractMap!2558 (toList!7199 lm!1254)) key!2670))))

(declare-fun b!4813576 () Bool)

(assert (=> b!4813576 (= e!3007405 (not e!3007406))))

(declare-fun res!2047360 () Bool)

(assert (=> b!4813576 (=> res!2047360 e!3007406)))

(declare-fun contains!18379 (List!54749 tuple2!57564) Bool)

(declare-fun apply!13213 (ListLongMap!5679 (_ BitVec 64)) List!54748)

(assert (=> b!4813576 (= res!2047360 (contains!18379 (toList!7199 lm!1254) (tuple2!57565 lt!1964510 (apply!13213 lm!1254 lt!1964510))))))

(declare-fun contains!18380 (ListLongMap!5679 (_ BitVec 64)) Bool)

(assert (=> b!4813576 (contains!18380 lm!1254 lt!1964510)))

(declare-datatypes ((Hashable!7108 0))(
  ( (HashableExt!7107 (__x!33383 Int)) )
))
(declare-fun hashF!938 () Hashable!7108)

(declare-fun hash!5171 (Hashable!7108 K!16259) (_ BitVec 64))

(assert (=> b!4813576 (= lt!1964510 (hash!5171 hashF!938 key!2670))))

(declare-fun lt!1964511 () Unit!141723)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1046 (ListLongMap!5679 K!16259 Hashable!7108) Unit!141723)

(assert (=> b!4813576 (= lt!1964511 (lemmaInGenMapThenLongMapContainsHash!1046 lm!1254 key!2670 hashF!938))))

(declare-fun res!2047357 () Bool)

(assert (=> start!497756 (=> (not res!2047357) (not e!3007405))))

(declare-fun lambda!233953 () Int)

(declare-fun forall!12412 (List!54749 Int) Bool)

(assert (=> start!497756 (= res!2047357 (forall!12412 (toList!7199 lm!1254) lambda!233953))))

(assert (=> start!497756 e!3007405))

(declare-fun e!3007404 () Bool)

(declare-fun inv!70159 (ListLongMap!5679) Bool)

(assert (=> start!497756 (and (inv!70159 lm!1254) e!3007404)))

(assert (=> start!497756 true))

(declare-fun tp_is_empty!34085 () Bool)

(assert (=> start!497756 tp_is_empty!34085))

(declare-fun b!4813577 () Bool)

(declare-fun tp!1361623 () Bool)

(assert (=> b!4813577 (= e!3007404 tp!1361623)))

(declare-fun b!4813578 () Bool)

(declare-fun res!2047359 () Bool)

(assert (=> b!4813578 (=> (not res!2047359) (not e!3007405))))

(declare-fun allKeysSameHashInMap!2424 (ListLongMap!5679 Hashable!7108) Bool)

(assert (=> b!4813578 (= res!2047359 (allKeysSameHashInMap!2424 lm!1254 hashF!938))))

(assert (= (and start!497756 res!2047357) b!4813578))

(assert (= (and b!4813578 res!2047359) b!4813575))

(assert (= (and b!4813575 res!2047358) b!4813576))

(assert (= (and b!4813576 (not res!2047360)) b!4813574))

(assert (= start!497756 b!4813577))

(declare-fun m!5799170 () Bool)

(assert (=> b!4813575 m!5799170))

(assert (=> b!4813575 m!5799170))

(declare-fun m!5799172 () Bool)

(assert (=> b!4813575 m!5799172))

(declare-fun m!5799174 () Bool)

(assert (=> b!4813578 m!5799174))

(declare-fun m!5799176 () Bool)

(assert (=> b!4813574 m!5799176))

(declare-fun m!5799178 () Bool)

(assert (=> b!4813574 m!5799178))

(declare-fun m!5799180 () Bool)

(assert (=> start!497756 m!5799180))

(declare-fun m!5799182 () Bool)

(assert (=> start!497756 m!5799182))

(declare-fun m!5799184 () Bool)

(assert (=> b!4813576 m!5799184))

(declare-fun m!5799186 () Bool)

(assert (=> b!4813576 m!5799186))

(declare-fun m!5799188 () Bool)

(assert (=> b!4813576 m!5799188))

(declare-fun m!5799190 () Bool)

(assert (=> b!4813576 m!5799190))

(declare-fun m!5799192 () Bool)

(assert (=> b!4813576 m!5799192))

(check-sat (not b!4813575) (not b!4813574) (not b!4813576) (not b!4813578) tp_is_empty!34085 (not start!497756) (not b!4813577))
(check-sat)
