; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111524 () Bool)

(assert start!111524)

(declare-fun b_free!30145 () Bool)

(declare-fun b_next!30145 () Bool)

(assert (=> start!111524 (= b_free!30145 (not b_next!30145))))

(declare-fun tp!105911 () Bool)

(declare-fun b_and!48459 () Bool)

(assert (=> start!111524 (= tp!105911 b_and!48459)))

(declare-fun b!1319654 () Bool)

(declare-fun e!752902 () Bool)

(declare-fun tp_is_empty!35965 () Bool)

(assert (=> b!1319654 (= e!752902 tp_is_empty!35965)))

(declare-fun b!1319655 () Bool)

(declare-fun res!875939 () Bool)

(declare-fun e!752899 () Bool)

(assert (=> b!1319655 (=> (not res!875939) (not e!752899))))

(declare-datatypes ((array!88829 0))(
  ( (array!88830 (arr!42884 (Array (_ BitVec 32) (_ BitVec 64))) (size!43435 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88829)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53057 0))(
  ( (V!53058 (val!18057 Int)) )
))
(declare-datatypes ((ValueCell!17084 0))(
  ( (ValueCellFull!17084 (v!20685 V!53057)) (EmptyCell!17084) )
))
(declare-datatypes ((array!88831 0))(
  ( (array!88832 (arr!42885 (Array (_ BitVec 32) ValueCell!17084)) (size!43436 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88831)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1319655 (= res!875939 (and (= (size!43436 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43435 _keys!1609) (size!43436 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!55595 () Bool)

(declare-fun mapRes!55595 () Bool)

(assert (=> mapIsEmpty!55595 mapRes!55595))

(declare-fun b!1319656 () Bool)

(declare-fun e!752900 () Bool)

(assert (=> b!1319656 (= e!752900 tp_is_empty!35965)))

(declare-fun b!1319657 () Bool)

(declare-fun res!875943 () Bool)

(assert (=> b!1319657 (=> (not res!875943) (not e!752899))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1319657 (= res!875943 (not (= (select (arr!42884 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1319658 () Bool)

(assert (=> b!1319658 (= e!752899 (not true))))

(declare-datatypes ((tuple2!23406 0))(
  ( (tuple2!23407 (_1!11713 (_ BitVec 64)) (_2!11713 V!53057)) )
))
(declare-datatypes ((List!30590 0))(
  ( (Nil!30587) (Cons!30586 (h!31795 tuple2!23406) (t!44291 List!30590)) )
))
(declare-datatypes ((ListLongMap!21075 0))(
  ( (ListLongMap!21076 (toList!10553 List!30590)) )
))
(declare-fun lt!586650 () ListLongMap!21075)

(declare-fun contains!8644 (ListLongMap!21075 (_ BitVec 64)) Bool)

(assert (=> b!1319658 (contains!8644 lt!586650 k!1164)))

(declare-fun zeroValue!1279 () V!53057)

(declare-datatypes ((Unit!43418 0))(
  ( (Unit!43419) )
))
(declare-fun lt!586651 () Unit!43418)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!124 ((_ BitVec 64) (_ BitVec 64) V!53057 ListLongMap!21075) Unit!43418)

(assert (=> b!1319658 (= lt!586651 (lemmaInListMapAfterAddingDiffThenInBefore!124 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586650))))

(declare-fun lt!586649 () ListLongMap!21075)

(assert (=> b!1319658 (contains!8644 lt!586649 k!1164)))

(declare-fun minValue!1279 () V!53057)

(declare-fun lt!586648 () Unit!43418)

(assert (=> b!1319658 (= lt!586648 (lemmaInListMapAfterAddingDiffThenInBefore!124 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586649))))

(declare-fun +!4509 (ListLongMap!21075 tuple2!23406) ListLongMap!21075)

(assert (=> b!1319658 (= lt!586649 (+!4509 lt!586650 (tuple2!23407 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6224 (array!88829 array!88831 (_ BitVec 32) (_ BitVec 32) V!53057 V!53057 (_ BitVec 32) Int) ListLongMap!21075)

(declare-fun get!21605 (ValueCell!17084 V!53057) V!53057)

(declare-fun dynLambda!3546 (Int (_ BitVec 64)) V!53057)

(assert (=> b!1319658 (= lt!586650 (+!4509 (getCurrentListMapNoExtraKeys!6224 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23407 (select (arr!42884 _keys!1609) from!2000) (get!21605 (select (arr!42885 _values!1337) from!2000) (dynLambda!3546 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1319660 () Bool)

(declare-fun res!875940 () Bool)

(assert (=> b!1319660 (=> (not res!875940) (not e!752899))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319660 (= res!875940 (validKeyInArray!0 (select (arr!42884 _keys!1609) from!2000)))))

(declare-fun b!1319661 () Bool)

(declare-fun res!875941 () Bool)

(assert (=> b!1319661 (=> (not res!875941) (not e!752899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88829 (_ BitVec 32)) Bool)

(assert (=> b!1319661 (= res!875941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319662 () Bool)

(declare-fun res!875938 () Bool)

(assert (=> b!1319662 (=> (not res!875938) (not e!752899))))

(declare-datatypes ((List!30591 0))(
  ( (Nil!30588) (Cons!30587 (h!31796 (_ BitVec 64)) (t!44292 List!30591)) )
))
(declare-fun arrayNoDuplicates!0 (array!88829 (_ BitVec 32) List!30591) Bool)

(assert (=> b!1319662 (= res!875938 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30588))))

(declare-fun mapNonEmpty!55595 () Bool)

(declare-fun tp!105912 () Bool)

(assert (=> mapNonEmpty!55595 (= mapRes!55595 (and tp!105912 e!752900))))

(declare-fun mapKey!55595 () (_ BitVec 32))

(declare-fun mapValue!55595 () ValueCell!17084)

(declare-fun mapRest!55595 () (Array (_ BitVec 32) ValueCell!17084))

(assert (=> mapNonEmpty!55595 (= (arr!42885 _values!1337) (store mapRest!55595 mapKey!55595 mapValue!55595))))

(declare-fun res!875937 () Bool)

(assert (=> start!111524 (=> (not res!875937) (not e!752899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111524 (= res!875937 (validMask!0 mask!2019))))

(assert (=> start!111524 e!752899))

(declare-fun array_inv!32331 (array!88829) Bool)

(assert (=> start!111524 (array_inv!32331 _keys!1609)))

(assert (=> start!111524 true))

(assert (=> start!111524 tp_is_empty!35965))

(declare-fun e!752901 () Bool)

(declare-fun array_inv!32332 (array!88831) Bool)

(assert (=> start!111524 (and (array_inv!32332 _values!1337) e!752901)))

(assert (=> start!111524 tp!105911))

(declare-fun b!1319659 () Bool)

(assert (=> b!1319659 (= e!752901 (and e!752902 mapRes!55595))))

(declare-fun condMapEmpty!55595 () Bool)

(declare-fun mapDefault!55595 () ValueCell!17084)

