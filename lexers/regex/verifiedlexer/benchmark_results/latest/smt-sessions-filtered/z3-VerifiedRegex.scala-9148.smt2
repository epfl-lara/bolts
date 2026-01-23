; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488184 () Bool)

(assert start!488184)

(declare-fun b!4769680 () Bool)

(declare-fun b_free!129763 () Bool)

(declare-fun b_next!130553 () Bool)

(assert (=> b!4769680 (= b_free!129763 (not b_next!130553))))

(declare-fun tp!1356236 () Bool)

(declare-fun b_and!341501 () Bool)

(assert (=> b!4769680 (= tp!1356236 b_and!341501)))

(declare-fun b!4769670 () Bool)

(declare-fun b_free!129765 () Bool)

(declare-fun b_next!130555 () Bool)

(assert (=> b!4769670 (= b_free!129765 (not b_next!130555))))

(declare-fun tp!1356238 () Bool)

(declare-fun b_and!341503 () Bool)

(assert (=> b!4769670 (= tp!1356238 b_and!341503)))

(declare-fun e!2977379 () Bool)

(declare-fun e!2977378 () Bool)

(assert (=> b!4769670 (= e!2977379 (and e!2977378 tp!1356238))))

(declare-fun mapNonEmpty!21970 () Bool)

(declare-fun mapRes!21970 () Bool)

(declare-fun tp!1356242 () Bool)

(declare-fun tp!1356241 () Bool)

(assert (=> mapNonEmpty!21970 (= mapRes!21970 (and tp!1356242 tp!1356241))))

