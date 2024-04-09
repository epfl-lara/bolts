; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3892 () Bool)

(assert start!3892)

(declare-fun b_free!799 () Bool)

(declare-fun b_next!799 () Bool)

(assert (=> start!3892 (= b_free!799 (not b_next!799))))

(declare-fun tp!3816 () Bool)

(declare-fun b_and!1611 () Bool)

(assert (=> start!3892 (= tp!3816 b_and!1611)))

(declare-fun b!27409 () Bool)

(declare-fun e!17860 () Bool)

(assert (=> b!27409 (= e!17860 false)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1363 0))(
  ( (V!1364 (val!603 Int)) )
))
(declare-datatypes ((ValueCell!377 0))(
  ( (ValueCellFull!377 (v!1692 V!1363)) (EmptyCell!377) )
))
(declare-datatypes ((array!1539 0))(
  ( (array!1540 (arr!723 (Array (_ BitVec 32) ValueCell!377)) (size!824 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1539)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1541 0))(
  ( (array!1542 (arr!724 (Array (_ BitVec 32) (_ BitVec 64))) (size!825 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1541)

(declare-fun zeroValue!1443 () V!1363)

(declare-fun minValue!1443 () V!1363)

(declare-fun lt!10683 () Bool)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-datatypes ((tuple2!994 0))(
  ( (tuple2!995 (_1!507 (_ BitVec 64)) (_2!507 V!1363)) )
))
(declare-datatypes ((List!613 0))(
  ( (Nil!610) (Cons!609 (h!1176 tuple2!994) (t!3308 List!613)) )
))
(declare-datatypes ((ListLongMap!575 0))(
  ( (ListLongMap!576 (toList!303 List!613)) )
))
(declare-fun contains!240 (ListLongMap!575 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!131 (array!1541 array!1539 (_ BitVec 32) (_ BitVec 32) V!1363 V!1363 (_ BitVec 32) Int) ListLongMap!575)

(assert (=> b!27409 (= lt!10683 (contains!240 (getCurrentListMap!131 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304))))

(declare-fun mapIsEmpty!1258 () Bool)

(declare-fun mapRes!1258 () Bool)

(assert (=> mapIsEmpty!1258 mapRes!1258))

(declare-fun b!27410 () Bool)

(declare-fun res!16204 () Bool)

(assert (=> b!27410 (=> (not res!16204) (not e!17860))))

(assert (=> b!27410 (= res!16204 (and (= (size!824 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!825 _keys!1833) (size!824 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!27411 () Bool)

(declare-fun res!16206 () Bool)

(assert (=> b!27411 (=> (not res!16206) (not e!17860))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27411 (= res!16206 (validKeyInArray!0 k!1304))))

(declare-fun b!27412 () Bool)

(declare-fun res!16207 () Bool)

(assert (=> b!27412 (=> (not res!16207) (not e!17860))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1541 (_ BitVec 32)) Bool)

(assert (=> b!27412 (= res!16207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun res!16203 () Bool)

(assert (=> start!3892 (=> (not res!16203) (not e!17860))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3892 (= res!16203 (validMask!0 mask!2294))))

(assert (=> start!3892 e!17860))

(assert (=> start!3892 true))

(assert (=> start!3892 tp!3816))

(declare-fun e!17856 () Bool)

(declare-fun array_inv!497 (array!1539) Bool)

(assert (=> start!3892 (and (array_inv!497 _values!1501) e!17856)))

(declare-fun array_inv!498 (array!1541) Bool)

(assert (=> start!3892 (array_inv!498 _keys!1833)))

(declare-fun tp_is_empty!1153 () Bool)

(assert (=> start!3892 tp_is_empty!1153))

(declare-fun b!27413 () Bool)

(declare-fun e!17858 () Bool)

(assert (=> b!27413 (= e!17858 tp_is_empty!1153)))

(declare-fun b!27414 () Bool)

(assert (=> b!27414 (= e!17856 (and e!17858 mapRes!1258))))

(declare-fun condMapEmpty!1258 () Bool)

(declare-fun mapDefault!1258 () ValueCell!377)

