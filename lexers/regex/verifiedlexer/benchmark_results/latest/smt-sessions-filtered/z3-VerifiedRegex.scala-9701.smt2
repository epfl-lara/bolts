; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507964 () Bool)

(assert start!507964)

(declare-fun b!4860738 () Bool)

(declare-fun b_free!130459 () Bool)

(declare-fun b_next!131249 () Bool)

(assert (=> b!4860738 (= b_free!130459 (not b_next!131249))))

(declare-fun tp!1367434 () Bool)

(declare-fun b_and!342311 () Bool)

(assert (=> b!4860738 (= tp!1367434 b_and!342311)))

(declare-fun b!4860739 () Bool)

(declare-fun b_free!130461 () Bool)

(declare-fun b_next!131251 () Bool)

(assert (=> b!4860739 (= b_free!130461 (not b_next!131251))))

(declare-fun tp!1367430 () Bool)

(declare-fun b_and!342313 () Bool)

(assert (=> b!4860739 (= tp!1367430 b_and!342313)))

(declare-fun b!4860732 () Bool)

(declare-fun e!3038935 () Bool)

(declare-fun e!3038941 () Bool)

(assert (=> b!4860732 (= e!3038935 e!3038941)))

(declare-fun b!4860734 () Bool)

(declare-fun e!3038938 () Bool)

(assert (=> b!4860734 (= e!3038938 e!3038935)))

(declare-fun b!4860735 () Bool)

(declare-fun res!2075028 () Bool)

(declare-fun e!3038937 () Bool)

(assert (=> b!4860735 (=> (not res!2075028) (not e!3038937))))

