; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101462 () Bool)

(assert start!101462)

(declare-fun b_free!26271 () Bool)

(declare-fun b_next!26271 () Bool)

(assert (=> start!101462 (= b_free!26271 (not b_next!26271))))

(declare-fun tp!91844 () Bool)

(declare-fun b_and!43723 () Bool)

(assert (=> start!101462 (= tp!91844 b_and!43723)))

(declare-fun b!1218969 () Bool)

(declare-fun e!692140 () Bool)

(declare-datatypes ((array!78700 0))(
  ( (array!78701 (arr!37978 (Array (_ BitVec 32) (_ BitVec 64))) (size!38515 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78700)

(assert (=> b!1218969 (= e!692140 (bvslt (size!38515 _keys!1208) #b01111111111111111111111111111111))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!78700 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1218969 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-datatypes ((Unit!40324 0))(
  ( (Unit!40325) )
))
(declare-fun lt!554157 () Unit!40324)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78700 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40324)

(assert (=> b!1218969 (= lt!554157 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1218970 () Bool)

(declare-fun res!809714 () Bool)

(declare-fun e!692143 () Bool)

(assert (=> b!1218970 (=> (not res!809714) (not e!692143))))

(assert (=> b!1218970 (= res!809714 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38515 _keys!1208))))))

(declare-fun b!1218971 () Bool)

(declare-fun e!692137 () Bool)

(declare-fun tp_is_empty!30975 () Bool)

(assert (=> b!1218971 (= e!692137 tp_is_empty!30975)))

(declare-fun b!1218972 () Bool)

(declare-fun res!809701 () Bool)

(assert (=> b!1218972 (=> (not res!809701) (not e!692143))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78700 (_ BitVec 32)) Bool)

(assert (=> b!1218972 (= res!809701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1218973 () Bool)

(declare-fun res!809702 () Bool)

(assert (=> b!1218973 (=> (not res!809702) (not e!692143))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!46427 0))(
  ( (V!46428 (val!15544 Int)) )
))
(declare-datatypes ((ValueCell!14778 0))(
  ( (ValueCellFull!14778 (v!18201 V!46427)) (EmptyCell!14778) )
))
(declare-datatypes ((array!78702 0))(
  ( (array!78703 (arr!37979 (Array (_ BitVec 32) ValueCell!14778)) (size!38516 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78702)

(assert (=> b!1218973 (= res!809702 (and (= (size!38516 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38515 _keys!1208) (size!38516 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1218974 () Bool)

(declare-fun e!692139 () Bool)

(declare-fun e!692146 () Bool)

(assert (=> b!1218974 (= e!692139 (not e!692146))))

(declare-fun res!809711 () Bool)

(assert (=> b!1218974 (=> res!809711 e!692146)))

(assert (=> b!1218974 (= res!809711 (bvsgt from!1455 i!673))))

(assert (=> b!1218974 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!554159 () Unit!40324)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78700 (_ BitVec 64) (_ BitVec 32)) Unit!40324)

(assert (=> b!1218974 (= lt!554159 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!48346 () Bool)

(declare-fun mapRes!48346 () Bool)

(assert (=> mapIsEmpty!48346 mapRes!48346))

(declare-fun b!1218975 () Bool)

(declare-fun e!692145 () Bool)

(assert (=> b!1218975 (= e!692145 (and e!692137 mapRes!48346))))

(declare-fun condMapEmpty!48346 () Bool)

(declare-fun mapDefault!48346 () ValueCell!14778)

(assert (=> b!1218975 (= condMapEmpty!48346 (= (arr!37979 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14778)) mapDefault!48346)))))

(declare-fun b!1218976 () Bool)

(declare-fun res!809703 () Bool)

(assert (=> b!1218976 (=> (not res!809703) (not e!692143))))

(assert (=> b!1218976 (= res!809703 (= (select (arr!37978 _keys!1208) i!673) k0!934))))

(declare-fun b!1218977 () Bool)

(assert (=> b!1218977 (= e!692143 e!692139)))

(declare-fun res!809709 () Bool)

(assert (=> b!1218977 (=> (not res!809709) (not e!692139))))

(declare-fun lt!554152 () array!78700)

(assert (=> b!1218977 (= res!809709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554152 mask!1564))))

(assert (=> b!1218977 (= lt!554152 (array!78701 (store (arr!37978 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38515 _keys!1208)))))

(declare-fun res!809712 () Bool)

(assert (=> start!101462 (=> (not res!809712) (not e!692143))))

(assert (=> start!101462 (= res!809712 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38515 _keys!1208))))))

(assert (=> start!101462 e!692143))

(assert (=> start!101462 tp_is_empty!30975))

(declare-fun array_inv!28816 (array!78700) Bool)

(assert (=> start!101462 (array_inv!28816 _keys!1208)))

(assert (=> start!101462 true))

(assert (=> start!101462 tp!91844))

(declare-fun array_inv!28817 (array!78702) Bool)

(assert (=> start!101462 (and (array_inv!28817 _values!996) e!692145)))

(declare-fun b!1218978 () Bool)

(declare-fun e!692144 () Bool)

(assert (=> b!1218978 (= e!692146 e!692144)))

(declare-fun res!809707 () Bool)

(assert (=> b!1218978 (=> res!809707 e!692144)))

(assert (=> b!1218978 (= res!809707 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46427)

(declare-fun lt!554160 () array!78702)

(declare-fun minValue!944 () V!46427)

(declare-datatypes ((tuple2!20132 0))(
  ( (tuple2!20133 (_1!10076 (_ BitVec 64)) (_2!10076 V!46427)) )
))
(declare-datatypes ((List!26951 0))(
  ( (Nil!26948) (Cons!26947 (h!28156 tuple2!20132) (t!40209 List!26951)) )
))
(declare-datatypes ((ListLongMap!18113 0))(
  ( (ListLongMap!18114 (toList!9072 List!26951)) )
))
(declare-fun lt!554155 () ListLongMap!18113)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5475 (array!78700 array!78702 (_ BitVec 32) (_ BitVec 32) V!46427 V!46427 (_ BitVec 32) Int) ListLongMap!18113)

(assert (=> b!1218978 (= lt!554155 (getCurrentListMapNoExtraKeys!5475 lt!554152 lt!554160 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!554154 () V!46427)

(assert (=> b!1218978 (= lt!554160 (array!78703 (store (arr!37979 _values!996) i!673 (ValueCellFull!14778 lt!554154)) (size!38516 _values!996)))))

(declare-fun dynLambda!3379 (Int (_ BitVec 64)) V!46427)

(assert (=> b!1218978 (= lt!554154 (dynLambda!3379 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!554153 () ListLongMap!18113)

(assert (=> b!1218978 (= lt!554153 (getCurrentListMapNoExtraKeys!5475 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1218979 () Bool)

(declare-fun e!692142 () Bool)

(assert (=> b!1218979 (= e!692142 tp_is_empty!30975)))

(declare-fun b!1218980 () Bool)

(declare-fun e!692138 () Bool)

(assert (=> b!1218980 (= e!692144 e!692138)))

(declare-fun res!809700 () Bool)

(assert (=> b!1218980 (=> res!809700 e!692138)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1218980 (= res!809700 (not (validKeyInArray!0 (select (arr!37978 _keys!1208) from!1455))))))

(declare-fun lt!554161 () ListLongMap!18113)

(declare-fun lt!554158 () ListLongMap!18113)

(assert (=> b!1218980 (= lt!554161 lt!554158)))

(declare-fun lt!554162 () ListLongMap!18113)

(declare-fun -!1929 (ListLongMap!18113 (_ BitVec 64)) ListLongMap!18113)

(assert (=> b!1218980 (= lt!554158 (-!1929 lt!554162 k0!934))))

(assert (=> b!1218980 (= lt!554161 (getCurrentListMapNoExtraKeys!5475 lt!554152 lt!554160 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1218980 (= lt!554162 (getCurrentListMapNoExtraKeys!5475 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!554156 () Unit!40324)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1131 (array!78700 array!78702 (_ BitVec 32) (_ BitVec 32) V!46427 V!46427 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40324)

(assert (=> b!1218980 (= lt!554156 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1131 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1218981 () Bool)

(declare-fun res!809710 () Bool)

(assert (=> b!1218981 (=> (not res!809710) (not e!692143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1218981 (= res!809710 (validMask!0 mask!1564))))

(declare-fun b!1218982 () Bool)

(assert (=> b!1218982 (= e!692138 e!692140)))

(declare-fun res!809708 () Bool)

(assert (=> b!1218982 (=> res!809708 e!692140)))

(assert (=> b!1218982 (= res!809708 (not (= (select (arr!37978 _keys!1208) from!1455) k0!934)))))

(declare-fun e!692136 () Bool)

(assert (=> b!1218982 e!692136))

(declare-fun res!809699 () Bool)

(assert (=> b!1218982 (=> (not res!809699) (not e!692136))))

(declare-fun +!4051 (ListLongMap!18113 tuple2!20132) ListLongMap!18113)

(declare-fun get!19405 (ValueCell!14778 V!46427) V!46427)

(assert (=> b!1218982 (= res!809699 (= lt!554155 (+!4051 lt!554158 (tuple2!20133 (select (arr!37978 _keys!1208) from!1455) (get!19405 (select (arr!37979 _values!996) from!1455) lt!554154)))))))

(declare-fun b!1218983 () Bool)

(declare-fun res!809713 () Bool)

(assert (=> b!1218983 (=> (not res!809713) (not e!692139))))

(declare-datatypes ((List!26952 0))(
  ( (Nil!26949) (Cons!26948 (h!28157 (_ BitVec 64)) (t!40210 List!26952)) )
))
(declare-fun arrayNoDuplicates!0 (array!78700 (_ BitVec 32) List!26952) Bool)

(assert (=> b!1218983 (= res!809713 (arrayNoDuplicates!0 lt!554152 #b00000000000000000000000000000000 Nil!26949))))

(declare-fun mapNonEmpty!48346 () Bool)

(declare-fun tp!91845 () Bool)

(assert (=> mapNonEmpty!48346 (= mapRes!48346 (and tp!91845 e!692142))))

(declare-fun mapValue!48346 () ValueCell!14778)

(declare-fun mapKey!48346 () (_ BitVec 32))

(declare-fun mapRest!48346 () (Array (_ BitVec 32) ValueCell!14778))

(assert (=> mapNonEmpty!48346 (= (arr!37979 _values!996) (store mapRest!48346 mapKey!48346 mapValue!48346))))

(declare-fun b!1218984 () Bool)

(declare-fun res!809704 () Bool)

(assert (=> b!1218984 (=> (not res!809704) (not e!692143))))

(assert (=> b!1218984 (= res!809704 (validKeyInArray!0 k0!934))))

(declare-fun b!1218985 () Bool)

(declare-fun res!809705 () Bool)

(assert (=> b!1218985 (=> (not res!809705) (not e!692143))))

(assert (=> b!1218985 (= res!809705 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26949))))

(declare-fun e!692141 () Bool)

(declare-fun b!1218986 () Bool)

(assert (=> b!1218986 (= e!692141 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1218987 () Bool)

(assert (=> b!1218987 (= e!692136 e!692141)))

(declare-fun res!809706 () Bool)

(assert (=> b!1218987 (=> res!809706 e!692141)))

(assert (=> b!1218987 (= res!809706 (not (= (select (arr!37978 _keys!1208) from!1455) k0!934)))))

(assert (= (and start!101462 res!809712) b!1218981))

(assert (= (and b!1218981 res!809710) b!1218973))

(assert (= (and b!1218973 res!809702) b!1218972))

(assert (= (and b!1218972 res!809701) b!1218985))

(assert (= (and b!1218985 res!809705) b!1218970))

(assert (= (and b!1218970 res!809714) b!1218984))

(assert (= (and b!1218984 res!809704) b!1218976))

(assert (= (and b!1218976 res!809703) b!1218977))

(assert (= (and b!1218977 res!809709) b!1218983))

(assert (= (and b!1218983 res!809713) b!1218974))

(assert (= (and b!1218974 (not res!809711)) b!1218978))

(assert (= (and b!1218978 (not res!809707)) b!1218980))

(assert (= (and b!1218980 (not res!809700)) b!1218982))

(assert (= (and b!1218982 res!809699) b!1218987))

(assert (= (and b!1218987 (not res!809706)) b!1218986))

(assert (= (and b!1218982 (not res!809708)) b!1218969))

(assert (= (and b!1218975 condMapEmpty!48346) mapIsEmpty!48346))

(assert (= (and b!1218975 (not condMapEmpty!48346)) mapNonEmpty!48346))

(get-info :version)

(assert (= (and mapNonEmpty!48346 ((_ is ValueCellFull!14778) mapValue!48346)) b!1218979))

(assert (= (and b!1218975 ((_ is ValueCellFull!14778) mapDefault!48346)) b!1218971))

(assert (= start!101462 b!1218975))

(declare-fun b_lambda!22071 () Bool)

(assert (=> (not b_lambda!22071) (not b!1218978)))

(declare-fun t!40208 () Bool)

(declare-fun tb!11079 () Bool)

(assert (=> (and start!101462 (= defaultEntry!1004 defaultEntry!1004) t!40208) tb!11079))

(declare-fun result!22753 () Bool)

(assert (=> tb!11079 (= result!22753 tp_is_empty!30975)))

(assert (=> b!1218978 t!40208))

(declare-fun b_and!43725 () Bool)

(assert (= b_and!43723 (and (=> t!40208 result!22753) b_and!43725)))

(declare-fun m!1123765 () Bool)

(assert (=> b!1218985 m!1123765))

(declare-fun m!1123767 () Bool)

(assert (=> b!1218981 m!1123767))

(declare-fun m!1123769 () Bool)

(assert (=> b!1218986 m!1123769))

(declare-fun m!1123771 () Bool)

(assert (=> mapNonEmpty!48346 m!1123771))

(declare-fun m!1123773 () Bool)

(assert (=> b!1218974 m!1123773))

(declare-fun m!1123775 () Bool)

(assert (=> b!1218974 m!1123775))

(declare-fun m!1123777 () Bool)

(assert (=> b!1218976 m!1123777))

(declare-fun m!1123779 () Bool)

(assert (=> start!101462 m!1123779))

(declare-fun m!1123781 () Bool)

(assert (=> start!101462 m!1123781))

(declare-fun m!1123783 () Bool)

(assert (=> b!1218978 m!1123783))

(declare-fun m!1123785 () Bool)

(assert (=> b!1218978 m!1123785))

(declare-fun m!1123787 () Bool)

(assert (=> b!1218978 m!1123787))

(declare-fun m!1123789 () Bool)

(assert (=> b!1218978 m!1123789))

(declare-fun m!1123791 () Bool)

(assert (=> b!1218987 m!1123791))

(declare-fun m!1123793 () Bool)

(assert (=> b!1218977 m!1123793))

(declare-fun m!1123795 () Bool)

(assert (=> b!1218977 m!1123795))

(declare-fun m!1123797 () Bool)

(assert (=> b!1218972 m!1123797))

(assert (=> b!1218982 m!1123791))

(declare-fun m!1123799 () Bool)

(assert (=> b!1218982 m!1123799))

(assert (=> b!1218982 m!1123799))

(declare-fun m!1123801 () Bool)

(assert (=> b!1218982 m!1123801))

(declare-fun m!1123803 () Bool)

(assert (=> b!1218982 m!1123803))

(declare-fun m!1123805 () Bool)

(assert (=> b!1218983 m!1123805))

(declare-fun m!1123807 () Bool)

(assert (=> b!1218969 m!1123807))

(declare-fun m!1123809 () Bool)

(assert (=> b!1218969 m!1123809))

(declare-fun m!1123811 () Bool)

(assert (=> b!1218984 m!1123811))

(declare-fun m!1123813 () Bool)

(assert (=> b!1218980 m!1123813))

(declare-fun m!1123815 () Bool)

(assert (=> b!1218980 m!1123815))

(declare-fun m!1123817 () Bool)

(assert (=> b!1218980 m!1123817))

(assert (=> b!1218980 m!1123791))

(declare-fun m!1123819 () Bool)

(assert (=> b!1218980 m!1123819))

(declare-fun m!1123821 () Bool)

(assert (=> b!1218980 m!1123821))

(assert (=> b!1218980 m!1123791))

(check-sat (not b!1218969) (not b!1218986) (not b!1218977) (not b_next!26271) (not b!1218978) (not b!1218974) (not b_lambda!22071) (not b!1218980) b_and!43725 (not b!1218985) (not b!1218982) tp_is_empty!30975 (not b!1218981) (not b!1218983) (not b!1218984) (not start!101462) (not mapNonEmpty!48346) (not b!1218972))
(check-sat b_and!43725 (not b_next!26271))
(get-model)

(declare-fun b_lambda!22075 () Bool)

(assert (= b_lambda!22071 (or (and start!101462 b_free!26271) b_lambda!22075)))

(check-sat (not b!1218969) (not b!1218986) (not b_lambda!22075) (not b!1218977) (not b_next!26271) (not b!1218978) (not b!1218974) (not b!1218980) b_and!43725 (not b!1218985) (not b!1218982) tp_is_empty!30975 (not b!1218981) (not b!1218983) (not b!1218984) (not start!101462) (not mapNonEmpty!48346) (not b!1218972))
(check-sat b_and!43725 (not b_next!26271))
(get-model)

(declare-fun d!133613 () Bool)

(declare-fun e!692203 () Bool)

(assert (=> d!133613 e!692203))

(declare-fun res!809773 () Bool)

(assert (=> d!133613 (=> (not res!809773) (not e!692203))))

(declare-fun lt!554213 () ListLongMap!18113)

(declare-fun contains!7032 (ListLongMap!18113 (_ BitVec 64)) Bool)

(assert (=> d!133613 (= res!809773 (not (contains!7032 lt!554213 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!692200 () ListLongMap!18113)

(assert (=> d!133613 (= lt!554213 e!692200)))

(declare-fun c!120117 () Bool)

(assert (=> d!133613 (= c!120117 (bvsge from!1455 (size!38515 lt!554152)))))

(assert (=> d!133613 (validMask!0 mask!1564)))

(assert (=> d!133613 (= (getCurrentListMapNoExtraKeys!5475 lt!554152 lt!554160 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!554213)))

(declare-fun b!1219073 () Bool)

(assert (=> b!1219073 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38515 lt!554152)))))

(assert (=> b!1219073 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38516 lt!554160)))))

(declare-fun e!692198 () Bool)

(declare-fun apply!1008 (ListLongMap!18113 (_ BitVec 64)) V!46427)

(assert (=> b!1219073 (= e!692198 (= (apply!1008 lt!554213 (select (arr!37978 lt!554152) from!1455)) (get!19405 (select (arr!37979 lt!554160) from!1455) (dynLambda!3379 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1219074 () Bool)

(assert (=> b!1219074 (= e!692200 (ListLongMap!18114 Nil!26948))))

(declare-fun b!1219075 () Bool)

(declare-fun e!692199 () ListLongMap!18113)

(declare-fun call!60667 () ListLongMap!18113)

(assert (=> b!1219075 (= e!692199 call!60667)))

(declare-fun b!1219076 () Bool)

(declare-fun e!692202 () Bool)

(declare-fun e!692201 () Bool)

(assert (=> b!1219076 (= e!692202 e!692201)))

(declare-fun c!120115 () Bool)

(assert (=> b!1219076 (= c!120115 (bvslt from!1455 (size!38515 lt!554152)))))

(declare-fun b!1219077 () Bool)

(assert (=> b!1219077 (= e!692201 (= lt!554213 (getCurrentListMapNoExtraKeys!5475 lt!554152 lt!554160 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1219078 () Bool)

(declare-fun e!692197 () Bool)

(assert (=> b!1219078 (= e!692197 (validKeyInArray!0 (select (arr!37978 lt!554152) from!1455)))))

(assert (=> b!1219078 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1219079 () Bool)

(declare-fun isEmpty!1000 (ListLongMap!18113) Bool)

(assert (=> b!1219079 (= e!692201 (isEmpty!1000 lt!554213))))

(declare-fun b!1219080 () Bool)

(assert (=> b!1219080 (= e!692200 e!692199)))

(declare-fun c!120116 () Bool)

(assert (=> b!1219080 (= c!120116 (validKeyInArray!0 (select (arr!37978 lt!554152) from!1455)))))

(declare-fun b!1219081 () Bool)

(declare-fun res!809771 () Bool)

(assert (=> b!1219081 (=> (not res!809771) (not e!692203))))

(assert (=> b!1219081 (= res!809771 (not (contains!7032 lt!554213 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1219082 () Bool)

(declare-fun lt!554215 () Unit!40324)

(declare-fun lt!554212 () Unit!40324)

(assert (=> b!1219082 (= lt!554215 lt!554212)))

(declare-fun lt!554216 () (_ BitVec 64))

(declare-fun lt!554214 () (_ BitVec 64))

(declare-fun lt!554210 () ListLongMap!18113)

(declare-fun lt!554211 () V!46427)

(assert (=> b!1219082 (not (contains!7032 (+!4051 lt!554210 (tuple2!20133 lt!554216 lt!554211)) lt!554214))))

(declare-fun addStillNotContains!303 (ListLongMap!18113 (_ BitVec 64) V!46427 (_ BitVec 64)) Unit!40324)

(assert (=> b!1219082 (= lt!554212 (addStillNotContains!303 lt!554210 lt!554216 lt!554211 lt!554214))))

(assert (=> b!1219082 (= lt!554214 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1219082 (= lt!554211 (get!19405 (select (arr!37979 lt!554160) from!1455) (dynLambda!3379 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1219082 (= lt!554216 (select (arr!37978 lt!554152) from!1455))))

(assert (=> b!1219082 (= lt!554210 call!60667)))

(assert (=> b!1219082 (= e!692199 (+!4051 call!60667 (tuple2!20133 (select (arr!37978 lt!554152) from!1455) (get!19405 (select (arr!37979 lt!554160) from!1455) (dynLambda!3379 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!60664 () Bool)

(assert (=> bm!60664 (= call!60667 (getCurrentListMapNoExtraKeys!5475 lt!554152 lt!554160 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1219083 () Bool)

(assert (=> b!1219083 (= e!692202 e!692198)))

(assert (=> b!1219083 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38515 lt!554152)))))

(declare-fun res!809774 () Bool)

(assert (=> b!1219083 (= res!809774 (contains!7032 lt!554213 (select (arr!37978 lt!554152) from!1455)))))

(assert (=> b!1219083 (=> (not res!809774) (not e!692198))))

(declare-fun b!1219084 () Bool)

(assert (=> b!1219084 (= e!692203 e!692202)))

(declare-fun c!120118 () Bool)

(assert (=> b!1219084 (= c!120118 e!692197)))

(declare-fun res!809772 () Bool)

(assert (=> b!1219084 (=> (not res!809772) (not e!692197))))

(assert (=> b!1219084 (= res!809772 (bvslt from!1455 (size!38515 lt!554152)))))

(assert (= (and d!133613 c!120117) b!1219074))

(assert (= (and d!133613 (not c!120117)) b!1219080))

(assert (= (and b!1219080 c!120116) b!1219082))

(assert (= (and b!1219080 (not c!120116)) b!1219075))

(assert (= (or b!1219082 b!1219075) bm!60664))

(assert (= (and d!133613 res!809773) b!1219081))

(assert (= (and b!1219081 res!809771) b!1219084))

(assert (= (and b!1219084 res!809772) b!1219078))

(assert (= (and b!1219084 c!120118) b!1219083))

(assert (= (and b!1219084 (not c!120118)) b!1219076))

(assert (= (and b!1219083 res!809774) b!1219073))

(assert (= (and b!1219076 c!120115) b!1219077))

(assert (= (and b!1219076 (not c!120115)) b!1219079))

(declare-fun b_lambda!22077 () Bool)

(assert (=> (not b_lambda!22077) (not b!1219073)))

(assert (=> b!1219073 t!40208))

(declare-fun b_and!43731 () Bool)

(assert (= b_and!43725 (and (=> t!40208 result!22753) b_and!43731)))

(declare-fun b_lambda!22079 () Bool)

(assert (=> (not b_lambda!22079) (not b!1219082)))

(assert (=> b!1219082 t!40208))

(declare-fun b_and!43733 () Bool)

(assert (= b_and!43731 (and (=> t!40208 result!22753) b_and!43733)))

(declare-fun m!1123881 () Bool)

(assert (=> d!133613 m!1123881))

(assert (=> d!133613 m!1123767))

(declare-fun m!1123883 () Bool)

(assert (=> bm!60664 m!1123883))

(declare-fun m!1123885 () Bool)

(assert (=> b!1219073 m!1123885))

(assert (=> b!1219073 m!1123885))

(declare-fun m!1123887 () Bool)

(assert (=> b!1219073 m!1123887))

(declare-fun m!1123889 () Bool)

(assert (=> b!1219073 m!1123889))

(assert (=> b!1219073 m!1123787))

(declare-fun m!1123891 () Bool)

(assert (=> b!1219073 m!1123891))

(assert (=> b!1219073 m!1123787))

(assert (=> b!1219073 m!1123889))

(assert (=> b!1219077 m!1123883))

(declare-fun m!1123893 () Bool)

(assert (=> b!1219081 m!1123893))

(declare-fun m!1123895 () Bool)

(assert (=> b!1219079 m!1123895))

(assert (=> b!1219078 m!1123885))

(assert (=> b!1219078 m!1123885))

(declare-fun m!1123897 () Bool)

(assert (=> b!1219078 m!1123897))

(assert (=> b!1219080 m!1123885))

(assert (=> b!1219080 m!1123885))

(assert (=> b!1219080 m!1123897))

(assert (=> b!1219083 m!1123885))

(assert (=> b!1219083 m!1123885))

(declare-fun m!1123899 () Bool)

(assert (=> b!1219083 m!1123899))

(declare-fun m!1123901 () Bool)

(assert (=> b!1219082 m!1123901))

(assert (=> b!1219082 m!1123885))

(declare-fun m!1123903 () Bool)

(assert (=> b!1219082 m!1123903))

(assert (=> b!1219082 m!1123889))

(assert (=> b!1219082 m!1123787))

(assert (=> b!1219082 m!1123891))

(assert (=> b!1219082 m!1123901))

(declare-fun m!1123905 () Bool)

(assert (=> b!1219082 m!1123905))

(assert (=> b!1219082 m!1123787))

(assert (=> b!1219082 m!1123889))

(declare-fun m!1123907 () Bool)

(assert (=> b!1219082 m!1123907))

(assert (=> b!1218978 d!133613))

(declare-fun d!133615 () Bool)

(declare-fun e!692210 () Bool)

(assert (=> d!133615 e!692210))

(declare-fun res!809777 () Bool)

(assert (=> d!133615 (=> (not res!809777) (not e!692210))))

(declare-fun lt!554220 () ListLongMap!18113)

(assert (=> d!133615 (= res!809777 (not (contains!7032 lt!554220 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!692207 () ListLongMap!18113)

(assert (=> d!133615 (= lt!554220 e!692207)))

(declare-fun c!120121 () Bool)

(assert (=> d!133615 (= c!120121 (bvsge from!1455 (size!38515 _keys!1208)))))

(assert (=> d!133615 (validMask!0 mask!1564)))

(assert (=> d!133615 (= (getCurrentListMapNoExtraKeys!5475 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!554220)))

(declare-fun b!1219085 () Bool)

(assert (=> b!1219085 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38515 _keys!1208)))))

(assert (=> b!1219085 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38516 _values!996)))))

(declare-fun e!692205 () Bool)

(assert (=> b!1219085 (= e!692205 (= (apply!1008 lt!554220 (select (arr!37978 _keys!1208) from!1455)) (get!19405 (select (arr!37979 _values!996) from!1455) (dynLambda!3379 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1219086 () Bool)

(assert (=> b!1219086 (= e!692207 (ListLongMap!18114 Nil!26948))))

(declare-fun b!1219087 () Bool)

(declare-fun e!692206 () ListLongMap!18113)

(declare-fun call!60668 () ListLongMap!18113)

(assert (=> b!1219087 (= e!692206 call!60668)))

(declare-fun b!1219088 () Bool)

(declare-fun e!692209 () Bool)

(declare-fun e!692208 () Bool)

(assert (=> b!1219088 (= e!692209 e!692208)))

(declare-fun c!120119 () Bool)

(assert (=> b!1219088 (= c!120119 (bvslt from!1455 (size!38515 _keys!1208)))))

(declare-fun b!1219089 () Bool)

(assert (=> b!1219089 (= e!692208 (= lt!554220 (getCurrentListMapNoExtraKeys!5475 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1219090 () Bool)

(declare-fun e!692204 () Bool)

(assert (=> b!1219090 (= e!692204 (validKeyInArray!0 (select (arr!37978 _keys!1208) from!1455)))))

(assert (=> b!1219090 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1219091 () Bool)

(assert (=> b!1219091 (= e!692208 (isEmpty!1000 lt!554220))))

(declare-fun b!1219092 () Bool)

(assert (=> b!1219092 (= e!692207 e!692206)))

(declare-fun c!120120 () Bool)

(assert (=> b!1219092 (= c!120120 (validKeyInArray!0 (select (arr!37978 _keys!1208) from!1455)))))

(declare-fun b!1219093 () Bool)

(declare-fun res!809775 () Bool)

(assert (=> b!1219093 (=> (not res!809775) (not e!692210))))

(assert (=> b!1219093 (= res!809775 (not (contains!7032 lt!554220 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1219094 () Bool)

(declare-fun lt!554222 () Unit!40324)

(declare-fun lt!554219 () Unit!40324)

(assert (=> b!1219094 (= lt!554222 lt!554219)))

(declare-fun lt!554223 () (_ BitVec 64))

(declare-fun lt!554221 () (_ BitVec 64))

(declare-fun lt!554218 () V!46427)

(declare-fun lt!554217 () ListLongMap!18113)

(assert (=> b!1219094 (not (contains!7032 (+!4051 lt!554217 (tuple2!20133 lt!554223 lt!554218)) lt!554221))))

(assert (=> b!1219094 (= lt!554219 (addStillNotContains!303 lt!554217 lt!554223 lt!554218 lt!554221))))

(assert (=> b!1219094 (= lt!554221 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1219094 (= lt!554218 (get!19405 (select (arr!37979 _values!996) from!1455) (dynLambda!3379 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1219094 (= lt!554223 (select (arr!37978 _keys!1208) from!1455))))

(assert (=> b!1219094 (= lt!554217 call!60668)))

(assert (=> b!1219094 (= e!692206 (+!4051 call!60668 (tuple2!20133 (select (arr!37978 _keys!1208) from!1455) (get!19405 (select (arr!37979 _values!996) from!1455) (dynLambda!3379 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!60665 () Bool)

(assert (=> bm!60665 (= call!60668 (getCurrentListMapNoExtraKeys!5475 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1219095 () Bool)

(assert (=> b!1219095 (= e!692209 e!692205)))

(assert (=> b!1219095 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38515 _keys!1208)))))

(declare-fun res!809778 () Bool)

(assert (=> b!1219095 (= res!809778 (contains!7032 lt!554220 (select (arr!37978 _keys!1208) from!1455)))))

(assert (=> b!1219095 (=> (not res!809778) (not e!692205))))

(declare-fun b!1219096 () Bool)

(assert (=> b!1219096 (= e!692210 e!692209)))

(declare-fun c!120122 () Bool)

(assert (=> b!1219096 (= c!120122 e!692204)))

(declare-fun res!809776 () Bool)

(assert (=> b!1219096 (=> (not res!809776) (not e!692204))))

(assert (=> b!1219096 (= res!809776 (bvslt from!1455 (size!38515 _keys!1208)))))

(assert (= (and d!133615 c!120121) b!1219086))

(assert (= (and d!133615 (not c!120121)) b!1219092))

(assert (= (and b!1219092 c!120120) b!1219094))

(assert (= (and b!1219092 (not c!120120)) b!1219087))

(assert (= (or b!1219094 b!1219087) bm!60665))

(assert (= (and d!133615 res!809777) b!1219093))

(assert (= (and b!1219093 res!809775) b!1219096))

(assert (= (and b!1219096 res!809776) b!1219090))

(assert (= (and b!1219096 c!120122) b!1219095))

(assert (= (and b!1219096 (not c!120122)) b!1219088))

(assert (= (and b!1219095 res!809778) b!1219085))

(assert (= (and b!1219088 c!120119) b!1219089))

(assert (= (and b!1219088 (not c!120119)) b!1219091))

(declare-fun b_lambda!22081 () Bool)

(assert (=> (not b_lambda!22081) (not b!1219085)))

(assert (=> b!1219085 t!40208))

(declare-fun b_and!43735 () Bool)

(assert (= b_and!43733 (and (=> t!40208 result!22753) b_and!43735)))

(declare-fun b_lambda!22083 () Bool)

(assert (=> (not b_lambda!22083) (not b!1219094)))

(assert (=> b!1219094 t!40208))

(declare-fun b_and!43737 () Bool)

(assert (= b_and!43735 (and (=> t!40208 result!22753) b_and!43737)))

(declare-fun m!1123909 () Bool)

(assert (=> d!133615 m!1123909))

(assert (=> d!133615 m!1123767))

(declare-fun m!1123911 () Bool)

(assert (=> bm!60665 m!1123911))

(assert (=> b!1219085 m!1123791))

(assert (=> b!1219085 m!1123791))

(declare-fun m!1123913 () Bool)

(assert (=> b!1219085 m!1123913))

(assert (=> b!1219085 m!1123799))

(assert (=> b!1219085 m!1123787))

(declare-fun m!1123915 () Bool)

(assert (=> b!1219085 m!1123915))

(assert (=> b!1219085 m!1123787))

(assert (=> b!1219085 m!1123799))

(assert (=> b!1219089 m!1123911))

(declare-fun m!1123917 () Bool)

(assert (=> b!1219093 m!1123917))

(declare-fun m!1123919 () Bool)

(assert (=> b!1219091 m!1123919))

(assert (=> b!1219090 m!1123791))

(assert (=> b!1219090 m!1123791))

(assert (=> b!1219090 m!1123819))

(assert (=> b!1219092 m!1123791))

(assert (=> b!1219092 m!1123791))

(assert (=> b!1219092 m!1123819))

(assert (=> b!1219095 m!1123791))

(assert (=> b!1219095 m!1123791))

(declare-fun m!1123921 () Bool)

(assert (=> b!1219095 m!1123921))

(declare-fun m!1123923 () Bool)

(assert (=> b!1219094 m!1123923))

(assert (=> b!1219094 m!1123791))

(declare-fun m!1123925 () Bool)

(assert (=> b!1219094 m!1123925))

(assert (=> b!1219094 m!1123799))

(assert (=> b!1219094 m!1123787))

(assert (=> b!1219094 m!1123915))

(assert (=> b!1219094 m!1123923))

(declare-fun m!1123927 () Bool)

(assert (=> b!1219094 m!1123927))

(assert (=> b!1219094 m!1123787))

(assert (=> b!1219094 m!1123799))

(declare-fun m!1123929 () Bool)

(assert (=> b!1219094 m!1123929))

(assert (=> b!1218978 d!133615))

(declare-fun d!133617 () Bool)

(declare-fun res!809783 () Bool)

(declare-fun e!692215 () Bool)

(assert (=> d!133617 (=> res!809783 e!692215)))

(assert (=> d!133617 (= res!809783 (= (select (arr!37978 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) k0!934))))

(assert (=> d!133617 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)) e!692215)))

(declare-fun b!1219101 () Bool)

(declare-fun e!692216 () Bool)

(assert (=> b!1219101 (= e!692215 e!692216)))

(declare-fun res!809784 () Bool)

(assert (=> b!1219101 (=> (not res!809784) (not e!692216))))

(assert (=> b!1219101 (= res!809784 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38515 _keys!1208)))))

(declare-fun b!1219102 () Bool)

(assert (=> b!1219102 (= e!692216 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (= (and d!133617 (not res!809783)) b!1219101))

(assert (= (and b!1219101 res!809784) b!1219102))

(declare-fun m!1123931 () Bool)

(assert (=> d!133617 m!1123931))

(declare-fun m!1123933 () Bool)

(assert (=> b!1219102 m!1123933))

(assert (=> b!1218969 d!133617))

(declare-fun d!133619 () Bool)

(assert (=> d!133619 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!554226 () Unit!40324)

(declare-fun choose!114 (array!78700 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40324)

(assert (=> d!133619 (= lt!554226 (choose!114 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> d!133619 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133619 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)) lt!554226)))

(declare-fun bs!34333 () Bool)

(assert (= bs!34333 d!133619))

(assert (=> bs!34333 m!1123807))

(declare-fun m!1123935 () Bool)

(assert (=> bs!34333 m!1123935))

(assert (=> b!1218969 d!133619))

(declare-fun d!133621 () Bool)

(declare-fun res!809785 () Bool)

(declare-fun e!692217 () Bool)

(assert (=> d!133621 (=> res!809785 e!692217)))

(assert (=> d!133621 (= res!809785 (= (select (arr!37978 _keys!1208) i!673) k0!934))))

(assert (=> d!133621 (= (arrayContainsKey!0 _keys!1208 k0!934 i!673) e!692217)))

(declare-fun b!1219103 () Bool)

(declare-fun e!692218 () Bool)

(assert (=> b!1219103 (= e!692217 e!692218)))

(declare-fun res!809786 () Bool)

(assert (=> b!1219103 (=> (not res!809786) (not e!692218))))

(assert (=> b!1219103 (= res!809786 (bvslt (bvadd i!673 #b00000000000000000000000000000001) (size!38515 _keys!1208)))))

(declare-fun b!1219104 () Bool)

(assert (=> b!1219104 (= e!692218 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd i!673 #b00000000000000000000000000000001)))))

(assert (= (and d!133621 (not res!809785)) b!1219103))

(assert (= (and b!1219103 res!809786) b!1219104))

(assert (=> d!133621 m!1123777))

(declare-fun m!1123937 () Bool)

(assert (=> b!1219104 m!1123937))

(assert (=> b!1218986 d!133621))

(declare-fun d!133623 () Bool)

(declare-fun res!809791 () Bool)

(declare-fun e!692225 () Bool)

(assert (=> d!133623 (=> res!809791 e!692225)))

(assert (=> d!133623 (= res!809791 (bvsge #b00000000000000000000000000000000 (size!38515 lt!554152)))))

(assert (=> d!133623 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554152 mask!1564) e!692225)))

(declare-fun bm!60668 () Bool)

(declare-fun call!60671 () Bool)

(assert (=> bm!60668 (= call!60671 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!554152 mask!1564))))

(declare-fun b!1219113 () Bool)

(declare-fun e!692226 () Bool)

(assert (=> b!1219113 (= e!692225 e!692226)))

(declare-fun c!120125 () Bool)

(assert (=> b!1219113 (= c!120125 (validKeyInArray!0 (select (arr!37978 lt!554152) #b00000000000000000000000000000000)))))

(declare-fun b!1219114 () Bool)

(assert (=> b!1219114 (= e!692226 call!60671)))

(declare-fun b!1219115 () Bool)

(declare-fun e!692227 () Bool)

(assert (=> b!1219115 (= e!692226 e!692227)))

(declare-fun lt!554235 () (_ BitVec 64))

(assert (=> b!1219115 (= lt!554235 (select (arr!37978 lt!554152) #b00000000000000000000000000000000))))

(declare-fun lt!554234 () Unit!40324)

(assert (=> b!1219115 (= lt!554234 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!554152 lt!554235 #b00000000000000000000000000000000))))

(assert (=> b!1219115 (arrayContainsKey!0 lt!554152 lt!554235 #b00000000000000000000000000000000)))

(declare-fun lt!554233 () Unit!40324)

(assert (=> b!1219115 (= lt!554233 lt!554234)))

(declare-fun res!809792 () Bool)

(declare-datatypes ((SeekEntryResult!9943 0))(
  ( (MissingZero!9943 (index!42142 (_ BitVec 32))) (Found!9943 (index!42143 (_ BitVec 32))) (Intermediate!9943 (undefined!10755 Bool) (index!42144 (_ BitVec 32)) (x!107386 (_ BitVec 32))) (Undefined!9943) (MissingVacant!9943 (index!42145 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!78700 (_ BitVec 32)) SeekEntryResult!9943)

(assert (=> b!1219115 (= res!809792 (= (seekEntryOrOpen!0 (select (arr!37978 lt!554152) #b00000000000000000000000000000000) lt!554152 mask!1564) (Found!9943 #b00000000000000000000000000000000)))))

(assert (=> b!1219115 (=> (not res!809792) (not e!692227))))

(declare-fun b!1219116 () Bool)

(assert (=> b!1219116 (= e!692227 call!60671)))

(assert (= (and d!133623 (not res!809791)) b!1219113))

(assert (= (and b!1219113 c!120125) b!1219115))

(assert (= (and b!1219113 (not c!120125)) b!1219114))

(assert (= (and b!1219115 res!809792) b!1219116))

(assert (= (or b!1219116 b!1219114) bm!60668))

(declare-fun m!1123939 () Bool)

(assert (=> bm!60668 m!1123939))

(declare-fun m!1123941 () Bool)

(assert (=> b!1219113 m!1123941))

(assert (=> b!1219113 m!1123941))

(declare-fun m!1123943 () Bool)

(assert (=> b!1219113 m!1123943))

(assert (=> b!1219115 m!1123941))

(declare-fun m!1123945 () Bool)

(assert (=> b!1219115 m!1123945))

(declare-fun m!1123947 () Bool)

(assert (=> b!1219115 m!1123947))

(assert (=> b!1219115 m!1123941))

(declare-fun m!1123949 () Bool)

(assert (=> b!1219115 m!1123949))

(assert (=> b!1218977 d!133623))

(declare-fun b!1219127 () Bool)

(declare-fun e!692239 () Bool)

(declare-fun call!60674 () Bool)

(assert (=> b!1219127 (= e!692239 call!60674)))

(declare-fun b!1219128 () Bool)

(assert (=> b!1219128 (= e!692239 call!60674)))

(declare-fun d!133625 () Bool)

(declare-fun res!809801 () Bool)

(declare-fun e!692236 () Bool)

(assert (=> d!133625 (=> res!809801 e!692236)))

(assert (=> d!133625 (= res!809801 (bvsge #b00000000000000000000000000000000 (size!38515 _keys!1208)))))

(assert (=> d!133625 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26949) e!692236)))

(declare-fun bm!60671 () Bool)

(declare-fun c!120128 () Bool)

(assert (=> bm!60671 (= call!60674 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120128 (Cons!26948 (select (arr!37978 _keys!1208) #b00000000000000000000000000000000) Nil!26949) Nil!26949)))))

(declare-fun b!1219129 () Bool)

(declare-fun e!692238 () Bool)

(declare-fun contains!7033 (List!26952 (_ BitVec 64)) Bool)

(assert (=> b!1219129 (= e!692238 (contains!7033 Nil!26949 (select (arr!37978 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1219130 () Bool)

(declare-fun e!692237 () Bool)

(assert (=> b!1219130 (= e!692237 e!692239)))

(assert (=> b!1219130 (= c!120128 (validKeyInArray!0 (select (arr!37978 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1219131 () Bool)

(assert (=> b!1219131 (= e!692236 e!692237)))

(declare-fun res!809800 () Bool)

(assert (=> b!1219131 (=> (not res!809800) (not e!692237))))

(assert (=> b!1219131 (= res!809800 (not e!692238))))

(declare-fun res!809799 () Bool)

(assert (=> b!1219131 (=> (not res!809799) (not e!692238))))

(assert (=> b!1219131 (= res!809799 (validKeyInArray!0 (select (arr!37978 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!133625 (not res!809801)) b!1219131))

(assert (= (and b!1219131 res!809799) b!1219129))

(assert (= (and b!1219131 res!809800) b!1219130))

(assert (= (and b!1219130 c!120128) b!1219128))

(assert (= (and b!1219130 (not c!120128)) b!1219127))

(assert (= (or b!1219128 b!1219127) bm!60671))

(declare-fun m!1123951 () Bool)

(assert (=> bm!60671 m!1123951))

(declare-fun m!1123953 () Bool)

(assert (=> bm!60671 m!1123953))

(assert (=> b!1219129 m!1123951))

(assert (=> b!1219129 m!1123951))

(declare-fun m!1123955 () Bool)

(assert (=> b!1219129 m!1123955))

(assert (=> b!1219130 m!1123951))

(assert (=> b!1219130 m!1123951))

(declare-fun m!1123957 () Bool)

(assert (=> b!1219130 m!1123957))

(assert (=> b!1219131 m!1123951))

(assert (=> b!1219131 m!1123951))

(assert (=> b!1219131 m!1123957))

(assert (=> b!1218985 d!133625))

(declare-fun d!133627 () Bool)

(assert (=> d!133627 (= (array_inv!28816 _keys!1208) (bvsge (size!38515 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!101462 d!133627))

(declare-fun d!133629 () Bool)

(assert (=> d!133629 (= (array_inv!28817 _values!996) (bvsge (size!38516 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!101462 d!133629))

(declare-fun d!133631 () Bool)

(assert (=> d!133631 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1218984 d!133631))

(declare-fun b!1219132 () Bool)

(declare-fun e!692243 () Bool)

(declare-fun call!60675 () Bool)

(assert (=> b!1219132 (= e!692243 call!60675)))

(declare-fun b!1219133 () Bool)

(assert (=> b!1219133 (= e!692243 call!60675)))

(declare-fun d!133633 () Bool)

(declare-fun res!809804 () Bool)

(declare-fun e!692240 () Bool)

(assert (=> d!133633 (=> res!809804 e!692240)))

(assert (=> d!133633 (= res!809804 (bvsge #b00000000000000000000000000000000 (size!38515 lt!554152)))))

(assert (=> d!133633 (= (arrayNoDuplicates!0 lt!554152 #b00000000000000000000000000000000 Nil!26949) e!692240)))

(declare-fun bm!60672 () Bool)

(declare-fun c!120129 () Bool)

(assert (=> bm!60672 (= call!60675 (arrayNoDuplicates!0 lt!554152 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120129 (Cons!26948 (select (arr!37978 lt!554152) #b00000000000000000000000000000000) Nil!26949) Nil!26949)))))

(declare-fun b!1219134 () Bool)

(declare-fun e!692242 () Bool)

(assert (=> b!1219134 (= e!692242 (contains!7033 Nil!26949 (select (arr!37978 lt!554152) #b00000000000000000000000000000000)))))

(declare-fun b!1219135 () Bool)

(declare-fun e!692241 () Bool)

(assert (=> b!1219135 (= e!692241 e!692243)))

(assert (=> b!1219135 (= c!120129 (validKeyInArray!0 (select (arr!37978 lt!554152) #b00000000000000000000000000000000)))))

(declare-fun b!1219136 () Bool)

(assert (=> b!1219136 (= e!692240 e!692241)))

(declare-fun res!809803 () Bool)

(assert (=> b!1219136 (=> (not res!809803) (not e!692241))))

(assert (=> b!1219136 (= res!809803 (not e!692242))))

(declare-fun res!809802 () Bool)

(assert (=> b!1219136 (=> (not res!809802) (not e!692242))))

(assert (=> b!1219136 (= res!809802 (validKeyInArray!0 (select (arr!37978 lt!554152) #b00000000000000000000000000000000)))))

(assert (= (and d!133633 (not res!809804)) b!1219136))

(assert (= (and b!1219136 res!809802) b!1219134))

(assert (= (and b!1219136 res!809803) b!1219135))

(assert (= (and b!1219135 c!120129) b!1219133))

(assert (= (and b!1219135 (not c!120129)) b!1219132))

(assert (= (or b!1219133 b!1219132) bm!60672))

(assert (=> bm!60672 m!1123941))

(declare-fun m!1123959 () Bool)

(assert (=> bm!60672 m!1123959))

(assert (=> b!1219134 m!1123941))

(assert (=> b!1219134 m!1123941))

(declare-fun m!1123961 () Bool)

(assert (=> b!1219134 m!1123961))

(assert (=> b!1219135 m!1123941))

(assert (=> b!1219135 m!1123941))

(assert (=> b!1219135 m!1123943))

(assert (=> b!1219136 m!1123941))

(assert (=> b!1219136 m!1123941))

(assert (=> b!1219136 m!1123943))

(assert (=> b!1218983 d!133633))

(declare-fun d!133635 () Bool)

(declare-fun res!809805 () Bool)

(declare-fun e!692244 () Bool)

(assert (=> d!133635 (=> res!809805 e!692244)))

(assert (=> d!133635 (= res!809805 (= (select (arr!37978 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!133635 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!692244)))

(declare-fun b!1219137 () Bool)

(declare-fun e!692245 () Bool)

(assert (=> b!1219137 (= e!692244 e!692245)))

(declare-fun res!809806 () Bool)

(assert (=> b!1219137 (=> (not res!809806) (not e!692245))))

(assert (=> b!1219137 (= res!809806 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38515 _keys!1208)))))

(declare-fun b!1219138 () Bool)

(assert (=> b!1219138 (= e!692245 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!133635 (not res!809805)) b!1219137))

(assert (= (and b!1219137 res!809806) b!1219138))

(assert (=> d!133635 m!1123951))

(declare-fun m!1123963 () Bool)

(assert (=> b!1219138 m!1123963))

(assert (=> b!1218974 d!133635))

(declare-fun d!133637 () Bool)

(assert (=> d!133637 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!554238 () Unit!40324)

(declare-fun choose!13 (array!78700 (_ BitVec 64) (_ BitVec 32)) Unit!40324)

(assert (=> d!133637 (= lt!554238 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!133637 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133637 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!554238)))

(declare-fun bs!34334 () Bool)

(assert (= bs!34334 d!133637))

(assert (=> bs!34334 m!1123773))

(declare-fun m!1123965 () Bool)

(assert (=> bs!34334 m!1123965))

(assert (=> b!1218974 d!133637))

(declare-fun d!133639 () Bool)

(declare-fun res!809807 () Bool)

(declare-fun e!692246 () Bool)

(assert (=> d!133639 (=> res!809807 e!692246)))

(assert (=> d!133639 (= res!809807 (bvsge #b00000000000000000000000000000000 (size!38515 _keys!1208)))))

(assert (=> d!133639 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!692246)))

(declare-fun bm!60673 () Bool)

(declare-fun call!60676 () Bool)

(assert (=> bm!60673 (= call!60676 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1219139 () Bool)

(declare-fun e!692247 () Bool)

(assert (=> b!1219139 (= e!692246 e!692247)))

(declare-fun c!120130 () Bool)

(assert (=> b!1219139 (= c!120130 (validKeyInArray!0 (select (arr!37978 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1219140 () Bool)

(assert (=> b!1219140 (= e!692247 call!60676)))

(declare-fun b!1219141 () Bool)

(declare-fun e!692248 () Bool)

(assert (=> b!1219141 (= e!692247 e!692248)))

(declare-fun lt!554241 () (_ BitVec 64))

(assert (=> b!1219141 (= lt!554241 (select (arr!37978 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!554240 () Unit!40324)

(assert (=> b!1219141 (= lt!554240 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!554241 #b00000000000000000000000000000000))))

(assert (=> b!1219141 (arrayContainsKey!0 _keys!1208 lt!554241 #b00000000000000000000000000000000)))

(declare-fun lt!554239 () Unit!40324)

(assert (=> b!1219141 (= lt!554239 lt!554240)))

(declare-fun res!809808 () Bool)

(assert (=> b!1219141 (= res!809808 (= (seekEntryOrOpen!0 (select (arr!37978 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9943 #b00000000000000000000000000000000)))))

(assert (=> b!1219141 (=> (not res!809808) (not e!692248))))

(declare-fun b!1219142 () Bool)

(assert (=> b!1219142 (= e!692248 call!60676)))

(assert (= (and d!133639 (not res!809807)) b!1219139))

(assert (= (and b!1219139 c!120130) b!1219141))

(assert (= (and b!1219139 (not c!120130)) b!1219140))

(assert (= (and b!1219141 res!809808) b!1219142))

(assert (= (or b!1219142 b!1219140) bm!60673))

(declare-fun m!1123967 () Bool)

(assert (=> bm!60673 m!1123967))

(assert (=> b!1219139 m!1123951))

(assert (=> b!1219139 m!1123951))

(assert (=> b!1219139 m!1123957))

(assert (=> b!1219141 m!1123951))

(declare-fun m!1123969 () Bool)

(assert (=> b!1219141 m!1123969))

(declare-fun m!1123971 () Bool)

(assert (=> b!1219141 m!1123971))

(assert (=> b!1219141 m!1123951))

(declare-fun m!1123973 () Bool)

(assert (=> b!1219141 m!1123973))

(assert (=> b!1218972 d!133639))

(declare-fun d!133641 () Bool)

(declare-fun e!692251 () Bool)

(assert (=> d!133641 e!692251))

(declare-fun res!809813 () Bool)

(assert (=> d!133641 (=> (not res!809813) (not e!692251))))

(declare-fun lt!554253 () ListLongMap!18113)

(assert (=> d!133641 (= res!809813 (contains!7032 lt!554253 (_1!10076 (tuple2!20133 (select (arr!37978 _keys!1208) from!1455) (get!19405 (select (arr!37979 _values!996) from!1455) lt!554154)))))))

(declare-fun lt!554250 () List!26951)

(assert (=> d!133641 (= lt!554253 (ListLongMap!18114 lt!554250))))

(declare-fun lt!554251 () Unit!40324)

(declare-fun lt!554252 () Unit!40324)

(assert (=> d!133641 (= lt!554251 lt!554252)))

(declare-datatypes ((Option!698 0))(
  ( (Some!697 (v!18203 V!46427)) (None!696) )
))
(declare-fun getValueByKey!647 (List!26951 (_ BitVec 64)) Option!698)

(assert (=> d!133641 (= (getValueByKey!647 lt!554250 (_1!10076 (tuple2!20133 (select (arr!37978 _keys!1208) from!1455) (get!19405 (select (arr!37979 _values!996) from!1455) lt!554154)))) (Some!697 (_2!10076 (tuple2!20133 (select (arr!37978 _keys!1208) from!1455) (get!19405 (select (arr!37979 _values!996) from!1455) lt!554154)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!322 (List!26951 (_ BitVec 64) V!46427) Unit!40324)

(assert (=> d!133641 (= lt!554252 (lemmaContainsTupThenGetReturnValue!322 lt!554250 (_1!10076 (tuple2!20133 (select (arr!37978 _keys!1208) from!1455) (get!19405 (select (arr!37979 _values!996) from!1455) lt!554154))) (_2!10076 (tuple2!20133 (select (arr!37978 _keys!1208) from!1455) (get!19405 (select (arr!37979 _values!996) from!1455) lt!554154)))))))

(declare-fun insertStrictlySorted!414 (List!26951 (_ BitVec 64) V!46427) List!26951)

(assert (=> d!133641 (= lt!554250 (insertStrictlySorted!414 (toList!9072 lt!554158) (_1!10076 (tuple2!20133 (select (arr!37978 _keys!1208) from!1455) (get!19405 (select (arr!37979 _values!996) from!1455) lt!554154))) (_2!10076 (tuple2!20133 (select (arr!37978 _keys!1208) from!1455) (get!19405 (select (arr!37979 _values!996) from!1455) lt!554154)))))))

(assert (=> d!133641 (= (+!4051 lt!554158 (tuple2!20133 (select (arr!37978 _keys!1208) from!1455) (get!19405 (select (arr!37979 _values!996) from!1455) lt!554154))) lt!554253)))

(declare-fun b!1219147 () Bool)

(declare-fun res!809814 () Bool)

(assert (=> b!1219147 (=> (not res!809814) (not e!692251))))

(assert (=> b!1219147 (= res!809814 (= (getValueByKey!647 (toList!9072 lt!554253) (_1!10076 (tuple2!20133 (select (arr!37978 _keys!1208) from!1455) (get!19405 (select (arr!37979 _values!996) from!1455) lt!554154)))) (Some!697 (_2!10076 (tuple2!20133 (select (arr!37978 _keys!1208) from!1455) (get!19405 (select (arr!37979 _values!996) from!1455) lt!554154))))))))

(declare-fun b!1219148 () Bool)

(declare-fun contains!7034 (List!26951 tuple2!20132) Bool)

(assert (=> b!1219148 (= e!692251 (contains!7034 (toList!9072 lt!554253) (tuple2!20133 (select (arr!37978 _keys!1208) from!1455) (get!19405 (select (arr!37979 _values!996) from!1455) lt!554154))))))

(assert (= (and d!133641 res!809813) b!1219147))

(assert (= (and b!1219147 res!809814) b!1219148))

(declare-fun m!1123975 () Bool)

(assert (=> d!133641 m!1123975))

(declare-fun m!1123977 () Bool)

(assert (=> d!133641 m!1123977))

(declare-fun m!1123979 () Bool)

(assert (=> d!133641 m!1123979))

(declare-fun m!1123981 () Bool)

(assert (=> d!133641 m!1123981))

(declare-fun m!1123983 () Bool)

(assert (=> b!1219147 m!1123983))

(declare-fun m!1123985 () Bool)

(assert (=> b!1219148 m!1123985))

(assert (=> b!1218982 d!133641))

(declare-fun d!133643 () Bool)

(declare-fun c!120133 () Bool)

(assert (=> d!133643 (= c!120133 ((_ is ValueCellFull!14778) (select (arr!37979 _values!996) from!1455)))))

(declare-fun e!692254 () V!46427)

(assert (=> d!133643 (= (get!19405 (select (arr!37979 _values!996) from!1455) lt!554154) e!692254)))

(declare-fun b!1219153 () Bool)

(declare-fun get!19407 (ValueCell!14778 V!46427) V!46427)

(assert (=> b!1219153 (= e!692254 (get!19407 (select (arr!37979 _values!996) from!1455) lt!554154))))

(declare-fun b!1219154 () Bool)

(declare-fun get!19408 (ValueCell!14778 V!46427) V!46427)

(assert (=> b!1219154 (= e!692254 (get!19408 (select (arr!37979 _values!996) from!1455) lt!554154))))

(assert (= (and d!133643 c!120133) b!1219153))

(assert (= (and d!133643 (not c!120133)) b!1219154))

(assert (=> b!1219153 m!1123799))

(declare-fun m!1123987 () Bool)

(assert (=> b!1219153 m!1123987))

(assert (=> b!1219154 m!1123799))

(declare-fun m!1123989 () Bool)

(assert (=> b!1219154 m!1123989))

(assert (=> b!1218982 d!133643))

(declare-fun d!133645 () Bool)

(assert (=> d!133645 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1218981 d!133645))

(declare-fun d!133647 () Bool)

(assert (=> d!133647 (= (validKeyInArray!0 (select (arr!37978 _keys!1208) from!1455)) (and (not (= (select (arr!37978 _keys!1208) from!1455) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!37978 _keys!1208) from!1455) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1218980 d!133647))

(declare-fun d!133649 () Bool)

(declare-fun lt!554256 () ListLongMap!18113)

(assert (=> d!133649 (not (contains!7032 lt!554256 k0!934))))

(declare-fun removeStrictlySorted!107 (List!26951 (_ BitVec 64)) List!26951)

(assert (=> d!133649 (= lt!554256 (ListLongMap!18114 (removeStrictlySorted!107 (toList!9072 lt!554162) k0!934)))))

(assert (=> d!133649 (= (-!1929 lt!554162 k0!934) lt!554256)))

(declare-fun bs!34335 () Bool)

(assert (= bs!34335 d!133649))

(declare-fun m!1123991 () Bool)

(assert (=> bs!34335 m!1123991))

(declare-fun m!1123993 () Bool)

(assert (=> bs!34335 m!1123993))

(assert (=> b!1218980 d!133649))

(declare-fun call!60681 () ListLongMap!18113)

(declare-fun bm!60678 () Bool)

(assert (=> bm!60678 (= call!60681 (getCurrentListMapNoExtraKeys!5475 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1219161 () Bool)

(declare-fun e!692260 () Bool)

(declare-fun call!60682 () ListLongMap!18113)

(assert (=> b!1219161 (= e!692260 (= call!60682 call!60681))))

(assert (=> b!1219161 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38516 _values!996)))))

(declare-fun d!133651 () Bool)

(declare-fun e!692259 () Bool)

(assert (=> d!133651 e!692259))

(declare-fun res!809817 () Bool)

(assert (=> d!133651 (=> (not res!809817) (not e!692259))))

(assert (=> d!133651 (= res!809817 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38515 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38515 _keys!1208))))))))

(declare-fun lt!554259 () Unit!40324)

(declare-fun choose!1831 (array!78700 array!78702 (_ BitVec 32) (_ BitVec 32) V!46427 V!46427 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40324)

(assert (=> d!133651 (= lt!554259 (choose!1831 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133651 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38515 _keys!1208)))))

(assert (=> d!133651 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1131 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!554259)))

(declare-fun bm!60679 () Bool)

(assert (=> bm!60679 (= call!60682 (getCurrentListMapNoExtraKeys!5475 (array!78701 (store (arr!37978 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38515 _keys!1208)) (array!78703 (store (arr!37979 _values!996) i!673 (ValueCellFull!14778 (dynLambda!3379 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38516 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1219162 () Bool)

(assert (=> b!1219162 (= e!692260 (= call!60682 (-!1929 call!60681 k0!934)))))

(assert (=> b!1219162 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38516 _values!996)))))

(declare-fun b!1219163 () Bool)

(assert (=> b!1219163 (= e!692259 e!692260)))

(declare-fun c!120136 () Bool)

(assert (=> b!1219163 (= c!120136 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(assert (= (and d!133651 res!809817) b!1219163))

(assert (= (and b!1219163 c!120136) b!1219162))

(assert (= (and b!1219163 (not c!120136)) b!1219161))

(assert (= (or b!1219162 b!1219161) bm!60678))

(assert (= (or b!1219162 b!1219161) bm!60679))

(declare-fun b_lambda!22085 () Bool)

(assert (=> (not b_lambda!22085) (not bm!60679)))

(assert (=> bm!60679 t!40208))

(declare-fun b_and!43739 () Bool)

(assert (= b_and!43737 (and (=> t!40208 result!22753) b_and!43739)))

(assert (=> bm!60678 m!1123813))

(declare-fun m!1123995 () Bool)

(assert (=> d!133651 m!1123995))

(assert (=> bm!60679 m!1123795))

(assert (=> bm!60679 m!1123787))

(declare-fun m!1123997 () Bool)

(assert (=> bm!60679 m!1123997))

(declare-fun m!1123999 () Bool)

(assert (=> bm!60679 m!1123999))

(declare-fun m!1124001 () Bool)

(assert (=> b!1219162 m!1124001))

(assert (=> b!1218980 d!133651))

(declare-fun d!133653 () Bool)

(declare-fun e!692267 () Bool)

(assert (=> d!133653 e!692267))

(declare-fun res!809820 () Bool)

(assert (=> d!133653 (=> (not res!809820) (not e!692267))))

(declare-fun lt!554263 () ListLongMap!18113)

(assert (=> d!133653 (= res!809820 (not (contains!7032 lt!554263 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!692264 () ListLongMap!18113)

(assert (=> d!133653 (= lt!554263 e!692264)))

(declare-fun c!120139 () Bool)

(assert (=> d!133653 (= c!120139 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38515 _keys!1208)))))

(assert (=> d!133653 (validMask!0 mask!1564)))

(assert (=> d!133653 (= (getCurrentListMapNoExtraKeys!5475 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!554263)))

(declare-fun b!1219164 () Bool)

(assert (=> b!1219164 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38515 _keys!1208)))))

(assert (=> b!1219164 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38516 _values!996)))))

(declare-fun e!692262 () Bool)

(assert (=> b!1219164 (= e!692262 (= (apply!1008 lt!554263 (select (arr!37978 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19405 (select (arr!37979 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3379 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1219165 () Bool)

(assert (=> b!1219165 (= e!692264 (ListLongMap!18114 Nil!26948))))

(declare-fun b!1219166 () Bool)

(declare-fun e!692263 () ListLongMap!18113)

(declare-fun call!60683 () ListLongMap!18113)

(assert (=> b!1219166 (= e!692263 call!60683)))

(declare-fun b!1219167 () Bool)

(declare-fun e!692266 () Bool)

(declare-fun e!692265 () Bool)

(assert (=> b!1219167 (= e!692266 e!692265)))

(declare-fun c!120137 () Bool)

(assert (=> b!1219167 (= c!120137 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38515 _keys!1208)))))

(declare-fun b!1219168 () Bool)

(assert (=> b!1219168 (= e!692265 (= lt!554263 (getCurrentListMapNoExtraKeys!5475 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1219169 () Bool)

(declare-fun e!692261 () Bool)

(assert (=> b!1219169 (= e!692261 (validKeyInArray!0 (select (arr!37978 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1219169 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1219170 () Bool)

(assert (=> b!1219170 (= e!692265 (isEmpty!1000 lt!554263))))

(declare-fun b!1219171 () Bool)

(assert (=> b!1219171 (= e!692264 e!692263)))

(declare-fun c!120138 () Bool)

(assert (=> b!1219171 (= c!120138 (validKeyInArray!0 (select (arr!37978 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1219172 () Bool)

(declare-fun res!809818 () Bool)

(assert (=> b!1219172 (=> (not res!809818) (not e!692267))))

(assert (=> b!1219172 (= res!809818 (not (contains!7032 lt!554263 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1219173 () Bool)

(declare-fun lt!554265 () Unit!40324)

(declare-fun lt!554262 () Unit!40324)

(assert (=> b!1219173 (= lt!554265 lt!554262)))

(declare-fun lt!554261 () V!46427)

(declare-fun lt!554264 () (_ BitVec 64))

(declare-fun lt!554260 () ListLongMap!18113)

(declare-fun lt!554266 () (_ BitVec 64))

(assert (=> b!1219173 (not (contains!7032 (+!4051 lt!554260 (tuple2!20133 lt!554266 lt!554261)) lt!554264))))

(assert (=> b!1219173 (= lt!554262 (addStillNotContains!303 lt!554260 lt!554266 lt!554261 lt!554264))))

(assert (=> b!1219173 (= lt!554264 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1219173 (= lt!554261 (get!19405 (select (arr!37979 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3379 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1219173 (= lt!554266 (select (arr!37978 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1219173 (= lt!554260 call!60683)))

(assert (=> b!1219173 (= e!692263 (+!4051 call!60683 (tuple2!20133 (select (arr!37978 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19405 (select (arr!37979 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3379 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!60680 () Bool)

(assert (=> bm!60680 (= call!60683 (getCurrentListMapNoExtraKeys!5475 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1219174 () Bool)

(assert (=> b!1219174 (= e!692266 e!692262)))

(assert (=> b!1219174 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38515 _keys!1208)))))

(declare-fun res!809821 () Bool)

(assert (=> b!1219174 (= res!809821 (contains!7032 lt!554263 (select (arr!37978 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1219174 (=> (not res!809821) (not e!692262))))

(declare-fun b!1219175 () Bool)

(assert (=> b!1219175 (= e!692267 e!692266)))

(declare-fun c!120140 () Bool)

(assert (=> b!1219175 (= c!120140 e!692261)))

(declare-fun res!809819 () Bool)

(assert (=> b!1219175 (=> (not res!809819) (not e!692261))))

(assert (=> b!1219175 (= res!809819 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38515 _keys!1208)))))

(assert (= (and d!133653 c!120139) b!1219165))

(assert (= (and d!133653 (not c!120139)) b!1219171))

(assert (= (and b!1219171 c!120138) b!1219173))

(assert (= (and b!1219171 (not c!120138)) b!1219166))

(assert (= (or b!1219173 b!1219166) bm!60680))

(assert (= (and d!133653 res!809820) b!1219172))

(assert (= (and b!1219172 res!809818) b!1219175))

(assert (= (and b!1219175 res!809819) b!1219169))

(assert (= (and b!1219175 c!120140) b!1219174))

(assert (= (and b!1219175 (not c!120140)) b!1219167))

(assert (= (and b!1219174 res!809821) b!1219164))

(assert (= (and b!1219167 c!120137) b!1219168))

(assert (= (and b!1219167 (not c!120137)) b!1219170))

(declare-fun b_lambda!22087 () Bool)

(assert (=> (not b_lambda!22087) (not b!1219164)))

(assert (=> b!1219164 t!40208))

(declare-fun b_and!43741 () Bool)

(assert (= b_and!43739 (and (=> t!40208 result!22753) b_and!43741)))

(declare-fun b_lambda!22089 () Bool)

(assert (=> (not b_lambda!22089) (not b!1219173)))

(assert (=> b!1219173 t!40208))

(declare-fun b_and!43743 () Bool)

(assert (= b_and!43741 (and (=> t!40208 result!22753) b_and!43743)))

(declare-fun m!1124003 () Bool)

(assert (=> d!133653 m!1124003))

(assert (=> d!133653 m!1123767))

(declare-fun m!1124005 () Bool)

(assert (=> bm!60680 m!1124005))

(assert (=> b!1219164 m!1123931))

(assert (=> b!1219164 m!1123931))

(declare-fun m!1124007 () Bool)

(assert (=> b!1219164 m!1124007))

(declare-fun m!1124009 () Bool)

(assert (=> b!1219164 m!1124009))

(assert (=> b!1219164 m!1123787))

(declare-fun m!1124011 () Bool)

(assert (=> b!1219164 m!1124011))

(assert (=> b!1219164 m!1123787))

(assert (=> b!1219164 m!1124009))

(assert (=> b!1219168 m!1124005))

(declare-fun m!1124013 () Bool)

(assert (=> b!1219172 m!1124013))

(declare-fun m!1124015 () Bool)

(assert (=> b!1219170 m!1124015))

(assert (=> b!1219169 m!1123931))

(assert (=> b!1219169 m!1123931))

(declare-fun m!1124017 () Bool)

(assert (=> b!1219169 m!1124017))

(assert (=> b!1219171 m!1123931))

(assert (=> b!1219171 m!1123931))

(assert (=> b!1219171 m!1124017))

(assert (=> b!1219174 m!1123931))

(assert (=> b!1219174 m!1123931))

(declare-fun m!1124019 () Bool)

(assert (=> b!1219174 m!1124019))

(declare-fun m!1124021 () Bool)

(assert (=> b!1219173 m!1124021))

(assert (=> b!1219173 m!1123931))

(declare-fun m!1124023 () Bool)

(assert (=> b!1219173 m!1124023))

(assert (=> b!1219173 m!1124009))

(assert (=> b!1219173 m!1123787))

(assert (=> b!1219173 m!1124011))

(assert (=> b!1219173 m!1124021))

(declare-fun m!1124025 () Bool)

(assert (=> b!1219173 m!1124025))

(assert (=> b!1219173 m!1123787))

(assert (=> b!1219173 m!1124009))

(declare-fun m!1124027 () Bool)

(assert (=> b!1219173 m!1124027))

(assert (=> b!1218980 d!133653))

(declare-fun d!133655 () Bool)

(declare-fun e!692274 () Bool)

(assert (=> d!133655 e!692274))

(declare-fun res!809824 () Bool)

(assert (=> d!133655 (=> (not res!809824) (not e!692274))))

(declare-fun lt!554270 () ListLongMap!18113)

(assert (=> d!133655 (= res!809824 (not (contains!7032 lt!554270 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!692271 () ListLongMap!18113)

(assert (=> d!133655 (= lt!554270 e!692271)))

(declare-fun c!120143 () Bool)

(assert (=> d!133655 (= c!120143 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38515 lt!554152)))))

(assert (=> d!133655 (validMask!0 mask!1564)))

(assert (=> d!133655 (= (getCurrentListMapNoExtraKeys!5475 lt!554152 lt!554160 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!554270)))

(declare-fun b!1219176 () Bool)

(assert (=> b!1219176 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38515 lt!554152)))))

(assert (=> b!1219176 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38516 lt!554160)))))

(declare-fun e!692269 () Bool)

(assert (=> b!1219176 (= e!692269 (= (apply!1008 lt!554270 (select (arr!37978 lt!554152) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19405 (select (arr!37979 lt!554160) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3379 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1219177 () Bool)

(assert (=> b!1219177 (= e!692271 (ListLongMap!18114 Nil!26948))))

(declare-fun b!1219178 () Bool)

(declare-fun e!692270 () ListLongMap!18113)

(declare-fun call!60684 () ListLongMap!18113)

(assert (=> b!1219178 (= e!692270 call!60684)))

(declare-fun b!1219179 () Bool)

(declare-fun e!692273 () Bool)

(declare-fun e!692272 () Bool)

(assert (=> b!1219179 (= e!692273 e!692272)))

(declare-fun c!120141 () Bool)

(assert (=> b!1219179 (= c!120141 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38515 lt!554152)))))

(declare-fun b!1219180 () Bool)

(assert (=> b!1219180 (= e!692272 (= lt!554270 (getCurrentListMapNoExtraKeys!5475 lt!554152 lt!554160 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1219181 () Bool)

(declare-fun e!692268 () Bool)

(assert (=> b!1219181 (= e!692268 (validKeyInArray!0 (select (arr!37978 lt!554152) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1219181 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1219182 () Bool)

(assert (=> b!1219182 (= e!692272 (isEmpty!1000 lt!554270))))

(declare-fun b!1219183 () Bool)

(assert (=> b!1219183 (= e!692271 e!692270)))

(declare-fun c!120142 () Bool)

(assert (=> b!1219183 (= c!120142 (validKeyInArray!0 (select (arr!37978 lt!554152) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1219184 () Bool)

(declare-fun res!809822 () Bool)

(assert (=> b!1219184 (=> (not res!809822) (not e!692274))))

(assert (=> b!1219184 (= res!809822 (not (contains!7032 lt!554270 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1219185 () Bool)

(declare-fun lt!554272 () Unit!40324)

(declare-fun lt!554269 () Unit!40324)

(assert (=> b!1219185 (= lt!554272 lt!554269)))

(declare-fun lt!554271 () (_ BitVec 64))

(declare-fun lt!554273 () (_ BitVec 64))

(declare-fun lt!554268 () V!46427)

(declare-fun lt!554267 () ListLongMap!18113)

(assert (=> b!1219185 (not (contains!7032 (+!4051 lt!554267 (tuple2!20133 lt!554273 lt!554268)) lt!554271))))

(assert (=> b!1219185 (= lt!554269 (addStillNotContains!303 lt!554267 lt!554273 lt!554268 lt!554271))))

(assert (=> b!1219185 (= lt!554271 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1219185 (= lt!554268 (get!19405 (select (arr!37979 lt!554160) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3379 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1219185 (= lt!554273 (select (arr!37978 lt!554152) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1219185 (= lt!554267 call!60684)))

(assert (=> b!1219185 (= e!692270 (+!4051 call!60684 (tuple2!20133 (select (arr!37978 lt!554152) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19405 (select (arr!37979 lt!554160) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3379 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!60681 () Bool)

(assert (=> bm!60681 (= call!60684 (getCurrentListMapNoExtraKeys!5475 lt!554152 lt!554160 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1219186 () Bool)

(assert (=> b!1219186 (= e!692273 e!692269)))

(assert (=> b!1219186 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38515 lt!554152)))))

(declare-fun res!809825 () Bool)

(assert (=> b!1219186 (= res!809825 (contains!7032 lt!554270 (select (arr!37978 lt!554152) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1219186 (=> (not res!809825) (not e!692269))))

(declare-fun b!1219187 () Bool)

(assert (=> b!1219187 (= e!692274 e!692273)))

(declare-fun c!120144 () Bool)

(assert (=> b!1219187 (= c!120144 e!692268)))

(declare-fun res!809823 () Bool)

(assert (=> b!1219187 (=> (not res!809823) (not e!692268))))

(assert (=> b!1219187 (= res!809823 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38515 lt!554152)))))

(assert (= (and d!133655 c!120143) b!1219177))

(assert (= (and d!133655 (not c!120143)) b!1219183))

(assert (= (and b!1219183 c!120142) b!1219185))

(assert (= (and b!1219183 (not c!120142)) b!1219178))

(assert (= (or b!1219185 b!1219178) bm!60681))

(assert (= (and d!133655 res!809824) b!1219184))

(assert (= (and b!1219184 res!809822) b!1219187))

(assert (= (and b!1219187 res!809823) b!1219181))

(assert (= (and b!1219187 c!120144) b!1219186))

(assert (= (and b!1219187 (not c!120144)) b!1219179))

(assert (= (and b!1219186 res!809825) b!1219176))

(assert (= (and b!1219179 c!120141) b!1219180))

(assert (= (and b!1219179 (not c!120141)) b!1219182))

(declare-fun b_lambda!22091 () Bool)

(assert (=> (not b_lambda!22091) (not b!1219176)))

(assert (=> b!1219176 t!40208))

(declare-fun b_and!43745 () Bool)

(assert (= b_and!43743 (and (=> t!40208 result!22753) b_and!43745)))

(declare-fun b_lambda!22093 () Bool)

(assert (=> (not b_lambda!22093) (not b!1219185)))

(assert (=> b!1219185 t!40208))

(declare-fun b_and!43747 () Bool)

(assert (= b_and!43745 (and (=> t!40208 result!22753) b_and!43747)))

(declare-fun m!1124029 () Bool)

(assert (=> d!133655 m!1124029))

(assert (=> d!133655 m!1123767))

(declare-fun m!1124031 () Bool)

(assert (=> bm!60681 m!1124031))

(declare-fun m!1124033 () Bool)

(assert (=> b!1219176 m!1124033))

(assert (=> b!1219176 m!1124033))

(declare-fun m!1124035 () Bool)

(assert (=> b!1219176 m!1124035))

(declare-fun m!1124037 () Bool)

(assert (=> b!1219176 m!1124037))

(assert (=> b!1219176 m!1123787))

(declare-fun m!1124039 () Bool)

(assert (=> b!1219176 m!1124039))

(assert (=> b!1219176 m!1123787))

(assert (=> b!1219176 m!1124037))

(assert (=> b!1219180 m!1124031))

(declare-fun m!1124041 () Bool)

(assert (=> b!1219184 m!1124041))

(declare-fun m!1124043 () Bool)

(assert (=> b!1219182 m!1124043))

(assert (=> b!1219181 m!1124033))

(assert (=> b!1219181 m!1124033))

(declare-fun m!1124045 () Bool)

(assert (=> b!1219181 m!1124045))

(assert (=> b!1219183 m!1124033))

(assert (=> b!1219183 m!1124033))

(assert (=> b!1219183 m!1124045))

(assert (=> b!1219186 m!1124033))

(assert (=> b!1219186 m!1124033))

(declare-fun m!1124047 () Bool)

(assert (=> b!1219186 m!1124047))

(declare-fun m!1124049 () Bool)

(assert (=> b!1219185 m!1124049))

(assert (=> b!1219185 m!1124033))

(declare-fun m!1124051 () Bool)

(assert (=> b!1219185 m!1124051))

(assert (=> b!1219185 m!1124037))

(assert (=> b!1219185 m!1123787))

(assert (=> b!1219185 m!1124039))

(assert (=> b!1219185 m!1124049))

(declare-fun m!1124053 () Bool)

(assert (=> b!1219185 m!1124053))

(assert (=> b!1219185 m!1123787))

(assert (=> b!1219185 m!1124037))

(declare-fun m!1124055 () Bool)

(assert (=> b!1219185 m!1124055))

(assert (=> b!1218980 d!133655))

(declare-fun b!1219194 () Bool)

(declare-fun e!692280 () Bool)

(assert (=> b!1219194 (= e!692280 tp_is_empty!30975)))

(declare-fun b!1219195 () Bool)

(declare-fun e!692279 () Bool)

(assert (=> b!1219195 (= e!692279 tp_is_empty!30975)))

(declare-fun mapNonEmpty!48352 () Bool)

(declare-fun mapRes!48352 () Bool)

(declare-fun tp!91854 () Bool)

(assert (=> mapNonEmpty!48352 (= mapRes!48352 (and tp!91854 e!692280))))

(declare-fun mapKey!48352 () (_ BitVec 32))

(declare-fun mapRest!48352 () (Array (_ BitVec 32) ValueCell!14778))

(declare-fun mapValue!48352 () ValueCell!14778)

(assert (=> mapNonEmpty!48352 (= mapRest!48346 (store mapRest!48352 mapKey!48352 mapValue!48352))))

(declare-fun mapIsEmpty!48352 () Bool)

(assert (=> mapIsEmpty!48352 mapRes!48352))

(declare-fun condMapEmpty!48352 () Bool)

(declare-fun mapDefault!48352 () ValueCell!14778)

(assert (=> mapNonEmpty!48346 (= condMapEmpty!48352 (= mapRest!48346 ((as const (Array (_ BitVec 32) ValueCell!14778)) mapDefault!48352)))))

(assert (=> mapNonEmpty!48346 (= tp!91845 (and e!692279 mapRes!48352))))

(assert (= (and mapNonEmpty!48346 condMapEmpty!48352) mapIsEmpty!48352))

(assert (= (and mapNonEmpty!48346 (not condMapEmpty!48352)) mapNonEmpty!48352))

(assert (= (and mapNonEmpty!48352 ((_ is ValueCellFull!14778) mapValue!48352)) b!1219194))

(assert (= (and mapNonEmpty!48346 ((_ is ValueCellFull!14778) mapDefault!48352)) b!1219195))

(declare-fun m!1124057 () Bool)

(assert (=> mapNonEmpty!48352 m!1124057))

(declare-fun b_lambda!22095 () Bool)

(assert (= b_lambda!22085 (or (and start!101462 b_free!26271) b_lambda!22095)))

(declare-fun b_lambda!22097 () Bool)

(assert (= b_lambda!22091 (or (and start!101462 b_free!26271) b_lambda!22097)))

(declare-fun b_lambda!22099 () Bool)

(assert (= b_lambda!22081 (or (and start!101462 b_free!26271) b_lambda!22099)))

(declare-fun b_lambda!22101 () Bool)

(assert (= b_lambda!22079 (or (and start!101462 b_free!26271) b_lambda!22101)))

(declare-fun b_lambda!22103 () Bool)

(assert (= b_lambda!22087 (or (and start!101462 b_free!26271) b_lambda!22103)))

(declare-fun b_lambda!22105 () Bool)

(assert (= b_lambda!22083 (or (and start!101462 b_free!26271) b_lambda!22105)))

(declare-fun b_lambda!22107 () Bool)

(assert (= b_lambda!22093 (or (and start!101462 b_free!26271) b_lambda!22107)))

(declare-fun b_lambda!22109 () Bool)

(assert (= b_lambda!22077 (or (and start!101462 b_free!26271) b_lambda!22109)))

(declare-fun b_lambda!22111 () Bool)

(assert (= b_lambda!22089 (or (and start!101462 b_free!26271) b_lambda!22111)))

(check-sat (not b!1219176) (not b!1219130) (not b_lambda!22103) (not b_lambda!22099) (not d!133641) (not b!1219138) (not b!1219136) (not b!1219083) (not b!1219104) (not b!1219147) (not d!133613) (not b!1219164) (not bm!60678) (not b!1219134) (not b_lambda!22095) (not d!133637) (not b!1219172) (not d!133655) (not b!1219170) (not b!1219085) (not d!133651) (not d!133619) (not b!1219168) (not b!1219077) (not b!1219173) (not b_lambda!22075) (not bm!60664) (not b!1219079) (not b!1219091) (not bm!60668) (not b!1219182) (not b!1219169) (not b_next!26271) (not b!1219186) (not b_lambda!22111) (not b!1219135) b_and!43747 (not b!1219183) (not b!1219131) (not b!1219129) (not b!1219148) (not b!1219181) (not bm!60680) (not mapNonEmpty!48352) (not b!1219184) (not b!1219093) (not b!1219154) (not b!1219141) (not b_lambda!22101) (not bm!60671) (not b!1219081) (not bm!60665) (not bm!60681) (not b!1219095) (not b!1219073) (not b!1219174) (not d!133649) (not b!1219185) (not b!1219162) (not b!1219102) (not b!1219139) (not b!1219078) (not b_lambda!22097) (not bm!60672) (not b!1219089) (not b!1219115) (not b!1219080) (not b!1219090) (not d!133615) (not b!1219082) (not b_lambda!22105) (not b_lambda!22107) (not b!1219094) (not b!1219113) tp_is_empty!30975 (not b!1219180) (not bm!60673) (not b!1219092) (not b!1219171) (not bm!60679) (not d!133653) (not b!1219153) (not b_lambda!22109))
(check-sat b_and!43747 (not b_next!26271))
