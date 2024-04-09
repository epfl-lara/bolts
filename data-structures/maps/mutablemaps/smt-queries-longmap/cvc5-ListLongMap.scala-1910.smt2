; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34006 () Bool)

(assert start!34006)

(declare-fun b_free!7129 () Bool)

(declare-fun b_next!7129 () Bool)

(assert (=> start!34006 (= b_free!7129 (not b_next!7129))))

(declare-fun tp!24905 () Bool)

(declare-fun b_and!14337 () Bool)

(assert (=> start!34006 (= tp!24905 b_and!14337)))

(declare-fun b!338601 () Bool)

(declare-fun e!207763 () Bool)

(declare-datatypes ((array!17729 0))(
  ( (array!17730 (arr!8387 (Array (_ BitVec 32) (_ BitVec 64))) (size!8739 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17729)

(declare-datatypes ((SeekEntryResult!3245 0))(
  ( (MissingZero!3245 (index!15159 (_ BitVec 32))) (Found!3245 (index!15160 (_ BitVec 32))) (Intermediate!3245 (undefined!4057 Bool) (index!15161 (_ BitVec 32)) (x!33752 (_ BitVec 32))) (Undefined!3245) (MissingVacant!3245 (index!15162 (_ BitVec 32))) )
))
(declare-fun lt!160868 () SeekEntryResult!3245)

(assert (=> b!338601 (= e!207763 (and (= (select (arr!8387 _keys!1895) (index!15159 lt!160868)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge #b00000000000000000000000000000000 (size!8739 _keys!1895))))))

(declare-fun b!338602 () Bool)

(declare-fun e!207764 () Bool)

(declare-fun e!207761 () Bool)

(assert (=> b!338602 (= e!207764 e!207761)))

(declare-fun res!187124 () Bool)

(assert (=> b!338602 (=> (not res!187124) (not e!207761))))

(assert (=> b!338602 (= res!187124 (and (not (is-Found!3245 lt!160868)) (is-MissingZero!3245 lt!160868)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17729 (_ BitVec 32)) SeekEntryResult!3245)

(assert (=> b!338602 (= lt!160868 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!338603 () Bool)

(declare-fun res!187123 () Bool)

(assert (=> b!338603 (=> (not res!187123) (not e!207763))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!338603 (= res!187123 (inRange!0 (index!15159 lt!160868) mask!2385))))

(declare-fun b!338604 () Bool)

(declare-fun res!187122 () Bool)

(assert (=> b!338604 (=> (not res!187122) (not e!207764))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338604 (= res!187122 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!12033 () Bool)

(declare-fun mapRes!12033 () Bool)

(declare-fun tp!24906 () Bool)

(declare-fun e!207759 () Bool)

(assert (=> mapNonEmpty!12033 (= mapRes!12033 (and tp!24906 e!207759))))

(declare-datatypes ((V!10419 0))(
  ( (V!10420 (val!3585 Int)) )
))
(declare-datatypes ((ValueCell!3197 0))(
  ( (ValueCellFull!3197 (v!5748 V!10419)) (EmptyCell!3197) )
))
(declare-fun mapValue!12033 () ValueCell!3197)

(declare-fun mapRest!12033 () (Array (_ BitVec 32) ValueCell!3197))

(declare-fun mapKey!12033 () (_ BitVec 32))

(declare-datatypes ((array!17731 0))(
  ( (array!17732 (arr!8388 (Array (_ BitVec 32) ValueCell!3197)) (size!8740 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17731)

(assert (=> mapNonEmpty!12033 (= (arr!8388 _values!1525) (store mapRest!12033 mapKey!12033 mapValue!12033))))

(declare-fun b!338605 () Bool)

(declare-datatypes ((Unit!10530 0))(
  ( (Unit!10531) )
))
(declare-fun e!207762 () Unit!10530)

(declare-fun Unit!10532 () Unit!10530)

(assert (=> b!338605 (= e!207762 Unit!10532)))

(declare-fun zeroValue!1467 () V!10419)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10419)

(declare-fun lt!160869 () Unit!10530)

(declare-fun lemmaArrayContainsKeyThenInListMap!277 (array!17729 array!17731 (_ BitVec 32) (_ BitVec 32) V!10419 V!10419 (_ BitVec 64) (_ BitVec 32) Int) Unit!10530)

(declare-fun arrayScanForKey!0 (array!17729 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!338605 (= lt!160869 (lemmaArrayContainsKeyThenInListMap!277 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!338605 false))

(declare-fun b!338606 () Bool)

(declare-fun Unit!10533 () Unit!10530)

(assert (=> b!338606 (= e!207762 Unit!10533)))

(declare-fun b!338607 () Bool)

(declare-fun res!187118 () Bool)

(assert (=> b!338607 (=> (not res!187118) (not e!207764))))

(assert (=> b!338607 (= res!187118 (and (= (size!8740 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8739 _keys!1895) (size!8740 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!338608 () Bool)

(declare-fun res!187120 () Bool)

(assert (=> b!338608 (=> (not res!187120) (not e!207764))))

(declare-datatypes ((List!4837 0))(
  ( (Nil!4834) (Cons!4833 (h!5689 (_ BitVec 64)) (t!9943 List!4837)) )
))
(declare-fun arrayNoDuplicates!0 (array!17729 (_ BitVec 32) List!4837) Bool)

(assert (=> b!338608 (= res!187120 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4834))))

(declare-fun b!338609 () Bool)

(assert (=> b!338609 (= e!207761 e!207763)))

(declare-fun res!187121 () Bool)

(assert (=> b!338609 (=> (not res!187121) (not e!207763))))

(declare-fun lt!160866 () Bool)

(assert (=> b!338609 (= res!187121 (not lt!160866))))

(declare-fun lt!160867 () Unit!10530)

(assert (=> b!338609 (= lt!160867 e!207762)))

(declare-fun c!52376 () Bool)

(assert (=> b!338609 (= c!52376 lt!160866)))

(declare-fun arrayContainsKey!0 (array!17729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!338609 (= lt!160866 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun res!187119 () Bool)

(assert (=> start!34006 (=> (not res!187119) (not e!207764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34006 (= res!187119 (validMask!0 mask!2385))))

(assert (=> start!34006 e!207764))

(assert (=> start!34006 true))

(declare-fun tp_is_empty!7081 () Bool)

(assert (=> start!34006 tp_is_empty!7081))

(assert (=> start!34006 tp!24905))

(declare-fun e!207760 () Bool)

(declare-fun array_inv!6212 (array!17731) Bool)

(assert (=> start!34006 (and (array_inv!6212 _values!1525) e!207760)))

(declare-fun array_inv!6213 (array!17729) Bool)

(assert (=> start!34006 (array_inv!6213 _keys!1895)))

(declare-fun b!338610 () Bool)

(declare-fun e!207758 () Bool)

(assert (=> b!338610 (= e!207758 tp_is_empty!7081)))

(declare-fun b!338611 () Bool)

(declare-fun res!187117 () Bool)

(assert (=> b!338611 (=> (not res!187117) (not e!207764))))

(declare-datatypes ((tuple2!5196 0))(
  ( (tuple2!5197 (_1!2608 (_ BitVec 64)) (_2!2608 V!10419)) )
))
(declare-datatypes ((List!4838 0))(
  ( (Nil!4835) (Cons!4834 (h!5690 tuple2!5196) (t!9944 List!4838)) )
))
(declare-datatypes ((ListLongMap!4123 0))(
  ( (ListLongMap!4124 (toList!2077 List!4838)) )
))
(declare-fun contains!2122 (ListLongMap!4123 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1597 (array!17729 array!17731 (_ BitVec 32) (_ BitVec 32) V!10419 V!10419 (_ BitVec 32) Int) ListLongMap!4123)

(assert (=> b!338611 (= res!187117 (not (contains!2122 (getCurrentListMap!1597 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!338612 () Bool)

(assert (=> b!338612 (= e!207760 (and e!207758 mapRes!12033))))

(declare-fun condMapEmpty!12033 () Bool)

(declare-fun mapDefault!12033 () ValueCell!3197)

