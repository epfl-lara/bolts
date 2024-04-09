; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109800 () Bool)

(assert start!109800)

(declare-fun b_free!29177 () Bool)

(declare-fun b_next!29177 () Bool)

(assert (=> start!109800 (= b_free!29177 (not b_next!29177))))

(declare-fun tp!102663 () Bool)

(declare-fun b_and!47295 () Bool)

(assert (=> start!109800 (= tp!102663 b_and!47295)))

(declare-fun b!1300088 () Bool)

(declare-fun e!741659 () Bool)

(declare-fun tp_is_empty!34817 () Bool)

(assert (=> b!1300088 (= e!741659 tp_is_empty!34817)))

(declare-fun b!1300089 () Bool)

(declare-fun res!864042 () Bool)

(declare-fun e!741658 () Bool)

(assert (=> b!1300089 (=> (not res!864042) (not e!741658))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51525 0))(
  ( (V!51526 (val!17483 Int)) )
))
(declare-datatypes ((ValueCell!16510 0))(
  ( (ValueCellFull!16510 (v!20088 V!51525)) (EmptyCell!16510) )
))
(declare-datatypes ((array!86607 0))(
  ( (array!86608 (arr!41796 (Array (_ BitVec 32) ValueCell!16510)) (size!42347 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86607)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86609 0))(
  ( (array!86610 (arr!41797 (Array (_ BitVec 32) (_ BitVec 64))) (size!42348 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86609)

(assert (=> b!1300089 (= res!864042 (and (= (size!42347 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42348 _keys!1741) (size!42347 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1300090 () Bool)

(declare-fun res!864044 () Bool)

(assert (=> b!1300090 (=> (not res!864044) (not e!741658))))

(declare-fun minValue!1387 () V!51525)

(declare-fun zeroValue!1387 () V!51525)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22698 0))(
  ( (tuple2!22699 (_1!11359 (_ BitVec 64)) (_2!11359 V!51525)) )
))
(declare-datatypes ((List!29857 0))(
  ( (Nil!29854) (Cons!29853 (h!31062 tuple2!22698) (t!43436 List!29857)) )
))
(declare-datatypes ((ListLongMap!20367 0))(
  ( (ListLongMap!20368 (toList!10199 List!29857)) )
))
(declare-fun contains!8259 (ListLongMap!20367 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5172 (array!86609 array!86607 (_ BitVec 32) (_ BitVec 32) V!51525 V!51525 (_ BitVec 32) Int) ListLongMap!20367)

(assert (=> b!1300090 (= res!864044 (contains!8259 (getCurrentListMap!5172 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1300091 () Bool)

(declare-fun res!864046 () Bool)

(assert (=> b!1300091 (=> (not res!864046) (not e!741658))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1300091 (= res!864046 (validKeyInArray!0 (select (arr!41797 _keys!1741) from!2144)))))

(declare-fun b!1300092 () Bool)

(declare-fun e!741656 () Bool)

(declare-fun e!741657 () Bool)

(declare-fun mapRes!53798 () Bool)

(assert (=> b!1300092 (= e!741656 (and e!741657 mapRes!53798))))

(declare-fun condMapEmpty!53798 () Bool)

(declare-fun mapDefault!53798 () ValueCell!16510)

