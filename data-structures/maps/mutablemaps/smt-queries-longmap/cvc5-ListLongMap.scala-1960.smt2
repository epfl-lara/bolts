; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34514 () Bool)

(assert start!34514)

(declare-fun b_free!7429 () Bool)

(declare-fun b_next!7429 () Bool)

(assert (=> start!34514 (= b_free!7429 (not b_next!7429))))

(declare-fun tp!25832 () Bool)

(declare-fun b_and!14655 () Bool)

(assert (=> start!34514 (= tp!25832 b_and!14655)))

(declare-fun res!190712 () Bool)

(declare-fun e!211261 () Bool)

(assert (=> start!34514 (=> (not res!190712) (not e!211261))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34514 (= res!190712 (validMask!0 mask!2385))))

(assert (=> start!34514 e!211261))

(assert (=> start!34514 true))

(declare-fun tp_is_empty!7381 () Bool)

(assert (=> start!34514 tp_is_empty!7381))

(assert (=> start!34514 tp!25832))

(declare-datatypes ((V!10819 0))(
  ( (V!10820 (val!3735 Int)) )
))
(declare-datatypes ((ValueCell!3347 0))(
  ( (ValueCellFull!3347 (v!5907 V!10819)) (EmptyCell!3347) )
))
(declare-datatypes ((array!18317 0))(
  ( (array!18318 (arr!8672 (Array (_ BitVec 32) ValueCell!3347)) (size!9024 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18317)

(declare-fun e!211263 () Bool)

(declare-fun array_inv!6414 (array!18317) Bool)

(assert (=> start!34514 (and (array_inv!6414 _values!1525) e!211263)))

(declare-datatypes ((array!18319 0))(
  ( (array!18320 (arr!8673 (Array (_ BitVec 32) (_ BitVec 64))) (size!9025 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18319)

(declare-fun array_inv!6415 (array!18319) Bool)

(assert (=> start!34514 (array_inv!6415 _keys!1895)))

(declare-fun b!344636 () Bool)

(declare-fun e!211260 () Bool)

(assert (=> b!344636 (= e!211260 tp_is_empty!7381)))

(declare-fun mapNonEmpty!12510 () Bool)

(declare-fun mapRes!12510 () Bool)

(declare-fun tp!25833 () Bool)

(assert (=> mapNonEmpty!12510 (= mapRes!12510 (and tp!25833 e!211260))))

(declare-fun mapKey!12510 () (_ BitVec 32))

(declare-fun mapRest!12510 () (Array (_ BitVec 32) ValueCell!3347))

(declare-fun mapValue!12510 () ValueCell!3347)

(assert (=> mapNonEmpty!12510 (= (arr!8672 _values!1525) (store mapRest!12510 mapKey!12510 mapValue!12510))))

(declare-fun b!344637 () Bool)

(declare-fun res!190711 () Bool)

(assert (=> b!344637 (=> (not res!190711) (not e!211261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18319 (_ BitVec 32)) Bool)

(assert (=> b!344637 (= res!190711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344638 () Bool)

(declare-fun e!211259 () Bool)

(assert (=> b!344638 (= e!211263 (and e!211259 mapRes!12510))))

(declare-fun condMapEmpty!12510 () Bool)

(declare-fun mapDefault!12510 () ValueCell!3347)

