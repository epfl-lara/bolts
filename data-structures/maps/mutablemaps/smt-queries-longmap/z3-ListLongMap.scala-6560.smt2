; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83274 () Bool)

(assert start!83274)

(declare-fun b_free!19239 () Bool)

(declare-fun b_next!19239 () Bool)

(assert (=> start!83274 (= b_free!19239 (not b_next!19239))))

(declare-fun tp!66997 () Bool)

(declare-fun b_and!30745 () Bool)

(assert (=> start!83274 (= tp!66997 b_and!30745)))

(declare-fun mapNonEmpty!35215 () Bool)

(declare-fun mapRes!35215 () Bool)

(declare-fun tp!66996 () Bool)

(declare-fun e!547540 () Bool)

(assert (=> mapNonEmpty!35215 (= mapRes!35215 (and tp!66996 e!547540))))

(declare-datatypes ((V!34499 0))(
  ( (V!34500 (val!11119 Int)) )
))
(declare-datatypes ((ValueCell!10587 0))(
  ( (ValueCellFull!10587 (v!13678 V!34499)) (EmptyCell!10587) )
))
(declare-fun mapValue!35215 () ValueCell!10587)

(declare-datatypes ((array!60307 0))(
  ( (array!60308 (arr!29013 (Array (_ BitVec 32) ValueCell!10587)) (size!29493 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60307)

(declare-fun mapKey!35215 () (_ BitVec 32))

(declare-fun mapRest!35215 () (Array (_ BitVec 32) ValueCell!10587))

(assert (=> mapNonEmpty!35215 (= (arr!29013 _values!1425) (store mapRest!35215 mapKey!35215 mapValue!35215))))

(declare-fun b!971239 () Bool)

(declare-fun e!547538 () Bool)

(declare-fun tp_is_empty!22137 () Bool)

(assert (=> b!971239 (= e!547538 tp_is_empty!22137)))

(declare-fun b!971240 () Bool)

(assert (=> b!971240 (= e!547540 tp_is_empty!22137)))

(declare-fun b!971241 () Bool)

(declare-fun res!650197 () Bool)

(declare-fun e!547539 () Bool)

(assert (=> b!971241 (=> (not res!650197) (not e!547539))))

(declare-datatypes ((array!60309 0))(
  ( (array!60310 (arr!29014 (Array (_ BitVec 32) (_ BitVec 64))) (size!29494 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60309)

(declare-datatypes ((List!20246 0))(
  ( (Nil!20243) (Cons!20242 (h!21404 (_ BitVec 64)) (t!28617 List!20246)) )
))
(declare-fun arrayNoDuplicates!0 (array!60309 (_ BitVec 32) List!20246) Bool)

(assert (=> b!971241 (= res!650197 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20243))))

(declare-fun b!971242 () Bool)

(declare-fun res!650196 () Bool)

(assert (=> b!971242 (=> (not res!650196) (not e!547539))))

(declare-fun zeroValue!1367 () V!34499)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34499)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14356 0))(
  ( (tuple2!14357 (_1!7188 (_ BitVec 64)) (_2!7188 V!34499)) )
))
(declare-datatypes ((List!20247 0))(
  ( (Nil!20244) (Cons!20243 (h!21405 tuple2!14356) (t!28618 List!20247)) )
))
(declare-datatypes ((ListLongMap!13067 0))(
  ( (ListLongMap!13068 (toList!6549 List!20247)) )
))
(declare-fun contains!5601 (ListLongMap!13067 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3734 (array!60309 array!60307 (_ BitVec 32) (_ BitVec 32) V!34499 V!34499 (_ BitVec 32) Int) ListLongMap!13067)

(assert (=> b!971242 (= res!650196 (contains!5601 (getCurrentListMap!3734 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29014 _keys!1717) i!822)))))

(declare-fun b!971243 () Bool)

(declare-fun res!650194 () Bool)

(assert (=> b!971243 (=> (not res!650194) (not e!547539))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971243 (= res!650194 (validKeyInArray!0 (select (arr!29014 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35215 () Bool)

(assert (=> mapIsEmpty!35215 mapRes!35215))

(declare-fun b!971244 () Bool)

(declare-fun res!650195 () Bool)

(assert (=> b!971244 (=> (not res!650195) (not e!547539))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60309 (_ BitVec 32)) Bool)

(assert (=> b!971244 (= res!650195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!650198 () Bool)

(assert (=> start!83274 (=> (not res!650198) (not e!547539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83274 (= res!650198 (validMask!0 mask!2147))))

(assert (=> start!83274 e!547539))

(assert (=> start!83274 true))

(declare-fun e!547542 () Bool)

(declare-fun array_inv!22343 (array!60307) Bool)

(assert (=> start!83274 (and (array_inv!22343 _values!1425) e!547542)))

(assert (=> start!83274 tp_is_empty!22137))

(assert (=> start!83274 tp!66997))

(declare-fun array_inv!22344 (array!60309) Bool)

(assert (=> start!83274 (array_inv!22344 _keys!1717)))

(declare-fun b!971245 () Bool)

(assert (=> b!971245 (= e!547542 (and e!547538 mapRes!35215))))

(declare-fun condMapEmpty!35215 () Bool)

(declare-fun mapDefault!35215 () ValueCell!10587)

(assert (=> b!971245 (= condMapEmpty!35215 (= (arr!29013 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10587)) mapDefault!35215)))))

(declare-fun b!971246 () Bool)

(declare-fun res!650199 () Bool)

(assert (=> b!971246 (=> (not res!650199) (not e!547539))))

(assert (=> b!971246 (= res!650199 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29494 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29494 _keys!1717))))))

(declare-fun b!971247 () Bool)

(assert (=> b!971247 (= e!547539 false)))

(declare-fun lt!431773 () ListLongMap!13067)

(assert (=> b!971247 (= lt!431773 (getCurrentListMap!3734 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971248 () Bool)

(declare-fun res!650200 () Bool)

(assert (=> b!971248 (=> (not res!650200) (not e!547539))))

(assert (=> b!971248 (= res!650200 (and (= (size!29493 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29494 _keys!1717) (size!29493 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(assert (= (and start!83274 res!650198) b!971248))

(assert (= (and b!971248 res!650200) b!971244))

(assert (= (and b!971244 res!650195) b!971241))

(assert (= (and b!971241 res!650197) b!971246))

(assert (= (and b!971246 res!650199) b!971243))

(assert (= (and b!971243 res!650194) b!971242))

(assert (= (and b!971242 res!650196) b!971247))

(assert (= (and b!971245 condMapEmpty!35215) mapIsEmpty!35215))

(assert (= (and b!971245 (not condMapEmpty!35215)) mapNonEmpty!35215))

(get-info :version)

(assert (= (and mapNonEmpty!35215 ((_ is ValueCellFull!10587) mapValue!35215)) b!971240))

(assert (= (and b!971245 ((_ is ValueCellFull!10587) mapDefault!35215)) b!971239))

(assert (= start!83274 b!971245))

(declare-fun m!898815 () Bool)

(assert (=> b!971243 m!898815))

(assert (=> b!971243 m!898815))

(declare-fun m!898817 () Bool)

(assert (=> b!971243 m!898817))

(declare-fun m!898819 () Bool)

(assert (=> mapNonEmpty!35215 m!898819))

(declare-fun m!898821 () Bool)

(assert (=> b!971242 m!898821))

(assert (=> b!971242 m!898815))

(assert (=> b!971242 m!898821))

(assert (=> b!971242 m!898815))

(declare-fun m!898823 () Bool)

(assert (=> b!971242 m!898823))

(declare-fun m!898825 () Bool)

(assert (=> start!83274 m!898825))

(declare-fun m!898827 () Bool)

(assert (=> start!83274 m!898827))

(declare-fun m!898829 () Bool)

(assert (=> start!83274 m!898829))

(declare-fun m!898831 () Bool)

(assert (=> b!971244 m!898831))

(declare-fun m!898833 () Bool)

(assert (=> b!971241 m!898833))

(declare-fun m!898835 () Bool)

(assert (=> b!971247 m!898835))

(check-sat (not b!971247) (not b!971243) (not mapNonEmpty!35215) tp_is_empty!22137 (not b!971241) (not b!971242) b_and!30745 (not start!83274) (not b_next!19239) (not b!971244))
(check-sat b_and!30745 (not b_next!19239))
