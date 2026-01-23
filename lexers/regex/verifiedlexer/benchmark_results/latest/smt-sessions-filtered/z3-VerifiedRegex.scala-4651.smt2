; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242902 () Bool)

(assert start!242902)

(declare-fun b!2486438 () Bool)

(declare-fun b_free!72545 () Bool)

(declare-fun b_next!73249 () Bool)

(assert (=> b!2486438 (= b_free!72545 (not b_next!73249))))

(declare-fun tp!795947 () Bool)

(declare-fun b_and!188829 () Bool)

(assert (=> b!2486438 (= tp!795947 b_and!188829)))

(declare-fun b!2486435 () Bool)

(declare-fun b_free!72547 () Bool)

(declare-fun b_next!73251 () Bool)

(assert (=> b!2486435 (= b_free!72547 (not b_next!73251))))

(declare-fun tp!795951 () Bool)

(declare-fun b_and!188831 () Bool)

(assert (=> b!2486435 (= tp!795951 b_and!188831)))

(declare-fun b!2486422 () Bool)

(declare-fun res!1052518 () Bool)

(declare-fun e!1578791 () Bool)

(assert (=> b!2486422 (=> res!1052518 e!1578791)))

(declare-datatypes ((V!5842 0))(
  ( (V!5843 (val!8987 Int)) )
))
(declare-datatypes ((K!5640 0))(
  ( (K!5641 (val!8988 Int)) )
))
(declare-datatypes ((tuple2!29232 0))(
  ( (tuple2!29233 (_1!17158 K!5640) (_2!17158 V!5842)) )
))
(declare-datatypes ((List!29321 0))(
  ( (Nil!29221) (Cons!29221 (h!34638 tuple2!29232) (t!211010 List!29321)) )
))
(declare-datatypes ((tuple2!29234 0))(
  ( (tuple2!29235 (_1!17159 (_ BitVec 64)) (_2!17159 List!29321)) )
))
(declare-datatypes ((List!29322 0))(
  ( (Nil!29222) (Cons!29222 (h!34639 tuple2!29234) (t!211011 List!29322)) )
))
(declare-datatypes ((ListLongMap!627 0))(
  ( (ListLongMap!628 (toList!1675 List!29322)) )
))
(declare-fun lt!892536 () ListLongMap!627)

(declare-datatypes ((Unit!42885 0))(
  ( (Unit!42886) )
))
(declare-datatypes ((Hashable!3332 0))(
  ( (HashableExt!3331 (__x!19172 Int)) )
))
(declare-datatypes ((array!12181 0))(
  ( (array!12182 (arr!5434 (Array (_ BitVec 32) List!29321)) (size!22853 (_ BitVec 32))) )
))
(declare-datatypes ((array!12183 0))(
  ( (array!12184 (arr!5435 (Array (_ BitVec 32) (_ BitVec 64))) (size!22854 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6844 0))(
  ( (LongMapFixedSize!6845 (defaultEntry!3796 Int) (mask!8622 (_ BitVec 32)) (extraKeys!3670 (_ BitVec 32)) (zeroValue!3680 List!29321) (minValue!3680 List!29321) (_size!6891 (_ BitVec 32)) (_keys!3719 array!12183) (_values!3702 array!12181) (_vacant!3483 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13505 0))(
  ( (Cell!13506 (v!31664 LongMapFixedSize!6844)) )
))
(declare-datatypes ((MutLongMap!3422 0))(
  ( (LongMap!3422 (underlying!7051 Cell!13505)) (MutLongMapExt!3421 (__x!19173 Int)) )
))
(declare-datatypes ((Cell!13507 0))(
  ( (Cell!13508 (v!31665 MutLongMap!3422)) )
))
(declare-datatypes ((MutableMap!3332 0))(
  ( (MutableMapExt!3331 (__x!19174 Int)) (HashMap!3332 (underlying!7052 Cell!13507) (hashF!5343 Hashable!3332) (_size!6892 (_ BitVec 32)) (defaultValue!3494 Int)) )
))
(declare-datatypes ((tuple2!29236 0))(
  ( (tuple2!29237 (_1!17160 Unit!42885) (_2!17160 MutableMap!3332)) )
))
(declare-fun lt!892545 () tuple2!29236)

(declare-fun allKeysSameHashInMap!198 (ListLongMap!627 Hashable!3332) Bool)

(assert (=> b!2486422 (= res!1052518 (not (allKeysSameHashInMap!198 lt!892536 (hashF!5343 (_2!17160 lt!892545)))))))

(declare-fun b!2486423 () Bool)

(declare-fun e!1578792 () Bool)

(declare-fun e!1578793 () Bool)

(assert (=> b!2486423 (= e!1578792 (not e!1578793))))

(declare-fun res!1052513 () Bool)

(assert (=> b!2486423 (=> res!1052513 e!1578793)))

(declare-datatypes ((tuple2!29238 0))(
  ( (tuple2!29239 (_1!17161 Bool) (_2!17161 MutLongMap!3422)) )
))
(declare-fun lt!892547 () tuple2!29238)

(assert (=> b!2486423 (= res!1052513 (not (_1!17161 lt!892547)))))

(declare-fun lt!892552 () List!29321)

(declare-fun noDuplicateKeys!121 (List!29321) Bool)

(assert (=> b!2486423 (noDuplicateKeys!121 lt!892552)))

(declare-fun lt!892532 () Unit!42885)

(declare-fun lt!892537 () List!29321)

(declare-fun key!2246 () K!5640)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!101 (List!29321 K!5640) Unit!42885)

(assert (=> b!2486423 (= lt!892532 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!101 lt!892537 key!2246))))

(declare-fun lt!892551 () Cell!13507)

(declare-fun thiss!42540 () MutableMap!3332)

(declare-fun Unit!42887 () Unit!42885)

(declare-fun Unit!42888 () Unit!42885)

(assert (=> b!2486423 (= lt!892545 (ite (_1!17161 lt!892547) (tuple2!29237 Unit!42887 (HashMap!3332 lt!892551 (hashF!5343 thiss!42540) (bvsub (_size!6892 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3494 thiss!42540))) (tuple2!29237 Unit!42888 (HashMap!3332 lt!892551 (hashF!5343 thiss!42540) (_size!6892 thiss!42540) (defaultValue!3494 thiss!42540)))))))

(assert (=> b!2486423 (= lt!892551 (Cell!13508 (_2!17161 lt!892547)))))

(declare-fun lt!892546 () (_ BitVec 64))

(declare-fun update!242 (MutLongMap!3422 (_ BitVec 64) List!29321) tuple2!29238)

(assert (=> b!2486423 (= lt!892547 (update!242 (v!31665 (underlying!7052 thiss!42540)) lt!892546 lt!892552))))

(declare-fun removePairForKey!113 (List!29321 K!5640) List!29321)

(assert (=> b!2486423 (= lt!892552 (removePairForKey!113 lt!892537 key!2246))))

(declare-datatypes ((ListMap!1153 0))(
  ( (ListMap!1154 (toList!1676 List!29321)) )
))
(declare-fun lt!892540 () ListMap!1153)

(declare-fun map!6333 (MutableMap!3332) ListMap!1153)

(assert (=> b!2486423 (= lt!892540 (map!6333 thiss!42540))))

(declare-fun lt!892548 () Unit!42885)

(declare-fun lambda!94621 () Int)

(declare-fun forallContained!902 (List!29322 Int tuple2!29234) Unit!42885)

(assert (=> b!2486423 (= lt!892548 (forallContained!902 (toList!1675 lt!892536) lambda!94621 (tuple2!29235 lt!892546 lt!892537)))))

(declare-fun map!6334 (MutLongMap!3422) ListLongMap!627)

(assert (=> b!2486423 (= lt!892536 (map!6334 (v!31665 (underlying!7052 thiss!42540))))))

(declare-fun apply!6992 (MutLongMap!3422 (_ BitVec 64)) List!29321)

(assert (=> b!2486423 (= lt!892537 (apply!6992 (v!31665 (underlying!7052 thiss!42540)) lt!892546))))

(declare-fun hash!776 (Hashable!3332 K!5640) (_ BitVec 64))

(assert (=> b!2486423 (= lt!892546 (hash!776 (hashF!5343 thiss!42540) key!2246))))

(declare-fun b!2486424 () Bool)

(declare-fun e!1578786 () Bool)

(declare-fun e!1578795 () Bool)

(assert (=> b!2486424 (= e!1578786 e!1578795)))

(declare-fun b!2486425 () Bool)

(declare-fun e!1578785 () Bool)

(declare-fun contains!5227 (ListMap!1153 K!5640) Bool)

(assert (=> b!2486425 (= e!1578785 (contains!5227 lt!892540 key!2246))))

(declare-fun b!2486426 () Bool)

(declare-fun res!1052511 () Bool)

(assert (=> b!2486426 (=> (not res!1052511) (not e!1578792))))

(declare-fun valid!2631 (MutableMap!3332) Bool)

(assert (=> b!2486426 (= res!1052511 (valid!2631 thiss!42540))))

(declare-fun res!1052508 () Bool)

(assert (=> start!242902 (=> (not res!1052508) (not e!1578792))))

(get-info :version)

(assert (=> start!242902 (= res!1052508 ((_ is HashMap!3332) thiss!42540))))

(assert (=> start!242902 e!1578792))

(declare-fun e!1578788 () Bool)

(assert (=> start!242902 e!1578788))

(declare-fun tp_is_empty!12403 () Bool)

(assert (=> start!242902 tp_is_empty!12403))

(declare-fun mapIsEmpty!15780 () Bool)

(declare-fun mapRes!15780 () Bool)

(assert (=> mapIsEmpty!15780 mapRes!15780))

(declare-fun b!2486427 () Bool)

(declare-fun e!1578794 () Bool)

(assert (=> b!2486427 (= e!1578791 e!1578794)))

(declare-fun res!1052510 () Bool)

(assert (=> b!2486427 (=> res!1052510 e!1578794)))

(declare-fun lt!892550 () (_ BitVec 64))

(assert (=> b!2486427 (= res!1052510 (not (= lt!892550 lt!892546)))))

(assert (=> b!2486427 (= lt!892550 (hash!776 (hashF!5343 (_2!17160 lt!892545)) key!2246))))

(declare-fun b!2486428 () Bool)

(declare-fun res!1052517 () Bool)

(assert (=> b!2486428 (=> res!1052517 e!1578791)))

(declare-fun extractMap!193 (List!29322) ListMap!1153)

(assert (=> b!2486428 (= res!1052517 (not (contains!5227 (extractMap!193 (toList!1675 lt!892536)) key!2246)))))

(declare-fun b!2486429 () Bool)

(declare-fun e!1578784 () Bool)

(declare-fun tp!795950 () Bool)

(assert (=> b!2486429 (= e!1578784 (and tp!795950 mapRes!15780))))

(declare-fun condMapEmpty!15780 () Bool)

(declare-fun mapDefault!15780 () List!29321)

(assert (=> b!2486429 (= condMapEmpty!15780 (= (arr!5434 (_values!3702 (v!31664 (underlying!7051 (v!31665 (underlying!7052 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29321)) mapDefault!15780)))))

(declare-fun b!2486430 () Bool)

(declare-fun lt!892542 () List!29321)

(assert (=> b!2486430 (= e!1578794 (= lt!892552 (removePairForKey!113 lt!892542 key!2246)))))

(declare-fun lt!892531 () tuple2!29234)

(declare-fun lt!892544 () Unit!42885)

(assert (=> b!2486430 (= lt!892544 (forallContained!902 (toList!1675 lt!892536) lambda!94621 lt!892531))))

(declare-fun contains!5228 (List!29322 tuple2!29234) Bool)

(assert (=> b!2486430 (contains!5228 (toList!1675 lt!892536) lt!892531)))

(assert (=> b!2486430 (= lt!892531 (tuple2!29235 lt!892546 lt!892542))))

(declare-fun lt!892533 () Unit!42885)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!90 (List!29322 (_ BitVec 64) List!29321) Unit!42885)

(assert (=> b!2486430 (= lt!892533 (lemmaGetValueByKeyImpliesContainsTuple!90 (toList!1675 lt!892536) lt!892546 lt!892542))))

(declare-fun apply!6993 (ListLongMap!627 (_ BitVec 64)) List!29321)

(assert (=> b!2486430 (= lt!892542 (apply!6993 lt!892536 lt!892546))))

(declare-fun contains!5229 (ListLongMap!627 (_ BitVec 64)) Bool)

(assert (=> b!2486430 (contains!5229 lt!892536 lt!892550)))

(declare-fun lt!892543 () Unit!42885)

(declare-fun lemmaInGenMapThenLongMapContainsHash!32 (ListLongMap!627 K!5640 Hashable!3332) Unit!42885)

(assert (=> b!2486430 (= lt!892543 (lemmaInGenMapThenLongMapContainsHash!32 lt!892536 key!2246 (hashF!5343 (_2!17160 lt!892545))))))

(declare-fun b!2486431 () Bool)

(declare-fun res!1052519 () Bool)

(assert (=> b!2486431 (=> (not res!1052519) (not e!1578785))))

(declare-fun lt!892535 () ListLongMap!627)

(assert (=> b!2486431 (= res!1052519 (allKeysSameHashInMap!198 lt!892535 (hashF!5343 (_2!17160 lt!892545))))))

(declare-fun b!2486432 () Bool)

(declare-fun e!1578787 () Bool)

(declare-fun lt!892539 () ListLongMap!627)

(assert (=> b!2486432 (= e!1578787 (allKeysSameHashInMap!198 lt!892539 (hashF!5343 (_2!17160 lt!892545))))))

(declare-fun b!2486433 () Bool)

(declare-fun res!1052514 () Bool)

(assert (=> b!2486433 (=> (not res!1052514) (not e!1578785))))

(assert (=> b!2486433 (= res!1052514 (valid!2631 (_2!17160 lt!892545)))))

(declare-fun b!2486434 () Bool)

(declare-fun e!1578790 () Bool)

(declare-fun lt!892549 () MutLongMap!3422)

(assert (=> b!2486434 (= e!1578790 (and e!1578786 ((_ is LongMap!3422) lt!892549)))))

(assert (=> b!2486434 (= lt!892549 (v!31665 (underlying!7052 thiss!42540)))))

(assert (=> b!2486435 (= e!1578788 (and e!1578790 tp!795951))))

(declare-fun mapNonEmpty!15780 () Bool)

(declare-fun tp!795946 () Bool)

(declare-fun tp!795949 () Bool)

(assert (=> mapNonEmpty!15780 (= mapRes!15780 (and tp!795946 tp!795949))))

(declare-fun mapKey!15780 () (_ BitVec 32))

(declare-fun mapValue!15780 () List!29321)

(declare-fun mapRest!15780 () (Array (_ BitVec 32) List!29321))

(assert (=> mapNonEmpty!15780 (= (arr!5434 (_values!3702 (v!31664 (underlying!7051 (v!31665 (underlying!7052 thiss!42540)))))) (store mapRest!15780 mapKey!15780 mapValue!15780))))

(declare-fun b!2486436 () Bool)

(assert (=> b!2486436 (= e!1578793 e!1578791)))

(declare-fun res!1052509 () Bool)

(assert (=> b!2486436 (=> res!1052509 e!1578791)))

(declare-fun forall!6015 (List!29322 Int) Bool)

(assert (=> b!2486436 (= res!1052509 (not (forall!6015 (toList!1675 lt!892536) lambda!94621)))))

(assert (=> b!2486436 e!1578785))

(declare-fun res!1052516 () Bool)

(assert (=> b!2486436 (=> (not res!1052516) (not e!1578785))))

(assert (=> b!2486436 (= res!1052516 (forall!6015 (toList!1675 lt!892535) lambda!94621))))

(assert (=> b!2486436 (= lt!892535 (map!6334 (v!31665 (underlying!7052 (_2!17160 lt!892545)))))))

(assert (=> b!2486436 e!1578787))

(declare-fun res!1052515 () Bool)

(assert (=> b!2486436 (=> (not res!1052515) (not e!1578787))))

(assert (=> b!2486436 (= res!1052515 (forall!6015 (toList!1675 lt!892539) lambda!94621))))

(declare-fun +!113 (ListLongMap!627 tuple2!29234) ListLongMap!627)

(assert (=> b!2486436 (= lt!892539 (+!113 lt!892536 (tuple2!29235 lt!892546 lt!892552)))))

(declare-fun lt!892541 () Unit!42885)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!76 (ListLongMap!627 (_ BitVec 64) List!29321 Hashable!3332) Unit!42885)

(assert (=> b!2486436 (= lt!892541 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!76 lt!892536 lt!892546 lt!892552 (hashF!5343 (_2!17160 lt!892545))))))

(declare-fun allKeysSameHash!96 (List!29321 (_ BitVec 64) Hashable!3332) Bool)

(assert (=> b!2486436 (allKeysSameHash!96 lt!892552 lt!892546 (hashF!5343 (_2!17160 lt!892545)))))

(declare-fun lt!892534 () Unit!42885)

(declare-fun lemmaRemovePairForKeyPreservesHash!85 (List!29321 K!5640 (_ BitVec 64) Hashable!3332) Unit!42885)

(assert (=> b!2486436 (= lt!892534 (lemmaRemovePairForKeyPreservesHash!85 lt!892537 key!2246 lt!892546 (hashF!5343 (_2!17160 lt!892545))))))

(assert (=> b!2486436 (allKeysSameHash!96 lt!892537 lt!892546 (hashF!5343 (_2!17160 lt!892545)))))

(declare-fun lt!892538 () Unit!42885)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!89 (List!29322 (_ BitVec 64) List!29321 Hashable!3332) Unit!42885)

(assert (=> b!2486436 (= lt!892538 (lemmaInLongMapAllKeySameHashThenForTuple!89 (toList!1675 lt!892536) lt!892546 lt!892537 (hashF!5343 (_2!17160 lt!892545))))))

(declare-fun b!2486437 () Bool)

(declare-fun res!1052512 () Bool)

(assert (=> b!2486437 (=> (not res!1052512) (not e!1578792))))

(declare-fun contains!5230 (MutableMap!3332 K!5640) Bool)

(assert (=> b!2486437 (= res!1052512 (contains!5230 thiss!42540 key!2246))))

(declare-fun tp!795948 () Bool)

(declare-fun e!1578783 () Bool)

(declare-fun tp!795945 () Bool)

(declare-fun array_inv!3907 (array!12183) Bool)

(declare-fun array_inv!3908 (array!12181) Bool)

(assert (=> b!2486438 (= e!1578783 (and tp!795947 tp!795945 tp!795948 (array_inv!3907 (_keys!3719 (v!31664 (underlying!7051 (v!31665 (underlying!7052 thiss!42540)))))) (array_inv!3908 (_values!3702 (v!31664 (underlying!7051 (v!31665 (underlying!7052 thiss!42540)))))) e!1578784))))

(declare-fun b!2486439 () Bool)

(assert (=> b!2486439 (= e!1578795 e!1578783)))

(assert (= (and start!242902 res!1052508) b!2486426))

(assert (= (and b!2486426 res!1052511) b!2486437))

(assert (= (and b!2486437 res!1052512) b!2486423))

(assert (= (and b!2486423 (not res!1052513)) b!2486436))

(assert (= (and b!2486436 res!1052515) b!2486432))

(assert (= (and b!2486436 res!1052516) b!2486431))

(assert (= (and b!2486431 res!1052519) b!2486433))

(assert (= (and b!2486433 res!1052514) b!2486425))

(assert (= (and b!2486436 (not res!1052509)) b!2486422))

(assert (= (and b!2486422 (not res!1052518)) b!2486428))

(assert (= (and b!2486428 (not res!1052517)) b!2486427))

(assert (= (and b!2486427 (not res!1052510)) b!2486430))

(assert (= (and b!2486429 condMapEmpty!15780) mapIsEmpty!15780))

(assert (= (and b!2486429 (not condMapEmpty!15780)) mapNonEmpty!15780))

(assert (= b!2486438 b!2486429))

(assert (= b!2486439 b!2486438))

(assert (= b!2486424 b!2486439))

(assert (= (and b!2486434 ((_ is LongMap!3422) (v!31665 (underlying!7052 thiss!42540)))) b!2486424))

(assert (= b!2486435 b!2486434))

(assert (= (and start!242902 ((_ is HashMap!3332) thiss!42540)) b!2486435))

(declare-fun m!2854899 () Bool)

(assert (=> b!2486432 m!2854899))

(declare-fun m!2854901 () Bool)

(assert (=> b!2486437 m!2854901))

(declare-fun m!2854903 () Bool)

(assert (=> b!2486430 m!2854903))

(declare-fun m!2854905 () Bool)

(assert (=> b!2486430 m!2854905))

(declare-fun m!2854907 () Bool)

(assert (=> b!2486430 m!2854907))

(declare-fun m!2854909 () Bool)

(assert (=> b!2486430 m!2854909))

(declare-fun m!2854911 () Bool)

(assert (=> b!2486430 m!2854911))

(declare-fun m!2854913 () Bool)

(assert (=> b!2486430 m!2854913))

(declare-fun m!2854915 () Bool)

(assert (=> b!2486430 m!2854915))

(declare-fun m!2854917 () Bool)

(assert (=> b!2486433 m!2854917))

(declare-fun m!2854919 () Bool)

(assert (=> mapNonEmpty!15780 m!2854919))

(declare-fun m!2854921 () Bool)

(assert (=> b!2486428 m!2854921))

(assert (=> b!2486428 m!2854921))

(declare-fun m!2854923 () Bool)

(assert (=> b!2486428 m!2854923))

(declare-fun m!2854925 () Bool)

(assert (=> b!2486425 m!2854925))

(declare-fun m!2854927 () Bool)

(assert (=> b!2486423 m!2854927))

(declare-fun m!2854929 () Bool)

(assert (=> b!2486423 m!2854929))

(declare-fun m!2854931 () Bool)

(assert (=> b!2486423 m!2854931))

(declare-fun m!2854933 () Bool)

(assert (=> b!2486423 m!2854933))

(declare-fun m!2854935 () Bool)

(assert (=> b!2486423 m!2854935))

(declare-fun m!2854937 () Bool)

(assert (=> b!2486423 m!2854937))

(declare-fun m!2854939 () Bool)

(assert (=> b!2486423 m!2854939))

(declare-fun m!2854941 () Bool)

(assert (=> b!2486423 m!2854941))

(declare-fun m!2854943 () Bool)

(assert (=> b!2486423 m!2854943))

(declare-fun m!2854945 () Bool)

(assert (=> b!2486426 m!2854945))

(declare-fun m!2854947 () Bool)

(assert (=> b!2486427 m!2854947))

(declare-fun m!2854949 () Bool)

(assert (=> b!2486438 m!2854949))

(declare-fun m!2854951 () Bool)

(assert (=> b!2486438 m!2854951))

(declare-fun m!2854953 () Bool)

(assert (=> b!2486436 m!2854953))

(declare-fun m!2854955 () Bool)

(assert (=> b!2486436 m!2854955))

(declare-fun m!2854957 () Bool)

(assert (=> b!2486436 m!2854957))

(declare-fun m!2854959 () Bool)

(assert (=> b!2486436 m!2854959))

(declare-fun m!2854961 () Bool)

(assert (=> b!2486436 m!2854961))

(declare-fun m!2854963 () Bool)

(assert (=> b!2486436 m!2854963))

(declare-fun m!2854965 () Bool)

(assert (=> b!2486436 m!2854965))

(declare-fun m!2854967 () Bool)

(assert (=> b!2486436 m!2854967))

(declare-fun m!2854969 () Bool)

(assert (=> b!2486436 m!2854969))

(declare-fun m!2854971 () Bool)

(assert (=> b!2486436 m!2854971))

(declare-fun m!2854973 () Bool)

(assert (=> b!2486422 m!2854973))

(declare-fun m!2854975 () Bool)

(assert (=> b!2486431 m!2854975))

(check-sat (not b!2486422) (not b!2486427) (not b!2486426) (not b!2486433) tp_is_empty!12403 (not b!2486436) (not b!2486432) (not mapNonEmpty!15780) (not b_next!73249) (not b_next!73251) (not b!2486438) (not b!2486423) (not b!2486425) b_and!188831 (not b!2486437) (not b!2486429) (not b!2486428) b_and!188829 (not b!2486430) (not b!2486431))
(check-sat b_and!188831 b_and!188829 (not b_next!73249) (not b_next!73251))
(get-model)

(declare-fun bs!468038 () Bool)

(declare-fun b!2486444 () Bool)

(assert (= bs!468038 (and b!2486444 b!2486423)))

(declare-fun lambda!94624 () Int)

(assert (=> bs!468038 (= lambda!94624 lambda!94621)))

(declare-fun d!713750 () Bool)

(declare-fun res!1052524 () Bool)

(declare-fun e!1578798 () Bool)

(assert (=> d!713750 (=> (not res!1052524) (not e!1578798))))

(declare-fun valid!2632 (MutLongMap!3422) Bool)

(assert (=> d!713750 (= res!1052524 (valid!2632 (v!31665 (underlying!7052 thiss!42540))))))

(assert (=> d!713750 (= (valid!2631 thiss!42540) e!1578798)))

(declare-fun res!1052525 () Bool)

(assert (=> b!2486444 (=> (not res!1052525) (not e!1578798))))

(assert (=> b!2486444 (= res!1052525 (forall!6015 (toList!1675 (map!6334 (v!31665 (underlying!7052 thiss!42540)))) lambda!94624))))

(declare-fun b!2486445 () Bool)

(assert (=> b!2486445 (= e!1578798 (allKeysSameHashInMap!198 (map!6334 (v!31665 (underlying!7052 thiss!42540))) (hashF!5343 thiss!42540)))))

(assert (= (and d!713750 res!1052524) b!2486444))

(assert (= (and b!2486444 res!1052525) b!2486445))

(declare-fun m!2854977 () Bool)

(assert (=> d!713750 m!2854977))

(assert (=> b!2486444 m!2854941))

(declare-fun m!2854979 () Bool)

(assert (=> b!2486444 m!2854979))

(assert (=> b!2486445 m!2854941))

(assert (=> b!2486445 m!2854941))

(declare-fun m!2854981 () Bool)

(assert (=> b!2486445 m!2854981))

(assert (=> b!2486426 d!713750))

(declare-fun d!713752 () Bool)

(declare-fun hash!780 (Hashable!3332 K!5640) (_ BitVec 64))

(assert (=> d!713752 (= (hash!776 (hashF!5343 (_2!17160 lt!892545)) key!2246) (hash!780 (hashF!5343 (_2!17160 lt!892545)) key!2246))))

(declare-fun bs!468039 () Bool)

(assert (= bs!468039 d!713752))

(declare-fun m!2854983 () Bool)

(assert (=> bs!468039 m!2854983))

(assert (=> b!2486427 d!713752))

(declare-fun bs!468040 () Bool)

(declare-fun d!713754 () Bool)

(assert (= bs!468040 (and d!713754 b!2486423)))

(declare-fun lambda!94629 () Int)

(assert (=> bs!468040 (= lambda!94629 lambda!94621)))

(declare-fun bs!468041 () Bool)

(assert (= bs!468041 (and d!713754 b!2486444)))

(assert (=> bs!468041 (= lambda!94629 lambda!94624)))

(declare-fun e!1578801 () Bool)

(assert (=> d!713754 e!1578801))

(declare-fun res!1052528 () Bool)

(assert (=> d!713754 (=> (not res!1052528) (not e!1578801))))

(declare-fun lt!892558 () ListLongMap!627)

(assert (=> d!713754 (= res!1052528 (forall!6015 (toList!1675 lt!892558) lambda!94629))))

(assert (=> d!713754 (= lt!892558 (+!113 lt!892536 (tuple2!29235 lt!892546 lt!892552)))))

(declare-fun lt!892557 () Unit!42885)

(declare-fun choose!14706 (ListLongMap!627 (_ BitVec 64) List!29321 Hashable!3332) Unit!42885)

(assert (=> d!713754 (= lt!892557 (choose!14706 lt!892536 lt!892546 lt!892552 (hashF!5343 (_2!17160 lt!892545))))))

(assert (=> d!713754 (forall!6015 (toList!1675 lt!892536) lambda!94629)))

(assert (=> d!713754 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!76 lt!892536 lt!892546 lt!892552 (hashF!5343 (_2!17160 lt!892545))) lt!892557)))

