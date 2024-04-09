; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109832 () Bool)

(assert start!109832)

(declare-fun b_free!29189 () Bool)

(declare-fun b_next!29189 () Bool)

(assert (=> start!109832 (= b_free!29189 (not b_next!29189))))

(declare-fun tp!102701 () Bool)

(declare-fun b_and!47313 () Bool)

(assert (=> start!109832 (= tp!102701 b_and!47313)))

(declare-fun b!1300458 () Bool)

(declare-fun res!864264 () Bool)

(declare-fun e!741845 () Bool)

(assert (=> b!1300458 (=> (not res!864264) (not e!741845))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!86631 0))(
  ( (array!86632 (arr!41807 (Array (_ BitVec 32) (_ BitVec 64))) (size!42358 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86631)

(assert (=> b!1300458 (= res!864264 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42358 _keys!1741))))))

(declare-fun res!864272 () Bool)

(assert (=> start!109832 (=> (not res!864272) (not e!741845))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109832 (= res!864272 (validMask!0 mask!2175))))

(assert (=> start!109832 e!741845))

(declare-fun tp_is_empty!34829 () Bool)

(assert (=> start!109832 tp_is_empty!34829))

(assert (=> start!109832 true))

(declare-datatypes ((V!51541 0))(
  ( (V!51542 (val!17489 Int)) )
))
(declare-datatypes ((ValueCell!16516 0))(
  ( (ValueCellFull!16516 (v!20095 V!51541)) (EmptyCell!16516) )
))
(declare-datatypes ((array!86633 0))(
  ( (array!86634 (arr!41808 (Array (_ BitVec 32) ValueCell!16516)) (size!42359 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86633)

(declare-fun e!741844 () Bool)

(declare-fun array_inv!31631 (array!86633) Bool)

(assert (=> start!109832 (and (array_inv!31631 _values!1445) e!741844)))

(declare-fun array_inv!31632 (array!86631) Bool)

(assert (=> start!109832 (array_inv!31632 _keys!1741)))

(assert (=> start!109832 tp!102701))

(declare-fun b!1300459 () Bool)

(declare-fun res!864268 () Bool)

(assert (=> b!1300459 (=> (not res!864268) (not e!741845))))

(declare-datatypes ((List!29866 0))(
  ( (Nil!29863) (Cons!29862 (h!31071 (_ BitVec 64)) (t!43447 List!29866)) )
))
(declare-fun arrayNoDuplicates!0 (array!86631 (_ BitVec 32) List!29866) Bool)

(assert (=> b!1300459 (= res!864268 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29863))))

(declare-fun b!1300460 () Bool)

(declare-fun res!864265 () Bool)

(assert (=> b!1300460 (=> (not res!864265) (not e!741845))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1300460 (= res!864265 (validKeyInArray!0 (select (arr!41807 _keys!1741) from!2144)))))

(declare-fun b!1300461 () Bool)

(declare-fun res!864271 () Bool)

(assert (=> b!1300461 (=> (not res!864271) (not e!741845))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1300461 (= res!864271 (and (= (size!42359 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42358 _keys!1741) (size!42359 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1300462 () Bool)

(assert (=> b!1300462 (= e!741845 false)))

(declare-fun minValue!1387 () V!51541)

(declare-fun zeroValue!1387 () V!51541)

(declare-fun lt!581338 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22708 0))(
  ( (tuple2!22709 (_1!11364 (_ BitVec 64)) (_2!11364 V!51541)) )
))
(declare-datatypes ((List!29867 0))(
  ( (Nil!29864) (Cons!29863 (h!31072 tuple2!22708) (t!43448 List!29867)) )
))
(declare-datatypes ((ListLongMap!20377 0))(
  ( (ListLongMap!20378 (toList!10204 List!29867)) )
))
(declare-fun contains!8266 (ListLongMap!20377 (_ BitVec 64)) Bool)

(declare-fun +!4431 (ListLongMap!20377 tuple2!22708) ListLongMap!20377)

(declare-fun getCurrentListMapNoExtraKeys!6144 (array!86631 array!86633 (_ BitVec 32) (_ BitVec 32) V!51541 V!51541 (_ BitVec 32) Int) ListLongMap!20377)

(assert (=> b!1300462 (= lt!581338 (contains!8266 (+!4431 (getCurrentListMapNoExtraKeys!6144 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22709 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun b!1300463 () Bool)

(declare-fun e!741843 () Bool)

(declare-fun mapRes!53819 () Bool)

(assert (=> b!1300463 (= e!741844 (and e!741843 mapRes!53819))))

(declare-fun condMapEmpty!53819 () Bool)

(declare-fun mapDefault!53819 () ValueCell!16516)

