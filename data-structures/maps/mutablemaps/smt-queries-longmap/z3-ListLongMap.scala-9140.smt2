; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109662 () Bool)

(assert start!109662)

(declare-fun b_free!29115 () Bool)

(declare-fun b_next!29115 () Bool)

(assert (=> start!109662 (= b_free!29115 (not b_next!29115))))

(declare-fun tp!102465 () Bool)

(declare-fun b_and!47215 () Bool)

(assert (=> start!109662 (= tp!102465 b_and!47215)))

(declare-fun b!1298489 () Bool)

(declare-fun res!863046 () Bool)

(declare-fun e!740811 () Bool)

(assert (=> b!1298489 (=> (not res!863046) (not e!740811))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51443 0))(
  ( (V!51444 (val!17452 Int)) )
))
(declare-datatypes ((ValueCell!16479 0))(
  ( (ValueCellFull!16479 (v!20053 V!51443)) (EmptyCell!16479) )
))
(declare-datatypes ((array!86479 0))(
  ( (array!86480 (arr!41736 (Array (_ BitVec 32) ValueCell!16479)) (size!42287 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86479)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86481 0))(
  ( (array!86482 (arr!41737 (Array (_ BitVec 32) (_ BitVec 64))) (size!42288 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86481)

(assert (=> b!1298489 (= res!863046 (and (= (size!42287 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42288 _keys!1741) (size!42287 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1298490 () Bool)

(declare-fun res!863049 () Bool)

(assert (=> b!1298490 (=> (not res!863049) (not e!740811))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1298490 (= res!863049 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42288 _keys!1741)) (not (= (select (arr!41737 _keys!1741) from!2144) k0!1205))))))

(declare-fun b!1298491 () Bool)

(declare-fun e!740812 () Bool)

(declare-fun e!740808 () Bool)

(declare-fun mapRes!53693 () Bool)

(assert (=> b!1298491 (= e!740812 (and e!740808 mapRes!53693))))

(declare-fun condMapEmpty!53693 () Bool)

(declare-fun mapDefault!53693 () ValueCell!16479)

(assert (=> b!1298491 (= condMapEmpty!53693 (= (arr!41736 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16479)) mapDefault!53693)))))

(declare-fun b!1298492 () Bool)

(declare-fun tp_is_empty!34755 () Bool)

(assert (=> b!1298492 (= e!740808 tp_is_empty!34755)))

(declare-fun res!863048 () Bool)

(assert (=> start!109662 (=> (not res!863048) (not e!740811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109662 (= res!863048 (validMask!0 mask!2175))))

(assert (=> start!109662 e!740811))

(assert (=> start!109662 tp_is_empty!34755))

(assert (=> start!109662 true))

(declare-fun array_inv!31581 (array!86479) Bool)

(assert (=> start!109662 (and (array_inv!31581 _values!1445) e!740812)))

(declare-fun array_inv!31582 (array!86481) Bool)

(assert (=> start!109662 (array_inv!31582 _keys!1741)))

(assert (=> start!109662 tp!102465))

(declare-fun mapIsEmpty!53693 () Bool)

(assert (=> mapIsEmpty!53693 mapRes!53693))

(declare-fun b!1298493 () Bool)

(declare-fun res!863050 () Bool)

(assert (=> b!1298493 (=> (not res!863050) (not e!740811))))

(assert (=> b!1298493 (= res!863050 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42288 _keys!1741))))))

(declare-fun b!1298494 () Bool)

(declare-fun res!863051 () Bool)

(assert (=> b!1298494 (=> (not res!863051) (not e!740811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86481 (_ BitVec 32)) Bool)

(assert (=> b!1298494 (= res!863051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!53693 () Bool)

(declare-fun tp!102464 () Bool)

(declare-fun e!740810 () Bool)

(assert (=> mapNonEmpty!53693 (= mapRes!53693 (and tp!102464 e!740810))))

(declare-fun mapKey!53693 () (_ BitVec 32))

(declare-fun mapRest!53693 () (Array (_ BitVec 32) ValueCell!16479))

(declare-fun mapValue!53693 () ValueCell!16479)

(assert (=> mapNonEmpty!53693 (= (arr!41736 _values!1445) (store mapRest!53693 mapKey!53693 mapValue!53693))))

(declare-fun b!1298495 () Bool)

(assert (=> b!1298495 (= e!740810 tp_is_empty!34755)))

(declare-fun b!1298496 () Bool)

(declare-fun res!863047 () Bool)

(assert (=> b!1298496 (=> (not res!863047) (not e!740811))))

(declare-datatypes ((List!29812 0))(
  ( (Nil!29809) (Cons!29808 (h!31017 (_ BitVec 64)) (t!43383 List!29812)) )
))
(declare-fun arrayNoDuplicates!0 (array!86481 (_ BitVec 32) List!29812) Bool)

(assert (=> b!1298496 (= res!863047 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29809))))

(declare-fun b!1298497 () Bool)

(assert (=> b!1298497 (= e!740811 (not true))))

(declare-fun minValue!1387 () V!51443)

(declare-fun zeroValue!1387 () V!51443)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22652 0))(
  ( (tuple2!22653 (_1!11336 (_ BitVec 64)) (_2!11336 V!51443)) )
))
(declare-datatypes ((List!29813 0))(
  ( (Nil!29810) (Cons!29809 (h!31018 tuple2!22652) (t!43384 List!29813)) )
))
(declare-datatypes ((ListLongMap!20321 0))(
  ( (ListLongMap!20322 (toList!10176 List!29813)) )
))
(declare-fun contains!8230 (ListLongMap!20321 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5150 (array!86481 array!86479 (_ BitVec 32) (_ BitVec 32) V!51443 V!51443 (_ BitVec 32) Int) ListLongMap!20321)

(assert (=> b!1298497 (contains!8230 (getCurrentListMap!5150 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42946 0))(
  ( (Unit!42947) )
))
(declare-fun lt!580654 () Unit!42946)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!48 (array!86481 array!86479 (_ BitVec 32) (_ BitVec 32) V!51443 V!51443 (_ BitVec 64) (_ BitVec 32) Int) Unit!42946)

(assert (=> b!1298497 (= lt!580654 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!48 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1298498 () Bool)

(declare-fun res!863052 () Bool)

(assert (=> b!1298498 (=> (not res!863052) (not e!740811))))

(assert (=> b!1298498 (= res!863052 (contains!8230 (getCurrentListMap!5150 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!109662 res!863048) b!1298489))

(assert (= (and b!1298489 res!863046) b!1298494))

(assert (= (and b!1298494 res!863051) b!1298496))

(assert (= (and b!1298496 res!863047) b!1298493))

(assert (= (and b!1298493 res!863050) b!1298498))

(assert (= (and b!1298498 res!863052) b!1298490))

(assert (= (and b!1298490 res!863049) b!1298497))

(assert (= (and b!1298491 condMapEmpty!53693) mapIsEmpty!53693))

(assert (= (and b!1298491 (not condMapEmpty!53693)) mapNonEmpty!53693))

(get-info :version)

(assert (= (and mapNonEmpty!53693 ((_ is ValueCellFull!16479) mapValue!53693)) b!1298495))

(assert (= (and b!1298491 ((_ is ValueCellFull!16479) mapDefault!53693)) b!1298492))

(assert (= start!109662 b!1298491))

(declare-fun m!1189853 () Bool)

(assert (=> start!109662 m!1189853))

(declare-fun m!1189855 () Bool)

(assert (=> start!109662 m!1189855))

(declare-fun m!1189857 () Bool)

(assert (=> start!109662 m!1189857))

(declare-fun m!1189859 () Bool)

(assert (=> mapNonEmpty!53693 m!1189859))

(declare-fun m!1189861 () Bool)

(assert (=> b!1298498 m!1189861))

(assert (=> b!1298498 m!1189861))

(declare-fun m!1189863 () Bool)

(assert (=> b!1298498 m!1189863))

(declare-fun m!1189865 () Bool)

(assert (=> b!1298496 m!1189865))

(declare-fun m!1189867 () Bool)

(assert (=> b!1298490 m!1189867))

(declare-fun m!1189869 () Bool)

(assert (=> b!1298494 m!1189869))

(declare-fun m!1189871 () Bool)

(assert (=> b!1298497 m!1189871))

(assert (=> b!1298497 m!1189871))

(declare-fun m!1189873 () Bool)

(assert (=> b!1298497 m!1189873))

(declare-fun m!1189875 () Bool)

(assert (=> b!1298497 m!1189875))

(check-sat (not b!1298497) tp_is_empty!34755 (not b!1298498) (not b!1298496) (not mapNonEmpty!53693) (not b_next!29115) (not b!1298494) b_and!47215 (not start!109662))
(check-sat b_and!47215 (not b_next!29115))
