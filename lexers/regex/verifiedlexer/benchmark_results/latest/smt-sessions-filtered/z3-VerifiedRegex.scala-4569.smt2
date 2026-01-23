; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241494 () Bool)

(assert start!241494)

(declare-fun b!2476120 () Bool)

(declare-fun b_free!71889 () Bool)

(declare-fun b_next!72593 () Bool)

(assert (=> b!2476120 (= b_free!71889 (not b_next!72593))))

(declare-fun tp!791968 () Bool)

(declare-fun b_and!188113 () Bool)

(assert (=> b!2476120 (= tp!791968 b_and!188113)))

(declare-fun b!2476118 () Bool)

(declare-fun b_free!71891 () Bool)

(declare-fun b_next!72595 () Bool)

(assert (=> b!2476118 (= b_free!71891 (not b_next!72595))))

(declare-fun tp!791964 () Bool)

(declare-fun b_and!188115 () Bool)

(assert (=> b!2476118 (= tp!791964 b_and!188115)))

(declare-fun b!2476117 () Bool)

(declare-fun e!1571004 () Bool)

(declare-fun tp!791963 () Bool)

(declare-fun mapRes!15183 () Bool)

(assert (=> b!2476117 (= e!1571004 (and tp!791963 mapRes!15183))))

(declare-fun condMapEmpty!15183 () Bool)

