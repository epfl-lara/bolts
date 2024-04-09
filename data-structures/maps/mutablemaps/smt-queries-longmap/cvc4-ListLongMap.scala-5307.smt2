; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71090 () Bool)

(assert start!71090)

(declare-fun b_free!13253 () Bool)

(declare-fun b_next!13253 () Bool)

(assert (=> start!71090 (= b_free!13253 (not b_next!13253))))

(declare-fun tp!46515 () Bool)

(declare-fun b_and!22185 () Bool)

(assert (=> start!71090 (= tp!46515 b_and!22185)))

(declare-fun b!825099 () Bool)

(declare-fun e!459237 () Bool)

(declare-fun tp_is_empty!14963 () Bool)

(assert (=> b!825099 (= e!459237 tp_is_empty!14963)))

(declare-fun mapNonEmpty!24067 () Bool)

(declare-fun mapRes!24067 () Bool)

(declare-fun tp!46516 () Bool)

(declare-fun e!459239 () Bool)

(assert (=> mapNonEmpty!24067 (= mapRes!24067 (and tp!46516 e!459239))))

(declare-datatypes ((V!24951 0))(
  ( (V!24952 (val!7529 Int)) )
))
(declare-datatypes ((ValueCell!7066 0))(
  ( (ValueCellFull!7066 (v!9958 V!24951)) (EmptyCell!7066) )
))
(declare-datatypes ((array!46074 0))(
  ( (array!46075 (arr!22079 (Array (_ BitVec 32) ValueCell!7066)) (size!22500 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46074)

(declare-fun mapRest!24067 () (Array (_ BitVec 32) ValueCell!7066))

(declare-fun mapKey!24067 () (_ BitVec 32))

(declare-fun mapValue!24067 () ValueCell!7066)

(assert (=> mapNonEmpty!24067 (= (arr!22079 _values!788) (store mapRest!24067 mapKey!24067 mapValue!24067))))

(declare-fun b!825100 () Bool)

(declare-fun e!459234 () Bool)

(assert (=> b!825100 (= e!459234 (and e!459237 mapRes!24067))))

(declare-fun condMapEmpty!24067 () Bool)

(declare-fun mapDefault!24067 () ValueCell!7066)

