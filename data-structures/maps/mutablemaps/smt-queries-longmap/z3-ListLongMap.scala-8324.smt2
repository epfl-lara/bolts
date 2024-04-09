; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101330 () Bool)

(assert start!101330)

(declare-fun b_free!26217 () Bool)

(declare-fun b_next!26217 () Bool)

(assert (=> start!101330 (= b_free!26217 (not b_next!26217))))

(declare-fun tp!91674 () Bool)

(declare-fun b_and!43561 () Bool)

(assert (=> start!101330 (= tp!91674 b_and!43561)))

(declare-fun b!1217054 () Bool)

(declare-fun res!808337 () Bool)

(declare-fun e!690988 () Bool)

(assert (=> b!1217054 (=> (not res!808337) (not e!690988))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1217054 (= res!808337 (validKeyInArray!0 k0!934))))

(declare-fun b!1217055 () Bool)

(declare-fun res!808339 () Bool)

(assert (=> b!1217055 (=> (not res!808339) (not e!690988))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1217055 (= res!808339 (validMask!0 mask!1564))))

(declare-fun b!1217056 () Bool)

(declare-fun e!690989 () Bool)

(declare-fun e!690993 () Bool)

(assert (=> b!1217056 (= e!690989 (not e!690993))))

(declare-fun res!808335 () Bool)

