; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242894 () Bool)

(assert start!242894)

(declare-fun b!2486228 () Bool)

(declare-fun b_free!72529 () Bool)

(declare-fun b_next!73233 () Bool)

(assert (=> b!2486228 (= b_free!72529 (not b_next!73233))))

(declare-fun tp!795867 () Bool)

(declare-fun b_and!188813 () Bool)

(assert (=> b!2486228 (= tp!795867 b_and!188813)))

(declare-fun b!2486231 () Bool)

(declare-fun b_free!72531 () Bool)

(declare-fun b_next!73235 () Bool)

(assert (=> b!2486231 (= b_free!72531 (not b_next!73235))))

(declare-fun tp!795864 () Bool)

(declare-fun b_and!188815 () Bool)

(assert (=> b!2486231 (= tp!795864 b_and!188815)))

(declare-fun res!1052385 () Bool)

(declare-fun e!1578640 () Bool)

(assert (=> start!242894 (=> (not res!1052385) (not e!1578640))))

(declare-datatypes ((Hashable!3328 0))(
  ( (HashableExt!3327 (__x!19160 Int)) )
))
(declare-datatypes ((K!5630 0))(
  ( (K!5631 (val!8979 Int)) )
))
(declare-datatypes ((V!5832 0))(
  ( (V!5833 (val!8980 Int)) )
))
(declare-datatypes ((tuple2!29204 0))(
  ( (tuple2!29205 (_1!17144 K!5630) (_2!17144 V!5832)) )
))
(declare-datatypes ((List!29313 0))(
  ( (Nil!29213) (Cons!29213 (h!34630 tuple2!29204) (t!211002 List!29313)) )
))
(declare-datatypes ((array!12165 0))(
  ( (array!12166 (arr!5426 (Array (_ BitVec 32) List!29313)) (size!22845 (_ BitVec 32))) )
))
(declare-datatypes ((array!12167 0))(
  ( (array!12168 (arr!5427 (Array (_ BitVec 32) (_ BitVec 64))) (size!22846 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6836 0))(
  ( (LongMapFixedSize!6837 (defaultEntry!3792 Int) (mask!8616 (_ BitVec 32)) (extraKeys!3666 (_ BitVec 32)) (zeroValue!3676 List!29313) (minValue!3676 List!29313) (_size!6883 (_ BitVec 32)) (_keys!3715 array!12167) (_values!3698 array!12165) (_vacant!3479 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13489 0))(
  ( (Cell!13490 (v!31656 LongMapFixedSize!6836)) )
))
(declare-datatypes ((MutLongMap!3418 0))(
  ( (LongMap!3418 (underlying!7043 Cell!13489)) (MutLongMapExt!3417 (__x!19161 Int)) )
))
(declare-datatypes ((Cell!13491 0))(
  ( (Cell!13492 (v!31657 MutLongMap!3418)) )
))
(declare-datatypes ((MutableMap!3328 0))(
  ( (MutableMapExt!3327 (__x!19162 Int)) (HashMap!3328 (underlying!7044 Cell!13491) (hashF!5339 Hashable!3328) (_size!6884 (_ BitVec 32)) (defaultValue!3490 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3328)

(get-info :version)

(assert (=> start!242894 (= res!1052385 ((_ is HashMap!3328) thiss!42540))))

(assert (=> start!242894 e!1578640))

(declare-fun e!1578637 () Bool)

(assert (=> start!242894 e!1578637))

(declare-fun tp_is_empty!12395 () Bool)

(assert (=> start!242894 tp_is_empty!12395))

(declare-fun b!2486219 () Bool)

(declare-fun res!1052386 () Bool)

(declare-fun e!1578645 () Bool)

(assert (=> b!2486219 (=> (not res!1052386) (not e!1578645))))

(declare-datatypes ((Unit!42873 0))(
  ( (Unit!42874) )
))
(declare-datatypes ((tuple2!29206 0))(
  ( (tuple2!29207 (_1!17145 Unit!42873) (_2!17145 MutableMap!3328)) )
))
(declare-fun lt!892313 () tuple2!29206)

(declare-fun valid!2629 (MutableMap!3328) Bool)

(assert (=> b!2486219 (= res!1052386 (valid!2629 (_2!17145 lt!892313)))))

(declare-fun e!1578644 () Bool)

(declare-fun key!2246 () K!5630)

(declare-fun lt!892304 () (_ BitVec 64))

(declare-fun b!2486220 () Bool)

(declare-fun hash!774 (Hashable!3328 K!5630) (_ BitVec 64))

(assert (=> b!2486220 (= e!1578644 (= (hash!774 (hashF!5339 (_2!17145 lt!892313)) key!2246) lt!892304))))

(declare-fun b!2486221 () Bool)

(declare-fun res!1052387 () Bool)

(assert (=> b!2486221 (=> (not res!1052387) (not e!1578640))))

(assert (=> b!2486221 (= res!1052387 (valid!2629 thiss!42540))))

(declare-fun b!2486222 () Bool)

(declare-fun e!1578643 () Bool)

(assert (=> b!2486222 (= e!1578643 e!1578644)))

(declare-fun res!1052383 () Bool)

(assert (=> b!2486222 (=> res!1052383 e!1578644)))

(declare-datatypes ((tuple2!29208 0))(
  ( (tuple2!29209 (_1!17146 (_ BitVec 64)) (_2!17146 List!29313)) )
))
(declare-datatypes ((List!29314 0))(
  ( (Nil!29214) (Cons!29214 (h!34631 tuple2!29208) (t!211003 List!29314)) )
))
(declare-datatypes ((ListLongMap!619 0))(
  ( (ListLongMap!620 (toList!1668 List!29314)) )
))
(declare-fun lt!892308 () ListLongMap!619)

(declare-fun lambda!94581 () Int)

(declare-fun forall!6012 (List!29314 Int) Bool)

(assert (=> b!2486222 (= res!1052383 (not (forall!6012 (toList!1668 lt!892308) lambda!94581)))))

(assert (=> b!2486222 e!1578645))

(declare-fun res!1052379 () Bool)

(assert (=> b!2486222 (=> (not res!1052379) (not e!1578645))))

(declare-fun lt!892310 () ListLongMap!619)

(assert (=> b!2486222 (= res!1052379 (forall!6012 (toList!1668 lt!892310) lambda!94581))))

(declare-fun map!6326 (MutLongMap!3418) ListLongMap!619)

(assert (=> b!2486222 (= lt!892310 (map!6326 (v!31657 (underlying!7044 (_2!17145 lt!892313)))))))

(declare-fun e!1578636 () Bool)

(assert (=> b!2486222 e!1578636))

(declare-fun res!1052378 () Bool)

(assert (=> b!2486222 (=> (not res!1052378) (not e!1578636))))

(declare-fun lt!892309 () ListLongMap!619)

(assert (=> b!2486222 (= res!1052378 (forall!6012 (toList!1668 lt!892309) lambda!94581))))

(declare-fun lt!892306 () List!29313)

(declare-fun +!110 (ListLongMap!619 tuple2!29208) ListLongMap!619)

(assert (=> b!2486222 (= lt!892309 (+!110 lt!892308 (tuple2!29209 lt!892304 lt!892306)))))

(declare-fun lt!892316 () Unit!42873)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!73 (ListLongMap!619 (_ BitVec 64) List!29313 Hashable!3328) Unit!42873)

(assert (=> b!2486222 (= lt!892316 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!73 lt!892308 lt!892304 lt!892306 (hashF!5339 (_2!17145 lt!892313))))))

(declare-fun allKeysSameHash!93 (List!29313 (_ BitVec 64) Hashable!3328) Bool)

(assert (=> b!2486222 (allKeysSameHash!93 lt!892306 lt!892304 (hashF!5339 (_2!17145 lt!892313)))))

(declare-fun lt!892314 () List!29313)

(declare-fun lt!892307 () Unit!42873)

(declare-fun lemmaRemovePairForKeyPreservesHash!82 (List!29313 K!5630 (_ BitVec 64) Hashable!3328) Unit!42873)

(assert (=> b!2486222 (= lt!892307 (lemmaRemovePairForKeyPreservesHash!82 lt!892314 key!2246 lt!892304 (hashF!5339 (_2!17145 lt!892313))))))

(assert (=> b!2486222 (allKeysSameHash!93 lt!892314 lt!892304 (hashF!5339 (_2!17145 lt!892313)))))

(declare-fun lt!892317 () Unit!42873)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!86 (List!29314 (_ BitVec 64) List!29313 Hashable!3328) Unit!42873)

(assert (=> b!2486222 (= lt!892317 (lemmaInLongMapAllKeySameHashThenForTuple!86 (toList!1668 lt!892308) lt!892304 lt!892314 (hashF!5339 (_2!17145 lt!892313))))))

(declare-fun b!2486223 () Bool)

(declare-fun e!1578634 () Bool)

(declare-fun e!1578635 () Bool)

(declare-fun lt!892305 () MutLongMap!3418)

(assert (=> b!2486223 (= e!1578634 (and e!1578635 ((_ is LongMap!3418) lt!892305)))))

(assert (=> b!2486223 (= lt!892305 (v!31657 (underlying!7044 thiss!42540)))))

(declare-fun b!2486224 () Bool)

(declare-fun e!1578638 () Bool)

(assert (=> b!2486224 (= e!1578635 e!1578638)))

(declare-fun b!2486225 () Bool)

(declare-fun res!1052380 () Bool)

(assert (=> b!2486225 (=> res!1052380 e!1578644)))

(declare-fun allKeysSameHashInMap!194 (ListLongMap!619 Hashable!3328) Bool)

(assert (=> b!2486225 (= res!1052380 (not (allKeysSameHashInMap!194 lt!892308 (hashF!5339 (_2!17145 lt!892313)))))))

(declare-fun b!2486226 () Bool)

(declare-fun res!1052381 () Bool)

(assert (=> b!2486226 (=> res!1052381 e!1578644)))

(declare-datatypes ((ListMap!1147 0))(
  ( (ListMap!1148 (toList!1669 List!29313)) )
))
(declare-fun contains!5221 (ListMap!1147 K!5630) Bool)

(declare-fun extractMap!191 (List!29314) ListMap!1147)

(assert (=> b!2486226 (= res!1052381 (not (contains!5221 (extractMap!191 (toList!1668 lt!892308)) key!2246)))))

(declare-fun b!2486227 () Bool)

(declare-fun res!1052382 () Bool)

(assert (=> b!2486227 (=> (not res!1052382) (not e!1578645))))

(assert (=> b!2486227 (= res!1052382 (allKeysSameHashInMap!194 lt!892310 (hashF!5339 (_2!17145 lt!892313))))))

(declare-fun e!1578639 () Bool)

(declare-fun e!1578641 () Bool)

(declare-fun tp!795865 () Bool)

(declare-fun tp!795862 () Bool)

(declare-fun array_inv!3901 (array!12167) Bool)

(declare-fun array_inv!3902 (array!12165) Bool)

(assert (=> b!2486228 (= e!1578639 (and tp!795867 tp!795865 tp!795862 (array_inv!3901 (_keys!3715 (v!31656 (underlying!7043 (v!31657 (underlying!7044 thiss!42540)))))) (array_inv!3902 (_values!3698 (v!31656 (underlying!7043 (v!31657 (underlying!7044 thiss!42540)))))) e!1578641))))

(declare-fun b!2486229 () Bool)

(assert (=> b!2486229 (= e!1578636 (allKeysSameHashInMap!194 lt!892309 (hashF!5339 (_2!17145 lt!892313))))))

(declare-fun b!2486230 () Bool)

(assert (=> b!2486230 (= e!1578640 (not e!1578643))))

(declare-fun res!1052377 () Bool)

(assert (=> b!2486230 (=> res!1052377 e!1578643)))

(declare-datatypes ((tuple2!29210 0))(
  ( (tuple2!29211 (_1!17147 Bool) (_2!17147 MutLongMap!3418)) )
))
(declare-fun lt!892311 () tuple2!29210)

(assert (=> b!2486230 (= res!1052377 (not (_1!17147 lt!892311)))))

(declare-fun noDuplicateKeys!119 (List!29313) Bool)

(assert (=> b!2486230 (noDuplicateKeys!119 lt!892306)))

(declare-fun lt!892318 () Unit!42873)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!99 (List!29313 K!5630) Unit!42873)

(assert (=> b!2486230 (= lt!892318 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!99 lt!892314 key!2246))))

(declare-fun lt!892312 () Cell!13491)

(declare-fun Unit!42875 () Unit!42873)

(declare-fun Unit!42876 () Unit!42873)

(assert (=> b!2486230 (= lt!892313 (ite (_1!17147 lt!892311) (tuple2!29207 Unit!42875 (HashMap!3328 lt!892312 (hashF!5339 thiss!42540) (bvsub (_size!6884 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3490 thiss!42540))) (tuple2!29207 Unit!42876 (HashMap!3328 lt!892312 (hashF!5339 thiss!42540) (_size!6884 thiss!42540) (defaultValue!3490 thiss!42540)))))))

(assert (=> b!2486230 (= lt!892312 (Cell!13492 (_2!17147 lt!892311)))))

(declare-fun update!240 (MutLongMap!3418 (_ BitVec 64) List!29313) tuple2!29210)

(assert (=> b!2486230 (= lt!892311 (update!240 (v!31657 (underlying!7044 thiss!42540)) lt!892304 lt!892306))))

(declare-fun removePairForKey!111 (List!29313 K!5630) List!29313)

(assert (=> b!2486230 (= lt!892306 (removePairForKey!111 lt!892314 key!2246))))

(declare-fun lt!892315 () ListMap!1147)

(declare-fun map!6327 (MutableMap!3328) ListMap!1147)

(assert (=> b!2486230 (= lt!892315 (map!6327 thiss!42540))))

(declare-fun lt!892303 () Unit!42873)

(declare-fun forallContained!900 (List!29314 Int tuple2!29208) Unit!42873)

(assert (=> b!2486230 (= lt!892303 (forallContained!900 (toList!1668 lt!892308) lambda!94581 (tuple2!29209 lt!892304 lt!892314)))))

(assert (=> b!2486230 (= lt!892308 (map!6326 (v!31657 (underlying!7044 thiss!42540))))))

(declare-fun apply!6990 (MutLongMap!3418 (_ BitVec 64)) List!29313)

(assert (=> b!2486230 (= lt!892314 (apply!6990 (v!31657 (underlying!7044 thiss!42540)) lt!892304))))

(assert (=> b!2486230 (= lt!892304 (hash!774 (hashF!5339 thiss!42540) key!2246))))

(declare-fun mapIsEmpty!15768 () Bool)

(declare-fun mapRes!15768 () Bool)

(assert (=> mapIsEmpty!15768 mapRes!15768))

(declare-fun mapNonEmpty!15768 () Bool)

(declare-fun tp!795861 () Bool)

(declare-fun tp!795866 () Bool)

(assert (=> mapNonEmpty!15768 (= mapRes!15768 (and tp!795861 tp!795866))))

(declare-fun mapRest!15768 () (Array (_ BitVec 32) List!29313))

(declare-fun mapValue!15768 () List!29313)

(declare-fun mapKey!15768 () (_ BitVec 32))

(assert (=> mapNonEmpty!15768 (= (arr!5426 (_values!3698 (v!31656 (underlying!7043 (v!31657 (underlying!7044 thiss!42540)))))) (store mapRest!15768 mapKey!15768 mapValue!15768))))

(assert (=> b!2486231 (= e!1578637 (and e!1578634 tp!795864))))

(declare-fun b!2486232 () Bool)

(declare-fun tp!795863 () Bool)

(assert (=> b!2486232 (= e!1578641 (and tp!795863 mapRes!15768))))

(declare-fun condMapEmpty!15768 () Bool)

(declare-fun mapDefault!15768 () List!29313)

(assert (=> b!2486232 (= condMapEmpty!15768 (= (arr!5426 (_values!3698 (v!31656 (underlying!7043 (v!31657 (underlying!7044 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29313)) mapDefault!15768)))))

(declare-fun b!2486233 () Bool)

(declare-fun res!1052384 () Bool)

(assert (=> b!2486233 (=> (not res!1052384) (not e!1578640))))

(declare-fun contains!5222 (MutableMap!3328 K!5630) Bool)

(assert (=> b!2486233 (= res!1052384 (contains!5222 thiss!42540 key!2246))))

(declare-fun b!2486234 () Bool)

(assert (=> b!2486234 (= e!1578645 (contains!5221 lt!892315 key!2246))))

(declare-fun b!2486235 () Bool)

(assert (=> b!2486235 (= e!1578638 e!1578639)))

(assert (= (and start!242894 res!1052385) b!2486221))

(assert (= (and b!2486221 res!1052387) b!2486233))

(assert (= (and b!2486233 res!1052384) b!2486230))

(assert (= (and b!2486230 (not res!1052377)) b!2486222))

(assert (= (and b!2486222 res!1052378) b!2486229))

(assert (= (and b!2486222 res!1052379) b!2486227))

(assert (= (and b!2486227 res!1052382) b!2486219))

(assert (= (and b!2486219 res!1052386) b!2486234))

(assert (= (and b!2486222 (not res!1052383)) b!2486225))

(assert (= (and b!2486225 (not res!1052380)) b!2486226))

(assert (= (and b!2486226 (not res!1052381)) b!2486220))

(assert (= (and b!2486232 condMapEmpty!15768) mapIsEmpty!15768))

(assert (= (and b!2486232 (not condMapEmpty!15768)) mapNonEmpty!15768))

(assert (= b!2486228 b!2486232))

(assert (= b!2486235 b!2486228))

(assert (= b!2486224 b!2486235))

(assert (= (and b!2486223 ((_ is LongMap!3418) (v!31657 (underlying!7044 thiss!42540)))) b!2486224))

(assert (= b!2486231 b!2486223))

(assert (= (and start!242894 ((_ is HashMap!3328) thiss!42540)) b!2486231))

(declare-fun m!2854633 () Bool)

(assert (=> b!2486228 m!2854633))

(declare-fun m!2854635 () Bool)

(assert (=> b!2486228 m!2854635))

(declare-fun m!2854637 () Bool)

(assert (=> b!2486225 m!2854637))

(declare-fun m!2854639 () Bool)

(assert (=> b!2486226 m!2854639))

(assert (=> b!2486226 m!2854639))

(declare-fun m!2854641 () Bool)

(assert (=> b!2486226 m!2854641))

(declare-fun m!2854643 () Bool)

(assert (=> b!2486230 m!2854643))

(declare-fun m!2854645 () Bool)

(assert (=> b!2486230 m!2854645))

(declare-fun m!2854647 () Bool)

(assert (=> b!2486230 m!2854647))

(declare-fun m!2854649 () Bool)

(assert (=> b!2486230 m!2854649))

(declare-fun m!2854651 () Bool)

(assert (=> b!2486230 m!2854651))

(declare-fun m!2854653 () Bool)

(assert (=> b!2486230 m!2854653))

(declare-fun m!2854655 () Bool)

(assert (=> b!2486230 m!2854655))

(declare-fun m!2854657 () Bool)

(assert (=> b!2486230 m!2854657))

(declare-fun m!2854659 () Bool)

(assert (=> b!2486230 m!2854659))

(declare-fun m!2854661 () Bool)

(assert (=> b!2486222 m!2854661))

(declare-fun m!2854663 () Bool)

(assert (=> b!2486222 m!2854663))

(declare-fun m!2854665 () Bool)

(assert (=> b!2486222 m!2854665))

(declare-fun m!2854667 () Bool)

(assert (=> b!2486222 m!2854667))

(declare-fun m!2854669 () Bool)

(assert (=> b!2486222 m!2854669))

(declare-fun m!2854671 () Bool)

(assert (=> b!2486222 m!2854671))

(declare-fun m!2854673 () Bool)

(assert (=> b!2486222 m!2854673))

(declare-fun m!2854675 () Bool)

(assert (=> b!2486222 m!2854675))

(declare-fun m!2854677 () Bool)

(assert (=> b!2486222 m!2854677))

(declare-fun m!2854679 () Bool)

(assert (=> b!2486222 m!2854679))

(declare-fun m!2854681 () Bool)

(assert (=> b!2486220 m!2854681))

(declare-fun m!2854683 () Bool)

(assert (=> b!2486221 m!2854683))

(declare-fun m!2854685 () Bool)

(assert (=> mapNonEmpty!15768 m!2854685))

(declare-fun m!2854687 () Bool)

(assert (=> b!2486233 m!2854687))

(declare-fun m!2854689 () Bool)

(assert (=> b!2486227 m!2854689))

(declare-fun m!2854691 () Bool)

(assert (=> b!2486229 m!2854691))

(declare-fun m!2854693 () Bool)

(assert (=> b!2486219 m!2854693))

(declare-fun m!2854695 () Bool)

(assert (=> b!2486234 m!2854695))

(check-sat (not b!2486230) b_and!188813 (not b_next!73233) (not b!2486228) (not b!2486229) (not mapNonEmpty!15768) (not b_next!73235) (not b!2486221) (not b!2486219) (not b!2486220) b_and!188815 (not b!2486225) tp_is_empty!12395 (not b!2486226) (not b!2486233) (not b!2486222) (not b!2486234) (not b!2486232) (not b!2486227))
(check-sat b_and!188815 b_and!188813 (not b_next!73233) (not b_next!73235))