(declare-fun b!2486448 () Bool)

(assert (=> b!2486448 (= e!1578801 (allKeysSameHashInMap!198 lt!892558 (hashF!5343 (_2!17160 lt!892545))))))

(assert (= (and d!713754 res!1052528) b!2486448))

(declare-fun m!2854985 () Bool)

(assert (=> d!713754 m!2854985))

(assert (=> d!713754 m!2854967))

(declare-fun m!2854987 () Bool)

(assert (=> d!713754 m!2854987))

(declare-fun m!2854989 () Bool)

(assert (=> d!713754 m!2854989))

(declare-fun m!2854991 () Bool)

(assert (=> b!2486448 m!2854991))

(assert (=> b!2486436 d!713754))

(declare-fun d!713756 () Bool)

(assert (=> d!713756 (allKeysSameHash!96 (removePairForKey!113 lt!892537 key!2246) lt!892546 (hashF!5343 (_2!17160 lt!892545)))))

(declare-fun lt!892561 () Unit!42885)

(declare-fun choose!14707 (List!29321 K!5640 (_ BitVec 64) Hashable!3332) Unit!42885)

(assert (=> d!713756 (= lt!892561 (choose!14707 lt!892537 key!2246 lt!892546 (hashF!5343 (_2!17160 lt!892545))))))

(assert (=> d!713756 (noDuplicateKeys!121 lt!892537)))

(assert (=> d!713756 (= (lemmaRemovePairForKeyPreservesHash!85 lt!892537 key!2246 lt!892546 (hashF!5343 (_2!17160 lt!892545))) lt!892561)))

(declare-fun bs!468042 () Bool)

(assert (= bs!468042 d!713756))

(assert (=> bs!468042 m!2854933))

(assert (=> bs!468042 m!2854933))

(declare-fun m!2854993 () Bool)

(assert (=> bs!468042 m!2854993))

(declare-fun m!2854995 () Bool)

(assert (=> bs!468042 m!2854995))

(declare-fun m!2854997 () Bool)

(assert (=> bs!468042 m!2854997))

(assert (=> b!2486436 d!713756))

(declare-fun d!713758 () Bool)

(declare-fun e!1578804 () Bool)

(assert (=> d!713758 e!1578804))

(declare-fun res!1052533 () Bool)

(assert (=> d!713758 (=> (not res!1052533) (not e!1578804))))

(declare-fun lt!892573 () ListLongMap!627)

