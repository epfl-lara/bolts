; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3902 () Bool)

(assert start!3902)

(declare-fun b_free!809 () Bool)

(declare-fun b_next!809 () Bool)

(assert (=> start!3902 (= b_free!809 (not b_next!809))))

(declare-fun tp!3847 () Bool)

(declare-fun b_and!1621 () Bool)

(assert (=> start!3902 (= tp!3847 b_and!1621)))

(declare-fun b!27545 () Bool)

(declare-fun e!17932 () Bool)

(assert (=> b!27545 (= e!17932 false)))

(declare-fun lt!10698 () (_ BitVec 32))

(declare-datatypes ((array!1557 0))(
  ( (array!1558 (arr!732 (Array (_ BitVec 32) (_ BitVec 64))) (size!833 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1557)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!1557 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!27545 (= lt!10698 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun res!16296 () Bool)

(assert (=> start!3902 (=> (not res!16296) (not e!17932))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3902 (= res!16296 (validMask!0 mask!2294))))

(assert (=> start!3902 e!17932))

(assert (=> start!3902 true))

(assert (=> start!3902 tp!3847))

(declare-datatypes ((V!1375 0))(
  ( (V!1376 (val!608 Int)) )
))
(declare-datatypes ((ValueCell!382 0))(
  ( (ValueCellFull!382 (v!1697 V!1375)) (EmptyCell!382) )
))
(declare-datatypes ((array!1559 0))(
  ( (array!1560 (arr!733 (Array (_ BitVec 32) ValueCell!382)) (size!834 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1559)

(declare-fun e!17933 () Bool)

(declare-fun array_inv!505 (array!1559) Bool)

(assert (=> start!3902 (and (array_inv!505 _values!1501) e!17933)))

(declare-fun array_inv!506 (array!1557) Bool)

(assert (=> start!3902 (array_inv!506 _keys!1833)))

(declare-fun tp_is_empty!1163 () Bool)

(assert (=> start!3902 tp_is_empty!1163))

(declare-fun b!27546 () Bool)

(declare-fun e!17934 () Bool)

(assert (=> b!27546 (= e!17934 tp_is_empty!1163)))

(declare-fun b!27547 () Bool)

(declare-fun res!16297 () Bool)

(assert (=> b!27547 (=> (not res!16297) (not e!17932))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1557 (_ BitVec 32)) Bool)

(assert (=> b!27547 (= res!16297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!27548 () Bool)

(declare-fun res!16295 () Bool)

(assert (=> b!27548 (=> (not res!16295) (not e!17932))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!27548 (= res!16295 (and (= (size!834 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!833 _keys!1833) (size!834 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!27549 () Bool)

(declare-fun res!16298 () Bool)

(assert (=> b!27549 (=> (not res!16298) (not e!17932))))

(declare-fun arrayContainsKey!0 (array!1557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!27549 (= res!16298 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!1273 () Bool)

(declare-fun mapRes!1273 () Bool)

(assert (=> mapIsEmpty!1273 mapRes!1273))

(declare-fun b!27550 () Bool)

(declare-fun e!17935 () Bool)

(assert (=> b!27550 (= e!17935 tp_is_empty!1163)))

(declare-fun b!27551 () Bool)

(declare-fun res!16300 () Bool)

(assert (=> b!27551 (=> (not res!16300) (not e!17932))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27551 (= res!16300 (validKeyInArray!0 k!1304))))

(declare-fun mapNonEmpty!1273 () Bool)

(declare-fun tp!3846 () Bool)

(assert (=> mapNonEmpty!1273 (= mapRes!1273 (and tp!3846 e!17935))))

(declare-fun mapRest!1273 () (Array (_ BitVec 32) ValueCell!382))

(declare-fun mapKey!1273 () (_ BitVec 32))

(declare-fun mapValue!1273 () ValueCell!382)

(assert (=> mapNonEmpty!1273 (= (arr!733 _values!1501) (store mapRest!1273 mapKey!1273 mapValue!1273))))

(declare-fun b!27552 () Bool)

(declare-fun res!16299 () Bool)

(assert (=> b!27552 (=> (not res!16299) (not e!17932))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1375)

(declare-fun minValue!1443 () V!1375)

(declare-datatypes ((tuple2!1002 0))(
  ( (tuple2!1003 (_1!511 (_ BitVec 64)) (_2!511 V!1375)) )
))
(declare-datatypes ((List!620 0))(
  ( (Nil!617) (Cons!616 (h!1183 tuple2!1002) (t!3315 List!620)) )
))
(declare-datatypes ((ListLongMap!583 0))(
  ( (ListLongMap!584 (toList!307 List!620)) )
))
(declare-fun contains!244 (ListLongMap!583 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!135 (array!1557 array!1559 (_ BitVec 32) (_ BitVec 32) V!1375 V!1375 (_ BitVec 32) Int) ListLongMap!583)

(assert (=> b!27552 (= res!16299 (not (contains!244 (getCurrentListMap!135 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!27553 () Bool)

(assert (=> b!27553 (= e!17933 (and e!17934 mapRes!1273))))

(declare-fun condMapEmpty!1273 () Bool)

(declare-fun mapDefault!1273 () ValueCell!382)

