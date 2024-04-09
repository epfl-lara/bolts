; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34508 () Bool)

(assert start!34508)

(declare-fun b_free!7423 () Bool)

(declare-fun b_next!7423 () Bool)

(assert (=> start!34508 (= b_free!7423 (not b_next!7423))))

(declare-fun tp!25815 () Bool)

(declare-fun b_and!14649 () Bool)

(assert (=> start!34508 (= tp!25815 b_and!14649)))

(declare-fun res!190653 () Bool)

(declare-fun e!211214 () Bool)

(assert (=> start!34508 (=> (not res!190653) (not e!211214))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34508 (= res!190653 (validMask!0 mask!2385))))

(assert (=> start!34508 e!211214))

(assert (=> start!34508 true))

(declare-fun tp_is_empty!7375 () Bool)

(assert (=> start!34508 tp_is_empty!7375))

(assert (=> start!34508 tp!25815))

(declare-datatypes ((V!10811 0))(
  ( (V!10812 (val!3732 Int)) )
))
(declare-datatypes ((ValueCell!3344 0))(
  ( (ValueCellFull!3344 (v!5904 V!10811)) (EmptyCell!3344) )
))
(declare-datatypes ((array!18305 0))(
  ( (array!18306 (arr!8666 (Array (_ BitVec 32) ValueCell!3344)) (size!9018 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18305)

(declare-fun e!211216 () Bool)

(declare-fun array_inv!6408 (array!18305) Bool)

(assert (=> start!34508 (and (array_inv!6408 _values!1525) e!211216)))

(declare-datatypes ((array!18307 0))(
  ( (array!18308 (arr!8667 (Array (_ BitVec 32) (_ BitVec 64))) (size!9019 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18307)

(declare-fun array_inv!6409 (array!18307) Bool)

(assert (=> start!34508 (array_inv!6409 _keys!1895)))

(declare-fun mapNonEmpty!12501 () Bool)

(declare-fun mapRes!12501 () Bool)

(declare-fun tp!25814 () Bool)

(declare-fun e!211215 () Bool)

(assert (=> mapNonEmpty!12501 (= mapRes!12501 (and tp!25814 e!211215))))

(declare-fun mapKey!12501 () (_ BitVec 32))

(declare-fun mapRest!12501 () (Array (_ BitVec 32) ValueCell!3344))

(declare-fun mapValue!12501 () ValueCell!3344)

(assert (=> mapNonEmpty!12501 (= (arr!8666 _values!1525) (store mapRest!12501 mapKey!12501 mapValue!12501))))

(declare-fun b!344555 () Bool)

(assert (=> b!344555 (= e!211214 false)))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3338 0))(
  ( (MissingZero!3338 (index!15531 (_ BitVec 32))) (Found!3338 (index!15532 (_ BitVec 32))) (Intermediate!3338 (undefined!4150 Bool) (index!15533 (_ BitVec 32)) (x!34327 (_ BitVec 32))) (Undefined!3338) (MissingVacant!3338 (index!15534 (_ BitVec 32))) )
))
(declare-fun lt!162669 () SeekEntryResult!3338)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18307 (_ BitVec 32)) SeekEntryResult!3338)

(assert (=> b!344555 (= lt!162669 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!344556 () Bool)

(declare-fun res!190658 () Bool)

(assert (=> b!344556 (=> (not res!190658) (not e!211214))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344556 (= res!190658 (validKeyInArray!0 k!1348))))

(declare-fun b!344557 () Bool)

(declare-fun res!190656 () Bool)

(assert (=> b!344557 (=> (not res!190656) (not e!211214))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!344557 (= res!190656 (and (= (size!9018 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9019 _keys!1895) (size!9018 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344558 () Bool)

(assert (=> b!344558 (= e!211215 tp_is_empty!7375)))

(declare-fun mapIsEmpty!12501 () Bool)

(assert (=> mapIsEmpty!12501 mapRes!12501))

(declare-fun b!344559 () Bool)

(declare-fun e!211217 () Bool)

(assert (=> b!344559 (= e!211216 (and e!211217 mapRes!12501))))

(declare-fun condMapEmpty!12501 () Bool)

(declare-fun mapDefault!12501 () ValueCell!3344)

