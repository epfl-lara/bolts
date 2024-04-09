; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100856 () Bool)

(assert start!100856)

(declare-fun b_free!25959 () Bool)

(declare-fun b_next!25959 () Bool)

(assert (=> start!100856 (= b_free!25959 (not b_next!25959))))

(declare-fun tp!90884 () Bool)

(declare-fun b_and!42933 () Bool)

(assert (=> start!100856 (= tp!90884 b_and!42933)))

(declare-fun b!1206915 () Bool)

(declare-datatypes ((Unit!39932 0))(
  ( (Unit!39933) )
))
(declare-fun e!685435 () Unit!39932)

(declare-fun e!685448 () Unit!39932)

(assert (=> b!1206915 (= e!685435 e!685448)))

(declare-fun c!118513 () Bool)

(declare-fun lt!547551 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1206915 (= c!118513 (and (not lt!547551) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((array!78084 0))(
  ( (array!78085 (arr!37678 (Array (_ BitVec 32) (_ BitVec 64))) (size!38215 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78084)

(declare-fun e!685440 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1206916 () Bool)

(declare-fun arrayContainsKey!0 (array!78084 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1206916 (= e!685440 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun e!685445 () Bool)

(declare-fun b!1206917 () Bool)

(assert (=> b!1206917 (= e!685445 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1206918 () Bool)

(declare-fun e!685433 () Unit!39932)

(declare-fun lt!547550 () Unit!39932)

(assert (=> b!1206918 (= e!685433 lt!547550)))

(declare-fun call!58860 () Unit!39932)

(assert (=> b!1206918 (= lt!547550 call!58860)))

(declare-fun call!58861 () Bool)

(assert (=> b!1206918 call!58861))

(declare-fun b!1206919 () Bool)

(declare-fun e!685443 () Bool)

(declare-fun e!685434 () Bool)

(assert (=> b!1206919 (= e!685443 e!685434)))

(declare-fun res!802624 () Bool)

(assert (=> b!1206919 (=> res!802624 e!685434)))

(assert (=> b!1206919 (= res!802624 (not (= (select (arr!37678 _keys!1208) from!1455) k0!934)))))

(declare-fun e!685436 () Bool)

(assert (=> b!1206919 e!685436))

(declare-fun c!118512 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1206919 (= c!118512 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!46011 0))(
  ( (V!46012 (val!15388 Int)) )
))
(declare-fun zeroValue!944 () V!46011)

(declare-fun lt!547540 () Unit!39932)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14622 0))(
  ( (ValueCellFull!14622 (v!18034 V!46011)) (EmptyCell!14622) )
))
(declare-datatypes ((array!78086 0))(
  ( (array!78087 (arr!37679 (Array (_ BitVec 32) ValueCell!14622)) (size!38216 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78086)

(declare-fun minValue!944 () V!46011)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1059 (array!78084 array!78086 (_ BitVec 32) (_ BitVec 32) V!46011 V!46011 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39932)

(assert (=> b!1206919 (= lt!547540 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1059 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58853 () Bool)

(declare-fun call!58858 () Unit!39932)

(assert (=> bm!58853 (= call!58860 call!58858)))

(declare-fun b!1206920 () Bool)

(declare-fun res!802631 () Bool)

(declare-fun e!685441 () Bool)

(assert (=> b!1206920 (=> (not res!802631) (not e!685441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1206920 (= res!802631 (validMask!0 mask!1564))))

(declare-fun bm!58854 () Bool)

(declare-datatypes ((tuple2!19882 0))(
  ( (tuple2!19883 (_1!9951 (_ BitVec 64)) (_2!9951 V!46011)) )
))
(declare-datatypes ((List!26705 0))(
  ( (Nil!26702) (Cons!26701 (h!27910 tuple2!19882) (t!39651 List!26705)) )
))
(declare-datatypes ((ListLongMap!17863 0))(
  ( (ListLongMap!17864 (toList!8947 List!26705)) )
))
(declare-fun call!58859 () ListLongMap!17863)

(declare-fun call!58857 () ListLongMap!17863)

(assert (=> bm!58854 (= call!58859 call!58857)))

(declare-fun b!1206921 () Bool)

(declare-fun e!685439 () Bool)

(assert (=> b!1206921 (= e!685434 e!685439)))

(declare-fun res!802626 () Bool)

(assert (=> b!1206921 (=> res!802626 e!685439)))

(declare-fun lt!547544 () ListLongMap!17863)

(declare-fun contains!6950 (ListLongMap!17863 (_ BitVec 64)) Bool)

(assert (=> b!1206921 (= res!802626 (not (contains!6950 lt!547544 k0!934)))))

(declare-fun getCurrentListMapNoExtraKeys!5354 (array!78084 array!78086 (_ BitVec 32) (_ BitVec 32) V!46011 V!46011 (_ BitVec 32) Int) ListLongMap!17863)

(assert (=> b!1206921 (= lt!547544 (getCurrentListMapNoExtraKeys!5354 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!47853 () Bool)

(declare-fun mapRes!47853 () Bool)

(assert (=> mapIsEmpty!47853 mapRes!47853))

(declare-fun b!1206922 () Bool)

(declare-fun Unit!39934 () Unit!39932)

(assert (=> b!1206922 (= e!685433 Unit!39934)))

(declare-fun b!1206923 () Bool)

(declare-fun res!802625 () Bool)

(assert (=> b!1206923 (=> (not res!802625) (not e!685441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78084 (_ BitVec 32)) Bool)

(assert (=> b!1206923 (= res!802625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1206924 () Bool)

(declare-fun res!802630 () Bool)

(assert (=> b!1206924 (=> (not res!802630) (not e!685441))))

(assert (=> b!1206924 (= res!802630 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38215 _keys!1208))))))

(declare-fun bm!58855 () Bool)

(declare-fun c!118515 () Bool)

(declare-fun +!3976 (ListLongMap!17863 tuple2!19882) ListLongMap!17863)

(assert (=> bm!58855 (= call!58857 (+!3976 lt!547544 (ite (or c!118515 c!118513) (tuple2!19883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1206925 () Bool)

(assert (=> b!1206925 call!58861))

(declare-fun lt!547546 () Unit!39932)

(assert (=> b!1206925 (= lt!547546 call!58860)))

(assert (=> b!1206925 (= e!685448 lt!547546)))

(declare-fun b!1206926 () Bool)

(assert (=> b!1206926 (= e!685440 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!547551) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun call!58862 () ListLongMap!17863)

(declare-fun call!58856 () ListLongMap!17863)

(declare-fun b!1206927 () Bool)

(declare-fun -!1855 (ListLongMap!17863 (_ BitVec 64)) ListLongMap!17863)

(assert (=> b!1206927 (= e!685436 (= call!58862 (-!1855 call!58856 k0!934)))))

(declare-fun b!1206928 () Bool)

(declare-fun res!802627 () Bool)

(declare-fun e!685444 () Bool)

(assert (=> b!1206928 (=> (not res!802627) (not e!685444))))

(declare-fun lt!547553 () array!78084)

(declare-datatypes ((List!26706 0))(
  ( (Nil!26703) (Cons!26702 (h!27911 (_ BitVec 64)) (t!39652 List!26706)) )
))
(declare-fun arrayNoDuplicates!0 (array!78084 (_ BitVec 32) List!26706) Bool)

(assert (=> b!1206928 (= res!802627 (arrayNoDuplicates!0 lt!547553 #b00000000000000000000000000000000 Nil!26703))))

(declare-fun b!1206929 () Bool)

(declare-fun lt!547539 () Unit!39932)

(assert (=> b!1206929 (= e!685435 lt!547539)))

(declare-fun lt!547548 () Unit!39932)

(assert (=> b!1206929 (= lt!547548 call!58858)))

(declare-fun lt!547552 () ListLongMap!17863)

(assert (=> b!1206929 (= lt!547552 call!58857)))

(declare-fun call!58863 () Bool)

(assert (=> b!1206929 call!58863))

(declare-fun addStillContains!1040 (ListLongMap!17863 (_ BitVec 64) V!46011 (_ BitVec 64)) Unit!39932)

(assert (=> b!1206929 (= lt!547539 (addStillContains!1040 lt!547552 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1206929 (contains!6950 (+!3976 lt!547552 (tuple2!19883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun res!802629 () Bool)

(assert (=> start!100856 (=> (not res!802629) (not e!685441))))

(assert (=> start!100856 (= res!802629 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38215 _keys!1208))))))

(assert (=> start!100856 e!685441))

(declare-fun tp_is_empty!30663 () Bool)

(assert (=> start!100856 tp_is_empty!30663))

(declare-fun array_inv!28604 (array!78084) Bool)

(assert (=> start!100856 (array_inv!28604 _keys!1208)))

(assert (=> start!100856 true))

(assert (=> start!100856 tp!90884))

(declare-fun e!685446 () Bool)

(declare-fun array_inv!28605 (array!78086) Bool)

(assert (=> start!100856 (and (array_inv!28605 _values!996) e!685446)))

(declare-fun b!1206930 () Bool)

(declare-fun res!802635 () Bool)

(assert (=> b!1206930 (=> (not res!802635) (not e!685441))))

(assert (=> b!1206930 (= res!802635 (and (= (size!38216 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38215 _keys!1208) (size!38216 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1206931 () Bool)

(declare-fun res!802634 () Bool)

(assert (=> b!1206931 (=> (not res!802634) (not e!685441))))

(assert (=> b!1206931 (= res!802634 (= (select (arr!37678 _keys!1208) i!673) k0!934))))

(declare-fun b!1206932 () Bool)

(declare-fun e!685442 () Bool)

(assert (=> b!1206932 (= e!685444 (not e!685442))))

(declare-fun res!802637 () Bool)

(assert (=> b!1206932 (=> res!802637 e!685442)))

(assert (=> b!1206932 (= res!802637 (bvsgt from!1455 i!673))))

(assert (=> b!1206932 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!547543 () Unit!39932)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78084 (_ BitVec 64) (_ BitVec 32)) Unit!39932)

(assert (=> b!1206932 (= lt!547543 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!58856 () Bool)

(assert (=> bm!58856 (= call!58856 (getCurrentListMapNoExtraKeys!5354 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1206933 () Bool)

(declare-fun res!802638 () Bool)

(assert (=> b!1206933 (=> (not res!802638) (not e!685441))))

(assert (=> b!1206933 (= res!802638 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26703))))

(declare-fun b!1206934 () Bool)

(declare-fun e!685437 () Bool)

(assert (=> b!1206934 (= e!685437 tp_is_empty!30663)))

(declare-fun mapNonEmpty!47853 () Bool)

(declare-fun tp!90883 () Bool)

(assert (=> mapNonEmpty!47853 (= mapRes!47853 (and tp!90883 e!685437))))

(declare-fun mapRest!47853 () (Array (_ BitVec 32) ValueCell!14622))

(declare-fun mapKey!47853 () (_ BitVec 32))

(declare-fun mapValue!47853 () ValueCell!14622)

(assert (=> mapNonEmpty!47853 (= (arr!37679 _values!996) (store mapRest!47853 mapKey!47853 mapValue!47853))))

(declare-fun bm!58857 () Bool)

(assert (=> bm!58857 (= call!58858 (addStillContains!1040 lt!547544 (ite (or c!118515 c!118513) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118515 c!118513) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1206935 () Bool)

(declare-fun e!685447 () Bool)

(assert (=> b!1206935 (= e!685447 tp_is_empty!30663)))

(declare-fun b!1206936 () Bool)

(declare-fun c!118516 () Bool)

(assert (=> b!1206936 (= c!118516 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!547551))))

(assert (=> b!1206936 (= e!685448 e!685433)))

(declare-fun b!1206937 () Bool)

(assert (=> b!1206937 (= e!685446 (and e!685447 mapRes!47853))))

(declare-fun condMapEmpty!47853 () Bool)

(declare-fun mapDefault!47853 () ValueCell!14622)

(assert (=> b!1206937 (= condMapEmpty!47853 (= (arr!37679 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14622)) mapDefault!47853)))))

(declare-fun bm!58858 () Bool)

(declare-fun lt!547542 () array!78086)

(assert (=> bm!58858 (= call!58862 (getCurrentListMapNoExtraKeys!5354 lt!547553 lt!547542 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58859 () Bool)

(assert (=> bm!58859 (= call!58861 call!58863)))

(declare-fun b!1206938 () Bool)

(assert (=> b!1206938 (= e!685442 e!685443)))

(declare-fun res!802628 () Bool)

(assert (=> b!1206938 (=> res!802628 e!685443)))

(assert (=> b!1206938 (= res!802628 (not (= from!1455 i!673)))))

(declare-fun lt!547541 () ListLongMap!17863)

(assert (=> b!1206938 (= lt!547541 (getCurrentListMapNoExtraKeys!5354 lt!547553 lt!547542 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3273 (Int (_ BitVec 64)) V!46011)

(assert (=> b!1206938 (= lt!547542 (array!78087 (store (arr!37679 _values!996) i!673 (ValueCellFull!14622 (dynLambda!3273 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38216 _values!996)))))

(declare-fun lt!547545 () ListLongMap!17863)

(assert (=> b!1206938 (= lt!547545 (getCurrentListMapNoExtraKeys!5354 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1206939 () Bool)

(declare-fun res!802636 () Bool)

(assert (=> b!1206939 (=> (not res!802636) (not e!685441))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1206939 (= res!802636 (validKeyInArray!0 k0!934))))

(declare-fun b!1206940 () Bool)

(assert (=> b!1206940 (= e!685436 (= call!58862 call!58856))))

(declare-fun b!1206941 () Bool)

(assert (=> b!1206941 (= e!685439 true)))

(assert (=> b!1206941 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26703)))

(declare-fun lt!547549 () Unit!39932)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78084 (_ BitVec 32) (_ BitVec 32)) Unit!39932)

(assert (=> b!1206941 (= lt!547549 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1206941 e!685445))

(declare-fun res!802633 () Bool)

(assert (=> b!1206941 (=> (not res!802633) (not e!685445))))

(assert (=> b!1206941 (= res!802633 e!685440)))

(declare-fun c!118514 () Bool)

(assert (=> b!1206941 (= c!118514 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!547547 () Unit!39932)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!578 (array!78084 array!78086 (_ BitVec 32) (_ BitVec 32) V!46011 V!46011 (_ BitVec 64) (_ BitVec 32) Int) Unit!39932)

(assert (=> b!1206941 (= lt!547547 (lemmaListMapContainsThenArrayContainsFrom!578 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!547538 () Unit!39932)

(assert (=> b!1206941 (= lt!547538 e!685435)))

(assert (=> b!1206941 (= c!118515 (and (not lt!547551) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1206941 (= lt!547551 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!58860 () Bool)

(assert (=> bm!58860 (= call!58863 (contains!6950 (ite c!118515 lt!547552 call!58859) k0!934))))

(declare-fun b!1206942 () Bool)

(assert (=> b!1206942 (= e!685441 e!685444)))

(declare-fun res!802632 () Bool)

(assert (=> b!1206942 (=> (not res!802632) (not e!685444))))

(assert (=> b!1206942 (= res!802632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!547553 mask!1564))))

(assert (=> b!1206942 (= lt!547553 (array!78085 (store (arr!37678 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38215 _keys!1208)))))

(assert (= (and start!100856 res!802629) b!1206920))

(assert (= (and b!1206920 res!802631) b!1206930))

(assert (= (and b!1206930 res!802635) b!1206923))

(assert (= (and b!1206923 res!802625) b!1206933))

(assert (= (and b!1206933 res!802638) b!1206924))

(assert (= (and b!1206924 res!802630) b!1206939))

(assert (= (and b!1206939 res!802636) b!1206931))

(assert (= (and b!1206931 res!802634) b!1206942))

(assert (= (and b!1206942 res!802632) b!1206928))

(assert (= (and b!1206928 res!802627) b!1206932))

(assert (= (and b!1206932 (not res!802637)) b!1206938))

(assert (= (and b!1206938 (not res!802628)) b!1206919))

(assert (= (and b!1206919 c!118512) b!1206927))

(assert (= (and b!1206919 (not c!118512)) b!1206940))

(assert (= (or b!1206927 b!1206940) bm!58858))

(assert (= (or b!1206927 b!1206940) bm!58856))

(assert (= (and b!1206919 (not res!802624)) b!1206921))

(assert (= (and b!1206921 (not res!802626)) b!1206941))

(assert (= (and b!1206941 c!118515) b!1206929))

(assert (= (and b!1206941 (not c!118515)) b!1206915))

(assert (= (and b!1206915 c!118513) b!1206925))

(assert (= (and b!1206915 (not c!118513)) b!1206936))

(assert (= (and b!1206936 c!118516) b!1206918))

(assert (= (and b!1206936 (not c!118516)) b!1206922))

(assert (= (or b!1206925 b!1206918) bm!58853))

(assert (= (or b!1206925 b!1206918) bm!58854))

(assert (= (or b!1206925 b!1206918) bm!58859))

(assert (= (or b!1206929 bm!58859) bm!58860))

(assert (= (or b!1206929 bm!58853) bm!58857))

(assert (= (or b!1206929 bm!58854) bm!58855))

(assert (= (and b!1206941 c!118514) b!1206916))

(assert (= (and b!1206941 (not c!118514)) b!1206926))

(assert (= (and b!1206941 res!802633) b!1206917))

(assert (= (and b!1206937 condMapEmpty!47853) mapIsEmpty!47853))

(assert (= (and b!1206937 (not condMapEmpty!47853)) mapNonEmpty!47853))

(get-info :version)

(assert (= (and mapNonEmpty!47853 ((_ is ValueCellFull!14622) mapValue!47853)) b!1206934))

(assert (= (and b!1206937 ((_ is ValueCellFull!14622) mapDefault!47853)) b!1206935))

(assert (= start!100856 b!1206937))

(declare-fun b_lambda!21411 () Bool)

(assert (=> (not b_lambda!21411) (not b!1206938)))

(declare-fun t!39650 () Bool)

(declare-fun tb!10767 () Bool)

(assert (=> (and start!100856 (= defaultEntry!1004 defaultEntry!1004) t!39650) tb!10767))

(declare-fun result!22113 () Bool)

(assert (=> tb!10767 (= result!22113 tp_is_empty!30663)))

(assert (=> b!1206938 t!39650))

(declare-fun b_and!42935 () Bool)

(assert (= b_and!42933 (and (=> t!39650 result!22113) b_and!42935)))

(declare-fun m!1112587 () Bool)

(assert (=> b!1206920 m!1112587))

(declare-fun m!1112589 () Bool)

(assert (=> bm!58856 m!1112589))

(declare-fun m!1112591 () Bool)

(assert (=> b!1206933 m!1112591))

(declare-fun m!1112593 () Bool)

(assert (=> b!1206919 m!1112593))

(declare-fun m!1112595 () Bool)

(assert (=> b!1206919 m!1112595))

(declare-fun m!1112597 () Bool)

(assert (=> bm!58857 m!1112597))

(declare-fun m!1112599 () Bool)

(assert (=> b!1206931 m!1112599))

(declare-fun m!1112601 () Bool)

(assert (=> b!1206941 m!1112601))

(declare-fun m!1112603 () Bool)

(assert (=> b!1206941 m!1112603))

(declare-fun m!1112605 () Bool)

(assert (=> b!1206941 m!1112605))

(declare-fun m!1112607 () Bool)

(assert (=> b!1206929 m!1112607))

(declare-fun m!1112609 () Bool)

(assert (=> b!1206929 m!1112609))

(assert (=> b!1206929 m!1112609))

(declare-fun m!1112611 () Bool)

(assert (=> b!1206929 m!1112611))

(declare-fun m!1112613 () Bool)

(assert (=> bm!58858 m!1112613))

(declare-fun m!1112615 () Bool)

(assert (=> start!100856 m!1112615))

(declare-fun m!1112617 () Bool)

(assert (=> start!100856 m!1112617))

(declare-fun m!1112619 () Bool)

(assert (=> bm!58860 m!1112619))

(declare-fun m!1112621 () Bool)

(assert (=> b!1206939 m!1112621))

(declare-fun m!1112623 () Bool)

(assert (=> b!1206938 m!1112623))

(declare-fun m!1112625 () Bool)

(assert (=> b!1206938 m!1112625))

(declare-fun m!1112627 () Bool)

(assert (=> b!1206938 m!1112627))

(declare-fun m!1112629 () Bool)

(assert (=> b!1206938 m!1112629))

(declare-fun m!1112631 () Bool)

(assert (=> b!1206928 m!1112631))

(declare-fun m!1112633 () Bool)

(assert (=> b!1206927 m!1112633))

(declare-fun m!1112635 () Bool)

(assert (=> b!1206917 m!1112635))

(declare-fun m!1112637 () Bool)

(assert (=> b!1206923 m!1112637))

(declare-fun m!1112639 () Bool)

(assert (=> b!1206942 m!1112639))

(declare-fun m!1112641 () Bool)

(assert (=> b!1206942 m!1112641))

(declare-fun m!1112643 () Bool)

(assert (=> mapNonEmpty!47853 m!1112643))

(declare-fun m!1112645 () Bool)

(assert (=> bm!58855 m!1112645))

(assert (=> b!1206916 m!1112635))

(declare-fun m!1112647 () Bool)

(assert (=> b!1206921 m!1112647))

(assert (=> b!1206921 m!1112589))

(declare-fun m!1112649 () Bool)

(assert (=> b!1206932 m!1112649))

(declare-fun m!1112651 () Bool)

(assert (=> b!1206932 m!1112651))

(check-sat (not b!1206939) (not mapNonEmpty!47853) (not b!1206920) (not b!1206921) (not b!1206916) (not b!1206927) (not bm!58857) (not b!1206938) (not b!1206942) (not b!1206923) (not bm!58855) (not b!1206933) (not bm!58860) (not b!1206917) (not bm!58856) (not b!1206919) (not b!1206929) (not bm!58858) (not start!100856) (not b_lambda!21411) (not b_next!25959) b_and!42935 (not b!1206941) tp_is_empty!30663 (not b!1206928) (not b!1206932))
(check-sat b_and!42935 (not b_next!25959))
