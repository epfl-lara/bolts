; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34004 () Bool)

(assert start!34004)

(declare-fun b_free!7127 () Bool)

(declare-fun b_next!7127 () Bool)

(assert (=> start!34004 (= b_free!7127 (not b_next!7127))))

(declare-fun tp!24900 () Bool)

(declare-fun b_and!14335 () Bool)

(assert (=> start!34004 (= tp!24900 b_and!14335)))

(declare-fun b!338561 () Bool)

(declare-fun e!207740 () Bool)

(declare-fun e!207736 () Bool)

(assert (=> b!338561 (= e!207740 e!207736)))

(declare-fun res!187096 () Bool)

(assert (=> b!338561 (=> (not res!187096) (not e!207736))))

(declare-datatypes ((SeekEntryResult!3244 0))(
  ( (MissingZero!3244 (index!15155 (_ BitVec 32))) (Found!3244 (index!15156 (_ BitVec 32))) (Intermediate!3244 (undefined!4056 Bool) (index!15157 (_ BitVec 32)) (x!33743 (_ BitVec 32))) (Undefined!3244) (MissingVacant!3244 (index!15158 (_ BitVec 32))) )
))
(declare-fun lt!160855 () SeekEntryResult!3244)

(assert (=> b!338561 (= res!187096 (and (not (is-Found!3244 lt!160855)) (is-MissingZero!3244 lt!160855)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!17725 0))(
  ( (array!17726 (arr!8385 (Array (_ BitVec 32) (_ BitVec 64))) (size!8737 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17725)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17725 (_ BitVec 32)) SeekEntryResult!3244)

(assert (=> b!338561 (= lt!160855 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!338562 () Bool)

(declare-fun res!187093 () Bool)

(assert (=> b!338562 (=> (not res!187093) (not e!207740))))

(declare-datatypes ((V!10415 0))(
  ( (V!10416 (val!3584 Int)) )
))
(declare-datatypes ((ValueCell!3196 0))(
  ( (ValueCellFull!3196 (v!5747 V!10415)) (EmptyCell!3196) )
))
(declare-datatypes ((array!17727 0))(
  ( (array!17728 (arr!8386 (Array (_ BitVec 32) ValueCell!3196)) (size!8738 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17727)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!338562 (= res!187093 (and (= (size!8738 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8737 _keys!1895) (size!8738 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!338563 () Bool)

(declare-fun res!187091 () Bool)

(assert (=> b!338563 (=> (not res!187091) (not e!207740))))

(declare-datatypes ((List!4835 0))(
  ( (Nil!4832) (Cons!4831 (h!5687 (_ BitVec 64)) (t!9941 List!4835)) )
))
(declare-fun arrayNoDuplicates!0 (array!17725 (_ BitVec 32) List!4835) Bool)

(assert (=> b!338563 (= res!187091 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4832))))

(declare-fun b!338564 () Bool)

(declare-fun res!187095 () Bool)

(assert (=> b!338564 (=> (not res!187095) (not e!207740))))

(declare-fun zeroValue!1467 () V!10415)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10415)

(declare-datatypes ((tuple2!5194 0))(
  ( (tuple2!5195 (_1!2607 (_ BitVec 64)) (_2!2607 V!10415)) )
))
(declare-datatypes ((List!4836 0))(
  ( (Nil!4833) (Cons!4832 (h!5688 tuple2!5194) (t!9942 List!4836)) )
))
(declare-datatypes ((ListLongMap!4121 0))(
  ( (ListLongMap!4122 (toList!2076 List!4836)) )
))
(declare-fun contains!2121 (ListLongMap!4121 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1596 (array!17725 array!17727 (_ BitVec 32) (_ BitVec 32) V!10415 V!10415 (_ BitVec 32) Int) ListLongMap!4121)

(assert (=> b!338564 (= res!187095 (not (contains!2121 (getCurrentListMap!1596 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!338565 () Bool)

(assert (=> b!338565 (= e!207736 false)))

(declare-datatypes ((Unit!10526 0))(
  ( (Unit!10527) )
))
(declare-fun lt!160856 () Unit!10526)

(declare-fun e!207737 () Unit!10526)

(assert (=> b!338565 (= lt!160856 e!207737)))

(declare-fun c!52373 () Bool)

(declare-fun arrayContainsKey!0 (array!17725 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!338565 (= c!52373 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun res!187092 () Bool)

(assert (=> start!34004 (=> (not res!187092) (not e!207740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34004 (= res!187092 (validMask!0 mask!2385))))

(assert (=> start!34004 e!207740))

(assert (=> start!34004 true))

(declare-fun tp_is_empty!7079 () Bool)

(assert (=> start!34004 tp_is_empty!7079))

(assert (=> start!34004 tp!24900))

(declare-fun e!207741 () Bool)

(declare-fun array_inv!6210 (array!17727) Bool)

(assert (=> start!34004 (and (array_inv!6210 _values!1525) e!207741)))

(declare-fun array_inv!6211 (array!17725) Bool)

(assert (=> start!34004 (array_inv!6211 _keys!1895)))

(declare-fun mapNonEmpty!12030 () Bool)

(declare-fun mapRes!12030 () Bool)

(declare-fun tp!24899 () Bool)

(declare-fun e!207738 () Bool)

(assert (=> mapNonEmpty!12030 (= mapRes!12030 (and tp!24899 e!207738))))

(declare-fun mapKey!12030 () (_ BitVec 32))

(declare-fun mapValue!12030 () ValueCell!3196)

(declare-fun mapRest!12030 () (Array (_ BitVec 32) ValueCell!3196))

(assert (=> mapNonEmpty!12030 (= (arr!8386 _values!1525) (store mapRest!12030 mapKey!12030 mapValue!12030))))

(declare-fun b!338566 () Bool)

(assert (=> b!338566 (= e!207738 tp_is_empty!7079)))

(declare-fun b!338567 () Bool)

(declare-fun Unit!10528 () Unit!10526)

(assert (=> b!338567 (= e!207737 Unit!10528)))

(declare-fun lt!160857 () Unit!10526)

(declare-fun lemmaArrayContainsKeyThenInListMap!276 (array!17725 array!17727 (_ BitVec 32) (_ BitVec 32) V!10415 V!10415 (_ BitVec 64) (_ BitVec 32) Int) Unit!10526)

(declare-fun arrayScanForKey!0 (array!17725 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!338567 (= lt!160857 (lemmaArrayContainsKeyThenInListMap!276 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!338567 false))

(declare-fun b!338568 () Bool)

(declare-fun Unit!10529 () Unit!10526)

(assert (=> b!338568 (= e!207737 Unit!10529)))

(declare-fun b!338569 () Bool)

(declare-fun res!187094 () Bool)

(assert (=> b!338569 (=> (not res!187094) (not e!207740))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17725 (_ BitVec 32)) Bool)

(assert (=> b!338569 (= res!187094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!338570 () Bool)

(declare-fun res!187097 () Bool)

(assert (=> b!338570 (=> (not res!187097) (not e!207740))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338570 (= res!187097 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!12030 () Bool)

(assert (=> mapIsEmpty!12030 mapRes!12030))

(declare-fun b!338571 () Bool)

(declare-fun e!207739 () Bool)

(assert (=> b!338571 (= e!207739 tp_is_empty!7079)))

(declare-fun b!338572 () Bool)

(assert (=> b!338572 (= e!207741 (and e!207739 mapRes!12030))))

(declare-fun condMapEmpty!12030 () Bool)

(declare-fun mapDefault!12030 () ValueCell!3196)