(assert (=> d!713758 (= res!1052533 (contains!5229 lt!892573 (_1!17159 (tuple2!29235 lt!892546 lt!892552))))))

(declare-fun lt!892571 () List!29322)

(assert (=> d!713758 (= lt!892573 (ListLongMap!628 lt!892571))))

(declare-fun lt!892572 () Unit!42885)

(declare-fun lt!892570 () Unit!42885)

(assert (=> d!713758 (= lt!892572 lt!892570)))

(declare-datatypes ((Option!5786 0))(
  ( (None!5785) (Some!5785 (v!31672 List!29321)) )
))
(declare-fun getValueByKey!158 (List!29322 (_ BitVec 64)) Option!5786)

(assert (=> d!713758 (= (getValueByKey!158 lt!892571 (_1!17159 (tuple2!29235 lt!892546 lt!892552))) (Some!5785 (_2!17159 (tuple2!29235 lt!892546 lt!892552))))))

(declare-fun lemmaContainsTupThenGetReturnValue!28 (List!29322 (_ BitVec 64) List!29321) Unit!42885)

(assert (=> d!713758 (= lt!892570 (lemmaContainsTupThenGetReturnValue!28 lt!892571 (_1!17159 (tuple2!29235 lt!892546 lt!892552)) (_2!17159 (tuple2!29235 lt!892546 lt!892552))))))

(declare-fun insertStrictlySorted!22 (List!29322 (_ BitVec 64) List!29321) List!29322)

(assert (=> d!713758 (= lt!892571 (insertStrictlySorted!22 (toList!1675 lt!892536) (_1!17159 (tuple2!29235 lt!892546 lt!892552)) (_2!17159 (tuple2!29235 lt!892546 lt!892552))))))

(assert (=> d!713758 (= (+!113 lt!892536 (tuple2!29235 lt!892546 lt!892552)) lt!892573)))

(declare-fun b!2486453 () Bool)

(declare-fun res!1052534 () Bool)

(assert (=> b!2486453 (=> (not res!1052534) (not e!1578804))))

(assert (=> b!2486453 (= res!1052534 (= (getValueByKey!158 (toList!1675 lt!892573) (_1!17159 (tuple2!29235 lt!892546 lt!892552))) (Some!5785 (_2!17159 (tuple2!29235 lt!892546 lt!892552)))))))

(declare-fun b!2486454 () Bool)

(assert (=> b!2486454 (= e!1578804 (contains!5228 (toList!1675 lt!892573) (tuple2!29235 lt!892546 lt!892552)))))

(assert (= (and d!713758 res!1052533) b!2486453))

(assert (= (and b!2486453 res!1052534) b!2486454))

(declare-fun m!2854999 () Bool)

(assert (=> d!713758 m!2854999))

(declare-fun m!2855001 () Bool)

(assert (=> d!713758 m!2855001))

(declare-fun m!2855003 () Bool)

(assert (=> d!713758 m!2855003))

(declare-fun m!2855005 () Bool)

(assert (=> d!713758 m!2855005))

(declare-fun m!2855007 () Bool)

(assert (=> b!2486453 m!2855007))

(declare-fun m!2855009 () Bool)

(assert (=> b!2486454 m!2855009))

(assert (=> b!2486436 d!713758))

(declare-fun bs!468043 () Bool)

(declare-fun d!713760 () Bool)

(assert (= bs!468043 (and d!713760 b!2486423)))

(declare-fun lambda!94632 () Int)

(assert (=> bs!468043 (not (= lambda!94632 lambda!94621))))

(declare-fun bs!468044 () Bool)

(assert (= bs!468044 (and d!713760 b!2486444)))

(assert (=> bs!468044 (not (= lambda!94632 lambda!94624))))

(declare-fun bs!468045 () Bool)

(assert (= bs!468045 (and d!713760 d!713754)))

(assert (=> bs!468045 (not (= lambda!94632 lambda!94629))))

(assert (=> d!713760 true))

(assert (=> d!713760 (allKeysSameHash!96 lt!892537 lt!892546 (hashF!5343 (_2!17160 lt!892545)))))

(declare-fun lt!892576 () Unit!42885)

(declare-fun choose!14708 (List!29322 (_ BitVec 64) List!29321 Hashable!3332) Unit!42885)

(assert (=> d!713760 (= lt!892576 (choose!14708 (toList!1675 lt!892536) lt!892546 lt!892537 (hashF!5343 (_2!17160 lt!892545))))))

(assert (=> d!713760 (forall!6015 (toList!1675 lt!892536) lambda!94632)))

(assert (=> d!713760 (= (lemmaInLongMapAllKeySameHashThenForTuple!89 (toList!1675 lt!892536) lt!892546 lt!892537 (hashF!5343 (_2!17160 lt!892545))) lt!892576)))

(declare-fun bs!468046 () Bool)

(assert (= bs!468046 d!713760))

(assert (=> bs!468046 m!2854957))

(declare-fun m!2855011 () Bool)

(assert (=> bs!468046 m!2855011))

(declare-fun m!2855013 () Bool)

(assert (=> bs!468046 m!2855013))

(assert (=> b!2486436 d!713760))

(declare-fun d!713762 () Bool)

(declare-fun res!1052539 () Bool)

(declare-fun e!1578809 () Bool)

(assert (=> d!713762 (=> res!1052539 e!1578809)))

(assert (=> d!713762 (= res!1052539 ((_ is Nil!29222) (toList!1675 lt!892536)))))

(assert (=> d!713762 (= (forall!6015 (toList!1675 lt!892536) lambda!94621) e!1578809)))

(declare-fun b!2486461 () Bool)

(declare-fun e!1578810 () Bool)

(assert (=> b!2486461 (= e!1578809 e!1578810)))

(declare-fun res!1052540 () Bool)

(assert (=> b!2486461 (=> (not res!1052540) (not e!1578810))))

(declare-fun dynLambda!12506 (Int tuple2!29234) Bool)

(assert (=> b!2486461 (= res!1052540 (dynLambda!12506 lambda!94621 (h!34639 (toList!1675 lt!892536))))))

(declare-fun b!2486462 () Bool)

(assert (=> b!2486462 (= e!1578810 (forall!6015 (t!211011 (toList!1675 lt!892536)) lambda!94621))))

(assert (= (and d!713762 (not res!1052539)) b!2486461))

(assert (= (and b!2486461 res!1052540) b!2486462))

(declare-fun b_lambda!76363 () Bool)

(assert (=> (not b_lambda!76363) (not b!2486461)))

(declare-fun m!2855015 () Bool)

(assert (=> b!2486461 m!2855015))

(declare-fun m!2855017 () Bool)

(assert (=> b!2486462 m!2855017))

(assert (=> b!2486436 d!713762))

(declare-fun d!713764 () Bool)

(declare-fun res!1052541 () Bool)

(declare-fun e!1578811 () Bool)

(assert (=> d!713764 (=> res!1052541 e!1578811)))

(assert (=> d!713764 (= res!1052541 ((_ is Nil!29222) (toList!1675 lt!892535)))))

(assert (=> d!713764 (= (forall!6015 (toList!1675 lt!892535) lambda!94621) e!1578811)))

(declare-fun b!2486463 () Bool)

(declare-fun e!1578812 () Bool)

(assert (=> b!2486463 (= e!1578811 e!1578812)))

(declare-fun res!1052542 () Bool)

(assert (=> b!2486463 (=> (not res!1052542) (not e!1578812))))

(assert (=> b!2486463 (= res!1052542 (dynLambda!12506 lambda!94621 (h!34639 (toList!1675 lt!892535))))))

(declare-fun b!2486464 () Bool)

(assert (=> b!2486464 (= e!1578812 (forall!6015 (t!211011 (toList!1675 lt!892535)) lambda!94621))))

(assert (= (and d!713764 (not res!1052541)) b!2486463))

(assert (= (and b!2486463 res!1052542) b!2486464))

(declare-fun b_lambda!76365 () Bool)

(assert (=> (not b_lambda!76365) (not b!2486463)))

(declare-fun m!2855019 () Bool)

(assert (=> b!2486463 m!2855019))

(declare-fun m!2855021 () Bool)

(assert (=> b!2486464 m!2855021))

(assert (=> b!2486436 d!713764))

(declare-fun d!713766 () Bool)

(assert (=> d!713766 true))

(assert (=> d!713766 true))

(declare-fun lambda!94635 () Int)

(declare-fun forall!6016 (List!29321 Int) Bool)

(assert (=> d!713766 (= (allKeysSameHash!96 lt!892537 lt!892546 (hashF!5343 (_2!17160 lt!892545))) (forall!6016 lt!892537 lambda!94635))))

(declare-fun bs!468047 () Bool)

(assert (= bs!468047 d!713766))

(declare-fun m!2855023 () Bool)

(assert (=> bs!468047 m!2855023))

(assert (=> b!2486436 d!713766))

(declare-fun d!713768 () Bool)

(declare-fun map!6335 (LongMapFixedSize!6844) ListLongMap!627)

(assert (=> d!713768 (= (map!6334 (v!31665 (underlying!7052 (_2!17160 lt!892545)))) (map!6335 (v!31664 (underlying!7051 (v!31665 (underlying!7052 (_2!17160 lt!892545)))))))))

(declare-fun bs!468048 () Bool)

(assert (= bs!468048 d!713768))

(declare-fun m!2855025 () Bool)

(assert (=> bs!468048 m!2855025))

(assert (=> b!2486436 d!713768))

(declare-fun bs!468049 () Bool)

(declare-fun d!713770 () Bool)

(assert (= bs!468049 (and d!713770 d!713766)))

(declare-fun lambda!94636 () Int)

(assert (=> bs!468049 (= lambda!94636 lambda!94635)))

(assert (=> d!713770 true))

(assert (=> d!713770 true))

(assert (=> d!713770 (= (allKeysSameHash!96 lt!892552 lt!892546 (hashF!5343 (_2!17160 lt!892545))) (forall!6016 lt!892552 lambda!94636))))

(declare-fun bs!468050 () Bool)

(assert (= bs!468050 d!713770))

(declare-fun m!2855027 () Bool)

(assert (=> bs!468050 m!2855027))

(assert (=> b!2486436 d!713770))

(declare-fun d!713772 () Bool)

(declare-fun res!1052543 () Bool)

(declare-fun e!1578813 () Bool)

(assert (=> d!713772 (=> res!1052543 e!1578813)))

(assert (=> d!713772 (= res!1052543 ((_ is Nil!29222) (toList!1675 lt!892539)))))

(assert (=> d!713772 (= (forall!6015 (toList!1675 lt!892539) lambda!94621) e!1578813)))

(declare-fun b!2486469 () Bool)

(declare-fun e!1578814 () Bool)

(assert (=> b!2486469 (= e!1578813 e!1578814)))

(declare-fun res!1052544 () Bool)

(assert (=> b!2486469 (=> (not res!1052544) (not e!1578814))))

(assert (=> b!2486469 (= res!1052544 (dynLambda!12506 lambda!94621 (h!34639 (toList!1675 lt!892539))))))

(declare-fun b!2486470 () Bool)

(assert (=> b!2486470 (= e!1578814 (forall!6015 (t!211011 (toList!1675 lt!892539)) lambda!94621))))

(assert (= (and d!713772 (not res!1052543)) b!2486469))

(assert (= (and b!2486469 res!1052544) b!2486470))

(declare-fun b_lambda!76367 () Bool)

(assert (=> (not b_lambda!76367) (not b!2486469)))

(declare-fun m!2855029 () Bool)

(assert (=> b!2486469 m!2855029))

(declare-fun m!2855031 () Bool)

(assert (=> b!2486470 m!2855031))

(assert (=> b!2486436 d!713772))

(declare-fun d!713774 () Bool)

(declare-fun res!1052549 () Bool)

(declare-fun e!1578819 () Bool)

(assert (=> d!713774 (=> res!1052549 e!1578819)))

(assert (=> d!713774 (= res!1052549 (not ((_ is Cons!29221) lt!892552)))))

(assert (=> d!713774 (= (noDuplicateKeys!121 lt!892552) e!1578819)))

(declare-fun b!2486475 () Bool)

(declare-fun e!1578820 () Bool)

(assert (=> b!2486475 (= e!1578819 e!1578820)))

(declare-fun res!1052550 () Bool)

(assert (=> b!2486475 (=> (not res!1052550) (not e!1578820))))

(declare-fun containsKey!170 (List!29321 K!5640) Bool)

(assert (=> b!2486475 (= res!1052550 (not (containsKey!170 (t!211010 lt!892552) (_1!17158 (h!34638 lt!892552)))))))

(declare-fun b!2486476 () Bool)

(assert (=> b!2486476 (= e!1578820 (noDuplicateKeys!121 (t!211010 lt!892552)))))

(assert (= (and d!713774 (not res!1052549)) b!2486475))

(assert (= (and b!2486475 res!1052550) b!2486476))

(declare-fun m!2855033 () Bool)

(assert (=> b!2486475 m!2855033))

(declare-fun m!2855035 () Bool)

(assert (=> b!2486476 m!2855035))

(assert (=> b!2486423 d!713774))

(declare-fun d!713776 () Bool)

(assert (=> d!713776 (= (hash!776 (hashF!5343 thiss!42540) key!2246) (hash!780 (hashF!5343 thiss!42540) key!2246))))

(declare-fun bs!468051 () Bool)

(assert (= bs!468051 d!713776))

(declare-fun m!2855037 () Bool)

(assert (=> bs!468051 m!2855037))

(assert (=> b!2486423 d!713776))

(declare-fun b!2486485 () Bool)

(declare-fun e!1578826 () List!29321)

(assert (=> b!2486485 (= e!1578826 (t!211010 lt!892537))))

(declare-fun b!2486487 () Bool)

(declare-fun e!1578825 () List!29321)

(assert (=> b!2486487 (= e!1578825 (Cons!29221 (h!34638 lt!892537) (removePairForKey!113 (t!211010 lt!892537) key!2246)))))

(declare-fun b!2486486 () Bool)

(assert (=> b!2486486 (= e!1578826 e!1578825)))

(declare-fun c!395171 () Bool)

(assert (=> b!2486486 (= c!395171 ((_ is Cons!29221) lt!892537))))

(declare-fun d!713778 () Bool)

(declare-fun lt!892579 () List!29321)

(assert (=> d!713778 (not (containsKey!170 lt!892579 key!2246))))

(assert (=> d!713778 (= lt!892579 e!1578826)))

(declare-fun c!395170 () Bool)

(assert (=> d!713778 (= c!395170 (and ((_ is Cons!29221) lt!892537) (= (_1!17158 (h!34638 lt!892537)) key!2246)))))

(assert (=> d!713778 (noDuplicateKeys!121 lt!892537)))

(assert (=> d!713778 (= (removePairForKey!113 lt!892537 key!2246) lt!892579)))

(declare-fun b!2486488 () Bool)

(assert (=> b!2486488 (= e!1578825 Nil!29221)))

(assert (= (and d!713778 c!395170) b!2486485))

(assert (= (and d!713778 (not c!395170)) b!2486486))

(assert (= (and b!2486486 c!395171) b!2486487))

(assert (= (and b!2486486 (not c!395171)) b!2486488))

(declare-fun m!2855039 () Bool)

(assert (=> b!2486487 m!2855039))

(declare-fun m!2855041 () Bool)

(assert (=> d!713778 m!2855041))

(assert (=> d!713778 m!2854997))

(assert (=> b!2486423 d!713778))

(declare-fun d!713780 () Bool)

(declare-fun e!1578829 () Bool)

