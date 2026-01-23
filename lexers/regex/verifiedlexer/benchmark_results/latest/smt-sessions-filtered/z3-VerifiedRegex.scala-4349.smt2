; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231364 () Bool)

(assert start!231364)

(declare-fun b!2359376 () Bool)

(declare-fun b_free!70429 () Bool)

(declare-fun b_next!71133 () Bool)

(assert (=> b!2359376 (= b_free!70429 (not b_next!71133))))

(declare-fun tp!754455 () Bool)

(declare-fun b_and!185365 () Bool)

(assert (=> b!2359376 (= tp!754455 b_and!185365)))

(declare-fun b!2359370 () Bool)

(declare-fun b_free!70431 () Bool)

(declare-fun b_next!71135 () Bool)

(assert (=> b!2359370 (= b_free!70431 (not b_next!71135))))

(declare-fun tp!754459 () Bool)

(declare-fun b_and!185367 () Bool)

(assert (=> b!2359370 (= tp!754459 b_and!185367)))

(declare-fun mapNonEmpty!15137 () Bool)

(declare-fun mapRes!15137 () Bool)

(declare-fun tp!754458 () Bool)

(declare-fun tp!754456 () Bool)

(assert (=> mapNonEmpty!15137 (= mapRes!15137 (and tp!754458 tp!754456))))

(declare-datatypes ((K!4982 0))(
  ( (K!4983 (val!8209 Int)) )
))
(declare-datatypes ((V!5184 0))(
  ( (V!5185 (val!8210 Int)) )
))
(declare-datatypes ((tuple2!27644 0))(
  ( (tuple2!27645 (_1!16363 K!4982) (_2!16363 V!5184)) )
))
(declare-datatypes ((List!27995 0))(
  ( (Nil!27897) (Cons!27897 (h!33298 tuple2!27644) (t!207872 List!27995)) )
))
(declare-fun mapValue!15137 () List!27995)

