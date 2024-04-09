; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37622 () Bool)

(assert start!37622)

(declare-fun b_free!8741 () Bool)

(declare-fun b_next!8741 () Bool)

(assert (=> start!37622 (= b_free!8741 (not b_next!8741))))

(declare-fun tp!30938 () Bool)

(declare-fun b_and!16001 () Bool)

(assert (=> start!37622 (= tp!30938 b_and!16001)))

(declare-fun b!384652 () Bool)

(declare-fun res!219379 () Bool)

(declare-fun e!233502 () Bool)

(assert (=> b!384652 (=> (not res!219379) (not e!233502))))

(declare-datatypes ((array!22663 0))(
  ( (array!22664 (arr!10797 (Array (_ BitVec 32) (_ BitVec 64))) (size!11149 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22663)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22663 (_ BitVec 32)) Bool)

(assert (=> b!384652 (= res!219379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!384653 () Bool)

(declare-fun e!233506 () Bool)

(declare-fun tp_is_empty!9389 () Bool)

(assert (=> b!384653 (= e!233506 tp_is_empty!9389)))

(declare-fun b!384654 () Bool)

(declare-fun e!233505 () Bool)

(assert (=> b!384654 (= e!233502 e!233505)))

(declare-fun res!219373 () Bool)

(assert (=> b!384654 (=> (not res!219373) (not e!233505))))

(declare-fun lt!181169 () array!22663)

(assert (=> b!384654 (= res!219373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181169 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!384654 (= lt!181169 (array!22664 (store (arr!10797 _keys!658) i!548 k!778) (size!11149 _keys!658)))))

(declare-fun b!384655 () Bool)

(declare-fun res!219374 () Bool)

(assert (=> b!384655 (=> (not res!219374) (not e!233502))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13623 0))(
  ( (V!13624 (val!4739 Int)) )
))
(declare-datatypes ((ValueCell!4351 0))(
  ( (ValueCellFull!4351 (v!6932 V!13623)) (EmptyCell!4351) )
))
(declare-datatypes ((array!22665 0))(
  ( (array!22666 (arr!10798 (Array (_ BitVec 32) ValueCell!4351)) (size!11150 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22665)

(assert (=> b!384655 (= res!219374 (and (= (size!11150 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11149 _keys!658) (size!11150 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!384656 () Bool)

(declare-fun res!219380 () Bool)

(assert (=> b!384656 (=> (not res!219380) (not e!233502))))

(assert (=> b!384656 (= res!219380 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11149 _keys!658))))))

(declare-fun b!384657 () Bool)

(declare-fun res!219381 () Bool)

(assert (=> b!384657 (=> (not res!219381) (not e!233502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384657 (= res!219381 (validKeyInArray!0 k!778))))

(declare-fun mapNonEmpty!15648 () Bool)

(declare-fun mapRes!15648 () Bool)

(declare-fun tp!30939 () Bool)

(assert (=> mapNonEmpty!15648 (= mapRes!15648 (and tp!30939 e!233506))))

(declare-fun mapValue!15648 () ValueCell!4351)

(declare-fun mapKey!15648 () (_ BitVec 32))

(declare-fun mapRest!15648 () (Array (_ BitVec 32) ValueCell!4351))

(assert (=> mapNonEmpty!15648 (= (arr!10798 _values!506) (store mapRest!15648 mapKey!15648 mapValue!15648))))

(declare-fun b!384658 () Bool)

(declare-fun e!233507 () Bool)

(declare-fun e!233508 () Bool)

(assert (=> b!384658 (= e!233507 (and e!233508 mapRes!15648))))

(declare-fun condMapEmpty!15648 () Bool)

(declare-fun mapDefault!15648 () ValueCell!4351)

