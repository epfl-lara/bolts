; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74468 () Bool)

(assert start!74468)

(declare-fun b_free!15183 () Bool)

(declare-fun b_next!15183 () Bool)

(assert (=> start!74468 (= b_free!15183 (not b_next!15183))))

(declare-fun tp!53227 () Bool)

(declare-fun b_and!25037 () Bool)

(assert (=> start!74468 (= tp!53227 b_and!25037)))

(declare-fun b!876661 () Bool)

(declare-fun e!488031 () Bool)

(declare-fun tp_is_empty!17427 () Bool)

(assert (=> b!876661 (= e!488031 tp_is_empty!17427)))

(declare-fun res!595809 () Bool)

(declare-fun e!488032 () Bool)

(assert (=> start!74468 (=> (not res!595809) (not e!488032))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50962 0))(
  ( (array!50963 (arr!24504 (Array (_ BitVec 32) (_ BitVec 64))) (size!24945 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50962)

(assert (=> start!74468 (= res!595809 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24945 _keys!868))))))

(assert (=> start!74468 e!488032))

(assert (=> start!74468 tp_is_empty!17427))

(assert (=> start!74468 true))

(assert (=> start!74468 tp!53227))

(declare-fun array_inv!19302 (array!50962) Bool)

(assert (=> start!74468 (array_inv!19302 _keys!868)))

