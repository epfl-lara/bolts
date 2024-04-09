; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111740 () Bool)

(assert start!111740)

(declare-fun b_free!30361 () Bool)

(declare-fun b_next!30361 () Bool)

(assert (=> start!111740 (= b_free!30361 (not b_next!30361))))

(declare-fun tp!106560 () Bool)

(declare-fun b_and!48891 () Bool)

(assert (=> start!111740 (= tp!106560 b_and!48891)))

(declare-fun b!1323434 () Bool)

(declare-fun e!754520 () Bool)

(assert (=> b!1323434 (= e!754520 (not true))))

(declare-datatypes ((V!53345 0))(
  ( (V!53346 (val!18165 Int)) )
))
(declare-datatypes ((tuple2!23568 0))(
  ( (tuple2!23569 (_1!11794 (_ BitVec 64)) (_2!11794 V!53345)) )
))
(declare-datatypes ((List!30743 0))(
  ( (Nil!30740) (Cons!30739 (h!31948 tuple2!23568) (t!44660 List!30743)) )
))
(declare-datatypes ((ListLongMap!21237 0))(
  ( (ListLongMap!21238 (toList!10634 List!30743)) )
))
(declare-fun lt!589060 () ListLongMap!21237)

(declare-fun minValue!1279 () V!53345)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8725 (ListLongMap!21237 (_ BitVec 64)) Bool)

(declare-fun +!4581 (ListLongMap!21237 tuple2!23568) ListLongMap!21237)

(assert (=> b!1323434 (contains!8725 (+!4581 lt!589060 (tuple2!23569 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k!1164)))

(declare-datatypes ((Unit!43562 0))(
  ( (Unit!43563) )
))
(declare-fun lt!589062 () Unit!43562)

(declare-fun addStillContains!1162 (ListLongMap!21237 (_ BitVec 64) V!53345 (_ BitVec 64)) Unit!43562)

(assert (=> b!1323434 (= lt!589062 (addStillContains!1162 lt!589060 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k!1164))))

(assert (=> b!1323434 (contains!8725 lt!589060 k!1164)))

(declare-fun lt!589061 () ListLongMap!21237)

(declare-fun lt!589066 () tuple2!23568)

(assert (=> b!1323434 (= lt!589060 (+!4581 lt!589061 lt!589066))))

(declare-fun zeroValue!1279 () V!53345)

(declare-fun lt!589065 () Unit!43562)

(assert (=> b!1323434 (= lt!589065 (addStillContains!1162 lt!589061 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1323434 (contains!8725 lt!589061 k!1164)))

(declare-datatypes ((array!89237 0))(
  ( (array!89238 (arr!43088 (Array (_ BitVec 32) (_ BitVec 64))) (size!43639 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89237)

(declare-fun lt!589063 () Unit!43562)

(declare-fun lt!589058 () V!53345)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!196 ((_ BitVec 64) (_ BitVec 64) V!53345 ListLongMap!21237) Unit!43562)

(assert (=> b!1323434 (= lt!589063 (lemmaInListMapAfterAddingDiffThenInBefore!196 k!1164 (select (arr!43088 _keys!1609) from!2000) lt!589058 lt!589061))))

(declare-fun lt!589059 () ListLongMap!21237)

(assert (=> b!1323434 (contains!8725 lt!589059 k!1164)))

(declare-fun lt!589064 () Unit!43562)

(assert (=> b!1323434 (= lt!589064 (lemmaInListMapAfterAddingDiffThenInBefore!196 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589059))))

(declare-fun lt!589057 () ListLongMap!21237)

(assert (=> b!1323434 (contains!8725 lt!589057 k!1164)))

(declare-fun lt!589056 () Unit!43562)

(assert (=> b!1323434 (= lt!589056 (lemmaInListMapAfterAddingDiffThenInBefore!196 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589057))))

(assert (=> b!1323434 (= lt!589057 (+!4581 lt!589059 lt!589066))))

(assert (=> b!1323434 (= lt!589066 (tuple2!23569 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1323434 (= lt!589059 (+!4581 lt!589061 (tuple2!23569 (select (arr!43088 _keys!1609) from!2000) lt!589058)))))

(declare-datatypes ((ValueCell!17192 0))(
  ( (ValueCellFull!17192 (v!20793 V!53345)) (EmptyCell!17192) )
))
(declare-datatypes ((array!89239 0))(
  ( (array!89240 (arr!43089 (Array (_ BitVec 32) ValueCell!17192)) (size!43640 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89239)

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21749 (ValueCell!17192 V!53345) V!53345)

(declare-fun dynLambda!3618 (Int (_ BitVec 64)) V!53345)

(assert (=> b!1323434 (= lt!589058 (get!21749 (select (arr!43089 _values!1337) from!2000) (dynLambda!3618 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6296 (array!89237 array!89239 (_ BitVec 32) (_ BitVec 32) V!53345 V!53345 (_ BitVec 32) Int) ListLongMap!21237)

(assert (=> b!1323434 (= lt!589061 (getCurrentListMapNoExtraKeys!6296 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun mapIsEmpty!55919 () Bool)

(declare-fun mapRes!55919 () Bool)

(assert (=> mapIsEmpty!55919 mapRes!55919))

(declare-fun b!1323435 () Bool)

(declare-fun res!878536 () Bool)

(assert (=> b!1323435 (=> (not res!878536) (not e!754520))))

(assert (=> b!1323435 (= res!878536 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43639 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1323436 () Bool)

(declare-fun res!878535 () Bool)

(assert (=> b!1323436 (=> (not res!878535) (not e!754520))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89237 (_ BitVec 32)) Bool)

(assert (=> b!1323436 (= res!878535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1323437 () Bool)

(declare-fun e!754518 () Bool)

(declare-fun tp_is_empty!36181 () Bool)

(assert (=> b!1323437 (= e!754518 tp_is_empty!36181)))

(declare-fun b!1323438 () Bool)

(declare-fun e!754522 () Bool)

(declare-fun e!754519 () Bool)

(assert (=> b!1323438 (= e!754522 (and e!754519 mapRes!55919))))

(declare-fun condMapEmpty!55919 () Bool)

(declare-fun mapDefault!55919 () ValueCell!17192)

