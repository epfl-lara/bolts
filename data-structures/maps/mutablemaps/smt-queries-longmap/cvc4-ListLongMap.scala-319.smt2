; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5906 () Bool)

(assert start!5906)

(declare-fun b_free!1379 () Bool)

(declare-fun b_next!1379 () Bool)

(assert (=> start!5906 (= b_free!1379 (not b_next!1379))))

(declare-fun tp!5756 () Bool)

(declare-fun b_and!2417 () Bool)

(assert (=> start!5906 (= tp!5756 b_and!2417)))

(declare-fun b!41446 () Bool)

(declare-fun e!26261 () Bool)

(declare-fun e!26262 () Bool)

(assert (=> b!41446 (= e!26261 (not e!26262))))

(declare-fun res!24601 () Bool)

(assert (=> b!41446 (=> res!24601 e!26262)))

(declare-datatypes ((V!2117 0))(
  ( (V!2118 (val!923 Int)) )
))
(declare-datatypes ((tuple2!1504 0))(
  ( (tuple2!1505 (_1!762 (_ BitVec 64)) (_2!762 V!2117)) )
))
(declare-datatypes ((List!1084 0))(
  ( (Nil!1081) (Cons!1080 (h!1657 tuple2!1504) (t!3967 List!1084)) )
))
(declare-datatypes ((ListLongMap!1085 0))(
  ( (ListLongMap!1086 (toList!558 List!1084)) )
))
(declare-fun lt!16316 () ListLongMap!1085)

(assert (=> b!41446 (= res!24601 (= lt!16316 (ListLongMap!1086 Nil!1081)))))

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2619 0))(
  ( (array!2620 (arr!1253 (Array (_ BitVec 32) (_ BitVec 64))) (size!1405 (_ BitVec 32))) )
))
(declare-fun lt!16314 () array!2619)

(declare-fun lt!16317 () V!2117)

(declare-datatypes ((ValueCell!637 0))(
  ( (ValueCellFull!637 (v!2006 V!2117)) (EmptyCell!637) )
))
(declare-datatypes ((array!2621 0))(
  ( (array!2622 (arr!1254 (Array (_ BitVec 32) ValueCell!637)) (size!1406 (_ BitVec 32))) )
))
(declare-fun lt!16313 () array!2621)

(declare-fun mask!853 () (_ BitVec 32))

(declare-datatypes ((LongMapFixedSize!254 0))(
  ( (LongMapFixedSize!255 (defaultEntry!1817 Int) (mask!5218 (_ BitVec 32)) (extraKeys!1708 (_ BitVec 32)) (zeroValue!1735 V!2117) (minValue!1735 V!2117) (_size!176 (_ BitVec 32)) (_keys!3324 array!2619) (_values!1800 array!2621) (_vacant!176 (_ BitVec 32))) )
))
(declare-fun map!704 (LongMapFixedSize!254) ListLongMap!1085)

(assert (=> b!41446 (= lt!16316 (map!704 (LongMapFixedSize!255 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16317 lt!16317 #b00000000000000000000000000000000 lt!16314 lt!16313 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1085 0))(
  ( (Nil!1082) (Cons!1081 (h!1658 (_ BitVec 64)) (t!3968 List!1085)) )
))
(declare-fun arrayNoDuplicates!0 (array!2619 (_ BitVec 32) List!1085) Bool)

(assert (=> b!41446 (arrayNoDuplicates!0 lt!16314 #b00000000000000000000000000000000 Nil!1082)))

(declare-datatypes ((Unit!1011 0))(
  ( (Unit!1012) )
))
(declare-fun lt!16312 () Unit!1011)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2619 (_ BitVec 32) (_ BitVec 32) List!1085) Unit!1011)

(assert (=> b!41446 (= lt!16312 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16314 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1082))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2619 (_ BitVec 32)) Bool)

(assert (=> b!41446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16314 mask!853)))

(declare-fun lt!16318 () Unit!1011)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2619 (_ BitVec 32) (_ BitVec 32)) Unit!1011)

