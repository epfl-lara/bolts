; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109594 () Bool)

(assert start!109594)

(declare-fun b_free!29047 () Bool)

(declare-fun b_next!29047 () Bool)

(assert (=> start!109594 (= b_free!29047 (not b_next!29047))))

(declare-fun tp!102260 () Bool)

(declare-fun b_and!47147 () Bool)

(assert (=> start!109594 (= tp!102260 b_and!47147)))

(declare-fun mapIsEmpty!53591 () Bool)

(declare-fun mapRes!53591 () Bool)

(assert (=> mapIsEmpty!53591 mapRes!53591))

(declare-fun b!1297501 () Bool)

(declare-fun res!862364 () Bool)

(declare-fun e!740301 () Bool)

(assert (=> b!1297501 (=> (not res!862364) (not e!740301))))

(declare-datatypes ((array!86347 0))(
  ( (array!86348 (arr!41670 (Array (_ BitVec 32) (_ BitVec 64))) (size!42221 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86347)

(declare-datatypes ((List!29757 0))(
  ( (Nil!29754) (Cons!29753 (h!30962 (_ BitVec 64)) (t!43328 List!29757)) )
))
(declare-fun arrayNoDuplicates!0 (array!86347 (_ BitVec 32) List!29757) Bool)

(assert (=> b!1297501 (= res!862364 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29754))))

(declare-fun b!1297502 () Bool)

(declare-fun res!862367 () Bool)

(assert (=> b!1297502 (=> (not res!862367) (not e!740301))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51353 0))(
  ( (V!51354 (val!17418 Int)) )
))
(declare-datatypes ((ValueCell!16445 0))(
  ( (ValueCellFull!16445 (v!20019 V!51353)) (EmptyCell!16445) )
))
(declare-datatypes ((array!86349 0))(
  ( (array!86350 (arr!41671 (Array (_ BitVec 32) ValueCell!16445)) (size!42222 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86349)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1297502 (= res!862367 (and (= (size!42222 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42221 _keys!1741) (size!42222 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!862366 () Bool)

(assert (=> start!109594 (=> (not res!862366) (not e!740301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109594 (= res!862366 (validMask!0 mask!2175))))

(assert (=> start!109594 e!740301))

(declare-fun tp_is_empty!34687 () Bool)

(assert (=> start!109594 tp_is_empty!34687))

(assert (=> start!109594 true))

(declare-fun e!740300 () Bool)

(declare-fun array_inv!31531 (array!86349) Bool)

(assert (=> start!109594 (and (array_inv!31531 _values!1445) e!740300)))

(declare-fun array_inv!31532 (array!86347) Bool)

(assert (=> start!109594 (array_inv!31532 _keys!1741)))

(assert (=> start!109594 tp!102260))

(declare-fun b!1297503 () Bool)

(declare-fun res!862368 () Bool)

(assert (=> b!1297503 (=> (not res!862368) (not e!740301))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1297503 (= res!862368 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42221 _keys!1741))))))

(declare-fun b!1297504 () Bool)

(assert (=> b!1297504 (= e!740301 false)))

(declare-fun minValue!1387 () V!51353)

(declare-fun zeroValue!1387 () V!51353)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!580552 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22594 0))(
  ( (tuple2!22595 (_1!11307 (_ BitVec 64)) (_2!11307 V!51353)) )
))
(declare-datatypes ((List!29758 0))(
  ( (Nil!29755) (Cons!29754 (h!30963 tuple2!22594) (t!43329 List!29758)) )
))
(declare-datatypes ((ListLongMap!20263 0))(
  ( (ListLongMap!20264 (toList!10147 List!29758)) )
))
(declare-fun contains!8201 (ListLongMap!20263 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5121 (array!86347 array!86349 (_ BitVec 32) (_ BitVec 32) V!51353 V!51353 (_ BitVec 32) Int) ListLongMap!20263)

(assert (=> b!1297504 (= lt!580552 (contains!8201 (getCurrentListMap!5121 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1297505 () Bool)

(declare-fun e!740299 () Bool)

(assert (=> b!1297505 (= e!740299 tp_is_empty!34687)))

(declare-fun b!1297506 () Bool)

(declare-fun e!740298 () Bool)

(assert (=> b!1297506 (= e!740300 (and e!740298 mapRes!53591))))

(declare-fun condMapEmpty!53591 () Bool)

(declare-fun mapDefault!53591 () ValueCell!16445)

