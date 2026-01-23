; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497388 () Bool)

(assert start!497388)

(declare-fun b!4811147 () Bool)

(declare-fun b_free!130171 () Bool)

(declare-fun b_next!130961 () Bool)

(assert (=> b!4811147 (= b_free!130171 (not b_next!130961))))

(declare-fun tp!1360737 () Bool)

(declare-fun b_and!341963 () Bool)

(assert (=> b!4811147 (= tp!1360737 b_and!341963)))

(declare-fun b!4811146 () Bool)

(declare-fun b_free!130173 () Bool)

(declare-fun b_next!130963 () Bool)

(assert (=> b!4811146 (= b_free!130173 (not b_next!130963))))

(declare-fun tp!1360740 () Bool)

(declare-fun b_and!341965 () Bool)

(assert (=> b!4811146 (= tp!1360740 b_and!341965)))

(declare-fun e!3005548 () Bool)

(declare-fun e!3005541 () Bool)

(assert (=> b!4811146 (= e!3005548 (and e!3005541 tp!1360740))))

(declare-fun mapNonEmpty!22345 () Bool)

(declare-fun mapRes!22345 () Bool)

(declare-fun tp!1360736 () Bool)

(declare-fun tp!1360735 () Bool)

(assert (=> mapNonEmpty!22345 (= mapRes!22345 (and tp!1360736 tp!1360735))))