(assert (=> b!41446 (= lt!16318 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16314 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2619 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41446 (= (arrayCountValidKeys!0 lt!16314 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16311 () Unit!1011)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2619 (_ BitVec 32) (_ BitVec 32)) Unit!1011)

(assert (=> b!41446 (= lt!16311 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16314 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41446 (= lt!16313 (array!2622 ((as const (Array (_ BitVec 32) ValueCell!637)) EmptyCell!637) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41446 (= lt!16314 (array!2620 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!198 (Int (_ BitVec 64)) V!2117)

(assert (=> b!41446 (= lt!16317 (dynLambda!198 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41448 () Bool)

(declare-fun res!24598 () Bool)

(assert (=> b!41448 (=> res!24598 e!26262)))

(assert (=> b!41448 (= res!24598 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun res!24600 () Bool)

(assert (=> start!5906 (=> (not res!24600) (not e!26261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5906 (= res!24600 (validMask!0 mask!853))))

(assert (=> start!5906 e!26261))

(assert (=> start!5906 true))

(assert (=> start!5906 tp!5756))

(declare-fun b!41447 () Bool)

(declare-fun res!24599 () Bool)

(assert (=> b!41447 (=> res!24599 e!26262)))

(declare-fun isEmpty!243 (List!1084) Bool)

(assert (=> b!41447 (= res!24599 (isEmpty!243 (toList!558 lt!16316)))))

(declare-fun b!41449 () Bool)

(assert (=> b!41449 (= e!26262 true)))

(declare-fun lt!16315 () Bool)

(declare-fun contains!524 (ListLongMap!1085 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!316 (array!2619 array!2621 (_ BitVec 32) (_ BitVec 32) V!2117 V!2117 (_ BitVec 32) Int) ListLongMap!1085)

(declare-fun head!853 (List!1084) tuple2!1504)

(assert (=> b!41449 (= lt!16315 (contains!524 (getCurrentListMap!316 lt!16314 lt!16313 mask!853 #b00000000000000000000000000000000 lt!16317 lt!16317 #b00000000000000000000000000000000 defaultEntry!470) (_1!762 (head!853 (toList!558 lt!16316)))))))

(assert (= (and start!5906 res!24600) b!41446))

(assert (= (and b!41446 (not res!24601)) b!41447))

(assert (= (and b!41447 (not res!24599)) b!41448))

(assert (= (and b!41448 (not res!24598)) b!41449))

(declare-fun b_lambda!2123 () Bool)

(assert (=> (not b_lambda!2123) (not b!41446)))

(declare-fun t!3966 () Bool)

(declare-fun tb!869 () Bool)

(assert (=> (and start!5906 (= defaultEntry!470 defaultEntry!470) t!3966) tb!869))

(declare-fun result!1481 () Bool)

(declare-fun tp_is_empty!1769 () Bool)

(assert (=> tb!869 (= result!1481 tp_is_empty!1769)))

(assert (=> b!41446 t!3966))

(declare-fun b_and!2419 () Bool)

(assert (= b_and!2417 (and (=> t!3966 result!1481) b_and!2419)))

(declare-fun m!34695 () Bool)

(assert (=> b!41446 m!34695))

(declare-fun m!34697 () Bool)

(assert (=> b!41446 m!34697))

(declare-fun m!34699 () Bool)

(assert (=> b!41446 m!34699))

(declare-fun m!34701 () Bool)

(assert (=> b!41446 m!34701))

(declare-fun m!34703 () Bool)

(assert (=> b!41446 m!34703))

(declare-fun m!34705 () Bool)

(assert (=> b!41446 m!34705))

(declare-fun m!34707 () Bool)

(assert (=> b!41446 m!34707))

(declare-fun m!34709 () Bool)

(assert (=> b!41446 m!34709))

(declare-fun m!34711 () Bool)

(assert (=> start!5906 m!34711))

(declare-fun m!34713 () Bool)

(assert (=> b!41447 m!34713))

(declare-fun m!34715 () Bool)

(assert (=> b!41449 m!34715))

(declare-fun m!34717 () Bool)

(assert (=> b!41449 m!34717))

(assert (=> b!41449 m!34715))

(declare-fun m!34719 () Bool)

(assert (=> b!41449 m!34719))

(push 1)

(assert (not b!41449))

(assert (not b_next!1379))

(assert (not b!41446))

(assert (not b_lambda!2123))

(assert tp_is_empty!1769)

(assert (not start!5906))

(assert b_and!2419)

(assert (not b!41447))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2419)

(assert (not b_next!1379))

(check-sat)

