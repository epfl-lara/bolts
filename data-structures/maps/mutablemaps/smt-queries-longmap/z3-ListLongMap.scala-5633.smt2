; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73612 () Bool)

(assert start!73612)

(declare-fun b_free!14499 () Bool)

(declare-fun b_next!14499 () Bool)

(assert (=> start!73612 (= b_free!14499 (not b_next!14499))))

(declare-fun tp!51002 () Bool)

(declare-fun b_and!23995 () Bool)

(assert (=> start!73612 (= tp!51002 b_and!23995)))

(declare-fun b!860660 () Bool)

(declare-fun res!585037 () Bool)

(declare-fun e!479601 () Bool)

(assert (=> b!860660 (=> (not res!585037) (not e!479601))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49422 0))(
  ( (array!49423 (arr!23738 (Array (_ BitVec 32) (_ BitVec 64))) (size!24179 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49422)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!860660 (= res!585037 (and (= (select (arr!23738 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!860661 () Bool)

(declare-fun e!479596 () Bool)

(declare-fun tp_is_empty!16635 () Bool)

(assert (=> b!860661 (= e!479596 tp_is_empty!16635)))

(declare-fun b!860662 () Bool)

(declare-fun res!585034 () Bool)

(assert (=> b!860662 (=> (not res!585034) (not e!479601))))

(assert (=> b!860662 (= res!585034 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24179 _keys!868))))))

(declare-fun b!860663 () Bool)

(declare-fun e!479597 () Bool)

(declare-fun mapRes!26552 () Bool)

(assert (=> b!860663 (= e!479597 (and e!479596 mapRes!26552))))

(declare-fun condMapEmpty!26552 () Bool)

(declare-datatypes ((V!27227 0))(
  ( (V!27228 (val!8365 Int)) )
))
(declare-datatypes ((ValueCell!7878 0))(
  ( (ValueCellFull!7878 (v!10786 V!27227)) (EmptyCell!7878) )
))
(declare-datatypes ((array!49424 0))(
  ( (array!49425 (arr!23739 (Array (_ BitVec 32) ValueCell!7878)) (size!24180 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49424)

(declare-fun mapDefault!26552 () ValueCell!7878)

(assert (=> b!860663 (= condMapEmpty!26552 (= (arr!23739 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7878)) mapDefault!26552)))))

(declare-fun b!860665 () Bool)

(declare-fun e!479594 () Bool)

(assert (=> b!860665 (= e!479594 true)))

(assert (=> b!860665 (not (= (select (arr!23738 _keys!868) from!1053) k0!854))))

(declare-datatypes ((Unit!29302 0))(
  ( (Unit!29303) )
))
(declare-fun lt!388004 () Unit!29302)

(declare-fun e!479600 () Unit!29302)

(assert (=> b!860665 (= lt!388004 e!479600)))

(declare-fun c!91887 () Bool)

(assert (=> b!860665 (= c!91887 (= (select (arr!23738 _keys!868) from!1053) k0!854))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11044 0))(
  ( (tuple2!11045 (_1!5532 (_ BitVec 64)) (_2!5532 V!27227)) )
))
(declare-datatypes ((List!16915 0))(
  ( (Nil!16912) (Cons!16911 (h!18042 tuple2!11044) (t!23688 List!16915)) )
))
(declare-datatypes ((ListLongMap!9827 0))(
  ( (ListLongMap!9828 (toList!4929 List!16915)) )
))
(declare-fun lt!388001 () ListLongMap!9827)

(declare-fun lt!387996 () ListLongMap!9827)

(declare-fun +!2230 (ListLongMap!9827 tuple2!11044) ListLongMap!9827)

(declare-fun get!12529 (ValueCell!7878 V!27227) V!27227)

(declare-fun dynLambda!1113 (Int (_ BitVec 64)) V!27227)

(assert (=> b!860665 (= lt!387996 (+!2230 lt!388001 (tuple2!11045 (select (arr!23738 _keys!868) from!1053) (get!12529 (select (arr!23739 _values!688) from!1053) (dynLambda!1113 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!860666 () Bool)

(declare-fun res!585033 () Bool)

(assert (=> b!860666 (=> (not res!585033) (not e!479601))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!860666 (= res!585033 (validMask!0 mask!1196))))

(declare-fun b!860667 () Bool)

(declare-fun res!585031 () Bool)

(assert (=> b!860667 (=> (not res!585031) (not e!479601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!860667 (= res!585031 (validKeyInArray!0 k0!854))))

(declare-fun b!860668 () Bool)

(declare-fun Unit!29304 () Unit!29302)

(assert (=> b!860668 (= e!479600 Unit!29304)))

(declare-fun lt!387998 () Unit!29302)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49422 (_ BitVec 32) (_ BitVec 32)) Unit!29302)

(assert (=> b!860668 (= lt!387998 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16916 0))(
  ( (Nil!16913) (Cons!16912 (h!18043 (_ BitVec 64)) (t!23689 List!16916)) )
))
(declare-fun arrayNoDuplicates!0 (array!49422 (_ BitVec 32) List!16916) Bool)

(assert (=> b!860668 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16913)))

(declare-fun lt!388003 () Unit!29302)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49422 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29302)

(assert (=> b!860668 (= lt!388003 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!860668 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!387999 () Unit!29302)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49422 (_ BitVec 64) (_ BitVec 32) List!16916) Unit!29302)

(assert (=> b!860668 (= lt!387999 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16913))))

(assert (=> b!860668 false))

(declare-fun b!860669 () Bool)

(declare-fun Unit!29305 () Unit!29302)

(assert (=> b!860669 (= e!479600 Unit!29305)))

(declare-fun b!860664 () Bool)

(declare-fun e!479598 () Bool)

(assert (=> b!860664 (= e!479598 (not e!479594))))

(declare-fun res!585039 () Bool)

(assert (=> b!860664 (=> res!585039 e!479594)))

(assert (=> b!860664 (= res!585039 (not (validKeyInArray!0 (select (arr!23738 _keys!868) from!1053))))))

(declare-fun lt!388002 () ListLongMap!9827)

(assert (=> b!860664 (= lt!388002 lt!388001)))

(declare-fun v!557 () V!27227)

(declare-fun lt!387997 () ListLongMap!9827)

(assert (=> b!860664 (= lt!388001 (+!2230 lt!387997 (tuple2!11045 k0!854 v!557)))))

(declare-fun lt!387995 () array!49424)

(declare-fun minValue!654 () V!27227)

(declare-fun zeroValue!654 () V!27227)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2909 (array!49422 array!49424 (_ BitVec 32) (_ BitVec 32) V!27227 V!27227 (_ BitVec 32) Int) ListLongMap!9827)

(assert (=> b!860664 (= lt!388002 (getCurrentListMapNoExtraKeys!2909 _keys!868 lt!387995 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!860664 (= lt!387997 (getCurrentListMapNoExtraKeys!2909 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!388005 () Unit!29302)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!483 (array!49422 array!49424 (_ BitVec 32) (_ BitVec 32) V!27227 V!27227 (_ BitVec 32) (_ BitVec 64) V!27227 (_ BitVec 32) Int) Unit!29302)

(assert (=> b!860664 (= lt!388005 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!483 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!585032 () Bool)

(assert (=> start!73612 (=> (not res!585032) (not e!479601))))

(assert (=> start!73612 (= res!585032 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24179 _keys!868))))))

(assert (=> start!73612 e!479601))

(assert (=> start!73612 tp_is_empty!16635))

(assert (=> start!73612 true))

(assert (=> start!73612 tp!51002))

(declare-fun array_inv!18764 (array!49422) Bool)

(assert (=> start!73612 (array_inv!18764 _keys!868)))

(declare-fun array_inv!18765 (array!49424) Bool)

(assert (=> start!73612 (and (array_inv!18765 _values!688) e!479597)))

(declare-fun b!860670 () Bool)

(declare-fun res!585036 () Bool)

(assert (=> b!860670 (=> (not res!585036) (not e!479601))))

(assert (=> b!860670 (= res!585036 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16913))))

(declare-fun mapIsEmpty!26552 () Bool)

(assert (=> mapIsEmpty!26552 mapRes!26552))

(declare-fun b!860671 () Bool)

(declare-fun e!479599 () Bool)

(assert (=> b!860671 (= e!479599 tp_is_empty!16635)))

(declare-fun b!860672 () Bool)

(declare-fun res!585035 () Bool)

(assert (=> b!860672 (=> (not res!585035) (not e!479601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49422 (_ BitVec 32)) Bool)

(assert (=> b!860672 (= res!585035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!26552 () Bool)

(declare-fun tp!51001 () Bool)

(assert (=> mapNonEmpty!26552 (= mapRes!26552 (and tp!51001 e!479599))))

(declare-fun mapValue!26552 () ValueCell!7878)

(declare-fun mapRest!26552 () (Array (_ BitVec 32) ValueCell!7878))

(declare-fun mapKey!26552 () (_ BitVec 32))

(assert (=> mapNonEmpty!26552 (= (arr!23739 _values!688) (store mapRest!26552 mapKey!26552 mapValue!26552))))

(declare-fun b!860673 () Bool)

(declare-fun res!585030 () Bool)

(assert (=> b!860673 (=> (not res!585030) (not e!479601))))

(assert (=> b!860673 (= res!585030 (and (= (size!24180 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24179 _keys!868) (size!24180 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!860674 () Bool)

(assert (=> b!860674 (= e!479601 e!479598)))

(declare-fun res!585038 () Bool)

(assert (=> b!860674 (=> (not res!585038) (not e!479598))))

(assert (=> b!860674 (= res!585038 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!860674 (= lt!387996 (getCurrentListMapNoExtraKeys!2909 _keys!868 lt!387995 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!860674 (= lt!387995 (array!49425 (store (arr!23739 _values!688) i!612 (ValueCellFull!7878 v!557)) (size!24180 _values!688)))))

(declare-fun lt!388000 () ListLongMap!9827)

(assert (=> b!860674 (= lt!388000 (getCurrentListMapNoExtraKeys!2909 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!73612 res!585032) b!860666))

(assert (= (and b!860666 res!585033) b!860673))

(assert (= (and b!860673 res!585030) b!860672))

(assert (= (and b!860672 res!585035) b!860670))

(assert (= (and b!860670 res!585036) b!860662))

(assert (= (and b!860662 res!585034) b!860667))

(assert (= (and b!860667 res!585031) b!860660))

(assert (= (and b!860660 res!585037) b!860674))

(assert (= (and b!860674 res!585038) b!860664))

(assert (= (and b!860664 (not res!585039)) b!860665))

(assert (= (and b!860665 c!91887) b!860668))

(assert (= (and b!860665 (not c!91887)) b!860669))

(assert (= (and b!860663 condMapEmpty!26552) mapIsEmpty!26552))

(assert (= (and b!860663 (not condMapEmpty!26552)) mapNonEmpty!26552))

(get-info :version)

(assert (= (and mapNonEmpty!26552 ((_ is ValueCellFull!7878) mapValue!26552)) b!860671))

(assert (= (and b!860663 ((_ is ValueCellFull!7878) mapDefault!26552)) b!860661))

(assert (= start!73612 b!860663))

(declare-fun b_lambda!11881 () Bool)

(assert (=> (not b_lambda!11881) (not b!860665)))

(declare-fun t!23687 () Bool)

(declare-fun tb!4629 () Bool)

(assert (=> (and start!73612 (= defaultEntry!696 defaultEntry!696) t!23687) tb!4629))

(declare-fun result!8861 () Bool)

(assert (=> tb!4629 (= result!8861 tp_is_empty!16635)))

(assert (=> b!860665 t!23687))

(declare-fun b_and!23997 () Bool)

(assert (= b_and!23995 (and (=> t!23687 result!8861) b_and!23997)))

(declare-fun m!801599 () Bool)

(assert (=> b!860665 m!801599))

(declare-fun m!801601 () Bool)

(assert (=> b!860665 m!801601))

(declare-fun m!801603 () Bool)

(assert (=> b!860665 m!801603))

(declare-fun m!801605 () Bool)

(assert (=> b!860665 m!801605))

(assert (=> b!860665 m!801601))

(declare-fun m!801607 () Bool)

(assert (=> b!860665 m!801607))

(assert (=> b!860665 m!801603))

(declare-fun m!801609 () Bool)

(assert (=> b!860664 m!801609))

(assert (=> b!860664 m!801607))

(declare-fun m!801611 () Bool)

(assert (=> b!860664 m!801611))

(declare-fun m!801613 () Bool)

(assert (=> b!860664 m!801613))

(declare-fun m!801615 () Bool)

(assert (=> b!860664 m!801615))

(assert (=> b!860664 m!801607))

(declare-fun m!801617 () Bool)

(assert (=> b!860664 m!801617))

(declare-fun m!801619 () Bool)

(assert (=> b!860660 m!801619))

(declare-fun m!801621 () Bool)

(assert (=> b!860666 m!801621))

(declare-fun m!801623 () Bool)

(assert (=> start!73612 m!801623))

(declare-fun m!801625 () Bool)

(assert (=> start!73612 m!801625))

(declare-fun m!801627 () Bool)

(assert (=> b!860667 m!801627))

(declare-fun m!801629 () Bool)

(assert (=> b!860672 m!801629))

(declare-fun m!801631 () Bool)

(assert (=> b!860670 m!801631))

(declare-fun m!801633 () Bool)

(assert (=> mapNonEmpty!26552 m!801633))

(declare-fun m!801635 () Bool)

(assert (=> b!860668 m!801635))

(declare-fun m!801637 () Bool)

(assert (=> b!860668 m!801637))

(declare-fun m!801639 () Bool)

(assert (=> b!860668 m!801639))

(declare-fun m!801641 () Bool)

(assert (=> b!860668 m!801641))

(declare-fun m!801643 () Bool)

(assert (=> b!860668 m!801643))

(declare-fun m!801645 () Bool)

(assert (=> b!860674 m!801645))

(declare-fun m!801647 () Bool)

(assert (=> b!860674 m!801647))

(declare-fun m!801649 () Bool)

(assert (=> b!860674 m!801649))

(check-sat (not b!860668) (not b_next!14499) tp_is_empty!16635 (not b!860674) (not b_lambda!11881) (not b!860664) (not start!73612) (not b!860666) (not b!860665) (not b!860672) b_and!23997 (not mapNonEmpty!26552) (not b!860667) (not b!860670))
(check-sat b_and!23997 (not b_next!14499))
