; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83148 () Bool)

(assert start!83148)

(declare-fun b_free!19113 () Bool)

(declare-fun b_next!19113 () Bool)

(assert (=> start!83148 (= b_free!19113 (not b_next!19113))))

(declare-fun tp!66619 () Bool)

(declare-fun b_and!30619 () Bool)

(assert (=> start!83148 (= tp!66619 b_and!30619)))

(declare-fun mapNonEmpty!35026 () Bool)

(declare-fun mapRes!35026 () Bool)

(declare-fun tp!66618 () Bool)

(declare-fun e!546595 () Bool)

(assert (=> mapNonEmpty!35026 (= mapRes!35026 (and tp!66618 e!546595))))

(declare-datatypes ((V!34331 0))(
  ( (V!34332 (val!11056 Int)) )
))
(declare-datatypes ((ValueCell!10524 0))(
  ( (ValueCellFull!10524 (v!13615 V!34331)) (EmptyCell!10524) )
))
(declare-datatypes ((array!60069 0))(
  ( (array!60070 (arr!28894 (Array (_ BitVec 32) ValueCell!10524)) (size!29374 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60069)

(declare-fun mapRest!35026 () (Array (_ BitVec 32) ValueCell!10524))

(declare-fun mapKey!35026 () (_ BitVec 32))

(declare-fun mapValue!35026 () ValueCell!10524)

(assert (=> mapNonEmpty!35026 (= (arr!28894 _values!1425) (store mapRest!35026 mapKey!35026 mapValue!35026))))

(declare-fun b!969470 () Bool)

(declare-fun res!648994 () Bool)

(declare-fun e!546593 () Bool)

(assert (=> b!969470 (=> (not res!648994) (not e!546593))))

(declare-datatypes ((array!60071 0))(
  ( (array!60072 (arr!28895 (Array (_ BitVec 32) (_ BitVec 64))) (size!29375 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60071)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60071 (_ BitVec 32)) Bool)

(assert (=> b!969470 (= res!648994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969471 () Bool)

(declare-fun res!648993 () Bool)

(assert (=> b!969471 (=> (not res!648993) (not e!546593))))

(declare-datatypes ((List!20154 0))(
  ( (Nil!20151) (Cons!20150 (h!21312 (_ BitVec 64)) (t!28525 List!20154)) )
))
(declare-fun arrayNoDuplicates!0 (array!60071 (_ BitVec 32) List!20154) Bool)

(assert (=> b!969471 (= res!648993 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20151))))

(declare-fun b!969472 () Bool)

(assert (=> b!969472 (= e!546593 false)))

(declare-fun zeroValue!1367 () V!34331)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34331)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun lt!431602 () Bool)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14262 0))(
  ( (tuple2!14263 (_1!7141 (_ BitVec 64)) (_2!7141 V!34331)) )
))
(declare-datatypes ((List!20155 0))(
  ( (Nil!20152) (Cons!20151 (h!21313 tuple2!14262) (t!28526 List!20155)) )
))
(declare-datatypes ((ListLongMap!12973 0))(
  ( (ListLongMap!12974 (toList!6502 List!20155)) )
))
(declare-fun contains!5557 (ListLongMap!12973 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3687 (array!60071 array!60069 (_ BitVec 32) (_ BitVec 32) V!34331 V!34331 (_ BitVec 32) Int) ListLongMap!12973)

(assert (=> b!969472 (= lt!431602 (contains!5557 (getCurrentListMap!3687 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28895 _keys!1717) i!822)))))

(declare-fun res!648996 () Bool)

(assert (=> start!83148 (=> (not res!648996) (not e!546593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83148 (= res!648996 (validMask!0 mask!2147))))

(assert (=> start!83148 e!546593))

(assert (=> start!83148 true))

(declare-fun e!546597 () Bool)

(declare-fun array_inv!22261 (array!60069) Bool)

(assert (=> start!83148 (and (array_inv!22261 _values!1425) e!546597)))

(declare-fun tp_is_empty!22011 () Bool)

(assert (=> start!83148 tp_is_empty!22011))

(assert (=> start!83148 tp!66619))

(declare-fun array_inv!22262 (array!60071) Bool)

(assert (=> start!83148 (array_inv!22262 _keys!1717)))

(declare-fun b!969473 () Bool)

(assert (=> b!969473 (= e!546595 tp_is_empty!22011)))

(declare-fun b!969474 () Bool)

(declare-fun e!546596 () Bool)

(assert (=> b!969474 (= e!546597 (and e!546596 mapRes!35026))))

(declare-fun condMapEmpty!35026 () Bool)

(declare-fun mapDefault!35026 () ValueCell!10524)

(assert (=> b!969474 (= condMapEmpty!35026 (= (arr!28894 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10524)) mapDefault!35026)))))

(declare-fun b!969475 () Bool)

(declare-fun res!648992 () Bool)

(assert (=> b!969475 (=> (not res!648992) (not e!546593))))

(assert (=> b!969475 (= res!648992 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29375 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29375 _keys!1717))))))

