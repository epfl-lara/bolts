; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497058 () Bool)

(assert start!497058)

(declare-fun b!4808872 () Bool)

(declare-fun b_free!130051 () Bool)

(declare-fun b_next!130841 () Bool)

(assert (=> b!4808872 (= b_free!130051 (not b_next!130841))))

(declare-fun tp!1360009 () Bool)

(declare-fun b_and!341827 () Bool)

(assert (=> b!4808872 (= tp!1360009 b_and!341827)))

(declare-fun b!4808869 () Bool)

(declare-fun b_free!130053 () Bool)

(declare-fun b_next!130843 () Bool)

(assert (=> b!4808869 (= b_free!130053 (not b_next!130843))))

(declare-fun tp!1360008 () Bool)

(declare-fun b_and!341829 () Bool)

(assert (=> b!4808869 (= tp!1360008 b_and!341829)))

(declare-fun b!4808859 () Bool)

(assert (=> b!4808859 false))

(declare-datatypes ((K!16084 0))(
  ( (K!16085 (val!21173 Int)) )
))
(declare-datatypes ((V!16330 0))(
  ( (V!16331 (val!21174 Int)) )
))
(declare-datatypes ((tuple2!57300 0))(
  ( (tuple2!57301 (_1!31944 K!16084) (_2!31944 V!16330)) )
))
(declare-datatypes ((List!54607 0))(
  ( (Nil!54483) (Cons!54483 (h!60915 tuple2!57300) (t!362079 List!54607)) )
))
(declare-datatypes ((tuple2!57302 0))(
  ( (tuple2!57303 (_1!31945 (_ BitVec 64)) (_2!31945 List!54607)) )
))
(declare-datatypes ((List!54608 0))(
  ( (Nil!54484) (Cons!54484 (h!60916 tuple2!57302) (t!362080 List!54608)) )
))
(declare-datatypes ((ListLongMap!5557 0))(
  ( (ListLongMap!5558 (toList!7103 List!54608)) )
))
(declare-fun lt!1961455 () ListLongMap!5557)

(declare-datatypes ((Unit!141431 0))(
  ( (Unit!141432) )
))
(declare-fun lt!1961454 () Unit!141431)

(declare-fun lt!1961461 () List!54607)

(declare-fun lt!1961459 () (_ BitVec 64))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!983 (List!54608 (_ BitVec 64) List!54607) Unit!141431)

(assert (=> b!4808859 (= lt!1961454 (lemmaGetValueByKeyImpliesContainsTuple!983 (toList!7103 lt!1961455) lt!1961459 lt!1961461))))

(declare-datatypes ((Option!13272 0))(
  ( (None!13271) (Some!13271 (v!48749 List!54607)) )
))
(declare-fun isDefined!10411 (Option!13272) Bool)

(declare-fun getValueByKey!2468 (List!54608 (_ BitVec 64)) Option!13272)

(assert (=> b!4808859 (isDefined!10411 (getValueByKey!2468 (toList!7103 lt!1961455) lt!1961459))))

(declare-fun lt!1961452 () Unit!141431)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2256 (List!54608 (_ BitVec 64)) Unit!141431)

(assert (=> b!4808859 (= lt!1961452 (lemmaContainsKeyImpliesGetValueByKeyDefined!2256 (toList!7103 lt!1961455) lt!1961459))))

(declare-fun containsKey!4124 (List!54608 (_ BitVec 64)) Bool)

(assert (=> b!4808859 (containsKey!4124 (toList!7103 lt!1961455) lt!1961459)))

(declare-fun lt!1961457 () Unit!141431)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!254 (List!54608 (_ BitVec 64)) Unit!141431)

(assert (=> b!4808859 (= lt!1961457 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!254 (toList!7103 lt!1961455) lt!1961459))))

(declare-fun e!3003818 () Unit!141431)

(declare-fun Unit!141433 () Unit!141431)

(assert (=> b!4808859 (= e!3003818 Unit!141433)))

(declare-fun b!4808860 () Bool)

(declare-fun Unit!141434 () Unit!141431)

(assert (=> b!4808860 (= e!3003818 Unit!141434)))

(declare-fun mapIsEmpty!22238 () Bool)

(declare-fun mapRes!22238 () Bool)

(assert (=> mapIsEmpty!22238 mapRes!22238))

(declare-fun b!4808861 () Bool)

(declare-fun e!3003825 () Bool)

(declare-fun e!3003823 () Bool)

