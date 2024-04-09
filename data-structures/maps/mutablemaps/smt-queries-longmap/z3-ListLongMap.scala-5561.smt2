; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73180 () Bool)

(assert start!73180)

(declare-fun b_free!14067 () Bool)

(declare-fun b_next!14067 () Bool)

(assert (=> start!73180 (= b_free!14067 (not b_next!14067))))

(declare-fun tp!49706 () Bool)

(declare-fun b_and!23311 () Bool)

(assert (=> start!73180 (= tp!49706 b_and!23311)))

(declare-fun bm!38053 () Bool)

(declare-datatypes ((V!26651 0))(
  ( (V!26652 (val!8149 Int)) )
))
(declare-datatypes ((tuple2!10708 0))(
  ( (tuple2!10709 (_1!5364 (_ BitVec 64)) (_2!5364 V!26651)) )
))
(declare-datatypes ((List!16594 0))(
  ( (Nil!16591) (Cons!16590 (h!17721 tuple2!10708) (t!23115 List!16594)) )
))
(declare-datatypes ((ListLongMap!9491 0))(
  ( (ListLongMap!9492 (toList!4761 List!16594)) )
))
(declare-fun call!38056 () ListLongMap!9491)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48594 0))(
  ( (array!48595 (arr!23324 (Array (_ BitVec 32) (_ BitVec 64))) (size!23765 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48594)

(declare-datatypes ((ValueCell!7662 0))(
  ( (ValueCellFull!7662 (v!10570 V!26651)) (EmptyCell!7662) )
))
(declare-datatypes ((array!48596 0))(
  ( (array!48597 (arr!23325 (Array (_ BitVec 32) ValueCell!7662)) (size!23766 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48596)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26651)

(declare-fun zeroValue!654 () V!26651)

(declare-fun getCurrentListMapNoExtraKeys!2746 (array!48594 array!48596 (_ BitVec 32) (_ BitVec 32) V!26651 V!26651 (_ BitVec 32) Int) ListLongMap!9491)

(assert (=> bm!38053 (= call!38056 (getCurrentListMapNoExtraKeys!2746 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851580 () Bool)

(declare-fun e!475018 () Bool)

(declare-fun tp_is_empty!16203 () Bool)

(assert (=> b!851580 (= e!475018 tp_is_empty!16203)))

(declare-fun b!851581 () Bool)

(declare-fun res!578541 () Bool)

(declare-fun e!475013 () Bool)

(assert (=> b!851581 (=> (not res!578541) (not e!475013))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!851581 (= res!578541 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23765 _keys!868))))))

(declare-fun b!851582 () Bool)

(declare-fun e!475017 () Bool)

(assert (=> b!851582 (= e!475017 tp_is_empty!16203)))

(declare-fun b!851583 () Bool)

(declare-fun e!475014 () Bool)

(assert (=> b!851583 (= e!475014 true)))

(declare-fun lt!383596 () ListLongMap!9491)

(declare-fun lt!383593 () tuple2!10708)

(declare-fun lt!383591 () V!26651)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2103 (ListLongMap!9491 tuple2!10708) ListLongMap!9491)

(assert (=> b!851583 (= (+!2103 lt!383596 lt!383593) (+!2103 (+!2103 lt!383596 (tuple2!10709 k0!854 lt!383591)) lt!383593))))

(declare-fun lt!383594 () V!26651)

(assert (=> b!851583 (= lt!383593 (tuple2!10709 k0!854 lt!383594))))

(declare-datatypes ((Unit!29052 0))(
  ( (Unit!29053) )
))
(declare-fun lt!383598 () Unit!29052)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!287 (ListLongMap!9491 (_ BitVec 64) V!26651 V!26651) Unit!29052)

(assert (=> b!851583 (= lt!383598 (addSameAsAddTwiceSameKeyDiffValues!287 lt!383596 k0!854 lt!383591 lt!383594))))

(declare-fun lt!383589 () V!26651)

(declare-fun get!12307 (ValueCell!7662 V!26651) V!26651)

(assert (=> b!851583 (= lt!383591 (get!12307 (select (arr!23325 _values!688) from!1053) lt!383589))))

(declare-fun lt!383597 () ListLongMap!9491)

(assert (=> b!851583 (= lt!383597 (+!2103 lt!383596 (tuple2!10709 (select (arr!23324 _keys!868) from!1053) lt!383594)))))

(declare-fun v!557 () V!26651)

(assert (=> b!851583 (= lt!383594 (get!12307 (select (store (arr!23325 _values!688) i!612 (ValueCellFull!7662 v!557)) from!1053) lt!383589))))

(declare-fun dynLambda!1035 (Int (_ BitVec 64)) V!26651)

(assert (=> b!851583 (= lt!383589 (dynLambda!1035 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!383595 () array!48596)

(assert (=> b!851583 (= lt!383596 (getCurrentListMapNoExtraKeys!2746 _keys!868 lt!383595 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851584 () Bool)

(declare-fun res!578545 () Bool)

(assert (=> b!851584 (=> (not res!578545) (not e!475013))))

(assert (=> b!851584 (= res!578545 (and (= (select (arr!23324 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!851585 () Bool)

(declare-fun res!578547 () Bool)

(assert (=> b!851585 (=> (not res!578547) (not e!475013))))

(assert (=> b!851585 (= res!578547 (and (= (size!23766 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23765 _keys!868) (size!23766 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!851586 () Bool)

(declare-fun res!578542 () Bool)

(assert (=> b!851586 (=> (not res!578542) (not e!475013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!851586 (= res!578542 (validMask!0 mask!1196))))

(declare-fun b!851587 () Bool)

(declare-fun e!475019 () Bool)

(assert (=> b!851587 (= e!475019 (not e!475014))))

(declare-fun res!578549 () Bool)

(assert (=> b!851587 (=> res!578549 e!475014)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851587 (= res!578549 (not (validKeyInArray!0 (select (arr!23324 _keys!868) from!1053))))))

(declare-fun e!475015 () Bool)

(assert (=> b!851587 e!475015))

(declare-fun c!91689 () Bool)

(assert (=> b!851587 (= c!91689 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!383590 () Unit!29052)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!369 (array!48594 array!48596 (_ BitVec 32) (_ BitVec 32) V!26651 V!26651 (_ BitVec 32) (_ BitVec 64) V!26651 (_ BitVec 32) Int) Unit!29052)

(assert (=> b!851587 (= lt!383590 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!369 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun call!38057 () ListLongMap!9491)

(declare-fun bm!38054 () Bool)

(assert (=> bm!38054 (= call!38057 (getCurrentListMapNoExtraKeys!2746 _keys!868 lt!383595 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851588 () Bool)

(assert (=> b!851588 (= e!475015 (= call!38057 call!38056))))

(declare-fun mapIsEmpty!25904 () Bool)

(declare-fun mapRes!25904 () Bool)

(assert (=> mapIsEmpty!25904 mapRes!25904))

(declare-fun mapNonEmpty!25904 () Bool)

(declare-fun tp!49705 () Bool)

(assert (=> mapNonEmpty!25904 (= mapRes!25904 (and tp!49705 e!475018))))

(declare-fun mapKey!25904 () (_ BitVec 32))

(declare-fun mapRest!25904 () (Array (_ BitVec 32) ValueCell!7662))

(declare-fun mapValue!25904 () ValueCell!7662)

(assert (=> mapNonEmpty!25904 (= (arr!23325 _values!688) (store mapRest!25904 mapKey!25904 mapValue!25904))))

(declare-fun b!851589 () Bool)

(assert (=> b!851589 (= e!475015 (= call!38057 (+!2103 call!38056 (tuple2!10709 k0!854 v!557))))))

(declare-fun res!578543 () Bool)

(assert (=> start!73180 (=> (not res!578543) (not e!475013))))

(assert (=> start!73180 (= res!578543 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23765 _keys!868))))))

(assert (=> start!73180 e!475013))

(assert (=> start!73180 tp_is_empty!16203))

(assert (=> start!73180 true))

(assert (=> start!73180 tp!49706))

(declare-fun array_inv!18492 (array!48594) Bool)

(assert (=> start!73180 (array_inv!18492 _keys!868)))

(declare-fun e!475020 () Bool)

(declare-fun array_inv!18493 (array!48596) Bool)

(assert (=> start!73180 (and (array_inv!18493 _values!688) e!475020)))

(declare-fun b!851579 () Bool)

(declare-fun res!578546 () Bool)

(assert (=> b!851579 (=> (not res!578546) (not e!475013))))

(declare-datatypes ((List!16595 0))(
  ( (Nil!16592) (Cons!16591 (h!17722 (_ BitVec 64)) (t!23116 List!16595)) )
))
(declare-fun arrayNoDuplicates!0 (array!48594 (_ BitVec 32) List!16595) Bool)

(assert (=> b!851579 (= res!578546 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16592))))

(declare-fun b!851590 () Bool)

(assert (=> b!851590 (= e!475013 e!475019)))

(declare-fun res!578544 () Bool)

(assert (=> b!851590 (=> (not res!578544) (not e!475019))))

(assert (=> b!851590 (= res!578544 (= from!1053 i!612))))

(assert (=> b!851590 (= lt!383597 (getCurrentListMapNoExtraKeys!2746 _keys!868 lt!383595 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!851590 (= lt!383595 (array!48597 (store (arr!23325 _values!688) i!612 (ValueCellFull!7662 v!557)) (size!23766 _values!688)))))

(declare-fun lt!383592 () ListLongMap!9491)

(assert (=> b!851590 (= lt!383592 (getCurrentListMapNoExtraKeys!2746 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!851591 () Bool)

(declare-fun res!578548 () Bool)

(assert (=> b!851591 (=> (not res!578548) (not e!475013))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48594 (_ BitVec 32)) Bool)

(assert (=> b!851591 (= res!578548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!851592 () Bool)

(assert (=> b!851592 (= e!475020 (and e!475017 mapRes!25904))))

(declare-fun condMapEmpty!25904 () Bool)

(declare-fun mapDefault!25904 () ValueCell!7662)

(assert (=> b!851592 (= condMapEmpty!25904 (= (arr!23325 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7662)) mapDefault!25904)))))

(declare-fun b!851593 () Bool)

(declare-fun res!578550 () Bool)

(assert (=> b!851593 (=> (not res!578550) (not e!475013))))

(assert (=> b!851593 (= res!578550 (validKeyInArray!0 k0!854))))

(assert (= (and start!73180 res!578543) b!851586))

(assert (= (and b!851586 res!578542) b!851585))

(assert (= (and b!851585 res!578547) b!851591))

(assert (= (and b!851591 res!578548) b!851579))

(assert (= (and b!851579 res!578546) b!851581))

(assert (= (and b!851581 res!578541) b!851593))

(assert (= (and b!851593 res!578550) b!851584))

(assert (= (and b!851584 res!578545) b!851590))

(assert (= (and b!851590 res!578544) b!851587))

(assert (= (and b!851587 c!91689) b!851589))

(assert (= (and b!851587 (not c!91689)) b!851588))

(assert (= (or b!851589 b!851588) bm!38054))

(assert (= (or b!851589 b!851588) bm!38053))

(assert (= (and b!851587 (not res!578549)) b!851583))

(assert (= (and b!851592 condMapEmpty!25904) mapIsEmpty!25904))

(assert (= (and b!851592 (not condMapEmpty!25904)) mapNonEmpty!25904))

(get-info :version)

(assert (= (and mapNonEmpty!25904 ((_ is ValueCellFull!7662) mapValue!25904)) b!851580))

(assert (= (and b!851592 ((_ is ValueCellFull!7662) mapDefault!25904)) b!851582))

(assert (= start!73180 b!851592))

(declare-fun b_lambda!11629 () Bool)

(assert (=> (not b_lambda!11629) (not b!851583)))

(declare-fun t!23114 () Bool)

(declare-fun tb!4377 () Bool)

(assert (=> (and start!73180 (= defaultEntry!696 defaultEntry!696) t!23114) tb!4377))

(declare-fun result!8357 () Bool)

(assert (=> tb!4377 (= result!8357 tp_is_empty!16203)))

(assert (=> b!851583 t!23114))

(declare-fun b_and!23313 () Bool)

(assert (= b_and!23311 (and (=> t!23114 result!8357) b_and!23313)))

(declare-fun m!792641 () Bool)

(assert (=> start!73180 m!792641))

(declare-fun m!792643 () Bool)

(assert (=> start!73180 m!792643))

(declare-fun m!792645 () Bool)

(assert (=> b!851593 m!792645))

(declare-fun m!792647 () Bool)

(assert (=> b!851586 m!792647))

(declare-fun m!792649 () Bool)

(assert (=> bm!38053 m!792649))

(declare-fun m!792651 () Bool)

(assert (=> b!851589 m!792651))

(declare-fun m!792653 () Bool)

(assert (=> mapNonEmpty!25904 m!792653))

(declare-fun m!792655 () Bool)

(assert (=> bm!38054 m!792655))

(declare-fun m!792657 () Bool)

(assert (=> b!851590 m!792657))

(declare-fun m!792659 () Bool)

(assert (=> b!851590 m!792659))

(declare-fun m!792661 () Bool)

(assert (=> b!851590 m!792661))

(declare-fun m!792663 () Bool)

(assert (=> b!851583 m!792663))

(declare-fun m!792665 () Bool)

(assert (=> b!851583 m!792665))

(declare-fun m!792667 () Bool)

(assert (=> b!851583 m!792667))

(declare-fun m!792669 () Bool)

(assert (=> b!851583 m!792669))

(declare-fun m!792671 () Bool)

(assert (=> b!851583 m!792671))

(assert (=> b!851583 m!792659))

(assert (=> b!851583 m!792663))

(declare-fun m!792673 () Bool)

(assert (=> b!851583 m!792673))

(assert (=> b!851583 m!792671))

(declare-fun m!792675 () Bool)

(assert (=> b!851583 m!792675))

(declare-fun m!792677 () Bool)

(assert (=> b!851583 m!792677))

(declare-fun m!792679 () Bool)

(assert (=> b!851583 m!792679))

(declare-fun m!792681 () Bool)

(assert (=> b!851583 m!792681))

(declare-fun m!792683 () Bool)

(assert (=> b!851583 m!792683))

(assert (=> b!851583 m!792655))

(assert (=> b!851583 m!792667))

(assert (=> b!851587 m!792677))

(assert (=> b!851587 m!792677))

(declare-fun m!792685 () Bool)

(assert (=> b!851587 m!792685))

(declare-fun m!792687 () Bool)

(assert (=> b!851587 m!792687))

(declare-fun m!792689 () Bool)

(assert (=> b!851579 m!792689))

(declare-fun m!792691 () Bool)

(assert (=> b!851584 m!792691))

(declare-fun m!792693 () Bool)

(assert (=> b!851591 m!792693))

(check-sat (not b!851590) tp_is_empty!16203 (not bm!38054) (not start!73180) (not bm!38053) (not b!851593) (not b!851586) (not b!851583) (not mapNonEmpty!25904) (not b!851591) (not b_lambda!11629) b_and!23313 (not b!851579) (not b_next!14067) (not b!851589) (not b!851587))
(check-sat b_and!23313 (not b_next!14067))
