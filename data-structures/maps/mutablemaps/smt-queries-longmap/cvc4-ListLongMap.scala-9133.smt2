; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109622 () Bool)

(assert start!109622)

(declare-fun b_free!29075 () Bool)

(declare-fun b_next!29075 () Bool)

(assert (=> start!109622 (= b_free!29075 (not b_next!29075))))

(declare-fun tp!102344 () Bool)

(declare-fun b_and!47175 () Bool)

(assert (=> start!109622 (= tp!102344 b_and!47175)))

(declare-fun mapNonEmpty!53633 () Bool)

(declare-fun mapRes!53633 () Bool)

(declare-fun tp!102345 () Bool)

(declare-fun e!740511 () Bool)

(assert (=> mapNonEmpty!53633 (= mapRes!53633 (and tp!102345 e!740511))))

(declare-datatypes ((V!51389 0))(
  ( (V!51390 (val!17432 Int)) )
))
(declare-datatypes ((ValueCell!16459 0))(
  ( (ValueCellFull!16459 (v!20033 V!51389)) (EmptyCell!16459) )
))
(declare-fun mapRest!53633 () (Array (_ BitVec 32) ValueCell!16459))

(declare-datatypes ((array!86403 0))(
  ( (array!86404 (arr!41698 (Array (_ BitVec 32) ValueCell!16459)) (size!42249 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86403)

(declare-fun mapValue!53633 () ValueCell!16459)

(declare-fun mapKey!53633 () (_ BitVec 32))

(assert (=> mapNonEmpty!53633 (= (arr!41698 _values!1445) (store mapRest!53633 mapKey!53633 mapValue!53633))))

(declare-fun b!1297889 () Bool)

(declare-fun res!862629 () Bool)

(declare-fun e!740512 () Bool)

(assert (=> b!1297889 (=> (not res!862629) (not e!740512))))

(declare-datatypes ((array!86405 0))(
  ( (array!86406 (arr!41699 (Array (_ BitVec 32) (_ BitVec 64))) (size!42250 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86405)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86405 (_ BitVec 32)) Bool)

(assert (=> b!1297889 (= res!862629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297890 () Bool)

(declare-fun res!862632 () Bool)

(assert (=> b!1297890 (=> (not res!862632) (not e!740512))))

(declare-fun zeroValue!1387 () V!51389)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun minValue!1387 () V!51389)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22620 0))(
  ( (tuple2!22621 (_1!11320 (_ BitVec 64)) (_2!11320 V!51389)) )
))
(declare-datatypes ((List!29782 0))(
  ( (Nil!29779) (Cons!29778 (h!30987 tuple2!22620) (t!43353 List!29782)) )
))
(declare-datatypes ((ListLongMap!20289 0))(
  ( (ListLongMap!20290 (toList!10160 List!29782)) )
))
(declare-fun contains!8214 (ListLongMap!20289 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5134 (array!86405 array!86403 (_ BitVec 32) (_ BitVec 32) V!51389 V!51389 (_ BitVec 32) Int) ListLongMap!20289)

(assert (=> b!1297890 (= res!862632 (contains!8214 (getCurrentListMap!5134 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!862626 () Bool)

(assert (=> start!109622 (=> (not res!862626) (not e!740512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109622 (= res!862626 (validMask!0 mask!2175))))

(assert (=> start!109622 e!740512))

(declare-fun tp_is_empty!34715 () Bool)

(assert (=> start!109622 tp_is_empty!34715))

(assert (=> start!109622 true))

(declare-fun e!740510 () Bool)

(declare-fun array_inv!31553 (array!86403) Bool)

(assert (=> start!109622 (and (array_inv!31553 _values!1445) e!740510)))

(declare-fun array_inv!31554 (array!86405) Bool)

(assert (=> start!109622 (array_inv!31554 _keys!1741)))

(assert (=> start!109622 tp!102344))

(declare-fun b!1297891 () Bool)

(declare-fun res!862628 () Bool)

(assert (=> b!1297891 (=> (not res!862628) (not e!740512))))

(assert (=> b!1297891 (= res!862628 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42250 _keys!1741)) (not (= (select (arr!41699 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1297892 () Bool)

(declare-fun res!862631 () Bool)

(assert (=> b!1297892 (=> (not res!862631) (not e!740512))))

(assert (=> b!1297892 (= res!862631 (and (= (size!42249 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42250 _keys!1741) (size!42249 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297893 () Bool)

(declare-fun res!862630 () Bool)

(assert (=> b!1297893 (=> (not res!862630) (not e!740512))))

(declare-datatypes ((List!29783 0))(
  ( (Nil!29780) (Cons!29779 (h!30988 (_ BitVec 64)) (t!43354 List!29783)) )
))
(declare-fun arrayNoDuplicates!0 (array!86405 (_ BitVec 32) List!29783) Bool)

(assert (=> b!1297893 (= res!862630 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29780))))

(declare-fun b!1297894 () Bool)

(assert (=> b!1297894 (= e!740512 (not true))))

(assert (=> b!1297894 (contains!8214 (getCurrentListMap!5134 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42914 0))(
  ( (Unit!42915) )
))
(declare-fun lt!580594 () Unit!42914)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!32 (array!86405 array!86403 (_ BitVec 32) (_ BitVec 32) V!51389 V!51389 (_ BitVec 64) (_ BitVec 32) Int) Unit!42914)

(assert (=> b!1297894 (= lt!580594 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!32 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!53633 () Bool)

(assert (=> mapIsEmpty!53633 mapRes!53633))

(declare-fun b!1297895 () Bool)

(declare-fun e!740508 () Bool)

(assert (=> b!1297895 (= e!740508 tp_is_empty!34715)))

(declare-fun b!1297896 () Bool)

(assert (=> b!1297896 (= e!740511 tp_is_empty!34715)))

(declare-fun b!1297897 () Bool)

(declare-fun res!862627 () Bool)

(assert (=> b!1297897 (=> (not res!862627) (not e!740512))))

(assert (=> b!1297897 (= res!862627 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42250 _keys!1741))))))

(declare-fun b!1297898 () Bool)

(assert (=> b!1297898 (= e!740510 (and e!740508 mapRes!53633))))

(declare-fun condMapEmpty!53633 () Bool)

(declare-fun mapDefault!53633 () ValueCell!16459)

