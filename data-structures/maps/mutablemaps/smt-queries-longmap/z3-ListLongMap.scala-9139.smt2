; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109656 () Bool)

(assert start!109656)

(declare-fun b_free!29109 () Bool)

(declare-fun b_next!29109 () Bool)

(assert (=> start!109656 (= b_free!29109 (not b_next!29109))))

(declare-fun tp!102446 () Bool)

(declare-fun b_and!47209 () Bool)

(assert (=> start!109656 (= tp!102446 b_and!47209)))

(declare-fun b!1298399 () Bool)

(declare-fun e!740763 () Bool)

(declare-fun tp_is_empty!34749 () Bool)

(assert (=> b!1298399 (= e!740763 tp_is_empty!34749)))

(declare-fun b!1298400 () Bool)

(declare-fun e!740765 () Bool)

(declare-fun mapRes!53684 () Bool)

(assert (=> b!1298400 (= e!740765 (and e!740763 mapRes!53684))))

(declare-fun condMapEmpty!53684 () Bool)

(declare-datatypes ((V!51435 0))(
  ( (V!51436 (val!17449 Int)) )
))
(declare-datatypes ((ValueCell!16476 0))(
  ( (ValueCellFull!16476 (v!20050 V!51435)) (EmptyCell!16476) )
))
(declare-datatypes ((array!86467 0))(
  ( (array!86468 (arr!41730 (Array (_ BitVec 32) ValueCell!16476)) (size!42281 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86467)

(declare-fun mapDefault!53684 () ValueCell!16476)

(assert (=> b!1298400 (= condMapEmpty!53684 (= (arr!41730 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16476)) mapDefault!53684)))))

(declare-fun b!1298401 () Bool)

(declare-fun res!862988 () Bool)

(declare-fun e!740764 () Bool)

(assert (=> b!1298401 (=> (not res!862988) (not e!740764))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86469 0))(
  ( (array!86470 (arr!41731 (Array (_ BitVec 32) (_ BitVec 64))) (size!42282 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86469)

(assert (=> b!1298401 (= res!862988 (and (= (size!42281 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42282 _keys!1741) (size!42281 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1298402 () Bool)

(declare-fun res!862986 () Bool)

(assert (=> b!1298402 (=> (not res!862986) (not e!740764))))

(declare-datatypes ((List!29806 0))(
  ( (Nil!29803) (Cons!29802 (h!31011 (_ BitVec 64)) (t!43377 List!29806)) )
))
(declare-fun arrayNoDuplicates!0 (array!86469 (_ BitVec 32) List!29806) Bool)

(assert (=> b!1298402 (= res!862986 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29803))))

(declare-fun b!1298403 () Bool)

(declare-fun res!862987 () Bool)

(assert (=> b!1298403 (=> (not res!862987) (not e!740764))))

(declare-fun minValue!1387 () V!51435)

(declare-fun zeroValue!1387 () V!51435)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22646 0))(
  ( (tuple2!22647 (_1!11333 (_ BitVec 64)) (_2!11333 V!51435)) )
))
(declare-datatypes ((List!29807 0))(
  ( (Nil!29804) (Cons!29803 (h!31012 tuple2!22646) (t!43378 List!29807)) )
))
(declare-datatypes ((ListLongMap!20315 0))(
  ( (ListLongMap!20316 (toList!10173 List!29807)) )
))
(declare-fun contains!8227 (ListLongMap!20315 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5147 (array!86469 array!86467 (_ BitVec 32) (_ BitVec 32) V!51435 V!51435 (_ BitVec 32) Int) ListLongMap!20315)

(assert (=> b!1298403 (= res!862987 (contains!8227 (getCurrentListMap!5147 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1298404 () Bool)

(declare-fun res!862989 () Bool)

(assert (=> b!1298404 (=> (not res!862989) (not e!740764))))

(assert (=> b!1298404 (= res!862989 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42282 _keys!1741))))))

(declare-fun b!1298405 () Bool)

(assert (=> b!1298405 (= e!740764 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000)))))

(assert (=> b!1298405 (contains!8227 (getCurrentListMap!5147 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42940 0))(
  ( (Unit!42941) )
))
(declare-fun lt!580645 () Unit!42940)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!45 (array!86469 array!86467 (_ BitVec 32) (_ BitVec 32) V!51435 V!51435 (_ BitVec 64) (_ BitVec 32) Int) Unit!42940)

(assert (=> b!1298405 (= lt!580645 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!45 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1298406 () Bool)

(declare-fun e!740767 () Bool)

(assert (=> b!1298406 (= e!740767 tp_is_empty!34749)))

(declare-fun b!1298407 () Bool)

(declare-fun res!862983 () Bool)

(assert (=> b!1298407 (=> (not res!862983) (not e!740764))))

(assert (=> b!1298407 (= res!862983 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42282 _keys!1741)) (not (= (select (arr!41731 _keys!1741) from!2144) k0!1205))))))

(declare-fun mapNonEmpty!53684 () Bool)

(declare-fun tp!102447 () Bool)

(assert (=> mapNonEmpty!53684 (= mapRes!53684 (and tp!102447 e!740767))))

(declare-fun mapValue!53684 () ValueCell!16476)

(declare-fun mapRest!53684 () (Array (_ BitVec 32) ValueCell!16476))

(declare-fun mapKey!53684 () (_ BitVec 32))

(assert (=> mapNonEmpty!53684 (= (arr!41730 _values!1445) (store mapRest!53684 mapKey!53684 mapValue!53684))))

(declare-fun b!1298408 () Bool)

(declare-fun res!862985 () Bool)

(assert (=> b!1298408 (=> (not res!862985) (not e!740764))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86469 (_ BitVec 32)) Bool)

(assert (=> b!1298408 (= res!862985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!53684 () Bool)

(assert (=> mapIsEmpty!53684 mapRes!53684))

(declare-fun res!862984 () Bool)

(assert (=> start!109656 (=> (not res!862984) (not e!740764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109656 (= res!862984 (validMask!0 mask!2175))))

(assert (=> start!109656 e!740764))

(assert (=> start!109656 tp_is_empty!34749))

(assert (=> start!109656 true))

(declare-fun array_inv!31575 (array!86467) Bool)

(assert (=> start!109656 (and (array_inv!31575 _values!1445) e!740765)))

(declare-fun array_inv!31576 (array!86469) Bool)

(assert (=> start!109656 (array_inv!31576 _keys!1741)))

(assert (=> start!109656 tp!102446))

(assert (= (and start!109656 res!862984) b!1298401))

(assert (= (and b!1298401 res!862988) b!1298408))

(assert (= (and b!1298408 res!862985) b!1298402))

(assert (= (and b!1298402 res!862986) b!1298404))

(assert (= (and b!1298404 res!862989) b!1298403))

(assert (= (and b!1298403 res!862987) b!1298407))

(assert (= (and b!1298407 res!862983) b!1298405))

(assert (= (and b!1298400 condMapEmpty!53684) mapIsEmpty!53684))

(assert (= (and b!1298400 (not condMapEmpty!53684)) mapNonEmpty!53684))

(get-info :version)

(assert (= (and mapNonEmpty!53684 ((_ is ValueCellFull!16476) mapValue!53684)) b!1298406))

(assert (= (and b!1298400 ((_ is ValueCellFull!16476) mapDefault!53684)) b!1298399))

(assert (= start!109656 b!1298400))

(declare-fun m!1189781 () Bool)

(assert (=> mapNonEmpty!53684 m!1189781))

(declare-fun m!1189783 () Bool)

(assert (=> b!1298408 m!1189783))

(declare-fun m!1189785 () Bool)

(assert (=> b!1298402 m!1189785))

(declare-fun m!1189787 () Bool)

(assert (=> start!109656 m!1189787))

(declare-fun m!1189789 () Bool)

(assert (=> start!109656 m!1189789))

(declare-fun m!1189791 () Bool)

(assert (=> start!109656 m!1189791))

(declare-fun m!1189793 () Bool)

(assert (=> b!1298403 m!1189793))

(assert (=> b!1298403 m!1189793))

(declare-fun m!1189795 () Bool)

(assert (=> b!1298403 m!1189795))

(declare-fun m!1189797 () Bool)

(assert (=> b!1298405 m!1189797))

(assert (=> b!1298405 m!1189797))

(declare-fun m!1189799 () Bool)

(assert (=> b!1298405 m!1189799))

(declare-fun m!1189801 () Bool)

(assert (=> b!1298405 m!1189801))

(declare-fun m!1189803 () Bool)

(assert (=> b!1298407 m!1189803))

(check-sat tp_is_empty!34749 (not b!1298405) (not b!1298402) b_and!47209 (not b!1298403) (not b!1298408) (not mapNonEmpty!53684) (not start!109656) (not b_next!29109))
(check-sat b_and!47209 (not b_next!29109))
