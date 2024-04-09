; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34428 () Bool)

(assert start!34428)

(declare-fun b_free!7343 () Bool)

(declare-fun b_next!7343 () Bool)

(assert (=> start!34428 (= b_free!7343 (not b_next!7343))))

(declare-fun tp!25574 () Bool)

(declare-fun b_and!14569 () Bool)

(assert (=> start!34428 (= tp!25574 b_and!14569)))

(declare-fun b!343475 () Bool)

(declare-fun e!210618 () Bool)

(declare-fun tp_is_empty!7295 () Bool)

(assert (=> b!343475 (= e!210618 tp_is_empty!7295)))

(declare-fun b!343476 () Bool)

(declare-fun res!189936 () Bool)

(declare-fun e!210617 () Bool)

(assert (=> b!343476 (=> (not res!189936) (not e!210617))))

(declare-datatypes ((array!18153 0))(
  ( (array!18154 (arr!8590 (Array (_ BitVec 32) (_ BitVec 64))) (size!8942 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18153)

(declare-datatypes ((List!4979 0))(
  ( (Nil!4976) (Cons!4975 (h!5831 (_ BitVec 64)) (t!10103 List!4979)) )
))
(declare-fun arrayNoDuplicates!0 (array!18153 (_ BitVec 32) List!4979) Bool)

(assert (=> b!343476 (= res!189936 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4976))))

(declare-fun b!343477 () Bool)

(declare-fun res!189933 () Bool)

(assert (=> b!343477 (=> (not res!189933) (not e!210617))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10703 0))(
  ( (V!10704 (val!3692 Int)) )
))
(declare-fun zeroValue!1467 () V!10703)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3304 0))(
  ( (ValueCellFull!3304 (v!5864 V!10703)) (EmptyCell!3304) )
))
(declare-datatypes ((array!18155 0))(
  ( (array!18156 (arr!8591 (Array (_ BitVec 32) ValueCell!3304)) (size!8943 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18155)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10703)

(declare-datatypes ((tuple2!5334 0))(
  ( (tuple2!5335 (_1!2677 (_ BitVec 64)) (_2!2677 V!10703)) )
))
(declare-datatypes ((List!4980 0))(
  ( (Nil!4977) (Cons!4976 (h!5832 tuple2!5334) (t!10104 List!4980)) )
))
(declare-datatypes ((ListLongMap!4261 0))(
  ( (ListLongMap!4262 (toList!2146 List!4980)) )
))
(declare-fun contains!2200 (ListLongMap!4261 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1666 (array!18153 array!18155 (_ BitVec 32) (_ BitVec 32) V!10703 V!10703 (_ BitVec 32) Int) ListLongMap!4261)

(assert (=> b!343477 (= res!189933 (not (contains!2200 (getCurrentListMap!1666 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun res!189934 () Bool)

(assert (=> start!34428 (=> (not res!189934) (not e!210617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34428 (= res!189934 (validMask!0 mask!2385))))

(assert (=> start!34428 e!210617))

(assert (=> start!34428 true))

(assert (=> start!34428 tp_is_empty!7295))

(assert (=> start!34428 tp!25574))

(declare-fun e!210616 () Bool)

(declare-fun array_inv!6350 (array!18155) Bool)

(assert (=> start!34428 (and (array_inv!6350 _values!1525) e!210616)))

(declare-fun array_inv!6351 (array!18153) Bool)

(assert (=> start!34428 (array_inv!6351 _keys!1895)))

(declare-fun mapIsEmpty!12381 () Bool)

(declare-fun mapRes!12381 () Bool)

(assert (=> mapIsEmpty!12381 mapRes!12381))

(declare-fun b!343478 () Bool)

(declare-fun res!189938 () Bool)

(assert (=> b!343478 (=> (not res!189938) (not e!210617))))

(assert (=> b!343478 (= res!189938 (and (= (size!8943 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8942 _keys!1895) (size!8943 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!343479 () Bool)

(declare-fun res!189935 () Bool)

(assert (=> b!343479 (=> (not res!189935) (not e!210617))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18153 (_ BitVec 32)) Bool)

(assert (=> b!343479 (= res!189935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12381 () Bool)

(declare-fun tp!25575 () Bool)

(declare-fun e!210615 () Bool)

(assert (=> mapNonEmpty!12381 (= mapRes!12381 (and tp!25575 e!210615))))

(declare-fun mapValue!12381 () ValueCell!3304)

(declare-fun mapKey!12381 () (_ BitVec 32))

(declare-fun mapRest!12381 () (Array (_ BitVec 32) ValueCell!3304))

(assert (=> mapNonEmpty!12381 (= (arr!8591 _values!1525) (store mapRest!12381 mapKey!12381 mapValue!12381))))

(declare-fun b!343480 () Bool)

(assert (=> b!343480 (= e!210615 tp_is_empty!7295)))

(declare-fun b!343481 () Bool)

(declare-fun res!189937 () Bool)

(assert (=> b!343481 (=> (not res!189937) (not e!210617))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343481 (= res!189937 (validKeyInArray!0 k!1348))))

(declare-fun b!343482 () Bool)

(assert (=> b!343482 (= e!210617 false)))

(declare-datatypes ((SeekEntryResult!3313 0))(
  ( (MissingZero!3313 (index!15431 (_ BitVec 32))) (Found!3313 (index!15432 (_ BitVec 32))) (Intermediate!3313 (undefined!4125 Bool) (index!15433 (_ BitVec 32)) (x!34190 (_ BitVec 32))) (Undefined!3313) (MissingVacant!3313 (index!15434 (_ BitVec 32))) )
))
(declare-fun lt!162549 () SeekEntryResult!3313)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18153 (_ BitVec 32)) SeekEntryResult!3313)

(assert (=> b!343482 (= lt!162549 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!343483 () Bool)

(assert (=> b!343483 (= e!210616 (and e!210618 mapRes!12381))))

(declare-fun condMapEmpty!12381 () Bool)

(declare-fun mapDefault!12381 () ValueCell!3304)

