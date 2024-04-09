; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34482 () Bool)

(assert start!34482)

(declare-fun b_free!7397 () Bool)

(declare-fun b_next!7397 () Bool)

(assert (=> start!34482 (= b_free!7397 (not b_next!7397))))

(declare-fun tp!25736 () Bool)

(declare-fun b_and!14623 () Bool)

(assert (=> start!34482 (= tp!25736 b_and!14623)))

(declare-fun b!344204 () Bool)

(declare-fun res!190419 () Bool)

(declare-fun e!211021 () Bool)

(assert (=> b!344204 (=> (not res!190419) (not e!211021))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10775 0))(
  ( (V!10776 (val!3719 Int)) )
))
(declare-fun zeroValue!1467 () V!10775)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3331 0))(
  ( (ValueCellFull!3331 (v!5891 V!10775)) (EmptyCell!3331) )
))
(declare-datatypes ((array!18255 0))(
  ( (array!18256 (arr!8641 (Array (_ BitVec 32) ValueCell!3331)) (size!8993 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18255)

(declare-datatypes ((array!18257 0))(
  ( (array!18258 (arr!8642 (Array (_ BitVec 32) (_ BitVec 64))) (size!8994 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18257)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10775)

(declare-datatypes ((tuple2!5372 0))(
  ( (tuple2!5373 (_1!2696 (_ BitVec 64)) (_2!2696 V!10775)) )
))
(declare-datatypes ((List!5017 0))(
  ( (Nil!5014) (Cons!5013 (h!5869 tuple2!5372) (t!10141 List!5017)) )
))
(declare-datatypes ((ListLongMap!4299 0))(
  ( (ListLongMap!4300 (toList!2165 List!5017)) )
))
(declare-fun contains!2219 (ListLongMap!4299 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1685 (array!18257 array!18255 (_ BitVec 32) (_ BitVec 32) V!10775 V!10775 (_ BitVec 32) Int) ListLongMap!4299)

(assert (=> b!344204 (= res!190419 (not (contains!2219 (getCurrentListMap!1685 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!344205 () Bool)

(declare-fun res!190421 () Bool)

(assert (=> b!344205 (=> (not res!190421) (not e!211021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18257 (_ BitVec 32)) Bool)

(assert (=> b!344205 (= res!190421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344206 () Bool)

(declare-fun e!211019 () Bool)

(declare-fun tp_is_empty!7349 () Bool)

(assert (=> b!344206 (= e!211019 tp_is_empty!7349)))

(declare-fun b!344207 () Bool)

(declare-fun res!190423 () Bool)

(assert (=> b!344207 (=> (not res!190423) (not e!211021))))

(declare-datatypes ((List!5018 0))(
  ( (Nil!5015) (Cons!5014 (h!5870 (_ BitVec 64)) (t!10142 List!5018)) )
))
(declare-fun arrayNoDuplicates!0 (array!18257 (_ BitVec 32) List!5018) Bool)

(assert (=> b!344207 (= res!190423 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5015))))

(declare-fun mapIsEmpty!12462 () Bool)

(declare-fun mapRes!12462 () Bool)

(assert (=> mapIsEmpty!12462 mapRes!12462))

(declare-fun b!344208 () Bool)

(declare-fun res!190424 () Bool)

(assert (=> b!344208 (=> (not res!190424) (not e!211021))))

(assert (=> b!344208 (= res!190424 (and (= (size!8993 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8994 _keys!1895) (size!8993 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344209 () Bool)

(declare-fun res!190420 () Bool)

(assert (=> b!344209 (=> (not res!190420) (not e!211021))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344209 (= res!190420 (validKeyInArray!0 k!1348))))

(declare-fun b!344210 () Bool)

(declare-fun e!211020 () Bool)

(assert (=> b!344210 (= e!211020 tp_is_empty!7349)))

(declare-fun mapNonEmpty!12462 () Bool)

(declare-fun tp!25737 () Bool)

(assert (=> mapNonEmpty!12462 (= mapRes!12462 (and tp!25737 e!211019))))

(declare-fun mapKey!12462 () (_ BitVec 32))

(declare-fun mapRest!12462 () (Array (_ BitVec 32) ValueCell!3331))

(declare-fun mapValue!12462 () ValueCell!3331)

(assert (=> mapNonEmpty!12462 (= (arr!8641 _values!1525) (store mapRest!12462 mapKey!12462 mapValue!12462))))

(declare-fun b!344211 () Bool)

(assert (=> b!344211 (= e!211021 false)))

(declare-datatypes ((SeekEntryResult!3333 0))(
  ( (MissingZero!3333 (index!15511 (_ BitVec 32))) (Found!3333 (index!15512 (_ BitVec 32))) (Intermediate!3333 (undefined!4145 Bool) (index!15513 (_ BitVec 32)) (x!34282 (_ BitVec 32))) (Undefined!3333) (MissingVacant!3333 (index!15514 (_ BitVec 32))) )
))
(declare-fun lt!162630 () SeekEntryResult!3333)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18257 (_ BitVec 32)) SeekEntryResult!3333)

(assert (=> b!344211 (= lt!162630 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun res!190422 () Bool)

(assert (=> start!34482 (=> (not res!190422) (not e!211021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34482 (= res!190422 (validMask!0 mask!2385))))

(assert (=> start!34482 e!211021))

(assert (=> start!34482 true))

(assert (=> start!34482 tp_is_empty!7349))

(assert (=> start!34482 tp!25736))

(declare-fun e!211022 () Bool)

(declare-fun array_inv!6392 (array!18255) Bool)

(assert (=> start!34482 (and (array_inv!6392 _values!1525) e!211022)))

(declare-fun array_inv!6393 (array!18257) Bool)

(assert (=> start!34482 (array_inv!6393 _keys!1895)))

(declare-fun b!344212 () Bool)

(assert (=> b!344212 (= e!211022 (and e!211020 mapRes!12462))))

(declare-fun condMapEmpty!12462 () Bool)

(declare-fun mapDefault!12462 () ValueCell!3331)

