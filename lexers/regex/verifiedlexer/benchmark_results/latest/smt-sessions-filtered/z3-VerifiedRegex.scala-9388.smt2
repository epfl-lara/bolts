; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497684 () Bool)

(assert start!497684)

(declare-fun b!4812942 () Bool)

(declare-fun b_free!130283 () Bool)

(declare-fun b_next!131073 () Bool)

(assert (=> b!4812942 (= b_free!130283 (not b_next!131073))))

(declare-fun tp!1361426 () Bool)

(declare-fun b_and!342093 () Bool)

(assert (=> b!4812942 (= tp!1361426 b_and!342093)))

(declare-fun b!4812947 () Bool)

(declare-fun b_free!130285 () Bool)

(declare-fun b_next!131075 () Bool)

(assert (=> b!4812947 (= b_free!130285 (not b_next!131075))))

(declare-fun tp!1361428 () Bool)

(declare-fun b_and!342095 () Bool)

(assert (=> b!4812947 (= tp!1361428 b_and!342095)))

(declare-fun bs!1160230 () Bool)

(declare-fun b!4812946 () Bool)

(declare-fun b!4812940 () Bool)

(assert (= bs!1160230 (and b!4812946 b!4812940)))

(declare-fun lambda!233895 () Int)

(declare-fun lambda!233894 () Int)

(assert (=> bs!1160230 (= lambda!233895 lambda!233894)))

(declare-fun b!4812938 () Bool)

(declare-fun e!3006945 () Bool)

(declare-fun tp!1361427 () Bool)

(declare-fun mapRes!22448 () Bool)

(assert (=> b!4812938 (= e!3006945 (and tp!1361427 mapRes!22448))))

(declare-fun condMapEmpty!22448 () Bool)

