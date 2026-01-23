; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488192 () Bool)

(assert start!488192)

(declare-fun b!4769806 () Bool)

(declare-fun b_free!129779 () Bool)

(declare-fun b_next!130569 () Bool)

(assert (=> b!4769806 (= b_free!129779 (not b_next!130569))))

(declare-fun tp!1356324 () Bool)

(declare-fun b_and!341517 () Bool)

(assert (=> b!4769806 (= tp!1356324 b_and!341517)))

(declare-fun b!4769811 () Bool)

(declare-fun b_free!129781 () Bool)

(declare-fun b_next!130571 () Bool)

(assert (=> b!4769811 (= b_free!129781 (not b_next!130571))))

(declare-fun tp!1356321 () Bool)

(declare-fun b_and!341519 () Bool)

(assert (=> b!4769811 (= tp!1356321 b_and!341519)))

(declare-fun b!4769802 () Bool)

(declare-fun e!2977485 () Bool)

(declare-fun tp!1356325 () Bool)

(declare-fun mapRes!21982 () Bool)

(assert (=> b!4769802 (= e!2977485 (and tp!1356325 mapRes!21982))))

(declare-fun condMapEmpty!21982 () Bool)

(declare-datatypes ((K!15039 0))(
  ( (K!15040 (val!20337 Int)) )
))
(declare-datatypes ((V!15285 0))(
  ( (V!15286 (val!20338 Int)) )
))
(declare-datatypes ((tuple2!55648 0))(
  ( (tuple2!55649 (_1!31118 K!15039) (_2!31118 V!15285)) )
))
(declare-datatypes ((array!18168 0))(
  ( (array!18169 (arr!8103 (Array (_ BitVec 32) (_ BitVec 64))) (size!36333 (_ BitVec 32))) )
))
(declare-datatypes ((List!53670 0))(
  ( (Nil!53546) (Cons!53546 (h!59958 tuple2!55648) (t!361110 List!53670)) )
))
(declare-datatypes ((array!18170 0))(
  ( (array!18171 (arr!8104 (Array (_ BitVec 32) List!53670)) (size!36334 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6620 0))(
  ( (HashableExt!6619 (__x!32625 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9918 0))(
  ( (LongMapFixedSize!9919 (defaultEntry!5377 Int) (mask!14734 (_ BitVec 32)) (extraKeys!5234 (_ BitVec 32)) (zeroValue!5247 List!53670) (minValue!5247 List!53670) (_size!9943 (_ BitVec 32)) (_keys!5301 array!18168) (_values!5272 array!18170) (_vacant!5024 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19601 0))(
  ( (Cell!19602 (v!47814 LongMapFixedSize!9918)) )
))
(declare-datatypes ((MutLongMap!4959 0))(
  ( (LongMap!4959 (underlying!10125 Cell!19601)) (MutLongMapExt!4958 (__x!32626 Int)) )
))
(declare-datatypes ((Cell!19603 0))(
  ( (Cell!19604 (v!47815 MutLongMap!4959)) )
))
(declare-datatypes ((MutableMap!4843 0))(
  ( (MutableMapExt!4842 (__x!32627 Int)) (HashMap!4843 (underlying!10126 Cell!19603) (hashF!12511 Hashable!6620) (_size!9944 (_ BitVec 32)) (defaultValue!5014 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4843)

(declare-fun mapDefault!21982 () List!53670)

(assert (=> b!4769802 (= condMapEmpty!21982 (= (arr!8104 (_values!5272 (v!47814 (underlying!10125 (v!47815 (underlying!10126 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53670)) mapDefault!21982)))))

(declare-fun res!2022978 () Bool)

(declare-fun e!2977484 () Bool)

(assert (=> start!488192 (=> (not res!2022978) (not e!2977484))))

(get-info :version)

(assert (=> start!488192 (= res!2022978 ((_ is HashMap!4843) thiss!42052))))

(assert (=> start!488192 e!2977484))

(declare-fun e!2977483 () Bool)

(assert (=> start!488192 e!2977483))

(declare-fun tp_is_empty!32527 () Bool)

(assert (=> start!488192 tp_is_empty!32527))

(declare-fun b!4769803 () Bool)

(declare-fun e!2977479 () Bool)

(declare-fun e!2977487 () Bool)

(assert (=> b!4769803 (= e!2977479 e!2977487)))

(declare-fun b!4769804 () Bool)

(declare-fun res!2022977 () Bool)

(assert (=> b!4769804 (=> (not res!2022977) (not e!2977484))))

(declare-fun key!1776 () K!15039)

(declare-fun contains!16909 (MutableMap!4843 K!15039) Bool)

(assert (=> b!4769804 (= res!2022977 (contains!16909 thiss!42052 key!1776))))

(declare-fun mapIsEmpty!21982 () Bool)

(assert (=> mapIsEmpty!21982 mapRes!21982))

(declare-fun mapNonEmpty!21982 () Bool)

(declare-fun tp!1356322 () Bool)

(declare-fun tp!1356323 () Bool)

(assert (=> mapNonEmpty!21982 (= mapRes!21982 (and tp!1356322 tp!1356323))))

(declare-fun mapRest!21982 () (Array (_ BitVec 32) List!53670))

(declare-fun mapValue!21982 () List!53670)

(declare-fun mapKey!21982 () (_ BitVec 32))

(assert (=> mapNonEmpty!21982 (= (arr!8104 (_values!5272 (v!47814 (underlying!10125 (v!47815 (underlying!10126 thiss!42052)))))) (store mapRest!21982 mapKey!21982 mapValue!21982))))

(declare-fun b!4769805 () Bool)

(declare-datatypes ((Unit!138392 0))(
  ( (Unit!138393) )
))
(declare-fun e!2977481 () Unit!138392)

(declare-fun Unit!138394 () Unit!138392)

(assert (=> b!4769805 (= e!2977481 Unit!138394)))

(declare-fun lt!1932433 () Unit!138392)

(declare-datatypes ((tuple2!55650 0))(
  ( (tuple2!55651 (_1!31119 (_ BitVec 64)) (_2!31119 List!53670)) )
))
(declare-datatypes ((List!53671 0))(
  ( (Nil!53547) (Cons!53547 (h!59959 tuple2!55650) (t!361111 List!53671)) )
))
(declare-datatypes ((ListLongMap!4741 0))(
  ( (ListLongMap!4742 (toList!6331 List!53671)) )
))
(declare-fun lt!1932434 () ListLongMap!4741)

(declare-fun lt!1932428 () (_ BitVec 64))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2009 (List!53671 (_ BitVec 64)) Unit!138392)

(assert (=> b!4769805 (= lt!1932433 (lemmaContainsKeyImpliesGetValueByKeyDefined!2009 (toList!6331 lt!1932434) lt!1932428))))

(declare-datatypes ((Option!12722 0))(
  ( (None!12721) (Some!12721 (v!47816 List!53670)) )
))
(declare-fun isDefined!9871 (Option!12722) Bool)

(declare-fun getValueByKey!2213 (List!53671 (_ BitVec 64)) Option!12722)

(assert (=> b!4769805 (isDefined!9871 (getValueByKey!2213 (toList!6331 lt!1932434) lt!1932428))))

(declare-fun lt!1932427 () List!53670)

(declare-fun lt!1932425 () Unit!138392)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!948 (List!53671 (_ BitVec 64) List!53670) Unit!138392)

(assert (=> b!4769805 (= lt!1932425 (lemmaGetValueByKeyImpliesContainsTuple!948 (toList!6331 lt!1932434) lt!1932428 lt!1932427))))

(assert (=> b!4769805 false))

(declare-fun tp!1356326 () Bool)

(declare-fun tp!1356320 () Bool)

(declare-fun array_inv!5837 (array!18168) Bool)

(declare-fun array_inv!5838 (array!18170) Bool)

(assert (=> b!4769806 (= e!2977487 (and tp!1356324 tp!1356320 tp!1356326 (array_inv!5837 (_keys!5301 (v!47814 (underlying!10125 (v!47815 (underlying!10126 thiss!42052)))))) (array_inv!5838 (_values!5272 (v!47814 (underlying!10125 (v!47815 (underlying!10126 thiss!42052)))))) e!2977485))))

(declare-fun b!4769807 () Bool)

(assert (=> b!4769807 (= e!2977484 false)))

(declare-datatypes ((Option!12723 0))(
  ( (None!12722) (Some!12722 (v!47817 tuple2!55648)) )
))
(declare-fun lt!1932432 () Option!12723)

(declare-fun getPair!657 (List!53670 K!15039) Option!12723)

(assert (=> b!4769807 (= lt!1932432 (getPair!657 lt!1932427 key!1776))))

(declare-fun lt!1932430 () tuple2!55650)

(declare-fun lambda!224793 () Int)

(declare-fun lt!1932429 () Unit!138392)

(declare-fun forallContained!3876 (List!53671 Int tuple2!55650) Unit!138392)

(assert (=> b!4769807 (= lt!1932429 (forallContained!3876 (toList!6331 lt!1932434) lambda!224793 lt!1932430))))

(declare-fun lt!1932426 () Unit!138392)

(assert (=> b!4769807 (= lt!1932426 e!2977481)))

(declare-fun c!813584 () Bool)

(declare-fun contains!16910 (List!53671 tuple2!55650) Bool)

(assert (=> b!4769807 (= c!813584 (not (contains!16910 (toList!6331 lt!1932434) lt!1932430)))))

(assert (=> b!4769807 (= lt!1932430 (tuple2!55651 lt!1932428 lt!1932427))))

(declare-fun apply!12664 (MutLongMap!4959 (_ BitVec 64)) List!53670)

(assert (=> b!4769807 (= lt!1932427 (apply!12664 (v!47815 (underlying!10126 thiss!42052)) lt!1932428))))

(declare-fun map!12041 (MutLongMap!4959) ListLongMap!4741)

(assert (=> b!4769807 (= lt!1932434 (map!12041 (v!47815 (underlying!10126 thiss!42052))))))

(declare-fun hash!4596 (Hashable!6620 K!15039) (_ BitVec 64))

(assert (=> b!4769807 (= lt!1932428 (hash!4596 (hashF!12511 thiss!42052) key!1776))))

(declare-fun b!4769808 () Bool)

(declare-fun e!2977480 () Bool)

(declare-fun e!2977482 () Bool)

(declare-fun lt!1932431 () MutLongMap!4959)

(assert (=> b!4769808 (= e!2977480 (and e!2977482 ((_ is LongMap!4959) lt!1932431)))))

(assert (=> b!4769808 (= lt!1932431 (v!47815 (underlying!10126 thiss!42052)))))

(declare-fun b!4769809 () Bool)

(declare-fun Unit!138395 () Unit!138392)

(assert (=> b!4769809 (= e!2977481 Unit!138395)))

(declare-fun b!4769810 () Bool)

(assert (=> b!4769810 (= e!2977482 e!2977479)))

(assert (=> b!4769811 (= e!2977483 (and e!2977480 tp!1356321))))

(declare-fun b!4769812 () Bool)

(declare-fun res!2022976 () Bool)

(assert (=> b!4769812 (=> (not res!2022976) (not e!2977484))))

(declare-fun valid!3966 (MutableMap!4843) Bool)

(assert (=> b!4769812 (= res!2022976 (valid!3966 thiss!42052))))

(assert (= (and start!488192 res!2022978) b!4769812))

(assert (= (and b!4769812 res!2022976) b!4769804))

(assert (= (and b!4769804 res!2022977) b!4769807))

(assert (= (and b!4769807 c!813584) b!4769805))

(assert (= (and b!4769807 (not c!813584)) b!4769809))

(assert (= (and b!4769802 condMapEmpty!21982) mapIsEmpty!21982))

(assert (= (and b!4769802 (not condMapEmpty!21982)) mapNonEmpty!21982))

(assert (= b!4769806 b!4769802))

(assert (= b!4769803 b!4769806))

(assert (= b!4769810 b!4769803))

(assert (= (and b!4769808 ((_ is LongMap!4959) (v!47815 (underlying!10126 thiss!42052)))) b!4769810))

(assert (= b!4769811 b!4769808))

(assert (= (and start!488192 ((_ is HashMap!4843) thiss!42052)) b!4769811))

(declare-fun m!5741420 () Bool)

(assert (=> b!4769806 m!5741420))

(declare-fun m!5741422 () Bool)

(assert (=> b!4769806 m!5741422))

(declare-fun m!5741424 () Bool)

(assert (=> b!4769812 m!5741424))

(declare-fun m!5741426 () Bool)

(assert (=> b!4769804 m!5741426))

(declare-fun m!5741428 () Bool)

(assert (=> b!4769805 m!5741428))

(declare-fun m!5741430 () Bool)

(assert (=> b!4769805 m!5741430))

(assert (=> b!4769805 m!5741430))

(declare-fun m!5741432 () Bool)

(assert (=> b!4769805 m!5741432))

(declare-fun m!5741434 () Bool)

(assert (=> b!4769805 m!5741434))

(declare-fun m!5741436 () Bool)

(assert (=> b!4769807 m!5741436))

(declare-fun m!5741438 () Bool)

(assert (=> b!4769807 m!5741438))

(declare-fun m!5741440 () Bool)

(assert (=> b!4769807 m!5741440))

(declare-fun m!5741442 () Bool)

(assert (=> b!4769807 m!5741442))

(declare-fun m!5741444 () Bool)

(assert (=> b!4769807 m!5741444))

(declare-fun m!5741446 () Bool)

(assert (=> b!4769807 m!5741446))

(declare-fun m!5741448 () Bool)

(assert (=> mapNonEmpty!21982 m!5741448))

(check-sat b_and!341517 (not b_next!130569) (not b!4769805) (not b!4769802) (not b!4769804) b_and!341519 (not b_next!130571) (not b!4769806) (not b!4769812) tp_is_empty!32527 (not b!4769807) (not mapNonEmpty!21982))
(check-sat b_and!341519 b_and!341517 (not b_next!130571) (not b_next!130569))
