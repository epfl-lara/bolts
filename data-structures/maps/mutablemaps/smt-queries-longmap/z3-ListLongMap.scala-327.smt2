; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5952 () Bool)

(assert start!5952)

(declare-fun b_free!1425 () Bool)

(declare-fun b_next!1425 () Bool)

(assert (=> start!5952 (= b_free!1425 (not b_next!1425))))

(declare-fun tp!5825 () Bool)

(declare-fun b_and!2509 () Bool)

(assert (=> start!5952 (= tp!5825 b_and!2509)))

(declare-fun b!41768 () Bool)

(declare-fun e!26399 () Bool)

(declare-fun e!26400 () Bool)

(assert (=> b!41768 (= e!26399 (not e!26400))))

(declare-fun res!24874 () Bool)

(assert (=> b!41768 (=> res!24874 e!26400)))

(declare-datatypes ((V!2179 0))(
  ( (V!2180 (val!946 Int)) )
))
(declare-datatypes ((tuple2!1550 0))(
  ( (tuple2!1551 (_1!785 (_ BitVec 64)) (_2!785 V!2179)) )
))
(declare-datatypes ((List!1130 0))(
  ( (Nil!1127) (Cons!1126 (h!1703 tuple2!1550) (t!4059 List!1130)) )
))
(declare-datatypes ((ListLongMap!1131 0))(
  ( (ListLongMap!1132 (toList!581 List!1130)) )
))
(declare-fun lt!16863 () ListLongMap!1131)

(assert (=> b!41768 (= res!24874 (= lt!16863 (ListLongMap!1132 Nil!1127)))))

(declare-fun lt!16866 () V!2179)

(declare-datatypes ((ValueCell!660 0))(
  ( (ValueCellFull!660 (v!2029 V!2179)) (EmptyCell!660) )
))
(declare-datatypes ((array!2711 0))(
  ( (array!2712 (arr!1299 (Array (_ BitVec 32) ValueCell!660)) (size!1451 (_ BitVec 32))) )
))
(declare-fun lt!16869 () array!2711)

(declare-fun mask!853 () (_ BitVec 32))

(declare-datatypes ((array!2713 0))(
  ( (array!2714 (arr!1300 (Array (_ BitVec 32) (_ BitVec 64))) (size!1452 (_ BitVec 32))) )
))
(declare-fun lt!16865 () array!2713)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((LongMapFixedSize!300 0))(
  ( (LongMapFixedSize!301 (defaultEntry!1840 Int) (mask!5257 (_ BitVec 32)) (extraKeys!1731 (_ BitVec 32)) (zeroValue!1758 V!2179) (minValue!1758 V!2179) (_size!199 (_ BitVec 32)) (_keys!3347 array!2713) (_values!1823 array!2711) (_vacant!199 (_ BitVec 32))) )
))
(declare-fun map!743 (LongMapFixedSize!300) ListLongMap!1131)

(assert (=> b!41768 (= lt!16863 (map!743 (LongMapFixedSize!301 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16866 lt!16866 #b00000000000000000000000000000000 lt!16865 lt!16869 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1131 0))(
  ( (Nil!1128) (Cons!1127 (h!1704 (_ BitVec 64)) (t!4060 List!1131)) )
))
(declare-fun arrayNoDuplicates!0 (array!2713 (_ BitVec 32) List!1131) Bool)

(assert (=> b!41768 (arrayNoDuplicates!0 lt!16865 #b00000000000000000000000000000000 Nil!1128)))

(declare-datatypes ((Unit!1057 0))(
  ( (Unit!1058) )
))
(declare-fun lt!16870 () Unit!1057)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2713 (_ BitVec 32) (_ BitVec 32) List!1131) Unit!1057)

(assert (=> b!41768 (= lt!16870 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16865 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1128))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2713 (_ BitVec 32)) Bool)

(assert (=> b!41768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16865 mask!853)))

(declare-fun lt!16864 () Unit!1057)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2713 (_ BitVec 32) (_ BitVec 32)) Unit!1057)

