; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111488 () Bool)

(assert start!111488)

(declare-fun b_free!30109 () Bool)

(declare-fun b_next!30109 () Bool)

(assert (=> start!111488 (= b_free!30109 (not b_next!30109))))

(declare-fun tp!105803 () Bool)

(declare-fun b_and!48387 () Bool)

(assert (=> start!111488 (= tp!105803 b_and!48387)))

(declare-fun b!1319024 () Bool)

(declare-fun res!875509 () Bool)

(declare-fun e!752629 () Bool)

(assert (=> b!1319024 (=> (not res!875509) (not e!752629))))

(declare-datatypes ((array!88757 0))(
  ( (array!88758 (arr!42848 (Array (_ BitVec 32) (_ BitVec 64))) (size!43399 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88757)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88757 (_ BitVec 32)) Bool)

(assert (=> b!1319024 (= res!875509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319025 () Bool)

(declare-fun res!875505 () Bool)

(assert (=> b!1319025 (=> (not res!875505) (not e!752629))))

(declare-datatypes ((List!30561 0))(
  ( (Nil!30558) (Cons!30557 (h!31766 (_ BitVec 64)) (t!44226 List!30561)) )
))
(declare-fun arrayNoDuplicates!0 (array!88757 (_ BitVec 32) List!30561) Bool)

(assert (=> b!1319025 (= res!875505 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30558))))

(declare-fun b!1319026 () Bool)

(declare-fun res!875511 () Bool)

(assert (=> b!1319026 (=> (not res!875511) (not e!752629))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53009 0))(
  ( (V!53010 (val!18039 Int)) )
))
(declare-datatypes ((ValueCell!17066 0))(
  ( (ValueCellFull!17066 (v!20667 V!53009)) (EmptyCell!17066) )
))
(declare-datatypes ((array!88759 0))(
  ( (array!88760 (arr!42849 (Array (_ BitVec 32) ValueCell!17066)) (size!43400 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88759)

(assert (=> b!1319026 (= res!875511 (and (= (size!43400 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43399 _keys!1609) (size!43400 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1319027 () Bool)

(declare-fun e!752632 () Bool)

(declare-fun tp_is_empty!35929 () Bool)

(assert (=> b!1319027 (= e!752632 tp_is_empty!35929)))

(declare-fun mapNonEmpty!55541 () Bool)

(declare-fun mapRes!55541 () Bool)

(declare-fun tp!105804 () Bool)

(assert (=> mapNonEmpty!55541 (= mapRes!55541 (and tp!105804 e!752632))))

(declare-fun mapKey!55541 () (_ BitVec 32))

(declare-fun mapValue!55541 () ValueCell!17066)

(declare-fun mapRest!55541 () (Array (_ BitVec 32) ValueCell!17066))

(assert (=> mapNonEmpty!55541 (= (arr!42849 _values!1337) (store mapRest!55541 mapKey!55541 mapValue!55541))))

(declare-fun b!1319028 () Bool)

(declare-fun res!875506 () Bool)

(assert (=> b!1319028 (=> (not res!875506) (not e!752629))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1319028 (= res!875506 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43399 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1319029 () Bool)

(declare-fun res!875510 () Bool)

(assert (=> b!1319029 (=> (not res!875510) (not e!752629))))

(declare-fun zeroValue!1279 () V!53009)

(declare-fun minValue!1279 () V!53009)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23372 0))(
  ( (tuple2!23373 (_1!11696 (_ BitVec 64)) (_2!11696 V!53009)) )
))
(declare-datatypes ((List!30562 0))(
  ( (Nil!30559) (Cons!30558 (h!31767 tuple2!23372) (t!44227 List!30562)) )
))
(declare-datatypes ((ListLongMap!21041 0))(
  ( (ListLongMap!21042 (toList!10536 List!30562)) )
))
(declare-fun contains!8627 (ListLongMap!21041 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5487 (array!88757 array!88759 (_ BitVec 32) (_ BitVec 32) V!53009 V!53009 (_ BitVec 32) Int) ListLongMap!21041)

(assert (=> b!1319029 (= res!875510 (contains!8627 (getCurrentListMap!5487 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1319030 () Bool)

(declare-fun e!752630 () Bool)

(assert (=> b!1319030 (= e!752630 tp_is_empty!35929)))

(declare-fun b!1319031 () Bool)

(declare-fun res!875507 () Bool)

(assert (=> b!1319031 (=> (not res!875507) (not e!752629))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319031 (= res!875507 (validKeyInArray!0 (select (arr!42848 _keys!1609) from!2000)))))

(declare-fun b!1319032 () Bool)

(declare-fun e!752628 () Bool)

(assert (=> b!1319032 (= e!752628 (and e!752630 mapRes!55541))))

(declare-fun condMapEmpty!55541 () Bool)

(declare-fun mapDefault!55541 () ValueCell!17066)