(declare-datatypes ((array!18474 0))(
  ( (array!18475 (arr!8239 (Array (_ BitVec 32) (_ BitVec 64))) (size!36485 (_ BitVec 32))) )
))
(declare-datatypes ((array!18476 0))(
  ( (array!18477 (arr!8240 (Array (_ BitVec 32) List!54607)) (size!36486 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10054 0))(
  ( (LongMapFixedSize!10055 (defaultEntry!5445 Int) (mask!15011 (_ BitVec 32)) (extraKeys!5302 (_ BitVec 32)) (zeroValue!5315 List!54607) (minValue!5315 List!54607) (_size!10079 (_ BitVec 32)) (_keys!5369 array!18474) (_values!5340 array!18476) (_vacant!5092 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19873 0))(
  ( (Cell!19874 (v!48750 LongMapFixedSize!10054)) )
))
(declare-datatypes ((MutLongMap!5027 0))(
  ( (LongMap!5027 (underlying!10261 Cell!19873)) (MutLongMapExt!5026 (__x!33179 Int)) )
))
(declare-fun lt!1961458 () MutLongMap!5027)

(get-info :version)

(assert (=> b!4808861 (= e!3003825 (and e!3003823 ((_ is LongMap!5027) lt!1961458)))))

(declare-datatypes ((Hashable!7038 0))(
  ( (HashableExt!7037 (__x!33180 Int)) )
))
(declare-datatypes ((Cell!19875 0))(
  ( (Cell!19876 (v!48751 MutLongMap!5027)) )
))
(declare-datatypes ((MutableMap!4911 0))(
  ( (MutableMapExt!4910 (__x!33181 Int)) (HashMap!4911 (underlying!10262 Cell!19875) (hashF!13306 Hashable!7038) (_size!10080 (_ BitVec 32)) (defaultValue!5082 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4911)

(assert (=> b!4808861 (= lt!1961458 (v!48751 (underlying!10262 thiss!41921)))))

(declare-fun mapNonEmpty!22238 () Bool)

(declare-fun tp!1360011 () Bool)

(declare-fun tp!1360010 () Bool)

(assert (=> mapNonEmpty!22238 (= mapRes!22238 (and tp!1360011 tp!1360010))))

(declare-fun mapRest!22238 () (Array (_ BitVec 32) List!54607))

(declare-fun mapValue!22238 () List!54607)

(declare-fun mapKey!22238 () (_ BitVec 32))

(assert (=> mapNonEmpty!22238 (= (arr!8240 (_values!5340 (v!48750 (underlying!10261 (v!48751 (underlying!10262 thiss!41921)))))) (store mapRest!22238 mapKey!22238 mapValue!22238))))

(declare-fun b!4808862 () Bool)

(declare-fun e!3003816 () Bool)

(assert (=> b!4808862 (= e!3003816 (not ((_ is LongMap!5027) (v!48751 (underlying!10262 thiss!41921)))))))

(declare-fun b!4808863 () Bool)

(declare-fun e!3003821 () Bool)

(assert (=> b!4808863 (= e!3003823 e!3003821)))

(declare-fun b!4808864 () Bool)

(declare-fun e!3003822 () Unit!141431)

(declare-fun Unit!141435 () Unit!141431)

(assert (=> b!4808864 (= e!3003822 Unit!141435)))

(declare-fun b!4808865 () Bool)

(declare-fun e!3003815 () Bool)

(assert (=> b!4808865 (= e!3003815 e!3003816)))

(declare-fun res!2045681 () Bool)

(assert (=> b!4808865 (=> (not res!2045681) (not e!3003816))))

(declare-fun lt!1961451 () ListLongMap!5557)

(declare-fun key!1652 () K!16084)

(declare-datatypes ((ListMap!6543 0))(
  ( (ListMap!6544 (toList!7104 List!54607)) )
))
(declare-fun contains!18177 (ListMap!6543 K!16084) Bool)

(declare-fun extractMap!2523 (List!54608) ListMap!6543)

(assert (=> b!4808865 (= res!2045681 (not (contains!18177 (extractMap!2523 (toList!7103 lt!1961451)) key!1652)))))

(declare-fun map!12378 (MutLongMap!5027) ListLongMap!5557)

(assert (=> b!4808865 (= lt!1961451 (map!12378 (v!48751 (underlying!10262 thiss!41921))))))

(declare-fun lt!1961456 () Unit!141431)

(assert (=> b!4808865 (= lt!1961456 e!3003822)))

(declare-fun c!819605 () Bool)

(declare-fun contains!18178 (MutLongMap!5027 (_ BitVec 64)) Bool)

(assert (=> b!4808865 (= c!819605 (contains!18178 (v!48751 (underlying!10262 thiss!41921)) lt!1961459))))

(declare-fun hash!5108 (Hashable!7038 K!16084) (_ BitVec 64))

(assert (=> b!4808865 (= lt!1961459 (hash!5108 (hashF!13306 thiss!41921) key!1652))))

(declare-fun lambda!233616 () Int)

(declare-fun b!4808867 () Bool)

(declare-fun lt!1961453 () tuple2!57302)

(declare-fun forallContained!4253 (List!54608 Int tuple2!57302) Unit!141431)

(assert (=> b!4808867 (= e!3003822 (forallContained!4253 (toList!7103 lt!1961455) lambda!233616 lt!1961453))))

(assert (=> b!4808867 (= lt!1961455 (map!12378 (v!48751 (underlying!10262 thiss!41921))))))

(declare-fun apply!13114 (MutLongMap!5027 (_ BitVec 64)) List!54607)

(assert (=> b!4808867 (= lt!1961461 (apply!13114 (v!48751 (underlying!10262 thiss!41921)) lt!1961459))))

(assert (=> b!4808867 (= lt!1961453 (tuple2!57303 lt!1961459 lt!1961461))))

(declare-fun c!819606 () Bool)

(declare-fun contains!18179 (List!54608 tuple2!57302) Bool)

(assert (=> b!4808867 (= c!819606 (not (contains!18179 (toList!7103 lt!1961455) lt!1961453)))))

(declare-fun lt!1961460 () Unit!141431)

(assert (=> b!4808867 (= lt!1961460 e!3003818)))

(declare-fun b!4808868 () Bool)

(declare-fun res!2045680 () Bool)

(assert (=> b!4808868 (=> (not res!2045680) (not e!3003816))))

(declare-fun contains!18180 (ListLongMap!5557 (_ BitVec 64)) Bool)

(assert (=> b!4808868 (= res!2045680 (contains!18180 lt!1961451 lt!1961459))))

(declare-fun e!3003824 () Bool)

(assert (=> b!4808869 (= e!3003824 (and e!3003825 tp!1360008))))

(declare-fun b!4808870 () Bool)

(declare-fun res!2045678 () Bool)

(assert (=> b!4808870 (=> (not res!2045678) (not e!3003815))))

(declare-fun valid!4048 (MutableMap!4911) Bool)

(assert (=> b!4808870 (= res!2045678 (valid!4048 thiss!41921))))

(declare-fun b!4808871 () Bool)

(declare-fun e!3003817 () Bool)

(declare-fun tp!1360013 () Bool)

(assert (=> b!4808871 (= e!3003817 (and tp!1360013 mapRes!22238))))

(declare-fun condMapEmpty!22238 () Bool)

(declare-fun mapDefault!22238 () List!54607)

(assert (=> b!4808871 (= condMapEmpty!22238 (= (arr!8240 (_values!5340 (v!48750 (underlying!10261 (v!48751 (underlying!10262 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54607)) mapDefault!22238)))))

(declare-fun res!2045677 () Bool)

(assert (=> start!497058 (=> (not res!2045677) (not e!3003815))))

(assert (=> start!497058 (= res!2045677 ((_ is HashMap!4911) thiss!41921))))

(assert (=> start!497058 e!3003815))

(assert (=> start!497058 e!3003824))

(declare-fun tp_is_empty!33921 () Bool)

(assert (=> start!497058 tp_is_empty!33921))

(declare-fun b!4808866 () Bool)

(declare-fun e!3003819 () Bool)

(assert (=> b!4808866 (= e!3003821 e!3003819)))

(declare-fun tp!1360007 () Bool)

(declare-fun tp!1360012 () Bool)

(declare-fun array_inv!5945 (array!18474) Bool)

(declare-fun array_inv!5946 (array!18476) Bool)

(assert (=> b!4808872 (= e!3003819 (and tp!1360009 tp!1360007 tp!1360012 (array_inv!5945 (_keys!5369 (v!48750 (underlying!10261 (v!48751 (underlying!10262 thiss!41921)))))) (array_inv!5946 (_values!5340 (v!48750 (underlying!10261 (v!48751 (underlying!10262 thiss!41921)))))) e!3003817))))

(declare-fun b!4808873 () Bool)

(declare-fun res!2045679 () Bool)

(assert (=> b!4808873 (=> (not res!2045679) (not e!3003816))))

(declare-datatypes ((Option!13273 0))(
  ( (None!13272) (Some!13272 (v!48752 tuple2!57300)) )
))
(declare-fun isDefined!10412 (Option!13273) Bool)

(declare-fun getPair!952 (List!54607 K!16084) Option!13273)

(declare-fun apply!13115 (ListLongMap!5557 (_ BitVec 64)) List!54607)

(assert (=> b!4808873 (= res!2045679 (isDefined!10412 (getPair!952 (apply!13115 lt!1961451 lt!1961459) key!1652)))))

(assert (= (and start!497058 res!2045677) b!4808870))

(assert (= (and b!4808870 res!2045678) b!4808865))

(assert (= (and b!4808865 c!819605) b!4808867))

(assert (= (and b!4808865 (not c!819605)) b!4808864))

(assert (= (and b!4808867 c!819606) b!4808859))

(assert (= (and b!4808867 (not c!819606)) b!4808860))

(assert (= (and b!4808865 res!2045681) b!4808868))

(assert (= (and b!4808868 res!2045680) b!4808873))

(assert (= (and b!4808873 res!2045679) b!4808862))

(assert (= (and b!4808871 condMapEmpty!22238) mapIsEmpty!22238))

(assert (= (and b!4808871 (not condMapEmpty!22238)) mapNonEmpty!22238))

(assert (= b!4808872 b!4808871))

(assert (= b!4808866 b!4808872))

(assert (= b!4808863 b!4808866))

(assert (= (and b!4808861 ((_ is LongMap!5027) (v!48751 (underlying!10262 thiss!41921)))) b!4808863))

(assert (= b!4808869 b!4808861))

(assert (= (and start!497058 ((_ is HashMap!4911) thiss!41921)) b!4808869))

(declare-fun m!5794910 () Bool)

(assert (=> b!4808873 m!5794910))

(assert (=> b!4808873 m!5794910))

(declare-fun m!5794912 () Bool)

(assert (=> b!4808873 m!5794912))

(assert (=> b!4808873 m!5794912))

(declare-fun m!5794914 () Bool)

(assert (=> b!4808873 m!5794914))

(declare-fun m!5794916 () Bool)

(assert (=> b!4808868 m!5794916))

(declare-fun m!5794918 () Bool)

(assert (=> mapNonEmpty!22238 m!5794918))

(declare-fun m!5794920 () Bool)

(assert (=> b!4808872 m!5794920))

(declare-fun m!5794922 () Bool)

(assert (=> b!4808872 m!5794922))

(declare-fun m!5794924 () Bool)

(assert (=> b!4808865 m!5794924))

(declare-fun m!5794926 () Bool)

(assert (=> b!4808865 m!5794926))

(assert (=> b!4808865 m!5794926))

(declare-fun m!5794928 () Bool)

(assert (=> b!4808865 m!5794928))

(declare-fun m!5794930 () Bool)

(assert (=> b!4808865 m!5794930))

(declare-fun m!5794932 () Bool)

(assert (=> b!4808865 m!5794932))

(declare-fun m!5794934 () Bool)

(assert (=> b!4808867 m!5794934))

(assert (=> b!4808867 m!5794932))

(declare-fun m!5794936 () Bool)

(assert (=> b!4808867 m!5794936))

(declare-fun m!5794938 () Bool)

(assert (=> b!4808867 m!5794938))

(declare-fun m!5794940 () Bool)

(assert (=> b!4808870 m!5794940))

(declare-fun m!5794942 () Bool)

(assert (=> b!4808859 m!5794942))

(declare-fun m!5794944 () Bool)

(assert (=> b!4808859 m!5794944))

(declare-fun m!5794946 () Bool)

(assert (=> b!4808859 m!5794946))

(assert (=> b!4808859 m!5794944))

(declare-fun m!5794948 () Bool)

(assert (=> b!4808859 m!5794948))

(declare-fun m!5794950 () Bool)

(assert (=> b!4808859 m!5794950))

(declare-fun m!5794952 () Bool)

(assert (=> b!4808859 m!5794952))

(check-sat (not b!4808871) tp_is_empty!33921 (not b!4808867) (not mapNonEmpty!22238) (not b!4808870) (not b_next!130843) b_and!341829 (not b!4808865) (not b_next!130841) (not b!4808859) b_and!341827 (not b!4808873) (not b!4808872) (not b!4808868))
(check-sat b_and!341827 b_and!341829 (not b_next!130841) (not b_next!130843))
