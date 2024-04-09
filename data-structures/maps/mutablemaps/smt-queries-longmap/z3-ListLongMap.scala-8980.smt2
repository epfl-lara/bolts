; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108678 () Bool)

(assert start!108678)

(declare-fun b_free!28155 () Bool)

(declare-fun b_next!28155 () Bool)

(assert (=> start!108678 (= b_free!28155 (not b_next!28155))))

(declare-fun tp!99581 () Bool)

(declare-fun b_and!46231 () Bool)

(assert (=> start!108678 (= tp!99581 b_and!46231)))

(declare-fun mapIsEmpty!52250 () Bool)

(declare-fun mapRes!52250 () Bool)

(assert (=> mapIsEmpty!52250 mapRes!52250))

(declare-fun res!851831 () Bool)

(declare-fun e!732700 () Bool)

(assert (=> start!108678 (=> (not res!851831) (not e!732700))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108678 (= res!851831 (validMask!0 mask!2175))))

(assert (=> start!108678 e!732700))

(declare-fun tp_is_empty!33795 () Bool)

(assert (=> start!108678 tp_is_empty!33795))

(assert (=> start!108678 true))

(declare-datatypes ((V!50163 0))(
  ( (V!50164 (val!16972 Int)) )
))
(declare-datatypes ((ValueCell!15999 0))(
  ( (ValueCellFull!15999 (v!19572 V!50163)) (EmptyCell!15999) )
))
(declare-datatypes ((array!84613 0))(
  ( (array!84614 (arr!40804 (Array (_ BitVec 32) ValueCell!15999)) (size!41355 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84613)

(declare-fun e!732697 () Bool)

(declare-fun array_inv!30935 (array!84613) Bool)

(assert (=> start!108678 (and (array_inv!30935 _values!1445) e!732697)))

(declare-datatypes ((array!84615 0))(
  ( (array!84616 (arr!40805 (Array (_ BitVec 32) (_ BitVec 64))) (size!41356 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84615)

(declare-fun array_inv!30936 (array!84615) Bool)

(assert (=> start!108678 (array_inv!30936 _keys!1741)))

(assert (=> start!108678 tp!99581))

(declare-fun b!1282299 () Bool)

(declare-fun e!732696 () Bool)

(assert (=> b!1282299 (= e!732696 tp_is_empty!33795)))

(declare-fun mapNonEmpty!52250 () Bool)

(declare-fun tp!99582 () Bool)

(declare-fun e!732698 () Bool)

(assert (=> mapNonEmpty!52250 (= mapRes!52250 (and tp!99582 e!732698))))

(declare-fun mapKey!52250 () (_ BitVec 32))

(declare-fun mapRest!52250 () (Array (_ BitVec 32) ValueCell!15999))

(declare-fun mapValue!52250 () ValueCell!15999)

(assert (=> mapNonEmpty!52250 (= (arr!40804 _values!1445) (store mapRest!52250 mapKey!52250 mapValue!52250))))

(declare-fun b!1282300 () Bool)

(assert (=> b!1282300 (= e!732700 false)))

(declare-fun minValue!1387 () V!50163)

(declare-fun zeroValue!1387 () V!50163)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576465 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21876 0))(
  ( (tuple2!21877 (_1!10948 (_ BitVec 64)) (_2!10948 V!50163)) )
))
(declare-datatypes ((List!29085 0))(
  ( (Nil!29082) (Cons!29081 (h!30290 tuple2!21876) (t!42636 List!29085)) )
))
(declare-datatypes ((ListLongMap!19545 0))(
  ( (ListLongMap!19546 (toList!9788 List!29085)) )
))
(declare-fun contains!7843 (ListLongMap!19545 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4808 (array!84615 array!84613 (_ BitVec 32) (_ BitVec 32) V!50163 V!50163 (_ BitVec 32) Int) ListLongMap!19545)

(assert (=> b!1282300 (= lt!576465 (contains!7843 (getCurrentListMap!4808 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1282301 () Bool)

(declare-fun res!851829 () Bool)

(assert (=> b!1282301 (=> (not res!851829) (not e!732700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84615 (_ BitVec 32)) Bool)

(assert (=> b!1282301 (= res!851829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1282302 () Bool)

(declare-fun res!851830 () Bool)

(assert (=> b!1282302 (=> (not res!851830) (not e!732700))))

(declare-datatypes ((List!29086 0))(
  ( (Nil!29083) (Cons!29082 (h!30291 (_ BitVec 64)) (t!42637 List!29086)) )
))
(declare-fun arrayNoDuplicates!0 (array!84615 (_ BitVec 32) List!29086) Bool)

(assert (=> b!1282302 (= res!851830 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29083))))

(declare-fun b!1282303 () Bool)

(assert (=> b!1282303 (= e!732698 tp_is_empty!33795)))

(declare-fun b!1282304 () Bool)

(declare-fun res!851832 () Bool)

(assert (=> b!1282304 (=> (not res!851832) (not e!732700))))

(assert (=> b!1282304 (= res!851832 (and (= (size!41355 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41356 _keys!1741) (size!41355 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1282305 () Bool)

(declare-fun res!851828 () Bool)

(assert (=> b!1282305 (=> (not res!851828) (not e!732700))))

(assert (=> b!1282305 (= res!851828 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41356 _keys!1741))))))

(declare-fun b!1282306 () Bool)

(assert (=> b!1282306 (= e!732697 (and e!732696 mapRes!52250))))

(declare-fun condMapEmpty!52250 () Bool)

(declare-fun mapDefault!52250 () ValueCell!15999)

(assert (=> b!1282306 (= condMapEmpty!52250 (= (arr!40804 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15999)) mapDefault!52250)))))

(assert (= (and start!108678 res!851831) b!1282304))

(assert (= (and b!1282304 res!851832) b!1282301))

(assert (= (and b!1282301 res!851829) b!1282302))

(assert (= (and b!1282302 res!851830) b!1282305))

(assert (= (and b!1282305 res!851828) b!1282300))

(assert (= (and b!1282306 condMapEmpty!52250) mapIsEmpty!52250))

(assert (= (and b!1282306 (not condMapEmpty!52250)) mapNonEmpty!52250))

(get-info :version)

(assert (= (and mapNonEmpty!52250 ((_ is ValueCellFull!15999) mapValue!52250)) b!1282303))

(assert (= (and b!1282306 ((_ is ValueCellFull!15999) mapDefault!52250)) b!1282299))

(assert (= start!108678 b!1282306))

(declare-fun m!1176559 () Bool)

(assert (=> b!1282302 m!1176559))

(declare-fun m!1176561 () Bool)

(assert (=> b!1282300 m!1176561))

(assert (=> b!1282300 m!1176561))

(declare-fun m!1176563 () Bool)

(assert (=> b!1282300 m!1176563))

(declare-fun m!1176565 () Bool)

(assert (=> b!1282301 m!1176565))

(declare-fun m!1176567 () Bool)

(assert (=> mapNonEmpty!52250 m!1176567))

(declare-fun m!1176569 () Bool)

(assert (=> start!108678 m!1176569))

(declare-fun m!1176571 () Bool)

(assert (=> start!108678 m!1176571))

(declare-fun m!1176573 () Bool)

(assert (=> start!108678 m!1176573))

(check-sat (not b!1282300) (not b_next!28155) b_and!46231 (not b!1282302) (not b!1282301) tp_is_empty!33795 (not mapNonEmpty!52250) (not start!108678))
(check-sat b_and!46231 (not b_next!28155))
