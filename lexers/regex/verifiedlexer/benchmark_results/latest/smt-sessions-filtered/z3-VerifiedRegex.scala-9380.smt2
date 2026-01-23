; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497488 () Bool)

(assert start!497488)

(declare-fun b!4811773 () Bool)

(declare-fun b_free!130219 () Bool)

(declare-fun b_next!131009 () Bool)

(assert (=> b!4811773 (= b_free!130219 (not b_next!131009))))

(declare-fun tp!1361029 () Bool)

(declare-fun b_and!342021 () Bool)

(assert (=> b!4811773 (= tp!1361029 b_and!342021)))

(declare-fun b!4811772 () Bool)

(declare-fun b_free!130221 () Bool)

(declare-fun b_next!131011 () Bool)

(assert (=> b!4811772 (= b_free!130221 (not b_next!131011))))

(declare-fun tp!1361030 () Bool)

(declare-fun b_and!342023 () Bool)

(assert (=> b!4811772 (= tp!1361030 b_and!342023)))

(declare-fun b!4811771 () Bool)

(declare-fun e!3006084 () Bool)

(declare-fun tp!1361031 () Bool)

(declare-fun mapRes!22388 () Bool)

(assert (=> b!4811771 (= e!3006084 (and tp!1361031 mapRes!22388))))

(declare-fun condMapEmpty!22388 () Bool)

