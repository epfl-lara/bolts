; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497586 () Bool)

(assert start!497586)

(declare-fun b!4812478 () Bool)

(declare-fun b_free!130267 () Bool)

(declare-fun b_next!131057 () Bool)

(assert (=> b!4812478 (= b_free!130267 (not b_next!131057))))

(declare-fun tp!1361312 () Bool)

(declare-fun b_and!342073 () Bool)

(assert (=> b!4812478 (= tp!1361312 b_and!342073)))

(declare-fun b!4812468 () Bool)

(declare-fun b_free!130269 () Bool)

(declare-fun b_next!131059 () Bool)

(assert (=> b!4812468 (= b_free!130269 (not b_next!131059))))

(declare-fun tp!1361310 () Bool)

(declare-fun b_and!342075 () Bool)

(assert (=> b!4812468 (= tp!1361310 b_and!342075)))

(declare-fun bs!1160191 () Bool)

(declare-fun b!4812470 () Bool)

(declare-fun b!4812479 () Bool)

(assert (= bs!1160191 (and b!4812470 b!4812479)))

(declare-fun lambda!233856 () Int)

(declare-fun lambda!233855 () Int)

(assert (=> bs!1160191 (= lambda!233856 lambda!233855)))

(declare-fun e!3006618 () Bool)

(declare-fun e!3006624 () Bool)

(assert (=> b!4812468 (= e!3006618 (and e!3006624 tp!1361310))))

(declare-fun b!4812469 () Bool)

(declare-fun e!3006616 () Bool)

(declare-fun e!3006614 () Bool)

(assert (=> b!4812469 (= e!3006616 e!3006614)))

(declare-fun res!2046923 () Bool)

(assert (=> b!4812469 (=> (not res!2046923) (not e!3006614))))

(declare-datatypes ((K!16219 0))(
  ( (K!16220 (val!21281 Int)) )
))
(declare-datatypes ((V!16465 0))(
  ( (V!16466 (val!21282 Int)) )
))
(declare-datatypes ((tuple2!57502 0))(
  ( (tuple2!57503 (_1!32045 K!16219) (_2!32045 V!16465)) )
))
(declare-datatypes ((List!54715 0))(
  ( (Nil!54591) (Cons!54591 (h!61023 tuple2!57502) (t!362205 List!54715)) )
))
(declare-datatypes ((tuple2!57504 0))(
  ( (tuple2!57505 (_1!32046 (_ BitVec 64)) (_2!32046 List!54715)) )
))
(declare-datatypes ((List!54716 0))(
  ( (Nil!54592) (Cons!54592 (h!61024 tuple2!57504) (t!362206 List!54716)) )
))
(declare-datatypes ((ListLongMap!5651 0))(
  ( (ListLongMap!5652 (toList!7174 List!54716)) )
))
(declare-fun lt!1963785 () ListLongMap!5651)

(declare-fun key!1652 () K!16219)

(declare-datatypes ((ListMap!6591 0))(
  ( (ListMap!6592 (toList!7175 List!54715)) )
))
(declare-fun contains!18325 (ListMap!6591 K!16219) Bool)

(declare-fun extractMap!2547 (List!54716) ListMap!6591)

(assert (=> b!4812469 (= res!2046923 (not (contains!18325 (extractMap!2547 (toList!7174 lt!1963785)) key!1652)))))

