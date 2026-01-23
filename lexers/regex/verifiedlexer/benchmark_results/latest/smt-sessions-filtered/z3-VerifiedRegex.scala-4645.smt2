; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242750 () Bool)

(assert start!242750)

(declare-fun b!2485352 () Bool)

(declare-fun b_free!72497 () Bool)

(declare-fun b_next!73201 () Bool)

(assert (=> b!2485352 (= b_free!72497 (not b_next!73201))))

(declare-fun tp!795649 () Bool)

(declare-fun b_and!188775 () Bool)

(assert (=> b!2485352 (= tp!795649 b_and!188775)))

(declare-fun b!2485357 () Bool)

(declare-fun b_free!72499 () Bool)

(declare-fun b_next!73203 () Bool)

(assert (=> b!2485357 (= b_free!72499 (not b_next!73203))))

(declare-fun tp!795652 () Bool)

(declare-fun b_and!188777 () Bool)

(assert (=> b!2485357 (= tp!795652 b_and!188777)))

(declare-fun b!2485346 () Bool)

(declare-fun e!1578042 () Bool)

(declare-fun e!1578041 () Bool)

(assert (=> b!2485346 (= e!1578042 (not e!1578041))))

(declare-fun res!1051961 () Bool)

(assert (=> b!2485346 (=> res!1051961 e!1578041)))

