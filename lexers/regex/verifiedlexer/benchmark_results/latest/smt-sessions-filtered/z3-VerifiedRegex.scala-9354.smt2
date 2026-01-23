; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496924 () Bool)

(assert start!496924)

(declare-fun b!4808131 () Bool)

(declare-fun b_free!130011 () Bool)

(declare-fun b_next!130801 () Bool)

(assert (=> b!4808131 (= b_free!130011 (not b_next!130801))))

(declare-fun tp!1359754 () Bool)

(declare-fun b_and!341781 () Bool)

(assert (=> b!4808131 (= tp!1359754 b_and!341781)))

(declare-fun b!4808120 () Bool)

(declare-fun b_free!130013 () Bool)

(declare-fun b_next!130803 () Bool)

(assert (=> b!4808120 (= b_free!130013 (not b_next!130803))))

(declare-fun tp!1359753 () Bool)

(declare-fun b_and!341783 () Bool)

(assert (=> b!4808120 (= tp!1359753 b_and!341783)))

(declare-fun b!4808119 () Bool)

(assert (=> b!4808119 false))

(declare-datatypes ((Unit!141374 0))(
  ( (Unit!141375) )
))
(declare-fun lt!1960954 () Unit!141374)

(declare-datatypes ((K!16059 0))(
  ( (K!16060 (val!21153 Int)) )
))
(declare-datatypes ((V!16305 0))(
  ( (V!16306 (val!21154 Int)) )
))
(declare-datatypes ((tuple2!57260 0))(
  ( (tuple2!57261 (_1!31924 K!16059) (_2!31924 V!16305)) )
))
(declare-datatypes ((List!54584 0))(
  ( (Nil!54460) (Cons!54460 (h!60892 tuple2!57260) (t!362050 List!54584)) )
))
(declare-datatypes ((tuple2!57262 0))(
  ( (tuple2!57263 (_1!31925 (_ BitVec 64)) (_2!31925 List!54584)) )
))
(declare-datatypes ((List!54585 0))(
  ( (Nil!54461) (Cons!54461 (h!60893 tuple2!57262) (t!362051 List!54585)) )
))
(declare-datatypes ((ListLongMap!5537 0))(
  ( (ListLongMap!5538 (toList!7085 List!54585)) )
))
(declare-fun lt!1960957 () ListLongMap!5537)

(declare-fun lt!1960956 () (_ BitVec 64))

(declare-fun lt!1960952 () List!54584)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!973 (List!54585 (_ BitVec 64) List!54584) Unit!141374)

(assert (=> b!4808119 (= lt!1960954 (lemmaGetValueByKeyImpliesContainsTuple!973 (toList!7085 lt!1960957) lt!1960956 lt!1960952))))

(declare-datatypes ((Option!13258 0))(
  ( (None!13257) (Some!13257 (v!48709 List!54584)) )
))
(declare-fun isDefined!10397 (Option!13258) Bool)

(declare-fun getValueByKey!2455 (List!54585 (_ BitVec 64)) Option!13258)

(assert (=> b!4808119 (isDefined!10397 (getValueByKey!2455 (toList!7085 lt!1960957) lt!1960956))))

(declare-fun lt!1960955 () Unit!141374)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2243 (List!54585 (_ BitVec 64)) Unit!141374)

(assert (=> b!4808119 (= lt!1960955 (lemmaContainsKeyImpliesGetValueByKeyDefined!2243 (toList!7085 lt!1960957) lt!1960956))))

(declare-fun containsKey!4110 (List!54585 (_ BitVec 64)) Bool)

(assert (=> b!4808119 (containsKey!4110 (toList!7085 lt!1960957) lt!1960956)))

(declare-fun lt!1960950 () Unit!141374)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!244 (List!54585 (_ BitVec 64)) Unit!141374)

(assert (=> b!4808119 (= lt!1960950 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!244 (toList!7085 lt!1960957) lt!1960956))))

(declare-fun e!3003263 () Unit!141374)

(declare-fun Unit!141376 () Unit!141374)

(assert (=> b!4808119 (= e!3003263 Unit!141376)))

(declare-fun e!3003260 () Bool)

(declare-fun e!3003269 () Bool)

(assert (=> b!4808120 (= e!3003260 (and e!3003269 tp!1359753))))

(declare-fun mapIsEmpty!22199 () Bool)

(declare-fun mapRes!22199 () Bool)

(assert (=> mapIsEmpty!22199 mapRes!22199))

(declare-fun b!4808121 () Bool)

(declare-fun e!3003267 () Bool)

(declare-fun e!3003261 () Bool)

(assert (=> b!4808121 (= e!3003267 e!3003261)))

(declare-fun b!4808123 () Bool)

(declare-fun e!3003264 () Unit!141374)

(declare-fun Unit!141377 () Unit!141374)

(assert (=> b!4808123 (= e!3003264 Unit!141377)))

(declare-fun b!4808124 () Bool)

(declare-fun e!3003266 () Bool)