(assert (=> b!1217056 (=> res!808335 e!690993)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1217056 (= res!808335 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!78588 0))(
  ( (array!78589 (arr!37925 (Array (_ BitVec 32) (_ BitVec 64))) (size!38462 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78588)

(declare-fun arrayContainsKey!0 (array!78588 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1217056 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40286 0))(
  ( (Unit!40287) )
))
(declare-fun lt!553117 () Unit!40286)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78588 (_ BitVec 64) (_ BitVec 32)) Unit!40286)

(assert (=> b!1217056 (= lt!553117 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1217057 () Bool)

(declare-fun e!690994 () Bool)

(declare-datatypes ((V!46355 0))(
  ( (V!46356 (val!15517 Int)) )
))
(declare-datatypes ((tuple2!20090 0))(
  ( (tuple2!20091 (_1!10055 (_ BitVec 64)) (_2!10055 V!46355)) )
))
(declare-datatypes ((List!26910 0))(
  ( (Nil!26907) (Cons!26906 (h!28115 tuple2!20090) (t!40114 List!26910)) )
))
(declare-datatypes ((ListLongMap!18071 0))(
  ( (ListLongMap!18072 (toList!9051 List!26910)) )
))
(declare-fun lt!553119 () ListLongMap!18071)

(declare-fun lt!553115 () V!46355)

(declare-datatypes ((ValueCell!14751 0))(
  ( (ValueCellFull!14751 (v!18171 V!46355)) (EmptyCell!14751) )
))
(declare-datatypes ((array!78590 0))(
  ( (array!78591 (arr!37926 (Array (_ BitVec 32) ValueCell!14751)) (size!38463 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78590)

(declare-fun lt!553118 () ListLongMap!18071)

(declare-fun +!4034 (ListLongMap!18071 tuple2!20090) ListLongMap!18071)

(declare-fun get!19364 (ValueCell!14751 V!46355) V!46355)

(assert (=> b!1217057 (= e!690994 (= lt!553118 (+!4034 lt!553119 (tuple2!20091 (select (arr!37925 _keys!1208) from!1455) (get!19364 (select (arr!37926 _values!996) from!1455) lt!553115)))))))

(declare-fun b!1217058 () Bool)

(declare-fun res!808333 () Bool)

(assert (=> b!1217058 (=> (not res!808333) (not e!690988))))

(assert (=> b!1217058 (= res!808333 (= (select (arr!37925 _keys!1208) i!673) k0!934))))

(declare-fun b!1217059 () Bool)

(declare-fun res!808342 () Bool)

(assert (=> b!1217059 (=> (not res!808342) (not e!690988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78588 (_ BitVec 32)) Bool)

(assert (=> b!1217059 (= res!808342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1217060 () Bool)

(declare-fun res!808345 () Bool)

(assert (=> b!1217060 (=> (not res!808345) (not e!690988))))

(declare-datatypes ((List!26911 0))(
  ( (Nil!26908) (Cons!26907 (h!28116 (_ BitVec 64)) (t!40115 List!26911)) )
))
(declare-fun arrayNoDuplicates!0 (array!78588 (_ BitVec 32) List!26911) Bool)

(assert (=> b!1217060 (= res!808345 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26908))))

(declare-fun b!1217061 () Bool)

(declare-fun res!808344 () Bool)

(assert (=> b!1217061 (=> (not res!808344) (not e!690988))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1217061 (= res!808344 (and (= (size!38463 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38462 _keys!1208) (size!38463 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1217062 () Bool)

(declare-fun res!808341 () Bool)

(assert (=> b!1217062 (=> (not res!808341) (not e!690988))))

(assert (=> b!1217062 (= res!808341 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38462 _keys!1208))))))

(declare-fun b!1217063 () Bool)

(declare-fun res!808336 () Bool)

(assert (=> b!1217063 (=> (not res!808336) (not e!690989))))

(declare-fun lt!553114 () array!78588)

(assert (=> b!1217063 (= res!808336 (arrayNoDuplicates!0 lt!553114 #b00000000000000000000000000000000 Nil!26908))))

(declare-fun res!808340 () Bool)

(assert (=> start!101330 (=> (not res!808340) (not e!690988))))

(assert (=> start!101330 (= res!808340 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38462 _keys!1208))))))

(assert (=> start!101330 e!690988))

(declare-fun tp_is_empty!30921 () Bool)

(assert (=> start!101330 tp_is_empty!30921))

(declare-fun array_inv!28776 (array!78588) Bool)

(assert (=> start!101330 (array_inv!28776 _keys!1208)))

(assert (=> start!101330 true))

(assert (=> start!101330 tp!91674))

(declare-fun e!690995 () Bool)

(declare-fun array_inv!28777 (array!78590) Bool)

(assert (=> start!101330 (and (array_inv!28777 _values!996) e!690995)))

(declare-fun b!1217064 () Bool)

(assert (=> b!1217064 (= e!690988 e!690989)))

(declare-fun res!808334 () Bool)

(assert (=> b!1217064 (=> (not res!808334) (not e!690989))))

(assert (=> b!1217064 (= res!808334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553114 mask!1564))))

(assert (=> b!1217064 (= lt!553114 (array!78589 (store (arr!37925 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38462 _keys!1208)))))

(declare-fun mapIsEmpty!48256 () Bool)

(declare-fun mapRes!48256 () Bool)

(assert (=> mapIsEmpty!48256 mapRes!48256))

(declare-fun b!1217065 () Bool)

(declare-fun e!690991 () Bool)

(assert (=> b!1217065 (= e!690991 tp_is_empty!30921)))

(declare-fun b!1217066 () Bool)

(declare-fun e!690990 () Bool)

(assert (=> b!1217066 (= e!690993 e!690990)))

(declare-fun res!808343 () Bool)

(assert (=> b!1217066 (=> res!808343 e!690990)))

(assert (=> b!1217066 (= res!808343 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46355)

(declare-fun lt!553112 () array!78590)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46355)

(declare-fun getCurrentListMapNoExtraKeys!5456 (array!78588 array!78590 (_ BitVec 32) (_ BitVec 32) V!46355 V!46355 (_ BitVec 32) Int) ListLongMap!18071)

(assert (=> b!1217066 (= lt!553118 (getCurrentListMapNoExtraKeys!5456 lt!553114 lt!553112 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1217066 (= lt!553112 (array!78591 (store (arr!37926 _values!996) i!673 (ValueCellFull!14751 lt!553115)) (size!38463 _values!996)))))

(declare-fun dynLambda!3361 (Int (_ BitVec 64)) V!46355)

(assert (=> b!1217066 (= lt!553115 (dynLambda!3361 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!553113 () ListLongMap!18071)

(assert (=> b!1217066 (= lt!553113 (getCurrentListMapNoExtraKeys!5456 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1217067 () Bool)

(assert (=> b!1217067 (= e!690990 e!690994)))

(declare-fun res!808338 () Bool)

(assert (=> b!1217067 (=> res!808338 e!690994)))

(assert (=> b!1217067 (= res!808338 (not (validKeyInArray!0 (select (arr!37925 _keys!1208) from!1455))))))

(declare-fun lt!553116 () ListLongMap!18071)

(assert (=> b!1217067 (= lt!553116 lt!553119)))

(declare-fun lt!553120 () ListLongMap!18071)

(declare-fun -!1913 (ListLongMap!18071 (_ BitVec 64)) ListLongMap!18071)

(assert (=> b!1217067 (= lt!553119 (-!1913 lt!553120 k0!934))))

(assert (=> b!1217067 (= lt!553116 (getCurrentListMapNoExtraKeys!5456 lt!553114 lt!553112 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1217067 (= lt!553120 (getCurrentListMapNoExtraKeys!5456 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!553121 () Unit!40286)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1115 (array!78588 array!78590 (_ BitVec 32) (_ BitVec 32) V!46355 V!46355 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40286)

(assert (=> b!1217067 (= lt!553121 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1115 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!48256 () Bool)

(declare-fun tp!91673 () Bool)

(declare-fun e!690996 () Bool)

(assert (=> mapNonEmpty!48256 (= mapRes!48256 (and tp!91673 e!690996))))

(declare-fun mapKey!48256 () (_ BitVec 32))

(declare-fun mapRest!48256 () (Array (_ BitVec 32) ValueCell!14751))

(declare-fun mapValue!48256 () ValueCell!14751)

(assert (=> mapNonEmpty!48256 (= (arr!37926 _values!996) (store mapRest!48256 mapKey!48256 mapValue!48256))))

(declare-fun b!1217068 () Bool)

(assert (=> b!1217068 (= e!690995 (and e!690991 mapRes!48256))))

(declare-fun condMapEmpty!48256 () Bool)

(declare-fun mapDefault!48256 () ValueCell!14751)

(assert (=> b!1217068 (= condMapEmpty!48256 (= (arr!37926 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14751)) mapDefault!48256)))))

(declare-fun b!1217069 () Bool)

(assert (=> b!1217069 (= e!690996 tp_is_empty!30921)))

(assert (= (and start!101330 res!808340) b!1217055))

(assert (= (and b!1217055 res!808339) b!1217061))

(assert (= (and b!1217061 res!808344) b!1217059))

(assert (= (and b!1217059 res!808342) b!1217060))

(assert (= (and b!1217060 res!808345) b!1217062))

(assert (= (and b!1217062 res!808341) b!1217054))

(assert (= (and b!1217054 res!808337) b!1217058))

(assert (= (and b!1217058 res!808333) b!1217064))

(assert (= (and b!1217064 res!808334) b!1217063))

(assert (= (and b!1217063 res!808336) b!1217056))

(assert (= (and b!1217056 (not res!808335)) b!1217066))

(assert (= (and b!1217066 (not res!808343)) b!1217067))

(assert (= (and b!1217067 (not res!808338)) b!1217057))

(assert (= (and b!1217068 condMapEmpty!48256) mapIsEmpty!48256))

(assert (= (and b!1217068 (not condMapEmpty!48256)) mapNonEmpty!48256))

(get-info :version)

(assert (= (and mapNonEmpty!48256 ((_ is ValueCellFull!14751) mapValue!48256)) b!1217069))

(assert (= (and b!1217068 ((_ is ValueCellFull!14751) mapDefault!48256)) b!1217065))

(assert (= start!101330 b!1217068))

(declare-fun b_lambda!21903 () Bool)

(assert (=> (not b_lambda!21903) (not b!1217066)))

(declare-fun t!40113 () Bool)

(declare-fun tb!11025 () Bool)

(assert (=> (and start!101330 (= defaultEntry!1004 defaultEntry!1004) t!40113) tb!11025))

(declare-fun result!22639 () Bool)

(assert (=> tb!11025 (= result!22639 tp_is_empty!30921)))

(assert (=> b!1217066 t!40113))

(declare-fun b_and!43563 () Bool)

(assert (= b_and!43561 (and (=> t!40113 result!22639) b_and!43563)))

(declare-fun m!1121793 () Bool)

(assert (=> b!1217056 m!1121793))

(declare-fun m!1121795 () Bool)

(assert (=> b!1217056 m!1121795))

(declare-fun m!1121797 () Bool)

(assert (=> b!1217058 m!1121797))

(declare-fun m!1121799 () Bool)

(assert (=> b!1217066 m!1121799))

(declare-fun m!1121801 () Bool)

(assert (=> b!1217066 m!1121801))

(declare-fun m!1121803 () Bool)

(assert (=> b!1217066 m!1121803))

(declare-fun m!1121805 () Bool)

(assert (=> b!1217066 m!1121805))

(declare-fun m!1121807 () Bool)

(assert (=> b!1217063 m!1121807))

(declare-fun m!1121809 () Bool)

(assert (=> start!101330 m!1121809))

(declare-fun m!1121811 () Bool)

(assert (=> start!101330 m!1121811))

(declare-fun m!1121813 () Bool)

(assert (=> b!1217059 m!1121813))

(declare-fun m!1121815 () Bool)

(assert (=> b!1217055 m!1121815))

(declare-fun m!1121817 () Bool)

(assert (=> b!1217067 m!1121817))

(declare-fun m!1121819 () Bool)

(assert (=> b!1217067 m!1121819))

(declare-fun m!1121821 () Bool)

(assert (=> b!1217067 m!1121821))

(declare-fun m!1121823 () Bool)

(assert (=> b!1217067 m!1121823))

(declare-fun m!1121825 () Bool)

(assert (=> b!1217067 m!1121825))

(declare-fun m!1121827 () Bool)

(assert (=> b!1217067 m!1121827))

(assert (=> b!1217067 m!1121823))

(declare-fun m!1121829 () Bool)

(assert (=> b!1217060 m!1121829))

(declare-fun m!1121831 () Bool)

(assert (=> mapNonEmpty!48256 m!1121831))

(declare-fun m!1121833 () Bool)

(assert (=> b!1217054 m!1121833))

(declare-fun m!1121835 () Bool)

(assert (=> b!1217064 m!1121835))

(declare-fun m!1121837 () Bool)

(assert (=> b!1217064 m!1121837))

(assert (=> b!1217057 m!1121823))

(declare-fun m!1121839 () Bool)

(assert (=> b!1217057 m!1121839))

(assert (=> b!1217057 m!1121839))

(declare-fun m!1121841 () Bool)

(assert (=> b!1217057 m!1121841))

(declare-fun m!1121843 () Bool)

(assert (=> b!1217057 m!1121843))

(check-sat b_and!43563 (not b!1217057) (not b!1217066) (not b!1217060) (not b!1217054) (not b!1217059) (not b_lambda!21903) (not mapNonEmpty!48256) (not b!1217055) (not b_next!26217) tp_is_empty!30921 (not b!1217067) (not b!1217056) (not start!101330) (not b!1217063) (not b!1217064))
(check-sat b_and!43563 (not b_next!26217))
(get-model)

(declare-fun b_lambda!21907 () Bool)

(assert (= b_lambda!21903 (or (and start!101330 b_free!26217) b_lambda!21907)))

(check-sat b_and!43563 (not b!1217057) (not b!1217066) (not b!1217060) (not b!1217054) (not b!1217059) (not b_lambda!21907) (not mapNonEmpty!48256) (not b!1217055) (not b_next!26217) tp_is_empty!30921 (not b!1217067) (not b!1217056) (not start!101330) (not b!1217063) (not b!1217064))
(check-sat b_and!43563 (not b_next!26217))
(get-model)

(declare-fun d!133477 () Bool)

(declare-fun e!691026 () Bool)

(assert (=> d!133477 e!691026))

(declare-fun res!808389 () Bool)

(assert (=> d!133477 (=> (not res!808389) (not e!691026))))

(declare-fun lt!553162 () ListLongMap!18071)

(declare-fun contains!7023 (ListLongMap!18071 (_ BitVec 64)) Bool)

(assert (=> d!133477 (= res!808389 (contains!7023 lt!553162 (_1!10055 (tuple2!20091 (select (arr!37925 _keys!1208) from!1455) (get!19364 (select (arr!37926 _values!996) from!1455) lt!553115)))))))

(declare-fun lt!553161 () List!26910)

(assert (=> d!133477 (= lt!553162 (ListLongMap!18072 lt!553161))))

(declare-fun lt!553160 () Unit!40286)

(declare-fun lt!553163 () Unit!40286)

(assert (=> d!133477 (= lt!553160 lt!553163)))

(declare-datatypes ((Option!695 0))(
  ( (Some!694 (v!18173 V!46355)) (None!693) )
))
(declare-fun getValueByKey!644 (List!26910 (_ BitVec 64)) Option!695)

(assert (=> d!133477 (= (getValueByKey!644 lt!553161 (_1!10055 (tuple2!20091 (select (arr!37925 _keys!1208) from!1455) (get!19364 (select (arr!37926 _values!996) from!1455) lt!553115)))) (Some!694 (_2!10055 (tuple2!20091 (select (arr!37925 _keys!1208) from!1455) (get!19364 (select (arr!37926 _values!996) from!1455) lt!553115)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!319 (List!26910 (_ BitVec 64) V!46355) Unit!40286)

(assert (=> d!133477 (= lt!553163 (lemmaContainsTupThenGetReturnValue!319 lt!553161 (_1!10055 (tuple2!20091 (select (arr!37925 _keys!1208) from!1455) (get!19364 (select (arr!37926 _values!996) from!1455) lt!553115))) (_2!10055 (tuple2!20091 (select (arr!37925 _keys!1208) from!1455) (get!19364 (select (arr!37926 _values!996) from!1455) lt!553115)))))))

(declare-fun insertStrictlySorted!411 (List!26910 (_ BitVec 64) V!46355) List!26910)

(assert (=> d!133477 (= lt!553161 (insertStrictlySorted!411 (toList!9051 lt!553119) (_1!10055 (tuple2!20091 (select (arr!37925 _keys!1208) from!1455) (get!19364 (select (arr!37926 _values!996) from!1455) lt!553115))) (_2!10055 (tuple2!20091 (select (arr!37925 _keys!1208) from!1455) (get!19364 (select (arr!37926 _values!996) from!1455) lt!553115)))))))

(assert (=> d!133477 (= (+!4034 lt!553119 (tuple2!20091 (select (arr!37925 _keys!1208) from!1455) (get!19364 (select (arr!37926 _values!996) from!1455) lt!553115))) lt!553162)))

(declare-fun b!1217126 () Bool)

(declare-fun res!808390 () Bool)

(assert (=> b!1217126 (=> (not res!808390) (not e!691026))))

(assert (=> b!1217126 (= res!808390 (= (getValueByKey!644 (toList!9051 lt!553162) (_1!10055 (tuple2!20091 (select (arr!37925 _keys!1208) from!1455) (get!19364 (select (arr!37926 _values!996) from!1455) lt!553115)))) (Some!694 (_2!10055 (tuple2!20091 (select (arr!37925 _keys!1208) from!1455) (get!19364 (select (arr!37926 _values!996) from!1455) lt!553115))))))))

(declare-fun b!1217127 () Bool)

(declare-fun contains!7024 (List!26910 tuple2!20090) Bool)

(assert (=> b!1217127 (= e!691026 (contains!7024 (toList!9051 lt!553162) (tuple2!20091 (select (arr!37925 _keys!1208) from!1455) (get!19364 (select (arr!37926 _values!996) from!1455) lt!553115))))))

(assert (= (and d!133477 res!808389) b!1217126))

(assert (= (and b!1217126 res!808390) b!1217127))

(declare-fun m!1121897 () Bool)

(assert (=> d!133477 m!1121897))

(declare-fun m!1121899 () Bool)

(assert (=> d!133477 m!1121899))

(declare-fun m!1121901 () Bool)

(assert (=> d!133477 m!1121901))

(declare-fun m!1121903 () Bool)

(assert (=> d!133477 m!1121903))

(declare-fun m!1121905 () Bool)

(assert (=> b!1217126 m!1121905))

(declare-fun m!1121907 () Bool)

(assert (=> b!1217127 m!1121907))

(assert (=> b!1217057 d!133477))

(declare-fun d!133479 () Bool)

(declare-fun c!119995 () Bool)

(assert (=> d!133479 (= c!119995 ((_ is ValueCellFull!14751) (select (arr!37926 _values!996) from!1455)))))

(declare-fun e!691029 () V!46355)

(assert (=> d!133479 (= (get!19364 (select (arr!37926 _values!996) from!1455) lt!553115) e!691029)))

(declare-fun b!1217132 () Bool)

(declare-fun get!19366 (ValueCell!14751 V!46355) V!46355)

(assert (=> b!1217132 (= e!691029 (get!19366 (select (arr!37926 _values!996) from!1455) lt!553115))))

(declare-fun b!1217133 () Bool)

(declare-fun get!19367 (ValueCell!14751 V!46355) V!46355)

(assert (=> b!1217133 (= e!691029 (get!19367 (select (arr!37926 _values!996) from!1455) lt!553115))))

(assert (= (and d!133479 c!119995) b!1217132))

(assert (= (and d!133479 (not c!119995)) b!1217133))

(assert (=> b!1217132 m!1121839))

(declare-fun m!1121909 () Bool)

(assert (=> b!1217132 m!1121909))

(assert (=> b!1217133 m!1121839))

(declare-fun m!1121911 () Bool)

(assert (=> b!1217133 m!1121911))

(assert (=> b!1217057 d!133479))

(declare-fun b!1217158 () Bool)

(declare-fun e!691049 () ListLongMap!18071)

(declare-fun e!691048 () ListLongMap!18071)

(assert (=> b!1217158 (= e!691049 e!691048)))

(declare-fun c!120005 () Bool)

(assert (=> b!1217158 (= c!120005 (validKeyInArray!0 (select (arr!37925 lt!553114) from!1455)))))

(declare-fun b!1217159 () Bool)

(declare-fun e!691047 () Bool)

(assert (=> b!1217159 (= e!691047 (validKeyInArray!0 (select (arr!37925 lt!553114) from!1455)))))

(assert (=> b!1217159 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1217160 () Bool)

(declare-fun e!691046 () Bool)

(declare-fun e!691050 () Bool)

(assert (=> b!1217160 (= e!691046 e!691050)))

(assert (=> b!1217160 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38462 lt!553114)))))

(declare-fun lt!553182 () ListLongMap!18071)

(declare-fun res!808399 () Bool)

(assert (=> b!1217160 (= res!808399 (contains!7023 lt!553182 (select (arr!37925 lt!553114) from!1455)))))

(assert (=> b!1217160 (=> (not res!808399) (not e!691050))))

(declare-fun b!1217161 () Bool)

(declare-fun e!691045 () Bool)

(declare-fun isEmpty!997 (ListLongMap!18071) Bool)

(assert (=> b!1217161 (= e!691045 (isEmpty!997 lt!553182))))

(declare-fun b!1217162 () Bool)

(declare-fun e!691044 () Bool)

(assert (=> b!1217162 (= e!691044 e!691046)))

(declare-fun c!120006 () Bool)

(assert (=> b!1217162 (= c!120006 e!691047)))

(declare-fun res!808401 () Bool)

(assert (=> b!1217162 (=> (not res!808401) (not e!691047))))

(assert (=> b!1217162 (= res!808401 (bvslt from!1455 (size!38462 lt!553114)))))

(declare-fun b!1217163 () Bool)

(declare-fun lt!553184 () Unit!40286)

(declare-fun lt!553180 () Unit!40286)

(assert (=> b!1217163 (= lt!553184 lt!553180)))

(declare-fun lt!553181 () (_ BitVec 64))

(declare-fun lt!553179 () V!46355)

(declare-fun lt!553183 () ListLongMap!18071)

(declare-fun lt!553178 () (_ BitVec 64))

(assert (=> b!1217163 (not (contains!7023 (+!4034 lt!553183 (tuple2!20091 lt!553181 lt!553179)) lt!553178))))

(declare-fun addStillNotContains!300 (ListLongMap!18071 (_ BitVec 64) V!46355 (_ BitVec 64)) Unit!40286)

(assert (=> b!1217163 (= lt!553180 (addStillNotContains!300 lt!553183 lt!553181 lt!553179 lt!553178))))

(assert (=> b!1217163 (= lt!553178 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1217163 (= lt!553179 (get!19364 (select (arr!37926 lt!553112) from!1455) (dynLambda!3361 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1217163 (= lt!553181 (select (arr!37925 lt!553114) from!1455))))

(declare-fun call!60607 () ListLongMap!18071)

(assert (=> b!1217163 (= lt!553183 call!60607)))

(assert (=> b!1217163 (= e!691048 (+!4034 call!60607 (tuple2!20091 (select (arr!37925 lt!553114) from!1455) (get!19364 (select (arr!37926 lt!553112) from!1455) (dynLambda!3361 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1217164 () Bool)

(assert (=> b!1217164 (= e!691049 (ListLongMap!18072 Nil!26907))))

(declare-fun b!1217165 () Bool)

(assert (=> b!1217165 (= e!691048 call!60607)))

(declare-fun b!1217166 () Bool)

(declare-fun res!808402 () Bool)

(assert (=> b!1217166 (=> (not res!808402) (not e!691044))))

(assert (=> b!1217166 (= res!808402 (not (contains!7023 lt!553182 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1217167 () Bool)

(assert (=> b!1217167 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38462 lt!553114)))))

(assert (=> b!1217167 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38463 lt!553112)))))

(declare-fun apply!1005 (ListLongMap!18071 (_ BitVec 64)) V!46355)

(assert (=> b!1217167 (= e!691050 (= (apply!1005 lt!553182 (select (arr!37925 lt!553114) from!1455)) (get!19364 (select (arr!37926 lt!553112) from!1455) (dynLambda!3361 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1217168 () Bool)

(assert (=> b!1217168 (= e!691046 e!691045)))

(declare-fun c!120004 () Bool)

(assert (=> b!1217168 (= c!120004 (bvslt from!1455 (size!38462 lt!553114)))))

(declare-fun b!1217169 () Bool)

(assert (=> b!1217169 (= e!691045 (= lt!553182 (getCurrentListMapNoExtraKeys!5456 lt!553114 lt!553112 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!133481 () Bool)

(assert (=> d!133481 e!691044))

(declare-fun res!808400 () Bool)

(assert (=> d!133481 (=> (not res!808400) (not e!691044))))

(assert (=> d!133481 (= res!808400 (not (contains!7023 lt!553182 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133481 (= lt!553182 e!691049)))

(declare-fun c!120007 () Bool)

(assert (=> d!133481 (= c!120007 (bvsge from!1455 (size!38462 lt!553114)))))

(assert (=> d!133481 (validMask!0 mask!1564)))

(assert (=> d!133481 (= (getCurrentListMapNoExtraKeys!5456 lt!553114 lt!553112 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!553182)))

(declare-fun bm!60604 () Bool)

(assert (=> bm!60604 (= call!60607 (getCurrentListMapNoExtraKeys!5456 lt!553114 lt!553112 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!133481 c!120007) b!1217164))

(assert (= (and d!133481 (not c!120007)) b!1217158))

(assert (= (and b!1217158 c!120005) b!1217163))

(assert (= (and b!1217158 (not c!120005)) b!1217165))

(assert (= (or b!1217163 b!1217165) bm!60604))

(assert (= (and d!133481 res!808400) b!1217166))

(assert (= (and b!1217166 res!808402) b!1217162))

(assert (= (and b!1217162 res!808401) b!1217159))

(assert (= (and b!1217162 c!120006) b!1217160))

(assert (= (and b!1217162 (not c!120006)) b!1217168))

(assert (= (and b!1217160 res!808399) b!1217167))

(assert (= (and b!1217168 c!120004) b!1217169))

(assert (= (and b!1217168 (not c!120004)) b!1217161))

(declare-fun b_lambda!21909 () Bool)

(assert (=> (not b_lambda!21909) (not b!1217163)))

(assert (=> b!1217163 t!40113))

(declare-fun b_and!43569 () Bool)

(assert (= b_and!43563 (and (=> t!40113 result!22639) b_and!43569)))

(declare-fun b_lambda!21911 () Bool)

(assert (=> (not b_lambda!21911) (not b!1217167)))

(assert (=> b!1217167 t!40113))

(declare-fun b_and!43571 () Bool)

(assert (= b_and!43569 (and (=> t!40113 result!22639) b_and!43571)))

(declare-fun m!1121913 () Bool)

(assert (=> b!1217161 m!1121913))

(declare-fun m!1121915 () Bool)

(assert (=> b!1217159 m!1121915))

(assert (=> b!1217159 m!1121915))

(declare-fun m!1121917 () Bool)

(assert (=> b!1217159 m!1121917))

(assert (=> b!1217158 m!1121915))

(assert (=> b!1217158 m!1121915))

(assert (=> b!1217158 m!1121917))

(declare-fun m!1121919 () Bool)

(assert (=> b!1217166 m!1121919))

(declare-fun m!1121921 () Bool)

(assert (=> d!133481 m!1121921))

(assert (=> d!133481 m!1121815))

(declare-fun m!1121923 () Bool)

(assert (=> b!1217163 m!1121923))

(assert (=> b!1217163 m!1121803))

(declare-fun m!1121925 () Bool)

(assert (=> b!1217163 m!1121925))

(declare-fun m!1121927 () Bool)

(assert (=> b!1217163 m!1121927))

(declare-fun m!1121929 () Bool)

(assert (=> b!1217163 m!1121929))

(declare-fun m!1121931 () Bool)

(assert (=> b!1217163 m!1121931))

(assert (=> b!1217163 m!1121915))

(assert (=> b!1217163 m!1121923))

(declare-fun m!1121933 () Bool)

(assert (=> b!1217163 m!1121933))

(assert (=> b!1217163 m!1121929))

(assert (=> b!1217163 m!1121803))

(declare-fun m!1121935 () Bool)

(assert (=> bm!60604 m!1121935))

(assert (=> b!1217167 m!1121923))

(assert (=> b!1217167 m!1121803))

(assert (=> b!1217167 m!1121925))

(assert (=> b!1217167 m!1121915))

(assert (=> b!1217167 m!1121923))

(assert (=> b!1217167 m!1121915))

(declare-fun m!1121937 () Bool)

(assert (=> b!1217167 m!1121937))

(assert (=> b!1217167 m!1121803))

(assert (=> b!1217169 m!1121935))

(assert (=> b!1217160 m!1121915))

(assert (=> b!1217160 m!1121915))

(declare-fun m!1121939 () Bool)

(assert (=> b!1217160 m!1121939))

(assert (=> b!1217066 d!133481))

(declare-fun b!1217170 () Bool)

(declare-fun e!691056 () ListLongMap!18071)

(declare-fun e!691055 () ListLongMap!18071)

(assert (=> b!1217170 (= e!691056 e!691055)))

(declare-fun c!120009 () Bool)

(assert (=> b!1217170 (= c!120009 (validKeyInArray!0 (select (arr!37925 _keys!1208) from!1455)))))

(declare-fun b!1217171 () Bool)

(declare-fun e!691054 () Bool)

(assert (=> b!1217171 (= e!691054 (validKeyInArray!0 (select (arr!37925 _keys!1208) from!1455)))))

(assert (=> b!1217171 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1217172 () Bool)

(declare-fun e!691053 () Bool)

(declare-fun e!691057 () Bool)

(assert (=> b!1217172 (= e!691053 e!691057)))

(assert (=> b!1217172 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38462 _keys!1208)))))

(declare-fun lt!553189 () ListLongMap!18071)

(declare-fun res!808403 () Bool)

(assert (=> b!1217172 (= res!808403 (contains!7023 lt!553189 (select (arr!37925 _keys!1208) from!1455)))))

(assert (=> b!1217172 (=> (not res!808403) (not e!691057))))

(declare-fun b!1217173 () Bool)

(declare-fun e!691052 () Bool)

(assert (=> b!1217173 (= e!691052 (isEmpty!997 lt!553189))))

(declare-fun b!1217174 () Bool)

(declare-fun e!691051 () Bool)

(assert (=> b!1217174 (= e!691051 e!691053)))

(declare-fun c!120010 () Bool)

(assert (=> b!1217174 (= c!120010 e!691054)))

(declare-fun res!808405 () Bool)

(assert (=> b!1217174 (=> (not res!808405) (not e!691054))))

(assert (=> b!1217174 (= res!808405 (bvslt from!1455 (size!38462 _keys!1208)))))

(declare-fun b!1217175 () Bool)

(declare-fun lt!553191 () Unit!40286)

(declare-fun lt!553187 () Unit!40286)

(assert (=> b!1217175 (= lt!553191 lt!553187)))

(declare-fun lt!553188 () (_ BitVec 64))

(declare-fun lt!553190 () ListLongMap!18071)

(declare-fun lt!553186 () V!46355)

(declare-fun lt!553185 () (_ BitVec 64))

(assert (=> b!1217175 (not (contains!7023 (+!4034 lt!553190 (tuple2!20091 lt!553188 lt!553186)) lt!553185))))

(assert (=> b!1217175 (= lt!553187 (addStillNotContains!300 lt!553190 lt!553188 lt!553186 lt!553185))))

(assert (=> b!1217175 (= lt!553185 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1217175 (= lt!553186 (get!19364 (select (arr!37926 _values!996) from!1455) (dynLambda!3361 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1217175 (= lt!553188 (select (arr!37925 _keys!1208) from!1455))))

(declare-fun call!60608 () ListLongMap!18071)

(assert (=> b!1217175 (= lt!553190 call!60608)))

(assert (=> b!1217175 (= e!691055 (+!4034 call!60608 (tuple2!20091 (select (arr!37925 _keys!1208) from!1455) (get!19364 (select (arr!37926 _values!996) from!1455) (dynLambda!3361 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1217176 () Bool)

(assert (=> b!1217176 (= e!691056 (ListLongMap!18072 Nil!26907))))

(declare-fun b!1217177 () Bool)

(assert (=> b!1217177 (= e!691055 call!60608)))

(declare-fun b!1217178 () Bool)

(declare-fun res!808406 () Bool)

(assert (=> b!1217178 (=> (not res!808406) (not e!691051))))

(assert (=> b!1217178 (= res!808406 (not (contains!7023 lt!553189 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1217179 () Bool)

(assert (=> b!1217179 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38462 _keys!1208)))))

(assert (=> b!1217179 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38463 _values!996)))))

(assert (=> b!1217179 (= e!691057 (= (apply!1005 lt!553189 (select (arr!37925 _keys!1208) from!1455)) (get!19364 (select (arr!37926 _values!996) from!1455) (dynLambda!3361 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1217180 () Bool)

(assert (=> b!1217180 (= e!691053 e!691052)))

(declare-fun c!120008 () Bool)

(assert (=> b!1217180 (= c!120008 (bvslt from!1455 (size!38462 _keys!1208)))))

(declare-fun b!1217181 () Bool)

(assert (=> b!1217181 (= e!691052 (= lt!553189 (getCurrentListMapNoExtraKeys!5456 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!133483 () Bool)

(assert (=> d!133483 e!691051))

(declare-fun res!808404 () Bool)

(assert (=> d!133483 (=> (not res!808404) (not e!691051))))

(assert (=> d!133483 (= res!808404 (not (contains!7023 lt!553189 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133483 (= lt!553189 e!691056)))

(declare-fun c!120011 () Bool)

(assert (=> d!133483 (= c!120011 (bvsge from!1455 (size!38462 _keys!1208)))))

(assert (=> d!133483 (validMask!0 mask!1564)))

(assert (=> d!133483 (= (getCurrentListMapNoExtraKeys!5456 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!553189)))

(declare-fun bm!60605 () Bool)

(assert (=> bm!60605 (= call!60608 (getCurrentListMapNoExtraKeys!5456 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!133483 c!120011) b!1217176))

(assert (= (and d!133483 (not c!120011)) b!1217170))

(assert (= (and b!1217170 c!120009) b!1217175))

(assert (= (and b!1217170 (not c!120009)) b!1217177))

(assert (= (or b!1217175 b!1217177) bm!60605))

(assert (= (and d!133483 res!808404) b!1217178))

(assert (= (and b!1217178 res!808406) b!1217174))

(assert (= (and b!1217174 res!808405) b!1217171))

(assert (= (and b!1217174 c!120010) b!1217172))

(assert (= (and b!1217174 (not c!120010)) b!1217180))

(assert (= (and b!1217172 res!808403) b!1217179))

(assert (= (and b!1217180 c!120008) b!1217181))

(assert (= (and b!1217180 (not c!120008)) b!1217173))

(declare-fun b_lambda!21913 () Bool)

(assert (=> (not b_lambda!21913) (not b!1217175)))

(assert (=> b!1217175 t!40113))

(declare-fun b_and!43573 () Bool)

(assert (= b_and!43571 (and (=> t!40113 result!22639) b_and!43573)))

(declare-fun b_lambda!21915 () Bool)

(assert (=> (not b_lambda!21915) (not b!1217179)))

(assert (=> b!1217179 t!40113))

(declare-fun b_and!43575 () Bool)

(assert (= b_and!43573 (and (=> t!40113 result!22639) b_and!43575)))

(declare-fun m!1121941 () Bool)

(assert (=> b!1217173 m!1121941))

(assert (=> b!1217171 m!1121823))

(assert (=> b!1217171 m!1121823))

(assert (=> b!1217171 m!1121825))

(assert (=> b!1217170 m!1121823))

(assert (=> b!1217170 m!1121823))

(assert (=> b!1217170 m!1121825))

(declare-fun m!1121943 () Bool)

(assert (=> b!1217178 m!1121943))

(declare-fun m!1121945 () Bool)

(assert (=> d!133483 m!1121945))

(assert (=> d!133483 m!1121815))

(assert (=> b!1217175 m!1121839))

(assert (=> b!1217175 m!1121803))

(declare-fun m!1121947 () Bool)

(assert (=> b!1217175 m!1121947))

(declare-fun m!1121949 () Bool)

(assert (=> b!1217175 m!1121949))

(declare-fun m!1121951 () Bool)

(assert (=> b!1217175 m!1121951))

(declare-fun m!1121953 () Bool)

(assert (=> b!1217175 m!1121953))

(assert (=> b!1217175 m!1121823))

(assert (=> b!1217175 m!1121839))

(declare-fun m!1121955 () Bool)

(assert (=> b!1217175 m!1121955))

(assert (=> b!1217175 m!1121951))

(assert (=> b!1217175 m!1121803))

(declare-fun m!1121957 () Bool)

(assert (=> bm!60605 m!1121957))

(assert (=> b!1217179 m!1121839))

(assert (=> b!1217179 m!1121803))

(assert (=> b!1217179 m!1121947))

(assert (=> b!1217179 m!1121823))

(assert (=> b!1217179 m!1121839))

(assert (=> b!1217179 m!1121823))

(declare-fun m!1121959 () Bool)

(assert (=> b!1217179 m!1121959))

(assert (=> b!1217179 m!1121803))

(assert (=> b!1217181 m!1121957))

(assert (=> b!1217172 m!1121823))

(assert (=> b!1217172 m!1121823))

(declare-fun m!1121961 () Bool)

(assert (=> b!1217172 m!1121961))

(assert (=> b!1217066 d!133483))

(declare-fun d!133485 () Bool)

(declare-fun res!808411 () Bool)

(declare-fun e!691062 () Bool)

(assert (=> d!133485 (=> res!808411 e!691062)))

(assert (=> d!133485 (= res!808411 (= (select (arr!37925 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!133485 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!691062)))

(declare-fun b!1217186 () Bool)

(declare-fun e!691063 () Bool)

(assert (=> b!1217186 (= e!691062 e!691063)))

(declare-fun res!808412 () Bool)

(assert (=> b!1217186 (=> (not res!808412) (not e!691063))))

(assert (=> b!1217186 (= res!808412 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38462 _keys!1208)))))

(declare-fun b!1217187 () Bool)

(assert (=> b!1217187 (= e!691063 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!133485 (not res!808411)) b!1217186))

(assert (= (and b!1217186 res!808412) b!1217187))

(declare-fun m!1121963 () Bool)

(assert (=> d!133485 m!1121963))

(declare-fun m!1121965 () Bool)

(assert (=> b!1217187 m!1121965))

(assert (=> b!1217056 d!133485))

(declare-fun d!133487 () Bool)

(assert (=> d!133487 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!553194 () Unit!40286)

(declare-fun choose!13 (array!78588 (_ BitVec 64) (_ BitVec 32)) Unit!40286)

(assert (=> d!133487 (= lt!553194 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!133487 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133487 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!553194)))

(declare-fun bs!34300 () Bool)

(assert (= bs!34300 d!133487))

(assert (=> bs!34300 m!1121793))

(declare-fun m!1121967 () Bool)

(assert (=> bs!34300 m!1121967))

(assert (=> b!1217056 d!133487))

(declare-fun d!133489 () Bool)

(assert (=> d!133489 (= (array_inv!28776 _keys!1208) (bvsge (size!38462 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!101330 d!133489))

(declare-fun d!133491 () Bool)

(assert (=> d!133491 (= (array_inv!28777 _values!996) (bvsge (size!38463 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!101330 d!133491))

(declare-fun d!133493 () Bool)

(assert (=> d!133493 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1217055 d!133493))

(declare-fun b!1217198 () Bool)

(declare-fun e!691072 () Bool)

(declare-fun contains!7025 (List!26911 (_ BitVec 64)) Bool)

(assert (=> b!1217198 (= e!691072 (contains!7025 Nil!26908 (select (arr!37925 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1217199 () Bool)

(declare-fun e!691075 () Bool)

(declare-fun e!691074 () Bool)

(assert (=> b!1217199 (= e!691075 e!691074)))

(declare-fun c!120014 () Bool)

(assert (=> b!1217199 (= c!120014 (validKeyInArray!0 (select (arr!37925 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1217200 () Bool)

(declare-fun call!60611 () Bool)

(assert (=> b!1217200 (= e!691074 call!60611)))

(declare-fun bm!60608 () Bool)

(assert (=> bm!60608 (= call!60611 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120014 (Cons!26907 (select (arr!37925 _keys!1208) #b00000000000000000000000000000000) Nil!26908) Nil!26908)))))

(declare-fun d!133495 () Bool)

(declare-fun res!808420 () Bool)

(declare-fun e!691073 () Bool)

(assert (=> d!133495 (=> res!808420 e!691073)))

(assert (=> d!133495 (= res!808420 (bvsge #b00000000000000000000000000000000 (size!38462 _keys!1208)))))

(assert (=> d!133495 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26908) e!691073)))

(declare-fun b!1217201 () Bool)

(assert (=> b!1217201 (= e!691074 call!60611)))

(declare-fun b!1217202 () Bool)

(assert (=> b!1217202 (= e!691073 e!691075)))

(declare-fun res!808419 () Bool)

(assert (=> b!1217202 (=> (not res!808419) (not e!691075))))

(assert (=> b!1217202 (= res!808419 (not e!691072))))

(declare-fun res!808421 () Bool)

(assert (=> b!1217202 (=> (not res!808421) (not e!691072))))

(assert (=> b!1217202 (= res!808421 (validKeyInArray!0 (select (arr!37925 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!133495 (not res!808420)) b!1217202))

(assert (= (and b!1217202 res!808421) b!1217198))

(assert (= (and b!1217202 res!808419) b!1217199))

(assert (= (and b!1217199 c!120014) b!1217201))

(assert (= (and b!1217199 (not c!120014)) b!1217200))

(assert (= (or b!1217201 b!1217200) bm!60608))

(assert (=> b!1217198 m!1121963))

(assert (=> b!1217198 m!1121963))

(declare-fun m!1121969 () Bool)

(assert (=> b!1217198 m!1121969))

(assert (=> b!1217199 m!1121963))

(assert (=> b!1217199 m!1121963))

(declare-fun m!1121971 () Bool)

(assert (=> b!1217199 m!1121971))

(assert (=> bm!60608 m!1121963))

(declare-fun m!1121973 () Bool)

(assert (=> bm!60608 m!1121973))

(assert (=> b!1217202 m!1121963))

(assert (=> b!1217202 m!1121963))

(assert (=> b!1217202 m!1121971))

(assert (=> b!1217060 d!133495))

(declare-fun d!133497 () Bool)

(assert (=> d!133497 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1217054 d!133497))

(declare-fun b!1217211 () Bool)

(declare-fun e!691082 () Bool)

(declare-fun call!60614 () Bool)

(assert (=> b!1217211 (= e!691082 call!60614)))

(declare-fun bm!60611 () Bool)

(assert (=> bm!60611 (= call!60614 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1217212 () Bool)

(declare-fun e!691083 () Bool)

(assert (=> b!1217212 (= e!691083 e!691082)))

(declare-fun lt!553201 () (_ BitVec 64))

(assert (=> b!1217212 (= lt!553201 (select (arr!37925 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!553203 () Unit!40286)

(assert (=> b!1217212 (= lt!553203 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!553201 #b00000000000000000000000000000000))))

(assert (=> b!1217212 (arrayContainsKey!0 _keys!1208 lt!553201 #b00000000000000000000000000000000)))

(declare-fun lt!553202 () Unit!40286)

(assert (=> b!1217212 (= lt!553202 lt!553203)))

(declare-fun res!808427 () Bool)

(declare-datatypes ((SeekEntryResult!9940 0))(
  ( (MissingZero!9940 (index!42130 (_ BitVec 32))) (Found!9940 (index!42131 (_ BitVec 32))) (Intermediate!9940 (undefined!10752 Bool) (index!42132 (_ BitVec 32)) (x!107224 (_ BitVec 32))) (Undefined!9940) (MissingVacant!9940 (index!42133 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!78588 (_ BitVec 32)) SeekEntryResult!9940)

(assert (=> b!1217212 (= res!808427 (= (seekEntryOrOpen!0 (select (arr!37925 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9940 #b00000000000000000000000000000000)))))

(assert (=> b!1217212 (=> (not res!808427) (not e!691082))))

(declare-fun b!1217214 () Bool)

(declare-fun e!691084 () Bool)

(assert (=> b!1217214 (= e!691084 e!691083)))

(declare-fun c!120017 () Bool)

(assert (=> b!1217214 (= c!120017 (validKeyInArray!0 (select (arr!37925 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!133499 () Bool)

(declare-fun res!808426 () Bool)

(assert (=> d!133499 (=> res!808426 e!691084)))

(assert (=> d!133499 (= res!808426 (bvsge #b00000000000000000000000000000000 (size!38462 _keys!1208)))))

(assert (=> d!133499 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!691084)))

(declare-fun b!1217213 () Bool)

(assert (=> b!1217213 (= e!691083 call!60614)))

(assert (= (and d!133499 (not res!808426)) b!1217214))

(assert (= (and b!1217214 c!120017) b!1217212))

(assert (= (and b!1217214 (not c!120017)) b!1217213))

(assert (= (and b!1217212 res!808427) b!1217211))

(assert (= (or b!1217211 b!1217213) bm!60611))

(declare-fun m!1121975 () Bool)

(assert (=> bm!60611 m!1121975))

(assert (=> b!1217212 m!1121963))

(declare-fun m!1121977 () Bool)

(assert (=> b!1217212 m!1121977))

(declare-fun m!1121979 () Bool)

(assert (=> b!1217212 m!1121979))

(assert (=> b!1217212 m!1121963))

(declare-fun m!1121981 () Bool)

(assert (=> b!1217212 m!1121981))

(assert (=> b!1217214 m!1121963))

(assert (=> b!1217214 m!1121963))

(assert (=> b!1217214 m!1121971))

(assert (=> b!1217059 d!133499))

(declare-fun b!1217215 () Bool)

(declare-fun e!691085 () Bool)

(declare-fun call!60615 () Bool)

(assert (=> b!1217215 (= e!691085 call!60615)))

(declare-fun bm!60612 () Bool)

(assert (=> bm!60612 (= call!60615 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!553114 mask!1564))))

(declare-fun b!1217216 () Bool)

(declare-fun e!691086 () Bool)

(assert (=> b!1217216 (= e!691086 e!691085)))

(declare-fun lt!553204 () (_ BitVec 64))

(assert (=> b!1217216 (= lt!553204 (select (arr!37925 lt!553114) #b00000000000000000000000000000000))))

(declare-fun lt!553206 () Unit!40286)

(assert (=> b!1217216 (= lt!553206 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!553114 lt!553204 #b00000000000000000000000000000000))))

(assert (=> b!1217216 (arrayContainsKey!0 lt!553114 lt!553204 #b00000000000000000000000000000000)))

(declare-fun lt!553205 () Unit!40286)

(assert (=> b!1217216 (= lt!553205 lt!553206)))

(declare-fun res!808429 () Bool)

(assert (=> b!1217216 (= res!808429 (= (seekEntryOrOpen!0 (select (arr!37925 lt!553114) #b00000000000000000000000000000000) lt!553114 mask!1564) (Found!9940 #b00000000000000000000000000000000)))))

(assert (=> b!1217216 (=> (not res!808429) (not e!691085))))

(declare-fun b!1217218 () Bool)

(declare-fun e!691087 () Bool)

(assert (=> b!1217218 (= e!691087 e!691086)))

(declare-fun c!120018 () Bool)

(assert (=> b!1217218 (= c!120018 (validKeyInArray!0 (select (arr!37925 lt!553114) #b00000000000000000000000000000000)))))

(declare-fun d!133501 () Bool)

(declare-fun res!808428 () Bool)

(assert (=> d!133501 (=> res!808428 e!691087)))

(assert (=> d!133501 (= res!808428 (bvsge #b00000000000000000000000000000000 (size!38462 lt!553114)))))

(assert (=> d!133501 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553114 mask!1564) e!691087)))

(declare-fun b!1217217 () Bool)

(assert (=> b!1217217 (= e!691086 call!60615)))

(assert (= (and d!133501 (not res!808428)) b!1217218))

(assert (= (and b!1217218 c!120018) b!1217216))

(assert (= (and b!1217218 (not c!120018)) b!1217217))

(assert (= (and b!1217216 res!808429) b!1217215))

(assert (= (or b!1217215 b!1217217) bm!60612))

(declare-fun m!1121983 () Bool)

(assert (=> bm!60612 m!1121983))

(declare-fun m!1121985 () Bool)

(assert (=> b!1217216 m!1121985))

(declare-fun m!1121987 () Bool)

(assert (=> b!1217216 m!1121987))

(declare-fun m!1121989 () Bool)

(assert (=> b!1217216 m!1121989))

(assert (=> b!1217216 m!1121985))

(declare-fun m!1121991 () Bool)

(assert (=> b!1217216 m!1121991))

(assert (=> b!1217218 m!1121985))

(assert (=> b!1217218 m!1121985))

(declare-fun m!1121993 () Bool)

(assert (=> b!1217218 m!1121993))

(assert (=> b!1217064 d!133501))

(declare-fun b!1217219 () Bool)

(declare-fun e!691088 () Bool)

(assert (=> b!1217219 (= e!691088 (contains!7025 Nil!26908 (select (arr!37925 lt!553114) #b00000000000000000000000000000000)))))

(declare-fun b!1217220 () Bool)

(declare-fun e!691091 () Bool)

(declare-fun e!691090 () Bool)

(assert (=> b!1217220 (= e!691091 e!691090)))

(declare-fun c!120019 () Bool)

(assert (=> b!1217220 (= c!120019 (validKeyInArray!0 (select (arr!37925 lt!553114) #b00000000000000000000000000000000)))))

(declare-fun b!1217221 () Bool)

(declare-fun call!60616 () Bool)

(assert (=> b!1217221 (= e!691090 call!60616)))

(declare-fun bm!60613 () Bool)

(assert (=> bm!60613 (= call!60616 (arrayNoDuplicates!0 lt!553114 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120019 (Cons!26907 (select (arr!37925 lt!553114) #b00000000000000000000000000000000) Nil!26908) Nil!26908)))))

(declare-fun d!133503 () Bool)

(declare-fun res!808431 () Bool)

(declare-fun e!691089 () Bool)

(assert (=> d!133503 (=> res!808431 e!691089)))

(assert (=> d!133503 (= res!808431 (bvsge #b00000000000000000000000000000000 (size!38462 lt!553114)))))

(assert (=> d!133503 (= (arrayNoDuplicates!0 lt!553114 #b00000000000000000000000000000000 Nil!26908) e!691089)))

(declare-fun b!1217222 () Bool)

(assert (=> b!1217222 (= e!691090 call!60616)))

(declare-fun b!1217223 () Bool)

(assert (=> b!1217223 (= e!691089 e!691091)))

(declare-fun res!808430 () Bool)

(assert (=> b!1217223 (=> (not res!808430) (not e!691091))))

(assert (=> b!1217223 (= res!808430 (not e!691088))))

(declare-fun res!808432 () Bool)

(assert (=> b!1217223 (=> (not res!808432) (not e!691088))))

(assert (=> b!1217223 (= res!808432 (validKeyInArray!0 (select (arr!37925 lt!553114) #b00000000000000000000000000000000)))))

(assert (= (and d!133503 (not res!808431)) b!1217223))

(assert (= (and b!1217223 res!808432) b!1217219))

(assert (= (and b!1217223 res!808430) b!1217220))

(assert (= (and b!1217220 c!120019) b!1217222))

(assert (= (and b!1217220 (not c!120019)) b!1217221))

(assert (= (or b!1217222 b!1217221) bm!60613))

(assert (=> b!1217219 m!1121985))

(assert (=> b!1217219 m!1121985))

(declare-fun m!1121995 () Bool)

(assert (=> b!1217219 m!1121995))

(assert (=> b!1217220 m!1121985))

(assert (=> b!1217220 m!1121985))

(assert (=> b!1217220 m!1121993))

(assert (=> bm!60613 m!1121985))

(declare-fun m!1121997 () Bool)

(assert (=> bm!60613 m!1121997))

(assert (=> b!1217223 m!1121985))

(assert (=> b!1217223 m!1121985))

(assert (=> b!1217223 m!1121993))

(assert (=> b!1217063 d!133503))

(declare-fun b!1217224 () Bool)

(declare-fun e!691097 () ListLongMap!18071)

(declare-fun e!691096 () ListLongMap!18071)

(assert (=> b!1217224 (= e!691097 e!691096)))

(declare-fun c!120021 () Bool)

(assert (=> b!1217224 (= c!120021 (validKeyInArray!0 (select (arr!37925 lt!553114) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1217225 () Bool)

(declare-fun e!691095 () Bool)

(assert (=> b!1217225 (= e!691095 (validKeyInArray!0 (select (arr!37925 lt!553114) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1217225 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1217226 () Bool)

(declare-fun e!691094 () Bool)

(declare-fun e!691098 () Bool)

(assert (=> b!1217226 (= e!691094 e!691098)))

(assert (=> b!1217226 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38462 lt!553114)))))

(declare-fun lt!553211 () ListLongMap!18071)

(declare-fun res!808433 () Bool)

(assert (=> b!1217226 (= res!808433 (contains!7023 lt!553211 (select (arr!37925 lt!553114) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1217226 (=> (not res!808433) (not e!691098))))

(declare-fun b!1217227 () Bool)

(declare-fun e!691093 () Bool)

(assert (=> b!1217227 (= e!691093 (isEmpty!997 lt!553211))))

(declare-fun b!1217228 () Bool)

(declare-fun e!691092 () Bool)

(assert (=> b!1217228 (= e!691092 e!691094)))

(declare-fun c!120022 () Bool)

(assert (=> b!1217228 (= c!120022 e!691095)))

(declare-fun res!808435 () Bool)

(assert (=> b!1217228 (=> (not res!808435) (not e!691095))))

(assert (=> b!1217228 (= res!808435 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38462 lt!553114)))))

(declare-fun b!1217229 () Bool)

(declare-fun lt!553213 () Unit!40286)

(declare-fun lt!553209 () Unit!40286)

(assert (=> b!1217229 (= lt!553213 lt!553209)))

(declare-fun lt!553210 () (_ BitVec 64))

(declare-fun lt!553208 () V!46355)

(declare-fun lt!553212 () ListLongMap!18071)

(declare-fun lt!553207 () (_ BitVec 64))

(assert (=> b!1217229 (not (contains!7023 (+!4034 lt!553212 (tuple2!20091 lt!553210 lt!553208)) lt!553207))))

(assert (=> b!1217229 (= lt!553209 (addStillNotContains!300 lt!553212 lt!553210 lt!553208 lt!553207))))

(assert (=> b!1217229 (= lt!553207 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1217229 (= lt!553208 (get!19364 (select (arr!37926 lt!553112) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3361 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1217229 (= lt!553210 (select (arr!37925 lt!553114) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!60617 () ListLongMap!18071)

(assert (=> b!1217229 (= lt!553212 call!60617)))

(assert (=> b!1217229 (= e!691096 (+!4034 call!60617 (tuple2!20091 (select (arr!37925 lt!553114) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19364 (select (arr!37926 lt!553112) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3361 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1217230 () Bool)

(assert (=> b!1217230 (= e!691097 (ListLongMap!18072 Nil!26907))))

(declare-fun b!1217231 () Bool)

(assert (=> b!1217231 (= e!691096 call!60617)))

(declare-fun b!1217232 () Bool)

(declare-fun res!808436 () Bool)

(assert (=> b!1217232 (=> (not res!808436) (not e!691092))))

(assert (=> b!1217232 (= res!808436 (not (contains!7023 lt!553211 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1217233 () Bool)

(assert (=> b!1217233 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38462 lt!553114)))))

(assert (=> b!1217233 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38463 lt!553112)))))

(assert (=> b!1217233 (= e!691098 (= (apply!1005 lt!553211 (select (arr!37925 lt!553114) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19364 (select (arr!37926 lt!553112) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3361 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1217234 () Bool)

(assert (=> b!1217234 (= e!691094 e!691093)))

(declare-fun c!120020 () Bool)

(assert (=> b!1217234 (= c!120020 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38462 lt!553114)))))

(declare-fun b!1217235 () Bool)

(assert (=> b!1217235 (= e!691093 (= lt!553211 (getCurrentListMapNoExtraKeys!5456 lt!553114 lt!553112 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!133505 () Bool)

(assert (=> d!133505 e!691092))

(declare-fun res!808434 () Bool)

(assert (=> d!133505 (=> (not res!808434) (not e!691092))))

(assert (=> d!133505 (= res!808434 (not (contains!7023 lt!553211 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133505 (= lt!553211 e!691097)))

(declare-fun c!120023 () Bool)

(assert (=> d!133505 (= c!120023 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38462 lt!553114)))))

(assert (=> d!133505 (validMask!0 mask!1564)))

(assert (=> d!133505 (= (getCurrentListMapNoExtraKeys!5456 lt!553114 lt!553112 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!553211)))

(declare-fun bm!60614 () Bool)

(assert (=> bm!60614 (= call!60617 (getCurrentListMapNoExtraKeys!5456 lt!553114 lt!553112 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!133505 c!120023) b!1217230))

(assert (= (and d!133505 (not c!120023)) b!1217224))

(assert (= (and b!1217224 c!120021) b!1217229))

(assert (= (and b!1217224 (not c!120021)) b!1217231))

(assert (= (or b!1217229 b!1217231) bm!60614))

(assert (= (and d!133505 res!808434) b!1217232))

(assert (= (and b!1217232 res!808436) b!1217228))

(assert (= (and b!1217228 res!808435) b!1217225))

(assert (= (and b!1217228 c!120022) b!1217226))

(assert (= (and b!1217228 (not c!120022)) b!1217234))

(assert (= (and b!1217226 res!808433) b!1217233))

(assert (= (and b!1217234 c!120020) b!1217235))

(assert (= (and b!1217234 (not c!120020)) b!1217227))

(declare-fun b_lambda!21917 () Bool)

(assert (=> (not b_lambda!21917) (not b!1217229)))

(assert (=> b!1217229 t!40113))

(declare-fun b_and!43577 () Bool)

(assert (= b_and!43575 (and (=> t!40113 result!22639) b_and!43577)))

(declare-fun b_lambda!21919 () Bool)

(assert (=> (not b_lambda!21919) (not b!1217233)))

(assert (=> b!1217233 t!40113))

(declare-fun b_and!43579 () Bool)

(assert (= b_and!43577 (and (=> t!40113 result!22639) b_and!43579)))

(declare-fun m!1121999 () Bool)

(assert (=> b!1217227 m!1121999))

(declare-fun m!1122001 () Bool)

(assert (=> b!1217225 m!1122001))

(assert (=> b!1217225 m!1122001))

(declare-fun m!1122003 () Bool)

(assert (=> b!1217225 m!1122003))

(assert (=> b!1217224 m!1122001))

(assert (=> b!1217224 m!1122001))

(assert (=> b!1217224 m!1122003))

(declare-fun m!1122005 () Bool)

(assert (=> b!1217232 m!1122005))

(declare-fun m!1122007 () Bool)

(assert (=> d!133505 m!1122007))

(assert (=> d!133505 m!1121815))

(declare-fun m!1122009 () Bool)

(assert (=> b!1217229 m!1122009))

(assert (=> b!1217229 m!1121803))

(declare-fun m!1122011 () Bool)

(assert (=> b!1217229 m!1122011))

(declare-fun m!1122013 () Bool)

(assert (=> b!1217229 m!1122013))

(declare-fun m!1122015 () Bool)

(assert (=> b!1217229 m!1122015))

(declare-fun m!1122017 () Bool)

(assert (=> b!1217229 m!1122017))

(assert (=> b!1217229 m!1122001))

(assert (=> b!1217229 m!1122009))

(declare-fun m!1122019 () Bool)

(assert (=> b!1217229 m!1122019))

(assert (=> b!1217229 m!1122015))

(assert (=> b!1217229 m!1121803))

(declare-fun m!1122021 () Bool)

(assert (=> bm!60614 m!1122021))

(assert (=> b!1217233 m!1122009))

(assert (=> b!1217233 m!1121803))

(assert (=> b!1217233 m!1122011))

(assert (=> b!1217233 m!1122001))

(assert (=> b!1217233 m!1122009))

(assert (=> b!1217233 m!1122001))

(declare-fun m!1122023 () Bool)

(assert (=> b!1217233 m!1122023))

(assert (=> b!1217233 m!1121803))

(assert (=> b!1217235 m!1122021))

(assert (=> b!1217226 m!1122001))

(assert (=> b!1217226 m!1122001))

(declare-fun m!1122025 () Bool)

(assert (=> b!1217226 m!1122025))

(assert (=> b!1217067 d!133505))

(declare-fun b!1217242 () Bool)

(declare-fun e!691103 () Bool)

(declare-fun call!60622 () ListLongMap!18071)

(declare-fun call!60623 () ListLongMap!18071)

(assert (=> b!1217242 (= e!691103 (= call!60622 call!60623))))

(assert (=> b!1217242 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38463 _values!996)))))

(declare-fun d!133507 () Bool)

(declare-fun e!691104 () Bool)

(assert (=> d!133507 e!691104))

(declare-fun res!808439 () Bool)

(assert (=> d!133507 (=> (not res!808439) (not e!691104))))

(assert (=> d!133507 (= res!808439 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38462 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38462 _keys!1208))))))))

(declare-fun lt!553216 () Unit!40286)

(declare-fun choose!1828 (array!78588 array!78590 (_ BitVec 32) (_ BitVec 32) V!46355 V!46355 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40286)

(assert (=> d!133507 (= lt!553216 (choose!1828 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133507 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38462 _keys!1208)))))

(assert (=> d!133507 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1115 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!553216)))

(declare-fun bm!60619 () Bool)

(assert (=> bm!60619 (= call!60622 (getCurrentListMapNoExtraKeys!5456 (array!78589 (store (arr!37925 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38462 _keys!1208)) (array!78591 (store (arr!37926 _values!996) i!673 (ValueCellFull!14751 (dynLambda!3361 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38463 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1217243 () Bool)

(assert (=> b!1217243 (= e!691103 (= call!60622 (-!1913 call!60623 k0!934)))))

(assert (=> b!1217243 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38463 _values!996)))))

(declare-fun bm!60620 () Bool)

(assert (=> bm!60620 (= call!60623 (getCurrentListMapNoExtraKeys!5456 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1217244 () Bool)

(assert (=> b!1217244 (= e!691104 e!691103)))

(declare-fun c!120026 () Bool)

(assert (=> b!1217244 (= c!120026 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(assert (= (and d!133507 res!808439) b!1217244))

(assert (= (and b!1217244 c!120026) b!1217243))

(assert (= (and b!1217244 (not c!120026)) b!1217242))

(assert (= (or b!1217243 b!1217242) bm!60620))

(assert (= (or b!1217243 b!1217242) bm!60619))

(declare-fun b_lambda!21921 () Bool)

(assert (=> (not b_lambda!21921) (not bm!60619)))

(assert (=> bm!60619 t!40113))

(declare-fun b_and!43581 () Bool)

(assert (= b_and!43579 (and (=> t!40113 result!22639) b_and!43581)))

(declare-fun m!1122027 () Bool)

(assert (=> d!133507 m!1122027))

(assert (=> bm!60619 m!1121837))

(assert (=> bm!60619 m!1121803))

(declare-fun m!1122029 () Bool)

(assert (=> bm!60619 m!1122029))

(declare-fun m!1122031 () Bool)

(assert (=> bm!60619 m!1122031))

(declare-fun m!1122033 () Bool)

(assert (=> b!1217243 m!1122033))

(assert (=> bm!60620 m!1121817))

(assert (=> b!1217067 d!133507))

(declare-fun b!1217245 () Bool)

(declare-fun e!691110 () ListLongMap!18071)

(declare-fun e!691109 () ListLongMap!18071)

(assert (=> b!1217245 (= e!691110 e!691109)))

(declare-fun c!120028 () Bool)

(assert (=> b!1217245 (= c!120028 (validKeyInArray!0 (select (arr!37925 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1217246 () Bool)

(declare-fun e!691108 () Bool)

(assert (=> b!1217246 (= e!691108 (validKeyInArray!0 (select (arr!37925 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1217246 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1217247 () Bool)

(declare-fun e!691107 () Bool)

(declare-fun e!691111 () Bool)

(assert (=> b!1217247 (= e!691107 e!691111)))

(assert (=> b!1217247 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38462 _keys!1208)))))

(declare-fun res!808440 () Bool)

(declare-fun lt!553221 () ListLongMap!18071)

(assert (=> b!1217247 (= res!808440 (contains!7023 lt!553221 (select (arr!37925 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1217247 (=> (not res!808440) (not e!691111))))

(declare-fun b!1217248 () Bool)

(declare-fun e!691106 () Bool)

(assert (=> b!1217248 (= e!691106 (isEmpty!997 lt!553221))))

(declare-fun b!1217249 () Bool)

(declare-fun e!691105 () Bool)

(assert (=> b!1217249 (= e!691105 e!691107)))

(declare-fun c!120029 () Bool)

(assert (=> b!1217249 (= c!120029 e!691108)))

(declare-fun res!808442 () Bool)

(assert (=> b!1217249 (=> (not res!808442) (not e!691108))))

(assert (=> b!1217249 (= res!808442 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38462 _keys!1208)))))

(declare-fun b!1217250 () Bool)

(declare-fun lt!553223 () Unit!40286)

(declare-fun lt!553219 () Unit!40286)

(assert (=> b!1217250 (= lt!553223 lt!553219)))

(declare-fun lt!553218 () V!46355)

(declare-fun lt!553217 () (_ BitVec 64))

(declare-fun lt!553220 () (_ BitVec 64))

(declare-fun lt!553222 () ListLongMap!18071)

(assert (=> b!1217250 (not (contains!7023 (+!4034 lt!553222 (tuple2!20091 lt!553220 lt!553218)) lt!553217))))

(assert (=> b!1217250 (= lt!553219 (addStillNotContains!300 lt!553222 lt!553220 lt!553218 lt!553217))))

(assert (=> b!1217250 (= lt!553217 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1217250 (= lt!553218 (get!19364 (select (arr!37926 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3361 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1217250 (= lt!553220 (select (arr!37925 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!60624 () ListLongMap!18071)

(assert (=> b!1217250 (= lt!553222 call!60624)))

(assert (=> b!1217250 (= e!691109 (+!4034 call!60624 (tuple2!20091 (select (arr!37925 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19364 (select (arr!37926 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3361 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1217251 () Bool)

(assert (=> b!1217251 (= e!691110 (ListLongMap!18072 Nil!26907))))

(declare-fun b!1217252 () Bool)

(assert (=> b!1217252 (= e!691109 call!60624)))

(declare-fun b!1217253 () Bool)

(declare-fun res!808443 () Bool)

(assert (=> b!1217253 (=> (not res!808443) (not e!691105))))

(assert (=> b!1217253 (= res!808443 (not (contains!7023 lt!553221 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1217254 () Bool)

(assert (=> b!1217254 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38462 _keys!1208)))))

(assert (=> b!1217254 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38463 _values!996)))))

(assert (=> b!1217254 (= e!691111 (= (apply!1005 lt!553221 (select (arr!37925 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19364 (select (arr!37926 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3361 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1217255 () Bool)

(assert (=> b!1217255 (= e!691107 e!691106)))

(declare-fun c!120027 () Bool)

(assert (=> b!1217255 (= c!120027 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38462 _keys!1208)))))

(declare-fun b!1217256 () Bool)

(assert (=> b!1217256 (= e!691106 (= lt!553221 (getCurrentListMapNoExtraKeys!5456 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!133509 () Bool)

(assert (=> d!133509 e!691105))

(declare-fun res!808441 () Bool)

(assert (=> d!133509 (=> (not res!808441) (not e!691105))))

(assert (=> d!133509 (= res!808441 (not (contains!7023 lt!553221 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133509 (= lt!553221 e!691110)))

(declare-fun c!120030 () Bool)

(assert (=> d!133509 (= c!120030 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38462 _keys!1208)))))

(assert (=> d!133509 (validMask!0 mask!1564)))

(assert (=> d!133509 (= (getCurrentListMapNoExtraKeys!5456 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!553221)))

(declare-fun bm!60621 () Bool)

(assert (=> bm!60621 (= call!60624 (getCurrentListMapNoExtraKeys!5456 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!133509 c!120030) b!1217251))

(assert (= (and d!133509 (not c!120030)) b!1217245))

(assert (= (and b!1217245 c!120028) b!1217250))

(assert (= (and b!1217245 (not c!120028)) b!1217252))

(assert (= (or b!1217250 b!1217252) bm!60621))

(assert (= (and d!133509 res!808441) b!1217253))

(assert (= (and b!1217253 res!808443) b!1217249))

(assert (= (and b!1217249 res!808442) b!1217246))

(assert (= (and b!1217249 c!120029) b!1217247))

(assert (= (and b!1217249 (not c!120029)) b!1217255))

(assert (= (and b!1217247 res!808440) b!1217254))

(assert (= (and b!1217255 c!120027) b!1217256))

(assert (= (and b!1217255 (not c!120027)) b!1217248))

(declare-fun b_lambda!21923 () Bool)

(assert (=> (not b_lambda!21923) (not b!1217250)))

(assert (=> b!1217250 t!40113))

(declare-fun b_and!43583 () Bool)

(assert (= b_and!43581 (and (=> t!40113 result!22639) b_and!43583)))

(declare-fun b_lambda!21925 () Bool)

(assert (=> (not b_lambda!21925) (not b!1217254)))

(assert (=> b!1217254 t!40113))

(declare-fun b_and!43585 () Bool)

(assert (= b_and!43583 (and (=> t!40113 result!22639) b_and!43585)))

(declare-fun m!1122035 () Bool)

(assert (=> b!1217248 m!1122035))

(declare-fun m!1122037 () Bool)

(assert (=> b!1217246 m!1122037))

(assert (=> b!1217246 m!1122037))

(declare-fun m!1122039 () Bool)

(assert (=> b!1217246 m!1122039))

(assert (=> b!1217245 m!1122037))

(assert (=> b!1217245 m!1122037))

(assert (=> b!1217245 m!1122039))

(declare-fun m!1122041 () Bool)

(assert (=> b!1217253 m!1122041))

(declare-fun m!1122043 () Bool)

(assert (=> d!133509 m!1122043))

(assert (=> d!133509 m!1121815))

(declare-fun m!1122045 () Bool)

(assert (=> b!1217250 m!1122045))

(assert (=> b!1217250 m!1121803))

(declare-fun m!1122047 () Bool)

(assert (=> b!1217250 m!1122047))

(declare-fun m!1122049 () Bool)

(assert (=> b!1217250 m!1122049))

(declare-fun m!1122051 () Bool)

(assert (=> b!1217250 m!1122051))

(declare-fun m!1122053 () Bool)

(assert (=> b!1217250 m!1122053))

(assert (=> b!1217250 m!1122037))

(assert (=> b!1217250 m!1122045))

(declare-fun m!1122055 () Bool)

(assert (=> b!1217250 m!1122055))

(assert (=> b!1217250 m!1122051))

(assert (=> b!1217250 m!1121803))

(declare-fun m!1122057 () Bool)

(assert (=> bm!60621 m!1122057))

(assert (=> b!1217254 m!1122045))

(assert (=> b!1217254 m!1121803))

(assert (=> b!1217254 m!1122047))

(assert (=> b!1217254 m!1122037))

(assert (=> b!1217254 m!1122045))

(assert (=> b!1217254 m!1122037))

(declare-fun m!1122059 () Bool)

(assert (=> b!1217254 m!1122059))

(assert (=> b!1217254 m!1121803))

(assert (=> b!1217256 m!1122057))

(assert (=> b!1217247 m!1122037))

(assert (=> b!1217247 m!1122037))

(declare-fun m!1122061 () Bool)

(assert (=> b!1217247 m!1122061))

(assert (=> b!1217067 d!133509))

(declare-fun d!133511 () Bool)

(assert (=> d!133511 (= (validKeyInArray!0 (select (arr!37925 _keys!1208) from!1455)) (and (not (= (select (arr!37925 _keys!1208) from!1455) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!37925 _keys!1208) from!1455) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1217067 d!133511))

(declare-fun d!133513 () Bool)

(declare-fun lt!553226 () ListLongMap!18071)

(assert (=> d!133513 (not (contains!7023 lt!553226 k0!934))))

(declare-fun removeStrictlySorted!104 (List!26910 (_ BitVec 64)) List!26910)

(assert (=> d!133513 (= lt!553226 (ListLongMap!18072 (removeStrictlySorted!104 (toList!9051 lt!553120) k0!934)))))

(assert (=> d!133513 (= (-!1913 lt!553120 k0!934) lt!553226)))

(declare-fun bs!34301 () Bool)

(assert (= bs!34301 d!133513))

(declare-fun m!1122063 () Bool)

(assert (=> bs!34301 m!1122063))

(declare-fun m!1122065 () Bool)

(assert (=> bs!34301 m!1122065))

(assert (=> b!1217067 d!133513))

(declare-fun b!1217263 () Bool)

(declare-fun e!691116 () Bool)

(assert (=> b!1217263 (= e!691116 tp_is_empty!30921)))

(declare-fun condMapEmpty!48262 () Bool)

(declare-fun mapDefault!48262 () ValueCell!14751)

(assert (=> mapNonEmpty!48256 (= condMapEmpty!48262 (= mapRest!48256 ((as const (Array (_ BitVec 32) ValueCell!14751)) mapDefault!48262)))))

(declare-fun e!691117 () Bool)

(declare-fun mapRes!48262 () Bool)

(assert (=> mapNonEmpty!48256 (= tp!91673 (and e!691117 mapRes!48262))))

(declare-fun b!1217264 () Bool)

(assert (=> b!1217264 (= e!691117 tp_is_empty!30921)))

(declare-fun mapIsEmpty!48262 () Bool)

(assert (=> mapIsEmpty!48262 mapRes!48262))

(declare-fun mapNonEmpty!48262 () Bool)

(declare-fun tp!91683 () Bool)

(assert (=> mapNonEmpty!48262 (= mapRes!48262 (and tp!91683 e!691116))))

(declare-fun mapValue!48262 () ValueCell!14751)

(declare-fun mapRest!48262 () (Array (_ BitVec 32) ValueCell!14751))

(declare-fun mapKey!48262 () (_ BitVec 32))

(assert (=> mapNonEmpty!48262 (= mapRest!48256 (store mapRest!48262 mapKey!48262 mapValue!48262))))

(assert (= (and mapNonEmpty!48256 condMapEmpty!48262) mapIsEmpty!48262))

(assert (= (and mapNonEmpty!48256 (not condMapEmpty!48262)) mapNonEmpty!48262))

(assert (= (and mapNonEmpty!48262 ((_ is ValueCellFull!14751) mapValue!48262)) b!1217263))

(assert (= (and mapNonEmpty!48256 ((_ is ValueCellFull!14751) mapDefault!48262)) b!1217264))

(declare-fun m!1122067 () Bool)

(assert (=> mapNonEmpty!48262 m!1122067))

(declare-fun b_lambda!21927 () Bool)

(assert (= b_lambda!21911 (or (and start!101330 b_free!26217) b_lambda!21927)))

(declare-fun b_lambda!21929 () Bool)

(assert (= b_lambda!21913 (or (and start!101330 b_free!26217) b_lambda!21929)))

(declare-fun b_lambda!21931 () Bool)

(assert (= b_lambda!21917 (or (and start!101330 b_free!26217) b_lambda!21931)))

(declare-fun b_lambda!21933 () Bool)

(assert (= b_lambda!21915 (or (and start!101330 b_free!26217) b_lambda!21933)))

(declare-fun b_lambda!21935 () Bool)

(assert (= b_lambda!21925 (or (and start!101330 b_free!26217) b_lambda!21935)))

(declare-fun b_lambda!21937 () Bool)

(assert (= b_lambda!21909 (or (and start!101330 b_free!26217) b_lambda!21937)))

(declare-fun b_lambda!21939 () Bool)

(assert (= b_lambda!21921 (or (and start!101330 b_free!26217) b_lambda!21939)))

(declare-fun b_lambda!21941 () Bool)

(assert (= b_lambda!21923 (or (and start!101330 b_free!26217) b_lambda!21941)))

(declare-fun b_lambda!21943 () Bool)

(assert (= b_lambda!21919 (or (and start!101330 b_free!26217) b_lambda!21943)))

(check-sat (not b!1217235) (not b!1217181) (not b!1217199) (not b!1217198) (not b_lambda!21933) (not b!1217219) (not b!1217132) (not b!1217179) (not bm!60620) (not b!1217158) (not b!1217212) (not b!1217163) (not b!1217159) (not d!133477) (not b!1217167) (not b!1217218) (not b!1217178) (not b!1217232) (not b_lambda!21929) (not bm!60608) (not b_lambda!21939) (not bm!60605) (not b!1217233) (not d!133505) (not b!1217220) (not b!1217248) (not b!1217223) (not b!1217216) (not b!1217243) (not bm!60614) (not b!1217202) (not b!1217229) (not b_lambda!21937) (not b_lambda!21931) (not b!1217224) (not b!1217171) (not b_lambda!21907) (not b!1217250) (not b!1217227) (not b!1217256) (not b!1217245) (not b!1217254) (not b!1217173) (not b_lambda!21941) (not b!1217226) (not mapNonEmpty!48262) (not bm!60612) (not d!133481) (not d!133483) (not b!1217246) (not b!1217160) (not b!1217170) b_and!43585 (not b!1217161) (not bm!60619) (not b_next!26217) (not b_lambda!21943) (not d!133507) (not b!1217169) tp_is_empty!30921 (not b!1217187) (not b!1217225) (not b!1217253) (not bm!60611) (not b_lambda!21935) (not bm!60604) (not bm!60621) (not b!1217172) (not b!1217133) (not b_lambda!21927) (not d!133509) (not d!133487) (not b!1217166) (not bm!60613) (not b!1217247) (not b!1217175) (not b!1217214) (not b!1217126) (not b!1217127) (not d!133513))
(check-sat b_and!43585 (not b_next!26217))
