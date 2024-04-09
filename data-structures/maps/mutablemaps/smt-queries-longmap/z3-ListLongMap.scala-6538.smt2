; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83142 () Bool)

(assert start!83142)

(declare-fun b_free!19107 () Bool)

(declare-fun b_next!19107 () Bool)

(assert (=> start!83142 (= b_free!19107 (not b_next!19107))))

(declare-fun tp!66600 () Bool)

(declare-fun b_and!30613 () Bool)

(assert (=> start!83142 (= tp!66600 b_and!30613)))

(declare-fun b!969389 () Bool)

(declare-fun e!546549 () Bool)

(declare-fun e!546548 () Bool)

(declare-fun mapRes!35017 () Bool)

(assert (=> b!969389 (= e!546549 (and e!546548 mapRes!35017))))

(declare-fun condMapEmpty!35017 () Bool)

(declare-datatypes ((V!34323 0))(
  ( (V!34324 (val!11053 Int)) )
))
(declare-datatypes ((ValueCell!10521 0))(
  ( (ValueCellFull!10521 (v!13612 V!34323)) (EmptyCell!10521) )
))
(declare-datatypes ((array!60057 0))(
  ( (array!60058 (arr!28888 (Array (_ BitVec 32) ValueCell!10521)) (size!29368 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60057)

(declare-fun mapDefault!35017 () ValueCell!10521)

(assert (=> b!969389 (= condMapEmpty!35017 (= (arr!28888 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10521)) mapDefault!35017)))))

(declare-fun b!969390 () Bool)

(declare-fun res!648941 () Bool)

(declare-fun e!546550 () Bool)

(assert (=> b!969390 (=> (not res!648941) (not e!546550))))

(declare-datatypes ((array!60059 0))(
  ( (array!60060 (arr!28889 (Array (_ BitVec 32) (_ BitVec 64))) (size!29369 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60059)

(declare-datatypes ((List!20150 0))(
  ( (Nil!20147) (Cons!20146 (h!21308 (_ BitVec 64)) (t!28521 List!20150)) )
))
(declare-fun arrayNoDuplicates!0 (array!60059 (_ BitVec 32) List!20150) Bool)

(assert (=> b!969390 (= res!648941 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20147))))

(declare-fun b!969391 () Bool)

(declare-fun e!546551 () Bool)

(declare-fun tp_is_empty!22005 () Bool)

(assert (=> b!969391 (= e!546551 tp_is_empty!22005)))

(declare-fun b!969392 () Bool)

(assert (=> b!969392 (= e!546550 false)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun zeroValue!1367 () V!34323)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34323)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun lt!431593 () Bool)

(declare-fun i!822 () (_ BitVec 32))

(declare-datatypes ((tuple2!14256 0))(
  ( (tuple2!14257 (_1!7138 (_ BitVec 64)) (_2!7138 V!34323)) )
))
(declare-datatypes ((List!20151 0))(
  ( (Nil!20148) (Cons!20147 (h!21309 tuple2!14256) (t!28522 List!20151)) )
))
(declare-datatypes ((ListLongMap!12967 0))(
  ( (ListLongMap!12968 (toList!6499 List!20151)) )
))
(declare-fun contains!5554 (ListLongMap!12967 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3684 (array!60059 array!60057 (_ BitVec 32) (_ BitVec 32) V!34323 V!34323 (_ BitVec 32) Int) ListLongMap!12967)

(assert (=> b!969392 (= lt!431593 (contains!5554 (getCurrentListMap!3684 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28889 _keys!1717) i!822)))))

(declare-fun b!969393 () Bool)

(declare-fun res!648939 () Bool)

(assert (=> b!969393 (=> (not res!648939) (not e!546550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969393 (= res!648939 (validKeyInArray!0 (select (arr!28889 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35017 () Bool)

(assert (=> mapIsEmpty!35017 mapRes!35017))

(declare-fun b!969394 () Bool)

(declare-fun res!648942 () Bool)

(assert (=> b!969394 (=> (not res!648942) (not e!546550))))

(assert (=> b!969394 (= res!648942 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29369 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29369 _keys!1717))))))

(declare-fun b!969395 () Bool)

(assert (=> b!969395 (= e!546548 tp_is_empty!22005)))

(declare-fun b!969396 () Bool)

(declare-fun res!648940 () Bool)

(assert (=> b!969396 (=> (not res!648940) (not e!546550))))

(assert (=> b!969396 (= res!648940 (and (= (size!29368 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29369 _keys!1717) (size!29368 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969397 () Bool)

(declare-fun res!648943 () Bool)

(assert (=> b!969397 (=> (not res!648943) (not e!546550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60059 (_ BitVec 32)) Bool)

(assert (=> b!969397 (= res!648943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!648938 () Bool)

(assert (=> start!83142 (=> (not res!648938) (not e!546550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83142 (= res!648938 (validMask!0 mask!2147))))

(assert (=> start!83142 e!546550))

(assert (=> start!83142 true))

(declare-fun array_inv!22257 (array!60057) Bool)

(assert (=> start!83142 (and (array_inv!22257 _values!1425) e!546549)))

(assert (=> start!83142 tp_is_empty!22005))

(assert (=> start!83142 tp!66600))

(declare-fun array_inv!22258 (array!60059) Bool)

(assert (=> start!83142 (array_inv!22258 _keys!1717)))

(declare-fun mapNonEmpty!35017 () Bool)

(declare-fun tp!66601 () Bool)

(assert (=> mapNonEmpty!35017 (= mapRes!35017 (and tp!66601 e!546551))))

(declare-fun mapValue!35017 () ValueCell!10521)

(declare-fun mapRest!35017 () (Array (_ BitVec 32) ValueCell!10521))

(declare-fun mapKey!35017 () (_ BitVec 32))

(assert (=> mapNonEmpty!35017 (= (arr!28888 _values!1425) (store mapRest!35017 mapKey!35017 mapValue!35017))))

(assert (= (and start!83142 res!648938) b!969396))

(assert (= (and b!969396 res!648940) b!969397))

(assert (= (and b!969397 res!648943) b!969390))

(assert (= (and b!969390 res!648941) b!969394))

(assert (= (and b!969394 res!648942) b!969393))

(assert (= (and b!969393 res!648939) b!969392))

(assert (= (and b!969389 condMapEmpty!35017) mapIsEmpty!35017))

(assert (= (and b!969389 (not condMapEmpty!35017)) mapNonEmpty!35017))

(get-info :version)

(assert (= (and mapNonEmpty!35017 ((_ is ValueCellFull!10521) mapValue!35017)) b!969391))

(assert (= (and b!969389 ((_ is ValueCellFull!10521) mapDefault!35017)) b!969395))

(assert (= start!83142 b!969389))

(declare-fun m!897463 () Bool)

(assert (=> mapNonEmpty!35017 m!897463))

(declare-fun m!897465 () Bool)

(assert (=> b!969397 m!897465))

(declare-fun m!897467 () Bool)

(assert (=> b!969392 m!897467))

(declare-fun m!897469 () Bool)

(assert (=> b!969392 m!897469))

(assert (=> b!969392 m!897467))

(assert (=> b!969392 m!897469))

(declare-fun m!897471 () Bool)

(assert (=> b!969392 m!897471))

(assert (=> b!969393 m!897469))

(assert (=> b!969393 m!897469))

(declare-fun m!897473 () Bool)

(assert (=> b!969393 m!897473))

(declare-fun m!897475 () Bool)

(assert (=> start!83142 m!897475))

(declare-fun m!897477 () Bool)

(assert (=> start!83142 m!897477))

(declare-fun m!897479 () Bool)

(assert (=> start!83142 m!897479))

(declare-fun m!897481 () Bool)

(assert (=> b!969390 m!897481))

(check-sat b_and!30613 (not b!969393) (not b!969392) tp_is_empty!22005 (not b!969397) (not b_next!19107) (not start!83142) (not mapNonEmpty!35017) (not b!969390))
(check-sat b_and!30613 (not b_next!19107))
