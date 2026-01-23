; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496912 () Bool)

(assert start!496912)

(declare-fun b!4807875 () Bool)

(declare-fun b_free!129987 () Bool)

(declare-fun b_next!130777 () Bool)

(assert (=> b!4807875 (= b_free!129987 (not b_next!130777))))

(declare-fun tp!1359627 () Bool)

(declare-fun b_and!341757 () Bool)

(assert (=> b!4807875 (= tp!1359627 b_and!341757)))

(declare-fun b!4807870 () Bool)

(declare-fun b_free!129989 () Bool)

(declare-fun b_next!130779 () Bool)

(assert (=> b!4807870 (= b_free!129989 (not b_next!130779))))

(declare-fun tp!1359629 () Bool)

(declare-fun b_and!341759 () Bool)

(assert (=> b!4807870 (= tp!1359629 b_and!341759)))

(declare-fun bs!1159950 () Bool)

(declare-fun b!4807868 () Bool)

(declare-fun b!4807873 () Bool)

(assert (= bs!1159950 (and b!4807868 b!4807873)))

(declare-fun lambda!233544 () Int)

(declare-fun lambda!233543 () Int)

(assert (=> bs!1159950 (= lambda!233544 lambda!233543)))

(declare-fun b!4807866 () Bool)

(declare-fun e!3003068 () Bool)

(declare-fun e!3003062 () Bool)

(assert (=> b!4807866 (= e!3003068 e!3003062)))

(declare-fun b!4807867 () Bool)

(declare-fun e!3003071 () Bool)

(declare-datatypes ((K!16044 0))(
  ( (K!16045 (val!21141 Int)) )
))
(declare-datatypes ((V!16290 0))(
  ( (V!16291 (val!21142 Int)) )
))
(declare-datatypes ((tuple2!57236 0))(
  ( (tuple2!57237 (_1!31912 K!16044) (_2!31912 V!16290)) )
))
(declare-datatypes ((List!54572 0))(
  ( (Nil!54448) (Cons!54448 (h!60880 tuple2!57236) (t!362038 List!54572)) )
))
(declare-datatypes ((tuple2!57238 0))(
  ( (tuple2!57239 (_1!31913 (_ BitVec 64)) (_2!31913 List!54572)) )
))
(declare-datatypes ((List!54573 0))(
  ( (Nil!54449) (Cons!54449 (h!60881 tuple2!57238) (t!362039 List!54573)) )
))
(declare-datatypes ((ListLongMap!5525 0))(
  ( (ListLongMap!5526 (toList!7075 List!54573)) )
))
(declare-fun lt!1960762 () ListLongMap!5525)

(declare-fun forall!12379 (List!54573 Int) Bool)

(assert (=> b!4807867 (= e!3003071 (not (forall!12379 (toList!7075 lt!1960762) lambda!233544)))))

(declare-fun res!2045350 () Bool)

(assert (=> b!4807868 (=> (not res!2045350) (not e!3003071))))

(assert (=> b!4807868 (= res!2045350 (forall!12379 (toList!7075 lt!1960762) lambda!233544))))

(declare-fun e!3003065 () Bool)

(declare-fun e!3003069 () Bool)

(assert (=> b!4807870 (= e!3003065 (and e!3003069 tp!1359629))))

(declare-fun b!4807871 () Bool)

(declare-fun e!3003072 () Bool)

(declare-fun tp!1359628 () Bool)

(declare-fun mapRes!22181 () Bool)

(assert (=> b!4807871 (= e!3003072 (and tp!1359628 mapRes!22181))))

(declare-fun condMapEmpty!22181 () Bool)

