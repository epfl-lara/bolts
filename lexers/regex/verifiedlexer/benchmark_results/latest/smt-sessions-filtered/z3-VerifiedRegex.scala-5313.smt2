; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272008 () Bool)

(assert start!272008)

(declare-fun b!2810727 () Bool)

(declare-fun b_free!80253 () Bool)

(declare-fun b_next!80957 () Bool)

(assert (=> b!2810727 (= b_free!80253 (not b_next!80957))))

(declare-fun tp!897555 () Bool)

(declare-fun b_and!205543 () Bool)

(assert (=> b!2810727 (= tp!897555 b_and!205543)))

(declare-fun b!2810731 () Bool)

(declare-fun b_free!80255 () Bool)

(declare-fun b_next!80959 () Bool)

(assert (=> b!2810731 (= b_free!80255 (not b_next!80959))))

(declare-fun tp!897560 () Bool)

(declare-fun b_and!205545 () Bool)

(assert (=> b!2810731 (= tp!897560 b_and!205545)))

(declare-fun b!2810726 () Bool)

(declare-fun res!1170256 () Bool)

(declare-fun e!1777558 () Bool)

(assert (=> b!2810726 (=> (not res!1170256) (not e!1777558))))

(declare-datatypes ((K!6362 0))(
  ( (K!6363 (val!10307 Int)) )
))
(declare-datatypes ((V!6564 0))(
  ( (V!6565 (val!10308 Int)) )
))
(declare-datatypes ((tuple2!33326 0))(
  ( (tuple2!33327 (_1!19756 K!6362) (_2!19756 V!6564)) )
))
(declare-datatypes ((List!32919 0))(
  ( (Nil!32817) (Cons!32817 (h!38237 tuple2!33326) (t!229867 List!32919)) )
))
(declare-datatypes ((array!14439 0))(
  ( (array!14440 (arr!6432 (Array (_ BitVec 32) List!32919)) (size!25581 (_ BitVec 32))) )
))
(declare-datatypes ((array!14441 0))(
  ( (array!14442 (arr!6433 (Array (_ BitVec 32) (_ BitVec 64))) (size!25582 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8124 0))(
  ( (LongMapFixedSize!8125 (defaultEntry!4447 Int) (mask!9944 (_ BitVec 32)) (extraKeys!4311 (_ BitVec 32)) (zeroValue!4321 List!32919) (minValue!4321 List!32919) (_size!8167 (_ BitVec 32)) (_keys!4362 array!14441) (_values!4343 array!14439) (_vacant!4123 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16057 0))(
  ( (Cell!16058 (v!34228 LongMapFixedSize!8124)) )
))
(declare-datatypes ((MutLongMap!4062 0))(
  ( (LongMap!4062 (underlying!8331 Cell!16057)) (MutLongMapExt!4061 (__x!21940 Int)) )
))
(declare-datatypes ((Cell!16059 0))(
  ( (Cell!16060 (v!34229 MutLongMap!4062)) )
))
(declare-datatypes ((Hashable!3978 0))(
  ( (HashableExt!3977 (__x!21941 Int)) )
))
(declare-datatypes ((MutableMap!3968 0))(
  ( (MutableMapExt!3967 (__x!21942 Int)) (HashMap!3968 (underlying!8332 Cell!16059) (hashF!6010 Hashable!3978) (_size!8168 (_ BitVec 32)) (defaultValue!4139 Int)) )
))
(declare-fun thiss!47942 () MutableMap!3968)

(declare-fun valid!3181 (MutableMap!3968) Bool)

(assert (=> b!2810726 (= res!1170256 (valid!3181 thiss!47942))))

(declare-fun tp!897559 () Bool)

(declare-fun tp!897557 () Bool)

(declare-fun e!1777563 () Bool)

(declare-fun e!1777557 () Bool)

(declare-fun array_inv!4606 (array!14441) Bool)

(declare-fun array_inv!4607 (array!14439) Bool)

(assert (=> b!2810727 (= e!1777563 (and tp!897555 tp!897559 tp!897557 (array_inv!4606 (_keys!4362 (v!34228 (underlying!8331 (v!34229 (underlying!8332 thiss!47942)))))) (array_inv!4607 (_values!4343 (v!34228 (underlying!8331 (v!34229 (underlying!8332 thiss!47942)))))) e!1777557))))

(declare-fun res!1170257 () Bool)

(assert (=> start!272008 (=> (not res!1170257) (not e!1777558))))

(get-info :version)

(assert (=> start!272008 (= res!1170257 ((_ is MutableMapExt!3967) thiss!47942))))

(assert (=> start!272008 e!1777558))

(declare-fun e!1777561 () Bool)

(assert (=> start!272008 e!1777561))

(declare-fun tp_is_empty!14351 () Bool)

(assert (=> start!272008 tp_is_empty!14351))

(declare-fun b!2810728 () Bool)

(declare-fun e!1777556 () Bool)

(assert (=> b!2810728 (= e!1777556 e!1777563)))

(declare-fun mapNonEmpty!18458 () Bool)

(declare-fun mapRes!18458 () Bool)

(declare-fun tp!897556 () Bool)

(declare-fun tp!897558 () Bool)

(assert (=> mapNonEmpty!18458 (= mapRes!18458 (and tp!897556 tp!897558))))

(declare-fun mapKey!18458 () (_ BitVec 32))

(declare-fun mapRest!18458 () (Array (_ BitVec 32) List!32919))

(declare-fun mapValue!18458 () List!32919)

(assert (=> mapNonEmpty!18458 (= (arr!6432 (_values!4343 (v!34228 (underlying!8331 (v!34229 (underlying!8332 thiss!47942)))))) (store mapRest!18458 mapKey!18458 mapValue!18458))))

(declare-fun b!2810729 () Bool)

(declare-fun tp!897554 () Bool)

(assert (=> b!2810729 (= e!1777557 (and tp!897554 mapRes!18458))))

(declare-fun condMapEmpty!18458 () Bool)

(declare-fun mapDefault!18458 () List!32919)

(assert (=> b!2810729 (= condMapEmpty!18458 (= (arr!6432 (_values!4343 (v!34228 (underlying!8331 (v!34229 (underlying!8332 thiss!47942)))))) ((as const (Array (_ BitVec 32) List!32919)) mapDefault!18458)))))

(declare-fun mapIsEmpty!18458 () Bool)

(assert (=> mapIsEmpty!18458 mapRes!18458))

(declare-fun b!2810730 () Bool)

(declare-fun e!1777560 () Bool)

(assert (=> b!2810730 (= e!1777560 false)))

(declare-fun lt!1004075 () Bool)

(declare-datatypes ((tuple2!33328 0))(
  ( (tuple2!33329 (_1!19757 Bool) (_2!19757 MutableMap!3968)) )
))
(declare-fun lt!1004076 () tuple2!33328)

(assert (=> b!2810730 (= lt!1004075 (valid!3181 (_2!19757 lt!1004076)))))

(declare-fun e!1777559 () Bool)

(assert (=> b!2810731 (= e!1777561 (and e!1777559 tp!897560))))

(declare-fun b!2810732 () Bool)

(declare-fun e!1777562 () Bool)

(declare-fun lt!1004074 () MutLongMap!4062)

(assert (=> b!2810732 (= e!1777559 (and e!1777562 ((_ is LongMap!4062) lt!1004074)))))

(assert (=> b!2810732 (= lt!1004074 (v!34229 (underlying!8332 thiss!47942)))))

(declare-fun b!2810733 () Bool)

(assert (=> b!2810733 (= e!1777558 e!1777560)))

(declare-fun res!1170258 () Bool)

(assert (=> b!2810733 (=> (not res!1170258) (not e!1777560))))

(assert (=> b!2810733 (= res!1170258 ((_ is MutableMapExt!3967) (_2!19757 lt!1004076)))))

(declare-fun key!7271 () K!6362)

(declare-fun choose!16567 (MutableMap!3968 K!6362) tuple2!33328)

(assert (=> b!2810733 (= lt!1004076 (choose!16567 thiss!47942 key!7271))))

(declare-fun b!2810734 () Bool)

(assert (=> b!2810734 (= e!1777562 e!1777556)))

(assert (= (and start!272008 res!1170257) b!2810726))

(assert (= (and b!2810726 res!1170256) b!2810733))

(assert (= (and b!2810733 res!1170258) b!2810730))

(assert (= (and b!2810729 condMapEmpty!18458) mapIsEmpty!18458))

(assert (= (and b!2810729 (not condMapEmpty!18458)) mapNonEmpty!18458))

(assert (= b!2810727 b!2810729))

(assert (= b!2810728 b!2810727))

(assert (= b!2810734 b!2810728))

(assert (= (and b!2810732 ((_ is LongMap!4062) (v!34229 (underlying!8332 thiss!47942)))) b!2810734))

(assert (= b!2810731 b!2810732))

(assert (= (and start!272008 ((_ is HashMap!3968) thiss!47942)) b!2810731))

(declare-fun m!3240561 () Bool)

(assert (=> b!2810733 m!3240561))

(declare-fun m!3240563 () Bool)

(assert (=> b!2810726 m!3240563))

(declare-fun m!3240565 () Bool)

(assert (=> b!2810730 m!3240565))

(declare-fun m!3240567 () Bool)

(assert (=> mapNonEmpty!18458 m!3240567))

(declare-fun m!3240569 () Bool)

(assert (=> b!2810727 m!3240569))

(declare-fun m!3240571 () Bool)

(assert (=> b!2810727 m!3240571))

(check-sat b_and!205545 b_and!205543 (not b!2810729) (not b_next!80959) (not b!2810726) (not b!2810730) (not b_next!80957) (not b!2810733) (not b!2810727) tp_is_empty!14351 (not mapNonEmpty!18458))
(check-sat b_and!205543 b_and!205545 (not b_next!80957) (not b_next!80959))
