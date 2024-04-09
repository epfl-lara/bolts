; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100350 () Bool)

(assert start!100350)

(declare-fun b_free!25701 () Bool)

(declare-fun b_next!25701 () Bool)

(assert (=> start!100350 (= b_free!25701 (not b_next!25701))))

(declare-fun tp!90052 () Bool)

(declare-fun b_and!42283 () Bool)

(assert (=> start!100350 (= tp!90052 b_and!42283)))

(declare-fun b!1197049 () Bool)

(declare-fun e!680096 () Bool)

(declare-datatypes ((V!45635 0))(
  ( (V!45636 (val!15247 Int)) )
))
(declare-datatypes ((tuple2!19662 0))(
  ( (tuple2!19663 (_1!9841 (_ BitVec 64)) (_2!9841 V!45635)) )
))
(declare-datatypes ((List!26479 0))(
  ( (Nil!26476) (Cons!26475 (h!27684 tuple2!19662) (t!39179 List!26479)) )
))
(declare-datatypes ((ListLongMap!17643 0))(
  ( (ListLongMap!17644 (toList!8837 List!26479)) )
))
(declare-fun call!57223 () ListLongMap!17643)

(declare-fun call!57224 () ListLongMap!17643)

(assert (=> b!1197049 (= e!680096 (= call!57223 call!57224))))

(declare-fun b!1197050 () Bool)

(declare-fun res!796738 () Bool)

(declare-fun e!680095 () Bool)

(assert (=> b!1197050 (=> (not res!796738) (not e!680095))))

