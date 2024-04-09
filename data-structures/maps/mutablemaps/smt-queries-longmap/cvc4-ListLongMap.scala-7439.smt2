; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94546 () Bool)

(assert start!94546)

(declare-fun b_free!21815 () Bool)

(declare-fun b_next!21815 () Bool)

(assert (=> start!94546 (= b_free!21815 (not b_next!21815))))

(declare-fun tp!76896 () Bool)

(declare-fun b_and!34635 () Bool)

(assert (=> start!94546 (= tp!76896 b_and!34635)))

(declare-fun b!1068610 () Bool)

(declare-fun e!609755 () Bool)

(assert (=> b!1068610 (= e!609755 true)))

(declare-datatypes ((V!39301 0))(
  ( (V!39302 (val!12863 Int)) )
))
(declare-datatypes ((tuple2!16412 0))(
  ( (tuple2!16413 (_1!8216 (_ BitVec 64)) (_2!8216 V!39301)) )
))
(declare-datatypes ((List!23003 0))(
  ( (Nil!23000) (Cons!22999 (h!24208 tuple2!16412) (t!32337 List!23003)) )
))
(declare-datatypes ((ListLongMap!14393 0))(
  ( (ListLongMap!14394 (toList!7212 List!23003)) )
))
(declare-fun lt!472127 () ListLongMap!14393)

(declare-fun -!649 (ListLongMap!14393 (_ BitVec 64)) ListLongMap!14393)

(assert (=> b!1068610 (= (-!649 lt!472127 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472127)))

(declare-datatypes ((Unit!35090 0))(
  ( (Unit!35091) )
))
(declare-fun lt!472124 () Unit!35090)

(declare-fun removeNotPresentStillSame!58 (ListLongMap!14393 (_ BitVec 64)) Unit!35090)

(assert (=> b!1068610 (= lt!472124 (removeNotPresentStillSame!58 lt!472127 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068611 () Bool)

(declare-fun e!609756 () Bool)

(declare-fun e!609754 () Bool)

(declare-fun mapRes!40135 () Bool)

(assert (=> b!1068611 (= e!609756 (and e!609754 mapRes!40135))))

(declare-fun condMapEmpty!40135 () Bool)

(declare-datatypes ((ValueCell!12109 0))(
  ( (ValueCellFull!12109 (v!15479 V!39301)) (EmptyCell!12109) )
))
(declare-datatypes ((array!68202 0))(
  ( (array!68203 (arr!32796 (Array (_ BitVec 32) ValueCell!12109)) (size!33333 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68202)

(declare-fun mapDefault!40135 () ValueCell!12109)

