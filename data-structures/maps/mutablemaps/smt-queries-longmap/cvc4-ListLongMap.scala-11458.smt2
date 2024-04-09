; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133582 () Bool)

(assert start!133582)

(declare-fun b_free!31967 () Bool)

(declare-fun b_next!31967 () Bool)

(assert (=> start!133582 (= b_free!31967 (not b_next!31967))))

(declare-fun tp!113026 () Bool)

(declare-fun b_and!51455 () Bool)

(assert (=> start!133582 (= tp!113026 b_and!51455)))

(declare-fun mapIsEmpty!59325 () Bool)

(declare-fun mapRes!59325 () Bool)

(assert (=> mapIsEmpty!59325 mapRes!59325))

(declare-fun b!1561170 () Bool)

(declare-fun res!1067547 () Bool)

(declare-fun e!870029 () Bool)

(assert (=> b!1561170 (=> (not res!1067547) (not e!870029))))

(declare-datatypes ((array!103937 0))(
  ( (array!103938 (arr!50156 (Array (_ BitVec 32) (_ BitVec 64))) (size!50707 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103937)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561170 (= res!1067547 (validKeyInArray!0 (select (arr!50156 _keys!637) from!782)))))

(declare-fun b!1561171 () Bool)

(declare-fun e!870028 () Bool)

(declare-fun tp_is_empty!38633 () Bool)

(assert (=> b!1561171 (= e!870028 tp_is_empty!38633)))

(declare-fun b!1561172 () Bool)

(assert (=> b!1561172 (= e!870029 (not true))))

(declare-datatypes ((V!59717 0))(
  ( (V!59718 (val!19400 Int)) )
))
(declare-fun lt!671091 () V!59717)

(declare-datatypes ((tuple2!25204 0))(
  ( (tuple2!25205 (_1!12612 (_ BitVec 64)) (_2!12612 V!59717)) )
))
(declare-datatypes ((List!36581 0))(
  ( (Nil!36578) (Cons!36577 (h!38024 tuple2!25204) (t!51345 List!36581)) )
))
(declare-datatypes ((ListLongMap!22651 0))(
  ( (ListLongMap!22652 (toList!11341 List!36581)) )
))
(declare-fun lt!671089 () ListLongMap!22651)

(declare-fun contains!10261 (ListLongMap!22651 (_ BitVec 64)) Bool)

(declare-fun +!4996 (ListLongMap!22651 tuple2!25204) ListLongMap!22651)

(assert (=> b!1561172 (not (contains!10261 (+!4996 lt!671089 (tuple2!25205 (select (arr!50156 _keys!637) from!782) lt!671091)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51856 0))(
  ( (Unit!51857) )
))
(declare-fun lt!671090 () Unit!51856)

(declare-fun addStillNotContains!532 (ListLongMap!22651 (_ BitVec 64) V!59717 (_ BitVec 64)) Unit!51856)

(assert (=> b!1561172 (= lt!671090 (addStillNotContains!532 lt!671089 (select (arr!50156 _keys!637) from!782) lt!671091 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18286 0))(
  ( (ValueCellFull!18286 (v!22149 V!59717)) (EmptyCell!18286) )
))
(declare-datatypes ((array!103939 0))(
  ( (array!103940 (arr!50157 (Array (_ BitVec 32) ValueCell!18286)) (size!50708 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103939)

(declare-fun get!26224 (ValueCell!18286 V!59717) V!59717)

(declare-fun dynLambda!3885 (Int (_ BitVec 64)) V!59717)

(assert (=> b!1561172 (= lt!671091 (get!26224 (select (arr!50157 _values!487) from!782) (dynLambda!3885 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59717)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59717)

(declare-fun getCurrentListMapNoExtraKeys!6702 (array!103937 array!103939 (_ BitVec 32) (_ BitVec 32) V!59717 V!59717 (_ BitVec 32) Int) ListLongMap!22651)

(assert (=> b!1561172 (= lt!671089 (getCurrentListMapNoExtraKeys!6702 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561173 () Bool)

(declare-fun res!1067549 () Bool)

(assert (=> b!1561173 (=> (not res!1067549) (not e!870029))))

(declare-datatypes ((List!36582 0))(
  ( (Nil!36579) (Cons!36578 (h!38025 (_ BitVec 64)) (t!51346 List!36582)) )
))
(declare-fun arrayNoDuplicates!0 (array!103937 (_ BitVec 32) List!36582) Bool)

(assert (=> b!1561173 (= res!1067549 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36579))))

(declare-fun b!1561174 () Bool)

(declare-fun res!1067552 () Bool)

(assert (=> b!1561174 (=> (not res!1067552) (not e!870029))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103937 (_ BitVec 32)) Bool)

(assert (=> b!1561174 (= res!1067552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun res!1067550 () Bool)

(assert (=> start!133582 (=> (not res!1067550) (not e!870029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133582 (= res!1067550 (validMask!0 mask!947))))

(assert (=> start!133582 e!870029))

(assert (=> start!133582 tp!113026))

(assert (=> start!133582 tp_is_empty!38633))

(assert (=> start!133582 true))

(declare-fun array_inv!38917 (array!103937) Bool)

(assert (=> start!133582 (array_inv!38917 _keys!637)))

(declare-fun e!870032 () Bool)

(declare-fun array_inv!38918 (array!103939) Bool)

(assert (=> start!133582 (and (array_inv!38918 _values!487) e!870032)))

(declare-fun mapNonEmpty!59325 () Bool)

(declare-fun tp!113025 () Bool)

(declare-fun e!870031 () Bool)

(assert (=> mapNonEmpty!59325 (= mapRes!59325 (and tp!113025 e!870031))))

(declare-fun mapValue!59325 () ValueCell!18286)

(declare-fun mapKey!59325 () (_ BitVec 32))

(declare-fun mapRest!59325 () (Array (_ BitVec 32) ValueCell!18286))

(assert (=> mapNonEmpty!59325 (= (arr!50157 _values!487) (store mapRest!59325 mapKey!59325 mapValue!59325))))

(declare-fun b!1561175 () Bool)

(declare-fun res!1067548 () Bool)

(assert (=> b!1561175 (=> (not res!1067548) (not e!870029))))

(assert (=> b!1561175 (= res!1067548 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50707 _keys!637)) (bvslt from!782 (size!50707 _keys!637))))))

(declare-fun b!1561176 () Bool)

(declare-fun res!1067551 () Bool)

(assert (=> b!1561176 (=> (not res!1067551) (not e!870029))))

(assert (=> b!1561176 (= res!1067551 (and (= (size!50708 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50707 _keys!637) (size!50708 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561177 () Bool)

(assert (=> b!1561177 (= e!870032 (and e!870028 mapRes!59325))))

(declare-fun condMapEmpty!59325 () Bool)

(declare-fun mapDefault!59325 () ValueCell!18286)

