; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96026 () Bool)

(assert start!96026)

(declare-fun b_free!22643 () Bool)

(declare-fun b_next!22643 () Bool)

(assert (=> start!96026 (= b_free!22643 (not b_next!22643))))

(declare-fun tp!79778 () Bool)

(declare-fun b_and!35979 () Bool)

(assert (=> start!96026 (= tp!79778 b_and!35979)))

(declare-fun mapIsEmpty!41722 () Bool)

(declare-fun mapRes!41722 () Bool)

(assert (=> mapIsEmpty!41722 mapRes!41722))

(declare-fun b!1087836 () Bool)

(declare-fun res!725593 () Bool)

(declare-fun e!621423 () Bool)

(assert (=> b!1087836 (=> (not res!725593) (not e!621423))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1087836 (= res!725593 (validKeyInArray!0 k!904))))

(declare-fun b!1087837 () Bool)

(declare-fun res!725594 () Bool)

(declare-fun e!621421 () Bool)

(assert (=> b!1087837 (=> (not res!725594) (not e!621421))))

(declare-datatypes ((array!70182 0))(
  ( (array!70183 (arr!33761 (Array (_ BitVec 32) (_ BitVec 64))) (size!34298 (_ BitVec 32))) )
))
(declare-fun lt!484291 () array!70182)

(declare-datatypes ((List!23691 0))(
  ( (Nil!23688) (Cons!23687 (h!24896 (_ BitVec 64)) (t!33399 List!23691)) )
))
(declare-fun arrayNoDuplicates!0 (array!70182 (_ BitVec 32) List!23691) Bool)

(assert (=> b!1087837 (= res!725594 (arrayNoDuplicates!0 lt!484291 #b00000000000000000000000000000000 Nil!23688))))

(declare-fun b!1087838 () Bool)

(assert (=> b!1087838 (= e!621423 e!621421)))

(declare-fun res!725601 () Bool)

(assert (=> b!1087838 (=> (not res!725601) (not e!621421))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70182 (_ BitVec 32)) Bool)

(assert (=> b!1087838 (= res!725601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484291 mask!1414))))

(declare-fun _keys!1070 () array!70182)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1087838 (= lt!484291 (array!70183 (store (arr!33761 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34298 _keys!1070)))))

(declare-fun b!1087839 () Bool)

(declare-fun res!725598 () Bool)

(assert (=> b!1087839 (=> (not res!725598) (not e!621423))))

(assert (=> b!1087839 (= res!725598 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23688))))

(declare-fun b!1087840 () Bool)

(declare-fun e!621419 () Bool)

(assert (=> b!1087840 (= e!621419 true)))

(declare-datatypes ((V!40653 0))(
  ( (V!40654 (val!13379 Int)) )
))
(declare-datatypes ((tuple2!17050 0))(
  ( (tuple2!17051 (_1!8535 (_ BitVec 64)) (_2!8535 V!40653)) )
))
(declare-datatypes ((List!23692 0))(
  ( (Nil!23689) (Cons!23688 (h!24897 tuple2!17050) (t!33400 List!23692)) )
))
(declare-datatypes ((ListLongMap!15031 0))(
  ( (ListLongMap!15032 (toList!7531 List!23692)) )
))
(declare-fun lt!484290 () ListLongMap!15031)

(declare-fun lt!484284 () ListLongMap!15031)

(declare-fun -!811 (ListLongMap!15031 (_ BitVec 64)) ListLongMap!15031)

(assert (=> b!1087840 (= (-!811 lt!484290 k!904) lt!484284)))

(declare-datatypes ((Unit!35737 0))(
  ( (Unit!35738) )
))
(declare-fun lt!484293 () Unit!35737)

(declare-fun zeroValue!831 () V!40653)

(declare-fun lt!484283 () ListLongMap!15031)

(declare-fun addRemoveCommutativeForDiffKeys!50 (ListLongMap!15031 (_ BitVec 64) V!40653 (_ BitVec 64)) Unit!35737)

(assert (=> b!1087840 (= lt!484293 (addRemoveCommutativeForDiffKeys!50 lt!484283 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1087841 () Bool)

(declare-fun e!621417 () Bool)

(declare-fun e!621422 () Bool)

(assert (=> b!1087841 (= e!621417 (and e!621422 mapRes!41722))))

(declare-fun condMapEmpty!41722 () Bool)

(declare-datatypes ((ValueCell!12613 0))(
  ( (ValueCellFull!12613 (v!16001 V!40653)) (EmptyCell!12613) )
))
(declare-datatypes ((array!70184 0))(
  ( (array!70185 (arr!33762 (Array (_ BitVec 32) ValueCell!12613)) (size!34299 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70184)

(declare-fun mapDefault!41722 () ValueCell!12613)

