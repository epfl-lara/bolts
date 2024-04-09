; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33626 () Bool)

(assert start!33626)

(declare-fun b_free!6853 () Bool)

(declare-fun b_next!6853 () Bool)

(assert (=> start!33626 (= b_free!6853 (not b_next!6853))))

(declare-fun tp!24063 () Bool)

(declare-fun b_and!14051 () Bool)

(assert (=> start!33626 (= tp!24063 b_and!14051)))

(declare-fun b!333408 () Bool)

(declare-fun res!183735 () Bool)

(declare-fun e!204731 () Bool)

(assert (=> b!333408 (=> (not res!183735) (not e!204731))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10051 0))(
  ( (V!10052 (val!3447 Int)) )
))
(declare-fun zeroValue!1467 () V!10051)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3059 0))(
  ( (ValueCellFull!3059 (v!5605 V!10051)) (EmptyCell!3059) )
))
(declare-datatypes ((array!17205 0))(
  ( (array!17206 (arr!8130 (Array (_ BitVec 32) ValueCell!3059)) (size!8482 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17205)

(declare-datatypes ((array!17207 0))(
  ( (array!17208 (arr!8131 (Array (_ BitVec 32) (_ BitVec 64))) (size!8483 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17207)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10051)

(declare-datatypes ((tuple2!5012 0))(
  ( (tuple2!5013 (_1!2516 (_ BitVec 64)) (_2!2516 V!10051)) )
))
(declare-datatypes ((List!4654 0))(
  ( (Nil!4651) (Cons!4650 (h!5506 tuple2!5012) (t!9750 List!4654)) )
))
(declare-datatypes ((ListLongMap!3939 0))(
  ( (ListLongMap!3940 (toList!1985 List!4654)) )
))
(declare-fun contains!2025 (ListLongMap!3939 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1508 (array!17207 array!17205 (_ BitVec 32) (_ BitVec 32) V!10051 V!10051 (_ BitVec 32) Int) ListLongMap!3939)

(assert (=> b!333408 (= res!183735 (not (contains!2025 (getCurrentListMap!1508 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!333409 () Bool)

(declare-fun e!204735 () Bool)

(declare-fun tp_is_empty!6805 () Bool)

(assert (=> b!333409 (= e!204735 tp_is_empty!6805)))

(declare-fun mapNonEmpty!11604 () Bool)

(declare-fun mapRes!11604 () Bool)

(declare-fun tp!24062 () Bool)

(declare-fun e!204733 () Bool)

(assert (=> mapNonEmpty!11604 (= mapRes!11604 (and tp!24062 e!204733))))

(declare-fun mapRest!11604 () (Array (_ BitVec 32) ValueCell!3059))

(declare-fun mapKey!11604 () (_ BitVec 32))

(declare-fun mapValue!11604 () ValueCell!3059)

(assert (=> mapNonEmpty!11604 (= (arr!8130 _values!1525) (store mapRest!11604 mapKey!11604 mapValue!11604))))

(declare-fun b!333411 () Bool)

(declare-fun res!183737 () Bool)

(assert (=> b!333411 (=> (not res!183737) (not e!204731))))

(declare-datatypes ((List!4655 0))(
  ( (Nil!4652) (Cons!4651 (h!5507 (_ BitVec 64)) (t!9751 List!4655)) )
))
(declare-fun arrayNoDuplicates!0 (array!17207 (_ BitVec 32) List!4655) Bool)

(assert (=> b!333411 (= res!183737 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4652))))

(declare-fun b!333412 () Bool)

(declare-fun res!183738 () Bool)

(assert (=> b!333412 (=> (not res!183738) (not e!204731))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17207 (_ BitVec 32)) Bool)

(assert (=> b!333412 (= res!183738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!333413 () Bool)

(declare-fun res!183739 () Bool)

(assert (=> b!333413 (=> (not res!183739) (not e!204731))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333413 (= res!183739 (validKeyInArray!0 k!1348))))

(declare-fun b!333414 () Bool)

(assert (=> b!333414 (= e!204731 false)))

(declare-datatypes ((SeekEntryResult!3155 0))(
  ( (MissingZero!3155 (index!14799 (_ BitVec 32))) (Found!3155 (index!14800 (_ BitVec 32))) (Intermediate!3155 (undefined!3967 Bool) (index!14801 (_ BitVec 32)) (x!33244 (_ BitVec 32))) (Undefined!3155) (MissingVacant!3155 (index!14802 (_ BitVec 32))) )
))
(declare-fun lt!159342 () SeekEntryResult!3155)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17207 (_ BitVec 32)) SeekEntryResult!3155)

(assert (=> b!333414 (= lt!159342 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11604 () Bool)

(assert (=> mapIsEmpty!11604 mapRes!11604))

(declare-fun b!333415 () Bool)

(declare-fun e!204732 () Bool)

(assert (=> b!333415 (= e!204732 (and e!204735 mapRes!11604))))

(declare-fun condMapEmpty!11604 () Bool)

(declare-fun mapDefault!11604 () ValueCell!3059)

