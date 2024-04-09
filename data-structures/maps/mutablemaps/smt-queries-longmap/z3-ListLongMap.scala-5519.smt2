; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72928 () Bool)

(assert start!72928)

(declare-fun b_free!13815 () Bool)

(declare-fun b_next!13815 () Bool)

(assert (=> start!72928 (= b_free!13815 (not b_next!13815))))

(declare-fun tp!48949 () Bool)

(declare-fun b_and!22919 () Bool)

(assert (=> start!72928 (= tp!48949 b_and!22919)))

(declare-fun b!846181 () Bool)

(declare-fun res!575008 () Bool)

(declare-fun e!472318 () Bool)

(assert (=> b!846181 (=> (not res!575008) (not e!472318))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48102 0))(
  ( (array!48103 (arr!23078 (Array (_ BitVec 32) (_ BitVec 64))) (size!23519 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48102)

(declare-datatypes ((V!26315 0))(
  ( (V!26316 (val!8023 Int)) )
))
(declare-datatypes ((ValueCell!7536 0))(
  ( (ValueCellFull!7536 (v!10444 V!26315)) (EmptyCell!7536) )
))
(declare-datatypes ((array!48104 0))(
  ( (array!48105 (arr!23079 (Array (_ BitVec 32) ValueCell!7536)) (size!23520 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48104)

(assert (=> b!846181 (= res!575008 (and (= (size!23520 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23519 _keys!868) (size!23520 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!575007 () Bool)

(assert (=> start!72928 (=> (not res!575007) (not e!472318))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72928 (= res!575007 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23519 _keys!868))))))

(assert (=> start!72928 e!472318))

(declare-fun tp_is_empty!15951 () Bool)

(assert (=> start!72928 tp_is_empty!15951))

(assert (=> start!72928 true))

(assert (=> start!72928 tp!48949))

(declare-fun array_inv!18318 (array!48102) Bool)

(assert (=> start!72928 (array_inv!18318 _keys!868)))

(declare-fun e!472316 () Bool)

(declare-fun array_inv!18319 (array!48104) Bool)

(assert (=> start!72928 (and (array_inv!18319 _values!688) e!472316)))

(declare-fun b!846182 () Bool)

(declare-fun e!472320 () Bool)

(assert (=> b!846182 (= e!472320 tp_is_empty!15951)))

(declare-fun b!846183 () Bool)

(assert (=> b!846183 (= e!472318 false)))

(declare-fun v!557 () V!26315)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10498 0))(
  ( (tuple2!10499 (_1!5259 (_ BitVec 64)) (_2!5259 V!26315)) )
))
(declare-datatypes ((List!16409 0))(
  ( (Nil!16406) (Cons!16405 (h!17536 tuple2!10498) (t!22788 List!16409)) )
))
(declare-datatypes ((ListLongMap!9281 0))(
  ( (ListLongMap!9282 (toList!4656 List!16409)) )
))
(declare-fun lt!381461 () ListLongMap!9281)

(declare-fun minValue!654 () V!26315)

(declare-fun zeroValue!654 () V!26315)

(declare-fun getCurrentListMapNoExtraKeys!2645 (array!48102 array!48104 (_ BitVec 32) (_ BitVec 32) V!26315 V!26315 (_ BitVec 32) Int) ListLongMap!9281)

(assert (=> b!846183 (= lt!381461 (getCurrentListMapNoExtraKeys!2645 _keys!868 (array!48105 (store (arr!23079 _values!688) i!612 (ValueCellFull!7536 v!557)) (size!23520 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381462 () ListLongMap!9281)

(assert (=> b!846183 (= lt!381462 (getCurrentListMapNoExtraKeys!2645 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!25526 () Bool)

(declare-fun mapRes!25526 () Bool)

(declare-fun tp!48950 () Bool)

(declare-fun e!472319 () Bool)

(assert (=> mapNonEmpty!25526 (= mapRes!25526 (and tp!48950 e!472319))))

(declare-fun mapValue!25526 () ValueCell!7536)

(declare-fun mapKey!25526 () (_ BitVec 32))

(declare-fun mapRest!25526 () (Array (_ BitVec 32) ValueCell!7536))

(assert (=> mapNonEmpty!25526 (= (arr!23079 _values!688) (store mapRest!25526 mapKey!25526 mapValue!25526))))

(declare-fun b!846184 () Bool)

(declare-fun res!575009 () Bool)

(assert (=> b!846184 (=> (not res!575009) (not e!472318))))

(assert (=> b!846184 (= res!575009 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23519 _keys!868))))))

(declare-fun b!846185 () Bool)

(assert (=> b!846185 (= e!472319 tp_is_empty!15951)))

(declare-fun b!846186 () Bool)

(declare-fun res!575003 () Bool)

(assert (=> b!846186 (=> (not res!575003) (not e!472318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846186 (= res!575003 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!25526 () Bool)

(assert (=> mapIsEmpty!25526 mapRes!25526))

(declare-fun b!846187 () Bool)

(declare-fun res!575004 () Bool)

(assert (=> b!846187 (=> (not res!575004) (not e!472318))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!846187 (= res!575004 (and (= (select (arr!23078 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!846188 () Bool)

(assert (=> b!846188 (= e!472316 (and e!472320 mapRes!25526))))

(declare-fun condMapEmpty!25526 () Bool)

(declare-fun mapDefault!25526 () ValueCell!7536)

(assert (=> b!846188 (= condMapEmpty!25526 (= (arr!23079 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7536)) mapDefault!25526)))))

(declare-fun b!846189 () Bool)

(declare-fun res!575006 () Bool)

(assert (=> b!846189 (=> (not res!575006) (not e!472318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48102 (_ BitVec 32)) Bool)

(assert (=> b!846189 (= res!575006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!846190 () Bool)

(declare-fun res!575005 () Bool)

(assert (=> b!846190 (=> (not res!575005) (not e!472318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846190 (= res!575005 (validKeyInArray!0 k0!854))))

(declare-fun b!846191 () Bool)

(declare-fun res!575010 () Bool)

(assert (=> b!846191 (=> (not res!575010) (not e!472318))))

(declare-datatypes ((List!16410 0))(
  ( (Nil!16407) (Cons!16406 (h!17537 (_ BitVec 64)) (t!22789 List!16410)) )
))
(declare-fun arrayNoDuplicates!0 (array!48102 (_ BitVec 32) List!16410) Bool)

(assert (=> b!846191 (= res!575010 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16407))))

(assert (= (and start!72928 res!575007) b!846186))

(assert (= (and b!846186 res!575003) b!846181))

(assert (= (and b!846181 res!575008) b!846189))

(assert (= (and b!846189 res!575006) b!846191))

(assert (= (and b!846191 res!575010) b!846184))

(assert (= (and b!846184 res!575009) b!846190))

(assert (= (and b!846190 res!575005) b!846187))

(assert (= (and b!846187 res!575004) b!846183))

(assert (= (and b!846188 condMapEmpty!25526) mapIsEmpty!25526))

(assert (= (and b!846188 (not condMapEmpty!25526)) mapNonEmpty!25526))

(get-info :version)

(assert (= (and mapNonEmpty!25526 ((_ is ValueCellFull!7536) mapValue!25526)) b!846185))

(assert (= (and b!846188 ((_ is ValueCellFull!7536) mapDefault!25526)) b!846182))

(assert (= start!72928 b!846188))

(declare-fun m!787725 () Bool)

(assert (=> b!846191 m!787725))

(declare-fun m!787727 () Bool)

(assert (=> start!72928 m!787727))

(declare-fun m!787729 () Bool)

(assert (=> start!72928 m!787729))

(declare-fun m!787731 () Bool)

(assert (=> b!846187 m!787731))

(declare-fun m!787733 () Bool)

(assert (=> b!846189 m!787733))

(declare-fun m!787735 () Bool)

(assert (=> mapNonEmpty!25526 m!787735))

(declare-fun m!787737 () Bool)

(assert (=> b!846190 m!787737))

(declare-fun m!787739 () Bool)

(assert (=> b!846186 m!787739))

(declare-fun m!787741 () Bool)

(assert (=> b!846183 m!787741))

(declare-fun m!787743 () Bool)

(assert (=> b!846183 m!787743))

(declare-fun m!787745 () Bool)

(assert (=> b!846183 m!787745))

(check-sat (not start!72928) (not b!846186) b_and!22919 (not b!846183) (not b_next!13815) (not mapNonEmpty!25526) tp_is_empty!15951 (not b!846191) (not b!846189) (not b!846190))
(check-sat b_and!22919 (not b_next!13815))
