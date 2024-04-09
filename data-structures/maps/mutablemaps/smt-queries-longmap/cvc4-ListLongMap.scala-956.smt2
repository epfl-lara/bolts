; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20848 () Bool)

(assert start!20848)

(declare-fun b_free!5489 () Bool)

(declare-fun b_next!5489 () Bool)

(assert (=> start!20848 (= b_free!5489 (not b_next!5489))))

(declare-fun tp!19508 () Bool)

(declare-fun b_and!12253 () Bool)

(assert (=> start!20848 (= tp!19508 b_and!12253)))

(declare-fun mapNonEmpty!9095 () Bool)

(declare-fun mapRes!9095 () Bool)

(declare-fun tp!19507 () Bool)

(declare-fun e!136206 () Bool)

(assert (=> mapNonEmpty!9095 (= mapRes!9095 (and tp!19507 e!136206))))

(declare-datatypes ((V!6781 0))(
  ( (V!6782 (val!2720 Int)) )
))
(declare-datatypes ((ValueCell!2332 0))(
  ( (ValueCellFull!2332 (v!4686 V!6781)) (EmptyCell!2332) )
))
(declare-fun mapValue!9095 () ValueCell!2332)

(declare-datatypes ((array!9904 0))(
  ( (array!9905 (arr!4702 (Array (_ BitVec 32) ValueCell!2332)) (size!5027 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9904)

(declare-fun mapRest!9095 () (Array (_ BitVec 32) ValueCell!2332))

(declare-fun mapKey!9095 () (_ BitVec 32))

(assert (=> mapNonEmpty!9095 (= (arr!4702 _values!649) (store mapRest!9095 mapKey!9095 mapValue!9095))))

(declare-fun b!208956 () Bool)

(declare-fun e!136207 () Bool)

(declare-fun e!136208 () Bool)

(assert (=> b!208956 (= e!136207 (and e!136208 mapRes!9095))))

(declare-fun condMapEmpty!9095 () Bool)

(declare-fun mapDefault!9095 () ValueCell!2332)

