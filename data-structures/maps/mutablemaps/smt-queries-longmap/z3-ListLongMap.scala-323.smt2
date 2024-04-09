; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5928 () Bool)

(assert start!5928)

(declare-fun b_free!1401 () Bool)

(declare-fun b_next!1401 () Bool)

(assert (=> start!5928 (= b_free!1401 (not b_next!1401))))

(declare-fun tp!5789 () Bool)

(declare-fun b_and!2461 () Bool)

(assert (=> start!5928 (= tp!5789 b_and!2461)))

(declare-fun b!41601 () Bool)

(declare-fun res!24730 () Bool)

(declare-fun e!26328 () Bool)

(assert (=> b!41601 (=> res!24730 e!26328)))

(declare-datatypes ((V!2147 0))(
  ( (V!2148 (val!934 Int)) )
))
(declare-datatypes ((tuple2!1526 0))(
  ( (tuple2!1527 (_1!773 (_ BitVec 64)) (_2!773 V!2147)) )
))
(declare-datatypes ((List!1106 0))(
  ( (Nil!1103) (Cons!1102 (h!1679 tuple2!1526) (t!4011 List!1106)) )
))
(declare-datatypes ((ListLongMap!1107 0))(
  ( (ListLongMap!1108 (toList!569 List!1106)) )
))
(declare-fun lt!16582 () ListLongMap!1107)

(declare-fun isEmpty!254 (List!1106) Bool)

(assert (=> b!41601 (= res!24730 (isEmpty!254 (toList!569 lt!16582)))))

(declare-fun b!41602 () Bool)

(declare-fun res!24731 () Bool)

(assert (=> b!41602 (=> res!24731 e!26328)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!41602 (= res!24731 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41600 () Bool)

(declare-fun e!26327 () Bool)

(assert (=> b!41600 (= e!26327 (not e!26328))))

(declare-fun res!24733 () Bool)

(assert (=> b!41600 (=> res!24733 e!26328)))

(assert (=> b!41600 (= res!24733 (= lt!16582 (ListLongMap!1108 Nil!1103)))))

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2663 0))(
  ( (array!2664 (arr!1275 (Array (_ BitVec 32) (_ BitVec 64))) (size!1427 (_ BitVec 32))) )
))
(declare-fun lt!16578 () array!2663)

(declare-datatypes ((ValueCell!648 0))(
  ( (ValueCellFull!648 (v!2017 V!2147)) (EmptyCell!648) )
))
(declare-datatypes ((array!2665 0))(
  ( (array!2666 (arr!1276 (Array (_ BitVec 32) ValueCell!648)) (size!1428 (_ BitVec 32))) )
))
(declare-fun lt!16580 () array!2665)

(declare-fun lt!16577 () V!2147)

(declare-datatypes ((LongMapFixedSize!276 0))(
  ( (LongMapFixedSize!277 (defaultEntry!1828 Int) (mask!5237 (_ BitVec 32)) (extraKeys!1719 (_ BitVec 32)) (zeroValue!1746 V!2147) (minValue!1746 V!2147) (_size!187 (_ BitVec 32)) (_keys!3335 array!2663) (_values!1811 array!2665) (_vacant!187 (_ BitVec 32))) )
))
(declare-fun map!723 (LongMapFixedSize!276) ListLongMap!1107)

(assert (=> b!41600 (= lt!16582 (map!723 (LongMapFixedSize!277 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16577 lt!16577 #b00000000000000000000000000000000 lt!16578 lt!16580 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1107 0))(
  ( (Nil!1104) (Cons!1103 (h!1680 (_ BitVec 64)) (t!4012 List!1107)) )
))
(declare-fun arrayNoDuplicates!0 (array!2663 (_ BitVec 32) List!1107) Bool)

(assert (=> b!41600 (arrayNoDuplicates!0 lt!16578 #b00000000000000000000000000000000 Nil!1104)))

(declare-datatypes ((Unit!1033 0))(
  ( (Unit!1034) )
))
(declare-fun lt!16576 () Unit!1033)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2663 (_ BitVec 32) (_ BitVec 32) List!1107) Unit!1033)

(assert (=> b!41600 (= lt!16576 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16578 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1104))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2663 (_ BitVec 32)) Bool)

(assert (=> b!41600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16578 mask!853)))

(declare-fun lt!16575 () Unit!1033)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2663 (_ BitVec 32) (_ BitVec 32)) Unit!1033)

