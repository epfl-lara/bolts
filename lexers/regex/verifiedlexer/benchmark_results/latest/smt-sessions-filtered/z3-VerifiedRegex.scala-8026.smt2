; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415342 () Bool)

(assert start!415342)

(declare-fun b!4317333 () Bool)

(declare-fun b_free!128891 () Bool)

(declare-fun b_next!129595 () Bool)

(assert (=> b!4317333 (= b_free!128891 (not b_next!129595))))

(declare-fun tp!1326369 () Bool)

(declare-fun b_and!340387 () Bool)

(assert (=> b!4317333 (= tp!1326369 b_and!340387)))

(declare-fun b!4317334 () Bool)

(declare-fun b_free!128893 () Bool)

(declare-fun b_next!129597 () Bool)

(assert (=> b!4317334 (= b_free!128893 (not b_next!129597))))

(declare-fun tp!1326371 () Bool)

(declare-fun b_and!340389 () Bool)

(assert (=> b!4317334 (= tp!1326371 b_and!340389)))

(declare-fun b!4317330 () Bool)

(declare-fun res!1769479 () Bool)

(declare-fun e!2685823 () Bool)

(assert (=> b!4317330 (=> (not res!1769479) (not e!2685823))))

(declare-datatypes ((K!9579 0))(
  ( (K!9580 (val!15921 Int)) )
))
(declare-datatypes ((V!9781 0))(
  ( (V!9782 (val!15922 Int)) )
))
(declare-datatypes ((tuple2!47054 0))(
  ( (tuple2!47055 (_1!26810 K!9579) (_2!26810 V!9781)) )
))
(declare-datatypes ((List!48460 0))(
  ( (Nil!48336) (Cons!48336 (h!53789 tuple2!47054) (t!355317 List!48460)) )
))
(declare-fun lt!1536413 () List!48460)

(declare-fun isEmpty!28097 (List!48460) Bool)

(assert (=> b!4317330 (= res!1769479 (not (isEmpty!28097 lt!1536413)))))

(declare-fun b!4317331 () Bool)

(declare-fun noDuplicateKeys!255 (List!48460) Bool)

(assert (=> b!4317331 (= e!2685823 (not (noDuplicateKeys!255 lt!1536413)))))

(declare-fun lt!1536415 () (_ BitVec 64))

(declare-datatypes ((array!17138 0))(
  ( (array!17139 (arr!7651 (Array (_ BitVec 32) (_ BitVec 64))) (size!35690 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4649 0))(
  ( (HashableExt!4648 (__x!30224 Int)) )
))
(declare-datatypes ((array!17140 0))(
  ( (array!17141 (arr!7652 (Array (_ BitVec 32) List!48460)) (size!35691 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9466 0))(
  ( (LongMapFixedSize!9467 (defaultEntry!5118 Int) (mask!13328 (_ BitVec 32)) (extraKeys!4982 (_ BitVec 32)) (zeroValue!4992 List!48460) (minValue!4992 List!48460) (_size!9509 (_ BitVec 32)) (_keys!5033 array!17138) (_values!5014 array!17140) (_vacant!4794 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18741 0))(
  ( (Cell!18742 (v!42644 LongMapFixedSize!9466)) )
))
(declare-datatypes ((MutLongMap!4733 0))(
  ( (LongMap!4733 (underlying!9695 Cell!18741)) (MutLongMapExt!4732 (__x!30225 Int)) )
))
(declare-datatypes ((Cell!18743 0))(
  ( (Cell!18744 (v!42645 MutLongMap!4733)) )
))
(declare-datatypes ((MutableMap!4639 0))(
  ( (MutableMapExt!4638 (__x!30226 Int)) (HashMap!4639 (underlying!9696 Cell!18743) (hashF!6858 Hashable!4649) (_size!9510 (_ BitVec 32)) (defaultValue!4810 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4639)

(declare-fun allKeysSameHash!228 (List!48460 (_ BitVec 64) Hashable!4649) Bool)

(assert (=> b!4317331 (allKeysSameHash!228 lt!1536413 lt!1536415 (hashF!6858 thiss!42308))))

(declare-datatypes ((tuple2!47056 0))(
  ( (tuple2!47057 (_1!26811 (_ BitVec 64)) (_2!26811 List!48460)) )
))
(declare-datatypes ((List!48461 0))(
  ( (Nil!48337) (Cons!48337 (h!53790 tuple2!47056) (t!355318 List!48461)) )
))
(declare-datatypes ((ListLongMap!1135 0))(
  ( (ListLongMap!1136 (toList!2520 List!48461)) )
))
(declare-fun lt!1536418 () ListLongMap!1135)

(declare-datatypes ((Unit!67578 0))(
  ( (Unit!67579) )
))
(declare-fun lt!1536417 () Unit!67578)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!213 (List!48461 (_ BitVec 64) List!48460 Hashable!4649) Unit!67578)

(assert (=> b!4317331 (= lt!1536417 (lemmaInLongMapAllKeySameHashThenForTuple!213 (toList!2520 lt!1536418) lt!1536415 lt!1536413 (hashF!6858 thiss!42308)))))

(declare-fun b!4317332 () Bool)

(declare-fun e!2685816 () List!48460)

(assert (=> b!4317332 (= e!2685816 Nil!48336)))

(declare-fun e!2685824 () Bool)

(declare-fun e!2685820 () Bool)

(declare-fun tp!1326366 () Bool)

(declare-fun tp!1326368 () Bool)

(declare-fun array_inv!5505 (array!17138) Bool)

(declare-fun array_inv!5506 (array!17140) Bool)

(assert (=> b!4317333 (= e!2685824 (and tp!1326369 tp!1326368 tp!1326366 (array_inv!5505 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) (array_inv!5506 (_values!5014 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) e!2685820))))

(declare-fun mapNonEmpty!21101 () Bool)

(declare-fun mapRes!21101 () Bool)

(declare-fun tp!1326372 () Bool)

(declare-fun tp!1326370 () Bool)

(assert (=> mapNonEmpty!21101 (= mapRes!21101 (and tp!1326372 tp!1326370))))

(declare-fun mapRest!21101 () (Array (_ BitVec 32) List!48460))

(declare-fun mapValue!21101 () List!48460)

(declare-fun mapKey!21101 () (_ BitVec 32))

(assert (=> mapNonEmpty!21101 (= (arr!7652 (_values!5014 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) (store mapRest!21101 mapKey!21101 mapValue!21101))))

(declare-fun e!2685817 () Bool)

(declare-fun e!2685815 () Bool)

(assert (=> b!4317334 (= e!2685817 (and e!2685815 tp!1326371))))

(declare-fun b!4317335 () Bool)

(declare-fun e!2685822 () Bool)

(declare-fun lt!1536416 () MutLongMap!4733)

(get-info :version)

(assert (=> b!4317335 (= e!2685815 (and e!2685822 ((_ is LongMap!4733) lt!1536416)))))

(assert (=> b!4317335 (= lt!1536416 (v!42645 (underlying!9696 thiss!42308)))))

(declare-fun b!4317336 () Bool)

(declare-fun e!2685819 () Bool)

(assert (=> b!4317336 (= e!2685822 e!2685819)))

(declare-fun b!4317337 () Bool)

(declare-fun tp!1326367 () Bool)

(assert (=> b!4317337 (= e!2685820 (and tp!1326367 mapRes!21101))))

(declare-fun condMapEmpty!21101 () Bool)

(declare-fun mapDefault!21101 () List!48460)

(assert (=> b!4317337 (= condMapEmpty!21101 (= (arr!7652 (_values!5014 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48460)) mapDefault!21101)))))

(declare-fun b!4317338 () Bool)

(declare-fun apply!11109 (MutLongMap!4733 (_ BitVec 64)) List!48460)

(assert (=> b!4317338 (= e!2685816 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536415))))

(declare-fun mapIsEmpty!21101 () Bool)

(assert (=> mapIsEmpty!21101 mapRes!21101))

(declare-fun b!4317339 () Bool)

(declare-fun e!2685821 () Bool)

(declare-fun e!2685814 () Bool)

(assert (=> b!4317339 (= e!2685821 e!2685814)))

(declare-fun res!1769483 () Bool)

(assert (=> b!4317339 (=> (not res!1769483) (not e!2685814))))

(declare-fun key!2048 () K!9579)

(declare-fun contains!10358 (MutableMap!4639 K!9579) Bool)

(assert (=> b!4317339 (= res!1769483 (not (contains!10358 thiss!42308 key!2048)))))

(declare-fun map!10355 (MutLongMap!4733) ListLongMap!1135)

(assert (=> b!4317339 (= lt!1536418 (map!10355 (v!42645 (underlying!9696 thiss!42308))))))

(declare-datatypes ((ListMap!1799 0))(
  ( (ListMap!1800 (toList!2521 List!48460)) )
))
(declare-fun lt!1536414 () ListMap!1799)

(declare-fun map!10356 (MutableMap!4639) ListMap!1799)

(assert (=> b!4317339 (= lt!1536414 (map!10356 thiss!42308))))

(declare-fun b!4317329 () Bool)

(declare-fun res!1769481 () Bool)

(assert (=> b!4317329 (=> (not res!1769481) (not e!2685821))))

(declare-fun valid!3737 (MutableMap!4639) Bool)

(assert (=> b!4317329 (= res!1769481 (valid!3737 thiss!42308))))

(declare-fun res!1769480 () Bool)

(assert (=> start!415342 (=> (not res!1769480) (not e!2685821))))

(assert (=> start!415342 (= res!1769480 ((_ is HashMap!4639) thiss!42308))))

(assert (=> start!415342 e!2685821))

(assert (=> start!415342 e!2685817))

(declare-fun tp_is_empty!24029 () Bool)

(assert (=> start!415342 tp_is_empty!24029))

(declare-fun tp_is_empty!24031 () Bool)

(assert (=> start!415342 tp_is_empty!24031))

(declare-fun b!4317340 () Bool)

(assert (=> b!4317340 (= e!2685819 e!2685824)))

(declare-fun b!4317341 () Bool)

(assert (=> b!4317341 (= e!2685814 e!2685823)))

(declare-fun res!1769482 () Bool)

(assert (=> b!4317341 (=> (not res!1769482) (not e!2685823))))

(declare-fun v!9179 () V!9781)

(declare-datatypes ((tuple2!47058 0))(
  ( (tuple2!47059 (_1!26812 Bool) (_2!26812 MutLongMap!4733)) )
))
(declare-fun update!506 (MutLongMap!4733 (_ BitVec 64) List!48460) tuple2!47058)

(assert (=> b!4317341 (= res!1769482 (_1!26812 (update!506 (v!42645 (underlying!9696 thiss!42308)) lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413))))))

(assert (=> b!4317341 (= lt!1536413 e!2685816)))

(declare-fun c!733978 () Bool)

(declare-fun contains!10359 (MutLongMap!4733 (_ BitVec 64)) Bool)

(assert (=> b!4317341 (= c!733978 (contains!10359 (v!42645 (underlying!9696 thiss!42308)) lt!1536415))))

(declare-fun hash!1132 (Hashable!4649 K!9579) (_ BitVec 64))

(assert (=> b!4317341 (= lt!1536415 (hash!1132 (hashF!6858 thiss!42308) key!2048))))

(assert (= (and start!415342 res!1769480) b!4317329))

(assert (= (and b!4317329 res!1769481) b!4317339))

(assert (= (and b!4317339 res!1769483) b!4317341))

(assert (= (and b!4317341 c!733978) b!4317338))

(assert (= (and b!4317341 (not c!733978)) b!4317332))

(assert (= (and b!4317341 res!1769482) b!4317330))

(assert (= (and b!4317330 res!1769479) b!4317331))

(assert (= (and b!4317337 condMapEmpty!21101) mapIsEmpty!21101))

(assert (= (and b!4317337 (not condMapEmpty!21101)) mapNonEmpty!21101))

(assert (= b!4317333 b!4317337))

(assert (= b!4317340 b!4317333))

(assert (= b!4317336 b!4317340))

(assert (= (and b!4317335 ((_ is LongMap!4733) (v!42645 (underlying!9696 thiss!42308)))) b!4317336))

(assert (= b!4317334 b!4317335))

(assert (= (and start!415342 ((_ is HashMap!4639) thiss!42308)) b!4317334))

(declare-fun m!4911021 () Bool)

(assert (=> b!4317339 m!4911021))

(declare-fun m!4911023 () Bool)

(assert (=> b!4317339 m!4911023))

(declare-fun m!4911025 () Bool)

(assert (=> b!4317339 m!4911025))

(declare-fun m!4911027 () Bool)

(assert (=> b!4317329 m!4911027))

(declare-fun m!4911029 () Bool)

(assert (=> mapNonEmpty!21101 m!4911029))

(declare-fun m!4911031 () Bool)

(assert (=> b!4317333 m!4911031))

(declare-fun m!4911033 () Bool)

(assert (=> b!4317333 m!4911033))

(declare-fun m!4911035 () Bool)

(assert (=> b!4317338 m!4911035))

(declare-fun m!4911037 () Bool)

(assert (=> b!4317330 m!4911037))

(declare-fun m!4911039 () Bool)

(assert (=> b!4317331 m!4911039))

(declare-fun m!4911041 () Bool)

(assert (=> b!4317331 m!4911041))

(declare-fun m!4911043 () Bool)

(assert (=> b!4317331 m!4911043))

(declare-fun m!4911045 () Bool)

(assert (=> b!4317341 m!4911045))

(declare-fun m!4911047 () Bool)

(assert (=> b!4317341 m!4911047))

(declare-fun m!4911049 () Bool)

(assert (=> b!4317341 m!4911049))

(check-sat (not mapNonEmpty!21101) (not b!4317338) (not b!4317339) (not b_next!129597) (not b!4317333) (not b!4317341) tp_is_empty!24031 (not b!4317329) b_and!340387 (not b!4317331) (not b!4317330) (not b!4317337) tp_is_empty!24029 (not b_next!129595) b_and!340389)
(check-sat b_and!340387 b_and!340389 (not b_next!129597) (not b_next!129595))
(get-model)

(declare-fun d!1269467 () Bool)

(assert (=> d!1269467 (= (array_inv!5505 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) (bvsge (size!35690 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4317333 d!1269467))

(declare-fun d!1269469 () Bool)

(assert (=> d!1269469 (= (array_inv!5506 (_values!5014 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) (bvsge (size!35691 (_values!5014 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4317333 d!1269469))

(declare-fun b!4317360 () Bool)

(declare-fun res!1769492 () Bool)

(declare-fun e!2685837 () Bool)

(assert (=> b!4317360 (=> (not res!1769492) (not e!2685837))))

(declare-fun lt!1536428 () tuple2!47058)

(declare-fun valid!3738 (MutLongMap!4733) Bool)

(assert (=> b!4317360 (= res!1769492 (valid!3738 (_2!26812 lt!1536428)))))

(declare-fun b!4317361 () Bool)

(declare-fun e!2685836 () Bool)

(declare-fun e!2685839 () Bool)

(assert (=> b!4317361 (= e!2685836 e!2685839)))

(declare-fun res!1769490 () Bool)

(declare-fun call!298810 () ListLongMap!1135)

(declare-fun contains!10360 (ListLongMap!1135 (_ BitVec 64)) Bool)

(assert (=> b!4317361 (= res!1769490 (contains!10360 call!298810 lt!1536415))))

(assert (=> b!4317361 (=> (not res!1769490) (not e!2685839))))

(declare-fun call!298809 () ListLongMap!1135)

(declare-fun b!4317362 () Bool)

(declare-fun +!318 (ListLongMap!1135 tuple2!47056) ListLongMap!1135)

(assert (=> b!4317362 (= e!2685839 (= call!298810 (+!318 call!298809 (tuple2!47057 lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)))))))

(declare-fun b!4317363 () Bool)

(declare-fun e!2685835 () tuple2!47058)

(declare-fun lt!1536427 () tuple2!47058)

(assert (=> b!4317363 (= e!2685835 (tuple2!47059 (_1!26812 lt!1536427) (_2!26812 lt!1536427)))))

(declare-fun repack!77 (MutLongMap!4733) tuple2!47058)

(assert (=> b!4317363 (= lt!1536427 (repack!77 (v!42645 (underlying!9696 thiss!42308))))))

(declare-fun b!4317364 () Bool)

(assert (=> b!4317364 (= e!2685837 e!2685836)))

(declare-fun c!733986 () Bool)

(assert (=> b!4317364 (= c!733986 (_1!26812 lt!1536428))))

(declare-fun b!4317365 () Bool)

(declare-fun e!2685838 () tuple2!47058)

(declare-fun lt!1536430 () tuple2!47058)

(assert (=> b!4317365 (= e!2685838 (tuple2!47059 false (_2!26812 lt!1536430)))))

(declare-fun d!1269471 () Bool)

(assert (=> d!1269471 e!2685837))

(declare-fun res!1769491 () Bool)

(assert (=> d!1269471 (=> (not res!1769491) (not e!2685837))))

(assert (=> d!1269471 (= res!1769491 ((_ is LongMap!4733) (_2!26812 lt!1536428)))))

(assert (=> d!1269471 (= lt!1536428 e!2685838)))

(declare-fun c!733987 () Bool)

(assert (=> d!1269471 (= c!733987 (_1!26812 lt!1536430))))

(assert (=> d!1269471 (= lt!1536430 e!2685835)))

(declare-fun c!733985 () Bool)

(declare-fun imbalanced!73 (MutLongMap!4733) Bool)

(assert (=> d!1269471 (= c!733985 (imbalanced!73 (v!42645 (underlying!9696 thiss!42308))))))

(assert (=> d!1269471 (valid!3738 (v!42645 (underlying!9696 thiss!42308)))))

(assert (=> d!1269471 (= (update!506 (v!42645 (underlying!9696 thiss!42308)) lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)) lt!1536428)))

(declare-fun bm!298804 () Bool)

(assert (=> bm!298804 (= call!298809 (map!10355 (v!42645 (underlying!9696 thiss!42308))))))

(declare-fun b!4317366 () Bool)

(assert (=> b!4317366 (= e!2685836 (= call!298810 call!298809))))

(declare-fun b!4317367 () Bool)

(declare-datatypes ((tuple2!47060 0))(
  ( (tuple2!47061 (_1!26813 Bool) (_2!26813 LongMapFixedSize!9466)) )
))
(declare-fun lt!1536429 () tuple2!47060)

(assert (=> b!4317367 (= e!2685838 (tuple2!47059 (_1!26813 lt!1536429) (LongMap!4733 (Cell!18742 (_2!26813 lt!1536429)))))))

(declare-fun update!507 (LongMapFixedSize!9466 (_ BitVec 64) List!48460) tuple2!47060)

(assert (=> b!4317367 (= lt!1536429 (update!507 (v!42644 (underlying!9695 (_2!26812 lt!1536430))) lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)))))

(declare-fun b!4317368 () Bool)

(assert (=> b!4317368 (= e!2685835 (tuple2!47059 true (v!42645 (underlying!9696 thiss!42308))))))

(declare-fun bm!298805 () Bool)

(assert (=> bm!298805 (= call!298810 (map!10355 (_2!26812 lt!1536428)))))

(assert (= (and d!1269471 c!733985) b!4317363))

(assert (= (and d!1269471 (not c!733985)) b!4317368))

(assert (= (and d!1269471 c!733987) b!4317367))

(assert (= (and d!1269471 (not c!733987)) b!4317365))

(assert (= (and d!1269471 res!1769491) b!4317360))

(assert (= (and b!4317360 res!1769492) b!4317364))

(assert (= (and b!4317364 c!733986) b!4317361))

(assert (= (and b!4317364 (not c!733986)) b!4317366))

(assert (= (and b!4317361 res!1769490) b!4317362))

(assert (= (or b!4317362 b!4317366) bm!298804))

(assert (= (or b!4317361 b!4317362 b!4317366) bm!298805))

(declare-fun m!4911051 () Bool)

(assert (=> b!4317361 m!4911051))

(declare-fun m!4911053 () Bool)

(assert (=> bm!298805 m!4911053))

(declare-fun m!4911055 () Bool)

(assert (=> d!1269471 m!4911055))

(declare-fun m!4911057 () Bool)

(assert (=> d!1269471 m!4911057))

(declare-fun m!4911059 () Bool)

(assert (=> b!4317367 m!4911059))

(declare-fun m!4911061 () Bool)

(assert (=> b!4317362 m!4911061))

(declare-fun m!4911063 () Bool)

(assert (=> b!4317363 m!4911063))

(assert (=> bm!298804 m!4911023))

(declare-fun m!4911065 () Bool)

(assert (=> b!4317360 m!4911065))

(assert (=> b!4317341 d!1269471))

(declare-fun d!1269473 () Bool)

(declare-fun lt!1536433 () Bool)

(assert (=> d!1269473 (= lt!1536433 (contains!10360 (map!10355 (v!42645 (underlying!9696 thiss!42308))) lt!1536415))))

(declare-fun contains!10361 (LongMapFixedSize!9466 (_ BitVec 64)) Bool)

(assert (=> d!1269473 (= lt!1536433 (contains!10361 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))) lt!1536415))))

(assert (=> d!1269473 (valid!3738 (v!42645 (underlying!9696 thiss!42308)))))

(assert (=> d!1269473 (= (contains!10359 (v!42645 (underlying!9696 thiss!42308)) lt!1536415) lt!1536433)))

(declare-fun bs!605932 () Bool)

(assert (= bs!605932 d!1269473))

(assert (=> bs!605932 m!4911023))

(assert (=> bs!605932 m!4911023))

(declare-fun m!4911067 () Bool)

(assert (=> bs!605932 m!4911067))

(declare-fun m!4911069 () Bool)

(assert (=> bs!605932 m!4911069))

(assert (=> bs!605932 m!4911057))

(assert (=> b!4317341 d!1269473))

(declare-fun d!1269475 () Bool)

(declare-fun hash!1134 (Hashable!4649 K!9579) (_ BitVec 64))

(assert (=> d!1269475 (= (hash!1132 (hashF!6858 thiss!42308) key!2048) (hash!1134 (hashF!6858 thiss!42308) key!2048))))

(declare-fun bs!605933 () Bool)

(assert (= bs!605933 d!1269475))

(declare-fun m!4911071 () Bool)

(assert (=> bs!605933 m!4911071))

(assert (=> b!4317341 d!1269475))

(declare-fun d!1269477 () Bool)

(declare-fun res!1769497 () Bool)

(declare-fun e!2685844 () Bool)

(assert (=> d!1269477 (=> res!1769497 e!2685844)))

(assert (=> d!1269477 (= res!1769497 (not ((_ is Cons!48336) lt!1536413)))))

(assert (=> d!1269477 (= (noDuplicateKeys!255 lt!1536413) e!2685844)))

(declare-fun b!4317373 () Bool)

(declare-fun e!2685845 () Bool)

(assert (=> b!4317373 (= e!2685844 e!2685845)))

(declare-fun res!1769498 () Bool)

(assert (=> b!4317373 (=> (not res!1769498) (not e!2685845))))

(declare-fun containsKey!383 (List!48460 K!9579) Bool)

(assert (=> b!4317373 (= res!1769498 (not (containsKey!383 (t!355317 lt!1536413) (_1!26810 (h!53789 lt!1536413)))))))

(declare-fun b!4317374 () Bool)

(assert (=> b!4317374 (= e!2685845 (noDuplicateKeys!255 (t!355317 lt!1536413)))))

(assert (= (and d!1269477 (not res!1769497)) b!4317373))

(assert (= (and b!4317373 res!1769498) b!4317374))

(declare-fun m!4911073 () Bool)

(assert (=> b!4317373 m!4911073))

(declare-fun m!4911075 () Bool)

(assert (=> b!4317374 m!4911075))

(assert (=> b!4317331 d!1269477))

(declare-fun d!1269479 () Bool)

(assert (=> d!1269479 true))

(assert (=> d!1269479 true))

(declare-fun lambda!133546 () Int)

(declare-fun forall!8790 (List!48460 Int) Bool)

(assert (=> d!1269479 (= (allKeysSameHash!228 lt!1536413 lt!1536415 (hashF!6858 thiss!42308)) (forall!8790 lt!1536413 lambda!133546))))

(declare-fun bs!605934 () Bool)

(assert (= bs!605934 d!1269479))

(declare-fun m!4911077 () Bool)

(assert (=> bs!605934 m!4911077))

(assert (=> b!4317331 d!1269479))

(declare-fun d!1269481 () Bool)

(assert (=> d!1269481 true))

(assert (=> d!1269481 (allKeysSameHash!228 lt!1536413 lt!1536415 (hashF!6858 thiss!42308))))

(declare-fun lt!1536436 () Unit!67578)

(declare-fun choose!26344 (List!48461 (_ BitVec 64) List!48460 Hashable!4649) Unit!67578)

(assert (=> d!1269481 (= lt!1536436 (choose!26344 (toList!2520 lt!1536418) lt!1536415 lt!1536413 (hashF!6858 thiss!42308)))))

(declare-fun lambda!133549 () Int)

(declare-fun forall!8791 (List!48461 Int) Bool)

(assert (=> d!1269481 (forall!8791 (toList!2520 lt!1536418) lambda!133549)))

(assert (=> d!1269481 (= (lemmaInLongMapAllKeySameHashThenForTuple!213 (toList!2520 lt!1536418) lt!1536415 lt!1536413 (hashF!6858 thiss!42308)) lt!1536436)))

(declare-fun bs!605935 () Bool)

(assert (= bs!605935 d!1269481))

(assert (=> bs!605935 m!4911041))

(declare-fun m!4911079 () Bool)

(assert (=> bs!605935 m!4911079))

(declare-fun m!4911081 () Bool)

(assert (=> bs!605935 m!4911081))

(assert (=> b!4317331 d!1269481))

(declare-fun bs!605936 () Bool)

(declare-fun b!4317410 () Bool)

(assert (= bs!605936 (and b!4317410 d!1269481)))

(declare-fun lambda!133552 () Int)

(assert (=> bs!605936 (not (= lambda!133552 lambda!133549))))

(declare-fun call!298825 () List!48460)

(declare-fun bm!298818 () Bool)

(declare-fun call!298824 () (_ BitVec 64))

(declare-fun c!733996 () Bool)

(declare-fun call!298828 () ListLongMap!1135)

(declare-fun lt!1536479 () ListLongMap!1135)

(declare-fun apply!11110 (ListLongMap!1135 (_ BitVec 64)) List!48460)

(assert (=> bm!298818 (= call!298825 (apply!11110 (ite c!733996 lt!1536479 call!298828) call!298824))))

(declare-fun bm!298819 () Bool)

(assert (=> bm!298819 (= call!298828 (map!10355 (v!42645 (underlying!9696 thiss!42308))))))

(declare-fun b!4317403 () Bool)

(declare-fun e!2685866 () Unit!67578)

(declare-fun Unit!67580 () Unit!67578)

(assert (=> b!4317403 (= e!2685866 Unit!67580)))

(declare-fun b!4317404 () Bool)

(declare-fun e!2685861 () Unit!67578)

(declare-fun e!2685860 () Unit!67578)

(assert (=> b!4317404 (= e!2685861 e!2685860)))

(declare-fun res!1769505 () Bool)

(declare-fun call!298826 () Bool)

(assert (=> b!4317404 (= res!1769505 call!298826)))

(declare-fun e!2685863 () Bool)

(assert (=> b!4317404 (=> (not res!1769505) (not e!2685863))))

(declare-fun c!733997 () Bool)

(assert (=> b!4317404 (= c!733997 e!2685863)))

(declare-fun bm!298820 () Bool)

(declare-datatypes ((Option!10283 0))(
  ( (None!10282) (Some!10282 (v!42650 tuple2!47054)) )
))
(declare-fun call!298823 () Option!10283)

(declare-fun getPair!155 (List!48460 K!9579) Option!10283)

(assert (=> bm!298820 (= call!298823 (getPair!155 call!298825 key!2048))))

(declare-fun lt!1536481 () (_ BitVec 64))

(declare-fun b!4317406 () Bool)

(declare-fun e!2685864 () Bool)

(declare-fun isDefined!7584 (Option!10283) Bool)

(assert (=> b!4317406 (= e!2685864 (isDefined!7584 (getPair!155 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481) key!2048)))))

(declare-fun b!4317407 () Bool)

(assert (=> b!4317407 false))

(declare-fun lt!1536484 () Unit!67578)

(declare-fun lt!1536487 () Unit!67578)

(assert (=> b!4317407 (= lt!1536484 lt!1536487)))

(declare-fun lt!1536489 () List!48461)

(declare-fun lt!1536492 () List!48460)

(declare-fun contains!10362 (List!48461 tuple2!47056) Bool)

(assert (=> b!4317407 (contains!10362 lt!1536489 (tuple2!47057 lt!1536481 lt!1536492))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!167 (List!48461 (_ BitVec 64) List!48460) Unit!67578)

(assert (=> b!4317407 (= lt!1536487 (lemmaGetValueByKeyImpliesContainsTuple!167 lt!1536489 lt!1536481 lt!1536492))))

(assert (=> b!4317407 (= lt!1536492 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481))))

(assert (=> b!4317407 (= lt!1536489 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))))

(declare-fun lt!1536483 () Unit!67578)

(declare-fun lt!1536480 () Unit!67578)

(assert (=> b!4317407 (= lt!1536483 lt!1536480)))

(declare-fun lt!1536491 () List!48461)

(declare-datatypes ((Option!10284 0))(
  ( (None!10283) (Some!10283 (v!42651 List!48460)) )
))
(declare-fun isDefined!7585 (Option!10284) Bool)

(declare-fun getValueByKey!287 (List!48461 (_ BitVec 64)) Option!10284)

(assert (=> b!4317407 (isDefined!7585 (getValueByKey!287 lt!1536491 lt!1536481))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!206 (List!48461 (_ BitVec 64)) Unit!67578)

(assert (=> b!4317407 (= lt!1536480 (lemmaContainsKeyImpliesGetValueByKeyDefined!206 lt!1536491 lt!1536481))))

(assert (=> b!4317407 (= lt!1536491 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))))

(declare-fun lt!1536478 () Unit!67578)

(declare-fun lt!1536477 () Unit!67578)

(assert (=> b!4317407 (= lt!1536478 lt!1536477)))

(declare-fun lt!1536495 () List!48461)

(declare-fun containsKey!384 (List!48461 (_ BitVec 64)) Bool)

(assert (=> b!4317407 (containsKey!384 lt!1536495 lt!1536481)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!156 (List!48461 (_ BitVec 64)) Unit!67578)

(assert (=> b!4317407 (= lt!1536477 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!156 lt!1536495 lt!1536481))))

(assert (=> b!4317407 (= lt!1536495 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))))

(declare-fun Unit!67581 () Unit!67578)

(assert (=> b!4317407 (= e!2685866 Unit!67581)))

(declare-fun bm!298821 () Bool)

(assert (=> bm!298821 (= call!298824 (hash!1132 (hashF!6858 thiss!42308) key!2048))))

(declare-fun bm!298822 () Bool)

(assert (=> bm!298822 (= call!298826 (contains!10360 (ite c!733996 lt!1536479 call!298828) call!298824))))

(declare-fun b!4317408 () Bool)

(declare-fun lt!1536494 () Unit!67578)

(assert (=> b!4317408 (= e!2685861 lt!1536494)))

(assert (=> b!4317408 (= lt!1536479 call!298828)))

(declare-fun lemmaInGenericMapThenInLongMap!155 (ListLongMap!1135 K!9579 Hashable!4649) Unit!67578)

(assert (=> b!4317408 (= lt!1536494 (lemmaInGenericMapThenInLongMap!155 lt!1536479 key!2048 (hashF!6858 thiss!42308)))))

(declare-fun res!1769507 () Bool)

(assert (=> b!4317408 (= res!1769507 call!298826)))

(declare-fun e!2685865 () Bool)

(assert (=> b!4317408 (=> (not res!1769507) (not e!2685865))))

(assert (=> b!4317408 e!2685865))

(declare-fun b!4317409 () Bool)

(declare-fun call!298827 () Bool)

(assert (=> b!4317409 (= e!2685865 call!298827)))

(declare-fun e!2685862 () Unit!67578)

(declare-fun forallContained!1523 (List!48461 Int tuple2!47056) Unit!67578)

(assert (=> b!4317410 (= e!2685862 (forallContained!1523 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lambda!133552 (tuple2!47057 lt!1536481 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481))))))

(declare-fun c!733998 () Bool)

(assert (=> b!4317410 (= c!733998 (not (contains!10362 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) (tuple2!47057 lt!1536481 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481)))))))

(declare-fun lt!1536496 () Unit!67578)

(assert (=> b!4317410 (= lt!1536496 e!2685866)))

(declare-fun b!4317411 () Bool)

(declare-fun Unit!67582 () Unit!67578)

(assert (=> b!4317411 (= e!2685862 Unit!67582)))

(declare-fun b!4317412 () Bool)

(assert (=> b!4317412 false))

(declare-fun lt!1536482 () Unit!67578)

(declare-fun lt!1536493 () Unit!67578)

(assert (=> b!4317412 (= lt!1536482 lt!1536493)))

(declare-fun lt!1536490 () ListLongMap!1135)

(declare-fun contains!10363 (ListMap!1799 K!9579) Bool)

(declare-fun extractMap!361 (List!48461) ListMap!1799)

(assert (=> b!4317412 (contains!10363 (extractMap!361 (toList!2520 lt!1536490)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!155 (ListLongMap!1135 K!9579 Hashable!4649) Unit!67578)

(assert (=> b!4317412 (= lt!1536493 (lemmaInLongMapThenInGenericMap!155 lt!1536490 key!2048 (hashF!6858 thiss!42308)))))

(assert (=> b!4317412 (= lt!1536490 call!298828)))

(declare-fun Unit!67583 () Unit!67578)

(assert (=> b!4317412 (= e!2685860 Unit!67583)))

(declare-fun bm!298823 () Bool)

(assert (=> bm!298823 (= call!298827 (isDefined!7584 call!298823))))

(declare-fun b!4317413 () Bool)

(assert (=> b!4317413 (= e!2685863 call!298827)))

(declare-fun d!1269483 () Bool)

(declare-fun lt!1536485 () Bool)

(assert (=> d!1269483 (= lt!1536485 (contains!10363 (map!10356 thiss!42308) key!2048))))

(assert (=> d!1269483 (= lt!1536485 e!2685864)))

(declare-fun res!1769506 () Bool)

(assert (=> d!1269483 (=> (not res!1769506) (not e!2685864))))

(assert (=> d!1269483 (= res!1769506 (contains!10359 (v!42645 (underlying!9696 thiss!42308)) lt!1536481))))

(declare-fun lt!1536486 () Unit!67578)

(assert (=> d!1269483 (= lt!1536486 e!2685861)))

(assert (=> d!1269483 (= c!733996 (contains!10363 (extractMap!361 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))) key!2048))))

(declare-fun lt!1536488 () Unit!67578)

(assert (=> d!1269483 (= lt!1536488 e!2685862)))

(declare-fun c!733999 () Bool)

(assert (=> d!1269483 (= c!733999 (contains!10359 (v!42645 (underlying!9696 thiss!42308)) lt!1536481))))

(assert (=> d!1269483 (= lt!1536481 (hash!1132 (hashF!6858 thiss!42308) key!2048))))

(assert (=> d!1269483 (valid!3737 thiss!42308)))

(assert (=> d!1269483 (= (contains!10358 thiss!42308 key!2048) lt!1536485)))

(declare-fun b!4317405 () Bool)

(declare-fun Unit!67584 () Unit!67578)

(assert (=> b!4317405 (= e!2685860 Unit!67584)))

(assert (= (and d!1269483 c!733999) b!4317410))

(assert (= (and d!1269483 (not c!733999)) b!4317411))

(assert (= (and b!4317410 c!733998) b!4317407))

(assert (= (and b!4317410 (not c!733998)) b!4317403))

(assert (= (and d!1269483 c!733996) b!4317408))

(assert (= (and d!1269483 (not c!733996)) b!4317404))

(assert (= (and b!4317408 res!1769507) b!4317409))

(assert (= (and b!4317404 res!1769505) b!4317413))

(assert (= (and b!4317404 c!733997) b!4317412))

(assert (= (and b!4317404 (not c!733997)) b!4317405))

(assert (= (or b!4317408 b!4317409 b!4317404 b!4317413) bm!298821))

(assert (= (or b!4317408 b!4317404 b!4317413 b!4317412) bm!298819))

(assert (= (or b!4317408 b!4317404) bm!298822))

(assert (= (or b!4317409 b!4317413) bm!298818))

(assert (= (or b!4317409 b!4317413) bm!298820))

(assert (= (or b!4317409 b!4317413) bm!298823))

(assert (= (and d!1269483 res!1769506) b!4317406))

(assert (=> b!4317410 m!4911023))

(declare-fun m!4911083 () Bool)

(assert (=> b!4317410 m!4911083))

(declare-fun m!4911085 () Bool)

(assert (=> b!4317410 m!4911085))

(declare-fun m!4911087 () Bool)

(assert (=> b!4317410 m!4911087))

(assert (=> d!1269483 m!4911025))

(declare-fun m!4911089 () Bool)

(assert (=> d!1269483 m!4911089))

(declare-fun m!4911091 () Bool)

(assert (=> d!1269483 m!4911091))

(assert (=> d!1269483 m!4911027))

(declare-fun m!4911093 () Bool)

(assert (=> d!1269483 m!4911093))

(assert (=> d!1269483 m!4911023))

(assert (=> d!1269483 m!4911049))

(assert (=> d!1269483 m!4911025))

(assert (=> d!1269483 m!4911091))

(declare-fun m!4911095 () Bool)

(assert (=> d!1269483 m!4911095))

(assert (=> bm!298819 m!4911023))

(declare-fun m!4911097 () Bool)

(assert (=> b!4317408 m!4911097))

(assert (=> b!4317406 m!4911083))

(assert (=> b!4317406 m!4911083))

(declare-fun m!4911099 () Bool)

(assert (=> b!4317406 m!4911099))

(assert (=> b!4317406 m!4911099))

(declare-fun m!4911101 () Bool)

(assert (=> b!4317406 m!4911101))

(declare-fun m!4911103 () Bool)

(assert (=> b!4317407 m!4911103))

(declare-fun m!4911105 () Bool)

(assert (=> b!4317407 m!4911105))

(declare-fun m!4911107 () Bool)

(assert (=> b!4317407 m!4911107))

(assert (=> b!4317407 m!4911023))

(declare-fun m!4911109 () Bool)

(assert (=> b!4317407 m!4911109))

(declare-fun m!4911111 () Bool)

(assert (=> b!4317407 m!4911111))

(assert (=> b!4317407 m!4911103))

(declare-fun m!4911113 () Bool)

(assert (=> b!4317407 m!4911113))

(assert (=> b!4317407 m!4911083))

(declare-fun m!4911115 () Bool)

(assert (=> b!4317407 m!4911115))

(declare-fun m!4911117 () Bool)

(assert (=> bm!298820 m!4911117))

(declare-fun m!4911119 () Bool)

(assert (=> bm!298823 m!4911119))

(declare-fun m!4911121 () Bool)

(assert (=> bm!298818 m!4911121))

(declare-fun m!4911123 () Bool)

(assert (=> bm!298822 m!4911123))

(assert (=> bm!298821 m!4911049))

(declare-fun m!4911125 () Bool)

(assert (=> b!4317412 m!4911125))

(assert (=> b!4317412 m!4911125))

(declare-fun m!4911127 () Bool)

(assert (=> b!4317412 m!4911127))

(declare-fun m!4911129 () Bool)

(assert (=> b!4317412 m!4911129))

(assert (=> b!4317339 d!1269483))

(declare-fun d!1269485 () Bool)

(declare-fun map!10357 (LongMapFixedSize!9466) ListLongMap!1135)

(assert (=> d!1269485 (= (map!10355 (v!42645 (underlying!9696 thiss!42308))) (map!10357 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))))))

(declare-fun bs!605937 () Bool)

(assert (= bs!605937 d!1269485))

(declare-fun m!4911131 () Bool)

(assert (=> bs!605937 m!4911131))

(assert (=> b!4317339 d!1269485))

(declare-fun d!1269487 () Bool)

(declare-fun lt!1536499 () ListMap!1799)

(declare-fun invariantList!594 (List!48460) Bool)

(assert (=> d!1269487 (invariantList!594 (toList!2521 lt!1536499))))

(assert (=> d!1269487 (= lt!1536499 (extractMap!361 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))))))

(assert (=> d!1269487 (valid!3737 thiss!42308)))

(assert (=> d!1269487 (= (map!10356 thiss!42308) lt!1536499)))

(declare-fun bs!605938 () Bool)

(assert (= bs!605938 d!1269487))

(declare-fun m!4911133 () Bool)

(assert (=> bs!605938 m!4911133))

(assert (=> bs!605938 m!4911023))

(assert (=> bs!605938 m!4911091))

(assert (=> bs!605938 m!4911027))

(assert (=> b!4317339 d!1269487))

(declare-fun d!1269489 () Bool)

(assert (=> d!1269489 (= (isEmpty!28097 lt!1536413) ((_ is Nil!48336) lt!1536413))))

(assert (=> b!4317330 d!1269489))

(declare-fun bs!605939 () Bool)

(declare-fun b!4317418 () Bool)

(assert (= bs!605939 (and b!4317418 d!1269481)))

(declare-fun lambda!133555 () Int)

(assert (=> bs!605939 (not (= lambda!133555 lambda!133549))))

(declare-fun bs!605940 () Bool)

(assert (= bs!605940 (and b!4317418 b!4317410)))

(assert (=> bs!605940 (= lambda!133555 lambda!133552)))

(declare-fun d!1269491 () Bool)

(declare-fun res!1769512 () Bool)

(declare-fun e!2685869 () Bool)

(assert (=> d!1269491 (=> (not res!1769512) (not e!2685869))))

(assert (=> d!1269491 (= res!1769512 (valid!3738 (v!42645 (underlying!9696 thiss!42308))))))

(assert (=> d!1269491 (= (valid!3737 thiss!42308) e!2685869)))

(declare-fun res!1769513 () Bool)

(assert (=> b!4317418 (=> (not res!1769513) (not e!2685869))))

(assert (=> b!4317418 (= res!1769513 (forall!8791 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lambda!133555))))

(declare-fun b!4317419 () Bool)

(declare-fun allKeysSameHashInMap!377 (ListLongMap!1135 Hashable!4649) Bool)

(assert (=> b!4317419 (= e!2685869 (allKeysSameHashInMap!377 (map!10355 (v!42645 (underlying!9696 thiss!42308))) (hashF!6858 thiss!42308)))))

(assert (= (and d!1269491 res!1769512) b!4317418))

(assert (= (and b!4317418 res!1769513) b!4317419))

(assert (=> d!1269491 m!4911057))

(assert (=> b!4317418 m!4911023))

(declare-fun m!4911135 () Bool)

(assert (=> b!4317418 m!4911135))

(assert (=> b!4317419 m!4911023))

(assert (=> b!4317419 m!4911023))

(declare-fun m!4911137 () Bool)

(assert (=> b!4317419 m!4911137))

(assert (=> b!4317329 d!1269491))

(declare-fun d!1269493 () Bool)

(declare-fun e!2685872 () Bool)

(assert (=> d!1269493 e!2685872))

(declare-fun c!734002 () Bool)

(assert (=> d!1269493 (= c!734002 (contains!10359 (v!42645 (underlying!9696 thiss!42308)) lt!1536415))))

(declare-fun lt!1536502 () List!48460)

(declare-fun apply!11111 (LongMapFixedSize!9466 (_ BitVec 64)) List!48460)

(assert (=> d!1269493 (= lt!1536502 (apply!11111 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))) lt!1536415))))

