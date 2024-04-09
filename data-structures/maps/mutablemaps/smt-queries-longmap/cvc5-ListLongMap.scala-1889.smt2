; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33812 () Bool)

(assert start!33812)

(declare-fun b_free!7003 () Bool)

(declare-fun b_next!7003 () Bool)

(assert (=> start!33812 (= b_free!7003 (not b_next!7003))))

(declare-fun tp!24518 () Bool)

(declare-fun b_and!14205 () Bool)

(assert (=> start!33812 (= tp!24518 b_and!14205)))

(declare-fun b!336051 () Bool)

(declare-fun res!185541 () Bool)

(declare-fun e!206292 () Bool)

(assert (=> b!336051 (=> (not res!185541) (not e!206292))))

(declare-datatypes ((array!17491 0))(
  ( (array!17492 (arr!8271 (Array (_ BitVec 32) (_ BitVec 64))) (size!8623 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17491)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17491 (_ BitVec 32)) Bool)

(assert (=> b!336051 (= res!185541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!336052 () Bool)

(declare-fun e!206294 () Bool)

(declare-fun tp_is_empty!6955 () Bool)

(assert (=> b!336052 (= e!206294 tp_is_empty!6955)))

(declare-fun b!336053 () Bool)

(declare-fun e!206290 () Bool)

(assert (=> b!336053 (= e!206292 e!206290)))

(declare-fun res!185543 () Bool)

(assert (=> b!336053 (=> (not res!185543) (not e!206290))))

(declare-datatypes ((SeekEntryResult!3207 0))(
  ( (MissingZero!3207 (index!15007 (_ BitVec 32))) (Found!3207 (index!15008 (_ BitVec 32))) (Intermediate!3207 (undefined!4019 Bool) (index!15009 (_ BitVec 32)) (x!33516 (_ BitVec 32))) (Undefined!3207) (MissingVacant!3207 (index!15010 (_ BitVec 32))) )
))
(declare-fun lt!160119 () SeekEntryResult!3207)

(assert (=> b!336053 (= res!185543 (and (not (is-Found!3207 lt!160119)) (is-MissingZero!3207 lt!160119)))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17491 (_ BitVec 32)) SeekEntryResult!3207)

(assert (=> b!336053 (= lt!160119 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!336054 () Bool)

(declare-fun res!185546 () Bool)

(assert (=> b!336054 (=> (not res!185546) (not e!206292))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336054 (= res!185546 (validKeyInArray!0 k!1348))))

(declare-fun b!336055 () Bool)

(declare-fun res!185542 () Bool)

(assert (=> b!336055 (=> (not res!185542) (not e!206292))))

(declare-datatypes ((V!10251 0))(
  ( (V!10252 (val!3522 Int)) )
))
(declare-datatypes ((ValueCell!3134 0))(
  ( (ValueCellFull!3134 (v!5682 V!10251)) (EmptyCell!3134) )
))
(declare-datatypes ((array!17493 0))(
  ( (array!17494 (arr!8272 (Array (_ BitVec 32) ValueCell!3134)) (size!8624 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17493)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!336055 (= res!185542 (and (= (size!8624 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8623 _keys!1895) (size!8624 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!185540 () Bool)

(assert (=> start!33812 (=> (not res!185540) (not e!206292))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33812 (= res!185540 (validMask!0 mask!2385))))

(assert (=> start!33812 e!206292))

(assert (=> start!33812 true))

(assert (=> start!33812 tp_is_empty!6955))

(assert (=> start!33812 tp!24518))

(declare-fun e!206291 () Bool)

(declare-fun array_inv!6130 (array!17493) Bool)

(assert (=> start!33812 (and (array_inv!6130 _values!1525) e!206291)))

(declare-fun array_inv!6131 (array!17491) Bool)

(assert (=> start!33812 (array_inv!6131 _keys!1895)))

(declare-fun b!336056 () Bool)

(declare-fun res!185545 () Bool)

(assert (=> b!336056 (=> (not res!185545) (not e!206292))))

(declare-datatypes ((List!4757 0))(
  ( (Nil!4754) (Cons!4753 (h!5609 (_ BitVec 64)) (t!9857 List!4757)) )
))
(declare-fun arrayNoDuplicates!0 (array!17491 (_ BitVec 32) List!4757) Bool)

(assert (=> b!336056 (= res!185545 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4754))))

(declare-fun b!336057 () Bool)

(declare-fun res!185539 () Bool)

(assert (=> b!336057 (=> (not res!185539) (not e!206292))))

(declare-fun zeroValue!1467 () V!10251)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10251)

(declare-datatypes ((tuple2!5118 0))(
  ( (tuple2!5119 (_1!2569 (_ BitVec 64)) (_2!2569 V!10251)) )
))
(declare-datatypes ((List!4758 0))(
  ( (Nil!4755) (Cons!4754 (h!5610 tuple2!5118) (t!9858 List!4758)) )
))
(declare-datatypes ((ListLongMap!4045 0))(
  ( (ListLongMap!4046 (toList!2038 List!4758)) )
))
(declare-fun contains!2080 (ListLongMap!4045 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1558 (array!17491 array!17493 (_ BitVec 32) (_ BitVec 32) V!10251 V!10251 (_ BitVec 32) Int) ListLongMap!4045)

(assert (=> b!336057 (= res!185539 (not (contains!2080 (getCurrentListMap!1558 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapNonEmpty!11835 () Bool)

(declare-fun mapRes!11835 () Bool)

(declare-fun tp!24519 () Bool)

(assert (=> mapNonEmpty!11835 (= mapRes!11835 (and tp!24519 e!206294))))

(declare-fun mapKey!11835 () (_ BitVec 32))

(declare-fun mapValue!11835 () ValueCell!3134)

(declare-fun mapRest!11835 () (Array (_ BitVec 32) ValueCell!3134))

(assert (=> mapNonEmpty!11835 (= (arr!8272 _values!1525) (store mapRest!11835 mapKey!11835 mapValue!11835))))

(declare-fun b!336058 () Bool)

(declare-fun e!206295 () Bool)

(assert (=> b!336058 (= e!206295 tp_is_empty!6955)))

(declare-fun b!336059 () Bool)

(assert (=> b!336059 (= e!206290 (or (bvsge #b00000000000000000000000000000000 (size!8623 _keys!1895)) (bvsge (size!8623 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun b!336060 () Bool)

(declare-fun res!185544 () Bool)

(assert (=> b!336060 (=> (not res!185544) (not e!206290))))

(declare-fun arrayContainsKey!0 (array!17491 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336060 (= res!185544 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!11835 () Bool)

(assert (=> mapIsEmpty!11835 mapRes!11835))

(declare-fun b!336061 () Bool)

(assert (=> b!336061 (= e!206291 (and e!206295 mapRes!11835))))

(declare-fun condMapEmpty!11835 () Bool)

(declare-fun mapDefault!11835 () ValueCell!3134)

