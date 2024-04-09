; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34526 () Bool)

(assert start!34526)

(declare-fun b_free!7441 () Bool)

(declare-fun b_next!7441 () Bool)

(assert (=> start!34526 (= b_free!7441 (not b_next!7441))))

(declare-fun tp!25869 () Bool)

(declare-fun b_and!14667 () Bool)

(assert (=> start!34526 (= tp!25869 b_and!14667)))

(declare-fun b!344798 () Bool)

(declare-fun res!190818 () Bool)

(declare-fun e!211353 () Bool)

(assert (=> b!344798 (=> (not res!190818) (not e!211353))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((V!10835 0))(
  ( (V!10836 (val!3741 Int)) )
))
(declare-datatypes ((ValueCell!3353 0))(
  ( (ValueCellFull!3353 (v!5913 V!10835)) (EmptyCell!3353) )
))
(declare-datatypes ((array!18341 0))(
  ( (array!18342 (arr!8684 (Array (_ BitVec 32) ValueCell!3353)) (size!9036 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18341)

(declare-datatypes ((array!18343 0))(
  ( (array!18344 (arr!8685 (Array (_ BitVec 32) (_ BitVec 64))) (size!9037 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18343)

(assert (=> b!344798 (= res!190818 (and (= (size!9036 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9037 _keys!1895) (size!9036 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344799 () Bool)

(declare-fun e!211350 () Bool)

(declare-fun tp_is_empty!7393 () Bool)

(assert (=> b!344799 (= e!211350 tp_is_empty!7393)))

(declare-fun b!344800 () Bool)

(declare-fun res!190816 () Bool)

(assert (=> b!344800 (=> (not res!190816) (not e!211353))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10835)

(declare-fun minValue!1467 () V!10835)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5400 0))(
  ( (tuple2!5401 (_1!2710 (_ BitVec 64)) (_2!2710 V!10835)) )
))
(declare-datatypes ((List!5048 0))(
  ( (Nil!5045) (Cons!5044 (h!5900 tuple2!5400) (t!10172 List!5048)) )
))
(declare-datatypes ((ListLongMap!4327 0))(
  ( (ListLongMap!4328 (toList!2179 List!5048)) )
))
(declare-fun contains!2233 (ListLongMap!4327 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1699 (array!18343 array!18341 (_ BitVec 32) (_ BitVec 32) V!10835 V!10835 (_ BitVec 32) Int) ListLongMap!4327)

(assert (=> b!344800 (= res!190816 (not (contains!2233 (getCurrentListMap!1699 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun res!190815 () Bool)

(assert (=> start!34526 (=> (not res!190815) (not e!211353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34526 (= res!190815 (validMask!0 mask!2385))))

(assert (=> start!34526 e!211353))

(assert (=> start!34526 true))

(assert (=> start!34526 tp_is_empty!7393))

(assert (=> start!34526 tp!25869))

(declare-fun e!211349 () Bool)

(declare-fun array_inv!6422 (array!18341) Bool)

(assert (=> start!34526 (and (array_inv!6422 _values!1525) e!211349)))

(declare-fun array_inv!6423 (array!18343) Bool)

(assert (=> start!34526 (array_inv!6423 _keys!1895)))

(declare-fun b!344801 () Bool)

(declare-fun res!190819 () Bool)

(assert (=> b!344801 (=> (not res!190819) (not e!211353))))

(declare-datatypes ((List!5049 0))(
  ( (Nil!5046) (Cons!5045 (h!5901 (_ BitVec 64)) (t!10173 List!5049)) )
))
(declare-fun arrayNoDuplicates!0 (array!18343 (_ BitVec 32) List!5049) Bool)

(assert (=> b!344801 (= res!190819 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5046))))

(declare-fun b!344802 () Bool)

(declare-fun e!211352 () Bool)

(assert (=> b!344802 (= e!211352 tp_is_empty!7393)))

(declare-fun b!344803 () Bool)

(assert (=> b!344803 (= e!211353 false)))

(declare-datatypes ((SeekEntryResult!3345 0))(
  ( (MissingZero!3345 (index!15559 (_ BitVec 32))) (Found!3345 (index!15560 (_ BitVec 32))) (Intermediate!3345 (undefined!4157 Bool) (index!15561 (_ BitVec 32)) (x!34358 (_ BitVec 32))) (Undefined!3345) (MissingVacant!3345 (index!15562 (_ BitVec 32))) )
))
(declare-fun lt!162696 () SeekEntryResult!3345)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18343 (_ BitVec 32)) SeekEntryResult!3345)

(assert (=> b!344803 (= lt!162696 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!344804 () Bool)

(declare-fun res!190817 () Bool)

(assert (=> b!344804 (=> (not res!190817) (not e!211353))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18343 (_ BitVec 32)) Bool)

(assert (=> b!344804 (= res!190817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12528 () Bool)

(declare-fun mapRes!12528 () Bool)

(declare-fun tp!25868 () Bool)

(assert (=> mapNonEmpty!12528 (= mapRes!12528 (and tp!25868 e!211352))))

(declare-fun mapRest!12528 () (Array (_ BitVec 32) ValueCell!3353))

(declare-fun mapValue!12528 () ValueCell!3353)

(declare-fun mapKey!12528 () (_ BitVec 32))

(assert (=> mapNonEmpty!12528 (= (arr!8684 _values!1525) (store mapRest!12528 mapKey!12528 mapValue!12528))))

(declare-fun b!344805 () Bool)

(declare-fun res!190820 () Bool)

(assert (=> b!344805 (=> (not res!190820) (not e!211353))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344805 (= res!190820 (validKeyInArray!0 k!1348))))

(declare-fun b!344806 () Bool)

(assert (=> b!344806 (= e!211349 (and e!211350 mapRes!12528))))

(declare-fun condMapEmpty!12528 () Bool)

(declare-fun mapDefault!12528 () ValueCell!3353)

