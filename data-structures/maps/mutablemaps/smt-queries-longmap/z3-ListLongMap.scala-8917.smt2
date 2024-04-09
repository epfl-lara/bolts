; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108208 () Bool)

(assert start!108208)

(declare-fun b_free!27867 () Bool)

(declare-fun b_next!27867 () Bool)

(assert (=> start!108208 (= b_free!27867 (not b_next!27867))))

(declare-fun tp!98558 () Bool)

(declare-fun b_and!45935 () Bool)

(assert (=> start!108208 (= tp!98558 b_and!45935)))

(declare-fun mapNonEmpty!51659 () Bool)

(declare-fun mapRes!51659 () Bool)

(declare-fun tp!98559 () Bool)

(declare-fun e!729491 () Bool)

(assert (=> mapNonEmpty!51659 (= mapRes!51659 (and tp!98559 e!729491))))

(declare-fun mapKey!51659 () (_ BitVec 32))

(declare-datatypes ((V!49659 0))(
  ( (V!49660 (val!16783 Int)) )
))
(declare-datatypes ((ValueCell!15810 0))(
  ( (ValueCellFull!15810 (v!19379 V!49659)) (EmptyCell!15810) )
))
(declare-fun mapValue!51659 () ValueCell!15810)

(declare-fun mapRest!51659 () (Array (_ BitVec 32) ValueCell!15810))

(declare-datatypes ((array!83873 0))(
  ( (array!83874 (arr!40442 (Array (_ BitVec 32) ValueCell!15810)) (size!40993 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83873)

(assert (=> mapNonEmpty!51659 (= (arr!40442 _values!1187) (store mapRest!51659 mapKey!51659 mapValue!51659))))

(declare-fun mapIsEmpty!51659 () Bool)

(assert (=> mapIsEmpty!51659 mapRes!51659))

(declare-fun b!1277305 () Bool)

(declare-fun e!729490 () Bool)

(declare-fun e!729492 () Bool)

(assert (=> b!1277305 (= e!729490 (and e!729492 mapRes!51659))))

(declare-fun condMapEmpty!51659 () Bool)

(declare-fun mapDefault!51659 () ValueCell!15810)

(assert (=> b!1277305 (= condMapEmpty!51659 (= (arr!40442 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15810)) mapDefault!51659)))))

(declare-fun b!1277306 () Bool)

(declare-fun res!848829 () Bool)

(declare-fun e!729493 () Bool)

(assert (=> b!1277306 (=> (not res!848829) (not e!729493))))

(declare-datatypes ((array!83875 0))(
  ( (array!83876 (arr!40443 (Array (_ BitVec 32) (_ BitVec 64))) (size!40994 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83875)

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83875 (_ BitVec 32)) Bool)

(assert (=> b!1277306 (= res!848829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1277307 () Bool)

(declare-fun tp_is_empty!33417 () Bool)

(assert (=> b!1277307 (= e!729491 tp_is_empty!33417)))

(declare-fun b!1277309 () Bool)

(assert (=> b!1277309 (= e!729493 false)))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-fun lt!575628 () Bool)

(declare-fun minValue!1129 () V!49659)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49659)

(declare-datatypes ((tuple2!21676 0))(
  ( (tuple2!21677 (_1!10848 (_ BitVec 64)) (_2!10848 V!49659)) )
))
(declare-datatypes ((List!28860 0))(
  ( (Nil!28857) (Cons!28856 (h!30065 tuple2!21676) (t!42405 List!28860)) )
))
(declare-datatypes ((ListLongMap!19345 0))(
  ( (ListLongMap!19346 (toList!9688 List!28860)) )
))
(declare-fun contains!7736 (ListLongMap!19345 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4708 (array!83875 array!83873 (_ BitVec 32) (_ BitVec 32) V!49659 V!49659 (_ BitVec 32) Int) ListLongMap!19345)

(assert (=> b!1277309 (= lt!575628 (contains!7736 (getCurrentListMap!4708 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun b!1277310 () Bool)

(declare-fun res!848830 () Bool)

(assert (=> b!1277310 (=> (not res!848830) (not e!729493))))

(assert (=> b!1277310 (= res!848830 (and (= (size!40993 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40994 _keys!1427) (size!40993 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1277311 () Bool)

(declare-fun res!848831 () Bool)

(assert (=> b!1277311 (=> (not res!848831) (not e!729493))))

(declare-datatypes ((List!28861 0))(
  ( (Nil!28858) (Cons!28857 (h!30066 (_ BitVec 64)) (t!42406 List!28861)) )
))
(declare-fun arrayNoDuplicates!0 (array!83875 (_ BitVec 32) List!28861) Bool)

(assert (=> b!1277311 (= res!848831 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28858))))

(declare-fun res!848832 () Bool)

(assert (=> start!108208 (=> (not res!848832) (not e!729493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108208 (= res!848832 (validMask!0 mask!1805))))

(assert (=> start!108208 e!729493))

(assert (=> start!108208 true))

(assert (=> start!108208 tp!98558))

(assert (=> start!108208 tp_is_empty!33417))

(declare-fun array_inv!30693 (array!83873) Bool)

(assert (=> start!108208 (and (array_inv!30693 _values!1187) e!729490)))

(declare-fun array_inv!30694 (array!83875) Bool)

(assert (=> start!108208 (array_inv!30694 _keys!1427)))

(declare-fun b!1277308 () Bool)

(assert (=> b!1277308 (= e!729492 tp_is_empty!33417)))

(assert (= (and start!108208 res!848832) b!1277310))

(assert (= (and b!1277310 res!848830) b!1277306))

(assert (= (and b!1277306 res!848829) b!1277311))

(assert (= (and b!1277311 res!848831) b!1277309))

(assert (= (and b!1277305 condMapEmpty!51659) mapIsEmpty!51659))

(assert (= (and b!1277305 (not condMapEmpty!51659)) mapNonEmpty!51659))

(get-info :version)

(assert (= (and mapNonEmpty!51659 ((_ is ValueCellFull!15810) mapValue!51659)) b!1277307))

(assert (= (and b!1277305 ((_ is ValueCellFull!15810) mapDefault!51659)) b!1277308))

(assert (= start!108208 b!1277305))

(declare-fun m!1172979 () Bool)

(assert (=> b!1277306 m!1172979))

(declare-fun m!1172981 () Bool)

(assert (=> b!1277311 m!1172981))

(declare-fun m!1172983 () Bool)

(assert (=> b!1277309 m!1172983))

(assert (=> b!1277309 m!1172983))

(declare-fun m!1172985 () Bool)

(assert (=> b!1277309 m!1172985))

(declare-fun m!1172987 () Bool)

(assert (=> start!108208 m!1172987))

(declare-fun m!1172989 () Bool)

(assert (=> start!108208 m!1172989))

(declare-fun m!1172991 () Bool)

(assert (=> start!108208 m!1172991))

(declare-fun m!1172993 () Bool)

(assert (=> mapNonEmpty!51659 m!1172993))

(check-sat b_and!45935 (not b_next!27867) (not b!1277311) tp_is_empty!33417 (not mapNonEmpty!51659) (not b!1277306) (not start!108208) (not b!1277309))
(check-sat b_and!45935 (not b_next!27867))
