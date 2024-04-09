; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99576 () Bool)

(assert start!99576)

(declare-fun b_free!25119 () Bool)

(declare-fun b_next!25119 () Bool)

(assert (=> start!99576 (= b_free!25119 (not b_next!25119))))

(declare-fun tp!88072 () Bool)

(declare-fun b_and!41119 () Bool)

(assert (=> start!99576 (= tp!88072 b_and!41119)))

(declare-fun b!1177646 () Bool)

(declare-fun res!782361 () Bool)

(declare-fun e!669506 () Bool)

(assert (=> b!1177646 (=> (not res!782361) (not e!669506))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76072 0))(
  ( (array!76073 (arr!36682 (Array (_ BitVec 32) (_ BitVec 64))) (size!37219 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76072)

(assert (=> b!1177646 (= res!782361 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37219 _keys!1208))))))

(declare-fun b!1177647 () Bool)

(declare-fun e!669503 () Bool)

(declare-fun e!669504 () Bool)

(assert (=> b!1177647 (= e!669503 e!669504)))

(declare-fun res!782370 () Bool)

(assert (=> b!1177647 (=> res!782370 e!669504)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1177647 (= res!782370 (not (= (select (arr!36682 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1177648 () Bool)

(declare-fun e!669510 () Bool)

(declare-fun e!669508 () Bool)

(declare-fun mapRes!46301 () Bool)

(assert (=> b!1177648 (= e!669510 (and e!669508 mapRes!46301))))

(declare-fun condMapEmpty!46301 () Bool)

(declare-datatypes ((V!44659 0))(
  ( (V!44660 (val!14881 Int)) )
))
(declare-datatypes ((ValueCell!14115 0))(
  ( (ValueCellFull!14115 (v!17520 V!44659)) (EmptyCell!14115) )
))
(declare-datatypes ((array!76074 0))(
  ( (array!76075 (arr!36683 (Array (_ BitVec 32) ValueCell!14115)) (size!37220 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76074)

(declare-fun mapDefault!46301 () ValueCell!14115)

(assert (=> b!1177648 (= condMapEmpty!46301 (= (arr!36683 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14115)) mapDefault!46301)))))

(declare-fun b!1177649 () Bool)

(declare-fun res!782359 () Bool)

(assert (=> b!1177649 (=> (not res!782359) (not e!669506))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1177649 (= res!782359 (and (= (size!37220 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37219 _keys!1208) (size!37220 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!782371 () Bool)

(assert (=> start!99576 (=> (not res!782371) (not e!669506))))

(assert (=> start!99576 (= res!782371 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37219 _keys!1208))))))

(assert (=> start!99576 e!669506))

(declare-fun tp_is_empty!29649 () Bool)

(assert (=> start!99576 tp_is_empty!29649))

(declare-fun array_inv!27902 (array!76072) Bool)

(assert (=> start!99576 (array_inv!27902 _keys!1208)))

(assert (=> start!99576 true))

(assert (=> start!99576 tp!88072))

(declare-fun array_inv!27903 (array!76074) Bool)

(assert (=> start!99576 (and (array_inv!27903 _values!996) e!669510)))

(declare-fun b!1177650 () Bool)

(declare-fun res!782367 () Bool)

(assert (=> b!1177650 (=> (not res!782367) (not e!669506))))

(assert (=> b!1177650 (= res!782367 (= (select (arr!36682 _keys!1208) i!673) k0!934))))

(declare-fun b!1177651 () Bool)

(declare-fun e!669501 () Bool)

(assert (=> b!1177651 (= e!669501 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!37219 _keys!1208))))))

(declare-fun e!669507 () Bool)

(assert (=> b!1177651 e!669507))

(declare-fun res!782366 () Bool)

(assert (=> b!1177651 (=> (not res!782366) (not e!669507))))

(assert (=> b!1177651 (= res!782366 (not (= (select (arr!36682 _keys!1208) from!1455) k0!934)))))

(declare-datatypes ((Unit!38830 0))(
  ( (Unit!38831) )
))
(declare-fun lt!531799 () Unit!38830)

(declare-fun e!669509 () Unit!38830)

(assert (=> b!1177651 (= lt!531799 e!669509)))

(declare-fun c!116750 () Bool)

(assert (=> b!1177651 (= c!116750 (= (select (arr!36682 _keys!1208) from!1455) k0!934))))

(assert (=> b!1177651 e!669503))

(declare-fun res!782362 () Bool)

(assert (=> b!1177651 (=> (not res!782362) (not e!669503))))

(declare-datatypes ((tuple2!19158 0))(
  ( (tuple2!19159 (_1!9589 (_ BitVec 64)) (_2!9589 V!44659)) )
))
(declare-datatypes ((List!25924 0))(
  ( (Nil!25921) (Cons!25920 (h!27129 tuple2!19158) (t!38042 List!25924)) )
))
(declare-datatypes ((ListLongMap!17139 0))(
  ( (ListLongMap!17140 (toList!8585 List!25924)) )
))
(declare-fun lt!531798 () ListLongMap!17139)

(declare-fun lt!531803 () ListLongMap!17139)

(declare-fun lt!531802 () tuple2!19158)

(declare-fun +!3808 (ListLongMap!17139 tuple2!19158) ListLongMap!17139)

(assert (=> b!1177651 (= res!782362 (= lt!531803 (+!3808 lt!531798 lt!531802)))))

(declare-fun lt!531790 () V!44659)

(declare-fun get!18779 (ValueCell!14115 V!44659) V!44659)

(assert (=> b!1177651 (= lt!531802 (tuple2!19159 (select (arr!36682 _keys!1208) from!1455) (get!18779 (select (arr!36683 _values!996) from!1455) lt!531790)))))

(declare-fun b!1177652 () Bool)

(declare-fun e!669499 () Bool)

(declare-fun e!669505 () Bool)

(assert (=> b!1177652 (= e!669499 (not e!669505))))

(declare-fun res!782373 () Bool)

(assert (=> b!1177652 (=> res!782373 e!669505)))

(assert (=> b!1177652 (= res!782373 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1177652 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!531797 () Unit!38830)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76072 (_ BitVec 64) (_ BitVec 32)) Unit!38830)

(assert (=> b!1177652 (= lt!531797 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1177653 () Bool)

(declare-fun Unit!38832 () Unit!38830)

(assert (=> b!1177653 (= e!669509 Unit!38832)))

(declare-fun b!1177654 () Bool)

(assert (=> b!1177654 (= e!669504 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1177655 () Bool)

(declare-fun res!782372 () Bool)

(assert (=> b!1177655 (=> (not res!782372) (not e!669506))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1177655 (= res!782372 (validKeyInArray!0 k0!934))))

(declare-fun b!1177656 () Bool)

(declare-fun e!669500 () Bool)

(assert (=> b!1177656 (= e!669500 tp_is_empty!29649)))

(declare-fun b!1177657 () Bool)

(declare-fun res!782368 () Bool)

(assert (=> b!1177657 (=> (not res!782368) (not e!669506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76072 (_ BitVec 32)) Bool)

(assert (=> b!1177657 (= res!782368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1177658 () Bool)

(declare-fun e!669502 () Bool)

(assert (=> b!1177658 (= e!669502 e!669501)))

(declare-fun res!782360 () Bool)

(assert (=> b!1177658 (=> res!782360 e!669501)))

(assert (=> b!1177658 (= res!782360 (not (validKeyInArray!0 (select (arr!36682 _keys!1208) from!1455))))))

(declare-fun lt!531801 () ListLongMap!17139)

(assert (=> b!1177658 (= lt!531801 lt!531798)))

(declare-fun lt!531794 () ListLongMap!17139)

(declare-fun -!1586 (ListLongMap!17139 (_ BitVec 64)) ListLongMap!17139)

(assert (=> b!1177658 (= lt!531798 (-!1586 lt!531794 k0!934))))

(declare-fun zeroValue!944 () V!44659)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!531791 () array!76072)

(declare-fun minValue!944 () V!44659)

(declare-fun lt!531804 () array!76074)

(declare-fun getCurrentListMapNoExtraKeys!5016 (array!76072 array!76074 (_ BitVec 32) (_ BitVec 32) V!44659 V!44659 (_ BitVec 32) Int) ListLongMap!17139)

(assert (=> b!1177658 (= lt!531801 (getCurrentListMapNoExtraKeys!5016 lt!531791 lt!531804 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1177658 (= lt!531794 (getCurrentListMapNoExtraKeys!5016 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!531792 () Unit!38830)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!810 (array!76072 array!76074 (_ BitVec 32) (_ BitVec 32) V!44659 V!44659 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38830)

(assert (=> b!1177658 (= lt!531792 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!810 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1177659 () Bool)

(declare-fun res!782374 () Bool)

(assert (=> b!1177659 (=> (not res!782374) (not e!669506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1177659 (= res!782374 (validMask!0 mask!1564))))

(declare-fun b!1177660 () Bool)

(declare-fun res!782363 () Bool)

(assert (=> b!1177660 (=> (not res!782363) (not e!669499))))

(declare-datatypes ((List!25925 0))(
  ( (Nil!25922) (Cons!25921 (h!27130 (_ BitVec 64)) (t!38043 List!25925)) )
))
(declare-fun arrayNoDuplicates!0 (array!76072 (_ BitVec 32) List!25925) Bool)

(assert (=> b!1177660 (= res!782363 (arrayNoDuplicates!0 lt!531791 #b00000000000000000000000000000000 Nil!25922))))

(declare-fun b!1177661 () Bool)

(declare-fun res!782369 () Bool)

(assert (=> b!1177661 (=> (not res!782369) (not e!669506))))

(assert (=> b!1177661 (= res!782369 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25922))))

(declare-fun b!1177662 () Bool)

(declare-fun Unit!38833 () Unit!38830)

(assert (=> b!1177662 (= e!669509 Unit!38833)))

(declare-fun lt!531795 () Unit!38830)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76072 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38830)

(assert (=> b!1177662 (= lt!531795 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1177662 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531800 () Unit!38830)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76072 (_ BitVec 32) (_ BitVec 32)) Unit!38830)

(assert (=> b!1177662 (= lt!531800 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1177662 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25922)))

(declare-fun lt!531796 () Unit!38830)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76072 (_ BitVec 64) (_ BitVec 32) List!25925) Unit!38830)

(assert (=> b!1177662 (= lt!531796 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25922))))

(assert (=> b!1177662 false))

(declare-fun mapNonEmpty!46301 () Bool)

(declare-fun tp!88071 () Bool)

(assert (=> mapNonEmpty!46301 (= mapRes!46301 (and tp!88071 e!669500))))

(declare-fun mapRest!46301 () (Array (_ BitVec 32) ValueCell!14115))

(declare-fun mapKey!46301 () (_ BitVec 32))

(declare-fun mapValue!46301 () ValueCell!14115)

(assert (=> mapNonEmpty!46301 (= (arr!36683 _values!996) (store mapRest!46301 mapKey!46301 mapValue!46301))))

(declare-fun b!1177663 () Bool)

(assert (=> b!1177663 (= e!669505 e!669502)))

(declare-fun res!782365 () Bool)

(assert (=> b!1177663 (=> res!782365 e!669502)))

(assert (=> b!1177663 (= res!782365 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1177663 (= lt!531803 (getCurrentListMapNoExtraKeys!5016 lt!531791 lt!531804 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1177663 (= lt!531804 (array!76075 (store (arr!36683 _values!996) i!673 (ValueCellFull!14115 lt!531790)) (size!37220 _values!996)))))

(declare-fun dynLambda!2991 (Int (_ BitVec 64)) V!44659)

(assert (=> b!1177663 (= lt!531790 (dynLambda!2991 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!531793 () ListLongMap!17139)

(assert (=> b!1177663 (= lt!531793 (getCurrentListMapNoExtraKeys!5016 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!46301 () Bool)

(assert (=> mapIsEmpty!46301 mapRes!46301))

(declare-fun b!1177664 () Bool)

(assert (=> b!1177664 (= e!669507 (= lt!531793 (+!3808 lt!531794 lt!531802)))))

(declare-fun b!1177665 () Bool)

(assert (=> b!1177665 (= e!669506 e!669499)))

(declare-fun res!782364 () Bool)

(assert (=> b!1177665 (=> (not res!782364) (not e!669499))))

(assert (=> b!1177665 (= res!782364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!531791 mask!1564))))

(assert (=> b!1177665 (= lt!531791 (array!76073 (store (arr!36682 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37219 _keys!1208)))))

(declare-fun b!1177666 () Bool)

(assert (=> b!1177666 (= e!669508 tp_is_empty!29649)))

(assert (= (and start!99576 res!782371) b!1177659))

(assert (= (and b!1177659 res!782374) b!1177649))

(assert (= (and b!1177649 res!782359) b!1177657))

(assert (= (and b!1177657 res!782368) b!1177661))

(assert (= (and b!1177661 res!782369) b!1177646))

(assert (= (and b!1177646 res!782361) b!1177655))

(assert (= (and b!1177655 res!782372) b!1177650))

(assert (= (and b!1177650 res!782367) b!1177665))

(assert (= (and b!1177665 res!782364) b!1177660))

(assert (= (and b!1177660 res!782363) b!1177652))

(assert (= (and b!1177652 (not res!782373)) b!1177663))

(assert (= (and b!1177663 (not res!782365)) b!1177658))

(assert (= (and b!1177658 (not res!782360)) b!1177651))

(assert (= (and b!1177651 res!782362) b!1177647))

(assert (= (and b!1177647 (not res!782370)) b!1177654))

(assert (= (and b!1177651 c!116750) b!1177662))

(assert (= (and b!1177651 (not c!116750)) b!1177653))

(assert (= (and b!1177651 res!782366) b!1177664))

(assert (= (and b!1177648 condMapEmpty!46301) mapIsEmpty!46301))

(assert (= (and b!1177648 (not condMapEmpty!46301)) mapNonEmpty!46301))

(get-info :version)

(assert (= (and mapNonEmpty!46301 ((_ is ValueCellFull!14115) mapValue!46301)) b!1177656))

(assert (= (and b!1177648 ((_ is ValueCellFull!14115) mapDefault!46301)) b!1177666))

(assert (= start!99576 b!1177648))

(declare-fun b_lambda!20281 () Bool)

(assert (=> (not b_lambda!20281) (not b!1177663)))

(declare-fun t!38041 () Bool)

(declare-fun tb!9939 () Bool)

(assert (=> (and start!99576 (= defaultEntry!1004 defaultEntry!1004) t!38041) tb!9939))

(declare-fun result!20437 () Bool)

(assert (=> tb!9939 (= result!20437 tp_is_empty!29649)))

(assert (=> b!1177663 t!38041))

(declare-fun b_and!41121 () Bool)

(assert (= b_and!41119 (and (=> t!38041 result!20437) b_and!41121)))

(declare-fun m!1085651 () Bool)

(assert (=> b!1177647 m!1085651))

(declare-fun m!1085653 () Bool)

(assert (=> mapNonEmpty!46301 m!1085653))

(declare-fun m!1085655 () Bool)

(assert (=> b!1177654 m!1085655))

(declare-fun m!1085657 () Bool)

(assert (=> b!1177660 m!1085657))

(declare-fun m!1085659 () Bool)

(assert (=> b!1177663 m!1085659))

(declare-fun m!1085661 () Bool)

(assert (=> b!1177663 m!1085661))

(declare-fun m!1085663 () Bool)

(assert (=> b!1177663 m!1085663))

(declare-fun m!1085665 () Bool)

(assert (=> b!1177663 m!1085665))

(declare-fun m!1085667 () Bool)

(assert (=> b!1177665 m!1085667))

(declare-fun m!1085669 () Bool)

(assert (=> b!1177665 m!1085669))

(declare-fun m!1085671 () Bool)

(assert (=> b!1177650 m!1085671))

(declare-fun m!1085673 () Bool)

(assert (=> b!1177662 m!1085673))

(declare-fun m!1085675 () Bool)

(assert (=> b!1177662 m!1085675))

(declare-fun m!1085677 () Bool)

(assert (=> b!1177662 m!1085677))

(declare-fun m!1085679 () Bool)

(assert (=> b!1177662 m!1085679))

(declare-fun m!1085681 () Bool)

(assert (=> b!1177662 m!1085681))

(declare-fun m!1085683 () Bool)

(assert (=> b!1177657 m!1085683))

(declare-fun m!1085685 () Bool)

(assert (=> b!1177664 m!1085685))

(declare-fun m!1085687 () Bool)

(assert (=> b!1177658 m!1085687))

(declare-fun m!1085689 () Bool)

(assert (=> b!1177658 m!1085689))

(declare-fun m!1085691 () Bool)

(assert (=> b!1177658 m!1085691))

(assert (=> b!1177658 m!1085651))

(declare-fun m!1085693 () Bool)

(assert (=> b!1177658 m!1085693))

(assert (=> b!1177658 m!1085651))

(declare-fun m!1085695 () Bool)

(assert (=> b!1177658 m!1085695))

(declare-fun m!1085697 () Bool)

(assert (=> b!1177659 m!1085697))

(declare-fun m!1085699 () Bool)

(assert (=> b!1177655 m!1085699))

(declare-fun m!1085701 () Bool)

(assert (=> b!1177661 m!1085701))

(assert (=> b!1177651 m!1085651))

(declare-fun m!1085703 () Bool)

(assert (=> b!1177651 m!1085703))

(declare-fun m!1085705 () Bool)

(assert (=> b!1177651 m!1085705))

(assert (=> b!1177651 m!1085705))

(declare-fun m!1085707 () Bool)

(assert (=> b!1177651 m!1085707))

(declare-fun m!1085709 () Bool)

(assert (=> b!1177652 m!1085709))

(declare-fun m!1085711 () Bool)

(assert (=> b!1177652 m!1085711))

(declare-fun m!1085713 () Bool)

(assert (=> start!99576 m!1085713))

(declare-fun m!1085715 () Bool)

(assert (=> start!99576 m!1085715))

(check-sat (not b!1177662) (not b!1177655) (not b!1177665) tp_is_empty!29649 (not b_next!25119) (not b!1177652) (not b!1177658) b_and!41121 (not b!1177657) (not b_lambda!20281) (not b!1177664) (not start!99576) (not mapNonEmpty!46301) (not b!1177659) (not b!1177661) (not b!1177651) (not b!1177660) (not b!1177663) (not b!1177654))
(check-sat b_and!41121 (not b_next!25119))
