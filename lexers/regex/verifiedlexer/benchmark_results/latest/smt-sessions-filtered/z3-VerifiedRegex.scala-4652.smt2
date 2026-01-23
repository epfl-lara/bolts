; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242960 () Bool)

(assert start!242960)

(declare-fun b!2486739 () Bool)

(declare-fun b_free!72553 () Bool)

(declare-fun b_next!73257 () Bool)

(assert (=> b!2486739 (= b_free!72553 (not b_next!73257))))

(declare-fun tp!796003 () Bool)

(declare-fun b_and!188839 () Bool)

(assert (=> b!2486739 (= tp!796003 b_and!188839)))

(declare-fun b!2486744 () Bool)

(declare-fun b_free!72555 () Bool)

(declare-fun b_next!73259 () Bool)

(assert (=> b!2486744 (= b_free!72555 (not b_next!73259))))

(declare-fun tp!796005 () Bool)

(declare-fun b_and!188841 () Bool)

(assert (=> b!2486744 (= tp!796005 b_and!188841)))

(declare-fun b!2486731 () Bool)

(declare-fun res!1052661 () Bool)

(declare-fun e!1578994 () Bool)

(assert (=> b!2486731 (=> res!1052661 e!1578994)))

(declare-datatypes ((V!5847 0))(
  ( (V!5848 (val!8991 Int)) )
))
(declare-datatypes ((K!5645 0))(
  ( (K!5646 (val!8992 Int)) )
))
(declare-datatypes ((tuple2!29246 0))(
  ( (tuple2!29247 (_1!17165 K!5645) (_2!17165 V!5847)) )
))
(declare-datatypes ((List!29326 0))(
  ( (Nil!29226) (Cons!29226 (h!34644 tuple2!29246) (t!211017 List!29326)) )
))
(declare-datatypes ((tuple2!29248 0))(
  ( (tuple2!29249 (_1!17166 (_ BitVec 64)) (_2!17166 List!29326)) )
))
(declare-datatypes ((List!29327 0))(
  ( (Nil!29227) (Cons!29227 (h!34645 tuple2!29248) (t!211018 List!29327)) )
))
(declare-datatypes ((ListLongMap!631 0))(
  ( (ListLongMap!632 (toList!1679 List!29327)) )
))
(declare-fun lt!892859 () ListLongMap!631)

