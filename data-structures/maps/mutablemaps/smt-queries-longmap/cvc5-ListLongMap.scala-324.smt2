; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5932 () Bool)

(assert start!5932)

(declare-fun b_free!1405 () Bool)

(declare-fun b_next!1405 () Bool)

(assert (=> start!5932 (= b_free!1405 (not b_next!1405))))

(declare-fun tp!5795 () Bool)

(declare-fun b_and!2469 () Bool)

(assert (=> start!5932 (= tp!5795 b_and!2469)))

(declare-fun b!41629 () Bool)

(declare-fun res!24755 () Bool)

(declare-fun e!26339 () Bool)

(assert (=> b!41629 (=> res!24755 e!26339)))

(declare-datatypes ((V!2153 0))(
  ( (V!2154 (val!936 Int)) )
))
(declare-datatypes ((tuple2!1530 0))(
  ( (tuple2!1531 (_1!775 (_ BitVec 64)) (_2!775 V!2153)) )
))
(declare-datatypes ((List!1110 0))(
  ( (Nil!1107) (Cons!1106 (h!1683 tuple2!1530) (t!4019 List!1110)) )
))
(declare-datatypes ((ListLongMap!1111 0))(
  ( (ListLongMap!1112 (toList!571 List!1110)) )
))
(declare-fun lt!16625 () ListLongMap!1111)

(declare-fun isEmpty!256 (List!1110) Bool)

(assert (=> b!41629 (= res!24755 (isEmpty!256 (toList!571 lt!16625)))))

(declare-fun b!41630 () Bool)

(declare-fun res!24756 () Bool)

(assert (=> b!41630 (=> res!24756 e!26339)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!41630 (= res!24756 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41628 () Bool)

(declare-fun e!26340 () Bool)

(assert (=> b!41628 (= e!26340 (not e!26339))))

(declare-fun res!24754 () Bool)

(assert (=> b!41628 (=> res!24754 e!26339)))

(assert (=> b!41628 (= res!24754 (= lt!16625 (ListLongMap!1112 Nil!1107)))))

(declare-fun lt!16629 () V!2153)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2671 0))(
  ( (array!2672 (arr!1279 (Array (_ BitVec 32) (_ BitVec 64))) (size!1431 (_ BitVec 32))) )
))
(declare-fun lt!16623 () array!2671)

(declare-datatypes ((ValueCell!650 0))(
  ( (ValueCellFull!650 (v!2019 V!2153)) (EmptyCell!650) )
))
(declare-datatypes ((array!2673 0))(
  ( (array!2674 (arr!1280 (Array (_ BitVec 32) ValueCell!650)) (size!1432 (_ BitVec 32))) )
))
(declare-fun lt!16626 () array!2673)

(declare-datatypes ((LongMapFixedSize!280 0))(
  ( (LongMapFixedSize!281 (defaultEntry!1830 Int) (mask!5241 (_ BitVec 32)) (extraKeys!1721 (_ BitVec 32)) (zeroValue!1748 V!2153) (minValue!1748 V!2153) (_size!189 (_ BitVec 32)) (_keys!3337 array!2671) (_values!1813 array!2673) (_vacant!189 (_ BitVec 32))) )
))
(declare-fun map!727 (LongMapFixedSize!280) ListLongMap!1111)

(assert (=> b!41628 (= lt!16625 (map!727 (LongMapFixedSize!281 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16629 lt!16629 #b00000000000000000000000000000000 lt!16623 lt!16626 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1111 0))(
  ( (Nil!1108) (Cons!1107 (h!1684 (_ BitVec 64)) (t!4020 List!1111)) )
))
(declare-fun arrayNoDuplicates!0 (array!2671 (_ BitVec 32) List!1111) Bool)

(assert (=> b!41628 (arrayNoDuplicates!0 lt!16623 #b00000000000000000000000000000000 Nil!1108)))

(declare-datatypes ((Unit!1037 0))(
  ( (Unit!1038) )
))
(declare-fun lt!16624 () Unit!1037)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2671 (_ BitVec 32) (_ BitVec 32) List!1111) Unit!1037)

(assert (=> b!41628 (= lt!16624 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16623 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1108))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2671 (_ BitVec 32)) Bool)

(assert (=> b!41628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16623 mask!853)))

(declare-fun lt!16627 () Unit!1037)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2671 (_ BitVec 32) (_ BitVec 32)) Unit!1037)

