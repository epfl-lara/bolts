; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111530 () Bool)

(assert start!111530)

(declare-fun b_free!30151 () Bool)

(declare-fun b_next!30151 () Bool)

(assert (=> start!111530 (= b_free!30151 (not b_next!30151))))

(declare-fun tp!105929 () Bool)

(declare-fun b_and!48471 () Bool)

(assert (=> start!111530 (= tp!105929 b_and!48471)))

(declare-fun b!1319759 () Bool)

(declare-fun res!876014 () Bool)

(declare-fun e!752946 () Bool)

(assert (=> b!1319759 (=> (not res!876014) (not e!752946))))

(declare-datatypes ((array!88841 0))(
  ( (array!88842 (arr!42890 (Array (_ BitVec 32) (_ BitVec 64))) (size!43441 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88841)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319759 (= res!876014 (validKeyInArray!0 (select (arr!42890 _keys!1609) from!2000)))))

(declare-fun b!1319760 () Bool)

(declare-fun res!876011 () Bool)

(assert (=> b!1319760 (=> (not res!876011) (not e!752946))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53065 0))(
  ( (V!53066 (val!18060 Int)) )
))
(declare-datatypes ((ValueCell!17087 0))(
  ( (ValueCellFull!17087 (v!20688 V!53065)) (EmptyCell!17087) )
))
(declare-datatypes ((array!88843 0))(
  ( (array!88844 (arr!42891 (Array (_ BitVec 32) ValueCell!17087)) (size!43442 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88843)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1319760 (= res!876011 (and (= (size!43442 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43441 _keys!1609) (size!43442 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1319762 () Bool)

(declare-fun res!876016 () Bool)

(assert (=> b!1319762 (=> (not res!876016) (not e!752946))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88841 (_ BitVec 32)) Bool)

(assert (=> b!1319762 (= res!876016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319763 () Bool)

(declare-fun res!876012 () Bool)

(assert (=> b!1319763 (=> (not res!876012) (not e!752946))))

(declare-fun zeroValue!1279 () V!53065)

(declare-fun minValue!1279 () V!53065)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23412 0))(
  ( (tuple2!23413 (_1!11716 (_ BitVec 64)) (_2!11716 V!53065)) )
))
(declare-datatypes ((List!30596 0))(
  ( (Nil!30593) (Cons!30592 (h!31801 tuple2!23412) (t!44303 List!30596)) )
))
(declare-datatypes ((ListLongMap!21081 0))(
  ( (ListLongMap!21082 (toList!10556 List!30596)) )
))
(declare-fun contains!8647 (ListLongMap!21081 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5500 (array!88841 array!88843 (_ BitVec 32) (_ BitVec 32) V!53065 V!53065 (_ BitVec 32) Int) ListLongMap!21081)

(assert (=> b!1319763 (= res!876012 (contains!8647 (getCurrentListMap!5500 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1319764 () Bool)

(declare-fun res!876010 () Bool)

(assert (=> b!1319764 (=> (not res!876010) (not e!752946))))

(assert (=> b!1319764 (= res!876010 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43441 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1319765 () Bool)

(declare-fun res!876015 () Bool)

(assert (=> b!1319765 (=> (not res!876015) (not e!752946))))

(declare-datatypes ((List!30597 0))(
  ( (Nil!30594) (Cons!30593 (h!31802 (_ BitVec 64)) (t!44304 List!30597)) )
))
(declare-fun arrayNoDuplicates!0 (array!88841 (_ BitVec 32) List!30597) Bool)

(assert (=> b!1319765 (= res!876015 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30594))))

(declare-fun mapNonEmpty!55604 () Bool)

(declare-fun mapRes!55604 () Bool)

(declare-fun tp!105930 () Bool)

(declare-fun e!752944 () Bool)

(assert (=> mapNonEmpty!55604 (= mapRes!55604 (and tp!105930 e!752944))))

(declare-fun mapKey!55604 () (_ BitVec 32))

(declare-fun mapRest!55604 () (Array (_ BitVec 32) ValueCell!17087))

(declare-fun mapValue!55604 () ValueCell!17087)

(assert (=> mapNonEmpty!55604 (= (arr!42891 _values!1337) (store mapRest!55604 mapKey!55604 mapValue!55604))))

(declare-fun res!876009 () Bool)

(assert (=> start!111530 (=> (not res!876009) (not e!752946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111530 (= res!876009 (validMask!0 mask!2019))))

(assert (=> start!111530 e!752946))

(declare-fun array_inv!32335 (array!88841) Bool)

(assert (=> start!111530 (array_inv!32335 _keys!1609)))

(assert (=> start!111530 true))

(declare-fun tp_is_empty!35971 () Bool)

(assert (=> start!111530 tp_is_empty!35971))

(declare-fun e!752943 () Bool)

(declare-fun array_inv!32336 (array!88843) Bool)

(assert (=> start!111530 (and (array_inv!32336 _values!1337) e!752943)))

(assert (=> start!111530 tp!105929))

(declare-fun b!1319761 () Bool)

(assert (=> b!1319761 (= e!752946 (not true))))

(declare-fun lt!586687 () ListLongMap!21081)

(assert (=> b!1319761 (contains!8647 lt!586687 k!1164)))

(declare-datatypes ((Unit!43424 0))(
  ( (Unit!43425) )
))
(declare-fun lt!586685 () Unit!43424)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!127 ((_ BitVec 64) (_ BitVec 64) V!53065 ListLongMap!21081) Unit!43424)

(assert (=> b!1319761 (= lt!586685 (lemmaInListMapAfterAddingDiffThenInBefore!127 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586687))))

(declare-fun lt!586686 () ListLongMap!21081)

(assert (=> b!1319761 (contains!8647 lt!586686 k!1164)))

(declare-fun lt!586684 () Unit!43424)

(assert (=> b!1319761 (= lt!586684 (lemmaInListMapAfterAddingDiffThenInBefore!127 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586686))))

(declare-fun +!4512 (ListLongMap!21081 tuple2!23412) ListLongMap!21081)

(assert (=> b!1319761 (= lt!586686 (+!4512 lt!586687 (tuple2!23413 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun getCurrentListMapNoExtraKeys!6227 (array!88841 array!88843 (_ BitVec 32) (_ BitVec 32) V!53065 V!53065 (_ BitVec 32) Int) ListLongMap!21081)

(declare-fun get!21610 (ValueCell!17087 V!53065) V!53065)

(declare-fun dynLambda!3549 (Int (_ BitVec 64)) V!53065)

(assert (=> b!1319761 (= lt!586687 (+!4512 (getCurrentListMapNoExtraKeys!6227 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23413 (select (arr!42890 _keys!1609) from!2000) (get!21610 (select (arr!42891 _values!1337) from!2000) (dynLambda!3549 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1319766 () Bool)

(declare-fun e!752947 () Bool)

(assert (=> b!1319766 (= e!752947 tp_is_empty!35971)))

(declare-fun b!1319767 () Bool)

(declare-fun res!876013 () Bool)

(assert (=> b!1319767 (=> (not res!876013) (not e!752946))))

(assert (=> b!1319767 (= res!876013 (not (= (select (arr!42890 _keys!1609) from!2000) k!1164)))))

(declare-fun mapIsEmpty!55604 () Bool)

(assert (=> mapIsEmpty!55604 mapRes!55604))

(declare-fun b!1319768 () Bool)

(assert (=> b!1319768 (= e!752943 (and e!752947 mapRes!55604))))

(declare-fun condMapEmpty!55604 () Bool)

(declare-fun mapDefault!55604 () ValueCell!17087)

