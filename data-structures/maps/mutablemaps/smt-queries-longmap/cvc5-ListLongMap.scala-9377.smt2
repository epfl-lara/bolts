; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111734 () Bool)

(assert start!111734)

(declare-fun b_free!30355 () Bool)

(declare-fun b_next!30355 () Bool)

(assert (=> start!111734 (= b_free!30355 (not b_next!30355))))

(declare-fun tp!106541 () Bool)

(declare-fun b_and!48879 () Bool)

(assert (=> start!111734 (= tp!106541 b_and!48879)))

(declare-fun mapIsEmpty!55910 () Bool)

(declare-fun mapRes!55910 () Bool)

(assert (=> mapIsEmpty!55910 mapRes!55910))

(declare-fun b!1323329 () Bool)

(declare-fun e!754473 () Bool)

(assert (=> b!1323329 (= e!754473 (not true))))

(declare-datatypes ((V!53337 0))(
  ( (V!53338 (val!18162 Int)) )
))
(declare-datatypes ((tuple2!23564 0))(
  ( (tuple2!23565 (_1!11792 (_ BitVec 64)) (_2!11792 V!53337)) )
))
(declare-datatypes ((List!30738 0))(
  ( (Nil!30735) (Cons!30734 (h!31943 tuple2!23564) (t!44649 List!30738)) )
))
(declare-datatypes ((ListLongMap!21233 0))(
  ( (ListLongMap!21234 (toList!10632 List!30738)) )
))
(declare-fun lt!588965 () ListLongMap!21233)

(declare-fun minValue!1279 () V!53337)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8723 (ListLongMap!21233 (_ BitVec 64)) Bool)

(declare-fun +!4579 (ListLongMap!21233 tuple2!23564) ListLongMap!21233)