(declare-datatypes ((array!11457 0))(
  ( (array!11458 (arr!5106 (Array (_ BitVec 32) (_ BitVec 64))) (size!22525 (_ BitVec 32))) )
))
(declare-datatypes ((K!5230 0))(
  ( (K!5231 (val!8659 Int)) )
))
(declare-datatypes ((V!5432 0))(
  ( (V!5433 (val!8660 Int)) )
))
(declare-datatypes ((tuple2!28298 0))(
  ( (tuple2!28299 (_1!16690 K!5230) (_2!16690 V!5432)) )
))
(declare-datatypes ((List!29025 0))(
  ( (Nil!28925) (Cons!28925 (h!34326 tuple2!28298) (t!210660 List!29025)) )
))
(declare-datatypes ((array!11459 0))(
  ( (array!11460 (arr!5107 (Array (_ BitVec 32) List!29025)) (size!22526 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6516 0))(
  ( (LongMapFixedSize!6517 (defaultEntry!3632 Int) (mask!8376 (_ BitVec 32)) (extraKeys!3506 (_ BitVec 32)) (zeroValue!3516 List!29025) (minValue!3516 List!29025) (_size!6563 (_ BitVec 32)) (_keys!3555 array!11457) (_values!3538 array!11459) (_vacant!3319 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12849 0))(
  ( (Cell!12850 (v!31180 LongMapFixedSize!6516)) )
))
(declare-datatypes ((MutLongMap!3258 0))(
  ( (LongMap!3258 (underlying!6723 Cell!12849)) (MutLongMapExt!3257 (__x!18680 Int)) )
))
(declare-datatypes ((Cell!12851 0))(
  ( (Cell!12852 (v!31181 MutLongMap!3258)) )
))
(declare-datatypes ((Hashable!3168 0))(
  ( (HashableExt!3167 (__x!18681 Int)) )
))
(declare-datatypes ((MutableMap!3168 0))(
  ( (MutableMapExt!3167 (__x!18682 Int)) (HashMap!3168 (underlying!6724 Cell!12851) (hashF!5099 Hashable!3168) (_size!6564 (_ BitVec 32)) (defaultValue!3330 Int)) )
))
(declare-fun thiss!47892 () MutableMap!3168)

(declare-fun mapDefault!15183 () List!29025)

(assert (=> b!2476117 (= condMapEmpty!15183 (= (arr!5107 (_values!3538 (v!31180 (underlying!6723 (v!31181 (underlying!6724 thiss!47892)))))) ((as const (Array (_ BitVec 32) List!29025)) mapDefault!15183)))))

(declare-fun e!1571008 () Bool)

(declare-fun e!1571005 () Bool)

(assert (=> b!2476118 (= e!1571008 (and e!1571005 tp!791964))))

(declare-fun mapIsEmpty!15183 () Bool)

(assert (=> mapIsEmpty!15183 mapRes!15183))

(declare-fun b!2476119 () Bool)

(declare-fun e!1571009 () Bool)

(declare-fun lt!884239 () MutLongMap!3258)

(get-info :version)

(assert (=> b!2476119 (= e!1571005 (and e!1571009 ((_ is LongMap!3258) lt!884239)))))

(assert (=> b!2476119 (= lt!884239 (v!31181 (underlying!6724 thiss!47892)))))

(declare-fun tp!791965 () Bool)

(declare-fun e!1571003 () Bool)

(declare-fun tp!791967 () Bool)

(declare-fun array_inv!3663 (array!11457) Bool)

(declare-fun array_inv!3664 (array!11459) Bool)

(assert (=> b!2476120 (= e!1571003 (and tp!791968 tp!791967 tp!791965 (array_inv!3663 (_keys!3555 (v!31180 (underlying!6723 (v!31181 (underlying!6724 thiss!47892)))))) (array_inv!3664 (_values!3538 (v!31180 (underlying!6723 (v!31181 (underlying!6724 thiss!47892)))))) e!1571004))))

(declare-fun b!2476121 () Bool)

(declare-fun e!1571007 () Bool)

(assert (=> b!2476121 (= e!1571007 e!1571003)))

(declare-fun b!2476122 () Bool)

(declare-fun res!1048358 () Bool)

(declare-fun e!1571010 () Bool)

(assert (=> b!2476122 (=> (not res!1048358) (not e!1571010))))

(declare-datatypes ((tuple2!28300 0))(
  ( (tuple2!28301 (_1!16691 Bool) (_2!16691 MutableMap!3168)) )
))
(declare-fun lt!884238 () tuple2!28300)

(assert (=> b!2476122 (= res!1048358 (not (_1!16691 lt!884238)))))

(declare-fun b!2476123 () Bool)

(assert (=> b!2476123 (= e!1571010 false)))

(declare-datatypes ((ListMap!927 0))(
  ( (ListMap!928 (toList!1439 List!29025)) )
))
(declare-fun lt!884240 () ListMap!927)

(declare-fun abstractMap!113 (MutableMap!3168) ListMap!927)

(assert (=> b!2476123 (= lt!884240 (abstractMap!113 (_2!16691 lt!884238)))))

(declare-fun mapNonEmpty!15183 () Bool)

(declare-fun tp!791966 () Bool)

(declare-fun tp!791969 () Bool)

(assert (=> mapNonEmpty!15183 (= mapRes!15183 (and tp!791966 tp!791969))))

(declare-fun mapRest!15183 () (Array (_ BitVec 32) List!29025))

(declare-fun mapKey!15183 () (_ BitVec 32))

(declare-fun mapValue!15183 () List!29025)

(assert (=> mapNonEmpty!15183 (= (arr!5107 (_values!3538 (v!31180 (underlying!6723 (v!31181 (underlying!6724 thiss!47892)))))) (store mapRest!15183 mapKey!15183 mapValue!15183))))

(declare-fun res!1048361 () Bool)

(declare-fun e!1571002 () Bool)

(assert (=> start!241494 (=> (not res!1048361) (not e!1571002))))

(declare-fun valid!2455 (MutableMap!3168) Bool)

(assert (=> start!241494 (= res!1048361 (valid!2455 thiss!47892))))

(assert (=> start!241494 e!1571002))

(assert (=> start!241494 e!1571008))

(declare-fun tp_is_empty!12007 () Bool)

(assert (=> start!241494 tp_is_empty!12007))

(declare-fun b!2476124 () Bool)

(assert (=> b!2476124 (= e!1571009 e!1571007)))

(declare-fun b!2476125 () Bool)

(declare-fun res!1048359 () Bool)

(assert (=> b!2476125 (=> (not res!1048359) (not e!1571002))))

(assert (=> b!2476125 (= res!1048359 (not ((_ is MutableMapExt!3167) thiss!47892)))))

(declare-fun b!2476126 () Bool)

(assert (=> b!2476126 (= e!1571002 e!1571010)))

(declare-fun res!1048360 () Bool)

(assert (=> b!2476126 (=> (not res!1048360) (not e!1571010))))

(assert (=> b!2476126 (= res!1048360 (valid!2455 (_2!16691 lt!884238)))))

(declare-fun key!7256 () K!5230)

(declare-fun remove!71 (MutableMap!3168 K!5230) tuple2!28300)

(assert (=> b!2476126 (= lt!884238 (remove!71 thiss!47892 key!7256))))

(assert (= (and start!241494 res!1048361) b!2476125))

(assert (= (and b!2476125 res!1048359) b!2476126))

(assert (= (and b!2476126 res!1048360) b!2476122))

(assert (= (and b!2476122 res!1048358) b!2476123))

(assert (= (and b!2476117 condMapEmpty!15183) mapIsEmpty!15183))

(assert (= (and b!2476117 (not condMapEmpty!15183)) mapNonEmpty!15183))

(assert (= b!2476120 b!2476117))

(assert (= b!2476121 b!2476120))

(assert (= b!2476124 b!2476121))

(assert (= (and b!2476119 ((_ is LongMap!3258) (v!31181 (underlying!6724 thiss!47892)))) b!2476124))

(assert (= b!2476118 b!2476119))

(assert (= (and start!241494 ((_ is HashMap!3168) thiss!47892)) b!2476118))

(declare-fun m!2844157 () Bool)

(assert (=> b!2476126 m!2844157))

(declare-fun m!2844159 () Bool)

(assert (=> b!2476126 m!2844159))

(declare-fun m!2844161 () Bool)

(assert (=> b!2476120 m!2844161))

(declare-fun m!2844163 () Bool)

(assert (=> b!2476120 m!2844163))

(declare-fun m!2844165 () Bool)

(assert (=> mapNonEmpty!15183 m!2844165))

(declare-fun m!2844167 () Bool)

(assert (=> start!241494 m!2844167))

(declare-fun m!2844169 () Bool)

(assert (=> b!2476123 m!2844169))

(check-sat (not b_next!72593) (not b!2476126) (not start!241494) (not b_next!72595) (not mapNonEmpty!15183) (not b!2476117) (not b!2476120) tp_is_empty!12007 b_and!188113 b_and!188115 (not b!2476123))
(check-sat b_and!188115 b_and!188113 (not b_next!72595) (not b_next!72593))
