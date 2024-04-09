; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100552 () Bool)

(assert start!100552)

(declare-fun b_free!25839 () Bool)

(declare-fun b_next!25839 () Bool)

(assert (=> start!100552 (= b_free!25839 (not b_next!25839))))

(declare-fun tp!90507 () Bool)

(declare-fun b_and!42579 () Bool)

(assert (=> start!100552 (= tp!90507 b_and!42579)))

(declare-fun b!1200933 () Bool)

(declare-fun e!682029 () Bool)

(declare-fun tp_is_empty!30543 () Bool)

(assert (=> b!1200933 (= e!682029 tp_is_empty!30543)))

(declare-fun b!1200934 () Bool)

(declare-fun res!799540 () Bool)

(declare-fun e!682022 () Bool)

(assert (=> b!1200934 (=> (not res!799540) (not e!682022))))

(declare-datatypes ((array!77840 0))(
  ( (array!77841 (arr!37561 (Array (_ BitVec 32) (_ BitVec 64))) (size!38098 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77840)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1200934 (= res!799540 (= (select (arr!37561 _keys!1208) i!673) k0!934))))

(declare-fun b!1200935 () Bool)

(declare-fun e!682024 () Bool)

(assert (=> b!1200935 (= e!682024 tp_is_empty!30543)))

(declare-fun b!1200936 () Bool)

(declare-fun res!799543 () Bool)

(assert (=> b!1200936 (=> (not res!799543) (not e!682022))))

(assert (=> b!1200936 (= res!799543 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38098 _keys!1208))))))

(declare-fun b!1200937 () Bool)

(declare-datatypes ((V!45851 0))(
  ( (V!45852 (val!15328 Int)) )
))
(declare-datatypes ((tuple2!19768 0))(
  ( (tuple2!19769 (_1!9894 (_ BitVec 64)) (_2!9894 V!45851)) )
))
(declare-datatypes ((List!26600 0))(
  ( (Nil!26597) (Cons!26596 (h!27805 tuple2!19768) (t!39426 List!26600)) )
))
(declare-datatypes ((ListLongMap!17749 0))(
  ( (ListLongMap!17750 (toList!8890 List!26600)) )
))
(declare-fun call!57346 () ListLongMap!17749)

(declare-fun call!57345 () ListLongMap!17749)

(declare-fun e!682025 () Bool)

(declare-fun -!1815 (ListLongMap!17749 (_ BitVec 64)) ListLongMap!17749)

(assert (=> b!1200937 (= e!682025 (= call!57346 (-!1815 call!57345 k0!934)))))

(declare-fun b!1200938 () Bool)

(declare-fun e!682027 () Bool)

(declare-fun e!682021 () Bool)

(assert (=> b!1200938 (= e!682027 e!682021)))

(declare-fun res!799548 () Bool)