(declare-datatypes ((array!18428 0))(
  ( (array!18429 (arr!8219 (Array (_ BitVec 32) (_ BitVec 64))) (size!36465 (_ BitVec 32))) )
))
(declare-datatypes ((array!18430 0))(
  ( (array!18431 (arr!8220 (Array (_ BitVec 32) List!54584)) (size!36466 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10034 0))(
  ( (LongMapFixedSize!10035 (defaultEntry!5435 Int) (mask!14996 (_ BitVec 32)) (extraKeys!5292 (_ BitVec 32)) (zeroValue!5305 List!54584) (minValue!5305 List!54584) (_size!10059 (_ BitVec 32)) (_keys!5359 array!18428) (_values!5330 array!18430) (_vacant!5082 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19833 0))(
  ( (Cell!19834 (v!48710 LongMapFixedSize!10034)) )
))
(declare-datatypes ((MutLongMap!5017 0))(
  ( (LongMap!5017 (underlying!10241 Cell!19833)) (MutLongMapExt!5016 (__x!33149 Int)) )
))
(declare-datatypes ((Hashable!7028 0))(
  ( (HashableExt!7027 (__x!33150 Int)) )
))
(declare-datatypes ((Cell!19835 0))(
  ( (Cell!19836 (v!48711 MutLongMap!5017)) )
))
(declare-datatypes ((MutableMap!4901 0))(
  ( (MutableMapExt!4900 (__x!33151 Int)) (HashMap!4901 (underlying!10242 Cell!19835) (hashF!13296 Hashable!7028) (_size!10060 (_ BitVec 32)) (defaultValue!5072 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4901)

(declare-fun valid!4033 (MutLongMap!5017) Bool)

(assert (=> b!4808124 (= e!3003266 (not (valid!4033 (v!48711 (underlying!10242 thiss!41921)))))))

(declare-fun b!4808125 () Bool)

(declare-fun res!2045424 () Bool)

(assert (=> b!4808125 (=> (not res!2045424) (not e!3003266))))

(get-info :version)

(assert (=> b!4808125 (= res!2045424 ((_ is LongMap!5017) (v!48711 (underlying!10242 thiss!41921))))))

(declare-fun b!4808126 () Bool)

(declare-fun e!3003262 () Bool)

(assert (=> b!4808126 (= e!3003261 e!3003262)))

(declare-fun lt!1960948 () tuple2!57262)

(declare-fun b!4808127 () Bool)

(declare-fun lambda!233568 () Int)

(declare-fun forallContained!4246 (List!54585 Int tuple2!57262) Unit!141374)

(assert (=> b!4808127 (= e!3003264 (forallContained!4246 (toList!7085 lt!1960957) lambda!233568 lt!1960948))))

(declare-fun map!12361 (MutLongMap!5017) ListLongMap!5537)

(assert (=> b!4808127 (= lt!1960957 (map!12361 (v!48711 (underlying!10242 thiss!41921))))))

(declare-fun apply!13101 (MutLongMap!5017 (_ BitVec 64)) List!54584)

(assert (=> b!4808127 (= lt!1960952 (apply!13101 (v!48711 (underlying!10242 thiss!41921)) lt!1960956))))

(assert (=> b!4808127 (= lt!1960948 (tuple2!57263 lt!1960956 lt!1960952))))

(declare-fun c!819477 () Bool)

(declare-fun contains!18138 (List!54585 tuple2!57262) Bool)

(assert (=> b!4808127 (= c!819477 (not (contains!18138 (toList!7085 lt!1960957) lt!1960948)))))

(declare-fun lt!1960951 () Unit!141374)

(assert (=> b!4808127 (= lt!1960951 e!3003263)))

(declare-fun b!4808128 () Bool)

(declare-fun Unit!141378 () Unit!141374)

(assert (=> b!4808128 (= e!3003263 Unit!141378)))

(declare-fun b!4808129 () Bool)

(declare-fun lt!1960949 () MutLongMap!5017)

(assert (=> b!4808129 (= e!3003269 (and e!3003267 ((_ is LongMap!5017) lt!1960949)))))

(assert (=> b!4808129 (= lt!1960949 (v!48711 (underlying!10242 thiss!41921)))))

(declare-fun b!4808130 () Bool)

(declare-fun e!3003265 () Bool)

(declare-fun tp!1359755 () Bool)

(assert (=> b!4808130 (= e!3003265 (and tp!1359755 mapRes!22199))))

(declare-fun condMapEmpty!22199 () Bool)

(declare-fun mapDefault!22199 () List!54584)

(assert (=> b!4808130 (= condMapEmpty!22199 (= (arr!8220 (_values!5330 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54584)) mapDefault!22199)))))

(declare-fun tp!1359756 () Bool)

(declare-fun tp!1359757 () Bool)

(declare-fun array_inv!5925 (array!18428) Bool)

(declare-fun array_inv!5926 (array!18430) Bool)

(assert (=> b!4808131 (= e!3003262 (and tp!1359754 tp!1359757 tp!1359756 (array_inv!5925 (_keys!5359 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921)))))) (array_inv!5926 (_values!5330 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921)))))) e!3003265))))

(declare-fun mapNonEmpty!22199 () Bool)

(declare-fun tp!1359758 () Bool)

(declare-fun tp!1359752 () Bool)

(assert (=> mapNonEmpty!22199 (= mapRes!22199 (and tp!1359758 tp!1359752))))

(declare-fun mapRest!22199 () (Array (_ BitVec 32) List!54584))

(declare-fun mapKey!22199 () (_ BitVec 32))

(declare-fun mapValue!22199 () List!54584)

(assert (=> mapNonEmpty!22199 (= (arr!8220 (_values!5330 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921)))))) (store mapRest!22199 mapKey!22199 mapValue!22199))))

(declare-fun b!4808132 () Bool)

(declare-fun res!2045425 () Bool)

(declare-fun e!3003270 () Bool)

(assert (=> b!4808132 (=> (not res!2045425) (not e!3003270))))

(declare-fun valid!4034 (MutableMap!4901) Bool)

(assert (=> b!4808132 (= res!2045425 (valid!4034 thiss!41921))))

(declare-fun res!2045426 () Bool)

(assert (=> start!496924 (=> (not res!2045426) (not e!3003270))))

(assert (=> start!496924 (= res!2045426 ((_ is HashMap!4901) thiss!41921))))

(assert (=> start!496924 e!3003270))

(assert (=> start!496924 e!3003260))

(declare-fun tp_is_empty!33895 () Bool)

(assert (=> start!496924 tp_is_empty!33895))

(declare-fun b!4808122 () Bool)

(assert (=> b!4808122 (= e!3003270 e!3003266)))

(declare-fun res!2045423 () Bool)

(assert (=> b!4808122 (=> (not res!2045423) (not e!3003266))))

(declare-fun key!1652 () K!16059)

(declare-datatypes ((ListMap!6527 0))(
  ( (ListMap!6528 (toList!7086 List!54584)) )
))
(declare-fun contains!18139 (ListMap!6527 K!16059) Bool)

(declare-fun extractMap!2515 (List!54585) ListMap!6527)

(assert (=> b!4808122 (= res!2045423 (not (contains!18139 (extractMap!2515 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921))))) key!1652)))))

(declare-fun lt!1960953 () Unit!141374)

(assert (=> b!4808122 (= lt!1960953 e!3003264)))

(declare-fun c!819476 () Bool)

(declare-fun contains!18140 (MutLongMap!5017 (_ BitVec 64)) Bool)

(assert (=> b!4808122 (= c!819476 (contains!18140 (v!48711 (underlying!10242 thiss!41921)) lt!1960956))))

(declare-fun hash!5097 (Hashable!7028 K!16059) (_ BitVec 64))

(assert (=> b!4808122 (= lt!1960956 (hash!5097 (hashF!13296 thiss!41921) key!1652))))

(assert (= (and start!496924 res!2045426) b!4808132))

(assert (= (and b!4808132 res!2045425) b!4808122))

(assert (= (and b!4808122 c!819476) b!4808127))

(assert (= (and b!4808122 (not c!819476)) b!4808123))

(assert (= (and b!4808127 c!819477) b!4808119))

(assert (= (and b!4808127 (not c!819477)) b!4808128))

(assert (= (and b!4808122 res!2045423) b!4808125))

(assert (= (and b!4808125 res!2045424) b!4808124))

(assert (= (and b!4808130 condMapEmpty!22199) mapIsEmpty!22199))

