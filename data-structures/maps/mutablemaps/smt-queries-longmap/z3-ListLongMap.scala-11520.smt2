; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134144 () Bool)

(assert start!134144)

(declare-fun b_free!32223 () Bool)

(declare-fun b_next!32223 () Bool)

(assert (=> start!134144 (= b_free!32223 (not b_next!32223))))

(declare-fun tp!113991 () Bool)

(declare-fun b_and!51881 () Bool)

(assert (=> start!134144 (= tp!113991 b_and!51881)))

(declare-fun b!1567270 () Bool)

(declare-fun e!873669 () Bool)

(declare-fun tp_is_empty!39003 () Bool)

(assert (=> b!1567270 (= e!873669 tp_is_empty!39003)))

(declare-fun b!1567271 () Bool)

(declare-fun e!873670 () Bool)

(declare-datatypes ((V!60211 0))(
  ( (V!60212 (val!19585 Int)) )
))
(declare-datatypes ((tuple2!25438 0))(
  ( (tuple2!25439 (_1!12729 (_ BitVec 64)) (_2!12729 V!60211)) )
))
(declare-datatypes ((List!36821 0))(
  ( (Nil!36818) (Cons!36817 (h!38265 tuple2!25438) (t!51734 List!36821)) )
))
(declare-datatypes ((ListLongMap!22885 0))(
  ( (ListLongMap!22886 (toList!11458 List!36821)) )
))
(declare-fun lt!672858 () ListLongMap!22885)

(declare-fun contains!10383 (ListLongMap!22885 (_ BitVec 64)) Bool)

