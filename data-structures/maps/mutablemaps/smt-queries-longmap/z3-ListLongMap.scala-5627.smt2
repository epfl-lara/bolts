; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73576 () Bool)

(assert start!73576)

(declare-fun b_free!14463 () Bool)

(declare-fun b_next!14463 () Bool)

(assert (=> start!73576 (= b_free!14463 (not b_next!14463))))

(declare-fun tp!50893 () Bool)

(declare-fun b_and!23923 () Bool)

(assert (=> start!73576 (= tp!50893 b_and!23923)))

(declare-fun b!859716 () Bool)

(declare-fun res!584297 () Bool)

(declare-fun e!479120 () Bool)

(assert (=> b!859716 (=> (not res!584297) (not e!479120))))

(declare-datatypes ((array!49356 0))(
  ( (array!49357 (arr!23705 (Array (_ BitVec 32) (_ BitVec 64))) (size!24146 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49356)

(declare-datatypes ((List!16888 0))(
  ( (Nil!16885) (Cons!16884 (h!18015 (_ BitVec 64)) (t!23625 List!16888)) )
))
(declare-fun arrayNoDuplicates!0 (array!49356 (_ BitVec 32) List!16888) Bool)

(assert (=> b!859716 (= res!584297 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16885))))

(declare-fun res!584307 () Bool)

(assert (=> start!73576 (=> (not res!584307) (not e!479120))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73576 (= res!584307 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24146 _keys!868))))))

(assert (=> start!73576 e!479120))

(declare-fun tp_is_empty!16599 () Bool)

(assert (=> start!73576 tp_is_empty!16599))

(assert (=> start!73576 true))

(assert (=> start!73576 tp!50893))

(declare-fun array_inv!18744 (array!49356) Bool)

(assert (=> start!73576 (array_inv!18744 _keys!868)))