(declare-datatypes ((V!28283 0))(
  ( (V!28284 (val!8761 Int)) )
))
(declare-datatypes ((ValueCell!8274 0))(
  ( (ValueCellFull!8274 (v!11190 V!28283)) (EmptyCell!8274) )
))
(declare-datatypes ((array!50964 0))(
  ( (array!50965 (arr!24505 (Array (_ BitVec 32) ValueCell!8274)) (size!24946 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50964)

(declare-fun e!488030 () Bool)

(declare-fun array_inv!19303 (array!50964) Bool)

(assert (=> start!74468 (and (array_inv!19303 _values!688) e!488030)))

(declare-fun b!876662 () Bool)

(declare-fun e!488029 () Bool)

(assert (=> b!876662 (= e!488032 e!488029)))

(declare-fun res!595812 () Bool)

(assert (=> b!876662 (=> (not res!595812) (not e!488029))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!876662 (= res!595812 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!396666 () array!50964)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11596 0))(
  ( (tuple2!11597 (_1!5808 (_ BitVec 64)) (_2!5808 V!28283)) )
))
(declare-datatypes ((List!17477 0))(
  ( (Nil!17474) (Cons!17473 (h!18604 tuple2!11596) (t!24572 List!17477)) )
))
(declare-datatypes ((ListLongMap!10379 0))(
  ( (ListLongMap!10380 (toList!5205 List!17477)) )
))
(declare-fun lt!396660 () ListLongMap!10379)

(declare-fun minValue!654 () V!28283)

(declare-fun zeroValue!654 () V!28283)

(declare-fun getCurrentListMapNoExtraKeys!3167 (array!50962 array!50964 (_ BitVec 32) (_ BitVec 32) V!28283 V!28283 (_ BitVec 32) Int) ListLongMap!10379)

(assert (=> b!876662 (= lt!396660 (getCurrentListMapNoExtraKeys!3167 _keys!868 lt!396666 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28283)

(assert (=> b!876662 (= lt!396666 (array!50965 (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) (size!24946 _values!688)))))

(declare-fun lt!396659 () ListLongMap!10379)

(assert (=> b!876662 (= lt!396659 (getCurrentListMapNoExtraKeys!3167 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun e!488027 () Bool)

(declare-fun b!876663 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2441 (ListLongMap!10379 tuple2!11596) ListLongMap!10379)

(assert (=> b!876663 (= e!488027 (= lt!396660 (+!2441 lt!396659 (tuple2!11597 k0!854 v!557))))))

(declare-fun lt!396662 () tuple2!11596)

(declare-fun lt!396665 () ListLongMap!10379)

(declare-fun lt!396668 () V!28283)

(assert (=> b!876663 (= (+!2441 lt!396665 lt!396662) (+!2441 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668)) lt!396662))))

(declare-fun lt!396667 () V!28283)

(assert (=> b!876663 (= lt!396662 (tuple2!11597 k0!854 lt!396667))))

(declare-datatypes ((Unit!29940 0))(
  ( (Unit!29941) )
))
(declare-fun lt!396664 () Unit!29940)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!333 (ListLongMap!10379 (_ BitVec 64) V!28283 V!28283) Unit!29940)

(assert (=> b!876663 (= lt!396664 (addSameAsAddTwiceSameKeyDiffValues!333 lt!396665 k0!854 lt!396668 lt!396667))))

(declare-fun lt!396663 () V!28283)

(declare-fun get!12905 (ValueCell!8274 V!28283) V!28283)

(assert (=> b!876663 (= lt!396668 (get!12905 (select (arr!24505 _values!688) from!1053) lt!396663))))

(assert (=> b!876663 (= lt!396660 (+!2441 lt!396665 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)))))

(assert (=> b!876663 (= lt!396667 (get!12905 (select (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) from!1053) lt!396663))))

(declare-fun dynLambda!1223 (Int (_ BitVec 64)) V!28283)

(assert (=> b!876663 (= lt!396663 (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!876663 (= lt!396665 (getCurrentListMapNoExtraKeys!3167 _keys!868 lt!396666 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun call!38792 () ListLongMap!10379)

(declare-fun bm!38789 () Bool)

(assert (=> bm!38789 (= call!38792 (getCurrentListMapNoExtraKeys!3167 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876664 () Bool)

(declare-fun e!488033 () Bool)

(assert (=> b!876664 (= e!488033 tp_is_empty!17427)))

(declare-fun b!876665 () Bool)

(declare-fun res!595807 () Bool)

(assert (=> b!876665 (=> (not res!595807) (not e!488032))))

(assert (=> b!876665 (= res!595807 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24945 _keys!868))))))

(declare-fun b!876666 () Bool)

(declare-fun mapRes!27752 () Bool)

(assert (=> b!876666 (= e!488030 (and e!488033 mapRes!27752))))

(declare-fun condMapEmpty!27752 () Bool)

(declare-fun mapDefault!27752 () ValueCell!8274)

(assert (=> b!876666 (= condMapEmpty!27752 (= (arr!24505 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8274)) mapDefault!27752)))))

(declare-fun b!876667 () Bool)

(declare-fun res!595810 () Bool)

(assert (=> b!876667 (=> (not res!595810) (not e!488032))))

(assert (=> b!876667 (= res!595810 (and (= (select (arr!24504 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!876668 () Bool)

(declare-fun e!488026 () Bool)

(declare-fun call!38793 () ListLongMap!10379)

(assert (=> b!876668 (= e!488026 (= call!38793 call!38792))))

(declare-fun b!876669 () Bool)

(declare-fun res!595804 () Bool)

(assert (=> b!876669 (=> (not res!595804) (not e!488032))))

(assert (=> b!876669 (= res!595804 (and (= (size!24946 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24945 _keys!868) (size!24946 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!27752 () Bool)

(assert (=> mapIsEmpty!27752 mapRes!27752))

(declare-fun bm!38790 () Bool)

(assert (=> bm!38790 (= call!38793 (getCurrentListMapNoExtraKeys!3167 _keys!868 lt!396666 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876670 () Bool)

(assert (=> b!876670 (= e!488029 (not e!488027))))

(declare-fun res!595808 () Bool)

(assert (=> b!876670 (=> res!595808 e!488027)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!876670 (= res!595808 (not (validKeyInArray!0 (select (arr!24504 _keys!868) from!1053))))))

(assert (=> b!876670 e!488026))

(declare-fun c!92542 () Bool)

(assert (=> b!876670 (= c!92542 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!396661 () Unit!29940)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!673 (array!50962 array!50964 (_ BitVec 32) (_ BitVec 32) V!28283 V!28283 (_ BitVec 32) (_ BitVec 64) V!28283 (_ BitVec 32) Int) Unit!29940)

(assert (=> b!876670 (= lt!396661 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!673 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876671 () Bool)

(declare-fun res!595805 () Bool)

(assert (=> b!876671 (=> (not res!595805) (not e!488032))))

(declare-datatypes ((List!17478 0))(
  ( (Nil!17475) (Cons!17474 (h!18605 (_ BitVec 64)) (t!24573 List!17478)) )
))
(declare-fun arrayNoDuplicates!0 (array!50962 (_ BitVec 32) List!17478) Bool)

(assert (=> b!876671 (= res!595805 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17475))))

(declare-fun b!876672 () Bool)

(declare-fun res!595811 () Bool)

(assert (=> b!876672 (=> (not res!595811) (not e!488032))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50962 (_ BitVec 32)) Bool)

(assert (=> b!876672 (= res!595811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27752 () Bool)

(declare-fun tp!53228 () Bool)

(assert (=> mapNonEmpty!27752 (= mapRes!27752 (and tp!53228 e!488031))))

(declare-fun mapKey!27752 () (_ BitVec 32))

(declare-fun mapValue!27752 () ValueCell!8274)

(declare-fun mapRest!27752 () (Array (_ BitVec 32) ValueCell!8274))

(assert (=> mapNonEmpty!27752 (= (arr!24505 _values!688) (store mapRest!27752 mapKey!27752 mapValue!27752))))

(declare-fun b!876673 () Bool)

(declare-fun res!595806 () Bool)

(assert (=> b!876673 (=> (not res!595806) (not e!488032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!876673 (= res!595806 (validMask!0 mask!1196))))

(declare-fun b!876674 () Bool)

(assert (=> b!876674 (= e!488026 (= call!38793 (+!2441 call!38792 (tuple2!11597 k0!854 v!557))))))

(declare-fun b!876675 () Bool)

(declare-fun res!595803 () Bool)

(assert (=> b!876675 (=> (not res!595803) (not e!488032))))

(assert (=> b!876675 (= res!595803 (validKeyInArray!0 k0!854))))

(assert (= (and start!74468 res!595809) b!876673))

(assert (= (and b!876673 res!595806) b!876669))

(assert (= (and b!876669 res!595804) b!876672))

(assert (= (and b!876672 res!595811) b!876671))

(assert (= (and b!876671 res!595805) b!876665))

(assert (= (and b!876665 res!595807) b!876675))

(assert (= (and b!876675 res!595803) b!876667))

(assert (= (and b!876667 res!595810) b!876662))

(assert (= (and b!876662 res!595812) b!876670))

(assert (= (and b!876670 c!92542) b!876674))

(assert (= (and b!876670 (not c!92542)) b!876668))

(assert (= (or b!876674 b!876668) bm!38790))

(assert (= (or b!876674 b!876668) bm!38789))

(assert (= (and b!876670 (not res!595808)) b!876663))

(assert (= (and b!876666 condMapEmpty!27752) mapIsEmpty!27752))

(assert (= (and b!876666 (not condMapEmpty!27752)) mapNonEmpty!27752))

(get-info :version)

(assert (= (and mapNonEmpty!27752 ((_ is ValueCellFull!8274) mapValue!27752)) b!876661))

(assert (= (and b!876666 ((_ is ValueCellFull!8274) mapDefault!27752)) b!876664))

(assert (= start!74468 b!876666))

(declare-fun b_lambda!12281 () Bool)

(assert (=> (not b_lambda!12281) (not b!876663)))

(declare-fun t!24571 () Bool)

(declare-fun tb!4951 () Bool)

(assert (=> (and start!74468 (= defaultEntry!696 defaultEntry!696) t!24571) tb!4951))

(declare-fun result!9513 () Bool)

(assert (=> tb!4951 (= result!9513 tp_is_empty!17427)))

(assert (=> b!876663 t!24571))

(declare-fun b_and!25039 () Bool)

(assert (= b_and!25037 (and (=> t!24571 result!9513) b_and!25039)))

(declare-fun m!816575 () Bool)

(assert (=> b!876670 m!816575))

(assert (=> b!876670 m!816575))

(declare-fun m!816577 () Bool)

(assert (=> b!876670 m!816577))

(declare-fun m!816579 () Bool)

(assert (=> b!876670 m!816579))

(declare-fun m!816581 () Bool)

(assert (=> b!876663 m!816581))

(declare-fun m!816583 () Bool)

(assert (=> b!876663 m!816583))

(declare-fun m!816585 () Bool)

(assert (=> b!876663 m!816585))

(assert (=> b!876663 m!816585))

(declare-fun m!816587 () Bool)

(assert (=> b!876663 m!816587))

(declare-fun m!816589 () Bool)

(assert (=> b!876663 m!816589))

(declare-fun m!816591 () Bool)

(assert (=> b!876663 m!816591))

(declare-fun m!816593 () Bool)

(assert (=> b!876663 m!816593))

(declare-fun m!816595 () Bool)

(assert (=> b!876663 m!816595))

(declare-fun m!816597 () Bool)

(assert (=> b!876663 m!816597))

(assert (=> b!876663 m!816581))

(declare-fun m!816599 () Bool)

(assert (=> b!876663 m!816599))

(assert (=> b!876663 m!816589))

(declare-fun m!816601 () Bool)

(assert (=> b!876663 m!816601))

(assert (=> b!876663 m!816575))

(declare-fun m!816603 () Bool)

(assert (=> b!876663 m!816603))

(declare-fun m!816605 () Bool)

(assert (=> b!876663 m!816605))

(assert (=> bm!38790 m!816595))

(declare-fun m!816607 () Bool)

(assert (=> b!876672 m!816607))

(declare-fun m!816609 () Bool)

(assert (=> b!876675 m!816609))

(declare-fun m!816611 () Bool)

(assert (=> b!876673 m!816611))

(declare-fun m!816613 () Bool)

(assert (=> b!876671 m!816613))

(declare-fun m!816615 () Bool)

(assert (=> b!876674 m!816615))

(declare-fun m!816617 () Bool)

(assert (=> b!876662 m!816617))

(assert (=> b!876662 m!816599))

(declare-fun m!816619 () Bool)

(assert (=> b!876662 m!816619))

(declare-fun m!816621 () Bool)

(assert (=> start!74468 m!816621))

(declare-fun m!816623 () Bool)

(assert (=> start!74468 m!816623))

(declare-fun m!816625 () Bool)

(assert (=> bm!38789 m!816625))

(declare-fun m!816627 () Bool)

(assert (=> b!876667 m!816627))

(declare-fun m!816629 () Bool)

(assert (=> mapNonEmpty!27752 m!816629))

(check-sat (not bm!38789) (not b!876675) (not b!876671) (not b!876673) (not b!876672) b_and!25039 tp_is_empty!17427 (not b!876662) (not b_next!15183) (not mapNonEmpty!27752) (not b_lambda!12281) (not b!876674) (not bm!38790) (not start!74468) (not b!876663) (not b!876670))
(check-sat b_and!25039 (not b_next!15183))
(get-model)

(declare-fun b_lambda!12285 () Bool)

(assert (= b_lambda!12281 (or (and start!74468 b_free!15183) b_lambda!12285)))

(check-sat (not b_lambda!12285) (not bm!38789) (not b!876675) (not b!876671) (not b!876674) (not b!876673) (not b!876672) b_and!25039 tp_is_empty!17427 (not b!876662) (not b_next!15183) (not mapNonEmpty!27752) (not bm!38790) (not start!74468) (not b!876663) (not b!876670))
(check-sat b_and!25039 (not b_next!15183))
(get-model)

(declare-fun bm!38799 () Bool)

(declare-fun call!38802 () Bool)

(declare-fun c!92548 () Bool)

(assert (=> bm!38799 (= call!38802 (arrayNoDuplicates!0 _keys!868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!92548 (Cons!17474 (select (arr!24504 _keys!868) #b00000000000000000000000000000000) Nil!17475) Nil!17475)))))

(declare-fun b!876735 () Bool)

(declare-fun e!488069 () Bool)

(assert (=> b!876735 (= e!488069 call!38802)))

(declare-fun b!876736 () Bool)

(declare-fun e!488067 () Bool)

(declare-fun contains!4244 (List!17478 (_ BitVec 64)) Bool)

(assert (=> b!876736 (= e!488067 (contains!4244 Nil!17475 (select (arr!24504 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!876737 () Bool)

(declare-fun e!488066 () Bool)

(declare-fun e!488068 () Bool)

(assert (=> b!876737 (= e!488066 e!488068)))

(declare-fun res!595849 () Bool)

(assert (=> b!876737 (=> (not res!595849) (not e!488068))))

(assert (=> b!876737 (= res!595849 (not e!488067))))

(declare-fun res!595851 () Bool)

(assert (=> b!876737 (=> (not res!595851) (not e!488067))))

(assert (=> b!876737 (= res!595851 (validKeyInArray!0 (select (arr!24504 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun d!108543 () Bool)

(declare-fun res!595850 () Bool)

(assert (=> d!108543 (=> res!595850 e!488066)))

(assert (=> d!108543 (= res!595850 (bvsge #b00000000000000000000000000000000 (size!24945 _keys!868)))))

(assert (=> d!108543 (= (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17475) e!488066)))

(declare-fun b!876738 () Bool)

(assert (=> b!876738 (= e!488068 e!488069)))

(assert (=> b!876738 (= c!92548 (validKeyInArray!0 (select (arr!24504 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!876739 () Bool)

(assert (=> b!876739 (= e!488069 call!38802)))

(assert (= (and d!108543 (not res!595850)) b!876737))

(assert (= (and b!876737 res!595851) b!876736))

(assert (= (and b!876737 res!595849) b!876738))

(assert (= (and b!876738 c!92548) b!876735))

(assert (= (and b!876738 (not c!92548)) b!876739))

(assert (= (or b!876735 b!876739) bm!38799))

(declare-fun m!816687 () Bool)

(assert (=> bm!38799 m!816687))

(declare-fun m!816689 () Bool)

(assert (=> bm!38799 m!816689))

(assert (=> b!876736 m!816687))

(assert (=> b!876736 m!816687))

(declare-fun m!816691 () Bool)

(assert (=> b!876736 m!816691))

(assert (=> b!876737 m!816687))

(assert (=> b!876737 m!816687))

(declare-fun m!816693 () Bool)

(assert (=> b!876737 m!816693))

(assert (=> b!876738 m!816687))

(assert (=> b!876738 m!816687))

(assert (=> b!876738 m!816693))

(assert (=> b!876671 d!108543))

(declare-fun d!108545 () Bool)

(assert (=> d!108545 (= (validKeyInArray!0 k0!854) (and (not (= k0!854 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!854 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!876675 d!108545))

(declare-fun d!108547 () Bool)

(declare-fun e!488072 () Bool)

(assert (=> d!108547 e!488072))

(declare-fun res!595857 () Bool)

(assert (=> d!108547 (=> (not res!595857) (not e!488072))))

(declare-fun lt!396709 () ListLongMap!10379)

(declare-fun contains!4245 (ListLongMap!10379 (_ BitVec 64)) Bool)

(assert (=> d!108547 (= res!595857 (contains!4245 lt!396709 (_1!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun lt!396707 () List!17477)

(assert (=> d!108547 (= lt!396709 (ListLongMap!10380 lt!396707))))

(declare-fun lt!396708 () Unit!29940)

(declare-fun lt!396710 () Unit!29940)

(assert (=> d!108547 (= lt!396708 lt!396710)))

(declare-datatypes ((Option!424 0))(
  ( (Some!423 (v!11195 V!28283)) (None!422) )
))
(declare-fun getValueByKey!418 (List!17477 (_ BitVec 64)) Option!424)

(assert (=> d!108547 (= (getValueByKey!418 lt!396707 (_1!5808 (tuple2!11597 k0!854 v!557))) (Some!423 (_2!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun lemmaContainsTupThenGetReturnValue!234 (List!17477 (_ BitVec 64) V!28283) Unit!29940)

(assert (=> d!108547 (= lt!396710 (lemmaContainsTupThenGetReturnValue!234 lt!396707 (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun insertStrictlySorted!272 (List!17477 (_ BitVec 64) V!28283) List!17477)

(assert (=> d!108547 (= lt!396707 (insertStrictlySorted!272 (toList!5205 lt!396659) (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557))))))

(assert (=> d!108547 (= (+!2441 lt!396659 (tuple2!11597 k0!854 v!557)) lt!396709)))

(declare-fun b!876744 () Bool)

(declare-fun res!595856 () Bool)

(assert (=> b!876744 (=> (not res!595856) (not e!488072))))

(assert (=> b!876744 (= res!595856 (= (getValueByKey!418 (toList!5205 lt!396709) (_1!5808 (tuple2!11597 k0!854 v!557))) (Some!423 (_2!5808 (tuple2!11597 k0!854 v!557)))))))

(declare-fun b!876745 () Bool)

(declare-fun contains!4246 (List!17477 tuple2!11596) Bool)

(assert (=> b!876745 (= e!488072 (contains!4246 (toList!5205 lt!396709) (tuple2!11597 k0!854 v!557)))))

(assert (= (and d!108547 res!595857) b!876744))

(assert (= (and b!876744 res!595856) b!876745))

(declare-fun m!816695 () Bool)

(assert (=> d!108547 m!816695))

(declare-fun m!816697 () Bool)

(assert (=> d!108547 m!816697))

(declare-fun m!816699 () Bool)

(assert (=> d!108547 m!816699))

(declare-fun m!816701 () Bool)

(assert (=> d!108547 m!816701))

(declare-fun m!816703 () Bool)

(assert (=> b!876744 m!816703))

(declare-fun m!816705 () Bool)

(assert (=> b!876745 m!816705))

(assert (=> b!876663 d!108547))

(declare-fun d!108549 () Bool)

(declare-fun e!488073 () Bool)

(assert (=> d!108549 e!488073))

(declare-fun res!595859 () Bool)

(assert (=> d!108549 (=> (not res!595859) (not e!488073))))

(declare-fun lt!396713 () ListLongMap!10379)

(assert (=> d!108549 (= res!595859 (contains!4245 lt!396713 (_1!5808 lt!396662)))))

(declare-fun lt!396711 () List!17477)

(assert (=> d!108549 (= lt!396713 (ListLongMap!10380 lt!396711))))

(declare-fun lt!396712 () Unit!29940)

(declare-fun lt!396714 () Unit!29940)

(assert (=> d!108549 (= lt!396712 lt!396714)))

(assert (=> d!108549 (= (getValueByKey!418 lt!396711 (_1!5808 lt!396662)) (Some!423 (_2!5808 lt!396662)))))

(assert (=> d!108549 (= lt!396714 (lemmaContainsTupThenGetReturnValue!234 lt!396711 (_1!5808 lt!396662) (_2!5808 lt!396662)))))

(assert (=> d!108549 (= lt!396711 (insertStrictlySorted!272 (toList!5205 lt!396665) (_1!5808 lt!396662) (_2!5808 lt!396662)))))

(assert (=> d!108549 (= (+!2441 lt!396665 lt!396662) lt!396713)))

(declare-fun b!876746 () Bool)

(declare-fun res!595858 () Bool)

(assert (=> b!876746 (=> (not res!595858) (not e!488073))))

(assert (=> b!876746 (= res!595858 (= (getValueByKey!418 (toList!5205 lt!396713) (_1!5808 lt!396662)) (Some!423 (_2!5808 lt!396662))))))

(declare-fun b!876747 () Bool)

(assert (=> b!876747 (= e!488073 (contains!4246 (toList!5205 lt!396713) lt!396662))))

(assert (= (and d!108549 res!595859) b!876746))

(assert (= (and b!876746 res!595858) b!876747))

(declare-fun m!816707 () Bool)

(assert (=> d!108549 m!816707))

(declare-fun m!816709 () Bool)

(assert (=> d!108549 m!816709))

(declare-fun m!816711 () Bool)

(assert (=> d!108549 m!816711))

(declare-fun m!816713 () Bool)

(assert (=> d!108549 m!816713))

(declare-fun m!816715 () Bool)

(assert (=> b!876746 m!816715))

(declare-fun m!816717 () Bool)

(assert (=> b!876747 m!816717))

(assert (=> b!876663 d!108549))

(declare-fun d!108551 () Bool)

(assert (=> d!108551 (= (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396667)) (+!2441 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668)) (tuple2!11597 k0!854 lt!396667)))))

(declare-fun lt!396717 () Unit!29940)

(declare-fun choose!1438 (ListLongMap!10379 (_ BitVec 64) V!28283 V!28283) Unit!29940)

(assert (=> d!108551 (= lt!396717 (choose!1438 lt!396665 k0!854 lt!396668 lt!396667))))

(assert (=> d!108551 (= (addSameAsAddTwiceSameKeyDiffValues!333 lt!396665 k0!854 lt!396668 lt!396667) lt!396717)))

(declare-fun bs!24611 () Bool)

(assert (= bs!24611 d!108551))

(declare-fun m!816719 () Bool)

(assert (=> bs!24611 m!816719))

(assert (=> bs!24611 m!816585))

(assert (=> bs!24611 m!816585))

(declare-fun m!816721 () Bool)

(assert (=> bs!24611 m!816721))

(declare-fun m!816723 () Bool)

(assert (=> bs!24611 m!816723))

(assert (=> b!876663 d!108551))

(declare-fun d!108553 () Bool)

(declare-fun e!488074 () Bool)

(assert (=> d!108553 e!488074))

(declare-fun res!595861 () Bool)

(assert (=> d!108553 (=> (not res!595861) (not e!488074))))

(declare-fun lt!396720 () ListLongMap!10379)

(assert (=> d!108553 (= res!595861 (contains!4245 lt!396720 (_1!5808 (tuple2!11597 k0!854 lt!396668))))))

(declare-fun lt!396718 () List!17477)

(assert (=> d!108553 (= lt!396720 (ListLongMap!10380 lt!396718))))

(declare-fun lt!396719 () Unit!29940)

(declare-fun lt!396721 () Unit!29940)

(assert (=> d!108553 (= lt!396719 lt!396721)))

(assert (=> d!108553 (= (getValueByKey!418 lt!396718 (_1!5808 (tuple2!11597 k0!854 lt!396668))) (Some!423 (_2!5808 (tuple2!11597 k0!854 lt!396668))))))

(assert (=> d!108553 (= lt!396721 (lemmaContainsTupThenGetReturnValue!234 lt!396718 (_1!5808 (tuple2!11597 k0!854 lt!396668)) (_2!5808 (tuple2!11597 k0!854 lt!396668))))))

(assert (=> d!108553 (= lt!396718 (insertStrictlySorted!272 (toList!5205 lt!396665) (_1!5808 (tuple2!11597 k0!854 lt!396668)) (_2!5808 (tuple2!11597 k0!854 lt!396668))))))

(assert (=> d!108553 (= (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668)) lt!396720)))

(declare-fun b!876748 () Bool)

(declare-fun res!595860 () Bool)

(assert (=> b!876748 (=> (not res!595860) (not e!488074))))

(assert (=> b!876748 (= res!595860 (= (getValueByKey!418 (toList!5205 lt!396720) (_1!5808 (tuple2!11597 k0!854 lt!396668))) (Some!423 (_2!5808 (tuple2!11597 k0!854 lt!396668)))))))

(declare-fun b!876749 () Bool)

(assert (=> b!876749 (= e!488074 (contains!4246 (toList!5205 lt!396720) (tuple2!11597 k0!854 lt!396668)))))

(assert (= (and d!108553 res!595861) b!876748))

(assert (= (and b!876748 res!595860) b!876749))

(declare-fun m!816725 () Bool)

(assert (=> d!108553 m!816725))

(declare-fun m!816727 () Bool)

(assert (=> d!108553 m!816727))

(declare-fun m!816729 () Bool)

(assert (=> d!108553 m!816729))

(declare-fun m!816731 () Bool)

(assert (=> d!108553 m!816731))

(declare-fun m!816733 () Bool)

(assert (=> b!876748 m!816733))

(declare-fun m!816735 () Bool)

(assert (=> b!876749 m!816735))

(assert (=> b!876663 d!108553))

(declare-fun c!92551 () Bool)

(declare-fun d!108555 () Bool)

(assert (=> d!108555 (= c!92551 ((_ is ValueCellFull!8274) (select (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) from!1053)))))

(declare-fun e!488077 () V!28283)

(assert (=> d!108555 (= (get!12905 (select (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) from!1053) lt!396663) e!488077)))

(declare-fun b!876754 () Bool)

(declare-fun get!12906 (ValueCell!8274 V!28283) V!28283)

(assert (=> b!876754 (= e!488077 (get!12906 (select (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) from!1053) lt!396663))))

(declare-fun b!876755 () Bool)

(declare-fun get!12907 (ValueCell!8274 V!28283) V!28283)

(assert (=> b!876755 (= e!488077 (get!12907 (select (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) from!1053) lt!396663))))

(assert (= (and d!108555 c!92551) b!876754))

(assert (= (and d!108555 (not c!92551)) b!876755))

(assert (=> b!876754 m!816589))

(declare-fun m!816737 () Bool)

(assert (=> b!876754 m!816737))

(assert (=> b!876755 m!816589))

(declare-fun m!816739 () Bool)

(assert (=> b!876755 m!816739))

(assert (=> b!876663 d!108555))

(declare-fun d!108557 () Bool)

(declare-fun e!488078 () Bool)

(assert (=> d!108557 e!488078))

(declare-fun res!595863 () Bool)

(assert (=> d!108557 (=> (not res!595863) (not e!488078))))

(declare-fun lt!396724 () ListLongMap!10379)

(assert (=> d!108557 (= res!595863 (contains!4245 lt!396724 (_1!5808 lt!396662)))))

(declare-fun lt!396722 () List!17477)

(assert (=> d!108557 (= lt!396724 (ListLongMap!10380 lt!396722))))

(declare-fun lt!396723 () Unit!29940)

(declare-fun lt!396725 () Unit!29940)

(assert (=> d!108557 (= lt!396723 lt!396725)))

(assert (=> d!108557 (= (getValueByKey!418 lt!396722 (_1!5808 lt!396662)) (Some!423 (_2!5808 lt!396662)))))

(assert (=> d!108557 (= lt!396725 (lemmaContainsTupThenGetReturnValue!234 lt!396722 (_1!5808 lt!396662) (_2!5808 lt!396662)))))

(assert (=> d!108557 (= lt!396722 (insertStrictlySorted!272 (toList!5205 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668))) (_1!5808 lt!396662) (_2!5808 lt!396662)))))

(assert (=> d!108557 (= (+!2441 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668)) lt!396662) lt!396724)))

(declare-fun b!876756 () Bool)

(declare-fun res!595862 () Bool)

(assert (=> b!876756 (=> (not res!595862) (not e!488078))))

(assert (=> b!876756 (= res!595862 (= (getValueByKey!418 (toList!5205 lt!396724) (_1!5808 lt!396662)) (Some!423 (_2!5808 lt!396662))))))

(declare-fun b!876757 () Bool)

(assert (=> b!876757 (= e!488078 (contains!4246 (toList!5205 lt!396724) lt!396662))))

(assert (= (and d!108557 res!595863) b!876756))

(assert (= (and b!876756 res!595862) b!876757))

(declare-fun m!816741 () Bool)

(assert (=> d!108557 m!816741))

(declare-fun m!816743 () Bool)

(assert (=> d!108557 m!816743))

(declare-fun m!816745 () Bool)

(assert (=> d!108557 m!816745))

(declare-fun m!816747 () Bool)

(assert (=> d!108557 m!816747))

(declare-fun m!816749 () Bool)

(assert (=> b!876756 m!816749))

(declare-fun m!816751 () Bool)

(assert (=> b!876757 m!816751))

(assert (=> b!876663 d!108557))

(declare-fun d!108559 () Bool)

(declare-fun e!488079 () Bool)

(assert (=> d!108559 e!488079))

(declare-fun res!595865 () Bool)

(assert (=> d!108559 (=> (not res!595865) (not e!488079))))

(declare-fun lt!396728 () ListLongMap!10379)

(assert (=> d!108559 (= res!595865 (contains!4245 lt!396728 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))

(declare-fun lt!396726 () List!17477)

(assert (=> d!108559 (= lt!396728 (ListLongMap!10380 lt!396726))))

(declare-fun lt!396727 () Unit!29940)

(declare-fun lt!396729 () Unit!29940)

(assert (=> d!108559 (= lt!396727 lt!396729)))

(assert (=> d!108559 (= (getValueByKey!418 lt!396726 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))) (Some!423 (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))

(assert (=> d!108559 (= lt!396729 (lemmaContainsTupThenGetReturnValue!234 lt!396726 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))

(assert (=> d!108559 (= lt!396726 (insertStrictlySorted!272 (toList!5205 lt!396665) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))

(assert (=> d!108559 (= (+!2441 lt!396665 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)) lt!396728)))

(declare-fun b!876758 () Bool)

(declare-fun res!595864 () Bool)

(assert (=> b!876758 (=> (not res!595864) (not e!488079))))

(assert (=> b!876758 (= res!595864 (= (getValueByKey!418 (toList!5205 lt!396728) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))) (Some!423 (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)))))))

(declare-fun b!876759 () Bool)

(assert (=> b!876759 (= e!488079 (contains!4246 (toList!5205 lt!396728) (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)))))

(assert (= (and d!108559 res!595865) b!876758))

(assert (= (and b!876758 res!595864) b!876759))

(declare-fun m!816753 () Bool)

(assert (=> d!108559 m!816753))

(declare-fun m!816755 () Bool)

(assert (=> d!108559 m!816755))

(declare-fun m!816757 () Bool)

(assert (=> d!108559 m!816757))

(declare-fun m!816759 () Bool)

(assert (=> d!108559 m!816759))

(declare-fun m!816761 () Bool)

(assert (=> b!876758 m!816761))

(declare-fun m!816763 () Bool)

(assert (=> b!876759 m!816763))

(assert (=> b!876663 d!108559))

(declare-fun d!108561 () Bool)

(declare-fun c!92552 () Bool)

(assert (=> d!108561 (= c!92552 ((_ is ValueCellFull!8274) (select (arr!24505 _values!688) from!1053)))))

(declare-fun e!488080 () V!28283)

(assert (=> d!108561 (= (get!12905 (select (arr!24505 _values!688) from!1053) lt!396663) e!488080)))

(declare-fun b!876760 () Bool)

(assert (=> b!876760 (= e!488080 (get!12906 (select (arr!24505 _values!688) from!1053) lt!396663))))

(declare-fun b!876761 () Bool)

(assert (=> b!876761 (= e!488080 (get!12907 (select (arr!24505 _values!688) from!1053) lt!396663))))

(assert (= (and d!108561 c!92552) b!876760))

(assert (= (and d!108561 (not c!92552)) b!876761))

(assert (=> b!876760 m!816581))

(declare-fun m!816765 () Bool)

(assert (=> b!876760 m!816765))

(assert (=> b!876761 m!816581))

(declare-fun m!816767 () Bool)

(assert (=> b!876761 m!816767))

(assert (=> b!876663 d!108561))

(declare-fun b!876786 () Bool)

(declare-fun e!488098 () Bool)

(assert (=> b!876786 (= e!488098 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!876786 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!876787 () Bool)

(declare-fun e!488097 () Bool)

(declare-fun e!488100 () Bool)

(assert (=> b!876787 (= e!488097 e!488100)))

(assert (=> b!876787 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24945 _keys!868)))))

(declare-fun lt!396744 () ListLongMap!10379)

(declare-fun res!595876 () Bool)

(assert (=> b!876787 (= res!595876 (contains!4245 lt!396744 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!876787 (=> (not res!595876) (not e!488100))))

(declare-fun b!876789 () Bool)

(declare-fun e!488096 () Bool)

(declare-fun isEmpty!668 (ListLongMap!10379) Bool)

(assert (=> b!876789 (= e!488096 (isEmpty!668 lt!396744))))

(declare-fun b!876790 () Bool)

(declare-fun e!488095 () ListLongMap!10379)

(declare-fun call!38805 () ListLongMap!10379)

(assert (=> b!876790 (= e!488095 call!38805)))

(declare-fun b!876791 () Bool)

(declare-fun lt!396747 () Unit!29940)

(declare-fun lt!396746 () Unit!29940)

(assert (=> b!876791 (= lt!396747 lt!396746)))

(declare-fun lt!396750 () V!28283)

(declare-fun lt!396748 () (_ BitVec 64))

(declare-fun lt!396749 () ListLongMap!10379)

(declare-fun lt!396745 () (_ BitVec 64))

(assert (=> b!876791 (not (contains!4245 (+!2441 lt!396749 (tuple2!11597 lt!396745 lt!396750)) lt!396748))))

(declare-fun addStillNotContains!204 (ListLongMap!10379 (_ BitVec 64) V!28283 (_ BitVec 64)) Unit!29940)

(assert (=> b!876791 (= lt!396746 (addStillNotContains!204 lt!396749 lt!396745 lt!396750 lt!396748))))

(assert (=> b!876791 (= lt!396748 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!876791 (= lt!396750 (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!876791 (= lt!396745 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!876791 (= lt!396749 call!38805)))

(assert (=> b!876791 (= e!488095 (+!2441 call!38805 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!38802 () Bool)

(assert (=> bm!38802 (= call!38805 (getCurrentListMapNoExtraKeys!3167 _keys!868 lt!396666 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!876792 () Bool)

(declare-fun e!488099 () ListLongMap!10379)

(assert (=> b!876792 (= e!488099 (ListLongMap!10380 Nil!17474))))

(declare-fun b!876793 () Bool)

(declare-fun e!488101 () Bool)

(assert (=> b!876793 (= e!488101 e!488097)))

(declare-fun c!92561 () Bool)

(assert (=> b!876793 (= c!92561 e!488098)))

(declare-fun res!595875 () Bool)

(assert (=> b!876793 (=> (not res!595875) (not e!488098))))

(assert (=> b!876793 (= res!595875 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24945 _keys!868)))))

(declare-fun b!876794 () Bool)

(declare-fun res!595877 () Bool)

(assert (=> b!876794 (=> (not res!595877) (not e!488101))))

(assert (=> b!876794 (= res!595877 (not (contains!4245 lt!396744 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!876788 () Bool)

(assert (=> b!876788 (= e!488096 (= lt!396744 (getCurrentListMapNoExtraKeys!3167 _keys!868 lt!396666 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun d!108563 () Bool)

(assert (=> d!108563 e!488101))

(declare-fun res!595874 () Bool)

(assert (=> d!108563 (=> (not res!595874) (not e!488101))))

(assert (=> d!108563 (= res!595874 (not (contains!4245 lt!396744 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108563 (= lt!396744 e!488099)))

(declare-fun c!92564 () Bool)

(assert (=> d!108563 (= c!92564 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24945 _keys!868)))))

(assert (=> d!108563 (validMask!0 mask!1196)))

(assert (=> d!108563 (= (getCurrentListMapNoExtraKeys!3167 _keys!868 lt!396666 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!396744)))

(declare-fun b!876795 () Bool)

(assert (=> b!876795 (= e!488097 e!488096)))

(declare-fun c!92562 () Bool)

(assert (=> b!876795 (= c!92562 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24945 _keys!868)))))

(declare-fun b!876796 () Bool)

(assert (=> b!876796 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24945 _keys!868)))))

(assert (=> b!876796 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24946 lt!396666)))))

(declare-fun apply!377 (ListLongMap!10379 (_ BitVec 64)) V!28283)

(assert (=> b!876796 (= e!488100 (= (apply!377 lt!396744 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!876797 () Bool)

(assert (=> b!876797 (= e!488099 e!488095)))

(declare-fun c!92563 () Bool)

(assert (=> b!876797 (= c!92563 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (= (and d!108563 c!92564) b!876792))

(assert (= (and d!108563 (not c!92564)) b!876797))

(assert (= (and b!876797 c!92563) b!876791))

(assert (= (and b!876797 (not c!92563)) b!876790))

(assert (= (or b!876791 b!876790) bm!38802))

(assert (= (and d!108563 res!595874) b!876794))

(assert (= (and b!876794 res!595877) b!876793))

(assert (= (and b!876793 res!595875) b!876786))

(assert (= (and b!876793 c!92561) b!876787))

(assert (= (and b!876793 (not c!92561)) b!876795))

(assert (= (and b!876787 res!595876) b!876796))

(assert (= (and b!876795 c!92562) b!876788))

(assert (= (and b!876795 (not c!92562)) b!876789))

(declare-fun b_lambda!12287 () Bool)

(assert (=> (not b_lambda!12287) (not b!876791)))

(assert (=> b!876791 t!24571))

(declare-fun b_and!25045 () Bool)

(assert (= b_and!25039 (and (=> t!24571 result!9513) b_and!25045)))

(declare-fun b_lambda!12289 () Bool)

(assert (=> (not b_lambda!12289) (not b!876796)))

(assert (=> b!876796 t!24571))

(declare-fun b_and!25047 () Bool)

(assert (= b_and!25045 (and (=> t!24571 result!9513) b_and!25047)))

(declare-fun m!816769 () Bool)

(assert (=> b!876787 m!816769))

(assert (=> b!876787 m!816769))

(declare-fun m!816771 () Bool)

(assert (=> b!876787 m!816771))

(declare-fun m!816773 () Bool)

(assert (=> b!876794 m!816773))

(declare-fun m!816775 () Bool)

(assert (=> b!876789 m!816775))

(declare-fun m!816777 () Bool)

(assert (=> b!876791 m!816777))

(declare-fun m!816779 () Bool)

(assert (=> b!876791 m!816779))

(assert (=> b!876791 m!816603))

(declare-fun m!816781 () Bool)

(assert (=> b!876791 m!816781))

(assert (=> b!876791 m!816779))

(declare-fun m!816783 () Bool)

(assert (=> b!876791 m!816783))

(assert (=> b!876791 m!816783))

(declare-fun m!816785 () Bool)

(assert (=> b!876791 m!816785))

(assert (=> b!876791 m!816603))

(assert (=> b!876791 m!816769))

(declare-fun m!816787 () Bool)

(assert (=> b!876791 m!816787))

(declare-fun m!816789 () Bool)

(assert (=> b!876788 m!816789))

(assert (=> b!876796 m!816779))

(assert (=> b!876796 m!816603))

(assert (=> b!876796 m!816781))

(assert (=> b!876796 m!816779))

(assert (=> b!876796 m!816769))

(declare-fun m!816791 () Bool)

(assert (=> b!876796 m!816791))

(assert (=> b!876796 m!816603))

(assert (=> b!876796 m!816769))

(assert (=> bm!38802 m!816789))

(assert (=> b!876797 m!816769))

(assert (=> b!876797 m!816769))

(declare-fun m!816793 () Bool)

(assert (=> b!876797 m!816793))

(declare-fun m!816795 () Bool)

(assert (=> d!108563 m!816795))

(assert (=> d!108563 m!816611))

(assert (=> b!876786 m!816769))

(assert (=> b!876786 m!816769))

(assert (=> b!876786 m!816793))

(assert (=> b!876663 d!108563))

(declare-fun d!108565 () Bool)

(assert (=> d!108565 (= (array_inv!19302 _keys!868) (bvsge (size!24945 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!74468 d!108565))

(declare-fun d!108567 () Bool)

(assert (=> d!108567 (= (array_inv!19303 _values!688) (bvsge (size!24946 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!74468 d!108567))

(declare-fun d!108569 () Bool)

(assert (=> d!108569 (= (validKeyInArray!0 (select (arr!24504 _keys!868) from!1053)) (and (not (= (select (arr!24504 _keys!868) from!1053) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!24504 _keys!868) from!1053) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!876670 d!108569))

(declare-fun b!876804 () Bool)

(declare-fun e!488107 () Bool)

(declare-fun e!488106 () Bool)

(assert (=> b!876804 (= e!488107 e!488106)))

(declare-fun c!92567 () Bool)

(assert (=> b!876804 (= c!92567 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun call!38811 () ListLongMap!10379)

(declare-fun bm!38807 () Bool)

(assert (=> bm!38807 (= call!38811 (getCurrentListMapNoExtraKeys!3167 _keys!868 (array!50965 (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) (size!24946 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38808 () Bool)

(declare-fun call!38810 () ListLongMap!10379)

(assert (=> bm!38808 (= call!38810 (getCurrentListMapNoExtraKeys!3167 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876805 () Bool)

(assert (=> b!876805 (= e!488106 (= call!38811 (+!2441 call!38810 (tuple2!11597 k0!854 v!557))))))

(declare-fun d!108571 () Bool)

(assert (=> d!108571 e!488107))

(declare-fun res!595880 () Bool)

(assert (=> d!108571 (=> (not res!595880) (not e!488107))))

(assert (=> d!108571 (= res!595880 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612)) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24946 _values!688)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24946 _values!688))))))))

(declare-fun lt!396753 () Unit!29940)

(declare-fun choose!1439 (array!50962 array!50964 (_ BitVec 32) (_ BitVec 32) V!28283 V!28283 (_ BitVec 32) (_ BitVec 64) V!28283 (_ BitVec 32) Int) Unit!29940)

(assert (=> d!108571 (= lt!396753 (choose!1439 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> d!108571 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24945 _keys!868)))))

(assert (=> d!108571 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!673 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!396753)))

(declare-fun b!876806 () Bool)

(assert (=> b!876806 (= e!488106 (= call!38811 call!38810))))

(assert (= (and d!108571 res!595880) b!876804))

(assert (= (and b!876804 c!92567) b!876805))

(assert (= (and b!876804 (not c!92567)) b!876806))

(assert (= (or b!876805 b!876806) bm!38808))

(assert (= (or b!876805 b!876806) bm!38807))

(assert (=> bm!38807 m!816599))

(declare-fun m!816797 () Bool)

(assert (=> bm!38807 m!816797))

(assert (=> bm!38808 m!816625))

(declare-fun m!816799 () Bool)

(assert (=> b!876805 m!816799))

(declare-fun m!816801 () Bool)

(assert (=> d!108571 m!816801))

(assert (=> b!876670 d!108571))

(declare-fun d!108573 () Bool)

(declare-fun res!595885 () Bool)

(declare-fun e!488116 () Bool)

(assert (=> d!108573 (=> res!595885 e!488116)))

(assert (=> d!108573 (= res!595885 (bvsge #b00000000000000000000000000000000 (size!24945 _keys!868)))))

(assert (=> d!108573 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!488116)))

(declare-fun b!876815 () Bool)

(declare-fun e!488114 () Bool)

(declare-fun e!488115 () Bool)

(assert (=> b!876815 (= e!488114 e!488115)))

(declare-fun lt!396761 () (_ BitVec 64))

(assert (=> b!876815 (= lt!396761 (select (arr!24504 _keys!868) #b00000000000000000000000000000000))))

(declare-fun lt!396760 () Unit!29940)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!50962 (_ BitVec 64) (_ BitVec 32)) Unit!29940)

(assert (=> b!876815 (= lt!396760 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!396761 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!50962 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!876815 (arrayContainsKey!0 _keys!868 lt!396761 #b00000000000000000000000000000000)))

(declare-fun lt!396762 () Unit!29940)

(assert (=> b!876815 (= lt!396762 lt!396760)))

(declare-fun res!595886 () Bool)

(declare-datatypes ((SeekEntryResult!8742 0))(
  ( (MissingZero!8742 (index!37338 (_ BitVec 32))) (Found!8742 (index!37339 (_ BitVec 32))) (Intermediate!8742 (undefined!9554 Bool) (index!37340 (_ BitVec 32)) (x!74288 (_ BitVec 32))) (Undefined!8742) (MissingVacant!8742 (index!37341 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!50962 (_ BitVec 32)) SeekEntryResult!8742)

(assert (=> b!876815 (= res!595886 (= (seekEntryOrOpen!0 (select (arr!24504 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8742 #b00000000000000000000000000000000)))))

(assert (=> b!876815 (=> (not res!595886) (not e!488115))))

(declare-fun b!876816 () Bool)

(assert (=> b!876816 (= e!488116 e!488114)))

(declare-fun c!92570 () Bool)

(assert (=> b!876816 (= c!92570 (validKeyInArray!0 (select (arr!24504 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun bm!38811 () Bool)

(declare-fun call!38814 () Bool)

(assert (=> bm!38811 (= call!38814 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(declare-fun b!876817 () Bool)

(assert (=> b!876817 (= e!488115 call!38814)))

(declare-fun b!876818 () Bool)

(assert (=> b!876818 (= e!488114 call!38814)))

(assert (= (and d!108573 (not res!595885)) b!876816))

(assert (= (and b!876816 c!92570) b!876815))

(assert (= (and b!876816 (not c!92570)) b!876818))

(assert (= (and b!876815 res!595886) b!876817))

(assert (= (or b!876817 b!876818) bm!38811))

(assert (=> b!876815 m!816687))

(declare-fun m!816803 () Bool)

(assert (=> b!876815 m!816803))

(declare-fun m!816805 () Bool)

(assert (=> b!876815 m!816805))

(assert (=> b!876815 m!816687))

(declare-fun m!816807 () Bool)

(assert (=> b!876815 m!816807))

(assert (=> b!876816 m!816687))

(assert (=> b!876816 m!816687))

(assert (=> b!876816 m!816693))

(declare-fun m!816809 () Bool)

(assert (=> bm!38811 m!816809))

(assert (=> b!876672 d!108573))

(declare-fun b!876819 () Bool)

(declare-fun e!488120 () Bool)

(assert (=> b!876819 (= e!488120 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!876819 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!876820 () Bool)

(declare-fun e!488119 () Bool)

(declare-fun e!488122 () Bool)

(assert (=> b!876820 (= e!488119 e!488122)))

(assert (=> b!876820 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24945 _keys!868)))))

(declare-fun lt!396763 () ListLongMap!10379)

(declare-fun res!595889 () Bool)

(assert (=> b!876820 (= res!595889 (contains!4245 lt!396763 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!876820 (=> (not res!595889) (not e!488122))))

(declare-fun b!876822 () Bool)

(declare-fun e!488118 () Bool)

(assert (=> b!876822 (= e!488118 (isEmpty!668 lt!396763))))

(declare-fun b!876823 () Bool)

(declare-fun e!488117 () ListLongMap!10379)

(declare-fun call!38815 () ListLongMap!10379)

(assert (=> b!876823 (= e!488117 call!38815)))

(declare-fun b!876824 () Bool)

(declare-fun lt!396766 () Unit!29940)

(declare-fun lt!396765 () Unit!29940)

(assert (=> b!876824 (= lt!396766 lt!396765)))

(declare-fun lt!396768 () ListLongMap!10379)

(declare-fun lt!396769 () V!28283)

(declare-fun lt!396767 () (_ BitVec 64))

(declare-fun lt!396764 () (_ BitVec 64))

(assert (=> b!876824 (not (contains!4245 (+!2441 lt!396768 (tuple2!11597 lt!396764 lt!396769)) lt!396767))))

(assert (=> b!876824 (= lt!396765 (addStillNotContains!204 lt!396768 lt!396764 lt!396769 lt!396767))))

(assert (=> b!876824 (= lt!396767 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!876824 (= lt!396769 (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!876824 (= lt!396764 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!876824 (= lt!396768 call!38815)))

(assert (=> b!876824 (= e!488117 (+!2441 call!38815 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!38812 () Bool)

(assert (=> bm!38812 (= call!38815 (getCurrentListMapNoExtraKeys!3167 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!876825 () Bool)

(declare-fun e!488121 () ListLongMap!10379)

(assert (=> b!876825 (= e!488121 (ListLongMap!10380 Nil!17474))))

(declare-fun b!876826 () Bool)

(declare-fun e!488123 () Bool)

(assert (=> b!876826 (= e!488123 e!488119)))

(declare-fun c!92571 () Bool)

(assert (=> b!876826 (= c!92571 e!488120)))

(declare-fun res!595888 () Bool)

(assert (=> b!876826 (=> (not res!595888) (not e!488120))))

(assert (=> b!876826 (= res!595888 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24945 _keys!868)))))

(declare-fun b!876827 () Bool)

(declare-fun res!595890 () Bool)

(assert (=> b!876827 (=> (not res!595890) (not e!488123))))

(assert (=> b!876827 (= res!595890 (not (contains!4245 lt!396763 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!876821 () Bool)

(assert (=> b!876821 (= e!488118 (= lt!396763 (getCurrentListMapNoExtraKeys!3167 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun d!108575 () Bool)

(assert (=> d!108575 e!488123))

(declare-fun res!595887 () Bool)

(assert (=> d!108575 (=> (not res!595887) (not e!488123))))

(assert (=> d!108575 (= res!595887 (not (contains!4245 lt!396763 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108575 (= lt!396763 e!488121)))

(declare-fun c!92574 () Bool)

(assert (=> d!108575 (= c!92574 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24945 _keys!868)))))

(assert (=> d!108575 (validMask!0 mask!1196)))

(assert (=> d!108575 (= (getCurrentListMapNoExtraKeys!3167 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!396763)))

(declare-fun b!876828 () Bool)

(assert (=> b!876828 (= e!488119 e!488118)))

(declare-fun c!92572 () Bool)

(assert (=> b!876828 (= c!92572 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24945 _keys!868)))))

(declare-fun b!876829 () Bool)

(assert (=> b!876829 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24945 _keys!868)))))

(assert (=> b!876829 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24946 _values!688)))))

(assert (=> b!876829 (= e!488122 (= (apply!377 lt!396763 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!876830 () Bool)

(assert (=> b!876830 (= e!488121 e!488117)))

(declare-fun c!92573 () Bool)

(assert (=> b!876830 (= c!92573 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (= (and d!108575 c!92574) b!876825))

(assert (= (and d!108575 (not c!92574)) b!876830))

(assert (= (and b!876830 c!92573) b!876824))

(assert (= (and b!876830 (not c!92573)) b!876823))

(assert (= (or b!876824 b!876823) bm!38812))

(assert (= (and d!108575 res!595887) b!876827))

(assert (= (and b!876827 res!595890) b!876826))

(assert (= (and b!876826 res!595888) b!876819))

(assert (= (and b!876826 c!92571) b!876820))

(assert (= (and b!876826 (not c!92571)) b!876828))

(assert (= (and b!876820 res!595889) b!876829))

(assert (= (and b!876828 c!92572) b!876821))

(assert (= (and b!876828 (not c!92572)) b!876822))

(declare-fun b_lambda!12291 () Bool)

(assert (=> (not b_lambda!12291) (not b!876824)))

(assert (=> b!876824 t!24571))

(declare-fun b_and!25049 () Bool)

(assert (= b_and!25047 (and (=> t!24571 result!9513) b_and!25049)))

(declare-fun b_lambda!12293 () Bool)

(assert (=> (not b_lambda!12293) (not b!876829)))

(assert (=> b!876829 t!24571))

(declare-fun b_and!25051 () Bool)

(assert (= b_and!25049 (and (=> t!24571 result!9513) b_and!25051)))

(assert (=> b!876820 m!816769))

(assert (=> b!876820 m!816769))

(declare-fun m!816811 () Bool)

(assert (=> b!876820 m!816811))

(declare-fun m!816813 () Bool)

(assert (=> b!876827 m!816813))

(declare-fun m!816815 () Bool)

(assert (=> b!876822 m!816815))

(declare-fun m!816817 () Bool)

(assert (=> b!876824 m!816817))

(declare-fun m!816819 () Bool)

(assert (=> b!876824 m!816819))

(assert (=> b!876824 m!816603))

(declare-fun m!816821 () Bool)

(assert (=> b!876824 m!816821))

(assert (=> b!876824 m!816819))

(declare-fun m!816823 () Bool)

(assert (=> b!876824 m!816823))

(assert (=> b!876824 m!816823))

(declare-fun m!816825 () Bool)

(assert (=> b!876824 m!816825))

(assert (=> b!876824 m!816603))

(assert (=> b!876824 m!816769))

(declare-fun m!816827 () Bool)

(assert (=> b!876824 m!816827))

(declare-fun m!816829 () Bool)

(assert (=> b!876821 m!816829))

(assert (=> b!876829 m!816819))

(assert (=> b!876829 m!816603))

(assert (=> b!876829 m!816821))

(assert (=> b!876829 m!816819))

(assert (=> b!876829 m!816769))

(declare-fun m!816831 () Bool)

(assert (=> b!876829 m!816831))

(assert (=> b!876829 m!816603))

(assert (=> b!876829 m!816769))

(assert (=> bm!38812 m!816829))

(assert (=> b!876830 m!816769))

(assert (=> b!876830 m!816769))

(assert (=> b!876830 m!816793))

(declare-fun m!816833 () Bool)

(assert (=> d!108575 m!816833))

(assert (=> d!108575 m!816611))

(assert (=> b!876819 m!816769))

(assert (=> b!876819 m!816769))

(assert (=> b!876819 m!816793))

(assert (=> bm!38789 d!108575))

(declare-fun d!108577 () Bool)

(declare-fun e!488124 () Bool)

(assert (=> d!108577 e!488124))

(declare-fun res!595892 () Bool)

(assert (=> d!108577 (=> (not res!595892) (not e!488124))))

(declare-fun lt!396772 () ListLongMap!10379)

(assert (=> d!108577 (= res!595892 (contains!4245 lt!396772 (_1!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun lt!396770 () List!17477)

(assert (=> d!108577 (= lt!396772 (ListLongMap!10380 lt!396770))))

(declare-fun lt!396771 () Unit!29940)

(declare-fun lt!396773 () Unit!29940)

(assert (=> d!108577 (= lt!396771 lt!396773)))

(assert (=> d!108577 (= (getValueByKey!418 lt!396770 (_1!5808 (tuple2!11597 k0!854 v!557))) (Some!423 (_2!5808 (tuple2!11597 k0!854 v!557))))))

(assert (=> d!108577 (= lt!396773 (lemmaContainsTupThenGetReturnValue!234 lt!396770 (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557))))))

(assert (=> d!108577 (= lt!396770 (insertStrictlySorted!272 (toList!5205 call!38792) (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557))))))

(assert (=> d!108577 (= (+!2441 call!38792 (tuple2!11597 k0!854 v!557)) lt!396772)))

(declare-fun b!876831 () Bool)

(declare-fun res!595891 () Bool)

(assert (=> b!876831 (=> (not res!595891) (not e!488124))))

(assert (=> b!876831 (= res!595891 (= (getValueByKey!418 (toList!5205 lt!396772) (_1!5808 (tuple2!11597 k0!854 v!557))) (Some!423 (_2!5808 (tuple2!11597 k0!854 v!557)))))))

(declare-fun b!876832 () Bool)

(assert (=> b!876832 (= e!488124 (contains!4246 (toList!5205 lt!396772) (tuple2!11597 k0!854 v!557)))))

(assert (= (and d!108577 res!595892) b!876831))

(assert (= (and b!876831 res!595891) b!876832))

(declare-fun m!816835 () Bool)

(assert (=> d!108577 m!816835))

(declare-fun m!816837 () Bool)

(assert (=> d!108577 m!816837))

(declare-fun m!816839 () Bool)

(assert (=> d!108577 m!816839))

(declare-fun m!816841 () Bool)

(assert (=> d!108577 m!816841))

(declare-fun m!816843 () Bool)

(assert (=> b!876831 m!816843))

(declare-fun m!816845 () Bool)

(assert (=> b!876832 m!816845))

(assert (=> b!876674 d!108577))

(declare-fun b!876833 () Bool)

(declare-fun e!488128 () Bool)

(assert (=> b!876833 (= e!488128 (validKeyInArray!0 (select (arr!24504 _keys!868) from!1053)))))

(assert (=> b!876833 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!876834 () Bool)

(declare-fun e!488127 () Bool)

(declare-fun e!488130 () Bool)

(assert (=> b!876834 (= e!488127 e!488130)))

(assert (=> b!876834 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24945 _keys!868)))))

(declare-fun lt!396774 () ListLongMap!10379)

(declare-fun res!595895 () Bool)

(assert (=> b!876834 (= res!595895 (contains!4245 lt!396774 (select (arr!24504 _keys!868) from!1053)))))

(assert (=> b!876834 (=> (not res!595895) (not e!488130))))

(declare-fun b!876836 () Bool)

(declare-fun e!488126 () Bool)

(assert (=> b!876836 (= e!488126 (isEmpty!668 lt!396774))))

(declare-fun b!876837 () Bool)

(declare-fun e!488125 () ListLongMap!10379)

(declare-fun call!38816 () ListLongMap!10379)

(assert (=> b!876837 (= e!488125 call!38816)))

(declare-fun b!876838 () Bool)

(declare-fun lt!396777 () Unit!29940)

(declare-fun lt!396776 () Unit!29940)

(assert (=> b!876838 (= lt!396777 lt!396776)))

(declare-fun lt!396779 () ListLongMap!10379)

(declare-fun lt!396778 () (_ BitVec 64))

(declare-fun lt!396780 () V!28283)

(declare-fun lt!396775 () (_ BitVec 64))

(assert (=> b!876838 (not (contains!4245 (+!2441 lt!396779 (tuple2!11597 lt!396775 lt!396780)) lt!396778))))

(assert (=> b!876838 (= lt!396776 (addStillNotContains!204 lt!396779 lt!396775 lt!396780 lt!396778))))

(assert (=> b!876838 (= lt!396778 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!876838 (= lt!396780 (get!12905 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!876838 (= lt!396775 (select (arr!24504 _keys!868) from!1053))))

(assert (=> b!876838 (= lt!396779 call!38816)))

(assert (=> b!876838 (= e!488125 (+!2441 call!38816 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!38813 () Bool)

(assert (=> bm!38813 (= call!38816 (getCurrentListMapNoExtraKeys!3167 _keys!868 lt!396666 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!876839 () Bool)

(declare-fun e!488129 () ListLongMap!10379)

(assert (=> b!876839 (= e!488129 (ListLongMap!10380 Nil!17474))))

(declare-fun b!876840 () Bool)

(declare-fun e!488131 () Bool)

(assert (=> b!876840 (= e!488131 e!488127)))

(declare-fun c!92575 () Bool)

(assert (=> b!876840 (= c!92575 e!488128)))

(declare-fun res!595894 () Bool)

(assert (=> b!876840 (=> (not res!595894) (not e!488128))))

(assert (=> b!876840 (= res!595894 (bvslt from!1053 (size!24945 _keys!868)))))

(declare-fun b!876841 () Bool)

(declare-fun res!595896 () Bool)

(assert (=> b!876841 (=> (not res!595896) (not e!488131))))

(assert (=> b!876841 (= res!595896 (not (contains!4245 lt!396774 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!876835 () Bool)

(assert (=> b!876835 (= e!488126 (= lt!396774 (getCurrentListMapNoExtraKeys!3167 _keys!868 lt!396666 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun d!108579 () Bool)

(assert (=> d!108579 e!488131))

(declare-fun res!595893 () Bool)

(assert (=> d!108579 (=> (not res!595893) (not e!488131))))

(assert (=> d!108579 (= res!595893 (not (contains!4245 lt!396774 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108579 (= lt!396774 e!488129)))

(declare-fun c!92578 () Bool)

(assert (=> d!108579 (= c!92578 (bvsge from!1053 (size!24945 _keys!868)))))

(assert (=> d!108579 (validMask!0 mask!1196)))

(assert (=> d!108579 (= (getCurrentListMapNoExtraKeys!3167 _keys!868 lt!396666 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!396774)))

(declare-fun b!876842 () Bool)

(assert (=> b!876842 (= e!488127 e!488126)))

(declare-fun c!92576 () Bool)

(assert (=> b!876842 (= c!92576 (bvslt from!1053 (size!24945 _keys!868)))))

(declare-fun b!876843 () Bool)

(assert (=> b!876843 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24945 _keys!868)))))

(assert (=> b!876843 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24946 lt!396666)))))

(assert (=> b!876843 (= e!488130 (= (apply!377 lt!396774 (select (arr!24504 _keys!868) from!1053)) (get!12905 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!876844 () Bool)

(assert (=> b!876844 (= e!488129 e!488125)))

(declare-fun c!92577 () Bool)

(assert (=> b!876844 (= c!92577 (validKeyInArray!0 (select (arr!24504 _keys!868) from!1053)))))

(assert (= (and d!108579 c!92578) b!876839))

(assert (= (and d!108579 (not c!92578)) b!876844))

(assert (= (and b!876844 c!92577) b!876838))

(assert (= (and b!876844 (not c!92577)) b!876837))

(assert (= (or b!876838 b!876837) bm!38813))

(assert (= (and d!108579 res!595893) b!876841))

(assert (= (and b!876841 res!595896) b!876840))

(assert (= (and b!876840 res!595894) b!876833))

(assert (= (and b!876840 c!92575) b!876834))

(assert (= (and b!876840 (not c!92575)) b!876842))

(assert (= (and b!876834 res!595895) b!876843))

(assert (= (and b!876842 c!92576) b!876835))

(assert (= (and b!876842 (not c!92576)) b!876836))

(declare-fun b_lambda!12295 () Bool)

(assert (=> (not b_lambda!12295) (not b!876838)))

(assert (=> b!876838 t!24571))

(declare-fun b_and!25053 () Bool)

(assert (= b_and!25051 (and (=> t!24571 result!9513) b_and!25053)))

(declare-fun b_lambda!12297 () Bool)

(assert (=> (not b_lambda!12297) (not b!876843)))

(assert (=> b!876843 t!24571))

(declare-fun b_and!25055 () Bool)

(assert (= b_and!25053 (and (=> t!24571 result!9513) b_and!25055)))

(assert (=> b!876834 m!816575))

(assert (=> b!876834 m!816575))

(declare-fun m!816847 () Bool)

(assert (=> b!876834 m!816847))

(declare-fun m!816849 () Bool)

(assert (=> b!876841 m!816849))

(declare-fun m!816851 () Bool)

(assert (=> b!876836 m!816851))

(declare-fun m!816853 () Bool)

(assert (=> b!876838 m!816853))

(declare-fun m!816855 () Bool)

(assert (=> b!876838 m!816855))

(assert (=> b!876838 m!816603))

(declare-fun m!816857 () Bool)

(assert (=> b!876838 m!816857))

(assert (=> b!876838 m!816855))

(declare-fun m!816859 () Bool)

(assert (=> b!876838 m!816859))

(assert (=> b!876838 m!816859))

(declare-fun m!816861 () Bool)

(assert (=> b!876838 m!816861))

(assert (=> b!876838 m!816603))

(assert (=> b!876838 m!816575))

(declare-fun m!816863 () Bool)

(assert (=> b!876838 m!816863))

(declare-fun m!816865 () Bool)

(assert (=> b!876835 m!816865))

(assert (=> b!876843 m!816855))

(assert (=> b!876843 m!816603))

(assert (=> b!876843 m!816857))

(assert (=> b!876843 m!816855))

(assert (=> b!876843 m!816575))

(declare-fun m!816867 () Bool)

(assert (=> b!876843 m!816867))

(assert (=> b!876843 m!816603))

(assert (=> b!876843 m!816575))

(assert (=> bm!38813 m!816865))

(assert (=> b!876844 m!816575))

(assert (=> b!876844 m!816575))

(assert (=> b!876844 m!816577))

(declare-fun m!816869 () Bool)

(assert (=> d!108579 m!816869))

(assert (=> d!108579 m!816611))

(assert (=> b!876833 m!816575))

(assert (=> b!876833 m!816575))

(assert (=> b!876833 m!816577))

(assert (=> b!876662 d!108579))

(declare-fun b!876845 () Bool)

(declare-fun e!488135 () Bool)

(assert (=> b!876845 (= e!488135 (validKeyInArray!0 (select (arr!24504 _keys!868) from!1053)))))

(assert (=> b!876845 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!876846 () Bool)

(declare-fun e!488134 () Bool)

(declare-fun e!488137 () Bool)

(assert (=> b!876846 (= e!488134 e!488137)))

(assert (=> b!876846 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24945 _keys!868)))))

(declare-fun lt!396781 () ListLongMap!10379)

(declare-fun res!595899 () Bool)

(assert (=> b!876846 (= res!595899 (contains!4245 lt!396781 (select (arr!24504 _keys!868) from!1053)))))

(assert (=> b!876846 (=> (not res!595899) (not e!488137))))

(declare-fun b!876848 () Bool)

(declare-fun e!488133 () Bool)

(assert (=> b!876848 (= e!488133 (isEmpty!668 lt!396781))))

(declare-fun b!876849 () Bool)

(declare-fun e!488132 () ListLongMap!10379)

(declare-fun call!38817 () ListLongMap!10379)

(assert (=> b!876849 (= e!488132 call!38817)))

(declare-fun b!876850 () Bool)

(declare-fun lt!396784 () Unit!29940)

(declare-fun lt!396783 () Unit!29940)

(assert (=> b!876850 (= lt!396784 lt!396783)))

(declare-fun lt!396786 () ListLongMap!10379)

(declare-fun lt!396785 () (_ BitVec 64))

(declare-fun lt!396787 () V!28283)

(declare-fun lt!396782 () (_ BitVec 64))

(assert (=> b!876850 (not (contains!4245 (+!2441 lt!396786 (tuple2!11597 lt!396782 lt!396787)) lt!396785))))

(assert (=> b!876850 (= lt!396783 (addStillNotContains!204 lt!396786 lt!396782 lt!396787 lt!396785))))

(assert (=> b!876850 (= lt!396785 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!876850 (= lt!396787 (get!12905 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!876850 (= lt!396782 (select (arr!24504 _keys!868) from!1053))))

(assert (=> b!876850 (= lt!396786 call!38817)))

(assert (=> b!876850 (= e!488132 (+!2441 call!38817 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!38814 () Bool)

(assert (=> bm!38814 (= call!38817 (getCurrentListMapNoExtraKeys!3167 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!876851 () Bool)

(declare-fun e!488136 () ListLongMap!10379)

(assert (=> b!876851 (= e!488136 (ListLongMap!10380 Nil!17474))))

(declare-fun b!876852 () Bool)

(declare-fun e!488138 () Bool)

(assert (=> b!876852 (= e!488138 e!488134)))

(declare-fun c!92579 () Bool)

(assert (=> b!876852 (= c!92579 e!488135)))

(declare-fun res!595898 () Bool)

(assert (=> b!876852 (=> (not res!595898) (not e!488135))))

(assert (=> b!876852 (= res!595898 (bvslt from!1053 (size!24945 _keys!868)))))

(declare-fun b!876853 () Bool)

(declare-fun res!595900 () Bool)

(assert (=> b!876853 (=> (not res!595900) (not e!488138))))

(assert (=> b!876853 (= res!595900 (not (contains!4245 lt!396781 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!876847 () Bool)

(assert (=> b!876847 (= e!488133 (= lt!396781 (getCurrentListMapNoExtraKeys!3167 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun d!108581 () Bool)

(assert (=> d!108581 e!488138))

(declare-fun res!595897 () Bool)

(assert (=> d!108581 (=> (not res!595897) (not e!488138))))

(assert (=> d!108581 (= res!595897 (not (contains!4245 lt!396781 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108581 (= lt!396781 e!488136)))

(declare-fun c!92582 () Bool)

(assert (=> d!108581 (= c!92582 (bvsge from!1053 (size!24945 _keys!868)))))

(assert (=> d!108581 (validMask!0 mask!1196)))

(assert (=> d!108581 (= (getCurrentListMapNoExtraKeys!3167 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!396781)))

(declare-fun b!876854 () Bool)

(assert (=> b!876854 (= e!488134 e!488133)))

(declare-fun c!92580 () Bool)

(assert (=> b!876854 (= c!92580 (bvslt from!1053 (size!24945 _keys!868)))))

(declare-fun b!876855 () Bool)

(assert (=> b!876855 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24945 _keys!868)))))

(assert (=> b!876855 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24946 _values!688)))))

(assert (=> b!876855 (= e!488137 (= (apply!377 lt!396781 (select (arr!24504 _keys!868) from!1053)) (get!12905 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!876856 () Bool)

(assert (=> b!876856 (= e!488136 e!488132)))

(declare-fun c!92581 () Bool)

(assert (=> b!876856 (= c!92581 (validKeyInArray!0 (select (arr!24504 _keys!868) from!1053)))))

(assert (= (and d!108581 c!92582) b!876851))

(assert (= (and d!108581 (not c!92582)) b!876856))

(assert (= (and b!876856 c!92581) b!876850))

(assert (= (and b!876856 (not c!92581)) b!876849))

(assert (= (or b!876850 b!876849) bm!38814))

(assert (= (and d!108581 res!595897) b!876853))

(assert (= (and b!876853 res!595900) b!876852))

(assert (= (and b!876852 res!595898) b!876845))

(assert (= (and b!876852 c!92579) b!876846))

(assert (= (and b!876852 (not c!92579)) b!876854))

(assert (= (and b!876846 res!595899) b!876855))

(assert (= (and b!876854 c!92580) b!876847))

(assert (= (and b!876854 (not c!92580)) b!876848))

(declare-fun b_lambda!12299 () Bool)

(assert (=> (not b_lambda!12299) (not b!876850)))

(assert (=> b!876850 t!24571))

(declare-fun b_and!25057 () Bool)

(assert (= b_and!25055 (and (=> t!24571 result!9513) b_and!25057)))

(declare-fun b_lambda!12301 () Bool)

(assert (=> (not b_lambda!12301) (not b!876855)))

(assert (=> b!876855 t!24571))

(declare-fun b_and!25059 () Bool)

(assert (= b_and!25057 (and (=> t!24571 result!9513) b_and!25059)))

(assert (=> b!876846 m!816575))

(assert (=> b!876846 m!816575))

(declare-fun m!816871 () Bool)

(assert (=> b!876846 m!816871))

(declare-fun m!816873 () Bool)

(assert (=> b!876853 m!816873))

(declare-fun m!816875 () Bool)

(assert (=> b!876848 m!816875))

(declare-fun m!816877 () Bool)

(assert (=> b!876850 m!816877))

(assert (=> b!876850 m!816581))

(assert (=> b!876850 m!816603))

(declare-fun m!816879 () Bool)

(assert (=> b!876850 m!816879))

(assert (=> b!876850 m!816581))

(declare-fun m!816881 () Bool)

(assert (=> b!876850 m!816881))

(assert (=> b!876850 m!816881))

(declare-fun m!816883 () Bool)

(assert (=> b!876850 m!816883))

(assert (=> b!876850 m!816603))

(assert (=> b!876850 m!816575))

(declare-fun m!816885 () Bool)

(assert (=> b!876850 m!816885))

(declare-fun m!816887 () Bool)

(assert (=> b!876847 m!816887))

(assert (=> b!876855 m!816581))

(assert (=> b!876855 m!816603))

(assert (=> b!876855 m!816879))

(assert (=> b!876855 m!816581))

(assert (=> b!876855 m!816575))

(declare-fun m!816889 () Bool)

(assert (=> b!876855 m!816889))

(assert (=> b!876855 m!816603))

(assert (=> b!876855 m!816575))

(assert (=> bm!38814 m!816887))

(assert (=> b!876856 m!816575))

(assert (=> b!876856 m!816575))

(assert (=> b!876856 m!816577))

(declare-fun m!816891 () Bool)

(assert (=> d!108581 m!816891))

(assert (=> d!108581 m!816611))

(assert (=> b!876845 m!816575))

(assert (=> b!876845 m!816575))

(assert (=> b!876845 m!816577))

(assert (=> b!876662 d!108581))

(assert (=> bm!38790 d!108563))

(declare-fun d!108583 () Bool)

(assert (=> d!108583 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!876673 d!108583))

(declare-fun mapNonEmpty!27758 () Bool)

(declare-fun mapRes!27758 () Bool)

(declare-fun tp!53237 () Bool)

(declare-fun e!488144 () Bool)

(assert (=> mapNonEmpty!27758 (= mapRes!27758 (and tp!53237 e!488144))))

(declare-fun mapRest!27758 () (Array (_ BitVec 32) ValueCell!8274))

(declare-fun mapValue!27758 () ValueCell!8274)

(declare-fun mapKey!27758 () (_ BitVec 32))

(assert (=> mapNonEmpty!27758 (= mapRest!27752 (store mapRest!27758 mapKey!27758 mapValue!27758))))

(declare-fun b!876863 () Bool)

(assert (=> b!876863 (= e!488144 tp_is_empty!17427)))

(declare-fun condMapEmpty!27758 () Bool)

(declare-fun mapDefault!27758 () ValueCell!8274)

(assert (=> mapNonEmpty!27752 (= condMapEmpty!27758 (= mapRest!27752 ((as const (Array (_ BitVec 32) ValueCell!8274)) mapDefault!27758)))))

(declare-fun e!488143 () Bool)

(assert (=> mapNonEmpty!27752 (= tp!53228 (and e!488143 mapRes!27758))))

(declare-fun b!876864 () Bool)

(assert (=> b!876864 (= e!488143 tp_is_empty!17427)))

(declare-fun mapIsEmpty!27758 () Bool)

(assert (=> mapIsEmpty!27758 mapRes!27758))

(assert (= (and mapNonEmpty!27752 condMapEmpty!27758) mapIsEmpty!27758))

(assert (= (and mapNonEmpty!27752 (not condMapEmpty!27758)) mapNonEmpty!27758))

(assert (= (and mapNonEmpty!27758 ((_ is ValueCellFull!8274) mapValue!27758)) b!876863))

(assert (= (and mapNonEmpty!27752 ((_ is ValueCellFull!8274) mapDefault!27758)) b!876864))

(declare-fun m!816893 () Bool)

(assert (=> mapNonEmpty!27758 m!816893))

(declare-fun b_lambda!12303 () Bool)

(assert (= b_lambda!12295 (or (and start!74468 b_free!15183) b_lambda!12303)))

(declare-fun b_lambda!12305 () Bool)

(assert (= b_lambda!12291 (or (and start!74468 b_free!15183) b_lambda!12305)))

(declare-fun b_lambda!12307 () Bool)

(assert (= b_lambda!12297 (or (and start!74468 b_free!15183) b_lambda!12307)))

(declare-fun b_lambda!12309 () Bool)

(assert (= b_lambda!12287 (or (and start!74468 b_free!15183) b_lambda!12309)))

(declare-fun b_lambda!12311 () Bool)

(assert (= b_lambda!12289 (or (and start!74468 b_free!15183) b_lambda!12311)))

(declare-fun b_lambda!12313 () Bool)

(assert (= b_lambda!12301 (or (and start!74468 b_free!15183) b_lambda!12313)))

(declare-fun b_lambda!12315 () Bool)

(assert (= b_lambda!12293 (or (and start!74468 b_free!15183) b_lambda!12315)))

(declare-fun b_lambda!12317 () Bool)

(assert (= b_lambda!12299 (or (and start!74468 b_free!15183) b_lambda!12317)))

(check-sat (not b!876746) (not d!108563) (not b!876791) (not b!876820) (not b!876755) (not b!876745) (not b!876737) (not bm!38799) (not b!876845) (not d!108577) (not b!876738) (not b!876834) (not b_lambda!12285) (not b!876850) (not b!876830) (not d!108579) (not b!876759) (not b!876847) (not b!876805) (not b!876853) (not d!108551) (not b!876832) (not b!876789) (not bm!38812) (not d!108557) (not b!876844) (not b!876748) (not b!876855) (not b!876756) (not b_lambda!12311) (not d!108581) (not b!876822) (not bm!38807) (not d!108571) (not bm!38802) (not b_lambda!12309) (not d!108559) (not b!876797) (not b!876758) (not b!876821) b_and!25059 (not b!876846) (not b!876838) (not b_lambda!12303) (not b!876760) (not b!876744) (not b_lambda!12305) (not bm!38814) (not b!876831) (not bm!38813) (not d!108549) (not b!876856) (not b_lambda!12317) (not bm!38811) (not b!876736) (not b!876761) (not b!876841) (not mapNonEmpty!27758) (not b!876788) (not d!108553) (not b!876848) (not b!876747) (not b!876833) (not b_lambda!12315) tp_is_empty!17427 (not bm!38808) (not b!876843) (not b!876819) (not b!876757) (not b!876749) (not b_next!15183) (not b!876836) (not d!108575) (not b!876786) (not b!876835) (not b!876829) (not b_lambda!12313) (not b!876796) (not b!876754) (not b!876787) (not b!876815) (not b!876827) (not d!108547) (not b!876824) (not b!876816) (not b!876794) (not b_lambda!12307))
(check-sat b_and!25059 (not b_next!15183))
(get-model)

(declare-fun d!108585 () Bool)

(assert (=> d!108585 (= (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (and (not (= (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!876819 d!108585))

(declare-fun d!108587 () Bool)

(declare-fun lt!396790 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!393 (List!17477) (InoxSet tuple2!11596))

(assert (=> d!108587 (= lt!396790 (select (content!393 (toList!5205 lt!396724)) lt!396662))))

(declare-fun e!488149 () Bool)

(assert (=> d!108587 (= lt!396790 e!488149)))

(declare-fun res!595906 () Bool)

(assert (=> d!108587 (=> (not res!595906) (not e!488149))))

(assert (=> d!108587 (= res!595906 ((_ is Cons!17473) (toList!5205 lt!396724)))))

(assert (=> d!108587 (= (contains!4246 (toList!5205 lt!396724) lt!396662) lt!396790)))

(declare-fun b!876869 () Bool)

(declare-fun e!488150 () Bool)

(assert (=> b!876869 (= e!488149 e!488150)))

(declare-fun res!595905 () Bool)

(assert (=> b!876869 (=> res!595905 e!488150)))

(assert (=> b!876869 (= res!595905 (= (h!18604 (toList!5205 lt!396724)) lt!396662))))

(declare-fun b!876870 () Bool)

(assert (=> b!876870 (= e!488150 (contains!4246 (t!24572 (toList!5205 lt!396724)) lt!396662))))

(assert (= (and d!108587 res!595906) b!876869))

(assert (= (and b!876869 (not res!595905)) b!876870))

(declare-fun m!816895 () Bool)

(assert (=> d!108587 m!816895))

(declare-fun m!816897 () Bool)

(assert (=> d!108587 m!816897))

(declare-fun m!816899 () Bool)

(assert (=> b!876870 m!816899))

(assert (=> b!876757 d!108587))

(declare-fun b!876871 () Bool)

(declare-fun e!488154 () Bool)

(assert (=> b!876871 (= e!488154 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001))))))

(assert (=> b!876871 (bvsge (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!876872 () Bool)

(declare-fun e!488153 () Bool)

(declare-fun e!488156 () Bool)

(assert (=> b!876872 (= e!488153 e!488156)))

(assert (=> b!876872 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(declare-fun res!595909 () Bool)

(declare-fun lt!396791 () ListLongMap!10379)

(assert (=> b!876872 (= res!595909 (contains!4245 lt!396791 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001))))))

(assert (=> b!876872 (=> (not res!595909) (not e!488156))))

(declare-fun b!876874 () Bool)

(declare-fun e!488152 () Bool)

(assert (=> b!876874 (= e!488152 (isEmpty!668 lt!396791))))

(declare-fun b!876875 () Bool)

(declare-fun e!488151 () ListLongMap!10379)

(declare-fun call!38818 () ListLongMap!10379)

(assert (=> b!876875 (= e!488151 call!38818)))

(declare-fun b!876876 () Bool)

(declare-fun lt!396794 () Unit!29940)

(declare-fun lt!396793 () Unit!29940)

(assert (=> b!876876 (= lt!396794 lt!396793)))

(declare-fun lt!396797 () V!28283)

(declare-fun lt!396796 () ListLongMap!10379)

(declare-fun lt!396795 () (_ BitVec 64))

(declare-fun lt!396792 () (_ BitVec 64))

(assert (=> b!876876 (not (contains!4245 (+!2441 lt!396796 (tuple2!11597 lt!396792 lt!396797)) lt!396795))))

(assert (=> b!876876 (= lt!396793 (addStillNotContains!204 lt!396796 lt!396792 lt!396797 lt!396795))))

(assert (=> b!876876 (= lt!396795 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!876876 (= lt!396797 (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!876876 (= lt!396792 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001)))))

(assert (=> b!876876 (= lt!396796 call!38818)))

(assert (=> b!876876 (= e!488151 (+!2441 call!38818 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001)) (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!38815 () Bool)

(assert (=> bm!38815 (= call!38818 (getCurrentListMapNoExtraKeys!3167 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!876877 () Bool)

(declare-fun e!488155 () ListLongMap!10379)

(assert (=> b!876877 (= e!488155 (ListLongMap!10380 Nil!17474))))

(declare-fun b!876878 () Bool)

(declare-fun e!488157 () Bool)

(assert (=> b!876878 (= e!488157 e!488153)))

(declare-fun c!92583 () Bool)

(assert (=> b!876878 (= c!92583 e!488154)))

(declare-fun res!595908 () Bool)

(assert (=> b!876878 (=> (not res!595908) (not e!488154))))

(assert (=> b!876878 (= res!595908 (bvslt (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(declare-fun b!876879 () Bool)

(declare-fun res!595910 () Bool)

(assert (=> b!876879 (=> (not res!595910) (not e!488157))))

(assert (=> b!876879 (= res!595910 (not (contains!4245 lt!396791 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!876873 () Bool)

(assert (=> b!876873 (= e!488152 (= lt!396791 (getCurrentListMapNoExtraKeys!3167 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun d!108589 () Bool)

(assert (=> d!108589 e!488157))

(declare-fun res!595907 () Bool)

(assert (=> d!108589 (=> (not res!595907) (not e!488157))))

(assert (=> d!108589 (= res!595907 (not (contains!4245 lt!396791 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108589 (= lt!396791 e!488155)))

(declare-fun c!92586 () Bool)

(assert (=> d!108589 (= c!92586 (bvsge (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(assert (=> d!108589 (validMask!0 mask!1196)))

(assert (=> d!108589 (= (getCurrentListMapNoExtraKeys!3167 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696) lt!396791)))

(declare-fun b!876880 () Bool)

(assert (=> b!876880 (= e!488153 e!488152)))

(declare-fun c!92584 () Bool)

(assert (=> b!876880 (= c!92584 (bvslt (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(declare-fun b!876881 () Bool)

(assert (=> b!876881 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(assert (=> b!876881 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) (size!24946 _values!688)))))

(assert (=> b!876881 (= e!488156 (= (apply!377 lt!396791 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001))) (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!876882 () Bool)

(assert (=> b!876882 (= e!488155 e!488151)))

(declare-fun c!92585 () Bool)

(assert (=> b!876882 (= c!92585 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001))))))

(assert (= (and d!108589 c!92586) b!876877))

(assert (= (and d!108589 (not c!92586)) b!876882))

(assert (= (and b!876882 c!92585) b!876876))

(assert (= (and b!876882 (not c!92585)) b!876875))

(assert (= (or b!876876 b!876875) bm!38815))

(assert (= (and d!108589 res!595907) b!876879))

(assert (= (and b!876879 res!595910) b!876878))

(assert (= (and b!876878 res!595908) b!876871))

(assert (= (and b!876878 c!92583) b!876872))

(assert (= (and b!876878 (not c!92583)) b!876880))

(assert (= (and b!876872 res!595909) b!876881))

(assert (= (and b!876880 c!92584) b!876873))

(assert (= (and b!876880 (not c!92584)) b!876874))

(declare-fun b_lambda!12319 () Bool)

(assert (=> (not b_lambda!12319) (not b!876876)))

(assert (=> b!876876 t!24571))

(declare-fun b_and!25061 () Bool)

(assert (= b_and!25059 (and (=> t!24571 result!9513) b_and!25061)))

(declare-fun b_lambda!12321 () Bool)

(assert (=> (not b_lambda!12321) (not b!876881)))

(assert (=> b!876881 t!24571))

(declare-fun b_and!25063 () Bool)

(assert (= b_and!25061 (and (=> t!24571 result!9513) b_and!25063)))

(declare-fun m!816901 () Bool)

(assert (=> b!876872 m!816901))

(assert (=> b!876872 m!816901))

(declare-fun m!816903 () Bool)

(assert (=> b!876872 m!816903))

(declare-fun m!816905 () Bool)

(assert (=> b!876879 m!816905))

(declare-fun m!816907 () Bool)

(assert (=> b!876874 m!816907))

(declare-fun m!816909 () Bool)

(assert (=> b!876876 m!816909))

(declare-fun m!816911 () Bool)

(assert (=> b!876876 m!816911))

(assert (=> b!876876 m!816603))

(declare-fun m!816913 () Bool)

(assert (=> b!876876 m!816913))

(assert (=> b!876876 m!816911))

(declare-fun m!816915 () Bool)

(assert (=> b!876876 m!816915))

(assert (=> b!876876 m!816915))

(declare-fun m!816917 () Bool)

(assert (=> b!876876 m!816917))

(assert (=> b!876876 m!816603))

(assert (=> b!876876 m!816901))

(declare-fun m!816919 () Bool)

(assert (=> b!876876 m!816919))

(declare-fun m!816921 () Bool)

(assert (=> b!876873 m!816921))

(assert (=> b!876881 m!816911))

(assert (=> b!876881 m!816603))

(assert (=> b!876881 m!816913))

(assert (=> b!876881 m!816911))

(assert (=> b!876881 m!816901))

(declare-fun m!816923 () Bool)

(assert (=> b!876881 m!816923))

(assert (=> b!876881 m!816603))

(assert (=> b!876881 m!816901))

(assert (=> bm!38815 m!816921))

(assert (=> b!876882 m!816901))

(assert (=> b!876882 m!816901))

(declare-fun m!816925 () Bool)

(assert (=> b!876882 m!816925))

(declare-fun m!816927 () Bool)

(assert (=> d!108589 m!816927))

(assert (=> d!108589 m!816611))

(assert (=> b!876871 m!816901))

(assert (=> b!876871 m!816901))

(assert (=> b!876871 m!816925))

(assert (=> b!876821 d!108589))

(declare-fun d!108591 () Bool)

(declare-fun lt!396798 () Bool)

(assert (=> d!108591 (= lt!396798 (select (content!393 (toList!5205 lt!396713)) lt!396662))))

(declare-fun e!488158 () Bool)

(assert (=> d!108591 (= lt!396798 e!488158)))

(declare-fun res!595912 () Bool)

(assert (=> d!108591 (=> (not res!595912) (not e!488158))))

(assert (=> d!108591 (= res!595912 ((_ is Cons!17473) (toList!5205 lt!396713)))))

(assert (=> d!108591 (= (contains!4246 (toList!5205 lt!396713) lt!396662) lt!396798)))

(declare-fun b!876883 () Bool)

(declare-fun e!488159 () Bool)

(assert (=> b!876883 (= e!488158 e!488159)))

(declare-fun res!595911 () Bool)

(assert (=> b!876883 (=> res!595911 e!488159)))

(assert (=> b!876883 (= res!595911 (= (h!18604 (toList!5205 lt!396713)) lt!396662))))

(declare-fun b!876884 () Bool)

(assert (=> b!876884 (= e!488159 (contains!4246 (t!24572 (toList!5205 lt!396713)) lt!396662))))

(assert (= (and d!108591 res!595912) b!876883))

(assert (= (and b!876883 (not res!595911)) b!876884))

(declare-fun m!816929 () Bool)

(assert (=> d!108591 m!816929))

(declare-fun m!816931 () Bool)

(assert (=> d!108591 m!816931))

(declare-fun m!816933 () Bool)

(assert (=> b!876884 m!816933))

(assert (=> b!876747 d!108591))

(declare-fun d!108593 () Bool)

(declare-fun e!488164 () Bool)

(assert (=> d!108593 e!488164))

(declare-fun res!595915 () Bool)

(assert (=> d!108593 (=> res!595915 e!488164)))

(declare-fun lt!396808 () Bool)

(assert (=> d!108593 (= res!595915 (not lt!396808))))

(declare-fun lt!396809 () Bool)

(assert (=> d!108593 (= lt!396808 lt!396809)))

(declare-fun lt!396807 () Unit!29940)

(declare-fun e!488165 () Unit!29940)

(assert (=> d!108593 (= lt!396807 e!488165)))

(declare-fun c!92589 () Bool)

(assert (=> d!108593 (= c!92589 lt!396809)))

(declare-fun containsKey!402 (List!17477 (_ BitVec 64)) Bool)

(assert (=> d!108593 (= lt!396809 (containsKey!402 (toList!5205 lt!396781) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!108593 (= (contains!4245 lt!396781 #b1000000000000000000000000000000000000000000000000000000000000000) lt!396808)))

(declare-fun b!876891 () Bool)

(declare-fun lt!396810 () Unit!29940)

(assert (=> b!876891 (= e!488165 lt!396810)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!312 (List!17477 (_ BitVec 64)) Unit!29940)

(assert (=> b!876891 (= lt!396810 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396781) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun isDefined!313 (Option!424) Bool)

(assert (=> b!876891 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396781) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!876892 () Bool)

(declare-fun Unit!29942 () Unit!29940)

(assert (=> b!876892 (= e!488165 Unit!29942)))

(declare-fun b!876893 () Bool)

(assert (=> b!876893 (= e!488164 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108593 c!92589) b!876891))

(assert (= (and d!108593 (not c!92589)) b!876892))

(assert (= (and d!108593 (not res!595915)) b!876893))

(declare-fun m!816935 () Bool)

(assert (=> d!108593 m!816935))

(declare-fun m!816937 () Bool)

(assert (=> b!876891 m!816937))

(declare-fun m!816939 () Bool)

(assert (=> b!876891 m!816939))

(assert (=> b!876891 m!816939))

(declare-fun m!816941 () Bool)

(assert (=> b!876891 m!816941))

(assert (=> b!876893 m!816939))

(assert (=> b!876893 m!816939))

(assert (=> b!876893 m!816941))

(assert (=> b!876853 d!108593))

(assert (=> b!876797 d!108585))

(declare-fun d!108595 () Bool)

(declare-fun e!488166 () Bool)

(assert (=> d!108595 e!488166))

(declare-fun res!595917 () Bool)

(assert (=> d!108595 (=> (not res!595917) (not e!488166))))

(declare-fun lt!396813 () ListLongMap!10379)

(assert (=> d!108595 (= res!595917 (contains!4245 lt!396813 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!396811 () List!17477)

(assert (=> d!108595 (= lt!396813 (ListLongMap!10380 lt!396811))))

(declare-fun lt!396812 () Unit!29940)

(declare-fun lt!396814 () Unit!29940)

(assert (=> d!108595 (= lt!396812 lt!396814)))

(assert (=> d!108595 (= (getValueByKey!418 lt!396811 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!423 (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108595 (= lt!396814 (lemmaContainsTupThenGetReturnValue!234 lt!396811 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108595 (= lt!396811 (insertStrictlySorted!272 (toList!5205 call!38817) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108595 (= (+!2441 call!38817 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!396813)))

(declare-fun b!876894 () Bool)

(declare-fun res!595916 () Bool)

(assert (=> b!876894 (=> (not res!595916) (not e!488166))))

(assert (=> b!876894 (= res!595916 (= (getValueByKey!418 (toList!5205 lt!396813) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!423 (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!876895 () Bool)

(assert (=> b!876895 (= e!488166 (contains!4246 (toList!5205 lt!396813) (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!108595 res!595917) b!876894))

(assert (= (and b!876894 res!595916) b!876895))

(declare-fun m!816943 () Bool)

(assert (=> d!108595 m!816943))

(declare-fun m!816945 () Bool)

(assert (=> d!108595 m!816945))

(declare-fun m!816947 () Bool)

(assert (=> d!108595 m!816947))

(declare-fun m!816949 () Bool)

(assert (=> d!108595 m!816949))

(declare-fun m!816951 () Bool)

(assert (=> b!876894 m!816951))

(declare-fun m!816953 () Bool)

(assert (=> b!876895 m!816953))

(assert (=> b!876850 d!108595))

(declare-fun d!108597 () Bool)

(declare-fun e!488167 () Bool)

(assert (=> d!108597 e!488167))

(declare-fun res!595918 () Bool)

(assert (=> d!108597 (=> res!595918 e!488167)))

(declare-fun lt!396816 () Bool)

(assert (=> d!108597 (= res!595918 (not lt!396816))))

(declare-fun lt!396817 () Bool)

(assert (=> d!108597 (= lt!396816 lt!396817)))

(declare-fun lt!396815 () Unit!29940)

(declare-fun e!488168 () Unit!29940)

(assert (=> d!108597 (= lt!396815 e!488168)))

(declare-fun c!92590 () Bool)

(assert (=> d!108597 (= c!92590 lt!396817)))

(assert (=> d!108597 (= lt!396817 (containsKey!402 (toList!5205 (+!2441 lt!396786 (tuple2!11597 lt!396782 lt!396787))) lt!396785))))

(assert (=> d!108597 (= (contains!4245 (+!2441 lt!396786 (tuple2!11597 lt!396782 lt!396787)) lt!396785) lt!396816)))

(declare-fun b!876896 () Bool)

(declare-fun lt!396818 () Unit!29940)

(assert (=> b!876896 (= e!488168 lt!396818)))

(assert (=> b!876896 (= lt!396818 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 (+!2441 lt!396786 (tuple2!11597 lt!396782 lt!396787))) lt!396785))))

(assert (=> b!876896 (isDefined!313 (getValueByKey!418 (toList!5205 (+!2441 lt!396786 (tuple2!11597 lt!396782 lt!396787))) lt!396785))))

(declare-fun b!876897 () Bool)

(declare-fun Unit!29943 () Unit!29940)

(assert (=> b!876897 (= e!488168 Unit!29943)))

(declare-fun b!876898 () Bool)

(assert (=> b!876898 (= e!488167 (isDefined!313 (getValueByKey!418 (toList!5205 (+!2441 lt!396786 (tuple2!11597 lt!396782 lt!396787))) lt!396785)))))

(assert (= (and d!108597 c!92590) b!876896))

(assert (= (and d!108597 (not c!92590)) b!876897))

(assert (= (and d!108597 (not res!595918)) b!876898))

(declare-fun m!816955 () Bool)

(assert (=> d!108597 m!816955))

(declare-fun m!816957 () Bool)

(assert (=> b!876896 m!816957))

(declare-fun m!816959 () Bool)

(assert (=> b!876896 m!816959))

(assert (=> b!876896 m!816959))

(declare-fun m!816961 () Bool)

(assert (=> b!876896 m!816961))

(assert (=> b!876898 m!816959))

(assert (=> b!876898 m!816959))

(assert (=> b!876898 m!816961))

(assert (=> b!876850 d!108597))

(declare-fun d!108599 () Bool)

(declare-fun c!92591 () Bool)

(assert (=> d!108599 (= c!92591 ((_ is ValueCellFull!8274) (select (arr!24505 _values!688) from!1053)))))

(declare-fun e!488169 () V!28283)

(assert (=> d!108599 (= (get!12905 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)) e!488169)))

(declare-fun b!876899 () Bool)

(assert (=> b!876899 (= e!488169 (get!12906 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!876900 () Bool)

(assert (=> b!876900 (= e!488169 (get!12907 (select (arr!24505 _values!688) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108599 c!92591) b!876899))

(assert (= (and d!108599 (not c!92591)) b!876900))

(assert (=> b!876899 m!816581))

(assert (=> b!876899 m!816603))

(declare-fun m!816963 () Bool)

(assert (=> b!876899 m!816963))

(assert (=> b!876900 m!816581))

(assert (=> b!876900 m!816603))

(declare-fun m!816965 () Bool)

(assert (=> b!876900 m!816965))

(assert (=> b!876850 d!108599))

(declare-fun d!108601 () Bool)

(declare-fun e!488170 () Bool)

(assert (=> d!108601 e!488170))

(declare-fun res!595920 () Bool)

(assert (=> d!108601 (=> (not res!595920) (not e!488170))))

(declare-fun lt!396821 () ListLongMap!10379)

(assert (=> d!108601 (= res!595920 (contains!4245 lt!396821 (_1!5808 (tuple2!11597 lt!396782 lt!396787))))))

(declare-fun lt!396819 () List!17477)

(assert (=> d!108601 (= lt!396821 (ListLongMap!10380 lt!396819))))

(declare-fun lt!396820 () Unit!29940)

(declare-fun lt!396822 () Unit!29940)

(assert (=> d!108601 (= lt!396820 lt!396822)))

(assert (=> d!108601 (= (getValueByKey!418 lt!396819 (_1!5808 (tuple2!11597 lt!396782 lt!396787))) (Some!423 (_2!5808 (tuple2!11597 lt!396782 lt!396787))))))

(assert (=> d!108601 (= lt!396822 (lemmaContainsTupThenGetReturnValue!234 lt!396819 (_1!5808 (tuple2!11597 lt!396782 lt!396787)) (_2!5808 (tuple2!11597 lt!396782 lt!396787))))))

(assert (=> d!108601 (= lt!396819 (insertStrictlySorted!272 (toList!5205 lt!396786) (_1!5808 (tuple2!11597 lt!396782 lt!396787)) (_2!5808 (tuple2!11597 lt!396782 lt!396787))))))

(assert (=> d!108601 (= (+!2441 lt!396786 (tuple2!11597 lt!396782 lt!396787)) lt!396821)))

(declare-fun b!876901 () Bool)

(declare-fun res!595919 () Bool)

(assert (=> b!876901 (=> (not res!595919) (not e!488170))))

(assert (=> b!876901 (= res!595919 (= (getValueByKey!418 (toList!5205 lt!396821) (_1!5808 (tuple2!11597 lt!396782 lt!396787))) (Some!423 (_2!5808 (tuple2!11597 lt!396782 lt!396787)))))))

(declare-fun b!876902 () Bool)

(assert (=> b!876902 (= e!488170 (contains!4246 (toList!5205 lt!396821) (tuple2!11597 lt!396782 lt!396787)))))

(assert (= (and d!108601 res!595920) b!876901))

(assert (= (and b!876901 res!595919) b!876902))

(declare-fun m!816967 () Bool)

(assert (=> d!108601 m!816967))

(declare-fun m!816969 () Bool)

(assert (=> d!108601 m!816969))

(declare-fun m!816971 () Bool)

(assert (=> d!108601 m!816971))

(declare-fun m!816973 () Bool)

(assert (=> d!108601 m!816973))

(declare-fun m!816975 () Bool)

(assert (=> b!876901 m!816975))

(declare-fun m!816977 () Bool)

(assert (=> b!876902 m!816977))

(assert (=> b!876850 d!108601))

(declare-fun d!108603 () Bool)

(assert (=> d!108603 (not (contains!4245 (+!2441 lt!396786 (tuple2!11597 lt!396782 lt!396787)) lt!396785))))

(declare-fun lt!396825 () Unit!29940)

(declare-fun choose!1440 (ListLongMap!10379 (_ BitVec 64) V!28283 (_ BitVec 64)) Unit!29940)

(assert (=> d!108603 (= lt!396825 (choose!1440 lt!396786 lt!396782 lt!396787 lt!396785))))

(declare-fun e!488173 () Bool)

(assert (=> d!108603 e!488173))

(declare-fun res!595923 () Bool)

(assert (=> d!108603 (=> (not res!595923) (not e!488173))))

(assert (=> d!108603 (= res!595923 (not (contains!4245 lt!396786 lt!396785)))))

(assert (=> d!108603 (= (addStillNotContains!204 lt!396786 lt!396782 lt!396787 lt!396785) lt!396825)))

(declare-fun b!876906 () Bool)

(assert (=> b!876906 (= e!488173 (not (= lt!396782 lt!396785)))))

(assert (= (and d!108603 res!595923) b!876906))

(assert (=> d!108603 m!816881))

(assert (=> d!108603 m!816881))

(assert (=> d!108603 m!816883))

(declare-fun m!816979 () Bool)

(assert (=> d!108603 m!816979))

(declare-fun m!816981 () Bool)

(assert (=> d!108603 m!816981))

(assert (=> b!876850 d!108603))

(declare-fun d!108605 () Bool)

(assert (=> d!108605 (= (get!12906 (select (arr!24505 _values!688) from!1053) lt!396663) (v!11190 (select (arr!24505 _values!688) from!1053)))))

(assert (=> b!876760 d!108605))

(declare-fun lt!396826 () Bool)

(declare-fun d!108607 () Bool)

(assert (=> d!108607 (= lt!396826 (select (content!393 (toList!5205 lt!396709)) (tuple2!11597 k0!854 v!557)))))

(declare-fun e!488174 () Bool)

(assert (=> d!108607 (= lt!396826 e!488174)))

(declare-fun res!595925 () Bool)

(assert (=> d!108607 (=> (not res!595925) (not e!488174))))

(assert (=> d!108607 (= res!595925 ((_ is Cons!17473) (toList!5205 lt!396709)))))

(assert (=> d!108607 (= (contains!4246 (toList!5205 lt!396709) (tuple2!11597 k0!854 v!557)) lt!396826)))

(declare-fun b!876907 () Bool)

(declare-fun e!488175 () Bool)

(assert (=> b!876907 (= e!488174 e!488175)))

(declare-fun res!595924 () Bool)

(assert (=> b!876907 (=> res!595924 e!488175)))

(assert (=> b!876907 (= res!595924 (= (h!18604 (toList!5205 lt!396709)) (tuple2!11597 k0!854 v!557)))))

(declare-fun b!876908 () Bool)

(assert (=> b!876908 (= e!488175 (contains!4246 (t!24572 (toList!5205 lt!396709)) (tuple2!11597 k0!854 v!557)))))

(assert (= (and d!108607 res!595925) b!876907))

(assert (= (and b!876907 (not res!595924)) b!876908))

(declare-fun m!816983 () Bool)

(assert (=> d!108607 m!816983))

(declare-fun m!816985 () Bool)

(assert (=> d!108607 m!816985))

(declare-fun m!816987 () Bool)

(assert (=> b!876908 m!816987))

(assert (=> b!876745 d!108607))

(assert (=> b!876844 d!108569))

(declare-fun b!876917 () Bool)

(declare-fun e!488180 () Option!424)

(assert (=> b!876917 (= e!488180 (Some!423 (_2!5808 (h!18604 (toList!5205 lt!396720)))))))

(declare-fun b!876920 () Bool)

(declare-fun e!488181 () Option!424)

(assert (=> b!876920 (= e!488181 None!422)))

(declare-fun c!92596 () Bool)

(declare-fun d!108609 () Bool)

(assert (=> d!108609 (= c!92596 (and ((_ is Cons!17473) (toList!5205 lt!396720)) (= (_1!5808 (h!18604 (toList!5205 lt!396720))) (_1!5808 (tuple2!11597 k0!854 lt!396668)))))))

(assert (=> d!108609 (= (getValueByKey!418 (toList!5205 lt!396720) (_1!5808 (tuple2!11597 k0!854 lt!396668))) e!488180)))

(declare-fun b!876918 () Bool)

(assert (=> b!876918 (= e!488180 e!488181)))

(declare-fun c!92597 () Bool)

(assert (=> b!876918 (= c!92597 (and ((_ is Cons!17473) (toList!5205 lt!396720)) (not (= (_1!5808 (h!18604 (toList!5205 lt!396720))) (_1!5808 (tuple2!11597 k0!854 lt!396668))))))))

(declare-fun b!876919 () Bool)

(assert (=> b!876919 (= e!488181 (getValueByKey!418 (t!24572 (toList!5205 lt!396720)) (_1!5808 (tuple2!11597 k0!854 lt!396668))))))

(assert (= (and d!108609 c!92596) b!876917))

(assert (= (and d!108609 (not c!92596)) b!876918))

(assert (= (and b!876918 c!92597) b!876919))

(assert (= (and b!876918 (not c!92597)) b!876920))

(declare-fun m!816989 () Bool)

(assert (=> b!876919 m!816989))

(assert (=> b!876748 d!108609))

(assert (=> bm!38812 d!108589))

(declare-fun d!108611 () Bool)

(declare-fun e!488182 () Bool)

(assert (=> d!108611 e!488182))

(declare-fun res!595926 () Bool)

(assert (=> d!108611 (=> res!595926 e!488182)))

(declare-fun lt!396828 () Bool)

(assert (=> d!108611 (= res!595926 (not lt!396828))))

(declare-fun lt!396829 () Bool)

(assert (=> d!108611 (= lt!396828 lt!396829)))

(declare-fun lt!396827 () Unit!29940)

(declare-fun e!488183 () Unit!29940)

(assert (=> d!108611 (= lt!396827 e!488183)))

(declare-fun c!92598 () Bool)

(assert (=> d!108611 (= c!92598 lt!396829)))

(assert (=> d!108611 (= lt!396829 (containsKey!402 (toList!5205 lt!396774) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!108611 (= (contains!4245 lt!396774 #b0000000000000000000000000000000000000000000000000000000000000000) lt!396828)))

(declare-fun b!876921 () Bool)

(declare-fun lt!396830 () Unit!29940)

(assert (=> b!876921 (= e!488183 lt!396830)))

(assert (=> b!876921 (= lt!396830 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396774) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!876921 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396774) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!876922 () Bool)

(declare-fun Unit!29944 () Unit!29940)

(assert (=> b!876922 (= e!488183 Unit!29944)))

(declare-fun b!876923 () Bool)

(assert (=> b!876923 (= e!488182 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396774) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108611 c!92598) b!876921))

(assert (= (and d!108611 (not c!92598)) b!876922))

(assert (= (and d!108611 (not res!595926)) b!876923))

(declare-fun m!816991 () Bool)

(assert (=> d!108611 m!816991))

(declare-fun m!816993 () Bool)

(assert (=> b!876921 m!816993))

(declare-fun m!816995 () Bool)

(assert (=> b!876921 m!816995))

(assert (=> b!876921 m!816995))

(declare-fun m!816997 () Bool)

(assert (=> b!876921 m!816997))

(assert (=> b!876923 m!816995))

(assert (=> b!876923 m!816995))

(assert (=> b!876923 m!816997))

(assert (=> d!108579 d!108611))

(assert (=> d!108579 d!108583))

(declare-fun d!108613 () Bool)

(declare-fun e!488184 () Bool)

(assert (=> d!108613 e!488184))

(declare-fun res!595927 () Bool)

(assert (=> d!108613 (=> res!595927 e!488184)))

(declare-fun lt!396832 () Bool)

(assert (=> d!108613 (= res!595927 (not lt!396832))))

(declare-fun lt!396833 () Bool)

(assert (=> d!108613 (= lt!396832 lt!396833)))

(declare-fun lt!396831 () Unit!29940)

(declare-fun e!488185 () Unit!29940)

(assert (=> d!108613 (= lt!396831 e!488185)))

(declare-fun c!92599 () Bool)

(assert (=> d!108613 (= c!92599 lt!396833)))

(assert (=> d!108613 (= lt!396833 (containsKey!402 (toList!5205 lt!396744) (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> d!108613 (= (contains!4245 lt!396744 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) lt!396832)))

(declare-fun b!876924 () Bool)

(declare-fun lt!396834 () Unit!29940)

(assert (=> b!876924 (= e!488185 lt!396834)))

(assert (=> b!876924 (= lt!396834 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396744) (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!876924 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396744) (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!876925 () Bool)

(declare-fun Unit!29945 () Unit!29940)

(assert (=> b!876925 (= e!488185 Unit!29945)))

(declare-fun b!876926 () Bool)

(assert (=> b!876926 (= e!488184 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396744) (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))))

(assert (= (and d!108613 c!92599) b!876924))

(assert (= (and d!108613 (not c!92599)) b!876925))

(assert (= (and d!108613 (not res!595927)) b!876926))

(assert (=> d!108613 m!816769))

(declare-fun m!816999 () Bool)

(assert (=> d!108613 m!816999))

(assert (=> b!876924 m!816769))

(declare-fun m!817001 () Bool)

(assert (=> b!876924 m!817001))

(assert (=> b!876924 m!816769))

(declare-fun m!817003 () Bool)

(assert (=> b!876924 m!817003))

(assert (=> b!876924 m!817003))

(declare-fun m!817005 () Bool)

(assert (=> b!876924 m!817005))

(assert (=> b!876926 m!816769))

(assert (=> b!876926 m!817003))

(assert (=> b!876926 m!817003))

(assert (=> b!876926 m!817005))

(assert (=> b!876787 d!108613))

(declare-fun d!108615 () Bool)

(declare-fun res!595928 () Bool)

(declare-fun e!488188 () Bool)

(assert (=> d!108615 (=> res!595928 e!488188)))

(assert (=> d!108615 (= res!595928 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(assert (=> d!108615 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196) e!488188)))

(declare-fun b!876927 () Bool)

(declare-fun e!488186 () Bool)

(declare-fun e!488187 () Bool)

(assert (=> b!876927 (= e!488186 e!488187)))

(declare-fun lt!396836 () (_ BitVec 64))

(assert (=> b!876927 (= lt!396836 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!396835 () Unit!29940)

(assert (=> b!876927 (= lt!396835 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!396836 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!876927 (arrayContainsKey!0 _keys!868 lt!396836 #b00000000000000000000000000000000)))

(declare-fun lt!396837 () Unit!29940)

(assert (=> b!876927 (= lt!396837 lt!396835)))

(declare-fun res!595929 () Bool)

(assert (=> b!876927 (= res!595929 (= (seekEntryOrOpen!0 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!868 mask!1196) (Found!8742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!876927 (=> (not res!595929) (not e!488187))))

(declare-fun b!876928 () Bool)

(assert (=> b!876928 (= e!488188 e!488186)))

(declare-fun c!92600 () Bool)

(assert (=> b!876928 (= c!92600 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!38816 () Bool)

(declare-fun call!38819 () Bool)

(assert (=> bm!38816 (= call!38819 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(declare-fun b!876929 () Bool)

(assert (=> b!876929 (= e!488187 call!38819)))

(declare-fun b!876930 () Bool)

(assert (=> b!876930 (= e!488186 call!38819)))

(assert (= (and d!108615 (not res!595928)) b!876928))

(assert (= (and b!876928 c!92600) b!876927))

(assert (= (and b!876928 (not c!92600)) b!876930))

(assert (= (and b!876927 res!595929) b!876929))

(assert (= (or b!876929 b!876930) bm!38816))

(declare-fun m!817007 () Bool)

(assert (=> b!876927 m!817007))

(declare-fun m!817009 () Bool)

(assert (=> b!876927 m!817009))

(declare-fun m!817011 () Bool)

(assert (=> b!876927 m!817011))

(assert (=> b!876927 m!817007))

(declare-fun m!817013 () Bool)

(assert (=> b!876927 m!817013))

(assert (=> b!876928 m!817007))

(assert (=> b!876928 m!817007))

(declare-fun m!817015 () Bool)

(assert (=> b!876928 m!817015))

(declare-fun m!817017 () Bool)

(assert (=> bm!38816 m!817017))

(assert (=> bm!38811 d!108615))

(declare-fun d!108617 () Bool)

(declare-fun get!12908 (Option!424) V!28283)

(assert (=> d!108617 (= (apply!377 lt!396781 (select (arr!24504 _keys!868) from!1053)) (get!12908 (getValueByKey!418 (toList!5205 lt!396781) (select (arr!24504 _keys!868) from!1053))))))

(declare-fun bs!24612 () Bool)

(assert (= bs!24612 d!108617))

(assert (=> bs!24612 m!816575))

(declare-fun m!817019 () Bool)

(assert (=> bs!24612 m!817019))

(assert (=> bs!24612 m!817019))

(declare-fun m!817021 () Bool)

(assert (=> bs!24612 m!817021))

(assert (=> b!876855 d!108617))

(assert (=> b!876855 d!108599))

(declare-fun d!108619 () Bool)

(declare-fun e!488189 () Bool)

(assert (=> d!108619 e!488189))

(declare-fun res!595930 () Bool)

(assert (=> d!108619 (=> res!595930 e!488189)))

(declare-fun lt!396839 () Bool)

(assert (=> d!108619 (= res!595930 (not lt!396839))))

(declare-fun lt!396840 () Bool)

(assert (=> d!108619 (= lt!396839 lt!396840)))

(declare-fun lt!396838 () Unit!29940)

(declare-fun e!488190 () Unit!29940)

(assert (=> d!108619 (= lt!396838 e!488190)))

(declare-fun c!92601 () Bool)

(assert (=> d!108619 (= c!92601 lt!396840)))

(assert (=> d!108619 (= lt!396840 (containsKey!402 (toList!5205 lt!396772) (_1!5808 (tuple2!11597 k0!854 v!557))))))

(assert (=> d!108619 (= (contains!4245 lt!396772 (_1!5808 (tuple2!11597 k0!854 v!557))) lt!396839)))

(declare-fun b!876931 () Bool)

(declare-fun lt!396841 () Unit!29940)

(assert (=> b!876931 (= e!488190 lt!396841)))

(assert (=> b!876931 (= lt!396841 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396772) (_1!5808 (tuple2!11597 k0!854 v!557))))))

(assert (=> b!876931 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396772) (_1!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun b!876932 () Bool)

(declare-fun Unit!29946 () Unit!29940)

(assert (=> b!876932 (= e!488190 Unit!29946)))

(declare-fun b!876933 () Bool)

(assert (=> b!876933 (= e!488189 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396772) (_1!5808 (tuple2!11597 k0!854 v!557)))))))

(assert (= (and d!108619 c!92601) b!876931))

(assert (= (and d!108619 (not c!92601)) b!876932))

(assert (= (and d!108619 (not res!595930)) b!876933))

(declare-fun m!817023 () Bool)

(assert (=> d!108619 m!817023))

(declare-fun m!817025 () Bool)

(assert (=> b!876931 m!817025))

(assert (=> b!876931 m!816843))

(assert (=> b!876931 m!816843))

(declare-fun m!817027 () Bool)

(assert (=> b!876931 m!817027))

(assert (=> b!876933 m!816843))

(assert (=> b!876933 m!816843))

(assert (=> b!876933 m!817027))

(assert (=> d!108577 d!108619))

(declare-fun b!876934 () Bool)

(declare-fun e!488191 () Option!424)

(assert (=> b!876934 (= e!488191 (Some!423 (_2!5808 (h!18604 lt!396770))))))

(declare-fun b!876937 () Bool)

(declare-fun e!488192 () Option!424)

(assert (=> b!876937 (= e!488192 None!422)))

(declare-fun d!108621 () Bool)

(declare-fun c!92602 () Bool)

(assert (=> d!108621 (= c!92602 (and ((_ is Cons!17473) lt!396770) (= (_1!5808 (h!18604 lt!396770)) (_1!5808 (tuple2!11597 k0!854 v!557)))))))

(assert (=> d!108621 (= (getValueByKey!418 lt!396770 (_1!5808 (tuple2!11597 k0!854 v!557))) e!488191)))

(declare-fun b!876935 () Bool)

(assert (=> b!876935 (= e!488191 e!488192)))

(declare-fun c!92603 () Bool)

(assert (=> b!876935 (= c!92603 (and ((_ is Cons!17473) lt!396770) (not (= (_1!5808 (h!18604 lt!396770)) (_1!5808 (tuple2!11597 k0!854 v!557))))))))

(declare-fun b!876936 () Bool)

(assert (=> b!876936 (= e!488192 (getValueByKey!418 (t!24572 lt!396770) (_1!5808 (tuple2!11597 k0!854 v!557))))))

(assert (= (and d!108621 c!92602) b!876934))

(assert (= (and d!108621 (not c!92602)) b!876935))

(assert (= (and b!876935 c!92603) b!876936))

(assert (= (and b!876935 (not c!92603)) b!876937))

(declare-fun m!817029 () Bool)

(assert (=> b!876936 m!817029))

(assert (=> d!108577 d!108621))

(declare-fun d!108623 () Bool)

(assert (=> d!108623 (= (getValueByKey!418 lt!396770 (_1!5808 (tuple2!11597 k0!854 v!557))) (Some!423 (_2!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun lt!396844 () Unit!29940)

(declare-fun choose!1441 (List!17477 (_ BitVec 64) V!28283) Unit!29940)

(assert (=> d!108623 (= lt!396844 (choose!1441 lt!396770 (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun e!488195 () Bool)

(assert (=> d!108623 e!488195))

(declare-fun res!595935 () Bool)

(assert (=> d!108623 (=> (not res!595935) (not e!488195))))

(declare-fun isStrictlySorted!457 (List!17477) Bool)

(assert (=> d!108623 (= res!595935 (isStrictlySorted!457 lt!396770))))

(assert (=> d!108623 (= (lemmaContainsTupThenGetReturnValue!234 lt!396770 (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557))) lt!396844)))

(declare-fun b!876942 () Bool)

(declare-fun res!595936 () Bool)

(assert (=> b!876942 (=> (not res!595936) (not e!488195))))

(assert (=> b!876942 (= res!595936 (containsKey!402 lt!396770 (_1!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun b!876943 () Bool)

(assert (=> b!876943 (= e!488195 (contains!4246 lt!396770 (tuple2!11597 (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557)))))))

(assert (= (and d!108623 res!595935) b!876942))

(assert (= (and b!876942 res!595936) b!876943))

(assert (=> d!108623 m!816837))

(declare-fun m!817031 () Bool)

(assert (=> d!108623 m!817031))

(declare-fun m!817033 () Bool)

(assert (=> d!108623 m!817033))

(declare-fun m!817035 () Bool)

(assert (=> b!876942 m!817035))

(declare-fun m!817037 () Bool)

(assert (=> b!876943 m!817037))

(assert (=> d!108577 d!108623))

(declare-fun b!876964 () Bool)

(declare-fun res!595941 () Bool)

(declare-fun e!488206 () Bool)

(assert (=> b!876964 (=> (not res!595941) (not e!488206))))

(declare-fun lt!396847 () List!17477)

(assert (=> b!876964 (= res!595941 (containsKey!402 lt!396847 (_1!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun b!876965 () Bool)

(assert (=> b!876965 (= e!488206 (contains!4246 lt!396847 (tuple2!11597 (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557)))))))

(declare-fun b!876966 () Bool)

(declare-fun e!488208 () List!17477)

(declare-fun call!38826 () List!17477)

(assert (=> b!876966 (= e!488208 call!38826)))

(declare-fun call!38828 () List!17477)

(declare-fun c!92615 () Bool)

(declare-fun e!488207 () List!17477)

(declare-fun bm!38823 () Bool)

(declare-fun $colon$colon!537 (List!17477 tuple2!11596) List!17477)

(assert (=> bm!38823 (= call!38828 ($colon$colon!537 e!488207 (ite c!92615 (h!18604 (toList!5205 call!38792)) (tuple2!11597 (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557))))))))

(declare-fun c!92614 () Bool)

(assert (=> bm!38823 (= c!92614 c!92615)))

(declare-fun b!876967 () Bool)

(assert (=> b!876967 (= e!488207 (insertStrictlySorted!272 (t!24572 (toList!5205 call!38792)) (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun b!876968 () Bool)

(assert (=> b!876968 (= e!488208 call!38826)))

(declare-fun d!108625 () Bool)

(assert (=> d!108625 e!488206))

(declare-fun res!595942 () Bool)

(assert (=> d!108625 (=> (not res!595942) (not e!488206))))

(assert (=> d!108625 (= res!595942 (isStrictlySorted!457 lt!396847))))

(declare-fun e!488209 () List!17477)

(assert (=> d!108625 (= lt!396847 e!488209)))

(assert (=> d!108625 (= c!92615 (and ((_ is Cons!17473) (toList!5205 call!38792)) (bvslt (_1!5808 (h!18604 (toList!5205 call!38792))) (_1!5808 (tuple2!11597 k0!854 v!557)))))))

(assert (=> d!108625 (isStrictlySorted!457 (toList!5205 call!38792))))

(assert (=> d!108625 (= (insertStrictlySorted!272 (toList!5205 call!38792) (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557))) lt!396847)))

(declare-fun c!92613 () Bool)

(declare-fun b!876969 () Bool)

(assert (=> b!876969 (= c!92613 (and ((_ is Cons!17473) (toList!5205 call!38792)) (bvsgt (_1!5808 (h!18604 (toList!5205 call!38792))) (_1!5808 (tuple2!11597 k0!854 v!557)))))))

(declare-fun e!488210 () List!17477)

(assert (=> b!876969 (= e!488210 e!488208)))

(declare-fun bm!38824 () Bool)

(declare-fun call!38827 () List!17477)

(assert (=> bm!38824 (= call!38827 call!38828)))

(declare-fun b!876970 () Bool)

(assert (=> b!876970 (= e!488210 call!38827)))

(declare-fun b!876971 () Bool)

(assert (=> b!876971 (= e!488209 call!38828)))

(declare-fun bm!38825 () Bool)

(assert (=> bm!38825 (= call!38826 call!38827)))

(declare-fun b!876972 () Bool)

(declare-fun c!92612 () Bool)

(assert (=> b!876972 (= e!488207 (ite c!92612 (t!24572 (toList!5205 call!38792)) (ite c!92613 (Cons!17473 (h!18604 (toList!5205 call!38792)) (t!24572 (toList!5205 call!38792))) Nil!17474)))))

(declare-fun b!876973 () Bool)

(assert (=> b!876973 (= e!488209 e!488210)))

(assert (=> b!876973 (= c!92612 (and ((_ is Cons!17473) (toList!5205 call!38792)) (= (_1!5808 (h!18604 (toList!5205 call!38792))) (_1!5808 (tuple2!11597 k0!854 v!557)))))))

(assert (= (and d!108625 c!92615) b!876971))

(assert (= (and d!108625 (not c!92615)) b!876973))

(assert (= (and b!876973 c!92612) b!876970))

(assert (= (and b!876973 (not c!92612)) b!876969))

(assert (= (and b!876969 c!92613) b!876968))

(assert (= (and b!876969 (not c!92613)) b!876966))

(assert (= (or b!876968 b!876966) bm!38825))

(assert (= (or b!876970 bm!38825) bm!38824))

(assert (= (or b!876971 bm!38824) bm!38823))

(assert (= (and bm!38823 c!92614) b!876967))

(assert (= (and bm!38823 (not c!92614)) b!876972))

(assert (= (and d!108625 res!595942) b!876964))

(assert (= (and b!876964 res!595941) b!876965))

(declare-fun m!817039 () Bool)

(assert (=> d!108625 m!817039))

(declare-fun m!817041 () Bool)

(assert (=> d!108625 m!817041))

(declare-fun m!817043 () Bool)

(assert (=> b!876964 m!817043))

(declare-fun m!817045 () Bool)

(assert (=> b!876967 m!817045))

(declare-fun m!817047 () Bool)

(assert (=> bm!38823 m!817047))

(declare-fun m!817049 () Bool)

(assert (=> b!876965 m!817049))

(assert (=> d!108577 d!108625))

(declare-fun lt!396848 () Bool)

(declare-fun d!108627 () Bool)

(assert (=> d!108627 (= lt!396848 (select (content!393 (toList!5205 lt!396728)) (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)))))

(declare-fun e!488211 () Bool)

(assert (=> d!108627 (= lt!396848 e!488211)))

(declare-fun res!595944 () Bool)

(assert (=> d!108627 (=> (not res!595944) (not e!488211))))

(assert (=> d!108627 (= res!595944 ((_ is Cons!17473) (toList!5205 lt!396728)))))

(assert (=> d!108627 (= (contains!4246 (toList!5205 lt!396728) (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)) lt!396848)))

(declare-fun b!876974 () Bool)

(declare-fun e!488212 () Bool)

(assert (=> b!876974 (= e!488211 e!488212)))

(declare-fun res!595943 () Bool)

(assert (=> b!876974 (=> res!595943 e!488212)))

(assert (=> b!876974 (= res!595943 (= (h!18604 (toList!5205 lt!396728)) (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)))))

(declare-fun b!876975 () Bool)

(assert (=> b!876975 (= e!488212 (contains!4246 (t!24572 (toList!5205 lt!396728)) (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)))))

(assert (= (and d!108627 res!595944) b!876974))

(assert (= (and b!876974 (not res!595943)) b!876975))

(declare-fun m!817051 () Bool)

(assert (=> d!108627 m!817051))

(declare-fun m!817053 () Bool)

(assert (=> d!108627 m!817053))

(declare-fun m!817055 () Bool)

(assert (=> b!876975 m!817055))

(assert (=> b!876759 d!108627))

(declare-fun call!38833 () ListLongMap!10379)

(declare-fun bm!38830 () Bool)

(assert (=> bm!38830 (= call!38833 (getCurrentListMapNoExtraKeys!3167 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun d!108629 () Bool)

(declare-fun e!488215 () Bool)

(assert (=> d!108629 e!488215))

(declare-fun c!92618 () Bool)

(assert (=> d!108629 (= c!92618 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(assert (=> d!108629 true))

(declare-fun _$6!59 () Unit!29940)

(assert (=> d!108629 (= (choose!1439 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) _$6!59)))

(declare-fun call!38834 () ListLongMap!10379)

(declare-fun bm!38831 () Bool)

(assert (=> bm!38831 (= call!38834 (getCurrentListMapNoExtraKeys!3167 _keys!868 (array!50965 (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) (size!24946 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876980 () Bool)

(assert (=> b!876980 (= e!488215 (= call!38834 (+!2441 call!38833 (tuple2!11597 k0!854 v!557))))))

(declare-fun b!876981 () Bool)

(assert (=> b!876981 (= e!488215 (= call!38834 call!38833))))

(assert (= (and d!108629 c!92618) b!876980))

(assert (= (and d!108629 (not c!92618)) b!876981))

(assert (= (or b!876980 b!876981) bm!38830))

(assert (= (or b!876980 b!876981) bm!38831))

(assert (=> bm!38830 m!816625))

(assert (=> bm!38831 m!816599))

(assert (=> bm!38831 m!816797))

(declare-fun m!817057 () Bool)

(assert (=> b!876980 m!817057))

(assert (=> d!108571 d!108629))

(declare-fun d!108631 () Bool)

(assert (=> d!108631 (arrayContainsKey!0 _keys!868 lt!396761 #b00000000000000000000000000000000)))

(declare-fun lt!396851 () Unit!29940)

(declare-fun choose!13 (array!50962 (_ BitVec 64) (_ BitVec 32)) Unit!29940)

(assert (=> d!108631 (= lt!396851 (choose!13 _keys!868 lt!396761 #b00000000000000000000000000000000))))

(assert (=> d!108631 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!108631 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!396761 #b00000000000000000000000000000000) lt!396851)))

(declare-fun bs!24613 () Bool)

(assert (= bs!24613 d!108631))

(assert (=> bs!24613 m!816805))

(declare-fun m!817059 () Bool)

(assert (=> bs!24613 m!817059))

(assert (=> b!876815 d!108631))

(declare-fun d!108633 () Bool)

(declare-fun res!595949 () Bool)

(declare-fun e!488220 () Bool)

(assert (=> d!108633 (=> res!595949 e!488220)))

(assert (=> d!108633 (= res!595949 (= (select (arr!24504 _keys!868) #b00000000000000000000000000000000) lt!396761))))

(assert (=> d!108633 (= (arrayContainsKey!0 _keys!868 lt!396761 #b00000000000000000000000000000000) e!488220)))

(declare-fun b!876986 () Bool)

(declare-fun e!488221 () Bool)

(assert (=> b!876986 (= e!488220 e!488221)))

(declare-fun res!595950 () Bool)

(assert (=> b!876986 (=> (not res!595950) (not e!488221))))

(assert (=> b!876986 (= res!595950 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(declare-fun b!876987 () Bool)

(assert (=> b!876987 (= e!488221 (arrayContainsKey!0 _keys!868 lt!396761 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!108633 (not res!595949)) b!876986))

(assert (= (and b!876986 res!595950) b!876987))

(assert (=> d!108633 m!816687))

(declare-fun m!817061 () Bool)

(assert (=> b!876987 m!817061))

(assert (=> b!876815 d!108633))

(declare-fun b!877000 () Bool)

(declare-fun e!488228 () SeekEntryResult!8742)

(declare-fun lt!396860 () SeekEntryResult!8742)

(assert (=> b!877000 (= e!488228 (Found!8742 (index!37340 lt!396860)))))

(declare-fun e!488229 () SeekEntryResult!8742)

(declare-fun b!877001 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!50962 (_ BitVec 32)) SeekEntryResult!8742)

(assert (=> b!877001 (= e!488229 (seekKeyOrZeroReturnVacant!0 (x!74288 lt!396860) (index!37340 lt!396860) (index!37340 lt!396860) (select (arr!24504 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196))))

(declare-fun d!108635 () Bool)

(declare-fun lt!396859 () SeekEntryResult!8742)

(assert (=> d!108635 (and (or ((_ is Undefined!8742) lt!396859) (not ((_ is Found!8742) lt!396859)) (and (bvsge (index!37339 lt!396859) #b00000000000000000000000000000000) (bvslt (index!37339 lt!396859) (size!24945 _keys!868)))) (or ((_ is Undefined!8742) lt!396859) ((_ is Found!8742) lt!396859) (not ((_ is MissingZero!8742) lt!396859)) (and (bvsge (index!37338 lt!396859) #b00000000000000000000000000000000) (bvslt (index!37338 lt!396859) (size!24945 _keys!868)))) (or ((_ is Undefined!8742) lt!396859) ((_ is Found!8742) lt!396859) ((_ is MissingZero!8742) lt!396859) (not ((_ is MissingVacant!8742) lt!396859)) (and (bvsge (index!37341 lt!396859) #b00000000000000000000000000000000) (bvslt (index!37341 lt!396859) (size!24945 _keys!868)))) (or ((_ is Undefined!8742) lt!396859) (ite ((_ is Found!8742) lt!396859) (= (select (arr!24504 _keys!868) (index!37339 lt!396859)) (select (arr!24504 _keys!868) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!8742) lt!396859) (= (select (arr!24504 _keys!868) (index!37338 lt!396859)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8742) lt!396859) (= (select (arr!24504 _keys!868) (index!37341 lt!396859)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!488230 () SeekEntryResult!8742)

(assert (=> d!108635 (= lt!396859 e!488230)))

(declare-fun c!92625 () Bool)

(assert (=> d!108635 (= c!92625 (and ((_ is Intermediate!8742) lt!396860) (undefined!9554 lt!396860)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!50962 (_ BitVec 32)) SeekEntryResult!8742)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!108635 (= lt!396860 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!24504 _keys!868) #b00000000000000000000000000000000) mask!1196) (select (arr!24504 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196))))

(assert (=> d!108635 (validMask!0 mask!1196)))

(assert (=> d!108635 (= (seekEntryOrOpen!0 (select (arr!24504 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) lt!396859)))

(declare-fun b!877002 () Bool)

(assert (=> b!877002 (= e!488230 Undefined!8742)))

(declare-fun b!877003 () Bool)

(assert (=> b!877003 (= e!488229 (MissingZero!8742 (index!37340 lt!396860)))))

(declare-fun b!877004 () Bool)

(declare-fun c!92627 () Bool)

(declare-fun lt!396858 () (_ BitVec 64))

(assert (=> b!877004 (= c!92627 (= lt!396858 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!877004 (= e!488228 e!488229)))

(declare-fun b!877005 () Bool)

(assert (=> b!877005 (= e!488230 e!488228)))

(assert (=> b!877005 (= lt!396858 (select (arr!24504 _keys!868) (index!37340 lt!396860)))))

(declare-fun c!92626 () Bool)

(assert (=> b!877005 (= c!92626 (= lt!396858 (select (arr!24504 _keys!868) #b00000000000000000000000000000000)))))

(assert (= (and d!108635 c!92625) b!877002))

(assert (= (and d!108635 (not c!92625)) b!877005))

(assert (= (and b!877005 c!92626) b!877000))

(assert (= (and b!877005 (not c!92626)) b!877004))

(assert (= (and b!877004 c!92627) b!877003))

(assert (= (and b!877004 (not c!92627)) b!877001))

(assert (=> b!877001 m!816687))

(declare-fun m!817063 () Bool)

(assert (=> b!877001 m!817063))

(declare-fun m!817065 () Bool)

(assert (=> d!108635 m!817065))

(assert (=> d!108635 m!816611))

(declare-fun m!817067 () Bool)

(assert (=> d!108635 m!817067))

(assert (=> d!108635 m!816687))

(declare-fun m!817069 () Bool)

(assert (=> d!108635 m!817069))

(assert (=> d!108635 m!816687))

(assert (=> d!108635 m!817067))

(declare-fun m!817071 () Bool)

(assert (=> d!108635 m!817071))

(declare-fun m!817073 () Bool)

(assert (=> d!108635 m!817073))

(declare-fun m!817075 () Bool)

(assert (=> b!877005 m!817075))

(assert (=> b!876815 d!108635))

(declare-fun d!108637 () Bool)

(declare-fun e!488231 () Bool)

(assert (=> d!108637 e!488231))

(declare-fun res!595951 () Bool)

(assert (=> d!108637 (=> res!595951 e!488231)))

(declare-fun lt!396862 () Bool)

(assert (=> d!108637 (= res!595951 (not lt!396862))))

(declare-fun lt!396863 () Bool)

(assert (=> d!108637 (= lt!396862 lt!396863)))

(declare-fun lt!396861 () Unit!29940)

(declare-fun e!488232 () Unit!29940)

(assert (=> d!108637 (= lt!396861 e!488232)))

(declare-fun c!92628 () Bool)

(assert (=> d!108637 (= c!92628 lt!396863)))

(assert (=> d!108637 (= lt!396863 (containsKey!402 (toList!5205 lt!396781) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!108637 (= (contains!4245 lt!396781 #b0000000000000000000000000000000000000000000000000000000000000000) lt!396862)))

(declare-fun b!877006 () Bool)

(declare-fun lt!396864 () Unit!29940)

(assert (=> b!877006 (= e!488232 lt!396864)))

(assert (=> b!877006 (= lt!396864 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396781) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!877006 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396781) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!877007 () Bool)

(declare-fun Unit!29947 () Unit!29940)

(assert (=> b!877007 (= e!488232 Unit!29947)))

(declare-fun b!877008 () Bool)

(assert (=> b!877008 (= e!488231 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396781) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108637 c!92628) b!877006))

(assert (= (and d!108637 (not c!92628)) b!877007))

(assert (= (and d!108637 (not res!595951)) b!877008))

(declare-fun m!817077 () Bool)

(assert (=> d!108637 m!817077))

(declare-fun m!817079 () Bool)

(assert (=> b!877006 m!817079))

(declare-fun m!817081 () Bool)

(assert (=> b!877006 m!817081))

(assert (=> b!877006 m!817081))

(declare-fun m!817083 () Bool)

(assert (=> b!877006 m!817083))

(assert (=> b!877008 m!817081))

(assert (=> b!877008 m!817081))

(assert (=> b!877008 m!817083))

(assert (=> d!108581 d!108637))

(assert (=> d!108581 d!108583))

(declare-fun d!108639 () Bool)

(assert (=> d!108639 (= (apply!377 lt!396763 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12908 (getValueByKey!418 (toList!5205 lt!396763) (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))))

(declare-fun bs!24614 () Bool)

(assert (= bs!24614 d!108639))

(assert (=> bs!24614 m!816769))

(declare-fun m!817085 () Bool)

(assert (=> bs!24614 m!817085))

(assert (=> bs!24614 m!817085))

(declare-fun m!817087 () Bool)

(assert (=> bs!24614 m!817087))

(assert (=> b!876829 d!108639))

(declare-fun d!108641 () Bool)

(declare-fun c!92629 () Bool)

(assert (=> d!108641 (= c!92629 ((_ is ValueCellFull!8274) (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun e!488233 () V!28283)

(assert (=> d!108641 (= (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)) e!488233)))

(declare-fun b!877009 () Bool)

(assert (=> b!877009 (= e!488233 (get!12906 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!877010 () Bool)

(assert (=> b!877010 (= e!488233 (get!12907 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108641 c!92629) b!877009))

(assert (= (and d!108641 (not c!92629)) b!877010))

(assert (=> b!877009 m!816819))

(assert (=> b!877009 m!816603))

(declare-fun m!817089 () Bool)

(assert (=> b!877009 m!817089))

(assert (=> b!877010 m!816819))

(assert (=> b!877010 m!816603))

(declare-fun m!817091 () Bool)

(assert (=> b!877010 m!817091))

(assert (=> b!876829 d!108641))

(declare-fun d!108643 () Bool)

(declare-fun e!488234 () Bool)

(assert (=> d!108643 e!488234))

(declare-fun res!595952 () Bool)

(assert (=> d!108643 (=> res!595952 e!488234)))

(declare-fun lt!396866 () Bool)

(assert (=> d!108643 (= res!595952 (not lt!396866))))

(declare-fun lt!396867 () Bool)

(assert (=> d!108643 (= lt!396866 lt!396867)))

(declare-fun lt!396865 () Unit!29940)

(declare-fun e!488235 () Unit!29940)

(assert (=> d!108643 (= lt!396865 e!488235)))

(declare-fun c!92630 () Bool)

(assert (=> d!108643 (= c!92630 lt!396867)))

(assert (=> d!108643 (= lt!396867 (containsKey!402 (toList!5205 lt!396709) (_1!5808 (tuple2!11597 k0!854 v!557))))))

(assert (=> d!108643 (= (contains!4245 lt!396709 (_1!5808 (tuple2!11597 k0!854 v!557))) lt!396866)))

(declare-fun b!877011 () Bool)

(declare-fun lt!396868 () Unit!29940)

(assert (=> b!877011 (= e!488235 lt!396868)))

(assert (=> b!877011 (= lt!396868 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396709) (_1!5808 (tuple2!11597 k0!854 v!557))))))

(assert (=> b!877011 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396709) (_1!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun b!877012 () Bool)

(declare-fun Unit!29948 () Unit!29940)

(assert (=> b!877012 (= e!488235 Unit!29948)))

(declare-fun b!877013 () Bool)

(assert (=> b!877013 (= e!488234 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396709) (_1!5808 (tuple2!11597 k0!854 v!557)))))))

(assert (= (and d!108643 c!92630) b!877011))

(assert (= (and d!108643 (not c!92630)) b!877012))

(assert (= (and d!108643 (not res!595952)) b!877013))

(declare-fun m!817093 () Bool)

(assert (=> d!108643 m!817093))

(declare-fun m!817095 () Bool)

(assert (=> b!877011 m!817095))

(assert (=> b!877011 m!816703))

(assert (=> b!877011 m!816703))

(declare-fun m!817097 () Bool)

(assert (=> b!877011 m!817097))

(assert (=> b!877013 m!816703))

(assert (=> b!877013 m!816703))

(assert (=> b!877013 m!817097))

(assert (=> d!108547 d!108643))

(declare-fun b!877014 () Bool)

(declare-fun e!488236 () Option!424)

(assert (=> b!877014 (= e!488236 (Some!423 (_2!5808 (h!18604 lt!396707))))))

(declare-fun b!877017 () Bool)

(declare-fun e!488237 () Option!424)

(assert (=> b!877017 (= e!488237 None!422)))

(declare-fun c!92631 () Bool)

(declare-fun d!108645 () Bool)

(assert (=> d!108645 (= c!92631 (and ((_ is Cons!17473) lt!396707) (= (_1!5808 (h!18604 lt!396707)) (_1!5808 (tuple2!11597 k0!854 v!557)))))))

(assert (=> d!108645 (= (getValueByKey!418 lt!396707 (_1!5808 (tuple2!11597 k0!854 v!557))) e!488236)))

(declare-fun b!877015 () Bool)

(assert (=> b!877015 (= e!488236 e!488237)))

(declare-fun c!92632 () Bool)

(assert (=> b!877015 (= c!92632 (and ((_ is Cons!17473) lt!396707) (not (= (_1!5808 (h!18604 lt!396707)) (_1!5808 (tuple2!11597 k0!854 v!557))))))))

(declare-fun b!877016 () Bool)

(assert (=> b!877016 (= e!488237 (getValueByKey!418 (t!24572 lt!396707) (_1!5808 (tuple2!11597 k0!854 v!557))))))

(assert (= (and d!108645 c!92631) b!877014))

(assert (= (and d!108645 (not c!92631)) b!877015))

(assert (= (and b!877015 c!92632) b!877016))

(assert (= (and b!877015 (not c!92632)) b!877017))

(declare-fun m!817099 () Bool)

(assert (=> b!877016 m!817099))

(assert (=> d!108547 d!108645))

(declare-fun d!108647 () Bool)

(assert (=> d!108647 (= (getValueByKey!418 lt!396707 (_1!5808 (tuple2!11597 k0!854 v!557))) (Some!423 (_2!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun lt!396869 () Unit!29940)

(assert (=> d!108647 (= lt!396869 (choose!1441 lt!396707 (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun e!488238 () Bool)

(assert (=> d!108647 e!488238))

(declare-fun res!595953 () Bool)

(assert (=> d!108647 (=> (not res!595953) (not e!488238))))

(assert (=> d!108647 (= res!595953 (isStrictlySorted!457 lt!396707))))

(assert (=> d!108647 (= (lemmaContainsTupThenGetReturnValue!234 lt!396707 (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557))) lt!396869)))

(declare-fun b!877018 () Bool)

(declare-fun res!595954 () Bool)

(assert (=> b!877018 (=> (not res!595954) (not e!488238))))

(assert (=> b!877018 (= res!595954 (containsKey!402 lt!396707 (_1!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun b!877019 () Bool)

(assert (=> b!877019 (= e!488238 (contains!4246 lt!396707 (tuple2!11597 (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557)))))))

(assert (= (and d!108647 res!595953) b!877018))

(assert (= (and b!877018 res!595954) b!877019))

(assert (=> d!108647 m!816697))

(declare-fun m!817101 () Bool)

(assert (=> d!108647 m!817101))

(declare-fun m!817103 () Bool)

(assert (=> d!108647 m!817103))

(declare-fun m!817105 () Bool)

(assert (=> b!877018 m!817105))

(declare-fun m!817107 () Bool)

(assert (=> b!877019 m!817107))

(assert (=> d!108547 d!108647))

(declare-fun b!877020 () Bool)

(declare-fun res!595955 () Bool)

(declare-fun e!488239 () Bool)

(assert (=> b!877020 (=> (not res!595955) (not e!488239))))

(declare-fun lt!396870 () List!17477)

(assert (=> b!877020 (= res!595955 (containsKey!402 lt!396870 (_1!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun b!877021 () Bool)

(assert (=> b!877021 (= e!488239 (contains!4246 lt!396870 (tuple2!11597 (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557)))))))

(declare-fun b!877022 () Bool)

(declare-fun e!488241 () List!17477)

(declare-fun call!38835 () List!17477)

(assert (=> b!877022 (= e!488241 call!38835)))

(declare-fun bm!38832 () Bool)

(declare-fun e!488240 () List!17477)

(declare-fun call!38837 () List!17477)

(declare-fun c!92636 () Bool)

(assert (=> bm!38832 (= call!38837 ($colon$colon!537 e!488240 (ite c!92636 (h!18604 (toList!5205 lt!396659)) (tuple2!11597 (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557))))))))

(declare-fun c!92635 () Bool)

(assert (=> bm!38832 (= c!92635 c!92636)))

(declare-fun b!877023 () Bool)

(assert (=> b!877023 (= e!488240 (insertStrictlySorted!272 (t!24572 (toList!5205 lt!396659)) (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun b!877024 () Bool)

(assert (=> b!877024 (= e!488241 call!38835)))

(declare-fun d!108649 () Bool)

(assert (=> d!108649 e!488239))

(declare-fun res!595956 () Bool)

(assert (=> d!108649 (=> (not res!595956) (not e!488239))))

(assert (=> d!108649 (= res!595956 (isStrictlySorted!457 lt!396870))))

(declare-fun e!488242 () List!17477)

(assert (=> d!108649 (= lt!396870 e!488242)))

(assert (=> d!108649 (= c!92636 (and ((_ is Cons!17473) (toList!5205 lt!396659)) (bvslt (_1!5808 (h!18604 (toList!5205 lt!396659))) (_1!5808 (tuple2!11597 k0!854 v!557)))))))

(assert (=> d!108649 (isStrictlySorted!457 (toList!5205 lt!396659))))

(assert (=> d!108649 (= (insertStrictlySorted!272 (toList!5205 lt!396659) (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557))) lt!396870)))

(declare-fun c!92634 () Bool)

(declare-fun b!877025 () Bool)

(assert (=> b!877025 (= c!92634 (and ((_ is Cons!17473) (toList!5205 lt!396659)) (bvsgt (_1!5808 (h!18604 (toList!5205 lt!396659))) (_1!5808 (tuple2!11597 k0!854 v!557)))))))

(declare-fun e!488243 () List!17477)

(assert (=> b!877025 (= e!488243 e!488241)))

(declare-fun bm!38833 () Bool)

(declare-fun call!38836 () List!17477)

(assert (=> bm!38833 (= call!38836 call!38837)))

(declare-fun b!877026 () Bool)

(assert (=> b!877026 (= e!488243 call!38836)))

(declare-fun b!877027 () Bool)

(assert (=> b!877027 (= e!488242 call!38837)))

(declare-fun bm!38834 () Bool)

(assert (=> bm!38834 (= call!38835 call!38836)))

(declare-fun c!92633 () Bool)

(declare-fun b!877028 () Bool)

(assert (=> b!877028 (= e!488240 (ite c!92633 (t!24572 (toList!5205 lt!396659)) (ite c!92634 (Cons!17473 (h!18604 (toList!5205 lt!396659)) (t!24572 (toList!5205 lt!396659))) Nil!17474)))))

(declare-fun b!877029 () Bool)

(assert (=> b!877029 (= e!488242 e!488243)))

(assert (=> b!877029 (= c!92633 (and ((_ is Cons!17473) (toList!5205 lt!396659)) (= (_1!5808 (h!18604 (toList!5205 lt!396659))) (_1!5808 (tuple2!11597 k0!854 v!557)))))))

(assert (= (and d!108649 c!92636) b!877027))

(assert (= (and d!108649 (not c!92636)) b!877029))

(assert (= (and b!877029 c!92633) b!877026))

(assert (= (and b!877029 (not c!92633)) b!877025))

(assert (= (and b!877025 c!92634) b!877024))

(assert (= (and b!877025 (not c!92634)) b!877022))

(assert (= (or b!877024 b!877022) bm!38834))

(assert (= (or b!877026 bm!38834) bm!38833))

(assert (= (or b!877027 bm!38833) bm!38832))

(assert (= (and bm!38832 c!92635) b!877023))

(assert (= (and bm!38832 (not c!92635)) b!877028))

(assert (= (and d!108649 res!595956) b!877020))

(assert (= (and b!877020 res!595955) b!877021))

(declare-fun m!817109 () Bool)

(assert (=> d!108649 m!817109))

(declare-fun m!817111 () Bool)

(assert (=> d!108649 m!817111))

(declare-fun m!817113 () Bool)

(assert (=> b!877020 m!817113))

(declare-fun m!817115 () Bool)

(assert (=> b!877023 m!817115))

(declare-fun m!817117 () Bool)

(assert (=> bm!38832 m!817117))

(declare-fun m!817119 () Bool)

(assert (=> b!877021 m!817119))

(assert (=> d!108547 d!108649))

(declare-fun lt!396871 () Bool)

(declare-fun d!108651 () Bool)

(assert (=> d!108651 (= lt!396871 (select (content!393 (toList!5205 lt!396772)) (tuple2!11597 k0!854 v!557)))))

(declare-fun e!488244 () Bool)

(assert (=> d!108651 (= lt!396871 e!488244)))

(declare-fun res!595958 () Bool)

(assert (=> d!108651 (=> (not res!595958) (not e!488244))))

(assert (=> d!108651 (= res!595958 ((_ is Cons!17473) (toList!5205 lt!396772)))))

(assert (=> d!108651 (= (contains!4246 (toList!5205 lt!396772) (tuple2!11597 k0!854 v!557)) lt!396871)))

(declare-fun b!877030 () Bool)

(declare-fun e!488245 () Bool)

(assert (=> b!877030 (= e!488244 e!488245)))

(declare-fun res!595957 () Bool)

(assert (=> b!877030 (=> res!595957 e!488245)))

(assert (=> b!877030 (= res!595957 (= (h!18604 (toList!5205 lt!396772)) (tuple2!11597 k0!854 v!557)))))

(declare-fun b!877031 () Bool)

(assert (=> b!877031 (= e!488245 (contains!4246 (t!24572 (toList!5205 lt!396772)) (tuple2!11597 k0!854 v!557)))))

(assert (= (and d!108651 res!595958) b!877030))

(assert (= (and b!877030 (not res!595957)) b!877031))

(declare-fun m!817121 () Bool)

(assert (=> d!108651 m!817121))

(declare-fun m!817123 () Bool)

(assert (=> d!108651 m!817123))

(declare-fun m!817125 () Bool)

(assert (=> b!877031 m!817125))

(assert (=> b!876832 d!108651))

(declare-fun b!877032 () Bool)

(declare-fun e!488249 () Bool)

(assert (=> b!877032 (= e!488249 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001))))))

(assert (=> b!877032 (bvsge (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!877033 () Bool)

(declare-fun e!488248 () Bool)

(declare-fun e!488251 () Bool)

(assert (=> b!877033 (= e!488248 e!488251)))

(assert (=> b!877033 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(declare-fun lt!396872 () ListLongMap!10379)

(declare-fun res!595961 () Bool)

(assert (=> b!877033 (= res!595961 (contains!4245 lt!396872 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001))))))

(assert (=> b!877033 (=> (not res!595961) (not e!488251))))

(declare-fun b!877035 () Bool)

(declare-fun e!488247 () Bool)

(assert (=> b!877035 (= e!488247 (isEmpty!668 lt!396872))))

(declare-fun b!877036 () Bool)

(declare-fun e!488246 () ListLongMap!10379)

(declare-fun call!38838 () ListLongMap!10379)

(assert (=> b!877036 (= e!488246 call!38838)))

(declare-fun b!877037 () Bool)

(declare-fun lt!396875 () Unit!29940)

(declare-fun lt!396874 () Unit!29940)

(assert (=> b!877037 (= lt!396875 lt!396874)))

(declare-fun lt!396878 () V!28283)

(declare-fun lt!396876 () (_ BitVec 64))

(declare-fun lt!396877 () ListLongMap!10379)

(declare-fun lt!396873 () (_ BitVec 64))

(assert (=> b!877037 (not (contains!4245 (+!2441 lt!396877 (tuple2!11597 lt!396873 lt!396878)) lt!396876))))

(assert (=> b!877037 (= lt!396874 (addStillNotContains!204 lt!396877 lt!396873 lt!396878 lt!396876))))

(assert (=> b!877037 (= lt!396876 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!877037 (= lt!396878 (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!877037 (= lt!396873 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001)))))

(assert (=> b!877037 (= lt!396877 call!38838)))

(assert (=> b!877037 (= e!488246 (+!2441 call!38838 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001)) (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!38835 () Bool)

(assert (=> bm!38835 (= call!38838 (getCurrentListMapNoExtraKeys!3167 _keys!868 lt!396666 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!877038 () Bool)

(declare-fun e!488250 () ListLongMap!10379)

(assert (=> b!877038 (= e!488250 (ListLongMap!10380 Nil!17474))))

(declare-fun b!877039 () Bool)

(declare-fun e!488252 () Bool)

(assert (=> b!877039 (= e!488252 e!488248)))

(declare-fun c!92637 () Bool)

(assert (=> b!877039 (= c!92637 e!488249)))

(declare-fun res!595960 () Bool)

(assert (=> b!877039 (=> (not res!595960) (not e!488249))))

(assert (=> b!877039 (= res!595960 (bvslt (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(declare-fun b!877040 () Bool)

(declare-fun res!595962 () Bool)

(assert (=> b!877040 (=> (not res!595962) (not e!488252))))

(assert (=> b!877040 (= res!595962 (not (contains!4245 lt!396872 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!877034 () Bool)

(assert (=> b!877034 (= e!488247 (= lt!396872 (getCurrentListMapNoExtraKeys!3167 _keys!868 lt!396666 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun d!108653 () Bool)

(assert (=> d!108653 e!488252))

(declare-fun res!595959 () Bool)

(assert (=> d!108653 (=> (not res!595959) (not e!488252))))

(assert (=> d!108653 (= res!595959 (not (contains!4245 lt!396872 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108653 (= lt!396872 e!488250)))

(declare-fun c!92640 () Bool)

(assert (=> d!108653 (= c!92640 (bvsge (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(assert (=> d!108653 (validMask!0 mask!1196)))

(assert (=> d!108653 (= (getCurrentListMapNoExtraKeys!3167 _keys!868 lt!396666 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696) lt!396872)))

(declare-fun b!877041 () Bool)

(assert (=> b!877041 (= e!488248 e!488247)))

(declare-fun c!92638 () Bool)

(assert (=> b!877041 (= c!92638 (bvslt (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(declare-fun b!877042 () Bool)

(assert (=> b!877042 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(assert (=> b!877042 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) (size!24946 lt!396666)))))

(assert (=> b!877042 (= e!488251 (= (apply!377 lt!396872 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001))) (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!877043 () Bool)

(assert (=> b!877043 (= e!488250 e!488246)))

(declare-fun c!92639 () Bool)

(assert (=> b!877043 (= c!92639 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001))))))

(assert (= (and d!108653 c!92640) b!877038))

(assert (= (and d!108653 (not c!92640)) b!877043))

(assert (= (and b!877043 c!92639) b!877037))

(assert (= (and b!877043 (not c!92639)) b!877036))

(assert (= (or b!877037 b!877036) bm!38835))

(assert (= (and d!108653 res!595959) b!877040))

(assert (= (and b!877040 res!595962) b!877039))

(assert (= (and b!877039 res!595960) b!877032))

(assert (= (and b!877039 c!92637) b!877033))

(assert (= (and b!877039 (not c!92637)) b!877041))

(assert (= (and b!877033 res!595961) b!877042))

(assert (= (and b!877041 c!92638) b!877034))

(assert (= (and b!877041 (not c!92638)) b!877035))

(declare-fun b_lambda!12323 () Bool)

(assert (=> (not b_lambda!12323) (not b!877037)))

(assert (=> b!877037 t!24571))

(declare-fun b_and!25065 () Bool)

(assert (= b_and!25063 (and (=> t!24571 result!9513) b_and!25065)))

(declare-fun b_lambda!12325 () Bool)

(assert (=> (not b_lambda!12325) (not b!877042)))

(assert (=> b!877042 t!24571))

(declare-fun b_and!25067 () Bool)

(assert (= b_and!25065 (and (=> t!24571 result!9513) b_and!25067)))

(assert (=> b!877033 m!816901))

(assert (=> b!877033 m!816901))

(declare-fun m!817127 () Bool)

(assert (=> b!877033 m!817127))

(declare-fun m!817129 () Bool)

(assert (=> b!877040 m!817129))

(declare-fun m!817131 () Bool)

(assert (=> b!877035 m!817131))

(declare-fun m!817133 () Bool)

(assert (=> b!877037 m!817133))

(declare-fun m!817135 () Bool)

(assert (=> b!877037 m!817135))

(assert (=> b!877037 m!816603))

(declare-fun m!817137 () Bool)

(assert (=> b!877037 m!817137))

(assert (=> b!877037 m!817135))

(declare-fun m!817139 () Bool)

(assert (=> b!877037 m!817139))

(assert (=> b!877037 m!817139))

(declare-fun m!817141 () Bool)

(assert (=> b!877037 m!817141))

(assert (=> b!877037 m!816603))

(assert (=> b!877037 m!816901))

(declare-fun m!817143 () Bool)

(assert (=> b!877037 m!817143))

(declare-fun m!817145 () Bool)

(assert (=> b!877034 m!817145))

(assert (=> b!877042 m!817135))

(assert (=> b!877042 m!816603))

(assert (=> b!877042 m!817137))

(assert (=> b!877042 m!817135))

(assert (=> b!877042 m!816901))

(declare-fun m!817147 () Bool)

(assert (=> b!877042 m!817147))

(assert (=> b!877042 m!816603))

(assert (=> b!877042 m!816901))

(assert (=> bm!38835 m!817145))

(assert (=> b!877043 m!816901))

(assert (=> b!877043 m!816901))

(assert (=> b!877043 m!816925))

(declare-fun m!817149 () Bool)

(assert (=> d!108653 m!817149))

(assert (=> d!108653 m!816611))

(assert (=> b!877032 m!816901))

(assert (=> b!877032 m!816901))

(assert (=> b!877032 m!816925))

(assert (=> bm!38802 d!108653))

(assert (=> bm!38808 d!108575))

(declare-fun d!108655 () Bool)

(declare-fun e!488253 () Bool)

(assert (=> d!108655 e!488253))

(declare-fun res!595963 () Bool)

(assert (=> d!108655 (=> res!595963 e!488253)))

(declare-fun lt!396880 () Bool)

(assert (=> d!108655 (= res!595963 (not lt!396880))))

(declare-fun lt!396881 () Bool)

(assert (=> d!108655 (= lt!396880 lt!396881)))

(declare-fun lt!396879 () Unit!29940)

(declare-fun e!488254 () Unit!29940)

(assert (=> d!108655 (= lt!396879 e!488254)))

(declare-fun c!92641 () Bool)

(assert (=> d!108655 (= c!92641 lt!396881)))

(assert (=> d!108655 (= lt!396881 (containsKey!402 (toList!5205 lt!396720) (_1!5808 (tuple2!11597 k0!854 lt!396668))))))

(assert (=> d!108655 (= (contains!4245 lt!396720 (_1!5808 (tuple2!11597 k0!854 lt!396668))) lt!396880)))

(declare-fun b!877044 () Bool)

(declare-fun lt!396882 () Unit!29940)

(assert (=> b!877044 (= e!488254 lt!396882)))

(assert (=> b!877044 (= lt!396882 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396720) (_1!5808 (tuple2!11597 k0!854 lt!396668))))))

(assert (=> b!877044 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396720) (_1!5808 (tuple2!11597 k0!854 lt!396668))))))

(declare-fun b!877045 () Bool)

(declare-fun Unit!29949 () Unit!29940)

(assert (=> b!877045 (= e!488254 Unit!29949)))

(declare-fun b!877046 () Bool)

(assert (=> b!877046 (= e!488253 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396720) (_1!5808 (tuple2!11597 k0!854 lt!396668)))))))

(assert (= (and d!108655 c!92641) b!877044))

(assert (= (and d!108655 (not c!92641)) b!877045))

(assert (= (and d!108655 (not res!595963)) b!877046))

(declare-fun m!817151 () Bool)

(assert (=> d!108655 m!817151))

(declare-fun m!817153 () Bool)

(assert (=> b!877044 m!817153))

(assert (=> b!877044 m!816733))

(assert (=> b!877044 m!816733))

(declare-fun m!817155 () Bool)

(assert (=> b!877044 m!817155))

(assert (=> b!877046 m!816733))

(assert (=> b!877046 m!816733))

(assert (=> b!877046 m!817155))

(assert (=> d!108553 d!108655))

(declare-fun b!877047 () Bool)

(declare-fun e!488255 () Option!424)

(assert (=> b!877047 (= e!488255 (Some!423 (_2!5808 (h!18604 lt!396718))))))

(declare-fun b!877050 () Bool)

(declare-fun e!488256 () Option!424)

(assert (=> b!877050 (= e!488256 None!422)))

(declare-fun d!108657 () Bool)

(declare-fun c!92642 () Bool)

(assert (=> d!108657 (= c!92642 (and ((_ is Cons!17473) lt!396718) (= (_1!5808 (h!18604 lt!396718)) (_1!5808 (tuple2!11597 k0!854 lt!396668)))))))

(assert (=> d!108657 (= (getValueByKey!418 lt!396718 (_1!5808 (tuple2!11597 k0!854 lt!396668))) e!488255)))

(declare-fun b!877048 () Bool)

(assert (=> b!877048 (= e!488255 e!488256)))

(declare-fun c!92643 () Bool)

(assert (=> b!877048 (= c!92643 (and ((_ is Cons!17473) lt!396718) (not (= (_1!5808 (h!18604 lt!396718)) (_1!5808 (tuple2!11597 k0!854 lt!396668))))))))

(declare-fun b!877049 () Bool)

(assert (=> b!877049 (= e!488256 (getValueByKey!418 (t!24572 lt!396718) (_1!5808 (tuple2!11597 k0!854 lt!396668))))))

(assert (= (and d!108657 c!92642) b!877047))

(assert (= (and d!108657 (not c!92642)) b!877048))

(assert (= (and b!877048 c!92643) b!877049))

(assert (= (and b!877048 (not c!92643)) b!877050))

(declare-fun m!817157 () Bool)

(assert (=> b!877049 m!817157))

(assert (=> d!108553 d!108657))

(declare-fun d!108659 () Bool)

(assert (=> d!108659 (= (getValueByKey!418 lt!396718 (_1!5808 (tuple2!11597 k0!854 lt!396668))) (Some!423 (_2!5808 (tuple2!11597 k0!854 lt!396668))))))

(declare-fun lt!396883 () Unit!29940)

(assert (=> d!108659 (= lt!396883 (choose!1441 lt!396718 (_1!5808 (tuple2!11597 k0!854 lt!396668)) (_2!5808 (tuple2!11597 k0!854 lt!396668))))))

(declare-fun e!488257 () Bool)

(assert (=> d!108659 e!488257))

(declare-fun res!595964 () Bool)

(assert (=> d!108659 (=> (not res!595964) (not e!488257))))

(assert (=> d!108659 (= res!595964 (isStrictlySorted!457 lt!396718))))

(assert (=> d!108659 (= (lemmaContainsTupThenGetReturnValue!234 lt!396718 (_1!5808 (tuple2!11597 k0!854 lt!396668)) (_2!5808 (tuple2!11597 k0!854 lt!396668))) lt!396883)))

(declare-fun b!877051 () Bool)

(declare-fun res!595965 () Bool)

(assert (=> b!877051 (=> (not res!595965) (not e!488257))))

(assert (=> b!877051 (= res!595965 (containsKey!402 lt!396718 (_1!5808 (tuple2!11597 k0!854 lt!396668))))))

(declare-fun b!877052 () Bool)

(assert (=> b!877052 (= e!488257 (contains!4246 lt!396718 (tuple2!11597 (_1!5808 (tuple2!11597 k0!854 lt!396668)) (_2!5808 (tuple2!11597 k0!854 lt!396668)))))))

(assert (= (and d!108659 res!595964) b!877051))

(assert (= (and b!877051 res!595965) b!877052))

(assert (=> d!108659 m!816727))

(declare-fun m!817159 () Bool)

(assert (=> d!108659 m!817159))

(declare-fun m!817161 () Bool)

(assert (=> d!108659 m!817161))

(declare-fun m!817163 () Bool)

(assert (=> b!877051 m!817163))

(declare-fun m!817165 () Bool)

(assert (=> b!877052 m!817165))

(assert (=> d!108553 d!108659))

(declare-fun b!877053 () Bool)

(declare-fun res!595966 () Bool)

(declare-fun e!488258 () Bool)

(assert (=> b!877053 (=> (not res!595966) (not e!488258))))

(declare-fun lt!396884 () List!17477)

(assert (=> b!877053 (= res!595966 (containsKey!402 lt!396884 (_1!5808 (tuple2!11597 k0!854 lt!396668))))))

(declare-fun b!877054 () Bool)

(assert (=> b!877054 (= e!488258 (contains!4246 lt!396884 (tuple2!11597 (_1!5808 (tuple2!11597 k0!854 lt!396668)) (_2!5808 (tuple2!11597 k0!854 lt!396668)))))))

(declare-fun b!877055 () Bool)

(declare-fun e!488260 () List!17477)

(declare-fun call!38839 () List!17477)

(assert (=> b!877055 (= e!488260 call!38839)))

(declare-fun call!38841 () List!17477)

(declare-fun c!92647 () Bool)

(declare-fun e!488259 () List!17477)

(declare-fun bm!38836 () Bool)

(assert (=> bm!38836 (= call!38841 ($colon$colon!537 e!488259 (ite c!92647 (h!18604 (toList!5205 lt!396665)) (tuple2!11597 (_1!5808 (tuple2!11597 k0!854 lt!396668)) (_2!5808 (tuple2!11597 k0!854 lt!396668))))))))

(declare-fun c!92646 () Bool)

(assert (=> bm!38836 (= c!92646 c!92647)))

(declare-fun b!877056 () Bool)

(assert (=> b!877056 (= e!488259 (insertStrictlySorted!272 (t!24572 (toList!5205 lt!396665)) (_1!5808 (tuple2!11597 k0!854 lt!396668)) (_2!5808 (tuple2!11597 k0!854 lt!396668))))))

(declare-fun b!877057 () Bool)

(assert (=> b!877057 (= e!488260 call!38839)))

(declare-fun d!108661 () Bool)

(assert (=> d!108661 e!488258))

(declare-fun res!595967 () Bool)

(assert (=> d!108661 (=> (not res!595967) (not e!488258))))

(assert (=> d!108661 (= res!595967 (isStrictlySorted!457 lt!396884))))

(declare-fun e!488261 () List!17477)

(assert (=> d!108661 (= lt!396884 e!488261)))

(assert (=> d!108661 (= c!92647 (and ((_ is Cons!17473) (toList!5205 lt!396665)) (bvslt (_1!5808 (h!18604 (toList!5205 lt!396665))) (_1!5808 (tuple2!11597 k0!854 lt!396668)))))))

(assert (=> d!108661 (isStrictlySorted!457 (toList!5205 lt!396665))))

(assert (=> d!108661 (= (insertStrictlySorted!272 (toList!5205 lt!396665) (_1!5808 (tuple2!11597 k0!854 lt!396668)) (_2!5808 (tuple2!11597 k0!854 lt!396668))) lt!396884)))

(declare-fun c!92645 () Bool)

(declare-fun b!877058 () Bool)

(assert (=> b!877058 (= c!92645 (and ((_ is Cons!17473) (toList!5205 lt!396665)) (bvsgt (_1!5808 (h!18604 (toList!5205 lt!396665))) (_1!5808 (tuple2!11597 k0!854 lt!396668)))))))

(declare-fun e!488262 () List!17477)

(assert (=> b!877058 (= e!488262 e!488260)))

(declare-fun bm!38837 () Bool)

(declare-fun call!38840 () List!17477)

(assert (=> bm!38837 (= call!38840 call!38841)))

(declare-fun b!877059 () Bool)

(assert (=> b!877059 (= e!488262 call!38840)))

(declare-fun b!877060 () Bool)

(assert (=> b!877060 (= e!488261 call!38841)))

(declare-fun bm!38838 () Bool)

(assert (=> bm!38838 (= call!38839 call!38840)))

(declare-fun b!877061 () Bool)

(declare-fun c!92644 () Bool)

(assert (=> b!877061 (= e!488259 (ite c!92644 (t!24572 (toList!5205 lt!396665)) (ite c!92645 (Cons!17473 (h!18604 (toList!5205 lt!396665)) (t!24572 (toList!5205 lt!396665))) Nil!17474)))))

(declare-fun b!877062 () Bool)

(assert (=> b!877062 (= e!488261 e!488262)))

(assert (=> b!877062 (= c!92644 (and ((_ is Cons!17473) (toList!5205 lt!396665)) (= (_1!5808 (h!18604 (toList!5205 lt!396665))) (_1!5808 (tuple2!11597 k0!854 lt!396668)))))))

(assert (= (and d!108661 c!92647) b!877060))

(assert (= (and d!108661 (not c!92647)) b!877062))

(assert (= (and b!877062 c!92644) b!877059))

(assert (= (and b!877062 (not c!92644)) b!877058))

(assert (= (and b!877058 c!92645) b!877057))

(assert (= (and b!877058 (not c!92645)) b!877055))

(assert (= (or b!877057 b!877055) bm!38838))

(assert (= (or b!877059 bm!38838) bm!38837))

(assert (= (or b!877060 bm!38837) bm!38836))

(assert (= (and bm!38836 c!92646) b!877056))

(assert (= (and bm!38836 (not c!92646)) b!877061))

(assert (= (and d!108661 res!595967) b!877053))

(assert (= (and b!877053 res!595966) b!877054))

(declare-fun m!817167 () Bool)

(assert (=> d!108661 m!817167))

(declare-fun m!817169 () Bool)

(assert (=> d!108661 m!817169))

(declare-fun m!817171 () Bool)

(assert (=> b!877053 m!817171))

(declare-fun m!817173 () Bool)

(assert (=> b!877056 m!817173))

(declare-fun m!817175 () Bool)

(assert (=> bm!38836 m!817175))

(declare-fun m!817177 () Bool)

(assert (=> b!877054 m!817177))

(assert (=> d!108553 d!108661))

(assert (=> b!876788 d!108653))

(assert (=> b!876833 d!108569))

(declare-fun b!877063 () Bool)

(declare-fun e!488266 () Bool)

(assert (=> b!877063 (= e!488266 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd from!1053 #b00000000000000000000000000000001))))))

(assert (=> b!877063 (bvsge (bvadd from!1053 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!877064 () Bool)

(declare-fun e!488265 () Bool)

(declare-fun e!488268 () Bool)

(assert (=> b!877064 (= e!488265 e!488268)))

(assert (=> b!877064 (and (bvsge (bvadd from!1053 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(declare-fun res!595970 () Bool)

(declare-fun lt!396885 () ListLongMap!10379)

(assert (=> b!877064 (= res!595970 (contains!4245 lt!396885 (select (arr!24504 _keys!868) (bvadd from!1053 #b00000000000000000000000000000001))))))

(assert (=> b!877064 (=> (not res!595970) (not e!488268))))

(declare-fun b!877066 () Bool)

(declare-fun e!488264 () Bool)

(assert (=> b!877066 (= e!488264 (isEmpty!668 lt!396885))))

(declare-fun b!877067 () Bool)

(declare-fun e!488263 () ListLongMap!10379)

(declare-fun call!38842 () ListLongMap!10379)

(assert (=> b!877067 (= e!488263 call!38842)))

(declare-fun b!877068 () Bool)

(declare-fun lt!396888 () Unit!29940)

(declare-fun lt!396887 () Unit!29940)

(assert (=> b!877068 (= lt!396888 lt!396887)))

(declare-fun lt!396886 () (_ BitVec 64))

(declare-fun lt!396890 () ListLongMap!10379)

(declare-fun lt!396889 () (_ BitVec 64))

(declare-fun lt!396891 () V!28283)

(assert (=> b!877068 (not (contains!4245 (+!2441 lt!396890 (tuple2!11597 lt!396886 lt!396891)) lt!396889))))

(assert (=> b!877068 (= lt!396887 (addStillNotContains!204 lt!396890 lt!396886 lt!396891 lt!396889))))

(assert (=> b!877068 (= lt!396889 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!877068 (= lt!396891 (get!12905 (select (arr!24505 lt!396666) (bvadd from!1053 #b00000000000000000000000000000001)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!877068 (= lt!396886 (select (arr!24504 _keys!868) (bvadd from!1053 #b00000000000000000000000000000001)))))

(assert (=> b!877068 (= lt!396890 call!38842)))

(assert (=> b!877068 (= e!488263 (+!2441 call!38842 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd from!1053 #b00000000000000000000000000000001)) (get!12905 (select (arr!24505 lt!396666) (bvadd from!1053 #b00000000000000000000000000000001)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!38839 () Bool)

(assert (=> bm!38839 (= call!38842 (getCurrentListMapNoExtraKeys!3167 _keys!868 lt!396666 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!877069 () Bool)

(declare-fun e!488267 () ListLongMap!10379)

(assert (=> b!877069 (= e!488267 (ListLongMap!10380 Nil!17474))))

(declare-fun b!877070 () Bool)

(declare-fun e!488269 () Bool)

(assert (=> b!877070 (= e!488269 e!488265)))

(declare-fun c!92648 () Bool)

(assert (=> b!877070 (= c!92648 e!488266)))

(declare-fun res!595969 () Bool)

(assert (=> b!877070 (=> (not res!595969) (not e!488266))))

(assert (=> b!877070 (= res!595969 (bvslt (bvadd from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(declare-fun b!877071 () Bool)

(declare-fun res!595971 () Bool)

(assert (=> b!877071 (=> (not res!595971) (not e!488269))))

(assert (=> b!877071 (= res!595971 (not (contains!4245 lt!396885 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!877065 () Bool)

(assert (=> b!877065 (= e!488264 (= lt!396885 (getCurrentListMapNoExtraKeys!3167 _keys!868 lt!396666 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun d!108663 () Bool)

(assert (=> d!108663 e!488269))

(declare-fun res!595968 () Bool)

(assert (=> d!108663 (=> (not res!595968) (not e!488269))))

(assert (=> d!108663 (= res!595968 (not (contains!4245 lt!396885 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108663 (= lt!396885 e!488267)))

(declare-fun c!92651 () Bool)

(assert (=> d!108663 (= c!92651 (bvsge (bvadd from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(assert (=> d!108663 (validMask!0 mask!1196)))

(assert (=> d!108663 (= (getCurrentListMapNoExtraKeys!3167 _keys!868 lt!396666 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696) lt!396885)))

(declare-fun b!877072 () Bool)

(assert (=> b!877072 (= e!488265 e!488264)))

(declare-fun c!92649 () Bool)

(assert (=> b!877072 (= c!92649 (bvslt (bvadd from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(declare-fun b!877073 () Bool)

(assert (=> b!877073 (and (bvsge (bvadd from!1053 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(assert (=> b!877073 (and (bvsge (bvadd from!1053 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1053 #b00000000000000000000000000000001) (size!24946 lt!396666)))))

(assert (=> b!877073 (= e!488268 (= (apply!377 lt!396885 (select (arr!24504 _keys!868) (bvadd from!1053 #b00000000000000000000000000000001))) (get!12905 (select (arr!24505 lt!396666) (bvadd from!1053 #b00000000000000000000000000000001)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!877074 () Bool)

(assert (=> b!877074 (= e!488267 e!488263)))

(declare-fun c!92650 () Bool)

(assert (=> b!877074 (= c!92650 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd from!1053 #b00000000000000000000000000000001))))))

(assert (= (and d!108663 c!92651) b!877069))

(assert (= (and d!108663 (not c!92651)) b!877074))

(assert (= (and b!877074 c!92650) b!877068))

(assert (= (and b!877074 (not c!92650)) b!877067))

(assert (= (or b!877068 b!877067) bm!38839))

(assert (= (and d!108663 res!595968) b!877071))

(assert (= (and b!877071 res!595971) b!877070))

(assert (= (and b!877070 res!595969) b!877063))

(assert (= (and b!877070 c!92648) b!877064))

(assert (= (and b!877070 (not c!92648)) b!877072))

(assert (= (and b!877064 res!595970) b!877073))

(assert (= (and b!877072 c!92649) b!877065))

(assert (= (and b!877072 (not c!92649)) b!877066))

(declare-fun b_lambda!12327 () Bool)

(assert (=> (not b_lambda!12327) (not b!877068)))

(assert (=> b!877068 t!24571))

(declare-fun b_and!25069 () Bool)

(assert (= b_and!25067 (and (=> t!24571 result!9513) b_and!25069)))

(declare-fun b_lambda!12329 () Bool)

(assert (=> (not b_lambda!12329) (not b!877073)))

(assert (=> b!877073 t!24571))

(declare-fun b_and!25071 () Bool)

(assert (= b_and!25069 (and (=> t!24571 result!9513) b_and!25071)))

(declare-fun m!817179 () Bool)

(assert (=> b!877064 m!817179))

(assert (=> b!877064 m!817179))

(declare-fun m!817181 () Bool)

(assert (=> b!877064 m!817181))

(declare-fun m!817183 () Bool)

(assert (=> b!877071 m!817183))

(declare-fun m!817185 () Bool)

(assert (=> b!877066 m!817185))

(declare-fun m!817187 () Bool)

(assert (=> b!877068 m!817187))

(declare-fun m!817189 () Bool)

(assert (=> b!877068 m!817189))

(assert (=> b!877068 m!816603))

(declare-fun m!817191 () Bool)

(assert (=> b!877068 m!817191))

(assert (=> b!877068 m!817189))

(declare-fun m!817193 () Bool)

(assert (=> b!877068 m!817193))

(assert (=> b!877068 m!817193))

(declare-fun m!817195 () Bool)

(assert (=> b!877068 m!817195))

(assert (=> b!877068 m!816603))

(assert (=> b!877068 m!817179))

(declare-fun m!817197 () Bool)

(assert (=> b!877068 m!817197))

(declare-fun m!817199 () Bool)

(assert (=> b!877065 m!817199))

(assert (=> b!877073 m!817189))

(assert (=> b!877073 m!816603))

(assert (=> b!877073 m!817191))

(assert (=> b!877073 m!817189))

(assert (=> b!877073 m!817179))

(declare-fun m!817201 () Bool)

(assert (=> b!877073 m!817201))

(assert (=> b!877073 m!816603))

(assert (=> b!877073 m!817179))

(assert (=> bm!38839 m!817199))

(assert (=> b!877074 m!817179))

(assert (=> b!877074 m!817179))

(declare-fun m!817203 () Bool)

(assert (=> b!877074 m!817203))

(declare-fun m!817205 () Bool)

(assert (=> d!108663 m!817205))

(assert (=> d!108663 m!816611))

(assert (=> b!877063 m!817179))

(assert (=> b!877063 m!817179))

(assert (=> b!877063 m!817203))

(assert (=> b!876835 d!108663))

(declare-fun d!108665 () Bool)

(declare-fun e!488270 () Bool)

(assert (=> d!108665 e!488270))

(declare-fun res!595972 () Bool)

(assert (=> d!108665 (=> res!595972 e!488270)))

(declare-fun lt!396893 () Bool)

(assert (=> d!108665 (= res!595972 (not lt!396893))))

(declare-fun lt!396894 () Bool)

(assert (=> d!108665 (= lt!396893 lt!396894)))

(declare-fun lt!396892 () Unit!29940)

(declare-fun e!488271 () Unit!29940)

(assert (=> d!108665 (= lt!396892 e!488271)))

(declare-fun c!92652 () Bool)

(assert (=> d!108665 (= c!92652 lt!396894)))

(assert (=> d!108665 (= lt!396894 (containsKey!402 (toList!5205 lt!396763) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!108665 (= (contains!4245 lt!396763 #b1000000000000000000000000000000000000000000000000000000000000000) lt!396893)))

(declare-fun b!877075 () Bool)

(declare-fun lt!396895 () Unit!29940)

(assert (=> b!877075 (= e!488271 lt!396895)))

(assert (=> b!877075 (= lt!396895 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396763) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!877075 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396763) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!877076 () Bool)

(declare-fun Unit!29950 () Unit!29940)

(assert (=> b!877076 (= e!488271 Unit!29950)))

(declare-fun b!877077 () Bool)

(assert (=> b!877077 (= e!488270 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396763) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108665 c!92652) b!877075))

(assert (= (and d!108665 (not c!92652)) b!877076))

(assert (= (and d!108665 (not res!595972)) b!877077))

(declare-fun m!817207 () Bool)

(assert (=> d!108665 m!817207))

(declare-fun m!817209 () Bool)

(assert (=> b!877075 m!817209))

(declare-fun m!817211 () Bool)

(assert (=> b!877075 m!817211))

(assert (=> b!877075 m!817211))

(declare-fun m!817213 () Bool)

(assert (=> b!877075 m!817213))

(assert (=> b!877077 m!817211))

(assert (=> b!877077 m!817211))

(assert (=> b!877077 m!817213))

(assert (=> b!876827 d!108665))

(declare-fun d!108667 () Bool)

(declare-fun isEmpty!669 (List!17477) Bool)

(assert (=> d!108667 (= (isEmpty!668 lt!396781) (isEmpty!669 (toList!5205 lt!396781)))))

(declare-fun bs!24615 () Bool)

(assert (= bs!24615 d!108667))

(declare-fun m!817215 () Bool)

(assert (=> bs!24615 m!817215))

(assert (=> b!876848 d!108667))

(assert (=> bm!38813 d!108663))

(declare-fun d!108669 () Bool)

(assert (=> d!108669 (= (validKeyInArray!0 (select (arr!24504 _keys!868) #b00000000000000000000000000000000)) (and (not (= (select (arr!24504 _keys!868) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!24504 _keys!868) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!876737 d!108669))

(declare-fun d!108671 () Bool)

(declare-fun e!488272 () Bool)

(assert (=> d!108671 e!488272))

(declare-fun res!595973 () Bool)

(assert (=> d!108671 (=> res!595973 e!488272)))

(declare-fun lt!396897 () Bool)

(assert (=> d!108671 (= res!595973 (not lt!396897))))

(declare-fun lt!396898 () Bool)

(assert (=> d!108671 (= lt!396897 lt!396898)))

(declare-fun lt!396896 () Unit!29940)

(declare-fun e!488273 () Unit!29940)

(assert (=> d!108671 (= lt!396896 e!488273)))

(declare-fun c!92653 () Bool)

(assert (=> d!108671 (= c!92653 lt!396898)))

(assert (=> d!108671 (= lt!396898 (containsKey!402 (toList!5205 lt!396781) (select (arr!24504 _keys!868) from!1053)))))

(assert (=> d!108671 (= (contains!4245 lt!396781 (select (arr!24504 _keys!868) from!1053)) lt!396897)))

(declare-fun b!877078 () Bool)

(declare-fun lt!396899 () Unit!29940)

(assert (=> b!877078 (= e!488273 lt!396899)))

(assert (=> b!877078 (= lt!396899 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396781) (select (arr!24504 _keys!868) from!1053)))))

(assert (=> b!877078 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396781) (select (arr!24504 _keys!868) from!1053)))))

(declare-fun b!877079 () Bool)

(declare-fun Unit!29951 () Unit!29940)

(assert (=> b!877079 (= e!488273 Unit!29951)))

(declare-fun b!877080 () Bool)

(assert (=> b!877080 (= e!488272 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396781) (select (arr!24504 _keys!868) from!1053))))))

(assert (= (and d!108671 c!92653) b!877078))

(assert (= (and d!108671 (not c!92653)) b!877079))

(assert (= (and d!108671 (not res!595973)) b!877080))

(assert (=> d!108671 m!816575))

(declare-fun m!817217 () Bool)

(assert (=> d!108671 m!817217))

(assert (=> b!877078 m!816575))

(declare-fun m!817219 () Bool)

(assert (=> b!877078 m!817219))

(assert (=> b!877078 m!816575))

(assert (=> b!877078 m!817019))

(assert (=> b!877078 m!817019))

(declare-fun m!817221 () Bool)

(assert (=> b!877078 m!817221))

(assert (=> b!877080 m!816575))

(assert (=> b!877080 m!817019))

(assert (=> b!877080 m!817019))

(assert (=> b!877080 m!817221))

(assert (=> b!876846 d!108671))

(declare-fun b!877081 () Bool)

(declare-fun e!488274 () Option!424)

(assert (=> b!877081 (= e!488274 (Some!423 (_2!5808 (h!18604 (toList!5205 lt!396724)))))))

(declare-fun b!877084 () Bool)

(declare-fun e!488275 () Option!424)

(assert (=> b!877084 (= e!488275 None!422)))

(declare-fun d!108673 () Bool)

(declare-fun c!92654 () Bool)

(assert (=> d!108673 (= c!92654 (and ((_ is Cons!17473) (toList!5205 lt!396724)) (= (_1!5808 (h!18604 (toList!5205 lt!396724))) (_1!5808 lt!396662))))))

(assert (=> d!108673 (= (getValueByKey!418 (toList!5205 lt!396724) (_1!5808 lt!396662)) e!488274)))

(declare-fun b!877082 () Bool)

(assert (=> b!877082 (= e!488274 e!488275)))

(declare-fun c!92655 () Bool)

(assert (=> b!877082 (= c!92655 (and ((_ is Cons!17473) (toList!5205 lt!396724)) (not (= (_1!5808 (h!18604 (toList!5205 lt!396724))) (_1!5808 lt!396662)))))))

(declare-fun b!877083 () Bool)

(assert (=> b!877083 (= e!488275 (getValueByKey!418 (t!24572 (toList!5205 lt!396724)) (_1!5808 lt!396662)))))

(assert (= (and d!108673 c!92654) b!877081))

(assert (= (and d!108673 (not c!92654)) b!877082))

(assert (= (and b!877082 c!92655) b!877083))

(assert (= (and b!877082 (not c!92655)) b!877084))

(declare-fun m!817223 () Bool)

(assert (=> b!877083 m!817223))

(assert (=> b!876756 d!108673))

(declare-fun d!108675 () Bool)

(assert (=> d!108675 (= (get!12907 (select (arr!24505 _values!688) from!1053) lt!396663) lt!396663)))

(assert (=> b!876761 d!108675))

(declare-fun b!877085 () Bool)

(declare-fun e!488276 () Option!424)

(assert (=> b!877085 (= e!488276 (Some!423 (_2!5808 (h!18604 (toList!5205 lt!396713)))))))

(declare-fun b!877088 () Bool)

(declare-fun e!488277 () Option!424)

(assert (=> b!877088 (= e!488277 None!422)))

(declare-fun d!108677 () Bool)

(declare-fun c!92656 () Bool)

(assert (=> d!108677 (= c!92656 (and ((_ is Cons!17473) (toList!5205 lt!396713)) (= (_1!5808 (h!18604 (toList!5205 lt!396713))) (_1!5808 lt!396662))))))

(assert (=> d!108677 (= (getValueByKey!418 (toList!5205 lt!396713) (_1!5808 lt!396662)) e!488276)))

(declare-fun b!877086 () Bool)

(assert (=> b!877086 (= e!488276 e!488277)))

(declare-fun c!92657 () Bool)

(assert (=> b!877086 (= c!92657 (and ((_ is Cons!17473) (toList!5205 lt!396713)) (not (= (_1!5808 (h!18604 (toList!5205 lt!396713))) (_1!5808 lt!396662)))))))

(declare-fun b!877087 () Bool)

(assert (=> b!877087 (= e!488277 (getValueByKey!418 (t!24572 (toList!5205 lt!396713)) (_1!5808 lt!396662)))))

(assert (= (and d!108677 c!92656) b!877085))

(assert (= (and d!108677 (not c!92656)) b!877086))

(assert (= (and b!877086 c!92657) b!877087))

(assert (= (and b!877086 (not c!92657)) b!877088))

(declare-fun m!817225 () Bool)

(assert (=> b!877087 m!817225))

(assert (=> b!876746 d!108677))

(declare-fun d!108679 () Bool)

(declare-fun e!488278 () Bool)

(assert (=> d!108679 e!488278))

(declare-fun res!595974 () Bool)

(assert (=> d!108679 (=> res!595974 e!488278)))

(declare-fun lt!396901 () Bool)

(assert (=> d!108679 (= res!595974 (not lt!396901))))

(declare-fun lt!396902 () Bool)

(assert (=> d!108679 (= lt!396901 lt!396902)))

(declare-fun lt!396900 () Unit!29940)

(declare-fun e!488279 () Unit!29940)

(assert (=> d!108679 (= lt!396900 e!488279)))

(declare-fun c!92658 () Bool)

(assert (=> d!108679 (= c!92658 lt!396902)))

(assert (=> d!108679 (= lt!396902 (containsKey!402 (toList!5205 lt!396763) (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> d!108679 (= (contains!4245 lt!396763 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) lt!396901)))

(declare-fun b!877089 () Bool)

(declare-fun lt!396903 () Unit!29940)

(assert (=> b!877089 (= e!488279 lt!396903)))

(assert (=> b!877089 (= lt!396903 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396763) (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!877089 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396763) (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!877090 () Bool)

(declare-fun Unit!29952 () Unit!29940)

(assert (=> b!877090 (= e!488279 Unit!29952)))

(declare-fun b!877091 () Bool)

(assert (=> b!877091 (= e!488278 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396763) (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))))

(assert (= (and d!108679 c!92658) b!877089))

(assert (= (and d!108679 (not c!92658)) b!877090))

(assert (= (and d!108679 (not res!595974)) b!877091))

(assert (=> d!108679 m!816769))

(declare-fun m!817227 () Bool)

(assert (=> d!108679 m!817227))

(assert (=> b!877089 m!816769))

(declare-fun m!817229 () Bool)

(assert (=> b!877089 m!817229))

(assert (=> b!877089 m!816769))

(assert (=> b!877089 m!817085))

(assert (=> b!877089 m!817085))

(declare-fun m!817231 () Bool)

(assert (=> b!877089 m!817231))

(assert (=> b!877091 m!816769))

(assert (=> b!877091 m!817085))

(assert (=> b!877091 m!817085))

(assert (=> b!877091 m!817231))

(assert (=> b!876820 d!108679))

(declare-fun d!108681 () Bool)

(assert (=> d!108681 (= (apply!377 lt!396774 (select (arr!24504 _keys!868) from!1053)) (get!12908 (getValueByKey!418 (toList!5205 lt!396774) (select (arr!24504 _keys!868) from!1053))))))

(declare-fun bs!24616 () Bool)

(assert (= bs!24616 d!108681))

(assert (=> bs!24616 m!816575))

(declare-fun m!817233 () Bool)

(assert (=> bs!24616 m!817233))

(assert (=> bs!24616 m!817233))

(declare-fun m!817235 () Bool)

(assert (=> bs!24616 m!817235))

(assert (=> b!876843 d!108681))

(declare-fun d!108683 () Bool)

(declare-fun c!92659 () Bool)

(assert (=> d!108683 (= c!92659 ((_ is ValueCellFull!8274) (select (arr!24505 lt!396666) from!1053)))))

(declare-fun e!488280 () V!28283)

(assert (=> d!108683 (= (get!12905 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)) e!488280)))

(declare-fun b!877092 () Bool)

(assert (=> b!877092 (= e!488280 (get!12906 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!877093 () Bool)

(assert (=> b!877093 (= e!488280 (get!12907 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108683 c!92659) b!877092))

(assert (= (and d!108683 (not c!92659)) b!877093))

(assert (=> b!877092 m!816855))

(assert (=> b!877092 m!816603))

(declare-fun m!817237 () Bool)

(assert (=> b!877092 m!817237))

(assert (=> b!877093 m!816855))

(assert (=> b!877093 m!816603))

(declare-fun m!817239 () Bool)

(assert (=> b!877093 m!817239))

(assert (=> b!876843 d!108683))

(declare-fun d!108685 () Bool)

(declare-fun e!488281 () Bool)

(assert (=> d!108685 e!488281))

(declare-fun res!595975 () Bool)

(assert (=> d!108685 (=> res!595975 e!488281)))

(declare-fun lt!396905 () Bool)

(assert (=> d!108685 (= res!595975 (not lt!396905))))

(declare-fun lt!396906 () Bool)

(assert (=> d!108685 (= lt!396905 lt!396906)))

(declare-fun lt!396904 () Unit!29940)

(declare-fun e!488282 () Unit!29940)

(assert (=> d!108685 (= lt!396904 e!488282)))

(declare-fun c!92660 () Bool)

(assert (=> d!108685 (= c!92660 lt!396906)))

(assert (=> d!108685 (= lt!396906 (containsKey!402 (toList!5205 lt!396763) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!108685 (= (contains!4245 lt!396763 #b0000000000000000000000000000000000000000000000000000000000000000) lt!396905)))

(declare-fun b!877094 () Bool)

(declare-fun lt!396907 () Unit!29940)

(assert (=> b!877094 (= e!488282 lt!396907)))

(assert (=> b!877094 (= lt!396907 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396763) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!877094 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396763) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!877095 () Bool)

(declare-fun Unit!29953 () Unit!29940)

(assert (=> b!877095 (= e!488282 Unit!29953)))

(declare-fun b!877096 () Bool)

(assert (=> b!877096 (= e!488281 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396763) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108685 c!92660) b!877094))

(assert (= (and d!108685 (not c!92660)) b!877095))

(assert (= (and d!108685 (not res!595975)) b!877096))

(declare-fun m!817241 () Bool)

(assert (=> d!108685 m!817241))

(declare-fun m!817243 () Bool)

(assert (=> b!877094 m!817243))

(declare-fun m!817245 () Bool)

(assert (=> b!877094 m!817245))

(assert (=> b!877094 m!817245))

(declare-fun m!817247 () Bool)

(assert (=> b!877094 m!817247))

(assert (=> b!877096 m!817245))

(assert (=> b!877096 m!817245))

(assert (=> b!877096 m!817247))

(assert (=> d!108575 d!108685))

(assert (=> d!108575 d!108583))

(declare-fun lt!396908 () Bool)

(declare-fun d!108687 () Bool)

(assert (=> d!108687 (= lt!396908 (select (content!393 (toList!5205 lt!396720)) (tuple2!11597 k0!854 lt!396668)))))

(declare-fun e!488283 () Bool)

(assert (=> d!108687 (= lt!396908 e!488283)))

(declare-fun res!595977 () Bool)

(assert (=> d!108687 (=> (not res!595977) (not e!488283))))

(assert (=> d!108687 (= res!595977 ((_ is Cons!17473) (toList!5205 lt!396720)))))

(assert (=> d!108687 (= (contains!4246 (toList!5205 lt!396720) (tuple2!11597 k0!854 lt!396668)) lt!396908)))

(declare-fun b!877097 () Bool)

(declare-fun e!488284 () Bool)

(assert (=> b!877097 (= e!488283 e!488284)))

(declare-fun res!595976 () Bool)

(assert (=> b!877097 (=> res!595976 e!488284)))

(assert (=> b!877097 (= res!595976 (= (h!18604 (toList!5205 lt!396720)) (tuple2!11597 k0!854 lt!396668)))))

(declare-fun b!877098 () Bool)

(assert (=> b!877098 (= e!488284 (contains!4246 (t!24572 (toList!5205 lt!396720)) (tuple2!11597 k0!854 lt!396668)))))

(assert (= (and d!108687 res!595977) b!877097))

(assert (= (and b!877097 (not res!595976)) b!877098))

(declare-fun m!817249 () Bool)

(assert (=> d!108687 m!817249))

(declare-fun m!817251 () Bool)

(assert (=> d!108687 m!817251))

(declare-fun m!817253 () Bool)

(assert (=> b!877098 m!817253))

(assert (=> b!876749 d!108687))

(declare-fun b!877099 () Bool)

(declare-fun e!488288 () Bool)

(assert (=> b!877099 (= e!488288 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd from!1053 #b00000000000000000000000000000001))))))

(assert (=> b!877099 (bvsge (bvadd from!1053 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!877100 () Bool)

(declare-fun e!488287 () Bool)

(declare-fun e!488290 () Bool)

(assert (=> b!877100 (= e!488287 e!488290)))

(assert (=> b!877100 (and (bvsge (bvadd from!1053 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(declare-fun res!595980 () Bool)

(declare-fun lt!396909 () ListLongMap!10379)

(assert (=> b!877100 (= res!595980 (contains!4245 lt!396909 (select (arr!24504 _keys!868) (bvadd from!1053 #b00000000000000000000000000000001))))))

(assert (=> b!877100 (=> (not res!595980) (not e!488290))))

(declare-fun b!877102 () Bool)

(declare-fun e!488286 () Bool)

(assert (=> b!877102 (= e!488286 (isEmpty!668 lt!396909))))

(declare-fun b!877103 () Bool)

(declare-fun e!488285 () ListLongMap!10379)

(declare-fun call!38843 () ListLongMap!10379)

(assert (=> b!877103 (= e!488285 call!38843)))

(declare-fun b!877104 () Bool)

(declare-fun lt!396912 () Unit!29940)

(declare-fun lt!396911 () Unit!29940)

(assert (=> b!877104 (= lt!396912 lt!396911)))

(declare-fun lt!396915 () V!28283)

(declare-fun lt!396914 () ListLongMap!10379)

(declare-fun lt!396913 () (_ BitVec 64))

(declare-fun lt!396910 () (_ BitVec 64))

(assert (=> b!877104 (not (contains!4245 (+!2441 lt!396914 (tuple2!11597 lt!396910 lt!396915)) lt!396913))))

(assert (=> b!877104 (= lt!396911 (addStillNotContains!204 lt!396914 lt!396910 lt!396915 lt!396913))))

(assert (=> b!877104 (= lt!396913 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!877104 (= lt!396915 (get!12905 (select (arr!24505 _values!688) (bvadd from!1053 #b00000000000000000000000000000001)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!877104 (= lt!396910 (select (arr!24504 _keys!868) (bvadd from!1053 #b00000000000000000000000000000001)))))

(assert (=> b!877104 (= lt!396914 call!38843)))

(assert (=> b!877104 (= e!488285 (+!2441 call!38843 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd from!1053 #b00000000000000000000000000000001)) (get!12905 (select (arr!24505 _values!688) (bvadd from!1053 #b00000000000000000000000000000001)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!38840 () Bool)

(assert (=> bm!38840 (= call!38843 (getCurrentListMapNoExtraKeys!3167 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!877105 () Bool)

(declare-fun e!488289 () ListLongMap!10379)

(assert (=> b!877105 (= e!488289 (ListLongMap!10380 Nil!17474))))

(declare-fun b!877106 () Bool)

(declare-fun e!488291 () Bool)

(assert (=> b!877106 (= e!488291 e!488287)))

(declare-fun c!92661 () Bool)

(assert (=> b!877106 (= c!92661 e!488288)))

(declare-fun res!595979 () Bool)

(assert (=> b!877106 (=> (not res!595979) (not e!488288))))

(assert (=> b!877106 (= res!595979 (bvslt (bvadd from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(declare-fun b!877107 () Bool)

(declare-fun res!595981 () Bool)

(assert (=> b!877107 (=> (not res!595981) (not e!488291))))

(assert (=> b!877107 (= res!595981 (not (contains!4245 lt!396909 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!877101 () Bool)

(assert (=> b!877101 (= e!488286 (= lt!396909 (getCurrentListMapNoExtraKeys!3167 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun d!108689 () Bool)

(assert (=> d!108689 e!488291))

(declare-fun res!595978 () Bool)

(assert (=> d!108689 (=> (not res!595978) (not e!488291))))

(assert (=> d!108689 (= res!595978 (not (contains!4245 lt!396909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108689 (= lt!396909 e!488289)))

(declare-fun c!92664 () Bool)

(assert (=> d!108689 (= c!92664 (bvsge (bvadd from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(assert (=> d!108689 (validMask!0 mask!1196)))

(assert (=> d!108689 (= (getCurrentListMapNoExtraKeys!3167 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696) lt!396909)))

(declare-fun b!877108 () Bool)

(assert (=> b!877108 (= e!488287 e!488286)))

(declare-fun c!92662 () Bool)

(assert (=> b!877108 (= c!92662 (bvslt (bvadd from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(declare-fun b!877109 () Bool)

(assert (=> b!877109 (and (bvsge (bvadd from!1053 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1053 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(assert (=> b!877109 (and (bvsge (bvadd from!1053 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1053 #b00000000000000000000000000000001) (size!24946 _values!688)))))

(assert (=> b!877109 (= e!488290 (= (apply!377 lt!396909 (select (arr!24504 _keys!868) (bvadd from!1053 #b00000000000000000000000000000001))) (get!12905 (select (arr!24505 _values!688) (bvadd from!1053 #b00000000000000000000000000000001)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!877110 () Bool)

(assert (=> b!877110 (= e!488289 e!488285)))

(declare-fun c!92663 () Bool)

(assert (=> b!877110 (= c!92663 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd from!1053 #b00000000000000000000000000000001))))))

(assert (= (and d!108689 c!92664) b!877105))

(assert (= (and d!108689 (not c!92664)) b!877110))

(assert (= (and b!877110 c!92663) b!877104))

(assert (= (and b!877110 (not c!92663)) b!877103))

(assert (= (or b!877104 b!877103) bm!38840))

(assert (= (and d!108689 res!595978) b!877107))

(assert (= (and b!877107 res!595981) b!877106))

(assert (= (and b!877106 res!595979) b!877099))

(assert (= (and b!877106 c!92661) b!877100))

(assert (= (and b!877106 (not c!92661)) b!877108))

(assert (= (and b!877100 res!595980) b!877109))

(assert (= (and b!877108 c!92662) b!877101))

(assert (= (and b!877108 (not c!92662)) b!877102))

(declare-fun b_lambda!12331 () Bool)

(assert (=> (not b_lambda!12331) (not b!877104)))

(assert (=> b!877104 t!24571))

(declare-fun b_and!25073 () Bool)

(assert (= b_and!25071 (and (=> t!24571 result!9513) b_and!25073)))

(declare-fun b_lambda!12333 () Bool)

(assert (=> (not b_lambda!12333) (not b!877109)))

(assert (=> b!877109 t!24571))

(declare-fun b_and!25075 () Bool)

(assert (= b_and!25073 (and (=> t!24571 result!9513) b_and!25075)))

(assert (=> b!877100 m!817179))

(assert (=> b!877100 m!817179))

(declare-fun m!817255 () Bool)

(assert (=> b!877100 m!817255))

(declare-fun m!817257 () Bool)

(assert (=> b!877107 m!817257))

(declare-fun m!817259 () Bool)

(assert (=> b!877102 m!817259))

(declare-fun m!817261 () Bool)

(assert (=> b!877104 m!817261))

(declare-fun m!817263 () Bool)

(assert (=> b!877104 m!817263))

(assert (=> b!877104 m!816603))

(declare-fun m!817265 () Bool)

(assert (=> b!877104 m!817265))

(assert (=> b!877104 m!817263))

(declare-fun m!817267 () Bool)

(assert (=> b!877104 m!817267))

(assert (=> b!877104 m!817267))

(declare-fun m!817269 () Bool)

(assert (=> b!877104 m!817269))

(assert (=> b!877104 m!816603))

(assert (=> b!877104 m!817179))

(declare-fun m!817271 () Bool)

(assert (=> b!877104 m!817271))

(declare-fun m!817273 () Bool)

(assert (=> b!877101 m!817273))

(assert (=> b!877109 m!817263))

(assert (=> b!877109 m!816603))

(assert (=> b!877109 m!817265))

(assert (=> b!877109 m!817263))

(assert (=> b!877109 m!817179))

(declare-fun m!817275 () Bool)

(assert (=> b!877109 m!817275))

(assert (=> b!877109 m!816603))

(assert (=> b!877109 m!817179))

(assert (=> bm!38840 m!817273))

(assert (=> b!877110 m!817179))

(assert (=> b!877110 m!817179))

(assert (=> b!877110 m!817203))

(declare-fun m!817277 () Bool)

(assert (=> d!108689 m!817277))

(assert (=> d!108689 m!816611))

(assert (=> b!877099 m!817179))

(assert (=> b!877099 m!817179))

(assert (=> b!877099 m!817203))

(assert (=> bm!38814 d!108689))

(declare-fun b!877111 () Bool)

(declare-fun e!488292 () Option!424)

(assert (=> b!877111 (= e!488292 (Some!423 (_2!5808 (h!18604 (toList!5205 lt!396709)))))))

(declare-fun b!877114 () Bool)

(declare-fun e!488293 () Option!424)

(assert (=> b!877114 (= e!488293 None!422)))

(declare-fun c!92665 () Bool)

(declare-fun d!108691 () Bool)

(assert (=> d!108691 (= c!92665 (and ((_ is Cons!17473) (toList!5205 lt!396709)) (= (_1!5808 (h!18604 (toList!5205 lt!396709))) (_1!5808 (tuple2!11597 k0!854 v!557)))))))

(assert (=> d!108691 (= (getValueByKey!418 (toList!5205 lt!396709) (_1!5808 (tuple2!11597 k0!854 v!557))) e!488292)))

(declare-fun b!877112 () Bool)

(assert (=> b!877112 (= e!488292 e!488293)))

(declare-fun c!92666 () Bool)

(assert (=> b!877112 (= c!92666 (and ((_ is Cons!17473) (toList!5205 lt!396709)) (not (= (_1!5808 (h!18604 (toList!5205 lt!396709))) (_1!5808 (tuple2!11597 k0!854 v!557))))))))

(declare-fun b!877113 () Bool)

(assert (=> b!877113 (= e!488293 (getValueByKey!418 (t!24572 (toList!5205 lt!396709)) (_1!5808 (tuple2!11597 k0!854 v!557))))))

(assert (= (and d!108691 c!92665) b!877111))

(assert (= (and d!108691 (not c!92665)) b!877112))

(assert (= (and b!877112 c!92666) b!877113))

(assert (= (and b!877112 (not c!92666)) b!877114))

(declare-fun m!817279 () Bool)

(assert (=> b!877113 m!817279))

(assert (=> b!876744 d!108691))

(assert (=> b!876816 d!108669))

(declare-fun d!108693 () Bool)

(declare-fun e!488294 () Bool)

(assert (=> d!108693 e!488294))

(declare-fun res!595982 () Bool)

(assert (=> d!108693 (=> res!595982 e!488294)))

(declare-fun lt!396917 () Bool)

(assert (=> d!108693 (= res!595982 (not lt!396917))))

(declare-fun lt!396918 () Bool)

(assert (=> d!108693 (= lt!396917 lt!396918)))

(declare-fun lt!396916 () Unit!29940)

(declare-fun e!488295 () Unit!29940)

(assert (=> d!108693 (= lt!396916 e!488295)))

(declare-fun c!92667 () Bool)

(assert (=> d!108693 (= c!92667 lt!396918)))

(assert (=> d!108693 (= lt!396918 (containsKey!402 (toList!5205 lt!396744) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!108693 (= (contains!4245 lt!396744 #b0000000000000000000000000000000000000000000000000000000000000000) lt!396917)))

(declare-fun b!877115 () Bool)

(declare-fun lt!396919 () Unit!29940)

(assert (=> b!877115 (= e!488295 lt!396919)))

(assert (=> b!877115 (= lt!396919 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396744) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!877115 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396744) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!877116 () Bool)

(declare-fun Unit!29954 () Unit!29940)

(assert (=> b!877116 (= e!488295 Unit!29954)))

(declare-fun b!877117 () Bool)

(assert (=> b!877117 (= e!488294 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396744) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108693 c!92667) b!877115))

(assert (= (and d!108693 (not c!92667)) b!877116))

(assert (= (and d!108693 (not res!595982)) b!877117))

(declare-fun m!817281 () Bool)

(assert (=> d!108693 m!817281))

(declare-fun m!817283 () Bool)

(assert (=> b!877115 m!817283))

(declare-fun m!817285 () Bool)

(assert (=> b!877115 m!817285))

(assert (=> b!877115 m!817285))

(declare-fun m!817287 () Bool)

(assert (=> b!877115 m!817287))

(assert (=> b!877117 m!817285))

(assert (=> b!877117 m!817285))

(assert (=> b!877117 m!817287))

(assert (=> d!108563 d!108693))

(assert (=> d!108563 d!108583))

(declare-fun d!108695 () Bool)

(declare-fun e!488296 () Bool)

(assert (=> d!108695 e!488296))

(declare-fun res!595984 () Bool)

(assert (=> d!108695 (=> (not res!595984) (not e!488296))))

(declare-fun lt!396922 () ListLongMap!10379)

(assert (=> d!108695 (= res!595984 (contains!4245 lt!396922 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!396920 () List!17477)

(assert (=> d!108695 (= lt!396922 (ListLongMap!10380 lt!396920))))

(declare-fun lt!396921 () Unit!29940)

(declare-fun lt!396923 () Unit!29940)

(assert (=> d!108695 (= lt!396921 lt!396923)))

(assert (=> d!108695 (= (getValueByKey!418 lt!396920 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!423 (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108695 (= lt!396923 (lemmaContainsTupThenGetReturnValue!234 lt!396920 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108695 (= lt!396920 (insertStrictlySorted!272 (toList!5205 call!38815) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108695 (= (+!2441 call!38815 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!396922)))

(declare-fun b!877118 () Bool)

(declare-fun res!595983 () Bool)

(assert (=> b!877118 (=> (not res!595983) (not e!488296))))

(assert (=> b!877118 (= res!595983 (= (getValueByKey!418 (toList!5205 lt!396922) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!423 (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!877119 () Bool)

(assert (=> b!877119 (= e!488296 (contains!4246 (toList!5205 lt!396922) (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!108695 res!595984) b!877118))

(assert (= (and b!877118 res!595983) b!877119))

(declare-fun m!817289 () Bool)

(assert (=> d!108695 m!817289))

(declare-fun m!817291 () Bool)

(assert (=> d!108695 m!817291))

(declare-fun m!817293 () Bool)

(assert (=> d!108695 m!817293))

(declare-fun m!817295 () Bool)

(assert (=> d!108695 m!817295))

(declare-fun m!817297 () Bool)

(assert (=> b!877118 m!817297))

(declare-fun m!817299 () Bool)

(assert (=> b!877119 m!817299))

(assert (=> b!876824 d!108695))

(declare-fun d!108697 () Bool)

(declare-fun e!488297 () Bool)

(assert (=> d!108697 e!488297))

(declare-fun res!595985 () Bool)

(assert (=> d!108697 (=> res!595985 e!488297)))

(declare-fun lt!396925 () Bool)

(assert (=> d!108697 (= res!595985 (not lt!396925))))

(declare-fun lt!396926 () Bool)

(assert (=> d!108697 (= lt!396925 lt!396926)))

(declare-fun lt!396924 () Unit!29940)

(declare-fun e!488298 () Unit!29940)

(assert (=> d!108697 (= lt!396924 e!488298)))

(declare-fun c!92668 () Bool)

(assert (=> d!108697 (= c!92668 lt!396926)))

(assert (=> d!108697 (= lt!396926 (containsKey!402 (toList!5205 (+!2441 lt!396768 (tuple2!11597 lt!396764 lt!396769))) lt!396767))))

(assert (=> d!108697 (= (contains!4245 (+!2441 lt!396768 (tuple2!11597 lt!396764 lt!396769)) lt!396767) lt!396925)))

(declare-fun b!877120 () Bool)

(declare-fun lt!396927 () Unit!29940)

(assert (=> b!877120 (= e!488298 lt!396927)))

(assert (=> b!877120 (= lt!396927 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 (+!2441 lt!396768 (tuple2!11597 lt!396764 lt!396769))) lt!396767))))

(assert (=> b!877120 (isDefined!313 (getValueByKey!418 (toList!5205 (+!2441 lt!396768 (tuple2!11597 lt!396764 lt!396769))) lt!396767))))

(declare-fun b!877121 () Bool)

(declare-fun Unit!29955 () Unit!29940)

(assert (=> b!877121 (= e!488298 Unit!29955)))

(declare-fun b!877122 () Bool)

(assert (=> b!877122 (= e!488297 (isDefined!313 (getValueByKey!418 (toList!5205 (+!2441 lt!396768 (tuple2!11597 lt!396764 lt!396769))) lt!396767)))))

(assert (= (and d!108697 c!92668) b!877120))

(assert (= (and d!108697 (not c!92668)) b!877121))

(assert (= (and d!108697 (not res!595985)) b!877122))

(declare-fun m!817301 () Bool)

(assert (=> d!108697 m!817301))

(declare-fun m!817303 () Bool)

(assert (=> b!877120 m!817303))

(declare-fun m!817305 () Bool)

(assert (=> b!877120 m!817305))

(assert (=> b!877120 m!817305))

(declare-fun m!817307 () Bool)

(assert (=> b!877120 m!817307))

(assert (=> b!877122 m!817305))

(assert (=> b!877122 m!817305))

(assert (=> b!877122 m!817307))

(assert (=> b!876824 d!108697))

(declare-fun d!108699 () Bool)

(declare-fun e!488299 () Bool)

(assert (=> d!108699 e!488299))

(declare-fun res!595987 () Bool)

(assert (=> d!108699 (=> (not res!595987) (not e!488299))))

(declare-fun lt!396930 () ListLongMap!10379)

(assert (=> d!108699 (= res!595987 (contains!4245 lt!396930 (_1!5808 (tuple2!11597 lt!396764 lt!396769))))))

(declare-fun lt!396928 () List!17477)

(assert (=> d!108699 (= lt!396930 (ListLongMap!10380 lt!396928))))

(declare-fun lt!396929 () Unit!29940)

(declare-fun lt!396931 () Unit!29940)

(assert (=> d!108699 (= lt!396929 lt!396931)))

(assert (=> d!108699 (= (getValueByKey!418 lt!396928 (_1!5808 (tuple2!11597 lt!396764 lt!396769))) (Some!423 (_2!5808 (tuple2!11597 lt!396764 lt!396769))))))

(assert (=> d!108699 (= lt!396931 (lemmaContainsTupThenGetReturnValue!234 lt!396928 (_1!5808 (tuple2!11597 lt!396764 lt!396769)) (_2!5808 (tuple2!11597 lt!396764 lt!396769))))))

(assert (=> d!108699 (= lt!396928 (insertStrictlySorted!272 (toList!5205 lt!396768) (_1!5808 (tuple2!11597 lt!396764 lt!396769)) (_2!5808 (tuple2!11597 lt!396764 lt!396769))))))

(assert (=> d!108699 (= (+!2441 lt!396768 (tuple2!11597 lt!396764 lt!396769)) lt!396930)))

(declare-fun b!877123 () Bool)

(declare-fun res!595986 () Bool)

(assert (=> b!877123 (=> (not res!595986) (not e!488299))))

(assert (=> b!877123 (= res!595986 (= (getValueByKey!418 (toList!5205 lt!396930) (_1!5808 (tuple2!11597 lt!396764 lt!396769))) (Some!423 (_2!5808 (tuple2!11597 lt!396764 lt!396769)))))))

(declare-fun b!877124 () Bool)

(assert (=> b!877124 (= e!488299 (contains!4246 (toList!5205 lt!396930) (tuple2!11597 lt!396764 lt!396769)))))

(assert (= (and d!108699 res!595987) b!877123))

(assert (= (and b!877123 res!595986) b!877124))

(declare-fun m!817309 () Bool)

(assert (=> d!108699 m!817309))

(declare-fun m!817311 () Bool)

(assert (=> d!108699 m!817311))

(declare-fun m!817313 () Bool)

(assert (=> d!108699 m!817313))

(declare-fun m!817315 () Bool)

(assert (=> d!108699 m!817315))

(declare-fun m!817317 () Bool)

(assert (=> b!877123 m!817317))

(declare-fun m!817319 () Bool)

(assert (=> b!877124 m!817319))

(assert (=> b!876824 d!108699))

(assert (=> b!876824 d!108641))

(declare-fun d!108701 () Bool)

(assert (=> d!108701 (not (contains!4245 (+!2441 lt!396768 (tuple2!11597 lt!396764 lt!396769)) lt!396767))))

(declare-fun lt!396932 () Unit!29940)

(assert (=> d!108701 (= lt!396932 (choose!1440 lt!396768 lt!396764 lt!396769 lt!396767))))

(declare-fun e!488300 () Bool)

(assert (=> d!108701 e!488300))

(declare-fun res!595988 () Bool)

(assert (=> d!108701 (=> (not res!595988) (not e!488300))))

(assert (=> d!108701 (= res!595988 (not (contains!4245 lt!396768 lt!396767)))))

(assert (=> d!108701 (= (addStillNotContains!204 lt!396768 lt!396764 lt!396769 lt!396767) lt!396932)))

(declare-fun b!877125 () Bool)

(assert (=> b!877125 (= e!488300 (not (= lt!396764 lt!396767)))))

(assert (= (and d!108701 res!595988) b!877125))

(assert (=> d!108701 m!816823))

(assert (=> d!108701 m!816823))

(assert (=> d!108701 m!816825))

(declare-fun m!817321 () Bool)

(assert (=> d!108701 m!817321))

(declare-fun m!817323 () Bool)

(assert (=> d!108701 m!817323))

(assert (=> b!876824 d!108701))

(declare-fun d!108703 () Bool)

(assert (=> d!108703 (= (get!12906 (select (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) from!1053) lt!396663) (v!11190 (select (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) from!1053)))))

(assert (=> b!876754 d!108703))

(assert (=> b!876786 d!108585))

(declare-fun d!108705 () Bool)

(assert (=> d!108705 (= (isEmpty!668 lt!396763) (isEmpty!669 (toList!5205 lt!396763)))))

(declare-fun bs!24617 () Bool)

(assert (= bs!24617 d!108705))

(declare-fun m!817325 () Bool)

(assert (=> bs!24617 m!817325))

(assert (=> b!876822 d!108705))

(declare-fun b!877126 () Bool)

(declare-fun e!488301 () Option!424)

(assert (=> b!877126 (= e!488301 (Some!423 (_2!5808 (h!18604 (toList!5205 lt!396728)))))))

(declare-fun b!877129 () Bool)

(declare-fun e!488302 () Option!424)

(assert (=> b!877129 (= e!488302 None!422)))

(declare-fun c!92669 () Bool)

(declare-fun d!108707 () Bool)

(assert (=> d!108707 (= c!92669 (and ((_ is Cons!17473) (toList!5205 lt!396728)) (= (_1!5808 (h!18604 (toList!5205 lt!396728))) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)))))))

(assert (=> d!108707 (= (getValueByKey!418 (toList!5205 lt!396728) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))) e!488301)))

(declare-fun b!877127 () Bool)

(assert (=> b!877127 (= e!488301 e!488302)))

(declare-fun c!92670 () Bool)

(assert (=> b!877127 (= c!92670 (and ((_ is Cons!17473) (toList!5205 lt!396728)) (not (= (_1!5808 (h!18604 (toList!5205 lt!396728))) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))))

(declare-fun b!877128 () Bool)

(assert (=> b!877128 (= e!488302 (getValueByKey!418 (t!24572 (toList!5205 lt!396728)) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))

(assert (= (and d!108707 c!92669) b!877126))

(assert (= (and d!108707 (not c!92669)) b!877127))

(assert (= (and b!877127 c!92670) b!877128))

(assert (= (and b!877127 (not c!92670)) b!877129))

(declare-fun m!817327 () Bool)

(assert (=> b!877128 m!817327))

(assert (=> b!876758 d!108707))

(assert (=> b!876856 d!108569))

(declare-fun b!877130 () Bool)

(declare-fun e!488303 () Option!424)

(assert (=> b!877130 (= e!488303 (Some!423 (_2!5808 (h!18604 (toList!5205 lt!396772)))))))

(declare-fun b!877133 () Bool)

(declare-fun e!488304 () Option!424)

(assert (=> b!877133 (= e!488304 None!422)))

(declare-fun d!108709 () Bool)

(declare-fun c!92671 () Bool)

(assert (=> d!108709 (= c!92671 (and ((_ is Cons!17473) (toList!5205 lt!396772)) (= (_1!5808 (h!18604 (toList!5205 lt!396772))) (_1!5808 (tuple2!11597 k0!854 v!557)))))))

(assert (=> d!108709 (= (getValueByKey!418 (toList!5205 lt!396772) (_1!5808 (tuple2!11597 k0!854 v!557))) e!488303)))

(declare-fun b!877131 () Bool)

(assert (=> b!877131 (= e!488303 e!488304)))

(declare-fun c!92672 () Bool)

(assert (=> b!877131 (= c!92672 (and ((_ is Cons!17473) (toList!5205 lt!396772)) (not (= (_1!5808 (h!18604 (toList!5205 lt!396772))) (_1!5808 (tuple2!11597 k0!854 v!557))))))))

(declare-fun b!877132 () Bool)

(assert (=> b!877132 (= e!488304 (getValueByKey!418 (t!24572 (toList!5205 lt!396772)) (_1!5808 (tuple2!11597 k0!854 v!557))))))

(assert (= (and d!108709 c!92671) b!877130))

(assert (= (and d!108709 (not c!92671)) b!877131))

(assert (= (and b!877131 c!92672) b!877132))

(assert (= (and b!877131 (not c!92672)) b!877133))

(declare-fun m!817329 () Bool)

(assert (=> b!877132 m!817329))

(assert (=> b!876831 d!108709))

(declare-fun d!108711 () Bool)

(assert (=> d!108711 (not (contains!4245 (+!2441 lt!396749 (tuple2!11597 lt!396745 lt!396750)) lt!396748))))

(declare-fun lt!396933 () Unit!29940)

(assert (=> d!108711 (= lt!396933 (choose!1440 lt!396749 lt!396745 lt!396750 lt!396748))))

(declare-fun e!488305 () Bool)

(assert (=> d!108711 e!488305))

(declare-fun res!595989 () Bool)

(assert (=> d!108711 (=> (not res!595989) (not e!488305))))

(assert (=> d!108711 (= res!595989 (not (contains!4245 lt!396749 lt!396748)))))

(assert (=> d!108711 (= (addStillNotContains!204 lt!396749 lt!396745 lt!396750 lt!396748) lt!396933)))

(declare-fun b!877134 () Bool)

(assert (=> b!877134 (= e!488305 (not (= lt!396745 lt!396748)))))

(assert (= (and d!108711 res!595989) b!877134))

(assert (=> d!108711 m!816783))

(assert (=> d!108711 m!816783))

(assert (=> d!108711 m!816785))

(declare-fun m!817331 () Bool)

(assert (=> d!108711 m!817331))

(declare-fun m!817333 () Bool)

(assert (=> d!108711 m!817333))

(assert (=> b!876791 d!108711))

(declare-fun d!108713 () Bool)

(declare-fun e!488306 () Bool)

(assert (=> d!108713 e!488306))

(declare-fun res!595991 () Bool)

(assert (=> d!108713 (=> (not res!595991) (not e!488306))))

(declare-fun lt!396936 () ListLongMap!10379)

(assert (=> d!108713 (= res!595991 (contains!4245 lt!396936 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!396934 () List!17477)

(assert (=> d!108713 (= lt!396936 (ListLongMap!10380 lt!396934))))

(declare-fun lt!396935 () Unit!29940)

(declare-fun lt!396937 () Unit!29940)

(assert (=> d!108713 (= lt!396935 lt!396937)))

(assert (=> d!108713 (= (getValueByKey!418 lt!396934 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!423 (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108713 (= lt!396937 (lemmaContainsTupThenGetReturnValue!234 lt!396934 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108713 (= lt!396934 (insertStrictlySorted!272 (toList!5205 call!38805) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108713 (= (+!2441 call!38805 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!396936)))

(declare-fun b!877135 () Bool)

(declare-fun res!595990 () Bool)

(assert (=> b!877135 (=> (not res!595990) (not e!488306))))

(assert (=> b!877135 (= res!595990 (= (getValueByKey!418 (toList!5205 lt!396936) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!423 (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!877136 () Bool)

(assert (=> b!877136 (= e!488306 (contains!4246 (toList!5205 lt!396936) (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!108713 res!595991) b!877135))

(assert (= (and b!877135 res!595990) b!877136))

(declare-fun m!817335 () Bool)

(assert (=> d!108713 m!817335))

(declare-fun m!817337 () Bool)

(assert (=> d!108713 m!817337))

(declare-fun m!817339 () Bool)

(assert (=> d!108713 m!817339))

(declare-fun m!817341 () Bool)

(assert (=> d!108713 m!817341))

(declare-fun m!817343 () Bool)

(assert (=> b!877135 m!817343))

(declare-fun m!817345 () Bool)

(assert (=> b!877136 m!817345))

(assert (=> b!876791 d!108713))

(declare-fun d!108715 () Bool)

(declare-fun c!92673 () Bool)

(assert (=> d!108715 (= c!92673 ((_ is ValueCellFull!8274) (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun e!488307 () V!28283)

(assert (=> d!108715 (= (get!12905 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)) e!488307)))

(declare-fun b!877137 () Bool)

(assert (=> b!877137 (= e!488307 (get!12906 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!877138 () Bool)

(assert (=> b!877138 (= e!488307 (get!12907 (select (arr!24505 lt!396666) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108715 c!92673) b!877137))

(assert (= (and d!108715 (not c!92673)) b!877138))

(assert (=> b!877137 m!816779))

(assert (=> b!877137 m!816603))

(declare-fun m!817347 () Bool)

(assert (=> b!877137 m!817347))

(assert (=> b!877138 m!816779))

(assert (=> b!877138 m!816603))

(declare-fun m!817349 () Bool)

(assert (=> b!877138 m!817349))

(assert (=> b!876791 d!108715))

(declare-fun d!108717 () Bool)

(declare-fun e!488308 () Bool)

(assert (=> d!108717 e!488308))

(declare-fun res!595992 () Bool)

(assert (=> d!108717 (=> res!595992 e!488308)))

(declare-fun lt!396939 () Bool)

(assert (=> d!108717 (= res!595992 (not lt!396939))))

(declare-fun lt!396940 () Bool)

(assert (=> d!108717 (= lt!396939 lt!396940)))

(declare-fun lt!396938 () Unit!29940)

(declare-fun e!488309 () Unit!29940)

(assert (=> d!108717 (= lt!396938 e!488309)))

(declare-fun c!92674 () Bool)

(assert (=> d!108717 (= c!92674 lt!396940)))

(assert (=> d!108717 (= lt!396940 (containsKey!402 (toList!5205 (+!2441 lt!396749 (tuple2!11597 lt!396745 lt!396750))) lt!396748))))

(assert (=> d!108717 (= (contains!4245 (+!2441 lt!396749 (tuple2!11597 lt!396745 lt!396750)) lt!396748) lt!396939)))

(declare-fun b!877139 () Bool)

(declare-fun lt!396941 () Unit!29940)

(assert (=> b!877139 (= e!488309 lt!396941)))

(assert (=> b!877139 (= lt!396941 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 (+!2441 lt!396749 (tuple2!11597 lt!396745 lt!396750))) lt!396748))))

(assert (=> b!877139 (isDefined!313 (getValueByKey!418 (toList!5205 (+!2441 lt!396749 (tuple2!11597 lt!396745 lt!396750))) lt!396748))))

(declare-fun b!877140 () Bool)

(declare-fun Unit!29956 () Unit!29940)

(assert (=> b!877140 (= e!488309 Unit!29956)))

(declare-fun b!877141 () Bool)

(assert (=> b!877141 (= e!488308 (isDefined!313 (getValueByKey!418 (toList!5205 (+!2441 lt!396749 (tuple2!11597 lt!396745 lt!396750))) lt!396748)))))

(assert (= (and d!108717 c!92674) b!877139))

(assert (= (and d!108717 (not c!92674)) b!877140))

(assert (= (and d!108717 (not res!595992)) b!877141))

(declare-fun m!817351 () Bool)

(assert (=> d!108717 m!817351))

(declare-fun m!817353 () Bool)

(assert (=> b!877139 m!817353))

(declare-fun m!817355 () Bool)

(assert (=> b!877139 m!817355))

(assert (=> b!877139 m!817355))

(declare-fun m!817357 () Bool)

(assert (=> b!877139 m!817357))

(assert (=> b!877141 m!817355))

(assert (=> b!877141 m!817355))

(assert (=> b!877141 m!817357))

(assert (=> b!876791 d!108717))

(declare-fun d!108719 () Bool)

(declare-fun e!488310 () Bool)

(assert (=> d!108719 e!488310))

(declare-fun res!595994 () Bool)

(assert (=> d!108719 (=> (not res!595994) (not e!488310))))

(declare-fun lt!396944 () ListLongMap!10379)

(assert (=> d!108719 (= res!595994 (contains!4245 lt!396944 (_1!5808 (tuple2!11597 lt!396745 lt!396750))))))

(declare-fun lt!396942 () List!17477)

(assert (=> d!108719 (= lt!396944 (ListLongMap!10380 lt!396942))))

(declare-fun lt!396943 () Unit!29940)

(declare-fun lt!396945 () Unit!29940)

(assert (=> d!108719 (= lt!396943 lt!396945)))

(assert (=> d!108719 (= (getValueByKey!418 lt!396942 (_1!5808 (tuple2!11597 lt!396745 lt!396750))) (Some!423 (_2!5808 (tuple2!11597 lt!396745 lt!396750))))))

(assert (=> d!108719 (= lt!396945 (lemmaContainsTupThenGetReturnValue!234 lt!396942 (_1!5808 (tuple2!11597 lt!396745 lt!396750)) (_2!5808 (tuple2!11597 lt!396745 lt!396750))))))

(assert (=> d!108719 (= lt!396942 (insertStrictlySorted!272 (toList!5205 lt!396749) (_1!5808 (tuple2!11597 lt!396745 lt!396750)) (_2!5808 (tuple2!11597 lt!396745 lt!396750))))))

(assert (=> d!108719 (= (+!2441 lt!396749 (tuple2!11597 lt!396745 lt!396750)) lt!396944)))

(declare-fun b!877142 () Bool)

(declare-fun res!595993 () Bool)

(assert (=> b!877142 (=> (not res!595993) (not e!488310))))

(assert (=> b!877142 (= res!595993 (= (getValueByKey!418 (toList!5205 lt!396944) (_1!5808 (tuple2!11597 lt!396745 lt!396750))) (Some!423 (_2!5808 (tuple2!11597 lt!396745 lt!396750)))))))

(declare-fun b!877143 () Bool)

(assert (=> b!877143 (= e!488310 (contains!4246 (toList!5205 lt!396944) (tuple2!11597 lt!396745 lt!396750)))))

(assert (= (and d!108719 res!595994) b!877142))

(assert (= (and b!877142 res!595993) b!877143))

(declare-fun m!817359 () Bool)

(assert (=> d!108719 m!817359))

(declare-fun m!817361 () Bool)

(assert (=> d!108719 m!817361))

(declare-fun m!817363 () Bool)

(assert (=> d!108719 m!817363))

(declare-fun m!817365 () Bool)

(assert (=> d!108719 m!817365))

(declare-fun m!817367 () Bool)

(assert (=> b!877142 m!817367))

(declare-fun m!817369 () Bool)

(assert (=> b!877143 m!817369))

(assert (=> b!876791 d!108719))

(declare-fun d!108721 () Bool)

(assert (=> d!108721 (= (isEmpty!668 lt!396774) (isEmpty!669 (toList!5205 lt!396774)))))

(declare-fun bs!24618 () Bool)

(assert (= bs!24618 d!108721))

(declare-fun m!817371 () Bool)

(assert (=> bs!24618 m!817371))

(assert (=> b!876836 d!108721))

(declare-fun bm!38841 () Bool)

(declare-fun call!38844 () Bool)

(declare-fun c!92675 () Bool)

(assert (=> bm!38841 (= call!38844 (arrayNoDuplicates!0 _keys!868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!92675 (Cons!17474 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!92548 (Cons!17474 (select (arr!24504 _keys!868) #b00000000000000000000000000000000) Nil!17475) Nil!17475)) (ite c!92548 (Cons!17474 (select (arr!24504 _keys!868) #b00000000000000000000000000000000) Nil!17475) Nil!17475))))))

(declare-fun b!877144 () Bool)

(declare-fun e!488314 () Bool)

(assert (=> b!877144 (= e!488314 call!38844)))

(declare-fun b!877145 () Bool)

(declare-fun e!488312 () Bool)

(assert (=> b!877145 (= e!488312 (contains!4244 (ite c!92548 (Cons!17474 (select (arr!24504 _keys!868) #b00000000000000000000000000000000) Nil!17475) Nil!17475) (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!877146 () Bool)

(declare-fun e!488311 () Bool)

(declare-fun e!488313 () Bool)

(assert (=> b!877146 (= e!488311 e!488313)))

(declare-fun res!595995 () Bool)

(assert (=> b!877146 (=> (not res!595995) (not e!488313))))

(assert (=> b!877146 (= res!595995 (not e!488312))))

(declare-fun res!595997 () Bool)

(assert (=> b!877146 (=> (not res!595997) (not e!488312))))

(assert (=> b!877146 (= res!595997 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!108723 () Bool)

(declare-fun res!595996 () Bool)

(assert (=> d!108723 (=> res!595996 e!488311)))

(assert (=> d!108723 (= res!595996 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!24945 _keys!868)))))

(assert (=> d!108723 (= (arrayNoDuplicates!0 _keys!868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!92548 (Cons!17474 (select (arr!24504 _keys!868) #b00000000000000000000000000000000) Nil!17475) Nil!17475)) e!488311)))

(declare-fun b!877147 () Bool)

(assert (=> b!877147 (= e!488313 e!488314)))

(assert (=> b!877147 (= c!92675 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!877148 () Bool)

(assert (=> b!877148 (= e!488314 call!38844)))

(assert (= (and d!108723 (not res!595996)) b!877146))

(assert (= (and b!877146 res!595997) b!877145))

(assert (= (and b!877146 res!595995) b!877147))

(assert (= (and b!877147 c!92675) b!877144))

(assert (= (and b!877147 (not c!92675)) b!877148))

(assert (= (or b!877144 b!877148) bm!38841))

(assert (=> bm!38841 m!817007))

(declare-fun m!817373 () Bool)

(assert (=> bm!38841 m!817373))

(assert (=> b!877145 m!817007))

(assert (=> b!877145 m!817007))

(declare-fun m!817375 () Bool)

(assert (=> b!877145 m!817375))

(assert (=> b!877146 m!817007))

(assert (=> b!877146 m!817007))

(assert (=> b!877146 m!817015))

(assert (=> b!877147 m!817007))

(assert (=> b!877147 m!817007))

(assert (=> b!877147 m!817015))

(assert (=> bm!38799 d!108723))

(assert (=> b!876838 d!108683))

(declare-fun d!108725 () Bool)

(declare-fun e!488315 () Bool)

(assert (=> d!108725 e!488315))

(declare-fun res!595999 () Bool)

(assert (=> d!108725 (=> (not res!595999) (not e!488315))))

(declare-fun lt!396948 () ListLongMap!10379)

(assert (=> d!108725 (= res!595999 (contains!4245 lt!396948 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!396946 () List!17477)

(assert (=> d!108725 (= lt!396948 (ListLongMap!10380 lt!396946))))

(declare-fun lt!396947 () Unit!29940)

(declare-fun lt!396949 () Unit!29940)

(assert (=> d!108725 (= lt!396947 lt!396949)))

(assert (=> d!108725 (= (getValueByKey!418 lt!396946 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!423 (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108725 (= lt!396949 (lemmaContainsTupThenGetReturnValue!234 lt!396946 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108725 (= lt!396946 (insertStrictlySorted!272 (toList!5205 call!38816) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108725 (= (+!2441 call!38816 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!396948)))

(declare-fun b!877149 () Bool)

(declare-fun res!595998 () Bool)

(assert (=> b!877149 (=> (not res!595998) (not e!488315))))

(assert (=> b!877149 (= res!595998 (= (getValueByKey!418 (toList!5205 lt!396948) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!423 (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!877150 () Bool)

(assert (=> b!877150 (= e!488315 (contains!4246 (toList!5205 lt!396948) (tuple2!11597 (select (arr!24504 _keys!868) from!1053) (get!12905 (select (arr!24505 lt!396666) from!1053) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!108725 res!595999) b!877149))

(assert (= (and b!877149 res!595998) b!877150))

(declare-fun m!817377 () Bool)

(assert (=> d!108725 m!817377))

(declare-fun m!817379 () Bool)

(assert (=> d!108725 m!817379))

(declare-fun m!817381 () Bool)

(assert (=> d!108725 m!817381))

(declare-fun m!817383 () Bool)

(assert (=> d!108725 m!817383))

(declare-fun m!817385 () Bool)

(assert (=> b!877149 m!817385))

(declare-fun m!817387 () Bool)

(assert (=> b!877150 m!817387))

(assert (=> b!876838 d!108725))

(declare-fun d!108727 () Bool)

(declare-fun e!488316 () Bool)

(assert (=> d!108727 e!488316))

(declare-fun res!596000 () Bool)

(assert (=> d!108727 (=> res!596000 e!488316)))

(declare-fun lt!396951 () Bool)

(assert (=> d!108727 (= res!596000 (not lt!396951))))

(declare-fun lt!396952 () Bool)

(assert (=> d!108727 (= lt!396951 lt!396952)))

(declare-fun lt!396950 () Unit!29940)

(declare-fun e!488317 () Unit!29940)

(assert (=> d!108727 (= lt!396950 e!488317)))

(declare-fun c!92676 () Bool)

(assert (=> d!108727 (= c!92676 lt!396952)))

(assert (=> d!108727 (= lt!396952 (containsKey!402 (toList!5205 (+!2441 lt!396779 (tuple2!11597 lt!396775 lt!396780))) lt!396778))))

(assert (=> d!108727 (= (contains!4245 (+!2441 lt!396779 (tuple2!11597 lt!396775 lt!396780)) lt!396778) lt!396951)))

(declare-fun b!877151 () Bool)

(declare-fun lt!396953 () Unit!29940)

(assert (=> b!877151 (= e!488317 lt!396953)))

(assert (=> b!877151 (= lt!396953 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 (+!2441 lt!396779 (tuple2!11597 lt!396775 lt!396780))) lt!396778))))

(assert (=> b!877151 (isDefined!313 (getValueByKey!418 (toList!5205 (+!2441 lt!396779 (tuple2!11597 lt!396775 lt!396780))) lt!396778))))

(declare-fun b!877152 () Bool)

(declare-fun Unit!29957 () Unit!29940)

(assert (=> b!877152 (= e!488317 Unit!29957)))

(declare-fun b!877153 () Bool)

(assert (=> b!877153 (= e!488316 (isDefined!313 (getValueByKey!418 (toList!5205 (+!2441 lt!396779 (tuple2!11597 lt!396775 lt!396780))) lt!396778)))))

(assert (= (and d!108727 c!92676) b!877151))

(assert (= (and d!108727 (not c!92676)) b!877152))

(assert (= (and d!108727 (not res!596000)) b!877153))

(declare-fun m!817389 () Bool)

(assert (=> d!108727 m!817389))

(declare-fun m!817391 () Bool)

(assert (=> b!877151 m!817391))

(declare-fun m!817393 () Bool)

(assert (=> b!877151 m!817393))

(assert (=> b!877151 m!817393))

(declare-fun m!817395 () Bool)

(assert (=> b!877151 m!817395))

(assert (=> b!877153 m!817393))

(assert (=> b!877153 m!817393))

(assert (=> b!877153 m!817395))

(assert (=> b!876838 d!108727))

(declare-fun d!108729 () Bool)

(declare-fun e!488318 () Bool)

(assert (=> d!108729 e!488318))

(declare-fun res!596002 () Bool)

(assert (=> d!108729 (=> (not res!596002) (not e!488318))))

(declare-fun lt!396956 () ListLongMap!10379)

(assert (=> d!108729 (= res!596002 (contains!4245 lt!396956 (_1!5808 (tuple2!11597 lt!396775 lt!396780))))))

(declare-fun lt!396954 () List!17477)

(assert (=> d!108729 (= lt!396956 (ListLongMap!10380 lt!396954))))

(declare-fun lt!396955 () Unit!29940)

(declare-fun lt!396957 () Unit!29940)

(assert (=> d!108729 (= lt!396955 lt!396957)))

(assert (=> d!108729 (= (getValueByKey!418 lt!396954 (_1!5808 (tuple2!11597 lt!396775 lt!396780))) (Some!423 (_2!5808 (tuple2!11597 lt!396775 lt!396780))))))

(assert (=> d!108729 (= lt!396957 (lemmaContainsTupThenGetReturnValue!234 lt!396954 (_1!5808 (tuple2!11597 lt!396775 lt!396780)) (_2!5808 (tuple2!11597 lt!396775 lt!396780))))))

(assert (=> d!108729 (= lt!396954 (insertStrictlySorted!272 (toList!5205 lt!396779) (_1!5808 (tuple2!11597 lt!396775 lt!396780)) (_2!5808 (tuple2!11597 lt!396775 lt!396780))))))

(assert (=> d!108729 (= (+!2441 lt!396779 (tuple2!11597 lt!396775 lt!396780)) lt!396956)))

(declare-fun b!877154 () Bool)

(declare-fun res!596001 () Bool)

(assert (=> b!877154 (=> (not res!596001) (not e!488318))))

(assert (=> b!877154 (= res!596001 (= (getValueByKey!418 (toList!5205 lt!396956) (_1!5808 (tuple2!11597 lt!396775 lt!396780))) (Some!423 (_2!5808 (tuple2!11597 lt!396775 lt!396780)))))))

(declare-fun b!877155 () Bool)

(assert (=> b!877155 (= e!488318 (contains!4246 (toList!5205 lt!396956) (tuple2!11597 lt!396775 lt!396780)))))

(assert (= (and d!108729 res!596002) b!877154))

(assert (= (and b!877154 res!596001) b!877155))

(declare-fun m!817397 () Bool)

(assert (=> d!108729 m!817397))

(declare-fun m!817399 () Bool)

(assert (=> d!108729 m!817399))

(declare-fun m!817401 () Bool)

(assert (=> d!108729 m!817401))

(declare-fun m!817403 () Bool)

(assert (=> d!108729 m!817403))

(declare-fun m!817405 () Bool)

(assert (=> b!877154 m!817405))

(declare-fun m!817407 () Bool)

(assert (=> b!877155 m!817407))

(assert (=> b!876838 d!108729))

(declare-fun d!108731 () Bool)

(assert (=> d!108731 (not (contains!4245 (+!2441 lt!396779 (tuple2!11597 lt!396775 lt!396780)) lt!396778))))

(declare-fun lt!396958 () Unit!29940)

(assert (=> d!108731 (= lt!396958 (choose!1440 lt!396779 lt!396775 lt!396780 lt!396778))))

(declare-fun e!488319 () Bool)

(assert (=> d!108731 e!488319))

(declare-fun res!596003 () Bool)

(assert (=> d!108731 (=> (not res!596003) (not e!488319))))

(assert (=> d!108731 (= res!596003 (not (contains!4245 lt!396779 lt!396778)))))

(assert (=> d!108731 (= (addStillNotContains!204 lt!396779 lt!396775 lt!396780 lt!396778) lt!396958)))

(declare-fun b!877156 () Bool)

(assert (=> b!877156 (= e!488319 (not (= lt!396775 lt!396778)))))

(assert (= (and d!108731 res!596003) b!877156))

(assert (=> d!108731 m!816859))

(assert (=> d!108731 m!816859))

(assert (=> d!108731 m!816861))

(declare-fun m!817409 () Bool)

(assert (=> d!108731 m!817409))

(declare-fun m!817411 () Bool)

(assert (=> d!108731 m!817411))

(assert (=> b!876838 d!108731))

(declare-fun b!877157 () Bool)

(declare-fun e!488323 () Bool)

(assert (=> b!877157 (= e!488323 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!877157 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!877158 () Bool)

(declare-fun e!488322 () Bool)

(declare-fun e!488325 () Bool)

(assert (=> b!877158 (= e!488322 e!488325)))

(assert (=> b!877158 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24945 _keys!868)))))

(declare-fun res!596006 () Bool)

(declare-fun lt!396959 () ListLongMap!10379)

(assert (=> b!877158 (= res!596006 (contains!4245 lt!396959 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!877158 (=> (not res!596006) (not e!488325))))

(declare-fun b!877160 () Bool)

(declare-fun e!488321 () Bool)

(assert (=> b!877160 (= e!488321 (isEmpty!668 lt!396959))))

(declare-fun b!877161 () Bool)

(declare-fun e!488320 () ListLongMap!10379)

(declare-fun call!38845 () ListLongMap!10379)

(assert (=> b!877161 (= e!488320 call!38845)))

(declare-fun b!877162 () Bool)

(declare-fun lt!396962 () Unit!29940)

(declare-fun lt!396961 () Unit!29940)

(assert (=> b!877162 (= lt!396962 lt!396961)))

(declare-fun lt!396960 () (_ BitVec 64))

(declare-fun lt!396964 () ListLongMap!10379)

(declare-fun lt!396963 () (_ BitVec 64))

(declare-fun lt!396965 () V!28283)

(assert (=> b!877162 (not (contains!4245 (+!2441 lt!396964 (tuple2!11597 lt!396960 lt!396965)) lt!396963))))

(assert (=> b!877162 (= lt!396961 (addStillNotContains!204 lt!396964 lt!396960 lt!396965 lt!396963))))

(assert (=> b!877162 (= lt!396963 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!877162 (= lt!396965 (get!12905 (select (arr!24505 (array!50965 (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) (size!24946 _values!688))) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!877162 (= lt!396960 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!877162 (= lt!396964 call!38845)))

(assert (=> b!877162 (= e!488320 (+!2441 call!38845 (tuple2!11597 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12905 (select (arr!24505 (array!50965 (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) (size!24946 _values!688))) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!38842 () Bool)

(assert (=> bm!38842 (= call!38845 (getCurrentListMapNoExtraKeys!3167 _keys!868 (array!50965 (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) (size!24946 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!877163 () Bool)

(declare-fun e!488324 () ListLongMap!10379)

(assert (=> b!877163 (= e!488324 (ListLongMap!10380 Nil!17474))))

(declare-fun b!877164 () Bool)

(declare-fun e!488326 () Bool)

(assert (=> b!877164 (= e!488326 e!488322)))

(declare-fun c!92677 () Bool)

(assert (=> b!877164 (= c!92677 e!488323)))

(declare-fun res!596005 () Bool)

(assert (=> b!877164 (=> (not res!596005) (not e!488323))))

(assert (=> b!877164 (= res!596005 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24945 _keys!868)))))

(declare-fun b!877165 () Bool)

(declare-fun res!596007 () Bool)

(assert (=> b!877165 (=> (not res!596007) (not e!488326))))

(assert (=> b!877165 (= res!596007 (not (contains!4245 lt!396959 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!877159 () Bool)

(assert (=> b!877159 (= e!488321 (= lt!396959 (getCurrentListMapNoExtraKeys!3167 _keys!868 (array!50965 (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) (size!24946 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun d!108733 () Bool)

(assert (=> d!108733 e!488326))

(declare-fun res!596004 () Bool)

(assert (=> d!108733 (=> (not res!596004) (not e!488326))))

(assert (=> d!108733 (= res!596004 (not (contains!4245 lt!396959 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108733 (= lt!396959 e!488324)))

(declare-fun c!92680 () Bool)

(assert (=> d!108733 (= c!92680 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24945 _keys!868)))))

(assert (=> d!108733 (validMask!0 mask!1196)))

(assert (=> d!108733 (= (getCurrentListMapNoExtraKeys!3167 _keys!868 (array!50965 (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) (size!24946 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!396959)))

(declare-fun b!877166 () Bool)

(assert (=> b!877166 (= e!488322 e!488321)))

(declare-fun c!92678 () Bool)

(assert (=> b!877166 (= c!92678 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24945 _keys!868)))))

(declare-fun b!877167 () Bool)

(assert (=> b!877167 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24945 _keys!868)))))

(assert (=> b!877167 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24946 (array!50965 (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) (size!24946 _values!688)))))))

(assert (=> b!877167 (= e!488325 (= (apply!377 lt!396959 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12905 (select (arr!24505 (array!50965 (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) (size!24946 _values!688))) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1223 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!877168 () Bool)

(assert (=> b!877168 (= e!488324 e!488320)))

(declare-fun c!92679 () Bool)

(assert (=> b!877168 (= c!92679 (validKeyInArray!0 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (= (and d!108733 c!92680) b!877163))

(assert (= (and d!108733 (not c!92680)) b!877168))

(assert (= (and b!877168 c!92679) b!877162))

(assert (= (and b!877168 (not c!92679)) b!877161))

(assert (= (or b!877162 b!877161) bm!38842))

(assert (= (and d!108733 res!596004) b!877165))

(assert (= (and b!877165 res!596007) b!877164))

(assert (= (and b!877164 res!596005) b!877157))

(assert (= (and b!877164 c!92677) b!877158))

(assert (= (and b!877164 (not c!92677)) b!877166))

(assert (= (and b!877158 res!596006) b!877167))

(assert (= (and b!877166 c!92678) b!877159))

(assert (= (and b!877166 (not c!92678)) b!877160))

(declare-fun b_lambda!12335 () Bool)

(assert (=> (not b_lambda!12335) (not b!877162)))

(assert (=> b!877162 t!24571))

(declare-fun b_and!25077 () Bool)

(assert (= b_and!25075 (and (=> t!24571 result!9513) b_and!25077)))

(declare-fun b_lambda!12337 () Bool)

(assert (=> (not b_lambda!12337) (not b!877167)))

(assert (=> b!877167 t!24571))

(declare-fun b_and!25079 () Bool)

(assert (= b_and!25077 (and (=> t!24571 result!9513) b_and!25079)))

(assert (=> b!877158 m!816769))

(assert (=> b!877158 m!816769))

(declare-fun m!817413 () Bool)

(assert (=> b!877158 m!817413))

(declare-fun m!817415 () Bool)

(assert (=> b!877165 m!817415))

(declare-fun m!817417 () Bool)

(assert (=> b!877160 m!817417))

(declare-fun m!817419 () Bool)

(assert (=> b!877162 m!817419))

(declare-fun m!817421 () Bool)

(assert (=> b!877162 m!817421))

(assert (=> b!877162 m!816603))

(declare-fun m!817423 () Bool)

(assert (=> b!877162 m!817423))

(assert (=> b!877162 m!817421))

(declare-fun m!817425 () Bool)

(assert (=> b!877162 m!817425))

(assert (=> b!877162 m!817425))

(declare-fun m!817427 () Bool)

(assert (=> b!877162 m!817427))

(assert (=> b!877162 m!816603))

(assert (=> b!877162 m!816769))

(declare-fun m!817429 () Bool)

(assert (=> b!877162 m!817429))

(declare-fun m!817431 () Bool)

(assert (=> b!877159 m!817431))

(assert (=> b!877167 m!817421))

(assert (=> b!877167 m!816603))

(assert (=> b!877167 m!817423))

(assert (=> b!877167 m!817421))

(assert (=> b!877167 m!816769))

(declare-fun m!817433 () Bool)

(assert (=> b!877167 m!817433))

(assert (=> b!877167 m!816603))

(assert (=> b!877167 m!816769))

(assert (=> bm!38842 m!817431))

(assert (=> b!877168 m!816769))

(assert (=> b!877168 m!816769))

(assert (=> b!877168 m!816793))

(declare-fun m!817435 () Bool)

(assert (=> d!108733 m!817435))

(assert (=> d!108733 m!816611))

(assert (=> b!877157 m!816769))

(assert (=> b!877157 m!816769))

(assert (=> b!877157 m!816793))

(assert (=> bm!38807 d!108733))

(assert (=> b!876830 d!108585))

(declare-fun d!108735 () Bool)

(declare-fun e!488327 () Bool)

(assert (=> d!108735 e!488327))

(declare-fun res!596008 () Bool)

(assert (=> d!108735 (=> res!596008 e!488327)))

(declare-fun lt!396967 () Bool)

(assert (=> d!108735 (= res!596008 (not lt!396967))))

(declare-fun lt!396968 () Bool)

(assert (=> d!108735 (= lt!396967 lt!396968)))

(declare-fun lt!396966 () Unit!29940)

(declare-fun e!488328 () Unit!29940)

(assert (=> d!108735 (= lt!396966 e!488328)))

(declare-fun c!92681 () Bool)

(assert (=> d!108735 (= c!92681 lt!396968)))

(assert (=> d!108735 (= lt!396968 (containsKey!402 (toList!5205 lt!396774) (select (arr!24504 _keys!868) from!1053)))))

(assert (=> d!108735 (= (contains!4245 lt!396774 (select (arr!24504 _keys!868) from!1053)) lt!396967)))

(declare-fun b!877169 () Bool)

(declare-fun lt!396969 () Unit!29940)

(assert (=> b!877169 (= e!488328 lt!396969)))

(assert (=> b!877169 (= lt!396969 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396774) (select (arr!24504 _keys!868) from!1053)))))

(assert (=> b!877169 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396774) (select (arr!24504 _keys!868) from!1053)))))

(declare-fun b!877170 () Bool)

(declare-fun Unit!29958 () Unit!29940)

(assert (=> b!877170 (= e!488328 Unit!29958)))

(declare-fun b!877171 () Bool)

(assert (=> b!877171 (= e!488327 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396774) (select (arr!24504 _keys!868) from!1053))))))

(assert (= (and d!108735 c!92681) b!877169))

(assert (= (and d!108735 (not c!92681)) b!877170))

(assert (= (and d!108735 (not res!596008)) b!877171))

(assert (=> d!108735 m!816575))

(declare-fun m!817437 () Bool)

(assert (=> d!108735 m!817437))

(assert (=> b!877169 m!816575))

(declare-fun m!817439 () Bool)

(assert (=> b!877169 m!817439))

(assert (=> b!877169 m!816575))

(assert (=> b!877169 m!817233))

(assert (=> b!877169 m!817233))

(declare-fun m!817441 () Bool)

(assert (=> b!877169 m!817441))

(assert (=> b!877171 m!816575))

(assert (=> b!877171 m!817233))

(assert (=> b!877171 m!817233))

(assert (=> b!877171 m!817441))

(assert (=> b!876834 d!108735))

(declare-fun d!108737 () Bool)

(assert (=> d!108737 (= (get!12907 (select (store (arr!24505 _values!688) i!612 (ValueCellFull!8274 v!557)) from!1053) lt!396663) lt!396663)))

(assert (=> b!876755 d!108737))

(declare-fun d!108739 () Bool)

(assert (=> d!108739 (= (isEmpty!668 lt!396744) (isEmpty!669 (toList!5205 lt!396744)))))

(declare-fun bs!24619 () Bool)

(assert (= bs!24619 d!108739))

(declare-fun m!817443 () Bool)

(assert (=> bs!24619 m!817443))

(assert (=> b!876789 d!108739))

(assert (=> b!876738 d!108669))

(declare-fun d!108741 () Bool)

(declare-fun e!488329 () Bool)

(assert (=> d!108741 e!488329))

(declare-fun res!596009 () Bool)

(assert (=> d!108741 (=> res!596009 e!488329)))

(declare-fun lt!396971 () Bool)

(assert (=> d!108741 (= res!596009 (not lt!396971))))

(declare-fun lt!396972 () Bool)

(assert (=> d!108741 (= lt!396971 lt!396972)))

(declare-fun lt!396970 () Unit!29940)

(declare-fun e!488330 () Unit!29940)

(assert (=> d!108741 (= lt!396970 e!488330)))

(declare-fun c!92682 () Bool)

(assert (=> d!108741 (= c!92682 lt!396972)))

(assert (=> d!108741 (= lt!396972 (containsKey!402 (toList!5205 lt!396774) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!108741 (= (contains!4245 lt!396774 #b1000000000000000000000000000000000000000000000000000000000000000) lt!396971)))

(declare-fun b!877172 () Bool)

(declare-fun lt!396973 () Unit!29940)

(assert (=> b!877172 (= e!488330 lt!396973)))

(assert (=> b!877172 (= lt!396973 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396774) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!877172 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396774) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!877173 () Bool)

(declare-fun Unit!29959 () Unit!29940)

(assert (=> b!877173 (= e!488330 Unit!29959)))

(declare-fun b!877174 () Bool)

(assert (=> b!877174 (= e!488329 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396774) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108741 c!92682) b!877172))

(assert (= (and d!108741 (not c!92682)) b!877173))

(assert (= (and d!108741 (not res!596009)) b!877174))

(declare-fun m!817445 () Bool)

(assert (=> d!108741 m!817445))

(declare-fun m!817447 () Bool)

(assert (=> b!877172 m!817447))

(declare-fun m!817449 () Bool)

(assert (=> b!877172 m!817449))

(assert (=> b!877172 m!817449))

(declare-fun m!817451 () Bool)

(assert (=> b!877172 m!817451))

(assert (=> b!877174 m!817449))

(assert (=> b!877174 m!817449))

(assert (=> b!877174 m!817451))

(assert (=> b!876841 d!108741))

(assert (=> b!876847 d!108689))

(declare-fun d!108743 () Bool)

(declare-fun e!488331 () Bool)

(assert (=> d!108743 e!488331))

(declare-fun res!596010 () Bool)

(assert (=> d!108743 (=> res!596010 e!488331)))

(declare-fun lt!396975 () Bool)

(assert (=> d!108743 (= res!596010 (not lt!396975))))

(declare-fun lt!396976 () Bool)

(assert (=> d!108743 (= lt!396975 lt!396976)))

(declare-fun lt!396974 () Unit!29940)

(declare-fun e!488332 () Unit!29940)

(assert (=> d!108743 (= lt!396974 e!488332)))

(declare-fun c!92683 () Bool)

(assert (=> d!108743 (= c!92683 lt!396976)))

(assert (=> d!108743 (= lt!396976 (containsKey!402 (toList!5205 lt!396728) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))

(assert (=> d!108743 (= (contains!4245 lt!396728 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))) lt!396975)))

(declare-fun b!877175 () Bool)

(declare-fun lt!396977 () Unit!29940)

(assert (=> b!877175 (= e!488332 lt!396977)))

(assert (=> b!877175 (= lt!396977 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396728) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))

(assert (=> b!877175 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396728) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))

(declare-fun b!877176 () Bool)

(declare-fun Unit!29960 () Unit!29940)

(assert (=> b!877176 (= e!488332 Unit!29960)))

(declare-fun b!877177 () Bool)

(assert (=> b!877177 (= e!488331 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396728) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)))))))

(assert (= (and d!108743 c!92683) b!877175))

(assert (= (and d!108743 (not c!92683)) b!877176))

(assert (= (and d!108743 (not res!596010)) b!877177))

(declare-fun m!817453 () Bool)

(assert (=> d!108743 m!817453))

(declare-fun m!817455 () Bool)

(assert (=> b!877175 m!817455))

(assert (=> b!877175 m!816761))

(assert (=> b!877175 m!816761))

(declare-fun m!817457 () Bool)

(assert (=> b!877175 m!817457))

(assert (=> b!877177 m!816761))

(assert (=> b!877177 m!816761))

(assert (=> b!877177 m!817457))

(assert (=> d!108559 d!108743))

(declare-fun b!877178 () Bool)

(declare-fun e!488333 () Option!424)

(assert (=> b!877178 (= e!488333 (Some!423 (_2!5808 (h!18604 lt!396726))))))

(declare-fun b!877181 () Bool)

(declare-fun e!488334 () Option!424)

(assert (=> b!877181 (= e!488334 None!422)))

(declare-fun c!92684 () Bool)

(declare-fun d!108745 () Bool)

(assert (=> d!108745 (= c!92684 (and ((_ is Cons!17473) lt!396726) (= (_1!5808 (h!18604 lt!396726)) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)))))))

(assert (=> d!108745 (= (getValueByKey!418 lt!396726 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))) e!488333)))

(declare-fun b!877179 () Bool)

(assert (=> b!877179 (= e!488333 e!488334)))

(declare-fun c!92685 () Bool)

(assert (=> b!877179 (= c!92685 (and ((_ is Cons!17473) lt!396726) (not (= (_1!5808 (h!18604 lt!396726)) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))))

(declare-fun b!877180 () Bool)

(assert (=> b!877180 (= e!488334 (getValueByKey!418 (t!24572 lt!396726) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))

(assert (= (and d!108745 c!92684) b!877178))

(assert (= (and d!108745 (not c!92684)) b!877179))

(assert (= (and b!877179 c!92685) b!877180))

(assert (= (and b!877179 (not c!92685)) b!877181))

(declare-fun m!817459 () Bool)

(assert (=> b!877180 m!817459))

(assert (=> d!108559 d!108745))

(declare-fun d!108747 () Bool)

(assert (=> d!108747 (= (getValueByKey!418 lt!396726 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))) (Some!423 (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))

(declare-fun lt!396978 () Unit!29940)

(assert (=> d!108747 (= lt!396978 (choose!1441 lt!396726 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))

(declare-fun e!488335 () Bool)

(assert (=> d!108747 e!488335))

(declare-fun res!596011 () Bool)

(assert (=> d!108747 (=> (not res!596011) (not e!488335))))

(assert (=> d!108747 (= res!596011 (isStrictlySorted!457 lt!396726))))

(assert (=> d!108747 (= (lemmaContainsTupThenGetReturnValue!234 lt!396726 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))) lt!396978)))

(declare-fun b!877182 () Bool)

(declare-fun res!596012 () Bool)

(assert (=> b!877182 (=> (not res!596012) (not e!488335))))

(assert (=> b!877182 (= res!596012 (containsKey!402 lt!396726 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))

(declare-fun b!877183 () Bool)

(assert (=> b!877183 (= e!488335 (contains!4246 lt!396726 (tuple2!11597 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)))))))

(assert (= (and d!108747 res!596011) b!877182))

(assert (= (and b!877182 res!596012) b!877183))

(assert (=> d!108747 m!816755))

(declare-fun m!817461 () Bool)

(assert (=> d!108747 m!817461))

(declare-fun m!817463 () Bool)

(assert (=> d!108747 m!817463))

(declare-fun m!817465 () Bool)

(assert (=> b!877182 m!817465))

(declare-fun m!817467 () Bool)

(assert (=> b!877183 m!817467))

(assert (=> d!108559 d!108747))

(declare-fun b!877184 () Bool)

(declare-fun res!596013 () Bool)

(declare-fun e!488336 () Bool)

(assert (=> b!877184 (=> (not res!596013) (not e!488336))))

(declare-fun lt!396979 () List!17477)

(assert (=> b!877184 (= res!596013 (containsKey!402 lt!396979 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))

(declare-fun b!877185 () Bool)

(assert (=> b!877185 (= e!488336 (contains!4246 lt!396979 (tuple2!11597 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)))))))

(declare-fun b!877186 () Bool)

(declare-fun e!488338 () List!17477)

(declare-fun call!38846 () List!17477)

(assert (=> b!877186 (= e!488338 call!38846)))

(declare-fun e!488337 () List!17477)

(declare-fun call!38848 () List!17477)

(declare-fun bm!38843 () Bool)

(declare-fun c!92689 () Bool)

(assert (=> bm!38843 (= call!38848 ($colon$colon!537 e!488337 (ite c!92689 (h!18604 (toList!5205 lt!396665)) (tuple2!11597 (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))))

(declare-fun c!92688 () Bool)

(assert (=> bm!38843 (= c!92688 c!92689)))

(declare-fun b!877187 () Bool)

(assert (=> b!877187 (= e!488337 (insertStrictlySorted!272 (t!24572 (toList!5205 lt!396665)) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))))))

(declare-fun b!877188 () Bool)

(assert (=> b!877188 (= e!488338 call!38846)))

(declare-fun d!108749 () Bool)

(assert (=> d!108749 e!488336))

(declare-fun res!596014 () Bool)

(assert (=> d!108749 (=> (not res!596014) (not e!488336))))

(assert (=> d!108749 (= res!596014 (isStrictlySorted!457 lt!396979))))

(declare-fun e!488339 () List!17477)

(assert (=> d!108749 (= lt!396979 e!488339)))

(assert (=> d!108749 (= c!92689 (and ((_ is Cons!17473) (toList!5205 lt!396665)) (bvslt (_1!5808 (h!18604 (toList!5205 lt!396665))) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)))))))

(assert (=> d!108749 (isStrictlySorted!457 (toList!5205 lt!396665))))

(assert (=> d!108749 (= (insertStrictlySorted!272 (toList!5205 lt!396665) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)) (_2!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667))) lt!396979)))

(declare-fun c!92687 () Bool)

(declare-fun b!877189 () Bool)

(assert (=> b!877189 (= c!92687 (and ((_ is Cons!17473) (toList!5205 lt!396665)) (bvsgt (_1!5808 (h!18604 (toList!5205 lt!396665))) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)))))))

(declare-fun e!488340 () List!17477)

(assert (=> b!877189 (= e!488340 e!488338)))

(declare-fun bm!38844 () Bool)

(declare-fun call!38847 () List!17477)

(assert (=> bm!38844 (= call!38847 call!38848)))

(declare-fun b!877190 () Bool)

(assert (=> b!877190 (= e!488340 call!38847)))

(declare-fun b!877191 () Bool)

(assert (=> b!877191 (= e!488339 call!38848)))

(declare-fun bm!38845 () Bool)

(assert (=> bm!38845 (= call!38846 call!38847)))

(declare-fun b!877192 () Bool)

(declare-fun c!92686 () Bool)

(assert (=> b!877192 (= e!488337 (ite c!92686 (t!24572 (toList!5205 lt!396665)) (ite c!92687 (Cons!17473 (h!18604 (toList!5205 lt!396665)) (t!24572 (toList!5205 lt!396665))) Nil!17474)))))

(declare-fun b!877193 () Bool)

(assert (=> b!877193 (= e!488339 e!488340)))

(assert (=> b!877193 (= c!92686 (and ((_ is Cons!17473) (toList!5205 lt!396665)) (= (_1!5808 (h!18604 (toList!5205 lt!396665))) (_1!5808 (tuple2!11597 (select (arr!24504 _keys!868) from!1053) lt!396667)))))))

(assert (= (and d!108749 c!92689) b!877191))

(assert (= (and d!108749 (not c!92689)) b!877193))

(assert (= (and b!877193 c!92686) b!877190))

(assert (= (and b!877193 (not c!92686)) b!877189))

(assert (= (and b!877189 c!92687) b!877188))

(assert (= (and b!877189 (not c!92687)) b!877186))

(assert (= (or b!877188 b!877186) bm!38845))

(assert (= (or b!877190 bm!38845) bm!38844))

(assert (= (or b!877191 bm!38844) bm!38843))

(assert (= (and bm!38843 c!92688) b!877187))

(assert (= (and bm!38843 (not c!92688)) b!877192))

(assert (= (and d!108749 res!596014) b!877184))

(assert (= (and b!877184 res!596013) b!877185))

(declare-fun m!817469 () Bool)

(assert (=> d!108749 m!817469))

(assert (=> d!108749 m!817169))

(declare-fun m!817471 () Bool)

(assert (=> b!877184 m!817471))

(declare-fun m!817473 () Bool)

(assert (=> b!877187 m!817473))

(declare-fun m!817475 () Bool)

(assert (=> bm!38843 m!817475))

(declare-fun m!817477 () Bool)

(assert (=> b!877185 m!817477))

(assert (=> d!108559 d!108749))

(declare-fun d!108751 () Bool)

(assert (=> d!108751 (= (apply!377 lt!396744 (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12908 (getValueByKey!418 (toList!5205 lt!396744) (select (arr!24504 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))))

(declare-fun bs!24620 () Bool)

(assert (= bs!24620 d!108751))

(assert (=> bs!24620 m!816769))

(assert (=> bs!24620 m!817003))

(assert (=> bs!24620 m!817003))

(declare-fun m!817479 () Bool)

(assert (=> bs!24620 m!817479))

(assert (=> b!876796 d!108751))

(assert (=> b!876796 d!108715))

(assert (=> b!876845 d!108569))

(declare-fun d!108753 () Bool)

(declare-fun e!488341 () Bool)

(assert (=> d!108753 e!488341))

(declare-fun res!596016 () Bool)

(assert (=> d!108753 (=> (not res!596016) (not e!488341))))

(declare-fun lt!396982 () ListLongMap!10379)

(assert (=> d!108753 (= res!596016 (contains!4245 lt!396982 (_1!5808 (tuple2!11597 k0!854 v!557))))))

(declare-fun lt!396980 () List!17477)

(assert (=> d!108753 (= lt!396982 (ListLongMap!10380 lt!396980))))

(declare-fun lt!396981 () Unit!29940)

(declare-fun lt!396983 () Unit!29940)

(assert (=> d!108753 (= lt!396981 lt!396983)))

(assert (=> d!108753 (= (getValueByKey!418 lt!396980 (_1!5808 (tuple2!11597 k0!854 v!557))) (Some!423 (_2!5808 (tuple2!11597 k0!854 v!557))))))

(assert (=> d!108753 (= lt!396983 (lemmaContainsTupThenGetReturnValue!234 lt!396980 (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557))))))

(assert (=> d!108753 (= lt!396980 (insertStrictlySorted!272 (toList!5205 call!38810) (_1!5808 (tuple2!11597 k0!854 v!557)) (_2!5808 (tuple2!11597 k0!854 v!557))))))

(assert (=> d!108753 (= (+!2441 call!38810 (tuple2!11597 k0!854 v!557)) lt!396982)))

(declare-fun b!877194 () Bool)

(declare-fun res!596015 () Bool)

(assert (=> b!877194 (=> (not res!596015) (not e!488341))))

(assert (=> b!877194 (= res!596015 (= (getValueByKey!418 (toList!5205 lt!396982) (_1!5808 (tuple2!11597 k0!854 v!557))) (Some!423 (_2!5808 (tuple2!11597 k0!854 v!557)))))))

(declare-fun b!877195 () Bool)

(assert (=> b!877195 (= e!488341 (contains!4246 (toList!5205 lt!396982) (tuple2!11597 k0!854 v!557)))))

(assert (= (and d!108753 res!596016) b!877194))

(assert (= (and b!877194 res!596015) b!877195))

(declare-fun m!817481 () Bool)

(assert (=> d!108753 m!817481))

(declare-fun m!817483 () Bool)

(assert (=> d!108753 m!817483))

(declare-fun m!817485 () Bool)

(assert (=> d!108753 m!817485))

(declare-fun m!817487 () Bool)

(assert (=> d!108753 m!817487))

(declare-fun m!817489 () Bool)

(assert (=> b!877194 m!817489))

(declare-fun m!817491 () Bool)

(assert (=> b!877195 m!817491))

(assert (=> b!876805 d!108753))

(declare-fun d!108755 () Bool)

(declare-fun e!488342 () Bool)

(assert (=> d!108755 e!488342))

(declare-fun res!596017 () Bool)

(assert (=> d!108755 (=> res!596017 e!488342)))

(declare-fun lt!396985 () Bool)

(assert (=> d!108755 (= res!596017 (not lt!396985))))

(declare-fun lt!396986 () Bool)

(assert (=> d!108755 (= lt!396985 lt!396986)))

(declare-fun lt!396984 () Unit!29940)

(declare-fun e!488343 () Unit!29940)

(assert (=> d!108755 (= lt!396984 e!488343)))

(declare-fun c!92690 () Bool)

(assert (=> d!108755 (= c!92690 lt!396986)))

(assert (=> d!108755 (= lt!396986 (containsKey!402 (toList!5205 lt!396724) (_1!5808 lt!396662)))))

(assert (=> d!108755 (= (contains!4245 lt!396724 (_1!5808 lt!396662)) lt!396985)))

(declare-fun b!877196 () Bool)

(declare-fun lt!396987 () Unit!29940)

(assert (=> b!877196 (= e!488343 lt!396987)))

(assert (=> b!877196 (= lt!396987 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396724) (_1!5808 lt!396662)))))

(assert (=> b!877196 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396724) (_1!5808 lt!396662)))))

(declare-fun b!877197 () Bool)

(declare-fun Unit!29961 () Unit!29940)

(assert (=> b!877197 (= e!488343 Unit!29961)))

(declare-fun b!877198 () Bool)

(assert (=> b!877198 (= e!488342 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396724) (_1!5808 lt!396662))))))

(assert (= (and d!108755 c!92690) b!877196))

(assert (= (and d!108755 (not c!92690)) b!877197))

(assert (= (and d!108755 (not res!596017)) b!877198))

(declare-fun m!817493 () Bool)

(assert (=> d!108755 m!817493))

(declare-fun m!817495 () Bool)

(assert (=> b!877196 m!817495))

(assert (=> b!877196 m!816749))

(assert (=> b!877196 m!816749))

(declare-fun m!817497 () Bool)

(assert (=> b!877196 m!817497))

(assert (=> b!877198 m!816749))

(assert (=> b!877198 m!816749))

(assert (=> b!877198 m!817497))

(assert (=> d!108557 d!108755))

(declare-fun b!877199 () Bool)

(declare-fun e!488344 () Option!424)

(assert (=> b!877199 (= e!488344 (Some!423 (_2!5808 (h!18604 lt!396722))))))

(declare-fun b!877202 () Bool)

(declare-fun e!488345 () Option!424)

(assert (=> b!877202 (= e!488345 None!422)))

(declare-fun d!108757 () Bool)

(declare-fun c!92691 () Bool)

(assert (=> d!108757 (= c!92691 (and ((_ is Cons!17473) lt!396722) (= (_1!5808 (h!18604 lt!396722)) (_1!5808 lt!396662))))))

(assert (=> d!108757 (= (getValueByKey!418 lt!396722 (_1!5808 lt!396662)) e!488344)))

(declare-fun b!877200 () Bool)

(assert (=> b!877200 (= e!488344 e!488345)))

(declare-fun c!92692 () Bool)

(assert (=> b!877200 (= c!92692 (and ((_ is Cons!17473) lt!396722) (not (= (_1!5808 (h!18604 lt!396722)) (_1!5808 lt!396662)))))))

(declare-fun b!877201 () Bool)

(assert (=> b!877201 (= e!488345 (getValueByKey!418 (t!24572 lt!396722) (_1!5808 lt!396662)))))

(assert (= (and d!108757 c!92691) b!877199))

(assert (= (and d!108757 (not c!92691)) b!877200))

(assert (= (and b!877200 c!92692) b!877201))

(assert (= (and b!877200 (not c!92692)) b!877202))

(declare-fun m!817499 () Bool)

(assert (=> b!877201 m!817499))

(assert (=> d!108557 d!108757))

(declare-fun d!108759 () Bool)

(assert (=> d!108759 (= (getValueByKey!418 lt!396722 (_1!5808 lt!396662)) (Some!423 (_2!5808 lt!396662)))))

(declare-fun lt!396988 () Unit!29940)

(assert (=> d!108759 (= lt!396988 (choose!1441 lt!396722 (_1!5808 lt!396662) (_2!5808 lt!396662)))))

(declare-fun e!488346 () Bool)

(assert (=> d!108759 e!488346))

(declare-fun res!596018 () Bool)

(assert (=> d!108759 (=> (not res!596018) (not e!488346))))

(assert (=> d!108759 (= res!596018 (isStrictlySorted!457 lt!396722))))

(assert (=> d!108759 (= (lemmaContainsTupThenGetReturnValue!234 lt!396722 (_1!5808 lt!396662) (_2!5808 lt!396662)) lt!396988)))

(declare-fun b!877203 () Bool)

(declare-fun res!596019 () Bool)

(assert (=> b!877203 (=> (not res!596019) (not e!488346))))

(assert (=> b!877203 (= res!596019 (containsKey!402 lt!396722 (_1!5808 lt!396662)))))

(declare-fun b!877204 () Bool)

(assert (=> b!877204 (= e!488346 (contains!4246 lt!396722 (tuple2!11597 (_1!5808 lt!396662) (_2!5808 lt!396662))))))

(assert (= (and d!108759 res!596018) b!877203))

(assert (= (and b!877203 res!596019) b!877204))

(assert (=> d!108759 m!816743))

(declare-fun m!817501 () Bool)

(assert (=> d!108759 m!817501))

(declare-fun m!817503 () Bool)

(assert (=> d!108759 m!817503))

(declare-fun m!817505 () Bool)

(assert (=> b!877203 m!817505))

(declare-fun m!817507 () Bool)

(assert (=> b!877204 m!817507))

(assert (=> d!108557 d!108759))

(declare-fun b!877205 () Bool)

(declare-fun res!596020 () Bool)

(declare-fun e!488347 () Bool)

(assert (=> b!877205 (=> (not res!596020) (not e!488347))))

(declare-fun lt!396989 () List!17477)

(assert (=> b!877205 (= res!596020 (containsKey!402 lt!396989 (_1!5808 lt!396662)))))

(declare-fun b!877206 () Bool)

(assert (=> b!877206 (= e!488347 (contains!4246 lt!396989 (tuple2!11597 (_1!5808 lt!396662) (_2!5808 lt!396662))))))

(declare-fun b!877207 () Bool)

(declare-fun e!488349 () List!17477)

(declare-fun call!38849 () List!17477)

(assert (=> b!877207 (= e!488349 call!38849)))

(declare-fun call!38851 () List!17477)

(declare-fun e!488348 () List!17477)

(declare-fun bm!38846 () Bool)

(declare-fun c!92696 () Bool)

(assert (=> bm!38846 (= call!38851 ($colon$colon!537 e!488348 (ite c!92696 (h!18604 (toList!5205 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668)))) (tuple2!11597 (_1!5808 lt!396662) (_2!5808 lt!396662)))))))

(declare-fun c!92695 () Bool)

(assert (=> bm!38846 (= c!92695 c!92696)))

(declare-fun b!877208 () Bool)

(assert (=> b!877208 (= e!488348 (insertStrictlySorted!272 (t!24572 (toList!5205 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668)))) (_1!5808 lt!396662) (_2!5808 lt!396662)))))

(declare-fun b!877209 () Bool)

(assert (=> b!877209 (= e!488349 call!38849)))

(declare-fun d!108761 () Bool)

(assert (=> d!108761 e!488347))

(declare-fun res!596021 () Bool)

(assert (=> d!108761 (=> (not res!596021) (not e!488347))))

(assert (=> d!108761 (= res!596021 (isStrictlySorted!457 lt!396989))))

(declare-fun e!488350 () List!17477)

(assert (=> d!108761 (= lt!396989 e!488350)))

(assert (=> d!108761 (= c!92696 (and ((_ is Cons!17473) (toList!5205 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668)))) (bvslt (_1!5808 (h!18604 (toList!5205 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668))))) (_1!5808 lt!396662))))))

(assert (=> d!108761 (isStrictlySorted!457 (toList!5205 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668))))))

(assert (=> d!108761 (= (insertStrictlySorted!272 (toList!5205 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668))) (_1!5808 lt!396662) (_2!5808 lt!396662)) lt!396989)))

(declare-fun c!92694 () Bool)

(declare-fun b!877210 () Bool)

(assert (=> b!877210 (= c!92694 (and ((_ is Cons!17473) (toList!5205 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668)))) (bvsgt (_1!5808 (h!18604 (toList!5205 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668))))) (_1!5808 lt!396662))))))

(declare-fun e!488351 () List!17477)

(assert (=> b!877210 (= e!488351 e!488349)))

(declare-fun bm!38847 () Bool)

(declare-fun call!38850 () List!17477)

(assert (=> bm!38847 (= call!38850 call!38851)))

(declare-fun b!877211 () Bool)

(assert (=> b!877211 (= e!488351 call!38850)))

(declare-fun b!877212 () Bool)

(assert (=> b!877212 (= e!488350 call!38851)))

(declare-fun bm!38848 () Bool)

(assert (=> bm!38848 (= call!38849 call!38850)))

(declare-fun c!92693 () Bool)

(declare-fun b!877213 () Bool)

(assert (=> b!877213 (= e!488348 (ite c!92693 (t!24572 (toList!5205 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668)))) (ite c!92694 (Cons!17473 (h!18604 (toList!5205 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668)))) (t!24572 (toList!5205 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668))))) Nil!17474)))))

(declare-fun b!877214 () Bool)

(assert (=> b!877214 (= e!488350 e!488351)))

(assert (=> b!877214 (= c!92693 (and ((_ is Cons!17473) (toList!5205 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668)))) (= (_1!5808 (h!18604 (toList!5205 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668))))) (_1!5808 lt!396662))))))

(assert (= (and d!108761 c!92696) b!877212))

(assert (= (and d!108761 (not c!92696)) b!877214))

(assert (= (and b!877214 c!92693) b!877211))

(assert (= (and b!877214 (not c!92693)) b!877210))

(assert (= (and b!877210 c!92694) b!877209))

(assert (= (and b!877210 (not c!92694)) b!877207))

(assert (= (or b!877209 b!877207) bm!38848))

(assert (= (or b!877211 bm!38848) bm!38847))

(assert (= (or b!877212 bm!38847) bm!38846))

(assert (= (and bm!38846 c!92695) b!877208))

(assert (= (and bm!38846 (not c!92695)) b!877213))

(assert (= (and d!108761 res!596021) b!877205))

(assert (= (and b!877205 res!596020) b!877206))

(declare-fun m!817509 () Bool)

(assert (=> d!108761 m!817509))

(declare-fun m!817511 () Bool)

(assert (=> d!108761 m!817511))

(declare-fun m!817513 () Bool)

(assert (=> b!877205 m!817513))

(declare-fun m!817515 () Bool)

(assert (=> b!877208 m!817515))

(declare-fun m!817517 () Bool)

(assert (=> bm!38846 m!817517))

(declare-fun m!817519 () Bool)

(assert (=> b!877206 m!817519))

(assert (=> d!108557 d!108761))

(declare-fun d!108763 () Bool)

(declare-fun e!488352 () Bool)

(assert (=> d!108763 e!488352))

(declare-fun res!596022 () Bool)

(assert (=> d!108763 (=> res!596022 e!488352)))

(declare-fun lt!396991 () Bool)

(assert (=> d!108763 (= res!596022 (not lt!396991))))

(declare-fun lt!396992 () Bool)

(assert (=> d!108763 (= lt!396991 lt!396992)))

(declare-fun lt!396990 () Unit!29940)

(declare-fun e!488353 () Unit!29940)

(assert (=> d!108763 (= lt!396990 e!488353)))

(declare-fun c!92697 () Bool)

(assert (=> d!108763 (= c!92697 lt!396992)))

(assert (=> d!108763 (= lt!396992 (containsKey!402 (toList!5205 lt!396713) (_1!5808 lt!396662)))))

(assert (=> d!108763 (= (contains!4245 lt!396713 (_1!5808 lt!396662)) lt!396991)))

(declare-fun b!877215 () Bool)

(declare-fun lt!396993 () Unit!29940)

(assert (=> b!877215 (= e!488353 lt!396993)))

(assert (=> b!877215 (= lt!396993 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396713) (_1!5808 lt!396662)))))

(assert (=> b!877215 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396713) (_1!5808 lt!396662)))))

(declare-fun b!877216 () Bool)

(declare-fun Unit!29962 () Unit!29940)

(assert (=> b!877216 (= e!488353 Unit!29962)))

(declare-fun b!877217 () Bool)

(assert (=> b!877217 (= e!488352 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396713) (_1!5808 lt!396662))))))

(assert (= (and d!108763 c!92697) b!877215))

(assert (= (and d!108763 (not c!92697)) b!877216))

(assert (= (and d!108763 (not res!596022)) b!877217))

(declare-fun m!817521 () Bool)

(assert (=> d!108763 m!817521))

(declare-fun m!817523 () Bool)

(assert (=> b!877215 m!817523))

(assert (=> b!877215 m!816715))

(assert (=> b!877215 m!816715))

(declare-fun m!817525 () Bool)

(assert (=> b!877215 m!817525))

(assert (=> b!877217 m!816715))

(assert (=> b!877217 m!816715))

(assert (=> b!877217 m!817525))

(assert (=> d!108549 d!108763))

(declare-fun b!877218 () Bool)

(declare-fun e!488354 () Option!424)

(assert (=> b!877218 (= e!488354 (Some!423 (_2!5808 (h!18604 lt!396711))))))

(declare-fun b!877221 () Bool)

(declare-fun e!488355 () Option!424)

(assert (=> b!877221 (= e!488355 None!422)))

(declare-fun d!108765 () Bool)

(declare-fun c!92698 () Bool)

(assert (=> d!108765 (= c!92698 (and ((_ is Cons!17473) lt!396711) (= (_1!5808 (h!18604 lt!396711)) (_1!5808 lt!396662))))))

(assert (=> d!108765 (= (getValueByKey!418 lt!396711 (_1!5808 lt!396662)) e!488354)))

(declare-fun b!877219 () Bool)

(assert (=> b!877219 (= e!488354 e!488355)))

(declare-fun c!92699 () Bool)

(assert (=> b!877219 (= c!92699 (and ((_ is Cons!17473) lt!396711) (not (= (_1!5808 (h!18604 lt!396711)) (_1!5808 lt!396662)))))))

(declare-fun b!877220 () Bool)

(assert (=> b!877220 (= e!488355 (getValueByKey!418 (t!24572 lt!396711) (_1!5808 lt!396662)))))

(assert (= (and d!108765 c!92698) b!877218))

(assert (= (and d!108765 (not c!92698)) b!877219))

(assert (= (and b!877219 c!92699) b!877220))

(assert (= (and b!877219 (not c!92699)) b!877221))

(declare-fun m!817527 () Bool)

(assert (=> b!877220 m!817527))

(assert (=> d!108549 d!108765))

(declare-fun d!108767 () Bool)

(assert (=> d!108767 (= (getValueByKey!418 lt!396711 (_1!5808 lt!396662)) (Some!423 (_2!5808 lt!396662)))))

(declare-fun lt!396994 () Unit!29940)

(assert (=> d!108767 (= lt!396994 (choose!1441 lt!396711 (_1!5808 lt!396662) (_2!5808 lt!396662)))))

(declare-fun e!488356 () Bool)

(assert (=> d!108767 e!488356))

(declare-fun res!596023 () Bool)

(assert (=> d!108767 (=> (not res!596023) (not e!488356))))

(assert (=> d!108767 (= res!596023 (isStrictlySorted!457 lt!396711))))

(assert (=> d!108767 (= (lemmaContainsTupThenGetReturnValue!234 lt!396711 (_1!5808 lt!396662) (_2!5808 lt!396662)) lt!396994)))

(declare-fun b!877222 () Bool)

(declare-fun res!596024 () Bool)

(assert (=> b!877222 (=> (not res!596024) (not e!488356))))

(assert (=> b!877222 (= res!596024 (containsKey!402 lt!396711 (_1!5808 lt!396662)))))

(declare-fun b!877223 () Bool)

(assert (=> b!877223 (= e!488356 (contains!4246 lt!396711 (tuple2!11597 (_1!5808 lt!396662) (_2!5808 lt!396662))))))

(assert (= (and d!108767 res!596023) b!877222))

(assert (= (and b!877222 res!596024) b!877223))

(assert (=> d!108767 m!816709))

(declare-fun m!817529 () Bool)

(assert (=> d!108767 m!817529))

(declare-fun m!817531 () Bool)

(assert (=> d!108767 m!817531))

(declare-fun m!817533 () Bool)

(assert (=> b!877222 m!817533))

(declare-fun m!817535 () Bool)

(assert (=> b!877223 m!817535))

(assert (=> d!108549 d!108767))

(declare-fun b!877224 () Bool)

(declare-fun res!596025 () Bool)

(declare-fun e!488357 () Bool)

(assert (=> b!877224 (=> (not res!596025) (not e!488357))))

(declare-fun lt!396995 () List!17477)

(assert (=> b!877224 (= res!596025 (containsKey!402 lt!396995 (_1!5808 lt!396662)))))

(declare-fun b!877225 () Bool)

(assert (=> b!877225 (= e!488357 (contains!4246 lt!396995 (tuple2!11597 (_1!5808 lt!396662) (_2!5808 lt!396662))))))

(declare-fun b!877226 () Bool)

(declare-fun e!488359 () List!17477)

(declare-fun call!38852 () List!17477)

(assert (=> b!877226 (= e!488359 call!38852)))

(declare-fun e!488358 () List!17477)

(declare-fun bm!38849 () Bool)

(declare-fun c!92703 () Bool)

(declare-fun call!38854 () List!17477)

(assert (=> bm!38849 (= call!38854 ($colon$colon!537 e!488358 (ite c!92703 (h!18604 (toList!5205 lt!396665)) (tuple2!11597 (_1!5808 lt!396662) (_2!5808 lt!396662)))))))

(declare-fun c!92702 () Bool)

(assert (=> bm!38849 (= c!92702 c!92703)))

(declare-fun b!877227 () Bool)

(assert (=> b!877227 (= e!488358 (insertStrictlySorted!272 (t!24572 (toList!5205 lt!396665)) (_1!5808 lt!396662) (_2!5808 lt!396662)))))

(declare-fun b!877228 () Bool)

(assert (=> b!877228 (= e!488359 call!38852)))

(declare-fun d!108769 () Bool)

(assert (=> d!108769 e!488357))

(declare-fun res!596026 () Bool)

(assert (=> d!108769 (=> (not res!596026) (not e!488357))))

(assert (=> d!108769 (= res!596026 (isStrictlySorted!457 lt!396995))))

(declare-fun e!488360 () List!17477)

(assert (=> d!108769 (= lt!396995 e!488360)))

(assert (=> d!108769 (= c!92703 (and ((_ is Cons!17473) (toList!5205 lt!396665)) (bvslt (_1!5808 (h!18604 (toList!5205 lt!396665))) (_1!5808 lt!396662))))))

(assert (=> d!108769 (isStrictlySorted!457 (toList!5205 lt!396665))))

(assert (=> d!108769 (= (insertStrictlySorted!272 (toList!5205 lt!396665) (_1!5808 lt!396662) (_2!5808 lt!396662)) lt!396995)))

(declare-fun b!877229 () Bool)

(declare-fun c!92701 () Bool)

(assert (=> b!877229 (= c!92701 (and ((_ is Cons!17473) (toList!5205 lt!396665)) (bvsgt (_1!5808 (h!18604 (toList!5205 lt!396665))) (_1!5808 lt!396662))))))

(declare-fun e!488361 () List!17477)

(assert (=> b!877229 (= e!488361 e!488359)))

(declare-fun bm!38850 () Bool)

(declare-fun call!38853 () List!17477)

(assert (=> bm!38850 (= call!38853 call!38854)))

(declare-fun b!877230 () Bool)

(assert (=> b!877230 (= e!488361 call!38853)))

(declare-fun b!877231 () Bool)

(assert (=> b!877231 (= e!488360 call!38854)))

(declare-fun bm!38851 () Bool)

(assert (=> bm!38851 (= call!38852 call!38853)))

(declare-fun c!92700 () Bool)

(declare-fun b!877232 () Bool)

(assert (=> b!877232 (= e!488358 (ite c!92700 (t!24572 (toList!5205 lt!396665)) (ite c!92701 (Cons!17473 (h!18604 (toList!5205 lt!396665)) (t!24572 (toList!5205 lt!396665))) Nil!17474)))))

(declare-fun b!877233 () Bool)

(assert (=> b!877233 (= e!488360 e!488361)))

(assert (=> b!877233 (= c!92700 (and ((_ is Cons!17473) (toList!5205 lt!396665)) (= (_1!5808 (h!18604 (toList!5205 lt!396665))) (_1!5808 lt!396662))))))

(assert (= (and d!108769 c!92703) b!877231))

(assert (= (and d!108769 (not c!92703)) b!877233))

(assert (= (and b!877233 c!92700) b!877230))

(assert (= (and b!877233 (not c!92700)) b!877229))

(assert (= (and b!877229 c!92701) b!877228))

(assert (= (and b!877229 (not c!92701)) b!877226))

(assert (= (or b!877228 b!877226) bm!38851))

(assert (= (or b!877230 bm!38851) bm!38850))

(assert (= (or b!877231 bm!38850) bm!38849))

(assert (= (and bm!38849 c!92702) b!877227))

(assert (= (and bm!38849 (not c!92702)) b!877232))

(assert (= (and d!108769 res!596026) b!877224))

(assert (= (and b!877224 res!596025) b!877225))

(declare-fun m!817537 () Bool)

(assert (=> d!108769 m!817537))

(assert (=> d!108769 m!817169))

(declare-fun m!817539 () Bool)

(assert (=> b!877224 m!817539))

(declare-fun m!817541 () Bool)

(assert (=> b!877227 m!817541))

(declare-fun m!817543 () Bool)

(assert (=> bm!38849 m!817543))

(declare-fun m!817545 () Bool)

(assert (=> b!877225 m!817545))

(assert (=> d!108549 d!108769))

(declare-fun d!108771 () Bool)

(declare-fun e!488362 () Bool)

(assert (=> d!108771 e!488362))

(declare-fun res!596028 () Bool)

(assert (=> d!108771 (=> (not res!596028) (not e!488362))))

(declare-fun lt!396998 () ListLongMap!10379)

(assert (=> d!108771 (= res!596028 (contains!4245 lt!396998 (_1!5808 (tuple2!11597 k0!854 lt!396667))))))

(declare-fun lt!396996 () List!17477)

(assert (=> d!108771 (= lt!396998 (ListLongMap!10380 lt!396996))))

(declare-fun lt!396997 () Unit!29940)

(declare-fun lt!396999 () Unit!29940)

(assert (=> d!108771 (= lt!396997 lt!396999)))

(assert (=> d!108771 (= (getValueByKey!418 lt!396996 (_1!5808 (tuple2!11597 k0!854 lt!396667))) (Some!423 (_2!5808 (tuple2!11597 k0!854 lt!396667))))))

(assert (=> d!108771 (= lt!396999 (lemmaContainsTupThenGetReturnValue!234 lt!396996 (_1!5808 (tuple2!11597 k0!854 lt!396667)) (_2!5808 (tuple2!11597 k0!854 lt!396667))))))

(assert (=> d!108771 (= lt!396996 (insertStrictlySorted!272 (toList!5205 lt!396665) (_1!5808 (tuple2!11597 k0!854 lt!396667)) (_2!5808 (tuple2!11597 k0!854 lt!396667))))))

(assert (=> d!108771 (= (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396667)) lt!396998)))

(declare-fun b!877234 () Bool)

(declare-fun res!596027 () Bool)

(assert (=> b!877234 (=> (not res!596027) (not e!488362))))

(assert (=> b!877234 (= res!596027 (= (getValueByKey!418 (toList!5205 lt!396998) (_1!5808 (tuple2!11597 k0!854 lt!396667))) (Some!423 (_2!5808 (tuple2!11597 k0!854 lt!396667)))))))

(declare-fun b!877235 () Bool)

(assert (=> b!877235 (= e!488362 (contains!4246 (toList!5205 lt!396998) (tuple2!11597 k0!854 lt!396667)))))

(assert (= (and d!108771 res!596028) b!877234))

(assert (= (and b!877234 res!596027) b!877235))

(declare-fun m!817547 () Bool)

(assert (=> d!108771 m!817547))

(declare-fun m!817549 () Bool)

(assert (=> d!108771 m!817549))

(declare-fun m!817551 () Bool)

(assert (=> d!108771 m!817551))

(declare-fun m!817553 () Bool)

(assert (=> d!108771 m!817553))

(declare-fun m!817555 () Bool)

(assert (=> b!877234 m!817555))

(declare-fun m!817557 () Bool)

(assert (=> b!877235 m!817557))

(assert (=> d!108551 d!108771))

(declare-fun d!108773 () Bool)

(declare-fun e!488363 () Bool)

(assert (=> d!108773 e!488363))

(declare-fun res!596030 () Bool)

(assert (=> d!108773 (=> (not res!596030) (not e!488363))))

(declare-fun lt!397002 () ListLongMap!10379)

(assert (=> d!108773 (= res!596030 (contains!4245 lt!397002 (_1!5808 (tuple2!11597 k0!854 lt!396667))))))

(declare-fun lt!397000 () List!17477)

(assert (=> d!108773 (= lt!397002 (ListLongMap!10380 lt!397000))))

(declare-fun lt!397001 () Unit!29940)

(declare-fun lt!397003 () Unit!29940)

(assert (=> d!108773 (= lt!397001 lt!397003)))

(assert (=> d!108773 (= (getValueByKey!418 lt!397000 (_1!5808 (tuple2!11597 k0!854 lt!396667))) (Some!423 (_2!5808 (tuple2!11597 k0!854 lt!396667))))))

(assert (=> d!108773 (= lt!397003 (lemmaContainsTupThenGetReturnValue!234 lt!397000 (_1!5808 (tuple2!11597 k0!854 lt!396667)) (_2!5808 (tuple2!11597 k0!854 lt!396667))))))

(assert (=> d!108773 (= lt!397000 (insertStrictlySorted!272 (toList!5205 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668))) (_1!5808 (tuple2!11597 k0!854 lt!396667)) (_2!5808 (tuple2!11597 k0!854 lt!396667))))))

(assert (=> d!108773 (= (+!2441 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668)) (tuple2!11597 k0!854 lt!396667)) lt!397002)))

(declare-fun b!877236 () Bool)

(declare-fun res!596029 () Bool)

(assert (=> b!877236 (=> (not res!596029) (not e!488363))))

(assert (=> b!877236 (= res!596029 (= (getValueByKey!418 (toList!5205 lt!397002) (_1!5808 (tuple2!11597 k0!854 lt!396667))) (Some!423 (_2!5808 (tuple2!11597 k0!854 lt!396667)))))))

(declare-fun b!877237 () Bool)

(assert (=> b!877237 (= e!488363 (contains!4246 (toList!5205 lt!397002) (tuple2!11597 k0!854 lt!396667)))))

(assert (= (and d!108773 res!596030) b!877236))

(assert (= (and b!877236 res!596029) b!877237))

(declare-fun m!817559 () Bool)

(assert (=> d!108773 m!817559))

(declare-fun m!817561 () Bool)

(assert (=> d!108773 m!817561))

(declare-fun m!817563 () Bool)

(assert (=> d!108773 m!817563))

(declare-fun m!817565 () Bool)

(assert (=> d!108773 m!817565))

(declare-fun m!817567 () Bool)

(assert (=> b!877236 m!817567))

(declare-fun m!817569 () Bool)

(assert (=> b!877237 m!817569))

(assert (=> d!108551 d!108773))

(assert (=> d!108551 d!108553))

(declare-fun d!108775 () Bool)

(assert (=> d!108775 (= (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396667)) (+!2441 (+!2441 lt!396665 (tuple2!11597 k0!854 lt!396668)) (tuple2!11597 k0!854 lt!396667)))))

(assert (=> d!108775 true))

(declare-fun _$24!45 () Unit!29940)

(assert (=> d!108775 (= (choose!1438 lt!396665 k0!854 lt!396668 lt!396667) _$24!45)))

(declare-fun bs!24621 () Bool)

(assert (= bs!24621 d!108775))

(assert (=> bs!24621 m!816719))

(assert (=> bs!24621 m!816585))

(assert (=> bs!24621 m!816585))

(assert (=> bs!24621 m!816721))

(assert (=> d!108551 d!108775))

(declare-fun d!108777 () Bool)

(declare-fun e!488364 () Bool)

(assert (=> d!108777 e!488364))

(declare-fun res!596031 () Bool)

(assert (=> d!108777 (=> res!596031 e!488364)))

(declare-fun lt!397005 () Bool)

(assert (=> d!108777 (= res!596031 (not lt!397005))))

(declare-fun lt!397006 () Bool)

(assert (=> d!108777 (= lt!397005 lt!397006)))

(declare-fun lt!397004 () Unit!29940)

(declare-fun e!488365 () Unit!29940)

(assert (=> d!108777 (= lt!397004 e!488365)))

(declare-fun c!92704 () Bool)

(assert (=> d!108777 (= c!92704 lt!397006)))

(assert (=> d!108777 (= lt!397006 (containsKey!402 (toList!5205 lt!396744) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!108777 (= (contains!4245 lt!396744 #b1000000000000000000000000000000000000000000000000000000000000000) lt!397005)))

(declare-fun b!877238 () Bool)

(declare-fun lt!397007 () Unit!29940)

(assert (=> b!877238 (= e!488365 lt!397007)))

(assert (=> b!877238 (= lt!397007 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!5205 lt!396744) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!877238 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396744) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!877239 () Bool)

(declare-fun Unit!29963 () Unit!29940)

(assert (=> b!877239 (= e!488365 Unit!29963)))

(declare-fun b!877240 () Bool)

(assert (=> b!877240 (= e!488364 (isDefined!313 (getValueByKey!418 (toList!5205 lt!396744) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108777 c!92704) b!877238))

(assert (= (and d!108777 (not c!92704)) b!877239))

(assert (= (and d!108777 (not res!596031)) b!877240))

(declare-fun m!817571 () Bool)

(assert (=> d!108777 m!817571))

(declare-fun m!817573 () Bool)

(assert (=> b!877238 m!817573))

(declare-fun m!817575 () Bool)

(assert (=> b!877238 m!817575))

(assert (=> b!877238 m!817575))

(declare-fun m!817577 () Bool)

(assert (=> b!877238 m!817577))

(assert (=> b!877240 m!817575))

(assert (=> b!877240 m!817575))

(assert (=> b!877240 m!817577))

(assert (=> b!876794 d!108777))

(declare-fun d!108779 () Bool)

(declare-fun lt!397010 () Bool)

(declare-fun content!394 (List!17478) (InoxSet (_ BitVec 64)))

(assert (=> d!108779 (= lt!397010 (select (content!394 Nil!17475) (select (arr!24504 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun e!488371 () Bool)

(assert (=> d!108779 (= lt!397010 e!488371)))

(declare-fun res!596037 () Bool)

(assert (=> d!108779 (=> (not res!596037) (not e!488371))))

(assert (=> d!108779 (= res!596037 ((_ is Cons!17474) Nil!17475))))

(assert (=> d!108779 (= (contains!4244 Nil!17475 (select (arr!24504 _keys!868) #b00000000000000000000000000000000)) lt!397010)))

(declare-fun b!877245 () Bool)

(declare-fun e!488370 () Bool)

(assert (=> b!877245 (= e!488371 e!488370)))

(declare-fun res!596036 () Bool)

(assert (=> b!877245 (=> res!596036 e!488370)))

(assert (=> b!877245 (= res!596036 (= (h!18605 Nil!17475) (select (arr!24504 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!877246 () Bool)

(assert (=> b!877246 (= e!488370 (contains!4244 (t!24573 Nil!17475) (select (arr!24504 _keys!868) #b00000000000000000000000000000000)))))

(assert (= (and d!108779 res!596037) b!877245))

(assert (= (and b!877245 (not res!596036)) b!877246))

(declare-fun m!817579 () Bool)

(assert (=> d!108779 m!817579))

(assert (=> d!108779 m!816687))

(declare-fun m!817581 () Bool)

(assert (=> d!108779 m!817581))

(assert (=> b!877246 m!816687))

(declare-fun m!817583 () Bool)

(assert (=> b!877246 m!817583))

(assert (=> b!876736 d!108779))

(declare-fun mapNonEmpty!27759 () Bool)

(declare-fun mapRes!27759 () Bool)

(declare-fun tp!53238 () Bool)

(declare-fun e!488373 () Bool)

(assert (=> mapNonEmpty!27759 (= mapRes!27759 (and tp!53238 e!488373))))

(declare-fun mapValue!27759 () ValueCell!8274)

(declare-fun mapKey!27759 () (_ BitVec 32))

(declare-fun mapRest!27759 () (Array (_ BitVec 32) ValueCell!8274))

(assert (=> mapNonEmpty!27759 (= mapRest!27758 (store mapRest!27759 mapKey!27759 mapValue!27759))))

(declare-fun b!877247 () Bool)

(assert (=> b!877247 (= e!488373 tp_is_empty!17427)))

(declare-fun condMapEmpty!27759 () Bool)

(declare-fun mapDefault!27759 () ValueCell!8274)

(assert (=> mapNonEmpty!27758 (= condMapEmpty!27759 (= mapRest!27758 ((as const (Array (_ BitVec 32) ValueCell!8274)) mapDefault!27759)))))

(declare-fun e!488372 () Bool)

(assert (=> mapNonEmpty!27758 (= tp!53237 (and e!488372 mapRes!27759))))

(declare-fun b!877248 () Bool)

(assert (=> b!877248 (= e!488372 tp_is_empty!17427)))

(declare-fun mapIsEmpty!27759 () Bool)

(assert (=> mapIsEmpty!27759 mapRes!27759))

(assert (= (and mapNonEmpty!27758 condMapEmpty!27759) mapIsEmpty!27759))

(assert (= (and mapNonEmpty!27758 (not condMapEmpty!27759)) mapNonEmpty!27759))

(assert (= (and mapNonEmpty!27759 ((_ is ValueCellFull!8274) mapValue!27759)) b!877247))

(assert (= (and mapNonEmpty!27758 ((_ is ValueCellFull!8274) mapDefault!27759)) b!877248))

(declare-fun m!817585 () Bool)

(assert (=> mapNonEmpty!27759 m!817585))

(declare-fun b_lambda!12339 () Bool)

(assert (= b_lambda!12325 (or (and start!74468 b_free!15183) b_lambda!12339)))

(declare-fun b_lambda!12341 () Bool)

(assert (= b_lambda!12319 (or (and start!74468 b_free!15183) b_lambda!12341)))

(declare-fun b_lambda!12343 () Bool)

(assert (= b_lambda!12323 (or (and start!74468 b_free!15183) b_lambda!12343)))

(declare-fun b_lambda!12345 () Bool)

(assert (= b_lambda!12331 (or (and start!74468 b_free!15183) b_lambda!12345)))

(declare-fun b_lambda!12347 () Bool)

(assert (= b_lambda!12337 (or (and start!74468 b_free!15183) b_lambda!12347)))

(declare-fun b_lambda!12349 () Bool)

(assert (= b_lambda!12329 (or (and start!74468 b_free!15183) b_lambda!12349)))

(declare-fun b_lambda!12351 () Bool)

(assert (= b_lambda!12333 (or (and start!74468 b_free!15183) b_lambda!12351)))

(declare-fun b_lambda!12353 () Bool)

(assert (= b_lambda!12321 (or (and start!74468 b_free!15183) b_lambda!12353)))

(declare-fun b_lambda!12355 () Bool)

(assert (= b_lambda!12327 (or (and start!74468 b_free!15183) b_lambda!12355)))

(declare-fun b_lambda!12357 () Bool)

(assert (= b_lambda!12335 (or (and start!74468 b_free!15183) b_lambda!12357)))

(check-sat (not b!877046) (not mapNonEmpty!27759) (not d!108753) (not b!877074) (not b!876900) (not d!108747) (not b!877100) (not b!877016) (not b!877153) (not d!108713) (not b_lambda!12357) (not b!877071) (not b!876871) (not d!108729) (not b!877234) (not b!877068) (not b!876870) (not b!877037) (not b!877182) (not b!877235) (not b!877008) (not d!108679) (not b!876965) (not d!108627) (not d!108617) (not b!877098) (not b!877162) (not b!876895) (not b!877227) (not d!108687) (not b!877217) (not b_lambda!12341) (not b!877169) (not b!877145) (not bm!38816) (not b!877075) (not b!876942) (not b!876923) (not b!877064) (not b!877019) (not b_lambda!12285) (not b!877175) (not b!877160) (not b!877222) (not d!108739) (not d!108741) (not b!877208) (not b!877092) (not b!876879) (not d!108607) (not b!876943) (not d!108643) (not d!108589) (not d!108637) (not b!877107) (not b!877187) (not b!877099) (not b!877102) (not b!877167) (not d!108759) (not b!877224) (not b_lambda!12349) (not d!108651) (not bm!38839) (not b!877087) (not b!877115) (not b!877196) (not b!877113) (not d!108767) (not b_lambda!12311) (not d!108681) (not b!877198) (not b_lambda!12343) (not b!876884) (not d!108773) (not b!877154) (not d!108721) (not b!877021) (not b!877174) (not b!877172) (not d!108751) (not d!108693) (not b!876987) (not b!876882) (not bm!38823) (not b!876881) (not b!876899) (not bm!38842) (not b!877035) (not b!877119) (not b_lambda!12355) (not b!877246) (not b!877089) (not b_lambda!12309) (not b!877183) (not d!108685) (not b_lambda!12339) (not d!108763) (not b!877094) (not b!877143) (not d!108671) (not b!876901) (not b!877040) (not b!876908) (not b!877018) (not b!876894) (not d!108647) (not d!108611) (not b!877225) (not d!108593) (not d!108779) (not b!877204) (not b!877056) (not d!108725) (not d!108653) (not b!877001) (not b!877135) (not d!108659) (not b!877073) (not b!877128) (not b!876924) (not d!108665) (not b!876891) (not d!108655) (not b!877009) (not d!108727) (not b_lambda!12347) (not d!108711) (not b!877006) (not b!876876) (not b!877142) (not b!876933) (not b!877122) (not d!108631) (not b!877136) (not bm!38832) (not b!876873) (not b!877044) (not b!876926) (not b!877201) (not d!108755) (not b!877034) (not b!876921) (not d!108775) (not b_lambda!12303) (not b_lambda!12305) (not b!877177) (not d!108613) (not b!877132) (not b!876975) (not b!877110) (not bm!38840) (not b!877124) (not d!108777) (not b!877223) (not d!108603) (not b_lambda!12345) (not b_lambda!12317) (not bm!38836) (not b!877118) (not b!876874) (not b!877096) (not b!877043) (not d!108735) (not b!877011) (not b!877052) (not b!877080) (not bm!38846) (not b!877237) (not bm!38843) (not b!877206) (not b!877238) (not d!108639) (not b!877180) (not b!876896) (not b!877220) (not bm!38815) (not b!877101) (not b!877150) (not bm!38841) (not d!108649) (not b!877049) (not b!877091) (not b!876928) (not b!877137) (not d!108601) (not b_lambda!12315) (not d!108769) tp_is_empty!17427 (not d!108595) (not b_lambda!12351) (not b!877205) (not b!877155) (not b!877157) (not b!877171) (not d!108697) (not bm!38831) (not b!877215) (not d!108591) (not b!876967) (not b!877109) (not d!108661) (not d!108689) (not b!877203) (not b!877194) (not b!877078) (not b!877151) (not b!876964) (not b!877184) (not d!108695) (not d!108667) (not b!877120) (not b!877066) (not b!877158) (not d!108699) (not b!877013) (not d!108625) (not d!108663) (not b!877051) (not d!108701) (not b!877053) (not b!877031) (not b!877042) (not b_next!15183) (not d!108587) (not b!877146) (not bm!38835) (not b!877077) (not d!108771) (not b!877032) (not b_lambda!12353) (not b!877159) (not b!876898) (not b!877236) (not b!877104) (not b!877165) (not d!108743) (not d!108733) (not d!108717) (not d!108749) (not b!877010) b_and!25079 (not b!877123) (not b!877065) (not b!877195) (not b!876872) (not b!877063) (not b!877141) (not b!877185) (not d!108705) (not b!877054) (not b_lambda!12313) (not b!876980) (not b!877020) (not d!108719) (not b!876927) (not b!877149) (not b!877093) (not b!876902) (not d!108623) (not b!877147) (not b!877083) (not bm!38849) (not b!877240) (not b!877139) (not d!108597) (not b!877138) (not b!876919) (not bm!38830) (not b!877168) (not b!877117) (not d!108619) (not b!877033) (not d!108635) (not b!876936) (not d!108761) (not b!876931) (not b!876893) (not b!877023) (not d!108731) (not b_lambda!12307))
(check-sat b_and!25079 (not b_next!15183))
