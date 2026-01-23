; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416588 () Bool)

(assert start!416588)

(declare-fun b!4325663 () Bool)

(declare-fun b_free!129067 () Bool)

(declare-fun b_next!129771 () Bool)

(assert (=> b!4325663 (= b_free!129067 (not b_next!129771))))

(declare-fun tp!1327608 () Bool)

(declare-fun b_and!340651 () Bool)

(assert (=> b!4325663 (= tp!1327608 b_and!340651)))

(declare-fun b!4325662 () Bool)

(declare-fun b_free!129069 () Bool)

(declare-fun b_next!129773 () Bool)

(assert (=> b!4325662 (= b_free!129069 (not b_next!129773))))

(declare-fun tp!1327612 () Bool)

(declare-fun b_and!340653 () Bool)

(assert (=> b!4325662 (= tp!1327612 b_and!340653)))

(declare-fun e!2691476 () Bool)

(declare-fun e!2691475 () Bool)

(assert (=> b!4325662 (= e!2691476 (and e!2691475 tp!1327612))))

(declare-fun mapNonEmpty!21288 () Bool)

(declare-fun mapRes!21288 () Bool)

(declare-fun tp!1327606 () Bool)

(declare-fun tp!1327610 () Bool)

(assert (=> mapNonEmpty!21288 (= mapRes!21288 (and tp!1327606 tp!1327610))))

(declare-fun mapKey!21288 () (_ BitVec 32))

