; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416122 () Bool)

(assert start!416122)

(declare-fun b!4322885 () Bool)

(declare-fun b_free!128979 () Bool)

(declare-fun b_next!129683 () Bool)

(assert (=> b!4322885 (= b_free!128979 (not b_next!129683))))

(declare-fun tp!1327019 () Bool)

(declare-fun b_and!340539 () Bool)

(assert (=> b!4322885 (= tp!1327019 b_and!340539)))

(declare-fun b!4322889 () Bool)

(declare-fun b_free!128981 () Bool)

(declare-fun b_next!129685 () Bool)

(assert (=> b!4322889 (= b_free!128981 (not b_next!129685))))

(declare-fun tp!1327016 () Bool)

(declare-fun b_and!340541 () Bool)

(assert (=> b!4322889 (= tp!1327016 b_and!340541)))

(declare-fun b!4322874 () Bool)

(declare-fun e!2689513 () Bool)

(declare-datatypes ((V!9836 0))(
  ( (V!9837 (val!15965 Int)) )
))
(declare-datatypes ((K!9634 0))(
  ( (K!9635 (val!15966 Int)) )
))
(declare-datatypes ((tuple2!47200 0))(
  ( (tuple2!47201 (_1!26887 K!9634) (_2!26887 V!9836)) )
))
(declare-datatypes ((List!48508 0))(
  ( (Nil!48384) (Cons!48384 (h!53845 tuple2!47200) (t!355394 List!48508)) )
))
(declare-datatypes ((tuple2!47202 0))(
  ( (tuple2!47203 (_1!26888 (_ BitVec 64)) (_2!26888 List!48508)) )
))
(declare-datatypes ((List!48509 0))(
  ( (Nil!48385) (Cons!48385 (h!53846 tuple2!47202) (t!355395 List!48509)) )
))
(declare-datatypes ((ListLongMap!1175 0))(
  ( (ListLongMap!1176 (toList!2558 List!48509)) )
))
(declare-fun lt!1540559 () ListLongMap!1175)

