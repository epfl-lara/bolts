; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414906 () Bool)

(assert start!414906)

(declare-fun b!4314422 () Bool)

(declare-fun b_free!128763 () Bool)

(declare-fun b_next!129467 () Bool)

(assert (=> b!4314422 (= b_free!128763 (not b_next!129467))))

(declare-fun tp!1325552 () Bool)

(declare-fun b_and!340233 () Bool)

(assert (=> b!4314422 (= tp!1325552 b_and!340233)))

(declare-fun b!4314425 () Bool)

(declare-fun b_free!128765 () Bool)

(declare-fun b_next!129469 () Bool)

(assert (=> b!4314425 (= b_free!128765 (not b_next!129469))))

(declare-fun tp!1325549 () Bool)

(declare-fun b_and!340235 () Bool)

(assert (=> b!4314425 (= tp!1325549 b_and!340235)))

(declare-fun b!4314421 () Bool)

(declare-fun e!2683657 () Bool)

(declare-datatypes ((V!9701 0))(
  ( (V!9702 (val!15857 Int)) )
))
(declare-datatypes ((K!9499 0))(
  ( (K!9500 (val!15858 Int)) )
))
(declare-datatypes ((tuple2!46874 0))(
  ( (tuple2!46875 (_1!26719 K!9499) (_2!26719 V!9701)) )
))
(declare-datatypes ((List!48399 0))(
  ( (Nil!48275) (Cons!48275 (h!53723 tuple2!46874) (t!355236 List!48399)) )
))
(declare-datatypes ((tuple2!46876 0))(
  ( (tuple2!46877 (_1!26720 (_ BitVec 64)) (_2!26720 List!48399)) )
))
(declare-datatypes ((List!48400 0))(
  ( (Nil!48276) (Cons!48276 (h!53724 tuple2!46876) (t!355237 List!48400)) )
))
(declare-datatypes ((ListLongMap!1085 0))(
  ( (ListLongMap!1086 (toList!2471 List!48400)) )
))
(declare-fun lt!1533970 () ListLongMap!1085)

