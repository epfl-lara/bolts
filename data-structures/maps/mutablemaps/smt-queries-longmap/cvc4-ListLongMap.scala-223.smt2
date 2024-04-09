; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4022 () Bool)

(assert start!4022)

(declare-fun b_free!929 () Bool)

(declare-fun b_next!929 () Bool)

(assert (=> start!4022 (= b_free!929 (not b_next!929))))

(declare-fun tp!4207 () Bool)

(declare-fun b_and!1741 () Bool)

(assert (=> start!4022 (= tp!4207 b_and!1741)))

(declare-fun mapNonEmpty!1453 () Bool)

(declare-fun mapRes!1453 () Bool)

(declare-fun tp!4206 () Bool)

(declare-fun e!18977 () Bool)

(assert (=> mapNonEmpty!1453 (= mapRes!1453 (and tp!4206 e!18977))))

(declare-datatypes ((V!1535 0))(
  ( (V!1536 (val!668 Int)) )
))
(declare-datatypes ((ValueCell!442 0))(
  ( (ValueCellFull!442 (v!1757 V!1535)) (EmptyCell!442) )
))
(declare-datatypes ((array!1787 0))(
  ( (array!1788 (arr!847 (Array (_ BitVec 32) ValueCell!442)) (size!948 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1787)

(declare-fun mapKey!1453 () (_ BitVec 32))

(declare-fun mapValue!1453 () ValueCell!442)

(declare-fun mapRest!1453 () (Array (_ BitVec 32) ValueCell!442))

(assert (=> mapNonEmpty!1453 (= (arr!847 _values!1501) (store mapRest!1453 mapKey!1453 mapValue!1453))))

(declare-fun b!29390 () Bool)

(declare-fun e!18979 () Bool)

(assert (=> b!29390 (= e!18979 (not true))))

(declare-fun lt!11235 () (_ BitVec 32))

(declare-datatypes ((array!1789 0))(
  ( (array!1790 (arr!848 (Array (_ BitVec 32) (_ BitVec 64))) (size!949 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1789)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1789 (_ BitVec 32)) Bool)

(assert (=> b!29390 (arrayForallSeekEntryOrOpenFound!0 lt!11235 _keys!1833 mask!2294)))

(declare-datatypes ((Unit!683 0))(
  ( (Unit!684) )
))
(declare-fun lt!11234 () Unit!683)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!1789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!683)

(assert (=> b!29390 (= lt!11234 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1833 mask!2294 #b00000000000000000000000000000000 lt!11235))))

(declare-datatypes ((SeekEntryResult!91 0))(
  ( (MissingZero!91 (index!2486 (_ BitVec 32))) (Found!91 (index!2487 (_ BitVec 32))) (Intermediate!91 (undefined!903 Bool) (index!2488 (_ BitVec 32)) (x!6417 (_ BitVec 32))) (Undefined!91) (MissingVacant!91 (index!2489 (_ BitVec 32))) )
))
(declare-fun lt!11237 () SeekEntryResult!91)

(assert (=> b!29390 (and (is-Found!91 lt!11237) (= (index!2487 lt!11237) lt!11235))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1789 (_ BitVec 32)) SeekEntryResult!91)

(assert (=> b!29390 (= lt!11237 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun lt!11236 () Unit!683)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!1789 (_ BitVec 32)) Unit!683)

(assert (=> b!29390 (= lt!11236 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1304 lt!11235 _keys!1833 mask!2294))))

(declare-datatypes ((tuple2!1096 0))(
  ( (tuple2!1097 (_1!558 (_ BitVec 64)) (_2!558 V!1535)) )
))
(declare-datatypes ((List!704 0))(
  ( (Nil!701) (Cons!700 (h!1267 tuple2!1096) (t!3399 List!704)) )
))
(declare-datatypes ((ListLongMap!677 0))(
  ( (ListLongMap!678 (toList!354 List!704)) )
))
(declare-fun lt!11233 () ListLongMap!677)

(declare-fun contains!291 (ListLongMap!677 (_ BitVec 64)) Bool)

(assert (=> b!29390 (contains!291 lt!11233 (select (arr!848 _keys!1833) lt!11235))))

(declare-fun lt!11238 () Unit!683)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1535)

(declare-fun minValue!1443 () V!1535)

(declare-fun lemmaValidKeyInArrayIsInListMap!33 (array!1789 array!1787 (_ BitVec 32) (_ BitVec 32) V!1535 V!1535 (_ BitVec 32) Int) Unit!683)

(assert (=> b!29390 (= lt!11238 (lemmaValidKeyInArrayIsInListMap!33 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11235 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1789 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!29390 (= lt!11235 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!29392 () Bool)

(declare-fun e!18976 () Bool)

(declare-fun tp_is_empty!1283 () Bool)

(assert (=> b!29392 (= e!18976 tp_is_empty!1283)))

(declare-fun b!29393 () Bool)

(declare-fun e!18978 () Bool)

(assert (=> b!29393 (= e!18978 e!18979)))

(declare-fun res!17604 () Bool)

(assert (=> b!29393 (=> (not res!17604) (not e!18979))))

(assert (=> b!29393 (= res!17604 (not (contains!291 lt!11233 k!1304)))))

(declare-fun getCurrentListMap!181 (array!1789 array!1787 (_ BitVec 32) (_ BitVec 32) V!1535 V!1535 (_ BitVec 32) Int) ListLongMap!677)

(assert (=> b!29393 (= lt!11233 (getCurrentListMap!181 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!29394 () Bool)

(declare-fun res!17601 () Bool)

(assert (=> b!29394 (=> (not res!17601) (not e!18978))))

(assert (=> b!29394 (= res!17601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun res!17602 () Bool)

(assert (=> start!4022 (=> (not res!17602) (not e!18978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4022 (= res!17602 (validMask!0 mask!2294))))

(assert (=> start!4022 e!18978))

(assert (=> start!4022 true))

(assert (=> start!4022 tp!4207))

(declare-fun e!18974 () Bool)

(declare-fun array_inv!575 (array!1787) Bool)

(assert (=> start!4022 (and (array_inv!575 _values!1501) e!18974)))

(declare-fun array_inv!576 (array!1789) Bool)

(assert (=> start!4022 (array_inv!576 _keys!1833)))

(assert (=> start!4022 tp_is_empty!1283))

(declare-fun b!29391 () Bool)

(declare-fun res!17599 () Bool)

(assert (=> b!29391 (=> (not res!17599) (not e!18979))))

(declare-fun arrayContainsKey!0 (array!1789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29391 (= res!17599 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!29395 () Bool)

(assert (=> b!29395 (= e!18974 (and e!18976 mapRes!1453))))

(declare-fun condMapEmpty!1453 () Bool)

(declare-fun mapDefault!1453 () ValueCell!442)

