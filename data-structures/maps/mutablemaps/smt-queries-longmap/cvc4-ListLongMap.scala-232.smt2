; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4076 () Bool)

(assert start!4076)

(declare-fun b_free!983 () Bool)

(declare-fun b_next!983 () Bool)

(assert (=> start!4076 (= b_free!983 (not b_next!983))))

(declare-fun tp!4369 () Bool)

(declare-fun b_and!1795 () Bool)

(assert (=> start!4076 (= tp!4369 b_and!1795)))

(declare-fun b!30164 () Bool)

(declare-fun res!18132 () Bool)

(declare-fun e!19398 () Bool)

(assert (=> b!30164 (=> (not res!18132) (not e!19398))))

(declare-datatypes ((array!1891 0))(
  ( (array!1892 (arr!899 (Array (_ BitVec 32) (_ BitVec 64))) (size!1000 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1891)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1891 (_ BitVec 32)) Bool)

(assert (=> b!30164 (= res!18132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!30165 () Bool)

(declare-fun res!18135 () Bool)

(assert (=> b!30165 (=> (not res!18135) (not e!19398))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1891 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30165 (= res!18135 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30166 () Bool)

(assert (=> b!30166 (= e!19398 false)))

(declare-datatypes ((SeekEntryResult!102 0))(
  ( (MissingZero!102 (index!2530 (_ BitVec 32))) (Found!102 (index!2531 (_ BitVec 32))) (Intermediate!102 (undefined!914 Bool) (index!2532 (_ BitVec 32)) (x!6500 (_ BitVec 32))) (Undefined!102) (MissingVacant!102 (index!2533 (_ BitVec 32))) )
))
(declare-fun lt!11400 () SeekEntryResult!102)

(declare-fun seekEntry!0 ((_ BitVec 64) array!1891 (_ BitVec 32)) SeekEntryResult!102)

(assert (=> b!30166 (= lt!11400 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!30167 () Bool)

(declare-fun res!18136 () Bool)

(assert (=> b!30167 (=> (not res!18136) (not e!19398))))

(declare-datatypes ((V!1607 0))(
  ( (V!1608 (val!695 Int)) )
))
(declare-datatypes ((ValueCell!469 0))(
  ( (ValueCellFull!469 (v!1784 V!1607)) (EmptyCell!469) )
))
(declare-datatypes ((array!1893 0))(
  ( (array!1894 (arr!900 (Array (_ BitVec 32) ValueCell!469)) (size!1001 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1893)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!30167 (= res!18136 (and (= (size!1001 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1000 _keys!1833) (size!1001 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!30168 () Bool)

(declare-fun res!18133 () Bool)

(assert (=> b!30168 (=> (not res!18133) (not e!19398))))

(declare-datatypes ((List!738 0))(
  ( (Nil!735) (Cons!734 (h!1301 (_ BitVec 64)) (t!3433 List!738)) )
))
(declare-fun arrayNoDuplicates!0 (array!1891 (_ BitVec 32) List!738) Bool)

(assert (=> b!30168 (= res!18133 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!735))))

(declare-fun res!18131 () Bool)

(assert (=> start!4076 (=> (not res!18131) (not e!19398))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4076 (= res!18131 (validMask!0 mask!2294))))

(assert (=> start!4076 e!19398))

(assert (=> start!4076 true))

(assert (=> start!4076 tp!4369))

(declare-fun e!19401 () Bool)

(declare-fun array_inv!603 (array!1893) Bool)

(assert (=> start!4076 (and (array_inv!603 _values!1501) e!19401)))

(declare-fun array_inv!604 (array!1891) Bool)

(assert (=> start!4076 (array_inv!604 _keys!1833)))

(declare-fun tp_is_empty!1337 () Bool)

(assert (=> start!4076 tp_is_empty!1337))

(declare-fun b!30169 () Bool)

(declare-fun res!18134 () Bool)

(assert (=> b!30169 (=> (not res!18134) (not e!19398))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30169 (= res!18134 (validKeyInArray!0 k!1304))))

(declare-fun b!30170 () Bool)

(declare-fun e!19400 () Bool)

(assert (=> b!30170 (= e!19400 tp_is_empty!1337)))

(declare-fun mapIsEmpty!1534 () Bool)

(declare-fun mapRes!1534 () Bool)

(assert (=> mapIsEmpty!1534 mapRes!1534))

(declare-fun b!30171 () Bool)

(declare-fun res!18130 () Bool)

(assert (=> b!30171 (=> (not res!18130) (not e!19398))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1607)

(declare-fun minValue!1443 () V!1607)

(declare-datatypes ((tuple2!1134 0))(
  ( (tuple2!1135 (_1!577 (_ BitVec 64)) (_2!577 V!1607)) )
))
(declare-datatypes ((List!739 0))(
  ( (Nil!736) (Cons!735 (h!1302 tuple2!1134) (t!3434 List!739)) )
))
(declare-datatypes ((ListLongMap!715 0))(
  ( (ListLongMap!716 (toList!373 List!739)) )
))
(declare-fun contains!310 (ListLongMap!715 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!200 (array!1891 array!1893 (_ BitVec 32) (_ BitVec 32) V!1607 V!1607 (_ BitVec 32) Int) ListLongMap!715)

(assert (=> b!30171 (= res!18130 (not (contains!310 (getCurrentListMap!200 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!30172 () Bool)

(assert (=> b!30172 (= e!19401 (and e!19400 mapRes!1534))))

(declare-fun condMapEmpty!1534 () Bool)

(declare-fun mapDefault!1534 () ValueCell!469)

