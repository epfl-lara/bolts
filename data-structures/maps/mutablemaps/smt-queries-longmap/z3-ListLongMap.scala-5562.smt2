; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73186 () Bool)

(assert start!73186)

(declare-fun b_free!14073 () Bool)

(declare-fun b_next!14073 () Bool)

(assert (=> start!73186 (= b_free!14073 (not b_next!14073))))

(declare-fun tp!49723 () Bool)

(declare-fun b_and!23323 () Bool)

(assert (=> start!73186 (= tp!49723 b_and!23323)))

(declare-fun b!851720 () Bool)

(declare-fun res!578639 () Bool)

(declare-fun e!475090 () Bool)

(assert (=> b!851720 (=> (not res!578639) (not e!475090))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!48606 0))(
  ( (array!48607 (arr!23330 (Array (_ BitVec 32) (_ BitVec 64))) (size!23771 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48606)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!851720 (= res!578639 (and (= (select (arr!23330 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!851721 () Bool)

(declare-datatypes ((V!26659 0))(
  ( (V!26660 (val!8152 Int)) )
))
(declare-fun v!557 () V!26659)

(declare-datatypes ((tuple2!10714 0))(
  ( (tuple2!10715 (_1!5367 (_ BitVec 64)) (_2!5367 V!26659)) )
))
(declare-datatypes ((List!16600 0))(
  ( (Nil!16597) (Cons!16596 (h!17727 tuple2!10714) (t!23127 List!16600)) )
))
(declare-datatypes ((ListLongMap!9497 0))(
  ( (ListLongMap!9498 (toList!4764 List!16600)) )
))
(declare-fun call!38075 () ListLongMap!9497)

(declare-fun call!38074 () ListLongMap!9497)

(declare-fun e!475091 () Bool)

(declare-fun +!2106 (ListLongMap!9497 tuple2!10714) ListLongMap!9497)

(assert (=> b!851721 (= e!475091 (= call!38075 (+!2106 call!38074 (tuple2!10715 k0!854 v!557))))))

(declare-fun b!851722 () Bool)

(declare-fun res!578631 () Bool)

(assert (=> b!851722 (=> (not res!578631) (not e!475090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851722 (= res!578631 (validKeyInArray!0 k0!854))))

(declare-fun b!851723 () Bool)

(declare-fun res!578637 () Bool)

(assert (=> b!851723 (=> (not res!578637) (not e!475090))))

(assert (=> b!851723 (= res!578637 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23771 _keys!868))))))

(declare-fun mapNonEmpty!25913 () Bool)

(declare-fun mapRes!25913 () Bool)

(declare-fun tp!49724 () Bool)

(declare-fun e!475088 () Bool)

(assert (=> mapNonEmpty!25913 (= mapRes!25913 (and tp!49724 e!475088))))

(declare-datatypes ((ValueCell!7665 0))(
  ( (ValueCellFull!7665 (v!10573 V!26659)) (EmptyCell!7665) )
))
(declare-fun mapRest!25913 () (Array (_ BitVec 32) ValueCell!7665))

(declare-fun mapValue!25913 () ValueCell!7665)

(declare-fun mapKey!25913 () (_ BitVec 32))

(declare-datatypes ((array!48608 0))(
  ( (array!48609 (arr!23331 (Array (_ BitVec 32) ValueCell!7665)) (size!23772 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48608)

(assert (=> mapNonEmpty!25913 (= (arr!23331 _values!688) (store mapRest!25913 mapKey!25913 mapValue!25913))))

(declare-fun b!851724 () Bool)

(declare-fun res!578634 () Bool)

(assert (=> b!851724 (=> (not res!578634) (not e!475090))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48606 (_ BitVec 32)) Bool)

(assert (=> b!851724 (= res!578634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!851725 () Bool)

(declare-fun tp_is_empty!16209 () Bool)

(assert (=> b!851725 (= e!475088 tp_is_empty!16209)))

(declare-fun b!851726 () Bool)

(declare-fun e!475085 () Bool)

(assert (=> b!851726 (= e!475085 true)))

(declare-fun lt!383686 () ListLongMap!9497)

(declare-fun lt!383684 () tuple2!10714)

(declare-fun lt!383688 () V!26659)

(assert (=> b!851726 (= (+!2106 lt!383686 lt!383684) (+!2106 (+!2106 lt!383686 (tuple2!10715 k0!854 lt!383688)) lt!383684))))

(declare-fun lt!383682 () V!26659)

(assert (=> b!851726 (= lt!383684 (tuple2!10715 k0!854 lt!383682))))

(declare-datatypes ((Unit!29058 0))(
  ( (Unit!29059) )
))
(declare-fun lt!383687 () Unit!29058)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!289 (ListLongMap!9497 (_ BitVec 64) V!26659 V!26659) Unit!29058)

(assert (=> b!851726 (= lt!383687 (addSameAsAddTwiceSameKeyDiffValues!289 lt!383686 k0!854 lt!383688 lt!383682))))

(declare-fun lt!383683 () V!26659)

(declare-fun get!12311 (ValueCell!7665 V!26659) V!26659)

(assert (=> b!851726 (= lt!383688 (get!12311 (select (arr!23331 _values!688) from!1053) lt!383683))))

(declare-fun lt!383681 () ListLongMap!9497)

(assert (=> b!851726 (= lt!383681 (+!2106 lt!383686 (tuple2!10715 (select (arr!23330 _keys!868) from!1053) lt!383682)))))

(assert (=> b!851726 (= lt!383682 (get!12311 (select (store (arr!23331 _values!688) i!612 (ValueCellFull!7665 v!557)) from!1053) lt!383683))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1037 (Int (_ BitVec 64)) V!26659)

(assert (=> b!851726 (= lt!383683 (dynLambda!1037 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!383680 () array!48608)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26659)

(declare-fun zeroValue!654 () V!26659)

(declare-fun getCurrentListMapNoExtraKeys!2749 (array!48606 array!48608 (_ BitVec 32) (_ BitVec 32) V!26659 V!26659 (_ BitVec 32) Int) ListLongMap!9497)

(assert (=> b!851726 (= lt!383686 (getCurrentListMapNoExtraKeys!2749 _keys!868 lt!383680 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851727 () Bool)

(declare-fun e!475087 () Bool)

(assert (=> b!851727 (= e!475090 e!475087)))

(declare-fun res!578632 () Bool)

(assert (=> b!851727 (=> (not res!578632) (not e!475087))))

(assert (=> b!851727 (= res!578632 (= from!1053 i!612))))

(assert (=> b!851727 (= lt!383681 (getCurrentListMapNoExtraKeys!2749 _keys!868 lt!383680 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!851727 (= lt!383680 (array!48609 (store (arr!23331 _values!688) i!612 (ValueCellFull!7665 v!557)) (size!23772 _values!688)))))

(declare-fun lt!383679 () ListLongMap!9497)

(assert (=> b!851727 (= lt!383679 (getCurrentListMapNoExtraKeys!2749 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!851728 () Bool)

(assert (=> b!851728 (= e!475087 (not e!475085))))

(declare-fun res!578640 () Bool)

(assert (=> b!851728 (=> res!578640 e!475085)))

(assert (=> b!851728 (= res!578640 (not (validKeyInArray!0 (select (arr!23330 _keys!868) from!1053))))))

(assert (=> b!851728 e!475091))

(declare-fun c!91698 () Bool)

(assert (=> b!851728 (= c!91698 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!383685 () Unit!29058)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!372 (array!48606 array!48608 (_ BitVec 32) (_ BitVec 32) V!26659 V!26659 (_ BitVec 32) (_ BitVec 64) V!26659 (_ BitVec 32) Int) Unit!29058)

(assert (=> b!851728 (= lt!383685 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!372 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851729 () Bool)

(declare-fun res!578638 () Bool)

(assert (=> b!851729 (=> (not res!578638) (not e!475090))))

(assert (=> b!851729 (= res!578638 (and (= (size!23772 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23771 _keys!868) (size!23772 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!851730 () Bool)

(declare-fun res!578635 () Bool)

(assert (=> b!851730 (=> (not res!578635) (not e!475090))))

(declare-datatypes ((List!16601 0))(
  ( (Nil!16598) (Cons!16597 (h!17728 (_ BitVec 64)) (t!23128 List!16601)) )
))
(declare-fun arrayNoDuplicates!0 (array!48606 (_ BitVec 32) List!16601) Bool)

(assert (=> b!851730 (= res!578635 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16598))))

(declare-fun b!851731 () Bool)

(assert (=> b!851731 (= e!475091 (= call!38075 call!38074))))

(declare-fun bm!38071 () Bool)

(assert (=> bm!38071 (= call!38075 (getCurrentListMapNoExtraKeys!2749 _keys!868 lt!383680 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38072 () Bool)

(assert (=> bm!38072 (= call!38074 (getCurrentListMapNoExtraKeys!2749 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!25913 () Bool)

(assert (=> mapIsEmpty!25913 mapRes!25913))

(declare-fun b!851733 () Bool)

(declare-fun e!475086 () Bool)

(declare-fun e!475089 () Bool)

(assert (=> b!851733 (= e!475086 (and e!475089 mapRes!25913))))

(declare-fun condMapEmpty!25913 () Bool)

(declare-fun mapDefault!25913 () ValueCell!7665)

(assert (=> b!851733 (= condMapEmpty!25913 (= (arr!23331 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7665)) mapDefault!25913)))))

(declare-fun b!851734 () Bool)

(assert (=> b!851734 (= e!475089 tp_is_empty!16209)))

(declare-fun b!851732 () Bool)

(declare-fun res!578636 () Bool)

(assert (=> b!851732 (=> (not res!578636) (not e!475090))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!851732 (= res!578636 (validMask!0 mask!1196))))

(declare-fun res!578633 () Bool)

(assert (=> start!73186 (=> (not res!578633) (not e!475090))))

(assert (=> start!73186 (= res!578633 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23771 _keys!868))))))

(assert (=> start!73186 e!475090))

(assert (=> start!73186 tp_is_empty!16209))

(assert (=> start!73186 true))

(assert (=> start!73186 tp!49723))

(declare-fun array_inv!18498 (array!48606) Bool)

(assert (=> start!73186 (array_inv!18498 _keys!868)))

(declare-fun array_inv!18499 (array!48608) Bool)

(assert (=> start!73186 (and (array_inv!18499 _values!688) e!475086)))

(assert (= (and start!73186 res!578633) b!851732))

(assert (= (and b!851732 res!578636) b!851729))

(assert (= (and b!851729 res!578638) b!851724))

(assert (= (and b!851724 res!578634) b!851730))

(assert (= (and b!851730 res!578635) b!851723))

(assert (= (and b!851723 res!578637) b!851722))

(assert (= (and b!851722 res!578631) b!851720))

(assert (= (and b!851720 res!578639) b!851727))

(assert (= (and b!851727 res!578632) b!851728))

(assert (= (and b!851728 c!91698) b!851721))

(assert (= (and b!851728 (not c!91698)) b!851731))

(assert (= (or b!851721 b!851731) bm!38071))

(assert (= (or b!851721 b!851731) bm!38072))

(assert (= (and b!851728 (not res!578640)) b!851726))

(assert (= (and b!851733 condMapEmpty!25913) mapIsEmpty!25913))

(assert (= (and b!851733 (not condMapEmpty!25913)) mapNonEmpty!25913))

(get-info :version)

(assert (= (and mapNonEmpty!25913 ((_ is ValueCellFull!7665) mapValue!25913)) b!851725))

(assert (= (and b!851733 ((_ is ValueCellFull!7665) mapDefault!25913)) b!851734))

(assert (= start!73186 b!851733))

(declare-fun b_lambda!11635 () Bool)

(assert (=> (not b_lambda!11635) (not b!851726)))

(declare-fun t!23126 () Bool)

(declare-fun tb!4383 () Bool)

(assert (=> (and start!73186 (= defaultEntry!696 defaultEntry!696) t!23126) tb!4383))

(declare-fun result!8369 () Bool)

(assert (=> tb!4383 (= result!8369 tp_is_empty!16209)))

(assert (=> b!851726 t!23126))

(declare-fun b_and!23325 () Bool)

(assert (= b_and!23323 (and (=> t!23126 result!8369) b_and!23325)))

(declare-fun m!792803 () Bool)

(assert (=> bm!38071 m!792803))

(declare-fun m!792805 () Bool)

(assert (=> b!851732 m!792805))

(declare-fun m!792807 () Bool)

(assert (=> b!851730 m!792807))

(declare-fun m!792809 () Bool)

(assert (=> b!851720 m!792809))

(declare-fun m!792811 () Bool)

(assert (=> mapNonEmpty!25913 m!792811))

(declare-fun m!792813 () Bool)

(assert (=> b!851724 m!792813))

(declare-fun m!792815 () Bool)

(assert (=> bm!38072 m!792815))

(declare-fun m!792817 () Bool)

(assert (=> b!851727 m!792817))

(declare-fun m!792819 () Bool)

(assert (=> b!851727 m!792819))

(declare-fun m!792821 () Bool)

(assert (=> b!851727 m!792821))

(declare-fun m!792823 () Bool)

(assert (=> b!851726 m!792823))

(declare-fun m!792825 () Bool)

(assert (=> b!851726 m!792825))

(declare-fun m!792827 () Bool)

(assert (=> b!851726 m!792827))

(assert (=> b!851726 m!792803))

(declare-fun m!792829 () Bool)

(assert (=> b!851726 m!792829))

(declare-fun m!792831 () Bool)

(assert (=> b!851726 m!792831))

(declare-fun m!792833 () Bool)

(assert (=> b!851726 m!792833))

(assert (=> b!851726 m!792819))

(assert (=> b!851726 m!792833))

(declare-fun m!792835 () Bool)

(assert (=> b!851726 m!792835))

(assert (=> b!851726 m!792825))

(declare-fun m!792837 () Bool)

(assert (=> b!851726 m!792837))

(declare-fun m!792839 () Bool)

(assert (=> b!851726 m!792839))

(declare-fun m!792841 () Bool)

(assert (=> b!851726 m!792841))

(assert (=> b!851726 m!792827))

(declare-fun m!792843 () Bool)

(assert (=> b!851726 m!792843))

(declare-fun m!792845 () Bool)

(assert (=> b!851722 m!792845))

(assert (=> b!851728 m!792839))

(assert (=> b!851728 m!792839))

(declare-fun m!792847 () Bool)

(assert (=> b!851728 m!792847))

(declare-fun m!792849 () Bool)

(assert (=> b!851728 m!792849))

(declare-fun m!792851 () Bool)

(assert (=> start!73186 m!792851))

(declare-fun m!792853 () Bool)

(assert (=> start!73186 m!792853))

(declare-fun m!792855 () Bool)

(assert (=> b!851721 m!792855))

(check-sat (not bm!38071) (not mapNonEmpty!25913) (not b_lambda!11635) (not b!851728) (not b!851722) (not start!73186) (not b!851732) tp_is_empty!16209 b_and!23325 (not b!851727) (not b_next!14073) (not bm!38072) (not b!851726) (not b!851721) (not b!851724) (not b!851730))
(check-sat b_and!23325 (not b_next!14073))
