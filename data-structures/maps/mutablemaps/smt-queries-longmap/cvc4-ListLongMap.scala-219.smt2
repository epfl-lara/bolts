; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3998 () Bool)

(assert start!3998)

(declare-fun b_free!905 () Bool)

(declare-fun b_next!905 () Bool)

(assert (=> start!3998 (= b_free!905 (not b_next!905))))

(declare-fun tp!4135 () Bool)

(declare-fun b_and!1717 () Bool)

(assert (=> start!3998 (= tp!4135 b_and!1717)))

(declare-fun b!29030 () Bool)

(declare-fun e!18761 () Bool)

(declare-fun tp_is_empty!1259 () Bool)

(assert (=> b!29030 (= e!18761 tp_is_empty!1259)))

(declare-fun b!29031 () Bool)

(declare-fun res!17353 () Bool)

(declare-fun e!18760 () Bool)

(assert (=> b!29031 (=> (not res!17353) (not e!18760))))

(declare-datatypes ((array!1739 0))(
  ( (array!1740 (arr!823 (Array (_ BitVec 32) (_ BitVec 64))) (size!924 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1739)

(declare-datatypes ((List!686 0))(
  ( (Nil!683) (Cons!682 (h!1249 (_ BitVec 64)) (t!3381 List!686)) )
))
(declare-fun arrayNoDuplicates!0 (array!1739 (_ BitVec 32) List!686) Bool)

(assert (=> b!29031 (= res!17353 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!683))))

(declare-fun res!17348 () Bool)

(assert (=> start!3998 (=> (not res!17348) (not e!18760))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3998 (= res!17348 (validMask!0 mask!2294))))

(assert (=> start!3998 e!18760))

(assert (=> start!3998 true))

(assert (=> start!3998 tp!4135))

(declare-datatypes ((V!1503 0))(
  ( (V!1504 (val!656 Int)) )
))
(declare-datatypes ((ValueCell!430 0))(
  ( (ValueCellFull!430 (v!1745 V!1503)) (EmptyCell!430) )
))
(declare-datatypes ((array!1741 0))(
  ( (array!1742 (arr!824 (Array (_ BitVec 32) ValueCell!430)) (size!925 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1741)

(declare-fun e!18759 () Bool)

(declare-fun array_inv!557 (array!1741) Bool)

(assert (=> start!3998 (and (array_inv!557 _values!1501) e!18759)))

(declare-fun array_inv!558 (array!1739) Bool)

(assert (=> start!3998 (array_inv!558 _keys!1833)))

(assert (=> start!3998 tp_is_empty!1259))

(declare-fun mapIsEmpty!1417 () Bool)

(declare-fun mapRes!1417 () Bool)

(assert (=> mapIsEmpty!1417 mapRes!1417))

(declare-fun b!29032 () Bool)

(declare-fun e!18763 () Bool)

(assert (=> b!29032 (= e!18763 (not true))))

(declare-datatypes ((SeekEntryResult!84 0))(
  ( (MissingZero!84 (index!2458 (_ BitVec 32))) (Found!84 (index!2459 (_ BitVec 32))) (Intermediate!84 (undefined!896 Bool) (index!2460 (_ BitVec 32)) (x!6378 (_ BitVec 32))) (Undefined!84) (MissingVacant!84 (index!2461 (_ BitVec 32))) )
))
(declare-fun lt!11049 () SeekEntryResult!84)

(declare-fun lt!11047 () (_ BitVec 32))

(assert (=> b!29032 (and (is-Found!84 lt!11049) (= (index!2459 lt!11049) lt!11047))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1739 (_ BitVec 32)) SeekEntryResult!84)

(assert (=> b!29032 (= lt!11049 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!669 0))(
  ( (Unit!670) )
))
(declare-fun lt!11045 () Unit!669)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!1739 (_ BitVec 32)) Unit!669)

(assert (=> b!29032 (= lt!11045 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1304 lt!11047 _keys!1833 mask!2294))))

(declare-datatypes ((tuple2!1076 0))(
  ( (tuple2!1077 (_1!548 (_ BitVec 64)) (_2!548 V!1503)) )
))
(declare-datatypes ((List!687 0))(
  ( (Nil!684) (Cons!683 (h!1250 tuple2!1076) (t!3382 List!687)) )
))
(declare-datatypes ((ListLongMap!657 0))(
  ( (ListLongMap!658 (toList!344 List!687)) )
))
(declare-fun lt!11046 () ListLongMap!657)

(declare-fun contains!281 (ListLongMap!657 (_ BitVec 64)) Bool)

(assert (=> b!29032 (contains!281 lt!11046 (select (arr!823 _keys!1833) lt!11047))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun lt!11048 () Unit!669)

(declare-fun zeroValue!1443 () V!1503)

(declare-fun minValue!1443 () V!1503)

(declare-fun lemmaValidKeyInArrayIsInListMap!26 (array!1739 array!1741 (_ BitVec 32) (_ BitVec 32) V!1503 V!1503 (_ BitVec 32) Int) Unit!669)

(assert (=> b!29032 (= lt!11048 (lemmaValidKeyInArrayIsInListMap!26 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11047 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1739 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!29032 (= lt!11047 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!29033 () Bool)

(assert (=> b!29033 (= e!18760 e!18763)))

(declare-fun res!17352 () Bool)

(assert (=> b!29033 (=> (not res!17352) (not e!18763))))

(assert (=> b!29033 (= res!17352 (not (contains!281 lt!11046 k!1304)))))

(declare-fun getCurrentListMap!171 (array!1739 array!1741 (_ BitVec 32) (_ BitVec 32) V!1503 V!1503 (_ BitVec 32) Int) ListLongMap!657)

(assert (=> b!29033 (= lt!11046 (getCurrentListMap!171 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!29034 () Bool)

(declare-fun e!18758 () Bool)

(assert (=> b!29034 (= e!18759 (and e!18758 mapRes!1417))))

(declare-fun condMapEmpty!1417 () Bool)

(declare-fun mapDefault!1417 () ValueCell!430)

