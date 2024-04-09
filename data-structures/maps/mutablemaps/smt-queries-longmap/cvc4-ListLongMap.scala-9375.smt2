; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111726 () Bool)

(assert start!111726)

(declare-fun b_free!30347 () Bool)

(declare-fun b_next!30347 () Bool)

(assert (=> start!111726 (= b_free!30347 (not b_next!30347))))

(declare-fun tp!106517 () Bool)

(declare-fun b_and!48863 () Bool)

(assert (=> start!111726 (= tp!106517 b_and!48863)))

(declare-fun b!1323189 () Bool)

(declare-fun res!878365 () Bool)

(declare-fun e!754413 () Bool)

(assert (=> b!1323189 (=> (not res!878365) (not e!754413))))

(declare-datatypes ((array!89209 0))(
  ( (array!89210 (arr!43074 (Array (_ BitVec 32) (_ BitVec 64))) (size!43625 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89209)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1323189 (= res!878365 (not (= (select (arr!43074 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1323190 () Bool)

(declare-fun res!878361 () Bool)

(assert (=> b!1323190 (=> (not res!878361) (not e!754413))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53325 0))(
  ( (V!53326 (val!18158 Int)) )
))
(declare-datatypes ((ValueCell!17185 0))(
  ( (ValueCellFull!17185 (v!20786 V!53325)) (EmptyCell!17185) )
))
(declare-datatypes ((array!89211 0))(
  ( (array!89212 (arr!43075 (Array (_ BitVec 32) ValueCell!17185)) (size!43626 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89211)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1323190 (= res!878361 (and (= (size!43626 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43625 _keys!1609) (size!43626 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1323191 () Bool)

(declare-fun res!878368 () Bool)

(assert (=> b!1323191 (=> (not res!878368) (not e!754413))))

(declare-fun zeroValue!1279 () V!53325)

(declare-fun minValue!1279 () V!53325)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23558 0))(
  ( (tuple2!23559 (_1!11789 (_ BitVec 64)) (_2!11789 V!53325)) )
))
(declare-datatypes ((List!30731 0))(
  ( (Nil!30728) (Cons!30727 (h!31936 tuple2!23558) (t!44634 List!30731)) )
))
(declare-datatypes ((ListLongMap!21227 0))(
  ( (ListLongMap!21228 (toList!10629 List!30731)) )
))
(declare-fun contains!8720 (ListLongMap!21227 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5568 (array!89209 array!89211 (_ BitVec 32) (_ BitVec 32) V!53325 V!53325 (_ BitVec 32) Int) ListLongMap!21227)

(assert (=> b!1323191 (= res!878368 (contains!8720 (getCurrentListMap!5568 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun res!878366 () Bool)

(assert (=> start!111726 (=> (not res!878366) (not e!754413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111726 (= res!878366 (validMask!0 mask!2019))))

(assert (=> start!111726 e!754413))

(declare-fun array_inv!32473 (array!89209) Bool)

(assert (=> start!111726 (array_inv!32473 _keys!1609)))

(assert (=> start!111726 true))

(declare-fun tp_is_empty!36167 () Bool)

(assert (=> start!111726 tp_is_empty!36167))

(declare-fun e!754416 () Bool)

(declare-fun array_inv!32474 (array!89211) Bool)

(assert (=> start!111726 (and (array_inv!32474 _values!1337) e!754416)))

(assert (=> start!111726 tp!106517))

(declare-fun b!1323192 () Bool)

(declare-fun res!878362 () Bool)

(assert (=> b!1323192 (=> (not res!878362) (not e!754413))))

(declare-datatypes ((List!30732 0))(
  ( (Nil!30729) (Cons!30728 (h!31937 (_ BitVec 64)) (t!44635 List!30732)) )
))
(declare-fun arrayNoDuplicates!0 (array!89209 (_ BitVec 32) List!30732) Bool)

(assert (=> b!1323192 (= res!878362 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30729))))

(declare-fun b!1323193 () Bool)

(declare-fun res!878364 () Bool)

(assert (=> b!1323193 (=> (not res!878364) (not e!754413))))

(assert (=> b!1323193 (= res!878364 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43625 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55898 () Bool)

(declare-fun mapRes!55898 () Bool)

(declare-fun tp!106518 () Bool)

(declare-fun e!754415 () Bool)

(assert (=> mapNonEmpty!55898 (= mapRes!55898 (and tp!106518 e!754415))))

(declare-fun mapKey!55898 () (_ BitVec 32))

(declare-fun mapValue!55898 () ValueCell!17185)

(declare-fun mapRest!55898 () (Array (_ BitVec 32) ValueCell!17185))

(assert (=> mapNonEmpty!55898 (= (arr!43075 _values!1337) (store mapRest!55898 mapKey!55898 mapValue!55898))))

(declare-fun b!1323194 () Bool)

(declare-fun res!878367 () Bool)

(assert (=> b!1323194 (=> (not res!878367) (not e!754413))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89209 (_ BitVec 32)) Bool)

(assert (=> b!1323194 (= res!878367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1323195 () Bool)

(declare-fun res!878363 () Bool)

(assert (=> b!1323195 (=> (not res!878363) (not e!754413))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1323195 (= res!878363 (validKeyInArray!0 (select (arr!43074 _keys!1609) from!2000)))))

(declare-fun b!1323196 () Bool)

(declare-fun e!754414 () Bool)

(assert (=> b!1323196 (= e!754414 tp_is_empty!36167)))

(declare-fun b!1323197 () Bool)

(assert (=> b!1323197 (= e!754413 (not true))))

(declare-fun lt!588835 () ListLongMap!21227)

(declare-fun +!4576 (ListLongMap!21227 tuple2!23558) ListLongMap!21227)

(assert (=> b!1323197 (contains!8720 (+!4576 lt!588835 (tuple2!23559 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k!1164)))

(declare-datatypes ((Unit!43552 0))(
  ( (Unit!43553) )
))
(declare-fun lt!588826 () Unit!43552)

(declare-fun addStillContains!1157 (ListLongMap!21227 (_ BitVec 64) V!53325 (_ BitVec 64)) Unit!43552)

(assert (=> b!1323197 (= lt!588826 (addStillContains!1157 lt!588835 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k!1164))))

(assert (=> b!1323197 (contains!8720 lt!588835 k!1164)))

(declare-fun lt!588828 () ListLongMap!21227)

(declare-fun lt!588829 () tuple2!23558)

(assert (=> b!1323197 (= lt!588835 (+!4576 lt!588828 lt!588829))))

(declare-fun lt!588831 () Unit!43552)

(assert (=> b!1323197 (= lt!588831 (addStillContains!1157 lt!588828 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1323197 (contains!8720 lt!588828 k!1164)))

(declare-fun lt!588827 () Unit!43552)

(declare-fun lt!588834 () V!53325)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!191 ((_ BitVec 64) (_ BitVec 64) V!53325 ListLongMap!21227) Unit!43552)

(assert (=> b!1323197 (= lt!588827 (lemmaInListMapAfterAddingDiffThenInBefore!191 k!1164 (select (arr!43074 _keys!1609) from!2000) lt!588834 lt!588828))))

(declare-fun lt!588832 () ListLongMap!21227)

(assert (=> b!1323197 (contains!8720 lt!588832 k!1164)))

(declare-fun lt!588830 () Unit!43552)

(assert (=> b!1323197 (= lt!588830 (lemmaInListMapAfterAddingDiffThenInBefore!191 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588832))))

(declare-fun lt!588833 () ListLongMap!21227)

(assert (=> b!1323197 (contains!8720 lt!588833 k!1164)))

(declare-fun lt!588825 () Unit!43552)

(assert (=> b!1323197 (= lt!588825 (lemmaInListMapAfterAddingDiffThenInBefore!191 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588833))))

(assert (=> b!1323197 (= lt!588833 (+!4576 lt!588832 lt!588829))))

(assert (=> b!1323197 (= lt!588829 (tuple2!23559 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1323197 (= lt!588832 (+!4576 lt!588828 (tuple2!23559 (select (arr!43074 _keys!1609) from!2000) lt!588834)))))

(declare-fun get!21738 (ValueCell!17185 V!53325) V!53325)

(declare-fun dynLambda!3613 (Int (_ BitVec 64)) V!53325)

(assert (=> b!1323197 (= lt!588834 (get!21738 (select (arr!43075 _values!1337) from!2000) (dynLambda!3613 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6291 (array!89209 array!89211 (_ BitVec 32) (_ BitVec 32) V!53325 V!53325 (_ BitVec 32) Int) ListLongMap!21227)

(assert (=> b!1323197 (= lt!588828 (getCurrentListMapNoExtraKeys!6291 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1323198 () Bool)

(assert (=> b!1323198 (= e!754415 tp_is_empty!36167)))

(declare-fun mapIsEmpty!55898 () Bool)

(assert (=> mapIsEmpty!55898 mapRes!55898))

(declare-fun b!1323199 () Bool)

(assert (=> b!1323199 (= e!754416 (and e!754414 mapRes!55898))))

(declare-fun condMapEmpty!55898 () Bool)

(declare-fun mapDefault!55898 () ValueCell!17185)

