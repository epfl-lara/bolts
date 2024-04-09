; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39580 () Bool)

(assert start!39580)

(declare-fun b_free!9839 () Bool)

(declare-fun b_next!9839 () Bool)

(assert (=> start!39580 (= b_free!9839 (not b_next!9839))))

(declare-fun tp!35046 () Bool)

(declare-fun b_and!17513 () Bool)

(assert (=> start!39580 (= tp!35046 b_and!17513)))

(declare-fun b!423429 () Bool)

(declare-fun e!251705 () Bool)

(declare-fun tp_is_empty!10991 () Bool)

(assert (=> b!423429 (= e!251705 tp_is_empty!10991)))

(declare-fun res!247583 () Bool)

(declare-fun e!251706 () Bool)

(assert (=> start!39580 (=> (not res!247583) (not e!251706))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25809 0))(
  ( (array!25810 (arr!12351 (Array (_ BitVec 32) (_ BitVec 64))) (size!12703 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25809)

(assert (=> start!39580 (= res!247583 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12703 _keys!709))))))

(assert (=> start!39580 e!251706))

(assert (=> start!39580 tp_is_empty!10991))

(assert (=> start!39580 tp!35046))

(assert (=> start!39580 true))

(declare-datatypes ((V!15759 0))(
  ( (V!15760 (val!5540 Int)) )
))
(declare-datatypes ((ValueCell!5152 0))(
  ( (ValueCellFull!5152 (v!7783 V!15759)) (EmptyCell!5152) )
))
(declare-datatypes ((array!25811 0))(
  ( (array!25812 (arr!12352 (Array (_ BitVec 32) ValueCell!5152)) (size!12704 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25811)

(declare-fun e!251703 () Bool)

(declare-fun array_inv!9004 (array!25811) Bool)

(assert (=> start!39580 (and (array_inv!9004 _values!549) e!251703)))

(declare-fun array_inv!9005 (array!25809) Bool)

(assert (=> start!39580 (array_inv!9005 _keys!709)))

(declare-fun b!423430 () Bool)

(declare-fun mapRes!18108 () Bool)

(assert (=> b!423430 (= e!251703 (and e!251705 mapRes!18108))))

(declare-fun condMapEmpty!18108 () Bool)

(declare-fun mapDefault!18108 () ValueCell!5152)