(assert (=> d!713780 e!1578829))

(declare-fun c!395174 () Bool)

(declare-fun contains!5231 (MutLongMap!3422 (_ BitVec 64)) Bool)

(assert (=> d!713780 (= c!395174 (contains!5231 (v!31665 (underlying!7052 thiss!42540)) lt!892546))))

(declare-fun lt!892582 () List!29321)

(declare-fun apply!6994 (LongMapFixedSize!6844 (_ BitVec 64)) List!29321)

(assert (=> d!713780 (= lt!892582 (apply!6994 (v!31664 (underlying!7051 (v!31665 (underlying!7052 thiss!42540)))) lt!892546))))

(assert (=> d!713780 (valid!2632 (v!31665 (underlying!7052 thiss!42540)))))

(assert (=> d!713780 (= (apply!6992 (v!31665 (underlying!7052 thiss!42540)) lt!892546) lt!892582)))

(declare-fun b!2486493 () Bool)

(declare-fun get!9021 (Option!5786) List!29321)

(assert (=> b!2486493 (= e!1578829 (= lt!892582 (get!9021 (getValueByKey!158 (toList!1675 (map!6334 (v!31665 (underlying!7052 thiss!42540)))) lt!892546))))))

(declare-fun b!2486494 () Bool)

(declare-fun dynLambda!12507 (Int (_ BitVec 64)) List!29321)

(assert (=> b!2486494 (= e!1578829 (= lt!892582 (dynLambda!12507 (defaultEntry!3796 (v!31664 (underlying!7051 (v!31665 (underlying!7052 thiss!42540))))) lt!892546)))))

(assert (=> b!2486494 ((_ is LongMap!3422) (v!31665 (underlying!7052 thiss!42540)))))

(assert (= (and d!713780 c!395174) b!2486493))

(assert (= (and d!713780 (not c!395174)) b!2486494))

(declare-fun b_lambda!76369 () Bool)

(assert (=> (not b_lambda!76369) (not b!2486494)))

(declare-fun t!211013 () Bool)

(declare-fun tb!140407 () Bool)

(assert (=> (and b!2486438 (= (defaultEntry!3796 (v!31664 (underlying!7051 (v!31665 (underlying!7052 thiss!42540))))) (defaultEntry!3796 (v!31664 (underlying!7051 (v!31665 (underlying!7052 thiss!42540)))))) t!211013) tb!140407))

(assert (=> b!2486494 t!211013))

(declare-fun result!173416 () Bool)

(declare-fun b_and!188833 () Bool)

(assert (= b_and!188829 (and (=> t!211013 result!173416) b_and!188833)))

(declare-fun m!2855043 () Bool)

(assert (=> d!713780 m!2855043))

(declare-fun m!2855045 () Bool)

(assert (=> d!713780 m!2855045))

(assert (=> d!713780 m!2854977))

(assert (=> b!2486493 m!2854941))

(declare-fun m!2855047 () Bool)

(assert (=> b!2486493 m!2855047))

(assert (=> b!2486493 m!2855047))

(declare-fun m!2855049 () Bool)

(assert (=> b!2486493 m!2855049))

(declare-fun m!2855051 () Bool)

(assert (=> b!2486494 m!2855051))

(assert (=> b!2486423 d!713780))

(declare-fun d!713782 () Bool)

(assert (=> d!713782 (= (map!6334 (v!31665 (underlying!7052 thiss!42540))) (map!6335 (v!31664 (underlying!7051 (v!31665 (underlying!7052 thiss!42540))))))))

(declare-fun bs!468052 () Bool)

(assert (= bs!468052 d!713782))

(declare-fun m!2855053 () Bool)

(assert (=> bs!468052 m!2855053))

(assert (=> b!2486423 d!713782))

(declare-fun d!713784 () Bool)

(assert (=> d!713784 (noDuplicateKeys!121 (removePairForKey!113 lt!892537 key!2246))))

(declare-fun lt!892585 () Unit!42885)

(declare-fun choose!14709 (List!29321 K!5640) Unit!42885)

(assert (=> d!713784 (= lt!892585 (choose!14709 lt!892537 key!2246))))

(assert (=> d!713784 (noDuplicateKeys!121 lt!892537)))

(assert (=> d!713784 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!101 lt!892537 key!2246) lt!892585)))

(declare-fun bs!468053 () Bool)

(assert (= bs!468053 d!713784))

(assert (=> bs!468053 m!2854933))

(assert (=> bs!468053 m!2854933))

(declare-fun m!2855055 () Bool)

(assert (=> bs!468053 m!2855055))

(declare-fun m!2855057 () Bool)

(assert (=> bs!468053 m!2855057))

(assert (=> bs!468053 m!2854997))

(assert (=> b!2486423 d!713784))

(declare-fun d!713786 () Bool)

(declare-fun lt!892588 () ListMap!1153)

(declare-fun invariantList!424 (List!29321) Bool)

(assert (=> d!713786 (invariantList!424 (toList!1676 lt!892588))))

(assert (=> d!713786 (= lt!892588 (extractMap!193 (toList!1675 (map!6334 (v!31665 (underlying!7052 thiss!42540))))))))

(assert (=> d!713786 (valid!2631 thiss!42540)))

(assert (=> d!713786 (= (map!6333 thiss!42540) lt!892588)))

(declare-fun bs!468054 () Bool)

(assert (= bs!468054 d!713786))

(declare-fun m!2855059 () Bool)

(assert (=> bs!468054 m!2855059))

(assert (=> bs!468054 m!2854941))

(declare-fun m!2855061 () Bool)

(assert (=> bs!468054 m!2855061))

(assert (=> bs!468054 m!2854945))

(assert (=> b!2486423 d!713786))

(declare-fun d!713788 () Bool)

(assert (=> d!713788 (dynLambda!12506 lambda!94621 (tuple2!29235 lt!892546 lt!892537))))

(declare-fun lt!892591 () Unit!42885)

(declare-fun choose!14710 (List!29322 Int tuple2!29234) Unit!42885)

(assert (=> d!713788 (= lt!892591 (choose!14710 (toList!1675 lt!892536) lambda!94621 (tuple2!29235 lt!892546 lt!892537)))))

(declare-fun e!1578832 () Bool)

(assert (=> d!713788 e!1578832))

(declare-fun res!1052553 () Bool)

(assert (=> d!713788 (=> (not res!1052553) (not e!1578832))))

(assert (=> d!713788 (= res!1052553 (forall!6015 (toList!1675 lt!892536) lambda!94621))))

(assert (=> d!713788 (= (forallContained!902 (toList!1675 lt!892536) lambda!94621 (tuple2!29235 lt!892546 lt!892537)) lt!892591)))

(declare-fun b!2486497 () Bool)

(assert (=> b!2486497 (= e!1578832 (contains!5228 (toList!1675 lt!892536) (tuple2!29235 lt!892546 lt!892537)))))

(assert (= (and d!713788 res!1052553) b!2486497))

(declare-fun b_lambda!76371 () Bool)

(assert (=> (not b_lambda!76371) (not d!713788)))

(declare-fun m!2855063 () Bool)

(assert (=> d!713788 m!2855063))

(declare-fun m!2855065 () Bool)

(assert (=> d!713788 m!2855065))

(assert (=> d!713788 m!2854959))

(declare-fun m!2855067 () Bool)

(assert (=> b!2486497 m!2855067))

(assert (=> b!2486423 d!713788))

(declare-fun b!2486517 () Bool)

(declare-fun e!1578846 () tuple2!29238)

(declare-fun lt!892601 () tuple2!29238)

(assert (=> b!2486517 (= e!1578846 (tuple2!29239 (_1!17161 lt!892601) (_2!17161 lt!892601)))))

(declare-fun repack!33 (MutLongMap!3422) tuple2!29238)

(assert (=> b!2486517 (= lt!892601 (repack!33 (v!31665 (underlying!7052 thiss!42540))))))

(declare-fun b!2486518 () Bool)

(assert (=> b!2486518 (= e!1578846 (tuple2!29239 true (v!31665 (underlying!7052 thiss!42540))))))

(declare-fun b!2486519 () Bool)

(declare-fun e!1578843 () tuple2!29238)

(declare-fun lt!892602 () tuple2!29238)

(assert (=> b!2486519 (= e!1578843 (tuple2!29239 false (_2!17161 lt!892602)))))

(declare-fun b!2486520 () Bool)

(declare-fun e!1578847 () Bool)

(declare-fun e!1578844 () Bool)

(assert (=> b!2486520 (= e!1578847 e!1578844)))

(declare-fun res!1052560 () Bool)

(declare-fun call!152472 () ListLongMap!627)

(assert (=> b!2486520 (= res!1052560 (contains!5229 call!152472 lt!892546))))

(assert (=> b!2486520 (=> (not res!1052560) (not e!1578844))))

(declare-fun b!2486521 () Bool)

(declare-fun res!1052562 () Bool)

(declare-fun e!1578845 () Bool)

(assert (=> b!2486521 (=> (not res!1052562) (not e!1578845))))

(declare-fun lt!892603 () tuple2!29238)

(assert (=> b!2486521 (= res!1052562 (valid!2632 (_2!17161 lt!892603)))))

(declare-fun b!2486522 () Bool)

(declare-datatypes ((tuple2!29240 0))(
  ( (tuple2!29241 (_1!17162 Bool) (_2!17162 LongMapFixedSize!6844)) )
))
(declare-fun lt!892600 () tuple2!29240)

(assert (=> b!2486522 (= e!1578843 (tuple2!29239 (_1!17162 lt!892600) (LongMap!3422 (Cell!13506 (_2!17162 lt!892600)))))))

(declare-fun update!243 (LongMapFixedSize!6844 (_ BitVec 64) List!29321) tuple2!29240)

(assert (=> b!2486522 (= lt!892600 (update!243 (v!31664 (underlying!7051 (_2!17161 lt!892602))) lt!892546 lt!892552))))

(declare-fun d!713790 () Bool)

(assert (=> d!713790 e!1578845))

(declare-fun res!1052561 () Bool)

(assert (=> d!713790 (=> (not res!1052561) (not e!1578845))))

(assert (=> d!713790 (= res!1052561 ((_ is LongMap!3422) (_2!17161 lt!892603)))))

(assert (=> d!713790 (= lt!892603 e!1578843)))

(declare-fun c!395181 () Bool)

(assert (=> d!713790 (= c!395181 (_1!17161 lt!892602))))

(assert (=> d!713790 (= lt!892602 e!1578846)))

(declare-fun c!395182 () Bool)

(declare-fun imbalanced!29 (MutLongMap!3422) Bool)

(assert (=> d!713790 (= c!395182 (imbalanced!29 (v!31665 (underlying!7052 thiss!42540))))))

(assert (=> d!713790 (valid!2632 (v!31665 (underlying!7052 thiss!42540)))))

(assert (=> d!713790 (= (update!242 (v!31665 (underlying!7052 thiss!42540)) lt!892546 lt!892552) lt!892603)))

(declare-fun b!2486516 () Bool)

(declare-fun call!152473 () ListLongMap!627)

(assert (=> b!2486516 (= e!1578847 (= call!152472 call!152473))))

(declare-fun bm!152467 () Bool)

(assert (=> bm!152467 (= call!152472 (map!6334 (_2!17161 lt!892603)))))

(declare-fun b!2486523 () Bool)

(assert (=> b!2486523 (= e!1578845 e!1578847)))

(declare-fun c!395183 () Bool)

(assert (=> b!2486523 (= c!395183 (_1!17161 lt!892603))))

(declare-fun bm!152468 () Bool)

(assert (=> bm!152468 (= call!152473 (map!6334 (v!31665 (underlying!7052 thiss!42540))))))

(declare-fun b!2486524 () Bool)

(assert (=> b!2486524 (= e!1578844 (= call!152472 (+!113 call!152473 (tuple2!29235 lt!892546 lt!892552))))))

(assert (= (and d!713790 c!395182) b!2486517))

(assert (= (and d!713790 (not c!395182)) b!2486518))

(assert (= (and d!713790 c!395181) b!2486522))

(assert (= (and d!713790 (not c!395181)) b!2486519))

(assert (= (and d!713790 res!1052561) b!2486521))

(assert (= (and b!2486521 res!1052562) b!2486523))

(assert (= (and b!2486523 c!395183) b!2486520))

(assert (= (and b!2486523 (not c!395183)) b!2486516))

(assert (= (and b!2486520 res!1052560) b!2486524))

(assert (= (or b!2486520 b!2486524 b!2486516) bm!152467))

(assert (= (or b!2486524 b!2486516) bm!152468))

(declare-fun m!2855069 () Bool)

(assert (=> bm!152467 m!2855069))

(declare-fun m!2855071 () Bool)

(assert (=> b!2486517 m!2855071))

(declare-fun m!2855073 () Bool)

(assert (=> b!2486521 m!2855073))

(declare-fun m!2855075 () Bool)

(assert (=> b!2486520 m!2855075))

(declare-fun m!2855077 () Bool)

(assert (=> d!713790 m!2855077))

(assert (=> d!713790 m!2854977))

(declare-fun m!2855079 () Bool)

(assert (=> b!2486522 m!2855079))

(declare-fun m!2855081 () Bool)

(assert (=> b!2486524 m!2855081))

(assert (=> bm!152468 m!2854941))

(assert (=> b!2486423 d!713790))

(declare-fun bs!468055 () Bool)

(declare-fun b!2486525 () Bool)

(assert (= bs!468055 (and b!2486525 b!2486423)))

(declare-fun lambda!94637 () Int)

(assert (=> bs!468055 (= lambda!94637 lambda!94621)))

(declare-fun bs!468056 () Bool)

(assert (= bs!468056 (and b!2486525 b!2486444)))

(assert (=> bs!468056 (= lambda!94637 lambda!94624)))

(declare-fun bs!468057 () Bool)

(assert (= bs!468057 (and b!2486525 d!713754)))

(assert (=> bs!468057 (= lambda!94637 lambda!94629)))

(declare-fun bs!468058 () Bool)

(assert (= bs!468058 (and b!2486525 d!713760)))

(assert (=> bs!468058 (not (= lambda!94637 lambda!94632))))

(declare-fun d!713792 () Bool)

(declare-fun res!1052563 () Bool)

(declare-fun e!1578848 () Bool)

(assert (=> d!713792 (=> (not res!1052563) (not e!1578848))))

(assert (=> d!713792 (= res!1052563 (valid!2632 (v!31665 (underlying!7052 (_2!17160 lt!892545)))))))

(assert (=> d!713792 (= (valid!2631 (_2!17160 lt!892545)) e!1578848)))

(declare-fun res!1052564 () Bool)

(assert (=> b!2486525 (=> (not res!1052564) (not e!1578848))))

(assert (=> b!2486525 (= res!1052564 (forall!6015 (toList!1675 (map!6334 (v!31665 (underlying!7052 (_2!17160 lt!892545))))) lambda!94637))))

(declare-fun b!2486526 () Bool)

(assert (=> b!2486526 (= e!1578848 (allKeysSameHashInMap!198 (map!6334 (v!31665 (underlying!7052 (_2!17160 lt!892545)))) (hashF!5343 (_2!17160 lt!892545))))))

(assert (= (and d!713792 res!1052563) b!2486525))

(assert (= (and b!2486525 res!1052564) b!2486526))

(declare-fun m!2855083 () Bool)

(assert (=> d!713792 m!2855083))

(assert (=> b!2486525 m!2854963))

(declare-fun m!2855085 () Bool)

(assert (=> b!2486525 m!2855085))

