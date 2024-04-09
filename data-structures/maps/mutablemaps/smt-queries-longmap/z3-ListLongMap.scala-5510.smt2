; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72874 () Bool)

(assert start!72874)

(declare-fun b_free!13761 () Bool)

(declare-fun b_next!13761 () Bool)

(assert (=> start!72874 (= b_free!13761 (not b_next!13761))))

(declare-fun tp!48787 () Bool)

(declare-fun b_and!22865 () Bool)

(assert (=> start!72874 (= tp!48787 b_and!22865)))

(declare-fun b!845291 () Bool)

(declare-fun e!471915 () Bool)

(declare-fun e!471912 () Bool)

(declare-fun mapRes!25445 () Bool)

(assert (=> b!845291 (= e!471915 (and e!471912 mapRes!25445))))

(declare-fun condMapEmpty!25445 () Bool)

(declare-datatypes ((V!26243 0))(
  ( (V!26244 (val!7996 Int)) )
))
(declare-datatypes ((ValueCell!7509 0))(
  ( (ValueCellFull!7509 (v!10417 V!26243)) (EmptyCell!7509) )
))
(declare-datatypes ((array!47998 0))(
  ( (array!47999 (arr!23026 (Array (_ BitVec 32) ValueCell!7509)) (size!23467 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47998)

(declare-fun mapDefault!25445 () ValueCell!7509)

(assert (=> b!845291 (= condMapEmpty!25445 (= (arr!23026 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7509)) mapDefault!25445)))))

(declare-fun mapIsEmpty!25445 () Bool)

(assert (=> mapIsEmpty!25445 mapRes!25445))

(declare-fun b!845292 () Bool)

(declare-fun res!574356 () Bool)

(declare-fun e!471914 () Bool)

(assert (=> b!845292 (=> (not res!574356) (not e!471914))))

(declare-datatypes ((array!48000 0))(
  ( (array!48001 (arr!23027 (Array (_ BitVec 32) (_ BitVec 64))) (size!23468 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48000)

(declare-datatypes ((List!16372 0))(
  ( (Nil!16369) (Cons!16368 (h!17499 (_ BitVec 64)) (t!22751 List!16372)) )
))
(declare-fun arrayNoDuplicates!0 (array!48000 (_ BitVec 32) List!16372) Bool)

(assert (=> b!845292 (= res!574356 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16369))))

(declare-fun b!845293 () Bool)

(declare-fun tp_is_empty!15897 () Bool)

(assert (=> b!845293 (= e!471912 tp_is_empty!15897)))

(declare-fun b!845294 () Bool)

(declare-fun res!574357 () Bool)

(assert (=> b!845294 (=> (not res!574357) (not e!471914))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!845294 (= res!574357 (and (= (size!23467 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23468 _keys!868) (size!23467 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!845295 () Bool)

(declare-fun res!574355 () Bool)

(assert (=> b!845295 (=> (not res!574355) (not e!471914))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!845295 (= res!574355 (and (= (select (arr!23027 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!574358 () Bool)

(assert (=> start!72874 (=> (not res!574358) (not e!471914))))

(assert (=> start!72874 (= res!574358 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23468 _keys!868))))))

(assert (=> start!72874 e!471914))

(assert (=> start!72874 true))

(assert (=> start!72874 tp!48787))

(declare-fun array_inv!18280 (array!48000) Bool)

(assert (=> start!72874 (array_inv!18280 _keys!868)))

(declare-fun array_inv!18281 (array!47998) Bool)

(assert (=> start!72874 (and (array_inv!18281 _values!688) e!471915)))

(assert (=> start!72874 tp_is_empty!15897))

(declare-fun b!845290 () Bool)

(declare-fun e!471911 () Bool)

(assert (=> b!845290 (= e!471911 tp_is_empty!15897)))

(declare-fun b!845296 () Bool)

(assert (=> b!845296 (= e!471914 false)))

(declare-datatypes ((tuple2!10460 0))(
  ( (tuple2!10461 (_1!5240 (_ BitVec 64)) (_2!5240 V!26243)) )
))
(declare-datatypes ((List!16373 0))(
  ( (Nil!16370) (Cons!16369 (h!17500 tuple2!10460) (t!22752 List!16373)) )
))
(declare-datatypes ((ListLongMap!9243 0))(
  ( (ListLongMap!9244 (toList!4637 List!16373)) )
))
(declare-fun lt!381357 () ListLongMap!9243)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26243)

(declare-fun zeroValue!654 () V!26243)

(declare-fun getCurrentListMapNoExtraKeys!2626 (array!48000 array!47998 (_ BitVec 32) (_ BitVec 32) V!26243 V!26243 (_ BitVec 32) Int) ListLongMap!9243)

(assert (=> b!845296 (= lt!381357 (getCurrentListMapNoExtraKeys!2626 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!845297 () Bool)

(declare-fun res!574360 () Bool)

(assert (=> b!845297 (=> (not res!574360) (not e!471914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48000 (_ BitVec 32)) Bool)

(assert (=> b!845297 (= res!574360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!845298 () Bool)

(declare-fun res!574362 () Bool)

(assert (=> b!845298 (=> (not res!574362) (not e!471914))))

(assert (=> b!845298 (= res!574362 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23468 _keys!868))))))

(declare-fun b!845299 () Bool)

(declare-fun res!574359 () Bool)

(assert (=> b!845299 (=> (not res!574359) (not e!471914))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845299 (= res!574359 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!25445 () Bool)

(declare-fun tp!48788 () Bool)

(assert (=> mapNonEmpty!25445 (= mapRes!25445 (and tp!48788 e!471911))))

(declare-fun mapKey!25445 () (_ BitVec 32))

(declare-fun mapValue!25445 () ValueCell!7509)

(declare-fun mapRest!25445 () (Array (_ BitVec 32) ValueCell!7509))

(assert (=> mapNonEmpty!25445 (= (arr!23026 _values!688) (store mapRest!25445 mapKey!25445 mapValue!25445))))

(declare-fun b!845300 () Bool)

(declare-fun res!574361 () Bool)

(assert (=> b!845300 (=> (not res!574361) (not e!471914))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845300 (= res!574361 (validMask!0 mask!1196))))

(assert (= (and start!72874 res!574358) b!845300))

(assert (= (and b!845300 res!574361) b!845294))

(assert (= (and b!845294 res!574357) b!845297))

(assert (= (and b!845297 res!574360) b!845292))

(assert (= (and b!845292 res!574356) b!845298))

(assert (= (and b!845298 res!574362) b!845299))

(assert (= (and b!845299 res!574359) b!845295))

(assert (= (and b!845295 res!574355) b!845296))

(assert (= (and b!845291 condMapEmpty!25445) mapIsEmpty!25445))

(assert (= (and b!845291 (not condMapEmpty!25445)) mapNonEmpty!25445))

(get-info :version)

(assert (= (and mapNonEmpty!25445 ((_ is ValueCellFull!7509) mapValue!25445)) b!845290))

(assert (= (and b!845291 ((_ is ValueCellFull!7509) mapDefault!25445)) b!845293))

(assert (= start!72874 b!845291))

(declare-fun m!787211 () Bool)

(assert (=> b!845296 m!787211))

(declare-fun m!787213 () Bool)

(assert (=> mapNonEmpty!25445 m!787213))

(declare-fun m!787215 () Bool)

(assert (=> b!845300 m!787215))

(declare-fun m!787217 () Bool)

(assert (=> start!72874 m!787217))

(declare-fun m!787219 () Bool)

(assert (=> start!72874 m!787219))

(declare-fun m!787221 () Bool)

(assert (=> b!845292 m!787221))

(declare-fun m!787223 () Bool)

(assert (=> b!845295 m!787223))

(declare-fun m!787225 () Bool)

(assert (=> b!845297 m!787225))

(declare-fun m!787227 () Bool)

(assert (=> b!845299 m!787227))

(check-sat (not start!72874) (not b!845297) (not mapNonEmpty!25445) (not b_next!13761) (not b!845299) (not b!845300) tp_is_empty!15897 (not b!845292) (not b!845296) b_and!22865)
(check-sat b_and!22865 (not b_next!13761))
