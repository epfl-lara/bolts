; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111744 () Bool)

(assert start!111744)

(declare-fun b_free!30365 () Bool)

(declare-fun b_next!30365 () Bool)

(assert (=> start!111744 (= b_free!30365 (not b_next!30365))))

(declare-fun tp!106571 () Bool)

(declare-fun b_and!48899 () Bool)

(assert (=> start!111744 (= tp!106571 b_and!48899)))

(declare-fun res!878581 () Bool)

(declare-fun e!754551 () Bool)

(assert (=> start!111744 (=> (not res!878581) (not e!754551))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111744 (= res!878581 (validMask!0 mask!2019))))

(assert (=> start!111744 e!754551))

(declare-datatypes ((array!89245 0))(
  ( (array!89246 (arr!43092 (Array (_ BitVec 32) (_ BitVec 64))) (size!43643 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89245)

(declare-fun array_inv!32487 (array!89245) Bool)

(assert (=> start!111744 (array_inv!32487 _keys!1609)))

(assert (=> start!111744 true))

(declare-fun tp_is_empty!36185 () Bool)

(assert (=> start!111744 tp_is_empty!36185))

(declare-datatypes ((V!53349 0))(
  ( (V!53350 (val!18167 Int)) )
))
(declare-datatypes ((ValueCell!17194 0))(
  ( (ValueCellFull!17194 (v!20795 V!53349)) (EmptyCell!17194) )
))
(declare-datatypes ((array!89247 0))(
  ( (array!89248 (arr!43093 (Array (_ BitVec 32) ValueCell!17194)) (size!43644 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89247)

(declare-fun e!754550 () Bool)

(declare-fun array_inv!32488 (array!89247) Bool)

(assert (=> start!111744 (and (array_inv!32488 _values!1337) e!754550)))

(assert (=> start!111744 tp!106571))

(declare-fun b!1323504 () Bool)

(assert (=> b!1323504 (= e!754551 (not true))))

(declare-datatypes ((tuple2!23572 0))(
  ( (tuple2!23573 (_1!11796 (_ BitVec 64)) (_2!11796 V!53349)) )
))
(declare-datatypes ((List!30746 0))(
  ( (Nil!30743) (Cons!30742 (h!31951 tuple2!23572) (t!44667 List!30746)) )
))
(declare-datatypes ((ListLongMap!21241 0))(
  ( (ListLongMap!21242 (toList!10636 List!30746)) )
))
(declare-fun lt!589122 () ListLongMap!21241)

(declare-fun minValue!1279 () V!53349)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8727 (ListLongMap!21241 (_ BitVec 64)) Bool)

(declare-fun +!4583 (ListLongMap!21241 tuple2!23572) ListLongMap!21241)

(assert (=> b!1323504 (contains!8727 (+!4583 lt!589122 (tuple2!23573 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k!1164)))

(declare-datatypes ((Unit!43566 0))(
  ( (Unit!43567) )
))
(declare-fun lt!589126 () Unit!43566)

(declare-fun addStillContains!1164 (ListLongMap!21241 (_ BitVec 64) V!53349 (_ BitVec 64)) Unit!43566)

(assert (=> b!1323504 (= lt!589126 (addStillContains!1164 lt!589122 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k!1164))))

(assert (=> b!1323504 (contains!8727 lt!589122 k!1164)))

(declare-fun lt!589131 () ListLongMap!21241)

(declare-fun lt!589129 () tuple2!23572)

(assert (=> b!1323504 (= lt!589122 (+!4583 lt!589131 lt!589129))))

(declare-fun lt!589132 () Unit!43566)

(declare-fun zeroValue!1279 () V!53349)

(assert (=> b!1323504 (= lt!589132 (addStillContains!1164 lt!589131 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1323504 (contains!8727 lt!589131 k!1164)))

(declare-fun lt!589127 () V!53349)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun lt!589125 () Unit!43566)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!198 ((_ BitVec 64) (_ BitVec 64) V!53349 ListLongMap!21241) Unit!43566)

(assert (=> b!1323504 (= lt!589125 (lemmaInListMapAfterAddingDiffThenInBefore!198 k!1164 (select (arr!43092 _keys!1609) from!2000) lt!589127 lt!589131))))

(declare-fun lt!589123 () ListLongMap!21241)

(assert (=> b!1323504 (contains!8727 lt!589123 k!1164)))

(declare-fun lt!589128 () Unit!43566)

(assert (=> b!1323504 (= lt!589128 (lemmaInListMapAfterAddingDiffThenInBefore!198 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589123))))

(declare-fun lt!589130 () ListLongMap!21241)

(assert (=> b!1323504 (contains!8727 lt!589130 k!1164)))

(declare-fun lt!589124 () Unit!43566)

(assert (=> b!1323504 (= lt!589124 (lemmaInListMapAfterAddingDiffThenInBefore!198 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589130))))

(assert (=> b!1323504 (= lt!589130 (+!4583 lt!589123 lt!589129))))

(assert (=> b!1323504 (= lt!589129 (tuple2!23573 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1323504 (= lt!589123 (+!4583 lt!589131 (tuple2!23573 (select (arr!43092 _keys!1609) from!2000) lt!589127)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21751 (ValueCell!17194 V!53349) V!53349)

(declare-fun dynLambda!3620 (Int (_ BitVec 64)) V!53349)

(assert (=> b!1323504 (= lt!589127 (get!21751 (select (arr!43093 _values!1337) from!2000) (dynLambda!3620 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6298 (array!89245 array!89247 (_ BitVec 32) (_ BitVec 32) V!53349 V!53349 (_ BitVec 32) Int) ListLongMap!21241)

(assert (=> b!1323504 (= lt!589131 (getCurrentListMapNoExtraKeys!6298 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1323505 () Bool)

(declare-fun res!878577 () Bool)

(assert (=> b!1323505 (=> (not res!878577) (not e!754551))))

(assert (=> b!1323505 (= res!878577 (not (= (select (arr!43092 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1323506 () Bool)

(declare-fun e!754549 () Bool)

(assert (=> b!1323506 (= e!754549 tp_is_empty!36185)))

(declare-fun b!1323507 () Bool)

(declare-fun e!754548 () Bool)

(declare-fun mapRes!55925 () Bool)

(assert (=> b!1323507 (= e!754550 (and e!754548 mapRes!55925))))

(declare-fun condMapEmpty!55925 () Bool)

(declare-fun mapDefault!55925 () ValueCell!17194)