(assert (=> d!1269493 (valid!3738 (v!42645 (underlying!9696 thiss!42308)))))

(assert (=> d!1269493 (= (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536415) lt!1536502)))

(declare-fun b!4317424 () Bool)

(declare-fun get!15655 (Option!10284) List!48460)

(assert (=> b!4317424 (= e!2685872 (= lt!1536502 (get!15655 (getValueByKey!287 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lt!1536415))))))

(declare-fun b!4317425 () Bool)

(declare-fun dynLambda!20489 (Int (_ BitVec 64)) List!48460)

(assert (=> b!4317425 (= e!2685872 (= lt!1536502 (dynLambda!20489 (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) lt!1536415)))))

(assert (=> b!4317425 ((_ is LongMap!4733) (v!42645 (underlying!9696 thiss!42308)))))

(assert (= (and d!1269493 c!734002) b!4317424))

(assert (= (and d!1269493 (not c!734002)) b!4317425))

(declare-fun b_lambda!126959 () Bool)

(assert (=> (not b_lambda!126959) (not b!4317425)))

(declare-fun t!355320 () Bool)

(declare-fun tb!257343 () Bool)

(assert (=> (and b!4317333 (= (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) t!355320) tb!257343))

(assert (=> b!4317425 t!355320))

(declare-fun result!314828 () Bool)

(declare-fun b_and!340391 () Bool)

(assert (= b_and!340387 (and (=> t!355320 result!314828) b_and!340391)))

(assert (=> d!1269493 m!4911047))

(declare-fun m!4911139 () Bool)

(assert (=> d!1269493 m!4911139))

(assert (=> d!1269493 m!4911057))

(assert (=> b!4317424 m!4911023))

(declare-fun m!4911141 () Bool)

(assert (=> b!4317424 m!4911141))

(assert (=> b!4317424 m!4911141))

(declare-fun m!4911143 () Bool)

(assert (=> b!4317424 m!4911143))

(declare-fun m!4911145 () Bool)

(assert (=> b!4317425 m!4911145))

(assert (=> b!4317338 d!1269493))

(declare-fun tp!1326375 () Bool)

(declare-fun e!2685875 () Bool)

(declare-fun b!4317430 () Bool)

(assert (=> b!4317430 (= e!2685875 (and tp_is_empty!24029 tp_is_empty!24031 tp!1326375))))

(assert (=> b!4317333 (= tp!1326368 e!2685875)))

(assert (= (and b!4317333 ((_ is Cons!48336) (zeroValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))))) b!4317430))

(declare-fun e!2685876 () Bool)

(declare-fun b!4317431 () Bool)

(declare-fun tp!1326376 () Bool)

(assert (=> b!4317431 (= e!2685876 (and tp_is_empty!24029 tp_is_empty!24031 tp!1326376))))

(assert (=> b!4317333 (= tp!1326366 e!2685876)))

(assert (= (and b!4317333 ((_ is Cons!48336) (minValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))))) b!4317431))

(declare-fun b!4317432 () Bool)

(declare-fun e!2685877 () Bool)

(declare-fun tp!1326377 () Bool)

(assert (=> b!4317432 (= e!2685877 (and tp_is_empty!24029 tp_is_empty!24031 tp!1326377))))

(assert (=> b!4317337 (= tp!1326367 e!2685877)))

(assert (= (and b!4317337 ((_ is Cons!48336) mapDefault!21101)) b!4317432))

(declare-fun condMapEmpty!21104 () Bool)

(declare-fun mapDefault!21104 () List!48460)

(assert (=> mapNonEmpty!21101 (= condMapEmpty!21104 (= mapRest!21101 ((as const (Array (_ BitVec 32) List!48460)) mapDefault!21104)))))

(declare-fun e!2685883 () Bool)

(declare-fun mapRes!21104 () Bool)

(assert (=> mapNonEmpty!21101 (= tp!1326372 (and e!2685883 mapRes!21104))))

(declare-fun mapNonEmpty!21104 () Bool)

(declare-fun tp!1326386 () Bool)

(declare-fun e!2685882 () Bool)

(assert (=> mapNonEmpty!21104 (= mapRes!21104 (and tp!1326386 e!2685882))))

(declare-fun mapValue!21104 () List!48460)

(declare-fun mapKey!21104 () (_ BitVec 32))

(declare-fun mapRest!21104 () (Array (_ BitVec 32) List!48460))

(assert (=> mapNonEmpty!21104 (= mapRest!21101 (store mapRest!21104 mapKey!21104 mapValue!21104))))

(declare-fun tp!1326385 () Bool)

(declare-fun b!4317440 () Bool)

(assert (=> b!4317440 (= e!2685883 (and tp_is_empty!24029 tp_is_empty!24031 tp!1326385))))

(declare-fun mapIsEmpty!21104 () Bool)

(assert (=> mapIsEmpty!21104 mapRes!21104))

(declare-fun b!4317439 () Bool)

(declare-fun tp!1326384 () Bool)

(assert (=> b!4317439 (= e!2685882 (and tp_is_empty!24029 tp_is_empty!24031 tp!1326384))))

(assert (= (and mapNonEmpty!21101 condMapEmpty!21104) mapIsEmpty!21104))

(assert (= (and mapNonEmpty!21101 (not condMapEmpty!21104)) mapNonEmpty!21104))

(assert (= (and mapNonEmpty!21104 ((_ is Cons!48336) mapValue!21104)) b!4317439))

(assert (= (and mapNonEmpty!21101 ((_ is Cons!48336) mapDefault!21104)) b!4317440))

(declare-fun m!4911147 () Bool)

(assert (=> mapNonEmpty!21104 m!4911147))

(declare-fun b!4317441 () Bool)

(declare-fun tp!1326387 () Bool)

(declare-fun e!2685884 () Bool)

(assert (=> b!4317441 (= e!2685884 (and tp_is_empty!24029 tp_is_empty!24031 tp!1326387))))

(assert (=> mapNonEmpty!21101 (= tp!1326370 e!2685884)))

(assert (= (and mapNonEmpty!21101 ((_ is Cons!48336) mapValue!21101)) b!4317441))

(declare-fun b_lambda!126961 () Bool)

(assert (= b_lambda!126959 (or (and b!4317333 b_free!128891) b_lambda!126961)))

(check-sat (not d!1269483) (not d!1269481) (not d!1269487) (not b!4317374) (not b_next!129597) (not bm!298818) (not b!4317367) (not b!4317360) (not b!4317407) (not b!4317406) (not b_lambda!126961) tp_is_empty!24029 (not bm!298821) (not bm!298805) (not b!4317408) (not b!4317418) (not bm!298823) (not b!4317441) (not b!4317424) (not d!1269475) (not d!1269479) (not bm!298820) (not b!4317430) tp_is_empty!24031 (not bm!298804) (not b!4317439) (not b!4317412) (not b!4317419) (not b!4317432) (not d!1269485) (not b!4317440) (not mapNonEmpty!21104) (not b!4317361) (not d!1269493) (not b!4317362) b_and!340391 (not bm!298822) (not bm!298819) (not b_next!129595) b_and!340389 (not b!4317410) (not d!1269473) (not b!4317363) (not b!4317373) (not d!1269491) (not b!4317431) (not tb!257343) (not d!1269471))
(check-sat b_and!340391 b_and!340389 (not b_next!129597) (not b_next!129595))
(get-model)

(declare-fun b!4317460 () Bool)

(declare-fun e!2685898 () Bool)

(declare-fun e!2685902 () Bool)

(assert (=> b!4317460 (= e!2685898 e!2685902)))

(declare-fun res!1769520 () Bool)

(assert (=> b!4317460 (=> (not res!1769520) (not e!2685902))))

(declare-datatypes ((Option!10285 0))(
  ( (None!10284) (Some!10284 (v!42658 V!9781)) )
))
(declare-fun isDefined!7586 (Option!10285) Bool)

(declare-fun getValueByKey!288 (List!48460 K!9579) Option!10285)

(assert (=> b!4317460 (= res!1769520 (isDefined!7586 (getValueByKey!288 (toList!2521 (extractMap!361 (toList!2520 lt!1536490))) key!2048)))))

(declare-fun bm!298826 () Bool)

(declare-fun call!298831 () Bool)

(declare-datatypes ((List!48462 0))(
  ( (Nil!48338) (Cons!48338 (h!53792 K!9579) (t!355323 List!48462)) )
))
(declare-fun e!2685900 () List!48462)

(declare-fun contains!10364 (List!48462 K!9579) Bool)

(assert (=> bm!298826 (= call!298831 (contains!10364 e!2685900 key!2048))))

(declare-fun c!734010 () Bool)

(declare-fun c!734011 () Bool)

