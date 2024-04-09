; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34784 () Bool)

(assert start!34784)

(declare-fun b_free!7561 () Bool)

(declare-fun b_next!7561 () Bool)

(assert (=> start!34784 (= b_free!7561 (not b_next!7561))))

(declare-fun tp!26250 () Bool)

(declare-fun b_and!14801 () Bool)

(assert (=> start!34784 (= tp!26250 b_and!14801)))

(declare-fun b!347613 () Bool)

(declare-fun e!213006 () Bool)

(declare-fun tp_is_empty!7513 () Bool)

(assert (=> b!347613 (= e!213006 tp_is_empty!7513)))

(declare-fun b!347614 () Bool)

(declare-fun e!213009 () Bool)

(declare-fun e!213005 () Bool)

(assert (=> b!347614 (= e!213009 e!213005)))

(declare-fun res!192521 () Bool)

(assert (=> b!347614 (=> (not res!192521) (not e!213005))))

(declare-datatypes ((SeekEntryResult!3391 0))(
  ( (MissingZero!3391 (index!15743 (_ BitVec 32))) (Found!3391 (index!15744 (_ BitVec 32))) (Intermediate!3391 (undefined!4203 Bool) (index!15745 (_ BitVec 32)) (x!34634 (_ BitVec 32))) (Undefined!3391) (MissingVacant!3391 (index!15746 (_ BitVec 32))) )
))
(declare-fun lt!163674 () SeekEntryResult!3391)

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!18583 0))(
  ( (array!18584 (arr!8798 (Array (_ BitVec 32) (_ BitVec 64))) (size!9150 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18583)

(assert (=> b!347614 (= res!192521 (and (is-Found!3391 lt!163674) (= (select (arr!8798 _keys!1895) (index!15744 lt!163674)) k!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18583 (_ BitVec 32)) SeekEntryResult!3391)

(assert (=> b!347614 (= lt!163674 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!347615 () Bool)

(declare-fun e!213008 () Bool)

(declare-fun mapRes!12729 () Bool)

(assert (=> b!347615 (= e!213008 (and e!213006 mapRes!12729))))

(declare-fun condMapEmpty!12729 () Bool)

(declare-datatypes ((V!10995 0))(
  ( (V!10996 (val!3801 Int)) )
))
(declare-datatypes ((ValueCell!3413 0))(
  ( (ValueCellFull!3413 (v!5980 V!10995)) (EmptyCell!3413) )
))
(declare-datatypes ((array!18585 0))(
  ( (array!18586 (arr!8799 (Array (_ BitVec 32) ValueCell!3413)) (size!9151 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18585)

(declare-fun mapDefault!12729 () ValueCell!3413)

