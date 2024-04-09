; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111696 () Bool)

(assert start!111696)

(declare-fun b_free!30317 () Bool)

(declare-fun b_next!30317 () Bool)

(assert (=> start!111696 (= b_free!30317 (not b_next!30317))))

(declare-fun tp!106427 () Bool)

(declare-fun b_and!48803 () Bool)

(assert (=> start!111696 (= tp!106427 b_and!48803)))

(declare-fun mapNonEmpty!55853 () Bool)

(declare-fun mapRes!55853 () Bool)

(declare-fun tp!106428 () Bool)

(declare-fun e!754190 () Bool)

(assert (=> mapNonEmpty!55853 (= mapRes!55853 (and tp!106428 e!754190))))

(declare-datatypes ((V!53285 0))(
  ( (V!53286 (val!18143 Int)) )
))
(declare-datatypes ((ValueCell!17170 0))(
  ( (ValueCellFull!17170 (v!20771 V!53285)) (EmptyCell!17170) )
))
(declare-fun mapValue!55853 () ValueCell!17170)

(declare-fun mapRest!55853 () (Array (_ BitVec 32) ValueCell!17170))

(declare-datatypes ((array!89151 0))(
  ( (array!89152 (arr!43045 (Array (_ BitVec 32) ValueCell!17170)) (size!43596 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89151)

(declare-fun mapKey!55853 () (_ BitVec 32))

(assert (=> mapNonEmpty!55853 (= (arr!43045 _values!1337) (store mapRest!55853 mapKey!55853 mapValue!55853))))

(declare-fun b!1322665 () Bool)

(declare-fun res!878002 () Bool)

(declare-fun e!754189 () Bool)

(assert (=> b!1322665 (=> (not res!878002) (not e!754189))))

(declare-datatypes ((array!89153 0))(
  ( (array!89154 (arr!43046 (Array (_ BitVec 32) (_ BitVec 64))) (size!43597 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89153)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1322665 (= res!878002 (not (= (select (arr!43046 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1322666 () Bool)

(declare-fun tp_is_empty!36137 () Bool)

(assert (=> b!1322666 (= e!754190 tp_is_empty!36137)))

(declare-fun b!1322667 () Bool)

(declare-fun res!878008 () Bool)

(assert (=> b!1322667 (=> (not res!878008) (not e!754189))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89153 (_ BitVec 32)) Bool)

(assert (=> b!1322667 (= res!878008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322668 () Bool)

(declare-fun res!878007 () Bool)

(assert (=> b!1322668 (=> (not res!878007) (not e!754189))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1322668 (= res!878007 (validKeyInArray!0 (select (arr!43046 _keys!1609) from!2000)))))

(declare-fun b!1322669 () Bool)

(assert (=> b!1322669 (= e!754189 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!23540 0))(
  ( (tuple2!23541 (_1!11780 (_ BitVec 64)) (_2!11780 V!53285)) )
))
(declare-datatypes ((List!30714 0))(
  ( (Nil!30711) (Cons!30710 (h!31919 tuple2!23540) (t!44587 List!30714)) )
))
(declare-datatypes ((ListLongMap!21209 0))(
  ( (ListLongMap!21210 (toList!10620 List!30714)) )
))
(declare-fun lt!588356 () ListLongMap!21209)

(declare-fun lt!588352 () tuple2!23540)

(declare-fun contains!8711 (ListLongMap!21209 (_ BitVec 64)) Bool)

(declare-fun +!4568 (ListLongMap!21209 tuple2!23540) ListLongMap!21209)

(assert (=> b!1322669 (contains!8711 (+!4568 lt!588356 lt!588352) k!1164)))

(declare-datatypes ((Unit!43536 0))(
  ( (Unit!43537) )
))
(declare-fun lt!588357 () Unit!43536)

(declare-fun zeroValue!1279 () V!53285)

(declare-fun addStillContains!1149 (ListLongMap!21209 (_ BitVec 64) V!53285 (_ BitVec 64)) Unit!43536)

(assert (=> b!1322669 (= lt!588357 (addStillContains!1149 lt!588356 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1322669 (contains!8711 lt!588356 k!1164)))

(declare-fun lt!588354 () V!53285)

(declare-fun lt!588358 () Unit!43536)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!183 ((_ BitVec 64) (_ BitVec 64) V!53285 ListLongMap!21209) Unit!43536)

(assert (=> b!1322669 (= lt!588358 (lemmaInListMapAfterAddingDiffThenInBefore!183 k!1164 (select (arr!43046 _keys!1609) from!2000) lt!588354 lt!588356))))

(declare-fun lt!588353 () ListLongMap!21209)

(assert (=> b!1322669 (contains!8711 lt!588353 k!1164)))

(declare-fun lt!588355 () Unit!43536)

(assert (=> b!1322669 (= lt!588355 (lemmaInListMapAfterAddingDiffThenInBefore!183 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588353))))

(declare-fun lt!588350 () ListLongMap!21209)

(assert (=> b!1322669 (contains!8711 lt!588350 k!1164)))

(declare-fun minValue!1279 () V!53285)

(declare-fun lt!588351 () Unit!43536)

(assert (=> b!1322669 (= lt!588351 (lemmaInListMapAfterAddingDiffThenInBefore!183 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588350))))

(assert (=> b!1322669 (= lt!588350 (+!4568 lt!588353 lt!588352))))

(assert (=> b!1322669 (= lt!588352 (tuple2!23541 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1322669 (= lt!588353 (+!4568 lt!588356 (tuple2!23541 (select (arr!43046 _keys!1609) from!2000) lt!588354)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21720 (ValueCell!17170 V!53285) V!53285)

(declare-fun dynLambda!3605 (Int (_ BitVec 64)) V!53285)

(assert (=> b!1322669 (= lt!588354 (get!21720 (select (arr!43045 _values!1337) from!2000) (dynLambda!3605 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6283 (array!89153 array!89151 (_ BitVec 32) (_ BitVec 32) V!53285 V!53285 (_ BitVec 32) Int) ListLongMap!21209)

(assert (=> b!1322669 (= lt!588356 (getCurrentListMapNoExtraKeys!6283 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1322670 () Bool)

(declare-fun res!878003 () Bool)

(assert (=> b!1322670 (=> (not res!878003) (not e!754189))))

(assert (=> b!1322670 (= res!878003 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43597 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1322671 () Bool)

(declare-fun res!878006 () Bool)

(assert (=> b!1322671 (=> (not res!878006) (not e!754189))))

(declare-fun getCurrentListMap!5560 (array!89153 array!89151 (_ BitVec 32) (_ BitVec 32) V!53285 V!53285 (_ BitVec 32) Int) ListLongMap!21209)

(assert (=> b!1322671 (= res!878006 (contains!8711 (getCurrentListMap!5560 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun res!878004 () Bool)

(assert (=> start!111696 (=> (not res!878004) (not e!754189))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111696 (= res!878004 (validMask!0 mask!2019))))

(assert (=> start!111696 e!754189))

(declare-fun array_inv!32453 (array!89153) Bool)

(assert (=> start!111696 (array_inv!32453 _keys!1609)))

(assert (=> start!111696 true))

(assert (=> start!111696 tp_is_empty!36137))

(declare-fun e!754192 () Bool)

(declare-fun array_inv!32454 (array!89151) Bool)

(assert (=> start!111696 (and (array_inv!32454 _values!1337) e!754192)))

(assert (=> start!111696 tp!106427))

(declare-fun b!1322664 () Bool)

(declare-fun res!878001 () Bool)

(assert (=> b!1322664 (=> (not res!878001) (not e!754189))))

(declare-datatypes ((List!30715 0))(
  ( (Nil!30712) (Cons!30711 (h!31920 (_ BitVec 64)) (t!44588 List!30715)) )
))
(declare-fun arrayNoDuplicates!0 (array!89153 (_ BitVec 32) List!30715) Bool)

(assert (=> b!1322664 (= res!878001 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30712))))

(declare-fun b!1322672 () Bool)

(declare-fun e!754188 () Bool)

(assert (=> b!1322672 (= e!754192 (and e!754188 mapRes!55853))))

(declare-fun condMapEmpty!55853 () Bool)

(declare-fun mapDefault!55853 () ValueCell!17170)

