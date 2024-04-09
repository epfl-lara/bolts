; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5910 () Bool)

(assert start!5910)

(declare-fun b_free!1383 () Bool)

(declare-fun b_next!1383 () Bool)

(assert (=> start!5910 (= b_free!1383 (not b_next!1383))))

(declare-fun tp!5762 () Bool)

(declare-fun b_and!2425 () Bool)

(assert (=> start!5910 (= tp!5762 b_and!2425)))

(declare-fun b!41475 () Bool)

(declare-fun res!24622 () Bool)

(declare-fun e!26273 () Bool)

(assert (=> b!41475 (=> res!24622 e!26273)))

(declare-datatypes ((V!2123 0))(
  ( (V!2124 (val!925 Int)) )
))
(declare-datatypes ((tuple2!1508 0))(
  ( (tuple2!1509 (_1!764 (_ BitVec 64)) (_2!764 V!2123)) )
))
(declare-datatypes ((List!1088 0))(
  ( (Nil!1085) (Cons!1084 (h!1661 tuple2!1508) (t!3975 List!1088)) )
))
(declare-datatypes ((ListLongMap!1089 0))(
  ( (ListLongMap!1090 (toList!560 List!1088)) )
))
(declare-fun lt!16359 () ListLongMap!1089)

(declare-fun isEmpty!245 (List!1088) Bool)

(assert (=> b!41475 (= res!24622 (isEmpty!245 (toList!560 lt!16359)))))

(declare-fun b!41477 () Bool)

(assert (=> b!41477 (= e!26273 true)))

(declare-fun lt!16363 () Bool)

(declare-datatypes ((ValueCell!639 0))(
  ( (ValueCellFull!639 (v!2008 V!2123)) (EmptyCell!639) )
))
(declare-datatypes ((array!2627 0))(
  ( (array!2628 (arr!1257 (Array (_ BitVec 32) ValueCell!639)) (size!1409 (_ BitVec 32))) )
))
(declare-fun lt!16366 () array!2627)

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun defaultEntry!470 () Int)

(declare-fun lt!16362 () V!2123)

(declare-datatypes ((array!2629 0))(
  ( (array!2630 (arr!1258 (Array (_ BitVec 32) (_ BitVec 64))) (size!1410 (_ BitVec 32))) )
))
(declare-fun lt!16365 () array!2629)

