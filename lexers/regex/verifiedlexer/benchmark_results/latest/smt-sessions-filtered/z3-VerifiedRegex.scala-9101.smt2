; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486852 () Bool)

(assert start!486852)

(declare-fun b!4760712 () Bool)

(declare-fun b_free!129359 () Bool)

(declare-fun b_next!130063 () Bool)

(assert (=> b!4760712 (= b_free!129359 (not b_next!130063))))

(declare-fun tp!1353599 () Bool)

(declare-fun b_and!340983 () Bool)

(assert (=> b!4760712 (= tp!1353599 b_and!340983)))

(declare-fun b!4760717 () Bool)

(declare-fun b_free!129361 () Bool)

(declare-fun b_next!130065 () Bool)

(assert (=> b!4760717 (= b_free!129361 (not b_next!130065))))

(declare-fun tp!1353597 () Bool)

(declare-fun b_and!340985 () Bool)

(assert (=> b!4760717 (= tp!1353597 b_and!340985)))

(declare-fun res!2019169 () Bool)

(declare-fun e!2970795 () Bool)

(assert (=> start!486852 (=> (not res!2019169) (not e!2970795))))

(declare-datatypes ((C!26316 0))(
  ( (C!26317 (val!20146 Int)) )
))
(declare-datatypes ((List!53492 0))(
  ( (Nil!53368) (Cons!53368 (h!59779 C!26316) (t!360852 List!53492)) )
))
(declare-datatypes ((IArray!29061 0))(
  ( (IArray!29062 (innerList!14588 List!53492)) )
))
(declare-datatypes ((Conc!14500 0))(
  ( (Node!14500 (left!39145 Conc!14500) (right!39475 Conc!14500) (csize!29230 Int) (cheight!14711 Int)) (Leaf!23602 (xs!17806 IArray!29061) (csize!29231 Int)) (Empty!14500) )
))
(declare-datatypes ((BalanceConc!28490 0))(
  ( (BalanceConc!28491 (c!812143 Conc!14500)) )
))
(declare-fun localTotalInput!8 () BalanceConc!28490)

