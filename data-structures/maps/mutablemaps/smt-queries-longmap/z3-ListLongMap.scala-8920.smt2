; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108226 () Bool)

(assert start!108226)

(declare-fun b_free!27885 () Bool)

(declare-fun b_next!27885 () Bool)

(assert (=> start!108226 (= b_free!27885 (not b_next!27885))))

(declare-fun tp!98612 () Bool)

(declare-fun b_and!45953 () Bool)

(assert (=> start!108226 (= tp!98612 b_and!45953)))

(declare-fun b!1277494 () Bool)

(declare-fun res!848937 () Bool)

(declare-fun e!729627 () Bool)

(assert (=> b!1277494 (=> (not res!848937) (not e!729627))))

(declare-datatypes ((array!83909 0))(
  ( (array!83910 (arr!40460 (Array (_ BitVec 32) (_ BitVec 64))) (size!41011 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83909)

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83909 (_ BitVec 32)) Bool)

(assert (=> b!1277494 (= res!848937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1277495 () Bool)

(declare-fun res!848939 () Bool)

(assert (=> b!1277495 (=> (not res!848939) (not e!729627))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((V!49683 0))(
  ( (V!49684 (val!16792 Int)) )
))
(declare-datatypes ((ValueCell!15819 0))(
  ( (ValueCellFull!15819 (v!19388 V!49683)) (EmptyCell!15819) )
))
(declare-datatypes ((array!83911 0))(
  ( (array!83912 (arr!40461 (Array (_ BitVec 32) ValueCell!15819)) (size!41012 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83911)

(assert (=> b!1277495 (= res!848939 (and (= (size!41012 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!41011 _keys!1427) (size!41012 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51686 () Bool)

(declare-fun mapRes!51686 () Bool)

(declare-fun tp!98613 () Bool)

(declare-fun e!729626 () Bool)

(assert (=> mapNonEmpty!51686 (= mapRes!51686 (and tp!98613 e!729626))))

(declare-fun mapValue!51686 () ValueCell!15819)

(declare-fun mapKey!51686 () (_ BitVec 32))

(declare-fun mapRest!51686 () (Array (_ BitVec 32) ValueCell!15819))

(assert (=> mapNonEmpty!51686 (= (arr!40461 _values!1187) (store mapRest!51686 mapKey!51686 mapValue!51686))))

(declare-fun b!1277496 () Bool)

(declare-fun e!729625 () Bool)

(declare-fun e!729628 () Bool)

(assert (=> b!1277496 (= e!729625 (and e!729628 mapRes!51686))))

(declare-fun condMapEmpty!51686 () Bool)

(declare-fun mapDefault!51686 () ValueCell!15819)

(assert (=> b!1277496 (= condMapEmpty!51686 (= (arr!40461 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15819)) mapDefault!51686)))))

(declare-fun res!848940 () Bool)

(assert (=> start!108226 (=> (not res!848940) (not e!729627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108226 (= res!848940 (validMask!0 mask!1805))))

(assert (=> start!108226 e!729627))

(assert (=> start!108226 true))

(assert (=> start!108226 tp!98612))

(declare-fun tp_is_empty!33435 () Bool)

(assert (=> start!108226 tp_is_empty!33435))

(declare-fun array_inv!30709 (array!83911) Bool)

(assert (=> start!108226 (and (array_inv!30709 _values!1187) e!729625)))

(declare-fun array_inv!30710 (array!83909) Bool)

(assert (=> start!108226 (array_inv!30710 _keys!1427)))

(declare-fun b!1277497 () Bool)

(assert (=> b!1277497 (= e!729627 false)))

(declare-fun defaultEntry!1195 () Int)

(declare-fun lt!575655 () Bool)

(declare-fun minValue!1129 () V!49683)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49683)

(declare-datatypes ((tuple2!21690 0))(
  ( (tuple2!21691 (_1!10855 (_ BitVec 64)) (_2!10855 V!49683)) )
))
(declare-datatypes ((List!28875 0))(
  ( (Nil!28872) (Cons!28871 (h!30080 tuple2!21690) (t!42420 List!28875)) )
))
(declare-datatypes ((ListLongMap!19359 0))(
  ( (ListLongMap!19360 (toList!9695 List!28875)) )
))
(declare-fun contains!7743 (ListLongMap!19359 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4715 (array!83909 array!83911 (_ BitVec 32) (_ BitVec 32) V!49683 V!49683 (_ BitVec 32) Int) ListLongMap!19359)

(assert (=> b!1277497 (= lt!575655 (contains!7743 (getCurrentListMap!4715 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun b!1277498 () Bool)

(declare-fun res!848938 () Bool)

(assert (=> b!1277498 (=> (not res!848938) (not e!729627))))

(declare-datatypes ((List!28876 0))(
  ( (Nil!28873) (Cons!28872 (h!30081 (_ BitVec 64)) (t!42421 List!28876)) )
))
(declare-fun arrayNoDuplicates!0 (array!83909 (_ BitVec 32) List!28876) Bool)

(assert (=> b!1277498 (= res!848938 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28873))))

(declare-fun b!1277499 () Bool)

(assert (=> b!1277499 (= e!729626 tp_is_empty!33435)))

(declare-fun mapIsEmpty!51686 () Bool)

(assert (=> mapIsEmpty!51686 mapRes!51686))

(declare-fun b!1277500 () Bool)

(assert (=> b!1277500 (= e!729628 tp_is_empty!33435)))

(assert (= (and start!108226 res!848940) b!1277495))

(assert (= (and b!1277495 res!848939) b!1277494))

(assert (= (and b!1277494 res!848937) b!1277498))

(assert (= (and b!1277498 res!848938) b!1277497))

(assert (= (and b!1277496 condMapEmpty!51686) mapIsEmpty!51686))

(assert (= (and b!1277496 (not condMapEmpty!51686)) mapNonEmpty!51686))

(get-info :version)

(assert (= (and mapNonEmpty!51686 ((_ is ValueCellFull!15819) mapValue!51686)) b!1277499))

(assert (= (and b!1277496 ((_ is ValueCellFull!15819) mapDefault!51686)) b!1277500))

(assert (= start!108226 b!1277496))

(declare-fun m!1173123 () Bool)

(assert (=> b!1277498 m!1173123))

(declare-fun m!1173125 () Bool)

(assert (=> b!1277497 m!1173125))

(assert (=> b!1277497 m!1173125))

(declare-fun m!1173127 () Bool)

(assert (=> b!1277497 m!1173127))

(declare-fun m!1173129 () Bool)

(assert (=> start!108226 m!1173129))

(declare-fun m!1173131 () Bool)

(assert (=> start!108226 m!1173131))

(declare-fun m!1173133 () Bool)

(assert (=> start!108226 m!1173133))

(declare-fun m!1173135 () Bool)

(assert (=> b!1277494 m!1173135))

(declare-fun m!1173137 () Bool)

(assert (=> mapNonEmpty!51686 m!1173137))

(check-sat tp_is_empty!33435 (not b!1277494) (not b!1277498) (not mapNonEmpty!51686) b_and!45953 (not b!1277497) (not b_next!27885) (not start!108226))
(check-sat b_and!45953 (not b_next!27885))
