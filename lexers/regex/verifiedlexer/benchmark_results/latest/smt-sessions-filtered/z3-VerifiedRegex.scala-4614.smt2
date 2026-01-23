; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242070 () Bool)

(assert start!242070)

(declare-fun b!2480940 () Bool)

(declare-fun b_free!72249 () Bool)

(declare-fun b_next!72953 () Bool)

(assert (=> b!2480940 (= b_free!72249 (not b_next!72953))))

(declare-fun tp!794102 () Bool)

(declare-fun b_and!188495 () Bool)

(assert (=> b!2480940 (= tp!794102 b_and!188495)))

(declare-fun b!2480955 () Bool)

(declare-fun b_free!72251 () Bool)

(declare-fun b_next!72955 () Bool)

(assert (=> b!2480955 (= b_free!72251 (not b_next!72955))))

(declare-fun tp!794106 () Bool)

(declare-fun b_and!188497 () Bool)

(assert (=> b!2480955 (= tp!794106 b_and!188497)))

(declare-fun b!2480936 () Bool)

(declare-fun e!1574726 () Bool)

(declare-fun tp!794103 () Bool)

(declare-fun mapRes!15502 () Bool)

(assert (=> b!2480936 (= e!1574726 (and tp!794103 mapRes!15502))))

(declare-fun condMapEmpty!15502 () Bool)

