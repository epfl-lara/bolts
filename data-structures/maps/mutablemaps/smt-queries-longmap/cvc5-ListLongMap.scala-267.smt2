; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4398 () Bool)

(assert start!4398)

(declare-fun b_free!1189 () Bool)

(declare-fun b_next!1189 () Bool)

(assert (=> start!4398 (= b_free!1189 (not b_next!1189))))

(declare-fun tp!5001 () Bool)

(declare-fun b_and!2011 () Bool)

(assert (=> start!4398 (= tp!5001 b_and!2011)))

(declare-fun b!33931 () Bool)

(declare-fun e!21547 () Bool)

(assert (=> b!33931 (= e!21547 (not true))))

(declare-datatypes ((SeekEntryResult!141 0))(
  ( (MissingZero!141 (index!2686 (_ BitVec 32))) (Found!141 (index!2687 (_ BitVec 32))) (Intermediate!141 (undefined!953 Bool) (index!2688 (_ BitVec 32)) (x!6869 (_ BitVec 32))) (Undefined!141) (MissingVacant!141 (index!2689 (_ BitVec 32))) )
))
(declare-fun lt!12513 () SeekEntryResult!141)

(declare-fun lt!12512 () (_ BitVec 32))

(assert (=> b!33931 (and (is-Found!141 lt!12513) (= (index!2687 lt!12513) lt!12512))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-datatypes ((array!2295 0))(
  ( (array!2296 (arr!1096 (Array (_ BitVec 32) (_ BitVec 64))) (size!1197 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2295)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2295 (_ BitVec 32)) SeekEntryResult!141)

(assert (=> b!33931 (= lt!12513 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!760 0))(
  ( (Unit!761) )
))
(declare-fun lt!12516 () Unit!760)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!2295 (_ BitVec 32)) Unit!760)

(assert (=> b!33931 (= lt!12516 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1304 lt!12512 _keys!1833 mask!2294))))

(declare-datatypes ((V!1883 0))(
  ( (V!1884 (val!798 Int)) )
))
(declare-datatypes ((tuple2!1286 0))(
  ( (tuple2!1287 (_1!653 (_ BitVec 64)) (_2!653 V!1883)) )
))
(declare-datatypes ((List!891 0))(
  ( (Nil!888) (Cons!887 (h!1454 tuple2!1286) (t!3596 List!891)) )
))
(declare-datatypes ((ListLongMap!867 0))(
  ( (ListLongMap!868 (toList!449 List!891)) )
))
(declare-fun lt!12515 () ListLongMap!867)

(declare-fun contains!391 (ListLongMap!867 (_ BitVec 64)) Bool)

(assert (=> b!33931 (contains!391 lt!12515 (select (arr!1096 _keys!1833) lt!12512))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!572 0))(
  ( (ValueCellFull!572 (v!1892 V!1883)) (EmptyCell!572) )
))
(declare-datatypes ((array!2297 0))(
  ( (array!2298 (arr!1097 (Array (_ BitVec 32) ValueCell!572)) (size!1198 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2297)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun lt!12514 () Unit!760)

(declare-fun zeroValue!1443 () V!1883)

(declare-fun minValue!1443 () V!1883)

(declare-fun lemmaValidKeyInArrayIsInListMap!63 (array!2295 array!2297 (_ BitVec 32) (_ BitVec 32) V!1883 V!1883 (_ BitVec 32) Int) Unit!760)

(assert (=> b!33931 (= lt!12514 (lemmaValidKeyInArrayIsInListMap!63 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12512 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2295 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!33931 (= lt!12512 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!33932 () Bool)

(declare-fun e!21545 () Bool)

(declare-fun tp_is_empty!1543 () Bool)

(assert (=> b!33932 (= e!21545 tp_is_empty!1543)))

(declare-fun b!33933 () Bool)

(declare-fun e!21546 () Bool)

(assert (=> b!33933 (= e!21546 tp_is_empty!1543)))

(declare-fun b!33934 () Bool)

(declare-fun res!20565 () Bool)

(declare-fun e!21548 () Bool)

(assert (=> b!33934 (=> (not res!20565) (not e!21548))))

(declare-datatypes ((List!892 0))(
  ( (Nil!889) (Cons!888 (h!1455 (_ BitVec 64)) (t!3597 List!892)) )
))
(declare-fun arrayNoDuplicates!0 (array!2295 (_ BitVec 32) List!892) Bool)

(assert (=> b!33934 (= res!20565 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!889))))

(declare-fun b!33935 () Bool)

(declare-fun e!21549 () Bool)

(declare-fun mapRes!1858 () Bool)

(assert (=> b!33935 (= e!21549 (and e!21546 mapRes!1858))))

(declare-fun condMapEmpty!1858 () Bool)

(declare-fun mapDefault!1858 () ValueCell!572)

