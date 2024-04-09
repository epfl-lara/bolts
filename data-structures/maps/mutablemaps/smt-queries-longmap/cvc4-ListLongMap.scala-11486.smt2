; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133750 () Bool)

(assert start!133750)

(declare-fun b_free!32081 () Bool)

(declare-fun b_next!32081 () Bool)

(assert (=> start!133750 (= b_free!32081 (not b_next!32081))))

(declare-fun tp!113449 () Bool)

(declare-fun b_and!51661 () Bool)

(assert (=> start!133750 (= tp!113449 b_and!51661)))

(declare-fun b!1563358 () Bool)

(declare-fun e!871337 () Bool)

(declare-fun e!871335 () Bool)

(assert (=> b!1563358 (= e!871337 e!871335)))

(declare-fun res!1068892 () Bool)

(assert (=> b!1563358 (=> (not res!1068892) (not e!871335))))

(declare-datatypes ((V!59941 0))(
  ( (V!59942 (val!19484 Int)) )
))
(declare-datatypes ((tuple2!25296 0))(
  ( (tuple2!25297 (_1!12658 (_ BitVec 64)) (_2!12658 V!59941)) )
))
(declare-datatypes ((List!36684 0))(
  ( (Nil!36681) (Cons!36680 (h!38127 tuple2!25296) (t!51538 List!36684)) )
))
(declare-datatypes ((ListLongMap!22743 0))(
  ( (ListLongMap!22744 (toList!11387 List!36684)) )
))
(declare-fun lt!671820 () ListLongMap!22743)

(declare-fun contains!10307 (ListLongMap!22743 (_ BitVec 64)) Bool)

(assert (=> b!1563358 (= res!1068892 (not (contains!10307 lt!671820 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59941)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59941)

(declare-datatypes ((array!104263 0))(
  ( (array!104264 (arr!50319 (Array (_ BitVec 32) (_ BitVec 64))) (size!50870 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104263)

(declare-datatypes ((ValueCell!18370 0))(
  ( (ValueCellFull!18370 (v!22233 V!59941)) (EmptyCell!18370) )
))
(declare-datatypes ((array!104265 0))(
  ( (array!104266 (arr!50320 (Array (_ BitVec 32) ValueCell!18370)) (size!50871 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104265)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6745 (array!104263 array!104265 (_ BitVec 32) (_ BitVec 32) V!59941 V!59941 (_ BitVec 32) Int) ListLongMap!22743)

(assert (=> b!1563358 (= lt!671820 (getCurrentListMapNoExtraKeys!6745 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1563359 () Bool)

(assert (=> b!1563359 (= e!871335 false)))

(declare-fun lt!671819 () Bool)

(assert (=> b!1563359 (= lt!671819 (contains!10307 lt!671820 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1563360 () Bool)

(declare-fun res!1068889 () Bool)

(assert (=> b!1563360 (=> (not res!1068889) (not e!871337))))

(assert (=> b!1563360 (= res!1068889 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50870 _keys!637)) (bvslt from!782 (size!50870 _keys!637))))))

(declare-fun b!1563361 () Bool)

(declare-fun e!871334 () Bool)

(declare-fun tp_is_empty!38801 () Bool)

(assert (=> b!1563361 (= e!871334 tp_is_empty!38801)))

(declare-fun b!1563362 () Bool)

(declare-fun res!1068893 () Bool)

(assert (=> b!1563362 (=> (not res!1068893) (not e!871337))))

(assert (=> b!1563362 (= res!1068893 (and (= (size!50871 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50870 _keys!637) (size!50871 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563363 () Bool)

(declare-fun e!871333 () Bool)

(declare-fun e!871336 () Bool)

(declare-fun mapRes!59577 () Bool)

(assert (=> b!1563363 (= e!871333 (and e!871336 mapRes!59577))))

(declare-fun condMapEmpty!59577 () Bool)

(declare-fun mapDefault!59577 () ValueCell!18370)

