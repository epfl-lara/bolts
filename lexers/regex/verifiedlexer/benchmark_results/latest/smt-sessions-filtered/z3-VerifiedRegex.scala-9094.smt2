; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486724 () Bool)

(assert start!486724)

(declare-fun b!4759546 () Bool)

(declare-fun b_free!129303 () Bool)

(declare-fun b_next!130007 () Bool)

(assert (=> b!4759546 (= b_free!129303 (not b_next!130007))))

(declare-fun tp!1352828 () Bool)

(declare-fun b_and!340919 () Bool)

(assert (=> b!4759546 (= tp!1352828 b_and!340919)))

(declare-fun b!4759548 () Bool)

(declare-fun b_free!129305 () Bool)

(declare-fun b_next!130009 () Bool)

(assert (=> b!4759548 (= b_free!129305 (not b_next!130009))))

(declare-fun tp!1352836 () Bool)

(declare-fun b_and!340921 () Bool)

(assert (=> b!4759548 (= tp!1352836 b_and!340921)))

(declare-fun b!4759536 () Bool)

(assert (=> b!4759536 true))

(declare-fun setIsEmpty!27103 () Bool)

(declare-fun setRes!27103 () Bool)

(assert (=> setIsEmpty!27103 setRes!27103))

(declare-fun b!4759535 () Bool)

(declare-fun e!2969860 () Bool)

(declare-fun e!2969850 () Bool)

(assert (=> b!4759535 (= e!2969860 (not e!2969850))))

(declare-fun res!2018882 () Bool)

(assert (=> b!4759535 (=> res!2018882 e!2969850)))

