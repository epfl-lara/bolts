; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33758 () Bool)

(assert start!33758)

(declare-fun b_free!6985 () Bool)

(declare-fun b_next!6985 () Bool)

(assert (=> start!33758 (= b_free!6985 (not b_next!6985))))

(declare-fun tp!24459 () Bool)

(declare-fun b_and!14183 () Bool)

(assert (=> start!33758 (= tp!24459 b_and!14183)))

(declare-fun res!185286 () Bool)

(declare-fun e!205993 () Bool)

(assert (=> start!33758 (=> (not res!185286) (not e!205993))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33758 (= res!185286 (validMask!0 mask!2385))))

(assert (=> start!33758 e!205993))

(assert (=> start!33758 true))

(declare-fun tp_is_empty!6937 () Bool)

(assert (=> start!33758 tp_is_empty!6937))

(assert (=> start!33758 tp!24459))

(declare-datatypes ((V!10227 0))(
  ( (V!10228 (val!3513 Int)) )
))
(declare-datatypes ((ValueCell!3125 0))(
  ( (ValueCellFull!3125 (v!5671 V!10227)) (EmptyCell!3125) )
))
(declare-datatypes ((array!17453 0))(
  ( (array!17454 (arr!8254 (Array (_ BitVec 32) ValueCell!3125)) (size!8606 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17453)

(declare-fun e!205994 () Bool)

(declare-fun array_inv!6118 (array!17453) Bool)

(assert (=> start!33758 (and (array_inv!6118 _values!1525) e!205994)))

(declare-datatypes ((array!17455 0))(
  ( (array!17456 (arr!8255 (Array (_ BitVec 32) (_ BitVec 64))) (size!8607 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17455)

(declare-fun array_inv!6119 (array!17455) Bool)

(assert (=> start!33758 (array_inv!6119 _keys!1895)))

(declare-fun mapNonEmpty!11802 () Bool)

(declare-fun mapRes!11802 () Bool)

(declare-fun tp!24458 () Bool)

(declare-fun e!205992 () Bool)

(assert (=> mapNonEmpty!11802 (= mapRes!11802 (and tp!24458 e!205992))))

(declare-fun mapKey!11802 () (_ BitVec 32))

(declare-fun mapRest!11802 () (Array (_ BitVec 32) ValueCell!3125))

(declare-fun mapValue!11802 () ValueCell!3125)

(assert (=> mapNonEmpty!11802 (= (arr!8254 _values!1525) (store mapRest!11802 mapKey!11802 mapValue!11802))))

(declare-fun b!335550 () Bool)

(declare-fun res!185287 () Bool)

(assert (=> b!335550 (=> (not res!185287) (not e!205993))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17455 (_ BitVec 32)) Bool)

(assert (=> b!335550 (= res!185287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!335551 () Bool)

(declare-fun res!185288 () Bool)

(assert (=> b!335551 (=> (not res!185288) (not e!205993))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10227)

(declare-fun zeroValue!1467 () V!10227)

(declare-datatypes ((tuple2!5104 0))(
  ( (tuple2!5105 (_1!2562 (_ BitVec 64)) (_2!2562 V!10227)) )
))
(declare-datatypes ((List!4744 0))(
  ( (Nil!4741) (Cons!4740 (h!5596 tuple2!5104) (t!9840 List!4744)) )
))
(declare-datatypes ((ListLongMap!4031 0))(
  ( (ListLongMap!4032 (toList!2031 List!4744)) )
))
(declare-fun contains!2071 (ListLongMap!4031 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1551 (array!17455 array!17453 (_ BitVec 32) (_ BitVec 32) V!10227 V!10227 (_ BitVec 32) Int) ListLongMap!4031)

(assert (=> b!335551 (= res!185288 (not (contains!2071 (getCurrentListMap!1551 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!335552 () Bool)

(assert (=> b!335552 (= e!205992 tp_is_empty!6937)))

(declare-fun b!335553 () Bool)

(declare-fun e!205995 () Bool)

(assert (=> b!335553 (= e!205995 tp_is_empty!6937)))

(declare-fun b!335554 () Bool)

(declare-fun res!185283 () Bool)

(assert (=> b!335554 (=> (not res!185283) (not e!205993))))

(declare-datatypes ((List!4745 0))(
  ( (Nil!4742) (Cons!4741 (h!5597 (_ BitVec 64)) (t!9841 List!4745)) )
))
(declare-fun arrayNoDuplicates!0 (array!17455 (_ BitVec 32) List!4745) Bool)

(assert (=> b!335554 (= res!185283 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4742))))

(declare-fun b!335555 () Bool)

(assert (=> b!335555 (= e!205993 false)))

(declare-datatypes ((SeekEntryResult!3201 0))(
  ( (MissingZero!3201 (index!14983 (_ BitVec 32))) (Found!3201 (index!14984 (_ BitVec 32))) (Intermediate!3201 (undefined!4013 Bool) (index!14985 (_ BitVec 32)) (x!33466 (_ BitVec 32))) (Undefined!3201) (MissingVacant!3201 (index!14986 (_ BitVec 32))) )
))
(declare-fun lt!159900 () SeekEntryResult!3201)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17455 (_ BitVec 32)) SeekEntryResult!3201)

(assert (=> b!335555 (= lt!159900 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!335556 () Bool)

(declare-fun res!185285 () Bool)

(assert (=> b!335556 (=> (not res!185285) (not e!205993))))

(assert (=> b!335556 (= res!185285 (and (= (size!8606 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8607 _keys!1895) (size!8606 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!335557 () Bool)

(declare-fun res!185284 () Bool)

(assert (=> b!335557 (=> (not res!185284) (not e!205993))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335557 (= res!185284 (validKeyInArray!0 k!1348))))

(declare-fun b!335558 () Bool)

(assert (=> b!335558 (= e!205994 (and e!205995 mapRes!11802))))

(declare-fun condMapEmpty!11802 () Bool)

(declare-fun mapDefault!11802 () ValueCell!3125)

