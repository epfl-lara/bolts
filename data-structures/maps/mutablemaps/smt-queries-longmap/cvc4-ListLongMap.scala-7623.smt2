; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96098 () Bool)

(assert start!96098)

(declare-fun b_free!22715 () Bool)

(declare-fun b_next!22715 () Bool)

(assert (=> start!96098 (= b_free!22715 (not b_next!22715))))

(declare-fun tp!79994 () Bool)

(declare-fun b_and!36123 () Bool)

(assert (=> start!96098 (= tp!79994 b_and!36123)))

(declare-fun b!1089420 () Bool)

(declare-fun e!622285 () Bool)

(assert (=> b!1089420 (= e!622285 true)))

(declare-datatypes ((V!40749 0))(
  ( (V!40750 (val!13415 Int)) )
))
(declare-datatypes ((tuple2!17118 0))(
  ( (tuple2!17119 (_1!8569 (_ BitVec 64)) (_2!8569 V!40749)) )
))
(declare-datatypes ((List!23757 0))(
  ( (Nil!23754) (Cons!23753 (h!24962 tuple2!17118) (t!33537 List!23757)) )
))
(declare-datatypes ((ListLongMap!15099 0))(
  ( (ListLongMap!15100 (toList!7565 List!23757)) )
))
(declare-fun lt!485690 () ListLongMap!15099)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!485692 () ListLongMap!15099)

(declare-fun -!843 (ListLongMap!15099 (_ BitVec 64)) ListLongMap!15099)

(assert (=> b!1089420 (= (-!843 lt!485690 k!904) lt!485692)))

(declare-datatypes ((Unit!35801 0))(
  ( (Unit!35802) )
))
(declare-fun lt!485698 () Unit!35801)

(declare-fun zeroValue!831 () V!40749)

(declare-fun lt!485699 () ListLongMap!15099)

(declare-fun addRemoveCommutativeForDiffKeys!76 (ListLongMap!15099 (_ BitVec 64) V!40749 (_ BitVec 64)) Unit!35801)

(assert (=> b!1089420 (= lt!485698 (addRemoveCommutativeForDiffKeys!76 lt!485699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1089421 () Bool)

(declare-fun e!622281 () Bool)

(declare-fun e!622288 () Bool)

(declare-fun mapRes!41830 () Bool)

(assert (=> b!1089421 (= e!622281 (and e!622288 mapRes!41830))))

(declare-fun condMapEmpty!41830 () Bool)

(declare-datatypes ((ValueCell!12649 0))(
  ( (ValueCellFull!12649 (v!16037 V!40749)) (EmptyCell!12649) )
))
(declare-datatypes ((array!70324 0))(
  ( (array!70325 (arr!33832 (Array (_ BitVec 32) ValueCell!12649)) (size!34369 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70324)

(declare-fun mapDefault!41830 () ValueCell!12649)

