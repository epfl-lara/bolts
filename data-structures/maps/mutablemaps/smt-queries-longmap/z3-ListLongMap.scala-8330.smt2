; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101418 () Bool)

(assert start!101418)

(declare-fun b_free!26253 () Bool)

(declare-fun b_next!26253 () Bool)

(assert (=> start!101418 (= b_free!26253 (not b_next!26253))))

(declare-fun tp!91788 () Bool)

(declare-fun b_and!43669 () Bool)

(assert (=> start!101418 (= tp!91788 b_and!43669)))

(declare-fun b!1218315 () Bool)

(declare-fun res!809242 () Bool)

(declare-fun e!691740 () Bool)

(assert (=> b!1218315 (=> (not res!809242) (not e!691740))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1218315 (= res!809242 (validMask!0 mask!1564))))

(declare-fun b!1218316 () Bool)

(declare-fun res!809233 () Bool)

(assert (=> b!1218316 (=> (not res!809233) (not e!691740))))

(declare-datatypes ((array!78664 0))(
  ( (array!78665 (arr!37961 (Array (_ BitVec 32) (_ BitVec 64))) (size!38498 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78664)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78664 (_ BitVec 32)) Bool)

(assert (=> b!1218316 (= res!809233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1218317 () Bool)

(declare-fun e!691747 () Bool)

(assert (=> b!1218317 (= e!691747 true)))

(declare-fun e!691743 () Bool)

(assert (=> b!1218317 e!691743))

(declare-fun res!809228 () Bool)

(assert (=> b!1218317 (=> (not res!809228) (not e!691743))))

(declare-datatypes ((V!46403 0))(
  ( (V!46404 (val!15535 Int)) )
))
(declare-fun lt!553811 () V!46403)

(declare-datatypes ((tuple2!20118 0))(
  ( (tuple2!20119 (_1!10069 (_ BitVec 64)) (_2!10069 V!46403)) )
))
(declare-datatypes ((List!26938 0))(
  ( (Nil!26935) (Cons!26934 (h!28143 tuple2!20118) (t!40178 List!26938)) )
))
(declare-datatypes ((ListLongMap!18099 0))(
  ( (ListLongMap!18100 (toList!9065 List!26938)) )
))
(declare-fun lt!553806 () ListLongMap!18099)

(declare-fun lt!553810 () ListLongMap!18099)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14769 0))(
  ( (ValueCellFull!14769 (v!18191 V!46403)) (EmptyCell!14769) )
))
(declare-datatypes ((array!78666 0))(
  ( (array!78667 (arr!37962 (Array (_ BitVec 32) ValueCell!14769)) (size!38499 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78666)

(declare-fun +!4046 (ListLongMap!18099 tuple2!20118) ListLongMap!18099)

(declare-fun get!19392 (ValueCell!14769 V!46403) V!46403)

(assert (=> b!1218317 (= res!809228 (= lt!553810 (+!4046 lt!553806 (tuple2!20119 (select (arr!37961 _keys!1208) from!1455) (get!19392 (select (arr!37962 _values!996) from!1455) lt!553811)))))))

(declare-fun b!1218318 () Bool)

(declare-fun e!691739 () Bool)

(assert (=> b!1218318 (= e!691743 e!691739)))

(declare-fun res!809241 () Bool)

(assert (=> b!1218318 (=> res!809241 e!691739)))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1218318 (= res!809241 (not (= (select (arr!37961 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1218319 () Bool)

(declare-fun e!691738 () Bool)

(declare-fun tp_is_empty!30957 () Bool)

(assert (=> b!1218319 (= e!691738 tp_is_empty!30957)))

(declare-fun b!1218320 () Bool)

(declare-fun res!809235 () Bool)

(assert (=> b!1218320 (=> (not res!809235) (not e!691740))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1218320 (= res!809235 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38498 _keys!1208))))))

(declare-fun b!1218321 () Bool)

(declare-fun e!691744 () Bool)

(declare-fun e!691745 () Bool)

(declare-fun mapRes!48316 () Bool)

(assert (=> b!1218321 (= e!691744 (and e!691745 mapRes!48316))))

(declare-fun condMapEmpty!48316 () Bool)

(declare-fun mapDefault!48316 () ValueCell!14769)

(assert (=> b!1218321 (= condMapEmpty!48316 (= (arr!37962 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14769)) mapDefault!48316)))))

(declare-fun b!1218322 () Bool)

(declare-fun arrayContainsKey!0 (array!78664 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1218322 (= e!691739 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1218323 () Bool)

(declare-fun res!809240 () Bool)

(declare-fun e!691737 () Bool)

(assert (=> b!1218323 (=> (not res!809240) (not e!691737))))

(declare-fun lt!553809 () array!78664)

(declare-datatypes ((List!26939 0))(
  ( (Nil!26936) (Cons!26935 (h!28144 (_ BitVec 64)) (t!40179 List!26939)) )
))
(declare-fun arrayNoDuplicates!0 (array!78664 (_ BitVec 32) List!26939) Bool)

(assert (=> b!1218323 (= res!809240 (arrayNoDuplicates!0 lt!553809 #b00000000000000000000000000000000 Nil!26936))))

(declare-fun b!1218324 () Bool)

(declare-fun e!691742 () Bool)

(declare-fun e!691741 () Bool)

(assert (=> b!1218324 (= e!691742 e!691741)))

(declare-fun res!809232 () Bool)

(assert (=> b!1218324 (=> res!809232 e!691741)))

(assert (=> b!1218324 (= res!809232 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46403)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!553805 () array!78666)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46403)

(declare-fun getCurrentListMapNoExtraKeys!5469 (array!78664 array!78666 (_ BitVec 32) (_ BitVec 32) V!46403 V!46403 (_ BitVec 32) Int) ListLongMap!18099)

(assert (=> b!1218324 (= lt!553810 (getCurrentListMapNoExtraKeys!5469 lt!553809 lt!553805 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1218324 (= lt!553805 (array!78667 (store (arr!37962 _values!996) i!673 (ValueCellFull!14769 lt!553811)) (size!38499 _values!996)))))

(declare-fun dynLambda!3373 (Int (_ BitVec 64)) V!46403)

(assert (=> b!1218324 (= lt!553811 (dynLambda!3373 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!553808 () ListLongMap!18099)

(assert (=> b!1218324 (= lt!553808 (getCurrentListMapNoExtraKeys!5469 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!48316 () Bool)

(declare-fun tp!91787 () Bool)

(assert (=> mapNonEmpty!48316 (= mapRes!48316 (and tp!91787 e!691738))))

(declare-fun mapValue!48316 () ValueCell!14769)

(declare-fun mapRest!48316 () (Array (_ BitVec 32) ValueCell!14769))

(declare-fun mapKey!48316 () (_ BitVec 32))

(assert (=> mapNonEmpty!48316 (= (arr!37962 _values!996) (store mapRest!48316 mapKey!48316 mapValue!48316))))

(declare-fun b!1218325 () Bool)

(declare-fun res!809231 () Bool)

(assert (=> b!1218325 (=> (not res!809231) (not e!691740))))

(assert (=> b!1218325 (= res!809231 (and (= (size!38499 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38498 _keys!1208) (size!38499 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1218326 () Bool)

(assert (=> b!1218326 (= e!691740 e!691737)))

(declare-fun res!809237 () Bool)

(assert (=> b!1218326 (=> (not res!809237) (not e!691737))))

(assert (=> b!1218326 (= res!809237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553809 mask!1564))))

(assert (=> b!1218326 (= lt!553809 (array!78665 (store (arr!37961 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38498 _keys!1208)))))

(declare-fun res!809236 () Bool)

(assert (=> start!101418 (=> (not res!809236) (not e!691740))))

(assert (=> start!101418 (= res!809236 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38498 _keys!1208))))))

(assert (=> start!101418 e!691740))

(assert (=> start!101418 tp_is_empty!30957))

(declare-fun array_inv!28804 (array!78664) Bool)

(assert (=> start!101418 (array_inv!28804 _keys!1208)))

(assert (=> start!101418 true))

(assert (=> start!101418 tp!91788))

(declare-fun array_inv!28805 (array!78666) Bool)

(assert (=> start!101418 (and (array_inv!28805 _values!996) e!691744)))

(declare-fun mapIsEmpty!48316 () Bool)

(assert (=> mapIsEmpty!48316 mapRes!48316))

(declare-fun b!1218327 () Bool)

(assert (=> b!1218327 (= e!691741 e!691747)))

(declare-fun res!809234 () Bool)

(assert (=> b!1218327 (=> res!809234 e!691747)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1218327 (= res!809234 (not (validKeyInArray!0 (select (arr!37961 _keys!1208) from!1455))))))

(declare-fun lt!553804 () ListLongMap!18099)

(assert (=> b!1218327 (= lt!553804 lt!553806)))

(declare-fun lt!553802 () ListLongMap!18099)

(declare-fun -!1924 (ListLongMap!18099 (_ BitVec 64)) ListLongMap!18099)

(assert (=> b!1218327 (= lt!553806 (-!1924 lt!553802 k0!934))))

(assert (=> b!1218327 (= lt!553804 (getCurrentListMapNoExtraKeys!5469 lt!553809 lt!553805 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1218327 (= lt!553802 (getCurrentListMapNoExtraKeys!5469 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40314 0))(
  ( (Unit!40315) )
))
(declare-fun lt!553807 () Unit!40314)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1126 (array!78664 array!78666 (_ BitVec 32) (_ BitVec 32) V!46403 V!46403 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40314)

(assert (=> b!1218327 (= lt!553807 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1126 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1218328 () Bool)

(assert (=> b!1218328 (= e!691737 (not e!691742))))

(declare-fun res!809230 () Bool)

(assert (=> b!1218328 (=> res!809230 e!691742)))

(assert (=> b!1218328 (= res!809230 (bvsgt from!1455 i!673))))

(assert (=> b!1218328 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!553803 () Unit!40314)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78664 (_ BitVec 64) (_ BitVec 32)) Unit!40314)

(assert (=> b!1218328 (= lt!553803 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1218329 () Bool)

(declare-fun res!809238 () Bool)

(assert (=> b!1218329 (=> (not res!809238) (not e!691740))))

(assert (=> b!1218329 (= res!809238 (= (select (arr!37961 _keys!1208) i!673) k0!934))))

(declare-fun b!1218330 () Bool)

(declare-fun res!809239 () Bool)

(assert (=> b!1218330 (=> (not res!809239) (not e!691740))))

(assert (=> b!1218330 (= res!809239 (validKeyInArray!0 k0!934))))

(declare-fun b!1218331 () Bool)

(assert (=> b!1218331 (= e!691745 tp_is_empty!30957)))

(declare-fun b!1218332 () Bool)

(declare-fun res!809229 () Bool)

(assert (=> b!1218332 (=> (not res!809229) (not e!691740))))

(assert (=> b!1218332 (= res!809229 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26936))))

(assert (= (and start!101418 res!809236) b!1218315))

(assert (= (and b!1218315 res!809242) b!1218325))

(assert (= (and b!1218325 res!809231) b!1218316))

(assert (= (and b!1218316 res!809233) b!1218332))

(assert (= (and b!1218332 res!809229) b!1218320))

(assert (= (and b!1218320 res!809235) b!1218330))

(assert (= (and b!1218330 res!809239) b!1218329))

(assert (= (and b!1218329 res!809238) b!1218326))

(assert (= (and b!1218326 res!809237) b!1218323))

(assert (= (and b!1218323 res!809240) b!1218328))

(assert (= (and b!1218328 (not res!809230)) b!1218324))

(assert (= (and b!1218324 (not res!809232)) b!1218327))

(assert (= (and b!1218327 (not res!809234)) b!1218317))

(assert (= (and b!1218317 res!809228) b!1218318))

(assert (= (and b!1218318 (not res!809241)) b!1218322))

(assert (= (and b!1218321 condMapEmpty!48316) mapIsEmpty!48316))

(assert (= (and b!1218321 (not condMapEmpty!48316)) mapNonEmpty!48316))

(get-info :version)

(assert (= (and mapNonEmpty!48316 ((_ is ValueCellFull!14769) mapValue!48316)) b!1218319))

(assert (= (and b!1218321 ((_ is ValueCellFull!14769) mapDefault!48316)) b!1218331))

(assert (= start!101418 b!1218321))

(declare-fun b_lambda!22015 () Bool)

(assert (=> (not b_lambda!22015) (not b!1218324)))

(declare-fun t!40177 () Bool)

(declare-fun tb!11061 () Bool)

(assert (=> (and start!101418 (= defaultEntry!1004 defaultEntry!1004) t!40177) tb!11061))

(declare-fun result!22715 () Bool)

(assert (=> tb!11061 (= result!22715 tp_is_empty!30957)))

(assert (=> b!1218324 t!40177))

(declare-fun b_and!43671 () Bool)

(assert (= b_and!43669 (and (=> t!40177 result!22715) b_and!43671)))

(declare-fun m!1123101 () Bool)

(assert (=> b!1218324 m!1123101))

(declare-fun m!1123103 () Bool)

(assert (=> b!1218324 m!1123103))

(declare-fun m!1123105 () Bool)

(assert (=> b!1218324 m!1123105))

(declare-fun m!1123107 () Bool)

(assert (=> b!1218324 m!1123107))

(declare-fun m!1123109 () Bool)

(assert (=> b!1218329 m!1123109))

(declare-fun m!1123111 () Bool)

(assert (=> b!1218332 m!1123111))

(declare-fun m!1123113 () Bool)

(assert (=> b!1218323 m!1123113))

(declare-fun m!1123115 () Bool)

(assert (=> b!1218317 m!1123115))

(declare-fun m!1123117 () Bool)

(assert (=> b!1218317 m!1123117))

(assert (=> b!1218317 m!1123117))

(declare-fun m!1123119 () Bool)

(assert (=> b!1218317 m!1123119))

(declare-fun m!1123121 () Bool)

(assert (=> b!1218317 m!1123121))

(declare-fun m!1123123 () Bool)

(assert (=> b!1218328 m!1123123))

(declare-fun m!1123125 () Bool)

(assert (=> b!1218328 m!1123125))

(declare-fun m!1123127 () Bool)

(assert (=> b!1218315 m!1123127))

(declare-fun m!1123129 () Bool)

(assert (=> b!1218326 m!1123129))

(declare-fun m!1123131 () Bool)

(assert (=> b!1218326 m!1123131))

(declare-fun m!1123133 () Bool)

(assert (=> b!1218322 m!1123133))

(assert (=> b!1218318 m!1123115))

(declare-fun m!1123135 () Bool)

(assert (=> b!1218316 m!1123135))

(declare-fun m!1123137 () Bool)

(assert (=> start!101418 m!1123137))

(declare-fun m!1123139 () Bool)

(assert (=> start!101418 m!1123139))

(declare-fun m!1123141 () Bool)

(assert (=> b!1218327 m!1123141))

(declare-fun m!1123143 () Bool)

(assert (=> b!1218327 m!1123143))

(assert (=> b!1218327 m!1123115))

(declare-fun m!1123145 () Bool)

(assert (=> b!1218327 m!1123145))

(assert (=> b!1218327 m!1123115))

(declare-fun m!1123147 () Bool)

(assert (=> b!1218327 m!1123147))

(declare-fun m!1123149 () Bool)

(assert (=> b!1218327 m!1123149))

(declare-fun m!1123151 () Bool)

(assert (=> mapNonEmpty!48316 m!1123151))

(declare-fun m!1123153 () Bool)

(assert (=> b!1218330 m!1123153))

(check-sat (not b!1218316) tp_is_empty!30957 (not b_next!26253) b_and!43671 (not b!1218330) (not b!1218322) (not b!1218328) (not b!1218327) (not start!101418) (not b!1218332) (not b!1218323) (not b!1218315) (not b!1218317) (not mapNonEmpty!48316) (not b!1218324) (not b!1218326) (not b_lambda!22015))
(check-sat b_and!43671 (not b_next!26253))
