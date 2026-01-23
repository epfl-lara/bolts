; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231068 () Bool)

(assert start!231068)

(declare-fun b!2357689 () Bool)

(declare-fun b_free!70301 () Bool)

(declare-fun b_next!71005 () Bool)

(assert (=> b!2357689 (= b_free!70301 (not b_next!71005))))

(declare-fun tp!753684 () Bool)

(declare-fun b_and!185213 () Bool)

(assert (=> b!2357689 (= tp!753684 b_and!185213)))

(declare-fun b!2357688 () Bool)

(declare-fun b_free!70303 () Bool)

(declare-fun b_next!71007 () Bool)

(assert (=> b!2357688 (= b_free!70303 (not b_next!71007))))

(declare-fun tp!753683 () Bool)

(declare-fun b_and!185215 () Bool)

(assert (=> b!2357688 (= tp!753683 b_and!185215)))

(declare-fun res!1000806 () Bool)

(declare-fun e!1505687 () Bool)

(assert (=> start!231068 (=> (not res!1000806) (not e!1505687))))

(declare-datatypes ((V!5104 0))(
  ( (V!5105 (val!8145 Int)) )
))
(declare-datatypes ((K!4902 0))(
  ( (K!4903 (val!8146 Int)) )
))
(declare-datatypes ((Hashable!3122 0))(
  ( (HashableExt!3121 (__x!18394 Int)) )
))
(declare-datatypes ((tuple2!27574 0))(
  ( (tuple2!27575 (_1!16328 K!4902) (_2!16328 V!5104)) )
))
(declare-datatypes ((List!27956 0))(
  ( (Nil!27858) (Cons!27858 (h!33259 tuple2!27574) (t!207815 List!27956)) )
))
(declare-datatypes ((array!11261 0))(
  ( (array!11262 (arr!5014 (Array (_ BitVec 32) List!27956)) (size!22038 (_ BitVec 32))) )
))
(declare-datatypes ((array!11263 0))(
  ( (array!11264 (arr!5015 (Array (_ BitVec 32) (_ BitVec 64))) (size!22039 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6424 0))(
  ( (LongMapFixedSize!6425 (defaultEntry!3577 Int) (mask!8094 (_ BitVec 32)) (extraKeys!3460 (_ BitVec 32)) (zeroValue!3470 List!27956) (minValue!3470 List!27956) (_size!6471 (_ BitVec 32)) (_keys!3509 array!11263) (_values!3492 array!11261) (_vacant!3273 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12665 0))(
  ( (Cell!12666 (v!30749 LongMapFixedSize!6424)) )
))
(declare-datatypes ((MutLongMap!3212 0))(
  ( (LongMap!3212 (underlying!6629 Cell!12665)) (MutLongMapExt!3211 (__x!18395 Int)) )
))
(declare-datatypes ((Cell!12667 0))(
  ( (Cell!12668 (v!30750 MutLongMap!3212)) )
))
(declare-datatypes ((MutableMap!3122 0))(
  ( (MutableMapExt!3121 (__x!18396 Int)) (HashMap!3122 (underlying!6630 Cell!12667) (hashF!5045 Hashable!3122) (_size!6472 (_ BitVec 32)) (defaultValue!3284 Int)) )
))
(declare-fun thiss!47746 () MutableMap!3122)

(declare-fun valid!2406 (MutableMap!3122) Bool)

(assert (=> start!231068 (= res!1000806 (valid!2406 thiss!47746))))

(assert (=> start!231068 e!1505687))

(declare-fun e!1505691 () Bool)

(assert (=> start!231068 e!1505691))

(declare-fun tp_is_empty!11121 () Bool)

(assert (=> start!231068 tp_is_empty!11121))

(declare-fun b!2357683 () Bool)

(assert (=> b!2357683 (= e!1505687 false)))

(declare-fun lt!863136 () V!5104)

(declare-fun key!7176 () K!4902)

(declare-fun apply!6690 (MutableMap!3122 K!4902) V!5104)

(assert (=> b!2357683 (= lt!863136 (apply!6690 thiss!47746 key!7176))))

(declare-fun mapIsEmpty!15023 () Bool)

(declare-fun mapRes!15023 () Bool)

(assert (=> mapIsEmpty!15023 mapRes!15023))

(declare-fun b!2357684 () Bool)

(declare-fun e!1505690 () Bool)

(declare-fun e!1505688 () Bool)

(declare-fun lt!863137 () MutLongMap!3212)

(get-info :version)

(assert (=> b!2357684 (= e!1505690 (and e!1505688 ((_ is LongMap!3212) lt!863137)))))

(assert (=> b!2357684 (= lt!863137 (v!30750 (underlying!6630 thiss!47746)))))

(declare-fun b!2357685 () Bool)

(declare-fun e!1505686 () Bool)

(declare-fun tp!753682 () Bool)

(assert (=> b!2357685 (= e!1505686 (and tp!753682 mapRes!15023))))

(declare-fun condMapEmpty!15023 () Bool)

(declare-fun mapDefault!15023 () List!27956)

(assert (=> b!2357685 (= condMapEmpty!15023 (= (arr!5014 (_values!3492 (v!30749 (underlying!6629 (v!30750 (underlying!6630 thiss!47746)))))) ((as const (Array (_ BitVec 32) List!27956)) mapDefault!15023)))))

(declare-fun b!2357686 () Bool)

(declare-fun res!1000807 () Bool)

(assert (=> b!2357686 (=> (not res!1000807) (not e!1505687))))

(assert (=> b!2357686 (= res!1000807 ((_ is MutableMapExt!3121) thiss!47746))))

(declare-fun b!2357687 () Bool)

(declare-fun e!1505689 () Bool)

(declare-fun e!1505685 () Bool)

(assert (=> b!2357687 (= e!1505689 e!1505685)))

(declare-fun mapNonEmpty!15023 () Bool)

(declare-fun tp!753686 () Bool)

(declare-fun tp!753685 () Bool)

(assert (=> mapNonEmpty!15023 (= mapRes!15023 (and tp!753686 tp!753685))))

(declare-fun mapRest!15023 () (Array (_ BitVec 32) List!27956))

(declare-fun mapKey!15023 () (_ BitVec 32))

(declare-fun mapValue!15023 () List!27956)

(assert (=> mapNonEmpty!15023 (= (arr!5014 (_values!3492 (v!30749 (underlying!6629 (v!30750 (underlying!6630 thiss!47746)))))) (store mapRest!15023 mapKey!15023 mapValue!15023))))

(assert (=> b!2357688 (= e!1505691 (and e!1505690 tp!753683))))

(declare-fun tp!753687 () Bool)

(declare-fun tp!753681 () Bool)

(declare-fun array_inv!3591 (array!11263) Bool)

(declare-fun array_inv!3592 (array!11261) Bool)

(assert (=> b!2357689 (= e!1505685 (and tp!753684 tp!753687 tp!753681 (array_inv!3591 (_keys!3509 (v!30749 (underlying!6629 (v!30750 (underlying!6630 thiss!47746)))))) (array_inv!3592 (_values!3492 (v!30749 (underlying!6629 (v!30750 (underlying!6630 thiss!47746)))))) e!1505686))))

(declare-fun b!2357690 () Bool)

(assert (=> b!2357690 (= e!1505688 e!1505689)))

(assert (= (and start!231068 res!1000806) b!2357686))

(assert (= (and b!2357686 res!1000807) b!2357683))

(assert (= (and b!2357685 condMapEmpty!15023) mapIsEmpty!15023))

(assert (= (and b!2357685 (not condMapEmpty!15023)) mapNonEmpty!15023))

(assert (= b!2357689 b!2357685))

(assert (= b!2357687 b!2357689))

(assert (= b!2357690 b!2357687))

(assert (= (and b!2357684 ((_ is LongMap!3212) (v!30750 (underlying!6630 thiss!47746)))) b!2357690))

(assert (= b!2357688 b!2357684))

(assert (= (and start!231068 ((_ is HashMap!3122) thiss!47746)) b!2357688))

(declare-fun m!2770625 () Bool)

(assert (=> start!231068 m!2770625))

(declare-fun m!2770627 () Bool)

(assert (=> b!2357683 m!2770627))

(declare-fun m!2770629 () Bool)

(assert (=> mapNonEmpty!15023 m!2770629))

(declare-fun m!2770631 () Bool)

(assert (=> b!2357689 m!2770631))

(declare-fun m!2770633 () Bool)

(assert (=> b!2357689 m!2770633))

(check-sat b_and!185213 tp_is_empty!11121 (not b!2357689) b_and!185215 (not start!231068) (not mapNonEmpty!15023) (not b!2357685) (not b_next!71007) (not b!2357683) (not b_next!71005))
(check-sat b_and!185215 b_and!185213 (not b_next!71005) (not b_next!71007))
