; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497418 () Bool)

(assert start!497418)

(declare-fun b!4811315 () Bool)

(declare-fun b_free!130187 () Bool)

(declare-fun b_next!130977 () Bool)

(assert (=> b!4811315 (= b_free!130187 (not b_next!130977))))

(declare-fun tp!1360833 () Bool)

(declare-fun b_and!341981 () Bool)

(assert (=> b!4811315 (= tp!1360833 b_and!341981)))

(declare-fun b!4811316 () Bool)

(declare-fun b_free!130189 () Bool)

(declare-fun b_next!130979 () Bool)

(assert (=> b!4811316 (= b_free!130189 (not b_next!130979))))

(declare-fun tp!1360834 () Bool)

(declare-fun b_and!341983 () Bool)

(assert (=> b!4811316 (= tp!1360834 b_and!341983)))

(declare-fun e!3005706 () Bool)

(declare-datatypes ((K!16169 0))(
  ( (K!16170 (val!21241 Int)) )
))
(declare-datatypes ((array!18622 0))(
  ( (array!18623 (arr!8307 (Array (_ BitVec 32) (_ BitVec 64))) (size!36553 (_ BitVec 32))) )
))
(declare-datatypes ((V!16415 0))(
  ( (V!16416 (val!21242 Int)) )
))
(declare-datatypes ((tuple2!57426 0))(
  ( (tuple2!57427 (_1!32007 K!16169) (_2!32007 V!16415)) )
))
(declare-datatypes ((List!54675 0))(
  ( (Nil!54551) (Cons!54551 (h!60983 tuple2!57426) (t!362159 List!54675)) )
))
(declare-datatypes ((array!18624 0))(
  ( (array!18625 (arr!8308 (Array (_ BitVec 32) List!54675)) (size!36554 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10122 0))(
  ( (LongMapFixedSize!10123 (defaultEntry!5483 Int) (mask!15072 (_ BitVec 32)) (extraKeys!5341 (_ BitVec 32)) (zeroValue!5354 List!54675) (minValue!5354 List!54675) (_size!10147 (_ BitVec 32)) (_keys!5410 array!18622) (_values!5379 array!18624) (_vacant!5126 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20009 0))(
  ( (Cell!20010 (v!48867 LongMapFixedSize!10122)) )
))
(declare-datatypes ((MutLongMap!5061 0))(
  ( (LongMap!5061 (underlying!10329 Cell!20009)) (MutLongMapExt!5060 (__x!33281 Int)) )
))
(declare-datatypes ((Hashable!7072 0))(
  ( (HashableExt!7071 (__x!33282 Int)) )
))
(declare-datatypes ((Cell!20011 0))(
  ( (Cell!20012 (v!48868 MutLongMap!5061)) )
))
(declare-datatypes ((MutableMap!4945 0))(
  ( (MutableMapExt!4944 (__x!33283 Int)) (HashMap!4945 (underlying!10330 Cell!20011) (hashF!13347 Hashable!7072) (_size!10148 (_ BitVec 32)) (defaultValue!5116 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4945)

(declare-fun e!3005705 () Bool)

(declare-fun tp!1360839 () Bool)

(declare-fun tp!1360835 () Bool)

(declare-fun array_inv!5997 (array!18622) Bool)

(declare-fun array_inv!5998 (array!18624) Bool)

(assert (=> b!4811315 (= e!3005706 (and tp!1360833 tp!1360839 tp!1360835 (array_inv!5997 (_keys!5410 (v!48867 (underlying!10329 (v!48868 (underlying!10330 thiss!41921)))))) (array_inv!5998 (_values!5379 (v!48867 (underlying!10329 (v!48868 (underlying!10330 thiss!41921)))))) e!3005705))))

(declare-fun e!3005701 () Bool)

(declare-fun e!3005700 () Bool)

(assert (=> b!4811316 (= e!3005701 (and e!3005700 tp!1360834))))

(declare-fun b!4811318 () Bool)

(declare-fun tp!1360838 () Bool)

(declare-fun mapRes!22360 () Bool)

(assert (=> b!4811318 (= e!3005705 (and tp!1360838 mapRes!22360))))

(declare-fun condMapEmpty!22360 () Bool)

(declare-fun mapDefault!22360 () List!54675)

(assert (=> b!4811318 (= condMapEmpty!22360 (= (arr!8308 (_values!5379 (v!48867 (underlying!10329 (v!48868 (underlying!10330 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54675)) mapDefault!22360)))))

(declare-fun b!4811319 () Bool)

(declare-fun e!3005703 () Bool)

(declare-fun e!3005708 () Bool)

(assert (=> b!4811319 (= e!3005703 e!3005708)))

(declare-fun res!2046561 () Bool)

(assert (=> b!4811319 (=> (not res!2046561) (not e!3005708))))

(declare-fun lt!1962989 () (_ BitVec 64))

(declare-fun contains!18276 (MutLongMap!5061 (_ BitVec 64)) Bool)

(assert (=> b!4811319 (= res!2046561 (contains!18276 (v!48868 (underlying!10330 thiss!41921)) lt!1962989))))

(declare-fun key!1652 () K!16169)

(declare-fun hash!5140 (Hashable!7072 K!16169) (_ BitVec 64))

(assert (=> b!4811319 (= lt!1962989 (hash!5140 (hashF!13347 thiss!41921) key!1652))))

(declare-fun mapNonEmpty!22360 () Bool)

(declare-fun tp!1360836 () Bool)

(declare-fun tp!1360837 () Bool)

(assert (=> mapNonEmpty!22360 (= mapRes!22360 (and tp!1360836 tp!1360837))))

(declare-fun mapRest!22360 () (Array (_ BitVec 32) List!54675))

(declare-fun mapValue!22360 () List!54675)

(declare-fun mapKey!22360 () (_ BitVec 32))

(assert (=> mapNonEmpty!22360 (= (arr!8308 (_values!5379 (v!48867 (underlying!10329 (v!48868 (underlying!10330 thiss!41921)))))) (store mapRest!22360 mapKey!22360 mapValue!22360))))

(declare-fun b!4811320 () Bool)

(declare-fun e!3005699 () Bool)

(declare-fun e!3005704 () Bool)

(assert (=> b!4811320 (= e!3005699 e!3005704)))

(declare-fun b!4811321 () Bool)

(declare-fun e!3005702 () Bool)

(assert (=> b!4811321 (= e!3005702 (not true))))

(declare-datatypes ((tuple2!57428 0))(
  ( (tuple2!57429 (_1!32008 (_ BitVec 64)) (_2!32008 List!54675)) )
))
(declare-datatypes ((List!54676 0))(
  ( (Nil!54552) (Cons!54552 (h!60984 tuple2!57428) (t!362160 List!54676)) )
))
(declare-datatypes ((ListLongMap!5615 0))(
  ( (ListLongMap!5616 (toList!7149 List!54676)) )
))
(declare-fun lt!1962988 () ListLongMap!5615)

(declare-datatypes ((Option!13312 0))(
  ( (None!13311) (Some!13311 (v!48869 List!54675)) )
))
(declare-fun isDefined!10450 (Option!13312) Bool)

(declare-fun getValueByKey!2491 (List!54676 (_ BitVec 64)) Option!13312)

(assert (=> b!4811321 (isDefined!10450 (getValueByKey!2491 (toList!7149 lt!1962988) lt!1962989))))

(declare-datatypes ((Unit!141570 0))(
  ( (Unit!141571) )
))
(declare-fun lt!1962991 () Unit!141570)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2278 (List!54676 (_ BitVec 64)) Unit!141570)

(assert (=> b!4811321 (= lt!1962991 (lemmaContainsKeyImpliesGetValueByKeyDefined!2278 (toList!7149 lt!1962988) lt!1962989))))

(declare-fun containsKey!4155 (List!54676 (_ BitVec 64)) Bool)

(assert (=> b!4811321 (containsKey!4155 (toList!7149 lt!1962988) lt!1962989)))

(declare-fun lt!1962992 () Unit!141570)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!275 (List!54676 (_ BitVec 64)) Unit!141570)

(assert (=> b!4811321 (= lt!1962992 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!275 (toList!7149 lt!1962988) lt!1962989))))

(declare-fun mapIsEmpty!22360 () Bool)

(assert (=> mapIsEmpty!22360 mapRes!22360))

(declare-fun b!4811322 () Bool)

(assert (=> b!4811322 (= e!3005704 e!3005706)))

(declare-fun b!4811317 () Bool)

(declare-fun lt!1962990 () MutLongMap!5061)

(get-info :version)

(assert (=> b!4811317 (= e!3005700 (and e!3005699 ((_ is LongMap!5061) lt!1962990)))))

(assert (=> b!4811317 (= lt!1962990 (v!48868 (underlying!10330 thiss!41921)))))

(declare-fun res!2046558 () Bool)

(assert (=> start!497418 (=> (not res!2046558) (not e!3005703))))

(assert (=> start!497418 (= res!2046558 ((_ is HashMap!4945) thiss!41921))))

(assert (=> start!497418 e!3005703))

(assert (=> start!497418 e!3005701))

(declare-fun tp_is_empty!34001 () Bool)

(assert (=> start!497418 tp_is_empty!34001))

(declare-fun b!4811323 () Bool)

(declare-fun res!2046559 () Bool)

(assert (=> b!4811323 (=> (not res!2046559) (not e!3005703))))

(declare-fun valid!4090 (MutableMap!4945) Bool)

(assert (=> b!4811323 (= res!2046559 (valid!4090 thiss!41921))))

(declare-fun b!4811324 () Bool)

(assert (=> b!4811324 (= e!3005708 e!3005702)))

(declare-fun res!2046560 () Bool)

(assert (=> b!4811324 (=> (not res!2046560) (not e!3005702))))

(declare-fun contains!18277 (List!54676 tuple2!57428) Bool)

(declare-fun apply!13163 (MutLongMap!5061 (_ BitVec 64)) List!54675)

(assert (=> b!4811324 (= res!2046560 (not (contains!18277 (toList!7149 lt!1962988) (tuple2!57429 lt!1962989 (apply!13163 (v!48868 (underlying!10330 thiss!41921)) lt!1962989)))))))

(declare-fun map!12429 (MutLongMap!5061) ListLongMap!5615)

(assert (=> b!4811324 (= lt!1962988 (map!12429 (v!48868 (underlying!10330 thiss!41921))))))

(assert (= (and start!497418 res!2046558) b!4811323))

(assert (= (and b!4811323 res!2046559) b!4811319))

(assert (= (and b!4811319 res!2046561) b!4811324))

(assert (= (and b!4811324 res!2046560) b!4811321))

(assert (= (and b!4811318 condMapEmpty!22360) mapIsEmpty!22360))

(assert (= (and b!4811318 (not condMapEmpty!22360)) mapNonEmpty!22360))

(assert (= b!4811315 b!4811318))

(assert (= b!4811322 b!4811315))

(assert (= b!4811320 b!4811322))

(assert (= (and b!4811317 ((_ is LongMap!5061) (v!48868 (underlying!10330 thiss!41921)))) b!4811320))

(assert (= b!4811316 b!4811317))

(assert (= (and start!497418 ((_ is HashMap!4945) thiss!41921)) b!4811316))

(declare-fun m!5797048 () Bool)

(assert (=> b!4811315 m!5797048))

(declare-fun m!5797050 () Bool)

(assert (=> b!4811315 m!5797050))

(declare-fun m!5797052 () Bool)

(assert (=> b!4811319 m!5797052))

(declare-fun m!5797054 () Bool)

(assert (=> b!4811319 m!5797054))

(declare-fun m!5797056 () Bool)

(assert (=> b!4811323 m!5797056))

(declare-fun m!5797058 () Bool)

(assert (=> b!4811324 m!5797058))

(declare-fun m!5797060 () Bool)

(assert (=> b!4811324 m!5797060))

(declare-fun m!5797062 () Bool)

(assert (=> b!4811324 m!5797062))

(declare-fun m!5797064 () Bool)

(assert (=> mapNonEmpty!22360 m!5797064))

(declare-fun m!5797066 () Bool)

(assert (=> b!4811321 m!5797066))

(assert (=> b!4811321 m!5797066))

(declare-fun m!5797068 () Bool)

(assert (=> b!4811321 m!5797068))

(declare-fun m!5797070 () Bool)

(assert (=> b!4811321 m!5797070))

(declare-fun m!5797072 () Bool)

(assert (=> b!4811321 m!5797072))

(declare-fun m!5797074 () Bool)

(assert (=> b!4811321 m!5797074))

(check-sat (not b!4811318) (not b!4811315) b_and!341983 tp_is_empty!34001 (not b!4811324) (not mapNonEmpty!22360) (not b!4811323) (not b_next!130977) (not b_next!130979) (not b!4811321) (not b!4811319) b_and!341981)
(check-sat b_and!341981 b_and!341983 (not b_next!130977) (not b_next!130979))
