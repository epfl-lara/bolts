; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34430 () Bool)

(assert start!34430)

(declare-fun b_free!7345 () Bool)

(declare-fun b_next!7345 () Bool)

(assert (=> start!34430 (= b_free!7345 (not b_next!7345))))

(declare-fun tp!25580 () Bool)

(declare-fun b_and!14571 () Bool)

(assert (=> start!34430 (= tp!25580 b_and!14571)))

(declare-fun mapIsEmpty!12384 () Bool)

(declare-fun mapRes!12384 () Bool)

(assert (=> mapIsEmpty!12384 mapRes!12384))

(declare-fun e!210632 () Bool)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3314 0))(
  ( (MissingZero!3314 (index!15435 (_ BitVec 32))) (Found!3314 (index!15436 (_ BitVec 32))) (Intermediate!3314 (undefined!4126 Bool) (index!15437 (_ BitVec 32)) (x!34199 (_ BitVec 32))) (Undefined!3314) (MissingVacant!3314 (index!15438 (_ BitVec 32))) )
))
(declare-fun lt!162552 () SeekEntryResult!3314)

(declare-fun b!343503 () Bool)

(declare-datatypes ((array!18157 0))(
  ( (array!18158 (arr!8592 (Array (_ BitVec 32) (_ BitVec 64))) (size!8944 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18157)

(assert (=> b!343503 (= e!210632 (and (not (is-Found!3314 lt!162552)) (not (is-MissingZero!3314 lt!162552)) (not (is-MissingVacant!3314 lt!162552)) (is-Undefined!3314 lt!162552) (not (= (size!8944 _keys!1895) (bvadd #b00000000000000000000000000000001 mask!2385)))))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18157 (_ BitVec 32)) SeekEntryResult!3314)

(assert (=> b!343503 (= lt!162552 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!343504 () Bool)

(declare-fun e!210631 () Bool)

(declare-fun tp_is_empty!7297 () Bool)

(assert (=> b!343504 (= e!210631 tp_is_empty!7297)))

(declare-fun b!343505 () Bool)

(declare-fun res!189951 () Bool)

(assert (=> b!343505 (=> (not res!189951) (not e!210632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18157 (_ BitVec 32)) Bool)

(assert (=> b!343505 (= res!189951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12384 () Bool)

(declare-fun tp!25581 () Bool)

(assert (=> mapNonEmpty!12384 (= mapRes!12384 (and tp!25581 e!210631))))

(declare-fun mapKey!12384 () (_ BitVec 32))

(declare-datatypes ((V!10707 0))(
  ( (V!10708 (val!3693 Int)) )
))
(declare-datatypes ((ValueCell!3305 0))(
  ( (ValueCellFull!3305 (v!5865 V!10707)) (EmptyCell!3305) )
))
(declare-datatypes ((array!18159 0))(
  ( (array!18160 (arr!8593 (Array (_ BitVec 32) ValueCell!3305)) (size!8945 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18159)

(declare-fun mapRest!12384 () (Array (_ BitVec 32) ValueCell!3305))

(declare-fun mapValue!12384 () ValueCell!3305)

(assert (=> mapNonEmpty!12384 (= (arr!8593 _values!1525) (store mapRest!12384 mapKey!12384 mapValue!12384))))

(declare-fun b!343506 () Bool)

(declare-fun res!189952 () Bool)

(assert (=> b!343506 (=> (not res!189952) (not e!210632))))

(declare-fun zeroValue!1467 () V!10707)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10707)

(declare-datatypes ((tuple2!5336 0))(
  ( (tuple2!5337 (_1!2678 (_ BitVec 64)) (_2!2678 V!10707)) )
))
(declare-datatypes ((List!4981 0))(
  ( (Nil!4978) (Cons!4977 (h!5833 tuple2!5336) (t!10105 List!4981)) )
))
(declare-datatypes ((ListLongMap!4263 0))(
  ( (ListLongMap!4264 (toList!2147 List!4981)) )
))
(declare-fun contains!2201 (ListLongMap!4263 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1667 (array!18157 array!18159 (_ BitVec 32) (_ BitVec 32) V!10707 V!10707 (_ BitVec 32) Int) ListLongMap!4263)

(assert (=> b!343506 (= res!189952 (not (contains!2201 (getCurrentListMap!1667 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!343502 () Bool)

(declare-fun res!189954 () Bool)

(assert (=> b!343502 (=> (not res!189954) (not e!210632))))

(declare-datatypes ((List!4982 0))(
  ( (Nil!4979) (Cons!4978 (h!5834 (_ BitVec 64)) (t!10106 List!4982)) )
))
(declare-fun arrayNoDuplicates!0 (array!18157 (_ BitVec 32) List!4982) Bool)

(assert (=> b!343502 (= res!189954 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4979))))

(declare-fun res!189956 () Bool)

(assert (=> start!34430 (=> (not res!189956) (not e!210632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34430 (= res!189956 (validMask!0 mask!2385))))

(assert (=> start!34430 e!210632))

(assert (=> start!34430 true))

(assert (=> start!34430 tp_is_empty!7297))

(assert (=> start!34430 tp!25580))

(declare-fun e!210630 () Bool)

(declare-fun array_inv!6352 (array!18159) Bool)

(assert (=> start!34430 (and (array_inv!6352 _values!1525) e!210630)))

(declare-fun array_inv!6353 (array!18157) Bool)

(assert (=> start!34430 (array_inv!6353 _keys!1895)))

(declare-fun b!343507 () Bool)

(declare-fun e!210629 () Bool)

(assert (=> b!343507 (= e!210629 tp_is_empty!7297)))

(declare-fun b!343508 () Bool)

(declare-fun res!189955 () Bool)

(assert (=> b!343508 (=> (not res!189955) (not e!210632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343508 (= res!189955 (validKeyInArray!0 k!1348))))

(declare-fun b!343509 () Bool)

(declare-fun res!189953 () Bool)

(assert (=> b!343509 (=> (not res!189953) (not e!210632))))

(assert (=> b!343509 (= res!189953 (and (= (size!8945 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8944 _keys!1895) (size!8945 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!343510 () Bool)

(assert (=> b!343510 (= e!210630 (and e!210629 mapRes!12384))))

(declare-fun condMapEmpty!12384 () Bool)

(declare-fun mapDefault!12384 () ValueCell!3305)