(declare-datatypes ((array!77520 0))(
  ( (array!77521 (arr!37403 (Array (_ BitVec 32) (_ BitVec 64))) (size!37940 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77520)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1197050 (= res!796738 (= (select (arr!37403 _keys!1208) i!673) k0!934))))

(declare-fun b!1197051 () Bool)

(declare-fun e!680091 () Bool)

(declare-fun tp_is_empty!30381 () Bool)

(assert (=> b!1197051 (= e!680091 tp_is_empty!30381)))

(declare-fun b!1197052 () Bool)

(declare-fun e!680092 () Bool)

(declare-datatypes ((ValueCell!14481 0))(
  ( (ValueCellFull!14481 (v!17886 V!45635)) (EmptyCell!14481) )
))
(declare-datatypes ((array!77522 0))(
  ( (array!77523 (arr!37404 (Array (_ BitVec 32) ValueCell!14481)) (size!37941 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77522)

(assert (=> b!1197052 (= e!680092 (bvslt i!673 (size!37941 _values!996)))))

(assert (=> b!1197052 e!680096))

(declare-fun c!117314 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1197052 (= c!117314 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!45635)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45635)

(declare-datatypes ((Unit!39632 0))(
  ( (Unit!39633) )
))
(declare-fun lt!543146 () Unit!39632)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1009 (array!77520 array!77522 (_ BitVec 32) (_ BitVec 32) V!45635 V!45635 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39632)

(assert (=> b!1197052 (= lt!543146 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1009 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1197053 () Bool)

(declare-fun res!796736 () Bool)

(assert (=> b!1197053 (=> (not res!796736) (not e!680095))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197053 (= res!796736 (validKeyInArray!0 k0!934))))

(declare-fun b!1197055 () Bool)

(declare-fun res!796734 () Bool)

(assert (=> b!1197055 (=> (not res!796734) (not e!680095))))

(assert (=> b!1197055 (= res!796734 (and (= (size!37941 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37940 _keys!1208) (size!37941 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun lt!543145 () array!77520)

(declare-fun bm!57220 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5250 (array!77520 array!77522 (_ BitVec 32) (_ BitVec 32) V!45635 V!45635 (_ BitVec 32) Int) ListLongMap!17643)

(declare-fun dynLambda!3187 (Int (_ BitVec 64)) V!45635)

(assert (=> bm!57220 (= call!57223 (getCurrentListMapNoExtraKeys!5250 lt!543145 (array!77523 (store (arr!37404 _values!996) i!673 (ValueCellFull!14481 (dynLambda!3187 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37941 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1197056 () Bool)

(declare-fun -!1803 (ListLongMap!17643 (_ BitVec 64)) ListLongMap!17643)

(assert (=> b!1197056 (= e!680096 (= call!57223 (-!1803 call!57224 k0!934)))))

(declare-fun mapNonEmpty!47408 () Bool)

(declare-fun mapRes!47408 () Bool)

(declare-fun tp!90051 () Bool)

(declare-fun e!680097 () Bool)

(assert (=> mapNonEmpty!47408 (= mapRes!47408 (and tp!90051 e!680097))))

(declare-fun mapValue!47408 () ValueCell!14481)

(declare-fun mapRest!47408 () (Array (_ BitVec 32) ValueCell!14481))

(declare-fun mapKey!47408 () (_ BitVec 32))

(assert (=> mapNonEmpty!47408 (= (arr!37404 _values!996) (store mapRest!47408 mapKey!47408 mapValue!47408))))

(declare-fun b!1197057 () Bool)

(declare-fun res!796742 () Bool)

(declare-fun e!680094 () Bool)

(assert (=> b!1197057 (=> (not res!796742) (not e!680094))))

(declare-datatypes ((List!26480 0))(
  ( (Nil!26477) (Cons!26476 (h!27685 (_ BitVec 64)) (t!39180 List!26480)) )
))
(declare-fun arrayNoDuplicates!0 (array!77520 (_ BitVec 32) List!26480) Bool)

(assert (=> b!1197057 (= res!796742 (arrayNoDuplicates!0 lt!543145 #b00000000000000000000000000000000 Nil!26477))))

(declare-fun b!1197058 () Bool)

(declare-fun res!796737 () Bool)

(assert (=> b!1197058 (=> (not res!796737) (not e!680095))))

(assert (=> b!1197058 (= res!796737 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26477))))

(declare-fun b!1197059 () Bool)

(declare-fun res!796735 () Bool)

(assert (=> b!1197059 (=> (not res!796735) (not e!680095))))

(assert (=> b!1197059 (= res!796735 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37940 _keys!1208))))))

(declare-fun b!1197060 () Bool)

(assert (=> b!1197060 (= e!680097 tp_is_empty!30381)))

(declare-fun b!1197061 () Bool)

(declare-fun res!796741 () Bool)

(assert (=> b!1197061 (=> (not res!796741) (not e!680095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1197061 (= res!796741 (validMask!0 mask!1564))))

(declare-fun b!1197062 () Bool)

(assert (=> b!1197062 (= e!680095 e!680094)))

(declare-fun res!796740 () Bool)

(assert (=> b!1197062 (=> (not res!796740) (not e!680094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77520 (_ BitVec 32)) Bool)

(assert (=> b!1197062 (= res!796740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543145 mask!1564))))

(assert (=> b!1197062 (= lt!543145 (array!77521 (store (arr!37403 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37940 _keys!1208)))))

(declare-fun b!1197063 () Bool)

(declare-fun e!680098 () Bool)

(assert (=> b!1197063 (= e!680098 (and e!680091 mapRes!47408))))

(declare-fun condMapEmpty!47408 () Bool)

(declare-fun mapDefault!47408 () ValueCell!14481)

(assert (=> b!1197063 (= condMapEmpty!47408 (= (arr!37404 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14481)) mapDefault!47408)))))

(declare-fun b!1197064 () Bool)

(declare-fun res!796744 () Bool)

(assert (=> b!1197064 (=> (not res!796744) (not e!680095))))

(assert (=> b!1197064 (= res!796744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1197054 () Bool)

(assert (=> b!1197054 (= e!680094 (not e!680092))))

(declare-fun res!796739 () Bool)

(assert (=> b!1197054 (=> res!796739 e!680092)))

(assert (=> b!1197054 (= res!796739 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!37940 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!77520 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1197054 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!543147 () Unit!39632)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77520 (_ BitVec 64) (_ BitVec 32)) Unit!39632)

(assert (=> b!1197054 (= lt!543147 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!796743 () Bool)

(assert (=> start!100350 (=> (not res!796743) (not e!680095))))

(assert (=> start!100350 (= res!796743 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37940 _keys!1208))))))

(assert (=> start!100350 e!680095))

(assert (=> start!100350 tp_is_empty!30381))

(declare-fun array_inv!28410 (array!77520) Bool)

(assert (=> start!100350 (array_inv!28410 _keys!1208)))

(assert (=> start!100350 true))

(assert (=> start!100350 tp!90052))

(declare-fun array_inv!28411 (array!77522) Bool)

(assert (=> start!100350 (and (array_inv!28411 _values!996) e!680098)))

(declare-fun mapIsEmpty!47408 () Bool)

(assert (=> mapIsEmpty!47408 mapRes!47408))

(declare-fun bm!57221 () Bool)

(assert (=> bm!57221 (= call!57224 (getCurrentListMapNoExtraKeys!5250 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!100350 res!796743) b!1197061))

(assert (= (and b!1197061 res!796741) b!1197055))

(assert (= (and b!1197055 res!796734) b!1197064))

(assert (= (and b!1197064 res!796744) b!1197058))

(assert (= (and b!1197058 res!796737) b!1197059))

(assert (= (and b!1197059 res!796735) b!1197053))

(assert (= (and b!1197053 res!796736) b!1197050))

(assert (= (and b!1197050 res!796738) b!1197062))

(assert (= (and b!1197062 res!796740) b!1197057))

(assert (= (and b!1197057 res!796742) b!1197054))

(assert (= (and b!1197054 (not res!796739)) b!1197052))

(assert (= (and b!1197052 c!117314) b!1197056))

(assert (= (and b!1197052 (not c!117314)) b!1197049))

(assert (= (or b!1197056 b!1197049) bm!57220))

(assert (= (or b!1197056 b!1197049) bm!57221))

(assert (= (and b!1197063 condMapEmpty!47408) mapIsEmpty!47408))

(assert (= (and b!1197063 (not condMapEmpty!47408)) mapNonEmpty!47408))

(get-info :version)

(assert (= (and mapNonEmpty!47408 ((_ is ValueCellFull!14481) mapValue!47408)) b!1197060))

(assert (= (and b!1197063 ((_ is ValueCellFull!14481) mapDefault!47408)) b!1197051))

(assert (= start!100350 b!1197063))

(declare-fun b_lambda!20863 () Bool)

(assert (=> (not b_lambda!20863) (not bm!57220)))

(declare-fun t!39178 () Bool)

(declare-fun tb!10521 () Bool)

(assert (=> (and start!100350 (= defaultEntry!1004 defaultEntry!1004) t!39178) tb!10521))

(declare-fun result!21607 () Bool)

(assert (=> tb!10521 (= result!21607 tp_is_empty!30381)))

(assert (=> bm!57220 t!39178))

(declare-fun b_and!42285 () Bool)

(assert (= b_and!42283 (and (=> t!39178 result!21607) b_and!42285)))

(declare-fun m!1104157 () Bool)

(assert (=> b!1197057 m!1104157))

(declare-fun m!1104159 () Bool)

(assert (=> b!1197053 m!1104159))

(declare-fun m!1104161 () Bool)

(assert (=> b!1197058 m!1104161))

(declare-fun m!1104163 () Bool)

(assert (=> bm!57221 m!1104163))

(declare-fun m!1104165 () Bool)

(assert (=> b!1197050 m!1104165))

(declare-fun m!1104167 () Bool)

(assert (=> mapNonEmpty!47408 m!1104167))

(declare-fun m!1104169 () Bool)

(assert (=> start!100350 m!1104169))

(declare-fun m!1104171 () Bool)

(assert (=> start!100350 m!1104171))

(declare-fun m!1104173 () Bool)

(assert (=> b!1197056 m!1104173))

(declare-fun m!1104175 () Bool)

(assert (=> bm!57220 m!1104175))

(declare-fun m!1104177 () Bool)

(assert (=> bm!57220 m!1104177))

(declare-fun m!1104179 () Bool)

(assert (=> bm!57220 m!1104179))

(declare-fun m!1104181 () Bool)

(assert (=> b!1197064 m!1104181))

(declare-fun m!1104183 () Bool)

(assert (=> b!1197061 m!1104183))

(declare-fun m!1104185 () Bool)

(assert (=> b!1197052 m!1104185))

(declare-fun m!1104187 () Bool)

(assert (=> b!1197054 m!1104187))

(declare-fun m!1104189 () Bool)

(assert (=> b!1197054 m!1104189))

(declare-fun m!1104191 () Bool)

(assert (=> b!1197062 m!1104191))

(declare-fun m!1104193 () Bool)

(assert (=> b!1197062 m!1104193))

(check-sat (not b!1197058) (not b!1197057) (not b!1197061) tp_is_empty!30381 (not b!1197056) (not mapNonEmpty!47408) b_and!42285 (not bm!57220) (not b!1197053) (not bm!57221) (not b!1197064) (not b!1197054) (not b_lambda!20863) (not b!1197052) (not b_next!25701) (not start!100350) (not b!1197062))
(check-sat b_and!42285 (not b_next!25701))
