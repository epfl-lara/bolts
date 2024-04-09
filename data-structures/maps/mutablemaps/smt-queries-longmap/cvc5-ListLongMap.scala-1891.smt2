; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33844 () Bool)

(assert start!33844)

(declare-fun b_free!7015 () Bool)

(declare-fun b_next!7015 () Bool)

(assert (=> start!33844 (= b_free!7015 (not b_next!7015))))

(declare-fun tp!24558 () Bool)

(declare-fun b_and!14219 () Bool)

(assert (=> start!33844 (= tp!24558 b_and!14219)))

(declare-fun b!336364 () Bool)

(declare-fun e!206480 () Bool)

(declare-fun tp_is_empty!6967 () Bool)

(assert (=> b!336364 (= e!206480 tp_is_empty!6967)))

(declare-fun b!336365 () Bool)

(declare-fun res!185720 () Bool)

(declare-fun e!206476 () Bool)

(assert (=> b!336365 (=> (not res!185720) (not e!206476))))

(declare-datatypes ((array!17513 0))(
  ( (array!17514 (arr!8281 (Array (_ BitVec 32) (_ BitVec 64))) (size!8633 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17513)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17513 (_ BitVec 32)) Bool)

(assert (=> b!336365 (= res!185720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!336366 () Bool)

(declare-fun res!185717 () Bool)

(assert (=> b!336366 (=> (not res!185717) (not e!206476))))

(declare-datatypes ((List!4764 0))(
  ( (Nil!4761) (Cons!4760 (h!5616 (_ BitVec 64)) (t!9866 List!4764)) )
))
(declare-fun arrayNoDuplicates!0 (array!17513 (_ BitVec 32) List!4764) Bool)

(assert (=> b!336366 (= res!185717 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4761))))

(declare-fun b!336367 () Bool)

(declare-fun e!206479 () Bool)

(assert (=> b!336367 (= e!206479 false)))

(declare-fun lt!160236 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!17513 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!336367 (= lt!160236 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!336368 () Bool)

(assert (=> b!336368 (= e!206476 e!206479)))

(declare-fun res!185721 () Bool)

(assert (=> b!336368 (=> (not res!185721) (not e!206479))))

(declare-datatypes ((SeekEntryResult!3210 0))(
  ( (MissingZero!3210 (index!15019 (_ BitVec 32))) (Found!3210 (index!15020 (_ BitVec 32))) (Intermediate!3210 (undefined!4022 Bool) (index!15021 (_ BitVec 32)) (x!33545 (_ BitVec 32))) (Undefined!3210) (MissingVacant!3210 (index!15022 (_ BitVec 32))) )
))
(declare-fun lt!160235 () SeekEntryResult!3210)

(assert (=> b!336368 (= res!185721 (and (not (is-Found!3210 lt!160235)) (is-MissingZero!3210 lt!160235)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17513 (_ BitVec 32)) SeekEntryResult!3210)

(assert (=> b!336368 (= lt!160235 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11856 () Bool)

(declare-fun mapRes!11856 () Bool)

(assert (=> mapIsEmpty!11856 mapRes!11856))

(declare-fun b!336369 () Bool)

(declare-fun res!185722 () Bool)

(assert (=> b!336369 (=> (not res!185722) (not e!206476))))

(declare-datatypes ((V!10267 0))(
  ( (V!10268 (val!3528 Int)) )
))
(declare-fun zeroValue!1467 () V!10267)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3140 0))(
  ( (ValueCellFull!3140 (v!5689 V!10267)) (EmptyCell!3140) )
))
(declare-datatypes ((array!17515 0))(
  ( (array!17516 (arr!8282 (Array (_ BitVec 32) ValueCell!3140)) (size!8634 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17515)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10267)

(declare-datatypes ((tuple2!5126 0))(
  ( (tuple2!5127 (_1!2573 (_ BitVec 64)) (_2!2573 V!10267)) )
))
(declare-datatypes ((List!4765 0))(
  ( (Nil!4762) (Cons!4761 (h!5617 tuple2!5126) (t!9867 List!4765)) )
))
(declare-datatypes ((ListLongMap!4053 0))(
  ( (ListLongMap!4054 (toList!2042 List!4765)) )
))
(declare-fun contains!2085 (ListLongMap!4053 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1562 (array!17513 array!17515 (_ BitVec 32) (_ BitVec 32) V!10267 V!10267 (_ BitVec 32) Int) ListLongMap!4053)

(assert (=> b!336369 (= res!185722 (not (contains!2085 (getCurrentListMap!1562 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!336370 () Bool)

(declare-fun res!185723 () Bool)

(assert (=> b!336370 (=> (not res!185723) (not e!206476))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336370 (= res!185723 (validKeyInArray!0 k!1348))))

(declare-fun res!185716 () Bool)

(assert (=> start!33844 (=> (not res!185716) (not e!206476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33844 (= res!185716 (validMask!0 mask!2385))))

(assert (=> start!33844 e!206476))

(assert (=> start!33844 true))

(assert (=> start!33844 tp_is_empty!6967))

(assert (=> start!33844 tp!24558))

(declare-fun e!206481 () Bool)

(declare-fun array_inv!6138 (array!17515) Bool)

(assert (=> start!33844 (and (array_inv!6138 _values!1525) e!206481)))

(declare-fun array_inv!6139 (array!17513) Bool)

(assert (=> start!33844 (array_inv!6139 _keys!1895)))

(declare-fun mapNonEmpty!11856 () Bool)

(declare-fun tp!24557 () Bool)

(declare-fun e!206477 () Bool)

(assert (=> mapNonEmpty!11856 (= mapRes!11856 (and tp!24557 e!206477))))

(declare-fun mapValue!11856 () ValueCell!3140)

(declare-fun mapRest!11856 () (Array (_ BitVec 32) ValueCell!3140))

(declare-fun mapKey!11856 () (_ BitVec 32))

(assert (=> mapNonEmpty!11856 (= (arr!8282 _values!1525) (store mapRest!11856 mapKey!11856 mapValue!11856))))

(declare-fun b!336371 () Bool)

(declare-fun res!185719 () Bool)

(assert (=> b!336371 (=> (not res!185719) (not e!206479))))

(declare-fun arrayContainsKey!0 (array!17513 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336371 (= res!185719 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!336372 () Bool)

(assert (=> b!336372 (= e!206477 tp_is_empty!6967)))

(declare-fun b!336373 () Bool)

(assert (=> b!336373 (= e!206481 (and e!206480 mapRes!11856))))

(declare-fun condMapEmpty!11856 () Bool)

(declare-fun mapDefault!11856 () ValueCell!3140)

