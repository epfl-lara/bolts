; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133764 () Bool)

(assert start!133764)

(declare-fun b_free!32095 () Bool)

(declare-fun b_next!32095 () Bool)

(assert (=> start!133764 (= b_free!32095 (not b_next!32095))))

(declare-fun tp!113491 () Bool)

(declare-fun b_and!51675 () Bool)

(assert (=> start!133764 (= tp!113491 b_and!51675)))

(declare-fun b!1563568 () Bool)

(declare-fun e!871463 () Bool)

(declare-fun tp_is_empty!38815 () Bool)

(assert (=> b!1563568 (= e!871463 tp_is_empty!38815)))

(declare-fun b!1563569 () Bool)

(declare-fun res!1069040 () Bool)

(declare-fun e!871460 () Bool)

(assert (=> b!1563569 (=> (not res!1069040) (not e!871460))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104291 0))(
  ( (array!104292 (arr!50333 (Array (_ BitVec 32) (_ BitVec 64))) (size!50884 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104291)

(declare-datatypes ((V!59961 0))(
  ( (V!59962 (val!19491 Int)) )
))
(declare-datatypes ((ValueCell!18377 0))(
  ( (ValueCellFull!18377 (v!22240 V!59961)) (EmptyCell!18377) )
))
(declare-datatypes ((array!104293 0))(
  ( (array!104294 (arr!50334 (Array (_ BitVec 32) ValueCell!18377)) (size!50885 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104293)

(assert (=> b!1563569 (= res!1069040 (and (= (size!50885 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50884 _keys!637) (size!50885 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59598 () Bool)

(declare-fun mapRes!59598 () Bool)

(assert (=> mapIsEmpty!59598 mapRes!59598))

(declare-fun b!1563570 () Bool)

(declare-fun e!871461 () Bool)

(assert (=> b!1563570 (= e!871461 false)))

(declare-fun lt!671861 () Bool)

(declare-datatypes ((tuple2!25308 0))(
  ( (tuple2!25309 (_1!12664 (_ BitVec 64)) (_2!12664 V!59961)) )
))
(declare-datatypes ((List!36693 0))(
  ( (Nil!36690) (Cons!36689 (h!38136 tuple2!25308) (t!51547 List!36693)) )
))
(declare-datatypes ((ListLongMap!22755 0))(
  ( (ListLongMap!22756 (toList!11393 List!36693)) )
))
(declare-fun lt!671862 () ListLongMap!22755)

(declare-fun contains!10313 (ListLongMap!22755 (_ BitVec 64)) Bool)

(assert (=> b!1563570 (= lt!671861 (contains!10313 lt!671862 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1563571 () Bool)

(declare-fun res!1069036 () Bool)

(assert (=> b!1563571 (=> (not res!1069036) (not e!871460))))

(declare-datatypes ((List!36694 0))(
  ( (Nil!36691) (Cons!36690 (h!38137 (_ BitVec 64)) (t!51548 List!36694)) )
))
(declare-fun arrayNoDuplicates!0 (array!104291 (_ BitVec 32) List!36694) Bool)

(assert (=> b!1563571 (= res!1069036 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36691))))

(declare-fun b!1563572 () Bool)

(declare-fun res!1069035 () Bool)

(assert (=> b!1563572 (=> (not res!1069035) (not e!871460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104291 (_ BitVec 32)) Bool)

(assert (=> b!1563572 (= res!1069035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1563573 () Bool)

(declare-fun res!1069037 () Bool)

(assert (=> b!1563573 (=> (not res!1069037) (not e!871460))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1563573 (= res!1069037 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50884 _keys!637)) (bvslt from!782 (size!50884 _keys!637))))))

(declare-fun b!1563574 () Bool)

(assert (=> b!1563574 (= e!871460 e!871461)))

(declare-fun res!1069034 () Bool)

(assert (=> b!1563574 (=> (not res!1069034) (not e!871461))))

(assert (=> b!1563574 (= res!1069034 (not (contains!10313 lt!671862 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59961)

(declare-fun minValue!453 () V!59961)

(declare-fun getCurrentListMapNoExtraKeys!6750 (array!104291 array!104293 (_ BitVec 32) (_ BitVec 32) V!59961 V!59961 (_ BitVec 32) Int) ListLongMap!22755)

(assert (=> b!1563574 (= lt!671862 (getCurrentListMapNoExtraKeys!6750 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun res!1069039 () Bool)

(assert (=> start!133764 (=> (not res!1069039) (not e!871460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133764 (= res!1069039 (validMask!0 mask!947))))

(assert (=> start!133764 e!871460))

(assert (=> start!133764 tp!113491))

(assert (=> start!133764 tp_is_empty!38815))

(assert (=> start!133764 true))

(declare-fun array_inv!39045 (array!104291) Bool)

(assert (=> start!133764 (array_inv!39045 _keys!637)))

(declare-fun e!871462 () Bool)

(declare-fun array_inv!39046 (array!104293) Bool)

(assert (=> start!133764 (and (array_inv!39046 _values!487) e!871462)))

(declare-fun b!1563575 () Bool)

(declare-fun res!1069038 () Bool)

(assert (=> b!1563575 (=> (not res!1069038) (not e!871460))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563575 (= res!1069038 (not (validKeyInArray!0 (select (arr!50333 _keys!637) from!782))))))

(declare-fun mapNonEmpty!59598 () Bool)

(declare-fun tp!113490 () Bool)

(assert (=> mapNonEmpty!59598 (= mapRes!59598 (and tp!113490 e!871463))))

(declare-fun mapRest!59598 () (Array (_ BitVec 32) ValueCell!18377))

(declare-fun mapValue!59598 () ValueCell!18377)

(declare-fun mapKey!59598 () (_ BitVec 32))

(assert (=> mapNonEmpty!59598 (= (arr!50334 _values!487) (store mapRest!59598 mapKey!59598 mapValue!59598))))

(declare-fun b!1563576 () Bool)

(declare-fun e!871458 () Bool)

(assert (=> b!1563576 (= e!871458 tp_is_empty!38815)))

(declare-fun b!1563577 () Bool)

(assert (=> b!1563577 (= e!871462 (and e!871458 mapRes!59598))))

(declare-fun condMapEmpty!59598 () Bool)

(declare-fun mapDefault!59598 () ValueCell!18377)