(declare-datatypes ((K!16189 0))(
  ( (K!16190 (val!21257 Int)) )
))
(declare-datatypes ((array!18656 0))(
  ( (array!18657 (arr!8323 (Array (_ BitVec 32) (_ BitVec 64))) (size!36569 (_ BitVec 32))) )
))
(declare-datatypes ((V!16435 0))(
  ( (V!16436 (val!21258 Int)) )
))
(declare-datatypes ((tuple2!57456 0))(
  ( (tuple2!57457 (_1!32022 K!16189) (_2!32022 V!16435)) )
))
(declare-datatypes ((List!54690 0))(
  ( (Nil!54566) (Cons!54566 (h!60998 tuple2!57456) (t!362176 List!54690)) )
))
(declare-datatypes ((array!18658 0))(
  ( (array!18659 (arr!8324 (Array (_ BitVec 32) List!54690)) (size!36570 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10138 0))(
  ( (LongMapFixedSize!10139 (defaultEntry!5491 Int) (mask!15084 (_ BitVec 32)) (extraKeys!5349 (_ BitVec 32)) (zeroValue!5362 List!54690) (minValue!5362 List!54690) (_size!10163 (_ BitVec 32)) (_keys!5418 array!18656) (_values!5387 array!18658) (_vacant!5134 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20041 0))(
  ( (Cell!20042 (v!48890 LongMapFixedSize!10138)) )
))
(declare-datatypes ((MutLongMap!5069 0))(
  ( (LongMap!5069 (underlying!10345 Cell!20041)) (MutLongMapExt!5068 (__x!33305 Int)) )
))
(declare-datatypes ((Hashable!7080 0))(
  ( (HashableExt!7079 (__x!33306 Int)) )
))
(declare-datatypes ((Cell!20043 0))(
  ( (Cell!20044 (v!48891 MutLongMap!5069)) )
))
(declare-datatypes ((MutableMap!4953 0))(
  ( (MutableMapExt!4952 (__x!33307 Int)) (HashMap!4953 (underlying!10346 Cell!20043) (hashF!13356 Hashable!7080) (_size!10164 (_ BitVec 32)) (defaultValue!5124 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4953)

(declare-fun mapDefault!22388 () List!54690)

(assert (=> b!4811771 (= condMapEmpty!22388 (= (arr!8324 (_values!5387 (v!48890 (underlying!10345 (v!48891 (underlying!10346 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54690)) mapDefault!22388)))))

(declare-fun e!3006079 () Bool)

(declare-fun e!3006077 () Bool)

(assert (=> b!4811772 (= e!3006079 (and e!3006077 tp!1361030))))

(declare-fun tp!1361026 () Bool)

(declare-fun tp!1361032 () Bool)

(declare-fun e!3006081 () Bool)

(declare-fun array_inv!6009 (array!18656) Bool)

(declare-fun array_inv!6010 (array!18658) Bool)

(assert (=> b!4811773 (= e!3006081 (and tp!1361029 tp!1361032 tp!1361026 (array_inv!6009 (_keys!5418 (v!48890 (underlying!10345 (v!48891 (underlying!10346 thiss!41921)))))) (array_inv!6010 (_values!5387 (v!48890 (underlying!10345 (v!48891 (underlying!10346 thiss!41921)))))) e!3006084))))

(declare-fun b!4811774 () Bool)

(declare-fun e!3006078 () Bool)

(declare-fun e!3006083 () Bool)

(assert (=> b!4811774 (= e!3006078 e!3006083)))

(declare-fun res!2046701 () Bool)

(declare-fun e!3006082 () Bool)

(assert (=> start!497488 (=> (not res!2046701) (not e!3006082))))

(get-info :version)

(assert (=> start!497488 (= res!2046701 ((_ is HashMap!4953) thiss!41921))))

(assert (=> start!497488 e!3006082))

(assert (=> start!497488 e!3006079))

(declare-fun tp_is_empty!34019 () Bool)

(assert (=> start!497488 tp_is_empty!34019))

(declare-fun mapNonEmpty!22388 () Bool)

(declare-fun tp!1361027 () Bool)

(declare-fun tp!1361028 () Bool)

(assert (=> mapNonEmpty!22388 (= mapRes!22388 (and tp!1361027 tp!1361028))))

(declare-fun mapValue!22388 () List!54690)

(declare-fun mapKey!22388 () (_ BitVec 32))

(declare-fun mapRest!22388 () (Array (_ BitVec 32) List!54690))

(assert (=> mapNonEmpty!22388 (= (arr!8324 (_values!5387 (v!48890 (underlying!10345 (v!48891 (underlying!10346 thiss!41921)))))) (store mapRest!22388 mapKey!22388 mapValue!22388))))

(declare-fun b!4811775 () Bool)

(assert (=> b!4811775 (= e!3006083 e!3006081)))

(declare-fun b!4811776 () Bool)

(declare-fun lambda!233781 () Int)

(declare-datatypes ((tuple2!57458 0))(
  ( (tuple2!57459 (_1!32023 (_ BitVec 64)) (_2!32023 List!54690)) )
))
(declare-datatypes ((List!54691 0))(
  ( (Nil!54567) (Cons!54567 (h!60999 tuple2!57458) (t!362177 List!54691)) )
))
(declare-datatypes ((ListLongMap!5629 0))(
  ( (ListLongMap!5630 (toList!7156 List!54691)) )
))
(declare-fun lt!1963289 () ListLongMap!5629)

(declare-fun lt!1963286 () tuple2!57458)

(declare-datatypes ((Unit!141593 0))(
  ( (Unit!141594) )
))
(declare-fun e!3006080 () Unit!141593)

(declare-fun forallContained!4270 (List!54691 Int tuple2!57458) Unit!141593)

(assert (=> b!4811776 (= e!3006080 (forallContained!4270 (toList!7156 lt!1963289) lambda!233781 lt!1963286))))

(declare-fun map!12441 (MutLongMap!5069) ListLongMap!5629)

(assert (=> b!4811776 (= lt!1963289 (map!12441 (v!48891 (underlying!10346 thiss!41921))))))

(declare-fun lt!1963290 () List!54690)

(declare-fun lt!1963287 () (_ BitVec 64))

(declare-fun apply!13172 (MutLongMap!5069 (_ BitVec 64)) List!54690)

(assert (=> b!4811776 (= lt!1963290 (apply!13172 (v!48891 (underlying!10346 thiss!41921)) lt!1963287))))

(assert (=> b!4811776 (= lt!1963286 (tuple2!57459 lt!1963287 lt!1963290))))

(declare-fun c!820100 () Bool)

(declare-fun contains!18291 (List!54691 tuple2!57458) Bool)

(assert (=> b!4811776 (= c!820100 (not (contains!18291 (toList!7156 lt!1963289) lt!1963286)))))

(declare-fun lt!1963283 () Unit!141593)

(declare-fun e!3006076 () Unit!141593)

(assert (=> b!4811776 (= lt!1963283 e!3006076)))

(declare-fun b!4811777 () Bool)

(assert (=> b!4811777 false))

(declare-fun lt!1963282 () Unit!141593)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1004 (List!54691 (_ BitVec 64) List!54690) Unit!141593)

(assert (=> b!4811777 (= lt!1963282 (lemmaGetValueByKeyImpliesContainsTuple!1004 (toList!7156 lt!1963289) lt!1963287 lt!1963290))))

(declare-datatypes ((Option!13318 0))(
  ( (None!13317) (Some!13317 (v!48892 List!54690)) )
))
(declare-fun isDefined!10456 (Option!13318) Bool)

(declare-fun getValueByKey!2497 (List!54691 (_ BitVec 64)) Option!13318)

(assert (=> b!4811777 (isDefined!10456 (getValueByKey!2497 (toList!7156 lt!1963289) lt!1963287))))

(declare-fun lt!1963281 () Unit!141593)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2284 (List!54691 (_ BitVec 64)) Unit!141593)

(assert (=> b!4811777 (= lt!1963281 (lemmaContainsKeyImpliesGetValueByKeyDefined!2284 (toList!7156 lt!1963289) lt!1963287))))

(declare-fun containsKey!4161 (List!54691 (_ BitVec 64)) Bool)

(assert (=> b!4811777 (containsKey!4161 (toList!7156 lt!1963289) lt!1963287)))

(declare-fun lt!1963284 () Unit!141593)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!281 (List!54691 (_ BitVec 64)) Unit!141593)

(assert (=> b!4811777 (= lt!1963284 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!281 (toList!7156 lt!1963289) lt!1963287))))

(declare-fun Unit!141595 () Unit!141593)

(assert (=> b!4811777 (= e!3006076 Unit!141595)))

(declare-fun b!4811778 () Bool)

(declare-fun lt!1963285 () MutLongMap!5069)

(assert (=> b!4811778 (= e!3006077 (and e!3006078 ((_ is LongMap!5069) lt!1963285)))))

(assert (=> b!4811778 (= lt!1963285 (v!48891 (underlying!10346 thiss!41921)))))

(declare-fun b!4811779 () Bool)

(declare-fun res!2046702 () Bool)

(assert (=> b!4811779 (=> (not res!2046702) (not e!3006082))))

(declare-fun valid!4099 (MutableMap!4953) Bool)

(assert (=> b!4811779 (= res!2046702 (valid!4099 thiss!41921))))

(declare-fun b!4811780 () Bool)

(declare-fun Unit!141596 () Unit!141593)

(assert (=> b!4811780 (= e!3006080 Unit!141596)))

(declare-fun b!4811781 () Bool)

(assert (=> b!4811781 (= e!3006082 false)))

(declare-fun lt!1963288 () Unit!141593)

(assert (=> b!4811781 (= lt!1963288 e!3006080)))

(declare-fun c!820101 () Bool)

(declare-fun contains!18292 (MutLongMap!5069 (_ BitVec 64)) Bool)

(assert (=> b!4811781 (= c!820101 (contains!18292 (v!48891 (underlying!10346 thiss!41921)) lt!1963287))))

(declare-fun key!1652 () K!16189)

(declare-fun hash!5147 (Hashable!7080 K!16189) (_ BitVec 64))

(assert (=> b!4811781 (= lt!1963287 (hash!5147 (hashF!13356 thiss!41921) key!1652))))

(declare-fun mapIsEmpty!22388 () Bool)

(assert (=> mapIsEmpty!22388 mapRes!22388))

(declare-fun b!4811782 () Bool)

(declare-fun Unit!141597 () Unit!141593)

(assert (=> b!4811782 (= e!3006076 Unit!141597)))

(assert (= (and start!497488 res!2046701) b!4811779))

(assert (= (and b!4811779 res!2046702) b!4811781))

(assert (= (and b!4811781 c!820101) b!4811776))

(assert (= (and b!4811781 (not c!820101)) b!4811780))

(assert (= (and b!4811776 c!820100) b!4811777))

(assert (= (and b!4811776 (not c!820100)) b!4811782))

(assert (= (and b!4811771 condMapEmpty!22388) mapIsEmpty!22388))

(assert (= (and b!4811771 (not condMapEmpty!22388)) mapNonEmpty!22388))

(assert (= b!4811773 b!4811771))

(assert (= b!4811775 b!4811773))

(assert (= b!4811774 b!4811775))

(assert (= (and b!4811778 ((_ is LongMap!5069) (v!48891 (underlying!10346 thiss!41921)))) b!4811774))

(assert (= b!4811772 b!4811778))

(assert (= (and start!497488 ((_ is HashMap!4953) thiss!41921)) b!4811772))

(declare-fun m!5797418 () Bool)

(assert (=> b!4811779 m!5797418))

(declare-fun m!5797420 () Bool)

(assert (=> b!4811781 m!5797420))

(declare-fun m!5797422 () Bool)

(assert (=> b!4811781 m!5797422))

(declare-fun m!5797424 () Bool)

(assert (=> b!4811773 m!5797424))

(declare-fun m!5797426 () Bool)

(assert (=> b!4811773 m!5797426))

(declare-fun m!5797428 () Bool)

(assert (=> b!4811776 m!5797428))

(declare-fun m!5797430 () Bool)

(assert (=> b!4811776 m!5797430))

(declare-fun m!5797432 () Bool)

(assert (=> b!4811776 m!5797432))

(declare-fun m!5797434 () Bool)

(assert (=> b!4811776 m!5797434))

(declare-fun m!5797436 () Bool)

(assert (=> b!4811777 m!5797436))

(declare-fun m!5797438 () Bool)

(assert (=> b!4811777 m!5797438))

(declare-fun m!5797440 () Bool)

(assert (=> b!4811777 m!5797440))

(declare-fun m!5797442 () Bool)

(assert (=> b!4811777 m!5797442))

(assert (=> b!4811777 m!5797438))

(declare-fun m!5797444 () Bool)

(assert (=> b!4811777 m!5797444))

(declare-fun m!5797446 () Bool)

(assert (=> b!4811777 m!5797446))

(declare-fun m!5797448 () Bool)

(assert (=> mapNonEmpty!22388 m!5797448))

(check-sat (not b!4811779) (not b!4811781) (not b_next!131011) (not b!4811777) (not b!4811771) (not b_next!131009) (not b!4811773) b_and!342021 tp_is_empty!34019 (not b!4811776) (not mapNonEmpty!22388) b_and!342023)
(check-sat b_and!342021 b_and!342023 (not b_next!131009) (not b_next!131011))
