; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73108 () Bool)

(assert start!73108)

(declare-fun b_free!13995 () Bool)

(declare-fun b_next!13995 () Bool)

(assert (=> start!73108 (= b_free!13995 (not b_next!13995))))

(declare-fun tp!49490 () Bool)

(declare-fun b_and!23167 () Bool)

(assert (=> start!73108 (= tp!49490 b_and!23167)))

(declare-fun b!849887 () Bool)

(declare-fun res!577464 () Bool)

(declare-fun e!474156 () Bool)

(assert (=> b!849887 (=> (not res!577464) (not e!474156))))

(declare-datatypes ((array!48454 0))(
  ( (array!48455 (arr!23254 (Array (_ BitVec 32) (_ BitVec 64))) (size!23695 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48454)

(declare-datatypes ((List!16541 0))(
  ( (Nil!16538) (Cons!16537 (h!17668 (_ BitVec 64)) (t!22990 List!16541)) )
))
(declare-fun arrayNoDuplicates!0 (array!48454 (_ BitVec 32) List!16541) Bool)

(assert (=> b!849887 (= res!577464 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16538))))

(declare-fun b!849888 () Bool)

(declare-fun e!474151 () Bool)

(declare-fun tp_is_empty!16131 () Bool)

(assert (=> b!849888 (= e!474151 tp_is_empty!16131)))

(declare-datatypes ((V!26555 0))(
  ( (V!26556 (val!8113 Int)) )
))
(declare-datatypes ((ValueCell!7626 0))(
  ( (ValueCellFull!7626 (v!10534 V!26555)) (EmptyCell!7626) )
))
(declare-datatypes ((array!48456 0))(
  ( (array!48457 (arr!23255 (Array (_ BitVec 32) ValueCell!7626)) (size!23696 (_ BitVec 32))) )
))
(declare-fun lt!382511 () array!48456)

(declare-fun bm!37837 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10642 0))(
  ( (tuple2!10643 (_1!5331 (_ BitVec 64)) (_2!5331 V!26555)) )
))
(declare-datatypes ((List!16542 0))(
  ( (Nil!16539) (Cons!16538 (h!17669 tuple2!10642) (t!22991 List!16542)) )
))
(declare-datatypes ((ListLongMap!9425 0))(
  ( (ListLongMap!9426 (toList!4728 List!16542)) )
))
(declare-fun call!37841 () ListLongMap!9425)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26555)

(declare-fun zeroValue!654 () V!26555)

(declare-fun getCurrentListMapNoExtraKeys!2715 (array!48454 array!48456 (_ BitVec 32) (_ BitVec 32) V!26555 V!26555 (_ BitVec 32) Int) ListLongMap!9425)