(declare-datatypes ((C!26288 0))(
  ( (C!26289 (val!20132 Int)) )
))
(declare-datatypes ((Regex!13045 0))(
  ( (ElementMatch!13045 (c!812017 C!26288)) (Concat!21364 (regOne!26602 Regex!13045) (regTwo!26602 Regex!13045)) (EmptyExpr!13045) (Star!13045 (reg!13374 Regex!13045)) (EmptyLang!13045) (Union!13045 (regOne!26603 Regex!13045) (regTwo!26603 Regex!13045)) )
))
(declare-datatypes ((List!53445 0))(
  ( (Nil!53321) (Cons!53321 (h!59732 Regex!13045) (t!360801 List!53445)) )
))
(declare-datatypes ((Context!5870 0))(
  ( (Context!5871 (exprs!3435 List!53445)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55244 0))(
  ( (tuple2!55245 (_1!30916 (InoxSet Context!5870)) (_2!30916 Int)) )
))
(declare-datatypes ((tuple2!55246 0))(
  ( (tuple2!55247 (_1!30917 tuple2!55244) (_2!30917 Int)) )
))
(declare-datatypes ((List!53446 0))(
  ( (Nil!53322) (Cons!53322 (h!59733 tuple2!55246) (t!360802 List!53446)) )
))
(declare-datatypes ((List!53447 0))(
  ( (Nil!53323) (Cons!53323 (h!59734 C!26288) (t!360803 List!53447)) )
))
(declare-datatypes ((IArray!29033 0))(
  ( (IArray!29034 (innerList!14574 List!53447)) )
))
(declare-datatypes ((Conc!14486 0))(
  ( (Node!14486 (left!39114 Conc!14486) (right!39444 Conc!14486) (csize!29202 Int) (cheight!14697 Int)) (Leaf!23581 (xs!17792 IArray!29033) (csize!29203 Int)) (Empty!14486) )
))
(declare-datatypes ((Hashable!6508 0))(
  ( (HashableExt!6507 (__x!32289 Int)) )
))
(declare-datatypes ((array!17660 0))(
  ( (array!17661 (arr!7879 (Array (_ BitVec 32) (_ BitVec 64))) (size!36095 (_ BitVec 32))) )
))
(declare-datatypes ((array!17662 0))(
  ( (array!17663 (arr!7880 (Array (_ BitVec 32) List!53446)) (size!36096 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9694 0))(
  ( (LongMapFixedSize!9695 (defaultEntry!5261 Int) (mask!14556 (_ BitVec 32)) (extraKeys!5117 (_ BitVec 32)) (zeroValue!5130 List!53446) (minValue!5130 List!53446) (_size!9719 (_ BitVec 32)) (_keys!5182 array!17660) (_values!5155 array!17662) (_vacant!4912 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19153 0))(
  ( (Cell!19154 (v!47374 LongMapFixedSize!9694)) )
))
(declare-datatypes ((MutLongMap!4847 0))(
  ( (LongMap!4847 (underlying!9901 Cell!19153)) (MutLongMapExt!4846 (__x!32290 Int)) )
))
(declare-datatypes ((Cell!19155 0))(
  ( (Cell!19156 (v!47375 MutLongMap!4847)) )
))
(declare-datatypes ((MutableMap!4731 0))(
  ( (MutableMapExt!4730 (__x!32291 Int)) (HashMap!4731 (underlying!9902 Cell!19155) (hashF!12318 Hashable!6508) (_size!9720 (_ BitVec 32)) (defaultValue!4902 Int)) )
))
(declare-datatypes ((BalanceConc!28462 0))(
  ( (BalanceConc!28463 (c!812018 Conc!14486)) )
))
(declare-datatypes ((CacheFindLongestMatch!660 0))(
  ( (CacheFindLongestMatch!661 (cache!4573 MutableMap!4731) (totalInput!4490 BalanceConc!28462)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!660)

(declare-fun lt!1924351 () tuple2!55244)

(declare-fun contains!16641 (MutableMap!4731 tuple2!55244) Bool)

(assert (=> b!4759535 (= res!2018882 (not (contains!16641 (cache!4573 thiss!28909) lt!1924351)))))

(declare-fun z!482 () (InoxSet Context!5870))

(declare-fun from!922 () Int)

(assert (=> b!4759535 (= lt!1924351 (tuple2!55245 z!482 from!922))))

(declare-fun localTotalInput!8 () BalanceConc!28462)

(declare-fun validCacheMapFindLongestMatch!128 (MutableMap!4731 BalanceConc!28462) Bool)

(assert (=> b!4759535 (validCacheMapFindLongestMatch!128 (cache!4573 thiss!28909) localTotalInput!8)))

(declare-fun e!2969852 () Bool)

(assert (=> b!4759536 (= e!2969850 e!2969852)))

(declare-fun res!2018880 () Bool)

(assert (=> b!4759536 (=> res!2018880 e!2969852)))

(assert (=> b!4759536 (= res!2018880 (< from!922 0))))

(declare-fun validCacheMapFindLongestMatchBody!21 (tuple2!55246 BalanceConc!28462) Bool)

(declare-fun apply!12527 (MutableMap!4731 tuple2!55244) Int)

(assert (=> b!4759536 (validCacheMapFindLongestMatchBody!21 (tuple2!55247 lt!1924351 (apply!12527 (cache!4573 thiss!28909) lt!1924351)) localTotalInput!8)))

(declare-datatypes ((Unit!137786 0))(
  ( (Unit!137787) )
))
(declare-fun lt!1924352 () Unit!137786)

(declare-fun lambda!223691 () Int)

(declare-fun lemmaForallPairsThenForLookup!68 (MutableMap!4731 tuple2!55244 Int) Unit!137786)

(assert (=> b!4759536 (= lt!1924352 (lemmaForallPairsThenForLookup!68 (cache!4573 thiss!28909) lt!1924351 lambda!223691))))

(declare-fun b!4759537 () Bool)

(declare-fun e!2969859 () Bool)

(declare-fun e!2969855 () Bool)

(assert (=> b!4759537 (= e!2969859 e!2969855)))

(declare-fun b!4759538 () Bool)

(declare-fun e!2969853 () Bool)

(declare-fun lt!1924350 () MutLongMap!4847)

(get-info :version)

(assert (=> b!4759538 (= e!2969853 (and e!2969859 ((_ is LongMap!4847) lt!1924350)))))

(assert (=> b!4759538 (= lt!1924350 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))

(declare-fun res!2018879 () Bool)

(assert (=> start!486724 (=> (not res!2018879) (not e!2969860))))

(assert (=> start!486724 (= res!2018879 (= localTotalInput!8 (totalInput!4490 thiss!28909)))))

(assert (=> start!486724 e!2969860))

(declare-fun e!2969862 () Bool)

(declare-fun inv!68817 (BalanceConc!28462) Bool)

(assert (=> start!486724 (and (inv!68817 localTotalInput!8) e!2969862)))

(declare-fun e!2969858 () Bool)

(declare-fun inv!68818 (CacheFindLongestMatch!660) Bool)

(assert (=> start!486724 (and (inv!68818 thiss!28909) e!2969858)))

(assert (=> start!486724 true))

(declare-fun condSetEmpty!27103 () Bool)

(assert (=> start!486724 (= condSetEmpty!27103 (= z!482 ((as const (Array Context!5870 Bool)) false)))))

(assert (=> start!486724 setRes!27103))

(declare-fun b!4759539 () Bool)

(declare-fun res!2018878 () Bool)

(assert (=> b!4759539 (=> res!2018878 e!2969852)))

(declare-fun size!36097 (BalanceConc!28462) Int)

(assert (=> b!4759539 (= res!2018878 (> from!922 (size!36097 localTotalInput!8)))))

(declare-fun mapIsEmpty!21551 () Bool)

(declare-fun mapRes!21551 () Bool)

(assert (=> mapIsEmpty!21551 mapRes!21551))

(declare-fun b!4759540 () Bool)

(declare-fun e!2969857 () Bool)

(declare-fun tp!1352829 () Bool)

(declare-fun inv!68819 (Conc!14486) Bool)

(assert (=> b!4759540 (= e!2969857 (and (inv!68819 (c!812018 (totalInput!4490 thiss!28909))) tp!1352829))))

(declare-fun b!4759541 () Bool)

(declare-fun tp!1352834 () Bool)

(assert (=> b!4759541 (= e!2969862 (and (inv!68819 (c!812018 localTotalInput!8)) tp!1352834))))

(declare-fun b!4759542 () Bool)

(declare-fun e!2969851 () Bool)

(assert (=> b!4759542 (= e!2969855 e!2969851)))

(declare-fun b!4759543 () Bool)

(declare-fun res!2018881 () Bool)

(assert (=> b!4759543 (=> (not res!2018881) (not e!2969860))))

(assert (=> b!4759543 (= res!2018881 (validCacheMapFindLongestMatch!128 (cache!4573 thiss!28909) (totalInput!4490 thiss!28909)))))

(declare-fun b!4759544 () Bool)

(declare-fun e!2969856 () Bool)

(declare-fun tp!1352835 () Bool)

(assert (=> b!4759544 (= e!2969856 (and tp!1352835 mapRes!21551))))

(declare-fun condMapEmpty!21551 () Bool)

(declare-fun mapDefault!21551 () List!53446)

(assert (=> b!4759544 (= condMapEmpty!21551 (= (arr!7880 (_values!5155 (v!47374 (underlying!9901 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53446)) mapDefault!21551)))))

(declare-fun b!4759545 () Bool)

(declare-fun e!2969854 () Bool)

(declare-fun tp!1352832 () Bool)

(assert (=> b!4759545 (= e!2969854 tp!1352832)))

(declare-fun tp!1352830 () Bool)

(declare-fun tp!1352833 () Bool)

(declare-fun array_inv!5667 (array!17660) Bool)

(declare-fun array_inv!5668 (array!17662) Bool)

(assert (=> b!4759546 (= e!2969851 (and tp!1352828 tp!1352830 tp!1352833 (array_inv!5667 (_keys!5182 (v!47374 (underlying!9901 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))) (array_inv!5668 (_values!5155 (v!47374 (underlying!9901 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))) e!2969856))))

(declare-fun b!4759547 () Bool)

(assert (=> b!4759547 (= e!2969852 ((_ is HashMap!4731) (cache!4573 thiss!28909)))))

(declare-fun tp!1352837 () Bool)

(declare-fun setNonEmpty!27103 () Bool)

(declare-fun setElem!27103 () Context!5870)

(declare-fun inv!68820 (Context!5870) Bool)

(assert (=> setNonEmpty!27103 (= setRes!27103 (and tp!1352837 (inv!68820 setElem!27103) e!2969854))))

(declare-fun setRest!27103 () (InoxSet Context!5870))

(assert (=> setNonEmpty!27103 (= z!482 ((_ map or) (store ((as const (Array Context!5870 Bool)) false) setElem!27103 true) setRest!27103))))

(declare-fun mapNonEmpty!21551 () Bool)

(declare-fun tp!1352827 () Bool)

(declare-fun tp!1352831 () Bool)

(assert (=> mapNonEmpty!21551 (= mapRes!21551 (and tp!1352827 tp!1352831))))

(declare-fun mapRest!21551 () (Array (_ BitVec 32) List!53446))

(declare-fun mapValue!21551 () List!53446)

(declare-fun mapKey!21551 () (_ BitVec 32))

(assert (=> mapNonEmpty!21551 (= (arr!7880 (_values!5155 (v!47374 (underlying!9901 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))) (store mapRest!21551 mapKey!21551 mapValue!21551))))

(declare-fun e!2969861 () Bool)

(assert (=> b!4759548 (= e!2969861 (and e!2969853 tp!1352836))))

(declare-fun b!4759549 () Bool)

(assert (=> b!4759549 (= e!2969858 (and e!2969861 (inv!68817 (totalInput!4490 thiss!28909)) e!2969857))))

(assert (= (and start!486724 res!2018879) b!4759543))

(assert (= (and b!4759543 res!2018881) b!4759535))

(assert (= (and b!4759535 (not res!2018882)) b!4759536))

(assert (= (and b!4759536 (not res!2018880)) b!4759539))

(assert (= (and b!4759539 (not res!2018878)) b!4759547))

(assert (= start!486724 b!4759541))

(assert (= (and b!4759544 condMapEmpty!21551) mapIsEmpty!21551))

(assert (= (and b!4759544 (not condMapEmpty!21551)) mapNonEmpty!21551))

(assert (= b!4759546 b!4759544))

(assert (= b!4759542 b!4759546))

(assert (= b!4759537 b!4759542))

(assert (= (and b!4759538 ((_ is LongMap!4847) (v!47375 (underlying!9902 (cache!4573 thiss!28909))))) b!4759537))

(assert (= b!4759548 b!4759538))

(assert (= (and b!4759549 ((_ is HashMap!4731) (cache!4573 thiss!28909))) b!4759548))

(assert (= b!4759549 b!4759540))

(assert (= start!486724 b!4759549))

(assert (= (and start!486724 condSetEmpty!27103) setIsEmpty!27103))

(assert (= (and start!486724 (not condSetEmpty!27103)) setNonEmpty!27103))

(assert (= setNonEmpty!27103 b!4759545))

(declare-fun m!5728868 () Bool)

(assert (=> b!4759543 m!5728868))

(declare-fun m!5728870 () Bool)

(assert (=> b!4759549 m!5728870))

(declare-fun m!5728872 () Bool)

(assert (=> b!4759540 m!5728872))

(declare-fun m!5728874 () Bool)

(assert (=> b!4759535 m!5728874))

(declare-fun m!5728876 () Bool)

(assert (=> b!4759535 m!5728876))

(declare-fun m!5728878 () Bool)

(assert (=> b!4759546 m!5728878))

(declare-fun m!5728880 () Bool)

(assert (=> b!4759546 m!5728880))

(declare-fun m!5728882 () Bool)

(assert (=> b!4759536 m!5728882))

(declare-fun m!5728884 () Bool)

(assert (=> b!4759536 m!5728884))

(declare-fun m!5728886 () Bool)

(assert (=> b!4759536 m!5728886))

(declare-fun m!5728888 () Bool)

(assert (=> b!4759539 m!5728888))

(declare-fun m!5728890 () Bool)

(assert (=> b!4759541 m!5728890))

(declare-fun m!5728892 () Bool)

(assert (=> mapNonEmpty!21551 m!5728892))

(declare-fun m!5728894 () Bool)

(assert (=> setNonEmpty!27103 m!5728894))

(declare-fun m!5728896 () Bool)

(assert (=> start!486724 m!5728896))

(declare-fun m!5728898 () Bool)

(assert (=> start!486724 m!5728898))

(check-sat (not b!4759535) (not b!4759536) (not b!4759544) (not b!4759543) (not b_next!130009) (not b!4759545) (not b_next!130007) (not setNonEmpty!27103) (not b!4759549) (not b!4759541) b_and!340921 (not b!4759546) (not b!4759539) b_and!340919 (not start!486724) (not b!4759540) (not mapNonEmpty!21551))
(check-sat b_and!340921 b_and!340919 (not b_next!130007) (not b_next!130009))
(get-model)

(declare-fun bs!1147039 () Bool)

(declare-fun b!4759557 () Bool)

(assert (= bs!1147039 (and b!4759557 b!4759536)))

(declare-fun lambda!223694 () Int)

(assert (=> bs!1147039 (= (= (totalInput!4490 thiss!28909) localTotalInput!8) (= lambda!223694 lambda!223691))))

(assert (=> b!4759557 true))

(declare-fun d!1521235 () Bool)

(declare-fun res!2018887 () Bool)

(declare-fun e!2969866 () Bool)

(assert (=> d!1521235 (=> (not res!2018887) (not e!2969866))))

(declare-fun valid!3847 (MutableMap!4731) Bool)

(assert (=> d!1521235 (= res!2018887 (valid!3847 (cache!4573 thiss!28909)))))

(assert (=> d!1521235 (= (validCacheMapFindLongestMatch!128 (cache!4573 thiss!28909) (totalInput!4490 thiss!28909)) e!2969866)))

(declare-fun b!4759556 () Bool)

(declare-fun res!2018888 () Bool)

(assert (=> b!4759556 (=> (not res!2018888) (not e!2969866))))

(declare-fun invariantList!1643 (List!53446) Bool)

(declare-datatypes ((ListMap!5707 0))(
  ( (ListMap!5708 (toList!6206 List!53446)) )
))
(declare-fun map!11859 (MutableMap!4731) ListMap!5707)

(assert (=> b!4759556 (= res!2018888 (invariantList!1643 (toList!6206 (map!11859 (cache!4573 thiss!28909)))))))

(declare-fun forall!11824 (List!53446 Int) Bool)

(assert (=> b!4759557 (= e!2969866 (forall!11824 (toList!6206 (map!11859 (cache!4573 thiss!28909))) lambda!223694))))

(assert (= (and d!1521235 res!2018887) b!4759556))

(assert (= (and b!4759556 res!2018888) b!4759557))

(declare-fun m!5728901 () Bool)

(assert (=> d!1521235 m!5728901))

(declare-fun m!5728903 () Bool)

(assert (=> b!4759556 m!5728903))

(declare-fun m!5728905 () Bool)

(assert (=> b!4759556 m!5728905))

(assert (=> b!4759557 m!5728903))

(declare-fun m!5728907 () Bool)

(assert (=> b!4759557 m!5728907))

(assert (=> b!4759543 d!1521235))

(declare-fun d!1521237 () Bool)

(declare-fun lambda!223697 () Int)

(declare-fun forall!11825 (List!53445 Int) Bool)

(assert (=> d!1521237 (= (inv!68820 setElem!27103) (forall!11825 (exprs!3435 setElem!27103) lambda!223697))))

(declare-fun bs!1147040 () Bool)

(assert (= bs!1147040 d!1521237))

(declare-fun m!5728909 () Bool)

(assert (=> bs!1147040 m!5728909))

(assert (=> setNonEmpty!27103 d!1521237))

(declare-fun d!1521239 () Bool)

(declare-fun c!812021 () Bool)

(assert (=> d!1521239 (= c!812021 ((_ is Node!14486) (c!812018 localTotalInput!8)))))

(declare-fun e!2969871 () Bool)

(assert (=> d!1521239 (= (inv!68819 (c!812018 localTotalInput!8)) e!2969871)))

(declare-fun b!4759564 () Bool)

(declare-fun inv!68821 (Conc!14486) Bool)

(assert (=> b!4759564 (= e!2969871 (inv!68821 (c!812018 localTotalInput!8)))))

(declare-fun b!4759565 () Bool)

(declare-fun e!2969872 () Bool)

(assert (=> b!4759565 (= e!2969871 e!2969872)))

(declare-fun res!2018891 () Bool)

(assert (=> b!4759565 (= res!2018891 (not ((_ is Leaf!23581) (c!812018 localTotalInput!8))))))

(assert (=> b!4759565 (=> res!2018891 e!2969872)))

(declare-fun b!4759566 () Bool)

(declare-fun inv!68822 (Conc!14486) Bool)

(assert (=> b!4759566 (= e!2969872 (inv!68822 (c!812018 localTotalInput!8)))))

(assert (= (and d!1521239 c!812021) b!4759564))

(assert (= (and d!1521239 (not c!812021)) b!4759565))

(assert (= (and b!4759565 (not res!2018891)) b!4759566))

(declare-fun m!5728911 () Bool)

(assert (=> b!4759564 m!5728911))

(declare-fun m!5728913 () Bool)

(assert (=> b!4759566 m!5728913))

(assert (=> b!4759541 d!1521239))

(declare-fun d!1521241 () Bool)

(assert (=> d!1521241 (= (array_inv!5667 (_keys!5182 (v!47374 (underlying!9901 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))) (bvsge (size!36095 (_keys!5182 (v!47374 (underlying!9901 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4759546 d!1521241))

(declare-fun d!1521243 () Bool)

(assert (=> d!1521243 (= (array_inv!5668 (_values!5155 (v!47374 (underlying!9901 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))) (bvsge (size!36096 (_values!5155 (v!47374 (underlying!9901 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4759546 d!1521243))

(declare-fun d!1521245 () Bool)

(declare-fun isBalanced!3906 (Conc!14486) Bool)

(assert (=> d!1521245 (= (inv!68817 (totalInput!4490 thiss!28909)) (isBalanced!3906 (c!812018 (totalInput!4490 thiss!28909))))))

(declare-fun bs!1147041 () Bool)

(assert (= bs!1147041 d!1521245))

(declare-fun m!5728915 () Bool)

(assert (=> bs!1147041 m!5728915))

(assert (=> b!4759549 d!1521245))

(declare-fun d!1521247 () Bool)

(declare-fun res!2018896 () Bool)

(declare-fun e!2969875 () Bool)

(assert (=> d!1521247 (=> (not res!2018896) (not e!2969875))))

(assert (=> d!1521247 (= res!2018896 (>= (_2!30916 (_1!30917 (tuple2!55247 lt!1924351 (apply!12527 (cache!4573 thiss!28909) lt!1924351)))) 0))))

(assert (=> d!1521247 (= (validCacheMapFindLongestMatchBody!21 (tuple2!55247 lt!1924351 (apply!12527 (cache!4573 thiss!28909) lt!1924351)) localTotalInput!8) e!2969875)))

(declare-fun b!4759571 () Bool)

(declare-fun res!2018897 () Bool)

(assert (=> b!4759571 (=> (not res!2018897) (not e!2969875))))

(assert (=> b!4759571 (= res!2018897 (<= (_2!30916 (_1!30917 (tuple2!55247 lt!1924351 (apply!12527 (cache!4573 thiss!28909) lt!1924351)))) (size!36097 localTotalInput!8)))))

(declare-fun b!4759572 () Bool)

(declare-fun findLongestMatchInnerZipperFastV2!71 ((InoxSet Context!5870) Int BalanceConc!28462 Int) Int)

(assert (=> b!4759572 (= e!2969875 (= (_2!30917 (tuple2!55247 lt!1924351 (apply!12527 (cache!4573 thiss!28909) lt!1924351))) (findLongestMatchInnerZipperFastV2!71 (_1!30916 (_1!30917 (tuple2!55247 lt!1924351 (apply!12527 (cache!4573 thiss!28909) lt!1924351)))) (_2!30916 (_1!30917 (tuple2!55247 lt!1924351 (apply!12527 (cache!4573 thiss!28909) lt!1924351)))) localTotalInput!8 (size!36097 localTotalInput!8))))))

(assert (= (and d!1521247 res!2018896) b!4759571))

(assert (= (and b!4759571 res!2018897) b!4759572))

(assert (=> b!4759571 m!5728888))

(assert (=> b!4759572 m!5728888))

(assert (=> b!4759572 m!5728888))

(declare-fun m!5728917 () Bool)

(assert (=> b!4759572 m!5728917))

(assert (=> b!4759536 d!1521247))

(declare-fun lt!1924421 () Int)

(declare-fun e!2969884 () Bool)

(declare-fun b!4759585 () Bool)

(declare-datatypes ((Option!12592 0))(
  ( (None!12591) (Some!12591 (v!47376 Int)) )
))
(declare-fun get!17951 (Option!12592) Int)

(declare-fun getValueByKey!2130 (List!53446 tuple2!55244) Option!12592)

(assert (=> b!4759585 (= e!2969884 (= lt!1924421 (get!17951 (getValueByKey!2130 (toList!6206 (map!11859 (cache!4573 thiss!28909))) lt!1924351))))))

(declare-fun lt!1924428 () (_ BitVec 64))

(declare-fun e!2969883 () Int)

(declare-fun b!4759586 () Bool)

(declare-datatypes ((Option!12593 0))(
  ( (None!12592) (Some!12592 (v!47377 tuple2!55246)) )
))
(declare-fun get!17952 (Option!12593) tuple2!55246)

(declare-fun getPair!615 (List!53446 tuple2!55244) Option!12593)

(declare-fun apply!12528 (MutLongMap!4847 (_ BitVec 64)) List!53446)

(assert (=> b!4759586 (= e!2969883 (_2!30917 (get!17952 (getPair!615 (apply!12528 (v!47375 (underlying!9902 (cache!4573 thiss!28909))) lt!1924428) lt!1924351))))))

(declare-fun hash!4516 (Hashable!6508 tuple2!55244) (_ BitVec 64))

(assert (=> b!4759586 (= lt!1924428 (hash!4516 (hashF!12318 (cache!4573 thiss!28909)) lt!1924351))))

(declare-fun c!812030 () Bool)

(declare-datatypes ((tuple2!55248 0))(
  ( (tuple2!55249 (_1!30918 (_ BitVec 64)) (_2!30918 List!53446)) )
))
(declare-datatypes ((List!53448 0))(
  ( (Nil!53324) (Cons!53324 (h!59735 tuple2!55248) (t!360806 List!53448)) )
))
(declare-fun contains!16642 (List!53448 tuple2!55248) Bool)

(declare-datatypes ((ListLongMap!4599 0))(
  ( (ListLongMap!4600 (toList!6207 List!53448)) )
))
(declare-fun map!11860 (MutLongMap!4847) ListLongMap!4599)

(assert (=> b!4759586 (= c!812030 (not (contains!16642 (toList!6207 (map!11860 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))) (tuple2!55249 lt!1924428 (apply!12528 (v!47375 (underlying!9902 (cache!4573 thiss!28909))) lt!1924428)))))))

(declare-fun lt!1924427 () Unit!137786)

(declare-fun e!2969882 () Unit!137786)

(assert (=> b!4759586 (= lt!1924427 e!2969882)))

(declare-fun lt!1924414 () Unit!137786)

(declare-fun lambda!223704 () Int)

(declare-fun forallContained!3825 (List!53448 Int tuple2!55248) Unit!137786)

(assert (=> b!4759586 (= lt!1924414 (forallContained!3825 (toList!6207 (map!11860 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))) lambda!223704 (tuple2!55249 lt!1924428 (apply!12528 (v!47375 (underlying!9902 (cache!4573 thiss!28909))) lt!1924428))))))

(declare-fun lt!1924438 () ListLongMap!4599)

(assert (=> b!4759586 (= lt!1924438 (map!11860 (v!47375 (underlying!9902 (cache!4573 thiss!28909)))))))

(declare-fun lt!1924416 () Unit!137786)

(declare-fun lemmaGetPairGetSameValueAsMap!47 (ListLongMap!4599 tuple2!55244 Int Hashable!6508) Unit!137786)

(assert (=> b!4759586 (= lt!1924416 (lemmaGetPairGetSameValueAsMap!47 lt!1924438 lt!1924351 (_2!30917 (get!17952 (getPair!615 (apply!12528 (v!47375 (underlying!9902 (cache!4573 thiss!28909))) lt!1924428) lt!1924351))) (hashF!12318 (cache!4573 thiss!28909))))))

(declare-fun lt!1924425 () Unit!137786)

(declare-fun lemmaInGenMapThenLongMapContainsHash!821 (ListLongMap!4599 tuple2!55244 Hashable!6508) Unit!137786)

(assert (=> b!4759586 (= lt!1924425 (lemmaInGenMapThenLongMapContainsHash!821 lt!1924438 lt!1924351 (hashF!12318 (cache!4573 thiss!28909))))))

(declare-fun contains!16643 (ListLongMap!4599 (_ BitVec 64)) Bool)

(assert (=> b!4759586 (contains!16643 lt!1924438 (hash!4516 (hashF!12318 (cache!4573 thiss!28909)) lt!1924351))))

(declare-fun lt!1924422 () Unit!137786)

(assert (=> b!4759586 (= lt!1924422 lt!1924425)))

(declare-fun lt!1924435 () (_ BitVec 64))

(assert (=> b!4759586 (= lt!1924435 (hash!4516 (hashF!12318 (cache!4573 thiss!28909)) lt!1924351))))

(declare-fun lt!1924415 () List!53446)

(declare-fun apply!12529 (ListLongMap!4599 (_ BitVec 64)) List!53446)

(assert (=> b!4759586 (= lt!1924415 (apply!12529 lt!1924438 (hash!4516 (hashF!12318 (cache!4573 thiss!28909)) lt!1924351)))))

(declare-fun lt!1924420 () Unit!137786)

(declare-fun lemmaGetValueImpliesTupleContained!420 (ListLongMap!4599 (_ BitVec 64) List!53446) Unit!137786)

(assert (=> b!4759586 (= lt!1924420 (lemmaGetValueImpliesTupleContained!420 lt!1924438 lt!1924435 lt!1924415))))

(assert (=> b!4759586 (contains!16642 (toList!6207 lt!1924438) (tuple2!55249 lt!1924435 lt!1924415))))

(declare-fun lt!1924429 () Unit!137786)

(assert (=> b!4759586 (= lt!1924429 lt!1924420)))

(declare-fun lt!1924432 () Unit!137786)

(assert (=> b!4759586 (= lt!1924432 (forallContained!3825 (toList!6207 lt!1924438) lambda!223704 (tuple2!55249 (hash!4516 (hashF!12318 (cache!4573 thiss!28909)) lt!1924351) (apply!12529 lt!1924438 (hash!4516 (hashF!12318 (cache!4573 thiss!28909)) lt!1924351)))))))

(declare-fun lt!1924440 () Unit!137786)

(declare-fun lemmaInGenMapThenGetPairDefined!411 (ListLongMap!4599 tuple2!55244 Hashable!6508) Unit!137786)

(assert (=> b!4759586 (= lt!1924440 (lemmaInGenMapThenGetPairDefined!411 lt!1924438 lt!1924351 (hashF!12318 (cache!4573 thiss!28909))))))

(declare-fun lt!1924433 () Unit!137786)

(assert (=> b!4759586 (= lt!1924433 (lemmaInGenMapThenLongMapContainsHash!821 lt!1924438 lt!1924351 (hashF!12318 (cache!4573 thiss!28909))))))

(declare-fun lt!1924431 () Unit!137786)

(assert (=> b!4759586 (= lt!1924431 lt!1924433)))

(declare-fun lt!1924437 () (_ BitVec 64))

(assert (=> b!4759586 (= lt!1924437 (hash!4516 (hashF!12318 (cache!4573 thiss!28909)) lt!1924351))))

(declare-fun lt!1924430 () List!53446)

(assert (=> b!4759586 (= lt!1924430 (apply!12529 lt!1924438 (hash!4516 (hashF!12318 (cache!4573 thiss!28909)) lt!1924351)))))

(declare-fun lt!1924426 () Unit!137786)

(assert (=> b!4759586 (= lt!1924426 (lemmaGetValueImpliesTupleContained!420 lt!1924438 lt!1924437 lt!1924430))))

(assert (=> b!4759586 (contains!16642 (toList!6207 lt!1924438) (tuple2!55249 lt!1924437 lt!1924430))))

(declare-fun lt!1924424 () Unit!137786)

(assert (=> b!4759586 (= lt!1924424 lt!1924426)))

(declare-fun lt!1924442 () Unit!137786)

(assert (=> b!4759586 (= lt!1924442 (forallContained!3825 (toList!6207 lt!1924438) lambda!223704 (tuple2!55249 (hash!4516 (hashF!12318 (cache!4573 thiss!28909)) lt!1924351) (apply!12529 lt!1924438 (hash!4516 (hashF!12318 (cache!4573 thiss!28909)) lt!1924351)))))))

(declare-fun isDefined!9772 (Option!12593) Bool)

(assert (=> b!4759586 (isDefined!9772 (getPair!615 (apply!12529 lt!1924438 (hash!4516 (hashF!12318 (cache!4573 thiss!28909)) lt!1924351)) lt!1924351))))

(declare-fun lt!1924423 () Unit!137786)

(assert (=> b!4759586 (= lt!1924423 lt!1924440)))

(declare-fun extractMap!2115 (List!53448) ListMap!5707)

(assert (=> b!4759586 (= (_2!30917 (get!17952 (getPair!615 (apply!12529 lt!1924438 (hash!4516 (hashF!12318 (cache!4573 thiss!28909)) lt!1924351)) lt!1924351))) (get!17951 (getValueByKey!2130 (toList!6206 (extractMap!2115 (toList!6207 lt!1924438))) lt!1924351)))))

(declare-fun lt!1924413 () Unit!137786)

(assert (=> b!4759586 (= lt!1924413 lt!1924416)))

(declare-fun b!4759587 () Bool)

(declare-fun Unit!137788 () Unit!137786)

(assert (=> b!4759587 (= e!2969882 Unit!137788)))

(declare-fun b!4759588 () Bool)

(declare-fun dynLambda!21916 (Int tuple2!55244) Int)

(assert (=> b!4759588 (= e!2969884 (= lt!1924421 (dynLambda!21916 (defaultValue!4902 (cache!4573 thiss!28909)) lt!1924351)))))

(declare-fun b!4759589 () Bool)

(assert (=> b!4759589 false))

(declare-fun lt!1924419 () Unit!137786)

(declare-fun lt!1924441 () Unit!137786)

(assert (=> b!4759589 (= lt!1924419 lt!1924441)))

(declare-fun lt!1924434 () List!53448)

(declare-fun lt!1924417 () List!53446)

(assert (=> b!4759589 (contains!16642 lt!1924434 (tuple2!55249 lt!1924428 lt!1924417))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!893 (List!53448 (_ BitVec 64) List!53446) Unit!137786)

(assert (=> b!4759589 (= lt!1924441 (lemmaGetValueByKeyImpliesContainsTuple!893 lt!1924434 lt!1924428 lt!1924417))))

(assert (=> b!4759589 (= lt!1924417 (apply!12528 (v!47375 (underlying!9902 (cache!4573 thiss!28909))) lt!1924428))))

(assert (=> b!4759589 (= lt!1924434 (toList!6207 (map!11860 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))))

(declare-fun lt!1924439 () Unit!137786)

(declare-fun lt!1924436 () Unit!137786)

(assert (=> b!4759589 (= lt!1924439 lt!1924436)))

(declare-fun lt!1924418 () List!53448)

(declare-datatypes ((Option!12594 0))(
  ( (None!12593) (Some!12593 (v!47378 List!53446)) )
))
(declare-fun isDefined!9773 (Option!12594) Bool)

(declare-fun getValueByKey!2131 (List!53448 (_ BitVec 64)) Option!12594)

(assert (=> b!4759589 (isDefined!9773 (getValueByKey!2131 lt!1924418 lt!1924428))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1951 (List!53448 (_ BitVec 64)) Unit!137786)

(assert (=> b!4759589 (= lt!1924436 (lemmaContainsKeyImpliesGetValueByKeyDefined!1951 lt!1924418 lt!1924428))))

(assert (=> b!4759589 (= lt!1924418 (toList!6207 (map!11860 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))))

(declare-fun Unit!137789 () Unit!137786)

(assert (=> b!4759589 (= e!2969882 Unit!137789)))

(declare-fun b!4759590 () Bool)

(assert (=> b!4759590 (= e!2969883 (dynLambda!21916 (defaultValue!4902 (cache!4573 thiss!28909)) lt!1924351))))

(declare-fun d!1521249 () Bool)

(assert (=> d!1521249 e!2969884))

(declare-fun c!812029 () Bool)

(assert (=> d!1521249 (= c!812029 (contains!16641 (cache!4573 thiss!28909) lt!1924351))))

(assert (=> d!1521249 (= lt!1924421 e!2969883)))

(declare-fun c!812028 () Bool)

(assert (=> d!1521249 (= c!812028 (not (contains!16641 (cache!4573 thiss!28909) lt!1924351)))))

(assert (=> d!1521249 (valid!3847 (cache!4573 thiss!28909))))

(assert (=> d!1521249 (= (apply!12527 (cache!4573 thiss!28909) lt!1924351) lt!1924421)))

(assert (= (and d!1521249 c!812028) b!4759590))

(assert (= (and d!1521249 (not c!812028)) b!4759586))

(assert (= (and b!4759586 c!812030) b!4759589))

(assert (= (and b!4759586 (not c!812030)) b!4759587))

(assert (= (and d!1521249 c!812029) b!4759585))

(assert (= (and d!1521249 (not c!812029)) b!4759588))

(declare-fun b_lambda!183789 () Bool)

(assert (=> (not b_lambda!183789) (not b!4759588)))

(declare-fun t!360805 () Bool)

(declare-fun tb!257409 () Bool)

(assert (=> (and b!4759548 (= (defaultValue!4902 (cache!4573 thiss!28909)) (defaultValue!4902 (cache!4573 thiss!28909))) t!360805) tb!257409))

(declare-fun result!318902 () Bool)

(assert (=> tb!257409 (= result!318902 true)))

(assert (=> b!4759588 t!360805))

(declare-fun b_and!340923 () Bool)

(assert (= b_and!340921 (and (=> t!360805 result!318902) b_and!340923)))

(declare-fun b_lambda!183791 () Bool)

(assert (=> (not b_lambda!183791) (not b!4759590)))

(assert (=> b!4759590 t!360805))

(declare-fun b_and!340925 () Bool)

(assert (= b_and!340923 (and (=> t!360805 result!318902) b_and!340925)))

(assert (=> d!1521249 m!5728874))

(assert (=> d!1521249 m!5728901))

(declare-fun m!5728919 () Bool)

(assert (=> b!4759588 m!5728919))

(assert (=> b!4759590 m!5728919))

(declare-fun m!5728921 () Bool)

(assert (=> b!4759586 m!5728921))

(declare-fun m!5728923 () Bool)

(assert (=> b!4759586 m!5728923))

(declare-fun m!5728925 () Bool)

(assert (=> b!4759586 m!5728925))

(declare-fun m!5728927 () Bool)

(assert (=> b!4759586 m!5728927))

(declare-fun m!5728929 () Bool)

(assert (=> b!4759586 m!5728929))

(assert (=> b!4759586 m!5728925))

(declare-fun m!5728931 () Bool)

(assert (=> b!4759586 m!5728931))

(declare-fun m!5728933 () Bool)

(assert (=> b!4759586 m!5728933))

(declare-fun m!5728935 () Bool)

(assert (=> b!4759586 m!5728935))

(declare-fun m!5728937 () Bool)

(assert (=> b!4759586 m!5728937))

(declare-fun m!5728939 () Bool)

(assert (=> b!4759586 m!5728939))

(declare-fun m!5728941 () Bool)

(assert (=> b!4759586 m!5728941))

(declare-fun m!5728943 () Bool)

(assert (=> b!4759586 m!5728943))

(declare-fun m!5728945 () Bool)

(assert (=> b!4759586 m!5728945))

(assert (=> b!4759586 m!5728923))

(declare-fun m!5728947 () Bool)

(assert (=> b!4759586 m!5728947))

(declare-fun m!5728949 () Bool)

(assert (=> b!4759586 m!5728949))

(declare-fun m!5728951 () Bool)

(assert (=> b!4759586 m!5728951))

(assert (=> b!4759586 m!5728943))

(declare-fun m!5728953 () Bool)

(assert (=> b!4759586 m!5728953))

(declare-fun m!5728955 () Bool)

(assert (=> b!4759586 m!5728955))

(declare-fun m!5728957 () Bool)

(assert (=> b!4759586 m!5728957))

(assert (=> b!4759586 m!5728933))

(declare-fun m!5728959 () Bool)

(assert (=> b!4759586 m!5728959))

(assert (=> b!4759586 m!5728927))

(assert (=> b!4759586 m!5728943))

(assert (=> b!4759586 m!5728925))

(assert (=> b!4759586 m!5728935))

(declare-fun m!5728961 () Bool)

(assert (=> b!4759586 m!5728961))

(declare-fun m!5728963 () Bool)

(assert (=> b!4759586 m!5728963))

(assert (=> b!4759586 m!5728937))

(declare-fun m!5728965 () Bool)

(assert (=> b!4759586 m!5728965))

(declare-fun m!5728967 () Bool)

(assert (=> b!4759589 m!5728967))

(declare-fun m!5728969 () Bool)

(assert (=> b!4759589 m!5728969))

(assert (=> b!4759589 m!5728967))

(declare-fun m!5728971 () Bool)

(assert (=> b!4759589 m!5728971))

(declare-fun m!5728973 () Bool)

(assert (=> b!4759589 m!5728973))

(assert (=> b!4759589 m!5728957))

(declare-fun m!5728975 () Bool)

(assert (=> b!4759589 m!5728975))

(assert (=> b!4759589 m!5728935))

(assert (=> b!4759585 m!5728903))

(declare-fun m!5728977 () Bool)

(assert (=> b!4759585 m!5728977))

(assert (=> b!4759585 m!5728977))

(declare-fun m!5728979 () Bool)

(assert (=> b!4759585 m!5728979))

(assert (=> b!4759536 d!1521249))

(declare-fun d!1521251 () Bool)

(declare-fun dynLambda!21917 (Int tuple2!55246) Bool)

(assert (=> d!1521251 (dynLambda!21917 lambda!223691 (tuple2!55247 lt!1924351 (apply!12527 (cache!4573 thiss!28909) lt!1924351)))))

(declare-fun lt!1924445 () Unit!137786)

(declare-fun choose!33901 (MutableMap!4731 tuple2!55244 Int) Unit!137786)

(assert (=> d!1521251 (= lt!1924445 (choose!33901 (cache!4573 thiss!28909) lt!1924351 lambda!223691))))

(assert (=> d!1521251 (valid!3847 (cache!4573 thiss!28909))))

(assert (=> d!1521251 (= (lemmaForallPairsThenForLookup!68 (cache!4573 thiss!28909) lt!1924351 lambda!223691) lt!1924445)))

(declare-fun b_lambda!183793 () Bool)

(assert (=> (not b_lambda!183793) (not d!1521251)))

(declare-fun bs!1147042 () Bool)

(assert (= bs!1147042 d!1521251))

(assert (=> bs!1147042 m!5728882))

(declare-fun m!5728981 () Bool)

(assert (=> bs!1147042 m!5728981))

(declare-fun m!5728983 () Bool)

(assert (=> bs!1147042 m!5728983))

(assert (=> bs!1147042 m!5728901))

(assert (=> b!4759536 d!1521251))

(declare-fun d!1521253 () Bool)

(declare-fun c!812031 () Bool)

(assert (=> d!1521253 (= c!812031 ((_ is Node!14486) (c!812018 (totalInput!4490 thiss!28909))))))

(declare-fun e!2969885 () Bool)

(assert (=> d!1521253 (= (inv!68819 (c!812018 (totalInput!4490 thiss!28909))) e!2969885)))

(declare-fun b!4759591 () Bool)

(assert (=> b!4759591 (= e!2969885 (inv!68821 (c!812018 (totalInput!4490 thiss!28909))))))

(declare-fun b!4759592 () Bool)

(declare-fun e!2969886 () Bool)

(assert (=> b!4759592 (= e!2969885 e!2969886)))

(declare-fun res!2018898 () Bool)

(assert (=> b!4759592 (= res!2018898 (not ((_ is Leaf!23581) (c!812018 (totalInput!4490 thiss!28909)))))))

(assert (=> b!4759592 (=> res!2018898 e!2969886)))

(declare-fun b!4759593 () Bool)

(assert (=> b!4759593 (= e!2969886 (inv!68822 (c!812018 (totalInput!4490 thiss!28909))))))

(assert (= (and d!1521253 c!812031) b!4759591))

(assert (= (and d!1521253 (not c!812031)) b!4759592))

(assert (= (and b!4759592 (not res!2018898)) b!4759593))

(declare-fun m!5728985 () Bool)

(assert (=> b!4759591 m!5728985))

(declare-fun m!5728987 () Bool)

(assert (=> b!4759593 m!5728987))

(assert (=> b!4759540 d!1521253))

(declare-fun d!1521255 () Bool)

(assert (=> d!1521255 (= (inv!68817 localTotalInput!8) (isBalanced!3906 (c!812018 localTotalInput!8)))))

(declare-fun bs!1147043 () Bool)

(assert (= bs!1147043 d!1521255))

(declare-fun m!5728989 () Bool)

(assert (=> bs!1147043 m!5728989))

(assert (=> start!486724 d!1521255))

(declare-fun d!1521257 () Bool)

(declare-fun res!2018901 () Bool)

(declare-fun e!2969889 () Bool)

(assert (=> d!1521257 (=> (not res!2018901) (not e!2969889))))

(assert (=> d!1521257 (= res!2018901 ((_ is HashMap!4731) (cache!4573 thiss!28909)))))

(assert (=> d!1521257 (= (inv!68818 thiss!28909) e!2969889)))

(declare-fun b!4759596 () Bool)

(assert (=> b!4759596 (= e!2969889 (validCacheMapFindLongestMatch!128 (cache!4573 thiss!28909) (totalInput!4490 thiss!28909)))))

(assert (= (and d!1521257 res!2018901) b!4759596))

(assert (=> b!4759596 m!5728868))

(assert (=> start!486724 d!1521257))

(declare-fun bs!1147044 () Bool)

(declare-fun b!4759629 () Bool)

(assert (= bs!1147044 (and b!4759629 b!4759586)))

(declare-fun lambda!223707 () Int)

(assert (=> bs!1147044 (= lambda!223707 lambda!223704)))

(declare-fun b!4759619 () Bool)

(declare-fun e!2969910 () Unit!137786)

(declare-fun Unit!137790 () Unit!137786)

(assert (=> b!4759619 (= e!2969910 Unit!137790)))

(declare-fun b!4759620 () Bool)

(declare-fun e!2969908 () Bool)

(declare-fun lt!1924494 () (_ BitVec 64))

(assert (=> b!4759620 (= e!2969908 (isDefined!9772 (getPair!615 (apply!12528 (v!47375 (underlying!9902 (cache!4573 thiss!28909))) lt!1924494) lt!1924351)))))

(declare-fun b!4759621 () Bool)

(declare-fun e!2969906 () Unit!137786)

(assert (=> b!4759621 (= e!2969906 e!2969910)))

(declare-fun res!2018908 () Bool)

(declare-fun call!333672 () Bool)

(assert (=> b!4759621 (= res!2018908 call!333672)))

(declare-fun e!2969905 () Bool)

(assert (=> b!4759621 (=> (not res!2018908) (not e!2969905))))

(declare-fun c!812042 () Bool)

(assert (=> b!4759621 (= c!812042 e!2969905)))

(declare-fun b!4759622 () Bool)

(declare-fun e!2969909 () Unit!137786)

(declare-fun Unit!137791 () Unit!137786)

(assert (=> b!4759622 (= e!2969909 Unit!137791)))

(declare-fun bm!333666 () Bool)

(declare-fun call!333675 () (_ BitVec 64))

(assert (=> bm!333666 (= call!333675 (hash!4516 (hashF!12318 (cache!4573 thiss!28909)) lt!1924351))))

(declare-fun bm!333667 () Bool)

(declare-fun call!333674 () Bool)

(declare-fun call!333670 () Option!12593)

(assert (=> bm!333667 (= call!333674 (isDefined!9772 call!333670))))

(declare-fun b!4759623 () Bool)

(assert (=> b!4759623 false))

(declare-fun lt!1924490 () Unit!137786)

(declare-fun lt!1924495 () Unit!137786)

(assert (=> b!4759623 (= lt!1924490 lt!1924495)))

(declare-fun lt!1924502 () List!53448)

(declare-fun lt!1924486 () List!53446)

(assert (=> b!4759623 (contains!16642 lt!1924502 (tuple2!55249 lt!1924494 lt!1924486))))

(assert (=> b!4759623 (= lt!1924495 (lemmaGetValueByKeyImpliesContainsTuple!893 lt!1924502 lt!1924494 lt!1924486))))

(assert (=> b!4759623 (= lt!1924486 (apply!12528 (v!47375 (underlying!9902 (cache!4573 thiss!28909))) lt!1924494))))

(assert (=> b!4759623 (= lt!1924502 (toList!6207 (map!11860 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))))

(declare-fun lt!1924499 () Unit!137786)

(declare-fun lt!1924491 () Unit!137786)

(assert (=> b!4759623 (= lt!1924499 lt!1924491)))

(declare-fun lt!1924500 () List!53448)

(assert (=> b!4759623 (isDefined!9773 (getValueByKey!2131 lt!1924500 lt!1924494))))

(assert (=> b!4759623 (= lt!1924491 (lemmaContainsKeyImpliesGetValueByKeyDefined!1951 lt!1924500 lt!1924494))))

(assert (=> b!4759623 (= lt!1924500 (toList!6207 (map!11860 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))))

(declare-fun lt!1924493 () Unit!137786)

(declare-fun lt!1924492 () Unit!137786)

(assert (=> b!4759623 (= lt!1924493 lt!1924492)))

(declare-fun lt!1924489 () List!53448)

(declare-fun containsKey!3634 (List!53448 (_ BitVec 64)) Bool)

(assert (=> b!4759623 (containsKey!3634 lt!1924489 lt!1924494)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!180 (List!53448 (_ BitVec 64)) Unit!137786)

(assert (=> b!4759623 (= lt!1924492 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!180 lt!1924489 lt!1924494))))

(assert (=> b!4759623 (= lt!1924489 (toList!6207 (map!11860 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))))

(declare-fun e!2969904 () Unit!137786)

(declare-fun Unit!137792 () Unit!137786)

(assert (=> b!4759623 (= e!2969904 Unit!137792)))

(declare-fun b!4759624 () Bool)

(declare-fun e!2969907 () Bool)

(assert (=> b!4759624 (= e!2969907 call!333674)))

(declare-fun d!1521259 () Bool)

(declare-fun lt!1924498 () Bool)

(declare-fun contains!16644 (ListMap!5707 tuple2!55244) Bool)

(assert (=> d!1521259 (= lt!1924498 (contains!16644 (map!11859 (cache!4573 thiss!28909)) lt!1924351))))

(assert (=> d!1521259 (= lt!1924498 e!2969908)))

(declare-fun res!2018910 () Bool)

(assert (=> d!1521259 (=> (not res!2018910) (not e!2969908))))

(declare-fun contains!16645 (MutLongMap!4847 (_ BitVec 64)) Bool)

(assert (=> d!1521259 (= res!2018910 (contains!16645 (v!47375 (underlying!9902 (cache!4573 thiss!28909))) lt!1924494))))

(declare-fun lt!1924496 () Unit!137786)

(assert (=> d!1521259 (= lt!1924496 e!2969906)))

(declare-fun c!812043 () Bool)

(assert (=> d!1521259 (= c!812043 (contains!16644 (extractMap!2115 (toList!6207 (map!11860 (v!47375 (underlying!9902 (cache!4573 thiss!28909)))))) lt!1924351))))

(declare-fun lt!1924501 () Unit!137786)

(assert (=> d!1521259 (= lt!1924501 e!2969909)))

(declare-fun c!812041 () Bool)

(assert (=> d!1521259 (= c!812041 (contains!16645 (v!47375 (underlying!9902 (cache!4573 thiss!28909))) lt!1924494))))

(assert (=> d!1521259 (= lt!1924494 (hash!4516 (hashF!12318 (cache!4573 thiss!28909)) lt!1924351))))

(assert (=> d!1521259 (valid!3847 (cache!4573 thiss!28909))))

(assert (=> d!1521259 (= (contains!16641 (cache!4573 thiss!28909) lt!1924351) lt!1924498)))

(declare-fun call!333673 () ListLongMap!4599)

(declare-fun call!333671 () List!53446)

(declare-fun lt!1924504 () ListLongMap!4599)

(declare-fun bm!333665 () Bool)

(assert (=> bm!333665 (= call!333671 (apply!12529 (ite c!812043 lt!1924504 call!333673) call!333675))))

(declare-fun b!4759625 () Bool)

(assert (=> b!4759625 false))

(declare-fun lt!1924503 () Unit!137786)

(declare-fun lt!1924487 () Unit!137786)

(assert (=> b!4759625 (= lt!1924503 lt!1924487)))

(declare-fun lt!1924488 () ListLongMap!4599)

(assert (=> b!4759625 (contains!16644 (extractMap!2115 (toList!6207 lt!1924488)) lt!1924351)))

(declare-fun lemmaInLongMapThenInGenericMap!179 (ListLongMap!4599 tuple2!55244 Hashable!6508) Unit!137786)

(assert (=> b!4759625 (= lt!1924487 (lemmaInLongMapThenInGenericMap!179 lt!1924488 lt!1924351 (hashF!12318 (cache!4573 thiss!28909))))))

(assert (=> b!4759625 (= lt!1924488 call!333673)))

(declare-fun Unit!137793 () Unit!137786)

(assert (=> b!4759625 (= e!2969910 Unit!137793)))

(declare-fun bm!333668 () Bool)

(assert (=> bm!333668 (= call!333673 (map!11860 (v!47375 (underlying!9902 (cache!4573 thiss!28909)))))))

(declare-fun b!4759626 () Bool)

(declare-fun Unit!137794 () Unit!137786)

(assert (=> b!4759626 (= e!2969904 Unit!137794)))

(declare-fun b!4759627 () Bool)

(assert (=> b!4759627 (= e!2969905 call!333674)))

(declare-fun b!4759628 () Bool)

(declare-fun lt!1924505 () Unit!137786)

(assert (=> b!4759628 (= e!2969906 lt!1924505)))

(assert (=> b!4759628 (= lt!1924504 call!333673)))

(declare-fun lemmaInGenericMapThenInLongMap!179 (ListLongMap!4599 tuple2!55244 Hashable!6508) Unit!137786)

(assert (=> b!4759628 (= lt!1924505 (lemmaInGenericMapThenInLongMap!179 lt!1924504 lt!1924351 (hashF!12318 (cache!4573 thiss!28909))))))

(declare-fun res!2018909 () Bool)

(assert (=> b!4759628 (= res!2018909 call!333672)))

(assert (=> b!4759628 (=> (not res!2018909) (not e!2969907))))

(assert (=> b!4759628 e!2969907))

(declare-fun bm!333669 () Bool)

(assert (=> bm!333669 (= call!333672 (contains!16643 (ite c!812043 lt!1924504 call!333673) call!333675))))

(declare-fun bm!333670 () Bool)

(assert (=> bm!333670 (= call!333670 (getPair!615 call!333671 lt!1924351))))

(assert (=> b!4759629 (= e!2969909 (forallContained!3825 (toList!6207 (map!11860 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))) lambda!223707 (tuple2!55249 lt!1924494 (apply!12528 (v!47375 (underlying!9902 (cache!4573 thiss!28909))) lt!1924494))))))

(declare-fun c!812040 () Bool)

(assert (=> b!4759629 (= c!812040 (not (contains!16642 (toList!6207 (map!11860 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))) (tuple2!55249 lt!1924494 (apply!12528 (v!47375 (underlying!9902 (cache!4573 thiss!28909))) lt!1924494)))))))

(declare-fun lt!1924497 () Unit!137786)

(assert (=> b!4759629 (= lt!1924497 e!2969904)))

(assert (= (and d!1521259 c!812041) b!4759629))

(assert (= (and d!1521259 (not c!812041)) b!4759622))

(assert (= (and b!4759629 c!812040) b!4759623))

(assert (= (and b!4759629 (not c!812040)) b!4759626))

(assert (= (and d!1521259 c!812043) b!4759628))

(assert (= (and d!1521259 (not c!812043)) b!4759621))

(assert (= (and b!4759628 res!2018909) b!4759624))

(assert (= (and b!4759621 res!2018908) b!4759627))

(assert (= (and b!4759621 c!812042) b!4759625))

(assert (= (and b!4759621 (not c!812042)) b!4759619))

(assert (= (or b!4759628 b!4759624 b!4759621 b!4759627) bm!333666))

(assert (= (or b!4759628 b!4759621 b!4759627 b!4759625) bm!333668))

(assert (= (or b!4759628 b!4759621) bm!333669))

(assert (= (or b!4759624 b!4759627) bm!333665))

(assert (= (or b!4759624 b!4759627) bm!333670))

(assert (= (or b!4759624 b!4759627) bm!333667))

(assert (= (and d!1521259 res!2018910) b!4759620))

(declare-fun m!5728991 () Bool)

(assert (=> d!1521259 m!5728991))

(assert (=> d!1521259 m!5728903))

(declare-fun m!5728993 () Bool)

(assert (=> d!1521259 m!5728993))

(assert (=> d!1521259 m!5728903))

(assert (=> d!1521259 m!5728925))

(assert (=> d!1521259 m!5728957))

(assert (=> d!1521259 m!5728901))

(assert (=> d!1521259 m!5728991))

(declare-fun m!5728995 () Bool)

(assert (=> d!1521259 m!5728995))

(declare-fun m!5728997 () Bool)

(assert (=> d!1521259 m!5728997))

(assert (=> b!4759629 m!5728957))

(declare-fun m!5728999 () Bool)

(assert (=> b!4759629 m!5728999))

(declare-fun m!5729001 () Bool)

(assert (=> b!4759629 m!5729001))

(declare-fun m!5729003 () Bool)

(assert (=> b!4759629 m!5729003))

(declare-fun m!5729005 () Bool)

(assert (=> b!4759623 m!5729005))

(declare-fun m!5729007 () Bool)

(assert (=> b!4759623 m!5729007))

(assert (=> b!4759623 m!5728999))

(assert (=> b!4759623 m!5729005))

(declare-fun m!5729009 () Bool)

(assert (=> b!4759623 m!5729009))

(assert (=> b!4759623 m!5728957))

(declare-fun m!5729011 () Bool)

(assert (=> b!4759623 m!5729011))

(declare-fun m!5729013 () Bool)

(assert (=> b!4759623 m!5729013))

(declare-fun m!5729015 () Bool)

(assert (=> b!4759623 m!5729015))

(declare-fun m!5729017 () Bool)

(assert (=> b!4759623 m!5729017))

(declare-fun m!5729019 () Bool)

(assert (=> bm!333667 m!5729019))

(declare-fun m!5729021 () Bool)

(assert (=> b!4759628 m!5729021))

(assert (=> bm!333668 m!5728957))

(declare-fun m!5729023 () Bool)

(assert (=> bm!333670 m!5729023))

(declare-fun m!5729025 () Bool)

(assert (=> b!4759625 m!5729025))

(assert (=> b!4759625 m!5729025))

(declare-fun m!5729027 () Bool)

(assert (=> b!4759625 m!5729027))

(declare-fun m!5729029 () Bool)

(assert (=> b!4759625 m!5729029))

(assert (=> bm!333666 m!5728925))

(declare-fun m!5729031 () Bool)

(assert (=> bm!333665 m!5729031))

(declare-fun m!5729033 () Bool)

(assert (=> bm!333669 m!5729033))

(assert (=> b!4759620 m!5728999))

(assert (=> b!4759620 m!5728999))

(declare-fun m!5729035 () Bool)

(assert (=> b!4759620 m!5729035))

(assert (=> b!4759620 m!5729035))

(declare-fun m!5729037 () Bool)

(assert (=> b!4759620 m!5729037))

(assert (=> b!4759535 d!1521259))

(declare-fun bs!1147045 () Bool)

(declare-fun b!4759631 () Bool)

(assert (= bs!1147045 (and b!4759631 b!4759536)))

(declare-fun lambda!223708 () Int)

(assert (=> bs!1147045 (= lambda!223708 lambda!223691)))

(declare-fun bs!1147046 () Bool)

(assert (= bs!1147046 (and b!4759631 b!4759557)))

(assert (=> bs!1147046 (= (= localTotalInput!8 (totalInput!4490 thiss!28909)) (= lambda!223708 lambda!223694))))

(assert (=> b!4759631 true))

(declare-fun d!1521261 () Bool)

(declare-fun res!2018911 () Bool)

(declare-fun e!2969911 () Bool)

(assert (=> d!1521261 (=> (not res!2018911) (not e!2969911))))

(assert (=> d!1521261 (= res!2018911 (valid!3847 (cache!4573 thiss!28909)))))

(assert (=> d!1521261 (= (validCacheMapFindLongestMatch!128 (cache!4573 thiss!28909) localTotalInput!8) e!2969911)))

(declare-fun b!4759630 () Bool)

(declare-fun res!2018912 () Bool)

(assert (=> b!4759630 (=> (not res!2018912) (not e!2969911))))

(assert (=> b!4759630 (= res!2018912 (invariantList!1643 (toList!6206 (map!11859 (cache!4573 thiss!28909)))))))

(assert (=> b!4759631 (= e!2969911 (forall!11824 (toList!6206 (map!11859 (cache!4573 thiss!28909))) lambda!223708))))

(assert (= (and d!1521261 res!2018911) b!4759630))

(assert (= (and b!4759630 res!2018912) b!4759631))

(assert (=> d!1521261 m!5728901))

(assert (=> b!4759630 m!5728903))

(assert (=> b!4759630 m!5728905))

(assert (=> b!4759631 m!5728903))

(declare-fun m!5729039 () Bool)

(assert (=> b!4759631 m!5729039))

(assert (=> b!4759535 d!1521261))

(declare-fun d!1521263 () Bool)

(declare-fun lt!1924508 () Int)

(declare-fun size!36098 (List!53447) Int)

(declare-fun list!17378 (BalanceConc!28462) List!53447)

(assert (=> d!1521263 (= lt!1924508 (size!36098 (list!17378 localTotalInput!8)))))

(declare-fun size!36099 (Conc!14486) Int)

(assert (=> d!1521263 (= lt!1924508 (size!36099 (c!812018 localTotalInput!8)))))

(assert (=> d!1521263 (= (size!36097 localTotalInput!8) lt!1924508)))

(declare-fun bs!1147047 () Bool)

(assert (= bs!1147047 d!1521263))

(declare-fun m!5729041 () Bool)

(assert (=> bs!1147047 m!5729041))

(assert (=> bs!1147047 m!5729041))

(declare-fun m!5729043 () Bool)

(assert (=> bs!1147047 m!5729043))

(declare-fun m!5729045 () Bool)

(assert (=> bs!1147047 m!5729045))

(assert (=> b!4759539 d!1521263))

(declare-fun condSetEmpty!27106 () Bool)

(assert (=> setNonEmpty!27103 (= condSetEmpty!27106 (= setRest!27103 ((as const (Array Context!5870 Bool)) false)))))

(declare-fun setRes!27106 () Bool)

(assert (=> setNonEmpty!27103 (= tp!1352837 setRes!27106)))

(declare-fun setIsEmpty!27106 () Bool)

(assert (=> setIsEmpty!27106 setRes!27106))

(declare-fun e!2969914 () Bool)

(declare-fun tp!1352843 () Bool)

(declare-fun setElem!27106 () Context!5870)

(declare-fun setNonEmpty!27106 () Bool)

(assert (=> setNonEmpty!27106 (= setRes!27106 (and tp!1352843 (inv!68820 setElem!27106) e!2969914))))

(declare-fun setRest!27106 () (InoxSet Context!5870))

(assert (=> setNonEmpty!27106 (= setRest!27103 ((_ map or) (store ((as const (Array Context!5870 Bool)) false) setElem!27106 true) setRest!27106))))

(declare-fun b!4759636 () Bool)

(declare-fun tp!1352842 () Bool)

(assert (=> b!4759636 (= e!2969914 tp!1352842)))

(assert (= (and setNonEmpty!27103 condSetEmpty!27106) setIsEmpty!27106))

(assert (= (and setNonEmpty!27103 (not condSetEmpty!27106)) setNonEmpty!27106))

(assert (= setNonEmpty!27106 b!4759636))

(declare-fun m!5729047 () Bool)

(assert (=> setNonEmpty!27106 m!5729047))

(declare-fun tp!1352850 () Bool)

(declare-fun e!2969919 () Bool)

(declare-fun tp!1352851 () Bool)

(declare-fun b!4759645 () Bool)

(assert (=> b!4759645 (= e!2969919 (and (inv!68819 (left!39114 (c!812018 localTotalInput!8))) tp!1352851 (inv!68819 (right!39444 (c!812018 localTotalInput!8))) tp!1352850))))

(declare-fun b!4759647 () Bool)

(declare-fun e!2969920 () Bool)

(declare-fun tp!1352852 () Bool)

(assert (=> b!4759647 (= e!2969920 tp!1352852)))

(declare-fun b!4759646 () Bool)

(declare-fun inv!68823 (IArray!29033) Bool)

(assert (=> b!4759646 (= e!2969919 (and (inv!68823 (xs!17792 (c!812018 localTotalInput!8))) e!2969920))))

(assert (=> b!4759541 (= tp!1352834 (and (inv!68819 (c!812018 localTotalInput!8)) e!2969919))))

(assert (= (and b!4759541 ((_ is Node!14486) (c!812018 localTotalInput!8))) b!4759645))

(assert (= b!4759646 b!4759647))

(assert (= (and b!4759541 ((_ is Leaf!23581) (c!812018 localTotalInput!8))) b!4759646))

(declare-fun m!5729049 () Bool)

(assert (=> b!4759645 m!5729049))

(declare-fun m!5729051 () Bool)

(assert (=> b!4759645 m!5729051))

(declare-fun m!5729053 () Bool)

(assert (=> b!4759646 m!5729053))

(assert (=> b!4759541 m!5728890))

(declare-fun setIsEmpty!27109 () Bool)

(declare-fun setRes!27109 () Bool)

(assert (=> setIsEmpty!27109 setRes!27109))

(declare-fun e!2969925 () Bool)

(assert (=> b!4759546 (= tp!1352830 e!2969925)))

(declare-fun b!4759655 () Bool)

(declare-fun e!2969926 () Bool)

(declare-fun tp!1352861 () Bool)

(assert (=> b!4759655 (= e!2969926 tp!1352861)))

(declare-fun b!4759654 () Bool)

(declare-fun tp!1352859 () Bool)

(assert (=> b!4759654 (= e!2969925 (and setRes!27109 tp!1352859))))

(declare-fun condSetEmpty!27109 () Bool)

(assert (=> b!4759654 (= condSetEmpty!27109 (= (_1!30916 (_1!30917 (h!59733 (zeroValue!5130 (v!47374 (underlying!9901 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))))) ((as const (Array Context!5870 Bool)) false)))))

(declare-fun tp!1352860 () Bool)

(declare-fun setElem!27109 () Context!5870)

(declare-fun setNonEmpty!27109 () Bool)

(assert (=> setNonEmpty!27109 (= setRes!27109 (and tp!1352860 (inv!68820 setElem!27109) e!2969926))))

(declare-fun setRest!27109 () (InoxSet Context!5870))

(assert (=> setNonEmpty!27109 (= (_1!30916 (_1!30917 (h!59733 (zeroValue!5130 (v!47374 (underlying!9901 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5870 Bool)) false) setElem!27109 true) setRest!27109))))

(assert (= (and b!4759654 condSetEmpty!27109) setIsEmpty!27109))

(assert (= (and b!4759654 (not condSetEmpty!27109)) setNonEmpty!27109))

(assert (= setNonEmpty!27109 b!4759655))

(assert (= (and b!4759546 ((_ is Cons!53322) (zeroValue!5130 (v!47374 (underlying!9901 (v!47375 (underlying!9902 (cache!4573 thiss!28909)))))))) b!4759654))

(declare-fun m!5729055 () Bool)

(assert (=> setNonEmpty!27109 m!5729055))

(declare-fun setIsEmpty!27110 () Bool)

(declare-fun setRes!27110 () Bool)

(assert (=> setIsEmpty!27110 setRes!27110))

(declare-fun e!2969927 () Bool)

(assert (=> b!4759546 (= tp!1352833 e!2969927)))

(declare-fun b!4759657 () Bool)

(declare-fun e!2969928 () Bool)

(declare-fun tp!1352864 () Bool)

(assert (=> b!4759657 (= e!2969928 tp!1352864)))

(declare-fun b!4759656 () Bool)

(declare-fun tp!1352862 () Bool)

(assert (=> b!4759656 (= e!2969927 (and setRes!27110 tp!1352862))))

(declare-fun condSetEmpty!27110 () Bool)

(assert (=> b!4759656 (= condSetEmpty!27110 (= (_1!30916 (_1!30917 (h!59733 (minValue!5130 (v!47374 (underlying!9901 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))))) ((as const (Array Context!5870 Bool)) false)))))

(declare-fun tp!1352863 () Bool)

(declare-fun setElem!27110 () Context!5870)

(declare-fun setNonEmpty!27110 () Bool)

(assert (=> setNonEmpty!27110 (= setRes!27110 (and tp!1352863 (inv!68820 setElem!27110) e!2969928))))

(declare-fun setRest!27110 () (InoxSet Context!5870))

(assert (=> setNonEmpty!27110 (= (_1!30916 (_1!30917 (h!59733 (minValue!5130 (v!47374 (underlying!9901 (v!47375 (underlying!9902 (cache!4573 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5870 Bool)) false) setElem!27110 true) setRest!27110))))

(assert (= (and b!4759656 condSetEmpty!27110) setIsEmpty!27110))

(assert (= (and b!4759656 (not condSetEmpty!27110)) setNonEmpty!27110))

(assert (= setNonEmpty!27110 b!4759657))

(assert (= (and b!4759546 ((_ is Cons!53322) (minValue!5130 (v!47374 (underlying!9901 (v!47375 (underlying!9902 (cache!4573 thiss!28909)))))))) b!4759656))

(declare-fun m!5729057 () Bool)

(assert (=> setNonEmpty!27110 m!5729057))

(declare-fun e!2969929 () Bool)

(declare-fun tp!1352866 () Bool)

(declare-fun b!4759658 () Bool)

(declare-fun tp!1352865 () Bool)

(assert (=> b!4759658 (= e!2969929 (and (inv!68819 (left!39114 (c!812018 (totalInput!4490 thiss!28909)))) tp!1352866 (inv!68819 (right!39444 (c!812018 (totalInput!4490 thiss!28909)))) tp!1352865))))

(declare-fun b!4759660 () Bool)

(declare-fun e!2969930 () Bool)

(declare-fun tp!1352867 () Bool)

(assert (=> b!4759660 (= e!2969930 tp!1352867)))

(declare-fun b!4759659 () Bool)

(assert (=> b!4759659 (= e!2969929 (and (inv!68823 (xs!17792 (c!812018 (totalInput!4490 thiss!28909)))) e!2969930))))

(assert (=> b!4759540 (= tp!1352829 (and (inv!68819 (c!812018 (totalInput!4490 thiss!28909))) e!2969929))))

(assert (= (and b!4759540 ((_ is Node!14486) (c!812018 (totalInput!4490 thiss!28909)))) b!4759658))

(assert (= b!4759659 b!4759660))

(assert (= (and b!4759540 ((_ is Leaf!23581) (c!812018 (totalInput!4490 thiss!28909)))) b!4759659))

(declare-fun m!5729059 () Bool)

(assert (=> b!4759658 m!5729059))

(declare-fun m!5729061 () Bool)

(assert (=> b!4759658 m!5729061))

(declare-fun m!5729063 () Bool)

(assert (=> b!4759659 m!5729063))

(assert (=> b!4759540 m!5728872))

(declare-fun b!4759665 () Bool)

(declare-fun e!2969933 () Bool)

(declare-fun tp!1352872 () Bool)

(declare-fun tp!1352873 () Bool)

(assert (=> b!4759665 (= e!2969933 (and tp!1352872 tp!1352873))))

(assert (=> b!4759545 (= tp!1352832 e!2969933)))

(assert (= (and b!4759545 ((_ is Cons!53321) (exprs!3435 setElem!27103))) b!4759665))

(declare-fun setIsEmpty!27111 () Bool)

(declare-fun setRes!27111 () Bool)

(assert (=> setIsEmpty!27111 setRes!27111))

(declare-fun e!2969934 () Bool)

(assert (=> b!4759544 (= tp!1352835 e!2969934)))

(declare-fun b!4759667 () Bool)

(declare-fun e!2969935 () Bool)

(declare-fun tp!1352876 () Bool)

(assert (=> b!4759667 (= e!2969935 tp!1352876)))

(declare-fun b!4759666 () Bool)

(declare-fun tp!1352874 () Bool)

(assert (=> b!4759666 (= e!2969934 (and setRes!27111 tp!1352874))))

(declare-fun condSetEmpty!27111 () Bool)

(assert (=> b!4759666 (= condSetEmpty!27111 (= (_1!30916 (_1!30917 (h!59733 mapDefault!21551))) ((as const (Array Context!5870 Bool)) false)))))

(declare-fun tp!1352875 () Bool)

(declare-fun setElem!27111 () Context!5870)

(declare-fun setNonEmpty!27111 () Bool)

(assert (=> setNonEmpty!27111 (= setRes!27111 (and tp!1352875 (inv!68820 setElem!27111) e!2969935))))

(declare-fun setRest!27111 () (InoxSet Context!5870))

(assert (=> setNonEmpty!27111 (= (_1!30916 (_1!30917 (h!59733 mapDefault!21551))) ((_ map or) (store ((as const (Array Context!5870 Bool)) false) setElem!27111 true) setRest!27111))))

(assert (= (and b!4759666 condSetEmpty!27111) setIsEmpty!27111))

(assert (= (and b!4759666 (not condSetEmpty!27111)) setNonEmpty!27111))

(assert (= setNonEmpty!27111 b!4759667))

(assert (= (and b!4759544 ((_ is Cons!53322) mapDefault!21551)) b!4759666))

(declare-fun m!5729065 () Bool)

(assert (=> setNonEmpty!27111 m!5729065))

(declare-fun b!4759678 () Bool)

(declare-fun e!2969944 () Bool)

(declare-fun tp!1352894 () Bool)

(assert (=> b!4759678 (= e!2969944 tp!1352894)))

(declare-fun b!4759679 () Bool)

(declare-fun e!2969946 () Bool)

(declare-fun setRes!27117 () Bool)

(declare-fun tp!1352896 () Bool)

(assert (=> b!4759679 (= e!2969946 (and setRes!27117 tp!1352896))))

(declare-fun condSetEmpty!27116 () Bool)

(declare-fun mapDefault!21554 () List!53446)

(assert (=> b!4759679 (= condSetEmpty!27116 (= (_1!30916 (_1!30917 (h!59733 mapDefault!21554))) ((as const (Array Context!5870 Bool)) false)))))

(declare-fun b!4759680 () Bool)

(declare-fun e!2969945 () Bool)

(declare-fun setRes!27116 () Bool)

(declare-fun tp!1352891 () Bool)

(assert (=> b!4759680 (= e!2969945 (and setRes!27116 tp!1352891))))

(declare-fun condSetEmpty!27117 () Bool)

(declare-fun mapValue!21554 () List!53446)

(assert (=> b!4759680 (= condSetEmpty!27117 (= (_1!30916 (_1!30917 (h!59733 mapValue!21554))) ((as const (Array Context!5870 Bool)) false)))))

(declare-fun condMapEmpty!21554 () Bool)

(assert (=> mapNonEmpty!21551 (= condMapEmpty!21554 (= mapRest!21551 ((as const (Array (_ BitVec 32) List!53446)) mapDefault!21554)))))

(declare-fun mapRes!21554 () Bool)

(assert (=> mapNonEmpty!21551 (= tp!1352827 (and e!2969946 mapRes!21554))))

(declare-fun setElem!27117 () Context!5870)

(declare-fun setNonEmpty!27116 () Bool)

(declare-fun e!2969947 () Bool)

(declare-fun tp!1352897 () Bool)

(assert (=> setNonEmpty!27116 (= setRes!27117 (and tp!1352897 (inv!68820 setElem!27117) e!2969947))))

(declare-fun setRest!27117 () (InoxSet Context!5870))

(assert (=> setNonEmpty!27116 (= (_1!30916 (_1!30917 (h!59733 mapDefault!21554))) ((_ map or) (store ((as const (Array Context!5870 Bool)) false) setElem!27117 true) setRest!27117))))

(declare-fun tp!1352892 () Bool)

(declare-fun setNonEmpty!27117 () Bool)

(declare-fun setElem!27116 () Context!5870)

(assert (=> setNonEmpty!27117 (= setRes!27116 (and tp!1352892 (inv!68820 setElem!27116) e!2969944))))

(declare-fun setRest!27116 () (InoxSet Context!5870))

(assert (=> setNonEmpty!27117 (= (_1!30916 (_1!30917 (h!59733 mapValue!21554))) ((_ map or) (store ((as const (Array Context!5870 Bool)) false) setElem!27116 true) setRest!27116))))

(declare-fun mapIsEmpty!21554 () Bool)

(assert (=> mapIsEmpty!21554 mapRes!21554))

(declare-fun setIsEmpty!27116 () Bool)

(assert (=> setIsEmpty!27116 setRes!27117))

(declare-fun setIsEmpty!27117 () Bool)

(assert (=> setIsEmpty!27117 setRes!27116))

(declare-fun b!4759681 () Bool)

(declare-fun tp!1352895 () Bool)

(assert (=> b!4759681 (= e!2969947 tp!1352895)))

(declare-fun mapNonEmpty!21554 () Bool)

(declare-fun tp!1352893 () Bool)

(assert (=> mapNonEmpty!21554 (= mapRes!21554 (and tp!1352893 e!2969945))))

(declare-fun mapRest!21554 () (Array (_ BitVec 32) List!53446))

(declare-fun mapKey!21554 () (_ BitVec 32))

(assert (=> mapNonEmpty!21554 (= mapRest!21551 (store mapRest!21554 mapKey!21554 mapValue!21554))))

(assert (= (and mapNonEmpty!21551 condMapEmpty!21554) mapIsEmpty!21554))

(assert (= (and mapNonEmpty!21551 (not condMapEmpty!21554)) mapNonEmpty!21554))

(assert (= (and b!4759680 condSetEmpty!27117) setIsEmpty!27117))

(assert (= (and b!4759680 (not condSetEmpty!27117)) setNonEmpty!27117))

(assert (= setNonEmpty!27117 b!4759678))

(assert (= (and mapNonEmpty!21554 ((_ is Cons!53322) mapValue!21554)) b!4759680))

(assert (= (and b!4759679 condSetEmpty!27116) setIsEmpty!27116))

(assert (= (and b!4759679 (not condSetEmpty!27116)) setNonEmpty!27116))

(assert (= setNonEmpty!27116 b!4759681))

(assert (= (and mapNonEmpty!21551 ((_ is Cons!53322) mapDefault!21554)) b!4759679))

(declare-fun m!5729067 () Bool)

(assert (=> setNonEmpty!27116 m!5729067))

(declare-fun m!5729069 () Bool)

(assert (=> setNonEmpty!27117 m!5729069))

(declare-fun m!5729071 () Bool)

(assert (=> mapNonEmpty!21554 m!5729071))

(declare-fun setIsEmpty!27118 () Bool)

(declare-fun setRes!27118 () Bool)

(assert (=> setIsEmpty!27118 setRes!27118))

(declare-fun e!2969948 () Bool)

(assert (=> mapNonEmpty!21551 (= tp!1352831 e!2969948)))

(declare-fun b!4759683 () Bool)

(declare-fun e!2969949 () Bool)

(declare-fun tp!1352900 () Bool)

(assert (=> b!4759683 (= e!2969949 tp!1352900)))

(declare-fun b!4759682 () Bool)

(declare-fun tp!1352898 () Bool)

(assert (=> b!4759682 (= e!2969948 (and setRes!27118 tp!1352898))))

(declare-fun condSetEmpty!27118 () Bool)

(assert (=> b!4759682 (= condSetEmpty!27118 (= (_1!30916 (_1!30917 (h!59733 mapValue!21551))) ((as const (Array Context!5870 Bool)) false)))))

(declare-fun setElem!27118 () Context!5870)

(declare-fun setNonEmpty!27118 () Bool)

(declare-fun tp!1352899 () Bool)

(assert (=> setNonEmpty!27118 (= setRes!27118 (and tp!1352899 (inv!68820 setElem!27118) e!2969949))))

(declare-fun setRest!27118 () (InoxSet Context!5870))

(assert (=> setNonEmpty!27118 (= (_1!30916 (_1!30917 (h!59733 mapValue!21551))) ((_ map or) (store ((as const (Array Context!5870 Bool)) false) setElem!27118 true) setRest!27118))))

(assert (= (and b!4759682 condSetEmpty!27118) setIsEmpty!27118))

(assert (= (and b!4759682 (not condSetEmpty!27118)) setNonEmpty!27118))

(assert (= setNonEmpty!27118 b!4759683))

(assert (= (and mapNonEmpty!21551 ((_ is Cons!53322) mapValue!21551)) b!4759682))

(declare-fun m!5729073 () Bool)

(assert (=> setNonEmpty!27118 m!5729073))

(declare-fun b_lambda!183795 () Bool)

(assert (= b_lambda!183789 (or (and b!4759548 b_free!129305) b_lambda!183795)))

(declare-fun b_lambda!183797 () Bool)

(assert (= b_lambda!183793 (or b!4759536 b_lambda!183797)))

(declare-fun bs!1147048 () Bool)

(declare-fun d!1521265 () Bool)

(assert (= bs!1147048 (and d!1521265 b!4759536)))

(assert (=> bs!1147048 (= (dynLambda!21917 lambda!223691 (tuple2!55247 lt!1924351 (apply!12527 (cache!4573 thiss!28909) lt!1924351))) (validCacheMapFindLongestMatchBody!21 (tuple2!55247 lt!1924351 (apply!12527 (cache!4573 thiss!28909) lt!1924351)) localTotalInput!8))))

(assert (=> bs!1147048 m!5728884))

(assert (=> d!1521251 d!1521265))

(declare-fun b_lambda!183799 () Bool)

(assert (= b_lambda!183791 (or (and b!4759548 b_free!129305) b_lambda!183799)))

(check-sat (not b!4759566) b_and!340925 (not b!4759623) (not b!4759593) (not bm!333667) (not setNonEmpty!27111) (not b!4759628) (not b!4759585) (not d!1521261) (not b!4759631) (not setNonEmpty!27116) (not b!4759591) (not bm!333670) (not setNonEmpty!27106) (not mapNonEmpty!21554) (not b!4759646) (not b!4759596) (not setNonEmpty!27117) (not b!4759636) (not d!1521249) (not setNonEmpty!27109) (not d!1521263) (not b!4759647) (not b!4759659) (not b!4759586) (not b!4759658) (not b_lambda!183797) (not b!4759681) (not b!4759556) (not b_lambda!183795) (not setNonEmpty!27118) (not bs!1147048) (not bm!333668) b_and!340919 (not bm!333666) (not b!4759571) (not bm!333669) (not b_next!130009) (not d!1521245) (not b_lambda!183799) (not b!4759666) (not b!4759625) (not b_next!130007) (not d!1521251) (not b!4759657) (not setNonEmpty!27110) (not b!4759654) (not b!4759680) (not b!4759564) (not b!4759541) (not b!4759655) (not b!4759682) (not b!4759679) (not b!4759589) (not bm!333665) (not b!4759667) (not d!1521237) (not b!4759630) (not b!4759665) (not b!4759540) (not b!4759557) (not b!4759620) (not d!1521259) (not b!4759572) (not b!4759629) (not b!4759645) (not d!1521235) (not b!4759678) (not b!4759683) (not d!1521255) (not b!4759660) (not b!4759656))
(check-sat b_and!340925 b_and!340919 (not b_next!130007) (not b_next!130009))
