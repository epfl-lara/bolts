; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5904 () Bool)

(assert start!5904)

(declare-fun b_free!1377 () Bool)

(declare-fun b_next!1377 () Bool)

(assert (=> start!5904 (= b_free!1377 (not b_next!1377))))

(declare-fun tp!5753 () Bool)

(declare-fun b_and!2413 () Bool)

(assert (=> start!5904 (= tp!5753 b_and!2413)))

(declare-fun b!41433 () Bool)

(declare-fun res!24587 () Bool)

(declare-fun e!26256 () Bool)

(assert (=> b!41433 (=> res!24587 e!26256)))

(declare-datatypes ((V!2115 0))(
  ( (V!2116 (val!922 Int)) )
))
(declare-datatypes ((tuple2!1502 0))(
  ( (tuple2!1503 (_1!761 (_ BitVec 64)) (_2!761 V!2115)) )
))
(declare-datatypes ((List!1082 0))(
  ( (Nil!1079) (Cons!1078 (h!1655 tuple2!1502) (t!3963 List!1082)) )
))
(declare-datatypes ((ListLongMap!1083 0))(
  ( (ListLongMap!1084 (toList!557 List!1082)) )
))
(declare-fun lt!16290 () ListLongMap!1083)

(declare-fun isEmpty!242 (List!1082) Bool)

(assert (=> b!41433 (= res!24587 (isEmpty!242 (toList!557 lt!16290)))))

(declare-fun b!41434 () Bool)

(declare-fun res!24588 () Bool)

(assert (=> b!41434 (=> res!24588 e!26256)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!41434 (= res!24588 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41435 () Bool)

(assert (=> b!41435 (= e!26256 true)))

(declare-fun lt!16292 () Bool)

(declare-datatypes ((ValueCell!636 0))(
  ( (ValueCellFull!636 (v!2005 V!2115)) (EmptyCell!636) )
))
(declare-datatypes ((array!2615 0))(
  ( (array!2616 (arr!1251 (Array (_ BitVec 32) ValueCell!636)) (size!1403 (_ BitVec 32))) )
))
(declare-fun lt!16291 () array!2615)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2617 0))(
  ( (array!2618 (arr!1252 (Array (_ BitVec 32) (_ BitVec 64))) (size!1404 (_ BitVec 32))) )
))
(declare-fun lt!16293 () array!2617)

(declare-fun lt!16287 () V!2115)

