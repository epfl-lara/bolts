; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133562 () Bool)

(assert start!133562)

(declare-fun b_free!31947 () Bool)

(declare-fun b_next!31947 () Bool)

(assert (=> start!133562 (= b_free!31947 (not b_next!31947))))

(declare-fun tp!112966 () Bool)

(declare-fun b_and!51415 () Bool)

(assert (=> start!133562 (= tp!112966 b_and!51415)))

(declare-fun b!1560880 () Bool)

(declare-fun e!869881 () Bool)

(declare-fun tp_is_empty!38613 () Bool)

(assert (=> b!1560880 (= e!869881 tp_is_empty!38613)))

(declare-fun b!1560881 () Bool)

(declare-fun res!1067368 () Bool)

(declare-fun e!869880 () Bool)

(assert (=> b!1560881 (=> (not res!1067368) (not e!869880))))

(declare-datatypes ((array!103897 0))(
  ( (array!103898 (arr!50136 (Array (_ BitVec 32) (_ BitVec 64))) (size!50687 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103897)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103897 (_ BitVec 32)) Bool)

(assert (=> b!1560881 (= res!1067368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560882 () Bool)

(declare-fun res!1067371 () Bool)

(assert (=> b!1560882 (=> (not res!1067371) (not e!869880))))

(declare-datatypes ((List!36564 0))(
  ( (Nil!36561) (Cons!36560 (h!38007 (_ BitVec 64)) (t!51308 List!36564)) )
))
(declare-fun arrayNoDuplicates!0 (array!103897 (_ BitVec 32) List!36564) Bool)

(assert (=> b!1560882 (= res!1067371 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36561))))

(declare-fun b!1560883 () Bool)

(declare-fun res!1067367 () Bool)

(assert (=> b!1560883 (=> (not res!1067367) (not e!869880))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1560883 (= res!1067367 (validKeyInArray!0 (select (arr!50136 _keys!637) from!782)))))

(declare-fun b!1560884 () Bool)

(declare-fun e!869882 () Bool)

(assert (=> b!1560884 (= e!869882 tp_is_empty!38613)))

(declare-fun mapIsEmpty!59295 () Bool)

(declare-fun mapRes!59295 () Bool)

(assert (=> mapIsEmpty!59295 mapRes!59295))

(declare-fun b!1560886 () Bool)

(declare-fun e!869878 () Bool)

(assert (=> b!1560886 (= e!869878 (and e!869882 mapRes!59295))))

(declare-fun condMapEmpty!59295 () Bool)

(declare-datatypes ((V!59691 0))(
  ( (V!59692 (val!19390 Int)) )
))
(declare-datatypes ((ValueCell!18276 0))(
  ( (ValueCellFull!18276 (v!22139 V!59691)) (EmptyCell!18276) )
))
(declare-datatypes ((array!103899 0))(
  ( (array!103900 (arr!50137 (Array (_ BitVec 32) ValueCell!18276)) (size!50688 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103899)

(declare-fun mapDefault!59295 () ValueCell!18276)

(assert (=> b!1560886 (= condMapEmpty!59295 (= (arr!50137 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18276)) mapDefault!59295)))))

(declare-fun b!1560887 () Bool)

(assert (=> b!1560887 (= e!869880 (not true))))

(declare-datatypes ((tuple2!25186 0))(
  ( (tuple2!25187 (_1!12603 (_ BitVec 64)) (_2!12603 V!59691)) )
))
(declare-datatypes ((List!36565 0))(
  ( (Nil!36562) (Cons!36561 (h!38008 tuple2!25186) (t!51309 List!36565)) )
))
(declare-datatypes ((ListLongMap!22633 0))(
  ( (ListLongMap!22634 (toList!11332 List!36565)) )
))
(declare-fun lt!671001 () ListLongMap!22633)

(declare-fun lt!670999 () V!59691)

(declare-fun contains!10252 (ListLongMap!22633 (_ BitVec 64)) Bool)

(declare-fun +!4987 (ListLongMap!22633 tuple2!25186) ListLongMap!22633)

(assert (=> b!1560887 (not (contains!10252 (+!4987 lt!671001 (tuple2!25187 (select (arr!50136 _keys!637) from!782) lt!670999)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51838 0))(
  ( (Unit!51839) )
))
(declare-fun lt!671000 () Unit!51838)

(declare-fun addStillNotContains!523 (ListLongMap!22633 (_ BitVec 64) V!59691 (_ BitVec 64)) Unit!51838)

(assert (=> b!1560887 (= lt!671000 (addStillNotContains!523 lt!671001 (select (arr!50136 _keys!637) from!782) lt!670999 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26209 (ValueCell!18276 V!59691) V!59691)

(declare-fun dynLambda!3876 (Int (_ BitVec 64)) V!59691)

(assert (=> b!1560887 (= lt!670999 (get!26209 (select (arr!50137 _values!487) from!782) (dynLambda!3876 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59691)

(declare-fun minValue!453 () V!59691)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6693 (array!103897 array!103899 (_ BitVec 32) (_ BitVec 32) V!59691 V!59691 (_ BitVec 32) Int) ListLongMap!22633)

(assert (=> b!1560887 (= lt!671001 (getCurrentListMapNoExtraKeys!6693 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1560888 () Bool)

(declare-fun res!1067370 () Bool)

(assert (=> b!1560888 (=> (not res!1067370) (not e!869880))))

(assert (=> b!1560888 (= res!1067370 (and (= (size!50688 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50687 _keys!637) (size!50688 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59295 () Bool)

(declare-fun tp!112965 () Bool)

(assert (=> mapNonEmpty!59295 (= mapRes!59295 (and tp!112965 e!869881))))

(declare-fun mapValue!59295 () ValueCell!18276)

(declare-fun mapRest!59295 () (Array (_ BitVec 32) ValueCell!18276))

(declare-fun mapKey!59295 () (_ BitVec 32))

(assert (=> mapNonEmpty!59295 (= (arr!50137 _values!487) (store mapRest!59295 mapKey!59295 mapValue!59295))))

(declare-fun res!1067369 () Bool)

(assert (=> start!133562 (=> (not res!1067369) (not e!869880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133562 (= res!1067369 (validMask!0 mask!947))))

(assert (=> start!133562 e!869880))

(assert (=> start!133562 tp!112966))

(assert (=> start!133562 tp_is_empty!38613))

(assert (=> start!133562 true))

(declare-fun array_inv!38899 (array!103897) Bool)

(assert (=> start!133562 (array_inv!38899 _keys!637)))

(declare-fun array_inv!38900 (array!103899) Bool)

(assert (=> start!133562 (and (array_inv!38900 _values!487) e!869878)))

(declare-fun b!1560885 () Bool)

(declare-fun res!1067372 () Bool)

(assert (=> b!1560885 (=> (not res!1067372) (not e!869880))))

(assert (=> b!1560885 (= res!1067372 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50687 _keys!637)) (bvslt from!782 (size!50687 _keys!637))))))

(assert (= (and start!133562 res!1067369) b!1560888))

(assert (= (and b!1560888 res!1067370) b!1560881))

(assert (= (and b!1560881 res!1067368) b!1560882))

(assert (= (and b!1560882 res!1067371) b!1560885))

(assert (= (and b!1560885 res!1067372) b!1560883))

(assert (= (and b!1560883 res!1067367) b!1560887))

(assert (= (and b!1560886 condMapEmpty!59295) mapIsEmpty!59295))

(assert (= (and b!1560886 (not condMapEmpty!59295)) mapNonEmpty!59295))

(get-info :version)

(assert (= (and mapNonEmpty!59295 ((_ is ValueCellFull!18276) mapValue!59295)) b!1560880))

(assert (= (and b!1560886 ((_ is ValueCellFull!18276) mapDefault!59295)) b!1560884))

(assert (= start!133562 b!1560886))

(declare-fun b_lambda!24831 () Bool)

(assert (=> (not b_lambda!24831) (not b!1560887)))

(declare-fun t!51307 () Bool)

(declare-fun tb!12499 () Bool)

(assert (=> (and start!133562 (= defaultEntry!495 defaultEntry!495) t!51307) tb!12499))

(declare-fun result!26271 () Bool)

(assert (=> tb!12499 (= result!26271 tp_is_empty!38613)))

(assert (=> b!1560887 t!51307))

(declare-fun b_and!51417 () Bool)

(assert (= b_and!51415 (and (=> t!51307 result!26271) b_and!51417)))

(declare-fun m!1436593 () Bool)

(assert (=> b!1560887 m!1436593))

(declare-fun m!1436595 () Bool)

(assert (=> b!1560887 m!1436595))

(declare-fun m!1436597 () Bool)

(assert (=> b!1560887 m!1436597))

(declare-fun m!1436599 () Bool)

(assert (=> b!1560887 m!1436599))

(declare-fun m!1436601 () Bool)

(assert (=> b!1560887 m!1436601))

(declare-fun m!1436603 () Bool)

(assert (=> b!1560887 m!1436603))

(declare-fun m!1436605 () Bool)

(assert (=> b!1560887 m!1436605))

(assert (=> b!1560887 m!1436593))

(assert (=> b!1560887 m!1436599))

(assert (=> b!1560887 m!1436595))

(assert (=> b!1560887 m!1436603))

(declare-fun m!1436607 () Bool)

(assert (=> b!1560887 m!1436607))

(declare-fun m!1436609 () Bool)

(assert (=> b!1560881 m!1436609))

(assert (=> b!1560883 m!1436599))

(assert (=> b!1560883 m!1436599))

(declare-fun m!1436611 () Bool)

(assert (=> b!1560883 m!1436611))

(declare-fun m!1436613 () Bool)

(assert (=> b!1560882 m!1436613))

(declare-fun m!1436615 () Bool)

(assert (=> start!133562 m!1436615))

(declare-fun m!1436617 () Bool)

(assert (=> start!133562 m!1436617))

(declare-fun m!1436619 () Bool)

(assert (=> start!133562 m!1436619))

(declare-fun m!1436621 () Bool)

(assert (=> mapNonEmpty!59295 m!1436621))

(check-sat (not start!133562) (not b!1560881) (not mapNonEmpty!59295) (not b_lambda!24831) (not b!1560883) tp_is_empty!38613 b_and!51417 (not b_next!31947) (not b!1560882) (not b!1560887))
(check-sat b_and!51417 (not b_next!31947))