(assert (=> b!2486526 m!2854963))

(assert (=> b!2486526 m!2854963))

(declare-fun m!2855087 () Bool)

(assert (=> b!2486526 m!2855087))

(assert (=> b!2486433 d!713792))

(declare-fun b!2486545 () Bool)

(assert (=> b!2486545 false))

(declare-fun lt!892626 () Unit!42885)

(declare-fun lt!892625 () Unit!42885)

(assert (=> b!2486545 (= lt!892626 lt!892625)))

(declare-fun containsKey!171 (List!29321 K!5640) Bool)

(assert (=> b!2486545 (containsKey!171 (toList!1676 lt!892540) key!2246)))

(declare-fun lemmaInGetKeysListThenContainsKey!20 (List!29321 K!5640) Unit!42885)

(assert (=> b!2486545 (= lt!892625 (lemmaInGetKeysListThenContainsKey!20 (toList!1676 lt!892540) key!2246))))

(declare-fun e!1578863 () Unit!42885)

(declare-fun Unit!42889 () Unit!42885)

(assert (=> b!2486545 (= e!1578863 Unit!42889)))

(declare-fun b!2486546 () Bool)

(declare-fun e!1578861 () Unit!42885)

(declare-fun lt!892620 () Unit!42885)

(assert (=> b!2486546 (= e!1578861 lt!892620)))

(declare-fun lt!892621 () Unit!42885)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!115 (List!29321 K!5640) Unit!42885)

(assert (=> b!2486546 (= lt!892621 (lemmaContainsKeyImpliesGetValueByKeyDefined!115 (toList!1676 lt!892540) key!2246))))

(declare-datatypes ((Option!5787 0))(
  ( (None!5786) (Some!5786 (v!31673 V!5842)) )
))
(declare-fun isDefined!4608 (Option!5787) Bool)

(declare-fun getValueByKey!159 (List!29321 K!5640) Option!5787)

(assert (=> b!2486546 (isDefined!4608 (getValueByKey!159 (toList!1676 lt!892540) key!2246))))

(declare-fun lt!892624 () Unit!42885)

(assert (=> b!2486546 (= lt!892624 lt!892621)))

(declare-fun lemmaInListThenGetKeysListContains!20 (List!29321 K!5640) Unit!42885)

(assert (=> b!2486546 (= lt!892620 (lemmaInListThenGetKeysListContains!20 (toList!1676 lt!892540) key!2246))))

(declare-fun call!152476 () Bool)

(assert (=> b!2486546 call!152476))

(declare-fun b!2486547 () Bool)

(assert (=> b!2486547 (= e!1578861 e!1578863)))

(declare-fun c!395190 () Bool)

(assert (=> b!2486547 (= c!395190 call!152476)))

(declare-fun bm!152471 () Bool)

(declare-datatypes ((List!29323 0))(
  ( (Nil!29223) (Cons!29223 (h!34641 K!5640) (t!211014 List!29323)) )
))
(declare-fun e!1578865 () List!29323)

(declare-fun contains!5232 (List!29323 K!5640) Bool)

(assert (=> bm!152471 (= call!152476 (contains!5232 e!1578865 key!2246))))

(declare-fun c!395191 () Bool)

(declare-fun c!395192 () Bool)

(assert (=> bm!152471 (= c!395191 c!395192)))

(declare-fun b!2486548 () Bool)

(declare-fun e!1578862 () Bool)

(declare-fun e!1578864 () Bool)

(assert (=> b!2486548 (= e!1578862 e!1578864)))

(declare-fun res!1052572 () Bool)

(assert (=> b!2486548 (=> (not res!1052572) (not e!1578864))))

(assert (=> b!2486548 (= res!1052572 (isDefined!4608 (getValueByKey!159 (toList!1676 lt!892540) key!2246)))))

(declare-fun d!713794 () Bool)

(assert (=> d!713794 e!1578862))

(declare-fun res!1052571 () Bool)

(assert (=> d!713794 (=> res!1052571 e!1578862)))

(declare-fun e!1578866 () Bool)

(assert (=> d!713794 (= res!1052571 e!1578866)))

(declare-fun res!1052573 () Bool)

(assert (=> d!713794 (=> (not res!1052573) (not e!1578866))))

(declare-fun lt!892622 () Bool)

(assert (=> d!713794 (= res!1052573 (not lt!892622))))

(declare-fun lt!892627 () Bool)

(assert (=> d!713794 (= lt!892622 lt!892627)))

(declare-fun lt!892623 () Unit!42885)

(assert (=> d!713794 (= lt!892623 e!1578861)))

(assert (=> d!713794 (= c!395192 lt!892627)))

(assert (=> d!713794 (= lt!892627 (containsKey!171 (toList!1676 lt!892540) key!2246))))

(assert (=> d!713794 (= (contains!5227 lt!892540 key!2246) lt!892622)))

(declare-fun b!2486549 () Bool)

(declare-fun keys!9379 (ListMap!1153) List!29323)

(assert (=> b!2486549 (= e!1578864 (contains!5232 (keys!9379 lt!892540) key!2246))))

(declare-fun b!2486550 () Bool)

(assert (=> b!2486550 (= e!1578866 (not (contains!5232 (keys!9379 lt!892540) key!2246)))))

(declare-fun b!2486551 () Bool)

(assert (=> b!2486551 (= e!1578865 (keys!9379 lt!892540))))

(declare-fun b!2486552 () Bool)

(declare-fun getKeysList!23 (List!29321) List!29323)

(assert (=> b!2486552 (= e!1578865 (getKeysList!23 (toList!1676 lt!892540)))))

(declare-fun b!2486553 () Bool)

(declare-fun Unit!42890 () Unit!42885)

(assert (=> b!2486553 (= e!1578863 Unit!42890)))

(assert (= (and d!713794 c!395192) b!2486546))

(assert (= (and d!713794 (not c!395192)) b!2486547))

(assert (= (and b!2486547 c!395190) b!2486545))

(assert (= (and b!2486547 (not c!395190)) b!2486553))

(assert (= (or b!2486546 b!2486547) bm!152471))

(assert (= (and bm!152471 c!395191) b!2486552))

(assert (= (and bm!152471 (not c!395191)) b!2486551))

(assert (= (and d!713794 res!1052573) b!2486550))

(assert (= (and d!713794 (not res!1052571)) b!2486548))

(assert (= (and b!2486548 res!1052572) b!2486549))

(declare-fun m!2855089 () Bool)

(assert (=> b!2486550 m!2855089))

(assert (=> b!2486550 m!2855089))

(declare-fun m!2855091 () Bool)

(assert (=> b!2486550 m!2855091))

(declare-fun m!2855093 () Bool)

(assert (=> d!713794 m!2855093))

(declare-fun m!2855095 () Bool)

(assert (=> b!2486546 m!2855095))

(declare-fun m!2855097 () Bool)

(assert (=> b!2486546 m!2855097))

(assert (=> b!2486546 m!2855097))

(declare-fun m!2855099 () Bool)

(assert (=> b!2486546 m!2855099))

(declare-fun m!2855101 () Bool)

(assert (=> b!2486546 m!2855101))

(declare-fun m!2855103 () Bool)

(assert (=> bm!152471 m!2855103))

(assert (=> b!2486551 m!2855089))

(declare-fun m!2855105 () Bool)

(assert (=> b!2486552 m!2855105))

(assert (=> b!2486548 m!2855097))

(assert (=> b!2486548 m!2855097))

(assert (=> b!2486548 m!2855099))

(assert (=> b!2486549 m!2855089))

(assert (=> b!2486549 m!2855089))

(assert (=> b!2486549 m!2855091))

(assert (=> b!2486545 m!2855093))

(declare-fun m!2855107 () Bool)

(assert (=> b!2486545 m!2855107))

(assert (=> b!2486425 d!713794))

(declare-fun bs!468059 () Bool)

(declare-fun d!713796 () Bool)

(assert (= bs!468059 (and d!713796 b!2486423)))

(declare-fun lambda!94640 () Int)

(assert (=> bs!468059 (not (= lambda!94640 lambda!94621))))

(declare-fun bs!468060 () Bool)

(assert (= bs!468060 (and d!713796 d!713754)))

(assert (=> bs!468060 (not (= lambda!94640 lambda!94629))))

(declare-fun bs!468061 () Bool)

(assert (= bs!468061 (and d!713796 d!713760)))

(assert (=> bs!468061 (= lambda!94640 lambda!94632)))

(declare-fun bs!468062 () Bool)

(assert (= bs!468062 (and d!713796 b!2486444)))

(assert (=> bs!468062 (not (= lambda!94640 lambda!94624))))

(declare-fun bs!468063 () Bool)

(assert (= bs!468063 (and d!713796 b!2486525)))

(assert (=> bs!468063 (not (= lambda!94640 lambda!94637))))

(assert (=> d!713796 true))

(assert (=> d!713796 (= (allKeysSameHashInMap!198 lt!892535 (hashF!5343 (_2!17160 lt!892545))) (forall!6015 (toList!1675 lt!892535) lambda!94640))))

(declare-fun bs!468064 () Bool)

(assert (= bs!468064 d!713796))

(declare-fun m!2855109 () Bool)

(assert (=> bs!468064 m!2855109))

(assert (=> b!2486431 d!713796))

(declare-fun d!713798 () Bool)

(assert (=> d!713798 (dynLambda!12506 lambda!94621 lt!892531)))

(declare-fun lt!892628 () Unit!42885)

(assert (=> d!713798 (= lt!892628 (choose!14710 (toList!1675 lt!892536) lambda!94621 lt!892531))))

(declare-fun e!1578867 () Bool)

(assert (=> d!713798 e!1578867))

(declare-fun res!1052574 () Bool)

(assert (=> d!713798 (=> (not res!1052574) (not e!1578867))))

(assert (=> d!713798 (= res!1052574 (forall!6015 (toList!1675 lt!892536) lambda!94621))))

(assert (=> d!713798 (= (forallContained!902 (toList!1675 lt!892536) lambda!94621 lt!892531) lt!892628)))

(declare-fun b!2486554 () Bool)

(assert (=> b!2486554 (= e!1578867 (contains!5228 (toList!1675 lt!892536) lt!892531))))

(assert (= (and d!713798 res!1052574) b!2486554))

(declare-fun b_lambda!76373 () Bool)

(assert (=> (not b_lambda!76373) (not d!713798)))

(declare-fun m!2855111 () Bool)

(assert (=> d!713798 m!2855111))

(declare-fun m!2855113 () Bool)

(assert (=> d!713798 m!2855113))

(assert (=> d!713798 m!2854959))

(assert (=> b!2486554 m!2854915))

(assert (=> b!2486430 d!713798))

(declare-fun d!713800 () Bool)

(declare-fun e!1578872 () Bool)

(assert (=> d!713800 e!1578872))

(declare-fun res!1052577 () Bool)

(assert (=> d!713800 (=> res!1052577 e!1578872)))

(declare-fun lt!892638 () Bool)

(assert (=> d!713800 (= res!1052577 (not lt!892638))))

(declare-fun lt!892640 () Bool)

(assert (=> d!713800 (= lt!892638 lt!892640)))

(declare-fun lt!892639 () Unit!42885)

(declare-fun e!1578873 () Unit!42885)

(assert (=> d!713800 (= lt!892639 e!1578873)))

(declare-fun c!395195 () Bool)

(assert (=> d!713800 (= c!395195 lt!892640)))

(declare-fun containsKey!172 (List!29322 (_ BitVec 64)) Bool)

(assert (=> d!713800 (= lt!892640 (containsKey!172 (toList!1675 lt!892536) lt!892550))))

(assert (=> d!713800 (= (contains!5229 lt!892536 lt!892550) lt!892638)))

(declare-fun b!2486561 () Bool)

(declare-fun lt!892637 () Unit!42885)

(assert (=> b!2486561 (= e!1578873 lt!892637)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!116 (List!29322 (_ BitVec 64)) Unit!42885)

(assert (=> b!2486561 (= lt!892637 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!1675 lt!892536) lt!892550))))

(declare-fun isDefined!4609 (Option!5786) Bool)

(assert (=> b!2486561 (isDefined!4609 (getValueByKey!158 (toList!1675 lt!892536) lt!892550))))

(declare-fun b!2486562 () Bool)

(declare-fun Unit!42891 () Unit!42885)

(assert (=> b!2486562 (= e!1578873 Unit!42891)))

(declare-fun b!2486563 () Bool)

(assert (=> b!2486563 (= e!1578872 (isDefined!4609 (getValueByKey!158 (toList!1675 lt!892536) lt!892550)))))

(assert (= (and d!713800 c!395195) b!2486561))

(assert (= (and d!713800 (not c!395195)) b!2486562))

(assert (= (and d!713800 (not res!1052577)) b!2486563))

(declare-fun m!2855115 () Bool)

(assert (=> d!713800 m!2855115))

(declare-fun m!2855117 () Bool)

(assert (=> b!2486561 m!2855117))

(declare-fun m!2855119 () Bool)

(assert (=> b!2486561 m!2855119))

(assert (=> b!2486561 m!2855119))

(declare-fun m!2855121 () Bool)

(assert (=> b!2486561 m!2855121))

(assert (=> b!2486563 m!2855119))

(assert (=> b!2486563 m!2855119))

(assert (=> b!2486563 m!2855121))

(assert (=> b!2486430 d!713800))

(declare-fun bs!468065 () Bool)

(declare-fun d!713802 () Bool)

(assert (= bs!468065 (and d!713802 b!2486423)))

(declare-fun lambda!94643 () Int)

(assert (=> bs!468065 (= lambda!94643 lambda!94621)))

(declare-fun bs!468066 () Bool)

(assert (= bs!468066 (and d!713802 d!713754)))

(assert (=> bs!468066 (= lambda!94643 lambda!94629)))

(declare-fun bs!468067 () Bool)

(assert (= bs!468067 (and d!713802 d!713760)))

(assert (=> bs!468067 (not (= lambda!94643 lambda!94632))))

(declare-fun bs!468068 () Bool)

(assert (= bs!468068 (and d!713802 b!2486444)))

(assert (=> bs!468068 (= lambda!94643 lambda!94624)))

(declare-fun bs!468069 () Bool)

(assert (= bs!468069 (and d!713802 b!2486525)))

(assert (=> bs!468069 (= lambda!94643 lambda!94637)))

(declare-fun bs!468070 () Bool)

(assert (= bs!468070 (and d!713802 d!713796)))

(assert (=> bs!468070 (not (= lambda!94643 lambda!94640))))

(assert (=> d!713802 (contains!5229 lt!892536 (hash!776 (hashF!5343 (_2!17160 lt!892545)) key!2246))))

(declare-fun lt!892643 () Unit!42885)

(declare-fun choose!14711 (ListLongMap!627 K!5640 Hashable!3332) Unit!42885)

(assert (=> d!713802 (= lt!892643 (choose!14711 lt!892536 key!2246 (hashF!5343 (_2!17160 lt!892545))))))

(assert (=> d!713802 (forall!6015 (toList!1675 lt!892536) lambda!94643)))

(assert (=> d!713802 (= (lemmaInGenMapThenLongMapContainsHash!32 lt!892536 key!2246 (hashF!5343 (_2!17160 lt!892545))) lt!892643)))

(declare-fun bs!468071 () Bool)

(assert (= bs!468071 d!713802))

(assert (=> bs!468071 m!2854947))

(assert (=> bs!468071 m!2854947))

(declare-fun m!2855123 () Bool)