(declare-datatypes ((K!15029 0))(
  ( (K!15030 (val!20329 Int)) )
))
(declare-datatypes ((V!15275 0))(
  ( (V!15276 (val!20330 Int)) )
))
(declare-datatypes ((tuple2!55634 0))(
  ( (tuple2!55635 (_1!31111 K!15029) (_2!31111 V!15275)) )
))
(declare-datatypes ((array!18152 0))(
  ( (array!18153 (arr!8095 (Array (_ BitVec 32) (_ BitVec 64))) (size!36325 (_ BitVec 32))) )
))
(declare-datatypes ((List!53663 0))(
  ( (Nil!53539) (Cons!53539 (h!59951 tuple2!55634) (t!361103 List!53663)) )
))
(declare-datatypes ((array!18154 0))(
  ( (array!18155 (arr!8096 (Array (_ BitVec 32) List!53663)) (size!36326 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6616 0))(
  ( (HashableExt!6615 (__x!32613 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9910 0))(
  ( (LongMapFixedSize!9911 (defaultEntry!5373 Int) (mask!14728 (_ BitVec 32)) (extraKeys!5230 (_ BitVec 32)) (zeroValue!5243 List!53663) (minValue!5243 List!53663) (_size!9935 (_ BitVec 32)) (_keys!5297 array!18152) (_values!5268 array!18154) (_vacant!5020 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19585 0))(
  ( (Cell!19586 (v!47803 LongMapFixedSize!9910)) )
))
(declare-datatypes ((MutLongMap!4955 0))(
  ( (LongMap!4955 (underlying!10117 Cell!19585)) (MutLongMapExt!4954 (__x!32614 Int)) )
))
(declare-datatypes ((Cell!19587 0))(
  ( (Cell!19588 (v!47804 MutLongMap!4955)) )
))
(declare-datatypes ((MutableMap!4839 0))(
  ( (MutableMapExt!4838 (__x!32615 Int)) (HashMap!4839 (underlying!10118 Cell!19587) (hashF!12507 Hashable!6616) (_size!9936 (_ BitVec 32)) (defaultValue!5010 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4839)

(declare-fun mapRest!21970 () (Array (_ BitVec 32) List!53663))

(declare-fun mapKey!21970 () (_ BitVec 32))

(declare-fun mapValue!21970 () List!53663)

(assert (=> mapNonEmpty!21970 (= (arr!8096 (_values!5268 (v!47803 (underlying!10117 (v!47804 (underlying!10118 thiss!42052)))))) (store mapRest!21970 mapKey!21970 mapValue!21970))))

(declare-fun b!4769671 () Bool)

(declare-datatypes ((Unit!138379 0))(
  ( (Unit!138380) )
))
(declare-fun e!2977375 () Unit!138379)

(declare-fun Unit!138381 () Unit!138379)

(assert (=> b!4769671 (= e!2977375 Unit!138381)))

(declare-fun b!4769672 () Bool)

(declare-fun Unit!138382 () Unit!138379)

(assert (=> b!4769672 (= e!2977375 Unit!138382)))

(declare-fun lt!1932315 () Unit!138379)

(declare-datatypes ((tuple2!55636 0))(
  ( (tuple2!55637 (_1!31112 (_ BitVec 64)) (_2!31112 List!53663)) )
))
(declare-datatypes ((List!53664 0))(
  ( (Nil!53540) (Cons!53540 (h!59952 tuple2!55636) (t!361104 List!53664)) )
))
(declare-datatypes ((ListLongMap!4735 0))(
  ( (ListLongMap!4736 (toList!6328 List!53664)) )
))
(declare-fun lt!1932318 () ListLongMap!4735)

(declare-fun lt!1932314 () (_ BitVec 64))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2007 (List!53664 (_ BitVec 64)) Unit!138379)

(assert (=> b!4769672 (= lt!1932315 (lemmaContainsKeyImpliesGetValueByKeyDefined!2007 (toList!6328 lt!1932318) lt!1932314))))

(declare-datatypes ((Option!12719 0))(
  ( (None!12718) (Some!12718 (v!47805 List!53663)) )
))
(declare-fun isDefined!9869 (Option!12719) Bool)

(declare-fun getValueByKey!2211 (List!53664 (_ BitVec 64)) Option!12719)

(assert (=> b!4769672 (isDefined!9869 (getValueByKey!2211 (toList!6328 lt!1932318) lt!1932314))))

(declare-fun lt!1932320 () List!53663)

(declare-fun lt!1932316 () Unit!138379)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!946 (List!53664 (_ BitVec 64) List!53663) Unit!138379)

(assert (=> b!4769672 (= lt!1932316 (lemmaGetValueByKeyImpliesContainsTuple!946 (toList!6328 lt!1932318) lt!1932314 lt!1932320))))

(assert (=> b!4769672 false))

(declare-fun b!4769673 () Bool)

(declare-fun e!2977376 () Bool)

(declare-fun e!2977373 () Bool)

(assert (=> b!4769673 (= e!2977376 e!2977373)))

(declare-fun b!4769674 () Bool)

(declare-fun res!2022941 () Bool)

(declare-fun e!2977372 () Bool)

(assert (=> b!4769674 (=> (not res!2022941) (not e!2977372))))

(declare-fun valid!3963 (MutableMap!4839) Bool)

(assert (=> b!4769674 (= res!2022941 (valid!3963 thiss!42052))))

(declare-fun b!4769675 () Bool)

(declare-fun res!2022940 () Bool)

(assert (=> b!4769675 (=> (not res!2022940) (not e!2977372))))

(declare-fun key!1776 () K!15029)

(declare-fun contains!16903 (MutableMap!4839 K!15029) Bool)

(assert (=> b!4769675 (= res!2022940 (contains!16903 thiss!42052 key!1776))))

(declare-fun b!4769676 () Bool)

(declare-fun lt!1932317 () MutLongMap!4955)

(get-info :version)

(assert (=> b!4769676 (= e!2977378 (and e!2977376 ((_ is LongMap!4955) lt!1932317)))))

(assert (=> b!4769676 (= lt!1932317 (v!47804 (underlying!10118 thiss!42052)))))

(declare-fun b!4769677 () Bool)

(declare-fun e!2977371 () Bool)

(declare-fun tp!1356240 () Bool)

(assert (=> b!4769677 (= e!2977371 (and tp!1356240 mapRes!21970))))

(declare-fun condMapEmpty!21970 () Bool)

(declare-fun mapDefault!21970 () List!53663)

(assert (=> b!4769677 (= condMapEmpty!21970 (= (arr!8096 (_values!5268 (v!47803 (underlying!10117 (v!47804 (underlying!10118 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53663)) mapDefault!21970)))))

(declare-fun b!4769678 () Bool)

(declare-fun e!2977374 () Bool)

(assert (=> b!4769678 (= e!2977373 e!2977374)))

(declare-fun b!4769679 () Bool)

(assert (=> b!4769679 (= e!2977372 false)))

(declare-fun lt!1932319 () Unit!138379)

(assert (=> b!4769679 (= lt!1932319 e!2977375)))

(declare-fun c!813572 () Bool)

(declare-fun contains!16904 (List!53664 tuple2!55636) Bool)

(assert (=> b!4769679 (= c!813572 (not (contains!16904 (toList!6328 lt!1932318) (tuple2!55637 lt!1932314 lt!1932320))))))

(declare-fun apply!12661 (MutLongMap!4955 (_ BitVec 64)) List!53663)

(assert (=> b!4769679 (= lt!1932320 (apply!12661 (v!47804 (underlying!10118 thiss!42052)) lt!1932314))))

(declare-fun map!12036 (MutLongMap!4955) ListLongMap!4735)

(assert (=> b!4769679 (= lt!1932318 (map!12036 (v!47804 (underlying!10118 thiss!42052))))))

(declare-fun hash!4593 (Hashable!6616 K!15029) (_ BitVec 64))

(assert (=> b!4769679 (= lt!1932314 (hash!4593 (hashF!12507 thiss!42052) key!1776))))

(declare-fun tp!1356239 () Bool)

(declare-fun tp!1356237 () Bool)

(declare-fun array_inv!5833 (array!18152) Bool)

(declare-fun array_inv!5834 (array!18154) Bool)

(assert (=> b!4769680 (= e!2977374 (and tp!1356236 tp!1356239 tp!1356237 (array_inv!5833 (_keys!5297 (v!47803 (underlying!10117 (v!47804 (underlying!10118 thiss!42052)))))) (array_inv!5834 (_values!5268 (v!47803 (underlying!10117 (v!47804 (underlying!10118 thiss!42052)))))) e!2977371))))

(declare-fun res!2022942 () Bool)

(assert (=> start!488184 (=> (not res!2022942) (not e!2977372))))

(assert (=> start!488184 (= res!2022942 ((_ is HashMap!4839) thiss!42052))))

(assert (=> start!488184 e!2977372))

(assert (=> start!488184 e!2977379))

(declare-fun tp_is_empty!32519 () Bool)

(assert (=> start!488184 tp_is_empty!32519))

(declare-fun mapIsEmpty!21970 () Bool)

(assert (=> mapIsEmpty!21970 mapRes!21970))

(assert (= (and start!488184 res!2022942) b!4769674))

(assert (= (and b!4769674 res!2022941) b!4769675))

(assert (= (and b!4769675 res!2022940) b!4769679))

(assert (= (and b!4769679 c!813572) b!4769672))

(assert (= (and b!4769679 (not c!813572)) b!4769671))

(assert (= (and b!4769677 condMapEmpty!21970) mapIsEmpty!21970))

(assert (= (and b!4769677 (not condMapEmpty!21970)) mapNonEmpty!21970))

(assert (= b!4769680 b!4769677))

(assert (= b!4769678 b!4769680))

(assert (= b!4769673 b!4769678))

(assert (= (and b!4769676 ((_ is LongMap!4955) (v!47804 (underlying!10118 thiss!42052)))) b!4769673))

(assert (= b!4769670 b!4769676))

(assert (= (and start!488184 ((_ is HashMap!4839) thiss!42052)) b!4769670))

(declare-fun m!5741308 () Bool)

(assert (=> b!4769680 m!5741308))

(declare-fun m!5741310 () Bool)

(assert (=> b!4769680 m!5741310))

(declare-fun m!5741312 () Bool)

(assert (=> b!4769674 m!5741312))

(declare-fun m!5741314 () Bool)

(assert (=> b!4769675 m!5741314))

(declare-fun m!5741316 () Bool)

(assert (=> b!4769679 m!5741316))

(declare-fun m!5741318 () Bool)

(assert (=> b!4769679 m!5741318))

(declare-fun m!5741320 () Bool)

(assert (=> b!4769679 m!5741320))

(declare-fun m!5741322 () Bool)

(assert (=> b!4769679 m!5741322))

(declare-fun m!5741324 () Bool)

(assert (=> b!4769672 m!5741324))

(declare-fun m!5741326 () Bool)

(assert (=> b!4769672 m!5741326))

(assert (=> b!4769672 m!5741326))

(declare-fun m!5741328 () Bool)

(assert (=> b!4769672 m!5741328))

(declare-fun m!5741330 () Bool)

(assert (=> b!4769672 m!5741330))

(declare-fun m!5741332 () Bool)

(assert (=> mapNonEmpty!21970 m!5741332))

(check-sat (not b!4769677) (not b!4769679) b_and!341503 (not b_next!130555) (not b!4769672) (not b!4769680) (not b!4769674) (not b!4769675) (not mapNonEmpty!21970) b_and!341501 tp_is_empty!32519 (not b_next!130553))
(check-sat b_and!341503 b_and!341501 (not b_next!130555) (not b_next!130553))
