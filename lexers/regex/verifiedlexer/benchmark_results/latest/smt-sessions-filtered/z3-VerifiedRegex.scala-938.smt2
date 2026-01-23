; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47782 () Bool)

(assert start!47782)

(declare-fun b!521354 () Bool)

(declare-fun b_free!13665 () Bool)

(declare-fun b_next!13681 () Bool)

(assert (=> b!521354 (= b_free!13665 (not b_next!13681))))

(declare-fun tp!162129 () Bool)

(declare-fun b_and!51159 () Bool)

(assert (=> b!521354 (= tp!162129 b_and!51159)))

(declare-fun b!521359 () Bool)

(declare-fun b_free!13667 () Bool)

(declare-fun b_next!13683 () Bool)

(assert (=> b!521359 (= b_free!13667 (not b_next!13683))))

(declare-fun tp!162126 () Bool)

(declare-fun b_and!51161 () Bool)

(assert (=> b!521359 (= tp!162126 b_and!51161)))

(declare-datatypes ((C!3316 0))(
  ( (C!3317 (val!1884 Int)) )
))
(declare-datatypes ((Regex!1197 0))(
  ( (ElementMatch!1197 (c!100718 C!3316)) (Concat!2099 (regOne!2906 Regex!1197) (regTwo!2906 Regex!1197)) (EmptyExpr!1197) (Star!1197 (reg!1526 Regex!1197)) (EmptyLang!1197) (Union!1197 (regOne!2907 Regex!1197) (regTwo!2907 Regex!1197)) )
))
(declare-datatypes ((tuple2!5912 0))(
  ( (tuple2!5913 (_1!3172 Regex!1197) (_2!3172 C!3316)) )
))
(declare-datatypes ((tuple2!5914 0))(
  ( (tuple2!5915 (_1!3173 tuple2!5912) (_2!3173 Regex!1197)) )
))
(declare-datatypes ((List!4832 0))(
  ( (Nil!4822) (Cons!4822 (h!10223 tuple2!5914) (t!73422 List!4832)) )
))
(declare-datatypes ((array!2093 0))(
  ( (array!2094 (arr!958 (Array (_ BitVec 32) (_ BitVec 64))) (size!3934 (_ BitVec 32))) )
))
(declare-datatypes ((array!2095 0))(
  ( (array!2096 (arr!959 (Array (_ BitVec 32) List!4832)) (size!3935 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1074 0))(
  ( (LongMapFixedSize!1075 (defaultEntry!893 Int) (mask!2007 (_ BitVec 32)) (extraKeys!784 (_ BitVec 32)) (zeroValue!794 List!4832) (minValue!794 List!4832) (_size!1183 (_ BitVec 32)) (_keys!831 array!2093) (_values!816 array!2095) (_vacant!598 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2089 0))(
  ( (Cell!2090 (v!15907 LongMapFixedSize!1074)) )
))
(declare-datatypes ((MutLongMap!537 0))(
  ( (LongMap!537 (underlying!1253 Cell!2089)) (MutLongMapExt!536 (__x!3504 Int)) )
))
(declare-datatypes ((Cell!2091 0))(
  ( (Cell!2092 (v!15908 MutLongMap!537)) )
))
(declare-datatypes ((Hashable!509 0))(
  ( (HashableExt!508 (__x!3505 Int)) )
))
(declare-datatypes ((MutableMap!509 0))(
  ( (MutableMapExt!508 (__x!3506 Int)) (HashMap!509 (underlying!1254 Cell!2091) (hashF!2417 Hashable!509) (_size!1184 (_ BitVec 32)) (defaultValue!660 Int)) )
))
(declare-datatypes ((Cache!290 0))(
  ( (Cache!291 (cache!896 MutableMap!509)) )
))
(declare-fun thiss!28494 () Cache!290)

(declare-fun e!312554 () Bool)

(declare-fun tp!162130 () Bool)

(declare-fun e!312553 () Bool)

(declare-fun tp!162128 () Bool)

(declare-fun array_inv!697 (array!2093) Bool)

(declare-fun array_inv!698 (array!2095) Bool)

(assert (=> b!521354 (= e!312554 (and tp!162129 tp!162130 tp!162128 (array_inv!697 (_keys!831 (v!15907 (underlying!1253 (v!15908 (underlying!1254 (cache!896 thiss!28494))))))) (array_inv!698 (_values!816 (v!15907 (underlying!1253 (v!15908 (underlying!1254 (cache!896 thiss!28494))))))) e!312553))))

(declare-fun b!521356 () Bool)

(declare-fun e!312549 () Bool)

(declare-fun e!312556 () Bool)

(assert (=> b!521356 (= e!312549 e!312556)))

(declare-fun mapIsEmpty!2078 () Bool)

(declare-fun mapRes!2078 () Bool)

(assert (=> mapIsEmpty!2078 mapRes!2078))

(declare-fun b!521357 () Bool)

(declare-fun tp!162125 () Bool)

(assert (=> b!521357 (= e!312553 (and tp!162125 mapRes!2078))))

(declare-fun condMapEmpty!2078 () Bool)

(declare-fun mapDefault!2078 () List!4832)

(assert (=> b!521357 (= condMapEmpty!2078 (= (arr!959 (_values!816 (v!15907 (underlying!1253 (v!15908 (underlying!1254 (cache!896 thiss!28494))))))) ((as const (Array (_ BitVec 32) List!4832)) mapDefault!2078)))))

(declare-fun b!521358 () Bool)

(declare-fun e!312552 () Bool)

(declare-fun e!312550 () Bool)

(assert (=> b!521358 (= e!312552 e!312550)))

(declare-fun b!521355 () Bool)

(declare-fun e!312551 () Bool)

(declare-fun lt!217127 () MutLongMap!537)

(get-info :version)

(assert (=> b!521355 (= e!312551 (and e!312552 ((_ is LongMap!537) lt!217127)))))

(assert (=> b!521355 (= lt!217127 (v!15908 (underlying!1254 (cache!896 thiss!28494))))))

(assert (=> start!47782 (not ((_ is HashMap!509) (cache!896 thiss!28494)))))

(declare-fun inv!6095 (Cache!290) Bool)

(assert (=> start!47782 (and (inv!6095 thiss!28494) e!312549)))

(declare-fun mapNonEmpty!2078 () Bool)

(declare-fun tp!162127 () Bool)

(declare-fun tp!162131 () Bool)

(assert (=> mapNonEmpty!2078 (= mapRes!2078 (and tp!162127 tp!162131))))

(declare-fun mapRest!2078 () (Array (_ BitVec 32) List!4832))

(declare-fun mapKey!2078 () (_ BitVec 32))

(declare-fun mapValue!2078 () List!4832)

(assert (=> mapNonEmpty!2078 (= (arr!959 (_values!816 (v!15907 (underlying!1253 (v!15908 (underlying!1254 (cache!896 thiss!28494))))))) (store mapRest!2078 mapKey!2078 mapValue!2078))))

(assert (=> b!521359 (= e!312556 (and e!312551 tp!162126))))

(declare-fun b!521360 () Bool)

(assert (=> b!521360 (= e!312550 e!312554)))

(assert (= (and b!521357 condMapEmpty!2078) mapIsEmpty!2078))

(assert (= (and b!521357 (not condMapEmpty!2078)) mapNonEmpty!2078))

(assert (= b!521354 b!521357))

(assert (= b!521360 b!521354))

(assert (= b!521358 b!521360))

(assert (= (and b!521355 ((_ is LongMap!537) (v!15908 (underlying!1254 (cache!896 thiss!28494))))) b!521358))

(assert (= b!521359 b!521355))

(assert (= (and b!521356 ((_ is HashMap!509) (cache!896 thiss!28494))) b!521359))

(assert (= start!47782 b!521356))

(declare-fun m!767877 () Bool)

(assert (=> b!521354 m!767877))

(declare-fun m!767879 () Bool)

(assert (=> b!521354 m!767879))

(declare-fun m!767881 () Bool)

(assert (=> start!47782 m!767881))

(declare-fun m!767883 () Bool)

(assert (=> mapNonEmpty!2078 m!767883))

(check-sat (not start!47782) (not mapNonEmpty!2078) (not b_next!13681) (not b!521354) b_and!51161 (not b_next!13683) (not b!521357) b_and!51159)
(check-sat b_and!51159 b_and!51161 (not b_next!13683) (not b_next!13681))
(get-model)

(declare-fun d!186139 () Bool)

(assert (=> d!186139 (= (array_inv!697 (_keys!831 (v!15907 (underlying!1253 (v!15908 (underlying!1254 (cache!896 thiss!28494))))))) (bvsge (size!3934 (_keys!831 (v!15907 (underlying!1253 (v!15908 (underlying!1254 (cache!896 thiss!28494))))))) #b00000000000000000000000000000000))))

(assert (=> b!521354 d!186139))

(declare-fun d!186141 () Bool)

(assert (=> d!186141 (= (array_inv!698 (_values!816 (v!15907 (underlying!1253 (v!15908 (underlying!1254 (cache!896 thiss!28494))))))) (bvsge (size!3935 (_values!816 (v!15907 (underlying!1253 (v!15908 (underlying!1254 (cache!896 thiss!28494))))))) #b00000000000000000000000000000000))))

(assert (=> b!521354 d!186141))

(declare-fun d!186143 () Bool)

(declare-fun res!221456 () Bool)

(declare-fun e!312559 () Bool)

(assert (=> d!186143 (=> (not res!221456) (not e!312559))))

(assert (=> d!186143 (= res!221456 ((_ is HashMap!509) (cache!896 thiss!28494)))))

(assert (=> d!186143 (= (inv!6095 thiss!28494) e!312559)))

(declare-fun b!521363 () Bool)

(declare-fun validCacheMap!33 (MutableMap!509) Bool)

(assert (=> b!521363 (= e!312559 (validCacheMap!33 (cache!896 thiss!28494)))))

(assert (= (and d!186143 res!221456) b!521363))

(declare-fun m!767885 () Bool)

(assert (=> b!521363 m!767885))

(assert (=> start!47782 d!186143))

(declare-fun tp!162140 () Bool)

(declare-fun tp!162138 () Bool)

(declare-fun b!521368 () Bool)

(declare-fun tp_is_empty!2783 () Bool)

(declare-fun tp!162139 () Bool)

(declare-fun e!312562 () Bool)

(assert (=> b!521368 (= e!312562 (and tp!162138 tp_is_empty!2783 tp!162139 tp!162140))))

(assert (=> b!521354 (= tp!162130 e!312562)))

(assert (= (and b!521354 ((_ is Cons!4822) (zeroValue!794 (v!15907 (underlying!1253 (v!15908 (underlying!1254 (cache!896 thiss!28494)))))))) b!521368))

(declare-fun tp!162142 () Bool)

(declare-fun b!521369 () Bool)

(declare-fun e!312563 () Bool)

(declare-fun tp!162143 () Bool)

(declare-fun tp!162141 () Bool)

(assert (=> b!521369 (= e!312563 (and tp!162141 tp_is_empty!2783 tp!162142 tp!162143))))

(assert (=> b!521354 (= tp!162128 e!312563)))

(assert (= (and b!521354 ((_ is Cons!4822) (minValue!794 (v!15907 (underlying!1253 (v!15908 (underlying!1254 (cache!896 thiss!28494)))))))) b!521369))

(declare-fun mapNonEmpty!2081 () Bool)

(declare-fun mapRes!2081 () Bool)

(declare-fun tp!162163 () Bool)

(declare-fun e!312569 () Bool)

(assert (=> mapNonEmpty!2081 (= mapRes!2081 (and tp!162163 e!312569))))

(declare-fun mapKey!2081 () (_ BitVec 32))

(declare-fun mapValue!2081 () List!4832)

(declare-fun mapRest!2081 () (Array (_ BitVec 32) List!4832))

(assert (=> mapNonEmpty!2081 (= mapRest!2078 (store mapRest!2081 mapKey!2081 mapValue!2081))))

(declare-fun condMapEmpty!2081 () Bool)

(declare-fun mapDefault!2081 () List!4832)

(assert (=> mapNonEmpty!2078 (= condMapEmpty!2081 (= mapRest!2078 ((as const (Array (_ BitVec 32) List!4832)) mapDefault!2081)))))

(declare-fun e!312568 () Bool)

(assert (=> mapNonEmpty!2078 (= tp!162127 (and e!312568 mapRes!2081))))

(declare-fun mapIsEmpty!2081 () Bool)

(assert (=> mapIsEmpty!2081 mapRes!2081))

(declare-fun tp!162164 () Bool)

(declare-fun tp!162162 () Bool)

(declare-fun tp!162159 () Bool)

(declare-fun b!521377 () Bool)

(assert (=> b!521377 (= e!312568 (and tp!162162 tp_is_empty!2783 tp!162159 tp!162164))))

(declare-fun tp!162158 () Bool)

(declare-fun tp!162160 () Bool)

(declare-fun b!521376 () Bool)

(declare-fun tp!162161 () Bool)

(assert (=> b!521376 (= e!312569 (and tp!162161 tp_is_empty!2783 tp!162160 tp!162158))))

(assert (= (and mapNonEmpty!2078 condMapEmpty!2081) mapIsEmpty!2081))

(assert (= (and mapNonEmpty!2078 (not condMapEmpty!2081)) mapNonEmpty!2081))

(assert (= (and mapNonEmpty!2081 ((_ is Cons!4822) mapValue!2081)) b!521376))

(assert (= (and mapNonEmpty!2078 ((_ is Cons!4822) mapDefault!2081)) b!521377))

(declare-fun m!767887 () Bool)

(assert (=> mapNonEmpty!2081 m!767887))

(declare-fun tp!162165 () Bool)

(declare-fun tp!162166 () Bool)

(declare-fun b!521378 () Bool)

(declare-fun tp!162167 () Bool)

(declare-fun e!312570 () Bool)

(assert (=> b!521378 (= e!312570 (and tp!162165 tp_is_empty!2783 tp!162166 tp!162167))))

(assert (=> mapNonEmpty!2078 (= tp!162131 e!312570)))

(assert (= (and mapNonEmpty!2078 ((_ is Cons!4822) mapValue!2078)) b!521378))

(declare-fun tp!162170 () Bool)

(declare-fun tp!162168 () Bool)

(declare-fun tp!162169 () Bool)

(declare-fun e!312571 () Bool)

(declare-fun b!521379 () Bool)

(assert (=> b!521379 (= e!312571 (and tp!162168 tp_is_empty!2783 tp!162169 tp!162170))))

(assert (=> b!521357 (= tp!162125 e!312571)))

(assert (= (and b!521357 ((_ is Cons!4822) mapDefault!2078)) b!521379))

(check-sat (not b!521376) (not b!521377) (not b_next!13681) b_and!51161 (not mapNonEmpty!2081) (not b!521379) b_and!51159 (not b!521363) (not b!521378) (not b_next!13683) (not b!521369) (not b!521368) tp_is_empty!2783)
(check-sat b_and!51159 b_and!51161 (not b_next!13683) (not b_next!13681))
