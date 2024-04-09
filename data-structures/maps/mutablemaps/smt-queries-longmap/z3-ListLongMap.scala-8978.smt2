; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108666 () Bool)

(assert start!108666)

(declare-fun b_free!28143 () Bool)

(declare-fun b_next!28143 () Bool)

(assert (=> start!108666 (= b_free!28143 (not b_next!28143))))

(declare-fun tp!99546 () Bool)

(declare-fun b_and!46219 () Bool)

(assert (=> start!108666 (= tp!99546 b_and!46219)))

(declare-fun res!851742 () Bool)

(declare-fun e!732609 () Bool)

(assert (=> start!108666 (=> (not res!851742) (not e!732609))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108666 (= res!851742 (validMask!0 mask!2175))))

(assert (=> start!108666 e!732609))

(declare-fun tp_is_empty!33783 () Bool)

(assert (=> start!108666 tp_is_empty!33783))

(assert (=> start!108666 true))

(declare-datatypes ((V!50147 0))(
  ( (V!50148 (val!16966 Int)) )
))
(declare-datatypes ((ValueCell!15993 0))(
  ( (ValueCellFull!15993 (v!19566 V!50147)) (EmptyCell!15993) )
))
(declare-datatypes ((array!84591 0))(
  ( (array!84592 (arr!40793 (Array (_ BitVec 32) ValueCell!15993)) (size!41344 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84591)

(declare-fun e!732606 () Bool)

(declare-fun array_inv!30929 (array!84591) Bool)

(assert (=> start!108666 (and (array_inv!30929 _values!1445) e!732606)))

(declare-datatypes ((array!84593 0))(
  ( (array!84594 (arr!40794 (Array (_ BitVec 32) (_ BitVec 64))) (size!41345 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84593)

(declare-fun array_inv!30930 (array!84593) Bool)

(assert (=> start!108666 (array_inv!30930 _keys!1741)))

(assert (=> start!108666 tp!99546))

(declare-fun mapNonEmpty!52232 () Bool)

(declare-fun mapRes!52232 () Bool)

(declare-fun tp!99545 () Bool)

(declare-fun e!732610 () Bool)

(assert (=> mapNonEmpty!52232 (= mapRes!52232 (and tp!99545 e!732610))))

(declare-fun mapValue!52232 () ValueCell!15993)

(declare-fun mapKey!52232 () (_ BitVec 32))

(declare-fun mapRest!52232 () (Array (_ BitVec 32) ValueCell!15993))

(assert (=> mapNonEmpty!52232 (= (arr!40793 _values!1445) (store mapRest!52232 mapKey!52232 mapValue!52232))))

(declare-fun b!1282155 () Bool)

(declare-fun res!851741 () Bool)

(assert (=> b!1282155 (=> (not res!851741) (not e!732609))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1282155 (= res!851741 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41345 _keys!1741))))))

(declare-fun b!1282156 () Bool)

(declare-fun e!732607 () Bool)

(assert (=> b!1282156 (= e!732606 (and e!732607 mapRes!52232))))

(declare-fun condMapEmpty!52232 () Bool)

(declare-fun mapDefault!52232 () ValueCell!15993)

(assert (=> b!1282156 (= condMapEmpty!52232 (= (arr!40793 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15993)) mapDefault!52232)))))

(declare-fun b!1282157 () Bool)

(declare-fun res!851740 () Bool)

(assert (=> b!1282157 (=> (not res!851740) (not e!732609))))

(declare-datatypes ((List!29078 0))(
  ( (Nil!29075) (Cons!29074 (h!30283 (_ BitVec 64)) (t!42629 List!29078)) )
))
(declare-fun arrayNoDuplicates!0 (array!84593 (_ BitVec 32) List!29078) Bool)

(assert (=> b!1282157 (= res!851740 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29075))))

(declare-fun mapIsEmpty!52232 () Bool)

(assert (=> mapIsEmpty!52232 mapRes!52232))

(declare-fun b!1282158 () Bool)

(assert (=> b!1282158 (= e!732610 tp_is_empty!33783)))

(declare-fun b!1282159 () Bool)

(assert (=> b!1282159 (= e!732607 tp_is_empty!33783)))

(declare-fun b!1282160 () Bool)

(declare-fun res!851738 () Bool)

(assert (=> b!1282160 (=> (not res!851738) (not e!732609))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84593 (_ BitVec 32)) Bool)

(assert (=> b!1282160 (= res!851738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1282161 () Bool)

(declare-fun res!851739 () Bool)

(assert (=> b!1282161 (=> (not res!851739) (not e!732609))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1282161 (= res!851739 (and (= (size!41344 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41345 _keys!1741) (size!41344 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1282162 () Bool)

(assert (=> b!1282162 (= e!732609 false)))

(declare-fun minValue!1387 () V!50147)

(declare-fun zeroValue!1387 () V!50147)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!576447 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21870 0))(
  ( (tuple2!21871 (_1!10945 (_ BitVec 64)) (_2!10945 V!50147)) )
))
(declare-datatypes ((List!29079 0))(
  ( (Nil!29076) (Cons!29075 (h!30284 tuple2!21870) (t!42630 List!29079)) )
))
(declare-datatypes ((ListLongMap!19539 0))(
  ( (ListLongMap!19540 (toList!9785 List!29079)) )
))
(declare-fun contains!7840 (ListLongMap!19539 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4805 (array!84593 array!84591 (_ BitVec 32) (_ BitVec 32) V!50147 V!50147 (_ BitVec 32) Int) ListLongMap!19539)

(assert (=> b!1282162 (= lt!576447 (contains!7840 (getCurrentListMap!4805 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!108666 res!851742) b!1282161))

(assert (= (and b!1282161 res!851739) b!1282160))

(assert (= (and b!1282160 res!851738) b!1282157))

(assert (= (and b!1282157 res!851740) b!1282155))

(assert (= (and b!1282155 res!851741) b!1282162))

(assert (= (and b!1282156 condMapEmpty!52232) mapIsEmpty!52232))

(assert (= (and b!1282156 (not condMapEmpty!52232)) mapNonEmpty!52232))

(get-info :version)

(assert (= (and mapNonEmpty!52232 ((_ is ValueCellFull!15993) mapValue!52232)) b!1282158))

(assert (= (and b!1282156 ((_ is ValueCellFull!15993) mapDefault!52232)) b!1282159))

(assert (= start!108666 b!1282156))

(declare-fun m!1176463 () Bool)

(assert (=> start!108666 m!1176463))

(declare-fun m!1176465 () Bool)

(assert (=> start!108666 m!1176465))

(declare-fun m!1176467 () Bool)

(assert (=> start!108666 m!1176467))

(declare-fun m!1176469 () Bool)

(assert (=> b!1282157 m!1176469))

(declare-fun m!1176471 () Bool)

(assert (=> b!1282162 m!1176471))

(assert (=> b!1282162 m!1176471))

(declare-fun m!1176473 () Bool)

(assert (=> b!1282162 m!1176473))

(declare-fun m!1176475 () Bool)

(assert (=> mapNonEmpty!52232 m!1176475))

(declare-fun m!1176477 () Bool)

(assert (=> b!1282160 m!1176477))

(check-sat (not b_next!28143) (not b!1282160) (not start!108666) (not b!1282162) tp_is_empty!33783 b_and!46219 (not b!1282157) (not mapNonEmpty!52232))
(check-sat b_and!46219 (not b_next!28143))
