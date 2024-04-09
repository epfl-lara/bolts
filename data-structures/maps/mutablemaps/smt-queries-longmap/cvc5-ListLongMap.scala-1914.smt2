; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34082 () Bool)

(assert start!34082)

(declare-fun b_free!7153 () Bool)

(declare-fun b_next!7153 () Bool)

(assert (=> start!34082 (= b_free!7153 (not b_next!7153))))

(declare-fun tp!24983 () Bool)

(declare-fun b_and!14365 () Bool)

(assert (=> start!34082 (= tp!24983 b_and!14365)))

(declare-fun b!339343 () Bool)

(declare-datatypes ((Unit!10578 0))(
  ( (Unit!10579) )
))
(declare-fun e!208211 () Unit!10578)

(declare-fun Unit!10580 () Unit!10578)

(assert (=> b!339343 (= e!208211 Unit!10580)))

(declare-fun mapIsEmpty!12075 () Bool)

(declare-fun mapRes!12075 () Bool)

(assert (=> mapIsEmpty!12075 mapRes!12075))

(declare-fun b!339344 () Bool)

(declare-fun res!187503 () Bool)

(declare-fun e!208206 () Bool)

(assert (=> b!339344 (=> (not res!187503) (not e!208206))))

(declare-datatypes ((array!17781 0))(
  ( (array!17782 (arr!8411 (Array (_ BitVec 32) (_ BitVec 64))) (size!8763 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17781)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17781 (_ BitVec 32)) Bool)

(assert (=> b!339344 (= res!187503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!339345 () Bool)

(declare-fun e!208208 () Bool)

(declare-fun tp_is_empty!7105 () Bool)

(assert (=> b!339345 (= e!208208 tp_is_empty!7105)))

(declare-fun b!339346 () Bool)

(declare-fun res!187508 () Bool)

(assert (=> b!339346 (=> (not res!187508) (not e!208206))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!339346 (= res!187508 (validKeyInArray!0 k!1348))))

(declare-fun b!339348 () Bool)

(declare-fun Unit!10581 () Unit!10578)

(assert (=> b!339348 (= e!208211 Unit!10581)))

(declare-fun lt!161195 () Unit!10578)

(declare-datatypes ((V!10451 0))(
  ( (V!10452 (val!3597 Int)) )
))
(declare-fun zeroValue!1467 () V!10451)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3209 0))(
  ( (ValueCellFull!3209 (v!5762 V!10451)) (EmptyCell!3209) )
))
(declare-datatypes ((array!17783 0))(
  ( (array!17784 (arr!8412 (Array (_ BitVec 32) ValueCell!3209)) (size!8764 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17783)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10451)

(declare-fun lemmaArrayContainsKeyThenInListMap!286 (array!17781 array!17783 (_ BitVec 32) (_ BitVec 32) V!10451 V!10451 (_ BitVec 64) (_ BitVec 32) Int) Unit!10578)

(declare-fun arrayScanForKey!0 (array!17781 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!339348 (= lt!161195 (lemmaArrayContainsKeyThenInListMap!286 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!339348 false))

(declare-fun b!339349 () Bool)

(declare-fun e!208209 () Bool)

(assert (=> b!339349 (= e!208209 false)))

(declare-fun lt!161196 () Unit!10578)

(assert (=> b!339349 (= lt!161196 e!208211)))

(declare-fun c!52490 () Bool)

(declare-fun arrayContainsKey!0 (array!17781 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!339349 (= c!52490 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!339350 () Bool)

(declare-fun res!187502 () Bool)

(assert (=> b!339350 (=> (not res!187502) (not e!208206))))

(declare-datatypes ((tuple2!5214 0))(
  ( (tuple2!5215 (_1!2617 (_ BitVec 64)) (_2!2617 V!10451)) )
))
(declare-datatypes ((List!4856 0))(
  ( (Nil!4853) (Cons!4852 (h!5708 tuple2!5214) (t!9966 List!4856)) )
))
(declare-datatypes ((ListLongMap!4141 0))(
  ( (ListLongMap!4142 (toList!2086 List!4856)) )
))
(declare-fun contains!2133 (ListLongMap!4141 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1606 (array!17781 array!17783 (_ BitVec 32) (_ BitVec 32) V!10451 V!10451 (_ BitVec 32) Int) ListLongMap!4141)

(assert (=> b!339350 (= res!187502 (not (contains!2133 (getCurrentListMap!1606 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapNonEmpty!12075 () Bool)

(declare-fun tp!24984 () Bool)

(assert (=> mapNonEmpty!12075 (= mapRes!12075 (and tp!24984 e!208208))))

(declare-fun mapValue!12075 () ValueCell!3209)

(declare-fun mapKey!12075 () (_ BitVec 32))

(declare-fun mapRest!12075 () (Array (_ BitVec 32) ValueCell!3209))

(assert (=> mapNonEmpty!12075 (= (arr!8412 _values!1525) (store mapRest!12075 mapKey!12075 mapValue!12075))))

(declare-fun b!339351 () Bool)

(declare-fun e!208212 () Bool)

(assert (=> b!339351 (= e!208212 tp_is_empty!7105)))

(declare-fun b!339352 () Bool)

(assert (=> b!339352 (= e!208206 e!208209)))

(declare-fun res!187505 () Bool)

(assert (=> b!339352 (=> (not res!187505) (not e!208209))))

(declare-datatypes ((SeekEntryResult!3255 0))(
  ( (MissingZero!3255 (index!15199 (_ BitVec 32))) (Found!3255 (index!15200 (_ BitVec 32))) (Intermediate!3255 (undefined!4067 Bool) (index!15201 (_ BitVec 32)) (x!33814 (_ BitVec 32))) (Undefined!3255) (MissingVacant!3255 (index!15202 (_ BitVec 32))) )
))
(declare-fun lt!161194 () SeekEntryResult!3255)

(assert (=> b!339352 (= res!187505 (and (not (is-Found!3255 lt!161194)) (is-MissingZero!3255 lt!161194)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17781 (_ BitVec 32)) SeekEntryResult!3255)

(assert (=> b!339352 (= lt!161194 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!339353 () Bool)

(declare-fun res!187507 () Bool)

(assert (=> b!339353 (=> (not res!187507) (not e!208206))))

(assert (=> b!339353 (= res!187507 (and (= (size!8764 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8763 _keys!1895) (size!8764 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!339354 () Bool)

(declare-fun e!208210 () Bool)

(assert (=> b!339354 (= e!208210 (and e!208212 mapRes!12075))))

(declare-fun condMapEmpty!12075 () Bool)

(declare-fun mapDefault!12075 () ValueCell!3209)

