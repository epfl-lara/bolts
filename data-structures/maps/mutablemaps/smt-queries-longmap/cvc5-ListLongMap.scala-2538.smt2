; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39054 () Bool)

(assert start!39054)

(declare-fun b_free!9313 () Bool)

(declare-fun b_next!9313 () Bool)

(assert (=> start!39054 (= b_free!9313 (not b_next!9313))))

(declare-fun tp!33468 () Bool)

(declare-fun b_and!16717 () Bool)

(assert (=> start!39054 (= tp!33468 b_and!16717)))

(declare-fun mapNonEmpty!17319 () Bool)

(declare-fun mapRes!17319 () Bool)

(declare-fun tp!33467 () Bool)

(declare-fun e!245584 () Bool)

(assert (=> mapNonEmpty!17319 (= mapRes!17319 (and tp!33467 e!245584))))

(declare-datatypes ((V!15059 0))(
  ( (V!15060 (val!5277 Int)) )
))
(declare-datatypes ((ValueCell!4889 0))(
  ( (ValueCellFull!4889 (v!7520 V!15059)) (EmptyCell!4889) )
))
(declare-fun mapRest!17319 () (Array (_ BitVec 32) ValueCell!4889))

(declare-datatypes ((array!24783 0))(
  ( (array!24784 (arr!11838 (Array (_ BitVec 32) ValueCell!4889)) (size!12190 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24783)

(declare-fun mapKey!17319 () (_ BitVec 32))

(declare-fun mapValue!17319 () ValueCell!4889)

(assert (=> mapNonEmpty!17319 (= (arr!11838 _values!549) (store mapRest!17319 mapKey!17319 mapValue!17319))))

(declare-fun b!409452 () Bool)

(declare-fun e!245582 () Bool)

(declare-fun tp_is_empty!10465 () Bool)

(assert (=> b!409452 (= e!245582 tp_is_empty!10465)))

(declare-fun b!409453 () Bool)

(declare-fun res!237222 () Bool)

(declare-fun e!245583 () Bool)

(assert (=> b!409453 (=> (not res!237222) (not e!245583))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409453 (= res!237222 (validKeyInArray!0 k!794))))

(declare-fun res!237219 () Bool)

(assert (=> start!39054 (=> (not res!237219) (not e!245583))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24785 0))(
  ( (array!24786 (arr!11839 (Array (_ BitVec 32) (_ BitVec 64))) (size!12191 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24785)

(assert (=> start!39054 (= res!237219 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12191 _keys!709))))))

(assert (=> start!39054 e!245583))

(assert (=> start!39054 tp_is_empty!10465))

(assert (=> start!39054 tp!33468))

(assert (=> start!39054 true))

(declare-fun e!245585 () Bool)

(declare-fun array_inv!8644 (array!24783) Bool)

(assert (=> start!39054 (and (array_inv!8644 _values!549) e!245585)))

(declare-fun array_inv!8645 (array!24785) Bool)

(assert (=> start!39054 (array_inv!8645 _keys!709)))

(declare-fun b!409454 () Bool)

(assert (=> b!409454 (= e!245585 (and e!245582 mapRes!17319))))

(declare-fun condMapEmpty!17319 () Bool)

(declare-fun mapDefault!17319 () ValueCell!4889)