(assert (=> bm!298826 (= c!734010 c!734011)))

(declare-fun b!4317461 () Bool)

(declare-fun keys!16150 (ListMap!1799) List!48462)

(assert (=> b!4317461 (= e!2685902 (contains!10364 (keys!16150 (extractMap!361 (toList!2520 lt!1536490))) key!2048))))

(declare-fun b!4317463 () Bool)

(declare-fun e!2685899 () Bool)

(assert (=> b!4317463 (= e!2685899 (not (contains!10364 (keys!16150 (extractMap!361 (toList!2520 lt!1536490))) key!2048)))))

(declare-fun b!4317464 () Bool)

(assert (=> b!4317464 (= e!2685900 (keys!16150 (extractMap!361 (toList!2520 lt!1536490))))))

(declare-fun b!4317465 () Bool)

(declare-fun e!2685897 () Unit!67578)

(declare-fun Unit!67585 () Unit!67578)

(assert (=> b!4317465 (= e!2685897 Unit!67585)))

(declare-fun d!1269495 () Bool)

(assert (=> d!1269495 e!2685898))

(declare-fun res!1769521 () Bool)

(assert (=> d!1269495 (=> res!1769521 e!2685898)))

(assert (=> d!1269495 (= res!1769521 e!2685899)))

(declare-fun res!1769522 () Bool)

(assert (=> d!1269495 (=> (not res!1769522) (not e!2685899))))

(declare-fun lt!1536525 () Bool)

(assert (=> d!1269495 (= res!1769522 (not lt!1536525))))

(declare-fun lt!1536523 () Bool)

(assert (=> d!1269495 (= lt!1536525 lt!1536523)))

(declare-fun lt!1536522 () Unit!67578)

(declare-fun e!2685901 () Unit!67578)

(assert (=> d!1269495 (= lt!1536522 e!2685901)))

(assert (=> d!1269495 (= c!734011 lt!1536523)))

(declare-fun containsKey!385 (List!48460 K!9579) Bool)

(assert (=> d!1269495 (= lt!1536523 (containsKey!385 (toList!2521 (extractMap!361 (toList!2520 lt!1536490))) key!2048))))

(assert (=> d!1269495 (= (contains!10363 (extractMap!361 (toList!2520 lt!1536490)) key!2048) lt!1536525)))

(declare-fun b!4317462 () Bool)

(declare-fun lt!1536519 () Unit!67578)

(assert (=> b!4317462 (= e!2685901 lt!1536519)))

(declare-fun lt!1536526 () Unit!67578)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!207 (List!48460 K!9579) Unit!67578)

(assert (=> b!4317462 (= lt!1536526 (lemmaContainsKeyImpliesGetValueByKeyDefined!207 (toList!2521 (extractMap!361 (toList!2520 lt!1536490))) key!2048))))

(assert (=> b!4317462 (isDefined!7586 (getValueByKey!288 (toList!2521 (extractMap!361 (toList!2520 lt!1536490))) key!2048))))

(declare-fun lt!1536520 () Unit!67578)

(assert (=> b!4317462 (= lt!1536520 lt!1536526)))

(declare-fun lemmaInListThenGetKeysListContains!50 (List!48460 K!9579) Unit!67578)

(assert (=> b!4317462 (= lt!1536519 (lemmaInListThenGetKeysListContains!50 (toList!2521 (extractMap!361 (toList!2520 lt!1536490))) key!2048))))

(assert (=> b!4317462 call!298831))

(declare-fun b!4317466 () Bool)

(assert (=> b!4317466 false))

(declare-fun lt!1536524 () Unit!67578)

(declare-fun lt!1536521 () Unit!67578)

(assert (=> b!4317466 (= lt!1536524 lt!1536521)))

(assert (=> b!4317466 (containsKey!385 (toList!2521 (extractMap!361 (toList!2520 lt!1536490))) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!50 (List!48460 K!9579) Unit!67578)

(assert (=> b!4317466 (= lt!1536521 (lemmaInGetKeysListThenContainsKey!50 (toList!2521 (extractMap!361 (toList!2520 lt!1536490))) key!2048))))

(declare-fun Unit!67586 () Unit!67578)

(assert (=> b!4317466 (= e!2685897 Unit!67586)))

(declare-fun b!4317467 () Bool)

(declare-fun getKeysList!53 (List!48460) List!48462)

(assert (=> b!4317467 (= e!2685900 (getKeysList!53 (toList!2521 (extractMap!361 (toList!2520 lt!1536490)))))))

(declare-fun b!4317468 () Bool)

(assert (=> b!4317468 (= e!2685901 e!2685897)))

(declare-fun c!734009 () Bool)

(assert (=> b!4317468 (= c!734009 call!298831)))

(assert (= (and d!1269495 c!734011) b!4317462))

(assert (= (and d!1269495 (not c!734011)) b!4317468))

(assert (= (and b!4317468 c!734009) b!4317466))

(assert (= (and b!4317468 (not c!734009)) b!4317465))

(assert (= (or b!4317462 b!4317468) bm!298826))

(assert (= (and bm!298826 c!734010) b!4317467))

(assert (= (and bm!298826 (not c!734010)) b!4317464))

(assert (= (and d!1269495 res!1769522) b!4317463))

(assert (= (and d!1269495 (not res!1769521)) b!4317460))

(assert (= (and b!4317460 res!1769520) b!4317461))

(assert (=> b!4317463 m!4911125))

(declare-fun m!4911149 () Bool)

(assert (=> b!4317463 m!4911149))

(assert (=> b!4317463 m!4911149))

(declare-fun m!4911151 () Bool)

(assert (=> b!4317463 m!4911151))

(declare-fun m!4911153 () Bool)

(assert (=> bm!298826 m!4911153))

(declare-fun m!4911155 () Bool)

(assert (=> d!1269495 m!4911155))

(assert (=> b!4317464 m!4911125))

(assert (=> b!4317464 m!4911149))

(assert (=> b!4317461 m!4911125))

(assert (=> b!4317461 m!4911149))

(assert (=> b!4317461 m!4911149))

(assert (=> b!4317461 m!4911151))

(declare-fun m!4911157 () Bool)

(assert (=> b!4317462 m!4911157))

(declare-fun m!4911159 () Bool)

(assert (=> b!4317462 m!4911159))

(assert (=> b!4317462 m!4911159))

(declare-fun m!4911161 () Bool)

(assert (=> b!4317462 m!4911161))

(declare-fun m!4911163 () Bool)

(assert (=> b!4317462 m!4911163))

(assert (=> b!4317460 m!4911159))

(assert (=> b!4317460 m!4911159))

(assert (=> b!4317460 m!4911161))

(assert (=> b!4317466 m!4911155))

(declare-fun m!4911165 () Bool)

(assert (=> b!4317466 m!4911165))

(declare-fun m!4911167 () Bool)

(assert (=> b!4317467 m!4911167))

(assert (=> b!4317412 d!1269495))

(declare-fun bs!605941 () Bool)

(declare-fun d!1269497 () Bool)

(assert (= bs!605941 (and d!1269497 d!1269481)))

(declare-fun lambda!133558 () Int)

(assert (=> bs!605941 (not (= lambda!133558 lambda!133549))))

(declare-fun bs!605942 () Bool)

(assert (= bs!605942 (and d!1269497 b!4317410)))

(assert (=> bs!605942 (= lambda!133558 lambda!133552)))

(declare-fun bs!605943 () Bool)

(assert (= bs!605943 (and d!1269497 b!4317418)))

(assert (=> bs!605943 (= lambda!133558 lambda!133555)))

(declare-fun lt!1536529 () ListMap!1799)

(assert (=> d!1269497 (invariantList!594 (toList!2521 lt!1536529))))

(declare-fun e!2685905 () ListMap!1799)

(assert (=> d!1269497 (= lt!1536529 e!2685905)))

(declare-fun c!734014 () Bool)

(assert (=> d!1269497 (= c!734014 ((_ is Cons!48337) (toList!2520 lt!1536490)))))

(assert (=> d!1269497 (forall!8791 (toList!2520 lt!1536490) lambda!133558)))

(assert (=> d!1269497 (= (extractMap!361 (toList!2520 lt!1536490)) lt!1536529)))

(declare-fun b!4317473 () Bool)

(declare-fun addToMapMapFromBucket!48 (List!48460 ListMap!1799) ListMap!1799)

(assert (=> b!4317473 (= e!2685905 (addToMapMapFromBucket!48 (_2!26811 (h!53790 (toList!2520 lt!1536490))) (extractMap!361 (t!355318 (toList!2520 lt!1536490)))))))

(declare-fun b!4317474 () Bool)

(assert (=> b!4317474 (= e!2685905 (ListMap!1800 Nil!48336))))

(assert (= (and d!1269497 c!734014) b!4317473))

(assert (= (and d!1269497 (not c!734014)) b!4317474))

(declare-fun m!4911169 () Bool)

(assert (=> d!1269497 m!4911169))

(declare-fun m!4911171 () Bool)

(assert (=> d!1269497 m!4911171))

(declare-fun m!4911173 () Bool)

(assert (=> b!4317473 m!4911173))

(assert (=> b!4317473 m!4911173))

(declare-fun m!4911175 () Bool)

(assert (=> b!4317473 m!4911175))

(assert (=> b!4317412 d!1269497))

(declare-fun bs!605944 () Bool)

(declare-fun d!1269499 () Bool)

(assert (= bs!605944 (and d!1269499 d!1269481)))

(declare-fun lambda!133561 () Int)

(assert (=> bs!605944 (not (= lambda!133561 lambda!133549))))

(declare-fun bs!605945 () Bool)

(assert (= bs!605945 (and d!1269499 b!4317410)))

(assert (=> bs!605945 (= lambda!133561 lambda!133552)))

(declare-fun bs!605946 () Bool)

(assert (= bs!605946 (and d!1269499 b!4317418)))

(assert (=> bs!605946 (= lambda!133561 lambda!133555)))

(declare-fun bs!605947 () Bool)

(assert (= bs!605947 (and d!1269499 d!1269497)))

(assert (=> bs!605947 (= lambda!133561 lambda!133558)))

(assert (=> d!1269499 (contains!10363 (extractMap!361 (toList!2520 lt!1536490)) key!2048)))

(declare-fun lt!1536532 () Unit!67578)

(declare-fun choose!26345 (ListLongMap!1135 K!9579 Hashable!4649) Unit!67578)

(assert (=> d!1269499 (= lt!1536532 (choose!26345 lt!1536490 key!2048 (hashF!6858 thiss!42308)))))

(assert (=> d!1269499 (forall!8791 (toList!2520 lt!1536490) lambda!133561)))

(assert (=> d!1269499 (= (lemmaInLongMapThenInGenericMap!155 lt!1536490 key!2048 (hashF!6858 thiss!42308)) lt!1536532)))

(declare-fun bs!605948 () Bool)

(assert (= bs!605948 d!1269499))

(assert (=> bs!605948 m!4911125))

(assert (=> bs!605948 m!4911125))

(assert (=> bs!605948 m!4911127))

(declare-fun m!4911177 () Bool)

(assert (=> bs!605948 m!4911177))

(declare-fun m!4911179 () Bool)

(assert (=> bs!605948 m!4911179))

(assert (=> b!4317412 d!1269499))

(declare-fun d!1269501 () Bool)

(assert (=> d!1269501 (= (imbalanced!73 (v!42645 (underlying!9696 thiss!42308))) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!9509 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (_vacant!4794 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) (bvsgt (_vacant!4794 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (_size!9509 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))))))))

(assert (=> d!1269471 d!1269501))

(declare-fun d!1269503 () Bool)

(declare-fun valid!3739 (LongMapFixedSize!9466) Bool)

(assert (=> d!1269503 (= (valid!3738 (v!42645 (underlying!9696 thiss!42308))) (valid!3739 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))))))

(declare-fun bs!605949 () Bool)

(assert (= bs!605949 d!1269503))

(declare-fun m!4911181 () Bool)

(assert (=> bs!605949 m!4911181))

(assert (=> d!1269471 d!1269503))

(declare-fun b!4317495 () Bool)

(declare-datatypes ((tuple2!47062 0))(
  ( (tuple2!47063 (_1!26814 Bool) (_2!26814 Cell!18741)) )
))
(declare-fun e!2685918 () tuple2!47062)

(declare-fun lt!1536560 () tuple2!47060)

(declare-fun lt!1536555 () tuple2!47060)

(assert (=> b!4317495 (= e!2685918 (tuple2!47063 (and (_1!26813 lt!1536560) (_1!26813 lt!1536555)) (Cell!18742 (_2!26813 lt!1536555))))))

(declare-fun call!298842 () LongMapFixedSize!9466)

