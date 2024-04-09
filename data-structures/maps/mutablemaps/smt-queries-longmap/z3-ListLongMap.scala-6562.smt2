; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83286 () Bool)

(assert start!83286)

(declare-fun b_free!19251 () Bool)

(declare-fun b_next!19251 () Bool)

(assert (=> start!83286 (= b_free!19251 (not b_next!19251))))

(declare-fun tp!67032 () Bool)

(declare-fun b_and!30757 () Bool)

(assert (=> start!83286 (= tp!67032 b_and!30757)))

(declare-fun b!971419 () Bool)

(declare-fun e!547629 () Bool)

(declare-fun tp_is_empty!22149 () Bool)

(assert (=> b!971419 (= e!547629 tp_is_empty!22149)))

(declare-fun b!971420 () Bool)

(declare-fun res!650321 () Bool)

(declare-fun e!547628 () Bool)

(assert (=> b!971420 (=> (not res!650321) (not e!547628))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34515 0))(
  ( (V!34516 (val!11125 Int)) )
))
(declare-datatypes ((ValueCell!10593 0))(
  ( (ValueCellFull!10593 (v!13684 V!34515)) (EmptyCell!10593) )
))
(declare-datatypes ((array!60331 0))(
  ( (array!60332 (arr!29025 (Array (_ BitVec 32) ValueCell!10593)) (size!29505 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60331)

(declare-fun zeroValue!1367 () V!34515)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34515)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60333 0))(
  ( (array!60334 (arr!29026 (Array (_ BitVec 32) (_ BitVec 64))) (size!29506 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60333)

(declare-datatypes ((tuple2!14366 0))(
  ( (tuple2!14367 (_1!7193 (_ BitVec 64)) (_2!7193 V!34515)) )
))
(declare-datatypes ((List!20255 0))(
  ( (Nil!20252) (Cons!20251 (h!21413 tuple2!14366) (t!28626 List!20255)) )
))
(declare-datatypes ((ListLongMap!13077 0))(
  ( (ListLongMap!13078 (toList!6554 List!20255)) )
))
(declare-fun contains!5605 (ListLongMap!13077 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3739 (array!60333 array!60331 (_ BitVec 32) (_ BitVec 32) V!34515 V!34515 (_ BitVec 32) Int) ListLongMap!13077)

(assert (=> b!971420 (= res!650321 (contains!5605 (getCurrentListMap!3739 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29026 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35233 () Bool)

(declare-fun mapRes!35233 () Bool)

(assert (=> mapIsEmpty!35233 mapRes!35233))

(declare-fun b!971421 () Bool)

(declare-fun res!650325 () Bool)

(assert (=> b!971421 (=> (not res!650325) (not e!547628))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971421 (= res!650325 (validKeyInArray!0 (select (arr!29026 _keys!1717) i!822)))))

(declare-fun b!971422 () Bool)

(declare-fun res!650322 () Bool)

(assert (=> b!971422 (=> (not res!650322) (not e!547628))))

(assert (=> b!971422 (= res!650322 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29506 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29506 _keys!1717))))))

(declare-fun res!650323 () Bool)

(assert (=> start!83286 (=> (not res!650323) (not e!547628))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83286 (= res!650323 (validMask!0 mask!2147))))

(assert (=> start!83286 e!547628))

(assert (=> start!83286 true))

(declare-fun e!547631 () Bool)

(declare-fun array_inv!22353 (array!60331) Bool)

(assert (=> start!83286 (and (array_inv!22353 _values!1425) e!547631)))

(assert (=> start!83286 tp_is_empty!22149))

(assert (=> start!83286 tp!67032))

(declare-fun array_inv!22354 (array!60333) Bool)

(assert (=> start!83286 (array_inv!22354 _keys!1717)))

(declare-fun b!971423 () Bool)

(declare-fun res!650324 () Bool)

(assert (=> b!971423 (=> (not res!650324) (not e!547628))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60333 (_ BitVec 32)) Bool)

(assert (=> b!971423 (= res!650324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971424 () Bool)

(declare-fun res!650320 () Bool)

(assert (=> b!971424 (=> (not res!650320) (not e!547628))))

(assert (=> b!971424 (= res!650320 (and (= (size!29505 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29506 _keys!1717) (size!29505 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!971425 () Bool)

(declare-fun e!547630 () Bool)

(assert (=> b!971425 (= e!547630 tp_is_empty!22149)))

(declare-fun mapNonEmpty!35233 () Bool)

(declare-fun tp!67033 () Bool)

(assert (=> mapNonEmpty!35233 (= mapRes!35233 (and tp!67033 e!547629))))

(declare-fun mapValue!35233 () ValueCell!10593)

(declare-fun mapRest!35233 () (Array (_ BitVec 32) ValueCell!10593))

(declare-fun mapKey!35233 () (_ BitVec 32))

(assert (=> mapNonEmpty!35233 (= (arr!29025 _values!1425) (store mapRest!35233 mapKey!35233 mapValue!35233))))

(declare-fun b!971426 () Bool)

(assert (=> b!971426 (= e!547628 false)))

(declare-fun lt!431791 () ListLongMap!13077)

(assert (=> b!971426 (= lt!431791 (getCurrentListMap!3739 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971427 () Bool)

(declare-fun res!650326 () Bool)

(assert (=> b!971427 (=> (not res!650326) (not e!547628))))

(declare-datatypes ((List!20256 0))(
  ( (Nil!20253) (Cons!20252 (h!21414 (_ BitVec 64)) (t!28627 List!20256)) )
))
(declare-fun arrayNoDuplicates!0 (array!60333 (_ BitVec 32) List!20256) Bool)

(assert (=> b!971427 (= res!650326 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20253))))

(declare-fun b!971428 () Bool)

(assert (=> b!971428 (= e!547631 (and e!547630 mapRes!35233))))

(declare-fun condMapEmpty!35233 () Bool)

(declare-fun mapDefault!35233 () ValueCell!10593)

(assert (=> b!971428 (= condMapEmpty!35233 (= (arr!29025 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10593)) mapDefault!35233)))))

(assert (= (and start!83286 res!650323) b!971424))

(assert (= (and b!971424 res!650320) b!971423))

(assert (= (and b!971423 res!650324) b!971427))

(assert (= (and b!971427 res!650326) b!971422))

(assert (= (and b!971422 res!650322) b!971421))

(assert (= (and b!971421 res!650325) b!971420))

(assert (= (and b!971420 res!650321) b!971426))

(assert (= (and b!971428 condMapEmpty!35233) mapIsEmpty!35233))

(assert (= (and b!971428 (not condMapEmpty!35233)) mapNonEmpty!35233))

(get-info :version)

(assert (= (and mapNonEmpty!35233 ((_ is ValueCellFull!10593) mapValue!35233)) b!971419))

(assert (= (and b!971428 ((_ is ValueCellFull!10593) mapDefault!35233)) b!971425))

(assert (= start!83286 b!971428))

(declare-fun m!898947 () Bool)

(assert (=> start!83286 m!898947))

(declare-fun m!898949 () Bool)

(assert (=> start!83286 m!898949))

(declare-fun m!898951 () Bool)

(assert (=> start!83286 m!898951))

(declare-fun m!898953 () Bool)

(assert (=> b!971426 m!898953))

(declare-fun m!898955 () Bool)

(assert (=> b!971420 m!898955))

(declare-fun m!898957 () Bool)

(assert (=> b!971420 m!898957))

(assert (=> b!971420 m!898955))

(assert (=> b!971420 m!898957))

(declare-fun m!898959 () Bool)

(assert (=> b!971420 m!898959))

(declare-fun m!898961 () Bool)

(assert (=> b!971423 m!898961))

(declare-fun m!898963 () Bool)

(assert (=> b!971427 m!898963))

(assert (=> b!971421 m!898957))

(assert (=> b!971421 m!898957))

(declare-fun m!898965 () Bool)

(assert (=> b!971421 m!898965))

(declare-fun m!898967 () Bool)

(assert (=> mapNonEmpty!35233 m!898967))

(check-sat (not b!971427) (not b!971426) (not mapNonEmpty!35233) (not b!971423) (not b!971420) b_and!30757 tp_is_empty!22149 (not b!971421) (not start!83286) (not b_next!19251))
(check-sat b_and!30757 (not b_next!19251))