(assert (=> b!1567271 (= e!873670 (contains!10383 lt!672858 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567272 () Bool)

(declare-fun res!1071238 () Bool)

(declare-fun e!873666 () Bool)

(assert (=> b!1567272 (=> (not res!1071238) (not e!873666))))

(declare-datatypes ((array!104669 0))(
  ( (array!104670 (arr!50514 (Array (_ BitVec 32) (_ BitVec 64))) (size!51065 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104669)

(declare-datatypes ((List!36822 0))(
  ( (Nil!36819) (Cons!36818 (h!38266 (_ BitVec 64)) (t!51735 List!36822)) )
))
(declare-fun arrayNoDuplicates!0 (array!104669 (_ BitVec 32) List!36822) Bool)

(assert (=> b!1567272 (= res!1071238 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36819))))

(declare-fun b!1567273 () Bool)

(declare-fun res!1071243 () Bool)

(assert (=> b!1567273 (=> (not res!1071243) (not e!873666))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1567273 (= res!1071243 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51065 _keys!637)) (bvslt from!782 (size!51065 _keys!637))))))

(declare-fun b!1567274 () Bool)

(declare-fun e!873668 () Bool)

(assert (=> b!1567274 (= e!873668 tp_is_empty!39003)))

(declare-fun b!1567275 () Bool)

(declare-fun res!1071240 () Bool)

(assert (=> b!1567275 (=> (not res!1071240) (not e!873666))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567275 (= res!1071240 (not (validKeyInArray!0 (select (arr!50514 _keys!637) from!782))))))

(declare-fun b!1567276 () Bool)

(declare-fun res!1071241 () Bool)

(assert (=> b!1567276 (=> (not res!1071241) (not e!873666))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104669 (_ BitVec 32)) Bool)

(assert (=> b!1567276 (= res!1071241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1567277 () Bool)

(declare-fun res!1071239 () Bool)

(assert (=> b!1567277 (=> (not res!1071239) (not e!873666))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18471 0))(
  ( (ValueCellFull!18471 (v!22342 V!60211)) (EmptyCell!18471) )
))
(declare-datatypes ((array!104671 0))(
  ( (array!104672 (arr!50515 (Array (_ BitVec 32) ValueCell!18471)) (size!51066 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104671)

(assert (=> b!1567277 (= res!1071239 (and (= (size!51066 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51065 _keys!637) (size!51066 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59907 () Bool)

(declare-fun mapRes!59907 () Bool)

(declare-fun tp!113992 () Bool)

(assert (=> mapNonEmpty!59907 (= mapRes!59907 (and tp!113992 e!873669))))

(declare-fun mapKey!59907 () (_ BitVec 32))

(declare-fun mapValue!59907 () ValueCell!18471)

(declare-fun mapRest!59907 () (Array (_ BitVec 32) ValueCell!18471))

(assert (=> mapNonEmpty!59907 (= (arr!50515 _values!487) (store mapRest!59907 mapKey!59907 mapValue!59907))))

(declare-fun b!1567278 () Bool)

(assert (=> b!1567278 (= e!873666 e!873670)))

(declare-fun res!1071244 () Bool)

(assert (=> b!1567278 (=> res!1071244 e!873670)))

(assert (=> b!1567278 (= res!1071244 (contains!10383 lt!672858 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!60211)

(declare-fun minValue!453 () V!60211)

(declare-fun getCurrentListMapNoExtraKeys!6793 (array!104669 array!104671 (_ BitVec 32) (_ BitVec 32) V!60211 V!60211 (_ BitVec 32) Int) ListLongMap!22885)

(assert (=> b!1567278 (= lt!672858 (getCurrentListMapNoExtraKeys!6793 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1567279 () Bool)

(declare-fun e!873667 () Bool)

(assert (=> b!1567279 (= e!873667 (and e!873668 mapRes!59907))))

(declare-fun condMapEmpty!59907 () Bool)

(declare-fun mapDefault!59907 () ValueCell!18471)

(assert (=> b!1567279 (= condMapEmpty!59907 (= (arr!50515 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18471)) mapDefault!59907)))))

(declare-fun res!1071242 () Bool)

(assert (=> start!134144 (=> (not res!1071242) (not e!873666))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134144 (= res!1071242 (validMask!0 mask!947))))

(assert (=> start!134144 e!873666))

(assert (=> start!134144 tp!113991))

(assert (=> start!134144 tp_is_empty!39003))

(assert (=> start!134144 true))

(declare-fun array_inv!39161 (array!104669) Bool)

(assert (=> start!134144 (array_inv!39161 _keys!637)))

(declare-fun array_inv!39162 (array!104671) Bool)

(assert (=> start!134144 (and (array_inv!39162 _values!487) e!873667)))

(declare-fun mapIsEmpty!59907 () Bool)

(assert (=> mapIsEmpty!59907 mapRes!59907))

(assert (= (and start!134144 res!1071242) b!1567277))

(assert (= (and b!1567277 res!1071239) b!1567276))

(assert (= (and b!1567276 res!1071241) b!1567272))

(assert (= (and b!1567272 res!1071238) b!1567273))

(assert (= (and b!1567273 res!1071243) b!1567275))

(assert (= (and b!1567275 res!1071240) b!1567278))

(assert (= (and b!1567278 (not res!1071244)) b!1567271))

(assert (= (and b!1567279 condMapEmpty!59907) mapIsEmpty!59907))

(assert (= (and b!1567279 (not condMapEmpty!59907)) mapNonEmpty!59907))

(get-info :version)

(assert (= (and mapNonEmpty!59907 ((_ is ValueCellFull!18471) mapValue!59907)) b!1567270))

(assert (= (and b!1567279 ((_ is ValueCellFull!18471) mapDefault!59907)) b!1567274))

(assert (= start!134144 b!1567279))

(declare-fun m!1442185 () Bool)

(assert (=> mapNonEmpty!59907 m!1442185))

(declare-fun m!1442187 () Bool)

(assert (=> start!134144 m!1442187))

(declare-fun m!1442189 () Bool)

(assert (=> start!134144 m!1442189))

(declare-fun m!1442191 () Bool)

(assert (=> start!134144 m!1442191))

(declare-fun m!1442193 () Bool)

(assert (=> b!1567276 m!1442193))

(declare-fun m!1442195 () Bool)

(assert (=> b!1567278 m!1442195))

(declare-fun m!1442197 () Bool)

(assert (=> b!1567278 m!1442197))

(declare-fun m!1442199 () Bool)

(assert (=> b!1567275 m!1442199))

(assert (=> b!1567275 m!1442199))

(declare-fun m!1442201 () Bool)

(assert (=> b!1567275 m!1442201))

(declare-fun m!1442203 () Bool)

(assert (=> b!1567272 m!1442203))

(declare-fun m!1442205 () Bool)

(assert (=> b!1567271 m!1442205))

(check-sat (not start!134144) (not mapNonEmpty!59907) b_and!51881 (not b!1567275) (not b!1567271) (not b!1567276) tp_is_empty!39003 (not b!1567272) (not b!1567278) (not b_next!32223))
(check-sat b_and!51881 (not b_next!32223))
(get-model)

(declare-fun d!163487 () Bool)

(declare-fun e!873694 () Bool)

(assert (=> d!163487 e!873694))

(declare-fun res!1071268 () Bool)

(assert (=> d!163487 (=> res!1071268 e!873694)))

(declare-fun lt!672872 () Bool)

(assert (=> d!163487 (= res!1071268 (not lt!672872))))

(declare-fun lt!672870 () Bool)

(assert (=> d!163487 (= lt!672872 lt!672870)))

(declare-datatypes ((Unit!51999 0))(
  ( (Unit!52000) )
))
(declare-fun lt!672871 () Unit!51999)

(declare-fun e!873693 () Unit!51999)

(assert (=> d!163487 (= lt!672871 e!873693)))

(declare-fun c!144422 () Bool)

(assert (=> d!163487 (= c!144422 lt!672870)))

(declare-fun containsKey!851 (List!36821 (_ BitVec 64)) Bool)

(assert (=> d!163487 (= lt!672870 (containsKey!851 (toList!11458 lt!672858) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163487 (= (contains!10383 lt!672858 #b0000000000000000000000000000000000000000000000000000000000000000) lt!672872)))

(declare-fun b!1567316 () Bool)

(declare-fun lt!672873 () Unit!51999)

(assert (=> b!1567316 (= e!873693 lt!672873)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!532 (List!36821 (_ BitVec 64)) Unit!51999)

(assert (=> b!1567316 (= lt!672873 (lemmaContainsKeyImpliesGetValueByKeyDefined!532 (toList!11458 lt!672858) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!872 0))(
  ( (Some!871 (v!22344 V!60211)) (None!870) )
))
(declare-fun isDefined!581 (Option!872) Bool)

(declare-fun getValueByKey!797 (List!36821 (_ BitVec 64)) Option!872)

(assert (=> b!1567316 (isDefined!581 (getValueByKey!797 (toList!11458 lt!672858) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567317 () Bool)

(declare-fun Unit!52001 () Unit!51999)

(assert (=> b!1567317 (= e!873693 Unit!52001)))

(declare-fun b!1567318 () Bool)

(assert (=> b!1567318 (= e!873694 (isDefined!581 (getValueByKey!797 (toList!11458 lt!672858) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163487 c!144422) b!1567316))

(assert (= (and d!163487 (not c!144422)) b!1567317))

(assert (= (and d!163487 (not res!1071268)) b!1567318))

(declare-fun m!1442229 () Bool)

(assert (=> d!163487 m!1442229))

(declare-fun m!1442231 () Bool)

(assert (=> b!1567316 m!1442231))

(declare-fun m!1442233 () Bool)

(assert (=> b!1567316 m!1442233))

(assert (=> b!1567316 m!1442233))

(declare-fun m!1442235 () Bool)

(assert (=> b!1567316 m!1442235))

(assert (=> b!1567318 m!1442233))

(assert (=> b!1567318 m!1442233))

(assert (=> b!1567318 m!1442235))

(assert (=> b!1567278 d!163487))

(declare-fun b!1567343 () Bool)

(declare-fun e!873714 () ListLongMap!22885)

(declare-fun e!873713 () ListLongMap!22885)

(assert (=> b!1567343 (= e!873714 e!873713)))

(declare-fun c!144433 () Bool)

(assert (=> b!1567343 (= c!144433 (validKeyInArray!0 (select (arr!50514 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(declare-fun b!1567344 () Bool)

(declare-fun lt!672891 () ListLongMap!22885)

(declare-fun e!873709 () Bool)

(assert (=> b!1567344 (= e!873709 (= lt!672891 (getCurrentListMapNoExtraKeys!6793 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) defaultEntry!495)))))

(declare-fun b!1567345 () Bool)

(declare-fun e!873712 () Bool)

(declare-fun e!873715 () Bool)

(assert (=> b!1567345 (= e!873712 e!873715)))

(declare-fun c!144434 () Bool)

(declare-fun e!873711 () Bool)

(assert (=> b!1567345 (= c!144434 e!873711)))

(declare-fun res!1071277 () Bool)

(assert (=> b!1567345 (=> (not res!1071277) (not e!873711))))

(assert (=> b!1567345 (= res!1071277 (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!51065 _keys!637)))))

(declare-fun bm!71927 () Bool)

(declare-fun call!71930 () ListLongMap!22885)

(assert (=> bm!71927 (= call!71930 (getCurrentListMapNoExtraKeys!6793 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) defaultEntry!495))))

(declare-fun b!1567346 () Bool)

(declare-fun lt!672889 () Unit!51999)

(declare-fun lt!672893 () Unit!51999)

(assert (=> b!1567346 (= lt!672889 lt!672893)))

(declare-fun lt!672888 () ListLongMap!22885)

(declare-fun lt!672894 () V!60211)

(declare-fun lt!672890 () (_ BitVec 64))

(declare-fun lt!672892 () (_ BitVec 64))

(declare-fun +!5052 (ListLongMap!22885 tuple2!25438) ListLongMap!22885)

(assert (=> b!1567346 (not (contains!10383 (+!5052 lt!672888 (tuple2!25439 lt!672892 lt!672894)) lt!672890))))

(declare-fun addStillNotContains!588 (ListLongMap!22885 (_ BitVec 64) V!60211 (_ BitVec 64)) Unit!51999)

(assert (=> b!1567346 (= lt!672893 (addStillNotContains!588 lt!672888 lt!672892 lt!672894 lt!672890))))

(assert (=> b!1567346 (= lt!672890 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!26409 (ValueCell!18471 V!60211) V!60211)

(declare-fun dynLambda!3941 (Int (_ BitVec 64)) V!60211)

(assert (=> b!1567346 (= lt!672894 (get!26409 (select (arr!50515 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3941 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1567346 (= lt!672892 (select (arr!50514 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)))))

(assert (=> b!1567346 (= lt!672888 call!71930)))

(assert (=> b!1567346 (= e!873713 (+!5052 call!71930 (tuple2!25439 (select (arr!50514 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26409 (select (arr!50515 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3941 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1567347 () Bool)

(declare-fun isEmpty!1152 (ListLongMap!22885) Bool)

(assert (=> b!1567347 (= e!873709 (isEmpty!1152 lt!672891))))

(declare-fun b!1567348 () Bool)

(assert (=> b!1567348 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!51065 _keys!637)))))

(assert (=> b!1567348 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!51066 _values!487)))))

(declare-fun e!873710 () Bool)

(declare-fun apply!1150 (ListLongMap!22885 (_ BitVec 64)) V!60211)

(assert (=> b!1567348 (= e!873710 (= (apply!1150 lt!672891 (select (arr!50514 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))) (get!26409 (select (arr!50515 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3941 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1567349 () Bool)

(assert (=> b!1567349 (= e!873714 (ListLongMap!22886 Nil!36818))))

(declare-fun b!1567350 () Bool)

(assert (=> b!1567350 (= e!873715 e!873710)))

(assert (=> b!1567350 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!51065 _keys!637)))))

(declare-fun res!1071278 () Bool)

(assert (=> b!1567350 (= res!1071278 (contains!10383 lt!672891 (select (arr!50514 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(assert (=> b!1567350 (=> (not res!1071278) (not e!873710))))

(declare-fun d!163489 () Bool)

(assert (=> d!163489 e!873712))

(declare-fun res!1071279 () Bool)

(assert (=> d!163489 (=> (not res!1071279) (not e!873712))))

(assert (=> d!163489 (= res!1071279 (not (contains!10383 lt!672891 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163489 (= lt!672891 e!873714)))

(declare-fun c!144432 () Bool)

(assert (=> d!163489 (= c!144432 (bvsge (bvadd #b00000000000000000000000000000001 from!782) (size!51065 _keys!637)))))

(assert (=> d!163489 (validMask!0 mask!947)))

(assert (=> d!163489 (= (getCurrentListMapNoExtraKeys!6793 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495) lt!672891)))

(declare-fun b!1567351 () Bool)

(assert (=> b!1567351 (= e!873715 e!873709)))

(declare-fun c!144431 () Bool)

(assert (=> b!1567351 (= c!144431 (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!51065 _keys!637)))))

(declare-fun b!1567352 () Bool)

(assert (=> b!1567352 (= e!873711 (validKeyInArray!0 (select (arr!50514 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(assert (=> b!1567352 (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000)))

(declare-fun b!1567353 () Bool)

(assert (=> b!1567353 (= e!873713 call!71930)))

(declare-fun b!1567354 () Bool)

(declare-fun res!1071280 () Bool)

(assert (=> b!1567354 (=> (not res!1071280) (not e!873712))))

(assert (=> b!1567354 (= res!1071280 (not (contains!10383 lt!672891 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163489 c!144432) b!1567349))

(assert (= (and d!163489 (not c!144432)) b!1567343))

(assert (= (and b!1567343 c!144433) b!1567346))

(assert (= (and b!1567343 (not c!144433)) b!1567353))

(assert (= (or b!1567346 b!1567353) bm!71927))

(assert (= (and d!163489 res!1071279) b!1567354))

(assert (= (and b!1567354 res!1071280) b!1567345))

(assert (= (and b!1567345 res!1071277) b!1567352))

(assert (= (and b!1567345 c!144434) b!1567350))

(assert (= (and b!1567345 (not c!144434)) b!1567351))

(assert (= (and b!1567350 res!1071278) b!1567348))

(assert (= (and b!1567351 c!144431) b!1567344))

(assert (= (and b!1567351 (not c!144431)) b!1567347))

(declare-fun b_lambda!25049 () Bool)

(assert (=> (not b_lambda!25049) (not b!1567346)))

(declare-fun t!51737 () Bool)

(declare-fun tb!12669 () Bool)

(assert (=> (and start!134144 (= defaultEntry!495 defaultEntry!495) t!51737) tb!12669))

(declare-fun result!26627 () Bool)

(assert (=> tb!12669 (= result!26627 tp_is_empty!39003)))

(assert (=> b!1567346 t!51737))

(declare-fun b_and!51885 () Bool)

(assert (= b_and!51881 (and (=> t!51737 result!26627) b_and!51885)))

(declare-fun b_lambda!25051 () Bool)

(assert (=> (not b_lambda!25051) (not b!1567348)))

(assert (=> b!1567348 t!51737))

(declare-fun b_and!51887 () Bool)

(assert (= b_and!51885 (and (=> t!51737 result!26627) b_and!51887)))

(declare-fun m!1442237 () Bool)

(assert (=> b!1567354 m!1442237))

(declare-fun m!1442239 () Bool)

(assert (=> b!1567344 m!1442239))

(declare-fun m!1442241 () Bool)

(assert (=> b!1567346 m!1442241))

(declare-fun m!1442243 () Bool)

(assert (=> b!1567346 m!1442243))

(declare-fun m!1442245 () Bool)

(assert (=> b!1567346 m!1442245))

(declare-fun m!1442247 () Bool)

(assert (=> b!1567346 m!1442247))

(declare-fun m!1442249 () Bool)

(assert (=> b!1567346 m!1442249))

(declare-fun m!1442251 () Bool)

(assert (=> b!1567346 m!1442251))

(declare-fun m!1442253 () Bool)

(assert (=> b!1567346 m!1442253))

(assert (=> b!1567346 m!1442247))

(assert (=> b!1567346 m!1442243))

(declare-fun m!1442255 () Bool)

(assert (=> b!1567346 m!1442255))

(assert (=> b!1567346 m!1442249))

(declare-fun m!1442257 () Bool)

(assert (=> d!163489 m!1442257))

(assert (=> d!163489 m!1442187))

(assert (=> bm!71927 m!1442239))

(declare-fun m!1442259 () Bool)

(assert (=> b!1567347 m!1442259))

(assert (=> b!1567348 m!1442245))

(declare-fun m!1442261 () Bool)

(assert (=> b!1567348 m!1442261))

(assert (=> b!1567348 m!1442249))

(assert (=> b!1567348 m!1442245))

(assert (=> b!1567348 m!1442247))

(assert (=> b!1567348 m!1442249))

(assert (=> b!1567348 m!1442251))

(assert (=> b!1567348 m!1442247))

(assert (=> b!1567352 m!1442245))

(assert (=> b!1567352 m!1442245))

(declare-fun m!1442263 () Bool)

(assert (=> b!1567352 m!1442263))

(assert (=> b!1567343 m!1442245))

(assert (=> b!1567343 m!1442245))

(assert (=> b!1567343 m!1442263))

(assert (=> b!1567350 m!1442245))

(assert (=> b!1567350 m!1442245))

(declare-fun m!1442265 () Bool)

(assert (=> b!1567350 m!1442265))

(assert (=> b!1567278 d!163489))

(declare-fun b!1567365 () Bool)

(declare-fun e!873724 () Bool)

(declare-fun call!71933 () Bool)

(assert (=> b!1567365 (= e!873724 call!71933)))

(declare-fun b!1567366 () Bool)

(declare-fun e!873723 () Bool)

(assert (=> b!1567366 (= e!873723 e!873724)))

(declare-fun lt!672901 () (_ BitVec 64))

(assert (=> b!1567366 (= lt!672901 (select (arr!50514 _keys!637) #b00000000000000000000000000000000))))

(declare-fun lt!672902 () Unit!51999)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!104669 (_ BitVec 64) (_ BitVec 32)) Unit!51999)

(assert (=> b!1567366 (= lt!672902 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!672901 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!104669 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1567366 (arrayContainsKey!0 _keys!637 lt!672901 #b00000000000000000000000000000000)))

(declare-fun lt!672903 () Unit!51999)

(assert (=> b!1567366 (= lt!672903 lt!672902)))

(declare-fun res!1071285 () Bool)

(declare-datatypes ((SeekEntryResult!13527 0))(
  ( (MissingZero!13527 (index!56505 (_ BitVec 32))) (Found!13527 (index!56506 (_ BitVec 32))) (Intermediate!13527 (undefined!14339 Bool) (index!56507 (_ BitVec 32)) (x!140836 (_ BitVec 32))) (Undefined!13527) (MissingVacant!13527 (index!56508 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104669 (_ BitVec 32)) SeekEntryResult!13527)

(assert (=> b!1567366 (= res!1071285 (= (seekEntryOrOpen!0 (select (arr!50514 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) (Found!13527 #b00000000000000000000000000000000)))))

(assert (=> b!1567366 (=> (not res!1071285) (not e!873724))))

(declare-fun b!1567367 () Bool)

(declare-fun e!873722 () Bool)

(assert (=> b!1567367 (= e!873722 e!873723)))

(declare-fun c!144437 () Bool)

(assert (=> b!1567367 (= c!144437 (validKeyInArray!0 (select (arr!50514 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun bm!71930 () Bool)

(assert (=> bm!71930 (= call!71933 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!637 mask!947))))

(declare-fun b!1567368 () Bool)

(assert (=> b!1567368 (= e!873723 call!71933)))

(declare-fun d!163491 () Bool)

(declare-fun res!1071286 () Bool)

(assert (=> d!163491 (=> res!1071286 e!873722)))

(assert (=> d!163491 (= res!1071286 (bvsge #b00000000000000000000000000000000 (size!51065 _keys!637)))))

(assert (=> d!163491 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947) e!873722)))

(assert (= (and d!163491 (not res!1071286)) b!1567367))

(assert (= (and b!1567367 c!144437) b!1567366))

(assert (= (and b!1567367 (not c!144437)) b!1567368))

(assert (= (and b!1567366 res!1071285) b!1567365))

(assert (= (or b!1567365 b!1567368) bm!71930))

(declare-fun m!1442267 () Bool)

(assert (=> b!1567366 m!1442267))

(declare-fun m!1442269 () Bool)

(assert (=> b!1567366 m!1442269))

(declare-fun m!1442271 () Bool)

(assert (=> b!1567366 m!1442271))

(assert (=> b!1567366 m!1442267))

(declare-fun m!1442273 () Bool)

(assert (=> b!1567366 m!1442273))

(assert (=> b!1567367 m!1442267))

(assert (=> b!1567367 m!1442267))

(declare-fun m!1442275 () Bool)

(assert (=> b!1567367 m!1442275))

(declare-fun m!1442277 () Bool)

(assert (=> bm!71930 m!1442277))

(assert (=> b!1567276 d!163491))

(declare-fun d!163493 () Bool)

(declare-fun e!873726 () Bool)

(assert (=> d!163493 e!873726))

(declare-fun res!1071287 () Bool)

(assert (=> d!163493 (=> res!1071287 e!873726)))

(declare-fun lt!672906 () Bool)

(assert (=> d!163493 (= res!1071287 (not lt!672906))))

(declare-fun lt!672904 () Bool)

(assert (=> d!163493 (= lt!672906 lt!672904)))

(declare-fun lt!672905 () Unit!51999)

(declare-fun e!873725 () Unit!51999)

(assert (=> d!163493 (= lt!672905 e!873725)))

(declare-fun c!144438 () Bool)

(assert (=> d!163493 (= c!144438 lt!672904)))

(assert (=> d!163493 (= lt!672904 (containsKey!851 (toList!11458 lt!672858) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163493 (= (contains!10383 lt!672858 #b1000000000000000000000000000000000000000000000000000000000000000) lt!672906)))

(declare-fun b!1567369 () Bool)

(declare-fun lt!672907 () Unit!51999)

(assert (=> b!1567369 (= e!873725 lt!672907)))

(assert (=> b!1567369 (= lt!672907 (lemmaContainsKeyImpliesGetValueByKeyDefined!532 (toList!11458 lt!672858) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1567369 (isDefined!581 (getValueByKey!797 (toList!11458 lt!672858) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567370 () Bool)

(declare-fun Unit!52002 () Unit!51999)

(assert (=> b!1567370 (= e!873725 Unit!52002)))

(declare-fun b!1567371 () Bool)

(assert (=> b!1567371 (= e!873726 (isDefined!581 (getValueByKey!797 (toList!11458 lt!672858) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163493 c!144438) b!1567369))

(assert (= (and d!163493 (not c!144438)) b!1567370))

(assert (= (and d!163493 (not res!1071287)) b!1567371))

(declare-fun m!1442279 () Bool)

(assert (=> d!163493 m!1442279))

(declare-fun m!1442281 () Bool)

(assert (=> b!1567369 m!1442281))

(declare-fun m!1442283 () Bool)

(assert (=> b!1567369 m!1442283))

(assert (=> b!1567369 m!1442283))

(declare-fun m!1442285 () Bool)

(assert (=> b!1567369 m!1442285))

(assert (=> b!1567371 m!1442283))

(assert (=> b!1567371 m!1442283))

(assert (=> b!1567371 m!1442285))

(assert (=> b!1567271 d!163493))

(declare-fun d!163495 () Bool)

(assert (=> d!163495 (= (validKeyInArray!0 (select (arr!50514 _keys!637) from!782)) (and (not (= (select (arr!50514 _keys!637) from!782) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50514 _keys!637) from!782) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1567275 d!163495))

(declare-fun d!163497 () Bool)

(assert (=> d!163497 (= (validMask!0 mask!947) (and (or (= mask!947 #b00000000000000000000000000000111) (= mask!947 #b00000000000000000000000000001111) (= mask!947 #b00000000000000000000000000011111) (= mask!947 #b00000000000000000000000000111111) (= mask!947 #b00000000000000000000000001111111) (= mask!947 #b00000000000000000000000011111111) (= mask!947 #b00000000000000000000000111111111) (= mask!947 #b00000000000000000000001111111111) (= mask!947 #b00000000000000000000011111111111) (= mask!947 #b00000000000000000000111111111111) (= mask!947 #b00000000000000000001111111111111) (= mask!947 #b00000000000000000011111111111111) (= mask!947 #b00000000000000000111111111111111) (= mask!947 #b00000000000000001111111111111111) (= mask!947 #b00000000000000011111111111111111) (= mask!947 #b00000000000000111111111111111111) (= mask!947 #b00000000000001111111111111111111) (= mask!947 #b00000000000011111111111111111111) (= mask!947 #b00000000000111111111111111111111) (= mask!947 #b00000000001111111111111111111111) (= mask!947 #b00000000011111111111111111111111) (= mask!947 #b00000000111111111111111111111111) (= mask!947 #b00000001111111111111111111111111) (= mask!947 #b00000011111111111111111111111111) (= mask!947 #b00000111111111111111111111111111) (= mask!947 #b00001111111111111111111111111111) (= mask!947 #b00011111111111111111111111111111) (= mask!947 #b00111111111111111111111111111111)) (bvsle mask!947 #b00111111111111111111111111111111)))))

(assert (=> start!134144 d!163497))

(declare-fun d!163499 () Bool)

(assert (=> d!163499 (= (array_inv!39161 _keys!637) (bvsge (size!51065 _keys!637) #b00000000000000000000000000000000))))

(assert (=> start!134144 d!163499))

(declare-fun d!163501 () Bool)

(assert (=> d!163501 (= (array_inv!39162 _values!487) (bvsge (size!51066 _values!487) #b00000000000000000000000000000000))))

(assert (=> start!134144 d!163501))

(declare-fun b!1567382 () Bool)

(declare-fun e!873736 () Bool)

(declare-fun contains!10384 (List!36822 (_ BitVec 64)) Bool)

(assert (=> b!1567382 (= e!873736 (contains!10384 Nil!36819 (select (arr!50514 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1567383 () Bool)

(declare-fun e!873738 () Bool)

(declare-fun e!873737 () Bool)

(assert (=> b!1567383 (= e!873738 e!873737)))

(declare-fun res!1071295 () Bool)

(assert (=> b!1567383 (=> (not res!1071295) (not e!873737))))

(assert (=> b!1567383 (= res!1071295 (not e!873736))))

(declare-fun res!1071296 () Bool)

(assert (=> b!1567383 (=> (not res!1071296) (not e!873736))))

(assert (=> b!1567383 (= res!1071296 (validKeyInArray!0 (select (arr!50514 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun d!163503 () Bool)

(declare-fun res!1071294 () Bool)

(assert (=> d!163503 (=> res!1071294 e!873738)))

(assert (=> d!163503 (= res!1071294 (bvsge #b00000000000000000000000000000000 (size!51065 _keys!637)))))

(assert (=> d!163503 (= (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36819) e!873738)))

(declare-fun b!1567384 () Bool)

(declare-fun e!873735 () Bool)

(declare-fun call!71936 () Bool)

(assert (=> b!1567384 (= e!873735 call!71936)))

(declare-fun b!1567385 () Bool)

(assert (=> b!1567385 (= e!873735 call!71936)))

(declare-fun b!1567386 () Bool)

(assert (=> b!1567386 (= e!873737 e!873735)))

(declare-fun c!144441 () Bool)

(assert (=> b!1567386 (= c!144441 (validKeyInArray!0 (select (arr!50514 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun bm!71933 () Bool)

(assert (=> bm!71933 (= call!71936 (arrayNoDuplicates!0 _keys!637 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!144441 (Cons!36818 (select (arr!50514 _keys!637) #b00000000000000000000000000000000) Nil!36819) Nil!36819)))))

(assert (= (and d!163503 (not res!1071294)) b!1567383))

(assert (= (and b!1567383 res!1071296) b!1567382))

(assert (= (and b!1567383 res!1071295) b!1567386))

(assert (= (and b!1567386 c!144441) b!1567384))

(assert (= (and b!1567386 (not c!144441)) b!1567385))

(assert (= (or b!1567384 b!1567385) bm!71933))

(assert (=> b!1567382 m!1442267))

(assert (=> b!1567382 m!1442267))

(declare-fun m!1442287 () Bool)

(assert (=> b!1567382 m!1442287))

(assert (=> b!1567383 m!1442267))

(assert (=> b!1567383 m!1442267))

(assert (=> b!1567383 m!1442275))

(assert (=> b!1567386 m!1442267))

(assert (=> b!1567386 m!1442267))

(assert (=> b!1567386 m!1442275))

(assert (=> bm!71933 m!1442267))

(declare-fun m!1442289 () Bool)

(assert (=> bm!71933 m!1442289))

(assert (=> b!1567272 d!163503))

(declare-fun b!1567393 () Bool)

(declare-fun e!873743 () Bool)

(assert (=> b!1567393 (= e!873743 tp_is_empty!39003)))

(declare-fun condMapEmpty!59913 () Bool)

(declare-fun mapDefault!59913 () ValueCell!18471)

(assert (=> mapNonEmpty!59907 (= condMapEmpty!59913 (= mapRest!59907 ((as const (Array (_ BitVec 32) ValueCell!18471)) mapDefault!59913)))))

(declare-fun e!873744 () Bool)

(declare-fun mapRes!59913 () Bool)

(assert (=> mapNonEmpty!59907 (= tp!113992 (and e!873744 mapRes!59913))))

(declare-fun mapNonEmpty!59913 () Bool)

(declare-fun tp!114001 () Bool)

(assert (=> mapNonEmpty!59913 (= mapRes!59913 (and tp!114001 e!873743))))

(declare-fun mapRest!59913 () (Array (_ BitVec 32) ValueCell!18471))

(declare-fun mapKey!59913 () (_ BitVec 32))

(declare-fun mapValue!59913 () ValueCell!18471)

(assert (=> mapNonEmpty!59913 (= mapRest!59907 (store mapRest!59913 mapKey!59913 mapValue!59913))))

(declare-fun b!1567394 () Bool)

(assert (=> b!1567394 (= e!873744 tp_is_empty!39003)))

(declare-fun mapIsEmpty!59913 () Bool)

(assert (=> mapIsEmpty!59913 mapRes!59913))

(assert (= (and mapNonEmpty!59907 condMapEmpty!59913) mapIsEmpty!59913))

(assert (= (and mapNonEmpty!59907 (not condMapEmpty!59913)) mapNonEmpty!59913))

(assert (= (and mapNonEmpty!59913 ((_ is ValueCellFull!18471) mapValue!59913)) b!1567393))

(assert (= (and mapNonEmpty!59907 ((_ is ValueCellFull!18471) mapDefault!59913)) b!1567394))

(declare-fun m!1442291 () Bool)

(assert (=> mapNonEmpty!59913 m!1442291))

(declare-fun b_lambda!25053 () Bool)

(assert (= b_lambda!25051 (or (and start!134144 b_free!32223) b_lambda!25053)))

(declare-fun b_lambda!25055 () Bool)

(assert (= b_lambda!25049 (or (and start!134144 b_free!32223) b_lambda!25055)))

(check-sat (not b_lambda!25053) (not b_next!32223) (not bm!71930) (not mapNonEmpty!59913) (not b!1567367) (not b!1567346) b_and!51887 (not b!1567354) (not b!1567383) (not d!163489) (not bm!71927) (not b_lambda!25055) (not b!1567371) (not b!1567382) (not b!1567318) (not b!1567369) (not b!1567316) (not b!1567386) (not b!1567348) (not b!1567347) (not d!163487) (not b!1567352) (not b!1567350) (not b!1567344) (not d!163493) (not b!1567366) (not b!1567343) (not bm!71933) tp_is_empty!39003)
(check-sat b_and!51887 (not b_next!32223))