(assert (= (and b!4808130 (not condMapEmpty!22199)) mapNonEmpty!22199))

(assert (= b!4808131 b!4808130))

(assert (= b!4808126 b!4808131))

(assert (= b!4808121 b!4808126))

(assert (= (and b!4808129 ((_ is LongMap!5017) (v!48711 (underlying!10242 thiss!41921)))) b!4808121))

(assert (= b!4808120 b!4808129))

(assert (= (and start!496924 ((_ is HashMap!4901) thiss!41921)) b!4808120))

(declare-fun m!5794244 () Bool)

(assert (=> b!4808132 m!5794244))

(declare-fun m!5794246 () Bool)

(assert (=> b!4808131 m!5794246))

(declare-fun m!5794248 () Bool)

(assert (=> b!4808131 m!5794248))

(declare-fun m!5794250 () Bool)

(assert (=> b!4808124 m!5794250))

(declare-fun m!5794252 () Bool)

(assert (=> b!4808119 m!5794252))

(declare-fun m!5794254 () Bool)

(assert (=> b!4808119 m!5794254))

(declare-fun m!5794256 () Bool)

(assert (=> b!4808119 m!5794256))

(assert (=> b!4808119 m!5794256))

(declare-fun m!5794258 () Bool)

(assert (=> b!4808119 m!5794258))

(declare-fun m!5794260 () Bool)

(assert (=> b!4808119 m!5794260))

(declare-fun m!5794262 () Bool)

(assert (=> b!4808119 m!5794262))

(declare-fun m!5794264 () Bool)

(assert (=> b!4808127 m!5794264))

(declare-fun m!5794266 () Bool)

(assert (=> b!4808127 m!5794266))

(declare-fun m!5794268 () Bool)

(assert (=> b!4808127 m!5794268))

(declare-fun m!5794270 () Bool)

(assert (=> b!4808127 m!5794270))

(declare-fun m!5794272 () Bool)

(assert (=> mapNonEmpty!22199 m!5794272))

(declare-fun m!5794274 () Bool)

(assert (=> b!4808122 m!5794274))

(assert (=> b!4808122 m!5794274))

(declare-fun m!5794276 () Bool)

(assert (=> b!4808122 m!5794276))

(declare-fun m!5794278 () Bool)

(assert (=> b!4808122 m!5794278))

(declare-fun m!5794280 () Bool)

(assert (=> b!4808122 m!5794280))

(assert (=> b!4808122 m!5794266))

(check-sat (not b!4808127) (not b!4808132) (not b!4808124) (not b!4808130) (not b!4808131) (not b_next!130801) b_and!341783 (not b!4808119) (not mapNonEmpty!22199) (not b!4808122) b_and!341781 (not b_next!130803) tp_is_empty!33895)
(check-sat b_and!341781 b_and!341783 (not b_next!130801) (not b_next!130803))
(get-model)

(declare-fun d!1539995 () Bool)

(assert (=> d!1539995 (containsKey!4110 (toList!7085 lt!1960957) lt!1960956)))

(declare-fun lt!1960960 () Unit!141374)

(declare-fun choose!34820 (List!54585 (_ BitVec 64)) Unit!141374)

(assert (=> d!1539995 (= lt!1960960 (choose!34820 (toList!7085 lt!1960957) lt!1960956))))

(declare-fun e!3003273 () Bool)

(assert (=> d!1539995 e!3003273))

(declare-fun res!2045429 () Bool)

(assert (=> d!1539995 (=> (not res!2045429) (not e!3003273))))

(declare-fun isStrictlySorted!922 (List!54585) Bool)

(assert (=> d!1539995 (= res!2045429 (isStrictlySorted!922 (toList!7085 lt!1960957)))))

(assert (=> d!1539995 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!244 (toList!7085 lt!1960957) lt!1960956) lt!1960960)))

(declare-fun b!4808135 () Bool)

(assert (=> b!4808135 (= e!3003273 (isDefined!10397 (getValueByKey!2455 (toList!7085 lt!1960957) lt!1960956)))))

(assert (= (and d!1539995 res!2045429) b!4808135))

(assert (=> d!1539995 m!5794262))

(declare-fun m!5794282 () Bool)

(assert (=> d!1539995 m!5794282))

(declare-fun m!5794284 () Bool)

(assert (=> d!1539995 m!5794284))

(assert (=> b!4808135 m!5794256))

(assert (=> b!4808135 m!5794256))

(assert (=> b!4808135 m!5794258))

(assert (=> b!4808119 d!1539995))

(declare-fun d!1539997 () Bool)

(assert (=> d!1539997 (isDefined!10397 (getValueByKey!2455 (toList!7085 lt!1960957) lt!1960956))))

(declare-fun lt!1960963 () Unit!141374)

(declare-fun choose!34821 (List!54585 (_ BitVec 64)) Unit!141374)

(assert (=> d!1539997 (= lt!1960963 (choose!34821 (toList!7085 lt!1960957) lt!1960956))))

(declare-fun e!3003276 () Bool)

(assert (=> d!1539997 e!3003276))

(declare-fun res!2045432 () Bool)

(assert (=> d!1539997 (=> (not res!2045432) (not e!3003276))))

(assert (=> d!1539997 (= res!2045432 (isStrictlySorted!922 (toList!7085 lt!1960957)))))

(assert (=> d!1539997 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2243 (toList!7085 lt!1960957) lt!1960956) lt!1960963)))

(declare-fun b!4808138 () Bool)

(assert (=> b!4808138 (= e!3003276 (containsKey!4110 (toList!7085 lt!1960957) lt!1960956))))

(assert (= (and d!1539997 res!2045432) b!4808138))

(assert (=> d!1539997 m!5794256))

(assert (=> d!1539997 m!5794256))

(assert (=> d!1539997 m!5794258))

(declare-fun m!5794286 () Bool)

(assert (=> d!1539997 m!5794286))

(assert (=> d!1539997 m!5794284))

(assert (=> b!4808138 m!5794262))

(assert (=> b!4808119 d!1539997))

(declare-fun b!4808150 () Bool)

(declare-fun e!3003282 () Option!13258)

(assert (=> b!4808150 (= e!3003282 None!13257)))

(declare-fun b!4808148 () Bool)

(declare-fun e!3003281 () Option!13258)

(assert (=> b!4808148 (= e!3003281 e!3003282)))

(declare-fun c!819483 () Bool)

(assert (=> b!4808148 (= c!819483 (and ((_ is Cons!54461) (toList!7085 lt!1960957)) (not (= (_1!31925 (h!60893 (toList!7085 lt!1960957))) lt!1960956))))))

(declare-fun d!1539999 () Bool)

