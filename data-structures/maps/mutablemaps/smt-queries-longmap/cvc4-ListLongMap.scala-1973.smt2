; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34712 () Bool)

(assert start!34712)

(declare-fun b_free!7511 () Bool)

(declare-fun b_next!7511 () Bool)

(assert (=> start!34712 (= b_free!7511 (not b_next!7511))))

(declare-fun tp!26096 () Bool)

(declare-fun b_and!14749 () Bool)

(assert (=> start!34712 (= tp!26096 b_and!14749)))

(declare-fun b!346645 () Bool)

(declare-fun res!191860 () Bool)

(declare-fun e!212448 () Bool)

(assert (=> b!346645 (=> (not res!191860) (not e!212448))))

(declare-datatypes ((array!18483 0))(
  ( (array!18484 (arr!8749 (Array (_ BitVec 32) (_ BitVec 64))) (size!9101 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18483)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18483 (_ BitVec 32)) Bool)

(assert (=> b!346645 (= res!191860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!346646 () Bool)

(declare-fun e!212449 () Bool)

(declare-fun e!212446 () Bool)

(declare-fun mapRes!12651 () Bool)

(assert (=> b!346646 (= e!212449 (and e!212446 mapRes!12651))))

(declare-fun condMapEmpty!12651 () Bool)

(declare-datatypes ((V!10927 0))(
  ( (V!10928 (val!3776 Int)) )
))
(declare-datatypes ((ValueCell!3388 0))(
  ( (ValueCellFull!3388 (v!5954 V!10927)) (EmptyCell!3388) )
))
(declare-datatypes ((array!18485 0))(
  ( (array!18486 (arr!8750 (Array (_ BitVec 32) ValueCell!3388)) (size!9102 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18485)

(declare-fun mapDefault!12651 () ValueCell!3388)

