; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39448 () Bool)

(assert start!39448)

(declare-fun b_free!9707 () Bool)

(declare-fun b_next!9707 () Bool)

(assert (=> start!39448 (= b_free!9707 (not b_next!9707))))

(declare-fun tp!34649 () Bool)

(declare-fun b_and!17307 () Bool)

(assert (=> start!39448 (= tp!34649 b_and!17307)))

(declare-fun mapIsEmpty!17910 () Bool)

(declare-fun mapRes!17910 () Bool)

(assert (=> mapIsEmpty!17910 mapRes!17910))

(declare-fun b!419949 () Bool)

(declare-fun res!244985 () Bool)

(declare-fun e!250188 () Bool)

(assert (=> b!419949 (=> (not res!244985) (not e!250188))))

(declare-datatypes ((array!25549 0))(
  ( (array!25550 (arr!12221 (Array (_ BitVec 32) (_ BitVec 64))) (size!12573 (_ BitVec 32))) )
))
(declare-fun lt!192706 () array!25549)

(declare-datatypes ((List!7144 0))(
  ( (Nil!7141) (Cons!7140 (h!7996 (_ BitVec 64)) (t!12524 List!7144)) )
))
(declare-fun arrayNoDuplicates!0 (array!25549 (_ BitVec 32) List!7144) Bool)

(assert (=> b!419949 (= res!244985 (arrayNoDuplicates!0 lt!192706 #b00000000000000000000000000000000 Nil!7141))))

(declare-fun b!419950 () Bool)

(declare-fun e!250195 () Bool)

(declare-fun e!250192 () Bool)

(assert (=> b!419950 (= e!250195 (and e!250192 mapRes!17910))))

(declare-fun condMapEmpty!17910 () Bool)

(declare-datatypes ((V!15583 0))(
  ( (V!15584 (val!5474 Int)) )
))
(declare-datatypes ((ValueCell!5086 0))(
  ( (ValueCellFull!5086 (v!7717 V!15583)) (EmptyCell!5086) )
))
(declare-datatypes ((array!25551 0))(
  ( (array!25552 (arr!12222 (Array (_ BitVec 32) ValueCell!5086)) (size!12574 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25551)

(declare-fun mapDefault!17910 () ValueCell!5086)

