; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109456 () Bool)

(assert start!109456)

(declare-fun b_free!28909 () Bool)

(declare-fun b_next!28909 () Bool)

(assert (=> start!109456 (= b_free!28909 (not b_next!28909))))

(declare-fun tp!101847 () Bool)

(declare-fun b_and!47009 () Bool)

(assert (=> start!109456 (= tp!101847 b_and!47009)))

(declare-fun b!1295385 () Bool)

(declare-fun res!861038 () Bool)

(declare-fun e!739130 () Bool)

(assert (=> b!1295385 (=> (not res!861038) (not e!739130))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51169 0))(
  ( (V!51170 (val!17349 Int)) )
))
(declare-datatypes ((ValueCell!16376 0))(
  ( (ValueCellFull!16376 (v!19950 V!51169)) (EmptyCell!16376) )
))
(declare-datatypes ((array!86081 0))(
  ( (array!86082 (arr!41537 (Array (_ BitVec 32) ValueCell!16376)) (size!42088 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86081)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86083 0))(
  ( (array!86084 (arr!41538 (Array (_ BitVec 32) (_ BitVec 64))) (size!42089 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86083)

(assert (=> b!1295385 (= res!861038 (and (= (size!42088 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42089 _keys!1741) (size!42088 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1295386 () Bool)

(declare-fun res!861035 () Bool)

(assert (=> b!1295386 (=> (not res!861035) (not e!739130))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1295386 (= res!861035 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42089 _keys!1741))))))

(declare-fun b!1295387 () Bool)

(declare-fun res!861036 () Bool)

(assert (=> b!1295387 (=> (not res!861036) (not e!739130))))

(declare-datatypes ((List!29658 0))(
  ( (Nil!29655) (Cons!29654 (h!30863 (_ BitVec 64)) (t!43229 List!29658)) )
))
(declare-fun arrayNoDuplicates!0 (array!86083 (_ BitVec 32) List!29658) Bool)

(assert (=> b!1295387 (= res!861036 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29655))))

(declare-fun b!1295388 () Bool)

(declare-fun res!861032 () Bool)

(assert (=> b!1295388 (=> (not res!861032) (not e!739130))))

(declare-fun minValue!1387 () V!51169)

(declare-fun zeroValue!1387 () V!51169)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22490 0))(
  ( (tuple2!22491 (_1!11255 (_ BitVec 64)) (_2!11255 V!51169)) )
))
(declare-datatypes ((List!29659 0))(
  ( (Nil!29656) (Cons!29655 (h!30864 tuple2!22490) (t!43230 List!29659)) )
))
(declare-datatypes ((ListLongMap!20159 0))(
  ( (ListLongMap!20160 (toList!10095 List!29659)) )
))
(declare-fun contains!8151 (ListLongMap!20159 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5075 (array!86083 array!86081 (_ BitVec 32) (_ BitVec 32) V!51169 V!51169 (_ BitVec 32) Int) ListLongMap!20159)

(assert (=> b!1295388 (= res!861032 (contains!8151 (getCurrentListMap!5075 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapIsEmpty!53384 () Bool)

(declare-fun mapRes!53384 () Bool)

(assert (=> mapIsEmpty!53384 mapRes!53384))

(declare-fun b!1295389 () Bool)

(declare-fun res!861034 () Bool)

(assert (=> b!1295389 (=> (not res!861034) (not e!739130))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295389 (= res!861034 (not (validKeyInArray!0 (select (arr!41538 _keys!1741) from!2144))))))

(declare-fun res!861031 () Bool)

(assert (=> start!109456 (=> (not res!861031) (not e!739130))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109456 (= res!861031 (validMask!0 mask!2175))))

(assert (=> start!109456 e!739130))

(declare-fun tp_is_empty!34549 () Bool)

(assert (=> start!109456 tp_is_empty!34549))

(assert (=> start!109456 true))

(declare-fun e!739134 () Bool)

(declare-fun array_inv!31435 (array!86081) Bool)

(assert (=> start!109456 (and (array_inv!31435 _values!1445) e!739134)))

(declare-fun array_inv!31436 (array!86083) Bool)

(assert (=> start!109456 (array_inv!31436 _keys!1741)))

(assert (=> start!109456 tp!101847))

(declare-fun b!1295390 () Bool)

(declare-fun e!739131 () Bool)

(assert (=> b!1295390 (= e!739131 tp_is_empty!34549)))

(declare-fun b!1295391 () Bool)

(declare-fun res!861039 () Bool)

(assert (=> b!1295391 (=> (not res!861039) (not e!739130))))

(assert (=> b!1295391 (= res!861039 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42089 _keys!1741))))))

(declare-fun b!1295392 () Bool)

(assert (=> b!1295392 (= e!739134 (and e!739131 mapRes!53384))))

(declare-fun condMapEmpty!53384 () Bool)

(declare-fun mapDefault!53384 () ValueCell!16376)

