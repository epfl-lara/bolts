; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72880 () Bool)

(assert start!72880)

(declare-fun b_free!13767 () Bool)

(declare-fun b_next!13767 () Bool)

(assert (=> start!72880 (= b_free!13767 (not b_next!13767))))

(declare-fun tp!48806 () Bool)

(declare-fun b_and!22871 () Bool)

(assert (=> start!72880 (= tp!48806 b_and!22871)))

(declare-fun mapIsEmpty!25454 () Bool)

(declare-fun mapRes!25454 () Bool)

(assert (=> mapIsEmpty!25454 mapRes!25454))

(declare-fun b!845389 () Bool)

(declare-fun e!471958 () Bool)

(assert (=> b!845389 (= e!471958 false)))

(declare-datatypes ((V!26251 0))(
  ( (V!26252 (val!7999 Int)) )
))
(declare-datatypes ((tuple2!10464 0))(
  ( (tuple2!10465 (_1!5242 (_ BitVec 64)) (_2!5242 V!26251)) )
))
(declare-datatypes ((List!16376 0))(
  ( (Nil!16373) (Cons!16372 (h!17503 tuple2!10464) (t!22755 List!16376)) )
))
(declare-datatypes ((ListLongMap!9247 0))(
  ( (ListLongMap!9248 (toList!4639 List!16376)) )
))
(declare-fun lt!381366 () ListLongMap!9247)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48008 0))(
  ( (array!48009 (arr!23031 (Array (_ BitVec 32) (_ BitVec 64))) (size!23472 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48008)

(declare-datatypes ((ValueCell!7512 0))(
  ( (ValueCellFull!7512 (v!10420 V!26251)) (EmptyCell!7512) )
))
(declare-datatypes ((array!48010 0))(
  ( (array!48011 (arr!23032 (Array (_ BitVec 32) ValueCell!7512)) (size!23473 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48010)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26251)

(declare-fun zeroValue!654 () V!26251)

(declare-fun getCurrentListMapNoExtraKeys!2628 (array!48008 array!48010 (_ BitVec 32) (_ BitVec 32) V!26251 V!26251 (_ BitVec 32) Int) ListLongMap!9247)

(assert (=> b!845389 (= lt!381366 (getCurrentListMapNoExtraKeys!2628 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!845390 () Bool)

(declare-fun res!574428 () Bool)

(assert (=> b!845390 (=> (not res!574428) (not e!471958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48008 (_ BitVec 32)) Bool)

(assert (=> b!845390 (= res!574428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25454 () Bool)

(declare-fun tp!48805 () Bool)

(declare-fun e!471959 () Bool)

(assert (=> mapNonEmpty!25454 (= mapRes!25454 (and tp!48805 e!471959))))

(declare-fun mapValue!25454 () ValueCell!7512)

(declare-fun mapRest!25454 () (Array (_ BitVec 32) ValueCell!7512))

(declare-fun mapKey!25454 () (_ BitVec 32))

(assert (=> mapNonEmpty!25454 (= (arr!23032 _values!688) (store mapRest!25454 mapKey!25454 mapValue!25454))))

(declare-fun b!845391 () Bool)

(declare-fun res!574429 () Bool)

(assert (=> b!845391 (=> (not res!574429) (not e!471958))))

(declare-datatypes ((List!16377 0))(
  ( (Nil!16374) (Cons!16373 (h!17504 (_ BitVec 64)) (t!22756 List!16377)) )
))
(declare-fun arrayNoDuplicates!0 (array!48008 (_ BitVec 32) List!16377) Bool)

(assert (=> b!845391 (= res!574429 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16374))))

(declare-fun b!845392 () Bool)

(declare-fun e!471957 () Bool)

(declare-fun tp_is_empty!15903 () Bool)

(assert (=> b!845392 (= e!471957 tp_is_empty!15903)))

(declare-fun b!845393 () Bool)

(declare-fun res!574427 () Bool)

(assert (=> b!845393 (=> (not res!574427) (not e!471958))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845393 (= res!574427 (validKeyInArray!0 k0!854))))

(declare-fun b!845394 () Bool)

(declare-fun res!574433 () Bool)

(assert (=> b!845394 (=> (not res!574433) (not e!471958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845394 (= res!574433 (validMask!0 mask!1196))))

(declare-fun b!845395 () Bool)

(declare-fun res!574430 () Bool)

(assert (=> b!845395 (=> (not res!574430) (not e!471958))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!845395 (= res!574430 (and (= (select (arr!23031 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!845396 () Bool)

(declare-fun res!574431 () Bool)

(assert (=> b!845396 (=> (not res!574431) (not e!471958))))

(assert (=> b!845396 (= res!574431 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23472 _keys!868))))))

(declare-fun b!845397 () Bool)

(declare-fun e!471960 () Bool)

(assert (=> b!845397 (= e!471960 (and e!471957 mapRes!25454))))

(declare-fun condMapEmpty!25454 () Bool)

(declare-fun mapDefault!25454 () ValueCell!7512)

(assert (=> b!845397 (= condMapEmpty!25454 (= (arr!23032 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7512)) mapDefault!25454)))))

(declare-fun res!574432 () Bool)

(assert (=> start!72880 (=> (not res!574432) (not e!471958))))

(assert (=> start!72880 (= res!574432 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23472 _keys!868))))))

(assert (=> start!72880 e!471958))

(assert (=> start!72880 true))

(assert (=> start!72880 tp!48806))

(declare-fun array_inv!18282 (array!48008) Bool)

(assert (=> start!72880 (array_inv!18282 _keys!868)))

(declare-fun array_inv!18283 (array!48010) Bool)

(assert (=> start!72880 (and (array_inv!18283 _values!688) e!471960)))

(assert (=> start!72880 tp_is_empty!15903))

(declare-fun b!845398 () Bool)

(assert (=> b!845398 (= e!471959 tp_is_empty!15903)))

(declare-fun b!845399 () Bool)

(declare-fun res!574434 () Bool)

(assert (=> b!845399 (=> (not res!574434) (not e!471958))))

(assert (=> b!845399 (= res!574434 (and (= (size!23473 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23472 _keys!868) (size!23473 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!72880 res!574432) b!845394))

(assert (= (and b!845394 res!574433) b!845399))

(assert (= (and b!845399 res!574434) b!845390))

(assert (= (and b!845390 res!574428) b!845391))

(assert (= (and b!845391 res!574429) b!845396))

(assert (= (and b!845396 res!574431) b!845393))

(assert (= (and b!845393 res!574427) b!845395))

(assert (= (and b!845395 res!574430) b!845389))

(assert (= (and b!845397 condMapEmpty!25454) mapIsEmpty!25454))

(assert (= (and b!845397 (not condMapEmpty!25454)) mapNonEmpty!25454))

(get-info :version)

(assert (= (and mapNonEmpty!25454 ((_ is ValueCellFull!7512) mapValue!25454)) b!845398))

(assert (= (and b!845397 ((_ is ValueCellFull!7512) mapDefault!25454)) b!845392))

(assert (= start!72880 b!845397))

(declare-fun m!787265 () Bool)

(assert (=> start!72880 m!787265))

(declare-fun m!787267 () Bool)

(assert (=> start!72880 m!787267))

(declare-fun m!787269 () Bool)

(assert (=> b!845394 m!787269))

(declare-fun m!787271 () Bool)

(assert (=> b!845391 m!787271))

(declare-fun m!787273 () Bool)

(assert (=> b!845395 m!787273))

(declare-fun m!787275 () Bool)

(assert (=> b!845393 m!787275))

(declare-fun m!787277 () Bool)

(assert (=> b!845389 m!787277))

(declare-fun m!787279 () Bool)

(assert (=> mapNonEmpty!25454 m!787279))

(declare-fun m!787281 () Bool)

(assert (=> b!845390 m!787281))

(check-sat (not start!72880) (not b!845393) (not b!845390) (not b!845389) (not b_next!13767) b_and!22871 (not mapNonEmpty!25454) tp_is_empty!15903 (not b!845394) (not b!845391))
(check-sat b_and!22871 (not b_next!13767))
