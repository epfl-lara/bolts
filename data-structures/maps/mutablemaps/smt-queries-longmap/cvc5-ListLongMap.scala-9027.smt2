; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108958 () Bool)

(assert start!108958)

(declare-fun b_free!28435 () Bool)

(declare-fun b_next!28435 () Bool)

(assert (=> start!108958 (= b_free!28435 (not b_next!28435))))

(declare-fun tp!100421 () Bool)

(declare-fun b_and!46529 () Bool)

(assert (=> start!108958 (= tp!100421 b_and!46529)))

(declare-fun b!1286901 () Bool)

(declare-datatypes ((Unit!42485 0))(
  ( (Unit!42486) )
))
(declare-fun e!734991 () Unit!42485)

(declare-fun lt!577572 () Unit!42485)

(assert (=> b!1286901 (= e!734991 lt!577572)))

(declare-datatypes ((V!50537 0))(
  ( (V!50538 (val!17112 Int)) )
))
(declare-datatypes ((tuple2!22086 0))(
  ( (tuple2!22087 (_1!11053 (_ BitVec 64)) (_2!11053 V!50537)) )
))
(declare-datatypes ((List!29288 0))(
  ( (Nil!29285) (Cons!29284 (h!30493 tuple2!22086) (t!42857 List!29288)) )
))
(declare-datatypes ((ListLongMap!19755 0))(
  ( (ListLongMap!19756 (toList!9893 List!29288)) )
))
(declare-fun lt!577574 () ListLongMap!19755)

(declare-fun call!63115 () ListLongMap!19755)

(assert (=> b!1286901 (= lt!577574 call!63115)))

(declare-fun lt!577578 () ListLongMap!19755)

(declare-fun zeroValue!1387 () V!50537)

(declare-fun +!4296 (ListLongMap!19755 tuple2!22086) ListLongMap!19755)

(assert (=> b!1286901 (= lt!577578 (+!4296 lt!577574 (tuple2!22087 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun minValue!1387 () V!50537)

(declare-fun lt!577579 () Unit!42485)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!36 ((_ BitVec 64) (_ BitVec 64) V!50537 ListLongMap!19755) Unit!42485)

(assert (=> b!1286901 (= lt!577579 (lemmaInListMapAfterAddingDiffThenInBefore!36 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!577578))))

(declare-fun contains!7947 (ListLongMap!19755 (_ BitVec 64)) Bool)

(assert (=> b!1286901 (contains!7947 lt!577578 k!1205)))

(declare-fun call!63112 () Unit!42485)

(assert (=> b!1286901 (= lt!577572 call!63112)))

(declare-fun call!63111 () Bool)

(assert (=> b!1286901 call!63111))

(declare-fun b!1286902 () Bool)

(declare-fun e!734992 () Bool)

(declare-fun e!734997 () Bool)

(declare-fun mapRes!52670 () Bool)

(assert (=> b!1286902 (= e!734992 (and e!734997 mapRes!52670))))

(declare-fun condMapEmpty!52670 () Bool)

(declare-datatypes ((ValueCell!16139 0))(
  ( (ValueCellFull!16139 (v!19712 V!50537)) (EmptyCell!16139) )
))
(declare-datatypes ((array!85157 0))(
  ( (array!85158 (arr!41076 (Array (_ BitVec 32) ValueCell!16139)) (size!41627 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85157)

(declare-fun mapDefault!52670 () ValueCell!16139)