(declare-fun c!819482 () Bool)

(assert (=> d!1539999 (= c!819482 (and ((_ is Cons!54461) (toList!7085 lt!1960957)) (= (_1!31925 (h!60893 (toList!7085 lt!1960957))) lt!1960956)))))

(assert (=> d!1539999 (= (getValueByKey!2455 (toList!7085 lt!1960957) lt!1960956) e!3003281)))

(declare-fun b!4808149 () Bool)

(assert (=> b!4808149 (= e!3003282 (getValueByKey!2455 (t!362051 (toList!7085 lt!1960957)) lt!1960956))))

(declare-fun b!4808147 () Bool)

(assert (=> b!4808147 (= e!3003281 (Some!13257 (_2!31925 (h!60893 (toList!7085 lt!1960957)))))))

(assert (= (and d!1539999 c!819482) b!4808147))

(assert (= (and d!1539999 (not c!819482)) b!4808148))

(assert (= (and b!4808148 c!819483) b!4808149))

(assert (= (and b!4808148 (not c!819483)) b!4808150))

(declare-fun m!5794288 () Bool)

(assert (=> b!4808149 m!5794288))

(assert (=> b!4808119 d!1539999))

(declare-fun d!1540001 () Bool)

(assert (=> d!1540001 (contains!18138 (toList!7085 lt!1960957) (tuple2!57263 lt!1960956 lt!1960952))))

(declare-fun lt!1960966 () Unit!141374)

(declare-fun choose!34822 (List!54585 (_ BitVec 64) List!54584) Unit!141374)

(assert (=> d!1540001 (= lt!1960966 (choose!34822 (toList!7085 lt!1960957) lt!1960956 lt!1960952))))

(declare-fun e!3003285 () Bool)

(assert (=> d!1540001 e!3003285))

(declare-fun res!2045435 () Bool)

(assert (=> d!1540001 (=> (not res!2045435) (not e!3003285))))

(assert (=> d!1540001 (= res!2045435 (isStrictlySorted!922 (toList!7085 lt!1960957)))))

(assert (=> d!1540001 (= (lemmaGetValueByKeyImpliesContainsTuple!973 (toList!7085 lt!1960957) lt!1960956 lt!1960952) lt!1960966)))

(declare-fun b!4808153 () Bool)

(assert (=> b!4808153 (= e!3003285 (= (getValueByKey!2455 (toList!7085 lt!1960957) lt!1960956) (Some!13257 lt!1960952)))))

(assert (= (and d!1540001 res!2045435) b!4808153))

(declare-fun m!5794290 () Bool)

(assert (=> d!1540001 m!5794290))

(declare-fun m!5794292 () Bool)

(assert (=> d!1540001 m!5794292))

(assert (=> d!1540001 m!5794284))

(assert (=> b!4808153 m!5794256))

(assert (=> b!4808119 d!1540001))

(declare-fun d!1540003 () Bool)

(declare-fun isEmpty!29540 (Option!13258) Bool)

(assert (=> d!1540003 (= (isDefined!10397 (getValueByKey!2455 (toList!7085 lt!1960957) lt!1960956)) (not (isEmpty!29540 (getValueByKey!2455 (toList!7085 lt!1960957) lt!1960956))))))

(declare-fun bs!1159959 () Bool)

(assert (= bs!1159959 d!1540003))

(assert (=> bs!1159959 m!5794256))

(declare-fun m!5794294 () Bool)

(assert (=> bs!1159959 m!5794294))

(assert (=> b!4808119 d!1540003))

(declare-fun d!1540005 () Bool)

(declare-fun res!2045440 () Bool)

(declare-fun e!3003290 () Bool)

(assert (=> d!1540005 (=> res!2045440 e!3003290)))

(assert (=> d!1540005 (= res!2045440 (and ((_ is Cons!54461) (toList!7085 lt!1960957)) (= (_1!31925 (h!60893 (toList!7085 lt!1960957))) lt!1960956)))))

(assert (=> d!1540005 (= (containsKey!4110 (toList!7085 lt!1960957) lt!1960956) e!3003290)))

(declare-fun b!4808158 () Bool)

(declare-fun e!3003291 () Bool)

(assert (=> b!4808158 (= e!3003290 e!3003291)))

(declare-fun res!2045441 () Bool)

(assert (=> b!4808158 (=> (not res!2045441) (not e!3003291))))

(assert (=> b!4808158 (= res!2045441 (and (or (not ((_ is Cons!54461) (toList!7085 lt!1960957))) (bvsle (_1!31925 (h!60893 (toList!7085 lt!1960957))) lt!1960956)) ((_ is Cons!54461) (toList!7085 lt!1960957)) (bvslt (_1!31925 (h!60893 (toList!7085 lt!1960957))) lt!1960956)))))

(declare-fun b!4808159 () Bool)

(assert (=> b!4808159 (= e!3003291 (containsKey!4110 (t!362051 (toList!7085 lt!1960957)) lt!1960956))))

(assert (= (and d!1540005 (not res!2045440)) b!4808158))

(assert (= (and b!4808158 res!2045441) b!4808159))

(declare-fun m!5794296 () Bool)

(assert (=> b!4808159 m!5794296))

(assert (=> b!4808119 d!1540005))

(declare-fun d!1540007 () Bool)

(declare-fun dynLambda!22122 (Int tuple2!57262) Bool)

(assert (=> d!1540007 (dynLambda!22122 lambda!233568 lt!1960948)))

(declare-fun lt!1960969 () Unit!141374)

(declare-fun choose!34823 (List!54585 Int tuple2!57262) Unit!141374)

(assert (=> d!1540007 (= lt!1960969 (choose!34823 (toList!7085 lt!1960957) lambda!233568 lt!1960948))))

(declare-fun e!3003294 () Bool)

(assert (=> d!1540007 e!3003294))

(declare-fun res!2045444 () Bool)

(assert (=> d!1540007 (=> (not res!2045444) (not e!3003294))))

(declare-fun forall!12381 (List!54585 Int) Bool)

(assert (=> d!1540007 (= res!2045444 (forall!12381 (toList!7085 lt!1960957) lambda!233568))))

(assert (=> d!1540007 (= (forallContained!4246 (toList!7085 lt!1960957) lambda!233568 lt!1960948) lt!1960969)))

(declare-fun b!4808162 () Bool)

(assert (=> b!4808162 (= e!3003294 (contains!18138 (toList!7085 lt!1960957) lt!1960948))))

(assert (= (and d!1540007 res!2045444) b!4808162))

(declare-fun b_lambda!188157 () Bool)

(assert (=> (not b_lambda!188157) (not d!1540007)))

(declare-fun m!5794298 () Bool)

(assert (=> d!1540007 m!5794298))

