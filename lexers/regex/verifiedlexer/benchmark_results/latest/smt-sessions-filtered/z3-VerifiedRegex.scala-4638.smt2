; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242560 () Bool)

(assert start!242560)

(declare-fun b!2484290 () Bool)

(declare-fun b_free!72441 () Bool)

(declare-fun b_next!73145 () Bool)

(assert (=> b!2484290 (= b_free!72441 (not b_next!73145))))

(declare-fun tp!795295 () Bool)

(declare-fun b_and!188711 () Bool)

(assert (=> b!2484290 (= tp!795295 b_and!188711)))

(declare-fun b!2484295 () Bool)

(declare-fun b_free!72443 () Bool)

(declare-fun b_next!73147 () Bool)

(assert (=> b!2484295 (= b_free!72443 (not b_next!73147))))

(declare-fun tp!795296 () Bool)

(declare-fun b_and!188713 () Bool)

(assert (=> b!2484295 (= tp!795296 b_and!188713)))

(declare-fun b!2484286 () Bool)

(declare-fun res!1051501 () Bool)

(declare-fun e!1577245 () Bool)

(assert (=> b!2484286 (=> (not res!1051501) (not e!1577245))))

(declare-datatypes ((Hashable!3306 0))(
  ( (HashableExt!3305 (__x!19094 Int)) )
))
(declare-datatypes ((K!5575 0))(
  ( (K!5576 (val!8935 Int)) )
))
(declare-datatypes ((V!5777 0))(
  ( (V!5778 (val!8936 Int)) )
))
(declare-datatypes ((tuple2!29022 0))(
  ( (tuple2!29023 (_1!17053 K!5575) (_2!17053 V!5777)) )
))
(declare-datatypes ((List!29266 0))(
  ( (Nil!29166) (Cons!29166 (h!34576 tuple2!29022) (t!210941 List!29266)) )
))
(declare-datatypes ((array!12063 0))(
  ( (array!12064 (arr!5382 (Array (_ BitVec 32) List!29266)) (size!22801 (_ BitVec 32))) )
))
(declare-datatypes ((array!12065 0))(
  ( (array!12066 (arr!5383 (Array (_ BitVec 32) (_ BitVec 64))) (size!22802 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6792 0))(
  ( (LongMapFixedSize!6793 (defaultEntry!3770 Int) (mask!8583 (_ BitVec 32)) (extraKeys!3644 (_ BitVec 32)) (zeroValue!3654 List!29266) (minValue!3654 List!29266) (_size!6839 (_ BitVec 32)) (_keys!3693 array!12065) (_values!3676 array!12063) (_vacant!3457 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13401 0))(
  ( (Cell!13402 (v!31566 LongMapFixedSize!6792)) )
))
(declare-datatypes ((MutLongMap!3396 0))(
  ( (LongMap!3396 (underlying!6999 Cell!13401)) (MutLongMapExt!3395 (__x!19095 Int)) )
))
(declare-datatypes ((Cell!13403 0))(
  ( (Cell!13404 (v!31567 MutLongMap!3396)) )
))
(declare-datatypes ((MutableMap!3306 0))(
  ( (MutableMapExt!3305 (__x!19096 Int)) (HashMap!3306 (underlying!7000 Cell!13403) (hashF!5282 Hashable!3306) (_size!6840 (_ BitVec 32)) (defaultValue!3468 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3306)

(declare-fun valid!2604 (MutableMap!3306) Bool)

(assert (=> b!2484286 (= res!1051501 (valid!2604 thiss!42540))))

(declare-fun mapIsEmpty!15681 () Bool)

(declare-fun mapRes!15681 () Bool)

(assert (=> mapIsEmpty!15681 mapRes!15681))

(declare-fun b!2484287 () Bool)

(declare-fun e!1577247 () Bool)

(assert (=> b!2484287 (= e!1577247 true)))

(declare-fun lt!890387 () Bool)

(declare-datatypes ((tuple2!29024 0))(
  ( (tuple2!29025 (_1!17054 (_ BitVec 64)) (_2!17054 List!29266)) )
))
(declare-datatypes ((List!29267 0))(
  ( (Nil!29167) (Cons!29167 (h!34577 tuple2!29024) (t!210942 List!29267)) )
))
(declare-datatypes ((ListLongMap!577 0))(
  ( (ListLongMap!578 (toList!1628 List!29267)) )
))
(declare-fun lt!890391 () ListLongMap!577)

(declare-datatypes ((Unit!42746 0))(
  ( (Unit!42747) )
))
(declare-datatypes ((tuple2!29026 0))(
  ( (tuple2!29027 (_1!17055 Unit!42746) (_2!17055 MutableMap!3306)) )
))
(declare-fun lt!890383 () tuple2!29026)

(declare-fun allKeysSameHashInMap!174 (ListLongMap!577 Hashable!3306) Bool)

(assert (=> b!2484287 (= lt!890387 (allKeysSameHashInMap!174 lt!890391 (hashF!5282 (_2!17055 lt!890383))))))

(declare-fun b!2484288 () Bool)

(declare-fun e!1577248 () Bool)

(declare-fun e!1577250 () Bool)

(declare-fun lt!890389 () MutLongMap!3396)

(get-info :version)

(assert (=> b!2484288 (= e!1577248 (and e!1577250 ((_ is LongMap!3396) lt!890389)))))

(assert (=> b!2484288 (= lt!890389 (v!31567 (underlying!7000 thiss!42540)))))

(declare-fun b!2484289 () Bool)

(declare-fun e!1577252 () Bool)

(assert (=> b!2484289 (= e!1577245 (not e!1577252))))

(declare-fun res!1051500 () Bool)

(assert (=> b!2484289 (=> res!1051500 e!1577252)))

(declare-datatypes ((tuple2!29028 0))(
  ( (tuple2!29029 (_1!17056 Bool) (_2!17056 MutLongMap!3396)) )
))
(declare-fun lt!890393 () tuple2!29028)

(assert (=> b!2484289 (= res!1051500 (not (_1!17056 lt!890393)))))

(declare-fun lt!890386 () List!29266)

(declare-fun noDuplicateKeys!100 (List!29266) Bool)

(assert (=> b!2484289 (noDuplicateKeys!100 lt!890386)))

(declare-fun lt!890395 () Unit!42746)

(declare-fun lt!890384 () List!29266)

(declare-fun key!2246 () K!5575)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!80 (List!29266 K!5575) Unit!42746)

(assert (=> b!2484289 (= lt!890395 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!80 lt!890384 key!2246))))

(declare-fun lt!890396 () Cell!13403)

(declare-fun Unit!42748 () Unit!42746)

(declare-fun Unit!42749 () Unit!42746)

(assert (=> b!2484289 (= lt!890383 (ite (_1!17056 lt!890393) (tuple2!29027 Unit!42748 (HashMap!3306 lt!890396 (hashF!5282 thiss!42540) (bvsub (_size!6840 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3468 thiss!42540))) (tuple2!29027 Unit!42749 (HashMap!3306 lt!890396 (hashF!5282 thiss!42540) (_size!6840 thiss!42540) (defaultValue!3468 thiss!42540)))))))

(assert (=> b!2484289 (= lt!890396 (Cell!13404 (_2!17056 lt!890393)))))

(declare-fun lt!890394 () (_ BitVec 64))

(declare-fun update!214 (MutLongMap!3396 (_ BitVec 64) List!29266) tuple2!29028)

(assert (=> b!2484289 (= lt!890393 (update!214 (v!31567 (underlying!7000 thiss!42540)) lt!890394 lt!890386))))

(declare-fun removePairForKey!92 (List!29266 K!5575) List!29266)

(assert (=> b!2484289 (= lt!890386 (removePairForKey!92 lt!890384 key!2246))))

(declare-datatypes ((ListMap!1109 0))(
  ( (ListMap!1110 (toList!1629 List!29266)) )
))
(declare-fun lt!890388 () ListMap!1109)

(declare-fun map!6269 (MutableMap!3306) ListMap!1109)

(assert (=> b!2484289 (= lt!890388 (map!6269 thiss!42540))))

(declare-fun lt!890390 () Unit!42746)

(declare-fun lambda!94252 () Int)

(declare-fun forallContained!881 (List!29267 Int tuple2!29024) Unit!42746)

(assert (=> b!2484289 (= lt!890390 (forallContained!881 (toList!1628 lt!890391) lambda!94252 (tuple2!29025 lt!890394 lt!890384)))))

(declare-fun map!6270 (MutLongMap!3396) ListLongMap!577)

(assert (=> b!2484289 (= lt!890391 (map!6270 (v!31567 (underlying!7000 thiss!42540))))))

(declare-fun apply!6957 (MutLongMap!3396 (_ BitVec 64)) List!29266)

(assert (=> b!2484289 (= lt!890384 (apply!6957 (v!31567 (underlying!7000 thiss!42540)) lt!890394))))

(declare-fun hash!726 (Hashable!3306 K!5575) (_ BitVec 64))

(assert (=> b!2484289 (= lt!890394 (hash!726 (hashF!5282 thiss!42540) key!2246))))

(declare-fun res!1051499 () Bool)

(assert (=> start!242560 (=> (not res!1051499) (not e!1577245))))

(assert (=> start!242560 (= res!1051499 ((_ is HashMap!3306) thiss!42540))))

(assert (=> start!242560 e!1577245))

(declare-fun e!1577251 () Bool)

(assert (=> start!242560 e!1577251))

(declare-fun tp_is_empty!12337 () Bool)

(assert (=> start!242560 tp_is_empty!12337))

(declare-fun e!1577246 () Bool)

(declare-fun tp!795298 () Bool)

(declare-fun tp!795294 () Bool)

(declare-fun e!1577244 () Bool)

(declare-fun array_inv!3867 (array!12065) Bool)

(declare-fun array_inv!3868 (array!12063) Bool)

(assert (=> b!2484290 (= e!1577246 (and tp!795295 tp!795298 tp!795294 (array_inv!3867 (_keys!3693 (v!31566 (underlying!6999 (v!31567 (underlying!7000 thiss!42540)))))) (array_inv!3868 (_values!3676 (v!31566 (underlying!6999 (v!31567 (underlying!7000 thiss!42540)))))) e!1577244))))

(declare-fun b!2484291 () Bool)

(declare-fun e!1577249 () Bool)

(assert (=> b!2484291 (= e!1577250 e!1577249)))

(declare-fun b!2484292 () Bool)

(declare-fun res!1051502 () Bool)

(assert (=> b!2484292 (=> (not res!1051502) (not e!1577245))))

(declare-fun contains!5167 (MutableMap!3306 K!5575) Bool)

(assert (=> b!2484292 (= res!1051502 (contains!5167 thiss!42540 key!2246))))

(declare-fun b!2484293 () Bool)

(assert (=> b!2484293 (= e!1577249 e!1577246)))

(declare-fun b!2484294 () Bool)

(assert (=> b!2484294 (= e!1577252 e!1577247)))

(declare-fun res!1051498 () Bool)

(assert (=> b!2484294 (=> res!1051498 e!1577247)))

(declare-fun forall!5986 (List!29267 Int) Bool)

(assert (=> b!2484294 (= res!1051498 (not (forall!5986 (toList!1628 lt!890391) lambda!94252)))))

(declare-fun allKeysSameHash!74 (List!29266 (_ BitVec 64) Hashable!3306) Bool)

(assert (=> b!2484294 (allKeysSameHash!74 lt!890386 lt!890394 (hashF!5282 (_2!17055 lt!890383)))))

(declare-fun lt!890385 () Unit!42746)

(declare-fun lemmaRemovePairForKeyPreservesHash!63 (List!29266 K!5575 (_ BitVec 64) Hashable!3306) Unit!42746)

(assert (=> b!2484294 (= lt!890385 (lemmaRemovePairForKeyPreservesHash!63 lt!890384 key!2246 lt!890394 (hashF!5282 (_2!17055 lt!890383))))))

(assert (=> b!2484294 (allKeysSameHash!74 lt!890384 lt!890394 (hashF!5282 (_2!17055 lt!890383)))))

(declare-fun lt!890392 () Unit!42746)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!67 (List!29267 (_ BitVec 64) List!29266 Hashable!3306) Unit!42746)

(assert (=> b!2484294 (= lt!890392 (lemmaInLongMapAllKeySameHashThenForTuple!67 (toList!1628 lt!890391) lt!890394 lt!890384 (hashF!5282 (_2!17055 lt!890383))))))

(declare-fun mapNonEmpty!15681 () Bool)

(declare-fun tp!795297 () Bool)

(declare-fun tp!795299 () Bool)

(assert (=> mapNonEmpty!15681 (= mapRes!15681 (and tp!795297 tp!795299))))

(declare-fun mapRest!15681 () (Array (_ BitVec 32) List!29266))

(declare-fun mapValue!15681 () List!29266)

(declare-fun mapKey!15681 () (_ BitVec 32))

(assert (=> mapNonEmpty!15681 (= (arr!5382 (_values!3676 (v!31566 (underlying!6999 (v!31567 (underlying!7000 thiss!42540)))))) (store mapRest!15681 mapKey!15681 mapValue!15681))))

(assert (=> b!2484295 (= e!1577251 (and e!1577248 tp!795296))))

(declare-fun b!2484296 () Bool)

(declare-fun tp!795300 () Bool)

(assert (=> b!2484296 (= e!1577244 (and tp!795300 mapRes!15681))))

(declare-fun condMapEmpty!15681 () Bool)

(declare-fun mapDefault!15681 () List!29266)

(assert (=> b!2484296 (= condMapEmpty!15681 (= (arr!5382 (_values!3676 (v!31566 (underlying!6999 (v!31567 (underlying!7000 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29266)) mapDefault!15681)))))

(assert (= (and start!242560 res!1051499) b!2484286))

(assert (= (and b!2484286 res!1051501) b!2484292))

(assert (= (and b!2484292 res!1051502) b!2484289))

(assert (= (and b!2484289 (not res!1051500)) b!2484294))

(assert (= (and b!2484294 (not res!1051498)) b!2484287))

(assert (= (and b!2484296 condMapEmpty!15681) mapIsEmpty!15681))

(assert (= (and b!2484296 (not condMapEmpty!15681)) mapNonEmpty!15681))

(assert (= b!2484290 b!2484296))

(assert (= b!2484293 b!2484290))

(assert (= b!2484291 b!2484293))

(assert (= (and b!2484288 ((_ is LongMap!3396) (v!31567 (underlying!7000 thiss!42540)))) b!2484291))

(assert (= b!2484295 b!2484288))

(assert (= (and start!242560 ((_ is HashMap!3306) thiss!42540)) b!2484295))

(declare-fun m!2852203 () Bool)

(assert (=> mapNonEmpty!15681 m!2852203))

(declare-fun m!2852205 () Bool)

(assert (=> b!2484287 m!2852205))

(declare-fun m!2852207 () Bool)

(assert (=> b!2484292 m!2852207))

(declare-fun m!2852209 () Bool)

(assert (=> b!2484286 m!2852209))

(declare-fun m!2852211 () Bool)

(assert (=> b!2484290 m!2852211))

(declare-fun m!2852213 () Bool)

(assert (=> b!2484290 m!2852213))

(declare-fun m!2852215 () Bool)

(assert (=> b!2484294 m!2852215))

(declare-fun m!2852217 () Bool)

(assert (=> b!2484294 m!2852217))

(declare-fun m!2852219 () Bool)

(assert (=> b!2484294 m!2852219))

(declare-fun m!2852221 () Bool)

(assert (=> b!2484294 m!2852221))

(declare-fun m!2852223 () Bool)

(assert (=> b!2484294 m!2852223))

(declare-fun m!2852225 () Bool)

(assert (=> b!2484289 m!2852225))

(declare-fun m!2852227 () Bool)

(assert (=> b!2484289 m!2852227))

(declare-fun m!2852229 () Bool)

(assert (=> b!2484289 m!2852229))

(declare-fun m!2852231 () Bool)

(assert (=> b!2484289 m!2852231))

(declare-fun m!2852233 () Bool)

(assert (=> b!2484289 m!2852233))

(declare-fun m!2852235 () Bool)

(assert (=> b!2484289 m!2852235))

(declare-fun m!2852237 () Bool)

(assert (=> b!2484289 m!2852237))

(declare-fun m!2852239 () Bool)

(assert (=> b!2484289 m!2852239))

(declare-fun m!2852241 () Bool)

(assert (=> b!2484289 m!2852241))

(check-sat (not b!2484296) (not b!2484289) (not b!2484287) (not mapNonEmpty!15681) tp_is_empty!12337 (not b!2484290) (not b_next!73145) b_and!188711 (not b_next!73147) b_and!188713 (not b!2484286) (not b!2484294) (not b!2484292))
(check-sat b_and!188713 b_and!188711 (not b_next!73145) (not b_next!73147))
