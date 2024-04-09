; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72952 () Bool)

(assert start!72952)

(declare-fun b_free!13839 () Bool)

(declare-fun b_next!13839 () Bool)

(assert (=> start!72952 (= b_free!13839 (not b_next!13839))))

(declare-fun tp!49021 () Bool)

(declare-fun b_and!22943 () Bool)

(assert (=> start!72952 (= tp!49021 b_and!22943)))

(declare-fun mapIsEmpty!25562 () Bool)

(declare-fun mapRes!25562 () Bool)

(assert (=> mapIsEmpty!25562 mapRes!25562))

(declare-fun b!846577 () Bool)

(declare-fun res!575291 () Bool)

(declare-fun e!472499 () Bool)

(assert (=> b!846577 (=> (not res!575291) (not e!472499))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846577 (= res!575291 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!25562 () Bool)

(declare-fun tp!49022 () Bool)

(declare-fun e!472496 () Bool)

(assert (=> mapNonEmpty!25562 (= mapRes!25562 (and tp!49022 e!472496))))

(declare-datatypes ((V!26347 0))(
  ( (V!26348 (val!8035 Int)) )
))
(declare-datatypes ((ValueCell!7548 0))(
  ( (ValueCellFull!7548 (v!10456 V!26347)) (EmptyCell!7548) )
))
(declare-fun mapValue!25562 () ValueCell!7548)

(declare-fun mapRest!25562 () (Array (_ BitVec 32) ValueCell!7548))

(declare-fun mapKey!25562 () (_ BitVec 32))

(declare-datatypes ((array!48148 0))(
  ( (array!48149 (arr!23101 (Array (_ BitVec 32) ValueCell!7548)) (size!23542 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48148)

(assert (=> mapNonEmpty!25562 (= (arr!23101 _values!688) (store mapRest!25562 mapKey!25562 mapValue!25562))))

(declare-fun b!846578 () Bool)

(declare-fun e!472497 () Bool)

(declare-fun e!472500 () Bool)

(assert (=> b!846578 (= e!472497 (and e!472500 mapRes!25562))))

(declare-fun condMapEmpty!25562 () Bool)

(declare-fun mapDefault!25562 () ValueCell!7548)

(assert (=> b!846578 (= condMapEmpty!25562 (= (arr!23101 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7548)) mapDefault!25562)))))

(declare-fun b!846579 () Bool)

(declare-fun res!575294 () Bool)

(assert (=> b!846579 (=> (not res!575294) (not e!472499))))

(declare-datatypes ((array!48150 0))(
  ( (array!48151 (arr!23102 (Array (_ BitVec 32) (_ BitVec 64))) (size!23543 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48150)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48150 (_ BitVec 32)) Bool)

(assert (=> b!846579 (= res!575294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!575293 () Bool)

(assert (=> start!72952 (=> (not res!575293) (not e!472499))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72952 (= res!575293 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23543 _keys!868))))))

(assert (=> start!72952 e!472499))

(declare-fun tp_is_empty!15975 () Bool)

(assert (=> start!72952 tp_is_empty!15975))

(assert (=> start!72952 true))

(assert (=> start!72952 tp!49021))

(declare-fun array_inv!18334 (array!48150) Bool)

(assert (=> start!72952 (array_inv!18334 _keys!868)))

(declare-fun array_inv!18335 (array!48148) Bool)

(assert (=> start!72952 (and (array_inv!18335 _values!688) e!472497)))

(declare-fun b!846580 () Bool)

(assert (=> b!846580 (= e!472499 false)))

(declare-fun v!557 () V!26347)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26347)

(declare-fun zeroValue!654 () V!26347)

(declare-datatypes ((tuple2!10514 0))(
  ( (tuple2!10515 (_1!5267 (_ BitVec 64)) (_2!5267 V!26347)) )
))
(declare-datatypes ((List!16424 0))(
  ( (Nil!16421) (Cons!16420 (h!17551 tuple2!10514) (t!22803 List!16424)) )
))
(declare-datatypes ((ListLongMap!9297 0))(
  ( (ListLongMap!9298 (toList!4664 List!16424)) )
))
(declare-fun lt!381533 () ListLongMap!9297)

(declare-fun getCurrentListMapNoExtraKeys!2653 (array!48150 array!48148 (_ BitVec 32) (_ BitVec 32) V!26347 V!26347 (_ BitVec 32) Int) ListLongMap!9297)

(assert (=> b!846580 (= lt!381533 (getCurrentListMapNoExtraKeys!2653 _keys!868 (array!48149 (store (arr!23101 _values!688) i!612 (ValueCellFull!7548 v!557)) (size!23542 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381534 () ListLongMap!9297)

(assert (=> b!846580 (= lt!381534 (getCurrentListMapNoExtraKeys!2653 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!846581 () Bool)

(declare-fun res!575298 () Bool)

(assert (=> b!846581 (=> (not res!575298) (not e!472499))))

(declare-datatypes ((List!16425 0))(
  ( (Nil!16422) (Cons!16421 (h!17552 (_ BitVec 64)) (t!22804 List!16425)) )
))
(declare-fun arrayNoDuplicates!0 (array!48150 (_ BitVec 32) List!16425) Bool)

(assert (=> b!846581 (= res!575298 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16422))))

(declare-fun b!846582 () Bool)

(declare-fun res!575297 () Bool)

(assert (=> b!846582 (=> (not res!575297) (not e!472499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846582 (= res!575297 (validMask!0 mask!1196))))

(declare-fun b!846583 () Bool)

(declare-fun res!575292 () Bool)

(assert (=> b!846583 (=> (not res!575292) (not e!472499))))

(assert (=> b!846583 (= res!575292 (and (= (size!23542 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23543 _keys!868) (size!23542 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!846584 () Bool)

(assert (=> b!846584 (= e!472496 tp_is_empty!15975)))

(declare-fun b!846585 () Bool)

(declare-fun res!575295 () Bool)

(assert (=> b!846585 (=> (not res!575295) (not e!472499))))

(assert (=> b!846585 (= res!575295 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23543 _keys!868))))))

(declare-fun b!846586 () Bool)

(declare-fun res!575296 () Bool)

(assert (=> b!846586 (=> (not res!575296) (not e!472499))))

(assert (=> b!846586 (= res!575296 (and (= (select (arr!23102 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!846587 () Bool)

(assert (=> b!846587 (= e!472500 tp_is_empty!15975)))

(assert (= (and start!72952 res!575293) b!846582))

(assert (= (and b!846582 res!575297) b!846583))

(assert (= (and b!846583 res!575292) b!846579))

(assert (= (and b!846579 res!575294) b!846581))

(assert (= (and b!846581 res!575298) b!846585))

(assert (= (and b!846585 res!575295) b!846577))

(assert (= (and b!846577 res!575291) b!846586))

(assert (= (and b!846586 res!575296) b!846580))

(assert (= (and b!846578 condMapEmpty!25562) mapIsEmpty!25562))

(assert (= (and b!846578 (not condMapEmpty!25562)) mapNonEmpty!25562))

(get-info :version)

(assert (= (and mapNonEmpty!25562 ((_ is ValueCellFull!7548) mapValue!25562)) b!846584))

(assert (= (and b!846578 ((_ is ValueCellFull!7548) mapDefault!25562)) b!846587))

(assert (= start!72952 b!846578))

(declare-fun m!787989 () Bool)

(assert (=> b!846577 m!787989))

(declare-fun m!787991 () Bool)

(assert (=> start!72952 m!787991))

(declare-fun m!787993 () Bool)

(assert (=> start!72952 m!787993))

(declare-fun m!787995 () Bool)

(assert (=> b!846581 m!787995))

(declare-fun m!787997 () Bool)

(assert (=> b!846586 m!787997))

(declare-fun m!787999 () Bool)

(assert (=> b!846582 m!787999))

(declare-fun m!788001 () Bool)

(assert (=> mapNonEmpty!25562 m!788001))

(declare-fun m!788003 () Bool)

(assert (=> b!846579 m!788003))

(declare-fun m!788005 () Bool)

(assert (=> b!846580 m!788005))

(declare-fun m!788007 () Bool)

(assert (=> b!846580 m!788007))

(declare-fun m!788009 () Bool)

(assert (=> b!846580 m!788009))

(check-sat (not b!846580) (not b_next!13839) tp_is_empty!15975 (not b!846582) b_and!22943 (not b!846579) (not b!846581) (not mapNonEmpty!25562) (not b!846577) (not start!72952))
(check-sat b_and!22943 (not b_next!13839))
