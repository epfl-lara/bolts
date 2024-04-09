; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4408 () Bool)

(assert start!4408)

(declare-fun b_free!1199 () Bool)

(declare-fun b_next!1199 () Bool)

(assert (=> start!4408 (= b_free!1199 (not b_next!1199))))

(declare-fun tp!5032 () Bool)

(declare-fun b_and!2021 () Bool)

(assert (=> start!4408 (= tp!5032 b_and!2021)))

(declare-fun b!34081 () Bool)

(declare-fun res!20671 () Bool)

(declare-fun e!21637 () Bool)

(assert (=> b!34081 (=> (not res!20671) (not e!21637))))

(declare-datatypes ((V!1895 0))(
  ( (V!1896 (val!803 Int)) )
))
(declare-datatypes ((ValueCell!577 0))(
  ( (ValueCellFull!577 (v!1897 V!1895)) (EmptyCell!577) )
))
(declare-datatypes ((array!2315 0))(
  ( (array!2316 (arr!1106 (Array (_ BitVec 32) ValueCell!577)) (size!1207 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2315)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2317 0))(
  ( (array!2318 (arr!1107 (Array (_ BitVec 32) (_ BitVec 64))) (size!1208 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2317)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!34081 (= res!20671 (and (= (size!1207 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1208 _keys!1833) (size!1207 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!34082 () Bool)

(declare-fun e!21636 () Bool)

(assert (=> b!34082 (= e!21637 e!21636)))

(declare-fun res!20666 () Bool)

(assert (=> b!34082 (=> (not res!20666) (not e!21636))))

(declare-datatypes ((tuple2!1296 0))(
  ( (tuple2!1297 (_1!658 (_ BitVec 64)) (_2!658 V!1895)) )
))
(declare-datatypes ((List!899 0))(
  ( (Nil!896) (Cons!895 (h!1462 tuple2!1296) (t!3604 List!899)) )
))
(declare-datatypes ((ListLongMap!877 0))(
  ( (ListLongMap!878 (toList!454 List!899)) )
))
(declare-fun lt!12600 () ListLongMap!877)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!396 (ListLongMap!877 (_ BitVec 64)) Bool)

(assert (=> b!34082 (= res!20666 (not (contains!396 lt!12600 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1895)

(declare-fun minValue!1443 () V!1895)

(declare-fun getCurrentListMap!275 (array!2317 array!2315 (_ BitVec 32) (_ BitVec 32) V!1895 V!1895 (_ BitVec 32) Int) ListLongMap!877)

(assert (=> b!34082 (= lt!12600 (getCurrentListMap!275 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun mapNonEmpty!1873 () Bool)

(declare-fun mapRes!1873 () Bool)

(declare-fun tp!5031 () Bool)

(declare-fun e!21638 () Bool)

(assert (=> mapNonEmpty!1873 (= mapRes!1873 (and tp!5031 e!21638))))

(declare-fun mapRest!1873 () (Array (_ BitVec 32) ValueCell!577))

(declare-fun mapValue!1873 () ValueCell!577)

(declare-fun mapKey!1873 () (_ BitVec 32))

(assert (=> mapNonEmpty!1873 (= (arr!1106 _values!1501) (store mapRest!1873 mapKey!1873 mapValue!1873))))

(declare-fun b!34083 () Bool)

(declare-fun res!20667 () Bool)

(assert (=> b!34083 (=> (not res!20667) (not e!21637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!34083 (= res!20667 (validKeyInArray!0 k!1304))))

(declare-fun b!34084 () Bool)

(declare-fun res!20665 () Bool)

(assert (=> b!34084 (=> (not res!20665) (not e!21637))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2317 (_ BitVec 32)) Bool)

(assert (=> b!34084 (= res!20665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!34085 () Bool)

(declare-fun res!20670 () Bool)

(assert (=> b!34085 (=> (not res!20670) (not e!21636))))

(declare-fun arrayContainsKey!0 (array!2317 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!34085 (= res!20670 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!34086 () Bool)

(declare-fun e!21635 () Bool)

(declare-fun tp_is_empty!1553 () Bool)

(assert (=> b!34086 (= e!21635 tp_is_empty!1553)))

(declare-fun b!34087 () Bool)

(assert (=> b!34087 (= e!21636 (not false))))

(declare-fun lt!12595 () (_ BitVec 32))

(assert (=> b!34087 (arrayForallSeekEntryOrOpenFound!0 lt!12595 _keys!1833 mask!2294)))

(declare-datatypes ((Unit!768 0))(
  ( (Unit!769) )
))
(declare-fun lt!12598 () Unit!768)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!2317 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!768)

(assert (=> b!34087 (= lt!12598 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1833 mask!2294 #b00000000000000000000000000000000 lt!12595))))

(declare-datatypes ((SeekEntryResult!145 0))(
  ( (MissingZero!145 (index!2702 (_ BitVec 32))) (Found!145 (index!2703 (_ BitVec 32))) (Intermediate!145 (undefined!957 Bool) (index!2704 (_ BitVec 32)) (x!6881 (_ BitVec 32))) (Undefined!145) (MissingVacant!145 (index!2705 (_ BitVec 32))) )
))
(declare-fun lt!12597 () SeekEntryResult!145)

(assert (=> b!34087 (and (is-Found!145 lt!12597) (= (index!2703 lt!12597) lt!12595))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2317 (_ BitVec 32)) SeekEntryResult!145)

(assert (=> b!34087 (= lt!12597 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun lt!12596 () Unit!768)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!2317 (_ BitVec 32)) Unit!768)

(assert (=> b!34087 (= lt!12596 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1304 lt!12595 _keys!1833 mask!2294))))

(assert (=> b!34087 (contains!396 lt!12600 (select (arr!1107 _keys!1833) lt!12595))))

(declare-fun lt!12599 () Unit!768)

(declare-fun lemmaValidKeyInArrayIsInListMap!67 (array!2317 array!2315 (_ BitVec 32) (_ BitVec 32) V!1895 V!1895 (_ BitVec 32) Int) Unit!768)

(assert (=> b!34087 (= lt!12599 (lemmaValidKeyInArrayIsInListMap!67 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12595 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2317 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!34087 (= lt!12595 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun res!20668 () Bool)

(assert (=> start!4408 (=> (not res!20668) (not e!21637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4408 (= res!20668 (validMask!0 mask!2294))))

(assert (=> start!4408 e!21637))

(assert (=> start!4408 true))

(assert (=> start!4408 tp!5032))

(declare-fun e!21640 () Bool)

(declare-fun array_inv!735 (array!2315) Bool)

(assert (=> start!4408 (and (array_inv!735 _values!1501) e!21640)))

(declare-fun array_inv!736 (array!2317) Bool)

(assert (=> start!4408 (array_inv!736 _keys!1833)))

(assert (=> start!4408 tp_is_empty!1553))

(declare-fun b!34088 () Bool)

(assert (=> b!34088 (= e!21638 tp_is_empty!1553)))

(declare-fun b!34089 () Bool)

(declare-fun res!20669 () Bool)

(assert (=> b!34089 (=> (not res!20669) (not e!21637))))

(declare-datatypes ((List!900 0))(
  ( (Nil!897) (Cons!896 (h!1463 (_ BitVec 64)) (t!3605 List!900)) )
))
(declare-fun arrayNoDuplicates!0 (array!2317 (_ BitVec 32) List!900) Bool)

(assert (=> b!34089 (= res!20669 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!897))))

(declare-fun b!34090 () Bool)

(assert (=> b!34090 (= e!21640 (and e!21635 mapRes!1873))))

(declare-fun condMapEmpty!1873 () Bool)

(declare-fun mapDefault!1873 () ValueCell!577)

