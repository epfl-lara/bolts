; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416168 () Bool)

(assert start!416168)

(declare-fun b!4323163 () Bool)

(declare-fun b_free!128987 () Bool)

(declare-fun b_next!129691 () Bool)

(assert (=> b!4323163 (= b_free!128987 (not b_next!129691))))

(declare-fun tp!1327073 () Bool)

(declare-fun b_and!340549 () Bool)

(assert (=> b!4323163 (= tp!1327073 b_and!340549)))

(declare-fun b!4323169 () Bool)

(declare-fun b_free!128989 () Bool)

(declare-fun b_next!129693 () Bool)

(assert (=> b!4323169 (= b_free!128989 (not b_next!129693))))

(declare-fun tp!1327072 () Bool)

(declare-fun b_and!340551 () Bool)

(assert (=> b!4323169 (= tp!1327072 b_and!340551)))

(declare-fun b!4323153 () Bool)

(declare-fun e!2689709 () Bool)

(declare-fun e!2689710 () Bool)

(assert (=> b!4323153 (= e!2689709 e!2689710)))

(declare-fun b!4323154 () Bool)

(declare-fun res!1771773 () Bool)

(declare-fun e!2689708 () Bool)

(assert (=> b!4323154 (=> res!1771773 e!2689708)))

(declare-datatypes ((V!9841 0))(
  ( (V!9842 (val!15969 Int)) )
))
(declare-datatypes ((K!9639 0))(
  ( (K!9640 (val!15970 Int)) )
))
(declare-datatypes ((tuple2!47212 0))(
  ( (tuple2!47213 (_1!26893 K!9639) (_2!26893 V!9841)) )
))
(declare-datatypes ((List!48513 0))(
  ( (Nil!48389) (Cons!48389 (h!53851 tuple2!47212) (t!355401 List!48513)) )
))
(declare-datatypes ((tuple2!47214 0))(
  ( (tuple2!47215 (_1!26894 (_ BitVec 64)) (_2!26894 List!48513)) )
))
(declare-datatypes ((List!48514 0))(
  ( (Nil!48390) (Cons!48390 (h!53852 tuple2!47214) (t!355402 List!48514)) )
))
(declare-datatypes ((ListLongMap!1179 0))(
  ( (ListLongMap!1180 (toList!2562 List!48514)) )
))
(declare-fun lt!1540764 () ListLongMap!1179)

(declare-fun key!2048 () K!9639)

(declare-datatypes ((ListMap!1839 0))(
  ( (ListMap!1840 (toList!2563 List!48513)) )
))
(declare-fun contains!10442 (ListMap!1839 K!9639) Bool)

(declare-fun extractMap!370 (List!48514) ListMap!1839)

(assert (=> b!4323154 (= res!1771773 (contains!10442 (extractMap!370 (toList!2562 lt!1540764)) key!2048))))

(declare-fun b!4323155 () Bool)

(declare-fun res!1771772 () Bool)

(assert (=> b!4323155 (=> res!1771772 e!2689708)))