(declare-fun m!5794300 () Bool)

(assert (=> d!1540007 m!5794300))

(declare-fun m!5794302 () Bool)

(assert (=> d!1540007 m!5794302))

(assert (=> b!4808162 m!5794270))

(assert (=> b!4808127 d!1540007))

(declare-fun d!1540009 () Bool)

(declare-fun map!12362 (LongMapFixedSize!10034) ListLongMap!5537)

(assert (=> d!1540009 (= (map!12361 (v!48711 (underlying!10242 thiss!41921))) (map!12362 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921))))))))

(declare-fun bs!1159960 () Bool)

(assert (= bs!1159960 d!1540009))

(declare-fun m!5794304 () Bool)

(assert (=> bs!1159960 m!5794304))

(assert (=> b!4808127 d!1540009))

(declare-fun d!1540011 () Bool)

(declare-fun e!3003297 () Bool)

(assert (=> d!1540011 e!3003297))

(declare-fun c!819486 () Bool)

(assert (=> d!1540011 (= c!819486 (contains!18140 (v!48711 (underlying!10242 thiss!41921)) lt!1960956))))

(declare-fun lt!1960972 () List!54584)

(declare-fun apply!13102 (LongMapFixedSize!10034 (_ BitVec 64)) List!54584)

(assert (=> d!1540011 (= lt!1960972 (apply!13102 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921)))) lt!1960956))))

(assert (=> d!1540011 (valid!4033 (v!48711 (underlying!10242 thiss!41921)))))

(assert (=> d!1540011 (= (apply!13101 (v!48711 (underlying!10242 thiss!41921)) lt!1960956) lt!1960972)))

(declare-fun b!4808167 () Bool)

(declare-fun get!18629 (Option!13258) List!54584)

(assert (=> b!4808167 (= e!3003297 (= lt!1960972 (get!18629 (getValueByKey!2455 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921)))) lt!1960956))))))

(declare-fun b!4808168 () Bool)

(declare-fun dynLambda!22123 (Int (_ BitVec 64)) List!54584)

(assert (=> b!4808168 (= e!3003297 (= lt!1960972 (dynLambda!22123 (defaultEntry!5435 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921))))) lt!1960956)))))

(assert (=> b!4808168 ((_ is LongMap!5017) (v!48711 (underlying!10242 thiss!41921)))))

(assert (= (and d!1540011 c!819486) b!4808167))

(assert (= (and d!1540011 (not c!819486)) b!4808168))

(declare-fun b_lambda!188159 () Bool)

(assert (=> (not b_lambda!188159) (not b!4808168)))

(declare-fun t!362053 () Bool)

(declare-fun tb!257519 () Bool)

(assert (=> (and b!4808131 (= (defaultEntry!5435 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921))))) (defaultEntry!5435 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921)))))) t!362053) tb!257519))

(assert (=> b!4808168 t!362053))

(declare-fun result!319570 () Bool)

(declare-fun b_and!341785 () Bool)

(assert (= b_and!341781 (and (=> t!362053 result!319570) b_and!341785)))

(assert (=> d!1540011 m!5794278))

(declare-fun m!5794306 () Bool)

(assert (=> d!1540011 m!5794306))

(assert (=> d!1540011 m!5794250))

(assert (=> b!4808167 m!5794266))

(declare-fun m!5794308 () Bool)

(assert (=> b!4808167 m!5794308))

(assert (=> b!4808167 m!5794308))

(declare-fun m!5794310 () Bool)

(assert (=> b!4808167 m!5794310))

(declare-fun m!5794312 () Bool)

(assert (=> b!4808168 m!5794312))

(assert (=> b!4808127 d!1540011))

(declare-fun d!1540013 () Bool)

(declare-fun lt!1960975 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9769 (List!54585) (InoxSet tuple2!57262))

(assert (=> d!1540013 (= lt!1960975 (select (content!9769 (toList!7085 lt!1960957)) lt!1960948))))

(declare-fun e!3003303 () Bool)

(assert (=> d!1540013 (= lt!1960975 e!3003303)))

(declare-fun res!2045450 () Bool)

(assert (=> d!1540013 (=> (not res!2045450) (not e!3003303))))

(assert (=> d!1540013 (= res!2045450 ((_ is Cons!54461) (toList!7085 lt!1960957)))))

(assert (=> d!1540013 (= (contains!18138 (toList!7085 lt!1960957) lt!1960948) lt!1960975)))

(declare-fun b!4808173 () Bool)

(declare-fun e!3003302 () Bool)

(assert (=> b!4808173 (= e!3003303 e!3003302)))

(declare-fun res!2045449 () Bool)

(assert (=> b!4808173 (=> res!2045449 e!3003302)))

(assert (=> b!4808173 (= res!2045449 (= (h!60893 (toList!7085 lt!1960957)) lt!1960948))))

(declare-fun b!4808174 () Bool)

(assert (=> b!4808174 (= e!3003302 (contains!18138 (t!362051 (toList!7085 lt!1960957)) lt!1960948))))

(assert (= (and d!1540013 res!2045450) b!4808173))

(assert (= (and b!4808173 (not res!2045449)) b!4808174))

(declare-fun m!5794314 () Bool)

(assert (=> d!1540013 m!5794314))

(declare-fun m!5794316 () Bool)

(assert (=> d!1540013 m!5794316))

(declare-fun m!5794318 () Bool)

(assert (=> b!4808174 m!5794318))

(assert (=> b!4808127 d!1540013))

(declare-fun bs!1159961 () Bool)

(declare-fun b!4808179 () Bool)

(assert (= bs!1159961 (and b!4808179 b!4808127)))

(declare-fun lambda!233571 () Int)

(assert (=> bs!1159961 (= lambda!233571 lambda!233568)))

(declare-fun d!1540015 () Bool)

(declare-fun res!2045455 () Bool)

(declare-fun e!3003306 () Bool)

(assert (=> d!1540015 (=> (not res!2045455) (not e!3003306))))

(assert (=> d!1540015 (= res!2045455 (valid!4033 (v!48711 (underlying!10242 thiss!41921))))))

(assert (=> d!1540015 (= (valid!4034 thiss!41921) e!3003306)))

(declare-fun res!2045456 () Bool)

(assert (=> b!4808179 (=> (not res!2045456) (not e!3003306))))

(assert (=> b!4808179 (= res!2045456 (forall!12381 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921)))) lambda!233571))))

(declare-fun b!4808180 () Bool)

(declare-fun allKeysSameHashInMap!2397 (ListLongMap!5537 Hashable!7028) Bool)

(assert (=> b!4808180 (= e!3003306 (allKeysSameHashInMap!2397 (map!12361 (v!48711 (underlying!10242 thiss!41921))) (hashF!13296 thiss!41921)))))

