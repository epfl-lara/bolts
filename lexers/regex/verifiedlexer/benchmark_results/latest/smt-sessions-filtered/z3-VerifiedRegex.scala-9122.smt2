; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487356 () Bool)

(assert start!487356)

(declare-fun b!4764916 () Bool)

(declare-fun b_free!129555 () Bool)

(declare-fun b_next!130345 () Bool)

(assert (=> b!4764916 (= b_free!129555 (not b_next!130345))))

(declare-fun tp!1354915 () Bool)

(declare-fun b_and!341249 () Bool)

(assert (=> b!4764916 (= tp!1354915 b_and!341249)))

(declare-fun b!4764912 () Bool)

(declare-fun b_free!129557 () Bool)

(declare-fun b_next!130347 () Bool)

(assert (=> b!4764912 (= b_free!129557 (not b_next!130347))))

(declare-fun tp!1354920 () Bool)

(declare-fun b_and!341251 () Bool)

(assert (=> b!4764912 (= tp!1354920 b_and!341251)))

(declare-fun mapNonEmpty!21770 () Bool)

(declare-fun mapRes!21770 () Bool)

(declare-fun tp!1354916 () Bool)

(declare-fun tp!1354917 () Bool)

(assert (=> mapNonEmpty!21770 (= mapRes!21770 (and tp!1354916 tp!1354917))))

