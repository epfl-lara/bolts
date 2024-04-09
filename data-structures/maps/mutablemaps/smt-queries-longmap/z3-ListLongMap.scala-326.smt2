; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5946 () Bool)

(assert start!5946)

(declare-fun b_free!1419 () Bool)

(declare-fun b_next!1419 () Bool)

(assert (=> start!5946 (= b_free!1419 (not b_next!1419))))

(declare-fun tp!5816 () Bool)

(declare-fun b_and!2497 () Bool)

(assert (=> start!5946 (= tp!5816 b_and!2497)))

(declare-fun b!41728 () Bool)

(declare-fun res!24839 () Bool)

(declare-fun e!26382 () Bool)

(assert (=> b!41728 (=> res!24839 e!26382)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!41728 (= res!24839 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun res!24840 () Bool)

(declare-fun e!26381 () Bool)

(assert (=> start!5946 (=> (not res!24840) (not e!26381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5946 (= res!24840 (validMask!0 mask!853))))

(assert (=> start!5946 e!26381))

(assert (=> start!5946 true))

(assert (=> start!5946 tp!5816))

(declare-fun b!41726 () Bool)

(assert (=> b!41726 (= e!26381 (not e!26382))))

(declare-fun res!24841 () Bool)

(assert (=> b!41726 (=> res!24841 e!26382)))

(declare-datatypes ((V!2171 0))(
  ( (V!2172 (val!943 Int)) )
))
(declare-datatypes ((tuple2!1544 0))(
  ( (tuple2!1545 (_1!782 (_ BitVec 64)) (_2!782 V!2171)) )
))
(declare-datatypes ((List!1124 0))(
  ( (Nil!1121) (Cons!1120 (h!1697 tuple2!1544) (t!4047 List!1124)) )
))
(declare-datatypes ((ListLongMap!1125 0))(
  ( (ListLongMap!1126 (toList!578 List!1124)) )
))
(declare-fun lt!16797 () ListLongMap!1125)

(assert (=> b!41726 (= res!24841 (= lt!16797 (ListLongMap!1126 Nil!1121)))))

(declare-datatypes ((ValueCell!657 0))(
  ( (ValueCellFull!657 (v!2026 V!2171)) (EmptyCell!657) )
))
(declare-datatypes ((array!2699 0))(
  ( (array!2700 (arr!1293 (Array (_ BitVec 32) ValueCell!657)) (size!1445 (_ BitVec 32))) )
))
(declare-fun lt!16796 () array!2699)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2701 0))(
  ( (array!2702 (arr!1294 (Array (_ BitVec 32) (_ BitVec 64))) (size!1446 (_ BitVec 32))) )
))
(declare-fun lt!16793 () array!2701)

(declare-fun lt!16791 () V!2171)

(declare-datatypes ((LongMapFixedSize!294 0))(
  ( (LongMapFixedSize!295 (defaultEntry!1837 Int) (mask!5252 (_ BitVec 32)) (extraKeys!1728 (_ BitVec 32)) (zeroValue!1755 V!2171) (minValue!1755 V!2171) (_size!196 (_ BitVec 32)) (_keys!3344 array!2701) (_values!1820 array!2699) (_vacant!196 (_ BitVec 32))) )
))
(declare-fun map!738 (LongMapFixedSize!294) ListLongMap!1125)

(assert (=> b!41726 (= lt!16797 (map!738 (LongMapFixedSize!295 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16791 lt!16791 #b00000000000000000000000000000000 lt!16793 lt!16796 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1125 0))(
  ( (Nil!1122) (Cons!1121 (h!1698 (_ BitVec 64)) (t!4048 List!1125)) )
))
(declare-fun arrayNoDuplicates!0 (array!2701 (_ BitVec 32) List!1125) Bool)

(assert (=> b!41726 (arrayNoDuplicates!0 lt!16793 #b00000000000000000000000000000000 Nil!1122)))

(declare-datatypes ((Unit!1051 0))(
  ( (Unit!1052) )
))
(declare-fun lt!16792 () Unit!1051)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2701 (_ BitVec 32) (_ BitVec 32) List!1125) Unit!1051)

(assert (=> b!41726 (= lt!16792 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16793 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1122))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2701 (_ BitVec 32)) Bool)

(assert (=> b!41726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16793 mask!853)))

(declare-fun lt!16795 () Unit!1051)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2701 (_ BitVec 32) (_ BitVec 32)) Unit!1051)

(assert (=> b!41726 (= lt!16795 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16793 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2701 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41726 (= (arrayCountValidKeys!0 lt!16793 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16798 () Unit!1051)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2701 (_ BitVec 32) (_ BitVec 32)) Unit!1051)

(assert (=> b!41726 (= lt!16798 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16793 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41726 (= lt!16796 (array!2700 ((as const (Array (_ BitVec 32) ValueCell!657)) EmptyCell!657) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41726 (= lt!16793 (array!2702 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!218 (Int (_ BitVec 64)) V!2171)

(assert (=> b!41726 (= lt!16791 (dynLambda!218 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41729 () Bool)

(assert (=> b!41729 (= e!26382 true)))

(declare-fun lt!16794 () Bool)

(declare-fun contains!544 (ListLongMap!1125 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!336 (array!2701 array!2699 (_ BitVec 32) (_ BitVec 32) V!2171 V!2171 (_ BitVec 32) Int) ListLongMap!1125)

(declare-fun head!873 (List!1124) tuple2!1544)

(assert (=> b!41729 (= lt!16794 (contains!544 (getCurrentListMap!336 lt!16793 lt!16796 mask!853 #b00000000000000000000000000000000 lt!16791 lt!16791 #b00000000000000000000000000000000 defaultEntry!470) (_1!782 (head!873 (toList!578 lt!16797)))))))

(declare-fun b!41727 () Bool)

(declare-fun res!24838 () Bool)

(assert (=> b!41727 (=> res!24838 e!26382)))

(declare-fun isEmpty!263 (List!1124) Bool)

(assert (=> b!41727 (= res!24838 (isEmpty!263 (toList!578 lt!16797)))))

(assert (= (and start!5946 res!24840) b!41726))

(assert (= (and b!41726 (not res!24841)) b!41727))

(assert (= (and b!41727 (not res!24838)) b!41728))

(assert (= (and b!41728 (not res!24839)) b!41729))

(declare-fun b_lambda!2163 () Bool)

(assert (=> (not b_lambda!2163) (not b!41726)))

(declare-fun t!4046 () Bool)

(declare-fun tb!909 () Bool)

(assert (=> (and start!5946 (= defaultEntry!470 defaultEntry!470) t!4046) tb!909))

(declare-fun result!1561 () Bool)

(declare-fun tp_is_empty!1809 () Bool)

(assert (=> tb!909 (= result!1561 tp_is_empty!1809)))

(assert (=> b!41726 t!4046))

(declare-fun b_and!2499 () Bool)

(assert (= b_and!2497 (and (=> t!4046 result!1561) b_and!2499)))

(declare-fun m!35215 () Bool)

(assert (=> start!5946 m!35215))

(declare-fun m!35217 () Bool)

(assert (=> b!41726 m!35217))

(declare-fun m!35219 () Bool)

(assert (=> b!41726 m!35219))

(declare-fun m!35221 () Bool)

(assert (=> b!41726 m!35221))

(declare-fun m!35223 () Bool)

(assert (=> b!41726 m!35223))

(declare-fun m!35225 () Bool)

(assert (=> b!41726 m!35225))

(declare-fun m!35227 () Bool)

(assert (=> b!41726 m!35227))

(declare-fun m!35229 () Bool)

(assert (=> b!41726 m!35229))

(declare-fun m!35231 () Bool)

(assert (=> b!41726 m!35231))

(declare-fun m!35233 () Bool)

(assert (=> b!41729 m!35233))

(declare-fun m!35235 () Bool)

(assert (=> b!41729 m!35235))

(assert (=> b!41729 m!35233))

(declare-fun m!35237 () Bool)

(assert (=> b!41729 m!35237))

(declare-fun m!35239 () Bool)

(assert (=> b!41727 m!35239))

(check-sat (not b!41729) b_and!2499 tp_is_empty!1809 (not b!41727) (not b_lambda!2163) (not b!41726) (not b_next!1419) (not start!5946))
(check-sat b_and!2499 (not b_next!1419))
