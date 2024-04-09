; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39288 () Bool)

(assert start!39288)

(declare-fun b_free!9547 () Bool)

(declare-fun b_next!9547 () Bool)

(assert (=> start!39288 (= b_free!9547 (not b_next!9547))))

(declare-fun tp!34169 () Bool)

(declare-fun b_and!16987 () Bool)

(assert (=> start!39288 (= tp!34169 b_and!16987)))

(declare-fun b!415229 () Bool)

(declare-fun res!241629 () Bool)

(declare-fun e!248030 () Bool)

(assert (=> b!415229 (=> (not res!241629) (not e!248030))))

(declare-datatypes ((array!25235 0))(
  ( (array!25236 (arr!12064 (Array (_ BitVec 32) (_ BitVec 64))) (size!12416 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25235)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!415229 (= res!241629 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!415230 () Bool)

(declare-fun e!248031 () Bool)

(declare-datatypes ((V!15371 0))(
  ( (V!15372 (val!5394 Int)) )
))
(declare-datatypes ((tuple2!6950 0))(
  ( (tuple2!6951 (_1!3485 (_ BitVec 64)) (_2!3485 V!15371)) )
))
(declare-datatypes ((List!7006 0))(
  ( (Nil!7003) (Cons!7002 (h!7858 tuple2!6950) (t!12226 List!7006)) )
))
(declare-datatypes ((ListLongMap!5877 0))(
  ( (ListLongMap!5878 (toList!2954 List!7006)) )
))
(declare-fun call!28817 () ListLongMap!5877)

(declare-fun call!28816 () ListLongMap!5877)

(assert (=> b!415230 (= e!248031 (= call!28817 call!28816))))

(declare-fun mapNonEmpty!17670 () Bool)

(declare-fun mapRes!17670 () Bool)

(declare-fun tp!34170 () Bool)

(declare-fun e!248027 () Bool)

(assert (=> mapNonEmpty!17670 (= mapRes!17670 (and tp!34170 e!248027))))

(declare-datatypes ((ValueCell!5006 0))(
  ( (ValueCellFull!5006 (v!7637 V!15371)) (EmptyCell!5006) )
))
(declare-fun mapValue!17670 () ValueCell!5006)

(declare-datatypes ((array!25237 0))(
  ( (array!25238 (arr!12065 (Array (_ BitVec 32) ValueCell!5006)) (size!12417 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25237)

(declare-fun mapKey!17670 () (_ BitVec 32))

(declare-fun mapRest!17670 () (Array (_ BitVec 32) ValueCell!5006))

(assert (=> mapNonEmpty!17670 (= (arr!12065 _values!549) (store mapRest!17670 mapKey!17670 mapValue!17670))))

(declare-fun b!415231 () Bool)

(declare-fun e!248032 () Bool)

(assert (=> b!415231 (= e!248030 e!248032)))

(declare-fun res!241630 () Bool)

(assert (=> b!415231 (=> (not res!241630) (not e!248032))))

(declare-fun lt!190211 () array!25235)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25235 (_ BitVec 32)) Bool)

(assert (=> b!415231 (= res!241630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190211 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!415231 (= lt!190211 (array!25236 (store (arr!12064 _keys!709) i!563 k!794) (size!12416 _keys!709)))))

(declare-fun b!415233 () Bool)

(declare-fun e!248029 () Bool)

(declare-fun tp_is_empty!10699 () Bool)

(assert (=> b!415233 (= e!248029 tp_is_empty!10699)))

(declare-fun b!415234 () Bool)

(declare-fun e!248033 () Bool)

(assert (=> b!415234 (= e!248033 (and e!248029 mapRes!17670))))

(declare-fun condMapEmpty!17670 () Bool)

(declare-fun mapDefault!17670 () ValueCell!5006)

