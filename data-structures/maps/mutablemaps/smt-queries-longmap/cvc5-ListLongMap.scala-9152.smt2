; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109828 () Bool)

(assert start!109828)

(declare-fun b_free!29185 () Bool)

(declare-fun b_next!29185 () Bool)

(assert (=> start!109828 (= b_free!29185 (not b_next!29185))))

(declare-fun tp!102690 () Bool)

(declare-fun b_and!47309 () Bool)

(assert (=> start!109828 (= tp!102690 b_and!47309)))

(declare-fun b!1300386 () Bool)

(declare-fun e!741814 () Bool)

(declare-fun tp_is_empty!34825 () Bool)

(assert (=> b!1300386 (= e!741814 tp_is_empty!34825)))

(declare-fun b!1300387 () Bool)

(declare-fun res!864212 () Bool)

(declare-fun e!741813 () Bool)

(assert (=> b!1300387 (=> (not res!864212) (not e!741813))))

(declare-datatypes ((array!86623 0))(
  ( (array!86624 (arr!41803 (Array (_ BitVec 32) (_ BitVec 64))) (size!42354 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86623)

(declare-datatypes ((List!29862 0))(
  ( (Nil!29859) (Cons!29858 (h!31067 (_ BitVec 64)) (t!43443 List!29862)) )
))
(declare-fun arrayNoDuplicates!0 (array!86623 (_ BitVec 32) List!29862) Bool)

(assert (=> b!1300387 (= res!864212 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29859))))

(declare-fun b!1300388 () Bool)

(declare-fun res!864210 () Bool)

(assert (=> b!1300388 (=> (not res!864210) (not e!741813))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51537 0))(
  ( (V!51538 (val!17487 Int)) )
))
(declare-datatypes ((ValueCell!16514 0))(
  ( (ValueCellFull!16514 (v!20093 V!51537)) (EmptyCell!16514) )
))
(declare-datatypes ((array!86625 0))(
  ( (array!86626 (arr!41804 (Array (_ BitVec 32) ValueCell!16514)) (size!42355 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86625)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1300388 (= res!864210 (and (= (size!42355 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42354 _keys!1741) (size!42355 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53813 () Bool)

(declare-fun mapRes!53813 () Bool)

(assert (=> mapIsEmpty!53813 mapRes!53813))

(declare-fun b!1300390 () Bool)

(declare-fun res!864214 () Bool)

(assert (=> b!1300390 (=> (not res!864214) (not e!741813))))

(declare-fun minValue!1387 () V!51537)

(declare-fun zeroValue!1387 () V!51537)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22704 0))(
  ( (tuple2!22705 (_1!11362 (_ BitVec 64)) (_2!11362 V!51537)) )
))
(declare-datatypes ((List!29863 0))(
  ( (Nil!29860) (Cons!29859 (h!31068 tuple2!22704) (t!43444 List!29863)) )
))
(declare-datatypes ((ListLongMap!20373 0))(
  ( (ListLongMap!20374 (toList!10202 List!29863)) )
))
(declare-fun contains!8264 (ListLongMap!20373 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5175 (array!86623 array!86625 (_ BitVec 32) (_ BitVec 32) V!51537 V!51537 (_ BitVec 32) Int) ListLongMap!20373)

(assert (=> b!1300390 (= res!864214 (contains!8264 (getCurrentListMap!5175 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1300389 () Bool)

(declare-fun res!864218 () Bool)

(assert (=> b!1300389 (=> (not res!864218) (not e!741813))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1300389 (= res!864218 (validKeyInArray!0 (select (arr!41803 _keys!1741) from!2144)))))

(declare-fun res!864217 () Bool)

(assert (=> start!109828 (=> (not res!864217) (not e!741813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109828 (= res!864217 (validMask!0 mask!2175))))

(assert (=> start!109828 e!741813))

(assert (=> start!109828 tp_is_empty!34825))

(assert (=> start!109828 true))

(declare-fun e!741817 () Bool)

(declare-fun array_inv!31627 (array!86625) Bool)

(assert (=> start!109828 (and (array_inv!31627 _values!1445) e!741817)))

(declare-fun array_inv!31628 (array!86623) Bool)

(assert (=> start!109828 (array_inv!31628 _keys!1741)))

(assert (=> start!109828 tp!102690))

(declare-fun b!1300391 () Bool)

(declare-fun res!864216 () Bool)

(assert (=> b!1300391 (=> (not res!864216) (not e!741813))))

(assert (=> b!1300391 (= res!864216 (and (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!53813 () Bool)

(declare-fun tp!102689 () Bool)

(assert (=> mapNonEmpty!53813 (= mapRes!53813 (and tp!102689 e!741814))))

(declare-fun mapRest!53813 () (Array (_ BitVec 32) ValueCell!16514))

(declare-fun mapValue!53813 () ValueCell!16514)

(declare-fun mapKey!53813 () (_ BitVec 32))

(assert (=> mapNonEmpty!53813 (= (arr!41804 _values!1445) (store mapRest!53813 mapKey!53813 mapValue!53813))))

(declare-fun b!1300392 () Bool)

(declare-fun e!741816 () Bool)

(assert (=> b!1300392 (= e!741816 tp_is_empty!34825)))

(declare-fun b!1300393 () Bool)

(assert (=> b!1300393 (= e!741817 (and e!741816 mapRes!53813))))

(declare-fun condMapEmpty!53813 () Bool)

(declare-fun mapDefault!53813 () ValueCell!16514)

