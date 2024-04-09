; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109724 () Bool)

(assert start!109724)

(declare-fun b_free!29141 () Bool)

(declare-fun b_next!29141 () Bool)

(assert (=> start!109724 (= b_free!29141 (not b_next!29141))))

(declare-fun tp!102548 () Bool)

(declare-fun b_and!47247 () Bool)

(assert (=> start!109724 (= tp!102548 b_and!47247)))

(declare-fun b!1299134 () Bool)

(declare-fun e!741190 () Bool)

(assert (=> b!1299134 (= e!741190 false)))

(declare-datatypes ((V!51477 0))(
  ( (V!51478 (val!17465 Int)) )
))
(declare-fun minValue!1387 () V!51477)

(declare-fun zeroValue!1387 () V!51477)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!580899 () Bool)

(declare-datatypes ((ValueCell!16492 0))(
  ( (ValueCellFull!16492 (v!20068 V!51477)) (EmptyCell!16492) )
))
(declare-datatypes ((array!86533 0))(
  ( (array!86534 (arr!41761 (Array (_ BitVec 32) ValueCell!16492)) (size!42312 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86533)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86535 0))(
  ( (array!86536 (arr!41762 (Array (_ BitVec 32) (_ BitVec 64))) (size!42313 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86535)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22668 0))(
  ( (tuple2!22669 (_1!11344 (_ BitVec 64)) (_2!11344 V!51477)) )
))
(declare-datatypes ((List!29829 0))(
  ( (Nil!29826) (Cons!29825 (h!31034 tuple2!22668) (t!43404 List!29829)) )
))
(declare-datatypes ((ListLongMap!20337 0))(
  ( (ListLongMap!20338 (toList!10184 List!29829)) )
))
(declare-fun contains!8240 (ListLongMap!20337 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5158 (array!86535 array!86533 (_ BitVec 32) (_ BitVec 32) V!51477 V!51477 (_ BitVec 32) Int) ListLongMap!20337)

(assert (=> b!1299134 (= lt!580899 (contains!8240 (getCurrentListMap!5158 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!53738 () Bool)

(declare-fun mapRes!53738 () Bool)

(declare-fun tp!102549 () Bool)

(declare-fun e!741188 () Bool)

(assert (=> mapNonEmpty!53738 (= mapRes!53738 (and tp!102549 e!741188))))

(declare-fun mapValue!53738 () ValueCell!16492)

(declare-fun mapRest!53738 () (Array (_ BitVec 32) ValueCell!16492))

(declare-fun mapKey!53738 () (_ BitVec 32))

(assert (=> mapNonEmpty!53738 (= (arr!41761 _values!1445) (store mapRest!53738 mapKey!53738 mapValue!53738))))

(declare-fun res!863429 () Bool)

(assert (=> start!109724 (=> (not res!863429) (not e!741190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109724 (= res!863429 (validMask!0 mask!2175))))

(assert (=> start!109724 e!741190))

(declare-fun tp_is_empty!34781 () Bool)

(assert (=> start!109724 tp_is_empty!34781))

(assert (=> start!109724 true))

(declare-fun e!741191 () Bool)

(declare-fun array_inv!31597 (array!86533) Bool)

(assert (=> start!109724 (and (array_inv!31597 _values!1445) e!741191)))

(declare-fun array_inv!31598 (array!86535) Bool)

(assert (=> start!109724 (array_inv!31598 _keys!1741)))

(assert (=> start!109724 tp!102548))

(declare-fun b!1299135 () Bool)

(declare-fun e!741189 () Bool)

(assert (=> b!1299135 (= e!741189 tp_is_empty!34781)))

(declare-fun b!1299136 () Bool)

(declare-fun res!863428 () Bool)

(assert (=> b!1299136 (=> (not res!863428) (not e!741190))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86535 (_ BitVec 32)) Bool)

(assert (=> b!1299136 (= res!863428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1299137 () Bool)

(declare-fun res!863426 () Bool)

(assert (=> b!1299137 (=> (not res!863426) (not e!741190))))

(assert (=> b!1299137 (= res!863426 (and (= (size!42312 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42313 _keys!1741) (size!42312 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1299138 () Bool)

(assert (=> b!1299138 (= e!741191 (and e!741189 mapRes!53738))))

(declare-fun condMapEmpty!53738 () Bool)

(declare-fun mapDefault!53738 () ValueCell!16492)

