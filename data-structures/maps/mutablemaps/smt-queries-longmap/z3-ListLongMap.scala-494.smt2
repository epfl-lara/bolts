; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11126 () Bool)

(assert start!11126)

(declare-fun b!90907 () Bool)

(declare-fun b_free!2321 () Bool)

(declare-fun b_next!2321 () Bool)

(assert (=> b!90907 (= b_free!2321 (not b_next!2321))))

(declare-fun tp!9212 () Bool)

(declare-fun b_and!5493 () Bool)

(assert (=> b!90907 (= tp!9212 b_and!5493)))

(declare-fun b!90898 () Bool)

(declare-fun b_free!2323 () Bool)

(declare-fun b_next!2323 () Bool)

(assert (=> b!90898 (= b_free!2323 (not b_next!2323))))

(declare-fun tp!9213 () Bool)

(declare-fun b_and!5495 () Bool)

(assert (=> b!90898 (= tp!9213 b_and!5495)))

(declare-fun b!90892 () Bool)

(declare-datatypes ((Unit!2725 0))(
  ( (Unit!2726) )
))
(declare-fun e!59301 () Unit!2725)

(declare-fun Unit!2727 () Unit!2725)

(assert (=> b!90892 (= e!59301 Unit!2727)))

(declare-fun mapNonEmpty!3549 () Bool)

(declare-fun mapRes!3549 () Bool)

(declare-fun tp!9214 () Bool)

(declare-fun e!59291 () Bool)

(assert (=> mapNonEmpty!3549 (= mapRes!3549 (and tp!9214 e!59291))))

