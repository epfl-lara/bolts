; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488152 () Bool)

(assert start!488152)

(declare-fun b!4769466 () Bool)

(declare-fun b_free!129747 () Bool)

(declare-fun b_next!130537 () Bool)

(assert (=> b!4769466 (= b_free!129747 (not b_next!130537))))

(declare-fun tp!1356141 () Bool)

(declare-fun b_and!341483 () Bool)

(assert (=> b!4769466 (= tp!1356141 b_and!341483)))

(declare-fun b!4769460 () Bool)

(declare-fun b_free!129749 () Bool)

(declare-fun b_next!130539 () Bool)

(assert (=> b!4769460 (= b_free!129749 (not b_next!130539))))

(declare-fun tp!1356142 () Bool)

(declare-fun b_and!341485 () Bool)

(assert (=> b!4769460 (= tp!1356142 b_and!341485)))

(declare-fun b!4769456 () Bool)

(declare-fun e!2977204 () Bool)

(declare-fun tp!1356137 () Bool)

(declare-fun mapRes!21955 () Bool)

(assert (=> b!4769456 (= e!2977204 (and tp!1356137 mapRes!21955))))

(declare-fun condMapEmpty!21955 () Bool)

(declare-datatypes ((K!15019 0))(
  ( (K!15020 (val!20321 Int)) )
))
(declare-datatypes ((V!15265 0))(
  ( (V!15266 (val!20322 Int)) )
))
(declare-datatypes ((tuple2!55620 0))(
  ( (tuple2!55621 (_1!31104 K!15019) (_2!31104 V!15265)) )
))
(declare-datatypes ((array!18134 0))(
  ( (array!18135 (arr!8087 (Array (_ BitVec 32) (_ BitVec 64))) (size!36317 (_ BitVec 32))) )
))
(declare-datatypes ((List!53656 0))(
  ( (Nil!53532) (Cons!53532 (h!59944 tuple2!55620) (t!361094 List!53656)) )
))
(declare-datatypes ((array!18136 0))(
  ( (array!18137 (arr!8088 (Array (_ BitVec 32) List!53656)) (size!36318 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6612 0))(
  ( (HashableExt!6611 (__x!32601 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9902 0))(
  ( (LongMapFixedSize!9903 (defaultEntry!5369 Int) (mask!14722 (_ BitVec 32)) (extraKeys!5226 (_ BitVec 32)) (zeroValue!5239 List!53656) (minValue!5239 List!53656) (_size!9927 (_ BitVec 32)) (_keys!5293 array!18134) (_values!5264 array!18136) (_vacant!5016 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19569 0))(
  ( (Cell!19570 (v!47790 LongMapFixedSize!9902)) )
))
(declare-datatypes ((MutLongMap!4951 0))(
  ( (LongMap!4951 (underlying!10109 Cell!19569)) (MutLongMapExt!4950 (__x!32602 Int)) )
))
(declare-datatypes ((Cell!19571 0))(
  ( (Cell!19572 (v!47791 MutLongMap!4951)) )
))
(declare-datatypes ((MutableMap!4835 0))(
  ( (MutableMapExt!4834 (__x!32603 Int)) (HashMap!4835 (underlying!10110 Cell!19571) (hashF!12503 Hashable!6612) (_size!9928 (_ BitVec 32)) (defaultValue!5006 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4835)

(declare-fun mapDefault!21955 () List!53656)

(assert (=> b!4769456 (= condMapEmpty!21955 (= (arr!8088 (_values!5264 (v!47790 (underlying!10109 (v!47791 (underlying!10110 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53656)) mapDefault!21955)))))

(declare-fun b!4769457 () Bool)

(declare-fun e!2977206 () Bool)

(declare-fun e!2977211 () Bool)

(assert (=> b!4769457 (= e!2977206 e!2977211)))

(declare-fun b!4769458 () Bool)

(declare-fun e!2977210 () Bool)

(declare-fun e!2977207 () Bool)

(assert (=> b!4769458 (= e!2977210 (not e!2977207))))

(declare-fun res!2022866 () Bool)

(assert (=> b!4769458 (=> (not res!2022866) (not e!2977207))))

(declare-datatypes ((tuple2!55622 0))(
  ( (tuple2!55623 (_1!31105 (_ BitVec 64)) (_2!31105 List!53656)) )
))
(declare-datatypes ((List!53657 0))(
  ( (Nil!53533) (Cons!53533 (h!59945 tuple2!55622) (t!361095 List!53657)) )
))
(declare-datatypes ((ListLongMap!4729 0))(
  ( (ListLongMap!4730 (toList!6324 List!53657)) )
))
(declare-fun lt!1932171 () ListLongMap!4729)

(declare-fun isStrictlySorted!815 (List!53657) Bool)

(assert (=> b!4769458 (= res!2022866 (isStrictlySorted!815 (toList!6324 lt!1932171)))))

(declare-datatypes ((Option!12715 0))(
  ( (None!12714) (Some!12714 (v!47792 List!53656)) )
))
(declare-fun lt!1932173 () Option!12715)

(declare-fun isDefined!9865 (Option!12715) Bool)

(assert (=> b!4769458 (isDefined!9865 lt!1932173)))

(declare-fun lt!1932168 () (_ BitVec 64))

(declare-fun getValueByKey!2208 (List!53657 (_ BitVec 64)) Option!12715)

(assert (=> b!4769458 (= lt!1932173 (getValueByKey!2208 (toList!6324 lt!1932171) lt!1932168))))

(declare-datatypes ((Unit!138368 0))(
  ( (Unit!138369) )
))
(declare-fun lt!1932170 () Unit!138368)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2004 (List!53657 (_ BitVec 64)) Unit!138368)

(assert (=> b!4769458 (= lt!1932170 (lemmaContainsKeyImpliesGetValueByKeyDefined!2004 (toList!6324 lt!1932171) lt!1932168))))

(declare-fun b!4769459 () Bool)

(declare-fun e!2977202 () Bool)

(assert (=> b!4769459 (= e!2977202 e!2977210)))

(declare-fun res!2022870 () Bool)

(assert (=> b!4769459 (=> (not res!2022870) (not e!2977210))))

(declare-fun lt!1932169 () List!53656)

(declare-fun contains!16894 (List!53657 tuple2!55622) Bool)

(assert (=> b!4769459 (= res!2022870 (not (contains!16894 (toList!6324 lt!1932171) (tuple2!55623 lt!1932168 lt!1932169))))))

(declare-fun apply!12656 (MutLongMap!4951 (_ BitVec 64)) List!53656)

(assert (=> b!4769459 (= lt!1932169 (apply!12656 (v!47791 (underlying!10110 thiss!42052)) lt!1932168))))

(declare-fun map!12029 (MutLongMap!4951) ListLongMap!4729)

(assert (=> b!4769459 (= lt!1932171 (map!12029 (v!47791 (underlying!10110 thiss!42052))))))

(declare-fun key!1776 () K!15019)

(declare-fun hash!4589 (Hashable!6612 K!15019) (_ BitVec 64))

(assert (=> b!4769459 (= lt!1932168 (hash!4589 (hashF!12503 thiss!42052) key!1776))))

(declare-fun res!2022868 () Bool)

(assert (=> start!488152 (=> (not res!2022868) (not e!2977202))))

(get-info :version)

(assert (=> start!488152 (= res!2022868 ((_ is HashMap!4835) thiss!42052))))

(assert (=> start!488152 e!2977202))

(declare-fun e!2977205 () Bool)

(assert (=> start!488152 e!2977205))

(declare-fun tp_is_empty!32509 () Bool)

(assert (=> start!488152 tp_is_empty!32509))

(declare-fun e!2977203 () Bool)

(assert (=> b!4769460 (= e!2977205 (and e!2977203 tp!1356142))))

(declare-fun b!4769461 () Bool)

(declare-fun lt!1932172 () MutLongMap!4951)

(assert (=> b!4769461 (= e!2977203 (and e!2977206 ((_ is LongMap!4951) lt!1932172)))))

(assert (=> b!4769461 (= lt!1932172 (v!47791 (underlying!10110 thiss!42052)))))

(declare-fun b!4769462 () Bool)

(declare-fun res!2022869 () Bool)

(assert (=> b!4769462 (=> (not res!2022869) (not e!2977202))))

(declare-fun contains!16895 (MutableMap!4835 K!15019) Bool)

(assert (=> b!4769462 (= res!2022869 (contains!16895 thiss!42052 key!1776))))

(declare-fun b!4769463 () Bool)

(declare-fun res!2022867 () Bool)

(assert (=> b!4769463 (=> (not res!2022867) (not e!2977202))))

(declare-fun valid!3959 (MutableMap!4835) Bool)

(assert (=> b!4769463 (= res!2022867 (valid!3959 thiss!42052))))

(declare-fun b!4769464 () Bool)

(declare-fun e!2977209 () Bool)

(assert (=> b!4769464 (= e!2977211 e!2977209)))

(declare-fun b!4769465 () Bool)

(assert (=> b!4769465 (= e!2977207 (= lt!1932173 (Some!12714 lt!1932169)))))

(declare-fun mapNonEmpty!21955 () Bool)

(declare-fun tp!1356139 () Bool)

(declare-fun tp!1356143 () Bool)

(assert (=> mapNonEmpty!21955 (= mapRes!21955 (and tp!1356139 tp!1356143))))

(declare-fun mapRest!21955 () (Array (_ BitVec 32) List!53656))

(declare-fun mapKey!21955 () (_ BitVec 32))

(declare-fun mapValue!21955 () List!53656)

(assert (=> mapNonEmpty!21955 (= (arr!8088 (_values!5264 (v!47790 (underlying!10109 (v!47791 (underlying!10110 thiss!42052)))))) (store mapRest!21955 mapKey!21955 mapValue!21955))))

(declare-fun tp!1356138 () Bool)

(declare-fun tp!1356140 () Bool)

(declare-fun array_inv!5827 (array!18134) Bool)

(declare-fun array_inv!5828 (array!18136) Bool)

(assert (=> b!4769466 (= e!2977209 (and tp!1356141 tp!1356140 tp!1356138 (array_inv!5827 (_keys!5293 (v!47790 (underlying!10109 (v!47791 (underlying!10110 thiss!42052)))))) (array_inv!5828 (_values!5264 (v!47790 (underlying!10109 (v!47791 (underlying!10110 thiss!42052)))))) e!2977204))))

(declare-fun mapIsEmpty!21955 () Bool)

(assert (=> mapIsEmpty!21955 mapRes!21955))

(assert (= (and start!488152 res!2022868) b!4769463))

(assert (= (and b!4769463 res!2022867) b!4769462))

(assert (= (and b!4769462 res!2022869) b!4769459))

(assert (= (and b!4769459 res!2022870) b!4769458))

(assert (= (and b!4769458 res!2022866) b!4769465))

(assert (= (and b!4769456 condMapEmpty!21955) mapIsEmpty!21955))

(assert (= (and b!4769456 (not condMapEmpty!21955)) mapNonEmpty!21955))

(assert (= b!4769466 b!4769456))

(assert (= b!4769464 b!4769466))

(assert (= b!4769457 b!4769464))

(assert (= (and b!4769461 ((_ is LongMap!4951) (v!47791 (underlying!10110 thiss!42052)))) b!4769457))

(assert (= b!4769460 b!4769461))

(assert (= (and start!488152 ((_ is HashMap!4835) thiss!42052)) b!4769460))

(declare-fun m!5741114 () Bool)

(assert (=> b!4769462 m!5741114))

(declare-fun m!5741116 () Bool)

(assert (=> b!4769459 m!5741116))

(declare-fun m!5741118 () Bool)

(assert (=> b!4769459 m!5741118))

(declare-fun m!5741120 () Bool)

(assert (=> b!4769459 m!5741120))

(declare-fun m!5741122 () Bool)

(assert (=> b!4769459 m!5741122))

(declare-fun m!5741124 () Bool)

(assert (=> b!4769463 m!5741124))

(declare-fun m!5741126 () Bool)

(assert (=> b!4769466 m!5741126))

(declare-fun m!5741128 () Bool)

(assert (=> b!4769466 m!5741128))

(declare-fun m!5741130 () Bool)

(assert (=> mapNonEmpty!21955 m!5741130))

(declare-fun m!5741132 () Bool)

(assert (=> b!4769458 m!5741132))

(declare-fun m!5741134 () Bool)

(assert (=> b!4769458 m!5741134))

(declare-fun m!5741136 () Bool)

(assert (=> b!4769458 m!5741136))

(declare-fun m!5741138 () Bool)

(assert (=> b!4769458 m!5741138))

(check-sat tp_is_empty!32509 (not b!4769458) (not b!4769462) (not b!4769459) b_and!341485 (not b!4769466) (not b!4769463) (not b_next!130539) b_and!341483 (not b!4769456) (not b_next!130537) (not mapNonEmpty!21955))
(check-sat b_and!341485 b_and!341483 (not b_next!130539) (not b_next!130537))
(get-model)

(declare-fun d!1524497 () Bool)

(declare-fun res!2022875 () Bool)

(declare-fun e!2977214 () Bool)

(assert (=> d!1524497 (=> (not res!2022875) (not e!2977214))))

(declare-fun valid!3960 (MutLongMap!4951) Bool)

(assert (=> d!1524497 (= res!2022875 (valid!3960 (v!47791 (underlying!10110 thiss!42052))))))

(assert (=> d!1524497 (= (valid!3959 thiss!42052) e!2977214)))

(declare-fun b!4769471 () Bool)

(declare-fun res!2022876 () Bool)

(assert (=> b!4769471 (=> (not res!2022876) (not e!2977214))))

(declare-fun lambda!224778 () Int)

(declare-fun forall!11884 (List!53657 Int) Bool)

(assert (=> b!4769471 (= res!2022876 (forall!11884 (toList!6324 (map!12029 (v!47791 (underlying!10110 thiss!42052)))) lambda!224778))))

(declare-fun b!4769472 () Bool)

(declare-fun allKeysSameHashInMap!2028 (ListLongMap!4729 Hashable!6612) Bool)

(assert (=> b!4769472 (= e!2977214 (allKeysSameHashInMap!2028 (map!12029 (v!47791 (underlying!10110 thiss!42052))) (hashF!12503 thiss!42052)))))

(assert (= (and d!1524497 res!2022875) b!4769471))

(assert (= (and b!4769471 res!2022876) b!4769472))

(declare-fun m!5741140 () Bool)

(assert (=> d!1524497 m!5741140))

(assert (=> b!4769471 m!5741120))

(declare-fun m!5741142 () Bool)

(assert (=> b!4769471 m!5741142))

(assert (=> b!4769472 m!5741120))

(assert (=> b!4769472 m!5741120))

(declare-fun m!5741144 () Bool)

(assert (=> b!4769472 m!5741144))

(assert (=> b!4769463 d!1524497))

(declare-fun bs!1149378 () Bool)

(declare-fun b!4769501 () Bool)

(assert (= bs!1149378 (and b!4769501 b!4769471)))

(declare-fun lambda!224781 () Int)

(assert (=> bs!1149378 (= lambda!224781 lambda!224778)))

(declare-fun b!4769495 () Bool)

(declare-fun e!2977230 () Bool)

(declare-fun call!334378 () Bool)

(assert (=> b!4769495 (= e!2977230 call!334378)))

(declare-fun b!4769496 () Bool)

(assert (=> b!4769496 false))

(declare-fun lt!1932214 () Unit!138368)

(declare-fun lt!1932233 () Unit!138368)

(assert (=> b!4769496 (= lt!1932214 lt!1932233)))

(declare-fun lt!1932219 () List!53657)

(declare-fun lt!1932225 () (_ BitVec 64))

(declare-fun lt!1932228 () List!53656)

(assert (=> b!4769496 (contains!16894 lt!1932219 (tuple2!55623 lt!1932225 lt!1932228))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!943 (List!53657 (_ BitVec 64) List!53656) Unit!138368)

(assert (=> b!4769496 (= lt!1932233 (lemmaGetValueByKeyImpliesContainsTuple!943 lt!1932219 lt!1932225 lt!1932228))))

(assert (=> b!4769496 (= lt!1932228 (apply!12656 (v!47791 (underlying!10110 thiss!42052)) lt!1932225))))

(assert (=> b!4769496 (= lt!1932219 (toList!6324 (map!12029 (v!47791 (underlying!10110 thiss!42052)))))))

(declare-fun lt!1932216 () Unit!138368)

(declare-fun lt!1932223 () Unit!138368)

(assert (=> b!4769496 (= lt!1932216 lt!1932223)))

(declare-fun lt!1932215 () List!53657)

(assert (=> b!4769496 (isDefined!9865 (getValueByKey!2208 lt!1932215 lt!1932225))))

(assert (=> b!4769496 (= lt!1932223 (lemmaContainsKeyImpliesGetValueByKeyDefined!2004 lt!1932215 lt!1932225))))

(assert (=> b!4769496 (= lt!1932215 (toList!6324 (map!12029 (v!47791 (underlying!10110 thiss!42052)))))))

(declare-fun lt!1932221 () Unit!138368)

(declare-fun lt!1932227 () Unit!138368)

(assert (=> b!4769496 (= lt!1932221 lt!1932227)))

(declare-fun lt!1932218 () List!53657)

(declare-fun containsKey!3678 (List!53657 (_ BitVec 64)) Bool)

(assert (=> b!4769496 (containsKey!3678 lt!1932218 lt!1932225)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!209 (List!53657 (_ BitVec 64)) Unit!138368)

(assert (=> b!4769496 (= lt!1932227 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!209 lt!1932218 lt!1932225))))

(assert (=> b!4769496 (= lt!1932218 (toList!6324 (map!12029 (v!47791 (underlying!10110 thiss!42052)))))))

(declare-fun e!2977229 () Unit!138368)

(declare-fun Unit!138370 () Unit!138368)

(assert (=> b!4769496 (= e!2977229 Unit!138370)))

(declare-fun b!4769497 () Bool)

(declare-fun e!2977234 () Unit!138368)

(declare-fun Unit!138371 () Unit!138368)

(assert (=> b!4769497 (= e!2977234 Unit!138371)))

(declare-fun d!1524499 () Bool)

(declare-fun lt!1932229 () Bool)

(declare-datatypes ((ListMap!5813 0))(
  ( (ListMap!5814 (toList!6325 List!53656)) )
))
(declare-fun contains!16896 (ListMap!5813 K!15019) Bool)

(declare-fun map!12030 (MutableMap!4835) ListMap!5813)

(assert (=> d!1524499 (= lt!1932229 (contains!16896 (map!12030 thiss!42052) key!1776))))

(declare-fun e!2977232 () Bool)

(assert (=> d!1524499 (= lt!1932229 e!2977232)))

(declare-fun res!2022884 () Bool)

(assert (=> d!1524499 (=> (not res!2022884) (not e!2977232))))

(declare-fun contains!16897 (MutLongMap!4951 (_ BitVec 64)) Bool)

(assert (=> d!1524499 (= res!2022884 (contains!16897 (v!47791 (underlying!10110 thiss!42052)) lt!1932225))))

(declare-fun lt!1932226 () Unit!138368)

(declare-fun e!2977231 () Unit!138368)

(assert (=> d!1524499 (= lt!1932226 e!2977231)))

(declare-fun c!813557 () Bool)

(declare-fun extractMap!2158 (List!53657) ListMap!5813)

(assert (=> d!1524499 (= c!813557 (contains!16896 (extractMap!2158 (toList!6324 (map!12029 (v!47791 (underlying!10110 thiss!42052))))) key!1776))))

(declare-fun lt!1932222 () Unit!138368)

(assert (=> d!1524499 (= lt!1932222 e!2977234)))

(declare-fun c!813554 () Bool)

(assert (=> d!1524499 (= c!813554 (contains!16897 (v!47791 (underlying!10110 thiss!42052)) lt!1932225))))

(assert (=> d!1524499 (= lt!1932225 (hash!4589 (hashF!12503 thiss!42052) key!1776))))

(assert (=> d!1524499 (valid!3959 thiss!42052)))

(assert (=> d!1524499 (= (contains!16895 thiss!42052 key!1776) lt!1932229)))

(declare-fun b!4769498 () Bool)

(assert (=> b!4769498 false))

(declare-fun lt!1932232 () Unit!138368)

(declare-fun lt!1932231 () Unit!138368)

(assert (=> b!4769498 (= lt!1932232 lt!1932231)))

(declare-fun lt!1932220 () ListLongMap!4729)

(assert (=> b!4769498 (contains!16896 (extractMap!2158 (toList!6324 lt!1932220)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!208 (ListLongMap!4729 K!15019 Hashable!6612) Unit!138368)

(assert (=> b!4769498 (= lt!1932231 (lemmaInLongMapThenInGenericMap!208 lt!1932220 key!1776 (hashF!12503 thiss!42052)))))

(declare-fun call!334380 () ListLongMap!4729)

(assert (=> b!4769498 (= lt!1932220 call!334380)))

(declare-fun e!2977233 () Unit!138368)

(declare-fun Unit!138372 () Unit!138368)

(assert (=> b!4769498 (= e!2977233 Unit!138372)))

(declare-fun b!4769499 () Bool)

(declare-fun lt!1932217 () Unit!138368)

(assert (=> b!4769499 (= e!2977231 lt!1932217)))

(declare-fun lt!1932230 () ListLongMap!4729)

(assert (=> b!4769499 (= lt!1932230 call!334380)))

(declare-fun lemmaInGenericMapThenInLongMap!208 (ListLongMap!4729 K!15019 Hashable!6612) Unit!138368)

(assert (=> b!4769499 (= lt!1932217 (lemmaInGenericMapThenInLongMap!208 lt!1932230 key!1776 (hashF!12503 thiss!42052)))))

(declare-fun res!2022885 () Bool)

(declare-fun call!334376 () Bool)

(assert (=> b!4769499 (= res!2022885 call!334376)))

(declare-fun e!2977235 () Bool)

(assert (=> b!4769499 (=> (not res!2022885) (not e!2977235))))

(assert (=> b!4769499 e!2977235))

(declare-fun bm!334370 () Bool)

(assert (=> bm!334370 (= call!334380 (map!12029 (v!47791 (underlying!10110 thiss!42052))))))

(declare-fun b!4769500 () Bool)

(assert (=> b!4769500 (= e!2977235 call!334378)))

(declare-fun forallContained!3873 (List!53657 Int tuple2!55622) Unit!138368)

(assert (=> b!4769501 (= e!2977234 (forallContained!3873 (toList!6324 (map!12029 (v!47791 (underlying!10110 thiss!42052)))) lambda!224781 (tuple2!55623 lt!1932225 (apply!12656 (v!47791 (underlying!10110 thiss!42052)) lt!1932225))))))

(declare-fun c!813555 () Bool)

(assert (=> b!4769501 (= c!813555 (not (contains!16894 (toList!6324 (map!12029 (v!47791 (underlying!10110 thiss!42052)))) (tuple2!55623 lt!1932225 (apply!12656 (v!47791 (underlying!10110 thiss!42052)) lt!1932225)))))))

(declare-fun lt!1932224 () Unit!138368)

(assert (=> b!4769501 (= lt!1932224 e!2977229)))

(declare-fun bm!334371 () Bool)

(declare-fun call!334377 () (_ BitVec 64))

(assert (=> bm!334371 (= call!334377 (hash!4589 (hashF!12503 thiss!42052) key!1776))))

(declare-fun b!4769502 () Bool)

(declare-datatypes ((Option!12716 0))(
  ( (None!12715) (Some!12715 (v!47794 tuple2!55620)) )
))
(declare-fun isDefined!9866 (Option!12716) Bool)

(declare-fun getPair!655 (List!53656 K!15019) Option!12716)

(assert (=> b!4769502 (= e!2977232 (isDefined!9866 (getPair!655 (apply!12656 (v!47791 (underlying!10110 thiss!42052)) lt!1932225) key!1776)))))

(declare-fun bm!334372 () Bool)

(declare-fun call!334379 () Option!12716)

(assert (=> bm!334372 (= call!334378 (isDefined!9866 call!334379))))

(declare-fun bm!334373 () Bool)

(declare-fun contains!16898 (ListLongMap!4729 (_ BitVec 64)) Bool)

(assert (=> bm!334373 (= call!334376 (contains!16898 (ite c!813557 lt!1932230 call!334380) call!334377))))

(declare-fun b!4769503 () Bool)

(assert (=> b!4769503 (= e!2977231 e!2977233)))

(declare-fun res!2022883 () Bool)

(assert (=> b!4769503 (= res!2022883 call!334376)))

(assert (=> b!4769503 (=> (not res!2022883) (not e!2977230))))

(declare-fun c!813556 () Bool)

(assert (=> b!4769503 (= c!813556 e!2977230)))

(declare-fun b!4769504 () Bool)

(declare-fun Unit!138373 () Unit!138368)

(assert (=> b!4769504 (= e!2977229 Unit!138373)))

(declare-fun bm!334374 () Bool)

(declare-fun call!334375 () List!53656)

(assert (=> bm!334374 (= call!334379 (getPair!655 call!334375 key!1776))))

(declare-fun b!4769505 () Bool)

(declare-fun Unit!138374 () Unit!138368)

(assert (=> b!4769505 (= e!2977233 Unit!138374)))

(declare-fun bm!334375 () Bool)

(declare-fun apply!12657 (ListLongMap!4729 (_ BitVec 64)) List!53656)

(assert (=> bm!334375 (= call!334375 (apply!12657 (ite c!813557 lt!1932230 call!334380) call!334377))))

(assert (= (and d!1524499 c!813554) b!4769501))

(assert (= (and d!1524499 (not c!813554)) b!4769497))

(assert (= (and b!4769501 c!813555) b!4769496))

(assert (= (and b!4769501 (not c!813555)) b!4769504))

(assert (= (and d!1524499 c!813557) b!4769499))

(assert (= (and d!1524499 (not c!813557)) b!4769503))

(assert (= (and b!4769499 res!2022885) b!4769500))

(assert (= (and b!4769503 res!2022883) b!4769495))

(assert (= (and b!4769503 c!813556) b!4769498))

(assert (= (and b!4769503 (not c!813556)) b!4769505))

(assert (= (or b!4769499 b!4769503 b!4769495 b!4769498) bm!334370))

(assert (= (or b!4769499 b!4769500 b!4769503 b!4769495) bm!334371))

(assert (= (or b!4769500 b!4769495) bm!334375))

(assert (= (or b!4769499 b!4769503) bm!334373))

(assert (= (or b!4769500 b!4769495) bm!334374))

(assert (= (or b!4769500 b!4769495) bm!334372))

(assert (= (and d!1524499 res!2022884) b!4769502))

(assert (=> bm!334370 m!5741120))

(assert (=> b!4769501 m!5741120))

(declare-fun m!5741146 () Bool)

(assert (=> b!4769501 m!5741146))

(declare-fun m!5741148 () Bool)

(assert (=> b!4769501 m!5741148))

(declare-fun m!5741150 () Bool)

(assert (=> b!4769501 m!5741150))

(declare-fun m!5741152 () Bool)

(assert (=> bm!334374 m!5741152))

(declare-fun m!5741154 () Bool)

(assert (=> b!4769496 m!5741154))

(declare-fun m!5741156 () Bool)

(assert (=> b!4769496 m!5741156))

(declare-fun m!5741158 () Bool)

(assert (=> b!4769496 m!5741158))

(declare-fun m!5741160 () Bool)

(assert (=> b!4769496 m!5741160))

(declare-fun m!5741162 () Bool)

(assert (=> b!4769496 m!5741162))

(declare-fun m!5741164 () Bool)

(assert (=> b!4769496 m!5741164))

(declare-fun m!5741166 () Bool)

(assert (=> b!4769496 m!5741166))

(assert (=> b!4769496 m!5741146))

(assert (=> b!4769496 m!5741160))

(assert (=> b!4769496 m!5741120))

(declare-fun m!5741168 () Bool)

(assert (=> b!4769498 m!5741168))

(assert (=> b!4769498 m!5741168))

(declare-fun m!5741170 () Bool)

(assert (=> b!4769498 m!5741170))

(declare-fun m!5741172 () Bool)

(assert (=> b!4769498 m!5741172))

(declare-fun m!5741174 () Bool)

(assert (=> bm!334373 m!5741174))

(assert (=> b!4769502 m!5741146))

(assert (=> b!4769502 m!5741146))

(declare-fun m!5741176 () Bool)

(assert (=> b!4769502 m!5741176))

(assert (=> b!4769502 m!5741176))

(declare-fun m!5741178 () Bool)

(assert (=> b!4769502 m!5741178))

(assert (=> d!1524499 m!5741120))

(assert (=> d!1524499 m!5741124))

(declare-fun m!5741180 () Bool)

(assert (=> d!1524499 m!5741180))

(assert (=> d!1524499 m!5741122))

(declare-fun m!5741182 () Bool)

(assert (=> d!1524499 m!5741182))

(declare-fun m!5741184 () Bool)

(assert (=> d!1524499 m!5741184))

(assert (=> d!1524499 m!5741184))

(declare-fun m!5741186 () Bool)

(assert (=> d!1524499 m!5741186))

(assert (=> d!1524499 m!5741182))

(declare-fun m!5741188 () Bool)

(assert (=> d!1524499 m!5741188))

(declare-fun m!5741190 () Bool)

(assert (=> b!4769499 m!5741190))

(declare-fun m!5741192 () Bool)

(assert (=> bm!334375 m!5741192))

(declare-fun m!5741194 () Bool)

(assert (=> bm!334372 m!5741194))

(assert (=> bm!334371 m!5741122))

(assert (=> b!4769462 d!1524499))

(declare-fun lt!1932236 () Bool)

(declare-fun d!1524501 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9595 (List!53657) (InoxSet tuple2!55622))

(assert (=> d!1524501 (= lt!1932236 (select (content!9595 (toList!6324 lt!1932171)) (tuple2!55623 lt!1932168 lt!1932169)))))

(declare-fun e!2977240 () Bool)

(assert (=> d!1524501 (= lt!1932236 e!2977240)))

(declare-fun res!2022890 () Bool)

(assert (=> d!1524501 (=> (not res!2022890) (not e!2977240))))

(assert (=> d!1524501 (= res!2022890 ((_ is Cons!53533) (toList!6324 lt!1932171)))))

(assert (=> d!1524501 (= (contains!16894 (toList!6324 lt!1932171) (tuple2!55623 lt!1932168 lt!1932169)) lt!1932236)))

(declare-fun b!4769510 () Bool)

(declare-fun e!2977241 () Bool)

(assert (=> b!4769510 (= e!2977240 e!2977241)))

(declare-fun res!2022891 () Bool)

(assert (=> b!4769510 (=> res!2022891 e!2977241)))

(assert (=> b!4769510 (= res!2022891 (= (h!59945 (toList!6324 lt!1932171)) (tuple2!55623 lt!1932168 lt!1932169)))))

(declare-fun b!4769511 () Bool)

(assert (=> b!4769511 (= e!2977241 (contains!16894 (t!361095 (toList!6324 lt!1932171)) (tuple2!55623 lt!1932168 lt!1932169)))))

(assert (= (and d!1524501 res!2022890) b!4769510))

(assert (= (and b!4769510 (not res!2022891)) b!4769511))

(declare-fun m!5741196 () Bool)

(assert (=> d!1524501 m!5741196))

(declare-fun m!5741198 () Bool)

(assert (=> d!1524501 m!5741198))

(declare-fun m!5741200 () Bool)

(assert (=> b!4769511 m!5741200))

(assert (=> b!4769459 d!1524501))

(declare-fun d!1524503 () Bool)

(declare-fun e!2977244 () Bool)

(assert (=> d!1524503 e!2977244))

(declare-fun c!813560 () Bool)

(assert (=> d!1524503 (= c!813560 (contains!16897 (v!47791 (underlying!10110 thiss!42052)) lt!1932168))))

(declare-fun lt!1932239 () List!53656)

(declare-fun apply!12658 (LongMapFixedSize!9902 (_ BitVec 64)) List!53656)

(assert (=> d!1524503 (= lt!1932239 (apply!12658 (v!47790 (underlying!10109 (v!47791 (underlying!10110 thiss!42052)))) lt!1932168))))

(assert (=> d!1524503 (valid!3960 (v!47791 (underlying!10110 thiss!42052)))))

(assert (=> d!1524503 (= (apply!12656 (v!47791 (underlying!10110 thiss!42052)) lt!1932168) lt!1932239)))

(declare-fun b!4769516 () Bool)

(declare-fun get!18078 (Option!12715) List!53656)

(assert (=> b!4769516 (= e!2977244 (= lt!1932239 (get!18078 (getValueByKey!2208 (toList!6324 (map!12029 (v!47791 (underlying!10110 thiss!42052)))) lt!1932168))))))

(declare-fun b!4769517 () Bool)

(declare-fun dynLambda!21963 (Int (_ BitVec 64)) List!53656)

(assert (=> b!4769517 (= e!2977244 (= lt!1932239 (dynLambda!21963 (defaultEntry!5369 (v!47790 (underlying!10109 (v!47791 (underlying!10110 thiss!42052))))) lt!1932168)))))

(assert (=> b!4769517 ((_ is LongMap!4951) (v!47791 (underlying!10110 thiss!42052)))))

(assert (= (and d!1524503 c!813560) b!4769516))

(assert (= (and d!1524503 (not c!813560)) b!4769517))

(declare-fun b_lambda!184539 () Bool)

(assert (=> (not b_lambda!184539) (not b!4769517)))

(declare-fun t!361097 () Bool)

(declare-fun tb!257491 () Bool)

(assert (=> (and b!4769466 (= (defaultEntry!5369 (v!47790 (underlying!10109 (v!47791 (underlying!10110 thiss!42052))))) (defaultEntry!5369 (v!47790 (underlying!10109 (v!47791 (underlying!10110 thiss!42052)))))) t!361097) tb!257491))

(assert (=> b!4769517 t!361097))

(declare-fun result!319154 () Bool)

(declare-fun b_and!341487 () Bool)

(assert (= b_and!341483 (and (=> t!361097 result!319154) b_and!341487)))

(declare-fun m!5741202 () Bool)

(assert (=> d!1524503 m!5741202))

(declare-fun m!5741204 () Bool)

(assert (=> d!1524503 m!5741204))

(assert (=> d!1524503 m!5741140))

(assert (=> b!4769516 m!5741120))

(declare-fun m!5741206 () Bool)

(assert (=> b!4769516 m!5741206))

(assert (=> b!4769516 m!5741206))

(declare-fun m!5741208 () Bool)

(assert (=> b!4769516 m!5741208))

(declare-fun m!5741210 () Bool)

(assert (=> b!4769517 m!5741210))

(assert (=> b!4769459 d!1524503))

(declare-fun d!1524505 () Bool)

(declare-fun map!12031 (LongMapFixedSize!9902) ListLongMap!4729)

(assert (=> d!1524505 (= (map!12029 (v!47791 (underlying!10110 thiss!42052))) (map!12031 (v!47790 (underlying!10109 (v!47791 (underlying!10110 thiss!42052))))))))

(declare-fun bs!1149379 () Bool)

(assert (= bs!1149379 d!1524505))

(declare-fun m!5741212 () Bool)

(assert (=> bs!1149379 m!5741212))

(assert (=> b!4769459 d!1524505))

(declare-fun d!1524507 () Bool)

(declare-fun hash!4590 (Hashable!6612 K!15019) (_ BitVec 64))

(assert (=> d!1524507 (= (hash!4589 (hashF!12503 thiss!42052) key!1776) (hash!4590 (hashF!12503 thiss!42052) key!1776))))

(declare-fun bs!1149380 () Bool)

(assert (= bs!1149380 d!1524507))

(declare-fun m!5741214 () Bool)

(assert (=> bs!1149380 m!5741214))

(assert (=> b!4769459 d!1524507))

(declare-fun d!1524509 () Bool)

(declare-fun res!2022896 () Bool)

(declare-fun e!2977249 () Bool)

(assert (=> d!1524509 (=> res!2022896 e!2977249)))

(assert (=> d!1524509 (= res!2022896 (or ((_ is Nil!53533) (toList!6324 lt!1932171)) ((_ is Nil!53533) (t!361095 (toList!6324 lt!1932171)))))))

(assert (=> d!1524509 (= (isStrictlySorted!815 (toList!6324 lt!1932171)) e!2977249)))

(declare-fun b!4769522 () Bool)

(declare-fun e!2977250 () Bool)

(assert (=> b!4769522 (= e!2977249 e!2977250)))

(declare-fun res!2022897 () Bool)

(assert (=> b!4769522 (=> (not res!2022897) (not e!2977250))))

(assert (=> b!4769522 (= res!2022897 (bvslt (_1!31105 (h!59945 (toList!6324 lt!1932171))) (_1!31105 (h!59945 (t!361095 (toList!6324 lt!1932171))))))))

(declare-fun b!4769523 () Bool)

(assert (=> b!4769523 (= e!2977250 (isStrictlySorted!815 (t!361095 (toList!6324 lt!1932171))))))

(assert (= (and d!1524509 (not res!2022896)) b!4769522))

(assert (= (and b!4769522 res!2022897) b!4769523))

(declare-fun m!5741216 () Bool)

(assert (=> b!4769523 m!5741216))

(assert (=> b!4769458 d!1524509))

(declare-fun d!1524511 () Bool)

(declare-fun isEmpty!29292 (Option!12715) Bool)

(assert (=> d!1524511 (= (isDefined!9865 lt!1932173) (not (isEmpty!29292 lt!1932173)))))

(declare-fun bs!1149381 () Bool)

(assert (= bs!1149381 d!1524511))

(declare-fun m!5741218 () Bool)

(assert (=> bs!1149381 m!5741218))

(assert (=> b!4769458 d!1524511))

(declare-fun b!4769534 () Bool)

(declare-fun e!2977256 () Option!12715)

(assert (=> b!4769534 (= e!2977256 (getValueByKey!2208 (t!361095 (toList!6324 lt!1932171)) lt!1932168))))

(declare-fun b!4769535 () Bool)

(assert (=> b!4769535 (= e!2977256 None!12714)))

(declare-fun b!4769532 () Bool)

(declare-fun e!2977255 () Option!12715)

(assert (=> b!4769532 (= e!2977255 (Some!12714 (_2!31105 (h!59945 (toList!6324 lt!1932171)))))))

(declare-fun b!4769533 () Bool)

(assert (=> b!4769533 (= e!2977255 e!2977256)))

(declare-fun c!813566 () Bool)

(assert (=> b!4769533 (= c!813566 (and ((_ is Cons!53533) (toList!6324 lt!1932171)) (not (= (_1!31105 (h!59945 (toList!6324 lt!1932171))) lt!1932168))))))

(declare-fun d!1524513 () Bool)

(declare-fun c!813565 () Bool)

(assert (=> d!1524513 (= c!813565 (and ((_ is Cons!53533) (toList!6324 lt!1932171)) (= (_1!31105 (h!59945 (toList!6324 lt!1932171))) lt!1932168)))))

(assert (=> d!1524513 (= (getValueByKey!2208 (toList!6324 lt!1932171) lt!1932168) e!2977255)))

(assert (= (and d!1524513 c!813565) b!4769532))

(assert (= (and d!1524513 (not c!813565)) b!4769533))

(assert (= (and b!4769533 c!813566) b!4769534))

(assert (= (and b!4769533 (not c!813566)) b!4769535))

(declare-fun m!5741220 () Bool)

(assert (=> b!4769534 m!5741220))

(assert (=> b!4769458 d!1524513))

(declare-fun d!1524515 () Bool)

(assert (=> d!1524515 (isDefined!9865 (getValueByKey!2208 (toList!6324 lt!1932171) lt!1932168))))

(declare-fun lt!1932242 () Unit!138368)

(declare-fun choose!34014 (List!53657 (_ BitVec 64)) Unit!138368)

(assert (=> d!1524515 (= lt!1932242 (choose!34014 (toList!6324 lt!1932171) lt!1932168))))

(declare-fun e!2977259 () Bool)

(assert (=> d!1524515 e!2977259))

(declare-fun res!2022900 () Bool)

(assert (=> d!1524515 (=> (not res!2022900) (not e!2977259))))

(assert (=> d!1524515 (= res!2022900 (isStrictlySorted!815 (toList!6324 lt!1932171)))))

(assert (=> d!1524515 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2004 (toList!6324 lt!1932171) lt!1932168) lt!1932242)))

(declare-fun b!4769538 () Bool)

(assert (=> b!4769538 (= e!2977259 (containsKey!3678 (toList!6324 lt!1932171) lt!1932168))))

(assert (= (and d!1524515 res!2022900) b!4769538))

(assert (=> d!1524515 m!5741136))

(assert (=> d!1524515 m!5741136))

(declare-fun m!5741222 () Bool)

(assert (=> d!1524515 m!5741222))

(declare-fun m!5741224 () Bool)

(assert (=> d!1524515 m!5741224))

(assert (=> d!1524515 m!5741132))

(declare-fun m!5741226 () Bool)

(assert (=> b!4769538 m!5741226))

(assert (=> b!4769458 d!1524515))

(declare-fun d!1524517 () Bool)

(assert (=> d!1524517 (= (array_inv!5827 (_keys!5293 (v!47790 (underlying!10109 (v!47791 (underlying!10110 thiss!42052)))))) (bvsge (size!36317 (_keys!5293 (v!47790 (underlying!10109 (v!47791 (underlying!10110 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4769466 d!1524517))

(declare-fun d!1524519 () Bool)

(assert (=> d!1524519 (= (array_inv!5828 (_values!5264 (v!47790 (underlying!10109 (v!47791 (underlying!10110 thiss!42052)))))) (bvsge (size!36318 (_values!5264 (v!47790 (underlying!10109 (v!47791 (underlying!10110 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4769466 d!1524519))

(declare-fun e!2977262 () Bool)

(declare-fun tp!1356146 () Bool)

(declare-fun tp_is_empty!32511 () Bool)

(declare-fun b!4769543 () Bool)

(assert (=> b!4769543 (= e!2977262 (and tp_is_empty!32509 tp_is_empty!32511 tp!1356146))))

(assert (=> b!4769466 (= tp!1356140 e!2977262)))

(assert (= (and b!4769466 ((_ is Cons!53532) (zeroValue!5239 (v!47790 (underlying!10109 (v!47791 (underlying!10110 thiss!42052))))))) b!4769543))

(declare-fun e!2977263 () Bool)

(declare-fun b!4769544 () Bool)

(declare-fun tp!1356147 () Bool)

(assert (=> b!4769544 (= e!2977263 (and tp_is_empty!32509 tp_is_empty!32511 tp!1356147))))

(assert (=> b!4769466 (= tp!1356138 e!2977263)))

(assert (= (and b!4769466 ((_ is Cons!53532) (minValue!5239 (v!47790 (underlying!10109 (v!47791 (underlying!10110 thiss!42052))))))) b!4769544))

(declare-fun e!2977264 () Bool)

(declare-fun b!4769545 () Bool)

(declare-fun tp!1356148 () Bool)

(assert (=> b!4769545 (= e!2977264 (and tp_is_empty!32509 tp_is_empty!32511 tp!1356148))))

(assert (=> b!4769456 (= tp!1356137 e!2977264)))

(assert (= (and b!4769456 ((_ is Cons!53532) mapDefault!21955)) b!4769545))

(declare-fun mapNonEmpty!21958 () Bool)

(declare-fun mapRes!21958 () Bool)

(declare-fun tp!1356155 () Bool)

(declare-fun e!2977270 () Bool)

(assert (=> mapNonEmpty!21958 (= mapRes!21958 (and tp!1356155 e!2977270))))

(declare-fun mapRest!21958 () (Array (_ BitVec 32) List!53656))

(declare-fun mapKey!21958 () (_ BitVec 32))

(declare-fun mapValue!21958 () List!53656)

(assert (=> mapNonEmpty!21958 (= mapRest!21955 (store mapRest!21958 mapKey!21958 mapValue!21958))))

(declare-fun mapIsEmpty!21958 () Bool)

(assert (=> mapIsEmpty!21958 mapRes!21958))

(declare-fun condMapEmpty!21958 () Bool)

(declare-fun mapDefault!21958 () List!53656)

(assert (=> mapNonEmpty!21955 (= condMapEmpty!21958 (= mapRest!21955 ((as const (Array (_ BitVec 32) List!53656)) mapDefault!21958)))))

(declare-fun e!2977269 () Bool)

(assert (=> mapNonEmpty!21955 (= tp!1356139 (and e!2977269 mapRes!21958))))

(declare-fun tp!1356157 () Bool)

(declare-fun b!4769553 () Bool)

(assert (=> b!4769553 (= e!2977269 (and tp_is_empty!32509 tp_is_empty!32511 tp!1356157))))

(declare-fun b!4769552 () Bool)

(declare-fun tp!1356156 () Bool)

(assert (=> b!4769552 (= e!2977270 (and tp_is_empty!32509 tp_is_empty!32511 tp!1356156))))

(assert (= (and mapNonEmpty!21955 condMapEmpty!21958) mapIsEmpty!21958))

(assert (= (and mapNonEmpty!21955 (not condMapEmpty!21958)) mapNonEmpty!21958))

(assert (= (and mapNonEmpty!21958 ((_ is Cons!53532) mapValue!21958)) b!4769552))

(assert (= (and mapNonEmpty!21955 ((_ is Cons!53532) mapDefault!21958)) b!4769553))

(declare-fun m!5741228 () Bool)

(assert (=> mapNonEmpty!21958 m!5741228))

(declare-fun tp!1356158 () Bool)

(declare-fun e!2977271 () Bool)

(declare-fun b!4769554 () Bool)

(assert (=> b!4769554 (= e!2977271 (and tp_is_empty!32509 tp_is_empty!32511 tp!1356158))))

(assert (=> mapNonEmpty!21955 (= tp!1356143 e!2977271)))

(assert (= (and mapNonEmpty!21955 ((_ is Cons!53532) mapValue!21955)) b!4769554))

(declare-fun b_lambda!184541 () Bool)

(assert (= b_lambda!184539 (or (and b!4769466 b_free!129747) b_lambda!184541)))

(check-sat (not b!4769472) (not b!4769552) (not d!1524497) tp_is_empty!32511 (not b!4769501) (not b!4769499) (not b!4769496) (not b!4769543) (not bm!334373) (not d!1524505) b_and!341485 (not b!4769545) (not d!1524515) (not d!1524501) (not bm!334374) (not d!1524499) (not b!4769498) (not mapNonEmpty!21958) (not b!4769553) (not b!4769538) tp_is_empty!32509 (not b!4769511) (not bm!334372) (not b!4769523) (not b!4769554) (not d!1524507) (not bm!334371) (not b!4769544) (not b!4769516) (not d!1524511) (not b_lambda!184541) (not bm!334375) (not b!4769534) (not b!4769502) (not tb!257491) (not b!4769471) (not b_next!130537) (not d!1524503) (not bm!334370) b_and!341487 (not b_next!130539))
(check-sat b_and!341485 b_and!341487 (not b_next!130539) (not b_next!130537))