(assert (=> b!41768 (= lt!16864 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16865 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2713 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41768 (= (arrayCountValidKeys!0 lt!16865 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16868 () Unit!1057)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2713 (_ BitVec 32) (_ BitVec 32)) Unit!1057)

(assert (=> b!41768 (= lt!16868 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16865 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41768 (= lt!16869 (array!2712 ((as const (Array (_ BitVec 32) ValueCell!660)) EmptyCell!660) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41768 (= lt!16865 (array!2714 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!221 (Int (_ BitVec 64)) V!2179)

(assert (=> b!41768 (= lt!16866 (dynLambda!221 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!24877 () Bool)

(assert (=> start!5952 (=> (not res!24877) (not e!26399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5952 (= res!24877 (validMask!0 mask!853))))

(assert (=> start!5952 e!26399))

(assert (=> start!5952 true))

(assert (=> start!5952 tp!5825))

(declare-fun b!41770 () Bool)

(declare-fun res!24875 () Bool)

(assert (=> b!41770 (=> res!24875 e!26400)))

(assert (=> b!41770 (= res!24875 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41771 () Bool)

(assert (=> b!41771 (= e!26400 true)))

(declare-fun lt!16867 () Bool)

(declare-fun contains!547 (ListLongMap!1131 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!339 (array!2713 array!2711 (_ BitVec 32) (_ BitVec 32) V!2179 V!2179 (_ BitVec 32) Int) ListLongMap!1131)

(declare-fun head!876 (List!1130) tuple2!1550)

(assert (=> b!41771 (= lt!16867 (contains!547 (getCurrentListMap!339 lt!16865 lt!16869 mask!853 #b00000000000000000000000000000000 lt!16866 lt!16866 #b00000000000000000000000000000000 defaultEntry!470) (_1!785 (head!876 (toList!581 lt!16863)))))))

(declare-fun b!41769 () Bool)

(declare-fun res!24876 () Bool)

(assert (=> b!41769 (=> res!24876 e!26400)))

(declare-fun isEmpty!266 (List!1130) Bool)

(assert (=> b!41769 (= res!24876 (isEmpty!266 (toList!581 lt!16863)))))

(assert (= (and start!5952 res!24877) b!41768))

(assert (= (and b!41768 (not res!24874)) b!41769))

(assert (= (and b!41769 (not res!24876)) b!41770))

(assert (= (and b!41770 (not res!24875)) b!41771))

(declare-fun b_lambda!2169 () Bool)

(assert (=> (not b_lambda!2169) (not b!41768)))

(declare-fun t!4058 () Bool)

(declare-fun tb!915 () Bool)

(assert (=> (and start!5952 (= defaultEntry!470 defaultEntry!470) t!4058) tb!915))

(declare-fun result!1573 () Bool)

(declare-fun tp_is_empty!1815 () Bool)

(assert (=> tb!915 (= result!1573 tp_is_empty!1815)))

(assert (=> b!41768 t!4058))

(declare-fun b_and!2511 () Bool)

(assert (= b_and!2509 (and (=> t!4058 result!1573) b_and!2511)))

(declare-fun m!35293 () Bool)

(assert (=> b!41768 m!35293))

(declare-fun m!35295 () Bool)

(assert (=> b!41768 m!35295))

(declare-fun m!35297 () Bool)

(assert (=> b!41768 m!35297))

(declare-fun m!35299 () Bool)

(assert (=> b!41768 m!35299))

(declare-fun m!35301 () Bool)

(assert (=> b!41768 m!35301))

(declare-fun m!35303 () Bool)

(assert (=> b!41768 m!35303))

(declare-fun m!35305 () Bool)

(assert (=> b!41768 m!35305))

(declare-fun m!35307 () Bool)

(assert (=> b!41768 m!35307))

(declare-fun m!35309 () Bool)

(assert (=> start!5952 m!35309))

(declare-fun m!35311 () Bool)

(assert (=> b!41771 m!35311))

(declare-fun m!35313 () Bool)

(assert (=> b!41771 m!35313))

(assert (=> b!41771 m!35311))

(declare-fun m!35315 () Bool)

(assert (=> b!41771 m!35315))

(declare-fun m!35317 () Bool)

(assert (=> b!41769 m!35317))

(check-sat (not b!41769) (not b_lambda!2169) (not start!5952) b_and!2511 (not b_next!1425) tp_is_empty!1815 (not b!41771) (not b!41768))
(check-sat b_and!2511 (not b_next!1425))
