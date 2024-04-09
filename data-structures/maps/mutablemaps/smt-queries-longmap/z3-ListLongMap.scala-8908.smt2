; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108136 () Bool)

(assert start!108136)

(declare-fun b_free!27813 () Bool)

(declare-fun b_next!27813 () Bool)

(assert (=> start!108136 (= b_free!27813 (not b_next!27813))))

(declare-fun tp!98393 () Bool)

(declare-fun b_and!45879 () Bool)

(assert (=> start!108136 (= tp!98393 b_and!45879)))

(declare-fun b!1276509 () Bool)

(declare-fun e!728979 () Bool)

(declare-fun tp_is_empty!33363 () Bool)

(assert (=> b!1276509 (= e!728979 tp_is_empty!33363)))

(declare-fun mapNonEmpty!51575 () Bool)

(declare-fun mapRes!51575 () Bool)

(declare-fun tp!98394 () Bool)

(declare-fun e!728978 () Bool)

(assert (=> mapNonEmpty!51575 (= mapRes!51575 (and tp!98394 e!728978))))

(declare-datatypes ((V!49587 0))(
  ( (V!49588 (val!16756 Int)) )
))
(declare-datatypes ((ValueCell!15783 0))(
  ( (ValueCellFull!15783 (v!19351 V!49587)) (EmptyCell!15783) )
))
(declare-fun mapValue!51575 () ValueCell!15783)

(declare-fun mapKey!51575 () (_ BitVec 32))

(declare-datatypes ((array!83771 0))(
  ( (array!83772 (arr!40392 (Array (_ BitVec 32) ValueCell!15783)) (size!40943 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83771)

(declare-fun mapRest!51575 () (Array (_ BitVec 32) ValueCell!15783))

(assert (=> mapNonEmpty!51575 (= (arr!40392 _values!1187) (store mapRest!51575 mapKey!51575 mapValue!51575))))

(declare-fun b!1276510 () Bool)

(declare-fun res!848400 () Bool)

(declare-fun e!728980 () Bool)

(assert (=> b!1276510 (=> (not res!848400) (not e!728980))))

(declare-datatypes ((array!83773 0))(
  ( (array!83774 (arr!40393 (Array (_ BitVec 32) (_ BitVec 64))) (size!40944 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83773)

(declare-datatypes ((List!28822 0))(
  ( (Nil!28819) (Cons!28818 (h!30027 (_ BitVec 64)) (t!42365 List!28822)) )
))
(declare-fun arrayNoDuplicates!0 (array!83773 (_ BitVec 32) List!28822) Bool)

(assert (=> b!1276510 (= res!848400 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28819))))

(declare-fun b!1276511 () Bool)

(declare-fun res!848401 () Bool)

(assert (=> b!1276511 (=> (not res!848401) (not e!728980))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1276511 (= res!848401 (and (= (size!40943 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40944 _keys!1427) (size!40943 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276512 () Bool)

(declare-fun res!848403 () Bool)

(assert (=> b!1276512 (=> (not res!848403) (not e!728980))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83773 (_ BitVec 32)) Bool)

(assert (=> b!1276512 (= res!848403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1276513 () Bool)

(declare-fun e!728981 () Bool)

(assert (=> b!1276513 (= e!728981 (and e!728979 mapRes!51575))))

(declare-fun condMapEmpty!51575 () Bool)

(declare-fun mapDefault!51575 () ValueCell!15783)

(assert (=> b!1276513 (= condMapEmpty!51575 (= (arr!40392 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15783)) mapDefault!51575)))))

(declare-fun mapIsEmpty!51575 () Bool)

(assert (=> mapIsEmpty!51575 mapRes!51575))

(declare-fun res!848402 () Bool)

(assert (=> start!108136 (=> (not res!848402) (not e!728980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108136 (= res!848402 (validMask!0 mask!1805))))

(assert (=> start!108136 e!728980))

(assert (=> start!108136 true))

(assert (=> start!108136 tp!98393))

(assert (=> start!108136 tp_is_empty!33363))

(declare-fun array_inv!30657 (array!83771) Bool)

(assert (=> start!108136 (and (array_inv!30657 _values!1187) e!728981)))

(declare-fun array_inv!30658 (array!83773) Bool)

(assert (=> start!108136 (array_inv!30658 _keys!1427)))

(declare-fun b!1276514 () Bool)

(assert (=> b!1276514 (= e!728980 false)))

(declare-fun defaultEntry!1195 () Int)

(declare-fun lt!575448 () Bool)

(declare-fun minValue!1129 () V!49587)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49587)

(declare-datatypes ((tuple2!21636 0))(
  ( (tuple2!21637 (_1!10828 (_ BitVec 64)) (_2!10828 V!49587)) )
))
(declare-datatypes ((List!28823 0))(
  ( (Nil!28820) (Cons!28819 (h!30028 tuple2!21636) (t!42366 List!28823)) )
))
(declare-datatypes ((ListLongMap!19305 0))(
  ( (ListLongMap!19306 (toList!9668 List!28823)) )
))
(declare-fun contains!7715 (ListLongMap!19305 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4688 (array!83773 array!83771 (_ BitVec 32) (_ BitVec 32) V!49587 V!49587 (_ BitVec 32) Int) ListLongMap!19305)

(assert (=> b!1276514 (= lt!575448 (contains!7715 (getCurrentListMap!4688 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun b!1276515 () Bool)

(assert (=> b!1276515 (= e!728978 tp_is_empty!33363)))

(assert (= (and start!108136 res!848402) b!1276511))

(assert (= (and b!1276511 res!848401) b!1276512))

(assert (= (and b!1276512 res!848403) b!1276510))

(assert (= (and b!1276510 res!848400) b!1276514))

(assert (= (and b!1276513 condMapEmpty!51575) mapIsEmpty!51575))

(assert (= (and b!1276513 (not condMapEmpty!51575)) mapNonEmpty!51575))

(get-info :version)

(assert (= (and mapNonEmpty!51575 ((_ is ValueCellFull!15783) mapValue!51575)) b!1276515))

(assert (= (and b!1276513 ((_ is ValueCellFull!15783) mapDefault!51575)) b!1276509))

(assert (= start!108136 b!1276513))

(declare-fun m!1172427 () Bool)

(assert (=> b!1276514 m!1172427))

(assert (=> b!1276514 m!1172427))

(declare-fun m!1172429 () Bool)

(assert (=> b!1276514 m!1172429))

(declare-fun m!1172431 () Bool)

(assert (=> start!108136 m!1172431))

(declare-fun m!1172433 () Bool)

(assert (=> start!108136 m!1172433))

(declare-fun m!1172435 () Bool)

(assert (=> start!108136 m!1172435))

(declare-fun m!1172437 () Bool)

(assert (=> mapNonEmpty!51575 m!1172437))

(declare-fun m!1172439 () Bool)

(assert (=> b!1276512 m!1172439))

(declare-fun m!1172441 () Bool)

(assert (=> b!1276510 m!1172441))

(check-sat (not b!1276510) (not b_next!27813) b_and!45879 (not b!1276514) (not mapNonEmpty!51575) tp_is_empty!33363 (not start!108136) (not b!1276512))
(check-sat b_and!45879 (not b_next!27813))
