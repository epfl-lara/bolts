; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71132 () Bool)

(assert start!71132)

(declare-fun b_free!13295 () Bool)

(declare-fun b_next!13295 () Bool)

(assert (=> start!71132 (= b_free!13295 (not b_next!13295))))

(declare-fun tp!46641 () Bool)

(declare-fun b_and!22227 () Bool)

(assert (=> start!71132 (= tp!46641 b_and!22227)))

(declare-datatypes ((V!25007 0))(
  ( (V!25008 (val!7550 Int)) )
))
(declare-datatypes ((tuple2!10002 0))(
  ( (tuple2!10003 (_1!5011 (_ BitVec 64)) (_2!5011 V!25007)) )
))
(declare-datatypes ((List!15844 0))(
  ( (Nil!15841) (Cons!15840 (h!16969 tuple2!10002) (t!22197 List!15844)) )
))
(declare-datatypes ((ListLongMap!8839 0))(
  ( (ListLongMap!8840 (toList!4435 List!15844)) )
))
(declare-fun lt!373249 () ListLongMap!8839)

(declare-fun b!825737 () Bool)

(declare-fun lt!373247 () ListLongMap!8839)

(declare-fun lt!373250 () tuple2!10002)

(declare-fun e!459745 () Bool)

(declare-fun lt!373244 () tuple2!10002)

(declare-fun +!1896 (ListLongMap!8839 tuple2!10002) ListLongMap!8839)

(assert (=> b!825737 (= e!459745 (= lt!373247 (+!1896 (+!1896 lt!373249 lt!373250) lt!373244)))))

(declare-fun b!825738 () Bool)

(declare-fun e!459744 () Bool)

(declare-fun e!459749 () Bool)

(declare-fun mapRes!24130 () Bool)

(assert (=> b!825738 (= e!459744 (and e!459749 mapRes!24130))))

(declare-fun condMapEmpty!24130 () Bool)

(declare-datatypes ((ValueCell!7087 0))(
  ( (ValueCellFull!7087 (v!9979 V!25007)) (EmptyCell!7087) )
))
(declare-datatypes ((array!46152 0))(
  ( (array!46153 (arr!22118 (Array (_ BitVec 32) ValueCell!7087)) (size!22539 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46152)

(declare-fun mapDefault!24130 () ValueCell!7087)

