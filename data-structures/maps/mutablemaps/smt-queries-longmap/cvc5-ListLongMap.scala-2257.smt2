; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37012 () Bool)

(assert start!37012)

(declare-fun b_free!8131 () Bool)

(declare-fun b_next!8131 () Bool)

(assert (=> start!37012 (= b_free!8131 (not b_next!8131))))

(declare-fun tp!29108 () Bool)

(declare-fun b_and!15391 () Bool)

(assert (=> start!37012 (= tp!29108 b_and!15391)))

(declare-fun b!371399 () Bool)

(declare-fun res!208867 () Bool)

(declare-fun e!226684 () Bool)

(assert (=> b!371399 (=> (not res!208867) (not e!226684))))

(declare-datatypes ((array!21469 0))(
  ( (array!21470 (arr!10200 (Array (_ BitVec 32) (_ BitVec 64))) (size!10552 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21469)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21469 (_ BitVec 32)) Bool)

(assert (=> b!371399 (= res!208867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!371400 () Bool)

(declare-fun res!208865 () Bool)

(assert (=> b!371400 (=> (not res!208865) (not e!226684))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21469 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371400 (= res!208865 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!371401 () Bool)

(declare-fun res!208868 () Bool)

(assert (=> b!371401 (=> (not res!208868) (not e!226684))))

(declare-datatypes ((V!12811 0))(
  ( (V!12812 (val!4434 Int)) )
))
(declare-datatypes ((ValueCell!4046 0))(
  ( (ValueCellFull!4046 (v!6627 V!12811)) (EmptyCell!4046) )
))
(declare-datatypes ((array!21471 0))(
  ( (array!21472 (arr!10201 (Array (_ BitVec 32) ValueCell!4046)) (size!10553 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21471)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!371401 (= res!208868 (and (= (size!10553 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10552 _keys!658) (size!10553 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!208870 () Bool)

(assert (=> start!37012 (=> (not res!208870) (not e!226684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37012 (= res!208870 (validMask!0 mask!970))))

(assert (=> start!37012 e!226684))

(declare-fun e!226685 () Bool)

(declare-fun array_inv!7532 (array!21471) Bool)

(assert (=> start!37012 (and (array_inv!7532 _values!506) e!226685)))

(assert (=> start!37012 tp!29108))

(assert (=> start!37012 true))

(declare-fun tp_is_empty!8779 () Bool)

(assert (=> start!37012 tp_is_empty!8779))

(declare-fun array_inv!7533 (array!21469) Bool)

(assert (=> start!37012 (array_inv!7533 _keys!658)))

(declare-fun mapNonEmpty!14733 () Bool)

(declare-fun mapRes!14733 () Bool)

(declare-fun tp!29109 () Bool)

(declare-fun e!226681 () Bool)

(assert (=> mapNonEmpty!14733 (= mapRes!14733 (and tp!29109 e!226681))))

(declare-fun mapRest!14733 () (Array (_ BitVec 32) ValueCell!4046))

(declare-fun mapValue!14733 () ValueCell!4046)

(declare-fun mapKey!14733 () (_ BitVec 32))

(assert (=> mapNonEmpty!14733 (= (arr!10201 _values!506) (store mapRest!14733 mapKey!14733 mapValue!14733))))

(declare-fun b!371402 () Bool)

(declare-fun e!226683 () Bool)

(assert (=> b!371402 (= e!226685 (and e!226683 mapRes!14733))))

(declare-fun condMapEmpty!14733 () Bool)

(declare-fun mapDefault!14733 () ValueCell!4046)