(declare-datatypes ((array!17252 0))(
  ( (array!17253 (arr!7699 (Array (_ BitVec 32) (_ BitVec 64))) (size!35738 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4673 0))(
  ( (HashableExt!4672 (__x!30296 Int)) )
))
(declare-datatypes ((array!17254 0))(
  ( (array!17255 (arr!7700 (Array (_ BitVec 32) List!48513)) (size!35739 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9514 0))(
  ( (LongMapFixedSize!9515 (defaultEntry!5162 Int) (mask!13398 (_ BitVec 32)) (extraKeys!5022 (_ BitVec 32)) (zeroValue!5034 List!48513) (minValue!5034 List!48513) (_size!9559 (_ BitVec 32)) (_keys!5083 array!17252) (_values!5058 array!17254) (_vacant!4820 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18837 0))(
  ( (Cell!18838 (v!42785 LongMapFixedSize!9514)) )
))
(declare-datatypes ((MutLongMap!4757 0))(
  ( (LongMap!4757 (underlying!9743 Cell!18837)) (MutLongMapExt!4756 (__x!30297 Int)) )
))
(declare-datatypes ((Cell!18839 0))(
  ( (Cell!18840 (v!42786 MutLongMap!4757)) )
))
(declare-datatypes ((MutableMap!4663 0))(
  ( (MutableMapExt!4662 (__x!30298 Int)) (HashMap!4663 (underlying!9744 Cell!18839) (hashF!6940 Hashable!4673) (_size!9560 (_ BitVec 32)) (defaultValue!4834 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4663)

(declare-fun allKeysSameHashInMap!391 (ListLongMap!1179 Hashable!4673) Bool)

(assert (=> b!4323155 (= res!1771772 (not (allKeysSameHashInMap!391 lt!1540764 (hashF!6940 thiss!42308))))))

(declare-fun lt!1540766 () (_ BitVec 64))

(declare-fun lt!1540768 () List!48513)

(declare-fun b!4323156 () Bool)

(declare-fun e!2689705 () Bool)

(declare-fun apply!11146 (ListLongMap!1179 (_ BitVec 64)) List!48513)

(assert (=> b!4323156 (= e!2689705 (= lt!1540768 (apply!11146 lt!1540764 lt!1540766)))))

(declare-fun b!4323157 () Bool)

(declare-datatypes ((Unit!67866 0))(
  ( (Unit!67867) )
))
(declare-fun e!2689701 () Unit!67866)

(declare-fun lt!1540767 () Unit!67866)

(assert (=> b!4323157 (= e!2689701 lt!1540767)))

(declare-fun lt!1540771 () Unit!67866)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!233 (List!48514 (_ BitVec 64) List!48513 Hashable!4673) Unit!67866)

(assert (=> b!4323157 (= lt!1540771 (lemmaInLongMapAllKeySameHashThenForTuple!233 (toList!2562 lt!1540764) lt!1540766 lt!1540768 (hashF!6940 thiss!42308)))))

(declare-fun allKeysSameHash!248 (List!48513 (_ BitVec 64) Hashable!4673) Bool)

(assert (=> b!4323157 (allKeysSameHash!248 lt!1540768 lt!1540766 (hashF!6940 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!224 (List!48513 K!9639 (_ BitVec 64) Hashable!4673) Unit!67866)

(assert (=> b!4323157 (= lt!1540767 (lemmaRemovePairForKeyPreservesHash!224 lt!1540768 key!2048 lt!1540766 (hashF!6940 thiss!42308)))))

(declare-fun removePairForKey!271 (List!48513 K!9639) List!48513)

(assert (=> b!4323157 (allKeysSameHash!248 (removePairForKey!271 lt!1540768 key!2048) lt!1540766 (hashF!6940 thiss!42308))))

(declare-fun b!4323158 () Bool)

(declare-fun res!1771764 () Bool)

(declare-fun e!2689702 () Bool)

(assert (=> b!4323158 (=> (not res!1771764) (not e!2689702))))

(declare-fun valid!3769 (MutableMap!4663) Bool)

(assert (=> b!4323158 (= res!1771764 (valid!3769 thiss!42308))))

(declare-fun b!4323159 () Bool)

(declare-fun e!2689711 () List!48513)

(assert (=> b!4323159 (= e!2689711 Nil!48389)))

(declare-fun b!4323160 () Bool)

(declare-fun e!2689704 () Bool)

(assert (=> b!4323160 (= e!2689708 e!2689704)))

(declare-fun res!1771770 () Bool)

(assert (=> b!4323160 (=> res!1771770 e!2689704)))

(assert (=> b!4323160 (= res!1771770 e!2689705)))

(declare-fun res!1771771 () Bool)

(assert (=> b!4323160 (=> (not res!1771771) (not e!2689705))))

(declare-fun lt!1540772 () Bool)

(assert (=> b!4323160 (= res!1771771 lt!1540772)))

(declare-fun contains!10443 (ListLongMap!1179 (_ BitVec 64)) Bool)

(assert (=> b!4323160 (= lt!1540772 (contains!10443 lt!1540764 lt!1540766))))

(declare-fun b!4323161 () Bool)

(declare-fun e!2689714 () Bool)

(assert (=> b!4323161 (= e!2689714 e!2689709)))

(declare-fun b!4323162 () Bool)

(declare-fun e!2689703 () Bool)

(assert (=> b!4323162 (= e!2689703 (not e!2689708))))

(declare-fun res!1771769 () Bool)

(assert (=> b!4323162 (=> res!1771769 e!2689708)))

(declare-fun lambda!133989 () Int)

(declare-fun forall!8818 (List!48514 Int) Bool)

(assert (=> b!4323162 (= res!1771769 (not (forall!8818 (toList!2562 lt!1540764) lambda!133989)))))

(declare-fun e!2689713 () Bool)

(assert (=> b!4323162 e!2689713))

(declare-fun res!1771767 () Bool)

(assert (=> b!4323162 (=> (not res!1771767) (not e!2689713))))

(declare-fun lt!1540765 () ListLongMap!1179)

(assert (=> b!4323162 (= res!1771767 (forall!8818 (toList!2562 lt!1540765) lambda!133989))))

(declare-fun lt!1540773 () List!48513)

(declare-fun +!335 (ListLongMap!1179 tuple2!47214) ListLongMap!1179)

(assert (=> b!4323162 (= lt!1540765 (+!335 lt!1540764 (tuple2!47215 lt!1540766 lt!1540773)))))

(declare-fun lt!1540770 () Unit!67866)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!184 (ListLongMap!1179 (_ BitVec 64) List!48513 Hashable!4673) Unit!67866)

(assert (=> b!4323162 (= lt!1540770 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!184 lt!1540764 lt!1540766 lt!1540773 (hashF!6940 thiss!42308)))))

(declare-fun lt!1540774 () Unit!67866)

(assert (=> b!4323162 (= lt!1540774 e!2689701)))

(declare-fun c!735401 () Bool)

(declare-fun isEmpty!28125 (List!48513) Bool)

(assert (=> b!4323162 (= c!735401 (not (isEmpty!28125 lt!1540768)))))

(declare-fun tp!1327077 () Bool)

(declare-fun e!2689707 () Bool)

(declare-fun tp!1327076 () Bool)

(declare-fun array_inv!5545 (array!17252) Bool)

(declare-fun array_inv!5546 (array!17254) Bool)

(assert (=> b!4323163 (= e!2689710 (and tp!1327073 tp!1327076 tp!1327077 (array_inv!5545 (_keys!5083 (v!42785 (underlying!9743 (v!42786 (underlying!9744 thiss!42308)))))) (array_inv!5546 (_values!5058 (v!42785 (underlying!9743 (v!42786 (underlying!9744 thiss!42308)))))) e!2689707))))

(declare-fun b!4323164 () Bool)

(declare-fun apply!11147 (MutLongMap!4757 (_ BitVec 64)) List!48513)

(assert (=> b!4323164 (= e!2689711 (apply!11147 (v!42786 (underlying!9744 thiss!42308)) lt!1540766))))

(declare-fun b!4323165 () Bool)

(assert (=> b!4323165 (= e!2689704 (and (not lt!1540772) (= lt!1540768 Nil!48389)))))

(declare-fun b!4323166 () Bool)

(declare-fun e!2689700 () Bool)

(assert (=> b!4323166 (= e!2689700 e!2689703)))

(declare-fun res!1771768 () Bool)

(assert (=> b!4323166 (=> (not res!1771768) (not e!2689703))))

(declare-datatypes ((tuple2!47216 0))(
  ( (tuple2!47217 (_1!26895 Bool) (_2!26895 MutLongMap!4757)) )
))
(declare-fun update!533 (MutLongMap!4757 (_ BitVec 64) List!48513) tuple2!47216)

(assert (=> b!4323166 (= res!1771768 (_1!26895 (update!533 (v!42786 (underlying!9744 thiss!42308)) lt!1540766 lt!1540773)))))

(declare-fun v!9179 () V!9841)

(assert (=> b!4323166 (= lt!1540773 (Cons!48389 (tuple2!47213 key!2048 v!9179) lt!1540768))))

(assert (=> b!4323166 (= lt!1540768 e!2689711)))

(declare-fun c!735400 () Bool)

(declare-fun contains!10444 (MutLongMap!4757 (_ BitVec 64)) Bool)

(assert (=> b!4323166 (= c!735400 (contains!10444 (v!42786 (underlying!9744 thiss!42308)) lt!1540766))))

(declare-fun hash!1188 (Hashable!4673 K!9639) (_ BitVec 64))

(assert (=> b!4323166 (= lt!1540766 (hash!1188 (hashF!6940 thiss!42308) key!2048))))

(declare-fun mapIsEmpty!21206 () Bool)

(declare-fun mapRes!21206 () Bool)

(assert (=> mapIsEmpty!21206 mapRes!21206))

(declare-fun b!4323167 () Bool)

(assert (=> b!4323167 (= e!2689702 e!2689700)))

(declare-fun res!1771765 () Bool)

(assert (=> b!4323167 (=> (not res!1771765) (not e!2689700))))

(declare-fun contains!10445 (MutableMap!4663 K!9639) Bool)

(assert (=> b!4323167 (= res!1771765 (not (contains!10445 thiss!42308 key!2048)))))

(declare-fun map!10418 (MutLongMap!4757) ListLongMap!1179)

(assert (=> b!4323167 (= lt!1540764 (map!10418 (v!42786 (underlying!9744 thiss!42308))))))

(declare-fun lt!1540775 () ListMap!1839)

(declare-fun map!10419 (MutableMap!4663) ListMap!1839)

(assert (=> b!4323167 (= lt!1540775 (map!10419 thiss!42308))))

(declare-fun b!4323168 () Bool)

(declare-fun tp!1327074 () Bool)

(assert (=> b!4323168 (= e!2689707 (and tp!1327074 mapRes!21206))))

(declare-fun condMapEmpty!21206 () Bool)

(declare-fun mapDefault!21206 () List!48513)

(assert (=> b!4323168 (= condMapEmpty!21206 (= (arr!7700 (_values!5058 (v!42785 (underlying!9743 (v!42786 (underlying!9744 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48513)) mapDefault!21206)))))

(declare-fun e!2689712 () Bool)

(declare-fun e!2689699 () Bool)

(assert (=> b!4323169 (= e!2689712 (and e!2689699 tp!1327072))))

(declare-fun b!4323170 () Bool)

(declare-fun lt!1540769 () MutLongMap!4757)

(get-info :version)

(assert (=> b!4323170 (= e!2689699 (and e!2689714 ((_ is LongMap!4757) lt!1540769)))))

(assert (=> b!4323170 (= lt!1540769 (v!42786 (underlying!9744 thiss!42308)))))

(declare-fun b!4323171 () Bool)

(declare-fun res!1771763 () Bool)

(assert (=> b!4323171 (=> res!1771763 e!2689708)))

(assert (=> b!4323171 (= res!1771763 (not (allKeysSameHash!248 lt!1540773 lt!1540766 (hashF!6940 thiss!42308))))))

(declare-fun res!1771766 () Bool)

(assert (=> start!416168 (=> (not res!1771766) (not e!2689702))))

(assert (=> start!416168 (= res!1771766 ((_ is HashMap!4663) thiss!42308))))

(assert (=> start!416168 e!2689702))

(assert (=> start!416168 e!2689712))

(declare-fun tp_is_empty!24125 () Bool)

(assert (=> start!416168 tp_is_empty!24125))

(declare-fun tp_is_empty!24127 () Bool)

(assert (=> start!416168 tp_is_empty!24127))

(declare-fun mapNonEmpty!21206 () Bool)

(declare-fun tp!1327071 () Bool)

(declare-fun tp!1327075 () Bool)

(assert (=> mapNonEmpty!21206 (= mapRes!21206 (and tp!1327071 tp!1327075))))

(declare-fun mapValue!21206 () List!48513)

(declare-fun mapKey!21206 () (_ BitVec 32))

(declare-fun mapRest!21206 () (Array (_ BitVec 32) List!48513))

(assert (=> mapNonEmpty!21206 (= (arr!7700 (_values!5058 (v!42785 (underlying!9743 (v!42786 (underlying!9744 thiss!42308)))))) (store mapRest!21206 mapKey!21206 mapValue!21206))))

(declare-fun b!4323172 () Bool)

(assert (=> b!4323172 (= e!2689713 (allKeysSameHashInMap!391 lt!1540765 (hashF!6940 thiss!42308)))))

(declare-fun b!4323173 () Bool)

(declare-fun Unit!67868 () Unit!67866)

(assert (=> b!4323173 (= e!2689701 Unit!67868)))

(assert (= (and start!416168 res!1771766) b!4323158))

(assert (= (and b!4323158 res!1771764) b!4323167))

(assert (= (and b!4323167 res!1771765) b!4323166))

(assert (= (and b!4323166 c!735400) b!4323164))

(assert (= (and b!4323166 (not c!735400)) b!4323159))

(assert (= (and b!4323166 res!1771768) b!4323162))

(assert (= (and b!4323162 c!735401) b!4323157))

(assert (= (and b!4323162 (not c!735401)) b!4323173))

(assert (= (and b!4323162 res!1771767) b!4323172))

(assert (= (and b!4323162 (not res!1771769)) b!4323155))

(assert (= (and b!4323155 (not res!1771772)) b!4323171))

(assert (= (and b!4323171 (not res!1771763)) b!4323154))

(assert (= (and b!4323154 (not res!1771773)) b!4323160))

(assert (= (and b!4323160 res!1771771) b!4323156))

(assert (= (and b!4323160 (not res!1771770)) b!4323165))

(assert (= (and b!4323168 condMapEmpty!21206) mapIsEmpty!21206))

(assert (= (and b!4323168 (not condMapEmpty!21206)) mapNonEmpty!21206))

(assert (= b!4323163 b!4323168))

(assert (= b!4323153 b!4323163))

(assert (= b!4323161 b!4323153))

(assert (= (and b!4323170 ((_ is LongMap!4757) (v!42786 (underlying!9744 thiss!42308)))) b!4323161))

(assert (= b!4323169 b!4323170))

(assert (= (and start!416168 ((_ is HashMap!4663) thiss!42308)) b!4323169))

(declare-fun m!4917619 () Bool)

(assert (=> b!4323154 m!4917619))

(assert (=> b!4323154 m!4917619))

(declare-fun m!4917621 () Bool)

(assert (=> b!4323154 m!4917621))

(declare-fun m!4917623 () Bool)

(assert (=> b!4323163 m!4917623))

(declare-fun m!4917625 () Bool)

(assert (=> b!4323163 m!4917625))

(declare-fun m!4917627 () Bool)

(assert (=> b!4323162 m!4917627))

(declare-fun m!4917629 () Bool)

(assert (=> b!4323162 m!4917629))

(declare-fun m!4917631 () Bool)

(assert (=> b!4323162 m!4917631))

(declare-fun m!4917633 () Bool)

(assert (=> b!4323162 m!4917633))

(declare-fun m!4917635 () Bool)

(assert (=> b!4323162 m!4917635))

(declare-fun m!4917637 () Bool)

(assert (=> mapNonEmpty!21206 m!4917637))

(declare-fun m!4917639 () Bool)

(assert (=> b!4323171 m!4917639))

(declare-fun m!4917641 () Bool)

(assert (=> b!4323155 m!4917641))

(declare-fun m!4917643 () Bool)

(assert (=> b!4323157 m!4917643))

(declare-fun m!4917645 () Bool)

(assert (=> b!4323157 m!4917645))

(declare-fun m!4917647 () Bool)

(assert (=> b!4323157 m!4917647))

(assert (=> b!4323157 m!4917645))

(declare-fun m!4917649 () Bool)

(assert (=> b!4323157 m!4917649))

(declare-fun m!4917651 () Bool)

(assert (=> b!4323157 m!4917651))

(declare-fun m!4917653 () Bool)

(assert (=> b!4323160 m!4917653))

(declare-fun m!4917655 () Bool)

(assert (=> b!4323167 m!4917655))

(declare-fun m!4917657 () Bool)

(assert (=> b!4323167 m!4917657))

(declare-fun m!4917659 () Bool)

(assert (=> b!4323167 m!4917659))

(declare-fun m!4917661 () Bool)

(assert (=> b!4323166 m!4917661))

(declare-fun m!4917663 () Bool)

(assert (=> b!4323166 m!4917663))

(declare-fun m!4917665 () Bool)

(assert (=> b!4323166 m!4917665))

(declare-fun m!4917667 () Bool)

(assert (=> b!4323158 m!4917667))

(declare-fun m!4917669 () Bool)

(assert (=> b!4323164 m!4917669))

(declare-fun m!4917671 () Bool)

(assert (=> b!4323156 m!4917671))

(declare-fun m!4917673 () Bool)

(assert (=> b!4323172 m!4917673))

(check-sat (not b!4323163) b_and!340551 (not b!4323154) (not b_next!129691) (not b!4323156) (not mapNonEmpty!21206) b_and!340549 (not b!4323160) (not b!4323168) (not b!4323162) (not b!4323157) (not b!4323158) (not b!4323172) (not b!4323171) (not b!4323167) tp_is_empty!24127 tp_is_empty!24125 (not b!4323164) (not b!4323155) (not b_next!129693) (not b!4323166))
(check-sat b_and!340549 b_and!340551 (not b_next!129693) (not b_next!129691))
(get-model)

(declare-fun bs!606889 () Bool)

(declare-fun d!1271229 () Bool)

(assert (= bs!606889 (and d!1271229 b!4323162)))

(declare-fun lambda!133992 () Int)

(assert (=> bs!606889 (not (= lambda!133992 lambda!133989))))

(assert (=> d!1271229 true))

(assert (=> d!1271229 (= (allKeysSameHashInMap!391 lt!1540764 (hashF!6940 thiss!42308)) (forall!8818 (toList!2562 lt!1540764) lambda!133992))))

(declare-fun bs!606890 () Bool)

(assert (= bs!606890 d!1271229))

(declare-fun m!4917675 () Bool)

(assert (=> bs!606890 m!4917675))

(assert (=> b!4323155 d!1271229))

(declare-fun d!1271231 () Bool)

(declare-fun e!2689717 () Bool)

(assert (=> d!1271231 e!2689717))

(declare-fun c!735404 () Bool)

(assert (=> d!1271231 (= c!735404 (contains!10444 (v!42786 (underlying!9744 thiss!42308)) lt!1540766))))

(declare-fun lt!1540778 () List!48513)

(declare-fun apply!11148 (LongMapFixedSize!9514 (_ BitVec 64)) List!48513)

(assert (=> d!1271231 (= lt!1540778 (apply!11148 (v!42785 (underlying!9743 (v!42786 (underlying!9744 thiss!42308)))) lt!1540766))))

(declare-fun valid!3770 (MutLongMap!4757) Bool)

(assert (=> d!1271231 (valid!3770 (v!42786 (underlying!9744 thiss!42308)))))

(assert (=> d!1271231 (= (apply!11147 (v!42786 (underlying!9744 thiss!42308)) lt!1540766) lt!1540778)))

(declare-fun b!4323180 () Bool)

(declare-datatypes ((Option!10306 0))(
  ( (None!10305) (Some!10305 (v!42791 List!48513)) )
))
(declare-fun get!15680 (Option!10306) List!48513)

(declare-fun getValueByKey!301 (List!48514 (_ BitVec 64)) Option!10306)

(assert (=> b!4323180 (= e!2689717 (= lt!1540778 (get!15680 (getValueByKey!301 (toList!2562 (map!10418 (v!42786 (underlying!9744 thiss!42308)))) lt!1540766))))))

(declare-fun b!4323181 () Bool)

(declare-fun dynLambda!20511 (Int (_ BitVec 64)) List!48513)

(assert (=> b!4323181 (= e!2689717 (= lt!1540778 (dynLambda!20511 (defaultEntry!5162 (v!42785 (underlying!9743 (v!42786 (underlying!9744 thiss!42308))))) lt!1540766)))))

(assert (=> b!4323181 ((_ is LongMap!4757) (v!42786 (underlying!9744 thiss!42308)))))

(assert (= (and d!1271231 c!735404) b!4323180))

(assert (= (and d!1271231 (not c!735404)) b!4323181))

(declare-fun b_lambda!127399 () Bool)

(assert (=> (not b_lambda!127399) (not b!4323181)))

(declare-fun t!355404 () Bool)

(declare-fun tb!257373 () Bool)

(assert (=> (and b!4323163 (= (defaultEntry!5162 (v!42785 (underlying!9743 (v!42786 (underlying!9744 thiss!42308))))) (defaultEntry!5162 (v!42785 (underlying!9743 (v!42786 (underlying!9744 thiss!42308)))))) t!355404) tb!257373))

(assert (=> b!4323181 t!355404))

(declare-fun result!314894 () Bool)

(declare-fun b_and!340553 () Bool)

(assert (= b_and!340549 (and (=> t!355404 result!314894) b_and!340553)))

(assert (=> d!1271231 m!4917663))

(declare-fun m!4917677 () Bool)

(assert (=> d!1271231 m!4917677))

(declare-fun m!4917679 () Bool)

(assert (=> d!1271231 m!4917679))

(assert (=> b!4323180 m!4917657))

(declare-fun m!4917681 () Bool)

(assert (=> b!4323180 m!4917681))

(assert (=> b!4323180 m!4917681))

(declare-fun m!4917683 () Bool)

(assert (=> b!4323180 m!4917683))

(declare-fun m!4917685 () Bool)

(assert (=> b!4323181 m!4917685))

(assert (=> b!4323164 d!1271231))

(declare-fun d!1271233 () Bool)

(declare-fun e!2689731 () Bool)

(assert (=> d!1271233 e!2689731))

(declare-fun res!1771782 () Bool)

(assert (=> d!1271233 (=> (not res!1771782) (not e!2689731))))

(declare-fun lt!1540788 () tuple2!47216)

(assert (=> d!1271233 (= res!1771782 ((_ is LongMap!4757) (_2!26895 lt!1540788)))))

(declare-fun e!2689730 () tuple2!47216)

(assert (=> d!1271233 (= lt!1540788 e!2689730)))

(declare-fun c!735412 () Bool)

(declare-fun lt!1540790 () tuple2!47216)

(assert (=> d!1271233 (= c!735412 (_1!26895 lt!1540790))))

(declare-fun e!2689728 () tuple2!47216)

(assert (=> d!1271233 (= lt!1540790 e!2689728)))

(declare-fun c!735411 () Bool)

(declare-fun imbalanced!82 (MutLongMap!4757) Bool)

(assert (=> d!1271233 (= c!735411 (imbalanced!82 (v!42786 (underlying!9744 thiss!42308))))))

(assert (=> d!1271233 (valid!3770 (v!42786 (underlying!9744 thiss!42308)))))

(assert (=> d!1271233 (= (update!533 (v!42786 (underlying!9744 thiss!42308)) lt!1540766 lt!1540773) lt!1540788)))

(declare-fun b!4323200 () Bool)

(declare-fun e!2689732 () Bool)

(assert (=> b!4323200 (= e!2689731 e!2689732)))

(declare-fun c!735413 () Bool)

(assert (=> b!4323200 (= c!735413 (_1!26895 lt!1540788))))

(declare-fun b!4323201 () Bool)

(declare-fun res!1771780 () Bool)

(assert (=> b!4323201 (=> (not res!1771780) (not e!2689731))))

(assert (=> b!4323201 (= res!1771780 (valid!3770 (_2!26895 lt!1540788)))))

(declare-fun b!4323202 () Bool)

(declare-datatypes ((tuple2!47218 0))(
  ( (tuple2!47219 (_1!26896 Bool) (_2!26896 LongMapFixedSize!9514)) )
))
(declare-fun lt!1540789 () tuple2!47218)

(assert (=> b!4323202 (= e!2689730 (tuple2!47217 (_1!26896 lt!1540789) (LongMap!4757 (Cell!18838 (_2!26896 lt!1540789)))))))

(declare-fun update!534 (LongMapFixedSize!9514 (_ BitVec 64) List!48513) tuple2!47218)

(assert (=> b!4323202 (= lt!1540789 (update!534 (v!42785 (underlying!9743 (_2!26895 lt!1540790))) lt!1540766 lt!1540773))))

(declare-fun b!4323203 () Bool)

(assert (=> b!4323203 (= e!2689728 (tuple2!47217 true (v!42786 (underlying!9744 thiss!42308))))))

(declare-fun bm!299849 () Bool)

(declare-fun call!299855 () ListLongMap!1179)

(assert (=> bm!299849 (= call!299855 (map!10418 (_2!26895 lt!1540788)))))

(declare-fun b!4323204 () Bool)

(declare-fun lt!1540787 () tuple2!47216)

(assert (=> b!4323204 (= e!2689728 (tuple2!47217 (_1!26895 lt!1540787) (_2!26895 lt!1540787)))))

(declare-fun repack!86 (MutLongMap!4757) tuple2!47216)

(assert (=> b!4323204 (= lt!1540787 (repack!86 (v!42786 (underlying!9744 thiss!42308))))))

(declare-fun bm!299850 () Bool)

(declare-fun call!299854 () ListLongMap!1179)

(assert (=> bm!299850 (= call!299854 (map!10418 (v!42786 (underlying!9744 thiss!42308))))))

(declare-fun b!4323205 () Bool)

(assert (=> b!4323205 (= e!2689732 (= call!299855 call!299854))))

(declare-fun b!4323206 () Bool)

(assert (=> b!4323206 (= e!2689730 (tuple2!47217 false (_2!26895 lt!1540790)))))

(declare-fun b!4323207 () Bool)

(declare-fun e!2689729 () Bool)

(assert (=> b!4323207 (= e!2689732 e!2689729)))

(declare-fun res!1771781 () Bool)

(assert (=> b!4323207 (= res!1771781 (contains!10443 call!299855 lt!1540766))))

(assert (=> b!4323207 (=> (not res!1771781) (not e!2689729))))

(declare-fun b!4323208 () Bool)

(assert (=> b!4323208 (= e!2689729 (= call!299855 (+!335 call!299854 (tuple2!47215 lt!1540766 lt!1540773))))))

(assert (= (and d!1271233 c!735411) b!4323204))

(assert (= (and d!1271233 (not c!735411)) b!4323203))

(assert (= (and d!1271233 c!735412) b!4323202))

(assert (= (and d!1271233 (not c!735412)) b!4323206))

(assert (= (and d!1271233 res!1771782) b!4323201))

(assert (= (and b!4323201 res!1771780) b!4323200))

(assert (= (and b!4323200 c!735413) b!4323207))

(assert (= (and b!4323200 (not c!735413)) b!4323205))

(assert (= (and b!4323207 res!1771781) b!4323208))

(assert (= (or b!4323207 b!4323208 b!4323205) bm!299849))

(assert (= (or b!4323208 b!4323205) bm!299850))

(declare-fun m!4917687 () Bool)

(assert (=> b!4323201 m!4917687))

(declare-fun m!4917689 () Bool)

(assert (=> b!4323207 m!4917689))

(assert (=> bm!299850 m!4917657))

(declare-fun m!4917691 () Bool)

(assert (=> b!4323202 m!4917691))

(declare-fun m!4917693 () Bool)

(assert (=> b!4323204 m!4917693))

(declare-fun m!4917695 () Bool)

(assert (=> b!4323208 m!4917695))

(declare-fun m!4917697 () Bool)

(assert (=> bm!299849 m!4917697))

(declare-fun m!4917699 () Bool)

(assert (=> d!1271233 m!4917699))

(assert (=> d!1271233 m!4917679))

(assert (=> b!4323166 d!1271233))

(declare-fun d!1271235 () Bool)

(declare-fun lt!1540793 () Bool)

(assert (=> d!1271235 (= lt!1540793 (contains!10443 (map!10418 (v!42786 (underlying!9744 thiss!42308))) lt!1540766))))

(declare-fun contains!10446 (LongMapFixedSize!9514 (_ BitVec 64)) Bool)

(assert (=> d!1271235 (= lt!1540793 (contains!10446 (v!42785 (underlying!9743 (v!42786 (underlying!9744 thiss!42308)))) lt!1540766))))

(assert (=> d!1271235 (valid!3770 (v!42786 (underlying!9744 thiss!42308)))))

(assert (=> d!1271235 (= (contains!10444 (v!42786 (underlying!9744 thiss!42308)) lt!1540766) lt!1540793)))

(declare-fun bs!606891 () Bool)

(assert (= bs!606891 d!1271235))

(assert (=> bs!606891 m!4917657))

(assert (=> bs!606891 m!4917657))

(declare-fun m!4917701 () Bool)

(assert (=> bs!606891 m!4917701))

(declare-fun m!4917703 () Bool)

(assert (=> bs!606891 m!4917703))

(assert (=> bs!606891 m!4917679))

(assert (=> b!4323166 d!1271235))

(declare-fun d!1271237 () Bool)

(declare-fun hash!1192 (Hashable!4673 K!9639) (_ BitVec 64))

(assert (=> d!1271237 (= (hash!1188 (hashF!6940 thiss!42308) key!2048) (hash!1192 (hashF!6940 thiss!42308) key!2048))))

(declare-fun bs!606892 () Bool)

(assert (= bs!606892 d!1271237))

(declare-fun m!4917705 () Bool)

(assert (=> bs!606892 m!4917705))

(assert (=> b!4323166 d!1271237))

(declare-fun d!1271239 () Bool)

(assert (=> d!1271239 (= (apply!11146 lt!1540764 lt!1540766) (get!15680 (getValueByKey!301 (toList!2562 lt!1540764) lt!1540766)))))

(declare-fun bs!606893 () Bool)

(assert (= bs!606893 d!1271239))

(declare-fun m!4917707 () Bool)

(assert (=> bs!606893 m!4917707))

(assert (=> bs!606893 m!4917707))

(declare-fun m!4917709 () Bool)

(assert (=> bs!606893 m!4917709))

(assert (=> b!4323156 d!1271239))

(declare-fun bs!606894 () Bool)

(declare-fun b!4323213 () Bool)

(assert (= bs!606894 (and b!4323213 b!4323162)))

(declare-fun lambda!133995 () Int)

(assert (=> bs!606894 (= lambda!133995 lambda!133989)))

(declare-fun bs!606895 () Bool)

(assert (= bs!606895 (and b!4323213 d!1271229)))

(assert (=> bs!606895 (not (= lambda!133995 lambda!133992))))

(declare-fun d!1271241 () Bool)

(declare-fun res!1771787 () Bool)

(declare-fun e!2689735 () Bool)

(assert (=> d!1271241 (=> (not res!1771787) (not e!2689735))))

(assert (=> d!1271241 (= res!1771787 (valid!3770 (v!42786 (underlying!9744 thiss!42308))))))

(assert (=> d!1271241 (= (valid!3769 thiss!42308) e!2689735)))

(declare-fun res!1771788 () Bool)

(assert (=> b!4323213 (=> (not res!1771788) (not e!2689735))))

(assert (=> b!4323213 (= res!1771788 (forall!8818 (toList!2562 (map!10418 (v!42786 (underlying!9744 thiss!42308)))) lambda!133995))))

(declare-fun b!4323214 () Bool)

(assert (=> b!4323214 (= e!2689735 (allKeysSameHashInMap!391 (map!10418 (v!42786 (underlying!9744 thiss!42308))) (hashF!6940 thiss!42308)))))

(assert (= (and d!1271241 res!1771787) b!4323213))

(assert (= (and b!4323213 res!1771788) b!4323214))

(assert (=> d!1271241 m!4917679))

(assert (=> b!4323213 m!4917657))

(declare-fun m!4917711 () Bool)

(assert (=> b!4323213 m!4917711))

(assert (=> b!4323214 m!4917657))

(assert (=> b!4323214 m!4917657))

(declare-fun m!4917713 () Bool)

(assert (=> b!4323214 m!4917713))

(assert (=> b!4323158 d!1271241))

(declare-fun bs!606896 () Bool)

(declare-fun d!1271243 () Bool)

(assert (= bs!606896 (and d!1271243 b!4323162)))

(declare-fun lambda!133998 () Int)

(assert (=> bs!606896 (not (= lambda!133998 lambda!133989))))

(declare-fun bs!606897 () Bool)

(assert (= bs!606897 (and d!1271243 d!1271229)))

(assert (=> bs!606897 (= lambda!133998 lambda!133992)))

(declare-fun bs!606898 () Bool)

(assert (= bs!606898 (and d!1271243 b!4323213)))

(assert (=> bs!606898 (not (= lambda!133998 lambda!133995))))

(assert (=> d!1271243 true))

(assert (=> d!1271243 (allKeysSameHash!248 lt!1540768 lt!1540766 (hashF!6940 thiss!42308))))

(declare-fun lt!1540796 () Unit!67866)

(declare-fun choose!26419 (List!48514 (_ BitVec 64) List!48513 Hashable!4673) Unit!67866)

(assert (=> d!1271243 (= lt!1540796 (choose!26419 (toList!2562 lt!1540764) lt!1540766 lt!1540768 (hashF!6940 thiss!42308)))))

(assert (=> d!1271243 (forall!8818 (toList!2562 lt!1540764) lambda!133998)))

(assert (=> d!1271243 (= (lemmaInLongMapAllKeySameHashThenForTuple!233 (toList!2562 lt!1540764) lt!1540766 lt!1540768 (hashF!6940 thiss!42308)) lt!1540796)))

(declare-fun bs!606899 () Bool)

(assert (= bs!606899 d!1271243))

(assert (=> bs!606899 m!4917643))

(declare-fun m!4917715 () Bool)

(assert (=> bs!606899 m!4917715))

(declare-fun m!4917717 () Bool)

(assert (=> bs!606899 m!4917717))

(assert (=> b!4323157 d!1271243))

(declare-fun d!1271245 () Bool)

(assert (=> d!1271245 true))

(assert (=> d!1271245 true))

(declare-fun lambda!134001 () Int)

(declare-fun forall!8819 (List!48513 Int) Bool)

(assert (=> d!1271245 (= (allKeysSameHash!248 (removePairForKey!271 lt!1540768 key!2048) lt!1540766 (hashF!6940 thiss!42308)) (forall!8819 (removePairForKey!271 lt!1540768 key!2048) lambda!134001))))

(declare-fun bs!606900 () Bool)

(assert (= bs!606900 d!1271245))

(assert (=> bs!606900 m!4917645))

(declare-fun m!4917719 () Bool)

(assert (=> bs!606900 m!4917719))

(assert (=> b!4323157 d!1271245))

(declare-fun d!1271247 () Bool)

(assert (=> d!1271247 (allKeysSameHash!248 (removePairForKey!271 lt!1540768 key!2048) lt!1540766 (hashF!6940 thiss!42308))))

(declare-fun lt!1540799 () Unit!67866)

(declare-fun choose!26420 (List!48513 K!9639 (_ BitVec 64) Hashable!4673) Unit!67866)

(assert (=> d!1271247 (= lt!1540799 (choose!26420 lt!1540768 key!2048 lt!1540766 (hashF!6940 thiss!42308)))))

(declare-fun noDuplicateKeys!264 (List!48513) Bool)

(assert (=> d!1271247 (noDuplicateKeys!264 lt!1540768)))

(assert (=> d!1271247 (= (lemmaRemovePairForKeyPreservesHash!224 lt!1540768 key!2048 lt!1540766 (hashF!6940 thiss!42308)) lt!1540799)))

(declare-fun bs!606901 () Bool)

(assert (= bs!606901 d!1271247))

(assert (=> bs!606901 m!4917645))

(assert (=> bs!606901 m!4917645))

(assert (=> bs!606901 m!4917647))

(declare-fun m!4917721 () Bool)

(assert (=> bs!606901 m!4917721))

(declare-fun m!4917723 () Bool)

(assert (=> bs!606901 m!4917723))

(assert (=> b!4323157 d!1271247))

(declare-fun b!4323230 () Bool)

(declare-fun e!2689741 () List!48513)

(assert (=> b!4323230 (= e!2689741 Nil!48389)))

(declare-fun b!4323227 () Bool)

(declare-fun e!2689740 () List!48513)

(assert (=> b!4323227 (= e!2689740 (t!355401 lt!1540768))))

(declare-fun d!1271249 () Bool)

(declare-fun lt!1540802 () List!48513)

(declare-fun containsKey!406 (List!48513 K!9639) Bool)

(assert (=> d!1271249 (not (containsKey!406 lt!1540802 key!2048))))

(assert (=> d!1271249 (= lt!1540802 e!2689740)))

(declare-fun c!735419 () Bool)

(assert (=> d!1271249 (= c!735419 (and ((_ is Cons!48389) lt!1540768) (= (_1!26893 (h!53851 lt!1540768)) key!2048)))))

(assert (=> d!1271249 (noDuplicateKeys!264 lt!1540768)))

(assert (=> d!1271249 (= (removePairForKey!271 lt!1540768 key!2048) lt!1540802)))

(declare-fun b!4323229 () Bool)

(assert (=> b!4323229 (= e!2689741 (Cons!48389 (h!53851 lt!1540768) (removePairForKey!271 (t!355401 lt!1540768) key!2048)))))

(declare-fun b!4323228 () Bool)

(assert (=> b!4323228 (= e!2689740 e!2689741)))

(declare-fun c!735418 () Bool)

(assert (=> b!4323228 (= c!735418 ((_ is Cons!48389) lt!1540768))))

(assert (= (and d!1271249 c!735419) b!4323227))

(assert (= (and d!1271249 (not c!735419)) b!4323228))

(assert (= (and b!4323228 c!735418) b!4323229))

(assert (= (and b!4323228 (not c!735418)) b!4323230))

(declare-fun m!4917725 () Bool)

(assert (=> d!1271249 m!4917725))

(assert (=> d!1271249 m!4917723))

(declare-fun m!4917727 () Bool)

(assert (=> b!4323229 m!4917727))

(assert (=> b!4323157 d!1271249))

(declare-fun bs!606902 () Bool)

(declare-fun d!1271251 () Bool)

(assert (= bs!606902 (and d!1271251 d!1271245)))

(declare-fun lambda!134002 () Int)

(assert (=> bs!606902 (= lambda!134002 lambda!134001)))

(assert (=> d!1271251 true))

(assert (=> d!1271251 true))

(assert (=> d!1271251 (= (allKeysSameHash!248 lt!1540768 lt!1540766 (hashF!6940 thiss!42308)) (forall!8819 lt!1540768 lambda!134002))))

(declare-fun bs!606903 () Bool)

(assert (= bs!606903 d!1271251))

(declare-fun m!4917729 () Bool)

(assert (=> bs!606903 m!4917729))

(assert (=> b!4323157 d!1271251))

(declare-fun bs!606904 () Bool)

(declare-fun b!4323255 () Bool)

(assert (= bs!606904 (and b!4323255 b!4323162)))

(declare-fun lambda!134005 () Int)

(assert (=> bs!606904 (= lambda!134005 lambda!133989)))

(declare-fun bs!606905 () Bool)

(assert (= bs!606905 (and b!4323255 d!1271229)))

(assert (=> bs!606905 (not (= lambda!134005 lambda!133992))))

(declare-fun bs!606906 () Bool)

(assert (= bs!606906 (and b!4323255 b!4323213)))

(assert (=> bs!606906 (= lambda!134005 lambda!133995)))

(declare-fun bs!606907 () Bool)

(assert (= bs!606907 (and b!4323255 d!1271243)))

(assert (=> bs!606907 (not (= lambda!134005 lambda!133998))))

(declare-fun bm!299863 () Bool)

(declare-fun call!299870 () Bool)

(declare-datatypes ((Option!10307 0))(
  ( (None!10306) (Some!10306 (v!42792 tuple2!47212)) )
))
(declare-fun call!299871 () Option!10307)

(declare-fun isDefined!7607 (Option!10307) Bool)

(assert (=> bm!299863 (= call!299870 (isDefined!7607 call!299871))))

(declare-fun bm!299864 () Bool)

(declare-fun call!299872 () (_ BitVec 64))

(assert (=> bm!299864 (= call!299872 (hash!1188 (hashF!6940 thiss!42308) key!2048))))

(declare-fun b!4323253 () Bool)

(assert (=> b!4323253 false))

(declare-fun lt!1540859 () Unit!67866)

(declare-fun lt!1540844 () Unit!67866)

(assert (=> b!4323253 (= lt!1540859 lt!1540844)))

(declare-fun lt!1540860 () List!48514)

(declare-fun lt!1540857 () (_ BitVec 64))

(declare-fun lt!1540851 () List!48513)

(declare-fun contains!10447 (List!48514 tuple2!47214) Bool)

(assert (=> b!4323253 (contains!10447 lt!1540860 (tuple2!47215 lt!1540857 lt!1540851))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!176 (List!48514 (_ BitVec 64) List!48513) Unit!67866)

(assert (=> b!4323253 (= lt!1540844 (lemmaGetValueByKeyImpliesContainsTuple!176 lt!1540860 lt!1540857 lt!1540851))))

(assert (=> b!4323253 (= lt!1540851 (apply!11147 (v!42786 (underlying!9744 thiss!42308)) lt!1540857))))

(assert (=> b!4323253 (= lt!1540860 (toList!2562 (map!10418 (v!42786 (underlying!9744 thiss!42308)))))))

(declare-fun lt!1540858 () Unit!67866)

(declare-fun lt!1540854 () Unit!67866)

(assert (=> b!4323253 (= lt!1540858 lt!1540854)))

(declare-fun lt!1540853 () List!48514)

(declare-fun isDefined!7608 (Option!10306) Bool)

(assert (=> b!4323253 (isDefined!7608 (getValueByKey!301 lt!1540853 lt!1540857))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!220 (List!48514 (_ BitVec 64)) Unit!67866)

(assert (=> b!4323253 (= lt!1540854 (lemmaContainsKeyImpliesGetValueByKeyDefined!220 lt!1540853 lt!1540857))))

(assert (=> b!4323253 (= lt!1540853 (toList!2562 (map!10418 (v!42786 (underlying!9744 thiss!42308)))))))

(declare-fun lt!1540862 () Unit!67866)

(declare-fun lt!1540849 () Unit!67866)

(assert (=> b!4323253 (= lt!1540862 lt!1540849)))

(declare-fun lt!1540856 () List!48514)

(declare-fun containsKey!407 (List!48514 (_ BitVec 64)) Bool)

(assert (=> b!4323253 (containsKey!407 lt!1540856 lt!1540857)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!165 (List!48514 (_ BitVec 64)) Unit!67866)

(assert (=> b!4323253 (= lt!1540849 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!165 lt!1540856 lt!1540857))))

(assert (=> b!4323253 (= lt!1540856 (toList!2562 (map!10418 (v!42786 (underlying!9744 thiss!42308)))))))

(declare-fun e!2689762 () Unit!67866)

(declare-fun Unit!67869 () Unit!67866)

(assert (=> b!4323253 (= e!2689762 Unit!67869)))

(declare-fun b!4323254 () Bool)

(declare-fun e!2689756 () Unit!67866)

(declare-fun Unit!67870 () Unit!67866)

(assert (=> b!4323254 (= e!2689756 Unit!67870)))

(declare-fun bm!299865 () Bool)

(declare-fun call!299868 () ListLongMap!1179)

(assert (=> bm!299865 (= call!299868 (map!10418 (v!42786 (underlying!9744 thiss!42308))))))

(declare-fun forallContained!1536 (List!48514 Int tuple2!47214) Unit!67866)

(assert (=> b!4323255 (= e!2689756 (forallContained!1536 (toList!2562 (map!10418 (v!42786 (underlying!9744 thiss!42308)))) lambda!134005 (tuple2!47215 lt!1540857 (apply!11147 (v!42786 (underlying!9744 thiss!42308)) lt!1540857))))))

(declare-fun c!735429 () Bool)

(assert (=> b!4323255 (= c!735429 (not (contains!10447 (toList!2562 (map!10418 (v!42786 (underlying!9744 thiss!42308)))) (tuple2!47215 lt!1540857 (apply!11147 (v!42786 (underlying!9744 thiss!42308)) lt!1540857)))))))

(declare-fun lt!1540852 () Unit!67866)

(assert (=> b!4323255 (= lt!1540852 e!2689762)))

(declare-fun c!735430 () Bool)

(declare-fun lt!1540846 () ListLongMap!1179)

(declare-fun bm!299866 () Bool)

(declare-fun call!299869 () Bool)

(assert (=> bm!299866 (= call!299869 (contains!10443 (ite c!735430 lt!1540846 call!299868) call!299872))))

(declare-fun b!4323256 () Bool)

(declare-fun e!2689760 () Unit!67866)

(declare-fun Unit!67871 () Unit!67866)

(assert (=> b!4323256 (= e!2689760 Unit!67871)))

(declare-fun d!1271253 () Bool)

(declare-fun lt!1540845 () Bool)

(assert (=> d!1271253 (= lt!1540845 (contains!10442 (map!10419 thiss!42308) key!2048))))

(declare-fun e!2689759 () Bool)

(assert (=> d!1271253 (= lt!1540845 e!2689759)))

(declare-fun res!1771795 () Bool)

(assert (=> d!1271253 (=> (not res!1771795) (not e!2689759))))

(assert (=> d!1271253 (= res!1771795 (contains!10444 (v!42786 (underlying!9744 thiss!42308)) lt!1540857))))

(declare-fun lt!1540861 () Unit!67866)

(declare-fun e!2689757 () Unit!67866)

(assert (=> d!1271253 (= lt!1540861 e!2689757)))

(assert (=> d!1271253 (= c!735430 (contains!10442 (extractMap!370 (toList!2562 (map!10418 (v!42786 (underlying!9744 thiss!42308))))) key!2048))))

(declare-fun lt!1540855 () Unit!67866)

(assert (=> d!1271253 (= lt!1540855 e!2689756)))

(declare-fun c!735428 () Bool)

(assert (=> d!1271253 (= c!735428 (contains!10444 (v!42786 (underlying!9744 thiss!42308)) lt!1540857))))

(assert (=> d!1271253 (= lt!1540857 (hash!1188 (hashF!6940 thiss!42308) key!2048))))

(assert (=> d!1271253 (valid!3769 thiss!42308)))

(assert (=> d!1271253 (= (contains!10445 thiss!42308 key!2048) lt!1540845)))

(declare-fun b!4323257 () Bool)

(declare-fun lt!1540847 () Unit!67866)

(assert (=> b!4323257 (= e!2689757 lt!1540847)))

(assert (=> b!4323257 (= lt!1540846 call!299868)))

(declare-fun lemmaInGenericMapThenInLongMap!164 (ListLongMap!1179 K!9639 Hashable!4673) Unit!67866)

(assert (=> b!4323257 (= lt!1540847 (lemmaInGenericMapThenInLongMap!164 lt!1540846 key!2048 (hashF!6940 thiss!42308)))))

(declare-fun res!1771797 () Bool)

(assert (=> b!4323257 (= res!1771797 call!299869)))

(declare-fun e!2689758 () Bool)

(assert (=> b!4323257 (=> (not res!1771797) (not e!2689758))))

(assert (=> b!4323257 e!2689758))

(declare-fun b!4323258 () Bool)

(assert (=> b!4323258 (= e!2689758 call!299870)))

(declare-fun bm!299867 () Bool)

(declare-fun call!299873 () List!48513)

(declare-fun getPair!164 (List!48513 K!9639) Option!10307)

(assert (=> bm!299867 (= call!299871 (getPair!164 call!299873 key!2048))))

(declare-fun bm!299868 () Bool)

(assert (=> bm!299868 (= call!299873 (apply!11146 (ite c!735430 lt!1540846 call!299868) call!299872))))

(declare-fun b!4323259 () Bool)

(assert (=> b!4323259 (= e!2689759 (isDefined!7607 (getPair!164 (apply!11147 (v!42786 (underlying!9744 thiss!42308)) lt!1540857) key!2048)))))

(declare-fun b!4323260 () Bool)

(declare-fun e!2689761 () Bool)

(assert (=> b!4323260 (= e!2689761 call!299870)))

(declare-fun b!4323261 () Bool)

(assert (=> b!4323261 (= e!2689757 e!2689760)))

(declare-fun res!1771796 () Bool)

(assert (=> b!4323261 (= res!1771796 call!299869)))

(assert (=> b!4323261 (=> (not res!1771796) (not e!2689761))))

(declare-fun c!735431 () Bool)

(assert (=> b!4323261 (= c!735431 e!2689761)))

(declare-fun b!4323262 () Bool)

(assert (=> b!4323262 false))

(declare-fun lt!1540848 () Unit!67866)

(declare-fun lt!1540843 () Unit!67866)

(assert (=> b!4323262 (= lt!1540848 lt!1540843)))

(declare-fun lt!1540850 () ListLongMap!1179)

(assert (=> b!4323262 (contains!10442 (extractMap!370 (toList!2562 lt!1540850)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!164 (ListLongMap!1179 K!9639 Hashable!4673) Unit!67866)

(assert (=> b!4323262 (= lt!1540843 (lemmaInLongMapThenInGenericMap!164 lt!1540850 key!2048 (hashF!6940 thiss!42308)))))

(assert (=> b!4323262 (= lt!1540850 call!299868)))

(declare-fun Unit!67872 () Unit!67866)

(assert (=> b!4323262 (= e!2689760 Unit!67872)))

(declare-fun b!4323263 () Bool)

(declare-fun Unit!67873 () Unit!67866)

(assert (=> b!4323263 (= e!2689762 Unit!67873)))

(assert (= (and d!1271253 c!735428) b!4323255))

(assert (= (and d!1271253 (not c!735428)) b!4323254))

(assert (= (and b!4323255 c!735429) b!4323253))

(assert (= (and b!4323255 (not c!735429)) b!4323263))

(assert (= (and d!1271253 c!735430) b!4323257))

(assert (= (and d!1271253 (not c!735430)) b!4323261))

(assert (= (and b!4323257 res!1771797) b!4323258))

(assert (= (and b!4323261 res!1771796) b!4323260))

(assert (= (and b!4323261 c!735431) b!4323262))

(assert (= (and b!4323261 (not c!735431)) b!4323256))

(assert (= (or b!4323257 b!4323258 b!4323261 b!4323260) bm!299864))

(assert (= (or b!4323257 b!4323261 b!4323260 b!4323262) bm!299865))

(assert (= (or b!4323257 b!4323261) bm!299866))

(assert (= (or b!4323258 b!4323260) bm!299868))

(assert (= (or b!4323258 b!4323260) bm!299867))

(assert (= (or b!4323258 b!4323260) bm!299863))

(assert (= (and d!1271253 res!1771795) b!4323259))

(declare-fun m!4917731 () Bool)

(assert (=> bm!299868 m!4917731))

(declare-fun m!4917733 () Bool)

(assert (=> b!4323259 m!4917733))

(assert (=> b!4323259 m!4917733))

(declare-fun m!4917735 () Bool)

(assert (=> b!4323259 m!4917735))

(assert (=> b!4323259 m!4917735))

(declare-fun m!4917737 () Bool)

(assert (=> b!4323259 m!4917737))

(declare-fun m!4917739 () Bool)

(assert (=> b!4323253 m!4917739))

(declare-fun m!4917741 () Bool)

(assert (=> b!4323253 m!4917741))

(declare-fun m!4917743 () Bool)

(assert (=> b!4323253 m!4917743))

(declare-fun m!4917745 () Bool)

(assert (=> b!4323253 m!4917745))

(assert (=> b!4323253 m!4917657))

(assert (=> b!4323253 m!4917741))

(declare-fun m!4917747 () Bool)

(assert (=> b!4323253 m!4917747))

(declare-fun m!4917749 () Bool)

(assert (=> b!4323253 m!4917749))

(assert (=> b!4323253 m!4917733))

(declare-fun m!4917751 () Bool)

(assert (=> b!4323253 m!4917751))

(declare-fun m!4917753 () Bool)

(assert (=> bm!299866 m!4917753))

(declare-fun m!4917755 () Bool)

(assert (=> b!4323257 m!4917755))

(assert (=> bm!299864 m!4917665))

(assert (=> d!1271253 m!4917667))

(assert (=> d!1271253 m!4917665))

(declare-fun m!4917757 () Bool)

(assert (=> d!1271253 m!4917757))

(assert (=> d!1271253 m!4917659))

(declare-fun m!4917759 () Bool)

(assert (=> d!1271253 m!4917759))

(assert (=> d!1271253 m!4917657))

(assert (=> d!1271253 m!4917757))

(declare-fun m!4917761 () Bool)

(assert (=> d!1271253 m!4917761))

(assert (=> d!1271253 m!4917659))

(declare-fun m!4917763 () Bool)

(assert (=> d!1271253 m!4917763))

(assert (=> b!4323255 m!4917657))

(assert (=> b!4323255 m!4917733))

(declare-fun m!4917765 () Bool)

(assert (=> b!4323255 m!4917765))

(declare-fun m!4917767 () Bool)

(assert (=> b!4323255 m!4917767))

(declare-fun m!4917769 () Bool)

(assert (=> bm!299867 m!4917769))

(declare-fun m!4917771 () Bool)

(assert (=> b!4323262 m!4917771))

(assert (=> b!4323262 m!4917771))

(declare-fun m!4917773 () Bool)

(assert (=> b!4323262 m!4917773))

(declare-fun m!4917775 () Bool)

(assert (=> b!4323262 m!4917775))

(declare-fun m!4917777 () Bool)

(assert (=> bm!299863 m!4917777))

(assert (=> bm!299865 m!4917657))

(assert (=> b!4323167 d!1271253))

(declare-fun d!1271255 () Bool)

(declare-fun map!10420 (LongMapFixedSize!9514) ListLongMap!1179)

(assert (=> d!1271255 (= (map!10418 (v!42786 (underlying!9744 thiss!42308))) (map!10420 (v!42785 (underlying!9743 (v!42786 (underlying!9744 thiss!42308))))))))

(declare-fun bs!606908 () Bool)

(assert (= bs!606908 d!1271255))

(declare-fun m!4917779 () Bool)

(assert (=> bs!606908 m!4917779))

(assert (=> b!4323167 d!1271255))

(declare-fun d!1271257 () Bool)

(declare-fun lt!1540865 () ListMap!1839)

(declare-fun invariantList!603 (List!48513) Bool)

(assert (=> d!1271257 (invariantList!603 (toList!2563 lt!1540865))))

(assert (=> d!1271257 (= lt!1540865 (extractMap!370 (toList!2562 (map!10418 (v!42786 (underlying!9744 thiss!42308))))))))

(assert (=> d!1271257 (valid!3769 thiss!42308)))

(assert (=> d!1271257 (= (map!10419 thiss!42308) lt!1540865)))

(declare-fun bs!606909 () Bool)

(assert (= bs!606909 d!1271257))

(declare-fun m!4917781 () Bool)

(assert (=> bs!606909 m!4917781))

(assert (=> bs!606909 m!4917657))

(assert (=> bs!606909 m!4917757))

(assert (=> bs!606909 m!4917667))

(assert (=> b!4323167 d!1271257))

(declare-fun d!1271259 () Bool)

(declare-fun e!2689768 () Bool)

(assert (=> d!1271259 e!2689768))

(declare-fun res!1771800 () Bool)

(assert (=> d!1271259 (=> res!1771800 e!2689768)))

(declare-fun lt!1540876 () Bool)

(assert (=> d!1271259 (= res!1771800 (not lt!1540876))))

(declare-fun lt!1540877 () Bool)

(assert (=> d!1271259 (= lt!1540876 lt!1540877)))

(declare-fun lt!1540874 () Unit!67866)

(declare-fun e!2689767 () Unit!67866)

(assert (=> d!1271259 (= lt!1540874 e!2689767)))

(declare-fun c!735434 () Bool)

(assert (=> d!1271259 (= c!735434 lt!1540877)))

(assert (=> d!1271259 (= lt!1540877 (containsKey!407 (toList!2562 lt!1540764) lt!1540766))))

(assert (=> d!1271259 (= (contains!10443 lt!1540764 lt!1540766) lt!1540876)))

(declare-fun b!4323270 () Bool)

(declare-fun lt!1540875 () Unit!67866)

(assert (=> b!4323270 (= e!2689767 lt!1540875)))

(assert (=> b!4323270 (= lt!1540875 (lemmaContainsKeyImpliesGetValueByKeyDefined!220 (toList!2562 lt!1540764) lt!1540766))))

(assert (=> b!4323270 (isDefined!7608 (getValueByKey!301 (toList!2562 lt!1540764) lt!1540766))))

(declare-fun b!4323271 () Bool)

(declare-fun Unit!67874 () Unit!67866)

(assert (=> b!4323271 (= e!2689767 Unit!67874)))

(declare-fun b!4323272 () Bool)

(assert (=> b!4323272 (= e!2689768 (isDefined!7608 (getValueByKey!301 (toList!2562 lt!1540764) lt!1540766)))))

(assert (= (and d!1271259 c!735434) b!4323270))

(assert (= (and d!1271259 (not c!735434)) b!4323271))

(assert (= (and d!1271259 (not res!1771800)) b!4323272))

(declare-fun m!4917783 () Bool)

(assert (=> d!1271259 m!4917783))

(declare-fun m!4917785 () Bool)

(assert (=> b!4323270 m!4917785))

(assert (=> b!4323270 m!4917707))

(assert (=> b!4323270 m!4917707))

(declare-fun m!4917787 () Bool)

(assert (=> b!4323270 m!4917787))

(assert (=> b!4323272 m!4917707))

(assert (=> b!4323272 m!4917707))

(assert (=> b!4323272 m!4917787))

(assert (=> b!4323160 d!1271259))

(declare-fun d!1271261 () Bool)

(declare-fun res!1771805 () Bool)

(declare-fun e!2689773 () Bool)

(assert (=> d!1271261 (=> res!1771805 e!2689773)))

(assert (=> d!1271261 (= res!1771805 ((_ is Nil!48390) (toList!2562 lt!1540765)))))

(assert (=> d!1271261 (= (forall!8818 (toList!2562 lt!1540765) lambda!133989) e!2689773)))

(declare-fun b!4323277 () Bool)

(declare-fun e!2689774 () Bool)

(assert (=> b!4323277 (= e!2689773 e!2689774)))

(declare-fun res!1771806 () Bool)

(assert (=> b!4323277 (=> (not res!1771806) (not e!2689774))))

(declare-fun dynLambda!20512 (Int tuple2!47214) Bool)

(assert (=> b!4323277 (= res!1771806 (dynLambda!20512 lambda!133989 (h!53852 (toList!2562 lt!1540765))))))

(declare-fun b!4323278 () Bool)

(assert (=> b!4323278 (= e!2689774 (forall!8818 (t!355402 (toList!2562 lt!1540765)) lambda!133989))))

(assert (= (and d!1271261 (not res!1771805)) b!4323277))

(assert (= (and b!4323277 res!1771806) b!4323278))

(declare-fun b_lambda!127401 () Bool)

(assert (=> (not b_lambda!127401) (not b!4323277)))

(declare-fun m!4917789 () Bool)

(assert (=> b!4323277 m!4917789))

(declare-fun m!4917791 () Bool)

(assert (=> b!4323278 m!4917791))

(assert (=> b!4323162 d!1271261))

(declare-fun d!1271263 () Bool)

(declare-fun res!1771807 () Bool)

(declare-fun e!2689775 () Bool)

(assert (=> d!1271263 (=> res!1771807 e!2689775)))

(assert (=> d!1271263 (= res!1771807 ((_ is Nil!48390) (toList!2562 lt!1540764)))))

(assert (=> d!1271263 (= (forall!8818 (toList!2562 lt!1540764) lambda!133989) e!2689775)))

(declare-fun b!4323279 () Bool)

(declare-fun e!2689776 () Bool)

(assert (=> b!4323279 (= e!2689775 e!2689776)))

(declare-fun res!1771808 () Bool)

(assert (=> b!4323279 (=> (not res!1771808) (not e!2689776))))

(assert (=> b!4323279 (= res!1771808 (dynLambda!20512 lambda!133989 (h!53852 (toList!2562 lt!1540764))))))

(declare-fun b!4323280 () Bool)

(assert (=> b!4323280 (= e!2689776 (forall!8818 (t!355402 (toList!2562 lt!1540764)) lambda!133989))))

(assert (= (and d!1271263 (not res!1771807)) b!4323279))

(assert (= (and b!4323279 res!1771808) b!4323280))

(declare-fun b_lambda!127403 () Bool)

(assert (=> (not b_lambda!127403) (not b!4323279)))

(declare-fun m!4917793 () Bool)

(assert (=> b!4323279 m!4917793))

(declare-fun m!4917795 () Bool)

(assert (=> b!4323280 m!4917795))

(assert (=> b!4323162 d!1271263))

(declare-fun d!1271265 () Bool)

(declare-fun e!2689779 () Bool)

(assert (=> d!1271265 e!2689779))

(declare-fun res!1771813 () Bool)

(assert (=> d!1271265 (=> (not res!1771813) (not e!2689779))))

(declare-fun lt!1540889 () ListLongMap!1179)

(assert (=> d!1271265 (= res!1771813 (contains!10443 lt!1540889 (_1!26894 (tuple2!47215 lt!1540766 lt!1540773))))))

(declare-fun lt!1540886 () List!48514)

(assert (=> d!1271265 (= lt!1540889 (ListLongMap!1180 lt!1540886))))

(declare-fun lt!1540887 () Unit!67866)

(declare-fun lt!1540888 () Unit!67866)

(assert (=> d!1271265 (= lt!1540887 lt!1540888)))

(assert (=> d!1271265 (= (getValueByKey!301 lt!1540886 (_1!26894 (tuple2!47215 lt!1540766 lt!1540773))) (Some!10305 (_2!26894 (tuple2!47215 lt!1540766 lt!1540773))))))

(declare-fun lemmaContainsTupThenGetReturnValue!98 (List!48514 (_ BitVec 64) List!48513) Unit!67866)

(assert (=> d!1271265 (= lt!1540888 (lemmaContainsTupThenGetReturnValue!98 lt!1540886 (_1!26894 (tuple2!47215 lt!1540766 lt!1540773)) (_2!26894 (tuple2!47215 lt!1540766 lt!1540773))))))

(declare-fun insertStrictlySorted!58 (List!48514 (_ BitVec 64) List!48513) List!48514)

(assert (=> d!1271265 (= lt!1540886 (insertStrictlySorted!58 (toList!2562 lt!1540764) (_1!26894 (tuple2!47215 lt!1540766 lt!1540773)) (_2!26894 (tuple2!47215 lt!1540766 lt!1540773))))))

(assert (=> d!1271265 (= (+!335 lt!1540764 (tuple2!47215 lt!1540766 lt!1540773)) lt!1540889)))

(declare-fun b!4323285 () Bool)

(declare-fun res!1771814 () Bool)

(assert (=> b!4323285 (=> (not res!1771814) (not e!2689779))))

(assert (=> b!4323285 (= res!1771814 (= (getValueByKey!301 (toList!2562 lt!1540889) (_1!26894 (tuple2!47215 lt!1540766 lt!1540773))) (Some!10305 (_2!26894 (tuple2!47215 lt!1540766 lt!1540773)))))))

(declare-fun b!4323286 () Bool)

(assert (=> b!4323286 (= e!2689779 (contains!10447 (toList!2562 lt!1540889) (tuple2!47215 lt!1540766 lt!1540773)))))

(assert (= (and d!1271265 res!1771813) b!4323285))

(assert (= (and b!4323285 res!1771814) b!4323286))

(declare-fun m!4917797 () Bool)

(assert (=> d!1271265 m!4917797))

(declare-fun m!4917799 () Bool)

(assert (=> d!1271265 m!4917799))

(declare-fun m!4917801 () Bool)

(assert (=> d!1271265 m!4917801))

(declare-fun m!4917803 () Bool)

(assert (=> d!1271265 m!4917803))

(declare-fun m!4917805 () Bool)

(assert (=> b!4323285 m!4917805))

(declare-fun m!4917807 () Bool)

(assert (=> b!4323286 m!4917807))

(assert (=> b!4323162 d!1271265))

(declare-fun d!1271267 () Bool)

(assert (=> d!1271267 (= (isEmpty!28125 lt!1540768) ((_ is Nil!48389) lt!1540768))))

(assert (=> b!4323162 d!1271267))

(declare-fun bs!606910 () Bool)

(declare-fun d!1271269 () Bool)

(assert (= bs!606910 (and d!1271269 d!1271229)))

(declare-fun lambda!134010 () Int)

(assert (=> bs!606910 (not (= lambda!134010 lambda!133992))))

(declare-fun bs!606911 () Bool)

(assert (= bs!606911 (and d!1271269 b!4323255)))

(assert (=> bs!606911 (= lambda!134010 lambda!134005)))

(declare-fun bs!606912 () Bool)

(assert (= bs!606912 (and d!1271269 b!4323213)))

(assert (=> bs!606912 (= lambda!134010 lambda!133995)))

(declare-fun bs!606913 () Bool)

(assert (= bs!606913 (and d!1271269 d!1271243)))

(assert (=> bs!606913 (not (= lambda!134010 lambda!133998))))

(declare-fun bs!606914 () Bool)

(assert (= bs!606914 (and d!1271269 b!4323162)))

(assert (=> bs!606914 (= lambda!134010 lambda!133989)))

(declare-fun e!2689782 () Bool)

(assert (=> d!1271269 e!2689782))

(declare-fun res!1771817 () Bool)

(assert (=> d!1271269 (=> (not res!1771817) (not e!2689782))))

(declare-fun lt!1540895 () ListLongMap!1179)

(assert (=> d!1271269 (= res!1771817 (forall!8818 (toList!2562 lt!1540895) lambda!134010))))

(assert (=> d!1271269 (= lt!1540895 (+!335 lt!1540764 (tuple2!47215 lt!1540766 lt!1540773)))))

(declare-fun lt!1540894 () Unit!67866)

(declare-fun choose!26421 (ListLongMap!1179 (_ BitVec 64) List!48513 Hashable!4673) Unit!67866)

(assert (=> d!1271269 (= lt!1540894 (choose!26421 lt!1540764 lt!1540766 lt!1540773 (hashF!6940 thiss!42308)))))

(assert (=> d!1271269 (forall!8818 (toList!2562 lt!1540764) lambda!134010)))

(assert (=> d!1271269 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!184 lt!1540764 lt!1540766 lt!1540773 (hashF!6940 thiss!42308)) lt!1540894)))

(declare-fun b!4323289 () Bool)

(assert (=> b!4323289 (= e!2689782 (allKeysSameHashInMap!391 lt!1540895 (hashF!6940 thiss!42308)))))

(assert (= (and d!1271269 res!1771817) b!4323289))

(declare-fun m!4917809 () Bool)

(assert (=> d!1271269 m!4917809))

(assert (=> d!1271269 m!4917629))

(declare-fun m!4917811 () Bool)

(assert (=> d!1271269 m!4917811))

(declare-fun m!4917813 () Bool)

(assert (=> d!1271269 m!4917813))

(declare-fun m!4917815 () Bool)

(assert (=> b!4323289 m!4917815))

(assert (=> b!4323162 d!1271269))

(declare-fun bs!606915 () Bool)

(declare-fun d!1271271 () Bool)

(assert (= bs!606915 (and d!1271271 d!1271229)))

(declare-fun lambda!134011 () Int)

(assert (=> bs!606915 (= lambda!134011 lambda!133992)))

(declare-fun bs!606916 () Bool)

(assert (= bs!606916 (and d!1271271 b!4323255)))

(assert (=> bs!606916 (not (= lambda!134011 lambda!134005))))

(declare-fun bs!606917 () Bool)

(assert (= bs!606917 (and d!1271271 b!4323213)))

(assert (=> bs!606917 (not (= lambda!134011 lambda!133995))))

(declare-fun bs!606918 () Bool)

(assert (= bs!606918 (and d!1271271 d!1271243)))

(assert (=> bs!606918 (= lambda!134011 lambda!133998)))

(declare-fun bs!606919 () Bool)

(assert (= bs!606919 (and d!1271271 b!4323162)))

(assert (=> bs!606919 (not (= lambda!134011 lambda!133989))))

(declare-fun bs!606920 () Bool)

(assert (= bs!606920 (and d!1271271 d!1271269)))

(assert (=> bs!606920 (not (= lambda!134011 lambda!134010))))

(assert (=> d!1271271 true))

(assert (=> d!1271271 (= (allKeysSameHashInMap!391 lt!1540765 (hashF!6940 thiss!42308)) (forall!8818 (toList!2562 lt!1540765) lambda!134011))))

(declare-fun bs!606921 () Bool)

(assert (= bs!606921 d!1271271))

(declare-fun m!4917817 () Bool)

(assert (=> bs!606921 m!4917817))

(assert (=> b!4323172 d!1271271))

(declare-fun bs!606922 () Bool)

(declare-fun d!1271273 () Bool)

(assert (= bs!606922 (and d!1271273 d!1271245)))

(declare-fun lambda!134012 () Int)

(assert (=> bs!606922 (= lambda!134012 lambda!134001)))

(declare-fun bs!606923 () Bool)

(assert (= bs!606923 (and d!1271273 d!1271251)))

(assert (=> bs!606923 (= lambda!134012 lambda!134002)))

(assert (=> d!1271273 true))

(assert (=> d!1271273 true))

(assert (=> d!1271273 (= (allKeysSameHash!248 lt!1540773 lt!1540766 (hashF!6940 thiss!42308)) (forall!8819 lt!1540773 lambda!134012))))

(declare-fun bs!606924 () Bool)

(assert (= bs!606924 d!1271273))

(declare-fun m!4917819 () Bool)

(assert (=> bs!606924 m!4917819))

(assert (=> b!4323171 d!1271273))

(declare-fun b!4323308 () Bool)

(declare-datatypes ((List!48515 0))(
  ( (Nil!48391) (Cons!48391 (h!53854 K!9639) (t!355405 List!48515)) )
))
(declare-fun e!2689795 () List!48515)

(declare-fun getKeysList!58 (List!48513) List!48515)

(assert (=> b!4323308 (= e!2689795 (getKeysList!58 (toList!2563 (extractMap!370 (toList!2562 lt!1540764)))))))

(declare-fun b!4323309 () Bool)

(declare-fun e!2689799 () Unit!67866)

(declare-fun Unit!67875 () Unit!67866)

(assert (=> b!4323309 (= e!2689799 Unit!67875)))

(declare-fun b!4323310 () Bool)

(declare-fun keys!16179 (ListMap!1839) List!48515)

(assert (=> b!4323310 (= e!2689795 (keys!16179 (extractMap!370 (toList!2562 lt!1540764))))))

(declare-fun b!4323311 () Bool)

(declare-fun e!2689797 () Bool)

(declare-fun e!2689800 () Bool)

(assert (=> b!4323311 (= e!2689797 e!2689800)))

(declare-fun res!1771824 () Bool)

(assert (=> b!4323311 (=> (not res!1771824) (not e!2689800))))

(declare-datatypes ((Option!10308 0))(
  ( (None!10307) (Some!10307 (v!42793 V!9841)) )
))
(declare-fun isDefined!7609 (Option!10308) Bool)

(declare-fun getValueByKey!302 (List!48513 K!9639) Option!10308)

(assert (=> b!4323311 (= res!1771824 (isDefined!7609 (getValueByKey!302 (toList!2563 (extractMap!370 (toList!2562 lt!1540764))) key!2048)))))

(declare-fun b!4323312 () Bool)

(declare-fun e!2689796 () Unit!67866)

(assert (=> b!4323312 (= e!2689796 e!2689799)))

(declare-fun c!735442 () Bool)

(declare-fun call!299876 () Bool)

(assert (=> b!4323312 (= c!735442 call!299876)))

(declare-fun b!4323313 () Bool)

(assert (=> b!4323313 false))

(declare-fun lt!1540916 () Unit!67866)

(declare-fun lt!1540914 () Unit!67866)

(assert (=> b!4323313 (= lt!1540916 lt!1540914)))

(declare-fun containsKey!408 (List!48513 K!9639) Bool)

(assert (=> b!4323313 (containsKey!408 (toList!2563 (extractMap!370 (toList!2562 lt!1540764))) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!55 (List!48513 K!9639) Unit!67866)

(assert (=> b!4323313 (= lt!1540914 (lemmaInGetKeysListThenContainsKey!55 (toList!2563 (extractMap!370 (toList!2562 lt!1540764))) key!2048))))

(declare-fun Unit!67876 () Unit!67866)

(assert (=> b!4323313 (= e!2689799 Unit!67876)))

(declare-fun b!4323314 () Bool)

(declare-fun e!2689798 () Bool)

(declare-fun contains!10448 (List!48515 K!9639) Bool)

(assert (=> b!4323314 (= e!2689798 (not (contains!10448 (keys!16179 (extractMap!370 (toList!2562 lt!1540764))) key!2048)))))

(declare-fun b!4323315 () Bool)

(assert (=> b!4323315 (= e!2689800 (contains!10448 (keys!16179 (extractMap!370 (toList!2562 lt!1540764))) key!2048))))

(declare-fun b!4323316 () Bool)

(declare-fun lt!1540912 () Unit!67866)

(assert (=> b!4323316 (= e!2689796 lt!1540912)))

(declare-fun lt!1540913 () Unit!67866)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!221 (List!48513 K!9639) Unit!67866)

(assert (=> b!4323316 (= lt!1540913 (lemmaContainsKeyImpliesGetValueByKeyDefined!221 (toList!2563 (extractMap!370 (toList!2562 lt!1540764))) key!2048))))

(assert (=> b!4323316 (isDefined!7609 (getValueByKey!302 (toList!2563 (extractMap!370 (toList!2562 lt!1540764))) key!2048))))

(declare-fun lt!1540917 () Unit!67866)

(assert (=> b!4323316 (= lt!1540917 lt!1540913)))

(declare-fun lemmaInListThenGetKeysListContains!55 (List!48513 K!9639) Unit!67866)

(assert (=> b!4323316 (= lt!1540912 (lemmaInListThenGetKeysListContains!55 (toList!2563 (extractMap!370 (toList!2562 lt!1540764))) key!2048))))

(assert (=> b!4323316 call!299876))

(declare-fun d!1271275 () Bool)

(assert (=> d!1271275 e!2689797))

(declare-fun res!1771826 () Bool)

(assert (=> d!1271275 (=> res!1771826 e!2689797)))

(assert (=> d!1271275 (= res!1771826 e!2689798)))

(declare-fun res!1771825 () Bool)

(assert (=> d!1271275 (=> (not res!1771825) (not e!2689798))))

(declare-fun lt!1540918 () Bool)

(assert (=> d!1271275 (= res!1771825 (not lt!1540918))))

(declare-fun lt!1540915 () Bool)

(assert (=> d!1271275 (= lt!1540918 lt!1540915)))

(declare-fun lt!1540919 () Unit!67866)

(assert (=> d!1271275 (= lt!1540919 e!2689796)))

(declare-fun c!735441 () Bool)

(assert (=> d!1271275 (= c!735441 lt!1540915)))

(assert (=> d!1271275 (= lt!1540915 (containsKey!408 (toList!2563 (extractMap!370 (toList!2562 lt!1540764))) key!2048))))

(assert (=> d!1271275 (= (contains!10442 (extractMap!370 (toList!2562 lt!1540764)) key!2048) lt!1540918)))

(declare-fun bm!299871 () Bool)

(assert (=> bm!299871 (= call!299876 (contains!10448 e!2689795 key!2048))))

(declare-fun c!735443 () Bool)

(assert (=> bm!299871 (= c!735443 c!735441)))

(assert (= (and d!1271275 c!735441) b!4323316))

(assert (= (and d!1271275 (not c!735441)) b!4323312))

(assert (= (and b!4323312 c!735442) b!4323313))

(assert (= (and b!4323312 (not c!735442)) b!4323309))

(assert (= (or b!4323316 b!4323312) bm!299871))

(assert (= (and bm!299871 c!735443) b!4323308))

(assert (= (and bm!299871 (not c!735443)) b!4323310))

(assert (= (and d!1271275 res!1771825) b!4323314))

(assert (= (and d!1271275 (not res!1771826)) b!4323311))

(assert (= (and b!4323311 res!1771824) b!4323315))

(declare-fun m!4917821 () Bool)

(assert (=> b!4323311 m!4917821))

(assert (=> b!4323311 m!4917821))

(declare-fun m!4917823 () Bool)

(assert (=> b!4323311 m!4917823))

(declare-fun m!4917825 () Bool)

(assert (=> b!4323313 m!4917825))

(declare-fun m!4917827 () Bool)

(assert (=> b!4323313 m!4917827))

(declare-fun m!4917829 () Bool)

(assert (=> b!4323316 m!4917829))

(assert (=> b!4323316 m!4917821))

(assert (=> b!4323316 m!4917821))

(assert (=> b!4323316 m!4917823))

(declare-fun m!4917831 () Bool)

(assert (=> b!4323316 m!4917831))

(assert (=> b!4323314 m!4917619))

(declare-fun m!4917833 () Bool)

(assert (=> b!4323314 m!4917833))

(assert (=> b!4323314 m!4917833))

(declare-fun m!4917835 () Bool)

(assert (=> b!4323314 m!4917835))

(declare-fun m!4917837 () Bool)

(assert (=> bm!299871 m!4917837))

(declare-fun m!4917839 () Bool)

(assert (=> b!4323308 m!4917839))

(assert (=> d!1271275 m!4917825))

(assert (=> b!4323315 m!4917619))

(assert (=> b!4323315 m!4917833))

(assert (=> b!4323315 m!4917833))

(assert (=> b!4323315 m!4917835))

(assert (=> b!4323310 m!4917619))

(assert (=> b!4323310 m!4917833))

(assert (=> b!4323154 d!1271275))

(declare-fun bs!606925 () Bool)

(declare-fun d!1271277 () Bool)

(assert (= bs!606925 (and d!1271277 d!1271229)))

(declare-fun lambda!134015 () Int)

(assert (=> bs!606925 (not (= lambda!134015 lambda!133992))))

(declare-fun bs!606926 () Bool)

(assert (= bs!606926 (and d!1271277 b!4323255)))

(assert (=> bs!606926 (= lambda!134015 lambda!134005)))

(declare-fun bs!606927 () Bool)

(assert (= bs!606927 (and d!1271277 b!4323213)))

(assert (=> bs!606927 (= lambda!134015 lambda!133995)))

(declare-fun bs!606928 () Bool)

(assert (= bs!606928 (and d!1271277 d!1271243)))

(assert (=> bs!606928 (not (= lambda!134015 lambda!133998))))

(declare-fun bs!606929 () Bool)

(assert (= bs!606929 (and d!1271277 b!4323162)))

(assert (=> bs!606929 (= lambda!134015 lambda!133989)))

(declare-fun bs!606930 () Bool)

(assert (= bs!606930 (and d!1271277 d!1271269)))

(assert (=> bs!606930 (= lambda!134015 lambda!134010)))

(declare-fun bs!606931 () Bool)

(assert (= bs!606931 (and d!1271277 d!1271271)))

(assert (=> bs!606931 (not (= lambda!134015 lambda!134011))))

(declare-fun lt!1540922 () ListMap!1839)

(assert (=> d!1271277 (invariantList!603 (toList!2563 lt!1540922))))

(declare-fun e!2689803 () ListMap!1839)

(assert (=> d!1271277 (= lt!1540922 e!2689803)))

(declare-fun c!735446 () Bool)

(assert (=> d!1271277 (= c!735446 ((_ is Cons!48390) (toList!2562 lt!1540764)))))

(assert (=> d!1271277 (forall!8818 (toList!2562 lt!1540764) lambda!134015)))

(assert (=> d!1271277 (= (extractMap!370 (toList!2562 lt!1540764)) lt!1540922)))

(declare-fun b!4323321 () Bool)

(declare-fun addToMapMapFromBucket!53 (List!48513 ListMap!1839) ListMap!1839)

(assert (=> b!4323321 (= e!2689803 (addToMapMapFromBucket!53 (_2!26894 (h!53852 (toList!2562 lt!1540764))) (extractMap!370 (t!355402 (toList!2562 lt!1540764)))))))

(declare-fun b!4323322 () Bool)

(assert (=> b!4323322 (= e!2689803 (ListMap!1840 Nil!48389))))

(assert (= (and d!1271277 c!735446) b!4323321))

(assert (= (and d!1271277 (not c!735446)) b!4323322))

(declare-fun m!4917841 () Bool)

(assert (=> d!1271277 m!4917841))

(declare-fun m!4917843 () Bool)

(assert (=> d!1271277 m!4917843))

(declare-fun m!4917845 () Bool)

(assert (=> b!4323321 m!4917845))

(assert (=> b!4323321 m!4917845))

(declare-fun m!4917847 () Bool)

(assert (=> b!4323321 m!4917847))

(assert (=> b!4323154 d!1271277))

(declare-fun d!1271279 () Bool)

(assert (=> d!1271279 (= (array_inv!5545 (_keys!5083 (v!42785 (underlying!9743 (v!42786 (underlying!9744 thiss!42308)))))) (bvsge (size!35738 (_keys!5083 (v!42785 (underlying!9743 (v!42786 (underlying!9744 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4323163 d!1271279))

(declare-fun d!1271281 () Bool)

(assert (=> d!1271281 (= (array_inv!5546 (_values!5058 (v!42785 (underlying!9743 (v!42786 (underlying!9744 thiss!42308)))))) (bvsge (size!35739 (_values!5058 (v!42785 (underlying!9743 (v!42786 (underlying!9744 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4323163 d!1271281))

(declare-fun b!4323330 () Bool)

(declare-fun e!2689808 () Bool)

(declare-fun tp!1327086 () Bool)

(assert (=> b!4323330 (= e!2689808 (and tp_is_empty!24125 tp_is_empty!24127 tp!1327086))))

(declare-fun mapIsEmpty!21209 () Bool)

(declare-fun mapRes!21209 () Bool)

(assert (=> mapIsEmpty!21209 mapRes!21209))

(declare-fun tp!1327085 () Bool)

(declare-fun e!2689809 () Bool)

(declare-fun b!4323329 () Bool)

(assert (=> b!4323329 (= e!2689809 (and tp_is_empty!24125 tp_is_empty!24127 tp!1327085))))

(declare-fun condMapEmpty!21209 () Bool)

(declare-fun mapDefault!21209 () List!48513)

(assert (=> mapNonEmpty!21206 (= condMapEmpty!21209 (= mapRest!21206 ((as const (Array (_ BitVec 32) List!48513)) mapDefault!21209)))))

(assert (=> mapNonEmpty!21206 (= tp!1327071 (and e!2689808 mapRes!21209))))

(declare-fun mapNonEmpty!21209 () Bool)

(declare-fun tp!1327084 () Bool)

(assert (=> mapNonEmpty!21209 (= mapRes!21209 (and tp!1327084 e!2689809))))

(declare-fun mapValue!21209 () List!48513)

(declare-fun mapRest!21209 () (Array (_ BitVec 32) List!48513))

(declare-fun mapKey!21209 () (_ BitVec 32))

(assert (=> mapNonEmpty!21209 (= mapRest!21206 (store mapRest!21209 mapKey!21209 mapValue!21209))))

(assert (= (and mapNonEmpty!21206 condMapEmpty!21209) mapIsEmpty!21209))

(assert (= (and mapNonEmpty!21206 (not condMapEmpty!21209)) mapNonEmpty!21209))

(assert (= (and mapNonEmpty!21209 ((_ is Cons!48389) mapValue!21209)) b!4323329))

(assert (= (and mapNonEmpty!21206 ((_ is Cons!48389) mapDefault!21209)) b!4323330))

(declare-fun m!4917849 () Bool)

(assert (=> mapNonEmpty!21209 m!4917849))

(declare-fun tp!1327089 () Bool)

(declare-fun b!4323335 () Bool)

(declare-fun e!2689812 () Bool)

(assert (=> b!4323335 (= e!2689812 (and tp_is_empty!24125 tp_is_empty!24127 tp!1327089))))

(assert (=> mapNonEmpty!21206 (= tp!1327075 e!2689812)))

(assert (= (and mapNonEmpty!21206 ((_ is Cons!48389) mapValue!21206)) b!4323335))

(declare-fun b!4323336 () Bool)

(declare-fun tp!1327090 () Bool)

(declare-fun e!2689813 () Bool)

(assert (=> b!4323336 (= e!2689813 (and tp_is_empty!24125 tp_is_empty!24127 tp!1327090))))

(assert (=> b!4323168 (= tp!1327074 e!2689813)))

(assert (= (and b!4323168 ((_ is Cons!48389) mapDefault!21206)) b!4323336))

(declare-fun b!4323337 () Bool)

(declare-fun tp!1327091 () Bool)

(declare-fun e!2689814 () Bool)

(assert (=> b!4323337 (= e!2689814 (and tp_is_empty!24125 tp_is_empty!24127 tp!1327091))))

(assert (=> b!4323163 (= tp!1327076 e!2689814)))

(assert (= (and b!4323163 ((_ is Cons!48389) (zeroValue!5034 (v!42785 (underlying!9743 (v!42786 (underlying!9744 thiss!42308))))))) b!4323337))

(declare-fun b!4323338 () Bool)

(declare-fun tp!1327092 () Bool)

(declare-fun e!2689815 () Bool)

(assert (=> b!4323338 (= e!2689815 (and tp_is_empty!24125 tp_is_empty!24127 tp!1327092))))

(assert (=> b!4323163 (= tp!1327077 e!2689815)))

(assert (= (and b!4323163 ((_ is Cons!48389) (minValue!5034 (v!42785 (underlying!9743 (v!42786 (underlying!9744 thiss!42308))))))) b!4323338))

(declare-fun b_lambda!127405 () Bool)

(assert (= b_lambda!127403 (or b!4323162 b_lambda!127405)))

(declare-fun bs!606932 () Bool)

(declare-fun d!1271283 () Bool)

(assert (= bs!606932 (and d!1271283 b!4323162)))

(assert (=> bs!606932 (= (dynLambda!20512 lambda!133989 (h!53852 (toList!2562 lt!1540764))) (noDuplicateKeys!264 (_2!26894 (h!53852 (toList!2562 lt!1540764)))))))

(declare-fun m!4917851 () Bool)

(assert (=> bs!606932 m!4917851))

(assert (=> b!4323279 d!1271283))

(declare-fun b_lambda!127407 () Bool)

(assert (= b_lambda!127399 (or (and b!4323163 b_free!128987) b_lambda!127407)))

(declare-fun b_lambda!127409 () Bool)

(assert (= b_lambda!127401 (or b!4323162 b_lambda!127409)))

(declare-fun bs!606933 () Bool)

(declare-fun d!1271285 () Bool)

(assert (= bs!606933 (and d!1271285 b!4323162)))

(assert (=> bs!606933 (= (dynLambda!20512 lambda!133989 (h!53852 (toList!2562 lt!1540765))) (noDuplicateKeys!264 (_2!26894 (h!53852 (toList!2562 lt!1540765)))))))

(declare-fun m!4917853 () Bool)

(assert (=> bs!606933 m!4917853))

(assert (=> b!4323277 d!1271285))

(check-sat (not b!4323208) (not d!1271247) (not d!1271229) (not d!1271243) (not b!4323329) (not mapNonEmpty!21209) (not b!4323330) b_and!340551 (not d!1271251) (not d!1271239) (not d!1271257) (not b_next!129691) (not b!4323285) (not d!1271277) (not b!4323337) (not b!4323255) (not b!4323259) (not bs!606933) (not d!1271235) (not d!1271269) (not bm!299864) (not d!1271231) (not b!4323313) (not d!1271237) (not d!1271249) (not d!1271241) (not d!1271265) (not d!1271255) (not b!4323202) (not d!1271245) (not b!4323335) b_and!340553 (not b!4323180) (not b!4323310) (not b!4323213) (not bs!606932) (not b!4323286) tp_is_empty!24127 tp_is_empty!24125 (not bm!299865) (not bm!299871) (not bm!299868) (not b!4323316) (not b!4323336) (not b!4323338) (not b!4323207) (not b!4323270) (not b!4323257) (not d!1271259) (not b!4323272) (not b!4323308) (not bm!299849) (not b!4323280) (not b!4323229) (not b!4323314) (not bm!299850) (not d!1271233) (not d!1271273) (not bm!299863) (not b_lambda!127405) (not b!4323315) (not b!4323262) (not b!4323321) (not b_lambda!127409) (not tb!257373) (not b!4323214) (not b!4323278) (not d!1271271) (not b!4323289) (not b!4323253) (not bm!299866) (not bm!299867) (not b!4323201) (not d!1271253) (not b_next!129693) (not b!4323204) (not b!4323311) (not d!1271275) (not b_lambda!127407))
(check-sat b_and!340553 b_and!340551 (not b_next!129693) (not b_next!129691))