(declare-datatypes ((K!16229 0))(
  ( (K!16230 (val!21289 Int)) )
))
(declare-datatypes ((array!18728 0))(
  ( (array!18729 (arr!8355 (Array (_ BitVec 32) (_ BitVec 64))) (size!36601 (_ BitVec 32))) )
))
(declare-datatypes ((V!16475 0))(
  ( (V!16476 (val!21290 Int)) )
))
(declare-datatypes ((tuple2!57514 0))(
  ( (tuple2!57515 (_1!32051 K!16229) (_2!32051 V!16475)) )
))
(declare-datatypes ((List!54723 0))(
  ( (Nil!54599) (Cons!54599 (h!61031 tuple2!57514) (t!362217 List!54723)) )
))
(declare-datatypes ((array!18730 0))(
  ( (array!18731 (arr!8356 (Array (_ BitVec 32) List!54723)) (size!36602 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10170 0))(
  ( (LongMapFixedSize!10171 (defaultEntry!5507 Int) (mask!15108 (_ BitVec 32)) (extraKeys!5365 (_ BitVec 32)) (zeroValue!5378 List!54723) (minValue!5378 List!54723) (_size!10195 (_ BitVec 32)) (_keys!5434 array!18728) (_values!5403 array!18730) (_vacant!5150 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20105 0))(
  ( (Cell!20106 (v!48949 LongMapFixedSize!10170)) )
))
(declare-datatypes ((MutLongMap!5085 0))(
  ( (LongMap!5085 (underlying!10377 Cell!20105)) (MutLongMapExt!5084 (__x!33353 Int)) )
))
(declare-datatypes ((Hashable!7096 0))(
  ( (HashableExt!7095 (__x!33354 Int)) )
))
(declare-datatypes ((Cell!20107 0))(
  ( (Cell!20108 (v!48950 MutLongMap!5085)) )
))
(declare-datatypes ((MutableMap!4969 0))(
  ( (MutableMapExt!4968 (__x!33355 Int)) (HashMap!4969 (underlying!10378 Cell!20107) (hashF!13374 Hashable!7096) (_size!10196 (_ BitVec 32)) (defaultValue!5140 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4969)

(declare-fun mapDefault!22448 () List!54723)

(assert (=> b!4812938 (= condMapEmpty!22448 (= (arr!8356 (_values!5403 (v!48949 (underlying!10377 (v!48950 (underlying!10378 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54723)) mapDefault!22448)))))

(declare-fun b!4812939 () Bool)

(declare-fun res!2047117 () Bool)

(declare-fun e!3006943 () Bool)

(assert (=> b!4812939 (=> (not res!2047117) (not e!3006943))))

(declare-datatypes ((tuple2!57516 0))(
  ( (tuple2!57517 (_1!32052 (_ BitVec 64)) (_2!32052 List!54723)) )
))
(declare-datatypes ((List!54724 0))(
  ( (Nil!54600) (Cons!54600 (h!61032 tuple2!57516) (t!362218 List!54724)) )
))
(declare-datatypes ((ListLongMap!5655 0))(
  ( (ListLongMap!5656 (toList!7178 List!54724)) )
))
(declare-fun lt!1964058 () ListLongMap!5655)

(declare-fun key!1652 () K!16229)

(declare-fun lt!1964056 () (_ BitVec 64))

(declare-datatypes ((Option!13337 0))(
  ( (None!13336) (Some!13336 (v!48951 tuple2!57514)) )
))
(declare-fun isDefined!10474 (Option!13337) Bool)

(declare-fun getPair!973 (List!54723 K!16229) Option!13337)

(declare-fun apply!13192 (ListLongMap!5655 (_ BitVec 64)) List!54723)

(assert (=> b!4812939 (= res!2047117 (isDefined!10474 (getPair!973 (apply!13192 lt!1964058 lt!1964056) key!1652)))))

(declare-datatypes ((Unit!141668 0))(
  ( (Unit!141669) )
))
(declare-fun e!3006949 () Unit!141668)

(declare-fun lt!1964049 () tuple2!57516)

(declare-fun lt!1964050 () ListLongMap!5655)

(declare-fun forallContained!4282 (List!54724 Int tuple2!57516) Unit!141668)

(assert (=> b!4812940 (= e!3006949 (forallContained!4282 (toList!7178 lt!1964050) lambda!233894 lt!1964049))))

(declare-fun map!12465 (MutLongMap!5085) ListLongMap!5655)

(assert (=> b!4812940 (= lt!1964050 (map!12465 (v!48950 (underlying!10378 thiss!41921))))))

(declare-fun lt!1964051 () List!54723)

(declare-fun apply!13193 (MutLongMap!5085 (_ BitVec 64)) List!54723)

(assert (=> b!4812940 (= lt!1964051 (apply!13193 (v!48950 (underlying!10378 thiss!41921)) lt!1964056))))

(assert (=> b!4812940 (= lt!1964049 (tuple2!57517 lt!1964056 lt!1964051))))

(declare-fun c!820298 () Bool)

(declare-fun contains!18339 (List!54724 tuple2!57516) Bool)

(assert (=> b!4812940 (= c!820298 (not (contains!18339 (toList!7178 lt!1964050) lt!1964049)))))

(declare-fun lt!1964053 () Unit!141668)

(declare-fun e!3006954 () Unit!141668)

(assert (=> b!4812940 (= lt!1964053 e!3006954)))

(declare-fun b!4812941 () Bool)

(declare-fun e!3006950 () Bool)

(declare-fun e!3006944 () Bool)

(assert (=> b!4812941 (= e!3006950 e!3006944)))

(declare-fun res!2047122 () Bool)

(assert (=> b!4812941 (=> (not res!2047122) (not e!3006944))))

(declare-datatypes ((ListMap!6595 0))(
  ( (ListMap!6596 (toList!7179 List!54723)) )
))
(declare-fun contains!18340 (ListMap!6595 K!16229) Bool)

(declare-fun extractMap!2549 (List!54724) ListMap!6595)

(assert (=> b!4812941 (= res!2047122 (not (contains!18340 (extractMap!2549 (toList!7178 lt!1964058)) key!1652)))))

(assert (=> b!4812941 (= lt!1964058 (map!12465 (v!48950 (underlying!10378 thiss!41921))))))

(declare-fun lt!1964057 () Unit!141668)

(assert (=> b!4812941 (= lt!1964057 e!3006949)))

(declare-fun c!820299 () Bool)

(declare-fun contains!18341 (MutLongMap!5085 (_ BitVec 64)) Bool)

(assert (=> b!4812941 (= c!820299 (contains!18341 (v!48950 (underlying!10378 thiss!41921)) lt!1964056))))

(declare-fun hash!5161 (Hashable!7096 K!16229) (_ BitVec 64))

(assert (=> b!4812941 (= lt!1964056 (hash!5161 (hashF!13374 thiss!41921) key!1652))))

(declare-fun e!3006953 () Bool)

(declare-fun tp!1361422 () Bool)

(declare-fun tp!1361424 () Bool)

(declare-fun array_inv!6037 (array!18728) Bool)

(declare-fun array_inv!6038 (array!18730) Bool)

(assert (=> b!4812942 (= e!3006953 (and tp!1361426 tp!1361422 tp!1361424 (array_inv!6037 (_keys!5434 (v!48949 (underlying!10377 (v!48950 (underlying!10378 thiss!41921)))))) (array_inv!6038 (_values!5403 (v!48949 (underlying!10377 (v!48950 (underlying!10378 thiss!41921)))))) e!3006945))))

(declare-fun b!4812943 () Bool)

(assert (=> b!4812943 (= e!3006944 e!3006943)))

(declare-fun res!2047118 () Bool)

(assert (=> b!4812943 (=> (not res!2047118) (not e!3006943))))

(declare-fun lt!1964055 () Bool)

(assert (=> b!4812943 (= res!2047118 lt!1964055)))

(declare-fun contains!18342 (ListLongMap!5655 (_ BitVec 64)) Bool)

(assert (=> b!4812943 (= lt!1964055 (contains!18342 lt!1964058 lt!1964056))))

(declare-fun b!4812944 () Bool)

(declare-fun e!3006952 () Bool)

(declare-fun e!3006946 () Bool)

(assert (=> b!4812944 (= e!3006952 e!3006946)))

(declare-fun b!4812945 () Bool)

(declare-fun res!2047116 () Bool)

(assert (=> b!4812945 (=> (not res!2047116) (not e!3006950))))

(declare-fun valid!4114 (MutableMap!4969) Bool)

(assert (=> b!4812945 (= res!2047116 (valid!4114 thiss!41921))))

(declare-fun res!2047121 () Bool)

(assert (=> b!4812946 (=> (not res!2047121) (not e!3006943))))

(declare-fun forall!12405 (List!54724 Int) Bool)

(assert (=> b!4812946 (= res!2047121 (forall!12405 (toList!7178 lt!1964058) lambda!233895))))

(declare-fun mapNonEmpty!22448 () Bool)

(declare-fun tp!1361425 () Bool)

(declare-fun tp!1361423 () Bool)

(assert (=> mapNonEmpty!22448 (= mapRes!22448 (and tp!1361425 tp!1361423))))

(declare-fun mapRest!22448 () (Array (_ BitVec 32) List!54723))

(declare-fun mapValue!22448 () List!54723)

(declare-fun mapKey!22448 () (_ BitVec 32))

(assert (=> mapNonEmpty!22448 (= (arr!8356 (_values!5403 (v!48949 (underlying!10377 (v!48950 (underlying!10378 thiss!41921)))))) (store mapRest!22448 mapKey!22448 mapValue!22448))))

(declare-fun mapIsEmpty!22448 () Bool)

(assert (=> mapIsEmpty!22448 mapRes!22448))

(declare-fun e!3006948 () Bool)

(declare-fun e!3006951 () Bool)

(assert (=> b!4812947 (= e!3006948 (and e!3006951 tp!1361428))))

(declare-fun b!4812948 () Bool)

(assert (=> b!4812948 (= e!3006943 (not lt!1964055))))

(declare-fun b!4812949 () Bool)

(declare-fun lt!1964048 () MutLongMap!5085)

(get-info :version)

(assert (=> b!4812949 (= e!3006951 (and e!3006952 ((_ is LongMap!5085) lt!1964048)))))

(assert (=> b!4812949 (= lt!1964048 (v!48950 (underlying!10378 thiss!41921)))))

(declare-fun b!4812950 () Bool)

(declare-fun res!2047119 () Bool)

(assert (=> b!4812950 (=> (not res!2047119) (not e!3006943))))

(declare-fun allKeysSameHashInMap!2417 (ListLongMap!5655 Hashable!7096) Bool)

(assert (=> b!4812950 (= res!2047119 (allKeysSameHashInMap!2417 lt!1964058 (hashF!13374 thiss!41921)))))

(declare-fun b!4812951 () Bool)

(assert (=> b!4812951 false))

(declare-fun lt!1964047 () Unit!141668)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1015 (List!54724 (_ BitVec 64) List!54723) Unit!141668)

(assert (=> b!4812951 (= lt!1964047 (lemmaGetValueByKeyImpliesContainsTuple!1015 (toList!7178 lt!1964050) lt!1964056 lt!1964051))))

(declare-datatypes ((Option!13338 0))(
  ( (None!13337) (Some!13337 (v!48952 List!54723)) )
))
(declare-fun isDefined!10475 (Option!13338) Bool)

(declare-fun getValueByKey!2512 (List!54724 (_ BitVec 64)) Option!13338)

(assert (=> b!4812951 (isDefined!10475 (getValueByKey!2512 (toList!7178 lt!1964050) lt!1964056))))

(declare-fun lt!1964054 () Unit!141668)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2299 (List!54724 (_ BitVec 64)) Unit!141668)

(assert (=> b!4812951 (= lt!1964054 (lemmaContainsKeyImpliesGetValueByKeyDefined!2299 (toList!7178 lt!1964050) lt!1964056))))

(declare-fun containsKey!4178 (List!54724 (_ BitVec 64)) Bool)

(assert (=> b!4812951 (containsKey!4178 (toList!7178 lt!1964050) lt!1964056)))

(declare-fun lt!1964052 () Unit!141668)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!292 (List!54724 (_ BitVec 64)) Unit!141668)

(assert (=> b!4812951 (= lt!1964052 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!292 (toList!7178 lt!1964050) lt!1964056))))

(declare-fun Unit!141670 () Unit!141668)

(assert (=> b!4812951 (= e!3006954 Unit!141670)))

(declare-fun res!2047120 () Bool)

(assert (=> start!497684 (=> (not res!2047120) (not e!3006950))))

(assert (=> start!497684 (= res!2047120 ((_ is HashMap!4969) thiss!41921))))

(assert (=> start!497684 e!3006950))

(assert (=> start!497684 e!3006948))

(declare-fun tp_is_empty!34059 () Bool)

(assert (=> start!497684 tp_is_empty!34059))

(declare-fun b!4812952 () Bool)

(declare-fun Unit!141671 () Unit!141668)

(assert (=> b!4812952 (= e!3006949 Unit!141671)))

(declare-fun b!4812953 () Bool)

(declare-fun Unit!141672 () Unit!141668)

(assert (=> b!4812953 (= e!3006954 Unit!141672)))

(declare-fun b!4812954 () Bool)

(assert (=> b!4812954 (= e!3006946 e!3006953)))

(assert (= (and start!497684 res!2047120) b!4812945))

(assert (= (and b!4812945 res!2047116) b!4812941))

(assert (= (and b!4812941 c!820299) b!4812940))

(assert (= (and b!4812941 (not c!820299)) b!4812952))

(assert (= (and b!4812940 c!820298) b!4812951))

(assert (= (and b!4812940 (not c!820298)) b!4812953))

(assert (= (and b!4812941 res!2047122) b!4812943))

(assert (= (and b!4812943 res!2047118) b!4812939))

(assert (= (and b!4812939 res!2047117) b!4812946))

(assert (= (and b!4812946 res!2047121) b!4812950))

(assert (= (and b!4812950 res!2047119) b!4812948))

(assert (= (and b!4812938 condMapEmpty!22448) mapIsEmpty!22448))

(assert (= (and b!4812938 (not condMapEmpty!22448)) mapNonEmpty!22448))

(assert (= b!4812942 b!4812938))

(assert (= b!4812954 b!4812942))

(assert (= b!4812944 b!4812954))

(assert (= (and b!4812949 ((_ is LongMap!5085) (v!48950 (underlying!10378 thiss!41921)))) b!4812944))

(assert (= b!4812947 b!4812949))

(assert (= (and start!497684 ((_ is HashMap!4969) thiss!41921)) b!4812947))

(declare-fun m!5798486 () Bool)

(assert (=> b!4812941 m!5798486))

(declare-fun m!5798488 () Bool)

(assert (=> b!4812941 m!5798488))

(assert (=> b!4812941 m!5798486))

(declare-fun m!5798490 () Bool)

(assert (=> b!4812941 m!5798490))

(declare-fun m!5798492 () Bool)

(assert (=> b!4812941 m!5798492))

(declare-fun m!5798494 () Bool)

(assert (=> b!4812941 m!5798494))

(declare-fun m!5798496 () Bool)

(assert (=> b!4812939 m!5798496))

(assert (=> b!4812939 m!5798496))

(declare-fun m!5798498 () Bool)

(assert (=> b!4812939 m!5798498))

(assert (=> b!4812939 m!5798498))

(declare-fun m!5798500 () Bool)

(assert (=> b!4812939 m!5798500))

(declare-fun m!5798502 () Bool)

(assert (=> b!4812943 m!5798502))

(declare-fun m!5798504 () Bool)

(assert (=> mapNonEmpty!22448 m!5798504))

(declare-fun m!5798506 () Bool)

(assert (=> b!4812945 m!5798506))

(declare-fun m!5798508 () Bool)

(assert (=> b!4812951 m!5798508))

(declare-fun m!5798510 () Bool)

(assert (=> b!4812951 m!5798510))

(declare-fun m!5798512 () Bool)

(assert (=> b!4812951 m!5798512))

(declare-fun m!5798514 () Bool)

(assert (=> b!4812951 m!5798514))

(declare-fun m!5798516 () Bool)

(assert (=> b!4812951 m!5798516))

(assert (=> b!4812951 m!5798514))

(declare-fun m!5798518 () Bool)

(assert (=> b!4812951 m!5798518))

(declare-fun m!5798520 () Bool)

(assert (=> b!4812940 m!5798520))

(assert (=> b!4812940 m!5798494))

(declare-fun m!5798522 () Bool)

(assert (=> b!4812940 m!5798522))

(declare-fun m!5798524 () Bool)

(assert (=> b!4812940 m!5798524))

(declare-fun m!5798526 () Bool)

(assert (=> b!4812942 m!5798526))

(declare-fun m!5798528 () Bool)

(assert (=> b!4812942 m!5798528))

(declare-fun m!5798530 () Bool)

(assert (=> b!4812946 m!5798530))

(declare-fun m!5798532 () Bool)

(assert (=> b!4812950 m!5798532))

(check-sat (not mapNonEmpty!22448) (not b!4812951) (not b!4812942) b_and!342095 (not b!4812941) (not b!4812943) (not b_next!131073) (not b!4812950) (not b!4812938) (not b!4812939) (not b!4812940) b_and!342093 (not b_next!131075) (not b!4812946) tp_is_empty!34059 (not b!4812945))
(check-sat b_and!342093 b_and!342095 (not b_next!131073) (not b_next!131075))
