; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74980 () Bool)

(assert start!74980)

(declare-fun b_free!15471 () Bool)

(declare-fun b_next!15471 () Bool)

(assert (=> start!74980 (= b_free!15471 (not b_next!15471))))

(declare-fun tp!54117 () Bool)

(declare-fun b_and!25659 () Bool)

(assert (=> start!74980 (= tp!54117 b_and!25659)))

(declare-fun b!884133 () Bool)

(declare-fun e!492061 () Bool)

(declare-fun e!492057 () Bool)

(assert (=> b!884133 (= e!492061 e!492057)))

(declare-fun res!600758 () Bool)

(assert (=> b!884133 (=> res!600758 e!492057)))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!51540 0))(
  ( (array!51541 (arr!24785 (Array (_ BitVec 32) (_ BitVec 64))) (size!25226 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51540)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!884133 (= res!600758 (= k0!854 (select (arr!24785 _keys!868) from!1053)))))

(assert (=> b!884133 (not (= (select (arr!24785 _keys!868) from!1053) k0!854))))

(declare-datatypes ((Unit!30165 0))(
  ( (Unit!30166) )
))
(declare-fun lt!400488 () Unit!30165)

(declare-fun e!492059 () Unit!30165)

(assert (=> b!884133 (= lt!400488 e!492059)))

(declare-fun c!93030 () Bool)

(assert (=> b!884133 (= c!93030 (= (select (arr!24785 _keys!868) from!1053) k0!854))))

(declare-datatypes ((V!28667 0))(
  ( (V!28668 (val!8905 Int)) )
))
(declare-datatypes ((tuple2!11838 0))(
  ( (tuple2!11839 (_1!5929 (_ BitVec 64)) (_2!5929 V!28667)) )
))
(declare-datatypes ((List!17701 0))(
  ( (Nil!17698) (Cons!17697 (h!18828 tuple2!11838) (t!24982 List!17701)) )
))
(declare-datatypes ((ListLongMap!10621 0))(
  ( (ListLongMap!10622 (toList!5326 List!17701)) )
))
(declare-fun lt!400489 () ListLongMap!10621)

(declare-fun lt!400485 () ListLongMap!10621)

(assert (=> b!884133 (= lt!400489 lt!400485)))

(declare-fun lt!400486 () ListLongMap!10621)

(declare-fun lt!400491 () tuple2!11838)

(declare-fun +!2529 (ListLongMap!10621 tuple2!11838) ListLongMap!10621)

(assert (=> b!884133 (= lt!400485 (+!2529 lt!400486 lt!400491))))

(declare-fun lt!400483 () V!28667)

(assert (=> b!884133 (= lt!400491 (tuple2!11839 (select (arr!24785 _keys!868) from!1053) lt!400483))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!8418 0))(
  ( (ValueCellFull!8418 (v!11370 V!28667)) (EmptyCell!8418) )
))
(declare-datatypes ((array!51542 0))(
  ( (array!51543 (arr!24786 (Array (_ BitVec 32) ValueCell!8418)) (size!25227 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51542)

(declare-fun get!13075 (ValueCell!8418 V!28667) V!28667)

(declare-fun dynLambda!1280 (Int (_ BitVec 64)) V!28667)

(assert (=> b!884133 (= lt!400483 (get!13075 (select (arr!24786 _values!688) from!1053) (dynLambda!1280 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!884134 () Bool)

(declare-fun Unit!30167 () Unit!30165)

(assert (=> b!884134 (= e!492059 Unit!30167)))

(declare-fun b!884135 () Bool)

(declare-fun e!492062 () Bool)

(declare-fun e!492056 () Bool)

(declare-fun mapRes!28209 () Bool)

(assert (=> b!884135 (= e!492062 (and e!492056 mapRes!28209))))

(declare-fun condMapEmpty!28209 () Bool)

(declare-fun mapDefault!28209 () ValueCell!8418)

(assert (=> b!884135 (= condMapEmpty!28209 (= (arr!24786 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8418)) mapDefault!28209)))))

(declare-fun b!884136 () Bool)

(declare-fun res!600756 () Bool)

(declare-fun e!492054 () Bool)

(assert (=> b!884136 (=> (not res!600756) (not e!492054))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!884136 (= res!600756 (validMask!0 mask!1196))))

(declare-fun res!600757 () Bool)

(assert (=> start!74980 (=> (not res!600757) (not e!492054))))

(assert (=> start!74980 (= res!600757 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25226 _keys!868))))))

(assert (=> start!74980 e!492054))

(declare-fun tp_is_empty!17715 () Bool)

(assert (=> start!74980 tp_is_empty!17715))

(assert (=> start!74980 true))

(assert (=> start!74980 tp!54117))

(declare-fun array_inv!19490 (array!51540) Bool)

(assert (=> start!74980 (array_inv!19490 _keys!868)))

(declare-fun array_inv!19491 (array!51542) Bool)

(assert (=> start!74980 (and (array_inv!19491 _values!688) e!492062)))

(declare-fun b!884137 () Bool)

(declare-fun lt!400487 () tuple2!11838)

(declare-fun lt!400480 () ListLongMap!10621)

(assert (=> b!884137 (= e!492057 (= lt!400489 (+!2529 lt!400480 lt!400487)))))

(declare-fun lt!400484 () ListLongMap!10621)

(assert (=> b!884137 (= lt!400485 (+!2529 (+!2529 lt!400484 lt!400491) lt!400487))))

(declare-fun lt!400493 () Unit!30165)

(declare-fun v!557 () V!28667)

(declare-fun addCommutativeForDiffKeys!549 (ListLongMap!10621 (_ BitVec 64) V!28667 (_ BitVec 64) V!28667) Unit!30165)

(assert (=> b!884137 (= lt!400493 (addCommutativeForDiffKeys!549 lt!400484 k0!854 v!557 (select (arr!24785 _keys!868) from!1053) lt!400483))))

(declare-fun b!884138 () Bool)

(declare-fun e!492058 () Bool)

(assert (=> b!884138 (= e!492058 tp_is_empty!17715)))

(declare-fun b!884139 () Bool)

(declare-fun res!600754 () Bool)

(assert (=> b!884139 (=> (not res!600754) (not e!492054))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!884139 (= res!600754 (and (= (select (arr!24785 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!884140 () Bool)

(declare-fun Unit!30168 () Unit!30165)

(assert (=> b!884140 (= e!492059 Unit!30168)))

(declare-fun lt!400492 () Unit!30165)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51540 (_ BitVec 32) (_ BitVec 32)) Unit!30165)

(assert (=> b!884140 (= lt!400492 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17702 0))(
  ( (Nil!17699) (Cons!17698 (h!18829 (_ BitVec 64)) (t!24983 List!17702)) )
))
(declare-fun arrayNoDuplicates!0 (array!51540 (_ BitVec 32) List!17702) Bool)

(assert (=> b!884140 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17699)))

(declare-fun lt!400481 () Unit!30165)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51540 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30165)

(assert (=> b!884140 (= lt!400481 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!51540 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!884140 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!400490 () Unit!30165)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!51540 (_ BitVec 64) (_ BitVec 32) List!17702) Unit!30165)

(assert (=> b!884140 (= lt!400490 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17699))))

(assert (=> b!884140 false))

(declare-fun mapIsEmpty!28209 () Bool)

(assert (=> mapIsEmpty!28209 mapRes!28209))

(declare-fun b!884141 () Bool)

(declare-fun res!600751 () Bool)

(assert (=> b!884141 (=> (not res!600751) (not e!492054))))

(assert (=> b!884141 (= res!600751 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25226 _keys!868))))))

(declare-fun b!884142 () Bool)

(declare-fun res!600750 () Bool)

(assert (=> b!884142 (=> (not res!600750) (not e!492054))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!884142 (= res!600750 (and (= (size!25227 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25226 _keys!868) (size!25227 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!884143 () Bool)

(declare-fun e!492060 () Bool)

(assert (=> b!884143 (= e!492054 e!492060)))

(declare-fun res!600760 () Bool)

(assert (=> b!884143 (=> (not res!600760) (not e!492060))))

(assert (=> b!884143 (= res!600760 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!400482 () array!51542)

(declare-fun minValue!654 () V!28667)

(declare-fun zeroValue!654 () V!28667)

(declare-fun getCurrentListMapNoExtraKeys!3280 (array!51540 array!51542 (_ BitVec 32) (_ BitVec 32) V!28667 V!28667 (_ BitVec 32) Int) ListLongMap!10621)

(assert (=> b!884143 (= lt!400489 (getCurrentListMapNoExtraKeys!3280 _keys!868 lt!400482 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!884143 (= lt!400482 (array!51543 (store (arr!24786 _values!688) i!612 (ValueCellFull!8418 v!557)) (size!25227 _values!688)))))

(assert (=> b!884143 (= lt!400480 (getCurrentListMapNoExtraKeys!3280 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!28209 () Bool)

(declare-fun tp!54116 () Bool)

(assert (=> mapNonEmpty!28209 (= mapRes!28209 (and tp!54116 e!492058))))

(declare-fun mapKey!28209 () (_ BitVec 32))

(declare-fun mapValue!28209 () ValueCell!8418)

(declare-fun mapRest!28209 () (Array (_ BitVec 32) ValueCell!8418))

(assert (=> mapNonEmpty!28209 (= (arr!24786 _values!688) (store mapRest!28209 mapKey!28209 mapValue!28209))))

(declare-fun b!884144 () Bool)

(declare-fun res!600759 () Bool)

(assert (=> b!884144 (=> (not res!600759) (not e!492054))))

(assert (=> b!884144 (= res!600759 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17699))))

(declare-fun b!884145 () Bool)

(declare-fun res!600753 () Bool)

(assert (=> b!884145 (=> (not res!600753) (not e!492054))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!884145 (= res!600753 (validKeyInArray!0 k0!854))))

(declare-fun b!884146 () Bool)

(assert (=> b!884146 (= e!492056 tp_is_empty!17715)))

(declare-fun b!884147 () Bool)

(assert (=> b!884147 (= e!492060 (not e!492061))))

(declare-fun res!600755 () Bool)

(assert (=> b!884147 (=> res!600755 e!492061)))

(assert (=> b!884147 (= res!600755 (not (validKeyInArray!0 (select (arr!24785 _keys!868) from!1053))))))

(declare-fun lt!400494 () ListLongMap!10621)

(assert (=> b!884147 (= lt!400494 lt!400486)))

(assert (=> b!884147 (= lt!400486 (+!2529 lt!400484 lt!400487))))

(assert (=> b!884147 (= lt!400494 (getCurrentListMapNoExtraKeys!3280 _keys!868 lt!400482 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!884147 (= lt!400487 (tuple2!11839 k0!854 v!557))))

(assert (=> b!884147 (= lt!400484 (getCurrentListMapNoExtraKeys!3280 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!400495 () Unit!30165)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!750 (array!51540 array!51542 (_ BitVec 32) (_ BitVec 32) V!28667 V!28667 (_ BitVec 32) (_ BitVec 64) V!28667 (_ BitVec 32) Int) Unit!30165)

(assert (=> b!884147 (= lt!400495 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!750 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!884148 () Bool)

(declare-fun res!600752 () Bool)

(assert (=> b!884148 (=> (not res!600752) (not e!492054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51540 (_ BitVec 32)) Bool)

(assert (=> b!884148 (= res!600752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!74980 res!600757) b!884136))

(assert (= (and b!884136 res!600756) b!884142))

(assert (= (and b!884142 res!600750) b!884148))

(assert (= (and b!884148 res!600752) b!884144))

(assert (= (and b!884144 res!600759) b!884141))

(assert (= (and b!884141 res!600751) b!884145))

(assert (= (and b!884145 res!600753) b!884139))

(assert (= (and b!884139 res!600754) b!884143))

(assert (= (and b!884143 res!600760) b!884147))

(assert (= (and b!884147 (not res!600755)) b!884133))

(assert (= (and b!884133 c!93030) b!884140))

(assert (= (and b!884133 (not c!93030)) b!884134))

(assert (= (and b!884133 (not res!600758)) b!884137))

(assert (= (and b!884135 condMapEmpty!28209) mapIsEmpty!28209))

(assert (= (and b!884135 (not condMapEmpty!28209)) mapNonEmpty!28209))

(get-info :version)

(assert (= (and mapNonEmpty!28209 ((_ is ValueCellFull!8418) mapValue!28209)) b!884138))

(assert (= (and b!884135 ((_ is ValueCellFull!8418) mapDefault!28209)) b!884146))

(assert (= start!74980 b!884135))

(declare-fun b_lambda!12779 () Bool)

(assert (=> (not b_lambda!12779) (not b!884133)))

(declare-fun t!24981 () Bool)

(declare-fun tb!5137 () Bool)

(assert (=> (and start!74980 (= defaultEntry!696 defaultEntry!696) t!24981) tb!5137))

(declare-fun result!9901 () Bool)

(assert (=> tb!5137 (= result!9901 tp_is_empty!17715)))

(assert (=> b!884133 t!24981))

(declare-fun b_and!25661 () Bool)

(assert (= b_and!25659 (and (=> t!24981 result!9901) b_and!25661)))

(declare-fun m!824409 () Bool)

(assert (=> start!74980 m!824409))

(declare-fun m!824411 () Bool)

(assert (=> start!74980 m!824411))

(declare-fun m!824413 () Bool)

(assert (=> b!884143 m!824413))

(declare-fun m!824415 () Bool)

(assert (=> b!884143 m!824415))

(declare-fun m!824417 () Bool)

(assert (=> b!884143 m!824417))

(declare-fun m!824419 () Bool)

(assert (=> b!884147 m!824419))

(declare-fun m!824421 () Bool)

(assert (=> b!884147 m!824421))

(assert (=> b!884147 m!824419))

(declare-fun m!824423 () Bool)

(assert (=> b!884147 m!824423))

(declare-fun m!824425 () Bool)

(assert (=> b!884147 m!824425))

(declare-fun m!824427 () Bool)

(assert (=> b!884147 m!824427))

(declare-fun m!824429 () Bool)

(assert (=> b!884147 m!824429))

(declare-fun m!824431 () Bool)

(assert (=> b!884136 m!824431))

(declare-fun m!824433 () Bool)

(assert (=> b!884139 m!824433))

(declare-fun m!824435 () Bool)

(assert (=> b!884137 m!824435))

(declare-fun m!824437 () Bool)

(assert (=> b!884137 m!824437))

(assert (=> b!884137 m!824419))

(assert (=> b!884137 m!824435))

(assert (=> b!884137 m!824419))

(declare-fun m!824439 () Bool)

(assert (=> b!884137 m!824439))

(declare-fun m!824441 () Bool)

(assert (=> b!884137 m!824441))

(declare-fun m!824443 () Bool)

(assert (=> b!884145 m!824443))

(declare-fun m!824445 () Bool)

(assert (=> b!884133 m!824445))

(declare-fun m!824447 () Bool)

(assert (=> b!884133 m!824447))

(declare-fun m!824449 () Bool)

(assert (=> b!884133 m!824449))

(declare-fun m!824451 () Bool)

(assert (=> b!884133 m!824451))

(assert (=> b!884133 m!824447))

(assert (=> b!884133 m!824419))

(assert (=> b!884133 m!824449))

(declare-fun m!824453 () Bool)

(assert (=> b!884140 m!824453))

(declare-fun m!824455 () Bool)

(assert (=> b!884140 m!824455))

(declare-fun m!824457 () Bool)

(assert (=> b!884140 m!824457))

(declare-fun m!824459 () Bool)

(assert (=> b!884140 m!824459))

(declare-fun m!824461 () Bool)

(assert (=> b!884140 m!824461))

(declare-fun m!824463 () Bool)

(assert (=> mapNonEmpty!28209 m!824463))

(declare-fun m!824465 () Bool)

(assert (=> b!884148 m!824465))

(declare-fun m!824467 () Bool)

(assert (=> b!884144 m!824467))

(check-sat (not b!884145) (not b!884143) (not b!884137) (not start!74980) (not b!884140) (not b!884148) (not b!884144) (not b!884133) (not b_lambda!12779) b_and!25661 tp_is_empty!17715 (not mapNonEmpty!28209) (not b!884136) (not b_next!15471) (not b!884147))
(check-sat b_and!25661 (not b_next!15471))
(get-model)

(declare-fun b_lambda!12783 () Bool)

(assert (= b_lambda!12779 (or (and start!74980 b_free!15471) b_lambda!12783)))

(check-sat (not b!884145) (not b!884143) (not b!884137) (not b!884140) (not b!884148) (not b!884144) (not b!884133) b_and!25661 tp_is_empty!17715 (not mapNonEmpty!28209) (not b!884136) (not b_lambda!12783) (not start!74980) (not b_next!15471) (not b!884147))
(check-sat b_and!25661 (not b_next!15471))
(get-model)

(declare-fun d!109129 () Bool)

(assert (=> d!109129 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17699)))

(declare-fun lt!400546 () Unit!30165)

(declare-fun choose!39 (array!51540 (_ BitVec 32) (_ BitVec 32)) Unit!30165)

(assert (=> d!109129 (= lt!400546 (choose!39 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> d!109129 (bvslt (size!25226 _keys!868) #b01111111111111111111111111111111)))

(assert (=> d!109129 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053) lt!400546)))

(declare-fun bs!24774 () Bool)

(assert (= bs!24774 d!109129))

(assert (=> bs!24774 m!824453))

(declare-fun m!824529 () Bool)

(assert (=> bs!24774 m!824529))

(assert (=> b!884140 d!109129))

(declare-fun d!109131 () Bool)

(assert (=> d!109131 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!400549 () Unit!30165)

(declare-fun choose!114 (array!51540 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30165)

(assert (=> d!109131 (= lt!400549 (choose!114 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> d!109131 (bvsge i!612 #b00000000000000000000000000000000)))

(assert (=> d!109131 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)) lt!400549)))

(declare-fun bs!24775 () Bool)

(assert (= bs!24775 d!109131))

(assert (=> bs!24775 m!824461))

(declare-fun m!824531 () Bool)

(assert (=> bs!24775 m!824531))

(assert (=> b!884140 d!109131))

(declare-fun d!109133 () Bool)

(assert (=> d!109133 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25226 _keys!868)) (not (= (select (arr!24785 _keys!868) from!1053) k0!854)))))

(declare-fun lt!400552 () Unit!30165)

(declare-fun choose!21 (array!51540 (_ BitVec 64) (_ BitVec 32) List!17702) Unit!30165)

(assert (=> d!109133 (= lt!400552 (choose!21 _keys!868 k0!854 from!1053 Nil!17699))))

(assert (=> d!109133 (bvslt (size!25226 _keys!868) #b01111111111111111111111111111111)))

(assert (=> d!109133 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17699) lt!400552)))

(declare-fun bs!24776 () Bool)

(assert (= bs!24776 d!109133))

(assert (=> bs!24776 m!824419))

(declare-fun m!824533 () Bool)

(assert (=> bs!24776 m!824533))

(assert (=> b!884140 d!109133))

(declare-fun d!109135 () Bool)

(declare-fun res!600798 () Bool)

(declare-fun e!492094 () Bool)

(assert (=> d!109135 (=> res!600798 e!492094)))

(assert (=> d!109135 (= res!600798 (= (select (arr!24785 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) k0!854))))

(assert (=> d!109135 (= (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053)) e!492094)))

(declare-fun b!884205 () Bool)

(declare-fun e!492095 () Bool)

(assert (=> b!884205 (= e!492094 e!492095)))

(declare-fun res!600799 () Bool)

(assert (=> b!884205 (=> (not res!600799) (not e!492095))))

(assert (=> b!884205 (= res!600799 (bvslt (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) (size!25226 _keys!868)))))

(declare-fun b!884206 () Bool)

(assert (=> b!884206 (= e!492095 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001)))))

(assert (= (and d!109135 (not res!600798)) b!884205))

(assert (= (and b!884205 res!600799) b!884206))

(declare-fun m!824535 () Bool)

(assert (=> d!109135 m!824535))

(declare-fun m!824537 () Bool)

(assert (=> b!884206 m!824537))

(assert (=> b!884140 d!109135))

(declare-fun call!38988 () Bool)

(declare-fun c!93036 () Bool)

(declare-fun bm!38985 () Bool)

(assert (=> bm!38985 (= call!38988 (arrayNoDuplicates!0 _keys!868 (bvadd from!1053 #b00000000000000000000000000000001) (ite c!93036 (Cons!17698 (select (arr!24785 _keys!868) from!1053) Nil!17699) Nil!17699)))))

(declare-fun b!884217 () Bool)

(declare-fun e!492105 () Bool)

(assert (=> b!884217 (= e!492105 call!38988)))

(declare-fun d!109137 () Bool)

(declare-fun res!600806 () Bool)

(declare-fun e!492104 () Bool)

(assert (=> d!109137 (=> res!600806 e!492104)))

(assert (=> d!109137 (= res!600806 (bvsge from!1053 (size!25226 _keys!868)))))

(assert (=> d!109137 (= (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17699) e!492104)))

(declare-fun b!884218 () Bool)

(declare-fun e!492107 () Bool)

(assert (=> b!884218 (= e!492104 e!492107)))

(declare-fun res!600807 () Bool)

(assert (=> b!884218 (=> (not res!600807) (not e!492107))))

(declare-fun e!492106 () Bool)

(assert (=> b!884218 (= res!600807 (not e!492106))))

(declare-fun res!600808 () Bool)

(assert (=> b!884218 (=> (not res!600808) (not e!492106))))

(assert (=> b!884218 (= res!600808 (validKeyInArray!0 (select (arr!24785 _keys!868) from!1053)))))

(declare-fun b!884219 () Bool)

(assert (=> b!884219 (= e!492107 e!492105)))

(assert (=> b!884219 (= c!93036 (validKeyInArray!0 (select (arr!24785 _keys!868) from!1053)))))

(declare-fun b!884220 () Bool)

(declare-fun contains!4273 (List!17702 (_ BitVec 64)) Bool)

(assert (=> b!884220 (= e!492106 (contains!4273 Nil!17699 (select (arr!24785 _keys!868) from!1053)))))

(declare-fun b!884221 () Bool)

(assert (=> b!884221 (= e!492105 call!38988)))

(assert (= (and d!109137 (not res!600806)) b!884218))

(assert (= (and b!884218 res!600808) b!884220))

(assert (= (and b!884218 res!600807) b!884219))

(assert (= (and b!884219 c!93036) b!884221))

(assert (= (and b!884219 (not c!93036)) b!884217))

(assert (= (or b!884221 b!884217) bm!38985))

(assert (=> bm!38985 m!824419))

(declare-fun m!824539 () Bool)

(assert (=> bm!38985 m!824539))

(assert (=> b!884218 m!824419))

(assert (=> b!884218 m!824419))

(assert (=> b!884218 m!824421))

(assert (=> b!884219 m!824419))

(assert (=> b!884219 m!824419))

(assert (=> b!884219 m!824421))

(assert (=> b!884220 m!824419))

(assert (=> b!884220 m!824419))

(declare-fun m!824541 () Bool)

(assert (=> b!884220 m!824541))

(assert (=> b!884140 d!109137))

(declare-fun d!109139 () Bool)

(assert (=> d!109139 (= (array_inv!19490 _keys!868) (bvsge (size!25226 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!74980 d!109139))

(declare-fun d!109141 () Bool)

(assert (=> d!109141 (= (array_inv!19491 _values!688) (bvsge (size!25227 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!74980 d!109141))

(declare-fun bm!38986 () Bool)

(declare-fun call!38989 () Bool)

(declare-fun c!93037 () Bool)

(assert (=> bm!38986 (= call!38989 (arrayNoDuplicates!0 _keys!868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!93037 (Cons!17698 (select (arr!24785 _keys!868) #b00000000000000000000000000000000) Nil!17699) Nil!17699)))))

(declare-fun b!884222 () Bool)

(declare-fun e!492109 () Bool)

(assert (=> b!884222 (= e!492109 call!38989)))

(declare-fun d!109143 () Bool)

(declare-fun res!600809 () Bool)

(declare-fun e!492108 () Bool)

(assert (=> d!109143 (=> res!600809 e!492108)))

(assert (=> d!109143 (= res!600809 (bvsge #b00000000000000000000000000000000 (size!25226 _keys!868)))))

(assert (=> d!109143 (= (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17699) e!492108)))

(declare-fun b!884223 () Bool)

(declare-fun e!492111 () Bool)

(assert (=> b!884223 (= e!492108 e!492111)))

(declare-fun res!600810 () Bool)

(assert (=> b!884223 (=> (not res!600810) (not e!492111))))

(declare-fun e!492110 () Bool)

(assert (=> b!884223 (= res!600810 (not e!492110))))

(declare-fun res!600811 () Bool)

(assert (=> b!884223 (=> (not res!600811) (not e!492110))))

(assert (=> b!884223 (= res!600811 (validKeyInArray!0 (select (arr!24785 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!884224 () Bool)

(assert (=> b!884224 (= e!492111 e!492109)))

(assert (=> b!884224 (= c!93037 (validKeyInArray!0 (select (arr!24785 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!884225 () Bool)

(assert (=> b!884225 (= e!492110 (contains!4273 Nil!17699 (select (arr!24785 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!884226 () Bool)

(assert (=> b!884226 (= e!492109 call!38989)))

(assert (= (and d!109143 (not res!600809)) b!884223))

(assert (= (and b!884223 res!600811) b!884225))

(assert (= (and b!884223 res!600810) b!884224))

(assert (= (and b!884224 c!93037) b!884226))

(assert (= (and b!884224 (not c!93037)) b!884222))

(assert (= (or b!884226 b!884222) bm!38986))

(declare-fun m!824543 () Bool)

(assert (=> bm!38986 m!824543))

(declare-fun m!824545 () Bool)

(assert (=> bm!38986 m!824545))

(assert (=> b!884223 m!824543))

(assert (=> b!884223 m!824543))

(declare-fun m!824547 () Bool)

(assert (=> b!884223 m!824547))

(assert (=> b!884224 m!824543))

(assert (=> b!884224 m!824543))

(assert (=> b!884224 m!824547))

(assert (=> b!884225 m!824543))

(assert (=> b!884225 m!824543))

(declare-fun m!824549 () Bool)

(assert (=> b!884225 m!824549))

(assert (=> b!884144 d!109143))

(declare-fun call!38992 () ListLongMap!10621)

(declare-fun bm!38989 () Bool)

(assert (=> bm!38989 (= call!38992 (getCurrentListMapNoExtraKeys!3280 _keys!868 lt!400482 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!884251 () Bool)

(declare-fun e!492128 () ListLongMap!10621)

(declare-fun e!492132 () ListLongMap!10621)

(assert (=> b!884251 (= e!492128 e!492132)))

(declare-fun c!93047 () Bool)

(assert (=> b!884251 (= c!93047 (validKeyInArray!0 (select (arr!24785 _keys!868) from!1053)))))

(declare-fun lt!400567 () ListLongMap!10621)

(declare-fun e!492129 () Bool)

(declare-fun b!884252 () Bool)

(assert (=> b!884252 (= e!492129 (= lt!400567 (getCurrentListMapNoExtraKeys!3280 _keys!868 lt!400482 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!884253 () Bool)

(declare-fun lt!400572 () Unit!30165)

(declare-fun lt!400570 () Unit!30165)

(assert (=> b!884253 (= lt!400572 lt!400570)))

(declare-fun lt!400571 () ListLongMap!10621)

(declare-fun lt!400568 () (_ BitVec 64))

(declare-fun lt!400573 () (_ BitVec 64))

(declare-fun lt!400569 () V!28667)

(declare-fun contains!4274 (ListLongMap!10621 (_ BitVec 64)) Bool)

(assert (=> b!884253 (not (contains!4274 (+!2529 lt!400571 (tuple2!11839 lt!400573 lt!400569)) lt!400568))))

(declare-fun addStillNotContains!212 (ListLongMap!10621 (_ BitVec 64) V!28667 (_ BitVec 64)) Unit!30165)

(assert (=> b!884253 (= lt!400570 (addStillNotContains!212 lt!400571 lt!400573 lt!400569 lt!400568))))

(assert (=> b!884253 (= lt!400568 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!884253 (= lt!400569 (get!13075 (select (arr!24786 lt!400482) from!1053) (dynLambda!1280 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!884253 (= lt!400573 (select (arr!24785 _keys!868) from!1053))))

(assert (=> b!884253 (= lt!400571 call!38992)))

(assert (=> b!884253 (= e!492132 (+!2529 call!38992 (tuple2!11839 (select (arr!24785 _keys!868) from!1053) (get!13075 (select (arr!24786 lt!400482) from!1053) (dynLambda!1280 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!884254 () Bool)

(declare-fun e!492126 () Bool)

(declare-fun e!492130 () Bool)

(assert (=> b!884254 (= e!492126 e!492130)))

(declare-fun c!93048 () Bool)

(declare-fun e!492127 () Bool)

(assert (=> b!884254 (= c!93048 e!492127)))

(declare-fun res!600823 () Bool)

(assert (=> b!884254 (=> (not res!600823) (not e!492127))))

(assert (=> b!884254 (= res!600823 (bvslt from!1053 (size!25226 _keys!868)))))

(declare-fun b!884255 () Bool)

(assert (=> b!884255 (= e!492127 (validKeyInArray!0 (select (arr!24785 _keys!868) from!1053)))))

(assert (=> b!884255 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!884256 () Bool)

(declare-fun res!600820 () Bool)

(assert (=> b!884256 (=> (not res!600820) (not e!492126))))

(assert (=> b!884256 (= res!600820 (not (contains!4274 lt!400567 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!884257 () Bool)

(assert (=> b!884257 (= e!492130 e!492129)))

(declare-fun c!93049 () Bool)

(assert (=> b!884257 (= c!93049 (bvslt from!1053 (size!25226 _keys!868)))))

(declare-fun b!884258 () Bool)

(assert (=> b!884258 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25226 _keys!868)))))

(assert (=> b!884258 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25227 lt!400482)))))

(declare-fun e!492131 () Bool)

(declare-fun apply!385 (ListLongMap!10621 (_ BitVec 64)) V!28667)

(assert (=> b!884258 (= e!492131 (= (apply!385 lt!400567 (select (arr!24785 _keys!868) from!1053)) (get!13075 (select (arr!24786 lt!400482) from!1053) (dynLambda!1280 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!109145 () Bool)

(assert (=> d!109145 e!492126))

(declare-fun res!600821 () Bool)

(assert (=> d!109145 (=> (not res!600821) (not e!492126))))

(assert (=> d!109145 (= res!600821 (not (contains!4274 lt!400567 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!109145 (= lt!400567 e!492128)))

(declare-fun c!93046 () Bool)

(assert (=> d!109145 (= c!93046 (bvsge from!1053 (size!25226 _keys!868)))))

(assert (=> d!109145 (validMask!0 mask!1196)))

(assert (=> d!109145 (= (getCurrentListMapNoExtraKeys!3280 _keys!868 lt!400482 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!400567)))

(declare-fun b!884259 () Bool)

(declare-fun isEmpty!677 (ListLongMap!10621) Bool)

(assert (=> b!884259 (= e!492129 (isEmpty!677 lt!400567))))

(declare-fun b!884260 () Bool)

(assert (=> b!884260 (= e!492130 e!492131)))

(assert (=> b!884260 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25226 _keys!868)))))

(declare-fun res!600822 () Bool)

(assert (=> b!884260 (= res!600822 (contains!4274 lt!400567 (select (arr!24785 _keys!868) from!1053)))))

(assert (=> b!884260 (=> (not res!600822) (not e!492131))))

(declare-fun b!884261 () Bool)

(assert (=> b!884261 (= e!492128 (ListLongMap!10622 Nil!17698))))

(declare-fun b!884262 () Bool)

(assert (=> b!884262 (= e!492132 call!38992)))

(assert (= (and d!109145 c!93046) b!884261))

(assert (= (and d!109145 (not c!93046)) b!884251))

(assert (= (and b!884251 c!93047) b!884253))

(assert (= (and b!884251 (not c!93047)) b!884262))

(assert (= (or b!884253 b!884262) bm!38989))

(assert (= (and d!109145 res!600821) b!884256))

(assert (= (and b!884256 res!600820) b!884254))

(assert (= (and b!884254 res!600823) b!884255))

(assert (= (and b!884254 c!93048) b!884260))

(assert (= (and b!884254 (not c!93048)) b!884257))

(assert (= (and b!884260 res!600822) b!884258))

(assert (= (and b!884257 c!93049) b!884252))

(assert (= (and b!884257 (not c!93049)) b!884259))

(declare-fun b_lambda!12785 () Bool)

(assert (=> (not b_lambda!12785) (not b!884253)))

(assert (=> b!884253 t!24981))

(declare-fun b_and!25667 () Bool)

(assert (= b_and!25661 (and (=> t!24981 result!9901) b_and!25667)))

(declare-fun b_lambda!12787 () Bool)

(assert (=> (not b_lambda!12787) (not b!884258)))

(assert (=> b!884258 t!24981))

(declare-fun b_and!25669 () Bool)

(assert (= b_and!25667 (and (=> t!24981 result!9901) b_and!25669)))

(assert (=> b!884260 m!824419))

(assert (=> b!884260 m!824419))

(declare-fun m!824551 () Bool)

(assert (=> b!884260 m!824551))

(declare-fun m!824553 () Bool)

(assert (=> bm!38989 m!824553))

(declare-fun m!824555 () Bool)

(assert (=> b!884256 m!824555))

(declare-fun m!824557 () Bool)

(assert (=> b!884253 m!824557))

(declare-fun m!824559 () Bool)

(assert (=> b!884253 m!824559))

(declare-fun m!824561 () Bool)

(assert (=> b!884253 m!824561))

(declare-fun m!824563 () Bool)

(assert (=> b!884253 m!824563))

(assert (=> b!884253 m!824419))

(assert (=> b!884253 m!824559))

(assert (=> b!884253 m!824449))

(declare-fun m!824565 () Bool)

(assert (=> b!884253 m!824565))

(assert (=> b!884253 m!824449))

(declare-fun m!824567 () Bool)

(assert (=> b!884253 m!824567))

(assert (=> b!884253 m!824561))

(assert (=> b!884258 m!824419))

(declare-fun m!824569 () Bool)

(assert (=> b!884258 m!824569))

(assert (=> b!884258 m!824559))

(assert (=> b!884258 m!824419))

(assert (=> b!884258 m!824559))

(assert (=> b!884258 m!824449))

(assert (=> b!884258 m!824565))

(assert (=> b!884258 m!824449))

(assert (=> b!884251 m!824419))

(assert (=> b!884251 m!824419))

(assert (=> b!884251 m!824421))

(assert (=> b!884252 m!824553))

(declare-fun m!824571 () Bool)

(assert (=> b!884259 m!824571))

(assert (=> b!884255 m!824419))

(assert (=> b!884255 m!824419))

(assert (=> b!884255 m!824421))

(declare-fun m!824573 () Bool)

(assert (=> d!109145 m!824573))

(assert (=> d!109145 m!824431))

(assert (=> b!884143 d!109145))

(declare-fun call!38993 () ListLongMap!10621)

(declare-fun bm!38990 () Bool)

(assert (=> bm!38990 (= call!38993 (getCurrentListMapNoExtraKeys!3280 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!884263 () Bool)

(declare-fun e!492135 () ListLongMap!10621)

(declare-fun e!492139 () ListLongMap!10621)

(assert (=> b!884263 (= e!492135 e!492139)))

(declare-fun c!93051 () Bool)

(assert (=> b!884263 (= c!93051 (validKeyInArray!0 (select (arr!24785 _keys!868) from!1053)))))

(declare-fun lt!400574 () ListLongMap!10621)

(declare-fun e!492136 () Bool)

(declare-fun b!884264 () Bool)

(assert (=> b!884264 (= e!492136 (= lt!400574 (getCurrentListMapNoExtraKeys!3280 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!884265 () Bool)

(declare-fun lt!400579 () Unit!30165)

(declare-fun lt!400577 () Unit!30165)

(assert (=> b!884265 (= lt!400579 lt!400577)))

(declare-fun lt!400578 () ListLongMap!10621)

(declare-fun lt!400576 () V!28667)

(declare-fun lt!400575 () (_ BitVec 64))

(declare-fun lt!400580 () (_ BitVec 64))

(assert (=> b!884265 (not (contains!4274 (+!2529 lt!400578 (tuple2!11839 lt!400580 lt!400576)) lt!400575))))

(assert (=> b!884265 (= lt!400577 (addStillNotContains!212 lt!400578 lt!400580 lt!400576 lt!400575))))

(assert (=> b!884265 (= lt!400575 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!884265 (= lt!400576 (get!13075 (select (arr!24786 _values!688) from!1053) (dynLambda!1280 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!884265 (= lt!400580 (select (arr!24785 _keys!868) from!1053))))

(assert (=> b!884265 (= lt!400578 call!38993)))

(assert (=> b!884265 (= e!492139 (+!2529 call!38993 (tuple2!11839 (select (arr!24785 _keys!868) from!1053) (get!13075 (select (arr!24786 _values!688) from!1053) (dynLambda!1280 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!884266 () Bool)

(declare-fun e!492133 () Bool)

(declare-fun e!492137 () Bool)

(assert (=> b!884266 (= e!492133 e!492137)))

(declare-fun c!93052 () Bool)

(declare-fun e!492134 () Bool)

(assert (=> b!884266 (= c!93052 e!492134)))

(declare-fun res!600827 () Bool)

(assert (=> b!884266 (=> (not res!600827) (not e!492134))))

(assert (=> b!884266 (= res!600827 (bvslt from!1053 (size!25226 _keys!868)))))

(declare-fun b!884267 () Bool)

(assert (=> b!884267 (= e!492134 (validKeyInArray!0 (select (arr!24785 _keys!868) from!1053)))))

(assert (=> b!884267 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!884268 () Bool)

(declare-fun res!600824 () Bool)

(assert (=> b!884268 (=> (not res!600824) (not e!492133))))

(assert (=> b!884268 (= res!600824 (not (contains!4274 lt!400574 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!884269 () Bool)

(assert (=> b!884269 (= e!492137 e!492136)))

(declare-fun c!93053 () Bool)

(assert (=> b!884269 (= c!93053 (bvslt from!1053 (size!25226 _keys!868)))))

(declare-fun b!884270 () Bool)

(assert (=> b!884270 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25226 _keys!868)))))

(assert (=> b!884270 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25227 _values!688)))))

(declare-fun e!492138 () Bool)

(assert (=> b!884270 (= e!492138 (= (apply!385 lt!400574 (select (arr!24785 _keys!868) from!1053)) (get!13075 (select (arr!24786 _values!688) from!1053) (dynLambda!1280 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!109147 () Bool)

(assert (=> d!109147 e!492133))

(declare-fun res!600825 () Bool)

(assert (=> d!109147 (=> (not res!600825) (not e!492133))))

(assert (=> d!109147 (= res!600825 (not (contains!4274 lt!400574 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!109147 (= lt!400574 e!492135)))

(declare-fun c!93050 () Bool)

(assert (=> d!109147 (= c!93050 (bvsge from!1053 (size!25226 _keys!868)))))

(assert (=> d!109147 (validMask!0 mask!1196)))

(assert (=> d!109147 (= (getCurrentListMapNoExtraKeys!3280 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!400574)))

(declare-fun b!884271 () Bool)

(assert (=> b!884271 (= e!492136 (isEmpty!677 lt!400574))))

(declare-fun b!884272 () Bool)

(assert (=> b!884272 (= e!492137 e!492138)))

(assert (=> b!884272 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25226 _keys!868)))))

(declare-fun res!600826 () Bool)

(assert (=> b!884272 (= res!600826 (contains!4274 lt!400574 (select (arr!24785 _keys!868) from!1053)))))

(assert (=> b!884272 (=> (not res!600826) (not e!492138))))

(declare-fun b!884273 () Bool)

(assert (=> b!884273 (= e!492135 (ListLongMap!10622 Nil!17698))))

(declare-fun b!884274 () Bool)

(assert (=> b!884274 (= e!492139 call!38993)))

(assert (= (and d!109147 c!93050) b!884273))

(assert (= (and d!109147 (not c!93050)) b!884263))

(assert (= (and b!884263 c!93051) b!884265))

(assert (= (and b!884263 (not c!93051)) b!884274))

(assert (= (or b!884265 b!884274) bm!38990))

(assert (= (and d!109147 res!600825) b!884268))

(assert (= (and b!884268 res!600824) b!884266))

(assert (= (and b!884266 res!600827) b!884267))

(assert (= (and b!884266 c!93052) b!884272))

(assert (= (and b!884266 (not c!93052)) b!884269))

(assert (= (and b!884272 res!600826) b!884270))

(assert (= (and b!884269 c!93053) b!884264))

(assert (= (and b!884269 (not c!93053)) b!884271))

(declare-fun b_lambda!12789 () Bool)

(assert (=> (not b_lambda!12789) (not b!884265)))

(assert (=> b!884265 t!24981))

(declare-fun b_and!25671 () Bool)

(assert (= b_and!25669 (and (=> t!24981 result!9901) b_and!25671)))

(declare-fun b_lambda!12791 () Bool)

(assert (=> (not b_lambda!12791) (not b!884270)))

(assert (=> b!884270 t!24981))

(declare-fun b_and!25673 () Bool)

(assert (= b_and!25671 (and (=> t!24981 result!9901) b_and!25673)))

(assert (=> b!884272 m!824419))

(assert (=> b!884272 m!824419))

(declare-fun m!824575 () Bool)

(assert (=> b!884272 m!824575))

(declare-fun m!824577 () Bool)

(assert (=> bm!38990 m!824577))

(declare-fun m!824579 () Bool)

(assert (=> b!884268 m!824579))

(declare-fun m!824581 () Bool)

(assert (=> b!884265 m!824581))

(assert (=> b!884265 m!824447))

(declare-fun m!824583 () Bool)

(assert (=> b!884265 m!824583))

(declare-fun m!824585 () Bool)

(assert (=> b!884265 m!824585))

(assert (=> b!884265 m!824419))

(assert (=> b!884265 m!824447))

(assert (=> b!884265 m!824449))

(assert (=> b!884265 m!824451))

(assert (=> b!884265 m!824449))

(declare-fun m!824587 () Bool)

(assert (=> b!884265 m!824587))

(assert (=> b!884265 m!824583))

(assert (=> b!884270 m!824419))

(declare-fun m!824589 () Bool)

(assert (=> b!884270 m!824589))

(assert (=> b!884270 m!824447))

(assert (=> b!884270 m!824419))

(assert (=> b!884270 m!824447))

(assert (=> b!884270 m!824449))

(assert (=> b!884270 m!824451))

(assert (=> b!884270 m!824449))

(assert (=> b!884263 m!824419))

(assert (=> b!884263 m!824419))

(assert (=> b!884263 m!824421))

(assert (=> b!884264 m!824577))

(declare-fun m!824591 () Bool)

(assert (=> b!884271 m!824591))

(assert (=> b!884267 m!824419))

(assert (=> b!884267 m!824419))

(assert (=> b!884267 m!824421))

(declare-fun m!824593 () Bool)

(assert (=> d!109147 m!824593))

(assert (=> d!109147 m!824431))

(assert (=> b!884143 d!109147))

(declare-fun b!884283 () Bool)

(declare-fun e!492147 () Bool)

(declare-fun e!492146 () Bool)

(assert (=> b!884283 (= e!492147 e!492146)))

(declare-fun lt!400589 () (_ BitVec 64))

(assert (=> b!884283 (= lt!400589 (select (arr!24785 _keys!868) #b00000000000000000000000000000000))))

(declare-fun lt!400587 () Unit!30165)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51540 (_ BitVec 64) (_ BitVec 32)) Unit!30165)

(assert (=> b!884283 (= lt!400587 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!400589 #b00000000000000000000000000000000))))

(assert (=> b!884283 (arrayContainsKey!0 _keys!868 lt!400589 #b00000000000000000000000000000000)))

(declare-fun lt!400588 () Unit!30165)

(assert (=> b!884283 (= lt!400588 lt!400587)))

(declare-fun res!600833 () Bool)

(declare-datatypes ((SeekEntryResult!8750 0))(
  ( (MissingZero!8750 (index!37370 (_ BitVec 32))) (Found!8750 (index!37371 (_ BitVec 32))) (Intermediate!8750 (undefined!9562 Bool) (index!37372 (_ BitVec 32)) (x!74958 (_ BitVec 32))) (Undefined!8750) (MissingVacant!8750 (index!37373 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!51540 (_ BitVec 32)) SeekEntryResult!8750)

(assert (=> b!884283 (= res!600833 (= (seekEntryOrOpen!0 (select (arr!24785 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8750 #b00000000000000000000000000000000)))))

(assert (=> b!884283 (=> (not res!600833) (not e!492146))))

(declare-fun b!884284 () Bool)

(declare-fun call!38996 () Bool)

(assert (=> b!884284 (= e!492146 call!38996)))

(declare-fun b!884285 () Bool)

(declare-fun e!492148 () Bool)

(assert (=> b!884285 (= e!492148 e!492147)))

(declare-fun c!93056 () Bool)

(assert (=> b!884285 (= c!93056 (validKeyInArray!0 (select (arr!24785 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun bm!38993 () Bool)

(assert (=> bm!38993 (= call!38996 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(declare-fun b!884286 () Bool)

(assert (=> b!884286 (= e!492147 call!38996)))

(declare-fun d!109149 () Bool)

(declare-fun res!600832 () Bool)

(assert (=> d!109149 (=> res!600832 e!492148)))

(assert (=> d!109149 (= res!600832 (bvsge #b00000000000000000000000000000000 (size!25226 _keys!868)))))

(assert (=> d!109149 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!492148)))

(assert (= (and d!109149 (not res!600832)) b!884285))

(assert (= (and b!884285 c!93056) b!884283))

(assert (= (and b!884285 (not c!93056)) b!884286))

(assert (= (and b!884283 res!600833) b!884284))

(assert (= (or b!884284 b!884286) bm!38993))

(assert (=> b!884283 m!824543))

(declare-fun m!824595 () Bool)

(assert (=> b!884283 m!824595))

(declare-fun m!824597 () Bool)

(assert (=> b!884283 m!824597))

(assert (=> b!884283 m!824543))

(declare-fun m!824599 () Bool)

(assert (=> b!884283 m!824599))

(assert (=> b!884285 m!824543))

(assert (=> b!884285 m!824543))

(assert (=> b!884285 m!824547))

(declare-fun m!824601 () Bool)

(assert (=> bm!38993 m!824601))

(assert (=> b!884148 d!109149))

(declare-fun d!109151 () Bool)

(declare-fun e!492151 () Bool)

(assert (=> d!109151 e!492151))

(declare-fun res!600839 () Bool)

(assert (=> d!109151 (=> (not res!600839) (not e!492151))))

(declare-fun lt!400599 () ListLongMap!10621)

(assert (=> d!109151 (= res!600839 (contains!4274 lt!400599 (_1!5929 lt!400491)))))

(declare-fun lt!400598 () List!17701)

(assert (=> d!109151 (= lt!400599 (ListLongMap!10622 lt!400598))))

(declare-fun lt!400600 () Unit!30165)

(declare-fun lt!400601 () Unit!30165)

(assert (=> d!109151 (= lt!400600 lt!400601)))

(declare-datatypes ((Option!432 0))(
  ( (Some!431 (v!11375 V!28667)) (None!430) )
))
(declare-fun getValueByKey!426 (List!17701 (_ BitVec 64)) Option!432)

(assert (=> d!109151 (= (getValueByKey!426 lt!400598 (_1!5929 lt!400491)) (Some!431 (_2!5929 lt!400491)))))

(declare-fun lemmaContainsTupThenGetReturnValue!242 (List!17701 (_ BitVec 64) V!28667) Unit!30165)

(assert (=> d!109151 (= lt!400601 (lemmaContainsTupThenGetReturnValue!242 lt!400598 (_1!5929 lt!400491) (_2!5929 lt!400491)))))

(declare-fun insertStrictlySorted!280 (List!17701 (_ BitVec 64) V!28667) List!17701)

(assert (=> d!109151 (= lt!400598 (insertStrictlySorted!280 (toList!5326 lt!400486) (_1!5929 lt!400491) (_2!5929 lt!400491)))))

(assert (=> d!109151 (= (+!2529 lt!400486 lt!400491) lt!400599)))

(declare-fun b!884291 () Bool)

(declare-fun res!600838 () Bool)

(assert (=> b!884291 (=> (not res!600838) (not e!492151))))

(assert (=> b!884291 (= res!600838 (= (getValueByKey!426 (toList!5326 lt!400599) (_1!5929 lt!400491)) (Some!431 (_2!5929 lt!400491))))))

(declare-fun b!884292 () Bool)

(declare-fun contains!4275 (List!17701 tuple2!11838) Bool)

(assert (=> b!884292 (= e!492151 (contains!4275 (toList!5326 lt!400599) lt!400491))))

(assert (= (and d!109151 res!600839) b!884291))

(assert (= (and b!884291 res!600838) b!884292))

(declare-fun m!824603 () Bool)

(assert (=> d!109151 m!824603))

(declare-fun m!824605 () Bool)

(assert (=> d!109151 m!824605))

(declare-fun m!824607 () Bool)

(assert (=> d!109151 m!824607))

(declare-fun m!824609 () Bool)

(assert (=> d!109151 m!824609))

(declare-fun m!824611 () Bool)

(assert (=> b!884291 m!824611))

(declare-fun m!824613 () Bool)

(assert (=> b!884292 m!824613))

(assert (=> b!884133 d!109151))

(declare-fun d!109153 () Bool)

(declare-fun c!93059 () Bool)

(assert (=> d!109153 (= c!93059 ((_ is ValueCellFull!8418) (select (arr!24786 _values!688) from!1053)))))

(declare-fun e!492154 () V!28667)

(assert (=> d!109153 (= (get!13075 (select (arr!24786 _values!688) from!1053) (dynLambda!1280 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)) e!492154)))

(declare-fun b!884297 () Bool)

(declare-fun get!13076 (ValueCell!8418 V!28667) V!28667)

(assert (=> b!884297 (= e!492154 (get!13076 (select (arr!24786 _values!688) from!1053) (dynLambda!1280 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!884298 () Bool)

(declare-fun get!13077 (ValueCell!8418 V!28667) V!28667)

(assert (=> b!884298 (= e!492154 (get!13077 (select (arr!24786 _values!688) from!1053) (dynLambda!1280 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!109153 c!93059) b!884297))

(assert (= (and d!109153 (not c!93059)) b!884298))

(assert (=> b!884297 m!824447))

(assert (=> b!884297 m!824449))

(declare-fun m!824615 () Bool)

(assert (=> b!884297 m!824615))

(assert (=> b!884298 m!824447))

(assert (=> b!884298 m!824449))

(declare-fun m!824617 () Bool)

(assert (=> b!884298 m!824617))

(assert (=> b!884133 d!109153))

(declare-fun bm!38994 () Bool)

(declare-fun call!38997 () ListLongMap!10621)

(assert (=> bm!38994 (= call!38997 (getCurrentListMapNoExtraKeys!3280 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!884299 () Bool)

(declare-fun e!492157 () ListLongMap!10621)

(declare-fun e!492161 () ListLongMap!10621)

(assert (=> b!884299 (= e!492157 e!492161)))

(declare-fun c!93061 () Bool)

(assert (=> b!884299 (= c!93061 (validKeyInArray!0 (select (arr!24785 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun e!492158 () Bool)

(declare-fun lt!400602 () ListLongMap!10621)

(declare-fun b!884300 () Bool)

(assert (=> b!884300 (= e!492158 (= lt!400602 (getCurrentListMapNoExtraKeys!3280 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!884301 () Bool)

(declare-fun lt!400607 () Unit!30165)

(declare-fun lt!400605 () Unit!30165)

(assert (=> b!884301 (= lt!400607 lt!400605)))

(declare-fun lt!400606 () ListLongMap!10621)

(declare-fun lt!400603 () (_ BitVec 64))

(declare-fun lt!400608 () (_ BitVec 64))

(declare-fun lt!400604 () V!28667)

(assert (=> b!884301 (not (contains!4274 (+!2529 lt!400606 (tuple2!11839 lt!400608 lt!400604)) lt!400603))))

(assert (=> b!884301 (= lt!400605 (addStillNotContains!212 lt!400606 lt!400608 lt!400604 lt!400603))))

(assert (=> b!884301 (= lt!400603 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!884301 (= lt!400604 (get!13075 (select (arr!24786 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1280 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!884301 (= lt!400608 (select (arr!24785 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!884301 (= lt!400606 call!38997)))

(assert (=> b!884301 (= e!492161 (+!2529 call!38997 (tuple2!11839 (select (arr!24785 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!13075 (select (arr!24786 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1280 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!884302 () Bool)

(declare-fun e!492155 () Bool)

(declare-fun e!492159 () Bool)

(assert (=> b!884302 (= e!492155 e!492159)))

(declare-fun c!93062 () Bool)

(declare-fun e!492156 () Bool)

(assert (=> b!884302 (= c!93062 e!492156)))

(declare-fun res!600843 () Bool)

(assert (=> b!884302 (=> (not res!600843) (not e!492156))))

(assert (=> b!884302 (= res!600843 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25226 _keys!868)))))

(declare-fun b!884303 () Bool)

(assert (=> b!884303 (= e!492156 (validKeyInArray!0 (select (arr!24785 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!884303 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!884304 () Bool)

(declare-fun res!600840 () Bool)

(assert (=> b!884304 (=> (not res!600840) (not e!492155))))

(assert (=> b!884304 (= res!600840 (not (contains!4274 lt!400602 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!884305 () Bool)

(assert (=> b!884305 (= e!492159 e!492158)))

(declare-fun c!93063 () Bool)

(assert (=> b!884305 (= c!93063 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25226 _keys!868)))))

(declare-fun b!884306 () Bool)

(assert (=> b!884306 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25226 _keys!868)))))

(assert (=> b!884306 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25227 _values!688)))))

(declare-fun e!492160 () Bool)

(assert (=> b!884306 (= e!492160 (= (apply!385 lt!400602 (select (arr!24785 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!13075 (select (arr!24786 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1280 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!109155 () Bool)

(assert (=> d!109155 e!492155))

(declare-fun res!600841 () Bool)

(assert (=> d!109155 (=> (not res!600841) (not e!492155))))

(assert (=> d!109155 (= res!600841 (not (contains!4274 lt!400602 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!109155 (= lt!400602 e!492157)))

(declare-fun c!93060 () Bool)

(assert (=> d!109155 (= c!93060 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25226 _keys!868)))))

(assert (=> d!109155 (validMask!0 mask!1196)))

(assert (=> d!109155 (= (getCurrentListMapNoExtraKeys!3280 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!400602)))

(declare-fun b!884307 () Bool)

(assert (=> b!884307 (= e!492158 (isEmpty!677 lt!400602))))

(declare-fun b!884308 () Bool)

(assert (=> b!884308 (= e!492159 e!492160)))

(assert (=> b!884308 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25226 _keys!868)))))

(declare-fun res!600842 () Bool)

(assert (=> b!884308 (= res!600842 (contains!4274 lt!400602 (select (arr!24785 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!884308 (=> (not res!600842) (not e!492160))))

(declare-fun b!884309 () Bool)

(assert (=> b!884309 (= e!492157 (ListLongMap!10622 Nil!17698))))

(declare-fun b!884310 () Bool)

(assert (=> b!884310 (= e!492161 call!38997)))

(assert (= (and d!109155 c!93060) b!884309))

(assert (= (and d!109155 (not c!93060)) b!884299))

(assert (= (and b!884299 c!93061) b!884301))

(assert (= (and b!884299 (not c!93061)) b!884310))

(assert (= (or b!884301 b!884310) bm!38994))

(assert (= (and d!109155 res!600841) b!884304))

(assert (= (and b!884304 res!600840) b!884302))

(assert (= (and b!884302 res!600843) b!884303))

(assert (= (and b!884302 c!93062) b!884308))

(assert (= (and b!884302 (not c!93062)) b!884305))

(assert (= (and b!884308 res!600842) b!884306))

(assert (= (and b!884305 c!93063) b!884300))

(assert (= (and b!884305 (not c!93063)) b!884307))

(declare-fun b_lambda!12793 () Bool)

(assert (=> (not b_lambda!12793) (not b!884301)))

(assert (=> b!884301 t!24981))

(declare-fun b_and!25675 () Bool)

(assert (= b_and!25673 (and (=> t!24981 result!9901) b_and!25675)))

(declare-fun b_lambda!12795 () Bool)

(assert (=> (not b_lambda!12795) (not b!884306)))

(assert (=> b!884306 t!24981))

(declare-fun b_and!25677 () Bool)

(assert (= b_and!25675 (and (=> t!24981 result!9901) b_and!25677)))

(assert (=> b!884308 m!824535))

(assert (=> b!884308 m!824535))

(declare-fun m!824619 () Bool)

(assert (=> b!884308 m!824619))

(declare-fun m!824621 () Bool)

(assert (=> bm!38994 m!824621))

(declare-fun m!824623 () Bool)

(assert (=> b!884304 m!824623))

(declare-fun m!824625 () Bool)

(assert (=> b!884301 m!824625))

(declare-fun m!824627 () Bool)

(assert (=> b!884301 m!824627))

(declare-fun m!824629 () Bool)

(assert (=> b!884301 m!824629))

(declare-fun m!824631 () Bool)

(assert (=> b!884301 m!824631))

(assert (=> b!884301 m!824535))

(assert (=> b!884301 m!824627))

(assert (=> b!884301 m!824449))

(declare-fun m!824633 () Bool)

(assert (=> b!884301 m!824633))

(assert (=> b!884301 m!824449))

(declare-fun m!824635 () Bool)

(assert (=> b!884301 m!824635))

(assert (=> b!884301 m!824629))

(assert (=> b!884306 m!824535))

(declare-fun m!824637 () Bool)

(assert (=> b!884306 m!824637))

(assert (=> b!884306 m!824627))

(assert (=> b!884306 m!824535))

(assert (=> b!884306 m!824627))

(assert (=> b!884306 m!824449))

(assert (=> b!884306 m!824633))

(assert (=> b!884306 m!824449))

(assert (=> b!884299 m!824535))

(assert (=> b!884299 m!824535))

(declare-fun m!824639 () Bool)

(assert (=> b!884299 m!824639))

(assert (=> b!884300 m!824621))

(declare-fun m!824641 () Bool)

(assert (=> b!884307 m!824641))

(assert (=> b!884303 m!824535))

(assert (=> b!884303 m!824535))

(assert (=> b!884303 m!824639))

(declare-fun m!824643 () Bool)

(assert (=> d!109155 m!824643))

(assert (=> d!109155 m!824431))

(assert (=> b!884147 d!109155))

(declare-fun d!109157 () Bool)

(declare-fun e!492162 () Bool)

(assert (=> d!109157 e!492162))

(declare-fun res!600845 () Bool)

(assert (=> d!109157 (=> (not res!600845) (not e!492162))))

(declare-fun lt!400610 () ListLongMap!10621)

(assert (=> d!109157 (= res!600845 (contains!4274 lt!400610 (_1!5929 lt!400487)))))

(declare-fun lt!400609 () List!17701)

(assert (=> d!109157 (= lt!400610 (ListLongMap!10622 lt!400609))))

(declare-fun lt!400611 () Unit!30165)

(declare-fun lt!400612 () Unit!30165)

(assert (=> d!109157 (= lt!400611 lt!400612)))

(assert (=> d!109157 (= (getValueByKey!426 lt!400609 (_1!5929 lt!400487)) (Some!431 (_2!5929 lt!400487)))))

(assert (=> d!109157 (= lt!400612 (lemmaContainsTupThenGetReturnValue!242 lt!400609 (_1!5929 lt!400487) (_2!5929 lt!400487)))))

(assert (=> d!109157 (= lt!400609 (insertStrictlySorted!280 (toList!5326 lt!400484) (_1!5929 lt!400487) (_2!5929 lt!400487)))))

(assert (=> d!109157 (= (+!2529 lt!400484 lt!400487) lt!400610)))

(declare-fun b!884311 () Bool)

(declare-fun res!600844 () Bool)

(assert (=> b!884311 (=> (not res!600844) (not e!492162))))

(assert (=> b!884311 (= res!600844 (= (getValueByKey!426 (toList!5326 lt!400610) (_1!5929 lt!400487)) (Some!431 (_2!5929 lt!400487))))))

(declare-fun b!884312 () Bool)

(assert (=> b!884312 (= e!492162 (contains!4275 (toList!5326 lt!400610) lt!400487))))

(assert (= (and d!109157 res!600845) b!884311))

(assert (= (and b!884311 res!600844) b!884312))

(declare-fun m!824645 () Bool)

(assert (=> d!109157 m!824645))

(declare-fun m!824647 () Bool)

(assert (=> d!109157 m!824647))

(declare-fun m!824649 () Bool)

(assert (=> d!109157 m!824649))

(declare-fun m!824651 () Bool)

(assert (=> d!109157 m!824651))

(declare-fun m!824653 () Bool)

(assert (=> b!884311 m!824653))

(declare-fun m!824655 () Bool)

(assert (=> b!884312 m!824655))

(assert (=> b!884147 d!109157))

(declare-fun d!109159 () Bool)

(assert (=> d!109159 (= (validKeyInArray!0 (select (arr!24785 _keys!868) from!1053)) (and (not (= (select (arr!24785 _keys!868) from!1053) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!24785 _keys!868) from!1053) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!884147 d!109159))

(declare-fun b!884319 () Bool)

(declare-fun e!492167 () Bool)

(declare-fun e!492168 () Bool)

(assert (=> b!884319 (= e!492167 e!492168)))

(declare-fun c!93066 () Bool)

(assert (=> b!884319 (= c!93066 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun bm!38999 () Bool)

(declare-fun call!39003 () ListLongMap!10621)

(assert (=> bm!38999 (= call!39003 (getCurrentListMapNoExtraKeys!3280 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun call!39002 () ListLongMap!10621)

(declare-fun bm!39000 () Bool)

(assert (=> bm!39000 (= call!39002 (getCurrentListMapNoExtraKeys!3280 _keys!868 (array!51543 (store (arr!24786 _values!688) i!612 (ValueCellFull!8418 v!557)) (size!25227 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun d!109161 () Bool)

(assert (=> d!109161 e!492167))

(declare-fun res!600848 () Bool)

(assert (=> d!109161 (=> (not res!600848) (not e!492167))))

(assert (=> d!109161 (= res!600848 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612)) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25227 _values!688)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25227 _values!688))))))))

(declare-fun lt!400615 () Unit!30165)

(declare-fun choose!1449 (array!51540 array!51542 (_ BitVec 32) (_ BitVec 32) V!28667 V!28667 (_ BitVec 32) (_ BitVec 64) V!28667 (_ BitVec 32) Int) Unit!30165)

(assert (=> d!109161 (= lt!400615 (choose!1449 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> d!109161 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!25226 _keys!868)))))

(assert (=> d!109161 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!750 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!400615)))

(declare-fun b!884320 () Bool)

(assert (=> b!884320 (= e!492168 (= call!39002 (+!2529 call!39003 (tuple2!11839 k0!854 v!557))))))

(declare-fun b!884321 () Bool)

(assert (=> b!884321 (= e!492168 (= call!39002 call!39003))))

(assert (= (and d!109161 res!600848) b!884319))

(assert (= (and b!884319 c!93066) b!884320))

(assert (= (and b!884319 (not c!93066)) b!884321))

(assert (= (or b!884320 b!884321) bm!38999))

(assert (= (or b!884320 b!884321) bm!39000))

(assert (=> bm!38999 m!824429))

(assert (=> bm!39000 m!824415))

(declare-fun m!824657 () Bool)

(assert (=> bm!39000 m!824657))

(declare-fun m!824659 () Bool)

(assert (=> d!109161 m!824659))

(declare-fun m!824661 () Bool)

(assert (=> b!884320 m!824661))

(assert (=> b!884147 d!109161))

(declare-fun bm!39001 () Bool)

(declare-fun call!39004 () ListLongMap!10621)

(assert (=> bm!39001 (= call!39004 (getCurrentListMapNoExtraKeys!3280 _keys!868 lt!400482 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!884322 () Bool)

(declare-fun e!492171 () ListLongMap!10621)

(declare-fun e!492175 () ListLongMap!10621)

(assert (=> b!884322 (= e!492171 e!492175)))

(declare-fun c!93068 () Bool)

(assert (=> b!884322 (= c!93068 (validKeyInArray!0 (select (arr!24785 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun e!492172 () Bool)

(declare-fun b!884323 () Bool)

(declare-fun lt!400616 () ListLongMap!10621)

(assert (=> b!884323 (= e!492172 (= lt!400616 (getCurrentListMapNoExtraKeys!3280 _keys!868 lt!400482 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!884324 () Bool)

(declare-fun lt!400621 () Unit!30165)

(declare-fun lt!400619 () Unit!30165)

(assert (=> b!884324 (= lt!400621 lt!400619)))

(declare-fun lt!400617 () (_ BitVec 64))

(declare-fun lt!400618 () V!28667)

(declare-fun lt!400620 () ListLongMap!10621)

(declare-fun lt!400622 () (_ BitVec 64))

(assert (=> b!884324 (not (contains!4274 (+!2529 lt!400620 (tuple2!11839 lt!400622 lt!400618)) lt!400617))))

(assert (=> b!884324 (= lt!400619 (addStillNotContains!212 lt!400620 lt!400622 lt!400618 lt!400617))))

(assert (=> b!884324 (= lt!400617 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!884324 (= lt!400618 (get!13075 (select (arr!24786 lt!400482) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1280 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!884324 (= lt!400622 (select (arr!24785 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!884324 (= lt!400620 call!39004)))

(assert (=> b!884324 (= e!492175 (+!2529 call!39004 (tuple2!11839 (select (arr!24785 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!13075 (select (arr!24786 lt!400482) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1280 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!884325 () Bool)

(declare-fun e!492169 () Bool)

(declare-fun e!492173 () Bool)

(assert (=> b!884325 (= e!492169 e!492173)))

(declare-fun c!93069 () Bool)

(declare-fun e!492170 () Bool)

(assert (=> b!884325 (= c!93069 e!492170)))

(declare-fun res!600852 () Bool)

(assert (=> b!884325 (=> (not res!600852) (not e!492170))))

(assert (=> b!884325 (= res!600852 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25226 _keys!868)))))

(declare-fun b!884326 () Bool)

(assert (=> b!884326 (= e!492170 (validKeyInArray!0 (select (arr!24785 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!884326 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!884327 () Bool)

(declare-fun res!600849 () Bool)

(assert (=> b!884327 (=> (not res!600849) (not e!492169))))

(assert (=> b!884327 (= res!600849 (not (contains!4274 lt!400616 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!884328 () Bool)

(assert (=> b!884328 (= e!492173 e!492172)))

(declare-fun c!93070 () Bool)

(assert (=> b!884328 (= c!93070 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25226 _keys!868)))))

(declare-fun b!884329 () Bool)

(assert (=> b!884329 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25226 _keys!868)))))

(assert (=> b!884329 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25227 lt!400482)))))

(declare-fun e!492174 () Bool)

(assert (=> b!884329 (= e!492174 (= (apply!385 lt!400616 (select (arr!24785 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!13075 (select (arr!24786 lt!400482) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1280 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!109163 () Bool)

(assert (=> d!109163 e!492169))

(declare-fun res!600850 () Bool)

(assert (=> d!109163 (=> (not res!600850) (not e!492169))))

(assert (=> d!109163 (= res!600850 (not (contains!4274 lt!400616 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!109163 (= lt!400616 e!492171)))

(declare-fun c!93067 () Bool)

(assert (=> d!109163 (= c!93067 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25226 _keys!868)))))

(assert (=> d!109163 (validMask!0 mask!1196)))

(assert (=> d!109163 (= (getCurrentListMapNoExtraKeys!3280 _keys!868 lt!400482 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!400616)))

(declare-fun b!884330 () Bool)

(assert (=> b!884330 (= e!492172 (isEmpty!677 lt!400616))))

(declare-fun b!884331 () Bool)

(assert (=> b!884331 (= e!492173 e!492174)))

(assert (=> b!884331 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25226 _keys!868)))))

(declare-fun res!600851 () Bool)

(assert (=> b!884331 (= res!600851 (contains!4274 lt!400616 (select (arr!24785 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!884331 (=> (not res!600851) (not e!492174))))

(declare-fun b!884332 () Bool)

(assert (=> b!884332 (= e!492171 (ListLongMap!10622 Nil!17698))))

(declare-fun b!884333 () Bool)

(assert (=> b!884333 (= e!492175 call!39004)))

(assert (= (and d!109163 c!93067) b!884332))

(assert (= (and d!109163 (not c!93067)) b!884322))

(assert (= (and b!884322 c!93068) b!884324))

(assert (= (and b!884322 (not c!93068)) b!884333))

(assert (= (or b!884324 b!884333) bm!39001))

(assert (= (and d!109163 res!600850) b!884327))

(assert (= (and b!884327 res!600849) b!884325))

(assert (= (and b!884325 res!600852) b!884326))

(assert (= (and b!884325 c!93069) b!884331))

(assert (= (and b!884325 (not c!93069)) b!884328))

(assert (= (and b!884331 res!600851) b!884329))

(assert (= (and b!884328 c!93070) b!884323))

(assert (= (and b!884328 (not c!93070)) b!884330))

(declare-fun b_lambda!12797 () Bool)

(assert (=> (not b_lambda!12797) (not b!884324)))

(assert (=> b!884324 t!24981))

(declare-fun b_and!25679 () Bool)

(assert (= b_and!25677 (and (=> t!24981 result!9901) b_and!25679)))

(declare-fun b_lambda!12799 () Bool)

(assert (=> (not b_lambda!12799) (not b!884329)))

(assert (=> b!884329 t!24981))

(declare-fun b_and!25681 () Bool)

(assert (= b_and!25679 (and (=> t!24981 result!9901) b_and!25681)))

(assert (=> b!884331 m!824535))

(assert (=> b!884331 m!824535))

(declare-fun m!824663 () Bool)

(assert (=> b!884331 m!824663))

(declare-fun m!824665 () Bool)

(assert (=> bm!39001 m!824665))

(declare-fun m!824667 () Bool)

(assert (=> b!884327 m!824667))

(declare-fun m!824669 () Bool)

(assert (=> b!884324 m!824669))

(declare-fun m!824671 () Bool)

(assert (=> b!884324 m!824671))

(declare-fun m!824673 () Bool)

(assert (=> b!884324 m!824673))

(declare-fun m!824675 () Bool)

(assert (=> b!884324 m!824675))

(assert (=> b!884324 m!824535))

(assert (=> b!884324 m!824671))

(assert (=> b!884324 m!824449))

(declare-fun m!824677 () Bool)

(assert (=> b!884324 m!824677))

(assert (=> b!884324 m!824449))

(declare-fun m!824679 () Bool)

(assert (=> b!884324 m!824679))

(assert (=> b!884324 m!824673))

(assert (=> b!884329 m!824535))

(declare-fun m!824681 () Bool)

(assert (=> b!884329 m!824681))

(assert (=> b!884329 m!824671))

(assert (=> b!884329 m!824535))

(assert (=> b!884329 m!824671))

(assert (=> b!884329 m!824449))

(assert (=> b!884329 m!824677))

(assert (=> b!884329 m!824449))

(assert (=> b!884322 m!824535))

(assert (=> b!884322 m!824535))

(assert (=> b!884322 m!824639))

(assert (=> b!884323 m!824665))

(declare-fun m!824683 () Bool)

(assert (=> b!884330 m!824683))

(assert (=> b!884326 m!824535))

(assert (=> b!884326 m!824535))

(assert (=> b!884326 m!824639))

(declare-fun m!824685 () Bool)

(assert (=> d!109163 m!824685))

(assert (=> d!109163 m!824431))

(assert (=> b!884147 d!109163))

(declare-fun d!109165 () Bool)

(assert (=> d!109165 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!884136 d!109165))

(declare-fun d!109167 () Bool)

(assert (=> d!109167 (= (validKeyInArray!0 k0!854) (and (not (= k0!854 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!854 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!884145 d!109167))

(declare-fun d!109169 () Bool)

(declare-fun e!492176 () Bool)

(assert (=> d!109169 e!492176))

(declare-fun res!600854 () Bool)

(assert (=> d!109169 (=> (not res!600854) (not e!492176))))

(declare-fun lt!400624 () ListLongMap!10621)

(assert (=> d!109169 (= res!600854 (contains!4274 lt!400624 (_1!5929 lt!400487)))))

(declare-fun lt!400623 () List!17701)

(assert (=> d!109169 (= lt!400624 (ListLongMap!10622 lt!400623))))

(declare-fun lt!400625 () Unit!30165)

(declare-fun lt!400626 () Unit!30165)

(assert (=> d!109169 (= lt!400625 lt!400626)))

(assert (=> d!109169 (= (getValueByKey!426 lt!400623 (_1!5929 lt!400487)) (Some!431 (_2!5929 lt!400487)))))

(assert (=> d!109169 (= lt!400626 (lemmaContainsTupThenGetReturnValue!242 lt!400623 (_1!5929 lt!400487) (_2!5929 lt!400487)))))

(assert (=> d!109169 (= lt!400623 (insertStrictlySorted!280 (toList!5326 lt!400480) (_1!5929 lt!400487) (_2!5929 lt!400487)))))

(assert (=> d!109169 (= (+!2529 lt!400480 lt!400487) lt!400624)))

(declare-fun b!884334 () Bool)

(declare-fun res!600853 () Bool)

(assert (=> b!884334 (=> (not res!600853) (not e!492176))))

(assert (=> b!884334 (= res!600853 (= (getValueByKey!426 (toList!5326 lt!400624) (_1!5929 lt!400487)) (Some!431 (_2!5929 lt!400487))))))

(declare-fun b!884335 () Bool)

(assert (=> b!884335 (= e!492176 (contains!4275 (toList!5326 lt!400624) lt!400487))))

(assert (= (and d!109169 res!600854) b!884334))

(assert (= (and b!884334 res!600853) b!884335))

(declare-fun m!824687 () Bool)

(assert (=> d!109169 m!824687))

(declare-fun m!824689 () Bool)

(assert (=> d!109169 m!824689))

(declare-fun m!824691 () Bool)

(assert (=> d!109169 m!824691))

(declare-fun m!824693 () Bool)

(assert (=> d!109169 m!824693))

(declare-fun m!824695 () Bool)

(assert (=> b!884334 m!824695))

(declare-fun m!824697 () Bool)

(assert (=> b!884335 m!824697))

(assert (=> b!884137 d!109169))

(declare-fun d!109171 () Bool)

(declare-fun e!492177 () Bool)

(assert (=> d!109171 e!492177))

(declare-fun res!600856 () Bool)

(assert (=> d!109171 (=> (not res!600856) (not e!492177))))

(declare-fun lt!400628 () ListLongMap!10621)

(assert (=> d!109171 (= res!600856 (contains!4274 lt!400628 (_1!5929 lt!400487)))))

(declare-fun lt!400627 () List!17701)

(assert (=> d!109171 (= lt!400628 (ListLongMap!10622 lt!400627))))

(declare-fun lt!400629 () Unit!30165)

(declare-fun lt!400630 () Unit!30165)

(assert (=> d!109171 (= lt!400629 lt!400630)))

(assert (=> d!109171 (= (getValueByKey!426 lt!400627 (_1!5929 lt!400487)) (Some!431 (_2!5929 lt!400487)))))

(assert (=> d!109171 (= lt!400630 (lemmaContainsTupThenGetReturnValue!242 lt!400627 (_1!5929 lt!400487) (_2!5929 lt!400487)))))

(assert (=> d!109171 (= lt!400627 (insertStrictlySorted!280 (toList!5326 (+!2529 lt!400484 lt!400491)) (_1!5929 lt!400487) (_2!5929 lt!400487)))))

(assert (=> d!109171 (= (+!2529 (+!2529 lt!400484 lt!400491) lt!400487) lt!400628)))

(declare-fun b!884336 () Bool)

(declare-fun res!600855 () Bool)

(assert (=> b!884336 (=> (not res!600855) (not e!492177))))

(assert (=> b!884336 (= res!600855 (= (getValueByKey!426 (toList!5326 lt!400628) (_1!5929 lt!400487)) (Some!431 (_2!5929 lt!400487))))))

(declare-fun b!884337 () Bool)

(assert (=> b!884337 (= e!492177 (contains!4275 (toList!5326 lt!400628) lt!400487))))

(assert (= (and d!109171 res!600856) b!884336))

(assert (= (and b!884336 res!600855) b!884337))

(declare-fun m!824699 () Bool)

(assert (=> d!109171 m!824699))

(declare-fun m!824701 () Bool)

(assert (=> d!109171 m!824701))

(declare-fun m!824703 () Bool)

(assert (=> d!109171 m!824703))

(declare-fun m!824705 () Bool)

(assert (=> d!109171 m!824705))

(declare-fun m!824707 () Bool)

(assert (=> b!884336 m!824707))

(declare-fun m!824709 () Bool)

(assert (=> b!884337 m!824709))

(assert (=> b!884137 d!109171))

(declare-fun d!109173 () Bool)

(declare-fun e!492178 () Bool)

(assert (=> d!109173 e!492178))

(declare-fun res!600858 () Bool)

(assert (=> d!109173 (=> (not res!600858) (not e!492178))))

(declare-fun lt!400632 () ListLongMap!10621)

(assert (=> d!109173 (= res!600858 (contains!4274 lt!400632 (_1!5929 lt!400491)))))

(declare-fun lt!400631 () List!17701)

(assert (=> d!109173 (= lt!400632 (ListLongMap!10622 lt!400631))))

(declare-fun lt!400633 () Unit!30165)

(declare-fun lt!400634 () Unit!30165)

(assert (=> d!109173 (= lt!400633 lt!400634)))

(assert (=> d!109173 (= (getValueByKey!426 lt!400631 (_1!5929 lt!400491)) (Some!431 (_2!5929 lt!400491)))))

(assert (=> d!109173 (= lt!400634 (lemmaContainsTupThenGetReturnValue!242 lt!400631 (_1!5929 lt!400491) (_2!5929 lt!400491)))))

(assert (=> d!109173 (= lt!400631 (insertStrictlySorted!280 (toList!5326 lt!400484) (_1!5929 lt!400491) (_2!5929 lt!400491)))))

(assert (=> d!109173 (= (+!2529 lt!400484 lt!400491) lt!400632)))

(declare-fun b!884338 () Bool)

(declare-fun res!600857 () Bool)

(assert (=> b!884338 (=> (not res!600857) (not e!492178))))

(assert (=> b!884338 (= res!600857 (= (getValueByKey!426 (toList!5326 lt!400632) (_1!5929 lt!400491)) (Some!431 (_2!5929 lt!400491))))))

(declare-fun b!884339 () Bool)

(assert (=> b!884339 (= e!492178 (contains!4275 (toList!5326 lt!400632) lt!400491))))

(assert (= (and d!109173 res!600858) b!884338))

(assert (= (and b!884338 res!600857) b!884339))

(declare-fun m!824711 () Bool)

(assert (=> d!109173 m!824711))

(declare-fun m!824713 () Bool)

(assert (=> d!109173 m!824713))

(declare-fun m!824715 () Bool)

(assert (=> d!109173 m!824715))

(declare-fun m!824717 () Bool)

(assert (=> d!109173 m!824717))

(declare-fun m!824719 () Bool)

(assert (=> b!884338 m!824719))

(declare-fun m!824721 () Bool)

(assert (=> b!884339 m!824721))

(assert (=> b!884137 d!109173))

(declare-fun d!109175 () Bool)

(assert (=> d!109175 (= (+!2529 (+!2529 lt!400484 (tuple2!11839 k0!854 v!557)) (tuple2!11839 (select (arr!24785 _keys!868) from!1053) lt!400483)) (+!2529 (+!2529 lt!400484 (tuple2!11839 (select (arr!24785 _keys!868) from!1053) lt!400483)) (tuple2!11839 k0!854 v!557)))))

(declare-fun lt!400637 () Unit!30165)

(declare-fun choose!1450 (ListLongMap!10621 (_ BitVec 64) V!28667 (_ BitVec 64) V!28667) Unit!30165)

(assert (=> d!109175 (= lt!400637 (choose!1450 lt!400484 k0!854 v!557 (select (arr!24785 _keys!868) from!1053) lt!400483))))

(assert (=> d!109175 (not (= k0!854 (select (arr!24785 _keys!868) from!1053)))))

(assert (=> d!109175 (= (addCommutativeForDiffKeys!549 lt!400484 k0!854 v!557 (select (arr!24785 _keys!868) from!1053) lt!400483) lt!400637)))

(declare-fun bs!24777 () Bool)

(assert (= bs!24777 d!109175))

(declare-fun m!824723 () Bool)

(assert (=> bs!24777 m!824723))

(declare-fun m!824725 () Bool)

(assert (=> bs!24777 m!824725))

(declare-fun m!824727 () Bool)

(assert (=> bs!24777 m!824727))

(assert (=> bs!24777 m!824419))

(declare-fun m!824729 () Bool)

(assert (=> bs!24777 m!824729))

(assert (=> bs!24777 m!824723))

(assert (=> bs!24777 m!824727))

(declare-fun m!824731 () Bool)

(assert (=> bs!24777 m!824731))

(assert (=> b!884137 d!109175))

(declare-fun mapNonEmpty!28215 () Bool)

(declare-fun mapRes!28215 () Bool)

(declare-fun tp!54126 () Bool)

(declare-fun e!492184 () Bool)

(assert (=> mapNonEmpty!28215 (= mapRes!28215 (and tp!54126 e!492184))))

(declare-fun mapKey!28215 () (_ BitVec 32))

(declare-fun mapValue!28215 () ValueCell!8418)

(declare-fun mapRest!28215 () (Array (_ BitVec 32) ValueCell!8418))

(assert (=> mapNonEmpty!28215 (= mapRest!28209 (store mapRest!28215 mapKey!28215 mapValue!28215))))

(declare-fun b!884347 () Bool)

(declare-fun e!492183 () Bool)

(assert (=> b!884347 (= e!492183 tp_is_empty!17715)))

(declare-fun b!884346 () Bool)

(assert (=> b!884346 (= e!492184 tp_is_empty!17715)))

(declare-fun mapIsEmpty!28215 () Bool)

(assert (=> mapIsEmpty!28215 mapRes!28215))

(declare-fun condMapEmpty!28215 () Bool)

(declare-fun mapDefault!28215 () ValueCell!8418)

(assert (=> mapNonEmpty!28209 (= condMapEmpty!28215 (= mapRest!28209 ((as const (Array (_ BitVec 32) ValueCell!8418)) mapDefault!28215)))))

(assert (=> mapNonEmpty!28209 (= tp!54116 (and e!492183 mapRes!28215))))

(assert (= (and mapNonEmpty!28209 condMapEmpty!28215) mapIsEmpty!28215))

(assert (= (and mapNonEmpty!28209 (not condMapEmpty!28215)) mapNonEmpty!28215))

(assert (= (and mapNonEmpty!28215 ((_ is ValueCellFull!8418) mapValue!28215)) b!884346))

(assert (= (and mapNonEmpty!28209 ((_ is ValueCellFull!8418) mapDefault!28215)) b!884347))

(declare-fun m!824733 () Bool)

(assert (=> mapNonEmpty!28215 m!824733))

(declare-fun b_lambda!12801 () Bool)

(assert (= b_lambda!12795 (or (and start!74980 b_free!15471) b_lambda!12801)))

(declare-fun b_lambda!12803 () Bool)

(assert (= b_lambda!12791 (or (and start!74980 b_free!15471) b_lambda!12803)))

(declare-fun b_lambda!12805 () Bool)

(assert (= b_lambda!12785 (or (and start!74980 b_free!15471) b_lambda!12805)))

(declare-fun b_lambda!12807 () Bool)

(assert (= b_lambda!12793 (or (and start!74980 b_free!15471) b_lambda!12807)))

(declare-fun b_lambda!12809 () Bool)

(assert (= b_lambda!12799 (or (and start!74980 b_free!15471) b_lambda!12809)))

(declare-fun b_lambda!12811 () Bool)

(assert (= b_lambda!12787 (or (and start!74980 b_free!15471) b_lambda!12811)))

(declare-fun b_lambda!12813 () Bool)

(assert (= b_lambda!12797 (or (and start!74980 b_free!15471) b_lambda!12813)))

(declare-fun b_lambda!12815 () Bool)

(assert (= b_lambda!12789 (or (and start!74980 b_free!15471) b_lambda!12815)))

(check-sat (not b!884263) (not b!884329) (not b!884255) (not b_lambda!12815) (not b!884307) tp_is_empty!17715 (not b!884223) (not d!109151) b_and!25681 (not b!884258) (not d!109133) (not b!884253) (not d!109169) (not b!884270) (not b!884331) (not b!884291) (not b!884260) (not b!884308) (not b!884271) (not b!884206) (not bm!39001) (not b!884306) (not b!884338) (not b!884267) (not b_lambda!12805) (not d!109171) (not mapNonEmpty!28215) (not b!884312) (not b!884265) (not b!884292) (not b_lambda!12811) (not b!884311) (not b!884339) (not b!884336) (not d!109163) (not b!884225) (not b!884268) (not b!884264) (not b_lambda!12783) (not b!884301) (not bm!38990) (not bm!38999) (not b!884299) (not b!884322) (not d!109147) (not d!109157) (not b!884324) (not b!884256) (not b!884320) (not bm!38986) (not d!109145) (not d!109129) (not bm!38989) (not b!884297) (not b_next!15471) (not b!884303) (not d!109155) (not d!109175) (not b!884327) (not b!884323) (not b!884219) (not b!884259) (not b_lambda!12801) (not bm!38994) (not bm!39000) (not b!884272) (not b!884252) (not b!884220) (not bm!38993) (not b!884298) (not b!884218) (not b_lambda!12803) (not b_lambda!12813) (not b!884304) (not b!884285) (not b!884330) (not b!884283) (not d!109131) (not b!884300) (not d!109173) (not b!884334) (not b!884326) (not b!884251) (not b_lambda!12809) (not b!884337) (not b!884335) (not bm!38985) (not b_lambda!12807) (not b!884224) (not d!109161))
(check-sat b_and!25681 (not b_next!15471))
