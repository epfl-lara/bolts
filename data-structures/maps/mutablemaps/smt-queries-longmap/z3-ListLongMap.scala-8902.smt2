; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108100 () Bool)

(assert start!108100)

(declare-fun b_free!27777 () Bool)

(declare-fun b_next!27777 () Bool)

(assert (=> start!108100 (= b_free!27777 (not b_next!27777))))

(declare-fun tp!98285 () Bool)

(declare-fun b_and!45843 () Bool)

(assert (=> start!108100 (= tp!98285 b_and!45843)))

(declare-fun b!1276131 () Bool)

(declare-fun e!728707 () Bool)

(declare-fun tp_is_empty!33327 () Bool)

(assert (=> b!1276131 (= e!728707 tp_is_empty!33327)))

(declare-fun res!848186 () Bool)

(declare-fun e!728709 () Bool)

(assert (=> start!108100 (=> (not res!848186) (not e!728709))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108100 (= res!848186 (validMask!0 mask!1805))))

(assert (=> start!108100 e!728709))

(assert (=> start!108100 true))

(assert (=> start!108100 tp!98285))

(assert (=> start!108100 tp_is_empty!33327))

(declare-datatypes ((V!49539 0))(
  ( (V!49540 (val!16738 Int)) )
))
(declare-datatypes ((ValueCell!15765 0))(
  ( (ValueCellFull!15765 (v!19333 V!49539)) (EmptyCell!15765) )
))
(declare-datatypes ((array!83705 0))(
  ( (array!83706 (arr!40359 (Array (_ BitVec 32) ValueCell!15765)) (size!40910 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83705)

(declare-fun e!728710 () Bool)

(declare-fun array_inv!30633 (array!83705) Bool)

(assert (=> start!108100 (and (array_inv!30633 _values!1187) e!728710)))

(declare-datatypes ((array!83707 0))(
  ( (array!83708 (arr!40360 (Array (_ BitVec 32) (_ BitVec 64))) (size!40911 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83707)

(declare-fun array_inv!30634 (array!83707) Bool)

(assert (=> start!108100 (array_inv!30634 _keys!1427)))

(declare-fun b!1276132 () Bool)

(declare-fun e!728711 () Bool)

(assert (=> b!1276132 (= e!728711 tp_is_empty!33327)))

(declare-fun b!1276133 () Bool)

(declare-fun res!848187 () Bool)

(assert (=> b!1276133 (=> (not res!848187) (not e!728709))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1276133 (= res!848187 (and (= (size!40910 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40911 _keys!1427) (size!40910 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276134 () Bool)

(assert (=> b!1276134 (= e!728709 false)))

(declare-fun defaultEntry!1195 () Int)

(declare-fun lt!575394 () Bool)

(declare-fun minValue!1129 () V!49539)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49539)

(declare-datatypes ((tuple2!21614 0))(
  ( (tuple2!21615 (_1!10817 (_ BitVec 64)) (_2!10817 V!49539)) )
))
(declare-datatypes ((List!28799 0))(
  ( (Nil!28796) (Cons!28795 (h!30004 tuple2!21614) (t!42342 List!28799)) )
))
(declare-datatypes ((ListLongMap!19283 0))(
  ( (ListLongMap!19284 (toList!9657 List!28799)) )
))
(declare-fun contains!7704 (ListLongMap!19283 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4677 (array!83707 array!83705 (_ BitVec 32) (_ BitVec 32) V!49539 V!49539 (_ BitVec 32) Int) ListLongMap!19283)

(assert (=> b!1276134 (= lt!575394 (contains!7704 (getCurrentListMap!4677 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun mapIsEmpty!51521 () Bool)

(declare-fun mapRes!51521 () Bool)

(assert (=> mapIsEmpty!51521 mapRes!51521))

(declare-fun b!1276135 () Bool)

(declare-fun res!848185 () Bool)

(assert (=> b!1276135 (=> (not res!848185) (not e!728709))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83707 (_ BitVec 32)) Bool)

(assert (=> b!1276135 (= res!848185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun mapNonEmpty!51521 () Bool)

(declare-fun tp!98286 () Bool)

(assert (=> mapNonEmpty!51521 (= mapRes!51521 (and tp!98286 e!728707))))

(declare-fun mapValue!51521 () ValueCell!15765)

(declare-fun mapRest!51521 () (Array (_ BitVec 32) ValueCell!15765))

(declare-fun mapKey!51521 () (_ BitVec 32))

(assert (=> mapNonEmpty!51521 (= (arr!40359 _values!1187) (store mapRest!51521 mapKey!51521 mapValue!51521))))

(declare-fun b!1276136 () Bool)

(declare-fun res!848184 () Bool)

(assert (=> b!1276136 (=> (not res!848184) (not e!728709))))

(declare-datatypes ((List!28800 0))(
  ( (Nil!28797) (Cons!28796 (h!30005 (_ BitVec 64)) (t!42343 List!28800)) )
))
(declare-fun arrayNoDuplicates!0 (array!83707 (_ BitVec 32) List!28800) Bool)

(assert (=> b!1276136 (= res!848184 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28797))))

(declare-fun b!1276137 () Bool)

(assert (=> b!1276137 (= e!728710 (and e!728711 mapRes!51521))))

(declare-fun condMapEmpty!51521 () Bool)

(declare-fun mapDefault!51521 () ValueCell!15765)

(assert (=> b!1276137 (= condMapEmpty!51521 (= (arr!40359 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15765)) mapDefault!51521)))))

(assert (= (and start!108100 res!848186) b!1276133))

(assert (= (and b!1276133 res!848187) b!1276135))

(assert (= (and b!1276135 res!848185) b!1276136))

(assert (= (and b!1276136 res!848184) b!1276134))

(assert (= (and b!1276137 condMapEmpty!51521) mapIsEmpty!51521))

(assert (= (and b!1276137 (not condMapEmpty!51521)) mapNonEmpty!51521))

(get-info :version)

(assert (= (and mapNonEmpty!51521 ((_ is ValueCellFull!15765) mapValue!51521)) b!1276131))

(assert (= (and b!1276137 ((_ is ValueCellFull!15765) mapDefault!51521)) b!1276132))

(assert (= start!108100 b!1276137))

(declare-fun m!1172139 () Bool)

(assert (=> b!1276136 m!1172139))

(declare-fun m!1172141 () Bool)

(assert (=> start!108100 m!1172141))

(declare-fun m!1172143 () Bool)

(assert (=> start!108100 m!1172143))

(declare-fun m!1172145 () Bool)

(assert (=> start!108100 m!1172145))

(declare-fun m!1172147 () Bool)

(assert (=> b!1276135 m!1172147))

(declare-fun m!1172149 () Bool)

(assert (=> b!1276134 m!1172149))

(assert (=> b!1276134 m!1172149))

(declare-fun m!1172151 () Bool)

(assert (=> b!1276134 m!1172151))

(declare-fun m!1172153 () Bool)

(assert (=> mapNonEmpty!51521 m!1172153))

(check-sat (not b!1276134) tp_is_empty!33327 (not start!108100) b_and!45843 (not b!1276135) (not b!1276136) (not b_next!27777) (not mapNonEmpty!51521))
(check-sat b_and!45843 (not b_next!27777))