(declare-datatypes ((Hashable!7575 0))(
  ( (HashableExt!7574 (__x!33910 Int)) )
))
(declare-datatypes ((K!17622 0))(
  ( (K!17623 (val!22455 Int)) )
))
(declare-datatypes ((V!17892 0))(
  ( (V!17893 (val!22456 Int)) )
))
(declare-datatypes ((tuple2!59618 0))(
  ( (tuple2!59619 (_1!33112 K!17622) (_2!33112 V!17892)) )
))
(declare-datatypes ((List!55930 0))(
  ( (Nil!55806) (Cons!55806 (h!62254 tuple2!59618) (t!363550 List!55930)) )
))
(declare-datatypes ((array!18923 0))(
  ( (array!18924 (arr!8444 (Array (_ BitVec 32) (_ BitVec 64))) (size!36787 (_ BitVec 32))) )
))
(declare-datatypes ((array!18925 0))(
  ( (array!18926 (arr!8445 (Array (_ BitVec 32) List!55930)) (size!36788 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10260 0))(
  ( (LongMapFixedSize!10261 (defaultEntry!5555 Int) (mask!15472 (_ BitVec 32)) (extraKeys!5414 (_ BitVec 32)) (zeroValue!5427 List!55930) (minValue!5427 List!55930) (_size!10273 (_ BitVec 32)) (_keys!5484 array!18923) (_values!5452 array!18925) (_vacant!5195 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20261 0))(
  ( (Cell!20262 (v!49643 LongMapFixedSize!10260)) )
))
(declare-datatypes ((MutLongMap!5130 0))(
  ( (LongMap!5130 (underlying!10455 Cell!20261)) (MutLongMapExt!5129 (__x!33911 Int)) )
))
(declare-datatypes ((Cell!20263 0))(
  ( (Cell!20264 (v!49644 MutLongMap!5130)) )
))
(declare-datatypes ((MutableMap!5002 0))(
  ( (MutableMapExt!5001 (__x!33912 Int)) (HashMap!5002 (underlying!10456 Cell!20263) (hashF!13842 Hashable!7575) (_size!10274 (_ BitVec 32)) (defaultValue!5173 Int)) )
))
(declare-fun thiss!42706 () MutableMap!5002)

(declare-fun valid!4151 (MutLongMap!5130) Bool)

(assert (=> b!4860735 (= res!2075028 (valid!4151 (v!49644 (underlying!10456 thiss!42706))))))

(declare-fun b!4860736 () Bool)

(declare-fun e!3038940 () Bool)

(declare-fun lt!1992312 () MutLongMap!5130)

(get-info :version)

(assert (=> b!4860736 (= e!3038940 (and e!3038938 ((_ is LongMap!5130) lt!1992312)))))

(assert (=> b!4860736 (= lt!1992312 (v!49644 (underlying!10456 thiss!42706)))))

(declare-fun mapIsEmpty!22622 () Bool)

(declare-fun mapRes!22622 () Bool)

(assert (=> mapIsEmpty!22622 mapRes!22622))

(declare-fun mapNonEmpty!22622 () Bool)

(declare-fun tp!1367432 () Bool)

(declare-fun tp!1367431 () Bool)

(assert (=> mapNonEmpty!22622 (= mapRes!22622 (and tp!1367432 tp!1367431))))

(declare-fun mapKey!22622 () (_ BitVec 32))

(declare-fun mapRest!22622 () (Array (_ BitVec 32) List!55930))

(declare-fun mapValue!22622 () List!55930)

(assert (=> mapNonEmpty!22622 (= (arr!8445 (_values!5452 (v!49643 (underlying!10455 (v!49644 (underlying!10456 thiss!42706)))))) (store mapRest!22622 mapKey!22622 mapValue!22622))))

(declare-fun b!4860737 () Bool)

(assert (=> b!4860737 (= e!3038937 (not ((_ is LongMap!5130) (v!49644 (underlying!10456 thiss!42706)))))))

(declare-fun res!2075029 () Bool)

(assert (=> start!507964 (=> (not res!2075029) (not e!3038937))))

(assert (=> start!507964 (= res!2075029 ((_ is HashMap!5002) thiss!42706))))

(assert (=> start!507964 e!3038937))

(declare-fun e!3038936 () Bool)

(assert (=> start!507964 e!3038936))

(declare-fun b!4860733 () Bool)

(declare-fun e!3038934 () Bool)

(declare-fun tp!1367429 () Bool)

(assert (=> b!4860733 (= e!3038934 (and tp!1367429 mapRes!22622))))

(declare-fun condMapEmpty!22622 () Bool)

(declare-fun mapDefault!22622 () List!55930)

(assert (=> b!4860733 (= condMapEmpty!22622 (= (arr!8445 (_values!5452 (v!49643 (underlying!10455 (v!49644 (underlying!10456 thiss!42706)))))) ((as const (Array (_ BitVec 32) List!55930)) mapDefault!22622)))))

(declare-fun tp!1367435 () Bool)

(declare-fun tp!1367433 () Bool)

(declare-fun array_inv!6100 (array!18923) Bool)

(declare-fun array_inv!6101 (array!18925) Bool)

(assert (=> b!4860738 (= e!3038941 (and tp!1367434 tp!1367435 tp!1367433 (array_inv!6100 (_keys!5484 (v!49643 (underlying!10455 (v!49644 (underlying!10456 thiss!42706)))))) (array_inv!6101 (_values!5452 (v!49643 (underlying!10455 (v!49644 (underlying!10456 thiss!42706)))))) e!3038934))))

(assert (=> b!4860739 (= e!3038936 (and e!3038940 tp!1367430))))

(assert (= (and start!507964 res!2075029) b!4860735))

(assert (= (and b!4860735 res!2075028) b!4860737))

(assert (= (and b!4860733 condMapEmpty!22622) mapIsEmpty!22622))

(assert (= (and b!4860733 (not condMapEmpty!22622)) mapNonEmpty!22622))

(assert (= b!4860738 b!4860733))

(assert (= b!4860732 b!4860738))

(assert (= b!4860734 b!4860732))

(assert (= (and b!4860736 ((_ is LongMap!5130) (v!49644 (underlying!10456 thiss!42706)))) b!4860734))

(assert (= b!4860739 b!4860736))

(assert (= (and start!507964 ((_ is HashMap!5002) thiss!42706)) b!4860739))

(declare-fun m!5858690 () Bool)

(assert (=> b!4860735 m!5858690))

(declare-fun m!5858692 () Bool)

(assert (=> mapNonEmpty!22622 m!5858692))

(declare-fun m!5858694 () Bool)

(assert (=> b!4860738 m!5858694))

(declare-fun m!5858696 () Bool)

(assert (=> b!4860738 m!5858696))

(check-sat b_and!342311 (not mapNonEmpty!22622) (not b_next!131249) (not b_next!131251) (not b!4860733) (not b!4860738) b_and!342313 (not b!4860735))
(check-sat b_and!342311 b_and!342313 (not b_next!131249) (not b_next!131251))