(declare-datatypes ((array!18404 0))(
  ( (array!18405 (arr!8207 (Array (_ BitVec 32) (_ BitVec 64))) (size!36453 (_ BitVec 32))) )
))
(declare-datatypes ((array!18406 0))(
  ( (array!18407 (arr!8208 (Array (_ BitVec 32) List!54572)) (size!36454 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10022 0))(
  ( (LongMapFixedSize!10023 (defaultEntry!5429 Int) (mask!14987 (_ BitVec 32)) (extraKeys!5286 (_ BitVec 32)) (zeroValue!5299 List!54572) (minValue!5299 List!54572) (_size!10047 (_ BitVec 32)) (_keys!5353 array!18404) (_values!5324 array!18406) (_vacant!5076 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19809 0))(
  ( (Cell!19810 (v!48692 LongMapFixedSize!10022)) )
))
(declare-datatypes ((MutLongMap!5011 0))(
  ( (LongMap!5011 (underlying!10229 Cell!19809)) (MutLongMapExt!5010 (__x!33131 Int)) )
))
(declare-datatypes ((Hashable!7022 0))(
  ( (HashableExt!7021 (__x!33132 Int)) )
))
(declare-datatypes ((Cell!19811 0))(
  ( (Cell!19812 (v!48693 MutLongMap!5011)) )
))
(declare-datatypes ((MutableMap!4895 0))(
  ( (MutableMapExt!4894 (__x!33133 Int)) (HashMap!4895 (underlying!10230 Cell!19811) (hashF!13290 Hashable!7022) (_size!10048 (_ BitVec 32)) (defaultValue!5066 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4895)

(declare-fun mapDefault!22181 () List!54572)

(assert (=> b!4807871 (= condMapEmpty!22181 (= (arr!8208 (_values!5324 (v!48692 (underlying!10229 (v!48693 (underlying!10230 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54572)) mapDefault!22181)))))

(declare-fun mapIsEmpty!22181 () Bool)

(assert (=> mapIsEmpty!22181 mapRes!22181))

(declare-fun b!4807872 () Bool)

(declare-fun lt!1960765 () MutLongMap!5011)

(get-info :version)

(assert (=> b!4807872 (= e!3003069 (and e!3003068 ((_ is LongMap!5011) lt!1960765)))))

(assert (=> b!4807872 (= lt!1960765 (v!48693 (underlying!10230 thiss!41921)))))

(declare-fun lt!1960764 () tuple2!57238)

(declare-datatypes ((Unit!141347 0))(
  ( (Unit!141348) )
))
(declare-fun e!3003063 () Unit!141347)

(declare-fun lt!1960761 () ListLongMap!5525)

(declare-fun forallContained!4241 (List!54573 Int tuple2!57238) Unit!141347)

(assert (=> b!4807873 (= e!3003063 (forallContained!4241 (toList!7075 lt!1960761) lambda!233543 lt!1960764))))

(declare-fun map!12353 (MutLongMap!5011) ListLongMap!5525)

(assert (=> b!4807873 (= lt!1960761 (map!12353 (v!48693 (underlying!10230 thiss!41921))))))

(declare-fun lt!1960768 () List!54572)

(declare-fun lt!1960769 () (_ BitVec 64))

(declare-fun apply!13096 (MutLongMap!5011 (_ BitVec 64)) List!54572)

(assert (=> b!4807873 (= lt!1960768 (apply!13096 (v!48693 (underlying!10230 thiss!41921)) lt!1960769))))

(assert (=> b!4807873 (= lt!1960764 (tuple2!57239 lt!1960769 lt!1960768))))

(declare-fun c!819441 () Bool)

(declare-fun contains!18125 (List!54573 tuple2!57238) Bool)

(assert (=> b!4807873 (= c!819441 (not (contains!18125 (toList!7075 lt!1960761) lt!1960764)))))

(declare-fun lt!1960767 () Unit!141347)

(declare-fun e!3003067 () Unit!141347)

(assert (=> b!4807873 (= lt!1960767 e!3003067)))

(declare-fun b!4807874 () Bool)

(declare-fun e!3003064 () Bool)

(assert (=> b!4807874 (= e!3003062 e!3003064)))

(declare-fun tp!1359630 () Bool)

(declare-fun tp!1359632 () Bool)

(declare-fun array_inv!5913 (array!18404) Bool)

(declare-fun array_inv!5914 (array!18406) Bool)

(assert (=> b!4807875 (= e!3003064 (and tp!1359627 tp!1359630 tp!1359632 (array_inv!5913 (_keys!5353 (v!48692 (underlying!10229 (v!48693 (underlying!10230 thiss!41921)))))) (array_inv!5914 (_values!5324 (v!48692 (underlying!10229 (v!48693 (underlying!10230 thiss!41921)))))) e!3003072))))

(declare-fun mapNonEmpty!22181 () Bool)

(declare-fun tp!1359626 () Bool)

(declare-fun tp!1359631 () Bool)

(assert (=> mapNonEmpty!22181 (= mapRes!22181 (and tp!1359626 tp!1359631))))

(declare-fun mapValue!22181 () List!54572)

(declare-fun mapKey!22181 () (_ BitVec 32))

(declare-fun mapRest!22181 () (Array (_ BitVec 32) List!54572))

(assert (=> mapNonEmpty!22181 (= (arr!8208 (_values!5324 (v!48692 (underlying!10229 (v!48693 (underlying!10230 thiss!41921)))))) (store mapRest!22181 mapKey!22181 mapValue!22181))))

(declare-fun b!4807876 () Bool)

(declare-fun res!2045353 () Bool)

(assert (=> b!4807876 (=> (not res!2045353) (not e!3003071))))

(declare-fun allKeysSameHashInMap!2395 (ListLongMap!5525 Hashable!7022) Bool)

(assert (=> b!4807876 (= res!2045353 (allKeysSameHashInMap!2395 lt!1960762 (hashF!13290 thiss!41921)))))

(declare-fun b!4807869 () Bool)

(assert (=> b!4807869 false))

(declare-fun lt!1960766 () Unit!141347)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!968 (List!54573 (_ BitVec 64) List!54572) Unit!141347)

(assert (=> b!4807869 (= lt!1960766 (lemmaGetValueByKeyImpliesContainsTuple!968 (toList!7075 lt!1960761) lt!1960769 lt!1960768))))

(declare-datatypes ((Option!13253 0))(
  ( (None!13252) (Some!13252 (v!48694 List!54572)) )
))
(declare-fun isDefined!10392 (Option!13253) Bool)

(declare-fun getValueByKey!2450 (List!54573 (_ BitVec 64)) Option!13253)

(assert (=> b!4807869 (isDefined!10392 (getValueByKey!2450 (toList!7075 lt!1960761) lt!1960769))))

(declare-fun lt!1960771 () Unit!141347)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2238 (List!54573 (_ BitVec 64)) Unit!141347)

(assert (=> b!4807869 (= lt!1960771 (lemmaContainsKeyImpliesGetValueByKeyDefined!2238 (toList!7075 lt!1960761) lt!1960769))))

(declare-fun containsKey!4105 (List!54573 (_ BitVec 64)) Bool)

(assert (=> b!4807869 (containsKey!4105 (toList!7075 lt!1960761) lt!1960769)))

(declare-fun lt!1960770 () Unit!141347)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!239 (List!54573 (_ BitVec 64)) Unit!141347)

(assert (=> b!4807869 (= lt!1960770 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!239 (toList!7075 lt!1960761) lt!1960769))))

(declare-fun Unit!141349 () Unit!141347)

(assert (=> b!4807869 (= e!3003067 Unit!141349)))

(declare-fun res!2045351 () Bool)

(declare-fun e!3003070 () Bool)

(assert (=> start!496912 (=> (not res!2045351) (not e!3003070))))

(assert (=> start!496912 (= res!2045351 ((_ is HashMap!4895) thiss!41921))))

(assert (=> start!496912 e!3003070))

(assert (=> start!496912 e!3003065))

(declare-fun tp_is_empty!33883 () Bool)

(assert (=> start!496912 tp_is_empty!33883))

(declare-fun b!4807877 () Bool)

(declare-fun res!2045352 () Bool)

(assert (=> b!4807877 (=> (not res!2045352) (not e!3003070))))

(declare-fun valid!4029 (MutableMap!4895) Bool)

(assert (=> b!4807877 (= res!2045352 (valid!4029 thiss!41921))))

(declare-fun b!4807878 () Bool)

(declare-fun Unit!141350 () Unit!141347)

(assert (=> b!4807878 (= e!3003063 Unit!141350)))

(declare-fun b!4807879 () Bool)

(assert (=> b!4807879 (= e!3003070 e!3003071)))

(declare-fun res!2045354 () Bool)

(assert (=> b!4807879 (=> (not res!2045354) (not e!3003071))))

(declare-fun key!1652 () K!16044)

(declare-datatypes ((ListMap!6519 0))(
  ( (ListMap!6520 (toList!7076 List!54572)) )
))
(declare-fun contains!18126 (ListMap!6519 K!16044) Bool)

(declare-fun extractMap!2511 (List!54573) ListMap!6519)

(assert (=> b!4807879 (= res!2045354 (contains!18126 (extractMap!2511 (toList!7075 lt!1960762)) key!1652))))

(assert (=> b!4807879 (= lt!1960762 (map!12353 (v!48693 (underlying!10230 thiss!41921))))))

(declare-fun lt!1960763 () Unit!141347)

(assert (=> b!4807879 (= lt!1960763 e!3003063)))

(declare-fun c!819440 () Bool)

(declare-fun contains!18127 (MutLongMap!5011 (_ BitVec 64)) Bool)

(assert (=> b!4807879 (= c!819440 (contains!18127 (v!48693 (underlying!10230 thiss!41921)) lt!1960769))))

(declare-fun hash!5093 (Hashable!7022 K!16044) (_ BitVec 64))

(assert (=> b!4807879 (= lt!1960769 (hash!5093 (hashF!13290 thiss!41921) key!1652))))

(declare-fun b!4807880 () Bool)

(declare-fun Unit!141351 () Unit!141347)

(assert (=> b!4807880 (= e!3003067 Unit!141351)))

(assert (= (and start!496912 res!2045351) b!4807877))

(assert (= (and b!4807877 res!2045352) b!4807879))

(assert (= (and b!4807879 c!819440) b!4807873))

(assert (= (and b!4807879 (not c!819440)) b!4807878))

(assert (= (and b!4807873 c!819441) b!4807869))

(assert (= (and b!4807873 (not c!819441)) b!4807880))

(assert (= (and b!4807879 res!2045354) b!4807868))

(assert (= (and b!4807868 res!2045350) b!4807876))

(assert (= (and b!4807876 res!2045353) b!4807867))

(assert (= (and b!4807871 condMapEmpty!22181) mapIsEmpty!22181))

(assert (= (and b!4807871 (not condMapEmpty!22181)) mapNonEmpty!22181))

(assert (= b!4807875 b!4807871))

(assert (= b!4807874 b!4807875))

(assert (= b!4807866 b!4807874))

(assert (= (and b!4807872 ((_ is LongMap!5011) (v!48693 (underlying!10230 thiss!41921)))) b!4807866))

(assert (= b!4807870 b!4807872))

(assert (= (and start!496912 ((_ is HashMap!4895) thiss!41921)) b!4807870))

(declare-fun m!5794014 () Bool)

(assert (=> b!4807877 m!5794014))

(declare-fun m!5794016 () Bool)

(assert (=> mapNonEmpty!22181 m!5794016))

(declare-fun m!5794018 () Bool)

(assert (=> b!4807879 m!5794018))

(declare-fun m!5794020 () Bool)

(assert (=> b!4807879 m!5794020))

(declare-fun m!5794022 () Bool)

(assert (=> b!4807879 m!5794022))

(assert (=> b!4807879 m!5794018))

(declare-fun m!5794024 () Bool)

(assert (=> b!4807879 m!5794024))

(declare-fun m!5794026 () Bool)

(assert (=> b!4807879 m!5794026))

(declare-fun m!5794028 () Bool)

(assert (=> b!4807876 m!5794028))

(declare-fun m!5794030 () Bool)

(assert (=> b!4807869 m!5794030))

(declare-fun m!5794032 () Bool)

(assert (=> b!4807869 m!5794032))

(declare-fun m!5794034 () Bool)

(assert (=> b!4807869 m!5794034))

(declare-fun m!5794036 () Bool)

(assert (=> b!4807869 m!5794036))

(assert (=> b!4807869 m!5794034))

(declare-fun m!5794038 () Bool)

(assert (=> b!4807869 m!5794038))

(declare-fun m!5794040 () Bool)

(assert (=> b!4807869 m!5794040))

(declare-fun m!5794042 () Bool)

(assert (=> b!4807873 m!5794042))

(assert (=> b!4807873 m!5794026))

(declare-fun m!5794044 () Bool)

(assert (=> b!4807873 m!5794044))

(declare-fun m!5794046 () Bool)

(assert (=> b!4807873 m!5794046))

(declare-fun m!5794048 () Bool)

(assert (=> b!4807875 m!5794048))

(declare-fun m!5794050 () Bool)

(assert (=> b!4807875 m!5794050))

(declare-fun m!5794052 () Bool)

(assert (=> b!4807868 m!5794052))

(assert (=> b!4807867 m!5794052))

(check-sat (not b_next!130777) (not b!4807879) (not b_next!130779) b_and!341759 (not b!4807871) tp_is_empty!33883 (not mapNonEmpty!22181) (not b!4807877) (not b!4807873) (not b!4807867) (not b!4807868) (not b!4807876) (not b!4807875) b_and!341757 (not b!4807869))
(check-sat b_and!341757 b_and!341759 (not b_next!130777) (not b_next!130779))
