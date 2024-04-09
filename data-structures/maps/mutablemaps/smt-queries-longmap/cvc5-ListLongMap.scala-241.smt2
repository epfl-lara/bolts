; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4126 () Bool)

(assert start!4126)

(declare-fun b_free!1033 () Bool)

(declare-fun b_next!1033 () Bool)

(assert (=> start!4126 (= b_free!1033 (not b_next!1033))))

(declare-fun tp!4518 () Bool)

(declare-fun b_and!1845 () Bool)

(assert (=> start!4126 (= tp!4518 b_and!1845)))

(declare-fun b!30934 () Bool)

(declare-fun res!18675 () Bool)

(declare-fun e!19813 () Bool)

(assert (=> b!30934 (=> (not res!18675) (not e!19813))))

(declare-datatypes ((array!1983 0))(
  ( (array!1984 (arr!945 (Array (_ BitVec 32) (_ BitVec 64))) (size!1046 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1983)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1983 (_ BitVec 32)) Bool)

(assert (=> b!30934 (= res!18675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!30935 () Bool)

(declare-fun e!19814 () Bool)

(assert (=> b!30935 (= e!19814 (not true))))

(declare-datatypes ((V!1675 0))(
  ( (V!1676 (val!720 Int)) )
))
(declare-datatypes ((tuple2!1170 0))(
  ( (tuple2!1171 (_1!595 (_ BitVec 64)) (_2!595 V!1675)) )
))
(declare-datatypes ((List!773 0))(
  ( (Nil!770) (Cons!769 (h!1336 tuple2!1170) (t!3468 List!773)) )
))
(declare-datatypes ((ListLongMap!751 0))(
  ( (ListLongMap!752 (toList!391 List!773)) )
))
(declare-fun lt!11516 () ListLongMap!751)

(declare-datatypes ((SeekEntryResult!119 0))(
  ( (MissingZero!119 (index!2598 (_ BitVec 32))) (Found!119 (index!2599 (_ BitVec 32))) (Intermediate!119 (undefined!931 Bool) (index!2600 (_ BitVec 32)) (x!6589 (_ BitVec 32))) (Undefined!119) (MissingVacant!119 (index!2601 (_ BitVec 32))) )
))
(declare-fun lt!11515 () SeekEntryResult!119)

(declare-fun contains!328 (ListLongMap!751 (_ BitVec 64)) Bool)

(assert (=> b!30935 (contains!328 lt!11516 (select (arr!945 _keys!1833) (index!2599 lt!11515)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!494 0))(
  ( (ValueCellFull!494 (v!1809 V!1675)) (EmptyCell!494) )
))
(declare-datatypes ((array!1985 0))(
  ( (array!1986 (arr!946 (Array (_ BitVec 32) ValueCell!494)) (size!1047 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1985)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((Unit!701 0))(
  ( (Unit!702) )
))
(declare-fun lt!11517 () Unit!701)

(declare-fun zeroValue!1443 () V!1675)

(declare-fun minValue!1443 () V!1675)

(declare-fun lemmaValidKeyInArrayIsInListMap!42 (array!1983 array!1985 (_ BitVec 32) (_ BitVec 32) V!1675 V!1675 (_ BitVec 32) Int) Unit!701)

(assert (=> b!30935 (= lt!11517 (lemmaValidKeyInArrayIsInListMap!42 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 (index!2599 lt!11515) defaultEntry!1504))))

(declare-fun b!30936 () Bool)

(declare-fun e!19817 () Bool)

(assert (=> b!30936 (= e!19813 e!19817)))

(declare-fun res!18682 () Bool)

(assert (=> b!30936 (=> (not res!18682) (not e!19817))))

(declare-fun k!1304 () (_ BitVec 64))

(assert (=> b!30936 (= res!18682 (not (contains!328 lt!11516 k!1304)))))

(declare-fun getCurrentListMap!217 (array!1983 array!1985 (_ BitVec 32) (_ BitVec 32) V!1675 V!1675 (_ BitVec 32) Int) ListLongMap!751)

(assert (=> b!30936 (= lt!11516 (getCurrentListMap!217 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!30937 () Bool)

(declare-fun res!18678 () Bool)

(assert (=> b!30937 (=> (not res!18678) (not e!19813))))

(declare-datatypes ((List!774 0))(
  ( (Nil!771) (Cons!770 (h!1337 (_ BitVec 64)) (t!3469 List!774)) )
))
(declare-fun arrayNoDuplicates!0 (array!1983 (_ BitVec 32) List!774) Bool)

(assert (=> b!30937 (= res!18678 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!771))))

(declare-fun b!30938 () Bool)

(declare-fun res!18677 () Bool)

(assert (=> b!30938 (=> (not res!18677) (not e!19817))))

(declare-fun arrayContainsKey!0 (array!1983 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30938 (= res!18677 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30939 () Bool)

(declare-fun res!18676 () Bool)

(assert (=> b!30939 (=> (not res!18676) (not e!19813))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30939 (= res!18676 (validKeyInArray!0 k!1304))))

(declare-fun b!30940 () Bool)

(declare-fun e!19816 () Bool)

(declare-fun e!19815 () Bool)

(declare-fun mapRes!1609 () Bool)

(assert (=> b!30940 (= e!19816 (and e!19815 mapRes!1609))))

(declare-fun condMapEmpty!1609 () Bool)

(declare-fun mapDefault!1609 () ValueCell!494)