(declare-datatypes ((array!16992 0))(
  ( (array!16993 (arr!7587 (Array (_ BitVec 32) (_ BitVec 64))) (size!35626 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4617 0))(
  ( (HashableExt!4616 (__x!30128 Int)) )
))
(declare-datatypes ((array!16994 0))(
  ( (array!16995 (arr!7588 (Array (_ BitVec 32) List!48399)) (size!35627 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9402 0))(
  ( (LongMapFixedSize!9403 (defaultEntry!5086 Int) (mask!13280 (_ BitVec 32)) (extraKeys!4950 (_ BitVec 32)) (zeroValue!4960 List!48399) (minValue!4960 List!48399) (_size!9445 (_ BitVec 32)) (_keys!5001 array!16992) (_values!4982 array!16994) (_vacant!4762 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18613 0))(
  ( (Cell!18614 (v!42514 LongMapFixedSize!9402)) )
))
(declare-datatypes ((MutLongMap!4701 0))(
  ( (LongMap!4701 (underlying!9631 Cell!18613)) (MutLongMapExt!4700 (__x!30129 Int)) )
))
(declare-datatypes ((Cell!18615 0))(
  ( (Cell!18616 (v!42515 MutLongMap!4701)) )
))
(declare-datatypes ((MutableMap!4607 0))(
  ( (MutableMapExt!4606 (__x!30130 Int)) (HashMap!4607 (underlying!9632 Cell!18615) (hashF!6798 Hashable!4617) (_size!9446 (_ BitVec 32)) (defaultValue!4778 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4607)

(declare-fun allKeysSameHashInMap!362 (ListLongMap!1085 Hashable!4617) Bool)

(assert (=> b!4314421 (= e!2683657 (allKeysSameHashInMap!362 lt!1533970 (hashF!6798 thiss!42308)))))

(declare-fun e!2683660 () Bool)

(declare-datatypes ((tuple2!46878 0))(
  ( (tuple2!46879 (_1!26721 Bool) (_2!26721 MutLongMap!4701)) )
))
(declare-fun lt!1533975 () tuple2!46878)

(declare-fun b!4314423 () Bool)

(declare-datatypes ((ListMap!1751 0))(
  ( (ListMap!1752 (toList!2472 List!48399)) )
))
(declare-fun lt!1533967 () ListMap!1751)

(declare-fun lt!1533977 () tuple2!46874)

(declare-fun eq!143 (ListMap!1751 ListMap!1751) Bool)

(declare-fun map!10283 (MutableMap!4607) ListMap!1751)

(declare-fun +!293 (ListMap!1751 tuple2!46874) ListMap!1751)

(assert (=> b!4314423 (= e!2683660 (not (eq!143 (map!10283 (HashMap!4607 (Cell!18616 (_2!26721 lt!1533975)) (hashF!6798 thiss!42308) (_size!9446 thiss!42308) (defaultValue!4778 thiss!42308))) (+!293 lt!1533967 lt!1533977))))))

(declare-fun lt!1533979 () ListLongMap!1085)

(declare-fun extractMap!346 (List!48400) ListMap!1751)

(assert (=> b!4314423 (eq!143 (extractMap!346 (toList!2471 lt!1533970)) (+!293 (extractMap!346 (toList!2471 lt!1533979)) lt!1533977))))

(declare-fun lt!1533966 () (_ BitVec 64))

(declare-fun lt!1533968 () List!48399)

(declare-datatypes ((Unit!67468 0))(
  ( (Unit!67469) )
))
(declare-fun lt!1533972 () Unit!67468)

(declare-fun v!9179 () V!9701)

(declare-fun key!2048 () K!9499)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!62 (ListLongMap!1085 (_ BitVec 64) List!48399 K!9499 V!9701 Hashable!4617) Unit!67468)

(assert (=> b!4314423 (= lt!1533972 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!62 lt!1533979 lt!1533966 lt!1533968 key!2048 v!9179 (hashF!6798 thiss!42308)))))

(assert (=> b!4314423 e!2683657))

(declare-fun res!1768361 () Bool)

(assert (=> b!4314423 (=> (not res!1768361) (not e!2683657))))

(declare-fun lambda!133303 () Int)

(declare-fun forall!8769 (List!48400 Int) Bool)

(assert (=> b!4314423 (= res!1768361 (forall!8769 (toList!2471 lt!1533970) lambda!133303))))

(declare-fun +!294 (ListLongMap!1085 tuple2!46876) ListLongMap!1085)

(assert (=> b!4314423 (= lt!1533970 (+!294 lt!1533979 (tuple2!46877 lt!1533966 lt!1533968)))))

(declare-fun lt!1533971 () Unit!67468)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!164 (ListLongMap!1085 (_ BitVec 64) List!48399 Hashable!4617) Unit!67468)

(assert (=> b!4314423 (= lt!1533971 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!164 lt!1533979 lt!1533966 lt!1533968 (hashF!6798 thiss!42308)))))

(declare-fun e!2683653 () Bool)

(assert (=> b!4314423 e!2683653))

(declare-fun res!1768360 () Bool)

(assert (=> b!4314423 (=> (not res!1768360) (not e!2683653))))

(declare-fun lt!1533976 () List!48399)

(declare-fun noDuplicateKeys!242 (List!48399) Bool)

(assert (=> b!4314423 (= res!1768360 (noDuplicateKeys!242 lt!1533976))))

(declare-fun lt!1533965 () Unit!67468)

(declare-fun lt!1533974 () List!48399)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!190 (List!48399 K!9499) Unit!67468)

(assert (=> b!4314423 (= lt!1533965 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!190 lt!1533974 key!2048))))

(declare-fun allKeysSameHash!215 (List!48399 (_ BitVec 64) Hashable!4617) Bool)

(assert (=> b!4314423 (allKeysSameHash!215 lt!1533976 lt!1533966 (hashF!6798 thiss!42308))))

(declare-fun lt!1533973 () Unit!67468)

(declare-fun lemmaRemovePairForKeyPreservesHash!195 (List!48399 K!9499 (_ BitVec 64) Hashable!4617) Unit!67468)

(assert (=> b!4314423 (= lt!1533973 (lemmaRemovePairForKeyPreservesHash!195 lt!1533974 key!2048 lt!1533966 (hashF!6798 thiss!42308)))))

(assert (=> b!4314423 (allKeysSameHash!215 lt!1533974 lt!1533966 (hashF!6798 thiss!42308))))

(declare-fun lt!1533978 () Unit!67468)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!202 (List!48400 (_ BitVec 64) List!48399 Hashable!4617) Unit!67468)

(assert (=> b!4314423 (= lt!1533978 (lemmaInLongMapAllKeySameHashThenForTuple!202 (toList!2471 lt!1533979) lt!1533966 lt!1533974 (hashF!6798 thiss!42308)))))

(declare-fun b!4314424 () Bool)

(declare-fun res!1768362 () Bool)

(assert (=> b!4314424 (=> (not res!1768362) (not e!2683653))))

(declare-fun containsKey!356 (List!48399 K!9499) Bool)

(assert (=> b!4314424 (= res!1768362 (not (containsKey!356 lt!1533976 key!2048)))))

(declare-fun e!2683663 () Bool)

(declare-fun e!2683658 () Bool)

(assert (=> b!4314425 (= e!2683663 (and e!2683658 tp!1325549))))

(declare-fun b!4314426 () Bool)

(declare-fun e!2683662 () Bool)

(declare-fun e!2683652 () Bool)

(assert (=> b!4314426 (= e!2683662 e!2683652)))

(declare-fun mapNonEmpty!20977 () Bool)

(declare-fun mapRes!20977 () Bool)

(declare-fun tp!1325551 () Bool)

(declare-fun tp!1325553 () Bool)

(assert (=> mapNonEmpty!20977 (= mapRes!20977 (and tp!1325551 tp!1325553))))

(declare-fun mapValue!20977 () List!48399)

(declare-fun mapKey!20977 () (_ BitVec 32))

(declare-fun mapRest!20977 () (Array (_ BitVec 32) List!48399))

(assert (=> mapNonEmpty!20977 (= (arr!7588 (_values!4982 (v!42514 (underlying!9631 (v!42515 (underlying!9632 thiss!42308)))))) (store mapRest!20977 mapKey!20977 mapValue!20977))))

(declare-fun b!4314427 () Bool)

(declare-fun e!2683661 () Bool)

(declare-fun tp!1325555 () Bool)

(assert (=> b!4314427 (= e!2683661 (and tp!1325555 mapRes!20977))))

(declare-fun condMapEmpty!20977 () Bool)

(declare-fun mapDefault!20977 () List!48399)

(assert (=> b!4314427 (= condMapEmpty!20977 (= (arr!7588 (_values!4982 (v!42514 (underlying!9631 (v!42515 (underlying!9632 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48399)) mapDefault!20977)))))

(declare-fun b!4314428 () Bool)

(declare-fun res!1768359 () Bool)

(declare-fun e!2683655 () Bool)

(assert (=> b!4314428 (=> (not res!1768359) (not e!2683655))))

(declare-fun valid!3699 (MutableMap!4607) Bool)

(assert (=> b!4314428 (= res!1768359 (valid!3699 thiss!42308))))

(declare-fun b!4314429 () Bool)

(declare-fun e!2683656 () Bool)

(assert (=> b!4314429 (= e!2683652 e!2683656)))

(declare-fun tp!1325554 () Bool)

(declare-fun tp!1325550 () Bool)

(declare-fun array_inv!5453 (array!16992) Bool)

(declare-fun array_inv!5454 (array!16994) Bool)

(assert (=> b!4314422 (= e!2683656 (and tp!1325552 tp!1325550 tp!1325554 (array_inv!5453 (_keys!5001 (v!42514 (underlying!9631 (v!42515 (underlying!9632 thiss!42308)))))) (array_inv!5454 (_values!4982 (v!42514 (underlying!9631 (v!42515 (underlying!9632 thiss!42308)))))) e!2683661))))

(declare-fun res!1768358 () Bool)

(assert (=> start!414906 (=> (not res!1768358) (not e!2683655))))

(get-info :version)

(assert (=> start!414906 (= res!1768358 ((_ is HashMap!4607) thiss!42308))))

(assert (=> start!414906 e!2683655))

(assert (=> start!414906 e!2683663))

(declare-fun tp_is_empty!23909 () Bool)

(assert (=> start!414906 tp_is_empty!23909))

(declare-fun tp_is_empty!23911 () Bool)

(assert (=> start!414906 tp_is_empty!23911))

(declare-fun b!4314430 () Bool)

(declare-fun lt!1533969 () MutLongMap!4701)

(assert (=> b!4314430 (= e!2683658 (and e!2683662 ((_ is LongMap!4701) lt!1533969)))))

(assert (=> b!4314430 (= lt!1533969 (v!42515 (underlying!9632 thiss!42308)))))

(declare-fun mapIsEmpty!20977 () Bool)

(assert (=> mapIsEmpty!20977 mapRes!20977))

(declare-fun b!4314431 () Bool)

(declare-fun e!2683654 () Bool)

(assert (=> b!4314431 (= e!2683655 e!2683654)))

(declare-fun res!1768356 () Bool)

(assert (=> b!4314431 (=> (not res!1768356) (not e!2683654))))

(declare-fun contains!10272 (MutableMap!4607 K!9499) Bool)

(assert (=> b!4314431 (= res!1768356 (contains!10272 thiss!42308 key!2048))))

(declare-fun map!10284 (MutLongMap!4701) ListLongMap!1085)

(assert (=> b!4314431 (= lt!1533979 (map!10284 (v!42515 (underlying!9632 thiss!42308))))))

(assert (=> b!4314431 (= lt!1533967 (map!10283 thiss!42308))))

(declare-fun b!4314432 () Bool)

(assert (=> b!4314432 (= e!2683653 (noDuplicateKeys!242 lt!1533968))))

(declare-fun b!4314433 () Bool)

(assert (=> b!4314433 (= e!2683654 e!2683660)))

(declare-fun res!1768357 () Bool)

(assert (=> b!4314433 (=> (not res!1768357) (not e!2683660))))

(assert (=> b!4314433 (= res!1768357 (_1!26721 lt!1533975))))

(declare-fun update!476 (MutLongMap!4701 (_ BitVec 64) List!48399) tuple2!46878)

(assert (=> b!4314433 (= lt!1533975 (update!476 (v!42515 (underlying!9632 thiss!42308)) lt!1533966 lt!1533968))))

(assert (=> b!4314433 (= lt!1533968 (Cons!48275 lt!1533977 lt!1533976))))

(declare-fun removePairForKey!239 (List!48399 K!9499) List!48399)

(assert (=> b!4314433 (= lt!1533976 (removePairForKey!239 lt!1533974 key!2048))))

(assert (=> b!4314433 (= lt!1533977 (tuple2!46875 key!2048 v!9179))))

(declare-fun apply!11069 (MutLongMap!4701 (_ BitVec 64)) List!48399)

(assert (=> b!4314433 (= lt!1533974 (apply!11069 (v!42515 (underlying!9632 thiss!42308)) lt!1533966))))

(declare-fun hash!1082 (Hashable!4617 K!9499) (_ BitVec 64))

(assert (=> b!4314433 (= lt!1533966 (hash!1082 (hashF!6798 thiss!42308) key!2048))))

(assert (= (and start!414906 res!1768358) b!4314428))

(assert (= (and b!4314428 res!1768359) b!4314431))

(assert (= (and b!4314431 res!1768356) b!4314433))

(assert (= (and b!4314433 res!1768357) b!4314423))

(assert (= (and b!4314423 res!1768360) b!4314424))

(assert (= (and b!4314424 res!1768362) b!4314432))

(assert (= (and b!4314423 res!1768361) b!4314421))

(assert (= (and b!4314427 condMapEmpty!20977) mapIsEmpty!20977))

(assert (= (and b!4314427 (not condMapEmpty!20977)) mapNonEmpty!20977))

(assert (= b!4314422 b!4314427))

(assert (= b!4314429 b!4314422))

(assert (= b!4314426 b!4314429))

(assert (= (and b!4314430 ((_ is LongMap!4701) (v!42515 (underlying!9632 thiss!42308)))) b!4314426))

(assert (= b!4314425 b!4314430))

(assert (= (and start!414906 ((_ is HashMap!4607) thiss!42308)) b!4314425))

(declare-fun m!4907683 () Bool)

(assert (=> b!4314421 m!4907683))

(declare-fun m!4907685 () Bool)

(assert (=> b!4314433 m!4907685))

(declare-fun m!4907687 () Bool)

(assert (=> b!4314433 m!4907687))

(declare-fun m!4907689 () Bool)

(assert (=> b!4314433 m!4907689))

(declare-fun m!4907691 () Bool)

(assert (=> b!4314433 m!4907691))

(declare-fun m!4907693 () Bool)

(assert (=> b!4314424 m!4907693))

(declare-fun m!4907695 () Bool)

(assert (=> b!4314432 m!4907695))

(declare-fun m!4907697 () Bool)

(assert (=> mapNonEmpty!20977 m!4907697))

(declare-fun m!4907699 () Bool)

(assert (=> b!4314428 m!4907699))

(declare-fun m!4907701 () Bool)

(assert (=> b!4314431 m!4907701))

(declare-fun m!4907703 () Bool)

(assert (=> b!4314431 m!4907703))

(declare-fun m!4907705 () Bool)

(assert (=> b!4314431 m!4907705))

(declare-fun m!4907707 () Bool)

(assert (=> b!4314423 m!4907707))

(declare-fun m!4907709 () Bool)

(assert (=> b!4314423 m!4907709))

(declare-fun m!4907711 () Bool)

(assert (=> b!4314423 m!4907711))

(declare-fun m!4907713 () Bool)

(assert (=> b!4314423 m!4907713))

(declare-fun m!4907715 () Bool)

(assert (=> b!4314423 m!4907715))

(declare-fun m!4907717 () Bool)

(assert (=> b!4314423 m!4907717))

(assert (=> b!4314423 m!4907715))

(declare-fun m!4907719 () Bool)

(assert (=> b!4314423 m!4907719))

(declare-fun m!4907721 () Bool)

(assert (=> b!4314423 m!4907721))

(declare-fun m!4907723 () Bool)

(assert (=> b!4314423 m!4907723))

(declare-fun m!4907725 () Bool)

(assert (=> b!4314423 m!4907725))

(declare-fun m!4907727 () Bool)

(assert (=> b!4314423 m!4907727))

(assert (=> b!4314423 m!4907723))

(declare-fun m!4907729 () Bool)

(assert (=> b!4314423 m!4907729))

(declare-fun m!4907731 () Bool)

(assert (=> b!4314423 m!4907731))

(declare-fun m!4907733 () Bool)

(assert (=> b!4314423 m!4907733))

(declare-fun m!4907735 () Bool)

(assert (=> b!4314423 m!4907735))

(declare-fun m!4907737 () Bool)

(assert (=> b!4314423 m!4907737))

(assert (=> b!4314423 m!4907737))

(assert (=> b!4314423 m!4907719))

(assert (=> b!4314423 m!4907725))

(declare-fun m!4907739 () Bool)

(assert (=> b!4314423 m!4907739))

(declare-fun m!4907741 () Bool)

(assert (=> b!4314422 m!4907741))

(declare-fun m!4907743 () Bool)

(assert (=> b!4314422 m!4907743))

(check-sat b_and!340235 (not b!4314427) (not b_next!129467) (not b!4314432) tp_is_empty!23911 (not b!4314422) (not b!4314428) (not b_next!129469) tp_is_empty!23909 (not b!4314423) (not b!4314431) (not b!4314433) (not b!4314421) (not b!4314424) b_and!340233 (not mapNonEmpty!20977))
(check-sat b_and!340233 b_and!340235 (not b_next!129469) (not b_next!129467))
(get-model)

(declare-fun b!4314452 () Bool)

(declare-fun e!2683677 () tuple2!46878)

(declare-fun lt!1533989 () tuple2!46878)

(assert (=> b!4314452 (= e!2683677 (tuple2!46879 false (_2!26721 lt!1533989)))))

(declare-fun b!4314453 () Bool)

(declare-fun e!2683676 () tuple2!46878)

(declare-fun lt!1533990 () tuple2!46878)

(assert (=> b!4314453 (= e!2683676 (tuple2!46879 (_1!26721 lt!1533990) (_2!26721 lt!1533990)))))

(declare-fun repack!68 (MutLongMap!4701) tuple2!46878)

(assert (=> b!4314453 (= lt!1533990 (repack!68 (v!42515 (underlying!9632 thiss!42308))))))

(declare-fun b!4314455 () Bool)

(declare-datatypes ((tuple2!46880 0))(
  ( (tuple2!46881 (_1!26722 Bool) (_2!26722 LongMapFixedSize!9402)) )
))
(declare-fun lt!1533991 () tuple2!46880)

(assert (=> b!4314455 (= e!2683677 (tuple2!46879 (_1!26722 lt!1533991) (LongMap!4701 (Cell!18614 (_2!26722 lt!1533991)))))))

(declare-fun update!477 (LongMapFixedSize!9402 (_ BitVec 64) List!48399) tuple2!46880)

(assert (=> b!4314455 (= lt!1533991 (update!477 (v!42514 (underlying!9631 (_2!26721 lt!1533989))) lt!1533966 lt!1533968))))

(declare-fun b!4314456 () Bool)

(declare-fun e!2683678 () Bool)

(declare-fun call!298459 () ListLongMap!1085)

(declare-fun call!298460 () ListLongMap!1085)

(assert (=> b!4314456 (= e!2683678 (= call!298459 call!298460))))

(declare-fun bm!298454 () Bool)

(assert (=> bm!298454 (= call!298460 (map!10284 (v!42515 (underlying!9632 thiss!42308))))))

(declare-fun b!4314457 () Bool)

(declare-fun res!1768371 () Bool)

(declare-fun e!2683674 () Bool)

(assert (=> b!4314457 (=> (not res!1768371) (not e!2683674))))

(declare-fun lt!1533988 () tuple2!46878)

(declare-fun valid!3700 (MutLongMap!4701) Bool)

(assert (=> b!4314457 (= res!1768371 (valid!3700 (_2!26721 lt!1533988)))))

(declare-fun bm!298455 () Bool)

(assert (=> bm!298455 (= call!298459 (map!10284 (_2!26721 lt!1533988)))))

(declare-fun b!4314454 () Bool)

(declare-fun e!2683675 () Bool)

(assert (=> b!4314454 (= e!2683678 e!2683675)))

(declare-fun res!1768369 () Bool)

(declare-fun contains!10273 (ListLongMap!1085 (_ BitVec 64)) Bool)

(assert (=> b!4314454 (= res!1768369 (contains!10273 call!298459 lt!1533966))))

(assert (=> b!4314454 (=> (not res!1768369) (not e!2683675))))

(declare-fun d!1268953 () Bool)

(assert (=> d!1268953 e!2683674))

(declare-fun res!1768370 () Bool)

(assert (=> d!1268953 (=> (not res!1768370) (not e!2683674))))

(assert (=> d!1268953 (= res!1768370 ((_ is LongMap!4701) (_2!26721 lt!1533988)))))

(assert (=> d!1268953 (= lt!1533988 e!2683677)))

(declare-fun c!733507 () Bool)

(assert (=> d!1268953 (= c!733507 (_1!26721 lt!1533989))))

(assert (=> d!1268953 (= lt!1533989 e!2683676)))

(declare-fun c!733506 () Bool)

(declare-fun imbalanced!64 (MutLongMap!4701) Bool)

(assert (=> d!1268953 (= c!733506 (imbalanced!64 (v!42515 (underlying!9632 thiss!42308))))))

(assert (=> d!1268953 (valid!3700 (v!42515 (underlying!9632 thiss!42308)))))

(assert (=> d!1268953 (= (update!476 (v!42515 (underlying!9632 thiss!42308)) lt!1533966 lt!1533968) lt!1533988)))

(declare-fun b!4314458 () Bool)

(assert (=> b!4314458 (= e!2683675 (= call!298459 (+!294 call!298460 (tuple2!46877 lt!1533966 lt!1533968))))))

(declare-fun b!4314459 () Bool)

(assert (=> b!4314459 (= e!2683676 (tuple2!46879 true (v!42515 (underlying!9632 thiss!42308))))))

(declare-fun b!4314460 () Bool)

(assert (=> b!4314460 (= e!2683674 e!2683678)))

(declare-fun c!733505 () Bool)

(assert (=> b!4314460 (= c!733505 (_1!26721 lt!1533988))))

(assert (= (and d!1268953 c!733506) b!4314453))

(assert (= (and d!1268953 (not c!733506)) b!4314459))

(assert (= (and d!1268953 c!733507) b!4314455))

(assert (= (and d!1268953 (not c!733507)) b!4314452))

(assert (= (and d!1268953 res!1768370) b!4314457))

(assert (= (and b!4314457 res!1768371) b!4314460))

(assert (= (and b!4314460 c!733505) b!4314454))

(assert (= (and b!4314460 (not c!733505)) b!4314456))

(assert (= (and b!4314454 res!1768369) b!4314458))

(assert (= (or b!4314458 b!4314456) bm!298454))

(assert (= (or b!4314454 b!4314458 b!4314456) bm!298455))

(declare-fun m!4907745 () Bool)

(assert (=> b!4314454 m!4907745))

(declare-fun m!4907747 () Bool)

(assert (=> b!4314455 m!4907747))

(declare-fun m!4907749 () Bool)

(assert (=> bm!298455 m!4907749))

(declare-fun m!4907751 () Bool)

(assert (=> b!4314458 m!4907751))

(declare-fun m!4907753 () Bool)

(assert (=> b!4314453 m!4907753))

(assert (=> bm!298454 m!4907703))

(declare-fun m!4907755 () Bool)

(assert (=> b!4314457 m!4907755))

(declare-fun m!4907757 () Bool)

(assert (=> d!1268953 m!4907757))

(declare-fun m!4907759 () Bool)

(assert (=> d!1268953 m!4907759))

(assert (=> b!4314433 d!1268953))

(declare-fun b!4314469 () Bool)

(declare-fun e!2683683 () List!48399)

(assert (=> b!4314469 (= e!2683683 (t!355236 lt!1533974))))

(declare-fun d!1268955 () Bool)

(declare-fun lt!1533994 () List!48399)

(assert (=> d!1268955 (not (containsKey!356 lt!1533994 key!2048))))

(assert (=> d!1268955 (= lt!1533994 e!2683683)))

(declare-fun c!733512 () Bool)

(assert (=> d!1268955 (= c!733512 (and ((_ is Cons!48275) lt!1533974) (= (_1!26719 (h!53723 lt!1533974)) key!2048)))))

(assert (=> d!1268955 (noDuplicateKeys!242 lt!1533974)))

(assert (=> d!1268955 (= (removePairForKey!239 lt!1533974 key!2048) lt!1533994)))

(declare-fun b!4314472 () Bool)

(declare-fun e!2683684 () List!48399)

(assert (=> b!4314472 (= e!2683684 Nil!48275)))

(declare-fun b!4314471 () Bool)

(assert (=> b!4314471 (= e!2683684 (Cons!48275 (h!53723 lt!1533974) (removePairForKey!239 (t!355236 lt!1533974) key!2048)))))

(declare-fun b!4314470 () Bool)

(assert (=> b!4314470 (= e!2683683 e!2683684)))

(declare-fun c!733513 () Bool)

(assert (=> b!4314470 (= c!733513 ((_ is Cons!48275) lt!1533974))))

(assert (= (and d!1268955 c!733512) b!4314469))

(assert (= (and d!1268955 (not c!733512)) b!4314470))

(assert (= (and b!4314470 c!733513) b!4314471))

(assert (= (and b!4314470 (not c!733513)) b!4314472))

(declare-fun m!4907761 () Bool)

(assert (=> d!1268955 m!4907761))

(declare-fun m!4907763 () Bool)

(assert (=> d!1268955 m!4907763))

(declare-fun m!4907765 () Bool)

(assert (=> b!4314471 m!4907765))

(assert (=> b!4314433 d!1268955))

(declare-fun d!1268957 () Bool)

(declare-fun e!2683687 () Bool)

(assert (=> d!1268957 e!2683687))

(declare-fun c!733516 () Bool)

(declare-fun contains!10274 (MutLongMap!4701 (_ BitVec 64)) Bool)

(assert (=> d!1268957 (= c!733516 (contains!10274 (v!42515 (underlying!9632 thiss!42308)) lt!1533966))))

(declare-fun lt!1533997 () List!48399)

(declare-fun apply!11070 (LongMapFixedSize!9402 (_ BitVec 64)) List!48399)

(assert (=> d!1268957 (= lt!1533997 (apply!11070 (v!42514 (underlying!9631 (v!42515 (underlying!9632 thiss!42308)))) lt!1533966))))

(assert (=> d!1268957 (valid!3700 (v!42515 (underlying!9632 thiss!42308)))))

(assert (=> d!1268957 (= (apply!11069 (v!42515 (underlying!9632 thiss!42308)) lt!1533966) lt!1533997)))

(declare-fun b!4314477 () Bool)

(declare-datatypes ((Option!10260 0))(
  ( (None!10259) (Some!10259 (v!42520 List!48399)) )
))
(declare-fun get!15629 (Option!10260) List!48399)

(declare-fun getValueByKey!273 (List!48400 (_ BitVec 64)) Option!10260)

(assert (=> b!4314477 (= e!2683687 (= lt!1533997 (get!15629 (getValueByKey!273 (toList!2471 (map!10284 (v!42515 (underlying!9632 thiss!42308)))) lt!1533966))))))

(declare-fun b!4314478 () Bool)

(declare-fun dynLambda!20462 (Int (_ BitVec 64)) List!48399)

(assert (=> b!4314478 (= e!2683687 (= lt!1533997 (dynLambda!20462 (defaultEntry!5086 (v!42514 (underlying!9631 (v!42515 (underlying!9632 thiss!42308))))) lt!1533966)))))

(assert (=> b!4314478 ((_ is LongMap!4701) (v!42515 (underlying!9632 thiss!42308)))))

(assert (= (and d!1268957 c!733516) b!4314477))

(assert (= (and d!1268957 (not c!733516)) b!4314478))

(declare-fun b_lambda!126859 () Bool)

(assert (=> (not b_lambda!126859) (not b!4314478)))

(declare-fun t!355239 () Bool)

(declare-fun tb!257323 () Bool)

(assert (=> (and b!4314422 (= (defaultEntry!5086 (v!42514 (underlying!9631 (v!42515 (underlying!9632 thiss!42308))))) (defaultEntry!5086 (v!42514 (underlying!9631 (v!42515 (underlying!9632 thiss!42308)))))) t!355239) tb!257323))

(assert (=> b!4314478 t!355239))

(declare-fun result!314772 () Bool)

(declare-fun b_and!340237 () Bool)

(assert (= b_and!340233 (and (=> t!355239 result!314772) b_and!340237)))

(declare-fun m!4907767 () Bool)

(assert (=> d!1268957 m!4907767))

(declare-fun m!4907769 () Bool)

(assert (=> d!1268957 m!4907769))

(assert (=> d!1268957 m!4907759))

(assert (=> b!4314477 m!4907703))

(declare-fun m!4907771 () Bool)

(assert (=> b!4314477 m!4907771))

(assert (=> b!4314477 m!4907771))

(declare-fun m!4907773 () Bool)

(assert (=> b!4314477 m!4907773))

(declare-fun m!4907775 () Bool)

(assert (=> b!4314478 m!4907775))

(assert (=> b!4314433 d!1268957))

(declare-fun d!1268959 () Bool)

(declare-fun hash!1087 (Hashable!4617 K!9499) (_ BitVec 64))

(assert (=> d!1268959 (= (hash!1082 (hashF!6798 thiss!42308) key!2048) (hash!1087 (hashF!6798 thiss!42308) key!2048))))

(declare-fun bs!605593 () Bool)

(assert (= bs!605593 d!1268959))

(declare-fun m!4907777 () Bool)

(assert (=> bs!605593 m!4907777))

(assert (=> b!4314433 d!1268959))

(declare-fun d!1268961 () Bool)

(declare-fun res!1768376 () Bool)

(declare-fun e!2683692 () Bool)

(assert (=> d!1268961 (=> res!1768376 e!2683692)))

(assert (=> d!1268961 (= res!1768376 (not ((_ is Cons!48275) lt!1533968)))))

(assert (=> d!1268961 (= (noDuplicateKeys!242 lt!1533968) e!2683692)))

(declare-fun b!4314483 () Bool)

(declare-fun e!2683693 () Bool)

(assert (=> b!4314483 (= e!2683692 e!2683693)))

(declare-fun res!1768377 () Bool)

(assert (=> b!4314483 (=> (not res!1768377) (not e!2683693))))

(assert (=> b!4314483 (= res!1768377 (not (containsKey!356 (t!355236 lt!1533968) (_1!26719 (h!53723 lt!1533968)))))))

(declare-fun b!4314484 () Bool)

(assert (=> b!4314484 (= e!2683693 (noDuplicateKeys!242 (t!355236 lt!1533968)))))

(assert (= (and d!1268961 (not res!1768376)) b!4314483))

(assert (= (and b!4314483 res!1768377) b!4314484))

(declare-fun m!4907779 () Bool)

(assert (=> b!4314483 m!4907779))

(declare-fun m!4907781 () Bool)

(assert (=> b!4314484 m!4907781))

(assert (=> b!4314432 d!1268961))

(declare-fun d!1268963 () Bool)

(declare-fun lt!1534000 () ListMap!1751)

(declare-fun invariantList!585 (List!48399) Bool)

(assert (=> d!1268963 (invariantList!585 (toList!2472 lt!1534000))))

(assert (=> d!1268963 (= lt!1534000 (extractMap!346 (toList!2471 (map!10284 (v!42515 (underlying!9632 (HashMap!4607 (Cell!18616 (_2!26721 lt!1533975)) (hashF!6798 thiss!42308) (_size!9446 thiss!42308) (defaultValue!4778 thiss!42308))))))))))

(assert (=> d!1268963 (valid!3699 (HashMap!4607 (Cell!18616 (_2!26721 lt!1533975)) (hashF!6798 thiss!42308) (_size!9446 thiss!42308) (defaultValue!4778 thiss!42308)))))

(assert (=> d!1268963 (= (map!10283 (HashMap!4607 (Cell!18616 (_2!26721 lt!1533975)) (hashF!6798 thiss!42308) (_size!9446 thiss!42308) (defaultValue!4778 thiss!42308))) lt!1534000)))

(declare-fun bs!605594 () Bool)

(assert (= bs!605594 d!1268963))

(declare-fun m!4907783 () Bool)

(assert (=> bs!605594 m!4907783))

(declare-fun m!4907785 () Bool)

(assert (=> bs!605594 m!4907785))

(declare-fun m!4907787 () Bool)

(assert (=> bs!605594 m!4907787))

(declare-fun m!4907789 () Bool)

(assert (=> bs!605594 m!4907789))

(assert (=> b!4314423 d!1268963))

(declare-fun d!1268965 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7559 (List!48399) (InoxSet tuple2!46874))

(assert (=> d!1268965 (= (eq!143 (extractMap!346 (toList!2471 lt!1533970)) (+!293 (extractMap!346 (toList!2471 lt!1533979)) lt!1533977)) (= (content!7559 (toList!2472 (extractMap!346 (toList!2471 lt!1533970)))) (content!7559 (toList!2472 (+!293 (extractMap!346 (toList!2471 lt!1533979)) lt!1533977)))))))

(declare-fun bs!605595 () Bool)

(assert (= bs!605595 d!1268965))

(declare-fun m!4907791 () Bool)

(assert (=> bs!605595 m!4907791))

(declare-fun m!4907793 () Bool)

(assert (=> bs!605595 m!4907793))

(assert (=> b!4314423 d!1268965))

(declare-fun bs!605596 () Bool)

(declare-fun d!1268967 () Bool)

(assert (= bs!605596 (and d!1268967 b!4314423)))

(declare-fun lambda!133306 () Int)

(assert (=> bs!605596 (= lambda!133306 lambda!133303)))

(declare-fun lt!1534003 () ListMap!1751)

(assert (=> d!1268967 (invariantList!585 (toList!2472 lt!1534003))))

(declare-fun e!2683696 () ListMap!1751)

(assert (=> d!1268967 (= lt!1534003 e!2683696)))

(declare-fun c!733519 () Bool)

(assert (=> d!1268967 (= c!733519 ((_ is Cons!48276) (toList!2471 lt!1533979)))))

(assert (=> d!1268967 (forall!8769 (toList!2471 lt!1533979) lambda!133306)))

(assert (=> d!1268967 (= (extractMap!346 (toList!2471 lt!1533979)) lt!1534003)))

(declare-fun b!4314489 () Bool)

(declare-fun addToMapMapFromBucket!43 (List!48399 ListMap!1751) ListMap!1751)

(assert (=> b!4314489 (= e!2683696 (addToMapMapFromBucket!43 (_2!26720 (h!53724 (toList!2471 lt!1533979))) (extractMap!346 (t!355237 (toList!2471 lt!1533979)))))))

(declare-fun b!4314490 () Bool)

(assert (=> b!4314490 (= e!2683696 (ListMap!1752 Nil!48275))))

(assert (= (and d!1268967 c!733519) b!4314489))

(assert (= (and d!1268967 (not c!733519)) b!4314490))

(declare-fun m!4907795 () Bool)

(assert (=> d!1268967 m!4907795))

(declare-fun m!4907797 () Bool)

(assert (=> d!1268967 m!4907797))

(declare-fun m!4907799 () Bool)

(assert (=> b!4314489 m!4907799))

(assert (=> b!4314489 m!4907799))

(declare-fun m!4907801 () Bool)

(assert (=> b!4314489 m!4907801))

(assert (=> b!4314423 d!1268967))

(declare-fun bs!605597 () Bool)

(declare-fun d!1268969 () Bool)

(assert (= bs!605597 (and d!1268969 b!4314423)))

(declare-fun lambda!133311 () Int)

(assert (=> bs!605597 (= lambda!133311 lambda!133303)))

(declare-fun bs!605598 () Bool)

(assert (= bs!605598 (and d!1268969 d!1268967)))

(assert (=> bs!605598 (= lambda!133311 lambda!133306)))

(declare-fun e!2683699 () Bool)

(assert (=> d!1268969 e!2683699))

(declare-fun res!1768380 () Bool)

(assert (=> d!1268969 (=> (not res!1768380) (not e!2683699))))

(declare-fun lt!1534009 () ListLongMap!1085)

(assert (=> d!1268969 (= res!1768380 (forall!8769 (toList!2471 lt!1534009) lambda!133311))))

(assert (=> d!1268969 (= lt!1534009 (+!294 lt!1533979 (tuple2!46877 lt!1533966 lt!1533968)))))

(declare-fun lt!1534008 () Unit!67468)

(declare-fun choose!26314 (ListLongMap!1085 (_ BitVec 64) List!48399 Hashable!4617) Unit!67468)

(assert (=> d!1268969 (= lt!1534008 (choose!26314 lt!1533979 lt!1533966 lt!1533968 (hashF!6798 thiss!42308)))))

(assert (=> d!1268969 (forall!8769 (toList!2471 lt!1533979) lambda!133311)))

(assert (=> d!1268969 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!164 lt!1533979 lt!1533966 lt!1533968 (hashF!6798 thiss!42308)) lt!1534008)))

(declare-fun b!4314493 () Bool)

(assert (=> b!4314493 (= e!2683699 (allKeysSameHashInMap!362 lt!1534009 (hashF!6798 thiss!42308)))))

(assert (= (and d!1268969 res!1768380) b!4314493))

(declare-fun m!4907803 () Bool)

(assert (=> d!1268969 m!4907803))

(assert (=> d!1268969 m!4907711))

(declare-fun m!4907805 () Bool)

(assert (=> d!1268969 m!4907805))

(declare-fun m!4907807 () Bool)

(assert (=> d!1268969 m!4907807))

(declare-fun m!4907809 () Bool)

(assert (=> b!4314493 m!4907809))

(assert (=> b!4314423 d!1268969))

(declare-fun bs!605599 () Bool)

(declare-fun d!1268971 () Bool)

(assert (= bs!605599 (and d!1268971 b!4314423)))

(declare-fun lambda!133312 () Int)

(assert (=> bs!605599 (= lambda!133312 lambda!133303)))

(declare-fun bs!605600 () Bool)

(assert (= bs!605600 (and d!1268971 d!1268967)))

(assert (=> bs!605600 (= lambda!133312 lambda!133306)))

(declare-fun bs!605601 () Bool)

(assert (= bs!605601 (and d!1268971 d!1268969)))

(assert (=> bs!605601 (= lambda!133312 lambda!133311)))

(declare-fun lt!1534010 () ListMap!1751)

(assert (=> d!1268971 (invariantList!585 (toList!2472 lt!1534010))))

(declare-fun e!2683700 () ListMap!1751)

(assert (=> d!1268971 (= lt!1534010 e!2683700)))

(declare-fun c!733520 () Bool)

(assert (=> d!1268971 (= c!733520 ((_ is Cons!48276) (toList!2471 lt!1533970)))))

(assert (=> d!1268971 (forall!8769 (toList!2471 lt!1533970) lambda!133312)))

(assert (=> d!1268971 (= (extractMap!346 (toList!2471 lt!1533970)) lt!1534010)))

(declare-fun b!4314494 () Bool)

(assert (=> b!4314494 (= e!2683700 (addToMapMapFromBucket!43 (_2!26720 (h!53724 (toList!2471 lt!1533970))) (extractMap!346 (t!355237 (toList!2471 lt!1533970)))))))

(declare-fun b!4314495 () Bool)

(assert (=> b!4314495 (= e!2683700 (ListMap!1752 Nil!48275))))

(assert (= (and d!1268971 c!733520) b!4314494))

(assert (= (and d!1268971 (not c!733520)) b!4314495))

(declare-fun m!4907811 () Bool)

(assert (=> d!1268971 m!4907811))

(declare-fun m!4907813 () Bool)

(assert (=> d!1268971 m!4907813))

(declare-fun m!4907815 () Bool)

(assert (=> b!4314494 m!4907815))

(assert (=> b!4314494 m!4907815))

(declare-fun m!4907817 () Bool)

(assert (=> b!4314494 m!4907817))

(assert (=> b!4314423 d!1268971))

(declare-fun d!1268973 () Bool)

(assert (=> d!1268973 true))

(assert (=> d!1268973 true))

(declare-fun lambda!133315 () Int)

(declare-fun forall!8770 (List!48399 Int) Bool)

(assert (=> d!1268973 (= (allKeysSameHash!215 lt!1533974 lt!1533966 (hashF!6798 thiss!42308)) (forall!8770 lt!1533974 lambda!133315))))

(declare-fun bs!605602 () Bool)

(assert (= bs!605602 d!1268973))

(declare-fun m!4907819 () Bool)

(assert (=> bs!605602 m!4907819))

(assert (=> b!4314423 d!1268973))

(declare-fun d!1268975 () Bool)

(assert (=> d!1268975 (= (eq!143 (map!10283 (HashMap!4607 (Cell!18616 (_2!26721 lt!1533975)) (hashF!6798 thiss!42308) (_size!9446 thiss!42308) (defaultValue!4778 thiss!42308))) (+!293 lt!1533967 lt!1533977)) (= (content!7559 (toList!2472 (map!10283 (HashMap!4607 (Cell!18616 (_2!26721 lt!1533975)) (hashF!6798 thiss!42308) (_size!9446 thiss!42308) (defaultValue!4778 thiss!42308))))) (content!7559 (toList!2472 (+!293 lt!1533967 lt!1533977)))))))

(declare-fun bs!605603 () Bool)

(assert (= bs!605603 d!1268975))

(declare-fun m!4907821 () Bool)

(assert (=> bs!605603 m!4907821))

(declare-fun m!4907823 () Bool)

(assert (=> bs!605603 m!4907823))

(assert (=> b!4314423 d!1268975))

(declare-fun d!1268977 () Bool)

(declare-fun res!1768381 () Bool)

(declare-fun e!2683701 () Bool)

(assert (=> d!1268977 (=> res!1768381 e!2683701)))

(assert (=> d!1268977 (= res!1768381 (not ((_ is Cons!48275) lt!1533976)))))

(assert (=> d!1268977 (= (noDuplicateKeys!242 lt!1533976) e!2683701)))

(declare-fun b!4314500 () Bool)

(declare-fun e!2683702 () Bool)

(assert (=> b!4314500 (= e!2683701 e!2683702)))

(declare-fun res!1768382 () Bool)

(assert (=> b!4314500 (=> (not res!1768382) (not e!2683702))))

(assert (=> b!4314500 (= res!1768382 (not (containsKey!356 (t!355236 lt!1533976) (_1!26719 (h!53723 lt!1533976)))))))

(declare-fun b!4314501 () Bool)

(assert (=> b!4314501 (= e!2683702 (noDuplicateKeys!242 (t!355236 lt!1533976)))))

(assert (= (and d!1268977 (not res!1768381)) b!4314500))

(assert (= (and b!4314500 res!1768382) b!4314501))

(declare-fun m!4907825 () Bool)

(assert (=> b!4314500 m!4907825))

(declare-fun m!4907827 () Bool)

(assert (=> b!4314501 m!4907827))

(assert (=> b!4314423 d!1268977))

(declare-fun d!1268979 () Bool)

(assert (=> d!1268979 (noDuplicateKeys!242 (removePairForKey!239 lt!1533974 key!2048))))

(declare-fun lt!1534013 () Unit!67468)

(declare-fun choose!26315 (List!48399 K!9499) Unit!67468)

(assert (=> d!1268979 (= lt!1534013 (choose!26315 lt!1533974 key!2048))))

(assert (=> d!1268979 (noDuplicateKeys!242 lt!1533974)))

(assert (=> d!1268979 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!190 lt!1533974 key!2048) lt!1534013)))

(declare-fun bs!605604 () Bool)

(assert (= bs!605604 d!1268979))

(assert (=> bs!605604 m!4907687))

(assert (=> bs!605604 m!4907687))

(declare-fun m!4907829 () Bool)

(assert (=> bs!605604 m!4907829))

(declare-fun m!4907831 () Bool)

(assert (=> bs!605604 m!4907831))

(assert (=> bs!605604 m!4907763))

(assert (=> b!4314423 d!1268979))

(declare-fun d!1268981 () Bool)

(declare-fun e!2683705 () Bool)

(assert (=> d!1268981 e!2683705))

(declare-fun res!1768387 () Bool)

(assert (=> d!1268981 (=> (not res!1768387) (not e!2683705))))

(declare-fun lt!1534025 () ListMap!1751)

(declare-fun contains!10275 (ListMap!1751 K!9499) Bool)

(assert (=> d!1268981 (= res!1768387 (contains!10275 lt!1534025 (_1!26719 lt!1533977)))))

(declare-fun lt!1534022 () List!48399)

(assert (=> d!1268981 (= lt!1534025 (ListMap!1752 lt!1534022))))

(declare-fun lt!1534024 () Unit!67468)

(declare-fun lt!1534023 () Unit!67468)

(assert (=> d!1268981 (= lt!1534024 lt!1534023)))

(declare-datatypes ((Option!10261 0))(
  ( (None!10260) (Some!10260 (v!42521 V!9701)) )
))
(declare-fun getValueByKey!274 (List!48399 K!9499) Option!10261)

(assert (=> d!1268981 (= (getValueByKey!274 lt!1534022 (_1!26719 lt!1533977)) (Some!10260 (_2!26719 lt!1533977)))))

(declare-fun lemmaContainsTupThenGetReturnValue!82 (List!48399 K!9499 V!9701) Unit!67468)

(assert (=> d!1268981 (= lt!1534023 (lemmaContainsTupThenGetReturnValue!82 lt!1534022 (_1!26719 lt!1533977) (_2!26719 lt!1533977)))))

(declare-fun insertNoDuplicatedKeys!45 (List!48399 K!9499 V!9701) List!48399)

(assert (=> d!1268981 (= lt!1534022 (insertNoDuplicatedKeys!45 (toList!2472 (extractMap!346 (toList!2471 lt!1533979))) (_1!26719 lt!1533977) (_2!26719 lt!1533977)))))

(assert (=> d!1268981 (= (+!293 (extractMap!346 (toList!2471 lt!1533979)) lt!1533977) lt!1534025)))

(declare-fun b!4314506 () Bool)

(declare-fun res!1768388 () Bool)

(assert (=> b!4314506 (=> (not res!1768388) (not e!2683705))))

(assert (=> b!4314506 (= res!1768388 (= (getValueByKey!274 (toList!2472 lt!1534025) (_1!26719 lt!1533977)) (Some!10260 (_2!26719 lt!1533977))))))

(declare-fun b!4314507 () Bool)

(declare-fun contains!10276 (List!48399 tuple2!46874) Bool)

(assert (=> b!4314507 (= e!2683705 (contains!10276 (toList!2472 lt!1534025) lt!1533977))))

(assert (= (and d!1268981 res!1768387) b!4314506))

(assert (= (and b!4314506 res!1768388) b!4314507))

(declare-fun m!4907833 () Bool)

(assert (=> d!1268981 m!4907833))

(declare-fun m!4907835 () Bool)

(assert (=> d!1268981 m!4907835))

(declare-fun m!4907837 () Bool)

(assert (=> d!1268981 m!4907837))

(declare-fun m!4907839 () Bool)

(assert (=> d!1268981 m!4907839))

(declare-fun m!4907841 () Bool)

(assert (=> b!4314506 m!4907841))

(declare-fun m!4907843 () Bool)

(assert (=> b!4314507 m!4907843))

(assert (=> b!4314423 d!1268981))

(declare-fun d!1268983 () Bool)

(assert (=> d!1268983 (allKeysSameHash!215 (removePairForKey!239 lt!1533974 key!2048) lt!1533966 (hashF!6798 thiss!42308))))

(declare-fun lt!1534028 () Unit!67468)

(declare-fun choose!26316 (List!48399 K!9499 (_ BitVec 64) Hashable!4617) Unit!67468)

(assert (=> d!1268983 (= lt!1534028 (choose!26316 lt!1533974 key!2048 lt!1533966 (hashF!6798 thiss!42308)))))

(assert (=> d!1268983 (noDuplicateKeys!242 lt!1533974)))

(assert (=> d!1268983 (= (lemmaRemovePairForKeyPreservesHash!195 lt!1533974 key!2048 lt!1533966 (hashF!6798 thiss!42308)) lt!1534028)))

(declare-fun bs!605605 () Bool)

(assert (= bs!605605 d!1268983))

(assert (=> bs!605605 m!4907687))

(assert (=> bs!605605 m!4907687))

(declare-fun m!4907845 () Bool)

(assert (=> bs!605605 m!4907845))

(declare-fun m!4907847 () Bool)

(assert (=> bs!605605 m!4907847))

(assert (=> bs!605605 m!4907763))

(assert (=> b!4314423 d!1268983))

(declare-fun d!1268985 () Bool)

(declare-fun e!2683706 () Bool)

(assert (=> d!1268985 e!2683706))

(declare-fun res!1768389 () Bool)

(assert (=> d!1268985 (=> (not res!1768389) (not e!2683706))))

(declare-fun lt!1534032 () ListMap!1751)

(assert (=> d!1268985 (= res!1768389 (contains!10275 lt!1534032 (_1!26719 lt!1533977)))))

(declare-fun lt!1534029 () List!48399)

(assert (=> d!1268985 (= lt!1534032 (ListMap!1752 lt!1534029))))

(declare-fun lt!1534031 () Unit!67468)

(declare-fun lt!1534030 () Unit!67468)

(assert (=> d!1268985 (= lt!1534031 lt!1534030)))

(assert (=> d!1268985 (= (getValueByKey!274 lt!1534029 (_1!26719 lt!1533977)) (Some!10260 (_2!26719 lt!1533977)))))

(assert (=> d!1268985 (= lt!1534030 (lemmaContainsTupThenGetReturnValue!82 lt!1534029 (_1!26719 lt!1533977) (_2!26719 lt!1533977)))))

(assert (=> d!1268985 (= lt!1534029 (insertNoDuplicatedKeys!45 (toList!2472 lt!1533967) (_1!26719 lt!1533977) (_2!26719 lt!1533977)))))

(assert (=> d!1268985 (= (+!293 lt!1533967 lt!1533977) lt!1534032)))

(declare-fun b!4314508 () Bool)

(declare-fun res!1768390 () Bool)

(assert (=> b!4314508 (=> (not res!1768390) (not e!2683706))))

(assert (=> b!4314508 (= res!1768390 (= (getValueByKey!274 (toList!2472 lt!1534032) (_1!26719 lt!1533977)) (Some!10260 (_2!26719 lt!1533977))))))

(declare-fun b!4314509 () Bool)

(assert (=> b!4314509 (= e!2683706 (contains!10276 (toList!2472 lt!1534032) lt!1533977))))

(assert (= (and d!1268985 res!1768389) b!4314508))

(assert (= (and b!4314508 res!1768390) b!4314509))

(declare-fun m!4907849 () Bool)

(assert (=> d!1268985 m!4907849))

(declare-fun m!4907851 () Bool)

(assert (=> d!1268985 m!4907851))

(declare-fun m!4907853 () Bool)

(assert (=> d!1268985 m!4907853))

(declare-fun m!4907855 () Bool)

(assert (=> d!1268985 m!4907855))

(declare-fun m!4907857 () Bool)

(assert (=> b!4314508 m!4907857))

(declare-fun m!4907859 () Bool)

(assert (=> b!4314509 m!4907859))

(assert (=> b!4314423 d!1268985))

(declare-fun bs!605606 () Bool)

(declare-fun d!1268987 () Bool)

(assert (= bs!605606 (and d!1268987 b!4314423)))

(declare-fun lambda!133318 () Int)

(assert (=> bs!605606 (not (= lambda!133318 lambda!133303))))

(declare-fun bs!605607 () Bool)

(assert (= bs!605607 (and d!1268987 d!1268967)))

(assert (=> bs!605607 (not (= lambda!133318 lambda!133306))))

(declare-fun bs!605608 () Bool)

(assert (= bs!605608 (and d!1268987 d!1268969)))

(assert (=> bs!605608 (not (= lambda!133318 lambda!133311))))

(declare-fun bs!605609 () Bool)

(assert (= bs!605609 (and d!1268987 d!1268971)))

(assert (=> bs!605609 (not (= lambda!133318 lambda!133312))))

(assert (=> d!1268987 true))

(assert (=> d!1268987 (allKeysSameHash!215 lt!1533974 lt!1533966 (hashF!6798 thiss!42308))))

(declare-fun lt!1534035 () Unit!67468)

(declare-fun choose!26317 (List!48400 (_ BitVec 64) List!48399 Hashable!4617) Unit!67468)

(assert (=> d!1268987 (= lt!1534035 (choose!26317 (toList!2471 lt!1533979) lt!1533966 lt!1533974 (hashF!6798 thiss!42308)))))

(assert (=> d!1268987 (forall!8769 (toList!2471 lt!1533979) lambda!133318)))

(assert (=> d!1268987 (= (lemmaInLongMapAllKeySameHashThenForTuple!202 (toList!2471 lt!1533979) lt!1533966 lt!1533974 (hashF!6798 thiss!42308)) lt!1534035)))

(declare-fun bs!605610 () Bool)

(assert (= bs!605610 d!1268987))

(assert (=> bs!605610 m!4907735))

(declare-fun m!4907861 () Bool)

(assert (=> bs!605610 m!4907861))

(declare-fun m!4907863 () Bool)

(assert (=> bs!605610 m!4907863))

(assert (=> b!4314423 d!1268987))

(declare-fun d!1268989 () Bool)

(declare-fun e!2683709 () Bool)

(assert (=> d!1268989 e!2683709))

(declare-fun res!1768396 () Bool)

(assert (=> d!1268989 (=> (not res!1768396) (not e!2683709))))

(declare-fun lt!1534045 () ListLongMap!1085)

(assert (=> d!1268989 (= res!1768396 (contains!10273 lt!1534045 (_1!26720 (tuple2!46877 lt!1533966 lt!1533968))))))

(declare-fun lt!1534047 () List!48400)

(assert (=> d!1268989 (= lt!1534045 (ListLongMap!1086 lt!1534047))))

(declare-fun lt!1534044 () Unit!67468)

(declare-fun lt!1534046 () Unit!67468)

(assert (=> d!1268989 (= lt!1534044 lt!1534046)))

(assert (=> d!1268989 (= (getValueByKey!273 lt!1534047 (_1!26720 (tuple2!46877 lt!1533966 lt!1533968))) (Some!10259 (_2!26720 (tuple2!46877 lt!1533966 lt!1533968))))))

(declare-fun lemmaContainsTupThenGetReturnValue!83 (List!48400 (_ BitVec 64) List!48399) Unit!67468)

(assert (=> d!1268989 (= lt!1534046 (lemmaContainsTupThenGetReturnValue!83 lt!1534047 (_1!26720 (tuple2!46877 lt!1533966 lt!1533968)) (_2!26720 (tuple2!46877 lt!1533966 lt!1533968))))))

(declare-fun insertStrictlySorted!46 (List!48400 (_ BitVec 64) List!48399) List!48400)

(assert (=> d!1268989 (= lt!1534047 (insertStrictlySorted!46 (toList!2471 lt!1533979) (_1!26720 (tuple2!46877 lt!1533966 lt!1533968)) (_2!26720 (tuple2!46877 lt!1533966 lt!1533968))))))

(assert (=> d!1268989 (= (+!294 lt!1533979 (tuple2!46877 lt!1533966 lt!1533968)) lt!1534045)))

(declare-fun b!4314516 () Bool)

(declare-fun res!1768395 () Bool)

(assert (=> b!4314516 (=> (not res!1768395) (not e!2683709))))

(assert (=> b!4314516 (= res!1768395 (= (getValueByKey!273 (toList!2471 lt!1534045) (_1!26720 (tuple2!46877 lt!1533966 lt!1533968))) (Some!10259 (_2!26720 (tuple2!46877 lt!1533966 lt!1533968)))))))

(declare-fun b!4314517 () Bool)

(declare-fun contains!10277 (List!48400 tuple2!46876) Bool)

(assert (=> b!4314517 (= e!2683709 (contains!10277 (toList!2471 lt!1534045) (tuple2!46877 lt!1533966 lt!1533968)))))

(assert (= (and d!1268989 res!1768396) b!4314516))

(assert (= (and b!4314516 res!1768395) b!4314517))

(declare-fun m!4907865 () Bool)

(assert (=> d!1268989 m!4907865))

(declare-fun m!4907867 () Bool)

(assert (=> d!1268989 m!4907867))

(declare-fun m!4907869 () Bool)

(assert (=> d!1268989 m!4907869))

(declare-fun m!4907871 () Bool)

(assert (=> d!1268989 m!4907871))

(declare-fun m!4907873 () Bool)

(assert (=> b!4314516 m!4907873))

(declare-fun m!4907875 () Bool)

(assert (=> b!4314517 m!4907875))

(assert (=> b!4314423 d!1268989))

(declare-fun bs!605611 () Bool)

(declare-fun d!1268991 () Bool)

(assert (= bs!605611 (and d!1268991 d!1268967)))

(declare-fun lambda!133321 () Int)

(assert (=> bs!605611 (= lambda!133321 lambda!133306)))

(declare-fun bs!605612 () Bool)

(assert (= bs!605612 (and d!1268991 d!1268971)))

(assert (=> bs!605612 (= lambda!133321 lambda!133312)))

(declare-fun bs!605613 () Bool)

(assert (= bs!605613 (and d!1268991 d!1268969)))

(assert (=> bs!605613 (= lambda!133321 lambda!133311)))

(declare-fun bs!605614 () Bool)

(assert (= bs!605614 (and d!1268991 d!1268987)))

(assert (=> bs!605614 (not (= lambda!133321 lambda!133318))))

(declare-fun bs!605615 () Bool)

(assert (= bs!605615 (and d!1268991 b!4314423)))

(assert (=> bs!605615 (= lambda!133321 lambda!133303)))

(assert (=> d!1268991 (eq!143 (extractMap!346 (toList!2471 (+!294 lt!1533979 (tuple2!46877 lt!1533966 lt!1533968)))) (+!293 (extractMap!346 (toList!2471 lt!1533979)) (tuple2!46875 key!2048 v!9179)))))

(declare-fun lt!1534050 () Unit!67468)

(declare-fun choose!26318 (ListLongMap!1085 (_ BitVec 64) List!48399 K!9499 V!9701 Hashable!4617) Unit!67468)

(assert (=> d!1268991 (= lt!1534050 (choose!26318 lt!1533979 lt!1533966 lt!1533968 key!2048 v!9179 (hashF!6798 thiss!42308)))))

(assert (=> d!1268991 (forall!8769 (toList!2471 lt!1533979) lambda!133321)))

(assert (=> d!1268991 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!62 lt!1533979 lt!1533966 lt!1533968 key!2048 v!9179 (hashF!6798 thiss!42308)) lt!1534050)))

