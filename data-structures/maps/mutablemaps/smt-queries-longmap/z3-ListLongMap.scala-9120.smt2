; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109542 () Bool)

(assert start!109542)

(declare-fun b_free!28995 () Bool)

(declare-fun b_next!28995 () Bool)

(assert (=> start!109542 (= b_free!28995 (not b_next!28995))))

(declare-fun tp!102104 () Bool)

(declare-fun b_and!47095 () Bool)

(assert (=> start!109542 (= tp!102104 b_and!47095)))

(declare-fun res!861975 () Bool)

(declare-fun e!739910 () Bool)

(assert (=> start!109542 (=> (not res!861975) (not e!739910))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109542 (= res!861975 (validMask!0 mask!2175))))

(assert (=> start!109542 e!739910))

(declare-fun tp_is_empty!34635 () Bool)

(assert (=> start!109542 tp_is_empty!34635))

(assert (=> start!109542 true))

(declare-datatypes ((V!51283 0))(
  ( (V!51284 (val!17392 Int)) )
))
(declare-datatypes ((ValueCell!16419 0))(
  ( (ValueCellFull!16419 (v!19993 V!51283)) (EmptyCell!16419) )
))
(declare-datatypes ((array!86249 0))(
  ( (array!86250 (arr!41621 (Array (_ BitVec 32) ValueCell!16419)) (size!42172 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86249)

(declare-fun e!739912 () Bool)

(declare-fun array_inv!31503 (array!86249) Bool)

(assert (=> start!109542 (and (array_inv!31503 _values!1445) e!739912)))

(declare-datatypes ((array!86251 0))(
  ( (array!86252 (arr!41622 (Array (_ BitVec 32) (_ BitVec 64))) (size!42173 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86251)

(declare-fun array_inv!31504 (array!86251) Bool)

(assert (=> start!109542 (array_inv!31504 _keys!1741)))

(assert (=> start!109542 tp!102104))

(declare-fun b!1296877 () Bool)

(declare-fun res!861978 () Bool)

(assert (=> b!1296877 (=> (not res!861978) (not e!739910))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86251 (_ BitVec 32)) Bool)

(assert (=> b!1296877 (= res!861978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1296878 () Bool)

(declare-fun e!739908 () Bool)

(assert (=> b!1296878 (= e!739908 tp_is_empty!34635)))

(declare-fun b!1296879 () Bool)

(assert (=> b!1296879 (= e!739910 false)))

(declare-fun minValue!1387 () V!51283)

(declare-fun zeroValue!1387 () V!51283)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!580474 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22562 0))(
  ( (tuple2!22563 (_1!11291 (_ BitVec 64)) (_2!11291 V!51283)) )
))
(declare-datatypes ((List!29726 0))(
  ( (Nil!29723) (Cons!29722 (h!30931 tuple2!22562) (t!43297 List!29726)) )
))
(declare-datatypes ((ListLongMap!20231 0))(
  ( (ListLongMap!20232 (toList!10131 List!29726)) )
))
(declare-fun contains!8185 (ListLongMap!20231 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5105 (array!86251 array!86249 (_ BitVec 32) (_ BitVec 32) V!51283 V!51283 (_ BitVec 32) Int) ListLongMap!20231)

(assert (=> b!1296879 (= lt!580474 (contains!8185 (getCurrentListMap!5105 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1296880 () Bool)

(declare-fun e!739909 () Bool)

(assert (=> b!1296880 (= e!739909 tp_is_empty!34635)))

(declare-fun b!1296881 () Bool)

(declare-fun res!861976 () Bool)

(assert (=> b!1296881 (=> (not res!861976) (not e!739910))))

(assert (=> b!1296881 (= res!861976 (and (= (size!42172 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42173 _keys!1741) (size!42172 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53513 () Bool)

(declare-fun mapRes!53513 () Bool)

(assert (=> mapIsEmpty!53513 mapRes!53513))

(declare-fun mapNonEmpty!53513 () Bool)

(declare-fun tp!102105 () Bool)

(assert (=> mapNonEmpty!53513 (= mapRes!53513 (and tp!102105 e!739908))))

(declare-fun mapKey!53513 () (_ BitVec 32))

(declare-fun mapRest!53513 () (Array (_ BitVec 32) ValueCell!16419))

(declare-fun mapValue!53513 () ValueCell!16419)

(assert (=> mapNonEmpty!53513 (= (arr!41621 _values!1445) (store mapRest!53513 mapKey!53513 mapValue!53513))))

(declare-fun b!1296882 () Bool)

(declare-fun res!861977 () Bool)

(assert (=> b!1296882 (=> (not res!861977) (not e!739910))))

(declare-datatypes ((List!29727 0))(
  ( (Nil!29724) (Cons!29723 (h!30932 (_ BitVec 64)) (t!43298 List!29727)) )
))
(declare-fun arrayNoDuplicates!0 (array!86251 (_ BitVec 32) List!29727) Bool)

(assert (=> b!1296882 (= res!861977 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29724))))

(declare-fun b!1296883 () Bool)

(assert (=> b!1296883 (= e!739912 (and e!739909 mapRes!53513))))

(declare-fun condMapEmpty!53513 () Bool)

(declare-fun mapDefault!53513 () ValueCell!16419)

(assert (=> b!1296883 (= condMapEmpty!53513 (= (arr!41621 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16419)) mapDefault!53513)))))

(declare-fun b!1296884 () Bool)

(declare-fun res!861974 () Bool)

(assert (=> b!1296884 (=> (not res!861974) (not e!739910))))

(assert (=> b!1296884 (= res!861974 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42173 _keys!1741))))))

(assert (= (and start!109542 res!861975) b!1296881))

(assert (= (and b!1296881 res!861976) b!1296877))

(assert (= (and b!1296877 res!861978) b!1296882))

(assert (= (and b!1296882 res!861977) b!1296884))

(assert (= (and b!1296884 res!861974) b!1296879))

(assert (= (and b!1296883 condMapEmpty!53513) mapIsEmpty!53513))

(assert (= (and b!1296883 (not condMapEmpty!53513)) mapNonEmpty!53513))

(get-info :version)

(assert (= (and mapNonEmpty!53513 ((_ is ValueCellFull!16419) mapValue!53513)) b!1296878))

(assert (= (and b!1296883 ((_ is ValueCellFull!16419) mapDefault!53513)) b!1296880))

(assert (= start!109542 b!1296883))

(declare-fun m!1188669 () Bool)

(assert (=> b!1296879 m!1188669))

(assert (=> b!1296879 m!1188669))

(declare-fun m!1188671 () Bool)

(assert (=> b!1296879 m!1188671))

(declare-fun m!1188673 () Bool)

(assert (=> b!1296877 m!1188673))

(declare-fun m!1188675 () Bool)

(assert (=> mapNonEmpty!53513 m!1188675))

(declare-fun m!1188677 () Bool)

(assert (=> start!109542 m!1188677))

(declare-fun m!1188679 () Bool)

(assert (=> start!109542 m!1188679))

(declare-fun m!1188681 () Bool)

(assert (=> start!109542 m!1188681))

(declare-fun m!1188683 () Bool)

(assert (=> b!1296882 m!1188683))

(check-sat (not mapNonEmpty!53513) (not b_next!28995) (not b!1296877) (not b!1296879) (not b!1296882) b_and!47095 tp_is_empty!34635 (not start!109542))
(check-sat b_and!47095 (not b_next!28995))