(declare-datatypes ((Unit!42899 0))(
  ( (Unit!42900) )
))
(declare-datatypes ((Hashable!3334 0))(
  ( (HashableExt!3333 (__x!19178 Int)) )
))
(declare-datatypes ((array!12191 0))(
  ( (array!12192 (arr!5438 (Array (_ BitVec 32) List!29326)) (size!22857 (_ BitVec 32))) )
))
(declare-datatypes ((array!12193 0))(
  ( (array!12194 (arr!5439 (Array (_ BitVec 32) (_ BitVec 64))) (size!22858 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6848 0))(
  ( (LongMapFixedSize!6849 (defaultEntry!3798 Int) (mask!8625 (_ BitVec 32)) (extraKeys!3672 (_ BitVec 32)) (zeroValue!3682 List!29326) (minValue!3682 List!29326) (_size!6895 (_ BitVec 32)) (_keys!3721 array!12193) (_values!3704 array!12191) (_vacant!3485 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13513 0))(
  ( (Cell!13514 (v!31677 LongMapFixedSize!6848)) )
))
(declare-datatypes ((MutLongMap!3424 0))(
  ( (LongMap!3424 (underlying!7055 Cell!13513)) (MutLongMapExt!3423 (__x!19179 Int)) )
))
(declare-datatypes ((Cell!13515 0))(
  ( (Cell!13516 (v!31678 MutLongMap!3424)) )
))
(declare-datatypes ((MutableMap!3334 0))(
  ( (MutableMapExt!3333 (__x!19180 Int)) (HashMap!3334 (underlying!7056 Cell!13515) (hashF!5351 Hashable!3334) (_size!6896 (_ BitVec 32)) (defaultValue!3496 Int)) )
))
(declare-datatypes ((tuple2!29250 0))(
  ( (tuple2!29251 (_1!17167 Unit!42899) (_2!17167 MutableMap!3334)) )
))
(declare-fun lt!892847 () tuple2!29250)

(declare-fun allKeysSameHashInMap!199 (ListLongMap!631 Hashable!3334) Bool)

(assert (=> b!2486731 (= res!1052661 (not (allKeysSameHashInMap!199 lt!892859 (hashF!5351 (_2!17167 lt!892847)))))))

(declare-fun b!2486732 () Bool)

(declare-fun e!1578992 () Bool)

(declare-fun lt!892848 () ListLongMap!631)

(assert (=> b!2486732 (= e!1578992 (allKeysSameHashInMap!199 lt!892848 (hashF!5351 (_2!17167 lt!892847))))))

(declare-fun b!2486733 () Bool)

(declare-fun e!1579003 () Bool)

(declare-fun e!1579001 () Bool)

(assert (=> b!2486733 (= e!1579003 e!1579001)))

(declare-fun b!2486735 () Bool)

(declare-fun res!1052667 () Bool)

(declare-fun e!1578996 () Bool)

(assert (=> b!2486735 (=> (not res!1052667) (not e!1578996))))

(declare-fun thiss!42540 () MutableMap!3334)

(declare-fun key!2246 () K!5645)

(declare-fun contains!5235 (MutableMap!3334 K!5645) Bool)

(assert (=> b!2486735 (= res!1052667 (contains!5235 thiss!42540 key!2246))))

(declare-fun b!2486736 () Bool)

(declare-fun res!1052659 () Bool)

(declare-fun e!1578998 () Bool)

(assert (=> b!2486736 (=> (not res!1052659) (not e!1578998))))

(declare-fun valid!2633 (MutableMap!3334) Bool)

(assert (=> b!2486736 (= res!1052659 (valid!2633 (_2!17167 lt!892847)))))

(declare-fun b!2486737 () Bool)

(declare-datatypes ((ListMap!1157 0))(
  ( (ListMap!1158 (toList!1680 List!29326)) )
))
(declare-fun lt!892854 () ListMap!1157)

(declare-fun contains!5236 (ListMap!1157 K!5645) Bool)

(assert (=> b!2486737 (= e!1578998 (contains!5236 lt!892854 key!2246))))

(declare-fun b!2486738 () Bool)

(declare-fun e!1578995 () Bool)

(declare-fun lt!892840 () MutLongMap!3424)

(get-info :version)

(assert (=> b!2486738 (= e!1578995 (and e!1579003 ((_ is LongMap!3424) lt!892840)))))

(assert (=> b!2486738 (= lt!892840 (v!31678 (underlying!7056 thiss!42540)))))

(declare-fun tp!796007 () Bool)

(declare-fun e!1579002 () Bool)

(declare-fun tp!796002 () Bool)

(declare-fun e!1579004 () Bool)

(declare-fun array_inv!3909 (array!12193) Bool)

(declare-fun array_inv!3910 (array!12191) Bool)

(assert (=> b!2486739 (= e!1579002 (and tp!796003 tp!796007 tp!796002 (array_inv!3909 (_keys!3721 (v!31677 (underlying!7055 (v!31678 (underlying!7056 thiss!42540)))))) (array_inv!3910 (_values!3704 (v!31677 (underlying!7055 (v!31678 (underlying!7056 thiss!42540)))))) e!1579004))))

(declare-fun b!2486740 () Bool)

(declare-fun e!1578999 () Bool)

(assert (=> b!2486740 (= e!1578996 (not e!1578999))))

(declare-fun res!1052665 () Bool)

(assert (=> b!2486740 (=> res!1052665 e!1578999)))

(declare-datatypes ((tuple2!29252 0))(
  ( (tuple2!29253 (_1!17168 Bool) (_2!17168 MutLongMap!3424)) )
))
(declare-fun lt!892839 () tuple2!29252)

(assert (=> b!2486740 (= res!1052665 (not (_1!17168 lt!892839)))))

(declare-fun lt!892857 () List!29326)

(declare-fun noDuplicateKeys!122 (List!29326) Bool)

(assert (=> b!2486740 (noDuplicateKeys!122 lt!892857)))

(declare-fun lt!892858 () Unit!42899)

(declare-fun lt!892850 () List!29326)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!102 (List!29326 K!5645) Unit!42899)

(assert (=> b!2486740 (= lt!892858 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!102 lt!892850 key!2246))))

(declare-fun lt!892849 () Cell!13515)

(declare-fun Unit!42901 () Unit!42899)

(declare-fun Unit!42902 () Unit!42899)

(assert (=> b!2486740 (= lt!892847 (ite (_1!17168 lt!892839) (tuple2!29251 Unit!42901 (HashMap!3334 lt!892849 (hashF!5351 thiss!42540) (bvsub (_size!6896 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3496 thiss!42540))) (tuple2!29251 Unit!42902 (HashMap!3334 lt!892849 (hashF!5351 thiss!42540) (_size!6896 thiss!42540) (defaultValue!3496 thiss!42540)))))))

(assert (=> b!2486740 (= lt!892849 (Cell!13516 (_2!17168 lt!892839)))))

(declare-fun lt!892852 () (_ BitVec 64))

(declare-fun update!244 (MutLongMap!3424 (_ BitVec 64) List!29326) tuple2!29252)

(assert (=> b!2486740 (= lt!892839 (update!244 (v!31678 (underlying!7056 thiss!42540)) lt!892852 lt!892857))))

(declare-fun removePairForKey!114 (List!29326 K!5645) List!29326)

(assert (=> b!2486740 (= lt!892857 (removePairForKey!114 lt!892850 key!2246))))

(declare-fun map!6337 (MutableMap!3334) ListMap!1157)

(assert (=> b!2486740 (= lt!892854 (map!6337 thiss!42540))))

(declare-fun lt!892843 () Unit!42899)

(declare-fun lambda!94673 () Int)

(declare-fun forallContained!903 (List!29327 Int tuple2!29248) Unit!42899)

(assert (=> b!2486740 (= lt!892843 (forallContained!903 (toList!1679 lt!892859) lambda!94673 (tuple2!29249 lt!892852 lt!892850)))))

(declare-fun map!6338 (MutLongMap!3424) ListLongMap!631)

(assert (=> b!2486740 (= lt!892859 (map!6338 (v!31678 (underlying!7056 thiss!42540))))))

(declare-fun apply!6995 (MutLongMap!3424 (_ BitVec 64)) List!29326)

(assert (=> b!2486740 (= lt!892850 (apply!6995 (v!31678 (underlying!7056 thiss!42540)) lt!892852))))

(declare-fun hash!781 (Hashable!3334 K!5645) (_ BitVec 64))

(assert (=> b!2486740 (= lt!892852 (hash!781 (hashF!5351 thiss!42540) key!2246))))

(declare-fun b!2486741 () Bool)

(declare-fun res!1052663 () Bool)

(assert (=> b!2486741 (=> (not res!1052663) (not e!1578998))))

(declare-fun lt!892846 () ListLongMap!631)

(assert (=> b!2486741 (= res!1052663 (allKeysSameHashInMap!199 lt!892846 (hashF!5351 (_2!17167 lt!892847))))))

(declare-fun mapIsEmpty!15789 () Bool)

(declare-fun mapRes!15789 () Bool)

(assert (=> mapIsEmpty!15789 mapRes!15789))

(declare-fun b!2486742 () Bool)

(assert (=> b!2486742 (= e!1578999 e!1578994)))

(declare-fun res!1052664 () Bool)

(assert (=> b!2486742 (=> res!1052664 e!1578994)))

(declare-fun forall!6017 (List!29327 Int) Bool)

(assert (=> b!2486742 (= res!1052664 (not (forall!6017 (toList!1679 lt!892859) lambda!94673)))))

(assert (=> b!2486742 e!1578998))

(declare-fun res!1052669 () Bool)

(assert (=> b!2486742 (=> (not res!1052669) (not e!1578998))))

(assert (=> b!2486742 (= res!1052669 (forall!6017 (toList!1679 lt!892846) lambda!94673))))

(assert (=> b!2486742 (= lt!892846 (map!6338 (v!31678 (underlying!7056 (_2!17167 lt!892847)))))))

(assert (=> b!2486742 e!1578992))

(declare-fun res!1052670 () Bool)

(assert (=> b!2486742 (=> (not res!1052670) (not e!1578992))))

(assert (=> b!2486742 (= res!1052670 (forall!6017 (toList!1679 lt!892848) lambda!94673))))

(declare-fun +!114 (ListLongMap!631 tuple2!29248) ListLongMap!631)

(assert (=> b!2486742 (= lt!892848 (+!114 lt!892859 (tuple2!29249 lt!892852 lt!892857)))))

(declare-fun lt!892855 () Unit!42899)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!77 (ListLongMap!631 (_ BitVec 64) List!29326 Hashable!3334) Unit!42899)

(assert (=> b!2486742 (= lt!892855 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!77 lt!892859 lt!892852 lt!892857 (hashF!5351 (_2!17167 lt!892847))))))

(declare-fun allKeysSameHash!97 (List!29326 (_ BitVec 64) Hashable!3334) Bool)

(assert (=> b!2486742 (allKeysSameHash!97 lt!892857 lt!892852 (hashF!5351 (_2!17167 lt!892847)))))

(declare-fun lt!892837 () Unit!42899)

(declare-fun lemmaRemovePairForKeyPreservesHash!86 (List!29326 K!5645 (_ BitVec 64) Hashable!3334) Unit!42899)

(assert (=> b!2486742 (= lt!892837 (lemmaRemovePairForKeyPreservesHash!86 lt!892850 key!2246 lt!892852 (hashF!5351 (_2!17167 lt!892847))))))

(assert (=> b!2486742 (allKeysSameHash!97 lt!892850 lt!892852 (hashF!5351 (_2!17167 lt!892847)))))

(declare-fun lt!892856 () Unit!42899)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!90 (List!29327 (_ BitVec 64) List!29326 Hashable!3334) Unit!42899)