(declare-datatypes ((Hashable!3258 0))(
  ( (HashableExt!3257 (__x!18950 Int)) )
))
(declare-datatypes ((K!5455 0))(
  ( (K!5456 (val!8839 Int)) )
))
(declare-datatypes ((V!5657 0))(
  ( (V!5658 (val!8840 Int)) )
))
(declare-datatypes ((tuple2!28764 0))(
  ( (tuple2!28765 (_1!16923 K!5455) (_2!16923 V!5657)) )
))
(declare-datatypes ((List!29180 0))(
  ( (Nil!29080) (Cons!29080 (h!34486 tuple2!28764) (t!210837 List!29180)) )
))
(declare-datatypes ((array!11849 0))(
  ( (array!11850 (arr!5286 (Array (_ BitVec 32) List!29180)) (size!22705 (_ BitVec 32))) )
))
(declare-datatypes ((array!11851 0))(
  ( (array!11852 (arr!5287 (Array (_ BitVec 32) (_ BitVec 64))) (size!22706 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6696 0))(
  ( (LongMapFixedSize!6697 (defaultEntry!3722 Int) (mask!8511 (_ BitVec 32)) (extraKeys!3596 (_ BitVec 32)) (zeroValue!3606 List!29180) (minValue!3606 List!29180) (_size!6743 (_ BitVec 32)) (_keys!3645 array!11851) (_values!3628 array!11849) (_vacant!3409 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13209 0))(
  ( (Cell!13210 (v!31408 LongMapFixedSize!6696)) )
))
(declare-datatypes ((MutLongMap!3348 0))(
  ( (LongMap!3348 (underlying!6903 Cell!13209)) (MutLongMapExt!3347 (__x!18951 Int)) )
))
(declare-datatypes ((Cell!13211 0))(
  ( (Cell!13212 (v!31409 MutLongMap!3348)) )
))
(declare-datatypes ((MutableMap!3258 0))(
  ( (MutableMapExt!3257 (__x!18952 Int)) (HashMap!3258 (underlying!6904 Cell!13211) (hashF!5216 Hashable!3258) (_size!6744 (_ BitVec 32)) (defaultValue!3420 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3258)

(declare-fun mapDefault!15502 () List!29180)

(assert (=> b!2480936 (= condMapEmpty!15502 (= (arr!5286 (_values!3628 (v!31408 (underlying!6903 (v!31409 (underlying!6904 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29180)) mapDefault!15502)))))

(declare-fun b!2480937 () Bool)

(declare-fun e!1574728 () Bool)

(declare-fun e!1574725 () Bool)

(assert (=> b!2480937 (= e!1574728 e!1574725)))

(declare-fun res!1050308 () Bool)

(assert (=> b!2480937 (=> (not res!1050308) (not e!1574725))))

(declare-datatypes ((Unit!42556 0))(
  ( (Unit!42557) )
))
(declare-datatypes ((tuple2!28766 0))(
  ( (tuple2!28767 (_1!16924 Unit!42556) (_2!16924 MutableMap!3258)) )
))
(declare-fun lt!887980 () tuple2!28766)

(declare-fun valid!2554 (MutableMap!3258) Bool)

(assert (=> b!2480937 (= res!1050308 (valid!2554 (_2!16924 lt!887980)))))

(declare-fun res!1050312 () Bool)

(declare-fun e!1574724 () Bool)

(assert (=> start!242070 (=> (not res!1050312) (not e!1574724))))

(get-info :version)

(assert (=> start!242070 (= res!1050312 ((_ is HashMap!3258) thiss!42540))))

(assert (=> start!242070 e!1574724))

(declare-fun e!1574722 () Bool)

(assert (=> start!242070 e!1574722))

(declare-fun tp_is_empty!12219 () Bool)

(assert (=> start!242070 tp_is_empty!12219))

(declare-fun b!2480938 () Bool)

(declare-fun res!1050304 () Bool)

(declare-fun e!1574732 () Bool)

(assert (=> b!2480938 (=> res!1050304 e!1574732)))

(assert (=> b!2480938 (= res!1050304 (not (valid!2554 (_2!16924 lt!887980))))))

(declare-fun b!2480939 () Bool)

(declare-fun res!1050306 () Bool)

(assert (=> b!2480939 (=> res!1050306 e!1574732)))

(declare-datatypes ((tuple2!28768 0))(
  ( (tuple2!28769 (_1!16925 Bool) (_2!16925 MutLongMap!3348)) )
))
(declare-fun lt!887978 () tuple2!28768)

(assert (=> b!2480939 (= res!1050306 (not (_1!16925 lt!887978)))))

(declare-fun mapNonEmpty!15502 () Bool)

(declare-fun tp!794104 () Bool)

(declare-fun tp!794107 () Bool)

(assert (=> mapNonEmpty!15502 (= mapRes!15502 (and tp!794104 tp!794107))))

(declare-fun mapKey!15502 () (_ BitVec 32))

(declare-fun mapRest!15502 () (Array (_ BitVec 32) List!29180))

(declare-fun mapValue!15502 () List!29180)

(assert (=> mapNonEmpty!15502 (= (arr!5286 (_values!3628 (v!31408 (underlying!6903 (v!31409 (underlying!6904 thiss!42540)))))) (store mapRest!15502 mapKey!15502 mapValue!15502))))

(declare-fun mapIsEmpty!15502 () Bool)

(assert (=> mapIsEmpty!15502 mapRes!15502))

(declare-fun e!1574733 () Bool)

(declare-fun tp!794108 () Bool)

(declare-fun tp!794105 () Bool)

(declare-fun array_inv!3795 (array!11851) Bool)

(declare-fun array_inv!3796 (array!11849) Bool)

(assert (=> b!2480940 (= e!1574733 (and tp!794102 tp!794108 tp!794105 (array_inv!3795 (_keys!3645 (v!31408 (underlying!6903 (v!31409 (underlying!6904 thiss!42540)))))) (array_inv!3796 (_values!3628 (v!31408 (underlying!6903 (v!31409 (underlying!6904 thiss!42540)))))) e!1574726))))

(declare-fun b!2480941 () Bool)

(declare-fun e!1574723 () Bool)

(assert (=> b!2480941 (= e!1574723 e!1574728)))

(declare-fun res!1050307 () Bool)

(assert (=> b!2480941 (=> res!1050307 e!1574728)))

(assert (=> b!2480941 (= res!1050307 (_1!16925 lt!887978))))

(declare-fun b!2480942 () Bool)

(declare-fun e!1574720 () Bool)

(declare-datatypes ((tuple2!28770 0))(
  ( (tuple2!28771 (_1!16926 (_ BitVec 64)) (_2!16926 List!29180)) )
))
(declare-datatypes ((List!29181 0))(
  ( (Nil!29081) (Cons!29081 (h!34487 tuple2!28770) (t!210838 List!29181)) )
))
(declare-datatypes ((ListLongMap!507 0))(
  ( (ListLongMap!508 (toList!1562 List!29181)) )
))
(declare-fun lt!887970 () ListLongMap!507)

(declare-fun allKeysSameHashInMap!160 (ListLongMap!507 Hashable!3258) Bool)

(assert (=> b!2480942 (= e!1574720 (allKeysSameHashInMap!160 lt!887970 (hashF!5216 (_2!16924 lt!887980))))))

(declare-fun b!2480943 () Bool)

(assert (=> b!2480943 (= e!1574724 (not e!1574732))))

(declare-fun res!1050309 () Bool)

(assert (=> b!2480943 (=> res!1050309 e!1574732)))

(assert (=> b!2480943 (= res!1050309 (not ((_ is HashMap!3258) (_2!16924 lt!887980))))))

(declare-fun lt!887973 () Unit!42556)

(declare-fun e!1574721 () Unit!42556)

(assert (=> b!2480943 (= lt!887973 e!1574721)))

(declare-fun c!394467 () Bool)

(assert (=> b!2480943 (= c!394467 (_1!16925 lt!887978))))

(assert (=> b!2480943 e!1574723))

(declare-fun res!1050311 () Bool)

(assert (=> b!2480943 (=> (not res!1050311) (not e!1574723))))

(declare-fun lt!887987 () List!29180)

(declare-fun noDuplicateKeys!80 (List!29180) Bool)

(assert (=> b!2480943 (= res!1050311 (noDuplicateKeys!80 lt!887987))))

(declare-fun lt!887974 () Unit!42556)

(declare-fun lt!887975 () List!29180)

(declare-fun key!2246 () K!5455)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!66 (List!29180 K!5455) Unit!42556)

(assert (=> b!2480943 (= lt!887974 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!66 lt!887975 key!2246))))

(declare-fun lt!887972 () Cell!13211)

(declare-fun Unit!42558 () Unit!42556)

(declare-fun Unit!42559 () Unit!42556)

(assert (=> b!2480943 (= lt!887980 (ite (_1!16925 lt!887978) (tuple2!28767 Unit!42558 (HashMap!3258 lt!887972 (hashF!5216 thiss!42540) (bvsub (_size!6744 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3420 thiss!42540))) (tuple2!28767 Unit!42559 (HashMap!3258 lt!887972 (hashF!5216 thiss!42540) (_size!6744 thiss!42540) (defaultValue!3420 thiss!42540)))))))

(assert (=> b!2480943 (= lt!887972 (Cell!13212 (_2!16925 lt!887978)))))

(declare-fun lt!887976 () (_ BitVec 64))

(declare-fun update!187 (MutLongMap!3348 (_ BitVec 64) List!29180) tuple2!28768)

(assert (=> b!2480943 (= lt!887978 (update!187 (v!31409 (underlying!6904 thiss!42540)) lt!887976 lt!887987))))

(declare-fun removePairForKey!70 (List!29180 K!5455) List!29180)

(assert (=> b!2480943 (= lt!887987 (removePairForKey!70 lt!887975 key!2246))))

(declare-datatypes ((ListMap!1047 0))(
  ( (ListMap!1048 (toList!1563 List!29180)) )
))
(declare-fun lt!887982 () ListMap!1047)

(declare-fun map!6171 (MutableMap!3258) ListMap!1047)

(assert (=> b!2480943 (= lt!887982 (map!6171 thiss!42540))))

(declare-fun lt!887981 () ListLongMap!507)

(declare-fun lambda!93926 () Int)

(declare-fun lt!887979 () Unit!42556)

(declare-fun forallContained!851 (List!29181 Int tuple2!28770) Unit!42556)

(assert (=> b!2480943 (= lt!887979 (forallContained!851 (toList!1562 lt!887981) lambda!93926 (tuple2!28771 lt!887976 lt!887975)))))

(declare-fun map!6172 (MutLongMap!3348) ListLongMap!507)

(assert (=> b!2480943 (= lt!887981 (map!6172 (v!31409 (underlying!6904 thiss!42540))))))

(declare-fun apply!6908 (MutLongMap!3348 (_ BitVec 64)) List!29180)

(assert (=> b!2480943 (= lt!887975 (apply!6908 (v!31409 (underlying!6904 thiss!42540)) lt!887976))))

(declare-fun hash!683 (Hashable!3258 K!5455) (_ BitVec 64))

(assert (=> b!2480943 (= lt!887976 (hash!683 (hashF!5216 thiss!42540) key!2246))))

(declare-fun b!2480944 () Bool)

(declare-fun res!1050314 () Bool)

(assert (=> b!2480944 (=> (not res!1050314) (not e!1574724))))

(assert (=> b!2480944 (= res!1050314 (valid!2554 thiss!42540))))

(declare-fun b!2480945 () Bool)

(assert (=> b!2480945 (= e!1574725 (= (map!6171 (_2!16924 lt!887980)) lt!887982))))

(declare-fun b!2480946 () Bool)

(declare-fun res!1050305 () Bool)

(assert (=> b!2480946 (= res!1050305 (valid!2554 (_2!16924 lt!887980)))))

(declare-fun e!1574718 () Bool)

(assert (=> b!2480946 (=> (not res!1050305) (not e!1574718))))

(declare-fun b!2480947 () Bool)

(declare-fun res!1050302 () Bool)

(assert (=> b!2480947 (=> (not res!1050302) (not e!1574724))))

(declare-fun contains!5077 (MutableMap!3258 K!5455) Bool)

(assert (=> b!2480947 (= res!1050302 (contains!5077 thiss!42540 key!2246))))

(declare-fun b!2480948 () Bool)

(declare-fun res!1050301 () Bool)

(declare-fun lt!887983 () ListLongMap!507)

(assert (=> b!2480948 (= res!1050301 (allKeysSameHashInMap!160 lt!887983 (hashF!5216 (_2!16924 lt!887980))))))

(assert (=> b!2480948 (=> (not res!1050301) (not e!1574718))))

(declare-fun b!2480949 () Bool)

(declare-fun e!1574731 () Bool)

(assert (=> b!2480949 (= e!1574731 e!1574733)))

(declare-fun b!2480950 () Bool)

(declare-fun e!1574729 () Bool)

(assert (=> b!2480950 (= e!1574729 e!1574731)))

(declare-fun e!1574730 () Bool)

(declare-fun b!2480951 () Bool)

(declare-fun eq!67 (ListMap!1047 ListMap!1047) Bool)

(declare-fun -!123 (ListMap!1047 K!5455) ListMap!1047)

(assert (=> b!2480951 (= e!1574730 (eq!67 (map!6171 (_2!16924 lt!887980)) (-!123 lt!887982 key!2246)))))

(declare-fun b!2480952 () Bool)

(declare-fun Unit!42560 () Unit!42556)

(assert (=> b!2480952 (= e!1574721 Unit!42560)))

(declare-fun lt!887984 () Unit!42556)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!59 (List!29181 (_ BitVec 64) List!29180 Hashable!3258) Unit!42556)

(assert (=> b!2480952 (= lt!887984 (lemmaInLongMapAllKeySameHashThenForTuple!59 (toList!1562 lt!887981) lt!887976 lt!887975 (hashF!5216 (_2!16924 lt!887980))))))

(declare-fun allKeysSameHash!63 (List!29180 (_ BitVec 64) Hashable!3258) Bool)

(assert (=> b!2480952 (allKeysSameHash!63 lt!887975 lt!887976 (hashF!5216 (_2!16924 lt!887980)))))

(declare-fun lt!887971 () Unit!42556)

(declare-fun lemmaRemovePairForKeyPreservesHash!57 (List!29180 K!5455 (_ BitVec 64) Hashable!3258) Unit!42556)

(assert (=> b!2480952 (= lt!887971 (lemmaRemovePairForKeyPreservesHash!57 lt!887975 key!2246 lt!887976 (hashF!5216 (_2!16924 lt!887980))))))

(assert (=> b!2480952 (allKeysSameHash!63 lt!887987 lt!887976 (hashF!5216 (_2!16924 lt!887980)))))

(declare-fun lt!887988 () Unit!42556)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!53 (ListLongMap!507 (_ BitVec 64) List!29180 Hashable!3258) Unit!42556)

(assert (=> b!2480952 (= lt!887988 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!53 lt!887981 lt!887976 lt!887987 (hashF!5216 (_2!16924 lt!887980))))))

(declare-fun +!82 (ListLongMap!507 tuple2!28770) ListLongMap!507)

(assert (=> b!2480952 (= lt!887970 (+!82 lt!887981 (tuple2!28771 lt!887976 lt!887987)))))

(declare-fun res!1050313 () Bool)

(declare-fun forall!5965 (List!29181 Int) Bool)

(assert (=> b!2480952 (= res!1050313 (forall!5965 (toList!1562 lt!887970) lambda!93926))))

(assert (=> b!2480952 (=> (not res!1050313) (not e!1574720))))

(assert (=> b!2480952 e!1574720))

(assert (=> b!2480952 (= lt!887983 (map!6172 (v!31409 (underlying!6904 (_2!16924 lt!887980)))))))

(declare-fun res!1050310 () Bool)

(assert (=> b!2480952 (= res!1050310 (forall!5965 (toList!1562 lt!887983) lambda!93926))))

(assert (=> b!2480952 (=> (not res!1050310) (not e!1574718))))

(assert (=> b!2480952 e!1574718))

(declare-fun lt!887985 () Unit!42556)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!29 (ListLongMap!507 (_ BitVec 64) List!29180 K!5455 Hashable!3258) Unit!42556)

(assert (=> b!2480952 (= lt!887985 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!29 lt!887981 lt!887976 lt!887987 key!2246 (hashF!5216 (_2!16924 lt!887980))))))

(declare-fun res!1050303 () Bool)

(declare-fun extractMap!168 (List!29181) ListMap!1047)

(assert (=> b!2480952 (= res!1050303 (eq!67 (extractMap!168 (toList!1562 lt!887970)) (-!123 (extractMap!168 (toList!1562 lt!887981)) key!2246)))))

(assert (=> b!2480952 (=> (not res!1050303) (not e!1574730))))

(assert (=> b!2480952 e!1574730))

(declare-fun b!2480953 () Bool)

(declare-fun Unit!42561 () Unit!42556)

(assert (=> b!2480953 (= e!1574721 Unit!42561)))

(declare-fun b!2480954 () Bool)

(assert (=> b!2480954 (= e!1574732 true)))

(declare-fun lt!887986 () ListMap!1047)

(assert (=> b!2480954 (= lt!887986 (map!6171 (_2!16924 lt!887980)))))

(declare-fun e!1574727 () Bool)

(assert (=> b!2480955 (= e!1574722 (and e!1574727 tp!794106))))

(declare-fun b!2480956 () Bool)

(declare-fun lt!887977 () MutLongMap!3348)

(assert (=> b!2480956 (= e!1574727 (and e!1574729 ((_ is LongMap!3348) lt!887977)))))

(assert (=> b!2480956 (= lt!887977 (v!31409 (underlying!6904 thiss!42540)))))

(declare-fun b!2480957 () Bool)

(declare-fun contains!5078 (ListMap!1047 K!5455) Bool)

(assert (=> b!2480957 (= e!1574718 (contains!5078 lt!887982 key!2246))))

(assert (= (and start!242070 res!1050312) b!2480944))

(assert (= (and b!2480944 res!1050314) b!2480947))

(assert (= (and b!2480947 res!1050302) b!2480943))

(assert (= (and b!2480943 res!1050311) b!2480941))

(assert (= (and b!2480941 (not res!1050307)) b!2480937))

(assert (= (and b!2480937 res!1050308) b!2480945))

(assert (= (and b!2480943 c!394467) b!2480952))

(assert (= (and b!2480943 (not c!394467)) b!2480953))

(assert (= (and b!2480952 res!1050313) b!2480942))

(assert (= (and b!2480952 res!1050310) b!2480948))

(assert (= (and b!2480948 res!1050301) b!2480946))

(assert (= (and b!2480946 res!1050305) b!2480957))

(assert (= (and b!2480952 res!1050303) b!2480951))

(assert (= (and b!2480943 (not res!1050309)) b!2480938))

(assert (= (and b!2480938 (not res!1050304)) b!2480939))

(assert (= (and b!2480939 (not res!1050306)) b!2480954))

(assert (= (and b!2480936 condMapEmpty!15502) mapIsEmpty!15502))

(assert (= (and b!2480936 (not condMapEmpty!15502)) mapNonEmpty!15502))

(assert (= b!2480940 b!2480936))

(assert (= b!2480949 b!2480940))

(assert (= b!2480950 b!2480949))

(assert (= (and b!2480956 ((_ is LongMap!3348) (v!31409 (underlying!6904 thiss!42540)))) b!2480950))

(assert (= b!2480955 b!2480956))

(assert (= (and start!242070 ((_ is HashMap!3258) thiss!42540)) b!2480955))

(declare-fun m!2849003 () Bool)

(assert (=> b!2480938 m!2849003))

(assert (=> b!2480937 m!2849003))

(declare-fun m!2849005 () Bool)

(assert (=> b!2480948 m!2849005))

(declare-fun m!2849007 () Bool)

(assert (=> b!2480957 m!2849007))

(declare-fun m!2849009 () Bool)

(assert (=> b!2480952 m!2849009))

(declare-fun m!2849011 () Bool)

(assert (=> b!2480952 m!2849011))

(declare-fun m!2849013 () Bool)

(assert (=> b!2480952 m!2849013))

(declare-fun m!2849015 () Bool)

(assert (=> b!2480952 m!2849015))

(declare-fun m!2849017 () Bool)

(assert (=> b!2480952 m!2849017))

(declare-fun m!2849019 () Bool)

(assert (=> b!2480952 m!2849019))

(declare-fun m!2849021 () Bool)

(assert (=> b!2480952 m!2849021))

(declare-fun m!2849023 () Bool)

(assert (=> b!2480952 m!2849023))

(declare-fun m!2849025 () Bool)

(assert (=> b!2480952 m!2849025))

(declare-fun m!2849027 () Bool)

(assert (=> b!2480952 m!2849027))

(declare-fun m!2849029 () Bool)

(assert (=> b!2480952 m!2849029))

(declare-fun m!2849031 () Bool)

(assert (=> b!2480952 m!2849031))

(assert (=> b!2480952 m!2849011))

(declare-fun m!2849033 () Bool)

(assert (=> b!2480952 m!2849033))

(declare-fun m!2849035 () Bool)

(assert (=> b!2480952 m!2849035))

(assert (=> b!2480952 m!2849013))

(assert (=> b!2480952 m!2849033))

(declare-fun m!2849037 () Bool)

(assert (=> b!2480954 m!2849037))

(declare-fun m!2849039 () Bool)

(assert (=> b!2480947 m!2849039))

(declare-fun m!2849041 () Bool)

(assert (=> b!2480943 m!2849041))

(declare-fun m!2849043 () Bool)

(assert (=> b!2480943 m!2849043))

(declare-fun m!2849045 () Bool)

(assert (=> b!2480943 m!2849045))

(declare-fun m!2849047 () Bool)

(assert (=> b!2480943 m!2849047))

(declare-fun m!2849049 () Bool)

(assert (=> b!2480943 m!2849049))

(declare-fun m!2849051 () Bool)

(assert (=> b!2480943 m!2849051))

(declare-fun m!2849053 () Bool)

(assert (=> b!2480943 m!2849053))

(declare-fun m!2849055 () Bool)

(assert (=> b!2480943 m!2849055))

(declare-fun m!2849057 () Bool)

(assert (=> b!2480943 m!2849057))

(assert (=> b!2480946 m!2849003))

(declare-fun m!2849059 () Bool)

(assert (=> mapNonEmpty!15502 m!2849059))

(declare-fun m!2849061 () Bool)

(assert (=> b!2480940 m!2849061))

(declare-fun m!2849063 () Bool)

(assert (=> b!2480940 m!2849063))

(assert (=> b!2480951 m!2849037))

(declare-fun m!2849065 () Bool)

(assert (=> b!2480951 m!2849065))

(assert (=> b!2480951 m!2849037))

(assert (=> b!2480951 m!2849065))

(declare-fun m!2849067 () Bool)

(assert (=> b!2480951 m!2849067))

(declare-fun m!2849069 () Bool)

(assert (=> b!2480944 m!2849069))

(assert (=> b!2480945 m!2849037))

(declare-fun m!2849071 () Bool)

(assert (=> b!2480942 m!2849071))

(check-sat (not b!2480944) (not b!2480952) (not b!2480943) (not b!2480946) (not b!2480951) (not b!2480945) (not b!2480940) (not b!2480936) (not b!2480948) b_and!188497 tp_is_empty!12219 (not b!2480947) (not b!2480954) (not b!2480937) (not b!2480942) (not b_next!72955) (not mapNonEmpty!15502) (not b!2480957) b_and!188495 (not b!2480938) (not b_next!72953))
(check-sat b_and!188497 b_and!188495 (not b_next!72953) (not b_next!72955))
