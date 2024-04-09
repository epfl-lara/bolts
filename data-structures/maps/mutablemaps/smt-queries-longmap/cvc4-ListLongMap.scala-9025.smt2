; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108950 () Bool)

(assert start!108950)

(declare-fun b_free!28427 () Bool)

(declare-fun b_next!28427 () Bool)

(assert (=> start!108950 (= b_free!28427 (not b_next!28427))))

(declare-fun tp!100397 () Bool)

(declare-fun b_and!46521 () Bool)

(assert (=> start!108950 (= tp!100397 b_and!46521)))

(declare-fun bm!63035 () Bool)

(declare-datatypes ((Unit!42474 0))(
  ( (Unit!42475) )
))
(declare-fun call!63039 () Unit!42474)

(declare-fun call!63041 () Unit!42474)

(assert (=> bm!63035 (= call!63039 call!63041)))

(declare-fun b!1286697 () Bool)

(declare-fun res!854722 () Bool)

(declare-fun e!734897 () Bool)

(assert (=> b!1286697 (=> (not res!854722) (not e!734897))))

(declare-datatypes ((V!50525 0))(
  ( (V!50526 (val!17108 Int)) )
))
(declare-fun minValue!1387 () V!50525)

(declare-fun zeroValue!1387 () V!50525)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16135 0))(
  ( (ValueCellFull!16135 (v!19708 V!50525)) (EmptyCell!16135) )
))
(declare-datatypes ((array!85141 0))(
  ( (array!85142 (arr!41068 (Array (_ BitVec 32) ValueCell!16135)) (size!41619 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85141)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85143 0))(
  ( (array!85144 (arr!41069 (Array (_ BitVec 32) (_ BitVec 64))) (size!41620 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85143)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22078 0))(
  ( (tuple2!22079 (_1!11049 (_ BitVec 64)) (_2!11049 V!50525)) )
))
(declare-datatypes ((List!29281 0))(
  ( (Nil!29278) (Cons!29277 (h!30486 tuple2!22078) (t!42850 List!29281)) )
))
(declare-datatypes ((ListLongMap!19747 0))(
  ( (ListLongMap!19748 (toList!9889 List!29281)) )
))
(declare-fun contains!7943 (ListLongMap!19747 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4899 (array!85143 array!85141 (_ BitVec 32) (_ BitVec 32) V!50525 V!50525 (_ BitVec 32) Int) ListLongMap!19747)

(assert (=> b!1286697 (= res!854722 (contains!7943 (getCurrentListMap!4899 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1286698 () Bool)

(declare-fun e!734899 () Bool)

(declare-fun tp_is_empty!34067 () Bool)

(assert (=> b!1286698 (= e!734899 tp_is_empty!34067)))

(declare-fun b!1286699 () Bool)

(declare-fun e!734902 () Bool)

(assert (=> b!1286699 (= e!734902 tp_is_empty!34067)))

(declare-fun bm!63036 () Bool)

(declare-fun call!63038 () ListLongMap!19747)

(declare-fun call!63043 () ListLongMap!19747)

(assert (=> bm!63036 (= call!63038 call!63043)))

(declare-fun b!1286700 () Bool)

(declare-fun res!854725 () Bool)

(assert (=> b!1286700 (=> (not res!854725) (not e!734897))))

(assert (=> b!1286700 (= res!854725 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41620 _keys!1741))))))

(declare-fun b!1286701 () Bool)

(assert (=> b!1286701 (= e!734897 (not true))))

(assert (=> b!1286701 (not (contains!7943 (ListLongMap!19748 Nil!29278) k!1205))))

(declare-fun lt!577440 () Unit!42474)

(declare-fun emptyContainsNothing!11 ((_ BitVec 64)) Unit!42474)

(assert (=> b!1286701 (= lt!577440 (emptyContainsNothing!11 k!1205))))

(declare-fun lt!577448 () Unit!42474)

(declare-fun e!734895 () Unit!42474)

(assert (=> b!1286701 (= lt!577448 e!734895)))

(declare-fun c!124180 () Bool)

(declare-fun lt!577447 () Bool)

(assert (=> b!1286701 (= c!124180 (and (not lt!577447) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1286701 (= lt!577447 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1286702 () Bool)

(declare-fun e!734898 () Bool)

(declare-fun mapRes!52658 () Bool)

(assert (=> b!1286702 (= e!734898 (and e!734899 mapRes!52658))))

(declare-fun condMapEmpty!52658 () Bool)

(declare-fun mapDefault!52658 () ValueCell!16135)

