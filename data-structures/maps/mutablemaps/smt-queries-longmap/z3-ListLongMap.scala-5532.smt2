; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73006 () Bool)

(assert start!73006)

(declare-fun b_free!13893 () Bool)

(declare-fun b_next!13893 () Bool)

(assert (=> start!73006 (= b_free!13893 (not b_next!13893))))

(declare-fun tp!49184 () Bool)

(declare-fun b_and!22997 () Bool)

(assert (=> start!73006 (= tp!49184 b_and!22997)))

(declare-fun b!847564 () Bool)

(declare-datatypes ((V!26419 0))(
  ( (V!26420 (val!8062 Int)) )
))
(declare-fun v!557 () V!26419)

(declare-datatypes ((tuple2!10546 0))(
  ( (tuple2!10547 (_1!5283 (_ BitVec 64)) (_2!5283 V!26419)) )
))
(declare-datatypes ((List!16458 0))(
  ( (Nil!16455) (Cons!16454 (h!17585 tuple2!10546) (t!22837 List!16458)) )
))
(declare-datatypes ((ListLongMap!9329 0))(
  ( (ListLongMap!9330 (toList!4680 List!16458)) )
))
(declare-fun call!37535 () ListLongMap!9329)

(declare-fun e!472970 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun call!37534 () ListLongMap!9329)

(declare-fun +!2038 (ListLongMap!9329 tuple2!10546) ListLongMap!9329)

(assert (=> b!847564 (= e!472970 (= call!37534 (+!2038 call!37535 (tuple2!10547 k0!854 v!557))))))

(declare-fun b!847565 () Bool)

(declare-fun res!575972 () Bool)

(declare-fun e!472968 () Bool)

(assert (=> b!847565 (=> (not res!575972) (not e!472968))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!847565 (= res!575972 (validMask!0 mask!1196))))

(declare-fun b!847566 () Bool)

(declare-fun e!472965 () Bool)

(declare-fun tp_is_empty!16029 () Bool)

(assert (=> b!847566 (= e!472965 tp_is_empty!16029)))

(declare-fun mapIsEmpty!25643 () Bool)

(declare-fun mapRes!25643 () Bool)

(assert (=> mapIsEmpty!25643 mapRes!25643))

(declare-fun b!847567 () Bool)

(assert (=> b!847567 (= e!472970 (= call!37534 call!37535))))

(declare-fun b!847568 () Bool)

(declare-fun e!472967 () Bool)

(assert (=> b!847568 (= e!472967 tp_is_empty!16029)))

(declare-fun b!847569 () Bool)

(declare-fun e!472966 () Bool)

(assert (=> b!847569 (= e!472966 (and e!472965 mapRes!25643))))

(declare-fun condMapEmpty!25643 () Bool)

