; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34496 () Bool)

(assert start!34496)

(declare-fun b_free!7411 () Bool)

(declare-fun b_next!7411 () Bool)

(assert (=> start!34496 (= b_free!7411 (not b_next!7411))))

(declare-fun tp!25778 () Bool)

(declare-fun b_and!14637 () Bool)

(assert (=> start!34496 (= tp!25778 b_and!14637)))

(declare-fun res!190549 () Bool)

(declare-fun e!211128 () Bool)

(assert (=> start!34496 (=> (not res!190549) (not e!211128))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34496 (= res!190549 (validMask!0 mask!2385))))

(assert (=> start!34496 e!211128))

(assert (=> start!34496 true))

(declare-fun tp_is_empty!7363 () Bool)

(assert (=> start!34496 tp_is_empty!7363))

(assert (=> start!34496 tp!25778))

(declare-datatypes ((V!10795 0))(
  ( (V!10796 (val!3726 Int)) )
))
(declare-datatypes ((ValueCell!3338 0))(
  ( (ValueCellFull!3338 (v!5898 V!10795)) (EmptyCell!3338) )
))
(declare-datatypes ((array!18281 0))(
  ( (array!18282 (arr!8654 (Array (_ BitVec 32) ValueCell!3338)) (size!9006 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18281)

(declare-fun e!211124 () Bool)

(declare-fun array_inv!6402 (array!18281) Bool)

(assert (=> start!34496 (and (array_inv!6402 _values!1525) e!211124)))

(declare-datatypes ((array!18283 0))(
  ( (array!18284 (arr!8655 (Array (_ BitVec 32) (_ BitVec 64))) (size!9007 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18283)

(declare-fun array_inv!6403 (array!18283) Bool)

(assert (=> start!34496 (array_inv!6403 _keys!1895)))

(declare-fun b!344393 () Bool)

(declare-fun res!190548 () Bool)

(assert (=> b!344393 (=> (not res!190548) (not e!211128))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!344393 (= res!190548 (and (= (size!9006 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9007 _keys!1895) (size!9006 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344394 () Bool)

(declare-fun res!190545 () Bool)

(assert (=> b!344394 (=> (not res!190545) (not e!211128))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18283 (_ BitVec 32)) Bool)

(assert (=> b!344394 (= res!190545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12483 () Bool)

(declare-fun mapRes!12483 () Bool)

(assert (=> mapIsEmpty!12483 mapRes!12483))

(declare-fun mapNonEmpty!12483 () Bool)

(declare-fun tp!25779 () Bool)

(declare-fun e!211127 () Bool)

(assert (=> mapNonEmpty!12483 (= mapRes!12483 (and tp!25779 e!211127))))

(declare-fun mapRest!12483 () (Array (_ BitVec 32) ValueCell!3338))

(declare-fun mapValue!12483 () ValueCell!3338)

(declare-fun mapKey!12483 () (_ BitVec 32))

(assert (=> mapNonEmpty!12483 (= (arr!8654 _values!1525) (store mapRest!12483 mapKey!12483 mapValue!12483))))

(declare-fun b!344395 () Bool)

(declare-fun e!211126 () Bool)

(assert (=> b!344395 (= e!211124 (and e!211126 mapRes!12483))))

(declare-fun condMapEmpty!12483 () Bool)

(declare-fun mapDefault!12483 () ValueCell!3338)