(declare-datatypes ((V!27179 0))(
  ( (V!27180 (val!8347 Int)) )
))
(declare-datatypes ((ValueCell!7860 0))(
  ( (ValueCellFull!7860 (v!10768 V!27179)) (EmptyCell!7860) )
))
(declare-datatypes ((array!49358 0))(
  ( (array!49359 (arr!23706 (Array (_ BitVec 32) ValueCell!7860)) (size!24147 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49358)

(declare-fun e!479119 () Bool)

(declare-fun array_inv!18745 (array!49358) Bool)

(assert (=> start!73576 (and (array_inv!18745 _values!688) e!479119)))

(declare-fun b!859717 () Bool)

(declare-fun res!584299 () Bool)

(assert (=> b!859717 (=> (not res!584299) (not e!479120))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!859717 (= res!584299 (and (= (size!24147 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24146 _keys!868) (size!24147 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!859718 () Bool)

(declare-fun res!584303 () Bool)

(assert (=> b!859718 (=> (not res!584303) (not e!479120))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!859718 (= res!584303 (validKeyInArray!0 k0!854))))

(declare-fun b!859719 () Bool)

(declare-fun res!584296 () Bool)

(declare-fun e!479116 () Bool)

(assert (=> b!859719 (=> res!584296 e!479116)))

(declare-fun noDuplicate!1307 (List!16888) Bool)

(assert (=> b!859719 (= res!584296 (not (noDuplicate!1307 Nil!16885)))))

(declare-fun b!859720 () Bool)

(declare-fun res!584298 () Bool)

(assert (=> b!859720 (=> (not res!584298) (not e!479120))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!859720 (= res!584298 (and (= (select (arr!23705 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!859721 () Bool)

(assert (=> b!859721 (= e!479116 true)))

(declare-fun lt!387455 () Bool)

(declare-fun contains!4225 (List!16888 (_ BitVec 64)) Bool)

(assert (=> b!859721 (= lt!387455 (contains!4225 Nil!16885 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!859722 () Bool)

(declare-fun e!479113 () Bool)

(assert (=> b!859722 (= e!479113 tp_is_empty!16599)))

(declare-fun b!859723 () Bool)

(declare-fun res!584302 () Bool)

(assert (=> b!859723 (=> (not res!584302) (not e!479120))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!859723 (= res!584302 (validMask!0 mask!1196))))

(declare-fun b!859724 () Bool)

(declare-fun e!479118 () Bool)

(declare-fun e!479121 () Bool)

(assert (=> b!859724 (= e!479118 e!479121)))

(declare-fun res!584294 () Bool)

(assert (=> b!859724 (=> res!584294 e!479121)))

(assert (=> b!859724 (= res!584294 (not (= (select (arr!23705 _keys!868) from!1053) k0!854)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11016 0))(
  ( (tuple2!11017 (_1!5518 (_ BitVec 64)) (_2!5518 V!27179)) )
))
(declare-datatypes ((List!16889 0))(
  ( (Nil!16886) (Cons!16885 (h!18016 tuple2!11016) (t!23626 List!16889)) )
))
(declare-datatypes ((ListLongMap!9799 0))(
  ( (ListLongMap!9800 (toList!4915 List!16889)) )
))
(declare-fun lt!387452 () ListLongMap!9799)

(declare-fun lt!387458 () ListLongMap!9799)

(declare-fun +!2218 (ListLongMap!9799 tuple2!11016) ListLongMap!9799)

(declare-fun get!12507 (ValueCell!7860 V!27179) V!27179)

(declare-fun dynLambda!1103 (Int (_ BitVec 64)) V!27179)

(assert (=> b!859724 (= lt!387452 (+!2218 lt!387458 (tuple2!11017 (select (arr!23705 _keys!868) from!1053) (get!12507 (select (arr!23706 _values!688) from!1053) (dynLambda!1103 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapIsEmpty!26498 () Bool)

(declare-fun mapRes!26498 () Bool)

(assert (=> mapIsEmpty!26498 mapRes!26498))

(declare-fun b!859725 () Bool)

(declare-fun e!479115 () Bool)

(assert (=> b!859725 (= e!479119 (and e!479115 mapRes!26498))))

(declare-fun condMapEmpty!26498 () Bool)

(declare-fun mapDefault!26498 () ValueCell!7860)

(assert (=> b!859725 (= condMapEmpty!26498 (= (arr!23706 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7860)) mapDefault!26498)))))

(declare-fun b!859726 () Bool)

(declare-fun e!479117 () Bool)

(assert (=> b!859726 (= e!479120 e!479117)))

(declare-fun res!584295 () Bool)

(assert (=> b!859726 (=> (not res!584295) (not e!479117))))

(assert (=> b!859726 (= res!584295 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!387457 () array!49358)

(declare-fun minValue!654 () V!27179)

(declare-fun zeroValue!654 () V!27179)

(declare-fun getCurrentListMapNoExtraKeys!2895 (array!49356 array!49358 (_ BitVec 32) (_ BitVec 32) V!27179 V!27179 (_ BitVec 32) Int) ListLongMap!9799)

(assert (=> b!859726 (= lt!387452 (getCurrentListMapNoExtraKeys!2895 _keys!868 lt!387457 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27179)

(assert (=> b!859726 (= lt!387457 (array!49359 (store (arr!23706 _values!688) i!612 (ValueCellFull!7860 v!557)) (size!24147 _values!688)))))

(declare-fun lt!387459 () ListLongMap!9799)

(assert (=> b!859726 (= lt!387459 (getCurrentListMapNoExtraKeys!2895 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!859727 () Bool)

(assert (=> b!859727 (= e!479115 tp_is_empty!16599)))

(declare-fun mapNonEmpty!26498 () Bool)

(declare-fun tp!50894 () Bool)

(assert (=> mapNonEmpty!26498 (= mapRes!26498 (and tp!50894 e!479113))))

(declare-fun mapValue!26498 () ValueCell!7860)

(declare-fun mapKey!26498 () (_ BitVec 32))

(declare-fun mapRest!26498 () (Array (_ BitVec 32) ValueCell!7860))

(assert (=> mapNonEmpty!26498 (= (arr!23706 _values!688) (store mapRest!26498 mapKey!26498 mapValue!26498))))

(declare-fun b!859728 () Bool)

(declare-fun res!584301 () Bool)

(assert (=> b!859728 (=> res!584301 e!479116)))

(assert (=> b!859728 (= res!584301 (contains!4225 Nil!16885 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!859729 () Bool)

(assert (=> b!859729 (= e!479121 e!479116)))

(declare-fun res!584304 () Bool)

(assert (=> b!859729 (=> res!584304 e!479116)))

(assert (=> b!859729 (= res!584304 (or (bvsge (size!24146 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24146 _keys!868)) (bvsge from!1053 (size!24146 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!49356 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!859729 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-datatypes ((Unit!29280 0))(
  ( (Unit!29281) )
))
(declare-fun lt!387451 () Unit!29280)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49356 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29280)

(assert (=> b!859729 (= lt!387451 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!859729 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16885)))

(declare-fun lt!387450 () Unit!29280)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49356 (_ BitVec 32) (_ BitVec 32)) Unit!29280)

(assert (=> b!859729 (= lt!387450 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!859730 () Bool)

(assert (=> b!859730 (= e!479117 (not e!479118))))

(declare-fun res!584305 () Bool)

(assert (=> b!859730 (=> res!584305 e!479118)))

(assert (=> b!859730 (= res!584305 (not (validKeyInArray!0 (select (arr!23705 _keys!868) from!1053))))))

(declare-fun lt!387456 () ListLongMap!9799)

(assert (=> b!859730 (= lt!387456 lt!387458)))

(declare-fun lt!387454 () ListLongMap!9799)

(assert (=> b!859730 (= lt!387458 (+!2218 lt!387454 (tuple2!11017 k0!854 v!557)))))

(assert (=> b!859730 (= lt!387456 (getCurrentListMapNoExtraKeys!2895 _keys!868 lt!387457 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!859730 (= lt!387454 (getCurrentListMapNoExtraKeys!2895 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!387453 () Unit!29280)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!475 (array!49356 array!49358 (_ BitVec 32) (_ BitVec 32) V!27179 V!27179 (_ BitVec 32) (_ BitVec 64) V!27179 (_ BitVec 32) Int) Unit!29280)

(assert (=> b!859730 (= lt!387453 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!475 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!859731 () Bool)

(declare-fun res!584300 () Bool)

(assert (=> b!859731 (=> (not res!584300) (not e!479120))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49356 (_ BitVec 32)) Bool)

(assert (=> b!859731 (= res!584300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!859732 () Bool)

(declare-fun res!584306 () Bool)

(assert (=> b!859732 (=> (not res!584306) (not e!479120))))

(assert (=> b!859732 (= res!584306 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24146 _keys!868))))))

(assert (= (and start!73576 res!584307) b!859723))

(assert (= (and b!859723 res!584302) b!859717))

(assert (= (and b!859717 res!584299) b!859731))

(assert (= (and b!859731 res!584300) b!859716))

(assert (= (and b!859716 res!584297) b!859732))

(assert (= (and b!859732 res!584306) b!859718))

(assert (= (and b!859718 res!584303) b!859720))

(assert (= (and b!859720 res!584298) b!859726))

(assert (= (and b!859726 res!584295) b!859730))

(assert (= (and b!859730 (not res!584305)) b!859724))

(assert (= (and b!859724 (not res!584294)) b!859729))

(assert (= (and b!859729 (not res!584304)) b!859719))

(assert (= (and b!859719 (not res!584296)) b!859728))

(assert (= (and b!859728 (not res!584301)) b!859721))

(assert (= (and b!859725 condMapEmpty!26498) mapIsEmpty!26498))

(assert (= (and b!859725 (not condMapEmpty!26498)) mapNonEmpty!26498))

(get-info :version)

(assert (= (and mapNonEmpty!26498 ((_ is ValueCellFull!7860) mapValue!26498)) b!859722))

(assert (= (and b!859725 ((_ is ValueCellFull!7860) mapDefault!26498)) b!859727))

(assert (= start!73576 b!859725))

(declare-fun b_lambda!11845 () Bool)

(assert (=> (not b_lambda!11845) (not b!859724)))

(declare-fun t!23624 () Bool)

(declare-fun tb!4593 () Bool)

(assert (=> (and start!73576 (= defaultEntry!696 defaultEntry!696) t!23624) tb!4593))

(declare-fun result!8789 () Bool)

(assert (=> tb!4593 (= result!8789 tp_is_empty!16599)))

(assert (=> b!859724 t!23624))

(declare-fun b_and!23925 () Bool)

(assert (= b_and!23923 (and (=> t!23624 result!8789) b_and!23925)))

(declare-fun m!800595 () Bool)

(assert (=> b!859716 m!800595))

(declare-fun m!800597 () Bool)

(assert (=> b!859721 m!800597))

(declare-fun m!800599 () Bool)

(assert (=> b!859718 m!800599))

(declare-fun m!800601 () Bool)

(assert (=> start!73576 m!800601))

(declare-fun m!800603 () Bool)

(assert (=> start!73576 m!800603))

(declare-fun m!800605 () Bool)

(assert (=> b!859719 m!800605))

(declare-fun m!800607 () Bool)

(assert (=> b!859730 m!800607))

(declare-fun m!800609 () Bool)

(assert (=> b!859730 m!800609))

(declare-fun m!800611 () Bool)

(assert (=> b!859730 m!800611))

(declare-fun m!800613 () Bool)

(assert (=> b!859730 m!800613))

(declare-fun m!800615 () Bool)

(assert (=> b!859730 m!800615))

(declare-fun m!800617 () Bool)

(assert (=> b!859730 m!800617))

(assert (=> b!859730 m!800609))

(declare-fun m!800619 () Bool)

(assert (=> b!859731 m!800619))

(declare-fun m!800621 () Bool)

(assert (=> b!859720 m!800621))

(declare-fun m!800623 () Bool)

(assert (=> b!859724 m!800623))

(assert (=> b!859724 m!800609))

(declare-fun m!800625 () Bool)

(assert (=> b!859724 m!800625))

(assert (=> b!859724 m!800623))

(assert (=> b!859724 m!800625))

(declare-fun m!800627 () Bool)

(assert (=> b!859724 m!800627))

(declare-fun m!800629 () Bool)

(assert (=> b!859724 m!800629))

(declare-fun m!800631 () Bool)

(assert (=> b!859728 m!800631))

(declare-fun m!800633 () Bool)

(assert (=> b!859723 m!800633))

(declare-fun m!800635 () Bool)

(assert (=> b!859726 m!800635))

(declare-fun m!800637 () Bool)

(assert (=> b!859726 m!800637))

(declare-fun m!800639 () Bool)

(assert (=> b!859726 m!800639))

(declare-fun m!800641 () Bool)

(assert (=> mapNonEmpty!26498 m!800641))

(declare-fun m!800643 () Bool)

(assert (=> b!859729 m!800643))

(declare-fun m!800645 () Bool)

(assert (=> b!859729 m!800645))

(declare-fun m!800647 () Bool)

(assert (=> b!859729 m!800647))

(declare-fun m!800649 () Bool)

(assert (=> b!859729 m!800649))

(check-sat b_and!23925 (not b!859719) (not start!73576) (not b!859724) (not b!859726) (not b!859723) (not mapNonEmpty!26498) (not b!859721) (not b!859716) (not b!859730) tp_is_empty!16599 (not b!859729) (not b!859718) (not b!859728) (not b!859731) (not b_next!14463) (not b_lambda!11845))
(check-sat b_and!23925 (not b_next!14463))
