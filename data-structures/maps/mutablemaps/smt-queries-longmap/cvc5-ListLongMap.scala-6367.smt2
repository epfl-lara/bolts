; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81966 () Bool)

(assert start!81966)

(declare-fun b_free!18433 () Bool)

(declare-fun b_next!18433 () Bool)

(assert (=> start!81966 (= b_free!18433 (not b_next!18433))))

(declare-fun tp!64000 () Bool)

(declare-fun b_and!29937 () Bool)

(assert (=> start!81966 (= tp!64000 b_and!29937)))

(declare-fun b!955647 () Bool)

(declare-fun e!538384 () Bool)

(declare-fun tp_is_empty!20977 () Bool)

(assert (=> b!955647 (= e!538384 tp_is_empty!20977)))

(declare-fun b!955648 () Bool)

(declare-fun res!640080 () Bool)

(declare-fun e!538385 () Bool)

(assert (=> b!955648 (=> (not res!640080) (not e!538385))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((array!58079 0))(
  ( (array!58080 (arr!27915 (Array (_ BitVec 32) (_ BitVec 64))) (size!28395 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58079)

(declare-datatypes ((V!32953 0))(
  ( (V!32954 (val!10539 Int)) )
))
(declare-datatypes ((ValueCell!10007 0))(
  ( (ValueCellFull!10007 (v!13094 V!32953)) (EmptyCell!10007) )
))
(declare-datatypes ((array!58081 0))(
  ( (array!58082 (arr!27916 (Array (_ BitVec 32) ValueCell!10007)) (size!28396 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58081)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!955648 (= res!640080 (and (= (size!28396 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28395 _keys!1441) (size!28396 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33427 () Bool)

(declare-fun mapRes!33427 () Bool)

(assert (=> mapIsEmpty!33427 mapRes!33427))

(declare-fun b!955649 () Bool)

(declare-fun res!640081 () Bool)

(assert (=> b!955649 (=> (not res!640081) (not e!538385))))

(declare-fun i!735 () (_ BitVec 32))

(assert (=> b!955649 (= res!640081 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28395 _keys!1441))))))

(declare-fun b!955650 () Bool)

(declare-fun res!640083 () Bool)

(assert (=> b!955650 (=> (not res!640083) (not e!538385))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58079 (_ BitVec 32)) Bool)

(assert (=> b!955650 (= res!640083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapNonEmpty!33427 () Bool)

(declare-fun tp!63999 () Bool)

(assert (=> mapNonEmpty!33427 (= mapRes!33427 (and tp!63999 e!538384))))

(declare-fun mapRest!33427 () (Array (_ BitVec 32) ValueCell!10007))

(declare-fun mapKey!33427 () (_ BitVec 32))

(declare-fun mapValue!33427 () ValueCell!10007)

(assert (=> mapNonEmpty!33427 (= (arr!27916 _values!1197) (store mapRest!33427 mapKey!33427 mapValue!33427))))

(declare-fun b!955651 () Bool)

(declare-fun e!538386 () Bool)

(assert (=> b!955651 (= e!538386 tp_is_empty!20977)))

(declare-fun b!955652 () Bool)

(assert (=> b!955652 (= e!538385 (not (bvsle #b00000000000000000000000000000000 (size!28395 _keys!1441))))))

(declare-fun zeroValue!1139 () V!32953)

(declare-fun minValue!1139 () V!32953)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13780 0))(
  ( (tuple2!13781 (_1!6900 (_ BitVec 64)) (_2!6900 V!32953)) )
))
(declare-datatypes ((List!19598 0))(
  ( (Nil!19595) (Cons!19594 (h!20756 tuple2!13780) (t!27967 List!19598)) )
))
(declare-datatypes ((ListLongMap!12491 0))(
  ( (ListLongMap!12492 (toList!6261 List!19598)) )
))
(declare-fun contains!5311 (ListLongMap!12491 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3446 (array!58079 array!58081 (_ BitVec 32) (_ BitVec 32) V!32953 V!32953 (_ BitVec 32) Int) ListLongMap!12491)

(assert (=> b!955652 (contains!5311 (getCurrentListMap!3446 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27915 _keys!1441) i!735))))

(declare-datatypes ((Unit!32119 0))(
  ( (Unit!32120) )
))
(declare-fun lt!429988 () Unit!32119)

(declare-fun lemmaInListMapFromThenFromZero!16 (array!58079 array!58081 (_ BitVec 32) (_ BitVec 32) V!32953 V!32953 (_ BitVec 32) (_ BitVec 32) Int) Unit!32119)

(assert (=> b!955652 (= lt!429988 (lemmaInListMapFromThenFromZero!16 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!955653 () Bool)

(declare-fun res!640082 () Bool)

(assert (=> b!955653 (=> (not res!640082) (not e!538385))))

(declare-datatypes ((List!19599 0))(
  ( (Nil!19596) (Cons!19595 (h!20757 (_ BitVec 64)) (t!27968 List!19599)) )
))
(declare-fun arrayNoDuplicates!0 (array!58079 (_ BitVec 32) List!19599) Bool)

(assert (=> b!955653 (= res!640082 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19596))))

(declare-fun b!955654 () Bool)

(declare-fun e!538383 () Bool)

(assert (=> b!955654 (= e!538383 (and e!538386 mapRes!33427))))

(declare-fun condMapEmpty!33427 () Bool)

(declare-fun mapDefault!33427 () ValueCell!10007)

