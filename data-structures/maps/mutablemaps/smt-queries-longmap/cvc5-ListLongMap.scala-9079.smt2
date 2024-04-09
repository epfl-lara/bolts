; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109294 () Bool)

(assert start!109294)

(declare-fun b_free!28747 () Bool)

(declare-fun b_next!28747 () Bool)

(assert (=> start!109294 (= b_free!28747 (not b_next!28747))))

(declare-fun tp!101360 () Bool)

(declare-fun b_and!46847 () Bool)

(assert (=> start!109294 (= tp!101360 b_and!46847)))

(declare-fun b!1292550 () Bool)

(declare-fun e!737757 () Bool)

(declare-fun tp_is_empty!34387 () Bool)

(assert (=> b!1292550 (= e!737757 tp_is_empty!34387)))

(declare-fun b!1292551 () Bool)

(declare-fun res!858933 () Bool)

(declare-fun e!737755 () Bool)

(assert (=> b!1292551 (=> (not res!858933) (not e!737755))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!85765 0))(
  ( (array!85766 (arr!41379 (Array (_ BitVec 32) (_ BitVec 64))) (size!41930 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85765)

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1292551 (= res!858933 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41930 _keys!1741))))))

(declare-fun b!1292552 () Bool)

(declare-fun res!858928 () Bool)

(assert (=> b!1292552 (=> (not res!858928) (not e!737755))))

(assert (=> b!1292552 (= res!858928 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41930 _keys!1741))))))

(declare-fun b!1292553 () Bool)

(declare-fun e!737756 () Bool)

(assert (=> b!1292553 (= e!737755 (not e!737756))))

(declare-fun res!858926 () Bool)

(assert (=> b!1292553 (=> res!858926 e!737756)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1292553 (= res!858926 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!50953 0))(
  ( (V!50954 (val!17268 Int)) )
))
(declare-datatypes ((tuple2!22354 0))(
  ( (tuple2!22355 (_1!11187 (_ BitVec 64)) (_2!11187 V!50953)) )
))
(declare-datatypes ((List!29540 0))(
  ( (Nil!29537) (Cons!29536 (h!30745 tuple2!22354) (t!43111 List!29540)) )
))
(declare-datatypes ((ListLongMap!20023 0))(
  ( (ListLongMap!20024 (toList!10027 List!29540)) )
))
(declare-fun contains!8083 (ListLongMap!20023 (_ BitVec 64)) Bool)

(assert (=> b!1292553 (not (contains!8083 (ListLongMap!20024 Nil!29537) k!1205))))

(declare-datatypes ((Unit!42735 0))(
  ( (Unit!42736) )
))
(declare-fun lt!579294 () Unit!42735)

(declare-fun emptyContainsNothing!124 ((_ BitVec 64)) Unit!42735)

(assert (=> b!1292553 (= lt!579294 (emptyContainsNothing!124 k!1205))))

(declare-fun mapNonEmpty!53141 () Bool)

(declare-fun mapRes!53141 () Bool)

(declare-fun tp!101361 () Bool)

(assert (=> mapNonEmpty!53141 (= mapRes!53141 (and tp!101361 e!737757))))

(declare-fun mapKey!53141 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16295 0))(
  ( (ValueCellFull!16295 (v!19869 V!50953)) (EmptyCell!16295) )
))
(declare-fun mapValue!53141 () ValueCell!16295)

(declare-datatypes ((array!85767 0))(
  ( (array!85768 (arr!41380 (Array (_ BitVec 32) ValueCell!16295)) (size!41931 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85767)

(declare-fun mapRest!53141 () (Array (_ BitVec 32) ValueCell!16295))

(assert (=> mapNonEmpty!53141 (= (arr!41380 _values!1445) (store mapRest!53141 mapKey!53141 mapValue!53141))))

(declare-fun b!1292554 () Bool)

(declare-fun res!858931 () Bool)

(assert (=> b!1292554 (=> (not res!858931) (not e!737755))))

(declare-fun mask!2175 () (_ BitVec 32))

(assert (=> b!1292554 (= res!858931 (and (= (size!41931 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41930 _keys!1741) (size!41931 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1292555 () Bool)

(declare-fun e!737754 () Bool)

(assert (=> b!1292555 (= e!737754 tp_is_empty!34387)))

(declare-fun res!858927 () Bool)

(assert (=> start!109294 (=> (not res!858927) (not e!737755))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109294 (= res!858927 (validMask!0 mask!2175))))

(assert (=> start!109294 e!737755))

(assert (=> start!109294 tp_is_empty!34387))

(assert (=> start!109294 true))

(declare-fun e!737758 () Bool)

(declare-fun array_inv!31323 (array!85767) Bool)

(assert (=> start!109294 (and (array_inv!31323 _values!1445) e!737758)))

(declare-fun array_inv!31324 (array!85765) Bool)

(assert (=> start!109294 (array_inv!31324 _keys!1741)))

(assert (=> start!109294 tp!101360))

(declare-fun b!1292556 () Bool)

(declare-fun res!858925 () Bool)

(assert (=> b!1292556 (=> (not res!858925) (not e!737755))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85765 (_ BitVec 32)) Bool)

(assert (=> b!1292556 (= res!858925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1292557 () Bool)

(assert (=> b!1292557 (= e!737758 (and e!737754 mapRes!53141))))

(declare-fun condMapEmpty!53141 () Bool)

(declare-fun mapDefault!53141 () ValueCell!16295)

