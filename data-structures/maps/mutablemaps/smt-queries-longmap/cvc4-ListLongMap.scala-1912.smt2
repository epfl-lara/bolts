; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34074 () Bool)

(assert start!34074)

(declare-fun b_free!7145 () Bool)

(declare-fun b_next!7145 () Bool)

(assert (=> start!34074 (= b_free!7145 (not b_next!7145))))

(declare-fun tp!24959 () Bool)

(declare-fun b_and!14357 () Bool)

(assert (=> start!34074 (= tp!24959 b_and!14357)))

(declare-fun b!339199 () Bool)

(declare-datatypes ((Unit!10563 0))(
  ( (Unit!10564) )
))
(declare-fun e!208126 () Unit!10563)

(declare-fun Unit!10565 () Unit!10563)

(assert (=> b!339199 (= e!208126 Unit!10565)))

(declare-fun b!339200 () Bool)

(declare-fun res!187422 () Bool)

(declare-fun e!208123 () Bool)

(assert (=> b!339200 (=> (not res!187422) (not e!208123))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10439 0))(
  ( (V!10440 (val!3593 Int)) )
))
(declare-fun zeroValue!1467 () V!10439)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3205 0))(
  ( (ValueCellFull!3205 (v!5758 V!10439)) (EmptyCell!3205) )
))
(declare-datatypes ((array!17765 0))(
  ( (array!17766 (arr!8403 (Array (_ BitVec 32) ValueCell!3205)) (size!8755 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17765)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10439)

(declare-datatypes ((array!17767 0))(
  ( (array!17768 (arr!8404 (Array (_ BitVec 32) (_ BitVec 64))) (size!8756 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17767)

(declare-datatypes ((tuple2!5206 0))(
  ( (tuple2!5207 (_1!2613 (_ BitVec 64)) (_2!2613 V!10439)) )
))
(declare-datatypes ((List!4849 0))(
  ( (Nil!4846) (Cons!4845 (h!5701 tuple2!5206) (t!9959 List!4849)) )
))
(declare-datatypes ((ListLongMap!4133 0))(
  ( (ListLongMap!4134 (toList!2082 List!4849)) )
))
(declare-fun contains!2129 (ListLongMap!4133 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1602 (array!17767 array!17765 (_ BitVec 32) (_ BitVec 32) V!10439 V!10439 (_ BitVec 32) Int) ListLongMap!4133)

(assert (=> b!339200 (= res!187422 (not (contains!2129 (getCurrentListMap!1602 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!339201 () Bool)

(declare-fun e!208128 () Bool)

(assert (=> b!339201 (= e!208123 e!208128)))

(declare-fun res!187423 () Bool)

(assert (=> b!339201 (=> (not res!187423) (not e!208128))))

(declare-datatypes ((SeekEntryResult!3252 0))(
  ( (MissingZero!3252 (index!15187 (_ BitVec 32))) (Found!3252 (index!15188 (_ BitVec 32))) (Intermediate!3252 (undefined!4064 Bool) (index!15189 (_ BitVec 32)) (x!33795 (_ BitVec 32))) (Undefined!3252) (MissingVacant!3252 (index!15190 (_ BitVec 32))) )
))
(declare-fun lt!161160 () SeekEntryResult!3252)

(assert (=> b!339201 (= res!187423 (and (not (is-Found!3252 lt!161160)) (is-MissingZero!3252 lt!161160)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17767 (_ BitVec 32)) SeekEntryResult!3252)

(assert (=> b!339201 (= lt!161160 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12063 () Bool)

(declare-fun mapRes!12063 () Bool)

(assert (=> mapIsEmpty!12063 mapRes!12063))

(declare-fun b!339202 () Bool)

(declare-fun res!187420 () Bool)

(assert (=> b!339202 (=> (not res!187420) (not e!208123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!339202 (= res!187420 (validKeyInArray!0 k!1348))))

(declare-fun b!339203 () Bool)

(declare-fun res!187421 () Bool)

(assert (=> b!339203 (=> (not res!187421) (not e!208123))))

(declare-datatypes ((List!4850 0))(
  ( (Nil!4847) (Cons!4846 (h!5702 (_ BitVec 64)) (t!9960 List!4850)) )
))
(declare-fun arrayNoDuplicates!0 (array!17767 (_ BitVec 32) List!4850) Bool)

(assert (=> b!339203 (= res!187421 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4847))))

(declare-fun res!187419 () Bool)

(assert (=> start!34074 (=> (not res!187419) (not e!208123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34074 (= res!187419 (validMask!0 mask!2385))))

(assert (=> start!34074 e!208123))

(assert (=> start!34074 true))

(declare-fun tp_is_empty!7097 () Bool)

(assert (=> start!34074 tp_is_empty!7097))

(assert (=> start!34074 tp!24959))

(declare-fun e!208124 () Bool)

(declare-fun array_inv!6222 (array!17765) Bool)

(assert (=> start!34074 (and (array_inv!6222 _values!1525) e!208124)))

(declare-fun array_inv!6223 (array!17767) Bool)

(assert (=> start!34074 (array_inv!6223 _keys!1895)))

(declare-fun b!339204 () Bool)

(declare-fun res!187418 () Bool)

(assert (=> b!339204 (=> (not res!187418) (not e!208123))))

(assert (=> b!339204 (= res!187418 (and (= (size!8755 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8756 _keys!1895) (size!8755 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!339205 () Bool)

(assert (=> b!339205 (= e!208128 false)))

(declare-fun lt!161159 () Unit!10563)

(assert (=> b!339205 (= lt!161159 e!208126)))

(declare-fun c!52478 () Bool)

(declare-fun arrayContainsKey!0 (array!17767 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!339205 (= c!52478 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!12063 () Bool)

(declare-fun tp!24960 () Bool)

(declare-fun e!208127 () Bool)

(assert (=> mapNonEmpty!12063 (= mapRes!12063 (and tp!24960 e!208127))))

(declare-fun mapRest!12063 () (Array (_ BitVec 32) ValueCell!3205))

(declare-fun mapKey!12063 () (_ BitVec 32))

(declare-fun mapValue!12063 () ValueCell!3205)

(assert (=> mapNonEmpty!12063 (= (arr!8403 _values!1525) (store mapRest!12063 mapKey!12063 mapValue!12063))))

(declare-fun b!339206 () Bool)

(declare-fun res!187424 () Bool)

(assert (=> b!339206 (=> (not res!187424) (not e!208123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17767 (_ BitVec 32)) Bool)

(assert (=> b!339206 (= res!187424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!339207 () Bool)

(declare-fun Unit!10566 () Unit!10563)

(assert (=> b!339207 (= e!208126 Unit!10566)))

(declare-fun lt!161158 () Unit!10563)

(declare-fun lemmaArrayContainsKeyThenInListMap!283 (array!17767 array!17765 (_ BitVec 32) (_ BitVec 32) V!10439 V!10439 (_ BitVec 64) (_ BitVec 32) Int) Unit!10563)

(declare-fun arrayScanForKey!0 (array!17767 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!339207 (= lt!161158 (lemmaArrayContainsKeyThenInListMap!283 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!339207 false))

(declare-fun b!339208 () Bool)

(assert (=> b!339208 (= e!208127 tp_is_empty!7097)))

(declare-fun b!339209 () Bool)

(declare-fun e!208122 () Bool)

(assert (=> b!339209 (= e!208122 tp_is_empty!7097)))

(declare-fun b!339210 () Bool)

(assert (=> b!339210 (= e!208124 (and e!208122 mapRes!12063))))

(declare-fun condMapEmpty!12063 () Bool)

(declare-fun mapDefault!12063 () ValueCell!3205)

