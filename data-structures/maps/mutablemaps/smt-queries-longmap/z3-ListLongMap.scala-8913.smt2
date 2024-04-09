; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108166 () Bool)

(assert start!108166)

(declare-fun b_free!27843 () Bool)

(declare-fun b_next!27843 () Bool)

(assert (=> start!108166 (= b_free!27843 (not b_next!27843))))

(declare-fun tp!98484 () Bool)

(declare-fun b_and!45909 () Bool)

(assert (=> start!108166 (= tp!98484 b_and!45909)))

(declare-fun b!1276880 () Bool)

(declare-fun res!848608 () Bool)

(declare-fun e!729218 () Bool)

(assert (=> b!1276880 (=> (not res!848608) (not e!729218))))

(declare-datatypes ((array!83829 0))(
  ( (array!83830 (arr!40421 (Array (_ BitVec 32) (_ BitVec 64))) (size!40972 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83829)

(assert (=> b!1276880 (= res!848608 (bvslt #b00000000000000000000000000000000 (size!40972 _keys!1427)))))

(declare-fun mapIsEmpty!51620 () Bool)

(declare-fun mapRes!51620 () Bool)

(assert (=> mapIsEmpty!51620 mapRes!51620))

(declare-fun b!1276881 () Bool)

(assert (=> b!1276881 (= e!729218 (not true))))

(declare-fun e!729219 () Bool)

(assert (=> b!1276881 e!729219))

(declare-fun c!123891 () Bool)

(declare-fun k0!1053 () (_ BitVec 64))

(assert (=> b!1276881 (= c!123891 (and (not (= k0!1053 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1053 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-datatypes ((V!49627 0))(
  ( (V!49628 (val!16771 Int)) )
))
(declare-fun minValue!1129 () V!49627)

(declare-datatypes ((ValueCell!15798 0))(
  ( (ValueCellFull!15798 (v!19366 V!49627)) (EmptyCell!15798) )
))
(declare-datatypes ((array!83831 0))(
  ( (array!83832 (arr!40422 (Array (_ BitVec 32) ValueCell!15798)) (size!40973 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83831)

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun zeroValue!1129 () V!49627)

(declare-fun defaultEntry!1195 () Int)

(declare-datatypes ((Unit!42313 0))(
  ( (Unit!42314) )
))
(declare-fun lt!575493 () Unit!42313)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!629 (array!83829 array!83831 (_ BitVec 32) (_ BitVec 32) V!49627 V!49627 (_ BitVec 64) (_ BitVec 32) Int) Unit!42313)

(assert (=> b!1276881 (= lt!575493 (lemmaListMapContainsThenArrayContainsFrom!629 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 k0!1053 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun b!1276882 () Bool)

(declare-fun e!729220 () Bool)

(declare-fun tp_is_empty!33393 () Bool)

(assert (=> b!1276882 (= e!729220 tp_is_empty!33393)))

(declare-fun mapNonEmpty!51620 () Bool)

(declare-fun tp!98483 () Bool)

(declare-fun e!729217 () Bool)

(assert (=> mapNonEmpty!51620 (= mapRes!51620 (and tp!98483 e!729217))))

(declare-fun mapRest!51620 () (Array (_ BitVec 32) ValueCell!15798))

(declare-fun mapKey!51620 () (_ BitVec 32))

(declare-fun mapValue!51620 () ValueCell!15798)

(assert (=> mapNonEmpty!51620 (= (arr!40422 _values!1187) (store mapRest!51620 mapKey!51620 mapValue!51620))))

(declare-fun b!1276884 () Bool)

(assert (=> b!1276884 (= e!729219 (ite (= k0!1053 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1276885 () Bool)

(declare-fun arrayContainsKey!0 (array!83829 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1276885 (= e!729219 (arrayContainsKey!0 _keys!1427 k0!1053 #b00000000000000000000000000000000))))

(declare-fun b!1276886 () Bool)

(declare-fun res!848613 () Bool)

(assert (=> b!1276886 (=> (not res!848613) (not e!729218))))

(declare-datatypes ((tuple2!21658 0))(
  ( (tuple2!21659 (_1!10839 (_ BitVec 64)) (_2!10839 V!49627)) )
))
(declare-datatypes ((List!28844 0))(
  ( (Nil!28841) (Cons!28840 (h!30049 tuple2!21658) (t!42387 List!28844)) )
))
(declare-datatypes ((ListLongMap!19327 0))(
  ( (ListLongMap!19328 (toList!9679 List!28844)) )
))
(declare-fun contains!7726 (ListLongMap!19327 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4699 (array!83829 array!83831 (_ BitVec 32) (_ BitVec 32) V!49627 V!49627 (_ BitVec 32) Int) ListLongMap!19327)

(assert (=> b!1276886 (= res!848613 (contains!7726 (getCurrentListMap!4699 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun res!848611 () Bool)

(assert (=> start!108166 (=> (not res!848611) (not e!729218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108166 (= res!848611 (validMask!0 mask!1805))))

(assert (=> start!108166 e!729218))

(assert (=> start!108166 true))

(assert (=> start!108166 tp!98484))

(assert (=> start!108166 tp_is_empty!33393))

(declare-fun e!729221 () Bool)

(declare-fun array_inv!30677 (array!83831) Bool)

(assert (=> start!108166 (and (array_inv!30677 _values!1187) e!729221)))

(declare-fun array_inv!30678 (array!83829) Bool)

(assert (=> start!108166 (array_inv!30678 _keys!1427)))

(declare-fun b!1276883 () Bool)

(declare-fun res!848612 () Bool)

(assert (=> b!1276883 (=> (not res!848612) (not e!729218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83829 (_ BitVec 32)) Bool)

(assert (=> b!1276883 (= res!848612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1276887 () Bool)

(assert (=> b!1276887 (= e!729221 (and e!729220 mapRes!51620))))

(declare-fun condMapEmpty!51620 () Bool)

(declare-fun mapDefault!51620 () ValueCell!15798)

(assert (=> b!1276887 (= condMapEmpty!51620 (= (arr!40422 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15798)) mapDefault!51620)))))

(declare-fun b!1276888 () Bool)

(declare-fun res!848610 () Bool)

(assert (=> b!1276888 (=> (not res!848610) (not e!729218))))

(assert (=> b!1276888 (= res!848610 (and (= (size!40973 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40972 _keys!1427) (size!40973 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276889 () Bool)

(assert (=> b!1276889 (= e!729217 tp_is_empty!33393)))

(declare-fun b!1276890 () Bool)

(declare-fun res!848609 () Bool)

(assert (=> b!1276890 (=> (not res!848609) (not e!729218))))

(declare-datatypes ((List!28845 0))(
  ( (Nil!28842) (Cons!28841 (h!30050 (_ BitVec 64)) (t!42388 List!28845)) )
))
(declare-fun arrayNoDuplicates!0 (array!83829 (_ BitVec 32) List!28845) Bool)

(assert (=> b!1276890 (= res!848609 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28842))))

(assert (= (and start!108166 res!848611) b!1276888))

(assert (= (and b!1276888 res!848610) b!1276883))

(assert (= (and b!1276883 res!848612) b!1276890))

(assert (= (and b!1276890 res!848609) b!1276886))

(assert (= (and b!1276886 res!848613) b!1276880))

(assert (= (and b!1276880 res!848608) b!1276881))

(assert (= (and b!1276881 c!123891) b!1276885))

(assert (= (and b!1276881 (not c!123891)) b!1276884))

(assert (= (and b!1276887 condMapEmpty!51620) mapIsEmpty!51620))

(assert (= (and b!1276887 (not condMapEmpty!51620)) mapNonEmpty!51620))

(get-info :version)

(assert (= (and mapNonEmpty!51620 ((_ is ValueCellFull!15798) mapValue!51620)) b!1276889))

(assert (= (and b!1276887 ((_ is ValueCellFull!15798) mapDefault!51620)) b!1276882))

(assert (= start!108166 b!1276887))

(declare-fun m!1172683 () Bool)

(assert (=> mapNonEmpty!51620 m!1172683))

(declare-fun m!1172685 () Bool)

(assert (=> b!1276885 m!1172685))

(declare-fun m!1172687 () Bool)

(assert (=> b!1276883 m!1172687))

(declare-fun m!1172689 () Bool)

(assert (=> b!1276881 m!1172689))

(declare-fun m!1172691 () Bool)

(assert (=> b!1276886 m!1172691))

(assert (=> b!1276886 m!1172691))

(declare-fun m!1172693 () Bool)

(assert (=> b!1276886 m!1172693))

(declare-fun m!1172695 () Bool)

(assert (=> b!1276890 m!1172695))

(declare-fun m!1172697 () Bool)

(assert (=> start!108166 m!1172697))

(declare-fun m!1172699 () Bool)

(assert (=> start!108166 m!1172699))

(declare-fun m!1172701 () Bool)

(assert (=> start!108166 m!1172701))

(check-sat (not b_next!27843) (not b!1276881) (not mapNonEmpty!51620) b_and!45909 tp_is_empty!33393 (not b!1276885) (not start!108166) (not b!1276883) (not b!1276890) (not b!1276886))
(check-sat b_and!45909 (not b_next!27843))
