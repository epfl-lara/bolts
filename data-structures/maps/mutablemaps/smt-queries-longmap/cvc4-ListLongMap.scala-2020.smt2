; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35208 () Bool)

(assert start!35208)

(declare-fun b_free!7793 () Bool)

(declare-fun b_next!7793 () Bool)

(assert (=> start!35208 (= b_free!7793 (not b_next!7793))))

(declare-fun tp!26970 () Bool)

(declare-fun b_and!15049 () Bool)

(assert (=> start!35208 (= tp!26970 b_and!15049)))

(declare-fun mapNonEmpty!13101 () Bool)

(declare-fun mapRes!13101 () Bool)

(declare-fun tp!26969 () Bool)

(declare-fun e!215988 () Bool)

(assert (=> mapNonEmpty!13101 (= mapRes!13101 (and tp!26969 e!215988))))

(declare-datatypes ((V!11303 0))(
  ( (V!11304 (val!3917 Int)) )
))
(declare-datatypes ((ValueCell!3529 0))(
  ( (ValueCellFull!3529 (v!6104 V!11303)) (EmptyCell!3529) )
))
(declare-fun mapRest!13101 () (Array (_ BitVec 32) ValueCell!3529))

(declare-fun mapKey!13101 () (_ BitVec 32))

(declare-datatypes ((array!19039 0))(
  ( (array!19040 (arr!9018 (Array (_ BitVec 32) ValueCell!3529)) (size!9370 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19039)

(declare-fun mapValue!13101 () ValueCell!3529)

(assert (=> mapNonEmpty!13101 (= (arr!9018 _values!1525) (store mapRest!13101 mapKey!13101 mapValue!13101))))

(declare-fun b!352712 () Bool)

(declare-fun e!215991 () Bool)

(declare-datatypes ((SeekEntryResult!3468 0))(
  ( (MissingZero!3468 (index!16051 (_ BitVec 32))) (Found!3468 (index!16052 (_ BitVec 32))) (Intermediate!3468 (undefined!4280 Bool) (index!16053 (_ BitVec 32)) (x!35095 (_ BitVec 32))) (Undefined!3468) (MissingVacant!3468 (index!16054 (_ BitVec 32))) )
))
(declare-fun lt!165315 () SeekEntryResult!3468)

(assert (=> b!352712 (= e!215991 (and (not (is-Found!3468 lt!165315)) (not (is-MissingZero!3468 lt!165315)) (not (is-MissingVacant!3468 lt!165315)) (not (is-Undefined!3468 lt!165315))))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!19041 0))(
  ( (array!19042 (arr!9019 (Array (_ BitVec 32) (_ BitVec 64))) (size!9371 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19041)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19041 (_ BitVec 32)) SeekEntryResult!3468)

(assert (=> b!352712 (= lt!165315 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!352714 () Bool)

(declare-fun res!195674 () Bool)

(assert (=> b!352714 (=> (not res!195674) (not e!215991))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!352714 (= res!195674 (and (= (size!9370 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9371 _keys!1895) (size!9370 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!352715 () Bool)

(declare-fun e!215987 () Bool)

(declare-fun tp_is_empty!7745 () Bool)

(assert (=> b!352715 (= e!215987 tp_is_empty!7745)))

(declare-fun mapIsEmpty!13101 () Bool)

(assert (=> mapIsEmpty!13101 mapRes!13101))

(declare-fun b!352716 () Bool)

(declare-fun e!215989 () Bool)

(assert (=> b!352716 (= e!215989 (and e!215987 mapRes!13101))))

(declare-fun condMapEmpty!13101 () Bool)

(declare-fun mapDefault!13101 () ValueCell!3529)

