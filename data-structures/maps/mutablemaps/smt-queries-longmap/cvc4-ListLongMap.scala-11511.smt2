; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133986 () Bool)

(assert start!133986)

(declare-fun b_free!32177 () Bool)

(declare-fun b_next!32177 () Bool)

(assert (=> start!133986 (= b_free!32177 (not b_next!32177))))

(declare-fun tp!113834 () Bool)

(declare-fun b_and!51805 () Bool)

(assert (=> start!133986 (= tp!113834 b_and!51805)))

(declare-fun mapIsEmpty!59818 () Bool)

(declare-fun mapRes!59818 () Bool)

(assert (=> mapIsEmpty!59818 mapRes!59818))

(declare-fun b!1565825 () Bool)

(declare-fun e!872791 () Bool)

(declare-fun e!872788 () Bool)

(assert (=> b!1565825 (= e!872791 (not e!872788))))

(declare-fun res!1070442 () Bool)

(assert (=> b!1565825 (=> res!1070442 e!872788)))

(declare-datatypes ((V!60141 0))(
  ( (V!60142 (val!19559 Int)) )
))
(declare-datatypes ((tuple2!25398 0))(
  ( (tuple2!25399 (_1!12709 (_ BitVec 64)) (_2!12709 V!60141)) )
))
(declare-datatypes ((List!36784 0))(
  ( (Nil!36781) (Cons!36780 (h!38227 tuple2!25398) (t!51682 List!36784)) )
))
(declare-datatypes ((ListLongMap!22845 0))(
  ( (ListLongMap!22846 (toList!11438 List!36784)) )
))
(declare-fun lt!672405 () ListLongMap!22845)

(declare-fun contains!10359 (ListLongMap!22845 (_ BitVec 64)) Bool)

(assert (=> b!1565825 (= res!1070442 (contains!10359 lt!672405 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1565825 (not (contains!10359 lt!672405 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((array!104561 0))(
  ( (array!104562 (arr!50463 (Array (_ BitVec 32) (_ BitVec 64))) (size!51014 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104561)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun lt!672404 () V!60141)

(declare-fun lt!672407 () ListLongMap!22845)

(declare-fun +!5045 (ListLongMap!22845 tuple2!25398) ListLongMap!22845)

(assert (=> b!1565825 (= lt!672405 (+!5045 lt!672407 (tuple2!25399 (select (arr!50463 _keys!637) from!782) lt!672404)))))

(declare-datatypes ((Unit!51964 0))(
  ( (Unit!51965) )
))
(declare-fun lt!672406 () Unit!51964)

(declare-fun addStillNotContains!581 (ListLongMap!22845 (_ BitVec 64) V!60141 (_ BitVec 64)) Unit!51964)

(assert (=> b!1565825 (= lt!672406 (addStillNotContains!581 lt!672407 (select (arr!50463 _keys!637) from!782) lt!672404 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18445 0))(
  ( (ValueCellFull!18445 (v!22312 V!60141)) (EmptyCell!18445) )
))
(declare-datatypes ((array!104563 0))(
  ( (array!104564 (arr!50464 (Array (_ BitVec 32) ValueCell!18445)) (size!51015 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104563)

(declare-fun get!26381 (ValueCell!18445 V!60141) V!60141)

(declare-fun dynLambda!3934 (Int (_ BitVec 64)) V!60141)

(assert (=> b!1565825 (= lt!672404 (get!26381 (select (arr!50464 _values!487) from!782) (dynLambda!3934 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60141)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60141)

(declare-fun getCurrentListMapNoExtraKeys!6778 (array!104561 array!104563 (_ BitVec 32) (_ BitVec 32) V!60141 V!60141 (_ BitVec 32) Int) ListLongMap!22845)

(assert (=> b!1565825 (= lt!672407 (getCurrentListMapNoExtraKeys!6778 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1565826 () Bool)

(declare-fun res!1070440 () Bool)

(assert (=> b!1565826 (=> (not res!1070440) (not e!872791))))

(declare-datatypes ((List!36785 0))(
  ( (Nil!36782) (Cons!36781 (h!38228 (_ BitVec 64)) (t!51683 List!36785)) )
))
(declare-fun arrayNoDuplicates!0 (array!104561 (_ BitVec 32) List!36785) Bool)

(assert (=> b!1565826 (= res!1070440 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36782))))

(declare-fun mapNonEmpty!59818 () Bool)

(declare-fun tp!113833 () Bool)

(declare-fun e!872789 () Bool)

(assert (=> mapNonEmpty!59818 (= mapRes!59818 (and tp!113833 e!872789))))

(declare-fun mapKey!59818 () (_ BitVec 32))

(declare-fun mapRest!59818 () (Array (_ BitVec 32) ValueCell!18445))

(declare-fun mapValue!59818 () ValueCell!18445)

(assert (=> mapNonEmpty!59818 (= (arr!50464 _values!487) (store mapRest!59818 mapKey!59818 mapValue!59818))))

(declare-fun b!1565827 () Bool)

(declare-fun res!1070441 () Bool)

(assert (=> b!1565827 (=> (not res!1070441) (not e!872791))))

(assert (=> b!1565827 (= res!1070441 (and (= (size!51015 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51014 _keys!637) (size!51015 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1565828 () Bool)

(declare-fun e!872790 () Bool)

(declare-fun tp_is_empty!38951 () Bool)

(assert (=> b!1565828 (= e!872790 tp_is_empty!38951)))

(declare-fun res!1070439 () Bool)

(assert (=> start!133986 (=> (not res!1070439) (not e!872791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133986 (= res!1070439 (validMask!0 mask!947))))

(assert (=> start!133986 e!872791))

(assert (=> start!133986 tp!113834))

(assert (=> start!133986 tp_is_empty!38951))

(assert (=> start!133986 true))

(declare-fun array_inv!39129 (array!104561) Bool)

(assert (=> start!133986 (array_inv!39129 _keys!637)))

(declare-fun e!872787 () Bool)

(declare-fun array_inv!39130 (array!104563) Bool)

(assert (=> start!133986 (and (array_inv!39130 _values!487) e!872787)))

(declare-fun b!1565829 () Bool)

(assert (=> b!1565829 (= e!872789 tp_is_empty!38951)))

(declare-fun b!1565830 () Bool)

(declare-fun res!1070445 () Bool)

(assert (=> b!1565830 (=> (not res!1070445) (not e!872791))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104561 (_ BitVec 32)) Bool)

(assert (=> b!1565830 (= res!1070445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1565831 () Bool)

(assert (=> b!1565831 (= e!872787 (and e!872790 mapRes!59818))))

(declare-fun condMapEmpty!59818 () Bool)

(declare-fun mapDefault!59818 () ValueCell!18445)

