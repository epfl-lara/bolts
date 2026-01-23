; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486720 () Bool)

(assert start!486720)

(declare-fun b!4759449 () Bool)

(declare-fun b_free!129295 () Bool)

(declare-fun b_next!129999 () Bool)

(assert (=> b!4759449 (= b_free!129295 (not b_next!129999))))

(declare-fun tp!1352769 () Bool)

(declare-fun b_and!340911 () Bool)

(assert (=> b!4759449 (= tp!1352769 b_and!340911)))

(declare-fun b!4759452 () Bool)

(declare-fun b_free!129297 () Bool)

(declare-fun b_next!130001 () Bool)

(assert (=> b!4759452 (= b_free!129297 (not b_next!130001))))

(declare-fun tp!1352766 () Bool)

(declare-fun b_and!340913 () Bool)

(assert (=> b!4759452 (= tp!1352766 b_and!340913)))

(declare-fun b!4759441 () Bool)

(assert (=> b!4759441 true))

(declare-fun e!2969777 () Bool)

(declare-fun e!2969769 () Bool)

(assert (=> b!4759441 (= e!2969777 e!2969769)))

(declare-fun res!2018849 () Bool)

(assert (=> b!4759441 (=> res!2018849 e!2969769)))

(declare-fun from!922 () Int)

(assert (=> b!4759441 (= res!2018849 (< from!922 0))))

