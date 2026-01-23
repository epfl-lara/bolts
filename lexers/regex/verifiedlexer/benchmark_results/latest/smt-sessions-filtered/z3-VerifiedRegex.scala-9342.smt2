; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496716 () Bool)

(assert start!496716)

(declare-fun b!4806836 () Bool)

(declare-fun b_free!129915 () Bool)

(declare-fun b_next!130705 () Bool)

(assert (=> b!4806836 (= b_free!129915 (not b_next!130705))))

(declare-fun tp!1359178 () Bool)

(declare-fun b_and!341675 () Bool)

(assert (=> b!4806836 (= tp!1359178 b_and!341675)))

(declare-fun b!4806834 () Bool)

(declare-fun b_free!129917 () Bool)

(declare-fun b_next!130707 () Bool)

(assert (=> b!4806834 (= b_free!129917 (not b_next!130707))))

(declare-fun tp!1359173 () Bool)

(declare-fun b_and!341677 () Bool)

(assert (=> b!4806834 (= tp!1359173 b_and!341677)))

(declare-fun res!2045007 () Bool)

(declare-fun e!3002223 () Bool)

(assert (=> start!496716 (=> (not res!2045007) (not e!3002223))))

(declare-datatypes ((K!15999 0))(
  ( (K!16000 (val!21105 Int)) )
))
(declare-datatypes ((array!18322 0))(
  ( (array!18323 (arr!8171 (Array (_ BitVec 32) (_ BitVec 64))) (size!36417 (_ BitVec 32))) )
))
(declare-datatypes ((V!16245 0))(
  ( (V!16246 (val!21106 Int)) )
))
(declare-datatypes ((tuple2!57168 0))(
  ( (tuple2!57169 (_1!31878 K!15999) (_2!31878 V!16245)) )
))
(declare-datatypes ((List!54537 0))(
  ( (Nil!54413) (Cons!54413 (h!60845 tuple2!57168) (t!361993 List!54537)) )
))
(declare-datatypes ((array!18324 0))(
  ( (array!18325 (arr!8172 (Array (_ BitVec 32) List!54537)) (size!36418 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9986 0))(
  ( (LongMapFixedSize!9987 (defaultEntry!5411 Int) (mask!14960 (_ BitVec 32)) (extraKeys!5268 (_ BitVec 32)) (zeroValue!5281 List!54537) (minValue!5281 List!54537) (_size!10011 (_ BitVec 32)) (_keys!5335 array!18322) (_values!5306 array!18324) (_vacant!5058 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19737 0))(
  ( (Cell!19738 (v!48630 LongMapFixedSize!9986)) )
))
(declare-datatypes ((MutLongMap!4993 0))(
  ( (LongMap!4993 (underlying!10193 Cell!19737)) (MutLongMapExt!4992 (__x!33077 Int)) )
))
(declare-datatypes ((Hashable!7004 0))(
  ( (HashableExt!7003 (__x!33078 Int)) )
))
(declare-datatypes ((Cell!19739 0))(
  ( (Cell!19740 (v!48631 MutLongMap!4993)) )
))
(declare-datatypes ((MutableMap!4877 0))(
  ( (MutableMapExt!4876 (__x!33079 Int)) (HashMap!4877 (underlying!10194 Cell!19739) (hashF!13272 Hashable!7004) (_size!10012 (_ BitVec 32)) (defaultValue!5048 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4877)

(get-info :version)

(assert (=> start!496716 (= res!2045007 ((_ is HashMap!4877) thiss!41921))))

(assert (=> start!496716 e!3002223))

(declare-fun e!3002220 () Bool)

(assert (=> start!496716 e!3002220))

(declare-fun tp_is_empty!33837 () Bool)

(assert (=> start!496716 tp_is_empty!33837))

(declare-fun b!4806828 () Bool)

(declare-fun e!3002226 () Bool)

(declare-fun tp!1359179 () Bool)

(declare-fun mapRes!22112 () Bool)

(assert (=> b!4806828 (= e!3002226 (and tp!1359179 mapRes!22112))))

(declare-fun condMapEmpty!22112 () Bool)

(declare-fun mapDefault!22112 () List!54537)

(assert (=> b!4806828 (= condMapEmpty!22112 (= (arr!8172 (_values!5306 (v!48630 (underlying!10193 (v!48631 (underlying!10194 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54537)) mapDefault!22112)))))

(declare-fun b!4806829 () Bool)

(declare-fun e!3002227 () Bool)

(assert (=> b!4806829 (= e!3002227 (not true))))

(declare-datatypes ((tuple2!57170 0))(
  ( (tuple2!57171 (_1!31879 (_ BitVec 64)) (_2!31879 List!54537)) )
))
(declare-datatypes ((List!54538 0))(
  ( (Nil!54414) (Cons!54414 (h!60846 tuple2!57170) (t!361994 List!54538)) )
))
(declare-datatypes ((ListLongMap!5493 0))(
  ( (ListLongMap!5494 (toList!7054 List!54538)) )
))
(declare-fun lt!1960127 () ListLongMap!5493)

(declare-fun lt!1960129 () (_ BitVec 64))

(declare-datatypes ((Option!13237 0))(
  ( (None!13236) (Some!13236 (v!48632 List!54537)) )
))
(declare-fun isDefined!10376 (Option!13237) Bool)

(declare-fun getValueByKey!2434 (List!54538 (_ BitVec 64)) Option!13237)

(assert (=> b!4806829 (isDefined!10376 (getValueByKey!2434 (toList!7054 lt!1960127) lt!1960129))))

(declare-datatypes ((Unit!141273 0))(
  ( (Unit!141274) )
))
(declare-fun lt!1960126 () Unit!141273)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2222 (List!54538 (_ BitVec 64)) Unit!141273)

(assert (=> b!4806829 (= lt!1960126 (lemmaContainsKeyImpliesGetValueByKeyDefined!2222 (toList!7054 lt!1960127) lt!1960129))))

(declare-fun containsKey!4089 (List!54538 (_ BitVec 64)) Bool)

(assert (=> b!4806829 (containsKey!4089 (toList!7054 lt!1960127) lt!1960129)))

(declare-fun lt!1960125 () Unit!141273)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!224 (List!54538 (_ BitVec 64)) Unit!141273)

(assert (=> b!4806829 (= lt!1960125 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!224 (toList!7054 lt!1960127) lt!1960129))))

(declare-fun b!4806830 () Bool)

(declare-fun e!3002229 () Bool)

(declare-fun e!3002224 () Bool)

(assert (=> b!4806830 (= e!3002229 e!3002224)))

(declare-fun b!4806831 () Bool)

(declare-fun res!2045009 () Bool)

(assert (=> b!4806831 (=> (not res!2045009) (not e!3002223))))

(declare-fun valid!4004 (MutableMap!4877) Bool)

(assert (=> b!4806831 (= res!2045009 (valid!4004 thiss!41921))))

(declare-fun b!4806832 () Bool)

(declare-fun e!3002222 () Bool)

(assert (=> b!4806832 (= e!3002224 e!3002222)))

(declare-fun mapIsEmpty!22112 () Bool)

(assert (=> mapIsEmpty!22112 mapRes!22112))

(declare-fun b!4806833 () Bool)

(declare-fun e!3002225 () Bool)

(assert (=> b!4806833 (= e!3002225 e!3002227)))

(declare-fun res!2045008 () Bool)

(assert (=> b!4806833 (=> (not res!2045008) (not e!3002227))))

(declare-fun contains!18077 (List!54538 tuple2!57170) Bool)

(declare-fun apply!13076 (MutLongMap!4993 (_ BitVec 64)) List!54537)

(assert (=> b!4806833 (= res!2045008 (not (contains!18077 (toList!7054 lt!1960127) (tuple2!57171 lt!1960129 (apply!13076 (v!48631 (underlying!10194 thiss!41921)) lt!1960129)))))))

(declare-fun map!12324 (MutLongMap!4993) ListLongMap!5493)

(assert (=> b!4806833 (= lt!1960127 (map!12324 (v!48631 (underlying!10194 thiss!41921))))))

(declare-fun e!3002221 () Bool)

(assert (=> b!4806834 (= e!3002220 (and e!3002221 tp!1359173))))

(declare-fun b!4806835 () Bool)

(declare-fun lt!1960128 () MutLongMap!4993)

(assert (=> b!4806835 (= e!3002221 (and e!3002229 ((_ is LongMap!4993) lt!1960128)))))

(assert (=> b!4806835 (= lt!1960128 (v!48631 (underlying!10194 thiss!41921)))))

(declare-fun tp!1359176 () Bool)

(declare-fun tp!1359175 () Bool)

(declare-fun array_inv!5883 (array!18322) Bool)

(declare-fun array_inv!5884 (array!18324) Bool)

(assert (=> b!4806836 (= e!3002222 (and tp!1359178 tp!1359175 tp!1359176 (array_inv!5883 (_keys!5335 (v!48630 (underlying!10193 (v!48631 (underlying!10194 thiss!41921)))))) (array_inv!5884 (_values!5306 (v!48630 (underlying!10193 (v!48631 (underlying!10194 thiss!41921)))))) e!3002226))))

(declare-fun mapNonEmpty!22112 () Bool)

(declare-fun tp!1359174 () Bool)

(declare-fun tp!1359177 () Bool)

(assert (=> mapNonEmpty!22112 (= mapRes!22112 (and tp!1359174 tp!1359177))))

(declare-fun mapKey!22112 () (_ BitVec 32))

(declare-fun mapValue!22112 () List!54537)

(declare-fun mapRest!22112 () (Array (_ BitVec 32) List!54537))

(assert (=> mapNonEmpty!22112 (= (arr!8172 (_values!5306 (v!48630 (underlying!10193 (v!48631 (underlying!10194 thiss!41921)))))) (store mapRest!22112 mapKey!22112 mapValue!22112))))

(declare-fun b!4806837 () Bool)

(assert (=> b!4806837 (= e!3002223 e!3002225)))

(declare-fun res!2045006 () Bool)

(assert (=> b!4806837 (=> (not res!2045006) (not e!3002225))))

(declare-fun contains!18078 (MutLongMap!4993 (_ BitVec 64)) Bool)

(assert (=> b!4806837 (= res!2045006 (contains!18078 (v!48631 (underlying!10194 thiss!41921)) lt!1960129))))

(declare-fun key!1652 () K!15999)

(declare-fun hash!5071 (Hashable!7004 K!15999) (_ BitVec 64))

(assert (=> b!4806837 (= lt!1960129 (hash!5071 (hashF!13272 thiss!41921) key!1652))))

(assert (= (and start!496716 res!2045007) b!4806831))

(assert (= (and b!4806831 res!2045009) b!4806837))

(assert (= (and b!4806837 res!2045006) b!4806833))

(assert (= (and b!4806833 res!2045008) b!4806829))

(assert (= (and b!4806828 condMapEmpty!22112) mapIsEmpty!22112))

(assert (= (and b!4806828 (not condMapEmpty!22112)) mapNonEmpty!22112))

(assert (= b!4806836 b!4806828))

(assert (= b!4806832 b!4806836))

(assert (= b!4806830 b!4806832))

(assert (= (and b!4806835 ((_ is LongMap!4993) (v!48631 (underlying!10194 thiss!41921)))) b!4806830))

(assert (= b!4806834 b!4806835))

(assert (= (and start!496716 ((_ is HashMap!4877) thiss!41921)) b!4806834))

(declare-fun m!5793120 () Bool)

(assert (=> b!4806833 m!5793120))

(declare-fun m!5793122 () Bool)

(assert (=> b!4806833 m!5793122))

(declare-fun m!5793124 () Bool)

(assert (=> b!4806833 m!5793124))

(declare-fun m!5793126 () Bool)

(assert (=> b!4806831 m!5793126))

(declare-fun m!5793128 () Bool)

(assert (=> b!4806837 m!5793128))

(declare-fun m!5793130 () Bool)

(assert (=> b!4806837 m!5793130))

(declare-fun m!5793132 () Bool)

(assert (=> mapNonEmpty!22112 m!5793132))

(declare-fun m!5793134 () Bool)

(assert (=> b!4806829 m!5793134))

(declare-fun m!5793136 () Bool)

(assert (=> b!4806829 m!5793136))

(declare-fun m!5793138 () Bool)

(assert (=> b!4806829 m!5793138))

(assert (=> b!4806829 m!5793136))

(declare-fun m!5793140 () Bool)

(assert (=> b!4806829 m!5793140))

(declare-fun m!5793142 () Bool)

(assert (=> b!4806829 m!5793142))

(declare-fun m!5793144 () Bool)

(assert (=> b!4806836 m!5793144))

(declare-fun m!5793146 () Bool)

(assert (=> b!4806836 m!5793146))

(check-sat (not b!4806836) (not b!4806829) (not b!4806837) (not b_next!130707) (not b_next!130705) (not b!4806833) tp_is_empty!33837 (not mapNonEmpty!22112) (not b!4806828) b_and!341675 b_and!341677 (not b!4806831))
(check-sat b_and!341675 b_and!341677 (not b_next!130705) (not b_next!130707))
