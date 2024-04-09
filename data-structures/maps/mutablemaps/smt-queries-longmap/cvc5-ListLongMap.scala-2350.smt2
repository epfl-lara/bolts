; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37570 () Bool)

(assert start!37570)

(declare-fun b_free!8689 () Bool)

(declare-fun b_next!8689 () Bool)

(assert (=> start!37570 (= b_free!8689 (not b_next!8689))))

(declare-fun tp!30783 () Bool)

(declare-fun b_and!15949 () Bool)

(assert (=> start!37570 (= tp!30783 b_and!15949)))

(declare-fun b!383551 () Bool)

(declare-fun res!218506 () Bool)

(declare-fun e!232953 () Bool)

(assert (=> b!383551 (=> (not res!218506) (not e!232953))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!383551 (= res!218506 (validKeyInArray!0 k!778))))

(declare-fun b!383552 () Bool)

(declare-fun res!218515 () Bool)

(assert (=> b!383552 (=> (not res!218515) (not e!232953))))

(declare-datatypes ((array!22565 0))(
  ( (array!22566 (arr!10748 (Array (_ BitVec 32) (_ BitVec 64))) (size!11100 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22565)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22565 (_ BitVec 32)) Bool)

(assert (=> b!383552 (= res!218515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383553 () Bool)

(declare-fun e!232949 () Bool)

(declare-fun tp_is_empty!9337 () Bool)

(assert (=> b!383553 (= e!232949 tp_is_empty!9337)))

(declare-fun b!383554 () Bool)

(declare-fun res!218516 () Bool)

(declare-fun e!232951 () Bool)

(assert (=> b!383554 (=> (not res!218516) (not e!232951))))

(declare-fun lt!180322 () array!22565)

(declare-datatypes ((List!6166 0))(
  ( (Nil!6163) (Cons!6162 (h!7018 (_ BitVec 64)) (t!11324 List!6166)) )
))
(declare-fun arrayNoDuplicates!0 (array!22565 (_ BitVec 32) List!6166) Bool)

(assert (=> b!383554 (= res!218516 (arrayNoDuplicates!0 lt!180322 #b00000000000000000000000000000000 Nil!6163))))

(declare-fun b!383555 () Bool)

(declare-fun res!218509 () Bool)

(assert (=> b!383555 (=> (not res!218509) (not e!232953))))

(declare-fun arrayContainsKey!0 (array!22565 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383555 (= res!218509 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!383556 () Bool)

(declare-fun res!218513 () Bool)

(assert (=> b!383556 (=> (not res!218513) (not e!232953))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13555 0))(
  ( (V!13556 (val!4713 Int)) )
))
(declare-datatypes ((ValueCell!4325 0))(
  ( (ValueCellFull!4325 (v!6906 V!13555)) (EmptyCell!4325) )
))
(declare-datatypes ((array!22567 0))(
  ( (array!22568 (arr!10749 (Array (_ BitVec 32) ValueCell!4325)) (size!11101 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22567)

(assert (=> b!383556 (= res!218513 (and (= (size!11101 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11100 _keys!658) (size!11101 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383558 () Bool)

(declare-fun res!218508 () Bool)

(assert (=> b!383558 (=> (not res!218508) (not e!232953))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!383558 (= res!218508 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11100 _keys!658))))))

(declare-fun b!383559 () Bool)

(assert (=> b!383559 (= e!232953 e!232951)))

(declare-fun res!218511 () Bool)

(assert (=> b!383559 (=> (not res!218511) (not e!232951))))

(assert (=> b!383559 (= res!218511 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180322 mask!970))))

(assert (=> b!383559 (= lt!180322 (array!22566 (store (arr!10748 _keys!658) i!548 k!778) (size!11100 _keys!658)))))

(declare-fun b!383560 () Bool)

(declare-fun e!232950 () Bool)

(declare-fun e!232952 () Bool)

(declare-fun mapRes!15570 () Bool)

(assert (=> b!383560 (= e!232950 (and e!232952 mapRes!15570))))

(declare-fun condMapEmpty!15570 () Bool)

(declare-fun mapDefault!15570 () ValueCell!4325)

