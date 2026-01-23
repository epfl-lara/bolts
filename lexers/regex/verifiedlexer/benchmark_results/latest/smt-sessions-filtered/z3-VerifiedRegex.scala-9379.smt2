; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497484 () Bool)

(assert start!497484)

(declare-fun b!4811707 () Bool)

(declare-fun b_free!130211 () Bool)

(declare-fun b_next!131001 () Bool)

(assert (=> b!4811707 (= b_free!130211 (not b_next!131001))))

(declare-fun tp!1360987 () Bool)

(declare-fun b_and!342013 () Bool)

(assert (=> b!4811707 (= tp!1360987 b_and!342013)))

(declare-fun b!4811700 () Bool)

(declare-fun b_free!130213 () Bool)

(declare-fun b_next!131003 () Bool)

(assert (=> b!4811700 (= b_free!130213 (not b_next!131003))))

(declare-fun tp!1360986 () Bool)

(declare-fun b_and!342015 () Bool)

(assert (=> b!4811700 (= tp!1360986 b_and!342015)))

(declare-fun e!3006024 () Bool)

(declare-fun e!3006017 () Bool)

(assert (=> b!4811700 (= e!3006024 (and e!3006017 tp!1360986))))

(declare-fun b!4811701 () Bool)

(declare-fun e!3006016 () Bool)

(declare-fun e!3006018 () Bool)

(assert (=> b!4811701 (= e!3006016 e!3006018)))

(declare-fun res!2046689 () Bool)

(assert (=> b!4811701 (=> (not res!2046689) (not e!3006018))))

