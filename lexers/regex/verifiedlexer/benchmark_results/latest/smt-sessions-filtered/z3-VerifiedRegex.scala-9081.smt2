; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486560 () Bool)

(assert start!486560)

(declare-fun b!4757855 () Bool)

(declare-fun b_free!129199 () Bool)

(declare-fun b_next!129903 () Bool)

(assert (=> b!4757855 (= b_free!129199 (not b_next!129903))))

(declare-fun tp!1351695 () Bool)

(declare-fun b_and!340803 () Bool)

(assert (=> b!4757855 (= tp!1351695 b_and!340803)))

(declare-fun b!4757863 () Bool)

(declare-fun b_free!129201 () Bool)

(declare-fun b_next!129905 () Bool)

(assert (=> b!4757863 (= b_free!129201 (not b_next!129905))))

(declare-fun tp!1351700 () Bool)

(declare-fun b_and!340805 () Bool)

(assert (=> b!4757863 (= tp!1351700 b_and!340805)))

(declare-fun tp!1351692 () Bool)

(declare-fun e!2968454 () Bool)

(declare-fun e!2968447 () Bool)

(declare-fun tp!1351698 () Bool)

(declare-datatypes ((C!26236 0))(
  ( (C!26237 (val!20106 Int)) )
))
(declare-datatypes ((Regex!13019 0))(
  ( (ElementMatch!13019 (c!811867 C!26236)) (Concat!21338 (regOne!26550 Regex!13019) (regTwo!26550 Regex!13019)) (EmptyExpr!13019) (Star!13019 (reg!13348 Regex!13019)) (EmptyLang!13019) (Union!13019 (regOne!26551 Regex!13019) (regTwo!26551 Regex!13019)) )
))
(declare-datatypes ((List!53363 0))(
  ( (Nil!53239) (Cons!53239 (h!59650 Regex!13019) (t!360713 List!53363)) )
))
(declare-datatypes ((Context!5818 0))(
  ( (Context!5819 (exprs!3409 List!53363)) )
))
(declare-datatypes ((array!17544 0))(
  ( (array!17545 (arr!7827 (Array (_ BitVec 32) (_ BitVec 64))) (size!36029 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6482 0))(
  ( (HashableExt!6481 (__x!32211 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55132 0))(
  ( (tuple2!55133 (_1!30860 (InoxSet Context!5818)) (_2!30860 Int)) )
))
(declare-datatypes ((tuple2!55134 0))(
  ( (tuple2!55135 (_1!30861 tuple2!55132) (_2!30861 Int)) )
))
(declare-datatypes ((List!53364 0))(
  ( (Nil!53240) (Cons!53240 (h!59651 tuple2!55134) (t!360714 List!53364)) )
))
(declare-datatypes ((List!53365 0))(
  ( (Nil!53241) (Cons!53241 (h!59652 C!26236) (t!360715 List!53365)) )
))
(declare-datatypes ((IArray!28981 0))(
  ( (IArray!28982 (innerList!14548 List!53365)) )
))
(declare-datatypes ((Conc!14460 0))(
  ( (Node!14460 (left!39043 Conc!14460) (right!39373 Conc!14460) (csize!29150 Int) (cheight!14671 Int)) (Leaf!23542 (xs!17766 IArray!28981) (csize!29151 Int)) (Empty!14460) )
))
(declare-datatypes ((BalanceConc!28410 0))(
  ( (BalanceConc!28411 (c!811868 Conc!14460)) )
))
(declare-datatypes ((array!17546 0))(
  ( (array!17547 (arr!7828 (Array (_ BitVec 32) List!53364)) (size!36030 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9642 0))(
  ( (LongMapFixedSize!9643 (defaultEntry!5235 Int) (mask!14517 (_ BitVec 32)) (extraKeys!5091 (_ BitVec 32)) (zeroValue!5104 List!53364) (minValue!5104 List!53364) (_size!9667 (_ BitVec 32)) (_keys!5156 array!17544) (_values!5129 array!17546) (_vacant!4886 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19049 0))(
  ( (Cell!19050 (v!47311 LongMapFixedSize!9642)) )
))
(declare-datatypes ((MutLongMap!4821 0))(
  ( (LongMap!4821 (underlying!9849 Cell!19049)) (MutLongMapExt!4820 (__x!32212 Int)) )
))
(declare-datatypes ((Cell!19051 0))(
  ( (Cell!19052 (v!47312 MutLongMap!4821)) )
))
(declare-datatypes ((MutableMap!4705 0))(
  ( (MutableMapExt!4704 (__x!32213 Int)) (HashMap!4705 (underlying!9850 Cell!19051) (hashF!12292 Hashable!6482) (_size!9668 (_ BitVec 32)) (defaultValue!4876 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!608 0))(
  ( (CacheFindLongestMatch!609 (cache!4547 MutableMap!4705) (totalInput!4455 BalanceConc!28410)) )
))
(declare-fun thiss!28972 () CacheFindLongestMatch!608)

(declare-fun array_inv!5633 (array!17544) Bool)

(declare-fun array_inv!5634 (array!17546) Bool)

(assert (=> b!4757855 (= e!2968454 (and tp!1351695 tp!1351692 tp!1351698 (array_inv!5633 (_keys!5156 (v!47311 (underlying!9849 (v!47312 (underlying!9850 (cache!4547 thiss!28972))))))) (array_inv!5634 (_values!5129 (v!47311 (underlying!9849 (v!47312 (underlying!9850 (cache!4547 thiss!28972))))))) e!2968447))))

(declare-fun e!2968453 () Bool)

(declare-fun setRes!26962 () Bool)

(declare-fun setElem!26962 () Context!5818)

(declare-fun setNonEmpty!26962 () Bool)

(declare-fun tp!1351697 () Bool)

(declare-fun inv!68678 (Context!5818) Bool)

(assert (=> setNonEmpty!26962 (= setRes!26962 (and tp!1351697 (inv!68678 setElem!26962) e!2968453))))

(declare-fun z!490 () (InoxSet Context!5818))

(declare-fun setRest!26962 () (InoxSet Context!5818))

(assert (=> setNonEmpty!26962 (= z!490 ((_ map or) (store ((as const (Array Context!5818 Bool)) false) setElem!26962 true) setRest!26962))))

(declare-fun e!2968455 () Bool)

(declare-fun b!4757856 () Bool)

(declare-fun e!2968452 () Bool)

(declare-fun e!2968449 () Bool)

(declare-fun inv!68679 (BalanceConc!28410) Bool)

(assert (=> b!4757856 (= e!2968455 (and e!2968452 (inv!68679 (totalInput!4455 thiss!28972)) e!2968449))))

(declare-fun b!4757857 () Bool)

(declare-fun e!2968450 () Bool)

(assert (=> b!4757857 (= e!2968450 e!2968454)))

(declare-fun b!4757858 () Bool)

(declare-fun tp!1351693 () Bool)

(assert (=> b!4757858 (= e!2968453 tp!1351693)))

(declare-fun mapIsEmpty!21455 () Bool)

(declare-fun mapRes!21455 () Bool)

(assert (=> mapIsEmpty!21455 mapRes!21455))

(declare-fun b!4757859 () Bool)

(declare-fun e!2968456 () Bool)

(declare-fun e!2968457 () Bool)

(declare-fun lt!1923692 () MutLongMap!4821)

(get-info :version)

(assert (=> b!4757859 (= e!2968456 (and e!2968457 ((_ is LongMap!4821) lt!1923692)))))

(assert (=> b!4757859 (= lt!1923692 (v!47312 (underlying!9850 (cache!4547 thiss!28972))))))

(declare-fun b!4757860 () Bool)

(declare-fun tp!1351694 () Bool)

(declare-fun inv!68680 (Conc!14460) Bool)

(assert (=> b!4757860 (= e!2968449 (and (inv!68680 (c!811868 (totalInput!4455 thiss!28972))) tp!1351694))))

(declare-fun res!2018441 () Bool)

(declare-fun e!2968451 () Bool)

(assert (=> start!486560 (=> (not res!2018441) (not e!2968451))))

(declare-fun validCacheMapFindLongestMatch!106 (MutableMap!4705 BalanceConc!28410) Bool)

(assert (=> start!486560 (= res!2018441 (validCacheMapFindLongestMatch!106 (cache!4547 thiss!28972) (totalInput!4455 thiss!28972)))))

(assert (=> start!486560 e!2968451))

(declare-fun inv!68681 (CacheFindLongestMatch!608) Bool)

(assert (=> start!486560 (and (inv!68681 thiss!28972) e!2968455)))

(declare-fun condSetEmpty!26962 () Bool)

(assert (=> start!486560 (= condSetEmpty!26962 (= z!490 ((as const (Array Context!5818 Bool)) false)))))

(assert (=> start!486560 setRes!26962))

(assert (=> start!486560 true))

(declare-fun b!4757861 () Bool)

(assert (=> b!4757861 (= e!2968451 false)))

(declare-fun b!4757862 () Bool)

(declare-fun tp!1351696 () Bool)

(assert (=> b!4757862 (= e!2968447 (and tp!1351696 mapRes!21455))))

(declare-fun condMapEmpty!21455 () Bool)

(declare-fun mapDefault!21455 () List!53364)

(assert (=> b!4757862 (= condMapEmpty!21455 (= (arr!7828 (_values!5129 (v!47311 (underlying!9849 (v!47312 (underlying!9850 (cache!4547 thiss!28972))))))) ((as const (Array (_ BitVec 32) List!53364)) mapDefault!21455)))))

(assert (=> b!4757863 (= e!2968452 (and e!2968456 tp!1351700))))

(declare-fun setIsEmpty!26962 () Bool)

(assert (=> setIsEmpty!26962 setRes!26962))

(declare-fun b!4757864 () Bool)

(declare-fun res!2018440 () Bool)

(assert (=> b!4757864 (=> (not res!2018440) (not e!2968451))))

(declare-fun from!930 () Int)

(declare-fun contains!16616 (MutableMap!4705 tuple2!55132) Bool)

(assert (=> b!4757864 (= res!2018440 (not (contains!16616 (cache!4547 thiss!28972) (tuple2!55133 z!490 from!930))))))

(declare-fun mapNonEmpty!21455 () Bool)

(declare-fun tp!1351699 () Bool)

(declare-fun tp!1351691 () Bool)

(assert (=> mapNonEmpty!21455 (= mapRes!21455 (and tp!1351699 tp!1351691))))

(declare-fun mapKey!21455 () (_ BitVec 32))

(declare-fun mapRest!21455 () (Array (_ BitVec 32) List!53364))

(declare-fun mapValue!21455 () List!53364)

(assert (=> mapNonEmpty!21455 (= (arr!7828 (_values!5129 (v!47311 (underlying!9849 (v!47312 (underlying!9850 (cache!4547 thiss!28972))))))) (store mapRest!21455 mapKey!21455 mapValue!21455))))

(declare-fun b!4757865 () Bool)

(assert (=> b!4757865 (= e!2968457 e!2968450)))

(assert (= (and start!486560 res!2018441) b!4757864))

(assert (= (and b!4757864 res!2018440) b!4757861))

(assert (= (and b!4757862 condMapEmpty!21455) mapIsEmpty!21455))

(assert (= (and b!4757862 (not condMapEmpty!21455)) mapNonEmpty!21455))

(assert (= b!4757855 b!4757862))

(assert (= b!4757857 b!4757855))

(assert (= b!4757865 b!4757857))

(assert (= (and b!4757859 ((_ is LongMap!4821) (v!47312 (underlying!9850 (cache!4547 thiss!28972))))) b!4757865))

(assert (= b!4757863 b!4757859))

(assert (= (and b!4757856 ((_ is HashMap!4705) (cache!4547 thiss!28972))) b!4757863))

(assert (= b!4757856 b!4757860))

(assert (= start!486560 b!4757856))

(assert (= (and start!486560 condSetEmpty!26962) setIsEmpty!26962))

(assert (= (and start!486560 (not condSetEmpty!26962)) setNonEmpty!26962))

(assert (= setNonEmpty!26962 b!4757858))

(declare-fun m!5727514 () Bool)

(assert (=> setNonEmpty!26962 m!5727514))

(declare-fun m!5727516 () Bool)

(assert (=> b!4757864 m!5727516))

(declare-fun m!5727518 () Bool)

(assert (=> b!4757856 m!5727518))

(declare-fun m!5727520 () Bool)

(assert (=> start!486560 m!5727520))

(declare-fun m!5727522 () Bool)

(assert (=> start!486560 m!5727522))

(declare-fun m!5727524 () Bool)

(assert (=> mapNonEmpty!21455 m!5727524))

(declare-fun m!5727526 () Bool)

(assert (=> b!4757855 m!5727526))

(declare-fun m!5727528 () Bool)

(assert (=> b!4757855 m!5727528))

(declare-fun m!5727530 () Bool)

(assert (=> b!4757860 m!5727530))

(check-sat (not start!486560) (not setNonEmpty!26962) (not b!4757864) (not b!4757858) (not b_next!129905) b_and!340805 (not mapNonEmpty!21455) b_and!340803 (not b!4757862) (not b!4757856) (not b_next!129903) (not b!4757855) (not b!4757860))
(check-sat b_and!340805 b_and!340803 (not b_next!129903) (not b_next!129905))
