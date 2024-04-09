; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111438 () Bool)

(assert start!111438)

(declare-fun b_free!30059 () Bool)

(declare-fun b_next!30059 () Bool)

(assert (=> start!111438 (= b_free!30059 (not b_next!30059))))

(declare-fun tp!105653 () Bool)

(declare-fun b_and!48289 () Bool)

(assert (=> start!111438 (= tp!105653 b_and!48289)))

(declare-fun b!1318151 () Bool)

(declare-fun res!874906 () Bool)

(declare-fun e!752257 () Bool)

(assert (=> b!1318151 (=> (not res!874906) (not e!752257))))

(declare-datatypes ((array!88661 0))(
  ( (array!88662 (arr!42800 (Array (_ BitVec 32) (_ BitVec 64))) (size!43351 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88661)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!52941 0))(
  ( (V!52942 (val!18014 Int)) )
))
(declare-fun zeroValue!1279 () V!52941)

(declare-datatypes ((ValueCell!17041 0))(
  ( (ValueCellFull!17041 (v!20642 V!52941)) (EmptyCell!17041) )
))
(declare-datatypes ((array!88663 0))(
  ( (array!88664 (arr!42801 (Array (_ BitVec 32) ValueCell!17041)) (size!43352 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88663)

(declare-fun minValue!1279 () V!52941)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(declare-datatypes ((tuple2!23334 0))(
  ( (tuple2!23335 (_1!11677 (_ BitVec 64)) (_2!11677 V!52941)) )
))
(declare-datatypes ((List!30525 0))(
  ( (Nil!30522) (Cons!30521 (h!31730 tuple2!23334) (t!44140 List!30525)) )
))
(declare-datatypes ((ListLongMap!21003 0))(
  ( (ListLongMap!21004 (toList!10517 List!30525)) )
))
(declare-fun contains!8608 (ListLongMap!21003 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5473 (array!88661 array!88663 (_ BitVec 32) (_ BitVec 32) V!52941 V!52941 (_ BitVec 32) Int) ListLongMap!21003)

(assert (=> b!1318151 (= res!874906 (contains!8608 (getCurrentListMap!5473 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1318152 () Bool)

(declare-fun e!752254 () Bool)

(declare-fun tp_is_empty!35879 () Bool)

(assert (=> b!1318152 (= e!752254 tp_is_empty!35879)))

(declare-fun b!1318153 () Bool)

(declare-fun res!874909 () Bool)

(assert (=> b!1318153 (=> (not res!874909) (not e!752257))))

(declare-datatypes ((List!30526 0))(
  ( (Nil!30523) (Cons!30522 (h!31731 (_ BitVec 64)) (t!44141 List!30526)) )
))
(declare-fun arrayNoDuplicates!0 (array!88661 (_ BitVec 32) List!30526) Bool)

(assert (=> b!1318153 (= res!874909 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30523))))

(declare-fun b!1318154 () Bool)

(declare-fun e!752255 () Bool)

(assert (=> b!1318154 (= e!752255 tp_is_empty!35879)))

(declare-fun b!1318155 () Bool)

(declare-fun res!874907 () Bool)

(assert (=> b!1318155 (=> (not res!874907) (not e!752257))))

(assert (=> b!1318155 (= res!874907 (and (= (size!43352 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43351 _keys!1609) (size!43352 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!874910 () Bool)

(assert (=> start!111438 (=> (not res!874910) (not e!752257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111438 (= res!874910 (validMask!0 mask!2019))))

(assert (=> start!111438 e!752257))

(declare-fun array_inv!32277 (array!88661) Bool)

(assert (=> start!111438 (array_inv!32277 _keys!1609)))

(assert (=> start!111438 true))

(assert (=> start!111438 tp_is_empty!35879))

(declare-fun e!752253 () Bool)

(declare-fun array_inv!32278 (array!88663) Bool)

(assert (=> start!111438 (and (array_inv!32278 _values!1337) e!752253)))

(assert (=> start!111438 tp!105653))

(declare-fun b!1318156 () Bool)

(declare-fun res!874912 () Bool)

(assert (=> b!1318156 (=> (not res!874912) (not e!752257))))

(assert (=> b!1318156 (= res!874912 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43351 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318157 () Bool)

(assert (=> b!1318157 (= e!752257 (bvslt (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!55466 () Bool)

(declare-fun mapRes!55466 () Bool)

(assert (=> mapIsEmpty!55466 mapRes!55466))

(declare-fun b!1318158 () Bool)

(declare-fun res!874908 () Bool)

(assert (=> b!1318158 (=> (not res!874908) (not e!752257))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88661 (_ BitVec 32)) Bool)

(assert (=> b!1318158 (= res!874908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapNonEmpty!55466 () Bool)

(declare-fun tp!105654 () Bool)

(assert (=> mapNonEmpty!55466 (= mapRes!55466 (and tp!105654 e!752254))))

(declare-fun mapKey!55466 () (_ BitVec 32))

(declare-fun mapValue!55466 () ValueCell!17041)

(declare-fun mapRest!55466 () (Array (_ BitVec 32) ValueCell!17041))

(assert (=> mapNonEmpty!55466 (= (arr!42801 _values!1337) (store mapRest!55466 mapKey!55466 mapValue!55466))))

(declare-fun b!1318159 () Bool)

(assert (=> b!1318159 (= e!752253 (and e!752255 mapRes!55466))))

(declare-fun condMapEmpty!55466 () Bool)

(declare-fun mapDefault!55466 () ValueCell!17041)

