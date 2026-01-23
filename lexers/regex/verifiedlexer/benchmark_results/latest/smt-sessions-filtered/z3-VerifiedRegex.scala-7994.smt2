; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414280 () Bool)

(assert start!414280)

(declare-fun b!4310639 () Bool)

(declare-fun b_free!128635 () Bool)

(declare-fun b_next!129339 () Bool)

(assert (=> b!4310639 (= b_free!128635 (not b_next!129339))))

(declare-fun tp!1324697 () Bool)

(declare-fun b_and!340067 () Bool)

(assert (=> b!4310639 (= tp!1324697 b_and!340067)))

(declare-fun b!4310636 () Bool)

(declare-fun b_free!128637 () Bool)

(declare-fun b_next!129341 () Bool)

(assert (=> b!4310636 (= b_free!128637 (not b_next!129341))))

(declare-fun tp!1324696 () Bool)

(declare-fun b_and!340069 () Bool)

(assert (=> b!4310636 (= tp!1324696 b_and!340069)))

(declare-fun b!4310633 () Bool)

(declare-fun e!2680919 () Bool)

(declare-fun e!2680918 () Bool)

(assert (=> b!4310633 (= e!2680919 e!2680918)))

(declare-fun res!1766643 () Bool)

(assert (=> b!4310633 (=> (not res!1766643) (not e!2680918))))

(declare-datatypes ((K!9419 0))(
  ( (K!9420 (val!15793 Int)) )
))
(declare-datatypes ((V!9621 0))(
  ( (V!9622 (val!15794 Int)) )
))
(declare-datatypes ((tuple2!46672 0))(
  ( (tuple2!46673 (_1!26616 K!9419) (_2!26616 V!9621)) )
))
(declare-datatypes ((List!48331 0))(
  ( (Nil!48207) (Cons!48207 (h!53644 tuple2!46672) (t!355142 List!48331)) )
))
(declare-fun lt!1531092 () List!48331)

(declare-fun v!9179 () V!9621)

(declare-fun lt!1531096 () (_ BitVec 64))

(declare-fun key!2048 () K!9419)

