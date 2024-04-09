; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111732 () Bool)

(assert start!111732)

(declare-fun b_free!30353 () Bool)

(declare-fun b_next!30353 () Bool)

(assert (=> start!111732 (= b_free!30353 (not b_next!30353))))

(declare-fun tp!106536 () Bool)

(declare-fun b_and!48875 () Bool)

(assert (=> start!111732 (= tp!106536 b_and!48875)))

(declare-fun b!1323294 () Bool)

(declare-fun e!754458 () Bool)

(assert (=> b!1323294 (= e!754458 (not true))))

(declare-datatypes ((V!53333 0))(
  ( (V!53334 (val!18161 Int)) )
))
(declare-datatypes ((tuple2!23562 0))(
  ( (tuple2!23563 (_1!11791 (_ BitVec 64)) (_2!11791 V!53333)) )
))
(declare-datatypes ((List!30736 0))(
  ( (Nil!30733) (Cons!30732 (h!31941 tuple2!23562) (t!44645 List!30736)) )
))
(declare-datatypes ((ListLongMap!21231 0))(
  ( (ListLongMap!21232 (toList!10631 List!30736)) )
))
(declare-fun lt!588932 () ListLongMap!21231)

(declare-fun minValue!1279 () V!53333)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8722 (ListLongMap!21231 (_ BitVec 64)) Bool)

(declare-fun +!4578 (ListLongMap!21231 tuple2!23562) ListLongMap!21231)

