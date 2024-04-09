; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111716 () Bool)

(assert start!111716)

(declare-fun b_free!30337 () Bool)

(declare-fun b_next!30337 () Bool)

(assert (=> start!111716 (= b_free!30337 (not b_next!30337))))

(declare-fun tp!106487 () Bool)

(declare-fun b_and!48843 () Bool)

(assert (=> start!111716 (= tp!106487 b_and!48843)))

(declare-fun b!1323014 () Bool)

(declare-fun e!754342 () Bool)

(declare-fun tp_is_empty!36157 () Bool)

(assert (=> b!1323014 (= e!754342 tp_is_empty!36157)))

(declare-fun b!1323015 () Bool)

(declare-fun res!878243 () Bool)

(declare-fun e!754338 () Bool)

(assert (=> b!1323015 (=> (not res!878243) (not e!754338))))

(declare-datatypes ((array!89189 0))(
  ( (array!89190 (arr!43064 (Array (_ BitVec 32) (_ BitVec 64))) (size!43615 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89189)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89189 (_ BitVec 32)) Bool)

(assert (=> b!1323015 (= res!878243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1323016 () Bool)

(assert (=> b!1323016 (= e!754338 (not true))))

(declare-datatypes ((V!53313 0))(
  ( (V!53314 (val!18153 Int)) )
))
(declare-datatypes ((tuple2!23552 0))(
  ( (tuple2!23553 (_1!11786 (_ BitVec 64)) (_2!11786 V!53313)) )
))
(declare-datatypes ((List!30725 0))(
  ( (Nil!30722) (Cons!30721 (h!31930 tuple2!23552) (t!44618 List!30725)) )
))
(declare-datatypes ((ListLongMap!21221 0))(
  ( (ListLongMap!21222 (toList!10626 List!30725)) )
))
(declare-fun lt!588665 () ListLongMap!21221)

(declare-fun minValue!1279 () V!53313)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8717 (ListLongMap!21221 (_ BitVec 64)) Bool)

(declare-fun +!4573 (ListLongMap!21221 tuple2!23552) ListLongMap!21221)

(assert (=> b!1323016 (contains!8717 (+!4573 lt!588665 (tuple2!23553 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k!1164)))

(declare-datatypes ((Unit!43546 0))(
  ( (Unit!43547) )
))
(declare-fun lt!588661 () Unit!43546)

(declare-fun addStillContains!1154 (ListLongMap!21221 (_ BitVec 64) V!53313 (_ BitVec 64)) Unit!43546)

(assert (=> b!1323016 (= lt!588661 (addStillContains!1154 lt!588665 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k!1164))))

(assert (=> b!1323016 (contains!8717 lt!588665 k!1164)))

(declare-fun lt!588663 () ListLongMap!21221)

(declare-fun lt!588670 () tuple2!23552)

(assert (=> b!1323016 (= lt!588665 (+!4573 lt!588663 lt!588670))))

(declare-fun zeroValue!1279 () V!53313)

(declare-fun lt!588664 () Unit!43546)

(assert (=> b!1323016 (= lt!588664 (addStillContains!1154 lt!588663 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1323016 (contains!8717 lt!588663 k!1164)))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun lt!588660 () V!53313)

(declare-fun lt!588662 () Unit!43546)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!188 ((_ BitVec 64) (_ BitVec 64) V!53313 ListLongMap!21221) Unit!43546)

(assert (=> b!1323016 (= lt!588662 (lemmaInListMapAfterAddingDiffThenInBefore!188 k!1164 (select (arr!43064 _keys!1609) from!2000) lt!588660 lt!588663))))

(declare-fun lt!588669 () ListLongMap!21221)

(assert (=> b!1323016 (contains!8717 lt!588669 k!1164)))

(declare-fun lt!588668 () Unit!43546)

(assert (=> b!1323016 (= lt!588668 (lemmaInListMapAfterAddingDiffThenInBefore!188 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588669))))

(declare-fun lt!588667 () ListLongMap!21221)

(assert (=> b!1323016 (contains!8717 lt!588667 k!1164)))

(declare-fun lt!588666 () Unit!43546)

(assert (=> b!1323016 (= lt!588666 (lemmaInListMapAfterAddingDiffThenInBefore!188 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588667))))

(assert (=> b!1323016 (= lt!588667 (+!4573 lt!588669 lt!588670))))

(assert (=> b!1323016 (= lt!588670 (tuple2!23553 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1323016 (= lt!588669 (+!4573 lt!588663 (tuple2!23553 (select (arr!43064 _keys!1609) from!2000) lt!588660)))))

(declare-datatypes ((ValueCell!17180 0))(
  ( (ValueCellFull!17180 (v!20781 V!53313)) (EmptyCell!17180) )
))
(declare-datatypes ((array!89191 0))(
  ( (array!89192 (arr!43065 (Array (_ BitVec 32) ValueCell!17180)) (size!43616 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89191)

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21733 (ValueCell!17180 V!53313) V!53313)

(declare-fun dynLambda!3610 (Int (_ BitVec 64)) V!53313)

(assert (=> b!1323016 (= lt!588660 (get!21733 (select (arr!43065 _values!1337) from!2000) (dynLambda!3610 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6288 (array!89189 array!89191 (_ BitVec 32) (_ BitVec 32) V!53313 V!53313 (_ BitVec 32) Int) ListLongMap!21221)

(assert (=> b!1323016 (= lt!588663 (getCurrentListMapNoExtraKeys!6288 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun mapIsEmpty!55883 () Bool)

(declare-fun mapRes!55883 () Bool)

(assert (=> mapIsEmpty!55883 mapRes!55883))

(declare-fun b!1323017 () Bool)

(declare-fun e!754339 () Bool)

(assert (=> b!1323017 (= e!754339 (and e!754342 mapRes!55883))))

(declare-fun condMapEmpty!55883 () Bool)

(declare-fun mapDefault!55883 () ValueCell!17180)