(declare-datatypes ((K!16159 0))(
  ( (K!16160 (val!21233 Int)) )
))
(declare-datatypes ((array!18604 0))(
  ( (array!18605 (arr!8299 (Array (_ BitVec 32) (_ BitVec 64))) (size!36545 (_ BitVec 32))) )
))
(declare-datatypes ((V!16405 0))(
  ( (V!16406 (val!21234 Int)) )
))
(declare-datatypes ((tuple2!57410 0))(
  ( (tuple2!57411 (_1!31999 K!16159) (_2!31999 V!16405)) )
))
(declare-datatypes ((List!54667 0))(
  ( (Nil!54543) (Cons!54543 (h!60975 tuple2!57410) (t!362149 List!54667)) )
))
(declare-datatypes ((array!18606 0))(
  ( (array!18607 (arr!8300 (Array (_ BitVec 32) List!54667)) (size!36546 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10114 0))(
  ( (LongMapFixedSize!10115 (defaultEntry!5479 Int) (mask!15066 (_ BitVec 32)) (extraKeys!5337 (_ BitVec 32)) (zeroValue!5350 List!54667) (minValue!5350 List!54667) (_size!10139 (_ BitVec 32)) (_keys!5406 array!18604) (_values!5375 array!18606) (_vacant!5122 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19993 0))(
  ( (Cell!19994 (v!48857 LongMapFixedSize!10114)) )
))
(declare-datatypes ((MutLongMap!5057 0))(
  ( (LongMap!5057 (underlying!10321 Cell!19993)) (MutLongMapExt!5056 (__x!33269 Int)) )
))
(declare-datatypes ((Hashable!7068 0))(
  ( (HashableExt!7067 (__x!33270 Int)) )
))
(declare-datatypes ((Cell!19995 0))(
  ( (Cell!19996 (v!48858 MutLongMap!5057)) )
))
(declare-datatypes ((MutableMap!4941 0))(
  ( (MutableMapExt!4940 (__x!33271 Int)) (HashMap!4941 (underlying!10322 Cell!19995) (hashF!13343 Hashable!7068) (_size!10140 (_ BitVec 32)) (defaultValue!5112 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4941)

(declare-fun mapRest!22345 () (Array (_ BitVec 32) List!54667))

(declare-fun mapValue!22345 () List!54667)

(declare-fun mapKey!22345 () (_ BitVec 32))

(assert (=> mapNonEmpty!22345 (= (arr!8300 (_values!5375 (v!48857 (underlying!10321 (v!48858 (underlying!10322 thiss!41921)))))) (store mapRest!22345 mapKey!22345 mapValue!22345))))

(declare-fun tp!1360738 () Bool)

(declare-fun e!3005546 () Bool)

(declare-fun tp!1360739 () Bool)

(declare-fun e!3005542 () Bool)

(declare-fun array_inv!5991 (array!18604) Bool)

(declare-fun array_inv!5992 (array!18606) Bool)

(assert (=> b!4811147 (= e!3005542 (and tp!1360737 tp!1360739 tp!1360738 (array_inv!5991 (_keys!5406 (v!48857 (underlying!10321 (v!48858 (underlying!10322 thiss!41921)))))) (array_inv!5992 (_values!5375 (v!48857 (underlying!10321 (v!48858 (underlying!10322 thiss!41921)))))) e!3005546))))

(declare-fun b!4811148 () Bool)

(declare-fun e!3005547 () Bool)

(assert (=> b!4811148 (= e!3005547 (not true))))

(declare-datatypes ((tuple2!57412 0))(
  ( (tuple2!57413 (_1!32000 (_ BitVec 64)) (_2!32000 List!54667)) )
))
(declare-datatypes ((List!54668 0))(
  ( (Nil!54544) (Cons!54544 (h!60976 tuple2!57412) (t!362150 List!54668)) )
))
(declare-datatypes ((ListLongMap!5607 0))(
  ( (ListLongMap!5608 (toList!7145 List!54668)) )
))
(declare-fun lt!1962925 () ListLongMap!5607)

(declare-fun lt!1962926 () (_ BitVec 64))

(declare-fun containsKey!4152 (List!54668 (_ BitVec 64)) Bool)

(assert (=> b!4811148 (containsKey!4152 (toList!7145 lt!1962925) lt!1962926)))

(declare-datatypes ((Unit!141564 0))(
  ( (Unit!141565) )
))
(declare-fun lt!1962923 () Unit!141564)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!272 (List!54668 (_ BitVec 64)) Unit!141564)

(assert (=> b!4811148 (= lt!1962923 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!272 (toList!7145 lt!1962925) lt!1962926))))

(declare-fun mapIsEmpty!22345 () Bool)

(assert (=> mapIsEmpty!22345 mapRes!22345))

(declare-fun res!2046484 () Bool)

(declare-fun e!3005543 () Bool)

(assert (=> start!497388 (=> (not res!2046484) (not e!3005543))))

(get-info :version)

(assert (=> start!497388 (= res!2046484 ((_ is HashMap!4941) thiss!41921))))

(assert (=> start!497388 e!3005543))

(assert (=> start!497388 e!3005548))

(declare-fun tp_is_empty!33991 () Bool)

(assert (=> start!497388 tp_is_empty!33991))

(declare-fun b!4811149 () Bool)

(declare-fun e!3005549 () Bool)

(declare-fun lt!1962924 () MutLongMap!5057)

(assert (=> b!4811149 (= e!3005541 (and e!3005549 ((_ is LongMap!5057) lt!1962924)))))

(assert (=> b!4811149 (= lt!1962924 (v!48858 (underlying!10322 thiss!41921)))))

(declare-fun b!4811150 () Bool)

(declare-fun res!2046485 () Bool)

(assert (=> b!4811150 (=> (not res!2046485) (not e!3005543))))

(declare-fun valid!4085 (MutableMap!4941) Bool)

(assert (=> b!4811150 (= res!2046485 (valid!4085 thiss!41921))))

(declare-fun b!4811151 () Bool)

(declare-fun e!3005540 () Bool)

(assert (=> b!4811151 (= e!3005540 e!3005542)))

(declare-fun b!4811152 () Bool)

(declare-fun tp!1360734 () Bool)

(assert (=> b!4811152 (= e!3005546 (and tp!1360734 mapRes!22345))))

(declare-fun condMapEmpty!22345 () Bool)

(declare-fun mapDefault!22345 () List!54667)

(assert (=> b!4811152 (= condMapEmpty!22345 (= (arr!8300 (_values!5375 (v!48857 (underlying!10321 (v!48858 (underlying!10322 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54667)) mapDefault!22345)))))

(declare-fun b!4811153 () Bool)

(assert (=> b!4811153 (= e!3005549 e!3005540)))

(declare-fun b!4811154 () Bool)

(declare-fun e!3005544 () Bool)

(assert (=> b!4811154 (= e!3005544 e!3005547)))

(declare-fun res!2046483 () Bool)

(assert (=> b!4811154 (=> (not res!2046483) (not e!3005547))))

(declare-fun contains!18268 (List!54668 tuple2!57412) Bool)

(declare-fun apply!13158 (MutLongMap!5057 (_ BitVec 64)) List!54667)

(assert (=> b!4811154 (= res!2046483 (not (contains!18268 (toList!7145 lt!1962925) (tuple2!57413 lt!1962926 (apply!13158 (v!48858 (underlying!10322 thiss!41921)) lt!1962926)))))))

(declare-fun map!12422 (MutLongMap!5057) ListLongMap!5607)

(assert (=> b!4811154 (= lt!1962925 (map!12422 (v!48858 (underlying!10322 thiss!41921))))))

(declare-fun b!4811155 () Bool)

(assert (=> b!4811155 (= e!3005543 e!3005544)))

(declare-fun res!2046486 () Bool)

(assert (=> b!4811155 (=> (not res!2046486) (not e!3005544))))

(declare-fun contains!18269 (MutLongMap!5057 (_ BitVec 64)) Bool)

(assert (=> b!4811155 (= res!2046486 (contains!18269 (v!48858 (underlying!10322 thiss!41921)) lt!1962926))))

(declare-fun key!1652 () K!16159)

(declare-fun hash!5137 (Hashable!7068 K!16159) (_ BitVec 64))

(assert (=> b!4811155 (= lt!1962926 (hash!5137 (hashF!13343 thiss!41921) key!1652))))

(assert (= (and start!497388 res!2046484) b!4811150))

(assert (= (and b!4811150 res!2046485) b!4811155))

(assert (= (and b!4811155 res!2046486) b!4811154))

(assert (= (and b!4811154 res!2046483) b!4811148))

(assert (= (and b!4811152 condMapEmpty!22345) mapIsEmpty!22345))

(assert (= (and b!4811152 (not condMapEmpty!22345)) mapNonEmpty!22345))

(assert (= b!4811147 b!4811152))

(assert (= b!4811151 b!4811147))

(assert (= b!4811153 b!4811151))

(assert (= (and b!4811149 ((_ is LongMap!5057) (v!48858 (underlying!10322 thiss!41921)))) b!4811153))

(assert (= b!4811146 b!4811149))

(assert (= (and start!497388 ((_ is HashMap!4941) thiss!41921)) b!4811146))

(declare-fun m!5796910 () Bool)

(assert (=> b!4811148 m!5796910))

(declare-fun m!5796912 () Bool)

(assert (=> b!4811148 m!5796912))

(declare-fun m!5796914 () Bool)

(assert (=> b!4811155 m!5796914))

(declare-fun m!5796916 () Bool)

(assert (=> b!4811155 m!5796916))

(declare-fun m!5796918 () Bool)

(assert (=> b!4811150 m!5796918))

(declare-fun m!5796920 () Bool)

(assert (=> mapNonEmpty!22345 m!5796920))

(declare-fun m!5796922 () Bool)

(assert (=> b!4811154 m!5796922))

(declare-fun m!5796924 () Bool)

(assert (=> b!4811154 m!5796924))

(declare-fun m!5796926 () Bool)

(assert (=> b!4811154 m!5796926))

(declare-fun m!5796928 () Bool)

(assert (=> b!4811147 m!5796928))

(declare-fun m!5796930 () Bool)

(assert (=> b!4811147 m!5796930))

(check-sat (not mapNonEmpty!22345) (not b!4811154) (not b!4811147) (not b_next!130961) b_and!341963 (not b!4811148) (not b_next!130963) (not b!4811150) (not b!4811155) b_and!341965 tp_is_empty!33991 (not b!4811152))
(check-sat b_and!341963 b_and!341965 (not b_next!130961) (not b_next!130963))
