; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486874 () Bool)

(assert start!486874)

(declare-fun b!4760926 () Bool)

(declare-fun b_free!129367 () Bool)

(declare-fun b_next!130071 () Bool)

(assert (=> b!4760926 (= b_free!129367 (not b_next!130071))))

(declare-fun tp!1353722 () Bool)

(declare-fun b_and!340991 () Bool)

(assert (=> b!4760926 (= tp!1353722 b_and!340991)))

(declare-fun b!4760917 () Bool)

(declare-fun b_free!129369 () Bool)

(declare-fun b_next!130073 () Bool)

(assert (=> b!4760917 (= b_free!129369 (not b_next!130073))))

(declare-fun tp!1353726 () Bool)

(declare-fun b_and!340993 () Bool)

(assert (=> b!4760917 (= tp!1353726 b_and!340993)))

(declare-fun b!4760919 () Bool)

(assert (=> b!4760919 true))

(declare-fun b!4760913 () Bool)

(declare-fun e!2970949 () Bool)

(declare-datatypes ((C!26320 0))(
  ( (C!26321 (val!20148 Int)) )
))
(declare-datatypes ((Regex!13061 0))(
  ( (ElementMatch!13061 (c!812163 C!26320)) (Concat!21380 (regOne!26634 Regex!13061) (regTwo!26634 Regex!13061)) (EmptyExpr!13061) (Star!13061 (reg!13390 Regex!13061)) (EmptyLang!13061) (Union!13061 (regOne!26635 Regex!13061) (regTwo!26635 Regex!13061)) )
))
(declare-datatypes ((List!53499 0))(
  ( (Nil!53375) (Cons!53375 (h!59786 Regex!13061) (t!360859 List!53499)) )
))
(declare-datatypes ((Context!5902 0))(
  ( (Context!5903 (exprs!3451 List!53499)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55320 0))(
  ( (tuple2!55321 (_1!30954 (InoxSet Context!5902)) (_2!30954 Int)) )
))
(declare-datatypes ((tuple2!55322 0))(
  ( (tuple2!55323 (_1!30955 tuple2!55320) (_2!30955 Int)) )
))
(declare-datatypes ((List!53500 0))(
  ( (Nil!53376) (Cons!53376 (h!59787 tuple2!55322) (t!360860 List!53500)) )
))
(declare-datatypes ((List!53501 0))(
  ( (Nil!53377) (Cons!53377 (h!59788 C!26320) (t!360861 List!53501)) )
))
(declare-datatypes ((IArray!29065 0))(
  ( (IArray!29066 (innerList!14590 List!53501)) )
))
(declare-datatypes ((Conc!14502 0))(
  ( (Node!14502 (left!39154 Conc!14502) (right!39484 Conc!14502) (csize!29234 Int) (cheight!14713 Int)) (Leaf!23605 (xs!17808 IArray!29065) (csize!29235 Int)) (Empty!14502) )
))
(declare-datatypes ((Hashable!6524 0))(
  ( (HashableExt!6523 (__x!32337 Int)) )
))
(declare-datatypes ((array!17736 0))(
  ( (array!17737 (arr!7911 (Array (_ BitVec 32) (_ BitVec 64))) (size!36134 (_ BitVec 32))) )
))
(declare-datatypes ((array!17738 0))(
  ( (array!17739 (arr!7912 (Array (_ BitVec 32) List!53500)) (size!36135 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9726 0))(
  ( (LongMapFixedSize!9727 (defaultEntry!5277 Int) (mask!14580 (_ BitVec 32)) (extraKeys!5133 (_ BitVec 32)) (zeroValue!5146 List!53500) (minValue!5146 List!53500) (_size!9751 (_ BitVec 32)) (_keys!5198 array!17736) (_values!5171 array!17738) (_vacant!4928 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19217 0))(
  ( (Cell!19218 (v!47420 LongMapFixedSize!9726)) )
))
(declare-datatypes ((MutLongMap!4863 0))(
  ( (LongMap!4863 (underlying!9933 Cell!19217)) (MutLongMapExt!4862 (__x!32338 Int)) )
))
(declare-datatypes ((Cell!19219 0))(
  ( (Cell!19220 (v!47421 MutLongMap!4863)) )
))
(declare-datatypes ((MutableMap!4747 0))(
  ( (MutableMapExt!4746 (__x!32339 Int)) (HashMap!4747 (underlying!9934 Cell!19219) (hashF!12334 Hashable!6524) (_size!9752 (_ BitVec 32)) (defaultValue!4918 Int)) )
))
(declare-datatypes ((BalanceConc!28494 0))(
  ( (BalanceConc!28495 (c!812164 Conc!14502)) )
))
(declare-datatypes ((CacheFindLongestMatch!692 0))(
  ( (CacheFindLongestMatch!693 (cache!4589 MutableMap!4747) (totalInput!4514 BalanceConc!28494)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!692)

(declare-fun tp!1353724 () Bool)

(declare-fun inv!68912 (Conc!14502) Bool)

(assert (=> b!4760913 (= e!2970949 (and (inv!68912 (c!812164 (totalInput!4514 thiss!28909))) tp!1353724))))

(declare-fun tp!1353730 () Bool)

(declare-fun setNonEmpty!27235 () Bool)

(declare-fun setElem!27235 () Context!5902)

(declare-fun e!2970941 () Bool)

(declare-fun setRes!27235 () Bool)

(declare-fun inv!68913 (Context!5902) Bool)

(assert (=> setNonEmpty!27235 (= setRes!27235 (and tp!1353730 (inv!68913 setElem!27235) e!2970941))))

(declare-fun z!482 () (InoxSet Context!5902))

(declare-fun setRest!27235 () (InoxSet Context!5902))

(assert (=> setNonEmpty!27235 (= z!482 ((_ map or) (store ((as const (Array Context!5902 Bool)) false) setElem!27235 true) setRest!27235))))

(declare-fun b!4760914 () Bool)

(declare-fun tp!1353727 () Bool)

(assert (=> b!4760914 (= e!2970941 tp!1353727)))

(declare-fun mapIsEmpty!21617 () Bool)

(declare-fun mapRes!21617 () Bool)

(assert (=> mapIsEmpty!21617 mapRes!21617))

(declare-fun setIsEmpty!27235 () Bool)

(assert (=> setIsEmpty!27235 setRes!27235))

(declare-fun b!4760916 () Bool)

(declare-fun e!2970943 () Bool)

(declare-fun e!2970952 () Bool)

(assert (=> b!4760916 (= e!2970943 e!2970952)))

(declare-fun e!2970950 () Bool)

(declare-fun e!2970946 () Bool)

(assert (=> b!4760917 (= e!2970950 (and e!2970946 tp!1353726))))

(declare-fun e!2970940 () Bool)

(declare-fun b!4760918 () Bool)

(declare-fun inv!68914 (BalanceConc!28494) Bool)

(assert (=> b!4760918 (= e!2970940 (and e!2970950 (inv!68914 (totalInput!4514 thiss!28909)) e!2970949))))

(declare-fun mapNonEmpty!21617 () Bool)

(declare-fun tp!1353728 () Bool)

(declare-fun tp!1353721 () Bool)

(assert (=> mapNonEmpty!21617 (= mapRes!21617 (and tp!1353728 tp!1353721))))

(declare-fun mapValue!21617 () List!53500)

(declare-fun mapRest!21617 () (Array (_ BitVec 32) List!53500))

(declare-fun mapKey!21617 () (_ BitVec 32))

(assert (=> mapNonEmpty!21617 (= (arr!7912 (_values!5171 (v!47420 (underlying!9933 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))))) (store mapRest!21617 mapKey!21617 mapValue!21617))))

(declare-fun e!2970944 () Bool)

(declare-fun lambda!223786 () Int)

(declare-fun forall!11839 (List!53500 Int) Bool)

(declare-datatypes ((ListMap!5719 0))(
  ( (ListMap!5720 (toList!6218 List!53500)) )
))
(declare-fun map!11879 (MutableMap!4747) ListMap!5719)

(assert (=> b!4760919 (= e!2970944 (forall!11839 (toList!6218 (map!11879 (cache!4589 thiss!28909))) lambda!223786))))

(declare-fun b!4760915 () Bool)

(declare-fun e!2970948 () Bool)

(declare-fun localTotalInput!8 () BalanceConc!28494)

(declare-fun tp!1353731 () Bool)

(assert (=> b!4760915 (= e!2970948 (and (inv!68912 (c!812164 localTotalInput!8)) tp!1353731))))

(declare-fun res!2019229 () Bool)

(declare-fun e!2970945 () Bool)

(assert (=> start!486874 (=> (not res!2019229) (not e!2970945))))

(assert (=> start!486874 (= res!2019229 (= localTotalInput!8 (totalInput!4514 thiss!28909)))))

(assert (=> start!486874 e!2970945))

(assert (=> start!486874 (and (inv!68914 localTotalInput!8) e!2970948)))

(declare-fun inv!68915 (CacheFindLongestMatch!692) Bool)

(assert (=> start!486874 (and (inv!68915 thiss!28909) e!2970940)))

(declare-fun condSetEmpty!27235 () Bool)

(assert (=> start!486874 (= condSetEmpty!27235 (= z!482 ((as const (Array Context!5902 Bool)) false)))))

(assert (=> start!486874 setRes!27235))

(assert (=> start!486874 true))

(declare-fun b!4760920 () Bool)

(declare-fun res!2019227 () Bool)

(assert (=> b!4760920 (=> res!2019227 e!2970944)))

(declare-fun valid!3859 (MutableMap!4747) Bool)

(assert (=> b!4760920 (= res!2019227 (not (valid!3859 (cache!4589 thiss!28909))))))

(declare-fun b!4760921 () Bool)

(declare-fun res!2019228 () Bool)

(assert (=> b!4760921 (=> (not res!2019228) (not e!2970945))))

(declare-fun validCacheMapFindLongestMatch!143 (MutableMap!4747 BalanceConc!28494) Bool)

(assert (=> b!4760921 (= res!2019228 (validCacheMapFindLongestMatch!143 (cache!4589 thiss!28909) (totalInput!4514 thiss!28909)))))

(declare-fun b!4760922 () Bool)

(declare-fun e!2970951 () Bool)

(assert (=> b!4760922 (= e!2970951 e!2970943)))

(declare-fun b!4760923 () Bool)

(assert (=> b!4760923 (= e!2970945 (not e!2970944))))

(declare-fun res!2019226 () Bool)

(assert (=> b!4760923 (=> res!2019226 e!2970944)))

(declare-fun from!922 () Int)

(declare-fun contains!16677 (MutableMap!4747 tuple2!55320) Bool)

(assert (=> b!4760923 (= res!2019226 (not (contains!16677 (cache!4589 thiss!28909) (tuple2!55321 z!482 from!922))))))

(assert (=> b!4760923 (validCacheMapFindLongestMatch!143 (cache!4589 thiss!28909) localTotalInput!8)))

(declare-fun b!4760924 () Bool)

(declare-fun lt!1924970 () MutLongMap!4863)

(get-info :version)

(assert (=> b!4760924 (= e!2970946 (and e!2970951 ((_ is LongMap!4863) lt!1924970)))))

(assert (=> b!4760924 (= lt!1924970 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))))

(declare-fun b!4760925 () Bool)

(declare-fun e!2970947 () Bool)

(declare-fun tp!1353723 () Bool)

(assert (=> b!4760925 (= e!2970947 (and tp!1353723 mapRes!21617))))

(declare-fun condMapEmpty!21617 () Bool)

(declare-fun mapDefault!21617 () List!53500)

(assert (=> b!4760925 (= condMapEmpty!21617 (= (arr!7912 (_values!5171 (v!47420 (underlying!9933 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53500)) mapDefault!21617)))))

(declare-fun tp!1353725 () Bool)

(declare-fun tp!1353729 () Bool)

(declare-fun array_inv!5695 (array!17736) Bool)

(declare-fun array_inv!5696 (array!17738) Bool)

(assert (=> b!4760926 (= e!2970952 (and tp!1353722 tp!1353729 tp!1353725 (array_inv!5695 (_keys!5198 (v!47420 (underlying!9933 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))))) (array_inv!5696 (_values!5171 (v!47420 (underlying!9933 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))))) e!2970947))))

(declare-fun b!4760927 () Bool)

(declare-fun res!2019230 () Bool)

(assert (=> b!4760927 (=> res!2019230 e!2970944)))

(assert (=> b!4760927 (= res!2019230 (not ((_ is HashMap!4747) (cache!4589 thiss!28909))))))

(assert (= (and start!486874 res!2019229) b!4760921))

(assert (= (and b!4760921 res!2019228) b!4760923))

(assert (= (and b!4760923 (not res!2019226)) b!4760927))

(assert (= (and b!4760927 (not res!2019230)) b!4760920))

(assert (= (and b!4760920 (not res!2019227)) b!4760919))

(assert (= start!486874 b!4760915))

(assert (= (and b!4760925 condMapEmpty!21617) mapIsEmpty!21617))

(assert (= (and b!4760925 (not condMapEmpty!21617)) mapNonEmpty!21617))

(assert (= b!4760926 b!4760925))

(assert (= b!4760916 b!4760926))

(assert (= b!4760922 b!4760916))

(assert (= (and b!4760924 ((_ is LongMap!4863) (v!47421 (underlying!9934 (cache!4589 thiss!28909))))) b!4760922))

(assert (= b!4760917 b!4760924))

(assert (= (and b!4760918 ((_ is HashMap!4747) (cache!4589 thiss!28909))) b!4760917))

(assert (= b!4760918 b!4760913))

(assert (= start!486874 b!4760918))

(assert (= (and start!486874 condSetEmpty!27235) setIsEmpty!27235))

(assert (= (and start!486874 (not condSetEmpty!27235)) setNonEmpty!27235))

(assert (= setNonEmpty!27235 b!4760914))

(declare-fun m!5730068 () Bool)

(assert (=> b!4760923 m!5730068))

(declare-fun m!5730070 () Bool)

(assert (=> b!4760923 m!5730070))

(declare-fun m!5730072 () Bool)

(assert (=> mapNonEmpty!21617 m!5730072))

(declare-fun m!5730074 () Bool)

(assert (=> b!4760913 m!5730074))

(declare-fun m!5730076 () Bool)

(assert (=> b!4760920 m!5730076))

(declare-fun m!5730078 () Bool)

(assert (=> b!4760921 m!5730078))

(declare-fun m!5730080 () Bool)

(assert (=> setNonEmpty!27235 m!5730080))

(declare-fun m!5730082 () Bool)

(assert (=> b!4760918 m!5730082))

(declare-fun m!5730084 () Bool)

(assert (=> b!4760915 m!5730084))

(declare-fun m!5730086 () Bool)

(assert (=> b!4760919 m!5730086))

(declare-fun m!5730088 () Bool)

(assert (=> b!4760919 m!5730088))

(declare-fun m!5730090 () Bool)

(assert (=> b!4760926 m!5730090))

(declare-fun m!5730092 () Bool)

(assert (=> b!4760926 m!5730092))

(declare-fun m!5730094 () Bool)

(assert (=> start!486874 m!5730094))

(declare-fun m!5730096 () Bool)

(assert (=> start!486874 m!5730096))

(check-sat (not b!4760918) (not b!4760925) (not b!4760921) (not b!4760919) (not b!4760915) (not b_next!130071) (not b!4760923) (not start!486874) b_and!340993 (not b_next!130073) (not b!4760914) (not b!4760913) (not b!4760920) b_and!340991 (not setNonEmpty!27235) (not mapNonEmpty!21617) (not b!4760926))
(check-sat b_and!340993 b_and!340991 (not b_next!130071) (not b_next!130073))
(get-model)

(declare-fun b!4760952 () Bool)

(assert (=> b!4760952 false))

(declare-datatypes ((Unit!137834 0))(
  ( (Unit!137835) )
))
(declare-fun lt!1925017 () Unit!137834)

(declare-fun lt!1925020 () Unit!137834)

(assert (=> b!4760952 (= lt!1925017 lt!1925020)))

(declare-datatypes ((tuple2!55324 0))(
  ( (tuple2!55325 (_1!30956 (_ BitVec 64)) (_2!30956 List!53500)) )
))
(declare-datatypes ((List!53502 0))(
  ( (Nil!53378) (Cons!53378 (h!59789 tuple2!55324) (t!360862 List!53502)) )
))
(declare-datatypes ((ListLongMap!4611 0))(
  ( (ListLongMap!4612 (toList!6219 List!53502)) )
))
(declare-fun lt!1925015 () ListLongMap!4611)

(declare-fun contains!16678 (ListMap!5719 tuple2!55320) Bool)

(declare-fun extractMap!2121 (List!53502) ListMap!5719)

(assert (=> b!4760952 (contains!16678 (extractMap!2121 (toList!6219 lt!1925015)) (tuple2!55321 z!482 from!922))))

(declare-fun lemmaInLongMapThenInGenericMap!185 (ListLongMap!4611 tuple2!55320 Hashable!6524) Unit!137834)

(assert (=> b!4760952 (= lt!1925020 (lemmaInLongMapThenInGenericMap!185 lt!1925015 (tuple2!55321 z!482 from!922) (hashF!12334 (cache!4589 thiss!28909))))))

(declare-fun call!333781 () ListLongMap!4611)

(assert (=> b!4760952 (= lt!1925015 call!333781)))

(declare-fun e!2970971 () Unit!137834)

(declare-fun Unit!137836 () Unit!137834)

(assert (=> b!4760952 (= e!2970971 Unit!137836)))

(declare-fun b!4760953 () Bool)

(declare-fun e!2970973 () Unit!137834)

(declare-fun lt!1925024 () Unit!137834)

(assert (=> b!4760953 (= e!2970973 lt!1925024)))

(declare-fun lt!1925016 () ListLongMap!4611)

(assert (=> b!4760953 (= lt!1925016 call!333781)))

(declare-fun lemmaInGenericMapThenInLongMap!185 (ListLongMap!4611 tuple2!55320 Hashable!6524) Unit!137834)

(assert (=> b!4760953 (= lt!1925024 (lemmaInGenericMapThenInLongMap!185 lt!1925016 (tuple2!55321 z!482 from!922) (hashF!12334 (cache!4589 thiss!28909))))))

(declare-fun res!2019239 () Bool)

(declare-fun call!333783 () Bool)

(assert (=> b!4760953 (= res!2019239 call!333783)))

(declare-fun e!2970972 () Bool)

(assert (=> b!4760953 (=> (not res!2019239) (not e!2970972))))

(assert (=> b!4760953 e!2970972))

(declare-fun bm!333773 () Bool)

(declare-fun call!333779 () (_ BitVec 64))

(declare-fun hash!4522 (Hashable!6524 tuple2!55320) (_ BitVec 64))

(assert (=> bm!333773 (= call!333779 (hash!4522 (hashF!12334 (cache!4589 thiss!28909)) (tuple2!55321 z!482 from!922)))))

(declare-fun b!4760954 () Bool)

(assert (=> b!4760954 (= e!2970973 e!2970971)))

(declare-fun res!2019238 () Bool)

(assert (=> b!4760954 (= res!2019238 call!333783)))

(declare-fun e!2970967 () Bool)

(assert (=> b!4760954 (=> (not res!2019238) (not e!2970967))))

(declare-fun c!812173 () Bool)

(assert (=> b!4760954 (= c!812173 e!2970967)))

(declare-fun c!812175 () Bool)

(declare-fun bm!333774 () Bool)

(declare-fun contains!16679 (ListLongMap!4611 (_ BitVec 64)) Bool)

(assert (=> bm!333774 (= call!333783 (contains!16679 (ite c!812175 lt!1925016 call!333781) call!333779))))

(declare-fun b!4760955 () Bool)

(declare-fun call!333782 () Bool)

(assert (=> b!4760955 (= e!2970972 call!333782)))

(declare-fun bm!333775 () Bool)

(declare-fun map!11880 (MutLongMap!4863) ListLongMap!4611)

(assert (=> bm!333775 (= call!333781 (map!11880 (v!47421 (underlying!9934 (cache!4589 thiss!28909)))))))

(declare-fun b!4760956 () Bool)

(declare-fun Unit!137837 () Unit!137834)

(assert (=> b!4760956 (= e!2970971 Unit!137837)))

(declare-fun b!4760957 () Bool)

(assert (=> b!4760957 (= e!2970967 call!333782)))

(declare-fun b!4760958 () Bool)

(declare-fun e!2970970 () Unit!137834)

(declare-fun Unit!137838 () Unit!137834)

(assert (=> b!4760958 (= e!2970970 Unit!137838)))

(declare-fun b!4760959 () Bool)

(declare-fun e!2970968 () Unit!137834)

(declare-fun Unit!137839 () Unit!137834)

(assert (=> b!4760959 (= e!2970968 Unit!137839)))

(declare-fun b!4760960 () Bool)

(declare-fun e!2970969 () Bool)

(declare-fun lt!1925019 () (_ BitVec 64))

(declare-datatypes ((Option!12606 0))(
  ( (None!12605) (Some!12605 (v!47422 tuple2!55322)) )
))
(declare-fun isDefined!9784 (Option!12606) Bool)

(declare-fun getPair!621 (List!53500 tuple2!55320) Option!12606)

(declare-fun apply!12542 (MutLongMap!4863 (_ BitVec 64)) List!53500)

(assert (=> b!4760960 (= e!2970969 (isDefined!9784 (getPair!621 (apply!12542 (v!47421 (underlying!9934 (cache!4589 thiss!28909))) lt!1925019) (tuple2!55321 z!482 from!922))))))

(declare-fun lambda!223789 () Int)

(declare-fun b!4760961 () Bool)

(declare-fun forallContained!3831 (List!53502 Int tuple2!55324) Unit!137834)

(assert (=> b!4760961 (= e!2970970 (forallContained!3831 (toList!6219 (map!11880 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))) lambda!223789 (tuple2!55325 lt!1925019 (apply!12542 (v!47421 (underlying!9934 (cache!4589 thiss!28909))) lt!1925019))))))

(declare-fun c!812176 () Bool)

(declare-fun contains!16680 (List!53502 tuple2!55324) Bool)

(assert (=> b!4760961 (= c!812176 (not (contains!16680 (toList!6219 (map!11880 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))) (tuple2!55325 lt!1925019 (apply!12542 (v!47421 (underlying!9934 (cache!4589 thiss!28909))) lt!1925019)))))))

(declare-fun lt!1925011 () Unit!137834)

(assert (=> b!4760961 (= lt!1925011 e!2970968)))

(declare-fun bm!333777 () Bool)

(declare-fun call!333780 () List!53500)

(declare-fun apply!12543 (ListLongMap!4611 (_ BitVec 64)) List!53500)

(assert (=> bm!333777 (= call!333780 (apply!12543 (ite c!812175 lt!1925016 call!333781) call!333779))))

(declare-fun d!1521401 () Bool)

(declare-fun lt!1925013 () Bool)

(assert (=> d!1521401 (= lt!1925013 (contains!16678 (map!11879 (cache!4589 thiss!28909)) (tuple2!55321 z!482 from!922)))))

(assert (=> d!1521401 (= lt!1925013 e!2970969)))

(declare-fun res!2019237 () Bool)

(assert (=> d!1521401 (=> (not res!2019237) (not e!2970969))))

(declare-fun contains!16681 (MutLongMap!4863 (_ BitVec 64)) Bool)

(assert (=> d!1521401 (= res!2019237 (contains!16681 (v!47421 (underlying!9934 (cache!4589 thiss!28909))) lt!1925019))))

(declare-fun lt!1925022 () Unit!137834)

(assert (=> d!1521401 (= lt!1925022 e!2970973)))

(assert (=> d!1521401 (= c!812175 (contains!16678 (extractMap!2121 (toList!6219 (map!11880 (v!47421 (underlying!9934 (cache!4589 thiss!28909)))))) (tuple2!55321 z!482 from!922)))))

(declare-fun lt!1925028 () Unit!137834)

(assert (=> d!1521401 (= lt!1925028 e!2970970)))

(declare-fun c!812174 () Bool)

(assert (=> d!1521401 (= c!812174 (contains!16681 (v!47421 (underlying!9934 (cache!4589 thiss!28909))) lt!1925019))))

(assert (=> d!1521401 (= lt!1925019 (hash!4522 (hashF!12334 (cache!4589 thiss!28909)) (tuple2!55321 z!482 from!922)))))

(assert (=> d!1521401 (valid!3859 (cache!4589 thiss!28909))))

(assert (=> d!1521401 (= (contains!16677 (cache!4589 thiss!28909) (tuple2!55321 z!482 from!922)) lt!1925013)))

(declare-fun bm!333776 () Bool)

(declare-fun call!333778 () Option!12606)

(assert (=> bm!333776 (= call!333782 (isDefined!9784 call!333778))))

(declare-fun b!4760962 () Bool)

(assert (=> b!4760962 false))

(declare-fun lt!1925025 () Unit!137834)

(declare-fun lt!1925030 () Unit!137834)

(assert (=> b!4760962 (= lt!1925025 lt!1925030)))

(declare-fun lt!1925027 () List!53502)

(declare-fun lt!1925023 () List!53500)

(assert (=> b!4760962 (contains!16680 lt!1925027 (tuple2!55325 lt!1925019 lt!1925023))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!899 (List!53502 (_ BitVec 64) List!53500) Unit!137834)

(assert (=> b!4760962 (= lt!1925030 (lemmaGetValueByKeyImpliesContainsTuple!899 lt!1925027 lt!1925019 lt!1925023))))

(assert (=> b!4760962 (= lt!1925023 (apply!12542 (v!47421 (underlying!9934 (cache!4589 thiss!28909))) lt!1925019))))

(assert (=> b!4760962 (= lt!1925027 (toList!6219 (map!11880 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))))))

(declare-fun lt!1925018 () Unit!137834)

(declare-fun lt!1925026 () Unit!137834)

(assert (=> b!4760962 (= lt!1925018 lt!1925026)))

(declare-fun lt!1925014 () List!53502)

(declare-datatypes ((Option!12607 0))(
  ( (None!12606) (Some!12606 (v!47423 List!53500)) )
))
(declare-fun isDefined!9785 (Option!12607) Bool)

(declare-fun getValueByKey!2138 (List!53502 (_ BitVec 64)) Option!12607)

(assert (=> b!4760962 (isDefined!9785 (getValueByKey!2138 lt!1925014 lt!1925019))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1957 (List!53502 (_ BitVec 64)) Unit!137834)

(assert (=> b!4760962 (= lt!1925026 (lemmaContainsKeyImpliesGetValueByKeyDefined!1957 lt!1925014 lt!1925019))))

(assert (=> b!4760962 (= lt!1925014 (toList!6219 (map!11880 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))))))

(declare-fun lt!1925021 () Unit!137834)

(declare-fun lt!1925029 () Unit!137834)

(assert (=> b!4760962 (= lt!1925021 lt!1925029)))

(declare-fun lt!1925012 () List!53502)

(declare-fun containsKey!3640 (List!53502 (_ BitVec 64)) Bool)

(assert (=> b!4760962 (containsKey!3640 lt!1925012 lt!1925019)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!186 (List!53502 (_ BitVec 64)) Unit!137834)

(assert (=> b!4760962 (= lt!1925029 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!186 lt!1925012 lt!1925019))))

(assert (=> b!4760962 (= lt!1925012 (toList!6219 (map!11880 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))))))

(declare-fun Unit!137840 () Unit!137834)

(assert (=> b!4760962 (= e!2970968 Unit!137840)))

(declare-fun bm!333778 () Bool)

(assert (=> bm!333778 (= call!333778 (getPair!621 call!333780 (tuple2!55321 z!482 from!922)))))

(assert (= (and d!1521401 c!812174) b!4760961))

(assert (= (and d!1521401 (not c!812174)) b!4760958))

(assert (= (and b!4760961 c!812176) b!4760962))

(assert (= (and b!4760961 (not c!812176)) b!4760959))

(assert (= (and d!1521401 c!812175) b!4760953))

(assert (= (and d!1521401 (not c!812175)) b!4760954))

(assert (= (and b!4760953 res!2019239) b!4760955))

(assert (= (and b!4760954 res!2019238) b!4760957))

(assert (= (and b!4760954 c!812173) b!4760952))

(assert (= (and b!4760954 (not c!812173)) b!4760956))

(assert (= (or b!4760953 b!4760955 b!4760954 b!4760957) bm!333773))

(assert (= (or b!4760953 b!4760954 b!4760957 b!4760952) bm!333775))

(assert (= (or b!4760953 b!4760954) bm!333774))

(assert (= (or b!4760955 b!4760957) bm!333777))

(assert (= (or b!4760955 b!4760957) bm!333778))

(assert (= (or b!4760955 b!4760957) bm!333776))

(assert (= (and d!1521401 res!2019237) b!4760960))

(declare-fun m!5730098 () Bool)

(assert (=> b!4760960 m!5730098))

(assert (=> b!4760960 m!5730098))

(declare-fun m!5730100 () Bool)

(assert (=> b!4760960 m!5730100))

(assert (=> b!4760960 m!5730100))

(declare-fun m!5730102 () Bool)

(assert (=> b!4760960 m!5730102))

(declare-fun m!5730104 () Bool)

(assert (=> bm!333774 m!5730104))

(declare-fun m!5730106 () Bool)

(assert (=> b!4760962 m!5730106))

(declare-fun m!5730108 () Bool)

(assert (=> b!4760962 m!5730108))

(declare-fun m!5730110 () Bool)

(assert (=> b!4760962 m!5730110))

(declare-fun m!5730112 () Bool)

(assert (=> b!4760962 m!5730112))

(assert (=> b!4760962 m!5730098))

(declare-fun m!5730114 () Bool)

(assert (=> b!4760962 m!5730114))

(assert (=> b!4760962 m!5730108))

(declare-fun m!5730116 () Bool)

(assert (=> b!4760962 m!5730116))

(declare-fun m!5730118 () Bool)

(assert (=> b!4760962 m!5730118))

(declare-fun m!5730120 () Bool)

(assert (=> b!4760962 m!5730120))

(declare-fun m!5730122 () Bool)

(assert (=> bm!333776 m!5730122))

(declare-fun m!5730124 () Bool)

(assert (=> b!4760953 m!5730124))

(assert (=> bm!333775 m!5730110))

(declare-fun m!5730126 () Bool)

(assert (=> bm!333778 m!5730126))

(declare-fun m!5730128 () Bool)

(assert (=> bm!333777 m!5730128))

(declare-fun m!5730130 () Bool)

(assert (=> d!1521401 m!5730130))

(declare-fun m!5730132 () Bool)

(assert (=> d!1521401 m!5730132))

(assert (=> d!1521401 m!5730110))

(assert (=> d!1521401 m!5730086))

(declare-fun m!5730134 () Bool)

(assert (=> d!1521401 m!5730134))

(assert (=> d!1521401 m!5730076))

(assert (=> d!1521401 m!5730086))

(declare-fun m!5730136 () Bool)

(assert (=> d!1521401 m!5730136))

(assert (=> d!1521401 m!5730130))

(declare-fun m!5730138 () Bool)

(assert (=> d!1521401 m!5730138))

(declare-fun m!5730140 () Bool)

(assert (=> b!4760952 m!5730140))

(assert (=> b!4760952 m!5730140))

(declare-fun m!5730142 () Bool)

(assert (=> b!4760952 m!5730142))

(declare-fun m!5730144 () Bool)

(assert (=> b!4760952 m!5730144))

(assert (=> bm!333773 m!5730138))

(assert (=> b!4760961 m!5730110))

(assert (=> b!4760961 m!5730098))

(declare-fun m!5730146 () Bool)

(assert (=> b!4760961 m!5730146))

(declare-fun m!5730148 () Bool)

(assert (=> b!4760961 m!5730148))

(assert (=> b!4760923 d!1521401))

(declare-fun bs!1147095 () Bool)

(declare-fun b!4760968 () Bool)

(assert (= bs!1147095 (and b!4760968 b!4760919)))

(declare-fun lambda!223792 () Int)

(assert (=> bs!1147095 (= lambda!223792 lambda!223786)))

(assert (=> b!4760968 true))

(declare-fun d!1521403 () Bool)

(declare-fun res!2019244 () Bool)

(declare-fun e!2970976 () Bool)

(assert (=> d!1521403 (=> (not res!2019244) (not e!2970976))))

(assert (=> d!1521403 (= res!2019244 (valid!3859 (cache!4589 thiss!28909)))))

(assert (=> d!1521403 (= (validCacheMapFindLongestMatch!143 (cache!4589 thiss!28909) localTotalInput!8) e!2970976)))

(declare-fun b!4760967 () Bool)

(declare-fun res!2019245 () Bool)

(assert (=> b!4760967 (=> (not res!2019245) (not e!2970976))))

(declare-fun invariantList!1649 (List!53500) Bool)

(assert (=> b!4760967 (= res!2019245 (invariantList!1649 (toList!6218 (map!11879 (cache!4589 thiss!28909)))))))

(assert (=> b!4760968 (= e!2970976 (forall!11839 (toList!6218 (map!11879 (cache!4589 thiss!28909))) lambda!223792))))

(assert (= (and d!1521403 res!2019244) b!4760967))

(assert (= (and b!4760967 res!2019245) b!4760968))

(assert (=> d!1521403 m!5730076))

(assert (=> b!4760967 m!5730086))

(declare-fun m!5730151 () Bool)

(assert (=> b!4760967 m!5730151))

(assert (=> b!4760968 m!5730086))

(declare-fun m!5730153 () Bool)

(assert (=> b!4760968 m!5730153))

(assert (=> b!4760923 d!1521403))

(declare-fun d!1521405 () Bool)

(declare-fun c!812179 () Bool)

(assert (=> d!1521405 (= c!812179 ((_ is Node!14502) (c!812164 localTotalInput!8)))))

(declare-fun e!2970981 () Bool)

(assert (=> d!1521405 (= (inv!68912 (c!812164 localTotalInput!8)) e!2970981)))

(declare-fun b!4760975 () Bool)

(declare-fun inv!68916 (Conc!14502) Bool)

(assert (=> b!4760975 (= e!2970981 (inv!68916 (c!812164 localTotalInput!8)))))

(declare-fun b!4760976 () Bool)

(declare-fun e!2970982 () Bool)

(assert (=> b!4760976 (= e!2970981 e!2970982)))

(declare-fun res!2019248 () Bool)

(assert (=> b!4760976 (= res!2019248 (not ((_ is Leaf!23605) (c!812164 localTotalInput!8))))))

(assert (=> b!4760976 (=> res!2019248 e!2970982)))

(declare-fun b!4760977 () Bool)

(declare-fun inv!68917 (Conc!14502) Bool)

(assert (=> b!4760977 (= e!2970982 (inv!68917 (c!812164 localTotalInput!8)))))

(assert (= (and d!1521405 c!812179) b!4760975))

(assert (= (and d!1521405 (not c!812179)) b!4760976))

(assert (= (and b!4760976 (not res!2019248)) b!4760977))

(declare-fun m!5730155 () Bool)

(assert (=> b!4760975 m!5730155))

(declare-fun m!5730157 () Bool)

(assert (=> b!4760977 m!5730157))

(assert (=> b!4760915 d!1521405))

(declare-fun d!1521407 () Bool)

(declare-fun isBalanced!3912 (Conc!14502) Bool)

(assert (=> d!1521407 (= (inv!68914 localTotalInput!8) (isBalanced!3912 (c!812164 localTotalInput!8)))))

(declare-fun bs!1147096 () Bool)

(assert (= bs!1147096 d!1521407))

(declare-fun m!5730159 () Bool)

(assert (=> bs!1147096 m!5730159))

(assert (=> start!486874 d!1521407))

(declare-fun d!1521409 () Bool)

(declare-fun res!2019251 () Bool)

(declare-fun e!2970985 () Bool)

(assert (=> d!1521409 (=> (not res!2019251) (not e!2970985))))

(assert (=> d!1521409 (= res!2019251 ((_ is HashMap!4747) (cache!4589 thiss!28909)))))

(assert (=> d!1521409 (= (inv!68915 thiss!28909) e!2970985)))

(declare-fun b!4760980 () Bool)

(assert (=> b!4760980 (= e!2970985 (validCacheMapFindLongestMatch!143 (cache!4589 thiss!28909) (totalInput!4514 thiss!28909)))))

(assert (= (and d!1521409 res!2019251) b!4760980))

(assert (=> b!4760980 m!5730078))

(assert (=> start!486874 d!1521409))

(declare-fun d!1521411 () Bool)

(assert (=> d!1521411 (= (inv!68914 (totalInput!4514 thiss!28909)) (isBalanced!3912 (c!812164 (totalInput!4514 thiss!28909))))))

(declare-fun bs!1147097 () Bool)

(assert (= bs!1147097 d!1521411))

(declare-fun m!5730161 () Bool)

(assert (=> bs!1147097 m!5730161))

(assert (=> b!4760918 d!1521411))

(declare-fun bs!1147098 () Bool)

(declare-fun b!4760985 () Bool)

(assert (= bs!1147098 (and b!4760985 b!4760961)))

(declare-fun lambda!223795 () Int)

(assert (=> bs!1147098 (= lambda!223795 lambda!223789)))

(declare-fun d!1521413 () Bool)

(declare-fun res!2019256 () Bool)

(declare-fun e!2970988 () Bool)

(assert (=> d!1521413 (=> (not res!2019256) (not e!2970988))))

(declare-fun valid!3860 (MutLongMap!4863) Bool)

(assert (=> d!1521413 (= res!2019256 (valid!3860 (v!47421 (underlying!9934 (cache!4589 thiss!28909)))))))

(assert (=> d!1521413 (= (valid!3859 (cache!4589 thiss!28909)) e!2970988)))

(declare-fun res!2019257 () Bool)

(assert (=> b!4760985 (=> (not res!2019257) (not e!2970988))))

(declare-fun forall!11840 (List!53502 Int) Bool)

(assert (=> b!4760985 (= res!2019257 (forall!11840 (toList!6219 (map!11880 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))) lambda!223795))))

(declare-fun b!4760986 () Bool)

(declare-fun allKeysSameHashInMap!2003 (ListLongMap!4611 Hashable!6524) Bool)

(assert (=> b!4760986 (= e!2970988 (allKeysSameHashInMap!2003 (map!11880 (v!47421 (underlying!9934 (cache!4589 thiss!28909)))) (hashF!12334 (cache!4589 thiss!28909))))))

(assert (= (and d!1521413 res!2019256) b!4760985))

(assert (= (and b!4760985 res!2019257) b!4760986))

(declare-fun m!5730163 () Bool)

(assert (=> d!1521413 m!5730163))

(assert (=> b!4760985 m!5730110))

(declare-fun m!5730165 () Bool)

(assert (=> b!4760985 m!5730165))

(assert (=> b!4760986 m!5730110))

(assert (=> b!4760986 m!5730110))

(declare-fun m!5730167 () Bool)

(assert (=> b!4760986 m!5730167))

(assert (=> b!4760920 d!1521413))

(declare-fun bs!1147099 () Bool)

(declare-fun b!4760988 () Bool)

(assert (= bs!1147099 (and b!4760988 b!4760919)))

(declare-fun lambda!223796 () Int)

(assert (=> bs!1147099 (= (= (totalInput!4514 thiss!28909) localTotalInput!8) (= lambda!223796 lambda!223786))))

(declare-fun bs!1147100 () Bool)

(assert (= bs!1147100 (and b!4760988 b!4760968)))

(assert (=> bs!1147100 (= (= (totalInput!4514 thiss!28909) localTotalInput!8) (= lambda!223796 lambda!223792))))

(assert (=> b!4760988 true))

(declare-fun d!1521415 () Bool)

(declare-fun res!2019258 () Bool)

(declare-fun e!2970989 () Bool)

(assert (=> d!1521415 (=> (not res!2019258) (not e!2970989))))

(assert (=> d!1521415 (= res!2019258 (valid!3859 (cache!4589 thiss!28909)))))

(assert (=> d!1521415 (= (validCacheMapFindLongestMatch!143 (cache!4589 thiss!28909) (totalInput!4514 thiss!28909)) e!2970989)))

(declare-fun b!4760987 () Bool)

(declare-fun res!2019259 () Bool)

(assert (=> b!4760987 (=> (not res!2019259) (not e!2970989))))

(assert (=> b!4760987 (= res!2019259 (invariantList!1649 (toList!6218 (map!11879 (cache!4589 thiss!28909)))))))

(assert (=> b!4760988 (= e!2970989 (forall!11839 (toList!6218 (map!11879 (cache!4589 thiss!28909))) lambda!223796))))

(assert (= (and d!1521415 res!2019258) b!4760987))

(assert (= (and b!4760987 res!2019259) b!4760988))

(assert (=> d!1521415 m!5730076))

(assert (=> b!4760987 m!5730086))

(assert (=> b!4760987 m!5730151))

(assert (=> b!4760988 m!5730086))

(declare-fun m!5730169 () Bool)

(assert (=> b!4760988 m!5730169))

(assert (=> b!4760921 d!1521415))

(declare-fun d!1521417 () Bool)

(assert (=> d!1521417 (= (array_inv!5695 (_keys!5198 (v!47420 (underlying!9933 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))))) (bvsge (size!36134 (_keys!5198 (v!47420 (underlying!9933 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4760926 d!1521417))

(declare-fun d!1521419 () Bool)

(assert (=> d!1521419 (= (array_inv!5696 (_values!5171 (v!47420 (underlying!9933 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))))) (bvsge (size!36135 (_values!5171 (v!47420 (underlying!9933 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4760926 d!1521419))

(declare-fun d!1521421 () Bool)

(declare-fun lambda!223799 () Int)

(declare-fun forall!11841 (List!53499 Int) Bool)

(assert (=> d!1521421 (= (inv!68913 setElem!27235) (forall!11841 (exprs!3451 setElem!27235) lambda!223799))))

(declare-fun bs!1147101 () Bool)

(assert (= bs!1147101 d!1521421))

(declare-fun m!5730171 () Bool)

(assert (=> bs!1147101 m!5730171))

(assert (=> setNonEmpty!27235 d!1521421))

(declare-fun d!1521423 () Bool)

(declare-fun res!2019264 () Bool)

(declare-fun e!2970994 () Bool)

(assert (=> d!1521423 (=> res!2019264 e!2970994)))

(assert (=> d!1521423 (= res!2019264 ((_ is Nil!53376) (toList!6218 (map!11879 (cache!4589 thiss!28909)))))))

(assert (=> d!1521423 (= (forall!11839 (toList!6218 (map!11879 (cache!4589 thiss!28909))) lambda!223786) e!2970994)))

(declare-fun b!4760993 () Bool)

(declare-fun e!2970995 () Bool)

(assert (=> b!4760993 (= e!2970994 e!2970995)))

(declare-fun res!2019265 () Bool)

(assert (=> b!4760993 (=> (not res!2019265) (not e!2970995))))

(declare-fun dynLambda!21920 (Int tuple2!55322) Bool)

(assert (=> b!4760993 (= res!2019265 (dynLambda!21920 lambda!223786 (h!59787 (toList!6218 (map!11879 (cache!4589 thiss!28909))))))))

(declare-fun b!4760994 () Bool)

(assert (=> b!4760994 (= e!2970995 (forall!11839 (t!360860 (toList!6218 (map!11879 (cache!4589 thiss!28909)))) lambda!223786))))

(assert (= (and d!1521423 (not res!2019264)) b!4760993))

(assert (= (and b!4760993 res!2019265) b!4760994))

(declare-fun b_lambda!183813 () Bool)

(assert (=> (not b_lambda!183813) (not b!4760993)))

(declare-fun m!5730173 () Bool)

(assert (=> b!4760993 m!5730173))

(declare-fun m!5730175 () Bool)

(assert (=> b!4760994 m!5730175))

(assert (=> b!4760919 d!1521423))

(declare-fun d!1521425 () Bool)

(declare-fun lt!1925033 () ListMap!5719)

(assert (=> d!1521425 (invariantList!1649 (toList!6218 lt!1925033))))

(assert (=> d!1521425 (= lt!1925033 (extractMap!2121 (toList!6219 (map!11880 (v!47421 (underlying!9934 (cache!4589 thiss!28909)))))))))

(assert (=> d!1521425 (valid!3859 (cache!4589 thiss!28909))))

(assert (=> d!1521425 (= (map!11879 (cache!4589 thiss!28909)) lt!1925033)))

(declare-fun bs!1147102 () Bool)

(assert (= bs!1147102 d!1521425))

(declare-fun m!5730177 () Bool)

(assert (=> bs!1147102 m!5730177))

(assert (=> bs!1147102 m!5730110))

(assert (=> bs!1147102 m!5730130))

(assert (=> bs!1147102 m!5730076))

(assert (=> b!4760919 d!1521425))

(declare-fun d!1521427 () Bool)

(declare-fun c!812180 () Bool)

(assert (=> d!1521427 (= c!812180 ((_ is Node!14502) (c!812164 (totalInput!4514 thiss!28909))))))

(declare-fun e!2970996 () Bool)

(assert (=> d!1521427 (= (inv!68912 (c!812164 (totalInput!4514 thiss!28909))) e!2970996)))

(declare-fun b!4760995 () Bool)

(assert (=> b!4760995 (= e!2970996 (inv!68916 (c!812164 (totalInput!4514 thiss!28909))))))

(declare-fun b!4760996 () Bool)

(declare-fun e!2970997 () Bool)

(assert (=> b!4760996 (= e!2970996 e!2970997)))

(declare-fun res!2019266 () Bool)

(assert (=> b!4760996 (= res!2019266 (not ((_ is Leaf!23605) (c!812164 (totalInput!4514 thiss!28909)))))))

(assert (=> b!4760996 (=> res!2019266 e!2970997)))

(declare-fun b!4760997 () Bool)

(assert (=> b!4760997 (= e!2970997 (inv!68917 (c!812164 (totalInput!4514 thiss!28909))))))

(assert (= (and d!1521427 c!812180) b!4760995))

(assert (= (and d!1521427 (not c!812180)) b!4760996))

(assert (= (and b!4760996 (not res!2019266)) b!4760997))

(declare-fun m!5730179 () Bool)

(assert (=> b!4760995 m!5730179))

(declare-fun m!5730181 () Bool)

(assert (=> b!4760997 m!5730181))

(assert (=> b!4760913 d!1521427))

(declare-fun tp!1353740 () Bool)

(declare-fun e!2971003 () Bool)

(declare-fun b!4761006 () Bool)

(declare-fun tp!1353739 () Bool)

(assert (=> b!4761006 (= e!2971003 (and (inv!68912 (left!39154 (c!812164 localTotalInput!8))) tp!1353739 (inv!68912 (right!39484 (c!812164 localTotalInput!8))) tp!1353740))))

(declare-fun b!4761008 () Bool)

(declare-fun e!2971002 () Bool)

(declare-fun tp!1353738 () Bool)

(assert (=> b!4761008 (= e!2971002 tp!1353738)))

(declare-fun b!4761007 () Bool)

(declare-fun inv!68918 (IArray!29065) Bool)

(assert (=> b!4761007 (= e!2971003 (and (inv!68918 (xs!17808 (c!812164 localTotalInput!8))) e!2971002))))

(assert (=> b!4760915 (= tp!1353731 (and (inv!68912 (c!812164 localTotalInput!8)) e!2971003))))

(assert (= (and b!4760915 ((_ is Node!14502) (c!812164 localTotalInput!8))) b!4761006))

(assert (= b!4761007 b!4761008))

(assert (= (and b!4760915 ((_ is Leaf!23605) (c!812164 localTotalInput!8))) b!4761007))

(declare-fun m!5730183 () Bool)

(assert (=> b!4761006 m!5730183))

(declare-fun m!5730185 () Bool)

(assert (=> b!4761006 m!5730185))

(declare-fun m!5730187 () Bool)

(assert (=> b!4761007 m!5730187))

(assert (=> b!4760915 m!5730084))

(declare-fun mapIsEmpty!21620 () Bool)

(declare-fun mapRes!21620 () Bool)

(assert (=> mapIsEmpty!21620 mapRes!21620))

(declare-fun e!2971012 () Bool)

(declare-fun setElem!27241 () Context!5902)

(declare-fun setRes!27240 () Bool)

(declare-fun tp!1353755 () Bool)

(declare-fun setNonEmpty!27240 () Bool)

(assert (=> setNonEmpty!27240 (= setRes!27240 (and tp!1353755 (inv!68913 setElem!27241) e!2971012))))

(declare-fun mapDefault!21620 () List!53500)

(declare-fun setRest!27240 () (InoxSet Context!5902))

(assert (=> setNonEmpty!27240 (= (_1!30954 (_1!30955 (h!59787 mapDefault!21620))) ((_ map or) (store ((as const (Array Context!5902 Bool)) false) setElem!27241 true) setRest!27240))))

(declare-fun b!4761019 () Bool)

(declare-fun e!2971015 () Bool)

(declare-fun tp!1353761 () Bool)

(assert (=> b!4761019 (= e!2971015 tp!1353761)))

(declare-fun setIsEmpty!27240 () Bool)

(assert (=> setIsEmpty!27240 setRes!27240))

(declare-fun b!4761020 () Bool)

(declare-fun e!2971013 () Bool)

(declare-fun setRes!27241 () Bool)

(declare-fun tp!1353758 () Bool)

(assert (=> b!4761020 (= e!2971013 (and setRes!27241 tp!1353758))))

(declare-fun condSetEmpty!27240 () Bool)

(declare-fun mapValue!21620 () List!53500)

(assert (=> b!4761020 (= condSetEmpty!27240 (= (_1!30954 (_1!30955 (h!59787 mapValue!21620))) ((as const (Array Context!5902 Bool)) false)))))

(declare-fun b!4761021 () Bool)

(declare-fun tp!1353759 () Bool)

(assert (=> b!4761021 (= e!2971012 tp!1353759)))

(declare-fun setIsEmpty!27241 () Bool)

(assert (=> setIsEmpty!27241 setRes!27241))

(declare-fun condMapEmpty!21620 () Bool)

(assert (=> mapNonEmpty!21617 (= condMapEmpty!21620 (= mapRest!21617 ((as const (Array (_ BitVec 32) List!53500)) mapDefault!21620)))))

(declare-fun e!2971014 () Bool)

(assert (=> mapNonEmpty!21617 (= tp!1353728 (and e!2971014 mapRes!21620))))

(declare-fun b!4761022 () Bool)

(declare-fun tp!1353756 () Bool)

(assert (=> b!4761022 (= e!2971014 (and setRes!27240 tp!1353756))))

(declare-fun condSetEmpty!27241 () Bool)

(assert (=> b!4761022 (= condSetEmpty!27241 (= (_1!30954 (_1!30955 (h!59787 mapDefault!21620))) ((as const (Array Context!5902 Bool)) false)))))

(declare-fun tp!1353760 () Bool)

(declare-fun setNonEmpty!27241 () Bool)

(declare-fun setElem!27240 () Context!5902)

(assert (=> setNonEmpty!27241 (= setRes!27241 (and tp!1353760 (inv!68913 setElem!27240) e!2971015))))

(declare-fun setRest!27241 () (InoxSet Context!5902))

(assert (=> setNonEmpty!27241 (= (_1!30954 (_1!30955 (h!59787 mapValue!21620))) ((_ map or) (store ((as const (Array Context!5902 Bool)) false) setElem!27240 true) setRest!27241))))

(declare-fun mapNonEmpty!21620 () Bool)

(declare-fun tp!1353757 () Bool)

(assert (=> mapNonEmpty!21620 (= mapRes!21620 (and tp!1353757 e!2971013))))

(declare-fun mapRest!21620 () (Array (_ BitVec 32) List!53500))

(declare-fun mapKey!21620 () (_ BitVec 32))

(assert (=> mapNonEmpty!21620 (= mapRest!21617 (store mapRest!21620 mapKey!21620 mapValue!21620))))

(assert (= (and mapNonEmpty!21617 condMapEmpty!21620) mapIsEmpty!21620))

(assert (= (and mapNonEmpty!21617 (not condMapEmpty!21620)) mapNonEmpty!21620))

(assert (= (and b!4761020 condSetEmpty!27240) setIsEmpty!27241))

(assert (= (and b!4761020 (not condSetEmpty!27240)) setNonEmpty!27241))

(assert (= setNonEmpty!27241 b!4761019))

(assert (= (and mapNonEmpty!21620 ((_ is Cons!53376) mapValue!21620)) b!4761020))

(assert (= (and b!4761022 condSetEmpty!27241) setIsEmpty!27240))

(assert (= (and b!4761022 (not condSetEmpty!27241)) setNonEmpty!27240))

(assert (= setNonEmpty!27240 b!4761021))

(assert (= (and mapNonEmpty!21617 ((_ is Cons!53376) mapDefault!21620)) b!4761022))

(declare-fun m!5730189 () Bool)

(assert (=> setNonEmpty!27240 m!5730189))

(declare-fun m!5730191 () Bool)

(assert (=> setNonEmpty!27241 m!5730191))

(declare-fun m!5730193 () Bool)

(assert (=> mapNonEmpty!21620 m!5730193))

(declare-fun e!2971020 () Bool)

(assert (=> mapNonEmpty!21617 (= tp!1353721 e!2971020)))

(declare-fun e!2971021 () Bool)

(declare-fun tp!1353770 () Bool)

(declare-fun setElem!27244 () Context!5902)

(declare-fun setNonEmpty!27244 () Bool)

(declare-fun setRes!27244 () Bool)

(assert (=> setNonEmpty!27244 (= setRes!27244 (and tp!1353770 (inv!68913 setElem!27244) e!2971021))))

(declare-fun setRest!27244 () (InoxSet Context!5902))

(assert (=> setNonEmpty!27244 (= (_1!30954 (_1!30955 (h!59787 mapValue!21617))) ((_ map or) (store ((as const (Array Context!5902 Bool)) false) setElem!27244 true) setRest!27244))))

(declare-fun b!4761030 () Bool)

(declare-fun tp!1353768 () Bool)

(assert (=> b!4761030 (= e!2971021 tp!1353768)))

(declare-fun setIsEmpty!27244 () Bool)

(assert (=> setIsEmpty!27244 setRes!27244))

(declare-fun b!4761029 () Bool)

(declare-fun tp!1353769 () Bool)

(assert (=> b!4761029 (= e!2971020 (and setRes!27244 tp!1353769))))

(declare-fun condSetEmpty!27244 () Bool)

(assert (=> b!4761029 (= condSetEmpty!27244 (= (_1!30954 (_1!30955 (h!59787 mapValue!21617))) ((as const (Array Context!5902 Bool)) false)))))

(assert (= (and b!4761029 condSetEmpty!27244) setIsEmpty!27244))

(assert (= (and b!4761029 (not condSetEmpty!27244)) setNonEmpty!27244))

(assert (= setNonEmpty!27244 b!4761030))

(assert (= (and mapNonEmpty!21617 ((_ is Cons!53376) mapValue!21617)) b!4761029))

(declare-fun m!5730195 () Bool)

(assert (=> setNonEmpty!27244 m!5730195))

(declare-fun b!4761035 () Bool)

(declare-fun e!2971024 () Bool)

(declare-fun tp!1353775 () Bool)

(declare-fun tp!1353776 () Bool)

(assert (=> b!4761035 (= e!2971024 (and tp!1353775 tp!1353776))))

(assert (=> b!4760914 (= tp!1353727 e!2971024)))

(assert (= (and b!4760914 ((_ is Cons!53375) (exprs!3451 setElem!27235))) b!4761035))

(declare-fun e!2971025 () Bool)

(assert (=> b!4760926 (= tp!1353729 e!2971025)))

(declare-fun setRes!27245 () Bool)

(declare-fun tp!1353779 () Bool)

(declare-fun e!2971026 () Bool)

(declare-fun setElem!27245 () Context!5902)

(declare-fun setNonEmpty!27245 () Bool)

(assert (=> setNonEmpty!27245 (= setRes!27245 (and tp!1353779 (inv!68913 setElem!27245) e!2971026))))

(declare-fun setRest!27245 () (InoxSet Context!5902))

(assert (=> setNonEmpty!27245 (= (_1!30954 (_1!30955 (h!59787 (zeroValue!5146 (v!47420 (underlying!9933 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5902 Bool)) false) setElem!27245 true) setRest!27245))))

(declare-fun b!4761037 () Bool)

(declare-fun tp!1353777 () Bool)

(assert (=> b!4761037 (= e!2971026 tp!1353777)))

(declare-fun setIsEmpty!27245 () Bool)

(assert (=> setIsEmpty!27245 setRes!27245))

(declare-fun b!4761036 () Bool)

(declare-fun tp!1353778 () Bool)

(assert (=> b!4761036 (= e!2971025 (and setRes!27245 tp!1353778))))

(declare-fun condSetEmpty!27245 () Bool)

(assert (=> b!4761036 (= condSetEmpty!27245 (= (_1!30954 (_1!30955 (h!59787 (zeroValue!5146 (v!47420 (underlying!9933 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))))))) ((as const (Array Context!5902 Bool)) false)))))

(assert (= (and b!4761036 condSetEmpty!27245) setIsEmpty!27245))

(assert (= (and b!4761036 (not condSetEmpty!27245)) setNonEmpty!27245))

(assert (= setNonEmpty!27245 b!4761037))

(assert (= (and b!4760926 ((_ is Cons!53376) (zeroValue!5146 (v!47420 (underlying!9933 (v!47421 (underlying!9934 (cache!4589 thiss!28909)))))))) b!4761036))

(declare-fun m!5730197 () Bool)

(assert (=> setNonEmpty!27245 m!5730197))

(declare-fun e!2971027 () Bool)

(assert (=> b!4760926 (= tp!1353725 e!2971027)))

(declare-fun setElem!27246 () Context!5902)

(declare-fun tp!1353782 () Bool)

(declare-fun setNonEmpty!27246 () Bool)

(declare-fun e!2971028 () Bool)

(declare-fun setRes!27246 () Bool)

(assert (=> setNonEmpty!27246 (= setRes!27246 (and tp!1353782 (inv!68913 setElem!27246) e!2971028))))

(declare-fun setRest!27246 () (InoxSet Context!5902))

(assert (=> setNonEmpty!27246 (= (_1!30954 (_1!30955 (h!59787 (minValue!5146 (v!47420 (underlying!9933 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5902 Bool)) false) setElem!27246 true) setRest!27246))))

(declare-fun b!4761039 () Bool)

(declare-fun tp!1353780 () Bool)

(assert (=> b!4761039 (= e!2971028 tp!1353780)))

(declare-fun setIsEmpty!27246 () Bool)

(assert (=> setIsEmpty!27246 setRes!27246))

(declare-fun b!4761038 () Bool)

(declare-fun tp!1353781 () Bool)

(assert (=> b!4761038 (= e!2971027 (and setRes!27246 tp!1353781))))

(declare-fun condSetEmpty!27246 () Bool)

(assert (=> b!4761038 (= condSetEmpty!27246 (= (_1!30954 (_1!30955 (h!59787 (minValue!5146 (v!47420 (underlying!9933 (v!47421 (underlying!9934 (cache!4589 thiss!28909))))))))) ((as const (Array Context!5902 Bool)) false)))))

(assert (= (and b!4761038 condSetEmpty!27246) setIsEmpty!27246))

(assert (= (and b!4761038 (not condSetEmpty!27246)) setNonEmpty!27246))

(assert (= setNonEmpty!27246 b!4761039))

(assert (= (and b!4760926 ((_ is Cons!53376) (minValue!5146 (v!47420 (underlying!9933 (v!47421 (underlying!9934 (cache!4589 thiss!28909)))))))) b!4761038))

(declare-fun m!5730199 () Bool)

(assert (=> setNonEmpty!27246 m!5730199))

(declare-fun condSetEmpty!27249 () Bool)

(assert (=> setNonEmpty!27235 (= condSetEmpty!27249 (= setRest!27235 ((as const (Array Context!5902 Bool)) false)))))

(declare-fun setRes!27249 () Bool)

(assert (=> setNonEmpty!27235 (= tp!1353730 setRes!27249)))

(declare-fun setIsEmpty!27249 () Bool)

(assert (=> setIsEmpty!27249 setRes!27249))

(declare-fun e!2971031 () Bool)

(declare-fun tp!1353787 () Bool)

(declare-fun setNonEmpty!27249 () Bool)

(declare-fun setElem!27249 () Context!5902)

(assert (=> setNonEmpty!27249 (= setRes!27249 (and tp!1353787 (inv!68913 setElem!27249) e!2971031))))

(declare-fun setRest!27249 () (InoxSet Context!5902))

(assert (=> setNonEmpty!27249 (= setRest!27235 ((_ map or) (store ((as const (Array Context!5902 Bool)) false) setElem!27249 true) setRest!27249))))

(declare-fun b!4761044 () Bool)

(declare-fun tp!1353788 () Bool)

(assert (=> b!4761044 (= e!2971031 tp!1353788)))

(assert (= (and setNonEmpty!27235 condSetEmpty!27249) setIsEmpty!27249))

(assert (= (and setNonEmpty!27235 (not condSetEmpty!27249)) setNonEmpty!27249))

(assert (= setNonEmpty!27249 b!4761044))

(declare-fun m!5730201 () Bool)

(assert (=> setNonEmpty!27249 m!5730201))

(declare-fun e!2971032 () Bool)

(assert (=> b!4760925 (= tp!1353723 e!2971032)))

(declare-fun setRes!27250 () Bool)

(declare-fun setElem!27250 () Context!5902)

(declare-fun tp!1353791 () Bool)

(declare-fun e!2971033 () Bool)

(declare-fun setNonEmpty!27250 () Bool)

(assert (=> setNonEmpty!27250 (= setRes!27250 (and tp!1353791 (inv!68913 setElem!27250) e!2971033))))

(declare-fun setRest!27250 () (InoxSet Context!5902))

(assert (=> setNonEmpty!27250 (= (_1!30954 (_1!30955 (h!59787 mapDefault!21617))) ((_ map or) (store ((as const (Array Context!5902 Bool)) false) setElem!27250 true) setRest!27250))))

(declare-fun b!4761046 () Bool)

(declare-fun tp!1353789 () Bool)

(assert (=> b!4761046 (= e!2971033 tp!1353789)))

(declare-fun setIsEmpty!27250 () Bool)

(assert (=> setIsEmpty!27250 setRes!27250))

(declare-fun b!4761045 () Bool)

(declare-fun tp!1353790 () Bool)

(assert (=> b!4761045 (= e!2971032 (and setRes!27250 tp!1353790))))

(declare-fun condSetEmpty!27250 () Bool)

(assert (=> b!4761045 (= condSetEmpty!27250 (= (_1!30954 (_1!30955 (h!59787 mapDefault!21617))) ((as const (Array Context!5902 Bool)) false)))))

(assert (= (and b!4761045 condSetEmpty!27250) setIsEmpty!27250))

(assert (= (and b!4761045 (not condSetEmpty!27250)) setNonEmpty!27250))

(assert (= setNonEmpty!27250 b!4761046))

(assert (= (and b!4760925 ((_ is Cons!53376) mapDefault!21617)) b!4761045))

(declare-fun m!5730203 () Bool)

(assert (=> setNonEmpty!27250 m!5730203))

(declare-fun tp!1353794 () Bool)

(declare-fun e!2971035 () Bool)

(declare-fun tp!1353793 () Bool)

(declare-fun b!4761047 () Bool)

(assert (=> b!4761047 (= e!2971035 (and (inv!68912 (left!39154 (c!812164 (totalInput!4514 thiss!28909)))) tp!1353793 (inv!68912 (right!39484 (c!812164 (totalInput!4514 thiss!28909)))) tp!1353794))))

(declare-fun b!4761049 () Bool)

(declare-fun e!2971034 () Bool)

(declare-fun tp!1353792 () Bool)

(assert (=> b!4761049 (= e!2971034 tp!1353792)))

(declare-fun b!4761048 () Bool)

(assert (=> b!4761048 (= e!2971035 (and (inv!68918 (xs!17808 (c!812164 (totalInput!4514 thiss!28909)))) e!2971034))))

(assert (=> b!4760913 (= tp!1353724 (and (inv!68912 (c!812164 (totalInput!4514 thiss!28909))) e!2971035))))

(assert (= (and b!4760913 ((_ is Node!14502) (c!812164 (totalInput!4514 thiss!28909)))) b!4761047))

(assert (= b!4761048 b!4761049))

(assert (= (and b!4760913 ((_ is Leaf!23605) (c!812164 (totalInput!4514 thiss!28909)))) b!4761048))

(declare-fun m!5730205 () Bool)

(assert (=> b!4761047 m!5730205))

(declare-fun m!5730207 () Bool)

(assert (=> b!4761047 m!5730207))

(declare-fun m!5730209 () Bool)

(assert (=> b!4761048 m!5730209))

(assert (=> b!4760913 m!5730074))

(declare-fun b_lambda!183815 () Bool)

(assert (= b_lambda!183813 (or b!4760919 b_lambda!183815)))

(declare-fun bs!1147103 () Bool)

(declare-fun d!1521429 () Bool)

(assert (= bs!1147103 (and d!1521429 b!4760919)))

(declare-fun validCacheMapFindLongestMatchBody!24 (tuple2!55322 BalanceConc!28494) Bool)

(assert (=> bs!1147103 (= (dynLambda!21920 lambda!223786 (h!59787 (toList!6218 (map!11879 (cache!4589 thiss!28909))))) (validCacheMapFindLongestMatchBody!24 (h!59787 (toList!6218 (map!11879 (cache!4589 thiss!28909)))) localTotalInput!8))))

(declare-fun m!5730211 () Bool)

(assert (=> bs!1147103 m!5730211))

(assert (=> b!4760993 d!1521429))

(check-sat (not b!4760960) (not bm!333773) (not b!4761008) (not bm!333774) (not b!4761029) (not b!4760977) (not b!4760994) (not d!1521413) (not b!4760952) (not d!1521421) (not b!4761020) (not b!4760968) (not b!4760997) (not setNonEmpty!27241) (not b!4761022) (not setNonEmpty!27246) (not b_next!130073) (not b!4761030) (not b!4760995) (not b!4760913) (not bm!333775) b_and!340991 (not b!4761007) (not b!4761045) (not d!1521401) (not b!4761019) (not b!4761047) (not b!4761035) (not setNonEmpty!27250) (not b!4761046) (not bm!333778) (not b!4761048) (not b!4761021) (not b!4761036) (not b!4761038) (not b!4760986) (not d!1521425) (not setNonEmpty!27240) (not b!4760915) (not bs!1147103) (not b!4761049) (not b_next!130071) (not b!4760985) (not bm!333776) (not b!4761044) (not b!4760953) (not setNonEmpty!27249) (not b!4760961) (not b!4760967) (not b!4760962) (not b!4761037) (not d!1521411) (not d!1521415) (not mapNonEmpty!21620) (not d!1521403) (not bm!333777) (not b!4761006) (not b!4760988) (not setNonEmpty!27244) (not b_lambda!183815) (not b!4760975) (not b!4760987) (not setNonEmpty!27245) b_and!340993 (not d!1521407) (not b!4760980) (not b!4761039))
(check-sat b_and!340993 b_and!340991 (not b_next!130071) (not b_next!130073))
