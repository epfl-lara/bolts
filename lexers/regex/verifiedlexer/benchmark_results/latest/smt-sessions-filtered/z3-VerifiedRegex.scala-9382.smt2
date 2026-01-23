; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497496 () Bool)

(assert start!497496)

(declare-fun b!4811923 () Bool)

(declare-fun b_free!130235 () Bool)

(declare-fun b_next!131025 () Bool)

(assert (=> b!4811923 (= b_free!130235 (not b_next!131025))))

(declare-fun tp!1361110 () Bool)

(declare-fun b_and!342037 () Bool)

(assert (=> b!4811923 (= tp!1361110 b_and!342037)))

(declare-fun b!4811932 () Bool)

(declare-fun b_free!130237 () Bool)

(declare-fun b_next!131027 () Bool)

(assert (=> b!4811932 (= b_free!130237 (not b_next!131027))))

(declare-fun tp!1361115 () Bool)

(declare-fun b_and!342039 () Bool)

(assert (=> b!4811932 (= tp!1361115 b_and!342039)))

(declare-fun bs!1160150 () Bool)

(declare-fun b!4811928 () Bool)

(declare-fun b!4811930 () Bool)

(assert (= bs!1160150 (and b!4811928 b!4811930)))

(declare-fun lambda!233799 () Int)

(declare-fun lambda!233798 () Int)

(assert (=> bs!1160150 (= lambda!233799 lambda!233798)))

(declare-fun b!4811920 () Bool)

(declare-fun e!3006209 () Bool)

(declare-fun e!3006206 () Bool)

