; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133600 () Bool)

(assert start!133600)

(declare-fun b_free!31985 () Bool)

(declare-fun b_next!31985 () Bool)

(assert (=> start!133600 (= b_free!31985 (not b_next!31985))))

(declare-fun tp!113079 () Bool)

(declare-fun b_and!51491 () Bool)

(assert (=> start!133600 (= tp!113079 b_and!51491)))

(declare-fun b!1561431 () Bool)

(declare-fun res!1067711 () Bool)

(declare-fun e!870164 () Bool)

(assert (=> b!1561431 (=> (not res!1067711) (not e!870164))))

(declare-datatypes ((array!103973 0))(
  ( (array!103974 (arr!50174 (Array (_ BitVec 32) (_ BitVec 64))) (size!50725 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103973)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103973 (_ BitVec 32)) Bool)

(assert (=> b!1561431 (= res!1067711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561432 () Bool)

(declare-fun e!870165 () Bool)

(declare-fun tp_is_empty!38651 () Bool)

(assert (=> b!1561432 (= e!870165 tp_is_empty!38651)))

(declare-fun b!1561433 () Bool)

(declare-fun e!870167 () Bool)

(assert (=> b!1561433 (= e!870167 tp_is_empty!38651)))

(declare-fun b!1561434 () Bool)

(declare-fun res!1067710 () Bool)

(assert (=> b!1561434 (=> (not res!1067710) (not e!870164))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561434 (= res!1067710 (validKeyInArray!0 (select (arr!50174 _keys!637) from!782)))))

(declare-fun mapNonEmpty!59352 () Bool)

(declare-fun mapRes!59352 () Bool)

(declare-fun tp!113080 () Bool)

(assert (=> mapNonEmpty!59352 (= mapRes!59352 (and tp!113080 e!870165))))

(declare-datatypes ((V!59741 0))(
  ( (V!59742 (val!19409 Int)) )
))
(declare-datatypes ((ValueCell!18295 0))(
  ( (ValueCellFull!18295 (v!22158 V!59741)) (EmptyCell!18295) )
))
(declare-fun mapRest!59352 () (Array (_ BitVec 32) ValueCell!18295))

(declare-fun mapKey!59352 () (_ BitVec 32))

(declare-datatypes ((array!103975 0))(
  ( (array!103976 (arr!50175 (Array (_ BitVec 32) ValueCell!18295)) (size!50726 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103975)

(declare-fun mapValue!59352 () ValueCell!18295)

(assert (=> mapNonEmpty!59352 (= (arr!50175 _values!487) (store mapRest!59352 mapKey!59352 mapValue!59352))))

(declare-fun b!1561435 () Bool)

(declare-fun res!1067713 () Bool)

(assert (=> b!1561435 (=> (not res!1067713) (not e!870164))))

(declare-datatypes ((List!36596 0))(
  ( (Nil!36593) (Cons!36592 (h!38039 (_ BitVec 64)) (t!51378 List!36596)) )
))
(declare-fun arrayNoDuplicates!0 (array!103973 (_ BitVec 32) List!36596) Bool)

(assert (=> b!1561435 (= res!1067713 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36593))))

(declare-fun res!1067709 () Bool)

(assert (=> start!133600 (=> (not res!1067709) (not e!870164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133600 (= res!1067709 (validMask!0 mask!947))))

(assert (=> start!133600 e!870164))

(assert (=> start!133600 tp!113079))

(assert (=> start!133600 tp_is_empty!38651))

(assert (=> start!133600 true))

(declare-fun array_inv!38931 (array!103973) Bool)

(assert (=> start!133600 (array_inv!38931 _keys!637)))

(declare-fun e!870163 () Bool)

(declare-fun array_inv!38932 (array!103975) Bool)

(assert (=> start!133600 (and (array_inv!38932 _values!487) e!870163)))

(declare-fun b!1561436 () Bool)

(assert (=> b!1561436 (= e!870164 (not true))))

(declare-fun lt!671170 () V!59741)

(declare-datatypes ((tuple2!25220 0))(
  ( (tuple2!25221 (_1!12620 (_ BitVec 64)) (_2!12620 V!59741)) )
))
(declare-datatypes ((List!36597 0))(
  ( (Nil!36594) (Cons!36593 (h!38040 tuple2!25220) (t!51379 List!36597)) )
))
(declare-datatypes ((ListLongMap!22667 0))(
  ( (ListLongMap!22668 (toList!11349 List!36597)) )
))
(declare-fun lt!671172 () ListLongMap!22667)

(declare-fun contains!10269 (ListLongMap!22667 (_ BitVec 64)) Bool)

(declare-fun +!5004 (ListLongMap!22667 tuple2!25220) ListLongMap!22667)

(assert (=> b!1561436 (not (contains!10269 (+!5004 lt!671172 (tuple2!25221 (select (arr!50174 _keys!637) from!782) lt!671170)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51872 0))(
  ( (Unit!51873) )
))
(declare-fun lt!671171 () Unit!51872)

(declare-fun addStillNotContains!540 (ListLongMap!22667 (_ BitVec 64) V!59741 (_ BitVec 64)) Unit!51872)

(assert (=> b!1561436 (= lt!671171 (addStillNotContains!540 lt!671172 (select (arr!50174 _keys!637) from!782) lt!671170 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26238 (ValueCell!18295 V!59741) V!59741)

(declare-fun dynLambda!3893 (Int (_ BitVec 64)) V!59741)

(assert (=> b!1561436 (= lt!671170 (get!26238 (select (arr!50175 _values!487) from!782) (dynLambda!3893 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59741)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59741)

(declare-fun getCurrentListMapNoExtraKeys!6710 (array!103973 array!103975 (_ BitVec 32) (_ BitVec 32) V!59741 V!59741 (_ BitVec 32) Int) ListLongMap!22667)

(assert (=> b!1561436 (= lt!671172 (getCurrentListMapNoExtraKeys!6710 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561437 () Bool)

(declare-fun res!1067714 () Bool)

(assert (=> b!1561437 (=> (not res!1067714) (not e!870164))))

(assert (=> b!1561437 (= res!1067714 (and (= (size!50726 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50725 _keys!637) (size!50726 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59352 () Bool)

(assert (=> mapIsEmpty!59352 mapRes!59352))

(declare-fun b!1561438 () Bool)

(assert (=> b!1561438 (= e!870163 (and e!870167 mapRes!59352))))

(declare-fun condMapEmpty!59352 () Bool)

(declare-fun mapDefault!59352 () ValueCell!18295)

