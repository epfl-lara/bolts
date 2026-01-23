; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231076 () Bool)

(assert start!231076)

(declare-fun b!2357785 () Bool)

(declare-fun b_free!70317 () Bool)

(declare-fun b_next!71021 () Bool)

(assert (=> b!2357785 (= b_free!70317 (not b_next!71021))))

(declare-fun tp!753768 () Bool)

(declare-fun b_and!185229 () Bool)

(assert (=> b!2357785 (= tp!753768 b_and!185229)))

(declare-fun b!2357791 () Bool)

(declare-fun b_free!70319 () Bool)

(declare-fun b_next!71023 () Bool)

(assert (=> b!2357791 (= b_free!70319 (not b_next!71023))))

(declare-fun tp!753767 () Bool)

(declare-fun b_and!185231 () Bool)

(assert (=> b!2357791 (= tp!753767 b_and!185231)))

(declare-fun b!2357784 () Bool)

(declare-fun e!1505786 () Bool)

(declare-fun e!1505791 () Bool)

(assert (=> b!2357784 (= e!1505786 e!1505791)))

(declare-fun res!1000836 () Bool)

(assert (=> b!2357784 (=> (not res!1000836) (not e!1505791))))

(declare-datatypes ((V!5114 0))(
  ( (V!5115 (val!8153 Int)) )
))
(declare-datatypes ((K!4912 0))(
  ( (K!4913 (val!8154 Int)) )
))
(declare-datatypes ((Hashable!3126 0))(
  ( (HashableExt!3125 (__x!18406 Int)) )
))
(declare-datatypes ((tuple2!27582 0))(
  ( (tuple2!27583 (_1!16332 K!4912) (_2!16332 V!5114)) )
))
(declare-datatypes ((List!27960 0))(
  ( (Nil!27862) (Cons!27862 (h!33263 tuple2!27582) (t!207819 List!27960)) )
))
(declare-datatypes ((array!11277 0))(
  ( (array!11278 (arr!5022 (Array (_ BitVec 32) List!27960)) (size!22046 (_ BitVec 32))) )
))
(declare-datatypes ((array!11279 0))(
  ( (array!11280 (arr!5023 (Array (_ BitVec 32) (_ BitVec 64))) (size!22047 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6432 0))(
  ( (LongMapFixedSize!6433 (defaultEntry!3581 Int) (mask!8100 (_ BitVec 32)) (extraKeys!3464 (_ BitVec 32)) (zeroValue!3474 List!27960) (minValue!3474 List!27960) (_size!6479 (_ BitVec 32)) (_keys!3513 array!11279) (_values!3496 array!11277) (_vacant!3277 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12681 0))(
  ( (Cell!12682 (v!30757 LongMapFixedSize!6432)) )
))
(declare-datatypes ((MutLongMap!3216 0))(
  ( (LongMap!3216 (underlying!6637 Cell!12681)) (MutLongMapExt!3215 (__x!18407 Int)) )
))
(declare-datatypes ((Cell!12683 0))(
  ( (Cell!12684 (v!30758 MutLongMap!3216)) )
))
(declare-datatypes ((MutableMap!3126 0))(
  ( (MutableMapExt!3125 (__x!18408 Int)) (HashMap!3126 (underlying!6638 Cell!12683) (hashF!5049 Hashable!3126) (_size!6480 (_ BitVec 32)) (defaultValue!3288 Int)) )
))
(declare-fun thiss!47746 () MutableMap!3126)

(declare-fun key!7176 () K!4912)

(declare-fun contains!4828 (MutableMap!3126 K!4912) Bool)

(assert (=> b!2357784 (= res!1000836 (contains!4828 thiss!47746 key!7176))))

(declare-fun lt!863172 () V!5114)

(declare-fun apply!6693 (MutableMap!3126 K!4912) V!5114)

(assert (=> b!2357784 (= lt!863172 (apply!6693 thiss!47746 key!7176))))

(declare-fun tp!753770 () Bool)

(declare-fun e!1505789 () Bool)

(declare-fun tp!753769 () Bool)

(declare-fun e!1505792 () Bool)

(declare-fun array_inv!3597 (array!11279) Bool)

(declare-fun array_inv!3598 (array!11277) Bool)

(assert (=> b!2357785 (= e!1505792 (and tp!753768 tp!753769 tp!753770 (array_inv!3597 (_keys!3513 (v!30757 (underlying!6637 (v!30758 (underlying!6638 thiss!47746)))))) (array_inv!3598 (_values!3496 (v!30757 (underlying!6637 (v!30758 (underlying!6638 thiss!47746)))))) e!1505789))))

(declare-fun b!2357786 () Bool)

(declare-fun e!1505787 () Bool)

(assert (=> b!2357786 (= e!1505787 e!1505792)))

(declare-fun mapIsEmpty!15035 () Bool)

(declare-fun mapRes!15035 () Bool)

(assert (=> mapIsEmpty!15035 mapRes!15035))

(declare-fun res!1000835 () Bool)

(assert (=> start!231076 (=> (not res!1000835) (not e!1505786))))

(declare-fun valid!2409 (MutableMap!3126) Bool)

(assert (=> start!231076 (= res!1000835 (valid!2409 thiss!47746))))

(assert (=> start!231076 e!1505786))

(declare-fun e!1505790 () Bool)

(assert (=> start!231076 e!1505790))

(declare-fun tp_is_empty!11129 () Bool)

(assert (=> start!231076 tp_is_empty!11129))

(declare-fun mapNonEmpty!15035 () Bool)

(declare-fun tp!753771 () Bool)

(declare-fun tp!753765 () Bool)

(assert (=> mapNonEmpty!15035 (= mapRes!15035 (and tp!753771 tp!753765))))

(declare-fun mapKey!15035 () (_ BitVec 32))

(declare-fun mapValue!15035 () List!27960)

(declare-fun mapRest!15035 () (Array (_ BitVec 32) List!27960))

(assert (=> mapNonEmpty!15035 (= (arr!5022 (_values!3496 (v!30757 (underlying!6637 (v!30758 (underlying!6638 thiss!47746)))))) (store mapRest!15035 mapKey!15035 mapValue!15035))))

(declare-fun b!2357787 () Bool)

(declare-fun tp!753766 () Bool)

(assert (=> b!2357787 (= e!1505789 (and tp!753766 mapRes!15035))))

(declare-fun condMapEmpty!15035 () Bool)

(declare-fun mapDefault!15035 () List!27960)

(assert (=> b!2357787 (= condMapEmpty!15035 (= (arr!5022 (_values!3496 (v!30757 (underlying!6637 (v!30758 (underlying!6638 thiss!47746)))))) ((as const (Array (_ BitVec 32) List!27960)) mapDefault!15035)))))

(declare-fun b!2357788 () Bool)

(assert (=> b!2357788 (= e!1505791 false)))

(declare-datatypes ((Option!5428 0))(
  ( (None!5427) (Some!5427 (v!30759 V!5114)) )
))
(declare-fun lt!863171 () Option!5428)

(declare-fun getValueByKey!105 (List!27960 K!4912) Option!5428)

(declare-datatypes ((ListMap!893 0))(
  ( (ListMap!894 (toList!1414 List!27960)) )
))
(declare-fun abstractMap!84 (MutableMap!3126) ListMap!893)

(assert (=> b!2357788 (= lt!863171 (getValueByKey!105 (toList!1414 (abstractMap!84 thiss!47746)) key!7176))))

(declare-fun b!2357789 () Bool)

(declare-fun e!1505794 () Bool)

(assert (=> b!2357789 (= e!1505794 e!1505787)))

(declare-fun b!2357790 () Bool)

(declare-fun e!1505793 () Bool)

(declare-fun lt!863173 () MutLongMap!3216)

(get-info :version)

(assert (=> b!2357790 (= e!1505793 (and e!1505794 ((_ is LongMap!3216) lt!863173)))))

(assert (=> b!2357790 (= lt!863173 (v!30758 (underlying!6638 thiss!47746)))))

(assert (=> b!2357791 (= e!1505790 (and e!1505793 tp!753767))))

(declare-fun b!2357792 () Bool)

(declare-fun res!1000837 () Bool)

(assert (=> b!2357792 (=> (not res!1000837) (not e!1505786))))

(assert (=> b!2357792 (= res!1000837 ((_ is MutableMapExt!3125) thiss!47746))))

(assert (= (and start!231076 res!1000835) b!2357792))

(assert (= (and b!2357792 res!1000837) b!2357784))

(assert (= (and b!2357784 res!1000836) b!2357788))

(assert (= (and b!2357787 condMapEmpty!15035) mapIsEmpty!15035))

(assert (= (and b!2357787 (not condMapEmpty!15035)) mapNonEmpty!15035))

(assert (= b!2357785 b!2357787))

(assert (= b!2357786 b!2357785))

(assert (= b!2357789 b!2357786))

(assert (= (and b!2357790 ((_ is LongMap!3216) (v!30758 (underlying!6638 thiss!47746)))) b!2357789))

(assert (= b!2357791 b!2357790))

(assert (= (and start!231076 ((_ is HashMap!3126) thiss!47746)) b!2357791))

(declare-fun m!2770675 () Bool)

(assert (=> b!2357785 m!2770675))

(declare-fun m!2770677 () Bool)

(assert (=> b!2357785 m!2770677))

(declare-fun m!2770679 () Bool)

(assert (=> start!231076 m!2770679))

(declare-fun m!2770681 () Bool)

(assert (=> b!2357788 m!2770681))

(declare-fun m!2770683 () Bool)

(assert (=> b!2357788 m!2770683))

(declare-fun m!2770685 () Bool)

(assert (=> b!2357784 m!2770685))

(declare-fun m!2770687 () Bool)

(assert (=> b!2357784 m!2770687))

(declare-fun m!2770689 () Bool)

(assert (=> mapNonEmpty!15035 m!2770689))

(check-sat (not b_next!71021) (not b!2357784) (not start!231076) b_and!185231 (not mapNonEmpty!15035) b_and!185229 (not b!2357787) tp_is_empty!11129 (not b_next!71023) (not b!2357785) (not b!2357788))
(check-sat b_and!185231 b_and!185229 (not b_next!71021) (not b_next!71023))
