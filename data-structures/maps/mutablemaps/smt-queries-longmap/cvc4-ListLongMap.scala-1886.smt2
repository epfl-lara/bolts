; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33762 () Bool)

(assert start!33762)

(declare-fun b_free!6989 () Bool)

(declare-fun b_next!6989 () Bool)

(assert (=> start!33762 (= b_free!6989 (not b_next!6989))))

(declare-fun tp!24471 () Bool)

(declare-fun b_and!14187 () Bool)

(assert (=> start!33762 (= tp!24471 b_and!14187)))

(declare-fun b!335604 () Bool)

(declare-fun e!206024 () Bool)

(assert (=> b!335604 (= e!206024 false)))

(declare-datatypes ((SeekEntryResult!3203 0))(
  ( (MissingZero!3203 (index!14991 (_ BitVec 32))) (Found!3203 (index!14992 (_ BitVec 32))) (Intermediate!3203 (undefined!4015 Bool) (index!14993 (_ BitVec 32)) (x!33468 (_ BitVec 32))) (Undefined!3203) (MissingVacant!3203 (index!14994 (_ BitVec 32))) )
))
(declare-fun lt!159906 () SeekEntryResult!3203)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!17461 0))(
  ( (array!17462 (arr!8258 (Array (_ BitVec 32) (_ BitVec 64))) (size!8610 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17461)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17461 (_ BitVec 32)) SeekEntryResult!3203)

(assert (=> b!335604 (= lt!159906 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!335605 () Bool)

(declare-fun res!185319 () Bool)

(assert (=> b!335605 (=> (not res!185319) (not e!206024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335605 (= res!185319 (validKeyInArray!0 k!1348))))

(declare-fun res!185324 () Bool)

(assert (=> start!33762 (=> (not res!185324) (not e!206024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33762 (= res!185324 (validMask!0 mask!2385))))

(assert (=> start!33762 e!206024))

(assert (=> start!33762 true))

(declare-fun tp_is_empty!6941 () Bool)

(assert (=> start!33762 tp_is_empty!6941))

(assert (=> start!33762 tp!24471))

(declare-datatypes ((V!10231 0))(
  ( (V!10232 (val!3515 Int)) )
))
(declare-datatypes ((ValueCell!3127 0))(
  ( (ValueCellFull!3127 (v!5673 V!10231)) (EmptyCell!3127) )
))
(declare-datatypes ((array!17463 0))(
  ( (array!17464 (arr!8259 (Array (_ BitVec 32) ValueCell!3127)) (size!8611 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17463)

(declare-fun e!206025 () Bool)

(declare-fun array_inv!6122 (array!17463) Bool)

(assert (=> start!33762 (and (array_inv!6122 _values!1525) e!206025)))

(declare-fun array_inv!6123 (array!17461) Bool)

(assert (=> start!33762 (array_inv!6123 _keys!1895)))

(declare-fun b!335606 () Bool)

(declare-fun res!185323 () Bool)

(assert (=> b!335606 (=> (not res!185323) (not e!206024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17461 (_ BitVec 32)) Bool)

(assert (=> b!335606 (= res!185323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11808 () Bool)

(declare-fun mapRes!11808 () Bool)

(declare-fun tp!24470 () Bool)

(declare-fun e!206021 () Bool)

(assert (=> mapNonEmpty!11808 (= mapRes!11808 (and tp!24470 e!206021))))

(declare-fun mapRest!11808 () (Array (_ BitVec 32) ValueCell!3127))

(declare-fun mapValue!11808 () ValueCell!3127)

(declare-fun mapKey!11808 () (_ BitVec 32))

(assert (=> mapNonEmpty!11808 (= (arr!8259 _values!1525) (store mapRest!11808 mapKey!11808 mapValue!11808))))

(declare-fun b!335607 () Bool)

(assert (=> b!335607 (= e!206021 tp_is_empty!6941)))

(declare-fun b!335608 () Bool)

(declare-fun res!185320 () Bool)

(assert (=> b!335608 (=> (not res!185320) (not e!206024))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!335608 (= res!185320 (and (= (size!8611 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8610 _keys!1895) (size!8611 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!335609 () Bool)

(declare-fun e!206022 () Bool)

(assert (=> b!335609 (= e!206022 tp_is_empty!6941)))

(declare-fun mapIsEmpty!11808 () Bool)

(assert (=> mapIsEmpty!11808 mapRes!11808))

(declare-fun b!335610 () Bool)

(declare-fun res!185321 () Bool)

(assert (=> b!335610 (=> (not res!185321) (not e!206024))))

(declare-fun zeroValue!1467 () V!10231)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10231)

(declare-datatypes ((tuple2!5108 0))(
  ( (tuple2!5109 (_1!2564 (_ BitVec 64)) (_2!2564 V!10231)) )
))
(declare-datatypes ((List!4748 0))(
  ( (Nil!4745) (Cons!4744 (h!5600 tuple2!5108) (t!9844 List!4748)) )
))
(declare-datatypes ((ListLongMap!4035 0))(
  ( (ListLongMap!4036 (toList!2033 List!4748)) )
))
(declare-fun contains!2073 (ListLongMap!4035 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1553 (array!17461 array!17463 (_ BitVec 32) (_ BitVec 32) V!10231 V!10231 (_ BitVec 32) Int) ListLongMap!4035)

(assert (=> b!335610 (= res!185321 (not (contains!2073 (getCurrentListMap!1553 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!335611 () Bool)

(assert (=> b!335611 (= e!206025 (and e!206022 mapRes!11808))))

(declare-fun condMapEmpty!11808 () Bool)

(declare-fun mapDefault!11808 () ValueCell!3127)