(assert (=> bs!468071 m!2855123))

(declare-fun m!2855125 () Bool)

(assert (=> bs!468071 m!2855125))

(declare-fun m!2855127 () Bool)

(assert (=> bs!468071 m!2855127))

(assert (=> b!2486430 d!713802))

(declare-fun b!2486564 () Bool)

(declare-fun e!1578875 () List!29321)

(assert (=> b!2486564 (= e!1578875 (t!211010 lt!892542))))

(declare-fun b!2486566 () Bool)

(declare-fun e!1578874 () List!29321)

(assert (=> b!2486566 (= e!1578874 (Cons!29221 (h!34638 lt!892542) (removePairForKey!113 (t!211010 lt!892542) key!2246)))))

(declare-fun b!2486565 () Bool)

(assert (=> b!2486565 (= e!1578875 e!1578874)))

(declare-fun c!395197 () Bool)

(assert (=> b!2486565 (= c!395197 ((_ is Cons!29221) lt!892542))))

(declare-fun d!713804 () Bool)

(declare-fun lt!892644 () List!29321)

(assert (=> d!713804 (not (containsKey!170 lt!892644 key!2246))))

(assert (=> d!713804 (= lt!892644 e!1578875)))

(declare-fun c!395196 () Bool)

(assert (=> d!713804 (= c!395196 (and ((_ is Cons!29221) lt!892542) (= (_1!17158 (h!34638 lt!892542)) key!2246)))))

(assert (=> d!713804 (noDuplicateKeys!121 lt!892542)))

(assert (=> d!713804 (= (removePairForKey!113 lt!892542 key!2246) lt!892644)))

(declare-fun b!2486567 () Bool)

(assert (=> b!2486567 (= e!1578874 Nil!29221)))

(assert (= (and d!713804 c!395196) b!2486564))

(assert (= (and d!713804 (not c!395196)) b!2486565))

(assert (= (and b!2486565 c!395197) b!2486566))

(assert (= (and b!2486565 (not c!395197)) b!2486567))

(declare-fun m!2855129 () Bool)

(assert (=> b!2486566 m!2855129))

(declare-fun m!2855131 () Bool)

(assert (=> d!713804 m!2855131))

(declare-fun m!2855133 () Bool)

(assert (=> d!713804 m!2855133))

(assert (=> b!2486430 d!713804))

(declare-fun d!713806 () Bool)

(declare-fun lt!892647 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3980 (List!29322) (InoxSet tuple2!29234))

(assert (=> d!713806 (= lt!892647 (select (content!3980 (toList!1675 lt!892536)) lt!892531))))

(declare-fun e!1578880 () Bool)

(assert (=> d!713806 (= lt!892647 e!1578880)))

(declare-fun res!1052583 () Bool)

(assert (=> d!713806 (=> (not res!1052583) (not e!1578880))))

(assert (=> d!713806 (= res!1052583 ((_ is Cons!29222) (toList!1675 lt!892536)))))

(assert (=> d!713806 (= (contains!5228 (toList!1675 lt!892536) lt!892531) lt!892647)))

(declare-fun b!2486572 () Bool)

(declare-fun e!1578881 () Bool)

(assert (=> b!2486572 (= e!1578880 e!1578881)))

(declare-fun res!1052582 () Bool)

(assert (=> b!2486572 (=> res!1052582 e!1578881)))

(assert (=> b!2486572 (= res!1052582 (= (h!34639 (toList!1675 lt!892536)) lt!892531))))

(declare-fun b!2486573 () Bool)

(assert (=> b!2486573 (= e!1578881 (contains!5228 (t!211011 (toList!1675 lt!892536)) lt!892531))))

(assert (= (and d!713806 res!1052583) b!2486572))

(assert (= (and b!2486572 (not res!1052582)) b!2486573))

(declare-fun m!2855135 () Bool)

(assert (=> d!713806 m!2855135))

(declare-fun m!2855137 () Bool)

(assert (=> d!713806 m!2855137))

(declare-fun m!2855139 () Bool)

(assert (=> b!2486573 m!2855139))

(assert (=> b!2486430 d!713806))

(declare-fun d!713808 () Bool)

(assert (=> d!713808 (= (apply!6993 lt!892536 lt!892546) (get!9021 (getValueByKey!158 (toList!1675 lt!892536) lt!892546)))))

(declare-fun bs!468072 () Bool)

(assert (= bs!468072 d!713808))

(declare-fun m!2855141 () Bool)

(assert (=> bs!468072 m!2855141))

(assert (=> bs!468072 m!2855141))

(declare-fun m!2855143 () Bool)

(assert (=> bs!468072 m!2855143))

(assert (=> b!2486430 d!713808))

(declare-fun d!713810 () Bool)

(assert (=> d!713810 (contains!5228 (toList!1675 lt!892536) (tuple2!29235 lt!892546 lt!892542))))

(declare-fun lt!892650 () Unit!42885)

(declare-fun choose!14712 (List!29322 (_ BitVec 64) List!29321) Unit!42885)

(assert (=> d!713810 (= lt!892650 (choose!14712 (toList!1675 lt!892536) lt!892546 lt!892542))))

(declare-fun e!1578884 () Bool)

(assert (=> d!713810 e!1578884))

(declare-fun res!1052586 () Bool)

(assert (=> d!713810 (=> (not res!1052586) (not e!1578884))))

(declare-fun isStrictlySorted!11 (List!29322) Bool)

(assert (=> d!713810 (= res!1052586 (isStrictlySorted!11 (toList!1675 lt!892536)))))

(assert (=> d!713810 (= (lemmaGetValueByKeyImpliesContainsTuple!90 (toList!1675 lt!892536) lt!892546 lt!892542) lt!892650)))

(declare-fun b!2486576 () Bool)

(assert (=> b!2486576 (= e!1578884 (= (getValueByKey!158 (toList!1675 lt!892536) lt!892546) (Some!5785 lt!892542)))))

(assert (= (and d!713810 res!1052586) b!2486576))

(declare-fun m!2855145 () Bool)

(assert (=> d!713810 m!2855145))

(declare-fun m!2855147 () Bool)

(assert (=> d!713810 m!2855147))

(declare-fun m!2855149 () Bool)

(assert (=> d!713810 m!2855149))

(assert (=> b!2486576 m!2855141))

(assert (=> b!2486430 d!713810))

(declare-fun bs!468073 () Bool)

(declare-fun d!713812 () Bool)

(assert (= bs!468073 (and d!713812 b!2486423)))

(declare-fun lambda!94644 () Int)

(assert (=> bs!468073 (not (= lambda!94644 lambda!94621))))

(declare-fun bs!468074 () Bool)

(assert (= bs!468074 (and d!713812 d!713754)))

(assert (=> bs!468074 (not (= lambda!94644 lambda!94629))))

(declare-fun bs!468075 () Bool)

(assert (= bs!468075 (and d!713812 d!713760)))

(assert (=> bs!468075 (= lambda!94644 lambda!94632)))

(declare-fun bs!468076 () Bool)

(assert (= bs!468076 (and d!713812 b!2486444)))

(assert (=> bs!468076 (not (= lambda!94644 lambda!94624))))

(declare-fun bs!468077 () Bool)

(assert (= bs!468077 (and d!713812 d!713796)))

(assert (=> bs!468077 (= lambda!94644 lambda!94640)))

(declare-fun bs!468078 () Bool)

(assert (= bs!468078 (and d!713812 b!2486525)))

(assert (=> bs!468078 (not (= lambda!94644 lambda!94637))))

(declare-fun bs!468079 () Bool)

(assert (= bs!468079 (and d!713812 d!713802)))

(assert (=> bs!468079 (not (= lambda!94644 lambda!94643))))

(assert (=> d!713812 true))

(assert (=> d!713812 (= (allKeysSameHashInMap!198 lt!892539 (hashF!5343 (_2!17160 lt!892545))) (forall!6015 (toList!1675 lt!892539) lambda!94644))))

(declare-fun bs!468080 () Bool)

(assert (= bs!468080 d!713812))

(declare-fun m!2855151 () Bool)

(assert (=> bs!468080 m!2855151))

(assert (=> b!2486432 d!713812))

(declare-fun bs!468081 () Bool)

(declare-fun d!713814 () Bool)

(assert (= bs!468081 (and d!713814 b!2486423)))

(declare-fun lambda!94645 () Int)

(assert (=> bs!468081 (not (= lambda!94645 lambda!94621))))

(declare-fun bs!468082 () Bool)

(assert (= bs!468082 (and d!713814 d!713754)))

(assert (=> bs!468082 (not (= lambda!94645 lambda!94629))))

(declare-fun bs!468083 () Bool)

(assert (= bs!468083 (and d!713814 d!713760)))

(assert (=> bs!468083 (= lambda!94645 lambda!94632)))

(declare-fun bs!468084 () Bool)

(assert (= bs!468084 (and d!713814 d!713796)))

(assert (=> bs!468084 (= lambda!94645 lambda!94640)))

(declare-fun bs!468085 () Bool)

(assert (= bs!468085 (and d!713814 b!2486444)))

(assert (=> bs!468085 (not (= lambda!94645 lambda!94624))))

(declare-fun bs!468086 () Bool)

(assert (= bs!468086 (and d!713814 d!713812)))

(assert (=> bs!468086 (= lambda!94645 lambda!94644)))

(declare-fun bs!468087 () Bool)

(assert (= bs!468087 (and d!713814 b!2486525)))

(assert (=> bs!468087 (not (= lambda!94645 lambda!94637))))

(declare-fun bs!468088 () Bool)

(assert (= bs!468088 (and d!713814 d!713802)))

(assert (=> bs!468088 (not (= lambda!94645 lambda!94643))))

(assert (=> d!713814 true))

(assert (=> d!713814 (= (allKeysSameHashInMap!198 lt!892536 (hashF!5343 (_2!17160 lt!892545))) (forall!6015 (toList!1675 lt!892536) lambda!94645))))

(declare-fun bs!468089 () Bool)

(assert (= bs!468089 d!713814))

(declare-fun m!2855153 () Bool)

(assert (=> bs!468089 m!2855153))

(assert (=> b!2486422 d!713814))

(declare-fun b!2486577 () Bool)

(assert (=> b!2486577 false))

(declare-fun lt!892657 () Unit!42885)

(declare-fun lt!892656 () Unit!42885)

(assert (=> b!2486577 (= lt!892657 lt!892656)))

(assert (=> b!2486577 (containsKey!171 (toList!1676 (extractMap!193 (toList!1675 lt!892536))) key!2246)))

(assert (=> b!2486577 (= lt!892656 (lemmaInGetKeysListThenContainsKey!20 (toList!1676 (extractMap!193 (toList!1675 lt!892536))) key!2246))))

(declare-fun e!1578887 () Unit!42885)

(declare-fun Unit!42892 () Unit!42885)

(assert (=> b!2486577 (= e!1578887 Unit!42892)))

(declare-fun b!2486578 () Bool)

(declare-fun e!1578885 () Unit!42885)

(declare-fun lt!892651 () Unit!42885)

(assert (=> b!2486578 (= e!1578885 lt!892651)))

(declare-fun lt!892652 () Unit!42885)

(assert (=> b!2486578 (= lt!892652 (lemmaContainsKeyImpliesGetValueByKeyDefined!115 (toList!1676 (extractMap!193 (toList!1675 lt!892536))) key!2246))))

(assert (=> b!2486578 (isDefined!4608 (getValueByKey!159 (toList!1676 (extractMap!193 (toList!1675 lt!892536))) key!2246))))

(declare-fun lt!892655 () Unit!42885)

(assert (=> b!2486578 (= lt!892655 lt!892652)))

(assert (=> b!2486578 (= lt!892651 (lemmaInListThenGetKeysListContains!20 (toList!1676 (extractMap!193 (toList!1675 lt!892536))) key!2246))))

(declare-fun call!152477 () Bool)

(assert (=> b!2486578 call!152477))

(declare-fun b!2486579 () Bool)

(assert (=> b!2486579 (= e!1578885 e!1578887)))

(declare-fun c!395198 () Bool)

(assert (=> b!2486579 (= c!395198 call!152477)))

(declare-fun bm!152472 () Bool)

(declare-fun e!1578889 () List!29323)

(assert (=> bm!152472 (= call!152477 (contains!5232 e!1578889 key!2246))))

(declare-fun c!395199 () Bool)

(declare-fun c!395200 () Bool)

(assert (=> bm!152472 (= c!395199 c!395200)))

(declare-fun b!2486580 () Bool)

(declare-fun e!1578886 () Bool)

(declare-fun e!1578888 () Bool)

(assert (=> b!2486580 (= e!1578886 e!1578888)))

(declare-fun res!1052588 () Bool)

(assert (=> b!2486580 (=> (not res!1052588) (not e!1578888))))

(assert (=> b!2486580 (= res!1052588 (isDefined!4608 (getValueByKey!159 (toList!1676 (extractMap!193 (toList!1675 lt!892536))) key!2246)))))

(declare-fun d!713816 () Bool)

(assert (=> d!713816 e!1578886))

(declare-fun res!1052587 () Bool)

(assert (=> d!713816 (=> res!1052587 e!1578886)))

(declare-fun e!1578890 () Bool)

(assert (=> d!713816 (= res!1052587 e!1578890)))

(declare-fun res!1052589 () Bool)

(assert (=> d!713816 (=> (not res!1052589) (not e!1578890))))

(declare-fun lt!892653 () Bool)

(assert (=> d!713816 (= res!1052589 (not lt!892653))))

(declare-fun lt!892658 () Bool)

(assert (=> d!713816 (= lt!892653 lt!892658)))

(declare-fun lt!892654 () Unit!42885)

(assert (=> d!713816 (= lt!892654 e!1578885)))

(assert (=> d!713816 (= c!395200 lt!892658)))

(assert (=> d!713816 (= lt!892658 (containsKey!171 (toList!1676 (extractMap!193 (toList!1675 lt!892536))) key!2246))))

(assert (=> d!713816 (= (contains!5227 (extractMap!193 (toList!1675 lt!892536)) key!2246) lt!892653)))

(declare-fun b!2486581 () Bool)

(assert (=> b!2486581 (= e!1578888 (contains!5232 (keys!9379 (extractMap!193 (toList!1675 lt!892536))) key!2246))))

(declare-fun b!2486582 () Bool)

(assert (=> b!2486582 (= e!1578890 (not (contains!5232 (keys!9379 (extractMap!193 (toList!1675 lt!892536))) key!2246)))))

(declare-fun b!2486583 () Bool)

(assert (=> b!2486583 (= e!1578889 (keys!9379 (extractMap!193 (toList!1675 lt!892536))))))

(declare-fun b!2486584 () Bool)

(assert (=> b!2486584 (= e!1578889 (getKeysList!23 (toList!1676 (extractMap!193 (toList!1675 lt!892536)))))))

(declare-fun b!2486585 () Bool)

(declare-fun Unit!42893 () Unit!42885)

(assert (=> b!2486585 (= e!1578887 Unit!42893)))

(assert (= (and d!713816 c!395200) b!2486578))

(assert (= (and d!713816 (not c!395200)) b!2486579))

(assert (= (and b!2486579 c!395198) b!2486577))

(assert (= (and b!2486579 (not c!395198)) b!2486585))

(assert (= (or b!2486578 b!2486579) bm!152472))

(assert (= (and bm!152472 c!395199) b!2486584))

(assert (= (and bm!152472 (not c!395199)) b!2486583))

(assert (= (and d!713816 res!1052589) b!2486582))

