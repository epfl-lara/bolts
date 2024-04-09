; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108932 () Bool)

(assert start!108932)

(declare-fun b_free!28409 () Bool)

(declare-fun b_next!28409 () Bool)

(assert (=> start!108932 (= b_free!28409 (not b_next!28409))))

(declare-fun tp!100344 () Bool)

(declare-fun b_and!46489 () Bool)

(assert (=> start!108932 (= tp!100344 b_and!46489)))

(declare-datatypes ((V!50501 0))(
  ( (V!50502 (val!17099 Int)) )
))
(declare-fun minValue!1387 () V!50501)

(declare-fun zeroValue!1387 () V!50501)

(declare-fun c!124098 () Bool)

(declare-datatypes ((tuple2!22060 0))(
  ( (tuple2!22061 (_1!11040 (_ BitVec 64)) (_2!11040 V!50501)) )
))
(declare-datatypes ((List!29267 0))(
  ( (Nil!29264) (Cons!29263 (h!30472 tuple2!22060) (t!42824 List!29267)) )
))
(declare-datatypes ((ListLongMap!19729 0))(
  ( (ListLongMap!19730 (toList!9880 List!29267)) )
))
(declare-fun lt!577110 () ListLongMap!19729)

(declare-fun bm!62873 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!577106 () ListLongMap!19729)

(declare-datatypes ((Unit!42452 0))(
  ( (Unit!42453) )
))
(declare-fun call!62879 () Unit!42452)

(declare-fun lt!577115 () ListLongMap!19729)

(declare-fun c!124099 () Bool)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!26 ((_ BitVec 64) (_ BitVec 64) V!50501 ListLongMap!19729) Unit!42452)

(assert (=> bm!62873 (= call!62879 (lemmaInListMapAfterAddingDiffThenInBefore!26 k!1205 (ite (or c!124098 c!124099) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124098 c!124099) zeroValue!1387 minValue!1387) (ite c!124098 lt!577110 (ite c!124099 lt!577115 lt!577106))))))

(declare-fun b!1286205 () Bool)

(declare-fun call!62881 () Bool)

(assert (=> b!1286205 call!62881))

(declare-fun lt!577105 () Unit!42452)

(declare-fun call!62877 () Unit!42452)

(assert (=> b!1286205 (= lt!577105 call!62877)))

(declare-fun call!62876 () ListLongMap!19729)

(assert (=> b!1286205 (= lt!577115 call!62876)))

(declare-fun e!734663 () Unit!42452)

(assert (=> b!1286205 (= e!734663 lt!577105)))

(declare-fun bm!62874 () Bool)

(declare-fun call!62878 () Bool)

(declare-fun contains!7934 (ListLongMap!19729 (_ BitVec 64)) Bool)

(assert (=> bm!62874 (= call!62878 (contains!7934 (ite c!124098 lt!577110 (ite c!124099 lt!577115 lt!577106)) k!1205))))

(declare-fun b!1286207 () Bool)

(declare-fun c!124097 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun lt!577108 () Bool)

(assert (=> b!1286207 (= c!124097 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!577108))))

(declare-fun e!734664 () Unit!42452)

(assert (=> b!1286207 (= e!734663 e!734664)))

(declare-fun b!1286208 () Bool)

(declare-fun e!734666 () Bool)

(declare-fun e!734668 () Bool)

(declare-fun mapRes!52631 () Bool)

(assert (=> b!1286208 (= e!734666 (and e!734668 mapRes!52631))))

(declare-fun condMapEmpty!52631 () Bool)

(declare-datatypes ((ValueCell!16126 0))(
  ( (ValueCellFull!16126 (v!19699 V!50501)) (EmptyCell!16126) )
))
(declare-datatypes ((array!85107 0))(
  ( (array!85108 (arr!41051 (Array (_ BitVec 32) ValueCell!16126)) (size!41602 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85107)

(declare-fun mapDefault!52631 () ValueCell!16126)

