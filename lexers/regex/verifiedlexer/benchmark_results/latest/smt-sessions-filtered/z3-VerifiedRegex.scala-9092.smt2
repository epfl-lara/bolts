; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486716 () Bool)

(assert start!486716)

(declare-fun b!4759355 () Bool)

(declare-fun b_free!129287 () Bool)

(declare-fun b_next!129991 () Bool)

(assert (=> b!4759355 (= b_free!129287 (not b_next!129991))))

(declare-fun tp!1352697 () Bool)

(declare-fun b_and!340903 () Bool)

(assert (=> b!4759355 (= tp!1352697 b_and!340903)))

(declare-fun b!4759361 () Bool)

(declare-fun b_free!129289 () Bool)

(declare-fun b_next!129993 () Bool)

(assert (=> b!4759361 (= b_free!129289 (not b_next!129993))))

(declare-fun tp!1352702 () Bool)

(declare-fun b_and!340905 () Bool)

(assert (=> b!4759361 (= tp!1352702 b_and!340905)))

(declare-fun b!4759354 () Bool)

(assert (=> b!4759354 true))

(declare-fun b!4759347 () Bool)

(declare-fun e!2969690 () Bool)

(declare-fun e!2969695 () Bool)

(assert (=> b!4759347 (= e!2969690 e!2969695)))

(declare-fun e!2969694 () Bool)

(declare-fun tp!1352699 () Bool)

(declare-fun setNonEmpty!27091 () Bool)

(declare-datatypes ((C!26280 0))(
  ( (C!26281 (val!20128 Int)) )
))
(declare-datatypes ((Regex!13041 0))(
  ( (ElementMatch!13041 (c!812009 C!26280)) (Concat!21360 (regOne!26594 Regex!13041) (regTwo!26594 Regex!13041)) (EmptyExpr!13041) (Star!13041 (reg!13370 Regex!13041)) (EmptyLang!13041) (Union!13041 (regOne!26595 Regex!13041) (regTwo!26595 Regex!13041)) )
))
(declare-datatypes ((List!53433 0))(
  ( (Nil!53309) (Cons!53309 (h!59720 Regex!13041) (t!360789 List!53433)) )
))
(declare-datatypes ((Context!5862 0))(
  ( (Context!5863 (exprs!3431 List!53433)) )
))
(declare-fun setElem!27091 () Context!5862)

(declare-fun setRes!27091 () Bool)

(declare-fun inv!68796 (Context!5862) Bool)