(assert (= (and d!1540015 res!2045455) b!4808179))

(assert (= (and b!4808179 res!2045456) b!4808180))

(assert (=> d!1540015 m!5794250))

(assert (=> b!4808179 m!5794266))

(declare-fun m!5794320 () Bool)

(assert (=> b!4808179 m!5794320))

(assert (=> b!4808180 m!5794266))

(assert (=> b!4808180 m!5794266))

(declare-fun m!5794322 () Bool)

(assert (=> b!4808180 m!5794322))

(assert (=> b!4808132 d!1540015))

(declare-fun bs!1159962 () Bool)

(declare-fun d!1540017 () Bool)

(assert (= bs!1159962 (and d!1540017 b!4808127)))

(declare-fun lambda!233574 () Int)

(assert (=> bs!1159962 (= lambda!233574 lambda!233568)))

(declare-fun bs!1159963 () Bool)

(assert (= bs!1159963 (and d!1540017 b!4808179)))

(assert (=> bs!1159963 (= lambda!233574 lambda!233571)))

(declare-fun lt!1960978 () ListMap!6527)

(declare-fun invariantList!1769 (List!54584) Bool)

(assert (=> d!1540017 (invariantList!1769 (toList!7086 lt!1960978))))

(declare-fun e!3003309 () ListMap!6527)

(assert (=> d!1540017 (= lt!1960978 e!3003309)))

(declare-fun c!819489 () Bool)

(assert (=> d!1540017 (= c!819489 ((_ is Cons!54461) (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921))))))))

(assert (=> d!1540017 (forall!12381 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921)))) lambda!233574)))

(assert (=> d!1540017 (= (extractMap!2515 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921))))) lt!1960978)))

(declare-fun b!4808185 () Bool)

(declare-fun addToMapMapFromBucket!1746 (List!54584 ListMap!6527) ListMap!6527)

(assert (=> b!4808185 (= e!3003309 (addToMapMapFromBucket!1746 (_2!31925 (h!60893 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921)))))) (extractMap!2515 (t!362051 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921))))))))))

(declare-fun b!4808186 () Bool)

(assert (=> b!4808186 (= e!3003309 (ListMap!6528 Nil!54460))))

(assert (= (and d!1540017 c!819489) b!4808185))

(assert (= (and d!1540017 (not c!819489)) b!4808186))

(declare-fun m!5794324 () Bool)

(assert (=> d!1540017 m!5794324))

(declare-fun m!5794326 () Bool)

(assert (=> d!1540017 m!5794326))

(declare-fun m!5794328 () Bool)

(assert (=> b!4808185 m!5794328))

(assert (=> b!4808185 m!5794328))

(declare-fun m!5794330 () Bool)

(assert (=> b!4808185 m!5794330))

(assert (=> b!4808122 d!1540017))

(declare-fun d!1540019 () Bool)

(declare-fun hash!5098 (Hashable!7028 K!16059) (_ BitVec 64))

(assert (=> d!1540019 (= (hash!5097 (hashF!13296 thiss!41921) key!1652) (hash!5098 (hashF!13296 thiss!41921) key!1652))))

(declare-fun bs!1159964 () Bool)

(assert (= bs!1159964 d!1540019))

(declare-fun m!5794332 () Bool)

(assert (=> bs!1159964 m!5794332))

(assert (=> b!4808122 d!1540019))

(declare-fun b!4808205 () Bool)

(declare-fun e!3003327 () Bool)

(declare-datatypes ((List!54586 0))(
  ( (Nil!54462) (Cons!54462 (h!60894 K!16059) (t!362054 List!54586)) )
))
(declare-fun contains!18141 (List!54586 K!16059) Bool)

(declare-fun keys!19942 (ListMap!6527) List!54586)

(assert (=> b!4808205 (= e!3003327 (contains!18141 (keys!19942 (extractMap!2515 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921)))))) key!1652))))

(declare-fun b!4808206 () Bool)

(assert (=> b!4808206 false))

(declare-fun lt!1960995 () Unit!141374)

(declare-fun lt!1961000 () Unit!141374)

(assert (=> b!4808206 (= lt!1960995 lt!1961000)))

(declare-fun containsKey!4111 (List!54584 K!16059) Bool)

(assert (=> b!4808206 (containsKey!4111 (toList!7086 (extractMap!2515 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921)))))) key!1652)))

(declare-fun lemmaInGetKeysListThenContainsKey!1115 (List!54584 K!16059) Unit!141374)

(assert (=> b!4808206 (= lt!1961000 (lemmaInGetKeysListThenContainsKey!1115 (toList!7086 (extractMap!2515 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921)))))) key!1652))))

(declare-fun e!3003322 () Unit!141374)

(declare-fun Unit!141379 () Unit!141374)

(assert (=> b!4808206 (= e!3003322 Unit!141379)))

(declare-fun b!4808207 () Bool)

(declare-fun e!3003326 () Bool)

(assert (=> b!4808207 (= e!3003326 e!3003327)))

(declare-fun res!2045464 () Bool)

(assert (=> b!4808207 (=> (not res!2045464) (not e!3003327))))

(declare-datatypes ((Option!13259 0))(
  ( (None!13258) (Some!13258 (v!48714 V!16305)) )
))
(declare-fun isDefined!10398 (Option!13259) Bool)

(declare-fun getValueByKey!2456 (List!54584 K!16059) Option!13259)

(assert (=> b!4808207 (= res!2045464 (isDefined!10398 (getValueByKey!2456 (toList!7086 (extractMap!2515 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921)))))) key!1652)))))

(declare-fun d!1540021 () Bool)

(assert (=> d!1540021 e!3003326))

(declare-fun res!2045463 () Bool)

(assert (=> d!1540021 (=> res!2045463 e!3003326)))

(declare-fun e!3003323 () Bool)

(assert (=> d!1540021 (= res!2045463 e!3003323)))

(declare-fun res!2045465 () Bool)

(assert (=> d!1540021 (=> (not res!2045465) (not e!3003323))))

(declare-fun lt!1960998 () Bool)

(assert (=> d!1540021 (= res!2045465 (not lt!1960998))))

(declare-fun lt!1961002 () Bool)

(assert (=> d!1540021 (= lt!1960998 lt!1961002)))

(declare-fun lt!1960999 () Unit!141374)

(declare-fun e!3003324 () Unit!141374)

(assert (=> d!1540021 (= lt!1960999 e!3003324)))

(declare-fun c!819498 () Bool)

(assert (=> d!1540021 (= c!819498 lt!1961002)))

(assert (=> d!1540021 (= lt!1961002 (containsKey!4111 (toList!7086 (extractMap!2515 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921)))))) key!1652))))

