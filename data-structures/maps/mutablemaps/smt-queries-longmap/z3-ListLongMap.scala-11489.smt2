; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133766 () Bool)

(assert start!133766)

(declare-fun b_free!32097 () Bool)

(declare-fun b_next!32097 () Bool)

(assert (=> start!133766 (= b_free!32097 (not b_next!32097))))

(declare-fun tp!113496 () Bool)

(declare-fun b_and!51677 () Bool)

(assert (=> start!133766 (= tp!113496 b_and!51677)))

(declare-fun b!1563598 () Bool)

(declare-fun e!871477 () Bool)

(declare-fun tp_is_empty!38817 () Bool)

(assert (=> b!1563598 (= e!871477 tp_is_empty!38817)))

(declare-fun b!1563599 () Bool)

(declare-fun e!871478 () Bool)

(assert (=> b!1563599 (= e!871478 false)))

(declare-fun lt!671868 () Bool)

(declare-datatypes ((V!59963 0))(
  ( (V!59964 (val!19492 Int)) )
))
(declare-datatypes ((tuple2!25310 0))(
  ( (tuple2!25311 (_1!12665 (_ BitVec 64)) (_2!12665 V!59963)) )
))
(declare-datatypes ((List!36695 0))(
  ( (Nil!36692) (Cons!36691 (h!38138 tuple2!25310) (t!51549 List!36695)) )
))
(declare-datatypes ((ListLongMap!22757 0))(
  ( (ListLongMap!22758 (toList!11394 List!36695)) )
))
(declare-fun lt!671867 () ListLongMap!22757)

(declare-fun contains!10314 (ListLongMap!22757 (_ BitVec 64)) Bool)

