; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488148 () Bool)

(assert start!488148)

(declare-fun b!4769395 () Bool)

(declare-fun b_free!129739 () Bool)

(declare-fun b_next!130529 () Bool)

(assert (=> b!4769395 (= b_free!129739 (not b_next!130529))))

(declare-fun tp!1356100 () Bool)

(declare-fun b_and!341475 () Bool)

(assert (=> b!4769395 (= tp!1356100 b_and!341475)))

(declare-fun b!4769394 () Bool)

(declare-fun b_free!129741 () Bool)

(declare-fun b_next!130531 () Bool)

(assert (=> b!4769394 (= b_free!129741 (not b_next!130531))))

(declare-fun tp!1356099 () Bool)

(declare-fun b_and!341477 () Bool)

(assert (=> b!4769394 (= tp!1356099 b_and!341477)))

(declare-fun b!4769391 () Bool)

(declare-fun e!2977150 () Bool)

(assert (=> b!4769391 (= e!2977150 (not true))))

(declare-datatypes ((K!15014 0))(
  ( (K!15015 (val!20317 Int)) )
))
(declare-datatypes ((V!15260 0))(
  ( (V!15261 (val!20318 Int)) )
))
(declare-datatypes ((tuple2!55612 0))(
  ( (tuple2!55613 (_1!31100 K!15014) (_2!31100 V!15260)) )
))
(declare-datatypes ((List!53652 0))(
  ( (Nil!53528) (Cons!53528 (h!59940 tuple2!55612) (t!361090 List!53652)) )
))
(declare-datatypes ((tuple2!55614 0))(
  ( (tuple2!55615 (_1!31101 (_ BitVec 64)) (_2!31101 List!53652)) )
))
(declare-datatypes ((List!53653 0))(
  ( (Nil!53529) (Cons!53529 (h!59941 tuple2!55614) (t!361091 List!53653)) )
))
(declare-datatypes ((ListLongMap!4725 0))(
  ( (ListLongMap!4726 (toList!6322 List!53653)) )
))
(declare-fun lt!1932134 () ListLongMap!4725)

(declare-fun lt!1932137 () (_ BitVec 64))

(declare-datatypes ((Option!12713 0))(
  ( (None!12712) (Some!12712 (v!47784 List!53652)) )
))
(declare-fun isDefined!9863 (Option!12713) Bool)

(declare-fun getValueByKey!2206 (List!53653 (_ BitVec 64)) Option!12713)

(assert (=> b!4769391 (isDefined!9863 (getValueByKey!2206 (toList!6322 lt!1932134) lt!1932137))))

(declare-datatypes ((Unit!138364 0))(
  ( (Unit!138365) )
))
(declare-fun lt!1932135 () Unit!138364)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2002 (List!53653 (_ BitVec 64)) Unit!138364)

(assert (=> b!4769391 (= lt!1932135 (lemmaContainsKeyImpliesGetValueByKeyDefined!2002 (toList!6322 lt!1932134) lt!1932137))))

(declare-fun b!4769392 () Bool)

(declare-fun e!2977143 () Bool)

(assert (=> b!4769392 (= e!2977143 e!2977150)))

(declare-fun res!2022839 () Bool)

(assert (=> b!4769392 (=> (not res!2022839) (not e!2977150))))

