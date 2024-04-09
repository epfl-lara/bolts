; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109226 () Bool)

(assert start!109226)

(declare-fun b_free!28679 () Bool)

(declare-fun b_next!28679 () Bool)

(assert (=> start!109226 (= b_free!28679 (not b_next!28679))))

(declare-fun tp!101156 () Bool)

(declare-fun b_and!46779 () Bool)

(assert (=> start!109226 (= tp!101156 b_and!46779)))

(declare-fun b!1291407 () Bool)

(declare-fun res!858091 () Bool)

(declare-fun e!737226 () Bool)

(assert (=> b!1291407 (=> (not res!858091) (not e!737226))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50861 0))(
  ( (V!50862 (val!17234 Int)) )
))
(declare-datatypes ((ValueCell!16261 0))(
  ( (ValueCellFull!16261 (v!19835 V!50861)) (EmptyCell!16261) )
))
(declare-datatypes ((array!85633 0))(
  ( (array!85634 (arr!41313 (Array (_ BitVec 32) ValueCell!16261)) (size!41864 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85633)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85635 0))(
  ( (array!85636 (arr!41314 (Array (_ BitVec 32) (_ BitVec 64))) (size!41865 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85635)

(assert (=> b!1291407 (= res!858091 (and (= (size!41864 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41865 _keys!1741) (size!41864 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291408 () Bool)

(declare-fun res!858088 () Bool)

(assert (=> b!1291408 (=> (not res!858088) (not e!737226))))

(declare-fun minValue!1387 () V!50861)

(declare-fun zeroValue!1387 () V!50861)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22294 0))(
  ( (tuple2!22295 (_1!11157 (_ BitVec 64)) (_2!11157 V!50861)) )
))
(declare-datatypes ((List!29486 0))(
  ( (Nil!29483) (Cons!29482 (h!30691 tuple2!22294) (t!43057 List!29486)) )
))
(declare-datatypes ((ListLongMap!19963 0))(
  ( (ListLongMap!19964 (toList!9997 List!29486)) )
))
(declare-fun contains!8053 (ListLongMap!19963 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4992 (array!85635 array!85633 (_ BitVec 32) (_ BitVec 32) V!50861 V!50861 (_ BitVec 32) Int) ListLongMap!19963)

(assert (=> b!1291408 (= res!858088 (contains!8053 (getCurrentListMap!4992 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapIsEmpty!53039 () Bool)

(declare-fun mapRes!53039 () Bool)

(assert (=> mapIsEmpty!53039 mapRes!53039))

(declare-fun b!1291409 () Bool)

(declare-fun e!737227 () Bool)

(assert (=> b!1291409 (= e!737227 true)))

(assert (=> b!1291409 false))

(declare-datatypes ((Unit!42683 0))(
  ( (Unit!42684) )
))
(declare-fun lt!579099 () Unit!42683)

(declare-fun lt!579098 () ListLongMap!19963)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!54 ((_ BitVec 64) (_ BitVec 64) V!50861 ListLongMap!19963) Unit!42683)

(assert (=> b!1291409 (= lt!579099 (lemmaInListMapAfterAddingDiffThenInBefore!54 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!579098))))

(declare-fun lt!579100 () ListLongMap!19963)

(declare-fun +!4359 (ListLongMap!19963 tuple2!22294) ListLongMap!19963)

(assert (=> b!1291409 (not (contains!8053 (+!4359 lt!579100 (tuple2!22295 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!579096 () Unit!42683)

(declare-fun addStillNotContains!404 (ListLongMap!19963 (_ BitVec 64) V!50861 (_ BitVec 64)) Unit!42683)

(assert (=> b!1291409 (= lt!579096 (addStillNotContains!404 lt!579100 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1291409 (not (contains!8053 lt!579098 k!1205))))

(assert (=> b!1291409 (= lt!579098 (+!4359 lt!579100 (tuple2!22295 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!579097 () Unit!42683)

(assert (=> b!1291409 (= lt!579097 (addStillNotContains!404 lt!579100 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6071 (array!85635 array!85633 (_ BitVec 32) (_ BitVec 32) V!50861 V!50861 (_ BitVec 32) Int) ListLongMap!19963)

(assert (=> b!1291409 (= lt!579100 (getCurrentListMapNoExtraKeys!6071 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1291410 () Bool)

(declare-fun res!858093 () Bool)

(assert (=> b!1291410 (=> (not res!858093) (not e!737226))))

(declare-datatypes ((List!29487 0))(
  ( (Nil!29484) (Cons!29483 (h!30692 (_ BitVec 64)) (t!43058 List!29487)) )
))
(declare-fun arrayNoDuplicates!0 (array!85635 (_ BitVec 32) List!29487) Bool)

(assert (=> b!1291410 (= res!858093 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29484))))

(declare-fun b!1291411 () Bool)

(declare-fun res!858090 () Bool)

(assert (=> b!1291411 (=> (not res!858090) (not e!737226))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291411 (= res!858090 (not (validKeyInArray!0 (select (arr!41314 _keys!1741) from!2144))))))

(declare-fun res!858095 () Bool)

(assert (=> start!109226 (=> (not res!858095) (not e!737226))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109226 (= res!858095 (validMask!0 mask!2175))))

(assert (=> start!109226 e!737226))

(declare-fun tp_is_empty!34319 () Bool)

(assert (=> start!109226 tp_is_empty!34319))

(assert (=> start!109226 true))

(declare-fun e!737224 () Bool)

(declare-fun array_inv!31279 (array!85633) Bool)

(assert (=> start!109226 (and (array_inv!31279 _values!1445) e!737224)))

(declare-fun array_inv!31280 (array!85635) Bool)

(assert (=> start!109226 (array_inv!31280 _keys!1741)))

(assert (=> start!109226 tp!101156))

(declare-fun b!1291412 () Bool)

(declare-fun res!858096 () Bool)

(assert (=> b!1291412 (=> (not res!858096) (not e!737226))))

(assert (=> b!1291412 (= res!858096 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41865 _keys!1741))))))

(declare-fun b!1291413 () Bool)

(declare-fun res!858089 () Bool)

(assert (=> b!1291413 (=> (not res!858089) (not e!737226))))

(assert (=> b!1291413 (= res!858089 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41865 _keys!1741))))))

(declare-fun b!1291414 () Bool)

(assert (=> b!1291414 (= e!737226 (not e!737227))))

(declare-fun res!858094 () Bool)

(assert (=> b!1291414 (=> res!858094 e!737227)))

(assert (=> b!1291414 (= res!858094 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1291414 (not (contains!8053 (ListLongMap!19964 Nil!29483) k!1205))))

(declare-fun lt!579095 () Unit!42683)

(declare-fun emptyContainsNothing!99 ((_ BitVec 64)) Unit!42683)

(assert (=> b!1291414 (= lt!579095 (emptyContainsNothing!99 k!1205))))

(declare-fun b!1291415 () Bool)

(declare-fun e!737223 () Bool)

(assert (=> b!1291415 (= e!737223 tp_is_empty!34319)))

(declare-fun b!1291416 () Bool)

(declare-fun res!858092 () Bool)

(assert (=> b!1291416 (=> (not res!858092) (not e!737226))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85635 (_ BitVec 32)) Bool)

(assert (=> b!1291416 (= res!858092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1291417 () Bool)

(declare-fun e!737222 () Bool)

(assert (=> b!1291417 (= e!737222 tp_is_empty!34319)))

(declare-fun mapNonEmpty!53039 () Bool)

(declare-fun tp!101157 () Bool)

(assert (=> mapNonEmpty!53039 (= mapRes!53039 (and tp!101157 e!737222))))

(declare-fun mapKey!53039 () (_ BitVec 32))

(declare-fun mapValue!53039 () ValueCell!16261)

(declare-fun mapRest!53039 () (Array (_ BitVec 32) ValueCell!16261))

(assert (=> mapNonEmpty!53039 (= (arr!41313 _values!1445) (store mapRest!53039 mapKey!53039 mapValue!53039))))

(declare-fun b!1291418 () Bool)

(assert (=> b!1291418 (= e!737224 (and e!737223 mapRes!53039))))

(declare-fun condMapEmpty!53039 () Bool)

(declare-fun mapDefault!53039 () ValueCell!16261)

