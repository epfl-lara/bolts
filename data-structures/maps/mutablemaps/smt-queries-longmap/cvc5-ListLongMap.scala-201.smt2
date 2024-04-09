; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3868 () Bool)

(assert start!3868)

(declare-fun b_free!793 () Bool)

(declare-fun b_next!793 () Bool)

(assert (=> start!3868 (= b_free!793 (not b_next!793))))

(declare-fun tp!3795 () Bool)

(declare-fun b_and!1603 () Bool)

(assert (=> start!3868 (= tp!3795 b_and!1603)))

(declare-fun b!27208 () Bool)

(declare-fun res!16098 () Bool)

(declare-fun e!17735 () Bool)

(assert (=> b!27208 (=> (not res!16098) (not e!17735))))

(declare-datatypes ((array!1525 0))(
  ( (array!1526 (arr!717 (Array (_ BitVec 32) (_ BitVec 64))) (size!818 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1525)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!27208 (= res!16098 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!27209 () Bool)

(declare-fun res!16099 () Bool)

(assert (=> b!27209 (=> (not res!16099) (not e!17735))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27209 (= res!16099 (validKeyInArray!0 k!1304))))

(declare-fun mapNonEmpty!1246 () Bool)

(declare-fun mapRes!1246 () Bool)

(declare-fun tp!3796 () Bool)

(declare-fun e!17737 () Bool)

(assert (=> mapNonEmpty!1246 (= mapRes!1246 (and tp!3796 e!17737))))

(declare-datatypes ((V!1355 0))(
  ( (V!1356 (val!600 Int)) )
))
(declare-datatypes ((ValueCell!374 0))(
  ( (ValueCellFull!374 (v!1688 V!1355)) (EmptyCell!374) )
))
(declare-datatypes ((array!1527 0))(
  ( (array!1528 (arr!718 (Array (_ BitVec 32) ValueCell!374)) (size!819 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1527)

(declare-fun mapValue!1246 () ValueCell!374)

(declare-fun mapKey!1246 () (_ BitVec 32))

(declare-fun mapRest!1246 () (Array (_ BitVec 32) ValueCell!374))

(assert (=> mapNonEmpty!1246 (= (arr!718 _values!1501) (store mapRest!1246 mapKey!1246 mapValue!1246))))

(declare-fun b!27210 () Bool)

(declare-fun res!16093 () Bool)

(assert (=> b!27210 (=> (not res!16093) (not e!17735))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1355)

(declare-fun minValue!1443 () V!1355)

(declare-datatypes ((tuple2!988 0))(
  ( (tuple2!989 (_1!504 (_ BitVec 64)) (_2!504 V!1355)) )
))
(declare-datatypes ((List!607 0))(
  ( (Nil!604) (Cons!603 (h!1170 tuple2!988) (t!3300 List!607)) )
))
(declare-datatypes ((ListLongMap!569 0))(
  ( (ListLongMap!570 (toList!300 List!607)) )
))
(declare-fun contains!236 (ListLongMap!569 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!128 (array!1525 array!1527 (_ BitVec 32) (_ BitVec 32) V!1355 V!1355 (_ BitVec 32) Int) ListLongMap!569)

(assert (=> b!27210 (= res!16093 (not (contains!236 (getCurrentListMap!128 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun mapIsEmpty!1246 () Bool)

(assert (=> mapIsEmpty!1246 mapRes!1246))

(declare-fun b!27211 () Bool)

(declare-fun res!16094 () Bool)

(assert (=> b!27211 (=> (not res!16094) (not e!17735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1525 (_ BitVec 32)) Bool)

(assert (=> b!27211 (= res!16094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!27212 () Bool)

(declare-fun res!16095 () Bool)

(assert (=> b!27212 (=> (not res!16095) (not e!17735))))

(declare-datatypes ((List!608 0))(
  ( (Nil!605) (Cons!604 (h!1171 (_ BitVec 64)) (t!3301 List!608)) )
))
(declare-fun arrayNoDuplicates!0 (array!1525 (_ BitVec 32) List!608) Bool)

(assert (=> b!27212 (= res!16095 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!605))))

(declare-fun b!27213 () Bool)

(declare-fun e!17736 () Bool)

(declare-fun tp_is_empty!1147 () Bool)

(assert (=> b!27213 (= e!17736 tp_is_empty!1147)))

(declare-fun b!27214 () Bool)

(assert (=> b!27214 (= e!17737 tp_is_empty!1147)))

(declare-fun b!27216 () Bool)

(declare-fun e!17733 () Bool)

(assert (=> b!27216 (= e!17733 (and e!17736 mapRes!1246))))

(declare-fun condMapEmpty!1246 () Bool)

(declare-fun mapDefault!1246 () ValueCell!374)

