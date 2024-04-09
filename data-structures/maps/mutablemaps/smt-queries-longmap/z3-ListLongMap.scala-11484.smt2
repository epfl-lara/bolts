; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133736 () Bool)

(assert start!133736)

(declare-fun b_free!32067 () Bool)

(declare-fun b_next!32067 () Bool)

(assert (=> start!133736 (= b_free!32067 (not b_next!32067))))

(declare-fun tp!113406 () Bool)

(declare-fun b_and!51647 () Bool)

(assert (=> start!133736 (= tp!113406 b_and!51647)))

(declare-fun b!1563148 () Bool)

(declare-fun res!1068745 () Bool)

(declare-fun e!871206 () Bool)

(assert (=> b!1563148 (=> (not res!1068745) (not e!871206))))

(declare-datatypes ((array!104235 0))(
  ( (array!104236 (arr!50305 (Array (_ BitVec 32) (_ BitVec 64))) (size!50856 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104235)

(declare-datatypes ((List!36672 0))(
  ( (Nil!36669) (Cons!36668 (h!38115 (_ BitVec 64)) (t!51526 List!36672)) )
))
(declare-fun arrayNoDuplicates!0 (array!104235 (_ BitVec 32) List!36672) Bool)

(assert (=> b!1563148 (= res!1068745 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36669))))

(declare-fun b!1563149 () Bool)

(declare-fun e!871211 () Bool)

(declare-fun tp_is_empty!38787 () Bool)

(assert (=> b!1563149 (= e!871211 tp_is_empty!38787)))

(declare-fun mapIsEmpty!59556 () Bool)

(declare-fun mapRes!59556 () Bool)

(assert (=> mapIsEmpty!59556 mapRes!59556))

(declare-fun b!1563150 () Bool)

(declare-fun res!1068741 () Bool)

(assert (=> b!1563150 (=> (not res!1068741) (not e!871206))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104235 (_ BitVec 32)) Bool)

(assert (=> b!1563150 (= res!1068741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1563151 () Bool)

(declare-fun e!871210 () Bool)

(assert (=> b!1563151 (= e!871210 false)))

(declare-fun lt!671777 () Bool)

(declare-datatypes ((V!59923 0))(
  ( (V!59924 (val!19477 Int)) )
))
(declare-datatypes ((tuple2!25284 0))(
  ( (tuple2!25285 (_1!12652 (_ BitVec 64)) (_2!12652 V!59923)) )
))
(declare-datatypes ((List!36673 0))(
  ( (Nil!36670) (Cons!36669 (h!38116 tuple2!25284) (t!51527 List!36673)) )
))
(declare-datatypes ((ListLongMap!22731 0))(
  ( (ListLongMap!22732 (toList!11381 List!36673)) )
))
(declare-fun lt!671778 () ListLongMap!22731)

(declare-fun contains!10301 (ListLongMap!22731 (_ BitVec 64)) Bool)

(assert (=> b!1563151 (= lt!671777 (contains!10301 lt!671778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!59556 () Bool)

(declare-fun tp!113407 () Bool)

(assert (=> mapNonEmpty!59556 (= mapRes!59556 (and tp!113407 e!871211))))

(declare-datatypes ((ValueCell!18363 0))(
  ( (ValueCellFull!18363 (v!22226 V!59923)) (EmptyCell!18363) )
))
(declare-fun mapValue!59556 () ValueCell!18363)

(declare-fun mapKey!59556 () (_ BitVec 32))

(declare-datatypes ((array!104237 0))(
  ( (array!104238 (arr!50306 (Array (_ BitVec 32) ValueCell!18363)) (size!50857 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104237)

(declare-fun mapRest!59556 () (Array (_ BitVec 32) ValueCell!18363))

(assert (=> mapNonEmpty!59556 (= (arr!50306 _values!487) (store mapRest!59556 mapKey!59556 mapValue!59556))))

(declare-fun b!1563153 () Bool)

(declare-fun e!871207 () Bool)

(declare-fun e!871208 () Bool)

(assert (=> b!1563153 (= e!871207 (and e!871208 mapRes!59556))))

(declare-fun condMapEmpty!59556 () Bool)

(declare-fun mapDefault!59556 () ValueCell!18363)

(assert (=> b!1563153 (= condMapEmpty!59556 (= (arr!50306 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18363)) mapDefault!59556)))))

(declare-fun b!1563154 () Bool)

(assert (=> b!1563154 (= e!871208 tp_is_empty!38787)))

(declare-fun b!1563155 () Bool)

(assert (=> b!1563155 (= e!871206 e!871210)))

(declare-fun res!1068742 () Bool)

(assert (=> b!1563155 (=> (not res!1068742) (not e!871210))))

(assert (=> b!1563155 (= res!1068742 (not (contains!10301 lt!671778 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59923)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59923)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6740 (array!104235 array!104237 (_ BitVec 32) (_ BitVec 32) V!59923 V!59923 (_ BitVec 32) Int) ListLongMap!22731)

(assert (=> b!1563155 (= lt!671778 (getCurrentListMapNoExtraKeys!6740 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1563156 () Bool)

(declare-fun res!1068744 () Bool)

(assert (=> b!1563156 (=> (not res!1068744) (not e!871206))))

(assert (=> b!1563156 (= res!1068744 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50856 _keys!637)) (bvslt from!782 (size!50856 _keys!637))))))

(declare-fun b!1563157 () Bool)

(declare-fun res!1068746 () Bool)

(assert (=> b!1563157 (=> (not res!1068746) (not e!871206))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563157 (= res!1068746 (not (validKeyInArray!0 (select (arr!50305 _keys!637) from!782))))))

(declare-fun res!1068740 () Bool)

(assert (=> start!133736 (=> (not res!1068740) (not e!871206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133736 (= res!1068740 (validMask!0 mask!947))))

(assert (=> start!133736 e!871206))

(assert (=> start!133736 tp!113406))

(assert (=> start!133736 tp_is_empty!38787))

(assert (=> start!133736 true))

(declare-fun array_inv!39023 (array!104235) Bool)

(assert (=> start!133736 (array_inv!39023 _keys!637)))

(declare-fun array_inv!39024 (array!104237) Bool)

(assert (=> start!133736 (and (array_inv!39024 _values!487) e!871207)))

(declare-fun b!1563152 () Bool)

(declare-fun res!1068743 () Bool)

(assert (=> b!1563152 (=> (not res!1068743) (not e!871206))))

(assert (=> b!1563152 (= res!1068743 (and (= (size!50857 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50856 _keys!637) (size!50857 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(assert (= (and start!133736 res!1068740) b!1563152))

(assert (= (and b!1563152 res!1068743) b!1563150))

(assert (= (and b!1563150 res!1068741) b!1563148))

(assert (= (and b!1563148 res!1068745) b!1563156))

(assert (= (and b!1563156 res!1068744) b!1563157))

(assert (= (and b!1563157 res!1068746) b!1563155))

(assert (= (and b!1563155 res!1068742) b!1563151))

(assert (= (and b!1563153 condMapEmpty!59556) mapIsEmpty!59556))

(assert (= (and b!1563153 (not condMapEmpty!59556)) mapNonEmpty!59556))

(get-info :version)

(assert (= (and mapNonEmpty!59556 ((_ is ValueCellFull!18363) mapValue!59556)) b!1563149))

(assert (= (and b!1563153 ((_ is ValueCellFull!18363) mapDefault!59556)) b!1563154))

(assert (= start!133736 b!1563153))

(declare-fun m!1438763 () Bool)

(assert (=> b!1563148 m!1438763))

(declare-fun m!1438765 () Bool)

(assert (=> b!1563157 m!1438765))

(assert (=> b!1563157 m!1438765))

(declare-fun m!1438767 () Bool)

(assert (=> b!1563157 m!1438767))

(declare-fun m!1438769 () Bool)

(assert (=> b!1563155 m!1438769))

(declare-fun m!1438771 () Bool)

(assert (=> b!1563155 m!1438771))

(declare-fun m!1438773 () Bool)

(assert (=> start!133736 m!1438773))

(declare-fun m!1438775 () Bool)

(assert (=> start!133736 m!1438775))

(declare-fun m!1438777 () Bool)

(assert (=> start!133736 m!1438777))

(declare-fun m!1438779 () Bool)

(assert (=> mapNonEmpty!59556 m!1438779))

(declare-fun m!1438781 () Bool)

(assert (=> b!1563150 m!1438781))

(declare-fun m!1438783 () Bool)

(assert (=> b!1563151 m!1438783))

(check-sat (not b!1563150) (not b_next!32067) b_and!51647 (not b!1563151) (not b!1563148) tp_is_empty!38787 (not b!1563155) (not start!133736) (not mapNonEmpty!59556) (not b!1563157))
(check-sat b_and!51647 (not b_next!32067))