(declare-datatypes ((ValueCell!7575 0))(
  ( (ValueCellFull!7575 (v!10483 V!26419)) (EmptyCell!7575) )
))
(declare-datatypes ((array!48250 0))(
  ( (array!48251 (arr!23152 (Array (_ BitVec 32) ValueCell!7575)) (size!23593 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48250)

(declare-fun mapDefault!25643 () ValueCell!7575)

(assert (=> b!847569 (= condMapEmpty!25643 (= (arr!23152 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7575)) mapDefault!25643)))))

(declare-fun b!847570 () Bool)

(declare-fun res!575974 () Bool)

(assert (=> b!847570 (=> (not res!575974) (not e!472968))))

(declare-datatypes ((array!48252 0))(
  ( (array!48253 (arr!23153 (Array (_ BitVec 32) (_ BitVec 64))) (size!23594 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48252)

(declare-datatypes ((List!16459 0))(
  ( (Nil!16456) (Cons!16455 (h!17586 (_ BitVec 64)) (t!22838 List!16459)) )
))
(declare-fun arrayNoDuplicates!0 (array!48252 (_ BitVec 32) List!16459) Bool)

(assert (=> b!847570 (= res!575974 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16456))))

(declare-fun b!847571 () Bool)

(declare-fun res!575975 () Bool)

(assert (=> b!847571 (=> (not res!575975) (not e!472968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48252 (_ BitVec 32)) Bool)

(assert (=> b!847571 (= res!575975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!847572 () Bool)

(declare-fun res!575976 () Bool)

(assert (=> b!847572 (=> (not res!575976) (not e!472968))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!847572 (= res!575976 (and (= (size!23593 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23594 _keys!868) (size!23593 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!847573 () Bool)

(declare-fun res!575971 () Bool)

(assert (=> b!847573 (=> (not res!575971) (not e!472968))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!847573 (= res!575971 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23594 _keys!868))))))

(declare-fun b!847574 () Bool)

(declare-fun e!472971 () Bool)

(assert (=> b!847574 (= e!472968 e!472971)))

(declare-fun res!575973 () Bool)

(assert (=> b!847574 (=> (not res!575973) (not e!472971))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!847574 (= res!575973 (= from!1053 i!612))))

(declare-fun lt!381762 () array!48250)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!381759 () ListLongMap!9329)

(declare-fun minValue!654 () V!26419)

(declare-fun zeroValue!654 () V!26419)

(declare-fun getCurrentListMapNoExtraKeys!2669 (array!48252 array!48250 (_ BitVec 32) (_ BitVec 32) V!26419 V!26419 (_ BitVec 32) Int) ListLongMap!9329)

(assert (=> b!847574 (= lt!381759 (getCurrentListMapNoExtraKeys!2669 _keys!868 lt!381762 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!847574 (= lt!381762 (array!48251 (store (arr!23152 _values!688) i!612 (ValueCellFull!7575 v!557)) (size!23593 _values!688)))))

(declare-fun lt!381761 () ListLongMap!9329)

(assert (=> b!847574 (= lt!381761 (getCurrentListMapNoExtraKeys!2669 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun bm!37531 () Bool)

(assert (=> bm!37531 (= call!37534 (getCurrentListMapNoExtraKeys!2669 _keys!868 lt!381762 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37532 () Bool)

(assert (=> bm!37532 (= call!37535 (getCurrentListMapNoExtraKeys!2669 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!575978 () Bool)

(assert (=> start!73006 (=> (not res!575978) (not e!472968))))

(assert (=> start!73006 (= res!575978 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23594 _keys!868))))))

(assert (=> start!73006 e!472968))

(assert (=> start!73006 tp_is_empty!16029))

(assert (=> start!73006 true))

(assert (=> start!73006 tp!49184))

(declare-fun array_inv!18368 (array!48252) Bool)

(assert (=> start!73006 (array_inv!18368 _keys!868)))

(declare-fun array_inv!18369 (array!48250) Bool)

(assert (=> start!73006 (and (array_inv!18369 _values!688) e!472966)))

(declare-fun b!847575 () Bool)

(declare-fun res!575977 () Bool)

(assert (=> b!847575 (=> (not res!575977) (not e!472968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!847575 (= res!575977 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!25643 () Bool)

(declare-fun tp!49183 () Bool)

(assert (=> mapNonEmpty!25643 (= mapRes!25643 (and tp!49183 e!472967))))

(declare-fun mapRest!25643 () (Array (_ BitVec 32) ValueCell!7575))

(declare-fun mapValue!25643 () ValueCell!7575)

(declare-fun mapKey!25643 () (_ BitVec 32))

(assert (=> mapNonEmpty!25643 (= (arr!23152 _values!688) (store mapRest!25643 mapKey!25643 mapValue!25643))))

(declare-fun b!847576 () Bool)

(declare-fun res!575979 () Bool)

(assert (=> b!847576 (=> (not res!575979) (not e!472968))))

(assert (=> b!847576 (= res!575979 (and (= (select (arr!23153 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!847577 () Bool)

(assert (=> b!847577 (= e!472971 (not true))))

(assert (=> b!847577 e!472970))

(declare-fun c!91428 () Bool)

(assert (=> b!847577 (= c!91428 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28932 0))(
  ( (Unit!28933) )
))
(declare-fun lt!381760 () Unit!28932)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!315 (array!48252 array!48250 (_ BitVec 32) (_ BitVec 32) V!26419 V!26419 (_ BitVec 32) (_ BitVec 64) V!26419 (_ BitVec 32) Int) Unit!28932)

(assert (=> b!847577 (= lt!381760 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!315 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73006 res!575978) b!847565))

(assert (= (and b!847565 res!575972) b!847572))

(assert (= (and b!847572 res!575976) b!847571))

(assert (= (and b!847571 res!575975) b!847570))

(assert (= (and b!847570 res!575974) b!847573))

(assert (= (and b!847573 res!575971) b!847575))

(assert (= (and b!847575 res!575977) b!847576))

(assert (= (and b!847576 res!575979) b!847574))

(assert (= (and b!847574 res!575973) b!847577))

(assert (= (and b!847577 c!91428) b!847564))

(assert (= (and b!847577 (not c!91428)) b!847567))

(assert (= (or b!847564 b!847567) bm!37531))

(assert (= (or b!847564 b!847567) bm!37532))

(assert (= (and b!847569 condMapEmpty!25643) mapIsEmpty!25643))

(assert (= (and b!847569 (not condMapEmpty!25643)) mapNonEmpty!25643))

(get-info :version)

(assert (= (and mapNonEmpty!25643 ((_ is ValueCellFull!7575) mapValue!25643)) b!847568))

(assert (= (and b!847569 ((_ is ValueCellFull!7575) mapDefault!25643)) b!847566))

(assert (= start!73006 b!847569))

(declare-fun m!788663 () Bool)

(assert (=> start!73006 m!788663))

(declare-fun m!788665 () Bool)

(assert (=> start!73006 m!788665))

(declare-fun m!788667 () Bool)

(assert (=> bm!37532 m!788667))

(declare-fun m!788669 () Bool)

(assert (=> mapNonEmpty!25643 m!788669))

(declare-fun m!788671 () Bool)

(assert (=> b!847574 m!788671))

(declare-fun m!788673 () Bool)

(assert (=> b!847574 m!788673))

(declare-fun m!788675 () Bool)

(assert (=> b!847574 m!788675))

(declare-fun m!788677 () Bool)

(assert (=> b!847570 m!788677))

(declare-fun m!788679 () Bool)

(assert (=> b!847565 m!788679))

(declare-fun m!788681 () Bool)

(assert (=> b!847564 m!788681))

(declare-fun m!788683 () Bool)

(assert (=> b!847577 m!788683))

(declare-fun m!788685 () Bool)

(assert (=> bm!37531 m!788685))

(declare-fun m!788687 () Bool)

(assert (=> b!847576 m!788687))

(declare-fun m!788689 () Bool)

(assert (=> b!847571 m!788689))

(declare-fun m!788691 () Bool)

(assert (=> b!847575 m!788691))

(check-sat (not b!847570) (not bm!37531) b_and!22997 (not start!73006) (not b!847574) (not mapNonEmpty!25643) (not b!847575) (not b!847565) (not b_next!13893) (not b!847577) (not b!847571) tp_is_empty!16029 (not bm!37532) (not b!847564))
(check-sat b_and!22997 (not b_next!13893))
