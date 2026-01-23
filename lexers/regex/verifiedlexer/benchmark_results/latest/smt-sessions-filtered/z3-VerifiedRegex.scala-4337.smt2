; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231084 () Bool)

(assert start!231084)

(declare-fun b!2357883 () Bool)

(declare-fun b_free!70333 () Bool)

(declare-fun b_next!71037 () Bool)

(assert (=> b!2357883 (= b_free!70333 (not b_next!71037))))

(declare-fun tp!753855 () Bool)

(declare-fun b_and!185245 () Bool)

(assert (=> b!2357883 (= tp!753855 b_and!185245)))

(declare-fun b!2357887 () Bool)

(declare-fun b_free!70335 () Bool)

(declare-fun b_next!71039 () Bool)

(assert (=> b!2357887 (= b_free!70335 (not b_next!71039))))

(declare-fun tp!753850 () Bool)

(declare-fun b_and!185247 () Bool)

(assert (=> b!2357887 (= tp!753850 b_and!185247)))

(declare-fun mapIsEmpty!15047 () Bool)

(declare-fun mapRes!15047 () Bool)

(assert (=> mapIsEmpty!15047 mapRes!15047))

(declare-fun b!2357881 () Bool)

(declare-fun e!1505889 () Bool)

(declare-fun tp!753849 () Bool)

(assert (=> b!2357881 (= e!1505889 (and tp!753849 mapRes!15047))))

(declare-fun condMapEmpty!15047 () Bool)