(assert (=> b!41600 (= lt!16575 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16578 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2663 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41600 (= (arrayCountValidKeys!0 lt!16578 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16581 () Unit!1033)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2663 (_ BitVec 32) (_ BitVec 32)) Unit!1033)

(assert (=> b!41600 (= lt!16581 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16578 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41600 (= lt!16580 (array!2666 ((as const (Array (_ BitVec 32) ValueCell!648)) EmptyCell!648) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41600 (= lt!16578 (array!2664 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!209 (Int (_ BitVec 64)) V!2147)

(assert (=> b!41600 (= lt!16577 (dynLambda!209 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!24732 () Bool)

(assert (=> start!5928 (=> (not res!24732) (not e!26327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5928 (= res!24732 (validMask!0 mask!853))))

(assert (=> start!5928 e!26327))

(assert (=> start!5928 true))

(assert (=> start!5928 tp!5789))

(declare-fun b!41603 () Bool)

(assert (=> b!41603 (= e!26328 true)))

(declare-fun lt!16579 () Bool)

(declare-fun contains!535 (ListLongMap!1107 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!327 (array!2663 array!2665 (_ BitVec 32) (_ BitVec 32) V!2147 V!2147 (_ BitVec 32) Int) ListLongMap!1107)

(declare-fun head!864 (List!1106) tuple2!1526)

(assert (=> b!41603 (= lt!16579 (contains!535 (getCurrentListMap!327 lt!16578 lt!16580 mask!853 #b00000000000000000000000000000000 lt!16577 lt!16577 #b00000000000000000000000000000000 defaultEntry!470) (_1!773 (head!864 (toList!569 lt!16582)))))))

(assert (= (and start!5928 res!24732) b!41600))

(assert (= (and b!41600 (not res!24733)) b!41601))

(assert (= (and b!41601 (not res!24730)) b!41602))

(assert (= (and b!41602 (not res!24731)) b!41603))

(declare-fun b_lambda!2145 () Bool)

(assert (=> (not b_lambda!2145) (not b!41600)))

(declare-fun t!4010 () Bool)

(declare-fun tb!891 () Bool)

(assert (=> (and start!5928 (= defaultEntry!470 defaultEntry!470) t!4010) tb!891))

(declare-fun result!1525 () Bool)

(declare-fun tp_is_empty!1791 () Bool)

(assert (=> tb!891 (= result!1525 tp_is_empty!1791)))

(assert (=> b!41600 t!4010))

(declare-fun b_and!2463 () Bool)

(assert (= b_and!2461 (and (=> t!4010 result!1525) b_and!2463)))

(declare-fun m!34981 () Bool)

(assert (=> b!41601 m!34981))

(declare-fun m!34983 () Bool)

(assert (=> b!41600 m!34983))

(declare-fun m!34985 () Bool)

(assert (=> b!41600 m!34985))

(declare-fun m!34987 () Bool)

(assert (=> b!41600 m!34987))

(declare-fun m!34989 () Bool)

(assert (=> b!41600 m!34989))

(declare-fun m!34991 () Bool)

(assert (=> b!41600 m!34991))

(declare-fun m!34993 () Bool)

(assert (=> b!41600 m!34993))

(declare-fun m!34995 () Bool)

(assert (=> b!41600 m!34995))

(declare-fun m!34997 () Bool)

(assert (=> b!41600 m!34997))

(declare-fun m!34999 () Bool)

(assert (=> start!5928 m!34999))

(declare-fun m!35001 () Bool)

(assert (=> b!41603 m!35001))

(declare-fun m!35003 () Bool)

(assert (=> b!41603 m!35003))

(assert (=> b!41603 m!35001))

(declare-fun m!35005 () Bool)

(assert (=> b!41603 m!35005))

(check-sat b_and!2463 tp_is_empty!1791 (not b!41603) (not b_lambda!2145) (not b!41601) (not start!5928) (not b!41600) (not b_next!1401))
(check-sat b_and!2463 (not b_next!1401))
