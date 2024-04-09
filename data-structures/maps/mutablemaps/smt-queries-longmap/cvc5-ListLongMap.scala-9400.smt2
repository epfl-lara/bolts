; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111930 () Bool)

(assert start!111930)

(declare-fun b_free!30493 () Bool)

(declare-fun b_next!30493 () Bool)

(assert (=> start!111930 (= b_free!30493 (not b_next!30493))))

(declare-fun tp!106959 () Bool)

(declare-fun b_and!49091 () Bool)

(assert (=> start!111930 (= tp!106959 b_and!49091)))

(declare-fun b!1325807 () Bool)

(declare-fun res!880013 () Bool)

(declare-fun e!755770 () Bool)

(assert (=> b!1325807 (=> (not res!880013) (not e!755770))))

(declare-datatypes ((array!89495 0))(
  ( (array!89496 (arr!43216 (Array (_ BitVec 32) (_ BitVec 64))) (size!43767 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89495)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89495 (_ BitVec 32)) Bool)

(assert (=> b!1325807 (= res!880013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapNonEmpty!56121 () Bool)

(declare-fun mapRes!56121 () Bool)

(declare-fun tp!106960 () Bool)

(declare-fun e!755766 () Bool)

(assert (=> mapNonEmpty!56121 (= mapRes!56121 (and tp!106960 e!755766))))

(declare-fun mapKey!56121 () (_ BitVec 32))

(declare-datatypes ((V!53521 0))(
  ( (V!53522 (val!18231 Int)) )
))
(declare-datatypes ((ValueCell!17258 0))(
  ( (ValueCellFull!17258 (v!20862 V!53521)) (EmptyCell!17258) )
))
(declare-fun mapRest!56121 () (Array (_ BitVec 32) ValueCell!17258))

(declare-fun mapValue!56121 () ValueCell!17258)

(declare-datatypes ((array!89497 0))(
  ( (array!89498 (arr!43217 (Array (_ BitVec 32) ValueCell!17258)) (size!43768 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89497)

(assert (=> mapNonEmpty!56121 (= (arr!43217 _values!1337) (store mapRest!56121 mapKey!56121 mapValue!56121))))

(declare-fun b!1325808 () Bool)

(declare-fun res!880017 () Bool)

(assert (=> b!1325808 (=> (not res!880017) (not e!755770))))

(declare-datatypes ((List!30836 0))(
  ( (Nil!30833) (Cons!30832 (h!32041 (_ BitVec 64)) (t!44807 List!30836)) )
))
(declare-fun arrayNoDuplicates!0 (array!89495 (_ BitVec 32) List!30836) Bool)

(assert (=> b!1325808 (= res!880017 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30833))))

(declare-fun b!1325809 () Bool)

(declare-fun res!880016 () Bool)

(assert (=> b!1325809 (=> (not res!880016) (not e!755770))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1325809 (= res!880016 (and (= (size!43768 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43767 _keys!1609) (size!43768 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1325810 () Bool)

(declare-fun res!880014 () Bool)

(assert (=> b!1325810 (=> (not res!880014) (not e!755770))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1325810 (= res!880014 (validKeyInArray!0 (select (arr!43216 _keys!1609) from!2000)))))

(declare-fun b!1325811 () Bool)

(assert (=> b!1325811 (= e!755770 (not true))))

(declare-datatypes ((tuple2!23668 0))(
  ( (tuple2!23669 (_1!11844 (_ BitVec 64)) (_2!11844 V!53521)) )
))
(declare-datatypes ((List!30837 0))(
  ( (Nil!30834) (Cons!30833 (h!32042 tuple2!23668) (t!44808 List!30837)) )
))
(declare-datatypes ((ListLongMap!21337 0))(
  ( (ListLongMap!21338 (toList!10684 List!30837)) )
))
(declare-fun lt!589798 () ListLongMap!21337)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8777 (ListLongMap!21337 (_ BitVec 64)) Bool)

(assert (=> b!1325811 (contains!8777 lt!589798 k!1164)))

(declare-fun zeroValue!1279 () V!53521)

(declare-datatypes ((Unit!43604 0))(
  ( (Unit!43605) )
))
(declare-fun lt!589801 () Unit!43604)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!209 ((_ BitVec 64) (_ BitVec 64) V!53521 ListLongMap!21337) Unit!43604)

(assert (=> b!1325811 (= lt!589801 (lemmaInListMapAfterAddingDiffThenInBefore!209 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589798))))

(declare-fun lt!589799 () ListLongMap!21337)

(assert (=> b!1325811 (contains!8777 lt!589799 k!1164)))

(declare-fun lt!589800 () Unit!43604)

(declare-fun minValue!1279 () V!53521)

(assert (=> b!1325811 (= lt!589800 (lemmaInListMapAfterAddingDiffThenInBefore!209 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589799))))

(declare-fun +!4599 (ListLongMap!21337 tuple2!23668) ListLongMap!21337)

(assert (=> b!1325811 (= lt!589799 (+!4599 lt!589798 (tuple2!23669 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6317 (array!89495 array!89497 (_ BitVec 32) (_ BitVec 32) V!53521 V!53521 (_ BitVec 32) Int) ListLongMap!21337)

(declare-fun get!21814 (ValueCell!17258 V!53521) V!53521)

(declare-fun dynLambda!3636 (Int (_ BitVec 64)) V!53521)

(assert (=> b!1325811 (= lt!589798 (+!4599 (getCurrentListMapNoExtraKeys!6317 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23669 (select (arr!43216 _keys!1609) from!2000) (get!21814 (select (arr!43217 _values!1337) from!2000) (dynLambda!3636 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1325812 () Bool)

(declare-fun res!880019 () Bool)

(assert (=> b!1325812 (=> (not res!880019) (not e!755770))))

(declare-fun getCurrentListMap!5618 (array!89495 array!89497 (_ BitVec 32) (_ BitVec 32) V!53521 V!53521 (_ BitVec 32) Int) ListLongMap!21337)

(assert (=> b!1325812 (= res!880019 (contains!8777 (getCurrentListMap!5618 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1325813 () Bool)

(declare-fun e!755768 () Bool)

(declare-fun e!755767 () Bool)

(assert (=> b!1325813 (= e!755768 (and e!755767 mapRes!56121))))

(declare-fun condMapEmpty!56121 () Bool)

(declare-fun mapDefault!56121 () ValueCell!17258)