(declare-datatypes ((V!9891 0))(
  ( (V!9892 (val!16009 Int)) )
))
(declare-datatypes ((K!9689 0))(
  ( (K!9690 (val!16010 Int)) )
))
(declare-datatypes ((tuple2!47342 0))(
  ( (tuple2!47343 (_1!26959 K!9689) (_2!26959 V!9891)) )
))
(declare-datatypes ((List!48555 0))(
  ( (Nil!48431) (Cons!48431 (h!53899 tuple2!47342) (t!355459 List!48555)) )
))
(declare-datatypes ((array!17346 0))(
  ( (array!17347 (arr!7739 (Array (_ BitVec 32) (_ BitVec 64))) (size!35778 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4693 0))(
  ( (HashableExt!4692 (__x!30356 Int)) )
))
(declare-datatypes ((array!17348 0))(
  ( (array!17349 (arr!7740 (Array (_ BitVec 32) List!48555)) (size!35779 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9554 0))(
  ( (LongMapFixedSize!9555 (defaultEntry!5182 Int) (mask!13428 (_ BitVec 32)) (extraKeys!5042 (_ BitVec 32)) (zeroValue!5054 List!48555) (minValue!5054 List!48555) (_size!9599 (_ BitVec 32)) (_keys!5103 array!17346) (_values!5078 array!17348) (_vacant!4840 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18917 0))(
  ( (Cell!18918 (v!42880 LongMapFixedSize!9554)) )
))
(declare-datatypes ((MutLongMap!4777 0))(
  ( (LongMap!4777 (underlying!9783 Cell!18917)) (MutLongMapExt!4776 (__x!30357 Int)) )
))
(declare-datatypes ((Cell!18919 0))(
  ( (Cell!18920 (v!42881 MutLongMap!4777)) )
))
(declare-datatypes ((MutableMap!4683 0))(
  ( (MutableMapExt!4682 (__x!30358 Int)) (HashMap!4683 (underlying!9784 Cell!18919) (hashF!6999 Hashable!4693) (_size!9600 (_ BitVec 32)) (defaultValue!4854 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4683)

(declare-fun mapValue!21288 () List!48555)

(declare-fun mapRest!21288 () (Array (_ BitVec 32) List!48555))

(assert (=> mapNonEmpty!21288 (= (arr!7740 (_values!5078 (v!42880 (underlying!9783 (v!42881 (underlying!9784 thiss!42308)))))) (store mapRest!21288 mapKey!21288 mapValue!21288))))

(declare-fun e!2691473 () Bool)

(declare-fun e!2691474 () Bool)

(declare-fun tp!1327607 () Bool)

(declare-fun tp!1327611 () Bool)

(declare-fun array_inv!5577 (array!17346) Bool)

(declare-fun array_inv!5578 (array!17348) Bool)

(assert (=> b!4325663 (= e!2691474 (and tp!1327608 tp!1327611 tp!1327607 (array_inv!5577 (_keys!5103 (v!42880 (underlying!9783 (v!42881 (underlying!9784 thiss!42308)))))) (array_inv!5578 (_values!5078 (v!42880 (underlying!9783 (v!42881 (underlying!9784 thiss!42308)))))) e!2691473))))

(declare-fun b!4325664 () Bool)

(declare-fun e!2691471 () Bool)

(declare-fun lt!1542882 () MutableMap!4683)

(declare-datatypes ((ListMap!1877 0))(
  ( (ListMap!1878 (toList!2600 List!48555)) )
))
(declare-fun lt!1542879 () ListMap!1877)

(declare-fun map!10471 (MutableMap!4683) ListMap!1877)

(assert (=> b!4325664 (= e!2691471 (not (= (map!10471 lt!1542882) lt!1542879)))))

(declare-fun valid!3794 (MutableMap!4683) Bool)

(assert (=> b!4325664 (valid!3794 lt!1542882)))

(declare-fun b!4325665 () Bool)

(declare-fun e!2691477 () Bool)

(declare-fun lt!1542883 () MutLongMap!4777)

(get-info :version)

(assert (=> b!4325665 (= e!2691475 (and e!2691477 ((_ is LongMap!4777) lt!1542883)))))

(assert (=> b!4325665 (= lt!1542883 (v!42881 (underlying!9784 thiss!42308)))))

(declare-fun b!4325666 () Bool)

(declare-fun res!1772692 () Bool)

(declare-fun e!2691472 () Bool)

(assert (=> b!4325666 (=> (not res!1772692) (not e!2691472))))

(assert (=> b!4325666 (= res!1772692 (valid!3794 thiss!42308))))

(declare-fun b!4325667 () Bool)

(declare-fun tp!1327609 () Bool)

(assert (=> b!4325667 (= e!2691473 (and tp!1327609 mapRes!21288))))

(declare-fun condMapEmpty!21288 () Bool)

(declare-fun mapDefault!21288 () List!48555)

(assert (=> b!4325667 (= condMapEmpty!21288 (= (arr!7740 (_values!5078 (v!42880 (underlying!9783 (v!42881 (underlying!9784 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48555)) mapDefault!21288)))))

(declare-fun b!4325668 () Bool)

(declare-fun e!2691470 () Bool)

(assert (=> b!4325668 (= e!2691477 e!2691470)))

(declare-fun b!4325669 () Bool)

(declare-fun e!2691469 () List!48555)

(assert (=> b!4325669 (= e!2691469 Nil!48431)))

(declare-fun res!1772693 () Bool)

(assert (=> start!416588 (=> (not res!1772693) (not e!2691472))))

(assert (=> start!416588 (= res!1772693 ((_ is HashMap!4683) thiss!42308))))

(assert (=> start!416588 e!2691472))

(assert (=> start!416588 e!2691476))

(declare-fun tp_is_empty!24205 () Bool)

(assert (=> start!416588 tp_is_empty!24205))

(declare-fun tp_is_empty!24207 () Bool)

(assert (=> start!416588 tp_is_empty!24207))

(declare-fun mapIsEmpty!21288 () Bool)

(assert (=> mapIsEmpty!21288 mapRes!21288))

(declare-fun b!4325670 () Bool)

(assert (=> b!4325670 (= e!2691470 e!2691474)))

(declare-fun b!4325671 () Bool)

(declare-fun e!2691479 () Bool)

(assert (=> b!4325671 (= e!2691479 e!2691471)))

(declare-fun res!1772694 () Bool)

(assert (=> b!4325671 (=> (not res!1772694) (not e!2691471))))

(declare-datatypes ((tuple2!47344 0))(
  ( (tuple2!47345 (_1!26960 Bool) (_2!26960 MutLongMap!4777)) )
))
(declare-fun lt!1542880 () tuple2!47344)

(assert (=> b!4325671 (= res!1772694 (not (_1!26960 lt!1542880)))))

(assert (=> b!4325671 (= lt!1542882 (HashMap!4683 (Cell!18920 (_2!26960 lt!1542880)) (hashF!6999 thiss!42308) (_size!9600 thiss!42308) (defaultValue!4854 thiss!42308)))))

(declare-fun v!9179 () V!9891)

(declare-fun lt!1542881 () (_ BitVec 64))

(declare-fun key!2048 () K!9689)

(declare-fun update!557 (MutLongMap!4777 (_ BitVec 64) List!48555) tuple2!47344)

(assert (=> b!4325671 (= lt!1542880 (update!557 (v!42881 (underlying!9784 thiss!42308)) lt!1542881 (Cons!48431 (tuple2!47343 key!2048 v!9179) e!2691469)))))

(declare-fun c!735929 () Bool)

(declare-fun contains!10514 (MutLongMap!4777 (_ BitVec 64)) Bool)

(assert (=> b!4325671 (= c!735929 (contains!10514 (v!42881 (underlying!9784 thiss!42308)) lt!1542881))))

(declare-fun hash!1237 (Hashable!4693 K!9689) (_ BitVec 64))

(assert (=> b!4325671 (= lt!1542881 (hash!1237 (hashF!6999 thiss!42308) key!2048))))

(declare-fun b!4325672 () Bool)

(assert (=> b!4325672 (= e!2691472 e!2691479)))

(declare-fun res!1772691 () Bool)

(assert (=> b!4325672 (=> (not res!1772691) (not e!2691479))))

(declare-fun contains!10515 (MutableMap!4683 K!9689) Bool)

(assert (=> b!4325672 (= res!1772691 (not (contains!10515 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!47346 0))(
  ( (tuple2!47347 (_1!26961 (_ BitVec 64)) (_2!26961 List!48555)) )
))
(declare-datatypes ((List!48556 0))(
  ( (Nil!48432) (Cons!48432 (h!53900 tuple2!47346) (t!355460 List!48556)) )
))
(declare-datatypes ((ListLongMap!1217 0))(
  ( (ListLongMap!1218 (toList!2601 List!48556)) )
))
(declare-fun lt!1542878 () ListLongMap!1217)

(declare-fun map!10472 (MutLongMap!4777) ListLongMap!1217)

(assert (=> b!4325672 (= lt!1542878 (map!10472 (v!42881 (underlying!9784 thiss!42308))))))

(assert (=> b!4325672 (= lt!1542879 (map!10471 thiss!42308))))

(declare-fun b!4325673 () Bool)

(declare-fun apply!11176 (MutLongMap!4777 (_ BitVec 64)) List!48555)

(assert (=> b!4325673 (= e!2691469 (apply!11176 (v!42881 (underlying!9784 thiss!42308)) lt!1542881))))

(assert (= (and start!416588 res!1772693) b!4325666))

(assert (= (and b!4325666 res!1772692) b!4325672))

(assert (= (and b!4325672 res!1772691) b!4325671))

(assert (= (and b!4325671 c!735929) b!4325673))

(assert (= (and b!4325671 (not c!735929)) b!4325669))

(assert (= (and b!4325671 res!1772694) b!4325664))

(assert (= (and b!4325667 condMapEmpty!21288) mapIsEmpty!21288))

(assert (= (and b!4325667 (not condMapEmpty!21288)) mapNonEmpty!21288))

(assert (= b!4325663 b!4325667))

(assert (= b!4325670 b!4325663))

(assert (= b!4325668 b!4325670))

(assert (= (and b!4325665 ((_ is LongMap!4777) (v!42881 (underlying!9784 thiss!42308)))) b!4325668))

(assert (= b!4325662 b!4325665))

(assert (= (and start!416588 ((_ is HashMap!4683) thiss!42308)) b!4325662))

(declare-fun m!4920605 () Bool)

(assert (=> mapNonEmpty!21288 m!4920605))

(declare-fun m!4920607 () Bool)

(assert (=> b!4325673 m!4920607))

(declare-fun m!4920609 () Bool)

(assert (=> b!4325672 m!4920609))

(declare-fun m!4920611 () Bool)

(assert (=> b!4325672 m!4920611))

(declare-fun m!4920613 () Bool)

(assert (=> b!4325672 m!4920613))

(declare-fun m!4920615 () Bool)

(assert (=> b!4325671 m!4920615))

(declare-fun m!4920617 () Bool)

(assert (=> b!4325671 m!4920617))

(declare-fun m!4920619 () Bool)

(assert (=> b!4325671 m!4920619))

(declare-fun m!4920621 () Bool)

(assert (=> b!4325666 m!4920621))

(declare-fun m!4920623 () Bool)

(assert (=> b!4325664 m!4920623))

(declare-fun m!4920625 () Bool)

(assert (=> b!4325664 m!4920625))

(declare-fun m!4920627 () Bool)

(assert (=> b!4325663 m!4920627))

(declare-fun m!4920629 () Bool)

(assert (=> b!4325663 m!4920629))

(check-sat (not b_next!129771) (not b!4325664) (not b!4325672) (not b!4325666) tp_is_empty!24205 b_and!340651 b_and!340653 tp_is_empty!24207 (not b_next!129773) (not mapNonEmpty!21288) (not b!4325667) (not b!4325671) (not b!4325663) (not b!4325673))
(check-sat b_and!340651 b_and!340653 (not b_next!129773) (not b_next!129771))
(get-model)

(declare-fun b!4325696 () Bool)

(declare-fun e!2691496 () Bool)

(declare-fun lt!1542928 () (_ BitVec 64))

(declare-datatypes ((Option!10326 0))(
  ( (None!10325) (Some!10325 (v!42886 tuple2!47342)) )
))
(declare-fun isDefined!7624 (Option!10326) Bool)

(declare-fun getPair!171 (List!48555 K!9689) Option!10326)

(assert (=> b!4325696 (= e!2691496 (isDefined!7624 (getPair!171 (apply!11176 (v!42881 (underlying!9784 thiss!42308)) lt!1542928) key!2048)))))

(declare-fun bm!300161 () Bool)

(declare-fun call!300171 () Option!10326)

(declare-fun call!300169 () List!48555)

(assert (=> bm!300161 (= call!300171 (getPair!171 call!300169 key!2048))))

(declare-fun b!4325697 () Bool)

(declare-datatypes ((Unit!67988 0))(
  ( (Unit!67989) )
))
(declare-fun e!2691494 () Unit!67988)

(declare-fun e!2691497 () Unit!67988)

(assert (=> b!4325697 (= e!2691494 e!2691497)))

(declare-fun res!1772701 () Bool)

(declare-fun call!300166 () Bool)

(assert (=> b!4325697 (= res!1772701 call!300166)))

(declare-fun e!2691499 () Bool)

(assert (=> b!4325697 (=> (not res!1772701) (not e!2691499))))

(declare-fun c!735938 () Bool)

(assert (=> b!4325697 (= c!735938 e!2691499)))

(declare-fun b!4325698 () Bool)

(assert (=> b!4325698 false))

(declare-fun lt!1542926 () Unit!67988)

(declare-fun lt!1542937 () Unit!67988)

(assert (=> b!4325698 (= lt!1542926 lt!1542937)))

(declare-fun lt!1542941 () ListLongMap!1217)

(declare-fun contains!10516 (ListMap!1877 K!9689) Bool)

(declare-fun extractMap!385 (List!48556) ListMap!1877)

(assert (=> b!4325698 (contains!10516 (extractMap!385 (toList!2601 lt!1542941)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!171 (ListLongMap!1217 K!9689 Hashable!4693) Unit!67988)

(assert (=> b!4325698 (= lt!1542937 (lemmaInLongMapThenInGenericMap!171 lt!1542941 key!2048 (hashF!6999 thiss!42308)))))

(declare-fun call!300168 () ListLongMap!1217)

(assert (=> b!4325698 (= lt!1542941 call!300168)))

(declare-fun Unit!67990 () Unit!67988)

(assert (=> b!4325698 (= e!2691497 Unit!67990)))

(declare-fun bm!300162 () Bool)

(declare-fun call!300167 () (_ BitVec 64))

(assert (=> bm!300162 (= call!300167 (hash!1237 (hashF!6999 thiss!42308) key!2048))))

(declare-fun bm!300163 () Bool)

(assert (=> bm!300163 (= call!300168 (map!10472 (v!42881 (underlying!9784 thiss!42308))))))

(declare-fun bm!300164 () Bool)

(declare-fun call!300170 () Bool)

(assert (=> bm!300164 (= call!300170 (isDefined!7624 call!300171))))

(declare-fun b!4325700 () Bool)

(declare-fun e!2691495 () Unit!67988)

(declare-fun Unit!67991 () Unit!67988)

(assert (=> b!4325700 (= e!2691495 Unit!67991)))

(declare-fun b!4325701 () Bool)

(declare-fun Unit!67992 () Unit!67988)

(assert (=> b!4325701 (= e!2691497 Unit!67992)))

(declare-fun b!4325702 () Bool)

(assert (=> b!4325702 (= e!2691499 call!300170)))

(declare-fun b!4325703 () Bool)

(assert (=> b!4325703 false))

(declare-fun lt!1542927 () Unit!67988)

(declare-fun lt!1542933 () Unit!67988)

(assert (=> b!4325703 (= lt!1542927 lt!1542933)))

(declare-fun lt!1542938 () List!48556)

(declare-fun lt!1542929 () List!48555)

(declare-fun contains!10517 (List!48556 tuple2!47346) Bool)

(assert (=> b!4325703 (contains!10517 lt!1542938 (tuple2!47347 lt!1542928 lt!1542929))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!183 (List!48556 (_ BitVec 64) List!48555) Unit!67988)

(assert (=> b!4325703 (= lt!1542933 (lemmaGetValueByKeyImpliesContainsTuple!183 lt!1542938 lt!1542928 lt!1542929))))

(assert (=> b!4325703 (= lt!1542929 (apply!11176 (v!42881 (underlying!9784 thiss!42308)) lt!1542928))))

(assert (=> b!4325703 (= lt!1542938 (toList!2601 (map!10472 (v!42881 (underlying!9784 thiss!42308)))))))

(declare-fun lt!1542925 () Unit!67988)

(declare-fun lt!1542936 () Unit!67988)

(assert (=> b!4325703 (= lt!1542925 lt!1542936)))

(declare-fun lt!1542931 () List!48556)

(declare-datatypes ((Option!10327 0))(
  ( (None!10326) (Some!10326 (v!42887 List!48555)) )
))
(declare-fun isDefined!7625 (Option!10327) Bool)

(declare-fun getValueByKey!314 (List!48556 (_ BitVec 64)) Option!10327)

(assert (=> b!4325703 (isDefined!7625 (getValueByKey!314 lt!1542931 lt!1542928))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!230 (List!48556 (_ BitVec 64)) Unit!67988)

(assert (=> b!4325703 (= lt!1542936 (lemmaContainsKeyImpliesGetValueByKeyDefined!230 lt!1542931 lt!1542928))))

(assert (=> b!4325703 (= lt!1542931 (toList!2601 (map!10472 (v!42881 (underlying!9784 thiss!42308)))))))

(declare-fun lt!1542924 () Unit!67988)

(declare-fun lt!1542932 () Unit!67988)

(assert (=> b!4325703 (= lt!1542924 lt!1542932)))

(declare-fun lt!1542939 () List!48556)

(declare-fun containsKey!422 (List!48556 (_ BitVec 64)) Bool)

(assert (=> b!4325703 (containsKey!422 lt!1542939 lt!1542928)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!172 (List!48556 (_ BitVec 64)) Unit!67988)

(assert (=> b!4325703 (= lt!1542932 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!172 lt!1542939 lt!1542928))))

(assert (=> b!4325703 (= lt!1542939 (toList!2601 (map!10472 (v!42881 (underlying!9784 thiss!42308)))))))

(declare-fun e!2691498 () Unit!67988)

(declare-fun Unit!67993 () Unit!67988)

(assert (=> b!4325703 (= e!2691498 Unit!67993)))

(declare-fun lt!1542930 () ListLongMap!1217)

(declare-fun c!735941 () Bool)

(declare-fun bm!300165 () Bool)

(declare-fun contains!10518 (ListLongMap!1217 (_ BitVec 64)) Bool)

(assert (=> bm!300165 (= call!300166 (contains!10518 (ite c!735941 lt!1542930 call!300168) call!300167))))

(declare-fun lambda!134306 () Int)

(declare-fun b!4325699 () Bool)

(declare-fun forallContained!1545 (List!48556 Int tuple2!47346) Unit!67988)

(assert (=> b!4325699 (= e!2691495 (forallContained!1545 (toList!2601 (map!10472 (v!42881 (underlying!9784 thiss!42308)))) lambda!134306 (tuple2!47347 lt!1542928 (apply!11176 (v!42881 (underlying!9784 thiss!42308)) lt!1542928))))))

(declare-fun c!735940 () Bool)

(assert (=> b!4325699 (= c!735940 (not (contains!10517 (toList!2601 (map!10472 (v!42881 (underlying!9784 thiss!42308)))) (tuple2!47347 lt!1542928 (apply!11176 (v!42881 (underlying!9784 thiss!42308)) lt!1542928)))))))

(declare-fun lt!1542943 () Unit!67988)

(assert (=> b!4325699 (= lt!1542943 e!2691498)))

(declare-fun d!1271837 () Bool)

(declare-fun lt!1542940 () Bool)

(assert (=> d!1271837 (= lt!1542940 (contains!10516 (map!10471 thiss!42308) key!2048))))

(assert (=> d!1271837 (= lt!1542940 e!2691496)))

(declare-fun res!1772703 () Bool)

(assert (=> d!1271837 (=> (not res!1772703) (not e!2691496))))

(assert (=> d!1271837 (= res!1772703 (contains!10514 (v!42881 (underlying!9784 thiss!42308)) lt!1542928))))

(declare-fun lt!1542934 () Unit!67988)

(assert (=> d!1271837 (= lt!1542934 e!2691494)))

(assert (=> d!1271837 (= c!735941 (contains!10516 (extractMap!385 (toList!2601 (map!10472 (v!42881 (underlying!9784 thiss!42308))))) key!2048))))

(declare-fun lt!1542942 () Unit!67988)

(assert (=> d!1271837 (= lt!1542942 e!2691495)))

(declare-fun c!735939 () Bool)

(assert (=> d!1271837 (= c!735939 (contains!10514 (v!42881 (underlying!9784 thiss!42308)) lt!1542928))))

(assert (=> d!1271837 (= lt!1542928 (hash!1237 (hashF!6999 thiss!42308) key!2048))))

(assert (=> d!1271837 (valid!3794 thiss!42308)))

(assert (=> d!1271837 (= (contains!10515 thiss!42308 key!2048) lt!1542940)))

(declare-fun b!4325704 () Bool)

(declare-fun lt!1542935 () Unit!67988)

(assert (=> b!4325704 (= e!2691494 lt!1542935)))

(assert (=> b!4325704 (= lt!1542930 call!300168)))

(declare-fun lemmaInGenericMapThenInLongMap!171 (ListLongMap!1217 K!9689 Hashable!4693) Unit!67988)

(assert (=> b!4325704 (= lt!1542935 (lemmaInGenericMapThenInLongMap!171 lt!1542930 key!2048 (hashF!6999 thiss!42308)))))

(declare-fun res!1772702 () Bool)

(assert (=> b!4325704 (= res!1772702 call!300166)))

(declare-fun e!2691500 () Bool)

(assert (=> b!4325704 (=> (not res!1772702) (not e!2691500))))

(assert (=> b!4325704 e!2691500))

(declare-fun bm!300166 () Bool)

(declare-fun apply!11177 (ListLongMap!1217 (_ BitVec 64)) List!48555)

(assert (=> bm!300166 (= call!300169 (apply!11177 (ite c!735941 lt!1542930 call!300168) call!300167))))

(declare-fun b!4325705 () Bool)

(declare-fun Unit!67994 () Unit!67988)

(assert (=> b!4325705 (= e!2691498 Unit!67994)))

(declare-fun b!4325706 () Bool)

(assert (=> b!4325706 (= e!2691500 call!300170)))

(assert (= (and d!1271837 c!735939) b!4325699))

(assert (= (and d!1271837 (not c!735939)) b!4325700))

(assert (= (and b!4325699 c!735940) b!4325703))

(assert (= (and b!4325699 (not c!735940)) b!4325705))

(assert (= (and d!1271837 c!735941) b!4325704))

(assert (= (and d!1271837 (not c!735941)) b!4325697))

(assert (= (and b!4325704 res!1772702) b!4325706))

(assert (= (and b!4325697 res!1772701) b!4325702))

(assert (= (and b!4325697 c!735938) b!4325698))

(assert (= (and b!4325697 (not c!735938)) b!4325701))

(assert (= (or b!4325704 b!4325706 b!4325697 b!4325702) bm!300162))

(assert (= (or b!4325704 b!4325697 b!4325702 b!4325698) bm!300163))

(assert (= (or b!4325706 b!4325702) bm!300166))

(assert (= (or b!4325704 b!4325697) bm!300165))

(assert (= (or b!4325706 b!4325702) bm!300161))

(assert (= (or b!4325706 b!4325702) bm!300164))

(assert (= (and d!1271837 res!1772703) b!4325696))

(declare-fun m!4920631 () Bool)

(assert (=> b!4325696 m!4920631))

(assert (=> b!4325696 m!4920631))

(declare-fun m!4920633 () Bool)

(assert (=> b!4325696 m!4920633))

(assert (=> b!4325696 m!4920633))

(declare-fun m!4920635 () Bool)

(assert (=> b!4325696 m!4920635))

(assert (=> bm!300162 m!4920619))

(declare-fun m!4920637 () Bool)

(assert (=> b!4325703 m!4920637))

(declare-fun m!4920639 () Bool)

(assert (=> b!4325703 m!4920639))

(declare-fun m!4920641 () Bool)

(assert (=> b!4325703 m!4920641))

(assert (=> b!4325703 m!4920631))

(declare-fun m!4920643 () Bool)

(assert (=> b!4325703 m!4920643))

(declare-fun m!4920645 () Bool)

(assert (=> b!4325703 m!4920645))

(declare-fun m!4920647 () Bool)

(assert (=> b!4325703 m!4920647))

(assert (=> b!4325703 m!4920637))

(assert (=> b!4325703 m!4920611))

(declare-fun m!4920649 () Bool)

(assert (=> b!4325703 m!4920649))

(declare-fun m!4920651 () Bool)

(assert (=> b!4325698 m!4920651))

(assert (=> b!4325698 m!4920651))

(declare-fun m!4920653 () Bool)

(assert (=> b!4325698 m!4920653))

(declare-fun m!4920655 () Bool)

(assert (=> b!4325698 m!4920655))

(declare-fun m!4920657 () Bool)

(assert (=> bm!300166 m!4920657))

(declare-fun m!4920659 () Bool)

(assert (=> b!4325704 m!4920659))

(declare-fun m!4920661 () Bool)

(assert (=> bm!300165 m!4920661))

(declare-fun m!4920663 () Bool)

(assert (=> bm!300161 m!4920663))

(declare-fun m!4920665 () Bool)

(assert (=> d!1271837 m!4920665))

(assert (=> d!1271837 m!4920621))

(assert (=> d!1271837 m!4920613))

(assert (=> d!1271837 m!4920613))

(declare-fun m!4920667 () Bool)

(assert (=> d!1271837 m!4920667))

(assert (=> d!1271837 m!4920619))

(declare-fun m!4920669 () Bool)

(assert (=> d!1271837 m!4920669))

(assert (=> d!1271837 m!4920669))

(declare-fun m!4920671 () Bool)

(assert (=> d!1271837 m!4920671))

(assert (=> d!1271837 m!4920611))

(assert (=> bm!300163 m!4920611))

(assert (=> b!4325699 m!4920611))

(assert (=> b!4325699 m!4920631))

(declare-fun m!4920673 () Bool)

(assert (=> b!4325699 m!4920673))

(declare-fun m!4920675 () Bool)

(assert (=> b!4325699 m!4920675))

(declare-fun m!4920677 () Bool)

(assert (=> bm!300164 m!4920677))

(assert (=> b!4325672 d!1271837))

(declare-fun d!1271839 () Bool)

(declare-fun map!10473 (LongMapFixedSize!9554) ListLongMap!1217)

(assert (=> d!1271839 (= (map!10472 (v!42881 (underlying!9784 thiss!42308))) (map!10473 (v!42880 (underlying!9783 (v!42881 (underlying!9784 thiss!42308))))))))

(declare-fun bs!607391 () Bool)

(assert (= bs!607391 d!1271839))

(declare-fun m!4920679 () Bool)

(assert (=> bs!607391 m!4920679))

(assert (=> b!4325672 d!1271839))

(declare-fun d!1271841 () Bool)

(declare-fun lt!1542946 () ListMap!1877)

(declare-fun invariantList!610 (List!48555) Bool)

(assert (=> d!1271841 (invariantList!610 (toList!2600 lt!1542946))))

(assert (=> d!1271841 (= lt!1542946 (extractMap!385 (toList!2601 (map!10472 (v!42881 (underlying!9784 thiss!42308))))))))

(assert (=> d!1271841 (valid!3794 thiss!42308)))

(assert (=> d!1271841 (= (map!10471 thiss!42308) lt!1542946)))

(declare-fun bs!607392 () Bool)

(assert (= bs!607392 d!1271841))

(declare-fun m!4920681 () Bool)

(assert (=> bs!607392 m!4920681))

(assert (=> bs!607392 m!4920611))

(assert (=> bs!607392 m!4920669))

(assert (=> bs!607392 m!4920621))

(assert (=> b!4325672 d!1271841))

(declare-fun bs!607393 () Bool)

(declare-fun b!4325711 () Bool)

(assert (= bs!607393 (and b!4325711 b!4325699)))

(declare-fun lambda!134309 () Int)

(assert (=> bs!607393 (= lambda!134309 lambda!134306)))

(declare-fun d!1271843 () Bool)

(declare-fun res!1772708 () Bool)

(declare-fun e!2691503 () Bool)

(assert (=> d!1271843 (=> (not res!1772708) (not e!2691503))))

(declare-fun valid!3795 (MutLongMap!4777) Bool)

(assert (=> d!1271843 (= res!1772708 (valid!3795 (v!42881 (underlying!9784 thiss!42308))))))

(assert (=> d!1271843 (= (valid!3794 thiss!42308) e!2691503)))

(declare-fun res!1772709 () Bool)

(assert (=> b!4325711 (=> (not res!1772709) (not e!2691503))))

(declare-fun forall!8839 (List!48556 Int) Bool)

(assert (=> b!4325711 (= res!1772709 (forall!8839 (toList!2601 (map!10472 (v!42881 (underlying!9784 thiss!42308)))) lambda!134309))))

(declare-fun b!4325712 () Bool)

(declare-fun allKeysSameHashInMap!406 (ListLongMap!1217 Hashable!4693) Bool)

(assert (=> b!4325712 (= e!2691503 (allKeysSameHashInMap!406 (map!10472 (v!42881 (underlying!9784 thiss!42308))) (hashF!6999 thiss!42308)))))

(assert (= (and d!1271843 res!1772708) b!4325711))

(assert (= (and b!4325711 res!1772709) b!4325712))

(declare-fun m!4920683 () Bool)

(assert (=> d!1271843 m!4920683))

(assert (=> b!4325711 m!4920611))

(declare-fun m!4920685 () Bool)

(assert (=> b!4325711 m!4920685))

(assert (=> b!4325712 m!4920611))

(assert (=> b!4325712 m!4920611))

(declare-fun m!4920687 () Bool)

(assert (=> b!4325712 m!4920687))

(assert (=> b!4325666 d!1271843))

(declare-fun b!4325731 () Bool)

(declare-fun e!2691517 () tuple2!47344)

(declare-fun lt!1542958 () tuple2!47344)

(assert (=> b!4325731 (= e!2691517 (tuple2!47345 (_1!26960 lt!1542958) (_2!26960 lt!1542958)))))

(declare-fun repack!93 (MutLongMap!4777) tuple2!47344)

(assert (=> b!4325731 (= lt!1542958 (repack!93 (v!42881 (underlying!9784 thiss!42308))))))

(declare-fun b!4325732 () Bool)

(assert (=> b!4325732 (= e!2691517 (tuple2!47345 true (v!42881 (underlying!9784 thiss!42308))))))

(declare-fun b!4325733 () Bool)

(declare-fun e!2691518 () Bool)

(declare-fun call!300177 () ListLongMap!1217)

(declare-fun call!300176 () ListLongMap!1217)

(assert (=> b!4325733 (= e!2691518 (= call!300177 call!300176))))

(declare-fun b!4325734 () Bool)

(declare-fun e!2691515 () Bool)

(assert (=> b!4325734 (= e!2691515 e!2691518)))

(declare-fun c!735949 () Bool)

(declare-fun lt!1542956 () tuple2!47344)

(assert (=> b!4325734 (= c!735949 (_1!26960 lt!1542956))))

(declare-fun b!4325735 () Bool)

(declare-fun e!2691516 () tuple2!47344)

(declare-datatypes ((tuple2!47348 0))(
  ( (tuple2!47349 (_1!26962 Bool) (_2!26962 LongMapFixedSize!9554)) )
))
(declare-fun lt!1542957 () tuple2!47348)

(assert (=> b!4325735 (= e!2691516 (tuple2!47345 (_1!26962 lt!1542957) (LongMap!4777 (Cell!18918 (_2!26962 lt!1542957)))))))

(declare-fun lt!1542955 () tuple2!47344)

(declare-fun update!558 (LongMapFixedSize!9554 (_ BitVec 64) List!48555) tuple2!47348)

(assert (=> b!4325735 (= lt!1542957 (update!558 (v!42880 (underlying!9783 (_2!26960 lt!1542955))) lt!1542881 (Cons!48431 (tuple2!47343 key!2048 v!9179) e!2691469)))))

(declare-fun b!4325736 () Bool)

(declare-fun e!2691514 () Bool)

(declare-fun +!361 (ListLongMap!1217 tuple2!47346) ListLongMap!1217)

(assert (=> b!4325736 (= e!2691514 (= call!300177 (+!361 call!300176 (tuple2!47347 lt!1542881 (Cons!48431 (tuple2!47343 key!2048 v!9179) e!2691469)))))))

(declare-fun bm!300171 () Bool)

(assert (=> bm!300171 (= call!300177 (map!10472 (_2!26960 lt!1542956)))))

(declare-fun bm!300172 () Bool)

(assert (=> bm!300172 (= call!300176 (map!10472 (v!42881 (underlying!9784 thiss!42308))))))

(declare-fun b!4325737 () Bool)

(assert (=> b!4325737 (= e!2691516 (tuple2!47345 false (_2!26960 lt!1542955)))))

(declare-fun b!4325738 () Bool)

(declare-fun res!1772718 () Bool)

(assert (=> b!4325738 (=> (not res!1772718) (not e!2691515))))

(assert (=> b!4325738 (= res!1772718 (valid!3795 (_2!26960 lt!1542956)))))

(declare-fun b!4325739 () Bool)

(assert (=> b!4325739 (= e!2691518 e!2691514)))

(declare-fun res!1772717 () Bool)

(assert (=> b!4325739 (= res!1772717 (contains!10518 call!300177 lt!1542881))))

(assert (=> b!4325739 (=> (not res!1772717) (not e!2691514))))

(declare-fun d!1271845 () Bool)

(assert (=> d!1271845 e!2691515))

(declare-fun res!1772716 () Bool)

(assert (=> d!1271845 (=> (not res!1772716) (not e!2691515))))

(assert (=> d!1271845 (= res!1772716 ((_ is LongMap!4777) (_2!26960 lt!1542956)))))

(assert (=> d!1271845 (= lt!1542956 e!2691516)))

(declare-fun c!735950 () Bool)

(assert (=> d!1271845 (= c!735950 (_1!26960 lt!1542955))))

(assert (=> d!1271845 (= lt!1542955 e!2691517)))

(declare-fun c!735948 () Bool)

(declare-fun imbalanced!89 (MutLongMap!4777) Bool)

(assert (=> d!1271845 (= c!735948 (imbalanced!89 (v!42881 (underlying!9784 thiss!42308))))))

(assert (=> d!1271845 (valid!3795 (v!42881 (underlying!9784 thiss!42308)))))

(assert (=> d!1271845 (= (update!557 (v!42881 (underlying!9784 thiss!42308)) lt!1542881 (Cons!48431 (tuple2!47343 key!2048 v!9179) e!2691469)) lt!1542956)))

(assert (= (and d!1271845 c!735948) b!4325731))

(assert (= (and d!1271845 (not c!735948)) b!4325732))

(assert (= (and d!1271845 c!735950) b!4325735))

(assert (= (and d!1271845 (not c!735950)) b!4325737))

(assert (= (and d!1271845 res!1772716) b!4325738))

(assert (= (and b!4325738 res!1772718) b!4325734))

(assert (= (and b!4325734 c!735949) b!4325739))

(assert (= (and b!4325734 (not c!735949)) b!4325733))

(assert (= (and b!4325739 res!1772717) b!4325736))

(assert (= (or b!4325736 b!4325733) bm!300172))

(assert (= (or b!4325739 b!4325736 b!4325733) bm!300171))

(declare-fun m!4920689 () Bool)

(assert (=> b!4325736 m!4920689))

(declare-fun m!4920691 () Bool)

(assert (=> d!1271845 m!4920691))

(assert (=> d!1271845 m!4920683))

(declare-fun m!4920693 () Bool)

(assert (=> b!4325738 m!4920693))

(declare-fun m!4920695 () Bool)

(assert (=> b!4325739 m!4920695))

(declare-fun m!4920697 () Bool)

(assert (=> bm!300171 m!4920697))

(declare-fun m!4920699 () Bool)

(assert (=> b!4325731 m!4920699))

(assert (=> bm!300172 m!4920611))

(declare-fun m!4920701 () Bool)

(assert (=> b!4325735 m!4920701))

(assert (=> b!4325671 d!1271845))

(declare-fun d!1271847 () Bool)

(declare-fun lt!1542961 () Bool)

(assert (=> d!1271847 (= lt!1542961 (contains!10518 (map!10472 (v!42881 (underlying!9784 thiss!42308))) lt!1542881))))

(declare-fun contains!10519 (LongMapFixedSize!9554 (_ BitVec 64)) Bool)

(assert (=> d!1271847 (= lt!1542961 (contains!10519 (v!42880 (underlying!9783 (v!42881 (underlying!9784 thiss!42308)))) lt!1542881))))

(assert (=> d!1271847 (valid!3795 (v!42881 (underlying!9784 thiss!42308)))))

(assert (=> d!1271847 (= (contains!10514 (v!42881 (underlying!9784 thiss!42308)) lt!1542881) lt!1542961)))

(declare-fun bs!607394 () Bool)

(assert (= bs!607394 d!1271847))

(assert (=> bs!607394 m!4920611))

(assert (=> bs!607394 m!4920611))

(declare-fun m!4920703 () Bool)

(assert (=> bs!607394 m!4920703))

(declare-fun m!4920705 () Bool)

(assert (=> bs!607394 m!4920705))

(assert (=> bs!607394 m!4920683))

(assert (=> b!4325671 d!1271847))

(declare-fun d!1271849 () Bool)

(declare-fun hash!1238 (Hashable!4693 K!9689) (_ BitVec 64))

(assert (=> d!1271849 (= (hash!1237 (hashF!6999 thiss!42308) key!2048) (hash!1238 (hashF!6999 thiss!42308) key!2048))))

(declare-fun bs!607395 () Bool)

(assert (= bs!607395 d!1271849))

(declare-fun m!4920707 () Bool)

(assert (=> bs!607395 m!4920707))

(assert (=> b!4325671 d!1271849))

(declare-fun d!1271851 () Bool)

(declare-fun lt!1542962 () ListMap!1877)

(assert (=> d!1271851 (invariantList!610 (toList!2600 lt!1542962))))

(assert (=> d!1271851 (= lt!1542962 (extractMap!385 (toList!2601 (map!10472 (v!42881 (underlying!9784 lt!1542882))))))))

(assert (=> d!1271851 (valid!3794 lt!1542882)))

(assert (=> d!1271851 (= (map!10471 lt!1542882) lt!1542962)))

(declare-fun bs!607396 () Bool)

(assert (= bs!607396 d!1271851))

(declare-fun m!4920709 () Bool)

(assert (=> bs!607396 m!4920709))

(declare-fun m!4920711 () Bool)

(assert (=> bs!607396 m!4920711))

(declare-fun m!4920713 () Bool)

(assert (=> bs!607396 m!4920713))

(assert (=> bs!607396 m!4920625))

(assert (=> b!4325664 d!1271851))

(declare-fun bs!607397 () Bool)

(declare-fun b!4325740 () Bool)

(assert (= bs!607397 (and b!4325740 b!4325699)))

(declare-fun lambda!134310 () Int)

(assert (=> bs!607397 (= lambda!134310 lambda!134306)))

(declare-fun bs!607398 () Bool)

(assert (= bs!607398 (and b!4325740 b!4325711)))

(assert (=> bs!607398 (= lambda!134310 lambda!134309)))

(declare-fun d!1271853 () Bool)

(declare-fun res!1772719 () Bool)

(declare-fun e!2691519 () Bool)

(assert (=> d!1271853 (=> (not res!1772719) (not e!2691519))))

(assert (=> d!1271853 (= res!1772719 (valid!3795 (v!42881 (underlying!9784 lt!1542882))))))

(assert (=> d!1271853 (= (valid!3794 lt!1542882) e!2691519)))

(declare-fun res!1772720 () Bool)

(assert (=> b!4325740 (=> (not res!1772720) (not e!2691519))))

(assert (=> b!4325740 (= res!1772720 (forall!8839 (toList!2601 (map!10472 (v!42881 (underlying!9784 lt!1542882)))) lambda!134310))))

(declare-fun b!4325741 () Bool)

(assert (=> b!4325741 (= e!2691519 (allKeysSameHashInMap!406 (map!10472 (v!42881 (underlying!9784 lt!1542882))) (hashF!6999 lt!1542882)))))

(assert (= (and d!1271853 res!1772719) b!4325740))

(assert (= (and b!4325740 res!1772720) b!4325741))

(declare-fun m!4920715 () Bool)

(assert (=> d!1271853 m!4920715))

(assert (=> b!4325740 m!4920711))

(declare-fun m!4920717 () Bool)

(assert (=> b!4325740 m!4920717))

(assert (=> b!4325741 m!4920711))

(assert (=> b!4325741 m!4920711))

(declare-fun m!4920719 () Bool)

(assert (=> b!4325741 m!4920719))

(assert (=> b!4325664 d!1271853))

(declare-fun d!1271855 () Bool)

(declare-fun e!2691522 () Bool)

(assert (=> d!1271855 e!2691522))

(declare-fun c!735953 () Bool)

(assert (=> d!1271855 (= c!735953 (contains!10514 (v!42881 (underlying!9784 thiss!42308)) lt!1542881))))

(declare-fun lt!1542965 () List!48555)

(declare-fun apply!11178 (LongMapFixedSize!9554 (_ BitVec 64)) List!48555)

(assert (=> d!1271855 (= lt!1542965 (apply!11178 (v!42880 (underlying!9783 (v!42881 (underlying!9784 thiss!42308)))) lt!1542881))))

(assert (=> d!1271855 (valid!3795 (v!42881 (underlying!9784 thiss!42308)))))

(assert (=> d!1271855 (= (apply!11176 (v!42881 (underlying!9784 thiss!42308)) lt!1542881) lt!1542965)))

(declare-fun b!4325746 () Bool)

(declare-fun get!15698 (Option!10327) List!48555)

(assert (=> b!4325746 (= e!2691522 (= lt!1542965 (get!15698 (getValueByKey!314 (toList!2601 (map!10472 (v!42881 (underlying!9784 thiss!42308)))) lt!1542881))))))

(declare-fun b!4325747 () Bool)

(declare-fun dynLambda!20525 (Int (_ BitVec 64)) List!48555)

(assert (=> b!4325747 (= e!2691522 (= lt!1542965 (dynLambda!20525 (defaultEntry!5182 (v!42880 (underlying!9783 (v!42881 (underlying!9784 thiss!42308))))) lt!1542881)))))

(assert (=> b!4325747 ((_ is LongMap!4777) (v!42881 (underlying!9784 thiss!42308)))))

(assert (= (and d!1271855 c!735953) b!4325746))

(assert (= (and d!1271855 (not c!735953)) b!4325747))

(declare-fun b_lambda!127543 () Bool)

(assert (=> (not b_lambda!127543) (not b!4325747)))

(declare-fun t!355462 () Bool)

(declare-fun tb!257389 () Bool)

(assert (=> (and b!4325663 (= (defaultEntry!5182 (v!42880 (underlying!9783 (v!42881 (underlying!9784 thiss!42308))))) (defaultEntry!5182 (v!42880 (underlying!9783 (v!42881 (underlying!9784 thiss!42308)))))) t!355462) tb!257389))

(assert (=> b!4325747 t!355462))

(declare-fun result!314938 () Bool)

(declare-fun b_and!340655 () Bool)

(assert (= b_and!340651 (and (=> t!355462 result!314938) b_and!340655)))

(assert (=> d!1271855 m!4920617))

(declare-fun m!4920721 () Bool)

(assert (=> d!1271855 m!4920721))

(assert (=> d!1271855 m!4920683))

(assert (=> b!4325746 m!4920611))

(declare-fun m!4920723 () Bool)

(assert (=> b!4325746 m!4920723))

(assert (=> b!4325746 m!4920723))

(declare-fun m!4920725 () Bool)

(assert (=> b!4325746 m!4920725))

(declare-fun m!4920727 () Bool)

(assert (=> b!4325747 m!4920727))

(assert (=> b!4325673 d!1271855))

(declare-fun d!1271857 () Bool)

(assert (=> d!1271857 (= (array_inv!5577 (_keys!5103 (v!42880 (underlying!9783 (v!42881 (underlying!9784 thiss!42308)))))) (bvsge (size!35778 (_keys!5103 (v!42880 (underlying!9783 (v!42881 (underlying!9784 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4325663 d!1271857))

(declare-fun d!1271859 () Bool)

(assert (=> d!1271859 (= (array_inv!5578 (_values!5078 (v!42880 (underlying!9783 (v!42881 (underlying!9784 thiss!42308)))))) (bvsge (size!35779 (_values!5078 (v!42880 (underlying!9783 (v!42881 (underlying!9784 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4325663 d!1271859))

(declare-fun b!4325755 () Bool)

(declare-fun tp!1327619 () Bool)

(declare-fun e!2691527 () Bool)

(assert (=> b!4325755 (= e!2691527 (and tp_is_empty!24205 tp_is_empty!24207 tp!1327619))))

(declare-fun b!4325754 () Bool)

(declare-fun tp!1327621 () Bool)

(declare-fun e!2691528 () Bool)

(assert (=> b!4325754 (= e!2691528 (and tp_is_empty!24205 tp_is_empty!24207 tp!1327621))))

(declare-fun condMapEmpty!21291 () Bool)

(declare-fun mapDefault!21291 () List!48555)

(assert (=> mapNonEmpty!21288 (= condMapEmpty!21291 (= mapRest!21288 ((as const (Array (_ BitVec 32) List!48555)) mapDefault!21291)))))

(declare-fun mapRes!21291 () Bool)

(assert (=> mapNonEmpty!21288 (= tp!1327606 (and e!2691527 mapRes!21291))))

(declare-fun mapNonEmpty!21291 () Bool)

(declare-fun tp!1327620 () Bool)

(assert (=> mapNonEmpty!21291 (= mapRes!21291 (and tp!1327620 e!2691528))))

(declare-fun mapValue!21291 () List!48555)

(declare-fun mapRest!21291 () (Array (_ BitVec 32) List!48555))

(declare-fun mapKey!21291 () (_ BitVec 32))

(assert (=> mapNonEmpty!21291 (= mapRest!21288 (store mapRest!21291 mapKey!21291 mapValue!21291))))

(declare-fun mapIsEmpty!21291 () Bool)

(assert (=> mapIsEmpty!21291 mapRes!21291))

(assert (= (and mapNonEmpty!21288 condMapEmpty!21291) mapIsEmpty!21291))

(assert (= (and mapNonEmpty!21288 (not condMapEmpty!21291)) mapNonEmpty!21291))

(assert (= (and mapNonEmpty!21291 ((_ is Cons!48431) mapValue!21291)) b!4325754))

(assert (= (and mapNonEmpty!21288 ((_ is Cons!48431) mapDefault!21291)) b!4325755))

(declare-fun m!4920729 () Bool)

(assert (=> mapNonEmpty!21291 m!4920729))

(declare-fun b!4325760 () Bool)

(declare-fun tp!1327624 () Bool)

(declare-fun e!2691531 () Bool)

(assert (=> b!4325760 (= e!2691531 (and tp_is_empty!24205 tp_is_empty!24207 tp!1327624))))

(assert (=> mapNonEmpty!21288 (= tp!1327610 e!2691531)))

(assert (= (and mapNonEmpty!21288 ((_ is Cons!48431) mapValue!21288)) b!4325760))

(declare-fun tp!1327625 () Bool)

(declare-fun e!2691532 () Bool)

(declare-fun b!4325761 () Bool)

(assert (=> b!4325761 (= e!2691532 (and tp_is_empty!24205 tp_is_empty!24207 tp!1327625))))

(assert (=> b!4325663 (= tp!1327611 e!2691532)))

(assert (= (and b!4325663 ((_ is Cons!48431) (zeroValue!5054 (v!42880 (underlying!9783 (v!42881 (underlying!9784 thiss!42308))))))) b!4325761))

(declare-fun tp!1327626 () Bool)

(declare-fun e!2691533 () Bool)

(declare-fun b!4325762 () Bool)

(assert (=> b!4325762 (= e!2691533 (and tp_is_empty!24205 tp_is_empty!24207 tp!1327626))))

(assert (=> b!4325663 (= tp!1327607 e!2691533)))

(assert (= (and b!4325663 ((_ is Cons!48431) (minValue!5054 (v!42880 (underlying!9783 (v!42881 (underlying!9784 thiss!42308))))))) b!4325762))

(declare-fun e!2691534 () Bool)

(declare-fun tp!1327627 () Bool)

(declare-fun b!4325763 () Bool)

(assert (=> b!4325763 (= e!2691534 (and tp_is_empty!24205 tp_is_empty!24207 tp!1327627))))

(assert (=> b!4325667 (= tp!1327609 e!2691534)))

(assert (= (and b!4325667 ((_ is Cons!48431) mapDefault!21288)) b!4325763))

(declare-fun b_lambda!127545 () Bool)

(assert (= b_lambda!127543 (or (and b!4325663 b_free!129067) b_lambda!127545)))

(check-sat (not b!4325738) (not d!1271839) (not tb!257389) (not d!1271851) (not d!1271849) (not b_next!129773) (not b!4325712) (not b!4325762) (not b!4325704) (not bm!300171) (not b!4325754) (not d!1271853) (not b!4325746) (not b_lambda!127545) (not b!4325760) (not b!4325696) (not b!4325731) (not b_next!129771) tp_is_empty!24207 (not bm!300165) (not b!4325763) (not mapNonEmpty!21291) (not b!4325711) (not bm!300163) (not b!4325699) b_and!340653 (not b!4325735) (not b!4325739) (not b!4325755) (not d!1271847) (not b!4325741) (not d!1271855) (not b!4325761) (not bm!300172) (not b!4325740) (not b!4325703) tp_is_empty!24205 (not bm!300164) (not d!1271837) (not b!4325698) b_and!340655 (not bm!300161) (not bm!300162) (not d!1271845) (not b!4325736) (not d!1271841) (not bm!300166) (not d!1271843))
(check-sat b_and!340655 b_and!340653 (not b_next!129773) (not b_next!129771))
