; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242026 () Bool)

(assert start!242026)

(declare-fun b!2479889 () Bool)

(declare-fun b_free!72161 () Bool)

(declare-fun b_next!72865 () Bool)

(assert (=> b!2479889 (= b_free!72161 (not b_next!72865))))

(declare-fun tp!793642 () Bool)

(declare-fun b_and!188407 () Bool)

(assert (=> b!2479889 (= tp!793642 b_and!188407)))

(declare-fun b!2479880 () Bool)

(declare-fun b_free!72163 () Bool)

(declare-fun b_next!72867 () Bool)

(assert (=> b!2479880 (= b_free!72163 (not b_next!72867))))

(declare-fun tp!793643 () Bool)

(declare-fun b_and!188409 () Bool)

(assert (=> b!2479880 (= tp!793643 b_and!188409)))

(declare-fun b!2479878 () Bool)

(declare-fun e!1573898 () Bool)

(declare-datatypes ((V!5602 0))(
  ( (V!5603 (val!8795 Int)) )
))
(declare-datatypes ((K!5400 0))(
  ( (K!5401 (val!8796 Int)) )
))
(declare-datatypes ((tuple2!28616 0))(
  ( (tuple2!28617 (_1!16849 K!5400) (_2!16849 V!5602)) )
))
(declare-datatypes ((List!29139 0))(
  ( (Nil!29039) (Cons!29039 (h!34445 tuple2!28616) (t!210796 List!29139)) )
))
(declare-datatypes ((tuple2!28618 0))(
  ( (tuple2!28619 (_1!16850 (_ BitVec 64)) (_2!16850 List!29139)) )
))
(declare-datatypes ((List!29140 0))(
  ( (Nil!29040) (Cons!29040 (h!34446 tuple2!28618) (t!210797 List!29140)) )
))
(declare-datatypes ((ListLongMap!469 0))(
  ( (ListLongMap!470 (toList!1524 List!29140)) )
))
(declare-fun lt!886889 () ListLongMap!469)

