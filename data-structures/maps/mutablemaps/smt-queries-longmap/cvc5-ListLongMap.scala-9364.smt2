; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111656 () Bool)

(assert start!111656)

(declare-fun b_free!30277 () Bool)

(declare-fun b_next!30277 () Bool)

(assert (=> start!111656 (= b_free!30277 (not b_next!30277))))

(declare-fun tp!106307 () Bool)

(declare-fun b_and!48723 () Bool)

(assert (=> start!111656 (= tp!106307 b_and!48723)))

(declare-fun b!1321964 () Bool)

(declare-fun res!877526 () Bool)

(declare-fun e!753892 () Bool)

(assert (=> b!1321964 (=> (not res!877526) (not e!753892))))

(declare-datatypes ((array!89077 0))(
  ( (array!89078 (arr!43008 (Array (_ BitVec 32) (_ BitVec 64))) (size!43559 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89077)

(declare-datatypes ((List!30685 0))(
  ( (Nil!30682) (Cons!30681 (h!31890 (_ BitVec 64)) (t!44518 List!30685)) )
))
(declare-fun arrayNoDuplicates!0 (array!89077 (_ BitVec 32) List!30685) Bool)

(assert (=> b!1321964 (= res!877526 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30682))))

(declare-fun mapIsEmpty!55793 () Bool)

(declare-fun mapRes!55793 () Bool)

(assert (=> mapIsEmpty!55793 mapRes!55793))

(declare-fun b!1321965 () Bool)

(declare-fun res!877522 () Bool)

(assert (=> b!1321965 (=> (not res!877522) (not e!753892))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89077 (_ BitVec 32)) Bool)

(assert (=> b!1321965 (= res!877522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1321966 () Bool)

(declare-fun res!877524 () Bool)

(assert (=> b!1321966 (=> (not res!877524) (not e!753892))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321966 (= res!877524 (validKeyInArray!0 (select (arr!43008 _keys!1609) from!2000)))))

(declare-fun b!1321967 () Bool)

(declare-fun res!877528 () Bool)

(assert (=> b!1321967 (=> (not res!877528) (not e!753892))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1321967 (= res!877528 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43559 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1321968 () Bool)

(declare-fun e!753889 () Bool)

(declare-fun tp_is_empty!36097 () Bool)

(assert (=> b!1321968 (= e!753889 tp_is_empty!36097)))

(declare-fun b!1321969 () Bool)

(declare-fun res!877525 () Bool)

(assert (=> b!1321969 (=> (not res!877525) (not e!753892))))

(declare-datatypes ((V!53233 0))(
  ( (V!53234 (val!18123 Int)) )
))
(declare-datatypes ((ValueCell!17150 0))(
  ( (ValueCellFull!17150 (v!20751 V!53233)) (EmptyCell!17150) )
))
(declare-datatypes ((array!89079 0))(
  ( (array!89080 (arr!43009 (Array (_ BitVec 32) ValueCell!17150)) (size!43560 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89079)

(assert (=> b!1321969 (= res!877525 (and (= (size!43560 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43559 _keys!1609) (size!43560 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!877521 () Bool)

(assert (=> start!111656 (=> (not res!877521) (not e!753892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111656 (= res!877521 (validMask!0 mask!2019))))

(assert (=> start!111656 e!753892))

(declare-fun array_inv!32421 (array!89077) Bool)

(assert (=> start!111656 (array_inv!32421 _keys!1609)))

(assert (=> start!111656 true))

(assert (=> start!111656 tp_is_empty!36097))

(declare-fun e!753888 () Bool)

(declare-fun array_inv!32422 (array!89079) Bool)

(assert (=> start!111656 (and (array_inv!32422 _values!1337) e!753888)))

(assert (=> start!111656 tp!106307))

(declare-fun b!1321970 () Bool)

(assert (=> b!1321970 (= e!753892 (not true))))

(declare-datatypes ((tuple2!23508 0))(
  ( (tuple2!23509 (_1!11764 (_ BitVec 64)) (_2!11764 V!53233)) )
))
(declare-datatypes ((List!30686 0))(
  ( (Nil!30683) (Cons!30682 (h!31891 tuple2!23508) (t!44519 List!30686)) )
))
(declare-datatypes ((ListLongMap!21177 0))(
  ( (ListLongMap!21178 (toList!10604 List!30686)) )
))
(declare-fun lt!587816 () ListLongMap!21177)

(declare-fun lt!587812 () tuple2!23508)

(declare-fun contains!8695 (ListLongMap!21177 (_ BitVec 64)) Bool)

(declare-fun +!4557 (ListLongMap!21177 tuple2!23508) ListLongMap!21177)

(assert (=> b!1321970 (contains!8695 (+!4557 lt!587816 lt!587812) k!1164)))

(declare-datatypes ((Unit!43514 0))(
  ( (Unit!43515) )
))
(declare-fun lt!587810 () Unit!43514)

(declare-fun zeroValue!1279 () V!53233)

(declare-fun addStillContains!1138 (ListLongMap!21177 (_ BitVec 64) V!53233 (_ BitVec 64)) Unit!43514)

(assert (=> b!1321970 (= lt!587810 (addStillContains!1138 lt!587816 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1321970 (contains!8695 lt!587816 k!1164)))

(declare-fun lt!587818 () Unit!43514)

(declare-fun lt!587817 () V!53233)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!172 ((_ BitVec 64) (_ BitVec 64) V!53233 ListLongMap!21177) Unit!43514)

(assert (=> b!1321970 (= lt!587818 (lemmaInListMapAfterAddingDiffThenInBefore!172 k!1164 (select (arr!43008 _keys!1609) from!2000) lt!587817 lt!587816))))

(declare-fun lt!587811 () ListLongMap!21177)

(assert (=> b!1321970 (contains!8695 lt!587811 k!1164)))

(declare-fun lt!587815 () Unit!43514)

(assert (=> b!1321970 (= lt!587815 (lemmaInListMapAfterAddingDiffThenInBefore!172 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587811))))

(declare-fun lt!587813 () ListLongMap!21177)

(assert (=> b!1321970 (contains!8695 lt!587813 k!1164)))

(declare-fun minValue!1279 () V!53233)

(declare-fun lt!587814 () Unit!43514)

(assert (=> b!1321970 (= lt!587814 (lemmaInListMapAfterAddingDiffThenInBefore!172 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587813))))

(assert (=> b!1321970 (= lt!587813 (+!4557 lt!587811 lt!587812))))

(assert (=> b!1321970 (= lt!587812 (tuple2!23509 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1321970 (= lt!587811 (+!4557 lt!587816 (tuple2!23509 (select (arr!43008 _keys!1609) from!2000) lt!587817)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21697 (ValueCell!17150 V!53233) V!53233)

(declare-fun dynLambda!3594 (Int (_ BitVec 64)) V!53233)

(assert (=> b!1321970 (= lt!587817 (get!21697 (select (arr!43009 _values!1337) from!2000) (dynLambda!3594 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6272 (array!89077 array!89079 (_ BitVec 32) (_ BitVec 32) V!53233 V!53233 (_ BitVec 32) Int) ListLongMap!21177)

(assert (=> b!1321970 (= lt!587816 (getCurrentListMapNoExtraKeys!6272 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun mapNonEmpty!55793 () Bool)

(declare-fun tp!106308 () Bool)

(declare-fun e!753890 () Bool)

(assert (=> mapNonEmpty!55793 (= mapRes!55793 (and tp!106308 e!753890))))

(declare-fun mapValue!55793 () ValueCell!17150)

(declare-fun mapRest!55793 () (Array (_ BitVec 32) ValueCell!17150))

(declare-fun mapKey!55793 () (_ BitVec 32))

(assert (=> mapNonEmpty!55793 (= (arr!43009 _values!1337) (store mapRest!55793 mapKey!55793 mapValue!55793))))

(declare-fun b!1321971 () Bool)

(declare-fun res!877523 () Bool)

(assert (=> b!1321971 (=> (not res!877523) (not e!753892))))

(declare-fun getCurrentListMap!5544 (array!89077 array!89079 (_ BitVec 32) (_ BitVec 32) V!53233 V!53233 (_ BitVec 32) Int) ListLongMap!21177)

(assert (=> b!1321971 (= res!877523 (contains!8695 (getCurrentListMap!5544 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1321972 () Bool)

(assert (=> b!1321972 (= e!753890 tp_is_empty!36097)))

(declare-fun b!1321973 () Bool)

(assert (=> b!1321973 (= e!753888 (and e!753889 mapRes!55793))))

(declare-fun condMapEmpty!55793 () Bool)

(declare-fun mapDefault!55793 () ValueCell!17150)