(declare-datatypes ((array!17242 0))(
  ( (array!17243 (arr!7695 (Array (_ BitVec 32) (_ BitVec 64))) (size!35734 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4671 0))(
  ( (HashableExt!4670 (__x!30290 Int)) )
))
(declare-datatypes ((array!17244 0))(
  ( (array!17245 (arr!7696 (Array (_ BitVec 32) List!48508)) (size!35735 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9510 0))(
  ( (LongMapFixedSize!9511 (defaultEntry!5160 Int) (mask!13395 (_ BitVec 32)) (extraKeys!5020 (_ BitVec 32)) (zeroValue!5032 List!48508) (minValue!5032 List!48508) (_size!9555 (_ BitVec 32)) (_keys!5081 array!17242) (_values!5056 array!17244) (_vacant!4818 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18829 0))(
  ( (Cell!18830 (v!42774 LongMapFixedSize!9510)) )
))
(declare-datatypes ((MutLongMap!4755 0))(
  ( (LongMap!4755 (underlying!9739 Cell!18829)) (MutLongMapExt!4754 (__x!30291 Int)) )
))
(declare-datatypes ((Cell!18831 0))(
  ( (Cell!18832 (v!42775 MutLongMap!4755)) )
))
(declare-datatypes ((MutableMap!4661 0))(
  ( (MutableMapExt!4660 (__x!30292 Int)) (HashMap!4661 (underlying!9740 Cell!18831) (hashF!6933 Hashable!4671) (_size!9556 (_ BitVec 32)) (defaultValue!4832 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4661)

(declare-fun allKeysSameHashInMap!389 (ListLongMap!1175 Hashable!4671) Bool)

(assert (=> b!4322874 (= e!2689513 (allKeysSameHashInMap!389 lt!1540559 (hashF!6933 thiss!42308)))))

(declare-fun b!4322875 () Bool)

(declare-fun e!2689516 () List!48508)

(declare-fun lt!1540560 () (_ BitVec 64))

(declare-fun apply!11143 (MutLongMap!4755 (_ BitVec 64)) List!48508)

(assert (=> b!4322875 (= e!2689516 (apply!11143 (v!42775 (underlying!9740 thiss!42308)) lt!1540560))))

(declare-fun mapIsEmpty!21197 () Bool)

(declare-fun mapRes!21197 () Bool)

(assert (=> mapIsEmpty!21197 mapRes!21197))

(declare-fun b!4322876 () Bool)

(assert (=> b!4322876 (= e!2689516 Nil!48384)))

(declare-fun b!4322877 () Bool)

(declare-fun e!2689512 () Bool)

(declare-fun tp!1327014 () Bool)

(assert (=> b!4322877 (= e!2689512 (and tp!1327014 mapRes!21197))))

(declare-fun condMapEmpty!21197 () Bool)

(declare-fun mapDefault!21197 () List!48508)

(assert (=> b!4322877 (= condMapEmpty!21197 (= (arr!7696 (_values!5056 (v!42774 (underlying!9739 (v!42775 (underlying!9740 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48508)) mapDefault!21197)))))

(declare-fun b!4322878 () Bool)

(declare-fun e!2689517 () Bool)

(declare-fun e!2689514 () Bool)

(assert (=> b!4322878 (= e!2689517 e!2689514)))

(declare-fun res!1771656 () Bool)

(assert (=> b!4322878 (=> (not res!1771656) (not e!2689514))))

(declare-fun lt!1540564 () List!48508)

(declare-datatypes ((tuple2!47204 0))(
  ( (tuple2!47205 (_1!26889 Bool) (_2!26889 MutLongMap!4755)) )
))
(declare-fun update!531 (MutLongMap!4755 (_ BitVec 64) List!48508) tuple2!47204)

(assert (=> b!4322878 (= res!1771656 (_1!26889 (update!531 (v!42775 (underlying!9740 thiss!42308)) lt!1540560 lt!1540564)))))

(declare-fun lt!1540563 () List!48508)

(declare-fun v!9179 () V!9836)

(declare-fun key!2048 () K!9634)

(assert (=> b!4322878 (= lt!1540564 (Cons!48384 (tuple2!47201 key!2048 v!9179) lt!1540563))))

(assert (=> b!4322878 (= lt!1540563 e!2689516)))

(declare-fun c!735346 () Bool)

(declare-fun contains!10433 (MutLongMap!4755 (_ BitVec 64)) Bool)

(assert (=> b!4322878 (= c!735346 (contains!10433 (v!42775 (underlying!9740 thiss!42308)) lt!1540560))))

(declare-fun hash!1183 (Hashable!4671 K!9634) (_ BitVec 64))

(assert (=> b!4322878 (= lt!1540560 (hash!1183 (hashF!6933 thiss!42308) key!2048))))

(declare-fun b!4322879 () Bool)

(declare-datatypes ((Unit!67853 0))(
  ( (Unit!67854) )
))
(declare-fun e!2689523 () Unit!67853)

(declare-fun lt!1540561 () Unit!67853)

(assert (=> b!4322879 (= e!2689523 lt!1540561)))

(declare-fun lt!1540565 () Unit!67853)

(declare-fun lt!1540567 () ListLongMap!1175)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!231 (List!48509 (_ BitVec 64) List!48508 Hashable!4671) Unit!67853)

(assert (=> b!4322879 (= lt!1540565 (lemmaInLongMapAllKeySameHashThenForTuple!231 (toList!2558 lt!1540567) lt!1540560 lt!1540563 (hashF!6933 thiss!42308)))))

(declare-fun allKeysSameHash!246 (List!48508 (_ BitVec 64) Hashable!4671) Bool)

(assert (=> b!4322879 (allKeysSameHash!246 lt!1540563 lt!1540560 (hashF!6933 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!222 (List!48508 K!9634 (_ BitVec 64) Hashable!4671) Unit!67853)

(assert (=> b!4322879 (= lt!1540561 (lemmaRemovePairForKeyPreservesHash!222 lt!1540563 key!2048 lt!1540560 (hashF!6933 thiss!42308)))))

(declare-fun removePairForKey!269 (List!48508 K!9634) List!48508)

(assert (=> b!4322879 (allKeysSameHash!246 (removePairForKey!269 lt!1540563 key!2048) lt!1540560 (hashF!6933 thiss!42308))))

(declare-fun b!4322880 () Bool)

(declare-fun e!2689522 () Bool)

(declare-fun e!2689521 () Bool)

(assert (=> b!4322880 (= e!2689522 e!2689521)))

(declare-fun b!4322881 () Bool)

(declare-fun res!1771654 () Bool)

(declare-fun e!2689520 () Bool)

(assert (=> b!4322881 (=> res!1771654 e!2689520)))

(assert (=> b!4322881 (= res!1771654 (not (allKeysSameHash!246 lt!1540564 lt!1540560 (hashF!6933 thiss!42308))))))

(declare-fun b!4322882 () Bool)

(declare-fun e!2689515 () Bool)

(assert (=> b!4322882 (= e!2689521 e!2689515)))

(declare-fun b!4322883 () Bool)

(declare-fun Unit!67855 () Unit!67853)

(assert (=> b!4322883 (= e!2689523 Unit!67855)))

(declare-fun b!4322884 () Bool)

(declare-fun e!2689518 () Bool)

(declare-fun lt!1540562 () MutLongMap!4755)

(get-info :version)

(assert (=> b!4322884 (= e!2689518 (and e!2689522 ((_ is LongMap!4755) lt!1540562)))))

(assert (=> b!4322884 (= lt!1540562 (v!42775 (underlying!9740 thiss!42308)))))

(declare-fun tp!1327015 () Bool)

(declare-fun tp!1327020 () Bool)

(declare-fun array_inv!5541 (array!17242) Bool)

(declare-fun array_inv!5542 (array!17244) Bool)

(assert (=> b!4322885 (= e!2689515 (and tp!1327019 tp!1327015 tp!1327020 (array_inv!5541 (_keys!5081 (v!42774 (underlying!9739 (v!42775 (underlying!9740 thiss!42308)))))) (array_inv!5542 (_values!5056 (v!42774 (underlying!9739 (v!42775 (underlying!9740 thiss!42308)))))) e!2689512))))

(declare-fun b!4322887 () Bool)

(declare-fun res!1771655 () Bool)

(declare-fun e!2689511 () Bool)

(assert (=> b!4322887 (=> (not res!1771655) (not e!2689511))))

(declare-fun valid!3767 (MutableMap!4661) Bool)

(assert (=> b!4322887 (= res!1771655 (valid!3767 thiss!42308))))

(declare-fun mapNonEmpty!21197 () Bool)

(declare-fun tp!1327018 () Bool)

(declare-fun tp!1327017 () Bool)

(assert (=> mapNonEmpty!21197 (= mapRes!21197 (and tp!1327018 tp!1327017))))

(declare-fun mapRest!21197 () (Array (_ BitVec 32) List!48508))

(declare-fun mapKey!21197 () (_ BitVec 32))

(declare-fun mapValue!21197 () List!48508)

(assert (=> mapNonEmpty!21197 (= (arr!7696 (_values!5056 (v!42774 (underlying!9739 (v!42775 (underlying!9740 thiss!42308)))))) (store mapRest!21197 mapKey!21197 mapValue!21197))))

(declare-fun b!4322888 () Bool)

(assert (=> b!4322888 (= e!2689511 e!2689517)))

(declare-fun res!1771653 () Bool)

(assert (=> b!4322888 (=> (not res!1771653) (not e!2689517))))

(declare-fun contains!10434 (MutableMap!4661 K!9634) Bool)

(assert (=> b!4322888 (= res!1771653 (not (contains!10434 thiss!42308 key!2048)))))

(declare-fun map!10412 (MutLongMap!4755) ListLongMap!1175)

(assert (=> b!4322888 (= lt!1540567 (map!10412 (v!42775 (underlying!9740 thiss!42308))))))

(declare-datatypes ((ListMap!1835 0))(
  ( (ListMap!1836 (toList!2559 List!48508)) )
))
(declare-fun lt!1540566 () ListMap!1835)

(declare-fun map!10413 (MutableMap!4661) ListMap!1835)

(assert (=> b!4322888 (= lt!1540566 (map!10413 thiss!42308))))

(declare-fun e!2689510 () Bool)

(assert (=> b!4322889 (= e!2689510 (and e!2689518 tp!1327016))))

(declare-fun res!1771651 () Bool)

(assert (=> start!416122 (=> (not res!1771651) (not e!2689511))))

(assert (=> start!416122 (= res!1771651 ((_ is HashMap!4661) thiss!42308))))

(assert (=> start!416122 e!2689511))

(assert (=> start!416122 e!2689510))

(declare-fun tp_is_empty!24117 () Bool)

(assert (=> start!416122 tp_is_empty!24117))

(declare-fun tp_is_empty!24119 () Bool)

(assert (=> start!416122 tp_is_empty!24119))

(declare-fun b!4322886 () Bool)

(assert (=> b!4322886 (= e!2689514 (not e!2689520))))

(declare-fun res!1771650 () Bool)

(assert (=> b!4322886 (=> res!1771650 e!2689520)))

(declare-fun lambda!133953 () Int)

(declare-fun forall!8815 (List!48509 Int) Bool)

(assert (=> b!4322886 (= res!1771650 (not (forall!8815 (toList!2558 lt!1540567) lambda!133953)))))

(assert (=> b!4322886 e!2689513))

(declare-fun res!1771652 () Bool)

(assert (=> b!4322886 (=> (not res!1771652) (not e!2689513))))

(assert (=> b!4322886 (= res!1771652 (forall!8815 (toList!2558 lt!1540559) lambda!133953))))

(declare-fun +!333 (ListLongMap!1175 tuple2!47202) ListLongMap!1175)

(assert (=> b!4322886 (= lt!1540559 (+!333 lt!1540567 (tuple2!47203 lt!1540560 lt!1540564)))))

(declare-fun lt!1540568 () Unit!67853)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!182 (ListLongMap!1175 (_ BitVec 64) List!48508 Hashable!4671) Unit!67853)

(assert (=> b!4322886 (= lt!1540568 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!182 lt!1540567 lt!1540560 lt!1540564 (hashF!6933 thiss!42308)))))

(declare-fun lt!1540558 () Unit!67853)

(assert (=> b!4322886 (= lt!1540558 e!2689523)))

(declare-fun c!735347 () Bool)

(declare-fun isEmpty!28123 (List!48508) Bool)

(assert (=> b!4322886 (= c!735347 (not (isEmpty!28123 lt!1540563)))))

(declare-fun b!4322890 () Bool)

(declare-fun res!1771657 () Bool)

(assert (=> b!4322890 (=> res!1771657 e!2689520)))

(assert (=> b!4322890 (= res!1771657 (not (allKeysSameHashInMap!389 lt!1540567 (hashF!6933 thiss!42308))))))

(declare-fun b!4322891 () Bool)

(declare-fun contains!10435 (ListMap!1835 K!9634) Bool)

(declare-fun extractMap!369 (List!48509) ListMap!1835)

(assert (=> b!4322891 (= e!2689520 (not (contains!10435 (extractMap!369 (toList!2558 lt!1540567)) key!2048)))))

(assert (= (and start!416122 res!1771651) b!4322887))

(assert (= (and b!4322887 res!1771655) b!4322888))

(assert (= (and b!4322888 res!1771653) b!4322878))

(assert (= (and b!4322878 c!735346) b!4322875))

(assert (= (and b!4322878 (not c!735346)) b!4322876))

(assert (= (and b!4322878 res!1771656) b!4322886))

(assert (= (and b!4322886 c!735347) b!4322879))

(assert (= (and b!4322886 (not c!735347)) b!4322883))

(assert (= (and b!4322886 res!1771652) b!4322874))

(assert (= (and b!4322886 (not res!1771650)) b!4322890))

(assert (= (and b!4322890 (not res!1771657)) b!4322881))

(assert (= (and b!4322881 (not res!1771654)) b!4322891))

(assert (= (and b!4322877 condMapEmpty!21197) mapIsEmpty!21197))

(assert (= (and b!4322877 (not condMapEmpty!21197)) mapNonEmpty!21197))

(assert (= b!4322885 b!4322877))

(assert (= b!4322882 b!4322885))

(assert (= b!4322880 b!4322882))

(assert (= (and b!4322884 ((_ is LongMap!4755) (v!42775 (underlying!9740 thiss!42308)))) b!4322880))

(assert (= b!4322889 b!4322884))

(assert (= (and start!416122 ((_ is HashMap!4661) thiss!42308)) b!4322889))

(declare-fun m!4917341 () Bool)

(assert (=> b!4322888 m!4917341))

(declare-fun m!4917343 () Bool)

(assert (=> b!4322888 m!4917343))

(declare-fun m!4917345 () Bool)

(assert (=> b!4322888 m!4917345))

(declare-fun m!4917347 () Bool)

(assert (=> b!4322890 m!4917347))

(declare-fun m!4917349 () Bool)

(assert (=> mapNonEmpty!21197 m!4917349))

(declare-fun m!4917351 () Bool)

(assert (=> b!4322885 m!4917351))

(declare-fun m!4917353 () Bool)

(assert (=> b!4322885 m!4917353))

(declare-fun m!4917355 () Bool)

(assert (=> b!4322874 m!4917355))

(declare-fun m!4917357 () Bool)

(assert (=> b!4322887 m!4917357))

(declare-fun m!4917359 () Bool)

(assert (=> b!4322875 m!4917359))

(declare-fun m!4917361 () Bool)

(assert (=> b!4322886 m!4917361))

(declare-fun m!4917363 () Bool)

(assert (=> b!4322886 m!4917363))

(declare-fun m!4917365 () Bool)

(assert (=> b!4322886 m!4917365))

(declare-fun m!4917367 () Bool)

(assert (=> b!4322886 m!4917367))

(declare-fun m!4917369 () Bool)

(assert (=> b!4322886 m!4917369))

(declare-fun m!4917371 () Bool)

(assert (=> b!4322879 m!4917371))

(declare-fun m!4917373 () Bool)

(assert (=> b!4322879 m!4917373))

(declare-fun m!4917375 () Bool)

(assert (=> b!4322879 m!4917375))

(declare-fun m!4917377 () Bool)

(assert (=> b!4322879 m!4917377))

(assert (=> b!4322879 m!4917371))

(declare-fun m!4917379 () Bool)

(assert (=> b!4322879 m!4917379))

(declare-fun m!4917381 () Bool)

(assert (=> b!4322881 m!4917381))

(declare-fun m!4917383 () Bool)

(assert (=> b!4322891 m!4917383))

(assert (=> b!4322891 m!4917383))

(declare-fun m!4917385 () Bool)

(assert (=> b!4322891 m!4917385))

(declare-fun m!4917387 () Bool)

(assert (=> b!4322878 m!4917387))

(declare-fun m!4917389 () Bool)

(assert (=> b!4322878 m!4917389))

(declare-fun m!4917391 () Bool)

(assert (=> b!4322878 m!4917391))

(check-sat (not b_next!129685) (not b!4322877) (not b!4322890) (not b!4322879) (not b!4322881) (not b!4322887) (not b!4322886) b_and!340539 (not b!4322888) (not b!4322878) (not b!4322891) (not mapNonEmpty!21197) b_and!340541 (not b!4322875) (not b_next!129683) (not b!4322874) (not b!4322885) tp_is_empty!24117 tp_is_empty!24119)
(check-sat b_and!340539 b_and!340541 (not b_next!129685) (not b_next!129683))
(get-model)

(declare-fun b!4322910 () Bool)

(declare-fun e!2689538 () Bool)

(declare-fun call!299827 () ListLongMap!1175)

(declare-fun call!299828 () ListLongMap!1175)

(assert (=> b!4322910 (= e!2689538 (= call!299827 call!299828))))

(declare-fun bm!299822 () Bool)

(assert (=> bm!299822 (= call!299828 (map!10412 (v!42775 (underlying!9740 thiss!42308))))))

(declare-fun b!4322911 () Bool)

(declare-fun e!2689534 () tuple2!47204)

(assert (=> b!4322911 (= e!2689534 (tuple2!47205 true (v!42775 (underlying!9740 thiss!42308))))))

(declare-fun bm!299823 () Bool)

(declare-fun lt!1540577 () tuple2!47204)

(assert (=> bm!299823 (= call!299827 (map!10412 (_2!26889 lt!1540577)))))

(declare-fun b!4322912 () Bool)

(declare-fun e!2689537 () Bool)

(assert (=> b!4322912 (= e!2689537 e!2689538)))

(declare-fun c!735355 () Bool)

(assert (=> b!4322912 (= c!735355 (_1!26889 lt!1540577))))

(declare-fun b!4322913 () Bool)

(declare-fun lt!1540580 () tuple2!47204)

(assert (=> b!4322913 (= e!2689534 (tuple2!47205 (_1!26889 lt!1540580) (_2!26889 lt!1540580)))))

(declare-fun repack!85 (MutLongMap!4755) tuple2!47204)

(assert (=> b!4322913 (= lt!1540580 (repack!85 (v!42775 (underlying!9740 thiss!42308))))))

(declare-fun b!4322915 () Bool)

(declare-fun e!2689536 () Bool)

(assert (=> b!4322915 (= e!2689536 (= call!299827 (+!333 call!299828 (tuple2!47203 lt!1540560 lt!1540564))))))

(declare-fun b!4322916 () Bool)

(declare-fun e!2689535 () tuple2!47204)

(declare-fun lt!1540578 () tuple2!47204)

(assert (=> b!4322916 (= e!2689535 (tuple2!47205 false (_2!26889 lt!1540578)))))

(declare-fun d!1271174 () Bool)

(assert (=> d!1271174 e!2689537))

(declare-fun res!1771664 () Bool)

(assert (=> d!1271174 (=> (not res!1771664) (not e!2689537))))

(assert (=> d!1271174 (= res!1771664 ((_ is LongMap!4755) (_2!26889 lt!1540577)))))

(assert (=> d!1271174 (= lt!1540577 e!2689535)))

(declare-fun c!735354 () Bool)

(assert (=> d!1271174 (= c!735354 (_1!26889 lt!1540578))))

(assert (=> d!1271174 (= lt!1540578 e!2689534)))

(declare-fun c!735356 () Bool)

(declare-fun imbalanced!81 (MutLongMap!4755) Bool)

(assert (=> d!1271174 (= c!735356 (imbalanced!81 (v!42775 (underlying!9740 thiss!42308))))))

(declare-fun valid!3768 (MutLongMap!4755) Bool)

(assert (=> d!1271174 (valid!3768 (v!42775 (underlying!9740 thiss!42308)))))

(assert (=> d!1271174 (= (update!531 (v!42775 (underlying!9740 thiss!42308)) lt!1540560 lt!1540564) lt!1540577)))

(declare-fun b!4322914 () Bool)

(assert (=> b!4322914 (= e!2689538 e!2689536)))

(declare-fun res!1771665 () Bool)

(declare-fun contains!10436 (ListLongMap!1175 (_ BitVec 64)) Bool)

(assert (=> b!4322914 (= res!1771665 (contains!10436 call!299827 lt!1540560))))

(assert (=> b!4322914 (=> (not res!1771665) (not e!2689536))))

(declare-fun b!4322917 () Bool)

(declare-datatypes ((tuple2!47206 0))(
  ( (tuple2!47207 (_1!26890 Bool) (_2!26890 LongMapFixedSize!9510)) )
))
(declare-fun lt!1540579 () tuple2!47206)

(assert (=> b!4322917 (= e!2689535 (tuple2!47205 (_1!26890 lt!1540579) (LongMap!4755 (Cell!18830 (_2!26890 lt!1540579)))))))

(declare-fun update!532 (LongMapFixedSize!9510 (_ BitVec 64) List!48508) tuple2!47206)

(assert (=> b!4322917 (= lt!1540579 (update!532 (v!42774 (underlying!9739 (_2!26889 lt!1540578))) lt!1540560 lt!1540564))))

(declare-fun b!4322918 () Bool)

(declare-fun res!1771666 () Bool)

(assert (=> b!4322918 (=> (not res!1771666) (not e!2689537))))

(assert (=> b!4322918 (= res!1771666 (valid!3768 (_2!26889 lt!1540577)))))

(assert (= (and d!1271174 c!735356) b!4322913))

(assert (= (and d!1271174 (not c!735356)) b!4322911))

(assert (= (and d!1271174 c!735354) b!4322917))

(assert (= (and d!1271174 (not c!735354)) b!4322916))

(assert (= (and d!1271174 res!1771664) b!4322918))

(assert (= (and b!4322918 res!1771666) b!4322912))

(assert (= (and b!4322912 c!735355) b!4322914))

(assert (= (and b!4322912 (not c!735355)) b!4322910))

(assert (= (and b!4322914 res!1771665) b!4322915))

(assert (= (or b!4322914 b!4322915 b!4322910) bm!299823))

(assert (= (or b!4322915 b!4322910) bm!299822))

(declare-fun m!4917393 () Bool)

(assert (=> b!4322917 m!4917393))

(declare-fun m!4917395 () Bool)

(assert (=> bm!299823 m!4917395))

(assert (=> bm!299822 m!4917343))

(declare-fun m!4917397 () Bool)

(assert (=> b!4322913 m!4917397))

(declare-fun m!4917399 () Bool)

(assert (=> d!1271174 m!4917399))

(declare-fun m!4917401 () Bool)

(assert (=> d!1271174 m!4917401))

(declare-fun m!4917403 () Bool)

(assert (=> b!4322918 m!4917403))

(declare-fun m!4917405 () Bool)

(assert (=> b!4322915 m!4917405))

(declare-fun m!4917407 () Bool)

(assert (=> b!4322914 m!4917407))

(assert (=> b!4322878 d!1271174))

(declare-fun d!1271176 () Bool)

(declare-fun lt!1540583 () Bool)

(assert (=> d!1271176 (= lt!1540583 (contains!10436 (map!10412 (v!42775 (underlying!9740 thiss!42308))) lt!1540560))))

(declare-fun contains!10437 (LongMapFixedSize!9510 (_ BitVec 64)) Bool)

(assert (=> d!1271176 (= lt!1540583 (contains!10437 (v!42774 (underlying!9739 (v!42775 (underlying!9740 thiss!42308)))) lt!1540560))))

(assert (=> d!1271176 (valid!3768 (v!42775 (underlying!9740 thiss!42308)))))

(assert (=> d!1271176 (= (contains!10433 (v!42775 (underlying!9740 thiss!42308)) lt!1540560) lt!1540583)))

(declare-fun bs!606843 () Bool)

(assert (= bs!606843 d!1271176))

(assert (=> bs!606843 m!4917343))

(assert (=> bs!606843 m!4917343))

(declare-fun m!4917409 () Bool)

(assert (=> bs!606843 m!4917409))

(declare-fun m!4917411 () Bool)

(assert (=> bs!606843 m!4917411))

(assert (=> bs!606843 m!4917401))

(assert (=> b!4322878 d!1271176))

(declare-fun d!1271178 () Bool)

(declare-fun hash!1187 (Hashable!4671 K!9634) (_ BitVec 64))

(assert (=> d!1271178 (= (hash!1183 (hashF!6933 thiss!42308) key!2048) (hash!1187 (hashF!6933 thiss!42308) key!2048))))

(declare-fun bs!606844 () Bool)

(assert (= bs!606844 d!1271178))

(declare-fun m!4917413 () Bool)

(assert (=> bs!606844 m!4917413))

(assert (=> b!4322878 d!1271178))

(declare-fun bs!606845 () Bool)

(declare-fun d!1271180 () Bool)

(assert (= bs!606845 (and d!1271180 b!4322886)))

(declare-fun lambda!133956 () Int)

(assert (=> bs!606845 (not (= lambda!133956 lambda!133953))))

(assert (=> d!1271180 true))

(assert (=> d!1271180 (= (allKeysSameHashInMap!389 lt!1540559 (hashF!6933 thiss!42308)) (forall!8815 (toList!2558 lt!1540559) lambda!133956))))

(declare-fun bs!606846 () Bool)

(assert (= bs!606846 d!1271180))

(declare-fun m!4917415 () Bool)

(assert (=> bs!606846 m!4917415))

(assert (=> b!4322874 d!1271180))

(declare-fun b!4322939 () Bool)

(declare-fun e!2689555 () Bool)

(declare-fun e!2689552 () Bool)

(assert (=> b!4322939 (= e!2689555 e!2689552)))

(declare-fun res!1771673 () Bool)

(assert (=> b!4322939 (=> (not res!1771673) (not e!2689552))))

(declare-datatypes ((Option!10303 0))(
  ( (None!10302) (Some!10302 (v!42780 V!9836)) )
))
(declare-fun isDefined!7604 (Option!10303) Bool)

(declare-fun getValueByKey!299 (List!48508 K!9634) Option!10303)

(assert (=> b!4322939 (= res!1771673 (isDefined!7604 (getValueByKey!299 (toList!2559 (extractMap!369 (toList!2558 lt!1540567))) key!2048)))))

(declare-fun bm!299826 () Bool)

(declare-fun call!299831 () Bool)

(declare-datatypes ((List!48510 0))(
  ( (Nil!48386) (Cons!48386 (h!53848 K!9634) (t!355398 List!48510)) )
))
(declare-fun e!2689554 () List!48510)

(declare-fun contains!10438 (List!48510 K!9634) Bool)

(assert (=> bm!299826 (= call!299831 (contains!10438 e!2689554 key!2048))))

(declare-fun c!735364 () Bool)

(declare-fun c!735365 () Bool)

(assert (=> bm!299826 (= c!735364 c!735365)))

(declare-fun b!4322940 () Bool)

(declare-fun e!2689556 () Unit!67853)

(declare-fun Unit!67856 () Unit!67853)

(assert (=> b!4322940 (= e!2689556 Unit!67856)))

(declare-fun d!1271182 () Bool)

(assert (=> d!1271182 e!2689555))

(declare-fun res!1771674 () Bool)

(assert (=> d!1271182 (=> res!1771674 e!2689555)))

(declare-fun e!2689553 () Bool)

(assert (=> d!1271182 (= res!1771674 e!2689553)))

(declare-fun res!1771675 () Bool)

(assert (=> d!1271182 (=> (not res!1771675) (not e!2689553))))

(declare-fun lt!1540600 () Bool)

(assert (=> d!1271182 (= res!1771675 (not lt!1540600))))

(declare-fun lt!1540606 () Bool)

(assert (=> d!1271182 (= lt!1540600 lt!1540606)))

(declare-fun lt!1540605 () Unit!67853)

(declare-fun e!2689551 () Unit!67853)

(assert (=> d!1271182 (= lt!1540605 e!2689551)))

(assert (=> d!1271182 (= c!735365 lt!1540606)))

(declare-fun containsKey!403 (List!48508 K!9634) Bool)

(assert (=> d!1271182 (= lt!1540606 (containsKey!403 (toList!2559 (extractMap!369 (toList!2558 lt!1540567))) key!2048))))

(assert (=> d!1271182 (= (contains!10435 (extractMap!369 (toList!2558 lt!1540567)) key!2048) lt!1540600)))

(declare-fun b!4322941 () Bool)

(declare-fun keys!16176 (ListMap!1835) List!48510)

(assert (=> b!4322941 (= e!2689553 (not (contains!10438 (keys!16176 (extractMap!369 (toList!2558 lt!1540567))) key!2048)))))

(declare-fun b!4322942 () Bool)

(assert (=> b!4322942 false))

(declare-fun lt!1540603 () Unit!67853)

(declare-fun lt!1540602 () Unit!67853)

(assert (=> b!4322942 (= lt!1540603 lt!1540602)))

(assert (=> b!4322942 (containsKey!403 (toList!2559 (extractMap!369 (toList!2558 lt!1540567))) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!54 (List!48508 K!9634) Unit!67853)

(assert (=> b!4322942 (= lt!1540602 (lemmaInGetKeysListThenContainsKey!54 (toList!2559 (extractMap!369 (toList!2558 lt!1540567))) key!2048))))

(declare-fun Unit!67857 () Unit!67853)

(assert (=> b!4322942 (= e!2689556 Unit!67857)))

(declare-fun b!4322943 () Bool)

(assert (=> b!4322943 (= e!2689554 (keys!16176 (extractMap!369 (toList!2558 lt!1540567))))))

(declare-fun b!4322944 () Bool)

(declare-fun getKeysList!57 (List!48508) List!48510)

(assert (=> b!4322944 (= e!2689554 (getKeysList!57 (toList!2559 (extractMap!369 (toList!2558 lt!1540567)))))))

(declare-fun b!4322945 () Bool)

(assert (=> b!4322945 (= e!2689552 (contains!10438 (keys!16176 (extractMap!369 (toList!2558 lt!1540567))) key!2048))))

(declare-fun b!4322946 () Bool)

(declare-fun lt!1540604 () Unit!67853)

(assert (=> b!4322946 (= e!2689551 lt!1540604)))

(declare-fun lt!1540607 () Unit!67853)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!218 (List!48508 K!9634) Unit!67853)

(assert (=> b!4322946 (= lt!1540607 (lemmaContainsKeyImpliesGetValueByKeyDefined!218 (toList!2559 (extractMap!369 (toList!2558 lt!1540567))) key!2048))))

(assert (=> b!4322946 (isDefined!7604 (getValueByKey!299 (toList!2559 (extractMap!369 (toList!2558 lt!1540567))) key!2048))))

(declare-fun lt!1540601 () Unit!67853)

(assert (=> b!4322946 (= lt!1540601 lt!1540607)))

(declare-fun lemmaInListThenGetKeysListContains!54 (List!48508 K!9634) Unit!67853)

(assert (=> b!4322946 (= lt!1540604 (lemmaInListThenGetKeysListContains!54 (toList!2559 (extractMap!369 (toList!2558 lt!1540567))) key!2048))))

(assert (=> b!4322946 call!299831))

(declare-fun b!4322947 () Bool)

(assert (=> b!4322947 (= e!2689551 e!2689556)))

(declare-fun c!735363 () Bool)

(assert (=> b!4322947 (= c!735363 call!299831)))

(assert (= (and d!1271182 c!735365) b!4322946))

(assert (= (and d!1271182 (not c!735365)) b!4322947))

(assert (= (and b!4322947 c!735363) b!4322942))

(assert (= (and b!4322947 (not c!735363)) b!4322940))

(assert (= (or b!4322946 b!4322947) bm!299826))

(assert (= (and bm!299826 c!735364) b!4322944))

(assert (= (and bm!299826 (not c!735364)) b!4322943))

(assert (= (and d!1271182 res!1771675) b!4322941))

(assert (= (and d!1271182 (not res!1771674)) b!4322939))

(assert (= (and b!4322939 res!1771673) b!4322945))

(declare-fun m!4917417 () Bool)

(assert (=> b!4322946 m!4917417))

(declare-fun m!4917419 () Bool)

(assert (=> b!4322946 m!4917419))

(assert (=> b!4322946 m!4917419))

(declare-fun m!4917421 () Bool)

(assert (=> b!4322946 m!4917421))

(declare-fun m!4917423 () Bool)

(assert (=> b!4322946 m!4917423))

(declare-fun m!4917425 () Bool)

(assert (=> bm!299826 m!4917425))

(declare-fun m!4917427 () Bool)

(assert (=> d!1271182 m!4917427))

(declare-fun m!4917429 () Bool)

(assert (=> b!4322944 m!4917429))

(assert (=> b!4322945 m!4917383))

(declare-fun m!4917431 () Bool)

(assert (=> b!4322945 m!4917431))

(assert (=> b!4322945 m!4917431))

(declare-fun m!4917433 () Bool)

(assert (=> b!4322945 m!4917433))

(assert (=> b!4322942 m!4917427))

(declare-fun m!4917435 () Bool)

(assert (=> b!4322942 m!4917435))

(assert (=> b!4322943 m!4917383))

(assert (=> b!4322943 m!4917431))

(assert (=> b!4322939 m!4917419))

(assert (=> b!4322939 m!4917419))

(assert (=> b!4322939 m!4917421))

(assert (=> b!4322941 m!4917383))

(assert (=> b!4322941 m!4917431))

(assert (=> b!4322941 m!4917431))

(assert (=> b!4322941 m!4917433))

(assert (=> b!4322891 d!1271182))

(declare-fun bs!606847 () Bool)

(declare-fun d!1271184 () Bool)

(assert (= bs!606847 (and d!1271184 b!4322886)))

(declare-fun lambda!133959 () Int)

(assert (=> bs!606847 (= lambda!133959 lambda!133953)))

(declare-fun bs!606848 () Bool)

(assert (= bs!606848 (and d!1271184 d!1271180)))

(assert (=> bs!606848 (not (= lambda!133959 lambda!133956))))

(declare-fun lt!1540610 () ListMap!1835)

(declare-fun invariantList!602 (List!48508) Bool)

(assert (=> d!1271184 (invariantList!602 (toList!2559 lt!1540610))))

(declare-fun e!2689559 () ListMap!1835)

(assert (=> d!1271184 (= lt!1540610 e!2689559)))

(declare-fun c!735368 () Bool)

(assert (=> d!1271184 (= c!735368 ((_ is Cons!48385) (toList!2558 lt!1540567)))))

(assert (=> d!1271184 (forall!8815 (toList!2558 lt!1540567) lambda!133959)))

(assert (=> d!1271184 (= (extractMap!369 (toList!2558 lt!1540567)) lt!1540610)))

(declare-fun b!4322952 () Bool)

(declare-fun addToMapMapFromBucket!52 (List!48508 ListMap!1835) ListMap!1835)

(assert (=> b!4322952 (= e!2689559 (addToMapMapFromBucket!52 (_2!26888 (h!53846 (toList!2558 lt!1540567))) (extractMap!369 (t!355395 (toList!2558 lt!1540567)))))))

(declare-fun b!4322953 () Bool)

(assert (=> b!4322953 (= e!2689559 (ListMap!1836 Nil!48384))))

(assert (= (and d!1271184 c!735368) b!4322952))

(assert (= (and d!1271184 (not c!735368)) b!4322953))

(declare-fun m!4917437 () Bool)

(assert (=> d!1271184 m!4917437))

(declare-fun m!4917439 () Bool)

(assert (=> d!1271184 m!4917439))

(declare-fun m!4917441 () Bool)

(assert (=> b!4322952 m!4917441))

(assert (=> b!4322952 m!4917441))

(declare-fun m!4917443 () Bool)

(assert (=> b!4322952 m!4917443))

(assert (=> b!4322891 d!1271184))

(declare-fun bs!606849 () Bool)

(declare-fun b!4322985 () Bool)

(assert (= bs!606849 (and b!4322985 b!4322886)))

(declare-fun lambda!133962 () Int)

(assert (=> bs!606849 (= lambda!133962 lambda!133953)))

(declare-fun bs!606850 () Bool)

(assert (= bs!606850 (and b!4322985 d!1271180)))

(assert (=> bs!606850 (not (= lambda!133962 lambda!133956))))

(declare-fun bs!606851 () Bool)

(assert (= bs!606851 (and b!4322985 d!1271184)))

(assert (=> bs!606851 (= lambda!133962 lambda!133959)))

(declare-fun b!4322976 () Bool)

(assert (=> b!4322976 false))

(declare-fun lt!1540655 () Unit!67853)

(declare-fun lt!1540668 () Unit!67853)

(assert (=> b!4322976 (= lt!1540655 lt!1540668)))

(declare-fun lt!1540661 () ListLongMap!1175)

(assert (=> b!4322976 (contains!10435 (extractMap!369 (toList!2558 lt!1540661)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!163 (ListLongMap!1175 K!9634 Hashable!4671) Unit!67853)

(assert (=> b!4322976 (= lt!1540668 (lemmaInLongMapThenInGenericMap!163 lt!1540661 key!2048 (hashF!6933 thiss!42308)))))

(declare-fun call!299849 () ListLongMap!1175)

(assert (=> b!4322976 (= lt!1540661 call!299849)))

(declare-fun e!2689574 () Unit!67853)

(declare-fun Unit!67858 () Unit!67853)

(assert (=> b!4322976 (= e!2689574 Unit!67858)))

(declare-fun bm!299839 () Bool)

(declare-fun call!299844 () (_ BitVec 64))

(assert (=> bm!299839 (= call!299844 (hash!1183 (hashF!6933 thiss!42308) key!2048))))

(declare-fun b!4322977 () Bool)

(declare-fun e!2689576 () Bool)

(declare-fun call!299845 () Bool)

(assert (=> b!4322977 (= e!2689576 call!299845)))

(declare-fun b!4322978 () Bool)

(assert (=> b!4322978 false))

(declare-fun lt!1540662 () Unit!67853)

(declare-fun lt!1540663 () Unit!67853)

(assert (=> b!4322978 (= lt!1540662 lt!1540663)))

(declare-fun lt!1540659 () List!48509)

(declare-fun lt!1540660 () (_ BitVec 64))

(declare-fun lt!1540651 () List!48508)

(declare-fun contains!10439 (List!48509 tuple2!47202) Bool)

(assert (=> b!4322978 (contains!10439 lt!1540659 (tuple2!47203 lt!1540660 lt!1540651))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!175 (List!48509 (_ BitVec 64) List!48508) Unit!67853)

(assert (=> b!4322978 (= lt!1540663 (lemmaGetValueByKeyImpliesContainsTuple!175 lt!1540659 lt!1540660 lt!1540651))))

(assert (=> b!4322978 (= lt!1540651 (apply!11143 (v!42775 (underlying!9740 thiss!42308)) lt!1540660))))

(assert (=> b!4322978 (= lt!1540659 (toList!2558 (map!10412 (v!42775 (underlying!9740 thiss!42308)))))))

(declare-fun lt!1540652 () Unit!67853)

(declare-fun lt!1540654 () Unit!67853)

(assert (=> b!4322978 (= lt!1540652 lt!1540654)))

(declare-fun lt!1540658 () List!48509)

(declare-datatypes ((Option!10304 0))(
  ( (None!10303) (Some!10303 (v!42781 List!48508)) )
))
(declare-fun isDefined!7605 (Option!10304) Bool)

(declare-fun getValueByKey!300 (List!48509 (_ BitVec 64)) Option!10304)

(assert (=> b!4322978 (isDefined!7605 (getValueByKey!300 lt!1540658 lt!1540660))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!219 (List!48509 (_ BitVec 64)) Unit!67853)

(assert (=> b!4322978 (= lt!1540654 (lemmaContainsKeyImpliesGetValueByKeyDefined!219 lt!1540658 lt!1540660))))

(assert (=> b!4322978 (= lt!1540658 (toList!2558 (map!10412 (v!42775 (underlying!9740 thiss!42308)))))))

(declare-fun lt!1540653 () Unit!67853)

(declare-fun lt!1540667 () Unit!67853)

(assert (=> b!4322978 (= lt!1540653 lt!1540667)))

(declare-fun lt!1540664 () List!48509)

(declare-fun containsKey!404 (List!48509 (_ BitVec 64)) Bool)

(assert (=> b!4322978 (containsKey!404 lt!1540664 lt!1540660)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!164 (List!48509 (_ BitVec 64)) Unit!67853)

(assert (=> b!4322978 (= lt!1540667 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!164 lt!1540664 lt!1540660))))

(assert (=> b!4322978 (= lt!1540664 (toList!2558 (map!10412 (v!42775 (underlying!9740 thiss!42308)))))))

(declare-fun e!2689577 () Unit!67853)

(declare-fun Unit!67859 () Unit!67853)

(assert (=> b!4322978 (= e!2689577 Unit!67859)))

(declare-fun b!4322979 () Bool)

(declare-fun Unit!67860 () Unit!67853)

(assert (=> b!4322979 (= e!2689574 Unit!67860)))

(declare-fun b!4322980 () Bool)

(declare-fun e!2689580 () Bool)

(assert (=> b!4322980 (= e!2689580 call!299845)))

(declare-fun c!735380 () Bool)

(declare-fun bm!299840 () Bool)

(declare-fun lt!1540657 () ListLongMap!1175)

(declare-fun call!299847 () Bool)

(assert (=> bm!299840 (= call!299847 (contains!10436 (ite c!735380 lt!1540657 call!299849) call!299844))))

(declare-fun d!1271186 () Bool)

(declare-fun lt!1540670 () Bool)

(assert (=> d!1271186 (= lt!1540670 (contains!10435 (map!10413 thiss!42308) key!2048))))

(declare-fun e!2689575 () Bool)

(assert (=> d!1271186 (= lt!1540670 e!2689575)))

(declare-fun res!1771684 () Bool)

(assert (=> d!1271186 (=> (not res!1771684) (not e!2689575))))

(assert (=> d!1271186 (= res!1771684 (contains!10433 (v!42775 (underlying!9740 thiss!42308)) lt!1540660))))

(declare-fun lt!1540666 () Unit!67853)

(declare-fun e!2689579 () Unit!67853)

(assert (=> d!1271186 (= lt!1540666 e!2689579)))

(assert (=> d!1271186 (= c!735380 (contains!10435 (extractMap!369 (toList!2558 (map!10412 (v!42775 (underlying!9740 thiss!42308))))) key!2048))))

(declare-fun lt!1540656 () Unit!67853)

(declare-fun e!2689578 () Unit!67853)

(assert (=> d!1271186 (= lt!1540656 e!2689578)))

(declare-fun c!735378 () Bool)

(assert (=> d!1271186 (= c!735378 (contains!10433 (v!42775 (underlying!9740 thiss!42308)) lt!1540660))))

(assert (=> d!1271186 (= lt!1540660 (hash!1183 (hashF!6933 thiss!42308) key!2048))))

(assert (=> d!1271186 (valid!3767 thiss!42308)))

(assert (=> d!1271186 (= (contains!10434 thiss!42308 key!2048) lt!1540670)))

(declare-fun b!4322981 () Bool)

(assert (=> b!4322981 (= e!2689579 e!2689574)))

(declare-fun res!1771683 () Bool)

(assert (=> b!4322981 (= res!1771683 call!299847)))

(assert (=> b!4322981 (=> (not res!1771683) (not e!2689580))))

(declare-fun c!735379 () Bool)

(assert (=> b!4322981 (= c!735379 e!2689580)))

(declare-fun b!4322982 () Bool)

(declare-fun Unit!67861 () Unit!67853)

(assert (=> b!4322982 (= e!2689578 Unit!67861)))

(declare-fun b!4322983 () Bool)

(declare-fun Unit!67862 () Unit!67853)

(assert (=> b!4322983 (= e!2689577 Unit!67862)))

(declare-fun bm!299841 () Bool)

(declare-datatypes ((Option!10305 0))(
  ( (None!10304) (Some!10304 (v!42782 tuple2!47200)) )
))
(declare-fun call!299848 () Option!10305)

(declare-fun isDefined!7606 (Option!10305) Bool)

(assert (=> bm!299841 (= call!299845 (isDefined!7606 call!299848))))

(declare-fun b!4322984 () Bool)

(declare-fun getPair!163 (List!48508 K!9634) Option!10305)

(assert (=> b!4322984 (= e!2689575 (isDefined!7606 (getPair!163 (apply!11143 (v!42775 (underlying!9740 thiss!42308)) lt!1540660) key!2048)))))

(declare-fun forallContained!1535 (List!48509 Int tuple2!47202) Unit!67853)

(assert (=> b!4322985 (= e!2689578 (forallContained!1535 (toList!2558 (map!10412 (v!42775 (underlying!9740 thiss!42308)))) lambda!133962 (tuple2!47203 lt!1540660 (apply!11143 (v!42775 (underlying!9740 thiss!42308)) lt!1540660))))))

(declare-fun c!735377 () Bool)

(assert (=> b!4322985 (= c!735377 (not (contains!10439 (toList!2558 (map!10412 (v!42775 (underlying!9740 thiss!42308)))) (tuple2!47203 lt!1540660 (apply!11143 (v!42775 (underlying!9740 thiss!42308)) lt!1540660)))))))

(declare-fun lt!1540665 () Unit!67853)

(assert (=> b!4322985 (= lt!1540665 e!2689577)))

(declare-fun bm!299842 () Bool)

(assert (=> bm!299842 (= call!299849 (map!10412 (v!42775 (underlying!9740 thiss!42308))))))

(declare-fun b!4322986 () Bool)

(declare-fun lt!1540669 () Unit!67853)

(assert (=> b!4322986 (= e!2689579 lt!1540669)))

(assert (=> b!4322986 (= lt!1540657 call!299849)))

(declare-fun lemmaInGenericMapThenInLongMap!163 (ListLongMap!1175 K!9634 Hashable!4671) Unit!67853)

(assert (=> b!4322986 (= lt!1540669 (lemmaInGenericMapThenInLongMap!163 lt!1540657 key!2048 (hashF!6933 thiss!42308)))))

(declare-fun res!1771682 () Bool)

(assert (=> b!4322986 (= res!1771682 call!299847)))

(assert (=> b!4322986 (=> (not res!1771682) (not e!2689576))))

(assert (=> b!4322986 e!2689576))

(declare-fun bm!299843 () Bool)

(declare-fun call!299846 () List!48508)

(assert (=> bm!299843 (= call!299848 (getPair!163 call!299846 key!2048))))

(declare-fun bm!299844 () Bool)

(declare-fun apply!11144 (ListLongMap!1175 (_ BitVec 64)) List!48508)

(assert (=> bm!299844 (= call!299846 (apply!11144 (ite c!735380 lt!1540657 call!299849) call!299844))))

(assert (= (and d!1271186 c!735378) b!4322985))

(assert (= (and d!1271186 (not c!735378)) b!4322982))

(assert (= (and b!4322985 c!735377) b!4322978))

(assert (= (and b!4322985 (not c!735377)) b!4322983))

(assert (= (and d!1271186 c!735380) b!4322986))

(assert (= (and d!1271186 (not c!735380)) b!4322981))

(assert (= (and b!4322986 res!1771682) b!4322977))

(assert (= (and b!4322981 res!1771683) b!4322980))

(assert (= (and b!4322981 c!735379) b!4322976))

(assert (= (and b!4322981 (not c!735379)) b!4322979))

(assert (= (or b!4322986 b!4322981 b!4322980 b!4322976) bm!299842))

(assert (= (or b!4322986 b!4322977 b!4322981 b!4322980) bm!299839))

(assert (= (or b!4322986 b!4322981) bm!299840))

(assert (= (or b!4322977 b!4322980) bm!299844))

(assert (= (or b!4322977 b!4322980) bm!299843))

(assert (= (or b!4322977 b!4322980) bm!299841))

(assert (= (and d!1271186 res!1771684) b!4322984))

(declare-fun m!4917445 () Bool)

(assert (=> b!4322986 m!4917445))

(declare-fun m!4917447 () Bool)

(assert (=> bm!299844 m!4917447))

(declare-fun m!4917449 () Bool)

(assert (=> b!4322976 m!4917449))

(assert (=> b!4322976 m!4917449))

(declare-fun m!4917451 () Bool)

(assert (=> b!4322976 m!4917451))

(declare-fun m!4917453 () Bool)

(assert (=> b!4322976 m!4917453))

(declare-fun m!4917455 () Bool)

(assert (=> bm!299843 m!4917455))

(assert (=> b!4322985 m!4917343))

(declare-fun m!4917457 () Bool)

(assert (=> b!4322985 m!4917457))

(declare-fun m!4917459 () Bool)

(assert (=> b!4322985 m!4917459))

(declare-fun m!4917461 () Bool)

(assert (=> b!4322985 m!4917461))

(declare-fun m!4917463 () Bool)

(assert (=> bm!299840 m!4917463))

(assert (=> b!4322984 m!4917457))

(assert (=> b!4322984 m!4917457))

(declare-fun m!4917465 () Bool)

(assert (=> b!4322984 m!4917465))

(assert (=> b!4322984 m!4917465))

(declare-fun m!4917467 () Bool)

(assert (=> b!4322984 m!4917467))

(assert (=> d!1271186 m!4917343))

(assert (=> d!1271186 m!4917345))

(assert (=> d!1271186 m!4917345))

(declare-fun m!4917469 () Bool)

(assert (=> d!1271186 m!4917469))

(assert (=> d!1271186 m!4917391))

(assert (=> d!1271186 m!4917357))

(declare-fun m!4917471 () Bool)

(assert (=> d!1271186 m!4917471))

(declare-fun m!4917473 () Bool)

(assert (=> d!1271186 m!4917473))

(assert (=> d!1271186 m!4917471))

(declare-fun m!4917475 () Bool)

(assert (=> d!1271186 m!4917475))

(declare-fun m!4917477 () Bool)

(assert (=> b!4322978 m!4917477))

(declare-fun m!4917479 () Bool)

(assert (=> b!4322978 m!4917479))

(assert (=> b!4322978 m!4917343))

(assert (=> b!4322978 m!4917457))

(declare-fun m!4917481 () Bool)

(assert (=> b!4322978 m!4917481))

(assert (=> b!4322978 m!4917477))

(declare-fun m!4917483 () Bool)

(assert (=> b!4322978 m!4917483))

(declare-fun m!4917485 () Bool)

(assert (=> b!4322978 m!4917485))

(declare-fun m!4917487 () Bool)

(assert (=> b!4322978 m!4917487))

(declare-fun m!4917489 () Bool)

(assert (=> b!4322978 m!4917489))

(assert (=> bm!299842 m!4917343))

(assert (=> bm!299839 m!4917391))

(declare-fun m!4917491 () Bool)

(assert (=> bm!299841 m!4917491))

(assert (=> b!4322888 d!1271186))

(declare-fun d!1271188 () Bool)

(declare-fun map!10414 (LongMapFixedSize!9510) ListLongMap!1175)

(assert (=> d!1271188 (= (map!10412 (v!42775 (underlying!9740 thiss!42308))) (map!10414 (v!42774 (underlying!9739 (v!42775 (underlying!9740 thiss!42308))))))))

(declare-fun bs!606852 () Bool)

(assert (= bs!606852 d!1271188))

(declare-fun m!4917493 () Bool)

(assert (=> bs!606852 m!4917493))

(assert (=> b!4322888 d!1271188))

(declare-fun d!1271190 () Bool)

(declare-fun lt!1540673 () ListMap!1835)

(assert (=> d!1271190 (invariantList!602 (toList!2559 lt!1540673))))

(assert (=> d!1271190 (= lt!1540673 (extractMap!369 (toList!2558 (map!10412 (v!42775 (underlying!9740 thiss!42308))))))))

(assert (=> d!1271190 (valid!3767 thiss!42308)))

(assert (=> d!1271190 (= (map!10413 thiss!42308) lt!1540673)))

(declare-fun bs!606853 () Bool)

(assert (= bs!606853 d!1271190))

(declare-fun m!4917495 () Bool)

(assert (=> bs!606853 m!4917495))

(assert (=> bs!606853 m!4917343))

(assert (=> bs!606853 m!4917471))

(assert (=> bs!606853 m!4917357))

(assert (=> b!4322888 d!1271190))

(declare-fun bs!606854 () Bool)

(declare-fun b!4322991 () Bool)

(assert (= bs!606854 (and b!4322991 b!4322886)))

(declare-fun lambda!133965 () Int)

(assert (=> bs!606854 (= lambda!133965 lambda!133953)))

(declare-fun bs!606855 () Bool)

(assert (= bs!606855 (and b!4322991 d!1271180)))

(assert (=> bs!606855 (not (= lambda!133965 lambda!133956))))

(declare-fun bs!606856 () Bool)

(assert (= bs!606856 (and b!4322991 d!1271184)))

(assert (=> bs!606856 (= lambda!133965 lambda!133959)))

(declare-fun bs!606857 () Bool)

(assert (= bs!606857 (and b!4322991 b!4322985)))

(assert (=> bs!606857 (= lambda!133965 lambda!133962)))

(declare-fun d!1271192 () Bool)

(declare-fun res!1771689 () Bool)

(declare-fun e!2689583 () Bool)

(assert (=> d!1271192 (=> (not res!1771689) (not e!2689583))))

(assert (=> d!1271192 (= res!1771689 (valid!3768 (v!42775 (underlying!9740 thiss!42308))))))

(assert (=> d!1271192 (= (valid!3767 thiss!42308) e!2689583)))

(declare-fun res!1771690 () Bool)

(assert (=> b!4322991 (=> (not res!1771690) (not e!2689583))))

(assert (=> b!4322991 (= res!1771690 (forall!8815 (toList!2558 (map!10412 (v!42775 (underlying!9740 thiss!42308)))) lambda!133965))))

(declare-fun b!4322992 () Bool)

(assert (=> b!4322992 (= e!2689583 (allKeysSameHashInMap!389 (map!10412 (v!42775 (underlying!9740 thiss!42308))) (hashF!6933 thiss!42308)))))

(assert (= (and d!1271192 res!1771689) b!4322991))

(assert (= (and b!4322991 res!1771690) b!4322992))

(assert (=> d!1271192 m!4917401))

(assert (=> b!4322991 m!4917343))

(declare-fun m!4917497 () Bool)

(assert (=> b!4322991 m!4917497))

(assert (=> b!4322992 m!4917343))

(assert (=> b!4322992 m!4917343))

(declare-fun m!4917499 () Bool)

(assert (=> b!4322992 m!4917499))

(assert (=> b!4322887 d!1271192))

(declare-fun bs!606858 () Bool)

(declare-fun d!1271194 () Bool)

(assert (= bs!606858 (and d!1271194 d!1271180)))

(declare-fun lambda!133970 () Int)

(assert (=> bs!606858 (not (= lambda!133970 lambda!133956))))

(declare-fun bs!606859 () Bool)

(assert (= bs!606859 (and d!1271194 b!4322886)))

(assert (=> bs!606859 (= lambda!133970 lambda!133953)))

(declare-fun bs!606860 () Bool)

(assert (= bs!606860 (and d!1271194 d!1271184)))

(assert (=> bs!606860 (= lambda!133970 lambda!133959)))

(declare-fun bs!606861 () Bool)

(assert (= bs!606861 (and d!1271194 b!4322985)))

(assert (=> bs!606861 (= lambda!133970 lambda!133962)))

(declare-fun bs!606862 () Bool)

(assert (= bs!606862 (and d!1271194 b!4322991)))

(assert (=> bs!606862 (= lambda!133970 lambda!133965)))

(declare-fun e!2689586 () Bool)

(assert (=> d!1271194 e!2689586))

(declare-fun res!1771693 () Bool)

(assert (=> d!1271194 (=> (not res!1771693) (not e!2689586))))

(declare-fun lt!1540679 () ListLongMap!1175)

(assert (=> d!1271194 (= res!1771693 (forall!8815 (toList!2558 lt!1540679) lambda!133970))))

(assert (=> d!1271194 (= lt!1540679 (+!333 lt!1540567 (tuple2!47203 lt!1540560 lt!1540564)))))

(declare-fun lt!1540678 () Unit!67853)

(declare-fun choose!26416 (ListLongMap!1175 (_ BitVec 64) List!48508 Hashable!4671) Unit!67853)

(assert (=> d!1271194 (= lt!1540678 (choose!26416 lt!1540567 lt!1540560 lt!1540564 (hashF!6933 thiss!42308)))))

(assert (=> d!1271194 (forall!8815 (toList!2558 lt!1540567) lambda!133970)))

(assert (=> d!1271194 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!182 lt!1540567 lt!1540560 lt!1540564 (hashF!6933 thiss!42308)) lt!1540678)))

(declare-fun b!4322995 () Bool)

(assert (=> b!4322995 (= e!2689586 (allKeysSameHashInMap!389 lt!1540679 (hashF!6933 thiss!42308)))))

(assert (= (and d!1271194 res!1771693) b!4322995))

(declare-fun m!4917501 () Bool)

(assert (=> d!1271194 m!4917501))

(assert (=> d!1271194 m!4917363))

(declare-fun m!4917503 () Bool)

(assert (=> d!1271194 m!4917503))

(declare-fun m!4917505 () Bool)

(assert (=> d!1271194 m!4917505))

(declare-fun m!4917507 () Bool)

(assert (=> b!4322995 m!4917507))

(assert (=> b!4322886 d!1271194))

(declare-fun d!1271196 () Bool)

(declare-fun res!1771698 () Bool)

(declare-fun e!2689591 () Bool)

(assert (=> d!1271196 (=> res!1771698 e!2689591)))

(assert (=> d!1271196 (= res!1771698 ((_ is Nil!48385) (toList!2558 lt!1540559)))))

(assert (=> d!1271196 (= (forall!8815 (toList!2558 lt!1540559) lambda!133953) e!2689591)))

(declare-fun b!4323000 () Bool)

(declare-fun e!2689592 () Bool)

(assert (=> b!4323000 (= e!2689591 e!2689592)))

(declare-fun res!1771699 () Bool)

(assert (=> b!4323000 (=> (not res!1771699) (not e!2689592))))

(declare-fun dynLambda!20509 (Int tuple2!47202) Bool)

(assert (=> b!4323000 (= res!1771699 (dynLambda!20509 lambda!133953 (h!53846 (toList!2558 lt!1540559))))))

(declare-fun b!4323001 () Bool)

(assert (=> b!4323001 (= e!2689592 (forall!8815 (t!355395 (toList!2558 lt!1540559)) lambda!133953))))

(assert (= (and d!1271196 (not res!1771698)) b!4323000))

(assert (= (and b!4323000 res!1771699) b!4323001))

(declare-fun b_lambda!127387 () Bool)

(assert (=> (not b_lambda!127387) (not b!4323000)))

(declare-fun m!4917509 () Bool)

(assert (=> b!4323000 m!4917509))

(declare-fun m!4917511 () Bool)

(assert (=> b!4323001 m!4917511))

(assert (=> b!4322886 d!1271196))

(declare-fun d!1271198 () Bool)

(declare-fun e!2689595 () Bool)

(assert (=> d!1271198 e!2689595))

(declare-fun res!1771704 () Bool)

(assert (=> d!1271198 (=> (not res!1771704) (not e!2689595))))

(declare-fun lt!1540690 () ListLongMap!1175)

(assert (=> d!1271198 (= res!1771704 (contains!10436 lt!1540690 (_1!26888 (tuple2!47203 lt!1540560 lt!1540564))))))

(declare-fun lt!1540688 () List!48509)

(assert (=> d!1271198 (= lt!1540690 (ListLongMap!1176 lt!1540688))))

(declare-fun lt!1540691 () Unit!67853)

(declare-fun lt!1540689 () Unit!67853)

(assert (=> d!1271198 (= lt!1540691 lt!1540689)))

(assert (=> d!1271198 (= (getValueByKey!300 lt!1540688 (_1!26888 (tuple2!47203 lt!1540560 lt!1540564))) (Some!10303 (_2!26888 (tuple2!47203 lt!1540560 lt!1540564))))))

(declare-fun lemmaContainsTupThenGetReturnValue!97 (List!48509 (_ BitVec 64) List!48508) Unit!67853)

(assert (=> d!1271198 (= lt!1540689 (lemmaContainsTupThenGetReturnValue!97 lt!1540688 (_1!26888 (tuple2!47203 lt!1540560 lt!1540564)) (_2!26888 (tuple2!47203 lt!1540560 lt!1540564))))))

(declare-fun insertStrictlySorted!57 (List!48509 (_ BitVec 64) List!48508) List!48509)

(assert (=> d!1271198 (= lt!1540688 (insertStrictlySorted!57 (toList!2558 lt!1540567) (_1!26888 (tuple2!47203 lt!1540560 lt!1540564)) (_2!26888 (tuple2!47203 lt!1540560 lt!1540564))))))

(assert (=> d!1271198 (= (+!333 lt!1540567 (tuple2!47203 lt!1540560 lt!1540564)) lt!1540690)))

(declare-fun b!4323006 () Bool)

(declare-fun res!1771705 () Bool)

(assert (=> b!4323006 (=> (not res!1771705) (not e!2689595))))

(assert (=> b!4323006 (= res!1771705 (= (getValueByKey!300 (toList!2558 lt!1540690) (_1!26888 (tuple2!47203 lt!1540560 lt!1540564))) (Some!10303 (_2!26888 (tuple2!47203 lt!1540560 lt!1540564)))))))

(declare-fun b!4323007 () Bool)

(assert (=> b!4323007 (= e!2689595 (contains!10439 (toList!2558 lt!1540690) (tuple2!47203 lt!1540560 lt!1540564)))))

(assert (= (and d!1271198 res!1771704) b!4323006))

(assert (= (and b!4323006 res!1771705) b!4323007))

(declare-fun m!4917513 () Bool)

(assert (=> d!1271198 m!4917513))

(declare-fun m!4917515 () Bool)

(assert (=> d!1271198 m!4917515))

(declare-fun m!4917517 () Bool)

(assert (=> d!1271198 m!4917517))

(declare-fun m!4917519 () Bool)

(assert (=> d!1271198 m!4917519))

(declare-fun m!4917521 () Bool)

(assert (=> b!4323006 m!4917521))

(declare-fun m!4917523 () Bool)

(assert (=> b!4323007 m!4917523))

(assert (=> b!4322886 d!1271198))

(declare-fun d!1271200 () Bool)

(declare-fun res!1771706 () Bool)

(declare-fun e!2689596 () Bool)

(assert (=> d!1271200 (=> res!1771706 e!2689596)))

(assert (=> d!1271200 (= res!1771706 ((_ is Nil!48385) (toList!2558 lt!1540567)))))

(assert (=> d!1271200 (= (forall!8815 (toList!2558 lt!1540567) lambda!133953) e!2689596)))

(declare-fun b!4323008 () Bool)

(declare-fun e!2689597 () Bool)

(assert (=> b!4323008 (= e!2689596 e!2689597)))

(declare-fun res!1771707 () Bool)

(assert (=> b!4323008 (=> (not res!1771707) (not e!2689597))))

(assert (=> b!4323008 (= res!1771707 (dynLambda!20509 lambda!133953 (h!53846 (toList!2558 lt!1540567))))))

(declare-fun b!4323009 () Bool)

(assert (=> b!4323009 (= e!2689597 (forall!8815 (t!355395 (toList!2558 lt!1540567)) lambda!133953))))

(assert (= (and d!1271200 (not res!1771706)) b!4323008))

(assert (= (and b!4323008 res!1771707) b!4323009))

(declare-fun b_lambda!127389 () Bool)

(assert (=> (not b_lambda!127389) (not b!4323008)))

(declare-fun m!4917525 () Bool)

(assert (=> b!4323008 m!4917525))

(declare-fun m!4917527 () Bool)

(assert (=> b!4323009 m!4917527))

(assert (=> b!4322886 d!1271200))

(declare-fun d!1271202 () Bool)

(assert (=> d!1271202 (= (isEmpty!28123 lt!1540563) ((_ is Nil!48384) lt!1540563))))

(assert (=> b!4322886 d!1271202))

(declare-fun d!1271204 () Bool)

(assert (=> d!1271204 true))

(assert (=> d!1271204 true))

(declare-fun lambda!133973 () Int)

(declare-fun forall!8816 (List!48508 Int) Bool)

(assert (=> d!1271204 (= (allKeysSameHash!246 lt!1540564 lt!1540560 (hashF!6933 thiss!42308)) (forall!8816 lt!1540564 lambda!133973))))

(declare-fun bs!606863 () Bool)

(assert (= bs!606863 d!1271204))

(declare-fun m!4917529 () Bool)

(assert (=> bs!606863 m!4917529))

(assert (=> b!4322881 d!1271204))

(declare-fun b!4323023 () Bool)

(declare-fun e!2689603 () List!48508)

(declare-fun e!2689602 () List!48508)

(assert (=> b!4323023 (= e!2689603 e!2689602)))

(declare-fun c!735385 () Bool)

(assert (=> b!4323023 (= c!735385 ((_ is Cons!48384) lt!1540563))))

(declare-fun b!4323025 () Bool)

(assert (=> b!4323025 (= e!2689602 Nil!48384)))

(declare-fun b!4323022 () Bool)

(assert (=> b!4323022 (= e!2689603 (t!355394 lt!1540563))))

(declare-fun d!1271206 () Bool)

(declare-fun lt!1540694 () List!48508)

(declare-fun containsKey!405 (List!48508 K!9634) Bool)

(assert (=> d!1271206 (not (containsKey!405 lt!1540694 key!2048))))

(assert (=> d!1271206 (= lt!1540694 e!2689603)))

(declare-fun c!735386 () Bool)

(assert (=> d!1271206 (= c!735386 (and ((_ is Cons!48384) lt!1540563) (= (_1!26887 (h!53845 lt!1540563)) key!2048)))))

(declare-fun noDuplicateKeys!263 (List!48508) Bool)

(assert (=> d!1271206 (noDuplicateKeys!263 lt!1540563)))

(assert (=> d!1271206 (= (removePairForKey!269 lt!1540563 key!2048) lt!1540694)))

(declare-fun b!4323024 () Bool)

(assert (=> b!4323024 (= e!2689602 (Cons!48384 (h!53845 lt!1540563) (removePairForKey!269 (t!355394 lt!1540563) key!2048)))))

(assert (= (and d!1271206 c!735386) b!4323022))

(assert (= (and d!1271206 (not c!735386)) b!4323023))

(assert (= (and b!4323023 c!735385) b!4323024))

(assert (= (and b!4323023 (not c!735385)) b!4323025))

(declare-fun m!4917531 () Bool)

(assert (=> d!1271206 m!4917531))

(declare-fun m!4917533 () Bool)

(assert (=> d!1271206 m!4917533))

(declare-fun m!4917535 () Bool)

(assert (=> b!4323024 m!4917535))

(assert (=> b!4322879 d!1271206))

(declare-fun d!1271208 () Bool)

(assert (=> d!1271208 (allKeysSameHash!246 (removePairForKey!269 lt!1540563 key!2048) lt!1540560 (hashF!6933 thiss!42308))))

(declare-fun lt!1540697 () Unit!67853)

(declare-fun choose!26417 (List!48508 K!9634 (_ BitVec 64) Hashable!4671) Unit!67853)

(assert (=> d!1271208 (= lt!1540697 (choose!26417 lt!1540563 key!2048 lt!1540560 (hashF!6933 thiss!42308)))))

(assert (=> d!1271208 (noDuplicateKeys!263 lt!1540563)))

(assert (=> d!1271208 (= (lemmaRemovePairForKeyPreservesHash!222 lt!1540563 key!2048 lt!1540560 (hashF!6933 thiss!42308)) lt!1540697)))

(declare-fun bs!606864 () Bool)

(assert (= bs!606864 d!1271208))

(assert (=> bs!606864 m!4917371))

(assert (=> bs!606864 m!4917371))

(assert (=> bs!606864 m!4917379))

(declare-fun m!4917537 () Bool)

(assert (=> bs!606864 m!4917537))

(assert (=> bs!606864 m!4917533))

(assert (=> b!4322879 d!1271208))

(declare-fun bs!606865 () Bool)

(declare-fun d!1271210 () Bool)

(assert (= bs!606865 (and d!1271210 d!1271204)))

(declare-fun lambda!133974 () Int)

(assert (=> bs!606865 (= lambda!133974 lambda!133973)))

(assert (=> d!1271210 true))

(assert (=> d!1271210 true))

(assert (=> d!1271210 (= (allKeysSameHash!246 lt!1540563 lt!1540560 (hashF!6933 thiss!42308)) (forall!8816 lt!1540563 lambda!133974))))

(declare-fun bs!606866 () Bool)

(assert (= bs!606866 d!1271210))

(declare-fun m!4917539 () Bool)

(assert (=> bs!606866 m!4917539))

(assert (=> b!4322879 d!1271210))

(declare-fun bs!606867 () Bool)

(declare-fun d!1271212 () Bool)

(assert (= bs!606867 (and d!1271212 d!1271180)))

(declare-fun lambda!133977 () Int)

(assert (=> bs!606867 (= lambda!133977 lambda!133956)))

(declare-fun bs!606868 () Bool)

(assert (= bs!606868 (and d!1271212 b!4322886)))

(assert (=> bs!606868 (not (= lambda!133977 lambda!133953))))

(declare-fun bs!606869 () Bool)

(assert (= bs!606869 (and d!1271212 d!1271184)))

(assert (=> bs!606869 (not (= lambda!133977 lambda!133959))))

(declare-fun bs!606870 () Bool)

(assert (= bs!606870 (and d!1271212 d!1271194)))

(assert (=> bs!606870 (not (= lambda!133977 lambda!133970))))

(declare-fun bs!606871 () Bool)

(assert (= bs!606871 (and d!1271212 b!4322985)))

(assert (=> bs!606871 (not (= lambda!133977 lambda!133962))))

(declare-fun bs!606872 () Bool)

(assert (= bs!606872 (and d!1271212 b!4322991)))

(assert (=> bs!606872 (not (= lambda!133977 lambda!133965))))

(assert (=> d!1271212 true))

(assert (=> d!1271212 (allKeysSameHash!246 lt!1540563 lt!1540560 (hashF!6933 thiss!42308))))

(declare-fun lt!1540700 () Unit!67853)

(declare-fun choose!26418 (List!48509 (_ BitVec 64) List!48508 Hashable!4671) Unit!67853)

(assert (=> d!1271212 (= lt!1540700 (choose!26418 (toList!2558 lt!1540567) lt!1540560 lt!1540563 (hashF!6933 thiss!42308)))))

(assert (=> d!1271212 (forall!8815 (toList!2558 lt!1540567) lambda!133977)))

(assert (=> d!1271212 (= (lemmaInLongMapAllKeySameHashThenForTuple!231 (toList!2558 lt!1540567) lt!1540560 lt!1540563 (hashF!6933 thiss!42308)) lt!1540700)))

(declare-fun bs!606873 () Bool)

(assert (= bs!606873 d!1271212))

(assert (=> bs!606873 m!4917373))

(declare-fun m!4917541 () Bool)

(assert (=> bs!606873 m!4917541))

(declare-fun m!4917543 () Bool)

(assert (=> bs!606873 m!4917543))

(assert (=> b!4322879 d!1271212))

(declare-fun bs!606874 () Bool)

(declare-fun d!1271214 () Bool)

(assert (= bs!606874 (and d!1271214 d!1271204)))

(declare-fun lambda!133978 () Int)

(assert (=> bs!606874 (= lambda!133978 lambda!133973)))

(declare-fun bs!606875 () Bool)

(assert (= bs!606875 (and d!1271214 d!1271210)))

(assert (=> bs!606875 (= lambda!133978 lambda!133974)))

(assert (=> d!1271214 true))

(assert (=> d!1271214 true))

(assert (=> d!1271214 (= (allKeysSameHash!246 (removePairForKey!269 lt!1540563 key!2048) lt!1540560 (hashF!6933 thiss!42308)) (forall!8816 (removePairForKey!269 lt!1540563 key!2048) lambda!133978))))

(declare-fun bs!606876 () Bool)

(assert (= bs!606876 d!1271214))

(assert (=> bs!606876 m!4917371))

(declare-fun m!4917545 () Bool)

(assert (=> bs!606876 m!4917545))

(assert (=> b!4322879 d!1271214))

(declare-fun d!1271216 () Bool)

(declare-fun e!2689606 () Bool)

(assert (=> d!1271216 e!2689606))

(declare-fun c!735389 () Bool)

(assert (=> d!1271216 (= c!735389 (contains!10433 (v!42775 (underlying!9740 thiss!42308)) lt!1540560))))

(declare-fun lt!1540703 () List!48508)

(declare-fun apply!11145 (LongMapFixedSize!9510 (_ BitVec 64)) List!48508)

(assert (=> d!1271216 (= lt!1540703 (apply!11145 (v!42774 (underlying!9739 (v!42775 (underlying!9740 thiss!42308)))) lt!1540560))))

(assert (=> d!1271216 (valid!3768 (v!42775 (underlying!9740 thiss!42308)))))

(assert (=> d!1271216 (= (apply!11143 (v!42775 (underlying!9740 thiss!42308)) lt!1540560) lt!1540703)))

(declare-fun b!4323030 () Bool)

(declare-fun get!15678 (Option!10304) List!48508)

(assert (=> b!4323030 (= e!2689606 (= lt!1540703 (get!15678 (getValueByKey!300 (toList!2558 (map!10412 (v!42775 (underlying!9740 thiss!42308)))) lt!1540560))))))

(declare-fun b!4323031 () Bool)

(declare-fun dynLambda!20510 (Int (_ BitVec 64)) List!48508)

(assert (=> b!4323031 (= e!2689606 (= lt!1540703 (dynLambda!20510 (defaultEntry!5160 (v!42774 (underlying!9739 (v!42775 (underlying!9740 thiss!42308))))) lt!1540560)))))

(assert (=> b!4323031 ((_ is LongMap!4755) (v!42775 (underlying!9740 thiss!42308)))))

(assert (= (and d!1271216 c!735389) b!4323030))

(assert (= (and d!1271216 (not c!735389)) b!4323031))

(declare-fun b_lambda!127391 () Bool)

(assert (=> (not b_lambda!127391) (not b!4323031)))

(declare-fun t!355397 () Bool)

(declare-fun tb!257371 () Bool)

(assert (=> (and b!4322885 (= (defaultEntry!5160 (v!42774 (underlying!9739 (v!42775 (underlying!9740 thiss!42308))))) (defaultEntry!5160 (v!42774 (underlying!9739 (v!42775 (underlying!9740 thiss!42308)))))) t!355397) tb!257371))

(assert (=> b!4323031 t!355397))

(declare-fun result!314888 () Bool)

(declare-fun b_and!340543 () Bool)

(assert (= b_and!340539 (and (=> t!355397 result!314888) b_and!340543)))

(assert (=> d!1271216 m!4917389))

(declare-fun m!4917547 () Bool)

(assert (=> d!1271216 m!4917547))

(assert (=> d!1271216 m!4917401))

(assert (=> b!4323030 m!4917343))

(declare-fun m!4917549 () Bool)

(assert (=> b!4323030 m!4917549))

(assert (=> b!4323030 m!4917549))

(declare-fun m!4917551 () Bool)

(assert (=> b!4323030 m!4917551))

(declare-fun m!4917553 () Bool)

(assert (=> b!4323031 m!4917553))

(assert (=> b!4322875 d!1271216))

(declare-fun bs!606877 () Bool)

(declare-fun d!1271218 () Bool)

(assert (= bs!606877 (and d!1271218 d!1271212)))

(declare-fun lambda!133979 () Int)

(assert (=> bs!606877 (= lambda!133979 lambda!133977)))

(declare-fun bs!606878 () Bool)

(assert (= bs!606878 (and d!1271218 d!1271180)))

(assert (=> bs!606878 (= lambda!133979 lambda!133956)))

(declare-fun bs!606879 () Bool)

(assert (= bs!606879 (and d!1271218 b!4322886)))

(assert (=> bs!606879 (not (= lambda!133979 lambda!133953))))

(declare-fun bs!606880 () Bool)

(assert (= bs!606880 (and d!1271218 d!1271184)))

(assert (=> bs!606880 (not (= lambda!133979 lambda!133959))))

(declare-fun bs!606881 () Bool)

(assert (= bs!606881 (and d!1271218 d!1271194)))

(assert (=> bs!606881 (not (= lambda!133979 lambda!133970))))

(declare-fun bs!606882 () Bool)

(assert (= bs!606882 (and d!1271218 b!4322985)))

(assert (=> bs!606882 (not (= lambda!133979 lambda!133962))))

(declare-fun bs!606883 () Bool)

(assert (= bs!606883 (and d!1271218 b!4322991)))

(assert (=> bs!606883 (not (= lambda!133979 lambda!133965))))

(assert (=> d!1271218 true))

(assert (=> d!1271218 (= (allKeysSameHashInMap!389 lt!1540567 (hashF!6933 thiss!42308)) (forall!8815 (toList!2558 lt!1540567) lambda!133979))))

(declare-fun bs!606884 () Bool)

(assert (= bs!606884 d!1271218))

(declare-fun m!4917555 () Bool)

(assert (=> bs!606884 m!4917555))

(assert (=> b!4322890 d!1271218))

(declare-fun d!1271220 () Bool)

(assert (=> d!1271220 (= (array_inv!5541 (_keys!5081 (v!42774 (underlying!9739 (v!42775 (underlying!9740 thiss!42308)))))) (bvsge (size!35734 (_keys!5081 (v!42774 (underlying!9739 (v!42775 (underlying!9740 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4322885 d!1271220))

(declare-fun d!1271222 () Bool)

(assert (=> d!1271222 (= (array_inv!5542 (_values!5056 (v!42774 (underlying!9739 (v!42775 (underlying!9740 thiss!42308)))))) (bvsge (size!35735 (_values!5056 (v!42774 (underlying!9739 (v!42775 (underlying!9740 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4322885 d!1271222))

(declare-fun mapIsEmpty!21200 () Bool)

(declare-fun mapRes!21200 () Bool)

(assert (=> mapIsEmpty!21200 mapRes!21200))

(declare-fun tp!1327027 () Bool)

(declare-fun e!2689612 () Bool)

(declare-fun b!4323039 () Bool)

(assert (=> b!4323039 (= e!2689612 (and tp_is_empty!24117 tp_is_empty!24119 tp!1327027))))

(declare-fun condMapEmpty!21200 () Bool)

(declare-fun mapDefault!21200 () List!48508)

(assert (=> mapNonEmpty!21197 (= condMapEmpty!21200 (= mapRest!21197 ((as const (Array (_ BitVec 32) List!48508)) mapDefault!21200)))))

(assert (=> mapNonEmpty!21197 (= tp!1327018 (and e!2689612 mapRes!21200))))

(declare-fun mapNonEmpty!21200 () Bool)

(declare-fun tp!1327028 () Bool)

(declare-fun e!2689611 () Bool)

(assert (=> mapNonEmpty!21200 (= mapRes!21200 (and tp!1327028 e!2689611))))

(declare-fun mapValue!21200 () List!48508)

(declare-fun mapKey!21200 () (_ BitVec 32))

(declare-fun mapRest!21200 () (Array (_ BitVec 32) List!48508))

(assert (=> mapNonEmpty!21200 (= mapRest!21197 (store mapRest!21200 mapKey!21200 mapValue!21200))))

(declare-fun tp!1327029 () Bool)

(declare-fun b!4323038 () Bool)

(assert (=> b!4323038 (= e!2689611 (and tp_is_empty!24117 tp_is_empty!24119 tp!1327029))))

(assert (= (and mapNonEmpty!21197 condMapEmpty!21200) mapIsEmpty!21200))

(assert (= (and mapNonEmpty!21197 (not condMapEmpty!21200)) mapNonEmpty!21200))

(assert (= (and mapNonEmpty!21200 ((_ is Cons!48384) mapValue!21200)) b!4323038))

(assert (= (and mapNonEmpty!21197 ((_ is Cons!48384) mapDefault!21200)) b!4323039))

(declare-fun m!4917557 () Bool)

(assert (=> mapNonEmpty!21200 m!4917557))

(declare-fun tp!1327032 () Bool)

(declare-fun e!2689615 () Bool)

(declare-fun b!4323044 () Bool)

(assert (=> b!4323044 (= e!2689615 (and tp_is_empty!24117 tp_is_empty!24119 tp!1327032))))

(assert (=> mapNonEmpty!21197 (= tp!1327017 e!2689615)))

(assert (= (and mapNonEmpty!21197 ((_ is Cons!48384) mapValue!21197)) b!4323044))

(declare-fun b!4323045 () Bool)

(declare-fun tp!1327033 () Bool)

(declare-fun e!2689616 () Bool)

(assert (=> b!4323045 (= e!2689616 (and tp_is_empty!24117 tp_is_empty!24119 tp!1327033))))

(assert (=> b!4322877 (= tp!1327014 e!2689616)))

(assert (= (and b!4322877 ((_ is Cons!48384) mapDefault!21197)) b!4323045))

(declare-fun e!2689617 () Bool)

(declare-fun tp!1327034 () Bool)

(declare-fun b!4323046 () Bool)

(assert (=> b!4323046 (= e!2689617 (and tp_is_empty!24117 tp_is_empty!24119 tp!1327034))))

(assert (=> b!4322885 (= tp!1327015 e!2689617)))

(assert (= (and b!4322885 ((_ is Cons!48384) (zeroValue!5032 (v!42774 (underlying!9739 (v!42775 (underlying!9740 thiss!42308))))))) b!4323046))

(declare-fun b!4323047 () Bool)

(declare-fun tp!1327035 () Bool)

(declare-fun e!2689618 () Bool)

(assert (=> b!4323047 (= e!2689618 (and tp_is_empty!24117 tp_is_empty!24119 tp!1327035))))

(assert (=> b!4322885 (= tp!1327020 e!2689618)))

(assert (= (and b!4322885 ((_ is Cons!48384) (minValue!5032 (v!42774 (underlying!9739 (v!42775 (underlying!9740 thiss!42308))))))) b!4323047))

(declare-fun b_lambda!127393 () Bool)

(assert (= b_lambda!127391 (or (and b!4322885 b_free!128979) b_lambda!127393)))

(declare-fun b_lambda!127395 () Bool)

(assert (= b_lambda!127389 (or b!4322886 b_lambda!127395)))

(declare-fun bs!606885 () Bool)

(declare-fun d!1271224 () Bool)

(assert (= bs!606885 (and d!1271224 b!4322886)))

(assert (=> bs!606885 (= (dynLambda!20509 lambda!133953 (h!53846 (toList!2558 lt!1540567))) (noDuplicateKeys!263 (_2!26888 (h!53846 (toList!2558 lt!1540567)))))))

(declare-fun m!4917559 () Bool)

(assert (=> bs!606885 m!4917559))

(assert (=> b!4323008 d!1271224))

(declare-fun b_lambda!127397 () Bool)

(assert (= b_lambda!127387 (or b!4322886 b_lambda!127397)))

(declare-fun bs!606886 () Bool)

(declare-fun d!1271226 () Bool)

(assert (= bs!606886 (and d!1271226 b!4322886)))

(assert (=> bs!606886 (= (dynLambda!20509 lambda!133953 (h!53846 (toList!2558 lt!1540559))) (noDuplicateKeys!263 (_2!26888 (h!53846 (toList!2558 lt!1540559)))))))

(declare-fun m!4917561 () Bool)

(assert (=> bs!606886 m!4917561))

(assert (=> b!4323000 d!1271226))

(check-sat (not d!1271190) (not bm!299841) (not d!1271178) b_and!340543 b_and!340541 (not bm!299823) (not b_lambda!127393) (not b!4322946) (not d!1271180) (not b_next!129685) (not d!1271198) (not b!4323024) (not b!4323006) (not d!1271184) (not b!4323030) (not b_lambda!127397) (not b!4322991) (not d!1271194) (not tb!257371) (not d!1271192) (not d!1271212) (not bm!299822) (not d!1271206) (not bm!299826) (not mapNonEmpty!21200) (not b!4322943) (not d!1271182) (not b!4323045) (not bm!299839) (not b!4323044) (not b!4322939) (not b!4322942) (not bm!299840) (not d!1271218) (not b_lambda!127395) (not b_next!129683) (not d!1271174) (not bm!299843) (not b!4322952) (not b!4323007) (not b!4322944) (not b!4323039) (not b!4322914) (not b!4323009) (not bs!606886) (not b!4322945) (not d!1271216) (not b!4322985) (not b!4322986) (not b!4323047) (not bm!299844) (not b!4322976) tp_is_empty!24117 tp_is_empty!24119 (not b!4322918) (not b!4322995) (not b!4322915) (not b!4322917) (not b!4322941) (not b!4322984) (not d!1271188) (not b!4322992) (not b!4323038) (not d!1271210) (not b!4322978) (not d!1271208) (not b!4322913) (not bs!606885) (not b!4323046) (not d!1271214) (not b!4323001) (not d!1271176) (not d!1271186) (not bm!299842) (not d!1271204))
(check-sat b_and!340543 b_and!340541 (not b_next!129685) (not b_next!129683))
