; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109638 () Bool)

(assert start!109638)

(declare-fun b_free!29091 () Bool)

(declare-fun b_next!29091 () Bool)

(assert (=> start!109638 (= b_free!29091 (not b_next!29091))))

(declare-fun tp!102392 () Bool)

(declare-fun b_and!47191 () Bool)

(assert (=> start!109638 (= tp!102392 b_and!47191)))

(declare-fun b!1298129 () Bool)

(declare-fun res!862798 () Bool)

(declare-fun e!740630 () Bool)

(assert (=> b!1298129 (=> (not res!862798) (not e!740630))))

(declare-datatypes ((array!86431 0))(
  ( (array!86432 (arr!41712 (Array (_ BitVec 32) (_ BitVec 64))) (size!42263 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86431)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86431 (_ BitVec 32)) Bool)

(assert (=> b!1298129 (= res!862798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!862800 () Bool)

(assert (=> start!109638 (=> (not res!862800) (not e!740630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109638 (= res!862800 (validMask!0 mask!2175))))

(assert (=> start!109638 e!740630))

(declare-fun tp_is_empty!34731 () Bool)

(assert (=> start!109638 tp_is_empty!34731))

(assert (=> start!109638 true))

(declare-datatypes ((V!51411 0))(
  ( (V!51412 (val!17440 Int)) )
))
(declare-datatypes ((ValueCell!16467 0))(
  ( (ValueCellFull!16467 (v!20041 V!51411)) (EmptyCell!16467) )
))
(declare-datatypes ((array!86433 0))(
  ( (array!86434 (arr!41713 (Array (_ BitVec 32) ValueCell!16467)) (size!42264 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86433)

(declare-fun e!740631 () Bool)

(declare-fun array_inv!31563 (array!86433) Bool)

(assert (=> start!109638 (and (array_inv!31563 _values!1445) e!740631)))

(declare-fun array_inv!31564 (array!86431) Bool)

(assert (=> start!109638 (array_inv!31564 _keys!1741)))

(assert (=> start!109638 tp!102392))

(declare-fun b!1298130 () Bool)

(declare-fun e!740632 () Bool)

(assert (=> b!1298130 (= e!740632 tp_is_empty!34731)))

(declare-fun b!1298131 () Bool)

(declare-fun e!740628 () Bool)

(declare-fun mapRes!53657 () Bool)

(assert (=> b!1298131 (= e!740631 (and e!740628 mapRes!53657))))

(declare-fun condMapEmpty!53657 () Bool)

(declare-fun mapDefault!53657 () ValueCell!16467)

(assert (=> b!1298131 (= condMapEmpty!53657 (= (arr!41713 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16467)) mapDefault!53657)))))

(declare-fun mapIsEmpty!53657 () Bool)

(assert (=> mapIsEmpty!53657 mapRes!53657))

(declare-fun b!1298132 () Bool)

(declare-fun res!862799 () Bool)

(assert (=> b!1298132 (=> (not res!862799) (not e!740630))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1298132 (= res!862799 (and (= (size!42264 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42263 _keys!1741) (size!42264 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1298133 () Bool)

(declare-fun res!862796 () Bool)

(assert (=> b!1298133 (=> (not res!862796) (not e!740630))))

(declare-fun minValue!1387 () V!51411)

(declare-fun zeroValue!1387 () V!51411)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22632 0))(
  ( (tuple2!22633 (_1!11326 (_ BitVec 64)) (_2!11326 V!51411)) )
))
(declare-datatypes ((List!29793 0))(
  ( (Nil!29790) (Cons!29789 (h!30998 tuple2!22632) (t!43364 List!29793)) )
))
(declare-datatypes ((ListLongMap!20301 0))(
  ( (ListLongMap!20302 (toList!10166 List!29793)) )
))
(declare-fun contains!8220 (ListLongMap!20301 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5140 (array!86431 array!86433 (_ BitVec 32) (_ BitVec 32) V!51411 V!51411 (_ BitVec 32) Int) ListLongMap!20301)

(assert (=> b!1298133 (= res!862796 (contains!8220 (getCurrentListMap!5140 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1298134 () Bool)

(assert (=> b!1298134 (= e!740628 tp_is_empty!34731)))

(declare-fun b!1298135 () Bool)

(assert (=> b!1298135 (= e!740630 (not true))))

(assert (=> b!1298135 (contains!8220 (getCurrentListMap!5140 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42926 0))(
  ( (Unit!42927) )
))
(declare-fun lt!580618 () Unit!42926)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!38 (array!86431 array!86433 (_ BitVec 32) (_ BitVec 32) V!51411 V!51411 (_ BitVec 64) (_ BitVec 32) Int) Unit!42926)

(assert (=> b!1298135 (= lt!580618 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!38 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun mapNonEmpty!53657 () Bool)

(declare-fun tp!102393 () Bool)

(assert (=> mapNonEmpty!53657 (= mapRes!53657 (and tp!102393 e!740632))))

(declare-fun mapRest!53657 () (Array (_ BitVec 32) ValueCell!16467))

(declare-fun mapValue!53657 () ValueCell!16467)

(declare-fun mapKey!53657 () (_ BitVec 32))

(assert (=> mapNonEmpty!53657 (= (arr!41713 _values!1445) (store mapRest!53657 mapKey!53657 mapValue!53657))))

(declare-fun b!1298136 () Bool)

(declare-fun res!862794 () Bool)

(assert (=> b!1298136 (=> (not res!862794) (not e!740630))))

(declare-datatypes ((List!29794 0))(
  ( (Nil!29791) (Cons!29790 (h!30999 (_ BitVec 64)) (t!43365 List!29794)) )
))
(declare-fun arrayNoDuplicates!0 (array!86431 (_ BitVec 32) List!29794) Bool)

(assert (=> b!1298136 (= res!862794 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29791))))

(declare-fun b!1298137 () Bool)

(declare-fun res!862797 () Bool)

(assert (=> b!1298137 (=> (not res!862797) (not e!740630))))

(assert (=> b!1298137 (= res!862797 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42263 _keys!1741))))))

(declare-fun b!1298138 () Bool)

(declare-fun res!862795 () Bool)

(assert (=> b!1298138 (=> (not res!862795) (not e!740630))))

(assert (=> b!1298138 (= res!862795 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42263 _keys!1741)) (not (= (select (arr!41712 _keys!1741) from!2144) k0!1205))))))

(assert (= (and start!109638 res!862800) b!1298132))

(assert (= (and b!1298132 res!862799) b!1298129))

(assert (= (and b!1298129 res!862798) b!1298136))

(assert (= (and b!1298136 res!862794) b!1298137))

(assert (= (and b!1298137 res!862797) b!1298133))

(assert (= (and b!1298133 res!862796) b!1298138))

(assert (= (and b!1298138 res!862795) b!1298135))

(assert (= (and b!1298131 condMapEmpty!53657) mapIsEmpty!53657))

(assert (= (and b!1298131 (not condMapEmpty!53657)) mapNonEmpty!53657))

(get-info :version)

(assert (= (and mapNonEmpty!53657 ((_ is ValueCellFull!16467) mapValue!53657)) b!1298130))

(assert (= (and b!1298131 ((_ is ValueCellFull!16467) mapDefault!53657)) b!1298134))

(assert (= start!109638 b!1298131))

(declare-fun m!1189565 () Bool)

(assert (=> b!1298138 m!1189565))

(declare-fun m!1189567 () Bool)

(assert (=> b!1298129 m!1189567))

(declare-fun m!1189569 () Bool)

(assert (=> start!109638 m!1189569))

(declare-fun m!1189571 () Bool)

(assert (=> start!109638 m!1189571))

(declare-fun m!1189573 () Bool)

(assert (=> start!109638 m!1189573))

(declare-fun m!1189575 () Bool)

(assert (=> b!1298136 m!1189575))

(declare-fun m!1189577 () Bool)

(assert (=> mapNonEmpty!53657 m!1189577))

(declare-fun m!1189579 () Bool)

(assert (=> b!1298133 m!1189579))

(assert (=> b!1298133 m!1189579))

(declare-fun m!1189581 () Bool)

(assert (=> b!1298133 m!1189581))

(declare-fun m!1189583 () Bool)

(assert (=> b!1298135 m!1189583))

(assert (=> b!1298135 m!1189583))

(declare-fun m!1189585 () Bool)

(assert (=> b!1298135 m!1189585))

(declare-fun m!1189587 () Bool)

(assert (=> b!1298135 m!1189587))

(check-sat tp_is_empty!34731 (not b!1298135) b_and!47191 (not mapNonEmpty!53657) (not start!109638) (not b_next!29091) (not b!1298136) (not b!1298129) (not b!1298133))
(check-sat b_and!47191 (not b_next!29091))