(assert (=> b!1323294 (contains!8722 (+!4578 lt!588932 (tuple2!23563 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k!1164)))

(declare-datatypes ((Unit!43556 0))(
  ( (Unit!43557) )
))
(declare-fun lt!588927 () Unit!43556)

(declare-fun addStillContains!1159 (ListLongMap!21231 (_ BitVec 64) V!53333 (_ BitVec 64)) Unit!43556)

(assert (=> b!1323294 (= lt!588927 (addStillContains!1159 lt!588932 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k!1164))))

(assert (=> b!1323294 (contains!8722 lt!588932 k!1164)))

(declare-fun lt!588926 () ListLongMap!21231)

(declare-fun lt!588931 () tuple2!23562)

(assert (=> b!1323294 (= lt!588932 (+!4578 lt!588926 lt!588931))))

(declare-fun zeroValue!1279 () V!53333)

(declare-fun lt!588930 () Unit!43556)

(assert (=> b!1323294 (= lt!588930 (addStillContains!1159 lt!588926 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1323294 (contains!8722 lt!588926 k!1164)))

(declare-datatypes ((array!89221 0))(
  ( (array!89222 (arr!43080 (Array (_ BitVec 32) (_ BitVec 64))) (size!43631 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89221)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun lt!588925 () Unit!43556)

(declare-fun lt!588928 () V!53333)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!193 ((_ BitVec 64) (_ BitVec 64) V!53333 ListLongMap!21231) Unit!43556)

(assert (=> b!1323294 (= lt!588925 (lemmaInListMapAfterAddingDiffThenInBefore!193 k!1164 (select (arr!43080 _keys!1609) from!2000) lt!588928 lt!588926))))

(declare-fun lt!588924 () ListLongMap!21231)

(assert (=> b!1323294 (contains!8722 lt!588924 k!1164)))

(declare-fun lt!588933 () Unit!43556)

(assert (=> b!1323294 (= lt!588933 (lemmaInListMapAfterAddingDiffThenInBefore!193 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588924))))

(declare-fun lt!588929 () ListLongMap!21231)

(assert (=> b!1323294 (contains!8722 lt!588929 k!1164)))

(declare-fun lt!588934 () Unit!43556)

(assert (=> b!1323294 (= lt!588934 (lemmaInListMapAfterAddingDiffThenInBefore!193 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588929))))

(assert (=> b!1323294 (= lt!588929 (+!4578 lt!588924 lt!588931))))

(assert (=> b!1323294 (= lt!588931 (tuple2!23563 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1323294 (= lt!588924 (+!4578 lt!588926 (tuple2!23563 (select (arr!43080 _keys!1609) from!2000) lt!588928)))))

(declare-datatypes ((ValueCell!17188 0))(
  ( (ValueCellFull!17188 (v!20789 V!53333)) (EmptyCell!17188) )
))
(declare-datatypes ((array!89223 0))(
  ( (array!89224 (arr!43081 (Array (_ BitVec 32) ValueCell!17188)) (size!43632 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89223)

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21742 (ValueCell!17188 V!53333) V!53333)

(declare-fun dynLambda!3615 (Int (_ BitVec 64)) V!53333)

(assert (=> b!1323294 (= lt!588928 (get!21742 (select (arr!43081 _values!1337) from!2000) (dynLambda!3615 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6293 (array!89221 array!89223 (_ BitVec 32) (_ BitVec 32) V!53333 V!53333 (_ BitVec 32) Int) ListLongMap!21231)

(assert (=> b!1323294 (= lt!588926 (getCurrentListMapNoExtraKeys!6293 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1323295 () Bool)

(declare-fun res!878436 () Bool)

(assert (=> b!1323295 (=> (not res!878436) (not e!754458))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89221 (_ BitVec 32)) Bool)

(assert (=> b!1323295 (= res!878436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapNonEmpty!55907 () Bool)

(declare-fun mapRes!55907 () Bool)

(declare-fun tp!106535 () Bool)

(declare-fun e!754461 () Bool)

(assert (=> mapNonEmpty!55907 (= mapRes!55907 (and tp!106535 e!754461))))

(declare-fun mapValue!55907 () ValueCell!17188)

(declare-fun mapKey!55907 () (_ BitVec 32))

(declare-fun mapRest!55907 () (Array (_ BitVec 32) ValueCell!17188))

(assert (=> mapNonEmpty!55907 (= (arr!43081 _values!1337) (store mapRest!55907 mapKey!55907 mapValue!55907))))

(declare-fun b!1323296 () Bool)

(declare-fun res!878435 () Bool)

(assert (=> b!1323296 (=> (not res!878435) (not e!754458))))

(assert (=> b!1323296 (= res!878435 (not (= (select (arr!43080 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1323297 () Bool)

(declare-fun res!878433 () Bool)

(assert (=> b!1323297 (=> (not res!878433) (not e!754458))))

(assert (=> b!1323297 (= res!878433 (and (= (size!43632 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43631 _keys!1609) (size!43632 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1323298 () Bool)

(declare-fun res!878440 () Bool)

(assert (=> b!1323298 (=> (not res!878440) (not e!754458))))

(assert (=> b!1323298 (= res!878440 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43631 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1323299 () Bool)

(declare-fun res!878437 () Bool)

(assert (=> b!1323299 (=> (not res!878437) (not e!754458))))

(declare-fun getCurrentListMap!5570 (array!89221 array!89223 (_ BitVec 32) (_ BitVec 32) V!53333 V!53333 (_ BitVec 32) Int) ListLongMap!21231)

(assert (=> b!1323299 (= res!878437 (contains!8722 (getCurrentListMap!5570 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun res!878434 () Bool)

(assert (=> start!111732 (=> (not res!878434) (not e!754458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111732 (= res!878434 (validMask!0 mask!2019))))

(assert (=> start!111732 e!754458))

(declare-fun array_inv!32479 (array!89221) Bool)

(assert (=> start!111732 (array_inv!32479 _keys!1609)))

(assert (=> start!111732 true))

(declare-fun tp_is_empty!36173 () Bool)

(assert (=> start!111732 tp_is_empty!36173))

(declare-fun e!754460 () Bool)

(declare-fun array_inv!32480 (array!89223) Bool)

(assert (=> start!111732 (and (array_inv!32480 _values!1337) e!754460)))

(assert (=> start!111732 tp!106536))

(declare-fun b!1323300 () Bool)

(declare-fun res!878439 () Bool)

(assert (=> b!1323300 (=> (not res!878439) (not e!754458))))

(declare-datatypes ((List!30737 0))(
  ( (Nil!30734) (Cons!30733 (h!31942 (_ BitVec 64)) (t!44646 List!30737)) )
))
(declare-fun arrayNoDuplicates!0 (array!89221 (_ BitVec 32) List!30737) Bool)

(assert (=> b!1323300 (= res!878439 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30734))))

(declare-fun b!1323301 () Bool)

(assert (=> b!1323301 (= e!754461 tp_is_empty!36173)))

(declare-fun b!1323302 () Bool)

(declare-fun e!754459 () Bool)

(assert (=> b!1323302 (= e!754459 tp_is_empty!36173)))

(declare-fun mapIsEmpty!55907 () Bool)

(assert (=> mapIsEmpty!55907 mapRes!55907))

(declare-fun b!1323303 () Bool)

(assert (=> b!1323303 (= e!754460 (and e!754459 mapRes!55907))))

(declare-fun condMapEmpty!55907 () Bool)

(declare-fun mapDefault!55907 () ValueCell!17188)