(declare-datatypes ((Hashable!3154 0))(
  ( (HashableExt!3153 (__x!18490 Int)) )
))
(declare-datatypes ((array!11399 0))(
  ( (array!11400 (arr!5078 (Array (_ BitVec 32) (_ BitVec 64))) (size!22102 (_ BitVec 32))) )
))
(declare-datatypes ((array!11401 0))(
  ( (array!11402 (arr!5079 (Array (_ BitVec 32) List!27995)) (size!22103 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6488 0))(
  ( (LongMapFixedSize!6489 (defaultEntry!3618 Int) (mask!8142 (_ BitVec 32)) (extraKeys!3492 (_ BitVec 32)) (zeroValue!3502 List!27995) (minValue!3502 List!27995) (_size!6535 (_ BitVec 32)) (_keys!3541 array!11399) (_values!3524 array!11401) (_vacant!3305 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12793 0))(
  ( (Cell!12794 (v!30840 LongMapFixedSize!6488)) )
))
(declare-datatypes ((MutLongMap!3244 0))(
  ( (LongMap!3244 (underlying!6693 Cell!12793)) (MutLongMapExt!3243 (__x!18491 Int)) )
))
(declare-datatypes ((Cell!12795 0))(
  ( (Cell!12796 (v!30841 MutLongMap!3244)) )
))
(declare-datatypes ((MutableMap!3154 0))(
  ( (MutableMapExt!3153 (__x!18492 Int)) (HashMap!3154 (underlying!6694 Cell!12795) (hashF!5085 Hashable!3154) (_size!6536 (_ BitVec 32)) (defaultValue!3316 Int)) )
))
(declare-fun thiss!47711 () MutableMap!3154)

(declare-fun mapRest!15137 () (Array (_ BitVec 32) List!27995))

(declare-fun mapKey!15137 () (_ BitVec 32))

(assert (=> mapNonEmpty!15137 (= (arr!5079 (_values!3524 (v!30840 (underlying!6693 (v!30841 (underlying!6694 thiss!47711)))))) (store mapRest!15137 mapKey!15137 mapValue!15137))))

(declare-fun mapIsEmpty!15137 () Bool)

(assert (=> mapIsEmpty!15137 mapRes!15137))

(declare-fun res!1001299 () Bool)

(declare-fun e!1507035 () Bool)

(assert (=> start!231364 (=> (not res!1001299) (not e!1507035))))

(get-info :version)

(assert (=> start!231364 (= res!1001299 ((_ is MutableMapExt!3153) thiss!47711))))

(assert (=> start!231364 e!1507035))

(declare-fun e!1507039 () Bool)

(assert (=> start!231364 e!1507039))

(declare-fun tp_is_empty!11201 () Bool)

(assert (=> start!231364 tp_is_empty!11201))

(declare-fun e!1507042 () Bool)

(assert (=> b!2359370 (= e!1507039 (and e!1507042 tp!754459))))

(declare-fun b!2359371 () Bool)

(declare-fun res!1001300 () Bool)

(assert (=> b!2359371 (=> (not res!1001300) (not e!1507035))))

(declare-fun valid!2440 (MutableMap!3154) Bool)

(assert (=> b!2359371 (= res!1001300 (valid!2440 thiss!47711))))

(declare-fun b!2359372 () Bool)

(declare-fun e!1507036 () Bool)

(declare-fun e!1507040 () Bool)

(assert (=> b!2359372 (= e!1507036 e!1507040)))

(declare-fun b!2359373 () Bool)

(declare-fun e!1507041 () Bool)

(assert (=> b!2359373 (= e!1507040 e!1507041)))

(declare-fun b!2359374 () Bool)

(declare-fun e!1507038 () Bool)

(declare-fun tp!754461 () Bool)

(assert (=> b!2359374 (= e!1507038 (and tp!754461 mapRes!15137))))

(declare-fun condMapEmpty!15137 () Bool)

(declare-fun mapDefault!15137 () List!27995)

(assert (=> b!2359374 (= condMapEmpty!15137 (= (arr!5079 (_values!3524 (v!30840 (underlying!6693 (v!30841 (underlying!6694 thiss!47711)))))) ((as const (Array (_ BitVec 32) List!27995)) mapDefault!15137)))))

(declare-fun b!2359375 () Bool)

(assert (=> b!2359375 (= e!1507035 false)))

(declare-fun lt!863992 () Bool)

(declare-fun key!7154 () K!4982)

(declare-fun choose!13681 (MutableMap!3154 K!4982) Bool)

(assert (=> b!2359375 (= lt!863992 (choose!13681 thiss!47711 key!7154))))

(declare-fun tp!754457 () Bool)

(declare-fun tp!754460 () Bool)

(declare-fun array_inv!3641 (array!11399) Bool)

(declare-fun array_inv!3642 (array!11401) Bool)

(assert (=> b!2359376 (= e!1507041 (and tp!754455 tp!754457 tp!754460 (array_inv!3641 (_keys!3541 (v!30840 (underlying!6693 (v!30841 (underlying!6694 thiss!47711)))))) (array_inv!3642 (_values!3524 (v!30840 (underlying!6693 (v!30841 (underlying!6694 thiss!47711)))))) e!1507038))))

(declare-fun b!2359377 () Bool)

(declare-fun lt!863993 () MutLongMap!3244)

(assert (=> b!2359377 (= e!1507042 (and e!1507036 ((_ is LongMap!3244) lt!863993)))))

(assert (=> b!2359377 (= lt!863993 (v!30841 (underlying!6694 thiss!47711)))))

(assert (= (and start!231364 res!1001299) b!2359371))

(assert (= (and b!2359371 res!1001300) b!2359375))

(assert (= (and b!2359374 condMapEmpty!15137) mapIsEmpty!15137))

(assert (= (and b!2359374 (not condMapEmpty!15137)) mapNonEmpty!15137))

(assert (= b!2359376 b!2359374))

(assert (= b!2359373 b!2359376))

(assert (= b!2359372 b!2359373))

(assert (= (and b!2359377 ((_ is LongMap!3244) (v!30841 (underlying!6694 thiss!47711)))) b!2359372))

(assert (= b!2359370 b!2359377))

(assert (= (and start!231364 ((_ is HashMap!3154) thiss!47711)) b!2359370))

(declare-fun m!2771981 () Bool)

(assert (=> mapNonEmpty!15137 m!2771981))

(declare-fun m!2771983 () Bool)

(assert (=> b!2359371 m!2771983))

(declare-fun m!2771985 () Bool)

(assert (=> b!2359375 m!2771985))

(declare-fun m!2771987 () Bool)

(assert (=> b!2359376 m!2771987))

(declare-fun m!2771989 () Bool)

(assert (=> b!2359376 m!2771989))

(check-sat tp_is_empty!11201 (not b!2359376) (not b_next!71135) (not b_next!71133) (not b!2359374) (not mapNonEmpty!15137) b_and!185367 b_and!185365 (not b!2359371) (not b!2359375))
(check-sat b_and!185365 b_and!185367 (not b_next!71133) (not b_next!71135))
