; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4094 () Bool)

(assert start!4094)

(declare-fun b_free!1001 () Bool)

(declare-fun b_next!1001 () Bool)

(assert (=> start!4094 (= b_free!1001 (not b_next!1001))))

(declare-fun tp!4423 () Bool)

(declare-fun b_and!1813 () Bool)

(assert (=> start!4094 (= tp!4423 b_and!1813)))

(declare-fun b!30434 () Bool)

(declare-fun res!18325 () Bool)

(declare-fun e!19533 () Bool)

(assert (=> b!30434 (=> (not res!18325) (not e!19533))))

(declare-datatypes ((array!1925 0))(
  ( (array!1926 (arr!916 (Array (_ BitVec 32) (_ BitVec 64))) (size!1017 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1925)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1925 (_ BitVec 32)) Bool)

(assert (=> b!30434 (= res!18325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!30435 () Bool)

(declare-fun res!18324 () Bool)

(assert (=> b!30435 (=> (not res!18324) (not e!19533))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1925 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30435 (= res!18324 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30436 () Bool)

(declare-fun res!18322 () Bool)

(assert (=> b!30436 (=> (not res!18322) (not e!19533))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1631 0))(
  ( (V!1632 (val!704 Int)) )
))
(declare-datatypes ((ValueCell!478 0))(
  ( (ValueCellFull!478 (v!1793 V!1631)) (EmptyCell!478) )
))
(declare-datatypes ((array!1927 0))(
  ( (array!1928 (arr!917 (Array (_ BitVec 32) ValueCell!478)) (size!1018 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1927)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1631)

(declare-fun minValue!1443 () V!1631)

(declare-datatypes ((tuple2!1148 0))(
  ( (tuple2!1149 (_1!584 (_ BitVec 64)) (_2!584 V!1631)) )
))
(declare-datatypes ((List!752 0))(
  ( (Nil!749) (Cons!748 (h!1315 tuple2!1148) (t!3447 List!752)) )
))
(declare-datatypes ((ListLongMap!729 0))(
  ( (ListLongMap!730 (toList!380 List!752)) )
))
(declare-fun contains!317 (ListLongMap!729 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!207 (array!1925 array!1927 (_ BitVec 32) (_ BitVec 32) V!1631 V!1631 (_ BitVec 32) Int) ListLongMap!729)

(assert (=> b!30436 (= res!18322 (not (contains!317 (getCurrentListMap!207 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun mapIsEmpty!1561 () Bool)

(declare-fun mapRes!1561 () Bool)

(assert (=> mapIsEmpty!1561 mapRes!1561))

(declare-fun b!30438 () Bool)

(declare-fun res!18320 () Bool)

(assert (=> b!30438 (=> (not res!18320) (not e!19533))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30438 (= res!18320 (validKeyInArray!0 k!1304))))

(declare-fun b!30439 () Bool)

(assert (=> b!30439 (= e!19533 false)))

(declare-datatypes ((SeekEntryResult!108 0))(
  ( (MissingZero!108 (index!2554 (_ BitVec 32))) (Found!108 (index!2555 (_ BitVec 32))) (Intermediate!108 (undefined!920 Bool) (index!2556 (_ BitVec 32)) (x!6530 (_ BitVec 32))) (Undefined!108) (MissingVacant!108 (index!2557 (_ BitVec 32))) )
))
(declare-fun lt!11427 () SeekEntryResult!108)

(declare-fun seekEntry!0 ((_ BitVec 64) array!1925 (_ BitVec 32)) SeekEntryResult!108)

(assert (=> b!30439 (= lt!11427 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!30440 () Bool)

(declare-fun e!19536 () Bool)

(declare-fun tp_is_empty!1355 () Bool)

(assert (=> b!30440 (= e!19536 tp_is_empty!1355)))

(declare-fun b!30441 () Bool)

(declare-fun res!18321 () Bool)

(assert (=> b!30441 (=> (not res!18321) (not e!19533))))

(assert (=> b!30441 (= res!18321 (and (= (size!1018 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1017 _keys!1833) (size!1018 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!30442 () Bool)

(declare-fun e!19537 () Bool)

(assert (=> b!30442 (= e!19537 tp_is_empty!1355)))

(declare-fun mapNonEmpty!1561 () Bool)

(declare-fun tp!4422 () Bool)

(assert (=> mapNonEmpty!1561 (= mapRes!1561 (and tp!4422 e!19537))))

(declare-fun mapKey!1561 () (_ BitVec 32))

(declare-fun mapValue!1561 () ValueCell!478)

(declare-fun mapRest!1561 () (Array (_ BitVec 32) ValueCell!478))

(assert (=> mapNonEmpty!1561 (= (arr!917 _values!1501) (store mapRest!1561 mapKey!1561 mapValue!1561))))

(declare-fun b!30443 () Bool)

(declare-fun res!18323 () Bool)

(assert (=> b!30443 (=> (not res!18323) (not e!19533))))

(declare-datatypes ((List!753 0))(
  ( (Nil!750) (Cons!749 (h!1316 (_ BitVec 64)) (t!3448 List!753)) )
))
(declare-fun arrayNoDuplicates!0 (array!1925 (_ BitVec 32) List!753) Bool)

(assert (=> b!30443 (= res!18323 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!750))))

(declare-fun res!18319 () Bool)

(assert (=> start!4094 (=> (not res!18319) (not e!19533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4094 (= res!18319 (validMask!0 mask!2294))))

(assert (=> start!4094 e!19533))

(assert (=> start!4094 true))

(assert (=> start!4094 tp!4423))

(declare-fun e!19534 () Bool)

(declare-fun array_inv!615 (array!1927) Bool)

(assert (=> start!4094 (and (array_inv!615 _values!1501) e!19534)))

(declare-fun array_inv!616 (array!1925) Bool)

(assert (=> start!4094 (array_inv!616 _keys!1833)))

(assert (=> start!4094 tp_is_empty!1355))

(declare-fun b!30437 () Bool)

(assert (=> b!30437 (= e!19534 (and e!19536 mapRes!1561))))

(declare-fun condMapEmpty!1561 () Bool)

(declare-fun mapDefault!1561 () ValueCell!478)

