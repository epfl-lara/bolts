; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487260 () Bool)

(assert start!487260)

(declare-fun b!4764317 () Bool)

(declare-fun b_free!129515 () Bool)

(declare-fun b_next!130305 () Bool)

(assert (=> b!4764317 (= b_free!129515 (not b_next!130305))))

(declare-fun tp!1354661 () Bool)

(declare-fun b_and!341203 () Bool)

(assert (=> b!4764317 (= tp!1354661 b_and!341203)))

(declare-fun b!4764314 () Bool)

(declare-fun b_free!129517 () Bool)

(declare-fun b_next!130307 () Bool)

(assert (=> b!4764314 (= b_free!129517 (not b_next!130307))))

(declare-fun tp!1354659 () Bool)

(declare-fun b_and!341205 () Bool)

(assert (=> b!4764314 (= tp!1354659 b_and!341205)))

(declare-fun e!2973484 () Bool)

(declare-fun e!2973486 () Bool)

(assert (=> b!4764314 (= e!2973484 (and e!2973486 tp!1354659))))

(declare-fun b!4764315 () Bool)

(declare-fun e!2973492 () Bool)

(declare-fun e!2973491 () Bool)

(assert (=> b!4764315 (= e!2973492 e!2973491)))

(declare-fun b!4764316 () Bool)

(declare-fun e!2973490 () Bool)

(declare-fun e!2973487 () Bool)

(assert (=> b!4764316 (= e!2973490 e!2973487)))

(declare-fun res!2020715 () Bool)

(assert (=> b!4764316 (=> (not res!2020715) (not e!2973487))))

