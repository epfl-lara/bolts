; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109726 () Bool)

(assert start!109726)

(declare-fun b_free!29143 () Bool)

(declare-fun b_next!29143 () Bool)

(assert (=> start!109726 (= b_free!29143 (not b_next!29143))))

(declare-fun tp!102555 () Bool)

(declare-fun b_and!47249 () Bool)

(assert (=> start!109726 (= tp!102555 b_and!47249)))

(declare-fun b!1299166 () Bool)

(declare-fun e!741205 () Bool)

(declare-fun tp_is_empty!34783 () Bool)

(assert (=> b!1299166 (= e!741205 tp_is_empty!34783)))

(declare-fun mapIsEmpty!53741 () Bool)

(declare-fun mapRes!53741 () Bool)

(assert (=> mapIsEmpty!53741 mapRes!53741))

(declare-fun b!1299167 () Bool)

(declare-fun res!863454 () Bool)

(declare-fun e!741203 () Bool)

(assert (=> b!1299167 (=> (not res!863454) (not e!741203))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51481 0))(
  ( (V!51482 (val!17466 Int)) )
))
(declare-datatypes ((ValueCell!16493 0))(
  ( (ValueCellFull!16493 (v!20069 V!51481)) (EmptyCell!16493) )
))
(declare-datatypes ((array!86537 0))(
  ( (array!86538 (arr!41763 (Array (_ BitVec 32) ValueCell!16493)) (size!42314 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86537)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86539 0))(
  ( (array!86540 (arr!41764 (Array (_ BitVec 32) (_ BitVec 64))) (size!42315 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86539)

(assert (=> b!1299167 (= res!863454 (and (= (size!42314 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42315 _keys!1741) (size!42314 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1299168 () Bool)

(declare-fun res!863451 () Bool)

(assert (=> b!1299168 (=> (not res!863451) (not e!741203))))

(assert (=> b!1299168 (= res!863451 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!53741 () Bool)

(declare-fun tp!102554 () Bool)

(assert (=> mapNonEmpty!53741 (= mapRes!53741 (and tp!102554 e!741205))))

(declare-fun mapRest!53741 () (Array (_ BitVec 32) ValueCell!16493))

(declare-fun mapValue!53741 () ValueCell!16493)

(declare-fun mapKey!53741 () (_ BitVec 32))

(assert (=> mapNonEmpty!53741 (= (arr!41763 _values!1445) (store mapRest!53741 mapKey!53741 mapValue!53741))))

(declare-fun res!863456 () Bool)

(assert (=> start!109726 (=> (not res!863456) (not e!741203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109726 (= res!863456 (validMask!0 mask!2175))))

(assert (=> start!109726 e!741203))

(assert (=> start!109726 tp_is_empty!34783))

(assert (=> start!109726 true))

(declare-fun e!741204 () Bool)

(declare-fun array_inv!31599 (array!86537) Bool)

(assert (=> start!109726 (and (array_inv!31599 _values!1445) e!741204)))

(declare-fun array_inv!31600 (array!86539) Bool)

(assert (=> start!109726 (array_inv!31600 _keys!1741)))

(assert (=> start!109726 tp!102555))

(declare-fun b!1299169 () Bool)

(declare-fun res!863450 () Bool)

(assert (=> b!1299169 (=> (not res!863450) (not e!741203))))

(declare-fun minValue!1387 () V!51481)

(declare-fun zeroValue!1387 () V!51481)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22670 0))(
  ( (tuple2!22671 (_1!11345 (_ BitVec 64)) (_2!11345 V!51481)) )
))
(declare-datatypes ((List!29830 0))(
  ( (Nil!29827) (Cons!29826 (h!31035 tuple2!22670) (t!43405 List!29830)) )
))
(declare-datatypes ((ListLongMap!20339 0))(
  ( (ListLongMap!20340 (toList!10185 List!29830)) )
))
(declare-fun contains!8241 (ListLongMap!20339 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5159 (array!86539 array!86537 (_ BitVec 32) (_ BitVec 32) V!51481 V!51481 (_ BitVec 32) Int) ListLongMap!20339)

(assert (=> b!1299169 (= res!863450 (contains!8241 (getCurrentListMap!5159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1299170 () Bool)

(declare-fun res!863453 () Bool)

(assert (=> b!1299170 (=> (not res!863453) (not e!741203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86539 (_ BitVec 32)) Bool)

(assert (=> b!1299170 (= res!863453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1299171 () Bool)

(declare-fun res!863457 () Bool)

(assert (=> b!1299171 (=> (not res!863457) (not e!741203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1299171 (= res!863457 (validKeyInArray!0 (select (arr!41764 _keys!1741) from!2144)))))

(declare-fun b!1299172 () Bool)

(declare-fun res!863455 () Bool)

(assert (=> b!1299172 (=> (not res!863455) (not e!741203))))

(assert (=> b!1299172 (= res!863455 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42315 _keys!1741))))))

(declare-fun b!1299173 () Bool)

(declare-fun e!741206 () Bool)

(assert (=> b!1299173 (= e!741206 tp_is_empty!34783)))

(declare-fun b!1299174 () Bool)

(declare-fun +!4417 (ListLongMap!20339 tuple2!22670) ListLongMap!20339)

(declare-fun getCurrentListMapNoExtraKeys!6130 (array!86539 array!86537 (_ BitVec 32) (_ BitVec 32) V!51481 V!51481 (_ BitVec 32) Int) ListLongMap!20339)

(assert (=> b!1299174 (= e!741203 (not (contains!8241 (+!4417 (+!4417 (getCurrentListMapNoExtraKeys!6130 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22671 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (tuple2!22671 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205)))))

(declare-fun b!1299175 () Bool)

(declare-fun res!863452 () Bool)

(assert (=> b!1299175 (=> (not res!863452) (not e!741203))))

(declare-datatypes ((List!29831 0))(
  ( (Nil!29828) (Cons!29827 (h!31036 (_ BitVec 64)) (t!43406 List!29831)) )
))
(declare-fun arrayNoDuplicates!0 (array!86539 (_ BitVec 32) List!29831) Bool)

(assert (=> b!1299175 (= res!863452 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29828))))

(declare-fun b!1299176 () Bool)

(assert (=> b!1299176 (= e!741204 (and e!741206 mapRes!53741))))

(declare-fun condMapEmpty!53741 () Bool)

(declare-fun mapDefault!53741 () ValueCell!16493)