(declare-fun bs!605616 () Bool)

(assert (= bs!605616 d!1268991))

(declare-fun m!4907877 () Bool)

(assert (=> bs!605616 m!4907877))

(assert (=> bs!605616 m!4907737))

(declare-fun m!4907879 () Bool)

(assert (=> bs!605616 m!4907879))

(declare-fun m!4907881 () Bool)

(assert (=> bs!605616 m!4907881))

(assert (=> bs!605616 m!4907737))

(declare-fun m!4907883 () Bool)

(assert (=> bs!605616 m!4907883))

(assert (=> bs!605616 m!4907711))

(assert (=> bs!605616 m!4907879))

(assert (=> bs!605616 m!4907883))

(declare-fun m!4907885 () Bool)

(assert (=> bs!605616 m!4907885))

(assert (=> b!4314423 d!1268991))

(declare-fun bs!605617 () Bool)

(declare-fun d!1268993 () Bool)

(assert (= bs!605617 (and d!1268993 d!1268973)))

(declare-fun lambda!133322 () Int)

(assert (=> bs!605617 (= lambda!133322 lambda!133315)))

(assert (=> d!1268993 true))

(assert (=> d!1268993 true))

(assert (=> d!1268993 (= (allKeysSameHash!215 lt!1533976 lt!1533966 (hashF!6798 thiss!42308)) (forall!8770 lt!1533976 lambda!133322))))