(assert (=> b!1200938 (=> res!799548 e!682021)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1200938 (= res!799548 (not (= (select (arr!37561 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1200938 e!682025))

(declare-fun c!117418 () Bool)

(assert (=> b!1200938 (= c!117418 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!45851)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14562 0))(
  ( (ValueCellFull!14562 (v!17967 V!45851)) (EmptyCell!14562) )
))
(declare-datatypes ((array!77842 0))(
  ( (array!77843 (arr!37562 (Array (_ BitVec 32) ValueCell!14562)) (size!38099 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77842)

(declare-fun minValue!944 () V!45851)

(declare-datatypes ((Unit!39740 0))(
  ( (Unit!39741) )
))
(declare-fun lt!544198 () Unit!39740)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1017 (array!77840 array!77842 (_ BitVec 32) (_ BitVec 32) V!45851 V!45851 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39740)

(assert (=> b!1200938 (= lt!544198 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1017 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!544200 () array!77842)

(declare-fun lt!544201 () array!77840)

(declare-fun bm!57342 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5302 (array!77840 array!77842 (_ BitVec 32) (_ BitVec 32) V!45851 V!45851 (_ BitVec 32) Int) ListLongMap!17749)

(assert (=> bm!57342 (= call!57346 (getCurrentListMapNoExtraKeys!5302 lt!544201 lt!544200 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!47657 () Bool)

(declare-fun mapRes!47657 () Bool)

(declare-fun tp!90508 () Bool)

(assert (=> mapNonEmpty!47657 (= mapRes!47657 (and tp!90508 e!682029))))

(declare-fun mapValue!47657 () ValueCell!14562)

(declare-fun mapRest!47657 () (Array (_ BitVec 32) ValueCell!14562))

(declare-fun mapKey!47657 () (_ BitVec 32))

(assert (=> mapNonEmpty!47657 (= (arr!37562 _values!996) (store mapRest!47657 mapKey!47657 mapValue!47657))))

(declare-fun b!1200939 () Bool)

(declare-fun res!799550 () Bool)

(assert (=> b!1200939 (=> (not res!799550) (not e!682022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1200939 (= res!799550 (validMask!0 mask!1564))))

(declare-fun res!799547 () Bool)

(assert (=> start!100552 (=> (not res!799547) (not e!682022))))

(assert (=> start!100552 (= res!799547 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38098 _keys!1208))))))

(assert (=> start!100552 e!682022))

(assert (=> start!100552 tp_is_empty!30543))

(declare-fun array_inv!28516 (array!77840) Bool)

(assert (=> start!100552 (array_inv!28516 _keys!1208)))

(assert (=> start!100552 true))

(assert (=> start!100552 tp!90507))

(declare-fun e!682028 () Bool)

(declare-fun array_inv!28517 (array!77842) Bool)

(assert (=> start!100552 (and (array_inv!28517 _values!996) e!682028)))

(declare-fun b!1200940 () Bool)

(assert (=> b!1200940 (= e!682021 true)))

(declare-fun lt!544199 () Bool)

(declare-fun contains!6892 (ListLongMap!17749 (_ BitVec 64)) Bool)

(assert (=> b!1200940 (= lt!544199 (contains!6892 (getCurrentListMapNoExtraKeys!5302 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1200941 () Bool)

(declare-fun e!682026 () Bool)

(declare-fun e!682023 () Bool)

(assert (=> b!1200941 (= e!682026 (not e!682023))))

(declare-fun res!799541 () Bool)

(assert (=> b!1200941 (=> res!799541 e!682023)))

(assert (=> b!1200941 (= res!799541 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1200941 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!544202 () Unit!39740)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77840 (_ BitVec 64) (_ BitVec 32)) Unit!39740)

(assert (=> b!1200941 (= lt!544202 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!57343 () Bool)

(assert (=> bm!57343 (= call!57345 (getCurrentListMapNoExtraKeys!5302 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!47657 () Bool)

(assert (=> mapIsEmpty!47657 mapRes!47657))

(declare-fun b!1200942 () Bool)

(assert (=> b!1200942 (= e!682025 (= call!57346 call!57345))))

(declare-fun b!1200943 () Bool)

(declare-fun res!799544 () Bool)

(assert (=> b!1200943 (=> (not res!799544) (not e!682022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1200943 (= res!799544 (validKeyInArray!0 k0!934))))

(declare-fun b!1200944 () Bool)

(declare-fun res!799542 () Bool)

(assert (=> b!1200944 (=> (not res!799542) (not e!682022))))

(declare-datatypes ((List!26601 0))(
  ( (Nil!26598) (Cons!26597 (h!27806 (_ BitVec 64)) (t!39427 List!26601)) )
))
(declare-fun arrayNoDuplicates!0 (array!77840 (_ BitVec 32) List!26601) Bool)

(assert (=> b!1200944 (= res!799542 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26598))))

(declare-fun b!1200945 () Bool)

(assert (=> b!1200945 (= e!682022 e!682026)))

(declare-fun res!799545 () Bool)

(assert (=> b!1200945 (=> (not res!799545) (not e!682026))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77840 (_ BitVec 32)) Bool)

(assert (=> b!1200945 (= res!799545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544201 mask!1564))))

(assert (=> b!1200945 (= lt!544201 (array!77841 (store (arr!37561 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38098 _keys!1208)))))

(declare-fun b!1200946 () Bool)

(assert (=> b!1200946 (= e!682028 (and e!682024 mapRes!47657))))

(declare-fun condMapEmpty!47657 () Bool)

(declare-fun mapDefault!47657 () ValueCell!14562)

(assert (=> b!1200946 (= condMapEmpty!47657 (= (arr!37562 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14562)) mapDefault!47657)))))

(declare-fun b!1200947 () Bool)

(assert (=> b!1200947 (= e!682023 e!682027)))

(declare-fun res!799539 () Bool)

(assert (=> b!1200947 (=> res!799539 e!682027)))

(assert (=> b!1200947 (= res!799539 (not (= from!1455 i!673)))))

(declare-fun lt!544204 () ListLongMap!17749)

(assert (=> b!1200947 (= lt!544204 (getCurrentListMapNoExtraKeys!5302 lt!544201 lt!544200 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3231 (Int (_ BitVec 64)) V!45851)

(assert (=> b!1200947 (= lt!544200 (array!77843 (store (arr!37562 _values!996) i!673 (ValueCellFull!14562 (dynLambda!3231 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38099 _values!996)))))

(declare-fun lt!544203 () ListLongMap!17749)

(assert (=> b!1200947 (= lt!544203 (getCurrentListMapNoExtraKeys!5302 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1200948 () Bool)

(declare-fun res!799546 () Bool)

(assert (=> b!1200948 (=> (not res!799546) (not e!682022))))

(assert (=> b!1200948 (= res!799546 (and (= (size!38099 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38098 _keys!1208) (size!38099 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1200949 () Bool)

(declare-fun res!799549 () Bool)

(assert (=> b!1200949 (=> (not res!799549) (not e!682026))))

(assert (=> b!1200949 (= res!799549 (arrayNoDuplicates!0 lt!544201 #b00000000000000000000000000000000 Nil!26598))))

(declare-fun b!1200950 () Bool)

(declare-fun res!799551 () Bool)

(assert (=> b!1200950 (=> (not res!799551) (not e!682022))))

(assert (=> b!1200950 (= res!799551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!100552 res!799547) b!1200939))

(assert (= (and b!1200939 res!799550) b!1200948))

(assert (= (and b!1200948 res!799546) b!1200950))

(assert (= (and b!1200950 res!799551) b!1200944))

(assert (= (and b!1200944 res!799542) b!1200936))

(assert (= (and b!1200936 res!799543) b!1200943))

(assert (= (and b!1200943 res!799544) b!1200934))

(assert (= (and b!1200934 res!799540) b!1200945))

(assert (= (and b!1200945 res!799545) b!1200949))

(assert (= (and b!1200949 res!799549) b!1200941))

(assert (= (and b!1200941 (not res!799541)) b!1200947))

(assert (= (and b!1200947 (not res!799539)) b!1200938))

(assert (= (and b!1200938 c!117418) b!1200937))

(assert (= (and b!1200938 (not c!117418)) b!1200942))

(assert (= (or b!1200937 b!1200942) bm!57342))

(assert (= (or b!1200937 b!1200942) bm!57343))

(assert (= (and b!1200938 (not res!799548)) b!1200940))

(assert (= (and b!1200946 condMapEmpty!47657) mapIsEmpty!47657))

(assert (= (and b!1200946 (not condMapEmpty!47657)) mapNonEmpty!47657))

(get-info :version)

(assert (= (and mapNonEmpty!47657 ((_ is ValueCellFull!14562) mapValue!47657)) b!1200933))

(assert (= (and b!1200946 ((_ is ValueCellFull!14562) mapDefault!47657)) b!1200935))

(assert (= start!100552 b!1200946))

(declare-fun b_lambda!21053 () Bool)

(assert (=> (not b_lambda!21053) (not b!1200947)))

(declare-fun t!39425 () Bool)

(declare-fun tb!10647 () Bool)

(assert (=> (and start!100552 (= defaultEntry!1004 defaultEntry!1004) t!39425) tb!10647))

(declare-fun result!21863 () Bool)

(assert (=> tb!10647 (= result!21863 tp_is_empty!30543)))

(assert (=> b!1200947 t!39425))

(declare-fun b_and!42581 () Bool)

(assert (= b_and!42579 (and (=> t!39425 result!21863) b_and!42581)))

(declare-fun m!1107191 () Bool)

(assert (=> b!1200947 m!1107191))

(declare-fun m!1107193 () Bool)

(assert (=> b!1200947 m!1107193))

(declare-fun m!1107195 () Bool)

(assert (=> b!1200947 m!1107195))

(declare-fun m!1107197 () Bool)

(assert (=> b!1200947 m!1107197))

(declare-fun m!1107199 () Bool)

(assert (=> mapNonEmpty!47657 m!1107199))

(declare-fun m!1107201 () Bool)

(assert (=> b!1200937 m!1107201))

(declare-fun m!1107203 () Bool)

(assert (=> b!1200949 m!1107203))

(declare-fun m!1107205 () Bool)

(assert (=> b!1200945 m!1107205))

(declare-fun m!1107207 () Bool)

(assert (=> b!1200945 m!1107207))

(declare-fun m!1107209 () Bool)

(assert (=> b!1200941 m!1107209))

(declare-fun m!1107211 () Bool)

(assert (=> b!1200941 m!1107211))

(declare-fun m!1107213 () Bool)

(assert (=> b!1200944 m!1107213))

(declare-fun m!1107215 () Bool)

(assert (=> b!1200939 m!1107215))

(declare-fun m!1107217 () Bool)

(assert (=> b!1200938 m!1107217))

(declare-fun m!1107219 () Bool)

(assert (=> b!1200938 m!1107219))

(declare-fun m!1107221 () Bool)

(assert (=> bm!57342 m!1107221))

(declare-fun m!1107223 () Bool)

(assert (=> start!100552 m!1107223))

(declare-fun m!1107225 () Bool)

(assert (=> start!100552 m!1107225))

(declare-fun m!1107227 () Bool)

(assert (=> b!1200943 m!1107227))

(declare-fun m!1107229 () Bool)

(assert (=> b!1200940 m!1107229))

(assert (=> b!1200940 m!1107229))

(declare-fun m!1107231 () Bool)

(assert (=> b!1200940 m!1107231))

(assert (=> bm!57343 m!1107229))

(declare-fun m!1107233 () Bool)

(assert (=> b!1200950 m!1107233))

(declare-fun m!1107235 () Bool)

(assert (=> b!1200934 m!1107235))

(check-sat (not b!1200949) (not b!1200937) (not b!1200945) (not start!100552) (not b!1200941) (not bm!57342) (not b!1200938) (not b_next!25839) (not b_lambda!21053) (not b!1200943) (not b!1200940) tp_is_empty!30543 b_and!42581 (not b!1200947) (not b!1200939) (not bm!57343) (not b!1200950) (not mapNonEmpty!47657) (not b!1200944))
(check-sat b_and!42581 (not b_next!25839))
