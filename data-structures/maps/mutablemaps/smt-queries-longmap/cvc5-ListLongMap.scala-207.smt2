; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3922 () Bool)

(assert start!3922)

(declare-fun b_free!829 () Bool)

(declare-fun b_next!829 () Bool)

(assert (=> start!3922 (= b_free!829 (not b_next!829))))

(declare-fun tp!3907 () Bool)

(declare-fun b_and!1641 () Bool)

(assert (=> start!3922 (= tp!3907 b_and!1641)))

(declare-fun mapIsEmpty!1303 () Bool)

(declare-fun mapRes!1303 () Bool)

(assert (=> mapIsEmpty!1303 mapRes!1303))

(declare-fun b!27845 () Bool)

(declare-fun res!16507 () Bool)

(declare-fun e!18084 () Bool)

(assert (=> b!27845 (=> (not res!16507) (not e!18084))))

(declare-datatypes ((array!1593 0))(
  ( (array!1594 (arr!750 (Array (_ BitVec 32) (_ BitVec 64))) (size!851 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1593)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1593 (_ BitVec 32)) Bool)

(assert (=> b!27845 (= res!16507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!27846 () Bool)

(declare-fun res!16509 () Bool)

(assert (=> b!27846 (=> (not res!16509) (not e!18084))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!27846 (= res!16509 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!27847 () Bool)

(declare-fun res!16505 () Bool)

(assert (=> b!27847 (=> (not res!16505) (not e!18084))))

(declare-datatypes ((List!631 0))(
  ( (Nil!628) (Cons!627 (h!1194 (_ BitVec 64)) (t!3326 List!631)) )
))
(declare-fun arrayNoDuplicates!0 (array!1593 (_ BitVec 32) List!631) Bool)

(assert (=> b!27847 (= res!16505 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!628))))

(declare-fun mapNonEmpty!1303 () Bool)

(declare-fun tp!3906 () Bool)

(declare-fun e!18081 () Bool)

(assert (=> mapNonEmpty!1303 (= mapRes!1303 (and tp!3906 e!18081))))

(declare-datatypes ((V!1403 0))(
  ( (V!1404 (val!618 Int)) )
))
(declare-datatypes ((ValueCell!392 0))(
  ( (ValueCellFull!392 (v!1707 V!1403)) (EmptyCell!392) )
))
(declare-datatypes ((array!1595 0))(
  ( (array!1596 (arr!751 (Array (_ BitVec 32) ValueCell!392)) (size!852 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1595)

(declare-fun mapRest!1303 () (Array (_ BitVec 32) ValueCell!392))

(declare-fun mapValue!1303 () ValueCell!392)

(declare-fun mapKey!1303 () (_ BitVec 32))

(assert (=> mapNonEmpty!1303 (= (arr!751 _values!1501) (store mapRest!1303 mapKey!1303 mapValue!1303))))

(declare-fun b!27849 () Bool)

(declare-fun res!16510 () Bool)

(assert (=> b!27849 (=> (not res!16510) (not e!18084))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!27849 (= res!16510 (and (= (size!852 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!851 _keys!1833) (size!852 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!27850 () Bool)

(declare-fun res!16504 () Bool)

(assert (=> b!27850 (=> (not res!16504) (not e!18084))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1403)

(declare-fun minValue!1443 () V!1403)

(declare-datatypes ((tuple2!1016 0))(
  ( (tuple2!1017 (_1!518 (_ BitVec 64)) (_2!518 V!1403)) )
))
(declare-datatypes ((List!632 0))(
  ( (Nil!629) (Cons!628 (h!1195 tuple2!1016) (t!3327 List!632)) )
))
(declare-datatypes ((ListLongMap!597 0))(
  ( (ListLongMap!598 (toList!314 List!632)) )
))
(declare-fun contains!251 (ListLongMap!597 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!142 (array!1593 array!1595 (_ BitVec 32) (_ BitVec 32) V!1403 V!1403 (_ BitVec 32) Int) ListLongMap!597)

(assert (=> b!27850 (= res!16504 (not (contains!251 (getCurrentListMap!142 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!27851 () Bool)

(declare-fun e!18083 () Bool)

(declare-fun e!18085 () Bool)

(assert (=> b!27851 (= e!18083 (and e!18085 mapRes!1303))))

(declare-fun condMapEmpty!1303 () Bool)

(declare-fun mapDefault!1303 () ValueCell!392)

