; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72702 () Bool)

(assert start!72702)

(declare-fun b!843392 () Bool)

(declare-fun e!470623 () Bool)

(declare-fun tp_is_empty!15725 () Bool)

(assert (=> b!843392 (= e!470623 tp_is_empty!15725)))

(declare-fun b!843393 () Bool)

(declare-fun e!470622 () Bool)

(declare-fun mapRes!25187 () Bool)

(assert (=> b!843393 (= e!470622 (and e!470623 mapRes!25187))))

(declare-fun condMapEmpty!25187 () Bool)

(declare-datatypes ((V!26013 0))(
  ( (V!26014 (val!7910 Int)) )
))
(declare-datatypes ((ValueCell!7423 0))(
  ( (ValueCellFull!7423 (v!10331 V!26013)) (EmptyCell!7423) )
))
(declare-datatypes ((array!47682 0))(
  ( (array!47683 (arr!22868 (Array (_ BitVec 32) ValueCell!7423)) (size!23309 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47682)

(declare-fun mapDefault!25187 () ValueCell!7423)

