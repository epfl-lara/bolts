; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507968 () Bool)

(assert start!507968)

(declare-fun b!4860778 () Bool)

(declare-fun b_free!130467 () Bool)

(declare-fun b_next!131257 () Bool)

(assert (=> b!4860778 (= b_free!130467 (not b_next!131257))))

(declare-fun tp!1367477 () Bool)

(declare-fun b_and!342319 () Bool)

(assert (=> b!4860778 (= tp!1367477 b_and!342319)))

(declare-fun b!4860780 () Bool)

(declare-fun b_free!130469 () Bool)

(declare-fun b_next!131259 () Bool)

(assert (=> b!4860780 (= b_free!130469 (not b_next!131259))))

(declare-fun tp!1367472 () Bool)

(declare-fun b_and!342321 () Bool)

(assert (=> b!4860780 (= tp!1367472 b_and!342321)))

(declare-fun b!4860775 () Bool)

(declare-fun e!3038986 () Bool)

(declare-fun e!3038984 () Bool)

(declare-datatypes ((K!17627 0))(
  ( (K!17628 (val!22459 Int)) )
))
(declare-datatypes ((V!17897 0))(
  ( (V!17898 (val!22460 Int)) )
))
(declare-datatypes ((tuple2!59622 0))(
  ( (tuple2!59623 (_1!33114 K!17627) (_2!33114 V!17897)) )
))
(declare-datatypes ((List!55932 0))(
  ( (Nil!55808) (Cons!55808 (h!62256 tuple2!59622) (t!363552 List!55932)) )
))
(declare-datatypes ((array!18931 0))(
  ( (array!18932 (arr!8448 (Array (_ BitVec 32) (_ BitVec 64))) (size!36791 (_ BitVec 32))) )
))
(declare-datatypes ((array!18933 0))(
  ( (array!18934 (arr!8449 (Array (_ BitVec 32) List!55932)) (size!36792 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10264 0))(
  ( (LongMapFixedSize!10265 (defaultEntry!5557 Int) (mask!15475 (_ BitVec 32)) (extraKeys!5416 (_ BitVec 32)) (zeroValue!5429 List!55932) (minValue!5429 List!55932) (_size!10277 (_ BitVec 32)) (_keys!5486 array!18931) (_values!5454 array!18933) (_vacant!5197 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20269 0))(
  ( (Cell!20270 (v!49647 LongMapFixedSize!10264)) )
))
(declare-datatypes ((MutLongMap!5132 0))(
  ( (LongMap!5132 (underlying!10459 Cell!20269)) (MutLongMapExt!5131 (__x!33916 Int)) )
))
(declare-fun lt!1992323 () MutLongMap!5132)

(get-info :version)

(assert (=> b!4860775 (= e!3038986 (and e!3038984 ((_ is LongMap!5132) lt!1992323)))))

(declare-datatypes ((Hashable!7577 0))(
  ( (HashableExt!7576 (__x!33917 Int)) )
))
(declare-datatypes ((Cell!20271 0))(
  ( (Cell!20272 (v!49648 MutLongMap!5132)) )
))
(declare-datatypes ((MutableMap!5004 0))(
  ( (MutableMapExt!5003 (__x!33918 Int)) (HashMap!5004 (underlying!10460 Cell!20271) (hashF!13844 Hashable!7577) (_size!10278 (_ BitVec 32)) (defaultValue!5175 Int)) )
))
(declare-fun thiss!42706 () MutableMap!5004)

(assert (=> b!4860775 (= lt!1992323 (v!49648 (underlying!10460 thiss!42706)))))

(declare-fun b!4860776 () Bool)

(declare-fun e!3038988 () Bool)

(assert (=> b!4860776 (= e!3038984 e!3038988)))

(declare-fun b!4860777 () Bool)

(declare-fun e!3038983 () Bool)

(declare-fun tp!1367475 () Bool)

(declare-fun mapRes!22628 () Bool)

(assert (=> b!4860777 (= e!3038983 (and tp!1367475 mapRes!22628))))

(declare-fun condMapEmpty!22628 () Bool)

(declare-fun mapDefault!22628 () List!55932)

(assert (=> b!4860777 (= condMapEmpty!22628 (= (arr!8449 (_values!5454 (v!49647 (underlying!10459 (v!49648 (underlying!10460 thiss!42706)))))) ((as const (Array (_ BitVec 32) List!55932)) mapDefault!22628)))))

(declare-fun e!3038982 () Bool)

(declare-fun tp!1367474 () Bool)

(declare-fun tp!1367476 () Bool)

(declare-fun array_inv!6102 (array!18931) Bool)

(declare-fun array_inv!6103 (array!18933) Bool)

(assert (=> b!4860778 (= e!3038982 (and tp!1367477 tp!1367476 tp!1367474 (array_inv!6102 (_keys!5486 (v!49647 (underlying!10459 (v!49648 (underlying!10460 thiss!42706)))))) (array_inv!6103 (_values!5454 (v!49647 (underlying!10459 (v!49648 (underlying!10460 thiss!42706)))))) e!3038983))))

(declare-fun b!4860779 () Bool)

(assert (=> b!4860779 (= e!3038988 e!3038982)))

(declare-fun mapIsEmpty!22628 () Bool)

(assert (=> mapIsEmpty!22628 mapRes!22628))

(declare-fun b!4860781 () Bool)

(declare-fun e!3038987 () Bool)

(assert (=> b!4860781 (= e!3038987 false)))

(declare-fun lt!1992324 () Bool)

(declare-fun valid!4152 (MutLongMap!5132) Bool)

(assert (=> b!4860781 (= lt!1992324 (valid!4152 (v!49648 (underlying!10460 thiss!42706))))))

(declare-fun mapNonEmpty!22628 () Bool)

(declare-fun tp!1367471 () Bool)

(declare-fun tp!1367473 () Bool)

(assert (=> mapNonEmpty!22628 (= mapRes!22628 (and tp!1367471 tp!1367473))))

(declare-fun mapValue!22628 () List!55932)

(declare-fun mapRest!22628 () (Array (_ BitVec 32) List!55932))

(declare-fun mapKey!22628 () (_ BitVec 32))

(assert (=> mapNonEmpty!22628 (= (arr!8449 (_values!5454 (v!49647 (underlying!10459 (v!49648 (underlying!10460 thiss!42706)))))) (store mapRest!22628 mapKey!22628 mapValue!22628))))

(declare-fun e!3038985 () Bool)

(assert (=> b!4860780 (= e!3038985 (and e!3038986 tp!1367472))))

(declare-fun res!2075035 () Bool)

(assert (=> start!507968 (=> (not res!2075035) (not e!3038987))))

(assert (=> start!507968 (= res!2075035 ((_ is HashMap!5004) thiss!42706))))

(assert (=> start!507968 e!3038987))

(assert (=> start!507968 e!3038985))

(assert (= (and start!507968 res!2075035) b!4860781))

(assert (= (and b!4860777 condMapEmpty!22628) mapIsEmpty!22628))

(assert (= (and b!4860777 (not condMapEmpty!22628)) mapNonEmpty!22628))

(assert (= b!4860778 b!4860777))

(assert (= b!4860779 b!4860778))

(assert (= b!4860776 b!4860779))

(assert (= (and b!4860775 ((_ is LongMap!5132) (v!49648 (underlying!10460 thiss!42706)))) b!4860776))

(assert (= b!4860780 b!4860775))

(assert (= (and start!507968 ((_ is HashMap!5004) thiss!42706)) b!4860780))

(declare-fun m!5858706 () Bool)

(assert (=> b!4860778 m!5858706))

(declare-fun m!5858708 () Bool)

(assert (=> b!4860778 m!5858708))

(declare-fun m!5858710 () Bool)

(assert (=> b!4860781 m!5858710))

(declare-fun m!5858712 () Bool)

(assert (=> mapNonEmpty!22628 m!5858712))

(check-sat (not b!4860778) (not b_next!131259) (not b_next!131257) b_and!342321 b_and!342319 (not b!4860777) (not mapNonEmpty!22628) (not b!4860781))
(check-sat b_and!342319 b_and!342321 (not b_next!131257) (not b_next!131259))
