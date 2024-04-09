; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4144 () Bool)

(assert start!4144)

(declare-fun b_free!1051 () Bool)

(declare-fun b_next!1051 () Bool)

(assert (=> start!4144 (= b_free!1051 (not b_next!1051))))

(declare-fun tp!4572 () Bool)

(declare-fun b_and!1863 () Bool)

(assert (=> start!4144 (= tp!4572 b_and!1863)))

(declare-fun mapIsEmpty!1636 () Bool)

(declare-fun mapRes!1636 () Bool)

(assert (=> mapIsEmpty!1636 mapRes!1636))

(declare-fun b!31220 () Bool)

(declare-fun res!18880 () Bool)

(declare-fun e!19966 () Bool)

(assert (=> b!31220 (=> (not res!18880) (not e!19966))))

(declare-datatypes ((array!2017 0))(
  ( (array!2018 (arr!962 (Array (_ BitVec 32) (_ BitVec 64))) (size!1063 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2017)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2017 (_ BitVec 32)) Bool)

(assert (=> b!31220 (= res!18880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1636 () Bool)

(declare-fun tp!4573 () Bool)

(declare-fun e!19965 () Bool)

(assert (=> mapNonEmpty!1636 (= mapRes!1636 (and tp!4573 e!19965))))

(declare-datatypes ((V!1699 0))(
  ( (V!1700 (val!729 Int)) )
))
(declare-datatypes ((ValueCell!503 0))(
  ( (ValueCellFull!503 (v!1818 V!1699)) (EmptyCell!503) )
))
(declare-datatypes ((array!2019 0))(
  ( (array!2020 (arr!963 (Array (_ BitVec 32) ValueCell!503)) (size!1064 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2019)

(declare-fun mapKey!1636 () (_ BitVec 32))

(declare-fun mapRest!1636 () (Array (_ BitVec 32) ValueCell!503))

(declare-fun mapValue!1636 () ValueCell!503)

(assert (=> mapNonEmpty!1636 (= (arr!963 _values!1501) (store mapRest!1636 mapKey!1636 mapValue!1636))))

(declare-fun b!31221 () Bool)

(declare-fun res!18884 () Bool)

(assert (=> b!31221 (=> (not res!18884) (not e!19966))))

(declare-datatypes ((List!788 0))(
  ( (Nil!785) (Cons!784 (h!1351 (_ BitVec 64)) (t!3483 List!788)) )
))
(declare-fun arrayNoDuplicates!0 (array!2017 (_ BitVec 32) List!788) Bool)

(assert (=> b!31221 (= res!18884 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!785))))

(declare-fun b!31222 () Bool)

(declare-fun res!18881 () Bool)

(assert (=> b!31222 (=> (not res!18881) (not e!19966))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1699)

(declare-fun minValue!1443 () V!1699)

(declare-datatypes ((tuple2!1186 0))(
  ( (tuple2!1187 (_1!603 (_ BitVec 64)) (_2!603 V!1699)) )
))
(declare-datatypes ((List!789 0))(
  ( (Nil!786) (Cons!785 (h!1352 tuple2!1186) (t!3484 List!789)) )
))
(declare-datatypes ((ListLongMap!767 0))(
  ( (ListLongMap!768 (toList!399 List!789)) )
))
(declare-fun contains!336 (ListLongMap!767 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!224 (array!2017 array!2019 (_ BitVec 32) (_ BitVec 32) V!1699 V!1699 (_ BitVec 32) Int) ListLongMap!767)

(assert (=> b!31222 (= res!18881 (not (contains!336 (getCurrentListMap!224 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!31223 () Bool)

(declare-fun e!19964 () Bool)

(declare-fun tp_is_empty!1405 () Bool)

(assert (=> b!31223 (= e!19964 tp_is_empty!1405)))

(declare-fun b!31225 () Bool)

(declare-fun res!18882 () Bool)

(assert (=> b!31225 (=> (not res!18882) (not e!19966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31225 (= res!18882 (validKeyInArray!0 k!1304))))

(declare-fun b!31226 () Bool)

(declare-fun res!18886 () Bool)

(assert (=> b!31226 (=> (not res!18886) (not e!19966))))

(declare-fun arrayContainsKey!0 (array!2017 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31226 (= res!18886 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!31227 () Bool)

(assert (=> b!31227 (= e!19965 tp_is_empty!1405)))

(declare-fun b!31228 () Bool)

(assert (=> b!31228 (= e!19966 false)))

(declare-datatypes ((SeekEntryResult!126 0))(
  ( (MissingZero!126 (index!2626 (_ BitVec 32))) (Found!126 (index!2627 (_ BitVec 32))) (Intermediate!126 (undefined!938 Bool) (index!2628 (_ BitVec 32)) (x!6620 (_ BitVec 32))) (Undefined!126) (MissingVacant!126 (index!2629 (_ BitVec 32))) )
))
(declare-fun lt!11547 () SeekEntryResult!126)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2017 (_ BitVec 32)) SeekEntryResult!126)

(assert (=> b!31228 (= lt!11547 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!31229 () Bool)

(declare-fun res!18883 () Bool)

(assert (=> b!31229 (=> (not res!18883) (not e!19966))))

(assert (=> b!31229 (= res!18883 (and (= (size!1064 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1063 _keys!1833) (size!1064 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31224 () Bool)

(declare-fun e!19962 () Bool)

(assert (=> b!31224 (= e!19962 (and e!19964 mapRes!1636))))

(declare-fun condMapEmpty!1636 () Bool)

(declare-fun mapDefault!1636 () ValueCell!503)

