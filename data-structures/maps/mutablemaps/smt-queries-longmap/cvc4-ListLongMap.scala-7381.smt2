; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94066 () Bool)

(assert start!94066)

(declare-fun b_free!21467 () Bool)

(declare-fun b_next!21467 () Bool)

(assert (=> start!94066 (= b_free!21467 (not b_next!21467))))

(declare-fun tp!75830 () Bool)

(declare-fun b_and!34217 () Bool)

(assert (=> start!94066 (= tp!75830 b_and!34217)))

(declare-fun b!1063488 () Bool)

(declare-fun e!606034 () Bool)

(declare-datatypes ((array!67526 0))(
  ( (array!67527 (arr!32465 (Array (_ BitVec 32) (_ BitVec 64))) (size!33002 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67526)

(assert (=> b!1063488 (= e!606034 (bvsle #b00000000000000000000000000000000 (size!33002 _keys!1163)))))

(declare-datatypes ((V!38837 0))(
  ( (V!38838 (val!12689 Int)) )
))
(declare-datatypes ((tuple2!16156 0))(
  ( (tuple2!16157 (_1!8088 (_ BitVec 64)) (_2!8088 V!38837)) )
))
(declare-datatypes ((List!22761 0))(
  ( (Nil!22758) (Cons!22757 (h!23966 tuple2!16156) (t!32081 List!22761)) )
))
(declare-datatypes ((ListLongMap!14137 0))(
  ( (ListLongMap!14138 (toList!7084 List!22761)) )
))
(declare-fun lt!468725 () ListLongMap!14137)

(declare-fun -!591 (ListLongMap!14137 (_ BitVec 64)) ListLongMap!14137)

(assert (=> b!1063488 (= (-!591 lt!468725 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468725)))

(declare-datatypes ((Unit!34833 0))(
  ( (Unit!34834) )
))
(declare-fun lt!468723 () Unit!34833)

(declare-fun removeNotPresentStillSame!37 (ListLongMap!14137 (_ BitVec 64)) Unit!34833)

(assert (=> b!1063488 (= lt!468723 (removeNotPresentStillSame!37 lt!468725 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1063489 () Bool)

(declare-fun e!606038 () Bool)

(declare-fun tp_is_empty!25277 () Bool)

(assert (=> b!1063489 (= e!606038 tp_is_empty!25277)))

(declare-fun b!1063490 () Bool)

(declare-fun e!606037 () Bool)

(declare-fun mapRes!39592 () Bool)

(assert (=> b!1063490 (= e!606037 (and e!606038 mapRes!39592))))

(declare-fun condMapEmpty!39592 () Bool)

(declare-datatypes ((ValueCell!11935 0))(
  ( (ValueCellFull!11935 (v!15301 V!38837)) (EmptyCell!11935) )
))
(declare-datatypes ((array!67528 0))(
  ( (array!67529 (arr!32466 (Array (_ BitVec 32) ValueCell!11935)) (size!33003 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67528)

(declare-fun mapDefault!39592 () ValueCell!11935)