(declare-datatypes ((C!26284 0))(
  ( (C!26285 (val!20130 Int)) )
))
(declare-datatypes ((Regex!13043 0))(
  ( (ElementMatch!13043 (c!812013 C!26284)) (Concat!21362 (regOne!26598 Regex!13043) (regTwo!26598 Regex!13043)) (EmptyExpr!13043) (Star!13043 (reg!13372 Regex!13043)) (EmptyLang!13043) (Union!13043 (regOne!26599 Regex!13043) (regTwo!26599 Regex!13043)) )
))
(declare-datatypes ((List!53439 0))(
  ( (Nil!53315) (Cons!53315 (h!59726 Regex!13043) (t!360795 List!53439)) )
))
(declare-datatypes ((Context!5866 0))(
  ( (Context!5867 (exprs!3433 List!53439)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55236 0))(
  ( (tuple2!55237 (_1!30912 (InoxSet Context!5866)) (_2!30912 Int)) )
))
(declare-fun lt!1924332 () tuple2!55236)

(declare-datatypes ((tuple2!55238 0))(
  ( (tuple2!55239 (_1!30913 tuple2!55236) (_2!30913 Int)) )
))
(declare-datatypes ((List!53440 0))(
  ( (Nil!53316) (Cons!53316 (h!59727 tuple2!55238) (t!360796 List!53440)) )
))
(declare-datatypes ((List!53441 0))(
  ( (Nil!53317) (Cons!53317 (h!59728 C!26284) (t!360797 List!53441)) )
))
(declare-datatypes ((IArray!29029 0))(
  ( (IArray!29030 (innerList!14572 List!53441)) )
))
(declare-datatypes ((Conc!14484 0))(
  ( (Node!14484 (left!39107 Conc!14484) (right!39437 Conc!14484) (csize!29198 Int) (cheight!14695 Int)) (Leaf!23578 (xs!17790 IArray!29029) (csize!29199 Int)) (Empty!14484) )
))
(declare-datatypes ((Hashable!6506 0))(
  ( (HashableExt!6505 (__x!32283 Int)) )
))
(declare-datatypes ((array!17652 0))(
  ( (array!17653 (arr!7875 (Array (_ BitVec 32) (_ BitVec 64))) (size!36089 (_ BitVec 32))) )
))
(declare-datatypes ((array!17654 0))(
  ( (array!17655 (arr!7876 (Array (_ BitVec 32) List!53440)) (size!36090 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9690 0))(
  ( (LongMapFixedSize!9691 (defaultEntry!5259 Int) (mask!14553 (_ BitVec 32)) (extraKeys!5115 (_ BitVec 32)) (zeroValue!5128 List!53440) (minValue!5128 List!53440) (_size!9715 (_ BitVec 32)) (_keys!5180 array!17652) (_values!5153 array!17654) (_vacant!4910 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19145 0))(
  ( (Cell!19146 (v!47370 LongMapFixedSize!9690)) )
))
(declare-datatypes ((MutLongMap!4845 0))(
  ( (LongMap!4845 (underlying!9897 Cell!19145)) (MutLongMapExt!4844 (__x!32284 Int)) )
))
(declare-datatypes ((Cell!19147 0))(
  ( (Cell!19148 (v!47371 MutLongMap!4845)) )
))
(declare-datatypes ((MutableMap!4729 0))(
  ( (MutableMapExt!4728 (__x!32285 Int)) (HashMap!4729 (underlying!9898 Cell!19147) (hashF!12316 Hashable!6506) (_size!9716 (_ BitVec 32)) (defaultValue!4900 Int)) )
))
(declare-datatypes ((BalanceConc!28458 0))(
  ( (BalanceConc!28459 (c!812014 Conc!14484)) )
))
(declare-datatypes ((CacheFindLongestMatch!656 0))(
  ( (CacheFindLongestMatch!657 (cache!4571 MutableMap!4729) (totalInput!4488 BalanceConc!28458)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!656)

(declare-fun localTotalInput!8 () BalanceConc!28458)

(declare-fun validCacheMapFindLongestMatchBody!19 (tuple2!55238 BalanceConc!28458) Bool)

(declare-fun apply!12525 (MutableMap!4729 tuple2!55236) Int)

(assert (=> b!4759441 (validCacheMapFindLongestMatchBody!19 (tuple2!55239 lt!1924332 (apply!12525 (cache!4571 thiss!28909) lt!1924332)) localTotalInput!8)))

(declare-fun lambda!223685 () Int)

(declare-datatypes ((Unit!137782 0))(
  ( (Unit!137783) )
))
(declare-fun lt!1924331 () Unit!137782)

(declare-fun lemmaForallPairsThenForLookup!66 (MutableMap!4729 tuple2!55236 Int) Unit!137782)

(assert (=> b!4759441 (= lt!1924331 (lemmaForallPairsThenForLookup!66 (cache!4571 thiss!28909) lt!1924332 lambda!223685))))

(declare-fun res!2018851 () Bool)

(declare-fun e!2969779 () Bool)

(assert (=> start!486720 (=> (not res!2018851) (not e!2969779))))

(assert (=> start!486720 (= res!2018851 (= localTotalInput!8 (totalInput!4488 thiss!28909)))))

(assert (=> start!486720 e!2969779))

(declare-fun e!2969773 () Bool)

(declare-fun inv!68807 (BalanceConc!28458) Bool)

(assert (=> start!486720 (and (inv!68807 localTotalInput!8) e!2969773)))

(declare-fun e!2969778 () Bool)

(declare-fun inv!68808 (CacheFindLongestMatch!656) Bool)

(assert (=> start!486720 (and (inv!68808 thiss!28909) e!2969778)))

(assert (=> start!486720 true))

(declare-fun condSetEmpty!27097 () Bool)

(declare-fun z!482 () (InoxSet Context!5866))

(assert (=> start!486720 (= condSetEmpty!27097 (= z!482 ((as const (Array Context!5866 Bool)) false)))))

(declare-fun setRes!27097 () Bool)

(assert (=> start!486720 setRes!27097))

(declare-fun b!4759442 () Bool)

(declare-fun e!2969772 () Bool)

(declare-fun e!2969774 () Bool)

(assert (=> b!4759442 (= e!2969772 e!2969774)))

(declare-fun b!4759443 () Bool)

(declare-fun e!2969770 () Bool)

(declare-fun lt!1924333 () MutLongMap!4845)

(get-info :version)

(assert (=> b!4759443 (= e!2969770 (and e!2969772 ((_ is LongMap!4845) lt!1924333)))))

(assert (=> b!4759443 (= lt!1924333 (v!47371 (underlying!9898 (cache!4571 thiss!28909))))))

(declare-fun b!4759444 () Bool)

(assert (=> b!4759444 (= e!2969769 true)))

(declare-fun lt!1924334 () Int)

(declare-fun size!36091 (BalanceConc!28458) Int)

(assert (=> b!4759444 (= lt!1924334 (size!36091 (totalInput!4488 thiss!28909)))))

(declare-fun b!4759445 () Bool)

(assert (=> b!4759445 (= e!2969779 (not e!2969777))))

(declare-fun res!2018852 () Bool)

(assert (=> b!4759445 (=> res!2018852 e!2969777)))

(declare-fun contains!16640 (MutableMap!4729 tuple2!55236) Bool)

(assert (=> b!4759445 (= res!2018852 (not (contains!16640 (cache!4571 thiss!28909) lt!1924332)))))

(assert (=> b!4759445 (= lt!1924332 (tuple2!55237 z!482 from!922))))

(declare-fun validCacheMapFindLongestMatch!127 (MutableMap!4729 BalanceConc!28458) Bool)

(assert (=> b!4759445 (validCacheMapFindLongestMatch!127 (cache!4571 thiss!28909) localTotalInput!8)))

(declare-fun e!2969766 () Bool)

(declare-fun setElem!27097 () Context!5866)

(declare-fun tp!1352765 () Bool)

(declare-fun setNonEmpty!27097 () Bool)

(declare-fun inv!68809 (Context!5866) Bool)

(assert (=> setNonEmpty!27097 (= setRes!27097 (and tp!1352765 (inv!68809 setElem!27097) e!2969766))))

(declare-fun setRest!27097 () (InoxSet Context!5866))

(assert (=> setNonEmpty!27097 (= z!482 ((_ map or) (store ((as const (Array Context!5866 Bool)) false) setElem!27097 true) setRest!27097))))

(declare-fun b!4759446 () Bool)

(declare-fun res!2018848 () Bool)

(assert (=> b!4759446 (=> (not res!2018848) (not e!2969779))))

(assert (=> b!4759446 (= res!2018848 (validCacheMapFindLongestMatch!127 (cache!4571 thiss!28909) (totalInput!4488 thiss!28909)))))

(declare-fun b!4759447 () Bool)

(declare-fun e!2969767 () Bool)

(assert (=> b!4759447 (= e!2969774 e!2969767)))

(declare-fun b!4759448 () Bool)

(declare-fun res!2018850 () Bool)

(assert (=> b!4759448 (=> res!2018850 e!2969769)))

(assert (=> b!4759448 (= res!2018850 (> from!922 (size!36091 localTotalInput!8)))))

(declare-fun e!2969775 () Bool)

(assert (=> b!4759449 (= e!2969775 (and e!2969770 tp!1352769))))

(declare-fun b!4759450 () Bool)

(declare-fun e!2969776 () Bool)

(declare-fun tp!1352767 () Bool)

(declare-fun inv!68810 (Conc!14484) Bool)

(assert (=> b!4759450 (= e!2969776 (and (inv!68810 (c!812014 (totalInput!4488 thiss!28909))) tp!1352767))))

(declare-fun b!4759451 () Bool)

(declare-fun tp!1352763 () Bool)

(assert (=> b!4759451 (= e!2969766 tp!1352763)))

(declare-fun tp!1352770 () Bool)

(declare-fun e!2969768 () Bool)

(declare-fun tp!1352768 () Bool)

(declare-fun array_inv!5665 (array!17652) Bool)

(declare-fun array_inv!5666 (array!17654) Bool)

(assert (=> b!4759452 (= e!2969767 (and tp!1352766 tp!1352768 tp!1352770 (array_inv!5665 (_keys!5180 (v!47370 (underlying!9897 (v!47371 (underlying!9898 (cache!4571 thiss!28909))))))) (array_inv!5666 (_values!5153 (v!47370 (underlying!9897 (v!47371 (underlying!9898 (cache!4571 thiss!28909))))))) e!2969768))))

(declare-fun b!4759453 () Bool)

(assert (=> b!4759453 (= e!2969778 (and e!2969775 (inv!68807 (totalInput!4488 thiss!28909)) e!2969776))))

(declare-fun mapNonEmpty!21545 () Bool)

(declare-fun mapRes!21545 () Bool)

(declare-fun tp!1352761 () Bool)

(declare-fun tp!1352764 () Bool)

(assert (=> mapNonEmpty!21545 (= mapRes!21545 (and tp!1352761 tp!1352764))))

(declare-fun mapValue!21545 () List!53440)

(declare-fun mapRest!21545 () (Array (_ BitVec 32) List!53440))

(declare-fun mapKey!21545 () (_ BitVec 32))

(assert (=> mapNonEmpty!21545 (= (arr!7876 (_values!5153 (v!47370 (underlying!9897 (v!47371 (underlying!9898 (cache!4571 thiss!28909))))))) (store mapRest!21545 mapKey!21545 mapValue!21545))))

(declare-fun mapIsEmpty!21545 () Bool)

(assert (=> mapIsEmpty!21545 mapRes!21545))

(declare-fun setIsEmpty!27097 () Bool)

(assert (=> setIsEmpty!27097 setRes!27097))

(declare-fun b!4759454 () Bool)

(declare-fun tp!1352762 () Bool)

(assert (=> b!4759454 (= e!2969768 (and tp!1352762 mapRes!21545))))

(declare-fun condMapEmpty!21545 () Bool)

(declare-fun mapDefault!21545 () List!53440)

(assert (=> b!4759454 (= condMapEmpty!21545 (= (arr!7876 (_values!5153 (v!47370 (underlying!9897 (v!47371 (underlying!9898 (cache!4571 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53440)) mapDefault!21545)))))

(declare-fun b!4759455 () Bool)

(declare-fun tp!1352771 () Bool)

(assert (=> b!4759455 (= e!2969773 (and (inv!68810 (c!812014 localTotalInput!8)) tp!1352771))))

(assert (= (and start!486720 res!2018851) b!4759446))

(assert (= (and b!4759446 res!2018848) b!4759445))

(assert (= (and b!4759445 (not res!2018852)) b!4759441))

(assert (= (and b!4759441 (not res!2018849)) b!4759448))

(assert (= (and b!4759448 (not res!2018850)) b!4759444))

(assert (= start!486720 b!4759455))

(assert (= (and b!4759454 condMapEmpty!21545) mapIsEmpty!21545))

(assert (= (and b!4759454 (not condMapEmpty!21545)) mapNonEmpty!21545))

(assert (= b!4759452 b!4759454))

(assert (= b!4759447 b!4759452))

(assert (= b!4759442 b!4759447))

(assert (= (and b!4759443 ((_ is LongMap!4845) (v!47371 (underlying!9898 (cache!4571 thiss!28909))))) b!4759442))

(assert (= b!4759449 b!4759443))

(assert (= (and b!4759453 ((_ is HashMap!4729) (cache!4571 thiss!28909))) b!4759449))

(assert (= b!4759453 b!4759450))

(assert (= start!486720 b!4759453))

(assert (= (and start!486720 condSetEmpty!27097) setIsEmpty!27097))

(assert (= (and start!486720 (not condSetEmpty!27097)) setNonEmpty!27097))

(assert (= setNonEmpty!27097 b!4759451))

(declare-fun m!5728802 () Bool)

(assert (=> b!4759452 m!5728802))

(declare-fun m!5728804 () Bool)

(assert (=> b!4759452 m!5728804))

(declare-fun m!5728806 () Bool)

(assert (=> setNonEmpty!27097 m!5728806))

(declare-fun m!5728808 () Bool)

(assert (=> b!4759453 m!5728808))

(declare-fun m!5728810 () Bool)

(assert (=> start!486720 m!5728810))

(declare-fun m!5728812 () Bool)

(assert (=> start!486720 m!5728812))

(declare-fun m!5728814 () Bool)

(assert (=> b!4759444 m!5728814))

(declare-fun m!5728816 () Bool)

(assert (=> b!4759446 m!5728816))

(declare-fun m!5728818 () Bool)

(assert (=> b!4759448 m!5728818))

(declare-fun m!5728820 () Bool)

(assert (=> mapNonEmpty!21545 m!5728820))

(declare-fun m!5728822 () Bool)

(assert (=> b!4759441 m!5728822))

(declare-fun m!5728824 () Bool)

(assert (=> b!4759441 m!5728824))

(declare-fun m!5728826 () Bool)

(assert (=> b!4759441 m!5728826))

(declare-fun m!5728828 () Bool)

(assert (=> b!4759450 m!5728828))

(declare-fun m!5728830 () Bool)

(assert (=> b!4759455 m!5728830))

(declare-fun m!5728832 () Bool)

(assert (=> b!4759445 m!5728832))

(declare-fun m!5728834 () Bool)

(assert (=> b!4759445 m!5728834))

(check-sat (not b!4759444) (not b!4759450) (not start!486720) b_and!340911 (not b_next!130001) (not b!4759448) (not setNonEmpty!27097) b_and!340913 (not b!4759441) (not b_next!129999) (not b!4759454) (not b!4759453) (not b!4759451) (not b!4759445) (not mapNonEmpty!21545) (not b!4759446) (not b!4759452) (not b!4759455))
(check-sat b_and!340911 b_and!340913 (not b_next!130001) (not b_next!129999))
