; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73060 () Bool)

(assert start!73060)

(declare-fun b_free!13947 () Bool)

(declare-fun b_next!13947 () Bool)

(assert (=> start!73060 (= b_free!13947 (not b_next!13947))))

(declare-fun tp!49345 () Bool)

(declare-fun b_and!23071 () Bool)

(assert (=> start!73060 (= tp!49345 b_and!23071)))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!26491 0))(
  ( (V!26492 (val!8089 Int)) )
))
(declare-datatypes ((ValueCell!7602 0))(
  ( (ValueCellFull!7602 (v!10510 V!26491)) (EmptyCell!7602) )
))
(declare-datatypes ((array!48358 0))(
  ( (array!48359 (arr!23206 (Array (_ BitVec 32) ValueCell!7602)) (size!23647 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48358)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26491)

(declare-fun zeroValue!654 () V!26491)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10596 0))(
  ( (tuple2!10597 (_1!5308 (_ BitVec 64)) (_2!5308 V!26491)) )
))
(declare-datatypes ((List!16500 0))(
  ( (Nil!16497) (Cons!16496 (h!17627 tuple2!10596) (t!22901 List!16500)) )
))
(declare-datatypes ((ListLongMap!9379 0))(
  ( (ListLongMap!9380 (toList!4705 List!16500)) )
))
(declare-fun call!37697 () ListLongMap!9379)