(declare-fun bs!605618 () Bool)

(assert (= bs!605618 d!1268993))

(declare-fun m!4907887 () Bool)

(assert (=> bs!605618 m!4907887))

(assert (=> b!4314423 d!1268993))

(declare-fun d!1268995 () Bool)

(declare-fun res!1768401 () Bool)

(declare-fun e!2683714 () Bool)

(assert (=> d!1268995 (=> res!1768401 e!2683714)))

(assert (=> d!1268995 (= res!1768401 ((_ is Nil!48276) (toList!2471 lt!1533970)))))

(assert (=> d!1268995 (= (forall!8769 (toList!2471 lt!1533970) lambda!133303) e!2683714)))

(declare-fun b!4314522 () Bool)

(declare-fun e!2683715 () Bool)

(assert (=> b!4314522 (= e!2683714 e!2683715)))

(declare-fun res!1768402 () Bool)

(assert (=> b!4314522 (=> (not res!1768402) (not e!2683715))))

(declare-fun dynLambda!20463 (Int tuple2!46876) Bool)

(assert (=> b!4314522 (= res!1768402 (dynLambda!20463 lambda!133303 (h!53724 (toList!2471 lt!1533970))))))

(declare-fun b!4314523 () Bool)

(assert (=> b!4314523 (= e!2683715 (forall!8769 (t!355237 (toList!2471 lt!1533970)) lambda!133303))))

