; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242280 () Bool)

(assert start!242280)

(declare-fun b!2482468 () Bool)

(declare-fun b_free!72369 () Bool)

(declare-fun b_next!73073 () Bool)

(assert (=> b!2482468 (= b_free!72369 (not b_next!73073))))

(declare-fun tp!794821 () Bool)

(declare-fun b_and!188619 () Bool)

(assert (=> b!2482468 (= tp!794821 b_and!188619)))

(declare-fun b!2482469 () Bool)

(declare-fun b_free!72371 () Bool)

(declare-fun b_next!73075 () Bool)

(assert (=> b!2482469 (= b_free!72371 (not b_next!73075))))

(declare-fun tp!794816 () Bool)

(declare-fun b_and!188621 () Bool)

(assert (=> b!2482469 (= tp!794816 b_and!188621)))

(declare-fun b!2482463 () Bool)

(declare-fun res!1050891 () Bool)

(declare-fun e!1575914 () Bool)

(assert (=> b!2482463 (=> (not res!1050891) (not e!1575914))))

(declare-datatypes ((Hashable!3288 0))(
  ( (HashableExt!3287 (__x!19040 Int)) )
))
(declare-datatypes ((K!5530 0))(
  ( (K!5531 (val!8899 Int)) )
))
(declare-datatypes ((V!5732 0))(
  ( (V!5733 (val!8900 Int)) )
))
(declare-datatypes ((tuple2!28894 0))(
  ( (tuple2!28895 (_1!16988 K!5530) (_2!16988 V!5732)) )
))
(declare-datatypes ((List!29233 0))(
  ( (Nil!29133) (Cons!29133 (h!34539 tuple2!28894) (t!210894 List!29233)) )
))
(declare-datatypes ((array!11979 0))(
  ( (array!11980 (arr!5346 (Array (_ BitVec 32) List!29233)) (size!22765 (_ BitVec 32))) )
))
(declare-datatypes ((array!11981 0))(
  ( (array!11982 (arr!5347 (Array (_ BitVec 32) (_ BitVec 64))) (size!22766 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6756 0))(
  ( (LongMapFixedSize!6757 (defaultEntry!3752 Int) (mask!8556 (_ BitVec 32)) (extraKeys!3626 (_ BitVec 32)) (zeroValue!3636 List!29233) (minValue!3636 List!29233) (_size!6803 (_ BitVec 32)) (_keys!3675 array!11981) (_values!3658 array!11979) (_vacant!3439 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13329 0))(
  ( (Cell!13330 (v!31486 LongMapFixedSize!6756)) )
))
(declare-datatypes ((MutLongMap!3378 0))(
  ( (LongMap!3378 (underlying!6963 Cell!13329)) (MutLongMapExt!3377 (__x!19041 Int)) )
))
(declare-datatypes ((Cell!13331 0))(
  ( (Cell!13332 (v!31487 MutLongMap!3378)) )
))
(declare-datatypes ((MutableMap!3288 0))(
  ( (MutableMapExt!3287 (__x!19042 Int)) (HashMap!3288 (underlying!6964 Cell!13331) (hashF!5251 Hashable!3288) (_size!6804 (_ BitVec 32)) (defaultValue!3450 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3288)

(declare-fun key!2246 () K!5530)

(declare-fun contains!5127 (MutableMap!3288 K!5530) Bool)

(assert (=> b!2482463 (= res!1050891 (contains!5127 thiss!42540 key!2246))))

(declare-fun b!2482464 () Bool)

(declare-fun lt!888957 () List!29233)

(declare-fun noDuplicateKeys!87 (List!29233) Bool)

(assert (=> b!2482464 (= e!1575914 (not (noDuplicateKeys!87 lt!888957)))))

(declare-datatypes ((tuple2!28896 0))(
  ( (tuple2!28897 (_1!16989 Bool) (_2!16989 MutLongMap!3378)) )
))
(declare-fun lt!888955 () tuple2!28896)

(declare-fun lt!888956 () (_ BitVec 64))

(declare-fun update!195 (MutLongMap!3378 (_ BitVec 64) List!29233) tuple2!28896)

(declare-fun removePairForKey!79 (List!29233 K!5530) List!29233)

(assert (=> b!2482464 (= lt!888955 (update!195 (v!31487 (underlying!6964 thiss!42540)) lt!888956 (removePairForKey!79 lt!888957 key!2246)))))

(declare-datatypes ((ListMap!1083 0))(
  ( (ListMap!1084 (toList!1601 List!29233)) )
))
(declare-fun lt!888954 () ListMap!1083)

(declare-fun map!6228 (MutableMap!3288) ListMap!1083)

(assert (=> b!2482464 (= lt!888954 (map!6228 thiss!42540))))

(declare-fun lambda!94099 () Int)

(declare-datatypes ((Unit!42652 0))(
  ( (Unit!42653) )
))
(declare-fun lt!888953 () Unit!42652)

(declare-datatypes ((tuple2!28898 0))(
  ( (tuple2!28899 (_1!16990 (_ BitVec 64)) (_2!16990 List!29233)) )
))
(declare-datatypes ((List!29234 0))(
  ( (Nil!29134) (Cons!29134 (h!34540 tuple2!28898) (t!210895 List!29234)) )
))
(declare-fun forallContained!868 (List!29234 Int tuple2!28898) Unit!42652)

(declare-datatypes ((ListLongMap!549 0))(
  ( (ListLongMap!550 (toList!1602 List!29234)) )
))
(declare-fun map!6229 (MutLongMap!3378) ListLongMap!549)

(assert (=> b!2482464 (= lt!888953 (forallContained!868 (toList!1602 (map!6229 (v!31487 (underlying!6964 thiss!42540)))) lambda!94099 (tuple2!28899 lt!888956 lt!888957)))))

(declare-fun apply!6932 (MutLongMap!3378 (_ BitVec 64)) List!29233)

(assert (=> b!2482464 (= lt!888957 (apply!6932 (v!31487 (underlying!6964 thiss!42540)) lt!888956))))

(declare-fun hash!702 (Hashable!3288 K!5530) (_ BitVec 64))

(assert (=> b!2482464 (= lt!888956 (hash!702 (hashF!5251 thiss!42540) key!2246))))

(declare-fun b!2482465 () Bool)

(declare-fun e!1575910 () Bool)

(declare-fun e!1575917 () Bool)

(assert (=> b!2482465 (= e!1575910 e!1575917)))

(declare-fun b!2482466 () Bool)

(declare-fun e!1575916 () Bool)

(assert (=> b!2482466 (= e!1575917 e!1575916)))

(declare-fun b!2482467 () Bool)

(declare-fun res!1050892 () Bool)

(assert (=> b!2482467 (=> (not res!1050892) (not e!1575914))))

(declare-fun valid!2582 (MutableMap!3288) Bool)

(assert (=> b!2482467 (= res!1050892 (valid!2582 thiss!42540))))

(declare-fun mapNonEmpty!15608 () Bool)

(declare-fun mapRes!15608 () Bool)

(declare-fun tp!794822 () Bool)

(declare-fun tp!794818 () Bool)

(assert (=> mapNonEmpty!15608 (= mapRes!15608 (and tp!794822 tp!794818))))

(declare-fun mapRest!15608 () (Array (_ BitVec 32) List!29233))

(declare-fun mapKey!15608 () (_ BitVec 32))

(declare-fun mapValue!15608 () List!29233)

(assert (=> mapNonEmpty!15608 (= (arr!5346 (_values!3658 (v!31486 (underlying!6963 (v!31487 (underlying!6964 thiss!42540)))))) (store mapRest!15608 mapKey!15608 mapValue!15608))))

(declare-fun e!1575911 () Bool)

(declare-fun tp!794817 () Bool)

(declare-fun tp!794819 () Bool)

(declare-fun array_inv!3839 (array!11981) Bool)

(declare-fun array_inv!3840 (array!11979) Bool)

(assert (=> b!2482468 (= e!1575916 (and tp!794821 tp!794817 tp!794819 (array_inv!3839 (_keys!3675 (v!31486 (underlying!6963 (v!31487 (underlying!6964 thiss!42540)))))) (array_inv!3840 (_values!3658 (v!31486 (underlying!6963 (v!31487 (underlying!6964 thiss!42540)))))) e!1575911))))

(declare-fun res!1050890 () Bool)

(assert (=> start!242280 (=> (not res!1050890) (not e!1575914))))

(get-info :version)

(assert (=> start!242280 (= res!1050890 ((_ is HashMap!3288) thiss!42540))))

(assert (=> start!242280 e!1575914))

(declare-fun e!1575912 () Bool)

(assert (=> start!242280 e!1575912))

(declare-fun tp_is_empty!12289 () Bool)

(assert (=> start!242280 tp_is_empty!12289))

(declare-fun e!1575915 () Bool)

(assert (=> b!2482469 (= e!1575912 (and e!1575915 tp!794816))))

(declare-fun b!2482470 () Bool)

(declare-fun tp!794820 () Bool)

(assert (=> b!2482470 (= e!1575911 (and tp!794820 mapRes!15608))))

(declare-fun condMapEmpty!15608 () Bool)

(declare-fun mapDefault!15608 () List!29233)

(assert (=> b!2482470 (= condMapEmpty!15608 (= (arr!5346 (_values!3658 (v!31486 (underlying!6963 (v!31487 (underlying!6964 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29233)) mapDefault!15608)))))

(declare-fun b!2482471 () Bool)

(declare-fun lt!888958 () MutLongMap!3378)

(assert (=> b!2482471 (= e!1575915 (and e!1575910 ((_ is LongMap!3378) lt!888958)))))

(assert (=> b!2482471 (= lt!888958 (v!31487 (underlying!6964 thiss!42540)))))

(declare-fun mapIsEmpty!15608 () Bool)

(assert (=> mapIsEmpty!15608 mapRes!15608))

(assert (= (and start!242280 res!1050890) b!2482467))

(assert (= (and b!2482467 res!1050892) b!2482463))

(assert (= (and b!2482463 res!1050891) b!2482464))

(assert (= (and b!2482470 condMapEmpty!15608) mapIsEmpty!15608))

(assert (= (and b!2482470 (not condMapEmpty!15608)) mapNonEmpty!15608))

(assert (= b!2482468 b!2482470))

(assert (= b!2482466 b!2482468))

(assert (= b!2482465 b!2482466))

(assert (= (and b!2482471 ((_ is LongMap!3378) (v!31487 (underlying!6964 thiss!42540)))) b!2482465))

(assert (= b!2482469 b!2482471))

(assert (= (and start!242280 ((_ is HashMap!3288) thiss!42540)) b!2482469))

(declare-fun m!2850503 () Bool)

(assert (=> mapNonEmpty!15608 m!2850503))

(declare-fun m!2850505 () Bool)

(assert (=> b!2482468 m!2850505))

(declare-fun m!2850507 () Bool)

(assert (=> b!2482468 m!2850507))

(declare-fun m!2850509 () Bool)

(assert (=> b!2482463 m!2850509))

(declare-fun m!2850511 () Bool)

(assert (=> b!2482464 m!2850511))

(declare-fun m!2850513 () Bool)

(assert (=> b!2482464 m!2850513))

(declare-fun m!2850515 () Bool)

(assert (=> b!2482464 m!2850515))

(assert (=> b!2482464 m!2850511))

(declare-fun m!2850517 () Bool)

(assert (=> b!2482464 m!2850517))

(declare-fun m!2850519 () Bool)

(assert (=> b!2482464 m!2850519))

(declare-fun m!2850521 () Bool)

(assert (=> b!2482464 m!2850521))

(declare-fun m!2850523 () Bool)

(assert (=> b!2482464 m!2850523))

(declare-fun m!2850525 () Bool)

(assert (=> b!2482464 m!2850525))

(declare-fun m!2850527 () Bool)

(assert (=> b!2482467 m!2850527))

(check-sat (not b_next!73073) (not b_next!73075) b_and!188621 (not mapNonEmpty!15608) (not b!2482467) (not b!2482468) (not b!2482464) b_and!188619 (not b!2482470) (not b!2482463) tp_is_empty!12289)
(check-sat b_and!188621 b_and!188619 (not b_next!73073) (not b_next!73075))
(get-model)

(declare-fun bs!467548 () Bool)

(declare-fun b!2482503 () Bool)

(assert (= bs!467548 (and b!2482503 b!2482464)))

(declare-fun lambda!94102 () Int)

(assert (=> bs!467548 (= lambda!94102 lambda!94099)))

(declare-fun bm!152049 () Bool)

(declare-datatypes ((Option!5755 0))(
  ( (None!5754) (Some!5754 (v!31492 tuple2!28894)) )
))
(declare-fun call!152057 () Option!5755)

(declare-fun call!152054 () List!29233)

(declare-fun getPair!72 (List!29233 K!5530) Option!5755)

(assert (=> bm!152049 (= call!152057 (getPair!72 call!152054 key!2246))))

(declare-fun b!2482494 () Bool)

(declare-fun e!1575934 () Unit!42652)

(declare-fun Unit!42654 () Unit!42652)

(assert (=> b!2482494 (= e!1575934 Unit!42654)))

(declare-fun b!2482495 () Bool)

(declare-fun e!1575936 () Unit!42652)

(declare-fun Unit!42655 () Unit!42652)

(assert (=> b!2482495 (= e!1575936 Unit!42655)))

(declare-fun b!2482496 () Bool)

(declare-fun e!1575933 () Bool)

(declare-fun call!152058 () Bool)

(assert (=> b!2482496 (= e!1575933 call!152058)))

(declare-fun b!2482497 () Bool)

(declare-fun e!1575935 () Bool)

(assert (=> b!2482497 (= e!1575935 call!152058)))

(declare-fun lt!889003 () (_ BitVec 64))

(declare-fun e!1575937 () Bool)

(declare-fun b!2482498 () Bool)

(declare-fun isDefined!4577 (Option!5755) Bool)

(assert (=> b!2482498 (= e!1575937 (isDefined!4577 (getPair!72 (apply!6932 (v!31487 (underlying!6964 thiss!42540)) lt!889003) key!2246)))))

(declare-fun b!2482499 () Bool)

(assert (=> b!2482499 false))

(declare-fun lt!889002 () Unit!42652)

(declare-fun lt!889009 () Unit!42652)

(assert (=> b!2482499 (= lt!889002 lt!889009)))

(declare-fun lt!889018 () ListLongMap!549)

(declare-fun contains!5128 (ListMap!1083 K!5530) Bool)

(declare-fun extractMap!177 (List!29234) ListMap!1083)

(assert (=> b!2482499 (contains!5128 (extractMap!177 (toList!1602 lt!889018)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!72 (ListLongMap!549 K!5530 Hashable!3288) Unit!42652)

(assert (=> b!2482499 (= lt!889009 (lemmaInLongMapThenInGenericMap!72 lt!889018 key!2246 (hashF!5251 thiss!42540)))))

(declare-fun call!152056 () ListLongMap!549)

(assert (=> b!2482499 (= lt!889018 call!152056)))

(declare-fun Unit!42656 () Unit!42652)

(assert (=> b!2482499 (= e!1575936 Unit!42656)))

(declare-fun b!2482500 () Bool)

(declare-fun e!1575932 () Unit!42652)

(declare-fun Unit!42657 () Unit!42652)

(assert (=> b!2482500 (= e!1575932 Unit!42657)))

(declare-fun b!2482501 () Bool)

(declare-fun e!1575938 () Unit!42652)

(assert (=> b!2482501 (= e!1575938 e!1575936)))

(declare-fun res!1050899 () Bool)

(declare-fun call!152059 () Bool)

(assert (=> b!2482501 (= res!1050899 call!152059)))

(assert (=> b!2482501 (=> (not res!1050899) (not e!1575935))))

(declare-fun c!394628 () Bool)

(assert (=> b!2482501 (= c!394628 e!1575935)))

(declare-fun bm!152051 () Bool)

(assert (=> bm!152051 (= call!152056 (map!6229 (v!31487 (underlying!6964 thiss!42540))))))

(declare-fun b!2482502 () Bool)

(declare-fun lt!889005 () Unit!42652)

(assert (=> b!2482502 (= e!1575938 lt!889005)))

(declare-fun lt!889000 () ListLongMap!549)

(assert (=> b!2482502 (= lt!889000 call!152056)))

(declare-fun lemmaInGenericMapThenInLongMap!72 (ListLongMap!549 K!5530 Hashable!3288) Unit!42652)

(assert (=> b!2482502 (= lt!889005 (lemmaInGenericMapThenInLongMap!72 lt!889000 key!2246 (hashF!5251 thiss!42540)))))

(declare-fun res!1050900 () Bool)

(assert (=> b!2482502 (= res!1050900 call!152059)))

(assert (=> b!2482502 (=> (not res!1050900) (not e!1575933))))

(assert (=> b!2482502 e!1575933))

(assert (=> b!2482503 (= e!1575932 (forallContained!868 (toList!1602 (map!6229 (v!31487 (underlying!6964 thiss!42540)))) lambda!94102 (tuple2!28899 lt!889003 (apply!6932 (v!31487 (underlying!6964 thiss!42540)) lt!889003))))))

(declare-fun c!394626 () Bool)

(declare-fun contains!5129 (List!29234 tuple2!28898) Bool)

(assert (=> b!2482503 (= c!394626 (not (contains!5129 (toList!1602 (map!6229 (v!31487 (underlying!6964 thiss!42540)))) (tuple2!28899 lt!889003 (apply!6932 (v!31487 (underlying!6964 thiss!42540)) lt!889003)))))))

(declare-fun lt!888999 () Unit!42652)

(assert (=> b!2482503 (= lt!888999 e!1575934)))

(declare-fun d!712990 () Bool)

(declare-fun lt!889017 () Bool)

(assert (=> d!712990 (= lt!889017 (contains!5128 (map!6228 thiss!42540) key!2246))))

(assert (=> d!712990 (= lt!889017 e!1575937)))

(declare-fun res!1050901 () Bool)

(assert (=> d!712990 (=> (not res!1050901) (not e!1575937))))

(declare-fun contains!5130 (MutLongMap!3378 (_ BitVec 64)) Bool)

(assert (=> d!712990 (= res!1050901 (contains!5130 (v!31487 (underlying!6964 thiss!42540)) lt!889003))))

(declare-fun lt!889001 () Unit!42652)

(assert (=> d!712990 (= lt!889001 e!1575938)))

(declare-fun c!394625 () Bool)

(assert (=> d!712990 (= c!394625 (contains!5128 (extractMap!177 (toList!1602 (map!6229 (v!31487 (underlying!6964 thiss!42540))))) key!2246))))

(declare-fun lt!889012 () Unit!42652)

(assert (=> d!712990 (= lt!889012 e!1575932)))

(declare-fun c!394627 () Bool)

(assert (=> d!712990 (= c!394627 (contains!5130 (v!31487 (underlying!6964 thiss!42540)) lt!889003))))

(assert (=> d!712990 (= lt!889003 (hash!702 (hashF!5251 thiss!42540) key!2246))))

(assert (=> d!712990 (valid!2582 thiss!42540)))

(assert (=> d!712990 (= (contains!5127 thiss!42540 key!2246) lt!889017)))

(declare-fun call!152055 () (_ BitVec 64))

(declare-fun bm!152050 () Bool)

(declare-fun contains!5131 (ListLongMap!549 (_ BitVec 64)) Bool)

(assert (=> bm!152050 (= call!152059 (contains!5131 (ite c!394625 lt!889000 call!152056) call!152055))))

(declare-fun bm!152052 () Bool)

(assert (=> bm!152052 (= call!152058 (isDefined!4577 call!152057))))

(declare-fun bm!152053 () Bool)

(declare-fun apply!6933 (ListLongMap!549 (_ BitVec 64)) List!29233)

(assert (=> bm!152053 (= call!152054 (apply!6933 (ite c!394625 lt!889000 call!152056) call!152055))))

(declare-fun bm!152054 () Bool)

(assert (=> bm!152054 (= call!152055 (hash!702 (hashF!5251 thiss!42540) key!2246))))

(declare-fun b!2482504 () Bool)

(assert (=> b!2482504 false))

(declare-fun lt!889013 () Unit!42652)

(declare-fun lt!889007 () Unit!42652)

(assert (=> b!2482504 (= lt!889013 lt!889007)))

(declare-fun lt!889010 () List!29234)

(declare-fun lt!889011 () List!29233)

(assert (=> b!2482504 (contains!5129 lt!889010 (tuple2!28899 lt!889003 lt!889011))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!77 (List!29234 (_ BitVec 64) List!29233) Unit!42652)

(assert (=> b!2482504 (= lt!889007 (lemmaGetValueByKeyImpliesContainsTuple!77 lt!889010 lt!889003 lt!889011))))

(assert (=> b!2482504 (= lt!889011 (apply!6932 (v!31487 (underlying!6964 thiss!42540)) lt!889003))))

(assert (=> b!2482504 (= lt!889010 (toList!1602 (map!6229 (v!31487 (underlying!6964 thiss!42540)))))))

(declare-fun lt!889008 () Unit!42652)

(declare-fun lt!889014 () Unit!42652)

(assert (=> b!2482504 (= lt!889008 lt!889014)))

(declare-fun lt!889016 () List!29234)

(declare-datatypes ((Option!5756 0))(
  ( (None!5755) (Some!5755 (v!31493 List!29233)) )
))
(declare-fun isDefined!4578 (Option!5756) Bool)

(declare-fun getValueByKey!140 (List!29234 (_ BitVec 64)) Option!5756)

(assert (=> b!2482504 (isDefined!4578 (getValueByKey!140 lt!889016 lt!889003))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!97 (List!29234 (_ BitVec 64)) Unit!42652)

(assert (=> b!2482504 (= lt!889014 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 lt!889016 lt!889003))))

(assert (=> b!2482504 (= lt!889016 (toList!1602 (map!6229 (v!31487 (underlying!6964 thiss!42540)))))))

(declare-fun lt!889015 () Unit!42652)

(declare-fun lt!889004 () Unit!42652)

(assert (=> b!2482504 (= lt!889015 lt!889004)))

(declare-fun lt!889006 () List!29234)

(declare-fun containsKey!139 (List!29234 (_ BitVec 64)) Bool)

(assert (=> b!2482504 (containsKey!139 lt!889006 lt!889003)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!73 (List!29234 (_ BitVec 64)) Unit!42652)

(assert (=> b!2482504 (= lt!889004 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!73 lt!889006 lt!889003))))

(assert (=> b!2482504 (= lt!889006 (toList!1602 (map!6229 (v!31487 (underlying!6964 thiss!42540)))))))

(declare-fun Unit!42658 () Unit!42652)

(assert (=> b!2482504 (= e!1575934 Unit!42658)))

(assert (= (and d!712990 c!394627) b!2482503))

(assert (= (and d!712990 (not c!394627)) b!2482500))

(assert (= (and b!2482503 c!394626) b!2482504))

(assert (= (and b!2482503 (not c!394626)) b!2482494))

(assert (= (and d!712990 c!394625) b!2482502))

(assert (= (and d!712990 (not c!394625)) b!2482501))

(assert (= (and b!2482502 res!1050900) b!2482496))

(assert (= (and b!2482501 res!1050899) b!2482497))

(assert (= (and b!2482501 c!394628) b!2482499))

(assert (= (and b!2482501 (not c!394628)) b!2482495))

(assert (= (or b!2482502 b!2482496 b!2482501 b!2482497) bm!152054))

(assert (= (or b!2482502 b!2482501 b!2482497 b!2482499) bm!152051))

(assert (= (or b!2482496 b!2482497) bm!152053))

(assert (= (or b!2482502 b!2482501) bm!152050))

(assert (= (or b!2482496 b!2482497) bm!152049))

(assert (= (or b!2482496 b!2482497) bm!152052))

(assert (= (and d!712990 res!1050901) b!2482498))

(declare-fun m!2850529 () Bool)

(assert (=> b!2482498 m!2850529))

(assert (=> b!2482498 m!2850529))

(declare-fun m!2850531 () Bool)

(assert (=> b!2482498 m!2850531))

(assert (=> b!2482498 m!2850531))

(declare-fun m!2850533 () Bool)

(assert (=> b!2482498 m!2850533))

(assert (=> b!2482503 m!2850513))

(assert (=> b!2482503 m!2850529))

(declare-fun m!2850535 () Bool)

(assert (=> b!2482503 m!2850535))

(declare-fun m!2850537 () Bool)

(assert (=> b!2482503 m!2850537))

(declare-fun m!2850539 () Bool)

(assert (=> bm!152050 m!2850539))

(assert (=> bm!152054 m!2850525))

(declare-fun m!2850541 () Bool)

(assert (=> bm!152049 m!2850541))

(declare-fun m!2850543 () Bool)

(assert (=> b!2482504 m!2850543))

(declare-fun m!2850545 () Bool)

(assert (=> b!2482504 m!2850545))

(declare-fun m!2850547 () Bool)

(assert (=> b!2482504 m!2850547))

(declare-fun m!2850549 () Bool)

(assert (=> b!2482504 m!2850549))

(declare-fun m!2850551 () Bool)

(assert (=> b!2482504 m!2850551))

(declare-fun m!2850553 () Bool)

(assert (=> b!2482504 m!2850553))

(assert (=> b!2482504 m!2850513))

(assert (=> b!2482504 m!2850547))

(assert (=> b!2482504 m!2850529))

(declare-fun m!2850555 () Bool)

(assert (=> b!2482504 m!2850555))

(declare-fun m!2850557 () Bool)

(assert (=> b!2482502 m!2850557))

(declare-fun m!2850559 () Bool)

(assert (=> bm!152053 m!2850559))

(declare-fun m!2850561 () Bool)

(assert (=> bm!152052 m!2850561))

(declare-fun m!2850563 () Bool)

(assert (=> b!2482499 m!2850563))

(assert (=> b!2482499 m!2850563))

(declare-fun m!2850565 () Bool)

(assert (=> b!2482499 m!2850565))

(declare-fun m!2850567 () Bool)

(assert (=> b!2482499 m!2850567))

(assert (=> bm!152051 m!2850513))

(declare-fun m!2850569 () Bool)

(assert (=> d!712990 m!2850569))

(assert (=> d!712990 m!2850519))

(assert (=> d!712990 m!2850513))

(assert (=> d!712990 m!2850519))

(declare-fun m!2850571 () Bool)

(assert (=> d!712990 m!2850571))

(assert (=> d!712990 m!2850527))

(declare-fun m!2850573 () Bool)

(assert (=> d!712990 m!2850573))

(declare-fun m!2850575 () Bool)

(assert (=> d!712990 m!2850575))

(assert (=> d!712990 m!2850573))

(assert (=> d!712990 m!2850525))

(assert (=> b!2482463 d!712990))

(declare-fun d!712992 () Bool)

(declare-fun res!1050906 () Bool)

(declare-fun e!1575943 () Bool)

(assert (=> d!712992 (=> res!1050906 e!1575943)))

(assert (=> d!712992 (= res!1050906 (not ((_ is Cons!29133) lt!888957)))))

(assert (=> d!712992 (= (noDuplicateKeys!87 lt!888957) e!1575943)))

(declare-fun b!2482509 () Bool)

(declare-fun e!1575944 () Bool)

(assert (=> b!2482509 (= e!1575943 e!1575944)))

(declare-fun res!1050907 () Bool)

(assert (=> b!2482509 (=> (not res!1050907) (not e!1575944))))

(declare-fun containsKey!140 (List!29233 K!5530) Bool)

(assert (=> b!2482509 (= res!1050907 (not (containsKey!140 (t!210894 lt!888957) (_1!16988 (h!34539 lt!888957)))))))

(declare-fun b!2482510 () Bool)

(assert (=> b!2482510 (= e!1575944 (noDuplicateKeys!87 (t!210894 lt!888957)))))

(assert (= (and d!712992 (not res!1050906)) b!2482509))

(assert (= (and b!2482509 res!1050907) b!2482510))

(declare-fun m!2850577 () Bool)

(assert (=> b!2482509 m!2850577))

(declare-fun m!2850579 () Bool)

(assert (=> b!2482510 m!2850579))

(assert (=> b!2482464 d!712992))

(declare-fun b!2482519 () Bool)

(declare-fun e!1575950 () List!29233)

(assert (=> b!2482519 (= e!1575950 (t!210894 lt!888957))))

(declare-fun b!2482520 () Bool)

(declare-fun e!1575949 () List!29233)

(assert (=> b!2482520 (= e!1575950 e!1575949)))

(declare-fun c!394633 () Bool)

(assert (=> b!2482520 (= c!394633 ((_ is Cons!29133) lt!888957))))

(declare-fun d!712994 () Bool)

(declare-fun lt!889021 () List!29233)

(assert (=> d!712994 (not (containsKey!140 lt!889021 key!2246))))

(assert (=> d!712994 (= lt!889021 e!1575950)))

(declare-fun c!394634 () Bool)

(assert (=> d!712994 (= c!394634 (and ((_ is Cons!29133) lt!888957) (= (_1!16988 (h!34539 lt!888957)) key!2246)))))

(assert (=> d!712994 (noDuplicateKeys!87 lt!888957)))

(assert (=> d!712994 (= (removePairForKey!79 lt!888957 key!2246) lt!889021)))

(declare-fun b!2482522 () Bool)

(assert (=> b!2482522 (= e!1575949 Nil!29133)))

(declare-fun b!2482521 () Bool)

(assert (=> b!2482521 (= e!1575949 (Cons!29133 (h!34539 lt!888957) (removePairForKey!79 (t!210894 lt!888957) key!2246)))))

(assert (= (and d!712994 c!394634) b!2482519))

(assert (= (and d!712994 (not c!394634)) b!2482520))

(assert (= (and b!2482520 c!394633) b!2482521))

(assert (= (and b!2482520 (not c!394633)) b!2482522))

(declare-fun m!2850581 () Bool)

(assert (=> d!712994 m!2850581))

(assert (=> d!712994 m!2850521))

(declare-fun m!2850583 () Bool)

(assert (=> b!2482521 m!2850583))

(assert (=> b!2482464 d!712994))

(declare-fun d!712996 () Bool)

(declare-fun hash!703 (Hashable!3288 K!5530) (_ BitVec 64))

(assert (=> d!712996 (= (hash!702 (hashF!5251 thiss!42540) key!2246) (hash!703 (hashF!5251 thiss!42540) key!2246))))

(declare-fun bs!467549 () Bool)

(assert (= bs!467549 d!712996))

(declare-fun m!2850585 () Bool)

(assert (=> bs!467549 m!2850585))

(assert (=> b!2482464 d!712996))

(declare-fun d!712998 () Bool)

(declare-fun map!6230 (LongMapFixedSize!6756) ListLongMap!549)

(assert (=> d!712998 (= (map!6229 (v!31487 (underlying!6964 thiss!42540))) (map!6230 (v!31486 (underlying!6963 (v!31487 (underlying!6964 thiss!42540))))))))

(declare-fun bs!467550 () Bool)

(assert (= bs!467550 d!712998))

(declare-fun m!2850587 () Bool)

(assert (=> bs!467550 m!2850587))

(assert (=> b!2482464 d!712998))

(declare-fun d!713000 () Bool)

(declare-fun dynLambda!12468 (Int tuple2!28898) Bool)

(assert (=> d!713000 (dynLambda!12468 lambda!94099 (tuple2!28899 lt!888956 lt!888957))))

(declare-fun lt!889024 () Unit!42652)

(declare-fun choose!14649 (List!29234 Int tuple2!28898) Unit!42652)

(assert (=> d!713000 (= lt!889024 (choose!14649 (toList!1602 (map!6229 (v!31487 (underlying!6964 thiss!42540)))) lambda!94099 (tuple2!28899 lt!888956 lt!888957)))))

(declare-fun e!1575953 () Bool)

(assert (=> d!713000 e!1575953))

(declare-fun res!1050910 () Bool)

(assert (=> d!713000 (=> (not res!1050910) (not e!1575953))))

(declare-fun forall!5974 (List!29234 Int) Bool)

(assert (=> d!713000 (= res!1050910 (forall!5974 (toList!1602 (map!6229 (v!31487 (underlying!6964 thiss!42540)))) lambda!94099))))

(assert (=> d!713000 (= (forallContained!868 (toList!1602 (map!6229 (v!31487 (underlying!6964 thiss!42540)))) lambda!94099 (tuple2!28899 lt!888956 lt!888957)) lt!889024)))

(declare-fun b!2482525 () Bool)

(assert (=> b!2482525 (= e!1575953 (contains!5129 (toList!1602 (map!6229 (v!31487 (underlying!6964 thiss!42540)))) (tuple2!28899 lt!888956 lt!888957)))))

(assert (= (and d!713000 res!1050910) b!2482525))

(declare-fun b_lambda!76139 () Bool)

(assert (=> (not b_lambda!76139) (not d!713000)))

(declare-fun m!2850589 () Bool)

(assert (=> d!713000 m!2850589))

(declare-fun m!2850591 () Bool)

(assert (=> d!713000 m!2850591))

(declare-fun m!2850593 () Bool)

(assert (=> d!713000 m!2850593))

(declare-fun m!2850595 () Bool)

(assert (=> b!2482525 m!2850595))

(assert (=> b!2482464 d!713000))

(declare-fun d!713002 () Bool)

(declare-fun lt!889027 () ListMap!1083)

(declare-fun invariantList!411 (List!29233) Bool)

(assert (=> d!713002 (invariantList!411 (toList!1601 lt!889027))))

(assert (=> d!713002 (= lt!889027 (extractMap!177 (toList!1602 (map!6229 (v!31487 (underlying!6964 thiss!42540))))))))

(assert (=> d!713002 (valid!2582 thiss!42540)))

(assert (=> d!713002 (= (map!6228 thiss!42540) lt!889027)))

(declare-fun bs!467551 () Bool)

(assert (= bs!467551 d!713002))

(declare-fun m!2850597 () Bool)

(assert (=> bs!467551 m!2850597))

(assert (=> bs!467551 m!2850513))

(assert (=> bs!467551 m!2850573))

(assert (=> bs!467551 m!2850527))

(assert (=> b!2482464 d!713002))

(declare-fun b!2482544 () Bool)

(declare-fun e!1575968 () tuple2!28896)

(declare-datatypes ((tuple2!28900 0))(
  ( (tuple2!28901 (_1!16991 Bool) (_2!16991 LongMapFixedSize!6756)) )
))
(declare-fun lt!889036 () tuple2!28900)

(assert (=> b!2482544 (= e!1575968 (tuple2!28897 (_1!16991 lt!889036) (LongMap!3378 (Cell!13330 (_2!16991 lt!889036)))))))

(declare-fun lt!889039 () tuple2!28896)

(declare-fun update!196 (LongMapFixedSize!6756 (_ BitVec 64) List!29233) tuple2!28900)

(assert (=> b!2482544 (= lt!889036 (update!196 (v!31486 (underlying!6963 (_2!16989 lt!889039))) lt!888956 (removePairForKey!79 lt!888957 key!2246)))))

(declare-fun b!2482545 () Bool)

(declare-fun e!1575965 () tuple2!28896)

(declare-fun lt!889038 () tuple2!28896)

(assert (=> b!2482545 (= e!1575965 (tuple2!28897 (_1!16989 lt!889038) (_2!16989 lt!889038)))))

(declare-fun repack!20 (MutLongMap!3378) tuple2!28896)

(assert (=> b!2482545 (= lt!889038 (repack!20 (v!31487 (underlying!6964 thiss!42540))))))

(declare-fun e!1575967 () Bool)

(declare-fun call!152065 () ListLongMap!549)

(declare-fun b!2482546 () Bool)

(declare-fun call!152064 () ListLongMap!549)

(declare-fun +!86 (ListLongMap!549 tuple2!28898) ListLongMap!549)

(assert (=> b!2482546 (= e!1575967 (= call!152065 (+!86 call!152064 (tuple2!28899 lt!888956 (removePairForKey!79 lt!888957 key!2246)))))))

(declare-fun bm!152059 () Bool)

(declare-fun lt!889037 () tuple2!28896)

(assert (=> bm!152059 (= call!152065 (map!6229 (_2!16989 lt!889037)))))

(declare-fun bm!152060 () Bool)

(assert (=> bm!152060 (= call!152064 (map!6229 (v!31487 (underlying!6964 thiss!42540))))))

(declare-fun d!713004 () Bool)

(declare-fun e!1575964 () Bool)

(assert (=> d!713004 e!1575964))

(declare-fun res!1050918 () Bool)

(assert (=> d!713004 (=> (not res!1050918) (not e!1575964))))

(assert (=> d!713004 (= res!1050918 ((_ is LongMap!3378) (_2!16989 lt!889037)))))

(assert (=> d!713004 (= lt!889037 e!1575968)))

(declare-fun c!394643 () Bool)

(assert (=> d!713004 (= c!394643 (_1!16989 lt!889039))))

(assert (=> d!713004 (= lt!889039 e!1575965)))

(declare-fun c!394641 () Bool)

(declare-fun imbalanced!16 (MutLongMap!3378) Bool)

(assert (=> d!713004 (= c!394641 (imbalanced!16 (v!31487 (underlying!6964 thiss!42540))))))

(declare-fun valid!2583 (MutLongMap!3378) Bool)

(assert (=> d!713004 (valid!2583 (v!31487 (underlying!6964 thiss!42540)))))

(assert (=> d!713004 (= (update!195 (v!31487 (underlying!6964 thiss!42540)) lt!888956 (removePairForKey!79 lt!888957 key!2246)) lt!889037)))

(declare-fun b!2482547 () Bool)

(declare-fun e!1575966 () Bool)

(assert (=> b!2482547 (= e!1575966 (= call!152065 call!152064))))

(declare-fun b!2482548 () Bool)

(assert (=> b!2482548 (= e!1575964 e!1575966)))

(declare-fun c!394642 () Bool)

(assert (=> b!2482548 (= c!394642 (_1!16989 lt!889037))))

(declare-fun b!2482549 () Bool)

(assert (=> b!2482549 (= e!1575965 (tuple2!28897 true (v!31487 (underlying!6964 thiss!42540))))))

(declare-fun b!2482550 () Bool)

(assert (=> b!2482550 (= e!1575966 e!1575967)))

(declare-fun res!1050919 () Bool)

(assert (=> b!2482550 (= res!1050919 (contains!5131 call!152065 lt!888956))))

(assert (=> b!2482550 (=> (not res!1050919) (not e!1575967))))

(declare-fun b!2482551 () Bool)

(assert (=> b!2482551 (= e!1575968 (tuple2!28897 false (_2!16989 lt!889039)))))

(declare-fun b!2482552 () Bool)

(declare-fun res!1050917 () Bool)

(assert (=> b!2482552 (=> (not res!1050917) (not e!1575964))))

(assert (=> b!2482552 (= res!1050917 (valid!2583 (_2!16989 lt!889037)))))

(assert (= (and d!713004 c!394641) b!2482545))

(assert (= (and d!713004 (not c!394641)) b!2482549))

(assert (= (and d!713004 c!394643) b!2482544))

(assert (= (and d!713004 (not c!394643)) b!2482551))

(assert (= (and d!713004 res!1050918) b!2482552))

(assert (= (and b!2482552 res!1050917) b!2482548))

(assert (= (and b!2482548 c!394642) b!2482550))

(assert (= (and b!2482548 (not c!394642)) b!2482547))

(assert (= (and b!2482550 res!1050919) b!2482546))

(assert (= (or b!2482550 b!2482546 b!2482547) bm!152059))

(assert (= (or b!2482546 b!2482547) bm!152060))

(declare-fun m!2850599 () Bool)

(assert (=> bm!152059 m!2850599))

(declare-fun m!2850601 () Bool)

(assert (=> b!2482550 m!2850601))

(declare-fun m!2850603 () Bool)

(assert (=> d!713004 m!2850603))

(declare-fun m!2850605 () Bool)

(assert (=> d!713004 m!2850605))

(declare-fun m!2850607 () Bool)

(assert (=> b!2482546 m!2850607))

(assert (=> b!2482544 m!2850511))

(declare-fun m!2850609 () Bool)

(assert (=> b!2482544 m!2850609))

(assert (=> bm!152060 m!2850513))

(declare-fun m!2850611 () Bool)

(assert (=> b!2482545 m!2850611))

(declare-fun m!2850613 () Bool)

(assert (=> b!2482552 m!2850613))

(assert (=> b!2482464 d!713004))

(declare-fun d!713006 () Bool)

(declare-fun e!1575971 () Bool)

(assert (=> d!713006 e!1575971))

(declare-fun c!394646 () Bool)

(assert (=> d!713006 (= c!394646 (contains!5130 (v!31487 (underlying!6964 thiss!42540)) lt!888956))))

(declare-fun lt!889042 () List!29233)

(declare-fun apply!6934 (LongMapFixedSize!6756 (_ BitVec 64)) List!29233)

(assert (=> d!713006 (= lt!889042 (apply!6934 (v!31486 (underlying!6963 (v!31487 (underlying!6964 thiss!42540)))) lt!888956))))

(assert (=> d!713006 (valid!2583 (v!31487 (underlying!6964 thiss!42540)))))

(assert (=> d!713006 (= (apply!6932 (v!31487 (underlying!6964 thiss!42540)) lt!888956) lt!889042)))

(declare-fun b!2482557 () Bool)

(declare-fun get!8985 (Option!5756) List!29233)

(assert (=> b!2482557 (= e!1575971 (= lt!889042 (get!8985 (getValueByKey!140 (toList!1602 (map!6229 (v!31487 (underlying!6964 thiss!42540)))) lt!888956))))))

(declare-fun b!2482558 () Bool)

(declare-fun dynLambda!12469 (Int (_ BitVec 64)) List!29233)

(assert (=> b!2482558 (= e!1575971 (= lt!889042 (dynLambda!12469 (defaultEntry!3752 (v!31486 (underlying!6963 (v!31487 (underlying!6964 thiss!42540))))) lt!888956)))))

(assert (=> b!2482558 ((_ is LongMap!3378) (v!31487 (underlying!6964 thiss!42540)))))

(assert (= (and d!713006 c!394646) b!2482557))

(assert (= (and d!713006 (not c!394646)) b!2482558))

(declare-fun b_lambda!76141 () Bool)

(assert (=> (not b_lambda!76141) (not b!2482558)))

(declare-fun t!210897 () Bool)

(declare-fun tb!140379 () Bool)

(assert (=> (and b!2482468 (= (defaultEntry!3752 (v!31486 (underlying!6963 (v!31487 (underlying!6964 thiss!42540))))) (defaultEntry!3752 (v!31486 (underlying!6963 (v!31487 (underlying!6964 thiss!42540)))))) t!210897) tb!140379))

(assert (=> b!2482558 t!210897))

(declare-fun result!173336 () Bool)

(declare-fun b_and!188623 () Bool)

(assert (= b_and!188619 (and (=> t!210897 result!173336) b_and!188623)))

(declare-fun m!2850615 () Bool)

(assert (=> d!713006 m!2850615))

(declare-fun m!2850617 () Bool)

(assert (=> d!713006 m!2850617))

(assert (=> d!713006 m!2850605))

(assert (=> b!2482557 m!2850513))

(declare-fun m!2850619 () Bool)

(assert (=> b!2482557 m!2850619))

(assert (=> b!2482557 m!2850619))

(declare-fun m!2850621 () Bool)

(assert (=> b!2482557 m!2850621))

(declare-fun m!2850623 () Bool)

(assert (=> b!2482558 m!2850623))

(assert (=> b!2482464 d!713006))

(declare-fun d!713008 () Bool)

(assert (=> d!713008 (= (array_inv!3839 (_keys!3675 (v!31486 (underlying!6963 (v!31487 (underlying!6964 thiss!42540)))))) (bvsge (size!22766 (_keys!3675 (v!31486 (underlying!6963 (v!31487 (underlying!6964 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2482468 d!713008))

(declare-fun d!713010 () Bool)

(assert (=> d!713010 (= (array_inv!3840 (_values!3658 (v!31486 (underlying!6963 (v!31487 (underlying!6964 thiss!42540)))))) (bvsge (size!22765 (_values!3658 (v!31486 (underlying!6963 (v!31487 (underlying!6964 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2482468 d!713010))

(declare-fun bs!467552 () Bool)

(declare-fun b!2482563 () Bool)

(assert (= bs!467552 (and b!2482563 b!2482464)))

(declare-fun lambda!94105 () Int)

(assert (=> bs!467552 (= lambda!94105 lambda!94099)))

(declare-fun bs!467553 () Bool)

(assert (= bs!467553 (and b!2482563 b!2482503)))

(assert (=> bs!467553 (= lambda!94105 lambda!94102)))

(declare-fun d!713012 () Bool)

(declare-fun res!1050924 () Bool)

(declare-fun e!1575974 () Bool)

(assert (=> d!713012 (=> (not res!1050924) (not e!1575974))))

(assert (=> d!713012 (= res!1050924 (valid!2583 (v!31487 (underlying!6964 thiss!42540))))))

(assert (=> d!713012 (= (valid!2582 thiss!42540) e!1575974)))

(declare-fun res!1050925 () Bool)

(assert (=> b!2482563 (=> (not res!1050925) (not e!1575974))))

(assert (=> b!2482563 (= res!1050925 (forall!5974 (toList!1602 (map!6229 (v!31487 (underlying!6964 thiss!42540)))) lambda!94105))))

(declare-fun b!2482564 () Bool)

(declare-fun allKeysSameHashInMap!168 (ListLongMap!549 Hashable!3288) Bool)

(assert (=> b!2482564 (= e!1575974 (allKeysSameHashInMap!168 (map!6229 (v!31487 (underlying!6964 thiss!42540))) (hashF!5251 thiss!42540)))))

(assert (= (and d!713012 res!1050924) b!2482563))

(assert (= (and b!2482563 res!1050925) b!2482564))

(assert (=> d!713012 m!2850605))

(assert (=> b!2482563 m!2850513))

(declare-fun m!2850625 () Bool)

(assert (=> b!2482563 m!2850625))

(assert (=> b!2482564 m!2850513))

(assert (=> b!2482564 m!2850513))

(declare-fun m!2850627 () Bool)

(assert (=> b!2482564 m!2850627))

(assert (=> b!2482467 d!713012))

(declare-fun tp_is_empty!12291 () Bool)

(declare-fun tp!794829 () Bool)

(declare-fun b!2482571 () Bool)

(declare-fun e!1575979 () Bool)

(assert (=> b!2482571 (= e!1575979 (and tp_is_empty!12289 tp_is_empty!12291 tp!794829))))

(declare-fun mapNonEmpty!15611 () Bool)

(declare-fun mapRes!15611 () Bool)

(declare-fun tp!794831 () Bool)

(assert (=> mapNonEmpty!15611 (= mapRes!15611 (and tp!794831 e!1575979))))

(declare-fun mapRest!15611 () (Array (_ BitVec 32) List!29233))

(declare-fun mapKey!15611 () (_ BitVec 32))

(declare-fun mapValue!15611 () List!29233)

(assert (=> mapNonEmpty!15611 (= mapRest!15608 (store mapRest!15611 mapKey!15611 mapValue!15611))))

(declare-fun mapIsEmpty!15611 () Bool)

(assert (=> mapIsEmpty!15611 mapRes!15611))

(declare-fun condMapEmpty!15611 () Bool)

(declare-fun mapDefault!15611 () List!29233)

(assert (=> mapNonEmpty!15608 (= condMapEmpty!15611 (= mapRest!15608 ((as const (Array (_ BitVec 32) List!29233)) mapDefault!15611)))))

(declare-fun e!1575980 () Bool)

(assert (=> mapNonEmpty!15608 (= tp!794822 (and e!1575980 mapRes!15611))))

(declare-fun tp!794830 () Bool)

(declare-fun b!2482572 () Bool)

(assert (=> b!2482572 (= e!1575980 (and tp_is_empty!12289 tp_is_empty!12291 tp!794830))))

(assert (= (and mapNonEmpty!15608 condMapEmpty!15611) mapIsEmpty!15611))

(assert (= (and mapNonEmpty!15608 (not condMapEmpty!15611)) mapNonEmpty!15611))

(assert (= (and mapNonEmpty!15611 ((_ is Cons!29133) mapValue!15611)) b!2482571))

(assert (= (and mapNonEmpty!15608 ((_ is Cons!29133) mapDefault!15611)) b!2482572))

(declare-fun m!2850629 () Bool)

(assert (=> mapNonEmpty!15611 m!2850629))

(declare-fun tp!794834 () Bool)

(declare-fun e!1575983 () Bool)

(declare-fun b!2482577 () Bool)

(assert (=> b!2482577 (= e!1575983 (and tp_is_empty!12289 tp_is_empty!12291 tp!794834))))

(assert (=> mapNonEmpty!15608 (= tp!794818 e!1575983)))

(assert (= (and mapNonEmpty!15608 ((_ is Cons!29133) mapValue!15608)) b!2482577))

(declare-fun b!2482578 () Bool)

(declare-fun e!1575984 () Bool)

(declare-fun tp!794835 () Bool)

(assert (=> b!2482578 (= e!1575984 (and tp_is_empty!12289 tp_is_empty!12291 tp!794835))))

(assert (=> b!2482468 (= tp!794817 e!1575984)))

(assert (= (and b!2482468 ((_ is Cons!29133) (zeroValue!3636 (v!31486 (underlying!6963 (v!31487 (underlying!6964 thiss!42540))))))) b!2482578))

(declare-fun tp!794836 () Bool)

(declare-fun e!1575985 () Bool)

(declare-fun b!2482579 () Bool)

(assert (=> b!2482579 (= e!1575985 (and tp_is_empty!12289 tp_is_empty!12291 tp!794836))))

(assert (=> b!2482468 (= tp!794819 e!1575985)))

(assert (= (and b!2482468 ((_ is Cons!29133) (minValue!3636 (v!31486 (underlying!6963 (v!31487 (underlying!6964 thiss!42540))))))) b!2482579))

(declare-fun e!1575986 () Bool)

(declare-fun tp!794837 () Bool)

(declare-fun b!2482580 () Bool)

(assert (=> b!2482580 (= e!1575986 (and tp_is_empty!12289 tp_is_empty!12291 tp!794837))))

(assert (=> b!2482470 (= tp!794820 e!1575986)))

(assert (= (and b!2482470 ((_ is Cons!29133) mapDefault!15608)) b!2482580))

(declare-fun b_lambda!76143 () Bool)

(assert (= b_lambda!76141 (or (and b!2482468 b_free!72369) b_lambda!76143)))

(declare-fun b_lambda!76145 () Bool)

(assert (= b_lambda!76139 (or b!2482464 b_lambda!76145)))

(declare-fun bs!467554 () Bool)

(declare-fun d!713014 () Bool)

(assert (= bs!467554 (and d!713014 b!2482464)))

(assert (=> bs!467554 (= (dynLambda!12468 lambda!94099 (tuple2!28899 lt!888956 lt!888957)) (noDuplicateKeys!87 (_2!16990 (tuple2!28899 lt!888956 lt!888957))))))

(declare-fun m!2850631 () Bool)

(assert (=> bs!467554 m!2850631))

(assert (=> d!713000 d!713014))

(check-sat (not b_next!73073) (not b!2482552) (not d!712998) (not bm!152050) tp_is_empty!12289 (not b!2482550) (not d!712994) (not bm!152052) (not b!2482580) (not b!2482545) (not b!2482509) (not b!2482546) (not bm!152060) (not b_next!73075) (not d!713004) (not b!2482579) tp_is_empty!12291 b_and!188621 (not b!2482572) (not b!2482525) (not d!713002) (not b!2482503) (not b!2482521) (not b!2482499) (not b!2482510) (not b!2482563) b_and!188623 (not b!2482578) (not tb!140379) (not b!2482557) (not bm!152059) (not bm!152053) (not b!2482571) (not b!2482502) (not b!2482544) (not b_lambda!76145) (not d!712990) (not b_lambda!76143) (not d!713000) (not bm!152054) (not b!2482504) (not bs!467554) (not b!2482577) (not mapNonEmpty!15611) (not b!2482564) (not d!712996) (not d!713006) (not bm!152049) (not b!2482498) (not bm!152051) (not d!713012))
(check-sat b_and!188621 b_and!188623 (not b_next!73073) (not b_next!73075))
