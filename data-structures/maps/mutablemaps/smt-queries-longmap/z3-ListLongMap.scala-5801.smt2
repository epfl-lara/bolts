; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74850 () Bool)

(assert start!74850)

(declare-fun b_free!15399 () Bool)

(declare-fun b_next!15399 () Bool)

(assert (=> start!74850 (= b_free!15399 (not b_next!15399))))

(declare-fun tp!53895 () Bool)

(declare-fun b_and!25483 () Bool)

(assert (=> start!74850 (= tp!53895 b_and!25483)))

(declare-fun b!882071 () Bool)

(declare-fun res!599387 () Bool)

(declare-fun e!490931 () Bool)

(assert (=> b!882071 (=> (not res!599387) (not e!490931))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51394 0))(
  ( (array!51395 (arr!24714 (Array (_ BitVec 32) (_ BitVec 64))) (size!25155 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51394)

(declare-datatypes ((V!28571 0))(
  ( (V!28572 (val!8869 Int)) )
))
(declare-datatypes ((ValueCell!8382 0))(
  ( (ValueCellFull!8382 (v!11325 V!28571)) (EmptyCell!8382) )
))
(declare-datatypes ((array!51396 0))(
  ( (array!51397 (arr!24715 (Array (_ BitVec 32) ValueCell!8382)) (size!25156 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51396)

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!882071 (= res!599387 (and (= (size!25156 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25155 _keys!868) (size!25156 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!882072 () Bool)

(declare-fun res!599389 () Bool)

(assert (=> b!882072 (=> (not res!599389) (not e!490931))))

(declare-datatypes ((List!17641 0))(
  ( (Nil!17638) (Cons!17637 (h!18768 (_ BitVec 64)) (t!24850 List!17641)) )
))
(declare-fun arrayNoDuplicates!0 (array!51394 (_ BitVec 32) List!17641) Bool)

(assert (=> b!882072 (= res!599389 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17638))))

(declare-fun b!882073 () Bool)

(declare-fun res!599384 () Bool)

(assert (=> b!882073 (=> (not res!599384) (not e!490931))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!882073 (= res!599384 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25155 _keys!868))))))

(declare-fun mapIsEmpty!28095 () Bool)

(declare-fun mapRes!28095 () Bool)

(assert (=> mapIsEmpty!28095 mapRes!28095))

(declare-fun b!882074 () Bool)

(declare-fun res!599391 () Bool)

(assert (=> b!882074 (=> (not res!599391) (not e!490931))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!882074 (= res!599391 (validMask!0 mask!1196))))

(declare-fun b!882075 () Bool)

(declare-fun e!490930 () Bool)

(declare-fun tp_is_empty!17643 () Bool)

(assert (=> b!882075 (= e!490930 tp_is_empty!17643)))

(declare-fun mapNonEmpty!28095 () Bool)

(declare-fun tp!53894 () Bool)

(declare-fun e!490929 () Bool)

(assert (=> mapNonEmpty!28095 (= mapRes!28095 (and tp!53894 e!490929))))

(declare-fun mapKey!28095 () (_ BitVec 32))

(declare-fun mapValue!28095 () ValueCell!8382)

(declare-fun mapRest!28095 () (Array (_ BitVec 32) ValueCell!8382))

(assert (=> mapNonEmpty!28095 (= (arr!24715 _values!688) (store mapRest!28095 mapKey!28095 mapValue!28095))))

(declare-fun b!882076 () Bool)

(declare-fun res!599392 () Bool)

(assert (=> b!882076 (=> (not res!599392) (not e!490931))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!882076 (= res!599392 (and (= (select (arr!24714 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!882077 () Bool)

(declare-fun e!490927 () Bool)

(declare-fun noDuplicate!1317 (List!17641) Bool)

(assert (=> b!882077 (= e!490927 (noDuplicate!1317 Nil!17638))))

(declare-fun b!882078 () Bool)

(declare-fun res!599390 () Bool)

(assert (=> b!882078 (=> (not res!599390) (not e!490931))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!882078 (= res!599390 (validKeyInArray!0 k0!854))))

(declare-fun b!882079 () Bool)

(declare-fun e!490923 () Bool)

(declare-fun e!490926 () Bool)

(assert (=> b!882079 (= e!490923 (not e!490926))))

(declare-fun res!599393 () Bool)

(assert (=> b!882079 (=> res!599393 e!490926)))

(assert (=> b!882079 (= res!599393 (not (validKeyInArray!0 (select (arr!24714 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11774 0))(
  ( (tuple2!11775 (_1!5897 (_ BitVec 64)) (_2!5897 V!28571)) )
))
(declare-datatypes ((List!17642 0))(
  ( (Nil!17639) (Cons!17638 (h!18769 tuple2!11774) (t!24851 List!17642)) )
))
(declare-datatypes ((ListLongMap!10557 0))(
  ( (ListLongMap!10558 (toList!5294 List!17642)) )
))
(declare-fun lt!399074 () ListLongMap!10557)

(declare-fun lt!399080 () ListLongMap!10557)

(assert (=> b!882079 (= lt!399074 lt!399080)))

(declare-fun v!557 () V!28571)

(declare-fun lt!399076 () ListLongMap!10557)

(declare-fun +!2500 (ListLongMap!10557 tuple2!11774) ListLongMap!10557)

(assert (=> b!882079 (= lt!399080 (+!2500 lt!399076 (tuple2!11775 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!399075 () array!51396)

(declare-fun minValue!654 () V!28571)

(declare-fun zeroValue!654 () V!28571)

(declare-fun getCurrentListMapNoExtraKeys!3253 (array!51394 array!51396 (_ BitVec 32) (_ BitVec 32) V!28571 V!28571 (_ BitVec 32) Int) ListLongMap!10557)

(assert (=> b!882079 (= lt!399074 (getCurrentListMapNoExtraKeys!3253 _keys!868 lt!399075 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!882079 (= lt!399076 (getCurrentListMapNoExtraKeys!3253 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30076 0))(
  ( (Unit!30077) )
))
(declare-fun lt!399079 () Unit!30076)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!727 (array!51394 array!51396 (_ BitVec 32) (_ BitVec 32) V!28571 V!28571 (_ BitVec 32) (_ BitVec 64) V!28571 (_ BitVec 32) Int) Unit!30076)

(assert (=> b!882079 (= lt!399079 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!727 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!882080 () Bool)

(assert (=> b!882080 (= e!490931 e!490923)))

(declare-fun res!599386 () Bool)

(assert (=> b!882080 (=> (not res!599386) (not e!490923))))

(assert (=> b!882080 (= res!599386 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!399078 () ListLongMap!10557)

(assert (=> b!882080 (= lt!399078 (getCurrentListMapNoExtraKeys!3253 _keys!868 lt!399075 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!882080 (= lt!399075 (array!51397 (store (arr!24715 _values!688) i!612 (ValueCellFull!8382 v!557)) (size!25156 _values!688)))))

(declare-fun lt!399082 () ListLongMap!10557)

(assert (=> b!882080 (= lt!399082 (getCurrentListMapNoExtraKeys!3253 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!882081 () Bool)

(declare-fun e!490928 () Bool)

(assert (=> b!882081 (= e!490928 (and e!490930 mapRes!28095))))

(declare-fun condMapEmpty!28095 () Bool)

(declare-fun mapDefault!28095 () ValueCell!8382)

(assert (=> b!882081 (= condMapEmpty!28095 (= (arr!24715 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8382)) mapDefault!28095)))))

(declare-fun b!882082 () Bool)

(declare-fun e!490925 () Bool)

(assert (=> b!882082 (= e!490926 e!490925)))

(declare-fun res!599394 () Bool)

(assert (=> b!882082 (=> res!599394 e!490925)))

(assert (=> b!882082 (= res!599394 (not (= (select (arr!24714 _keys!868) from!1053) k0!854)))))

(declare-fun get!13026 (ValueCell!8382 V!28571) V!28571)

(declare-fun dynLambda!1259 (Int (_ BitVec 64)) V!28571)

(assert (=> b!882082 (= lt!399078 (+!2500 lt!399080 (tuple2!11775 (select (arr!24714 _keys!868) from!1053) (get!13026 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882083 () Bool)

(assert (=> b!882083 (= e!490925 e!490927)))

(declare-fun res!599388 () Bool)

(assert (=> b!882083 (=> res!599388 e!490927)))

(assert (=> b!882083 (= res!599388 (or (bvsge (size!25155 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25155 _keys!868)) (bvsge from!1053 (size!25155 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!51394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!882083 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!399077 () Unit!30076)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51394 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30076)

(assert (=> b!882083 (= lt!399077 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!882083 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17638)))

(declare-fun lt!399081 () Unit!30076)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51394 (_ BitVec 32) (_ BitVec 32)) Unit!30076)

(assert (=> b!882083 (= lt!399081 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!882084 () Bool)

(declare-fun res!599385 () Bool)

(assert (=> b!882084 (=> (not res!599385) (not e!490931))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51394 (_ BitVec 32)) Bool)

(assert (=> b!882084 (= res!599385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!882085 () Bool)

(assert (=> b!882085 (= e!490929 tp_is_empty!17643)))

(declare-fun res!599395 () Bool)

(assert (=> start!74850 (=> (not res!599395) (not e!490931))))

(assert (=> start!74850 (= res!599395 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25155 _keys!868))))))

(assert (=> start!74850 e!490931))

(assert (=> start!74850 tp_is_empty!17643))

(assert (=> start!74850 true))

(assert (=> start!74850 tp!53895))

(declare-fun array_inv!19448 (array!51394) Bool)

(assert (=> start!74850 (array_inv!19448 _keys!868)))

(declare-fun array_inv!19449 (array!51396) Bool)

(assert (=> start!74850 (and (array_inv!19449 _values!688) e!490928)))

(assert (= (and start!74850 res!599395) b!882074))

(assert (= (and b!882074 res!599391) b!882071))

(assert (= (and b!882071 res!599387) b!882084))

(assert (= (and b!882084 res!599385) b!882072))

(assert (= (and b!882072 res!599389) b!882073))

(assert (= (and b!882073 res!599384) b!882078))

(assert (= (and b!882078 res!599390) b!882076))

(assert (= (and b!882076 res!599392) b!882080))

(assert (= (and b!882080 res!599386) b!882079))

(assert (= (and b!882079 (not res!599393)) b!882082))

(assert (= (and b!882082 (not res!599394)) b!882083))

(assert (= (and b!882083 (not res!599388)) b!882077))

(assert (= (and b!882081 condMapEmpty!28095) mapIsEmpty!28095))

(assert (= (and b!882081 (not condMapEmpty!28095)) mapNonEmpty!28095))

(get-info :version)

(assert (= (and mapNonEmpty!28095 ((_ is ValueCellFull!8382) mapValue!28095)) b!882085))

(assert (= (and b!882081 ((_ is ValueCellFull!8382) mapDefault!28095)) b!882075))

(assert (= start!74850 b!882081))

(declare-fun b_lambda!12639 () Bool)

(assert (=> (not b_lambda!12639) (not b!882082)))

(declare-fun t!24849 () Bool)

(declare-fun tb!5065 () Bool)

(assert (=> (and start!74850 (= defaultEntry!696 defaultEntry!696) t!24849) tb!5065))

(declare-fun result!9753 () Bool)

(assert (=> tb!5065 (= result!9753 tp_is_empty!17643)))

(assert (=> b!882082 t!24849))

(declare-fun b_and!25485 () Bool)

(assert (= b_and!25483 (and (=> t!24849 result!9753) b_and!25485)))

(declare-fun m!822123 () Bool)

(assert (=> b!882076 m!822123))

(declare-fun m!822125 () Bool)

(assert (=> mapNonEmpty!28095 m!822125))

(declare-fun m!822127 () Bool)

(assert (=> b!882072 m!822127))

(declare-fun m!822129 () Bool)

(assert (=> b!882084 m!822129))

(declare-fun m!822131 () Bool)

(assert (=> b!882082 m!822131))

(declare-fun m!822133 () Bool)

(assert (=> b!882082 m!822133))

(declare-fun m!822135 () Bool)

(assert (=> b!882082 m!822135))

(declare-fun m!822137 () Bool)

(assert (=> b!882082 m!822137))

(assert (=> b!882082 m!822133))

(declare-fun m!822139 () Bool)

(assert (=> b!882082 m!822139))

(assert (=> b!882082 m!822135))

(declare-fun m!822141 () Bool)

(assert (=> start!74850 m!822141))

(declare-fun m!822143 () Bool)

(assert (=> start!74850 m!822143))

(declare-fun m!822145 () Bool)

(assert (=> b!882079 m!822145))

(declare-fun m!822147 () Bool)

(assert (=> b!882079 m!822147))

(assert (=> b!882079 m!822139))

(declare-fun m!822149 () Bool)

(assert (=> b!882079 m!822149))

(assert (=> b!882079 m!822139))

(declare-fun m!822151 () Bool)

(assert (=> b!882079 m!822151))

(declare-fun m!822153 () Bool)

(assert (=> b!882079 m!822153))

(declare-fun m!822155 () Bool)

(assert (=> b!882074 m!822155))

(declare-fun m!822157 () Bool)

(assert (=> b!882083 m!822157))

(declare-fun m!822159 () Bool)

(assert (=> b!882083 m!822159))

(declare-fun m!822161 () Bool)

(assert (=> b!882083 m!822161))

(declare-fun m!822163 () Bool)

(assert (=> b!882083 m!822163))

(declare-fun m!822165 () Bool)

(assert (=> b!882077 m!822165))

(declare-fun m!822167 () Bool)

(assert (=> b!882078 m!822167))

(declare-fun m!822169 () Bool)

(assert (=> b!882080 m!822169))

(declare-fun m!822171 () Bool)

(assert (=> b!882080 m!822171))

(declare-fun m!822173 () Bool)

(assert (=> b!882080 m!822173))

(check-sat b_and!25485 tp_is_empty!17643 (not b!882072) (not b_lambda!12639) (not b!882082) (not b_next!15399) (not mapNonEmpty!28095) (not b!882078) (not start!74850) (not b!882080) (not b!882074) (not b!882077) (not b!882083) (not b!882084) (not b!882079))
(check-sat b_and!25485 (not b_next!15399))
(get-model)

(declare-fun b_lambda!12643 () Bool)

(assert (= b_lambda!12639 (or (and start!74850 b_free!15399) b_lambda!12643)))

(check-sat b_and!25485 tp_is_empty!17643 (not b!882072) (not b!882082) (not b_next!15399) (not mapNonEmpty!28095) (not b!882078) (not start!74850) (not b!882080) (not b_lambda!12643) (not b!882074) (not b!882077) (not b!882083) (not b!882084) (not b!882079))
(check-sat b_and!25485 (not b_next!15399))
(get-model)

(declare-fun d!109021 () Bool)

(declare-fun e!490961 () Bool)

(assert (=> d!109021 e!490961))

(declare-fun res!599436 () Bool)

(assert (=> d!109021 (=> (not res!599436) (not e!490961))))

(declare-fun lt!399120 () ListLongMap!10557)

(declare-fun contains!4262 (ListLongMap!10557 (_ BitVec 64)) Bool)

(assert (=> d!109021 (= res!599436 (contains!4262 lt!399120 (_1!5897 (tuple2!11775 (select (arr!24714 _keys!868) from!1053) (get!13026 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!399118 () List!17642)

(assert (=> d!109021 (= lt!399120 (ListLongMap!10558 lt!399118))))

(declare-fun lt!399119 () Unit!30076)

(declare-fun lt!399121 () Unit!30076)

(assert (=> d!109021 (= lt!399119 lt!399121)))

(declare-datatypes ((Option!430 0))(
  ( (Some!429 (v!11330 V!28571)) (None!428) )
))
(declare-fun getValueByKey!424 (List!17642 (_ BitVec 64)) Option!430)

(assert (=> d!109021 (= (getValueByKey!424 lt!399118 (_1!5897 (tuple2!11775 (select (arr!24714 _keys!868) from!1053) (get!13026 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!429 (_2!5897 (tuple2!11775 (select (arr!24714 _keys!868) from!1053) (get!13026 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!240 (List!17642 (_ BitVec 64) V!28571) Unit!30076)

(assert (=> d!109021 (= lt!399121 (lemmaContainsTupThenGetReturnValue!240 lt!399118 (_1!5897 (tuple2!11775 (select (arr!24714 _keys!868) from!1053) (get!13026 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5897 (tuple2!11775 (select (arr!24714 _keys!868) from!1053) (get!13026 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun insertStrictlySorted!278 (List!17642 (_ BitVec 64) V!28571) List!17642)

(assert (=> d!109021 (= lt!399118 (insertStrictlySorted!278 (toList!5294 lt!399080) (_1!5897 (tuple2!11775 (select (arr!24714 _keys!868) from!1053) (get!13026 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5897 (tuple2!11775 (select (arr!24714 _keys!868) from!1053) (get!13026 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!109021 (= (+!2500 lt!399080 (tuple2!11775 (select (arr!24714 _keys!868) from!1053) (get!13026 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!399120)))

(declare-fun b!882139 () Bool)

(declare-fun res!599437 () Bool)

(assert (=> b!882139 (=> (not res!599437) (not e!490961))))

(assert (=> b!882139 (= res!599437 (= (getValueByKey!424 (toList!5294 lt!399120) (_1!5897 (tuple2!11775 (select (arr!24714 _keys!868) from!1053) (get!13026 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!429 (_2!5897 (tuple2!11775 (select (arr!24714 _keys!868) from!1053) (get!13026 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!882140 () Bool)

(declare-fun contains!4263 (List!17642 tuple2!11774) Bool)

(assert (=> b!882140 (= e!490961 (contains!4263 (toList!5294 lt!399120) (tuple2!11775 (select (arr!24714 _keys!868) from!1053) (get!13026 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!109021 res!599436) b!882139))

(assert (= (and b!882139 res!599437) b!882140))

(declare-fun m!822227 () Bool)

(assert (=> d!109021 m!822227))

(declare-fun m!822229 () Bool)

(assert (=> d!109021 m!822229))

(declare-fun m!822231 () Bool)

(assert (=> d!109021 m!822231))

(declare-fun m!822233 () Bool)

(assert (=> d!109021 m!822233))

(declare-fun m!822235 () Bool)

(assert (=> b!882139 m!822235))

(declare-fun m!822237 () Bool)

(assert (=> b!882140 m!822237))

(assert (=> b!882082 d!109021))

(declare-fun d!109023 () Bool)

(declare-fun c!92890 () Bool)

(assert (=> d!109023 (= c!92890 ((_ is ValueCellFull!8382) (select (arr!24715 _values!688) from!1053)))))

(declare-fun e!490964 () V!28571)

(assert (=> d!109023 (= (get!13026 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)) e!490964)))

(declare-fun b!882145 () Bool)

(declare-fun get!13028 (ValueCell!8382 V!28571) V!28571)

(assert (=> b!882145 (= e!490964 (get!13028 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!882146 () Bool)

(declare-fun get!13029 (ValueCell!8382 V!28571) V!28571)

(assert (=> b!882146 (= e!490964 (get!13029 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!109023 c!92890) b!882145))

(assert (= (and d!109023 (not c!92890)) b!882146))

(assert (=> b!882145 m!822133))

(assert (=> b!882145 m!822135))

(declare-fun m!822239 () Bool)

(assert (=> b!882145 m!822239))

(assert (=> b!882146 m!822133))

(assert (=> b!882146 m!822135))

(declare-fun m!822241 () Bool)

(assert (=> b!882146 m!822241))

(assert (=> b!882082 d!109023))

(declare-fun d!109025 () Bool)

(declare-fun res!599442 () Bool)

(declare-fun e!490969 () Bool)

(assert (=> d!109025 (=> res!599442 e!490969)))

(assert (=> d!109025 (= res!599442 ((_ is Nil!17638) Nil!17638))))

(assert (=> d!109025 (= (noDuplicate!1317 Nil!17638) e!490969)))

(declare-fun b!882151 () Bool)

(declare-fun e!490970 () Bool)

(assert (=> b!882151 (= e!490969 e!490970)))

(declare-fun res!599443 () Bool)

(assert (=> b!882151 (=> (not res!599443) (not e!490970))))

(declare-fun contains!4264 (List!17641 (_ BitVec 64)) Bool)

(assert (=> b!882151 (= res!599443 (not (contains!4264 (t!24850 Nil!17638) (h!18768 Nil!17638))))))

(declare-fun b!882152 () Bool)

(assert (=> b!882152 (= e!490970 (noDuplicate!1317 (t!24850 Nil!17638)))))

(assert (= (and d!109025 (not res!599442)) b!882151))

(assert (= (and b!882151 res!599443) b!882152))

(declare-fun m!822243 () Bool)

(assert (=> b!882151 m!822243))

(declare-fun m!822245 () Bool)

(assert (=> b!882152 m!822245))

(assert (=> b!882077 d!109025))

(declare-fun d!109027 () Bool)

(assert (=> d!109027 (= (validKeyInArray!0 k0!854) (and (not (= k0!854 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!854 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!882078 d!109027))

(declare-fun d!109029 () Bool)

(assert (=> d!109029 (= (array_inv!19448 _keys!868) (bvsge (size!25155 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!74850 d!109029))

(declare-fun d!109031 () Bool)

(assert (=> d!109031 (= (array_inv!19449 _values!688) (bvsge (size!25156 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!74850 d!109031))

(declare-fun d!109033 () Bool)

(declare-fun res!599448 () Bool)

(declare-fun e!490975 () Bool)

(assert (=> d!109033 (=> res!599448 e!490975)))

(assert (=> d!109033 (= res!599448 (= (select (arr!24714 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) k0!854))))

(assert (=> d!109033 (= (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053)) e!490975)))

(declare-fun b!882157 () Bool)

(declare-fun e!490976 () Bool)

(assert (=> b!882157 (= e!490975 e!490976)))

(declare-fun res!599449 () Bool)

(assert (=> b!882157 (=> (not res!599449) (not e!490976))))

(assert (=> b!882157 (= res!599449 (bvslt (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) (size!25155 _keys!868)))))

(declare-fun b!882158 () Bool)

(assert (=> b!882158 (= e!490976 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001)))))

(assert (= (and d!109033 (not res!599448)) b!882157))

(assert (= (and b!882157 res!599449) b!882158))

(declare-fun m!822247 () Bool)

(assert (=> d!109033 m!822247))

(declare-fun m!822249 () Bool)

(assert (=> b!882158 m!822249))

(assert (=> b!882083 d!109033))

(declare-fun d!109035 () Bool)

(assert (=> d!109035 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!399124 () Unit!30076)

(declare-fun choose!114 (array!51394 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30076)

(assert (=> d!109035 (= lt!399124 (choose!114 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> d!109035 (bvsge i!612 #b00000000000000000000000000000000)))

(assert (=> d!109035 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)) lt!399124)))

(declare-fun bs!24734 () Bool)

(assert (= bs!24734 d!109035))

(assert (=> bs!24734 m!822157))

(declare-fun m!822251 () Bool)

(assert (=> bs!24734 m!822251))

(assert (=> b!882083 d!109035))

(declare-fun b!882169 () Bool)

(declare-fun e!490987 () Bool)

(declare-fun call!38950 () Bool)

(assert (=> b!882169 (= e!490987 call!38950)))

(declare-fun bm!38947 () Bool)

(declare-fun c!92893 () Bool)

(assert (=> bm!38947 (= call!38950 (arrayNoDuplicates!0 _keys!868 (bvadd from!1053 #b00000000000000000000000000000001) (ite c!92893 (Cons!17637 (select (arr!24714 _keys!868) from!1053) Nil!17638) Nil!17638)))))

(declare-fun b!882170 () Bool)

(declare-fun e!490988 () Bool)

(declare-fun e!490985 () Bool)

(assert (=> b!882170 (= e!490988 e!490985)))

(declare-fun res!599457 () Bool)

(assert (=> b!882170 (=> (not res!599457) (not e!490985))))

(declare-fun e!490986 () Bool)

(assert (=> b!882170 (= res!599457 (not e!490986))))

(declare-fun res!599458 () Bool)

(assert (=> b!882170 (=> (not res!599458) (not e!490986))))

(assert (=> b!882170 (= res!599458 (validKeyInArray!0 (select (arr!24714 _keys!868) from!1053)))))

(declare-fun b!882171 () Bool)

(assert (=> b!882171 (= e!490986 (contains!4264 Nil!17638 (select (arr!24714 _keys!868) from!1053)))))

(declare-fun b!882172 () Bool)

(assert (=> b!882172 (= e!490985 e!490987)))

(assert (=> b!882172 (= c!92893 (validKeyInArray!0 (select (arr!24714 _keys!868) from!1053)))))

(declare-fun b!882173 () Bool)

(assert (=> b!882173 (= e!490987 call!38950)))

(declare-fun d!109037 () Bool)

(declare-fun res!599456 () Bool)

(assert (=> d!109037 (=> res!599456 e!490988)))

(assert (=> d!109037 (= res!599456 (bvsge from!1053 (size!25155 _keys!868)))))

(assert (=> d!109037 (= (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17638) e!490988)))

(assert (= (and d!109037 (not res!599456)) b!882170))

(assert (= (and b!882170 res!599458) b!882171))

(assert (= (and b!882170 res!599457) b!882172))

(assert (= (and b!882172 c!92893) b!882169))

(assert (= (and b!882172 (not c!92893)) b!882173))

(assert (= (or b!882169 b!882173) bm!38947))

(assert (=> bm!38947 m!822139))

(declare-fun m!822253 () Bool)

(assert (=> bm!38947 m!822253))

(assert (=> b!882170 m!822139))

(assert (=> b!882170 m!822139))

(assert (=> b!882170 m!822149))

(assert (=> b!882171 m!822139))

(assert (=> b!882171 m!822139))

(declare-fun m!822255 () Bool)

(assert (=> b!882171 m!822255))

(assert (=> b!882172 m!822139))

(assert (=> b!882172 m!822139))

(assert (=> b!882172 m!822149))

(assert (=> b!882083 d!109037))

(declare-fun d!109039 () Bool)

(assert (=> d!109039 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17638)))

(declare-fun lt!399127 () Unit!30076)

(declare-fun choose!39 (array!51394 (_ BitVec 32) (_ BitVec 32)) Unit!30076)

(assert (=> d!109039 (= lt!399127 (choose!39 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> d!109039 (bvslt (size!25155 _keys!868) #b01111111111111111111111111111111)))

(assert (=> d!109039 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053) lt!399127)))

(declare-fun bs!24735 () Bool)

(assert (= bs!24735 d!109039))

(assert (=> bs!24735 m!822161))

(declare-fun m!822257 () Bool)

(assert (=> bs!24735 m!822257))

(assert (=> b!882083 d!109039))

(declare-fun b!882182 () Bool)

(declare-fun e!490997 () Bool)

(declare-fun call!38953 () Bool)

(assert (=> b!882182 (= e!490997 call!38953)))

(declare-fun b!882183 () Bool)

(declare-fun e!490995 () Bool)

(assert (=> b!882183 (= e!490997 e!490995)))

(declare-fun lt!399136 () (_ BitVec 64))

(assert (=> b!882183 (= lt!399136 (select (arr!24714 _keys!868) #b00000000000000000000000000000000))))

(declare-fun lt!399135 () Unit!30076)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51394 (_ BitVec 64) (_ BitVec 32)) Unit!30076)

(assert (=> b!882183 (= lt!399135 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!399136 #b00000000000000000000000000000000))))

(assert (=> b!882183 (arrayContainsKey!0 _keys!868 lt!399136 #b00000000000000000000000000000000)))

(declare-fun lt!399134 () Unit!30076)

(assert (=> b!882183 (= lt!399134 lt!399135)))

(declare-fun res!599463 () Bool)

(declare-datatypes ((SeekEntryResult!8748 0))(
  ( (MissingZero!8748 (index!37362 (_ BitVec 32))) (Found!8748 (index!37363 (_ BitVec 32))) (Intermediate!8748 (undefined!9560 Bool) (index!37364 (_ BitVec 32)) (x!74766 (_ BitVec 32))) (Undefined!8748) (MissingVacant!8748 (index!37365 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!51394 (_ BitVec 32)) SeekEntryResult!8748)

(assert (=> b!882183 (= res!599463 (= (seekEntryOrOpen!0 (select (arr!24714 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8748 #b00000000000000000000000000000000)))))

(assert (=> b!882183 (=> (not res!599463) (not e!490995))))

(declare-fun b!882184 () Bool)

(assert (=> b!882184 (= e!490995 call!38953)))

(declare-fun bm!38950 () Bool)

(assert (=> bm!38950 (= call!38953 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(declare-fun b!882185 () Bool)

(declare-fun e!490996 () Bool)

(assert (=> b!882185 (= e!490996 e!490997)))

(declare-fun c!92896 () Bool)

(assert (=> b!882185 (= c!92896 (validKeyInArray!0 (select (arr!24714 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun d!109041 () Bool)

(declare-fun res!599464 () Bool)

(assert (=> d!109041 (=> res!599464 e!490996)))

(assert (=> d!109041 (= res!599464 (bvsge #b00000000000000000000000000000000 (size!25155 _keys!868)))))

(assert (=> d!109041 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!490996)))

(assert (= (and d!109041 (not res!599464)) b!882185))

(assert (= (and b!882185 c!92896) b!882183))

(assert (= (and b!882185 (not c!92896)) b!882182))

(assert (= (and b!882183 res!599463) b!882184))

(assert (= (or b!882184 b!882182) bm!38950))

(declare-fun m!822259 () Bool)

(assert (=> b!882183 m!822259))

(declare-fun m!822261 () Bool)

(assert (=> b!882183 m!822261))

(declare-fun m!822263 () Bool)

(assert (=> b!882183 m!822263))

(assert (=> b!882183 m!822259))

(declare-fun m!822265 () Bool)

(assert (=> b!882183 m!822265))

(declare-fun m!822267 () Bool)

(assert (=> bm!38950 m!822267))

(assert (=> b!882185 m!822259))

(assert (=> b!882185 m!822259))

(declare-fun m!822269 () Bool)

(assert (=> b!882185 m!822269))

(assert (=> b!882084 d!109041))

(declare-fun d!109043 () Bool)

(assert (=> d!109043 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!882074 d!109043))

(declare-fun b!882210 () Bool)

(declare-fun res!599476 () Bool)

(declare-fun e!491018 () Bool)

(assert (=> b!882210 (=> (not res!599476) (not e!491018))))

(declare-fun lt!399153 () ListLongMap!10557)

(assert (=> b!882210 (= res!599476 (not (contains!4262 lt!399153 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!882211 () Bool)

(declare-fun e!491013 () ListLongMap!10557)

(assert (=> b!882211 (= e!491013 (ListLongMap!10558 Nil!17639))))

(declare-fun e!491015 () Bool)

(declare-fun b!882212 () Bool)

(assert (=> b!882212 (= e!491015 (= lt!399153 (getCurrentListMapNoExtraKeys!3253 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!882213 () Bool)

(declare-fun e!491012 () ListLongMap!10557)

(assert (=> b!882213 (= e!491013 e!491012)))

(declare-fun c!92906 () Bool)

(assert (=> b!882213 (= c!92906 (validKeyInArray!0 (select (arr!24714 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun d!109045 () Bool)

(assert (=> d!109045 e!491018))

(declare-fun res!599473 () Bool)

(assert (=> d!109045 (=> (not res!599473) (not e!491018))))

(assert (=> d!109045 (= res!599473 (not (contains!4262 lt!399153 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!109045 (= lt!399153 e!491013)))

(declare-fun c!92908 () Bool)

(assert (=> d!109045 (= c!92908 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25155 _keys!868)))))

(assert (=> d!109045 (validMask!0 mask!1196)))

(assert (=> d!109045 (= (getCurrentListMapNoExtraKeys!3253 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!399153)))

(declare-fun b!882214 () Bool)

(declare-fun e!491014 () Bool)

(assert (=> b!882214 (= e!491018 e!491014)))

(declare-fun c!92907 () Bool)

(declare-fun e!491016 () Bool)

(assert (=> b!882214 (= c!92907 e!491016)))

(declare-fun res!599475 () Bool)

(assert (=> b!882214 (=> (not res!599475) (not e!491016))))

(assert (=> b!882214 (= res!599475 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25155 _keys!868)))))

(declare-fun b!882215 () Bool)

(declare-fun e!491017 () Bool)

(assert (=> b!882215 (= e!491014 e!491017)))

(assert (=> b!882215 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25155 _keys!868)))))

(declare-fun res!599474 () Bool)

(assert (=> b!882215 (= res!599474 (contains!4262 lt!399153 (select (arr!24714 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!882215 (=> (not res!599474) (not e!491017))))

(declare-fun b!882216 () Bool)

(declare-fun call!38956 () ListLongMap!10557)

(assert (=> b!882216 (= e!491012 call!38956)))

(declare-fun b!882217 () Bool)

(declare-fun lt!399155 () Unit!30076)

(declare-fun lt!399154 () Unit!30076)

(assert (=> b!882217 (= lt!399155 lt!399154)))

(declare-fun lt!399151 () ListLongMap!10557)

(declare-fun lt!399156 () (_ BitVec 64))

(declare-fun lt!399152 () V!28571)

(declare-fun lt!399157 () (_ BitVec 64))

(assert (=> b!882217 (not (contains!4262 (+!2500 lt!399151 (tuple2!11775 lt!399156 lt!399152)) lt!399157))))

(declare-fun addStillNotContains!210 (ListLongMap!10557 (_ BitVec 64) V!28571 (_ BitVec 64)) Unit!30076)

(assert (=> b!882217 (= lt!399154 (addStillNotContains!210 lt!399151 lt!399156 lt!399152 lt!399157))))

(assert (=> b!882217 (= lt!399157 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!882217 (= lt!399152 (get!13026 (select (arr!24715 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!882217 (= lt!399156 (select (arr!24714 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!882217 (= lt!399151 call!38956)))

(assert (=> b!882217 (= e!491012 (+!2500 call!38956 (tuple2!11775 (select (arr!24714 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!13026 (select (arr!24715 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882218 () Bool)

(assert (=> b!882218 (= e!491014 e!491015)))

(declare-fun c!92905 () Bool)

(assert (=> b!882218 (= c!92905 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25155 _keys!868)))))

(declare-fun b!882219 () Bool)

(assert (=> b!882219 (= e!491016 (validKeyInArray!0 (select (arr!24714 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!882219 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!882220 () Bool)

(declare-fun isEmpty!675 (ListLongMap!10557) Bool)

(assert (=> b!882220 (= e!491015 (isEmpty!675 lt!399153))))

(declare-fun bm!38953 () Bool)

(assert (=> bm!38953 (= call!38956 (getCurrentListMapNoExtraKeys!3253 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!882221 () Bool)

(assert (=> b!882221 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25155 _keys!868)))))

(assert (=> b!882221 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25156 _values!688)))))

(declare-fun apply!383 (ListLongMap!10557 (_ BitVec 64)) V!28571)

(assert (=> b!882221 (= e!491017 (= (apply!383 lt!399153 (select (arr!24714 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!13026 (select (arr!24715 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!109045 c!92908) b!882211))

(assert (= (and d!109045 (not c!92908)) b!882213))

(assert (= (and b!882213 c!92906) b!882217))

(assert (= (and b!882213 (not c!92906)) b!882216))

(assert (= (or b!882217 b!882216) bm!38953))

(assert (= (and d!109045 res!599473) b!882210))

(assert (= (and b!882210 res!599476) b!882214))

(assert (= (and b!882214 res!599475) b!882219))

(assert (= (and b!882214 c!92907) b!882215))

(assert (= (and b!882214 (not c!92907)) b!882218))

(assert (= (and b!882215 res!599474) b!882221))

(assert (= (and b!882218 c!92905) b!882212))

(assert (= (and b!882218 (not c!92905)) b!882220))

(declare-fun b_lambda!12645 () Bool)

(assert (=> (not b_lambda!12645) (not b!882217)))

(assert (=> b!882217 t!24849))

(declare-fun b_and!25491 () Bool)

(assert (= b_and!25485 (and (=> t!24849 result!9753) b_and!25491)))

(declare-fun b_lambda!12647 () Bool)

(assert (=> (not b_lambda!12647) (not b!882221)))

(assert (=> b!882221 t!24849))

(declare-fun b_and!25493 () Bool)

(assert (= b_and!25491 (and (=> t!24849 result!9753) b_and!25493)))

(declare-fun m!822271 () Bool)

(assert (=> b!882212 m!822271))

(declare-fun m!822273 () Bool)

(assert (=> b!882220 m!822273))

(assert (=> b!882221 m!822135))

(assert (=> b!882221 m!822247))

(declare-fun m!822275 () Bool)

(assert (=> b!882221 m!822275))

(assert (=> b!882221 m!822135))

(declare-fun m!822277 () Bool)

(assert (=> b!882221 m!822277))

(assert (=> b!882221 m!822275))

(assert (=> b!882221 m!822247))

(declare-fun m!822279 () Bool)

(assert (=> b!882221 m!822279))

(assert (=> b!882213 m!822247))

(assert (=> b!882213 m!822247))

(declare-fun m!822281 () Bool)

(assert (=> b!882213 m!822281))

(assert (=> bm!38953 m!822271))

(assert (=> b!882219 m!822247))

(assert (=> b!882219 m!822247))

(assert (=> b!882219 m!822281))

(assert (=> b!882215 m!822247))

(assert (=> b!882215 m!822247))

(declare-fun m!822283 () Bool)

(assert (=> b!882215 m!822283))

(declare-fun m!822285 () Bool)

(assert (=> b!882217 m!822285))

(declare-fun m!822287 () Bool)

(assert (=> b!882217 m!822287))

(assert (=> b!882217 m!822275))

(assert (=> b!882217 m!822135))

(declare-fun m!822289 () Bool)

(assert (=> b!882217 m!822289))

(declare-fun m!822291 () Bool)

(assert (=> b!882217 m!822291))

(assert (=> b!882217 m!822285))

(assert (=> b!882217 m!822247))

(assert (=> b!882217 m!822275))

(assert (=> b!882217 m!822135))

(assert (=> b!882217 m!822277))

(declare-fun m!822293 () Bool)

(assert (=> b!882210 m!822293))

(declare-fun m!822295 () Bool)

(assert (=> d!109045 m!822295))

(assert (=> d!109045 m!822155))

(assert (=> b!882079 d!109045))

(declare-fun d!109047 () Bool)

(assert (=> d!109047 (= (validKeyInArray!0 (select (arr!24714 _keys!868) from!1053)) (and (not (= (select (arr!24714 _keys!868) from!1053) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!24714 _keys!868) from!1053) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!882079 d!109047))

(declare-fun b!882222 () Bool)

(declare-fun res!599480 () Bool)

(declare-fun e!491025 () Bool)

(assert (=> b!882222 (=> (not res!599480) (not e!491025))))

(declare-fun lt!399160 () ListLongMap!10557)

(assert (=> b!882222 (= res!599480 (not (contains!4262 lt!399160 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!882223 () Bool)

(declare-fun e!491020 () ListLongMap!10557)

(assert (=> b!882223 (= e!491020 (ListLongMap!10558 Nil!17639))))

(declare-fun e!491022 () Bool)

(declare-fun b!882224 () Bool)

(assert (=> b!882224 (= e!491022 (= lt!399160 (getCurrentListMapNoExtraKeys!3253 _keys!868 lt!399075 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!882225 () Bool)

(declare-fun e!491019 () ListLongMap!10557)

(assert (=> b!882225 (= e!491020 e!491019)))

(declare-fun c!92910 () Bool)

(assert (=> b!882225 (= c!92910 (validKeyInArray!0 (select (arr!24714 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun d!109049 () Bool)

(assert (=> d!109049 e!491025))

(declare-fun res!599477 () Bool)

(assert (=> d!109049 (=> (not res!599477) (not e!491025))))

(assert (=> d!109049 (= res!599477 (not (contains!4262 lt!399160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!109049 (= lt!399160 e!491020)))

(declare-fun c!92912 () Bool)

(assert (=> d!109049 (= c!92912 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25155 _keys!868)))))

(assert (=> d!109049 (validMask!0 mask!1196)))

(assert (=> d!109049 (= (getCurrentListMapNoExtraKeys!3253 _keys!868 lt!399075 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!399160)))

(declare-fun b!882226 () Bool)

(declare-fun e!491021 () Bool)

(assert (=> b!882226 (= e!491025 e!491021)))

(declare-fun c!92911 () Bool)

(declare-fun e!491023 () Bool)

(assert (=> b!882226 (= c!92911 e!491023)))

(declare-fun res!599479 () Bool)

(assert (=> b!882226 (=> (not res!599479) (not e!491023))))

(assert (=> b!882226 (= res!599479 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25155 _keys!868)))))

(declare-fun b!882227 () Bool)

(declare-fun e!491024 () Bool)

(assert (=> b!882227 (= e!491021 e!491024)))

(assert (=> b!882227 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25155 _keys!868)))))

(declare-fun res!599478 () Bool)

(assert (=> b!882227 (= res!599478 (contains!4262 lt!399160 (select (arr!24714 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!882227 (=> (not res!599478) (not e!491024))))

(declare-fun b!882228 () Bool)

(declare-fun call!38957 () ListLongMap!10557)

(assert (=> b!882228 (= e!491019 call!38957)))

(declare-fun b!882229 () Bool)

(declare-fun lt!399162 () Unit!30076)

(declare-fun lt!399161 () Unit!30076)

(assert (=> b!882229 (= lt!399162 lt!399161)))

(declare-fun lt!399158 () ListLongMap!10557)

(declare-fun lt!399163 () (_ BitVec 64))

(declare-fun lt!399164 () (_ BitVec 64))

(declare-fun lt!399159 () V!28571)

(assert (=> b!882229 (not (contains!4262 (+!2500 lt!399158 (tuple2!11775 lt!399163 lt!399159)) lt!399164))))

(assert (=> b!882229 (= lt!399161 (addStillNotContains!210 lt!399158 lt!399163 lt!399159 lt!399164))))

(assert (=> b!882229 (= lt!399164 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!882229 (= lt!399159 (get!13026 (select (arr!24715 lt!399075) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!882229 (= lt!399163 (select (arr!24714 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!882229 (= lt!399158 call!38957)))

(assert (=> b!882229 (= e!491019 (+!2500 call!38957 (tuple2!11775 (select (arr!24714 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!13026 (select (arr!24715 lt!399075) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882230 () Bool)

(assert (=> b!882230 (= e!491021 e!491022)))

(declare-fun c!92909 () Bool)

(assert (=> b!882230 (= c!92909 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25155 _keys!868)))))

(declare-fun b!882231 () Bool)

(assert (=> b!882231 (= e!491023 (validKeyInArray!0 (select (arr!24714 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!882231 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!882232 () Bool)

(assert (=> b!882232 (= e!491022 (isEmpty!675 lt!399160))))

(declare-fun bm!38954 () Bool)

(assert (=> bm!38954 (= call!38957 (getCurrentListMapNoExtraKeys!3253 _keys!868 lt!399075 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!882233 () Bool)

(assert (=> b!882233 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25155 _keys!868)))))

(assert (=> b!882233 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25156 lt!399075)))))

(assert (=> b!882233 (= e!491024 (= (apply!383 lt!399160 (select (arr!24714 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!13026 (select (arr!24715 lt!399075) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!109049 c!92912) b!882223))

(assert (= (and d!109049 (not c!92912)) b!882225))

(assert (= (and b!882225 c!92910) b!882229))

(assert (= (and b!882225 (not c!92910)) b!882228))

(assert (= (or b!882229 b!882228) bm!38954))

(assert (= (and d!109049 res!599477) b!882222))

(assert (= (and b!882222 res!599480) b!882226))

(assert (= (and b!882226 res!599479) b!882231))

(assert (= (and b!882226 c!92911) b!882227))

(assert (= (and b!882226 (not c!92911)) b!882230))

(assert (= (and b!882227 res!599478) b!882233))

(assert (= (and b!882230 c!92909) b!882224))

(assert (= (and b!882230 (not c!92909)) b!882232))

(declare-fun b_lambda!12649 () Bool)

(assert (=> (not b_lambda!12649) (not b!882229)))

(assert (=> b!882229 t!24849))

(declare-fun b_and!25495 () Bool)

(assert (= b_and!25493 (and (=> t!24849 result!9753) b_and!25495)))

(declare-fun b_lambda!12651 () Bool)

(assert (=> (not b_lambda!12651) (not b!882233)))

(assert (=> b!882233 t!24849))

(declare-fun b_and!25497 () Bool)

(assert (= b_and!25495 (and (=> t!24849 result!9753) b_and!25497)))

(declare-fun m!822297 () Bool)

(assert (=> b!882224 m!822297))

(declare-fun m!822299 () Bool)

(assert (=> b!882232 m!822299))

(assert (=> b!882233 m!822135))

(assert (=> b!882233 m!822247))

(declare-fun m!822301 () Bool)

(assert (=> b!882233 m!822301))

(assert (=> b!882233 m!822135))

(declare-fun m!822303 () Bool)

(assert (=> b!882233 m!822303))

(assert (=> b!882233 m!822301))

(assert (=> b!882233 m!822247))

(declare-fun m!822305 () Bool)

(assert (=> b!882233 m!822305))

(assert (=> b!882225 m!822247))

(assert (=> b!882225 m!822247))

(assert (=> b!882225 m!822281))

(assert (=> bm!38954 m!822297))

(assert (=> b!882231 m!822247))

(assert (=> b!882231 m!822247))

(assert (=> b!882231 m!822281))

(assert (=> b!882227 m!822247))

(assert (=> b!882227 m!822247))

(declare-fun m!822307 () Bool)

(assert (=> b!882227 m!822307))

(declare-fun m!822309 () Bool)

(assert (=> b!882229 m!822309))

(declare-fun m!822311 () Bool)

(assert (=> b!882229 m!822311))

(assert (=> b!882229 m!822301))

(assert (=> b!882229 m!822135))

(declare-fun m!822313 () Bool)

(assert (=> b!882229 m!822313))

(declare-fun m!822315 () Bool)

(assert (=> b!882229 m!822315))

(assert (=> b!882229 m!822309))

(assert (=> b!882229 m!822247))

(assert (=> b!882229 m!822301))

(assert (=> b!882229 m!822135))

(assert (=> b!882229 m!822303))

(declare-fun m!822317 () Bool)

(assert (=> b!882222 m!822317))

(declare-fun m!822319 () Bool)

(assert (=> d!109049 m!822319))

(assert (=> d!109049 m!822155))

(assert (=> b!882079 d!109049))

(declare-fun b!882240 () Bool)

(declare-fun e!491030 () Bool)

(declare-fun call!38963 () ListLongMap!10557)

(declare-fun call!38962 () ListLongMap!10557)

(assert (=> b!882240 (= e!491030 (= call!38963 call!38962))))

(declare-fun bm!38959 () Bool)

(assert (=> bm!38959 (= call!38963 (getCurrentListMapNoExtraKeys!3253 _keys!868 (array!51397 (store (arr!24715 _values!688) i!612 (ValueCellFull!8382 v!557)) (size!25156 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!882241 () Bool)

(declare-fun e!491031 () Bool)

(assert (=> b!882241 (= e!491031 e!491030)))

(declare-fun c!92915 () Bool)

(assert (=> b!882241 (= c!92915 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun bm!38960 () Bool)

(assert (=> bm!38960 (= call!38962 (getCurrentListMapNoExtraKeys!3253 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun d!109051 () Bool)

(assert (=> d!109051 e!491031))

(declare-fun res!599483 () Bool)

(assert (=> d!109051 (=> (not res!599483) (not e!491031))))

(assert (=> d!109051 (= res!599483 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612)) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25156 _values!688)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25156 _values!688))))))))

(declare-fun lt!399167 () Unit!30076)

(declare-fun choose!1447 (array!51394 array!51396 (_ BitVec 32) (_ BitVec 32) V!28571 V!28571 (_ BitVec 32) (_ BitVec 64) V!28571 (_ BitVec 32) Int) Unit!30076)

(assert (=> d!109051 (= lt!399167 (choose!1447 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> d!109051 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!25155 _keys!868)))))

(assert (=> d!109051 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!727 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!399167)))

(declare-fun b!882242 () Bool)

(assert (=> b!882242 (= e!491030 (= call!38963 (+!2500 call!38962 (tuple2!11775 k0!854 v!557))))))

(assert (= (and d!109051 res!599483) b!882241))

(assert (= (and b!882241 c!92915) b!882242))

(assert (= (and b!882241 (not c!92915)) b!882240))

(assert (= (or b!882242 b!882240) bm!38960))

(assert (= (or b!882242 b!882240) bm!38959))

(assert (=> bm!38959 m!822171))

(declare-fun m!822321 () Bool)

(assert (=> bm!38959 m!822321))

(assert (=> bm!38960 m!822147))

(declare-fun m!822323 () Bool)

(assert (=> d!109051 m!822323))

(declare-fun m!822325 () Bool)

(assert (=> b!882242 m!822325))

(assert (=> b!882079 d!109051))

(declare-fun d!109053 () Bool)

(declare-fun e!491032 () Bool)

(assert (=> d!109053 e!491032))

(declare-fun res!599484 () Bool)

(assert (=> d!109053 (=> (not res!599484) (not e!491032))))

(declare-fun lt!399170 () ListLongMap!10557)

(assert (=> d!109053 (= res!599484 (contains!4262 lt!399170 (_1!5897 (tuple2!11775 k0!854 v!557))))))

(declare-fun lt!399168 () List!17642)

(assert (=> d!109053 (= lt!399170 (ListLongMap!10558 lt!399168))))

(declare-fun lt!399169 () Unit!30076)

(declare-fun lt!399171 () Unit!30076)

(assert (=> d!109053 (= lt!399169 lt!399171)))

(assert (=> d!109053 (= (getValueByKey!424 lt!399168 (_1!5897 (tuple2!11775 k0!854 v!557))) (Some!429 (_2!5897 (tuple2!11775 k0!854 v!557))))))

(assert (=> d!109053 (= lt!399171 (lemmaContainsTupThenGetReturnValue!240 lt!399168 (_1!5897 (tuple2!11775 k0!854 v!557)) (_2!5897 (tuple2!11775 k0!854 v!557))))))

(assert (=> d!109053 (= lt!399168 (insertStrictlySorted!278 (toList!5294 lt!399076) (_1!5897 (tuple2!11775 k0!854 v!557)) (_2!5897 (tuple2!11775 k0!854 v!557))))))

(assert (=> d!109053 (= (+!2500 lt!399076 (tuple2!11775 k0!854 v!557)) lt!399170)))

(declare-fun b!882243 () Bool)

(declare-fun res!599485 () Bool)

(assert (=> b!882243 (=> (not res!599485) (not e!491032))))

(assert (=> b!882243 (= res!599485 (= (getValueByKey!424 (toList!5294 lt!399170) (_1!5897 (tuple2!11775 k0!854 v!557))) (Some!429 (_2!5897 (tuple2!11775 k0!854 v!557)))))))

(declare-fun b!882244 () Bool)

(assert (=> b!882244 (= e!491032 (contains!4263 (toList!5294 lt!399170) (tuple2!11775 k0!854 v!557)))))

(assert (= (and d!109053 res!599484) b!882243))

(assert (= (and b!882243 res!599485) b!882244))

(declare-fun m!822327 () Bool)

(assert (=> d!109053 m!822327))

(declare-fun m!822329 () Bool)

(assert (=> d!109053 m!822329))

(declare-fun m!822331 () Bool)

(assert (=> d!109053 m!822331))

(declare-fun m!822333 () Bool)

(assert (=> d!109053 m!822333))

(declare-fun m!822335 () Bool)

(assert (=> b!882243 m!822335))

(declare-fun m!822337 () Bool)

(assert (=> b!882244 m!822337))

(assert (=> b!882079 d!109053))

(declare-fun b!882245 () Bool)

(declare-fun res!599489 () Bool)

(declare-fun e!491039 () Bool)

(assert (=> b!882245 (=> (not res!599489) (not e!491039))))

(declare-fun lt!399174 () ListLongMap!10557)

(assert (=> b!882245 (= res!599489 (not (contains!4262 lt!399174 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!882246 () Bool)

(declare-fun e!491034 () ListLongMap!10557)

(assert (=> b!882246 (= e!491034 (ListLongMap!10558 Nil!17639))))

(declare-fun b!882247 () Bool)

(declare-fun e!491036 () Bool)

(assert (=> b!882247 (= e!491036 (= lt!399174 (getCurrentListMapNoExtraKeys!3253 _keys!868 lt!399075 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!882248 () Bool)

(declare-fun e!491033 () ListLongMap!10557)

(assert (=> b!882248 (= e!491034 e!491033)))

(declare-fun c!92917 () Bool)

(assert (=> b!882248 (= c!92917 (validKeyInArray!0 (select (arr!24714 _keys!868) from!1053)))))

(declare-fun d!109055 () Bool)

(assert (=> d!109055 e!491039))

(declare-fun res!599486 () Bool)

(assert (=> d!109055 (=> (not res!599486) (not e!491039))))

(assert (=> d!109055 (= res!599486 (not (contains!4262 lt!399174 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!109055 (= lt!399174 e!491034)))

(declare-fun c!92919 () Bool)

(assert (=> d!109055 (= c!92919 (bvsge from!1053 (size!25155 _keys!868)))))

(assert (=> d!109055 (validMask!0 mask!1196)))

(assert (=> d!109055 (= (getCurrentListMapNoExtraKeys!3253 _keys!868 lt!399075 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!399174)))

(declare-fun b!882249 () Bool)

(declare-fun e!491035 () Bool)

(assert (=> b!882249 (= e!491039 e!491035)))

(declare-fun c!92918 () Bool)

(declare-fun e!491037 () Bool)

(assert (=> b!882249 (= c!92918 e!491037)))

(declare-fun res!599488 () Bool)

(assert (=> b!882249 (=> (not res!599488) (not e!491037))))

(assert (=> b!882249 (= res!599488 (bvslt from!1053 (size!25155 _keys!868)))))

(declare-fun b!882250 () Bool)

(declare-fun e!491038 () Bool)

(assert (=> b!882250 (= e!491035 e!491038)))

(assert (=> b!882250 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25155 _keys!868)))))

(declare-fun res!599487 () Bool)

(assert (=> b!882250 (= res!599487 (contains!4262 lt!399174 (select (arr!24714 _keys!868) from!1053)))))

(assert (=> b!882250 (=> (not res!599487) (not e!491038))))

(declare-fun b!882251 () Bool)

(declare-fun call!38964 () ListLongMap!10557)

(assert (=> b!882251 (= e!491033 call!38964)))

(declare-fun b!882252 () Bool)

(declare-fun lt!399176 () Unit!30076)

(declare-fun lt!399175 () Unit!30076)

(assert (=> b!882252 (= lt!399176 lt!399175)))

(declare-fun lt!399177 () (_ BitVec 64))

(declare-fun lt!399172 () ListLongMap!10557)

(declare-fun lt!399173 () V!28571)

(declare-fun lt!399178 () (_ BitVec 64))

(assert (=> b!882252 (not (contains!4262 (+!2500 lt!399172 (tuple2!11775 lt!399177 lt!399173)) lt!399178))))

(assert (=> b!882252 (= lt!399175 (addStillNotContains!210 lt!399172 lt!399177 lt!399173 lt!399178))))

(assert (=> b!882252 (= lt!399178 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!882252 (= lt!399173 (get!13026 (select (arr!24715 lt!399075) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!882252 (= lt!399177 (select (arr!24714 _keys!868) from!1053))))

(assert (=> b!882252 (= lt!399172 call!38964)))

(assert (=> b!882252 (= e!491033 (+!2500 call!38964 (tuple2!11775 (select (arr!24714 _keys!868) from!1053) (get!13026 (select (arr!24715 lt!399075) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882253 () Bool)

(assert (=> b!882253 (= e!491035 e!491036)))

(declare-fun c!92916 () Bool)

(assert (=> b!882253 (= c!92916 (bvslt from!1053 (size!25155 _keys!868)))))

(declare-fun b!882254 () Bool)

(assert (=> b!882254 (= e!491037 (validKeyInArray!0 (select (arr!24714 _keys!868) from!1053)))))

(assert (=> b!882254 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!882255 () Bool)

(assert (=> b!882255 (= e!491036 (isEmpty!675 lt!399174))))

(declare-fun bm!38961 () Bool)

(assert (=> bm!38961 (= call!38964 (getCurrentListMapNoExtraKeys!3253 _keys!868 lt!399075 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!882256 () Bool)

(assert (=> b!882256 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25155 _keys!868)))))

(assert (=> b!882256 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25156 lt!399075)))))

(assert (=> b!882256 (= e!491038 (= (apply!383 lt!399174 (select (arr!24714 _keys!868) from!1053)) (get!13026 (select (arr!24715 lt!399075) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!109055 c!92919) b!882246))

(assert (= (and d!109055 (not c!92919)) b!882248))

(assert (= (and b!882248 c!92917) b!882252))

(assert (= (and b!882248 (not c!92917)) b!882251))

(assert (= (or b!882252 b!882251) bm!38961))

(assert (= (and d!109055 res!599486) b!882245))

(assert (= (and b!882245 res!599489) b!882249))

(assert (= (and b!882249 res!599488) b!882254))

(assert (= (and b!882249 c!92918) b!882250))

(assert (= (and b!882249 (not c!92918)) b!882253))

(assert (= (and b!882250 res!599487) b!882256))

(assert (= (and b!882253 c!92916) b!882247))

(assert (= (and b!882253 (not c!92916)) b!882255))

(declare-fun b_lambda!12653 () Bool)

(assert (=> (not b_lambda!12653) (not b!882252)))

(assert (=> b!882252 t!24849))

(declare-fun b_and!25499 () Bool)

(assert (= b_and!25497 (and (=> t!24849 result!9753) b_and!25499)))

(declare-fun b_lambda!12655 () Bool)

(assert (=> (not b_lambda!12655) (not b!882256)))

(assert (=> b!882256 t!24849))

(declare-fun b_and!25501 () Bool)

(assert (= b_and!25499 (and (=> t!24849 result!9753) b_and!25501)))

(declare-fun m!822339 () Bool)

(assert (=> b!882247 m!822339))

(declare-fun m!822341 () Bool)

(assert (=> b!882255 m!822341))

(assert (=> b!882256 m!822135))

(assert (=> b!882256 m!822139))

(declare-fun m!822343 () Bool)

(assert (=> b!882256 m!822343))

(assert (=> b!882256 m!822135))

(declare-fun m!822345 () Bool)

(assert (=> b!882256 m!822345))

(assert (=> b!882256 m!822343))

(assert (=> b!882256 m!822139))

(declare-fun m!822347 () Bool)

(assert (=> b!882256 m!822347))

(assert (=> b!882248 m!822139))

(assert (=> b!882248 m!822139))

(assert (=> b!882248 m!822149))

(assert (=> bm!38961 m!822339))

(assert (=> b!882254 m!822139))

(assert (=> b!882254 m!822139))

(assert (=> b!882254 m!822149))

(assert (=> b!882250 m!822139))

(assert (=> b!882250 m!822139))

(declare-fun m!822349 () Bool)

(assert (=> b!882250 m!822349))

(declare-fun m!822351 () Bool)

(assert (=> b!882252 m!822351))

(declare-fun m!822353 () Bool)

(assert (=> b!882252 m!822353))

(assert (=> b!882252 m!822343))

(assert (=> b!882252 m!822135))

(declare-fun m!822355 () Bool)

(assert (=> b!882252 m!822355))

(declare-fun m!822357 () Bool)

(assert (=> b!882252 m!822357))

(assert (=> b!882252 m!822351))

(assert (=> b!882252 m!822139))

(assert (=> b!882252 m!822343))

(assert (=> b!882252 m!822135))

(assert (=> b!882252 m!822345))

(declare-fun m!822359 () Bool)

(assert (=> b!882245 m!822359))

(declare-fun m!822361 () Bool)

(assert (=> d!109055 m!822361))

(assert (=> d!109055 m!822155))

(assert (=> b!882080 d!109055))

(declare-fun b!882257 () Bool)

(declare-fun res!599493 () Bool)

(declare-fun e!491046 () Bool)

(assert (=> b!882257 (=> (not res!599493) (not e!491046))))

(declare-fun lt!399181 () ListLongMap!10557)

(assert (=> b!882257 (= res!599493 (not (contains!4262 lt!399181 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!882258 () Bool)

(declare-fun e!491041 () ListLongMap!10557)

(assert (=> b!882258 (= e!491041 (ListLongMap!10558 Nil!17639))))

(declare-fun e!491043 () Bool)

(declare-fun b!882259 () Bool)

(assert (=> b!882259 (= e!491043 (= lt!399181 (getCurrentListMapNoExtraKeys!3253 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!882260 () Bool)

(declare-fun e!491040 () ListLongMap!10557)

(assert (=> b!882260 (= e!491041 e!491040)))

(declare-fun c!92921 () Bool)

(assert (=> b!882260 (= c!92921 (validKeyInArray!0 (select (arr!24714 _keys!868) from!1053)))))

(declare-fun d!109057 () Bool)

(assert (=> d!109057 e!491046))

(declare-fun res!599490 () Bool)

(assert (=> d!109057 (=> (not res!599490) (not e!491046))))

(assert (=> d!109057 (= res!599490 (not (contains!4262 lt!399181 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!109057 (= lt!399181 e!491041)))

(declare-fun c!92923 () Bool)

(assert (=> d!109057 (= c!92923 (bvsge from!1053 (size!25155 _keys!868)))))

(assert (=> d!109057 (validMask!0 mask!1196)))

(assert (=> d!109057 (= (getCurrentListMapNoExtraKeys!3253 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!399181)))

(declare-fun b!882261 () Bool)

(declare-fun e!491042 () Bool)

(assert (=> b!882261 (= e!491046 e!491042)))

(declare-fun c!92922 () Bool)

(declare-fun e!491044 () Bool)

(assert (=> b!882261 (= c!92922 e!491044)))

(declare-fun res!599492 () Bool)

(assert (=> b!882261 (=> (not res!599492) (not e!491044))))

(assert (=> b!882261 (= res!599492 (bvslt from!1053 (size!25155 _keys!868)))))

(declare-fun b!882262 () Bool)

(declare-fun e!491045 () Bool)

(assert (=> b!882262 (= e!491042 e!491045)))

(assert (=> b!882262 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25155 _keys!868)))))

(declare-fun res!599491 () Bool)

(assert (=> b!882262 (= res!599491 (contains!4262 lt!399181 (select (arr!24714 _keys!868) from!1053)))))

(assert (=> b!882262 (=> (not res!599491) (not e!491045))))

(declare-fun b!882263 () Bool)

(declare-fun call!38965 () ListLongMap!10557)

(assert (=> b!882263 (= e!491040 call!38965)))

(declare-fun b!882264 () Bool)

(declare-fun lt!399183 () Unit!30076)

(declare-fun lt!399182 () Unit!30076)

(assert (=> b!882264 (= lt!399183 lt!399182)))

(declare-fun lt!399179 () ListLongMap!10557)

(declare-fun lt!399180 () V!28571)

(declare-fun lt!399184 () (_ BitVec 64))

(declare-fun lt!399185 () (_ BitVec 64))

(assert (=> b!882264 (not (contains!4262 (+!2500 lt!399179 (tuple2!11775 lt!399184 lt!399180)) lt!399185))))

(assert (=> b!882264 (= lt!399182 (addStillNotContains!210 lt!399179 lt!399184 lt!399180 lt!399185))))

(assert (=> b!882264 (= lt!399185 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!882264 (= lt!399180 (get!13026 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!882264 (= lt!399184 (select (arr!24714 _keys!868) from!1053))))

(assert (=> b!882264 (= lt!399179 call!38965)))

(assert (=> b!882264 (= e!491040 (+!2500 call!38965 (tuple2!11775 (select (arr!24714 _keys!868) from!1053) (get!13026 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882265 () Bool)

(assert (=> b!882265 (= e!491042 e!491043)))

(declare-fun c!92920 () Bool)

(assert (=> b!882265 (= c!92920 (bvslt from!1053 (size!25155 _keys!868)))))

(declare-fun b!882266 () Bool)

(assert (=> b!882266 (= e!491044 (validKeyInArray!0 (select (arr!24714 _keys!868) from!1053)))))

(assert (=> b!882266 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!882267 () Bool)

(assert (=> b!882267 (= e!491043 (isEmpty!675 lt!399181))))

(declare-fun bm!38962 () Bool)

(assert (=> bm!38962 (= call!38965 (getCurrentListMapNoExtraKeys!3253 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!882268 () Bool)

(assert (=> b!882268 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25155 _keys!868)))))

(assert (=> b!882268 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25156 _values!688)))))

(assert (=> b!882268 (= e!491045 (= (apply!383 lt!399181 (select (arr!24714 _keys!868) from!1053)) (get!13026 (select (arr!24715 _values!688) from!1053) (dynLambda!1259 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!109057 c!92923) b!882258))

(assert (= (and d!109057 (not c!92923)) b!882260))

(assert (= (and b!882260 c!92921) b!882264))

(assert (= (and b!882260 (not c!92921)) b!882263))

(assert (= (or b!882264 b!882263) bm!38962))

(assert (= (and d!109057 res!599490) b!882257))

(assert (= (and b!882257 res!599493) b!882261))

(assert (= (and b!882261 res!599492) b!882266))

(assert (= (and b!882261 c!92922) b!882262))

(assert (= (and b!882261 (not c!92922)) b!882265))

(assert (= (and b!882262 res!599491) b!882268))

(assert (= (and b!882265 c!92920) b!882259))

(assert (= (and b!882265 (not c!92920)) b!882267))

(declare-fun b_lambda!12657 () Bool)

(assert (=> (not b_lambda!12657) (not b!882264)))

(assert (=> b!882264 t!24849))

(declare-fun b_and!25503 () Bool)

(assert (= b_and!25501 (and (=> t!24849 result!9753) b_and!25503)))

(declare-fun b_lambda!12659 () Bool)

(assert (=> (not b_lambda!12659) (not b!882268)))

(assert (=> b!882268 t!24849))

(declare-fun b_and!25505 () Bool)

(assert (= b_and!25503 (and (=> t!24849 result!9753) b_and!25505)))

(declare-fun m!822363 () Bool)

(assert (=> b!882259 m!822363))

(declare-fun m!822365 () Bool)

(assert (=> b!882267 m!822365))

(assert (=> b!882268 m!822135))

(assert (=> b!882268 m!822139))

(assert (=> b!882268 m!822133))

(assert (=> b!882268 m!822135))

(assert (=> b!882268 m!822137))

(assert (=> b!882268 m!822133))

(assert (=> b!882268 m!822139))

(declare-fun m!822367 () Bool)

(assert (=> b!882268 m!822367))

(assert (=> b!882260 m!822139))

(assert (=> b!882260 m!822139))

(assert (=> b!882260 m!822149))

(assert (=> bm!38962 m!822363))

(assert (=> b!882266 m!822139))

(assert (=> b!882266 m!822139))

(assert (=> b!882266 m!822149))

(assert (=> b!882262 m!822139))

(assert (=> b!882262 m!822139))

(declare-fun m!822369 () Bool)

(assert (=> b!882262 m!822369))

(declare-fun m!822371 () Bool)

(assert (=> b!882264 m!822371))

(declare-fun m!822373 () Bool)

(assert (=> b!882264 m!822373))

(assert (=> b!882264 m!822133))

(assert (=> b!882264 m!822135))

(declare-fun m!822375 () Bool)

(assert (=> b!882264 m!822375))

(declare-fun m!822377 () Bool)

(assert (=> b!882264 m!822377))

(assert (=> b!882264 m!822371))

(assert (=> b!882264 m!822139))

(assert (=> b!882264 m!822133))

(assert (=> b!882264 m!822135))

(assert (=> b!882264 m!822137))

(declare-fun m!822379 () Bool)

(assert (=> b!882257 m!822379))

(declare-fun m!822381 () Bool)

(assert (=> d!109057 m!822381))

(assert (=> d!109057 m!822155))

(assert (=> b!882080 d!109057))

(declare-fun b!882269 () Bool)

(declare-fun e!491049 () Bool)

(declare-fun call!38966 () Bool)

(assert (=> b!882269 (= e!491049 call!38966)))

(declare-fun bm!38963 () Bool)

(declare-fun c!92924 () Bool)

(assert (=> bm!38963 (= call!38966 (arrayNoDuplicates!0 _keys!868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!92924 (Cons!17637 (select (arr!24714 _keys!868) #b00000000000000000000000000000000) Nil!17638) Nil!17638)))))

(declare-fun b!882270 () Bool)

(declare-fun e!491050 () Bool)

(declare-fun e!491047 () Bool)

(assert (=> b!882270 (= e!491050 e!491047)))

(declare-fun res!599495 () Bool)

(assert (=> b!882270 (=> (not res!599495) (not e!491047))))

(declare-fun e!491048 () Bool)

(assert (=> b!882270 (= res!599495 (not e!491048))))

(declare-fun res!599496 () Bool)

(assert (=> b!882270 (=> (not res!599496) (not e!491048))))

(assert (=> b!882270 (= res!599496 (validKeyInArray!0 (select (arr!24714 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!882271 () Bool)

(assert (=> b!882271 (= e!491048 (contains!4264 Nil!17638 (select (arr!24714 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!882272 () Bool)

(assert (=> b!882272 (= e!491047 e!491049)))

(assert (=> b!882272 (= c!92924 (validKeyInArray!0 (select (arr!24714 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!882273 () Bool)

(assert (=> b!882273 (= e!491049 call!38966)))

(declare-fun d!109059 () Bool)

(declare-fun res!599494 () Bool)

(assert (=> d!109059 (=> res!599494 e!491050)))

(assert (=> d!109059 (= res!599494 (bvsge #b00000000000000000000000000000000 (size!25155 _keys!868)))))

(assert (=> d!109059 (= (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17638) e!491050)))

(assert (= (and d!109059 (not res!599494)) b!882270))

(assert (= (and b!882270 res!599496) b!882271))

(assert (= (and b!882270 res!599495) b!882272))

(assert (= (and b!882272 c!92924) b!882269))

(assert (= (and b!882272 (not c!92924)) b!882273))

(assert (= (or b!882269 b!882273) bm!38963))

(assert (=> bm!38963 m!822259))

(declare-fun m!822383 () Bool)

(assert (=> bm!38963 m!822383))

(assert (=> b!882270 m!822259))

(assert (=> b!882270 m!822259))

(assert (=> b!882270 m!822269))

(assert (=> b!882271 m!822259))

(assert (=> b!882271 m!822259))

(declare-fun m!822385 () Bool)

(assert (=> b!882271 m!822385))

(assert (=> b!882272 m!822259))

(assert (=> b!882272 m!822259))

(assert (=> b!882272 m!822269))

(assert (=> b!882072 d!109059))

(declare-fun b!882280 () Bool)

(declare-fun e!491056 () Bool)

(assert (=> b!882280 (= e!491056 tp_is_empty!17643)))

(declare-fun condMapEmpty!28101 () Bool)

(declare-fun mapDefault!28101 () ValueCell!8382)

(assert (=> mapNonEmpty!28095 (= condMapEmpty!28101 (= mapRest!28095 ((as const (Array (_ BitVec 32) ValueCell!8382)) mapDefault!28101)))))

(declare-fun e!491055 () Bool)

(declare-fun mapRes!28101 () Bool)

(assert (=> mapNonEmpty!28095 (= tp!53894 (and e!491055 mapRes!28101))))

(declare-fun b!882281 () Bool)

(assert (=> b!882281 (= e!491055 tp_is_empty!17643)))

(declare-fun mapNonEmpty!28101 () Bool)

(declare-fun tp!53904 () Bool)

(assert (=> mapNonEmpty!28101 (= mapRes!28101 (and tp!53904 e!491056))))

(declare-fun mapKey!28101 () (_ BitVec 32))

(declare-fun mapValue!28101 () ValueCell!8382)

(declare-fun mapRest!28101 () (Array (_ BitVec 32) ValueCell!8382))

(assert (=> mapNonEmpty!28101 (= mapRest!28095 (store mapRest!28101 mapKey!28101 mapValue!28101))))

(declare-fun mapIsEmpty!28101 () Bool)

(assert (=> mapIsEmpty!28101 mapRes!28101))

(assert (= (and mapNonEmpty!28095 condMapEmpty!28101) mapIsEmpty!28101))

(assert (= (and mapNonEmpty!28095 (not condMapEmpty!28101)) mapNonEmpty!28101))

(assert (= (and mapNonEmpty!28101 ((_ is ValueCellFull!8382) mapValue!28101)) b!882280))

(assert (= (and mapNonEmpty!28095 ((_ is ValueCellFull!8382) mapDefault!28101)) b!882281))

(declare-fun m!822387 () Bool)

(assert (=> mapNonEmpty!28101 m!822387))

(declare-fun b_lambda!12661 () Bool)

(assert (= b_lambda!12657 (or (and start!74850 b_free!15399) b_lambda!12661)))

(declare-fun b_lambda!12663 () Bool)

(assert (= b_lambda!12653 (or (and start!74850 b_free!15399) b_lambda!12663)))

(declare-fun b_lambda!12665 () Bool)

(assert (= b_lambda!12655 (or (and start!74850 b_free!15399) b_lambda!12665)))

(declare-fun b_lambda!12667 () Bool)

(assert (= b_lambda!12659 (or (and start!74850 b_free!15399) b_lambda!12667)))

(declare-fun b_lambda!12669 () Bool)

(assert (= b_lambda!12651 (or (and start!74850 b_free!15399) b_lambda!12669)))

(declare-fun b_lambda!12671 () Bool)

(assert (= b_lambda!12647 (or (and start!74850 b_free!15399) b_lambda!12671)))

(declare-fun b_lambda!12673 () Bool)

(assert (= b_lambda!12645 (or (and start!74850 b_free!15399) b_lambda!12673)))

(declare-fun b_lambda!12675 () Bool)

(assert (= b_lambda!12649 (or (and start!74850 b_free!15399) b_lambda!12675)))

(check-sat (not b!882213) (not b!882145) (not d!109049) (not b!882152) (not b!882266) (not b!882231) (not b!882219) (not b!882255) (not b!882151) (not b_lambda!12665) (not d!109045) (not bm!38954) (not b!882171) (not b!882270) (not b!882140) (not b_lambda!12675) (not b!882210) (not b_lambda!12643) (not bm!38963) (not b!882243) (not b!882248) (not d!109055) (not b!882252) (not d!109051) (not bm!38959) (not b!882185) (not d!109057) (not b!882256) (not b!882262) (not b!882183) (not b_lambda!12667) (not b_lambda!12663) (not b!882170) (not b!882217) (not mapNonEmpty!28101) (not b_lambda!12673) (not b!882268) (not b!882225) (not b!882221) (not b!882250) b_and!25505 (not d!109053) tp_is_empty!17643 (not b!882272) (not b!882232) (not b!882247) (not b!882222) (not b!882172) (not d!109035) (not bm!38953) (not b!882264) (not b!882254) (not b!882220) (not b!882245) (not d!109039) (not b!882229) (not b!882242) (not bm!38960) (not b!882215) (not bm!38947) (not b!882158) (not d!109021) (not b!882224) (not b!882271) (not bm!38962) (not b!882244) (not bm!38961) (not b!882259) (not b!882227) (not b!882260) (not b!882267) (not b!882146) (not b!882139) (not bm!38950) (not b!882212) (not b!882233) (not b_next!15399) (not b_lambda!12669) (not b_lambda!12671) (not b_lambda!12661) (not b!882257))
(check-sat b_and!25505 (not b_next!15399))