(declare-datatypes ((Regex!13059 0))(
  ( (ElementMatch!13059 (c!812144 C!26316)) (Concat!21378 (regOne!26630 Regex!13059) (regTwo!26630 Regex!13059)) (EmptyExpr!13059) (Star!13059 (reg!13388 Regex!13059)) (EmptyLang!13059) (Union!13059 (regOne!26631 Regex!13059) (regTwo!26631 Regex!13059)) )
))
(declare-datatypes ((List!53493 0))(
  ( (Nil!53369) (Cons!53369 (h!59780 Regex!13059) (t!360853 List!53493)) )
))
(declare-datatypes ((Context!5898 0))(
  ( (Context!5899 (exprs!3449 List!53493)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55310 0))(
  ( (tuple2!55311 (_1!30949 (InoxSet Context!5898)) (_2!30949 Int)) )
))
(declare-datatypes ((tuple2!55312 0))(
  ( (tuple2!55313 (_1!30950 tuple2!55310) (_2!30950 Int)) )
))
(declare-datatypes ((List!53494 0))(
  ( (Nil!53370) (Cons!53370 (h!59781 tuple2!55312) (t!360854 List!53494)) )
))
(declare-datatypes ((Hashable!6522 0))(
  ( (HashableExt!6521 (__x!32331 Int)) )
))
(declare-datatypes ((array!17726 0))(
  ( (array!17727 (arr!7907 (Array (_ BitVec 32) (_ BitVec 64))) (size!36130 (_ BitVec 32))) )
))
(declare-datatypes ((array!17728 0))(
  ( (array!17729 (arr!7908 (Array (_ BitVec 32) List!53494)) (size!36131 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9722 0))(
  ( (LongMapFixedSize!9723 (defaultEntry!5275 Int) (mask!14577 (_ BitVec 32)) (extraKeys!5131 (_ BitVec 32)) (zeroValue!5144 List!53494) (minValue!5144 List!53494) (_size!9747 (_ BitVec 32)) (_keys!5196 array!17726) (_values!5169 array!17728) (_vacant!4926 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19209 0))(
  ( (Cell!19210 (v!47414 LongMapFixedSize!9722)) )
))
(declare-datatypes ((MutLongMap!4861 0))(
  ( (LongMap!4861 (underlying!9929 Cell!19209)) (MutLongMapExt!4860 (__x!32332 Int)) )
))
(declare-datatypes ((Cell!19211 0))(
  ( (Cell!19212 (v!47415 MutLongMap!4861)) )
))
(declare-datatypes ((MutableMap!4745 0))(
  ( (MutableMapExt!4744 (__x!32333 Int)) (HashMap!4745 (underlying!9930 Cell!19211) (hashF!12332 Hashable!6522) (_size!9748 (_ BitVec 32)) (defaultValue!4916 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!688 0))(
  ( (CacheFindLongestMatch!689 (cache!4587 MutableMap!4745) (totalInput!4511 BalanceConc!28490)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!688)

(assert (=> start!486852 (= res!2019169 (= localTotalInput!8 (totalInput!4511 thiss!28909)))))

(assert (=> start!486852 e!2970795))

(declare-fun e!2970787 () Bool)

(declare-fun inv!68901 (BalanceConc!28490) Bool)

(assert (=> start!486852 (and (inv!68901 localTotalInput!8) e!2970787)))

(declare-fun e!2970790 () Bool)

(declare-fun inv!68902 (CacheFindLongestMatch!688) Bool)

(assert (=> start!486852 (and (inv!68902 thiss!28909) e!2970790)))

(declare-fun condSetEmpty!27214 () Bool)

(declare-fun z!482 () (InoxSet Context!5898))

(assert (=> start!486852 (= condSetEmpty!27214 (= z!482 ((as const (Array Context!5898 Bool)) false)))))

(declare-fun setRes!27214 () Bool)

(assert (=> start!486852 setRes!27214))

(assert (=> start!486852 true))

(declare-fun b!4760706 () Bool)

(declare-fun e!2970789 () Bool)

(declare-fun tp!1353601 () Bool)

(declare-fun inv!68903 (Conc!14500) Bool)

(assert (=> b!4760706 (= e!2970789 (and (inv!68903 (c!812143 (totalInput!4511 thiss!28909))) tp!1353601))))

(declare-fun mapNonEmpty!21608 () Bool)

(declare-fun mapRes!21608 () Bool)

(declare-fun tp!1353592 () Bool)

(declare-fun tp!1353594 () Bool)

(assert (=> mapNonEmpty!21608 (= mapRes!21608 (and tp!1353592 tp!1353594))))

(declare-fun mapRest!21608 () (Array (_ BitVec 32) List!53494))

(declare-fun mapValue!21608 () List!53494)

(declare-fun mapKey!21608 () (_ BitVec 32))

(assert (=> mapNonEmpty!21608 (= (arr!7908 (_values!5169 (v!47414 (underlying!9929 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))))) (store mapRest!21608 mapKey!21608 mapValue!21608))))

(declare-fun b!4760707 () Bool)

(declare-fun res!2019168 () Bool)

(declare-fun e!2970786 () Bool)

(assert (=> b!4760707 (=> res!2019168 e!2970786)))

(get-info :version)

(assert (=> b!4760707 (= res!2019168 (not ((_ is HashMap!4745) (cache!4587 thiss!28909))))))

(declare-fun b!4760708 () Bool)

(declare-fun e!2970785 () Bool)

(declare-fun tp!1353602 () Bool)

(assert (=> b!4760708 (= e!2970785 tp!1353602)))

(declare-fun e!2970791 () Bool)

(declare-fun b!4760709 () Bool)

(assert (=> b!4760709 (= e!2970790 (and e!2970791 (inv!68901 (totalInput!4511 thiss!28909)) e!2970789))))

(declare-fun b!4760710 () Bool)

(declare-fun e!2970792 () Bool)

(declare-fun e!2970797 () Bool)

(assert (=> b!4760710 (= e!2970792 e!2970797)))

(declare-fun b!4760711 () Bool)

(declare-fun e!2970793 () Bool)

(declare-fun lt!1924904 () MutLongMap!4861)

(assert (=> b!4760711 (= e!2970793 (and e!2970792 ((_ is LongMap!4861) lt!1924904)))))

(assert (=> b!4760711 (= lt!1924904 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))))

(declare-fun tp!1353595 () Bool)

(declare-fun e!2970796 () Bool)

(declare-fun e!2970788 () Bool)

(declare-fun tp!1353598 () Bool)

(declare-fun array_inv!5691 (array!17726) Bool)

(declare-fun array_inv!5692 (array!17728) Bool)

(assert (=> b!4760712 (= e!2970796 (and tp!1353599 tp!1353598 tp!1353595 (array_inv!5691 (_keys!5196 (v!47414 (underlying!9929 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))))) (array_inv!5692 (_values!5169 (v!47414 (underlying!9929 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))))) e!2970788))))

(declare-fun b!4760713 () Bool)

(assert (=> b!4760713 (= e!2970795 (not e!2970786))))

(declare-fun res!2019170 () Bool)

(assert (=> b!4760713 (=> res!2019170 e!2970786)))

(declare-fun from!922 () Int)

(declare-fun contains!16672 (MutableMap!4745 tuple2!55310) Bool)

(assert (=> b!4760713 (= res!2019170 (not (contains!16672 (cache!4587 thiss!28909) (tuple2!55311 z!482 from!922))))))

(declare-fun validCacheMapFindLongestMatch!141 (MutableMap!4745 BalanceConc!28490) Bool)

(assert (=> b!4760713 (validCacheMapFindLongestMatch!141 (cache!4587 thiss!28909) localTotalInput!8)))

(declare-fun mapIsEmpty!21608 () Bool)

(assert (=> mapIsEmpty!21608 mapRes!21608))

(declare-fun b!4760714 () Bool)

(declare-fun tp!1353593 () Bool)

(assert (=> b!4760714 (= e!2970788 (and tp!1353593 mapRes!21608))))

(declare-fun condMapEmpty!21608 () Bool)

(declare-fun mapDefault!21608 () List!53494)

(assert (=> b!4760714 (= condMapEmpty!21608 (= (arr!7908 (_values!5169 (v!47414 (underlying!9929 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53494)) mapDefault!21608)))))

(declare-fun setIsEmpty!27214 () Bool)

(assert (=> setIsEmpty!27214 setRes!27214))

(declare-fun b!4760715 () Bool)

(assert (=> b!4760715 (= e!2970797 e!2970796)))

(declare-fun b!4760716 () Bool)

(declare-fun res!2019167 () Bool)

(assert (=> b!4760716 (=> (not res!2019167) (not e!2970795))))

(assert (=> b!4760716 (= res!2019167 (validCacheMapFindLongestMatch!141 (cache!4587 thiss!28909) (totalInput!4511 thiss!28909)))))

(assert (=> b!4760717 (= e!2970791 (and e!2970793 tp!1353597))))

(declare-fun b!4760718 () Bool)

(declare-fun valid!3857 (MutableMap!4745) Bool)

(assert (=> b!4760718 (= e!2970786 (valid!3857 (cache!4587 thiss!28909)))))

(declare-fun b!4760719 () Bool)

(declare-fun tp!1353596 () Bool)

(assert (=> b!4760719 (= e!2970787 (and (inv!68903 (c!812143 localTotalInput!8)) tp!1353596))))

(declare-fun setNonEmpty!27214 () Bool)

(declare-fun tp!1353600 () Bool)

(declare-fun setElem!27214 () Context!5898)

(declare-fun inv!68904 (Context!5898) Bool)

(assert (=> setNonEmpty!27214 (= setRes!27214 (and tp!1353600 (inv!68904 setElem!27214) e!2970785))))

(declare-fun setRest!27214 () (InoxSet Context!5898))

(assert (=> setNonEmpty!27214 (= z!482 ((_ map or) (store ((as const (Array Context!5898 Bool)) false) setElem!27214 true) setRest!27214))))

(assert (= (and start!486852 res!2019169) b!4760716))

(assert (= (and b!4760716 res!2019167) b!4760713))

(assert (= (and b!4760713 (not res!2019170)) b!4760707))

(assert (= (and b!4760707 (not res!2019168)) b!4760718))

(assert (= start!486852 b!4760719))

(assert (= (and b!4760714 condMapEmpty!21608) mapIsEmpty!21608))

(assert (= (and b!4760714 (not condMapEmpty!21608)) mapNonEmpty!21608))

(assert (= b!4760712 b!4760714))

(assert (= b!4760715 b!4760712))

(assert (= b!4760710 b!4760715))

(assert (= (and b!4760711 ((_ is LongMap!4861) (v!47415 (underlying!9930 (cache!4587 thiss!28909))))) b!4760710))

(assert (= b!4760717 b!4760711))

(assert (= (and b!4760709 ((_ is HashMap!4745) (cache!4587 thiss!28909))) b!4760717))

(assert (= b!4760709 b!4760706))

(assert (= start!486852 b!4760709))

(assert (= (and start!486852 condSetEmpty!27214) setIsEmpty!27214))

(assert (= (and start!486852 (not condSetEmpty!27214)) setNonEmpty!27214))

(assert (= setNonEmpty!27214 b!4760708))

(declare-fun m!5729903 () Bool)

(assert (=> b!4760713 m!5729903))

(declare-fun m!5729905 () Bool)

(assert (=> b!4760713 m!5729905))

(declare-fun m!5729907 () Bool)

(assert (=> start!486852 m!5729907))

(declare-fun m!5729909 () Bool)

(assert (=> start!486852 m!5729909))

(declare-fun m!5729911 () Bool)

(assert (=> setNonEmpty!27214 m!5729911))

(declare-fun m!5729913 () Bool)

(assert (=> b!4760719 m!5729913))

(declare-fun m!5729915 () Bool)

(assert (=> b!4760718 m!5729915))

(declare-fun m!5729917 () Bool)

(assert (=> b!4760712 m!5729917))

(declare-fun m!5729919 () Bool)

(assert (=> b!4760712 m!5729919))

(declare-fun m!5729921 () Bool)

(assert (=> b!4760706 m!5729921))

(declare-fun m!5729923 () Bool)

(assert (=> mapNonEmpty!21608 m!5729923))

(declare-fun m!5729925 () Bool)

(assert (=> b!4760716 m!5729925))

(declare-fun m!5729927 () Bool)

(assert (=> b!4760709 m!5729927))

(check-sat (not b!4760712) (not start!486852) (not b!4760718) (not mapNonEmpty!21608) (not b_next!130063) (not b!4760716) (not b!4760713) (not b!4760714) (not b!4760709) (not b!4760708) (not b_next!130065) (not setNonEmpty!27214) b_and!340985 (not b!4760719) (not b!4760706) b_and!340983)
(check-sat b_and!340985 b_and!340983 (not b_next!130063) (not b_next!130065))
(get-model)

(declare-fun b!4760725 () Bool)

(assert (=> b!4760725 true))

(declare-fun d!1521376 () Bool)

(declare-fun res!2019175 () Bool)

(declare-fun e!2970800 () Bool)

(assert (=> d!1521376 (=> (not res!2019175) (not e!2970800))))

(assert (=> d!1521376 (= res!2019175 (valid!3857 (cache!4587 thiss!28909)))))

(assert (=> d!1521376 (= (validCacheMapFindLongestMatch!141 (cache!4587 thiss!28909) (totalInput!4511 thiss!28909)) e!2970800)))

(declare-fun b!4760724 () Bool)

(declare-fun res!2019176 () Bool)

(assert (=> b!4760724 (=> (not res!2019176) (not e!2970800))))

(declare-fun invariantList!1648 (List!53494) Bool)

(declare-datatypes ((ListMap!5717 0))(
  ( (ListMap!5718 (toList!6216 List!53494)) )
))
(declare-fun map!11876 (MutableMap!4745) ListMap!5717)

(assert (=> b!4760724 (= res!2019176 (invariantList!1648 (toList!6216 (map!11876 (cache!4587 thiss!28909)))))))

(declare-fun lambda!223770 () Int)

(declare-fun forall!11836 (List!53494 Int) Bool)

(assert (=> b!4760725 (= e!2970800 (forall!11836 (toList!6216 (map!11876 (cache!4587 thiss!28909))) lambda!223770))))

(assert (= (and d!1521376 res!2019175) b!4760724))

(assert (= (and b!4760724 res!2019176) b!4760725))

(assert (=> d!1521376 m!5729915))

(declare-fun m!5729930 () Bool)

(assert (=> b!4760724 m!5729930))

(declare-fun m!5729932 () Bool)

(assert (=> b!4760724 m!5729932))

(assert (=> b!4760725 m!5729930))

(declare-fun m!5729934 () Bool)

(assert (=> b!4760725 m!5729934))

(assert (=> b!4760716 d!1521376))

(declare-fun b!4760750 () Bool)

(declare-datatypes ((Unit!137827 0))(
  ( (Unit!137828) )
))
(declare-fun e!2970820 () Unit!137827)

(declare-fun e!2970815 () Unit!137827)

(assert (=> b!4760750 (= e!2970820 e!2970815)))

(declare-fun res!2019184 () Bool)

(declare-fun call!333765 () Bool)

(assert (=> b!4760750 (= res!2019184 call!333765)))

(declare-fun e!2970821 () Bool)

(assert (=> b!4760750 (=> (not res!2019184) (not e!2970821))))

(declare-fun c!812156 () Bool)

(assert (=> b!4760750 (= c!812156 e!2970821)))

(declare-fun b!4760751 () Bool)

(declare-fun e!2970819 () Unit!137827)

(declare-fun Unit!137829 () Unit!137827)

(assert (=> b!4760751 (= e!2970819 Unit!137829)))

(declare-fun b!4760752 () Bool)

(declare-fun Unit!137830 () Unit!137827)

(assert (=> b!4760752 (= e!2970815 Unit!137830)))

(declare-fun b!4760753 () Bool)

(assert (=> b!4760753 false))

(declare-fun lt!1924961 () Unit!137827)

(declare-fun lt!1924952 () Unit!137827)

(assert (=> b!4760753 (= lt!1924961 lt!1924952)))

(declare-datatypes ((tuple2!55314 0))(
  ( (tuple2!55315 (_1!30951 (_ BitVec 64)) (_2!30951 List!53494)) )
))
(declare-datatypes ((List!53495 0))(
  ( (Nil!53371) (Cons!53371 (h!59782 tuple2!55314) (t!360855 List!53495)) )
))
(declare-fun lt!1924962 () List!53495)

(declare-fun lt!1924953 () (_ BitVec 64))

(declare-fun lt!1924964 () List!53494)

(declare-fun contains!16673 (List!53495 tuple2!55314) Bool)

(assert (=> b!4760753 (contains!16673 lt!1924962 (tuple2!55315 lt!1924953 lt!1924964))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!898 (List!53495 (_ BitVec 64) List!53494) Unit!137827)

(assert (=> b!4760753 (= lt!1924952 (lemmaGetValueByKeyImpliesContainsTuple!898 lt!1924962 lt!1924953 lt!1924964))))

(declare-fun apply!12540 (MutLongMap!4861 (_ BitVec 64)) List!53494)

(assert (=> b!4760753 (= lt!1924964 (apply!12540 (v!47415 (underlying!9930 (cache!4587 thiss!28909))) lt!1924953))))

(declare-datatypes ((ListLongMap!4609 0))(
  ( (ListLongMap!4610 (toList!6217 List!53495)) )
))
(declare-fun map!11877 (MutLongMap!4861) ListLongMap!4609)

(assert (=> b!4760753 (= lt!1924962 (toList!6217 (map!11877 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))))))

(declare-fun lt!1924960 () Unit!137827)

(declare-fun lt!1924958 () Unit!137827)

(assert (=> b!4760753 (= lt!1924960 lt!1924958)))

(declare-fun lt!1924950 () List!53495)

(declare-datatypes ((Option!12604 0))(
  ( (None!12603) (Some!12603 (v!47416 List!53494)) )
))
(declare-fun isDefined!9782 (Option!12604) Bool)

(declare-fun getValueByKey!2137 (List!53495 (_ BitVec 64)) Option!12604)

(assert (=> b!4760753 (isDefined!9782 (getValueByKey!2137 lt!1924950 lt!1924953))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1956 (List!53495 (_ BitVec 64)) Unit!137827)

(assert (=> b!4760753 (= lt!1924958 (lemmaContainsKeyImpliesGetValueByKeyDefined!1956 lt!1924950 lt!1924953))))

(assert (=> b!4760753 (= lt!1924950 (toList!6217 (map!11877 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))))))

(declare-fun lt!1924946 () Unit!137827)

(declare-fun lt!1924945 () Unit!137827)

(assert (=> b!4760753 (= lt!1924946 lt!1924945)))

(declare-fun lt!1924955 () List!53495)

(declare-fun containsKey!3639 (List!53495 (_ BitVec 64)) Bool)

(assert (=> b!4760753 (containsKey!3639 lt!1924955 lt!1924953)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!185 (List!53495 (_ BitVec 64)) Unit!137827)

(assert (=> b!4760753 (= lt!1924945 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!185 lt!1924955 lt!1924953))))

(assert (=> b!4760753 (= lt!1924955 (toList!6217 (map!11877 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))))))

(declare-fun Unit!137831 () Unit!137827)

(assert (=> b!4760753 (= e!2970819 Unit!137831)))

(declare-fun bm!333755 () Bool)

(declare-fun call!333762 () ListLongMap!4609)

(assert (=> bm!333755 (= call!333762 (map!11877 (v!47415 (underlying!9930 (cache!4587 thiss!28909)))))))

(declare-fun b!4760754 () Bool)

(declare-fun e!2970817 () Bool)

(declare-datatypes ((Option!12605 0))(
  ( (None!12604) (Some!12604 (v!47417 tuple2!55312)) )
))
(declare-fun isDefined!9783 (Option!12605) Bool)

(declare-fun getPair!620 (List!53494 tuple2!55310) Option!12605)

(assert (=> b!4760754 (= e!2970817 (isDefined!9783 (getPair!620 (apply!12540 (v!47415 (underlying!9930 (cache!4587 thiss!28909))) lt!1924953) (tuple2!55311 z!482 from!922))))))

(declare-fun b!4760755 () Bool)

(declare-fun e!2970816 () Bool)

(declare-fun call!333761 () Bool)

(assert (=> b!4760755 (= e!2970816 call!333761)))

(declare-fun lt!1924951 () Bool)

(declare-fun d!1521378 () Bool)

(declare-fun contains!16674 (ListMap!5717 tuple2!55310) Bool)

(assert (=> d!1521378 (= lt!1924951 (contains!16674 (map!11876 (cache!4587 thiss!28909)) (tuple2!55311 z!482 from!922)))))

(assert (=> d!1521378 (= lt!1924951 e!2970817)))

(declare-fun res!2019183 () Bool)

(assert (=> d!1521378 (=> (not res!2019183) (not e!2970817))))

(declare-fun contains!16675 (MutLongMap!4861 (_ BitVec 64)) Bool)

(assert (=> d!1521378 (= res!2019183 (contains!16675 (v!47415 (underlying!9930 (cache!4587 thiss!28909))) lt!1924953))))

(declare-fun lt!1924947 () Unit!137827)

(assert (=> d!1521378 (= lt!1924947 e!2970820)))

(declare-fun c!812155 () Bool)

(declare-fun extractMap!2120 (List!53495) ListMap!5717)

(assert (=> d!1521378 (= c!812155 (contains!16674 (extractMap!2120 (toList!6217 (map!11877 (v!47415 (underlying!9930 (cache!4587 thiss!28909)))))) (tuple2!55311 z!482 from!922)))))

(declare-fun lt!1924963 () Unit!137827)

(declare-fun e!2970818 () Unit!137827)

(assert (=> d!1521378 (= lt!1924963 e!2970818)))

(declare-fun c!812154 () Bool)

(assert (=> d!1521378 (= c!812154 (contains!16675 (v!47415 (underlying!9930 (cache!4587 thiss!28909))) lt!1924953))))

(declare-fun hash!4521 (Hashable!6522 tuple2!55310) (_ BitVec 64))

(assert (=> d!1521378 (= lt!1924953 (hash!4521 (hashF!12332 (cache!4587 thiss!28909)) (tuple2!55311 z!482 from!922)))))

(assert (=> d!1521378 (valid!3857 (cache!4587 thiss!28909))))

(assert (=> d!1521378 (= (contains!16672 (cache!4587 thiss!28909) (tuple2!55311 z!482 from!922)) lt!1924951)))

(declare-fun b!4760756 () Bool)

(assert (=> b!4760756 (= e!2970821 call!333761)))

(declare-fun call!333760 () (_ BitVec 64))

(declare-fun bm!333756 () Bool)

(assert (=> bm!333756 (= call!333760 (hash!4521 (hashF!12332 (cache!4587 thiss!28909)) (tuple2!55311 z!482 from!922)))))

(declare-fun b!4760757 () Bool)

(declare-fun Unit!137832 () Unit!137827)

(assert (=> b!4760757 (= e!2970818 Unit!137832)))

(declare-fun b!4760758 () Bool)

(declare-fun lambda!223773 () Int)

(declare-fun forallContained!3830 (List!53495 Int tuple2!55314) Unit!137827)

(assert (=> b!4760758 (= e!2970818 (forallContained!3830 (toList!6217 (map!11877 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))) lambda!223773 (tuple2!55315 lt!1924953 (apply!12540 (v!47415 (underlying!9930 (cache!4587 thiss!28909))) lt!1924953))))))

(declare-fun c!812153 () Bool)

(assert (=> b!4760758 (= c!812153 (not (contains!16673 (toList!6217 (map!11877 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))) (tuple2!55315 lt!1924953 (apply!12540 (v!47415 (underlying!9930 (cache!4587 thiss!28909))) lt!1924953)))))))

(declare-fun lt!1924954 () Unit!137827)

(assert (=> b!4760758 (= lt!1924954 e!2970819)))

(declare-fun lt!1924959 () ListLongMap!4609)

(declare-fun bm!333757 () Bool)

(declare-fun contains!16676 (ListLongMap!4609 (_ BitVec 64)) Bool)

(assert (=> bm!333757 (= call!333765 (contains!16676 (ite c!812155 lt!1924959 call!333762) call!333760))))

(declare-fun bm!333758 () Bool)

(declare-fun call!333764 () Option!12605)

(assert (=> bm!333758 (= call!333761 (isDefined!9783 call!333764))))

(declare-fun b!4760759 () Bool)

(assert (=> b!4760759 false))

(declare-fun lt!1924956 () Unit!137827)

(declare-fun lt!1924949 () Unit!137827)

(assert (=> b!4760759 (= lt!1924956 lt!1924949)))

(declare-fun lt!1924948 () ListLongMap!4609)

(assert (=> b!4760759 (contains!16674 (extractMap!2120 (toList!6217 lt!1924948)) (tuple2!55311 z!482 from!922))))

(declare-fun lemmaInLongMapThenInGenericMap!184 (ListLongMap!4609 tuple2!55310 Hashable!6522) Unit!137827)

(assert (=> b!4760759 (= lt!1924949 (lemmaInLongMapThenInGenericMap!184 lt!1924948 (tuple2!55311 z!482 from!922) (hashF!12332 (cache!4587 thiss!28909))))))

(assert (=> b!4760759 (= lt!1924948 call!333762)))

(declare-fun Unit!137833 () Unit!137827)

(assert (=> b!4760759 (= e!2970815 Unit!137833)))

(declare-fun bm!333759 () Bool)

(declare-fun call!333763 () List!53494)

(assert (=> bm!333759 (= call!333764 (getPair!620 call!333763 (tuple2!55311 z!482 from!922)))))

(declare-fun b!4760760 () Bool)

(declare-fun lt!1924957 () Unit!137827)

(assert (=> b!4760760 (= e!2970820 lt!1924957)))

(assert (=> b!4760760 (= lt!1924959 call!333762)))

(declare-fun lemmaInGenericMapThenInLongMap!184 (ListLongMap!4609 tuple2!55310 Hashable!6522) Unit!137827)

(assert (=> b!4760760 (= lt!1924957 (lemmaInGenericMapThenInLongMap!184 lt!1924959 (tuple2!55311 z!482 from!922) (hashF!12332 (cache!4587 thiss!28909))))))

(declare-fun res!2019185 () Bool)

(assert (=> b!4760760 (= res!2019185 call!333765)))

(assert (=> b!4760760 (=> (not res!2019185) (not e!2970816))))

(assert (=> b!4760760 e!2970816))

(declare-fun bm!333760 () Bool)

(declare-fun apply!12541 (ListLongMap!4609 (_ BitVec 64)) List!53494)

(assert (=> bm!333760 (= call!333763 (apply!12541 (ite c!812155 lt!1924959 call!333762) call!333760))))

(assert (= (and d!1521378 c!812154) b!4760758))

(assert (= (and d!1521378 (not c!812154)) b!4760757))

(assert (= (and b!4760758 c!812153) b!4760753))

(assert (= (and b!4760758 (not c!812153)) b!4760751))

(assert (= (and d!1521378 c!812155) b!4760760))

(assert (= (and d!1521378 (not c!812155)) b!4760750))

(assert (= (and b!4760760 res!2019185) b!4760755))

(assert (= (and b!4760750 res!2019184) b!4760756))

(assert (= (and b!4760750 c!812156) b!4760759))

(assert (= (and b!4760750 (not c!812156)) b!4760752))

(assert (= (or b!4760760 b!4760750 b!4760756 b!4760759) bm!333755))

(assert (= (or b!4760760 b!4760755 b!4760750 b!4760756) bm!333756))

(assert (= (or b!4760755 b!4760756) bm!333760))

(assert (= (or b!4760760 b!4760750) bm!333757))

(assert (= (or b!4760755 b!4760756) bm!333759))

(assert (= (or b!4760755 b!4760756) bm!333758))

(assert (= (and d!1521378 res!2019183) b!4760754))

(declare-fun m!5729936 () Bool)

(assert (=> bm!333756 m!5729936))

(declare-fun m!5729938 () Bool)

(assert (=> bm!333759 m!5729938))

(declare-fun m!5729940 () Bool)

(assert (=> b!4760759 m!5729940))

(assert (=> b!4760759 m!5729940))

(declare-fun m!5729942 () Bool)

(assert (=> b!4760759 m!5729942))

(declare-fun m!5729944 () Bool)

(assert (=> b!4760759 m!5729944))

(declare-fun m!5729946 () Bool)

(assert (=> b!4760758 m!5729946))

(declare-fun m!5729948 () Bool)

(assert (=> b!4760758 m!5729948))

(declare-fun m!5729950 () Bool)

(assert (=> b!4760758 m!5729950))

(declare-fun m!5729952 () Bool)

(assert (=> b!4760758 m!5729952))

(declare-fun m!5729954 () Bool)

(assert (=> bm!333760 m!5729954))

(assert (=> bm!333755 m!5729946))

(declare-fun m!5729956 () Bool)

(assert (=> bm!333757 m!5729956))

(assert (=> b!4760754 m!5729948))

(assert (=> b!4760754 m!5729948))

(declare-fun m!5729958 () Bool)

(assert (=> b!4760754 m!5729958))

(assert (=> b!4760754 m!5729958))

(declare-fun m!5729960 () Bool)

(assert (=> b!4760754 m!5729960))

(assert (=> d!1521378 m!5729946))

(assert (=> d!1521378 m!5729930))

(assert (=> d!1521378 m!5729915))

(declare-fun m!5729962 () Bool)

(assert (=> d!1521378 m!5729962))

(assert (=> d!1521378 m!5729936))

(assert (=> d!1521378 m!5729930))

(declare-fun m!5729964 () Bool)

(assert (=> d!1521378 m!5729964))

(declare-fun m!5729966 () Bool)

(assert (=> d!1521378 m!5729966))

(assert (=> d!1521378 m!5729966))

(declare-fun m!5729968 () Bool)

(assert (=> d!1521378 m!5729968))

(declare-fun m!5729970 () Bool)

(assert (=> b!4760753 m!5729970))

(declare-fun m!5729972 () Bool)

(assert (=> b!4760753 m!5729972))

(declare-fun m!5729974 () Bool)

(assert (=> b!4760753 m!5729974))

(declare-fun m!5729976 () Bool)

(assert (=> b!4760753 m!5729976))

(declare-fun m!5729978 () Bool)

(assert (=> b!4760753 m!5729978))

(declare-fun m!5729980 () Bool)

(assert (=> b!4760753 m!5729980))

(assert (=> b!4760753 m!5729980))

(declare-fun m!5729982 () Bool)

(assert (=> b!4760753 m!5729982))

(assert (=> b!4760753 m!5729948))

(assert (=> b!4760753 m!5729946))

(declare-fun m!5729984 () Bool)

(assert (=> bm!333758 m!5729984))

(declare-fun m!5729986 () Bool)

(assert (=> b!4760760 m!5729986))

(assert (=> b!4760713 d!1521378))

(declare-fun bs!1147088 () Bool)

(declare-fun b!4760762 () Bool)

(assert (= bs!1147088 (and b!4760762 b!4760725)))

(declare-fun lambda!223774 () Int)

(assert (=> bs!1147088 (= (= localTotalInput!8 (totalInput!4511 thiss!28909)) (= lambda!223774 lambda!223770))))

(assert (=> b!4760762 true))

(declare-fun d!1521380 () Bool)

(declare-fun res!2019186 () Bool)

(declare-fun e!2970822 () Bool)

(assert (=> d!1521380 (=> (not res!2019186) (not e!2970822))))

(assert (=> d!1521380 (= res!2019186 (valid!3857 (cache!4587 thiss!28909)))))

(assert (=> d!1521380 (= (validCacheMapFindLongestMatch!141 (cache!4587 thiss!28909) localTotalInput!8) e!2970822)))

(declare-fun b!4760761 () Bool)

(declare-fun res!2019187 () Bool)

(assert (=> b!4760761 (=> (not res!2019187) (not e!2970822))))

(assert (=> b!4760761 (= res!2019187 (invariantList!1648 (toList!6216 (map!11876 (cache!4587 thiss!28909)))))))

(assert (=> b!4760762 (= e!2970822 (forall!11836 (toList!6216 (map!11876 (cache!4587 thiss!28909))) lambda!223774))))

(assert (= (and d!1521380 res!2019186) b!4760761))

(assert (= (and b!4760761 res!2019187) b!4760762))

(assert (=> d!1521380 m!5729915))

(assert (=> b!4760761 m!5729930))

(assert (=> b!4760761 m!5729932))

(assert (=> b!4760762 m!5729930))

(declare-fun m!5729988 () Bool)

(assert (=> b!4760762 m!5729988))

(assert (=> b!4760713 d!1521380))

(declare-fun d!1521382 () Bool)

(assert (=> d!1521382 (= (array_inv!5691 (_keys!5196 (v!47414 (underlying!9929 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))))) (bvsge (size!36130 (_keys!5196 (v!47414 (underlying!9929 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4760712 d!1521382))

(declare-fun d!1521384 () Bool)

(assert (=> d!1521384 (= (array_inv!5692 (_values!5169 (v!47414 (underlying!9929 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))))) (bvsge (size!36131 (_values!5169 (v!47414 (underlying!9929 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4760712 d!1521384))

(declare-fun d!1521386 () Bool)

(declare-fun lambda!223777 () Int)

(declare-fun forall!11837 (List!53493 Int) Bool)

(assert (=> d!1521386 (= (inv!68904 setElem!27214) (forall!11837 (exprs!3449 setElem!27214) lambda!223777))))

(declare-fun bs!1147089 () Bool)

(assert (= bs!1147089 d!1521386))

(declare-fun m!5729990 () Bool)

(assert (=> bs!1147089 m!5729990))

(assert (=> setNonEmpty!27214 d!1521386))

(declare-fun d!1521388 () Bool)

(declare-fun isBalanced!3911 (Conc!14500) Bool)

(assert (=> d!1521388 (= (inv!68901 localTotalInput!8) (isBalanced!3911 (c!812143 localTotalInput!8)))))

(declare-fun bs!1147090 () Bool)

(assert (= bs!1147090 d!1521388))

(declare-fun m!5729992 () Bool)

(assert (=> bs!1147090 m!5729992))

(assert (=> start!486852 d!1521388))

(declare-fun d!1521390 () Bool)

(declare-fun res!2019190 () Bool)

(declare-fun e!2970825 () Bool)

(assert (=> d!1521390 (=> (not res!2019190) (not e!2970825))))

(assert (=> d!1521390 (= res!2019190 ((_ is HashMap!4745) (cache!4587 thiss!28909)))))

(assert (=> d!1521390 (= (inv!68902 thiss!28909) e!2970825)))

(declare-fun b!4760765 () Bool)

(assert (=> b!4760765 (= e!2970825 (validCacheMapFindLongestMatch!141 (cache!4587 thiss!28909) (totalInput!4511 thiss!28909)))))

(assert (= (and d!1521390 res!2019190) b!4760765))

(assert (=> b!4760765 m!5729925))

(assert (=> start!486852 d!1521390))

(declare-fun d!1521392 () Bool)

(declare-fun c!812159 () Bool)

(assert (=> d!1521392 (= c!812159 ((_ is Node!14500) (c!812143 (totalInput!4511 thiss!28909))))))

(declare-fun e!2970830 () Bool)

(assert (=> d!1521392 (= (inv!68903 (c!812143 (totalInput!4511 thiss!28909))) e!2970830)))

(declare-fun b!4760772 () Bool)

(declare-fun inv!68905 (Conc!14500) Bool)

(assert (=> b!4760772 (= e!2970830 (inv!68905 (c!812143 (totalInput!4511 thiss!28909))))))

(declare-fun b!4760773 () Bool)

(declare-fun e!2970831 () Bool)

(assert (=> b!4760773 (= e!2970830 e!2970831)))

(declare-fun res!2019193 () Bool)

(assert (=> b!4760773 (= res!2019193 (not ((_ is Leaf!23602) (c!812143 (totalInput!4511 thiss!28909)))))))

(assert (=> b!4760773 (=> res!2019193 e!2970831)))

(declare-fun b!4760774 () Bool)

(declare-fun inv!68906 (Conc!14500) Bool)

(assert (=> b!4760774 (= e!2970831 (inv!68906 (c!812143 (totalInput!4511 thiss!28909))))))

(assert (= (and d!1521392 c!812159) b!4760772))

(assert (= (and d!1521392 (not c!812159)) b!4760773))

(assert (= (and b!4760773 (not res!2019193)) b!4760774))

(declare-fun m!5729994 () Bool)

(assert (=> b!4760772 m!5729994))

(declare-fun m!5729996 () Bool)

(assert (=> b!4760774 m!5729996))

(assert (=> b!4760706 d!1521392))

(declare-fun d!1521394 () Bool)

(declare-fun c!812160 () Bool)

(assert (=> d!1521394 (= c!812160 ((_ is Node!14500) (c!812143 localTotalInput!8)))))

(declare-fun e!2970832 () Bool)

(assert (=> d!1521394 (= (inv!68903 (c!812143 localTotalInput!8)) e!2970832)))

(declare-fun b!4760775 () Bool)

(assert (=> b!4760775 (= e!2970832 (inv!68905 (c!812143 localTotalInput!8)))))

(declare-fun b!4760776 () Bool)

(declare-fun e!2970833 () Bool)

(assert (=> b!4760776 (= e!2970832 e!2970833)))

(declare-fun res!2019194 () Bool)

(assert (=> b!4760776 (= res!2019194 (not ((_ is Leaf!23602) (c!812143 localTotalInput!8))))))

(assert (=> b!4760776 (=> res!2019194 e!2970833)))

(declare-fun b!4760777 () Bool)

(assert (=> b!4760777 (= e!2970833 (inv!68906 (c!812143 localTotalInput!8)))))

(assert (= (and d!1521394 c!812160) b!4760775))

(assert (= (and d!1521394 (not c!812160)) b!4760776))

(assert (= (and b!4760776 (not res!2019194)) b!4760777))

(declare-fun m!5729998 () Bool)

(assert (=> b!4760775 m!5729998))

(declare-fun m!5730000 () Bool)

(assert (=> b!4760777 m!5730000))

(assert (=> b!4760719 d!1521394))

(declare-fun bs!1147091 () Bool)

(declare-fun b!4760782 () Bool)

(assert (= bs!1147091 (and b!4760782 b!4760758)))

(declare-fun lambda!223780 () Int)

(assert (=> bs!1147091 (= lambda!223780 lambda!223773)))

(declare-fun d!1521396 () Bool)

(declare-fun res!2019199 () Bool)

(declare-fun e!2970836 () Bool)

(assert (=> d!1521396 (=> (not res!2019199) (not e!2970836))))

(declare-fun valid!3858 (MutLongMap!4861) Bool)

(assert (=> d!1521396 (= res!2019199 (valid!3858 (v!47415 (underlying!9930 (cache!4587 thiss!28909)))))))

(assert (=> d!1521396 (= (valid!3857 (cache!4587 thiss!28909)) e!2970836)))

(declare-fun res!2019200 () Bool)

(assert (=> b!4760782 (=> (not res!2019200) (not e!2970836))))

(declare-fun forall!11838 (List!53495 Int) Bool)

(assert (=> b!4760782 (= res!2019200 (forall!11838 (toList!6217 (map!11877 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))) lambda!223780))))

(declare-fun b!4760783 () Bool)

(declare-fun allKeysSameHashInMap!2002 (ListLongMap!4609 Hashable!6522) Bool)

(assert (=> b!4760783 (= e!2970836 (allKeysSameHashInMap!2002 (map!11877 (v!47415 (underlying!9930 (cache!4587 thiss!28909)))) (hashF!12332 (cache!4587 thiss!28909))))))

(assert (= (and d!1521396 res!2019199) b!4760782))

(assert (= (and b!4760782 res!2019200) b!4760783))

(declare-fun m!5730002 () Bool)

(assert (=> d!1521396 m!5730002))

(assert (=> b!4760782 m!5729946))

(declare-fun m!5730004 () Bool)

(assert (=> b!4760782 m!5730004))

(assert (=> b!4760783 m!5729946))

(assert (=> b!4760783 m!5729946))

(declare-fun m!5730006 () Bool)

(assert (=> b!4760783 m!5730006))

(assert (=> b!4760718 d!1521396))

(declare-fun d!1521398 () Bool)

(assert (=> d!1521398 (= (inv!68901 (totalInput!4511 thiss!28909)) (isBalanced!3911 (c!812143 (totalInput!4511 thiss!28909))))))

(declare-fun bs!1147092 () Bool)

(assert (= bs!1147092 d!1521398))

(declare-fun m!5730008 () Bool)

(assert (=> bs!1147092 m!5730008))

(assert (=> b!4760709 d!1521398))

(declare-fun b!4760788 () Bool)

(declare-fun e!2970839 () Bool)

(declare-fun tp!1353607 () Bool)

(declare-fun tp!1353608 () Bool)

(assert (=> b!4760788 (= e!2970839 (and tp!1353607 tp!1353608))))

(assert (=> b!4760708 (= tp!1353602 e!2970839)))

(assert (= (and b!4760708 ((_ is Cons!53369) (exprs!3449 setElem!27214))) b!4760788))

(declare-fun setElem!27217 () Context!5898)

(declare-fun e!2970844 () Bool)

(declare-fun setRes!27217 () Bool)

(declare-fun setNonEmpty!27217 () Bool)

(declare-fun tp!1353616 () Bool)

(assert (=> setNonEmpty!27217 (= setRes!27217 (and tp!1353616 (inv!68904 setElem!27217) e!2970844))))

(declare-fun setRest!27217 () (InoxSet Context!5898))

(assert (=> setNonEmpty!27217 (= (_1!30949 (_1!30950 (h!59781 (zeroValue!5144 (v!47414 (underlying!9929 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5898 Bool)) false) setElem!27217 true) setRest!27217))))

(declare-fun b!4760795 () Bool)

(declare-fun e!2970845 () Bool)

(declare-fun tp!1353617 () Bool)

(assert (=> b!4760795 (= e!2970845 (and setRes!27217 tp!1353617))))

(declare-fun condSetEmpty!27217 () Bool)

(assert (=> b!4760795 (= condSetEmpty!27217 (= (_1!30949 (_1!30950 (h!59781 (zeroValue!5144 (v!47414 (underlying!9929 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))))))) ((as const (Array Context!5898 Bool)) false)))))

(declare-fun setIsEmpty!27217 () Bool)

(assert (=> setIsEmpty!27217 setRes!27217))

(declare-fun b!4760796 () Bool)

(declare-fun tp!1353615 () Bool)

(assert (=> b!4760796 (= e!2970844 tp!1353615)))

(assert (=> b!4760712 (= tp!1353598 e!2970845)))

(assert (= (and b!4760795 condSetEmpty!27217) setIsEmpty!27217))

(assert (= (and b!4760795 (not condSetEmpty!27217)) setNonEmpty!27217))

(assert (= setNonEmpty!27217 b!4760796))

(assert (= (and b!4760712 ((_ is Cons!53370) (zeroValue!5144 (v!47414 (underlying!9929 (v!47415 (underlying!9930 (cache!4587 thiss!28909)))))))) b!4760795))

(declare-fun m!5730010 () Bool)

(assert (=> setNonEmpty!27217 m!5730010))

(declare-fun setRes!27218 () Bool)

(declare-fun setElem!27218 () Context!5898)

(declare-fun e!2970846 () Bool)

(declare-fun setNonEmpty!27218 () Bool)

(declare-fun tp!1353619 () Bool)

(assert (=> setNonEmpty!27218 (= setRes!27218 (and tp!1353619 (inv!68904 setElem!27218) e!2970846))))

(declare-fun setRest!27218 () (InoxSet Context!5898))

(assert (=> setNonEmpty!27218 (= (_1!30949 (_1!30950 (h!59781 (minValue!5144 (v!47414 (underlying!9929 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5898 Bool)) false) setElem!27218 true) setRest!27218))))

(declare-fun b!4760797 () Bool)

(declare-fun e!2970847 () Bool)

(declare-fun tp!1353620 () Bool)

(assert (=> b!4760797 (= e!2970847 (and setRes!27218 tp!1353620))))

(declare-fun condSetEmpty!27218 () Bool)

(assert (=> b!4760797 (= condSetEmpty!27218 (= (_1!30949 (_1!30950 (h!59781 (minValue!5144 (v!47414 (underlying!9929 (v!47415 (underlying!9930 (cache!4587 thiss!28909))))))))) ((as const (Array Context!5898 Bool)) false)))))

(declare-fun setIsEmpty!27218 () Bool)

(assert (=> setIsEmpty!27218 setRes!27218))

(declare-fun b!4760798 () Bool)

(declare-fun tp!1353618 () Bool)

(assert (=> b!4760798 (= e!2970846 tp!1353618)))

(assert (=> b!4760712 (= tp!1353595 e!2970847)))

(assert (= (and b!4760797 condSetEmpty!27218) setIsEmpty!27218))

(assert (= (and b!4760797 (not condSetEmpty!27218)) setNonEmpty!27218))

(assert (= setNonEmpty!27218 b!4760798))

(assert (= (and b!4760712 ((_ is Cons!53370) (minValue!5144 (v!47414 (underlying!9929 (v!47415 (underlying!9930 (cache!4587 thiss!28909)))))))) b!4760797))

(declare-fun m!5730012 () Bool)

(assert (=> setNonEmpty!27218 m!5730012))

(declare-fun condSetEmpty!27221 () Bool)

(assert (=> setNonEmpty!27214 (= condSetEmpty!27221 (= setRest!27214 ((as const (Array Context!5898 Bool)) false)))))

(declare-fun setRes!27221 () Bool)

(assert (=> setNonEmpty!27214 (= tp!1353600 setRes!27221)))

(declare-fun setIsEmpty!27221 () Bool)

(assert (=> setIsEmpty!27221 setRes!27221))

(declare-fun tp!1353625 () Bool)

(declare-fun setNonEmpty!27221 () Bool)

(declare-fun e!2970850 () Bool)

(declare-fun setElem!27221 () Context!5898)

(assert (=> setNonEmpty!27221 (= setRes!27221 (and tp!1353625 (inv!68904 setElem!27221) e!2970850))))

(declare-fun setRest!27221 () (InoxSet Context!5898))

(assert (=> setNonEmpty!27221 (= setRest!27214 ((_ map or) (store ((as const (Array Context!5898 Bool)) false) setElem!27221 true) setRest!27221))))

(declare-fun b!4760803 () Bool)

(declare-fun tp!1353626 () Bool)

(assert (=> b!4760803 (= e!2970850 tp!1353626)))

(assert (= (and setNonEmpty!27214 condSetEmpty!27221) setIsEmpty!27221))

(assert (= (and setNonEmpty!27214 (not condSetEmpty!27221)) setNonEmpty!27221))

(assert (= setNonEmpty!27221 b!4760803))

(declare-fun m!5730014 () Bool)

(assert (=> setNonEmpty!27221 m!5730014))

(declare-fun setIsEmpty!27226 () Bool)

(declare-fun setRes!27226 () Bool)

(assert (=> setIsEmpty!27226 setRes!27226))

(declare-fun b!4760814 () Bool)

(declare-fun e!2970862 () Bool)

(declare-fun tp!1353646 () Bool)

(assert (=> b!4760814 (= e!2970862 (and setRes!27226 tp!1353646))))

(declare-fun condSetEmpty!27227 () Bool)

(declare-fun mapValue!21611 () List!53494)

(assert (=> b!4760814 (= condSetEmpty!27227 (= (_1!30949 (_1!30950 (h!59781 mapValue!21611))) ((as const (Array Context!5898 Bool)) false)))))

(declare-fun setIsEmpty!27227 () Bool)

(declare-fun setRes!27227 () Bool)

(assert (=> setIsEmpty!27227 setRes!27227))

(declare-fun b!4760815 () Bool)

(declare-fun e!2970859 () Bool)

(declare-fun tp!1353642 () Bool)

(assert (=> b!4760815 (= e!2970859 (and setRes!27227 tp!1353642))))

(declare-fun condSetEmpty!27226 () Bool)

(declare-fun mapDefault!21611 () List!53494)

(assert (=> b!4760815 (= condSetEmpty!27226 (= (_1!30949 (_1!30950 (h!59781 mapDefault!21611))) ((as const (Array Context!5898 Bool)) false)))))

(declare-fun mapIsEmpty!21611 () Bool)

(declare-fun mapRes!21611 () Bool)

(assert (=> mapIsEmpty!21611 mapRes!21611))

(declare-fun b!4760816 () Bool)

(declare-fun e!2970861 () Bool)

(declare-fun tp!1353647 () Bool)

(assert (=> b!4760816 (= e!2970861 tp!1353647)))

(declare-fun setNonEmpty!27226 () Bool)

(declare-fun e!2970860 () Bool)

(declare-fun tp!1353643 () Bool)

(declare-fun setElem!27226 () Context!5898)

(assert (=> setNonEmpty!27226 (= setRes!27226 (and tp!1353643 (inv!68904 setElem!27226) e!2970860))))

(declare-fun setRest!27227 () (InoxSet Context!5898))

(assert (=> setNonEmpty!27226 (= (_1!30949 (_1!30950 (h!59781 mapValue!21611))) ((_ map or) (store ((as const (Array Context!5898 Bool)) false) setElem!27226 true) setRest!27227))))

(declare-fun b!4760817 () Bool)

(declare-fun tp!1353644 () Bool)

(assert (=> b!4760817 (= e!2970860 tp!1353644)))

(declare-fun condMapEmpty!21611 () Bool)

(assert (=> mapNonEmpty!21608 (= condMapEmpty!21611 (= mapRest!21608 ((as const (Array (_ BitVec 32) List!53494)) mapDefault!21611)))))

(assert (=> mapNonEmpty!21608 (= tp!1353592 (and e!2970859 mapRes!21611))))

(declare-fun mapNonEmpty!21611 () Bool)

(declare-fun tp!1353641 () Bool)

(assert (=> mapNonEmpty!21611 (= mapRes!21611 (and tp!1353641 e!2970862))))

(declare-fun mapRest!21611 () (Array (_ BitVec 32) List!53494))

(declare-fun mapKey!21611 () (_ BitVec 32))

(assert (=> mapNonEmpty!21611 (= mapRest!21608 (store mapRest!21611 mapKey!21611 mapValue!21611))))

(declare-fun tp!1353645 () Bool)

(declare-fun setElem!27227 () Context!5898)

(declare-fun setNonEmpty!27227 () Bool)

(assert (=> setNonEmpty!27227 (= setRes!27227 (and tp!1353645 (inv!68904 setElem!27227) e!2970861))))

(declare-fun setRest!27226 () (InoxSet Context!5898))

(assert (=> setNonEmpty!27227 (= (_1!30949 (_1!30950 (h!59781 mapDefault!21611))) ((_ map or) (store ((as const (Array Context!5898 Bool)) false) setElem!27227 true) setRest!27226))))

(assert (= (and mapNonEmpty!21608 condMapEmpty!21611) mapIsEmpty!21611))

(assert (= (and mapNonEmpty!21608 (not condMapEmpty!21611)) mapNonEmpty!21611))

(assert (= (and b!4760814 condSetEmpty!27227) setIsEmpty!27226))

(assert (= (and b!4760814 (not condSetEmpty!27227)) setNonEmpty!27226))

(assert (= setNonEmpty!27226 b!4760817))

(assert (= (and mapNonEmpty!21611 ((_ is Cons!53370) mapValue!21611)) b!4760814))

(assert (= (and b!4760815 condSetEmpty!27226) setIsEmpty!27227))

(assert (= (and b!4760815 (not condSetEmpty!27226)) setNonEmpty!27227))

(assert (= setNonEmpty!27227 b!4760816))

(assert (= (and mapNonEmpty!21608 ((_ is Cons!53370) mapDefault!21611)) b!4760815))

(declare-fun m!5730016 () Bool)

(assert (=> setNonEmpty!27226 m!5730016))

(declare-fun m!5730018 () Bool)

(assert (=> mapNonEmpty!21611 m!5730018))

(declare-fun m!5730020 () Bool)

(assert (=> setNonEmpty!27227 m!5730020))

(declare-fun tp!1353649 () Bool)

(declare-fun setElem!27228 () Context!5898)

(declare-fun e!2970863 () Bool)

(declare-fun setNonEmpty!27228 () Bool)

(declare-fun setRes!27228 () Bool)

(assert (=> setNonEmpty!27228 (= setRes!27228 (and tp!1353649 (inv!68904 setElem!27228) e!2970863))))

(declare-fun setRest!27228 () (InoxSet Context!5898))

(assert (=> setNonEmpty!27228 (= (_1!30949 (_1!30950 (h!59781 mapValue!21608))) ((_ map or) (store ((as const (Array Context!5898 Bool)) false) setElem!27228 true) setRest!27228))))

(declare-fun b!4760818 () Bool)

(declare-fun e!2970864 () Bool)

(declare-fun tp!1353650 () Bool)

(assert (=> b!4760818 (= e!2970864 (and setRes!27228 tp!1353650))))

(declare-fun condSetEmpty!27228 () Bool)

(assert (=> b!4760818 (= condSetEmpty!27228 (= (_1!30949 (_1!30950 (h!59781 mapValue!21608))) ((as const (Array Context!5898 Bool)) false)))))

(declare-fun setIsEmpty!27228 () Bool)

(assert (=> setIsEmpty!27228 setRes!27228))

(declare-fun b!4760819 () Bool)

(declare-fun tp!1353648 () Bool)

(assert (=> b!4760819 (= e!2970863 tp!1353648)))

(assert (=> mapNonEmpty!21608 (= tp!1353594 e!2970864)))

(assert (= (and b!4760818 condSetEmpty!27228) setIsEmpty!27228))

(assert (= (and b!4760818 (not condSetEmpty!27228)) setNonEmpty!27228))

(assert (= setNonEmpty!27228 b!4760819))

(assert (= (and mapNonEmpty!21608 ((_ is Cons!53370) mapValue!21608)) b!4760818))

(declare-fun m!5730022 () Bool)

(assert (=> setNonEmpty!27228 m!5730022))

(declare-fun e!2970870 () Bool)

(declare-fun tp!1353658 () Bool)

(declare-fun tp!1353659 () Bool)

(declare-fun b!4760828 () Bool)

(assert (=> b!4760828 (= e!2970870 (and (inv!68903 (left!39145 (c!812143 (totalInput!4511 thiss!28909)))) tp!1353658 (inv!68903 (right!39475 (c!812143 (totalInput!4511 thiss!28909)))) tp!1353659))))

(declare-fun b!4760830 () Bool)

(declare-fun e!2970869 () Bool)

(declare-fun tp!1353657 () Bool)

(assert (=> b!4760830 (= e!2970869 tp!1353657)))

(declare-fun b!4760829 () Bool)

(declare-fun inv!68907 (IArray!29061) Bool)

(assert (=> b!4760829 (= e!2970870 (and (inv!68907 (xs!17806 (c!812143 (totalInput!4511 thiss!28909)))) e!2970869))))

(assert (=> b!4760706 (= tp!1353601 (and (inv!68903 (c!812143 (totalInput!4511 thiss!28909))) e!2970870))))

(assert (= (and b!4760706 ((_ is Node!14500) (c!812143 (totalInput!4511 thiss!28909)))) b!4760828))

(assert (= b!4760829 b!4760830))

(assert (= (and b!4760706 ((_ is Leaf!23602) (c!812143 (totalInput!4511 thiss!28909)))) b!4760829))

(declare-fun m!5730024 () Bool)

(assert (=> b!4760828 m!5730024))

(declare-fun m!5730026 () Bool)

(assert (=> b!4760828 m!5730026))

(declare-fun m!5730028 () Bool)

(assert (=> b!4760829 m!5730028))

(assert (=> b!4760706 m!5729921))

(declare-fun e!2970872 () Bool)

(declare-fun tp!1353662 () Bool)

(declare-fun tp!1353661 () Bool)

(declare-fun b!4760831 () Bool)

(assert (=> b!4760831 (= e!2970872 (and (inv!68903 (left!39145 (c!812143 localTotalInput!8))) tp!1353661 (inv!68903 (right!39475 (c!812143 localTotalInput!8))) tp!1353662))))

(declare-fun b!4760833 () Bool)

(declare-fun e!2970871 () Bool)

(declare-fun tp!1353660 () Bool)

(assert (=> b!4760833 (= e!2970871 tp!1353660)))

(declare-fun b!4760832 () Bool)

(assert (=> b!4760832 (= e!2970872 (and (inv!68907 (xs!17806 (c!812143 localTotalInput!8))) e!2970871))))

(assert (=> b!4760719 (= tp!1353596 (and (inv!68903 (c!812143 localTotalInput!8)) e!2970872))))

(assert (= (and b!4760719 ((_ is Node!14500) (c!812143 localTotalInput!8))) b!4760831))

(assert (= b!4760832 b!4760833))

(assert (= (and b!4760719 ((_ is Leaf!23602) (c!812143 localTotalInput!8))) b!4760832))

(declare-fun m!5730030 () Bool)

(assert (=> b!4760831 m!5730030))

(declare-fun m!5730032 () Bool)

(assert (=> b!4760831 m!5730032))

(declare-fun m!5730034 () Bool)

(assert (=> b!4760832 m!5730034))

(assert (=> b!4760719 m!5729913))

(declare-fun e!2970873 () Bool)

(declare-fun setNonEmpty!27229 () Bool)

(declare-fun setElem!27229 () Context!5898)

(declare-fun tp!1353664 () Bool)

(declare-fun setRes!27229 () Bool)

(assert (=> setNonEmpty!27229 (= setRes!27229 (and tp!1353664 (inv!68904 setElem!27229) e!2970873))))

(declare-fun setRest!27229 () (InoxSet Context!5898))

(assert (=> setNonEmpty!27229 (= (_1!30949 (_1!30950 (h!59781 mapDefault!21608))) ((_ map or) (store ((as const (Array Context!5898 Bool)) false) setElem!27229 true) setRest!27229))))

(declare-fun b!4760834 () Bool)

(declare-fun e!2970874 () Bool)

(declare-fun tp!1353665 () Bool)

(assert (=> b!4760834 (= e!2970874 (and setRes!27229 tp!1353665))))

(declare-fun condSetEmpty!27229 () Bool)

(assert (=> b!4760834 (= condSetEmpty!27229 (= (_1!30949 (_1!30950 (h!59781 mapDefault!21608))) ((as const (Array Context!5898 Bool)) false)))))

(declare-fun setIsEmpty!27229 () Bool)

(assert (=> setIsEmpty!27229 setRes!27229))

(declare-fun b!4760835 () Bool)

(declare-fun tp!1353663 () Bool)

(assert (=> b!4760835 (= e!2970873 tp!1353663)))

(assert (=> b!4760714 (= tp!1353593 e!2970874)))

(assert (= (and b!4760834 condSetEmpty!27229) setIsEmpty!27229))

(assert (= (and b!4760834 (not condSetEmpty!27229)) setNonEmpty!27229))

(assert (= setNonEmpty!27229 b!4760835))

(assert (= (and b!4760714 ((_ is Cons!53370) mapDefault!21608)) b!4760834))

(declare-fun m!5730036 () Bool)

(assert (=> setNonEmpty!27229 m!5730036))

(check-sat (not d!1521398) (not b!4760725) (not d!1521396) (not setNonEmpty!27228) (not b!4760816) (not bm!333758) (not b!4760835) (not b!4760831) (not setNonEmpty!27229) (not d!1521376) (not b!4760818) (not b!4760761) (not b_next!130065) (not b!4760782) (not d!1521378) (not b!4760783) (not bm!333757) (not bm!333755) (not b!4760760) (not b!4760758) (not b!4760829) (not setNonEmpty!27217) (not setNonEmpty!27218) (not b!4760753) (not b!4760754) b_and!340985 (not b!4760797) (not setNonEmpty!27226) (not d!1521386) (not b!4760759) (not mapNonEmpty!21611) (not b!4760796) (not b!4760834) (not b!4760719) (not b!4760706) (not b!4760788) (not bm!333756) b_and!340983 (not b!4760828) (not b!4760772) (not bm!333760) (not b!4760817) (not b!4760832) (not b!4760833) (not b!4760830) (not setNonEmpty!27221) (not d!1521380) (not b!4760814) (not b!4760819) (not b!4760765) (not b_next!130063) (not b!4760724) (not bm!333759) (not b!4760777) (not b!4760795) (not b!4760762) (not b!4760803) (not b!4760798) (not setNonEmpty!27227) (not b!4760774) (not b!4760775) (not b!4760815) (not d!1521388))
(check-sat b_and!340985 b_and!340983 (not b_next!130063) (not b_next!130065))
