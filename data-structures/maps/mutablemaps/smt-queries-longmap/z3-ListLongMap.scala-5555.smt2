; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73144 () Bool)

(assert start!73144)

(declare-fun b_free!14031 () Bool)

(declare-fun b_next!14031 () Bool)

(assert (=> start!73144 (= b_free!14031 (not b_next!14031))))

(declare-fun tp!49598 () Bool)

(declare-fun b_and!23239 () Bool)

(assert (=> start!73144 (= tp!49598 b_and!23239)))

(declare-fun b!850733 () Bool)

(declare-fun res!578002 () Bool)

(declare-fun e!474581 () Bool)

(assert (=> b!850733 (=> (not res!578002) (not e!474581))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48522 0))(
  ( (array!48523 (arr!23288 (Array (_ BitVec 32) (_ BitVec 64))) (size!23729 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48522)

(declare-datatypes ((V!26603 0))(
  ( (V!26604 (val!8131 Int)) )
))
(declare-datatypes ((ValueCell!7644 0))(
  ( (ValueCellFull!7644 (v!10552 V!26603)) (EmptyCell!7644) )
))
(declare-datatypes ((array!48524 0))(
  ( (array!48525 (arr!23289 (Array (_ BitVec 32) ValueCell!7644)) (size!23730 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48524)

(assert (=> b!850733 (= res!578002 (and (= (size!23730 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23729 _keys!868) (size!23730 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!850734 () Bool)

(declare-fun e!474586 () Bool)

(declare-fun e!474584 () Bool)

(assert (=> b!850734 (= e!474586 (not e!474584))))

(declare-fun res!578010 () Bool)

(assert (=> b!850734 (=> res!578010 e!474584)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!850734 (= res!578010 (not (validKeyInArray!0 (select (arr!23288 _keys!868) from!1053))))))

(declare-fun e!474588 () Bool)

(assert (=> b!850734 e!474588))

(declare-fun c!91635 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!850734 (= c!91635 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((Unit!29018 0))(
  ( (Unit!29019) )
))
(declare-fun lt!383057 () Unit!29018)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!26603)

(declare-fun zeroValue!654 () V!26603)

(declare-fun v!557 () V!26603)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!355 (array!48522 array!48524 (_ BitVec 32) (_ BitVec 32) V!26603 V!26603 (_ BitVec 32) (_ BitVec 64) V!26603 (_ BitVec 32) Int) Unit!29018)

(assert (=> b!850734 (= lt!383057 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!355 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!383055 () array!48524)

(declare-fun bm!37945 () Bool)

(declare-datatypes ((tuple2!10672 0))(
  ( (tuple2!10673 (_1!5346 (_ BitVec 64)) (_2!5346 V!26603)) )
))
(declare-datatypes ((List!16564 0))(
  ( (Nil!16561) (Cons!16560 (h!17691 tuple2!10672) (t!23049 List!16564)) )
))
(declare-datatypes ((ListLongMap!9455 0))(
  ( (ListLongMap!9456 (toList!4743 List!16564)) )
))
(declare-fun call!37948 () ListLongMap!9455)

(declare-fun getCurrentListMapNoExtraKeys!2729 (array!48522 array!48524 (_ BitVec 32) (_ BitVec 32) V!26603 V!26603 (_ BitVec 32) Int) ListLongMap!9455)

(assert (=> bm!37945 (= call!37948 (getCurrentListMapNoExtraKeys!2729 _keys!868 lt!383055 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850735 () Bool)

(assert (=> b!850735 (= e!474584 true)))

(declare-fun lt!383054 () tuple2!10672)

(declare-fun lt!383051 () V!26603)

(declare-fun lt!383052 () ListLongMap!9455)

(declare-fun +!2086 (ListLongMap!9455 tuple2!10672) ListLongMap!9455)

(assert (=> b!850735 (= (+!2086 lt!383052 lt!383054) (+!2086 (+!2086 lt!383052 (tuple2!10673 k0!854 lt!383051)) lt!383054))))

(declare-fun lt!383049 () V!26603)

(assert (=> b!850735 (= lt!383054 (tuple2!10673 k0!854 lt!383049))))

(declare-fun lt!383053 () Unit!29018)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!271 (ListLongMap!9455 (_ BitVec 64) V!26603 V!26603) Unit!29018)

(assert (=> b!850735 (= lt!383053 (addSameAsAddTwiceSameKeyDiffValues!271 lt!383052 k0!854 lt!383051 lt!383049))))

(declare-fun lt!383058 () V!26603)

(declare-fun get!12279 (ValueCell!7644 V!26603) V!26603)

(assert (=> b!850735 (= lt!383051 (get!12279 (select (arr!23289 _values!688) from!1053) lt!383058))))

(declare-fun lt!383050 () ListLongMap!9455)

(assert (=> b!850735 (= lt!383050 (+!2086 lt!383052 (tuple2!10673 (select (arr!23288 _keys!868) from!1053) lt!383049)))))

(assert (=> b!850735 (= lt!383049 (get!12279 (select (store (arr!23289 _values!688) i!612 (ValueCellFull!7644 v!557)) from!1053) lt!383058))))

(declare-fun dynLambda!1019 (Int (_ BitVec 64)) V!26603)

(assert (=> b!850735 (= lt!383058 (dynLambda!1019 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!850735 (= lt!383052 (getCurrentListMapNoExtraKeys!2729 _keys!868 lt!383055 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850736 () Bool)

(declare-fun res!578009 () Bool)

(assert (=> b!850736 (=> (not res!578009) (not e!474581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!850736 (= res!578009 (validMask!0 mask!1196))))

(declare-fun b!850737 () Bool)

(declare-fun e!474583 () Bool)

(declare-fun tp_is_empty!16167 () Bool)

(assert (=> b!850737 (= e!474583 tp_is_empty!16167)))

(declare-fun b!850738 () Bool)

(declare-fun res!578003 () Bool)

(assert (=> b!850738 (=> (not res!578003) (not e!474581))))

(declare-datatypes ((List!16565 0))(
  ( (Nil!16562) (Cons!16561 (h!17692 (_ BitVec 64)) (t!23050 List!16565)) )
))
(declare-fun arrayNoDuplicates!0 (array!48522 (_ BitVec 32) List!16565) Bool)

(assert (=> b!850738 (= res!578003 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16562))))

(declare-fun mapNonEmpty!25850 () Bool)

(declare-fun mapRes!25850 () Bool)

(declare-fun tp!49597 () Bool)

(assert (=> mapNonEmpty!25850 (= mapRes!25850 (and tp!49597 e!474583))))

(declare-fun mapKey!25850 () (_ BitVec 32))

(declare-fun mapValue!25850 () ValueCell!7644)

(declare-fun mapRest!25850 () (Array (_ BitVec 32) ValueCell!7644))

(assert (=> mapNonEmpty!25850 (= (arr!23289 _values!688) (store mapRest!25850 mapKey!25850 mapValue!25850))))

(declare-fun call!37949 () ListLongMap!9455)

(declare-fun b!850739 () Bool)

(assert (=> b!850739 (= e!474588 (= call!37948 (+!2086 call!37949 (tuple2!10673 k0!854 v!557))))))

(declare-fun b!850740 () Bool)

(assert (=> b!850740 (= e!474588 (= call!37948 call!37949))))

(declare-fun b!850741 () Bool)

(declare-fun res!578004 () Bool)

(assert (=> b!850741 (=> (not res!578004) (not e!474581))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48522 (_ BitVec 32)) Bool)

(assert (=> b!850741 (= res!578004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25850 () Bool)

(assert (=> mapIsEmpty!25850 mapRes!25850))

(declare-fun b!850742 () Bool)

(declare-fun res!578001 () Bool)

(assert (=> b!850742 (=> (not res!578001) (not e!474581))))

(assert (=> b!850742 (= res!578001 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23729 _keys!868))))))

(declare-fun b!850743 () Bool)

(declare-fun res!578008 () Bool)

(assert (=> b!850743 (=> (not res!578008) (not e!474581))))

(assert (=> b!850743 (= res!578008 (and (= (select (arr!23288 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!850744 () Bool)

(declare-fun res!578007 () Bool)

(assert (=> b!850744 (=> (not res!578007) (not e!474581))))

(assert (=> b!850744 (= res!578007 (validKeyInArray!0 k0!854))))

(declare-fun b!850745 () Bool)

(declare-fun e!474582 () Bool)

(declare-fun e!474587 () Bool)

(assert (=> b!850745 (= e!474582 (and e!474587 mapRes!25850))))

(declare-fun condMapEmpty!25850 () Bool)

(declare-fun mapDefault!25850 () ValueCell!7644)

(assert (=> b!850745 (= condMapEmpty!25850 (= (arr!23289 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7644)) mapDefault!25850)))))

(declare-fun bm!37946 () Bool)

(assert (=> bm!37946 (= call!37949 (getCurrentListMapNoExtraKeys!2729 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!578006 () Bool)

(assert (=> start!73144 (=> (not res!578006) (not e!474581))))

(assert (=> start!73144 (= res!578006 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23729 _keys!868))))))

(assert (=> start!73144 e!474581))

(assert (=> start!73144 tp_is_empty!16167))

(assert (=> start!73144 true))

(assert (=> start!73144 tp!49598))

(declare-fun array_inv!18466 (array!48522) Bool)

(assert (=> start!73144 (array_inv!18466 _keys!868)))

(declare-fun array_inv!18467 (array!48524) Bool)

(assert (=> start!73144 (and (array_inv!18467 _values!688) e!474582)))

(declare-fun b!850746 () Bool)

(assert (=> b!850746 (= e!474581 e!474586)))

(declare-fun res!578005 () Bool)

(assert (=> b!850746 (=> (not res!578005) (not e!474586))))

(assert (=> b!850746 (= res!578005 (= from!1053 i!612))))

(assert (=> b!850746 (= lt!383050 (getCurrentListMapNoExtraKeys!2729 _keys!868 lt!383055 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!850746 (= lt!383055 (array!48525 (store (arr!23289 _values!688) i!612 (ValueCellFull!7644 v!557)) (size!23730 _values!688)))))

(declare-fun lt!383056 () ListLongMap!9455)

(assert (=> b!850746 (= lt!383056 (getCurrentListMapNoExtraKeys!2729 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!850747 () Bool)

(assert (=> b!850747 (= e!474587 tp_is_empty!16167)))

(assert (= (and start!73144 res!578006) b!850736))

(assert (= (and b!850736 res!578009) b!850733))

(assert (= (and b!850733 res!578002) b!850741))

(assert (= (and b!850741 res!578004) b!850738))

(assert (= (and b!850738 res!578003) b!850742))

(assert (= (and b!850742 res!578001) b!850744))

(assert (= (and b!850744 res!578007) b!850743))

(assert (= (and b!850743 res!578008) b!850746))

(assert (= (and b!850746 res!578005) b!850734))

(assert (= (and b!850734 c!91635) b!850739))

(assert (= (and b!850734 (not c!91635)) b!850740))

(assert (= (or b!850739 b!850740) bm!37946))

(assert (= (or b!850739 b!850740) bm!37945))

(assert (= (and b!850734 (not res!578010)) b!850735))

(assert (= (and b!850745 condMapEmpty!25850) mapIsEmpty!25850))

(assert (= (and b!850745 (not condMapEmpty!25850)) mapNonEmpty!25850))

(get-info :version)

(assert (= (and mapNonEmpty!25850 ((_ is ValueCellFull!7644) mapValue!25850)) b!850737))

(assert (= (and b!850745 ((_ is ValueCellFull!7644) mapDefault!25850)) b!850747))

(assert (= start!73144 b!850745))

(declare-fun b_lambda!11593 () Bool)

(assert (=> (not b_lambda!11593) (not b!850735)))

(declare-fun t!23048 () Bool)

(declare-fun tb!4341 () Bool)

(assert (=> (and start!73144 (= defaultEntry!696 defaultEntry!696) t!23048) tb!4341))

(declare-fun result!8285 () Bool)

(assert (=> tb!4341 (= result!8285 tp_is_empty!16167)))

(assert (=> b!850735 t!23048))

(declare-fun b_and!23241 () Bool)

(assert (= b_and!23239 (and (=> t!23048 result!8285) b_and!23241)))

(declare-fun m!791669 () Bool)

(assert (=> bm!37945 m!791669))

(declare-fun m!791671 () Bool)

(assert (=> b!850744 m!791671))

(declare-fun m!791673 () Bool)

(assert (=> b!850743 m!791673))

(declare-fun m!791675 () Bool)

(assert (=> b!850739 m!791675))

(declare-fun m!791677 () Bool)

(assert (=> bm!37946 m!791677))

(declare-fun m!791679 () Bool)

(assert (=> mapNonEmpty!25850 m!791679))

(declare-fun m!791681 () Bool)

(assert (=> b!850734 m!791681))

(assert (=> b!850734 m!791681))

(declare-fun m!791683 () Bool)

(assert (=> b!850734 m!791683))

(declare-fun m!791685 () Bool)

(assert (=> b!850734 m!791685))

(declare-fun m!791687 () Bool)

(assert (=> start!73144 m!791687))

(declare-fun m!791689 () Bool)

(assert (=> start!73144 m!791689))

(declare-fun m!791691 () Bool)

(assert (=> b!850736 m!791691))

(declare-fun m!791693 () Bool)

(assert (=> b!850741 m!791693))

(declare-fun m!791695 () Bool)

(assert (=> b!850746 m!791695))

(declare-fun m!791697 () Bool)

(assert (=> b!850746 m!791697))

(declare-fun m!791699 () Bool)

(assert (=> b!850746 m!791699))

(declare-fun m!791701 () Bool)

(assert (=> b!850735 m!791701))

(declare-fun m!791703 () Bool)

(assert (=> b!850735 m!791703))

(declare-fun m!791705 () Bool)

(assert (=> b!850735 m!791705))

(declare-fun m!791707 () Bool)

(assert (=> b!850735 m!791707))

(assert (=> b!850735 m!791707))

(declare-fun m!791709 () Bool)

(assert (=> b!850735 m!791709))

(assert (=> b!850735 m!791701))

(declare-fun m!791711 () Bool)

(assert (=> b!850735 m!791711))

(assert (=> b!850735 m!791669))

(declare-fun m!791713 () Bool)

(assert (=> b!850735 m!791713))

(declare-fun m!791715 () Bool)

(assert (=> b!850735 m!791715))

(assert (=> b!850735 m!791713))

(declare-fun m!791717 () Bool)

(assert (=> b!850735 m!791717))

(assert (=> b!850735 m!791697))

(assert (=> b!850735 m!791681))

(declare-fun m!791719 () Bool)

(assert (=> b!850735 m!791719))

(declare-fun m!791721 () Bool)

(assert (=> b!850738 m!791721))

(check-sat (not b_lambda!11593) tp_is_empty!16167 (not start!73144) (not b!850741) (not b!850735) (not b!850738) (not b!850736) (not bm!37945) (not bm!37946) b_and!23241 (not b!850744) (not b!850739) (not b!850734) (not b!850746) (not b_next!14031) (not mapNonEmpty!25850))
(check-sat b_and!23241 (not b_next!14031))