(declare-datatypes ((V!5124 0))(
  ( (V!5125 (val!8161 Int)) )
))
(declare-datatypes ((K!4922 0))(
  ( (K!4923 (val!8162 Int)) )
))
(declare-datatypes ((Hashable!3130 0))(
  ( (HashableExt!3129 (__x!18418 Int)) )
))
(declare-datatypes ((tuple2!27590 0))(
  ( (tuple2!27591 (_1!16336 K!4922) (_2!16336 V!5124)) )
))
(declare-datatypes ((List!27964 0))(
  ( (Nil!27866) (Cons!27866 (h!33267 tuple2!27590) (t!207823 List!27964)) )
))
(declare-datatypes ((array!11293 0))(
  ( (array!11294 (arr!5030 (Array (_ BitVec 32) List!27964)) (size!22054 (_ BitVec 32))) )
))
(declare-datatypes ((array!11295 0))(
  ( (array!11296 (arr!5031 (Array (_ BitVec 32) (_ BitVec 64))) (size!22055 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6440 0))(
  ( (LongMapFixedSize!6441 (defaultEntry!3585 Int) (mask!8106 (_ BitVec 32)) (extraKeys!3468 (_ BitVec 32)) (zeroValue!3478 List!27964) (minValue!3478 List!27964) (_size!6487 (_ BitVec 32)) (_keys!3517 array!11295) (_values!3500 array!11293) (_vacant!3281 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12697 0))(
  ( (Cell!12698 (v!30766 LongMapFixedSize!6440)) )
))
(declare-datatypes ((MutLongMap!3220 0))(
  ( (LongMap!3220 (underlying!6645 Cell!12697)) (MutLongMapExt!3219 (__x!18419 Int)) )
))
(declare-datatypes ((Cell!12699 0))(
  ( (Cell!12700 (v!30767 MutLongMap!3220)) )
))
(declare-datatypes ((MutableMap!3130 0))(
  ( (MutableMapExt!3129 (__x!18420 Int)) (HashMap!3130 (underlying!6646 Cell!12699) (hashF!5053 Hashable!3130) (_size!6488 (_ BitVec 32)) (defaultValue!3292 Int)) )
))
(declare-fun thiss!47746 () MutableMap!3130)

(declare-fun mapDefault!15047 () List!27964)

(assert (=> b!2357881 (= condMapEmpty!15047 (= (arr!5030 (_values!3500 (v!30766 (underlying!6645 (v!30767 (underlying!6646 thiss!47746)))))) ((as const (Array (_ BitVec 32) List!27964)) mapDefault!15047)))))

(declare-fun b!2357882 () Bool)

(declare-fun e!1505885 () Bool)

(declare-fun e!1505888 () Bool)

(declare-fun lt!863202 () MutLongMap!3220)

(get-info :version)

(assert (=> b!2357882 (= e!1505885 (and e!1505888 ((_ is LongMap!3220) lt!863202)))))

(assert (=> b!2357882 (= lt!863202 (v!30767 (underlying!6646 thiss!47746)))))

(declare-fun mapNonEmpty!15047 () Bool)

(declare-fun tp!753853 () Bool)

(declare-fun tp!753852 () Bool)

(assert (=> mapNonEmpty!15047 (= mapRes!15047 (and tp!753853 tp!753852))))

(declare-fun mapKey!15047 () (_ BitVec 32))

(declare-fun mapValue!15047 () List!27964)

(declare-fun mapRest!15047 () (Array (_ BitVec 32) List!27964))

(assert (=> mapNonEmpty!15047 (= (arr!5030 (_values!3500 (v!30766 (underlying!6645 (v!30767 (underlying!6646 thiss!47746)))))) (store mapRest!15047 mapKey!15047 mapValue!15047))))

(declare-fun b!2357884 () Bool)

(declare-fun e!1505886 () Bool)

(assert (=> b!2357884 (= e!1505886 false)))

(declare-fun lt!863201 () Bool)

(declare-fun key!7176 () K!4922)

(declare-fun contains!4829 (MutableMap!3130 K!4922) Bool)

(assert (=> b!2357884 (= lt!863201 (contains!4829 thiss!47746 key!7176))))

(declare-fun lt!863203 () V!5124)

(declare-fun apply!6696 (MutableMap!3130 K!4922) V!5124)

(assert (=> b!2357884 (= lt!863203 (apply!6696 thiss!47746 key!7176))))

(declare-fun b!2357885 () Bool)

(declare-fun e!1505883 () Bool)

(assert (=> b!2357885 (= e!1505888 e!1505883)))

(declare-fun b!2357886 () Bool)

(declare-fun res!1000860 () Bool)

(assert (=> b!2357886 (=> (not res!1000860) (not e!1505886))))

(assert (=> b!2357886 (= res!1000860 (not ((_ is MutableMapExt!3129) thiss!47746)))))

(declare-fun tp!753851 () Bool)

(declare-fun e!1505890 () Bool)

(declare-fun tp!753854 () Bool)

(declare-fun array_inv!3605 (array!11295) Bool)

(declare-fun array_inv!3606 (array!11293) Bool)

(assert (=> b!2357883 (= e!1505890 (and tp!753855 tp!753851 tp!753854 (array_inv!3605 (_keys!3517 (v!30766 (underlying!6645 (v!30767 (underlying!6646 thiss!47746)))))) (array_inv!3606 (_values!3500 (v!30766 (underlying!6645 (v!30767 (underlying!6646 thiss!47746)))))) e!1505889))))

(declare-fun res!1000861 () Bool)

(assert (=> start!231084 (=> (not res!1000861) (not e!1505886))))

(declare-fun valid!2411 (MutableMap!3130) Bool)

(assert (=> start!231084 (= res!1000861 (valid!2411 thiss!47746))))

(assert (=> start!231084 e!1505886))

(declare-fun e!1505884 () Bool)

(assert (=> start!231084 e!1505884))

(declare-fun tp_is_empty!11137 () Bool)

(assert (=> start!231084 tp_is_empty!11137))

(assert (=> b!2357887 (= e!1505884 (and e!1505885 tp!753850))))

(declare-fun b!2357888 () Bool)

(assert (=> b!2357888 (= e!1505883 e!1505890)))

(assert (= (and start!231084 res!1000861) b!2357886))

(assert (= (and b!2357886 res!1000860) b!2357884))

(assert (= (and b!2357881 condMapEmpty!15047) mapIsEmpty!15047))

(assert (= (and b!2357881 (not condMapEmpty!15047)) mapNonEmpty!15047))

(assert (= b!2357883 b!2357881))

(assert (= b!2357888 b!2357883))

(assert (= b!2357885 b!2357888))

(assert (= (and b!2357882 ((_ is LongMap!3220) (v!30767 (underlying!6646 thiss!47746)))) b!2357885))

(assert (= b!2357887 b!2357882))

(assert (= (and start!231084 ((_ is HashMap!3130) thiss!47746)) b!2357887))

(declare-fun m!2770723 () Bool)

(assert (=> mapNonEmpty!15047 m!2770723))

(declare-fun m!2770725 () Bool)

(assert (=> b!2357884 m!2770725))

(declare-fun m!2770727 () Bool)

(assert (=> b!2357884 m!2770727))

(declare-fun m!2770729 () Bool)

(assert (=> b!2357883 m!2770729))

(declare-fun m!2770731 () Bool)

(assert (=> b!2357883 m!2770731))

(declare-fun m!2770733 () Bool)

(assert (=> start!231084 m!2770733))

(check-sat b_and!185245 (not b_next!71039) (not b_next!71037) (not start!231084) b_and!185247 tp_is_empty!11137 (not b!2357881) (not mapNonEmpty!15047) (not b!2357884) (not b!2357883))
(check-sat b_and!185247 b_and!185245 (not b_next!71037) (not b_next!71039))