(assert (=> b!1323329 (contains!8723 (+!4579 lt!588965 (tuple2!23565 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k!1164)))

(declare-datatypes ((Unit!43558 0))(
  ( (Unit!43559) )
))
(declare-fun lt!588961 () Unit!43558)

(declare-fun addStillContains!1160 (ListLongMap!21233 (_ BitVec 64) V!53337 (_ BitVec 64)) Unit!43558)

(assert (=> b!1323329 (= lt!588961 (addStillContains!1160 lt!588965 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k!1164))))

(assert (=> b!1323329 (contains!8723 lt!588965 k!1164)))

(declare-fun lt!588959 () ListLongMap!21233)

(declare-fun lt!588960 () tuple2!23564)

(assert (=> b!1323329 (= lt!588965 (+!4579 lt!588959 lt!588960))))

(declare-fun zeroValue!1279 () V!53337)

(declare-fun lt!588967 () Unit!43558)

(assert (=> b!1323329 (= lt!588967 (addStillContains!1160 lt!588959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1323329 (contains!8723 lt!588959 k!1164)))

(declare-datatypes ((array!89225 0))(
  ( (array!89226 (arr!43082 (Array (_ BitVec 32) (_ BitVec 64))) (size!43633 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89225)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun lt!588963 () V!53337)

(declare-fun lt!588957 () Unit!43558)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!194 ((_ BitVec 64) (_ BitVec 64) V!53337 ListLongMap!21233) Unit!43558)

(assert (=> b!1323329 (= lt!588957 (lemmaInListMapAfterAddingDiffThenInBefore!194 k!1164 (select (arr!43082 _keys!1609) from!2000) lt!588963 lt!588959))))

(declare-fun lt!588962 () ListLongMap!21233)

(assert (=> b!1323329 (contains!8723 lt!588962 k!1164)))

(declare-fun lt!588964 () Unit!43558)

(assert (=> b!1323329 (= lt!588964 (lemmaInListMapAfterAddingDiffThenInBefore!194 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588962))))

(declare-fun lt!588958 () ListLongMap!21233)

(assert (=> b!1323329 (contains!8723 lt!588958 k!1164)))

(declare-fun lt!588966 () Unit!43558)

(assert (=> b!1323329 (= lt!588966 (lemmaInListMapAfterAddingDiffThenInBefore!194 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588958))))

(assert (=> b!1323329 (= lt!588958 (+!4579 lt!588962 lt!588960))))

(assert (=> b!1323329 (= lt!588960 (tuple2!23565 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1323329 (= lt!588962 (+!4579 lt!588959 (tuple2!23565 (select (arr!43082 _keys!1609) from!2000) lt!588963)))))

(declare-datatypes ((ValueCell!17189 0))(
  ( (ValueCellFull!17189 (v!20790 V!53337)) (EmptyCell!17189) )
))
(declare-datatypes ((array!89227 0))(
  ( (array!89228 (arr!43083 (Array (_ BitVec 32) ValueCell!17189)) (size!43634 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89227)

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21745 (ValueCell!17189 V!53337) V!53337)

(declare-fun dynLambda!3616 (Int (_ BitVec 64)) V!53337)

(assert (=> b!1323329 (= lt!588963 (get!21745 (select (arr!43083 _values!1337) from!2000) (dynLambda!3616 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6294 (array!89225 array!89227 (_ BitVec 32) (_ BitVec 32) V!53337 V!53337 (_ BitVec 32) Int) ListLongMap!21233)

(assert (=> b!1323329 (= lt!588959 (getCurrentListMapNoExtraKeys!6294 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1323330 () Bool)

(declare-fun res!878459 () Bool)

(assert (=> b!1323330 (=> (not res!878459) (not e!754473))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89225 (_ BitVec 32)) Bool)

(assert (=> b!1323330 (= res!878459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!878463 () Bool)

(assert (=> start!111734 (=> (not res!878463) (not e!754473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111734 (= res!878463 (validMask!0 mask!2019))))

(assert (=> start!111734 e!754473))

(declare-fun array_inv!32481 (array!89225) Bool)

(assert (=> start!111734 (array_inv!32481 _keys!1609)))

(assert (=> start!111734 true))

(declare-fun tp_is_empty!36175 () Bool)

(assert (=> start!111734 tp_is_empty!36175))

(declare-fun e!754476 () Bool)

(declare-fun array_inv!32482 (array!89227) Bool)

(assert (=> start!111734 (and (array_inv!32482 _values!1337) e!754476)))

(assert (=> start!111734 tp!106541))

(declare-fun b!1323331 () Bool)

(declare-fun res!878460 () Bool)

(assert (=> b!1323331 (=> (not res!878460) (not e!754473))))

(assert (=> b!1323331 (= res!878460 (and (= (size!43634 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43633 _keys!1609) (size!43634 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1323332 () Bool)

(declare-fun res!878464 () Bool)

(assert (=> b!1323332 (=> (not res!878464) (not e!754473))))

(declare-fun getCurrentListMap!5571 (array!89225 array!89227 (_ BitVec 32) (_ BitVec 32) V!53337 V!53337 (_ BitVec 32) Int) ListLongMap!21233)

(assert (=> b!1323332 (= res!878464 (contains!8723 (getCurrentListMap!5571 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1323333 () Bool)

(declare-fun res!878458 () Bool)

(assert (=> b!1323333 (=> (not res!878458) (not e!754473))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1323333 (= res!878458 (validKeyInArray!0 (select (arr!43082 _keys!1609) from!2000)))))

(declare-fun b!1323334 () Bool)

(declare-fun e!754475 () Bool)

(assert (=> b!1323334 (= e!754475 tp_is_empty!36175)))

(declare-fun b!1323335 () Bool)

(declare-fun res!878461 () Bool)

(assert (=> b!1323335 (=> (not res!878461) (not e!754473))))

(assert (=> b!1323335 (= res!878461 (not (= (select (arr!43082 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1323336 () Bool)

(declare-fun e!754477 () Bool)

(assert (=> b!1323336 (= e!754477 tp_is_empty!36175)))

(declare-fun b!1323337 () Bool)

(declare-fun res!878462 () Bool)

(assert (=> b!1323337 (=> (not res!878462) (not e!754473))))

(assert (=> b!1323337 (= res!878462 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43633 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55910 () Bool)

(declare-fun tp!106542 () Bool)

(assert (=> mapNonEmpty!55910 (= mapRes!55910 (and tp!106542 e!754475))))

(declare-fun mapKey!55910 () (_ BitVec 32))

(declare-fun mapValue!55910 () ValueCell!17189)

(declare-fun mapRest!55910 () (Array (_ BitVec 32) ValueCell!17189))

(assert (=> mapNonEmpty!55910 (= (arr!43083 _values!1337) (store mapRest!55910 mapKey!55910 mapValue!55910))))

(declare-fun b!1323338 () Bool)

(declare-fun res!878457 () Bool)

(assert (=> b!1323338 (=> (not res!878457) (not e!754473))))

(declare-datatypes ((List!30739 0))(
  ( (Nil!30736) (Cons!30735 (h!31944 (_ BitVec 64)) (t!44650 List!30739)) )
))
(declare-fun arrayNoDuplicates!0 (array!89225 (_ BitVec 32) List!30739) Bool)

(assert (=> b!1323338 (= res!878457 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30736))))

(declare-fun b!1323339 () Bool)

(assert (=> b!1323339 (= e!754476 (and e!754477 mapRes!55910))))

(declare-fun condMapEmpty!55910 () Bool)

(declare-fun mapDefault!55910 () ValueCell!17189)

