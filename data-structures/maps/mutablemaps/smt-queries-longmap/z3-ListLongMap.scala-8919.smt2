; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108220 () Bool)

(assert start!108220)

(declare-fun b_free!27879 () Bool)

(declare-fun b_next!27879 () Bool)

(assert (=> start!108220 (= b_free!27879 (not b_next!27879))))

(declare-fun tp!98595 () Bool)

(declare-fun b_and!45947 () Bool)

(assert (=> start!108220 (= tp!98595 b_and!45947)))

(declare-fun b!1277431 () Bool)

(declare-fun e!729583 () Bool)

(assert (=> b!1277431 (= e!729583 false)))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-fun lt!575646 () Bool)

(declare-datatypes ((V!49675 0))(
  ( (V!49676 (val!16789 Int)) )
))
(declare-fun minValue!1129 () V!49675)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-datatypes ((ValueCell!15816 0))(
  ( (ValueCellFull!15816 (v!19385 V!49675)) (EmptyCell!15816) )
))
(declare-datatypes ((array!83897 0))(
  ( (array!83898 (arr!40454 (Array (_ BitVec 32) ValueCell!15816)) (size!41005 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83897)

(declare-fun zeroValue!1129 () V!49675)

(declare-datatypes ((array!83899 0))(
  ( (array!83900 (arr!40455 (Array (_ BitVec 32) (_ BitVec 64))) (size!41006 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83899)

(declare-datatypes ((tuple2!21684 0))(
  ( (tuple2!21685 (_1!10852 (_ BitVec 64)) (_2!10852 V!49675)) )
))
(declare-datatypes ((List!28870 0))(
  ( (Nil!28867) (Cons!28866 (h!30075 tuple2!21684) (t!42415 List!28870)) )
))
(declare-datatypes ((ListLongMap!19353 0))(
  ( (ListLongMap!19354 (toList!9692 List!28870)) )
))
(declare-fun contains!7740 (ListLongMap!19353 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4712 (array!83899 array!83897 (_ BitVec 32) (_ BitVec 32) V!49675 V!49675 (_ BitVec 32) Int) ListLongMap!19353)

(assert (=> b!1277431 (= lt!575646 (contains!7740 (getCurrentListMap!4712 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun mapNonEmpty!51677 () Bool)

(declare-fun mapRes!51677 () Bool)

(declare-fun tp!98594 () Bool)

(declare-fun e!729584 () Bool)

(assert (=> mapNonEmpty!51677 (= mapRes!51677 (and tp!98594 e!729584))))

(declare-fun mapValue!51677 () ValueCell!15816)

(declare-fun mapKey!51677 () (_ BitVec 32))

(declare-fun mapRest!51677 () (Array (_ BitVec 32) ValueCell!15816))

(assert (=> mapNonEmpty!51677 (= (arr!40454 _values!1187) (store mapRest!51677 mapKey!51677 mapValue!51677))))

(declare-fun b!1277432 () Bool)

(declare-fun res!848904 () Bool)

(assert (=> b!1277432 (=> (not res!848904) (not e!729583))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83899 (_ BitVec 32)) Bool)

(assert (=> b!1277432 (= res!848904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun res!848901 () Bool)

(assert (=> start!108220 (=> (not res!848901) (not e!729583))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108220 (= res!848901 (validMask!0 mask!1805))))

(assert (=> start!108220 e!729583))

(assert (=> start!108220 true))

(assert (=> start!108220 tp!98595))

(declare-fun tp_is_empty!33429 () Bool)

(assert (=> start!108220 tp_is_empty!33429))

(declare-fun e!729582 () Bool)

(declare-fun array_inv!30703 (array!83897) Bool)

(assert (=> start!108220 (and (array_inv!30703 _values!1187) e!729582)))

(declare-fun array_inv!30704 (array!83899) Bool)

(assert (=> start!108220 (array_inv!30704 _keys!1427)))

(declare-fun b!1277433 () Bool)

(declare-fun e!729580 () Bool)

(assert (=> b!1277433 (= e!729582 (and e!729580 mapRes!51677))))

(declare-fun condMapEmpty!51677 () Bool)

(declare-fun mapDefault!51677 () ValueCell!15816)

(assert (=> b!1277433 (= condMapEmpty!51677 (= (arr!40454 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15816)) mapDefault!51677)))))

(declare-fun b!1277434 () Bool)

(declare-fun res!848902 () Bool)

(assert (=> b!1277434 (=> (not res!848902) (not e!729583))))

(assert (=> b!1277434 (= res!848902 (and (= (size!41005 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!41006 _keys!1427) (size!41005 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!51677 () Bool)

(assert (=> mapIsEmpty!51677 mapRes!51677))

(declare-fun b!1277435 () Bool)

(assert (=> b!1277435 (= e!729580 tp_is_empty!33429)))

(declare-fun b!1277436 () Bool)

(assert (=> b!1277436 (= e!729584 tp_is_empty!33429)))

(declare-fun b!1277437 () Bool)

(declare-fun res!848903 () Bool)

(assert (=> b!1277437 (=> (not res!848903) (not e!729583))))

(declare-datatypes ((List!28871 0))(
  ( (Nil!28868) (Cons!28867 (h!30076 (_ BitVec 64)) (t!42416 List!28871)) )
))
(declare-fun arrayNoDuplicates!0 (array!83899 (_ BitVec 32) List!28871) Bool)

(assert (=> b!1277437 (= res!848903 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28868))))

(assert (= (and start!108220 res!848901) b!1277434))

(assert (= (and b!1277434 res!848902) b!1277432))

(assert (= (and b!1277432 res!848904) b!1277437))

(assert (= (and b!1277437 res!848903) b!1277431))

(assert (= (and b!1277433 condMapEmpty!51677) mapIsEmpty!51677))

(assert (= (and b!1277433 (not condMapEmpty!51677)) mapNonEmpty!51677))

(get-info :version)

(assert (= (and mapNonEmpty!51677 ((_ is ValueCellFull!15816) mapValue!51677)) b!1277436))

(assert (= (and b!1277433 ((_ is ValueCellFull!15816) mapDefault!51677)) b!1277435))

(assert (= start!108220 b!1277433))

(declare-fun m!1173075 () Bool)

(assert (=> mapNonEmpty!51677 m!1173075))

(declare-fun m!1173077 () Bool)

(assert (=> b!1277437 m!1173077))

(declare-fun m!1173079 () Bool)

(assert (=> b!1277431 m!1173079))

(assert (=> b!1277431 m!1173079))

(declare-fun m!1173081 () Bool)

(assert (=> b!1277431 m!1173081))

(declare-fun m!1173083 () Bool)

(assert (=> start!108220 m!1173083))

(declare-fun m!1173085 () Bool)

(assert (=> start!108220 m!1173085))

(declare-fun m!1173087 () Bool)

(assert (=> start!108220 m!1173087))

(declare-fun m!1173089 () Bool)

(assert (=> b!1277432 m!1173089))

(check-sat b_and!45947 (not b!1277432) (not mapNonEmpty!51677) (not start!108220) (not b!1277437) (not b_next!27879) (not b!1277431) tp_is_empty!33429)
(check-sat b_and!45947 (not b_next!27879))
