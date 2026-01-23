; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488120 () Bool)

(assert start!488120)

(declare-fun b!4769194 () Bool)

(declare-fun b_free!129723 () Bool)

(declare-fun b_next!130513 () Bool)

(assert (=> b!4769194 (= b_free!129723 (not b_next!130513))))

(declare-fun tp!1355998 () Bool)

(declare-fun b_and!341457 () Bool)

(assert (=> b!4769194 (= tp!1355998 b_and!341457)))

(declare-fun b!4769188 () Bool)

(declare-fun b_free!129725 () Bool)

(declare-fun b_next!130515 () Bool)

(assert (=> b!4769188 (= b_free!129725 (not b_next!130515))))

(declare-fun tp!1355999 () Bool)

(declare-fun b_and!341459 () Bool)

(assert (=> b!4769188 (= tp!1355999 b_and!341459)))

(declare-fun b!4769187 () Bool)

(declare-fun e!2976977 () Bool)

(assert (=> b!4769187 (= e!2976977 false)))

(declare-fun lt!1932028 () Bool)

(declare-datatypes ((K!15004 0))(
  ( (K!15005 (val!20309 Int)) )
))
(declare-datatypes ((V!15250 0))(
  ( (V!15251 (val!20310 Int)) )
))
(declare-datatypes ((tuple2!55596 0))(
  ( (tuple2!55597 (_1!31092 K!15004) (_2!31092 V!15250)) )
))
(declare-datatypes ((array!18108 0))(
  ( (array!18109 (arr!8075 (Array (_ BitVec 32) (_ BitVec 64))) (size!36305 (_ BitVec 32))) )
))
(declare-datatypes ((List!53644 0))(
  ( (Nil!53520) (Cons!53520 (h!59932 tuple2!55596) (t!361080 List!53644)) )
))
(declare-datatypes ((array!18110 0))(
  ( (array!18111 (arr!8076 (Array (_ BitVec 32) List!53644)) (size!36306 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6606 0))(
  ( (HashableExt!6605 (__x!32583 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9890 0))(
  ( (LongMapFixedSize!9891 (defaultEntry!5363 Int) (mask!14713 (_ BitVec 32)) (extraKeys!5220 (_ BitVec 32)) (zeroValue!5233 List!53644) (minValue!5233 List!53644) (_size!9915 (_ BitVec 32)) (_keys!5287 array!18108) (_values!5258 array!18110) (_vacant!5010 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19545 0))(
  ( (Cell!19546 (v!47772 LongMapFixedSize!9890)) )
))
(declare-datatypes ((MutLongMap!4945 0))(
  ( (LongMap!4945 (underlying!10097 Cell!19545)) (MutLongMapExt!4944 (__x!32584 Int)) )
))
(declare-datatypes ((Cell!19547 0))(
  ( (Cell!19548 (v!47773 MutLongMap!4945)) )
))
(declare-datatypes ((MutableMap!4829 0))(
  ( (MutableMapExt!4828 (__x!32585 Int)) (HashMap!4829 (underlying!10098 Cell!19547) (hashF!12497 Hashable!6606) (_size!9916 (_ BitVec 32)) (defaultValue!5000 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4829)

(declare-fun lt!1932029 () (_ BitVec 64))

(declare-datatypes ((tuple2!55598 0))(
  ( (tuple2!55599 (_1!31093 (_ BitVec 64)) (_2!31093 List!53644)) )
))
(declare-datatypes ((List!53645 0))(
  ( (Nil!53521) (Cons!53521 (h!59933 tuple2!55598) (t!361081 List!53645)) )
))
(declare-fun contains!16882 (List!53645 tuple2!55598) Bool)

(declare-datatypes ((ListLongMap!4717 0))(
  ( (ListLongMap!4718 (toList!6317 List!53645)) )
))
(declare-fun map!12020 (MutLongMap!4945) ListLongMap!4717)

(declare-fun apply!12650 (MutLongMap!4945 (_ BitVec 64)) List!53644)

(assert (=> b!4769187 (= lt!1932028 (contains!16882 (toList!6317 (map!12020 (v!47773 (underlying!10098 thiss!42052)))) (tuple2!55599 lt!1932029 (apply!12650 (v!47773 (underlying!10098 thiss!42052)) lt!1932029))))))

(declare-fun key!1776 () K!15004)

(declare-fun hash!4584 (Hashable!6606 K!15004) (_ BitVec 64))

(assert (=> b!4769187 (= lt!1932029 (hash!4584 (hashF!12497 thiss!42052) key!1776))))

(declare-fun e!2976980 () Bool)

(declare-fun e!2976978 () Bool)

(assert (=> b!4769188 (= e!2976980 (and e!2976978 tp!1355999))))

(declare-fun b!4769190 () Bool)

(declare-fun e!2976974 () Bool)

(declare-fun e!2976979 () Bool)

(assert (=> b!4769190 (= e!2976974 e!2976979)))

(declare-fun b!4769191 () Bool)

(declare-fun e!2976973 () Bool)

(assert (=> b!4769191 (= e!2976979 e!2976973)))

(declare-fun b!4769192 () Bool)

(declare-fun e!2976975 () Bool)

(declare-fun tp!1356000 () Bool)

(declare-fun mapRes!21934 () Bool)

(assert (=> b!4769192 (= e!2976975 (and tp!1356000 mapRes!21934))))

(declare-fun condMapEmpty!21934 () Bool)

(declare-fun mapDefault!21934 () List!53644)

(assert (=> b!4769192 (= condMapEmpty!21934 (= (arr!8076 (_values!5258 (v!47772 (underlying!10097 (v!47773 (underlying!10098 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53644)) mapDefault!21934)))))

(declare-fun b!4769193 () Bool)

(declare-fun lt!1932027 () MutLongMap!4945)

(get-info :version)

(assert (=> b!4769193 (= e!2976978 (and e!2976974 ((_ is LongMap!4945) lt!1932027)))))

(assert (=> b!4769193 (= lt!1932027 (v!47773 (underlying!10098 thiss!42052)))))

(declare-fun tp!1356001 () Bool)

(declare-fun tp!1355996 () Bool)

(declare-fun array_inv!5815 (array!18108) Bool)

(declare-fun array_inv!5816 (array!18110) Bool)

(assert (=> b!4769194 (= e!2976973 (and tp!1355998 tp!1356001 tp!1355996 (array_inv!5815 (_keys!5287 (v!47772 (underlying!10097 (v!47773 (underlying!10098 thiss!42052)))))) (array_inv!5816 (_values!5258 (v!47772 (underlying!10097 (v!47773 (underlying!10098 thiss!42052)))))) e!2976975))))

(declare-fun mapNonEmpty!21934 () Bool)

(declare-fun tp!1355997 () Bool)

(declare-fun tp!1356002 () Bool)

(assert (=> mapNonEmpty!21934 (= mapRes!21934 (and tp!1355997 tp!1356002))))

(declare-fun mapKey!21934 () (_ BitVec 32))

(declare-fun mapValue!21934 () List!53644)

(declare-fun mapRest!21934 () (Array (_ BitVec 32) List!53644))

(assert (=> mapNonEmpty!21934 (= (arr!8076 (_values!5258 (v!47772 (underlying!10097 (v!47773 (underlying!10098 thiss!42052)))))) (store mapRest!21934 mapKey!21934 mapValue!21934))))

(declare-fun mapIsEmpty!21934 () Bool)

(assert (=> mapIsEmpty!21934 mapRes!21934))

(declare-fun b!4769195 () Bool)

(declare-fun res!2022751 () Bool)

(assert (=> b!4769195 (=> (not res!2022751) (not e!2976977))))

(declare-fun contains!16883 (MutableMap!4829 K!15004) Bool)

(assert (=> b!4769195 (= res!2022751 (contains!16883 thiss!42052 key!1776))))

(declare-fun res!2022753 () Bool)

(assert (=> start!488120 (=> (not res!2022753) (not e!2976977))))

(assert (=> start!488120 (= res!2022753 ((_ is HashMap!4829) thiss!42052))))

(assert (=> start!488120 e!2976977))

(assert (=> start!488120 e!2976980))

(declare-fun tp_is_empty!32495 () Bool)

(assert (=> start!488120 tp_is_empty!32495))

(declare-fun b!4769189 () Bool)

(declare-fun res!2022752 () Bool)

(assert (=> b!4769189 (=> (not res!2022752) (not e!2976977))))

(declare-fun valid!3952 (MutableMap!4829) Bool)

(assert (=> b!4769189 (= res!2022752 (valid!3952 thiss!42052))))

(assert (= (and start!488120 res!2022753) b!4769189))

(assert (= (and b!4769189 res!2022752) b!4769195))

(assert (= (and b!4769195 res!2022751) b!4769187))

(assert (= (and b!4769192 condMapEmpty!21934) mapIsEmpty!21934))

(assert (= (and b!4769192 (not condMapEmpty!21934)) mapNonEmpty!21934))

(assert (= b!4769194 b!4769192))

(assert (= b!4769191 b!4769194))

(assert (= b!4769190 b!4769191))

(assert (= (and b!4769193 ((_ is LongMap!4945) (v!47773 (underlying!10098 thiss!42052)))) b!4769190))

(assert (= b!4769188 b!4769193))

(assert (= (and start!488120 ((_ is HashMap!4829) thiss!42052)) b!4769188))

(declare-fun m!5740896 () Bool)

(assert (=> mapNonEmpty!21934 m!5740896))

(declare-fun m!5740898 () Bool)

(assert (=> b!4769187 m!5740898))

(declare-fun m!5740900 () Bool)

(assert (=> b!4769187 m!5740900))

(declare-fun m!5740902 () Bool)

(assert (=> b!4769187 m!5740902))

(declare-fun m!5740904 () Bool)

(assert (=> b!4769187 m!5740904))

(declare-fun m!5740906 () Bool)

(assert (=> b!4769189 m!5740906))

(declare-fun m!5740908 () Bool)

(assert (=> b!4769195 m!5740908))

(declare-fun m!5740910 () Bool)

(assert (=> b!4769194 m!5740910))

(declare-fun m!5740912 () Bool)

(assert (=> b!4769194 m!5740912))

(check-sat (not b_next!130513) tp_is_empty!32495 (not b!4769194) (not b!4769187) (not b_next!130515) b_and!341459 (not b!4769189) (not b!4769195) (not b!4769192) b_and!341457 (not mapNonEmpty!21934))
(check-sat b_and!341459 b_and!341457 (not b_next!130515) (not b_next!130513))
