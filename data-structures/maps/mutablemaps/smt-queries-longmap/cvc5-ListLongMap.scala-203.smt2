; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3898 () Bool)

(assert start!3898)

(declare-fun b_free!805 () Bool)

(declare-fun b_next!805 () Bool)

(assert (=> start!3898 (= b_free!805 (not b_next!805))))

(declare-fun tp!3835 () Bool)

(declare-fun b_and!1617 () Bool)

(assert (=> start!3898 (= tp!3835 b_and!1617)))

(declare-fun mapNonEmpty!1267 () Bool)

(declare-fun mapRes!1267 () Bool)

(declare-fun tp!3834 () Bool)

(declare-fun e!17905 () Bool)

(assert (=> mapNonEmpty!1267 (= mapRes!1267 (and tp!3834 e!17905))))

(declare-datatypes ((V!1371 0))(
  ( (V!1372 (val!606 Int)) )
))
(declare-datatypes ((ValueCell!380 0))(
  ( (ValueCellFull!380 (v!1695 V!1371)) (EmptyCell!380) )
))
(declare-datatypes ((array!1549 0))(
  ( (array!1550 (arr!728 (Array (_ BitVec 32) ValueCell!380)) (size!829 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1549)

(declare-fun mapValue!1267 () ValueCell!380)

(declare-fun mapRest!1267 () (Array (_ BitVec 32) ValueCell!380))

(declare-fun mapKey!1267 () (_ BitVec 32))

(assert (=> mapNonEmpty!1267 (= (arr!728 _values!1501) (store mapRest!1267 mapKey!1267 mapValue!1267))))

(declare-fun b!27485 () Bool)

(declare-fun e!17902 () Bool)

(declare-fun tp_is_empty!1159 () Bool)

(assert (=> b!27485 (= e!17902 tp_is_empty!1159)))

(declare-fun b!27486 () Bool)

(declare-fun res!16256 () Bool)

(declare-fun e!17901 () Bool)

(assert (=> b!27486 (=> (not res!16256) (not e!17901))))

(declare-datatypes ((array!1551 0))(
  ( (array!1552 (arr!729 (Array (_ BitVec 32) (_ BitVec 64))) (size!830 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1551)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1551 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!27486 (= res!16256 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!27488 () Bool)

(declare-fun res!16257 () Bool)

(assert (=> b!27488 (=> (not res!16257) (not e!17901))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1551 (_ BitVec 32)) Bool)

(assert (=> b!27488 (= res!16257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!27489 () Bool)

(declare-fun res!16253 () Bool)

(assert (=> b!27489 (=> (not res!16253) (not e!17901))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27489 (= res!16253 (validKeyInArray!0 k!1304))))

(declare-fun b!27490 () Bool)

(assert (=> b!27490 (= e!17901 false)))

(declare-fun lt!10692 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1551 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!27490 (= lt!10692 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!27491 () Bool)

(declare-fun res!16258 () Bool)

(assert (=> b!27491 (=> (not res!16258) (not e!17901))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!27491 (= res!16258 (and (= (size!829 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!830 _keys!1833) (size!829 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!27487 () Bool)

(assert (=> b!27487 (= e!17905 tp_is_empty!1159)))

(declare-fun res!16255 () Bool)

(assert (=> start!3898 (=> (not res!16255) (not e!17901))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3898 (= res!16255 (validMask!0 mask!2294))))

(assert (=> start!3898 e!17901))

(assert (=> start!3898 true))

(assert (=> start!3898 tp!3835))

(declare-fun e!17903 () Bool)

(declare-fun array_inv!501 (array!1549) Bool)

(assert (=> start!3898 (and (array_inv!501 _values!1501) e!17903)))

(declare-fun array_inv!502 (array!1551) Bool)

(assert (=> start!3898 (array_inv!502 _keys!1833)))

(assert (=> start!3898 tp_is_empty!1159))

(declare-fun mapIsEmpty!1267 () Bool)

(assert (=> mapIsEmpty!1267 mapRes!1267))

(declare-fun b!27492 () Bool)

(declare-fun res!16252 () Bool)

(assert (=> b!27492 (=> (not res!16252) (not e!17901))))

(declare-datatypes ((List!616 0))(
  ( (Nil!613) (Cons!612 (h!1179 (_ BitVec 64)) (t!3311 List!616)) )
))
(declare-fun arrayNoDuplicates!0 (array!1551 (_ BitVec 32) List!616) Bool)

(assert (=> b!27492 (= res!16252 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!613))))

(declare-fun b!27493 () Bool)

(declare-fun res!16254 () Bool)

(assert (=> b!27493 (=> (not res!16254) (not e!17901))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1371)

(declare-fun minValue!1443 () V!1371)

(declare-datatypes ((tuple2!998 0))(
  ( (tuple2!999 (_1!509 (_ BitVec 64)) (_2!509 V!1371)) )
))
(declare-datatypes ((List!617 0))(
  ( (Nil!614) (Cons!613 (h!1180 tuple2!998) (t!3312 List!617)) )
))
(declare-datatypes ((ListLongMap!579 0))(
  ( (ListLongMap!580 (toList!305 List!617)) )
))
(declare-fun contains!242 (ListLongMap!579 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!133 (array!1551 array!1549 (_ BitVec 32) (_ BitVec 32) V!1371 V!1371 (_ BitVec 32) Int) ListLongMap!579)

(assert (=> b!27493 (= res!16254 (not (contains!242 (getCurrentListMap!133 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!27494 () Bool)

(assert (=> b!27494 (= e!17903 (and e!17902 mapRes!1267))))

(declare-fun condMapEmpty!1267 () Bool)

(declare-fun mapDefault!1267 () ValueCell!380)

