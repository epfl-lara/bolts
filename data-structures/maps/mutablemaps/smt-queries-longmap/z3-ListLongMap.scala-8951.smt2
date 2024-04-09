; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108470 () Bool)

(assert start!108470)

(declare-fun b_free!27981 () Bool)

(declare-fun b_next!27981 () Bool)

(assert (=> start!108470 (= b_free!27981 (not b_next!27981))))

(declare-fun tp!99053 () Bool)

(declare-fun b_and!46051 () Bool)

(assert (=> start!108470 (= tp!99053 b_and!46051)))

(declare-fun b!1279687 () Bool)

(declare-fun res!850150 () Bool)

(declare-fun e!731199 () Bool)

(assert (=> b!1279687 (=> (not res!850150) (not e!731199))))

(declare-datatypes ((array!84277 0))(
  ( (array!84278 (arr!40638 (Array (_ BitVec 32) (_ BitVec 64))) (size!41189 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84277)

(declare-datatypes ((List!28966 0))(
  ( (Nil!28963) (Cons!28962 (h!30171 (_ BitVec 64)) (t!42513 List!28966)) )
))
(declare-fun arrayNoDuplicates!0 (array!84277 (_ BitVec 32) List!28966) Bool)

(assert (=> b!1279687 (= res!850150 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28963))))

(declare-fun b!1279688 () Bool)

(declare-fun res!850148 () Bool)

(assert (=> b!1279688 (=> (not res!850148) (not e!731199))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49931 0))(
  ( (V!49932 (val!16885 Int)) )
))
(declare-datatypes ((ValueCell!15912 0))(
  ( (ValueCellFull!15912 (v!19483 V!49931)) (EmptyCell!15912) )
))
(declare-datatypes ((array!84279 0))(
  ( (array!84280 (arr!40639 (Array (_ BitVec 32) ValueCell!15912)) (size!41190 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84279)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1279688 (= res!850148 (and (= (size!41190 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41189 _keys!1741) (size!41190 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279689 () Bool)

(declare-fun e!731197 () Bool)

(declare-fun tp_is_empty!33621 () Bool)

(assert (=> b!1279689 (= e!731197 tp_is_empty!33621)))

(declare-fun b!1279690 () Bool)

(declare-fun res!850147 () Bool)

(assert (=> b!1279690 (=> (not res!850147) (not e!731199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84277 (_ BitVec 32)) Bool)

(assert (=> b!1279690 (= res!850147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1279691 () Bool)

(declare-fun e!731196 () Bool)

(assert (=> b!1279691 (= e!731196 tp_is_empty!33621)))

(declare-fun b!1279692 () Bool)

(declare-fun res!850149 () Bool)

(assert (=> b!1279692 (=> (not res!850149) (not e!731199))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1279692 (= res!850149 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41189 _keys!1741))))))

(declare-fun mapIsEmpty!51983 () Bool)

(declare-fun mapRes!51983 () Bool)

(assert (=> mapIsEmpty!51983 mapRes!51983))

(declare-fun b!1279693 () Bool)

(declare-fun e!731200 () Bool)

(assert (=> b!1279693 (= e!731200 (and e!731197 mapRes!51983))))

(declare-fun condMapEmpty!51983 () Bool)

(declare-fun mapDefault!51983 () ValueCell!15912)

(assert (=> b!1279693 (= condMapEmpty!51983 (= (arr!40639 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15912)) mapDefault!51983)))))

(declare-fun b!1279694 () Bool)

(assert (=> b!1279694 (= e!731199 false)))

(declare-fun minValue!1387 () V!49931)

(declare-fun zeroValue!1387 () V!49931)

(declare-fun lt!575980 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21754 0))(
  ( (tuple2!21755 (_1!10887 (_ BitVec 64)) (_2!10887 V!49931)) )
))
(declare-datatypes ((List!28967 0))(
  ( (Nil!28964) (Cons!28963 (h!30172 tuple2!21754) (t!42514 List!28967)) )
))
(declare-datatypes ((ListLongMap!19423 0))(
  ( (ListLongMap!19424 (toList!9727 List!28967)) )
))
(declare-fun contains!7780 (ListLongMap!19423 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4747 (array!84277 array!84279 (_ BitVec 32) (_ BitVec 32) V!49931 V!49931 (_ BitVec 32) Int) ListLongMap!19423)

(assert (=> b!1279694 (= lt!575980 (contains!7780 (getCurrentListMap!4747 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!51983 () Bool)

(declare-fun tp!99054 () Bool)

(assert (=> mapNonEmpty!51983 (= mapRes!51983 (and tp!99054 e!731196))))

(declare-fun mapKey!51983 () (_ BitVec 32))

(declare-fun mapRest!51983 () (Array (_ BitVec 32) ValueCell!15912))

(declare-fun mapValue!51983 () ValueCell!15912)

(assert (=> mapNonEmpty!51983 (= (arr!40639 _values!1445) (store mapRest!51983 mapKey!51983 mapValue!51983))))

(declare-fun res!850151 () Bool)

(assert (=> start!108470 (=> (not res!850151) (not e!731199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108470 (= res!850151 (validMask!0 mask!2175))))

(assert (=> start!108470 e!731199))

(assert (=> start!108470 tp_is_empty!33621))

(assert (=> start!108470 true))

(declare-fun array_inv!30831 (array!84279) Bool)

(assert (=> start!108470 (and (array_inv!30831 _values!1445) e!731200)))

(declare-fun array_inv!30832 (array!84277) Bool)

(assert (=> start!108470 (array_inv!30832 _keys!1741)))

(assert (=> start!108470 tp!99053))

(assert (= (and start!108470 res!850151) b!1279688))

(assert (= (and b!1279688 res!850148) b!1279690))

(assert (= (and b!1279690 res!850147) b!1279687))

(assert (= (and b!1279687 res!850150) b!1279692))

(assert (= (and b!1279692 res!850149) b!1279694))

(assert (= (and b!1279693 condMapEmpty!51983) mapIsEmpty!51983))

(assert (= (and b!1279693 (not condMapEmpty!51983)) mapNonEmpty!51983))

(get-info :version)

(assert (= (and mapNonEmpty!51983 ((_ is ValueCellFull!15912) mapValue!51983)) b!1279691))

(assert (= (and b!1279693 ((_ is ValueCellFull!15912) mapDefault!51983)) b!1279689))

(assert (= start!108470 b!1279693))

(declare-fun m!1174575 () Bool)

(assert (=> b!1279690 m!1174575))

(declare-fun m!1174577 () Bool)

(assert (=> b!1279694 m!1174577))

(assert (=> b!1279694 m!1174577))

(declare-fun m!1174579 () Bool)

(assert (=> b!1279694 m!1174579))

(declare-fun m!1174581 () Bool)

(assert (=> b!1279687 m!1174581))

(declare-fun m!1174583 () Bool)

(assert (=> mapNonEmpty!51983 m!1174583))

(declare-fun m!1174585 () Bool)

(assert (=> start!108470 m!1174585))

(declare-fun m!1174587 () Bool)

(assert (=> start!108470 m!1174587))

(declare-fun m!1174589 () Bool)

(assert (=> start!108470 m!1174589))

(check-sat (not b!1279687) (not mapNonEmpty!51983) tp_is_empty!33621 b_and!46051 (not start!108470) (not b!1279690) (not b!1279694) (not b_next!27981))
(check-sat b_and!46051 (not b_next!27981))