(declare-datatypes ((array!18708 0))(
  ( (array!18709 (arr!8347 (Array (_ BitVec 32) (_ BitVec 64))) (size!36593 (_ BitVec 32))) )
))
(declare-datatypes ((array!18710 0))(
  ( (array!18711 (arr!8348 (Array (_ BitVec 32) List!54715)) (size!36594 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10162 0))(
  ( (LongMapFixedSize!10163 (defaultEntry!5503 Int) (mask!15102 (_ BitVec 32)) (extraKeys!5361 (_ BitVec 32)) (zeroValue!5374 List!54715) (minValue!5374 List!54715) (_size!10187 (_ BitVec 32)) (_keys!5430 array!18708) (_values!5399 array!18710) (_vacant!5146 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20089 0))(
  ( (Cell!20090 (v!48931 LongMapFixedSize!10162)) )
))
(declare-datatypes ((MutLongMap!5081 0))(
  ( (LongMap!5081 (underlying!10369 Cell!20089)) (MutLongMapExt!5080 (__x!33341 Int)) )
))
(declare-datatypes ((Hashable!7092 0))(
  ( (HashableExt!7091 (__x!33342 Int)) )
))
(declare-datatypes ((Cell!20091 0))(
  ( (Cell!20092 (v!48932 MutLongMap!5081)) )
))
(declare-datatypes ((MutableMap!4965 0))(
  ( (MutableMapExt!4964 (__x!33343 Int)) (HashMap!4965 (underlying!10370 Cell!20091) (hashF!13369 Hashable!7092) (_size!10188 (_ BitVec 32)) (defaultValue!5136 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4965)

(declare-fun map!12459 (MutLongMap!5081) ListLongMap!5651)

(assert (=> b!4812469 (= lt!1963785 (map!12459 (v!48932 (underlying!10370 thiss!41921))))))

(declare-datatypes ((Unit!141649 0))(
  ( (Unit!141650) )
))
(declare-fun lt!1963787 () Unit!141649)

(declare-fun e!3006615 () Unit!141649)

(assert (=> b!4812469 (= lt!1963787 e!3006615)))

(declare-fun c!820214 () Bool)

(declare-fun lt!1963790 () (_ BitVec 64))

(declare-fun contains!18326 (MutLongMap!5081 (_ BitVec 64)) Bool)

(assert (=> b!4812469 (= c!820214 (contains!18326 (v!48932 (underlying!10370 thiss!41921)) lt!1963790))))

(declare-fun hash!5157 (Hashable!7092 K!16219) (_ BitVec 64))

(assert (=> b!4812469 (= lt!1963790 (hash!5157 (hashF!13369 thiss!41921) key!1652))))

(declare-fun forall!12403 (List!54716 Int) Bool)

(assert (=> b!4812470 (= e!3006614 (not (forall!12403 (toList!7174 lt!1963785) lambda!233856)))))

(declare-fun b!4812471 () Bool)

(declare-fun e!3006622 () Bool)

(declare-fun e!3006619 () Bool)

(assert (=> b!4812471 (= e!3006622 e!3006619)))

(declare-fun b!4812473 () Bool)

(declare-fun res!2046924 () Bool)

(assert (=> b!4812473 (=> (not res!2046924) (not e!3006614))))

(declare-fun contains!18327 (ListLongMap!5651 (_ BitVec 64)) Bool)

(assert (=> b!4812473 (= res!2046924 (contains!18327 lt!1963785 lt!1963790))))

(declare-fun b!4812474 () Bool)

(declare-fun e!3006623 () Unit!141649)

(declare-fun Unit!141651 () Unit!141649)

(assert (=> b!4812474 (= e!3006623 Unit!141651)))

(declare-fun b!4812475 () Bool)

(declare-fun e!3006621 () Bool)

(assert (=> b!4812475 (= e!3006619 e!3006621)))

(declare-fun b!4812476 () Bool)

(declare-fun Unit!141652 () Unit!141649)

(assert (=> b!4812476 (= e!3006615 Unit!141652)))

(declare-fun b!4812477 () Bool)

(assert (=> b!4812477 false))

(declare-fun lt!1963792 () List!54715)

(declare-fun lt!1963794 () Unit!141649)

(declare-fun lt!1963784 () ListLongMap!5651)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1013 (List!54716 (_ BitVec 64) List!54715) Unit!141649)

(assert (=> b!4812477 (= lt!1963794 (lemmaGetValueByKeyImpliesContainsTuple!1013 (toList!7174 lt!1963784) lt!1963790 lt!1963792))))

(declare-datatypes ((Option!13331 0))(
  ( (None!13330) (Some!13330 (v!48933 List!54715)) )
))
(declare-fun isDefined!10468 (Option!13331) Bool)

(declare-fun getValueByKey!2508 (List!54716 (_ BitVec 64)) Option!13331)

(assert (=> b!4812477 (isDefined!10468 (getValueByKey!2508 (toList!7174 lt!1963784) lt!1963790))))

(declare-fun lt!1963791 () Unit!141649)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2295 (List!54716 (_ BitVec 64)) Unit!141649)

(assert (=> b!4812477 (= lt!1963791 (lemmaContainsKeyImpliesGetValueByKeyDefined!2295 (toList!7174 lt!1963784) lt!1963790))))

(declare-fun containsKey!4172 (List!54716 (_ BitVec 64)) Bool)

(assert (=> b!4812477 (containsKey!4172 (toList!7174 lt!1963784) lt!1963790)))

(declare-fun lt!1963788 () Unit!141649)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!290 (List!54716 (_ BitVec 64)) Unit!141649)

(assert (=> b!4812477 (= lt!1963788 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!290 (toList!7174 lt!1963784) lt!1963790))))

(declare-fun Unit!141653 () Unit!141649)

(assert (=> b!4812477 (= e!3006623 Unit!141653)))

(declare-fun tp!1361309 () Bool)

(declare-fun tp!1361308 () Bool)

(declare-fun e!3006617 () Bool)

(declare-fun array_inv!6031 (array!18708) Bool)

(declare-fun array_inv!6032 (array!18710) Bool)

(assert (=> b!4812478 (= e!3006621 (and tp!1361312 tp!1361308 tp!1361309 (array_inv!6031 (_keys!5430 (v!48931 (underlying!10369 (v!48932 (underlying!10370 thiss!41921)))))) (array_inv!6032 (_values!5399 (v!48931 (underlying!10369 (v!48932 (underlying!10370 thiss!41921)))))) e!3006617))))

(declare-fun lt!1963793 () tuple2!57504)

(declare-fun forallContained!4280 (List!54716 Int tuple2!57504) Unit!141649)

(assert (=> b!4812479 (= e!3006615 (forallContained!4280 (toList!7174 lt!1963784) lambda!233855 lt!1963793))))

(assert (=> b!4812479 (= lt!1963784 (map!12459 (v!48932 (underlying!10370 thiss!41921))))))

(declare-fun apply!13186 (MutLongMap!5081 (_ BitVec 64)) List!54715)

(assert (=> b!4812479 (= lt!1963792 (apply!13186 (v!48932 (underlying!10370 thiss!41921)) lt!1963790))))

(assert (=> b!4812479 (= lt!1963793 (tuple2!57505 lt!1963790 lt!1963792))))

(declare-fun c!820215 () Bool)

(declare-fun contains!18328 (List!54716 tuple2!57504) Bool)

(assert (=> b!4812479 (= c!820215 (not (contains!18328 (toList!7174 lt!1963784) lt!1963793)))))

(declare-fun lt!1963786 () Unit!141649)

(assert (=> b!4812479 (= lt!1963786 e!3006623)))

(declare-fun b!4812480 () Bool)

(declare-fun res!2046922 () Bool)

(assert (=> b!4812480 (=> (not res!2046922) (not e!3006616))))

(declare-fun valid!4110 (MutableMap!4965) Bool)

(assert (=> b!4812480 (= res!2046922 (valid!4110 thiss!41921))))

(declare-fun b!4812481 () Bool)

(declare-fun lt!1963789 () MutLongMap!5081)

(get-info :version)

(assert (=> b!4812481 (= e!3006624 (and e!3006622 ((_ is LongMap!5081) lt!1963789)))))

(assert (=> b!4812481 (= lt!1963789 (v!48932 (underlying!10370 thiss!41921)))))

(declare-fun mapNonEmpty!22430 () Bool)

(declare-fun mapRes!22430 () Bool)

(declare-fun tp!1361311 () Bool)

(declare-fun tp!1361314 () Bool)

(assert (=> mapNonEmpty!22430 (= mapRes!22430 (and tp!1361311 tp!1361314))))

(declare-fun mapKey!22430 () (_ BitVec 32))

(declare-fun mapRest!22430 () (Array (_ BitVec 32) List!54715))

(declare-fun mapValue!22430 () List!54715)

(assert (=> mapNonEmpty!22430 (= (arr!8348 (_values!5399 (v!48931 (underlying!10369 (v!48932 (underlying!10370 thiss!41921)))))) (store mapRest!22430 mapKey!22430 mapValue!22430))))

(declare-fun b!4812472 () Bool)

(declare-fun tp!1361313 () Bool)

(assert (=> b!4812472 (= e!3006617 (and tp!1361313 mapRes!22430))))

(declare-fun condMapEmpty!22430 () Bool)

(declare-fun mapDefault!22430 () List!54715)

(assert (=> b!4812472 (= condMapEmpty!22430 (= (arr!8348 (_values!5399 (v!48931 (underlying!10369 (v!48932 (underlying!10370 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54715)) mapDefault!22430)))))

(declare-fun res!2046920 () Bool)

(assert (=> start!497586 (=> (not res!2046920) (not e!3006616))))

(assert (=> start!497586 (= res!2046920 ((_ is HashMap!4965) thiss!41921))))

(assert (=> start!497586 e!3006616))

(assert (=> start!497586 e!3006618))

(declare-fun tp_is_empty!34047 () Bool)

(assert (=> start!497586 tp_is_empty!34047))

(declare-fun b!4812482 () Bool)

(declare-fun res!2046921 () Bool)

(assert (=> b!4812482 (=> (not res!2046921) (not e!3006614))))

(declare-datatypes ((Option!13332 0))(
  ( (None!13331) (Some!13331 (v!48934 tuple2!57502)) )
))
(declare-fun isDefined!10469 (Option!13332) Bool)

(declare-fun getPair!971 (List!54715 K!16219) Option!13332)

(declare-fun apply!13187 (ListLongMap!5651 (_ BitVec 64)) List!54715)

(assert (=> b!4812482 (= res!2046921 (isDefined!10469 (getPair!971 (apply!13187 lt!1963785 lt!1963790) key!1652)))))

(declare-fun mapIsEmpty!22430 () Bool)

(assert (=> mapIsEmpty!22430 mapRes!22430))

(assert (= (and start!497586 res!2046920) b!4812480))

(assert (= (and b!4812480 res!2046922) b!4812469))

(assert (= (and b!4812469 c!820214) b!4812479))

(assert (= (and b!4812469 (not c!820214)) b!4812476))

(assert (= (and b!4812479 c!820215) b!4812477))

(assert (= (and b!4812479 (not c!820215)) b!4812474))

(assert (= (and b!4812469 res!2046923) b!4812473))

(assert (= (and b!4812473 res!2046924) b!4812482))

(assert (= (and b!4812482 res!2046921) b!4812470))

(assert (= (and b!4812472 condMapEmpty!22430) mapIsEmpty!22430))

(assert (= (and b!4812472 (not condMapEmpty!22430)) mapNonEmpty!22430))

(assert (= b!4812478 b!4812472))

(assert (= b!4812475 b!4812478))

(assert (= b!4812471 b!4812475))

(assert (= (and b!4812481 ((_ is LongMap!5081) (v!48932 (underlying!10370 thiss!41921)))) b!4812471))

(assert (= b!4812468 b!4812481))

(assert (= (and start!497586 ((_ is HashMap!4965) thiss!41921)) b!4812468))

(declare-fun m!5798066 () Bool)

(assert (=> b!4812477 m!5798066))

(declare-fun m!5798068 () Bool)

(assert (=> b!4812477 m!5798068))

(declare-fun m!5798070 () Bool)

(assert (=> b!4812477 m!5798070))

(declare-fun m!5798072 () Bool)

(assert (=> b!4812477 m!5798072))

(declare-fun m!5798074 () Bool)

(assert (=> b!4812477 m!5798074))

(declare-fun m!5798076 () Bool)

(assert (=> b!4812477 m!5798076))

(assert (=> b!4812477 m!5798072))

(declare-fun m!5798078 () Bool)

(assert (=> b!4812482 m!5798078))

(assert (=> b!4812482 m!5798078))

(declare-fun m!5798080 () Bool)

(assert (=> b!4812482 m!5798080))

(assert (=> b!4812482 m!5798080))

(declare-fun m!5798082 () Bool)

(assert (=> b!4812482 m!5798082))

(declare-fun m!5798084 () Bool)

(assert (=> b!4812479 m!5798084))

(declare-fun m!5798086 () Bool)

(assert (=> b!4812479 m!5798086))

(declare-fun m!5798088 () Bool)

(assert (=> b!4812479 m!5798088))

(declare-fun m!5798090 () Bool)

(assert (=> b!4812479 m!5798090))

(declare-fun m!5798092 () Bool)

(assert (=> b!4812469 m!5798092))

(declare-fun m!5798094 () Bool)

(assert (=> b!4812469 m!5798094))

(declare-fun m!5798096 () Bool)

(assert (=> b!4812469 m!5798096))

(declare-fun m!5798098 () Bool)

(assert (=> b!4812469 m!5798098))

(assert (=> b!4812469 m!5798092))

(assert (=> b!4812469 m!5798086))

(declare-fun m!5798100 () Bool)

(assert (=> b!4812473 m!5798100))

(declare-fun m!5798102 () Bool)

(assert (=> b!4812480 m!5798102))

(declare-fun m!5798104 () Bool)

(assert (=> b!4812478 m!5798104))

(declare-fun m!5798106 () Bool)

(assert (=> b!4812478 m!5798106))

(declare-fun m!5798108 () Bool)

(assert (=> mapNonEmpty!22430 m!5798108))

(declare-fun m!5798110 () Bool)

(assert (=> b!4812470 m!5798110))

(check-sat b_and!342075 (not mapNonEmpty!22430) b_and!342073 (not b!4812480) (not b!4812469) tp_is_empty!34047 (not b!4812478) (not b!4812477) (not b!4812470) (not b!4812482) (not b_next!131059) (not b!4812473) (not b!4812472) (not b_next!131057) (not b!4812479))
(check-sat b_and!342073 b_and!342075 (not b_next!131057) (not b_next!131059))
(get-model)

(declare-fun d!1540641 () Bool)

(declare-fun isEmpty!29555 (Option!13332) Bool)

(assert (=> d!1540641 (= (isDefined!10469 (getPair!971 (apply!13187 lt!1963785 lt!1963790) key!1652)) (not (isEmpty!29555 (getPair!971 (apply!13187 lt!1963785 lt!1963790) key!1652))))))

(declare-fun bs!1160192 () Bool)

(assert (= bs!1160192 d!1540641))

(assert (=> bs!1160192 m!5798080))

(declare-fun m!5798112 () Bool)

(assert (=> bs!1160192 m!5798112))

(assert (=> b!4812482 d!1540641))

(declare-fun d!1540643 () Bool)

(declare-fun e!3006638 () Bool)

(assert (=> d!1540643 e!3006638))

(declare-fun res!2046936 () Bool)

(assert (=> d!1540643 (=> res!2046936 e!3006638)))

(declare-fun e!3006635 () Bool)

(assert (=> d!1540643 (= res!2046936 e!3006635)))

(declare-fun res!2046933 () Bool)

(assert (=> d!1540643 (=> (not res!2046933) (not e!3006635))))

(declare-fun lt!1963797 () Option!13332)

(assert (=> d!1540643 (= res!2046933 (isEmpty!29555 lt!1963797))))

(declare-fun e!3006637 () Option!13332)

(assert (=> d!1540643 (= lt!1963797 e!3006637)))

(declare-fun c!820221 () Bool)

(assert (=> d!1540643 (= c!820221 (and ((_ is Cons!54591) (apply!13187 lt!1963785 lt!1963790)) (= (_1!32045 (h!61023 (apply!13187 lt!1963785 lt!1963790))) key!1652)))))

(declare-fun noDuplicateKeys!2393 (List!54715) Bool)

(assert (=> d!1540643 (noDuplicateKeys!2393 (apply!13187 lt!1963785 lt!1963790))))

(assert (=> d!1540643 (= (getPair!971 (apply!13187 lt!1963785 lt!1963790) key!1652) lt!1963797)))

(declare-fun b!4812499 () Bool)

(declare-fun res!2046935 () Bool)

(declare-fun e!3006636 () Bool)

(assert (=> b!4812499 (=> (not res!2046935) (not e!3006636))))

(declare-fun get!18677 (Option!13332) tuple2!57502)

(assert (=> b!4812499 (= res!2046935 (= (_1!32045 (get!18677 lt!1963797)) key!1652))))

(declare-fun b!4812500 () Bool)

(declare-fun e!3006639 () Option!13332)

(assert (=> b!4812500 (= e!3006637 e!3006639)))

(declare-fun c!820220 () Bool)

(assert (=> b!4812500 (= c!820220 ((_ is Cons!54591) (apply!13187 lt!1963785 lt!1963790)))))

(declare-fun b!4812501 () Bool)

(assert (=> b!4812501 (= e!3006637 (Some!13331 (h!61023 (apply!13187 lt!1963785 lt!1963790))))))

(declare-fun b!4812502 () Bool)

(declare-fun contains!18329 (List!54715 tuple2!57502) Bool)

(assert (=> b!4812502 (= e!3006636 (contains!18329 (apply!13187 lt!1963785 lt!1963790) (get!18677 lt!1963797)))))

(declare-fun b!4812503 () Bool)

(declare-fun containsKey!4173 (List!54715 K!16219) Bool)

(assert (=> b!4812503 (= e!3006635 (not (containsKey!4173 (apply!13187 lt!1963785 lt!1963790) key!1652)))))

(declare-fun b!4812504 () Bool)

(assert (=> b!4812504 (= e!3006639 (getPair!971 (t!362205 (apply!13187 lt!1963785 lt!1963790)) key!1652))))

(declare-fun b!4812505 () Bool)

(assert (=> b!4812505 (= e!3006638 e!3006636)))

(declare-fun res!2046934 () Bool)

(assert (=> b!4812505 (=> (not res!2046934) (not e!3006636))))

(assert (=> b!4812505 (= res!2046934 (isDefined!10469 lt!1963797))))

(declare-fun b!4812506 () Bool)

(assert (=> b!4812506 (= e!3006639 None!13331)))

(assert (= (and d!1540643 c!820221) b!4812501))

(assert (= (and d!1540643 (not c!820221)) b!4812500))

(assert (= (and b!4812500 c!820220) b!4812504))

(assert (= (and b!4812500 (not c!820220)) b!4812506))

(assert (= (and d!1540643 res!2046933) b!4812503))

(assert (= (and d!1540643 (not res!2046936)) b!4812505))

(assert (= (and b!4812505 res!2046934) b!4812499))

(assert (= (and b!4812499 res!2046935) b!4812502))

(declare-fun m!5798114 () Bool)

(assert (=> b!4812504 m!5798114))

(declare-fun m!5798116 () Bool)

(assert (=> b!4812505 m!5798116))

(declare-fun m!5798118 () Bool)

(assert (=> b!4812502 m!5798118))

(assert (=> b!4812502 m!5798078))

(assert (=> b!4812502 m!5798118))

(declare-fun m!5798120 () Bool)

(assert (=> b!4812502 m!5798120))

(assert (=> b!4812503 m!5798078))

(declare-fun m!5798122 () Bool)

(assert (=> b!4812503 m!5798122))

(assert (=> b!4812499 m!5798118))

(declare-fun m!5798124 () Bool)

(assert (=> d!1540643 m!5798124))

(assert (=> d!1540643 m!5798078))

(declare-fun m!5798126 () Bool)

(assert (=> d!1540643 m!5798126))

(assert (=> b!4812482 d!1540643))

(declare-fun d!1540645 () Bool)

(declare-fun get!18678 (Option!13331) List!54715)

(assert (=> d!1540645 (= (apply!13187 lt!1963785 lt!1963790) (get!18678 (getValueByKey!2508 (toList!7174 lt!1963785) lt!1963790)))))

(declare-fun bs!1160193 () Bool)

(assert (= bs!1160193 d!1540645))

(declare-fun m!5798128 () Bool)

(assert (=> bs!1160193 m!5798128))

(assert (=> bs!1160193 m!5798128))

(declare-fun m!5798130 () Bool)

(assert (=> bs!1160193 m!5798130))

(assert (=> b!4812482 d!1540645))

(declare-fun d!1540647 () Bool)

(declare-fun e!3006644 () Bool)

(assert (=> d!1540647 e!3006644))

(declare-fun res!2046939 () Bool)

(assert (=> d!1540647 (=> res!2046939 e!3006644)))

(declare-fun lt!1963809 () Bool)

(assert (=> d!1540647 (= res!2046939 (not lt!1963809))))

(declare-fun lt!1963807 () Bool)

(assert (=> d!1540647 (= lt!1963809 lt!1963807)))

(declare-fun lt!1963808 () Unit!141649)

(declare-fun e!3006645 () Unit!141649)

(assert (=> d!1540647 (= lt!1963808 e!3006645)))

(declare-fun c!820224 () Bool)

(assert (=> d!1540647 (= c!820224 lt!1963807)))

(assert (=> d!1540647 (= lt!1963807 (containsKey!4172 (toList!7174 lt!1963785) lt!1963790))))

(assert (=> d!1540647 (= (contains!18327 lt!1963785 lt!1963790) lt!1963809)))

(declare-fun b!4812513 () Bool)

(declare-fun lt!1963806 () Unit!141649)

(assert (=> b!4812513 (= e!3006645 lt!1963806)))

(assert (=> b!4812513 (= lt!1963806 (lemmaContainsKeyImpliesGetValueByKeyDefined!2295 (toList!7174 lt!1963785) lt!1963790))))

(assert (=> b!4812513 (isDefined!10468 (getValueByKey!2508 (toList!7174 lt!1963785) lt!1963790))))

(declare-fun b!4812514 () Bool)

(declare-fun Unit!141654 () Unit!141649)

(assert (=> b!4812514 (= e!3006645 Unit!141654)))

(declare-fun b!4812515 () Bool)

(assert (=> b!4812515 (= e!3006644 (isDefined!10468 (getValueByKey!2508 (toList!7174 lt!1963785) lt!1963790)))))

(assert (= (and d!1540647 c!820224) b!4812513))

(assert (= (and d!1540647 (not c!820224)) b!4812514))

(assert (= (and d!1540647 (not res!2046939)) b!4812515))

(declare-fun m!5798132 () Bool)

(assert (=> d!1540647 m!5798132))

(declare-fun m!5798134 () Bool)

(assert (=> b!4812513 m!5798134))

(assert (=> b!4812513 m!5798128))

(assert (=> b!4812513 m!5798128))

(declare-fun m!5798136 () Bool)

(assert (=> b!4812513 m!5798136))

(assert (=> b!4812515 m!5798128))

(assert (=> b!4812515 m!5798128))

(assert (=> b!4812515 m!5798136))

(assert (=> b!4812473 d!1540647))

(declare-fun d!1540649 () Bool)

(assert (=> d!1540649 (= (array_inv!6031 (_keys!5430 (v!48931 (underlying!10369 (v!48932 (underlying!10370 thiss!41921)))))) (bvsge (size!36593 (_keys!5430 (v!48931 (underlying!10369 (v!48932 (underlying!10370 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4812478 d!1540649))

(declare-fun d!1540651 () Bool)

(assert (=> d!1540651 (= (array_inv!6032 (_values!5399 (v!48931 (underlying!10369 (v!48932 (underlying!10370 thiss!41921)))))) (bvsge (size!36594 (_values!5399 (v!48931 (underlying!10369 (v!48932 (underlying!10370 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4812478 d!1540651))

(declare-fun d!1540653 () Bool)

(assert (=> d!1540653 (isDefined!10468 (getValueByKey!2508 (toList!7174 lt!1963784) lt!1963790))))

(declare-fun lt!1963812 () Unit!141649)

(declare-fun choose!34872 (List!54716 (_ BitVec 64)) Unit!141649)

(assert (=> d!1540653 (= lt!1963812 (choose!34872 (toList!7174 lt!1963784) lt!1963790))))

(declare-fun e!3006648 () Bool)

(assert (=> d!1540653 e!3006648))

(declare-fun res!2046942 () Bool)

(assert (=> d!1540653 (=> (not res!2046942) (not e!3006648))))

(declare-fun isStrictlySorted!935 (List!54716) Bool)

(assert (=> d!1540653 (= res!2046942 (isStrictlySorted!935 (toList!7174 lt!1963784)))))

(assert (=> d!1540653 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2295 (toList!7174 lt!1963784) lt!1963790) lt!1963812)))

(declare-fun b!4812518 () Bool)

(assert (=> b!4812518 (= e!3006648 (containsKey!4172 (toList!7174 lt!1963784) lt!1963790))))

(assert (= (and d!1540653 res!2046942) b!4812518))

(assert (=> d!1540653 m!5798072))

(assert (=> d!1540653 m!5798072))

(assert (=> d!1540653 m!5798074))

(declare-fun m!5798138 () Bool)

(assert (=> d!1540653 m!5798138))

(declare-fun m!5798140 () Bool)

(assert (=> d!1540653 m!5798140))

(assert (=> b!4812518 m!5798068))

(assert (=> b!4812477 d!1540653))

(declare-fun d!1540655 () Bool)

(assert (=> d!1540655 (containsKey!4172 (toList!7174 lt!1963784) lt!1963790)))

(declare-fun lt!1963815 () Unit!141649)

(declare-fun choose!34873 (List!54716 (_ BitVec 64)) Unit!141649)

(assert (=> d!1540655 (= lt!1963815 (choose!34873 (toList!7174 lt!1963784) lt!1963790))))

(declare-fun e!3006651 () Bool)

(assert (=> d!1540655 e!3006651))

(declare-fun res!2046945 () Bool)

(assert (=> d!1540655 (=> (not res!2046945) (not e!3006651))))

(assert (=> d!1540655 (= res!2046945 (isStrictlySorted!935 (toList!7174 lt!1963784)))))

(assert (=> d!1540655 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!290 (toList!7174 lt!1963784) lt!1963790) lt!1963815)))

(declare-fun b!4812521 () Bool)

(assert (=> b!4812521 (= e!3006651 (isDefined!10468 (getValueByKey!2508 (toList!7174 lt!1963784) lt!1963790)))))

(assert (= (and d!1540655 res!2046945) b!4812521))

(assert (=> d!1540655 m!5798068))

(declare-fun m!5798142 () Bool)

(assert (=> d!1540655 m!5798142))

(assert (=> d!1540655 m!5798140))

(assert (=> b!4812521 m!5798072))

(assert (=> b!4812521 m!5798072))

(assert (=> b!4812521 m!5798074))

(assert (=> b!4812477 d!1540655))

(declare-fun d!1540657 () Bool)

(declare-fun isEmpty!29556 (Option!13331) Bool)

(assert (=> d!1540657 (= (isDefined!10468 (getValueByKey!2508 (toList!7174 lt!1963784) lt!1963790)) (not (isEmpty!29556 (getValueByKey!2508 (toList!7174 lt!1963784) lt!1963790))))))

(declare-fun bs!1160194 () Bool)

(assert (= bs!1160194 d!1540657))

(assert (=> bs!1160194 m!5798072))

(declare-fun m!5798144 () Bool)

(assert (=> bs!1160194 m!5798144))

(assert (=> b!4812477 d!1540657))

(declare-fun b!4812531 () Bool)

(declare-fun e!3006656 () Option!13331)

(declare-fun e!3006657 () Option!13331)

(assert (=> b!4812531 (= e!3006656 e!3006657)))

(declare-fun c!820230 () Bool)

(assert (=> b!4812531 (= c!820230 (and ((_ is Cons!54592) (toList!7174 lt!1963784)) (not (= (_1!32046 (h!61024 (toList!7174 lt!1963784))) lt!1963790))))))

(declare-fun b!4812533 () Bool)

(assert (=> b!4812533 (= e!3006657 None!13330)))

(declare-fun b!4812532 () Bool)

(assert (=> b!4812532 (= e!3006657 (getValueByKey!2508 (t!362206 (toList!7174 lt!1963784)) lt!1963790))))

(declare-fun b!4812530 () Bool)

(assert (=> b!4812530 (= e!3006656 (Some!13330 (_2!32046 (h!61024 (toList!7174 lt!1963784)))))))

(declare-fun d!1540659 () Bool)

(declare-fun c!820229 () Bool)

(assert (=> d!1540659 (= c!820229 (and ((_ is Cons!54592) (toList!7174 lt!1963784)) (= (_1!32046 (h!61024 (toList!7174 lt!1963784))) lt!1963790)))))

(assert (=> d!1540659 (= (getValueByKey!2508 (toList!7174 lt!1963784) lt!1963790) e!3006656)))

(assert (= (and d!1540659 c!820229) b!4812530))

(assert (= (and d!1540659 (not c!820229)) b!4812531))

(assert (= (and b!4812531 c!820230) b!4812532))

(assert (= (and b!4812531 (not c!820230)) b!4812533))

(declare-fun m!5798146 () Bool)

(assert (=> b!4812532 m!5798146))

(assert (=> b!4812477 d!1540659))

(declare-fun d!1540661 () Bool)

(assert (=> d!1540661 (contains!18328 (toList!7174 lt!1963784) (tuple2!57505 lt!1963790 lt!1963792))))

(declare-fun lt!1963818 () Unit!141649)

(declare-fun choose!34874 (List!54716 (_ BitVec 64) List!54715) Unit!141649)

(assert (=> d!1540661 (= lt!1963818 (choose!34874 (toList!7174 lt!1963784) lt!1963790 lt!1963792))))

(declare-fun e!3006660 () Bool)

(assert (=> d!1540661 e!3006660))

(declare-fun res!2046948 () Bool)

(assert (=> d!1540661 (=> (not res!2046948) (not e!3006660))))

(assert (=> d!1540661 (= res!2046948 (isStrictlySorted!935 (toList!7174 lt!1963784)))))

(assert (=> d!1540661 (= (lemmaGetValueByKeyImpliesContainsTuple!1013 (toList!7174 lt!1963784) lt!1963790 lt!1963792) lt!1963818)))

(declare-fun b!4812536 () Bool)

(assert (=> b!4812536 (= e!3006660 (= (getValueByKey!2508 (toList!7174 lt!1963784) lt!1963790) (Some!13330 lt!1963792)))))

(assert (= (and d!1540661 res!2046948) b!4812536))

(declare-fun m!5798148 () Bool)

(assert (=> d!1540661 m!5798148))

(declare-fun m!5798150 () Bool)

(assert (=> d!1540661 m!5798150))

(assert (=> d!1540661 m!5798140))

(assert (=> b!4812536 m!5798072))

(assert (=> b!4812477 d!1540661))

(declare-fun d!1540663 () Bool)

(declare-fun res!2046953 () Bool)

(declare-fun e!3006665 () Bool)

(assert (=> d!1540663 (=> res!2046953 e!3006665)))

(assert (=> d!1540663 (= res!2046953 (and ((_ is Cons!54592) (toList!7174 lt!1963784)) (= (_1!32046 (h!61024 (toList!7174 lt!1963784))) lt!1963790)))))

(assert (=> d!1540663 (= (containsKey!4172 (toList!7174 lt!1963784) lt!1963790) e!3006665)))

(declare-fun b!4812541 () Bool)

(declare-fun e!3006666 () Bool)

(assert (=> b!4812541 (= e!3006665 e!3006666)))

(declare-fun res!2046954 () Bool)

(assert (=> b!4812541 (=> (not res!2046954) (not e!3006666))))

(assert (=> b!4812541 (= res!2046954 (and (or (not ((_ is Cons!54592) (toList!7174 lt!1963784))) (bvsle (_1!32046 (h!61024 (toList!7174 lt!1963784))) lt!1963790)) ((_ is Cons!54592) (toList!7174 lt!1963784)) (bvslt (_1!32046 (h!61024 (toList!7174 lt!1963784))) lt!1963790)))))

(declare-fun b!4812542 () Bool)

(assert (=> b!4812542 (= e!3006666 (containsKey!4172 (t!362206 (toList!7174 lt!1963784)) lt!1963790))))

(assert (= (and d!1540663 (not res!2046953)) b!4812541))

(assert (= (and b!4812541 res!2046954) b!4812542))

(declare-fun m!5798152 () Bool)

(assert (=> b!4812542 m!5798152))

(assert (=> b!4812477 d!1540663))

(declare-fun bs!1160195 () Bool)

(declare-fun b!4812547 () Bool)

(assert (= bs!1160195 (and b!4812547 b!4812479)))

(declare-fun lambda!233859 () Int)

(assert (=> bs!1160195 (= lambda!233859 lambda!233855)))

(declare-fun bs!1160196 () Bool)

(assert (= bs!1160196 (and b!4812547 b!4812470)))

(assert (=> bs!1160196 (= lambda!233859 lambda!233856)))

(declare-fun d!1540665 () Bool)

(declare-fun res!2046959 () Bool)

(declare-fun e!3006669 () Bool)

(assert (=> d!1540665 (=> (not res!2046959) (not e!3006669))))

(declare-fun valid!4111 (MutLongMap!5081) Bool)

(assert (=> d!1540665 (= res!2046959 (valid!4111 (v!48932 (underlying!10370 thiss!41921))))))

(assert (=> d!1540665 (= (valid!4110 thiss!41921) e!3006669)))

(declare-fun res!2046960 () Bool)

(assert (=> b!4812547 (=> (not res!2046960) (not e!3006669))))

(assert (=> b!4812547 (= res!2046960 (forall!12403 (toList!7174 (map!12459 (v!48932 (underlying!10370 thiss!41921)))) lambda!233859))))

(declare-fun b!4812548 () Bool)

(declare-fun allKeysSameHashInMap!2415 (ListLongMap!5651 Hashable!7092) Bool)

(assert (=> b!4812548 (= e!3006669 (allKeysSameHashInMap!2415 (map!12459 (v!48932 (underlying!10370 thiss!41921))) (hashF!13369 thiss!41921)))))

(assert (= (and d!1540665 res!2046959) b!4812547))

(assert (= (and b!4812547 res!2046960) b!4812548))

(declare-fun m!5798154 () Bool)

(assert (=> d!1540665 m!5798154))

(assert (=> b!4812547 m!5798086))

(declare-fun m!5798156 () Bool)

(assert (=> b!4812547 m!5798156))

(assert (=> b!4812548 m!5798086))

(assert (=> b!4812548 m!5798086))

(declare-fun m!5798158 () Bool)

(assert (=> b!4812548 m!5798158))

(assert (=> b!4812480 d!1540665))

(declare-fun d!1540667 () Bool)

(declare-fun res!2046965 () Bool)

(declare-fun e!3006674 () Bool)

(assert (=> d!1540667 (=> res!2046965 e!3006674)))

(assert (=> d!1540667 (= res!2046965 ((_ is Nil!54592) (toList!7174 lt!1963785)))))

(assert (=> d!1540667 (= (forall!12403 (toList!7174 lt!1963785) lambda!233856) e!3006674)))

(declare-fun b!4812553 () Bool)

(declare-fun e!3006675 () Bool)

(assert (=> b!4812553 (= e!3006674 e!3006675)))

(declare-fun res!2046966 () Bool)

(assert (=> b!4812553 (=> (not res!2046966) (not e!3006675))))

(declare-fun dynLambda!22145 (Int tuple2!57504) Bool)

(assert (=> b!4812553 (= res!2046966 (dynLambda!22145 lambda!233856 (h!61024 (toList!7174 lt!1963785))))))

(declare-fun b!4812554 () Bool)

(assert (=> b!4812554 (= e!3006675 (forall!12403 (t!362206 (toList!7174 lt!1963785)) lambda!233856))))

(assert (= (and d!1540667 (not res!2046965)) b!4812553))

(assert (= (and b!4812553 res!2046966) b!4812554))

(declare-fun b_lambda!188289 () Bool)

(assert (=> (not b_lambda!188289) (not b!4812553)))

(declare-fun m!5798160 () Bool)

(assert (=> b!4812553 m!5798160))

(declare-fun m!5798162 () Bool)

(assert (=> b!4812554 m!5798162))

(assert (=> b!4812470 d!1540667))

(declare-fun d!1540669 () Bool)

(assert (=> d!1540669 (dynLambda!22145 lambda!233855 lt!1963793)))

(declare-fun lt!1963821 () Unit!141649)

(declare-fun choose!34875 (List!54716 Int tuple2!57504) Unit!141649)

(assert (=> d!1540669 (= lt!1963821 (choose!34875 (toList!7174 lt!1963784) lambda!233855 lt!1963793))))

(declare-fun e!3006678 () Bool)

(assert (=> d!1540669 e!3006678))

(declare-fun res!2046969 () Bool)

(assert (=> d!1540669 (=> (not res!2046969) (not e!3006678))))

(assert (=> d!1540669 (= res!2046969 (forall!12403 (toList!7174 lt!1963784) lambda!233855))))

(assert (=> d!1540669 (= (forallContained!4280 (toList!7174 lt!1963784) lambda!233855 lt!1963793) lt!1963821)))

(declare-fun b!4812557 () Bool)

(assert (=> b!4812557 (= e!3006678 (contains!18328 (toList!7174 lt!1963784) lt!1963793))))

(assert (= (and d!1540669 res!2046969) b!4812557))

(declare-fun b_lambda!188291 () Bool)

(assert (=> (not b_lambda!188291) (not d!1540669)))

(declare-fun m!5798164 () Bool)

(assert (=> d!1540669 m!5798164))

(declare-fun m!5798166 () Bool)

(assert (=> d!1540669 m!5798166))

(declare-fun m!5798168 () Bool)

(assert (=> d!1540669 m!5798168))

(assert (=> b!4812557 m!5798090))

(assert (=> b!4812479 d!1540669))

(declare-fun d!1540671 () Bool)

(declare-fun map!12460 (LongMapFixedSize!10162) ListLongMap!5651)

(assert (=> d!1540671 (= (map!12459 (v!48932 (underlying!10370 thiss!41921))) (map!12460 (v!48931 (underlying!10369 (v!48932 (underlying!10370 thiss!41921))))))))

(declare-fun bs!1160197 () Bool)

(assert (= bs!1160197 d!1540671))

(declare-fun m!5798170 () Bool)

(assert (=> bs!1160197 m!5798170))

(assert (=> b!4812479 d!1540671))

(declare-fun d!1540673 () Bool)

(declare-fun e!3006681 () Bool)

(assert (=> d!1540673 e!3006681))

(declare-fun c!820233 () Bool)

(assert (=> d!1540673 (= c!820233 (contains!18326 (v!48932 (underlying!10370 thiss!41921)) lt!1963790))))

(declare-fun lt!1963824 () List!54715)

(declare-fun apply!13188 (LongMapFixedSize!10162 (_ BitVec 64)) List!54715)

(assert (=> d!1540673 (= lt!1963824 (apply!13188 (v!48931 (underlying!10369 (v!48932 (underlying!10370 thiss!41921)))) lt!1963790))))

(assert (=> d!1540673 (valid!4111 (v!48932 (underlying!10370 thiss!41921)))))

(assert (=> d!1540673 (= (apply!13186 (v!48932 (underlying!10370 thiss!41921)) lt!1963790) lt!1963824)))

(declare-fun b!4812562 () Bool)

(assert (=> b!4812562 (= e!3006681 (= lt!1963824 (get!18678 (getValueByKey!2508 (toList!7174 (map!12459 (v!48932 (underlying!10370 thiss!41921)))) lt!1963790))))))

(declare-fun b!4812563 () Bool)

(declare-fun dynLambda!22146 (Int (_ BitVec 64)) List!54715)

(assert (=> b!4812563 (= e!3006681 (= lt!1963824 (dynLambda!22146 (defaultEntry!5503 (v!48931 (underlying!10369 (v!48932 (underlying!10370 thiss!41921))))) lt!1963790)))))

(assert (=> b!4812563 ((_ is LongMap!5081) (v!48932 (underlying!10370 thiss!41921)))))

(assert (= (and d!1540673 c!820233) b!4812562))

(assert (= (and d!1540673 (not c!820233)) b!4812563))

(declare-fun b_lambda!188293 () Bool)

(assert (=> (not b_lambda!188293) (not b!4812563)))

(declare-fun t!362208 () Bool)

(declare-fun tb!257543 () Bool)

(assert (=> (and b!4812478 (= (defaultEntry!5503 (v!48931 (underlying!10369 (v!48932 (underlying!10370 thiss!41921))))) (defaultEntry!5503 (v!48931 (underlying!10369 (v!48932 (underlying!10370 thiss!41921)))))) t!362208) tb!257543))

(assert (=> b!4812563 t!362208))

(declare-fun result!319642 () Bool)

(declare-fun b_and!342077 () Bool)

(assert (= b_and!342073 (and (=> t!362208 result!319642) b_and!342077)))

(assert (=> d!1540673 m!5798096))

(declare-fun m!5798172 () Bool)

(assert (=> d!1540673 m!5798172))

(assert (=> d!1540673 m!5798154))

(assert (=> b!4812562 m!5798086))

(declare-fun m!5798174 () Bool)

(assert (=> b!4812562 m!5798174))

(assert (=> b!4812562 m!5798174))

(declare-fun m!5798176 () Bool)

(assert (=> b!4812562 m!5798176))

(declare-fun m!5798178 () Bool)

(assert (=> b!4812563 m!5798178))

(assert (=> b!4812479 d!1540673))

(declare-fun d!1540675 () Bool)

(declare-fun lt!1963827 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9781 (List!54716) (InoxSet tuple2!57504))

(assert (=> d!1540675 (= lt!1963827 (select (content!9781 (toList!7174 lt!1963784)) lt!1963793))))

(declare-fun e!3006687 () Bool)

(assert (=> d!1540675 (= lt!1963827 e!3006687)))

(declare-fun res!2046975 () Bool)

(assert (=> d!1540675 (=> (not res!2046975) (not e!3006687))))

(assert (=> d!1540675 (= res!2046975 ((_ is Cons!54592) (toList!7174 lt!1963784)))))

(assert (=> d!1540675 (= (contains!18328 (toList!7174 lt!1963784) lt!1963793) lt!1963827)))

(declare-fun b!4812568 () Bool)

(declare-fun e!3006686 () Bool)

(assert (=> b!4812568 (= e!3006687 e!3006686)))

(declare-fun res!2046974 () Bool)

(assert (=> b!4812568 (=> res!2046974 e!3006686)))

(assert (=> b!4812568 (= res!2046974 (= (h!61024 (toList!7174 lt!1963784)) lt!1963793))))

(declare-fun b!4812569 () Bool)

(assert (=> b!4812569 (= e!3006686 (contains!18328 (t!362206 (toList!7174 lt!1963784)) lt!1963793))))

(assert (= (and d!1540675 res!2046975) b!4812568))

(assert (= (and b!4812568 (not res!2046974)) b!4812569))

(declare-fun m!5798180 () Bool)

(assert (=> d!1540675 m!5798180))

(declare-fun m!5798182 () Bool)

(assert (=> d!1540675 m!5798182))

(declare-fun m!5798184 () Bool)

(assert (=> b!4812569 m!5798184))

(assert (=> b!4812479 d!1540675))

(declare-fun d!1540677 () Bool)

(declare-fun lt!1963830 () Bool)

(assert (=> d!1540677 (= lt!1963830 (contains!18327 (map!12459 (v!48932 (underlying!10370 thiss!41921))) lt!1963790))))

(declare-fun contains!18330 (LongMapFixedSize!10162 (_ BitVec 64)) Bool)

(assert (=> d!1540677 (= lt!1963830 (contains!18330 (v!48931 (underlying!10369 (v!48932 (underlying!10370 thiss!41921)))) lt!1963790))))

(assert (=> d!1540677 (valid!4111 (v!48932 (underlying!10370 thiss!41921)))))

(assert (=> d!1540677 (= (contains!18326 (v!48932 (underlying!10370 thiss!41921)) lt!1963790) lt!1963830)))

(declare-fun bs!1160198 () Bool)

(assert (= bs!1160198 d!1540677))

(assert (=> bs!1160198 m!5798086))

(assert (=> bs!1160198 m!5798086))

(declare-fun m!5798186 () Bool)

(assert (=> bs!1160198 m!5798186))

(declare-fun m!5798188 () Bool)

(assert (=> bs!1160198 m!5798188))

(assert (=> bs!1160198 m!5798154))

(assert (=> b!4812469 d!1540677))

(declare-fun d!1540679 () Bool)

(declare-fun hash!5158 (Hashable!7092 K!16219) (_ BitVec 64))

(assert (=> d!1540679 (= (hash!5157 (hashF!13369 thiss!41921) key!1652) (hash!5158 (hashF!13369 thiss!41921) key!1652))))

(declare-fun bs!1160199 () Bool)

(assert (= bs!1160199 d!1540679))

(declare-fun m!5798190 () Bool)

(assert (=> bs!1160199 m!5798190))

(assert (=> b!4812469 d!1540679))

(assert (=> b!4812469 d!1540671))

(declare-fun b!4812588 () Bool)

(declare-fun e!3006705 () Bool)

(declare-fun e!3006702 () Bool)

(assert (=> b!4812588 (= e!3006705 e!3006702)))

(declare-fun res!2046984 () Bool)

(assert (=> b!4812588 (=> (not res!2046984) (not e!3006702))))

(declare-datatypes ((Option!13333 0))(
  ( (None!13332) (Some!13332 (v!48937 V!16465)) )
))
(declare-fun isDefined!10470 (Option!13333) Bool)

(declare-fun getValueByKey!2509 (List!54715 K!16219) Option!13333)

(assert (=> b!4812588 (= res!2046984 (isDefined!10470 (getValueByKey!2509 (toList!7175 (extractMap!2547 (toList!7174 lt!1963785))) key!1652)))))

(declare-fun bm!335848 () Bool)

(declare-fun call!335853 () Bool)

(declare-datatypes ((List!54717 0))(
  ( (Nil!54593) (Cons!54593 (h!61025 K!16219) (t!362209 List!54717)) )
))
(declare-fun e!3006700 () List!54717)

(declare-fun contains!18331 (List!54717 K!16219) Bool)

(assert (=> bm!335848 (= call!335853 (contains!18331 e!3006700 key!1652))))

(declare-fun c!820242 () Bool)

(declare-fun c!820240 () Bool)

(assert (=> bm!335848 (= c!820242 c!820240)))

(declare-fun b!4812589 () Bool)

(declare-fun keys!20015 (ListMap!6591) List!54717)

(assert (=> b!4812589 (= e!3006702 (contains!18331 (keys!20015 (extractMap!2547 (toList!7174 lt!1963785))) key!1652))))

(declare-fun b!4812590 () Bool)

(declare-fun e!3006701 () Unit!141649)

(declare-fun Unit!141655 () Unit!141649)

(assert (=> b!4812590 (= e!3006701 Unit!141655)))

(declare-fun b!4812591 () Bool)

(declare-fun e!3006703 () Bool)

(assert (=> b!4812591 (= e!3006703 (not (contains!18331 (keys!20015 (extractMap!2547 (toList!7174 lt!1963785))) key!1652)))))

(declare-fun b!4812593 () Bool)

(declare-fun e!3006704 () Unit!141649)

(declare-fun lt!1963854 () Unit!141649)

(assert (=> b!4812593 (= e!3006704 lt!1963854)))

(declare-fun lt!1963850 () Unit!141649)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2296 (List!54715 K!16219) Unit!141649)

(assert (=> b!4812593 (= lt!1963850 (lemmaContainsKeyImpliesGetValueByKeyDefined!2296 (toList!7175 (extractMap!2547 (toList!7174 lt!1963785))) key!1652))))

(assert (=> b!4812593 (isDefined!10470 (getValueByKey!2509 (toList!7175 (extractMap!2547 (toList!7174 lt!1963785))) key!1652))))

(declare-fun lt!1963849 () Unit!141649)

(assert (=> b!4812593 (= lt!1963849 lt!1963850)))

(declare-fun lemmaInListThenGetKeysListContains!1119 (List!54715 K!16219) Unit!141649)

(assert (=> b!4812593 (= lt!1963854 (lemmaInListThenGetKeysListContains!1119 (toList!7175 (extractMap!2547 (toList!7174 lt!1963785))) key!1652))))

(assert (=> b!4812593 call!335853))

(declare-fun b!4812594 () Bool)

(declare-fun getKeysList!1124 (List!54715) List!54717)

(assert (=> b!4812594 (= e!3006700 (getKeysList!1124 (toList!7175 (extractMap!2547 (toList!7174 lt!1963785)))))))

(declare-fun b!4812595 () Bool)

(assert (=> b!4812595 (= e!3006704 e!3006701)))

(declare-fun c!820241 () Bool)

(assert (=> b!4812595 (= c!820241 call!335853)))

(declare-fun b!4812596 () Bool)

(assert (=> b!4812596 (= e!3006700 (keys!20015 (extractMap!2547 (toList!7174 lt!1963785))))))

(declare-fun d!1540681 () Bool)

(assert (=> d!1540681 e!3006705))

(declare-fun res!2046982 () Bool)

(assert (=> d!1540681 (=> res!2046982 e!3006705)))

(assert (=> d!1540681 (= res!2046982 e!3006703)))

(declare-fun res!2046983 () Bool)

(assert (=> d!1540681 (=> (not res!2046983) (not e!3006703))))

(declare-fun lt!1963852 () Bool)

(assert (=> d!1540681 (= res!2046983 (not lt!1963852))))

(declare-fun lt!1963851 () Bool)

(assert (=> d!1540681 (= lt!1963852 lt!1963851)))

(declare-fun lt!1963848 () Unit!141649)

(assert (=> d!1540681 (= lt!1963848 e!3006704)))

(assert (=> d!1540681 (= c!820240 lt!1963851)))

(declare-fun containsKey!4174 (List!54715 K!16219) Bool)

(assert (=> d!1540681 (= lt!1963851 (containsKey!4174 (toList!7175 (extractMap!2547 (toList!7174 lt!1963785))) key!1652))))

(assert (=> d!1540681 (= (contains!18325 (extractMap!2547 (toList!7174 lt!1963785)) key!1652) lt!1963852)))

(declare-fun b!4812592 () Bool)

(assert (=> b!4812592 false))

(declare-fun lt!1963853 () Unit!141649)

(declare-fun lt!1963847 () Unit!141649)

(assert (=> b!4812592 (= lt!1963853 lt!1963847)))

(assert (=> b!4812592 (containsKey!4174 (toList!7175 (extractMap!2547 (toList!7174 lt!1963785))) key!1652)))

(declare-fun lemmaInGetKeysListThenContainsKey!1124 (List!54715 K!16219) Unit!141649)

(assert (=> b!4812592 (= lt!1963847 (lemmaInGetKeysListThenContainsKey!1124 (toList!7175 (extractMap!2547 (toList!7174 lt!1963785))) key!1652))))

(declare-fun Unit!141656 () Unit!141649)

(assert (=> b!4812592 (= e!3006701 Unit!141656)))

(assert (= (and d!1540681 c!820240) b!4812593))

(assert (= (and d!1540681 (not c!820240)) b!4812595))

(assert (= (and b!4812595 c!820241) b!4812592))

(assert (= (and b!4812595 (not c!820241)) b!4812590))

(assert (= (or b!4812593 b!4812595) bm!335848))

(assert (= (and bm!335848 c!820242) b!4812594))

(assert (= (and bm!335848 (not c!820242)) b!4812596))

(assert (= (and d!1540681 res!2046983) b!4812591))

(assert (= (and d!1540681 (not res!2046982)) b!4812588))

(assert (= (and b!4812588 res!2046984) b!4812589))

(assert (=> b!4812591 m!5798092))

(declare-fun m!5798192 () Bool)

(assert (=> b!4812591 m!5798192))

(assert (=> b!4812591 m!5798192))

(declare-fun m!5798194 () Bool)

(assert (=> b!4812591 m!5798194))

(declare-fun m!5798196 () Bool)

(assert (=> b!4812593 m!5798196))

(declare-fun m!5798198 () Bool)

(assert (=> b!4812593 m!5798198))

(assert (=> b!4812593 m!5798198))

(declare-fun m!5798200 () Bool)

(assert (=> b!4812593 m!5798200))

(declare-fun m!5798202 () Bool)

(assert (=> b!4812593 m!5798202))

(declare-fun m!5798204 () Bool)

(assert (=> d!1540681 m!5798204))

(declare-fun m!5798206 () Bool)

(assert (=> bm!335848 m!5798206))

(assert (=> b!4812596 m!5798092))

(assert (=> b!4812596 m!5798192))

(assert (=> b!4812592 m!5798204))

(declare-fun m!5798208 () Bool)

(assert (=> b!4812592 m!5798208))

(declare-fun m!5798210 () Bool)

(assert (=> b!4812594 m!5798210))

(assert (=> b!4812589 m!5798092))

(assert (=> b!4812589 m!5798192))

(assert (=> b!4812589 m!5798192))

(assert (=> b!4812589 m!5798194))

(assert (=> b!4812588 m!5798198))

(assert (=> b!4812588 m!5798198))

(assert (=> b!4812588 m!5798200))

(assert (=> b!4812469 d!1540681))

(declare-fun bs!1160200 () Bool)

(declare-fun d!1540683 () Bool)

(assert (= bs!1160200 (and d!1540683 b!4812479)))

(declare-fun lambda!233862 () Int)

(assert (=> bs!1160200 (= lambda!233862 lambda!233855)))

(declare-fun bs!1160201 () Bool)

(assert (= bs!1160201 (and d!1540683 b!4812470)))

(assert (=> bs!1160201 (= lambda!233862 lambda!233856)))

(declare-fun bs!1160202 () Bool)

(assert (= bs!1160202 (and d!1540683 b!4812547)))

(assert (=> bs!1160202 (= lambda!233862 lambda!233859)))

(declare-fun lt!1963857 () ListMap!6591)

(declare-fun invariantList!1778 (List!54715) Bool)

(assert (=> d!1540683 (invariantList!1778 (toList!7175 lt!1963857))))

(declare-fun e!3006708 () ListMap!6591)

(assert (=> d!1540683 (= lt!1963857 e!3006708)))

(declare-fun c!820245 () Bool)

(assert (=> d!1540683 (= c!820245 ((_ is Cons!54592) (toList!7174 lt!1963785)))))

(assert (=> d!1540683 (forall!12403 (toList!7174 lt!1963785) lambda!233862)))

(assert (=> d!1540683 (= (extractMap!2547 (toList!7174 lt!1963785)) lt!1963857)))

(declare-fun b!4812601 () Bool)

(declare-fun addToMapMapFromBucket!1755 (List!54715 ListMap!6591) ListMap!6591)

(assert (=> b!4812601 (= e!3006708 (addToMapMapFromBucket!1755 (_2!32046 (h!61024 (toList!7174 lt!1963785))) (extractMap!2547 (t!362206 (toList!7174 lt!1963785)))))))

(declare-fun b!4812602 () Bool)

(assert (=> b!4812602 (= e!3006708 (ListMap!6592 Nil!54591))))

(assert (= (and d!1540683 c!820245) b!4812601))

(assert (= (and d!1540683 (not c!820245)) b!4812602))

(declare-fun m!5798212 () Bool)

(assert (=> d!1540683 m!5798212))

(declare-fun m!5798214 () Bool)

(assert (=> d!1540683 m!5798214))

(declare-fun m!5798216 () Bool)

(assert (=> b!4812601 m!5798216))

(assert (=> b!4812601 m!5798216))

(declare-fun m!5798218 () Bool)

(assert (=> b!4812601 m!5798218))

(assert (=> b!4812469 d!1540683))

(declare-fun b!4812607 () Bool)

(declare-fun e!3006711 () Bool)

(declare-fun tp!1361317 () Bool)

(declare-fun tp_is_empty!34049 () Bool)

(assert (=> b!4812607 (= e!3006711 (and tp_is_empty!34047 tp_is_empty!34049 tp!1361317))))

(assert (=> b!4812472 (= tp!1361313 e!3006711)))

(assert (= (and b!4812472 ((_ is Cons!54591) mapDefault!22430)) b!4812607))

(declare-fun e!3006712 () Bool)

(declare-fun tp!1361318 () Bool)

(declare-fun b!4812608 () Bool)

(assert (=> b!4812608 (= e!3006712 (and tp_is_empty!34047 tp_is_empty!34049 tp!1361318))))

(assert (=> b!4812478 (= tp!1361308 e!3006712)))

(assert (= (and b!4812478 ((_ is Cons!54591) (zeroValue!5374 (v!48931 (underlying!10369 (v!48932 (underlying!10370 thiss!41921))))))) b!4812608))

(declare-fun e!3006713 () Bool)

(declare-fun tp!1361319 () Bool)

(declare-fun b!4812609 () Bool)

(assert (=> b!4812609 (= e!3006713 (and tp_is_empty!34047 tp_is_empty!34049 tp!1361319))))

(assert (=> b!4812478 (= tp!1361309 e!3006713)))

(assert (= (and b!4812478 ((_ is Cons!54591) (minValue!5374 (v!48931 (underlying!10369 (v!48932 (underlying!10370 thiss!41921))))))) b!4812609))

(declare-fun condMapEmpty!22433 () Bool)

(declare-fun mapDefault!22433 () List!54715)

(assert (=> mapNonEmpty!22430 (= condMapEmpty!22433 (= mapRest!22430 ((as const (Array (_ BitVec 32) List!54715)) mapDefault!22433)))))

(declare-fun e!3006718 () Bool)

(declare-fun mapRes!22433 () Bool)

(assert (=> mapNonEmpty!22430 (= tp!1361311 (and e!3006718 mapRes!22433))))

(declare-fun b!4812617 () Bool)

(declare-fun tp!1361326 () Bool)

(assert (=> b!4812617 (= e!3006718 (and tp_is_empty!34047 tp_is_empty!34049 tp!1361326))))

(declare-fun b!4812616 () Bool)

(declare-fun e!3006719 () Bool)

(declare-fun tp!1361328 () Bool)

(assert (=> b!4812616 (= e!3006719 (and tp_is_empty!34047 tp_is_empty!34049 tp!1361328))))

(declare-fun mapIsEmpty!22433 () Bool)

(assert (=> mapIsEmpty!22433 mapRes!22433))

(declare-fun mapNonEmpty!22433 () Bool)

(declare-fun tp!1361327 () Bool)

(assert (=> mapNonEmpty!22433 (= mapRes!22433 (and tp!1361327 e!3006719))))

(declare-fun mapKey!22433 () (_ BitVec 32))

(declare-fun mapValue!22433 () List!54715)

(declare-fun mapRest!22433 () (Array (_ BitVec 32) List!54715))

(assert (=> mapNonEmpty!22433 (= mapRest!22430 (store mapRest!22433 mapKey!22433 mapValue!22433))))

(assert (= (and mapNonEmpty!22430 condMapEmpty!22433) mapIsEmpty!22433))

(assert (= (and mapNonEmpty!22430 (not condMapEmpty!22433)) mapNonEmpty!22433))

(assert (= (and mapNonEmpty!22433 ((_ is Cons!54591) mapValue!22433)) b!4812616))

(assert (= (and mapNonEmpty!22430 ((_ is Cons!54591) mapDefault!22433)) b!4812617))

(declare-fun m!5798220 () Bool)

(assert (=> mapNonEmpty!22433 m!5798220))

(declare-fun b!4812618 () Bool)

(declare-fun e!3006720 () Bool)

(declare-fun tp!1361329 () Bool)

(assert (=> b!4812618 (= e!3006720 (and tp_is_empty!34047 tp_is_empty!34049 tp!1361329))))

(assert (=> mapNonEmpty!22430 (= tp!1361314 e!3006720)))

(assert (= (and mapNonEmpty!22430 ((_ is Cons!54591) mapValue!22430)) b!4812618))

(declare-fun b_lambda!188295 () Bool)

(assert (= b_lambda!188293 (or (and b!4812478 b_free!130267) b_lambda!188295)))

(declare-fun b_lambda!188297 () Bool)

(assert (= b_lambda!188289 (or b!4812470 b_lambda!188297)))

(declare-fun bs!1160203 () Bool)

(declare-fun d!1540685 () Bool)

(assert (= bs!1160203 (and d!1540685 b!4812470)))

(assert (=> bs!1160203 (= (dynLambda!22145 lambda!233856 (h!61024 (toList!7174 lt!1963785))) (noDuplicateKeys!2393 (_2!32046 (h!61024 (toList!7174 lt!1963785)))))))

(declare-fun m!5798222 () Bool)

(assert (=> bs!1160203 m!5798222))

(assert (=> b!4812553 d!1540685))

(declare-fun b_lambda!188299 () Bool)

(assert (= b_lambda!188291 (or b!4812479 b_lambda!188299)))

(declare-fun bs!1160204 () Bool)

(declare-fun d!1540687 () Bool)

(assert (= bs!1160204 (and d!1540687 b!4812479)))

(assert (=> bs!1160204 (= (dynLambda!22145 lambda!233855 lt!1963793) (noDuplicateKeys!2393 (_2!32046 lt!1963793)))))

(declare-fun m!5798224 () Bool)

(assert (=> bs!1160204 m!5798224))

(assert (=> d!1540669 d!1540687))

(check-sat b_and!342075 (not b!4812515) (not b_lambda!188297) (not mapNonEmpty!22433) (not b_lambda!188299) (not b!4812589) (not b!4812607) (not d!1540647) (not bs!1160203) (not b!4812518) (not d!1540673) (not tb!257543) (not b!4812616) (not d!1540657) (not d!1540677) (not b!4812554) (not d!1540665) (not d!1540655) (not b!4812532) (not b!4812593) (not d!1540669) (not d!1540671) (not b_next!131059) (not b!4812499) (not d!1540683) (not b!4812601) (not b!4812536) (not b!4812617) (not b!4812562) (not b!4812569) (not b!4812609) (not b!4812542) tp_is_empty!34047 (not d!1540675) (not b!4812592) (not b!4812618) (not b!4812591) (not bs!1160204) (not b!4812502) (not b!4812594) (not bm!335848) (not b_lambda!188295) (not b!4812548) (not b!4812547) (not b!4812504) (not d!1540643) b_and!342077 (not d!1540653) (not b!4812505) (not b!4812513) (not b_next!131057) (not b!4812588) (not b!4812608) (not d!1540679) (not b!4812557) tp_is_empty!34049 (not d!1540641) (not b!4812596) (not d!1540645) (not b!4812521) (not b!4812503) (not d!1540661) (not d!1540681))
(check-sat b_and!342077 b_and!342075 (not b_next!131057) (not b_next!131059))
