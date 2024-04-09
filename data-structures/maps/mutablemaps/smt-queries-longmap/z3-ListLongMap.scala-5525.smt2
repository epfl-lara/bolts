; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72964 () Bool)

(assert start!72964)

(declare-fun b_free!13851 () Bool)

(declare-fun b_next!13851 () Bool)

(assert (=> start!72964 (= b_free!13851 (not b_next!13851))))

(declare-fun tp!49058 () Bool)

(declare-fun b_and!22955 () Bool)

(assert (=> start!72964 (= tp!49058 b_and!22955)))

(declare-fun b!846775 () Bool)

(declare-fun res!575438 () Bool)

(declare-fun e!472589 () Bool)

(assert (=> b!846775 (=> (not res!575438) (not e!472589))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48172 0))(
  ( (array!48173 (arr!23113 (Array (_ BitVec 32) (_ BitVec 64))) (size!23554 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48172)

(declare-datatypes ((V!26363 0))(
  ( (V!26364 (val!8041 Int)) )
))
(declare-datatypes ((ValueCell!7554 0))(
  ( (ValueCellFull!7554 (v!10462 V!26363)) (EmptyCell!7554) )
))
(declare-datatypes ((array!48174 0))(
  ( (array!48175 (arr!23114 (Array (_ BitVec 32) ValueCell!7554)) (size!23555 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48174)

(assert (=> b!846775 (= res!575438 (and (= (size!23555 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23554 _keys!868) (size!23555 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!846776 () Bool)

(declare-fun res!575435 () Bool)

(assert (=> b!846776 (=> (not res!575435) (not e!472589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846776 (= res!575435 (validMask!0 mask!1196))))

(declare-fun b!846777 () Bool)

(declare-fun res!575437 () Bool)

(assert (=> b!846777 (=> (not res!575437) (not e!472589))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!846777 (= res!575437 (and (= (select (arr!23113 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!25580 () Bool)

(declare-fun mapRes!25580 () Bool)

(assert (=> mapIsEmpty!25580 mapRes!25580))

(declare-fun b!846778 () Bool)

(declare-fun res!575441 () Bool)

(assert (=> b!846778 (=> (not res!575441) (not e!472589))))

(assert (=> b!846778 (= res!575441 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23554 _keys!868))))))

(declare-fun b!846779 () Bool)

(declare-fun res!575436 () Bool)

(assert (=> b!846779 (=> (not res!575436) (not e!472589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846779 (= res!575436 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!25580 () Bool)

(declare-fun tp!49057 () Bool)

(declare-fun e!472587 () Bool)

(assert (=> mapNonEmpty!25580 (= mapRes!25580 (and tp!49057 e!472587))))

(declare-fun mapRest!25580 () (Array (_ BitVec 32) ValueCell!7554))

(declare-fun mapValue!25580 () ValueCell!7554)

(declare-fun mapKey!25580 () (_ BitVec 32))

(assert (=> mapNonEmpty!25580 (= (arr!23114 _values!688) (store mapRest!25580 mapKey!25580 mapValue!25580))))

(declare-fun b!846780 () Bool)

(declare-fun e!472588 () Bool)

(declare-fun tp_is_empty!15987 () Bool)

(assert (=> b!846780 (= e!472588 tp_is_empty!15987)))

(declare-fun b!846781 () Bool)

(declare-fun res!575440 () Bool)

(assert (=> b!846781 (=> (not res!575440) (not e!472589))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48172 (_ BitVec 32)) Bool)

(assert (=> b!846781 (= res!575440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!846782 () Bool)

(declare-fun e!472590 () Bool)

(assert (=> b!846782 (= e!472590 (and e!472588 mapRes!25580))))

(declare-fun condMapEmpty!25580 () Bool)

(declare-fun mapDefault!25580 () ValueCell!7554)

(assert (=> b!846782 (= condMapEmpty!25580 (= (arr!23114 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7554)) mapDefault!25580)))))

(declare-fun res!575439 () Bool)

(assert (=> start!72964 (=> (not res!575439) (not e!472589))))

(assert (=> start!72964 (= res!575439 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23554 _keys!868))))))

(assert (=> start!72964 e!472589))

(assert (=> start!72964 tp_is_empty!15987))

(assert (=> start!72964 true))

(assert (=> start!72964 tp!49058))

(declare-fun array_inv!18342 (array!48172) Bool)

(assert (=> start!72964 (array_inv!18342 _keys!868)))

(declare-fun array_inv!18343 (array!48174) Bool)

(assert (=> start!72964 (and (array_inv!18343 _values!688) e!472590)))

(declare-fun b!846783 () Bool)

(assert (=> b!846783 (= e!472589 false)))

(declare-fun v!557 () V!26363)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10520 0))(
  ( (tuple2!10521 (_1!5270 (_ BitVec 64)) (_2!5270 V!26363)) )
))
(declare-datatypes ((List!16432 0))(
  ( (Nil!16429) (Cons!16428 (h!17559 tuple2!10520) (t!22811 List!16432)) )
))
(declare-datatypes ((ListLongMap!9303 0))(
  ( (ListLongMap!9304 (toList!4667 List!16432)) )
))
(declare-fun lt!381570 () ListLongMap!9303)

(declare-fun minValue!654 () V!26363)

(declare-fun zeroValue!654 () V!26363)

(declare-fun getCurrentListMapNoExtraKeys!2656 (array!48172 array!48174 (_ BitVec 32) (_ BitVec 32) V!26363 V!26363 (_ BitVec 32) Int) ListLongMap!9303)

(assert (=> b!846783 (= lt!381570 (getCurrentListMapNoExtraKeys!2656 _keys!868 (array!48175 (store (arr!23114 _values!688) i!612 (ValueCellFull!7554 v!557)) (size!23555 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381569 () ListLongMap!9303)

(assert (=> b!846783 (= lt!381569 (getCurrentListMapNoExtraKeys!2656 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!846784 () Bool)

(assert (=> b!846784 (= e!472587 tp_is_empty!15987)))

(declare-fun b!846785 () Bool)

(declare-fun res!575442 () Bool)

(assert (=> b!846785 (=> (not res!575442) (not e!472589))))

(declare-datatypes ((List!16433 0))(
  ( (Nil!16430) (Cons!16429 (h!17560 (_ BitVec 64)) (t!22812 List!16433)) )
))
(declare-fun arrayNoDuplicates!0 (array!48172 (_ BitVec 32) List!16433) Bool)

(assert (=> b!846785 (= res!575442 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16430))))

(assert (= (and start!72964 res!575439) b!846776))

(assert (= (and b!846776 res!575435) b!846775))

(assert (= (and b!846775 res!575438) b!846781))

(assert (= (and b!846781 res!575440) b!846785))

(assert (= (and b!846785 res!575442) b!846778))

(assert (= (and b!846778 res!575441) b!846779))

(assert (= (and b!846779 res!575436) b!846777))

(assert (= (and b!846777 res!575437) b!846783))

(assert (= (and b!846782 condMapEmpty!25580) mapIsEmpty!25580))

(assert (= (and b!846782 (not condMapEmpty!25580)) mapNonEmpty!25580))

(get-info :version)

(assert (= (and mapNonEmpty!25580 ((_ is ValueCellFull!7554) mapValue!25580)) b!846784))

(assert (= (and b!846782 ((_ is ValueCellFull!7554) mapDefault!25580)) b!846780))

(assert (= start!72964 b!846782))

(declare-fun m!788121 () Bool)

(assert (=> b!846783 m!788121))

(declare-fun m!788123 () Bool)

(assert (=> b!846783 m!788123))

(declare-fun m!788125 () Bool)

(assert (=> b!846783 m!788125))

(declare-fun m!788127 () Bool)

(assert (=> start!72964 m!788127))

(declare-fun m!788129 () Bool)

(assert (=> start!72964 m!788129))

(declare-fun m!788131 () Bool)

(assert (=> b!846777 m!788131))

(declare-fun m!788133 () Bool)

(assert (=> b!846785 m!788133))

(declare-fun m!788135 () Bool)

(assert (=> b!846776 m!788135))

(declare-fun m!788137 () Bool)

(assert (=> b!846781 m!788137))

(declare-fun m!788139 () Bool)

(assert (=> b!846779 m!788139))

(declare-fun m!788141 () Bool)

(assert (=> mapNonEmpty!25580 m!788141))

(check-sat (not b!846779) (not b!846785) b_and!22955 (not b_next!13851) (not b!846781) (not mapNonEmpty!25580) (not b!846783) (not start!72964) tp_is_empty!15987 (not b!846776))
(check-sat b_and!22955 (not b_next!13851))
