; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72764 () Bool)

(assert start!72764)

(declare-fun b!844043 () Bool)

(declare-fun e!471090 () Bool)

(declare-fun tp_is_empty!15787 () Bool)

(assert (=> b!844043 (= e!471090 tp_is_empty!15787)))

(declare-fun b!844044 () Bool)

(declare-fun e!471088 () Bool)

(declare-fun mapRes!25280 () Bool)

(assert (=> b!844044 (= e!471088 (and e!471090 mapRes!25280))))

(declare-fun condMapEmpty!25280 () Bool)

(declare-datatypes ((V!26097 0))(
  ( (V!26098 (val!7941 Int)) )
))
(declare-datatypes ((ValueCell!7454 0))(
  ( (ValueCellFull!7454 (v!10362 V!26097)) (EmptyCell!7454) )
))
(declare-datatypes ((array!47794 0))(
  ( (array!47795 (arr!22924 (Array (_ BitVec 32) ValueCell!7454)) (size!23365 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47794)

(declare-fun mapDefault!25280 () ValueCell!7454)

