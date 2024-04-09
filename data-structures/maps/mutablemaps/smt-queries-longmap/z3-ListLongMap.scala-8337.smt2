; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101514 () Bool)

(assert start!101514)

(declare-fun b_free!26295 () Bool)

(declare-fun b_next!26295 () Bool)

(assert (=> start!101514 (= b_free!26295 (not b_next!26295))))

(declare-fun tp!91919 () Bool)

(declare-fun b_and!43789 () Bool)

(assert (=> start!101514 (= tp!91919 b_and!43789)))

(declare-fun b!1219824 () Bool)

(declare-fun e!692676 () Bool)

(declare-fun e!692672 () Bool)

(assert (=> b!1219824 (= e!692676 (not e!692672))))

(declare-fun res!810339 () Bool)

(assert (=> b!1219824 (=> res!810339 e!692672)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1219824 (= res!810339 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!78750 0))(
  ( (array!78751 (arr!38002 (Array (_ BitVec 32) (_ BitVec 64))) (size!38539 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78750)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1219824 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40342 0))(
  ( (Unit!40343) )
))
(declare-fun lt!554626 () Unit!40342)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78750 (_ BitVec 64) (_ BitVec 32)) Unit!40342)

(assert (=> b!1219824 (= lt!554626 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1219825 () Bool)

(declare-fun e!692671 () Bool)

(declare-fun e!692666 () Bool)

(declare-fun mapRes!48385 () Bool)

(assert (=> b!1219825 (= e!692671 (and e!692666 mapRes!48385))))

(declare-fun condMapEmpty!48385 () Bool)

(declare-datatypes ((V!46459 0))(
  ( (V!46460 (val!15556 Int)) )
))
(declare-datatypes ((ValueCell!14790 0))(
  ( (ValueCellFull!14790 (v!18214 V!46459)) (EmptyCell!14790) )
))
(declare-datatypes ((array!78752 0))(
  ( (array!78753 (arr!38003 (Array (_ BitVec 32) ValueCell!14790)) (size!38540 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78752)

(declare-fun mapDefault!48385 () ValueCell!14790)

(assert (=> b!1219825 (= condMapEmpty!48385 (= (arr!38003 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14790)) mapDefault!48385)))))

(declare-fun b!1219826 () Bool)

(declare-fun e!692674 () Bool)

(assert (=> b!1219826 (= e!692672 e!692674)))

(declare-fun res!810353 () Bool)

(assert (=> b!1219826 (=> res!810353 e!692674)))

(assert (=> b!1219826 (= res!810353 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46459)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!554634 () array!78750)

(declare-datatypes ((tuple2!20156 0))(
  ( (tuple2!20157 (_1!10088 (_ BitVec 64)) (_2!10088 V!46459)) )
))
(declare-datatypes ((List!26975 0))(
  ( (Nil!26972) (Cons!26971 (h!28180 tuple2!20156) (t!40257 List!26975)) )
))
(declare-datatypes ((ListLongMap!18137 0))(
  ( (ListLongMap!18138 (toList!9084 List!26975)) )
))
(declare-fun lt!554627 () ListLongMap!18137)

(declare-fun minValue!944 () V!46459)

(declare-fun lt!554635 () array!78752)

(declare-fun getCurrentListMapNoExtraKeys!5483 (array!78750 array!78752 (_ BitVec 32) (_ BitVec 32) V!46459 V!46459 (_ BitVec 32) Int) ListLongMap!18137)

(assert (=> b!1219826 (= lt!554627 (getCurrentListMapNoExtraKeys!5483 lt!554634 lt!554635 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!554629 () V!46459)

(assert (=> b!1219826 (= lt!554635 (array!78753 (store (arr!38003 _values!996) i!673 (ValueCellFull!14790 lt!554629)) (size!38540 _values!996)))))

(declare-fun dynLambda!3385 (Int (_ BitVec 64)) V!46459)

(assert (=> b!1219826 (= lt!554629 (dynLambda!3385 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!554628 () ListLongMap!18137)

(assert (=> b!1219826 (= lt!554628 (getCurrentListMapNoExtraKeys!5483 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1219827 () Bool)

(declare-fun e!692668 () Bool)

(declare-fun e!692669 () Bool)

(assert (=> b!1219827 (= e!692668 e!692669)))

(declare-fun res!810343 () Bool)

(assert (=> b!1219827 (=> res!810343 e!692669)))

(assert (=> b!1219827 (= res!810343 (not (= (select (arr!38002 _keys!1208) from!1455) k0!934)))))

(declare-fun e!692675 () Bool)

(assert (=> b!1219827 e!692675))

(declare-fun res!810349 () Bool)

(assert (=> b!1219827 (=> (not res!810349) (not e!692675))))

(declare-fun lt!554632 () ListLongMap!18137)

(declare-fun +!4059 (ListLongMap!18137 tuple2!20156) ListLongMap!18137)

(declare-fun get!19423 (ValueCell!14790 V!46459) V!46459)

(assert (=> b!1219827 (= res!810349 (= lt!554627 (+!4059 lt!554632 (tuple2!20157 (select (arr!38002 _keys!1208) from!1455) (get!19423 (select (arr!38003 _values!996) from!1455) lt!554629)))))))

(declare-fun b!1219828 () Bool)

(declare-fun e!692670 () Bool)

(declare-fun tp_is_empty!30999 () Bool)

(assert (=> b!1219828 (= e!692670 tp_is_empty!30999)))

(declare-fun b!1219829 () Bool)

(declare-fun res!810338 () Bool)

(declare-fun e!692667 () Bool)

(assert (=> b!1219829 (=> (not res!810338) (not e!692667))))

(declare-datatypes ((List!26976 0))(
  ( (Nil!26973) (Cons!26972 (h!28181 (_ BitVec 64)) (t!40258 List!26976)) )
))
(declare-fun arrayNoDuplicates!0 (array!78750 (_ BitVec 32) List!26976) Bool)

(assert (=> b!1219829 (= res!810338 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26973))))

(declare-fun b!1219830 () Bool)

(assert (=> b!1219830 (= e!692674 e!692668)))

(declare-fun res!810348 () Bool)

(assert (=> b!1219830 (=> res!810348 e!692668)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1219830 (= res!810348 (not (validKeyInArray!0 (select (arr!38002 _keys!1208) from!1455))))))

(declare-fun lt!554630 () ListLongMap!18137)

(assert (=> b!1219830 (= lt!554630 lt!554632)))

(declare-fun lt!554631 () ListLongMap!18137)

(declare-fun -!1935 (ListLongMap!18137 (_ BitVec 64)) ListLongMap!18137)

(assert (=> b!1219830 (= lt!554632 (-!1935 lt!554631 k0!934))))

(assert (=> b!1219830 (= lt!554630 (getCurrentListMapNoExtraKeys!5483 lt!554634 lt!554635 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1219830 (= lt!554631 (getCurrentListMapNoExtraKeys!5483 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!554633 () Unit!40342)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1137 (array!78750 array!78752 (_ BitVec 32) (_ BitVec 32) V!46459 V!46459 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40342)

(assert (=> b!1219830 (= lt!554633 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1137 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1219831 () Bool)

(declare-fun res!810351 () Bool)

(assert (=> b!1219831 (=> (not res!810351) (not e!692667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1219831 (= res!810351 (validMask!0 mask!1564))))

(declare-fun b!1219832 () Bool)

(assert (=> b!1219832 (= e!692669 true)))

(assert (=> b!1219832 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!554636 () Unit!40342)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78750 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40342)

(assert (=> b!1219832 (= lt!554636 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1219833 () Bool)

(assert (=> b!1219833 (= e!692666 tp_is_empty!30999)))

(declare-fun b!1219834 () Bool)

(assert (=> b!1219834 (= e!692667 e!692676)))

(declare-fun res!810352 () Bool)

(assert (=> b!1219834 (=> (not res!810352) (not e!692676))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78750 (_ BitVec 32)) Bool)

(assert (=> b!1219834 (= res!810352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554634 mask!1564))))

(assert (=> b!1219834 (= lt!554634 (array!78751 (store (arr!38002 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38539 _keys!1208)))))

(declare-fun b!1219835 () Bool)

(declare-fun e!692673 () Bool)

(assert (=> b!1219835 (= e!692673 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun res!810344 () Bool)

(assert (=> start!101514 (=> (not res!810344) (not e!692667))))

(assert (=> start!101514 (= res!810344 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38539 _keys!1208))))))

(assert (=> start!101514 e!692667))

(assert (=> start!101514 tp_is_empty!30999))

(declare-fun array_inv!28834 (array!78750) Bool)

(assert (=> start!101514 (array_inv!28834 _keys!1208)))

(assert (=> start!101514 true))

(assert (=> start!101514 tp!91919))

(declare-fun array_inv!28835 (array!78752) Bool)

(assert (=> start!101514 (and (array_inv!28835 _values!996) e!692671)))

(declare-fun b!1219836 () Bool)

(declare-fun res!810346 () Bool)

(assert (=> b!1219836 (=> (not res!810346) (not e!692667))))

(assert (=> b!1219836 (= res!810346 (= (select (arr!38002 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!48385 () Bool)

(declare-fun tp!91920 () Bool)

(assert (=> mapNonEmpty!48385 (= mapRes!48385 (and tp!91920 e!692670))))

(declare-fun mapKey!48385 () (_ BitVec 32))

(declare-fun mapRest!48385 () (Array (_ BitVec 32) ValueCell!14790))

(declare-fun mapValue!48385 () ValueCell!14790)

(assert (=> mapNonEmpty!48385 (= (arr!38003 _values!996) (store mapRest!48385 mapKey!48385 mapValue!48385))))

(declare-fun b!1219837 () Bool)

(assert (=> b!1219837 (= e!692675 e!692673)))

(declare-fun res!810350 () Bool)

(assert (=> b!1219837 (=> res!810350 e!692673)))

(assert (=> b!1219837 (= res!810350 (not (= (select (arr!38002 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1219838 () Bool)

(declare-fun res!810341 () Bool)

(assert (=> b!1219838 (=> (not res!810341) (not e!692667))))

(assert (=> b!1219838 (= res!810341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!48385 () Bool)

(assert (=> mapIsEmpty!48385 mapRes!48385))

(declare-fun b!1219839 () Bool)

(declare-fun res!810347 () Bool)

(assert (=> b!1219839 (=> (not res!810347) (not e!692667))))

(assert (=> b!1219839 (= res!810347 (validKeyInArray!0 k0!934))))

(declare-fun b!1219840 () Bool)

(declare-fun res!810345 () Bool)

(assert (=> b!1219840 (=> (not res!810345) (not e!692667))))

(assert (=> b!1219840 (= res!810345 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38539 _keys!1208))))))

(declare-fun b!1219841 () Bool)

(declare-fun res!810342 () Bool)

(assert (=> b!1219841 (=> (not res!810342) (not e!692667))))

(assert (=> b!1219841 (= res!810342 (and (= (size!38540 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38539 _keys!1208) (size!38540 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1219842 () Bool)

(declare-fun res!810340 () Bool)

(assert (=> b!1219842 (=> (not res!810340) (not e!692676))))

(assert (=> b!1219842 (= res!810340 (arrayNoDuplicates!0 lt!554634 #b00000000000000000000000000000000 Nil!26973))))

(assert (= (and start!101514 res!810344) b!1219831))

(assert (= (and b!1219831 res!810351) b!1219841))

(assert (= (and b!1219841 res!810342) b!1219838))

(assert (= (and b!1219838 res!810341) b!1219829))

(assert (= (and b!1219829 res!810338) b!1219840))

(assert (= (and b!1219840 res!810345) b!1219839))

(assert (= (and b!1219839 res!810347) b!1219836))

(assert (= (and b!1219836 res!810346) b!1219834))

(assert (= (and b!1219834 res!810352) b!1219842))

(assert (= (and b!1219842 res!810340) b!1219824))

(assert (= (and b!1219824 (not res!810339)) b!1219826))

(assert (= (and b!1219826 (not res!810353)) b!1219830))

(assert (= (and b!1219830 (not res!810348)) b!1219827))

(assert (= (and b!1219827 res!810349) b!1219837))

(assert (= (and b!1219837 (not res!810350)) b!1219835))

(assert (= (and b!1219827 (not res!810343)) b!1219832))

(assert (= (and b!1219825 condMapEmpty!48385) mapIsEmpty!48385))

(assert (= (and b!1219825 (not condMapEmpty!48385)) mapNonEmpty!48385))

(get-info :version)

(assert (= (and mapNonEmpty!48385 ((_ is ValueCellFull!14790) mapValue!48385)) b!1219828))

(assert (= (and b!1219825 ((_ is ValueCellFull!14790) mapDefault!48385)) b!1219833))

(assert (= start!101514 b!1219825))

(declare-fun b_lambda!22133 () Bool)

(assert (=> (not b_lambda!22133) (not b!1219826)))

(declare-fun t!40256 () Bool)

(declare-fun tb!11103 () Bool)

(assert (=> (and start!101514 (= defaultEntry!1004 defaultEntry!1004) t!40256) tb!11103))

(declare-fun result!22803 () Bool)

(assert (=> tb!11103 (= result!22803 tp_is_empty!30999)))

(assert (=> b!1219826 t!40256))

(declare-fun b_and!43791 () Bool)

(assert (= b_and!43789 (and (=> t!40256 result!22803) b_and!43791)))

(declare-fun m!1124639 () Bool)

(assert (=> b!1219839 m!1124639))

(declare-fun m!1124641 () Bool)

(assert (=> b!1219827 m!1124641))

(declare-fun m!1124643 () Bool)

(assert (=> b!1219827 m!1124643))

(assert (=> b!1219827 m!1124643))

(declare-fun m!1124645 () Bool)

(assert (=> b!1219827 m!1124645))

(declare-fun m!1124647 () Bool)

(assert (=> b!1219827 m!1124647))

(declare-fun m!1124649 () Bool)

(assert (=> b!1219838 m!1124649))

(declare-fun m!1124651 () Bool)

(assert (=> b!1219826 m!1124651))

(declare-fun m!1124653 () Bool)

(assert (=> b!1219826 m!1124653))

(declare-fun m!1124655 () Bool)

(assert (=> b!1219826 m!1124655))

(declare-fun m!1124657 () Bool)

(assert (=> b!1219826 m!1124657))

(declare-fun m!1124659 () Bool)

(assert (=> b!1219835 m!1124659))

(declare-fun m!1124661 () Bool)

(assert (=> b!1219829 m!1124661))

(declare-fun m!1124663 () Bool)

(assert (=> b!1219836 m!1124663))

(declare-fun m!1124665 () Bool)

(assert (=> b!1219824 m!1124665))

(declare-fun m!1124667 () Bool)

(assert (=> b!1219824 m!1124667))

(assert (=> b!1219837 m!1124641))

(declare-fun m!1124669 () Bool)

(assert (=> b!1219832 m!1124669))

(declare-fun m!1124671 () Bool)

(assert (=> b!1219832 m!1124671))

(declare-fun m!1124673 () Bool)

(assert (=> b!1219834 m!1124673))

(declare-fun m!1124675 () Bool)

(assert (=> b!1219834 m!1124675))

(declare-fun m!1124677 () Bool)

(assert (=> b!1219842 m!1124677))

(declare-fun m!1124679 () Bool)

(assert (=> start!101514 m!1124679))

(declare-fun m!1124681 () Bool)

(assert (=> start!101514 m!1124681))

(declare-fun m!1124683 () Bool)

(assert (=> mapNonEmpty!48385 m!1124683))

(declare-fun m!1124685 () Bool)

(assert (=> b!1219830 m!1124685))

(declare-fun m!1124687 () Bool)

(assert (=> b!1219830 m!1124687))

(assert (=> b!1219830 m!1124641))

(declare-fun m!1124689 () Bool)

(assert (=> b!1219830 m!1124689))

(assert (=> b!1219830 m!1124641))

(declare-fun m!1124691 () Bool)

(assert (=> b!1219830 m!1124691))

(declare-fun m!1124693 () Bool)

(assert (=> b!1219830 m!1124693))

(declare-fun m!1124695 () Bool)

(assert (=> b!1219831 m!1124695))

(check-sat (not b_next!26295) tp_is_empty!30999 (not start!101514) b_and!43791 (not b!1219834) (not b!1219826) (not b!1219835) (not b!1219842) (not mapNonEmpty!48385) (not b!1219838) (not b_lambda!22133) (not b!1219839) (not b!1219829) (not b!1219831) (not b!1219827) (not b!1219830) (not b!1219824) (not b!1219832))
(check-sat b_and!43791 (not b_next!26295))
