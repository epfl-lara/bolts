; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242482 () Bool)

(assert start!242482)

(declare-fun b!2483918 () Bool)

(declare-fun b_free!72425 () Bool)

(declare-fun b_next!73129 () Bool)

(assert (=> b!2483918 (= b_free!72425 (not b_next!73129))))

(declare-fun tp!795183 () Bool)

(declare-fun b_and!188691 () Bool)

(assert (=> b!2483918 (= tp!795183 b_and!188691)))

(declare-fun b!2483921 () Bool)

(declare-fun b_free!72427 () Bool)

(declare-fun b_next!73131 () Bool)

(assert (=> b!2483921 (= b_free!72427 (not b_next!73131))))

(declare-fun tp!795185 () Bool)

(declare-fun b_and!188693 () Bool)

(assert (=> b!2483921 (= tp!795185 b_and!188693)))

(declare-fun b!2483913 () Bool)

(declare-fun e!1576982 () Bool)

(declare-fun e!1576976 () Bool)

(declare-datatypes ((K!5565 0))(
  ( (K!5566 (val!8927 Int)) )
))
(declare-datatypes ((V!5767 0))(
  ( (V!5768 (val!8928 Int)) )
))
(declare-datatypes ((tuple2!28998 0))(
  ( (tuple2!28999 (_1!17041 K!5565) (_2!17041 V!5767)) )
))
(declare-datatypes ((List!29260 0))(
  ( (Nil!29160) (Cons!29160 (h!34568 tuple2!28998) (t!210931 List!29260)) )
))
(declare-datatypes ((array!12043 0))(
  ( (array!12044 (arr!5374 (Array (_ BitVec 32) List!29260)) (size!22793 (_ BitVec 32))) )
))
(declare-datatypes ((array!12045 0))(
  ( (array!12046 (arr!5375 (Array (_ BitVec 32) (_ BitVec 64))) (size!22794 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6784 0))(
  ( (LongMapFixedSize!6785 (defaultEntry!3766 Int) (mask!8577 (_ BitVec 32)) (extraKeys!3640 (_ BitVec 32)) (zeroValue!3650 List!29260) (minValue!3650 List!29260) (_size!6831 (_ BitVec 32)) (_keys!3689 array!12045) (_values!3672 array!12043) (_vacant!3453 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13385 0))(
  ( (Cell!13386 (v!31546 LongMapFixedSize!6784)) )
))
(declare-datatypes ((MutLongMap!3392 0))(
  ( (LongMap!3392 (underlying!6991 Cell!13385)) (MutLongMapExt!3391 (__x!19082 Int)) )
))
(declare-fun lt!890043 () MutLongMap!3392)

(get-info :version)

(assert (=> b!2483913 (= e!1576982 (and e!1576976 ((_ is LongMap!3392) lt!890043)))))

(declare-datatypes ((Hashable!3302 0))(
  ( (HashableExt!3301 (__x!19083 Int)) )
))
(declare-datatypes ((Cell!13387 0))(
  ( (Cell!13388 (v!31547 MutLongMap!3392)) )
))
(declare-datatypes ((MutableMap!3302 0))(
  ( (MutableMapExt!3301 (__x!19084 Int)) (HashMap!3302 (underlying!6992 Cell!13387) (hashF!5271 Hashable!3302) (_size!6832 (_ BitVec 32)) (defaultValue!3464 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3302)

(assert (=> b!2483913 (= lt!890043 (v!31547 (underlying!6992 thiss!42540)))))

(declare-fun b!2483914 () Bool)

(declare-fun e!1576975 () Bool)

(declare-fun e!1576979 () Bool)

(assert (=> b!2483914 (= e!1576975 e!1576979)))

(declare-fun b!2483915 () Bool)

(declare-fun e!1576981 () Bool)

(declare-fun tp!795184 () Bool)

(declare-fun mapRes!15663 () Bool)

(assert (=> b!2483915 (= e!1576981 (and tp!795184 mapRes!15663))))

(declare-fun condMapEmpty!15663 () Bool)

(declare-fun mapDefault!15663 () List!29260)

(assert (=> b!2483915 (= condMapEmpty!15663 (= (arr!5374 (_values!3672 (v!31546 (underlying!6991 (v!31547 (underlying!6992 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29260)) mapDefault!15663)))))

(declare-fun b!2483916 () Bool)

(declare-fun e!1576980 () Bool)

(declare-datatypes ((tuple2!29000 0))(
  ( (tuple2!29001 (_1!17042 (_ BitVec 64)) (_2!17042 List!29260)) )
))
(declare-datatypes ((List!29261 0))(
  ( (Nil!29161) (Cons!29161 (h!34569 tuple2!29000) (t!210932 List!29261)) )
))
(declare-datatypes ((ListLongMap!573 0))(
  ( (ListLongMap!574 (toList!1624 List!29261)) )
))
(declare-fun lt!890036 () ListLongMap!573)

(declare-fun lambda!94203 () Int)

(declare-fun forall!5982 (List!29261 Int) Bool)

(assert (=> b!2483916 (= e!1576980 (forall!5982 (toList!1624 lt!890036) lambda!94203))))

(declare-fun lt!890037 () List!29260)

(declare-fun lt!890041 () (_ BitVec 64))

(declare-datatypes ((Unit!42728 0))(
  ( (Unit!42729) )
))
(declare-datatypes ((tuple2!29002 0))(
  ( (tuple2!29003 (_1!17043 Unit!42728) (_2!17043 MutableMap!3302)) )
))
(declare-fun lt!890046 () tuple2!29002)

(declare-fun allKeysSameHash!72 (List!29260 (_ BitVec 64) Hashable!3302) Bool)

(assert (=> b!2483916 (allKeysSameHash!72 lt!890037 lt!890041 (hashF!5271 (_2!17043 lt!890046)))))

(declare-fun key!2246 () K!5565)

(declare-fun lt!890038 () List!29260)

(declare-fun lt!890045 () Unit!42728)

(declare-fun lemmaRemovePairForKeyPreservesHash!61 (List!29260 K!5565 (_ BitVec 64) Hashable!3302) Unit!42728)

(assert (=> b!2483916 (= lt!890045 (lemmaRemovePairForKeyPreservesHash!61 lt!890038 key!2246 lt!890041 (hashF!5271 (_2!17043 lt!890046))))))

(assert (=> b!2483916 (allKeysSameHash!72 lt!890038 lt!890041 (hashF!5271 (_2!17043 lt!890046)))))

(declare-fun lt!890047 () Unit!42728)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!65 (List!29261 (_ BitVec 64) List!29260 Hashable!3302) Unit!42728)

(assert (=> b!2483916 (= lt!890047 (lemmaInLongMapAllKeySameHashThenForTuple!65 (toList!1624 lt!890036) lt!890041 lt!890038 (hashF!5271 (_2!17043 lt!890046))))))

(declare-fun b!2483917 () Bool)

(declare-fun res!1051364 () Bool)

(declare-fun e!1576974 () Bool)

(assert (=> b!2483917 (=> (not res!1051364) (not e!1576974))))

(declare-fun valid!2599 (MutableMap!3302) Bool)

(assert (=> b!2483917 (= res!1051364 (valid!2599 thiss!42540))))

(declare-fun tp!795182 () Bool)

(declare-fun tp!795180 () Bool)

(declare-fun array_inv!3859 (array!12045) Bool)

(declare-fun array_inv!3860 (array!12043) Bool)

(assert (=> b!2483918 (= e!1576979 (and tp!795183 tp!795180 tp!795182 (array_inv!3859 (_keys!3689 (v!31546 (underlying!6991 (v!31547 (underlying!6992 thiss!42540)))))) (array_inv!3860 (_values!3672 (v!31546 (underlying!6991 (v!31547 (underlying!6992 thiss!42540)))))) e!1576981))))

(declare-fun res!1051362 () Bool)

(assert (=> start!242482 (=> (not res!1051362) (not e!1576974))))

(assert (=> start!242482 (= res!1051362 ((_ is HashMap!3302) thiss!42540))))

(assert (=> start!242482 e!1576974))

(declare-fun e!1576978 () Bool)

(assert (=> start!242482 e!1576978))

(declare-fun tp_is_empty!12325 () Bool)

(assert (=> start!242482 tp_is_empty!12325))

(declare-fun mapNonEmpty!15663 () Bool)

(declare-fun tp!795181 () Bool)

(declare-fun tp!795186 () Bool)

(assert (=> mapNonEmpty!15663 (= mapRes!15663 (and tp!795181 tp!795186))))

(declare-fun mapKey!15663 () (_ BitVec 32))

(declare-fun mapValue!15663 () List!29260)

(declare-fun mapRest!15663 () (Array (_ BitVec 32) List!29260))

(assert (=> mapNonEmpty!15663 (= (arr!5374 (_values!3672 (v!31546 (underlying!6991 (v!31547 (underlying!6992 thiss!42540)))))) (store mapRest!15663 mapKey!15663 mapValue!15663))))

(declare-fun b!2483919 () Bool)

(assert (=> b!2483919 (= e!1576974 (not e!1576980))))

(declare-fun res!1051363 () Bool)

(assert (=> b!2483919 (=> res!1051363 e!1576980)))

(declare-datatypes ((tuple2!29004 0))(
  ( (tuple2!29005 (_1!17044 Bool) (_2!17044 MutLongMap!3392)) )
))
(declare-fun lt!890039 () tuple2!29004)

(assert (=> b!2483919 (= res!1051363 (not (_1!17044 lt!890039)))))

(declare-fun noDuplicateKeys!98 (List!29260) Bool)

(assert (=> b!2483919 (noDuplicateKeys!98 lt!890037)))

(declare-fun lt!890048 () Unit!42728)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!78 (List!29260 K!5565) Unit!42728)

(assert (=> b!2483919 (= lt!890048 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!78 lt!890038 key!2246))))

(declare-fun lt!890044 () Cell!13387)

(declare-fun Unit!42730 () Unit!42728)

(declare-fun Unit!42731 () Unit!42728)

(assert (=> b!2483919 (= lt!890046 (ite (_1!17044 lt!890039) (tuple2!29003 Unit!42730 (HashMap!3302 lt!890044 (hashF!5271 thiss!42540) (bvsub (_size!6832 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3464 thiss!42540))) (tuple2!29003 Unit!42731 (HashMap!3302 lt!890044 (hashF!5271 thiss!42540) (_size!6832 thiss!42540) (defaultValue!3464 thiss!42540)))))))

(assert (=> b!2483919 (= lt!890044 (Cell!13388 (_2!17044 lt!890039)))))

(declare-fun update!210 (MutLongMap!3392 (_ BitVec 64) List!29260) tuple2!29004)

(assert (=> b!2483919 (= lt!890039 (update!210 (v!31547 (underlying!6992 thiss!42540)) lt!890041 lt!890037))))

(declare-fun removePairForKey!90 (List!29260 K!5565) List!29260)

(assert (=> b!2483919 (= lt!890037 (removePairForKey!90 lt!890038 key!2246))))

(declare-datatypes ((ListMap!1105 0))(
  ( (ListMap!1106 (toList!1625 List!29260)) )
))
(declare-fun lt!890040 () ListMap!1105)

(declare-fun map!6261 (MutableMap!3302) ListMap!1105)

(assert (=> b!2483919 (= lt!890040 (map!6261 thiss!42540))))

(declare-fun lt!890042 () Unit!42728)

(declare-fun forallContained!879 (List!29261 Int tuple2!29000) Unit!42728)

(assert (=> b!2483919 (= lt!890042 (forallContained!879 (toList!1624 lt!890036) lambda!94203 (tuple2!29001 lt!890041 lt!890038)))))

(declare-fun map!6262 (MutLongMap!3392) ListLongMap!573)

(assert (=> b!2483919 (= lt!890036 (map!6262 (v!31547 (underlying!6992 thiss!42540))))))

(declare-fun apply!6951 (MutLongMap!3392 (_ BitVec 64)) List!29260)

(assert (=> b!2483919 (= lt!890038 (apply!6951 (v!31547 (underlying!6992 thiss!42540)) lt!890041))))

(declare-fun hash!718 (Hashable!3302 K!5565) (_ BitVec 64))

(assert (=> b!2483919 (= lt!890041 (hash!718 (hashF!5271 thiss!42540) key!2246))))

(declare-fun b!2483920 () Bool)

(declare-fun res!1051361 () Bool)

(assert (=> b!2483920 (=> (not res!1051361) (not e!1576974))))

(declare-fun contains!5157 (MutableMap!3302 K!5565) Bool)

(assert (=> b!2483920 (= res!1051361 (contains!5157 thiss!42540 key!2246))))

(assert (=> b!2483921 (= e!1576978 (and e!1576982 tp!795185))))

(declare-fun b!2483922 () Bool)

(assert (=> b!2483922 (= e!1576976 e!1576975)))

(declare-fun mapIsEmpty!15663 () Bool)

(assert (=> mapIsEmpty!15663 mapRes!15663))

(assert (= (and start!242482 res!1051362) b!2483917))

(assert (= (and b!2483917 res!1051364) b!2483920))

(assert (= (and b!2483920 res!1051361) b!2483919))

(assert (= (and b!2483919 (not res!1051363)) b!2483916))

(assert (= (and b!2483915 condMapEmpty!15663) mapIsEmpty!15663))

(assert (= (and b!2483915 (not condMapEmpty!15663)) mapNonEmpty!15663))

(assert (= b!2483918 b!2483915))

(assert (= b!2483914 b!2483918))

(assert (= b!2483922 b!2483914))

(assert (= (and b!2483913 ((_ is LongMap!3392) (v!31547 (underlying!6992 thiss!42540)))) b!2483922))

(assert (= b!2483921 b!2483913))

(assert (= (and start!242482 ((_ is HashMap!3302) thiss!42540)) b!2483921))

(declare-fun m!2851791 () Bool)

(assert (=> b!2483920 m!2851791))

(declare-fun m!2851793 () Bool)

(assert (=> mapNonEmpty!15663 m!2851793))

(declare-fun m!2851795 () Bool)

(assert (=> b!2483918 m!2851795))

(declare-fun m!2851797 () Bool)

(assert (=> b!2483918 m!2851797))

(declare-fun m!2851799 () Bool)

(assert (=> b!2483919 m!2851799))

(declare-fun m!2851801 () Bool)

(assert (=> b!2483919 m!2851801))

(declare-fun m!2851803 () Bool)

(assert (=> b!2483919 m!2851803))

(declare-fun m!2851805 () Bool)

(assert (=> b!2483919 m!2851805))

(declare-fun m!2851807 () Bool)

(assert (=> b!2483919 m!2851807))

(declare-fun m!2851809 () Bool)

(assert (=> b!2483919 m!2851809))

(declare-fun m!2851811 () Bool)

(assert (=> b!2483919 m!2851811))

(declare-fun m!2851813 () Bool)

(assert (=> b!2483919 m!2851813))

(declare-fun m!2851815 () Bool)

(assert (=> b!2483919 m!2851815))

(declare-fun m!2851817 () Bool)

(assert (=> b!2483916 m!2851817))

(declare-fun m!2851819 () Bool)

(assert (=> b!2483916 m!2851819))

(declare-fun m!2851821 () Bool)

(assert (=> b!2483916 m!2851821))

(declare-fun m!2851823 () Bool)

(assert (=> b!2483916 m!2851823))

(declare-fun m!2851825 () Bool)

(assert (=> b!2483916 m!2851825))

(declare-fun m!2851827 () Bool)

(assert (=> b!2483917 m!2851827))

(check-sat (not b!2483918) b_and!188691 (not b_next!73131) tp_is_empty!12325 b_and!188693 (not b!2483917) (not b!2483920) (not b!2483916) (not b_next!73129) (not b!2483919) (not mapNonEmpty!15663) (not b!2483915))
(check-sat b_and!188693 b_and!188691 (not b_next!73129) (not b_next!73131))
(get-model)

(declare-fun d!713239 () Bool)

(assert (=> d!713239 true))

(assert (=> d!713239 true))

(declare-fun lambda!94206 () Int)

(declare-fun forall!5983 (List!29260 Int) Bool)

(assert (=> d!713239 (= (allKeysSameHash!72 lt!890037 lt!890041 (hashF!5271 (_2!17043 lt!890046))) (forall!5983 lt!890037 lambda!94206))))

(declare-fun bs!467659 () Bool)

(assert (= bs!467659 d!713239))

(declare-fun m!2851829 () Bool)

(assert (=> bs!467659 m!2851829))

(assert (=> b!2483916 d!713239))

(declare-fun bs!467660 () Bool)

(declare-fun d!713241 () Bool)

(assert (= bs!467660 (and d!713241 b!2483919)))

(declare-fun lambda!94209 () Int)

(assert (=> bs!467660 (not (= lambda!94209 lambda!94203))))

(assert (=> d!713241 true))

(assert (=> d!713241 (allKeysSameHash!72 lt!890038 lt!890041 (hashF!5271 (_2!17043 lt!890046)))))

(declare-fun lt!890051 () Unit!42728)

(declare-fun choose!14663 (List!29261 (_ BitVec 64) List!29260 Hashable!3302) Unit!42728)

(assert (=> d!713241 (= lt!890051 (choose!14663 (toList!1624 lt!890036) lt!890041 lt!890038 (hashF!5271 (_2!17043 lt!890046))))))

(assert (=> d!713241 (forall!5982 (toList!1624 lt!890036) lambda!94209)))

(assert (=> d!713241 (= (lemmaInLongMapAllKeySameHashThenForTuple!65 (toList!1624 lt!890036) lt!890041 lt!890038 (hashF!5271 (_2!17043 lt!890046))) lt!890051)))

(declare-fun bs!467661 () Bool)

(assert (= bs!467661 d!713241))

(assert (=> bs!467661 m!2851819))

(declare-fun m!2851831 () Bool)

(assert (=> bs!467661 m!2851831))

(declare-fun m!2851833 () Bool)

(assert (=> bs!467661 m!2851833))

(assert (=> b!2483916 d!713241))

(declare-fun bs!467662 () Bool)

(declare-fun d!713243 () Bool)

(assert (= bs!467662 (and d!713243 d!713239)))

(declare-fun lambda!94210 () Int)

(assert (=> bs!467662 (= lambda!94210 lambda!94206)))

(assert (=> d!713243 true))

(assert (=> d!713243 true))

(assert (=> d!713243 (= (allKeysSameHash!72 lt!890038 lt!890041 (hashF!5271 (_2!17043 lt!890046))) (forall!5983 lt!890038 lambda!94210))))

(declare-fun bs!467663 () Bool)

(assert (= bs!467663 d!713243))

(declare-fun m!2851835 () Bool)

(assert (=> bs!467663 m!2851835))

(assert (=> b!2483916 d!713243))

(declare-fun d!713245 () Bool)

(assert (=> d!713245 (allKeysSameHash!72 (removePairForKey!90 lt!890038 key!2246) lt!890041 (hashF!5271 (_2!17043 lt!890046)))))

(declare-fun lt!890054 () Unit!42728)

(declare-fun choose!14664 (List!29260 K!5565 (_ BitVec 64) Hashable!3302) Unit!42728)

(assert (=> d!713245 (= lt!890054 (choose!14664 lt!890038 key!2246 lt!890041 (hashF!5271 (_2!17043 lt!890046))))))

(assert (=> d!713245 (noDuplicateKeys!98 lt!890038)))

(assert (=> d!713245 (= (lemmaRemovePairForKeyPreservesHash!61 lt!890038 key!2246 lt!890041 (hashF!5271 (_2!17043 lt!890046))) lt!890054)))

(declare-fun bs!467664 () Bool)

(assert (= bs!467664 d!713245))

(assert (=> bs!467664 m!2851807))

(assert (=> bs!467664 m!2851807))

(declare-fun m!2851837 () Bool)

(assert (=> bs!467664 m!2851837))

(declare-fun m!2851839 () Bool)

(assert (=> bs!467664 m!2851839))

(declare-fun m!2851841 () Bool)

(assert (=> bs!467664 m!2851841))

(assert (=> b!2483916 d!713245))

(declare-fun d!713247 () Bool)

(declare-fun res!1051369 () Bool)

(declare-fun e!1576987 () Bool)

(assert (=> d!713247 (=> res!1051369 e!1576987)))

(assert (=> d!713247 (= res!1051369 ((_ is Nil!29161) (toList!1624 lt!890036)))))

(assert (=> d!713247 (= (forall!5982 (toList!1624 lt!890036) lambda!94203) e!1576987)))

(declare-fun b!2483933 () Bool)

(declare-fun e!1576988 () Bool)

(assert (=> b!2483933 (= e!1576987 e!1576988)))

(declare-fun res!1051370 () Bool)

(assert (=> b!2483933 (=> (not res!1051370) (not e!1576988))))

(declare-fun dynLambda!12488 (Int tuple2!29000) Bool)

(assert (=> b!2483933 (= res!1051370 (dynLambda!12488 lambda!94203 (h!34569 (toList!1624 lt!890036))))))

(declare-fun b!2483934 () Bool)

(assert (=> b!2483934 (= e!1576988 (forall!5982 (t!210932 (toList!1624 lt!890036)) lambda!94203))))

(assert (= (and d!713247 (not res!1051369)) b!2483933))

(assert (= (and b!2483933 res!1051370) b!2483934))

(declare-fun b_lambda!76215 () Bool)

(assert (=> (not b_lambda!76215) (not b!2483933)))

(declare-fun m!2851843 () Bool)

(assert (=> b!2483933 m!2851843))

(declare-fun m!2851845 () Bool)

(assert (=> b!2483934 m!2851845))

(assert (=> b!2483916 d!713247))

(declare-fun bs!467665 () Bool)

(declare-fun b!2483965 () Bool)

(assert (= bs!467665 (and b!2483965 b!2483919)))

(declare-fun lambda!94213 () Int)

(assert (=> bs!467665 (= lambda!94213 lambda!94203)))

(declare-fun bs!467666 () Bool)

(assert (= bs!467666 (and b!2483965 d!713241)))

(assert (=> bs!467666 (not (= lambda!94213 lambda!94209))))

(declare-fun c!394865 () Bool)

(declare-fun call!152253 () Bool)

(declare-fun lt!890107 () ListLongMap!573)

(declare-fun call!152252 () ListLongMap!573)

(declare-fun call!152254 () (_ BitVec 64))

(declare-fun bm!152246 () Bool)

(declare-fun contains!5158 (ListLongMap!573 (_ BitVec 64)) Bool)

(assert (=> bm!152246 (= call!152253 (contains!5158 (ite c!394865 lt!890107 call!152252) call!152254))))

(declare-fun b!2483957 () Bool)

(declare-fun e!1577007 () Unit!42728)

(declare-fun lt!890110 () Unit!42728)

(assert (=> b!2483957 (= e!1577007 lt!890110)))

(assert (=> b!2483957 (= lt!890107 call!152252)))

(declare-fun lemmaInGenericMapThenInLongMap!76 (ListLongMap!573 K!5565 Hashable!3302) Unit!42728)

(assert (=> b!2483957 (= lt!890110 (lemmaInGenericMapThenInLongMap!76 lt!890107 key!2246 (hashF!5271 thiss!42540)))))

(declare-fun res!1051378 () Bool)

(assert (=> b!2483957 (= res!1051378 call!152253)))

(declare-fun e!1577003 () Bool)

(assert (=> b!2483957 (=> (not res!1051378) (not e!1577003))))

(assert (=> b!2483957 e!1577003))

(declare-fun bm!152247 () Bool)

(assert (=> bm!152247 (= call!152252 (map!6262 (v!31547 (underlying!6992 thiss!42540))))))

(declare-fun b!2483958 () Bool)

(declare-fun call!152256 () Bool)

(assert (=> b!2483958 (= e!1577003 call!152256)))

(declare-fun b!2483959 () Bool)

(declare-fun e!1577008 () Unit!42728)

(assert (=> b!2483959 (= e!1577007 e!1577008)))

(declare-fun res!1051379 () Bool)

(assert (=> b!2483959 (= res!1051379 call!152253)))

(declare-fun e!1577004 () Bool)

(assert (=> b!2483959 (=> (not res!1051379) (not e!1577004))))

(declare-fun c!394862 () Bool)

(assert (=> b!2483959 (= c!394862 e!1577004)))

(declare-fun b!2483960 () Bool)

(assert (=> b!2483960 false))

(declare-fun lt!890095 () Unit!42728)

(declare-fun lt!890101 () Unit!42728)

(assert (=> b!2483960 (= lt!890095 lt!890101)))

(declare-fun lt!890100 () List!29261)

(declare-fun lt!890109 () (_ BitVec 64))

(declare-fun lt!890098 () List!29260)

(declare-fun contains!5159 (List!29261 tuple2!29000) Bool)

(assert (=> b!2483960 (contains!5159 lt!890100 (tuple2!29001 lt!890109 lt!890098))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!81 (List!29261 (_ BitVec 64) List!29260) Unit!42728)

(assert (=> b!2483960 (= lt!890101 (lemmaGetValueByKeyImpliesContainsTuple!81 lt!890100 lt!890109 lt!890098))))

(assert (=> b!2483960 (= lt!890098 (apply!6951 (v!31547 (underlying!6992 thiss!42540)) lt!890109))))

(assert (=> b!2483960 (= lt!890100 (toList!1624 (map!6262 (v!31547 (underlying!6992 thiss!42540)))))))

(declare-fun lt!890103 () Unit!42728)

(declare-fun lt!890102 () Unit!42728)

(assert (=> b!2483960 (= lt!890103 lt!890102)))

(declare-fun lt!890114 () List!29261)

(declare-datatypes ((Option!5764 0))(
  ( (None!5763) (Some!5763 (v!31552 List!29260)) )
))
(declare-fun isDefined!4586 (Option!5764) Bool)

(declare-fun getValueByKey!145 (List!29261 (_ BitVec 64)) Option!5764)

(assert (=> b!2483960 (isDefined!4586 (getValueByKey!145 lt!890114 lt!890109))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!102 (List!29261 (_ BitVec 64)) Unit!42728)

(assert (=> b!2483960 (= lt!890102 (lemmaContainsKeyImpliesGetValueByKeyDefined!102 lt!890114 lt!890109))))

(assert (=> b!2483960 (= lt!890114 (toList!1624 (map!6262 (v!31547 (underlying!6992 thiss!42540)))))))

(declare-fun lt!890112 () Unit!42728)

(declare-fun lt!890111 () Unit!42728)

(assert (=> b!2483960 (= lt!890112 lt!890111)))

(declare-fun lt!890106 () List!29261)

(declare-fun containsKey!148 (List!29261 (_ BitVec 64)) Bool)

(assert (=> b!2483960 (containsKey!148 lt!890106 lt!890109)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!77 (List!29261 (_ BitVec 64)) Unit!42728)

(assert (=> b!2483960 (= lt!890111 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!77 lt!890106 lt!890109))))

(assert (=> b!2483960 (= lt!890106 (toList!1624 (map!6262 (v!31547 (underlying!6992 thiss!42540)))))))

(declare-fun e!1577005 () Unit!42728)

(declare-fun Unit!42732 () Unit!42728)

(assert (=> b!2483960 (= e!1577005 Unit!42732)))

(declare-fun b!2483961 () Bool)

(declare-fun Unit!42733 () Unit!42728)

(assert (=> b!2483961 (= e!1577008 Unit!42733)))

(declare-fun d!713249 () Bool)

(declare-fun lt!890104 () Bool)

(declare-fun contains!5160 (ListMap!1105 K!5565) Bool)

(assert (=> d!713249 (= lt!890104 (contains!5160 (map!6261 thiss!42540) key!2246))))

(declare-fun e!1577009 () Bool)

(assert (=> d!713249 (= lt!890104 e!1577009)))

(declare-fun res!1051377 () Bool)

(assert (=> d!713249 (=> (not res!1051377) (not e!1577009))))

(declare-fun contains!5161 (MutLongMap!3392 (_ BitVec 64)) Bool)

(assert (=> d!713249 (= res!1051377 (contains!5161 (v!31547 (underlying!6992 thiss!42540)) lt!890109))))

(declare-fun lt!890105 () Unit!42728)

(assert (=> d!713249 (= lt!890105 e!1577007)))

(declare-fun extractMap!181 (List!29261) ListMap!1105)

(assert (=> d!713249 (= c!394865 (contains!5160 (extractMap!181 (toList!1624 (map!6262 (v!31547 (underlying!6992 thiss!42540))))) key!2246))))

(declare-fun lt!890099 () Unit!42728)

(declare-fun e!1577006 () Unit!42728)

(assert (=> d!713249 (= lt!890099 e!1577006)))

(declare-fun c!394864 () Bool)

(assert (=> d!713249 (= c!394864 (contains!5161 (v!31547 (underlying!6992 thiss!42540)) lt!890109))))

(assert (=> d!713249 (= lt!890109 (hash!718 (hashF!5271 thiss!42540) key!2246))))

(assert (=> d!713249 (valid!2599 thiss!42540)))

(assert (=> d!713249 (= (contains!5157 thiss!42540 key!2246) lt!890104)))

(declare-fun bm!152248 () Bool)

(assert (=> bm!152248 (= call!152254 (hash!718 (hashF!5271 thiss!42540) key!2246))))

(declare-fun call!152251 () List!29260)

(declare-fun bm!152249 () Bool)

(declare-fun apply!6952 (ListLongMap!573 (_ BitVec 64)) List!29260)

(assert (=> bm!152249 (= call!152251 (apply!6952 (ite c!394865 lt!890107 call!152252) call!152254))))

(declare-fun b!2483962 () Bool)

(declare-datatypes ((Option!5765 0))(
  ( (None!5764) (Some!5764 (v!31553 tuple2!28998)) )
))
(declare-fun isDefined!4587 (Option!5765) Bool)

(declare-fun getPair!76 (List!29260 K!5565) Option!5765)

(assert (=> b!2483962 (= e!1577009 (isDefined!4587 (getPair!76 (apply!6951 (v!31547 (underlying!6992 thiss!42540)) lt!890109) key!2246)))))

(declare-fun b!2483963 () Bool)

(declare-fun Unit!42734 () Unit!42728)

(assert (=> b!2483963 (= e!1577005 Unit!42734)))

(declare-fun b!2483964 () Bool)

(assert (=> b!2483964 false))

(declare-fun lt!890096 () Unit!42728)

(declare-fun lt!890108 () Unit!42728)

(assert (=> b!2483964 (= lt!890096 lt!890108)))

(declare-fun lt!890113 () ListLongMap!573)

(assert (=> b!2483964 (contains!5160 (extractMap!181 (toList!1624 lt!890113)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!76 (ListLongMap!573 K!5565 Hashable!3302) Unit!42728)

(assert (=> b!2483964 (= lt!890108 (lemmaInLongMapThenInGenericMap!76 lt!890113 key!2246 (hashF!5271 thiss!42540)))))

(assert (=> b!2483964 (= lt!890113 call!152252)))

(declare-fun Unit!42735 () Unit!42728)

(assert (=> b!2483964 (= e!1577008 Unit!42735)))

(declare-fun bm!152250 () Bool)

(declare-fun call!152255 () Option!5765)

(assert (=> bm!152250 (= call!152255 (getPair!76 call!152251 key!2246))))

(assert (=> b!2483965 (= e!1577006 (forallContained!879 (toList!1624 (map!6262 (v!31547 (underlying!6992 thiss!42540)))) lambda!94213 (tuple2!29001 lt!890109 (apply!6951 (v!31547 (underlying!6992 thiss!42540)) lt!890109))))))

(declare-fun c!394863 () Bool)

(assert (=> b!2483965 (= c!394863 (not (contains!5159 (toList!1624 (map!6262 (v!31547 (underlying!6992 thiss!42540)))) (tuple2!29001 lt!890109 (apply!6951 (v!31547 (underlying!6992 thiss!42540)) lt!890109)))))))

(declare-fun lt!890097 () Unit!42728)

(assert (=> b!2483965 (= lt!890097 e!1577005)))

(declare-fun b!2483966 () Bool)

(declare-fun Unit!42736 () Unit!42728)

(assert (=> b!2483966 (= e!1577006 Unit!42736)))

(declare-fun bm!152251 () Bool)

(assert (=> bm!152251 (= call!152256 (isDefined!4587 call!152255))))

(declare-fun b!2483967 () Bool)

(assert (=> b!2483967 (= e!1577004 call!152256)))

(assert (= (and d!713249 c!394864) b!2483965))

(assert (= (and d!713249 (not c!394864)) b!2483966))

(assert (= (and b!2483965 c!394863) b!2483960))

(assert (= (and b!2483965 (not c!394863)) b!2483963))

(assert (= (and d!713249 c!394865) b!2483957))

(assert (= (and d!713249 (not c!394865)) b!2483959))

(assert (= (and b!2483957 res!1051378) b!2483958))

(assert (= (and b!2483959 res!1051379) b!2483967))

(assert (= (and b!2483959 c!394862) b!2483964))

(assert (= (and b!2483959 (not c!394862)) b!2483961))

(assert (= (or b!2483957 b!2483959 b!2483967 b!2483964) bm!152247))

(assert (= (or b!2483957 b!2483958 b!2483959 b!2483967) bm!152248))

(assert (= (or b!2483957 b!2483959) bm!152246))

(assert (= (or b!2483958 b!2483967) bm!152249))

(assert (= (or b!2483958 b!2483967) bm!152250))

(assert (= (or b!2483958 b!2483967) bm!152251))

(assert (= (and d!713249 res!1051377) b!2483962))

(assert (=> d!713249 m!2851809))

(declare-fun m!2851847 () Bool)

(assert (=> d!713249 m!2851847))

(declare-fun m!2851849 () Bool)

(assert (=> d!713249 m!2851849))

(assert (=> d!713249 m!2851803))

(declare-fun m!2851851 () Bool)

(assert (=> d!713249 m!2851851))

(assert (=> d!713249 m!2851827))

(assert (=> d!713249 m!2851847))

(declare-fun m!2851853 () Bool)

(assert (=> d!713249 m!2851853))

(assert (=> d!713249 m!2851805))

(assert (=> d!713249 m!2851803))

(assert (=> bm!152247 m!2851809))

(assert (=> b!2483960 m!2851809))

(declare-fun m!2851855 () Bool)

(assert (=> b!2483960 m!2851855))

(declare-fun m!2851857 () Bool)

(assert (=> b!2483960 m!2851857))

(declare-fun m!2851859 () Bool)

(assert (=> b!2483960 m!2851859))

(declare-fun m!2851861 () Bool)

(assert (=> b!2483960 m!2851861))

(declare-fun m!2851863 () Bool)

(assert (=> b!2483960 m!2851863))

(declare-fun m!2851865 () Bool)

(assert (=> b!2483960 m!2851865))

(declare-fun m!2851867 () Bool)

(assert (=> b!2483960 m!2851867))

(declare-fun m!2851869 () Bool)

(assert (=> b!2483960 m!2851869))

(assert (=> b!2483960 m!2851867))

(declare-fun m!2851871 () Bool)

(assert (=> bm!152249 m!2851871))

(assert (=> b!2483962 m!2851863))

(assert (=> b!2483962 m!2851863))

(declare-fun m!2851873 () Bool)

(assert (=> b!2483962 m!2851873))

(assert (=> b!2483962 m!2851873))

(declare-fun m!2851875 () Bool)

(assert (=> b!2483962 m!2851875))

(declare-fun m!2851877 () Bool)

(assert (=> bm!152250 m!2851877))

(declare-fun m!2851879 () Bool)

(assert (=> bm!152246 m!2851879))

(declare-fun m!2851881 () Bool)

(assert (=> b!2483957 m!2851881))

(declare-fun m!2851883 () Bool)

(assert (=> bm!152251 m!2851883))

(assert (=> bm!152248 m!2851805))

(assert (=> b!2483965 m!2851809))

(assert (=> b!2483965 m!2851863))

(declare-fun m!2851885 () Bool)

(assert (=> b!2483965 m!2851885))

(declare-fun m!2851887 () Bool)

(assert (=> b!2483965 m!2851887))

(declare-fun m!2851889 () Bool)

(assert (=> b!2483964 m!2851889))

(assert (=> b!2483964 m!2851889))

(declare-fun m!2851891 () Bool)

(assert (=> b!2483964 m!2851891))

(declare-fun m!2851893 () Bool)

(assert (=> b!2483964 m!2851893))

(assert (=> b!2483920 d!713249))

(declare-fun d!713251 () Bool)

(declare-fun res!1051384 () Bool)

(declare-fun e!1577014 () Bool)

(assert (=> d!713251 (=> res!1051384 e!1577014)))

(assert (=> d!713251 (= res!1051384 (not ((_ is Cons!29160) lt!890037)))))

(assert (=> d!713251 (= (noDuplicateKeys!98 lt!890037) e!1577014)))

(declare-fun b!2483972 () Bool)

(declare-fun e!1577015 () Bool)

(assert (=> b!2483972 (= e!1577014 e!1577015)))

(declare-fun res!1051385 () Bool)

(assert (=> b!2483972 (=> (not res!1051385) (not e!1577015))))

(declare-fun containsKey!149 (List!29260 K!5565) Bool)

(assert (=> b!2483972 (= res!1051385 (not (containsKey!149 (t!210931 lt!890037) (_1!17041 (h!34568 lt!890037)))))))

(declare-fun b!2483973 () Bool)

(assert (=> b!2483973 (= e!1577015 (noDuplicateKeys!98 (t!210931 lt!890037)))))

(assert (= (and d!713251 (not res!1051384)) b!2483972))

(assert (= (and b!2483972 res!1051385) b!2483973))

(declare-fun m!2851895 () Bool)

(assert (=> b!2483972 m!2851895))

(declare-fun m!2851897 () Bool)

(assert (=> b!2483973 m!2851897))

(assert (=> b!2483919 d!713251))

(declare-fun d!713253 () Bool)

(assert (=> d!713253 (dynLambda!12488 lambda!94203 (tuple2!29001 lt!890041 lt!890038))))

(declare-fun lt!890117 () Unit!42728)

(declare-fun choose!14665 (List!29261 Int tuple2!29000) Unit!42728)

(assert (=> d!713253 (= lt!890117 (choose!14665 (toList!1624 lt!890036) lambda!94203 (tuple2!29001 lt!890041 lt!890038)))))

(declare-fun e!1577018 () Bool)

(assert (=> d!713253 e!1577018))

(declare-fun res!1051388 () Bool)

(assert (=> d!713253 (=> (not res!1051388) (not e!1577018))))

(assert (=> d!713253 (= res!1051388 (forall!5982 (toList!1624 lt!890036) lambda!94203))))

(assert (=> d!713253 (= (forallContained!879 (toList!1624 lt!890036) lambda!94203 (tuple2!29001 lt!890041 lt!890038)) lt!890117)))

(declare-fun b!2483976 () Bool)

(assert (=> b!2483976 (= e!1577018 (contains!5159 (toList!1624 lt!890036) (tuple2!29001 lt!890041 lt!890038)))))

(assert (= (and d!713253 res!1051388) b!2483976))

(declare-fun b_lambda!76217 () Bool)

(assert (=> (not b_lambda!76217) (not d!713253)))

(declare-fun m!2851899 () Bool)

(assert (=> d!713253 m!2851899))

(declare-fun m!2851901 () Bool)

(assert (=> d!713253 m!2851901))

(assert (=> d!713253 m!2851821))

(declare-fun m!2851903 () Bool)

(assert (=> b!2483976 m!2851903))

(assert (=> b!2483919 d!713253))

(declare-fun d!713255 () Bool)

(declare-fun hash!721 (Hashable!3302 K!5565) (_ BitVec 64))

(assert (=> d!713255 (= (hash!718 (hashF!5271 thiss!42540) key!2246) (hash!721 (hashF!5271 thiss!42540) key!2246))))

(declare-fun bs!467667 () Bool)

(assert (= bs!467667 d!713255))

(declare-fun m!2851905 () Bool)

(assert (=> bs!467667 m!2851905))

(assert (=> b!2483919 d!713255))

(declare-fun d!713257 () Bool)

(declare-fun lt!890120 () ListMap!1105)

(declare-fun invariantList!415 (List!29260) Bool)

(assert (=> d!713257 (invariantList!415 (toList!1625 lt!890120))))

(assert (=> d!713257 (= lt!890120 (extractMap!181 (toList!1624 (map!6262 (v!31547 (underlying!6992 thiss!42540))))))))

(assert (=> d!713257 (valid!2599 thiss!42540)))

(assert (=> d!713257 (= (map!6261 thiss!42540) lt!890120)))

(declare-fun bs!467668 () Bool)

(assert (= bs!467668 d!713257))

(declare-fun m!2851907 () Bool)

(assert (=> bs!467668 m!2851907))

(assert (=> bs!467668 m!2851809))

(assert (=> bs!467668 m!2851847))

(assert (=> bs!467668 m!2851827))

(assert (=> b!2483919 d!713257))

(declare-fun b!2483996 () Bool)

(declare-fun e!1577030 () tuple2!29004)

(declare-fun lt!890130 () tuple2!29004)

(assert (=> b!2483996 (= e!1577030 (tuple2!29005 (_1!17044 lt!890130) (_2!17044 lt!890130)))))

(declare-fun repack!24 (MutLongMap!3392) tuple2!29004)

(assert (=> b!2483996 (= lt!890130 (repack!24 (v!31547 (underlying!6992 thiss!42540))))))

(declare-fun b!2483997 () Bool)

(declare-fun e!1577031 () Bool)

(declare-fun e!1577029 () Bool)

(assert (=> b!2483997 (= e!1577031 e!1577029)))

(declare-fun res!1051397 () Bool)

(declare-fun call!152261 () ListLongMap!573)

(assert (=> b!2483997 (= res!1051397 (contains!5158 call!152261 lt!890041))))

(assert (=> b!2483997 (=> (not res!1051397) (not e!1577029))))

(declare-fun b!2483998 () Bool)

(declare-fun e!1577032 () tuple2!29004)

(declare-datatypes ((tuple2!29006 0))(
  ( (tuple2!29007 (_1!17045 Bool) (_2!17045 LongMapFixedSize!6784)) )
))
(declare-fun lt!890132 () tuple2!29006)

(assert (=> b!2483998 (= e!1577032 (tuple2!29005 (_1!17045 lt!890132) (LongMap!3392 (Cell!13386 (_2!17045 lt!890132)))))))

(declare-fun lt!890129 () tuple2!29004)

(declare-fun update!211 (LongMapFixedSize!6784 (_ BitVec 64) List!29260) tuple2!29006)

(assert (=> b!2483998 (= lt!890132 (update!211 (v!31546 (underlying!6991 (_2!17044 lt!890129))) lt!890041 lt!890037))))

(declare-fun b!2483999 () Bool)

(declare-fun call!152262 () ListLongMap!573)

(declare-fun +!90 (ListLongMap!573 tuple2!29000) ListLongMap!573)

(assert (=> b!2483999 (= e!1577029 (= call!152261 (+!90 call!152262 (tuple2!29001 lt!890041 lt!890037))))))

(declare-fun bm!152256 () Bool)

(declare-fun lt!890131 () tuple2!29004)

(assert (=> bm!152256 (= call!152261 (map!6262 (_2!17044 lt!890131)))))

(declare-fun bm!152257 () Bool)

(assert (=> bm!152257 (= call!152262 (map!6262 (v!31547 (underlying!6992 thiss!42540))))))

(declare-fun b!2484000 () Bool)

(assert (=> b!2484000 (= e!1577030 (tuple2!29005 true (v!31547 (underlying!6992 thiss!42540))))))

(declare-fun b!2484001 () Bool)

(assert (=> b!2484001 (= e!1577032 (tuple2!29005 false (_2!17044 lt!890129)))))

(declare-fun b!2484002 () Bool)

(declare-fun res!1051395 () Bool)

(declare-fun e!1577033 () Bool)

(assert (=> b!2484002 (=> (not res!1051395) (not e!1577033))))

(declare-fun valid!2600 (MutLongMap!3392) Bool)

(assert (=> b!2484002 (= res!1051395 (valid!2600 (_2!17044 lt!890131)))))

(declare-fun b!2484003 () Bool)

(assert (=> b!2484003 (= e!1577033 e!1577031)))

(declare-fun c!394874 () Bool)

(assert (=> b!2484003 (= c!394874 (_1!17044 lt!890131))))

(declare-fun d!713259 () Bool)

(assert (=> d!713259 e!1577033))

(declare-fun res!1051396 () Bool)

(assert (=> d!713259 (=> (not res!1051396) (not e!1577033))))

(assert (=> d!713259 (= res!1051396 ((_ is LongMap!3392) (_2!17044 lt!890131)))))

(assert (=> d!713259 (= lt!890131 e!1577032)))

(declare-fun c!394872 () Bool)

(assert (=> d!713259 (= c!394872 (_1!17044 lt!890129))))

(assert (=> d!713259 (= lt!890129 e!1577030)))

(declare-fun c!394873 () Bool)

(declare-fun imbalanced!20 (MutLongMap!3392) Bool)

(assert (=> d!713259 (= c!394873 (imbalanced!20 (v!31547 (underlying!6992 thiss!42540))))))

(assert (=> d!713259 (valid!2600 (v!31547 (underlying!6992 thiss!42540)))))

(assert (=> d!713259 (= (update!210 (v!31547 (underlying!6992 thiss!42540)) lt!890041 lt!890037) lt!890131)))

(declare-fun b!2483995 () Bool)

(assert (=> b!2483995 (= e!1577031 (= call!152261 call!152262))))

(assert (= (and d!713259 c!394873) b!2483996))

(assert (= (and d!713259 (not c!394873)) b!2484000))

(assert (= (and d!713259 c!394872) b!2483998))

(assert (= (and d!713259 (not c!394872)) b!2484001))

(assert (= (and d!713259 res!1051396) b!2484002))

(assert (= (and b!2484002 res!1051395) b!2484003))

(assert (= (and b!2484003 c!394874) b!2483997))

(assert (= (and b!2484003 (not c!394874)) b!2483995))

(assert (= (and b!2483997 res!1051397) b!2483999))

(assert (= (or b!2483997 b!2483999 b!2483995) bm!152256))

(assert (= (or b!2483999 b!2483995) bm!152257))

(declare-fun m!2851909 () Bool)

(assert (=> b!2483997 m!2851909))

(declare-fun m!2851911 () Bool)

(assert (=> b!2483998 m!2851911))

(declare-fun m!2851913 () Bool)

(assert (=> b!2483999 m!2851913))

(declare-fun m!2851915 () Bool)

(assert (=> d!713259 m!2851915))

(declare-fun m!2851917 () Bool)

(assert (=> d!713259 m!2851917))

(declare-fun m!2851919 () Bool)

(assert (=> b!2484002 m!2851919))

(declare-fun m!2851921 () Bool)

(assert (=> bm!152256 m!2851921))

(assert (=> bm!152257 m!2851809))

(declare-fun m!2851923 () Bool)

(assert (=> b!2483996 m!2851923))

(assert (=> b!2483919 d!713259))

(declare-fun d!713261 () Bool)

(assert (=> d!713261 (noDuplicateKeys!98 (removePairForKey!90 lt!890038 key!2246))))

(declare-fun lt!890135 () Unit!42728)

(declare-fun choose!14666 (List!29260 K!5565) Unit!42728)

(assert (=> d!713261 (= lt!890135 (choose!14666 lt!890038 key!2246))))

(assert (=> d!713261 (noDuplicateKeys!98 lt!890038)))

(assert (=> d!713261 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!78 lt!890038 key!2246) lt!890135)))

(declare-fun bs!467669 () Bool)

(assert (= bs!467669 d!713261))

(assert (=> bs!467669 m!2851807))

(assert (=> bs!467669 m!2851807))

(declare-fun m!2851925 () Bool)

(assert (=> bs!467669 m!2851925))

(declare-fun m!2851927 () Bool)

(assert (=> bs!467669 m!2851927))

(assert (=> bs!467669 m!2851841))

(assert (=> b!2483919 d!713261))

(declare-fun d!713263 () Bool)

(declare-fun map!6263 (LongMapFixedSize!6784) ListLongMap!573)

(assert (=> d!713263 (= (map!6262 (v!31547 (underlying!6992 thiss!42540))) (map!6263 (v!31546 (underlying!6991 (v!31547 (underlying!6992 thiss!42540))))))))

(declare-fun bs!467670 () Bool)

(assert (= bs!467670 d!713263))

(declare-fun m!2851929 () Bool)

(assert (=> bs!467670 m!2851929))

(assert (=> b!2483919 d!713263))

(declare-fun d!713265 () Bool)

(declare-fun e!1577036 () Bool)

(assert (=> d!713265 e!1577036))

(declare-fun c!394877 () Bool)

(assert (=> d!713265 (= c!394877 (contains!5161 (v!31547 (underlying!6992 thiss!42540)) lt!890041))))

(declare-fun lt!890138 () List!29260)

(declare-fun apply!6953 (LongMapFixedSize!6784 (_ BitVec 64)) List!29260)

(assert (=> d!713265 (= lt!890138 (apply!6953 (v!31546 (underlying!6991 (v!31547 (underlying!6992 thiss!42540)))) lt!890041))))

(assert (=> d!713265 (valid!2600 (v!31547 (underlying!6992 thiss!42540)))))

(assert (=> d!713265 (= (apply!6951 (v!31547 (underlying!6992 thiss!42540)) lt!890041) lt!890138)))

(declare-fun b!2484008 () Bool)

(declare-fun get!8997 (Option!5764) List!29260)

(assert (=> b!2484008 (= e!1577036 (= lt!890138 (get!8997 (getValueByKey!145 (toList!1624 (map!6262 (v!31547 (underlying!6992 thiss!42540)))) lt!890041))))))

(declare-fun b!2484009 () Bool)

(declare-fun dynLambda!12489 (Int (_ BitVec 64)) List!29260)

(assert (=> b!2484009 (= e!1577036 (= lt!890138 (dynLambda!12489 (defaultEntry!3766 (v!31546 (underlying!6991 (v!31547 (underlying!6992 thiss!42540))))) lt!890041)))))

(assert (=> b!2484009 ((_ is LongMap!3392) (v!31547 (underlying!6992 thiss!42540)))))

(assert (= (and d!713265 c!394877) b!2484008))

(assert (= (and d!713265 (not c!394877)) b!2484009))

(declare-fun b_lambda!76219 () Bool)

(assert (=> (not b_lambda!76219) (not b!2484009)))

(declare-fun t!210934 () Bool)

(declare-fun tb!140389 () Bool)

(assert (=> (and b!2483918 (= (defaultEntry!3766 (v!31546 (underlying!6991 (v!31547 (underlying!6992 thiss!42540))))) (defaultEntry!3766 (v!31546 (underlying!6991 (v!31547 (underlying!6992 thiss!42540)))))) t!210934) tb!140389))

(assert (=> b!2484009 t!210934))

(declare-fun result!173362 () Bool)

(declare-fun b_and!188695 () Bool)

(assert (= b_and!188691 (and (=> t!210934 result!173362) b_and!188695)))

(declare-fun m!2851931 () Bool)

(assert (=> d!713265 m!2851931))

(declare-fun m!2851933 () Bool)

(assert (=> d!713265 m!2851933))

(assert (=> d!713265 m!2851917))

(assert (=> b!2484008 m!2851809))

(declare-fun m!2851935 () Bool)

(assert (=> b!2484008 m!2851935))

(assert (=> b!2484008 m!2851935))

(declare-fun m!2851937 () Bool)

(assert (=> b!2484008 m!2851937))

(declare-fun m!2851939 () Bool)

(assert (=> b!2484009 m!2851939))

(assert (=> b!2483919 d!713265))

(declare-fun b!2484018 () Bool)

(declare-fun e!1577041 () List!29260)

(assert (=> b!2484018 (= e!1577041 (t!210931 lt!890038))))

(declare-fun b!2484019 () Bool)

(declare-fun e!1577042 () List!29260)

(assert (=> b!2484019 (= e!1577041 e!1577042)))

(declare-fun c!394883 () Bool)

(assert (=> b!2484019 (= c!394883 ((_ is Cons!29160) lt!890038))))

(declare-fun b!2484021 () Bool)

(assert (=> b!2484021 (= e!1577042 Nil!29160)))

(declare-fun b!2484020 () Bool)

(assert (=> b!2484020 (= e!1577042 (Cons!29160 (h!34568 lt!890038) (removePairForKey!90 (t!210931 lt!890038) key!2246)))))

(declare-fun d!713267 () Bool)

(declare-fun lt!890141 () List!29260)

(assert (=> d!713267 (not (containsKey!149 lt!890141 key!2246))))

(assert (=> d!713267 (= lt!890141 e!1577041)))

(declare-fun c!394882 () Bool)

(assert (=> d!713267 (= c!394882 (and ((_ is Cons!29160) lt!890038) (= (_1!17041 (h!34568 lt!890038)) key!2246)))))

(assert (=> d!713267 (noDuplicateKeys!98 lt!890038)))

(assert (=> d!713267 (= (removePairForKey!90 lt!890038 key!2246) lt!890141)))

(assert (= (and d!713267 c!394882) b!2484018))

(assert (= (and d!713267 (not c!394882)) b!2484019))

(assert (= (and b!2484019 c!394883) b!2484020))

(assert (= (and b!2484019 (not c!394883)) b!2484021))

(declare-fun m!2851941 () Bool)

(assert (=> b!2484020 m!2851941))

(declare-fun m!2851943 () Bool)

(assert (=> d!713267 m!2851943))

(assert (=> d!713267 m!2851841))

(assert (=> b!2483919 d!713267))

(declare-fun d!713269 () Bool)

(assert (=> d!713269 (= (array_inv!3859 (_keys!3689 (v!31546 (underlying!6991 (v!31547 (underlying!6992 thiss!42540)))))) (bvsge (size!22794 (_keys!3689 (v!31546 (underlying!6991 (v!31547 (underlying!6992 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2483918 d!713269))

(declare-fun d!713271 () Bool)

(assert (=> d!713271 (= (array_inv!3860 (_values!3672 (v!31546 (underlying!6991 (v!31547 (underlying!6992 thiss!42540)))))) (bvsge (size!22793 (_values!3672 (v!31546 (underlying!6991 (v!31547 (underlying!6992 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2483918 d!713271))

(declare-fun bs!467671 () Bool)

(declare-fun b!2484026 () Bool)

(assert (= bs!467671 (and b!2484026 b!2483919)))

(declare-fun lambda!94216 () Int)

(assert (=> bs!467671 (= lambda!94216 lambda!94203)))

(declare-fun bs!467672 () Bool)

(assert (= bs!467672 (and b!2484026 d!713241)))

(assert (=> bs!467672 (not (= lambda!94216 lambda!94209))))

(declare-fun bs!467673 () Bool)

(assert (= bs!467673 (and b!2484026 b!2483965)))

(assert (=> bs!467673 (= lambda!94216 lambda!94213)))

(declare-fun d!713273 () Bool)

(declare-fun res!1051402 () Bool)

(declare-fun e!1577045 () Bool)

(assert (=> d!713273 (=> (not res!1051402) (not e!1577045))))

(assert (=> d!713273 (= res!1051402 (valid!2600 (v!31547 (underlying!6992 thiss!42540))))))

(assert (=> d!713273 (= (valid!2599 thiss!42540) e!1577045)))

(declare-fun res!1051403 () Bool)

(assert (=> b!2484026 (=> (not res!1051403) (not e!1577045))))

(assert (=> b!2484026 (= res!1051403 (forall!5982 (toList!1624 (map!6262 (v!31547 (underlying!6992 thiss!42540)))) lambda!94216))))

(declare-fun b!2484027 () Bool)

(declare-fun allKeysSameHashInMap!172 (ListLongMap!573 Hashable!3302) Bool)

(assert (=> b!2484027 (= e!1577045 (allKeysSameHashInMap!172 (map!6262 (v!31547 (underlying!6992 thiss!42540))) (hashF!5271 thiss!42540)))))

(assert (= (and d!713273 res!1051402) b!2484026))

(assert (= (and b!2484026 res!1051403) b!2484027))

(assert (=> d!713273 m!2851917))

(assert (=> b!2484026 m!2851809))

(declare-fun m!2851945 () Bool)

(assert (=> b!2484026 m!2851945))

(assert (=> b!2484027 m!2851809))

(assert (=> b!2484027 m!2851809))

(declare-fun m!2851947 () Bool)

(assert (=> b!2484027 m!2851947))

(assert (=> b!2483917 d!713273))

(declare-fun e!1577048 () Bool)

(declare-fun b!2484032 () Bool)

(declare-fun tp!795189 () Bool)

(declare-fun tp_is_empty!12327 () Bool)

(assert (=> b!2484032 (= e!1577048 (and tp_is_empty!12325 tp_is_empty!12327 tp!795189))))

(assert (=> b!2483915 (= tp!795184 e!1577048)))

(assert (= (and b!2483915 ((_ is Cons!29160) mapDefault!15663)) b!2484032))

(declare-fun mapIsEmpty!15666 () Bool)

(declare-fun mapRes!15666 () Bool)

(assert (=> mapIsEmpty!15666 mapRes!15666))

(declare-fun tp!795196 () Bool)

(declare-fun b!2484040 () Bool)

(declare-fun e!1577053 () Bool)

(assert (=> b!2484040 (= e!1577053 (and tp_is_empty!12325 tp_is_empty!12327 tp!795196))))

(declare-fun mapNonEmpty!15666 () Bool)

(declare-fun tp!795198 () Bool)

(declare-fun e!1577054 () Bool)

(assert (=> mapNonEmpty!15666 (= mapRes!15666 (and tp!795198 e!1577054))))

(declare-fun mapKey!15666 () (_ BitVec 32))

(declare-fun mapRest!15666 () (Array (_ BitVec 32) List!29260))

(declare-fun mapValue!15666 () List!29260)

(assert (=> mapNonEmpty!15666 (= mapRest!15663 (store mapRest!15666 mapKey!15666 mapValue!15666))))

(declare-fun condMapEmpty!15666 () Bool)

(declare-fun mapDefault!15666 () List!29260)

(assert (=> mapNonEmpty!15663 (= condMapEmpty!15666 (= mapRest!15663 ((as const (Array (_ BitVec 32) List!29260)) mapDefault!15666)))))

(assert (=> mapNonEmpty!15663 (= tp!795181 (and e!1577053 mapRes!15666))))

(declare-fun tp!795197 () Bool)

(declare-fun b!2484039 () Bool)

(assert (=> b!2484039 (= e!1577054 (and tp_is_empty!12325 tp_is_empty!12327 tp!795197))))

(assert (= (and mapNonEmpty!15663 condMapEmpty!15666) mapIsEmpty!15666))

(assert (= (and mapNonEmpty!15663 (not condMapEmpty!15666)) mapNonEmpty!15666))

(assert (= (and mapNonEmpty!15666 ((_ is Cons!29160) mapValue!15666)) b!2484039))

(assert (= (and mapNonEmpty!15663 ((_ is Cons!29160) mapDefault!15666)) b!2484040))

(declare-fun m!2851949 () Bool)

(assert (=> mapNonEmpty!15666 m!2851949))

(declare-fun tp!795199 () Bool)

(declare-fun b!2484041 () Bool)

(declare-fun e!1577055 () Bool)

(assert (=> b!2484041 (= e!1577055 (and tp_is_empty!12325 tp_is_empty!12327 tp!795199))))

(assert (=> mapNonEmpty!15663 (= tp!795186 e!1577055)))

(assert (= (and mapNonEmpty!15663 ((_ is Cons!29160) mapValue!15663)) b!2484041))

(declare-fun tp!795200 () Bool)

(declare-fun e!1577056 () Bool)

(declare-fun b!2484042 () Bool)

(assert (=> b!2484042 (= e!1577056 (and tp_is_empty!12325 tp_is_empty!12327 tp!795200))))

(assert (=> b!2483918 (= tp!795180 e!1577056)))

(assert (= (and b!2483918 ((_ is Cons!29160) (zeroValue!3650 (v!31546 (underlying!6991 (v!31547 (underlying!6992 thiss!42540))))))) b!2484042))

(declare-fun e!1577057 () Bool)

(declare-fun tp!795201 () Bool)

(declare-fun b!2484043 () Bool)

(assert (=> b!2484043 (= e!1577057 (and tp_is_empty!12325 tp_is_empty!12327 tp!795201))))

(assert (=> b!2483918 (= tp!795182 e!1577057)))

(assert (= (and b!2483918 ((_ is Cons!29160) (minValue!3650 (v!31546 (underlying!6991 (v!31547 (underlying!6992 thiss!42540))))))) b!2484043))

(declare-fun b_lambda!76221 () Bool)

(assert (= b_lambda!76217 (or b!2483919 b_lambda!76221)))

(declare-fun bs!467674 () Bool)

(declare-fun d!713275 () Bool)

(assert (= bs!467674 (and d!713275 b!2483919)))

(assert (=> bs!467674 (= (dynLambda!12488 lambda!94203 (tuple2!29001 lt!890041 lt!890038)) (noDuplicateKeys!98 (_2!17042 (tuple2!29001 lt!890041 lt!890038))))))

(declare-fun m!2851951 () Bool)

(assert (=> bs!467674 m!2851951))

(assert (=> d!713253 d!713275))

(declare-fun b_lambda!76223 () Bool)

(assert (= b_lambda!76219 (or (and b!2483918 b_free!72425) b_lambda!76223)))

(declare-fun b_lambda!76225 () Bool)

(assert (= b_lambda!76215 (or b!2483919 b_lambda!76225)))

(declare-fun bs!467675 () Bool)

(declare-fun d!713277 () Bool)

(assert (= bs!467675 (and d!713277 b!2483919)))

(assert (=> bs!467675 (= (dynLambda!12488 lambda!94203 (h!34569 (toList!1624 lt!890036))) (noDuplicateKeys!98 (_2!17042 (h!34569 (toList!1624 lt!890036)))))))

(declare-fun m!2851953 () Bool)

(assert (=> bs!467675 m!2851953))

(assert (=> b!2483933 d!713277))

(check-sat (not d!713263) (not d!713245) (not b_lambda!76225) (not b_next!73129) (not b_next!73131) tp_is_empty!12325 (not d!713243) (not b!2483965) (not mapNonEmpty!15666) (not bm!152251) (not tb!140389) (not d!713265) (not b!2483964) (not d!713239) (not b!2483960) (not b!2484032) (not d!713273) (not bm!152257) (not d!713257) (not bm!152256) (not d!713259) (not bs!467675) (not bm!152246) (not b!2483962) (not bm!152247) (not d!713255) (not b!2484041) (not b!2483957) (not b!2483998) (not b!2483996) b_and!188693 (not b!2484026) (not d!713241) (not d!713253) (not b!2484008) (not d!713267) (not b!2483973) (not b!2484039) (not b!2483997) tp_is_empty!12327 (not b!2483999) (not bs!467674) (not bm!152248) (not b!2484027) (not b!2483934) (not b!2484040) (not bm!152250) (not b_lambda!76221) (not b_lambda!76223) (not d!713249) (not b!2484020) (not b!2484043) (not b!2484042) (not d!713261) (not b!2484002) (not b!2483972) (not b!2483976) (not bm!152249) b_and!188695)
(check-sat b_and!188693 b_and!188695 (not b_next!73129) (not b_next!73131))