(declare-datatypes ((K!16199 0))(
  ( (K!16200 (val!21265 Int)) )
))
(declare-datatypes ((array!18672 0))(
  ( (array!18673 (arr!8331 (Array (_ BitVec 32) (_ BitVec 64))) (size!36577 (_ BitVec 32))) )
))
(declare-datatypes ((V!16445 0))(
  ( (V!16446 (val!21266 Int)) )
))
(declare-datatypes ((tuple2!57472 0))(
  ( (tuple2!57473 (_1!32030 K!16199) (_2!32030 V!16445)) )
))
(declare-datatypes ((List!54698 0))(
  ( (Nil!54574) (Cons!54574 (h!61006 tuple2!57472) (t!362184 List!54698)) )
))
(declare-datatypes ((array!18674 0))(
  ( (array!18675 (arr!8332 (Array (_ BitVec 32) List!54698)) (size!36578 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10146 0))(
  ( (LongMapFixedSize!10147 (defaultEntry!5495 Int) (mask!15090 (_ BitVec 32)) (extraKeys!5353 (_ BitVec 32)) (zeroValue!5366 List!54698) (minValue!5366 List!54698) (_size!10171 (_ BitVec 32)) (_keys!5422 array!18672) (_values!5391 array!18674) (_vacant!5138 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20057 0))(
  ( (Cell!20058 (v!48901 LongMapFixedSize!10146)) )
))
(declare-datatypes ((MutLongMap!5073 0))(
  ( (LongMap!5073 (underlying!10353 Cell!20057)) (MutLongMapExt!5072 (__x!33317 Int)) )
))
(declare-fun lt!1963415 () MutLongMap!5073)

(get-info :version)

(assert (=> b!4811920 (= e!3006209 (and e!3006206 ((_ is LongMap!5073) lt!1963415)))))

(declare-datatypes ((Hashable!7084 0))(
  ( (HashableExt!7083 (__x!33318 Int)) )
))
(declare-datatypes ((Cell!20059 0))(
  ( (Cell!20060 (v!48902 MutLongMap!5073)) )
))
(declare-datatypes ((MutableMap!4957 0))(
  ( (MutableMapExt!4956 (__x!33319 Int)) (HashMap!4957 (underlying!10354 Cell!20059) (hashF!13360 Hashable!7084) (_size!10172 (_ BitVec 32)) (defaultValue!5128 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4957)

(assert (=> b!4811920 (= lt!1963415 (v!48902 (underlying!10354 thiss!41921)))))

(declare-fun b!4811921 () Bool)

(declare-datatypes ((Unit!141612 0))(
  ( (Unit!141613) )
))
(declare-fun e!3006208 () Unit!141612)

(declare-fun Unit!141614 () Unit!141612)

(assert (=> b!4811921 (= e!3006208 Unit!141614)))

(declare-fun b!4811922 () Bool)

(declare-fun e!3006210 () Bool)

(declare-fun e!3006207 () Bool)

(assert (=> b!4811922 (= e!3006210 e!3006207)))

(declare-fun res!2046731 () Bool)

(assert (=> b!4811922 (=> (not res!2046731) (not e!3006207))))

(declare-datatypes ((tuple2!57474 0))(
  ( (tuple2!57475 (_1!32031 (_ BitVec 64)) (_2!32031 List!54698)) )
))
(declare-datatypes ((List!54699 0))(
  ( (Nil!54575) (Cons!54575 (h!61007 tuple2!57474) (t!362185 List!54699)) )
))
(declare-datatypes ((ListLongMap!5637 0))(
  ( (ListLongMap!5638 (toList!7162 List!54699)) )
))
(declare-fun lt!1963418 () ListLongMap!5637)

(declare-fun key!1652 () K!16199)

(declare-datatypes ((ListMap!6581 0))(
  ( (ListMap!6582 (toList!7163 List!54698)) )
))
(declare-fun contains!18299 (ListMap!6581 K!16199) Bool)

(declare-fun extractMap!2542 (List!54699) ListMap!6581)

(assert (=> b!4811922 (= res!2046731 (contains!18299 (extractMap!2542 (toList!7162 lt!1963418)) key!1652))))

(declare-fun map!12446 (MutLongMap!5073) ListLongMap!5637)

(assert (=> b!4811922 (= lt!1963418 (map!12446 (v!48902 (underlying!10354 thiss!41921))))))

(declare-fun lt!1963412 () Unit!141612)

(declare-fun e!3006204 () Unit!141612)

(assert (=> b!4811922 (= lt!1963412 e!3006204)))

(declare-fun c!820125 () Bool)

(declare-fun lt!1963414 () (_ BitVec 64))

(declare-fun contains!18300 (MutLongMap!5073 (_ BitVec 64)) Bool)

(assert (=> b!4811922 (= c!820125 (contains!18300 (v!48902 (underlying!10354 thiss!41921)) lt!1963414))))

(declare-fun hash!5150 (Hashable!7084 K!16199) (_ BitVec 64))

(assert (=> b!4811922 (= lt!1963414 (hash!5150 (hashF!13360 thiss!41921) key!1652))))

(declare-fun mapIsEmpty!22400 () Bool)

(declare-fun mapRes!22400 () Bool)

(assert (=> mapIsEmpty!22400 mapRes!22400))

(declare-fun tp!1361116 () Bool)

(declare-fun tp!1361114 () Bool)

(declare-fun e!3006202 () Bool)

(declare-fun e!3006205 () Bool)

(declare-fun array_inv!6017 (array!18672) Bool)

(declare-fun array_inv!6018 (array!18674) Bool)

(assert (=> b!4811923 (= e!3006205 (and tp!1361110 tp!1361116 tp!1361114 (array_inv!6017 (_keys!5422 (v!48901 (underlying!10353 (v!48902 (underlying!10354 thiss!41921)))))) (array_inv!6018 (_values!5391 (v!48901 (underlying!10353 (v!48902 (underlying!10354 thiss!41921)))))) e!3006202))))

(declare-fun b!4811924 () Bool)

(declare-fun e!3006201 () Bool)

(assert (=> b!4811924 (= e!3006206 e!3006201)))

(declare-fun b!4811925 () Bool)

(declare-fun tp!1361111 () Bool)

(assert (=> b!4811925 (= e!3006202 (and tp!1361111 mapRes!22400))))

(declare-fun condMapEmpty!22400 () Bool)

(declare-fun mapDefault!22400 () List!54698)

(assert (=> b!4811925 (= condMapEmpty!22400 (= (arr!8332 (_values!5391 (v!48901 (underlying!10353 (v!48902 (underlying!10354 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54698)) mapDefault!22400)))))

(declare-fun b!4811926 () Bool)

(declare-fun Unit!141615 () Unit!141612)

(assert (=> b!4811926 (= e!3006204 Unit!141615)))

(declare-fun b!4811927 () Bool)

(assert (=> b!4811927 false))

(declare-fun lt!1963419 () Unit!141612)

(declare-fun lt!1963421 () List!54698)

(declare-fun lt!1963420 () ListLongMap!5637)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1007 (List!54699 (_ BitVec 64) List!54698) Unit!141612)

(assert (=> b!4811927 (= lt!1963419 (lemmaGetValueByKeyImpliesContainsTuple!1007 (toList!7162 lt!1963420) lt!1963414 lt!1963421))))

(declare-datatypes ((Option!13321 0))(
  ( (None!13320) (Some!13320 (v!48903 List!54698)) )
))
(declare-fun isDefined!10459 (Option!13321) Bool)

(declare-fun getValueByKey!2500 (List!54699 (_ BitVec 64)) Option!13321)

(assert (=> b!4811927 (isDefined!10459 (getValueByKey!2500 (toList!7162 lt!1963420) lt!1963414))))

(declare-fun lt!1963416 () Unit!141612)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2287 (List!54699 (_ BitVec 64)) Unit!141612)

(assert (=> b!4811927 (= lt!1963416 (lemmaContainsKeyImpliesGetValueByKeyDefined!2287 (toList!7162 lt!1963420) lt!1963414))))

(declare-fun containsKey!4164 (List!54699 (_ BitVec 64)) Bool)

(assert (=> b!4811927 (containsKey!4164 (toList!7162 lt!1963420) lt!1963414)))

(declare-fun lt!1963422 () Unit!141612)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!284 (List!54699 (_ BitVec 64)) Unit!141612)

(assert (=> b!4811927 (= lt!1963422 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!284 (toList!7162 lt!1963420) lt!1963414))))

(declare-fun Unit!141616 () Unit!141612)

(assert (=> b!4811927 (= e!3006208 Unit!141616)))

(declare-fun res!2046730 () Bool)

(assert (=> start!497496 (=> (not res!2046730) (not e!3006210))))

(assert (=> start!497496 (= res!2046730 ((_ is HashMap!4957) thiss!41921))))

(assert (=> start!497496 e!3006210))

(declare-fun e!3006203 () Bool)

(assert (=> start!497496 e!3006203))

(declare-fun tp_is_empty!34027 () Bool)

(assert (=> start!497496 tp_is_empty!34027))

(declare-fun forall!12398 (List!54699 Int) Bool)

(assert (=> b!4811928 (= e!3006207 (not (forall!12398 (toList!7162 lt!1963418) lambda!233799)))))

(declare-fun b!4811929 () Bool)

(declare-fun res!2046732 () Bool)

(assert (=> b!4811929 (=> (not res!2046732) (not e!3006210))))

(declare-fun valid!4103 (MutableMap!4957) Bool)

(assert (=> b!4811929 (= res!2046732 (valid!4103 thiss!41921))))

(declare-fun mapNonEmpty!22400 () Bool)

(declare-fun tp!1361112 () Bool)

(declare-fun tp!1361113 () Bool)

(assert (=> mapNonEmpty!22400 (= mapRes!22400 (and tp!1361112 tp!1361113))))

(declare-fun mapRest!22400 () (Array (_ BitVec 32) List!54698))

(declare-fun mapKey!22400 () (_ BitVec 32))

(declare-fun mapValue!22400 () List!54698)

(assert (=> mapNonEmpty!22400 (= (arr!8332 (_values!5391 (v!48901 (underlying!10353 (v!48902 (underlying!10354 thiss!41921)))))) (store mapRest!22400 mapKey!22400 mapValue!22400))))

(declare-fun lt!1963413 () tuple2!57474)

(declare-fun forallContained!4273 (List!54699 Int tuple2!57474) Unit!141612)

(assert (=> b!4811930 (= e!3006204 (forallContained!4273 (toList!7162 lt!1963420) lambda!233798 lt!1963413))))

(assert (=> b!4811930 (= lt!1963420 (map!12446 (v!48902 (underlying!10354 thiss!41921))))))

(declare-fun apply!13175 (MutLongMap!5073 (_ BitVec 64)) List!54698)

(assert (=> b!4811930 (= lt!1963421 (apply!13175 (v!48902 (underlying!10354 thiss!41921)) lt!1963414))))

(assert (=> b!4811930 (= lt!1963413 (tuple2!57475 lt!1963414 lt!1963421))))

(declare-fun c!820124 () Bool)

(declare-fun contains!18301 (List!54699 tuple2!57474) Bool)

(assert (=> b!4811930 (= c!820124 (not (contains!18301 (toList!7162 lt!1963420) lt!1963413)))))

(declare-fun lt!1963417 () Unit!141612)

(assert (=> b!4811930 (= lt!1963417 e!3006208)))

(declare-fun b!4811931 () Bool)

(assert (=> b!4811931 (= e!3006201 e!3006205)))

(assert (=> b!4811932 (= e!3006203 (and e!3006209 tp!1361115))))

(assert (= (and start!497496 res!2046730) b!4811929))

(assert (= (and b!4811929 res!2046732) b!4811922))

(assert (= (and b!4811922 c!820125) b!4811930))

(assert (= (and b!4811922 (not c!820125)) b!4811926))

(assert (= (and b!4811930 c!820124) b!4811927))

(assert (= (and b!4811930 (not c!820124)) b!4811921))

(assert (= (and b!4811922 res!2046731) b!4811928))

(assert (= (and b!4811925 condMapEmpty!22400) mapIsEmpty!22400))

(assert (= (and b!4811925 (not condMapEmpty!22400)) mapNonEmpty!22400))

(assert (= b!4811923 b!4811925))

(assert (= b!4811931 b!4811923))

(assert (= b!4811924 b!4811931))

(assert (= (and b!4811920 ((_ is LongMap!5073) (v!48902 (underlying!10354 thiss!41921)))) b!4811924))

(assert (= b!4811932 b!4811920))

(assert (= (and start!497496 ((_ is HashMap!4957) thiss!41921)) b!4811932))

(declare-fun m!5797560 () Bool)

(assert (=> b!4811927 m!5797560))

(declare-fun m!5797562 () Bool)

(assert (=> b!4811927 m!5797562))

(declare-fun m!5797564 () Bool)

(assert (=> b!4811927 m!5797564))

(declare-fun m!5797566 () Bool)

(assert (=> b!4811927 m!5797566))

(declare-fun m!5797568 () Bool)

(assert (=> b!4811927 m!5797568))

(assert (=> b!4811927 m!5797566))

(declare-fun m!5797570 () Bool)

(assert (=> b!4811927 m!5797570))

(declare-fun m!5797572 () Bool)

(assert (=> b!4811928 m!5797572))

(declare-fun m!5797574 () Bool)

(assert (=> b!4811923 m!5797574))

(declare-fun m!5797576 () Bool)

(assert (=> b!4811923 m!5797576))

(declare-fun m!5797578 () Bool)

(assert (=> b!4811930 m!5797578))

(declare-fun m!5797580 () Bool)

(assert (=> b!4811930 m!5797580))

(declare-fun m!5797582 () Bool)

(assert (=> b!4811930 m!5797582))

(declare-fun m!5797584 () Bool)

(assert (=> b!4811930 m!5797584))

(declare-fun m!5797586 () Bool)

(assert (=> b!4811929 m!5797586))

(declare-fun m!5797588 () Bool)

(assert (=> mapNonEmpty!22400 m!5797588))

(declare-fun m!5797590 () Bool)

(assert (=> b!4811922 m!5797590))

(declare-fun m!5797592 () Bool)

(assert (=> b!4811922 m!5797592))

(assert (=> b!4811922 m!5797590))

(assert (=> b!4811922 m!5797580))

(declare-fun m!5797594 () Bool)

(assert (=> b!4811922 m!5797594))

(declare-fun m!5797596 () Bool)

(assert (=> b!4811922 m!5797596))

(check-sat b_and!342037 (not mapNonEmpty!22400) (not b!4811928) (not b!4811923) (not b!4811922) tp_is_empty!34027 (not b_next!131027) (not b!4811929) (not b_next!131025) (not b!4811927) (not b!4811925) b_and!342039 (not b!4811930))
(check-sat b_and!342037 b_and!342039 (not b_next!131025) (not b_next!131027))
(get-model)

(declare-fun d!1540555 () Bool)

(declare-fun lt!1963425 () Bool)

(declare-fun contains!18302 (ListLongMap!5637 (_ BitVec 64)) Bool)

(assert (=> d!1540555 (= lt!1963425 (contains!18302 (map!12446 (v!48902 (underlying!10354 thiss!41921))) lt!1963414))))

(declare-fun contains!18303 (LongMapFixedSize!10146 (_ BitVec 64)) Bool)

(assert (=> d!1540555 (= lt!1963425 (contains!18303 (v!48901 (underlying!10353 (v!48902 (underlying!10354 thiss!41921)))) lt!1963414))))

(declare-fun valid!4104 (MutLongMap!5073) Bool)

(assert (=> d!1540555 (valid!4104 (v!48902 (underlying!10354 thiss!41921)))))

(assert (=> d!1540555 (= (contains!18300 (v!48902 (underlying!10354 thiss!41921)) lt!1963414) lt!1963425)))

(declare-fun bs!1160151 () Bool)

(assert (= bs!1160151 d!1540555))

(assert (=> bs!1160151 m!5797580))

(assert (=> bs!1160151 m!5797580))

(declare-fun m!5797598 () Bool)

(assert (=> bs!1160151 m!5797598))

(declare-fun m!5797600 () Bool)

(assert (=> bs!1160151 m!5797600))

(declare-fun m!5797602 () Bool)

(assert (=> bs!1160151 m!5797602))

(assert (=> b!4811922 d!1540555))

(declare-fun d!1540557 () Bool)

(declare-fun hash!5151 (Hashable!7084 K!16199) (_ BitVec 64))

(assert (=> d!1540557 (= (hash!5150 (hashF!13360 thiss!41921) key!1652) (hash!5151 (hashF!13360 thiss!41921) key!1652))))

(declare-fun bs!1160152 () Bool)

(assert (= bs!1160152 d!1540557))

(declare-fun m!5797604 () Bool)

(assert (=> bs!1160152 m!5797604))

(assert (=> b!4811922 d!1540557))

(declare-fun bs!1160153 () Bool)

(declare-fun d!1540559 () Bool)

(assert (= bs!1160153 (and d!1540559 b!4811930)))

(declare-fun lambda!233802 () Int)

(assert (=> bs!1160153 (= lambda!233802 lambda!233798)))

(declare-fun bs!1160154 () Bool)

(assert (= bs!1160154 (and d!1540559 b!4811928)))

(assert (=> bs!1160154 (= lambda!233802 lambda!233799)))

(declare-fun lt!1963428 () ListMap!6581)

(declare-fun invariantList!1776 (List!54698) Bool)

(assert (=> d!1540559 (invariantList!1776 (toList!7163 lt!1963428))))

(declare-fun e!3006213 () ListMap!6581)

(assert (=> d!1540559 (= lt!1963428 e!3006213)))

(declare-fun c!820128 () Bool)

(assert (=> d!1540559 (= c!820128 ((_ is Cons!54575) (toList!7162 lt!1963418)))))

(assert (=> d!1540559 (forall!12398 (toList!7162 lt!1963418) lambda!233802)))

(assert (=> d!1540559 (= (extractMap!2542 (toList!7162 lt!1963418)) lt!1963428)))

(declare-fun b!4811937 () Bool)

(declare-fun addToMapMapFromBucket!1753 (List!54698 ListMap!6581) ListMap!6581)

(assert (=> b!4811937 (= e!3006213 (addToMapMapFromBucket!1753 (_2!32031 (h!61007 (toList!7162 lt!1963418))) (extractMap!2542 (t!362185 (toList!7162 lt!1963418)))))))

(declare-fun b!4811938 () Bool)

(assert (=> b!4811938 (= e!3006213 (ListMap!6582 Nil!54574))))

(assert (= (and d!1540559 c!820128) b!4811937))

(assert (= (and d!1540559 (not c!820128)) b!4811938))

(declare-fun m!5797606 () Bool)

(assert (=> d!1540559 m!5797606))

(declare-fun m!5797608 () Bool)

(assert (=> d!1540559 m!5797608))

(declare-fun m!5797610 () Bool)

(assert (=> b!4811937 m!5797610))

(assert (=> b!4811937 m!5797610))

(declare-fun m!5797612 () Bool)

(assert (=> b!4811937 m!5797612))

(assert (=> b!4811922 d!1540559))

(declare-fun d!1540561 () Bool)

(declare-fun map!12447 (LongMapFixedSize!10146) ListLongMap!5637)

(assert (=> d!1540561 (= (map!12446 (v!48902 (underlying!10354 thiss!41921))) (map!12447 (v!48901 (underlying!10353 (v!48902 (underlying!10354 thiss!41921))))))))

(declare-fun bs!1160155 () Bool)

(assert (= bs!1160155 d!1540561))

(declare-fun m!5797614 () Bool)

(assert (=> bs!1160155 m!5797614))

(assert (=> b!4811922 d!1540561))

(declare-fun b!4811957 () Bool)

(declare-datatypes ((List!54700 0))(
  ( (Nil!54576) (Cons!54576 (h!61008 K!16199) (t!362188 List!54700)) )
))
(declare-fun e!3006227 () List!54700)

(declare-fun getKeysList!1122 (List!54698) List!54700)

(assert (=> b!4811957 (= e!3006227 (getKeysList!1122 (toList!7163 (extractMap!2542 (toList!7162 lt!1963418)))))))

(declare-fun b!4811958 () Bool)

(declare-fun e!3006228 () Unit!141612)

(declare-fun lt!1963451 () Unit!141612)

(assert (=> b!4811958 (= e!3006228 lt!1963451)))

(declare-fun lt!1963445 () Unit!141612)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2288 (List!54698 K!16199) Unit!141612)

(assert (=> b!4811958 (= lt!1963445 (lemmaContainsKeyImpliesGetValueByKeyDefined!2288 (toList!7163 (extractMap!2542 (toList!7162 lt!1963418))) key!1652))))

(declare-datatypes ((Option!13322 0))(
  ( (None!13321) (Some!13321 (v!48906 V!16445)) )
))
(declare-fun isDefined!10460 (Option!13322) Bool)

(declare-fun getValueByKey!2501 (List!54698 K!16199) Option!13322)

(assert (=> b!4811958 (isDefined!10460 (getValueByKey!2501 (toList!7163 (extractMap!2542 (toList!7162 lt!1963418))) key!1652))))

(declare-fun lt!1963449 () Unit!141612)

(assert (=> b!4811958 (= lt!1963449 lt!1963445)))

(declare-fun lemmaInListThenGetKeysListContains!1117 (List!54698 K!16199) Unit!141612)

(assert (=> b!4811958 (= lt!1963451 (lemmaInListThenGetKeysListContains!1117 (toList!7163 (extractMap!2542 (toList!7162 lt!1963418))) key!1652))))

(declare-fun call!335847 () Bool)

(assert (=> b!4811958 call!335847))

(declare-fun b!4811959 () Bool)

(declare-fun e!3006226 () Unit!141612)

(assert (=> b!4811959 (= e!3006228 e!3006226)))

(declare-fun c!820137 () Bool)

(assert (=> b!4811959 (= c!820137 call!335847)))

(declare-fun b!4811960 () Bool)

(declare-fun e!3006231 () Bool)

(declare-fun e!3006230 () Bool)

(assert (=> b!4811960 (= e!3006231 e!3006230)))

(declare-fun res!2046740 () Bool)

(assert (=> b!4811960 (=> (not res!2046740) (not e!3006230))))

(assert (=> b!4811960 (= res!2046740 (isDefined!10460 (getValueByKey!2501 (toList!7163 (extractMap!2542 (toList!7162 lt!1963418))) key!1652)))))

(declare-fun b!4811961 () Bool)

(declare-fun Unit!141617 () Unit!141612)

(assert (=> b!4811961 (= e!3006226 Unit!141617)))

(declare-fun b!4811962 () Bool)

(assert (=> b!4811962 false))

(declare-fun lt!1963448 () Unit!141612)

(declare-fun lt!1963450 () Unit!141612)

(assert (=> b!4811962 (= lt!1963448 lt!1963450)))

(declare-fun containsKey!4165 (List!54698 K!16199) Bool)

(assert (=> b!4811962 (containsKey!4165 (toList!7163 (extractMap!2542 (toList!7162 lt!1963418))) key!1652)))

(declare-fun lemmaInGetKeysListThenContainsKey!1122 (List!54698 K!16199) Unit!141612)

(assert (=> b!4811962 (= lt!1963450 (lemmaInGetKeysListThenContainsKey!1122 (toList!7163 (extractMap!2542 (toList!7162 lt!1963418))) key!1652))))

(declare-fun Unit!141618 () Unit!141612)

(assert (=> b!4811962 (= e!3006226 Unit!141618)))

(declare-fun bm!335842 () Bool)

(declare-fun contains!18304 (List!54700 K!16199) Bool)

(assert (=> bm!335842 (= call!335847 (contains!18304 e!3006227 key!1652))))

(declare-fun c!820135 () Bool)

(declare-fun c!820136 () Bool)

(assert (=> bm!335842 (= c!820135 c!820136)))

(declare-fun b!4811963 () Bool)

(declare-fun e!3006229 () Bool)

(declare-fun keys!20005 (ListMap!6581) List!54700)

(assert (=> b!4811963 (= e!3006229 (not (contains!18304 (keys!20005 (extractMap!2542 (toList!7162 lt!1963418))) key!1652)))))

(declare-fun d!1540563 () Bool)

(assert (=> d!1540563 e!3006231))

(declare-fun res!2046739 () Bool)

(assert (=> d!1540563 (=> res!2046739 e!3006231)))

(assert (=> d!1540563 (= res!2046739 e!3006229)))

(declare-fun res!2046741 () Bool)

(assert (=> d!1540563 (=> (not res!2046741) (not e!3006229))))

(declare-fun lt!1963452 () Bool)

(assert (=> d!1540563 (= res!2046741 (not lt!1963452))))

(declare-fun lt!1963446 () Bool)

(assert (=> d!1540563 (= lt!1963452 lt!1963446)))

(declare-fun lt!1963447 () Unit!141612)

(assert (=> d!1540563 (= lt!1963447 e!3006228)))

(assert (=> d!1540563 (= c!820136 lt!1963446)))

(assert (=> d!1540563 (= lt!1963446 (containsKey!4165 (toList!7163 (extractMap!2542 (toList!7162 lt!1963418))) key!1652))))

(assert (=> d!1540563 (= (contains!18299 (extractMap!2542 (toList!7162 lt!1963418)) key!1652) lt!1963452)))

(declare-fun b!4811964 () Bool)

(assert (=> b!4811964 (= e!3006230 (contains!18304 (keys!20005 (extractMap!2542 (toList!7162 lt!1963418))) key!1652))))

(declare-fun b!4811965 () Bool)

(assert (=> b!4811965 (= e!3006227 (keys!20005 (extractMap!2542 (toList!7162 lt!1963418))))))

(assert (= (and d!1540563 c!820136) b!4811958))

(assert (= (and d!1540563 (not c!820136)) b!4811959))

(assert (= (and b!4811959 c!820137) b!4811962))

(assert (= (and b!4811959 (not c!820137)) b!4811961))

(assert (= (or b!4811958 b!4811959) bm!335842))

(assert (= (and bm!335842 c!820135) b!4811957))

(assert (= (and bm!335842 (not c!820135)) b!4811965))

(assert (= (and d!1540563 res!2046741) b!4811963))

(assert (= (and d!1540563 (not res!2046739)) b!4811960))

(assert (= (and b!4811960 res!2046740) b!4811964))

(declare-fun m!5797616 () Bool)

(assert (=> bm!335842 m!5797616))

(declare-fun m!5797618 () Bool)

(assert (=> b!4811958 m!5797618))

(declare-fun m!5797620 () Bool)

(assert (=> b!4811958 m!5797620))

(assert (=> b!4811958 m!5797620))

(declare-fun m!5797622 () Bool)

(assert (=> b!4811958 m!5797622))

(declare-fun m!5797624 () Bool)

(assert (=> b!4811958 m!5797624))

(assert (=> b!4811965 m!5797590))

(declare-fun m!5797626 () Bool)

(assert (=> b!4811965 m!5797626))

(declare-fun m!5797628 () Bool)

(assert (=> b!4811957 m!5797628))

(declare-fun m!5797630 () Bool)

(assert (=> d!1540563 m!5797630))

(assert (=> b!4811963 m!5797590))

(assert (=> b!4811963 m!5797626))

(assert (=> b!4811963 m!5797626))

(declare-fun m!5797632 () Bool)

(assert (=> b!4811963 m!5797632))

(assert (=> b!4811962 m!5797630))

(declare-fun m!5797634 () Bool)

(assert (=> b!4811962 m!5797634))

(assert (=> b!4811960 m!5797620))

(assert (=> b!4811960 m!5797620))

(assert (=> b!4811960 m!5797622))

(assert (=> b!4811964 m!5797590))

(assert (=> b!4811964 m!5797626))

(assert (=> b!4811964 m!5797626))

(assert (=> b!4811964 m!5797632))

(assert (=> b!4811922 d!1540563))

(declare-fun d!1540565 () Bool)

(declare-fun isEmpty!29553 (Option!13321) Bool)

(assert (=> d!1540565 (= (isDefined!10459 (getValueByKey!2500 (toList!7162 lt!1963420) lt!1963414)) (not (isEmpty!29553 (getValueByKey!2500 (toList!7162 lt!1963420) lt!1963414))))))

(declare-fun bs!1160156 () Bool)

(assert (= bs!1160156 d!1540565))

(assert (=> bs!1160156 m!5797566))

(declare-fun m!5797636 () Bool)

(assert (=> bs!1160156 m!5797636))

(assert (=> b!4811927 d!1540565))

(declare-fun d!1540567 () Bool)

(assert (=> d!1540567 (containsKey!4164 (toList!7162 lt!1963420) lt!1963414)))

(declare-fun lt!1963455 () Unit!141612)

(declare-fun choose!34864 (List!54699 (_ BitVec 64)) Unit!141612)

(assert (=> d!1540567 (= lt!1963455 (choose!34864 (toList!7162 lt!1963420) lt!1963414))))

(declare-fun e!3006234 () Bool)

(assert (=> d!1540567 e!3006234))

(declare-fun res!2046744 () Bool)

(assert (=> d!1540567 (=> (not res!2046744) (not e!3006234))))

(declare-fun isStrictlySorted!933 (List!54699) Bool)

(assert (=> d!1540567 (= res!2046744 (isStrictlySorted!933 (toList!7162 lt!1963420)))))

(assert (=> d!1540567 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!284 (toList!7162 lt!1963420) lt!1963414) lt!1963455)))

(declare-fun b!4811968 () Bool)

(assert (=> b!4811968 (= e!3006234 (isDefined!10459 (getValueByKey!2500 (toList!7162 lt!1963420) lt!1963414)))))

(assert (= (and d!1540567 res!2046744) b!4811968))

(assert (=> d!1540567 m!5797564))

(declare-fun m!5797638 () Bool)

(assert (=> d!1540567 m!5797638))

(declare-fun m!5797640 () Bool)

(assert (=> d!1540567 m!5797640))

(assert (=> b!4811968 m!5797566))

(assert (=> b!4811968 m!5797566))

(assert (=> b!4811968 m!5797568))

(assert (=> b!4811927 d!1540567))

(declare-fun d!1540569 () Bool)

(assert (=> d!1540569 (contains!18301 (toList!7162 lt!1963420) (tuple2!57475 lt!1963414 lt!1963421))))

(declare-fun lt!1963458 () Unit!141612)

(declare-fun choose!34865 (List!54699 (_ BitVec 64) List!54698) Unit!141612)

(assert (=> d!1540569 (= lt!1963458 (choose!34865 (toList!7162 lt!1963420) lt!1963414 lt!1963421))))

(declare-fun e!3006237 () Bool)

(assert (=> d!1540569 e!3006237))

(declare-fun res!2046747 () Bool)

(assert (=> d!1540569 (=> (not res!2046747) (not e!3006237))))

(assert (=> d!1540569 (= res!2046747 (isStrictlySorted!933 (toList!7162 lt!1963420)))))

(assert (=> d!1540569 (= (lemmaGetValueByKeyImpliesContainsTuple!1007 (toList!7162 lt!1963420) lt!1963414 lt!1963421) lt!1963458)))

(declare-fun b!4811971 () Bool)

(assert (=> b!4811971 (= e!3006237 (= (getValueByKey!2500 (toList!7162 lt!1963420) lt!1963414) (Some!13320 lt!1963421)))))

(assert (= (and d!1540569 res!2046747) b!4811971))

(declare-fun m!5797642 () Bool)

(assert (=> d!1540569 m!5797642))

(declare-fun m!5797644 () Bool)

(assert (=> d!1540569 m!5797644))

(assert (=> d!1540569 m!5797640))

(assert (=> b!4811971 m!5797566))

(assert (=> b!4811927 d!1540569))

(declare-fun d!1540571 () Bool)

(declare-fun res!2046752 () Bool)

(declare-fun e!3006242 () Bool)

(assert (=> d!1540571 (=> res!2046752 e!3006242)))

(assert (=> d!1540571 (= res!2046752 (and ((_ is Cons!54575) (toList!7162 lt!1963420)) (= (_1!32031 (h!61007 (toList!7162 lt!1963420))) lt!1963414)))))

(assert (=> d!1540571 (= (containsKey!4164 (toList!7162 lt!1963420) lt!1963414) e!3006242)))

(declare-fun b!4811976 () Bool)

(declare-fun e!3006243 () Bool)

(assert (=> b!4811976 (= e!3006242 e!3006243)))

(declare-fun res!2046753 () Bool)

(assert (=> b!4811976 (=> (not res!2046753) (not e!3006243))))

(assert (=> b!4811976 (= res!2046753 (and (or (not ((_ is Cons!54575) (toList!7162 lt!1963420))) (bvsle (_1!32031 (h!61007 (toList!7162 lt!1963420))) lt!1963414)) ((_ is Cons!54575) (toList!7162 lt!1963420)) (bvslt (_1!32031 (h!61007 (toList!7162 lt!1963420))) lt!1963414)))))

(declare-fun b!4811977 () Bool)

(assert (=> b!4811977 (= e!3006243 (containsKey!4164 (t!362185 (toList!7162 lt!1963420)) lt!1963414))))

(assert (= (and d!1540571 (not res!2046752)) b!4811976))

(assert (= (and b!4811976 res!2046753) b!4811977))

(declare-fun m!5797646 () Bool)

(assert (=> b!4811977 m!5797646))

(assert (=> b!4811927 d!1540571))

(declare-fun d!1540573 () Bool)

(assert (=> d!1540573 (isDefined!10459 (getValueByKey!2500 (toList!7162 lt!1963420) lt!1963414))))

(declare-fun lt!1963461 () Unit!141612)

(declare-fun choose!34866 (List!54699 (_ BitVec 64)) Unit!141612)

(assert (=> d!1540573 (= lt!1963461 (choose!34866 (toList!7162 lt!1963420) lt!1963414))))

(declare-fun e!3006246 () Bool)

(assert (=> d!1540573 e!3006246))

(declare-fun res!2046756 () Bool)

(assert (=> d!1540573 (=> (not res!2046756) (not e!3006246))))

(assert (=> d!1540573 (= res!2046756 (isStrictlySorted!933 (toList!7162 lt!1963420)))))

(assert (=> d!1540573 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2287 (toList!7162 lt!1963420) lt!1963414) lt!1963461)))

(declare-fun b!4811980 () Bool)

(assert (=> b!4811980 (= e!3006246 (containsKey!4164 (toList!7162 lt!1963420) lt!1963414))))

(assert (= (and d!1540573 res!2046756) b!4811980))

(assert (=> d!1540573 m!5797566))

(assert (=> d!1540573 m!5797566))

(assert (=> d!1540573 m!5797568))

(declare-fun m!5797648 () Bool)

(assert (=> d!1540573 m!5797648))

(assert (=> d!1540573 m!5797640))

(assert (=> b!4811980 m!5797564))

(assert (=> b!4811927 d!1540573))

(declare-fun b!4811989 () Bool)

(declare-fun e!3006251 () Option!13321)

(assert (=> b!4811989 (= e!3006251 (Some!13320 (_2!32031 (h!61007 (toList!7162 lt!1963420)))))))

(declare-fun b!4811992 () Bool)

(declare-fun e!3006252 () Option!13321)

(assert (=> b!4811992 (= e!3006252 None!13320)))

(declare-fun d!1540575 () Bool)

(declare-fun c!820142 () Bool)

(assert (=> d!1540575 (= c!820142 (and ((_ is Cons!54575) (toList!7162 lt!1963420)) (= (_1!32031 (h!61007 (toList!7162 lt!1963420))) lt!1963414)))))

(assert (=> d!1540575 (= (getValueByKey!2500 (toList!7162 lt!1963420) lt!1963414) e!3006251)))

(declare-fun b!4811991 () Bool)

(assert (=> b!4811991 (= e!3006252 (getValueByKey!2500 (t!362185 (toList!7162 lt!1963420)) lt!1963414))))

(declare-fun b!4811990 () Bool)

(assert (=> b!4811990 (= e!3006251 e!3006252)))

(declare-fun c!820143 () Bool)

(assert (=> b!4811990 (= c!820143 (and ((_ is Cons!54575) (toList!7162 lt!1963420)) (not (= (_1!32031 (h!61007 (toList!7162 lt!1963420))) lt!1963414))))))

(assert (= (and d!1540575 c!820142) b!4811989))

(assert (= (and d!1540575 (not c!820142)) b!4811990))

(assert (= (and b!4811990 c!820143) b!4811991))

(assert (= (and b!4811990 (not c!820143)) b!4811992))

(declare-fun m!5797650 () Bool)

(assert (=> b!4811991 m!5797650))

(assert (=> b!4811927 d!1540575))

(declare-fun d!1540577 () Bool)

(declare-fun res!2046761 () Bool)

(declare-fun e!3006257 () Bool)

(assert (=> d!1540577 (=> res!2046761 e!3006257)))

(assert (=> d!1540577 (= res!2046761 ((_ is Nil!54575) (toList!7162 lt!1963418)))))

(assert (=> d!1540577 (= (forall!12398 (toList!7162 lt!1963418) lambda!233799) e!3006257)))

(declare-fun b!4811997 () Bool)

(declare-fun e!3006258 () Bool)

(assert (=> b!4811997 (= e!3006257 e!3006258)))

(declare-fun res!2046762 () Bool)

(assert (=> b!4811997 (=> (not res!2046762) (not e!3006258))))

(declare-fun dynLambda!22141 (Int tuple2!57474) Bool)

(assert (=> b!4811997 (= res!2046762 (dynLambda!22141 lambda!233799 (h!61007 (toList!7162 lt!1963418))))))

(declare-fun b!4811998 () Bool)

(assert (=> b!4811998 (= e!3006258 (forall!12398 (t!362185 (toList!7162 lt!1963418)) lambda!233799))))

(assert (= (and d!1540577 (not res!2046761)) b!4811997))

(assert (= (and b!4811997 res!2046762) b!4811998))

(declare-fun b_lambda!188265 () Bool)

(assert (=> (not b_lambda!188265) (not b!4811997)))

(declare-fun m!5797652 () Bool)

(assert (=> b!4811997 m!5797652))

(declare-fun m!5797654 () Bool)

(assert (=> b!4811998 m!5797654))

(assert (=> b!4811928 d!1540577))

(declare-fun d!1540579 () Bool)

(assert (=> d!1540579 (= (array_inv!6017 (_keys!5422 (v!48901 (underlying!10353 (v!48902 (underlying!10354 thiss!41921)))))) (bvsge (size!36577 (_keys!5422 (v!48901 (underlying!10353 (v!48902 (underlying!10354 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4811923 d!1540579))

(declare-fun d!1540581 () Bool)

(assert (=> d!1540581 (= (array_inv!6018 (_values!5391 (v!48901 (underlying!10353 (v!48902 (underlying!10354 thiss!41921)))))) (bvsge (size!36578 (_values!5391 (v!48901 (underlying!10353 (v!48902 (underlying!10354 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4811923 d!1540581))

(declare-fun bs!1160157 () Bool)

(declare-fun b!4812003 () Bool)

(assert (= bs!1160157 (and b!4812003 b!4811930)))

(declare-fun lambda!233805 () Int)

(assert (=> bs!1160157 (= lambda!233805 lambda!233798)))

(declare-fun bs!1160158 () Bool)

(assert (= bs!1160158 (and b!4812003 b!4811928)))

(assert (=> bs!1160158 (= lambda!233805 lambda!233799)))

(declare-fun bs!1160159 () Bool)

(assert (= bs!1160159 (and b!4812003 d!1540559)))

(assert (=> bs!1160159 (= lambda!233805 lambda!233802)))

(declare-fun d!1540583 () Bool)

(declare-fun res!2046767 () Bool)

(declare-fun e!3006261 () Bool)

(assert (=> d!1540583 (=> (not res!2046767) (not e!3006261))))

(assert (=> d!1540583 (= res!2046767 (valid!4104 (v!48902 (underlying!10354 thiss!41921))))))

(assert (=> d!1540583 (= (valid!4103 thiss!41921) e!3006261)))

(declare-fun res!2046768 () Bool)

(assert (=> b!4812003 (=> (not res!2046768) (not e!3006261))))

(assert (=> b!4812003 (= res!2046768 (forall!12398 (toList!7162 (map!12446 (v!48902 (underlying!10354 thiss!41921)))) lambda!233805))))

(declare-fun b!4812004 () Bool)

(declare-fun allKeysSameHashInMap!2412 (ListLongMap!5637 Hashable!7084) Bool)

(assert (=> b!4812004 (= e!3006261 (allKeysSameHashInMap!2412 (map!12446 (v!48902 (underlying!10354 thiss!41921))) (hashF!13360 thiss!41921)))))

(assert (= (and d!1540583 res!2046767) b!4812003))

(assert (= (and b!4812003 res!2046768) b!4812004))

(assert (=> d!1540583 m!5797602))

(assert (=> b!4812003 m!5797580))

(declare-fun m!5797656 () Bool)

(assert (=> b!4812003 m!5797656))

(assert (=> b!4812004 m!5797580))

(assert (=> b!4812004 m!5797580))

(declare-fun m!5797658 () Bool)

(assert (=> b!4812004 m!5797658))

(assert (=> b!4811929 d!1540583))

(declare-fun d!1540585 () Bool)

(assert (=> d!1540585 (dynLambda!22141 lambda!233798 lt!1963413)))

(declare-fun lt!1963464 () Unit!141612)

(declare-fun choose!34867 (List!54699 Int tuple2!57474) Unit!141612)

(assert (=> d!1540585 (= lt!1963464 (choose!34867 (toList!7162 lt!1963420) lambda!233798 lt!1963413))))

(declare-fun e!3006264 () Bool)

(assert (=> d!1540585 e!3006264))

(declare-fun res!2046771 () Bool)

(assert (=> d!1540585 (=> (not res!2046771) (not e!3006264))))

(assert (=> d!1540585 (= res!2046771 (forall!12398 (toList!7162 lt!1963420) lambda!233798))))

(assert (=> d!1540585 (= (forallContained!4273 (toList!7162 lt!1963420) lambda!233798 lt!1963413) lt!1963464)))

(declare-fun b!4812007 () Bool)

(assert (=> b!4812007 (= e!3006264 (contains!18301 (toList!7162 lt!1963420) lt!1963413))))

(assert (= (and d!1540585 res!2046771) b!4812007))

(declare-fun b_lambda!188267 () Bool)

(assert (=> (not b_lambda!188267) (not d!1540585)))

(declare-fun m!5797660 () Bool)

(assert (=> d!1540585 m!5797660))

(declare-fun m!5797662 () Bool)

(assert (=> d!1540585 m!5797662))

(declare-fun m!5797664 () Bool)

(assert (=> d!1540585 m!5797664))

(assert (=> b!4812007 m!5797584))

(assert (=> b!4811930 d!1540585))

(assert (=> b!4811930 d!1540561))

(declare-fun d!1540587 () Bool)

(declare-fun e!3006267 () Bool)

(assert (=> d!1540587 e!3006267))

(declare-fun c!820146 () Bool)

(assert (=> d!1540587 (= c!820146 (contains!18300 (v!48902 (underlying!10354 thiss!41921)) lt!1963414))))

(declare-fun lt!1963467 () List!54698)

(declare-fun apply!13176 (LongMapFixedSize!10146 (_ BitVec 64)) List!54698)

(assert (=> d!1540587 (= lt!1963467 (apply!13176 (v!48901 (underlying!10353 (v!48902 (underlying!10354 thiss!41921)))) lt!1963414))))

(assert (=> d!1540587 (valid!4104 (v!48902 (underlying!10354 thiss!41921)))))

(assert (=> d!1540587 (= (apply!13175 (v!48902 (underlying!10354 thiss!41921)) lt!1963414) lt!1963467)))

(declare-fun b!4812012 () Bool)

(declare-fun get!18671 (Option!13321) List!54698)

(assert (=> b!4812012 (= e!3006267 (= lt!1963467 (get!18671 (getValueByKey!2500 (toList!7162 (map!12446 (v!48902 (underlying!10354 thiss!41921)))) lt!1963414))))))

(declare-fun b!4812013 () Bool)

(declare-fun dynLambda!22142 (Int (_ BitVec 64)) List!54698)

(assert (=> b!4812013 (= e!3006267 (= lt!1963467 (dynLambda!22142 (defaultEntry!5495 (v!48901 (underlying!10353 (v!48902 (underlying!10354 thiss!41921))))) lt!1963414)))))

(assert (=> b!4812013 ((_ is LongMap!5073) (v!48902 (underlying!10354 thiss!41921)))))

(assert (= (and d!1540587 c!820146) b!4812012))

(assert (= (and d!1540587 (not c!820146)) b!4812013))

(declare-fun b_lambda!188269 () Bool)

(assert (=> (not b_lambda!188269) (not b!4812013)))

(declare-fun t!362187 () Bool)

(declare-fun tb!257539 () Bool)

(assert (=> (and b!4811923 (= (defaultEntry!5495 (v!48901 (underlying!10353 (v!48902 (underlying!10354 thiss!41921))))) (defaultEntry!5495 (v!48901 (underlying!10353 (v!48902 (underlying!10354 thiss!41921)))))) t!362187) tb!257539))

(assert (=> b!4812013 t!362187))

(declare-fun result!319630 () Bool)

(declare-fun b_and!342041 () Bool)

(assert (= b_and!342037 (and (=> t!362187 result!319630) b_and!342041)))

(assert (=> d!1540587 m!5797594))

(declare-fun m!5797666 () Bool)

(assert (=> d!1540587 m!5797666))

(assert (=> d!1540587 m!5797602))

(assert (=> b!4812012 m!5797580))

(declare-fun m!5797668 () Bool)

(assert (=> b!4812012 m!5797668))

(assert (=> b!4812012 m!5797668))

(declare-fun m!5797670 () Bool)

(assert (=> b!4812012 m!5797670))

(declare-fun m!5797672 () Bool)

(assert (=> b!4812013 m!5797672))

(assert (=> b!4811930 d!1540587))

(declare-fun d!1540589 () Bool)

(declare-fun lt!1963470 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9779 (List!54699) (InoxSet tuple2!57474))

(assert (=> d!1540589 (= lt!1963470 (select (content!9779 (toList!7162 lt!1963420)) lt!1963413))))

(declare-fun e!3006273 () Bool)

(assert (=> d!1540589 (= lt!1963470 e!3006273)))

(declare-fun res!2046776 () Bool)

(assert (=> d!1540589 (=> (not res!2046776) (not e!3006273))))

(assert (=> d!1540589 (= res!2046776 ((_ is Cons!54575) (toList!7162 lt!1963420)))))

(assert (=> d!1540589 (= (contains!18301 (toList!7162 lt!1963420) lt!1963413) lt!1963470)))

(declare-fun b!4812018 () Bool)

(declare-fun e!3006272 () Bool)

(assert (=> b!4812018 (= e!3006273 e!3006272)))

(declare-fun res!2046777 () Bool)

(assert (=> b!4812018 (=> res!2046777 e!3006272)))

(assert (=> b!4812018 (= res!2046777 (= (h!61007 (toList!7162 lt!1963420)) lt!1963413))))

(declare-fun b!4812019 () Bool)

(assert (=> b!4812019 (= e!3006272 (contains!18301 (t!362185 (toList!7162 lt!1963420)) lt!1963413))))

(assert (= (and d!1540589 res!2046776) b!4812018))

(assert (= (and b!4812018 (not res!2046777)) b!4812019))

(declare-fun m!5797674 () Bool)

(assert (=> d!1540589 m!5797674))

(declare-fun m!5797676 () Bool)

(assert (=> d!1540589 m!5797676))

(declare-fun m!5797678 () Bool)

(assert (=> b!4812019 m!5797678))

(assert (=> b!4811930 d!1540589))

(declare-fun tp_is_empty!34029 () Bool)

(declare-fun b!4812024 () Bool)

(declare-fun e!3006276 () Bool)

(declare-fun tp!1361119 () Bool)

(assert (=> b!4812024 (= e!3006276 (and tp_is_empty!34027 tp_is_empty!34029 tp!1361119))))

(assert (=> b!4811923 (= tp!1361116 e!3006276)))

(assert (= (and b!4811923 ((_ is Cons!54574) (zeroValue!5366 (v!48901 (underlying!10353 (v!48902 (underlying!10354 thiss!41921))))))) b!4812024))

(declare-fun tp!1361120 () Bool)

(declare-fun b!4812025 () Bool)

(declare-fun e!3006277 () Bool)

(assert (=> b!4812025 (= e!3006277 (and tp_is_empty!34027 tp_is_empty!34029 tp!1361120))))

(assert (=> b!4811923 (= tp!1361114 e!3006277)))

(assert (= (and b!4811923 ((_ is Cons!54574) (minValue!5366 (v!48901 (underlying!10353 (v!48902 (underlying!10354 thiss!41921))))))) b!4812025))

(declare-fun mapNonEmpty!22403 () Bool)

(declare-fun mapRes!22403 () Bool)

(declare-fun tp!1361127 () Bool)

(declare-fun e!3006282 () Bool)

(assert (=> mapNonEmpty!22403 (= mapRes!22403 (and tp!1361127 e!3006282))))

(declare-fun mapRest!22403 () (Array (_ BitVec 32) List!54698))

(declare-fun mapValue!22403 () List!54698)

(declare-fun mapKey!22403 () (_ BitVec 32))

(assert (=> mapNonEmpty!22403 (= mapRest!22400 (store mapRest!22403 mapKey!22403 mapValue!22403))))

(declare-fun mapIsEmpty!22403 () Bool)

(assert (=> mapIsEmpty!22403 mapRes!22403))

(declare-fun b!4812032 () Bool)

(declare-fun tp!1361128 () Bool)

(assert (=> b!4812032 (= e!3006282 (and tp_is_empty!34027 tp_is_empty!34029 tp!1361128))))

(declare-fun e!3006283 () Bool)

(declare-fun tp!1361129 () Bool)

(declare-fun b!4812033 () Bool)

(assert (=> b!4812033 (= e!3006283 (and tp_is_empty!34027 tp_is_empty!34029 tp!1361129))))

(declare-fun condMapEmpty!22403 () Bool)

(declare-fun mapDefault!22403 () List!54698)

(assert (=> mapNonEmpty!22400 (= condMapEmpty!22403 (= mapRest!22400 ((as const (Array (_ BitVec 32) List!54698)) mapDefault!22403)))))

(assert (=> mapNonEmpty!22400 (= tp!1361112 (and e!3006283 mapRes!22403))))

(assert (= (and mapNonEmpty!22400 condMapEmpty!22403) mapIsEmpty!22403))

(assert (= (and mapNonEmpty!22400 (not condMapEmpty!22403)) mapNonEmpty!22403))

(assert (= (and mapNonEmpty!22403 ((_ is Cons!54574) mapValue!22403)) b!4812032))

(assert (= (and mapNonEmpty!22400 ((_ is Cons!54574) mapDefault!22403)) b!4812033))

(declare-fun m!5797680 () Bool)

(assert (=> mapNonEmpty!22403 m!5797680))

(declare-fun e!3006284 () Bool)

(declare-fun tp!1361130 () Bool)

(declare-fun b!4812034 () Bool)

(assert (=> b!4812034 (= e!3006284 (and tp_is_empty!34027 tp_is_empty!34029 tp!1361130))))

(assert (=> mapNonEmpty!22400 (= tp!1361113 e!3006284)))

(assert (= (and mapNonEmpty!22400 ((_ is Cons!54574) mapValue!22400)) b!4812034))

(declare-fun b!4812035 () Bool)

(declare-fun e!3006285 () Bool)

(declare-fun tp!1361131 () Bool)

(assert (=> b!4812035 (= e!3006285 (and tp_is_empty!34027 tp_is_empty!34029 tp!1361131))))

(assert (=> b!4811925 (= tp!1361111 e!3006285)))

(assert (= (and b!4811925 ((_ is Cons!54574) mapDefault!22400)) b!4812035))

(declare-fun b_lambda!188271 () Bool)

(assert (= b_lambda!188269 (or (and b!4811923 b_free!130235) b_lambda!188271)))

(declare-fun b_lambda!188273 () Bool)

(assert (= b_lambda!188265 (or b!4811928 b_lambda!188273)))

(declare-fun bs!1160160 () Bool)

(declare-fun d!1540591 () Bool)

(assert (= bs!1160160 (and d!1540591 b!4811928)))

(declare-fun noDuplicateKeys!2391 (List!54698) Bool)

(assert (=> bs!1160160 (= (dynLambda!22141 lambda!233799 (h!61007 (toList!7162 lt!1963418))) (noDuplicateKeys!2391 (_2!32031 (h!61007 (toList!7162 lt!1963418)))))))

(declare-fun m!5797682 () Bool)

(assert (=> bs!1160160 m!5797682))

(assert (=> b!4811997 d!1540591))

(declare-fun b_lambda!188275 () Bool)

(assert (= b_lambda!188267 (or b!4811930 b_lambda!188275)))

(declare-fun bs!1160161 () Bool)

(declare-fun d!1540593 () Bool)

(assert (= bs!1160161 (and d!1540593 b!4811930)))

(assert (=> bs!1160161 (= (dynLambda!22141 lambda!233798 lt!1963413) (noDuplicateKeys!2391 (_2!32031 lt!1963413)))))

(declare-fun m!5797684 () Bool)

(assert (=> bs!1160161 m!5797684))

(assert (=> d!1540585 d!1540593))

(check-sat (not b!4811964) (not b!4812032) (not bs!1160161) (not b!4812035) (not b!4811958) (not d!1540563) (not mapNonEmpty!22403) (not b!4811965) (not d!1540567) (not b!4812004) (not d!1540555) (not bm!335842) (not b!4811957) (not b_lambda!188271) tp_is_empty!34029 (not tb!257539) (not b!4812024) (not b!4811968) (not d!1540583) (not d!1540587) (not b_next!131025) (not b!4812025) (not d!1540561) (not b!4812012) (not b_lambda!188275) tp_is_empty!34027 (not b!4811960) (not b!4811998) (not d!1540573) (not b_next!131027) (not b!4812007) (not b!4812034) b_and!342041 (not b!4812033) (not b!4811963) (not b!4811937) (not b!4811962) (not b!4811991) (not b_lambda!188273) (not b!4811971) (not bs!1160160) (not d!1540559) (not b!4812019) (not b!4811980) (not d!1540557) b_and!342039 (not b!4811977) (not b!4812003) (not d!1540569) (not d!1540565) (not d!1540589) (not d!1540585))
(check-sat b_and!342041 b_and!342039 (not b_next!131025) (not b_next!131027))
