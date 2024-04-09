; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72958 () Bool)

(assert start!72958)

(declare-fun b_free!13845 () Bool)

(declare-fun b_next!13845 () Bool)

(assert (=> start!72958 (= b_free!13845 (not b_next!13845))))

(declare-fun tp!49040 () Bool)

(declare-fun b_and!22949 () Bool)

(assert (=> start!72958 (= tp!49040 b_and!22949)))

(declare-fun res!575370 () Bool)

(declare-fun e!472542 () Bool)

(assert (=> start!72958 (=> (not res!575370) (not e!472542))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48160 0))(
  ( (array!48161 (arr!23107 (Array (_ BitVec 32) (_ BitVec 64))) (size!23548 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48160)

(assert (=> start!72958 (= res!575370 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23548 _keys!868))))))

(assert (=> start!72958 e!472542))

(declare-fun tp_is_empty!15981 () Bool)

(assert (=> start!72958 tp_is_empty!15981))

(assert (=> start!72958 true))

(assert (=> start!72958 tp!49040))

(declare-fun array_inv!18340 (array!48160) Bool)

(assert (=> start!72958 (array_inv!18340 _keys!868)))

(declare-datatypes ((V!26355 0))(
  ( (V!26356 (val!8038 Int)) )
))
(declare-datatypes ((ValueCell!7551 0))(
  ( (ValueCellFull!7551 (v!10459 V!26355)) (EmptyCell!7551) )
))
(declare-datatypes ((array!48162 0))(
  ( (array!48163 (arr!23108 (Array (_ BitVec 32) ValueCell!7551)) (size!23549 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48162)

(declare-fun e!472545 () Bool)

(declare-fun array_inv!18341 (array!48162) Bool)

(assert (=> start!72958 (and (array_inv!18341 _values!688) e!472545)))

(declare-fun b!846676 () Bool)

(declare-fun res!575363 () Bool)

(assert (=> b!846676 (=> (not res!575363) (not e!472542))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!846676 (= res!575363 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23548 _keys!868))))))

(declare-fun b!846677 () Bool)

(declare-fun res!575368 () Bool)

(assert (=> b!846677 (=> (not res!575368) (not e!472542))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!846677 (= res!575368 (and (= (size!23549 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23548 _keys!868) (size!23549 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25571 () Bool)

(declare-fun mapRes!25571 () Bool)

(assert (=> mapIsEmpty!25571 mapRes!25571))

(declare-fun mapNonEmpty!25571 () Bool)

(declare-fun tp!49039 () Bool)

(declare-fun e!472544 () Bool)

(assert (=> mapNonEmpty!25571 (= mapRes!25571 (and tp!49039 e!472544))))

(declare-fun mapValue!25571 () ValueCell!7551)

(declare-fun mapKey!25571 () (_ BitVec 32))

(declare-fun mapRest!25571 () (Array (_ BitVec 32) ValueCell!7551))

(assert (=> mapNonEmpty!25571 (= (arr!23108 _values!688) (store mapRest!25571 mapKey!25571 mapValue!25571))))

(declare-fun b!846678 () Bool)

(declare-fun res!575365 () Bool)

(assert (=> b!846678 (=> (not res!575365) (not e!472542))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!846678 (= res!575365 (and (= (select (arr!23107 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!846679 () Bool)

(assert (=> b!846679 (= e!472542 false)))

(declare-fun v!557 () V!26355)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10518 0))(
  ( (tuple2!10519 (_1!5269 (_ BitVec 64)) (_2!5269 V!26355)) )
))
(declare-datatypes ((List!16429 0))(
  ( (Nil!16426) (Cons!16425 (h!17556 tuple2!10518) (t!22808 List!16429)) )
))
(declare-datatypes ((ListLongMap!9301 0))(
  ( (ListLongMap!9302 (toList!4666 List!16429)) )
))
(declare-fun lt!381551 () ListLongMap!9301)

(declare-fun minValue!654 () V!26355)

(declare-fun zeroValue!654 () V!26355)

(declare-fun getCurrentListMapNoExtraKeys!2655 (array!48160 array!48162 (_ BitVec 32) (_ BitVec 32) V!26355 V!26355 (_ BitVec 32) Int) ListLongMap!9301)

(assert (=> b!846679 (= lt!381551 (getCurrentListMapNoExtraKeys!2655 _keys!868 (array!48163 (store (arr!23108 _values!688) i!612 (ValueCellFull!7551 v!557)) (size!23549 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381552 () ListLongMap!9301)

(assert (=> b!846679 (= lt!381552 (getCurrentListMapNoExtraKeys!2655 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!846680 () Bool)

(declare-fun res!575367 () Bool)

(assert (=> b!846680 (=> (not res!575367) (not e!472542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846680 (= res!575367 (validMask!0 mask!1196))))

(declare-fun b!846681 () Bool)

(assert (=> b!846681 (= e!472544 tp_is_empty!15981)))

(declare-fun b!846682 () Bool)

(declare-fun res!575366 () Bool)

(assert (=> b!846682 (=> (not res!575366) (not e!472542))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48160 (_ BitVec 32)) Bool)

(assert (=> b!846682 (= res!575366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!846683 () Bool)

(declare-fun res!575369 () Bool)

(assert (=> b!846683 (=> (not res!575369) (not e!472542))))

(declare-datatypes ((List!16430 0))(
  ( (Nil!16427) (Cons!16426 (h!17557 (_ BitVec 64)) (t!22809 List!16430)) )
))
(declare-fun arrayNoDuplicates!0 (array!48160 (_ BitVec 32) List!16430) Bool)

(assert (=> b!846683 (= res!575369 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16427))))

(declare-fun b!846684 () Bool)

(declare-fun e!472543 () Bool)

(assert (=> b!846684 (= e!472543 tp_is_empty!15981)))

(declare-fun b!846685 () Bool)

(assert (=> b!846685 (= e!472545 (and e!472543 mapRes!25571))))

(declare-fun condMapEmpty!25571 () Bool)

(declare-fun mapDefault!25571 () ValueCell!7551)

(assert (=> b!846685 (= condMapEmpty!25571 (= (arr!23108 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7551)) mapDefault!25571)))))

(declare-fun b!846686 () Bool)

(declare-fun res!575364 () Bool)

(assert (=> b!846686 (=> (not res!575364) (not e!472542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846686 (= res!575364 (validKeyInArray!0 k0!854))))

(assert (= (and start!72958 res!575370) b!846680))

(assert (= (and b!846680 res!575367) b!846677))

(assert (= (and b!846677 res!575368) b!846682))

(assert (= (and b!846682 res!575366) b!846683))

(assert (= (and b!846683 res!575369) b!846676))

(assert (= (and b!846676 res!575363) b!846686))

(assert (= (and b!846686 res!575364) b!846678))

(assert (= (and b!846678 res!575365) b!846679))

(assert (= (and b!846685 condMapEmpty!25571) mapIsEmpty!25571))

(assert (= (and b!846685 (not condMapEmpty!25571)) mapNonEmpty!25571))

(get-info :version)

(assert (= (and mapNonEmpty!25571 ((_ is ValueCellFull!7551) mapValue!25571)) b!846681))

(assert (= (and b!846685 ((_ is ValueCellFull!7551) mapDefault!25571)) b!846684))

(assert (= start!72958 b!846685))

(declare-fun m!788055 () Bool)

(assert (=> b!846680 m!788055))

(declare-fun m!788057 () Bool)

(assert (=> b!846682 m!788057))

(declare-fun m!788059 () Bool)

(assert (=> start!72958 m!788059))

(declare-fun m!788061 () Bool)

(assert (=> start!72958 m!788061))

(declare-fun m!788063 () Bool)

(assert (=> b!846686 m!788063))

(declare-fun m!788065 () Bool)

(assert (=> b!846679 m!788065))

(declare-fun m!788067 () Bool)

(assert (=> b!846679 m!788067))

(declare-fun m!788069 () Bool)

(assert (=> b!846679 m!788069))

(declare-fun m!788071 () Bool)

(assert (=> b!846678 m!788071))

(declare-fun m!788073 () Bool)

(assert (=> b!846683 m!788073))

(declare-fun m!788075 () Bool)

(assert (=> mapNonEmpty!25571 m!788075))

(check-sat (not b!846686) (not b!846683) (not b!846679) (not b!846682) (not b_next!13845) (not mapNonEmpty!25571) tp_is_empty!15981 (not b!846680) b_and!22949 (not start!72958))
(check-sat b_and!22949 (not b_next!13845))