(declare-datatypes ((K!14899 0))(
  ( (K!14900 (val!20225 Int)) )
))
(declare-datatypes ((V!15145 0))(
  ( (V!15146 (val!20226 Int)) )
))
(declare-datatypes ((tuple2!55450 0))(
  ( (tuple2!55451 (_1!31019 K!14899) (_2!31019 V!15145)) )
))
(declare-datatypes ((array!17916 0))(
  ( (array!17917 (arr!7991 (Array (_ BitVec 32) (_ BitVec 64))) (size!36221 (_ BitVec 32))) )
))
(declare-datatypes ((List!53569 0))(
  ( (Nil!53445) (Cons!53445 (h!59857 tuple2!55450) (t!360977 List!53569)) )
))
(declare-datatypes ((array!17918 0))(
  ( (array!17919 (arr!7992 (Array (_ BitVec 32) List!53569)) (size!36222 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6564 0))(
  ( (HashableExt!6563 (__x!32457 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9806 0))(
  ( (LongMapFixedSize!9807 (defaultEntry!5321 Int) (mask!14650 (_ BitVec 32)) (extraKeys!5178 (_ BitVec 32)) (zeroValue!5191 List!53569) (minValue!5191 List!53569) (_size!9831 (_ BitVec 32)) (_keys!5245 array!17916) (_values!5216 array!17918) (_vacant!4968 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19377 0))(
  ( (Cell!19378 (v!47548 LongMapFixedSize!9806)) )
))
(declare-datatypes ((MutLongMap!4903 0))(
  ( (LongMap!4903 (underlying!10013 Cell!19377)) (MutLongMapExt!4902 (__x!32458 Int)) )
))
(declare-datatypes ((Cell!19379 0))(
  ( (Cell!19380 (v!47549 MutLongMap!4903)) )
))
(declare-datatypes ((MutableMap!4787 0))(
  ( (MutableMapExt!4786 (__x!32459 Int)) (HashMap!4787 (underlying!10014 Cell!19379) (hashF!12389 Hashable!6564) (_size!9832 (_ BitVec 32)) (defaultValue!4958 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4787)

(declare-fun mapKey!21770 () (_ BitVec 32))

(declare-fun mapRest!21770 () (Array (_ BitVec 32) List!53569))

(declare-fun mapValue!21770 () List!53569)

(assert (=> mapNonEmpty!21770 (= (arr!7992 (_values!5216 (v!47548 (underlying!10013 (v!47549 (underlying!10014 thiss!42052)))))) (store mapRest!21770 mapKey!21770 mapValue!21770))))

(declare-fun b!4764908 () Bool)

(declare-fun res!2020908 () Bool)

(declare-fun e!2973946 () Bool)

(assert (=> b!4764908 (=> (not res!2020908) (not e!2973946))))

(declare-fun key!1776 () K!14899)

(declare-fun contains!16765 (MutableMap!4787 K!14899) Bool)

(assert (=> b!4764908 (= res!2020908 (contains!16765 thiss!42052 key!1776))))

(declare-fun b!4764909 () Bool)

(get-info :version)

(assert (=> b!4764909 (= e!2973946 (not ((_ is LongMap!4903) (v!47549 (underlying!10014 thiss!42052)))))))

(declare-fun lambda!224087 () Int)

(declare-datatypes ((Unit!138128 0))(
  ( (Unit!138129) )
))
(declare-fun lt!1927651 () Unit!138128)

(declare-datatypes ((tuple2!55452 0))(
  ( (tuple2!55453 (_1!31020 (_ BitVec 64)) (_2!31020 List!53569)) )
))
(declare-fun lt!1927647 () tuple2!55452)

(declare-datatypes ((List!53570 0))(
  ( (Nil!53446) (Cons!53446 (h!59858 tuple2!55452) (t!360978 List!53570)) )
))
(declare-datatypes ((ListLongMap!4655 0))(
  ( (ListLongMap!4656 (toList!6259 List!53570)) )
))
(declare-fun lt!1927650 () ListLongMap!4655)

(declare-fun forallContained!3846 (List!53570 Int tuple2!55452) Unit!138128)

(assert (=> b!4764909 (= lt!1927651 (forallContained!3846 (toList!6259 lt!1927650) lambda!224087 lt!1927647))))

(declare-fun lt!1927652 () Unit!138128)

(declare-fun e!2973940 () Unit!138128)

(assert (=> b!4764909 (= lt!1927652 e!2973940)))

(declare-fun c!812806 () Bool)

(declare-fun contains!16766 (List!53570 tuple2!55452) Bool)

(assert (=> b!4764909 (= c!812806 (not (contains!16766 (toList!6259 lt!1927650) lt!1927647)))))

(declare-fun lt!1927644 () (_ BitVec 64))

(declare-fun lt!1927646 () List!53569)

(assert (=> b!4764909 (= lt!1927647 (tuple2!55453 lt!1927644 lt!1927646))))

(declare-fun apply!12591 (MutLongMap!4903 (_ BitVec 64)) List!53569)

(assert (=> b!4764909 (= lt!1927646 (apply!12591 (v!47549 (underlying!10014 thiss!42052)) lt!1927644))))

(declare-fun map!11946 (MutLongMap!4903) ListLongMap!4655)

(assert (=> b!4764909 (= lt!1927650 (map!11946 (v!47549 (underlying!10014 thiss!42052))))))

(declare-fun hash!4548 (Hashable!6564 K!14899) (_ BitVec 64))

(assert (=> b!4764909 (= lt!1927644 (hash!4548 (hashF!12389 thiss!42052) key!1776))))

(declare-fun b!4764910 () Bool)

(declare-fun e!2973948 () Bool)

(declare-fun e!2973944 () Bool)

(assert (=> b!4764910 (= e!2973948 e!2973944)))

(declare-fun res!2020907 () Bool)

(assert (=> start!487356 (=> (not res!2020907) (not e!2973946))))

(assert (=> start!487356 (= res!2020907 ((_ is HashMap!4787) thiss!42052))))

(assert (=> start!487356 e!2973946))

(declare-fun e!2973942 () Bool)

(assert (=> start!487356 e!2973942))

(declare-fun tp_is_empty!32387 () Bool)

(assert (=> start!487356 tp_is_empty!32387))

(declare-fun mapIsEmpty!21770 () Bool)

(assert (=> mapIsEmpty!21770 mapRes!21770))

(declare-fun b!4764911 () Bool)

(declare-fun Unit!138130 () Unit!138128)

(assert (=> b!4764911 (= e!2973940 Unit!138130)))

(declare-fun lt!1927649 () Unit!138128)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1972 (List!53570 (_ BitVec 64)) Unit!138128)

(assert (=> b!4764911 (= lt!1927649 (lemmaContainsKeyImpliesGetValueByKeyDefined!1972 (toList!6259 lt!1927650) lt!1927644))))

(declare-datatypes ((Option!12636 0))(
  ( (None!12635) (Some!12635 (v!47550 List!53569)) )
))
(declare-fun isDefined!9809 (Option!12636) Bool)

(declare-fun getValueByKey!2158 (List!53570 (_ BitVec 64)) Option!12636)

(assert (=> b!4764911 (isDefined!9809 (getValueByKey!2158 (toList!6259 lt!1927650) lt!1927644))))

(declare-fun lt!1927648 () Unit!138128)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!916 (List!53570 (_ BitVec 64) List!53569) Unit!138128)

(assert (=> b!4764911 (= lt!1927648 (lemmaGetValueByKeyImpliesContainsTuple!916 (toList!6259 lt!1927650) lt!1927644 lt!1927646))))

(assert (=> b!4764911 false))

(declare-fun e!2973945 () Bool)

(assert (=> b!4764912 (= e!2973942 (and e!2973945 tp!1354920))))

(declare-fun b!4764913 () Bool)

(declare-fun Unit!138131 () Unit!138128)

(assert (=> b!4764913 (= e!2973940 Unit!138131)))

(declare-fun b!4764914 () Bool)

(declare-fun e!2973947 () Bool)

(assert (=> b!4764914 (= e!2973947 e!2973948)))

(declare-fun b!4764915 () Bool)

(declare-fun lt!1927645 () MutLongMap!4903)

(assert (=> b!4764915 (= e!2973945 (and e!2973947 ((_ is LongMap!4903) lt!1927645)))))

(assert (=> b!4764915 (= lt!1927645 (v!47549 (underlying!10014 thiss!42052)))))

(declare-fun tp!1354918 () Bool)

(declare-fun e!2973941 () Bool)

(declare-fun tp!1354914 () Bool)

(declare-fun array_inv!5751 (array!17916) Bool)

(declare-fun array_inv!5752 (array!17918) Bool)

(assert (=> b!4764916 (= e!2973944 (and tp!1354915 tp!1354918 tp!1354914 (array_inv!5751 (_keys!5245 (v!47548 (underlying!10013 (v!47549 (underlying!10014 thiss!42052)))))) (array_inv!5752 (_values!5216 (v!47548 (underlying!10013 (v!47549 (underlying!10014 thiss!42052)))))) e!2973941))))

(declare-fun b!4764917 () Bool)

(declare-fun tp!1354919 () Bool)

(assert (=> b!4764917 (= e!2973941 (and tp!1354919 mapRes!21770))))

(declare-fun condMapEmpty!21770 () Bool)

(declare-fun mapDefault!21770 () List!53569)

(assert (=> b!4764917 (= condMapEmpty!21770 (= (arr!7992 (_values!5216 (v!47548 (underlying!10013 (v!47549 (underlying!10014 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53569)) mapDefault!21770)))))

(declare-fun b!4764918 () Bool)

(declare-fun res!2020909 () Bool)

(assert (=> b!4764918 (=> (not res!2020909) (not e!2973946))))

(declare-fun valid!3902 (MutableMap!4787) Bool)

(assert (=> b!4764918 (= res!2020909 (valid!3902 thiss!42052))))

(assert (= (and start!487356 res!2020907) b!4764918))

(assert (= (and b!4764918 res!2020909) b!4764908))

(assert (= (and b!4764908 res!2020908) b!4764909))

(assert (= (and b!4764909 c!812806) b!4764911))

(assert (= (and b!4764909 (not c!812806)) b!4764913))

(assert (= (and b!4764917 condMapEmpty!21770) mapIsEmpty!21770))

(assert (= (and b!4764917 (not condMapEmpty!21770)) mapNonEmpty!21770))

(assert (= b!4764916 b!4764917))

(assert (= b!4764910 b!4764916))

(assert (= b!4764914 b!4764910))

(assert (= (and b!4764915 ((_ is LongMap!4903) (v!47549 (underlying!10014 thiss!42052)))) b!4764914))

(assert (= b!4764912 b!4764915))

(assert (= (and start!487356 ((_ is HashMap!4787) thiss!42052)) b!4764912))

(declare-fun m!5735370 () Bool)

(assert (=> b!4764911 m!5735370))

(declare-fun m!5735372 () Bool)

(assert (=> b!4764911 m!5735372))

(assert (=> b!4764911 m!5735372))

(declare-fun m!5735374 () Bool)

(assert (=> b!4764911 m!5735374))

(declare-fun m!5735376 () Bool)

(assert (=> b!4764911 m!5735376))

(declare-fun m!5735378 () Bool)

(assert (=> b!4764916 m!5735378))

(declare-fun m!5735380 () Bool)

(assert (=> b!4764916 m!5735380))

(declare-fun m!5735382 () Bool)

(assert (=> b!4764918 m!5735382))

(declare-fun m!5735384 () Bool)

(assert (=> mapNonEmpty!21770 m!5735384))

(declare-fun m!5735386 () Bool)

(assert (=> b!4764909 m!5735386))

(declare-fun m!5735388 () Bool)

(assert (=> b!4764909 m!5735388))

(declare-fun m!5735390 () Bool)

(assert (=> b!4764909 m!5735390))

(declare-fun m!5735392 () Bool)

(assert (=> b!4764909 m!5735392))

(declare-fun m!5735394 () Bool)

(assert (=> b!4764909 m!5735394))

(declare-fun m!5735396 () Bool)

(assert (=> b!4764908 m!5735396))

(check-sat (not b!4764908) (not b_next!130345) (not b!4764911) (not mapNonEmpty!21770) (not b!4764917) b_and!341251 b_and!341249 (not b!4764916) (not b!4764918) (not b!4764909) tp_is_empty!32387 (not b_next!130347))
(check-sat b_and!341251 b_and!341249 (not b_next!130347) (not b_next!130345))
