; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5934 () Bool)

(assert start!5934)

(declare-fun b_free!1407 () Bool)

(declare-fun b_next!1407 () Bool)

(assert (=> start!5934 (= b_free!1407 (not b_next!1407))))

(declare-fun tp!5798 () Bool)

(declare-fun b_and!2473 () Bool)

(assert (=> start!5934 (= tp!5798 b_and!2473)))

(declare-fun b!41644 () Bool)

(declare-fun res!24766 () Bool)

(declare-fun e!26345 () Bool)

(assert (=> b!41644 (=> res!24766 e!26345)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!41644 (= res!24766 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun res!24768 () Bool)

(declare-fun e!26346 () Bool)

(assert (=> start!5934 (=> (not res!24768) (not e!26346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5934 (= res!24768 (validMask!0 mask!853))))

(assert (=> start!5934 e!26346))

(assert (=> start!5934 true))

(assert (=> start!5934 tp!5798))

(declare-fun b!41645 () Bool)

(assert (=> b!41645 (= e!26345 true)))

(declare-fun lt!16654 () Bool)

(declare-datatypes ((array!2675 0))(
  ( (array!2676 (arr!1281 (Array (_ BitVec 32) (_ BitVec 64))) (size!1433 (_ BitVec 32))) )
))
(declare-fun lt!16649 () array!2675)

(declare-datatypes ((V!2155 0))(
  ( (V!2156 (val!937 Int)) )
))
(declare-datatypes ((tuple2!1532 0))(
  ( (tuple2!1533 (_1!776 (_ BitVec 64)) (_2!776 V!2155)) )
))
(declare-datatypes ((List!1112 0))(
  ( (Nil!1109) (Cons!1108 (h!1685 tuple2!1532) (t!4023 List!1112)) )
))
(declare-datatypes ((ListLongMap!1113 0))(
  ( (ListLongMap!1114 (toList!572 List!1112)) )
))
(declare-fun lt!16647 () ListLongMap!1113)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!651 0))(
  ( (ValueCellFull!651 (v!2020 V!2155)) (EmptyCell!651) )
))
(declare-datatypes ((array!2677 0))(
  ( (array!2678 (arr!1282 (Array (_ BitVec 32) ValueCell!651)) (size!1434 (_ BitVec 32))) )
))
(declare-fun lt!16651 () array!2677)

(declare-fun lt!16648 () V!2155)

(declare-fun contains!538 (ListLongMap!1113 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!330 (array!2675 array!2677 (_ BitVec 32) (_ BitVec 32) V!2155 V!2155 (_ BitVec 32) Int) ListLongMap!1113)

(declare-fun head!867 (List!1112) tuple2!1532)

(assert (=> b!41645 (= lt!16654 (contains!538 (getCurrentListMap!330 lt!16649 lt!16651 mask!853 #b00000000000000000000000000000000 lt!16648 lt!16648 #b00000000000000000000000000000000 defaultEntry!470) (_1!776 (head!867 (toList!572 lt!16647)))))))

(declare-fun b!41642 () Bool)

(assert (=> b!41642 (= e!26346 (not e!26345))))

(declare-fun res!24767 () Bool)

(assert (=> b!41642 (=> res!24767 e!26345)))

(assert (=> b!41642 (= res!24767 (= lt!16647 (ListLongMap!1114 Nil!1109)))))

(declare-datatypes ((LongMapFixedSize!282 0))(
  ( (LongMapFixedSize!283 (defaultEntry!1831 Int) (mask!5242 (_ BitVec 32)) (extraKeys!1722 (_ BitVec 32)) (zeroValue!1749 V!2155) (minValue!1749 V!2155) (_size!190 (_ BitVec 32)) (_keys!3338 array!2675) (_values!1814 array!2677) (_vacant!190 (_ BitVec 32))) )
))
(declare-fun map!728 (LongMapFixedSize!282) ListLongMap!1113)

(assert (=> b!41642 (= lt!16647 (map!728 (LongMapFixedSize!283 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16648 lt!16648 #b00000000000000000000000000000000 lt!16649 lt!16651 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1113 0))(
  ( (Nil!1110) (Cons!1109 (h!1686 (_ BitVec 64)) (t!4024 List!1113)) )
))
(declare-fun arrayNoDuplicates!0 (array!2675 (_ BitVec 32) List!1113) Bool)

(assert (=> b!41642 (arrayNoDuplicates!0 lt!16649 #b00000000000000000000000000000000 Nil!1110)))

(declare-datatypes ((Unit!1039 0))(
  ( (Unit!1040) )
))
(declare-fun lt!16650 () Unit!1039)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2675 (_ BitVec 32) (_ BitVec 32) List!1113) Unit!1039)

(assert (=> b!41642 (= lt!16650 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16649 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2675 (_ BitVec 32)) Bool)

(assert (=> b!41642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16649 mask!853)))

(declare-fun lt!16652 () Unit!1039)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2675 (_ BitVec 32) (_ BitVec 32)) Unit!1039)

(assert (=> b!41642 (= lt!16652 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16649 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2675 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41642 (= (arrayCountValidKeys!0 lt!16649 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16653 () Unit!1039)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2675 (_ BitVec 32) (_ BitVec 32)) Unit!1039)

(assert (=> b!41642 (= lt!16653 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16649 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41642 (= lt!16651 (array!2678 ((as const (Array (_ BitVec 32) ValueCell!651)) EmptyCell!651) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41642 (= lt!16649 (array!2676 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!212 (Int (_ BitVec 64)) V!2155)

(assert (=> b!41642 (= lt!16648 (dynLambda!212 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41643 () Bool)

(declare-fun res!24769 () Bool)

(assert (=> b!41643 (=> res!24769 e!26345)))

(declare-fun isEmpty!257 (List!1112) Bool)

(assert (=> b!41643 (= res!24769 (isEmpty!257 (toList!572 lt!16647)))))

(assert (= (and start!5934 res!24768) b!41642))

(assert (= (and b!41642 (not res!24767)) b!41643))

(assert (= (and b!41643 (not res!24769)) b!41644))

(assert (= (and b!41644 (not res!24766)) b!41645))

(declare-fun b_lambda!2151 () Bool)

(assert (=> (not b_lambda!2151) (not b!41642)))

(declare-fun t!4022 () Bool)

(declare-fun tb!897 () Bool)

(assert (=> (and start!5934 (= defaultEntry!470 defaultEntry!470) t!4022) tb!897))

(declare-fun result!1537 () Bool)

(declare-fun tp_is_empty!1797 () Bool)

(assert (=> tb!897 (= result!1537 tp_is_empty!1797)))

(assert (=> b!41642 t!4022))

(declare-fun b_and!2475 () Bool)

(assert (= b_and!2473 (and (=> t!4022 result!1537) b_and!2475)))

(declare-fun m!35059 () Bool)

(assert (=> start!5934 m!35059))

(declare-fun m!35061 () Bool)

(assert (=> b!41645 m!35061))

(declare-fun m!35063 () Bool)

(assert (=> b!41645 m!35063))

(assert (=> b!41645 m!35061))

(declare-fun m!35065 () Bool)

(assert (=> b!41645 m!35065))

(declare-fun m!35067 () Bool)

(assert (=> b!41642 m!35067))

(declare-fun m!35069 () Bool)

(assert (=> b!41642 m!35069))

(declare-fun m!35071 () Bool)

(assert (=> b!41642 m!35071))

(declare-fun m!35073 () Bool)

(assert (=> b!41642 m!35073))

(declare-fun m!35075 () Bool)

(assert (=> b!41642 m!35075))

(declare-fun m!35077 () Bool)

(assert (=> b!41642 m!35077))

(declare-fun m!35079 () Bool)

(assert (=> b!41642 m!35079))

(declare-fun m!35081 () Bool)

(assert (=> b!41642 m!35081))

(declare-fun m!35083 () Bool)

(assert (=> b!41643 m!35083))

(check-sat (not b!41642) tp_is_empty!1797 (not b!41645) (not b_next!1407) (not start!5934) (not b!41643) b_and!2475 (not b_lambda!2151))
(check-sat b_and!2475 (not b_next!1407))