(assert (=> d!1540021 (= (contains!18139 (extractMap!2515 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921))))) key!1652) lt!1960998)))

(declare-fun b!4808208 () Bool)

(declare-fun e!3003325 () List!54586)

(declare-fun getKeysList!1115 (List!54584) List!54586)

(assert (=> b!4808208 (= e!3003325 (getKeysList!1115 (toList!7086 (extractMap!2515 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921))))))))))

(declare-fun b!4808209 () Bool)

(declare-fun lt!1960996 () Unit!141374)

(assert (=> b!4808209 (= e!3003324 lt!1960996)))

(declare-fun lt!1960997 () Unit!141374)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2244 (List!54584 K!16059) Unit!141374)

(assert (=> b!4808209 (= lt!1960997 (lemmaContainsKeyImpliesGetValueByKeyDefined!2244 (toList!7086 (extractMap!2515 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921)))))) key!1652))))

(assert (=> b!4808209 (isDefined!10398 (getValueByKey!2456 (toList!7086 (extractMap!2515 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921)))))) key!1652))))

(declare-fun lt!1961001 () Unit!141374)

(assert (=> b!4808209 (= lt!1961001 lt!1960997)))

(declare-fun lemmaInListThenGetKeysListContains!1110 (List!54584 K!16059) Unit!141374)

(assert (=> b!4808209 (= lt!1960996 (lemmaInListThenGetKeysListContains!1110 (toList!7086 (extractMap!2515 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921)))))) key!1652))))

(declare-fun call!335604 () Bool)

(assert (=> b!4808209 call!335604))

(declare-fun b!4808210 () Bool)

(assert (=> b!4808210 (= e!3003324 e!3003322)))

(declare-fun c!819496 () Bool)

(assert (=> b!4808210 (= c!819496 call!335604)))

(declare-fun b!4808211 () Bool)

(declare-fun Unit!141380 () Unit!141374)

(assert (=> b!4808211 (= e!3003322 Unit!141380)))

(declare-fun b!4808212 () Bool)

(assert (=> b!4808212 (= e!3003323 (not (contains!18141 (keys!19942 (extractMap!2515 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921)))))) key!1652)))))

(declare-fun bm!335599 () Bool)

(assert (=> bm!335599 (= call!335604 (contains!18141 e!3003325 key!1652))))

(declare-fun c!819497 () Bool)

(assert (=> bm!335599 (= c!819497 c!819498)))

(declare-fun b!4808213 () Bool)

(assert (=> b!4808213 (= e!3003325 (keys!19942 (extractMap!2515 (toList!7085 (map!12361 (v!48711 (underlying!10242 thiss!41921)))))))))

(assert (= (and d!1540021 c!819498) b!4808209))

(assert (= (and d!1540021 (not c!819498)) b!4808210))

(assert (= (and b!4808210 c!819496) b!4808206))

(assert (= (and b!4808210 (not c!819496)) b!4808211))

(assert (= (or b!4808209 b!4808210) bm!335599))

(assert (= (and bm!335599 c!819497) b!4808208))

(assert (= (and bm!335599 (not c!819497)) b!4808213))

(assert (= (and d!1540021 res!2045465) b!4808212))

(assert (= (and d!1540021 (not res!2045463)) b!4808207))

(assert (= (and b!4808207 res!2045464) b!4808205))

(declare-fun m!5794334 () Bool)

(assert (=> b!4808207 m!5794334))

(assert (=> b!4808207 m!5794334))

(declare-fun m!5794336 () Bool)

(assert (=> b!4808207 m!5794336))

(declare-fun m!5794338 () Bool)

(assert (=> b!4808209 m!5794338))

(assert (=> b!4808209 m!5794334))

(assert (=> b!4808209 m!5794334))

(assert (=> b!4808209 m!5794336))

(declare-fun m!5794340 () Bool)

(assert (=> b!4808209 m!5794340))

(declare-fun m!5794342 () Bool)

(assert (=> b!4808206 m!5794342))

(declare-fun m!5794344 () Bool)

(assert (=> b!4808206 m!5794344))

(declare-fun m!5794346 () Bool)

(assert (=> bm!335599 m!5794346))

(assert (=> d!1540021 m!5794342))

(assert (=> b!4808213 m!5794274))

(declare-fun m!5794348 () Bool)

(assert (=> b!4808213 m!5794348))

(declare-fun m!5794350 () Bool)

(assert (=> b!4808208 m!5794350))

(assert (=> b!4808212 m!5794274))

(assert (=> b!4808212 m!5794348))

(assert (=> b!4808212 m!5794348))

(declare-fun m!5794352 () Bool)

(assert (=> b!4808212 m!5794352))

(assert (=> b!4808205 m!5794274))

(assert (=> b!4808205 m!5794348))

(assert (=> b!4808205 m!5794348))

(assert (=> b!4808205 m!5794352))

(assert (=> b!4808122 d!1540021))

(declare-fun d!1540023 () Bool)

(declare-fun lt!1961005 () Bool)

(declare-fun contains!18142 (ListLongMap!5537 (_ BitVec 64)) Bool)

(assert (=> d!1540023 (= lt!1961005 (contains!18142 (map!12361 (v!48711 (underlying!10242 thiss!41921))) lt!1960956))))

(declare-fun contains!18143 (LongMapFixedSize!10034 (_ BitVec 64)) Bool)

(assert (=> d!1540023 (= lt!1961005 (contains!18143 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921)))) lt!1960956))))

(assert (=> d!1540023 (valid!4033 (v!48711 (underlying!10242 thiss!41921)))))

(assert (=> d!1540023 (= (contains!18140 (v!48711 (underlying!10242 thiss!41921)) lt!1960956) lt!1961005)))

(declare-fun bs!1159965 () Bool)

(assert (= bs!1159965 d!1540023))

(assert (=> bs!1159965 m!5794266))

(assert (=> bs!1159965 m!5794266))

(declare-fun m!5794354 () Bool)

(assert (=> bs!1159965 m!5794354))

(declare-fun m!5794356 () Bool)

(assert (=> bs!1159965 m!5794356))

(assert (=> bs!1159965 m!5794250))

(assert (=> b!4808122 d!1540023))

(assert (=> b!4808122 d!1540009))

(declare-fun d!1540025 () Bool)

(assert (=> d!1540025 (= (array_inv!5925 (_keys!5359 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921)))))) (bvsge (size!36465 (_keys!5359 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4808131 d!1540025))

(declare-fun d!1540027 () Bool)

(assert (=> d!1540027 (= (array_inv!5926 (_values!5330 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921)))))) (bvsge (size!36466 (_values!5330 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4808131 d!1540027))

(declare-fun d!1540029 () Bool)

(declare-fun valid!4035 (LongMapFixedSize!10034) Bool)

(assert (=> d!1540029 (= (valid!4033 (v!48711 (underlying!10242 thiss!41921))) (valid!4035 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921))))))))