(assert (=> b!4317495 (= lt!1536560 (update!507 call!298842 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-fun call!298843 () tuple2!47060)

(assert (=> b!4317495 (= lt!1536555 call!298843)))

(declare-fun b!4317496 () Bool)

(declare-datatypes ((tuple3!5500 0))(
  ( (tuple3!5501 (_1!26815 Bool) (_2!26815 Cell!18741) (_3!3283 MutLongMap!4733)) )
))
(declare-fun e!2685923 () tuple3!5500)

(declare-fun lt!1536559 () tuple2!47060)

(assert (=> b!4317496 (= e!2685923 (ite (_1!26813 lt!1536559) (tuple3!5501 true (underlying!9695 (v!42645 (underlying!9696 thiss!42308))) (LongMap!4733 (Cell!18742 (_2!26813 lt!1536559)))) (tuple3!5501 false (Cell!18742 (_2!26813 lt!1536559)) (v!42645 (underlying!9696 thiss!42308)))))))

(declare-fun lt!1536558 () tuple2!47062)

(declare-fun repackFrom!10 (MutLongMap!4733 LongMapFixedSize!9466 (_ BitVec 32)) tuple2!47060)

(assert (=> b!4317496 (= lt!1536559 (repackFrom!10 (v!42645 (underlying!9696 thiss!42308)) (v!42644 (_2!26814 lt!1536558)) (bvsub (size!35690 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) #b00000000000000000000000000000001)))))

(declare-fun b!4317497 () Bool)

(declare-fun lt!1536557 () tuple2!47060)

(declare-fun call!298841 () tuple2!47060)

(assert (=> b!4317497 (= lt!1536557 call!298841)))

(declare-fun e!2685920 () tuple2!47062)

(assert (=> b!4317497 (= e!2685920 (tuple2!47063 (_1!26813 lt!1536557) (Cell!18742 (_2!26813 lt!1536557))))))

(declare-fun b!4317498 () Bool)

(declare-fun e!2685919 () tuple2!47062)

(declare-fun lt!1536556 () tuple2!47060)

(assert (=> b!4317498 (= e!2685919 (tuple2!47063 (_1!26813 lt!1536556) (Cell!18742 (_2!26813 lt!1536556))))))

(assert (=> b!4317498 (= lt!1536556 call!298841)))

(declare-fun bm!298835 () Bool)

(declare-fun lt!1536554 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!24 ((_ BitVec 32) Int) LongMapFixedSize!9466)

(assert (=> bm!298835 (= call!298842 (getNewLongMapFixedSize!24 lt!1536554 (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-fun b!4317500 () Bool)

(declare-fun c!734026 () Bool)

(assert (=> b!4317500 (= c!734026 (and (not (= (bvand (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4317500 (= e!2685920 e!2685919)))

(declare-fun bm!298836 () Bool)

(assert (=> bm!298836 (= call!298841 call!298843)))

(declare-fun b!4317501 () Bool)

(assert (=> b!4317501 (= e!2685918 e!2685920)))

(declare-fun c!734024 () Bool)

(assert (=> b!4317501 (= c!734024 (and (not (= (bvand (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!298837 () Bool)

(declare-fun c!734025 () Bool)

(declare-fun call!298840 () LongMapFixedSize!9466)

(assert (=> bm!298837 (= call!298843 (update!507 (ite c!734025 (_2!26813 lt!1536560) call!298840) (ite c!734025 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734024 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!734025 (minValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (ite c!734024 (zeroValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (minValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))))

(declare-fun b!4317502 () Bool)

(declare-fun e!2685922 () Bool)

(declare-fun e!2685921 () Bool)

(assert (=> b!4317502 (= e!2685922 e!2685921)))

(declare-fun res!1769528 () Bool)

(assert (=> b!4317502 (=> res!1769528 e!2685921)))

(declare-fun lt!1536562 () tuple2!47058)

(assert (=> b!4317502 (= res!1769528 (= (_1!26812 lt!1536562) false))))

(declare-fun b!4317503 () Bool)

(declare-fun lt!1536561 () Cell!18741)

(assert (=> b!4317503 (= e!2685919 (tuple2!47063 true lt!1536561))))

(declare-fun d!1269505 () Bool)

(assert (=> d!1269505 e!2685922))

(declare-fun res!1769527 () Bool)

(assert (=> d!1269505 (=> (not res!1769527) (not e!2685922))))

(assert (=> d!1269505 (= res!1769527 ((_ is LongMap!4733) (_2!26812 lt!1536562)))))

(declare-fun lt!1536553 () tuple3!5500)

(assert (=> d!1269505 (= lt!1536562 (tuple2!47059 (_1!26815 lt!1536553) (_3!3283 lt!1536553)))))

(assert (=> d!1269505 (= lt!1536553 e!2685923)))

(declare-fun c!734023 () Bool)

(assert (=> d!1269505 (= c!734023 (not (_1!26814 lt!1536558)))))

(assert (=> d!1269505 (= lt!1536558 e!2685918)))

(assert (=> d!1269505 (= c!734025 (and (not (= (bvand (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1269505 (= lt!1536561 (Cell!18742 (getNewLongMapFixedSize!24 lt!1536554 (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))))))))

(declare-fun computeNewMask!10 (MutLongMap!4733 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1269505 (= lt!1536554 (computeNewMask!10 (v!42645 (underlying!9696 thiss!42308)) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (_vacant!4794 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (_size!9509 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(assert (=> d!1269505 (valid!3738 (v!42645 (underlying!9696 thiss!42308)))))

(assert (=> d!1269505 (= (repack!77 (v!42645 (underlying!9696 thiss!42308))) lt!1536562)))

(declare-fun b!4317499 () Bool)

(assert (=> b!4317499 (= e!2685923 (tuple3!5501 false (_2!26814 lt!1536558) (v!42645 (underlying!9696 thiss!42308))))))

(declare-fun b!4317504 () Bool)

(assert (=> b!4317504 (= e!2685921 (= (map!10355 (_2!26812 lt!1536562)) (map!10355 (v!42645 (underlying!9696 thiss!42308)))))))

(declare-fun bm!298838 () Bool)

(assert (=> bm!298838 (= call!298840 call!298842)))

(assert (= (and d!1269505 c!734025) b!4317495))

(assert (= (and d!1269505 (not c!734025)) b!4317501))

(assert (= (and b!4317501 c!734024) b!4317497))

(assert (= (and b!4317501 (not c!734024)) b!4317500))

(assert (= (and b!4317500 c!734026) b!4317498))

(assert (= (and b!4317500 (not c!734026)) b!4317503))

(assert (= (or b!4317497 b!4317498) bm!298838))

(assert (= (or b!4317497 b!4317498) bm!298836))

(assert (= (or b!4317495 bm!298838) bm!298835))

(assert (= (or b!4317495 bm!298836) bm!298837))

(assert (= (and d!1269505 c!734023) b!4317499))

(assert (= (and d!1269505 (not c!734023)) b!4317496))

(assert (= (and d!1269505 res!1769527) b!4317502))

(assert (= (and b!4317502 (not res!1769528)) b!4317504))

(declare-fun m!4911183 () Bool)

(assert (=> b!4317496 m!4911183))

(declare-fun m!4911185 () Bool)

(assert (=> b!4317495 m!4911185))

(declare-fun m!4911187 () Bool)

(assert (=> bm!298837 m!4911187))

(declare-fun m!4911189 () Bool)

(assert (=> bm!298835 m!4911189))

(assert (=> d!1269505 m!4911189))

(declare-fun m!4911191 () Bool)

(assert (=> d!1269505 m!4911191))

(assert (=> d!1269505 m!4911057))

(declare-fun m!4911193 () Bool)

(assert (=> b!4317504 m!4911193))

(assert (=> b!4317504 m!4911023))

(assert (=> b!4317363 d!1269505))

(declare-fun d!1269507 () Bool)

(assert (=> d!1269507 (= (get!15655 (getValueByKey!287 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lt!1536415)) (v!42651 (getValueByKey!287 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lt!1536415)))))

(assert (=> b!4317424 d!1269507))

(declare-fun b!4317516 () Bool)

(declare-fun e!2685929 () Option!10284)

(assert (=> b!4317516 (= e!2685929 None!10283)))

(declare-fun d!1269509 () Bool)

(declare-fun c!734031 () Bool)

(assert (=> d!1269509 (= c!734031 (and ((_ is Cons!48337) (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))) (= (_1!26811 (h!53790 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))) lt!1536415)))))

(declare-fun e!2685928 () Option!10284)

(assert (=> d!1269509 (= (getValueByKey!287 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lt!1536415) e!2685928)))

(declare-fun b!4317513 () Bool)

(assert (=> b!4317513 (= e!2685928 (Some!10283 (_2!26811 (h!53790 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))))))))

(declare-fun b!4317514 () Bool)

(assert (=> b!4317514 (= e!2685928 e!2685929)))

(declare-fun c!734032 () Bool)

(assert (=> b!4317514 (= c!734032 (and ((_ is Cons!48337) (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))) (not (= (_1!26811 (h!53790 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))) lt!1536415))))))

(declare-fun b!4317515 () Bool)

(assert (=> b!4317515 (= e!2685929 (getValueByKey!287 (t!355318 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))) lt!1536415))))

(assert (= (and d!1269509 c!734031) b!4317513))

(assert (= (and d!1269509 (not c!734031)) b!4317514))

(assert (= (and b!4317514 c!734032) b!4317515))

(assert (= (and b!4317514 (not c!734032)) b!4317516))

(declare-fun m!4911195 () Bool)

(assert (=> b!4317515 m!4911195))

(assert (=> b!4317424 d!1269509))

(assert (=> b!4317424 d!1269485))

(declare-fun d!1269511 () Bool)

(declare-fun dynLambda!20490 (Int tuple2!47056) Bool)

(assert (=> d!1269511 (dynLambda!20490 lambda!133552 (tuple2!47057 lt!1536481 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481)))))

(declare-fun lt!1536565 () Unit!67578)

(declare-fun choose!26346 (List!48461 Int tuple2!47056) Unit!67578)

(assert (=> d!1269511 (= lt!1536565 (choose!26346 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lambda!133552 (tuple2!47057 lt!1536481 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481))))))

(declare-fun e!2685932 () Bool)

(assert (=> d!1269511 e!2685932))

(declare-fun res!1769531 () Bool)

(assert (=> d!1269511 (=> (not res!1769531) (not e!2685932))))

(assert (=> d!1269511 (= res!1769531 (forall!8791 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lambda!133552))))

(assert (=> d!1269511 (= (forallContained!1523 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lambda!133552 (tuple2!47057 lt!1536481 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481))) lt!1536565)))

(declare-fun b!4317519 () Bool)

(assert (=> b!4317519 (= e!2685932 (contains!10362 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) (tuple2!47057 lt!1536481 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481))))))

(assert (= (and d!1269511 res!1769531) b!4317519))

(declare-fun b_lambda!126963 () Bool)

(assert (=> (not b_lambda!126963) (not d!1269511)))

(declare-fun m!4911197 () Bool)

(assert (=> d!1269511 m!4911197))

(declare-fun m!4911199 () Bool)

(assert (=> d!1269511 m!4911199))

(declare-fun m!4911201 () Bool)

(assert (=> d!1269511 m!4911201))

(assert (=> b!4317519 m!4911087))

(assert (=> b!4317410 d!1269511))

(assert (=> b!4317410 d!1269485))

(declare-fun d!1269513 () Bool)

(declare-fun e!2685933 () Bool)

(assert (=> d!1269513 e!2685933))

(declare-fun c!734033 () Bool)

(assert (=> d!1269513 (= c!734033 (contains!10359 (v!42645 (underlying!9696 thiss!42308)) lt!1536481))))

(declare-fun lt!1536566 () List!48460)

(assert (=> d!1269513 (= lt!1536566 (apply!11111 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))) lt!1536481))))

(assert (=> d!1269513 (valid!3738 (v!42645 (underlying!9696 thiss!42308)))))

(assert (=> d!1269513 (= (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481) lt!1536566)))

(declare-fun b!4317520 () Bool)

(assert (=> b!4317520 (= e!2685933 (= lt!1536566 (get!15655 (getValueByKey!287 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lt!1536481))))))

(declare-fun b!4317521 () Bool)

(assert (=> b!4317521 (= e!2685933 (= lt!1536566 (dynLambda!20489 (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) lt!1536481)))))

(assert (=> b!4317521 ((_ is LongMap!4733) (v!42645 (underlying!9696 thiss!42308)))))

(assert (= (and d!1269513 c!734033) b!4317520))

(assert (= (and d!1269513 (not c!734033)) b!4317521))

(declare-fun b_lambda!126965 () Bool)

(assert (=> (not b_lambda!126965) (not b!4317521)))

(declare-fun t!355322 () Bool)

(declare-fun tb!257345 () Bool)

(assert (=> (and b!4317333 (= (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) t!355322) tb!257345))

(assert (=> b!4317521 t!355322))

(declare-fun result!314834 () Bool)

(declare-fun b_and!340393 () Bool)

(assert (= b_and!340391 (and (=> t!355322 result!314834) b_and!340393)))

(assert (=> d!1269513 m!4911093))

(declare-fun m!4911203 () Bool)

(assert (=> d!1269513 m!4911203))

(assert (=> d!1269513 m!4911057))

(assert (=> b!4317520 m!4911023))

(declare-fun m!4911205 () Bool)

(assert (=> b!4317520 m!4911205))

(assert (=> b!4317520 m!4911205))

(declare-fun m!4911207 () Bool)

(assert (=> b!4317520 m!4911207))

(declare-fun m!4911209 () Bool)

(assert (=> b!4317521 m!4911209))

(assert (=> b!4317410 d!1269513))

(declare-fun d!1269515 () Bool)

(declare-fun lt!1536569 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7565 (List!48461) (InoxSet tuple2!47056))

(assert (=> d!1269515 (= lt!1536569 (select (content!7565 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))) (tuple2!47057 lt!1536481 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481))))))

(declare-fun e!2685938 () Bool)

(assert (=> d!1269515 (= lt!1536569 e!2685938)))

(declare-fun res!1769536 () Bool)

(assert (=> d!1269515 (=> (not res!1769536) (not e!2685938))))

(assert (=> d!1269515 (= res!1769536 ((_ is Cons!48337) (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))))))

(assert (=> d!1269515 (= (contains!10362 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) (tuple2!47057 lt!1536481 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481))) lt!1536569)))

(declare-fun b!4317526 () Bool)

(declare-fun e!2685939 () Bool)

(assert (=> b!4317526 (= e!2685938 e!2685939)))

(declare-fun res!1769537 () Bool)

(assert (=> b!4317526 (=> res!1769537 e!2685939)))

(assert (=> b!4317526 (= res!1769537 (= (h!53790 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))) (tuple2!47057 lt!1536481 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481))))))

(declare-fun b!4317527 () Bool)

(assert (=> b!4317527 (= e!2685939 (contains!10362 (t!355318 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))) (tuple2!47057 lt!1536481 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481))))))

(assert (= (and d!1269515 res!1769536) b!4317526))

(assert (= (and b!4317526 (not res!1769537)) b!4317527))

(declare-fun m!4911211 () Bool)

(assert (=> d!1269515 m!4911211))

(declare-fun m!4911213 () Bool)

(assert (=> d!1269515 m!4911213))

(declare-fun m!4911215 () Bool)

(assert (=> b!4317527 m!4911215))

(assert (=> b!4317410 d!1269515))

(declare-fun d!1269517 () Bool)

(declare-fun noDuplicatedKeys!100 (List!48460) Bool)

(assert (=> d!1269517 (= (invariantList!594 (toList!2521 lt!1536499)) (noDuplicatedKeys!100 (toList!2521 lt!1536499)))))

(declare-fun bs!605950 () Bool)

(assert (= bs!605950 d!1269517))

(declare-fun m!4911217 () Bool)

(assert (=> bs!605950 m!4911217))

(assert (=> d!1269487 d!1269517))

(declare-fun bs!605951 () Bool)

(declare-fun d!1269519 () Bool)

(assert (= bs!605951 (and d!1269519 d!1269497)))

(declare-fun lambda!133562 () Int)

(assert (=> bs!605951 (= lambda!133562 lambda!133558)))

(declare-fun bs!605952 () Bool)

(assert (= bs!605952 (and d!1269519 b!4317418)))

(assert (=> bs!605952 (= lambda!133562 lambda!133555)))

(declare-fun bs!605953 () Bool)

(assert (= bs!605953 (and d!1269519 d!1269481)))

(assert (=> bs!605953 (not (= lambda!133562 lambda!133549))))

(declare-fun bs!605954 () Bool)

(assert (= bs!605954 (and d!1269519 b!4317410)))

(assert (=> bs!605954 (= lambda!133562 lambda!133552)))

(declare-fun bs!605955 () Bool)

(assert (= bs!605955 (and d!1269519 d!1269499)))

(assert (=> bs!605955 (= lambda!133562 lambda!133561)))

(declare-fun lt!1536570 () ListMap!1799)

(assert (=> d!1269519 (invariantList!594 (toList!2521 lt!1536570))))

(declare-fun e!2685940 () ListMap!1799)

(assert (=> d!1269519 (= lt!1536570 e!2685940)))

(declare-fun c!734034 () Bool)

(assert (=> d!1269519 (= c!734034 ((_ is Cons!48337) (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))))))

(assert (=> d!1269519 (forall!8791 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lambda!133562)))

(assert (=> d!1269519 (= (extractMap!361 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))) lt!1536570)))

(declare-fun b!4317528 () Bool)

(assert (=> b!4317528 (= e!2685940 (addToMapMapFromBucket!48 (_2!26811 (h!53790 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))) (extractMap!361 (t!355318 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))))))))

(declare-fun b!4317529 () Bool)

(assert (=> b!4317529 (= e!2685940 (ListMap!1800 Nil!48336))))

(assert (= (and d!1269519 c!734034) b!4317528))

(assert (= (and d!1269519 (not c!734034)) b!4317529))

(declare-fun m!4911219 () Bool)

(assert (=> d!1269519 m!4911219))

(declare-fun m!4911221 () Bool)

(assert (=> d!1269519 m!4911221))

(declare-fun m!4911223 () Bool)

(assert (=> b!4317528 m!4911223))

(assert (=> b!4317528 m!4911223))

(declare-fun m!4911225 () Bool)

(assert (=> b!4317528 m!4911225))

(assert (=> d!1269487 d!1269519))

(assert (=> d!1269487 d!1269485))

(assert (=> d!1269487 d!1269491))

(declare-fun d!1269521 () Bool)

(declare-fun e!2685943 () Bool)

(assert (=> d!1269521 e!2685943))

(declare-fun res!1769542 () Bool)

(assert (=> d!1269521 (=> (not res!1769542) (not e!2685943))))

(declare-fun lt!1536579 () ListLongMap!1135)

(assert (=> d!1269521 (= res!1769542 (contains!10360 lt!1536579 (_1!26811 (tuple2!47057 lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)))))))

(declare-fun lt!1536580 () List!48461)

(assert (=> d!1269521 (= lt!1536579 (ListLongMap!1136 lt!1536580))))

(declare-fun lt!1536581 () Unit!67578)

(declare-fun lt!1536582 () Unit!67578)

(assert (=> d!1269521 (= lt!1536581 lt!1536582)))

(assert (=> d!1269521 (= (getValueByKey!287 lt!1536580 (_1!26811 (tuple2!47057 lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)))) (Some!10283 (_2!26811 (tuple2!47057 lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!91 (List!48461 (_ BitVec 64) List!48460) Unit!67578)

(assert (=> d!1269521 (= lt!1536582 (lemmaContainsTupThenGetReturnValue!91 lt!1536580 (_1!26811 (tuple2!47057 lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413))) (_2!26811 (tuple2!47057 lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)))))))

(declare-fun insertStrictlySorted!51 (List!48461 (_ BitVec 64) List!48460) List!48461)

(assert (=> d!1269521 (= lt!1536580 (insertStrictlySorted!51 (toList!2520 call!298809) (_1!26811 (tuple2!47057 lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413))) (_2!26811 (tuple2!47057 lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)))))))

(assert (=> d!1269521 (= (+!318 call!298809 (tuple2!47057 lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413))) lt!1536579)))

(declare-fun b!4317534 () Bool)

(declare-fun res!1769543 () Bool)

(assert (=> b!4317534 (=> (not res!1769543) (not e!2685943))))

(assert (=> b!4317534 (= res!1769543 (= (getValueByKey!287 (toList!2520 lt!1536579) (_1!26811 (tuple2!47057 lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)))) (Some!10283 (_2!26811 (tuple2!47057 lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413))))))))

(declare-fun b!4317535 () Bool)

(assert (=> b!4317535 (= e!2685943 (contains!10362 (toList!2520 lt!1536579) (tuple2!47057 lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413))))))

(assert (= (and d!1269521 res!1769542) b!4317534))

(assert (= (and b!4317534 res!1769543) b!4317535))

(declare-fun m!4911227 () Bool)

(assert (=> d!1269521 m!4911227))

(declare-fun m!4911229 () Bool)

(assert (=> d!1269521 m!4911229))

(declare-fun m!4911231 () Bool)

(assert (=> d!1269521 m!4911231))

(declare-fun m!4911233 () Bool)

(assert (=> d!1269521 m!4911233))

(declare-fun m!4911235 () Bool)

(assert (=> b!4317534 m!4911235))

(declare-fun m!4911237 () Bool)

(assert (=> b!4317535 m!4911237))

(assert (=> b!4317362 d!1269521))

(declare-fun d!1269523 () Bool)

(declare-fun res!1769548 () Bool)

(declare-fun e!2685948 () Bool)

(assert (=> d!1269523 (=> res!1769548 e!2685948)))

(assert (=> d!1269523 (= res!1769548 (and ((_ is Cons!48336) (t!355317 lt!1536413)) (= (_1!26810 (h!53789 (t!355317 lt!1536413))) (_1!26810 (h!53789 lt!1536413)))))))

(assert (=> d!1269523 (= (containsKey!383 (t!355317 lt!1536413) (_1!26810 (h!53789 lt!1536413))) e!2685948)))

(declare-fun b!4317540 () Bool)

(declare-fun e!2685949 () Bool)

(assert (=> b!4317540 (= e!2685948 e!2685949)))

(declare-fun res!1769549 () Bool)

(assert (=> b!4317540 (=> (not res!1769549) (not e!2685949))))

(assert (=> b!4317540 (= res!1769549 ((_ is Cons!48336) (t!355317 lt!1536413)))))

(declare-fun b!4317541 () Bool)

(assert (=> b!4317541 (= e!2685949 (containsKey!383 (t!355317 (t!355317 lt!1536413)) (_1!26810 (h!53789 lt!1536413))))))

(assert (= (and d!1269523 (not res!1769548)) b!4317540))

(assert (= (and b!4317540 res!1769549) b!4317541))

(declare-fun m!4911239 () Bool)

(assert (=> b!4317541 m!4911239))

(assert (=> b!4317373 d!1269523))

(declare-fun d!1269525 () Bool)

(declare-fun e!2685955 () Bool)

(assert (=> d!1269525 e!2685955))

(declare-fun res!1769552 () Bool)

(assert (=> d!1269525 (=> res!1769552 e!2685955)))

(declare-fun lt!1536592 () Bool)

(assert (=> d!1269525 (= res!1769552 (not lt!1536592))))

(declare-fun lt!1536594 () Bool)

(assert (=> d!1269525 (= lt!1536592 lt!1536594)))

(declare-fun lt!1536593 () Unit!67578)

(declare-fun e!2685954 () Unit!67578)

(assert (=> d!1269525 (= lt!1536593 e!2685954)))

(declare-fun c!734037 () Bool)

(assert (=> d!1269525 (= c!734037 lt!1536594)))

(assert (=> d!1269525 (= lt!1536594 (containsKey!384 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lt!1536415))))

(assert (=> d!1269525 (= (contains!10360 (map!10355 (v!42645 (underlying!9696 thiss!42308))) lt!1536415) lt!1536592)))

(declare-fun b!4317548 () Bool)

(declare-fun lt!1536591 () Unit!67578)

(assert (=> b!4317548 (= e!2685954 lt!1536591)))

(assert (=> b!4317548 (= lt!1536591 (lemmaContainsKeyImpliesGetValueByKeyDefined!206 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lt!1536415))))

(assert (=> b!4317548 (isDefined!7585 (getValueByKey!287 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lt!1536415))))

(declare-fun b!4317549 () Bool)

(declare-fun Unit!67587 () Unit!67578)

(assert (=> b!4317549 (= e!2685954 Unit!67587)))

(declare-fun b!4317550 () Bool)

(assert (=> b!4317550 (= e!2685955 (isDefined!7585 (getValueByKey!287 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lt!1536415)))))

(assert (= (and d!1269525 c!734037) b!4317548))

(assert (= (and d!1269525 (not c!734037)) b!4317549))

(assert (= (and d!1269525 (not res!1769552)) b!4317550))

(declare-fun m!4911241 () Bool)

(assert (=> d!1269525 m!4911241))

(declare-fun m!4911243 () Bool)

(assert (=> b!4317548 m!4911243))

(assert (=> b!4317548 m!4911141))

(assert (=> b!4317548 m!4911141))

(declare-fun m!4911245 () Bool)

(assert (=> b!4317548 m!4911245))

(assert (=> b!4317550 m!4911141))

(assert (=> b!4317550 m!4911141))

(assert (=> b!4317550 m!4911245))

(assert (=> d!1269473 d!1269525))

(assert (=> d!1269473 d!1269485))

(declare-fun b!4317571 () Bool)

(declare-fun e!2685967 () Bool)

(assert (=> b!4317571 (= e!2685967 false)))

(declare-fun c!734051 () Bool)

(declare-fun call!298850 () Bool)

(assert (=> b!4317571 (= c!734051 call!298850)))

(declare-fun lt!1536627 () Unit!67578)

(declare-fun e!2685970 () Unit!67578)

(assert (=> b!4317571 (= lt!1536627 e!2685970)))

(declare-fun b!4317572 () Bool)

(declare-fun e!2685968 () Bool)

(declare-fun e!2685966 () Bool)

(assert (=> b!4317572 (= e!2685968 e!2685966)))

(declare-fun c!734048 () Bool)

(assert (=> b!4317572 (= c!734048 (= lt!1536415 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!298845 () Bool)

(declare-fun call!298851 () ListLongMap!1135)

(declare-fun getCurrentListMap!21 (array!17138 array!17140 (_ BitVec 32) (_ BitVec 32) List!48460 List!48460 (_ BitVec 32) Int) ListLongMap!1135)

(assert (=> bm!298845 (= call!298851 (getCurrentListMap!21 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (_values!5014 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (zeroValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (minValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-datatypes ((SeekEntryResult!18 0))(
  ( (Found!18 (index!1451 (_ BitVec 32))) (Undefined!18) (MissingZero!18 (index!1452 (_ BitVec 32))) (MissingVacant!18 (index!1453 (_ BitVec 32))) (Intermediate!18 (undefined!99 Bool) (index!1454 (_ BitVec 32)) (x!749318 (_ BitVec 32))) )
))
(declare-fun lt!1536626 () SeekEntryResult!18)

(declare-fun bm!298846 () Bool)

(declare-fun c!734050 () Bool)

(assert (=> bm!298846 (= call!298850 (contains!10360 call!298851 (ite c!734050 (select (arr!7651 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) (index!1451 lt!1536626)) lt!1536415)))))

(declare-fun b!4317573 () Bool)

(assert (=> b!4317573 (= e!2685966 (not (= (bvand (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4317574 () Bool)

(assert (=> b!4317574 (= c!734050 ((_ is Found!18) lt!1536626))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!17138 (_ BitVec 32)) SeekEntryResult!18)

(assert (=> b!4317574 (= lt!1536626 (seekEntry!0 lt!1536415 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(assert (=> b!4317574 (= e!2685966 e!2685967)))

(declare-fun b!4317575 () Bool)

(declare-fun e!2685969 () Bool)

(declare-fun call!298852 () Bool)

(assert (=> b!4317575 (= e!2685969 call!298852)))

(declare-fun b!4317576 () Bool)

(assert (=> b!4317576 false))

(declare-fun lt!1536631 () Unit!67578)

(declare-fun lt!1536633 () Unit!67578)

(assert (=> b!4317576 (= lt!1536631 lt!1536633)))

(declare-fun lt!1536637 () SeekEntryResult!18)

(declare-fun lt!1536628 () (_ BitVec 32))

(assert (=> b!4317576 (and ((_ is Found!18) lt!1536637) (= (index!1451 lt!1536637) lt!1536628))))

(assert (=> b!4317576 (= lt!1536637 (seekEntry!0 lt!1536415 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!17138 (_ BitVec 32)) Unit!67578)

(assert (=> b!4317576 (= lt!1536633 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 lt!1536415 lt!1536628 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-fun lt!1536625 () Unit!67578)

(declare-fun lt!1536636 () Unit!67578)

(assert (=> b!4317576 (= lt!1536625 lt!1536636)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17138 (_ BitVec 32)) Bool)

(assert (=> b!4317576 (arrayForallSeekEntryOrOpenFound!0 lt!1536628 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!17138 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!67578)

(assert (=> b!4317576 (= lt!1536636 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000000 lt!1536628))))

(declare-fun arrayScanForKey!0 (array!17138 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4317576 (= lt!1536628 (arrayScanForKey!0 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) lt!1536415 #b00000000000000000000000000000000))))

(declare-fun lt!1536639 () Unit!67578)

(declare-fun lt!1536638 () Unit!67578)

(assert (=> b!4317576 (= lt!1536639 lt!1536638)))

(assert (=> b!4317576 e!2685969))

(declare-fun c!734049 () Bool)

(assert (=> b!4317576 (= c!734049 (and (not (= lt!1536415 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1536415 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!14 (array!17138 array!17140 (_ BitVec 32) (_ BitVec 32) List!48460 List!48460 (_ BitVec 64) Int) Unit!67578)

(assert (=> b!4317576 (= lt!1536638 (lemmaKeyInListMapIsInArray!14 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (_values!5014 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (zeroValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (minValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) lt!1536415 (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-fun Unit!67588 () Unit!67578)

(assert (=> b!4317576 (= e!2685970 Unit!67588)))

(declare-fun bm!298847 () Bool)

(declare-fun arrayContainsKey!0 (array!17138 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!298847 (= call!298852 (arrayContainsKey!0 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) lt!1536415 #b00000000000000000000000000000000))))

(declare-fun b!4317577 () Bool)

(assert (=> b!4317577 (= e!2685969 (ite (= lt!1536415 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun d!1269527 () Bool)

(declare-fun lt!1536629 () Bool)

(assert (=> d!1269527 (= lt!1536629 (contains!10360 (map!10357 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) lt!1536415))))

(assert (=> d!1269527 (= lt!1536629 e!2685968)))

(declare-fun c!734052 () Bool)

(assert (=> d!1269527 (= c!734052 (= lt!1536415 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!1269527 (valid!3739 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))

(assert (=> d!1269527 (= (contains!10361 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))) lt!1536415) lt!1536629)))

(declare-fun b!4317578 () Bool)

(assert (=> b!4317578 (= e!2685968 (not (= (bvand (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4317579 () Bool)

(assert (=> b!4317579 (= e!2685967 true)))

(declare-fun lt!1536635 () Unit!67578)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17138 (_ BitVec 64) (_ BitVec 32)) Unit!67578)

(assert (=> b!4317579 (= lt!1536635 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) lt!1536415 (index!1451 lt!1536626)))))

(assert (=> b!4317579 call!298852))

(declare-fun lt!1536634 () Unit!67578)

(assert (=> b!4317579 (= lt!1536634 lt!1536635)))

(declare-fun lt!1536632 () Unit!67578)

(declare-fun lemmaValidKeyInArrayIsInListMap!11 (array!17138 array!17140 (_ BitVec 32) (_ BitVec 32) List!48460 List!48460 (_ BitVec 32) Int) Unit!67578)

(assert (=> b!4317579 (= lt!1536632 (lemmaValidKeyInArrayIsInListMap!11 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (_values!5014 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (zeroValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (minValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (index!1451 lt!1536626) (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(assert (=> b!4317579 call!298850))

(declare-fun lt!1536630 () Unit!67578)

(assert (=> b!4317579 (= lt!1536630 lt!1536632)))

(declare-fun b!4317580 () Bool)

(declare-fun Unit!67589 () Unit!67578)

(assert (=> b!4317580 (= e!2685970 Unit!67589)))

(assert (= (and d!1269527 c!734052) b!4317578))

(assert (= (and d!1269527 (not c!734052)) b!4317572))

(assert (= (and b!4317572 c!734048) b!4317573))

(assert (= (and b!4317572 (not c!734048)) b!4317574))

(assert (= (and b!4317574 c!734050) b!4317579))

(assert (= (and b!4317574 (not c!734050)) b!4317571))

(assert (= (and b!4317571 c!734051) b!4317576))

(assert (= (and b!4317571 (not c!734051)) b!4317580))

(assert (= (and b!4317576 c!734049) b!4317575))

(assert (= (and b!4317576 (not c!734049)) b!4317577))

(assert (= (or b!4317579 b!4317575) bm!298847))

(assert (= (or b!4317579 b!4317571) bm!298845))

(assert (= (or b!4317579 b!4317571) bm!298846))

(declare-fun m!4911247 () Bool)

(assert (=> b!4317574 m!4911247))

(declare-fun m!4911249 () Bool)

(assert (=> bm!298845 m!4911249))

(assert (=> d!1269527 m!4911131))

(assert (=> d!1269527 m!4911131))

(declare-fun m!4911251 () Bool)

(assert (=> d!1269527 m!4911251))

(assert (=> d!1269527 m!4911181))

(declare-fun m!4911253 () Bool)

(assert (=> b!4317576 m!4911253))

(declare-fun m!4911255 () Bool)

(assert (=> b!4317576 m!4911255))

(assert (=> b!4317576 m!4911247))

(declare-fun m!4911257 () Bool)

(assert (=> b!4317576 m!4911257))

(declare-fun m!4911259 () Bool)

(assert (=> b!4317576 m!4911259))

(declare-fun m!4911261 () Bool)

(assert (=> b!4317576 m!4911261))

(declare-fun m!4911263 () Bool)

(assert (=> b!4317579 m!4911263))

(declare-fun m!4911265 () Bool)

(assert (=> b!4317579 m!4911265))

(declare-fun m!4911267 () Bool)

(assert (=> bm!298846 m!4911267))

(declare-fun m!4911269 () Bool)

(assert (=> bm!298846 m!4911269))

(declare-fun m!4911271 () Bool)

(assert (=> bm!298847 m!4911271))

(assert (=> d!1269473 d!1269527))

(assert (=> d!1269473 d!1269503))

(assert (=> bm!298804 d!1269485))

(assert (=> d!1269493 d!1269473))

(declare-fun b!4317617 () Bool)

(declare-fun lt!1536663 () Unit!67578)

(declare-fun lt!1536666 () Unit!67578)

(assert (=> b!4317617 (= lt!1536663 lt!1536666)))

(declare-fun e!2686002 () Bool)

(assert (=> b!4317617 e!2686002))

(declare-fun c!734068 () Bool)

(assert (=> b!4317617 (= c!734068 (= lt!1536415 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!1536667 () SeekEntryResult!18)

(declare-fun lemmaKeyInListMapThenSameValueInArray!8 (array!17138 array!17140 (_ BitVec 32) (_ BitVec 32) List!48460 List!48460 (_ BitVec 64) (_ BitVec 32) Int) Unit!67578)

(assert (=> b!4317617 (= lt!1536666 (lemmaKeyInListMapThenSameValueInArray!8 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (_values!5014 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (zeroValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (minValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) lt!1536415 (index!1451 lt!1536667) (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-fun lt!1536669 () Unit!67578)

(declare-fun lt!1536662 () Unit!67578)

(assert (=> b!4317617 (= lt!1536669 lt!1536662)))

(assert (=> b!4317617 (contains!10360 (getCurrentListMap!21 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (_values!5014 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (zeroValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (minValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) (select (arr!7651 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) (index!1451 lt!1536667)))))

(assert (=> b!4317617 (= lt!1536662 (lemmaValidKeyInArrayIsInListMap!11 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (_values!5014 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (zeroValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (minValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (index!1451 lt!1536667) (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-fun lt!1536670 () Unit!67578)

(declare-fun lt!1536668 () Unit!67578)

(assert (=> b!4317617 (= lt!1536670 lt!1536668)))

(assert (=> b!4317617 (arrayContainsKey!0 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) lt!1536415 #b00000000000000000000000000000000)))

(assert (=> b!4317617 (= lt!1536668 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) lt!1536415 (index!1451 lt!1536667)))))

(declare-fun e!2685996 () List!48460)

(assert (=> b!4317617 (= e!2685996 (select (arr!7652 (_values!5014 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) (index!1451 lt!1536667)))))

(declare-fun b!4317618 () Bool)

(declare-fun e!2685993 () Bool)

(declare-fun call!298863 () List!48460)

(assert (=> b!4317618 (= e!2685993 (= call!298863 (zeroValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-fun call!298861 () List!48460)

(declare-fun b!4317619 () Bool)

(declare-fun e!2685998 () Bool)

(assert (=> b!4317619 (= e!2685998 (= call!298861 (select (arr!7652 (_values!5014 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) (index!1451 lt!1536667))))))

(declare-fun b!4317620 () Bool)

(declare-fun e!2686003 () List!48460)

(assert (=> b!4317620 (= e!2686003 (minValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))))))

(declare-fun bm!298856 () Bool)

(declare-fun call!298862 () ListLongMap!1135)

(declare-fun call!298864 () ListLongMap!1135)

(assert (=> bm!298856 (= call!298862 call!298864)))

(declare-fun b!4317621 () Bool)

(assert (=> b!4317621 (= e!2686003 (dynLambda!20489 (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) lt!1536415))))

(declare-fun b!4317622 () Bool)

(declare-fun e!2685994 () List!48460)

(assert (=> b!4317622 (= e!2685994 (zeroValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))))))

(declare-fun b!4317623 () Bool)

(declare-fun e!2685999 () Bool)

(declare-fun lt!1536665 () SeekEntryResult!18)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!4317623 (= e!2685999 (inRange!0 (index!1451 lt!1536665) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-fun bm!298857 () Bool)

(assert (=> bm!298857 (= call!298864 (getCurrentListMap!21 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (_values!5014 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (zeroValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (minValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-fun b!4317624 () Bool)

(declare-fun e!2686000 () Bool)

(assert (=> b!4317624 (= e!2686002 e!2686000)))

(declare-fun c!734072 () Bool)

(assert (=> b!4317624 (= c!734072 (= lt!1536415 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4317626 () Bool)

(declare-fun c!734070 () Bool)

(assert (=> b!4317626 (= c!734070 (and (= lt!1536415 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!4317626 (= e!2685994 e!2686003)))

(declare-fun b!4317627 () Bool)

(assert (=> b!4317627 (= e!2685996 (dynLambda!20489 (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) lt!1536415))))

(declare-fun bm!298858 () Bool)

(assert (=> bm!298858 (= call!298863 (apply!11110 (ite c!734068 call!298864 call!298862) lt!1536415))))

(declare-fun b!4317628 () Bool)

(assert (=> b!4317628 (= e!2686002 e!2685993)))

(declare-fun res!1769564 () Bool)

(assert (=> b!4317628 (= res!1769564 (not (= (bvand (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4317628 (=> (not res!1769564) (not e!2685993))))

(declare-fun b!4317629 () Bool)

(declare-fun res!1769562 () Bool)

(declare-fun e!2686001 () Bool)

(assert (=> b!4317629 (=> (not res!1769562) (not e!2686001))))

(assert (=> b!4317629 (= res!1769562 (not (= (bvand (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!4317629 (= e!2686000 e!2686001)))

(declare-fun b!4317630 () Bool)

(declare-fun e!2685997 () List!48460)

(assert (=> b!4317630 (= e!2685997 e!2685994)))

(declare-fun c!734069 () Bool)

(assert (=> b!4317630 (= c!734069 (and (= lt!1536415 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!4317631 () Bool)

(assert (=> b!4317631 (= e!2686001 (= call!298861 (minValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-fun d!1269529 () Bool)

(declare-fun e!2685995 () Bool)

(assert (=> d!1269529 e!2685995))

(declare-fun c!734067 () Bool)

(assert (=> d!1269529 (= c!734067 (contains!10361 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))) lt!1536415))))

(declare-fun lt!1536664 () List!48460)

(assert (=> d!1269529 (= lt!1536664 e!2685997)))

(declare-fun c!734071 () Bool)

(assert (=> d!1269529 (= c!734071 (= lt!1536415 (bvneg lt!1536415)))))

(assert (=> d!1269529 (valid!3739 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))

(assert (=> d!1269529 (= (apply!11111 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))) lt!1536415) lt!1536664)))

(declare-fun b!4317625 () Bool)

(assert (=> b!4317625 (= e!2685997 e!2685996)))

(assert (=> b!4317625 (= lt!1536667 (seekEntry!0 lt!1536415 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-fun lt!1536672 () Unit!67578)

(declare-fun lemmaSeekEntryGivesInRangeIndex!8 (array!17138 array!17140 (_ BitVec 32) (_ BitVec 32) List!48460 List!48460 (_ BitVec 64)) Unit!67578)

(assert (=> b!4317625 (= lt!1536672 (lemmaSeekEntryGivesInRangeIndex!8 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (_values!5014 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (zeroValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (minValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) lt!1536415))))

(assert (=> b!4317625 (= lt!1536665 (seekEntry!0 lt!1536415 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-fun res!1769561 () Bool)

(assert (=> b!4317625 (= res!1769561 (not ((_ is Found!18) lt!1536665)))))

(assert (=> b!4317625 (=> res!1769561 e!2685999)))

(assert (=> b!4317625 e!2685999))

(declare-fun lt!1536671 () Unit!67578)

(assert (=> b!4317625 (= lt!1536671 lt!1536672)))

(declare-fun c!734073 () Bool)

(assert (=> b!4317625 (= c!734073 ((_ is Found!18) lt!1536667))))

(declare-fun b!4317632 () Bool)

(assert (=> b!4317632 (= e!2685995 (= lt!1536664 (dynLambda!20489 (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) lt!1536415)))))

(declare-fun b!4317633 () Bool)

(declare-fun res!1769563 () Bool)

(assert (=> b!4317633 (=> (not res!1769563) (not e!2685998))))

(assert (=> b!4317633 (= res!1769563 (arrayContainsKey!0 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) lt!1536415 #b00000000000000000000000000000000))))

(assert (=> b!4317633 (= e!2686000 e!2685998)))

(declare-fun bm!298859 () Bool)

(assert (=> bm!298859 (= call!298861 call!298863)))

(declare-fun b!4317634 () Bool)

(assert (=> b!4317634 (= e!2685995 (= lt!1536664 (get!15655 (getValueByKey!287 (toList!2520 (map!10357 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))) lt!1536415))))))

(assert (= (and d!1269529 c!734071) b!4317630))

(assert (= (and d!1269529 (not c!734071)) b!4317625))

(assert (= (and b!4317630 c!734069) b!4317622))

(assert (= (and b!4317630 (not c!734069)) b!4317626))

(assert (= (and b!4317626 c!734070) b!4317620))

(assert (= (and b!4317626 (not c!734070)) b!4317621))

(assert (= (and b!4317625 (not res!1769561)) b!4317623))

(assert (= (and b!4317625 c!734073) b!4317617))

(assert (= (and b!4317625 (not c!734073)) b!4317627))

(assert (= (and b!4317617 c!734068) b!4317628))

(assert (= (and b!4317617 (not c!734068)) b!4317624))

(assert (= (and b!4317628 res!1769564) b!4317618))

(assert (= (and b!4317624 c!734072) b!4317629))

(assert (= (and b!4317624 (not c!734072)) b!4317633))

(assert (= (and b!4317629 res!1769562) b!4317631))

(assert (= (and b!4317633 res!1769563) b!4317619))

(assert (= (or b!4317631 b!4317619) bm!298856))

(assert (= (or b!4317631 b!4317619) bm!298859))

(assert (= (or b!4317618 bm!298856) bm!298857))

(assert (= (or b!4317618 bm!298859) bm!298858))

(assert (= (and d!1269529 c!734067) b!4317634))

(assert (= (and d!1269529 (not c!734067)) b!4317632))

(declare-fun b_lambda!126967 () Bool)

(assert (=> (not b_lambda!126967) (not b!4317621)))

(assert (=> b!4317621 t!355320))

(declare-fun b_and!340395 () Bool)

(assert (= b_and!340393 (and (=> t!355320 result!314828) b_and!340395)))

(declare-fun b_lambda!126969 () Bool)

(assert (=> (not b_lambda!126969) (not b!4317627)))

(assert (=> b!4317627 t!355320))

(declare-fun b_and!340397 () Bool)

(assert (= b_and!340395 (and (=> t!355320 result!314828) b_and!340397)))

(declare-fun b_lambda!126971 () Bool)

(assert (=> (not b_lambda!126971) (not b!4317632)))

(assert (=> b!4317632 t!355320))

(declare-fun b_and!340399 () Bool)

(assert (= b_and!340397 (and (=> t!355320 result!314828) b_and!340399)))

(assert (=> b!4317625 m!4911247))

(declare-fun m!4911273 () Bool)

(assert (=> b!4317625 m!4911273))

(declare-fun m!4911275 () Bool)

(assert (=> bm!298858 m!4911275))

(declare-fun m!4911277 () Bool)

(assert (=> b!4317619 m!4911277))

(assert (=> b!4317632 m!4911145))

(assert (=> bm!298857 m!4911249))

(declare-fun m!4911279 () Bool)

(assert (=> b!4317617 m!4911279))

(assert (=> b!4317617 m!4911271))

(assert (=> b!4317617 m!4911277))

(declare-fun m!4911281 () Bool)

(assert (=> b!4317617 m!4911281))

(declare-fun m!4911283 () Bool)

(assert (=> b!4317617 m!4911283))

(assert (=> b!4317617 m!4911249))

(declare-fun m!4911285 () Bool)

(assert (=> b!4317617 m!4911285))

(assert (=> b!4317617 m!4911249))

(assert (=> b!4317617 m!4911281))

(declare-fun m!4911287 () Bool)

(assert (=> b!4317617 m!4911287))

(assert (=> b!4317621 m!4911145))

(assert (=> b!4317634 m!4911131))

(declare-fun m!4911289 () Bool)

(assert (=> b!4317634 m!4911289))

(assert (=> b!4317634 m!4911289))

(declare-fun m!4911291 () Bool)

(assert (=> b!4317634 m!4911291))

(assert (=> b!4317633 m!4911271))

(assert (=> b!4317627 m!4911145))

(assert (=> d!1269529 m!4911069))

(assert (=> d!1269529 m!4911181))

(declare-fun m!4911293 () Bool)

(assert (=> b!4317623 m!4911293))

(assert (=> d!1269493 d!1269529))

(assert (=> d!1269493 d!1269503))

(declare-fun d!1269531 () Bool)

(declare-fun isEmpty!28098 (Option!10283) Bool)

(assert (=> d!1269531 (= (isDefined!7584 call!298823) (not (isEmpty!28098 call!298823)))))

(declare-fun bs!605956 () Bool)

(assert (= bs!605956 d!1269531))

(declare-fun m!4911295 () Bool)

(assert (=> bs!605956 m!4911295))

(assert (=> bm!298823 d!1269531))

(declare-fun d!1269533 () Bool)

(declare-fun e!2686005 () Bool)

(assert (=> d!1269533 e!2686005))

(declare-fun res!1769565 () Bool)

(assert (=> d!1269533 (=> res!1769565 e!2686005)))

(declare-fun lt!1536674 () Bool)

(assert (=> d!1269533 (= res!1769565 (not lt!1536674))))

(declare-fun lt!1536676 () Bool)

(assert (=> d!1269533 (= lt!1536674 lt!1536676)))

(declare-fun lt!1536675 () Unit!67578)

(declare-fun e!2686004 () Unit!67578)

(assert (=> d!1269533 (= lt!1536675 e!2686004)))

(declare-fun c!734074 () Bool)

(assert (=> d!1269533 (= c!734074 lt!1536676)))

(assert (=> d!1269533 (= lt!1536676 (containsKey!384 (toList!2520 (ite c!733996 lt!1536479 call!298828)) call!298824))))

(assert (=> d!1269533 (= (contains!10360 (ite c!733996 lt!1536479 call!298828) call!298824) lt!1536674)))

(declare-fun b!4317635 () Bool)

(declare-fun lt!1536673 () Unit!67578)

(assert (=> b!4317635 (= e!2686004 lt!1536673)))

(assert (=> b!4317635 (= lt!1536673 (lemmaContainsKeyImpliesGetValueByKeyDefined!206 (toList!2520 (ite c!733996 lt!1536479 call!298828)) call!298824))))

(assert (=> b!4317635 (isDefined!7585 (getValueByKey!287 (toList!2520 (ite c!733996 lt!1536479 call!298828)) call!298824))))

(declare-fun b!4317636 () Bool)

(declare-fun Unit!67590 () Unit!67578)

(assert (=> b!4317636 (= e!2686004 Unit!67590)))

(declare-fun b!4317637 () Bool)

(assert (=> b!4317637 (= e!2686005 (isDefined!7585 (getValueByKey!287 (toList!2520 (ite c!733996 lt!1536479 call!298828)) call!298824)))))

(assert (= (and d!1269533 c!734074) b!4317635))

(assert (= (and d!1269533 (not c!734074)) b!4317636))

(assert (= (and d!1269533 (not res!1769565)) b!4317637))

(declare-fun m!4911297 () Bool)

(assert (=> d!1269533 m!4911297))

(declare-fun m!4911299 () Bool)

(assert (=> b!4317635 m!4911299))

(declare-fun m!4911301 () Bool)

(assert (=> b!4317635 m!4911301))

(assert (=> b!4317635 m!4911301))

(declare-fun m!4911303 () Bool)

(assert (=> b!4317635 m!4911303))

(assert (=> b!4317637 m!4911301))

(assert (=> b!4317637 m!4911301))

(assert (=> b!4317637 m!4911303))

(assert (=> bm!298822 d!1269533))

(assert (=> bm!298821 d!1269475))

(assert (=> d!1269483 d!1269475))

(declare-fun b!4317638 () Bool)

(declare-fun e!2686007 () Bool)

(declare-fun e!2686011 () Bool)

(assert (=> b!4317638 (= e!2686007 e!2686011)))

(declare-fun res!1769566 () Bool)

(assert (=> b!4317638 (=> (not res!1769566) (not e!2686011))))

(assert (=> b!4317638 (= res!1769566 (isDefined!7586 (getValueByKey!288 (toList!2521 (map!10356 thiss!42308)) key!2048)))))

(declare-fun bm!298860 () Bool)

(declare-fun call!298865 () Bool)

(declare-fun e!2686009 () List!48462)

(assert (=> bm!298860 (= call!298865 (contains!10364 e!2686009 key!2048))))

(declare-fun c!734076 () Bool)

(declare-fun c!734077 () Bool)

(assert (=> bm!298860 (= c!734076 c!734077)))

(declare-fun b!4317639 () Bool)

(assert (=> b!4317639 (= e!2686011 (contains!10364 (keys!16150 (map!10356 thiss!42308)) key!2048))))

(declare-fun b!4317641 () Bool)

(declare-fun e!2686008 () Bool)

(assert (=> b!4317641 (= e!2686008 (not (contains!10364 (keys!16150 (map!10356 thiss!42308)) key!2048)))))

(declare-fun b!4317642 () Bool)

(assert (=> b!4317642 (= e!2686009 (keys!16150 (map!10356 thiss!42308)))))

(declare-fun b!4317643 () Bool)

(declare-fun e!2686006 () Unit!67578)

(declare-fun Unit!67591 () Unit!67578)

(assert (=> b!4317643 (= e!2686006 Unit!67591)))

(declare-fun d!1269535 () Bool)

(assert (=> d!1269535 e!2686007))

(declare-fun res!1769567 () Bool)

(assert (=> d!1269535 (=> res!1769567 e!2686007)))

(assert (=> d!1269535 (= res!1769567 e!2686008)))

(declare-fun res!1769568 () Bool)

(assert (=> d!1269535 (=> (not res!1769568) (not e!2686008))))

(declare-fun lt!1536683 () Bool)

(assert (=> d!1269535 (= res!1769568 (not lt!1536683))))

(declare-fun lt!1536681 () Bool)

(assert (=> d!1269535 (= lt!1536683 lt!1536681)))

(declare-fun lt!1536680 () Unit!67578)

(declare-fun e!2686010 () Unit!67578)

(assert (=> d!1269535 (= lt!1536680 e!2686010)))

(assert (=> d!1269535 (= c!734077 lt!1536681)))

(assert (=> d!1269535 (= lt!1536681 (containsKey!385 (toList!2521 (map!10356 thiss!42308)) key!2048))))

(assert (=> d!1269535 (= (contains!10363 (map!10356 thiss!42308) key!2048) lt!1536683)))

(declare-fun b!4317640 () Bool)

(declare-fun lt!1536677 () Unit!67578)

(assert (=> b!4317640 (= e!2686010 lt!1536677)))

(declare-fun lt!1536684 () Unit!67578)

(assert (=> b!4317640 (= lt!1536684 (lemmaContainsKeyImpliesGetValueByKeyDefined!207 (toList!2521 (map!10356 thiss!42308)) key!2048))))

(assert (=> b!4317640 (isDefined!7586 (getValueByKey!288 (toList!2521 (map!10356 thiss!42308)) key!2048))))

(declare-fun lt!1536678 () Unit!67578)

(assert (=> b!4317640 (= lt!1536678 lt!1536684)))

(assert (=> b!4317640 (= lt!1536677 (lemmaInListThenGetKeysListContains!50 (toList!2521 (map!10356 thiss!42308)) key!2048))))

(assert (=> b!4317640 call!298865))

(declare-fun b!4317644 () Bool)

(assert (=> b!4317644 false))

(declare-fun lt!1536682 () Unit!67578)

(declare-fun lt!1536679 () Unit!67578)

(assert (=> b!4317644 (= lt!1536682 lt!1536679)))

(assert (=> b!4317644 (containsKey!385 (toList!2521 (map!10356 thiss!42308)) key!2048)))

(assert (=> b!4317644 (= lt!1536679 (lemmaInGetKeysListThenContainsKey!50 (toList!2521 (map!10356 thiss!42308)) key!2048))))

(declare-fun Unit!67592 () Unit!67578)

(assert (=> b!4317644 (= e!2686006 Unit!67592)))

(declare-fun b!4317645 () Bool)

(assert (=> b!4317645 (= e!2686009 (getKeysList!53 (toList!2521 (map!10356 thiss!42308))))))

(declare-fun b!4317646 () Bool)

(assert (=> b!4317646 (= e!2686010 e!2686006)))

(declare-fun c!734075 () Bool)

(assert (=> b!4317646 (= c!734075 call!298865)))

(assert (= (and d!1269535 c!734077) b!4317640))

(assert (= (and d!1269535 (not c!734077)) b!4317646))

(assert (= (and b!4317646 c!734075) b!4317644))

(assert (= (and b!4317646 (not c!734075)) b!4317643))

(assert (= (or b!4317640 b!4317646) bm!298860))

(assert (= (and bm!298860 c!734076) b!4317645))

(assert (= (and bm!298860 (not c!734076)) b!4317642))

(assert (= (and d!1269535 res!1769568) b!4317641))

(assert (= (and d!1269535 (not res!1769567)) b!4317638))

(assert (= (and b!4317638 res!1769566) b!4317639))

(assert (=> b!4317641 m!4911025))

(declare-fun m!4911305 () Bool)

(assert (=> b!4317641 m!4911305))

(assert (=> b!4317641 m!4911305))

(declare-fun m!4911307 () Bool)

(assert (=> b!4317641 m!4911307))

(declare-fun m!4911309 () Bool)

(assert (=> bm!298860 m!4911309))

(declare-fun m!4911311 () Bool)

(assert (=> d!1269535 m!4911311))

(assert (=> b!4317642 m!4911025))

(assert (=> b!4317642 m!4911305))

(assert (=> b!4317639 m!4911025))

(assert (=> b!4317639 m!4911305))

(assert (=> b!4317639 m!4911305))

(assert (=> b!4317639 m!4911307))

(declare-fun m!4911313 () Bool)

(assert (=> b!4317640 m!4911313))

(declare-fun m!4911315 () Bool)

(assert (=> b!4317640 m!4911315))

(assert (=> b!4317640 m!4911315))

(declare-fun m!4911317 () Bool)

(assert (=> b!4317640 m!4911317))

(declare-fun m!4911319 () Bool)

(assert (=> b!4317640 m!4911319))

(assert (=> b!4317638 m!4911315))

(assert (=> b!4317638 m!4911315))

(assert (=> b!4317638 m!4911317))

(assert (=> b!4317644 m!4911311))

(declare-fun m!4911321 () Bool)

(assert (=> b!4317644 m!4911321))

(declare-fun m!4911323 () Bool)

(assert (=> b!4317645 m!4911323))

(assert (=> d!1269483 d!1269535))

(declare-fun b!4317647 () Bool)

(declare-fun e!2686013 () Bool)

(declare-fun e!2686017 () Bool)

(assert (=> b!4317647 (= e!2686013 e!2686017)))

(declare-fun res!1769569 () Bool)

(assert (=> b!4317647 (=> (not res!1769569) (not e!2686017))))

(assert (=> b!4317647 (= res!1769569 (isDefined!7586 (getValueByKey!288 (toList!2521 (extractMap!361 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))) key!2048)))))

(declare-fun bm!298861 () Bool)

(declare-fun call!298866 () Bool)

(declare-fun e!2686015 () List!48462)

(assert (=> bm!298861 (= call!298866 (contains!10364 e!2686015 key!2048))))

(declare-fun c!734079 () Bool)

(declare-fun c!734080 () Bool)

(assert (=> bm!298861 (= c!734079 c!734080)))

(declare-fun b!4317648 () Bool)

(assert (=> b!4317648 (= e!2686017 (contains!10364 (keys!16150 (extractMap!361 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))) key!2048))))

(declare-fun b!4317650 () Bool)

(declare-fun e!2686014 () Bool)

(assert (=> b!4317650 (= e!2686014 (not (contains!10364 (keys!16150 (extractMap!361 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))) key!2048)))))

(declare-fun b!4317651 () Bool)

(assert (=> b!4317651 (= e!2686015 (keys!16150 (extractMap!361 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-fun b!4317652 () Bool)

(declare-fun e!2686012 () Unit!67578)

(declare-fun Unit!67593 () Unit!67578)

(assert (=> b!4317652 (= e!2686012 Unit!67593)))

(declare-fun d!1269537 () Bool)

(assert (=> d!1269537 e!2686013))

(declare-fun res!1769570 () Bool)

(assert (=> d!1269537 (=> res!1769570 e!2686013)))

(assert (=> d!1269537 (= res!1769570 e!2686014)))

(declare-fun res!1769571 () Bool)

(assert (=> d!1269537 (=> (not res!1769571) (not e!2686014))))

(declare-fun lt!1536691 () Bool)

(assert (=> d!1269537 (= res!1769571 (not lt!1536691))))

(declare-fun lt!1536689 () Bool)

(assert (=> d!1269537 (= lt!1536691 lt!1536689)))

(declare-fun lt!1536688 () Unit!67578)

(declare-fun e!2686016 () Unit!67578)

(assert (=> d!1269537 (= lt!1536688 e!2686016)))

(assert (=> d!1269537 (= c!734080 lt!1536689)))

(assert (=> d!1269537 (= lt!1536689 (containsKey!385 (toList!2521 (extractMap!361 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))) key!2048))))

(assert (=> d!1269537 (= (contains!10363 (extractMap!361 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))) key!2048) lt!1536691)))

(declare-fun b!4317649 () Bool)

(declare-fun lt!1536685 () Unit!67578)

(assert (=> b!4317649 (= e!2686016 lt!1536685)))

(declare-fun lt!1536692 () Unit!67578)

(assert (=> b!4317649 (= lt!1536692 (lemmaContainsKeyImpliesGetValueByKeyDefined!207 (toList!2521 (extractMap!361 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))) key!2048))))

(assert (=> b!4317649 (isDefined!7586 (getValueByKey!288 (toList!2521 (extractMap!361 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))) key!2048))))

(declare-fun lt!1536686 () Unit!67578)

(assert (=> b!4317649 (= lt!1536686 lt!1536692)))

(assert (=> b!4317649 (= lt!1536685 (lemmaInListThenGetKeysListContains!50 (toList!2521 (extractMap!361 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))) key!2048))))

(assert (=> b!4317649 call!298866))

(declare-fun b!4317653 () Bool)

(assert (=> b!4317653 false))

(declare-fun lt!1536690 () Unit!67578)

(declare-fun lt!1536687 () Unit!67578)

(assert (=> b!4317653 (= lt!1536690 lt!1536687)))

(assert (=> b!4317653 (containsKey!385 (toList!2521 (extractMap!361 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))) key!2048)))

(assert (=> b!4317653 (= lt!1536687 (lemmaInGetKeysListThenContainsKey!50 (toList!2521 (extractMap!361 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))) key!2048))))

(declare-fun Unit!67594 () Unit!67578)

(assert (=> b!4317653 (= e!2686012 Unit!67594)))

(declare-fun b!4317654 () Bool)

(assert (=> b!4317654 (= e!2686015 (getKeysList!53 (toList!2521 (extractMap!361 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))))))))

(declare-fun b!4317655 () Bool)

(assert (=> b!4317655 (= e!2686016 e!2686012)))

(declare-fun c!734078 () Bool)

(assert (=> b!4317655 (= c!734078 call!298866)))

(assert (= (and d!1269537 c!734080) b!4317649))

(assert (= (and d!1269537 (not c!734080)) b!4317655))

(assert (= (and b!4317655 c!734078) b!4317653))

(assert (= (and b!4317655 (not c!734078)) b!4317652))

(assert (= (or b!4317649 b!4317655) bm!298861))

(assert (= (and bm!298861 c!734079) b!4317654))

(assert (= (and bm!298861 (not c!734079)) b!4317651))

(assert (= (and d!1269537 res!1769571) b!4317650))

(assert (= (and d!1269537 (not res!1769570)) b!4317647))

(assert (= (and b!4317647 res!1769569) b!4317648))

(assert (=> b!4317650 m!4911091))

(declare-fun m!4911325 () Bool)

(assert (=> b!4317650 m!4911325))

(assert (=> b!4317650 m!4911325))

(declare-fun m!4911327 () Bool)

(assert (=> b!4317650 m!4911327))

(declare-fun m!4911329 () Bool)

(assert (=> bm!298861 m!4911329))

(declare-fun m!4911331 () Bool)

(assert (=> d!1269537 m!4911331))

(assert (=> b!4317651 m!4911091))

(assert (=> b!4317651 m!4911325))

(assert (=> b!4317648 m!4911091))

(assert (=> b!4317648 m!4911325))

(assert (=> b!4317648 m!4911325))

(assert (=> b!4317648 m!4911327))

(declare-fun m!4911333 () Bool)

(assert (=> b!4317649 m!4911333))

(declare-fun m!4911335 () Bool)

(assert (=> b!4317649 m!4911335))

(assert (=> b!4317649 m!4911335))

(declare-fun m!4911337 () Bool)

(assert (=> b!4317649 m!4911337))

(declare-fun m!4911339 () Bool)

(assert (=> b!4317649 m!4911339))

(assert (=> b!4317647 m!4911335))

(assert (=> b!4317647 m!4911335))

(assert (=> b!4317647 m!4911337))

(assert (=> b!4317653 m!4911331))

(declare-fun m!4911341 () Bool)

(assert (=> b!4317653 m!4911341))

(declare-fun m!4911343 () Bool)

(assert (=> b!4317654 m!4911343))

(assert (=> d!1269483 d!1269537))

(assert (=> d!1269483 d!1269491))

(declare-fun d!1269539 () Bool)

(declare-fun lt!1536693 () Bool)

(assert (=> d!1269539 (= lt!1536693 (contains!10360 (map!10355 (v!42645 (underlying!9696 thiss!42308))) lt!1536481))))

(assert (=> d!1269539 (= lt!1536693 (contains!10361 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))) lt!1536481))))

(assert (=> d!1269539 (valid!3738 (v!42645 (underlying!9696 thiss!42308)))))

(assert (=> d!1269539 (= (contains!10359 (v!42645 (underlying!9696 thiss!42308)) lt!1536481) lt!1536693)))

(declare-fun bs!605957 () Bool)

(assert (= bs!605957 d!1269539))

(assert (=> bs!605957 m!4911023))

(assert (=> bs!605957 m!4911023))

(declare-fun m!4911345 () Bool)

(assert (=> bs!605957 m!4911345))

(declare-fun m!4911347 () Bool)

(assert (=> bs!605957 m!4911347))

(assert (=> bs!605957 m!4911057))

(assert (=> d!1269483 d!1269539))

(assert (=> d!1269483 d!1269487))

(assert (=> d!1269483 d!1269519))

(assert (=> d!1269483 d!1269485))

(declare-fun bs!605958 () Bool)

(declare-fun d!1269541 () Bool)

(assert (= bs!605958 (and d!1269541 d!1269497)))

(declare-fun lambda!133565 () Int)

(assert (=> bs!605958 (not (= lambda!133565 lambda!133558))))

(declare-fun bs!605959 () Bool)

(assert (= bs!605959 (and d!1269541 d!1269519)))

(assert (=> bs!605959 (not (= lambda!133565 lambda!133562))))

(declare-fun bs!605960 () Bool)

(assert (= bs!605960 (and d!1269541 b!4317418)))

(assert (=> bs!605960 (not (= lambda!133565 lambda!133555))))

(declare-fun bs!605961 () Bool)

(assert (= bs!605961 (and d!1269541 d!1269481)))

(assert (=> bs!605961 (= lambda!133565 lambda!133549)))

(declare-fun bs!605962 () Bool)

(assert (= bs!605962 (and d!1269541 b!4317410)))

(assert (=> bs!605962 (not (= lambda!133565 lambda!133552))))

(declare-fun bs!605963 () Bool)

(assert (= bs!605963 (and d!1269541 d!1269499)))

(assert (=> bs!605963 (not (= lambda!133565 lambda!133561))))

(assert (=> d!1269541 true))

(assert (=> d!1269541 (= (allKeysSameHashInMap!377 (map!10355 (v!42645 (underlying!9696 thiss!42308))) (hashF!6858 thiss!42308)) (forall!8791 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lambda!133565))))

(declare-fun bs!605964 () Bool)

(assert (= bs!605964 d!1269541))

(declare-fun m!4911349 () Bool)

(assert (=> bs!605964 m!4911349))

(assert (=> b!4317419 d!1269541))

(assert (=> b!4317419 d!1269485))

(assert (=> d!1269491 d!1269503))

(declare-fun b!4317659 () Bool)

(declare-fun e!2686019 () Option!10284)

(assert (=> b!4317659 (= e!2686019 None!10283)))

(declare-fun d!1269543 () Bool)

(declare-fun c!734081 () Bool)

(assert (=> d!1269543 (= c!734081 (and ((_ is Cons!48337) lt!1536491) (= (_1!26811 (h!53790 lt!1536491)) lt!1536481)))))

(declare-fun e!2686018 () Option!10284)

(assert (=> d!1269543 (= (getValueByKey!287 lt!1536491 lt!1536481) e!2686018)))

(declare-fun b!4317656 () Bool)

(assert (=> b!4317656 (= e!2686018 (Some!10283 (_2!26811 (h!53790 lt!1536491))))))

(declare-fun b!4317657 () Bool)

(assert (=> b!4317657 (= e!2686018 e!2686019)))

(declare-fun c!734082 () Bool)

(assert (=> b!4317657 (= c!734082 (and ((_ is Cons!48337) lt!1536491) (not (= (_1!26811 (h!53790 lt!1536491)) lt!1536481))))))

(declare-fun b!4317658 () Bool)

(assert (=> b!4317658 (= e!2686019 (getValueByKey!287 (t!355318 lt!1536491) lt!1536481))))

(assert (= (and d!1269543 c!734081) b!4317656))

(assert (= (and d!1269543 (not c!734081)) b!4317657))

(assert (= (and b!4317657 c!734082) b!4317658))

(assert (= (and b!4317657 (not c!734082)) b!4317659))

(declare-fun m!4911351 () Bool)

(assert (=> b!4317658 m!4911351))

(assert (=> b!4317407 d!1269543))

(declare-fun d!1269545 () Bool)

(assert (=> d!1269545 (isDefined!7585 (getValueByKey!287 lt!1536491 lt!1536481))))

(declare-fun lt!1536696 () Unit!67578)

(declare-fun choose!26347 (List!48461 (_ BitVec 64)) Unit!67578)

(assert (=> d!1269545 (= lt!1536696 (choose!26347 lt!1536491 lt!1536481))))

(declare-fun e!2686022 () Bool)

(assert (=> d!1269545 e!2686022))

(declare-fun res!1769574 () Bool)

(assert (=> d!1269545 (=> (not res!1769574) (not e!2686022))))

(declare-fun isStrictlySorted!18 (List!48461) Bool)

(assert (=> d!1269545 (= res!1769574 (isStrictlySorted!18 lt!1536491))))

(assert (=> d!1269545 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!206 lt!1536491 lt!1536481) lt!1536696)))

(declare-fun b!4317662 () Bool)

(assert (=> b!4317662 (= e!2686022 (containsKey!384 lt!1536491 lt!1536481))))

(assert (= (and d!1269545 res!1769574) b!4317662))

(assert (=> d!1269545 m!4911103))

(assert (=> d!1269545 m!4911103))

(assert (=> d!1269545 m!4911105))

(declare-fun m!4911353 () Bool)

(assert (=> d!1269545 m!4911353))

(declare-fun m!4911355 () Bool)

(assert (=> d!1269545 m!4911355))

(declare-fun m!4911357 () Bool)

(assert (=> b!4317662 m!4911357))

(assert (=> b!4317407 d!1269545))

(declare-fun d!1269547 () Bool)

(declare-fun isEmpty!28099 (Option!10284) Bool)

(assert (=> d!1269547 (= (isDefined!7585 (getValueByKey!287 lt!1536491 lt!1536481)) (not (isEmpty!28099 (getValueByKey!287 lt!1536491 lt!1536481))))))

(declare-fun bs!605965 () Bool)

(assert (= bs!605965 d!1269547))

(assert (=> bs!605965 m!4911103))

(declare-fun m!4911359 () Bool)

(assert (=> bs!605965 m!4911359))

(assert (=> b!4317407 d!1269547))

(declare-fun d!1269549 () Bool)

(assert (=> d!1269549 (containsKey!384 lt!1536495 lt!1536481)))

(declare-fun lt!1536699 () Unit!67578)

(declare-fun choose!26348 (List!48461 (_ BitVec 64)) Unit!67578)

(assert (=> d!1269549 (= lt!1536699 (choose!26348 lt!1536495 lt!1536481))))

(declare-fun e!2686025 () Bool)

(assert (=> d!1269549 e!2686025))

(declare-fun res!1769577 () Bool)

(assert (=> d!1269549 (=> (not res!1769577) (not e!2686025))))

(assert (=> d!1269549 (= res!1769577 (isStrictlySorted!18 lt!1536495))))

(assert (=> d!1269549 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!156 lt!1536495 lt!1536481) lt!1536699)))

(declare-fun b!4317665 () Bool)

(assert (=> b!4317665 (= e!2686025 (isDefined!7585 (getValueByKey!287 lt!1536495 lt!1536481)))))

(assert (= (and d!1269549 res!1769577) b!4317665))

(assert (=> d!1269549 m!4911115))

(declare-fun m!4911361 () Bool)

(assert (=> d!1269549 m!4911361))

(declare-fun m!4911363 () Bool)

(assert (=> d!1269549 m!4911363))

(declare-fun m!4911365 () Bool)

(assert (=> b!4317665 m!4911365))

(assert (=> b!4317665 m!4911365))

(declare-fun m!4911367 () Bool)

(assert (=> b!4317665 m!4911367))

(assert (=> b!4317407 d!1269549))

(declare-fun d!1269551 () Bool)

(assert (=> d!1269551 (contains!10362 lt!1536489 (tuple2!47057 lt!1536481 lt!1536492))))

(declare-fun lt!1536702 () Unit!67578)

(declare-fun choose!26349 (List!48461 (_ BitVec 64) List!48460) Unit!67578)

(assert (=> d!1269551 (= lt!1536702 (choose!26349 lt!1536489 lt!1536481 lt!1536492))))

(declare-fun e!2686028 () Bool)

(assert (=> d!1269551 e!2686028))

(declare-fun res!1769580 () Bool)

(assert (=> d!1269551 (=> (not res!1769580) (not e!2686028))))

(assert (=> d!1269551 (= res!1769580 (isStrictlySorted!18 lt!1536489))))

(assert (=> d!1269551 (= (lemmaGetValueByKeyImpliesContainsTuple!167 lt!1536489 lt!1536481 lt!1536492) lt!1536702)))

(declare-fun b!4317668 () Bool)

(assert (=> b!4317668 (= e!2686028 (= (getValueByKey!287 lt!1536489 lt!1536481) (Some!10283 lt!1536492)))))

(assert (= (and d!1269551 res!1769580) b!4317668))

(assert (=> d!1269551 m!4911107))

(declare-fun m!4911369 () Bool)

(assert (=> d!1269551 m!4911369))

(declare-fun m!4911371 () Bool)

(assert (=> d!1269551 m!4911371))

(declare-fun m!4911373 () Bool)

(assert (=> b!4317668 m!4911373))

(assert (=> b!4317407 d!1269551))

(declare-fun d!1269553 () Bool)

(declare-fun res!1769585 () Bool)

(declare-fun e!2686033 () Bool)

(assert (=> d!1269553 (=> res!1769585 e!2686033)))

(assert (=> d!1269553 (= res!1769585 (and ((_ is Cons!48337) lt!1536495) (= (_1!26811 (h!53790 lt!1536495)) lt!1536481)))))

(assert (=> d!1269553 (= (containsKey!384 lt!1536495 lt!1536481) e!2686033)))

(declare-fun b!4317673 () Bool)

(declare-fun e!2686034 () Bool)

(assert (=> b!4317673 (= e!2686033 e!2686034)))

(declare-fun res!1769586 () Bool)

(assert (=> b!4317673 (=> (not res!1769586) (not e!2686034))))

(assert (=> b!4317673 (= res!1769586 (and (or (not ((_ is Cons!48337) lt!1536495)) (bvsle (_1!26811 (h!53790 lt!1536495)) lt!1536481)) ((_ is Cons!48337) lt!1536495) (bvslt (_1!26811 (h!53790 lt!1536495)) lt!1536481)))))

(declare-fun b!4317674 () Bool)

(assert (=> b!4317674 (= e!2686034 (containsKey!384 (t!355318 lt!1536495) lt!1536481))))

(assert (= (and d!1269553 (not res!1769585)) b!4317673))

(assert (= (and b!4317673 res!1769586) b!4317674))

(declare-fun m!4911375 () Bool)

(assert (=> b!4317674 m!4911375))

(assert (=> b!4317407 d!1269553))

(assert (=> b!4317407 d!1269513))

(declare-fun d!1269555 () Bool)

(declare-fun lt!1536703 () Bool)

(assert (=> d!1269555 (= lt!1536703 (select (content!7565 lt!1536489) (tuple2!47057 lt!1536481 lt!1536492)))))

(declare-fun e!2686035 () Bool)

(assert (=> d!1269555 (= lt!1536703 e!2686035)))

(declare-fun res!1769587 () Bool)

(assert (=> d!1269555 (=> (not res!1769587) (not e!2686035))))

(assert (=> d!1269555 (= res!1769587 ((_ is Cons!48337) lt!1536489))))

(assert (=> d!1269555 (= (contains!10362 lt!1536489 (tuple2!47057 lt!1536481 lt!1536492)) lt!1536703)))

(declare-fun b!4317675 () Bool)

(declare-fun e!2686036 () Bool)

(assert (=> b!4317675 (= e!2686035 e!2686036)))

(declare-fun res!1769588 () Bool)

(assert (=> b!4317675 (=> res!1769588 e!2686036)))

(assert (=> b!4317675 (= res!1769588 (= (h!53790 lt!1536489) (tuple2!47057 lt!1536481 lt!1536492)))))

(declare-fun b!4317676 () Bool)

(assert (=> b!4317676 (= e!2686036 (contains!10362 (t!355318 lt!1536489) (tuple2!47057 lt!1536481 lt!1536492)))))

(assert (= (and d!1269555 res!1769587) b!4317675))

(assert (= (and b!4317675 (not res!1769588)) b!4317676))

(declare-fun m!4911377 () Bool)

(assert (=> d!1269555 m!4911377))

(declare-fun m!4911379 () Bool)

(assert (=> d!1269555 m!4911379))

(declare-fun m!4911381 () Bool)

(assert (=> b!4317676 m!4911381))

(assert (=> b!4317407 d!1269555))

(assert (=> b!4317407 d!1269485))

(declare-fun d!1269557 () Bool)

(declare-fun e!2686038 () Bool)

(assert (=> d!1269557 e!2686038))

(declare-fun res!1769589 () Bool)

(assert (=> d!1269557 (=> res!1769589 e!2686038)))

(declare-fun lt!1536705 () Bool)

(assert (=> d!1269557 (= res!1769589 (not lt!1536705))))

(declare-fun lt!1536707 () Bool)

(assert (=> d!1269557 (= lt!1536705 lt!1536707)))

(declare-fun lt!1536706 () Unit!67578)

(declare-fun e!2686037 () Unit!67578)

(assert (=> d!1269557 (= lt!1536706 e!2686037)))

(declare-fun c!734083 () Bool)

(assert (=> d!1269557 (= c!734083 lt!1536707)))

(assert (=> d!1269557 (= lt!1536707 (containsKey!384 (toList!2520 call!298810) lt!1536415))))

(assert (=> d!1269557 (= (contains!10360 call!298810 lt!1536415) lt!1536705)))

(declare-fun b!4317677 () Bool)

(declare-fun lt!1536704 () Unit!67578)

(assert (=> b!4317677 (= e!2686037 lt!1536704)))

(assert (=> b!4317677 (= lt!1536704 (lemmaContainsKeyImpliesGetValueByKeyDefined!206 (toList!2520 call!298810) lt!1536415))))

(assert (=> b!4317677 (isDefined!7585 (getValueByKey!287 (toList!2520 call!298810) lt!1536415))))

(declare-fun b!4317678 () Bool)

(declare-fun Unit!67595 () Unit!67578)

(assert (=> b!4317678 (= e!2686037 Unit!67595)))

(declare-fun b!4317679 () Bool)

(assert (=> b!4317679 (= e!2686038 (isDefined!7585 (getValueByKey!287 (toList!2520 call!298810) lt!1536415)))))

(assert (= (and d!1269557 c!734083) b!4317677))

(assert (= (and d!1269557 (not c!734083)) b!4317678))

(assert (= (and d!1269557 (not res!1769589)) b!4317679))

(declare-fun m!4911383 () Bool)

(assert (=> d!1269557 m!4911383))

(declare-fun m!4911385 () Bool)

(assert (=> b!4317677 m!4911385))

(declare-fun m!4911387 () Bool)

(assert (=> b!4317677 m!4911387))

(assert (=> b!4317677 m!4911387))

(declare-fun m!4911389 () Bool)

(assert (=> b!4317677 m!4911389))

(assert (=> b!4317679 m!4911387))

(assert (=> b!4317679 m!4911387))

(assert (=> b!4317679 m!4911389))

(assert (=> b!4317361 d!1269557))

(declare-fun bs!605966 () Bool)

(declare-fun d!1269559 () Bool)

(assert (= bs!605966 (and d!1269559 d!1269497)))

(declare-fun lambda!133568 () Int)

(assert (=> bs!605966 (= lambda!133568 lambda!133558)))

(declare-fun bs!605967 () Bool)

(assert (= bs!605967 (and d!1269559 d!1269519)))

(assert (=> bs!605967 (= lambda!133568 lambda!133562)))

(declare-fun bs!605968 () Bool)

(assert (= bs!605968 (and d!1269559 b!4317418)))

(assert (=> bs!605968 (= lambda!133568 lambda!133555)))

(declare-fun bs!605969 () Bool)

(assert (= bs!605969 (and d!1269559 d!1269481)))

(assert (=> bs!605969 (not (= lambda!133568 lambda!133549))))

(declare-fun bs!605970 () Bool)

(assert (= bs!605970 (and d!1269559 b!4317410)))

(assert (=> bs!605970 (= lambda!133568 lambda!133552)))

(declare-fun bs!605971 () Bool)

(assert (= bs!605971 (and d!1269559 d!1269541)))

(assert (=> bs!605971 (not (= lambda!133568 lambda!133565))))

(declare-fun bs!605972 () Bool)

(assert (= bs!605972 (and d!1269559 d!1269499)))

(assert (=> bs!605972 (= lambda!133568 lambda!133561)))

(declare-fun e!2686041 () Bool)

(assert (=> d!1269559 e!2686041))

(declare-fun res!1769592 () Bool)

(assert (=> d!1269559 (=> (not res!1769592) (not e!2686041))))

(assert (=> d!1269559 (= res!1769592 (contains!10360 lt!1536479 (hash!1132 (hashF!6858 thiss!42308) key!2048)))))

(declare-fun lt!1536710 () Unit!67578)

(declare-fun choose!26350 (ListLongMap!1135 K!9579 Hashable!4649) Unit!67578)

(assert (=> d!1269559 (= lt!1536710 (choose!26350 lt!1536479 key!2048 (hashF!6858 thiss!42308)))))

(assert (=> d!1269559 (forall!8791 (toList!2520 lt!1536479) lambda!133568)))

(assert (=> d!1269559 (= (lemmaInGenericMapThenInLongMap!155 lt!1536479 key!2048 (hashF!6858 thiss!42308)) lt!1536710)))

(declare-fun b!4317682 () Bool)

(assert (=> b!4317682 (= e!2686041 (isDefined!7584 (getPair!155 (apply!11110 lt!1536479 (hash!1132 (hashF!6858 thiss!42308) key!2048)) key!2048)))))

(assert (= (and d!1269559 res!1769592) b!4317682))

(assert (=> d!1269559 m!4911049))

(assert (=> d!1269559 m!4911049))

(declare-fun m!4911391 () Bool)

(assert (=> d!1269559 m!4911391))

(declare-fun m!4911393 () Bool)

(assert (=> d!1269559 m!4911393))

(declare-fun m!4911395 () Bool)

(assert (=> d!1269559 m!4911395))

(assert (=> b!4317682 m!4911049))

(assert (=> b!4317682 m!4911049))

(declare-fun m!4911397 () Bool)

(assert (=> b!4317682 m!4911397))

(assert (=> b!4317682 m!4911397))

(declare-fun m!4911399 () Bool)

(assert (=> b!4317682 m!4911399))

(assert (=> b!4317682 m!4911399))

(declare-fun m!4911401 () Bool)

(assert (=> b!4317682 m!4911401))

(assert (=> b!4317408 d!1269559))

(declare-fun d!1269561 () Bool)

(assert (=> d!1269561 (= (valid!3738 (_2!26812 lt!1536428)) (valid!3739 (v!42644 (underlying!9695 (_2!26812 lt!1536428)))))))

(declare-fun bs!605973 () Bool)

(assert (= bs!605973 d!1269561))

(declare-fun m!4911403 () Bool)

(assert (=> bs!605973 m!4911403))

(assert (=> b!4317360 d!1269561))

(declare-fun d!1269563 () Bool)

(declare-fun choose!26351 (Hashable!4649 K!9579) (_ BitVec 64))

(assert (=> d!1269563 (= (hash!1134 (hashF!6858 thiss!42308) key!2048) (choose!26351 (hashF!6858 thiss!42308) key!2048))))

(declare-fun bs!605974 () Bool)

(assert (= bs!605974 d!1269563))

(declare-fun m!4911405 () Bool)

(assert (=> bs!605974 m!4911405))

(assert (=> d!1269475 d!1269563))

(declare-fun d!1269565 () Bool)

(declare-fun res!1769597 () Bool)

(declare-fun e!2686046 () Bool)

(assert (=> d!1269565 (=> res!1769597 e!2686046)))

(assert (=> d!1269565 (= res!1769597 ((_ is Nil!48336) lt!1536413))))

(assert (=> d!1269565 (= (forall!8790 lt!1536413 lambda!133546) e!2686046)))

(declare-fun b!4317687 () Bool)

(declare-fun e!2686047 () Bool)

(assert (=> b!4317687 (= e!2686046 e!2686047)))

(declare-fun res!1769598 () Bool)

(assert (=> b!4317687 (=> (not res!1769598) (not e!2686047))))

(declare-fun dynLambda!20491 (Int tuple2!47054) Bool)

(assert (=> b!4317687 (= res!1769598 (dynLambda!20491 lambda!133546 (h!53789 lt!1536413)))))

(declare-fun b!4317688 () Bool)

(assert (=> b!4317688 (= e!2686047 (forall!8790 (t!355317 lt!1536413) lambda!133546))))

(assert (= (and d!1269565 (not res!1769597)) b!4317687))

(assert (= (and b!4317687 res!1769598) b!4317688))

(declare-fun b_lambda!126973 () Bool)

(assert (=> (not b_lambda!126973) (not b!4317687)))

(declare-fun m!4911407 () Bool)

(assert (=> b!4317687 m!4911407))

(declare-fun m!4911409 () Bool)

(assert (=> b!4317688 m!4911409))

(assert (=> d!1269479 d!1269565))

(declare-fun d!1269567 () Bool)

(assert (=> d!1269567 (= (isDefined!7584 (getPair!155 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481) key!2048)) (not (isEmpty!28098 (getPair!155 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481) key!2048))))))

(declare-fun bs!605975 () Bool)

(assert (= bs!605975 d!1269567))

(assert (=> bs!605975 m!4911099))

(declare-fun m!4911411 () Bool)

(assert (=> bs!605975 m!4911411))

(assert (=> b!4317406 d!1269567))

(declare-fun e!2686059 () Option!10283)

(declare-fun b!4317705 () Bool)

(assert (=> b!4317705 (= e!2686059 (getPair!155 (t!355317 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481)) key!2048))))

(declare-fun b!4317706 () Bool)

(declare-fun e!2686061 () Option!10283)

(assert (=> b!4317706 (= e!2686061 e!2686059)))

(declare-fun c!734089 () Bool)

(assert (=> b!4317706 (= c!734089 ((_ is Cons!48336) (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481)))))

(declare-fun b!4317707 () Bool)

(declare-fun e!2686062 () Bool)

(declare-fun e!2686058 () Bool)

(assert (=> b!4317707 (= e!2686062 e!2686058)))

(declare-fun res!1769609 () Bool)

(assert (=> b!4317707 (=> (not res!1769609) (not e!2686058))))

(declare-fun lt!1536713 () Option!10283)

(assert (=> b!4317707 (= res!1769609 (isDefined!7584 lt!1536713))))

(declare-fun b!4317708 () Bool)

(assert (=> b!4317708 (= e!2686061 (Some!10282 (h!53789 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481))))))

(declare-fun e!2686060 () Bool)

(declare-fun b!4317709 () Bool)

(assert (=> b!4317709 (= e!2686060 (not (containsKey!383 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481) key!2048)))))

(declare-fun b!4317710 () Bool)

(assert (=> b!4317710 (= e!2686059 None!10282)))

(declare-fun d!1269569 () Bool)

(assert (=> d!1269569 e!2686062))

(declare-fun res!1769610 () Bool)

(assert (=> d!1269569 (=> res!1769610 e!2686062)))

(assert (=> d!1269569 (= res!1769610 e!2686060)))

(declare-fun res!1769608 () Bool)

(assert (=> d!1269569 (=> (not res!1769608) (not e!2686060))))

(assert (=> d!1269569 (= res!1769608 (isEmpty!28098 lt!1536713))))

(assert (=> d!1269569 (= lt!1536713 e!2686061)))

(declare-fun c!734088 () Bool)

(assert (=> d!1269569 (= c!734088 (and ((_ is Cons!48336) (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481)) (= (_1!26810 (h!53789 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481))) key!2048)))))

(assert (=> d!1269569 (noDuplicateKeys!255 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481))))

(assert (=> d!1269569 (= (getPair!155 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481) key!2048) lt!1536713)))

(declare-fun b!4317711 () Bool)

(declare-fun contains!10365 (List!48460 tuple2!47054) Bool)

(declare-fun get!15656 (Option!10283) tuple2!47054)

(assert (=> b!4317711 (= e!2686058 (contains!10365 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481) (get!15656 lt!1536713)))))

(declare-fun b!4317712 () Bool)

(declare-fun res!1769607 () Bool)

(assert (=> b!4317712 (=> (not res!1769607) (not e!2686058))))

(assert (=> b!4317712 (= res!1769607 (= (_1!26810 (get!15656 lt!1536713)) key!2048))))

(assert (= (and d!1269569 c!734088) b!4317708))

(assert (= (and d!1269569 (not c!734088)) b!4317706))

(assert (= (and b!4317706 c!734089) b!4317705))

(assert (= (and b!4317706 (not c!734089)) b!4317710))

(assert (= (and d!1269569 res!1769608) b!4317709))

(assert (= (and d!1269569 (not res!1769610)) b!4317707))

(assert (= (and b!4317707 res!1769609) b!4317712))

(assert (= (and b!4317712 res!1769607) b!4317711))

(declare-fun m!4911413 () Bool)

(assert (=> d!1269569 m!4911413))

(assert (=> d!1269569 m!4911083))

(declare-fun m!4911415 () Bool)

(assert (=> d!1269569 m!4911415))

(declare-fun m!4911417 () Bool)

(assert (=> b!4317705 m!4911417))

(declare-fun m!4911419 () Bool)

(assert (=> b!4317707 m!4911419))

(declare-fun m!4911421 () Bool)

(assert (=> b!4317711 m!4911421))

(assert (=> b!4317711 m!4911083))

(assert (=> b!4317711 m!4911421))

(declare-fun m!4911423 () Bool)

(assert (=> b!4317711 m!4911423))

(assert (=> b!4317709 m!4911083))

(declare-fun m!4911425 () Bool)

(assert (=> b!4317709 m!4911425))

(assert (=> b!4317712 m!4911421))

(assert (=> b!4317406 d!1269569))

(assert (=> b!4317406 d!1269513))

(declare-fun d!1269571 () Bool)

(declare-fun res!1769615 () Bool)

(declare-fun e!2686067 () Bool)

(assert (=> d!1269571 (=> res!1769615 e!2686067)))

(assert (=> d!1269571 (= res!1769615 ((_ is Nil!48337) (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))))))

(assert (=> d!1269571 (= (forall!8791 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))) lambda!133555) e!2686067)))

(declare-fun b!4317717 () Bool)

(declare-fun e!2686068 () Bool)

(assert (=> b!4317717 (= e!2686067 e!2686068)))

(declare-fun res!1769616 () Bool)

(assert (=> b!4317717 (=> (not res!1769616) (not e!2686068))))

(assert (=> b!4317717 (= res!1769616 (dynLambda!20490 lambda!133555 (h!53790 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-fun b!4317718 () Bool)

(assert (=> b!4317718 (= e!2686068 (forall!8791 (t!355318 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))) lambda!133555))))

(assert (= (and d!1269571 (not res!1769615)) b!4317717))

(assert (= (and b!4317717 res!1769616) b!4317718))

(declare-fun b_lambda!126975 () Bool)

(assert (=> (not b_lambda!126975) (not b!4317717)))

(declare-fun m!4911427 () Bool)

(assert (=> b!4317717 m!4911427))

(declare-fun m!4911429 () Bool)

(assert (=> b!4317718 m!4911429))

(assert (=> b!4317418 d!1269571))

(assert (=> b!4317418 d!1269485))

(declare-fun b!4317719 () Bool)

(declare-fun e!2686070 () Option!10283)

(assert (=> b!4317719 (= e!2686070 (getPair!155 (t!355317 call!298825) key!2048))))

(declare-fun b!4317720 () Bool)

(declare-fun e!2686072 () Option!10283)

(assert (=> b!4317720 (= e!2686072 e!2686070)))

(declare-fun c!734091 () Bool)

(assert (=> b!4317720 (= c!734091 ((_ is Cons!48336) call!298825))))

(declare-fun b!4317721 () Bool)

(declare-fun e!2686073 () Bool)

(declare-fun e!2686069 () Bool)

(assert (=> b!4317721 (= e!2686073 e!2686069)))

(declare-fun res!1769619 () Bool)

(assert (=> b!4317721 (=> (not res!1769619) (not e!2686069))))

(declare-fun lt!1536714 () Option!10283)

(assert (=> b!4317721 (= res!1769619 (isDefined!7584 lt!1536714))))

(declare-fun b!4317722 () Bool)

(assert (=> b!4317722 (= e!2686072 (Some!10282 (h!53789 call!298825)))))

(declare-fun b!4317723 () Bool)

(declare-fun e!2686071 () Bool)

(assert (=> b!4317723 (= e!2686071 (not (containsKey!383 call!298825 key!2048)))))

(declare-fun b!4317724 () Bool)

(assert (=> b!4317724 (= e!2686070 None!10282)))

(declare-fun d!1269573 () Bool)

(assert (=> d!1269573 e!2686073))

(declare-fun res!1769620 () Bool)

(assert (=> d!1269573 (=> res!1769620 e!2686073)))

(assert (=> d!1269573 (= res!1769620 e!2686071)))

(declare-fun res!1769618 () Bool)

(assert (=> d!1269573 (=> (not res!1769618) (not e!2686071))))

(assert (=> d!1269573 (= res!1769618 (isEmpty!28098 lt!1536714))))

(assert (=> d!1269573 (= lt!1536714 e!2686072)))

(declare-fun c!734090 () Bool)

(assert (=> d!1269573 (= c!734090 (and ((_ is Cons!48336) call!298825) (= (_1!26810 (h!53789 call!298825)) key!2048)))))

(assert (=> d!1269573 (noDuplicateKeys!255 call!298825)))

(assert (=> d!1269573 (= (getPair!155 call!298825 key!2048) lt!1536714)))

(declare-fun b!4317725 () Bool)

(assert (=> b!4317725 (= e!2686069 (contains!10365 call!298825 (get!15656 lt!1536714)))))

(declare-fun b!4317726 () Bool)

(declare-fun res!1769617 () Bool)

(assert (=> b!4317726 (=> (not res!1769617) (not e!2686069))))

(assert (=> b!4317726 (= res!1769617 (= (_1!26810 (get!15656 lt!1536714)) key!2048))))

(assert (= (and d!1269573 c!734090) b!4317722))

(assert (= (and d!1269573 (not c!734090)) b!4317720))

(assert (= (and b!4317720 c!734091) b!4317719))

(assert (= (and b!4317720 (not c!734091)) b!4317724))

(assert (= (and d!1269573 res!1769618) b!4317723))

(assert (= (and d!1269573 (not res!1769620)) b!4317721))

(assert (= (and b!4317721 res!1769619) b!4317726))

(assert (= (and b!4317726 res!1769617) b!4317725))

(declare-fun m!4911431 () Bool)

(assert (=> d!1269573 m!4911431))

(declare-fun m!4911433 () Bool)

(assert (=> d!1269573 m!4911433))

(declare-fun m!4911435 () Bool)

(assert (=> b!4317719 m!4911435))

(declare-fun m!4911437 () Bool)

(assert (=> b!4317721 m!4911437))

(declare-fun m!4911439 () Bool)

(assert (=> b!4317725 m!4911439))

(assert (=> b!4317725 m!4911439))

(declare-fun m!4911441 () Bool)

(assert (=> b!4317725 m!4911441))

(declare-fun m!4911443 () Bool)

(assert (=> b!4317723 m!4911443))

(assert (=> b!4317726 m!4911439))

(assert (=> bm!298820 d!1269573))

(declare-fun d!1269575 () Bool)

(assert (=> d!1269575 (= (map!10357 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (getCurrentListMap!21 (_keys!5033 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (_values!5014 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (mask!13328 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (extraKeys!4982 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (zeroValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) (minValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))))

(declare-fun bs!605976 () Bool)

(assert (= bs!605976 d!1269575))

(assert (=> bs!605976 m!4911249))

(assert (=> d!1269485 d!1269575))

(assert (=> d!1269481 d!1269479))

(declare-fun d!1269577 () Bool)

(assert (=> d!1269577 (allKeysSameHash!228 lt!1536413 lt!1536415 (hashF!6858 thiss!42308))))

(assert (=> d!1269577 true))

(declare-fun _$19!977 () Unit!67578)

(assert (=> d!1269577 (= (choose!26344 (toList!2520 lt!1536418) lt!1536415 lt!1536413 (hashF!6858 thiss!42308)) _$19!977)))

(declare-fun bs!605977 () Bool)

(assert (= bs!605977 d!1269577))

(assert (=> bs!605977 m!4911041))

(assert (=> d!1269481 d!1269577))

(declare-fun d!1269579 () Bool)

(declare-fun res!1769621 () Bool)

(declare-fun e!2686074 () Bool)

(assert (=> d!1269579 (=> res!1769621 e!2686074)))

(assert (=> d!1269579 (= res!1769621 ((_ is Nil!48337) (toList!2520 lt!1536418)))))

(assert (=> d!1269579 (= (forall!8791 (toList!2520 lt!1536418) lambda!133549) e!2686074)))

(declare-fun b!4317727 () Bool)

(declare-fun e!2686075 () Bool)

(assert (=> b!4317727 (= e!2686074 e!2686075)))

(declare-fun res!1769622 () Bool)

(assert (=> b!4317727 (=> (not res!1769622) (not e!2686075))))

(assert (=> b!4317727 (= res!1769622 (dynLambda!20490 lambda!133549 (h!53790 (toList!2520 lt!1536418))))))

(declare-fun b!4317728 () Bool)

(assert (=> b!4317728 (= e!2686075 (forall!8791 (t!355318 (toList!2520 lt!1536418)) lambda!133549))))

(assert (= (and d!1269579 (not res!1769621)) b!4317727))

(assert (= (and b!4317727 res!1769622) b!4317728))

(declare-fun b_lambda!126977 () Bool)

(assert (=> (not b_lambda!126977) (not b!4317727)))

(declare-fun m!4911445 () Bool)

(assert (=> b!4317727 m!4911445))

(declare-fun m!4911447 () Bool)

(assert (=> b!4317728 m!4911447))

(assert (=> d!1269481 d!1269579))

(declare-fun d!1269581 () Bool)

(declare-fun res!1769623 () Bool)

(declare-fun e!2686076 () Bool)

(assert (=> d!1269581 (=> res!1769623 e!2686076)))

(assert (=> d!1269581 (= res!1769623 (not ((_ is Cons!48336) (t!355317 lt!1536413))))))

(assert (=> d!1269581 (= (noDuplicateKeys!255 (t!355317 lt!1536413)) e!2686076)))

(declare-fun b!4317729 () Bool)

(declare-fun e!2686077 () Bool)

(assert (=> b!4317729 (= e!2686076 e!2686077)))

(declare-fun res!1769624 () Bool)

(assert (=> b!4317729 (=> (not res!1769624) (not e!2686077))))

(assert (=> b!4317729 (= res!1769624 (not (containsKey!383 (t!355317 (t!355317 lt!1536413)) (_1!26810 (h!53789 (t!355317 lt!1536413))))))))

(declare-fun b!4317730 () Bool)

(assert (=> b!4317730 (= e!2686077 (noDuplicateKeys!255 (t!355317 (t!355317 lt!1536413))))))

(assert (= (and d!1269581 (not res!1769623)) b!4317729))

(assert (= (and b!4317729 res!1769624) b!4317730))

(declare-fun m!4911449 () Bool)

(assert (=> b!4317729 m!4911449))

(declare-fun m!4911451 () Bool)

(assert (=> b!4317730 m!4911451))

(assert (=> b!4317374 d!1269581))

(declare-fun b!4317811 () Bool)

(declare-fun res!1769656 () Bool)

(declare-fun call!298920 () Bool)

(assert (=> b!4317811 (= res!1769656 call!298920)))

(declare-fun e!2686136 () Bool)

(assert (=> b!4317811 (=> (not res!1769656) (not e!2686136))))

(declare-fun b!4317812 () Bool)

(declare-fun e!2686127 () Bool)

(declare-fun e!2686123 () Bool)

(assert (=> b!4317812 (= e!2686127 e!2686123)))

(declare-fun c!734118 () Bool)

(declare-fun lt!1536793 () tuple2!47060)

(assert (=> b!4317812 (= c!734118 (_1!26813 lt!1536793))))

(declare-fun b!4317813 () Bool)

(declare-fun e!2686135 () tuple2!47060)

(declare-fun e!2686137 () tuple2!47060)

(assert (=> b!4317813 (= e!2686135 e!2686137)))

(declare-fun c!734126 () Bool)

(declare-fun lt!1536795 () SeekEntryResult!18)

(assert (=> b!4317813 (= c!734126 ((_ is MissingZero!18) lt!1536795))))

(declare-fun bm!298910 () Bool)

(declare-fun call!298936 () ListLongMap!1135)

(assert (=> bm!298910 (= call!298936 (map!10357 (_2!26813 lt!1536793)))))

(declare-fun bm!298911 () Bool)

(declare-fun call!298935 () SeekEntryResult!18)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17138 (_ BitVec 32)) SeekEntryResult!18)

(assert (=> bm!298911 (= call!298935 (seekEntryOrOpen!0 lt!1536415 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (mask!13328 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))))))

(declare-fun b!4317814 () Bool)

(declare-fun e!2686125 () Bool)

(declare-fun e!2686132 () Bool)

(assert (=> b!4317814 (= e!2686125 e!2686132)))

(declare-fun res!1769660 () Bool)

(declare-fun call!298928 () Bool)

(assert (=> b!4317814 (= res!1769660 call!298928)))

(assert (=> b!4317814 (=> (not res!1769660) (not e!2686132))))

(declare-fun b!4317815 () Bool)

(declare-fun lt!1536780 () SeekEntryResult!18)

(assert (=> b!4317815 (= e!2686125 ((_ is Undefined!18) lt!1536780))))

(declare-fun d!1269583 () Bool)

(assert (=> d!1269583 e!2686127))

(declare-fun res!1769666 () Bool)

(assert (=> d!1269583 (=> (not res!1769666) (not e!2686127))))

(assert (=> d!1269583 (= res!1769666 (valid!3739 (_2!26813 lt!1536793)))))

(declare-fun e!2686122 () tuple2!47060)

(assert (=> d!1269583 (= lt!1536793 e!2686122)))

(declare-fun c!734121 () Bool)

(assert (=> d!1269583 (= c!734121 (= lt!1536415 (bvneg lt!1536415)))))

(assert (=> d!1269583 (valid!3739 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))))

(assert (=> d!1269583 (= (update!507 (v!42644 (underlying!9695 (_2!26812 lt!1536430))) lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)) lt!1536793)))

(declare-fun b!4317816 () Bool)

(declare-fun res!1769662 () Bool)

(assert (=> b!4317816 (= res!1769662 (= (select (arr!7651 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))) (index!1453 lt!1536780)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4317816 (=> (not res!1769662) (not e!2686132))))

(declare-fun bm!298912 () Bool)

(declare-fun call!298923 () Unit!67578)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!8 (array!17138 array!17140 (_ BitVec 32) (_ BitVec 32) List!48460 List!48460 (_ BitVec 64) Int) Unit!67578)

(assert (=> bm!298912 (= call!298923 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!8 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (_values!5014 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (mask!13328 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (extraKeys!4982 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (zeroValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (minValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) lt!1536415 (defaultEntry!5118 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))))))

(declare-fun b!4317817 () Bool)

(declare-fun lt!1536776 () Unit!67578)

(declare-fun lt!1536788 () Unit!67578)

(assert (=> b!4317817 (= lt!1536776 lt!1536788)))

(declare-fun call!298927 () ListLongMap!1135)

(declare-fun call!298917 () ListLongMap!1135)

(assert (=> b!4317817 (= call!298927 call!298917)))

(declare-fun lt!1536787 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!8 (array!17138 array!17140 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48460 List!48460 List!48460 Int) Unit!67578)

(assert (=> b!4317817 (= lt!1536788 (lemmaChangeLongMinValueKeyThenAddPairToListMap!8 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (_values!5014 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (mask!13328 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (extraKeys!4982 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) lt!1536787 (zeroValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (minValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413) (defaultEntry!5118 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))))))

(assert (=> b!4317817 (= lt!1536787 (bvor (extraKeys!4982 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) #b00000000000000000000000000000010))))

(declare-fun e!2686133 () tuple2!47060)

(assert (=> b!4317817 (= e!2686133 (tuple2!47061 true (LongMapFixedSize!9467 (defaultEntry!5118 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (mask!13328 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (bvor (extraKeys!4982 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) #b00000000000000000000000000000010) (zeroValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413) (_size!9509 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (_values!5014 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (_vacant!4794 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))))))))

(declare-fun b!4317818 () Bool)

(declare-fun e!2686120 () Bool)

(declare-fun lt!1536774 () SeekEntryResult!18)

(assert (=> b!4317818 (= e!2686120 ((_ is Undefined!18) lt!1536774))))

(declare-fun b!4317819 () Bool)

(declare-fun e!2686126 () ListLongMap!1135)

(declare-fun call!298932 () ListLongMap!1135)

(assert (=> b!4317819 (= e!2686126 call!298932)))

(declare-fun bm!298913 () Bool)

(declare-fun call!298937 () ListLongMap!1135)

(assert (=> bm!298913 (= call!298917 call!298937)))

(declare-fun b!4317820 () Bool)

(declare-fun lt!1536781 () Unit!67578)

(declare-fun lt!1536784 () Unit!67578)

(assert (=> b!4317820 (= lt!1536781 lt!1536784)))

(declare-fun call!298938 () Bool)

(assert (=> b!4317820 call!298938))

(declare-fun lt!1536792 () array!17140)

(assert (=> b!4317820 (= lt!1536784 (lemmaValidKeyInArrayIsInListMap!11 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) lt!1536792 (mask!13328 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (extraKeys!4982 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (zeroValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (minValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (index!1451 lt!1536795) (defaultEntry!5118 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))))))

(assert (=> b!4317820 (= lt!1536792 (array!17141 (store (arr!7652 (_values!5014 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))) (index!1451 lt!1536795) (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)) (size!35691 (_values!5014 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))))))))

(declare-fun lt!1536778 () Unit!67578)

(declare-fun lt!1536794 () Unit!67578)

(assert (=> b!4317820 (= lt!1536778 lt!1536794)))

(declare-fun call!298919 () ListLongMap!1135)

(assert (=> b!4317820 (= call!298919 (getCurrentListMap!21 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (array!17141 (store (arr!7652 (_values!5014 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))) (index!1451 lt!1536795) (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)) (size!35691 (_values!5014 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))))) (mask!13328 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (extraKeys!4982 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (zeroValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (minValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) #b00000000000000000000000000000000 (defaultEntry!5118 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))))))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!8 (array!17138 array!17140 (_ BitVec 32) (_ BitVec 32) List!48460 List!48460 (_ BitVec 32) (_ BitVec 64) List!48460 Int) Unit!67578)

(assert (=> b!4317820 (= lt!1536794 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!8 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (_values!5014 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (mask!13328 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (extraKeys!4982 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (zeroValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (minValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (index!1451 lt!1536795) lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413) (defaultEntry!5118 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))))))

(declare-fun lt!1536772 () Unit!67578)

(declare-fun e!2686140 () Unit!67578)

(assert (=> b!4317820 (= lt!1536772 e!2686140)))

(declare-fun c!734122 () Bool)

(assert (=> b!4317820 (= c!734122 (contains!10360 call!298932 lt!1536415))))

(assert (=> b!4317820 (= e!2686137 (tuple2!47061 true (LongMapFixedSize!9467 (defaultEntry!5118 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (mask!13328 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (extraKeys!4982 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (zeroValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (minValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (_size!9509 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (array!17141 (store (arr!7652 (_values!5014 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))) (index!1451 lt!1536795) (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)) (size!35691 (_values!5014 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))))) (_vacant!4794 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))))))))

(declare-fun b!4317821 () Bool)

(declare-fun call!298929 () ListLongMap!1135)

(assert (=> b!4317821 (= e!2686123 (= call!298936 call!298929))))

(declare-fun b!4317822 () Bool)

(declare-fun e!2686128 () Bool)

(declare-fun call!298916 () Bool)

(assert (=> b!4317822 (= e!2686128 (not call!298916))))

(declare-fun bm!298914 () Bool)

(declare-fun call!298924 () Bool)

(assert (=> bm!298914 (= call!298920 call!298924)))

(declare-fun bm!298915 () Bool)

(assert (=> bm!298915 (= call!298932 call!298937)))

(declare-fun b!4317823 () Bool)

(declare-fun e!2686139 () Bool)

(assert (=> b!4317823 (= e!2686139 (= call!298936 (+!318 call!298929 (tuple2!47057 lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)))))))

(declare-fun lt!1536783 () SeekEntryResult!18)

(declare-fun b!4317824 () Bool)

(declare-fun e!2686129 () Bool)

(assert (=> b!4317824 (= e!2686129 (= (select (arr!7651 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))) (index!1451 lt!1536783)) lt!1536415))))

(declare-fun bm!298916 () Bool)

(declare-fun c!734124 () Bool)

(declare-fun c!734125 () Bool)

(assert (=> bm!298916 (= c!734124 c!734125)))

(assert (=> bm!298916 (= call!298938 (contains!10360 e!2686126 (ite c!734125 lt!1536415 (select (arr!7651 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))) (index!1451 lt!1536795)))))))

(declare-fun c!734120 () Bool)

(declare-fun lt!1536775 () (_ BitVec 32))

(declare-fun bm!298917 () Bool)

(assert (=> bm!298917 (= call!298937 (getCurrentListMap!21 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (_values!5014 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (mask!13328 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (ite c!734121 (ite c!734120 lt!1536775 lt!1536787) (extraKeys!4982 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))) (ite (and c!734121 c!734120) (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413) (zeroValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))) (ite c!734121 (ite c!734120 (minValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)) (minValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))) #b00000000000000000000000000000000 (defaultEntry!5118 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))))))

(declare-fun b!4317825 () Bool)

(assert (=> b!4317825 (= e!2686132 (not call!298916))))

(declare-fun b!4317826 () Bool)

(declare-fun e!2686138 () Unit!67578)

(declare-fun Unit!67596 () Unit!67578)

(assert (=> b!4317826 (= e!2686138 Unit!67596)))

(declare-fun lt!1536785 () Unit!67578)

(declare-fun call!298931 () Unit!67578)

(assert (=> b!4317826 (= lt!1536785 call!298931)))

(declare-fun lt!1536771 () SeekEntryResult!18)

(declare-fun call!298918 () SeekEntryResult!18)

(assert (=> b!4317826 (= lt!1536771 call!298918)))

(declare-fun res!1769657 () Bool)

(assert (=> b!4317826 (= res!1769657 ((_ is Found!18) lt!1536771))))

(assert (=> b!4317826 (=> (not res!1769657) (not e!2686136))))

(assert (=> b!4317826 e!2686136))

(declare-fun lt!1536791 () Unit!67578)

(assert (=> b!4317826 (= lt!1536791 lt!1536785)))

(assert (=> b!4317826 false))

(declare-fun b!4317827 () Bool)

(declare-fun res!1769664 () Bool)

(assert (=> b!4317827 (=> (not res!1769664) (not e!2686128))))

(assert (=> b!4317827 (= res!1769664 (= (select (arr!7651 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))) (index!1452 lt!1536780)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!298934 () tuple2!47060)

(declare-fun c!734127 () Bool)

(declare-fun bm!298918 () Bool)

(declare-fun updateHelperNewKey!8 (LongMapFixedSize!9466 (_ BitVec 64) List!48460 (_ BitVec 32)) tuple2!47060)

(assert (=> bm!298918 (= call!298934 (updateHelperNewKey!8 (v!42644 (underlying!9695 (_2!26812 lt!1536430))) lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413) (ite c!734127 (index!1453 lt!1536795) (index!1452 lt!1536795))))))

(declare-fun b!4317828 () Bool)

(declare-fun e!2686134 () Bool)

(declare-fun call!298926 () Bool)

(assert (=> b!4317828 (= e!2686134 (not call!298926))))

(declare-fun b!4317829 () Bool)

(assert (=> b!4317829 (= e!2686122 e!2686133)))

(assert (=> b!4317829 (= c!734120 (= lt!1536415 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!298919 () Bool)

(declare-fun call!298925 () ListLongMap!1135)

(assert (=> bm!298919 (= call!298919 (+!318 (ite c!734121 call!298925 call!298932) (ite c!734121 (ite c!734120 (tuple2!47057 #b0000000000000000000000000000000000000000000000000000000000000000 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)) (tuple2!47057 #b1000000000000000000000000000000000000000000000000000000000000000 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413))) (tuple2!47057 lt!1536415 (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413)))))))

(declare-fun c!734123 () Bool)

(declare-fun bm!298920 () Bool)

(declare-fun c!734128 () Bool)

(declare-fun c!734130 () Bool)

(assert (=> bm!298920 (= call!298924 (inRange!0 (ite c!734125 (ite c!734130 (index!1451 lt!1536771) (ite c!734128 (index!1452 lt!1536780) (index!1453 lt!1536780))) (ite c!734122 (index!1451 lt!1536783) (ite c!734123 (index!1452 lt!1536774) (index!1453 lt!1536774)))) (mask!13328 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))))))

(declare-fun b!4317830 () Bool)

(declare-fun lt!1536790 () tuple2!47060)

(assert (=> b!4317830 (= lt!1536790 call!298934)))

(assert (=> b!4317830 (= e!2686137 (tuple2!47061 (_1!26813 lt!1536790) (_2!26813 lt!1536790)))))

(declare-fun bm!298921 () Bool)

(declare-fun call!298933 () Bool)

(assert (=> bm!298921 (= call!298933 call!298924)))

(declare-fun b!4317831 () Bool)

(declare-fun res!1769661 () Bool)

(assert (=> b!4317831 (= res!1769661 (= (select (arr!7651 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))) (index!1453 lt!1536774)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4317831 (=> (not res!1769661) (not e!2686134))))

(declare-fun b!4317832 () Bool)

(declare-fun lt!1536782 () Unit!67578)

(assert (=> b!4317832 (= lt!1536782 e!2686138)))

(assert (=> b!4317832 (= c!734130 call!298938)))

(declare-fun e!2686131 () tuple2!47060)

(assert (=> b!4317832 (= e!2686131 (tuple2!47061 false (v!42644 (underlying!9695 (_2!26812 lt!1536430)))))))

(declare-fun b!4317833 () Bool)

(assert (=> b!4317833 (= e!2686120 e!2686134)))

(declare-fun res!1769653 () Bool)

(declare-fun call!298922 () Bool)

(assert (=> b!4317833 (= res!1769653 call!298922)))

(assert (=> b!4317833 (=> (not res!1769653) (not e!2686134))))

(declare-fun b!4317834 () Bool)

(declare-fun res!1769659 () Bool)

(assert (=> b!4317834 (= res!1769659 call!298933)))

(assert (=> b!4317834 (=> (not res!1769659) (not e!2686129))))

(declare-fun b!4317835 () Bool)

(declare-fun lt!1536769 () tuple2!47060)

(assert (=> b!4317835 (= e!2686135 (tuple2!47061 (_1!26813 lt!1536769) (_2!26813 lt!1536769)))))

(assert (=> b!4317835 (= lt!1536769 call!298934)))

(declare-fun b!4317836 () Bool)

(declare-fun Unit!67597 () Unit!67578)

(assert (=> b!4317836 (= e!2686140 Unit!67597)))

(declare-fun lt!1536773 () Unit!67578)

(assert (=> b!4317836 (= lt!1536773 call!298923)))

(declare-fun call!298915 () SeekEntryResult!18)

(assert (=> b!4317836 (= lt!1536774 call!298915)))

(assert (=> b!4317836 (= c!734123 ((_ is MissingZero!18) lt!1536774))))

(declare-fun e!2686124 () Bool)

(assert (=> b!4317836 e!2686124))

(declare-fun lt!1536789 () Unit!67578)

(assert (=> b!4317836 (= lt!1536789 lt!1536773)))

(assert (=> b!4317836 false))

(declare-fun b!4317837 () Bool)

(declare-fun res!1769655 () Bool)

(declare-fun e!2686130 () Bool)

(assert (=> b!4317837 (=> (not res!1769655) (not e!2686130))))

(assert (=> b!4317837 (= res!1769655 call!298922)))

(assert (=> b!4317837 (= e!2686124 e!2686130)))

(declare-fun bm!298922 () Bool)

(assert (=> bm!298922 (= call!298918 call!298935)))

(declare-fun bm!298923 () Bool)

(assert (=> bm!298923 (= call!298922 call!298933)))

(declare-fun b!4317838 () Bool)

(declare-fun lt!1536779 () Unit!67578)

(assert (=> b!4317838 (= e!2686138 lt!1536779)))

(assert (=> b!4317838 (= lt!1536779 call!298923)))

(assert (=> b!4317838 (= lt!1536780 call!298918)))

(assert (=> b!4317838 (= c!734128 ((_ is MissingZero!18) lt!1536780))))

(declare-fun e!2686121 () Bool)

(assert (=> b!4317838 e!2686121))

(declare-fun bm!298924 () Bool)

(declare-fun call!298921 () Bool)

(assert (=> bm!298924 (= call!298921 (arrayContainsKey!0 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) lt!1536415 #b00000000000000000000000000000000))))

(declare-fun bm!298925 () Bool)

(declare-fun call!298930 () ListLongMap!1135)

(assert (=> bm!298925 (= call!298930 (getCurrentListMap!21 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (ite c!734121 (_values!5014 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) lt!1536792) (mask!13328 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (extraKeys!4982 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (zeroValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (minValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) #b00000000000000000000000000000000 (defaultEntry!5118 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))))))

(declare-fun b!4317839 () Bool)

(declare-fun c!734129 () Bool)

(assert (=> b!4317839 (= c!734129 ((_ is MissingVacant!18) lt!1536774))))

(assert (=> b!4317839 (= e!2686124 e!2686120)))

(declare-fun b!4317840 () Bool)

(declare-fun res!1769654 () Bool)

(assert (=> b!4317840 (=> (not res!1769654) (not e!2686128))))

(assert (=> b!4317840 (= res!1769654 call!298928)))

(assert (=> b!4317840 (= e!2686121 e!2686128)))

(declare-fun b!4317841 () Bool)

(assert (=> b!4317841 (= e!2686136 (= (select (arr!7651 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))) (index!1451 lt!1536771)) lt!1536415))))

(declare-fun b!4317842 () Bool)

(assert (=> b!4317842 (= e!2686130 (not call!298926))))

(declare-fun b!4317843 () Bool)

(assert (=> b!4317843 (= e!2686122 e!2686131)))

(assert (=> b!4317843 (= lt!1536795 (seekEntryOrOpen!0 lt!1536415 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (mask!13328 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))))))

(assert (=> b!4317843 (= c!734125 ((_ is Undefined!18) lt!1536795))))

(declare-fun bm!298926 () Bool)

(assert (=> bm!298926 (= call!298926 call!298921)))

(declare-fun b!4317844 () Bool)

(declare-fun res!1769663 () Bool)

(assert (=> b!4317844 (=> (not res!1769663) (not e!2686130))))

(assert (=> b!4317844 (= res!1769663 (= (select (arr!7651 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))) (index!1452 lt!1536774)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4317845 () Bool)

(assert (=> b!4317845 (= e!2686123 e!2686139)))

(declare-fun res!1769658 () Bool)

(assert (=> b!4317845 (= res!1769658 (contains!10360 call!298936 lt!1536415))))

(assert (=> b!4317845 (=> (not res!1769658) (not e!2686139))))

(declare-fun bm!298927 () Bool)

(assert (=> bm!298927 (= call!298916 call!298921)))

(declare-fun b!4317846 () Bool)

(assert (=> b!4317846 (= c!734127 ((_ is MissingVacant!18) lt!1536795))))

(assert (=> b!4317846 (= e!2686131 e!2686135)))

(declare-fun b!4317847 () Bool)

(declare-fun lt!1536770 () Unit!67578)

(declare-fun lt!1536786 () Unit!67578)

(assert (=> b!4317847 (= lt!1536770 lt!1536786)))

(assert (=> b!4317847 (= call!298927 call!298917)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!8 (array!17138 array!17140 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48460 List!48460 List!48460 Int) Unit!67578)

(assert (=> b!4317847 (= lt!1536786 (lemmaChangeZeroKeyThenAddPairToListMap!8 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (_values!5014 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (mask!13328 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (extraKeys!4982 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) lt!1536775 (zeroValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413) (minValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (defaultEntry!5118 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))))))

(assert (=> b!4317847 (= lt!1536775 (bvor (extraKeys!4982 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) #b00000000000000000000000000000001))))

(assert (=> b!4317847 (= e!2686133 (tuple2!47061 true (LongMapFixedSize!9467 (defaultEntry!5118 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (mask!13328 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (bvor (extraKeys!4982 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) #b00000000000000000000000000000001) (Cons!48336 (tuple2!47055 key!2048 v!9179) lt!1536413) (minValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (_size!9509 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (_values!5014 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (_vacant!4794 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))))))))

(declare-fun bm!298928 () Bool)

(assert (=> bm!298928 (= call!298929 (map!10357 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))))))

(declare-fun b!4317848 () Bool)

(declare-fun lt!1536777 () Unit!67578)

(assert (=> b!4317848 (= e!2686140 lt!1536777)))

(assert (=> b!4317848 (= lt!1536777 call!298931)))

(assert (=> b!4317848 (= lt!1536783 call!298915)))

(declare-fun res!1769665 () Bool)

(assert (=> b!4317848 (= res!1769665 ((_ is Found!18) lt!1536783))))

(assert (=> b!4317848 (=> (not res!1769665) (not e!2686129))))

(assert (=> b!4317848 e!2686129))

(declare-fun b!4317849 () Bool)

(assert (=> b!4317849 (= e!2686126 call!298930)))

(declare-fun bm!298929 () Bool)

(assert (=> bm!298929 (= call!298927 call!298919)))

(declare-fun b!4317850 () Bool)

(declare-fun c!734119 () Bool)

(assert (=> b!4317850 (= c!734119 ((_ is MissingVacant!18) lt!1536780))))

(assert (=> b!4317850 (= e!2686121 e!2686125)))

(declare-fun bm!298930 () Bool)

(assert (=> bm!298930 (= call!298928 call!298920)))

(declare-fun bm!298931 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!8 (array!17138 array!17140 (_ BitVec 32) (_ BitVec 32) List!48460 List!48460 (_ BitVec 64) Int) Unit!67578)

(assert (=> bm!298931 (= call!298931 (lemmaInListMapThenSeekEntryOrOpenFindsIt!8 (_keys!5033 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (_values!5014 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (mask!13328 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (extraKeys!4982 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (zeroValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) (minValue!4992 (v!42644 (underlying!9695 (_2!26812 lt!1536430)))) lt!1536415 (defaultEntry!5118 (v!42644 (underlying!9695 (_2!26812 lt!1536430))))))))

(declare-fun bm!298932 () Bool)

(assert (=> bm!298932 (= call!298915 call!298935)))

(declare-fun bm!298933 () Bool)

(assert (=> bm!298933 (= call!298925 call!298930)))

(assert (= (and d!1269583 c!734121) b!4317829))

(assert (= (and d!1269583 (not c!734121)) b!4317843))

(assert (= (and b!4317829 c!734120) b!4317847))

(assert (= (and b!4317829 (not c!734120)) b!4317817))

(assert (= (or b!4317847 b!4317817) bm!298933))

(assert (= (or b!4317847 b!4317817) bm!298913))

(assert (= (or b!4317847 b!4317817) bm!298929))

(assert (= (and b!4317843 c!734125) b!4317832))

(assert (= (and b!4317843 (not c!734125)) b!4317846))

(assert (= (and b!4317832 c!734130) b!4317826))

(assert (= (and b!4317832 (not c!734130)) b!4317838))

(assert (= (and b!4317826 res!1769657) b!4317811))

(assert (= (and b!4317811 res!1769656) b!4317841))

(assert (= (and b!4317838 c!734128) b!4317840))

(assert (= (and b!4317838 (not c!734128)) b!4317850))

(assert (= (and b!4317840 res!1769654) b!4317827))

(assert (= (and b!4317827 res!1769664) b!4317822))

(assert (= (and b!4317850 c!734119) b!4317814))

(assert (= (and b!4317850 (not c!734119)) b!4317815))

(assert (= (and b!4317814 res!1769660) b!4317816))

(assert (= (and b!4317816 res!1769662) b!4317825))

(assert (= (or b!4317822 b!4317825) bm!298927))

(assert (= (or b!4317840 b!4317814) bm!298930))

(assert (= (or b!4317811 bm!298930) bm!298914))

(assert (= (or b!4317826 b!4317838) bm!298922))

(assert (= (and b!4317846 c!734127) b!4317835))

(assert (= (and b!4317846 (not c!734127)) b!4317813))

(assert (= (and b!4317813 c!734126) b!4317830))

(assert (= (and b!4317813 (not c!734126)) b!4317820))

(assert (= (and b!4317820 c!734122) b!4317848))

(assert (= (and b!4317820 (not c!734122)) b!4317836))

(assert (= (and b!4317848 res!1769665) b!4317834))

(assert (= (and b!4317834 res!1769659) b!4317824))

(assert (= (and b!4317836 c!734123) b!4317837))

(assert (= (and b!4317836 (not c!734123)) b!4317839))

(assert (= (and b!4317837 res!1769655) b!4317844))

(assert (= (and b!4317844 res!1769663) b!4317842))

(assert (= (and b!4317839 c!734129) b!4317833))

(assert (= (and b!4317839 (not c!734129)) b!4317818))

(assert (= (and b!4317833 res!1769653) b!4317831))

(assert (= (and b!4317831 res!1769661) b!4317828))

(assert (= (or b!4317842 b!4317828) bm!298926))

(assert (= (or b!4317837 b!4317833) bm!298923))

(assert (= (or b!4317834 bm!298923) bm!298921))

(assert (= (or b!4317848 b!4317836) bm!298932))

(assert (= (or b!4317835 b!4317830) bm!298918))

(assert (= (or bm!298914 bm!298921) bm!298920))

(assert (= (or b!4317832 b!4317820) bm!298915))

(assert (= (or b!4317826 b!4317848) bm!298931))

(assert (= (or bm!298922 bm!298932) bm!298911))

(assert (= (or b!4317838 b!4317836) bm!298912))

(assert (= (or bm!298927 bm!298926) bm!298924))

(assert (= (or b!4317832 b!4317820) bm!298916))

(assert (= (and bm!298916 c!734124) b!4317819))

(assert (= (and bm!298916 (not c!734124)) b!4317849))

(assert (= (or bm!298913 bm!298915) bm!298917))

(assert (= (or bm!298933 b!4317849) bm!298925))

(assert (= (or bm!298929 b!4317820) bm!298919))

(assert (= (and d!1269583 res!1769666) b!4317812))

(assert (= (and b!4317812 c!734118) b!4317845))

(assert (= (and b!4317812 (not c!734118)) b!4317821))

(assert (= (and b!4317845 res!1769658) b!4317823))

(assert (= (or b!4317845 b!4317823 b!4317821) bm!298910))

(assert (= (or b!4317823 b!4317821) bm!298928))

(declare-fun m!4911453 () Bool)

(assert (=> bm!298925 m!4911453))

(declare-fun m!4911455 () Bool)

(assert (=> b!4317847 m!4911455))

(declare-fun m!4911457 () Bool)

(assert (=> b!4317845 m!4911457))

(declare-fun m!4911459 () Bool)

(assert (=> b!4317823 m!4911459))

(declare-fun m!4911461 () Bool)

(assert (=> bm!298911 m!4911461))

(declare-fun m!4911463 () Bool)

(assert (=> b!4317820 m!4911463))

(declare-fun m!4911465 () Bool)

(assert (=> b!4317820 m!4911465))

(declare-fun m!4911467 () Bool)

(assert (=> b!4317820 m!4911467))

(declare-fun m!4911469 () Bool)

(assert (=> b!4317820 m!4911469))

(declare-fun m!4911471 () Bool)

(assert (=> b!4317820 m!4911471))

(declare-fun m!4911473 () Bool)

(assert (=> bm!298916 m!4911473))

(declare-fun m!4911475 () Bool)

(assert (=> bm!298916 m!4911475))

(declare-fun m!4911477 () Bool)

(assert (=> bm!298917 m!4911477))

(declare-fun m!4911479 () Bool)

(assert (=> bm!298928 m!4911479))

(declare-fun m!4911481 () Bool)

(assert (=> bm!298912 m!4911481))

(declare-fun m!4911483 () Bool)

(assert (=> b!4317844 m!4911483))

(declare-fun m!4911485 () Bool)

(assert (=> bm!298931 m!4911485))

(declare-fun m!4911487 () Bool)

(assert (=> b!4317824 m!4911487))

(declare-fun m!4911489 () Bool)

(assert (=> bm!298924 m!4911489))

(declare-fun m!4911491 () Bool)

(assert (=> b!4317831 m!4911491))

(assert (=> b!4317843 m!4911461))

(declare-fun m!4911493 () Bool)

(assert (=> d!1269583 m!4911493))

(declare-fun m!4911495 () Bool)

(assert (=> d!1269583 m!4911495))

(declare-fun m!4911497 () Bool)

(assert (=> bm!298919 m!4911497))

(declare-fun m!4911499 () Bool)

(assert (=> bm!298910 m!4911499))

(declare-fun m!4911501 () Bool)

(assert (=> b!4317841 m!4911501))

(declare-fun m!4911503 () Bool)

(assert (=> bm!298918 m!4911503))

(declare-fun m!4911505 () Bool)

(assert (=> b!4317827 m!4911505))

(declare-fun m!4911507 () Bool)

(assert (=> bm!298920 m!4911507))

(declare-fun m!4911509 () Bool)

(assert (=> b!4317816 m!4911509))

(declare-fun m!4911511 () Bool)

(assert (=> b!4317817 m!4911511))

(assert (=> b!4317367 d!1269583))

(assert (=> bm!298819 d!1269485))

(declare-fun d!1269585 () Bool)

(assert (=> d!1269585 (= (apply!11110 (ite c!733996 lt!1536479 call!298828) call!298824) (get!15655 (getValueByKey!287 (toList!2520 (ite c!733996 lt!1536479 call!298828)) call!298824)))))

(declare-fun bs!605978 () Bool)

(assert (= bs!605978 d!1269585))

(assert (=> bs!605978 m!4911301))

(assert (=> bs!605978 m!4911301))

(declare-fun m!4911513 () Bool)

(assert (=> bs!605978 m!4911513))

(assert (=> bm!298818 d!1269585))

(declare-fun d!1269587 () Bool)

(assert (=> d!1269587 (= (map!10355 (_2!26812 lt!1536428)) (map!10357 (v!42644 (underlying!9695 (_2!26812 lt!1536428)))))))

(declare-fun bs!605979 () Bool)

(assert (= bs!605979 d!1269587))

(declare-fun m!4911515 () Bool)

(assert (=> bs!605979 m!4911515))

(assert (=> bm!298805 d!1269587))

(declare-fun e!2686141 () Bool)

(declare-fun b!4317851 () Bool)

(declare-fun tp!1326388 () Bool)

(assert (=> b!4317851 (= e!2686141 (and tp_is_empty!24029 tp_is_empty!24031 tp!1326388))))

(assert (=> b!4317440 (= tp!1326385 e!2686141)))

(assert (= (and b!4317440 ((_ is Cons!48336) (t!355317 mapDefault!21104))) b!4317851))

(declare-fun b!4317852 () Bool)

(declare-fun e!2686142 () Bool)

(declare-fun tp!1326389 () Bool)

(assert (=> b!4317852 (= e!2686142 (and tp_is_empty!24029 tp_is_empty!24031 tp!1326389))))

(assert (=> b!4317431 (= tp!1326376 e!2686142)))

(assert (= (and b!4317431 ((_ is Cons!48336) (t!355317 (minValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))) b!4317852))

(declare-fun tp!1326390 () Bool)

(declare-fun e!2686143 () Bool)

(declare-fun b!4317853 () Bool)

(assert (=> b!4317853 (= e!2686143 (and tp_is_empty!24029 tp_is_empty!24031 tp!1326390))))

(assert (=> b!4317441 (= tp!1326387 e!2686143)))

(assert (= (and b!4317441 ((_ is Cons!48336) (t!355317 mapValue!21101))) b!4317853))

(declare-fun tp!1326391 () Bool)

(declare-fun e!2686144 () Bool)

(declare-fun b!4317854 () Bool)

(assert (=> b!4317854 (= e!2686144 (and tp_is_empty!24029 tp_is_empty!24031 tp!1326391))))

(assert (=> b!4317439 (= tp!1326384 e!2686144)))

(assert (= (and b!4317439 ((_ is Cons!48336) (t!355317 mapValue!21104))) b!4317854))

(declare-fun condMapEmpty!21105 () Bool)

(declare-fun mapDefault!21105 () List!48460)

(assert (=> mapNonEmpty!21104 (= condMapEmpty!21105 (= mapRest!21104 ((as const (Array (_ BitVec 32) List!48460)) mapDefault!21105)))))

(declare-fun e!2686146 () Bool)

(declare-fun mapRes!21105 () Bool)

(assert (=> mapNonEmpty!21104 (= tp!1326386 (and e!2686146 mapRes!21105))))

(declare-fun mapNonEmpty!21105 () Bool)

(declare-fun tp!1326394 () Bool)

(declare-fun e!2686145 () Bool)

(assert (=> mapNonEmpty!21105 (= mapRes!21105 (and tp!1326394 e!2686145))))

(declare-fun mapRest!21105 () (Array (_ BitVec 32) List!48460))

(declare-fun mapValue!21105 () List!48460)

(declare-fun mapKey!21105 () (_ BitVec 32))

(assert (=> mapNonEmpty!21105 (= mapRest!21104 (store mapRest!21105 mapKey!21105 mapValue!21105))))

(declare-fun b!4317856 () Bool)

(declare-fun tp!1326393 () Bool)

(assert (=> b!4317856 (= e!2686146 (and tp_is_empty!24029 tp_is_empty!24031 tp!1326393))))

(declare-fun mapIsEmpty!21105 () Bool)

(assert (=> mapIsEmpty!21105 mapRes!21105))

(declare-fun b!4317855 () Bool)

(declare-fun tp!1326392 () Bool)

(assert (=> b!4317855 (= e!2686145 (and tp_is_empty!24029 tp_is_empty!24031 tp!1326392))))

(assert (= (and mapNonEmpty!21104 condMapEmpty!21105) mapIsEmpty!21105))

(assert (= (and mapNonEmpty!21104 (not condMapEmpty!21105)) mapNonEmpty!21105))

(assert (= (and mapNonEmpty!21105 ((_ is Cons!48336) mapValue!21105)) b!4317855))

(assert (= (and mapNonEmpty!21104 ((_ is Cons!48336) mapDefault!21105)) b!4317856))

(declare-fun m!4911517 () Bool)

(assert (=> mapNonEmpty!21105 m!4911517))

(declare-fun tp!1326395 () Bool)

(declare-fun b!4317857 () Bool)

(declare-fun e!2686147 () Bool)

(assert (=> b!4317857 (= e!2686147 (and tp_is_empty!24029 tp_is_empty!24031 tp!1326395))))

(assert (=> b!4317432 (= tp!1326377 e!2686147)))

(assert (= (and b!4317432 ((_ is Cons!48336) (t!355317 mapDefault!21101))) b!4317857))

(declare-fun tp!1326396 () Bool)

(declare-fun b!4317858 () Bool)

(declare-fun e!2686148 () Bool)

(assert (=> b!4317858 (= e!2686148 (and tp_is_empty!24029 tp_is_empty!24031 tp!1326396))))

(assert (=> tb!257343 (= result!314828 e!2686148)))

(assert (= (and tb!257343 ((_ is Cons!48336) (dynLambda!20489 (defaultEntry!5118 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308))))) lt!1536415))) b!4317858))

(declare-fun e!2686149 () Bool)

(declare-fun tp!1326397 () Bool)

(declare-fun b!4317859 () Bool)

(assert (=> b!4317859 (= e!2686149 (and tp_is_empty!24029 tp_is_empty!24031 tp!1326397))))

(assert (=> b!4317430 (= tp!1326375 e!2686149)))

(assert (= (and b!4317430 ((_ is Cons!48336) (t!355317 (zeroValue!4992 (v!42644 (underlying!9695 (v!42645 (underlying!9696 thiss!42308)))))))) b!4317859))

(declare-fun b_lambda!126979 () Bool)

(assert (= b_lambda!126965 (or (and b!4317333 b_free!128891) b_lambda!126979)))

(declare-fun b_lambda!126981 () Bool)

(assert (= b_lambda!126971 (or (and b!4317333 b_free!128891) b_lambda!126981)))

(declare-fun b_lambda!126983 () Bool)

(assert (= b_lambda!126963 (or b!4317410 b_lambda!126983)))

(declare-fun bs!605980 () Bool)

(declare-fun d!1269589 () Bool)

(assert (= bs!605980 (and d!1269589 b!4317410)))

(assert (=> bs!605980 (= (dynLambda!20490 lambda!133552 (tuple2!47057 lt!1536481 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481))) (noDuplicateKeys!255 (_2!26811 (tuple2!47057 lt!1536481 (apply!11109 (v!42645 (underlying!9696 thiss!42308)) lt!1536481)))))))

(declare-fun m!4911519 () Bool)

(assert (=> bs!605980 m!4911519))

(assert (=> d!1269511 d!1269589))

(declare-fun b_lambda!126985 () Bool)

(assert (= b_lambda!126975 (or b!4317418 b_lambda!126985)))

(declare-fun bs!605981 () Bool)

(declare-fun d!1269591 () Bool)

(assert (= bs!605981 (and d!1269591 b!4317418)))

(assert (=> bs!605981 (= (dynLambda!20490 lambda!133555 (h!53790 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308)))))) (noDuplicateKeys!255 (_2!26811 (h!53790 (toList!2520 (map!10355 (v!42645 (underlying!9696 thiss!42308))))))))))

(declare-fun m!4911521 () Bool)

(assert (=> bs!605981 m!4911521))

(assert (=> b!4317717 d!1269591))

(declare-fun b_lambda!126987 () Bool)

(assert (= b_lambda!126967 (or (and b!4317333 b_free!128891) b_lambda!126987)))

(declare-fun b_lambda!126989 () Bool)

(assert (= b_lambda!126969 (or (and b!4317333 b_free!128891) b_lambda!126989)))

(declare-fun b_lambda!126991 () Bool)

(assert (= b_lambda!126973 (or d!1269479 b_lambda!126991)))

(declare-fun bs!605982 () Bool)

(declare-fun d!1269593 () Bool)

(assert (= bs!605982 (and d!1269593 d!1269479)))

(assert (=> bs!605982 (= (dynLambda!20491 lambda!133546 (h!53789 lt!1536413)) (= (hash!1132 (hashF!6858 thiss!42308) (_1!26810 (h!53789 lt!1536413))) lt!1536415))))

(declare-fun m!4911523 () Bool)

(assert (=> bs!605982 m!4911523))

(assert (=> b!4317687 d!1269593))

(declare-fun b_lambda!126993 () Bool)

(assert (= b_lambda!126977 (or d!1269481 b_lambda!126993)))

(declare-fun bs!605983 () Bool)

(declare-fun d!1269595 () Bool)

(assert (= bs!605983 (and d!1269595 d!1269481)))

(assert (=> bs!605983 (= (dynLambda!20490 lambda!133549 (h!53790 (toList!2520 lt!1536418))) (allKeysSameHash!228 (_2!26811 (h!53790 (toList!2520 lt!1536418))) (_1!26811 (h!53790 (toList!2520 lt!1536418))) (hashF!6858 thiss!42308)))))

(declare-fun m!4911525 () Bool)

(assert (=> bs!605983 m!4911525))

(assert (=> b!4317727 d!1269595))

(check-sat (not bm!298917) (not b_lambda!126989) (not b!4317654) (not b!4317574) (not b!4317726) (not b!4317854) (not d!1269541) (not d!1269583) (not d!1269521) (not bs!605983) (not b!4317504) (not b!4317820) (not bs!605980) (not d!1269559) (not b!4317576) (not b!4317550) (not d!1269587) (not d!1269499) (not bm!298860) (not bm!298916) (not bm!298858) (not b!4317644) (not d!1269585) (not b!4317711) (not b!4317858) (not b!4317852) (not bm!298826) (not d!1269551) (not b!4317541) (not b!4317859) (not b!4317712) (not b!4317688) (not b!4317648) (not b!4317464) (not b!4317633) (not b_lambda!126985) (not b_lambda!126983) (not b!4317676) (not b!4317817) (not b_lambda!126993) (not b!4317461) (not b_next!129597) (not d!1269519) (not b!4317730) (not b!4317674) (not b!4317728) (not b!4317647) (not bs!605982) (not b!4317467) (not b!4317679) (not d!1269569) (not d!1269547) (not b!4317658) (not bm!298924) (not b!4317725) (not b!4317635) (not b!4317721) (not d!1269497) (not b!4317649) (not b_lambda!126979) (not b!4317637) (not b!4317668) (not b!4317638) (not b!4317662) (not bs!605981) (not d!1269535) (not b!4317527) (not b!4317639) (not bm!298925) tp_is_empty!24031 (not d!1269527) (not b!4317519) (not d!1269555) (not d!1269563) (not b!4317579) (not bm!298919) (not d!1269549) (not bm!298910) (not bm!298912) (not b!4317653) (not b!4317857) (not b!4317719) (not d!1269545) (not d!1269533) (not b!4317496) (not b_lambda!126981) (not bm!298911) (not b!4317641) (not d!1269575) (not tb!257345) (not d!1269561) (not d!1269567) (not b!4317709) (not b!4317718) (not b!4317534) (not bm!298837) (not b!4317665) (not d!1269557) (not b!4317623) (not d!1269517) (not b_next!129595) b_and!340389 (not b!4317723) (not bm!298845) (not b!4317729) (not d!1269573) (not d!1269513) (not b!4317856) (not b_lambda!126987) (not bm!298918) (not d!1269495) (not d!1269525) (not b!4317548) (not b!4317520) (not b!4317640) (not d!1269515) (not b!4317845) (not b!4317495) (not b!4317651) (not d!1269537) (not b!4317642) (not d!1269531) (not b!4317823) (not b!4317634) (not d!1269511) (not b!4317847) (not bm!298931) (not bm!298928) (not b!4317625) b_and!340399 (not d!1269577) (not d!1269503) (not b!4317650) (not b!4317535) (not b!4317851) (not bm!298861) (not d!1269529) (not b!4317843) (not b_lambda!126961) (not b!4317515) tp_is_empty!24029 (not bm!298846) (not b!4317462) (not bm!298920) (not b!4317473) (not b!4317707) (not b!4317528) (not b!4317645) (not b!4317855) (not b!4317677) (not b!4317617) (not bm!298847) (not b!4317682) (not b!4317463) (not b!4317466) (not mapNonEmpty!21105) (not b!4317460) (not bm!298835) (not d!1269505) (not d!1269539) (not b!4317705) (not bm!298857) (not b_lambda!126991) (not b!4317853))
(check-sat b_and!340399 b_and!340389 (not b_next!129597) (not b_next!129595))
