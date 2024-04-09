; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20830 () Bool)

(assert start!20830)

(declare-fun b_free!5471 () Bool)

(declare-fun b_next!5471 () Bool)

(assert (=> start!20830 (= b_free!5471 (not b_next!5471))))

(declare-fun tp!19454 () Bool)

(declare-fun b_and!12235 () Bool)

(assert (=> start!20830 (= tp!19454 b_and!12235)))

(declare-fun b!208686 () Bool)

(declare-fun res!101596 () Bool)

(declare-fun e!136075 () Bool)

(assert (=> b!208686 (=> (not res!101596) (not e!136075))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9868 0))(
  ( (array!9869 (arr!4684 (Array (_ BitVec 32) (_ BitVec 64))) (size!5009 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9868)

(assert (=> b!208686 (= res!101596 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5009 _keys!825))))))

(declare-fun mapNonEmpty!9068 () Bool)

(declare-fun mapRes!9068 () Bool)

(declare-fun tp!19453 () Bool)

(declare-fun e!136071 () Bool)

(assert (=> mapNonEmpty!9068 (= mapRes!9068 (and tp!19453 e!136071))))

(declare-datatypes ((V!6757 0))(
  ( (V!6758 (val!2711 Int)) )
))
(declare-datatypes ((ValueCell!2323 0))(
  ( (ValueCellFull!2323 (v!4677 V!6757)) (EmptyCell!2323) )
))
(declare-fun mapValue!9068 () ValueCell!2323)

(declare-fun mapRest!9068 () (Array (_ BitVec 32) ValueCell!2323))

(declare-datatypes ((array!9870 0))(
  ( (array!9871 (arr!4685 (Array (_ BitVec 32) ValueCell!2323)) (size!5010 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9870)

(declare-fun mapKey!9068 () (_ BitVec 32))

(assert (=> mapNonEmpty!9068 (= (arr!4685 _values!649) (store mapRest!9068 mapKey!9068 mapValue!9068))))

(declare-fun b!208687 () Bool)

(declare-fun tp_is_empty!5333 () Bool)

(assert (=> b!208687 (= e!136071 tp_is_empty!5333)))

(declare-fun b!208688 () Bool)

(declare-fun e!136072 () Bool)

(declare-fun e!136074 () Bool)

(assert (=> b!208688 (= e!136072 (and e!136074 mapRes!9068))))

(declare-fun condMapEmpty!9068 () Bool)

(declare-fun mapDefault!9068 () ValueCell!2323)