(assert (=> b!41628 (= lt!16627 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16623 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2671 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41628 (= (arrayCountValidKeys!0 lt!16623 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16628 () Unit!1037)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2671 (_ BitVec 32) (_ BitVec 32)) Unit!1037)

(assert (=> b!41628 (= lt!16628 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16623 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41628 (= lt!16626 (array!2674 ((as const (Array (_ BitVec 32) ValueCell!650)) EmptyCell!650) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41628 (= lt!16623 (array!2672 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!211 (Int (_ BitVec 64)) V!2153)

(assert (=> b!41628 (= lt!16629 (dynLambda!211 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41631 () Bool)

(assert (=> b!41631 (= e!26339 true)))

(declare-fun lt!16630 () Bool)

(declare-fun contains!537 (ListLongMap!1111 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!329 (array!2671 array!2673 (_ BitVec 32) (_ BitVec 32) V!2153 V!2153 (_ BitVec 32) Int) ListLongMap!1111)

(declare-fun head!866 (List!1110) tuple2!1530)

(assert (=> b!41631 (= lt!16630 (contains!537 (getCurrentListMap!329 lt!16623 lt!16626 mask!853 #b00000000000000000000000000000000 lt!16629 lt!16629 #b00000000000000000000000000000000 defaultEntry!470) (_1!775 (head!866 (toList!571 lt!16625)))))))

(declare-fun res!24757 () Bool)

(assert (=> start!5932 (=> (not res!24757) (not e!26340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5932 (= res!24757 (validMask!0 mask!853))))

(assert (=> start!5932 e!26340))

(assert (=> start!5932 true))

(assert (=> start!5932 tp!5795))

(assert (= (and start!5932 res!24757) b!41628))

(assert (= (and b!41628 (not res!24754)) b!41629))

(assert (= (and b!41629 (not res!24755)) b!41630))

(assert (= (and b!41630 (not res!24756)) b!41631))

(declare-fun b_lambda!2149 () Bool)

(assert (=> (not b_lambda!2149) (not b!41628)))

(declare-fun t!4018 () Bool)

(declare-fun tb!895 () Bool)

(assert (=> (and start!5932 (= defaultEntry!470 defaultEntry!470) t!4018) tb!895))

(declare-fun result!1533 () Bool)

(declare-fun tp_is_empty!1795 () Bool)

(assert (=> tb!895 (= result!1533 tp_is_empty!1795)))

(assert (=> b!41628 t!4018))

(declare-fun b_and!2471 () Bool)

(assert (= b_and!2469 (and (=> t!4018 result!1533) b_and!2471)))

(declare-fun m!35033 () Bool)

(assert (=> b!41629 m!35033))

(declare-fun m!35035 () Bool)

(assert (=> b!41628 m!35035))

(declare-fun m!35037 () Bool)

(assert (=> b!41628 m!35037))

(declare-fun m!35039 () Bool)

(assert (=> b!41628 m!35039))

(declare-fun m!35041 () Bool)

(assert (=> b!41628 m!35041))

(declare-fun m!35043 () Bool)

(assert (=> b!41628 m!35043))

(declare-fun m!35045 () Bool)

(assert (=> b!41628 m!35045))

(declare-fun m!35047 () Bool)

(assert (=> b!41628 m!35047))

(declare-fun m!35049 () Bool)

(assert (=> b!41628 m!35049))

(declare-fun m!35051 () Bool)

(assert (=> b!41631 m!35051))

(declare-fun m!35053 () Bool)

(assert (=> b!41631 m!35053))

(assert (=> b!41631 m!35051))

(declare-fun m!35055 () Bool)

(assert (=> b!41631 m!35055))

(declare-fun m!35057 () Bool)

(assert (=> start!5932 m!35057))

(push 1)

(assert (not b!41628))

(assert (not b!41631))

(assert (not b_next!1405))

(assert tp_is_empty!1795)

(assert b_and!2471)

(assert (not b!41629))

(assert (not start!5932))

(assert (not b_lambda!2149))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2471)

(assert (not b_next!1405))

(check-sat)

(pop 1)

