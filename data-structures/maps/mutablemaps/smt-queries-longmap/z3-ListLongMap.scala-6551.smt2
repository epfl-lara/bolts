; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83220 () Bool)

(assert start!83220)

(declare-fun b_free!19185 () Bool)

(declare-fun b_next!19185 () Bool)

(assert (=> start!83220 (= b_free!19185 (not b_next!19185))))

(declare-fun tp!66834 () Bool)

(declare-fun b_and!30691 () Bool)

(assert (=> start!83220 (= tp!66834 b_and!30691)))

(declare-fun b!970451 () Bool)

(declare-fun res!649654 () Bool)

(declare-fun e!547133 () Bool)

(assert (=> b!970451 (=> (not res!649654) (not e!547133))))

(declare-datatypes ((array!60205 0))(
  ( (array!60206 (arr!28962 (Array (_ BitVec 32) (_ BitVec 64))) (size!29442 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60205)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60205 (_ BitVec 32)) Bool)

(assert (=> b!970451 (= res!649654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970452 () Bool)

(assert (=> b!970452 (= e!547133 false)))

(declare-fun lt!431701 () Bool)

(declare-datatypes ((V!34427 0))(
  ( (V!34428 (val!11092 Int)) )
))
(declare-datatypes ((ValueCell!10560 0))(
  ( (ValueCellFull!10560 (v!13651 V!34427)) (EmptyCell!10560) )
))
(declare-datatypes ((array!60207 0))(
  ( (array!60208 (arr!28963 (Array (_ BitVec 32) ValueCell!10560)) (size!29443 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60207)

(declare-fun zeroValue!1367 () V!34427)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34427)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14314 0))(
  ( (tuple2!14315 (_1!7167 (_ BitVec 64)) (_2!7167 V!34427)) )
))
(declare-datatypes ((List!20204 0))(
  ( (Nil!20201) (Cons!20200 (h!21362 tuple2!14314) (t!28575 List!20204)) )
))
(declare-datatypes ((ListLongMap!13025 0))(
  ( (ListLongMap!13026 (toList!6528 List!20204)) )
))
(declare-fun contains!5583 (ListLongMap!13025 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3713 (array!60205 array!60207 (_ BitVec 32) (_ BitVec 32) V!34427 V!34427 (_ BitVec 32) Int) ListLongMap!13025)

(assert (=> b!970452 (= lt!431701 (contains!5583 (getCurrentListMap!3713 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28962 _keys!1717) i!822)))))

(declare-fun b!970453 () Bool)

(declare-fun e!547137 () Bool)

(declare-fun tp_is_empty!22083 () Bool)

(assert (=> b!970453 (= e!547137 tp_is_empty!22083)))

(declare-fun b!970454 () Bool)

(declare-fun e!547135 () Bool)

(declare-fun e!547136 () Bool)

(declare-fun mapRes!35134 () Bool)

(assert (=> b!970454 (= e!547135 (and e!547136 mapRes!35134))))

(declare-fun condMapEmpty!35134 () Bool)

(declare-fun mapDefault!35134 () ValueCell!10560)

(assert (=> b!970454 (= condMapEmpty!35134 (= (arr!28963 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10560)) mapDefault!35134)))))

(declare-fun b!970455 () Bool)

(assert (=> b!970455 (= e!547136 tp_is_empty!22083)))

(declare-fun b!970456 () Bool)

(declare-fun res!649652 () Bool)

(assert (=> b!970456 (=> (not res!649652) (not e!547133))))

(assert (=> b!970456 (= res!649652 (and (= (size!29443 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29442 _keys!1717) (size!29443 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35134 () Bool)

(assert (=> mapIsEmpty!35134 mapRes!35134))

(declare-fun b!970457 () Bool)

(declare-fun res!649653 () Bool)

(assert (=> b!970457 (=> (not res!649653) (not e!547133))))

(assert (=> b!970457 (= res!649653 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29442 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29442 _keys!1717))))))

(declare-fun b!970458 () Bool)

(declare-fun res!649650 () Bool)

(assert (=> b!970458 (=> (not res!649650) (not e!547133))))

(declare-datatypes ((List!20205 0))(
  ( (Nil!20202) (Cons!20201 (h!21363 (_ BitVec 64)) (t!28576 List!20205)) )
))
(declare-fun arrayNoDuplicates!0 (array!60205 (_ BitVec 32) List!20205) Bool)

(assert (=> b!970458 (= res!649650 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20202))))

(declare-fun res!649651 () Bool)

(assert (=> start!83220 (=> (not res!649651) (not e!547133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83220 (= res!649651 (validMask!0 mask!2147))))

(assert (=> start!83220 e!547133))

(assert (=> start!83220 true))

(declare-fun array_inv!22307 (array!60207) Bool)

(assert (=> start!83220 (and (array_inv!22307 _values!1425) e!547135)))

(assert (=> start!83220 tp_is_empty!22083))

(assert (=> start!83220 tp!66834))

(declare-fun array_inv!22308 (array!60205) Bool)

(assert (=> start!83220 (array_inv!22308 _keys!1717)))

(declare-fun mapNonEmpty!35134 () Bool)

(declare-fun tp!66835 () Bool)

(assert (=> mapNonEmpty!35134 (= mapRes!35134 (and tp!66835 e!547137))))

(declare-fun mapValue!35134 () ValueCell!10560)

(declare-fun mapRest!35134 () (Array (_ BitVec 32) ValueCell!10560))

(declare-fun mapKey!35134 () (_ BitVec 32))

(assert (=> mapNonEmpty!35134 (= (arr!28963 _values!1425) (store mapRest!35134 mapKey!35134 mapValue!35134))))

(declare-fun b!970459 () Bool)

(declare-fun res!649649 () Bool)

(assert (=> b!970459 (=> (not res!649649) (not e!547133))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970459 (= res!649649 (validKeyInArray!0 (select (arr!28962 _keys!1717) i!822)))))

(assert (= (and start!83220 res!649651) b!970456))

(assert (= (and b!970456 res!649652) b!970451))

(assert (= (and b!970451 res!649654) b!970458))

(assert (= (and b!970458 res!649650) b!970457))

(assert (= (and b!970457 res!649653) b!970459))

(assert (= (and b!970459 res!649649) b!970452))

(assert (= (and b!970454 condMapEmpty!35134) mapIsEmpty!35134))

(assert (= (and b!970454 (not condMapEmpty!35134)) mapNonEmpty!35134))

(get-info :version)

(assert (= (and mapNonEmpty!35134 ((_ is ValueCellFull!10560) mapValue!35134)) b!970453))

(assert (= (and b!970454 ((_ is ValueCellFull!10560) mapDefault!35134)) b!970455))

(assert (= start!83220 b!970454))

(declare-fun m!898243 () Bool)

(assert (=> b!970458 m!898243))

(declare-fun m!898245 () Bool)

(assert (=> b!970452 m!898245))

(declare-fun m!898247 () Bool)

(assert (=> b!970452 m!898247))

(assert (=> b!970452 m!898245))

(assert (=> b!970452 m!898247))

(declare-fun m!898249 () Bool)

(assert (=> b!970452 m!898249))

(declare-fun m!898251 () Bool)

(assert (=> b!970451 m!898251))

(declare-fun m!898253 () Bool)

(assert (=> start!83220 m!898253))

(declare-fun m!898255 () Bool)

(assert (=> start!83220 m!898255))

(declare-fun m!898257 () Bool)

(assert (=> start!83220 m!898257))

(assert (=> b!970459 m!898247))

(assert (=> b!970459 m!898247))

(declare-fun m!898259 () Bool)

(assert (=> b!970459 m!898259))

(declare-fun m!898261 () Bool)

(assert (=> mapNonEmpty!35134 m!898261))

(check-sat (not b!970452) (not mapNonEmpty!35134) (not b!970459) (not start!83220) (not b_next!19185) (not b!970451) (not b!970458) tp_is_empty!22083 b_and!30691)
(check-sat b_and!30691 (not b_next!19185))