(assert (= (and d!713816 (not res!1052587)) b!2486580))

(assert (= (and b!2486580 res!1052588) b!2486581))

(assert (=> b!2486582 m!2854921))

(declare-fun m!2855155 () Bool)

(assert (=> b!2486582 m!2855155))

(assert (=> b!2486582 m!2855155))

(declare-fun m!2855157 () Bool)

(assert (=> b!2486582 m!2855157))

(declare-fun m!2855159 () Bool)

(assert (=> d!713816 m!2855159))

(declare-fun m!2855161 () Bool)

(assert (=> b!2486578 m!2855161))

(declare-fun m!2855163 () Bool)

(assert (=> b!2486578 m!2855163))

(assert (=> b!2486578 m!2855163))

(declare-fun m!2855165 () Bool)

(assert (=> b!2486578 m!2855165))

(declare-fun m!2855167 () Bool)

(assert (=> b!2486578 m!2855167))

(declare-fun m!2855169 () Bool)

(assert (=> bm!152472 m!2855169))

(assert (=> b!2486583 m!2854921))

(assert (=> b!2486583 m!2855155))

(declare-fun m!2855171 () Bool)

(assert (=> b!2486584 m!2855171))

(assert (=> b!2486580 m!2855163))

(assert (=> b!2486580 m!2855163))

(assert (=> b!2486580 m!2855165))

(assert (=> b!2486581 m!2854921))

(assert (=> b!2486581 m!2855155))

(assert (=> b!2486581 m!2855155))

(assert (=> b!2486581 m!2855157))

(assert (=> b!2486577 m!2855159))

(declare-fun m!2855173 () Bool)

(assert (=> b!2486577 m!2855173))

(assert (=> b!2486428 d!713816))

(declare-fun bs!468090 () Bool)

(declare-fun d!713818 () Bool)

(assert (= bs!468090 (and d!713818 b!2486423)))

(declare-fun lambda!94648 () Int)

(assert (=> bs!468090 (= lambda!94648 lambda!94621)))

(declare-fun bs!468091 () Bool)

(assert (= bs!468091 (and d!713818 d!713754)))

(assert (=> bs!468091 (= lambda!94648 lambda!94629)))

(declare-fun bs!468092 () Bool)

(assert (= bs!468092 (and d!713818 d!713760)))

(assert (=> bs!468092 (not (= lambda!94648 lambda!94632))))

(declare-fun bs!468093 () Bool)

(assert (= bs!468093 (and d!713818 d!713814)))

(assert (=> bs!468093 (not (= lambda!94648 lambda!94645))))

(declare-fun bs!468094 () Bool)

(assert (= bs!468094 (and d!713818 d!713796)))

(assert (=> bs!468094 (not (= lambda!94648 lambda!94640))))

(declare-fun bs!468095 () Bool)

(assert (= bs!468095 (and d!713818 b!2486444)))

(assert (=> bs!468095 (= lambda!94648 lambda!94624)))

(declare-fun bs!468096 () Bool)

(assert (= bs!468096 (and d!713818 d!713812)))

(assert (=> bs!468096 (not (= lambda!94648 lambda!94644))))

(declare-fun bs!468097 () Bool)

(assert (= bs!468097 (and d!713818 b!2486525)))

(assert (=> bs!468097 (= lambda!94648 lambda!94637)))

(declare-fun bs!468098 () Bool)

(assert (= bs!468098 (and d!713818 d!713802)))

(assert (=> bs!468098 (= lambda!94648 lambda!94643)))

(declare-fun lt!892661 () ListMap!1153)

(assert (=> d!713818 (invariantList!424 (toList!1676 lt!892661))))

(declare-fun e!1578893 () ListMap!1153)

(assert (=> d!713818 (= lt!892661 e!1578893)))

(declare-fun c!395203 () Bool)

(assert (=> d!713818 (= c!395203 ((_ is Cons!29222) (toList!1675 lt!892536)))))

(assert (=> d!713818 (forall!6015 (toList!1675 lt!892536) lambda!94648)))

(assert (=> d!713818 (= (extractMap!193 (toList!1675 lt!892536)) lt!892661)))

(declare-fun b!2486590 () Bool)

(declare-fun addToMapMapFromBucket!18 (List!29321 ListMap!1153) ListMap!1153)

(assert (=> b!2486590 (= e!1578893 (addToMapMapFromBucket!18 (_2!17159 (h!34639 (toList!1675 lt!892536))) (extractMap!193 (t!211011 (toList!1675 lt!892536)))))))

(declare-fun b!2486591 () Bool)

(assert (=> b!2486591 (= e!1578893 (ListMap!1154 Nil!29221))))

(assert (= (and d!713818 c!395203) b!2486590))

(assert (= (and d!713818 (not c!395203)) b!2486591))

(declare-fun m!2855175 () Bool)

(assert (=> d!713818 m!2855175))

(declare-fun m!2855177 () Bool)

(assert (=> d!713818 m!2855177))

(declare-fun m!2855179 () Bool)

(assert (=> b!2486590 m!2855179))

(assert (=> b!2486590 m!2855179))

(declare-fun m!2855181 () Bool)

(assert (=> b!2486590 m!2855181))

(assert (=> b!2486428 d!713818))

(declare-fun d!713820 () Bool)

