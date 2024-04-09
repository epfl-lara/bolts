; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111534 () Bool)

(assert start!111534)

(declare-fun b_free!30155 () Bool)

(declare-fun b_next!30155 () Bool)

(assert (=> start!111534 (= b_free!30155 (not b_next!30155))))

(declare-fun tp!105942 () Bool)

(declare-fun b_and!48479 () Bool)

(assert (=> start!111534 (= tp!105942 b_and!48479)))

(declare-fun b!1319829 () Bool)

(declare-fun res!876059 () Bool)

(declare-fun e!752977 () Bool)

(assert (=> b!1319829 (=> (not res!876059) (not e!752977))))

(declare-datatypes ((array!88849 0))(
  ( (array!88850 (arr!42894 (Array (_ BitVec 32) (_ BitVec 64))) (size!43445 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88849)

(declare-datatypes ((List!30600 0))(
  ( (Nil!30597) (Cons!30596 (h!31805 (_ BitVec 64)) (t!44311 List!30600)) )
))
(declare-fun arrayNoDuplicates!0 (array!88849 (_ BitVec 32) List!30600) Bool)

(assert (=> b!1319829 (= res!876059 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30597))))

(declare-fun mapIsEmpty!55610 () Bool)

(declare-fun mapRes!55610 () Bool)

(assert (=> mapIsEmpty!55610 mapRes!55610))

(declare-fun b!1319830 () Bool)

(declare-fun res!876061 () Bool)

(assert (=> b!1319830 (=> (not res!876061) (not e!752977))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319830 (= res!876061 (validKeyInArray!0 (select (arr!42894 _keys!1609) from!2000)))))

(declare-fun b!1319831 () Bool)

(declare-fun e!752973 () Bool)

(declare-fun tp_is_empty!35975 () Bool)

(assert (=> b!1319831 (= e!752973 tp_is_empty!35975)))

(declare-fun b!1319832 () Bool)

(declare-fun res!876060 () Bool)

(assert (=> b!1319832 (=> (not res!876060) (not e!752977))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53069 0))(
  ( (V!53070 (val!18062 Int)) )
))
(declare-datatypes ((ValueCell!17089 0))(
  ( (ValueCellFull!17089 (v!20690 V!53069)) (EmptyCell!17089) )
))
(declare-datatypes ((array!88851 0))(
  ( (array!88852 (arr!42895 (Array (_ BitVec 32) ValueCell!17089)) (size!43446 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88851)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1319832 (= res!876060 (and (= (size!43446 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43445 _keys!1609) (size!43446 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1319833 () Bool)

(assert (=> b!1319833 (= e!752977 (not true))))

(declare-datatypes ((tuple2!23416 0))(
  ( (tuple2!23417 (_1!11718 (_ BitVec 64)) (_2!11718 V!53069)) )
))
(declare-datatypes ((List!30601 0))(
  ( (Nil!30598) (Cons!30597 (h!31806 tuple2!23416) (t!44312 List!30601)) )
))
(declare-datatypes ((ListLongMap!21085 0))(
  ( (ListLongMap!21086 (toList!10558 List!30601)) )
))
(declare-fun lt!586708 () ListLongMap!21085)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8649 (ListLongMap!21085 (_ BitVec 64)) Bool)

(assert (=> b!1319833 (contains!8649 lt!586708 k!1164)))

(declare-fun zeroValue!1279 () V!53069)

(declare-datatypes ((Unit!43428 0))(
  ( (Unit!43429) )
))
(declare-fun lt!586710 () Unit!43428)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!129 ((_ BitVec 64) (_ BitVec 64) V!53069 ListLongMap!21085) Unit!43428)

(assert (=> b!1319833 (= lt!586710 (lemmaInListMapAfterAddingDiffThenInBefore!129 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586708))))

(declare-fun lt!586709 () ListLongMap!21085)

(assert (=> b!1319833 (contains!8649 lt!586709 k!1164)))

(declare-fun minValue!1279 () V!53069)

(declare-fun lt!586711 () Unit!43428)

(assert (=> b!1319833 (= lt!586711 (lemmaInListMapAfterAddingDiffThenInBefore!129 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586709))))

(declare-fun +!4514 (ListLongMap!21085 tuple2!23416) ListLongMap!21085)

(assert (=> b!1319833 (= lt!586709 (+!4514 lt!586708 (tuple2!23417 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6229 (array!88849 array!88851 (_ BitVec 32) (_ BitVec 32) V!53069 V!53069 (_ BitVec 32) Int) ListLongMap!21085)

(declare-fun get!21612 (ValueCell!17089 V!53069) V!53069)

(declare-fun dynLambda!3551 (Int (_ BitVec 64)) V!53069)

(assert (=> b!1319833 (= lt!586708 (+!4514 (getCurrentListMapNoExtraKeys!6229 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23417 (select (arr!42894 _keys!1609) from!2000) (get!21612 (select (arr!42895 _values!1337) from!2000) (dynLambda!3551 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun res!876064 () Bool)

(assert (=> start!111534 (=> (not res!876064) (not e!752977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111534 (= res!876064 (validMask!0 mask!2019))))

(assert (=> start!111534 e!752977))

(declare-fun array_inv!32339 (array!88849) Bool)

(assert (=> start!111534 (array_inv!32339 _keys!1609)))

(assert (=> start!111534 true))

(assert (=> start!111534 tp_is_empty!35975))

(declare-fun e!752974 () Bool)

(declare-fun array_inv!32340 (array!88851) Bool)

(assert (=> start!111534 (and (array_inv!32340 _values!1337) e!752974)))

(assert (=> start!111534 tp!105942))

(declare-fun b!1319834 () Bool)

(declare-fun res!876063 () Bool)

(assert (=> b!1319834 (=> (not res!876063) (not e!752977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88849 (_ BitVec 32)) Bool)

(assert (=> b!1319834 (= res!876063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319835 () Bool)

(declare-fun res!876062 () Bool)

(assert (=> b!1319835 (=> (not res!876062) (not e!752977))))

(declare-fun getCurrentListMap!5502 (array!88849 array!88851 (_ BitVec 32) (_ BitVec 32) V!53069 V!53069 (_ BitVec 32) Int) ListLongMap!21085)

(assert (=> b!1319835 (= res!876062 (contains!8649 (getCurrentListMap!5502 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1319836 () Bool)

(declare-fun res!876058 () Bool)

(assert (=> b!1319836 (=> (not res!876058) (not e!752977))))

(assert (=> b!1319836 (= res!876058 (not (= (select (arr!42894 _keys!1609) from!2000) k!1164)))))

(declare-fun mapNonEmpty!55610 () Bool)

(declare-fun tp!105941 () Bool)

(assert (=> mapNonEmpty!55610 (= mapRes!55610 (and tp!105941 e!752973))))

(declare-fun mapKey!55610 () (_ BitVec 32))

(declare-fun mapValue!55610 () ValueCell!17089)

(declare-fun mapRest!55610 () (Array (_ BitVec 32) ValueCell!17089))

(assert (=> mapNonEmpty!55610 (= (arr!42895 _values!1337) (store mapRest!55610 mapKey!55610 mapValue!55610))))

(declare-fun b!1319837 () Bool)

(declare-fun e!752976 () Bool)

(assert (=> b!1319837 (= e!752976 tp_is_empty!35975)))

(declare-fun b!1319838 () Bool)

(assert (=> b!1319838 (= e!752974 (and e!752976 mapRes!55610))))

(declare-fun condMapEmpty!55610 () Bool)

(declare-fun mapDefault!55610 () ValueCell!17089)

