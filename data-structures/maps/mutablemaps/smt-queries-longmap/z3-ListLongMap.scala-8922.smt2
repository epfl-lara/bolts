; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108238 () Bool)

(assert start!108238)

(declare-fun b_free!27897 () Bool)

(declare-fun b_next!27897 () Bool)

(assert (=> start!108238 (= b_free!27897 (not b_next!27897))))

(declare-fun tp!98649 () Bool)

(declare-fun b_and!45965 () Bool)

(assert (=> start!108238 (= tp!98649 b_and!45965)))

(declare-fun b!1277620 () Bool)

(declare-fun res!849012 () Bool)

(declare-fun e!729719 () Bool)

(assert (=> b!1277620 (=> (not res!849012) (not e!729719))))

(declare-datatypes ((array!83931 0))(
  ( (array!83932 (arr!40471 (Array (_ BitVec 32) (_ BitVec 64))) (size!41022 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83931)

(declare-datatypes ((List!28883 0))(
  ( (Nil!28880) (Cons!28879 (h!30088 (_ BitVec 64)) (t!42428 List!28883)) )
))
(declare-fun arrayNoDuplicates!0 (array!83931 (_ BitVec 32) List!28883) Bool)

(assert (=> b!1277620 (= res!849012 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28880))))

(declare-fun b!1277621 () Bool)

(declare-fun e!729718 () Bool)

(declare-fun tp_is_empty!33447 () Bool)

(assert (=> b!1277621 (= e!729718 tp_is_empty!33447)))

(declare-fun res!849011 () Bool)

(assert (=> start!108238 (=> (not res!849011) (not e!729719))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108238 (= res!849011 (validMask!0 mask!1805))))

(assert (=> start!108238 e!729719))

(assert (=> start!108238 true))

(assert (=> start!108238 tp!98649))

(assert (=> start!108238 tp_is_empty!33447))

(declare-datatypes ((V!49699 0))(
  ( (V!49700 (val!16798 Int)) )
))
(declare-datatypes ((ValueCell!15825 0))(
  ( (ValueCellFull!15825 (v!19394 V!49699)) (EmptyCell!15825) )
))
(declare-datatypes ((array!83933 0))(
  ( (array!83934 (arr!40472 (Array (_ BitVec 32) ValueCell!15825)) (size!41023 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83933)

(declare-fun e!729715 () Bool)

(declare-fun array_inv!30717 (array!83933) Bool)

(assert (=> start!108238 (and (array_inv!30717 _values!1187) e!729715)))

(declare-fun array_inv!30718 (array!83931) Bool)

(assert (=> start!108238 (array_inv!30718 _keys!1427)))

(declare-fun mapNonEmpty!51704 () Bool)

(declare-fun mapRes!51704 () Bool)

(declare-fun tp!98648 () Bool)

(declare-fun e!729717 () Bool)

(assert (=> mapNonEmpty!51704 (= mapRes!51704 (and tp!98648 e!729717))))

(declare-fun mapRest!51704 () (Array (_ BitVec 32) ValueCell!15825))

(declare-fun mapValue!51704 () ValueCell!15825)

(declare-fun mapKey!51704 () (_ BitVec 32))

(assert (=> mapNonEmpty!51704 (= (arr!40472 _values!1187) (store mapRest!51704 mapKey!51704 mapValue!51704))))

(declare-fun b!1277622 () Bool)

(assert (=> b!1277622 (= e!729719 false)))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun lt!575673 () Bool)

(declare-fun minValue!1129 () V!49699)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49699)

(declare-fun defaultEntry!1195 () Int)

(declare-datatypes ((tuple2!21696 0))(
  ( (tuple2!21697 (_1!10858 (_ BitVec 64)) (_2!10858 V!49699)) )
))
(declare-datatypes ((List!28884 0))(
  ( (Nil!28881) (Cons!28880 (h!30089 tuple2!21696) (t!42429 List!28884)) )
))
(declare-datatypes ((ListLongMap!19365 0))(
  ( (ListLongMap!19366 (toList!9698 List!28884)) )
))
(declare-fun contains!7746 (ListLongMap!19365 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4718 (array!83931 array!83933 (_ BitVec 32) (_ BitVec 32) V!49699 V!49699 (_ BitVec 32) Int) ListLongMap!19365)

(assert (=> b!1277622 (= lt!575673 (contains!7746 (getCurrentListMap!4718 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun mapIsEmpty!51704 () Bool)

(assert (=> mapIsEmpty!51704 mapRes!51704))

(declare-fun b!1277623 () Bool)

(declare-fun res!849009 () Bool)

(assert (=> b!1277623 (=> (not res!849009) (not e!729719))))

(assert (=> b!1277623 (= res!849009 (and (= (size!41023 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!41022 _keys!1427) (size!41023 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1277624 () Bool)

(assert (=> b!1277624 (= e!729715 (and e!729718 mapRes!51704))))

(declare-fun condMapEmpty!51704 () Bool)

(declare-fun mapDefault!51704 () ValueCell!15825)

(assert (=> b!1277624 (= condMapEmpty!51704 (= (arr!40472 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15825)) mapDefault!51704)))))

(declare-fun b!1277625 () Bool)

(declare-fun res!849010 () Bool)

(assert (=> b!1277625 (=> (not res!849010) (not e!729719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83931 (_ BitVec 32)) Bool)

(assert (=> b!1277625 (= res!849010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1277626 () Bool)

(assert (=> b!1277626 (= e!729717 tp_is_empty!33447)))

(assert (= (and start!108238 res!849011) b!1277623))

(assert (= (and b!1277623 res!849009) b!1277625))

(assert (= (and b!1277625 res!849010) b!1277620))

(assert (= (and b!1277620 res!849012) b!1277622))

(assert (= (and b!1277624 condMapEmpty!51704) mapIsEmpty!51704))

(assert (= (and b!1277624 (not condMapEmpty!51704)) mapNonEmpty!51704))

(get-info :version)

(assert (= (and mapNonEmpty!51704 ((_ is ValueCellFull!15825) mapValue!51704)) b!1277626))

(assert (= (and b!1277624 ((_ is ValueCellFull!15825) mapDefault!51704)) b!1277621))

(assert (= start!108238 b!1277624))

(declare-fun m!1173219 () Bool)

(assert (=> b!1277625 m!1173219))

(declare-fun m!1173221 () Bool)

(assert (=> mapNonEmpty!51704 m!1173221))

(declare-fun m!1173223 () Bool)

(assert (=> b!1277620 m!1173223))

(declare-fun m!1173225 () Bool)

(assert (=> b!1277622 m!1173225))

(assert (=> b!1277622 m!1173225))

(declare-fun m!1173227 () Bool)

(assert (=> b!1277622 m!1173227))

(declare-fun m!1173229 () Bool)

(assert (=> start!108238 m!1173229))

(declare-fun m!1173231 () Bool)

(assert (=> start!108238 m!1173231))

(declare-fun m!1173233 () Bool)

(assert (=> start!108238 m!1173233))

(check-sat (not b!1277625) (not b!1277622) (not b!1277620) tp_is_empty!33447 (not mapNonEmpty!51704) b_and!45965 (not start!108238) (not b_next!27897))
(check-sat b_and!45965 (not b_next!27897))