(declare-fun contains!523 (ListLongMap!1083 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!315 (array!2617 array!2615 (_ BitVec 32) (_ BitVec 32) V!2115 V!2115 (_ BitVec 32) Int) ListLongMap!1083)

(declare-fun head!852 (List!1082) tuple2!1502)

(assert (=> b!41435 (= lt!16292 (contains!523 (getCurrentListMap!315 lt!16293 lt!16291 mask!853 #b00000000000000000000000000000000 lt!16287 lt!16287 #b00000000000000000000000000000000 defaultEntry!470) (_1!761 (head!852 (toList!557 lt!16290)))))))

(declare-fun res!24589 () Bool)

(declare-fun e!26255 () Bool)

(assert (=> start!5904 (=> (not res!24589) (not e!26255))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5904 (= res!24589 (validMask!0 mask!853))))

(assert (=> start!5904 e!26255))

(assert (=> start!5904 true))

(assert (=> start!5904 tp!5753))

(declare-fun b!41432 () Bool)

(assert (=> b!41432 (= e!26255 (not e!26256))))

(declare-fun res!24586 () Bool)

(assert (=> b!41432 (=> res!24586 e!26256)))

(assert (=> b!41432 (= res!24586 (= lt!16290 (ListLongMap!1084 Nil!1079)))))

(declare-datatypes ((LongMapFixedSize!252 0))(
  ( (LongMapFixedSize!253 (defaultEntry!1816 Int) (mask!5217 (_ BitVec 32)) (extraKeys!1707 (_ BitVec 32)) (zeroValue!1734 V!2115) (minValue!1734 V!2115) (_size!175 (_ BitVec 32)) (_keys!3323 array!2617) (_values!1799 array!2615) (_vacant!175 (_ BitVec 32))) )
))
(declare-fun map!703 (LongMapFixedSize!252) ListLongMap!1083)

(assert (=> b!41432 (= lt!16290 (map!703 (LongMapFixedSize!253 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16287 lt!16287 #b00000000000000000000000000000000 lt!16293 lt!16291 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1083 0))(
  ( (Nil!1080) (Cons!1079 (h!1656 (_ BitVec 64)) (t!3964 List!1083)) )
))
(declare-fun arrayNoDuplicates!0 (array!2617 (_ BitVec 32) List!1083) Bool)

(assert (=> b!41432 (arrayNoDuplicates!0 lt!16293 #b00000000000000000000000000000000 Nil!1080)))

(declare-datatypes ((Unit!1009 0))(
  ( (Unit!1010) )
))
(declare-fun lt!16294 () Unit!1009)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2617 (_ BitVec 32) (_ BitVec 32) List!1083) Unit!1009)

(assert (=> b!41432 (= lt!16294 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16293 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1080))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2617 (_ BitVec 32)) Bool)

(assert (=> b!41432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16293 mask!853)))

(declare-fun lt!16288 () Unit!1009)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2617 (_ BitVec 32) (_ BitVec 32)) Unit!1009)

(assert (=> b!41432 (= lt!16288 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16293 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2617 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41432 (= (arrayCountValidKeys!0 lt!16293 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16289 () Unit!1009)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2617 (_ BitVec 32) (_ BitVec 32)) Unit!1009)

(assert (=> b!41432 (= lt!16289 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16293 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41432 (= lt!16291 (array!2616 ((as const (Array (_ BitVec 32) ValueCell!636)) EmptyCell!636) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41432 (= lt!16293 (array!2618 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!197 (Int (_ BitVec 64)) V!2115)

(assert (=> b!41432 (= lt!16287 (dynLambda!197 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5904 res!24589) b!41432))

(assert (= (and b!41432 (not res!24586)) b!41433))

(assert (= (and b!41433 (not res!24587)) b!41434))

(assert (= (and b!41434 (not res!24588)) b!41435))

(declare-fun b_lambda!2121 () Bool)

(assert (=> (not b_lambda!2121) (not b!41432)))

(declare-fun t!3962 () Bool)

(declare-fun tb!867 () Bool)

(assert (=> (and start!5904 (= defaultEntry!470 defaultEntry!470) t!3962) tb!867))

(declare-fun result!1477 () Bool)

(declare-fun tp_is_empty!1767 () Bool)

(assert (=> tb!867 (= result!1477 tp_is_empty!1767)))

(assert (=> b!41432 t!3962))

(declare-fun b_and!2415 () Bool)

(assert (= b_and!2413 (and (=> t!3962 result!1477) b_and!2415)))

(declare-fun m!34669 () Bool)

(assert (=> b!41433 m!34669))

(declare-fun m!34671 () Bool)

(assert (=> b!41435 m!34671))

(declare-fun m!34673 () Bool)

(assert (=> b!41435 m!34673))

(assert (=> b!41435 m!34671))

(declare-fun m!34675 () Bool)

(assert (=> b!41435 m!34675))

(declare-fun m!34677 () Bool)

(assert (=> start!5904 m!34677))

(declare-fun m!34679 () Bool)

(assert (=> b!41432 m!34679))

(declare-fun m!34681 () Bool)

(assert (=> b!41432 m!34681))

(declare-fun m!34683 () Bool)

(assert (=> b!41432 m!34683))

(declare-fun m!34685 () Bool)

(assert (=> b!41432 m!34685))

(declare-fun m!34687 () Bool)

(assert (=> b!41432 m!34687))

(declare-fun m!34689 () Bool)

(assert (=> b!41432 m!34689))

(declare-fun m!34691 () Bool)

(assert (=> b!41432 m!34691))

(declare-fun m!34693 () Bool)

(assert (=> b!41432 m!34693))

(check-sat (not b!41435) (not start!5904) (not b_next!1377) (not b!41432) b_and!2415 tp_is_empty!1767 (not b_lambda!2121) (not b!41433))
(check-sat b_and!2415 (not b_next!1377))