(assert (=> b!1563599 (= lt!671868 (contains!10314 lt!671867 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1563600 () Bool)

(declare-fun e!871480 () Bool)

(assert (=> b!1563600 (= e!871480 tp_is_empty!38817)))

(declare-fun mapIsEmpty!59601 () Bool)

(declare-fun mapRes!59601 () Bool)

(assert (=> mapIsEmpty!59601 mapRes!59601))

(declare-fun b!1563601 () Bool)

(declare-fun res!1069060 () Bool)

(declare-fun e!871479 () Bool)

(assert (=> b!1563601 (=> (not res!1069060) (not e!871479))))

(declare-datatypes ((array!104295 0))(
  ( (array!104296 (arr!50335 (Array (_ BitVec 32) (_ BitVec 64))) (size!50886 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104295)

(declare-datatypes ((List!36696 0))(
  ( (Nil!36693) (Cons!36692 (h!38139 (_ BitVec 64)) (t!51550 List!36696)) )
))
(declare-fun arrayNoDuplicates!0 (array!104295 (_ BitVec 32) List!36696) Bool)

(assert (=> b!1563601 (= res!1069060 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36693))))

(declare-fun mapNonEmpty!59601 () Bool)

(declare-fun tp!113497 () Bool)

(assert (=> mapNonEmpty!59601 (= mapRes!59601 (and tp!113497 e!871480))))

(declare-fun mapKey!59601 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18378 0))(
  ( (ValueCellFull!18378 (v!22241 V!59963)) (EmptyCell!18378) )
))
(declare-fun mapRest!59601 () (Array (_ BitVec 32) ValueCell!18378))

(declare-datatypes ((array!104297 0))(
  ( (array!104298 (arr!50336 (Array (_ BitVec 32) ValueCell!18378)) (size!50887 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104297)

(declare-fun mapValue!59601 () ValueCell!18378)

(assert (=> mapNonEmpty!59601 (= (arr!50336 _values!487) (store mapRest!59601 mapKey!59601 mapValue!59601))))

(declare-fun res!1069056 () Bool)

(assert (=> start!133766 (=> (not res!1069056) (not e!871479))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133766 (= res!1069056 (validMask!0 mask!947))))

(assert (=> start!133766 e!871479))

(assert (=> start!133766 tp!113496))

(assert (=> start!133766 tp_is_empty!38817))

(assert (=> start!133766 true))

(declare-fun array_inv!39047 (array!104295) Bool)

(assert (=> start!133766 (array_inv!39047 _keys!637)))

(declare-fun e!871481 () Bool)

(declare-fun array_inv!39048 (array!104297) Bool)

(assert (=> start!133766 (and (array_inv!39048 _values!487) e!871481)))

(declare-fun b!1563602 () Bool)

(assert (=> b!1563602 (= e!871481 (and e!871477 mapRes!59601))))

(declare-fun condMapEmpty!59601 () Bool)

(declare-fun mapDefault!59601 () ValueCell!18378)

(assert (=> b!1563602 (= condMapEmpty!59601 (= (arr!50336 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18378)) mapDefault!59601)))))

(declare-fun b!1563603 () Bool)

(declare-fun res!1069058 () Bool)

(assert (=> b!1563603 (=> (not res!1069058) (not e!871479))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563603 (= res!1069058 (not (validKeyInArray!0 (select (arr!50335 _keys!637) from!782))))))

(declare-fun b!1563604 () Bool)

(declare-fun res!1069061 () Bool)

(assert (=> b!1563604 (=> (not res!1069061) (not e!871479))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104295 (_ BitVec 32)) Bool)

(assert (=> b!1563604 (= res!1069061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1563605 () Bool)

(declare-fun res!1069057 () Bool)

(assert (=> b!1563605 (=> (not res!1069057) (not e!871479))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1563605 (= res!1069057 (and (= (size!50887 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50886 _keys!637) (size!50887 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563606 () Bool)

(assert (=> b!1563606 (= e!871479 e!871478)))

(declare-fun res!1069055 () Bool)

(assert (=> b!1563606 (=> (not res!1069055) (not e!871478))))

(assert (=> b!1563606 (= res!1069055 (not (contains!10314 lt!671867 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59963)

(declare-fun minValue!453 () V!59963)

(declare-fun getCurrentListMapNoExtraKeys!6751 (array!104295 array!104297 (_ BitVec 32) (_ BitVec 32) V!59963 V!59963 (_ BitVec 32) Int) ListLongMap!22757)

(assert (=> b!1563606 (= lt!671867 (getCurrentListMapNoExtraKeys!6751 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1563607 () Bool)

(declare-fun res!1069059 () Bool)

(assert (=> b!1563607 (=> (not res!1069059) (not e!871479))))

(assert (=> b!1563607 (= res!1069059 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50886 _keys!637)) (bvslt from!782 (size!50886 _keys!637))))))

(assert (= (and start!133766 res!1069056) b!1563605))

(assert (= (and b!1563605 res!1069057) b!1563604))

(assert (= (and b!1563604 res!1069061) b!1563601))

(assert (= (and b!1563601 res!1069060) b!1563607))

(assert (= (and b!1563607 res!1069059) b!1563603))

(assert (= (and b!1563603 res!1069058) b!1563606))

(assert (= (and b!1563606 res!1069055) b!1563599))

(assert (= (and b!1563602 condMapEmpty!59601) mapIsEmpty!59601))

(assert (= (and b!1563602 (not condMapEmpty!59601)) mapNonEmpty!59601))

(get-info :version)

(assert (= (and mapNonEmpty!59601 ((_ is ValueCellFull!18378) mapValue!59601)) b!1563600))

(assert (= (and b!1563602 ((_ is ValueCellFull!18378) mapDefault!59601)) b!1563598))

(assert (= start!133766 b!1563602))

(declare-fun m!1439093 () Bool)

(assert (=> start!133766 m!1439093))

(declare-fun m!1439095 () Bool)

(assert (=> start!133766 m!1439095))

(declare-fun m!1439097 () Bool)

(assert (=> start!133766 m!1439097))

(declare-fun m!1439099 () Bool)

(assert (=> b!1563601 m!1439099))

(declare-fun m!1439101 () Bool)

(assert (=> b!1563604 m!1439101))

(declare-fun m!1439103 () Bool)

(assert (=> b!1563603 m!1439103))

(assert (=> b!1563603 m!1439103))

(declare-fun m!1439105 () Bool)

(assert (=> b!1563603 m!1439105))

(declare-fun m!1439107 () Bool)

(assert (=> b!1563606 m!1439107))

(declare-fun m!1439109 () Bool)

(assert (=> b!1563606 m!1439109))

(declare-fun m!1439111 () Bool)

(assert (=> mapNonEmpty!59601 m!1439111))

(declare-fun m!1439113 () Bool)

(assert (=> b!1563599 m!1439113))

(check-sat b_and!51677 (not mapNonEmpty!59601) (not b!1563601) (not start!133766) (not b!1563603) (not b!1563606) (not b!1563599) (not b_next!32097) tp_is_empty!38817 (not b!1563604))
(check-sat b_and!51677 (not b_next!32097))
