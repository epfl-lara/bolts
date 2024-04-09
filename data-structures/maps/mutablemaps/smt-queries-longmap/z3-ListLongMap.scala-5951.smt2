; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77562 () Bool)

(assert start!77562)

(declare-fun b_free!16119 () Bool)

(declare-fun b_next!16119 () Bool)

(assert (=> start!77562 (= b_free!16119 (not b_next!16119))))

(declare-fun tp!56620 () Bool)

(declare-fun b_and!26503 () Bool)

(assert (=> start!77562 (= tp!56620 b_and!26503)))

(declare-fun res!609524 () Bool)

(declare-fun e!506092 () Bool)

(assert (=> start!77562 (=> (not res!609524) (not e!506092))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77562 (= res!609524 (validMask!0 mask!1756))))

(assert (=> start!77562 e!506092))

(declare-datatypes ((V!29681 0))(
  ( (V!29682 (val!9319 Int)) )
))
(declare-datatypes ((ValueCell!8787 0))(
  ( (ValueCellFull!8787 (v!11824 V!29681)) (EmptyCell!8787) )
))
(declare-datatypes ((array!53116 0))(
  ( (array!53117 (arr!25513 (Array (_ BitVec 32) ValueCell!8787)) (size!25973 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53116)

(declare-fun e!506089 () Bool)

(declare-fun array_inv!19970 (array!53116) Bool)

(assert (=> start!77562 (and (array_inv!19970 _values!1152) e!506089)))

(assert (=> start!77562 tp!56620))

(assert (=> start!77562 true))

(declare-fun tp_is_empty!18537 () Bool)

(assert (=> start!77562 tp_is_empty!18537))

(declare-datatypes ((array!53118 0))(
  ( (array!53119 (arr!25514 (Array (_ BitVec 32) (_ BitVec 64))) (size!25974 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53118)

(declare-fun array_inv!19971 (array!53118) Bool)

(assert (=> start!77562 (array_inv!19971 _keys!1386)))

(declare-fun b!903233 () Bool)

(declare-fun res!609522 () Bool)

(assert (=> b!903233 (=> (not res!609522) (not e!506092))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!903233 (= res!609522 (and (= (size!25973 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25974 _keys!1386) (size!25973 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!29518 () Bool)

(declare-fun mapRes!29518 () Bool)

(assert (=> mapIsEmpty!29518 mapRes!29518))

(declare-fun b!903234 () Bool)

(declare-fun e!506093 () Bool)

(assert (=> b!903234 (= e!506093 tp_is_empty!18537)))

(declare-fun b!903235 () Bool)

(assert (=> b!903235 (= e!506089 (and e!506093 mapRes!29518))))

(declare-fun condMapEmpty!29518 () Bool)

(declare-fun mapDefault!29518 () ValueCell!8787)

(assert (=> b!903235 (= condMapEmpty!29518 (= (arr!25513 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8787)) mapDefault!29518)))))

(declare-fun b!903236 () Bool)

(declare-fun res!609523 () Bool)

(assert (=> b!903236 (=> (not res!609523) (not e!506092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53118 (_ BitVec 32)) Bool)

(assert (=> b!903236 (= res!609523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!29518 () Bool)

(declare-fun tp!56619 () Bool)

(declare-fun e!506090 () Bool)

(assert (=> mapNonEmpty!29518 (= mapRes!29518 (and tp!56619 e!506090))))

(declare-fun mapRest!29518 () (Array (_ BitVec 32) ValueCell!8787))

(declare-fun mapKey!29518 () (_ BitVec 32))

(declare-fun mapValue!29518 () ValueCell!8787)

(assert (=> mapNonEmpty!29518 (= (arr!25513 _values!1152) (store mapRest!29518 mapKey!29518 mapValue!29518))))

(declare-fun b!903237 () Bool)

(assert (=> b!903237 (= e!506092 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29681)

(declare-fun lt!407945 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!29681)

(declare-datatypes ((tuple2!12122 0))(
  ( (tuple2!12123 (_1!6071 (_ BitVec 64)) (_2!6071 V!29681)) )
))
(declare-datatypes ((List!17998 0))(
  ( (Nil!17995) (Cons!17994 (h!19140 tuple2!12122) (t!25389 List!17998)) )
))
(declare-datatypes ((ListLongMap!10833 0))(
  ( (ListLongMap!10834 (toList!5432 List!17998)) )
))
(declare-fun contains!4445 (ListLongMap!10833 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2669 (array!53118 array!53116 (_ BitVec 32) (_ BitVec 32) V!29681 V!29681 (_ BitVec 32) Int) ListLongMap!10833)

(assert (=> b!903237 (= lt!407945 (contains!4445 (getCurrentListMap!2669 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!903238 () Bool)

(declare-fun res!609525 () Bool)

(assert (=> b!903238 (=> (not res!609525) (not e!506092))))

(declare-datatypes ((List!17999 0))(
  ( (Nil!17996) (Cons!17995 (h!19141 (_ BitVec 64)) (t!25390 List!17999)) )
))
(declare-fun arrayNoDuplicates!0 (array!53118 (_ BitVec 32) List!17999) Bool)

(assert (=> b!903238 (= res!609525 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17996))))

(declare-fun b!903239 () Bool)

(assert (=> b!903239 (= e!506090 tp_is_empty!18537)))

(assert (= (and start!77562 res!609524) b!903233))

(assert (= (and b!903233 res!609522) b!903236))

(assert (= (and b!903236 res!609523) b!903238))

(assert (= (and b!903238 res!609525) b!903237))

(assert (= (and b!903235 condMapEmpty!29518) mapIsEmpty!29518))

(assert (= (and b!903235 (not condMapEmpty!29518)) mapNonEmpty!29518))

(get-info :version)

(assert (= (and mapNonEmpty!29518 ((_ is ValueCellFull!8787) mapValue!29518)) b!903239))

(assert (= (and b!903235 ((_ is ValueCellFull!8787) mapDefault!29518)) b!903234))

(assert (= start!77562 b!903235))

(declare-fun m!839037 () Bool)

(assert (=> mapNonEmpty!29518 m!839037))

(declare-fun m!839039 () Bool)

(assert (=> b!903236 m!839039))

(declare-fun m!839041 () Bool)

(assert (=> start!77562 m!839041))

(declare-fun m!839043 () Bool)

(assert (=> start!77562 m!839043))

(declare-fun m!839045 () Bool)

(assert (=> start!77562 m!839045))

(declare-fun m!839047 () Bool)

(assert (=> b!903238 m!839047))

(declare-fun m!839049 () Bool)

(assert (=> b!903237 m!839049))

(assert (=> b!903237 m!839049))

(declare-fun m!839051 () Bool)

(assert (=> b!903237 m!839051))

(check-sat b_and!26503 (not b!903236) tp_is_empty!18537 (not start!77562) (not mapNonEmpty!29518) (not b!903238) (not b!903237) (not b_next!16119))
(check-sat b_and!26503 (not b_next!16119))