(assert (= (and d!1268995 (not res!1768401)) b!4314522))

(assert (= (and b!4314522 res!1768402) b!4314523))

(declare-fun b_lambda!126861 () Bool)

(assert (=> (not b_lambda!126861) (not b!4314522)))

(declare-fun m!4907889 () Bool)

(assert (=> b!4314522 m!4907889))

(declare-fun m!4907891 () Bool)

(assert (=> b!4314523 m!4907891))

(assert (=> b!4314423 d!1268995))

(declare-fun d!1268997 () Bool)

(declare-fun res!1768407 () Bool)

(declare-fun e!2683720 () Bool)

(assert (=> d!1268997 (=> res!1768407 e!2683720)))

(assert (=> d!1268997 (= res!1768407 (and ((_ is Cons!48275) lt!1533976) (= (_1!26719 (h!53723 lt!1533976)) key!2048)))))

(assert (=> d!1268997 (= (containsKey!356 lt!1533976 key!2048) e!2683720)))

(declare-fun b!4314528 () Bool)

(declare-fun e!2683721 () Bool)

(assert (=> b!4314528 (= e!2683720 e!2683721)))

(declare-fun res!1768408 () Bool)

(assert (=> b!4314528 (=> (not res!1768408) (not e!2683721))))

(assert (=> b!4314528 (= res!1768408 ((_ is Cons!48275) lt!1533976))))

