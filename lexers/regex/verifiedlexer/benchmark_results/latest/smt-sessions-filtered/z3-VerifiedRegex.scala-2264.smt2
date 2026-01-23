; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110830 () Bool)

(assert start!110830)

(declare-fun b!1256954 () Bool)

(declare-fun b_free!29739 () Bool)

(declare-fun b_next!30443 () Bool)

(assert (=> b!1256954 (= b_free!29739 (not b_next!30443))))

(declare-fun tp!370562 () Bool)

(declare-fun b_and!84883 () Bool)

(assert (=> b!1256954 (= tp!370562 b_and!84883)))

(declare-fun mapIsEmpty!6265 () Bool)

(declare-fun mapRes!6265 () Bool)

(assert (=> mapIsEmpty!6265 mapRes!6265))

(declare-fun b!1256949 () Bool)

(declare-fun e!800017 () Bool)

(declare-fun e!800014 () Bool)

(assert (=> b!1256949 (= e!800017 e!800014)))

(declare-fun res!556517 () Bool)

(declare-fun e!800018 () Bool)

(assert (=> start!110830 (=> (not res!556517) (not e!800018))))

(declare-datatypes ((V!2943 0))(
  ( (V!2944 (val!4182 Int)) )
))
(declare-datatypes ((array!4622 0))(
  ( (array!4623 (arr!2061 (Array (_ BitVec 32) (_ BitVec 64))) (size!9952 (_ BitVec 32))) )
))
(declare-datatypes ((array!4624 0))(
  ( (array!4625 (arr!2062 (Array (_ BitVec 32) V!2943)) (size!9953 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2608 0))(
  ( (LongMapFixedSize!2609 (defaultEntry!1664 Int) (mask!4112 (_ BitVec 32)) (extraKeys!1551 (_ BitVec 32)) (zeroValue!1561 V!2943) (minValue!1561 V!2943) (_size!2698 (_ BitVec 32)) (_keys!1598 array!4622) (_values!1583 array!4624) (_vacant!1365 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5119 0))(
  ( (Cell!5120 (v!20773 LongMapFixedSize!2608)) )
))
(declare-datatypes ((MutLongMap!1304 0))(
  ( (LongMap!1304 (underlying!2822 Cell!5119)) (MutLongMapExt!1303 (__x!8198 Int)) )
))
(declare-fun thiss!47531 () MutLongMap!1304)

(declare-fun valid!1041 (MutLongMap!1304) Bool)

(assert (=> start!110830 (= res!556517 (valid!1041 thiss!47531))))

(assert (=> start!110830 e!800018))

(declare-fun e!800013 () Bool)

(assert (=> start!110830 e!800013))

(assert (=> start!110830 true))

(declare-fun tp_is_empty!6503 () Bool)

(assert (=> start!110830 tp_is_empty!6503))

(declare-fun b!1256950 () Bool)

(assert (=> b!1256950 (= e!800013 e!800017)))

(declare-fun mapNonEmpty!6265 () Bool)

(declare-fun tp!370561 () Bool)

(assert (=> mapNonEmpty!6265 (= mapRes!6265 (and tp!370561 tp_is_empty!6503))))

(declare-fun mapKey!6265 () (_ BitVec 32))

(declare-fun mapRest!6265 () (Array (_ BitVec 32) V!2943))

(declare-fun mapValue!6265 () V!2943)

(assert (=> mapNonEmpty!6265 (= (arr!2062 (_values!1583 (v!20773 (underlying!2822 thiss!47531)))) (store mapRest!6265 mapKey!6265 mapValue!6265))))

(declare-fun b!1256951 () Bool)

(declare-fun key!7099 () (_ BitVec 64))

(declare-fun v!11775 () V!2943)

(get-info :version)

(declare-datatypes ((tuple2!12470 0))(
  ( (tuple2!12471 (_1!7083 Bool) (_2!7083 MutLongMap!1304)) )
))
(declare-fun update!79 (MutLongMap!1304 (_ BitVec 64) V!2943) tuple2!12470)

(assert (=> b!1256951 (= e!800018 (not ((_ is MutLongMapExt!1303) (_2!7083 (update!79 thiss!47531 key!7099 v!11775)))))))

(declare-fun b!1256952 () Bool)

(declare-fun res!556516 () Bool)

(assert (=> b!1256952 (=> (not res!556516) (not e!800018))))

(assert (=> b!1256952 (= res!556516 (not ((_ is LongMap!1304) thiss!47531)))))

(declare-fun b!1256953 () Bool)

(declare-fun e!800016 () Bool)

(assert (=> b!1256953 (= e!800016 (and tp_is_empty!6503 mapRes!6265))))

(declare-fun condMapEmpty!6265 () Bool)

(declare-fun mapDefault!6265 () V!2943)

(assert (=> b!1256953 (= condMapEmpty!6265 (= (arr!2062 (_values!1583 (v!20773 (underlying!2822 thiss!47531)))) ((as const (Array (_ BitVec 32) V!2943)) mapDefault!6265)))))

(declare-fun array_inv!1501 (array!4622) Bool)

(declare-fun array_inv!1502 (array!4624) Bool)

(assert (=> b!1256954 (= e!800014 (and tp!370562 tp_is_empty!6503 (array_inv!1501 (_keys!1598 (v!20773 (underlying!2822 thiss!47531)))) (array_inv!1502 (_values!1583 (v!20773 (underlying!2822 thiss!47531)))) e!800016))))

(assert (= (and start!110830 res!556517) b!1256952))

(assert (= (and b!1256952 res!556516) b!1256951))

(assert (= (and b!1256953 condMapEmpty!6265) mapIsEmpty!6265))

(assert (= (and b!1256953 (not condMapEmpty!6265)) mapNonEmpty!6265))

(assert (= b!1256954 b!1256953))

(assert (= b!1256949 b!1256954))

(assert (= b!1256950 b!1256949))

(assert (= (and start!110830 ((_ is LongMap!1304) thiss!47531)) b!1256950))

(declare-fun m!1415173 () Bool)

(assert (=> start!110830 m!1415173))

(declare-fun m!1415175 () Bool)

(assert (=> mapNonEmpty!6265 m!1415175))

(declare-fun m!1415177 () Bool)

(assert (=> b!1256951 m!1415177))

(declare-fun m!1415179 () Bool)

(assert (=> b!1256954 m!1415179))

(declare-fun m!1415181 () Bool)

(assert (=> b!1256954 m!1415181))

(check-sat (not mapNonEmpty!6265) b_and!84883 (not b!1256954) (not start!110830) (not b_next!30443) (not b!1256951) tp_is_empty!6503)
(check-sat b_and!84883 (not b_next!30443))
(get-model)

(declare-fun d!355221 () Bool)

(declare-fun c!208696 () Bool)

(assert (=> d!355221 (= c!208696 ((_ is LongMap!1304) thiss!47531))))

(declare-fun e!800021 () Bool)

(assert (=> d!355221 (= (valid!1041 thiss!47531) e!800021)))

(declare-fun b!1256959 () Bool)

(declare-fun valid!1042 (MutLongMap!1304) Bool)

(assert (=> b!1256959 (= e!800021 (valid!1042 thiss!47531))))

(declare-fun b!1256960 () Bool)

(declare-fun valid!1043 (MutLongMap!1304) Bool)

(assert (=> b!1256960 (= e!800021 (valid!1043 thiss!47531))))

(assert (= (and d!355221 c!208696) b!1256959))

(assert (= (and d!355221 (not c!208696)) b!1256960))

(declare-fun m!1415183 () Bool)

(assert (=> b!1256959 m!1415183))

(declare-fun m!1415185 () Bool)

(assert (=> b!1256960 m!1415185))

(assert (=> start!110830 d!355221))

(declare-fun b!1256971 () Bool)

(declare-fun res!556524 () Bool)

(declare-fun e!800030 () Bool)

(assert (=> b!1256971 (=> (not res!556524) (not e!800030))))

(declare-fun lt!420759 () tuple2!12470)

(assert (=> b!1256971 (= res!556524 (valid!1041 (_2!7083 lt!420759)))))

(declare-fun bm!88202 () Bool)

(declare-datatypes ((tuple2!12472 0))(
  ( (tuple2!12473 (_1!7084 (_ BitVec 64)) (_2!7084 V!2943)) )
))
(declare-datatypes ((List!12628 0))(
  ( (Nil!12564) (Cons!12564 (h!17965 tuple2!12472) (t!115760 List!12628)) )
))
(declare-datatypes ((ListLongMap!139 0))(
  ( (ListLongMap!140 (toList!701 List!12628)) )
))
(declare-fun call!88208 () ListLongMap!139)

(declare-fun abstractMap!50 (MutLongMap!1304) ListLongMap!139)

(assert (=> bm!88202 (= call!88208 (abstractMap!50 (_2!7083 lt!420759)))))

(declare-fun bm!88203 () Bool)

(declare-fun call!88207 () ListLongMap!139)

(assert (=> bm!88203 (= call!88207 (abstractMap!50 thiss!47531))))

(declare-fun b!1256972 () Bool)

(declare-fun e!800028 () Bool)

(assert (=> b!1256972 (= e!800028 (= call!88208 call!88207))))

(declare-fun b!1256973 () Bool)

(declare-fun e!800029 () Bool)

(assert (=> b!1256973 (= e!800028 e!800029)))

(declare-fun res!556526 () Bool)

(declare-fun contains!2122 (ListLongMap!139 (_ BitVec 64)) Bool)

(assert (=> b!1256973 (= res!556526 (contains!2122 call!88208 key!7099))))

(assert (=> b!1256973 (=> (not res!556526) (not e!800029))))

(declare-fun d!355223 () Bool)

(assert (=> d!355223 e!800030))

(declare-fun res!556525 () Bool)

(assert (=> d!355223 (=> (not res!556525) (not e!800030))))

(assert (=> d!355223 (= res!556525 ((_ is MutLongMapExt!1303) (_2!7083 lt!420759)))))

(declare-fun choose!7871 (MutLongMap!1304 (_ BitVec 64) V!2943) tuple2!12470)

(assert (=> d!355223 (= lt!420759 (choose!7871 thiss!47531 key!7099 v!11775))))

(assert (=> d!355223 (valid!1041 thiss!47531)))

(assert (=> d!355223 (= (update!79 thiss!47531 key!7099 v!11775) lt!420759)))

(declare-fun b!1256974 () Bool)

(declare-fun +!34 (ListLongMap!139 tuple2!12472) ListLongMap!139)

(assert (=> b!1256974 (= e!800029 (= call!88208 (+!34 call!88207 (tuple2!12473 key!7099 v!11775))))))

(declare-fun b!1256975 () Bool)

(assert (=> b!1256975 (= e!800030 e!800028)))

(declare-fun c!208699 () Bool)

(assert (=> b!1256975 (= c!208699 (_1!7083 lt!420759))))

(assert (= (and d!355223 res!556525) b!1256971))

(assert (= (and b!1256971 res!556524) b!1256975))

(assert (= (and b!1256975 c!208699) b!1256973))

(assert (= (and b!1256975 (not c!208699)) b!1256972))

(assert (= (and b!1256973 res!556526) b!1256974))

(assert (= (or b!1256974 b!1256972) bm!88203))

(assert (= (or b!1256973 b!1256974 b!1256972) bm!88202))

(declare-fun m!1415187 () Bool)

(assert (=> b!1256971 m!1415187))

(declare-fun m!1415189 () Bool)

(assert (=> b!1256974 m!1415189))

(declare-fun m!1415191 () Bool)

(assert (=> bm!88203 m!1415191))

(declare-fun m!1415193 () Bool)

(assert (=> b!1256973 m!1415193))

(declare-fun m!1415195 () Bool)

(assert (=> d!355223 m!1415195))

(assert (=> d!355223 m!1415173))

(declare-fun m!1415197 () Bool)

(assert (=> bm!88202 m!1415197))

(assert (=> b!1256951 d!355223))

(declare-fun d!355225 () Bool)

(assert (=> d!355225 (= (array_inv!1501 (_keys!1598 (v!20773 (underlying!2822 thiss!47531)))) (bvsge (size!9952 (_keys!1598 (v!20773 (underlying!2822 thiss!47531)))) #b00000000000000000000000000000000))))

(assert (=> b!1256954 d!355225))

(declare-fun d!355227 () Bool)

(assert (=> d!355227 (= (array_inv!1502 (_values!1583 (v!20773 (underlying!2822 thiss!47531)))) (bvsge (size!9953 (_values!1583 (v!20773 (underlying!2822 thiss!47531)))) #b00000000000000000000000000000000))))

(assert (=> b!1256954 d!355227))

(declare-fun condMapEmpty!6268 () Bool)

(declare-fun mapDefault!6268 () V!2943)

(assert (=> mapNonEmpty!6265 (= condMapEmpty!6268 (= mapRest!6265 ((as const (Array (_ BitVec 32) V!2943)) mapDefault!6268)))))

(declare-fun mapRes!6268 () Bool)

(assert (=> mapNonEmpty!6265 (= tp!370561 (and tp_is_empty!6503 mapRes!6268))))

(declare-fun mapIsEmpty!6268 () Bool)

(assert (=> mapIsEmpty!6268 mapRes!6268))

(declare-fun mapNonEmpty!6268 () Bool)

(declare-fun tp!370565 () Bool)

(assert (=> mapNonEmpty!6268 (= mapRes!6268 (and tp!370565 tp_is_empty!6503))))

(declare-fun mapKey!6268 () (_ BitVec 32))

(declare-fun mapValue!6268 () V!2943)

(declare-fun mapRest!6268 () (Array (_ BitVec 32) V!2943))

(assert (=> mapNonEmpty!6268 (= mapRest!6265 (store mapRest!6268 mapKey!6268 mapValue!6268))))

(assert (= (and mapNonEmpty!6265 condMapEmpty!6268) mapIsEmpty!6268))

(assert (= (and mapNonEmpty!6265 (not condMapEmpty!6268)) mapNonEmpty!6268))

(declare-fun m!1415199 () Bool)

(assert (=> mapNonEmpty!6268 m!1415199))

(check-sat (not bm!88202) (not bm!88203) (not b!1256960) b_and!84883 tp_is_empty!6503 (not b!1256974) (not mapNonEmpty!6268) (not b!1256971) (not b!1256959) (not b_next!30443) (not b!1256973) (not d!355223))
(check-sat b_and!84883 (not b_next!30443))
