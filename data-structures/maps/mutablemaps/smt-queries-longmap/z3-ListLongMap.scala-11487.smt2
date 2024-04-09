; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133754 () Bool)

(assert start!133754)

(declare-fun b_free!32085 () Bool)

(declare-fun b_next!32085 () Bool)

(assert (=> start!133754 (= b_free!32085 (not b_next!32085))))

(declare-fun tp!113460 () Bool)

(declare-fun b_and!51665 () Bool)

(assert (=> start!133754 (= tp!113460 b_and!51665)))

(declare-fun mapNonEmpty!59583 () Bool)

(declare-fun mapRes!59583 () Bool)

(declare-fun tp!113461 () Bool)

(declare-fun e!871369 () Bool)

(assert (=> mapNonEmpty!59583 (= mapRes!59583 (and tp!113461 e!871369))))

(declare-datatypes ((V!59947 0))(
  ( (V!59948 (val!19486 Int)) )
))
(declare-datatypes ((ValueCell!18372 0))(
  ( (ValueCellFull!18372 (v!22235 V!59947)) (EmptyCell!18372) )
))
(declare-fun mapRest!59583 () (Array (_ BitVec 32) ValueCell!18372))

(declare-datatypes ((array!104271 0))(
  ( (array!104272 (arr!50323 (Array (_ BitVec 32) ValueCell!18372)) (size!50874 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104271)

(declare-fun mapValue!59583 () ValueCell!18372)

(declare-fun mapKey!59583 () (_ BitVec 32))

(assert (=> mapNonEmpty!59583 (= (arr!50323 _values!487) (store mapRest!59583 mapKey!59583 mapValue!59583))))

(declare-fun b!1563419 () Bool)

(declare-fun res!1068932 () Bool)

(declare-fun e!871370 () Bool)

(assert (=> b!1563419 (=> (not res!1068932) (not e!871370))))

(declare-datatypes ((array!104273 0))(
  ( (array!104274 (arr!50324 (Array (_ BitVec 32) (_ BitVec 64))) (size!50875 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104273)

(declare-datatypes ((List!36687 0))(
  ( (Nil!36684) (Cons!36683 (h!38130 (_ BitVec 64)) (t!51541 List!36687)) )
))
(declare-fun arrayNoDuplicates!0 (array!104273 (_ BitVec 32) List!36687) Bool)

(assert (=> b!1563419 (= res!1068932 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36684))))

(declare-fun b!1563420 () Bool)

(declare-fun e!871368 () Bool)

(declare-fun e!871373 () Bool)

(assert (=> b!1563420 (= e!871368 (and e!871373 mapRes!59583))))

(declare-fun condMapEmpty!59583 () Bool)

(declare-fun mapDefault!59583 () ValueCell!18372)

(assert (=> b!1563420 (= condMapEmpty!59583 (= (arr!50323 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18372)) mapDefault!59583)))))

(declare-fun b!1563418 () Bool)

(declare-fun res!1068929 () Bool)

(assert (=> b!1563418 (=> (not res!1068929) (not e!871370))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104273 (_ BitVec 32)) Bool)

(assert (=> b!1563418 (= res!1068929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun res!1068933 () Bool)

(assert (=> start!133754 (=> (not res!1068933) (not e!871370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133754 (= res!1068933 (validMask!0 mask!947))))

(assert (=> start!133754 e!871370))

(assert (=> start!133754 tp!113460))

(declare-fun tp_is_empty!38805 () Bool)

(assert (=> start!133754 tp_is_empty!38805))

(assert (=> start!133754 true))

(declare-fun array_inv!39035 (array!104273) Bool)

(assert (=> start!133754 (array_inv!39035 _keys!637)))

(declare-fun array_inv!39036 (array!104271) Bool)

(assert (=> start!133754 (and (array_inv!39036 _values!487) e!871368)))

(declare-fun mapIsEmpty!59583 () Bool)

(assert (=> mapIsEmpty!59583 mapRes!59583))

(declare-fun b!1563421 () Bool)

(assert (=> b!1563421 (= e!871369 tp_is_empty!38805)))

(declare-fun b!1563422 () Bool)

(declare-fun res!1068931 () Bool)

(assert (=> b!1563422 (=> (not res!1068931) (not e!871370))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1563422 (= res!1068931 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50875 _keys!637)) (bvslt from!782 (size!50875 _keys!637))))))

(declare-fun b!1563423 () Bool)

(declare-fun res!1068930 () Bool)

(assert (=> b!1563423 (=> (not res!1068930) (not e!871370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563423 (= res!1068930 (not (validKeyInArray!0 (select (arr!50324 _keys!637) from!782))))))

(declare-fun b!1563424 () Bool)

(assert (=> b!1563424 (= e!871373 tp_is_empty!38805)))

(declare-fun b!1563425 () Bool)

(declare-fun res!1068934 () Bool)

(assert (=> b!1563425 (=> (not res!1068934) (not e!871370))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1563425 (= res!1068934 (and (= (size!50874 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50875 _keys!637) (size!50874 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563426 () Bool)

(declare-fun e!871372 () Bool)

(assert (=> b!1563426 (= e!871372 false)))

(declare-fun lt!671832 () Bool)

(declare-datatypes ((tuple2!25300 0))(
  ( (tuple2!25301 (_1!12660 (_ BitVec 64)) (_2!12660 V!59947)) )
))
(declare-datatypes ((List!36688 0))(
  ( (Nil!36685) (Cons!36684 (h!38131 tuple2!25300) (t!51542 List!36688)) )
))
(declare-datatypes ((ListLongMap!22747 0))(
  ( (ListLongMap!22748 (toList!11389 List!36688)) )
))
(declare-fun lt!671831 () ListLongMap!22747)

(declare-fun contains!10309 (ListLongMap!22747 (_ BitVec 64)) Bool)

(assert (=> b!1563426 (= lt!671832 (contains!10309 lt!671831 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1563427 () Bool)

(assert (=> b!1563427 (= e!871370 e!871372)))

(declare-fun res!1068935 () Bool)

(assert (=> b!1563427 (=> (not res!1068935) (not e!871372))))

(assert (=> b!1563427 (= res!1068935 (not (contains!10309 lt!671831 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59947)

(declare-fun minValue!453 () V!59947)

(declare-fun getCurrentListMapNoExtraKeys!6746 (array!104273 array!104271 (_ BitVec 32) (_ BitVec 32) V!59947 V!59947 (_ BitVec 32) Int) ListLongMap!22747)

(assert (=> b!1563427 (= lt!671831 (getCurrentListMapNoExtraKeys!6746 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(assert (= (and start!133754 res!1068933) b!1563425))

(assert (= (and b!1563425 res!1068934) b!1563418))

(assert (= (and b!1563418 res!1068929) b!1563419))

(assert (= (and b!1563419 res!1068932) b!1563422))

(assert (= (and b!1563422 res!1068931) b!1563423))

(assert (= (and b!1563423 res!1068930) b!1563427))

(assert (= (and b!1563427 res!1068935) b!1563426))

(assert (= (and b!1563420 condMapEmpty!59583) mapIsEmpty!59583))

(assert (= (and b!1563420 (not condMapEmpty!59583)) mapNonEmpty!59583))

(get-info :version)

(assert (= (and mapNonEmpty!59583 ((_ is ValueCellFull!18372) mapValue!59583)) b!1563421))

(assert (= (and b!1563420 ((_ is ValueCellFull!18372) mapDefault!59583)) b!1563424))

(assert (= start!133754 b!1563420))

(declare-fun m!1438961 () Bool)

(assert (=> mapNonEmpty!59583 m!1438961))

(declare-fun m!1438963 () Bool)

(assert (=> start!133754 m!1438963))

(declare-fun m!1438965 () Bool)

(assert (=> start!133754 m!1438965))

(declare-fun m!1438967 () Bool)

(assert (=> start!133754 m!1438967))

(declare-fun m!1438969 () Bool)

(assert (=> b!1563426 m!1438969))

(declare-fun m!1438971 () Bool)

(assert (=> b!1563423 m!1438971))

(assert (=> b!1563423 m!1438971))

(declare-fun m!1438973 () Bool)

(assert (=> b!1563423 m!1438973))

(declare-fun m!1438975 () Bool)

(assert (=> b!1563419 m!1438975))

(declare-fun m!1438977 () Bool)

(assert (=> b!1563418 m!1438977))

(declare-fun m!1438979 () Bool)

(assert (=> b!1563427 m!1438979))

(declare-fun m!1438981 () Bool)

(assert (=> b!1563427 m!1438981))

(check-sat (not b_next!32085) b_and!51665 (not b!1563419) (not b!1563418) (not mapNonEmpty!59583) (not b!1563426) (not start!133754) tp_is_empty!38805 (not b!1563423) (not b!1563427))
(check-sat b_and!51665 (not b_next!32085))