(declare-fun contains!526 (ListLongMap!1089 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!318 (array!2629 array!2627 (_ BitVec 32) (_ BitVec 32) V!2123 V!2123 (_ BitVec 32) Int) ListLongMap!1089)

(declare-fun head!855 (List!1088) tuple2!1508)

(assert (=> b!41477 (= lt!16363 (contains!526 (getCurrentListMap!318 lt!16365 lt!16366 mask!853 #b00000000000000000000000000000000 lt!16362 lt!16362 #b00000000000000000000000000000000 defaultEntry!470) (_1!764 (head!855 (toList!560 lt!16359)))))))

(declare-fun res!24625 () Bool)

(declare-fun e!26274 () Bool)

(assert (=> start!5910 (=> (not res!24625) (not e!26274))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5910 (= res!24625 (validMask!0 mask!853))))

(assert (=> start!5910 e!26274))

(assert (=> start!5910 true))

(assert (=> start!5910 tp!5762))

(declare-fun b!41476 () Bool)

(declare-fun res!24623 () Bool)

(assert (=> b!41476 (=> res!24623 e!26273)))

(assert (=> b!41476 (= res!24623 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41474 () Bool)

(assert (=> b!41474 (= e!26274 (not e!26273))))

(declare-fun res!24624 () Bool)

(assert (=> b!41474 (=> res!24624 e!26273)))

(assert (=> b!41474 (= res!24624 (= lt!16359 (ListLongMap!1090 Nil!1085)))))

(declare-datatypes ((LongMapFixedSize!258 0))(
  ( (LongMapFixedSize!259 (defaultEntry!1819 Int) (mask!5222 (_ BitVec 32)) (extraKeys!1710 (_ BitVec 32)) (zeroValue!1737 V!2123) (minValue!1737 V!2123) (_size!178 (_ BitVec 32)) (_keys!3326 array!2629) (_values!1802 array!2627) (_vacant!178 (_ BitVec 32))) )
))
(declare-fun map!708 (LongMapFixedSize!258) ListLongMap!1089)

(assert (=> b!41474 (= lt!16359 (map!708 (LongMapFixedSize!259 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16362 lt!16362 #b00000000000000000000000000000000 lt!16365 lt!16366 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1089 0))(
  ( (Nil!1086) (Cons!1085 (h!1662 (_ BitVec 64)) (t!3976 List!1089)) )
))
(declare-fun arrayNoDuplicates!0 (array!2629 (_ BitVec 32) List!1089) Bool)

(assert (=> b!41474 (arrayNoDuplicates!0 lt!16365 #b00000000000000000000000000000000 Nil!1086)))

(declare-datatypes ((Unit!1015 0))(
  ( (Unit!1016) )
))
(declare-fun lt!16364 () Unit!1015)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2629 (_ BitVec 32) (_ BitVec 32) List!1089) Unit!1015)

(assert (=> b!41474 (= lt!16364 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16365 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1086))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2629 (_ BitVec 32)) Bool)

(assert (=> b!41474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16365 mask!853)))

(declare-fun lt!16360 () Unit!1015)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2629 (_ BitVec 32) (_ BitVec 32)) Unit!1015)

(assert (=> b!41474 (= lt!16360 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16365 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2629 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41474 (= (arrayCountValidKeys!0 lt!16365 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16361 () Unit!1015)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2629 (_ BitVec 32) (_ BitVec 32)) Unit!1015)

(assert (=> b!41474 (= lt!16361 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16365 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41474 (= lt!16366 (array!2628 ((as const (Array (_ BitVec 32) ValueCell!639)) EmptyCell!639) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41474 (= lt!16365 (array!2630 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!200 (Int (_ BitVec 64)) V!2123)

(assert (=> b!41474 (= lt!16362 (dynLambda!200 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5910 res!24625) b!41474))

(assert (= (and b!41474 (not res!24624)) b!41475))

(assert (= (and b!41475 (not res!24622)) b!41476))

(assert (= (and b!41476 (not res!24623)) b!41477))

(declare-fun b_lambda!2127 () Bool)

(assert (=> (not b_lambda!2127) (not b!41474)))

(declare-fun t!3974 () Bool)

(declare-fun tb!873 () Bool)

(assert (=> (and start!5910 (= defaultEntry!470 defaultEntry!470) t!3974) tb!873))

(declare-fun result!1489 () Bool)

(declare-fun tp_is_empty!1773 () Bool)

(assert (=> tb!873 (= result!1489 tp_is_empty!1773)))

(assert (=> b!41474 t!3974))

(declare-fun b_and!2427 () Bool)

(assert (= b_and!2425 (and (=> t!3974 result!1489) b_and!2427)))

(declare-fun m!34747 () Bool)

(assert (=> b!41475 m!34747))

(declare-fun m!34749 () Bool)

(assert (=> b!41477 m!34749))

(declare-fun m!34751 () Bool)

(assert (=> b!41477 m!34751))

(assert (=> b!41477 m!34749))

(declare-fun m!34753 () Bool)

(assert (=> b!41477 m!34753))

(declare-fun m!34755 () Bool)

(assert (=> start!5910 m!34755))

(declare-fun m!34757 () Bool)

(assert (=> b!41474 m!34757))

(declare-fun m!34759 () Bool)

(assert (=> b!41474 m!34759))

(declare-fun m!34761 () Bool)

(assert (=> b!41474 m!34761))

(declare-fun m!34763 () Bool)

(assert (=> b!41474 m!34763))

(declare-fun m!34765 () Bool)

(assert (=> b!41474 m!34765))

(declare-fun m!34767 () Bool)

(assert (=> b!41474 m!34767))

(declare-fun m!34769 () Bool)

(assert (=> b!41474 m!34769))

(declare-fun m!34771 () Bool)

(assert (=> b!41474 m!34771))

(check-sat (not b_next!1383) (not b!41477) (not b!41474) (not b_lambda!2127) (not b!41475) (not start!5910) tp_is_empty!1773 b_and!2427)
(check-sat b_and!2427 (not b_next!1383))