(declare-datatypes ((array!48360 0))(
  ( (array!48361 (arr!23207 (Array (_ BitVec 32) (_ BitVec 64))) (size!23648 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48360)

(declare-fun bm!37693 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2693 (array!48360 array!48358 (_ BitVec 32) (_ BitVec 32) V!26491 V!26491 (_ BitVec 32) Int) ListLongMap!9379)

(assert (=> bm!37693 (= call!37697 (getCurrentListMapNoExtraKeys!2693 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848759 () Bool)

(declare-fun res!576743 () Bool)

(declare-fun e!473575 () Bool)

(assert (=> b!848759 (=> (not res!576743) (not e!473575))))

(assert (=> b!848759 (= res!576743 (and (= (size!23647 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23648 _keys!868) (size!23647 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!576745 () Bool)

(assert (=> start!73060 (=> (not res!576745) (not e!473575))))

(assert (=> start!73060 (= res!576745 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23648 _keys!868))))))

(assert (=> start!73060 e!473575))

(declare-fun tp_is_empty!16083 () Bool)

(assert (=> start!73060 tp_is_empty!16083))

(assert (=> start!73060 true))

(assert (=> start!73060 tp!49345))

(declare-fun array_inv!18406 (array!48360) Bool)

(assert (=> start!73060 (array_inv!18406 _keys!868)))

(declare-fun e!473580 () Bool)

(declare-fun array_inv!18407 (array!48358) Bool)

(assert (=> start!73060 (and (array_inv!18407 _values!688) e!473580)))

(declare-fun b!848760 () Bool)

(declare-fun e!473577 () Bool)

(assert (=> b!848760 (= e!473577 tp_is_empty!16083)))

(declare-fun b!848761 () Bool)

(declare-fun e!473576 () Bool)

(assert (=> b!848761 (= e!473576 true)))

(declare-fun lt!382084 () array!48358)

(declare-fun lt!382086 () ListLongMap!9379)

(declare-fun +!2052 (ListLongMap!9379 tuple2!10596) ListLongMap!9379)

(declare-fun get!12220 (ValueCell!7602 V!26491) V!26491)

(declare-fun dynLambda!988 (Int (_ BitVec 64)) V!26491)

(assert (=> b!848761 (= lt!382086 (+!2052 (getCurrentListMapNoExtraKeys!2693 _keys!868 lt!382084 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10597 (select (arr!23207 _keys!868) from!1053) (get!12220 (select (arr!23206 lt!382084) from!1053) (dynLambda!988 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!848762 () Bool)

(declare-fun e!473573 () Bool)

(assert (=> b!848762 (= e!473575 e!473573)))

(declare-fun res!576744 () Bool)

(assert (=> b!848762 (=> (not res!576744) (not e!473573))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!848762 (= res!576744 (= from!1053 i!612))))

(assert (=> b!848762 (= lt!382086 (getCurrentListMapNoExtraKeys!2693 _keys!868 lt!382084 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26491)

(assert (=> b!848762 (= lt!382084 (array!48359 (store (arr!23206 _values!688) i!612 (ValueCellFull!7602 v!557)) (size!23647 _values!688)))))

(declare-fun lt!382085 () ListLongMap!9379)

(assert (=> b!848762 (= lt!382085 (getCurrentListMapNoExtraKeys!2693 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun e!473579 () Bool)

(declare-fun call!37696 () ListLongMap!9379)

(declare-fun b!848763 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!848763 (= e!473579 (= call!37696 (+!2052 call!37697 (tuple2!10597 k0!854 v!557))))))

(declare-fun bm!37694 () Bool)

(assert (=> bm!37694 (= call!37696 (getCurrentListMapNoExtraKeys!2693 _keys!868 lt!382084 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848764 () Bool)

(declare-fun res!576748 () Bool)

(assert (=> b!848764 (=> (not res!576748) (not e!473575))))

(declare-datatypes ((List!16501 0))(
  ( (Nil!16498) (Cons!16497 (h!17628 (_ BitVec 64)) (t!22902 List!16501)) )
))
(declare-fun arrayNoDuplicates!0 (array!48360 (_ BitVec 32) List!16501) Bool)

(assert (=> b!848764 (= res!576748 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16498))))

(declare-fun b!848765 () Bool)

(declare-fun res!576750 () Bool)

(assert (=> b!848765 (=> (not res!576750) (not e!473575))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!848765 (= res!576750 (validKeyInArray!0 k0!854))))

(declare-fun b!848766 () Bool)

(declare-fun e!473574 () Bool)

(assert (=> b!848766 (= e!473574 tp_is_empty!16083)))

(declare-fun mapNonEmpty!25724 () Bool)

(declare-fun mapRes!25724 () Bool)

(declare-fun tp!49346 () Bool)

(assert (=> mapNonEmpty!25724 (= mapRes!25724 (and tp!49346 e!473577))))

(declare-fun mapRest!25724 () (Array (_ BitVec 32) ValueCell!7602))

(declare-fun mapKey!25724 () (_ BitVec 32))

(declare-fun mapValue!25724 () ValueCell!7602)

(assert (=> mapNonEmpty!25724 (= (arr!23206 _values!688) (store mapRest!25724 mapKey!25724 mapValue!25724))))

(declare-fun b!848767 () Bool)

(assert (=> b!848767 (= e!473579 (= call!37696 call!37697))))

(declare-fun b!848768 () Bool)

(assert (=> b!848768 (= e!473573 (not e!473576))))

(declare-fun res!576747 () Bool)

(assert (=> b!848768 (=> res!576747 e!473576)))

(assert (=> b!848768 (= res!576747 (not (validKeyInArray!0 (select (arr!23207 _keys!868) from!1053))))))

(assert (=> b!848768 e!473579))

(declare-fun c!91509 () Bool)

(assert (=> b!848768 (= c!91509 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28964 0))(
  ( (Unit!28965) )
))
(declare-fun lt!382083 () Unit!28964)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!331 (array!48360 array!48358 (_ BitVec 32) (_ BitVec 32) V!26491 V!26491 (_ BitVec 32) (_ BitVec 64) V!26491 (_ BitVec 32) Int) Unit!28964)

(assert (=> b!848768 (= lt!382083 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!331 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!25724 () Bool)

(assert (=> mapIsEmpty!25724 mapRes!25724))

(declare-fun b!848769 () Bool)

(declare-fun res!576742 () Bool)

(assert (=> b!848769 (=> (not res!576742) (not e!473575))))

(assert (=> b!848769 (= res!576742 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23648 _keys!868))))))

(declare-fun b!848770 () Bool)

(assert (=> b!848770 (= e!473580 (and e!473574 mapRes!25724))))

(declare-fun condMapEmpty!25724 () Bool)

(declare-fun mapDefault!25724 () ValueCell!7602)

(assert (=> b!848770 (= condMapEmpty!25724 (= (arr!23206 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7602)) mapDefault!25724)))))

(declare-fun b!848771 () Bool)

(declare-fun res!576746 () Bool)

(assert (=> b!848771 (=> (not res!576746) (not e!473575))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48360 (_ BitVec 32)) Bool)

(assert (=> b!848771 (= res!576746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!848772 () Bool)

(declare-fun res!576749 () Bool)

(assert (=> b!848772 (=> (not res!576749) (not e!473575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!848772 (= res!576749 (validMask!0 mask!1196))))

(declare-fun b!848773 () Bool)

(declare-fun res!576741 () Bool)

(assert (=> b!848773 (=> (not res!576741) (not e!473575))))

(assert (=> b!848773 (= res!576741 (and (= (select (arr!23207 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(assert (= (and start!73060 res!576745) b!848772))

(assert (= (and b!848772 res!576749) b!848759))

(assert (= (and b!848759 res!576743) b!848771))

(assert (= (and b!848771 res!576746) b!848764))

(assert (= (and b!848764 res!576748) b!848769))

(assert (= (and b!848769 res!576742) b!848765))

(assert (= (and b!848765 res!576750) b!848773))

(assert (= (and b!848773 res!576741) b!848762))

(assert (= (and b!848762 res!576744) b!848768))

(assert (= (and b!848768 c!91509) b!848763))

(assert (= (and b!848768 (not c!91509)) b!848767))

(assert (= (or b!848763 b!848767) bm!37694))

(assert (= (or b!848763 b!848767) bm!37693))

(assert (= (and b!848768 (not res!576747)) b!848761))

(assert (= (and b!848770 condMapEmpty!25724) mapIsEmpty!25724))

(assert (= (and b!848770 (not condMapEmpty!25724)) mapNonEmpty!25724))

(get-info :version)

(assert (= (and mapNonEmpty!25724 ((_ is ValueCellFull!7602) mapValue!25724)) b!848760))

(assert (= (and b!848770 ((_ is ValueCellFull!7602) mapDefault!25724)) b!848766))

(assert (= start!73060 b!848770))

(declare-fun b_lambda!11509 () Bool)

(assert (=> (not b_lambda!11509) (not b!848761)))

(declare-fun t!22900 () Bool)

(declare-fun tb!4257 () Bool)

(assert (=> (and start!73060 (= defaultEntry!696 defaultEntry!696) t!22900) tb!4257))

(declare-fun result!8117 () Bool)

(assert (=> tb!4257 (= result!8117 tp_is_empty!16083)))

(assert (=> b!848761 t!22900))

(declare-fun b_and!23073 () Bool)

(assert (= b_and!23071 (and (=> t!22900 result!8117) b_and!23073)))

(declare-fun m!789605 () Bool)

(assert (=> bm!37694 m!789605))

(declare-fun m!789607 () Bool)

(assert (=> b!848768 m!789607))

(assert (=> b!848768 m!789607))

(declare-fun m!789609 () Bool)

(assert (=> b!848768 m!789609))

(declare-fun m!789611 () Bool)

(assert (=> b!848768 m!789611))

(assert (=> b!848761 m!789605))

(assert (=> b!848761 m!789605))

(declare-fun m!789613 () Bool)

(assert (=> b!848761 m!789613))

(declare-fun m!789615 () Bool)

(assert (=> b!848761 m!789615))

(assert (=> b!848761 m!789607))

(declare-fun m!789617 () Bool)

(assert (=> b!848761 m!789617))

(assert (=> b!848761 m!789615))

(assert (=> b!848761 m!789617))

(declare-fun m!789619 () Bool)

(assert (=> b!848761 m!789619))

(declare-fun m!789621 () Bool)

(assert (=> b!848773 m!789621))

(declare-fun m!789623 () Bool)

(assert (=> b!848764 m!789623))

(declare-fun m!789625 () Bool)

(assert (=> start!73060 m!789625))

(declare-fun m!789627 () Bool)

(assert (=> start!73060 m!789627))

(declare-fun m!789629 () Bool)

(assert (=> b!848763 m!789629))

(declare-fun m!789631 () Bool)

(assert (=> b!848765 m!789631))

(declare-fun m!789633 () Bool)

(assert (=> bm!37693 m!789633))

(declare-fun m!789635 () Bool)

(assert (=> mapNonEmpty!25724 m!789635))

(declare-fun m!789637 () Bool)

(assert (=> b!848771 m!789637))

(declare-fun m!789639 () Bool)

(assert (=> b!848772 m!789639))

(declare-fun m!789641 () Bool)

(assert (=> b!848762 m!789641))

(declare-fun m!789643 () Bool)

(assert (=> b!848762 m!789643))

(declare-fun m!789645 () Bool)

(assert (=> b!848762 m!789645))

(check-sat (not b!848764) (not b_lambda!11509) (not b!848761) tp_is_empty!16083 (not b!848768) (not mapNonEmpty!25724) (not b!848763) (not start!73060) b_and!23073 (not bm!37694) (not b_next!13947) (not b!848765) (not b!848772) (not b!848771) (not bm!37693) (not b!848762))
(check-sat b_and!23073 (not b_next!13947))
