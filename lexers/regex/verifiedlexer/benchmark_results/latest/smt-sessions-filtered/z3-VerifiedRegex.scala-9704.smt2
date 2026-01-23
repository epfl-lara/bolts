; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507976 () Bool)

(assert start!507976)

(declare-fun b!4860881 () Bool)

(declare-fun b_free!130483 () Bool)

(declare-fun b_next!131273 () Bool)

(assert (=> b!4860881 (= b_free!130483 (not b_next!131273))))

(declare-fun tp!1367556 () Bool)

(declare-fun b_and!342335 () Bool)

(assert (=> b!4860881 (= tp!1367556 b_and!342335)))

(declare-fun b!4860879 () Bool)

(declare-fun b_free!130485 () Bool)

(declare-fun b_next!131275 () Bool)

(assert (=> b!4860879 (= b_free!130485 (not b_next!131275))))

(declare-fun tp!1367561 () Bool)

(declare-fun b_and!342337 () Bool)

(assert (=> b!4860879 (= tp!1367561 b_and!342337)))

(declare-fun b!4860876 () Bool)

(declare-fun e!3039083 () Bool)

(declare-fun e!3039084 () Bool)

(assert (=> b!4860876 (= e!3039083 e!3039084)))

(declare-fun b!4860877 () Bool)

(declare-fun e!3039080 () Bool)

(assert (=> b!4860877 (= e!3039080 e!3039083)))

(declare-fun b!4860878 () Bool)

(declare-fun res!2075065 () Bool)

(declare-fun e!3039082 () Bool)

(assert (=> b!4860878 (=> (not res!2075065) (not e!3039082))))

