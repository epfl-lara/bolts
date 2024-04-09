; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36832 () Bool)

(assert start!36832)

(declare-fun b_free!7951 () Bool)

(declare-fun b_next!7951 () Bool)

(assert (=> start!36832 (= b_free!7951 (not b_next!7951))))

(declare-fun tp!28568 () Bool)

(declare-fun b_and!15211 () Bool)

(assert (=> start!36832 (= tp!28568 b_and!15211)))

(declare-fun b!367889 () Bool)

(declare-fun res!206166 () Bool)

(declare-fun e!225063 () Bool)

(assert (=> b!367889 (=> (not res!206166) (not e!225063))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21123 0))(
  ( (array!21124 (arr!10027 (Array (_ BitVec 32) (_ BitVec 64))) (size!10379 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21123)

(assert (=> b!367889 (= res!206166 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10379 _keys!658))))))

(declare-fun b!367890 () Bool)

(declare-fun e!225061 () Bool)

(declare-fun e!225064 () Bool)

(declare-fun mapRes!14463 () Bool)

(assert (=> b!367890 (= e!225061 (and e!225064 mapRes!14463))))

(declare-fun condMapEmpty!14463 () Bool)

(declare-datatypes ((V!12571 0))(
  ( (V!12572 (val!4344 Int)) )
))
(declare-datatypes ((ValueCell!3956 0))(
  ( (ValueCellFull!3956 (v!6537 V!12571)) (EmptyCell!3956) )
))
(declare-datatypes ((array!21125 0))(
  ( (array!21126 (arr!10028 (Array (_ BitVec 32) ValueCell!3956)) (size!10380 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21125)

(declare-fun mapDefault!14463 () ValueCell!3956)

