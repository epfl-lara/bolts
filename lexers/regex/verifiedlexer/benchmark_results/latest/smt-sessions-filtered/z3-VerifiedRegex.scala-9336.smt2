; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496642 () Bool)

(assert start!496642)

(declare-fun b!4806357 () Bool)

(declare-fun b_free!129867 () Bool)

(declare-fun b_next!130657 () Bool)

(assert (=> b!4806357 (= b_free!129867 (not b_next!130657))))

(declare-fun tp!1358897 () Bool)

(declare-fun b_and!341623 () Bool)

(assert (=> b!4806357 (= tp!1358897 b_and!341623)))

(declare-fun b!4806360 () Bool)

(declare-fun b_free!129869 () Bool)

(declare-fun b_next!130659 () Bool)

(assert (=> b!4806360 (= b_free!129869 (not b_next!130659))))

(declare-fun tp!1358892 () Bool)

(declare-fun b_and!341625 () Bool)

(assert (=> b!4806360 (= tp!1358892 b_and!341625)))

(declare-fun b!4806355 () Bool)

(declare-fun e!3001777 () Bool)

(declare-fun e!3001781 () Bool)

(assert (=> b!4806355 (= e!3001777 e!3001781)))

(declare-fun mapNonEmpty!22070 () Bool)

(declare-fun mapRes!22070 () Bool)

(declare-fun tp!1358893 () Bool)

(declare-fun tp!1358894 () Bool)

(assert (=> mapNonEmpty!22070 (= mapRes!22070 (and tp!1358893 tp!1358894))))

(declare-datatypes ((K!15969 0))(
  ( (K!15970 (val!21081 Int)) )
))
(declare-datatypes ((V!16215 0))(
  ( (V!16216 (val!21082 Int)) )
))
(declare-datatypes ((tuple2!57122 0))(
  ( (tuple2!57123 (_1!31855 K!15969) (_2!31855 V!16215)) )
))
(declare-datatypes ((List!54514 0))(
  ( (Nil!54390) (Cons!54390 (h!60822 tuple2!57122) (t!361966 List!54514)) )
))
(declare-fun mapRest!22070 () (Array (_ BitVec 32) List!54514))