(assert (=> bm!37837 (= call!37841 (getCurrentListMapNoExtraKeys!2715 _keys!868 lt!382511 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849889 () Bool)

(declare-fun res!577467 () Bool)

(assert (=> b!849889 (=> (not res!577467) (not e!474156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48454 (_ BitVec 32)) Bool)

(assert (=> b!849889 (= res!577467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!849891 () Bool)

(declare-fun e!474155 () Bool)

(declare-fun call!37840 () ListLongMap!9425)

(assert (=> b!849891 (= e!474155 (= call!37841 call!37840))))

(declare-fun b!849892 () Bool)

(declare-fun res!577462 () Bool)

(assert (=> b!849892 (=> (not res!577462) (not e!474156))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!849892 (= res!577462 (and (= (select (arr!23254 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun v!557 () V!26555)

(declare-fun b!849893 () Bool)

(declare-fun +!2073 (ListLongMap!9425 tuple2!10642) ListLongMap!9425)

(assert (=> b!849893 (= e!474155 (= call!37841 (+!2073 call!37840 (tuple2!10643 k0!854 v!557))))))

(declare-fun b!849894 () Bool)

(declare-fun res!577461 () Bool)

(assert (=> b!849894 (=> (not res!577461) (not e!474156))))

(assert (=> b!849894 (= res!577461 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23695 _keys!868))))))

(declare-fun b!849895 () Bool)

(declare-fun e!474153 () Bool)

(assert (=> b!849895 (= e!474153 true)))

(declare-fun lt!382517 () V!26555)

(declare-fun lt!382516 () tuple2!10642)

(declare-fun lt!382518 () ListLongMap!9425)

(assert (=> b!849895 (= (+!2073 lt!382518 lt!382516) (+!2073 (+!2073 lt!382518 (tuple2!10643 k0!854 lt!382517)) lt!382516))))

(declare-fun lt!382512 () V!26555)

(assert (=> b!849895 (= lt!382516 (tuple2!10643 k0!854 lt!382512))))

(declare-datatypes ((Unit!28994 0))(
  ( (Unit!28995) )
))
(declare-fun lt!382515 () Unit!28994)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!260 (ListLongMap!9425 (_ BitVec 64) V!26555 V!26555) Unit!28994)

(assert (=> b!849895 (= lt!382515 (addSameAsAddTwiceSameKeyDiffValues!260 lt!382518 k0!854 lt!382517 lt!382512))))

(declare-fun lt!382510 () V!26555)

(declare-fun _values!688 () array!48456)

(declare-fun get!12256 (ValueCell!7626 V!26555) V!26555)

(assert (=> b!849895 (= lt!382517 (get!12256 (select (arr!23255 _values!688) from!1053) lt!382510))))

(declare-fun lt!382509 () ListLongMap!9425)

(assert (=> b!849895 (= lt!382509 (+!2073 lt!382518 (tuple2!10643 (select (arr!23254 _keys!868) from!1053) lt!382512)))))

(assert (=> b!849895 (= lt!382512 (get!12256 (select (store (arr!23255 _values!688) i!612 (ValueCellFull!7626 v!557)) from!1053) lt!382510))))

(declare-fun dynLambda!1008 (Int (_ BitVec 64)) V!26555)

(assert (=> b!849895 (= lt!382510 (dynLambda!1008 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!849895 (= lt!382518 (getCurrentListMapNoExtraKeys!2715 _keys!868 lt!382511 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849896 () Bool)

(declare-fun e!474150 () Bool)

(assert (=> b!849896 (= e!474156 e!474150)))

(declare-fun res!577463 () Bool)

(assert (=> b!849896 (=> (not res!577463) (not e!474150))))

(assert (=> b!849896 (= res!577463 (= from!1053 i!612))))

(assert (=> b!849896 (= lt!382509 (getCurrentListMapNoExtraKeys!2715 _keys!868 lt!382511 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!849896 (= lt!382511 (array!48457 (store (arr!23255 _values!688) i!612 (ValueCellFull!7626 v!557)) (size!23696 _values!688)))))

(declare-fun lt!382513 () ListLongMap!9425)

(assert (=> b!849896 (= lt!382513 (getCurrentListMapNoExtraKeys!2715 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!849897 () Bool)

(assert (=> b!849897 (= e!474150 (not e!474153))))

(declare-fun res!577468 () Bool)

(assert (=> b!849897 (=> res!577468 e!474153)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849897 (= res!577468 (not (validKeyInArray!0 (select (arr!23254 _keys!868) from!1053))))))

(assert (=> b!849897 e!474155))

(declare-fun c!91581 () Bool)

(assert (=> b!849897 (= c!91581 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!382514 () Unit!28994)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!344 (array!48454 array!48456 (_ BitVec 32) (_ BitVec 32) V!26555 V!26555 (_ BitVec 32) (_ BitVec 64) V!26555 (_ BitVec 32) Int) Unit!28994)

(assert (=> b!849897 (= lt!382514 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!344 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849898 () Bool)

(declare-fun e!474154 () Bool)

(assert (=> b!849898 (= e!474154 tp_is_empty!16131)))

(declare-fun mapIsEmpty!25796 () Bool)

(declare-fun mapRes!25796 () Bool)

(assert (=> mapIsEmpty!25796 mapRes!25796))

(declare-fun b!849899 () Bool)

(declare-fun res!577470 () Bool)

(assert (=> b!849899 (=> (not res!577470) (not e!474156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!849899 (= res!577470 (validMask!0 mask!1196))))

(declare-fun b!849890 () Bool)

(declare-fun res!577465 () Bool)

(assert (=> b!849890 (=> (not res!577465) (not e!474156))))

(assert (=> b!849890 (= res!577465 (and (= (size!23696 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23695 _keys!868) (size!23696 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!577466 () Bool)

(assert (=> start!73108 (=> (not res!577466) (not e!474156))))

(assert (=> start!73108 (= res!577466 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23695 _keys!868))))))

(assert (=> start!73108 e!474156))

(assert (=> start!73108 tp_is_empty!16131))

(assert (=> start!73108 true))

(assert (=> start!73108 tp!49490))

(declare-fun array_inv!18440 (array!48454) Bool)

(assert (=> start!73108 (array_inv!18440 _keys!868)))

(declare-fun e!474149 () Bool)

(declare-fun array_inv!18441 (array!48456) Bool)

(assert (=> start!73108 (and (array_inv!18441 _values!688) e!474149)))

(declare-fun bm!37838 () Bool)

(assert (=> bm!37838 (= call!37840 (getCurrentListMapNoExtraKeys!2715 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849900 () Bool)

(assert (=> b!849900 (= e!474149 (and e!474151 mapRes!25796))))

(declare-fun condMapEmpty!25796 () Bool)

(declare-fun mapDefault!25796 () ValueCell!7626)

(assert (=> b!849900 (= condMapEmpty!25796 (= (arr!23255 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7626)) mapDefault!25796)))))

(declare-fun mapNonEmpty!25796 () Bool)

(declare-fun tp!49489 () Bool)

(assert (=> mapNonEmpty!25796 (= mapRes!25796 (and tp!49489 e!474154))))

(declare-fun mapValue!25796 () ValueCell!7626)

(declare-fun mapKey!25796 () (_ BitVec 32))

(declare-fun mapRest!25796 () (Array (_ BitVec 32) ValueCell!7626))

(assert (=> mapNonEmpty!25796 (= (arr!23255 _values!688) (store mapRest!25796 mapKey!25796 mapValue!25796))))

(declare-fun b!849901 () Bool)

(declare-fun res!577469 () Bool)

(assert (=> b!849901 (=> (not res!577469) (not e!474156))))

(assert (=> b!849901 (= res!577469 (validKeyInArray!0 k0!854))))

(assert (= (and start!73108 res!577466) b!849899))

(assert (= (and b!849899 res!577470) b!849890))

(assert (= (and b!849890 res!577465) b!849889))

(assert (= (and b!849889 res!577467) b!849887))

(assert (= (and b!849887 res!577464) b!849894))

(assert (= (and b!849894 res!577461) b!849901))

(assert (= (and b!849901 res!577469) b!849892))

(assert (= (and b!849892 res!577462) b!849896))

(assert (= (and b!849896 res!577463) b!849897))

(assert (= (and b!849897 c!91581) b!849893))

(assert (= (and b!849897 (not c!91581)) b!849891))

(assert (= (or b!849893 b!849891) bm!37837))

(assert (= (or b!849893 b!849891) bm!37838))

(assert (= (and b!849897 (not res!577468)) b!849895))

(assert (= (and b!849900 condMapEmpty!25796) mapIsEmpty!25796))

(assert (= (and b!849900 (not condMapEmpty!25796)) mapNonEmpty!25796))

(get-info :version)

(assert (= (and mapNonEmpty!25796 ((_ is ValueCellFull!7626) mapValue!25796)) b!849898))

(assert (= (and b!849900 ((_ is ValueCellFull!7626) mapDefault!25796)) b!849888))

(assert (= start!73108 b!849900))

(declare-fun b_lambda!11557 () Bool)

(assert (=> (not b_lambda!11557) (not b!849895)))

(declare-fun t!22989 () Bool)

(declare-fun tb!4305 () Bool)

(assert (=> (and start!73108 (= defaultEntry!696 defaultEntry!696) t!22989) tb!4305))

(declare-fun result!8213 () Bool)

(assert (=> tb!4305 (= result!8213 tp_is_empty!16131)))

(assert (=> b!849895 t!22989))

(declare-fun b_and!23169 () Bool)

(assert (= b_and!23167 (and (=> t!22989 result!8213) b_and!23169)))

(declare-fun m!790697 () Bool)

(assert (=> b!849893 m!790697))

(declare-fun m!790699 () Bool)

(assert (=> b!849899 m!790699))

(declare-fun m!790701 () Bool)

(assert (=> b!849889 m!790701))

(declare-fun m!790703 () Bool)

(assert (=> b!849901 m!790703))

(declare-fun m!790705 () Bool)

(assert (=> b!849887 m!790705))

(declare-fun m!790707 () Bool)

(assert (=> bm!37838 m!790707))

(declare-fun m!790709 () Bool)

(assert (=> bm!37837 m!790709))

(declare-fun m!790711 () Bool)

(assert (=> b!849896 m!790711))

(declare-fun m!790713 () Bool)

(assert (=> b!849896 m!790713))

(declare-fun m!790715 () Bool)

(assert (=> b!849896 m!790715))

(declare-fun m!790717 () Bool)

(assert (=> b!849897 m!790717))

(assert (=> b!849897 m!790717))

(declare-fun m!790719 () Bool)

(assert (=> b!849897 m!790719))

(declare-fun m!790721 () Bool)

(assert (=> b!849897 m!790721))

(declare-fun m!790723 () Bool)

(assert (=> start!73108 m!790723))

(declare-fun m!790725 () Bool)

(assert (=> start!73108 m!790725))

(declare-fun m!790727 () Bool)

(assert (=> mapNonEmpty!25796 m!790727))

(declare-fun m!790729 () Bool)

(assert (=> b!849895 m!790729))

(declare-fun m!790731 () Bool)

(assert (=> b!849895 m!790731))

(declare-fun m!790733 () Bool)

(assert (=> b!849895 m!790733))

(declare-fun m!790735 () Bool)

(assert (=> b!849895 m!790735))

(assert (=> b!849895 m!790733))

(declare-fun m!790737 () Bool)

(assert (=> b!849895 m!790737))

(assert (=> b!849895 m!790709))

(declare-fun m!790739 () Bool)

(assert (=> b!849895 m!790739))

(declare-fun m!790741 () Bool)

(assert (=> b!849895 m!790741))

(assert (=> b!849895 m!790729))

(assert (=> b!849895 m!790713))

(assert (=> b!849895 m!790739))

(assert (=> b!849895 m!790717))

(declare-fun m!790743 () Bool)

(assert (=> b!849895 m!790743))

(declare-fun m!790745 () Bool)

(assert (=> b!849895 m!790745))

(declare-fun m!790747 () Bool)

(assert (=> b!849895 m!790747))

(declare-fun m!790749 () Bool)

(assert (=> b!849892 m!790749))

(check-sat (not start!73108) (not bm!37837) (not b_next!13995) (not bm!37838) (not mapNonEmpty!25796) (not b!849889) tp_is_empty!16131 (not b!849896) (not b_lambda!11557) b_and!23169 (not b!849895) (not b!849897) (not b!849899) (not b!849901) (not b!849887) (not b!849893))
(check-sat b_and!23169 (not b_next!13995))