(declare-fun b!4314529 () Bool)

(assert (=> b!4314529 (= e!2683721 (containsKey!356 (t!355236 lt!1533976) key!2048))))

(assert (= (and d!1268997 (not res!1768407)) b!4314528))

(assert (= (and b!4314528 res!1768408) b!4314529))

(declare-fun m!4907893 () Bool)

(assert (=> b!4314529 m!4907893))

(assert (=> b!4314424 d!1268997))

(declare-fun bs!605619 () Bool)

(declare-fun b!4314534 () Bool)

(assert (= bs!605619 (and b!4314534 d!1268967)))

(declare-fun lambda!133325 () Int)

(assert (=> bs!605619 (= lambda!133325 lambda!133306)))

(declare-fun bs!605620 () Bool)

(assert (= bs!605620 (and b!4314534 d!1268971)))

(assert (=> bs!605620 (= lambda!133325 lambda!133312)))

(declare-fun bs!605621 () Bool)

(assert (= bs!605621 (and b!4314534 d!1268987)))

(assert (=> bs!605621 (not (= lambda!133325 lambda!133318))))

(declare-fun bs!605622 () Bool)

(assert (= bs!605622 (and b!4314534 b!4314423)))

(assert (=> bs!605622 (= lambda!133325 lambda!133303)))

(declare-fun bs!605623 () Bool)

(assert (= bs!605623 (and b!4314534 d!1268969)))

(assert (=> bs!605623 (= lambda!133325 lambda!133311)))

(declare-fun bs!605624 () Bool)

(assert (= bs!605624 (and b!4314534 d!1268991)))

(assert (=> bs!605624 (= lambda!133325 lambda!133321)))

(declare-fun d!1268999 () Bool)

(declare-fun res!1768413 () Bool)

(declare-fun e!2683724 () Bool)

(assert (=> d!1268999 (=> (not res!1768413) (not e!2683724))))

(assert (=> d!1268999 (= res!1768413 (valid!3700 (v!42515 (underlying!9632 thiss!42308))))))

(assert (=> d!1268999 (= (valid!3699 thiss!42308) e!2683724)))

(declare-fun res!1768414 () Bool)

(assert (=> b!4314534 (=> (not res!1768414) (not e!2683724))))

(assert (=> b!4314534 (= res!1768414 (forall!8769 (toList!2471 (map!10284 (v!42515 (underlying!9632 thiss!42308)))) lambda!133325))))

(declare-fun b!4314535 () Bool)

(assert (=> b!4314535 (= e!2683724 (allKeysSameHashInMap!362 (map!10284 (v!42515 (underlying!9632 thiss!42308))) (hashF!6798 thiss!42308)))))

(assert (= (and d!1268999 res!1768413) b!4314534))

(assert (= (and b!4314534 res!1768414) b!4314535))

(assert (=> d!1268999 m!4907759))

(assert (=> b!4314534 m!4907703))

(declare-fun m!4907895 () Bool)

(assert (=> b!4314534 m!4907895))

(assert (=> b!4314535 m!4907703))

(assert (=> b!4314535 m!4907703))

(declare-fun m!4907897 () Bool)

(assert (=> b!4314535 m!4907897))

(assert (=> b!4314428 d!1268999))

(declare-fun d!1269001 () Bool)

