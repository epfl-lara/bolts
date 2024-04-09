; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5924 () Bool)

(assert start!5924)

(declare-fun b_free!1397 () Bool)

(declare-fun b_next!1397 () Bool)

(assert (=> start!5924 (= b_free!1397 (not b_next!1397))))

(declare-fun tp!5783 () Bool)

(declare-fun b_and!2453 () Bool)

(assert (=> start!5924 (= tp!5783 b_and!2453)))

(declare-fun res!24707 () Bool)

(declare-fun e!26316 () Bool)

(assert (=> start!5924 (=> (not res!24707) (not e!26316))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5924 (= res!24707 (validMask!0 mask!853))))

(assert (=> start!5924 e!26316))

(assert (=> start!5924 true))

(assert (=> start!5924 tp!5783))

(declare-fun b!41574 () Bool)

(declare-fun res!24706 () Bool)

(declare-fun e!26315 () Bool)

(assert (=> b!41574 (=> res!24706 e!26315)))

(assert (=> b!41574 (= res!24706 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41575 () Bool)

(assert (=> b!41575 (= e!26315 true)))

(declare-fun lt!16530 () Bool)

(declare-datatypes ((V!2141 0))(
  ( (V!2142 (val!932 Int)) )
))
(declare-datatypes ((ValueCell!646 0))(
  ( (ValueCellFull!646 (v!2015 V!2141)) (EmptyCell!646) )
))
(declare-datatypes ((array!2655 0))(
  ( (array!2656 (arr!1271 (Array (_ BitVec 32) ValueCell!646)) (size!1423 (_ BitVec 32))) )
))
(declare-fun lt!16534 () array!2655)

(declare-datatypes ((array!2657 0))(
  ( (array!2658 (arr!1272 (Array (_ BitVec 32) (_ BitVec 64))) (size!1424 (_ BitVec 32))) )
))
(declare-fun lt!16533 () array!2657)

(declare-fun lt!16531 () V!2141)

(declare-datatypes ((tuple2!1522 0))(
  ( (tuple2!1523 (_1!771 (_ BitVec 64)) (_2!771 V!2141)) )
))
(declare-datatypes ((List!1102 0))(
  ( (Nil!1099) (Cons!1098 (h!1675 tuple2!1522) (t!4003 List!1102)) )
))
(declare-datatypes ((ListLongMap!1103 0))(
  ( (ListLongMap!1104 (toList!567 List!1102)) )
))
(declare-fun lt!16528 () ListLongMap!1103)

(declare-fun defaultEntry!470 () Int)

(declare-fun contains!533 (ListLongMap!1103 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!325 (array!2657 array!2655 (_ BitVec 32) (_ BitVec 32) V!2141 V!2141 (_ BitVec 32) Int) ListLongMap!1103)

(declare-fun head!862 (List!1102) tuple2!1522)

(assert (=> b!41575 (= lt!16530 (contains!533 (getCurrentListMap!325 lt!16533 lt!16534 mask!853 #b00000000000000000000000000000000 lt!16531 lt!16531 #b00000000000000000000000000000000 defaultEntry!470) (_1!771 (head!862 (toList!567 lt!16528)))))))

(declare-fun b!41573 () Bool)

(declare-fun res!24708 () Bool)

(assert (=> b!41573 (=> res!24708 e!26315)))

(declare-fun isEmpty!252 (List!1102) Bool)

(assert (=> b!41573 (= res!24708 (isEmpty!252 (toList!567 lt!16528)))))

(declare-fun b!41572 () Bool)

(assert (=> b!41572 (= e!26316 (not e!26315))))

(declare-fun res!24709 () Bool)

(assert (=> b!41572 (=> res!24709 e!26315)))

(assert (=> b!41572 (= res!24709 (= lt!16528 (ListLongMap!1104 Nil!1099)))))

(declare-datatypes ((LongMapFixedSize!272 0))(
  ( (LongMapFixedSize!273 (defaultEntry!1826 Int) (mask!5233 (_ BitVec 32)) (extraKeys!1717 (_ BitVec 32)) (zeroValue!1744 V!2141) (minValue!1744 V!2141) (_size!185 (_ BitVec 32)) (_keys!3333 array!2657) (_values!1809 array!2655) (_vacant!185 (_ BitVec 32))) )
))
(declare-fun map!719 (LongMapFixedSize!272) ListLongMap!1103)

(assert (=> b!41572 (= lt!16528 (map!719 (LongMapFixedSize!273 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16531 lt!16531 #b00000000000000000000000000000000 lt!16533 lt!16534 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1103 0))(
  ( (Nil!1100) (Cons!1099 (h!1676 (_ BitVec 64)) (t!4004 List!1103)) )
))
(declare-fun arrayNoDuplicates!0 (array!2657 (_ BitVec 32) List!1103) Bool)

(assert (=> b!41572 (arrayNoDuplicates!0 lt!16533 #b00000000000000000000000000000000 Nil!1100)))

(declare-datatypes ((Unit!1029 0))(
  ( (Unit!1030) )
))
(declare-fun lt!16527 () Unit!1029)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2657 (_ BitVec 32) (_ BitVec 32) List!1103) Unit!1029)

(assert (=> b!41572 (= lt!16527 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16533 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1100))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2657 (_ BitVec 32)) Bool)

(assert (=> b!41572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16533 mask!853)))

(declare-fun lt!16532 () Unit!1029)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2657 (_ BitVec 32) (_ BitVec 32)) Unit!1029)

(assert (=> b!41572 (= lt!16532 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16533 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2657 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41572 (= (arrayCountValidKeys!0 lt!16533 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16529 () Unit!1029)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2657 (_ BitVec 32) (_ BitVec 32)) Unit!1029)

(assert (=> b!41572 (= lt!16529 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16533 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41572 (= lt!16534 (array!2656 ((as const (Array (_ BitVec 32) ValueCell!646)) EmptyCell!646) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41572 (= lt!16533 (array!2658 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!207 (Int (_ BitVec 64)) V!2141)

(assert (=> b!41572 (= lt!16531 (dynLambda!207 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5924 res!24707) b!41572))

(assert (= (and b!41572 (not res!24709)) b!41573))

(assert (= (and b!41573 (not res!24708)) b!41574))

(assert (= (and b!41574 (not res!24706)) b!41575))

(declare-fun b_lambda!2141 () Bool)

(assert (=> (not b_lambda!2141) (not b!41572)))

(declare-fun t!4002 () Bool)

(declare-fun tb!887 () Bool)

(assert (=> (and start!5924 (= defaultEntry!470 defaultEntry!470) t!4002) tb!887))

(declare-fun result!1517 () Bool)

(declare-fun tp_is_empty!1787 () Bool)

(assert (=> tb!887 (= result!1517 tp_is_empty!1787)))

(assert (=> b!41572 t!4002))

(declare-fun b_and!2455 () Bool)

(assert (= b_and!2453 (and (=> t!4002 result!1517) b_and!2455)))

(declare-fun m!34929 () Bool)

(assert (=> start!5924 m!34929))

(declare-fun m!34931 () Bool)

(assert (=> b!41575 m!34931))

(declare-fun m!34933 () Bool)

(assert (=> b!41575 m!34933))

(assert (=> b!41575 m!34931))

(declare-fun m!34935 () Bool)

(assert (=> b!41575 m!34935))

(declare-fun m!34937 () Bool)

(assert (=> b!41573 m!34937))

(declare-fun m!34939 () Bool)

(assert (=> b!41572 m!34939))

(declare-fun m!34941 () Bool)

(assert (=> b!41572 m!34941))

(declare-fun m!34943 () Bool)

(assert (=> b!41572 m!34943))

(declare-fun m!34945 () Bool)

(assert (=> b!41572 m!34945))

(declare-fun m!34947 () Bool)

(assert (=> b!41572 m!34947))

(declare-fun m!34949 () Bool)

(assert (=> b!41572 m!34949))

(declare-fun m!34951 () Bool)

(assert (=> b!41572 m!34951))

(declare-fun m!34953 () Bool)

(assert (=> b!41572 m!34953))

(push 1)

(assert (not b!41572))

(assert (not b!41573))

(assert (not b!41575))

(assert (not b_lambda!2141))

(assert (not start!5924))

(assert (not b_next!1397))

(assert tp_is_empty!1787)

(assert b_and!2455)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2455)

(assert (not b_next!1397))

(check-sat)

