; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4028 () Bool)

(assert start!4028)

(declare-fun b_free!935 () Bool)

(declare-fun b_next!935 () Bool)

(assert (=> start!4028 (= b_free!935 (not b_next!935))))

(declare-fun tp!4225 () Bool)

(declare-fun b_and!1747 () Bool)

(assert (=> start!4028 (= tp!4225 b_and!1747)))

(declare-fun b!29480 () Bool)

(declare-fun e!19028 () Bool)

(assert (=> b!29480 (= e!19028 (not true))))

(declare-fun lt!11289 () (_ BitVec 32))

(declare-datatypes ((array!1799 0))(
  ( (array!1800 (arr!853 (Array (_ BitVec 32) (_ BitVec 64))) (size!954 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1799)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1799 (_ BitVec 32)) Bool)

(assert (=> b!29480 (arrayForallSeekEntryOrOpenFound!0 lt!11289 _keys!1833 mask!2294)))

(declare-datatypes ((Unit!687 0))(
  ( (Unit!688) )
))
(declare-fun lt!11287 () Unit!687)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!1799 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!687)

(assert (=> b!29480 (= lt!11287 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1833 mask!2294 #b00000000000000000000000000000000 lt!11289))))

(declare-datatypes ((SeekEntryResult!93 0))(
  ( (MissingZero!93 (index!2494 (_ BitVec 32))) (Found!93 (index!2495 (_ BitVec 32))) (Intermediate!93 (undefined!905 Bool) (index!2496 (_ BitVec 32)) (x!6427 (_ BitVec 32))) (Undefined!93) (MissingVacant!93 (index!2497 (_ BitVec 32))) )
))
(declare-fun lt!11288 () SeekEntryResult!93)

(assert (=> b!29480 (and (is-Found!93 lt!11288) (= (index!2495 lt!11288) lt!11289))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1799 (_ BitVec 32)) SeekEntryResult!93)

(assert (=> b!29480 (= lt!11288 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun lt!11290 () Unit!687)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!1799 (_ BitVec 32)) Unit!687)

(assert (=> b!29480 (= lt!11290 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1304 lt!11289 _keys!1833 mask!2294))))

(declare-datatypes ((V!1543 0))(
  ( (V!1544 (val!671 Int)) )
))
(declare-datatypes ((tuple2!1100 0))(
  ( (tuple2!1101 (_1!560 (_ BitVec 64)) (_2!560 V!1543)) )
))
(declare-datatypes ((List!707 0))(
  ( (Nil!704) (Cons!703 (h!1270 tuple2!1100) (t!3402 List!707)) )
))
(declare-datatypes ((ListLongMap!681 0))(
  ( (ListLongMap!682 (toList!356 List!707)) )
))
(declare-fun lt!11292 () ListLongMap!681)

(declare-fun contains!293 (ListLongMap!681 (_ BitVec 64)) Bool)

(assert (=> b!29480 (contains!293 lt!11292 (select (arr!853 _keys!1833) lt!11289))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!445 0))(
  ( (ValueCellFull!445 (v!1760 V!1543)) (EmptyCell!445) )
))
(declare-datatypes ((array!1801 0))(
  ( (array!1802 (arr!854 (Array (_ BitVec 32) ValueCell!445)) (size!955 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1801)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun lt!11291 () Unit!687)

(declare-fun zeroValue!1443 () V!1543)

(declare-fun minValue!1443 () V!1543)

(declare-fun lemmaValidKeyInArrayIsInListMap!35 (array!1799 array!1801 (_ BitVec 32) (_ BitVec 32) V!1543 V!1543 (_ BitVec 32) Int) Unit!687)

(assert (=> b!29480 (= lt!11291 (lemmaValidKeyInArrayIsInListMap!35 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11289 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1799 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!29480 (= lt!11289 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun res!17668 () Bool)

(declare-fun e!19033 () Bool)

(assert (=> start!4028 (=> (not res!17668) (not e!19033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4028 (= res!17668 (validMask!0 mask!2294))))

(assert (=> start!4028 e!19033))

(assert (=> start!4028 true))

(assert (=> start!4028 tp!4225))

(declare-fun e!19030 () Bool)

(declare-fun array_inv!579 (array!1801) Bool)

(assert (=> start!4028 (and (array_inv!579 _values!1501) e!19030)))

(declare-fun array_inv!580 (array!1799) Bool)

(assert (=> start!4028 (array_inv!580 _keys!1833)))

(declare-fun tp_is_empty!1289 () Bool)

(assert (=> start!4028 tp_is_empty!1289))

(declare-fun b!29481 () Bool)

(declare-fun e!19032 () Bool)

(assert (=> b!29481 (= e!19032 tp_is_empty!1289)))

(declare-fun b!29482 () Bool)

(declare-fun res!17662 () Bool)

(assert (=> b!29482 (=> (not res!17662) (not e!19033))))

(assert (=> b!29482 (= res!17662 (and (= (size!955 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!954 _keys!1833) (size!955 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!29483 () Bool)

(declare-fun res!17665 () Bool)

(assert (=> b!29483 (=> (not res!17665) (not e!19028))))

(declare-fun arrayContainsKey!0 (array!1799 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29483 (= res!17665 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!1462 () Bool)

(declare-fun mapRes!1462 () Bool)

(declare-fun tp!4224 () Bool)

(assert (=> mapNonEmpty!1462 (= mapRes!1462 (and tp!4224 e!19032))))

(declare-fun mapValue!1462 () ValueCell!445)

(declare-fun mapRest!1462 () (Array (_ BitVec 32) ValueCell!445))

(declare-fun mapKey!1462 () (_ BitVec 32))

(assert (=> mapNonEmpty!1462 (= (arr!854 _values!1501) (store mapRest!1462 mapKey!1462 mapValue!1462))))

(declare-fun mapIsEmpty!1462 () Bool)

(assert (=> mapIsEmpty!1462 mapRes!1462))

(declare-fun b!29484 () Bool)

(declare-fun res!17664 () Bool)

(assert (=> b!29484 (=> (not res!17664) (not e!19033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29484 (= res!17664 (validKeyInArray!0 k!1304))))

(declare-fun b!29485 () Bool)

(declare-fun res!17666 () Bool)

(assert (=> b!29485 (=> (not res!17666) (not e!19033))))

(assert (=> b!29485 (= res!17666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29486 () Bool)

(declare-fun res!17663 () Bool)

(assert (=> b!29486 (=> (not res!17663) (not e!19033))))

(declare-datatypes ((List!708 0))(
  ( (Nil!705) (Cons!704 (h!1271 (_ BitVec 64)) (t!3403 List!708)) )
))
(declare-fun arrayNoDuplicates!0 (array!1799 (_ BitVec 32) List!708) Bool)

(assert (=> b!29486 (= res!17663 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!705))))

(declare-fun b!29487 () Bool)

(declare-fun e!19029 () Bool)

(assert (=> b!29487 (= e!19029 tp_is_empty!1289)))

(declare-fun b!29488 () Bool)

(assert (=> b!29488 (= e!19033 e!19028)))

(declare-fun res!17667 () Bool)

(assert (=> b!29488 (=> (not res!17667) (not e!19028))))

(assert (=> b!29488 (= res!17667 (not (contains!293 lt!11292 k!1304)))))

(declare-fun getCurrentListMap!183 (array!1799 array!1801 (_ BitVec 32) (_ BitVec 32) V!1543 V!1543 (_ BitVec 32) Int) ListLongMap!681)

(assert (=> b!29488 (= lt!11292 (getCurrentListMap!183 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!29489 () Bool)

(assert (=> b!29489 (= e!19030 (and e!19029 mapRes!1462))))

(declare-fun condMapEmpty!1462 () Bool)

(declare-fun mapDefault!1462 () ValueCell!445)

