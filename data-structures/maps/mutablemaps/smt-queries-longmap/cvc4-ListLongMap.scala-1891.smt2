; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33848 () Bool)

(assert start!33848)

(declare-fun b_free!7019 () Bool)

(declare-fun b_next!7019 () Bool)

(assert (=> start!33848 (= b_free!7019 (not b_next!7019))))

(declare-fun tp!24570 () Bool)

(declare-fun b_and!14223 () Bool)

(assert (=> start!33848 (= tp!24570 b_and!14223)))

(declare-fun b!336430 () Bool)

(declare-fun e!206516 () Bool)

(declare-fun tp_is_empty!6971 () Bool)

(assert (=> b!336430 (= e!206516 tp_is_empty!6971)))

(declare-fun res!185765 () Bool)

(declare-fun e!206512 () Bool)

(assert (=> start!33848 (=> (not res!185765) (not e!206512))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33848 (= res!185765 (validMask!0 mask!2385))))

(assert (=> start!33848 e!206512))

(assert (=> start!33848 true))

(assert (=> start!33848 tp_is_empty!6971))

(assert (=> start!33848 tp!24570))

(declare-datatypes ((V!10271 0))(
  ( (V!10272 (val!3530 Int)) )
))
(declare-datatypes ((ValueCell!3142 0))(
  ( (ValueCellFull!3142 (v!5691 V!10271)) (EmptyCell!3142) )
))
(declare-datatypes ((array!17521 0))(
  ( (array!17522 (arr!8285 (Array (_ BitVec 32) ValueCell!3142)) (size!8637 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17521)

(declare-fun e!206517 () Bool)

(declare-fun array_inv!6142 (array!17521) Bool)

(assert (=> start!33848 (and (array_inv!6142 _values!1525) e!206517)))

(declare-datatypes ((array!17523 0))(
  ( (array!17524 (arr!8286 (Array (_ BitVec 32) (_ BitVec 64))) (size!8638 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17523)

(declare-fun array_inv!6143 (array!17523) Bool)

(assert (=> start!33848 (array_inv!6143 _keys!1895)))

(declare-fun mapIsEmpty!11862 () Bool)

(declare-fun mapRes!11862 () Bool)

(assert (=> mapIsEmpty!11862 mapRes!11862))

(declare-fun b!336431 () Bool)

(declare-fun res!185766 () Bool)

(assert (=> b!336431 (=> (not res!185766) (not e!206512))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336431 (= res!185766 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!11862 () Bool)

(declare-fun tp!24569 () Bool)

(assert (=> mapNonEmpty!11862 (= mapRes!11862 (and tp!24569 e!206516))))

(declare-fun mapKey!11862 () (_ BitVec 32))

(declare-fun mapValue!11862 () ValueCell!3142)

(declare-fun mapRest!11862 () (Array (_ BitVec 32) ValueCell!3142))

(assert (=> mapNonEmpty!11862 (= (arr!8285 _values!1525) (store mapRest!11862 mapKey!11862 mapValue!11862))))

(declare-fun b!336432 () Bool)

(declare-fun e!206514 () Bool)

(assert (=> b!336432 (= e!206512 e!206514)))

(declare-fun res!185768 () Bool)

(assert (=> b!336432 (=> (not res!185768) (not e!206514))))

(declare-datatypes ((SeekEntryResult!3212 0))(
  ( (MissingZero!3212 (index!15027 (_ BitVec 32))) (Found!3212 (index!15028 (_ BitVec 32))) (Intermediate!3212 (undefined!4024 Bool) (index!15029 (_ BitVec 32)) (x!33547 (_ BitVec 32))) (Undefined!3212) (MissingVacant!3212 (index!15030 (_ BitVec 32))) )
))
(declare-fun lt!160248 () SeekEntryResult!3212)

(assert (=> b!336432 (= res!185768 (and (not (is-Found!3212 lt!160248)) (is-MissingZero!3212 lt!160248)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17523 (_ BitVec 32)) SeekEntryResult!3212)

(assert (=> b!336432 (= lt!160248 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!336433 () Bool)

(declare-fun res!185769 () Bool)

(assert (=> b!336433 (=> (not res!185769) (not e!206512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17523 (_ BitVec 32)) Bool)

(assert (=> b!336433 (= res!185769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!336434 () Bool)

(declare-fun res!185767 () Bool)

(assert (=> b!336434 (=> (not res!185767) (not e!206512))))

(declare-fun zeroValue!1467 () V!10271)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10271)

(declare-datatypes ((tuple2!5130 0))(
  ( (tuple2!5131 (_1!2575 (_ BitVec 64)) (_2!2575 V!10271)) )
))
(declare-datatypes ((List!4768 0))(
  ( (Nil!4765) (Cons!4764 (h!5620 tuple2!5130) (t!9870 List!4768)) )
))
(declare-datatypes ((ListLongMap!4057 0))(
  ( (ListLongMap!4058 (toList!2044 List!4768)) )
))
(declare-fun contains!2087 (ListLongMap!4057 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1564 (array!17523 array!17521 (_ BitVec 32) (_ BitVec 32) V!10271 V!10271 (_ BitVec 32) Int) ListLongMap!4057)

(assert (=> b!336434 (= res!185767 (not (contains!2087 (getCurrentListMap!1564 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!336435 () Bool)

(declare-fun e!206513 () Bool)

(assert (=> b!336435 (= e!206513 tp_is_empty!6971)))

(declare-fun b!336436 () Bool)

(declare-fun res!185770 () Bool)

(assert (=> b!336436 (=> (not res!185770) (not e!206512))))

(declare-datatypes ((List!4769 0))(
  ( (Nil!4766) (Cons!4765 (h!5621 (_ BitVec 64)) (t!9871 List!4769)) )
))
(declare-fun arrayNoDuplicates!0 (array!17523 (_ BitVec 32) List!4769) Bool)

(assert (=> b!336436 (= res!185770 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4766))))

(declare-fun b!336437 () Bool)

(declare-fun res!185771 () Bool)

(assert (=> b!336437 (=> (not res!185771) (not e!206514))))

(declare-fun arrayContainsKey!0 (array!17523 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336437 (= res!185771 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!336438 () Bool)

(declare-fun res!185764 () Bool)

(assert (=> b!336438 (=> (not res!185764) (not e!206512))))

(assert (=> b!336438 (= res!185764 (and (= (size!8637 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8638 _keys!1895) (size!8637 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!336439 () Bool)

(assert (=> b!336439 (= e!206514 false)))

(declare-fun lt!160247 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17523 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!336439 (= lt!160247 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!336440 () Bool)

(assert (=> b!336440 (= e!206517 (and e!206513 mapRes!11862))))

(declare-fun condMapEmpty!11862 () Bool)

(declare-fun mapDefault!11862 () ValueCell!3142)