(declare-fun bs!1159966 () Bool)

(assert (= bs!1159966 d!1540029))

(declare-fun m!5794358 () Bool)

(assert (=> bs!1159966 m!5794358))

(assert (=> b!4808124 d!1540029))

(declare-fun tp!1359767 () Bool)

(declare-fun e!3003332 () Bool)

(declare-fun tp_is_empty!33897 () Bool)

(declare-fun b!4808220 () Bool)

(assert (=> b!4808220 (= e!3003332 (and tp_is_empty!33895 tp_is_empty!33897 tp!1359767))))

(declare-fun e!3003333 () Bool)

(declare-fun b!4808221 () Bool)

(declare-fun tp!1359766 () Bool)

(assert (=> b!4808221 (= e!3003333 (and tp_is_empty!33895 tp_is_empty!33897 tp!1359766))))

(declare-fun mapNonEmpty!22202 () Bool)

(declare-fun mapRes!22202 () Bool)

(declare-fun tp!1359765 () Bool)

(assert (=> mapNonEmpty!22202 (= mapRes!22202 (and tp!1359765 e!3003332))))

(declare-fun mapValue!22202 () List!54584)

(declare-fun mapRest!22202 () (Array (_ BitVec 32) List!54584))

(declare-fun mapKey!22202 () (_ BitVec 32))

(assert (=> mapNonEmpty!22202 (= mapRest!22199 (store mapRest!22202 mapKey!22202 mapValue!22202))))

(declare-fun mapIsEmpty!22202 () Bool)

(assert (=> mapIsEmpty!22202 mapRes!22202))

(declare-fun condMapEmpty!22202 () Bool)

(declare-fun mapDefault!22202 () List!54584)

(assert (=> mapNonEmpty!22199 (= condMapEmpty!22202 (= mapRest!22199 ((as const (Array (_ BitVec 32) List!54584)) mapDefault!22202)))))

(assert (=> mapNonEmpty!22199 (= tp!1359758 (and e!3003333 mapRes!22202))))

(assert (= (and mapNonEmpty!22199 condMapEmpty!22202) mapIsEmpty!22202))

(assert (= (and mapNonEmpty!22199 (not condMapEmpty!22202)) mapNonEmpty!22202))

(assert (= (and mapNonEmpty!22202 ((_ is Cons!54460) mapValue!22202)) b!4808220))

(assert (= (and mapNonEmpty!22199 ((_ is Cons!54460) mapDefault!22202)) b!4808221))

(declare-fun m!5794360 () Bool)

(assert (=> mapNonEmpty!22202 m!5794360))

(declare-fun tp!1359770 () Bool)

(declare-fun b!4808226 () Bool)

(declare-fun e!3003336 () Bool)

(assert (=> b!4808226 (= e!3003336 (and tp_is_empty!33895 tp_is_empty!33897 tp!1359770))))

(assert (=> mapNonEmpty!22199 (= tp!1359752 e!3003336)))

(assert (= (and mapNonEmpty!22199 ((_ is Cons!54460) mapValue!22199)) b!4808226))

(declare-fun tp!1359771 () Bool)

(declare-fun b!4808227 () Bool)

(declare-fun e!3003337 () Bool)

(assert (=> b!4808227 (= e!3003337 (and tp_is_empty!33895 tp_is_empty!33897 tp!1359771))))

(assert (=> b!4808131 (= tp!1359757 e!3003337)))

(assert (= (and b!4808131 ((_ is Cons!54460) (zeroValue!5305 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921))))))) b!4808227))

(declare-fun e!3003338 () Bool)

(declare-fun tp!1359772 () Bool)

(declare-fun b!4808228 () Bool)

(assert (=> b!4808228 (= e!3003338 (and tp_is_empty!33895 tp_is_empty!33897 tp!1359772))))

(assert (=> b!4808131 (= tp!1359756 e!3003338)))

(assert (= (and b!4808131 ((_ is Cons!54460) (minValue!5305 (v!48710 (underlying!10241 (v!48711 (underlying!10242 thiss!41921))))))) b!4808228))

(declare-fun e!3003339 () Bool)

(declare-fun tp!1359773 () Bool)

(declare-fun b!4808229 () Bool)

(assert (=> b!4808229 (= e!3003339 (and tp_is_empty!33895 tp_is_empty!33897 tp!1359773))))

(assert (=> b!4808130 (= tp!1359755 e!3003339)))

(assert (= (and b!4808130 ((_ is Cons!54460) mapDefault!22199)) b!4808229))

(declare-fun b_lambda!188161 () Bool)

(assert (= b_lambda!188157 (or b!4808127 b_lambda!188161)))

(declare-fun bs!1159967 () Bool)

(declare-fun d!1540031 () Bool)

(assert (= bs!1159967 (and d!1540031 b!4808127)))

(declare-fun noDuplicateKeys!2381 (List!54584) Bool)

(assert (=> bs!1159967 (= (dynLambda!22122 lambda!233568 lt!1960948) (noDuplicateKeys!2381 (_2!31925 lt!1960948)))))

(declare-fun m!5794362 () Bool)

(assert (=> bs!1159967 m!5794362))

(assert (=> d!1540007 d!1540031))

(declare-fun b_lambda!188163 () Bool)

(assert (= b_lambda!188159 (or (and b!4808131 b_free!130011) b_lambda!188163)))

(check-sat (not tb!257519) (not b!4808226) (not bm!335599) b_and!341783 (not b!4808149) (not b!4808212) (not d!1540023) (not b!4808209) (not b!4808213) (not b!4808138) (not b!4808180) (not d!1540009) (not b!4808167) b_and!341785 (not b_next!130803) (not b!4808221) tp_is_empty!33895 (not b!4808179) (not b!4808185) (not d!1540007) (not d!1540001) (not mapNonEmpty!22202) (not b!4808207) (not b!4808206) (not d!1539997) (not bs!1159967) (not b!4808229) (not d!1540011) (not b!4808208) (not d!1540017) (not b!4808220) (not b_lambda!188161) (not d!1540013) (not b_next!130801) (not b!4808228) (not d!1540021) (not d!1540019) (not b!4808135) (not b!4808227) (not b_lambda!188163) (not b!4808174) tp_is_empty!33897 (not d!1540003) (not b!4808153) (not d!1540015) (not d!1540029) (not b!4808162) (not d!1539995) (not b!4808159) (not b!4808205))
(check-sat b_and!341785 b_and!341783 (not b_next!130801) (not b_next!130803))