(declare-datatypes ((array!18126 0))(
  ( (array!18127 (arr!8083 (Array (_ BitVec 32) (_ BitVec 64))) (size!36313 (_ BitVec 32))) )
))
(declare-datatypes ((array!18128 0))(
  ( (array!18129 (arr!8084 (Array (_ BitVec 32) List!53652)) (size!36314 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6610 0))(
  ( (HashableExt!6609 (__x!32595 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9898 0))(
  ( (LongMapFixedSize!9899 (defaultEntry!5367 Int) (mask!14719 (_ BitVec 32)) (extraKeys!5224 (_ BitVec 32)) (zeroValue!5237 List!53652) (minValue!5237 List!53652) (_size!9923 (_ BitVec 32)) (_keys!5291 array!18126) (_values!5262 array!18128) (_vacant!5014 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19561 0))(
  ( (Cell!19562 (v!47785 LongMapFixedSize!9898)) )
))
(declare-datatypes ((MutLongMap!4949 0))(
  ( (LongMap!4949 (underlying!10105 Cell!19561)) (MutLongMapExt!4948 (__x!32596 Int)) )
))
(declare-datatypes ((Cell!19563 0))(
  ( (Cell!19564 (v!47786 MutLongMap!4949)) )
))
(declare-datatypes ((MutableMap!4833 0))(
  ( (MutableMapExt!4832 (__x!32597 Int)) (HashMap!4833 (underlying!10106 Cell!19563) (hashF!12501 Hashable!6610) (_size!9924 (_ BitVec 32)) (defaultValue!5004 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4833)

(declare-fun contains!16892 (List!53653 tuple2!55614) Bool)

(declare-fun apply!12655 (MutLongMap!4949 (_ BitVec 64)) List!53652)

(assert (=> b!4769392 (= res!2022839 (not (contains!16892 (toList!6322 lt!1932134) (tuple2!55615 lt!1932137 (apply!12655 (v!47786 (underlying!10106 thiss!42052)) lt!1932137)))))))

(declare-fun map!12027 (MutLongMap!4949) ListLongMap!4725)

(assert (=> b!4769392 (= lt!1932134 (map!12027 (v!47786 (underlying!10106 thiss!42052))))))

(declare-fun key!1776 () K!15014)

(declare-fun hash!4588 (Hashable!6610 K!15014) (_ BitVec 64))

(assert (=> b!4769392 (= lt!1932137 (hash!4588 (hashF!12501 thiss!42052) key!1776))))

(declare-fun b!4769393 () Bool)

(declare-fun res!2022838 () Bool)

(assert (=> b!4769393 (=> (not res!2022838) (not e!2977143))))

(declare-fun contains!16893 (MutableMap!4833 K!15014) Bool)

(assert (=> b!4769393 (= res!2022838 (contains!16893 thiss!42052 key!1776))))

(declare-fun e!2977147 () Bool)

(declare-fun e!2977149 () Bool)

(declare-fun tp!1356097 () Bool)

(declare-fun tp!1356101 () Bool)

(declare-fun array_inv!5823 (array!18126) Bool)

(declare-fun array_inv!5824 (array!18128) Bool)

(assert (=> b!4769395 (= e!2977149 (and tp!1356100 tp!1356097 tp!1356101 (array_inv!5823 (_keys!5291 (v!47785 (underlying!10105 (v!47786 (underlying!10106 thiss!42052)))))) (array_inv!5824 (_values!5262 (v!47785 (underlying!10105 (v!47786 (underlying!10106 thiss!42052)))))) e!2977147))))

(declare-fun b!4769396 () Bool)

(declare-fun e!2977151 () Bool)

(declare-fun e!2977146 () Bool)

(declare-fun lt!1932136 () MutLongMap!4949)

(get-info :version)

(assert (=> b!4769396 (= e!2977151 (and e!2977146 ((_ is LongMap!4949) lt!1932136)))))

(assert (=> b!4769396 (= lt!1932136 (v!47786 (underlying!10106 thiss!42052)))))

(declare-fun b!4769397 () Bool)

(declare-fun e!2977144 () Bool)

(assert (=> b!4769397 (= e!2977146 e!2977144)))

(declare-fun b!4769398 () Bool)

(declare-fun tp!1356096 () Bool)

(declare-fun mapRes!21949 () Bool)

(assert (=> b!4769398 (= e!2977147 (and tp!1356096 mapRes!21949))))

(declare-fun condMapEmpty!21949 () Bool)

(declare-fun mapDefault!21949 () List!53652)

(assert (=> b!4769398 (= condMapEmpty!21949 (= (arr!8084 (_values!5262 (v!47785 (underlying!10105 (v!47786 (underlying!10106 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53652)) mapDefault!21949)))))

(declare-fun b!4769399 () Bool)

(assert (=> b!4769399 (= e!2977144 e!2977149)))

(declare-fun b!4769400 () Bool)

(declare-fun res!2022837 () Bool)

(assert (=> b!4769400 (=> (not res!2022837) (not e!2977143))))

(declare-fun valid!3957 (MutableMap!4833) Bool)

(assert (=> b!4769400 (= res!2022837 (valid!3957 thiss!42052))))

(declare-fun mapNonEmpty!21949 () Bool)

(declare-fun tp!1356095 () Bool)

(declare-fun tp!1356098 () Bool)

(assert (=> mapNonEmpty!21949 (= mapRes!21949 (and tp!1356095 tp!1356098))))

(declare-fun mapKey!21949 () (_ BitVec 32))

(declare-fun mapRest!21949 () (Array (_ BitVec 32) List!53652))

(declare-fun mapValue!21949 () List!53652)

(assert (=> mapNonEmpty!21949 (= (arr!8084 (_values!5262 (v!47785 (underlying!10105 (v!47786 (underlying!10106 thiss!42052)))))) (store mapRest!21949 mapKey!21949 mapValue!21949))))

(declare-fun mapIsEmpty!21949 () Bool)

(assert (=> mapIsEmpty!21949 mapRes!21949))

(declare-fun res!2022840 () Bool)

(assert (=> start!488148 (=> (not res!2022840) (not e!2977143))))

(assert (=> start!488148 (= res!2022840 ((_ is HashMap!4833) thiss!42052))))

(assert (=> start!488148 e!2977143))

(declare-fun e!2977148 () Bool)

(assert (=> start!488148 e!2977148))

(declare-fun tp_is_empty!32505 () Bool)

(assert (=> start!488148 tp_is_empty!32505))

(assert (=> b!4769394 (= e!2977148 (and e!2977151 tp!1356099))))

(assert (= (and start!488148 res!2022840) b!4769400))

(assert (= (and b!4769400 res!2022837) b!4769393))

(assert (= (and b!4769393 res!2022838) b!4769392))

(assert (= (and b!4769392 res!2022839) b!4769391))

(assert (= (and b!4769398 condMapEmpty!21949) mapIsEmpty!21949))

(assert (= (and b!4769398 (not condMapEmpty!21949)) mapNonEmpty!21949))

(assert (= b!4769395 b!4769398))

(assert (= b!4769399 b!4769395))

(assert (= b!4769397 b!4769399))

(assert (= (and b!4769396 ((_ is LongMap!4949) (v!47786 (underlying!10106 thiss!42052)))) b!4769397))

(assert (= b!4769394 b!4769396))

(assert (= (and start!488148 ((_ is HashMap!4833) thiss!42052)) b!4769394))

(declare-fun m!5741064 () Bool)

(assert (=> b!4769391 m!5741064))

(assert (=> b!4769391 m!5741064))

(declare-fun m!5741066 () Bool)

(assert (=> b!4769391 m!5741066))

(declare-fun m!5741068 () Bool)

(assert (=> b!4769391 m!5741068))

(declare-fun m!5741070 () Bool)

(assert (=> b!4769395 m!5741070))

(declare-fun m!5741072 () Bool)

(assert (=> b!4769395 m!5741072))

(declare-fun m!5741074 () Bool)

(assert (=> b!4769392 m!5741074))

(declare-fun m!5741076 () Bool)

(assert (=> b!4769392 m!5741076))

(declare-fun m!5741078 () Bool)

(assert (=> b!4769392 m!5741078))

(declare-fun m!5741080 () Bool)

(assert (=> b!4769392 m!5741080))

(declare-fun m!5741082 () Bool)

(assert (=> b!4769393 m!5741082))

(declare-fun m!5741084 () Bool)

(assert (=> mapNonEmpty!21949 m!5741084))

(declare-fun m!5741086 () Bool)

(assert (=> b!4769400 m!5741086))

(check-sat (not b!4769391) b_and!341475 (not b_next!130529) (not b_next!130531) (not b!4769395) (not b!4769392) b_and!341477 (not mapNonEmpty!21949) (not b!4769398) tp_is_empty!32505 (not b!4769400) (not b!4769393))
(check-sat b_and!341477 b_and!341475 (not b_next!130531) (not b_next!130529))