(declare-datatypes ((array!18270 0))(
  ( (array!18271 (arr!8147 (Array (_ BitVec 32) (_ BitVec 64))) (size!36393 (_ BitVec 32))) )
))
(declare-datatypes ((array!18272 0))(
  ( (array!18273 (arr!8148 (Array (_ BitVec 32) List!54514)) (size!36394 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9962 0))(
  ( (LongMapFixedSize!9963 (defaultEntry!5399 Int) (mask!14942 (_ BitVec 32)) (extraKeys!5256 (_ BitVec 32)) (zeroValue!5269 List!54514) (minValue!5269 List!54514) (_size!9987 (_ BitVec 32)) (_keys!5323 array!18270) (_values!5294 array!18272) (_vacant!5046 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19689 0))(
  ( (Cell!19690 (v!48598 LongMapFixedSize!9962)) )
))
(declare-datatypes ((MutLongMap!4981 0))(
  ( (LongMap!4981 (underlying!10169 Cell!19689)) (MutLongMapExt!4980 (__x!33041 Int)) )
))
(declare-datatypes ((Hashable!6992 0))(
  ( (HashableExt!6991 (__x!33042 Int)) )
))
(declare-datatypes ((Cell!19691 0))(
  ( (Cell!19692 (v!48599 MutLongMap!4981)) )
))
(declare-datatypes ((MutableMap!4865 0))(
  ( (MutableMapExt!4864 (__x!33043 Int)) (HashMap!4865 (underlying!10170 Cell!19691) (hashF!13260 Hashable!6992) (_size!9988 (_ BitVec 32)) (defaultValue!5036 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4865)

(declare-fun mapValue!22070 () List!54514)

(declare-fun mapKey!22070 () (_ BitVec 32))

(assert (=> mapNonEmpty!22070 (= (arr!8148 (_values!5294 (v!48598 (underlying!10169 (v!48599 (underlying!10170 thiss!41921)))))) (store mapRest!22070 mapKey!22070 mapValue!22070))))

(declare-fun b!4806356 () Bool)

(declare-fun e!3001776 () Bool)

(declare-fun e!3001774 () Bool)

(declare-fun lt!1959939 () MutLongMap!4981)

(get-info :version)

(assert (=> b!4806356 (= e!3001776 (and e!3001774 ((_ is LongMap!4981) lt!1959939)))))

(assert (=> b!4806356 (= lt!1959939 (v!48599 (underlying!10170 thiss!41921)))))

(declare-fun tp!1358896 () Bool)

(declare-fun tp!1358895 () Bool)

(declare-fun e!3001782 () Bool)

(declare-fun array_inv!5867 (array!18270) Bool)

(declare-fun array_inv!5868 (array!18272) Bool)

(assert (=> b!4806357 (= e!3001781 (and tp!1358897 tp!1358895 tp!1358896 (array_inv!5867 (_keys!5323 (v!48598 (underlying!10169 (v!48599 (underlying!10170 thiss!41921)))))) (array_inv!5868 (_values!5294 (v!48598 (underlying!10169 (v!48599 (underlying!10170 thiss!41921)))))) e!3001782))))

(declare-fun res!2044808 () Bool)

(declare-fun e!3001780 () Bool)

(assert (=> start!496642 (=> (not res!2044808) (not e!3001780))))

(assert (=> start!496642 (= res!2044808 ((_ is HashMap!4865) thiss!41921))))

(assert (=> start!496642 e!3001780))

(declare-fun e!3001778 () Bool)

(assert (=> start!496642 e!3001778))

(declare-fun tp_is_empty!33809 () Bool)

(assert (=> start!496642 tp_is_empty!33809))

(declare-fun b!4806358 () Bool)

(declare-fun res!2044805 () Bool)

(assert (=> b!4806358 (=> (not res!2044805) (not e!3001780))))

(declare-fun valid!3990 (MutableMap!4865) Bool)

(assert (=> b!4806358 (= res!2044805 (valid!3990 thiss!41921))))

(declare-fun b!4806359 () Bool)

(declare-fun e!3001775 () Bool)

(assert (=> b!4806359 (= e!3001775 false)))

(assert (=> b!4806360 (= e!3001778 (and e!3001776 tp!1358892))))

(declare-fun mapIsEmpty!22070 () Bool)

(assert (=> mapIsEmpty!22070 mapRes!22070))

(declare-fun b!4806361 () Bool)

(declare-fun res!2044807 () Bool)

(assert (=> b!4806361 (=> (not res!2044807) (not e!3001775))))

(declare-fun lt!1959940 () (_ BitVec 64))

(declare-datatypes ((tuple2!57124 0))(
  ( (tuple2!57125 (_1!31856 (_ BitVec 64)) (_2!31856 List!54514)) )
))
(declare-datatypes ((List!54515 0))(
  ( (Nil!54391) (Cons!54391 (h!60823 tuple2!57124) (t!361967 List!54515)) )
))
(declare-fun contains!18055 (List!54515 tuple2!57124) Bool)

(declare-datatypes ((ListLongMap!5471 0))(
  ( (ListLongMap!5472 (toList!7043 List!54515)) )
))
(declare-fun map!12307 (MutLongMap!4981) ListLongMap!5471)

(declare-fun apply!13065 (MutLongMap!4981 (_ BitVec 64)) List!54514)

(assert (=> b!4806361 (= res!2044807 (not (contains!18055 (toList!7043 (map!12307 (v!48599 (underlying!10170 thiss!41921)))) (tuple2!57125 lt!1959940 (apply!13065 (v!48599 (underlying!10170 thiss!41921)) lt!1959940)))))))

(declare-fun b!4806362 () Bool)

(declare-fun tp!1358891 () Bool)

(assert (=> b!4806362 (= e!3001782 (and tp!1358891 mapRes!22070))))

(declare-fun condMapEmpty!22070 () Bool)

(declare-fun mapDefault!22070 () List!54514)

(assert (=> b!4806362 (= condMapEmpty!22070 (= (arr!8148 (_values!5294 (v!48598 (underlying!10169 (v!48599 (underlying!10170 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54514)) mapDefault!22070)))))

(declare-fun b!4806363 () Bool)

(assert (=> b!4806363 (= e!3001774 e!3001777)))

(declare-fun b!4806364 () Bool)

(assert (=> b!4806364 (= e!3001780 e!3001775)))

(declare-fun res!2044806 () Bool)

(assert (=> b!4806364 (=> (not res!2044806) (not e!3001775))))

(declare-fun contains!18056 (MutLongMap!4981 (_ BitVec 64)) Bool)

(assert (=> b!4806364 (= res!2044806 (contains!18056 (v!48599 (underlying!10170 thiss!41921)) lt!1959940))))

(declare-fun key!1652 () K!15969)

(declare-fun hash!5060 (Hashable!6992 K!15969) (_ BitVec 64))

(assert (=> b!4806364 (= lt!1959940 (hash!5060 (hashF!13260 thiss!41921) key!1652))))

(assert (= (and start!496642 res!2044808) b!4806358))

(assert (= (and b!4806358 res!2044805) b!4806364))

(assert (= (and b!4806364 res!2044806) b!4806361))

(assert (= (and b!4806361 res!2044807) b!4806359))

(assert (= (and b!4806362 condMapEmpty!22070) mapIsEmpty!22070))

(assert (= (and b!4806362 (not condMapEmpty!22070)) mapNonEmpty!22070))

(assert (= b!4806357 b!4806362))

(assert (= b!4806355 b!4806357))

(assert (= b!4806363 b!4806355))

(assert (= (and b!4806356 ((_ is LongMap!4981) (v!48599 (underlying!10170 thiss!41921)))) b!4806363))

(assert (= b!4806360 b!4806356))

(assert (= (and start!496642 ((_ is HashMap!4865) thiss!41921)) b!4806360))

(declare-fun m!5792740 () Bool)

(assert (=> b!4806361 m!5792740))

(declare-fun m!5792742 () Bool)

(assert (=> b!4806361 m!5792742))

(declare-fun m!5792744 () Bool)

(assert (=> b!4806361 m!5792744))

(declare-fun m!5792746 () Bool)

(assert (=> mapNonEmpty!22070 m!5792746))

(declare-fun m!5792748 () Bool)

(assert (=> b!4806358 m!5792748))

(declare-fun m!5792750 () Bool)

(assert (=> b!4806357 m!5792750))

(declare-fun m!5792752 () Bool)

(assert (=> b!4806357 m!5792752))

(declare-fun m!5792754 () Bool)

(assert (=> b!4806364 m!5792754))

(declare-fun m!5792756 () Bool)

(assert (=> b!4806364 m!5792756))

(check-sat (not b_next!130659) (not b!4806364) (not b!4806361) tp_is_empty!33809 (not b!4806357) b_and!341625 (not b!4806362) (not b!4806358) (not b_next!130657) b_and!341623 (not mapNonEmpty!22070))
(check-sat b_and!341623 b_and!341625 (not b_next!130657) (not b_next!130659))