(declare-datatypes ((K!16184 0))(
  ( (K!16185 (val!21253 Int)) )
))
(declare-datatypes ((array!18648 0))(
  ( (array!18649 (arr!8319 (Array (_ BitVec 32) (_ BitVec 64))) (size!36565 (_ BitVec 32))) )
))
(declare-datatypes ((V!16430 0))(
  ( (V!16431 (val!21254 Int)) )
))
(declare-datatypes ((tuple2!57448 0))(
  ( (tuple2!57449 (_1!32018 K!16184) (_2!32018 V!16430)) )
))
(declare-datatypes ((List!54686 0))(
  ( (Nil!54562) (Cons!54562 (h!60994 tuple2!57448) (t!362172 List!54686)) )
))
(declare-datatypes ((array!18650 0))(
  ( (array!18651 (arr!8320 (Array (_ BitVec 32) List!54686)) (size!36566 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10134 0))(
  ( (LongMapFixedSize!10135 (defaultEntry!5489 Int) (mask!15081 (_ BitVec 32)) (extraKeys!5347 (_ BitVec 32)) (zeroValue!5360 List!54686) (minValue!5360 List!54686) (_size!10159 (_ BitVec 32)) (_keys!5416 array!18648) (_values!5385 array!18650) (_vacant!5132 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20033 0))(
  ( (Cell!20034 (v!48884 LongMapFixedSize!10134)) )
))
(declare-datatypes ((MutLongMap!5067 0))(
  ( (LongMap!5067 (underlying!10341 Cell!20033)) (MutLongMapExt!5066 (__x!33299 Int)) )
))
(declare-datatypes ((Hashable!7078 0))(
  ( (HashableExt!7077 (__x!33300 Int)) )
))
(declare-datatypes ((Cell!20035 0))(
  ( (Cell!20036 (v!48885 MutLongMap!5067)) )
))
(declare-datatypes ((MutableMap!4951 0))(
  ( (MutableMapExt!4950 (__x!33301 Int)) (HashMap!4951 (underlying!10342 Cell!20035) (hashF!13354 Hashable!7078) (_size!10160 (_ BitVec 32)) (defaultValue!5122 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4951)

(declare-fun lt!1963227 () (_ BitVec 64))

(declare-fun contains!18287 (MutLongMap!5067 (_ BitVec 64)) Bool)

(assert (=> b!4811701 (= res!2046689 (contains!18287 (v!48885 (underlying!10342 thiss!41921)) lt!1963227))))

(declare-fun key!1652 () K!16184)

(declare-fun hash!5145 (Hashable!7078 K!16184) (_ BitVec 64))

(assert (=> b!4811701 (= lt!1963227 (hash!5145 (hashF!13354 thiss!41921) key!1652))))

(declare-fun b!4811702 () Bool)

(declare-datatypes ((Unit!141584 0))(
  ( (Unit!141585) )
))
(declare-fun e!3006021 () Unit!141584)

(declare-fun Unit!141586 () Unit!141584)

(assert (=> b!4811702 (= e!3006021 Unit!141586)))

(declare-fun b!4811703 () Bool)

(declare-fun e!3006023 () Bool)

(declare-fun lt!1963228 () MutLongMap!5067)

(get-info :version)

(assert (=> b!4811703 (= e!3006017 (and e!3006023 ((_ is LongMap!5067) lt!1963228)))))

(assert (=> b!4811703 (= lt!1963228 (v!48885 (underlying!10342 thiss!41921)))))

(declare-fun b!4811704 () Bool)

(assert (=> b!4811704 (= e!3006018 false)))

(declare-fun lt!1963230 () Unit!141584)

(assert (=> b!4811704 (= lt!1963230 e!3006021)))

(declare-fun lt!1963229 () List!54686)

(declare-fun c!820089 () Bool)

(declare-datatypes ((tuple2!57450 0))(
  ( (tuple2!57451 (_1!32019 (_ BitVec 64)) (_2!32019 List!54686)) )
))
(declare-datatypes ((List!54687 0))(
  ( (Nil!54563) (Cons!54563 (h!60995 tuple2!57450) (t!362173 List!54687)) )
))
(declare-datatypes ((ListLongMap!5625 0))(
  ( (ListLongMap!5626 (toList!7154 List!54687)) )
))
(declare-fun lt!1963225 () ListLongMap!5625)

(declare-fun contains!18288 (List!54687 tuple2!57450) Bool)

(assert (=> b!4811704 (= c!820089 (not (contains!18288 (toList!7154 lt!1963225) (tuple2!57451 lt!1963227 lt!1963229))))))

(declare-fun apply!13170 (MutLongMap!5067 (_ BitVec 64)) List!54686)

(assert (=> b!4811704 (= lt!1963229 (apply!13170 (v!48885 (underlying!10342 thiss!41921)) lt!1963227))))

(declare-fun map!12438 (MutLongMap!5067) ListLongMap!5625)

(assert (=> b!4811704 (= lt!1963225 (map!12438 (v!48885 (underlying!10342 thiss!41921))))))

(declare-fun b!4811705 () Bool)

(declare-fun e!3006022 () Bool)

(assert (=> b!4811705 (= e!3006023 e!3006022)))

(declare-fun b!4811706 () Bool)

(declare-fun e!3006019 () Bool)

(declare-fun tp!1360989 () Bool)

(declare-fun mapRes!22382 () Bool)

(assert (=> b!4811706 (= e!3006019 (and tp!1360989 mapRes!22382))))

(declare-fun condMapEmpty!22382 () Bool)

(declare-fun mapDefault!22382 () List!54686)

(assert (=> b!4811706 (= condMapEmpty!22382 (= (arr!8320 (_values!5385 (v!48884 (underlying!10341 (v!48885 (underlying!10342 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54686)) mapDefault!22382)))))

(declare-fun mapNonEmpty!22382 () Bool)

(declare-fun tp!1360990 () Bool)

(declare-fun tp!1360985 () Bool)

(assert (=> mapNonEmpty!22382 (= mapRes!22382 (and tp!1360990 tp!1360985))))

(declare-fun mapRest!22382 () (Array (_ BitVec 32) List!54686))

(declare-fun mapKey!22382 () (_ BitVec 32))

(declare-fun mapValue!22382 () List!54686)

(assert (=> mapNonEmpty!22382 (= (arr!8320 (_values!5385 (v!48884 (underlying!10341 (v!48885 (underlying!10342 thiss!41921)))))) (store mapRest!22382 mapKey!22382 mapValue!22382))))

(declare-fun tp!1360984 () Bool)

(declare-fun tp!1360988 () Bool)

(declare-fun e!3006020 () Bool)

(declare-fun array_inv!6005 (array!18648) Bool)

(declare-fun array_inv!6006 (array!18650) Bool)

(assert (=> b!4811707 (= e!3006020 (and tp!1360987 tp!1360984 tp!1360988 (array_inv!6005 (_keys!5416 (v!48884 (underlying!10341 (v!48885 (underlying!10342 thiss!41921)))))) (array_inv!6006 (_values!5385 (v!48884 (underlying!10341 (v!48885 (underlying!10342 thiss!41921)))))) e!3006019))))

(declare-fun b!4811708 () Bool)

(assert (=> b!4811708 (= e!3006022 e!3006020)))

(declare-fun res!2046690 () Bool)

(assert (=> start!497484 (=> (not res!2046690) (not e!3006016))))

(assert (=> start!497484 (= res!2046690 ((_ is HashMap!4951) thiss!41921))))

(assert (=> start!497484 e!3006016))

(assert (=> start!497484 e!3006024))

(declare-fun tp_is_empty!34015 () Bool)

(assert (=> start!497484 tp_is_empty!34015))

(declare-fun b!4811709 () Bool)

(declare-fun Unit!141587 () Unit!141584)

(assert (=> b!4811709 (= e!3006021 Unit!141587)))

(declare-fun lt!1963223 () Unit!141584)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!279 (List!54687 (_ BitVec 64)) Unit!141584)

(assert (=> b!4811709 (= lt!1963223 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!279 (toList!7154 lt!1963225) lt!1963227))))

(declare-fun containsKey!4159 (List!54687 (_ BitVec 64)) Bool)

(assert (=> b!4811709 (containsKey!4159 (toList!7154 lt!1963225) lt!1963227)))

(declare-fun lt!1963226 () Unit!141584)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2282 (List!54687 (_ BitVec 64)) Unit!141584)

(assert (=> b!4811709 (= lt!1963226 (lemmaContainsKeyImpliesGetValueByKeyDefined!2282 (toList!7154 lt!1963225) lt!1963227))))

(declare-datatypes ((Option!13316 0))(
  ( (None!13315) (Some!13315 (v!48886 List!54686)) )
))
(declare-fun isDefined!10454 (Option!13316) Bool)

(declare-fun getValueByKey!2495 (List!54687 (_ BitVec 64)) Option!13316)

(assert (=> b!4811709 (isDefined!10454 (getValueByKey!2495 (toList!7154 lt!1963225) lt!1963227))))

(declare-fun lt!1963224 () Unit!141584)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1002 (List!54687 (_ BitVec 64) List!54686) Unit!141584)

(assert (=> b!4811709 (= lt!1963224 (lemmaGetValueByKeyImpliesContainsTuple!1002 (toList!7154 lt!1963225) lt!1963227 lt!1963229))))

(assert (=> b!4811709 false))

(declare-fun mapIsEmpty!22382 () Bool)

(assert (=> mapIsEmpty!22382 mapRes!22382))

(declare-fun b!4811710 () Bool)

(declare-fun res!2046688 () Bool)

(assert (=> b!4811710 (=> (not res!2046688) (not e!3006016))))

(declare-fun valid!4097 (MutableMap!4951) Bool)

(assert (=> b!4811710 (= res!2046688 (valid!4097 thiss!41921))))

(assert (= (and start!497484 res!2046690) b!4811710))

(assert (= (and b!4811710 res!2046688) b!4811701))

(assert (= (and b!4811701 res!2046689) b!4811704))

(assert (= (and b!4811704 c!820089) b!4811709))

(assert (= (and b!4811704 (not c!820089)) b!4811702))

(assert (= (and b!4811706 condMapEmpty!22382) mapIsEmpty!22382))

(assert (= (and b!4811706 (not condMapEmpty!22382)) mapNonEmpty!22382))

(assert (= b!4811707 b!4811706))

(assert (= b!4811708 b!4811707))

(assert (= b!4811705 b!4811708))

(assert (= (and b!4811703 ((_ is LongMap!5067) (v!48885 (underlying!10342 thiss!41921)))) b!4811705))

(assert (= b!4811700 b!4811703))

(assert (= (and start!497484 ((_ is HashMap!4951) thiss!41921)) b!4811700))

(declare-fun m!5797356 () Bool)

(assert (=> b!4811709 m!5797356))

(declare-fun m!5797358 () Bool)

(assert (=> b!4811709 m!5797358))

(declare-fun m!5797360 () Bool)

(assert (=> b!4811709 m!5797360))

(declare-fun m!5797362 () Bool)

(assert (=> b!4811709 m!5797362))

(declare-fun m!5797364 () Bool)

(assert (=> b!4811709 m!5797364))

(declare-fun m!5797366 () Bool)

(assert (=> b!4811709 m!5797366))

(assert (=> b!4811709 m!5797364))

(declare-fun m!5797368 () Bool)

(assert (=> mapNonEmpty!22382 m!5797368))

(declare-fun m!5797370 () Bool)

(assert (=> b!4811704 m!5797370))

(declare-fun m!5797372 () Bool)

(assert (=> b!4811704 m!5797372))

(declare-fun m!5797374 () Bool)

(assert (=> b!4811704 m!5797374))

(declare-fun m!5797376 () Bool)

(assert (=> b!4811710 m!5797376))

(declare-fun m!5797378 () Bool)

(assert (=> b!4811707 m!5797378))

(declare-fun m!5797380 () Bool)

(assert (=> b!4811707 m!5797380))

(declare-fun m!5797382 () Bool)

(assert (=> b!4811701 m!5797382))

(declare-fun m!5797384 () Bool)

(assert (=> b!4811701 m!5797384))

(check-sat (not mapNonEmpty!22382) (not b!4811710) (not b_next!131003) tp_is_empty!34015 (not b!4811707) (not b_next!131001) b_and!342015 (not b!4811701) (not b!4811704) b_and!342013 (not b!4811706) (not b!4811709))
(check-sat b_and!342013 b_and!342015 (not b_next!131001) (not b_next!131003))