(declare-datatypes ((K!14874 0))(
  ( (K!14875 (val!20205 Int)) )
))
(declare-datatypes ((V!15120 0))(
  ( (V!15121 (val!20206 Int)) )
))
(declare-datatypes ((tuple2!55414 0))(
  ( (tuple2!55415 (_1!31001 K!14874) (_2!31001 V!15120)) )
))
(declare-datatypes ((array!17870 0))(
  ( (array!17871 (arr!7971 (Array (_ BitVec 32) (_ BitVec 64))) (size!36201 (_ BitVec 32))) )
))
(declare-datatypes ((List!53551 0))(
  ( (Nil!53427) (Cons!53427 (h!59839 tuple2!55414) (t!360953 List!53551)) )
))
(declare-datatypes ((array!17872 0))(
  ( (array!17873 (arr!7972 (Array (_ BitVec 32) List!53551)) (size!36202 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6554 0))(
  ( (HashableExt!6553 (__x!32427 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9786 0))(
  ( (LongMapFixedSize!9787 (defaultEntry!5311 Int) (mask!14635 (_ BitVec 32)) (extraKeys!5168 (_ BitVec 32)) (zeroValue!5181 List!53551) (minValue!5181 List!53551) (_size!9811 (_ BitVec 32)) (_keys!5235 array!17870) (_values!5206 array!17872) (_vacant!4958 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19337 0))(
  ( (Cell!19338 (v!47514 LongMapFixedSize!9786)) )
))
(declare-datatypes ((MutLongMap!4893 0))(
  ( (LongMap!4893 (underlying!9993 Cell!19337)) (MutLongMapExt!4892 (__x!32428 Int)) )
))
(declare-datatypes ((Cell!19339 0))(
  ( (Cell!19340 (v!47515 MutLongMap!4893)) )
))
(declare-datatypes ((MutableMap!4777 0))(
  ( (MutableMapExt!4776 (__x!32429 Int)) (HashMap!4777 (underlying!9994 Cell!19339) (hashF!12379 Hashable!6554) (_size!9812 (_ BitVec 32)) (defaultValue!4948 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4777)

(declare-datatypes ((tuple2!55416 0))(
  ( (tuple2!55417 (_1!31002 (_ BitVec 64)) (_2!31002 List!53551)) )
))
(declare-datatypes ((List!53552 0))(
  ( (Nil!53428) (Cons!53428 (h!59840 tuple2!55416) (t!360954 List!53552)) )
))
(declare-datatypes ((ListLongMap!4639 0))(
  ( (ListLongMap!4640 (toList!6248 List!53552)) )
))
(declare-fun lt!1927227 () ListLongMap!4639)

(declare-fun lt!1927226 () (_ BitVec 64))

(declare-fun contains!16741 (List!53552 tuple2!55416) Bool)

(declare-fun apply!12577 (MutLongMap!4893 (_ BitVec 64)) List!53551)

(assert (=> b!4764316 (= res!2020715 (not (contains!16741 (toList!6248 lt!1927227) (tuple2!55417 lt!1927226 (apply!12577 (v!47515 (underlying!9994 thiss!42052)) lt!1927226)))))))

(declare-fun map!11927 (MutLongMap!4893) ListLongMap!4639)

(assert (=> b!4764316 (= lt!1927227 (map!11927 (v!47515 (underlying!9994 thiss!42052))))))

(declare-fun key!1776 () K!14874)

(declare-fun hash!4537 (Hashable!6554 K!14874) (_ BitVec 64))

(assert (=> b!4764316 (= lt!1927226 (hash!4537 (hashF!12379 thiss!42052) key!1776))))

(declare-fun tp!1354664 () Bool)

(declare-fun tp!1354660 () Bool)

(declare-fun e!2973485 () Bool)

(declare-fun e!2973488 () Bool)

(declare-fun array_inv!5733 (array!17870) Bool)

(declare-fun array_inv!5734 (array!17872) Bool)

(assert (=> b!4764317 (= e!2973488 (and tp!1354661 tp!1354660 tp!1354664 (array_inv!5733 (_keys!5235 (v!47514 (underlying!9993 (v!47515 (underlying!9994 thiss!42052)))))) (array_inv!5734 (_values!5206 (v!47514 (underlying!9993 (v!47515 (underlying!9994 thiss!42052)))))) e!2973485))))

(declare-fun b!4764318 () Bool)

(declare-fun e!2973489 () Bool)

(declare-fun valid!3891 (MutLongMap!4893) Bool)

(assert (=> b!4764318 (= e!2973489 (valid!3891 (v!47515 (underlying!9994 thiss!42052))))))

(declare-fun b!4764319 () Bool)

(declare-fun tp!1354665 () Bool)

(declare-fun mapRes!21731 () Bool)

(assert (=> b!4764319 (= e!2973485 (and tp!1354665 mapRes!21731))))

(declare-fun condMapEmpty!21731 () Bool)

(declare-fun mapDefault!21731 () List!53551)

(assert (=> b!4764319 (= condMapEmpty!21731 (= (arr!7972 (_values!5206 (v!47514 (underlying!9993 (v!47515 (underlying!9994 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53551)) mapDefault!21731)))))

(declare-fun b!4764320 () Bool)

(declare-fun lt!1927228 () MutLongMap!4893)

(get-info :version)

(assert (=> b!4764320 (= e!2973486 (and e!2973492 ((_ is LongMap!4893) lt!1927228)))))

(assert (=> b!4764320 (= lt!1927228 (v!47515 (underlying!9994 thiss!42052)))))

(declare-fun mapIsEmpty!21731 () Bool)

(assert (=> mapIsEmpty!21731 mapRes!21731))

(declare-fun b!4764321 () Bool)

(assert (=> b!4764321 (= e!2973491 e!2973488)))

(declare-fun b!4764322 () Bool)

(declare-fun res!2020717 () Bool)

(assert (=> b!4764322 (=> (not res!2020717) (not e!2973490))))

(declare-fun contains!16742 (MutableMap!4777 K!14874) Bool)

(assert (=> b!4764322 (= res!2020717 (contains!16742 thiss!42052 key!1776))))

(declare-fun res!2020714 () Bool)

(assert (=> start!487260 (=> (not res!2020714) (not e!2973490))))

(assert (=> start!487260 (= res!2020714 ((_ is HashMap!4777) thiss!42052))))

(assert (=> start!487260 e!2973490))

(assert (=> start!487260 e!2973484))

(declare-fun tp_is_empty!32361 () Bool)

(assert (=> start!487260 tp_is_empty!32361))

(declare-fun b!4764323 () Bool)

(declare-fun res!2020716 () Bool)

(assert (=> b!4764323 (=> (not res!2020716) (not e!2973490))))

(declare-fun valid!3892 (MutableMap!4777) Bool)

(assert (=> b!4764323 (= res!2020716 (valid!3892 thiss!42052))))

(declare-fun b!4764324 () Bool)

(assert (=> b!4764324 (= e!2973487 (not e!2973489))))

(declare-fun res!2020713 () Bool)

(assert (=> b!4764324 (=> res!2020713 e!2973489)))

(assert (=> b!4764324 (= res!2020713 (not ((_ is LongMap!4893) (v!47515 (underlying!9994 thiss!42052)))))))

(declare-datatypes ((Option!12627 0))(
  ( (None!12626) (Some!12626 (v!47516 List!53551)) )
))
(declare-fun isDefined!9800 (Option!12627) Bool)

(declare-fun getValueByKey!2152 (List!53552 (_ BitVec 64)) Option!12627)

(assert (=> b!4764324 (isDefined!9800 (getValueByKey!2152 (toList!6248 lt!1927227) lt!1927226))))

(declare-datatypes ((Unit!138087 0))(
  ( (Unit!138088) )
))
(declare-fun lt!1927229 () Unit!138087)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1966 (List!53552 (_ BitVec 64)) Unit!138087)

(assert (=> b!4764324 (= lt!1927229 (lemmaContainsKeyImpliesGetValueByKeyDefined!1966 (toList!6248 lt!1927227) lt!1927226))))

(declare-fun mapNonEmpty!21731 () Bool)

(declare-fun tp!1354663 () Bool)

(declare-fun tp!1354662 () Bool)

(assert (=> mapNonEmpty!21731 (= mapRes!21731 (and tp!1354663 tp!1354662))))

(declare-fun mapRest!21731 () (Array (_ BitVec 32) List!53551))

(declare-fun mapKey!21731 () (_ BitVec 32))

(declare-fun mapValue!21731 () List!53551)

(assert (=> mapNonEmpty!21731 (= (arr!7972 (_values!5206 (v!47514 (underlying!9993 (v!47515 (underlying!9994 thiss!42052)))))) (store mapRest!21731 mapKey!21731 mapValue!21731))))

(assert (= (and start!487260 res!2020714) b!4764323))

(assert (= (and b!4764323 res!2020716) b!4764322))

(assert (= (and b!4764322 res!2020717) b!4764316))

(assert (= (and b!4764316 res!2020715) b!4764324))

(assert (= (and b!4764324 (not res!2020713)) b!4764318))

(assert (= (and b!4764319 condMapEmpty!21731) mapIsEmpty!21731))

(assert (= (and b!4764319 (not condMapEmpty!21731)) mapNonEmpty!21731))

(assert (= b!4764317 b!4764319))

(assert (= b!4764321 b!4764317))

(assert (= b!4764315 b!4764321))

(assert (= (and b!4764320 ((_ is LongMap!4893) (v!47515 (underlying!9994 thiss!42052)))) b!4764315))

(assert (= b!4764314 b!4764320))

(assert (= (and start!487260 ((_ is HashMap!4777) thiss!42052)) b!4764314))

(declare-fun m!5734830 () Bool)

(assert (=> b!4764324 m!5734830))

(assert (=> b!4764324 m!5734830))

(declare-fun m!5734832 () Bool)

(assert (=> b!4764324 m!5734832))

(declare-fun m!5734834 () Bool)

(assert (=> b!4764324 m!5734834))

(declare-fun m!5734836 () Bool)

(assert (=> mapNonEmpty!21731 m!5734836))

(declare-fun m!5734838 () Bool)

(assert (=> b!4764316 m!5734838))

(declare-fun m!5734840 () Bool)

(assert (=> b!4764316 m!5734840))

(declare-fun m!5734842 () Bool)

(assert (=> b!4764316 m!5734842))

(declare-fun m!5734844 () Bool)

(assert (=> b!4764316 m!5734844))

(declare-fun m!5734846 () Bool)

(assert (=> b!4764323 m!5734846))

(declare-fun m!5734848 () Bool)

(assert (=> b!4764322 m!5734848))

(declare-fun m!5734850 () Bool)

(assert (=> b!4764318 m!5734850))

(declare-fun m!5734852 () Bool)

(assert (=> b!4764317 m!5734852))

(declare-fun m!5734854 () Bool)

(assert (=> b!4764317 m!5734854))

(check-sat (not mapNonEmpty!21731) (not b!4764324) b_and!341205 tp_is_empty!32361 b_and!341203 (not b!4764322) (not b!4764323) (not b!4764317) (not b_next!130305) (not b_next!130307) (not b!4764318) (not b!4764316) (not b!4764319))
(check-sat b_and!341205 b_and!341203 (not b_next!130307) (not b_next!130305))
(get-model)

(declare-fun d!1523230 () Bool)

(declare-fun isEmpty!29265 (Option!12627) Bool)

(assert (=> d!1523230 (= (isDefined!9800 (getValueByKey!2152 (toList!6248 lt!1927227) lt!1927226)) (not (isEmpty!29265 (getValueByKey!2152 (toList!6248 lt!1927227) lt!1927226))))))

(declare-fun bs!1148715 () Bool)

(assert (= bs!1148715 d!1523230))

(assert (=> bs!1148715 m!5734830))

(declare-fun m!5734856 () Bool)

(assert (=> bs!1148715 m!5734856))

(assert (=> b!4764324 d!1523230))

(declare-fun d!1523232 () Bool)

(declare-fun c!812724 () Bool)

(assert (=> d!1523232 (= c!812724 (and ((_ is Cons!53428) (toList!6248 lt!1927227)) (= (_1!31002 (h!59840 (toList!6248 lt!1927227))) lt!1927226)))))

(declare-fun e!2973497 () Option!12627)

(assert (=> d!1523232 (= (getValueByKey!2152 (toList!6248 lt!1927227) lt!1927226) e!2973497)))

(declare-fun b!4764334 () Bool)

(declare-fun e!2973498 () Option!12627)

(assert (=> b!4764334 (= e!2973497 e!2973498)))

(declare-fun c!812725 () Bool)

(assert (=> b!4764334 (= c!812725 (and ((_ is Cons!53428) (toList!6248 lt!1927227)) (not (= (_1!31002 (h!59840 (toList!6248 lt!1927227))) lt!1927226))))))

(declare-fun b!4764333 () Bool)

(assert (=> b!4764333 (= e!2973497 (Some!12626 (_2!31002 (h!59840 (toList!6248 lt!1927227)))))))

(declare-fun b!4764335 () Bool)

(assert (=> b!4764335 (= e!2973498 (getValueByKey!2152 (t!360954 (toList!6248 lt!1927227)) lt!1927226))))

(declare-fun b!4764336 () Bool)

(assert (=> b!4764336 (= e!2973498 None!12626)))

(assert (= (and d!1523232 c!812724) b!4764333))

(assert (= (and d!1523232 (not c!812724)) b!4764334))

(assert (= (and b!4764334 c!812725) b!4764335))

(assert (= (and b!4764334 (not c!812725)) b!4764336))

(declare-fun m!5734858 () Bool)

(assert (=> b!4764335 m!5734858))

(assert (=> b!4764324 d!1523232))

(declare-fun d!1523234 () Bool)

(assert (=> d!1523234 (isDefined!9800 (getValueByKey!2152 (toList!6248 lt!1927227) lt!1927226))))

(declare-fun lt!1927232 () Unit!138087)

(declare-fun choose!33929 (List!53552 (_ BitVec 64)) Unit!138087)

(assert (=> d!1523234 (= lt!1927232 (choose!33929 (toList!6248 lt!1927227) lt!1927226))))

(declare-fun e!2973501 () Bool)

(assert (=> d!1523234 e!2973501))

(declare-fun res!2020720 () Bool)

(assert (=> d!1523234 (=> (not res!2020720) (not e!2973501))))

(declare-fun isStrictlySorted!798 (List!53552) Bool)

(assert (=> d!1523234 (= res!2020720 (isStrictlySorted!798 (toList!6248 lt!1927227)))))

(assert (=> d!1523234 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1966 (toList!6248 lt!1927227) lt!1927226) lt!1927232)))

(declare-fun b!4764339 () Bool)

(declare-fun containsKey!3649 (List!53552 (_ BitVec 64)) Bool)

(assert (=> b!4764339 (= e!2973501 (containsKey!3649 (toList!6248 lt!1927227) lt!1927226))))

(assert (= (and d!1523234 res!2020720) b!4764339))

(assert (=> d!1523234 m!5734830))

(assert (=> d!1523234 m!5734830))

(assert (=> d!1523234 m!5734832))

(declare-fun m!5734860 () Bool)

(assert (=> d!1523234 m!5734860))

(declare-fun m!5734862 () Bool)

(assert (=> d!1523234 m!5734862))

(declare-fun m!5734864 () Bool)

(assert (=> b!4764339 m!5734864))

(assert (=> b!4764324 d!1523234))

(declare-fun d!1523236 () Bool)

(declare-fun res!2020725 () Bool)

(declare-fun e!2973504 () Bool)

(assert (=> d!1523236 (=> (not res!2020725) (not e!2973504))))

(assert (=> d!1523236 (= res!2020725 (valid!3891 (v!47515 (underlying!9994 thiss!42052))))))

(assert (=> d!1523236 (= (valid!3892 thiss!42052) e!2973504)))

(declare-fun b!4764344 () Bool)

(declare-fun res!2020726 () Bool)

(assert (=> b!4764344 (=> (not res!2020726) (not e!2973504))))

(declare-fun lambda!224060 () Int)

(declare-fun forall!11861 (List!53552 Int) Bool)

(assert (=> b!4764344 (= res!2020726 (forall!11861 (toList!6248 (map!11927 (v!47515 (underlying!9994 thiss!42052)))) lambda!224060))))

(declare-fun b!4764345 () Bool)

(declare-fun allKeysSameHashInMap!2009 (ListLongMap!4639 Hashable!6554) Bool)

(assert (=> b!4764345 (= e!2973504 (allKeysSameHashInMap!2009 (map!11927 (v!47515 (underlying!9994 thiss!42052))) (hashF!12379 thiss!42052)))))

(assert (= (and d!1523236 res!2020725) b!4764344))

(assert (= (and b!4764344 res!2020726) b!4764345))

(assert (=> d!1523236 m!5734850))

(assert (=> b!4764344 m!5734842))

(declare-fun m!5734866 () Bool)

(assert (=> b!4764344 m!5734866))

(assert (=> b!4764345 m!5734842))

(assert (=> b!4764345 m!5734842))

(declare-fun m!5734868 () Bool)

(assert (=> b!4764345 m!5734868))

(assert (=> b!4764323 d!1523236))

(declare-fun d!1523238 () Bool)

(assert (=> d!1523238 (= (array_inv!5733 (_keys!5235 (v!47514 (underlying!9993 (v!47515 (underlying!9994 thiss!42052)))))) (bvsge (size!36201 (_keys!5235 (v!47514 (underlying!9993 (v!47515 (underlying!9994 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4764317 d!1523238))

(declare-fun d!1523240 () Bool)

(assert (=> d!1523240 (= (array_inv!5734 (_values!5206 (v!47514 (underlying!9993 (v!47515 (underlying!9994 thiss!42052)))))) (bvsge (size!36202 (_values!5206 (v!47514 (underlying!9993 (v!47515 (underlying!9994 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4764317 d!1523240))

(declare-fun lt!1927235 () Bool)

(declare-fun d!1523242 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9577 (List!53552) (InoxSet tuple2!55416))

(assert (=> d!1523242 (= lt!1927235 (select (content!9577 (toList!6248 lt!1927227)) (tuple2!55417 lt!1927226 (apply!12577 (v!47515 (underlying!9994 thiss!42052)) lt!1927226))))))

(declare-fun e!2973509 () Bool)

(assert (=> d!1523242 (= lt!1927235 e!2973509)))

(declare-fun res!2020731 () Bool)

(assert (=> d!1523242 (=> (not res!2020731) (not e!2973509))))

(assert (=> d!1523242 (= res!2020731 ((_ is Cons!53428) (toList!6248 lt!1927227)))))

(assert (=> d!1523242 (= (contains!16741 (toList!6248 lt!1927227) (tuple2!55417 lt!1927226 (apply!12577 (v!47515 (underlying!9994 thiss!42052)) lt!1927226))) lt!1927235)))

(declare-fun b!4764350 () Bool)

(declare-fun e!2973510 () Bool)

(assert (=> b!4764350 (= e!2973509 e!2973510)))

(declare-fun res!2020732 () Bool)

(assert (=> b!4764350 (=> res!2020732 e!2973510)))

(assert (=> b!4764350 (= res!2020732 (= (h!59840 (toList!6248 lt!1927227)) (tuple2!55417 lt!1927226 (apply!12577 (v!47515 (underlying!9994 thiss!42052)) lt!1927226))))))

(declare-fun b!4764351 () Bool)

(assert (=> b!4764351 (= e!2973510 (contains!16741 (t!360954 (toList!6248 lt!1927227)) (tuple2!55417 lt!1927226 (apply!12577 (v!47515 (underlying!9994 thiss!42052)) lt!1927226))))))

(assert (= (and d!1523242 res!2020731) b!4764350))

(assert (= (and b!4764350 (not res!2020732)) b!4764351))

(declare-fun m!5734870 () Bool)

(assert (=> d!1523242 m!5734870))

(declare-fun m!5734872 () Bool)

(assert (=> d!1523242 m!5734872))

(declare-fun m!5734874 () Bool)

(assert (=> b!4764351 m!5734874))

(assert (=> b!4764316 d!1523242))

(declare-fun d!1523244 () Bool)

(declare-fun e!2973513 () Bool)

(assert (=> d!1523244 e!2973513))

(declare-fun c!812728 () Bool)

(declare-fun contains!16743 (MutLongMap!4893 (_ BitVec 64)) Bool)

(assert (=> d!1523244 (= c!812728 (contains!16743 (v!47515 (underlying!9994 thiss!42052)) lt!1927226))))

(declare-fun lt!1927238 () List!53551)

(declare-fun apply!12578 (LongMapFixedSize!9786 (_ BitVec 64)) List!53551)

(assert (=> d!1523244 (= lt!1927238 (apply!12578 (v!47514 (underlying!9993 (v!47515 (underlying!9994 thiss!42052)))) lt!1927226))))

(assert (=> d!1523244 (valid!3891 (v!47515 (underlying!9994 thiss!42052)))))

(assert (=> d!1523244 (= (apply!12577 (v!47515 (underlying!9994 thiss!42052)) lt!1927226) lt!1927238)))

(declare-fun b!4764356 () Bool)

(declare-fun get!17988 (Option!12627) List!53551)

(assert (=> b!4764356 (= e!2973513 (= lt!1927238 (get!17988 (getValueByKey!2152 (toList!6248 (map!11927 (v!47515 (underlying!9994 thiss!42052)))) lt!1927226))))))

(declare-fun b!4764357 () Bool)

(declare-fun dynLambda!21934 (Int (_ BitVec 64)) List!53551)

(assert (=> b!4764357 (= e!2973513 (= lt!1927238 (dynLambda!21934 (defaultEntry!5311 (v!47514 (underlying!9993 (v!47515 (underlying!9994 thiss!42052))))) lt!1927226)))))

(assert (=> b!4764357 ((_ is LongMap!4893) (v!47515 (underlying!9994 thiss!42052)))))

(assert (= (and d!1523244 c!812728) b!4764356))

(assert (= (and d!1523244 (not c!812728)) b!4764357))

(declare-fun b_lambda!184267 () Bool)

(assert (=> (not b_lambda!184267) (not b!4764357)))

(declare-fun t!360956 () Bool)

(declare-fun tb!257455 () Bool)

(assert (=> (and b!4764317 (= (defaultEntry!5311 (v!47514 (underlying!9993 (v!47515 (underlying!9994 thiss!42052))))) (defaultEntry!5311 (v!47514 (underlying!9993 (v!47515 (underlying!9994 thiss!42052)))))) t!360956) tb!257455))

(assert (=> b!4764357 t!360956))

(declare-fun result!319054 () Bool)

(declare-fun b_and!341207 () Bool)

(assert (= b_and!341203 (and (=> t!360956 result!319054) b_and!341207)))

(declare-fun m!5734876 () Bool)

(assert (=> d!1523244 m!5734876))

(declare-fun m!5734878 () Bool)

(assert (=> d!1523244 m!5734878))

(assert (=> d!1523244 m!5734850))

(assert (=> b!4764356 m!5734842))

(declare-fun m!5734880 () Bool)

(assert (=> b!4764356 m!5734880))

(assert (=> b!4764356 m!5734880))

(declare-fun m!5734882 () Bool)

(assert (=> b!4764356 m!5734882))

(declare-fun m!5734884 () Bool)

(assert (=> b!4764357 m!5734884))

(assert (=> b!4764316 d!1523244))

(declare-fun d!1523246 () Bool)

(declare-fun map!11928 (LongMapFixedSize!9786) ListLongMap!4639)

(assert (=> d!1523246 (= (map!11927 (v!47515 (underlying!9994 thiss!42052))) (map!11928 (v!47514 (underlying!9993 (v!47515 (underlying!9994 thiss!42052))))))))

(declare-fun bs!1148716 () Bool)

(assert (= bs!1148716 d!1523246))

(declare-fun m!5734886 () Bool)

(assert (=> bs!1148716 m!5734886))

(assert (=> b!4764316 d!1523246))

(declare-fun d!1523248 () Bool)

(declare-fun hash!4538 (Hashable!6554 K!14874) (_ BitVec 64))

(assert (=> d!1523248 (= (hash!4537 (hashF!12379 thiss!42052) key!1776) (hash!4538 (hashF!12379 thiss!42052) key!1776))))

(declare-fun bs!1148717 () Bool)

(assert (= bs!1148717 d!1523248))

(declare-fun m!5734888 () Bool)

(assert (=> bs!1148717 m!5734888))

(assert (=> b!4764316 d!1523248))

(declare-fun d!1523250 () Bool)

(declare-fun valid!3893 (LongMapFixedSize!9786) Bool)

(assert (=> d!1523250 (= (valid!3891 (v!47515 (underlying!9994 thiss!42052))) (valid!3893 (v!47514 (underlying!9993 (v!47515 (underlying!9994 thiss!42052))))))))

(declare-fun bs!1148718 () Bool)

(assert (= bs!1148718 d!1523250))

(declare-fun m!5734890 () Bool)

(assert (=> bs!1148718 m!5734890))

(assert (=> b!4764318 d!1523250))

(declare-fun bs!1148719 () Bool)

(declare-fun b!4764384 () Bool)

(assert (= bs!1148719 (and b!4764384 b!4764344)))

(declare-fun lambda!224063 () Int)

(assert (=> bs!1148719 (= lambda!224063 lambda!224060)))

(declare-fun bm!334028 () Bool)

(declare-datatypes ((Option!12628 0))(
  ( (None!12627) (Some!12627 (v!47518 tuple2!55414)) )
))
(declare-fun call!334035 () Option!12628)

(declare-fun call!334037 () List!53551)

(declare-fun getPair!628 (List!53551 K!14874) Option!12628)

(assert (=> bm!334028 (= call!334035 (getPair!628 call!334037 key!1776))))

(declare-fun b!4764380 () Bool)

(declare-fun e!2973532 () Unit!138087)

(declare-fun Unit!138089 () Unit!138087)

(assert (=> b!4764380 (= e!2973532 Unit!138089)))

(declare-fun b!4764381 () Bool)

(declare-fun e!2973529 () Bool)

(declare-fun call!334036 () Bool)

(assert (=> b!4764381 (= e!2973529 call!334036)))

(declare-fun b!4764382 () Bool)

(assert (=> b!4764382 false))

(declare-fun lt!1927294 () Unit!138087)

(declare-fun lt!1927282 () Unit!138087)

(assert (=> b!4764382 (= lt!1927294 lt!1927282)))

(declare-fun lt!1927281 () ListLongMap!4639)

(declare-datatypes ((ListMap!5751 0))(
  ( (ListMap!5752 (toList!6249 List!53551)) )
))
(declare-fun contains!16744 (ListMap!5751 K!14874) Bool)

(declare-fun extractMap!2128 (List!53552) ListMap!5751)

(assert (=> b!4764382 (contains!16744 (extractMap!2128 (toList!6248 lt!1927281)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!192 (ListLongMap!4639 K!14874 Hashable!6554) Unit!138087)

(assert (=> b!4764382 (= lt!1927282 (lemmaInLongMapThenInGenericMap!192 lt!1927281 key!1776 (hashF!12379 thiss!42052)))))

(declare-fun call!334034 () ListLongMap!4639)

(assert (=> b!4764382 (= lt!1927281 call!334034)))

(declare-fun e!2973528 () Unit!138087)

(declare-fun Unit!138090 () Unit!138087)

(assert (=> b!4764382 (= e!2973528 Unit!138090)))

(declare-fun lt!1927287 () ListLongMap!4639)

(declare-fun c!812737 () Bool)

(declare-fun bm!334029 () Bool)

(declare-fun call!334038 () (_ BitVec 64))

(declare-fun apply!12579 (ListLongMap!4639 (_ BitVec 64)) List!53551)

(assert (=> bm!334029 (= call!334037 (apply!12579 (ite c!812737 lt!1927287 call!334034) call!334038))))

(declare-fun bm!334030 () Bool)

(assert (=> bm!334030 (= call!334038 (hash!4537 (hashF!12379 thiss!42052) key!1776))))

(declare-fun bm!334031 () Bool)

(declare-fun isDefined!9801 (Option!12628) Bool)

(assert (=> bm!334031 (= call!334036 (isDefined!9801 call!334035))))

(declare-fun bm!334032 () Bool)

(declare-fun call!334033 () Bool)

(declare-fun contains!16745 (ListLongMap!4639 (_ BitVec 64)) Bool)

(assert (=> bm!334032 (= call!334033 (contains!16745 (ite c!812737 lt!1927287 call!334034) call!334038))))

(declare-fun e!2973530 () Unit!138087)

(declare-fun lt!1927284 () (_ BitVec 64))

(declare-fun forallContained!3843 (List!53552 Int tuple2!55416) Unit!138087)

(assert (=> b!4764384 (= e!2973530 (forallContained!3843 (toList!6248 (map!11927 (v!47515 (underlying!9994 thiss!42052)))) lambda!224063 (tuple2!55417 lt!1927284 (apply!12577 (v!47515 (underlying!9994 thiss!42052)) lt!1927284))))))

(declare-fun c!812740 () Bool)

(assert (=> b!4764384 (= c!812740 (not (contains!16741 (toList!6248 (map!11927 (v!47515 (underlying!9994 thiss!42052)))) (tuple2!55417 lt!1927284 (apply!12577 (v!47515 (underlying!9994 thiss!42052)) lt!1927284)))))))

(declare-fun lt!1927285 () Unit!138087)

(assert (=> b!4764384 (= lt!1927285 e!2973532)))

(declare-fun b!4764385 () Bool)

(declare-fun e!2973531 () Bool)

(assert (=> b!4764385 (= e!2973531 (isDefined!9801 (getPair!628 (apply!12577 (v!47515 (underlying!9994 thiss!42052)) lt!1927284) key!1776)))))

(declare-fun b!4764386 () Bool)

(declare-fun e!2973534 () Unit!138087)

(assert (=> b!4764386 (= e!2973534 e!2973528)))

(declare-fun res!2020741 () Bool)

(assert (=> b!4764386 (= res!2020741 call!334033)))

(declare-fun e!2973533 () Bool)

(assert (=> b!4764386 (=> (not res!2020741) (not e!2973533))))

(declare-fun c!812738 () Bool)

(assert (=> b!4764386 (= c!812738 e!2973533)))

(declare-fun b!4764387 () Bool)

(assert (=> b!4764387 (= e!2973533 call!334036)))

(declare-fun b!4764383 () Bool)

(declare-fun Unit!138091 () Unit!138087)

(assert (=> b!4764383 (= e!2973530 Unit!138091)))

(declare-fun d!1523252 () Bool)

(declare-fun lt!1927292 () Bool)

(declare-fun map!11929 (MutableMap!4777) ListMap!5751)

(assert (=> d!1523252 (= lt!1927292 (contains!16744 (map!11929 thiss!42052) key!1776))))

(assert (=> d!1523252 (= lt!1927292 e!2973531)))

(declare-fun res!2020739 () Bool)

(assert (=> d!1523252 (=> (not res!2020739) (not e!2973531))))

(assert (=> d!1523252 (= res!2020739 (contains!16743 (v!47515 (underlying!9994 thiss!42052)) lt!1927284))))

(declare-fun lt!1927290 () Unit!138087)

(assert (=> d!1523252 (= lt!1927290 e!2973534)))

(assert (=> d!1523252 (= c!812737 (contains!16744 (extractMap!2128 (toList!6248 (map!11927 (v!47515 (underlying!9994 thiss!42052))))) key!1776))))

(declare-fun lt!1927289 () Unit!138087)

(assert (=> d!1523252 (= lt!1927289 e!2973530)))

(declare-fun c!812739 () Bool)

(assert (=> d!1523252 (= c!812739 (contains!16743 (v!47515 (underlying!9994 thiss!42052)) lt!1927284))))

(assert (=> d!1523252 (= lt!1927284 (hash!4537 (hashF!12379 thiss!42052) key!1776))))

(assert (=> d!1523252 (valid!3892 thiss!42052)))

(assert (=> d!1523252 (= (contains!16742 thiss!42052 key!1776) lt!1927292)))

(declare-fun bm!334033 () Bool)

(assert (=> bm!334033 (= call!334034 (map!11927 (v!47515 (underlying!9994 thiss!42052))))))

(declare-fun b!4764388 () Bool)

(declare-fun Unit!138092 () Unit!138087)

(assert (=> b!4764388 (= e!2973528 Unit!138092)))

(declare-fun b!4764389 () Bool)

(declare-fun lt!1927297 () Unit!138087)

(assert (=> b!4764389 (= e!2973534 lt!1927297)))

(assert (=> b!4764389 (= lt!1927287 call!334034)))

(declare-fun lemmaInGenericMapThenInLongMap!192 (ListLongMap!4639 K!14874 Hashable!6554) Unit!138087)

(assert (=> b!4764389 (= lt!1927297 (lemmaInGenericMapThenInLongMap!192 lt!1927287 key!1776 (hashF!12379 thiss!42052)))))

(declare-fun res!2020740 () Bool)

(assert (=> b!4764389 (= res!2020740 call!334033)))

(assert (=> b!4764389 (=> (not res!2020740) (not e!2973529))))

(assert (=> b!4764389 e!2973529))

(declare-fun b!4764390 () Bool)

(assert (=> b!4764390 false))

(declare-fun lt!1927298 () Unit!138087)

(declare-fun lt!1927280 () Unit!138087)

(assert (=> b!4764390 (= lt!1927298 lt!1927280)))

(declare-fun lt!1927279 () List!53552)

(declare-fun lt!1927288 () List!53551)

(assert (=> b!4764390 (contains!16741 lt!1927279 (tuple2!55417 lt!1927284 lt!1927288))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!911 (List!53552 (_ BitVec 64) List!53551) Unit!138087)

(assert (=> b!4764390 (= lt!1927280 (lemmaGetValueByKeyImpliesContainsTuple!911 lt!1927279 lt!1927284 lt!1927288))))

(assert (=> b!4764390 (= lt!1927288 (apply!12577 (v!47515 (underlying!9994 thiss!42052)) lt!1927284))))

(assert (=> b!4764390 (= lt!1927279 (toList!6248 (map!11927 (v!47515 (underlying!9994 thiss!42052)))))))

(declare-fun lt!1927286 () Unit!138087)

(declare-fun lt!1927283 () Unit!138087)

(assert (=> b!4764390 (= lt!1927286 lt!1927283)))

(declare-fun lt!1927291 () List!53552)

(assert (=> b!4764390 (isDefined!9800 (getValueByKey!2152 lt!1927291 lt!1927284))))

(assert (=> b!4764390 (= lt!1927283 (lemmaContainsKeyImpliesGetValueByKeyDefined!1966 lt!1927291 lt!1927284))))

(assert (=> b!4764390 (= lt!1927291 (toList!6248 (map!11927 (v!47515 (underlying!9994 thiss!42052)))))))

(declare-fun lt!1927295 () Unit!138087)

(declare-fun lt!1927296 () Unit!138087)

(assert (=> b!4764390 (= lt!1927295 lt!1927296)))

(declare-fun lt!1927293 () List!53552)

(assert (=> b!4764390 (containsKey!3649 lt!1927293 lt!1927284)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!193 (List!53552 (_ BitVec 64)) Unit!138087)

(assert (=> b!4764390 (= lt!1927296 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!193 lt!1927293 lt!1927284))))

(assert (=> b!4764390 (= lt!1927293 (toList!6248 (map!11927 (v!47515 (underlying!9994 thiss!42052)))))))

(declare-fun Unit!138093 () Unit!138087)

(assert (=> b!4764390 (= e!2973532 Unit!138093)))

(assert (= (and d!1523252 c!812739) b!4764384))

(assert (= (and d!1523252 (not c!812739)) b!4764383))

(assert (= (and b!4764384 c!812740) b!4764390))

(assert (= (and b!4764384 (not c!812740)) b!4764380))

(assert (= (and d!1523252 c!812737) b!4764389))

(assert (= (and d!1523252 (not c!812737)) b!4764386))

(assert (= (and b!4764389 res!2020740) b!4764381))

(assert (= (and b!4764386 res!2020741) b!4764387))

(assert (= (and b!4764386 c!812738) b!4764382))

(assert (= (and b!4764386 (not c!812738)) b!4764388))

(assert (= (or b!4764389 b!4764381 b!4764386 b!4764387) bm!334030))

(assert (= (or b!4764389 b!4764386 b!4764387 b!4764382) bm!334033))

(assert (= (or b!4764381 b!4764387) bm!334029))

(assert (= (or b!4764389 b!4764386) bm!334032))

(assert (= (or b!4764381 b!4764387) bm!334028))

(assert (= (or b!4764381 b!4764387) bm!334031))

(assert (= (and d!1523252 res!2020739) b!4764385))

(declare-fun m!5734892 () Bool)

(assert (=> bm!334032 m!5734892))

(assert (=> bm!334030 m!5734844))

(declare-fun m!5734894 () Bool)

(assert (=> bm!334031 m!5734894))

(declare-fun m!5734896 () Bool)

(assert (=> b!4764382 m!5734896))

(assert (=> b!4764382 m!5734896))

(declare-fun m!5734898 () Bool)

(assert (=> b!4764382 m!5734898))

(declare-fun m!5734900 () Bool)

(assert (=> b!4764382 m!5734900))

(declare-fun m!5734902 () Bool)

(assert (=> d!1523252 m!5734902))

(assert (=> d!1523252 m!5734846))

(assert (=> d!1523252 m!5734902))

(declare-fun m!5734904 () Bool)

(assert (=> d!1523252 m!5734904))

(declare-fun m!5734906 () Bool)

(assert (=> d!1523252 m!5734906))

(assert (=> d!1523252 m!5734906))

(declare-fun m!5734908 () Bool)

(assert (=> d!1523252 m!5734908))

(declare-fun m!5734910 () Bool)

(assert (=> d!1523252 m!5734910))

(assert (=> d!1523252 m!5734844))

(assert (=> d!1523252 m!5734842))

(declare-fun m!5734912 () Bool)

(assert (=> b!4764390 m!5734912))

(declare-fun m!5734914 () Bool)

(assert (=> b!4764390 m!5734914))

(declare-fun m!5734916 () Bool)

(assert (=> b!4764390 m!5734916))

(assert (=> b!4764390 m!5734914))

(declare-fun m!5734918 () Bool)

(assert (=> b!4764390 m!5734918))

(assert (=> b!4764390 m!5734842))

(declare-fun m!5734920 () Bool)

(assert (=> b!4764390 m!5734920))

(declare-fun m!5734922 () Bool)

(assert (=> b!4764390 m!5734922))

(declare-fun m!5734924 () Bool)

(assert (=> b!4764390 m!5734924))

(declare-fun m!5734926 () Bool)

(assert (=> b!4764390 m!5734926))

(declare-fun m!5734928 () Bool)

(assert (=> bm!334028 m!5734928))

(assert (=> b!4764384 m!5734842))

(assert (=> b!4764384 m!5734920))

(declare-fun m!5734930 () Bool)

(assert (=> b!4764384 m!5734930))

(declare-fun m!5734932 () Bool)

(assert (=> b!4764384 m!5734932))

(assert (=> b!4764385 m!5734920))

(assert (=> b!4764385 m!5734920))

(declare-fun m!5734934 () Bool)

(assert (=> b!4764385 m!5734934))

(assert (=> b!4764385 m!5734934))

(declare-fun m!5734936 () Bool)

(assert (=> b!4764385 m!5734936))

(declare-fun m!5734938 () Bool)

(assert (=> bm!334029 m!5734938))

(declare-fun m!5734940 () Bool)

(assert (=> b!4764389 m!5734940))

(assert (=> bm!334033 m!5734842))

(assert (=> b!4764322 d!1523252))

(declare-fun tp!1354668 () Bool)

(declare-fun b!4764395 () Bool)

(declare-fun tp_is_empty!32363 () Bool)

(declare-fun e!2973537 () Bool)

(assert (=> b!4764395 (= e!2973537 (and tp_is_empty!32361 tp_is_empty!32363 tp!1354668))))

(assert (=> b!4764319 (= tp!1354665 e!2973537)))

(assert (= (and b!4764319 ((_ is Cons!53427) mapDefault!21731)) b!4764395))

(declare-fun mapIsEmpty!21734 () Bool)

(declare-fun mapRes!21734 () Bool)

(assert (=> mapIsEmpty!21734 mapRes!21734))

(declare-fun b!4764403 () Bool)

(declare-fun e!2973543 () Bool)

(declare-fun tp!1354675 () Bool)

(assert (=> b!4764403 (= e!2973543 (and tp_is_empty!32361 tp_is_empty!32363 tp!1354675))))

(declare-fun condMapEmpty!21734 () Bool)

(declare-fun mapDefault!21734 () List!53551)

(assert (=> mapNonEmpty!21731 (= condMapEmpty!21734 (= mapRest!21731 ((as const (Array (_ BitVec 32) List!53551)) mapDefault!21734)))))

(assert (=> mapNonEmpty!21731 (= tp!1354663 (and e!2973543 mapRes!21734))))

(declare-fun tp!1354677 () Bool)

(declare-fun b!4764402 () Bool)

(declare-fun e!2973542 () Bool)

(assert (=> b!4764402 (= e!2973542 (and tp_is_empty!32361 tp_is_empty!32363 tp!1354677))))

(declare-fun mapNonEmpty!21734 () Bool)

(declare-fun tp!1354676 () Bool)

(assert (=> mapNonEmpty!21734 (= mapRes!21734 (and tp!1354676 e!2973542))))

(declare-fun mapValue!21734 () List!53551)

(declare-fun mapKey!21734 () (_ BitVec 32))

(declare-fun mapRest!21734 () (Array (_ BitVec 32) List!53551))

(assert (=> mapNonEmpty!21734 (= mapRest!21731 (store mapRest!21734 mapKey!21734 mapValue!21734))))

(assert (= (and mapNonEmpty!21731 condMapEmpty!21734) mapIsEmpty!21734))

(assert (= (and mapNonEmpty!21731 (not condMapEmpty!21734)) mapNonEmpty!21734))

(assert (= (and mapNonEmpty!21734 ((_ is Cons!53427) mapValue!21734)) b!4764402))

(assert (= (and mapNonEmpty!21731 ((_ is Cons!53427) mapDefault!21734)) b!4764403))

(declare-fun m!5734942 () Bool)

(assert (=> mapNonEmpty!21734 m!5734942))

(declare-fun b!4764404 () Bool)

(declare-fun tp!1354678 () Bool)

(declare-fun e!2973544 () Bool)

(assert (=> b!4764404 (= e!2973544 (and tp_is_empty!32361 tp_is_empty!32363 tp!1354678))))

(assert (=> mapNonEmpty!21731 (= tp!1354662 e!2973544)))

(assert (= (and mapNonEmpty!21731 ((_ is Cons!53427) mapValue!21731)) b!4764404))

(declare-fun tp!1354679 () Bool)

(declare-fun e!2973545 () Bool)

(declare-fun b!4764405 () Bool)

(assert (=> b!4764405 (= e!2973545 (and tp_is_empty!32361 tp_is_empty!32363 tp!1354679))))

(assert (=> b!4764317 (= tp!1354660 e!2973545)))

(assert (= (and b!4764317 ((_ is Cons!53427) (zeroValue!5181 (v!47514 (underlying!9993 (v!47515 (underlying!9994 thiss!42052))))))) b!4764405))

(declare-fun e!2973546 () Bool)

(declare-fun b!4764406 () Bool)

(declare-fun tp!1354680 () Bool)

(assert (=> b!4764406 (= e!2973546 (and tp_is_empty!32361 tp_is_empty!32363 tp!1354680))))

(assert (=> b!4764317 (= tp!1354664 e!2973546)))

(assert (= (and b!4764317 ((_ is Cons!53427) (minValue!5181 (v!47514 (underlying!9993 (v!47515 (underlying!9994 thiss!42052))))))) b!4764406))

(declare-fun b_lambda!184269 () Bool)

(assert (= b_lambda!184267 (or (and b!4764317 b_free!129515) b_lambda!184269)))

(check-sat (not d!1523244) (not d!1523248) b_and!341205 (not b!4764351) (not d!1523234) (not b!4764406) (not bm!334028) b_and!341207 (not b_next!130307) (not b!4764390) (not b!4764395) (not b!4764344) (not bm!334030) (not b_lambda!184269) (not d!1523242) (not b!4764339) (not b!4764385) (not mapNonEmpty!21734) (not tb!257455) tp_is_empty!32361 (not b!4764356) (not b!4764405) (not bm!334031) (not bm!334032) (not d!1523230) (not d!1523252) (not b!4764404) tp_is_empty!32363 (not b!4764382) (not d!1523246) (not b!4764402) (not d!1523236) (not bm!334033) (not b!4764335) (not bm!334029) (not b!4764345) (not b!4764384) (not b!4764389) (not b_next!130305) (not b!4764403) (not d!1523250))
(check-sat b_and!341205 b_and!341207 (not b_next!130307) (not b_next!130305))