(assert (=> setNonEmpty!27091 (= setRes!27091 (and tp!1352699 (inv!68796 setElem!27091) e!2969694))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!482 () (InoxSet Context!5862))

(declare-fun setRest!27091 () (InoxSet Context!5862))

(assert (=> setNonEmpty!27091 (= z!482 ((_ map or) (store ((as const (Array Context!5862 Bool)) false) setElem!27091 true) setRest!27091))))

(declare-fun b!4759348 () Bool)

(declare-fun e!2969687 () Bool)

(assert (=> b!4759348 (= e!2969687 e!2969690)))

(declare-fun b!4759349 () Bool)

(declare-fun res!2018819 () Bool)

(declare-fun e!2969682 () Bool)

(assert (=> b!4759349 (=> res!2018819 e!2969682)))

(declare-fun from!922 () Int)

(declare-datatypes ((List!53434 0))(
  ( (Nil!53310) (Cons!53310 (h!59721 C!26280) (t!360790 List!53434)) )
))
(declare-datatypes ((IArray!29025 0))(
  ( (IArray!29026 (innerList!14570 List!53434)) )
))
(declare-datatypes ((Conc!14482 0))(
  ( (Node!14482 (left!39100 Conc!14482) (right!39430 Conc!14482) (csize!29194 Int) (cheight!14693 Int)) (Leaf!23575 (xs!17788 IArray!29025) (csize!29195 Int)) (Empty!14482) )
))
(declare-datatypes ((BalanceConc!28454 0))(
  ( (BalanceConc!28455 (c!812010 Conc!14482)) )
))
(declare-fun localTotalInput!8 () BalanceConc!28454)

(declare-fun size!36084 (BalanceConc!28454) Int)

(assert (=> b!4759349 (= res!2018819 (> from!922 (size!36084 localTotalInput!8)))))

(declare-fun b!4759350 () Bool)

(declare-fun e!2969691 () Bool)

(declare-fun tp!1352704 () Bool)

(declare-fun mapRes!21539 () Bool)

(assert (=> b!4759350 (= e!2969691 (and tp!1352704 mapRes!21539))))

(declare-fun condMapEmpty!21539 () Bool)

(declare-datatypes ((tuple2!55228 0))(
  ( (tuple2!55229 (_1!30908 (InoxSet Context!5862)) (_2!30908 Int)) )
))
(declare-datatypes ((tuple2!55230 0))(
  ( (tuple2!55231 (_1!30909 tuple2!55228) (_2!30909 Int)) )
))
(declare-datatypes ((List!53435 0))(
  ( (Nil!53311) (Cons!53311 (h!59722 tuple2!55230) (t!360791 List!53435)) )
))
(declare-datatypes ((Hashable!6504 0))(
  ( (HashableExt!6503 (__x!32277 Int)) )
))
(declare-datatypes ((array!17644 0))(
  ( (array!17645 (arr!7871 (Array (_ BitVec 32) (_ BitVec 64))) (size!36085 (_ BitVec 32))) )
))
(declare-datatypes ((array!17646 0))(
  ( (array!17647 (arr!7872 (Array (_ BitVec 32) List!53435)) (size!36086 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9686 0))(
  ( (LongMapFixedSize!9687 (defaultEntry!5257 Int) (mask!14550 (_ BitVec 32)) (extraKeys!5113 (_ BitVec 32)) (zeroValue!5126 List!53435) (minValue!5126 List!53435) (_size!9711 (_ BitVec 32)) (_keys!5178 array!17644) (_values!5151 array!17646) (_vacant!4908 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19137 0))(
  ( (Cell!19138 (v!47366 LongMapFixedSize!9686)) )
))
(declare-datatypes ((MutLongMap!4843 0))(
  ( (LongMap!4843 (underlying!9893 Cell!19137)) (MutLongMapExt!4842 (__x!32278 Int)) )
))
(declare-datatypes ((Cell!19139 0))(
  ( (Cell!19140 (v!47367 MutLongMap!4843)) )
))
(declare-datatypes ((MutableMap!4727 0))(
  ( (MutableMapExt!4726 (__x!32279 Int)) (HashMap!4727 (underlying!9894 Cell!19139) (hashF!12314 Hashable!6504) (_size!9712 (_ BitVec 32)) (defaultValue!4898 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!652 0))(
  ( (CacheFindLongestMatch!653 (cache!4569 MutableMap!4727) (totalInput!4486 BalanceConc!28454)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!652)

(declare-fun mapDefault!21539 () List!53435)

(assert (=> b!4759350 (= condMapEmpty!21539 (= (arr!7872 (_values!5151 (v!47366 (underlying!9893 (v!47367 (underlying!9894 (cache!4569 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53435)) mapDefault!21539)))))

(declare-fun b!4759351 () Bool)

(declare-fun tp!1352705 () Bool)

(assert (=> b!4759351 (= e!2969694 tp!1352705)))

(declare-fun b!4759352 () Bool)

(declare-fun e!2969686 () Bool)

(declare-fun e!2969692 () Bool)

(assert (=> b!4759352 (= e!2969686 (not e!2969692))))

(declare-fun res!2018818 () Bool)

(assert (=> b!4759352 (=> res!2018818 e!2969692)))

(declare-fun lt!1924308 () tuple2!55228)

(declare-fun contains!16639 (MutableMap!4727 tuple2!55228) Bool)

(assert (=> b!4759352 (= res!2018818 (not (contains!16639 (cache!4569 thiss!28909) lt!1924308)))))

(assert (=> b!4759352 (= lt!1924308 (tuple2!55229 z!482 from!922))))

(declare-fun validCacheMapFindLongestMatch!126 (MutableMap!4727 BalanceConc!28454) Bool)

(assert (=> b!4759352 (validCacheMapFindLongestMatch!126 (cache!4569 thiss!28909) localTotalInput!8)))

(declare-fun b!4759353 () Bool)

(assert (=> b!4759353 (= e!2969682 (<= from!922 (size!36084 (totalInput!4486 thiss!28909))))))

(assert (=> b!4759354 (= e!2969692 e!2969682)))

(declare-fun res!2018822 () Bool)

(assert (=> b!4759354 (=> res!2018822 e!2969682)))

(assert (=> b!4759354 (= res!2018822 (< from!922 0))))

(declare-fun validCacheMapFindLongestMatchBody!18 (tuple2!55230 BalanceConc!28454) Bool)

(declare-fun apply!12524 (MutableMap!4727 tuple2!55228) Int)

(assert (=> b!4759354 (validCacheMapFindLongestMatchBody!18 (tuple2!55231 lt!1924308 (apply!12524 (cache!4569 thiss!28909) lt!1924308)) localTotalInput!8)))

(declare-datatypes ((Unit!137780 0))(
  ( (Unit!137781) )
))
(declare-fun lt!1924309 () Unit!137780)

(declare-fun lambda!223679 () Int)

(declare-fun lemmaForallPairsThenForLookup!65 (MutableMap!4727 tuple2!55228 Int) Unit!137780)

(assert (=> b!4759354 (= lt!1924309 (lemmaForallPairsThenForLookup!65 (cache!4569 thiss!28909) lt!1924308 lambda!223679))))

(declare-fun e!2969684 () Bool)

(declare-fun e!2969683 () Bool)

(assert (=> b!4759355 (= e!2969684 (and e!2969683 tp!1352697))))

(declare-fun b!4759356 () Bool)

(declare-fun e!2969693 () Bool)

(declare-fun tp!1352696 () Bool)

(declare-fun inv!68797 (Conc!14482) Bool)

(assert (=> b!4759356 (= e!2969693 (and (inv!68797 (c!812010 localTotalInput!8)) tp!1352696))))

(declare-fun b!4759357 () Bool)

(declare-fun res!2018821 () Bool)

(assert (=> b!4759357 (=> (not res!2018821) (not e!2969686))))

(assert (=> b!4759357 (= res!2018821 (validCacheMapFindLongestMatch!126 (cache!4569 thiss!28909) (totalInput!4486 thiss!28909)))))

(declare-fun setIsEmpty!27091 () Bool)

(assert (=> setIsEmpty!27091 setRes!27091))

(declare-fun b!4759358 () Bool)

(declare-fun lt!1924310 () MutLongMap!4843)

(get-info :version)

(assert (=> b!4759358 (= e!2969683 (and e!2969687 ((_ is LongMap!4843) lt!1924310)))))

(assert (=> b!4759358 (= lt!1924310 (v!47367 (underlying!9894 (cache!4569 thiss!28909))))))

(declare-fun b!4759359 () Bool)

(declare-fun e!2969685 () Bool)

(declare-fun tp!1352700 () Bool)

(assert (=> b!4759359 (= e!2969685 (and (inv!68797 (c!812010 (totalInput!4486 thiss!28909))) tp!1352700))))

(declare-fun b!4759360 () Bool)

(declare-fun e!2969689 () Bool)

(declare-fun inv!68798 (BalanceConc!28454) Bool)

(assert (=> b!4759360 (= e!2969689 (and e!2969684 (inv!68798 (totalInput!4486 thiss!28909)) e!2969685))))

(declare-fun mapNonEmpty!21539 () Bool)

(declare-fun tp!1352698 () Bool)

(declare-fun tp!1352703 () Bool)

(assert (=> mapNonEmpty!21539 (= mapRes!21539 (and tp!1352698 tp!1352703))))

(declare-fun mapKey!21539 () (_ BitVec 32))

(declare-fun mapRest!21539 () (Array (_ BitVec 32) List!53435))

(declare-fun mapValue!21539 () List!53435)

(assert (=> mapNonEmpty!21539 (= (arr!7872 (_values!5151 (v!47366 (underlying!9893 (v!47367 (underlying!9894 (cache!4569 thiss!28909))))))) (store mapRest!21539 mapKey!21539 mapValue!21539))))

(declare-fun tp!1352701 () Bool)

(declare-fun tp!1352695 () Bool)

(declare-fun array_inv!5663 (array!17644) Bool)

(declare-fun array_inv!5664 (array!17646) Bool)

(assert (=> b!4759361 (= e!2969695 (and tp!1352702 tp!1352701 tp!1352695 (array_inv!5663 (_keys!5178 (v!47366 (underlying!9893 (v!47367 (underlying!9894 (cache!4569 thiss!28909))))))) (array_inv!5664 (_values!5151 (v!47366 (underlying!9893 (v!47367 (underlying!9894 (cache!4569 thiss!28909))))))) e!2969691))))

(declare-fun mapIsEmpty!21539 () Bool)

(assert (=> mapIsEmpty!21539 mapRes!21539))

(declare-fun res!2018820 () Bool)

(assert (=> start!486716 (=> (not res!2018820) (not e!2969686))))

(assert (=> start!486716 (= res!2018820 (= localTotalInput!8 (totalInput!4486 thiss!28909)))))

(assert (=> start!486716 e!2969686))

(assert (=> start!486716 (and (inv!68798 localTotalInput!8) e!2969693)))

(declare-fun inv!68799 (CacheFindLongestMatch!652) Bool)

(assert (=> start!486716 (and (inv!68799 thiss!28909) e!2969689)))

(assert (=> start!486716 true))

(declare-fun condSetEmpty!27091 () Bool)

(assert (=> start!486716 (= condSetEmpty!27091 (= z!482 ((as const (Array Context!5862 Bool)) false)))))

(assert (=> start!486716 setRes!27091))

(assert (= (and start!486716 res!2018820) b!4759357))

(assert (= (and b!4759357 res!2018821) b!4759352))

(assert (= (and b!4759352 (not res!2018818)) b!4759354))

(assert (= (and b!4759354 (not res!2018822)) b!4759349))

(assert (= (and b!4759349 (not res!2018819)) b!4759353))

(assert (= start!486716 b!4759356))

(assert (= (and b!4759350 condMapEmpty!21539) mapIsEmpty!21539))

(assert (= (and b!4759350 (not condMapEmpty!21539)) mapNonEmpty!21539))

(assert (= b!4759361 b!4759350))

(assert (= b!4759347 b!4759361))

(assert (= b!4759348 b!4759347))

(assert (= (and b!4759358 ((_ is LongMap!4843) (v!47367 (underlying!9894 (cache!4569 thiss!28909))))) b!4759348))

(assert (= b!4759355 b!4759358))

(assert (= (and b!4759360 ((_ is HashMap!4727) (cache!4569 thiss!28909))) b!4759355))

(assert (= b!4759360 b!4759359))

(assert (= start!486716 b!4759360))

(assert (= (and start!486716 condSetEmpty!27091) setIsEmpty!27091))

(assert (= (and start!486716 (not condSetEmpty!27091)) setNonEmpty!27091))

(assert (= setNonEmpty!27091 b!4759351))

(declare-fun m!5728734 () Bool)

(assert (=> b!4759357 m!5728734))

(declare-fun m!5728736 () Bool)

(assert (=> b!4759359 m!5728736))

(declare-fun m!5728738 () Bool)

(assert (=> mapNonEmpty!21539 m!5728738))

(declare-fun m!5728740 () Bool)

(assert (=> b!4759349 m!5728740))

(declare-fun m!5728742 () Bool)

(assert (=> b!4759356 m!5728742))

(declare-fun m!5728744 () Bool)

(assert (=> b!4759361 m!5728744))

(declare-fun m!5728746 () Bool)

(assert (=> b!4759361 m!5728746))

(declare-fun m!5728748 () Bool)

(assert (=> b!4759354 m!5728748))

(declare-fun m!5728750 () Bool)

(assert (=> b!4759354 m!5728750))

(declare-fun m!5728752 () Bool)

(assert (=> b!4759354 m!5728752))

(declare-fun m!5728754 () Bool)

(assert (=> b!4759353 m!5728754))

(declare-fun m!5728756 () Bool)

(assert (=> b!4759360 m!5728756))

(declare-fun m!5728758 () Bool)

(assert (=> start!486716 m!5728758))

(declare-fun m!5728760 () Bool)

(assert (=> start!486716 m!5728760))

(declare-fun m!5728762 () Bool)

(assert (=> b!4759352 m!5728762))

(declare-fun m!5728764 () Bool)

(assert (=> b!4759352 m!5728764))

(declare-fun m!5728766 () Bool)

(assert (=> setNonEmpty!27091 m!5728766))

(check-sat (not b!4759356) b_and!340905 (not b!4759357) (not b!4759353) (not b!4759359) (not b!4759354) b_and!340903 (not b!4759349) (not start!486716) (not b_next!129993) (not mapNonEmpty!21539) (not b!4759360) (not b!4759352) (not setNonEmpty!27091) (not b!4759350) (not b_next!129991) (not b!4759361) (not b!4759351))
(check-sat b_and!340903 b_and!340905 (not b_next!129993) (not b_next!129991))