(declare-datatypes ((array!16842 0))(
  ( (array!16843 (arr!7523 (Array (_ BitVec 32) (_ BitVec 64))) (size!35562 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4585 0))(
  ( (HashableExt!4584 (__x!30032 Int)) )
))
(declare-datatypes ((array!16844 0))(
  ( (array!16845 (arr!7524 (Array (_ BitVec 32) List!48331)) (size!35563 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9338 0))(
  ( (LongMapFixedSize!9339 (defaultEntry!5054 Int) (mask!13232 (_ BitVec 32)) (extraKeys!4918 (_ BitVec 32)) (zeroValue!4928 List!48331) (minValue!4928 List!48331) (_size!9381 (_ BitVec 32)) (_keys!4969 array!16842) (_values!4950 array!16844) (_vacant!4730 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18485 0))(
  ( (Cell!18486 (v!42365 LongMapFixedSize!9338)) )
))
(declare-datatypes ((MutLongMap!4669 0))(
  ( (LongMap!4669 (underlying!9567 Cell!18485)) (MutLongMapExt!4668 (__x!30033 Int)) )
))
(declare-datatypes ((Cell!18487 0))(
  ( (Cell!18488 (v!42366 MutLongMap!4669)) )
))
(declare-datatypes ((MutableMap!4575 0))(
  ( (MutableMapExt!4574 (__x!30034 Int)) (HashMap!4575 (underlying!9568 Cell!18487) (hashF!6710 Hashable!4585) (_size!9382 (_ BitVec 32)) (defaultValue!4746 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4575)

(declare-datatypes ((tuple2!46674 0))(
  ( (tuple2!46675 (_1!26617 Bool) (_2!26617 MutLongMap!4669)) )
))
(declare-fun update!441 (MutLongMap!4669 (_ BitVec 64) List!48331) tuple2!46674)

(assert (=> b!4310633 (= res!1766643 (_1!26617 (update!441 (v!42366 (underlying!9568 thiss!42308)) lt!1531096 (Cons!48207 (tuple2!46673 key!2048 v!9179) lt!1531092))))))

(declare-fun lt!1531095 () List!48331)

(declare-fun removePairForKey!215 (List!48331 K!9419) List!48331)

(assert (=> b!4310633 (= lt!1531092 (removePairForKey!215 lt!1531095 key!2048))))

(declare-fun apply!11022 (MutLongMap!4669 (_ BitVec 64)) List!48331)

(assert (=> b!4310633 (= lt!1531095 (apply!11022 (v!42366 (underlying!9568 thiss!42308)) lt!1531096))))

(declare-fun hash!1014 (Hashable!4585 K!9419) (_ BitVec 64))

(assert (=> b!4310633 (= lt!1531096 (hash!1014 (hashF!6710 thiss!42308) key!2048))))

(declare-fun b!4310634 () Bool)

(declare-fun containsKey!316 (List!48331 K!9419) Bool)

(assert (=> b!4310634 (= e!2680918 (not (not (containsKey!316 lt!1531092 key!2048))))))

(declare-fun noDuplicateKeys!214 (List!48331) Bool)

(assert (=> b!4310634 (noDuplicateKeys!214 lt!1531092)))

(declare-datatypes ((Unit!67334 0))(
  ( (Unit!67335) )
))
(declare-fun lt!1531097 () Unit!67334)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!165 (List!48331 K!9419) Unit!67334)

(assert (=> b!4310634 (= lt!1531097 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!165 lt!1531095 key!2048))))

(declare-fun allKeysSameHash!190 (List!48331 (_ BitVec 64) Hashable!4585) Bool)

(assert (=> b!4310634 (allKeysSameHash!190 lt!1531092 lt!1531096 (hashF!6710 thiss!42308))))

(declare-fun lt!1531098 () Unit!67334)

(declare-fun lemmaRemovePairForKeyPreservesHash!170 (List!48331 K!9419 (_ BitVec 64) Hashable!4585) Unit!67334)

(assert (=> b!4310634 (= lt!1531098 (lemmaRemovePairForKeyPreservesHash!170 lt!1531095 key!2048 lt!1531096 (hashF!6710 thiss!42308)))))

(assert (=> b!4310634 (allKeysSameHash!190 lt!1531095 lt!1531096 (hashF!6710 thiss!42308))))

(declare-datatypes ((tuple2!46676 0))(
  ( (tuple2!46677 (_1!26618 (_ BitVec 64)) (_2!26618 List!48331)) )
))
(declare-datatypes ((List!48332 0))(
  ( (Nil!48208) (Cons!48208 (h!53645 tuple2!46676) (t!355143 List!48332)) )
))
(declare-datatypes ((ListLongMap!1023 0))(
  ( (ListLongMap!1024 (toList!2411 List!48332)) )
))
(declare-fun lt!1531100 () ListLongMap!1023)

(declare-fun lt!1531094 () Unit!67334)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!177 (List!48332 (_ BitVec 64) List!48331 Hashable!4585) Unit!67334)

(assert (=> b!4310634 (= lt!1531094 (lemmaInLongMapAllKeySameHashThenForTuple!177 (toList!2411 lt!1531100) lt!1531096 lt!1531095 (hashF!6710 thiss!42308)))))

(declare-fun b!4310635 () Bool)

(declare-fun e!2680913 () Bool)

(declare-fun e!2680916 () Bool)

(declare-fun lt!1531099 () MutLongMap!4669)

(get-info :version)

(assert (=> b!4310635 (= e!2680913 (and e!2680916 ((_ is LongMap!4669) lt!1531099)))))

(assert (=> b!4310635 (= lt!1531099 (v!42366 (underlying!9568 thiss!42308)))))

(declare-fun e!2680917 () Bool)

(assert (=> b!4310636 (= e!2680917 (and e!2680913 tp!1324696))))

(declare-fun mapIsEmpty!20846 () Bool)

(declare-fun mapRes!20846 () Bool)

(assert (=> mapIsEmpty!20846 mapRes!20846))

(declare-fun b!4310637 () Bool)

(declare-fun e!2680912 () Bool)

(assert (=> b!4310637 (= e!2680912 e!2680919)))

(declare-fun res!1766645 () Bool)

(assert (=> b!4310637 (=> (not res!1766645) (not e!2680919))))

(declare-fun contains!10183 (MutableMap!4575 K!9419) Bool)

(assert (=> b!4310637 (= res!1766645 (contains!10183 thiss!42308 key!2048))))

(declare-fun map!10200 (MutLongMap!4669) ListLongMap!1023)

(assert (=> b!4310637 (= lt!1531100 (map!10200 (v!42366 (underlying!9568 thiss!42308))))))

(declare-datatypes ((ListMap!1693 0))(
  ( (ListMap!1694 (toList!2412 List!48331)) )
))
(declare-fun lt!1531093 () ListMap!1693)

(declare-fun map!10201 (MutableMap!4575) ListMap!1693)

(assert (=> b!4310637 (= lt!1531093 (map!10201 thiss!42308))))

(declare-fun b!4310638 () Bool)

(declare-fun e!2680910 () Bool)

(declare-fun e!2680915 () Bool)

(assert (=> b!4310638 (= e!2680910 e!2680915)))

(declare-fun tp!1324695 () Bool)

(declare-fun e!2680914 () Bool)

(declare-fun tp!1324692 () Bool)

(declare-fun array_inv!5399 (array!16842) Bool)

(declare-fun array_inv!5400 (array!16844) Bool)

(assert (=> b!4310639 (= e!2680915 (and tp!1324697 tp!1324692 tp!1324695 (array_inv!5399 (_keys!4969 (v!42365 (underlying!9567 (v!42366 (underlying!9568 thiss!42308)))))) (array_inv!5400 (_values!4950 (v!42365 (underlying!9567 (v!42366 (underlying!9568 thiss!42308)))))) e!2680914))))

(declare-fun b!4310640 () Bool)

(declare-fun res!1766644 () Bool)

(assert (=> b!4310640 (=> (not res!1766644) (not e!2680912))))

(declare-fun valid!3658 (MutableMap!4575) Bool)

(assert (=> b!4310640 (= res!1766644 (valid!3658 thiss!42308))))

(declare-fun b!4310641 () Bool)

(declare-fun tp!1324693 () Bool)

(assert (=> b!4310641 (= e!2680914 (and tp!1324693 mapRes!20846))))

(declare-fun condMapEmpty!20846 () Bool)

(declare-fun mapDefault!20846 () List!48331)

(assert (=> b!4310641 (= condMapEmpty!20846 (= (arr!7524 (_values!4950 (v!42365 (underlying!9567 (v!42366 (underlying!9568 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48331)) mapDefault!20846)))))

(declare-fun res!1766642 () Bool)

(assert (=> start!414280 (=> (not res!1766642) (not e!2680912))))

(assert (=> start!414280 (= res!1766642 ((_ is HashMap!4575) thiss!42308))))

(assert (=> start!414280 e!2680912))

(assert (=> start!414280 e!2680917))

(declare-fun tp_is_empty!23781 () Bool)

(assert (=> start!414280 tp_is_empty!23781))

(declare-fun tp_is_empty!23783 () Bool)

(assert (=> start!414280 tp_is_empty!23783))

(declare-fun b!4310642 () Bool)

(assert (=> b!4310642 (= e!2680916 e!2680910)))

(declare-fun mapNonEmpty!20846 () Bool)

(declare-fun tp!1324698 () Bool)

(declare-fun tp!1324694 () Bool)

(assert (=> mapNonEmpty!20846 (= mapRes!20846 (and tp!1324698 tp!1324694))))

(declare-fun mapKey!20846 () (_ BitVec 32))

(declare-fun mapValue!20846 () List!48331)

(declare-fun mapRest!20846 () (Array (_ BitVec 32) List!48331))

(assert (=> mapNonEmpty!20846 (= (arr!7524 (_values!4950 (v!42365 (underlying!9567 (v!42366 (underlying!9568 thiss!42308)))))) (store mapRest!20846 mapKey!20846 mapValue!20846))))

(assert (= (and start!414280 res!1766642) b!4310640))

(assert (= (and b!4310640 res!1766644) b!4310637))

(assert (= (and b!4310637 res!1766645) b!4310633))

(assert (= (and b!4310633 res!1766643) b!4310634))

(assert (= (and b!4310641 condMapEmpty!20846) mapIsEmpty!20846))

(assert (= (and b!4310641 (not condMapEmpty!20846)) mapNonEmpty!20846))

(assert (= b!4310639 b!4310641))

(assert (= b!4310638 b!4310639))

(assert (= b!4310642 b!4310638))

(assert (= (and b!4310635 ((_ is LongMap!4669) (v!42366 (underlying!9568 thiss!42308)))) b!4310642))

(assert (= b!4310636 b!4310635))

(assert (= (and start!414280 ((_ is HashMap!4575) thiss!42308)) b!4310636))

(declare-fun m!4903557 () Bool)

(assert (=> b!4310637 m!4903557))

(declare-fun m!4903559 () Bool)

(assert (=> b!4310637 m!4903559))

(declare-fun m!4903561 () Bool)

(assert (=> b!4310637 m!4903561))

(declare-fun m!4903563 () Bool)

(assert (=> b!4310634 m!4903563))

(declare-fun m!4903565 () Bool)

(assert (=> b!4310634 m!4903565))

(declare-fun m!4903567 () Bool)

(assert (=> b!4310634 m!4903567))

(declare-fun m!4903569 () Bool)

(assert (=> b!4310634 m!4903569))

(declare-fun m!4903571 () Bool)

(assert (=> b!4310634 m!4903571))

(declare-fun m!4903573 () Bool)

(assert (=> b!4310634 m!4903573))

(declare-fun m!4903575 () Bool)

(assert (=> b!4310634 m!4903575))

(declare-fun m!4903577 () Bool)

(assert (=> b!4310633 m!4903577))

(declare-fun m!4903579 () Bool)

(assert (=> b!4310633 m!4903579))

(declare-fun m!4903581 () Bool)

(assert (=> b!4310633 m!4903581))

(declare-fun m!4903583 () Bool)

(assert (=> b!4310633 m!4903583))

(declare-fun m!4903585 () Bool)

(assert (=> b!4310640 m!4903585))

(declare-fun m!4903587 () Bool)

(assert (=> b!4310639 m!4903587))

(declare-fun m!4903589 () Bool)

(assert (=> b!4310639 m!4903589))

(declare-fun m!4903591 () Bool)

(assert (=> mapNonEmpty!20846 m!4903591))

(check-sat tp_is_empty!23781 b_and!340069 (not b!4310633) (not b!4310637) (not b!4310640) (not b!4310641) (not mapNonEmpty!20846) (not b!4310634) (not b_next!129341) tp_is_empty!23783 (not b_next!129339) b_and!340067 (not b!4310639))
(check-sat b_and!340067 b_and!340069 (not b_next!129341) (not b_next!129339))
(get-model)

(declare-fun b!4310665 () Bool)

(declare-fun e!2680936 () Bool)

(declare-fun call!297986 () Bool)

(assert (=> b!4310665 (= e!2680936 call!297986)))

(declare-fun d!1268085 () Bool)

(declare-fun lt!1531151 () Bool)

(declare-fun contains!10184 (ListMap!1693 K!9419) Bool)

(assert (=> d!1268085 (= lt!1531151 (contains!10184 (map!10201 thiss!42308) key!2048))))

(declare-fun e!2680934 () Bool)

(assert (=> d!1268085 (= lt!1531151 e!2680934)))

(declare-fun res!1766652 () Bool)

(assert (=> d!1268085 (=> (not res!1766652) (not e!2680934))))

(declare-fun lt!1531156 () (_ BitVec 64))

(declare-fun contains!10185 (MutLongMap!4669 (_ BitVec 64)) Bool)

(assert (=> d!1268085 (= res!1766652 (contains!10185 (v!42366 (underlying!9568 thiss!42308)) lt!1531156))))

(declare-fun lt!1531157 () Unit!67334)

(declare-fun e!2680938 () Unit!67334)

(assert (=> d!1268085 (= lt!1531157 e!2680938)))

(declare-fun c!732889 () Bool)

(declare-fun extractMap!330 (List!48332) ListMap!1693)

(assert (=> d!1268085 (= c!732889 (contains!10184 (extractMap!330 (toList!2411 (map!10200 (v!42366 (underlying!9568 thiss!42308))))) key!2048))))

(declare-fun lt!1531148 () Unit!67334)

(declare-fun e!2680939 () Unit!67334)

(assert (=> d!1268085 (= lt!1531148 e!2680939)))

(declare-fun c!732891 () Bool)

(assert (=> d!1268085 (= c!732891 (contains!10185 (v!42366 (underlying!9568 thiss!42308)) lt!1531156))))

(assert (=> d!1268085 (= lt!1531156 (hash!1014 (hashF!6710 thiss!42308) key!2048))))

(assert (=> d!1268085 (valid!3658 thiss!42308)))

(assert (=> d!1268085 (= (contains!10183 thiss!42308 key!2048) lt!1531151)))

(declare-fun bm!297978 () Bool)

(declare-datatypes ((Option!10233 0))(
  ( (None!10232) (Some!10232 (v!42371 tuple2!46672)) )
))
(declare-fun call!297985 () Option!10233)

(declare-fun call!297983 () List!48331)

(declare-fun getPair!135 (List!48331 K!9419) Option!10233)

(assert (=> bm!297978 (= call!297985 (getPair!135 call!297983 key!2048))))

(declare-fun bm!297979 () Bool)

(declare-fun call!297984 () ListLongMap!1023)

(assert (=> bm!297979 (= call!297984 (map!10200 (v!42366 (underlying!9568 thiss!42308))))))

(declare-fun b!4310666 () Bool)

(declare-fun isDefined!7535 (Option!10233) Bool)

(assert (=> b!4310666 (= e!2680934 (isDefined!7535 (getPair!135 (apply!11022 (v!42366 (underlying!9568 thiss!42308)) lt!1531156) key!2048)))))

(declare-fun b!4310667 () Bool)

(declare-fun e!2680940 () Unit!67334)

(declare-fun Unit!67336 () Unit!67334)

(assert (=> b!4310667 (= e!2680940 Unit!67336)))

(declare-fun b!4310668 () Bool)

(assert (=> b!4310668 false))

(declare-fun lt!1531152 () Unit!67334)

(declare-fun lt!1531150 () Unit!67334)

(assert (=> b!4310668 (= lt!1531152 lt!1531150)))

(declare-fun lt!1531154 () List!48332)

(declare-fun lt!1531146 () List!48331)

(declare-fun contains!10186 (List!48332 tuple2!46676) Bool)

(assert (=> b!4310668 (contains!10186 lt!1531154 (tuple2!46677 lt!1531156 lt!1531146))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!146 (List!48332 (_ BitVec 64) List!48331) Unit!67334)

(assert (=> b!4310668 (= lt!1531150 (lemmaGetValueByKeyImpliesContainsTuple!146 lt!1531154 lt!1531156 lt!1531146))))

(assert (=> b!4310668 (= lt!1531146 (apply!11022 (v!42366 (underlying!9568 thiss!42308)) lt!1531156))))

(assert (=> b!4310668 (= lt!1531154 (toList!2411 (map!10200 (v!42366 (underlying!9568 thiss!42308)))))))

(declare-fun lt!1531147 () Unit!67334)

(declare-fun lt!1531142 () Unit!67334)

(assert (=> b!4310668 (= lt!1531147 lt!1531142)))

(declare-fun lt!1531153 () List!48332)

(declare-datatypes ((Option!10234 0))(
  ( (None!10233) (Some!10233 (v!42372 List!48331)) )
))
(declare-fun isDefined!7536 (Option!10234) Bool)

(declare-fun getValueByKey!257 (List!48332 (_ BitVec 64)) Option!10234)

(assert (=> b!4310668 (isDefined!7536 (getValueByKey!257 lt!1531153 lt!1531156))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!177 (List!48332 (_ BitVec 64)) Unit!67334)

(assert (=> b!4310668 (= lt!1531142 (lemmaContainsKeyImpliesGetValueByKeyDefined!177 lt!1531153 lt!1531156))))

(assert (=> b!4310668 (= lt!1531153 (toList!2411 (map!10200 (v!42366 (underlying!9568 thiss!42308)))))))

(declare-fun lt!1531141 () Unit!67334)

(declare-fun lt!1531155 () Unit!67334)

(assert (=> b!4310668 (= lt!1531141 lt!1531155)))

(declare-fun lt!1531159 () List!48332)

(declare-fun containsKey!317 (List!48332 (_ BitVec 64)) Bool)

(assert (=> b!4310668 (containsKey!317 lt!1531159 lt!1531156)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!136 (List!48332 (_ BitVec 64)) Unit!67334)

(assert (=> b!4310668 (= lt!1531155 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!136 lt!1531159 lt!1531156))))

(assert (=> b!4310668 (= lt!1531159 (toList!2411 (map!10200 (v!42366 (underlying!9568 thiss!42308)))))))

(declare-fun e!2680937 () Unit!67334)

(declare-fun Unit!67337 () Unit!67334)

(assert (=> b!4310668 (= e!2680937 Unit!67337)))

(declare-fun bm!297980 () Bool)

(assert (=> bm!297980 (= call!297986 (isDefined!7535 call!297985))))

(declare-fun b!4310669 () Bool)

(declare-fun Unit!67338 () Unit!67334)

(assert (=> b!4310669 (= e!2680939 Unit!67338)))

(declare-fun b!4310670 () Bool)

(assert (=> b!4310670 (= e!2680938 e!2680940)))

(declare-fun res!1766654 () Bool)

(declare-fun call!297987 () Bool)

(assert (=> b!4310670 (= res!1766654 call!297987)))

(assert (=> b!4310670 (=> (not res!1766654) (not e!2680936))))

(declare-fun c!732888 () Bool)

(assert (=> b!4310670 (= c!732888 e!2680936)))

(declare-fun b!4310671 () Bool)

(assert (=> b!4310671 false))

(declare-fun lt!1531149 () Unit!67334)

(declare-fun lt!1531144 () Unit!67334)

(assert (=> b!4310671 (= lt!1531149 lt!1531144)))

(declare-fun lt!1531160 () ListLongMap!1023)

(assert (=> b!4310671 (contains!10184 (extractMap!330 (toList!2411 lt!1531160)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!135 (ListLongMap!1023 K!9419 Hashable!4585) Unit!67334)

(assert (=> b!4310671 (= lt!1531144 (lemmaInLongMapThenInGenericMap!135 lt!1531160 key!2048 (hashF!6710 thiss!42308)))))

(assert (=> b!4310671 (= lt!1531160 call!297984)))

(declare-fun Unit!67339 () Unit!67334)

(assert (=> b!4310671 (= e!2680940 Unit!67339)))

(declare-fun bm!297981 () Bool)

(declare-fun lt!1531145 () ListLongMap!1023)

(declare-fun call!297988 () (_ BitVec 64))

(declare-fun contains!10187 (ListLongMap!1023 (_ BitVec 64)) Bool)

(assert (=> bm!297981 (= call!297987 (contains!10187 (ite c!732889 lt!1531145 call!297984) call!297988))))

(declare-fun bm!297982 () Bool)

(assert (=> bm!297982 (= call!297988 (hash!1014 (hashF!6710 thiss!42308) key!2048))))

(declare-fun b!4310672 () Bool)

(declare-fun Unit!67340 () Unit!67334)

(assert (=> b!4310672 (= e!2680937 Unit!67340)))

(declare-fun b!4310673 () Bool)

(declare-fun lambda!132938 () Int)

(declare-fun forallContained!1502 (List!48332 Int tuple2!46676) Unit!67334)

(assert (=> b!4310673 (= e!2680939 (forallContained!1502 (toList!2411 (map!10200 (v!42366 (underlying!9568 thiss!42308)))) lambda!132938 (tuple2!46677 lt!1531156 (apply!11022 (v!42366 (underlying!9568 thiss!42308)) lt!1531156))))))

(declare-fun c!732890 () Bool)

(assert (=> b!4310673 (= c!732890 (not (contains!10186 (toList!2411 (map!10200 (v!42366 (underlying!9568 thiss!42308)))) (tuple2!46677 lt!1531156 (apply!11022 (v!42366 (underlying!9568 thiss!42308)) lt!1531156)))))))

(declare-fun lt!1531143 () Unit!67334)

(assert (=> b!4310673 (= lt!1531143 e!2680937)))

(declare-fun b!4310674 () Bool)

(declare-fun lt!1531158 () Unit!67334)

(assert (=> b!4310674 (= e!2680938 lt!1531158)))

(assert (=> b!4310674 (= lt!1531145 call!297984)))

(declare-fun lemmaInGenericMapThenInLongMap!135 (ListLongMap!1023 K!9419 Hashable!4585) Unit!67334)

(assert (=> b!4310674 (= lt!1531158 (lemmaInGenericMapThenInLongMap!135 lt!1531145 key!2048 (hashF!6710 thiss!42308)))))

(declare-fun res!1766653 () Bool)

(assert (=> b!4310674 (= res!1766653 call!297987)))

(declare-fun e!2680935 () Bool)

(assert (=> b!4310674 (=> (not res!1766653) (not e!2680935))))

(assert (=> b!4310674 e!2680935))

(declare-fun b!4310675 () Bool)

(assert (=> b!4310675 (= e!2680935 call!297986)))

(declare-fun bm!297983 () Bool)

(declare-fun apply!11023 (ListLongMap!1023 (_ BitVec 64)) List!48331)

(assert (=> bm!297983 (= call!297983 (apply!11023 (ite c!732889 lt!1531145 call!297984) call!297988))))

(assert (= (and d!1268085 c!732891) b!4310673))

(assert (= (and d!1268085 (not c!732891)) b!4310669))

(assert (= (and b!4310673 c!732890) b!4310668))

(assert (= (and b!4310673 (not c!732890)) b!4310672))

(assert (= (and d!1268085 c!732889) b!4310674))

(assert (= (and d!1268085 (not c!732889)) b!4310670))

(assert (= (and b!4310674 res!1766653) b!4310675))

(assert (= (and b!4310670 res!1766654) b!4310665))

(assert (= (and b!4310670 c!732888) b!4310671))

(assert (= (and b!4310670 (not c!732888)) b!4310667))

(assert (= (or b!4310674 b!4310675 b!4310670 b!4310665) bm!297982))

(assert (= (or b!4310674 b!4310670 b!4310665 b!4310671) bm!297979))

(assert (= (or b!4310675 b!4310665) bm!297983))

(assert (= (or b!4310674 b!4310670) bm!297981))

(assert (= (or b!4310675 b!4310665) bm!297978))

(assert (= (or b!4310675 b!4310665) bm!297980))

(assert (= (and d!1268085 res!1766652) b!4310666))

(assert (=> bm!297979 m!4903559))

(declare-fun m!4903593 () Bool)

(assert (=> b!4310671 m!4903593))

(assert (=> b!4310671 m!4903593))

(declare-fun m!4903595 () Bool)

(assert (=> b!4310671 m!4903595))

(declare-fun m!4903597 () Bool)

(assert (=> b!4310671 m!4903597))

(declare-fun m!4903599 () Bool)

(assert (=> b!4310668 m!4903599))

(assert (=> b!4310668 m!4903559))

(declare-fun m!4903601 () Bool)

(assert (=> b!4310668 m!4903601))

(declare-fun m!4903603 () Bool)

(assert (=> b!4310668 m!4903603))

(declare-fun m!4903605 () Bool)

(assert (=> b!4310668 m!4903605))

(assert (=> b!4310668 m!4903601))

(declare-fun m!4903607 () Bool)

(assert (=> b!4310668 m!4903607))

(declare-fun m!4903609 () Bool)

(assert (=> b!4310668 m!4903609))

(declare-fun m!4903611 () Bool)

(assert (=> b!4310668 m!4903611))

(declare-fun m!4903613 () Bool)

(assert (=> b!4310668 m!4903613))

(declare-fun m!4903615 () Bool)

(assert (=> d!1268085 m!4903615))

(assert (=> d!1268085 m!4903583))

(assert (=> d!1268085 m!4903561))

(assert (=> d!1268085 m!4903559))

(declare-fun m!4903617 () Bool)

(assert (=> d!1268085 m!4903617))

(assert (=> d!1268085 m!4903561))

(declare-fun m!4903619 () Bool)

(assert (=> d!1268085 m!4903619))

(assert (=> d!1268085 m!4903617))

(declare-fun m!4903621 () Bool)

(assert (=> d!1268085 m!4903621))

(assert (=> d!1268085 m!4903585))

(assert (=> b!4310666 m!4903599))

(assert (=> b!4310666 m!4903599))

(declare-fun m!4903623 () Bool)

(assert (=> b!4310666 m!4903623))

(assert (=> b!4310666 m!4903623))

(declare-fun m!4903625 () Bool)

(assert (=> b!4310666 m!4903625))

(declare-fun m!4903627 () Bool)

(assert (=> b!4310674 m!4903627))

(declare-fun m!4903629 () Bool)

(assert (=> bm!297983 m!4903629))

(assert (=> bm!297982 m!4903583))

(declare-fun m!4903631 () Bool)

(assert (=> bm!297981 m!4903631))

(declare-fun m!4903633 () Bool)

(assert (=> bm!297980 m!4903633))

(declare-fun m!4903635 () Bool)

(assert (=> bm!297978 m!4903635))

(assert (=> b!4310673 m!4903559))

(assert (=> b!4310673 m!4903599))

(declare-fun m!4903637 () Bool)

(assert (=> b!4310673 m!4903637))

(declare-fun m!4903639 () Bool)

(assert (=> b!4310673 m!4903639))

(assert (=> b!4310637 d!1268085))

(declare-fun d!1268087 () Bool)

(declare-fun map!10202 (LongMapFixedSize!9338) ListLongMap!1023)

(assert (=> d!1268087 (= (map!10200 (v!42366 (underlying!9568 thiss!42308))) (map!10202 (v!42365 (underlying!9567 (v!42366 (underlying!9568 thiss!42308))))))))

(declare-fun bs!605076 () Bool)

(assert (= bs!605076 d!1268087))

(declare-fun m!4903641 () Bool)

(assert (=> bs!605076 m!4903641))

(assert (=> b!4310637 d!1268087))

(declare-fun d!1268089 () Bool)

(declare-fun lt!1531163 () ListMap!1693)

(declare-fun invariantList!574 (List!48331) Bool)

(assert (=> d!1268089 (invariantList!574 (toList!2412 lt!1531163))))

(assert (=> d!1268089 (= lt!1531163 (extractMap!330 (toList!2411 (map!10200 (v!42366 (underlying!9568 thiss!42308))))))))

(assert (=> d!1268089 (valid!3658 thiss!42308)))

(assert (=> d!1268089 (= (map!10201 thiss!42308) lt!1531163)))

(declare-fun bs!605077 () Bool)

(assert (= bs!605077 d!1268089))

(declare-fun m!4903643 () Bool)

(assert (=> bs!605077 m!4903643))

(assert (=> bs!605077 m!4903559))

(assert (=> bs!605077 m!4903617))

(assert (=> bs!605077 m!4903585))

(assert (=> b!4310637 d!1268089))

(declare-fun b!4310694 () Bool)

(declare-fun e!2680952 () Bool)

(declare-fun call!297993 () ListLongMap!1023)

(declare-fun call!297994 () ListLongMap!1023)

(assert (=> b!4310694 (= e!2680952 (= call!297993 call!297994))))

(declare-fun b!4310695 () Bool)

(declare-fun e!2680954 () tuple2!46674)

(declare-datatypes ((tuple2!46678 0))(
  ( (tuple2!46679 (_1!26619 Bool) (_2!26619 LongMapFixedSize!9338)) )
))
(declare-fun lt!1531175 () tuple2!46678)

(assert (=> b!4310695 (= e!2680954 (tuple2!46675 (_1!26619 lt!1531175) (LongMap!4669 (Cell!18486 (_2!26619 lt!1531175)))))))

(declare-fun lt!1531174 () tuple2!46674)

(declare-fun update!442 (LongMapFixedSize!9338 (_ BitVec 64) List!48331) tuple2!46678)

(assert (=> b!4310695 (= lt!1531175 (update!442 (v!42365 (underlying!9567 (_2!26617 lt!1531174))) lt!1531096 (Cons!48207 (tuple2!46673 key!2048 v!9179) lt!1531092)))))

(declare-fun b!4310696 () Bool)

(declare-fun e!2680953 () tuple2!46674)

(declare-fun lt!1531173 () tuple2!46674)

(assert (=> b!4310696 (= e!2680953 (tuple2!46675 (_1!26617 lt!1531173) (_2!26617 lt!1531173)))))

(declare-fun repack!57 (MutLongMap!4669) tuple2!46674)

(assert (=> b!4310696 (= lt!1531173 (repack!57 (v!42366 (underlying!9568 thiss!42308))))))

(declare-fun d!1268091 () Bool)

(declare-fun e!2680955 () Bool)

(assert (=> d!1268091 e!2680955))

(declare-fun res!1766663 () Bool)

(assert (=> d!1268091 (=> (not res!1766663) (not e!2680955))))

(declare-fun lt!1531172 () tuple2!46674)

(assert (=> d!1268091 (= res!1766663 ((_ is LongMap!4669) (_2!26617 lt!1531172)))))

(assert (=> d!1268091 (= lt!1531172 e!2680954)))

(declare-fun c!732899 () Bool)

(assert (=> d!1268091 (= c!732899 (_1!26617 lt!1531174))))

(assert (=> d!1268091 (= lt!1531174 e!2680953)))

(declare-fun c!732898 () Bool)

(declare-fun imbalanced!53 (MutLongMap!4669) Bool)

(assert (=> d!1268091 (= c!732898 (imbalanced!53 (v!42366 (underlying!9568 thiss!42308))))))

(declare-fun valid!3659 (MutLongMap!4669) Bool)

(assert (=> d!1268091 (valid!3659 (v!42366 (underlying!9568 thiss!42308)))))

(assert (=> d!1268091 (= (update!441 (v!42366 (underlying!9568 thiss!42308)) lt!1531096 (Cons!48207 (tuple2!46673 key!2048 v!9179) lt!1531092)) lt!1531172)))

(declare-fun b!4310697 () Bool)

(assert (=> b!4310697 (= e!2680953 (tuple2!46675 true (v!42366 (underlying!9568 thiss!42308))))))

(declare-fun b!4310698 () Bool)

(assert (=> b!4310698 (= e!2680954 (tuple2!46675 false (_2!26617 lt!1531174)))))

(declare-fun e!2680951 () Bool)

(declare-fun b!4310699 () Bool)

(declare-fun +!270 (ListLongMap!1023 tuple2!46676) ListLongMap!1023)

(assert (=> b!4310699 (= e!2680951 (= call!297993 (+!270 call!297994 (tuple2!46677 lt!1531096 (Cons!48207 (tuple2!46673 key!2048 v!9179) lt!1531092)))))))

(declare-fun b!4310700 () Bool)

(assert (=> b!4310700 (= e!2680955 e!2680952)))

(declare-fun c!732900 () Bool)

(assert (=> b!4310700 (= c!732900 (_1!26617 lt!1531172))))

(declare-fun bm!297988 () Bool)

(assert (=> bm!297988 (= call!297994 (map!10200 (v!42366 (underlying!9568 thiss!42308))))))

(declare-fun b!4310701 () Bool)

(declare-fun res!1766662 () Bool)

(assert (=> b!4310701 (=> (not res!1766662) (not e!2680955))))

(assert (=> b!4310701 (= res!1766662 (valid!3659 (_2!26617 lt!1531172)))))

(declare-fun b!4310702 () Bool)

(assert (=> b!4310702 (= e!2680952 e!2680951)))

(declare-fun res!1766661 () Bool)

(assert (=> b!4310702 (= res!1766661 (contains!10187 call!297993 lt!1531096))))

(assert (=> b!4310702 (=> (not res!1766661) (not e!2680951))))

(declare-fun bm!297989 () Bool)

(assert (=> bm!297989 (= call!297993 (map!10200 (_2!26617 lt!1531172)))))

(assert (= (and d!1268091 c!732898) b!4310696))

(assert (= (and d!1268091 (not c!732898)) b!4310697))

(assert (= (and d!1268091 c!732899) b!4310695))

(assert (= (and d!1268091 (not c!732899)) b!4310698))

(assert (= (and d!1268091 res!1766663) b!4310701))

(assert (= (and b!4310701 res!1766662) b!4310700))

(assert (= (and b!4310700 c!732900) b!4310702))

(assert (= (and b!4310700 (not c!732900)) b!4310694))

(assert (= (and b!4310702 res!1766661) b!4310699))

(assert (= (or b!4310699 b!4310694) bm!297988))

(assert (= (or b!4310702 b!4310699 b!4310694) bm!297989))

(declare-fun m!4903645 () Bool)

(assert (=> b!4310701 m!4903645))

(assert (=> bm!297988 m!4903559))

(declare-fun m!4903647 () Bool)

(assert (=> b!4310696 m!4903647))

(declare-fun m!4903649 () Bool)

(assert (=> b!4310702 m!4903649))

(declare-fun m!4903651 () Bool)

(assert (=> d!1268091 m!4903651))

(declare-fun m!4903653 () Bool)

(assert (=> d!1268091 m!4903653))

(declare-fun m!4903655 () Bool)

(assert (=> b!4310695 m!4903655))

(declare-fun m!4903657 () Bool)

(assert (=> b!4310699 m!4903657))

(declare-fun m!4903659 () Bool)

(assert (=> bm!297989 m!4903659))

(assert (=> b!4310633 d!1268091))

(declare-fun b!4310711 () Bool)

(declare-fun e!2680960 () List!48331)

(assert (=> b!4310711 (= e!2680960 (t!355142 lt!1531095))))

(declare-fun d!1268093 () Bool)

(declare-fun lt!1531178 () List!48331)

(assert (=> d!1268093 (not (containsKey!316 lt!1531178 key!2048))))

(assert (=> d!1268093 (= lt!1531178 e!2680960)))

(declare-fun c!732906 () Bool)

(assert (=> d!1268093 (= c!732906 (and ((_ is Cons!48207) lt!1531095) (= (_1!26616 (h!53644 lt!1531095)) key!2048)))))

(assert (=> d!1268093 (noDuplicateKeys!214 lt!1531095)))

(assert (=> d!1268093 (= (removePairForKey!215 lt!1531095 key!2048) lt!1531178)))

(declare-fun b!4310712 () Bool)

(declare-fun e!2680961 () List!48331)

(assert (=> b!4310712 (= e!2680960 e!2680961)))

(declare-fun c!732905 () Bool)

(assert (=> b!4310712 (= c!732905 ((_ is Cons!48207) lt!1531095))))

(declare-fun b!4310713 () Bool)

(assert (=> b!4310713 (= e!2680961 (Cons!48207 (h!53644 lt!1531095) (removePairForKey!215 (t!355142 lt!1531095) key!2048)))))

(declare-fun b!4310714 () Bool)

(assert (=> b!4310714 (= e!2680961 Nil!48207)))

(assert (= (and d!1268093 c!732906) b!4310711))

(assert (= (and d!1268093 (not c!732906)) b!4310712))

(assert (= (and b!4310712 c!732905) b!4310713))

(assert (= (and b!4310712 (not c!732905)) b!4310714))

(declare-fun m!4903661 () Bool)

(assert (=> d!1268093 m!4903661))

(declare-fun m!4903663 () Bool)

(assert (=> d!1268093 m!4903663))

(declare-fun m!4903665 () Bool)

(assert (=> b!4310713 m!4903665))

(assert (=> b!4310633 d!1268093))

(declare-fun d!1268095 () Bool)

(declare-fun e!2680964 () Bool)

(assert (=> d!1268095 e!2680964))

(declare-fun c!732909 () Bool)

(assert (=> d!1268095 (= c!732909 (contains!10185 (v!42366 (underlying!9568 thiss!42308)) lt!1531096))))

(declare-fun lt!1531181 () List!48331)

(declare-fun apply!11024 (LongMapFixedSize!9338 (_ BitVec 64)) List!48331)

(assert (=> d!1268095 (= lt!1531181 (apply!11024 (v!42365 (underlying!9567 (v!42366 (underlying!9568 thiss!42308)))) lt!1531096))))

(assert (=> d!1268095 (valid!3659 (v!42366 (underlying!9568 thiss!42308)))))

(assert (=> d!1268095 (= (apply!11022 (v!42366 (underlying!9568 thiss!42308)) lt!1531096) lt!1531181)))

(declare-fun b!4310719 () Bool)

(declare-fun get!15600 (Option!10234) List!48331)

(assert (=> b!4310719 (= e!2680964 (= lt!1531181 (get!15600 (getValueByKey!257 (toList!2411 (map!10200 (v!42366 (underlying!9568 thiss!42308)))) lt!1531096))))))

(declare-fun b!4310720 () Bool)

(declare-fun dynLambda!20440 (Int (_ BitVec 64)) List!48331)

(assert (=> b!4310720 (= e!2680964 (= lt!1531181 (dynLambda!20440 (defaultEntry!5054 (v!42365 (underlying!9567 (v!42366 (underlying!9568 thiss!42308))))) lt!1531096)))))

(assert (=> b!4310720 ((_ is LongMap!4669) (v!42366 (underlying!9568 thiss!42308)))))

(assert (= (and d!1268095 c!732909) b!4310719))

(assert (= (and d!1268095 (not c!732909)) b!4310720))

(declare-fun b_lambda!126639 () Bool)

(assert (=> (not b_lambda!126639) (not b!4310720)))

(declare-fun t!355145 () Bool)

(declare-fun tb!257297 () Bool)

(assert (=> (and b!4310639 (= (defaultEntry!5054 (v!42365 (underlying!9567 (v!42366 (underlying!9568 thiss!42308))))) (defaultEntry!5054 (v!42365 (underlying!9567 (v!42366 (underlying!9568 thiss!42308)))))) t!355145) tb!257297))

(assert (=> b!4310720 t!355145))

(declare-fun result!314702 () Bool)

(declare-fun b_and!340071 () Bool)

(assert (= b_and!340067 (and (=> t!355145 result!314702) b_and!340071)))

(declare-fun m!4903667 () Bool)

(assert (=> d!1268095 m!4903667))

(declare-fun m!4903669 () Bool)

(assert (=> d!1268095 m!4903669))

(assert (=> d!1268095 m!4903653))

(assert (=> b!4310719 m!4903559))

(declare-fun m!4903671 () Bool)

(assert (=> b!4310719 m!4903671))

(assert (=> b!4310719 m!4903671))

(declare-fun m!4903673 () Bool)

(assert (=> b!4310719 m!4903673))

(declare-fun m!4903675 () Bool)

(assert (=> b!4310720 m!4903675))

(assert (=> b!4310633 d!1268095))

(declare-fun d!1268097 () Bool)

(declare-fun hash!1017 (Hashable!4585 K!9419) (_ BitVec 64))

(assert (=> d!1268097 (= (hash!1014 (hashF!6710 thiss!42308) key!2048) (hash!1017 (hashF!6710 thiss!42308) key!2048))))

(declare-fun bs!605078 () Bool)

(assert (= bs!605078 d!1268097))

(declare-fun m!4903677 () Bool)

(assert (=> bs!605078 m!4903677))

(assert (=> b!4310633 d!1268097))

(declare-fun d!1268099 () Bool)

(declare-fun res!1766668 () Bool)

(declare-fun e!2680969 () Bool)

(assert (=> d!1268099 (=> res!1766668 e!2680969)))

(assert (=> d!1268099 (= res!1766668 (and ((_ is Cons!48207) lt!1531092) (= (_1!26616 (h!53644 lt!1531092)) key!2048)))))

(assert (=> d!1268099 (= (containsKey!316 lt!1531092 key!2048) e!2680969)))

(declare-fun b!4310725 () Bool)

(declare-fun e!2680970 () Bool)

(assert (=> b!4310725 (= e!2680969 e!2680970)))

(declare-fun res!1766669 () Bool)

(assert (=> b!4310725 (=> (not res!1766669) (not e!2680970))))

(assert (=> b!4310725 (= res!1766669 ((_ is Cons!48207) lt!1531092))))

(declare-fun b!4310726 () Bool)

(assert (=> b!4310726 (= e!2680970 (containsKey!316 (t!355142 lt!1531092) key!2048))))

(assert (= (and d!1268099 (not res!1766668)) b!4310725))

(assert (= (and b!4310725 res!1766669) b!4310726))

(declare-fun m!4903679 () Bool)

(assert (=> b!4310726 m!4903679))

(assert (=> b!4310634 d!1268099))

(declare-fun d!1268101 () Bool)

(declare-fun res!1766674 () Bool)

(declare-fun e!2680975 () Bool)

(assert (=> d!1268101 (=> res!1766674 e!2680975)))

(assert (=> d!1268101 (= res!1766674 (not ((_ is Cons!48207) lt!1531092)))))

(assert (=> d!1268101 (= (noDuplicateKeys!214 lt!1531092) e!2680975)))

(declare-fun b!4310731 () Bool)

(declare-fun e!2680976 () Bool)

(assert (=> b!4310731 (= e!2680975 e!2680976)))

(declare-fun res!1766675 () Bool)

(assert (=> b!4310731 (=> (not res!1766675) (not e!2680976))))

(assert (=> b!4310731 (= res!1766675 (not (containsKey!316 (t!355142 lt!1531092) (_1!26616 (h!53644 lt!1531092)))))))

(declare-fun b!4310732 () Bool)

(assert (=> b!4310732 (= e!2680976 (noDuplicateKeys!214 (t!355142 lt!1531092)))))

(assert (= (and d!1268101 (not res!1766674)) b!4310731))

(assert (= (and b!4310731 res!1766675) b!4310732))

(declare-fun m!4903681 () Bool)

(assert (=> b!4310731 m!4903681))

(declare-fun m!4903683 () Bool)

(assert (=> b!4310732 m!4903683))

(assert (=> b!4310634 d!1268101))

(declare-fun d!1268103 () Bool)

(assert (=> d!1268103 (allKeysSameHash!190 (removePairForKey!215 lt!1531095 key!2048) lt!1531096 (hashF!6710 thiss!42308))))

(declare-fun lt!1531184 () Unit!67334)

(declare-fun choose!26258 (List!48331 K!9419 (_ BitVec 64) Hashable!4585) Unit!67334)

(assert (=> d!1268103 (= lt!1531184 (choose!26258 lt!1531095 key!2048 lt!1531096 (hashF!6710 thiss!42308)))))

(assert (=> d!1268103 (noDuplicateKeys!214 lt!1531095)))

(assert (=> d!1268103 (= (lemmaRemovePairForKeyPreservesHash!170 lt!1531095 key!2048 lt!1531096 (hashF!6710 thiss!42308)) lt!1531184)))

(declare-fun bs!605079 () Bool)

(assert (= bs!605079 d!1268103))

(assert (=> bs!605079 m!4903579))

(assert (=> bs!605079 m!4903579))

(declare-fun m!4903685 () Bool)

(assert (=> bs!605079 m!4903685))

(declare-fun m!4903687 () Bool)

(assert (=> bs!605079 m!4903687))

(assert (=> bs!605079 m!4903663))

(assert (=> b!4310634 d!1268103))

(declare-fun d!1268105 () Bool)

(assert (=> d!1268105 (noDuplicateKeys!214 (removePairForKey!215 lt!1531095 key!2048))))

(declare-fun lt!1531187 () Unit!67334)

(declare-fun choose!26259 (List!48331 K!9419) Unit!67334)

(assert (=> d!1268105 (= lt!1531187 (choose!26259 lt!1531095 key!2048))))

(assert (=> d!1268105 (noDuplicateKeys!214 lt!1531095)))

(assert (=> d!1268105 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!165 lt!1531095 key!2048) lt!1531187)))

(declare-fun bs!605080 () Bool)

(assert (= bs!605080 d!1268105))

(assert (=> bs!605080 m!4903579))

(assert (=> bs!605080 m!4903579))

(declare-fun m!4903689 () Bool)

(assert (=> bs!605080 m!4903689))

(declare-fun m!4903691 () Bool)

(assert (=> bs!605080 m!4903691))

(assert (=> bs!605080 m!4903663))

(assert (=> b!4310634 d!1268105))

(declare-fun d!1268107 () Bool)

(assert (=> d!1268107 true))

(assert (=> d!1268107 true))

(declare-fun lambda!132941 () Int)

(declare-fun forall!8734 (List!48331 Int) Bool)

(assert (=> d!1268107 (= (allKeysSameHash!190 lt!1531095 lt!1531096 (hashF!6710 thiss!42308)) (forall!8734 lt!1531095 lambda!132941))))

(declare-fun bs!605081 () Bool)

(assert (= bs!605081 d!1268107))

(declare-fun m!4903693 () Bool)

(assert (=> bs!605081 m!4903693))

(assert (=> b!4310634 d!1268107))

(declare-fun bs!605082 () Bool)

(declare-fun d!1268109 () Bool)

(assert (= bs!605082 (and d!1268109 b!4310673)))

(declare-fun lambda!132944 () Int)

(assert (=> bs!605082 (not (= lambda!132944 lambda!132938))))

(assert (=> d!1268109 true))

(assert (=> d!1268109 (allKeysSameHash!190 lt!1531095 lt!1531096 (hashF!6710 thiss!42308))))

(declare-fun lt!1531190 () Unit!67334)

(declare-fun choose!26260 (List!48332 (_ BitVec 64) List!48331 Hashable!4585) Unit!67334)

(assert (=> d!1268109 (= lt!1531190 (choose!26260 (toList!2411 lt!1531100) lt!1531096 lt!1531095 (hashF!6710 thiss!42308)))))

(declare-fun forall!8735 (List!48332 Int) Bool)

(assert (=> d!1268109 (forall!8735 (toList!2411 lt!1531100) lambda!132944)))

(assert (=> d!1268109 (= (lemmaInLongMapAllKeySameHashThenForTuple!177 (toList!2411 lt!1531100) lt!1531096 lt!1531095 (hashF!6710 thiss!42308)) lt!1531190)))

(declare-fun bs!605083 () Bool)

(assert (= bs!605083 d!1268109))

(assert (=> bs!605083 m!4903569))

(declare-fun m!4903695 () Bool)

(assert (=> bs!605083 m!4903695))

(declare-fun m!4903697 () Bool)

(assert (=> bs!605083 m!4903697))

(assert (=> b!4310634 d!1268109))

(declare-fun bs!605084 () Bool)

(declare-fun d!1268111 () Bool)

(assert (= bs!605084 (and d!1268111 d!1268107)))

(declare-fun lambda!132945 () Int)

(assert (=> bs!605084 (= lambda!132945 lambda!132941)))

(assert (=> d!1268111 true))

(assert (=> d!1268111 true))

(assert (=> d!1268111 (= (allKeysSameHash!190 lt!1531092 lt!1531096 (hashF!6710 thiss!42308)) (forall!8734 lt!1531092 lambda!132945))))

(declare-fun bs!605085 () Bool)

(assert (= bs!605085 d!1268111))

(declare-fun m!4903699 () Bool)

(assert (=> bs!605085 m!4903699))

(assert (=> b!4310634 d!1268111))

(declare-fun d!1268113 () Bool)

(assert (=> d!1268113 (= (array_inv!5399 (_keys!4969 (v!42365 (underlying!9567 (v!42366 (underlying!9568 thiss!42308)))))) (bvsge (size!35562 (_keys!4969 (v!42365 (underlying!9567 (v!42366 (underlying!9568 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4310639 d!1268113))

(declare-fun d!1268115 () Bool)

(assert (=> d!1268115 (= (array_inv!5400 (_values!4950 (v!42365 (underlying!9567 (v!42366 (underlying!9568 thiss!42308)))))) (bvsge (size!35563 (_values!4950 (v!42365 (underlying!9567 (v!42366 (underlying!9568 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4310639 d!1268115))

(declare-fun bs!605086 () Bool)

(declare-fun b!4310743 () Bool)

(assert (= bs!605086 (and b!4310743 b!4310673)))

(declare-fun lambda!132948 () Int)

(assert (=> bs!605086 (= lambda!132948 lambda!132938)))

(declare-fun bs!605087 () Bool)

(assert (= bs!605087 (and b!4310743 d!1268109)))

(assert (=> bs!605087 (not (= lambda!132948 lambda!132944))))

(declare-fun d!1268117 () Bool)

(declare-fun res!1766680 () Bool)

(declare-fun e!2680979 () Bool)

(assert (=> d!1268117 (=> (not res!1766680) (not e!2680979))))

(assert (=> d!1268117 (= res!1766680 (valid!3659 (v!42366 (underlying!9568 thiss!42308))))))

(assert (=> d!1268117 (= (valid!3658 thiss!42308) e!2680979)))

(declare-fun res!1766681 () Bool)

(assert (=> b!4310743 (=> (not res!1766681) (not e!2680979))))

(assert (=> b!4310743 (= res!1766681 (forall!8735 (toList!2411 (map!10200 (v!42366 (underlying!9568 thiss!42308)))) lambda!132948))))

(declare-fun b!4310744 () Bool)

(declare-fun allKeysSameHashInMap!338 (ListLongMap!1023 Hashable!4585) Bool)

(assert (=> b!4310744 (= e!2680979 (allKeysSameHashInMap!338 (map!10200 (v!42366 (underlying!9568 thiss!42308))) (hashF!6710 thiss!42308)))))

(assert (= (and d!1268117 res!1766680) b!4310743))

(assert (= (and b!4310743 res!1766681) b!4310744))

(assert (=> d!1268117 m!4903653))

(assert (=> b!4310743 m!4903559))

(declare-fun m!4903701 () Bool)

(assert (=> b!4310743 m!4903701))

(assert (=> b!4310744 m!4903559))

(assert (=> b!4310744 m!4903559))

(declare-fun m!4903703 () Bool)

(assert (=> b!4310744 m!4903703))

(assert (=> b!4310640 d!1268117))

(declare-fun mapIsEmpty!20849 () Bool)

(declare-fun mapRes!20849 () Bool)

(assert (=> mapIsEmpty!20849 mapRes!20849))

(declare-fun mapNonEmpty!20849 () Bool)

(declare-fun tp!1324705 () Bool)

(declare-fun e!2680985 () Bool)

(assert (=> mapNonEmpty!20849 (= mapRes!20849 (and tp!1324705 e!2680985))))

(declare-fun mapRest!20849 () (Array (_ BitVec 32) List!48331))

(declare-fun mapValue!20849 () List!48331)

(declare-fun mapKey!20849 () (_ BitVec 32))

(assert (=> mapNonEmpty!20849 (= mapRest!20846 (store mapRest!20849 mapKey!20849 mapValue!20849))))

(declare-fun tp!1324706 () Bool)

(declare-fun e!2680984 () Bool)

(declare-fun b!4310752 () Bool)

(assert (=> b!4310752 (= e!2680984 (and tp_is_empty!23781 tp_is_empty!23783 tp!1324706))))

(declare-fun b!4310751 () Bool)

(declare-fun tp!1324707 () Bool)

(assert (=> b!4310751 (= e!2680985 (and tp_is_empty!23781 tp_is_empty!23783 tp!1324707))))

(declare-fun condMapEmpty!20849 () Bool)

(declare-fun mapDefault!20849 () List!48331)

(assert (=> mapNonEmpty!20846 (= condMapEmpty!20849 (= mapRest!20846 ((as const (Array (_ BitVec 32) List!48331)) mapDefault!20849)))))

(assert (=> mapNonEmpty!20846 (= tp!1324698 (and e!2680984 mapRes!20849))))

(assert (= (and mapNonEmpty!20846 condMapEmpty!20849) mapIsEmpty!20849))

(assert (= (and mapNonEmpty!20846 (not condMapEmpty!20849)) mapNonEmpty!20849))

(assert (= (and mapNonEmpty!20849 ((_ is Cons!48207) mapValue!20849)) b!4310751))

(assert (= (and mapNonEmpty!20846 ((_ is Cons!48207) mapDefault!20849)) b!4310752))

(declare-fun m!4903705 () Bool)

(assert (=> mapNonEmpty!20849 m!4903705))

(declare-fun b!4310757 () Bool)

(declare-fun e!2680988 () Bool)

(declare-fun tp!1324710 () Bool)

(assert (=> b!4310757 (= e!2680988 (and tp_is_empty!23781 tp_is_empty!23783 tp!1324710))))

(assert (=> mapNonEmpty!20846 (= tp!1324694 e!2680988)))

(assert (= (and mapNonEmpty!20846 ((_ is Cons!48207) mapValue!20846)) b!4310757))

(declare-fun b!4310758 () Bool)

(declare-fun tp!1324711 () Bool)

(declare-fun e!2680989 () Bool)

(assert (=> b!4310758 (= e!2680989 (and tp_is_empty!23781 tp_is_empty!23783 tp!1324711))))

(assert (=> b!4310639 (= tp!1324692 e!2680989)))

(assert (= (and b!4310639 ((_ is Cons!48207) (zeroValue!4928 (v!42365 (underlying!9567 (v!42366 (underlying!9568 thiss!42308))))))) b!4310758))

(declare-fun e!2680990 () Bool)

(declare-fun tp!1324712 () Bool)

(declare-fun b!4310759 () Bool)

(assert (=> b!4310759 (= e!2680990 (and tp_is_empty!23781 tp_is_empty!23783 tp!1324712))))

(assert (=> b!4310639 (= tp!1324695 e!2680990)))

(assert (= (and b!4310639 ((_ is Cons!48207) (minValue!4928 (v!42365 (underlying!9567 (v!42366 (underlying!9568 thiss!42308))))))) b!4310759))

(declare-fun e!2680991 () Bool)

(declare-fun b!4310760 () Bool)

(declare-fun tp!1324713 () Bool)

(assert (=> b!4310760 (= e!2680991 (and tp_is_empty!23781 tp_is_empty!23783 tp!1324713))))

(assert (=> b!4310641 (= tp!1324693 e!2680991)))

(assert (= (and b!4310641 ((_ is Cons!48207) mapDefault!20846)) b!4310760))

(declare-fun b_lambda!126641 () Bool)

(assert (= b_lambda!126639 (or (and b!4310639 b_free!128635) b_lambda!126641)))

(check-sat tp_is_empty!23781 (not d!1268085) b_and!340069 (not b!4310699) (not d!1268095) (not bm!297983) (not d!1268105) (not d!1268097) (not b!4310760) (not d!1268089) (not d!1268107) (not d!1268109) (not b!4310751) (not b!4310719) (not b!4310713) (not b!4310743) (not bm!297989) (not b!4310702) (not b!4310701) (not tb!257297) (not b!4310757) (not bm!297981) (not d!1268117) (not b!4310731) (not b!4310666) (not bm!297988) (not b!4310732) (not bm!297982) (not b!4310758) (not d!1268091) (not b!4310695) (not b_lambda!126641) (not b!4310752) (not bm!297980) (not bm!297979) (not b!4310671) (not bm!297978) (not mapNonEmpty!20849) (not b!4310674) (not b!4310696) (not b_next!129341) tp_is_empty!23783 (not b_next!129339) (not b!4310668) (not b!4310759) (not d!1268111) (not d!1268093) (not b!4310744) b_and!340071 (not d!1268087) (not b!4310726) (not b!4310673) (not d!1268103))
(check-sat b_and!340071 b_and!340069 (not b_next!129341) (not b_next!129339))
