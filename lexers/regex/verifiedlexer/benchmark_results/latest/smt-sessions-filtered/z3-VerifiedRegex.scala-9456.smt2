; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!499318 () Bool)

(assert start!499318)

(declare-fun b!4820075 () Bool)

(declare-fun e!3011499 () Bool)

(declare-fun lt!1969223 () Bool)

(assert (=> b!4820075 (= e!3011499 (and lt!1969223 (not lt!1969223)))))

(declare-datatypes ((V!16815 0))(
  ( (V!16816 (val!21561 Int)) )
))
(declare-datatypes ((K!16569 0))(
  ( (K!16570 (val!21562 Int)) )
))
(declare-datatypes ((tuple2!58058 0))(
  ( (tuple2!58059 (_1!32323 K!16569) (_2!32323 V!16815)) )
))
(declare-datatypes ((List!55014 0))(
  ( (Nil!54890) (Cons!54890 (h!61324 tuple2!58058) (t!362510 List!55014)) )
))
(declare-datatypes ((tuple2!58060 0))(
  ( (tuple2!58061 (_1!32324 (_ BitVec 64)) (_2!32324 List!55014)) )
))
(declare-datatypes ((List!55015 0))(
  ( (Nil!54891) (Cons!54891 (h!61325 tuple2!58060) (t!362511 List!55015)) )
))
(declare-datatypes ((ListLongMap!5927 0))(
  ( (ListLongMap!5928 (toList!7428 List!55015)) )
))
(declare-fun lm!2280 () ListLongMap!5927)

(declare-fun lt!1969224 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4820075 (= lt!1969223 (or (not ((_ is Cons!54891) (toList!7428 lm!2280))) (not (= (_1!32324 (h!61325 (toList!7428 lm!2280))) lt!1969224))))))

(declare-fun b!4820076 () Bool)

(declare-fun e!3011501 () Bool)

(assert (=> b!4820076 (= e!3011501 e!3011499)))

(declare-fun res!2051181 () Bool)

(assert (=> b!4820076 (=> (not res!2051181) (not e!3011499))))

(declare-fun contains!18705 (ListLongMap!5927 (_ BitVec 64)) Bool)

(assert (=> b!4820076 (= res!2051181 (contains!18705 lm!2280 lt!1969224))))

(declare-datatypes ((Hashable!7232 0))(
  ( (HashableExt!7231 (__x!33507 Int)) )
))
(declare-fun hashF!1509 () Hashable!7232)

(declare-fun key!5428 () K!16569)

(declare-fun hash!5321 (Hashable!7232 K!16569) (_ BitVec 64))

(assert (=> b!4820076 (= lt!1969224 (hash!5321 hashF!1509 key!5428))))

(declare-fun res!2051182 () Bool)

(assert (=> start!499318 (=> (not res!2051182) (not e!3011501))))

(declare-fun lambda!235392 () Int)

(declare-fun forall!12550 (List!55015 Int) Bool)

(assert (=> start!499318 (= res!2051182 (forall!12550 (toList!7428 lm!2280) lambda!235392))))

(assert (=> start!499318 e!3011501))

(declare-fun e!3011500 () Bool)

(declare-fun inv!70469 (ListLongMap!5927) Bool)

(assert (=> start!499318 (and (inv!70469 lm!2280) e!3011500)))

(assert (=> start!499318 true))

(declare-fun tp_is_empty!34353 () Bool)

(assert (=> start!499318 tp_is_empty!34353))

(declare-fun b!4820077 () Bool)

(declare-fun res!2051183 () Bool)

(assert (=> b!4820077 (=> (not res!2051183) (not e!3011499))))

(declare-fun containsKey!4300 (List!55014 K!16569) Bool)

(declare-fun apply!13319 (ListLongMap!5927 (_ BitVec 64)) List!55014)

(assert (=> b!4820077 (= res!2051183 (not (containsKey!4300 (apply!13319 lm!2280 lt!1969224) key!5428)))))

(declare-fun b!4820078 () Bool)

(declare-fun tp!1362233 () Bool)

(assert (=> b!4820078 (= e!3011500 tp!1362233)))

(declare-fun b!4820079 () Bool)

(declare-fun res!2051180 () Bool)

(assert (=> b!4820079 (=> (not res!2051180) (not e!3011501))))

(declare-fun allKeysSameHashInMap!2548 (ListLongMap!5927 Hashable!7232) Bool)

(assert (=> b!4820079 (= res!2051180 (allKeysSameHashInMap!2548 lm!2280 hashF!1509))))

(assert (= (and start!499318 res!2051182) b!4820079))

(assert (= (and b!4820079 res!2051180) b!4820076))

(assert (= (and b!4820076 res!2051181) b!4820077))

(assert (= (and b!4820077 res!2051183) b!4820075))

(assert (= start!499318 b!4820078))

(declare-fun m!5807490 () Bool)

(assert (=> b!4820076 m!5807490))

(declare-fun m!5807492 () Bool)

(assert (=> b!4820076 m!5807492))

(declare-fun m!5807494 () Bool)

(assert (=> start!499318 m!5807494))

(declare-fun m!5807496 () Bool)

(assert (=> start!499318 m!5807496))

(declare-fun m!5807498 () Bool)

(assert (=> b!4820077 m!5807498))

(assert (=> b!4820077 m!5807498))

(declare-fun m!5807500 () Bool)

(assert (=> b!4820077 m!5807500))

(declare-fun m!5807502 () Bool)

(assert (=> b!4820079 m!5807502))

(check-sat (not b!4820078) (not b!4820077) (not start!499318) (not b!4820079) tp_is_empty!34353 (not b!4820076))
(check-sat)
