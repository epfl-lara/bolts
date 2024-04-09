; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39664 () Bool)

(assert start!39664)

(declare-fun b_free!9923 () Bool)

(declare-fun b_next!9923 () Bool)

(assert (=> start!39664 (= b_free!9923 (not b_next!9923))))

(declare-fun tp!35297 () Bool)

(declare-fun b_and!17597 () Bool)

(assert (=> start!39664 (= tp!35297 b_and!17597)))

(declare-fun b!425372 () Bool)

(declare-fun res!249144 () Bool)

(declare-fun e!252513 () Bool)

(assert (=> b!425372 (=> (not res!249144) (not e!252513))))

(declare-datatypes ((array!25977 0))(
  ( (array!25978 (arr!12435 (Array (_ BitVec 32) (_ BitVec 64))) (size!12787 (_ BitVec 32))) )
))
(declare-fun lt!194651 () array!25977)

(declare-datatypes ((List!7316 0))(
  ( (Nil!7313) (Cons!7312 (h!8168 (_ BitVec 64)) (t!12768 List!7316)) )
))
(declare-fun arrayNoDuplicates!0 (array!25977 (_ BitVec 32) List!7316) Bool)

(assert (=> b!425372 (= res!249144 (arrayNoDuplicates!0 lt!194651 #b00000000000000000000000000000000 Nil!7313))))

(declare-fun b!425373 () Bool)

(declare-fun res!249152 () Bool)

(declare-fun e!252511 () Bool)

(assert (=> b!425373 (=> (not res!249152) (not e!252511))))

(declare-fun _keys!709 () array!25977)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25977 (_ BitVec 32)) Bool)

(assert (=> b!425373 (= res!249152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!18234 () Bool)

(declare-fun mapRes!18234 () Bool)

(declare-fun tp!35298 () Bool)

(declare-fun e!252512 () Bool)

(assert (=> mapNonEmpty!18234 (= mapRes!18234 (and tp!35298 e!252512))))

(declare-datatypes ((V!15871 0))(
  ( (V!15872 (val!5582 Int)) )
))
(declare-datatypes ((ValueCell!5194 0))(
  ( (ValueCellFull!5194 (v!7825 V!15871)) (EmptyCell!5194) )
))
(declare-fun mapValue!18234 () ValueCell!5194)

(declare-fun mapRest!18234 () (Array (_ BitVec 32) ValueCell!5194))

(declare-datatypes ((array!25979 0))(
  ( (array!25980 (arr!12436 (Array (_ BitVec 32) ValueCell!5194)) (size!12788 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25979)

(declare-fun mapKey!18234 () (_ BitVec 32))

(assert (=> mapNonEmpty!18234 (= (arr!12436 _values!549) (store mapRest!18234 mapKey!18234 mapValue!18234))))

(declare-fun b!425375 () Bool)

(declare-fun e!252514 () Bool)

(declare-fun e!252516 () Bool)

(assert (=> b!425375 (= e!252514 (and e!252516 mapRes!18234))))

(declare-fun condMapEmpty!18234 () Bool)

(declare-fun mapDefault!18234 () ValueCell!5194)

