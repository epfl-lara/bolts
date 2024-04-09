; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4124 () Bool)

(assert start!4124)

(declare-fun b_free!1031 () Bool)

(declare-fun b_next!1031 () Bool)

(assert (=> start!4124 (= b_free!1031 (not b_next!1031))))

(declare-fun tp!4512 () Bool)

(declare-fun b_and!1843 () Bool)

(assert (=> start!4124 (= tp!4512 b_and!1843)))

(declare-fun b!30901 () Bool)

(declare-fun res!18656 () Bool)

(declare-fun e!19796 () Bool)

(assert (=> b!30901 (=> (not res!18656) (not e!19796))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30901 (= res!18656 (validKeyInArray!0 k!1304))))

(declare-fun b!30902 () Bool)

(declare-fun e!19792 () Bool)

(declare-fun e!19795 () Bool)

(assert (=> b!30902 (= e!19792 e!19795)))

(declare-fun res!18651 () Bool)

(assert (=> b!30902 (=> (not res!18651) (not e!19795))))

(declare-datatypes ((SeekEntryResult!118 0))(
  ( (MissingZero!118 (index!2594 (_ BitVec 32))) (Found!118 (index!2595 (_ BitVec 32))) (Intermediate!118 (undefined!930 Bool) (index!2596 (_ BitVec 32)) (x!6580 (_ BitVec 32))) (Undefined!118) (MissingVacant!118 (index!2597 (_ BitVec 32))) )
))
(declare-fun lt!11506 () SeekEntryResult!118)

(assert (=> b!30902 (= res!18651 (is-Found!118 lt!11506))))

(declare-datatypes ((array!1979 0))(
  ( (array!1980 (arr!943 (Array (_ BitVec 32) (_ BitVec 64))) (size!1044 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1979)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1979 (_ BitVec 32)) SeekEntryResult!118)

(assert (=> b!30902 (= lt!11506 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun res!18653 () Bool)

(assert (=> start!4124 (=> (not res!18653) (not e!19796))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4124 (= res!18653 (validMask!0 mask!2294))))

(assert (=> start!4124 e!19796))

(assert (=> start!4124 true))

(assert (=> start!4124 tp!4512))

(declare-datatypes ((V!1671 0))(
  ( (V!1672 (val!719 Int)) )
))
(declare-datatypes ((ValueCell!493 0))(
  ( (ValueCellFull!493 (v!1808 V!1671)) (EmptyCell!493) )
))
(declare-datatypes ((array!1981 0))(
  ( (array!1982 (arr!944 (Array (_ BitVec 32) ValueCell!493)) (size!1045 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1981)

(declare-fun e!19794 () Bool)

(declare-fun array_inv!631 (array!1981) Bool)

(assert (=> start!4124 (and (array_inv!631 _values!1501) e!19794)))

(declare-fun array_inv!632 (array!1979) Bool)

(assert (=> start!4124 (array_inv!632 _keys!1833)))

(declare-fun tp_is_empty!1385 () Bool)

(assert (=> start!4124 tp_is_empty!1385))

(declare-fun b!30903 () Bool)

(declare-fun res!18654 () Bool)

(assert (=> b!30903 (=> (not res!18654) (not e!19792))))

(declare-fun arrayContainsKey!0 (array!1979 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30903 (= res!18654 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30904 () Bool)

(declare-fun res!18652 () Bool)

(assert (=> b!30904 (=> (not res!18652) (not e!19796))))

(declare-datatypes ((List!771 0))(
  ( (Nil!768) (Cons!767 (h!1334 (_ BitVec 64)) (t!3466 List!771)) )
))
(declare-fun arrayNoDuplicates!0 (array!1979 (_ BitVec 32) List!771) Bool)

(assert (=> b!30904 (= res!18652 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!768))))

(declare-fun b!30905 () Bool)

(declare-fun res!18655 () Bool)

(assert (=> b!30905 (=> (not res!18655) (not e!19796))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!30905 (= res!18655 (and (= (size!1045 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1044 _keys!1833) (size!1045 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1606 () Bool)

(declare-fun mapRes!1606 () Bool)

(assert (=> mapIsEmpty!1606 mapRes!1606))

(declare-fun b!30906 () Bool)

(assert (=> b!30906 (= e!19796 e!19792)))

(declare-fun res!18658 () Bool)

(assert (=> b!30906 (=> (not res!18658) (not e!19792))))

(declare-datatypes ((tuple2!1168 0))(
  ( (tuple2!1169 (_1!594 (_ BitVec 64)) (_2!594 V!1671)) )
))
(declare-datatypes ((List!772 0))(
  ( (Nil!769) (Cons!768 (h!1335 tuple2!1168) (t!3467 List!772)) )
))
(declare-datatypes ((ListLongMap!749 0))(
  ( (ListLongMap!750 (toList!390 List!772)) )
))
(declare-fun lt!11507 () ListLongMap!749)

(declare-fun contains!327 (ListLongMap!749 (_ BitVec 64)) Bool)

(assert (=> b!30906 (= res!18658 (not (contains!327 lt!11507 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1671)

(declare-fun minValue!1443 () V!1671)

(declare-fun getCurrentListMap!216 (array!1979 array!1981 (_ BitVec 32) (_ BitVec 32) V!1671 V!1671 (_ BitVec 32) Int) ListLongMap!749)

(assert (=> b!30906 (= lt!11507 (getCurrentListMap!216 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!30907 () Bool)

(declare-fun res!18657 () Bool)

(assert (=> b!30907 (=> (not res!18657) (not e!19796))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1979 (_ BitVec 32)) Bool)

(assert (=> b!30907 (= res!18657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!30908 () Bool)

(assert (=> b!30908 (= e!19795 (not true))))

(assert (=> b!30908 (contains!327 lt!11507 (select (arr!943 _keys!1833) (index!2595 lt!11506)))))

(declare-datatypes ((Unit!699 0))(
  ( (Unit!700) )
))
(declare-fun lt!11508 () Unit!699)

(declare-fun lemmaValidKeyInArrayIsInListMap!41 (array!1979 array!1981 (_ BitVec 32) (_ BitVec 32) V!1671 V!1671 (_ BitVec 32) Int) Unit!699)

(assert (=> b!30908 (= lt!11508 (lemmaValidKeyInArrayIsInListMap!41 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 (index!2595 lt!11506) defaultEntry!1504))))

(declare-fun b!30909 () Bool)

(declare-fun e!19797 () Bool)

(assert (=> b!30909 (= e!19797 tp_is_empty!1385)))

(declare-fun b!30910 () Bool)

(declare-fun e!19793 () Bool)

(assert (=> b!30910 (= e!19793 tp_is_empty!1385)))

(declare-fun mapNonEmpty!1606 () Bool)

(declare-fun tp!4513 () Bool)

(assert (=> mapNonEmpty!1606 (= mapRes!1606 (and tp!4513 e!19793))))

(declare-fun mapValue!1606 () ValueCell!493)

(declare-fun mapKey!1606 () (_ BitVec 32))

(declare-fun mapRest!1606 () (Array (_ BitVec 32) ValueCell!493))

(assert (=> mapNonEmpty!1606 (= (arr!944 _values!1501) (store mapRest!1606 mapKey!1606 mapValue!1606))))

(declare-fun b!30911 () Bool)

(assert (=> b!30911 (= e!19794 (and e!19797 mapRes!1606))))

(declare-fun condMapEmpty!1606 () Bool)

(declare-fun mapDefault!1606 () ValueCell!493)

