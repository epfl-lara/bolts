; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108934 () Bool)

(assert start!108934)

(declare-fun b_free!28411 () Bool)

(declare-fun b_next!28411 () Bool)

(assert (=> start!108934 (= b_free!28411 (not b_next!28411))))

(declare-fun tp!100349 () Bool)

(declare-fun b_and!46493 () Bool)

(assert (=> start!108934 (= tp!100349 b_and!46493)))

(declare-fun b!1286261 () Bool)

(declare-fun res!854512 () Bool)

(declare-fun e!734691 () Bool)

(assert (=> b!1286261 (=> (not res!854512) (not e!734691))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50505 0))(
  ( (V!50506 (val!17100 Int)) )
))
(declare-datatypes ((ValueCell!16127 0))(
  ( (ValueCellFull!16127 (v!19700 V!50505)) (EmptyCell!16127) )
))
(declare-datatypes ((array!85109 0))(
  ( (array!85110 (arr!41052 (Array (_ BitVec 32) ValueCell!16127)) (size!41603 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85109)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85111 0))(
  ( (array!85112 (arr!41053 (Array (_ BitVec 32) (_ BitVec 64))) (size!41604 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85111)

(assert (=> b!1286261 (= res!854512 (and (= (size!41603 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41604 _keys!1741) (size!41603 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!52634 () Bool)

(declare-fun mapRes!52634 () Bool)

(assert (=> mapIsEmpty!52634 mapRes!52634))

(declare-fun minValue!1387 () V!50505)

(declare-fun zeroValue!1387 () V!50505)

(declare-datatypes ((tuple2!22062 0))(
  ( (tuple2!22063 (_1!11041 (_ BitVec 64)) (_2!11041 V!50505)) )
))
(declare-datatypes ((List!29268 0))(
  ( (Nil!29265) (Cons!29264 (h!30473 tuple2!22062) (t!42827 List!29268)) )
))
(declare-datatypes ((ListLongMap!19731 0))(
  ( (ListLongMap!19732 (toList!9881 List!29268)) )
))
(declare-fun lt!577149 () ListLongMap!19731)

(declare-fun bm!62891 () Bool)

(declare-fun c!124106 () Bool)

(declare-fun lt!577151 () ListLongMap!19731)

(declare-fun c!124107 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!577146 () ListLongMap!19731)

(declare-datatypes ((Unit!42454 0))(
  ( (Unit!42455) )
))
(declare-fun call!62894 () Unit!42454)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!27 ((_ BitVec 64) (_ BitVec 64) V!50505 ListLongMap!19731) Unit!42454)

(assert (=> bm!62891 (= call!62894 (lemmaInListMapAfterAddingDiffThenInBefore!27 k!1205 (ite (or c!124106 c!124107) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124106 c!124107) zeroValue!1387 minValue!1387) (ite c!124106 lt!577146 (ite c!124107 lt!577149 lt!577151))))))

(declare-fun b!1286262 () Bool)

(declare-fun e!734695 () Bool)

(declare-fun tp_is_empty!34051 () Bool)

(assert (=> b!1286262 (= e!734695 tp_is_empty!34051)))

(declare-fun bm!62892 () Bool)

(declare-fun call!62898 () ListLongMap!19731)

(declare-fun call!62896 () ListLongMap!19731)

(assert (=> bm!62892 (= call!62898 call!62896)))

(declare-fun b!1286263 () Bool)

(declare-fun e!734693 () Unit!42454)

(declare-fun lt!577145 () Unit!42454)

(assert (=> b!1286263 (= e!734693 lt!577145)))

(assert (=> b!1286263 (= lt!577151 call!62898)))

(declare-fun call!62897 () Unit!42454)

(assert (=> b!1286263 (= lt!577145 call!62897)))

(declare-fun call!62899 () Bool)

(assert (=> b!1286263 call!62899))

(declare-fun b!1286264 () Bool)

(declare-fun Unit!42456 () Unit!42454)

(assert (=> b!1286264 (= e!734693 Unit!42456)))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun bm!62893 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5999 (array!85111 array!85109 (_ BitVec 32) (_ BitVec 32) V!50505 V!50505 (_ BitVec 32) Int) ListLongMap!19731)

(assert (=> bm!62893 (= call!62896 (getCurrentListMapNoExtraKeys!5999 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun bm!62894 () Bool)

(declare-fun call!62895 () Bool)

(assert (=> bm!62894 (= call!62899 call!62895)))

(declare-fun b!1286265 () Bool)

(assert (=> b!1286265 call!62899))

(declare-fun lt!577147 () Unit!42454)

(assert (=> b!1286265 (= lt!577147 call!62897)))

(assert (=> b!1286265 (= lt!577149 call!62898)))

(declare-fun e!734694 () Unit!42454)

(assert (=> b!1286265 (= e!734694 lt!577147)))

(declare-fun b!1286266 () Bool)

(declare-fun res!854518 () Bool)

(assert (=> b!1286266 (=> (not res!854518) (not e!734691))))

(declare-fun contains!7935 (ListLongMap!19731 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4893 (array!85111 array!85109 (_ BitVec 32) (_ BitVec 32) V!50505 V!50505 (_ BitVec 32) Int) ListLongMap!19731)

(assert (=> b!1286266 (= res!854518 (contains!7935 (getCurrentListMap!4893 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1286267 () Bool)

(declare-fun res!854520 () Bool)

(assert (=> b!1286267 (=> (not res!854520) (not e!734691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85111 (_ BitVec 32)) Bool)

(assert (=> b!1286267 (= res!854520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1286268 () Bool)

(declare-fun e!734688 () Bool)

(declare-fun e!734690 () Bool)

(assert (=> b!1286268 (= e!734688 (and e!734690 mapRes!52634))))

(declare-fun condMapEmpty!52634 () Bool)

(declare-fun mapDefault!52634 () ValueCell!16127)

