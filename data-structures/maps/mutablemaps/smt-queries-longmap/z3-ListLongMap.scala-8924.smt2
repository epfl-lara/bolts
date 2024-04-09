; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108264 () Bool)

(assert start!108264)

(declare-fun b_free!27909 () Bool)

(declare-fun b_next!27909 () Bool)

(assert (=> start!108264 (= b_free!27909 (not b_next!27909))))

(declare-fun tp!98687 () Bool)

(declare-fun b_and!45979 () Bool)

(assert (=> start!108264 (= tp!98687 b_and!45979)))

(declare-fun b!1277864 () Bool)

(declare-fun res!849138 () Bool)

(declare-fun e!729881 () Bool)

(assert (=> b!1277864 (=> (not res!849138) (not e!729881))))

(declare-datatypes ((array!83955 0))(
  ( (array!83956 (arr!40482 (Array (_ BitVec 32) (_ BitVec 64))) (size!41033 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83955)

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83955 (_ BitVec 32)) Bool)

(assert (=> b!1277864 (= res!849138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1277865 () Bool)

(declare-fun e!729880 () Bool)

(declare-fun tp_is_empty!33459 () Bool)

(assert (=> b!1277865 (= e!729880 tp_is_empty!33459)))

(declare-fun mapIsEmpty!51725 () Bool)

(declare-fun mapRes!51725 () Bool)

(assert (=> mapIsEmpty!51725 mapRes!51725))

(declare-fun b!1277866 () Bool)

(declare-fun res!849135 () Bool)

(assert (=> b!1277866 (=> (not res!849135) (not e!729881))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((V!49715 0))(
  ( (V!49716 (val!16804 Int)) )
))
(declare-datatypes ((ValueCell!15831 0))(
  ( (ValueCellFull!15831 (v!19401 V!49715)) (EmptyCell!15831) )
))
(declare-datatypes ((array!83957 0))(
  ( (array!83958 (arr!40483 (Array (_ BitVec 32) ValueCell!15831)) (size!41034 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83957)

(assert (=> b!1277866 (= res!849135 (and (= (size!41034 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!41033 _keys!1427) (size!41034 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun res!849136 () Bool)

(assert (=> start!108264 (=> (not res!849136) (not e!729881))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108264 (= res!849136 (validMask!0 mask!1805))))

(assert (=> start!108264 e!729881))

(assert (=> start!108264 true))

(assert (=> start!108264 tp!98687))

(assert (=> start!108264 tp_is_empty!33459))

(declare-fun e!729878 () Bool)

(declare-fun array_inv!30725 (array!83957) Bool)

(assert (=> start!108264 (and (array_inv!30725 _values!1187) e!729878)))

(declare-fun array_inv!30726 (array!83955) Bool)

(assert (=> start!108264 (array_inv!30726 _keys!1427)))

(declare-fun b!1277867 () Bool)

(assert (=> b!1277867 (= e!729878 (and e!729880 mapRes!51725))))

(declare-fun condMapEmpty!51725 () Bool)

(declare-fun mapDefault!51725 () ValueCell!15831)

(assert (=> b!1277867 (= condMapEmpty!51725 (= (arr!40483 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15831)) mapDefault!51725)))))

(declare-fun b!1277868 () Bool)

(assert (=> b!1277868 (= e!729881 false)))

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49715)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-fun lt!575769 () Bool)

(declare-fun zeroValue!1129 () V!49715)

(declare-datatypes ((tuple2!21702 0))(
  ( (tuple2!21703 (_1!10861 (_ BitVec 64)) (_2!10861 V!49715)) )
))
(declare-datatypes ((List!28891 0))(
  ( (Nil!28888) (Cons!28887 (h!30096 tuple2!21702) (t!42438 List!28891)) )
))
(declare-datatypes ((ListLongMap!19371 0))(
  ( (ListLongMap!19372 (toList!9701 List!28891)) )
))
(declare-fun contains!7750 (ListLongMap!19371 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4721 (array!83955 array!83957 (_ BitVec 32) (_ BitVec 32) V!49715 V!49715 (_ BitVec 32) Int) ListLongMap!19371)

(assert (=> b!1277868 (= lt!575769 (contains!7750 (getCurrentListMap!4721 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun b!1277869 () Bool)

(declare-fun e!729877 () Bool)

(assert (=> b!1277869 (= e!729877 tp_is_empty!33459)))

(declare-fun mapNonEmpty!51725 () Bool)

(declare-fun tp!98688 () Bool)

(assert (=> mapNonEmpty!51725 (= mapRes!51725 (and tp!98688 e!729877))))

(declare-fun mapValue!51725 () ValueCell!15831)

(declare-fun mapRest!51725 () (Array (_ BitVec 32) ValueCell!15831))

(declare-fun mapKey!51725 () (_ BitVec 32))

(assert (=> mapNonEmpty!51725 (= (arr!40483 _values!1187) (store mapRest!51725 mapKey!51725 mapValue!51725))))

(declare-fun b!1277870 () Bool)

(declare-fun res!849137 () Bool)

(assert (=> b!1277870 (=> (not res!849137) (not e!729881))))

(declare-datatypes ((List!28892 0))(
  ( (Nil!28889) (Cons!28888 (h!30097 (_ BitVec 64)) (t!42439 List!28892)) )
))
(declare-fun arrayNoDuplicates!0 (array!83955 (_ BitVec 32) List!28892) Bool)

(assert (=> b!1277870 (= res!849137 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28889))))

(assert (= (and start!108264 res!849136) b!1277866))

(assert (= (and b!1277866 res!849135) b!1277864))

(assert (= (and b!1277864 res!849138) b!1277870))

(assert (= (and b!1277870 res!849137) b!1277868))

(assert (= (and b!1277867 condMapEmpty!51725) mapIsEmpty!51725))

(assert (= (and b!1277867 (not condMapEmpty!51725)) mapNonEmpty!51725))

(get-info :version)

(assert (= (and mapNonEmpty!51725 ((_ is ValueCellFull!15831) mapValue!51725)) b!1277869))

(assert (= (and b!1277867 ((_ is ValueCellFull!15831) mapDefault!51725)) b!1277865))

(assert (= start!108264 b!1277867))

(declare-fun m!1173395 () Bool)

(assert (=> start!108264 m!1173395))

(declare-fun m!1173397 () Bool)

(assert (=> start!108264 m!1173397))

(declare-fun m!1173399 () Bool)

(assert (=> start!108264 m!1173399))

(declare-fun m!1173401 () Bool)

(assert (=> b!1277870 m!1173401))

(declare-fun m!1173403 () Bool)

(assert (=> mapNonEmpty!51725 m!1173403))

(declare-fun m!1173405 () Bool)

(assert (=> b!1277868 m!1173405))

(assert (=> b!1277868 m!1173405))

(declare-fun m!1173407 () Bool)

(assert (=> b!1277868 m!1173407))

(declare-fun m!1173409 () Bool)

(assert (=> b!1277864 m!1173409))

(check-sat (not b!1277870) (not start!108264) (not b!1277864) (not b!1277868) (not mapNonEmpty!51725) tp_is_empty!33459 (not b_next!27909) b_and!45979)
(check-sat b_and!45979 (not b_next!27909))