(assert (=> d!1269001 (= (array_inv!5453 (_keys!5001 (v!42514 (underlying!9631 (v!42515 (underlying!9632 thiss!42308)))))) (bvsge (size!35626 (_keys!5001 (v!42514 (underlying!9631 (v!42515 (underlying!9632 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4314422 d!1269001))

(declare-fun d!1269003 () Bool)

(assert (=> d!1269003 (= (array_inv!5454 (_values!4982 (v!42514 (underlying!9631 (v!42515 (underlying!9632 thiss!42308)))))) (bvsge (size!35627 (_values!4982 (v!42514 (underlying!9631 (v!42515 (underlying!9632 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4314422 d!1269003))

(declare-fun bs!605625 () Bool)

(declare-fun b!4314563 () Bool)

(assert (= bs!605625 (and b!4314563 d!1268971)))

(declare-fun lambda!133328 () Int)

(assert (=> bs!605625 (= lambda!133328 lambda!133312)))

(declare-fun bs!605626 () Bool)

(assert (= bs!605626 (and b!4314563 d!1268987)))

(assert (=> bs!605626 (not (= lambda!133328 lambda!133318))))

(declare-fun bs!605627 () Bool)

(assert (= bs!605627 (and b!4314563 b!4314423)))

(assert (=> bs!605627 (= lambda!133328 lambda!133303)))

(declare-fun bs!605628 () Bool)

(assert (= bs!605628 (and b!4314563 d!1268967)))

(assert (=> bs!605628 (= lambda!133328 lambda!133306)))

(declare-fun bs!605629 () Bool)

(assert (= bs!605629 (and b!4314563 b!4314534)))

(assert (=> bs!605629 (= lambda!133328 lambda!133325)))

(declare-fun bs!605630 () Bool)

(assert (= bs!605630 (and b!4314563 d!1268969)))

(assert (=> bs!605630 (= lambda!133328 lambda!133311)))

(declare-fun bs!605631 () Bool)

(assert (= bs!605631 (and b!4314563 d!1268991)))

(assert (=> bs!605631 (= lambda!133328 lambda!133321)))

(declare-fun b!4314558 () Bool)

(declare-fun e!2683742 () Unit!67468)

(declare-fun lt!1534105 () Unit!67468)

(assert (=> b!4314558 (= e!2683742 lt!1534105)))

(declare-fun lt!1534106 () ListLongMap!1085)

(declare-fun call!298474 () ListLongMap!1085)

(assert (=> b!4314558 (= lt!1534106 call!298474)))

(declare-fun lemmaInGenericMapThenInLongMap!146 (ListLongMap!1085 K!9499 Hashable!4617) Unit!67468)

(assert (=> b!4314558 (= lt!1534105 (lemmaInGenericMapThenInLongMap!146 lt!1534106 key!2048 (hashF!6798 thiss!42308)))))

(declare-fun res!1768422 () Bool)

(declare-fun call!298477 () Bool)

(assert (=> b!4314558 (= res!1768422 call!298477)))

(declare-fun e!2683741 () Bool)

(assert (=> b!4314558 (=> (not res!1768422) (not e!2683741))))

(assert (=> b!4314558 e!2683741))

(declare-fun b!4314559 () Bool)

(declare-fun e!2683743 () Unit!67468)

(declare-fun Unit!67470 () Unit!67468)

(assert (=> b!4314559 (= e!2683743 Unit!67470)))

(declare-fun b!4314560 () Bool)

(declare-fun e!2683744 () Unit!67468)

(declare-fun Unit!67471 () Unit!67468)

(assert (=> b!4314560 (= e!2683744 Unit!67471)))

(declare-fun b!4314561 () Bool)

(assert (=> b!4314561 false))

(declare-fun lt!1534101 () Unit!67468)

(declare-fun lt!1534091 () Unit!67468)

(assert (=> b!4314561 (= lt!1534101 lt!1534091)))

(declare-fun lt!1534102 () List!48400)

(declare-fun lt!1534103 () (_ BitVec 64))

(declare-fun lt!1534096 () List!48399)

(assert (=> b!4314561 (contains!10277 lt!1534102 (tuple2!46877 lt!1534103 lt!1534096))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!158 (List!48400 (_ BitVec 64) List!48399) Unit!67468)

(assert (=> b!4314561 (= lt!1534091 (lemmaGetValueByKeyImpliesContainsTuple!158 lt!1534102 lt!1534103 lt!1534096))))

(assert (=> b!4314561 (= lt!1534096 (apply!11069 (v!42515 (underlying!9632 thiss!42308)) lt!1534103))))

(assert (=> b!4314561 (= lt!1534102 (toList!2471 (map!10284 (v!42515 (underlying!9632 thiss!42308)))))))

(declare-fun lt!1534092 () Unit!67468)

(declare-fun lt!1534107 () Unit!67468)

(assert (=> b!4314561 (= lt!1534092 lt!1534107)))

(declare-fun lt!1534100 () List!48400)

(declare-fun isDefined!7562 (Option!10260) Bool)

(assert (=> b!4314561 (isDefined!7562 (getValueByKey!273 lt!1534100 lt!1534103))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!193 (List!48400 (_ BitVec 64)) Unit!67468)

(assert (=> b!4314561 (= lt!1534107 (lemmaContainsKeyImpliesGetValueByKeyDefined!193 lt!1534100 lt!1534103))))

(assert (=> b!4314561 (= lt!1534100 (toList!2471 (map!10284 (v!42515 (underlying!9632 thiss!42308)))))))

(declare-fun lt!1534095 () Unit!67468)

(declare-fun lt!1534094 () Unit!67468)

(assert (=> b!4314561 (= lt!1534095 lt!1534094)))

(declare-fun lt!1534093 () List!48400)

(declare-fun containsKey!357 (List!48400 (_ BitVec 64)) Bool)

(assert (=> b!4314561 (containsKey!357 lt!1534093 lt!1534103)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!147 (List!48400 (_ BitVec 64)) Unit!67468)

(assert (=> b!4314561 (= lt!1534094 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!147 lt!1534093 lt!1534103))))

(assert (=> b!4314561 (= lt!1534093 (toList!2471 (map!10284 (v!42515 (underlying!9632 thiss!42308)))))))

(declare-fun Unit!67472 () Unit!67468)

(assert (=> b!4314561 (= e!2683743 Unit!67472)))

(declare-fun bm!298468 () Bool)

(declare-fun call!298478 () (_ BitVec 64))

(assert (=> bm!298468 (= call!298478 (hash!1082 (hashF!6798 thiss!42308) key!2048))))

(declare-fun e!2683740 () Bool)

(declare-fun b!4314562 () Bool)

(declare-datatypes ((Option!10262 0))(
  ( (None!10261) (Some!10261 (v!42522 tuple2!46874)) )
))
(declare-fun isDefined!7563 (Option!10262) Bool)

(declare-fun getPair!146 (List!48399 K!9499) Option!10262)

(assert (=> b!4314562 (= e!2683740 (isDefined!7563 (getPair!146 (apply!11069 (v!42515 (underlying!9632 thiss!42308)) lt!1534103) key!2048)))))

(declare-fun forallContained!1514 (List!48400 Int tuple2!46876) Unit!67468)

(assert (=> b!4314563 (= e!2683744 (forallContained!1514 (toList!2471 (map!10284 (v!42515 (underlying!9632 thiss!42308)))) lambda!133328 (tuple2!46877 lt!1534103 (apply!11069 (v!42515 (underlying!9632 thiss!42308)) lt!1534103))))))

(declare-fun c!733532 () Bool)

(assert (=> b!4314563 (= c!733532 (not (contains!10277 (toList!2471 (map!10284 (v!42515 (underlying!9632 thiss!42308)))) (tuple2!46877 lt!1534103 (apply!11069 (v!42515 (underlying!9632 thiss!42308)) lt!1534103)))))))

(declare-fun lt!1534097 () Unit!67468)

(assert (=> b!4314563 (= lt!1534097 e!2683743)))

(declare-fun bm!298469 () Bool)

(declare-fun c!733530 () Bool)

(assert (=> bm!298469 (= call!298477 (contains!10273 (ite c!733530 lt!1534106 call!298474) call!298478))))

(declare-fun b!4314564 () Bool)

(declare-fun e!2683739 () Bool)

(declare-fun call!298475 () Bool)

(assert (=> b!4314564 (= e!2683739 call!298475)))

(declare-fun bm!298470 () Bool)

(declare-fun call!298476 () Option!10262)

(assert (=> bm!298470 (= call!298475 (isDefined!7563 call!298476))))

(declare-fun b!4314565 () Bool)

(assert (=> b!4314565 false))

(declare-fun lt!1534099 () Unit!67468)

(declare-fun lt!1534098 () Unit!67468)

(assert (=> b!4314565 (= lt!1534099 lt!1534098)))

(declare-fun lt!1534108 () ListLongMap!1085)

(assert (=> b!4314565 (contains!10275 (extractMap!346 (toList!2471 lt!1534108)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!146 (ListLongMap!1085 K!9499 Hashable!4617) Unit!67468)

(assert (=> b!4314565 (= lt!1534098 (lemmaInLongMapThenInGenericMap!146 lt!1534108 key!2048 (hashF!6798 thiss!42308)))))

(assert (=> b!4314565 (= lt!1534108 call!298474)))

(declare-fun e!2683745 () Unit!67468)

(declare-fun Unit!67473 () Unit!67468)

(assert (=> b!4314565 (= e!2683745 Unit!67473)))

(declare-fun bm!298471 () Bool)

(assert (=> bm!298471 (= call!298474 (map!10284 (v!42515 (underlying!9632 thiss!42308))))))

(declare-fun bm!298472 () Bool)

(declare-fun call!298473 () List!48399)

(declare-fun apply!11071 (ListLongMap!1085 (_ BitVec 64)) List!48399)

(assert (=> bm!298472 (= call!298473 (apply!11071 (ite c!733530 lt!1534106 call!298474) call!298478))))

(declare-fun b!4314567 () Bool)

(assert (=> b!4314567 (= e!2683742 e!2683745)))

(declare-fun res!1768423 () Bool)

(assert (=> b!4314567 (= res!1768423 call!298477)))

(assert (=> b!4314567 (=> (not res!1768423) (not e!2683739))))

(declare-fun c!733529 () Bool)

(assert (=> b!4314567 (= c!733529 e!2683739)))

(declare-fun b!4314568 () Bool)

(declare-fun Unit!67474 () Unit!67468)

(assert (=> b!4314568 (= e!2683745 Unit!67474)))

(declare-fun bm!298473 () Bool)

(assert (=> bm!298473 (= call!298476 (getPair!146 call!298473 key!2048))))

(declare-fun d!1269005 () Bool)

(declare-fun lt!1534110 () Bool)

(assert (=> d!1269005 (= lt!1534110 (contains!10275 (map!10283 thiss!42308) key!2048))))

(assert (=> d!1269005 (= lt!1534110 e!2683740)))

(declare-fun res!1768421 () Bool)

(assert (=> d!1269005 (=> (not res!1768421) (not e!2683740))))

(assert (=> d!1269005 (= res!1768421 (contains!10274 (v!42515 (underlying!9632 thiss!42308)) lt!1534103))))

(declare-fun lt!1534109 () Unit!67468)

(assert (=> d!1269005 (= lt!1534109 e!2683742)))

(assert (=> d!1269005 (= c!733530 (contains!10275 (extractMap!346 (toList!2471 (map!10284 (v!42515 (underlying!9632 thiss!42308))))) key!2048))))

(declare-fun lt!1534104 () Unit!67468)

(assert (=> d!1269005 (= lt!1534104 e!2683744)))

(declare-fun c!733531 () Bool)

(assert (=> d!1269005 (= c!733531 (contains!10274 (v!42515 (underlying!9632 thiss!42308)) lt!1534103))))

(assert (=> d!1269005 (= lt!1534103 (hash!1082 (hashF!6798 thiss!42308) key!2048))))

(assert (=> d!1269005 (valid!3699 thiss!42308)))

(assert (=> d!1269005 (= (contains!10272 thiss!42308 key!2048) lt!1534110)))

(declare-fun b!4314566 () Bool)

(assert (=> b!4314566 (= e!2683741 call!298475)))

(assert (= (and d!1269005 c!733531) b!4314563))

(assert (= (and d!1269005 (not c!733531)) b!4314560))

(assert (= (and b!4314563 c!733532) b!4314561))

(assert (= (and b!4314563 (not c!733532)) b!4314559))

(assert (= (and d!1269005 c!733530) b!4314558))

(assert (= (and d!1269005 (not c!733530)) b!4314567))

(assert (= (and b!4314558 res!1768422) b!4314566))

(assert (= (and b!4314567 res!1768423) b!4314564))

(assert (= (and b!4314567 c!733529) b!4314565))

(assert (= (and b!4314567 (not c!733529)) b!4314568))

(assert (= (or b!4314558 b!4314566 b!4314567 b!4314564) bm!298468))

(assert (= (or b!4314558 b!4314567 b!4314564 b!4314565) bm!298471))

(assert (= (or b!4314558 b!4314567) bm!298469))

(assert (= (or b!4314566 b!4314564) bm!298472))

(assert (= (or b!4314566 b!4314564) bm!298473))

(assert (= (or b!4314566 b!4314564) bm!298470))

(assert (= (and d!1269005 res!1768421) b!4314562))

(assert (=> bm!298468 m!4907691))

(assert (=> d!1269005 m!4907703))

(declare-fun m!4907899 () Bool)

(assert (=> d!1269005 m!4907899))

(declare-fun m!4907901 () Bool)

(assert (=> d!1269005 m!4907901))

(assert (=> d!1269005 m!4907699))

(assert (=> d!1269005 m!4907691))

(assert (=> d!1269005 m!4907705))

(assert (=> d!1269005 m!4907899))

(declare-fun m!4907903 () Bool)

(assert (=> d!1269005 m!4907903))

(assert (=> d!1269005 m!4907705))

(declare-fun m!4907905 () Bool)

(assert (=> d!1269005 m!4907905))

(declare-fun m!4907907 () Bool)

(assert (=> b!4314565 m!4907907))

(assert (=> b!4314565 m!4907907))

(declare-fun m!4907909 () Bool)

(assert (=> b!4314565 m!4907909))

(declare-fun m!4907911 () Bool)

(assert (=> b!4314565 m!4907911))

(assert (=> b!4314561 m!4907703))

(declare-fun m!4907913 () Bool)

(assert (=> b!4314561 m!4907913))

(declare-fun m!4907915 () Bool)

(assert (=> b!4314561 m!4907915))

(declare-fun m!4907917 () Bool)

(assert (=> b!4314561 m!4907917))

(declare-fun m!4907919 () Bool)

(assert (=> b!4314561 m!4907919))

(declare-fun m!4907921 () Bool)

(assert (=> b!4314561 m!4907921))

(declare-fun m!4907923 () Bool)

(assert (=> b!4314561 m!4907923))

(declare-fun m!4907925 () Bool)

(assert (=> b!4314561 m!4907925))

(assert (=> b!4314561 m!4907913))

(declare-fun m!4907927 () Bool)

(assert (=> b!4314561 m!4907927))

(declare-fun m!4907929 () Bool)

(assert (=> b!4314558 m!4907929))

(declare-fun m!4907931 () Bool)

(assert (=> bm!298470 m!4907931))

(assert (=> b!4314562 m!4907927))

(assert (=> b!4314562 m!4907927))

(declare-fun m!4907933 () Bool)

(assert (=> b!4314562 m!4907933))

(assert (=> b!4314562 m!4907933))

(declare-fun m!4907935 () Bool)

(assert (=> b!4314562 m!4907935))

(declare-fun m!4907937 () Bool)

(assert (=> bm!298469 m!4907937))

(declare-fun m!4907939 () Bool)

(assert (=> bm!298473 m!4907939))

(assert (=> b!4314563 m!4907703))

(assert (=> b!4314563 m!4907927))

(declare-fun m!4907941 () Bool)

(assert (=> b!4314563 m!4907941))

(declare-fun m!4907943 () Bool)

(assert (=> b!4314563 m!4907943))

(declare-fun m!4907945 () Bool)

(assert (=> bm!298472 m!4907945))

(assert (=> bm!298471 m!4907703))

(assert (=> b!4314431 d!1269005))

(declare-fun d!1269007 () Bool)

(declare-fun map!10285 (LongMapFixedSize!9402) ListLongMap!1085)

(assert (=> d!1269007 (= (map!10284 (v!42515 (underlying!9632 thiss!42308))) (map!10285 (v!42514 (underlying!9631 (v!42515 (underlying!9632 thiss!42308))))))))

(declare-fun bs!605632 () Bool)

(assert (= bs!605632 d!1269007))

(declare-fun m!4907947 () Bool)

(assert (=> bs!605632 m!4907947))

(assert (=> b!4314431 d!1269007))

(declare-fun d!1269009 () Bool)

(declare-fun lt!1534111 () ListMap!1751)

(assert (=> d!1269009 (invariantList!585 (toList!2472 lt!1534111))))

(assert (=> d!1269009 (= lt!1534111 (extractMap!346 (toList!2471 (map!10284 (v!42515 (underlying!9632 thiss!42308))))))))

(assert (=> d!1269009 (valid!3699 thiss!42308)))

(assert (=> d!1269009 (= (map!10283 thiss!42308) lt!1534111)))

(declare-fun bs!605633 () Bool)

(assert (= bs!605633 d!1269009))

(declare-fun m!4907949 () Bool)

(assert (=> bs!605633 m!4907949))

(assert (=> bs!605633 m!4907703))

(assert (=> bs!605633 m!4907899))

(assert (=> bs!605633 m!4907699))

(assert (=> b!4314431 d!1269009))

(declare-fun bs!605634 () Bool)

(declare-fun d!1269011 () Bool)

(assert (= bs!605634 (and d!1269011 d!1268971)))

(declare-fun lambda!133331 () Int)

(assert (=> bs!605634 (not (= lambda!133331 lambda!133312))))

(declare-fun bs!605635 () Bool)

(assert (= bs!605635 (and d!1269011 d!1268987)))

(assert (=> bs!605635 (= lambda!133331 lambda!133318)))

(declare-fun bs!605636 () Bool)

(assert (= bs!605636 (and d!1269011 b!4314423)))

(assert (=> bs!605636 (not (= lambda!133331 lambda!133303))))

(declare-fun bs!605637 () Bool)

(assert (= bs!605637 (and d!1269011 b!4314563)))

(assert (=> bs!605637 (not (= lambda!133331 lambda!133328))))

(declare-fun bs!605638 () Bool)

(assert (= bs!605638 (and d!1269011 d!1268967)))

(assert (=> bs!605638 (not (= lambda!133331 lambda!133306))))

(declare-fun bs!605639 () Bool)

(assert (= bs!605639 (and d!1269011 b!4314534)))

(assert (=> bs!605639 (not (= lambda!133331 lambda!133325))))

(declare-fun bs!605640 () Bool)

(assert (= bs!605640 (and d!1269011 d!1268969)))

(assert (=> bs!605640 (not (= lambda!133331 lambda!133311))))

(declare-fun bs!605641 () Bool)

(assert (= bs!605641 (and d!1269011 d!1268991)))

(assert (=> bs!605641 (not (= lambda!133331 lambda!133321))))

(assert (=> d!1269011 true))

(assert (=> d!1269011 (= (allKeysSameHashInMap!362 lt!1533970 (hashF!6798 thiss!42308)) (forall!8769 (toList!2471 lt!1533970) lambda!133331))))

(declare-fun bs!605642 () Bool)

(assert (= bs!605642 d!1269011))

(declare-fun m!4907951 () Bool)

(assert (=> bs!605642 m!4907951))

(assert (=> b!4314421 d!1269011))

(declare-fun e!2683748 () Bool)

(declare-fun tp!1325558 () Bool)

(declare-fun b!4314573 () Bool)

(assert (=> b!4314573 (= e!2683748 (and tp_is_empty!23911 tp_is_empty!23909 tp!1325558))))

(assert (=> b!4314422 (= tp!1325550 e!2683748)))

(assert (= (and b!4314422 ((_ is Cons!48275) (zeroValue!4960 (v!42514 (underlying!9631 (v!42515 (underlying!9632 thiss!42308))))))) b!4314573))

(declare-fun b!4314574 () Bool)

(declare-fun e!2683749 () Bool)

(declare-fun tp!1325559 () Bool)

(assert (=> b!4314574 (= e!2683749 (and tp_is_empty!23911 tp_is_empty!23909 tp!1325559))))

(assert (=> b!4314422 (= tp!1325554 e!2683749)))

(assert (= (and b!4314422 ((_ is Cons!48275) (minValue!4960 (v!42514 (underlying!9631 (v!42515 (underlying!9632 thiss!42308))))))) b!4314574))

(declare-fun mapIsEmpty!20980 () Bool)

(declare-fun mapRes!20980 () Bool)

(assert (=> mapIsEmpty!20980 mapRes!20980))

(declare-fun tp!1325568 () Bool)

(declare-fun e!2683755 () Bool)

(declare-fun b!4314581 () Bool)

(assert (=> b!4314581 (= e!2683755 (and tp_is_empty!23911 tp_is_empty!23909 tp!1325568))))

(declare-fun e!2683754 () Bool)

(declare-fun tp!1325567 () Bool)

(declare-fun b!4314582 () Bool)

(assert (=> b!4314582 (= e!2683754 (and tp_is_empty!23911 tp_is_empty!23909 tp!1325567))))

(declare-fun condMapEmpty!20980 () Bool)

(declare-fun mapDefault!20980 () List!48399)

(assert (=> mapNonEmpty!20977 (= condMapEmpty!20980 (= mapRest!20977 ((as const (Array (_ BitVec 32) List!48399)) mapDefault!20980)))))

(assert (=> mapNonEmpty!20977 (= tp!1325551 (and e!2683754 mapRes!20980))))

(declare-fun mapNonEmpty!20980 () Bool)

(declare-fun tp!1325566 () Bool)

(assert (=> mapNonEmpty!20980 (= mapRes!20980 (and tp!1325566 e!2683755))))

(declare-fun mapRest!20980 () (Array (_ BitVec 32) List!48399))

(declare-fun mapValue!20980 () List!48399)

(declare-fun mapKey!20980 () (_ BitVec 32))

(assert (=> mapNonEmpty!20980 (= mapRest!20977 (store mapRest!20980 mapKey!20980 mapValue!20980))))

(assert (= (and mapNonEmpty!20977 condMapEmpty!20980) mapIsEmpty!20980))

(assert (= (and mapNonEmpty!20977 (not condMapEmpty!20980)) mapNonEmpty!20980))

(assert (= (and mapNonEmpty!20980 ((_ is Cons!48275) mapValue!20980)) b!4314581))

(assert (= (and mapNonEmpty!20977 ((_ is Cons!48275) mapDefault!20980)) b!4314582))

(declare-fun m!4907953 () Bool)

(assert (=> mapNonEmpty!20980 m!4907953))

(declare-fun tp!1325569 () Bool)

(declare-fun b!4314583 () Bool)

(declare-fun e!2683756 () Bool)

(assert (=> b!4314583 (= e!2683756 (and tp_is_empty!23911 tp_is_empty!23909 tp!1325569))))

(assert (=> mapNonEmpty!20977 (= tp!1325553 e!2683756)))

(assert (= (and mapNonEmpty!20977 ((_ is Cons!48275) mapValue!20977)) b!4314583))

(declare-fun b!4314584 () Bool)

(declare-fun tp!1325570 () Bool)

(declare-fun e!2683757 () Bool)

(assert (=> b!4314584 (= e!2683757 (and tp_is_empty!23911 tp_is_empty!23909 tp!1325570))))

(assert (=> b!4314427 (= tp!1325555 e!2683757)))

(assert (= (and b!4314427 ((_ is Cons!48275) mapDefault!20977)) b!4314584))

(declare-fun b_lambda!126863 () Bool)

(assert (= b_lambda!126859 (or (and b!4314422 b_free!128763) b_lambda!126863)))

(declare-fun b_lambda!126865 () Bool)

(assert (= b_lambda!126861 (or b!4314423 b_lambda!126865)))

(declare-fun bs!605643 () Bool)

(declare-fun d!1269013 () Bool)

(assert (= bs!605643 (and d!1269013 b!4314423)))

(assert (=> bs!605643 (= (dynLambda!20463 lambda!133303 (h!53724 (toList!2471 lt!1533970))) (noDuplicateKeys!242 (_2!26720 (h!53724 (toList!2471 lt!1533970)))))))

(declare-fun m!4907955 () Bool)

(assert (=> bs!605643 m!4907955))

(assert (=> b!4314522 d!1269013))

(check-sat (not bm!298470) (not d!1268971) (not bm!298473) (not b!4314507) (not bm!298455) (not bm!298471) b_and!340235 (not d!1268989) (not d!1269009) (not b!4314563) (not b!4314516) (not bm!298469) (not b!4314477) (not tb!257323) (not d!1268955) (not b!4314573) (not b!4314455) (not b!4314458) (not b!4314489) (not mapNonEmpty!20980) (not d!1269011) (not d!1268973) (not b!4314457) (not d!1268965) (not b!4314493) (not d!1268991) (not b!4314534) (not bs!605643) (not b!4314471) (not d!1268967) (not bm!298472) (not b!4314508) (not d!1268957) (not b!4314453) (not b!4314523) (not b!4314500) (not b!4314584) (not b_next!129467) (not b!4314558) (not b_lambda!126863) (not b!4314517) (not d!1268953) (not b!4314494) (not d!1269005) tp_is_empty!23911 (not d!1268983) (not b!4314581) (not b!4314583) (not d!1268981) (not bm!298468) (not b!4314529) (not bm!298454) (not d!1269007) (not d!1268993) (not b!4314501) (not d!1268985) (not b_next!129469) (not b!4314484) (not b!4314509) (not d!1268959) (not d!1268975) (not d!1268979) b_and!340237 tp_is_empty!23909 (not b!4314574) (not d!1268963) (not b!4314565) (not b!4314561) (not b!4314562) (not b!4314535) (not b_lambda!126865) (not b!4314454) (not d!1268999) (not b!4314506) (not b!4314582) (not d!1268987) (not d!1268969) (not b!4314483))
(check-sat b_and!340237 b_and!340235 (not b_next!129469) (not b_next!129467))
