; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242066 () Bool)

(assert start!242066)

(declare-fun b!2480808 () Bool)

(declare-fun b_free!72241 () Bool)

(declare-fun b_next!72945 () Bool)

(assert (=> b!2480808 (= b_free!72241 (not b_next!72945))))

(declare-fun tp!794061 () Bool)

(declare-fun b_and!188487 () Bool)

(assert (=> b!2480808 (= tp!794061 b_and!188487)))

(declare-fun b!2480820 () Bool)

(declare-fun b_free!72243 () Bool)

(declare-fun b_next!72947 () Bool)

(assert (=> b!2480820 (= b_free!72243 (not b_next!72947))))

(declare-fun tp!794062 () Bool)

(declare-fun b_and!188489 () Bool)

(assert (=> b!2480820 (= tp!794062 b_and!188489)))

(declare-fun b!2480807 () Bool)

(declare-fun e!1574633 () Bool)

(declare-fun e!1574631 () Bool)

(declare-datatypes ((K!5450 0))(
  ( (K!5451 (val!8835 Int)) )
))
(declare-datatypes ((V!5652 0))(
  ( (V!5653 (val!8836 Int)) )
))
(declare-datatypes ((tuple2!28748 0))(
  ( (tuple2!28749 (_1!16915 K!5450) (_2!16915 V!5652)) )
))
(declare-datatypes ((List!29176 0))(
  ( (Nil!29076) (Cons!29076 (h!34482 tuple2!28748) (t!210833 List!29176)) )
))
(declare-datatypes ((array!11841 0))(
  ( (array!11842 (arr!5282 (Array (_ BitVec 32) List!29176)) (size!22701 (_ BitVec 32))) )
))
(declare-datatypes ((array!11843 0))(
  ( (array!11844 (arr!5283 (Array (_ BitVec 32) (_ BitVec 64))) (size!22702 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6692 0))(
  ( (LongMapFixedSize!6693 (defaultEntry!3720 Int) (mask!8508 (_ BitVec 32)) (extraKeys!3594 (_ BitVec 32)) (zeroValue!3604 List!29176) (minValue!3604 List!29176) (_size!6739 (_ BitVec 32)) (_keys!3643 array!11843) (_values!3626 array!11841) (_vacant!3407 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13201 0))(
  ( (Cell!13202 (v!31404 LongMapFixedSize!6692)) )
))
(declare-datatypes ((MutLongMap!3346 0))(
  ( (LongMap!3346 (underlying!6899 Cell!13201)) (MutLongMapExt!3345 (__x!18944 Int)) )
))
(declare-fun lt!887861 () MutLongMap!3346)

(get-info :version)

(assert (=> b!2480807 (= e!1574633 (and e!1574631 ((_ is LongMap!3346) lt!887861)))))

(declare-datatypes ((Hashable!3256 0))(
  ( (HashableExt!3255 (__x!18945 Int)) )
))
(declare-datatypes ((Cell!13203 0))(
  ( (Cell!13204 (v!31405 MutLongMap!3346)) )
))
(declare-datatypes ((MutableMap!3256 0))(
  ( (MutableMapExt!3255 (__x!18946 Int)) (HashMap!3256 (underlying!6900 Cell!13203) (hashF!5214 Hashable!3256) (_size!6740 (_ BitVec 32)) (defaultValue!3418 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3256)

(assert (=> b!2480807 (= lt!887861 (v!31405 (underlying!6900 thiss!42540)))))

(declare-fun tp!794060 () Bool)

(declare-fun e!1574623 () Bool)

(declare-fun e!1574629 () Bool)

(declare-fun tp!794066 () Bool)

(declare-fun array_inv!3791 (array!11843) Bool)

(declare-fun array_inv!3792 (array!11841) Bool)

(assert (=> b!2480808 (= e!1574623 (and tp!794061 tp!794060 tp!794066 (array_inv!3791 (_keys!3643 (v!31404 (underlying!6899 (v!31405 (underlying!6900 thiss!42540)))))) (array_inv!3792 (_values!3626 (v!31404 (underlying!6899 (v!31405 (underlying!6900 thiss!42540)))))) e!1574629))))

(declare-fun b!2480809 () Bool)

(declare-fun tp!794063 () Bool)

(declare-fun mapRes!15496 () Bool)

(assert (=> b!2480809 (= e!1574629 (and tp!794063 mapRes!15496))))

(declare-fun condMapEmpty!15496 () Bool)

(declare-fun mapDefault!15496 () List!29176)

(assert (=> b!2480809 (= condMapEmpty!15496 (= (arr!5282 (_values!3626 (v!31404 (underlying!6899 (v!31405 (underlying!6900 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29176)) mapDefault!15496)))))

(declare-fun b!2480810 () Bool)

(declare-fun e!1574627 () Bool)

(declare-datatypes ((Unit!42545 0))(
  ( (Unit!42546) )
))
(declare-datatypes ((tuple2!28750 0))(
  ( (tuple2!28751 (_1!16916 Unit!42545) (_2!16916 MutableMap!3256)) )
))
(declare-fun lt!887860 () tuple2!28750)

(declare-datatypes ((ListMap!1043 0))(
  ( (ListMap!1044 (toList!1558 List!29176)) )
))
(declare-fun lt!887867 () ListMap!1043)

(declare-fun map!6166 (MutableMap!3256) ListMap!1043)

(assert (=> b!2480810 (= e!1574627 (= (map!6166 (_2!16916 lt!887860)) lt!887867))))

(declare-fun mapNonEmpty!15496 () Bool)

(declare-fun tp!794064 () Bool)

(declare-fun tp!794065 () Bool)

(assert (=> mapNonEmpty!15496 (= mapRes!15496 (and tp!794064 tp!794065))))

(declare-fun mapKey!15496 () (_ BitVec 32))

(declare-fun mapValue!15496 () List!29176)

(declare-fun mapRest!15496 () (Array (_ BitVec 32) List!29176))

(assert (=> mapNonEmpty!15496 (= (arr!5282 (_values!3626 (v!31404 (underlying!6899 (v!31405 (underlying!6900 thiss!42540)))))) (store mapRest!15496 mapKey!15496 mapValue!15496))))

(declare-fun b!2480811 () Bool)

(declare-fun e!1574622 () Bool)

(declare-fun e!1574636 () Bool)

(assert (=> b!2480811 (= e!1574622 (not e!1574636))))

(declare-fun res!1050222 () Bool)

(assert (=> b!2480811 (=> res!1050222 e!1574636)))

(assert (=> b!2480811 (= res!1050222 (not ((_ is HashMap!3256) (_2!16916 lt!887860))))))

(declare-fun lt!887857 () Unit!42545)

(declare-fun e!1574628 () Unit!42545)

(assert (=> b!2480811 (= lt!887857 e!1574628)))

(declare-fun c!394461 () Bool)

(declare-datatypes ((tuple2!28752 0))(
  ( (tuple2!28753 (_1!16917 Bool) (_2!16917 MutLongMap!3346)) )
))
(declare-fun lt!887874 () tuple2!28752)

(assert (=> b!2480811 (= c!394461 (_1!16917 lt!887874))))

(declare-fun e!1574635 () Bool)

(assert (=> b!2480811 e!1574635))

(declare-fun res!1050228 () Bool)

(assert (=> b!2480811 (=> (not res!1050228) (not e!1574635))))

(declare-fun lt!887865 () List!29176)

(declare-fun noDuplicateKeys!78 (List!29176) Bool)

(assert (=> b!2480811 (= res!1050228 (noDuplicateKeys!78 lt!887865))))

(declare-fun lt!887866 () Unit!42545)

(declare-fun lt!887863 () List!29176)

(declare-fun key!2246 () K!5450)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!64 (List!29176 K!5450) Unit!42545)

(assert (=> b!2480811 (= lt!887866 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!64 lt!887863 key!2246))))

(declare-fun lt!887873 () Cell!13203)

(declare-fun Unit!42547 () Unit!42545)

(declare-fun Unit!42548 () Unit!42545)

(assert (=> b!2480811 (= lt!887860 (ite (_1!16917 lt!887874) (tuple2!28751 Unit!42547 (HashMap!3256 lt!887873 (hashF!5214 thiss!42540) (bvsub (_size!6740 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3418 thiss!42540))) (tuple2!28751 Unit!42548 (HashMap!3256 lt!887873 (hashF!5214 thiss!42540) (_size!6740 thiss!42540) (defaultValue!3418 thiss!42540)))))))

(assert (=> b!2480811 (= lt!887873 (Cell!13204 (_2!16917 lt!887874)))))

(declare-fun lt!887858 () (_ BitVec 64))

(declare-fun update!185 (MutLongMap!3346 (_ BitVec 64) List!29176) tuple2!28752)

(assert (=> b!2480811 (= lt!887874 (update!185 (v!31405 (underlying!6900 thiss!42540)) lt!887858 lt!887865))))

(declare-fun removePairForKey!68 (List!29176 K!5450) List!29176)

(assert (=> b!2480811 (= lt!887865 (removePairForKey!68 lt!887863 key!2246))))

(assert (=> b!2480811 (= lt!887867 (map!6166 thiss!42540))))

(declare-fun lambda!93912 () Int)

(declare-datatypes ((tuple2!28754 0))(
  ( (tuple2!28755 (_1!16918 (_ BitVec 64)) (_2!16918 List!29176)) )
))
(declare-datatypes ((List!29177 0))(
  ( (Nil!29077) (Cons!29077 (h!34483 tuple2!28754) (t!210834 List!29177)) )
))
(declare-datatypes ((ListLongMap!503 0))(
  ( (ListLongMap!504 (toList!1559 List!29177)) )
))
(declare-fun lt!887868 () ListLongMap!503)

(declare-fun lt!887862 () Unit!42545)

(declare-fun forallContained!849 (List!29177 Int tuple2!28754) Unit!42545)

(assert (=> b!2480811 (= lt!887862 (forallContained!849 (toList!1559 lt!887868) lambda!93912 (tuple2!28755 lt!887858 lt!887863)))))

(declare-fun map!6167 (MutLongMap!3346) ListLongMap!503)

(assert (=> b!2480811 (= lt!887868 (map!6167 (v!31405 (underlying!6900 thiss!42540))))))

(declare-fun apply!6906 (MutLongMap!3346 (_ BitVec 64)) List!29176)

(assert (=> b!2480811 (= lt!887863 (apply!6906 (v!31405 (underlying!6900 thiss!42540)) lt!887858))))

(declare-fun hash!681 (Hashable!3256 K!5450) (_ BitVec 64))

(assert (=> b!2480811 (= lt!887858 (hash!681 (hashF!5214 thiss!42540) key!2246))))

(declare-fun mapIsEmpty!15496 () Bool)

(assert (=> mapIsEmpty!15496 mapRes!15496))

(declare-fun b!2480812 () Bool)

(declare-fun e!1574624 () Bool)

(assert (=> b!2480812 (= e!1574631 e!1574624)))

(declare-fun b!2480813 () Bool)

(declare-fun res!1050227 () Bool)

(assert (=> b!2480813 (=> (not res!1050227) (not e!1574622))))

(declare-fun valid!2552 (MutableMap!3256) Bool)

(assert (=> b!2480813 (= res!1050227 (valid!2552 thiss!42540))))

(declare-fun b!2480814 () Bool)

(declare-fun Unit!42549 () Unit!42545)

(assert (=> b!2480814 (= e!1574628 Unit!42549)))

(declare-fun b!2480815 () Bool)

(assert (=> b!2480815 (= e!1574624 e!1574623)))

(declare-fun b!2480816 () Bool)

(declare-fun res!1050221 () Bool)

(assert (=> b!2480816 (=> (not res!1050221) (not e!1574622))))

(declare-fun contains!5075 (MutableMap!3256 K!5450) Bool)

(assert (=> b!2480816 (= res!1050221 (contains!5075 thiss!42540 key!2246))))

(declare-fun b!2480817 () Bool)

(declare-fun e!1574626 () Bool)

(assert (=> b!2480817 (= e!1574635 e!1574626)))

(declare-fun res!1050219 () Bool)

(assert (=> b!2480817 (=> res!1050219 e!1574626)))

(assert (=> b!2480817 (= res!1050219 (_1!16917 lt!887874))))

(declare-fun b!2480806 () Bool)

(declare-fun res!1050220 () Bool)

(declare-fun lt!887859 () ListLongMap!503)

(declare-fun allKeysSameHashInMap!158 (ListLongMap!503 Hashable!3256) Bool)

(assert (=> b!2480806 (= res!1050220 (allKeysSameHashInMap!158 lt!887859 (hashF!5214 (_2!16916 lt!887860))))))

(declare-fun e!1574634 () Bool)

(assert (=> b!2480806 (=> (not res!1050220) (not e!1574634))))

(declare-fun res!1050225 () Bool)

(assert (=> start!242066 (=> (not res!1050225) (not e!1574622))))

(assert (=> start!242066 (= res!1050225 ((_ is HashMap!3256) thiss!42540))))

(assert (=> start!242066 e!1574622))

(declare-fun e!1574637 () Bool)

(assert (=> start!242066 e!1574637))

(declare-fun tp_is_empty!12215 () Bool)

(assert (=> start!242066 tp_is_empty!12215))

(declare-fun b!2480818 () Bool)

(assert (=> b!2480818 (= e!1574626 e!1574627)))

(declare-fun res!1050223 () Bool)

(assert (=> b!2480818 (=> (not res!1050223) (not e!1574627))))

(assert (=> b!2480818 (= res!1050223 (valid!2552 (_2!16916 lt!887860)))))

(declare-fun b!2480819 () Bool)

(declare-fun res!1050229 () Bool)

(assert (=> b!2480819 (= res!1050229 (valid!2552 (_2!16916 lt!887860)))))

(assert (=> b!2480819 (=> (not res!1050229) (not e!1574634))))

(assert (=> b!2480820 (= e!1574637 (and e!1574633 tp!794062))))

(declare-fun b!2480821 () Bool)

(declare-fun e!1574630 () Bool)

(declare-fun eq!65 (ListMap!1043 ListMap!1043) Bool)

(declare-fun -!121 (ListMap!1043 K!5450) ListMap!1043)

(assert (=> b!2480821 (= e!1574630 (eq!65 (map!6166 (_2!16916 lt!887860)) (-!121 lt!887867 key!2246)))))

(declare-fun b!2480822 () Bool)

(assert (=> b!2480822 (= e!1574636 true)))

(declare-fun lt!887872 () Bool)

(assert (=> b!2480822 (= lt!887872 (valid!2552 (_2!16916 lt!887860)))))

(declare-fun b!2480823 () Bool)

(declare-fun contains!5076 (ListMap!1043 K!5450) Bool)

(assert (=> b!2480823 (= e!1574634 (contains!5076 lt!887867 key!2246))))

(declare-fun b!2480824 () Bool)

(declare-fun Unit!42550 () Unit!42545)

(assert (=> b!2480824 (= e!1574628 Unit!42550)))

(declare-fun lt!887864 () Unit!42545)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!57 (List!29177 (_ BitVec 64) List!29176 Hashable!3256) Unit!42545)

(assert (=> b!2480824 (= lt!887864 (lemmaInLongMapAllKeySameHashThenForTuple!57 (toList!1559 lt!887868) lt!887858 lt!887863 (hashF!5214 (_2!16916 lt!887860))))))

(declare-fun allKeysSameHash!61 (List!29176 (_ BitVec 64) Hashable!3256) Bool)

(assert (=> b!2480824 (allKeysSameHash!61 lt!887863 lt!887858 (hashF!5214 (_2!16916 lt!887860)))))

(declare-fun lt!887870 () Unit!42545)

(declare-fun lemmaRemovePairForKeyPreservesHash!55 (List!29176 K!5450 (_ BitVec 64) Hashable!3256) Unit!42545)

(assert (=> b!2480824 (= lt!887870 (lemmaRemovePairForKeyPreservesHash!55 lt!887863 key!2246 lt!887858 (hashF!5214 (_2!16916 lt!887860))))))

(assert (=> b!2480824 (allKeysSameHash!61 lt!887865 lt!887858 (hashF!5214 (_2!16916 lt!887860)))))

(declare-fun lt!887871 () Unit!42545)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!51 (ListLongMap!503 (_ BitVec 64) List!29176 Hashable!3256) Unit!42545)

(assert (=> b!2480824 (= lt!887871 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!51 lt!887868 lt!887858 lt!887865 (hashF!5214 (_2!16916 lt!887860))))))

(declare-fun lt!887869 () ListLongMap!503)

(declare-fun +!80 (ListLongMap!503 tuple2!28754) ListLongMap!503)

(assert (=> b!2480824 (= lt!887869 (+!80 lt!887868 (tuple2!28755 lt!887858 lt!887865)))))

(declare-fun res!1050226 () Bool)

(declare-fun forall!5963 (List!29177 Int) Bool)

(assert (=> b!2480824 (= res!1050226 (forall!5963 (toList!1559 lt!887869) lambda!93912))))

(declare-fun e!1574625 () Bool)

(assert (=> b!2480824 (=> (not res!1050226) (not e!1574625))))

(assert (=> b!2480824 e!1574625))

(assert (=> b!2480824 (= lt!887859 (map!6167 (v!31405 (underlying!6900 (_2!16916 lt!887860)))))))

(declare-fun res!1050230 () Bool)

(assert (=> b!2480824 (= res!1050230 (forall!5963 (toList!1559 lt!887859) lambda!93912))))

(assert (=> b!2480824 (=> (not res!1050230) (not e!1574634))))

(assert (=> b!2480824 e!1574634))

(declare-fun lt!887856 () Unit!42545)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!27 (ListLongMap!503 (_ BitVec 64) List!29176 K!5450 Hashable!3256) Unit!42545)

(assert (=> b!2480824 (= lt!887856 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!27 lt!887868 lt!887858 lt!887865 key!2246 (hashF!5214 (_2!16916 lt!887860))))))

(declare-fun res!1050224 () Bool)

(declare-fun extractMap!166 (List!29177) ListMap!1043)

(assert (=> b!2480824 (= res!1050224 (eq!65 (extractMap!166 (toList!1559 lt!887869)) (-!121 (extractMap!166 (toList!1559 lt!887868)) key!2246)))))

(assert (=> b!2480824 (=> (not res!1050224) (not e!1574630))))

(assert (=> b!2480824 e!1574630))

(declare-fun b!2480825 () Bool)

(assert (=> b!2480825 (= e!1574625 (allKeysSameHashInMap!158 lt!887869 (hashF!5214 (_2!16916 lt!887860))))))

(assert (= (and start!242066 res!1050225) b!2480813))

(assert (= (and b!2480813 res!1050227) b!2480816))

(assert (= (and b!2480816 res!1050221) b!2480811))

(assert (= (and b!2480811 res!1050228) b!2480817))

(assert (= (and b!2480817 (not res!1050219)) b!2480818))

(assert (= (and b!2480818 res!1050223) b!2480810))

(assert (= (and b!2480811 c!394461) b!2480824))

(assert (= (and b!2480811 (not c!394461)) b!2480814))

(assert (= (and b!2480824 res!1050226) b!2480825))

(assert (= (and b!2480824 res!1050230) b!2480806))

(assert (= (and b!2480806 res!1050220) b!2480819))

(assert (= (and b!2480819 res!1050229) b!2480823))

(assert (= (and b!2480824 res!1050224) b!2480821))

(assert (= (and b!2480811 (not res!1050222)) b!2480822))

(assert (= (and b!2480809 condMapEmpty!15496) mapIsEmpty!15496))

(assert (= (and b!2480809 (not condMapEmpty!15496)) mapNonEmpty!15496))

(assert (= b!2480808 b!2480809))

(assert (= b!2480815 b!2480808))

(assert (= b!2480812 b!2480815))

(assert (= (and b!2480807 ((_ is LongMap!3346) (v!31405 (underlying!6900 thiss!42540)))) b!2480812))

(assert (= b!2480820 b!2480807))

(assert (= (and start!242066 ((_ is HashMap!3256) thiss!42540)) b!2480820))

(declare-fun m!2848863 () Bool)

(assert (=> b!2480825 m!2848863))

(declare-fun m!2848865 () Bool)

(assert (=> b!2480823 m!2848865))

(declare-fun m!2848867 () Bool)

(assert (=> b!2480806 m!2848867))

(declare-fun m!2848869 () Bool)

(assert (=> b!2480808 m!2848869))

(declare-fun m!2848871 () Bool)

(assert (=> b!2480808 m!2848871))

(declare-fun m!2848873 () Bool)

(assert (=> b!2480822 m!2848873))

(declare-fun m!2848875 () Bool)

(assert (=> b!2480824 m!2848875))

(declare-fun m!2848877 () Bool)

(assert (=> b!2480824 m!2848877))

(declare-fun m!2848879 () Bool)

(assert (=> b!2480824 m!2848879))

(declare-fun m!2848881 () Bool)

(assert (=> b!2480824 m!2848881))

(declare-fun m!2848883 () Bool)

(assert (=> b!2480824 m!2848883))

(declare-fun m!2848885 () Bool)

(assert (=> b!2480824 m!2848885))

(assert (=> b!2480824 m!2848881))

(declare-fun m!2848887 () Bool)

(assert (=> b!2480824 m!2848887))

(declare-fun m!2848889 () Bool)

(assert (=> b!2480824 m!2848889))

(declare-fun m!2848891 () Bool)

(assert (=> b!2480824 m!2848891))

(declare-fun m!2848893 () Bool)

(assert (=> b!2480824 m!2848893))

(declare-fun m!2848895 () Bool)

(assert (=> b!2480824 m!2848895))

(declare-fun m!2848897 () Bool)

(assert (=> b!2480824 m!2848897))

(declare-fun m!2848899 () Bool)

(assert (=> b!2480824 m!2848899))

(assert (=> b!2480824 m!2848885))

(assert (=> b!2480824 m!2848879))

(declare-fun m!2848901 () Bool)

(assert (=> b!2480824 m!2848901))

(declare-fun m!2848903 () Bool)

(assert (=> b!2480810 m!2848903))

(declare-fun m!2848905 () Bool)

(assert (=> mapNonEmpty!15496 m!2848905))

(declare-fun m!2848907 () Bool)

(assert (=> b!2480811 m!2848907))

(declare-fun m!2848909 () Bool)

(assert (=> b!2480811 m!2848909))

(declare-fun m!2848911 () Bool)

(assert (=> b!2480811 m!2848911))

(declare-fun m!2848913 () Bool)

(assert (=> b!2480811 m!2848913))

(declare-fun m!2848915 () Bool)

(assert (=> b!2480811 m!2848915))

(declare-fun m!2848917 () Bool)

(assert (=> b!2480811 m!2848917))

(declare-fun m!2848919 () Bool)

(assert (=> b!2480811 m!2848919))

(declare-fun m!2848921 () Bool)

(assert (=> b!2480811 m!2848921))

(declare-fun m!2848923 () Bool)

(assert (=> b!2480811 m!2848923))

(assert (=> b!2480819 m!2848873))

(assert (=> b!2480818 m!2848873))

(declare-fun m!2848925 () Bool)

(assert (=> b!2480813 m!2848925))

(declare-fun m!2848927 () Bool)

(assert (=> b!2480816 m!2848927))

(assert (=> b!2480821 m!2848903))

(declare-fun m!2848929 () Bool)

(assert (=> b!2480821 m!2848929))

(assert (=> b!2480821 m!2848903))

(assert (=> b!2480821 m!2848929))

(declare-fun m!2848931 () Bool)

(assert (=> b!2480821 m!2848931))

(check-sat (not b!2480813) (not b!2480818) (not b!2480819) tp_is_empty!12215 (not b!2480822) (not b!2480825) b_and!188489 (not b_next!72947) (not b!2480806) (not b!2480811) (not b!2480823) (not b_next!72945) (not b!2480824) (not b!2480809) (not b!2480808) (not b!2480816) (not mapNonEmpty!15496) b_and!188487 (not b!2480821) (not b!2480810))
(check-sat b_and!188489 b_and!188487 (not b_next!72945) (not b_next!72947))
