; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108702 () Bool)

(assert start!108702)

(declare-fun b_free!28179 () Bool)

(declare-fun b_next!28179 () Bool)

(assert (=> start!108702 (= b_free!28179 (not b_next!28179))))

(declare-fun tp!99653 () Bool)

(declare-fun b_and!46255 () Bool)

(assert (=> start!108702 (= tp!99653 b_and!46255)))

(declare-fun b!1282587 () Bool)

(declare-fun res!852008 () Bool)

(declare-fun e!732880 () Bool)

(assert (=> b!1282587 (=> (not res!852008) (not e!732880))))

(declare-datatypes ((array!84659 0))(
  ( (array!84660 (arr!40827 (Array (_ BitVec 32) (_ BitVec 64))) (size!41378 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84659)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84659 (_ BitVec 32)) Bool)

(assert (=> b!1282587 (= res!852008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1282588 () Bool)

(assert (=> b!1282588 (= e!732880 false)))

(declare-datatypes ((V!50195 0))(
  ( (V!50196 (val!16984 Int)) )
))
(declare-fun minValue!1387 () V!50195)

(declare-fun zeroValue!1387 () V!50195)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576501 () Bool)

(declare-datatypes ((ValueCell!16011 0))(
  ( (ValueCellFull!16011 (v!19584 V!50195)) (EmptyCell!16011) )
))
(declare-datatypes ((array!84661 0))(
  ( (array!84662 (arr!40828 (Array (_ BitVec 32) ValueCell!16011)) (size!41379 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84661)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21892 0))(
  ( (tuple2!21893 (_1!10956 (_ BitVec 64)) (_2!10956 V!50195)) )
))
(declare-datatypes ((List!29101 0))(
  ( (Nil!29098) (Cons!29097 (h!30306 tuple2!21892) (t!42652 List!29101)) )
))
(declare-datatypes ((ListLongMap!19561 0))(
  ( (ListLongMap!19562 (toList!9796 List!29101)) )
))
(declare-fun contains!7851 (ListLongMap!19561 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4816 (array!84659 array!84661 (_ BitVec 32) (_ BitVec 32) V!50195 V!50195 (_ BitVec 32) Int) ListLongMap!19561)

(assert (=> b!1282588 (= lt!576501 (contains!7851 (getCurrentListMap!4816 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1282589 () Bool)

(declare-fun e!732876 () Bool)

(declare-fun tp_is_empty!33819 () Bool)

(assert (=> b!1282589 (= e!732876 tp_is_empty!33819)))

(declare-fun b!1282590 () Bool)

(declare-fun res!852012 () Bool)

(assert (=> b!1282590 (=> (not res!852012) (not e!732880))))

(declare-datatypes ((List!29102 0))(
  ( (Nil!29099) (Cons!29098 (h!30307 (_ BitVec 64)) (t!42653 List!29102)) )
))
(declare-fun arrayNoDuplicates!0 (array!84659 (_ BitVec 32) List!29102) Bool)

(assert (=> b!1282590 (= res!852012 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29099))))

(declare-fun b!1282591 () Bool)

(declare-fun e!732878 () Bool)

(declare-fun mapRes!52286 () Bool)

(assert (=> b!1282591 (= e!732878 (and e!732876 mapRes!52286))))

(declare-fun condMapEmpty!52286 () Bool)

(declare-fun mapDefault!52286 () ValueCell!16011)

(assert (=> b!1282591 (= condMapEmpty!52286 (= (arr!40828 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16011)) mapDefault!52286)))))

(declare-fun b!1282592 () Bool)

(declare-fun e!732877 () Bool)

(assert (=> b!1282592 (= e!732877 tp_is_empty!33819)))

(declare-fun b!1282593 () Bool)

(declare-fun res!852009 () Bool)

(assert (=> b!1282593 (=> (not res!852009) (not e!732880))))

(assert (=> b!1282593 (= res!852009 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41378 _keys!1741))))))

(declare-fun mapNonEmpty!52286 () Bool)

(declare-fun tp!99654 () Bool)

(assert (=> mapNonEmpty!52286 (= mapRes!52286 (and tp!99654 e!732877))))

(declare-fun mapValue!52286 () ValueCell!16011)

(declare-fun mapKey!52286 () (_ BitVec 32))

(declare-fun mapRest!52286 () (Array (_ BitVec 32) ValueCell!16011))

(assert (=> mapNonEmpty!52286 (= (arr!40828 _values!1445) (store mapRest!52286 mapKey!52286 mapValue!52286))))

(declare-fun res!852011 () Bool)

(assert (=> start!108702 (=> (not res!852011) (not e!732880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108702 (= res!852011 (validMask!0 mask!2175))))

(assert (=> start!108702 e!732880))

(assert (=> start!108702 tp_is_empty!33819))

(assert (=> start!108702 true))

(declare-fun array_inv!30953 (array!84661) Bool)

(assert (=> start!108702 (and (array_inv!30953 _values!1445) e!732878)))

(declare-fun array_inv!30954 (array!84659) Bool)

(assert (=> start!108702 (array_inv!30954 _keys!1741)))

(assert (=> start!108702 tp!99653))

(declare-fun b!1282594 () Bool)

(declare-fun res!852010 () Bool)

(assert (=> b!1282594 (=> (not res!852010) (not e!732880))))

(assert (=> b!1282594 (= res!852010 (and (= (size!41379 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41378 _keys!1741) (size!41379 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!52286 () Bool)

(assert (=> mapIsEmpty!52286 mapRes!52286))

(assert (= (and start!108702 res!852011) b!1282594))

(assert (= (and b!1282594 res!852010) b!1282587))

(assert (= (and b!1282587 res!852008) b!1282590))

(assert (= (and b!1282590 res!852012) b!1282593))

(assert (= (and b!1282593 res!852009) b!1282588))

(assert (= (and b!1282591 condMapEmpty!52286) mapIsEmpty!52286))

(assert (= (and b!1282591 (not condMapEmpty!52286)) mapNonEmpty!52286))

(get-info :version)

(assert (= (and mapNonEmpty!52286 ((_ is ValueCellFull!16011) mapValue!52286)) b!1282592))

(assert (= (and b!1282591 ((_ is ValueCellFull!16011) mapDefault!52286)) b!1282589))

(assert (= start!108702 b!1282591))

(declare-fun m!1176751 () Bool)

(assert (=> b!1282590 m!1176751))

(declare-fun m!1176753 () Bool)

(assert (=> b!1282588 m!1176753))

(assert (=> b!1282588 m!1176753))

(declare-fun m!1176755 () Bool)

(assert (=> b!1282588 m!1176755))

(declare-fun m!1176757 () Bool)

(assert (=> b!1282587 m!1176757))

(declare-fun m!1176759 () Bool)

(assert (=> mapNonEmpty!52286 m!1176759))

(declare-fun m!1176761 () Bool)

(assert (=> start!108702 m!1176761))

(declare-fun m!1176763 () Bool)

(assert (=> start!108702 m!1176763))

(declare-fun m!1176765 () Bool)

(assert (=> start!108702 m!1176765))

(check-sat (not b_next!28179) (not b!1282587) (not b!1282588) tp_is_empty!33819 (not mapNonEmpty!52286) (not start!108702) (not b!1282590) b_and!46255)
(check-sat b_and!46255 (not b_next!28179))
