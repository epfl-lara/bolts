; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111648 () Bool)

(assert start!111648)

(declare-fun b_free!30269 () Bool)

(declare-fun b_next!30269 () Bool)

(assert (=> start!111648 (= b_free!30269 (not b_next!30269))))

(declare-fun tp!106284 () Bool)

(declare-fun b_and!48707 () Bool)

(assert (=> start!111648 (= tp!106284 b_and!48707)))

(declare-fun b!1321824 () Bool)

(declare-fun res!877427 () Bool)

(declare-fun e!753832 () Bool)

(assert (=> b!1321824 (=> (not res!877427) (not e!753832))))

(declare-datatypes ((array!89061 0))(
  ( (array!89062 (arr!43000 (Array (_ BitVec 32) (_ BitVec 64))) (size!43551 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89061)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1321824 (= res!877427 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43551 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1321825 () Bool)

(declare-fun res!877429 () Bool)

(assert (=> b!1321825 (=> (not res!877429) (not e!753832))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89061 (_ BitVec 32)) Bool)

(assert (=> b!1321825 (= res!877429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1321826 () Bool)

(declare-fun res!877431 () Bool)

(assert (=> b!1321826 (=> (not res!877431) (not e!753832))))

(declare-datatypes ((V!53221 0))(
  ( (V!53222 (val!18119 Int)) )
))
(declare-fun zeroValue!1279 () V!53221)

(declare-datatypes ((ValueCell!17146 0))(
  ( (ValueCellFull!17146 (v!20747 V!53221)) (EmptyCell!17146) )
))
(declare-datatypes ((array!89063 0))(
  ( (array!89064 (arr!43001 (Array (_ BitVec 32) ValueCell!17146)) (size!43552 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89063)

(declare-fun minValue!1279 () V!53221)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23500 0))(
  ( (tuple2!23501 (_1!11760 (_ BitVec 64)) (_2!11760 V!53221)) )
))
(declare-datatypes ((List!30677 0))(
  ( (Nil!30674) (Cons!30673 (h!31882 tuple2!23500) (t!44502 List!30677)) )
))
(declare-datatypes ((ListLongMap!21169 0))(
  ( (ListLongMap!21170 (toList!10600 List!30677)) )
))
(declare-fun contains!8691 (ListLongMap!21169 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5540 (array!89061 array!89063 (_ BitVec 32) (_ BitVec 32) V!53221 V!53221 (_ BitVec 32) Int) ListLongMap!21169)

(assert (=> b!1321826 (= res!877431 (contains!8691 (getCurrentListMap!5540 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1321828 () Bool)

(assert (=> b!1321828 (= e!753832 (not true))))

(declare-fun lt!587710 () ListLongMap!21169)

(declare-fun lt!587705 () tuple2!23500)

(declare-fun +!4553 (ListLongMap!21169 tuple2!23500) ListLongMap!21169)

(assert (=> b!1321828 (contains!8691 (+!4553 lt!587710 lt!587705) k!1164)))

(declare-datatypes ((Unit!43506 0))(
  ( (Unit!43507) )
))
(declare-fun lt!587707 () Unit!43506)

(declare-fun addStillContains!1134 (ListLongMap!21169 (_ BitVec 64) V!53221 (_ BitVec 64)) Unit!43506)

(assert (=> b!1321828 (= lt!587707 (addStillContains!1134 lt!587710 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1321828 (contains!8691 lt!587710 k!1164)))

(declare-fun lt!587709 () V!53221)

(declare-fun lt!587708 () Unit!43506)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!168 ((_ BitVec 64) (_ BitVec 64) V!53221 ListLongMap!21169) Unit!43506)

(assert (=> b!1321828 (= lt!587708 (lemmaInListMapAfterAddingDiffThenInBefore!168 k!1164 (select (arr!43000 _keys!1609) from!2000) lt!587709 lt!587710))))

(declare-fun lt!587702 () ListLongMap!21169)

(assert (=> b!1321828 (contains!8691 lt!587702 k!1164)))

(declare-fun lt!587703 () Unit!43506)

(assert (=> b!1321828 (= lt!587703 (lemmaInListMapAfterAddingDiffThenInBefore!168 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587702))))

(declare-fun lt!587706 () ListLongMap!21169)

(assert (=> b!1321828 (contains!8691 lt!587706 k!1164)))

(declare-fun lt!587704 () Unit!43506)

(assert (=> b!1321828 (= lt!587704 (lemmaInListMapAfterAddingDiffThenInBefore!168 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587706))))

(assert (=> b!1321828 (= lt!587706 (+!4553 lt!587702 lt!587705))))

(assert (=> b!1321828 (= lt!587705 (tuple2!23501 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1321828 (= lt!587702 (+!4553 lt!587710 (tuple2!23501 (select (arr!43000 _keys!1609) from!2000) lt!587709)))))

(declare-fun get!21689 (ValueCell!17146 V!53221) V!53221)

(declare-fun dynLambda!3590 (Int (_ BitVec 64)) V!53221)

(assert (=> b!1321828 (= lt!587709 (get!21689 (select (arr!43001 _values!1337) from!2000) (dynLambda!3590 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6268 (array!89061 array!89063 (_ BitVec 32) (_ BitVec 32) V!53221 V!53221 (_ BitVec 32) Int) ListLongMap!21169)

(assert (=> b!1321828 (= lt!587710 (getCurrentListMapNoExtraKeys!6268 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1321829 () Bool)

(declare-fun res!877428 () Bool)

(assert (=> b!1321829 (=> (not res!877428) (not e!753832))))

(declare-datatypes ((List!30678 0))(
  ( (Nil!30675) (Cons!30674 (h!31883 (_ BitVec 64)) (t!44503 List!30678)) )
))
(declare-fun arrayNoDuplicates!0 (array!89061 (_ BitVec 32) List!30678) Bool)

(assert (=> b!1321829 (= res!877428 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30675))))

(declare-fun mapIsEmpty!55781 () Bool)

(declare-fun mapRes!55781 () Bool)

(assert (=> mapIsEmpty!55781 mapRes!55781))

(declare-fun mapNonEmpty!55781 () Bool)

(declare-fun tp!106283 () Bool)

(declare-fun e!753829 () Bool)

(assert (=> mapNonEmpty!55781 (= mapRes!55781 (and tp!106283 e!753829))))

(declare-fun mapKey!55781 () (_ BitVec 32))

(declare-fun mapValue!55781 () ValueCell!17146)

(declare-fun mapRest!55781 () (Array (_ BitVec 32) ValueCell!17146))

(assert (=> mapNonEmpty!55781 (= (arr!43001 _values!1337) (store mapRest!55781 mapKey!55781 mapValue!55781))))

(declare-fun b!1321830 () Bool)

(declare-fun tp_is_empty!36089 () Bool)

(assert (=> b!1321830 (= e!753829 tp_is_empty!36089)))

(declare-fun b!1321831 () Bool)

(declare-fun res!877426 () Bool)

(assert (=> b!1321831 (=> (not res!877426) (not e!753832))))

(assert (=> b!1321831 (= res!877426 (not (= (select (arr!43000 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1321832 () Bool)

(declare-fun e!753831 () Bool)

(declare-fun e!753830 () Bool)

(assert (=> b!1321832 (= e!753831 (and e!753830 mapRes!55781))))

(declare-fun condMapEmpty!55781 () Bool)

(declare-fun mapDefault!55781 () ValueCell!17146)