(assert (=> d!713820 (= (array_inv!3907 (_keys!3719 (v!31664 (underlying!7051 (v!31665 (underlying!7052 thiss!42540)))))) (bvsge (size!22854 (_keys!3719 (v!31664 (underlying!7051 (v!31665 (underlying!7052 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2486438 d!713820))

(declare-fun d!713822 () Bool)

(assert (=> d!713822 (= (array_inv!3908 (_values!3702 (v!31664 (underlying!7051 (v!31665 (underlying!7052 thiss!42540)))))) (bvsge (size!22853 (_values!3702 (v!31664 (underlying!7051 (v!31665 (underlying!7052 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2486438 d!713822))

(declare-fun bs!468099 () Bool)

(declare-fun b!2486624 () Bool)

(assert (= bs!468099 (and b!2486624 b!2486423)))

(declare-fun lambda!94651 () Int)

(assert (=> bs!468099 (= lambda!94651 lambda!94621)))

(declare-fun bs!468100 () Bool)

(assert (= bs!468100 (and b!2486624 d!713754)))

(assert (=> bs!468100 (= lambda!94651 lambda!94629)))

(declare-fun bs!468101 () Bool)

(assert (= bs!468101 (and b!2486624 d!713760)))

(assert (=> bs!468101 (not (= lambda!94651 lambda!94632))))

(declare-fun bs!468102 () Bool)

(assert (= bs!468102 (and b!2486624 d!713814)))

(assert (=> bs!468102 (not (= lambda!94651 lambda!94645))))

(declare-fun bs!468103 () Bool)

(assert (= bs!468103 (and b!2486624 d!713818)))

(assert (=> bs!468103 (= lambda!94651 lambda!94648)))

(declare-fun bs!468104 () Bool)

(assert (= bs!468104 (and b!2486624 d!713796)))

(assert (=> bs!468104 (not (= lambda!94651 lambda!94640))))

(declare-fun bs!468105 () Bool)

(assert (= bs!468105 (and b!2486624 b!2486444)))

(assert (=> bs!468105 (= lambda!94651 lambda!94624)))

(declare-fun bs!468106 () Bool)

(assert (= bs!468106 (and b!2486624 d!713812)))

(assert (=> bs!468106 (not (= lambda!94651 lambda!94644))))

(declare-fun bs!468107 () Bool)

(assert (= bs!468107 (and b!2486624 b!2486525)))

(assert (=> bs!468107 (= lambda!94651 lambda!94637)))

(declare-fun bs!468108 () Bool)

(assert (= bs!468108 (and b!2486624 d!713802)))

(assert (=> bs!468108 (= lambda!94651 lambda!94643)))

(declare-fun b!2486614 () Bool)

(declare-fun e!1578908 () Bool)

(declare-fun lt!892708 () (_ BitVec 64))

(declare-datatypes ((Option!5788 0))(
  ( (None!5787) (Some!5787 (v!31674 tuple2!29232)) )
))
(declare-fun isDefined!4610 (Option!5788) Bool)

(declare-fun getPair!85 (List!29321 K!5640) Option!5788)

(assert (=> b!2486614 (= e!1578908 (isDefined!4610 (getPair!85 (apply!6992 (v!31665 (underlying!7052 thiss!42540)) lt!892708) key!2246)))))

(declare-fun b!2486615 () Bool)

(declare-fun e!1578913 () Unit!42885)

(declare-fun lt!892712 () Unit!42885)

(assert (=> b!2486615 (= e!1578913 lt!892712)))

(declare-fun lt!892714 () ListLongMap!627)

(declare-fun call!152494 () ListLongMap!627)

(assert (=> b!2486615 (= lt!892714 call!152494)))

(declare-fun lemmaInGenericMapThenInLongMap!85 (ListLongMap!627 K!5640 Hashable!3332) Unit!42885)

(assert (=> b!2486615 (= lt!892712 (lemmaInGenericMapThenInLongMap!85 lt!892714 key!2246 (hashF!5343 thiss!42540)))))

(declare-fun res!1052598 () Bool)

(declare-fun call!152493 () Bool)

(assert (=> b!2486615 (= res!1052598 call!152493)))

(declare-fun e!1578912 () Bool)

(assert (=> b!2486615 (=> (not res!1052598) (not e!1578912))))

(assert (=> b!2486615 e!1578912))

(declare-fun bm!152485 () Bool)

(declare-fun call!152495 () Bool)

(declare-fun call!152490 () Option!5788)

(assert (=> bm!152485 (= call!152495 (isDefined!4610 call!152490))))

(declare-fun b!2486616 () Bool)

(declare-fun e!1578910 () Unit!42885)

(declare-fun Unit!42894 () Unit!42885)

(assert (=> b!2486616 (= e!1578910 Unit!42894)))

(declare-fun b!2486617 () Bool)

(declare-fun e!1578914 () Unit!42885)

(declare-fun Unit!42895 () Unit!42885)

(assert (=> b!2486617 (= e!1578914 Unit!42895)))

(declare-fun b!2486618 () Bool)

(assert (=> b!2486618 (= e!1578913 e!1578910)))

(declare-fun res!1052597 () Bool)

(assert (=> b!2486618 (= res!1052597 call!152493)))

(declare-fun e!1578909 () Bool)

(assert (=> b!2486618 (=> (not res!1052597) (not e!1578909))))

(declare-fun c!395212 () Bool)

(assert (=> b!2486618 (= c!395212 e!1578909)))

(declare-fun bm!152486 () Bool)

(declare-fun call!152492 () (_ BitVec 64))

(assert (=> bm!152486 (= call!152492 (hash!776 (hashF!5343 thiss!42540) key!2246))))

(declare-fun d!713824 () Bool)

(declare-fun lt!892710 () Bool)

(assert (=> d!713824 (= lt!892710 (contains!5227 (map!6333 thiss!42540) key!2246))))

(assert (=> d!713824 (= lt!892710 e!1578908)))

(declare-fun res!1052596 () Bool)

(assert (=> d!713824 (=> (not res!1052596) (not e!1578908))))

(assert (=> d!713824 (= res!1052596 (contains!5231 (v!31665 (underlying!7052 thiss!42540)) lt!892708))))

(declare-fun lt!892720 () Unit!42885)

(assert (=> d!713824 (= lt!892720 e!1578913)))

(declare-fun c!395215 () Bool)

(assert (=> d!713824 (= c!395215 (contains!5227 (extractMap!193 (toList!1675 (map!6334 (v!31665 (underlying!7052 thiss!42540))))) key!2246))))

(declare-fun lt!892702 () Unit!42885)

(declare-fun e!1578911 () Unit!42885)

(assert (=> d!713824 (= lt!892702 e!1578911)))

(declare-fun c!395213 () Bool)

(assert (=> d!713824 (= c!395213 (contains!5231 (v!31665 (underlying!7052 thiss!42540)) lt!892708))))

(assert (=> d!713824 (= lt!892708 (hash!776 (hashF!5343 thiss!42540) key!2246))))

(assert (=> d!713824 (valid!2631 thiss!42540)))

(assert (=> d!713824 (= (contains!5230 thiss!42540 key!2246) lt!892710)))

(declare-fun bm!152487 () Bool)

(assert (=> bm!152487 (= call!152493 (contains!5229 (ite c!395215 lt!892714 call!152494) call!152492))))

(declare-fun b!2486619 () Bool)

(assert (=> b!2486619 (= e!1578912 call!152495)))

(declare-fun bm!152488 () Bool)

(declare-fun call!152491 () List!29321)

(assert (=> bm!152488 (= call!152490 (getPair!85 call!152491 key!2246))))

(declare-fun bm!152489 () Bool)

(assert (=> bm!152489 (= call!152494 (map!6334 (v!31665 (underlying!7052 thiss!42540))))))

(declare-fun b!2486620 () Bool)

(assert (=> b!2486620 false))

(declare-fun lt!892717 () Unit!42885)

(declare-fun lt!892705 () Unit!42885)

(assert (=> b!2486620 (= lt!892717 lt!892705)))

(declare-fun lt!892707 () ListLongMap!627)

(assert (=> b!2486620 (contains!5227 (extractMap!193 (toList!1675 lt!892707)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!85 (ListLongMap!627 K!5640 Hashable!3332) Unit!42885)

(assert (=> b!2486620 (= lt!892705 (lemmaInLongMapThenInGenericMap!85 lt!892707 key!2246 (hashF!5343 thiss!42540)))))

(assert (=> b!2486620 (= lt!892707 call!152494)))

(declare-fun Unit!42896 () Unit!42885)

(assert (=> b!2486620 (= e!1578910 Unit!42896)))

(declare-fun b!2486621 () Bool)

(assert (=> b!2486621 (= e!1578909 call!152495)))

(declare-fun b!2486622 () Bool)

(declare-fun Unit!42897 () Unit!42885)

(assert (=> b!2486622 (= e!1578911 Unit!42897)))

(declare-fun b!2486623 () Bool)

(assert (=> b!2486623 false))

(declare-fun lt!892721 () Unit!42885)

(declare-fun lt!892715 () Unit!42885)

(assert (=> b!2486623 (= lt!892721 lt!892715)))

(declare-fun lt!892718 () List!29322)

(declare-fun lt!892706 () List!29321)

(assert (=> b!2486623 (contains!5228 lt!892718 (tuple2!29235 lt!892708 lt!892706))))

(assert (=> b!2486623 (= lt!892715 (lemmaGetValueByKeyImpliesContainsTuple!90 lt!892718 lt!892708 lt!892706))))

(assert (=> b!2486623 (= lt!892706 (apply!6992 (v!31665 (underlying!7052 thiss!42540)) lt!892708))))

(assert (=> b!2486623 (= lt!892718 (toList!1675 (map!6334 (v!31665 (underlying!7052 thiss!42540)))))))

(declare-fun lt!892716 () Unit!42885)

(declare-fun lt!892711 () Unit!42885)

(assert (=> b!2486623 (= lt!892716 lt!892711)))

(declare-fun lt!892713 () List!29322)

(assert (=> b!2486623 (isDefined!4609 (getValueByKey!158 lt!892713 lt!892708))))

(assert (=> b!2486623 (= lt!892711 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 lt!892713 lt!892708))))

(assert (=> b!2486623 (= lt!892713 (toList!1675 (map!6334 (v!31665 (underlying!7052 thiss!42540)))))))

(declare-fun lt!892719 () Unit!42885)

(declare-fun lt!892704 () Unit!42885)

(assert (=> b!2486623 (= lt!892719 lt!892704)))

(declare-fun lt!892703 () List!29322)

(assert (=> b!2486623 (containsKey!172 lt!892703 lt!892708)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!86 (List!29322 (_ BitVec 64)) Unit!42885)

(assert (=> b!2486623 (= lt!892704 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!86 lt!892703 lt!892708))))

(assert (=> b!2486623 (= lt!892703 (toList!1675 (map!6334 (v!31665 (underlying!7052 thiss!42540)))))))

(declare-fun Unit!42898 () Unit!42885)

(assert (=> b!2486623 (= e!1578914 Unit!42898)))

(declare-fun bm!152490 () Bool)

(assert (=> bm!152490 (= call!152491 (apply!6993 (ite c!395215 lt!892714 call!152494) call!152492))))

(assert (=> b!2486624 (= e!1578911 (forallContained!902 (toList!1675 (map!6334 (v!31665 (underlying!7052 thiss!42540)))) lambda!94651 (tuple2!29235 lt!892708 (apply!6992 (v!31665 (underlying!7052 thiss!42540)) lt!892708))))))

(declare-fun c!395214 () Bool)

(assert (=> b!2486624 (= c!395214 (not (contains!5228 (toList!1675 (map!6334 (v!31665 (underlying!7052 thiss!42540)))) (tuple2!29235 lt!892708 (apply!6992 (v!31665 (underlying!7052 thiss!42540)) lt!892708)))))))

(declare-fun lt!892709 () Unit!42885)

(assert (=> b!2486624 (= lt!892709 e!1578914)))

(assert (= (and d!713824 c!395213) b!2486624))

(assert (= (and d!713824 (not c!395213)) b!2486622))

(assert (= (and b!2486624 c!395214) b!2486623))

(assert (= (and b!2486624 (not c!395214)) b!2486617))

(assert (= (and d!713824 c!395215) b!2486615))

(assert (= (and d!713824 (not c!395215)) b!2486618))

(assert (= (and b!2486615 res!1052598) b!2486619))

(assert (= (and b!2486618 res!1052597) b!2486621))

(assert (= (and b!2486618 c!395212) b!2486620))

(assert (= (and b!2486618 (not c!395212)) b!2486616))

(assert (= (or b!2486615 b!2486619 b!2486618 b!2486621) bm!152486))

(assert (= (or b!2486615 b!2486618 b!2486621 b!2486620) bm!152489))

(assert (= (or b!2486615 b!2486618) bm!152487))

(assert (= (or b!2486619 b!2486621) bm!152490))

(assert (= (or b!2486619 b!2486621) bm!152488))

(assert (= (or b!2486619 b!2486621) bm!152485))

(assert (= (and d!713824 res!1052596) b!2486614))

(assert (=> b!2486624 m!2854941))

(declare-fun m!2855183 () Bool)

(assert (=> b!2486624 m!2855183))

(declare-fun m!2855185 () Bool)

(assert (=> b!2486624 m!2855185))

(declare-fun m!2855187 () Bool)

(assert (=> b!2486624 m!2855187))

(declare-fun m!2855189 () Bool)

(assert (=> bm!152487 m!2855189))

(assert (=> b!2486614 m!2855183))

(assert (=> b!2486614 m!2855183))

(declare-fun m!2855191 () Bool)

(assert (=> b!2486614 m!2855191))

(assert (=> b!2486614 m!2855191))

(declare-fun m!2855193 () Bool)

(assert (=> b!2486614 m!2855193))

(assert (=> bm!152489 m!2854941))

(declare-fun m!2855195 () Bool)

(assert (=> b!2486623 m!2855195))

(assert (=> b!2486623 m!2854941))

(declare-fun m!2855197 () Bool)

(assert (=> b!2486623 m!2855197))

(declare-fun m!2855199 () Bool)

(assert (=> b!2486623 m!2855199))

(assert (=> b!2486623 m!2855197))

(declare-fun m!2855201 () Bool)

(assert (=> b!2486623 m!2855201))

(declare-fun m!2855203 () Bool)

(assert (=> b!2486623 m!2855203))

(assert (=> b!2486623 m!2855183))

(declare-fun m!2855205 () Bool)

(assert (=> b!2486623 m!2855205))

(declare-fun m!2855207 () Bool)

(assert (=> b!2486623 m!2855207))

(declare-fun m!2855209 () Bool)

(assert (=> bm!152485 m!2855209))

(declare-fun m!2855211 () Bool)

(assert (=> b!2486615 m!2855211))

(declare-fun m!2855213 () Bool)

(assert (=> bm!152488 m!2855213))

(assert (=> bm!152486 m!2854937))

(declare-fun m!2855215 () Bool)

(assert (=> b!2486620 m!2855215))

(assert (=> b!2486620 m!2855215))

(declare-fun m!2855217 () Bool)

(assert (=> b!2486620 m!2855217))

(declare-fun m!2855219 () Bool)

(assert (=> b!2486620 m!2855219))

(assert (=> d!713824 m!2854945))

(assert (=> d!713824 m!2854941))

(assert (=> d!713824 m!2855061))

(declare-fun m!2855221 () Bool)

(assert (=> d!713824 m!2855221))

(declare-fun m!2855223 () Bool)

(assert (=> d!713824 m!2855223))

(assert (=> d!713824 m!2854937))

(assert (=> d!713824 m!2855061))

(assert (=> d!713824 m!2854935))

(assert (=> d!713824 m!2854935))

(declare-fun m!2855225 () Bool)

(assert (=> d!713824 m!2855225))

(declare-fun m!2855227 () Bool)

(assert (=> bm!152490 m!2855227))

(assert (=> b!2486437 d!713824))

(declare-fun mapNonEmpty!15783 () Bool)

(declare-fun mapRes!15783 () Bool)

(declare-fun tp!795960 () Bool)

(declare-fun e!1578919 () Bool)

(assert (=> mapNonEmpty!15783 (= mapRes!15783 (and tp!795960 e!1578919))))

(declare-fun mapRest!15783 () (Array (_ BitVec 32) List!29321))

(declare-fun mapValue!15783 () List!29321)

(declare-fun mapKey!15783 () (_ BitVec 32))

(assert (=> mapNonEmpty!15783 (= mapRest!15780 (store mapRest!15783 mapKey!15783 mapValue!15783))))

(declare-fun b!2486631 () Bool)

(declare-fun tp!795958 () Bool)

(declare-fun tp_is_empty!12405 () Bool)

(assert (=> b!2486631 (= e!1578919 (and tp_is_empty!12403 tp_is_empty!12405 tp!795958))))

(declare-fun condMapEmpty!15783 () Bool)

(declare-fun mapDefault!15783 () List!29321)

(assert (=> mapNonEmpty!15780 (= condMapEmpty!15783 (= mapRest!15780 ((as const (Array (_ BitVec 32) List!29321)) mapDefault!15783)))))

(declare-fun e!1578920 () Bool)

(assert (=> mapNonEmpty!15780 (= tp!795946 (and e!1578920 mapRes!15783))))

(declare-fun tp!795959 () Bool)

(declare-fun b!2486632 () Bool)

(assert (=> b!2486632 (= e!1578920 (and tp_is_empty!12403 tp_is_empty!12405 tp!795959))))

(declare-fun mapIsEmpty!15783 () Bool)

(assert (=> mapIsEmpty!15783 mapRes!15783))

(assert (= (and mapNonEmpty!15780 condMapEmpty!15783) mapIsEmpty!15783))

(assert (= (and mapNonEmpty!15780 (not condMapEmpty!15783)) mapNonEmpty!15783))

(assert (= (and mapNonEmpty!15783 ((_ is Cons!29221) mapValue!15783)) b!2486631))

(assert (= (and mapNonEmpty!15780 ((_ is Cons!29221) mapDefault!15783)) b!2486632))

(declare-fun m!2855229 () Bool)

(assert (=> mapNonEmpty!15783 m!2855229))

(declare-fun tp!795963 () Bool)

(declare-fun e!1578923 () Bool)

(declare-fun b!2486637 () Bool)

(assert (=> b!2486637 (= e!1578923 (and tp_is_empty!12403 tp_is_empty!12405 tp!795963))))

(assert (=> mapNonEmpty!15780 (= tp!795949 e!1578923)))

(assert (= (and mapNonEmpty!15780 ((_ is Cons!29221) mapValue!15780)) b!2486637))

(declare-fun tp!795964 () Bool)

(declare-fun b!2486638 () Bool)

(declare-fun e!1578924 () Bool)

(assert (=> b!2486638 (= e!1578924 (and tp_is_empty!12403 tp_is_empty!12405 tp!795964))))

(assert (=> b!2486438 (= tp!795945 e!1578924)))

(assert (= (and b!2486438 ((_ is Cons!29221) (zeroValue!3680 (v!31664 (underlying!7051 (v!31665 (underlying!7052 thiss!42540))))))) b!2486638))

(declare-fun e!1578925 () Bool)

(declare-fun b!2486639 () Bool)

(declare-fun tp!795965 () Bool)

(assert (=> b!2486639 (= e!1578925 (and tp_is_empty!12403 tp_is_empty!12405 tp!795965))))

(assert (=> b!2486438 (= tp!795948 e!1578925)))

(assert (= (and b!2486438 ((_ is Cons!29221) (minValue!3680 (v!31664 (underlying!7051 (v!31665 (underlying!7052 thiss!42540))))))) b!2486639))

(declare-fun b!2486640 () Bool)

(declare-fun e!1578926 () Bool)

(declare-fun tp!795966 () Bool)

(assert (=> b!2486640 (= e!1578926 (and tp_is_empty!12403 tp_is_empty!12405 tp!795966))))

(assert (=> b!2486429 (= tp!795950 e!1578926)))

(assert (= (and b!2486429 ((_ is Cons!29221) mapDefault!15780)) b!2486640))

(declare-fun b_lambda!76375 () Bool)

(assert (= b_lambda!76369 (or (and b!2486438 b_free!72545) b_lambda!76375)))

(declare-fun b_lambda!76377 () Bool)

(assert (= b_lambda!76373 (or b!2486423 b_lambda!76377)))

(declare-fun bs!468109 () Bool)

(declare-fun d!713826 () Bool)

(assert (= bs!468109 (and d!713826 b!2486423)))

(assert (=> bs!468109 (= (dynLambda!12506 lambda!94621 lt!892531) (noDuplicateKeys!121 (_2!17159 lt!892531)))))

(declare-fun m!2855231 () Bool)

(assert (=> bs!468109 m!2855231))

(assert (=> d!713798 d!713826))

(declare-fun b_lambda!76379 () Bool)

(assert (= b_lambda!76363 (or b!2486423 b_lambda!76379)))

(declare-fun bs!468110 () Bool)

(declare-fun d!713828 () Bool)

(assert (= bs!468110 (and d!713828 b!2486423)))

(assert (=> bs!468110 (= (dynLambda!12506 lambda!94621 (h!34639 (toList!1675 lt!892536))) (noDuplicateKeys!121 (_2!17159 (h!34639 (toList!1675 lt!892536)))))))

(declare-fun m!2855233 () Bool)

(assert (=> bs!468110 m!2855233))

(assert (=> b!2486461 d!713828))

(declare-fun b_lambda!76381 () Bool)

(assert (= b_lambda!76367 (or b!2486423 b_lambda!76381)))

(declare-fun bs!468111 () Bool)

(declare-fun d!713830 () Bool)

(assert (= bs!468111 (and d!713830 b!2486423)))

(assert (=> bs!468111 (= (dynLambda!12506 lambda!94621 (h!34639 (toList!1675 lt!892539))) (noDuplicateKeys!121 (_2!17159 (h!34639 (toList!1675 lt!892539)))))))

(declare-fun m!2855235 () Bool)

(assert (=> bs!468111 m!2855235))

(assert (=> b!2486469 d!713830))

(declare-fun b_lambda!76383 () Bool)

(assert (= b_lambda!76365 (or b!2486423 b_lambda!76383)))

(declare-fun bs!468112 () Bool)

(declare-fun d!713832 () Bool)

(assert (= bs!468112 (and d!713832 b!2486423)))

(assert (=> bs!468112 (= (dynLambda!12506 lambda!94621 (h!34639 (toList!1675 lt!892535))) (noDuplicateKeys!121 (_2!17159 (h!34639 (toList!1675 lt!892535)))))))

(declare-fun m!2855237 () Bool)

(assert (=> bs!468112 m!2855237))

(assert (=> b!2486463 d!713832))

(declare-fun b_lambda!76385 () Bool)

(assert (= b_lambda!76371 (or b!2486423 b_lambda!76385)))

(declare-fun bs!468113 () Bool)

(declare-fun d!713834 () Bool)

(assert (= bs!468113 (and d!713834 b!2486423)))

(assert (=> bs!468113 (= (dynLambda!12506 lambda!94621 (tuple2!29235 lt!892546 lt!892537)) (noDuplicateKeys!121 (_2!17159 (tuple2!29235 lt!892546 lt!892537))))))

(declare-fun m!2855239 () Bool)

(assert (=> bs!468113 m!2855239))

(assert (=> d!713788 d!713834))

(check-sat (not b_lambda!76381) (not b!2486493) (not b!2486614) (not b!2486638) (not tb!140407) (not b_lambda!76377) (not b!2486554) (not b_lambda!76379) (not b!2486545) (not b!2486620) (not b!2486444) (not b!2486549) (not d!713790) (not d!713816) (not b!2486551) (not d!713802) (not b!2486576) (not d!713796) (not b!2486526) (not b!2486561) (not bm!152489) (not d!713770) (not b!2486454) (not d!713766) (not b!2486577) (not b!2486580) (not b!2486464) (not b!2486590) (not b!2486615) (not d!713782) (not b!2486445) (not b!2486566) (not bm!152490) (not bs!468109) (not b!2486623) (not d!713776) (not b!2486581) (not b!2486546) (not d!713780) (not d!713824) (not bm!152488) (not b!2486524) (not b!2486525) (not d!713778) (not bm!152472) tp_is_empty!12403 (not b!2486453) (not b!2486582) (not d!713792) (not b_lambda!76375) (not bm!152486) (not bm!152485) (not b!2486497) (not b!2486631) (not d!713758) (not b!2486552) (not b!2486520) (not d!713808) (not b!2486573) (not b_next!73249) (not b!2486640) (not d!713754) (not b!2486578) (not b!2486470) (not d!713760) b_and!188833 (not b_next!73251) (not b!2486522) (not bs!468111) (not b!2486517) (not b!2486521) (not d!713800) (not d!713804) (not b!2486584) (not b!2486624) (not bm!152468) (not b!2486583) (not d!713788) (not bs!468113) (not d!713794) (not b!2486548) (not b_lambda!76385) (not bs!468112) (not b!2486637) (not d!713818) (not d!713798) (not bm!152487) (not b_lambda!76383) (not b!2486639) (not b!2486475) (not d!713812) (not d!713756) (not b!2486563) (not b!2486476) b_and!188831 (not d!713806) (not bm!152467) (not d!713768) (not b!2486632) (not bm!152471) (not d!713784) (not d!713810) (not bs!468110) (not b!2486448) (not d!713786) (not b!2486462) (not b!2486487) (not d!713814) (not b!2486550) tp_is_empty!12405 (not mapNonEmpty!15783) (not d!713750) (not d!713752))
(check-sat b_and!188831 b_and!188833 (not b_next!73249) (not b_next!73251))
