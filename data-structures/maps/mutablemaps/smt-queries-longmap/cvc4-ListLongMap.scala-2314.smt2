; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37358 () Bool)

(assert start!37358)

(declare-fun b_free!8477 () Bool)

(declare-fun b_next!8477 () Bool)

(assert (=> start!37358 (= b_free!8477 (not b_next!8477))))

(declare-fun tp!30147 () Bool)

(declare-fun b_and!15737 () Bool)

(assert (=> start!37358 (= tp!30147 b_and!15737)))

(declare-fun mapNonEmpty!15252 () Bool)

(declare-fun mapRes!15252 () Bool)

(declare-fun tp!30146 () Bool)

(declare-fun e!230615 () Bool)

(assert (=> mapNonEmpty!15252 (= mapRes!15252 (and tp!30146 e!230615))))

(declare-datatypes ((V!13271 0))(
  ( (V!13272 (val!4607 Int)) )
))
(declare-datatypes ((ValueCell!4219 0))(
  ( (ValueCellFull!4219 (v!6800 V!13271)) (EmptyCell!4219) )
))
(declare-datatypes ((array!22147 0))(
  ( (array!22148 (arr!10539 (Array (_ BitVec 32) ValueCell!4219)) (size!10891 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22147)

(declare-fun mapKey!15252 () (_ BitVec 32))

(declare-fun mapRest!15252 () (Array (_ BitVec 32) ValueCell!4219))

(declare-fun mapValue!15252 () ValueCell!4219)

(assert (=> mapNonEmpty!15252 (= (arr!10539 _values!506) (store mapRest!15252 mapKey!15252 mapValue!15252))))

(declare-fun b!378990 () Bool)

(declare-fun res!214903 () Bool)

(declare-fun e!230614 () Bool)

(assert (=> b!378990 (=> (not res!214903) (not e!230614))))

(declare-datatypes ((array!22149 0))(
  ( (array!22150 (arr!10540 (Array (_ BitVec 32) (_ BitVec 64))) (size!10892 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22149)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22149 (_ BitVec 32)) Bool)

(assert (=> b!378990 (= res!214903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!214901 () Bool)

(assert (=> start!37358 (=> (not res!214901) (not e!230614))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37358 (= res!214901 (validMask!0 mask!970))))

(assert (=> start!37358 e!230614))

(declare-fun e!230612 () Bool)

(declare-fun array_inv!7754 (array!22147) Bool)

(assert (=> start!37358 (and (array_inv!7754 _values!506) e!230612)))

(assert (=> start!37358 tp!30147))

(assert (=> start!37358 true))

(declare-fun tp_is_empty!9125 () Bool)

(assert (=> start!37358 tp_is_empty!9125))

(declare-fun array_inv!7755 (array!22149) Bool)

(assert (=> start!37358 (array_inv!7755 _keys!658)))

(declare-fun b!378991 () Bool)

(declare-fun res!214899 () Bool)

(declare-fun e!230619 () Bool)

(assert (=> b!378991 (=> (not res!214899) (not e!230619))))

(declare-fun lt!176928 () array!22149)

(declare-datatypes ((List!6002 0))(
  ( (Nil!5999) (Cons!5998 (h!6854 (_ BitVec 64)) (t!11160 List!6002)) )
))
(declare-fun arrayNoDuplicates!0 (array!22149 (_ BitVec 32) List!6002) Bool)

(assert (=> b!378991 (= res!214899 (arrayNoDuplicates!0 lt!176928 #b00000000000000000000000000000000 Nil!5999))))

(declare-fun b!378992 () Bool)

(declare-fun res!214900 () Bool)

(assert (=> b!378992 (=> (not res!214900) (not e!230614))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!378992 (= res!214900 (or (= (select (arr!10540 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10540 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!378993 () Bool)

(declare-fun e!230618 () Bool)

(assert (=> b!378993 (= e!230612 (and e!230618 mapRes!15252))))

(declare-fun condMapEmpty!15252 () Bool)

(declare-fun mapDefault!15252 () ValueCell!4219)

