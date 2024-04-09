; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111444 () Bool)

(assert start!111444)

(declare-fun b_free!30065 () Bool)

(declare-fun b_next!30065 () Bool)

(assert (=> start!111444 (= b_free!30065 (not b_next!30065))))

(declare-fun tp!105672 () Bool)

(declare-fun b_and!48299 () Bool)

(assert (=> start!111444 (= tp!105672 b_and!48299)))

(declare-fun mapIsEmpty!55475 () Bool)

(declare-fun mapRes!55475 () Bool)

(assert (=> mapIsEmpty!55475 mapRes!55475))

(declare-fun b!1318254 () Bool)

(declare-fun res!874977 () Bool)

(declare-fun e!752302 () Bool)

(assert (=> b!1318254 (=> (not res!874977) (not e!752302))))

(declare-datatypes ((array!88673 0))(
  ( (array!88674 (arr!42806 (Array (_ BitVec 32) (_ BitVec 64))) (size!43357 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88673)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1318254 (= res!874977 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43357 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318255 () Bool)

(declare-fun res!874979 () Bool)

(assert (=> b!1318255 (=> (not res!874979) (not e!752302))))

(declare-datatypes ((V!52949 0))(
  ( (V!52950 (val!18017 Int)) )
))
(declare-datatypes ((ValueCell!17044 0))(
  ( (ValueCellFull!17044 (v!20645 V!52949)) (EmptyCell!17044) )
))
(declare-datatypes ((array!88675 0))(
  ( (array!88676 (arr!42807 (Array (_ BitVec 32) ValueCell!17044)) (size!43358 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88675)

(declare-fun minValue!1279 () V!52949)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!52949)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23338 0))(
  ( (tuple2!23339 (_1!11679 (_ BitVec 64)) (_2!11679 V!52949)) )
))
(declare-datatypes ((List!30530 0))(
  ( (Nil!30527) (Cons!30526 (h!31735 tuple2!23338) (t!44151 List!30530)) )
))
(declare-datatypes ((ListLongMap!21007 0))(
  ( (ListLongMap!21008 (toList!10519 List!30530)) )
))
(declare-fun contains!8610 (ListLongMap!21007 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5475 (array!88673 array!88675 (_ BitVec 32) (_ BitVec 32) V!52949 V!52949 (_ BitVec 32) Int) ListLongMap!21007)

(assert (=> b!1318255 (= res!874979 (contains!8610 (getCurrentListMap!5475 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1318256 () Bool)

(declare-fun e!752301 () Bool)

(declare-fun tp_is_empty!35885 () Bool)

(assert (=> b!1318256 (= e!752301 tp_is_empty!35885)))

(declare-fun b!1318257 () Bool)

(declare-fun res!874980 () Bool)

(assert (=> b!1318257 (=> (not res!874980) (not e!752302))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1318257 (= res!874980 (validKeyInArray!0 (select (arr!42806 _keys!1609) from!2000)))))

(declare-fun b!1318258 () Bool)

(assert (=> b!1318258 (= e!752302 false)))

(declare-fun lt!586396 () Bool)

(declare-fun +!4480 (ListLongMap!21007 tuple2!23338) ListLongMap!21007)

(declare-fun getCurrentListMapNoExtraKeys!6195 (array!88673 array!88675 (_ BitVec 32) (_ BitVec 32) V!52949 V!52949 (_ BitVec 32) Int) ListLongMap!21007)

(declare-fun get!21548 (ValueCell!17044 V!52949) V!52949)

(declare-fun dynLambda!3517 (Int (_ BitVec 64)) V!52949)

(assert (=> b!1318258 (= lt!586396 (contains!8610 (+!4480 (+!4480 (+!4480 (getCurrentListMapNoExtraKeys!6195 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23339 (select (arr!42806 _keys!1609) from!2000) (get!21548 (select (arr!42807 _values!1337) from!2000) (dynLambda!3517 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23339 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23339 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k!1164))))

(declare-fun b!1318259 () Bool)

(declare-fun e!752299 () Bool)

(assert (=> b!1318259 (= e!752299 tp_is_empty!35885)))

(declare-fun b!1318260 () Bool)

(declare-fun res!874982 () Bool)

(assert (=> b!1318260 (=> (not res!874982) (not e!752302))))

(declare-datatypes ((List!30531 0))(
  ( (Nil!30528) (Cons!30527 (h!31736 (_ BitVec 64)) (t!44152 List!30531)) )
))
(declare-fun arrayNoDuplicates!0 (array!88673 (_ BitVec 32) List!30531) Bool)

(assert (=> b!1318260 (= res!874982 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30528))))

(declare-fun b!1318261 () Bool)

(declare-fun res!874981 () Bool)

(assert (=> b!1318261 (=> (not res!874981) (not e!752302))))

(assert (=> b!1318261 (= res!874981 (not (= (select (arr!42806 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1318262 () Bool)

(declare-fun e!752298 () Bool)

(assert (=> b!1318262 (= e!752298 (and e!752299 mapRes!55475))))

(declare-fun condMapEmpty!55475 () Bool)

(declare-fun mapDefault!55475 () ValueCell!17044)

