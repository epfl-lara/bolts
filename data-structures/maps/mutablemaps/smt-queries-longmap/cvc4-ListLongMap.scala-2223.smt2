; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36812 () Bool)

(assert start!36812)

(declare-fun b!367499 () Bool)

(declare-fun res!205872 () Bool)

(declare-fun e!224884 () Bool)

(assert (=> b!367499 (=> (not res!205872) (not e!224884))))

(declare-datatypes ((array!21083 0))(
  ( (array!21084 (arr!10007 (Array (_ BitVec 32) (_ BitVec 64))) (size!10359 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21083)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21083 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367499 (= res!205872 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14433 () Bool)

(declare-fun mapRes!14433 () Bool)

(assert (=> mapIsEmpty!14433 mapRes!14433))

(declare-fun b!367500 () Bool)

(declare-fun e!224886 () Bool)

(declare-fun tp_is_empty!8579 () Bool)

(assert (=> b!367500 (= e!224886 tp_is_empty!8579)))

(declare-fun b!367501 () Bool)

(declare-fun e!224881 () Bool)

(assert (=> b!367501 (= e!224881 (and e!224886 mapRes!14433))))

(declare-fun condMapEmpty!14433 () Bool)

(declare-datatypes ((V!12543 0))(
  ( (V!12544 (val!4334 Int)) )
))
(declare-datatypes ((ValueCell!3946 0))(
  ( (ValueCellFull!3946 (v!6527 V!12543)) (EmptyCell!3946) )
))
(declare-datatypes ((array!21085 0))(
  ( (array!21086 (arr!10008 (Array (_ BitVec 32) ValueCell!3946)) (size!10360 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21085)

(declare-fun mapDefault!14433 () ValueCell!3946)

