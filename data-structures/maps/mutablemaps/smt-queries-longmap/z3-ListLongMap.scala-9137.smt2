; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109644 () Bool)

(assert start!109644)

(declare-fun b_free!29097 () Bool)

(declare-fun b_next!29097 () Bool)

(assert (=> start!109644 (= b_free!29097 (not b_next!29097))))

(declare-fun tp!102410 () Bool)

(declare-fun b_and!47197 () Bool)

(assert (=> start!109644 (= tp!102410 b_and!47197)))

(declare-fun b!1298219 () Bool)

(declare-fun e!740674 () Bool)

(declare-fun tp_is_empty!34737 () Bool)

(assert (=> b!1298219 (= e!740674 tp_is_empty!34737)))

(declare-fun b!1298220 () Bool)

(declare-fun res!862862 () Bool)

(declare-fun e!740677 () Bool)

(assert (=> b!1298220 (=> (not res!862862) (not e!740677))))

(declare-datatypes ((V!51419 0))(
  ( (V!51420 (val!17443 Int)) )
))
(declare-fun minValue!1387 () V!51419)

(declare-fun zeroValue!1387 () V!51419)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16470 0))(
  ( (ValueCellFull!16470 (v!20044 V!51419)) (EmptyCell!16470) )
))
(declare-datatypes ((array!86443 0))(
  ( (array!86444 (arr!41718 (Array (_ BitVec 32) ValueCell!16470)) (size!42269 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86443)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86445 0))(
  ( (array!86446 (arr!41719 (Array (_ BitVec 32) (_ BitVec 64))) (size!42270 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86445)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22636 0))(
  ( (tuple2!22637 (_1!11328 (_ BitVec 64)) (_2!11328 V!51419)) )
))
(declare-datatypes ((List!29798 0))(
  ( (Nil!29795) (Cons!29794 (h!31003 tuple2!22636) (t!43369 List!29798)) )
))
(declare-datatypes ((ListLongMap!20305 0))(
  ( (ListLongMap!20306 (toList!10168 List!29798)) )
))
(declare-fun contains!8222 (ListLongMap!20305 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5142 (array!86445 array!86443 (_ BitVec 32) (_ BitVec 32) V!51419 V!51419 (_ BitVec 32) Int) ListLongMap!20305)

(assert (=> b!1298220 (= res!862862 (contains!8222 (getCurrentListMap!5142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!53666 () Bool)

(declare-fun mapRes!53666 () Bool)

(assert (=> mapIsEmpty!53666 mapRes!53666))

(declare-fun b!1298221 () Bool)

(declare-fun res!862861 () Bool)

(assert (=> b!1298221 (=> (not res!862861) (not e!740677))))

(assert (=> b!1298221 (= res!862861 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42270 _keys!1741)) (not (= (select (arr!41719 _keys!1741) from!2144) k0!1205))))))

(declare-fun mapNonEmpty!53666 () Bool)

(declare-fun tp!102411 () Bool)

(declare-fun e!740673 () Bool)

(assert (=> mapNonEmpty!53666 (= mapRes!53666 (and tp!102411 e!740673))))

(declare-fun mapRest!53666 () (Array (_ BitVec 32) ValueCell!16470))

(declare-fun mapKey!53666 () (_ BitVec 32))

(declare-fun mapValue!53666 () ValueCell!16470)

(assert (=> mapNonEmpty!53666 (= (arr!41718 _values!1445) (store mapRest!53666 mapKey!53666 mapValue!53666))))

(declare-fun b!1298223 () Bool)

(declare-fun res!862859 () Bool)

(assert (=> b!1298223 (=> (not res!862859) (not e!740677))))

(assert (=> b!1298223 (= res!862859 (and (= (size!42269 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42270 _keys!1741) (size!42269 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1298224 () Bool)

(declare-fun e!740675 () Bool)

(assert (=> b!1298224 (= e!740675 (and e!740674 mapRes!53666))))

(declare-fun condMapEmpty!53666 () Bool)

(declare-fun mapDefault!53666 () ValueCell!16470)

(assert (=> b!1298224 (= condMapEmpty!53666 (= (arr!41718 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16470)) mapDefault!53666)))))

(declare-fun b!1298225 () Bool)

(declare-fun res!862858 () Bool)

(assert (=> b!1298225 (=> (not res!862858) (not e!740677))))

(declare-datatypes ((List!29799 0))(
  ( (Nil!29796) (Cons!29795 (h!31004 (_ BitVec 64)) (t!43370 List!29799)) )
))
(declare-fun arrayNoDuplicates!0 (array!86445 (_ BitVec 32) List!29799) Bool)

(assert (=> b!1298225 (= res!862858 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29796))))

(declare-fun b!1298226 () Bool)

(assert (=> b!1298226 (= e!740673 tp_is_empty!34737)))

(declare-fun b!1298222 () Bool)

(declare-fun res!862857 () Bool)

(assert (=> b!1298222 (=> (not res!862857) (not e!740677))))

(assert (=> b!1298222 (= res!862857 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42270 _keys!1741))))))

(declare-fun res!862863 () Bool)

(assert (=> start!109644 (=> (not res!862863) (not e!740677))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109644 (= res!862863 (validMask!0 mask!2175))))

(assert (=> start!109644 e!740677))

(assert (=> start!109644 tp_is_empty!34737))

(assert (=> start!109644 true))

(declare-fun array_inv!31567 (array!86443) Bool)

(assert (=> start!109644 (and (array_inv!31567 _values!1445) e!740675)))

(declare-fun array_inv!31568 (array!86445) Bool)

(assert (=> start!109644 (array_inv!31568 _keys!1741)))

(assert (=> start!109644 tp!102410))

(declare-fun b!1298227 () Bool)

(assert (=> b!1298227 (= e!740677 (not true))))

(assert (=> b!1298227 (contains!8222 (getCurrentListMap!5142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42930 0))(
  ( (Unit!42931) )
))
(declare-fun lt!580627 () Unit!42930)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!40 (array!86445 array!86443 (_ BitVec 32) (_ BitVec 32) V!51419 V!51419 (_ BitVec 64) (_ BitVec 32) Int) Unit!42930)

(assert (=> b!1298227 (= lt!580627 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!40 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1298228 () Bool)

(declare-fun res!862860 () Bool)

(assert (=> b!1298228 (=> (not res!862860) (not e!740677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86445 (_ BitVec 32)) Bool)

(assert (=> b!1298228 (= res!862860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!109644 res!862863) b!1298223))

(assert (= (and b!1298223 res!862859) b!1298228))

(assert (= (and b!1298228 res!862860) b!1298225))

(assert (= (and b!1298225 res!862858) b!1298222))

(assert (= (and b!1298222 res!862857) b!1298220))

(assert (= (and b!1298220 res!862862) b!1298221))

(assert (= (and b!1298221 res!862861) b!1298227))

(assert (= (and b!1298224 condMapEmpty!53666) mapIsEmpty!53666))

(assert (= (and b!1298224 (not condMapEmpty!53666)) mapNonEmpty!53666))

(get-info :version)

(assert (= (and mapNonEmpty!53666 ((_ is ValueCellFull!16470) mapValue!53666)) b!1298226))

(assert (= (and b!1298224 ((_ is ValueCellFull!16470) mapDefault!53666)) b!1298219))

(assert (= start!109644 b!1298224))

(declare-fun m!1189637 () Bool)

(assert (=> mapNonEmpty!53666 m!1189637))

(declare-fun m!1189639 () Bool)

(assert (=> b!1298220 m!1189639))

(assert (=> b!1298220 m!1189639))

(declare-fun m!1189641 () Bool)

(assert (=> b!1298220 m!1189641))

(declare-fun m!1189643 () Bool)

(assert (=> b!1298227 m!1189643))

(assert (=> b!1298227 m!1189643))

(declare-fun m!1189645 () Bool)

(assert (=> b!1298227 m!1189645))

(declare-fun m!1189647 () Bool)

(assert (=> b!1298227 m!1189647))

(declare-fun m!1189649 () Bool)

(assert (=> b!1298228 m!1189649))

(declare-fun m!1189651 () Bool)

(assert (=> b!1298221 m!1189651))

(declare-fun m!1189653 () Bool)

(assert (=> start!109644 m!1189653))

(declare-fun m!1189655 () Bool)

(assert (=> start!109644 m!1189655))

(declare-fun m!1189657 () Bool)

(assert (=> start!109644 m!1189657))

(declare-fun m!1189659 () Bool)

(assert (=> b!1298225 m!1189659))

(check-sat (not mapNonEmpty!53666) (not start!109644) b_and!47197 (not b!1298227) (not b!1298225) (not b!1298228) tp_is_empty!34737 (not b!1298220) (not b_next!29097))
(check-sat b_and!47197 (not b_next!29097))