(declare-datatypes ((V!3083 0))(
  ( (V!3084 (val!1333 Int)) )
))
(declare-datatypes ((array!4120 0))(
  ( (array!4121 (arr!1960 (Array (_ BitVec 32) (_ BitVec 64))) (size!2207 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!945 0))(
  ( (ValueCellFull!945 (v!2713 V!3083)) (EmptyCell!945) )
))
(declare-datatypes ((array!4122 0))(
  ( (array!4123 (arr!1961 (Array (_ BitVec 32) ValueCell!945)) (size!2208 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!798 0))(
  ( (LongMapFixedSize!799 (defaultEntry!2400 Int) (mask!6458 (_ BitVec 32)) (extraKeys!2231 (_ BitVec 32)) (zeroValue!2288 V!3083) (minValue!2288 V!3083) (_size!448 (_ BitVec 32)) (_keys!4080 array!4120) (_values!2383 array!4122) (_vacant!448 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!602 0))(
  ( (Cell!603 (v!2714 LongMapFixedSize!798)) )
))
(declare-datatypes ((LongMap!602 0))(
  ( (LongMap!603 (underlying!312 Cell!602)) )
))
(declare-fun thiss!992 () LongMap!602)

(declare-fun mapKey!3549 () (_ BitVec 32))

(declare-fun mapValue!3549 () ValueCell!945)

(declare-fun mapRest!3550 () (Array (_ BitVec 32) ValueCell!945))

(assert (=> mapNonEmpty!3549 (= (arr!1961 (_values!2383 (v!2714 (underlying!312 thiss!992)))) (store mapRest!3550 mapKey!3549 mapValue!3549))))

(declare-fun b!90893 () Bool)

(declare-fun res!46323 () Bool)

(declare-fun e!59306 () Bool)

(assert (=> b!90893 (=> (not res!46323) (not e!59306))))

(declare-fun newMap!16 () LongMapFixedSize!798)

(declare-fun valid!353 (LongMapFixedSize!798) Bool)

(assert (=> b!90893 (= res!46323 (valid!353 newMap!16))))

(declare-fun b!90894 () Bool)

(declare-fun res!46320 () Bool)

(assert (=> b!90894 (=> (not res!46320) (not e!59306))))

(assert (=> b!90894 (= res!46320 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6458 newMap!16)) (_size!448 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun b!90895 () Bool)

(declare-fun res!46322 () Bool)

(declare-fun e!59299 () Bool)

(assert (=> b!90895 (=> res!46322 e!59299)))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!90895 (= res!46322 (bvsge (bvsub from!355 #b00000000000000000000000000000001) (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))

(declare-fun b!90896 () Bool)

(declare-fun e!59302 () Bool)

(declare-fun e!59300 () Bool)

(assert (=> b!90896 (= e!59302 e!59300)))

(declare-fun res!46317 () Bool)

(assert (=> b!90896 (=> (not res!46317) (not e!59300))))

(declare-datatypes ((tuple2!2282 0))(
  ( (tuple2!2283 (_1!1151 Bool) (_2!1151 LongMapFixedSize!798)) )
))
(declare-fun lt!44097 () tuple2!2282)

(assert (=> b!90896 (= res!46317 (and (_1!1151 lt!44097) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!44105 () Unit!2725)

(assert (=> b!90896 (= lt!44105 e!59301)))

(declare-fun c!15073 () Bool)

(declare-datatypes ((tuple2!2284 0))(
  ( (tuple2!2285 (_1!1152 (_ BitVec 64)) (_2!1152 V!3083)) )
))
(declare-datatypes ((List!1577 0))(
  ( (Nil!1574) (Cons!1573 (h!2165 tuple2!2284) (t!5403 List!1577)) )
))
(declare-datatypes ((ListLongMap!1513 0))(
  ( (ListLongMap!1514 (toList!772 List!1577)) )
))
(declare-fun lt!44095 () ListLongMap!1513)

(declare-fun contains!780 (ListLongMap!1513 (_ BitVec 64)) Bool)

(assert (=> b!90896 (= c!15073 (contains!780 lt!44095 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)))))

(declare-fun lt!44102 () V!3083)

(declare-fun update!132 (LongMapFixedSize!798 (_ BitVec 64) V!3083) tuple2!2282)

(assert (=> b!90896 (= lt!44097 (update!132 newMap!16 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102))))

(declare-fun b!90897 () Bool)

(declare-fun e!59293 () Bool)

(declare-fun e!59305 () Bool)

(assert (=> b!90897 (= e!59293 (and e!59305 mapRes!3549))))

(declare-fun condMapEmpty!3549 () Bool)

(declare-fun mapDefault!3550 () ValueCell!945)

(assert (=> b!90897 (= condMapEmpty!3549 (= (arr!1961 (_values!2383 (v!2714 (underlying!312 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!945)) mapDefault!3550)))))

(declare-fun tp_is_empty!2577 () Bool)

(declare-fun e!59295 () Bool)

(declare-fun e!59296 () Bool)

(declare-fun array_inv!1177 (array!4120) Bool)

(declare-fun array_inv!1178 (array!4122) Bool)

(assert (=> b!90898 (= e!59295 (and tp!9213 tp_is_empty!2577 (array_inv!1177 (_keys!4080 newMap!16)) (array_inv!1178 (_values!2383 newMap!16)) e!59296))))

(declare-fun mapIsEmpty!3549 () Bool)

(assert (=> mapIsEmpty!3549 mapRes!3549))

(declare-fun b!90899 () Bool)

(declare-fun e!59292 () Bool)

(assert (=> b!90899 (= e!59292 tp_is_empty!2577)))

(declare-fun res!46318 () Bool)

(assert (=> start!11126 (=> (not res!46318) (not e!59306))))

(declare-fun valid!354 (LongMap!602) Bool)

(assert (=> start!11126 (= res!46318 (valid!354 thiss!992))))

(assert (=> start!11126 e!59306))

(declare-fun e!59290 () Bool)

(assert (=> start!11126 e!59290))

(assert (=> start!11126 true))

(assert (=> start!11126 e!59295))

(declare-fun b!90900 () Bool)

(declare-fun res!46315 () Bool)

(assert (=> b!90900 (=> (not res!46315) (not e!59306))))

(assert (=> b!90900 (= res!46315 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992)))))))))

(declare-fun b!90901 () Bool)

(assert (=> b!90901 (= e!59291 tp_is_empty!2577)))

(declare-fun b!90902 () Bool)

(assert (=> b!90902 (= e!59305 tp_is_empty!2577)))

(declare-fun b!90903 () Bool)

(declare-fun e!59307 () Bool)

(declare-fun e!59297 () Bool)

(assert (=> b!90903 (= e!59307 e!59297)))

(declare-fun b!90904 () Bool)

(declare-fun e!59304 () Bool)

(assert (=> b!90904 (= e!59304 tp_is_empty!2577)))

(declare-fun mapIsEmpty!3550 () Bool)

(declare-fun mapRes!3550 () Bool)

(assert (=> mapIsEmpty!3550 mapRes!3550))

(declare-fun b!90905 () Bool)

(declare-fun e!59294 () Bool)

(assert (=> b!90905 (= e!59294 e!59302)))

(declare-fun res!46316 () Bool)

(assert (=> b!90905 (=> (not res!46316) (not e!59302))))

(assert (=> b!90905 (= res!46316 (and (not (= (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1248 (ValueCell!945 V!3083) V!3083)

(declare-fun dynLambda!363 (Int (_ BitVec 64)) V!3083)

(assert (=> b!90905 (= lt!44102 (get!1248 (select (arr!1961 (_values!2383 (v!2714 (underlying!312 thiss!992)))) from!355) (dynLambda!363 (defaultEntry!2400 (v!2714 (underlying!312 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!90906 () Bool)

(assert (=> b!90906 (= e!59306 e!59294)))

(declare-fun res!46319 () Bool)

(assert (=> b!90906 (=> (not res!46319) (not e!59294))))

(declare-fun lt!44108 () ListLongMap!1513)

(assert (=> b!90906 (= res!46319 (= lt!44108 lt!44095))))

(declare-fun map!1220 (LongMapFixedSize!798) ListLongMap!1513)

(assert (=> b!90906 (= lt!44095 (map!1220 newMap!16))))

(declare-fun getCurrentListMap!454 (array!4120 array!4122 (_ BitVec 32) (_ BitVec 32) V!3083 V!3083 (_ BitVec 32) Int) ListLongMap!1513)

(assert (=> b!90906 (= lt!44108 (getCurrentListMap!454 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))))))

(assert (=> b!90907 (= e!59297 (and tp!9212 tp_is_empty!2577 (array_inv!1177 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (array_inv!1178 (_values!2383 (v!2714 (underlying!312 thiss!992)))) e!59293))))

(declare-fun b!90908 () Bool)

(assert (=> b!90908 (= e!59299 (valid!353 (_2!1151 lt!44097)))))

(declare-fun b!90909 () Bool)

(declare-fun Unit!2728 () Unit!2725)

(assert (=> b!90909 (= e!59301 Unit!2728)))

(declare-fun lt!44096 () Unit!2725)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!83 (array!4120 array!4122 (_ BitVec 32) (_ BitVec 32) V!3083 V!3083 (_ BitVec 64) (_ BitVec 32) Int) Unit!2725)

(assert (=> b!90909 (= lt!44096 (lemmaListMapContainsThenArrayContainsFrom!83 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4120 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!90909 (arrayContainsKey!0 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!44100 () Unit!2725)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4120 (_ BitVec 32) (_ BitVec 32)) Unit!2725)

(assert (=> b!90909 (= lt!44100 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4080 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1578 0))(
  ( (Nil!1575) (Cons!1574 (h!2166 (_ BitVec 64)) (t!5404 List!1578)) )
))
(declare-fun arrayNoDuplicates!0 (array!4120 (_ BitVec 32) List!1578) Bool)

(assert (=> b!90909 (arrayNoDuplicates!0 (_keys!4080 (v!2714 (underlying!312 thiss!992))) from!355 Nil!1575)))

(declare-fun lt!44106 () Unit!2725)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4120 (_ BitVec 32) (_ BitVec 64) List!1578) Unit!2725)

(assert (=> b!90909 (= lt!44106 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) (Cons!1574 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) Nil!1575)))))

(assert (=> b!90909 false))

(declare-fun b!90910 () Bool)

(assert (=> b!90910 (= e!59296 (and e!59292 mapRes!3550))))

(declare-fun condMapEmpty!3550 () Bool)

(declare-fun mapDefault!3549 () ValueCell!945)

(assert (=> b!90910 (= condMapEmpty!3550 (= (arr!1961 (_values!2383 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!945)) mapDefault!3549)))))

(declare-fun b!90911 () Bool)

(assert (=> b!90911 (= e!59290 e!59307)))

(declare-fun mapNonEmpty!3550 () Bool)

(declare-fun tp!9211 () Bool)

(assert (=> mapNonEmpty!3550 (= mapRes!3550 (and tp!9211 e!59304))))

(declare-fun mapKey!3550 () (_ BitVec 32))

(declare-fun mapRest!3549 () (Array (_ BitVec 32) ValueCell!945))

(declare-fun mapValue!3550 () ValueCell!945)

(assert (=> mapNonEmpty!3550 (= (arr!1961 (_values!2383 newMap!16)) (store mapRest!3549 mapKey!3550 mapValue!3550))))

(declare-fun b!90912 () Bool)

(assert (=> b!90912 (= e!59300 (not e!59299))))

(declare-fun res!46321 () Bool)

(assert (=> b!90912 (=> res!46321 e!59299)))

(assert (=> b!90912 (= res!46321 (not (= (getCurrentListMap!454 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) from!355 (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))) (map!1220 (_2!1151 lt!44097)))))))

(declare-fun lt!44101 () tuple2!2284)

(declare-fun lt!44091 () tuple2!2284)

(declare-fun lt!44099 () ListLongMap!1513)

(declare-fun lt!44098 () ListLongMap!1513)

(declare-fun +!127 (ListLongMap!1513 tuple2!2284) ListLongMap!1513)

(assert (=> b!90912 (= (+!127 lt!44099 lt!44091) (+!127 (+!127 lt!44098 lt!44091) lt!44101))))

(assert (=> b!90912 (= lt!44091 (tuple2!2285 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2288 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun lt!44103 () Unit!2725)

(declare-fun addCommutativeForDiffKeys!46 (ListLongMap!1513 (_ BitVec 64) V!3083 (_ BitVec 64) V!3083) Unit!2725)

(assert (=> b!90912 (= lt!44103 (addCommutativeForDiffKeys!46 lt!44098 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2288 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun lt!44092 () ListLongMap!1513)

(assert (=> b!90912 (= lt!44092 lt!44099)))

(assert (=> b!90912 (= lt!44099 (+!127 lt!44098 lt!44101))))

(declare-fun lt!44093 () ListLongMap!1513)

(declare-fun lt!44107 () tuple2!2284)

(assert (=> b!90912 (= lt!44092 (+!127 lt!44093 lt!44107))))

(declare-fun lt!44094 () ListLongMap!1513)

(assert (=> b!90912 (= lt!44098 (+!127 lt!44094 lt!44107))))

(assert (=> b!90912 (= lt!44107 (tuple2!2285 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2288 (v!2714 (underlying!312 thiss!992)))))))

(assert (=> b!90912 (= lt!44093 (+!127 lt!44094 lt!44101))))

(assert (=> b!90912 (= lt!44101 (tuple2!2285 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102))))

(declare-fun lt!44104 () Unit!2725)

(assert (=> b!90912 (= lt!44104 (addCommutativeForDiffKeys!46 lt!44094 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2288 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!91 (array!4120 array!4122 (_ BitVec 32) (_ BitVec 32) V!3083 V!3083 (_ BitVec 32) Int) ListLongMap!1513)

(assert (=> b!90912 (= lt!44094 (getCurrentListMapNoExtraKeys!91 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))))))

(assert (= (and start!11126 res!46318) b!90900))

(assert (= (and b!90900 res!46315) b!90893))

(assert (= (and b!90893 res!46323) b!90894))

(assert (= (and b!90894 res!46320) b!90906))

(assert (= (and b!90906 res!46319) b!90905))

(assert (= (and b!90905 res!46316) b!90896))

(assert (= (and b!90896 c!15073) b!90909))

(assert (= (and b!90896 (not c!15073)) b!90892))

(assert (= (and b!90896 res!46317) b!90912))

(assert (= (and b!90912 (not res!46321)) b!90895))

(assert (= (and b!90895 (not res!46322)) b!90908))

(assert (= (and b!90897 condMapEmpty!3549) mapIsEmpty!3549))

(assert (= (and b!90897 (not condMapEmpty!3549)) mapNonEmpty!3549))

(get-info :version)

(assert (= (and mapNonEmpty!3549 ((_ is ValueCellFull!945) mapValue!3549)) b!90901))

(assert (= (and b!90897 ((_ is ValueCellFull!945) mapDefault!3550)) b!90902))

(assert (= b!90907 b!90897))

(assert (= b!90903 b!90907))

(assert (= b!90911 b!90903))

(assert (= start!11126 b!90911))

(assert (= (and b!90910 condMapEmpty!3550) mapIsEmpty!3550))

(assert (= (and b!90910 (not condMapEmpty!3550)) mapNonEmpty!3550))

(assert (= (and mapNonEmpty!3550 ((_ is ValueCellFull!945) mapValue!3550)) b!90904))

(assert (= (and b!90910 ((_ is ValueCellFull!945) mapDefault!3549)) b!90899))

(assert (= b!90898 b!90910))

(assert (= start!11126 b!90898))

(declare-fun b_lambda!4011 () Bool)

(assert (=> (not b_lambda!4011) (not b!90905)))

(declare-fun t!5400 () Bool)

(declare-fun tb!1793 () Bool)

(assert (=> (and b!90907 (= (defaultEntry!2400 (v!2714 (underlying!312 thiss!992))) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))) t!5400) tb!1793))

(declare-fun result!3067 () Bool)

(assert (=> tb!1793 (= result!3067 tp_is_empty!2577)))

(assert (=> b!90905 t!5400))

(declare-fun b_and!5497 () Bool)

(assert (= b_and!5493 (and (=> t!5400 result!3067) b_and!5497)))

(declare-fun tb!1795 () Bool)

(declare-fun t!5402 () Bool)

(assert (=> (and b!90898 (= (defaultEntry!2400 newMap!16) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))) t!5402) tb!1795))

(declare-fun result!3071 () Bool)

(assert (= result!3071 result!3067))

(assert (=> b!90905 t!5402))

(declare-fun b_and!5499 () Bool)

(assert (= b_and!5495 (and (=> t!5402 result!3071) b_and!5499)))

(declare-fun m!97371 () Bool)

(assert (=> b!90907 m!97371))

(declare-fun m!97373 () Bool)

(assert (=> b!90907 m!97373))

(declare-fun m!97375 () Bool)

(assert (=> b!90893 m!97375))

(declare-fun m!97377 () Bool)

(assert (=> b!90906 m!97377))

(declare-fun m!97379 () Bool)

(assert (=> b!90906 m!97379))

(declare-fun m!97381 () Bool)

(assert (=> mapNonEmpty!3549 m!97381))

(declare-fun m!97383 () Bool)

(assert (=> mapNonEmpty!3550 m!97383))

(declare-fun m!97385 () Bool)

(assert (=> b!90908 m!97385))

(declare-fun m!97387 () Bool)

(assert (=> b!90912 m!97387))

(declare-fun m!97389 () Bool)

(assert (=> b!90912 m!97389))

(declare-fun m!97391 () Bool)

(assert (=> b!90912 m!97391))

(declare-fun m!97393 () Bool)

(assert (=> b!90912 m!97393))

(declare-fun m!97395 () Bool)

(assert (=> b!90912 m!97395))

(declare-fun m!97397 () Bool)

(assert (=> b!90912 m!97397))

(declare-fun m!97399 () Bool)

(assert (=> b!90912 m!97399))

(declare-fun m!97401 () Bool)

(assert (=> b!90912 m!97401))

(declare-fun m!97403 () Bool)

(assert (=> b!90912 m!97403))

(declare-fun m!97405 () Bool)

(assert (=> b!90912 m!97405))

(assert (=> b!90912 m!97387))

(declare-fun m!97407 () Bool)

(assert (=> b!90912 m!97407))

(assert (=> b!90912 m!97387))

(assert (=> b!90912 m!97401))

(declare-fun m!97409 () Bool)

(assert (=> b!90912 m!97409))

(declare-fun m!97411 () Bool)

(assert (=> b!90912 m!97411))

(declare-fun m!97413 () Bool)

(assert (=> start!11126 m!97413))

(assert (=> b!90905 m!97387))

(declare-fun m!97415 () Bool)

(assert (=> b!90905 m!97415))

(declare-fun m!97417 () Bool)

(assert (=> b!90905 m!97417))

(assert (=> b!90905 m!97415))

(assert (=> b!90905 m!97417))

(declare-fun m!97419 () Bool)

(assert (=> b!90905 m!97419))

(declare-fun m!97421 () Bool)

(assert (=> b!90898 m!97421))

(declare-fun m!97423 () Bool)

(assert (=> b!90898 m!97423))

(declare-fun m!97425 () Bool)

(assert (=> b!90909 m!97425))

(declare-fun m!97427 () Bool)

(assert (=> b!90909 m!97427))

(assert (=> b!90909 m!97387))

(declare-fun m!97429 () Bool)

(assert (=> b!90909 m!97429))

(assert (=> b!90909 m!97387))

(assert (=> b!90909 m!97387))

(declare-fun m!97431 () Bool)

(assert (=> b!90909 m!97431))

(assert (=> b!90909 m!97387))

(declare-fun m!97433 () Bool)

(assert (=> b!90909 m!97433))

(assert (=> b!90896 m!97387))

(assert (=> b!90896 m!97387))

(declare-fun m!97435 () Bool)

(assert (=> b!90896 m!97435))

(assert (=> b!90896 m!97387))

(declare-fun m!97437 () Bool)

(assert (=> b!90896 m!97437))

(check-sat tp_is_empty!2577 (not b!90912) (not b!90893) (not mapNonEmpty!3550) (not b!90896) (not b_next!2321) (not start!11126) (not b!90907) (not b_lambda!4011) (not b!90908) (not b!90909) (not b_next!2323) (not b!90898) (not b!90905) b_and!5497 b_and!5499 (not b!90906) (not mapNonEmpty!3549))
(check-sat b_and!5497 b_and!5499 (not b_next!2321) (not b_next!2323))
(get-model)

(declare-fun b_lambda!4015 () Bool)

(assert (= b_lambda!4011 (or (and b!90907 b_free!2321) (and b!90898 b_free!2323 (= (defaultEntry!2400 newMap!16) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992))))) b_lambda!4015)))

(check-sat (not b!90912) (not b!90893) (not mapNonEmpty!3550) (not b!90896) (not b_next!2321) (not start!11126) (not b!90907) (not b!90908) (not b!90909) tp_is_empty!2577 (not b_lambda!4015) (not b_next!2323) (not b!90898) (not b!90905) b_and!5497 b_and!5499 (not b!90906) (not mapNonEmpty!3549))
(check-sat b_and!5497 b_and!5499 (not b_next!2321) (not b_next!2323))
(get-model)

(declare-fun d!23989 () Bool)

(assert (=> d!23989 (not (arrayContainsKey!0 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!44165 () Unit!2725)

(declare-fun choose!68 (array!4120 (_ BitVec 32) (_ BitVec 64) List!1578) Unit!2725)

(assert (=> d!23989 (= lt!44165 (choose!68 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) (Cons!1574 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) Nil!1575)))))

(assert (=> d!23989 (bvslt (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!23989 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) (Cons!1574 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) Nil!1575)) lt!44165)))

(declare-fun bs!3775 () Bool)

(assert (= bs!3775 d!23989))

(assert (=> bs!3775 m!97387))

(assert (=> bs!3775 m!97431))

(assert (=> bs!3775 m!97387))

(declare-fun m!97507 () Bool)

(assert (=> bs!3775 m!97507))

(assert (=> b!90909 d!23989))

(declare-fun d!23991 () Bool)

(assert (=> d!23991 (arrayNoDuplicates!0 (_keys!4080 (v!2714 (underlying!312 thiss!992))) from!355 Nil!1575)))

(declare-fun lt!44168 () Unit!2725)

(declare-fun choose!39 (array!4120 (_ BitVec 32) (_ BitVec 32)) Unit!2725)

(assert (=> d!23991 (= lt!44168 (choose!39 (_keys!4080 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!23991 (bvslt (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!23991 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4080 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000000 from!355) lt!44168)))

(declare-fun bs!3776 () Bool)

(assert (= bs!3776 d!23991))

(assert (=> bs!3776 m!97427))

(declare-fun m!97509 () Bool)

(assert (=> bs!3776 m!97509))

(assert (=> b!90909 d!23991))

(declare-fun d!23993 () Bool)

(declare-fun res!46355 () Bool)

(declare-fun e!59366 () Bool)

(assert (=> d!23993 (=> res!46355 e!59366)))

(assert (=> d!23993 (= res!46355 (= (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)))))

(assert (=> d!23993 (= (arrayContainsKey!0 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!59366)))

(declare-fun b!90984 () Bool)

(declare-fun e!59367 () Bool)

(assert (=> b!90984 (= e!59366 e!59367)))

(declare-fun res!46356 () Bool)

(assert (=> b!90984 (=> (not res!46356) (not e!59367))))

(assert (=> b!90984 (= res!46356 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))

(declare-fun b!90985 () Bool)

(assert (=> b!90985 (= e!59367 (arrayContainsKey!0 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!23993 (not res!46355)) b!90984))

(assert (= (and b!90984 res!46356) b!90985))

(declare-fun m!97511 () Bool)

(assert (=> d!23993 m!97511))

(assert (=> b!90985 m!97387))

(declare-fun m!97513 () Bool)

(assert (=> b!90985 m!97513))

(assert (=> b!90909 d!23993))

(declare-fun d!23995 () Bool)

(declare-fun e!59370 () Bool)

(assert (=> d!23995 e!59370))

(declare-fun c!15079 () Bool)

(assert (=> d!23995 (= c!15079 (and (not (= (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!44171 () Unit!2725)

(declare-fun choose!549 (array!4120 array!4122 (_ BitVec 32) (_ BitVec 32) V!3083 V!3083 (_ BitVec 64) (_ BitVec 32) Int) Unit!2725)

(assert (=> d!23995 (= lt!44171 (choose!549 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!23995 (validMask!0 (mask!6458 (v!2714 (underlying!312 thiss!992))))))

(assert (=> d!23995 (= (lemmaListMapContainsThenArrayContainsFrom!83 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))) lt!44171)))

(declare-fun b!90990 () Bool)

(assert (=> b!90990 (= e!59370 (arrayContainsKey!0 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!90991 () Bool)

(assert (=> b!90991 (= e!59370 (ite (= (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!23995 c!15079) b!90990))

(assert (= (and d!23995 (not c!15079)) b!90991))

(assert (=> d!23995 m!97387))

(declare-fun m!97515 () Bool)

(assert (=> d!23995 m!97515))

(declare-fun m!97517 () Bool)

(assert (=> d!23995 m!97517))

(assert (=> b!90990 m!97387))

(assert (=> b!90990 m!97431))

(assert (=> b!90909 d!23995))

(declare-fun b!91002 () Bool)

(declare-fun e!59382 () Bool)

(declare-fun e!59380 () Bool)

(assert (=> b!91002 (= e!59382 e!59380)))

(declare-fun c!15082 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!91002 (= c!15082 (validKeyInArray!0 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)))))

(declare-fun b!91003 () Bool)

(declare-fun e!59381 () Bool)

(assert (=> b!91003 (= e!59381 e!59382)))

(declare-fun res!46364 () Bool)

(assert (=> b!91003 (=> (not res!46364) (not e!59382))))

(declare-fun e!59379 () Bool)

(assert (=> b!91003 (= res!46364 (not e!59379))))

(declare-fun res!46363 () Bool)

(assert (=> b!91003 (=> (not res!46363) (not e!59379))))

(assert (=> b!91003 (= res!46363 (validKeyInArray!0 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)))))

(declare-fun d!23997 () Bool)

(declare-fun res!46365 () Bool)

(assert (=> d!23997 (=> res!46365 e!59381)))

(assert (=> d!23997 (= res!46365 (bvsge from!355 (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))

(assert (=> d!23997 (= (arrayNoDuplicates!0 (_keys!4080 (v!2714 (underlying!312 thiss!992))) from!355 Nil!1575) e!59381)))

(declare-fun b!91004 () Bool)

(declare-fun contains!782 (List!1578 (_ BitVec 64)) Bool)

(assert (=> b!91004 (= e!59379 (contains!782 Nil!1575 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)))))

(declare-fun b!91005 () Bool)

(declare-fun call!8816 () Bool)

(assert (=> b!91005 (= e!59380 call!8816)))

(declare-fun b!91006 () Bool)

(assert (=> b!91006 (= e!59380 call!8816)))

(declare-fun bm!8813 () Bool)

(assert (=> bm!8813 (= call!8816 (arrayNoDuplicates!0 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!15082 (Cons!1574 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) Nil!1575) Nil!1575)))))

(assert (= (and d!23997 (not res!46365)) b!91003))

(assert (= (and b!91003 res!46363) b!91004))

(assert (= (and b!91003 res!46364) b!91002))

(assert (= (and b!91002 c!15082) b!91005))

(assert (= (and b!91002 (not c!15082)) b!91006))

(assert (= (or b!91005 b!91006) bm!8813))

(assert (=> b!91002 m!97387))

(assert (=> b!91002 m!97387))

(declare-fun m!97519 () Bool)

(assert (=> b!91002 m!97519))

(assert (=> b!91003 m!97387))

(assert (=> b!91003 m!97387))

(assert (=> b!91003 m!97519))

(assert (=> b!91004 m!97387))

(assert (=> b!91004 m!97387))

(declare-fun m!97521 () Bool)

(assert (=> b!91004 m!97521))

(assert (=> bm!8813 m!97387))

(declare-fun m!97523 () Bool)

(assert (=> bm!8813 m!97523))

(assert (=> b!90909 d!23997))

(declare-fun d!23999 () Bool)

(declare-fun res!46372 () Bool)

(declare-fun e!59385 () Bool)

(assert (=> d!23999 (=> (not res!46372) (not e!59385))))

(declare-fun simpleValid!61 (LongMapFixedSize!798) Bool)

(assert (=> d!23999 (= res!46372 (simpleValid!61 (_2!1151 lt!44097)))))

(assert (=> d!23999 (= (valid!353 (_2!1151 lt!44097)) e!59385)))

(declare-fun b!91013 () Bool)

(declare-fun res!46373 () Bool)

(assert (=> b!91013 (=> (not res!46373) (not e!59385))))

(declare-fun arrayCountValidKeys!0 (array!4120 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!91013 (= res!46373 (= (arrayCountValidKeys!0 (_keys!4080 (_2!1151 lt!44097)) #b00000000000000000000000000000000 (size!2207 (_keys!4080 (_2!1151 lt!44097)))) (_size!448 (_2!1151 lt!44097))))))

(declare-fun b!91014 () Bool)

(declare-fun res!46374 () Bool)

(assert (=> b!91014 (=> (not res!46374) (not e!59385))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4120 (_ BitVec 32)) Bool)

(assert (=> b!91014 (= res!46374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4080 (_2!1151 lt!44097)) (mask!6458 (_2!1151 lt!44097))))))

(declare-fun b!91015 () Bool)

(assert (=> b!91015 (= e!59385 (arrayNoDuplicates!0 (_keys!4080 (_2!1151 lt!44097)) #b00000000000000000000000000000000 Nil!1575))))

(assert (= (and d!23999 res!46372) b!91013))

(assert (= (and b!91013 res!46373) b!91014))

(assert (= (and b!91014 res!46374) b!91015))

(declare-fun m!97525 () Bool)

(assert (=> d!23999 m!97525))

(declare-fun m!97527 () Bool)

(assert (=> b!91013 m!97527))

(declare-fun m!97529 () Bool)

(assert (=> b!91014 m!97529))

(declare-fun m!97531 () Bool)

(assert (=> b!91015 m!97531))

(assert (=> b!90908 d!23999))

(declare-fun d!24001 () Bool)

(declare-fun e!59388 () Bool)

(assert (=> d!24001 e!59388))

(declare-fun res!46379 () Bool)

(assert (=> d!24001 (=> (not res!46379) (not e!59388))))

(declare-fun lt!44183 () ListLongMap!1513)

(assert (=> d!24001 (= res!46379 (contains!780 lt!44183 (_1!1152 lt!44101)))))

(declare-fun lt!44180 () List!1577)

(assert (=> d!24001 (= lt!44183 (ListLongMap!1514 lt!44180))))

(declare-fun lt!44181 () Unit!2725)

(declare-fun lt!44182 () Unit!2725)

(assert (=> d!24001 (= lt!44181 lt!44182)))

(declare-datatypes ((Option!149 0))(
  ( (Some!148 (v!2718 V!3083)) (None!147) )
))
(declare-fun getValueByKey!143 (List!1577 (_ BitVec 64)) Option!149)

(assert (=> d!24001 (= (getValueByKey!143 lt!44180 (_1!1152 lt!44101)) (Some!148 (_2!1152 lt!44101)))))

(declare-fun lemmaContainsTupThenGetReturnValue!62 (List!1577 (_ BitVec 64) V!3083) Unit!2725)

(assert (=> d!24001 (= lt!44182 (lemmaContainsTupThenGetReturnValue!62 lt!44180 (_1!1152 lt!44101) (_2!1152 lt!44101)))))

(declare-fun insertStrictlySorted!64 (List!1577 (_ BitVec 64) V!3083) List!1577)

(assert (=> d!24001 (= lt!44180 (insertStrictlySorted!64 (toList!772 lt!44098) (_1!1152 lt!44101) (_2!1152 lt!44101)))))

(assert (=> d!24001 (= (+!127 lt!44098 lt!44101) lt!44183)))

(declare-fun b!91020 () Bool)

(declare-fun res!46380 () Bool)

(assert (=> b!91020 (=> (not res!46380) (not e!59388))))

(assert (=> b!91020 (= res!46380 (= (getValueByKey!143 (toList!772 lt!44183) (_1!1152 lt!44101)) (Some!148 (_2!1152 lt!44101))))))

(declare-fun b!91021 () Bool)

(declare-fun contains!783 (List!1577 tuple2!2284) Bool)

(assert (=> b!91021 (= e!59388 (contains!783 (toList!772 lt!44183) lt!44101))))

(assert (= (and d!24001 res!46379) b!91020))

(assert (= (and b!91020 res!46380) b!91021))

(declare-fun m!97533 () Bool)

(assert (=> d!24001 m!97533))

(declare-fun m!97535 () Bool)

(assert (=> d!24001 m!97535))

(declare-fun m!97537 () Bool)

(assert (=> d!24001 m!97537))

(declare-fun m!97539 () Bool)

(assert (=> d!24001 m!97539))

(declare-fun m!97541 () Bool)

(assert (=> b!91020 m!97541))

(declare-fun m!97543 () Bool)

(assert (=> b!91021 m!97543))

(assert (=> b!90912 d!24001))

(declare-fun d!24003 () Bool)

(declare-fun e!59389 () Bool)

(assert (=> d!24003 e!59389))

(declare-fun res!46381 () Bool)

(assert (=> d!24003 (=> (not res!46381) (not e!59389))))

(declare-fun lt!44187 () ListLongMap!1513)

(assert (=> d!24003 (= res!46381 (contains!780 lt!44187 (_1!1152 lt!44101)))))

(declare-fun lt!44184 () List!1577)

(assert (=> d!24003 (= lt!44187 (ListLongMap!1514 lt!44184))))

(declare-fun lt!44185 () Unit!2725)

(declare-fun lt!44186 () Unit!2725)

(assert (=> d!24003 (= lt!44185 lt!44186)))

(assert (=> d!24003 (= (getValueByKey!143 lt!44184 (_1!1152 lt!44101)) (Some!148 (_2!1152 lt!44101)))))

(assert (=> d!24003 (= lt!44186 (lemmaContainsTupThenGetReturnValue!62 lt!44184 (_1!1152 lt!44101) (_2!1152 lt!44101)))))

(assert (=> d!24003 (= lt!44184 (insertStrictlySorted!64 (toList!772 (+!127 lt!44098 lt!44091)) (_1!1152 lt!44101) (_2!1152 lt!44101)))))

(assert (=> d!24003 (= (+!127 (+!127 lt!44098 lt!44091) lt!44101) lt!44187)))

(declare-fun b!91022 () Bool)

(declare-fun res!46382 () Bool)

(assert (=> b!91022 (=> (not res!46382) (not e!59389))))

(assert (=> b!91022 (= res!46382 (= (getValueByKey!143 (toList!772 lt!44187) (_1!1152 lt!44101)) (Some!148 (_2!1152 lt!44101))))))

(declare-fun b!91023 () Bool)

(assert (=> b!91023 (= e!59389 (contains!783 (toList!772 lt!44187) lt!44101))))

(assert (= (and d!24003 res!46381) b!91022))

(assert (= (and b!91022 res!46382) b!91023))

(declare-fun m!97545 () Bool)

(assert (=> d!24003 m!97545))

(declare-fun m!97547 () Bool)

(assert (=> d!24003 m!97547))

(declare-fun m!97549 () Bool)

(assert (=> d!24003 m!97549))

(declare-fun m!97551 () Bool)

(assert (=> d!24003 m!97551))

(declare-fun m!97553 () Bool)

(assert (=> b!91022 m!97553))

(declare-fun m!97555 () Bool)

(assert (=> b!91023 m!97555))

(assert (=> b!90912 d!24003))

(declare-fun b!91048 () Bool)

(declare-fun lt!44206 () Unit!2725)

(declare-fun lt!44208 () Unit!2725)

(assert (=> b!91048 (= lt!44206 lt!44208)))

(declare-fun lt!44203 () (_ BitVec 64))

(declare-fun lt!44204 () (_ BitVec 64))

(declare-fun lt!44202 () V!3083)

(declare-fun lt!44205 () ListLongMap!1513)

(assert (=> b!91048 (not (contains!780 (+!127 lt!44205 (tuple2!2285 lt!44203 lt!44202)) lt!44204))))

(declare-fun addStillNotContains!37 (ListLongMap!1513 (_ BitVec 64) V!3083 (_ BitVec 64)) Unit!2725)

(assert (=> b!91048 (= lt!44208 (addStillNotContains!37 lt!44205 lt!44203 lt!44202 lt!44204))))

(assert (=> b!91048 (= lt!44204 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!91048 (= lt!44202 (get!1248 (select (arr!1961 (_values!2383 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!363 (defaultEntry!2400 (v!2714 (underlying!312 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!91048 (= lt!44203 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun call!8819 () ListLongMap!1513)

(assert (=> b!91048 (= lt!44205 call!8819)))

(declare-fun e!59407 () ListLongMap!1513)

(assert (=> b!91048 (= e!59407 (+!127 call!8819 (tuple2!2285 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1248 (select (arr!1961 (_values!2383 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!363 (defaultEntry!2400 (v!2714 (underlying!312 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!91049 () Bool)

(declare-fun res!46392 () Bool)

(declare-fun e!59406 () Bool)

(assert (=> b!91049 (=> (not res!46392) (not e!59406))))

(declare-fun lt!44207 () ListLongMap!1513)

(assert (=> b!91049 (= res!46392 (not (contains!780 lt!44207 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!91050 () Bool)

(assert (=> b!91050 (= e!59407 call!8819)))

(declare-fun e!59408 () Bool)

(declare-fun b!91051 () Bool)

(assert (=> b!91051 (= e!59408 (= lt!44207 (getCurrentListMapNoExtraKeys!91 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992))))))))

(declare-fun d!24005 () Bool)

(assert (=> d!24005 e!59406))

(declare-fun res!46391 () Bool)

(assert (=> d!24005 (=> (not res!46391) (not e!59406))))

(assert (=> d!24005 (= res!46391 (not (contains!780 lt!44207 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!59405 () ListLongMap!1513)

(assert (=> d!24005 (= lt!44207 e!59405)))

(declare-fun c!15091 () Bool)

(assert (=> d!24005 (= c!15091 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))

(assert (=> d!24005 (validMask!0 (mask!6458 (v!2714 (underlying!312 thiss!992))))))

(assert (=> d!24005 (= (getCurrentListMapNoExtraKeys!91 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))) lt!44207)))

(declare-fun bm!8816 () Bool)

(assert (=> bm!8816 (= call!8819 (getCurrentListMapNoExtraKeys!91 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun b!91052 () Bool)

(declare-fun e!59410 () Bool)

(assert (=> b!91052 (= e!59410 (validKeyInArray!0 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!91052 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!91053 () Bool)

(declare-fun isEmpty!350 (ListLongMap!1513) Bool)

(assert (=> b!91053 (= e!59408 (isEmpty!350 lt!44207))))

(declare-fun b!91054 () Bool)

(assert (=> b!91054 (= e!59405 (ListLongMap!1514 Nil!1574))))

(declare-fun b!91055 () Bool)

(assert (=> b!91055 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))

(assert (=> b!91055 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2208 (_values!2383 (v!2714 (underlying!312 thiss!992))))))))

(declare-fun e!59404 () Bool)

(declare-fun apply!86 (ListLongMap!1513 (_ BitVec 64)) V!3083)

(assert (=> b!91055 (= e!59404 (= (apply!86 lt!44207 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1248 (select (arr!1961 (_values!2383 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!363 (defaultEntry!2400 (v!2714 (underlying!312 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!91056 () Bool)

(declare-fun e!59409 () Bool)

(assert (=> b!91056 (= e!59409 e!59404)))

(assert (=> b!91056 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))

(declare-fun res!46394 () Bool)

(assert (=> b!91056 (= res!46394 (contains!780 lt!44207 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!91056 (=> (not res!46394) (not e!59404))))

(declare-fun b!91057 () Bool)

(assert (=> b!91057 (= e!59405 e!59407)))

(declare-fun c!15092 () Bool)

(assert (=> b!91057 (= c!15092 (validKeyInArray!0 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!91058 () Bool)

(assert (=> b!91058 (= e!59406 e!59409)))

(declare-fun c!15093 () Bool)

(assert (=> b!91058 (= c!15093 e!59410)))

(declare-fun res!46393 () Bool)

(assert (=> b!91058 (=> (not res!46393) (not e!59410))))

(assert (=> b!91058 (= res!46393 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))

(declare-fun b!91059 () Bool)

(assert (=> b!91059 (= e!59409 e!59408)))

(declare-fun c!15094 () Bool)

(assert (=> b!91059 (= c!15094 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))

(assert (= (and d!24005 c!15091) b!91054))

(assert (= (and d!24005 (not c!15091)) b!91057))

(assert (= (and b!91057 c!15092) b!91048))

(assert (= (and b!91057 (not c!15092)) b!91050))

(assert (= (or b!91048 b!91050) bm!8816))

(assert (= (and d!24005 res!46391) b!91049))

(assert (= (and b!91049 res!46392) b!91058))

(assert (= (and b!91058 res!46393) b!91052))

(assert (= (and b!91058 c!15093) b!91056))

(assert (= (and b!91058 (not c!15093)) b!91059))

(assert (= (and b!91056 res!46394) b!91055))

(assert (= (and b!91059 c!15094) b!91051))

(assert (= (and b!91059 (not c!15094)) b!91053))

(declare-fun b_lambda!4017 () Bool)

(assert (=> (not b_lambda!4017) (not b!91048)))

(assert (=> b!91048 t!5400))

(declare-fun b_and!5509 () Bool)

(assert (= b_and!5497 (and (=> t!5400 result!3067) b_and!5509)))

(assert (=> b!91048 t!5402))

(declare-fun b_and!5511 () Bool)

(assert (= b_and!5499 (and (=> t!5402 result!3071) b_and!5511)))

(declare-fun b_lambda!4019 () Bool)

(assert (=> (not b_lambda!4019) (not b!91055)))

(assert (=> b!91055 t!5400))

(declare-fun b_and!5513 () Bool)

(assert (= b_and!5509 (and (=> t!5400 result!3067) b_and!5513)))

(assert (=> b!91055 t!5402))

(declare-fun b_and!5515 () Bool)

(assert (= b_and!5511 (and (=> t!5402 result!3071) b_and!5515)))

(declare-fun m!97557 () Bool)

(assert (=> b!91055 m!97557))

(assert (=> b!91055 m!97511))

(assert (=> b!91055 m!97511))

(declare-fun m!97559 () Bool)

(assert (=> b!91055 m!97559))

(assert (=> b!91055 m!97557))

(assert (=> b!91055 m!97417))

(declare-fun m!97561 () Bool)

(assert (=> b!91055 m!97561))

(assert (=> b!91055 m!97417))

(assert (=> b!91052 m!97511))

(assert (=> b!91052 m!97511))

(declare-fun m!97563 () Bool)

(assert (=> b!91052 m!97563))

(declare-fun m!97565 () Bool)

(assert (=> d!24005 m!97565))

(assert (=> d!24005 m!97517))

(assert (=> b!91057 m!97511))

(assert (=> b!91057 m!97511))

(assert (=> b!91057 m!97563))

(declare-fun m!97567 () Bool)

(assert (=> bm!8816 m!97567))

(declare-fun m!97569 () Bool)

(assert (=> b!91053 m!97569))

(assert (=> b!91051 m!97567))

(assert (=> b!91056 m!97511))

(assert (=> b!91056 m!97511))

(declare-fun m!97571 () Bool)

(assert (=> b!91056 m!97571))

(assert (=> b!91048 m!97511))

(declare-fun m!97573 () Bool)

(assert (=> b!91048 m!97573))

(declare-fun m!97575 () Bool)

(assert (=> b!91048 m!97575))

(assert (=> b!91048 m!97557))

(declare-fun m!97577 () Bool)

(assert (=> b!91048 m!97577))

(declare-fun m!97579 () Bool)

(assert (=> b!91048 m!97579))

(assert (=> b!91048 m!97557))

(assert (=> b!91048 m!97417))

(assert (=> b!91048 m!97561))

(assert (=> b!91048 m!97577))

(assert (=> b!91048 m!97417))

(declare-fun m!97581 () Bool)

(assert (=> b!91049 m!97581))

(assert (=> b!90912 d!24005))

(declare-fun d!24007 () Bool)

(declare-fun e!59411 () Bool)

(assert (=> d!24007 e!59411))

(declare-fun res!46395 () Bool)

(assert (=> d!24007 (=> (not res!46395) (not e!59411))))

(declare-fun lt!44212 () ListLongMap!1513)

(assert (=> d!24007 (= res!46395 (contains!780 lt!44212 (_1!1152 lt!44101)))))

(declare-fun lt!44209 () List!1577)

(assert (=> d!24007 (= lt!44212 (ListLongMap!1514 lt!44209))))

(declare-fun lt!44210 () Unit!2725)

(declare-fun lt!44211 () Unit!2725)

(assert (=> d!24007 (= lt!44210 lt!44211)))

(assert (=> d!24007 (= (getValueByKey!143 lt!44209 (_1!1152 lt!44101)) (Some!148 (_2!1152 lt!44101)))))

(assert (=> d!24007 (= lt!44211 (lemmaContainsTupThenGetReturnValue!62 lt!44209 (_1!1152 lt!44101) (_2!1152 lt!44101)))))

(assert (=> d!24007 (= lt!44209 (insertStrictlySorted!64 (toList!772 lt!44094) (_1!1152 lt!44101) (_2!1152 lt!44101)))))

(assert (=> d!24007 (= (+!127 lt!44094 lt!44101) lt!44212)))

(declare-fun b!91060 () Bool)

(declare-fun res!46396 () Bool)

(assert (=> b!91060 (=> (not res!46396) (not e!59411))))

(assert (=> b!91060 (= res!46396 (= (getValueByKey!143 (toList!772 lt!44212) (_1!1152 lt!44101)) (Some!148 (_2!1152 lt!44101))))))

(declare-fun b!91061 () Bool)

(assert (=> b!91061 (= e!59411 (contains!783 (toList!772 lt!44212) lt!44101))))

(assert (= (and d!24007 res!46395) b!91060))

(assert (= (and b!91060 res!46396) b!91061))

(declare-fun m!97583 () Bool)

(assert (=> d!24007 m!97583))

(declare-fun m!97585 () Bool)

(assert (=> d!24007 m!97585))

(declare-fun m!97587 () Bool)

(assert (=> d!24007 m!97587))

(declare-fun m!97589 () Bool)

(assert (=> d!24007 m!97589))

(declare-fun m!97591 () Bool)

(assert (=> b!91060 m!97591))

(declare-fun m!97593 () Bool)

(assert (=> b!91061 m!97593))

(assert (=> b!90912 d!24007))

(declare-fun d!24009 () Bool)

(assert (=> d!24009 (= (+!127 (+!127 lt!44094 (tuple2!2285 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102)) (tuple2!2285 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2288 (v!2714 (underlying!312 thiss!992))))) (+!127 (+!127 lt!44094 (tuple2!2285 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2288 (v!2714 (underlying!312 thiss!992))))) (tuple2!2285 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102)))))

(declare-fun lt!44215 () Unit!2725)

(declare-fun choose!550 (ListLongMap!1513 (_ BitVec 64) V!3083 (_ BitVec 64) V!3083) Unit!2725)

(assert (=> d!24009 (= lt!44215 (choose!550 lt!44094 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2288 (v!2714 (underlying!312 thiss!992)))))))

(assert (=> d!24009 (not (= (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!24009 (= (addCommutativeForDiffKeys!46 lt!44094 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2288 (v!2714 (underlying!312 thiss!992)))) lt!44215)))

(declare-fun bs!3777 () Bool)

(assert (= bs!3777 d!24009))

(declare-fun m!97595 () Bool)

(assert (=> bs!3777 m!97595))

(declare-fun m!97597 () Bool)

(assert (=> bs!3777 m!97597))

(declare-fun m!97599 () Bool)

(assert (=> bs!3777 m!97599))

(assert (=> bs!3777 m!97387))

(declare-fun m!97601 () Bool)

(assert (=> bs!3777 m!97601))

(assert (=> bs!3777 m!97599))

(declare-fun m!97603 () Bool)

(assert (=> bs!3777 m!97603))

(assert (=> bs!3777 m!97595))

(assert (=> b!90912 d!24009))

(declare-fun b!91104 () Bool)

(declare-fun e!59444 () ListLongMap!1513)

(declare-fun call!8837 () ListLongMap!1513)

(assert (=> b!91104 (= e!59444 (+!127 call!8837 (tuple2!2285 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2288 (v!2714 (underlying!312 thiss!992))))))))

(declare-fun bm!8831 () Bool)

(declare-fun call!8839 () ListLongMap!1513)

(declare-fun call!8840 () ListLongMap!1513)

(assert (=> bm!8831 (= call!8839 call!8840)))

(declare-fun b!91105 () Bool)

(declare-fun e!59440 () Bool)

(declare-fun e!59439 () Bool)

(assert (=> b!91105 (= e!59440 e!59439)))

(declare-fun c!15112 () Bool)

(assert (=> b!91105 (= c!15112 (not (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!91106 () Bool)

(declare-fun c!15111 () Bool)

(assert (=> b!91106 (= c!15111 (and (not (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!59449 () ListLongMap!1513)

(declare-fun e!59450 () ListLongMap!1513)

(assert (=> b!91106 (= e!59449 e!59450)))

(declare-fun b!91107 () Bool)

(declare-fun e!59445 () Bool)

(declare-fun lt!44265 () ListLongMap!1513)

(assert (=> b!91107 (= e!59445 (= (apply!86 lt!44265 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2288 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun b!91109 () Bool)

(declare-fun e!59448 () Unit!2725)

(declare-fun lt!44271 () Unit!2725)

(assert (=> b!91109 (= e!59448 lt!44271)))

(declare-fun lt!44262 () ListLongMap!1513)

(assert (=> b!91109 (= lt!44262 (getCurrentListMapNoExtraKeys!91 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) from!355 (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun lt!44277 () (_ BitVec 64))

(assert (=> b!91109 (= lt!44277 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44266 () (_ BitVec 64))

(assert (=> b!91109 (= lt!44266 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355))))

(declare-fun lt!44274 () Unit!2725)

(declare-fun addStillContains!62 (ListLongMap!1513 (_ BitVec 64) V!3083 (_ BitVec 64)) Unit!2725)

(assert (=> b!91109 (= lt!44274 (addStillContains!62 lt!44262 lt!44277 (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) lt!44266))))

(assert (=> b!91109 (contains!780 (+!127 lt!44262 (tuple2!2285 lt!44277 (zeroValue!2288 (v!2714 (underlying!312 thiss!992))))) lt!44266)))

(declare-fun lt!44273 () Unit!2725)

(assert (=> b!91109 (= lt!44273 lt!44274)))

(declare-fun lt!44264 () ListLongMap!1513)

(assert (=> b!91109 (= lt!44264 (getCurrentListMapNoExtraKeys!91 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) from!355 (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun lt!44275 () (_ BitVec 64))

(assert (=> b!91109 (= lt!44275 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44263 () (_ BitVec 64))

(assert (=> b!91109 (= lt!44263 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355))))

(declare-fun lt!44279 () Unit!2725)

(declare-fun addApplyDifferent!62 (ListLongMap!1513 (_ BitVec 64) V!3083 (_ BitVec 64)) Unit!2725)

(assert (=> b!91109 (= lt!44279 (addApplyDifferent!62 lt!44264 lt!44275 (minValue!2288 (v!2714 (underlying!312 thiss!992))) lt!44263))))

(assert (=> b!91109 (= (apply!86 (+!127 lt!44264 (tuple2!2285 lt!44275 (minValue!2288 (v!2714 (underlying!312 thiss!992))))) lt!44263) (apply!86 lt!44264 lt!44263))))

(declare-fun lt!44272 () Unit!2725)

(assert (=> b!91109 (= lt!44272 lt!44279)))

(declare-fun lt!44276 () ListLongMap!1513)

(assert (=> b!91109 (= lt!44276 (getCurrentListMapNoExtraKeys!91 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) from!355 (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun lt!44270 () (_ BitVec 64))

(assert (=> b!91109 (= lt!44270 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44260 () (_ BitVec 64))

(assert (=> b!91109 (= lt!44260 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355))))

(declare-fun lt!44261 () Unit!2725)

(assert (=> b!91109 (= lt!44261 (addApplyDifferent!62 lt!44276 lt!44270 (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) lt!44260))))

(assert (=> b!91109 (= (apply!86 (+!127 lt!44276 (tuple2!2285 lt!44270 (zeroValue!2288 (v!2714 (underlying!312 thiss!992))))) lt!44260) (apply!86 lt!44276 lt!44260))))

(declare-fun lt!44280 () Unit!2725)

(assert (=> b!91109 (= lt!44280 lt!44261)))

(declare-fun lt!44269 () ListLongMap!1513)

(assert (=> b!91109 (= lt!44269 (getCurrentListMapNoExtraKeys!91 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) from!355 (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun lt!44281 () (_ BitVec 64))

(assert (=> b!91109 (= lt!44281 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44278 () (_ BitVec 64))

(assert (=> b!91109 (= lt!44278 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355))))

(assert (=> b!91109 (= lt!44271 (addApplyDifferent!62 lt!44269 lt!44281 (minValue!2288 (v!2714 (underlying!312 thiss!992))) lt!44278))))

(assert (=> b!91109 (= (apply!86 (+!127 lt!44269 (tuple2!2285 lt!44281 (minValue!2288 (v!2714 (underlying!312 thiss!992))))) lt!44278) (apply!86 lt!44269 lt!44278))))

(declare-fun b!91110 () Bool)

(declare-fun e!59446 () Bool)

(assert (=> b!91110 (= e!59446 (= (apply!86 lt!44265 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2288 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun bm!8832 () Bool)

(declare-fun call!8834 () ListLongMap!1513)

(assert (=> bm!8832 (= call!8840 call!8834)))

(declare-fun b!91111 () Bool)

(declare-fun res!46416 () Bool)

(assert (=> b!91111 (=> (not res!46416) (not e!59440))))

(declare-fun e!59447 () Bool)

(assert (=> b!91111 (= res!46416 e!59447)))

(declare-fun c!15109 () Bool)

(assert (=> b!91111 (= c!15109 (not (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!91112 () Bool)

(declare-fun e!59443 () Bool)

(assert (=> b!91112 (= e!59443 (validKeyInArray!0 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)))))

(declare-fun b!91113 () Bool)

(declare-fun Unit!2733 () Unit!2725)

(assert (=> b!91113 (= e!59448 Unit!2733)))

(declare-fun b!91114 () Bool)

(declare-fun e!59441 () Bool)

(assert (=> b!91114 (= e!59441 (validKeyInArray!0 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)))))

(declare-fun bm!8833 () Bool)

(declare-fun call!8836 () Bool)

(assert (=> bm!8833 (= call!8836 (contains!780 lt!44265 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!8834 () Bool)

(declare-fun call!8835 () Bool)

(assert (=> bm!8834 (= call!8835 (contains!780 lt!44265 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!91108 () Bool)

(assert (=> b!91108 (= e!59447 e!59446)))

(declare-fun res!46420 () Bool)

(assert (=> b!91108 (= res!46420 call!8835)))

(assert (=> b!91108 (=> (not res!46420) (not e!59446))))

(declare-fun d!24011 () Bool)

(assert (=> d!24011 e!59440))

(declare-fun res!46422 () Bool)

(assert (=> d!24011 (=> (not res!46422) (not e!59440))))

(assert (=> d!24011 (= res!46422 (or (bvsge from!355 (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))) (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))))

(declare-fun lt!44267 () ListLongMap!1513)

(assert (=> d!24011 (= lt!44265 lt!44267)))

(declare-fun lt!44268 () Unit!2725)

(assert (=> d!24011 (= lt!44268 e!59448)))

(declare-fun c!15107 () Bool)

(assert (=> d!24011 (= c!15107 e!59443)))

(declare-fun res!46419 () Bool)

(assert (=> d!24011 (=> (not res!46419) (not e!59443))))

(assert (=> d!24011 (= res!46419 (bvslt from!355 (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))

(assert (=> d!24011 (= lt!44267 e!59444)))

(declare-fun c!15108 () Bool)

(assert (=> d!24011 (= c!15108 (and (not (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!24011 (validMask!0 (mask!6458 (v!2714 (underlying!312 thiss!992))))))

(assert (=> d!24011 (= (getCurrentListMap!454 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) from!355 (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))) lt!44265)))

(declare-fun b!91115 () Bool)

(assert (=> b!91115 (= e!59439 e!59445)))

(declare-fun res!46417 () Bool)

(assert (=> b!91115 (= res!46417 call!8836)))

(assert (=> b!91115 (=> (not res!46417) (not e!59445))))

(declare-fun b!91116 () Bool)

(declare-fun res!46415 () Bool)

(assert (=> b!91116 (=> (not res!46415) (not e!59440))))

(declare-fun e!59438 () Bool)

(assert (=> b!91116 (= res!46415 e!59438)))

(declare-fun res!46421 () Bool)

(assert (=> b!91116 (=> res!46421 e!59438)))

(assert (=> b!91116 (= res!46421 (not e!59441))))

(declare-fun res!46423 () Bool)

(assert (=> b!91116 (=> (not res!46423) (not e!59441))))

(assert (=> b!91116 (= res!46423 (bvslt from!355 (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))

(declare-fun b!91117 () Bool)

(assert (=> b!91117 (= e!59447 (not call!8835))))

(declare-fun e!59442 () Bool)

(declare-fun b!91118 () Bool)

(assert (=> b!91118 (= e!59442 (= (apply!86 lt!44265 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)) (get!1248 (select (arr!1961 (_values!2383 (v!2714 (underlying!312 thiss!992)))) from!355) (dynLambda!363 (defaultEntry!2400 (v!2714 (underlying!312 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!91118 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2208 (_values!2383 (v!2714 (underlying!312 thiss!992))))))))

(assert (=> b!91118 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))

(declare-fun b!91119 () Bool)

(assert (=> b!91119 (= e!59438 e!59442)))

(declare-fun res!46418 () Bool)

(assert (=> b!91119 (=> (not res!46418) (not e!59442))))

(assert (=> b!91119 (= res!46418 (contains!780 lt!44265 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)))))

(assert (=> b!91119 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))

(declare-fun bm!8835 () Bool)

(assert (=> bm!8835 (= call!8834 (getCurrentListMapNoExtraKeys!91 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) from!355 (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun b!91120 () Bool)

(assert (=> b!91120 (= e!59439 (not call!8836))))

(declare-fun bm!8836 () Bool)

(declare-fun c!15110 () Bool)

(assert (=> bm!8836 (= call!8837 (+!127 (ite c!15108 call!8834 (ite c!15110 call!8840 call!8839)) (ite (or c!15108 c!15110) (tuple2!2285 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2288 (v!2714 (underlying!312 thiss!992)))) (tuple2!2285 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2288 (v!2714 (underlying!312 thiss!992)))))))))

(declare-fun b!91121 () Bool)

(assert (=> b!91121 (= e!59444 e!59449)))

(assert (=> b!91121 (= c!15110 (and (not (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!91122 () Bool)

(declare-fun call!8838 () ListLongMap!1513)

(assert (=> b!91122 (= e!59450 call!8838)))

(declare-fun bm!8837 () Bool)

(assert (=> bm!8837 (= call!8838 call!8837)))

(declare-fun b!91123 () Bool)

(assert (=> b!91123 (= e!59450 call!8839)))

(declare-fun b!91124 () Bool)

(assert (=> b!91124 (= e!59449 call!8838)))

(assert (= (and d!24011 c!15108) b!91104))

(assert (= (and d!24011 (not c!15108)) b!91121))

(assert (= (and b!91121 c!15110) b!91124))

(assert (= (and b!91121 (not c!15110)) b!91106))

(assert (= (and b!91106 c!15111) b!91122))

(assert (= (and b!91106 (not c!15111)) b!91123))

(assert (= (or b!91122 b!91123) bm!8831))

(assert (= (or b!91124 bm!8831) bm!8832))

(assert (= (or b!91124 b!91122) bm!8837))

(assert (= (or b!91104 bm!8832) bm!8835))

(assert (= (or b!91104 bm!8837) bm!8836))

(assert (= (and d!24011 res!46419) b!91112))

(assert (= (and d!24011 c!15107) b!91109))

(assert (= (and d!24011 (not c!15107)) b!91113))

(assert (= (and d!24011 res!46422) b!91116))

(assert (= (and b!91116 res!46423) b!91114))

(assert (= (and b!91116 (not res!46421)) b!91119))

(assert (= (and b!91119 res!46418) b!91118))

(assert (= (and b!91116 res!46415) b!91111))

(assert (= (and b!91111 c!15109) b!91108))

(assert (= (and b!91111 (not c!15109)) b!91117))

(assert (= (and b!91108 res!46420) b!91110))

(assert (= (or b!91108 b!91117) bm!8834))

(assert (= (and b!91111 res!46416) b!91105))

(assert (= (and b!91105 c!15112) b!91115))

(assert (= (and b!91105 (not c!15112)) b!91120))

(assert (= (and b!91115 res!46417) b!91107))

(assert (= (or b!91115 b!91120) bm!8833))

(declare-fun b_lambda!4021 () Bool)

(assert (=> (not b_lambda!4021) (not b!91118)))

(assert (=> b!91118 t!5400))

(declare-fun b_and!5517 () Bool)

(assert (= b_and!5513 (and (=> t!5400 result!3067) b_and!5517)))

(assert (=> b!91118 t!5402))

(declare-fun b_and!5519 () Bool)

(assert (= b_and!5515 (and (=> t!5402 result!3071) b_and!5519)))

(declare-fun m!97605 () Bool)

(assert (=> b!91107 m!97605))

(declare-fun m!97607 () Bool)

(assert (=> bm!8834 m!97607))

(assert (=> b!91112 m!97387))

(assert (=> b!91112 m!97387))

(assert (=> b!91112 m!97519))

(assert (=> b!91118 m!97417))

(assert (=> b!91118 m!97415))

(assert (=> b!91118 m!97387))

(declare-fun m!97609 () Bool)

(assert (=> b!91118 m!97609))

(assert (=> b!91118 m!97415))

(assert (=> b!91118 m!97417))

(assert (=> b!91118 m!97419))

(assert (=> b!91118 m!97387))

(declare-fun m!97611 () Bool)

(assert (=> b!91110 m!97611))

(assert (=> b!91119 m!97387))

(assert (=> b!91119 m!97387))

(declare-fun m!97613 () Bool)

(assert (=> b!91119 m!97613))

(declare-fun m!97615 () Bool)

(assert (=> b!91109 m!97615))

(declare-fun m!97617 () Bool)

(assert (=> b!91109 m!97617))

(declare-fun m!97619 () Bool)

(assert (=> b!91109 m!97619))

(declare-fun m!97621 () Bool)

(assert (=> b!91109 m!97621))

(declare-fun m!97623 () Bool)

(assert (=> b!91109 m!97623))

(declare-fun m!97625 () Bool)

(assert (=> b!91109 m!97625))

(declare-fun m!97627 () Bool)

(assert (=> b!91109 m!97627))

(assert (=> b!91109 m!97387))

(declare-fun m!97629 () Bool)

(assert (=> b!91109 m!97629))

(declare-fun m!97631 () Bool)

(assert (=> b!91109 m!97631))

(declare-fun m!97633 () Bool)

(assert (=> b!91109 m!97633))

(declare-fun m!97635 () Bool)

(assert (=> b!91109 m!97635))

(declare-fun m!97637 () Bool)

(assert (=> b!91109 m!97637))

(declare-fun m!97639 () Bool)

(assert (=> b!91109 m!97639))

(assert (=> b!91109 m!97637))

(declare-fun m!97641 () Bool)

(assert (=> b!91109 m!97641))

(declare-fun m!97643 () Bool)

(assert (=> b!91109 m!97643))

(assert (=> b!91109 m!97621))

(declare-fun m!97645 () Bool)

(assert (=> b!91109 m!97645))

(assert (=> b!91109 m!97629))

(assert (=> b!91109 m!97615))

(assert (=> bm!8835 m!97627))

(declare-fun m!97647 () Bool)

(assert (=> bm!8833 m!97647))

(declare-fun m!97649 () Bool)

(assert (=> bm!8836 m!97649))

(declare-fun m!97651 () Bool)

(assert (=> b!91104 m!97651))

(assert (=> d!24011 m!97517))

(assert (=> b!91114 m!97387))

(assert (=> b!91114 m!97387))

(assert (=> b!91114 m!97519))

(assert (=> b!90912 d!24011))

(declare-fun d!24013 () Bool)

(declare-fun e!59451 () Bool)

(assert (=> d!24013 e!59451))

(declare-fun res!46424 () Bool)

(assert (=> d!24013 (=> (not res!46424) (not e!59451))))

(declare-fun lt!44285 () ListLongMap!1513)

(assert (=> d!24013 (= res!46424 (contains!780 lt!44285 (_1!1152 lt!44107)))))

(declare-fun lt!44282 () List!1577)

(assert (=> d!24013 (= lt!44285 (ListLongMap!1514 lt!44282))))

(declare-fun lt!44283 () Unit!2725)

(declare-fun lt!44284 () Unit!2725)

(assert (=> d!24013 (= lt!44283 lt!44284)))

(assert (=> d!24013 (= (getValueByKey!143 lt!44282 (_1!1152 lt!44107)) (Some!148 (_2!1152 lt!44107)))))

(assert (=> d!24013 (= lt!44284 (lemmaContainsTupThenGetReturnValue!62 lt!44282 (_1!1152 lt!44107) (_2!1152 lt!44107)))))

(assert (=> d!24013 (= lt!44282 (insertStrictlySorted!64 (toList!772 lt!44093) (_1!1152 lt!44107) (_2!1152 lt!44107)))))

(assert (=> d!24013 (= (+!127 lt!44093 lt!44107) lt!44285)))

(declare-fun b!91125 () Bool)

(declare-fun res!46425 () Bool)

(assert (=> b!91125 (=> (not res!46425) (not e!59451))))

(assert (=> b!91125 (= res!46425 (= (getValueByKey!143 (toList!772 lt!44285) (_1!1152 lt!44107)) (Some!148 (_2!1152 lt!44107))))))

(declare-fun b!91126 () Bool)

(assert (=> b!91126 (= e!59451 (contains!783 (toList!772 lt!44285) lt!44107))))

(assert (= (and d!24013 res!46424) b!91125))

(assert (= (and b!91125 res!46425) b!91126))

(declare-fun m!97653 () Bool)

(assert (=> d!24013 m!97653))

(declare-fun m!97655 () Bool)

(assert (=> d!24013 m!97655))

(declare-fun m!97657 () Bool)

(assert (=> d!24013 m!97657))

(declare-fun m!97659 () Bool)

(assert (=> d!24013 m!97659))

(declare-fun m!97661 () Bool)

(assert (=> b!91125 m!97661))

(declare-fun m!97663 () Bool)

(assert (=> b!91126 m!97663))

(assert (=> b!90912 d!24013))

(declare-fun d!24015 () Bool)

(declare-fun e!59452 () Bool)

(assert (=> d!24015 e!59452))

(declare-fun res!46426 () Bool)

(assert (=> d!24015 (=> (not res!46426) (not e!59452))))

(declare-fun lt!44289 () ListLongMap!1513)

(assert (=> d!24015 (= res!46426 (contains!780 lt!44289 (_1!1152 lt!44107)))))

(declare-fun lt!44286 () List!1577)

(assert (=> d!24015 (= lt!44289 (ListLongMap!1514 lt!44286))))

(declare-fun lt!44287 () Unit!2725)

(declare-fun lt!44288 () Unit!2725)

(assert (=> d!24015 (= lt!44287 lt!44288)))

(assert (=> d!24015 (= (getValueByKey!143 lt!44286 (_1!1152 lt!44107)) (Some!148 (_2!1152 lt!44107)))))

(assert (=> d!24015 (= lt!44288 (lemmaContainsTupThenGetReturnValue!62 lt!44286 (_1!1152 lt!44107) (_2!1152 lt!44107)))))

(assert (=> d!24015 (= lt!44286 (insertStrictlySorted!64 (toList!772 lt!44094) (_1!1152 lt!44107) (_2!1152 lt!44107)))))

(assert (=> d!24015 (= (+!127 lt!44094 lt!44107) lt!44289)))

(declare-fun b!91127 () Bool)

(declare-fun res!46427 () Bool)

(assert (=> b!91127 (=> (not res!46427) (not e!59452))))

(assert (=> b!91127 (= res!46427 (= (getValueByKey!143 (toList!772 lt!44289) (_1!1152 lt!44107)) (Some!148 (_2!1152 lt!44107))))))

(declare-fun b!91128 () Bool)

(assert (=> b!91128 (= e!59452 (contains!783 (toList!772 lt!44289) lt!44107))))

(assert (= (and d!24015 res!46426) b!91127))

(assert (= (and b!91127 res!46427) b!91128))

(declare-fun m!97665 () Bool)

(assert (=> d!24015 m!97665))

(declare-fun m!97667 () Bool)

(assert (=> d!24015 m!97667))

(declare-fun m!97669 () Bool)

(assert (=> d!24015 m!97669))

(declare-fun m!97671 () Bool)

(assert (=> d!24015 m!97671))

(declare-fun m!97673 () Bool)

(assert (=> b!91127 m!97673))

(declare-fun m!97675 () Bool)

(assert (=> b!91128 m!97675))

(assert (=> b!90912 d!24015))

(declare-fun d!24017 () Bool)

(declare-fun e!59453 () Bool)

(assert (=> d!24017 e!59453))

(declare-fun res!46428 () Bool)

(assert (=> d!24017 (=> (not res!46428) (not e!59453))))

(declare-fun lt!44293 () ListLongMap!1513)

(assert (=> d!24017 (= res!46428 (contains!780 lt!44293 (_1!1152 lt!44091)))))

(declare-fun lt!44290 () List!1577)

(assert (=> d!24017 (= lt!44293 (ListLongMap!1514 lt!44290))))

(declare-fun lt!44291 () Unit!2725)

(declare-fun lt!44292 () Unit!2725)

(assert (=> d!24017 (= lt!44291 lt!44292)))

(assert (=> d!24017 (= (getValueByKey!143 lt!44290 (_1!1152 lt!44091)) (Some!148 (_2!1152 lt!44091)))))

(assert (=> d!24017 (= lt!44292 (lemmaContainsTupThenGetReturnValue!62 lt!44290 (_1!1152 lt!44091) (_2!1152 lt!44091)))))

(assert (=> d!24017 (= lt!44290 (insertStrictlySorted!64 (toList!772 lt!44098) (_1!1152 lt!44091) (_2!1152 lt!44091)))))

(assert (=> d!24017 (= (+!127 lt!44098 lt!44091) lt!44293)))

(declare-fun b!91129 () Bool)

(declare-fun res!46429 () Bool)

(assert (=> b!91129 (=> (not res!46429) (not e!59453))))

(assert (=> b!91129 (= res!46429 (= (getValueByKey!143 (toList!772 lt!44293) (_1!1152 lt!44091)) (Some!148 (_2!1152 lt!44091))))))

(declare-fun b!91130 () Bool)

(assert (=> b!91130 (= e!59453 (contains!783 (toList!772 lt!44293) lt!44091))))

(assert (= (and d!24017 res!46428) b!91129))

(assert (= (and b!91129 res!46429) b!91130))

(declare-fun m!97677 () Bool)

(assert (=> d!24017 m!97677))

(declare-fun m!97679 () Bool)

(assert (=> d!24017 m!97679))

(declare-fun m!97681 () Bool)

(assert (=> d!24017 m!97681))

(declare-fun m!97683 () Bool)

(assert (=> d!24017 m!97683))

(declare-fun m!97685 () Bool)

(assert (=> b!91129 m!97685))

(declare-fun m!97687 () Bool)

(assert (=> b!91130 m!97687))

(assert (=> b!90912 d!24017))

(declare-fun d!24019 () Bool)

(declare-fun e!59454 () Bool)

(assert (=> d!24019 e!59454))

(declare-fun res!46430 () Bool)

(assert (=> d!24019 (=> (not res!46430) (not e!59454))))

(declare-fun lt!44297 () ListLongMap!1513)

(assert (=> d!24019 (= res!46430 (contains!780 lt!44297 (_1!1152 lt!44091)))))

(declare-fun lt!44294 () List!1577)

(assert (=> d!24019 (= lt!44297 (ListLongMap!1514 lt!44294))))

(declare-fun lt!44295 () Unit!2725)

(declare-fun lt!44296 () Unit!2725)

(assert (=> d!24019 (= lt!44295 lt!44296)))

(assert (=> d!24019 (= (getValueByKey!143 lt!44294 (_1!1152 lt!44091)) (Some!148 (_2!1152 lt!44091)))))

(assert (=> d!24019 (= lt!44296 (lemmaContainsTupThenGetReturnValue!62 lt!44294 (_1!1152 lt!44091) (_2!1152 lt!44091)))))

(assert (=> d!24019 (= lt!44294 (insertStrictlySorted!64 (toList!772 lt!44099) (_1!1152 lt!44091) (_2!1152 lt!44091)))))

(assert (=> d!24019 (= (+!127 lt!44099 lt!44091) lt!44297)))

(declare-fun b!91131 () Bool)

(declare-fun res!46431 () Bool)

(assert (=> b!91131 (=> (not res!46431) (not e!59454))))

(assert (=> b!91131 (= res!46431 (= (getValueByKey!143 (toList!772 lt!44297) (_1!1152 lt!44091)) (Some!148 (_2!1152 lt!44091))))))

(declare-fun b!91132 () Bool)

(assert (=> b!91132 (= e!59454 (contains!783 (toList!772 lt!44297) lt!44091))))

(assert (= (and d!24019 res!46430) b!91131))

(assert (= (and b!91131 res!46431) b!91132))

(declare-fun m!97689 () Bool)

(assert (=> d!24019 m!97689))

(declare-fun m!97691 () Bool)

(assert (=> d!24019 m!97691))

(declare-fun m!97693 () Bool)

(assert (=> d!24019 m!97693))

(declare-fun m!97695 () Bool)

(assert (=> d!24019 m!97695))

(declare-fun m!97697 () Bool)

(assert (=> b!91131 m!97697))

(declare-fun m!97699 () Bool)

(assert (=> b!91132 m!97699))

(assert (=> b!90912 d!24019))

(declare-fun d!24021 () Bool)

(assert (=> d!24021 (= (+!127 (+!127 lt!44098 (tuple2!2285 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102)) (tuple2!2285 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2288 (v!2714 (underlying!312 thiss!992))))) (+!127 (+!127 lt!44098 (tuple2!2285 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2288 (v!2714 (underlying!312 thiss!992))))) (tuple2!2285 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102)))))

(declare-fun lt!44298 () Unit!2725)

(assert (=> d!24021 (= lt!44298 (choose!550 lt!44098 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2288 (v!2714 (underlying!312 thiss!992)))))))

(assert (=> d!24021 (not (= (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!24021 (= (addCommutativeForDiffKeys!46 lt!44098 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2288 (v!2714 (underlying!312 thiss!992)))) lt!44298)))

(declare-fun bs!3778 () Bool)

(assert (= bs!3778 d!24021))

(declare-fun m!97701 () Bool)

(assert (=> bs!3778 m!97701))

(declare-fun m!97703 () Bool)

(assert (=> bs!3778 m!97703))

(declare-fun m!97705 () Bool)

(assert (=> bs!3778 m!97705))

(assert (=> bs!3778 m!97387))

(declare-fun m!97707 () Bool)

(assert (=> bs!3778 m!97707))

(assert (=> bs!3778 m!97705))

(declare-fun m!97709 () Bool)

(assert (=> bs!3778 m!97709))

(assert (=> bs!3778 m!97701))

(assert (=> b!90912 d!24021))

(declare-fun d!24023 () Bool)

(assert (=> d!24023 (= (map!1220 (_2!1151 lt!44097)) (getCurrentListMap!454 (_keys!4080 (_2!1151 lt!44097)) (_values!2383 (_2!1151 lt!44097)) (mask!6458 (_2!1151 lt!44097)) (extraKeys!2231 (_2!1151 lt!44097)) (zeroValue!2288 (_2!1151 lt!44097)) (minValue!2288 (_2!1151 lt!44097)) #b00000000000000000000000000000000 (defaultEntry!2400 (_2!1151 lt!44097))))))

(declare-fun bs!3779 () Bool)

(assert (= bs!3779 d!24023))

(declare-fun m!97711 () Bool)

(assert (=> bs!3779 m!97711))

(assert (=> b!90912 d!24023))

(declare-fun d!24025 () Bool)

(assert (=> d!24025 (= (array_inv!1177 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (bvsge (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!90907 d!24025))

(declare-fun d!24027 () Bool)

(assert (=> d!24027 (= (array_inv!1178 (_values!2383 (v!2714 (underlying!312 thiss!992)))) (bvsge (size!2208 (_values!2383 (v!2714 (underlying!312 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!90907 d!24027))

(declare-fun d!24029 () Bool)

(declare-fun res!46432 () Bool)

(declare-fun e!59455 () Bool)

(assert (=> d!24029 (=> (not res!46432) (not e!59455))))

(assert (=> d!24029 (= res!46432 (simpleValid!61 newMap!16))))

(assert (=> d!24029 (= (valid!353 newMap!16) e!59455)))

(declare-fun b!91133 () Bool)

(declare-fun res!46433 () Bool)

(assert (=> b!91133 (=> (not res!46433) (not e!59455))))

(assert (=> b!91133 (= res!46433 (= (arrayCountValidKeys!0 (_keys!4080 newMap!16) #b00000000000000000000000000000000 (size!2207 (_keys!4080 newMap!16))) (_size!448 newMap!16)))))

(declare-fun b!91134 () Bool)

(declare-fun res!46434 () Bool)

(assert (=> b!91134 (=> (not res!46434) (not e!59455))))

(assert (=> b!91134 (= res!46434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4080 newMap!16) (mask!6458 newMap!16)))))

(declare-fun b!91135 () Bool)

(assert (=> b!91135 (= e!59455 (arrayNoDuplicates!0 (_keys!4080 newMap!16) #b00000000000000000000000000000000 Nil!1575))))

(assert (= (and d!24029 res!46432) b!91133))

(assert (= (and b!91133 res!46433) b!91134))

(assert (= (and b!91134 res!46434) b!91135))

(declare-fun m!97713 () Bool)

(assert (=> d!24029 m!97713))

(declare-fun m!97715 () Bool)

(assert (=> b!91133 m!97715))

(declare-fun m!97717 () Bool)

(assert (=> b!91134 m!97717))

(declare-fun m!97719 () Bool)

(assert (=> b!91135 m!97719))

(assert (=> b!90893 d!24029))

(declare-fun d!24031 () Bool)

(assert (=> d!24031 (= (array_inv!1177 (_keys!4080 newMap!16)) (bvsge (size!2207 (_keys!4080 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!90898 d!24031))

(declare-fun d!24033 () Bool)

(assert (=> d!24033 (= (array_inv!1178 (_values!2383 newMap!16)) (bvsge (size!2208 (_values!2383 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!90898 d!24033))

(declare-fun d!24035 () Bool)

(assert (=> d!24035 (= (map!1220 newMap!16) (getCurrentListMap!454 (_keys!4080 newMap!16) (_values!2383 newMap!16) (mask!6458 newMap!16) (extraKeys!2231 newMap!16) (zeroValue!2288 newMap!16) (minValue!2288 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2400 newMap!16)))))

(declare-fun bs!3780 () Bool)

(assert (= bs!3780 d!24035))

(declare-fun m!97721 () Bool)

(assert (=> bs!3780 m!97721))

(assert (=> b!90906 d!24035))

(declare-fun b!91136 () Bool)

(declare-fun e!59462 () ListLongMap!1513)

(declare-fun call!8844 () ListLongMap!1513)

(assert (=> b!91136 (= e!59462 (+!127 call!8844 (tuple2!2285 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2288 (v!2714 (underlying!312 thiss!992))))))))

(declare-fun bm!8838 () Bool)

(declare-fun call!8846 () ListLongMap!1513)

(declare-fun call!8847 () ListLongMap!1513)

(assert (=> bm!8838 (= call!8846 call!8847)))

(declare-fun b!91137 () Bool)

(declare-fun e!59458 () Bool)

(declare-fun e!59457 () Bool)

(assert (=> b!91137 (= e!59458 e!59457)))

(declare-fun c!15118 () Bool)

(assert (=> b!91137 (= c!15118 (not (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!91138 () Bool)

(declare-fun c!15117 () Bool)

(assert (=> b!91138 (= c!15117 (and (not (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!59467 () ListLongMap!1513)

(declare-fun e!59468 () ListLongMap!1513)

(assert (=> b!91138 (= e!59467 e!59468)))

(declare-fun b!91139 () Bool)

(declare-fun e!59463 () Bool)

(declare-fun lt!44304 () ListLongMap!1513)

(assert (=> b!91139 (= e!59463 (= (apply!86 lt!44304 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2288 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun b!91141 () Bool)

(declare-fun e!59466 () Unit!2725)

(declare-fun lt!44310 () Unit!2725)

(assert (=> b!91141 (= e!59466 lt!44310)))

(declare-fun lt!44301 () ListLongMap!1513)

(assert (=> b!91141 (= lt!44301 (getCurrentListMapNoExtraKeys!91 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun lt!44316 () (_ BitVec 64))

(assert (=> b!91141 (= lt!44316 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44305 () (_ BitVec 64))

(assert (=> b!91141 (= lt!44305 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!44313 () Unit!2725)

(assert (=> b!91141 (= lt!44313 (addStillContains!62 lt!44301 lt!44316 (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) lt!44305))))

(assert (=> b!91141 (contains!780 (+!127 lt!44301 (tuple2!2285 lt!44316 (zeroValue!2288 (v!2714 (underlying!312 thiss!992))))) lt!44305)))

(declare-fun lt!44312 () Unit!2725)

(assert (=> b!91141 (= lt!44312 lt!44313)))

(declare-fun lt!44303 () ListLongMap!1513)

(assert (=> b!91141 (= lt!44303 (getCurrentListMapNoExtraKeys!91 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun lt!44314 () (_ BitVec 64))

(assert (=> b!91141 (= lt!44314 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44302 () (_ BitVec 64))

(assert (=> b!91141 (= lt!44302 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!44318 () Unit!2725)

(assert (=> b!91141 (= lt!44318 (addApplyDifferent!62 lt!44303 lt!44314 (minValue!2288 (v!2714 (underlying!312 thiss!992))) lt!44302))))

(assert (=> b!91141 (= (apply!86 (+!127 lt!44303 (tuple2!2285 lt!44314 (minValue!2288 (v!2714 (underlying!312 thiss!992))))) lt!44302) (apply!86 lt!44303 lt!44302))))

(declare-fun lt!44311 () Unit!2725)

(assert (=> b!91141 (= lt!44311 lt!44318)))

(declare-fun lt!44315 () ListLongMap!1513)

(assert (=> b!91141 (= lt!44315 (getCurrentListMapNoExtraKeys!91 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun lt!44309 () (_ BitVec 64))

(assert (=> b!91141 (= lt!44309 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44299 () (_ BitVec 64))

(assert (=> b!91141 (= lt!44299 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!44300 () Unit!2725)

(assert (=> b!91141 (= lt!44300 (addApplyDifferent!62 lt!44315 lt!44309 (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) lt!44299))))

(assert (=> b!91141 (= (apply!86 (+!127 lt!44315 (tuple2!2285 lt!44309 (zeroValue!2288 (v!2714 (underlying!312 thiss!992))))) lt!44299) (apply!86 lt!44315 lt!44299))))

(declare-fun lt!44319 () Unit!2725)

(assert (=> b!91141 (= lt!44319 lt!44300)))

(declare-fun lt!44308 () ListLongMap!1513)

(assert (=> b!91141 (= lt!44308 (getCurrentListMapNoExtraKeys!91 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun lt!44320 () (_ BitVec 64))

(assert (=> b!91141 (= lt!44320 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44317 () (_ BitVec 64))

(assert (=> b!91141 (= lt!44317 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!91141 (= lt!44310 (addApplyDifferent!62 lt!44308 lt!44320 (minValue!2288 (v!2714 (underlying!312 thiss!992))) lt!44317))))

(assert (=> b!91141 (= (apply!86 (+!127 lt!44308 (tuple2!2285 lt!44320 (minValue!2288 (v!2714 (underlying!312 thiss!992))))) lt!44317) (apply!86 lt!44308 lt!44317))))

(declare-fun b!91142 () Bool)

(declare-fun e!59464 () Bool)

(assert (=> b!91142 (= e!59464 (= (apply!86 lt!44304 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2288 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun bm!8839 () Bool)

(declare-fun call!8841 () ListLongMap!1513)

(assert (=> bm!8839 (= call!8847 call!8841)))

(declare-fun b!91143 () Bool)

(declare-fun res!46436 () Bool)

(assert (=> b!91143 (=> (not res!46436) (not e!59458))))

(declare-fun e!59465 () Bool)

(assert (=> b!91143 (= res!46436 e!59465)))

(declare-fun c!15115 () Bool)

(assert (=> b!91143 (= c!15115 (not (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!91144 () Bool)

(declare-fun e!59461 () Bool)

(assert (=> b!91144 (= e!59461 (validKeyInArray!0 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!91145 () Bool)

(declare-fun Unit!2734 () Unit!2725)

(assert (=> b!91145 (= e!59466 Unit!2734)))

(declare-fun b!91146 () Bool)

(declare-fun e!59459 () Bool)

(assert (=> b!91146 (= e!59459 (validKeyInArray!0 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!8840 () Bool)

(declare-fun call!8843 () Bool)

(assert (=> bm!8840 (= call!8843 (contains!780 lt!44304 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!8841 () Bool)

(declare-fun call!8842 () Bool)

(assert (=> bm!8841 (= call!8842 (contains!780 lt!44304 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!91140 () Bool)

(assert (=> b!91140 (= e!59465 e!59464)))

(declare-fun res!46440 () Bool)

(assert (=> b!91140 (= res!46440 call!8842)))

(assert (=> b!91140 (=> (not res!46440) (not e!59464))))

(declare-fun d!24037 () Bool)

(assert (=> d!24037 e!59458))

(declare-fun res!46442 () Bool)

(assert (=> d!24037 (=> (not res!46442) (not e!59458))))

(assert (=> d!24037 (= res!46442 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))))

(declare-fun lt!44306 () ListLongMap!1513)

(assert (=> d!24037 (= lt!44304 lt!44306)))

(declare-fun lt!44307 () Unit!2725)

(assert (=> d!24037 (= lt!44307 e!59466)))

(declare-fun c!15113 () Bool)

(assert (=> d!24037 (= c!15113 e!59461)))

(declare-fun res!46439 () Bool)

(assert (=> d!24037 (=> (not res!46439) (not e!59461))))

(assert (=> d!24037 (= res!46439 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))

(assert (=> d!24037 (= lt!44306 e!59462)))

(declare-fun c!15114 () Bool)

(assert (=> d!24037 (= c!15114 (and (not (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!24037 (validMask!0 (mask!6458 (v!2714 (underlying!312 thiss!992))))))

(assert (=> d!24037 (= (getCurrentListMap!454 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))) lt!44304)))

(declare-fun b!91147 () Bool)

(assert (=> b!91147 (= e!59457 e!59463)))

(declare-fun res!46437 () Bool)

(assert (=> b!91147 (= res!46437 call!8843)))

(assert (=> b!91147 (=> (not res!46437) (not e!59463))))

(declare-fun b!91148 () Bool)

(declare-fun res!46435 () Bool)

(assert (=> b!91148 (=> (not res!46435) (not e!59458))))

(declare-fun e!59456 () Bool)

(assert (=> b!91148 (= res!46435 e!59456)))

(declare-fun res!46441 () Bool)

(assert (=> b!91148 (=> res!46441 e!59456)))

(assert (=> b!91148 (= res!46441 (not e!59459))))

(declare-fun res!46443 () Bool)

(assert (=> b!91148 (=> (not res!46443) (not e!59459))))

(assert (=> b!91148 (= res!46443 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))

(declare-fun b!91149 () Bool)

(assert (=> b!91149 (= e!59465 (not call!8842))))

(declare-fun e!59460 () Bool)

(declare-fun b!91150 () Bool)

(assert (=> b!91150 (= e!59460 (= (apply!86 lt!44304 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1248 (select (arr!1961 (_values!2383 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!363 (defaultEntry!2400 (v!2714 (underlying!312 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!91150 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2208 (_values!2383 (v!2714 (underlying!312 thiss!992))))))))

(assert (=> b!91150 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))

(declare-fun b!91151 () Bool)

(assert (=> b!91151 (= e!59456 e!59460)))

(declare-fun res!46438 () Bool)

(assert (=> b!91151 (=> (not res!46438) (not e!59460))))

(assert (=> b!91151 (= res!46438 (contains!780 lt!44304 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!91151 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2207 (_keys!4080 (v!2714 (underlying!312 thiss!992))))))))

(declare-fun bm!8842 () Bool)

(assert (=> bm!8842 (= call!8841 (getCurrentListMapNoExtraKeys!91 (_keys!4080 (v!2714 (underlying!312 thiss!992))) (_values!2383 (v!2714 (underlying!312 thiss!992))) (mask!6458 (v!2714 (underlying!312 thiss!992))) (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) (zeroValue!2288 (v!2714 (underlying!312 thiss!992))) (minValue!2288 (v!2714 (underlying!312 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992)))))))

(declare-fun b!91152 () Bool)

(assert (=> b!91152 (= e!59457 (not call!8843))))

(declare-fun c!15116 () Bool)

(declare-fun bm!8843 () Bool)

(assert (=> bm!8843 (= call!8844 (+!127 (ite c!15114 call!8841 (ite c!15116 call!8847 call!8846)) (ite (or c!15114 c!15116) (tuple2!2285 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2288 (v!2714 (underlying!312 thiss!992)))) (tuple2!2285 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2288 (v!2714 (underlying!312 thiss!992)))))))))

(declare-fun b!91153 () Bool)

(assert (=> b!91153 (= e!59462 e!59467)))

(assert (=> b!91153 (= c!15116 (and (not (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2231 (v!2714 (underlying!312 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!91154 () Bool)

(declare-fun call!8845 () ListLongMap!1513)

(assert (=> b!91154 (= e!59468 call!8845)))

(declare-fun bm!8844 () Bool)

(assert (=> bm!8844 (= call!8845 call!8844)))

(declare-fun b!91155 () Bool)

(assert (=> b!91155 (= e!59468 call!8846)))

(declare-fun b!91156 () Bool)

(assert (=> b!91156 (= e!59467 call!8845)))

(assert (= (and d!24037 c!15114) b!91136))

(assert (= (and d!24037 (not c!15114)) b!91153))

(assert (= (and b!91153 c!15116) b!91156))

(assert (= (and b!91153 (not c!15116)) b!91138))

(assert (= (and b!91138 c!15117) b!91154))

(assert (= (and b!91138 (not c!15117)) b!91155))

(assert (= (or b!91154 b!91155) bm!8838))

(assert (= (or b!91156 bm!8838) bm!8839))

(assert (= (or b!91156 b!91154) bm!8844))

(assert (= (or b!91136 bm!8839) bm!8842))

(assert (= (or b!91136 bm!8844) bm!8843))

(assert (= (and d!24037 res!46439) b!91144))

(assert (= (and d!24037 c!15113) b!91141))

(assert (= (and d!24037 (not c!15113)) b!91145))

(assert (= (and d!24037 res!46442) b!91148))

(assert (= (and b!91148 res!46443) b!91146))

(assert (= (and b!91148 (not res!46441)) b!91151))

(assert (= (and b!91151 res!46438) b!91150))

(assert (= (and b!91148 res!46435) b!91143))

(assert (= (and b!91143 c!15115) b!91140))

(assert (= (and b!91143 (not c!15115)) b!91149))

(assert (= (and b!91140 res!46440) b!91142))

(assert (= (or b!91140 b!91149) bm!8841))

(assert (= (and b!91143 res!46436) b!91137))

(assert (= (and b!91137 c!15118) b!91147))

(assert (= (and b!91137 (not c!15118)) b!91152))

(assert (= (and b!91147 res!46437) b!91139))

(assert (= (or b!91147 b!91152) bm!8840))

(declare-fun b_lambda!4023 () Bool)

(assert (=> (not b_lambda!4023) (not b!91150)))

(assert (=> b!91150 t!5400))

(declare-fun b_and!5521 () Bool)

(assert (= b_and!5517 (and (=> t!5400 result!3067) b_and!5521)))

(assert (=> b!91150 t!5402))

(declare-fun b_and!5523 () Bool)

(assert (= b_and!5519 (and (=> t!5402 result!3071) b_and!5523)))

(declare-fun m!97723 () Bool)

(assert (=> b!91139 m!97723))

(declare-fun m!97725 () Bool)

(assert (=> bm!8841 m!97725))

(assert (=> b!91144 m!97511))

(assert (=> b!91144 m!97511))

(assert (=> b!91144 m!97563))

(assert (=> b!91150 m!97417))

(assert (=> b!91150 m!97557))

(assert (=> b!91150 m!97511))

(declare-fun m!97727 () Bool)

(assert (=> b!91150 m!97727))

(assert (=> b!91150 m!97557))

(assert (=> b!91150 m!97417))

(assert (=> b!91150 m!97561))

(assert (=> b!91150 m!97511))

(declare-fun m!97729 () Bool)

(assert (=> b!91142 m!97729))

(assert (=> b!91151 m!97511))

(assert (=> b!91151 m!97511))

(declare-fun m!97731 () Bool)

(assert (=> b!91151 m!97731))

(declare-fun m!97733 () Bool)

(assert (=> b!91141 m!97733))

(declare-fun m!97735 () Bool)

(assert (=> b!91141 m!97735))

(declare-fun m!97737 () Bool)

(assert (=> b!91141 m!97737))

(declare-fun m!97739 () Bool)

(assert (=> b!91141 m!97739))

(declare-fun m!97741 () Bool)

(assert (=> b!91141 m!97741))

(declare-fun m!97743 () Bool)

(assert (=> b!91141 m!97743))

(assert (=> b!91141 m!97405))

(assert (=> b!91141 m!97511))

(declare-fun m!97745 () Bool)

(assert (=> b!91141 m!97745))

(declare-fun m!97747 () Bool)

(assert (=> b!91141 m!97747))

(declare-fun m!97749 () Bool)

(assert (=> b!91141 m!97749))

(declare-fun m!97751 () Bool)

(assert (=> b!91141 m!97751))

(declare-fun m!97753 () Bool)

(assert (=> b!91141 m!97753))

(declare-fun m!97755 () Bool)

(assert (=> b!91141 m!97755))

(assert (=> b!91141 m!97753))

(declare-fun m!97757 () Bool)

(assert (=> b!91141 m!97757))

(declare-fun m!97759 () Bool)

(assert (=> b!91141 m!97759))

(assert (=> b!91141 m!97739))

(declare-fun m!97761 () Bool)

(assert (=> b!91141 m!97761))

(assert (=> b!91141 m!97745))

(assert (=> b!91141 m!97733))

(assert (=> bm!8842 m!97405))

(declare-fun m!97763 () Bool)

(assert (=> bm!8840 m!97763))

(declare-fun m!97765 () Bool)

(assert (=> bm!8843 m!97765))

(declare-fun m!97767 () Bool)

(assert (=> b!91136 m!97767))

(assert (=> d!24037 m!97517))

(assert (=> b!91146 m!97511))

(assert (=> b!91146 m!97511))

(assert (=> b!91146 m!97563))

(assert (=> b!90906 d!24037))

(declare-fun d!24039 () Bool)

(assert (=> d!24039 (= (valid!354 thiss!992) (valid!353 (v!2714 (underlying!312 thiss!992))))))

(declare-fun bs!3781 () Bool)

(assert (= bs!3781 d!24039))

(declare-fun m!97769 () Bool)

(assert (=> bs!3781 m!97769))

(assert (=> start!11126 d!24039))

(declare-fun d!24041 () Bool)

(declare-fun c!15121 () Bool)

(assert (=> d!24041 (= c!15121 ((_ is ValueCellFull!945) (select (arr!1961 (_values!2383 (v!2714 (underlying!312 thiss!992)))) from!355)))))

(declare-fun e!59471 () V!3083)

(assert (=> d!24041 (= (get!1248 (select (arr!1961 (_values!2383 (v!2714 (underlying!312 thiss!992)))) from!355) (dynLambda!363 (defaultEntry!2400 (v!2714 (underlying!312 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!59471)))

(declare-fun b!91161 () Bool)

(declare-fun get!1250 (ValueCell!945 V!3083) V!3083)

(assert (=> b!91161 (= e!59471 (get!1250 (select (arr!1961 (_values!2383 (v!2714 (underlying!312 thiss!992)))) from!355) (dynLambda!363 (defaultEntry!2400 (v!2714 (underlying!312 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!91162 () Bool)

(declare-fun get!1251 (ValueCell!945 V!3083) V!3083)

(assert (=> b!91162 (= e!59471 (get!1251 (select (arr!1961 (_values!2383 (v!2714 (underlying!312 thiss!992)))) from!355) (dynLambda!363 (defaultEntry!2400 (v!2714 (underlying!312 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!24041 c!15121) b!91161))

(assert (= (and d!24041 (not c!15121)) b!91162))

(assert (=> b!91161 m!97415))

(assert (=> b!91161 m!97417))

(declare-fun m!97771 () Bool)

(assert (=> b!91161 m!97771))

(assert (=> b!91162 m!97415))

(assert (=> b!91162 m!97417))

(declare-fun m!97773 () Bool)

(assert (=> b!91162 m!97773))

(assert (=> b!90905 d!24041))

(declare-fun d!24043 () Bool)

(declare-fun e!59477 () Bool)

(assert (=> d!24043 e!59477))

(declare-fun res!46446 () Bool)

(assert (=> d!24043 (=> res!46446 e!59477)))

(declare-fun lt!44332 () Bool)

(assert (=> d!24043 (= res!46446 (not lt!44332))))

(declare-fun lt!44330 () Bool)

(assert (=> d!24043 (= lt!44332 lt!44330)))

(declare-fun lt!44331 () Unit!2725)

(declare-fun e!59476 () Unit!2725)

(assert (=> d!24043 (= lt!44331 e!59476)))

(declare-fun c!15124 () Bool)

(assert (=> d!24043 (= c!15124 lt!44330)))

(declare-fun containsKey!147 (List!1577 (_ BitVec 64)) Bool)

(assert (=> d!24043 (= lt!44330 (containsKey!147 (toList!772 lt!44095) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)))))

(assert (=> d!24043 (= (contains!780 lt!44095 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)) lt!44332)))

(declare-fun b!91169 () Bool)

(declare-fun lt!44329 () Unit!2725)

(assert (=> b!91169 (= e!59476 lt!44329)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!96 (List!1577 (_ BitVec 64)) Unit!2725)

(assert (=> b!91169 (= lt!44329 (lemmaContainsKeyImpliesGetValueByKeyDefined!96 (toList!772 lt!44095) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)))))

(declare-fun isDefined!97 (Option!149) Bool)

(assert (=> b!91169 (isDefined!97 (getValueByKey!143 (toList!772 lt!44095) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)))))

(declare-fun b!91170 () Bool)

(declare-fun Unit!2735 () Unit!2725)

(assert (=> b!91170 (= e!59476 Unit!2735)))

(declare-fun b!91171 () Bool)

(assert (=> b!91171 (= e!59477 (isDefined!97 (getValueByKey!143 (toList!772 lt!44095) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355))))))

(assert (= (and d!24043 c!15124) b!91169))

(assert (= (and d!24043 (not c!15124)) b!91170))

(assert (= (and d!24043 (not res!46446)) b!91171))

(assert (=> d!24043 m!97387))

(declare-fun m!97775 () Bool)

(assert (=> d!24043 m!97775))

(assert (=> b!91169 m!97387))

(declare-fun m!97777 () Bool)

(assert (=> b!91169 m!97777))

(assert (=> b!91169 m!97387))

(declare-fun m!97779 () Bool)

(assert (=> b!91169 m!97779))

(assert (=> b!91169 m!97779))

(declare-fun m!97781 () Bool)

(assert (=> b!91169 m!97781))

(assert (=> b!91171 m!97387))

(assert (=> b!91171 m!97779))

(assert (=> b!91171 m!97779))

(assert (=> b!91171 m!97781))

(assert (=> b!90896 d!24043))

(declare-fun b!91256 () Bool)

(declare-fun res!46483 () Bool)

(declare-fun e!59522 () Bool)

(assert (=> b!91256 (=> (not res!46483) (not e!59522))))

(declare-datatypes ((SeekEntryResult!257 0))(
  ( (MissingZero!257 (index!3168 (_ BitVec 32))) (Found!257 (index!3169 (_ BitVec 32))) (Intermediate!257 (undefined!1069 Bool) (index!3170 (_ BitVec 32)) (x!12415 (_ BitVec 32))) (Undefined!257) (MissingVacant!257 (index!3171 (_ BitVec 32))) )
))
(declare-fun lt!44409 () SeekEntryResult!257)

(assert (=> b!91256 (= res!46483 (= (select (arr!1960 (_keys!4080 newMap!16)) (index!3168 lt!44409)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!91257 () Bool)

(declare-fun res!46485 () Bool)

(declare-fun call!8898 () Bool)

(assert (=> b!91257 (= res!46485 call!8898)))

(declare-fun e!59539 () Bool)

(assert (=> b!91257 (=> (not res!46485) (not e!59539))))

(declare-fun b!91258 () Bool)

(declare-fun res!46477 () Bool)

(assert (=> b!91258 (=> (not res!46477) (not e!59522))))

(declare-fun call!8919 () Bool)

(assert (=> b!91258 (= res!46477 call!8919)))

(declare-fun e!59533 () Bool)

(assert (=> b!91258 (= e!59533 e!59522)))

(declare-fun bm!8893 () Bool)

(declare-fun call!8911 () ListLongMap!1513)

(declare-fun call!8918 () ListLongMap!1513)

(assert (=> bm!8893 (= call!8911 call!8918)))

(declare-fun b!91259 () Bool)

(declare-fun res!46476 () Bool)

(declare-fun e!59540 () Bool)

(assert (=> b!91259 (=> (not res!46476) (not e!59540))))

(declare-fun call!8915 () Bool)

(assert (=> b!91259 (= res!46476 call!8915)))

(declare-fun e!59538 () Bool)

(assert (=> b!91259 (= e!59538 e!59540)))

(declare-fun call!8914 () ListLongMap!1513)

(declare-fun bm!8894 () Bool)

(declare-fun lt!44397 () (_ BitVec 32))

(declare-fun c!15161 () Bool)

(declare-fun lt!44393 () SeekEntryResult!257)

(declare-fun c!15164 () Bool)

(assert (=> bm!8894 (= call!8914 (getCurrentListMap!454 (_keys!4080 newMap!16) (ite c!15161 (_values!2383 newMap!16) (array!4123 (store (arr!1961 (_values!2383 newMap!16)) (index!3169 lt!44393) (ValueCellFull!945 lt!44102)) (size!2208 (_values!2383 newMap!16)))) (mask!6458 newMap!16) (ite c!15161 (ite c!15164 (extraKeys!2231 newMap!16) lt!44397) (extraKeys!2231 newMap!16)) (zeroValue!2288 newMap!16) (ite c!15161 (ite c!15164 (minValue!2288 newMap!16) lt!44102) (minValue!2288 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2400 newMap!16)))))

(declare-fun b!91260 () Bool)

(declare-fun lt!44392 () Unit!2725)

(declare-fun lt!44402 () Unit!2725)

(assert (=> b!91260 (= lt!44392 lt!44402)))

(declare-fun call!8897 () ListLongMap!1513)

(declare-fun call!8917 () ListLongMap!1513)

(assert (=> b!91260 (= call!8897 call!8917)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!35 (array!4120 array!4122 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3083 V!3083 V!3083 Int) Unit!2725)

(assert (=> b!91260 (= lt!44402 (lemmaChangeLongMinValueKeyThenAddPairToListMap!35 (_keys!4080 newMap!16) (_values!2383 newMap!16) (mask!6458 newMap!16) (extraKeys!2231 newMap!16) lt!44397 (zeroValue!2288 newMap!16) (minValue!2288 newMap!16) lt!44102 (defaultEntry!2400 newMap!16)))))

(assert (=> b!91260 (= lt!44397 (bvor (extraKeys!2231 newMap!16) #b00000000000000000000000000000010))))

(declare-fun e!59531 () tuple2!2282)

(assert (=> b!91260 (= e!59531 (tuple2!2283 true (LongMapFixedSize!799 (defaultEntry!2400 newMap!16) (mask!6458 newMap!16) (bvor (extraKeys!2231 newMap!16) #b00000000000000000000000000000010) (zeroValue!2288 newMap!16) lt!44102 (_size!448 newMap!16) (_keys!4080 newMap!16) (_values!2383 newMap!16) (_vacant!448 newMap!16))))))

(declare-fun b!91261 () Bool)

(declare-fun e!59525 () tuple2!2282)

(declare-fun e!59541 () tuple2!2282)

(assert (=> b!91261 (= e!59525 e!59541)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4120 (_ BitVec 32)) SeekEntryResult!257)

(assert (=> b!91261 (= lt!44393 (seekEntryOrOpen!0 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) (_keys!4080 newMap!16) (mask!6458 newMap!16)))))

(declare-fun c!15162 () Bool)

(assert (=> b!91261 (= c!15162 ((_ is Undefined!257) lt!44393))))

(declare-fun b!91262 () Bool)

(declare-fun e!59534 () Bool)

(declare-fun e!59530 () Bool)

(assert (=> b!91262 (= e!59534 e!59530)))

(declare-fun res!46479 () Bool)

(assert (=> b!91262 (= res!46479 call!8915)))

(assert (=> b!91262 (=> (not res!46479) (not e!59530))))

(declare-fun b!91263 () Bool)

(declare-fun res!46481 () Bool)

(assert (=> b!91263 (=> (not res!46481) (not e!59540))))

(declare-fun lt!44399 () SeekEntryResult!257)

(assert (=> b!91263 (= res!46481 (= (select (arr!1960 (_keys!4080 newMap!16)) (index!3168 lt!44399)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!91264 () Bool)

(declare-fun e!59526 () Bool)

(declare-fun call!8907 () ListLongMap!1513)

(declare-fun call!8912 () ListLongMap!1513)

(assert (=> b!91264 (= e!59526 (= call!8907 call!8912))))

(declare-fun bm!8895 () Bool)

(declare-fun call!8910 () Unit!2725)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!35 (array!4120 array!4122 (_ BitVec 32) (_ BitVec 32) V!3083 V!3083 (_ BitVec 64) Int) Unit!2725)

(assert (=> bm!8895 (= call!8910 (lemmaInListMapThenSeekEntryOrOpenFindsIt!35 (_keys!4080 newMap!16) (_values!2383 newMap!16) (mask!6458 newMap!16) (extraKeys!2231 newMap!16) (zeroValue!2288 newMap!16) (minValue!2288 newMap!16) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) (defaultEntry!2400 newMap!16)))))

(declare-fun b!91265 () Bool)

(declare-fun call!8909 () Bool)

(assert (=> b!91265 (= e!59522 (not call!8909))))

(declare-fun bm!8896 () Bool)

(declare-fun lt!44410 () tuple2!2282)

(assert (=> bm!8896 (= call!8907 (map!1220 (_2!1151 lt!44410)))))

(declare-fun bm!8897 () Bool)

(declare-fun call!8905 () Bool)

(assert (=> bm!8897 (= call!8915 call!8905)))

(declare-fun bm!8898 () Bool)

(declare-fun call!8916 () Unit!2725)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!35 (array!4120 array!4122 (_ BitVec 32) (_ BitVec 32) V!3083 V!3083 (_ BitVec 64) Int) Unit!2725)

(assert (=> bm!8898 (= call!8916 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!35 (_keys!4080 newMap!16) (_values!2383 newMap!16) (mask!6458 newMap!16) (extraKeys!2231 newMap!16) (zeroValue!2288 newMap!16) (minValue!2288 newMap!16) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) (defaultEntry!2400 newMap!16)))))

(declare-fun b!91266 () Bool)

(declare-fun lt!44400 () Unit!2725)

(declare-fun lt!44405 () Unit!2725)

(assert (=> b!91266 (= lt!44400 lt!44405)))

(assert (=> b!91266 (contains!780 call!8911 (select (arr!1960 (_keys!4080 newMap!16)) (index!3169 lt!44393)))))

(declare-fun lt!44387 () array!4122)

(declare-fun lemmaValidKeyInArrayIsInListMap!93 (array!4120 array!4122 (_ BitVec 32) (_ BitVec 32) V!3083 V!3083 (_ BitVec 32) Int) Unit!2725)

(assert (=> b!91266 (= lt!44405 (lemmaValidKeyInArrayIsInListMap!93 (_keys!4080 newMap!16) lt!44387 (mask!6458 newMap!16) (extraKeys!2231 newMap!16) (zeroValue!2288 newMap!16) (minValue!2288 newMap!16) (index!3169 lt!44393) (defaultEntry!2400 newMap!16)))))

(assert (=> b!91266 (= lt!44387 (array!4123 (store (arr!1961 (_values!2383 newMap!16)) (index!3169 lt!44393) (ValueCellFull!945 lt!44102)) (size!2208 (_values!2383 newMap!16))))))

(declare-fun lt!44403 () Unit!2725)

(declare-fun lt!44404 () Unit!2725)

(assert (=> b!91266 (= lt!44403 lt!44404)))

(declare-fun call!8908 () ListLongMap!1513)

(assert (=> b!91266 (= call!8908 call!8914)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!35 (array!4120 array!4122 (_ BitVec 32) (_ BitVec 32) V!3083 V!3083 (_ BitVec 32) (_ BitVec 64) V!3083 Int) Unit!2725)

(assert (=> b!91266 (= lt!44404 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!35 (_keys!4080 newMap!16) (_values!2383 newMap!16) (mask!6458 newMap!16) (extraKeys!2231 newMap!16) (zeroValue!2288 newMap!16) (minValue!2288 newMap!16) (index!3169 lt!44393) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102 (defaultEntry!2400 newMap!16)))))

(declare-fun lt!44398 () Unit!2725)

(declare-fun e!59524 () Unit!2725)

(assert (=> b!91266 (= lt!44398 e!59524)))

(declare-fun c!15165 () Bool)

(declare-fun call!8904 () Bool)

(assert (=> b!91266 (= c!15165 call!8904)))

(declare-fun e!59536 () tuple2!2282)

(assert (=> b!91266 (= e!59536 (tuple2!2283 true (LongMapFixedSize!799 (defaultEntry!2400 newMap!16) (mask!6458 newMap!16) (extraKeys!2231 newMap!16) (zeroValue!2288 newMap!16) (minValue!2288 newMap!16) (_size!448 newMap!16) (_keys!4080 newMap!16) (array!4123 (store (arr!1961 (_values!2383 newMap!16)) (index!3169 lt!44393) (ValueCellFull!945 lt!44102)) (size!2208 (_values!2383 newMap!16))) (_vacant!448 newMap!16))))))

(declare-fun b!91267 () Bool)

(declare-fun e!59535 () Bool)

(assert (=> b!91267 (= e!59535 ((_ is Undefined!257) lt!44409))))

(declare-fun c!15154 () Bool)

(declare-fun bm!8899 () Bool)

(declare-fun lt!44406 () SeekEntryResult!257)

(declare-fun lt!44413 () SeekEntryResult!257)

(declare-fun c!15160 () Bool)

(declare-fun call!8903 () Bool)

(declare-fun c!15156 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!8899 (= call!8903 (inRange!0 (ite c!15162 (ite c!15160 (index!3169 lt!44413) (ite c!15154 (index!3168 lt!44399) (index!3171 lt!44399))) (ite c!15165 (index!3169 lt!44406) (ite c!15156 (index!3168 lt!44409) (index!3171 lt!44409)))) (mask!6458 newMap!16)))))

(declare-fun b!91268 () Bool)

(assert (=> b!91268 (= e!59525 e!59531)))

(assert (=> b!91268 (= c!15164 (= (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!91269 () Bool)

(declare-fun Unit!2736 () Unit!2725)

(assert (=> b!91269 (= e!59524 Unit!2736)))

(declare-fun lt!44412 () Unit!2725)

(assert (=> b!91269 (= lt!44412 call!8916)))

(declare-fun call!8900 () SeekEntryResult!257)

(assert (=> b!91269 (= lt!44409 call!8900)))

(assert (=> b!91269 (= c!15156 ((_ is MissingZero!257) lt!44409))))

(assert (=> b!91269 e!59533))

(declare-fun lt!44401 () Unit!2725)

(assert (=> b!91269 (= lt!44401 lt!44412)))

(assert (=> b!91269 false))

(declare-fun bm!8900 () Bool)

(declare-fun c!15159 () Bool)

(assert (=> bm!8900 (= c!15159 c!15162)))

(declare-fun e!59529 () ListLongMap!1513)

(assert (=> bm!8900 (= call!8904 (contains!780 e!59529 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)))))

(declare-fun call!8899 () Bool)

(declare-fun bm!8901 () Bool)

(assert (=> bm!8901 (= call!8899 (arrayContainsKey!0 (_keys!4080 newMap!16) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun bm!8902 () Bool)

(assert (=> bm!8902 (= call!8898 call!8903)))

(declare-fun b!91270 () Bool)

(declare-fun e!59527 () tuple2!2282)

(declare-fun lt!44388 () tuple2!2282)

(assert (=> b!91270 (= e!59527 (tuple2!2283 (_1!1151 lt!44388) (_2!1151 lt!44388)))))

(declare-fun call!8896 () tuple2!2282)

(assert (=> b!91270 (= lt!44388 call!8896)))

(declare-fun b!91271 () Bool)

(declare-fun lt!44395 () Unit!2725)

(declare-fun e!59528 () Unit!2725)

(assert (=> b!91271 (= lt!44395 e!59528)))

(assert (=> b!91271 (= c!15160 call!8904)))

(assert (=> b!91271 (= e!59541 (tuple2!2283 false newMap!16))))

(declare-fun bm!8903 () Bool)

(assert (=> bm!8903 (= call!8912 (map!1220 newMap!16))))

(declare-fun b!91272 () Bool)

(declare-fun call!8901 () Bool)

(assert (=> b!91272 (= e!59540 (not call!8901))))

(declare-fun b!91273 () Bool)

(assert (=> b!91273 (= e!59534 ((_ is Undefined!257) lt!44399))))

(declare-fun e!59537 () Bool)

(declare-fun b!91274 () Bool)

(assert (=> b!91274 (= e!59537 (= (select (arr!1960 (_keys!4080 newMap!16)) (index!3169 lt!44413)) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)))))

(declare-fun b!91275 () Bool)

(declare-fun c!15157 () Bool)

(assert (=> b!91275 (= c!15157 ((_ is MissingVacant!257) lt!44393))))

(assert (=> b!91275 (= e!59541 e!59527)))

(declare-fun bm!8904 () Bool)

(declare-fun call!8906 () SeekEntryResult!257)

(declare-fun call!8913 () SeekEntryResult!257)

(assert (=> bm!8904 (= call!8906 call!8913)))

(declare-fun b!91276 () Bool)

(declare-fun e!59542 () Bool)

(assert (=> b!91276 (= e!59542 (= call!8907 (+!127 call!8912 (tuple2!2285 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102))))))

(declare-fun b!91277 () Bool)

(assert (=> b!91277 (= e!59526 e!59542)))

(declare-fun res!46487 () Bool)

(assert (=> b!91277 (= res!46487 (contains!780 call!8907 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)))))

(assert (=> b!91277 (=> (not res!46487) (not e!59542))))

(declare-fun b!91278 () Bool)

(assert (=> b!91278 (= e!59529 (getCurrentListMap!454 (_keys!4080 newMap!16) (_values!2383 newMap!16) (mask!6458 newMap!16) (extraKeys!2231 newMap!16) (zeroValue!2288 newMap!16) (minValue!2288 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2400 newMap!16)))))

(declare-fun e!59523 () ListLongMap!1513)

(declare-fun call!8902 () ListLongMap!1513)

(declare-fun b!91279 () Bool)

(assert (=> b!91279 (= e!59523 (ite c!15164 call!8917 call!8902))))

(declare-fun b!91280 () Bool)

(declare-fun e!59532 () Bool)

(assert (=> b!91280 (= e!59532 (not call!8909))))

(declare-fun b!91281 () Bool)

(declare-fun res!46486 () Bool)

(assert (=> b!91281 (= res!46486 (= (select (arr!1960 (_keys!4080 newMap!16)) (index!3171 lt!44409)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!91281 (=> (not res!46486) (not e!59532))))

(declare-fun b!91282 () Bool)

(declare-fun Unit!2737 () Unit!2725)

(assert (=> b!91282 (= e!59528 Unit!2737)))

(declare-fun lt!44407 () Unit!2725)

(assert (=> b!91282 (= lt!44407 call!8910)))

(assert (=> b!91282 (= lt!44413 call!8906)))

(declare-fun res!46488 () Bool)

(assert (=> b!91282 (= res!46488 ((_ is Found!257) lt!44413))))

(assert (=> b!91282 (=> (not res!46488) (not e!59537))))

(assert (=> b!91282 e!59537))

(declare-fun lt!44408 () Unit!2725)

(assert (=> b!91282 (= lt!44408 lt!44407)))

(assert (=> b!91282 false))

(declare-fun b!91283 () Bool)

(assert (=> b!91283 (= e!59529 call!8911)))

(declare-fun b!91284 () Bool)

(declare-fun res!46475 () Bool)

(assert (=> b!91284 (= res!46475 call!8905)))

(assert (=> b!91284 (=> (not res!46475) (not e!59537))))

(declare-fun b!91285 () Bool)

(declare-fun lt!44390 () Unit!2725)

(assert (=> b!91285 (= e!59528 lt!44390)))

(assert (=> b!91285 (= lt!44390 call!8916)))

(assert (=> b!91285 (= lt!44399 call!8906)))

(assert (=> b!91285 (= c!15154 ((_ is MissingZero!257) lt!44399))))

(assert (=> b!91285 e!59538))

(declare-fun bm!8905 () Bool)

(assert (=> bm!8905 (= call!8901 call!8899)))

(declare-fun bm!8906 () Bool)

(assert (=> bm!8906 (= call!8908 (+!127 e!59523 (ite c!15161 (ite c!15164 (tuple2!2285 #b0000000000000000000000000000000000000000000000000000000000000000 lt!44102) (tuple2!2285 #b1000000000000000000000000000000000000000000000000000000000000000 lt!44102)) (tuple2!2285 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102))))))

(declare-fun c!15155 () Bool)

(assert (=> bm!8906 (= c!15155 c!15161)))

(declare-fun bm!8907 () Bool)

(assert (=> bm!8907 (= call!8919 call!8898)))

(declare-fun b!91286 () Bool)

(assert (=> b!91286 (= e!59523 (getCurrentListMap!454 (_keys!4080 newMap!16) (_values!2383 newMap!16) (mask!6458 newMap!16) (extraKeys!2231 newMap!16) (zeroValue!2288 newMap!16) (minValue!2288 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2400 newMap!16)))))

(declare-fun b!91287 () Bool)

(declare-fun e!59543 () Bool)

(assert (=> b!91287 (= e!59543 e!59526)))

(declare-fun c!15153 () Bool)

(assert (=> b!91287 (= c!15153 (_1!1151 lt!44410))))

(declare-fun b!91288 () Bool)

(assert (=> b!91288 (= e!59530 (not call!8901))))

(declare-fun b!91289 () Bool)

(declare-fun c!15166 () Bool)

(assert (=> b!91289 (= c!15166 ((_ is MissingVacant!257) lt!44399))))

(assert (=> b!91289 (= e!59538 e!59534)))

(declare-fun b!91290 () Bool)

(declare-fun res!46478 () Bool)

(assert (=> b!91290 (= res!46478 (= (select (arr!1960 (_keys!4080 newMap!16)) (index!3171 lt!44399)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!91290 (=> (not res!46478) (not e!59530))))

(declare-fun b!91291 () Bool)

(assert (=> b!91291 (= e!59527 e!59536)))

(declare-fun c!15158 () Bool)

(assert (=> b!91291 (= c!15158 ((_ is MissingZero!257) lt!44393))))

(declare-fun bm!8908 () Bool)

(declare-fun updateHelperNewKey!35 (LongMapFixedSize!798 (_ BitVec 64) V!3083 (_ BitVec 32)) tuple2!2282)

(assert (=> bm!8908 (= call!8896 (updateHelperNewKey!35 newMap!16 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102 (ite c!15157 (index!3171 lt!44393) (index!3168 lt!44393))))))

(declare-fun b!91292 () Bool)

(declare-fun lt!44389 () Unit!2725)

(assert (=> b!91292 (= e!59524 lt!44389)))

(assert (=> b!91292 (= lt!44389 call!8910)))

(assert (=> b!91292 (= lt!44406 call!8900)))

(declare-fun res!46482 () Bool)

(assert (=> b!91292 (= res!46482 ((_ is Found!257) lt!44406))))

(assert (=> b!91292 (=> (not res!46482) (not e!59539))))

(assert (=> b!91292 e!59539))

(declare-fun d!24045 () Bool)

(assert (=> d!24045 e!59543))

(declare-fun res!46484 () Bool)

(assert (=> d!24045 (=> (not res!46484) (not e!59543))))

(assert (=> d!24045 (= res!46484 (valid!353 (_2!1151 lt!44410)))))

(assert (=> d!24045 (= lt!44410 e!59525)))

(assert (=> d!24045 (= c!15161 (= (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) (bvneg (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355))))))

(assert (=> d!24045 (valid!353 newMap!16)))

(assert (=> d!24045 (= (update!132 newMap!16 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) lt!44102) lt!44410)))

(declare-fun bm!8909 () Bool)

(assert (=> bm!8909 (= call!8897 call!8908)))

(declare-fun b!91293 () Bool)

(declare-fun lt!44396 () Unit!2725)

(declare-fun lt!44391 () Unit!2725)

(assert (=> b!91293 (= lt!44396 lt!44391)))

(assert (=> b!91293 (= call!8897 call!8902)))

(declare-fun lt!44411 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!35 (array!4120 array!4122 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3083 V!3083 V!3083 Int) Unit!2725)

(assert (=> b!91293 (= lt!44391 (lemmaChangeZeroKeyThenAddPairToListMap!35 (_keys!4080 newMap!16) (_values!2383 newMap!16) (mask!6458 newMap!16) (extraKeys!2231 newMap!16) lt!44411 (zeroValue!2288 newMap!16) lt!44102 (minValue!2288 newMap!16) (defaultEntry!2400 newMap!16)))))

(assert (=> b!91293 (= lt!44411 (bvor (extraKeys!2231 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!91293 (= e!59531 (tuple2!2283 true (LongMapFixedSize!799 (defaultEntry!2400 newMap!16) (mask!6458 newMap!16) (bvor (extraKeys!2231 newMap!16) #b00000000000000000000000000000001) lt!44102 (minValue!2288 newMap!16) (_size!448 newMap!16) (_keys!4080 newMap!16) (_values!2383 newMap!16) (_vacant!448 newMap!16))))))

(declare-fun bm!8910 () Bool)

(assert (=> bm!8910 (= call!8905 call!8903)))

(declare-fun bm!8911 () Bool)

(assert (=> bm!8911 (= call!8918 (getCurrentListMap!454 (_keys!4080 newMap!16) (ite (or c!15161 c!15162) (_values!2383 newMap!16) lt!44387) (mask!6458 newMap!16) (ite (and c!15161 c!15164) lt!44411 (extraKeys!2231 newMap!16)) (ite (and c!15161 c!15164) lt!44102 (zeroValue!2288 newMap!16)) (minValue!2288 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2400 newMap!16)))))

(declare-fun b!91294 () Bool)

(declare-fun lt!44394 () tuple2!2282)

(assert (=> b!91294 (= lt!44394 call!8896)))

(assert (=> b!91294 (= e!59536 (tuple2!2283 (_1!1151 lt!44394) (_2!1151 lt!44394)))))

(declare-fun b!91295 () Bool)

(assert (=> b!91295 (= e!59535 e!59532)))

(declare-fun res!46480 () Bool)

(assert (=> b!91295 (= res!46480 call!8919)))

(assert (=> b!91295 (=> (not res!46480) (not e!59532))))

(declare-fun b!91296 () Bool)

(assert (=> b!91296 (= e!59539 (= (select (arr!1960 (_keys!4080 newMap!16)) (index!3169 lt!44406)) (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355)))))

(declare-fun bm!8912 () Bool)

(assert (=> bm!8912 (= call!8900 call!8913)))

(declare-fun bm!8913 () Bool)

(assert (=> bm!8913 (= call!8913 (seekEntryOrOpen!0 (select (arr!1960 (_keys!4080 (v!2714 (underlying!312 thiss!992)))) from!355) (_keys!4080 newMap!16) (mask!6458 newMap!16)))))

(declare-fun b!91297 () Bool)

(declare-fun c!15163 () Bool)

(assert (=> b!91297 (= c!15163 ((_ is MissingVacant!257) lt!44409))))

(assert (=> b!91297 (= e!59533 e!59535)))

(declare-fun bm!8914 () Bool)

(assert (=> bm!8914 (= call!8909 call!8899)))

(declare-fun bm!8915 () Bool)

(assert (=> bm!8915 (= call!8902 call!8918)))

(declare-fun bm!8916 () Bool)

(assert (=> bm!8916 (= call!8917 call!8914)))

(assert (= (and d!24045 c!15161) b!91268))

(assert (= (and d!24045 (not c!15161)) b!91261))

(assert (= (and b!91268 c!15164) b!91293))

(assert (= (and b!91268 (not c!15164)) b!91260))

(assert (= (or b!91293 b!91260) bm!8915))

(assert (= (or b!91293 b!91260) bm!8916))

(assert (= (or b!91293 b!91260) bm!8909))

(assert (= (and b!91261 c!15162) b!91271))

(assert (= (and b!91261 (not c!15162)) b!91275))

(assert (= (and b!91271 c!15160) b!91282))

(assert (= (and b!91271 (not c!15160)) b!91285))

(assert (= (and b!91282 res!46488) b!91284))

(assert (= (and b!91284 res!46475) b!91274))

(assert (= (and b!91285 c!15154) b!91259))

(assert (= (and b!91285 (not c!15154)) b!91289))

(assert (= (and b!91259 res!46476) b!91263))

(assert (= (and b!91263 res!46481) b!91272))

(assert (= (and b!91289 c!15166) b!91262))

(assert (= (and b!91289 (not c!15166)) b!91273))

(assert (= (and b!91262 res!46479) b!91290))

(assert (= (and b!91290 res!46478) b!91288))

(assert (= (or b!91259 b!91262) bm!8897))

(assert (= (or b!91272 b!91288) bm!8905))

(assert (= (or b!91284 bm!8897) bm!8910))

(assert (= (or b!91282 b!91285) bm!8904))

(assert (= (and b!91275 c!15157) b!91270))

(assert (= (and b!91275 (not c!15157)) b!91291))

(assert (= (and b!91291 c!15158) b!91294))

(assert (= (and b!91291 (not c!15158)) b!91266))

(assert (= (and b!91266 c!15165) b!91292))

(assert (= (and b!91266 (not c!15165)) b!91269))

(assert (= (and b!91292 res!46482) b!91257))

(assert (= (and b!91257 res!46485) b!91296))

(assert (= (and b!91269 c!15156) b!91258))

(assert (= (and b!91269 (not c!15156)) b!91297))

(assert (= (and b!91258 res!46477) b!91256))

(assert (= (and b!91256 res!46483) b!91265))

(assert (= (and b!91297 c!15163) b!91295))

(assert (= (and b!91297 (not c!15163)) b!91267))

(assert (= (and b!91295 res!46480) b!91281))

(assert (= (and b!91281 res!46486) b!91280))

(assert (= (or b!91258 b!91295) bm!8907))

(assert (= (or b!91265 b!91280) bm!8914))

(assert (= (or b!91257 bm!8907) bm!8902))

(assert (= (or b!91292 b!91269) bm!8912))

(assert (= (or b!91270 b!91294) bm!8908))

(assert (= (or b!91285 b!91269) bm!8898))

(assert (= (or bm!8910 bm!8902) bm!8899))

(assert (= (or b!91282 b!91292) bm!8895))

(assert (= (or bm!8904 bm!8912) bm!8913))

(assert (= (or bm!8905 bm!8914) bm!8901))

(assert (= (or b!91271 b!91266) bm!8893))

(assert (= (or b!91271 b!91266) bm!8900))

(assert (= (and bm!8900 c!15159) b!91283))

(assert (= (and bm!8900 (not c!15159)) b!91278))

(assert (= (or bm!8916 b!91266) bm!8894))

(assert (= (or bm!8915 bm!8893) bm!8911))

(assert (= (or bm!8909 b!91266) bm!8906))

(assert (= (and bm!8906 c!15155) b!91279))

(assert (= (and bm!8906 (not c!15155)) b!91286))

(assert (= (and d!24045 res!46484) b!91287))

(assert (= (and b!91287 c!15153) b!91277))

(assert (= (and b!91287 (not c!15153)) b!91264))

(assert (= (and b!91277 res!46487) b!91276))

(assert (= (or b!91277 b!91276 b!91264) bm!8896))

(assert (= (or b!91276 b!91264) bm!8903))

(assert (=> bm!8908 m!97387))

(declare-fun m!97783 () Bool)

(assert (=> bm!8908 m!97783))

(declare-fun m!97785 () Bool)

(assert (=> bm!8894 m!97785))

(declare-fun m!97787 () Bool)

(assert (=> bm!8894 m!97787))

(assert (=> bm!8903 m!97377))

(declare-fun m!97789 () Bool)

(assert (=> b!91293 m!97789))

(declare-fun m!97791 () Bool)

(assert (=> b!91274 m!97791))

(declare-fun m!97793 () Bool)

(assert (=> bm!8906 m!97793))

(declare-fun m!97795 () Bool)

(assert (=> b!91290 m!97795))

(assert (=> b!91278 m!97721))

(declare-fun m!97797 () Bool)

(assert (=> b!91266 m!97797))

(assert (=> b!91266 m!97797))

(declare-fun m!97799 () Bool)

(assert (=> b!91266 m!97799))

(assert (=> b!91266 m!97785))

(assert (=> b!91266 m!97387))

(declare-fun m!97801 () Bool)

(assert (=> b!91266 m!97801))

(declare-fun m!97803 () Bool)

(assert (=> b!91266 m!97803))

(declare-fun m!97805 () Bool)

(assert (=> d!24045 m!97805))

(assert (=> d!24045 m!97375))

(declare-fun m!97807 () Bool)

(assert (=> bm!8911 m!97807))

(declare-fun m!97809 () Bool)

(assert (=> b!91256 m!97809))

(declare-fun m!97811 () Bool)

(assert (=> bm!8899 m!97811))

(declare-fun m!97813 () Bool)

(assert (=> b!91276 m!97813))

(assert (=> bm!8900 m!97387))

(declare-fun m!97815 () Bool)

(assert (=> bm!8900 m!97815))

(declare-fun m!97817 () Bool)

(assert (=> b!91263 m!97817))

(declare-fun m!97819 () Bool)

(assert (=> b!91296 m!97819))

(assert (=> b!91286 m!97721))

(assert (=> b!91277 m!97387))

(declare-fun m!97821 () Bool)

(assert (=> b!91277 m!97821))

(declare-fun m!97823 () Bool)

(assert (=> b!91281 m!97823))

(assert (=> bm!8898 m!97387))

(declare-fun m!97825 () Bool)

(assert (=> bm!8898 m!97825))

(assert (=> bm!8895 m!97387))

(declare-fun m!97827 () Bool)

(assert (=> bm!8895 m!97827))

(declare-fun m!97829 () Bool)

(assert (=> bm!8896 m!97829))

(assert (=> b!91261 m!97387))

(declare-fun m!97831 () Bool)

(assert (=> b!91261 m!97831))

(assert (=> bm!8913 m!97387))

(assert (=> bm!8913 m!97831))

(assert (=> bm!8901 m!97387))

(declare-fun m!97833 () Bool)

(assert (=> bm!8901 m!97833))

(declare-fun m!97835 () Bool)

(assert (=> b!91260 m!97835))

(assert (=> b!90896 d!24045))

(declare-fun mapNonEmpty!3559 () Bool)

(declare-fun mapRes!3559 () Bool)

(declare-fun tp!9229 () Bool)

(declare-fun e!59549 () Bool)

(assert (=> mapNonEmpty!3559 (= mapRes!3559 (and tp!9229 e!59549))))

(declare-fun mapValue!3559 () ValueCell!945)

(declare-fun mapKey!3559 () (_ BitVec 32))

(declare-fun mapRest!3559 () (Array (_ BitVec 32) ValueCell!945))

(assert (=> mapNonEmpty!3559 (= mapRest!3549 (store mapRest!3559 mapKey!3559 mapValue!3559))))

(declare-fun b!91305 () Bool)

(declare-fun e!59548 () Bool)

(assert (=> b!91305 (= e!59548 tp_is_empty!2577)))

(declare-fun condMapEmpty!3559 () Bool)

(declare-fun mapDefault!3559 () ValueCell!945)

(assert (=> mapNonEmpty!3550 (= condMapEmpty!3559 (= mapRest!3549 ((as const (Array (_ BitVec 32) ValueCell!945)) mapDefault!3559)))))

(assert (=> mapNonEmpty!3550 (= tp!9211 (and e!59548 mapRes!3559))))

(declare-fun mapIsEmpty!3559 () Bool)

(assert (=> mapIsEmpty!3559 mapRes!3559))

(declare-fun b!91304 () Bool)

(assert (=> b!91304 (= e!59549 tp_is_empty!2577)))

(assert (= (and mapNonEmpty!3550 condMapEmpty!3559) mapIsEmpty!3559))

(assert (= (and mapNonEmpty!3550 (not condMapEmpty!3559)) mapNonEmpty!3559))

(assert (= (and mapNonEmpty!3559 ((_ is ValueCellFull!945) mapValue!3559)) b!91304))

(assert (= (and mapNonEmpty!3550 ((_ is ValueCellFull!945) mapDefault!3559)) b!91305))

(declare-fun m!97837 () Bool)

(assert (=> mapNonEmpty!3559 m!97837))

(declare-fun mapNonEmpty!3560 () Bool)

(declare-fun mapRes!3560 () Bool)

(declare-fun tp!9230 () Bool)

(declare-fun e!59551 () Bool)

(assert (=> mapNonEmpty!3560 (= mapRes!3560 (and tp!9230 e!59551))))

(declare-fun mapValue!3560 () ValueCell!945)

(declare-fun mapKey!3560 () (_ BitVec 32))

(declare-fun mapRest!3560 () (Array (_ BitVec 32) ValueCell!945))

(assert (=> mapNonEmpty!3560 (= mapRest!3550 (store mapRest!3560 mapKey!3560 mapValue!3560))))

(declare-fun b!91307 () Bool)

(declare-fun e!59550 () Bool)

(assert (=> b!91307 (= e!59550 tp_is_empty!2577)))

(declare-fun condMapEmpty!3560 () Bool)

(declare-fun mapDefault!3560 () ValueCell!945)

(assert (=> mapNonEmpty!3549 (= condMapEmpty!3560 (= mapRest!3550 ((as const (Array (_ BitVec 32) ValueCell!945)) mapDefault!3560)))))

(assert (=> mapNonEmpty!3549 (= tp!9214 (and e!59550 mapRes!3560))))

(declare-fun mapIsEmpty!3560 () Bool)

(assert (=> mapIsEmpty!3560 mapRes!3560))

(declare-fun b!91306 () Bool)

(assert (=> b!91306 (= e!59551 tp_is_empty!2577)))

(assert (= (and mapNonEmpty!3549 condMapEmpty!3560) mapIsEmpty!3560))

(assert (= (and mapNonEmpty!3549 (not condMapEmpty!3560)) mapNonEmpty!3560))

(assert (= (and mapNonEmpty!3560 ((_ is ValueCellFull!945) mapValue!3560)) b!91306))

(assert (= (and mapNonEmpty!3549 ((_ is ValueCellFull!945) mapDefault!3560)) b!91307))

(declare-fun m!97839 () Bool)

(assert (=> mapNonEmpty!3560 m!97839))

(declare-fun b_lambda!4025 () Bool)

(assert (= b_lambda!4017 (or (and b!90907 b_free!2321) (and b!90898 b_free!2323 (= (defaultEntry!2400 newMap!16) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992))))) b_lambda!4025)))

(declare-fun b_lambda!4027 () Bool)

(assert (= b_lambda!4021 (or (and b!90907 b_free!2321) (and b!90898 b_free!2323 (= (defaultEntry!2400 newMap!16) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992))))) b_lambda!4027)))

(declare-fun b_lambda!4029 () Bool)

(assert (= b_lambda!4019 (or (and b!90907 b_free!2321) (and b!90898 b_free!2323 (= (defaultEntry!2400 newMap!16) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992))))) b_lambda!4029)))

(declare-fun b_lambda!4031 () Bool)

(assert (= b_lambda!4023 (or (and b!90907 b_free!2321) (and b!90898 b_free!2323 (= (defaultEntry!2400 newMap!16) (defaultEntry!2400 (v!2714 (underlying!312 thiss!992))))) b_lambda!4031)))

(check-sat (not b!91114) (not bm!8901) (not bm!8834) (not b_lambda!4027) (not b!91133) (not d!24007) tp_is_empty!2577 (not b_lambda!4015) (not b!91161) (not b!91278) (not b!91142) (not b!91015) (not bm!8896) (not b!91139) (not b!91151) (not b!91104) (not b!91135) (not d!24003) (not d!23995) (not b!91061) (not b!91003) (not b!91266) (not b!91293) (not bm!8908) (not bm!8906) (not b!91150) (not b!91107) (not bm!8913) (not d!24043) (not mapNonEmpty!3559) (not b!91162) b_and!5523 (not b!91261) (not bm!8898) (not mapNonEmpty!3560) (not bm!8835) (not d!24019) (not b!90990) (not b_lambda!4031) (not b!91146) (not b!91004) (not d!24035) (not bm!8900) (not d!24015) (not b!91132) (not d!24005) (not b!91057) (not b!91118) (not bm!8899) (not b_next!2321) (not d!24011) (not bm!8903) (not d!24023) (not b!91141) (not b_lambda!4029) (not d!24039) (not b!91049) (not d!24001) (not b!91014) (not d!23999) (not b!91002) (not d!23991) (not b!91277) (not bm!8843) (not b!91053) (not d!24029) (not b!91022) (not bm!8842) (not b!91020) (not b!91131) (not b!91127) (not b!91276) (not b!91144) (not b!91109) (not b!91128) (not b_next!2323) (not b!91051) (not b!91048) (not b!91052) (not d!24021) (not b!91056) (not b!91136) (not d!24017) (not b!91110) (not b!91060) (not bm!8841) (not b_lambda!4025) (not b!91260) (not d!24045) (not b!91013) (not bm!8813) (not b!91169) (not bm!8895) (not d!23989) (not b!90985) (not b!91134) (not b!91021) (not b!91171) (not b!91023) b_and!5521 (not b!91286) (not bm!8911) (not b!91055) (not bm!8816) (not bm!8833) (not d!24013) (not bm!8836) (not b!91119) (not b!91112) (not d!24037) (not b!91129) (not d!24009) (not b!91126) (not bm!8894) (not b!91130) (not b!91125) (not bm!8840))
(check-sat b_and!5521 b_and!5523 (not b_next!2321) (not b_next!2323))