(declare-datatypes ((Unit!42485 0))(
  ( (Unit!42486) )
))
(declare-datatypes ((Hashable!3236 0))(
  ( (HashableExt!3235 (__x!18884 Int)) )
))
(declare-datatypes ((array!11761 0))(
  ( (array!11762 (arr!5242 (Array (_ BitVec 32) List!29139)) (size!22661 (_ BitVec 32))) )
))
(declare-datatypes ((array!11763 0))(
  ( (array!11764 (arr!5243 (Array (_ BitVec 32) (_ BitVec 64))) (size!22662 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6652 0))(
  ( (LongMapFixedSize!6653 (defaultEntry!3700 Int) (mask!8478 (_ BitVec 32)) (extraKeys!3574 (_ BitVec 32)) (zeroValue!3584 List!29139) (minValue!3584 List!29139) (_size!6699 (_ BitVec 32)) (_keys!3623 array!11763) (_values!3606 array!11761) (_vacant!3387 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13121 0))(
  ( (Cell!13122 (v!31364 LongMapFixedSize!6652)) )
))
(declare-datatypes ((MutLongMap!3326 0))(
  ( (LongMap!3326 (underlying!6859 Cell!13121)) (MutLongMapExt!3325 (__x!18885 Int)) )
))
(declare-datatypes ((Cell!13123 0))(
  ( (Cell!13124 (v!31365 MutLongMap!3326)) )
))
(declare-datatypes ((MutableMap!3236 0))(
  ( (MutableMapExt!3235 (__x!18886 Int)) (HashMap!3236 (underlying!6860 Cell!13123) (hashF!5194 Hashable!3236) (_size!6700 (_ BitVec 32)) (defaultValue!3398 Int)) )
))
(declare-datatypes ((tuple2!28620 0))(
  ( (tuple2!28621 (_1!16851 Unit!42485) (_2!16851 MutableMap!3236)) )
))
(declare-fun lt!886881 () tuple2!28620)

(declare-fun allKeysSameHashInMap!145 (ListLongMap!469 Hashable!3236) Bool)

(assert (=> b!2479878 (= e!1573898 (allKeysSameHashInMap!145 lt!886889 (hashF!5194 (_2!16851 lt!886881))))))

(declare-fun b!2479879 () Bool)

(declare-fun res!1049678 () Bool)

(declare-fun e!1573889 () Bool)

(assert (=> b!2479879 (=> (not res!1049678) (not e!1573889))))

(declare-fun thiss!42540 () MutableMap!3236)

(declare-fun key!2246 () K!5400)

(declare-fun contains!5042 (MutableMap!3236 K!5400) Bool)

(assert (=> b!2479879 (= res!1049678 (contains!5042 thiss!42540 key!2246))))

(declare-fun e!1573894 () Bool)

(declare-fun e!1573892 () Bool)

(assert (=> b!2479880 (= e!1573894 (and e!1573892 tp!793643))))

(declare-fun b!2479881 () Bool)

(declare-fun e!1573893 () Bool)

(declare-fun e!1573896 () Bool)

(assert (=> b!2479881 (= e!1573893 e!1573896)))

(declare-fun b!2479882 () Bool)

(declare-fun e!1573897 () Bool)

(declare-fun lt!886876 () MutLongMap!3326)

(get-info :version)

(assert (=> b!2479882 (= e!1573892 (and e!1573897 ((_ is LongMap!3326) lt!886876)))))

(assert (=> b!2479882 (= lt!886876 (v!31365 (underlying!6860 thiss!42540)))))

(declare-fun res!1049676 () Bool)

(assert (=> start!242026 (=> (not res!1049676) (not e!1573889))))

(assert (=> start!242026 (= res!1049676 ((_ is HashMap!3236) thiss!42540))))

(assert (=> start!242026 e!1573889))

(assert (=> start!242026 e!1573894))

(declare-fun tp_is_empty!12175 () Bool)

(assert (=> start!242026 tp_is_empty!12175))

(declare-fun b!2479883 () Bool)

(declare-fun e!1573895 () Bool)

(declare-fun tp!793640 () Bool)

(declare-fun mapRes!15436 () Bool)

(assert (=> b!2479883 (= e!1573895 (and tp!793640 mapRes!15436))))

(declare-fun condMapEmpty!15436 () Bool)

(declare-fun mapDefault!15436 () List!29139)

(assert (=> b!2479883 (= condMapEmpty!15436 (= (arr!5242 (_values!3606 (v!31364 (underlying!6859 (v!31365 (underlying!6860 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29139)) mapDefault!15436)))))

(declare-fun mapNonEmpty!15436 () Bool)

(declare-fun tp!793645 () Bool)

(declare-fun tp!793641 () Bool)

(assert (=> mapNonEmpty!15436 (= mapRes!15436 (and tp!793645 tp!793641))))

(declare-fun mapValue!15436 () List!29139)

(declare-fun mapRest!15436 () (Array (_ BitVec 32) List!29139))

(declare-fun mapKey!15436 () (_ BitVec 32))

(assert (=> mapNonEmpty!15436 (= (arr!5242 (_values!3606 (v!31364 (underlying!6859 (v!31365 (underlying!6860 thiss!42540)))))) (store mapRest!15436 mapKey!15436 mapValue!15436))))

(declare-fun b!2479884 () Bool)

(declare-fun res!1049677 () Bool)

(assert (=> b!2479884 (=> (not res!1049677) (not e!1573889))))

(declare-fun valid!2539 (MutableMap!3236) Bool)

(assert (=> b!2479884 (= res!1049677 (valid!2539 thiss!42540))))

(declare-fun mapIsEmpty!15436 () Bool)

(assert (=> mapIsEmpty!15436 mapRes!15436))

(declare-fun b!2479885 () Bool)

(declare-fun e!1573891 () Bool)

(assert (=> b!2479885 (= e!1573891 ((_ is HashMap!3236) (_2!16851 lt!886881)))))

(assert (=> b!2479885 e!1573898))

(declare-fun res!1049675 () Bool)

(assert (=> b!2479885 (=> (not res!1049675) (not e!1573898))))

(declare-fun lambda!93760 () Int)

(declare-fun forall!5953 (List!29140 Int) Bool)

(assert (=> b!2479885 (= res!1049675 (forall!5953 (toList!1524 lt!886889) lambda!93760))))

(declare-fun map!6128 (MutLongMap!3326) ListLongMap!469)

(assert (=> b!2479885 (= lt!886889 (map!6128 (v!31365 (underlying!6860 (_2!16851 lt!886881)))))))

(declare-fun e!1573890 () Bool)

(assert (=> b!2479885 e!1573890))

(declare-fun res!1049674 () Bool)

(assert (=> b!2479885 (=> (not res!1049674) (not e!1573890))))

(declare-fun lt!886878 () ListLongMap!469)

(assert (=> b!2479885 (= res!1049674 (forall!5953 (toList!1524 lt!886878) lambda!93760))))

(declare-fun lt!886880 () List!29139)

(declare-fun lt!886884 () (_ BitVec 64))

(declare-fun lt!886886 () ListLongMap!469)

(declare-fun +!70 (ListLongMap!469 tuple2!28618) ListLongMap!469)

(assert (=> b!2479885 (= lt!886878 (+!70 lt!886886 (tuple2!28619 lt!886884 lt!886880)))))

(declare-fun lt!886882 () Unit!42485)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!41 (ListLongMap!469 (_ BitVec 64) List!29139 Hashable!3236) Unit!42485)

(assert (=> b!2479885 (= lt!886882 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!41 lt!886886 lt!886884 lt!886880 (hashF!5194 (_2!16851 lt!886881))))))

(declare-fun allKeysSameHash!51 (List!29139 (_ BitVec 64) Hashable!3236) Bool)

(assert (=> b!2479885 (allKeysSameHash!51 lt!886880 lt!886884 (hashF!5194 (_2!16851 lt!886881)))))

(declare-fun lt!886887 () Unit!42485)

(declare-fun lt!886888 () List!29139)

(declare-fun lemmaRemovePairForKeyPreservesHash!45 (List!29139 K!5400 (_ BitVec 64) Hashable!3236) Unit!42485)

(assert (=> b!2479885 (= lt!886887 (lemmaRemovePairForKeyPreservesHash!45 lt!886888 key!2246 lt!886884 (hashF!5194 (_2!16851 lt!886881))))))

(assert (=> b!2479885 (allKeysSameHash!51 lt!886888 lt!886884 (hashF!5194 (_2!16851 lt!886881)))))

(declare-fun lt!886875 () Unit!42485)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!47 (List!29140 (_ BitVec 64) List!29139 Hashable!3236) Unit!42485)

(assert (=> b!2479885 (= lt!886875 (lemmaInLongMapAllKeySameHashThenForTuple!47 (toList!1524 lt!886886) lt!886884 lt!886888 (hashF!5194 (_2!16851 lt!886881))))))

(declare-fun b!2479886 () Bool)

(assert (=> b!2479886 (= e!1573890 (allKeysSameHashInMap!145 lt!886878 (hashF!5194 (_2!16851 lt!886881))))))

(declare-fun b!2479887 () Bool)

(assert (=> b!2479887 (= e!1573897 e!1573893)))

(declare-fun b!2479888 () Bool)

(assert (=> b!2479888 (= e!1573889 (not e!1573891))))

(declare-fun res!1049673 () Bool)

(assert (=> b!2479888 (=> res!1049673 e!1573891)))

(declare-datatypes ((tuple2!28622 0))(
  ( (tuple2!28623 (_1!16852 Bool) (_2!16852 MutLongMap!3326)) )
))
(declare-fun lt!886879 () tuple2!28622)

(assert (=> b!2479888 (= res!1049673 (not (_1!16852 lt!886879)))))

(declare-fun noDuplicateKeys!64 (List!29139) Bool)

(assert (=> b!2479888 (noDuplicateKeys!64 lt!886880)))

(declare-fun lt!886890 () Unit!42485)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!50 (List!29139 K!5400) Unit!42485)

(assert (=> b!2479888 (= lt!886890 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!50 lt!886888 key!2246))))

(declare-fun lt!886883 () Cell!13123)

(declare-fun Unit!42487 () Unit!42485)

(declare-fun Unit!42488 () Unit!42485)

(assert (=> b!2479888 (= lt!886881 (ite (_1!16852 lt!886879) (tuple2!28621 Unit!42487 (HashMap!3236 lt!886883 (hashF!5194 thiss!42540) (bvsub (_size!6700 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3398 thiss!42540))) (tuple2!28621 Unit!42488 (HashMap!3236 lt!886883 (hashF!5194 thiss!42540) (_size!6700 thiss!42540) (defaultValue!3398 thiss!42540)))))))

(assert (=> b!2479888 (= lt!886883 (Cell!13124 (_2!16852 lt!886879)))))

(declare-fun update!171 (MutLongMap!3326 (_ BitVec 64) List!29139) tuple2!28622)

(assert (=> b!2479888 (= lt!886879 (update!171 (v!31365 (underlying!6860 thiss!42540)) lt!886884 lt!886880))))

(declare-fun removePairForKey!54 (List!29139 K!5400) List!29139)

(assert (=> b!2479888 (= lt!886880 (removePairForKey!54 lt!886888 key!2246))))

(declare-datatypes ((ListMap!1009 0))(
  ( (ListMap!1010 (toList!1525 List!29139)) )
))
(declare-fun lt!886877 () ListMap!1009)

(declare-fun map!6129 (MutableMap!3236) ListMap!1009)

(assert (=> b!2479888 (= lt!886877 (map!6129 thiss!42540))))

(declare-fun lt!886885 () Unit!42485)

(declare-fun forallContained!835 (List!29140 Int tuple2!28618) Unit!42485)

(assert (=> b!2479888 (= lt!886885 (forallContained!835 (toList!1524 lt!886886) lambda!93760 (tuple2!28619 lt!886884 lt!886888)))))

(assert (=> b!2479888 (= lt!886886 (map!6128 (v!31365 (underlying!6860 thiss!42540))))))

(declare-fun apply!6888 (MutLongMap!3326 (_ BitVec 64)) List!29139)

(assert (=> b!2479888 (= lt!886888 (apply!6888 (v!31365 (underlying!6860 thiss!42540)) lt!886884))))

(declare-fun hash!667 (Hashable!3236 K!5400) (_ BitVec 64))

(assert (=> b!2479888 (= lt!886884 (hash!667 (hashF!5194 thiss!42540) key!2246))))

(declare-fun tp!793644 () Bool)

(declare-fun tp!793646 () Bool)

(declare-fun array_inv!3759 (array!11763) Bool)

(declare-fun array_inv!3760 (array!11761) Bool)

(assert (=> b!2479889 (= e!1573896 (and tp!793642 tp!793644 tp!793646 (array_inv!3759 (_keys!3623 (v!31364 (underlying!6859 (v!31365 (underlying!6860 thiss!42540)))))) (array_inv!3760 (_values!3606 (v!31364 (underlying!6859 (v!31365 (underlying!6860 thiss!42540)))))) e!1573895))))

(assert (= (and start!242026 res!1049676) b!2479884))

(assert (= (and b!2479884 res!1049677) b!2479879))

(assert (= (and b!2479879 res!1049678) b!2479888))

(assert (= (and b!2479888 (not res!1049673)) b!2479885))

(assert (= (and b!2479885 res!1049674) b!2479886))

(assert (= (and b!2479885 res!1049675) b!2479878))

(assert (= (and b!2479883 condMapEmpty!15436) mapIsEmpty!15436))

(assert (= (and b!2479883 (not condMapEmpty!15436)) mapNonEmpty!15436))

(assert (= b!2479889 b!2479883))

(assert (= b!2479881 b!2479889))

(assert (= b!2479887 b!2479881))

(assert (= (and b!2479882 ((_ is LongMap!3326) (v!31365 (underlying!6860 thiss!42540)))) b!2479887))

(assert (= b!2479880 b!2479882))

(assert (= (and start!242026 ((_ is HashMap!3236) thiss!42540)) b!2479880))

(declare-fun m!2847703 () Bool)

(assert (=> mapNonEmpty!15436 m!2847703))

(declare-fun m!2847705 () Bool)

(assert (=> b!2479886 m!2847705))

(declare-fun m!2847707 () Bool)

(assert (=> b!2479884 m!2847707))

(declare-fun m!2847709 () Bool)

(assert (=> b!2479878 m!2847709))

(declare-fun m!2847711 () Bool)

(assert (=> b!2479879 m!2847711))

(declare-fun m!2847713 () Bool)

(assert (=> b!2479888 m!2847713))

(declare-fun m!2847715 () Bool)

(assert (=> b!2479888 m!2847715))

(declare-fun m!2847717 () Bool)

(assert (=> b!2479888 m!2847717))

(declare-fun m!2847719 () Bool)

(assert (=> b!2479888 m!2847719))

(declare-fun m!2847721 () Bool)

(assert (=> b!2479888 m!2847721))

(declare-fun m!2847723 () Bool)

(assert (=> b!2479888 m!2847723))

(declare-fun m!2847725 () Bool)

(assert (=> b!2479888 m!2847725))

(declare-fun m!2847727 () Bool)

(assert (=> b!2479888 m!2847727))

(declare-fun m!2847729 () Bool)

(assert (=> b!2479888 m!2847729))

(declare-fun m!2847731 () Bool)

(assert (=> b!2479885 m!2847731))

(declare-fun m!2847733 () Bool)

(assert (=> b!2479885 m!2847733))

(declare-fun m!2847735 () Bool)

(assert (=> b!2479885 m!2847735))

(declare-fun m!2847737 () Bool)

(assert (=> b!2479885 m!2847737))

(declare-fun m!2847739 () Bool)

(assert (=> b!2479885 m!2847739))

(declare-fun m!2847741 () Bool)

(assert (=> b!2479885 m!2847741))

(declare-fun m!2847743 () Bool)

(assert (=> b!2479885 m!2847743))

(declare-fun m!2847745 () Bool)

(assert (=> b!2479885 m!2847745))

(declare-fun m!2847747 () Bool)

(assert (=> b!2479885 m!2847747))

(declare-fun m!2847749 () Bool)

(assert (=> b!2479889 m!2847749))

(declare-fun m!2847751 () Bool)

(assert (=> b!2479889 m!2847751))

(check-sat (not b!2479883) (not b!2479889) (not b!2479884) tp_is_empty!12175 (not b!2479878) b_and!188407 (not mapNonEmpty!15436) (not b!2479879) (not b!2479886) (not b!2479885) (not b_next!72865) (not b!2479888) (not b_next!72867) b_and!188409)
(check-sat b_and!188409 b_and!188407 (not b_next!72865) (not b_next!72867))