(assert (=> b!2486742 (= lt!892856 (lemmaInLongMapAllKeySameHashThenForTuple!90 (toList!1679 lt!892859) lt!892852 lt!892850 (hashF!5351 (_2!17167 lt!892847))))))

(declare-fun b!2486743 () Bool)

(declare-fun tp!796004 () Bool)

(assert (=> b!2486743 (= e!1579004 (and tp!796004 mapRes!15789))))

(declare-fun condMapEmpty!15789 () Bool)

(declare-fun mapDefault!15789 () List!29326)

(assert (=> b!2486743 (= condMapEmpty!15789 (= (arr!5438 (_values!3704 (v!31677 (underlying!7055 (v!31678 (underlying!7056 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29326)) mapDefault!15789)))))

(declare-fun b!2486734 () Bool)

(assert (=> b!2486734 (= e!1579001 e!1579002)))

(declare-fun res!1052668 () Bool)

(assert (=> start!242960 (=> (not res!1052668) (not e!1578996))))

(assert (=> start!242960 (= res!1052668 ((_ is HashMap!3334) thiss!42540))))

(assert (=> start!242960 e!1578996))

(declare-fun e!1578997 () Bool)

(assert (=> start!242960 e!1578997))

(declare-fun tp_is_empty!12409 () Bool)

(assert (=> start!242960 tp_is_empty!12409))

(assert (=> b!2486744 (= e!1578997 (and e!1578995 tp!796005))))

(declare-fun b!2486745 () Bool)

(declare-fun e!1578993 () Bool)

(assert (=> b!2486745 (= e!1578994 e!1578993)))

(declare-fun res!1052660 () Bool)

(assert (=> b!2486745 (=> res!1052660 e!1578993)))

(declare-fun lt!892853 () (_ BitVec 64))

(assert (=> b!2486745 (= res!1052660 (not (= lt!892853 lt!892852)))))

(assert (=> b!2486745 (= lt!892853 (hash!781 (hashF!5351 (_2!17167 lt!892847)) key!2246))))

(declare-fun mapNonEmpty!15789 () Bool)

(declare-fun tp!796006 () Bool)

(declare-fun tp!796008 () Bool)

(assert (=> mapNonEmpty!15789 (= mapRes!15789 (and tp!796006 tp!796008))))

(declare-fun mapRest!15789 () (Array (_ BitVec 32) List!29326))

(declare-fun mapKey!15789 () (_ BitVec 32))

(declare-fun mapValue!15789 () List!29326)

(assert (=> mapNonEmpty!15789 (= (arr!5438 (_values!3704 (v!31677 (underlying!7055 (v!31678 (underlying!7056 thiss!42540)))))) (store mapRest!15789 mapKey!15789 mapValue!15789))))

(declare-fun b!2486746 () Bool)

(assert (=> b!2486746 (= e!1578993 true)))

(declare-fun lt!892845 () List!29326)

(declare-fun lt!892851 () List!29326)

(assert (=> b!2486746 (= lt!892845 (removePairForKey!114 lt!892851 key!2246))))

(declare-fun lt!892841 () Unit!42899)

(declare-fun lt!892838 () tuple2!29248)

(assert (=> b!2486746 (= lt!892841 (forallContained!903 (toList!1679 lt!892859) lambda!94673 lt!892838))))

(declare-fun contains!5237 (List!29327 tuple2!29248) Bool)

(assert (=> b!2486746 (contains!5237 (toList!1679 lt!892859) lt!892838)))

(assert (=> b!2486746 (= lt!892838 (tuple2!29249 lt!892852 lt!892851))))

(declare-fun lt!892844 () Unit!42899)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!91 (List!29327 (_ BitVec 64) List!29326) Unit!42899)

(assert (=> b!2486746 (= lt!892844 (lemmaGetValueByKeyImpliesContainsTuple!91 (toList!1679 lt!892859) lt!892852 lt!892851))))

(declare-fun apply!6996 (ListLongMap!631 (_ BitVec 64)) List!29326)

(assert (=> b!2486746 (= lt!892851 (apply!6996 lt!892859 lt!892852))))

(declare-fun contains!5238 (ListLongMap!631 (_ BitVec 64)) Bool)

(assert (=> b!2486746 (contains!5238 lt!892859 lt!892853)))

(declare-fun lt!892842 () Unit!42899)

(declare-fun lemmaInGenMapThenLongMapContainsHash!33 (ListLongMap!631 K!5645 Hashable!3334) Unit!42899)

(assert (=> b!2486746 (= lt!892842 (lemmaInGenMapThenLongMapContainsHash!33 lt!892859 key!2246 (hashF!5351 (_2!17167 lt!892847))))))

(declare-fun b!2486747 () Bool)

(declare-fun res!1052662 () Bool)

(assert (=> b!2486747 (=> (not res!1052662) (not e!1578996))))

(assert (=> b!2486747 (= res!1052662 (valid!2633 thiss!42540))))

(declare-fun b!2486748 () Bool)

(declare-fun res!1052666 () Bool)

(assert (=> b!2486748 (=> res!1052666 e!1578994)))

(declare-fun extractMap!195 (List!29327) ListMap!1157)

(assert (=> b!2486748 (= res!1052666 (not (contains!5236 (extractMap!195 (toList!1679 lt!892859)) key!2246)))))

(assert (= (and start!242960 res!1052668) b!2486747))

(assert (= (and b!2486747 res!1052662) b!2486735))

(assert (= (and b!2486735 res!1052667) b!2486740))

(assert (= (and b!2486740 (not res!1052665)) b!2486742))

(assert (= (and b!2486742 res!1052670) b!2486732))

(assert (= (and b!2486742 res!1052669) b!2486741))

(assert (= (and b!2486741 res!1052663) b!2486736))

(assert (= (and b!2486736 res!1052659) b!2486737))

(assert (= (and b!2486742 (not res!1052664)) b!2486731))

(assert (= (and b!2486731 (not res!1052661)) b!2486748))

(assert (= (and b!2486748 (not res!1052666)) b!2486745))

(assert (= (and b!2486745 (not res!1052660)) b!2486746))

(assert (= (and b!2486743 condMapEmpty!15789) mapIsEmpty!15789))

(assert (= (and b!2486743 (not condMapEmpty!15789)) mapNonEmpty!15789))

(assert (= b!2486739 b!2486743))

(assert (= b!2486734 b!2486739))

(assert (= b!2486733 b!2486734))

(assert (= (and b!2486738 ((_ is LongMap!3424) (v!31678 (underlying!7056 thiss!42540)))) b!2486733))

(assert (= b!2486744 b!2486738))

(assert (= (and start!242960 ((_ is HashMap!3334) thiss!42540)) b!2486744))

(declare-fun m!2855319 () Bool)

(assert (=> b!2486731 m!2855319))

(declare-fun m!2855321 () Bool)

(assert (=> b!2486737 m!2855321))

(declare-fun m!2855323 () Bool)

(assert (=> mapNonEmpty!15789 m!2855323))

(declare-fun m!2855325 () Bool)

(assert (=> b!2486739 m!2855325))

(declare-fun m!2855327 () Bool)

(assert (=> b!2486739 m!2855327))

(declare-fun m!2855329 () Bool)

(assert (=> b!2486741 m!2855329))

(declare-fun m!2855331 () Bool)

(assert (=> b!2486745 m!2855331))

(declare-fun m!2855333 () Bool)

(assert (=> b!2486736 m!2855333))

(declare-fun m!2855335 () Bool)

(assert (=> b!2486740 m!2855335))

(declare-fun m!2855337 () Bool)

(assert (=> b!2486740 m!2855337))

(declare-fun m!2855339 () Bool)

(assert (=> b!2486740 m!2855339))

(declare-fun m!2855341 () Bool)

(assert (=> b!2486740 m!2855341))

(declare-fun m!2855343 () Bool)

(assert (=> b!2486740 m!2855343))

(declare-fun m!2855345 () Bool)

(assert (=> b!2486740 m!2855345))

(declare-fun m!2855347 () Bool)

(assert (=> b!2486740 m!2855347))

(declare-fun m!2855349 () Bool)

(assert (=> b!2486740 m!2855349))

(declare-fun m!2855351 () Bool)

(assert (=> b!2486740 m!2855351))

(declare-fun m!2855353 () Bool)

(assert (=> b!2486742 m!2855353))

(declare-fun m!2855355 () Bool)

(assert (=> b!2486742 m!2855355))

(declare-fun m!2855357 () Bool)

(assert (=> b!2486742 m!2855357))

(declare-fun m!2855359 () Bool)

(assert (=> b!2486742 m!2855359))

(declare-fun m!2855361 () Bool)

(assert (=> b!2486742 m!2855361))

(declare-fun m!2855363 () Bool)

(assert (=> b!2486742 m!2855363))

(declare-fun m!2855365 () Bool)

(assert (=> b!2486742 m!2855365))

(declare-fun m!2855367 () Bool)

(assert (=> b!2486742 m!2855367))

(declare-fun m!2855369 () Bool)

(assert (=> b!2486742 m!2855369))

(declare-fun m!2855371 () Bool)

(assert (=> b!2486742 m!2855371))

(declare-fun m!2855373 () Bool)

(assert (=> b!2486748 m!2855373))

(assert (=> b!2486748 m!2855373))

(declare-fun m!2855375 () Bool)

(assert (=> b!2486748 m!2855375))

(declare-fun m!2855377 () Bool)

(assert (=> b!2486735 m!2855377))

(declare-fun m!2855379 () Bool)

(assert (=> b!2486732 m!2855379))

(declare-fun m!2855381 () Bool)

(assert (=> b!2486747 m!2855381))

(declare-fun m!2855383 () Bool)

(assert (=> b!2486746 m!2855383))

(declare-fun m!2855385 () Bool)

(assert (=> b!2486746 m!2855385))

(declare-fun m!2855387 () Bool)

(assert (=> b!2486746 m!2855387))

(declare-fun m!2855389 () Bool)

(assert (=> b!2486746 m!2855389))

(declare-fun m!2855391 () Bool)

(assert (=> b!2486746 m!2855391))

(declare-fun m!2855393 () Bool)

(assert (=> b!2486746 m!2855393))

(declare-fun m!2855395 () Bool)

(assert (=> b!2486746 m!2855395))

(check-sat (not b!2486745) (not b!2486741) (not b!2486731) (not b!2486746) b_and!188839 (not b!2486747) (not b!2486737) (not mapNonEmpty!15789) (not b!2486740) b_and!188841 (not b!2486748) (not b!2486739) (not b!2486735) (not b!2486743) (not b!2486742) (not b!2486736) tp_is_empty!12409 (not b_next!73257) (not b_next!73259) (not b!2486732))
(check-sat b_and!188841 b_and!188839 (not b_next!73257) (not b_next!73259))
