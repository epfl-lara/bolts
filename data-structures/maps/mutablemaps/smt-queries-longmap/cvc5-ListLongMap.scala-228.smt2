; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4048 () Bool)

(assert start!4048)

(declare-fun b_free!955 () Bool)

(declare-fun b_next!955 () Bool)

(assert (=> start!4048 (= b_free!955 (not b_next!955))))

(declare-fun tp!4285 () Bool)

(declare-fun b_and!1767 () Bool)

(assert (=> start!4048 (= tp!4285 b_and!1767)))

(declare-fun b!29758 () Bool)

(declare-fun res!17850 () Bool)

(declare-fun e!19192 () Bool)

(assert (=> b!29758 (=> (not res!17850) (not e!19192))))

(declare-datatypes ((V!1571 0))(
  ( (V!1572 (val!681 Int)) )
))
(declare-datatypes ((ValueCell!455 0))(
  ( (ValueCellFull!455 (v!1770 V!1571)) (EmptyCell!455) )
))
(declare-datatypes ((array!1839 0))(
  ( (array!1840 (arr!873 (Array (_ BitVec 32) ValueCell!455)) (size!974 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1839)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1841 0))(
  ( (array!1842 (arr!874 (Array (_ BitVec 32) (_ BitVec 64))) (size!975 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1841)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!29758 (= res!17850 (and (= (size!974 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!975 _keys!1833) (size!974 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!29759 () Bool)

(declare-fun e!19188 () Bool)

(declare-fun tp_is_empty!1309 () Bool)

(assert (=> b!29759 (= e!19188 tp_is_empty!1309)))

(declare-fun res!17853 () Bool)

(assert (=> start!4048 (=> (not res!17853) (not e!19192))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4048 (= res!17853 (validMask!0 mask!2294))))

(assert (=> start!4048 e!19192))

(assert (=> start!4048 true))

(assert (=> start!4048 tp!4285))

(declare-fun e!19189 () Bool)

(declare-fun array_inv!587 (array!1839) Bool)

(assert (=> start!4048 (and (array_inv!587 _values!1501) e!19189)))

(declare-fun array_inv!588 (array!1841) Bool)

(assert (=> start!4048 (array_inv!588 _keys!1833)))

(assert (=> start!4048 tp_is_empty!1309))

(declare-fun mapNonEmpty!1492 () Bool)

(declare-fun mapRes!1492 () Bool)

(declare-fun tp!4284 () Bool)

(assert (=> mapNonEmpty!1492 (= mapRes!1492 (and tp!4284 e!19188))))

(declare-fun mapValue!1492 () ValueCell!455)

(declare-fun mapRest!1492 () (Array (_ BitVec 32) ValueCell!455))

(declare-fun mapKey!1492 () (_ BitVec 32))

(assert (=> mapNonEmpty!1492 (= (arr!873 _values!1501) (store mapRest!1492 mapKey!1492 mapValue!1492))))

(declare-fun b!29760 () Bool)

(declare-fun res!17851 () Bool)

(assert (=> b!29760 (=> (not res!17851) (not e!19192))))

(declare-datatypes ((List!721 0))(
  ( (Nil!718) (Cons!717 (h!1284 (_ BitVec 64)) (t!3416 List!721)) )
))
(declare-fun arrayNoDuplicates!0 (array!1841 (_ BitVec 32) List!721) Bool)

(assert (=> b!29760 (= res!17851 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!718))))

(declare-fun b!29761 () Bool)

(assert (=> b!29761 (= e!19192 false)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-fun lt!11358 () Bool)

(declare-fun zeroValue!1443 () V!1571)

(declare-fun minValue!1443 () V!1571)

(declare-datatypes ((tuple2!1118 0))(
  ( (tuple2!1119 (_1!569 (_ BitVec 64)) (_2!569 V!1571)) )
))
(declare-datatypes ((List!722 0))(
  ( (Nil!719) (Cons!718 (h!1285 tuple2!1118) (t!3417 List!722)) )
))
(declare-datatypes ((ListLongMap!699 0))(
  ( (ListLongMap!700 (toList!365 List!722)) )
))
(declare-fun contains!302 (ListLongMap!699 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!192 (array!1841 array!1839 (_ BitVec 32) (_ BitVec 32) V!1571 V!1571 (_ BitVec 32) Int) ListLongMap!699)

(assert (=> b!29761 (= lt!11358 (contains!302 (getCurrentListMap!192 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304))))

(declare-fun b!29762 () Bool)

(declare-fun res!17854 () Bool)

(assert (=> b!29762 (=> (not res!17854) (not e!19192))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1841 (_ BitVec 32)) Bool)

(assert (=> b!29762 (= res!17854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1492 () Bool)

(assert (=> mapIsEmpty!1492 mapRes!1492))

(declare-fun b!29763 () Bool)

(declare-fun e!19190 () Bool)

(assert (=> b!29763 (= e!19190 tp_is_empty!1309)))

(declare-fun b!29764 () Bool)

(declare-fun res!17852 () Bool)

(assert (=> b!29764 (=> (not res!17852) (not e!19192))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29764 (= res!17852 (validKeyInArray!0 k!1304))))

(declare-fun b!29765 () Bool)

(assert (=> b!29765 (= e!19189 (and e!19190 mapRes!1492))))

(declare-fun condMapEmpty!1492 () Bool)

(declare-fun mapDefault!1492 () ValueCell!455)

