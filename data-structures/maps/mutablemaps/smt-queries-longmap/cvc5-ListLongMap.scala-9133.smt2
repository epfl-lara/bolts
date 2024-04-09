; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109618 () Bool)

(assert start!109618)

(declare-fun b_free!29071 () Bool)

(declare-fun b_next!29071 () Bool)

(assert (=> start!109618 (= b_free!29071 (not b_next!29071))))

(declare-fun tp!102333 () Bool)

(declare-fun b_and!47171 () Bool)

(assert (=> start!109618 (= tp!102333 b_and!47171)))

(declare-fun mapNonEmpty!53627 () Bool)

(declare-fun mapRes!53627 () Bool)

(declare-fun tp!102332 () Bool)

(declare-fun e!740479 () Bool)

(assert (=> mapNonEmpty!53627 (= mapRes!53627 (and tp!102332 e!740479))))

(declare-datatypes ((V!51385 0))(
  ( (V!51386 (val!17430 Int)) )
))
(declare-datatypes ((ValueCell!16457 0))(
  ( (ValueCellFull!16457 (v!20031 V!51385)) (EmptyCell!16457) )
))
(declare-fun mapRest!53627 () (Array (_ BitVec 32) ValueCell!16457))

(declare-datatypes ((array!86395 0))(
  ( (array!86396 (arr!41694 (Array (_ BitVec 32) ValueCell!16457)) (size!42245 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86395)

(declare-fun mapKey!53627 () (_ BitVec 32))

(declare-fun mapValue!53627 () ValueCell!16457)

(assert (=> mapNonEmpty!53627 (= (arr!41694 _values!1445) (store mapRest!53627 mapKey!53627 mapValue!53627))))

(declare-fun b!1297829 () Bool)

(declare-fun res!862589 () Bool)

(declare-fun e!740482 () Bool)

(assert (=> b!1297829 (=> (not res!862589) (not e!740482))))

(declare-fun minValue!1387 () V!51385)

(declare-fun zeroValue!1387 () V!51385)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86397 0))(
  ( (array!86398 (arr!41695 (Array (_ BitVec 32) (_ BitVec 64))) (size!42246 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86397)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22616 0))(
  ( (tuple2!22617 (_1!11318 (_ BitVec 64)) (_2!11318 V!51385)) )
))
(declare-datatypes ((List!29778 0))(
  ( (Nil!29775) (Cons!29774 (h!30983 tuple2!22616) (t!43349 List!29778)) )
))
(declare-datatypes ((ListLongMap!20285 0))(
  ( (ListLongMap!20286 (toList!10158 List!29778)) )
))
(declare-fun contains!8212 (ListLongMap!20285 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5132 (array!86397 array!86395 (_ BitVec 32) (_ BitVec 32) V!51385 V!51385 (_ BitVec 32) Int) ListLongMap!20285)

(assert (=> b!1297829 (= res!862589 (contains!8212 (getCurrentListMap!5132 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1297830 () Bool)

(declare-fun res!862584 () Bool)

(assert (=> b!1297830 (=> (not res!862584) (not e!740482))))

(declare-datatypes ((List!29779 0))(
  ( (Nil!29776) (Cons!29775 (h!30984 (_ BitVec 64)) (t!43350 List!29779)) )
))
(declare-fun arrayNoDuplicates!0 (array!86397 (_ BitVec 32) List!29779) Bool)

(assert (=> b!1297830 (= res!862584 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29776))))

(declare-fun b!1297831 () Bool)

(declare-fun res!862586 () Bool)

(assert (=> b!1297831 (=> (not res!862586) (not e!740482))))

(assert (=> b!1297831 (= res!862586 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42246 _keys!1741)) (not (= (select (arr!41695 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1297832 () Bool)

(declare-fun e!740481 () Bool)

(declare-fun e!740478 () Bool)

(assert (=> b!1297832 (= e!740481 (and e!740478 mapRes!53627))))

(declare-fun condMapEmpty!53627 () Bool)

(declare-fun mapDefault!53627 () ValueCell!16457)