(declare-fun b!969476 () Bool)

(declare-fun res!648995 () Bool)

(assert (=> b!969476 (=> (not res!648995) (not e!546593))))

(assert (=> b!969476 (= res!648995 (and (= (size!29374 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29375 _keys!1717) (size!29374 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969477 () Bool)

(assert (=> b!969477 (= e!546596 tp_is_empty!22011)))

(declare-fun mapIsEmpty!35026 () Bool)

(assert (=> mapIsEmpty!35026 mapRes!35026))

(declare-fun b!969478 () Bool)

(declare-fun res!648997 () Bool)

(assert (=> b!969478 (=> (not res!648997) (not e!546593))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969478 (= res!648997 (validKeyInArray!0 (select (arr!28895 _keys!1717) i!822)))))

(assert (= (and start!83148 res!648996) b!969476))

(assert (= (and b!969476 res!648995) b!969470))

(assert (= (and b!969470 res!648994) b!969471))

(assert (= (and b!969471 res!648993) b!969475))

(assert (= (and b!969475 res!648992) b!969478))

(assert (= (and b!969478 res!648997) b!969472))

(assert (= (and b!969474 condMapEmpty!35026) mapIsEmpty!35026))

(assert (= (and b!969474 (not condMapEmpty!35026)) mapNonEmpty!35026))

(get-info :version)

(assert (= (and mapNonEmpty!35026 ((_ is ValueCellFull!10524) mapValue!35026)) b!969473))

(assert (= (and b!969474 ((_ is ValueCellFull!10524) mapDefault!35026)) b!969477))

(assert (= start!83148 b!969474))

(declare-fun m!897523 () Bool)

(assert (=> b!969471 m!897523))

(declare-fun m!897525 () Bool)

(assert (=> b!969470 m!897525))

(declare-fun m!897527 () Bool)

(assert (=> start!83148 m!897527))

(declare-fun m!897529 () Bool)

(assert (=> start!83148 m!897529))

(declare-fun m!897531 () Bool)

(assert (=> start!83148 m!897531))

(declare-fun m!897533 () Bool)

(assert (=> b!969472 m!897533))

(declare-fun m!897535 () Bool)

(assert (=> b!969472 m!897535))

(assert (=> b!969472 m!897533))

(assert (=> b!969472 m!897535))

(declare-fun m!897537 () Bool)

(assert (=> b!969472 m!897537))

(assert (=> b!969478 m!897535))

(assert (=> b!969478 m!897535))

(declare-fun m!897539 () Bool)

(assert (=> b!969478 m!897539))

(declare-fun m!897541 () Bool)

(assert (=> mapNonEmpty!35026 m!897541))

(check-sat (not b!969470) tp_is_empty!22011 (not b!969478) (not start!83148) (not mapNonEmpty!35026) (not b!969471) (not b_next!19113) (not b!969472) b_and!30619)
(check-sat b_and!30619 (not b_next!19113))
