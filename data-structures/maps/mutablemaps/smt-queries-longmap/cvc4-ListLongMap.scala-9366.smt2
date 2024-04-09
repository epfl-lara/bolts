; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111672 () Bool)

(assert start!111672)

(declare-fun b_free!30293 () Bool)

(declare-fun b_next!30293 () Bool)

(assert (=> start!111672 (= b_free!30293 (not b_next!30293))))

(declare-fun tp!106355 () Bool)

(declare-fun b_and!48755 () Bool)

(assert (=> start!111672 (= tp!106355 b_and!48755)))

(declare-fun b!1322244 () Bool)

(declare-fun res!877718 () Bool)

(declare-fun e!754010 () Bool)

(assert (=> b!1322244 (=> (not res!877718) (not e!754010))))

(declare-datatypes ((array!89107 0))(
  ( (array!89108 (arr!43023 (Array (_ BitVec 32) (_ BitVec 64))) (size!43574 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89107)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53253 0))(
  ( (V!53254 (val!18131 Int)) )
))
(declare-datatypes ((ValueCell!17158 0))(
  ( (ValueCellFull!17158 (v!20759 V!53253)) (EmptyCell!17158) )
))
(declare-datatypes ((array!89109 0))(
  ( (array!89110 (arr!43024 (Array (_ BitVec 32) ValueCell!17158)) (size!43575 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89109)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1322244 (= res!877718 (and (= (size!43575 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43574 _keys!1609) (size!43575 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1322245 () Bool)

(declare-fun e!754008 () Bool)

(declare-fun tp_is_empty!36113 () Bool)

(assert (=> b!1322245 (= e!754008 tp_is_empty!36113)))

(declare-fun b!1322247 () Bool)

(declare-fun res!877714 () Bool)

(assert (=> b!1322247 (=> (not res!877714) (not e!754010))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1322247 (= res!877714 (validKeyInArray!0 (select (arr!43023 _keys!1609) from!2000)))))

(declare-fun b!1322248 () Bool)

(declare-fun res!877716 () Bool)

(assert (=> b!1322248 (=> (not res!877716) (not e!754010))))

(declare-fun zeroValue!1279 () V!53253)

(declare-fun minValue!1279 () V!53253)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23522 0))(
  ( (tuple2!23523 (_1!11771 (_ BitVec 64)) (_2!11771 V!53253)) )
))
(declare-datatypes ((List!30697 0))(
  ( (Nil!30694) (Cons!30693 (h!31902 tuple2!23522) (t!44546 List!30697)) )
))
(declare-datatypes ((ListLongMap!21191 0))(
  ( (ListLongMap!21192 (toList!10611 List!30697)) )
))
(declare-fun contains!8702 (ListLongMap!21191 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5551 (array!89107 array!89109 (_ BitVec 32) (_ BitVec 32) V!53253 V!53253 (_ BitVec 32) Int) ListLongMap!21191)

(assert (=> b!1322248 (= res!877716 (contains!8702 (getCurrentListMap!5551 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1322249 () Bool)

(assert (=> b!1322249 (= e!754010 (not true))))

(declare-fun lt!588031 () ListLongMap!21191)

(declare-fun lt!588026 () tuple2!23522)

(declare-fun +!4561 (ListLongMap!21191 tuple2!23522) ListLongMap!21191)

(assert (=> b!1322249 (contains!8702 (+!4561 lt!588031 lt!588026) k!1164)))

(declare-datatypes ((Unit!43522 0))(
  ( (Unit!43523) )
))
(declare-fun lt!588034 () Unit!43522)

(declare-fun addStillContains!1142 (ListLongMap!21191 (_ BitVec 64) V!53253 (_ BitVec 64)) Unit!43522)

(assert (=> b!1322249 (= lt!588034 (addStillContains!1142 lt!588031 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1322249 (contains!8702 lt!588031 k!1164)))

(declare-fun lt!588028 () V!53253)

(declare-fun lt!588027 () Unit!43522)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!176 ((_ BitVec 64) (_ BitVec 64) V!53253 ListLongMap!21191) Unit!43522)

(assert (=> b!1322249 (= lt!588027 (lemmaInListMapAfterAddingDiffThenInBefore!176 k!1164 (select (arr!43023 _keys!1609) from!2000) lt!588028 lt!588031))))

(declare-fun lt!588029 () ListLongMap!21191)

(assert (=> b!1322249 (contains!8702 lt!588029 k!1164)))

(declare-fun lt!588030 () Unit!43522)

(assert (=> b!1322249 (= lt!588030 (lemmaInListMapAfterAddingDiffThenInBefore!176 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588029))))

(declare-fun lt!588032 () ListLongMap!21191)

(assert (=> b!1322249 (contains!8702 lt!588032 k!1164)))

(declare-fun lt!588033 () Unit!43522)

(assert (=> b!1322249 (= lt!588033 (lemmaInListMapAfterAddingDiffThenInBefore!176 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588032))))

(assert (=> b!1322249 (= lt!588032 (+!4561 lt!588029 lt!588026))))

(assert (=> b!1322249 (= lt!588026 (tuple2!23523 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1322249 (= lt!588029 (+!4561 lt!588031 (tuple2!23523 (select (arr!43023 _keys!1609) from!2000) lt!588028)))))

(declare-fun get!21705 (ValueCell!17158 V!53253) V!53253)

(declare-fun dynLambda!3598 (Int (_ BitVec 64)) V!53253)

(assert (=> b!1322249 (= lt!588028 (get!21705 (select (arr!43024 _values!1337) from!2000) (dynLambda!3598 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6276 (array!89107 array!89109 (_ BitVec 32) (_ BitVec 32) V!53253 V!53253 (_ BitVec 32) Int) ListLongMap!21191)

(assert (=> b!1322249 (= lt!588031 (getCurrentListMapNoExtraKeys!6276 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun mapNonEmpty!55817 () Bool)

(declare-fun mapRes!55817 () Bool)

(declare-fun tp!106356 () Bool)

(assert (=> mapNonEmpty!55817 (= mapRes!55817 (and tp!106356 e!754008))))

(declare-fun mapValue!55817 () ValueCell!17158)

(declare-fun mapKey!55817 () (_ BitVec 32))

(declare-fun mapRest!55817 () (Array (_ BitVec 32) ValueCell!17158))

(assert (=> mapNonEmpty!55817 (= (arr!43024 _values!1337) (store mapRest!55817 mapKey!55817 mapValue!55817))))

(declare-fun b!1322250 () Bool)

(declare-fun e!754012 () Bool)

(assert (=> b!1322250 (= e!754012 tp_is_empty!36113)))

(declare-fun b!1322251 () Bool)

(declare-fun res!877715 () Bool)

(assert (=> b!1322251 (=> (not res!877715) (not e!754010))))

(assert (=> b!1322251 (= res!877715 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43574 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!55817 () Bool)

(assert (=> mapIsEmpty!55817 mapRes!55817))

(declare-fun b!1322252 () Bool)

(declare-fun res!877719 () Bool)

(assert (=> b!1322252 (=> (not res!877719) (not e!754010))))

(assert (=> b!1322252 (= res!877719 (not (= (select (arr!43023 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1322246 () Bool)

(declare-fun res!877717 () Bool)

(assert (=> b!1322246 (=> (not res!877717) (not e!754010))))

(declare-datatypes ((List!30698 0))(
  ( (Nil!30695) (Cons!30694 (h!31903 (_ BitVec 64)) (t!44547 List!30698)) )
))
(declare-fun arrayNoDuplicates!0 (array!89107 (_ BitVec 32) List!30698) Bool)

(assert (=> b!1322246 (= res!877717 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30695))))

(declare-fun res!877720 () Bool)

(assert (=> start!111672 (=> (not res!877720) (not e!754010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111672 (= res!877720 (validMask!0 mask!2019))))

(assert (=> start!111672 e!754010))

(declare-fun array_inv!32433 (array!89107) Bool)

(assert (=> start!111672 (array_inv!32433 _keys!1609)))

(assert (=> start!111672 true))

(assert (=> start!111672 tp_is_empty!36113))

(declare-fun e!754011 () Bool)

(declare-fun array_inv!32434 (array!89109) Bool)

(assert (=> start!111672 (and (array_inv!32434 _values!1337) e!754011)))

(assert (=> start!111672 tp!106355))

(declare-fun b!1322253 () Bool)

(declare-fun res!877713 () Bool)

(assert (=> b!1322253 (=> (not res!877713) (not e!754010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89107 (_ BitVec 32)) Bool)

(assert (=> b!1322253 (= res!877713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322254 () Bool)

(assert (=> b!1322254 (= e!754011 (and e!754012 mapRes!55817))))

(declare-fun condMapEmpty!55817 () Bool)

(declare-fun mapDefault!55817 () ValueCell!17158)

