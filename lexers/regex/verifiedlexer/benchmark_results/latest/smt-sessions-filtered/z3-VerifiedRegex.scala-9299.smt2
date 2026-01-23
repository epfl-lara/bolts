; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!493330 () Bool)

(assert start!493330)

(declare-fun res!2036602 () Bool)

(declare-fun e!2991863 () Bool)

(assert (=> start!493330 (=> (not res!2036602) (not e!2991863))))

(declare-datatypes ((K!15784 0))(
  ( (K!15785 (val!20933 Int)) )
))
(declare-datatypes ((V!16030 0))(
  ( (V!16031 (val!20934 Int)) )
))
(declare-datatypes ((tuple2!56840 0))(
  ( (tuple2!56841 (_1!31714 K!15784) (_2!31714 V!16030)) )
))
(declare-datatypes ((List!54331 0))(
  ( (Nil!54207) (Cons!54207 (h!60631 tuple2!56840) (t!361781 List!54331)) )
))
(declare-datatypes ((tuple2!56842 0))(
  ( (tuple2!56843 (_1!31715 (_ BitVec 64)) (_2!31715 List!54331)) )
))
(declare-datatypes ((List!54332 0))(
  ( (Nil!54208) (Cons!54208 (h!60632 tuple2!56842) (t!361782 List!54332)) )
))
(declare-datatypes ((ListLongMap!5337 0))(
  ( (ListLongMap!5338 (toList!6915 List!54332)) )
))
(declare-fun lm!2473 () ListLongMap!5337)

(declare-fun lambda!230427 () Int)

(declare-fun forall!12243 (List!54332 Int) Bool)

(assert (=> start!493330 (= res!2036602 (forall!12243 (toList!6915 lm!2473) lambda!230427))))

(assert (=> start!493330 e!2991863))

(declare-fun e!2991865 () Bool)

(declare-fun inv!69810 (ListLongMap!5337) Bool)

(assert (=> start!493330 (and (inv!69810 lm!2473) e!2991865)))

(assert (=> start!493330 true))

(declare-fun tp_is_empty!33539 () Bool)

(assert (=> start!493330 tp_is_empty!33539))

(declare-fun b!4791779 () Bool)

(declare-fun res!2036600 () Bool)

(assert (=> b!4791779 (=> (not res!2036600) (not e!2991863))))

(declare-datatypes ((Hashable!6918 0))(
  ( (HashableExt!6917 (__x!32941 Int)) )
))
(declare-fun hashF!1559 () Hashable!6918)

(declare-fun allKeysSameHashInMap!2323 (ListLongMap!5337 Hashable!6918) Bool)

(assert (=> b!4791779 (= res!2036600 (allKeysSameHashInMap!2323 lm!2473 hashF!1559))))

(declare-fun b!4791780 () Bool)

(declare-fun e!2991864 () Bool)

(declare-fun lt!1950851 () Bool)

(assert (=> b!4791780 (= e!2991864 lt!1950851)))

(declare-fun b!4791781 () Bool)

(declare-fun res!2036599 () Bool)

(assert (=> b!4791781 (=> (not res!2036599) (not e!2991863))))

(declare-fun key!5896 () K!15784)

(declare-datatypes ((ListMap!6387 0))(
  ( (ListMap!6388 (toList!6916 List!54331)) )
))
(declare-fun contains!17814 (ListMap!6387 K!15784) Bool)

(declare-fun extractMap!2445 (List!54332) ListMap!6387)

(assert (=> b!4791781 (= res!2036599 (contains!17814 (extractMap!2445 (toList!6915 lm!2473)) key!5896))))

(declare-fun b!4791782 () Bool)

(declare-fun tp!1357984 () Bool)

(assert (=> b!4791782 (= e!2991865 tp!1357984)))

(declare-fun b!4791783 () Bool)

(assert (=> b!4791783 (= e!2991863 (not e!2991864))))

(declare-fun res!2036601 () Bool)

(assert (=> b!4791783 (=> res!2036601 e!2991864)))

(assert (=> b!4791783 (= res!2036601 (not (forall!12243 (toList!6915 lm!2473) lambda!230427)))))

(declare-fun e!2991866 () Bool)

(assert (=> b!4791783 e!2991866))

(declare-fun res!2036598 () Bool)

(assert (=> b!4791783 (=> (not res!2036598) (not e!2991866))))

(assert (=> b!4791783 (= res!2036598 lt!1950851)))

(declare-fun lt!1950853 () (_ BitVec 64))

(declare-fun contains!17815 (ListLongMap!5337 (_ BitVec 64)) Bool)

(assert (=> b!4791783 (= lt!1950851 (contains!17815 lm!2473 lt!1950853))))

(declare-fun hash!4950 (Hashable!6918 K!15784) (_ BitVec 64))

(assert (=> b!4791783 (= lt!1950853 (hash!4950 hashF!1559 key!5896))))

(declare-datatypes ((Unit!139914 0))(
  ( (Unit!139915) )
))
(declare-fun lt!1950852 () Unit!139914)

(declare-fun lemmaInGenericMapThenInLongMap!322 (ListLongMap!5337 K!15784 Hashable!6918) Unit!139914)

(assert (=> b!4791783 (= lt!1950852 (lemmaInGenericMapThenInLongMap!322 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4791784 () Bool)

(declare-datatypes ((Option!13085 0))(
  ( (None!13084) (Some!13084 (v!48363 tuple2!56840)) )
))
(declare-fun isDefined!10227 (Option!13085) Bool)

(declare-fun getPair!890 (List!54331 K!15784) Option!13085)

(declare-fun apply!12987 (ListLongMap!5337 (_ BitVec 64)) List!54331)

(assert (=> b!4791784 (= e!2991866 (isDefined!10227 (getPair!890 (apply!12987 lm!2473 lt!1950853) key!5896)))))

(assert (= (and start!493330 res!2036602) b!4791779))

(assert (= (and b!4791779 res!2036600) b!4791781))

(assert (= (and b!4791781 res!2036599) b!4791783))

(assert (= (and b!4791783 res!2036598) b!4791784))

(assert (= (and b!4791783 (not res!2036601)) b!4791780))

(assert (= start!493330 b!4791782))

(declare-fun m!5772428 () Bool)

(assert (=> b!4791781 m!5772428))

(assert (=> b!4791781 m!5772428))

(declare-fun m!5772430 () Bool)

(assert (=> b!4791781 m!5772430))

(declare-fun m!5772432 () Bool)

(assert (=> start!493330 m!5772432))

(declare-fun m!5772434 () Bool)

(assert (=> start!493330 m!5772434))

(declare-fun m!5772436 () Bool)

(assert (=> b!4791784 m!5772436))

(assert (=> b!4791784 m!5772436))

(declare-fun m!5772438 () Bool)

(assert (=> b!4791784 m!5772438))

(assert (=> b!4791784 m!5772438))

(declare-fun m!5772440 () Bool)

(assert (=> b!4791784 m!5772440))

(declare-fun m!5772442 () Bool)

(assert (=> b!4791779 m!5772442))

(assert (=> b!4791783 m!5772432))

(declare-fun m!5772444 () Bool)

(assert (=> b!4791783 m!5772444))

(declare-fun m!5772446 () Bool)

(assert (=> b!4791783 m!5772446))

(declare-fun m!5772448 () Bool)

(assert (=> b!4791783 m!5772448))

(check-sat (not b!4791783) tp_is_empty!33539 (not b!4791784) (not b!4791782) (not b!4791779) (not start!493330) (not b!4791781))
(check-sat)
