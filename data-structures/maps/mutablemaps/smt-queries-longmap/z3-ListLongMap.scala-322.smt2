; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5922 () Bool)

(assert start!5922)

(declare-fun b_free!1395 () Bool)

(declare-fun b_next!1395 () Bool)

(assert (=> start!5922 (= b_free!1395 (not b_next!1395))))

(declare-fun tp!5780 () Bool)

(declare-fun b_and!2449 () Bool)

(assert (=> start!5922 (= tp!5780 b_and!2449)))

(declare-fun b!41560 () Bool)

(declare-fun res!24695 () Bool)

(declare-fun e!26309 () Bool)

(assert (=> b!41560 (=> res!24695 e!26309)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!41560 (= res!24695 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41558 () Bool)

(declare-fun e!26310 () Bool)

(assert (=> b!41558 (= e!26310 (not e!26309))))

(declare-fun res!24697 () Bool)

(assert (=> b!41558 (=> res!24697 e!26309)))

(declare-datatypes ((V!2139 0))(
  ( (V!2140 (val!931 Int)) )
))
(declare-datatypes ((tuple2!1520 0))(
  ( (tuple2!1521 (_1!770 (_ BitVec 64)) (_2!770 V!2139)) )
))
(declare-datatypes ((List!1100 0))(
  ( (Nil!1097) (Cons!1096 (h!1673 tuple2!1520) (t!3999 List!1100)) )
))
(declare-datatypes ((ListLongMap!1101 0))(
  ( (ListLongMap!1102 (toList!566 List!1100)) )
))
(declare-fun lt!16510 () ListLongMap!1101)

(assert (=> b!41558 (= res!24697 (= lt!16510 (ListLongMap!1102 Nil!1097)))))

(declare-fun lt!16508 () V!2139)

(declare-datatypes ((array!2651 0))(
  ( (array!2652 (arr!1269 (Array (_ BitVec 32) (_ BitVec 64))) (size!1421 (_ BitVec 32))) )
))
(declare-fun lt!16505 () array!2651)

(declare-datatypes ((ValueCell!645 0))(
  ( (ValueCellFull!645 (v!2014 V!2139)) (EmptyCell!645) )
))
(declare-datatypes ((array!2653 0))(
  ( (array!2654 (arr!1270 (Array (_ BitVec 32) ValueCell!645)) (size!1422 (_ BitVec 32))) )
))
(declare-fun lt!16509 () array!2653)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((LongMapFixedSize!270 0))(
  ( (LongMapFixedSize!271 (defaultEntry!1825 Int) (mask!5232 (_ BitVec 32)) (extraKeys!1716 (_ BitVec 32)) (zeroValue!1743 V!2139) (minValue!1743 V!2139) (_size!184 (_ BitVec 32)) (_keys!3332 array!2651) (_values!1808 array!2653) (_vacant!184 (_ BitVec 32))) )
))
(declare-fun map!718 (LongMapFixedSize!270) ListLongMap!1101)

(assert (=> b!41558 (= lt!16510 (map!718 (LongMapFixedSize!271 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16508 lt!16508 #b00000000000000000000000000000000 lt!16505 lt!16509 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1101 0))(
  ( (Nil!1098) (Cons!1097 (h!1674 (_ BitVec 64)) (t!4000 List!1101)) )
))
(declare-fun arrayNoDuplicates!0 (array!2651 (_ BitVec 32) List!1101) Bool)

(assert (=> b!41558 (arrayNoDuplicates!0 lt!16505 #b00000000000000000000000000000000 Nil!1098)))

(declare-datatypes ((Unit!1027 0))(
  ( (Unit!1028) )
))
(declare-fun lt!16506 () Unit!1027)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2651 (_ BitVec 32) (_ BitVec 32) List!1101) Unit!1027)

(assert (=> b!41558 (= lt!16506 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16505 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2651 (_ BitVec 32)) Bool)

(assert (=> b!41558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16505 mask!853)))

(declare-fun lt!16504 () Unit!1027)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2651 (_ BitVec 32) (_ BitVec 32)) Unit!1027)

(assert (=> b!41558 (= lt!16504 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16505 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2651 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41558 (= (arrayCountValidKeys!0 lt!16505 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16503 () Unit!1027)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2651 (_ BitVec 32) (_ BitVec 32)) Unit!1027)

(assert (=> b!41558 (= lt!16503 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16505 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41558 (= lt!16509 (array!2654 ((as const (Array (_ BitVec 32) ValueCell!645)) EmptyCell!645) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41558 (= lt!16505 (array!2652 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!206 (Int (_ BitVec 64)) V!2139)

(assert (=> b!41558 (= lt!16508 (dynLambda!206 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41559 () Bool)

(declare-fun res!24694 () Bool)

(assert (=> b!41559 (=> res!24694 e!26309)))

(declare-fun isEmpty!251 (List!1100) Bool)

(assert (=> b!41559 (= res!24694 (isEmpty!251 (toList!566 lt!16510)))))

(declare-fun b!41561 () Bool)

(assert (=> b!41561 (= e!26309 true)))

(declare-fun lt!16507 () Bool)

(declare-fun contains!532 (ListLongMap!1101 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!324 (array!2651 array!2653 (_ BitVec 32) (_ BitVec 32) V!2139 V!2139 (_ BitVec 32) Int) ListLongMap!1101)

(declare-fun head!861 (List!1100) tuple2!1520)

(assert (=> b!41561 (= lt!16507 (contains!532 (getCurrentListMap!324 lt!16505 lt!16509 mask!853 #b00000000000000000000000000000000 lt!16508 lt!16508 #b00000000000000000000000000000000 defaultEntry!470) (_1!770 (head!861 (toList!566 lt!16510)))))))

(declare-fun res!24696 () Bool)

(assert (=> start!5922 (=> (not res!24696) (not e!26310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5922 (= res!24696 (validMask!0 mask!853))))

(assert (=> start!5922 e!26310))

(assert (=> start!5922 true))

(assert (=> start!5922 tp!5780))

(assert (= (and start!5922 res!24696) b!41558))

(assert (= (and b!41558 (not res!24697)) b!41559))

(assert (= (and b!41559 (not res!24694)) b!41560))

(assert (= (and b!41560 (not res!24695)) b!41561))

(declare-fun b_lambda!2139 () Bool)

(assert (=> (not b_lambda!2139) (not b!41558)))

(declare-fun t!3998 () Bool)

(declare-fun tb!885 () Bool)

(assert (=> (and start!5922 (= defaultEntry!470 defaultEntry!470) t!3998) tb!885))

(declare-fun result!1513 () Bool)

(declare-fun tp_is_empty!1785 () Bool)

(assert (=> tb!885 (= result!1513 tp_is_empty!1785)))

(assert (=> b!41558 t!3998))

(declare-fun b_and!2451 () Bool)

(assert (= b_and!2449 (and (=> t!3998 result!1513) b_and!2451)))

(declare-fun m!34903 () Bool)

(assert (=> b!41558 m!34903))

(declare-fun m!34905 () Bool)

(assert (=> b!41558 m!34905))

(declare-fun m!34907 () Bool)

(assert (=> b!41558 m!34907))

(declare-fun m!34909 () Bool)

(assert (=> b!41558 m!34909))

(declare-fun m!34911 () Bool)

(assert (=> b!41558 m!34911))

(declare-fun m!34913 () Bool)

(assert (=> b!41558 m!34913))

(declare-fun m!34915 () Bool)

(assert (=> b!41558 m!34915))

(declare-fun m!34917 () Bool)

(assert (=> b!41558 m!34917))

(declare-fun m!34919 () Bool)

(assert (=> b!41559 m!34919))

(declare-fun m!34921 () Bool)

(assert (=> b!41561 m!34921))

(declare-fun m!34923 () Bool)

(assert (=> b!41561 m!34923))

(assert (=> b!41561 m!34921))

(declare-fun m!34925 () Bool)

(assert (=> b!41561 m!34925))

(declare-fun m!34927 () Bool)

(assert (=> start!5922 m!34927))

(check-sat (not b!41559) (not b!41558) (not start!5922) (not b_lambda!2139) (not b!41561) tp_is_empty!1785 (not b_next!1395) b_and!2451)
(check-sat b_and!2451 (not b_next!1395))