(declare-datatypes ((Hashable!7581 0))(
  ( (HashableExt!7580 (__x!33928 Int)) )
))
(declare-datatypes ((K!17637 0))(
  ( (K!17638 (val!22467 Int)) )
))
(declare-datatypes ((V!17907 0))(
  ( (V!17908 (val!22468 Int)) )
))
(declare-datatypes ((tuple2!59634 0))(
  ( (tuple2!59635 (_1!33120 K!17637) (_2!33120 V!17907)) )
))
(declare-datatypes ((List!55938 0))(
  ( (Nil!55814) (Cons!55814 (h!62262 tuple2!59634) (t!363558 List!55938)) )
))
(declare-datatypes ((array!18947 0))(
  ( (array!18948 (arr!8456 (Array (_ BitVec 32) (_ BitVec 64))) (size!36799 (_ BitVec 32))) )
))
(declare-datatypes ((array!18949 0))(
  ( (array!18950 (arr!8457 (Array (_ BitVec 32) List!55938)) (size!36800 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10272 0))(
  ( (LongMapFixedSize!10273 (defaultEntry!5561 Int) (mask!15481 (_ BitVec 32)) (extraKeys!5420 (_ BitVec 32)) (zeroValue!5433 List!55938) (minValue!5433 List!55938) (_size!10285 (_ BitVec 32)) (_keys!5490 array!18947) (_values!5458 array!18949) (_vacant!5201 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20285 0))(
  ( (Cell!20286 (v!49655 LongMapFixedSize!10272)) )
))
(declare-datatypes ((MutLongMap!5136 0))(
  ( (LongMap!5136 (underlying!10467 Cell!20285)) (MutLongMapExt!5135 (__x!33929 Int)) )
))
(declare-datatypes ((Cell!20287 0))(
  ( (Cell!20288 (v!49656 MutLongMap!5136)) )
))
(declare-datatypes ((MutableMap!5008 0))(
  ( (MutableMapExt!5007 (__x!33930 Int)) (HashMap!5008 (underlying!10468 Cell!20287) (hashF!13848 Hashable!7581) (_size!10286 (_ BitVec 32)) (defaultValue!5179 Int)) )
))
(declare-fun thiss!42706 () MutableMap!5008)

(declare-fun valid!4155 (MutLongMap!5136) Bool)

(assert (=> b!4860878 (= res!2075065 (valid!4155 (v!49656 (underlying!10468 thiss!42706))))))

(declare-fun e!3039079 () Bool)

(declare-fun e!3039078 () Bool)

(assert (=> b!4860879 (= e!3039079 (and e!3039078 tp!1367561))))

(declare-fun b!4860880 () Bool)

(declare-fun lt!1992341 () MutLongMap!5136)

(get-info :version)

(assert (=> b!4860880 (= e!3039078 (and e!3039080 ((_ is LongMap!5136) lt!1992341)))))

(assert (=> b!4860880 (= lt!1992341 (v!49656 (underlying!10468 thiss!42706)))))

(declare-fun res!2075064 () Bool)

(assert (=> start!507976 (=> (not res!2075064) (not e!3039082))))

(assert (=> start!507976 (= res!2075064 ((_ is HashMap!5008) thiss!42706))))

(assert (=> start!507976 e!3039082))

(assert (=> start!507976 e!3039079))

(declare-fun e!3039081 () Bool)

(declare-fun tp!1367557 () Bool)

(declare-fun tp!1367560 () Bool)

(declare-fun array_inv!6106 (array!18947) Bool)

(declare-fun array_inv!6107 (array!18949) Bool)

(assert (=> b!4860881 (= e!3039084 (and tp!1367556 tp!1367557 tp!1367560 (array_inv!6106 (_keys!5490 (v!49655 (underlying!10467 (v!49656 (underlying!10468 thiss!42706)))))) (array_inv!6107 (_values!5458 (v!49655 (underlying!10467 (v!49656 (underlying!10468 thiss!42706)))))) e!3039081))))

(declare-fun b!4860882 () Bool)

(assert (=> b!4860882 (= e!3039082 false)))

(declare-fun lt!1992342 () Bool)

(declare-fun lambda!243131 () Int)

(declare-datatypes ((tuple2!59636 0))(
  ( (tuple2!59637 (_1!33121 (_ BitVec 64)) (_2!33121 List!55938)) )
))
(declare-datatypes ((List!55939 0))(
  ( (Nil!55815) (Cons!55815 (h!62263 tuple2!59636) (t!363559 List!55939)) )
))
(declare-fun forall!13022 (List!55939 Int) Bool)

(declare-datatypes ((ListLongMap!6575 0))(
  ( (ListLongMap!6576 (toList!7925 List!55939)) )
))
(declare-fun map!12853 (MutLongMap!5136) ListLongMap!6575)

(assert (=> b!4860882 (= lt!1992342 (forall!13022 (toList!7925 (map!12853 (v!49656 (underlying!10468 thiss!42706)))) lambda!243131))))

(declare-fun mapIsEmpty!22640 () Bool)

(declare-fun mapRes!22640 () Bool)

(assert (=> mapIsEmpty!22640 mapRes!22640))

(declare-fun mapNonEmpty!22640 () Bool)

(declare-fun tp!1367558 () Bool)

(declare-fun tp!1367555 () Bool)

(assert (=> mapNonEmpty!22640 (= mapRes!22640 (and tp!1367558 tp!1367555))))

(declare-fun mapRest!22640 () (Array (_ BitVec 32) List!55938))

(declare-fun mapKey!22640 () (_ BitVec 32))

(declare-fun mapValue!22640 () List!55938)

(assert (=> mapNonEmpty!22640 (= (arr!8457 (_values!5458 (v!49655 (underlying!10467 (v!49656 (underlying!10468 thiss!42706)))))) (store mapRest!22640 mapKey!22640 mapValue!22640))))

(declare-fun b!4860883 () Bool)

(declare-fun tp!1367559 () Bool)

(assert (=> b!4860883 (= e!3039081 (and tp!1367559 mapRes!22640))))

(declare-fun condMapEmpty!22640 () Bool)

(declare-fun mapDefault!22640 () List!55938)

(assert (=> b!4860883 (= condMapEmpty!22640 (= (arr!8457 (_values!5458 (v!49655 (underlying!10467 (v!49656 (underlying!10468 thiss!42706)))))) ((as const (Array (_ BitVec 32) List!55938)) mapDefault!22640)))))

(assert (= (and start!507976 res!2075064) b!4860878))

(assert (= (and b!4860878 res!2075065) b!4860882))

(assert (= (and b!4860883 condMapEmpty!22640) mapIsEmpty!22640))

(assert (= (and b!4860883 (not condMapEmpty!22640)) mapNonEmpty!22640))

(assert (= b!4860881 b!4860883))

(assert (= b!4860876 b!4860881))

(assert (= b!4860877 b!4860876))

(assert (= (and b!4860880 ((_ is LongMap!5136) (v!49656 (underlying!10468 thiss!42706)))) b!4860877))

(assert (= b!4860879 b!4860880))

(assert (= (and start!507976 ((_ is HashMap!5008) thiss!42706)) b!4860879))

(declare-fun m!5858750 () Bool)

(assert (=> b!4860878 m!5858750))

(declare-fun m!5858752 () Bool)

(assert (=> b!4860881 m!5858752))

(declare-fun m!5858754 () Bool)

(assert (=> b!4860881 m!5858754))

(declare-fun m!5858756 () Bool)

(assert (=> b!4860882 m!5858756))

(declare-fun m!5858758 () Bool)

(assert (=> b!4860882 m!5858758))

(declare-fun m!5858760 () Bool)

(assert (=> mapNonEmpty!22640 m!5858760))

(check-sat (not mapNonEmpty!22640) (not b!4860882) (not b!4860878) b_and!342337 (not b_next!131275) (not b!4860881) (not b_next!131273) b_and!342335 (not b!4860883))
(check-sat b_and!342335 b_and!342337 (not b_next!131273) (not b_next!131275))
