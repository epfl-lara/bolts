; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39706 () Bool)

(assert start!39706)

(declare-fun b_free!9965 () Bool)

(declare-fun b_next!9965 () Bool)

(assert (=> start!39706 (= b_free!9965 (not b_next!9965))))

(declare-fun tp!35423 () Bool)

(declare-fun b_and!17639 () Bool)

(assert (=> start!39706 (= tp!35423 b_and!17639)))

(declare-fun res!249972 () Bool)

(declare-fun e!252955 () Bool)

(assert (=> start!39706 (=> (not res!249972) (not e!252955))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26059 0))(
  ( (array!26060 (arr!12476 (Array (_ BitVec 32) (_ BitVec 64))) (size!12828 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26059)

(assert (=> start!39706 (= res!249972 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12828 _keys!709))))))

(assert (=> start!39706 e!252955))

(declare-fun tp_is_empty!11117 () Bool)

(assert (=> start!39706 tp_is_empty!11117))

(assert (=> start!39706 tp!35423))

(assert (=> start!39706 true))

(declare-datatypes ((V!15927 0))(
  ( (V!15928 (val!5603 Int)) )
))
(declare-datatypes ((ValueCell!5215 0))(
  ( (ValueCellFull!5215 (v!7846 V!15927)) (EmptyCell!5215) )
))
(declare-datatypes ((array!26061 0))(
  ( (array!26062 (arr!12477 (Array (_ BitVec 32) ValueCell!5215)) (size!12829 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26061)

(declare-fun e!252958 () Bool)

(declare-fun array_inv!9088 (array!26061) Bool)

(assert (=> start!39706 (and (array_inv!9088 _values!549) e!252958)))

(declare-fun array_inv!9089 (array!26059) Bool)

(assert (=> start!39706 (array_inv!9089 _keys!709)))

(declare-fun b!426380 () Bool)

(declare-fun e!252952 () Bool)

(declare-fun mapRes!18297 () Bool)

(assert (=> b!426380 (= e!252958 (and e!252952 mapRes!18297))))

(declare-fun condMapEmpty!18297 () Bool)

(declare-fun mapDefault!18297 () ValueCell!5215)

