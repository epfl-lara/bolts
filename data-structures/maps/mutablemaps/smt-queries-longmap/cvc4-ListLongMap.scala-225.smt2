; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4034 () Bool)

(assert start!4034)

(declare-fun b_free!941 () Bool)

(declare-fun b_next!941 () Bool)

(assert (=> start!4034 (= b_free!941 (not b_next!941))))

(declare-fun tp!4242 () Bool)

(declare-fun b_and!1753 () Bool)

(assert (=> start!4034 (= tp!4242 b_and!1753)))

(declare-fun mapIsEmpty!1471 () Bool)

(declare-fun mapRes!1471 () Bool)

(assert (=> mapIsEmpty!1471 mapRes!1471))

(declare-fun b!29570 () Bool)

(declare-fun res!17726 () Bool)

(declare-fun e!19087 () Bool)

(assert (=> b!29570 (=> (not res!17726) (not e!19087))))

(declare-datatypes ((array!1811 0))(
  ( (array!1812 (arr!859 (Array (_ BitVec 32) (_ BitVec 64))) (size!960 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1811)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1811 (_ BitVec 32)) Bool)

(assert (=> b!29570 (= res!17726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29571 () Bool)

(declare-fun e!19085 () Bool)

(assert (=> b!29571 (= e!19087 e!19085)))

(declare-fun res!17728 () Bool)

(assert (=> b!29571 (=> (not res!17728) (not e!19085))))

(declare-datatypes ((V!1551 0))(
  ( (V!1552 (val!674 Int)) )
))
(declare-datatypes ((tuple2!1106 0))(
  ( (tuple2!1107 (_1!563 (_ BitVec 64)) (_2!563 V!1551)) )
))
(declare-datatypes ((List!712 0))(
  ( (Nil!709) (Cons!708 (h!1275 tuple2!1106) (t!3407 List!712)) )
))
(declare-datatypes ((ListLongMap!687 0))(
  ( (ListLongMap!688 (toList!359 List!712)) )
))
(declare-fun lt!11345 () ListLongMap!687)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!296 (ListLongMap!687 (_ BitVec 64)) Bool)

(assert (=> b!29571 (= res!17728 (not (contains!296 lt!11345 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!448 0))(
  ( (ValueCellFull!448 (v!1763 V!1551)) (EmptyCell!448) )
))
(declare-datatypes ((array!1813 0))(
  ( (array!1814 (arr!860 (Array (_ BitVec 32) ValueCell!448)) (size!961 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1813)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1551)

(declare-fun minValue!1443 () V!1551)

(declare-fun getCurrentListMap!186 (array!1811 array!1813 (_ BitVec 32) (_ BitVec 32) V!1551 V!1551 (_ BitVec 32) Int) ListLongMap!687)

(assert (=> b!29571 (= lt!11345 (getCurrentListMap!186 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!29572 () Bool)

(declare-fun res!17731 () Bool)

(assert (=> b!29572 (=> (not res!17731) (not e!19087))))

(assert (=> b!29572 (= res!17731 (and (= (size!961 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!960 _keys!1833) (size!961 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!29573 () Bool)

(assert (=> b!29573 (= e!19085 (not true))))

(declare-fun lt!11346 () (_ BitVec 32))

(assert (=> b!29573 (arrayForallSeekEntryOrOpenFound!0 lt!11346 _keys!1833 mask!2294)))

(declare-datatypes ((Unit!691 0))(
  ( (Unit!692) )
))
(declare-fun lt!11343 () Unit!691)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!1811 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!691)

(assert (=> b!29573 (= lt!11343 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1833 mask!2294 #b00000000000000000000000000000000 lt!11346))))

(declare-datatypes ((SeekEntryResult!95 0))(
  ( (MissingZero!95 (index!2502 (_ BitVec 32))) (Found!95 (index!2503 (_ BitVec 32))) (Intermediate!95 (undefined!907 Bool) (index!2504 (_ BitVec 32)) (x!6437 (_ BitVec 32))) (Undefined!95) (MissingVacant!95 (index!2505 (_ BitVec 32))) )
))
(declare-fun lt!11344 () SeekEntryResult!95)

(assert (=> b!29573 (and (is-Found!95 lt!11344) (= (index!2503 lt!11344) lt!11346))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1811 (_ BitVec 32)) SeekEntryResult!95)

(assert (=> b!29573 (= lt!11344 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun lt!11342 () Unit!691)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!1811 (_ BitVec 32)) Unit!691)

(assert (=> b!29573 (= lt!11342 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1304 lt!11346 _keys!1833 mask!2294))))

(assert (=> b!29573 (contains!296 lt!11345 (select (arr!859 _keys!1833) lt!11346))))

(declare-fun lt!11341 () Unit!691)

(declare-fun lemmaValidKeyInArrayIsInListMap!37 (array!1811 array!1813 (_ BitVec 32) (_ BitVec 32) V!1551 V!1551 (_ BitVec 32) Int) Unit!691)

(assert (=> b!29573 (= lt!11341 (lemmaValidKeyInArrayIsInListMap!37 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11346 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1811 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!29573 (= lt!11346 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!29574 () Bool)

(declare-fun e!19083 () Bool)

(declare-fun tp_is_empty!1295 () Bool)

(assert (=> b!29574 (= e!19083 tp_is_empty!1295)))

(declare-fun mapNonEmpty!1471 () Bool)

(declare-fun tp!4243 () Bool)

(declare-fun e!19082 () Bool)

(assert (=> mapNonEmpty!1471 (= mapRes!1471 (and tp!4243 e!19082))))

(declare-fun mapRest!1471 () (Array (_ BitVec 32) ValueCell!448))

(declare-fun mapValue!1471 () ValueCell!448)

(declare-fun mapKey!1471 () (_ BitVec 32))

(assert (=> mapNonEmpty!1471 (= (arr!860 _values!1501) (store mapRest!1471 mapKey!1471 mapValue!1471))))

(declare-fun b!29576 () Bool)

(declare-fun res!17730 () Bool)

(assert (=> b!29576 (=> (not res!17730) (not e!19085))))

(declare-fun arrayContainsKey!0 (array!1811 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29576 (= res!17730 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!29577 () Bool)

(assert (=> b!29577 (= e!19082 tp_is_empty!1295)))

(declare-fun b!29578 () Bool)

(declare-fun e!19084 () Bool)

(assert (=> b!29578 (= e!19084 (and e!19083 mapRes!1471))))

(declare-fun condMapEmpty!1471 () Bool)

(declare-fun mapDefault!1471 () ValueCell!448)

