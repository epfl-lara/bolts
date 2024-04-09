; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108214 () Bool)

(assert start!108214)

(declare-fun b_free!27873 () Bool)

(declare-fun b_next!27873 () Bool)

(assert (=> start!108214 (= b_free!27873 (not b_next!27873))))

(declare-fun tp!98576 () Bool)

(declare-fun b_and!45941 () Bool)

(assert (=> start!108214 (= tp!98576 b_and!45941)))

(declare-fun mapIsEmpty!51668 () Bool)

(declare-fun mapRes!51668 () Bool)

(assert (=> mapIsEmpty!51668 mapRes!51668))

(declare-fun b!1277369 () Bool)

(declare-fun res!848866 () Bool)

(declare-fun e!729539 () Bool)

(assert (=> b!1277369 (=> (not res!848866) (not e!729539))))

(declare-datatypes ((array!83885 0))(
  ( (array!83886 (arr!40448 (Array (_ BitVec 32) (_ BitVec 64))) (size!40999 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83885)

(declare-datatypes ((List!28865 0))(
  ( (Nil!28862) (Cons!28861 (h!30070 (_ BitVec 64)) (t!42410 List!28865)) )
))
(declare-fun arrayNoDuplicates!0 (array!83885 (_ BitVec 32) List!28865) Bool)

(assert (=> b!1277369 (= res!848866 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28862))))

(declare-fun b!1277370 () Bool)

(declare-fun res!848867 () Bool)

(assert (=> b!1277370 (=> (not res!848867) (not e!729539))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((V!49667 0))(
  ( (V!49668 (val!16786 Int)) )
))
(declare-datatypes ((ValueCell!15813 0))(
  ( (ValueCellFull!15813 (v!19382 V!49667)) (EmptyCell!15813) )
))
(declare-datatypes ((array!83887 0))(
  ( (array!83888 (arr!40449 (Array (_ BitVec 32) ValueCell!15813)) (size!41000 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83887)

(declare-fun mask!1805 () (_ BitVec 32))

(assert (=> b!1277370 (= res!848867 (and (= (size!41000 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40999 _keys!1427) (size!41000 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1277371 () Bool)

(declare-fun e!729536 () Bool)

(declare-fun tp_is_empty!33423 () Bool)

(assert (=> b!1277371 (= e!729536 tp_is_empty!33423)))

(declare-fun b!1277372 () Bool)

(assert (=> b!1277372 (= e!729539 false)))

(declare-fun lt!575637 () Bool)

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49667)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49667)

(declare-datatypes ((tuple2!21680 0))(
  ( (tuple2!21681 (_1!10850 (_ BitVec 64)) (_2!10850 V!49667)) )
))
(declare-datatypes ((List!28866 0))(
  ( (Nil!28863) (Cons!28862 (h!30071 tuple2!21680) (t!42411 List!28866)) )
))
(declare-datatypes ((ListLongMap!19349 0))(
  ( (ListLongMap!19350 (toList!9690 List!28866)) )
))
(declare-fun contains!7738 (ListLongMap!19349 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4710 (array!83885 array!83887 (_ BitVec 32) (_ BitVec 32) V!49667 V!49667 (_ BitVec 32) Int) ListLongMap!19349)

(assert (=> b!1277372 (= lt!575637 (contains!7738 (getCurrentListMap!4710 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun mapNonEmpty!51668 () Bool)

(declare-fun tp!98577 () Bool)

(assert (=> mapNonEmpty!51668 (= mapRes!51668 (and tp!98577 e!729536))))

(declare-fun mapKey!51668 () (_ BitVec 32))

(declare-fun mapRest!51668 () (Array (_ BitVec 32) ValueCell!15813))

(declare-fun mapValue!51668 () ValueCell!15813)

(assert (=> mapNonEmpty!51668 (= (arr!40449 _values!1187) (store mapRest!51668 mapKey!51668 mapValue!51668))))

(declare-fun b!1277373 () Bool)

(declare-fun e!729537 () Bool)

(declare-fun e!729538 () Bool)

(assert (=> b!1277373 (= e!729537 (and e!729538 mapRes!51668))))

(declare-fun condMapEmpty!51668 () Bool)

(declare-fun mapDefault!51668 () ValueCell!15813)

(assert (=> b!1277373 (= condMapEmpty!51668 (= (arr!40449 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15813)) mapDefault!51668)))))

(declare-fun b!1277374 () Bool)

(declare-fun res!848865 () Bool)

(assert (=> b!1277374 (=> (not res!848865) (not e!729539))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83885 (_ BitVec 32)) Bool)

(assert (=> b!1277374 (= res!848865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1277368 () Bool)

(assert (=> b!1277368 (= e!729538 tp_is_empty!33423)))

(declare-fun res!848868 () Bool)

(assert (=> start!108214 (=> (not res!848868) (not e!729539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108214 (= res!848868 (validMask!0 mask!1805))))

(assert (=> start!108214 e!729539))

(assert (=> start!108214 true))

(assert (=> start!108214 tp!98576))

(assert (=> start!108214 tp_is_empty!33423))

(declare-fun array_inv!30699 (array!83887) Bool)

(assert (=> start!108214 (and (array_inv!30699 _values!1187) e!729537)))

(declare-fun array_inv!30700 (array!83885) Bool)

(assert (=> start!108214 (array_inv!30700 _keys!1427)))

(assert (= (and start!108214 res!848868) b!1277370))

(assert (= (and b!1277370 res!848867) b!1277374))

(assert (= (and b!1277374 res!848865) b!1277369))

(assert (= (and b!1277369 res!848866) b!1277372))

(assert (= (and b!1277373 condMapEmpty!51668) mapIsEmpty!51668))

(assert (= (and b!1277373 (not condMapEmpty!51668)) mapNonEmpty!51668))

(get-info :version)

(assert (= (and mapNonEmpty!51668 ((_ is ValueCellFull!15813) mapValue!51668)) b!1277371))

(assert (= (and b!1277373 ((_ is ValueCellFull!15813) mapDefault!51668)) b!1277368))

(assert (= start!108214 b!1277373))

(declare-fun m!1173027 () Bool)

(assert (=> b!1277369 m!1173027))

(declare-fun m!1173029 () Bool)

(assert (=> start!108214 m!1173029))

(declare-fun m!1173031 () Bool)

(assert (=> start!108214 m!1173031))

(declare-fun m!1173033 () Bool)

(assert (=> start!108214 m!1173033))

(declare-fun m!1173035 () Bool)

(assert (=> b!1277372 m!1173035))

(assert (=> b!1277372 m!1173035))

(declare-fun m!1173037 () Bool)

(assert (=> b!1277372 m!1173037))

(declare-fun m!1173039 () Bool)

(assert (=> mapNonEmpty!51668 m!1173039))

(declare-fun m!1173041 () Bool)

(assert (=> b!1277374 m!1173041))

(check-sat (not start!108214) (not b!1277369) (not mapNonEmpty!51668) (not b_next!27873) (not b!1277374) (not b!1277372) tp_is_empty!33423 b_and!45941)
(check-sat b_and!45941 (not b_next!27873))
