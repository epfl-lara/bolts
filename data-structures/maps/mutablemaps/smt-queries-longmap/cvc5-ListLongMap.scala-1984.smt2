; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34796 () Bool)

(assert start!34796)

(declare-fun b_free!7573 () Bool)

(declare-fun b_next!7573 () Bool)

(assert (=> start!34796 (= b_free!7573 (not b_next!7573))))

(declare-fun tp!26285 () Bool)

(declare-fun b_and!14813 () Bool)

(assert (=> start!34796 (= tp!26285 b_and!14813)))

(declare-fun mapIsEmpty!12747 () Bool)

(declare-fun mapRes!12747 () Bool)

(assert (=> mapIsEmpty!12747 mapRes!12747))

(declare-fun b!347811 () Bool)

(declare-fun res!192667 () Bool)

(declare-fun e!213135 () Bool)

(assert (=> b!347811 (=> (not res!192667) (not e!213135))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3396 0))(
  ( (MissingZero!3396 (index!15763 (_ BitVec 32))) (Found!3396 (index!15764 (_ BitVec 32))) (Intermediate!3396 (undefined!4208 Bool) (index!15765 (_ BitVec 32)) (x!34655 (_ BitVec 32))) (Undefined!3396) (MissingVacant!3396 (index!15766 (_ BitVec 32))) )
))
(declare-fun lt!163746 () SeekEntryResult!3396)

(declare-datatypes ((array!18605 0))(
  ( (array!18606 (arr!8809 (Array (_ BitVec 32) (_ BitVec 64))) (size!9161 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18605)

(declare-fun arrayContainsKey!0 (array!18605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347811 (= res!192667 (arrayContainsKey!0 _keys!1895 k!1348 (index!15764 lt!163746)))))

(declare-fun b!347812 () Bool)

(declare-fun res!192662 () Bool)

(declare-fun e!213131 () Bool)

(assert (=> b!347812 (=> (not res!192662) (not e!213131))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18605 (_ BitVec 32)) Bool)

(assert (=> b!347812 (= res!192662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!347813 () Bool)

(declare-fun e!213137 () Bool)

(declare-fun tp_is_empty!7525 () Bool)

(assert (=> b!347813 (= e!213137 tp_is_empty!7525)))

(declare-fun b!347814 () Bool)

(declare-fun e!213133 () Bool)

(declare-fun e!213132 () Bool)

(assert (=> b!347814 (= e!213133 (and e!213132 mapRes!12747))))

(declare-fun condMapEmpty!12747 () Bool)

(declare-datatypes ((V!11011 0))(
  ( (V!11012 (val!3807 Int)) )
))
(declare-datatypes ((ValueCell!3419 0))(
  ( (ValueCellFull!3419 (v!5986 V!11011)) (EmptyCell!3419) )
))
(declare-datatypes ((array!18607 0))(
  ( (array!18608 (arr!8810 (Array (_ BitVec 32) ValueCell!3419)) (size!9162 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18607)

(declare-fun mapDefault!12747 () ValueCell!3419)

