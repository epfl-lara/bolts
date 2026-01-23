; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242230 () Bool)

(assert start!242230)

(declare-fun b!2481989 () Bool)

(declare-fun b_free!72313 () Bool)

(declare-fun b_next!73017 () Bool)

(assert (=> b!2481989 (= b_free!72313 (not b_next!73017))))

(declare-fun tp!794510 () Bool)

(declare-fun b_and!188561 () Bool)

(assert (=> b!2481989 (= tp!794510 b_and!188561)))

(declare-fun b!2481988 () Bool)

(declare-fun b_free!72315 () Bool)

(declare-fun b_next!73019 () Bool)

(assert (=> b!2481988 (= b_free!72315 (not b_next!73019))))

(declare-fun tp!794507 () Bool)

(declare-fun b_and!188563 () Bool)

(assert (=> b!2481988 (= tp!794507 b_and!188563)))

(declare-fun b!2481982 () Bool)

(declare-fun res!1050738 () Bool)

(declare-fun e!1575511 () Bool)

(assert (=> b!2481982 (=> (not res!1050738) (not e!1575511))))

(declare-datatypes ((Hashable!3274 0))(
  ( (HashableExt!3273 (__x!18998 Int)) )
))
(declare-datatypes ((K!5495 0))(
  ( (K!5496 (val!8871 Int)) )
))
(declare-datatypes ((V!5697 0))(
  ( (V!5698 (val!8872 Int)) )
))
(declare-datatypes ((tuple2!28830 0))(
  ( (tuple2!28831 (_1!16956 K!5495) (_2!16956 V!5697)) )
))
(declare-datatypes ((List!29209 0))(
  ( (Nil!29109) (Cons!29109 (h!34515 tuple2!28830) (t!210868 List!29209)) )
))
(declare-datatypes ((array!11921 0))(
  ( (array!11922 (arr!5318 (Array (_ BitVec 32) List!29209)) (size!22737 (_ BitVec 32))) )
))
(declare-datatypes ((array!11923 0))(
  ( (array!11924 (arr!5319 (Array (_ BitVec 32) (_ BitVec 64))) (size!22738 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6728 0))(
  ( (LongMapFixedSize!6729 (defaultEntry!3738 Int) (mask!8535 (_ BitVec 32)) (extraKeys!3612 (_ BitVec 32)) (zeroValue!3622 List!29209) (minValue!3622 List!29209) (_size!6775 (_ BitVec 32)) (_keys!3661 array!11923) (_values!3644 array!11921) (_vacant!3425 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13273 0))(
  ( (Cell!13274 (v!31452 LongMapFixedSize!6728)) )
))
(declare-datatypes ((MutLongMap!3364 0))(
  ( (LongMap!3364 (underlying!6935 Cell!13273)) (MutLongMapExt!3363 (__x!18999 Int)) )
))
(declare-datatypes ((Cell!13275 0))(
  ( (Cell!13276 (v!31453 MutLongMap!3364)) )
))
(declare-datatypes ((MutableMap!3274 0))(
  ( (MutableMapExt!3273 (__x!19000 Int)) (HashMap!3274 (underlying!6936 Cell!13275) (hashF!5237 Hashable!3274) (_size!6776 (_ BitVec 32)) (defaultValue!3436 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3274)

(declare-fun key!2246 () K!5495)

(declare-fun contains!5113 (MutableMap!3274 K!5495) Bool)

(assert (=> b!2481982 (= res!1050738 (contains!5113 thiss!42540 key!2246))))

(declare-fun b!2481983 () Bool)

(declare-fun res!1050739 () Bool)

(assert (=> b!2481983 (=> (not res!1050739) (not e!1575511))))

(declare-fun valid!2571 (MutableMap!3274) Bool)

(assert (=> b!2481983 (= res!1050739 (valid!2571 thiss!42540))))

(declare-fun b!2481984 () Bool)

(assert (=> b!2481984 (= e!1575511 false)))

(declare-fun lt!888651 () List!29209)

(declare-fun apply!6919 (MutLongMap!3364 (_ BitVec 64)) List!29209)

(declare-fun hash!690 (Hashable!3274 K!5495) (_ BitVec 64))

(assert (=> b!2481984 (= lt!888651 (apply!6919 (v!31453 (underlying!6936 thiss!42540)) (hash!690 (hashF!5237 thiss!42540) key!2246)))))

(declare-fun b!2481985 () Bool)

(declare-fun e!1575515 () Bool)

(declare-fun e!1575517 () Bool)

(declare-fun lt!888652 () MutLongMap!3364)

(get-info :version)

(assert (=> b!2481985 (= e!1575515 (and e!1575517 ((_ is LongMap!3364) lt!888652)))))

(assert (=> b!2481985 (= lt!888652 (v!31453 (underlying!6936 thiss!42540)))))

(declare-fun b!2481986 () Bool)

(declare-fun e!1575516 () Bool)

(declare-fun tp!794509 () Bool)

(declare-fun mapRes!15563 () Bool)

(assert (=> b!2481986 (= e!1575516 (and tp!794509 mapRes!15563))))

(declare-fun condMapEmpty!15563 () Bool)

(declare-fun mapDefault!15563 () List!29209)

(assert (=> b!2481986 (= condMapEmpty!15563 (= (arr!5318 (_values!3644 (v!31452 (underlying!6935 (v!31453 (underlying!6936 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29209)) mapDefault!15563)))))

(declare-fun res!1050737 () Bool)

(assert (=> start!242230 (=> (not res!1050737) (not e!1575511))))

(assert (=> start!242230 (= res!1050737 ((_ is HashMap!3274) thiss!42540))))

(assert (=> start!242230 e!1575511))

(declare-fun e!1575512 () Bool)

(assert (=> start!242230 e!1575512))

(declare-fun tp_is_empty!12259 () Bool)

(assert (=> start!242230 tp_is_empty!12259))

(declare-fun mapNonEmpty!15563 () Bool)

(declare-fun tp!794512 () Bool)

(declare-fun tp!794508 () Bool)

(assert (=> mapNonEmpty!15563 (= mapRes!15563 (and tp!794512 tp!794508))))

(declare-fun mapRest!15563 () (Array (_ BitVec 32) List!29209))

(declare-fun mapKey!15563 () (_ BitVec 32))

(declare-fun mapValue!15563 () List!29209)

(assert (=> mapNonEmpty!15563 (= (arr!5318 (_values!3644 (v!31452 (underlying!6935 (v!31453 (underlying!6936 thiss!42540)))))) (store mapRest!15563 mapKey!15563 mapValue!15563))))

(declare-fun b!2481987 () Bool)

(declare-fun e!1575518 () Bool)

(declare-fun e!1575514 () Bool)

(assert (=> b!2481987 (= e!1575518 e!1575514)))

(declare-fun mapIsEmpty!15563 () Bool)

(assert (=> mapIsEmpty!15563 mapRes!15563))

(assert (=> b!2481988 (= e!1575512 (and e!1575515 tp!794507))))

(declare-fun tp!794513 () Bool)

(declare-fun tp!794511 () Bool)

(declare-fun array_inv!3817 (array!11923) Bool)

(declare-fun array_inv!3818 (array!11921) Bool)

(assert (=> b!2481989 (= e!1575514 (and tp!794510 tp!794513 tp!794511 (array_inv!3817 (_keys!3661 (v!31452 (underlying!6935 (v!31453 (underlying!6936 thiss!42540)))))) (array_inv!3818 (_values!3644 (v!31452 (underlying!6935 (v!31453 (underlying!6936 thiss!42540)))))) e!1575516))))

(declare-fun b!2481990 () Bool)

(assert (=> b!2481990 (= e!1575517 e!1575518)))

(assert (= (and start!242230 res!1050737) b!2481983))

(assert (= (and b!2481983 res!1050739) b!2481982))

(assert (= (and b!2481982 res!1050738) b!2481984))

(assert (= (and b!2481986 condMapEmpty!15563) mapIsEmpty!15563))

(assert (= (and b!2481986 (not condMapEmpty!15563)) mapNonEmpty!15563))

(assert (= b!2481989 b!2481986))

(assert (= b!2481987 b!2481989))

(assert (= b!2481990 b!2481987))

(assert (= (and b!2481985 ((_ is LongMap!3364) (v!31453 (underlying!6936 thiss!42540)))) b!2481990))

(assert (= b!2481988 b!2481985))

(assert (= (and start!242230 ((_ is HashMap!3274) thiss!42540)) b!2481988))

(declare-fun m!2850101 () Bool)

(assert (=> b!2481989 m!2850101))

(declare-fun m!2850103 () Bool)

(assert (=> b!2481989 m!2850103))

(declare-fun m!2850105 () Bool)

(assert (=> mapNonEmpty!15563 m!2850105))

(declare-fun m!2850107 () Bool)

(assert (=> b!2481983 m!2850107))

(declare-fun m!2850109 () Bool)

(assert (=> b!2481984 m!2850109))

(assert (=> b!2481984 m!2850109))

(declare-fun m!2850111 () Bool)

(assert (=> b!2481984 m!2850111))

(declare-fun m!2850113 () Bool)

(assert (=> b!2481982 m!2850113))

(check-sat b_and!188561 (not b!2481986) b_and!188563 (not b_next!73017) (not b!2481989) tp_is_empty!12259 (not b!2481983) (not mapNonEmpty!15563) (not b!2481982) (not b!2481984) (not b_next!73019))
(check-sat b_and!188563 b_and!188561 (not b_next!73017) (not b_next!73019))
