; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486658 () Bool)

(assert start!486658)

(declare-fun b!4758820 () Bool)

(declare-fun b_free!129263 () Bool)

(declare-fun b_next!129967 () Bool)

(assert (=> b!4758820 (= b_free!129263 (not b_next!129967))))

(declare-fun tp!1352381 () Bool)

(declare-fun b_and!340871 () Bool)

(assert (=> b!4758820 (= tp!1352381 b_and!340871)))

(declare-fun b!4758816 () Bool)

(declare-fun b_free!129265 () Bool)

(declare-fun b_next!129969 () Bool)

(assert (=> b!4758816 (= b_free!129265 (not b_next!129969))))

(declare-fun tp!1352377 () Bool)

(declare-fun b_and!340873 () Bool)

(assert (=> b!4758816 (= tp!1352377 b_and!340873)))

(declare-fun b!4758822 () Bool)

(assert (=> b!4758822 true))

(declare-fun mapIsEmpty!21515 () Bool)

(declare-fun mapRes!21515 () Bool)

(assert (=> mapIsEmpty!21515 mapRes!21515))

(declare-fun b!4758813 () Bool)

(declare-fun e!2969268 () Bool)

(declare-datatypes ((C!26268 0))(
  ( (C!26269 (val!20122 Int)) )
))
(declare-datatypes ((Regex!13035 0))(
  ( (ElementMatch!13035 (c!811947 C!26268)) (Concat!21354 (regOne!26582 Regex!13035) (regTwo!26582 Regex!13035)) (EmptyExpr!13035) (Star!13035 (reg!13364 Regex!13035)) (EmptyLang!13035) (Union!13035 (regOne!26583 Regex!13035) (regTwo!26583 Regex!13035)) )
))
(declare-datatypes ((List!53413 0))(
  ( (Nil!53289) (Cons!53289 (h!59700 Regex!13035) (t!360765 List!53413)) )
))
(declare-datatypes ((Context!5850 0))(
  ( (Context!5851 (exprs!3425 List!53413)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55200 0))(
  ( (tuple2!55201 (_1!30894 (InoxSet Context!5850)) (_2!30894 Int)) )
))
(declare-datatypes ((tuple2!55202 0))(
  ( (tuple2!55203 (_1!30895 tuple2!55200) (_2!30895 Int)) )
))
(declare-datatypes ((List!53414 0))(
  ( (Nil!53290) (Cons!53290 (h!59701 tuple2!55202) (t!360766 List!53414)) )
))
(declare-datatypes ((List!53415 0))(
  ( (Nil!53291) (Cons!53291 (h!59702 C!26268) (t!360767 List!53415)) )
))
(declare-datatypes ((IArray!29013 0))(
  ( (IArray!29014 (innerList!14564 List!53415)) )
))
(declare-datatypes ((Conc!14476 0))(
  ( (Node!14476 (left!39079 Conc!14476) (right!39409 Conc!14476) (csize!29182 Int) (cheight!14687 Int)) (Leaf!23566 (xs!17782 IArray!29013) (csize!29183 Int)) (Empty!14476) )
))
(declare-datatypes ((Hashable!6498 0))(
  ( (HashableExt!6497 (__x!32259 Int)) )
))
(declare-datatypes ((array!17616 0))(
  ( (array!17617 (arr!7859 (Array (_ BitVec 32) (_ BitVec 64))) (size!36070 (_ BitVec 32))) )
))
(declare-datatypes ((array!17618 0))(
  ( (array!17619 (arr!7860 (Array (_ BitVec 32) List!53414)) (size!36071 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9674 0))(
  ( (LongMapFixedSize!9675 (defaultEntry!5251 Int) (mask!14541 (_ BitVec 32)) (extraKeys!5107 (_ BitVec 32)) (zeroValue!5120 List!53414) (minValue!5120 List!53414) (_size!9699 (_ BitVec 32)) (_keys!5172 array!17616) (_values!5145 array!17618) (_vacant!4902 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19113 0))(
  ( (Cell!19114 (v!47348 LongMapFixedSize!9674)) )
))
(declare-datatypes ((MutLongMap!4837 0))(
  ( (LongMap!4837 (underlying!9881 Cell!19113)) (MutLongMapExt!4836 (__x!32260 Int)) )
))
(declare-datatypes ((Cell!19115 0))(
  ( (Cell!19116 (v!47349 MutLongMap!4837)) )
))
(declare-datatypes ((MutableMap!4721 0))(
  ( (MutableMapExt!4720 (__x!32261 Int)) (HashMap!4721 (underlying!9882 Cell!19115) (hashF!12308 Hashable!6498) (_size!9700 (_ BitVec 32)) (defaultValue!4892 Int)) )
))
(declare-datatypes ((BalanceConc!28442 0))(
  ( (BalanceConc!28443 (c!811948 Conc!14476)) )
))
(declare-datatypes ((CacheFindLongestMatch!640 0))(
  ( (CacheFindLongestMatch!641 (cache!4563 MutableMap!4721) (totalInput!4476 BalanceConc!28442)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!640)

(declare-fun tp!1352371 () Bool)

(declare-fun inv!68766 (Conc!14476) Bool)

(assert (=> b!4758813 (= e!2969268 (and (inv!68766 (c!811948 (totalInput!4476 thiss!28909))) tp!1352371))))

(declare-fun b!4758814 () Bool)

(declare-fun e!2969266 () Bool)

(declare-fun e!2969274 () Bool)

(assert (=> b!4758814 (= e!2969266 e!2969274)))

(declare-fun b!4758815 () Bool)

(declare-fun e!2969273 () Bool)

(declare-fun tp!1352378 () Bool)

(assert (=> b!4758815 (= e!2969273 (and tp!1352378 mapRes!21515))))

(declare-fun condMapEmpty!21515 () Bool)

(declare-fun mapDefault!21515 () List!53414)

(assert (=> b!4758815 (= condMapEmpty!21515 (= (arr!7860 (_values!5145 (v!47348 (underlying!9881 (v!47349 (underlying!9882 (cache!4563 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53414)) mapDefault!21515)))))

(declare-fun tp!1352374 () Bool)

(declare-fun tp!1352372 () Bool)

(declare-fun array_inv!5655 (array!17616) Bool)

(declare-fun array_inv!5656 (array!17618) Bool)

(assert (=> b!4758816 (= e!2969274 (and tp!1352377 tp!1352372 tp!1352374 (array_inv!5655 (_keys!5172 (v!47348 (underlying!9881 (v!47349 (underlying!9882 (cache!4563 thiss!28909))))))) (array_inv!5656 (_values!5145 (v!47348 (underlying!9881 (v!47349 (underlying!9882 (cache!4563 thiss!28909))))))) e!2969273))))

(declare-fun b!4758817 () Bool)

(declare-fun res!2018684 () Bool)

(declare-fun e!2969271 () Bool)

(assert (=> b!4758817 (=> res!2018684 e!2969271)))

(declare-fun valid!3842 (MutableMap!4721) Bool)

(assert (=> b!4758817 (= res!2018684 (not (valid!3842 (cache!4563 thiss!28909))))))

(declare-fun b!4758818 () Bool)

(declare-fun res!2018682 () Bool)

(assert (=> b!4758818 (=> res!2018682 e!2969271)))

(get-info :version)

(assert (=> b!4758818 (= res!2018682 (not ((_ is HashMap!4721) (cache!4563 thiss!28909))))))

(declare-fun b!4758819 () Bool)

(declare-fun e!2969262 () Bool)

(assert (=> b!4758819 (= e!2969262 (not e!2969271))))

(declare-fun res!2018680 () Bool)

(assert (=> b!4758819 (=> res!2018680 e!2969271)))

(declare-fun from!922 () Int)

(declare-fun z!482 () (InoxSet Context!5850))

(declare-fun contains!16627 (MutableMap!4721 tuple2!55200) Bool)

(assert (=> b!4758819 (= res!2018680 (not (contains!16627 (cache!4563 thiss!28909) (tuple2!55201 z!482 from!922))))))

(declare-fun localTotalInput!8 () BalanceConc!28442)

(declare-fun validCacheMapFindLongestMatch!120 (MutableMap!4721 BalanceConc!28442) Bool)

(assert (=> b!4758819 (validCacheMapFindLongestMatch!120 (cache!4563 thiss!28909) localTotalInput!8)))

(declare-fun setIsEmpty!27043 () Bool)

(declare-fun setRes!27043 () Bool)

(assert (=> setIsEmpty!27043 setRes!27043))

(declare-fun e!2969269 () Bool)

(declare-fun e!2969263 () Bool)

(assert (=> b!4758820 (= e!2969269 (and e!2969263 tp!1352381))))

(declare-fun tp!1352379 () Bool)

(declare-fun e!2969267 () Bool)

(declare-fun setElem!27043 () Context!5850)

(declare-fun setNonEmpty!27043 () Bool)

(declare-fun inv!68767 (Context!5850) Bool)

(assert (=> setNonEmpty!27043 (= setRes!27043 (and tp!1352379 (inv!68767 setElem!27043) e!2969267))))

(declare-fun setRest!27043 () (InoxSet Context!5850))

(assert (=> setNonEmpty!27043 (= z!482 ((_ map or) (store ((as const (Array Context!5850 Bool)) false) setElem!27043 true) setRest!27043))))

(declare-fun b!4758821 () Bool)

(declare-fun tp!1352373 () Bool)

(assert (=> b!4758821 (= e!2969267 tp!1352373)))

(assert (=> b!4758822 (= e!2969271 true)))

(declare-fun lt!1923949 () Bool)

(declare-fun lambda!223624 () Int)

(declare-fun forall!11818 (List!53414 Int) Bool)

(declare-datatypes ((ListMap!5701 0))(
  ( (ListMap!5702 (toList!6201 List!53414)) )
))
(declare-fun map!11849 (MutableMap!4721) ListMap!5701)

(assert (=> b!4758822 (= lt!1923949 (forall!11818 (toList!6201 (map!11849 (cache!4563 thiss!28909))) lambda!223624))))

(declare-fun e!2969270 () Bool)

(declare-fun b!4758823 () Bool)

(declare-fun inv!68768 (BalanceConc!28442) Bool)

(assert (=> b!4758823 (= e!2969270 (and e!2969269 (inv!68768 (totalInput!4476 thiss!28909)) e!2969268))))

(declare-fun b!4758824 () Bool)

(declare-fun e!2969265 () Bool)

(assert (=> b!4758824 (= e!2969265 e!2969266)))

(declare-fun b!4758825 () Bool)

(declare-fun res!2018681 () Bool)

(assert (=> b!4758825 (=> (not res!2018681) (not e!2969262))))

(assert (=> b!4758825 (= res!2018681 (validCacheMapFindLongestMatch!120 (cache!4563 thiss!28909) (totalInput!4476 thiss!28909)))))

(declare-fun res!2018683 () Bool)

(assert (=> start!486658 (=> (not res!2018683) (not e!2969262))))

(assert (=> start!486658 (= res!2018683 (= localTotalInput!8 (totalInput!4476 thiss!28909)))))

(assert (=> start!486658 e!2969262))

(declare-fun e!2969272 () Bool)

(assert (=> start!486658 (and (inv!68768 localTotalInput!8) e!2969272)))

(declare-fun inv!68769 (CacheFindLongestMatch!640) Bool)

(assert (=> start!486658 (and (inv!68769 thiss!28909) e!2969270)))

(declare-fun condSetEmpty!27043 () Bool)

(assert (=> start!486658 (= condSetEmpty!27043 (= z!482 ((as const (Array Context!5850 Bool)) false)))))

(assert (=> start!486658 setRes!27043))

(assert (=> start!486658 true))

(declare-fun mapNonEmpty!21515 () Bool)

(declare-fun tp!1352380 () Bool)

(declare-fun tp!1352376 () Bool)

(assert (=> mapNonEmpty!21515 (= mapRes!21515 (and tp!1352380 tp!1352376))))

(declare-fun mapKey!21515 () (_ BitVec 32))

(declare-fun mapRest!21515 () (Array (_ BitVec 32) List!53414))

(declare-fun mapValue!21515 () List!53414)

(assert (=> mapNonEmpty!21515 (= (arr!7860 (_values!5145 (v!47348 (underlying!9881 (v!47349 (underlying!9882 (cache!4563 thiss!28909))))))) (store mapRest!21515 mapKey!21515 mapValue!21515))))

(declare-fun b!4758826 () Bool)

(declare-fun tp!1352375 () Bool)

(assert (=> b!4758826 (= e!2969272 (and (inv!68766 (c!811948 localTotalInput!8)) tp!1352375))))

(declare-fun b!4758827 () Bool)

(declare-fun lt!1923950 () MutLongMap!4837)

(assert (=> b!4758827 (= e!2969263 (and e!2969265 ((_ is LongMap!4837) lt!1923950)))))

(assert (=> b!4758827 (= lt!1923950 (v!47349 (underlying!9882 (cache!4563 thiss!28909))))))

(assert (= (and start!486658 res!2018683) b!4758825))

(assert (= (and b!4758825 res!2018681) b!4758819))

(assert (= (and b!4758819 (not res!2018680)) b!4758818))

(assert (= (and b!4758818 (not res!2018682)) b!4758817))

(assert (= (and b!4758817 (not res!2018684)) b!4758822))

(assert (= start!486658 b!4758826))

(assert (= (and b!4758815 condMapEmpty!21515) mapIsEmpty!21515))

(assert (= (and b!4758815 (not condMapEmpty!21515)) mapNonEmpty!21515))

(assert (= b!4758816 b!4758815))

(assert (= b!4758814 b!4758816))

(assert (= b!4758824 b!4758814))

(assert (= (and b!4758827 ((_ is LongMap!4837) (v!47349 (underlying!9882 (cache!4563 thiss!28909))))) b!4758824))

(assert (= b!4758820 b!4758827))

(assert (= (and b!4758823 ((_ is HashMap!4721) (cache!4563 thiss!28909))) b!4758820))

(assert (= b!4758823 b!4758813))

(assert (= start!486658 b!4758823))

(assert (= (and start!486658 condSetEmpty!27043) setIsEmpty!27043))

(assert (= (and start!486658 (not condSetEmpty!27043)) setNonEmpty!27043))

(assert (= setNonEmpty!27043 b!4758821))

(declare-fun m!5728200 () Bool)

(assert (=> b!4758825 m!5728200))

(declare-fun m!5728202 () Bool)

(assert (=> b!4758823 m!5728202))

(declare-fun m!5728204 () Bool)

(assert (=> b!4758817 m!5728204))

(declare-fun m!5728206 () Bool)

(assert (=> b!4758822 m!5728206))

(declare-fun m!5728208 () Bool)

(assert (=> b!4758822 m!5728208))

(declare-fun m!5728210 () Bool)

(assert (=> b!4758826 m!5728210))

(declare-fun m!5728212 () Bool)

(assert (=> setNonEmpty!27043 m!5728212))

(declare-fun m!5728214 () Bool)

(assert (=> b!4758813 m!5728214))

(declare-fun m!5728216 () Bool)

(assert (=> mapNonEmpty!21515 m!5728216))

(declare-fun m!5728218 () Bool)

(assert (=> start!486658 m!5728218))

(declare-fun m!5728220 () Bool)

(assert (=> start!486658 m!5728220))

(declare-fun m!5728222 () Bool)

(assert (=> b!4758816 m!5728222))

(declare-fun m!5728224 () Bool)

(assert (=> b!4758816 m!5728224))

(declare-fun m!5728226 () Bool)

(assert (=> b!4758819 m!5728226))

(declare-fun m!5728228 () Bool)

(assert (=> b!4758819 m!5728228))

(check-sat b_and!340871 (not b!4758822) (not start!486658) (not mapNonEmpty!21515) (not b_next!129969) (not b!4758816) (not b!4758813) (not b!4758817) (not setNonEmpty!27043) (not b!4758826) b_and!340873 (not b!4758819) (not b!4758821) (not b!4758815) (not b!4758825) (not b_next!129967) (not b!4758823))
(check-sat b_and!340871 b_and!340873 (not b_next!129969) (not b_next!129967))