(declare-datatypes ((K!5610 0))(
  ( (K!5611 (val!8963 Int)) )
))
(declare-datatypes ((V!5812 0))(
  ( (V!5813 (val!8964 Int)) )
))
(declare-datatypes ((tuple2!29138 0))(
  ( (tuple2!29139 (_1!17111 K!5610) (_2!17111 V!5812)) )
))
(declare-datatypes ((List!29295 0))(
  ( (Nil!29195) (Cons!29195 (h!34609 tuple2!29138) (t!210978 List!29295)) )
))
(declare-datatypes ((array!12127 0))(
  ( (array!12128 (arr!5410 (Array (_ BitVec 32) List!29295)) (size!22829 (_ BitVec 32))) )
))
(declare-datatypes ((array!12129 0))(
  ( (array!12130 (arr!5411 (Array (_ BitVec 32) (_ BitVec 64))) (size!22830 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6820 0))(
  ( (LongMapFixedSize!6821 (defaultEntry!3784 Int) (mask!8604 (_ BitVec 32)) (extraKeys!3658 (_ BitVec 32)) (zeroValue!3668 List!29295) (minValue!3668 List!29295) (_size!6867 (_ BitVec 32)) (_keys!3707 array!12129) (_values!3690 array!12127) (_vacant!3471 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13457 0))(
  ( (Cell!13458 (v!31619 LongMapFixedSize!6820)) )
))
(declare-datatypes ((MutLongMap!3410 0))(
  ( (LongMap!3410 (underlying!7027 Cell!13457)) (MutLongMapExt!3409 (__x!19136 Int)) )
))
(declare-datatypes ((tuple2!29140 0))(
  ( (tuple2!29141 (_1!17112 Bool) (_2!17112 MutLongMap!3410)) )
))
(declare-fun lt!891508 () tuple2!29140)

(assert (=> b!2485346 (= res!1051961 (not (_1!17112 lt!891508)))))

(declare-fun lt!891505 () List!29295)

(declare-fun noDuplicateKeys!112 (List!29295) Bool)

(assert (=> b!2485346 (noDuplicateKeys!112 lt!891505)))

(declare-datatypes ((Unit!42820 0))(
  ( (Unit!42821) )
))
(declare-fun lt!891507 () Unit!42820)

(declare-fun lt!891516 () List!29295)

(declare-fun key!2246 () K!5610)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!92 (List!29295 K!5610) Unit!42820)

(assert (=> b!2485346 (= lt!891507 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!92 lt!891516 key!2246))))

(declare-datatypes ((Hashable!3320 0))(
  ( (HashableExt!3319 (__x!19137 Int)) )
))
(declare-datatypes ((Cell!13459 0))(
  ( (Cell!13460 (v!31620 MutLongMap!3410)) )
))
(declare-datatypes ((MutableMap!3320 0))(
  ( (MutableMapExt!3319 (__x!19138 Int)) (HashMap!3320 (underlying!7028 Cell!13459) (hashF!5316 Hashable!3320) (_size!6868 (_ BitVec 32)) (defaultValue!3482 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3320)

(declare-datatypes ((tuple2!29142 0))(
  ( (tuple2!29143 (_1!17113 Unit!42820) (_2!17113 MutableMap!3320)) )
))
(declare-fun lt!891506 () tuple2!29142)

(declare-fun lt!891518 () Cell!13459)

(declare-fun Unit!42822 () Unit!42820)

(declare-fun Unit!42823 () Unit!42820)

(assert (=> b!2485346 (= lt!891506 (ite (_1!17112 lt!891508) (tuple2!29143 Unit!42822 (HashMap!3320 lt!891518 (hashF!5316 thiss!42540) (bvsub (_size!6868 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3482 thiss!42540))) (tuple2!29143 Unit!42823 (HashMap!3320 lt!891518 (hashF!5316 thiss!42540) (_size!6868 thiss!42540) (defaultValue!3482 thiss!42540)))))))

(assert (=> b!2485346 (= lt!891518 (Cell!13460 (_2!17112 lt!891508)))))

(declare-fun lt!891517 () (_ BitVec 64))

(declare-fun update!230 (MutLongMap!3410 (_ BitVec 64) List!29295) tuple2!29140)

(assert (=> b!2485346 (= lt!891508 (update!230 (v!31620 (underlying!7028 thiss!42540)) lt!891517 lt!891505))))

(declare-fun removePairForKey!104 (List!29295 K!5610) List!29295)

(assert (=> b!2485346 (= lt!891505 (removePairForKey!104 lt!891516 key!2246))))

(declare-datatypes ((ListMap!1133 0))(
  ( (ListMap!1134 (toList!1654 List!29295)) )
))
(declare-fun lt!891512 () ListMap!1133)

(declare-fun map!6305 (MutableMap!3320) ListMap!1133)

(assert (=> b!2485346 (= lt!891512 (map!6305 thiss!42540))))

(declare-fun lambda!94435 () Int)

(declare-fun lt!891513 () Unit!42820)

(declare-datatypes ((tuple2!29144 0))(
  ( (tuple2!29145 (_1!17114 (_ BitVec 64)) (_2!17114 List!29295)) )
))
(declare-datatypes ((List!29296 0))(
  ( (Nil!29196) (Cons!29196 (h!34610 tuple2!29144) (t!210979 List!29296)) )
))
(declare-datatypes ((ListLongMap!605 0))(
  ( (ListLongMap!606 (toList!1655 List!29296)) )
))
(declare-fun lt!891515 () ListLongMap!605)

(declare-fun forallContained!893 (List!29296 Int tuple2!29144) Unit!42820)

(assert (=> b!2485346 (= lt!891513 (forallContained!893 (toList!1655 lt!891515) lambda!94435 (tuple2!29145 lt!891517 lt!891516)))))

(declare-fun map!6306 (MutLongMap!3410) ListLongMap!605)

(assert (=> b!2485346 (= lt!891515 (map!6306 (v!31620 (underlying!7028 thiss!42540))))))

(declare-fun apply!6977 (MutLongMap!3410 (_ BitVec 64)) List!29295)

(assert (=> b!2485346 (= lt!891516 (apply!6977 (v!31620 (underlying!7028 thiss!42540)) lt!891517))))

(declare-fun hash!754 (Hashable!3320 K!5610) (_ BitVec 64))

(assert (=> b!2485346 (= lt!891517 (hash!754 (hashF!5316 thiss!42540) key!2246))))

(declare-fun b!2485347 () Bool)

(declare-fun e!1578032 () Bool)

(declare-fun e!1578039 () Bool)

(assert (=> b!2485347 (= e!1578032 e!1578039)))

(declare-fun b!2485348 () Bool)

(declare-fun e!1578036 () Bool)

(declare-fun tp!795648 () Bool)

(declare-fun mapRes!15735 () Bool)

(assert (=> b!2485348 (= e!1578036 (and tp!795648 mapRes!15735))))

(declare-fun condMapEmpty!15735 () Bool)

(declare-fun mapDefault!15735 () List!29295)

(assert (=> b!2485348 (= condMapEmpty!15735 (= (arr!5410 (_values!3690 (v!31619 (underlying!7027 (v!31620 (underlying!7028 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29295)) mapDefault!15735)))))

(declare-fun b!2485349 () Bool)

(declare-fun res!1051960 () Bool)

(assert (=> b!2485349 (=> (not res!1051960) (not e!1578042))))

(declare-fun contains!5195 (MutableMap!3320 K!5610) Bool)

(assert (=> b!2485349 (= res!1051960 (contains!5195 thiss!42540 key!2246))))

(declare-fun b!2485350 () Bool)

(declare-fun e!1578037 () Bool)

(declare-fun lt!891514 () ListLongMap!605)

(declare-fun allKeysSameHashInMap!187 (ListLongMap!605 Hashable!3320) Bool)

(assert (=> b!2485350 (= e!1578037 (allKeysSameHashInMap!187 lt!891514 (hashF!5316 (_2!17113 lt!891506))))))

(declare-fun b!2485351 () Bool)

(declare-fun e!1578033 () Bool)

(declare-fun lt!891510 () MutLongMap!3410)

(get-info :version)

(assert (=> b!2485351 (= e!1578033 (and e!1578032 ((_ is LongMap!3410) lt!891510)))))

(assert (=> b!2485351 (= lt!891510 (v!31620 (underlying!7028 thiss!42540)))))

(declare-fun tp!795654 () Bool)

(declare-fun tp!795651 () Bool)

(declare-fun e!1578040 () Bool)

(declare-fun array_inv!3887 (array!12129) Bool)

(declare-fun array_inv!3888 (array!12127) Bool)

(assert (=> b!2485352 (= e!1578040 (and tp!795649 tp!795654 tp!795651 (array_inv!3887 (_keys!3707 (v!31619 (underlying!7027 (v!31620 (underlying!7028 thiss!42540)))))) (array_inv!3888 (_values!3690 (v!31619 (underlying!7027 (v!31620 (underlying!7028 thiss!42540)))))) e!1578036))))

(declare-fun mapNonEmpty!15735 () Bool)

(declare-fun tp!795653 () Bool)

(declare-fun tp!795650 () Bool)

(assert (=> mapNonEmpty!15735 (= mapRes!15735 (and tp!795653 tp!795650))))

(declare-fun mapKey!15735 () (_ BitVec 32))

(declare-fun mapValue!15735 () List!29295)

(declare-fun mapRest!15735 () (Array (_ BitVec 32) List!29295))

(assert (=> mapNonEmpty!15735 (= (arr!5410 (_values!3690 (v!31619 (underlying!7027 (v!31620 (underlying!7028 thiss!42540)))))) (store mapRest!15735 mapKey!15735 mapValue!15735))))

(declare-fun b!2485353 () Bool)

(assert (=> b!2485353 (= e!1578041 ((_ is HashMap!3320) (_2!17113 lt!891506)))))

(declare-fun e!1578038 () Bool)

(assert (=> b!2485353 e!1578038))

(declare-fun res!1051967 () Bool)

(assert (=> b!2485353 (=> (not res!1051967) (not e!1578038))))

(declare-fun lt!891509 () ListLongMap!605)

(declare-fun forall!6002 (List!29296 Int) Bool)

(assert (=> b!2485353 (= res!1051967 (forall!6002 (toList!1655 lt!891509) lambda!94435))))

(assert (=> b!2485353 (= lt!891509 (map!6306 (v!31620 (underlying!7028 (_2!17113 lt!891506)))))))

(assert (=> b!2485353 e!1578037))

(declare-fun res!1051962 () Bool)

(assert (=> b!2485353 (=> (not res!1051962) (not e!1578037))))

(assert (=> b!2485353 (= res!1051962 (forall!6002 (toList!1655 lt!891514) lambda!94435))))

(declare-fun +!103 (ListLongMap!605 tuple2!29144) ListLongMap!605)

(assert (=> b!2485353 (= lt!891514 (+!103 lt!891515 (tuple2!29145 lt!891517 lt!891505)))))

(declare-fun lt!891511 () Unit!42820)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!66 (ListLongMap!605 (_ BitVec 64) List!29295 Hashable!3320) Unit!42820)

(assert (=> b!2485353 (= lt!891511 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!66 lt!891515 lt!891517 lt!891505 (hashF!5316 (_2!17113 lt!891506))))))

(declare-fun allKeysSameHash!86 (List!29295 (_ BitVec 64) Hashable!3320) Bool)

(assert (=> b!2485353 (allKeysSameHash!86 lt!891505 lt!891517 (hashF!5316 (_2!17113 lt!891506)))))

(declare-fun lt!891504 () Unit!42820)

(declare-fun lemmaRemovePairForKeyPreservesHash!75 (List!29295 K!5610 (_ BitVec 64) Hashable!3320) Unit!42820)

(assert (=> b!2485353 (= lt!891504 (lemmaRemovePairForKeyPreservesHash!75 lt!891516 key!2246 lt!891517 (hashF!5316 (_2!17113 lt!891506))))))

(assert (=> b!2485353 (allKeysSameHash!86 lt!891516 lt!891517 (hashF!5316 (_2!17113 lt!891506)))))

(declare-fun lt!891503 () Unit!42820)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!79 (List!29296 (_ BitVec 64) List!29295 Hashable!3320) Unit!42820)

(assert (=> b!2485353 (= lt!891503 (lemmaInLongMapAllKeySameHashThenForTuple!79 (toList!1655 lt!891515) lt!891517 lt!891516 (hashF!5316 (_2!17113 lt!891506))))))

(declare-fun b!2485354 () Bool)

(declare-fun res!1051965 () Bool)

(assert (=> b!2485354 (=> (not res!1051965) (not e!1578042))))

(declare-fun valid!2619 (MutableMap!3320) Bool)

(assert (=> b!2485354 (= res!1051965 (valid!2619 thiss!42540))))

(declare-fun res!1051964 () Bool)

(assert (=> start!242750 (=> (not res!1051964) (not e!1578042))))

(assert (=> start!242750 (= res!1051964 ((_ is HashMap!3320) thiss!42540))))

(assert (=> start!242750 e!1578042))

(declare-fun e!1578035 () Bool)

(assert (=> start!242750 e!1578035))

(declare-fun tp_is_empty!12373 () Bool)

(assert (=> start!242750 tp_is_empty!12373))

(declare-fun b!2485355 () Bool)

(declare-fun res!1051963 () Bool)

(assert (=> b!2485355 (=> (not res!1051963) (not e!1578038))))

(assert (=> b!2485355 (= res!1051963 (valid!2619 (_2!17113 lt!891506)))))

(declare-fun b!2485356 () Bool)

(declare-fun res!1051966 () Bool)

(assert (=> b!2485356 (=> (not res!1051966) (not e!1578038))))

(assert (=> b!2485356 (= res!1051966 (allKeysSameHashInMap!187 lt!891509 (hashF!5316 (_2!17113 lt!891506))))))

(assert (=> b!2485357 (= e!1578035 (and e!1578033 tp!795652))))

(declare-fun mapIsEmpty!15735 () Bool)

(assert (=> mapIsEmpty!15735 mapRes!15735))

(declare-fun b!2485358 () Bool)

(declare-fun contains!5196 (ListMap!1133 K!5610) Bool)

(assert (=> b!2485358 (= e!1578038 (contains!5196 lt!891512 key!2246))))

(declare-fun b!2485359 () Bool)

(assert (=> b!2485359 (= e!1578039 e!1578040)))

(assert (= (and start!242750 res!1051964) b!2485354))

(assert (= (and b!2485354 res!1051965) b!2485349))

(assert (= (and b!2485349 res!1051960) b!2485346))

(assert (= (and b!2485346 (not res!1051961)) b!2485353))

(assert (= (and b!2485353 res!1051962) b!2485350))

(assert (= (and b!2485353 res!1051967) b!2485356))

(assert (= (and b!2485356 res!1051966) b!2485355))

(assert (= (and b!2485355 res!1051963) b!2485358))

(assert (= (and b!2485348 condMapEmpty!15735) mapIsEmpty!15735))

(assert (= (and b!2485348 (not condMapEmpty!15735)) mapNonEmpty!15735))

(assert (= b!2485352 b!2485348))

(assert (= b!2485359 b!2485352))

(assert (= b!2485347 b!2485359))

(assert (= (and b!2485351 ((_ is LongMap!3410) (v!31620 (underlying!7028 thiss!42540)))) b!2485347))

(assert (= b!2485357 b!2485351))

(assert (= (and start!242750 ((_ is HashMap!3320) thiss!42540)) b!2485357))

(declare-fun m!2853561 () Bool)

(assert (=> b!2485354 m!2853561))

(declare-fun m!2853563 () Bool)

(assert (=> b!2485353 m!2853563))

(declare-fun m!2853565 () Bool)

(assert (=> b!2485353 m!2853565))

(declare-fun m!2853567 () Bool)

(assert (=> b!2485353 m!2853567))

(declare-fun m!2853569 () Bool)

(assert (=> b!2485353 m!2853569))

(declare-fun m!2853571 () Bool)

(assert (=> b!2485353 m!2853571))

(declare-fun m!2853573 () Bool)

(assert (=> b!2485353 m!2853573))

(declare-fun m!2853575 () Bool)

(assert (=> b!2485353 m!2853575))

(declare-fun m!2853577 () Bool)

(assert (=> b!2485353 m!2853577))

(declare-fun m!2853579 () Bool)

(assert (=> b!2485353 m!2853579))

(declare-fun m!2853581 () Bool)

(assert (=> b!2485358 m!2853581))

(declare-fun m!2853583 () Bool)

(assert (=> b!2485349 m!2853583))

(declare-fun m!2853585 () Bool)

(assert (=> b!2485352 m!2853585))

(declare-fun m!2853587 () Bool)

(assert (=> b!2485352 m!2853587))

(declare-fun m!2853589 () Bool)

(assert (=> b!2485350 m!2853589))

(declare-fun m!2853591 () Bool)

(assert (=> mapNonEmpty!15735 m!2853591))

(declare-fun m!2853593 () Bool)

(assert (=> b!2485355 m!2853593))

(declare-fun m!2853595 () Bool)

(assert (=> b!2485356 m!2853595))

(declare-fun m!2853597 () Bool)

(assert (=> b!2485346 m!2853597))

(declare-fun m!2853599 () Bool)

(assert (=> b!2485346 m!2853599))

(declare-fun m!2853601 () Bool)

(assert (=> b!2485346 m!2853601))

(declare-fun m!2853603 () Bool)

(assert (=> b!2485346 m!2853603))

(declare-fun m!2853605 () Bool)

(assert (=> b!2485346 m!2853605))

(declare-fun m!2853607 () Bool)

(assert (=> b!2485346 m!2853607))

(declare-fun m!2853609 () Bool)

(assert (=> b!2485346 m!2853609))

(declare-fun m!2853611 () Bool)

(assert (=> b!2485346 m!2853611))

(declare-fun m!2853613 () Bool)

(assert (=> b!2485346 m!2853613))

(check-sat (not b!2485349) (not b!2485356) (not mapNonEmpty!15735) (not b!2485346) (not b!2485353) (not b!2485354) b_and!188775 (not b!2485350) (not b_next!73203) (not b!2485358) (not b_next!73201) (not b!2485355) (not b!2485348) b_and!188777 tp_is_empty!12373 (not b!2485352))
(check-sat b_and!188777 b_and!188775 (not b_next!73201) (not b_next!73203))
