; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208308 () Bool)

(assert start!208308)

(declare-fun b!2147870 () Bool)

(declare-fun b_free!63397 () Bool)

(declare-fun b_next!64101 () Bool)

(assert (=> b!2147870 (= b_free!63397 (not b_next!64101))))

(declare-fun tp!666483 () Bool)

(declare-fun b_and!172989 () Bool)

(assert (=> b!2147870 (= tp!666483 b_and!172989)))

(declare-fun b!2147879 () Bool)

(declare-fun b_free!63399 () Bool)

(declare-fun b_next!64103 () Bool)

(assert (=> b!2147879 (= b_free!63399 (not b_next!64103))))

(declare-fun tp!666487 () Bool)

(declare-fun b_and!172991 () Bool)

(assert (=> b!2147879 (= tp!666487 b_and!172991)))

(declare-fun b!2147869 () Bool)

(declare-fun e!1373140 () Bool)

(declare-fun e!1373131 () Bool)

(assert (=> b!2147869 (= e!1373140 (not e!1373131))))

(declare-fun res!926608 () Bool)

(assert (=> b!2147869 (=> res!926608 e!1373131)))

(declare-datatypes ((Option!4970 0))(
  ( (None!4969) (Some!4969 (v!29138 Int)) )
))
(declare-fun lt!799694 () Option!4970)

(declare-fun isEmpty!14346 (Option!4970) Bool)

(assert (=> b!2147869 (= res!926608 (isEmpty!14346 lt!799694))))

(declare-datatypes ((array!9623 0))(
  ( (array!9624 (arr!4300 (Array (_ BitVec 32) (_ BitVec 64))) (size!19232 (_ BitVec 32))) )
))
(declare-datatypes ((C!11800 0))(
  ( (C!11801 (val!6886 Int)) )
))
(declare-datatypes ((Regex!5827 0))(
  ( (ElementMatch!5827 (c!340924 C!11800)) (Concat!10129 (regOne!12166 Regex!5827) (regTwo!12166 Regex!5827)) (EmptyExpr!5827) (Star!5827 (reg!6156 Regex!5827)) (EmptyLang!5827) (Union!5827 (regOne!12167 Regex!5827) (regTwo!12167 Regex!5827)) )
))
(declare-datatypes ((List!24638 0))(
  ( (Nil!24554) (Cons!24554 (h!29955 Regex!5827) (t!197174 List!24638)) )
))
(declare-datatypes ((Context!2794 0))(
  ( (Context!2795 (exprs!1897 List!24638)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3586 0))(
  ( (tuple3!3587 (_1!14467 (InoxSet Context!2794)) (_2!14467 Int) (_3!2263 Int)) )
))
(declare-datatypes ((tuple2!24408 0))(
  ( (tuple2!24409 (_1!14468 tuple3!3586) (_2!14468 Int)) )
))
(declare-datatypes ((List!24639 0))(
  ( (Nil!24555) (Cons!24555 (h!29956 tuple2!24408) (t!197175 List!24639)) )
))
(declare-datatypes ((array!9625 0))(
  ( (array!9626 (arr!4301 (Array (_ BitVec 32) List!24639)) (size!19233 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5704 0))(
  ( (LongMapFixedSize!5705 (defaultEntry!3217 Int) (mask!7081 (_ BitVec 32)) (extraKeys!3100 (_ BitVec 32)) (zeroValue!3110 List!24639) (minValue!3110 List!24639) (_size!5755 (_ BitVec 32)) (_keys!3149 array!9623) (_values!3132 array!9625) (_vacant!2913 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11233 0))(
  ( (Cell!11234 (v!29139 LongMapFixedSize!5704)) )
))
(declare-datatypes ((MutLongMap!2852 0))(
  ( (LongMap!2852 (underlying!5899 Cell!11233)) (MutLongMapExt!2851 (__x!16732 Int)) )
))
(declare-datatypes ((Cell!11235 0))(
  ( (Cell!11236 (v!29140 MutLongMap!2852)) )
))
(declare-datatypes ((List!24640 0))(
  ( (Nil!24556) (Cons!24556 (h!29957 C!11800) (t!197176 List!24640)) )
))
(declare-datatypes ((IArray!15931 0))(
  ( (IArray!15932 (innerList!8023 List!24640)) )
))
(declare-datatypes ((Conc!7963 0))(
  ( (Node!7963 (left!18847 Conc!7963) (right!19177 Conc!7963) (csize!16156 Int) (cheight!8174 Int)) (Leaf!11644 (xs!10905 IArray!15931) (csize!16157 Int)) (Empty!7963) )
))
(declare-datatypes ((Hashable!2766 0))(
  ( (HashableExt!2765 (__x!16733 Int)) )
))
(declare-datatypes ((MutableMap!2766 0))(
  ( (MutableMapExt!2765 (__x!16734 Int)) (HashMap!2766 (underlying!5900 Cell!11235) (hashF!4689 Hashable!2766) (_size!5756 (_ BitVec 32)) (defaultValue!2928 Int)) )
))
(declare-datatypes ((BalanceConc!15688 0))(
  ( (BalanceConc!15689 (c!340925 Conc!7963)) )
))
(declare-datatypes ((CacheFurthestNullable!890 0))(
  ( (CacheFurthestNullable!891 (cache!3147 MutableMap!2766) (totalInput!3207 BalanceConc!15688)) )
))
(declare-fun thiss!29173 () CacheFurthestNullable!890)

(declare-fun lt!799695 () tuple3!3586)

(declare-fun apply!6001 (MutableMap!2766 tuple3!3586) Int)

(assert (=> b!2147869 (= lt!799694 (Some!4969 (apply!6001 (cache!3147 thiss!29173) lt!799695)))))

(declare-fun e!1373143 () Bool)

(assert (=> b!2147869 e!1373143))

(declare-fun res!926606 () Bool)

(assert (=> b!2147869 (=> (not res!926606) (not e!1373143))))

(declare-fun from!960 () Int)

(assert (=> b!2147869 (= res!926606 (>= from!960 0))))

(declare-fun lastNullablePos!99 () Int)

(declare-fun z!526 () (InoxSet Context!2794))

(declare-datatypes ((Unit!37761 0))(
  ( (Unit!37762) )
))
(declare-fun lt!799697 () Unit!37761)

(declare-fun lemmaIfInCacheThenValid!16 (CacheFurthestNullable!890 (InoxSet Context!2794) Int Int BalanceConc!15688) Unit!37761)

(assert (=> b!2147869 (= lt!799697 (lemmaIfInCacheThenValid!16 thiss!29173 z!526 from!960 lastNullablePos!99 (totalInput!3207 thiss!29173)))))

(declare-fun tp!666484 () Bool)

(declare-fun setRes!16915 () Bool)

(declare-fun setNonEmpty!16915 () Bool)

(declare-fun setElem!16915 () Context!2794)

(declare-fun e!1373134 () Bool)

(declare-fun inv!32315 (Context!2794) Bool)

(assert (=> setNonEmpty!16915 (= setRes!16915 (and tp!666484 (inv!32315 setElem!16915) e!1373134))))

(declare-fun setRest!16915 () (InoxSet Context!2794))

(assert (=> setNonEmpty!16915 (= z!526 ((_ map or) (store ((as const (Array Context!2794 Bool)) false) setElem!16915 true) setRest!16915))))

(declare-fun tp!666485 () Bool)

(declare-fun e!1373135 () Bool)

(declare-fun e!1373138 () Bool)

(declare-fun tp!666490 () Bool)

(declare-fun array_inv!3080 (array!9623) Bool)

(declare-fun array_inv!3081 (array!9625) Bool)

(assert (=> b!2147870 (= e!1373138 (and tp!666483 tp!666490 tp!666485 (array_inv!3080 (_keys!3149 (v!29139 (underlying!5899 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))) (array_inv!3081 (_values!3132 (v!29139 (underlying!5899 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))) e!1373135))))

(declare-fun b!2147872 () Bool)

(declare-fun e!1373130 () Bool)

(declare-fun e!1373145 () Bool)

(declare-fun lt!799696 () MutLongMap!2852)

(get-info :version)

(assert (=> b!2147872 (= e!1373130 (and e!1373145 ((_ is LongMap!2852) lt!799696)))))

(assert (=> b!2147872 (= lt!799696 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))

(declare-fun b!2147873 () Bool)

(declare-fun tp!666491 () Bool)

(assert (=> b!2147873 (= e!1373134 tp!666491)))

(declare-fun b!2147874 () Bool)

(declare-fun e!1373137 () Bool)

(declare-fun tp!666482 () Bool)

(declare-fun inv!32316 (Conc!7963) Bool)

(assert (=> b!2147874 (= e!1373137 (and (inv!32316 (c!340925 (totalInput!3207 thiss!29173))) tp!666482))))

(declare-fun mapNonEmpty!13526 () Bool)

(declare-fun mapRes!13526 () Bool)

(declare-fun tp!666486 () Bool)

(declare-fun tp!666489 () Bool)

(assert (=> mapNonEmpty!13526 (= mapRes!13526 (and tp!666486 tp!666489))))

(declare-fun mapValue!13526 () List!24639)

(declare-fun mapKey!13526 () (_ BitVec 32))

(declare-fun mapRest!13526 () (Array (_ BitVec 32) List!24639))

(assert (=> mapNonEmpty!13526 (= (arr!4301 (_values!3132 (v!29139 (underlying!5899 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))) (store mapRest!13526 mapKey!13526 mapValue!13526))))

(declare-fun b!2147875 () Bool)

(declare-fun e!1373144 () Bool)

(declare-fun e!1373132 () Bool)

(declare-fun inv!32317 (BalanceConc!15688) Bool)

(assert (=> b!2147875 (= e!1373132 (and e!1373144 (inv!32317 (totalInput!3207 thiss!29173)) e!1373137))))

(declare-fun b!2147876 () Bool)

(declare-fun e!1373133 () Bool)

(assert (=> b!2147876 (= e!1373133 e!1373140)))

(declare-fun res!926610 () Bool)

(assert (=> b!2147876 (=> (not res!926610) (not e!1373140))))

(declare-fun contains!4184 (MutableMap!2766 tuple3!3586) Bool)

(assert (=> b!2147876 (= res!926610 (contains!4184 (cache!3147 thiss!29173) lt!799695))))

(assert (=> b!2147876 (= lt!799695 (tuple3!3587 z!526 from!960 lastNullablePos!99))))

(declare-fun b!2147877 () Bool)

(declare-fun res!926605 () Bool)

(assert (=> b!2147877 (=> (not res!926605) (not e!1373133))))

(declare-fun validCacheMapFurthestNullable!128 (MutableMap!2766 BalanceConc!15688) Bool)

(assert (=> b!2147877 (= res!926605 (validCacheMapFurthestNullable!128 (cache!3147 thiss!29173) (totalInput!3207 thiss!29173)))))

(declare-fun b!2147878 () Bool)

(declare-fun res!926609 () Bool)

(assert (=> b!2147878 (=> (not res!926609) (not e!1373133))))

(declare-fun e!1373139 () Bool)

(assert (=> b!2147878 (= res!926609 e!1373139)))

(declare-fun res!926603 () Bool)

(assert (=> b!2147878 (=> res!926603 e!1373139)))

(declare-fun nullableZipper!173 ((InoxSet Context!2794)) Bool)

(assert (=> b!2147878 (= res!926603 (not (nullableZipper!173 z!526)))))

(declare-fun setIsEmpty!16915 () Bool)

(assert (=> setIsEmpty!16915 setRes!16915))

(assert (=> b!2147879 (= e!1373144 (and e!1373130 tp!666487))))

(declare-fun mapIsEmpty!13526 () Bool)

(assert (=> mapIsEmpty!13526 mapRes!13526))

(declare-fun res!926607 () Bool)

(assert (=> start!208308 (=> (not res!926607) (not e!1373133))))

(assert (=> start!208308 (= res!926607 (and (>= lastNullablePos!99 (- 1)) (< lastNullablePos!99 from!960)))))

(assert (=> start!208308 e!1373133))

(assert (=> start!208308 true))

(declare-fun condSetEmpty!16915 () Bool)

(assert (=> start!208308 (= condSetEmpty!16915 (= z!526 ((as const (Array Context!2794 Bool)) false)))))

(assert (=> start!208308 setRes!16915))

(declare-fun inv!32318 (CacheFurthestNullable!890) Bool)

(assert (=> start!208308 (and (inv!32318 thiss!29173) e!1373132)))

(declare-fun b!2147871 () Bool)

(declare-fun e!1373142 () Bool)

(assert (=> b!2147871 (= e!1373145 e!1373142)))

(declare-fun b!2147880 () Bool)

(declare-fun get!7486 (Option!4970) Int)

(declare-fun furthestNullablePosition!104 ((InoxSet Context!2794) Int BalanceConc!15688 Int Int) Int)

(declare-fun size!19234 (BalanceConc!15688) Int)

(assert (=> b!2147880 (= e!1373131 (= (get!7486 lt!799694) (furthestNullablePosition!104 z!526 from!960 (totalInput!3207 thiss!29173) (size!19234 (totalInput!3207 thiss!29173)) lastNullablePos!99)))))

(declare-fun b!2147881 () Bool)

(declare-fun e!1373136 () Bool)

(assert (=> b!2147881 (= e!1373143 e!1373136)))

(declare-fun res!926604 () Bool)

(assert (=> b!2147881 (=> (not res!926604) (not e!1373136))))

(declare-fun lt!799698 () Int)

(assert (=> b!2147881 (= res!926604 (<= from!960 lt!799698))))

(assert (=> b!2147881 (= lt!799698 (size!19234 (totalInput!3207 thiss!29173)))))

(declare-fun b!2147882 () Bool)

(assert (=> b!2147882 (= e!1373136 (= (furthestNullablePosition!104 z!526 from!960 (totalInput!3207 thiss!29173) lt!799698 lastNullablePos!99) (apply!6001 (cache!3147 thiss!29173) lt!799695)))))

(declare-fun b!2147883 () Bool)

(assert (=> b!2147883 (= e!1373139 (= lastNullablePos!99 (- from!960 1)))))

(declare-fun b!2147884 () Bool)

(assert (=> b!2147884 (= e!1373142 e!1373138)))

(declare-fun b!2147885 () Bool)

(declare-fun tp!666488 () Bool)

(assert (=> b!2147885 (= e!1373135 (and tp!666488 mapRes!13526))))

(declare-fun condMapEmpty!13526 () Bool)

(declare-fun mapDefault!13526 () List!24639)

(assert (=> b!2147885 (= condMapEmpty!13526 (= (arr!4301 (_values!3132 (v!29139 (underlying!5899 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))) ((as const (Array (_ BitVec 32) List!24639)) mapDefault!13526)))))

(assert (= (and start!208308 res!926607) b!2147878))

(assert (= (and b!2147878 (not res!926603)) b!2147883))

(assert (= (and b!2147878 res!926609) b!2147877))

(assert (= (and b!2147877 res!926605) b!2147876))

(assert (= (and b!2147876 res!926610) b!2147869))

(assert (= (and b!2147869 res!926606) b!2147881))

(assert (= (and b!2147881 res!926604) b!2147882))

(assert (= (and b!2147869 (not res!926608)) b!2147880))

(assert (= (and start!208308 condSetEmpty!16915) setIsEmpty!16915))

(assert (= (and start!208308 (not condSetEmpty!16915)) setNonEmpty!16915))

(assert (= setNonEmpty!16915 b!2147873))

(assert (= (and b!2147885 condMapEmpty!13526) mapIsEmpty!13526))

(assert (= (and b!2147885 (not condMapEmpty!13526)) mapNonEmpty!13526))

(assert (= b!2147870 b!2147885))

(assert (= b!2147884 b!2147870))

(assert (= b!2147871 b!2147884))

(assert (= (and b!2147872 ((_ is LongMap!2852) (v!29140 (underlying!5900 (cache!3147 thiss!29173))))) b!2147871))

(assert (= b!2147879 b!2147872))

(assert (= (and b!2147875 ((_ is HashMap!2766) (cache!3147 thiss!29173))) b!2147879))

(assert (= b!2147875 b!2147874))

(assert (= start!208308 b!2147875))

(declare-fun m!2591074 () Bool)

(assert (=> start!208308 m!2591074))

(declare-fun m!2591076 () Bool)

(assert (=> setNonEmpty!16915 m!2591076))

(declare-fun m!2591078 () Bool)

(assert (=> b!2147875 m!2591078))

(declare-fun m!2591080 () Bool)

(assert (=> mapNonEmpty!13526 m!2591080))

(declare-fun m!2591082 () Bool)

(assert (=> b!2147878 m!2591082))

(declare-fun m!2591084 () Bool)

(assert (=> b!2147880 m!2591084))

(declare-fun m!2591086 () Bool)

(assert (=> b!2147880 m!2591086))

(assert (=> b!2147880 m!2591086))

(declare-fun m!2591088 () Bool)

(assert (=> b!2147880 m!2591088))

(declare-fun m!2591090 () Bool)

(assert (=> b!2147874 m!2591090))

(declare-fun m!2591092 () Bool)

(assert (=> b!2147882 m!2591092))

(declare-fun m!2591094 () Bool)

(assert (=> b!2147882 m!2591094))

(declare-fun m!2591096 () Bool)

(assert (=> b!2147876 m!2591096))

(assert (=> b!2147881 m!2591086))

(declare-fun m!2591098 () Bool)

(assert (=> b!2147869 m!2591098))

(assert (=> b!2147869 m!2591094))

(declare-fun m!2591100 () Bool)

(assert (=> b!2147869 m!2591100))

(declare-fun m!2591102 () Bool)

(assert (=> b!2147877 m!2591102))

(declare-fun m!2591104 () Bool)

(assert (=> b!2147870 m!2591104))

(declare-fun m!2591106 () Bool)

(assert (=> b!2147870 m!2591106))

(check-sat (not b!2147885) (not b!2147873) (not b_next!64103) (not b!2147874) (not b!2147870) b_and!172989 (not b!2147877) (not b!2147882) (not start!208308) (not b!2147878) (not b!2147869) (not b!2147880) (not b!2147876) (not b!2147875) (not b!2147881) (not mapNonEmpty!13526) b_and!172991 (not setNonEmpty!16915) (not b_next!64101))
(check-sat b_and!172991 b_and!172989 (not b_next!64103) (not b_next!64101))
(get-model)

(declare-fun d!645353 () Bool)

(declare-fun isBalanced!2468 (Conc!7963) Bool)

(assert (=> d!645353 (= (inv!32317 (totalInput!3207 thiss!29173)) (isBalanced!2468 (c!340925 (totalInput!3207 thiss!29173))))))

(declare-fun bs!445482 () Bool)

(assert (= bs!445482 d!645353))

(declare-fun m!2591108 () Bool)

(assert (=> bs!445482 m!2591108))

(assert (=> b!2147875 d!645353))

(declare-fun b!2147896 () Bool)

(declare-fun e!1373153 () Int)

(assert (=> b!2147896 (= e!1373153 lastNullablePos!99)))

(declare-fun b!2147897 () Bool)

(declare-fun e!1373152 () Bool)

(declare-fun lostCauseZipper!136 ((InoxSet Context!2794)) Bool)

(assert (=> b!2147897 (= e!1373152 (lostCauseZipper!136 z!526))))

(declare-fun e!1373154 () Int)

(declare-fun b!2147899 () Bool)

(declare-fun lt!799704 () (InoxSet Context!2794))

(assert (=> b!2147899 (= e!1373153 (furthestNullablePosition!104 lt!799704 (+ from!960 1) (totalInput!3207 thiss!29173) lt!799698 e!1373154))))

(declare-fun derivationStepZipper!103 ((InoxSet Context!2794) C!11800) (InoxSet Context!2794))

(declare-fun apply!6002 (BalanceConc!15688 Int) C!11800)

(assert (=> b!2147899 (= lt!799704 (derivationStepZipper!103 z!526 (apply!6002 (totalInput!3207 thiss!29173) from!960)))))

(declare-fun c!340931 () Bool)

(assert (=> b!2147899 (= c!340931 (nullableZipper!173 lt!799704))))

(declare-fun b!2147900 () Bool)

(assert (=> b!2147900 (= e!1373154 from!960)))

(declare-fun b!2147898 () Bool)

(assert (=> b!2147898 (= e!1373154 lastNullablePos!99)))

(declare-fun d!645355 () Bool)

(declare-fun lt!799703 () Int)

(assert (=> d!645355 (and (>= lt!799703 (- 1)) (< lt!799703 lt!799698) (>= lt!799703 lastNullablePos!99) (or (= lt!799703 lastNullablePos!99) (>= lt!799703 from!960)))))

(assert (=> d!645355 (= lt!799703 e!1373153)))

(declare-fun c!340930 () Bool)

(assert (=> d!645355 (= c!340930 e!1373152)))

(declare-fun res!926613 () Bool)

(assert (=> d!645355 (=> res!926613 e!1373152)))

(assert (=> d!645355 (= res!926613 (= from!960 lt!799698))))

(assert (=> d!645355 (and (>= from!960 0) (<= from!960 lt!799698))))

(assert (=> d!645355 (= (furthestNullablePosition!104 z!526 from!960 (totalInput!3207 thiss!29173) lt!799698 lastNullablePos!99) lt!799703)))

(assert (= (and d!645355 (not res!926613)) b!2147897))

(assert (= (and d!645355 c!340930) b!2147896))

(assert (= (and d!645355 (not c!340930)) b!2147899))

(assert (= (and b!2147899 c!340931) b!2147900))

(assert (= (and b!2147899 (not c!340931)) b!2147898))

(declare-fun m!2591110 () Bool)

(assert (=> b!2147897 m!2591110))

(declare-fun m!2591112 () Bool)

(assert (=> b!2147899 m!2591112))

(declare-fun m!2591114 () Bool)

(assert (=> b!2147899 m!2591114))

(assert (=> b!2147899 m!2591114))

(declare-fun m!2591116 () Bool)

(assert (=> b!2147899 m!2591116))

(declare-fun m!2591118 () Bool)

(assert (=> b!2147899 m!2591118))

(assert (=> b!2147882 d!645355))

(declare-fun b!2147913 () Bool)

(assert (=> b!2147913 false))

(declare-fun lt!799779 () Unit!37761)

(declare-fun lt!799788 () Unit!37761)

(assert (=> b!2147913 (= lt!799779 lt!799788)))

(declare-datatypes ((tuple2!24410 0))(
  ( (tuple2!24411 (_1!14469 (_ BitVec 64)) (_2!14469 List!24639)) )
))
(declare-datatypes ((List!24641 0))(
  ( (Nil!24557) (Cons!24557 (h!29958 tuple2!24410) (t!197179 List!24641)) )
))
(declare-fun lt!799782 () List!24641)

(declare-fun lt!799792 () (_ BitVec 64))

(declare-fun lt!799791 () List!24639)

(declare-fun contains!4185 (List!24641 tuple2!24410) Bool)

(assert (=> b!2147913 (contains!4185 lt!799782 (tuple2!24411 lt!799792 lt!799791))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!10 (List!24641 (_ BitVec 64) List!24639) Unit!37761)

(assert (=> b!2147913 (= lt!799788 (lemmaGetValueByKeyImpliesContainsTuple!10 lt!799782 lt!799792 lt!799791))))

(declare-fun apply!6003 (MutLongMap!2852 (_ BitVec 64)) List!24639)

(assert (=> b!2147913 (= lt!799791 (apply!6003 (v!29140 (underlying!5900 (cache!3147 thiss!29173))) lt!799792))))

(declare-datatypes ((ListLongMap!241 0))(
  ( (ListLongMap!242 (toList!1090 List!24641)) )
))
(declare-fun map!4930 (MutLongMap!2852) ListLongMap!241)

(assert (=> b!2147913 (= lt!799782 (toList!1090 (map!4930 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))))

(declare-fun lt!799774 () Unit!37761)

(declare-fun lt!799772 () Unit!37761)

(assert (=> b!2147913 (= lt!799774 lt!799772)))

(declare-fun lt!799794 () List!24641)

(declare-datatypes ((Option!4971 0))(
  ( (None!4970) (Some!4970 (v!29141 List!24639)) )
))
(declare-fun isDefined!4084 (Option!4971) Bool)

(declare-fun getValueByKey!39 (List!24641 (_ BitVec 64)) Option!4971)

(assert (=> b!2147913 (isDefined!4084 (getValueByKey!39 lt!799794 lt!799792))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!26 (List!24641 (_ BitVec 64)) Unit!37761)

(assert (=> b!2147913 (= lt!799772 (lemmaContainsKeyImpliesGetValueByKeyDefined!26 lt!799794 lt!799792))))

(assert (=> b!2147913 (= lt!799794 (toList!1090 (map!4930 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))))

(declare-fun e!1373162 () Unit!37761)

(declare-fun Unit!37763 () Unit!37761)

(assert (=> b!2147913 (= e!1373162 Unit!37763)))

(declare-fun e!1373161 () Bool)

(declare-fun lt!799778 () Int)

(declare-fun b!2147914 () Bool)

(declare-fun getValueByKey!40 (List!24639 tuple3!3586) Option!4970)

(declare-datatypes ((ListMap!677 0))(
  ( (ListMap!678 (toList!1091 List!24639)) )
))
(declare-fun map!4931 (MutableMap!2766) ListMap!677)

(assert (=> b!2147914 (= e!1373161 (= lt!799778 (get!7486 (getValueByKey!40 (toList!1091 (map!4931 (cache!3147 thiss!29173))) lt!799695))))))

(declare-fun d!645357 () Bool)

(assert (=> d!645357 e!1373161))

(declare-fun c!340939 () Bool)

(assert (=> d!645357 (= c!340939 (contains!4184 (cache!3147 thiss!29173) lt!799695))))

(declare-fun e!1373163 () Int)

(assert (=> d!645357 (= lt!799778 e!1373163)))

(declare-fun c!340938 () Bool)

(assert (=> d!645357 (= c!340938 (not (contains!4184 (cache!3147 thiss!29173) lt!799695)))))

(declare-fun valid!2209 (MutableMap!2766) Bool)

(assert (=> d!645357 (valid!2209 (cache!3147 thiss!29173))))

(assert (=> d!645357 (= (apply!6001 (cache!3147 thiss!29173) lt!799695) lt!799778)))

(declare-fun b!2147915 () Bool)

(declare-fun dynLambda!11385 (Int tuple3!3586) Int)

(assert (=> b!2147915 (= e!1373161 (= lt!799778 (dynLambda!11385 (defaultValue!2928 (cache!3147 thiss!29173)) lt!799695)))))

(declare-fun b!2147916 () Bool)

(declare-fun Unit!37764 () Unit!37761)

(assert (=> b!2147916 (= e!1373162 Unit!37764)))

(declare-fun b!2147917 () Bool)

(declare-datatypes ((Option!4972 0))(
  ( (None!4971) (Some!4971 (v!29142 tuple2!24408)) )
))
(declare-fun get!7487 (Option!4972) tuple2!24408)

(declare-fun getPair!9 (List!24639 tuple3!3586) Option!4972)

(assert (=> b!2147917 (= e!1373163 (_2!14468 (get!7487 (getPair!9 (apply!6003 (v!29140 (underlying!5900 (cache!3147 thiss!29173))) lt!799792) lt!799695))))))

(declare-fun hash!544 (Hashable!2766 tuple3!3586) (_ BitVec 64))

(assert (=> b!2147917 (= lt!799792 (hash!544 (hashF!4689 (cache!3147 thiss!29173)) lt!799695))))

(declare-fun c!340940 () Bool)

(assert (=> b!2147917 (= c!340940 (not (contains!4185 (toList!1090 (map!4930 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))) (tuple2!24411 lt!799792 (apply!6003 (v!29140 (underlying!5900 (cache!3147 thiss!29173))) lt!799792)))))))

(declare-fun lt!799781 () Unit!37761)

(assert (=> b!2147917 (= lt!799781 e!1373162)))

(declare-fun lt!799767 () Unit!37761)

(declare-fun lambda!80664 () Int)

(declare-fun forallContained!756 (List!24641 Int tuple2!24410) Unit!37761)

(assert (=> b!2147917 (= lt!799767 (forallContained!756 (toList!1090 (map!4930 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))) lambda!80664 (tuple2!24411 lt!799792 (apply!6003 (v!29140 (underlying!5900 (cache!3147 thiss!29173))) lt!799792))))))

(declare-fun lt!799765 () ListLongMap!241)

(assert (=> b!2147917 (= lt!799765 (map!4930 (v!29140 (underlying!5900 (cache!3147 thiss!29173)))))))

(declare-fun lt!799770 () Unit!37761)

(declare-fun lemmaGetPairGetSameValueAsMap!4 (ListLongMap!241 tuple3!3586 Int Hashable!2766) Unit!37761)

(assert (=> b!2147917 (= lt!799770 (lemmaGetPairGetSameValueAsMap!4 lt!799765 lt!799695 (_2!14468 (get!7487 (getPair!9 (apply!6003 (v!29140 (underlying!5900 (cache!3147 thiss!29173))) lt!799792) lt!799695))) (hashF!4689 (cache!3147 thiss!29173))))))

(declare-fun lt!799780 () Unit!37761)

(declare-fun lemmaInGenMapThenLongMapContainsHash!4 (ListLongMap!241 tuple3!3586 Hashable!2766) Unit!37761)

(assert (=> b!2147917 (= lt!799780 (lemmaInGenMapThenLongMapContainsHash!4 lt!799765 lt!799695 (hashF!4689 (cache!3147 thiss!29173))))))

(declare-fun contains!4186 (ListLongMap!241 (_ BitVec 64)) Bool)

(assert (=> b!2147917 (contains!4186 lt!799765 (hash!544 (hashF!4689 (cache!3147 thiss!29173)) lt!799695))))

(declare-fun lt!799771 () Unit!37761)

(assert (=> b!2147917 (= lt!799771 lt!799780)))

(declare-fun lt!799783 () (_ BitVec 64))

(assert (=> b!2147917 (= lt!799783 (hash!544 (hashF!4689 (cache!3147 thiss!29173)) lt!799695))))

(declare-fun lt!799766 () List!24639)

(declare-fun apply!6004 (ListLongMap!241 (_ BitVec 64)) List!24639)

(assert (=> b!2147917 (= lt!799766 (apply!6004 lt!799765 (hash!544 (hashF!4689 (cache!3147 thiss!29173)) lt!799695)))))

(declare-fun lt!799775 () Unit!37761)

(declare-fun lemmaGetValueImpliesTupleContained!5 (ListLongMap!241 (_ BitVec 64) List!24639) Unit!37761)

(assert (=> b!2147917 (= lt!799775 (lemmaGetValueImpliesTupleContained!5 lt!799765 lt!799783 lt!799766))))

(assert (=> b!2147917 (contains!4185 (toList!1090 lt!799765) (tuple2!24411 lt!799783 lt!799766))))

(declare-fun lt!799776 () Unit!37761)

(assert (=> b!2147917 (= lt!799776 lt!799775)))

(declare-fun lt!799787 () Unit!37761)

(assert (=> b!2147917 (= lt!799787 (forallContained!756 (toList!1090 lt!799765) lambda!80664 (tuple2!24411 (hash!544 (hashF!4689 (cache!3147 thiss!29173)) lt!799695) (apply!6004 lt!799765 (hash!544 (hashF!4689 (cache!3147 thiss!29173)) lt!799695)))))))

(declare-fun lt!799784 () Unit!37761)

(declare-fun lemmaInGenMapThenGetPairDefined!4 (ListLongMap!241 tuple3!3586 Hashable!2766) Unit!37761)

(assert (=> b!2147917 (= lt!799784 (lemmaInGenMapThenGetPairDefined!4 lt!799765 lt!799695 (hashF!4689 (cache!3147 thiss!29173))))))

(declare-fun lt!799777 () Unit!37761)

(assert (=> b!2147917 (= lt!799777 (lemmaInGenMapThenLongMapContainsHash!4 lt!799765 lt!799695 (hashF!4689 (cache!3147 thiss!29173))))))

(declare-fun lt!799793 () Unit!37761)

(assert (=> b!2147917 (= lt!799793 lt!799777)))

(declare-fun lt!799785 () (_ BitVec 64))

(assert (=> b!2147917 (= lt!799785 (hash!544 (hashF!4689 (cache!3147 thiss!29173)) lt!799695))))

(declare-fun lt!799768 () List!24639)

(assert (=> b!2147917 (= lt!799768 (apply!6004 lt!799765 (hash!544 (hashF!4689 (cache!3147 thiss!29173)) lt!799695)))))

(declare-fun lt!799769 () Unit!37761)

(assert (=> b!2147917 (= lt!799769 (lemmaGetValueImpliesTupleContained!5 lt!799765 lt!799785 lt!799768))))

(assert (=> b!2147917 (contains!4185 (toList!1090 lt!799765) (tuple2!24411 lt!799785 lt!799768))))

(declare-fun lt!799790 () Unit!37761)

(assert (=> b!2147917 (= lt!799790 lt!799769)))

(declare-fun lt!799786 () Unit!37761)

(assert (=> b!2147917 (= lt!799786 (forallContained!756 (toList!1090 lt!799765) lambda!80664 (tuple2!24411 (hash!544 (hashF!4689 (cache!3147 thiss!29173)) lt!799695) (apply!6004 lt!799765 (hash!544 (hashF!4689 (cache!3147 thiss!29173)) lt!799695)))))))

(declare-fun isDefined!4085 (Option!4972) Bool)

(assert (=> b!2147917 (isDefined!4085 (getPair!9 (apply!6004 lt!799765 (hash!544 (hashF!4689 (cache!3147 thiss!29173)) lt!799695)) lt!799695))))

(declare-fun lt!799789 () Unit!37761)

(assert (=> b!2147917 (= lt!799789 lt!799784)))

(declare-fun extractMap!72 (List!24641) ListMap!677)

(assert (=> b!2147917 (= (_2!14468 (get!7487 (getPair!9 (apply!6004 lt!799765 (hash!544 (hashF!4689 (cache!3147 thiss!29173)) lt!799695)) lt!799695))) (get!7486 (getValueByKey!40 (toList!1091 (extractMap!72 (toList!1090 lt!799765))) lt!799695)))))

(declare-fun lt!799773 () Unit!37761)

(assert (=> b!2147917 (= lt!799773 lt!799770)))

(declare-fun b!2147918 () Bool)

(assert (=> b!2147918 (= e!1373163 (dynLambda!11385 (defaultValue!2928 (cache!3147 thiss!29173)) lt!799695))))

(assert (= (and d!645357 c!340938) b!2147918))

(assert (= (and d!645357 (not c!340938)) b!2147917))

(assert (= (and b!2147917 c!340940) b!2147913))

(assert (= (and b!2147917 (not c!340940)) b!2147916))

(assert (= (and d!645357 c!340939) b!2147914))

(assert (= (and d!645357 (not c!340939)) b!2147915))

(declare-fun b_lambda!70761 () Bool)

(assert (=> (not b_lambda!70761) (not b!2147915)))

(declare-fun t!197178 () Bool)

(declare-fun tb!132289 () Bool)

(assert (=> (and b!2147879 (= (defaultValue!2928 (cache!3147 thiss!29173)) (defaultValue!2928 (cache!3147 thiss!29173))) t!197178) tb!132289))

(declare-fun result!159202 () Bool)

(assert (=> tb!132289 (= result!159202 true)))

(assert (=> b!2147915 t!197178))

(declare-fun b_and!172993 () Bool)

(assert (= b_and!172991 (and (=> t!197178 result!159202) b_and!172993)))

(declare-fun b_lambda!70763 () Bool)

(assert (=> (not b_lambda!70763) (not b!2147918)))

(assert (=> b!2147918 t!197178))

(declare-fun b_and!172995 () Bool)

(assert (= b_and!172993 (and (=> t!197178 result!159202) b_and!172995)))

(declare-fun m!2591120 () Bool)

(assert (=> b!2147915 m!2591120))

(assert (=> d!645357 m!2591096))

(declare-fun m!2591122 () Bool)

(assert (=> d!645357 m!2591122))

(declare-fun m!2591124 () Bool)

(assert (=> b!2147914 m!2591124))

(declare-fun m!2591126 () Bool)

(assert (=> b!2147914 m!2591126))

(assert (=> b!2147914 m!2591126))

(declare-fun m!2591128 () Bool)

(assert (=> b!2147914 m!2591128))

(declare-fun m!2591130 () Bool)

(assert (=> b!2147917 m!2591130))

(declare-fun m!2591132 () Bool)

(assert (=> b!2147917 m!2591132))

(declare-fun m!2591134 () Bool)

(assert (=> b!2147917 m!2591134))

(declare-fun m!2591136 () Bool)

(assert (=> b!2147917 m!2591136))

(declare-fun m!2591138 () Bool)

(assert (=> b!2147917 m!2591138))

(declare-fun m!2591140 () Bool)

(assert (=> b!2147917 m!2591140))

(declare-fun m!2591142 () Bool)

(assert (=> b!2147917 m!2591142))

(declare-fun m!2591144 () Bool)

(assert (=> b!2147917 m!2591144))

(declare-fun m!2591146 () Bool)

(assert (=> b!2147917 m!2591146))

(assert (=> b!2147917 m!2591138))

(declare-fun m!2591148 () Bool)

(assert (=> b!2147917 m!2591148))

(assert (=> b!2147917 m!2591138))

(declare-fun m!2591150 () Bool)

(assert (=> b!2147917 m!2591150))

(declare-fun m!2591152 () Bool)

(assert (=> b!2147917 m!2591152))

(declare-fun m!2591154 () Bool)

(assert (=> b!2147917 m!2591154))

(declare-fun m!2591156 () Bool)

(assert (=> b!2147917 m!2591156))

(declare-fun m!2591158 () Bool)

(assert (=> b!2147917 m!2591158))

(declare-fun m!2591160 () Bool)

(assert (=> b!2147917 m!2591160))

(declare-fun m!2591162 () Bool)

(assert (=> b!2147917 m!2591162))

(assert (=> b!2147917 m!2591142))

(declare-fun m!2591164 () Bool)

(assert (=> b!2147917 m!2591164))

(assert (=> b!2147917 m!2591140))

(assert (=> b!2147917 m!2591142))

(declare-fun m!2591166 () Bool)

(assert (=> b!2147917 m!2591166))

(declare-fun m!2591168 () Bool)

(assert (=> b!2147917 m!2591168))

(declare-fun m!2591170 () Bool)

(assert (=> b!2147917 m!2591170))

(assert (=> b!2147917 m!2591148))

(declare-fun m!2591172 () Bool)

(assert (=> b!2147917 m!2591172))

(assert (=> b!2147917 m!2591158))

(assert (=> b!2147917 m!2591152))

(assert (=> b!2147917 m!2591136))

(declare-fun m!2591174 () Bool)

(assert (=> b!2147917 m!2591174))

(assert (=> b!2147913 m!2591130))

(declare-fun m!2591176 () Bool)

(assert (=> b!2147913 m!2591176))

(declare-fun m!2591178 () Bool)

(assert (=> b!2147913 m!2591178))

(declare-fun m!2591180 () Bool)

(assert (=> b!2147913 m!2591180))

(declare-fun m!2591182 () Bool)

(assert (=> b!2147913 m!2591182))

(assert (=> b!2147913 m!2591176))

(declare-fun m!2591184 () Bool)

(assert (=> b!2147913 m!2591184))

(assert (=> b!2147913 m!2591158))

(assert (=> b!2147918 m!2591120))

(assert (=> b!2147882 d!645357))

(declare-fun d!645359 () Bool)

(declare-fun c!340943 () Bool)

(assert (=> d!645359 (= c!340943 ((_ is Node!7963) (c!340925 (totalInput!3207 thiss!29173))))))

(declare-fun e!1373168 () Bool)

(assert (=> d!645359 (= (inv!32316 (c!340925 (totalInput!3207 thiss!29173))) e!1373168)))

(declare-fun b!2147925 () Bool)

(declare-fun inv!32319 (Conc!7963) Bool)

(assert (=> b!2147925 (= e!1373168 (inv!32319 (c!340925 (totalInput!3207 thiss!29173))))))

(declare-fun b!2147926 () Bool)

(declare-fun e!1373169 () Bool)

(assert (=> b!2147926 (= e!1373168 e!1373169)))

(declare-fun res!926616 () Bool)

(assert (=> b!2147926 (= res!926616 (not ((_ is Leaf!11644) (c!340925 (totalInput!3207 thiss!29173)))))))

(assert (=> b!2147926 (=> res!926616 e!1373169)))

(declare-fun b!2147927 () Bool)

(declare-fun inv!32320 (Conc!7963) Bool)

(assert (=> b!2147927 (= e!1373169 (inv!32320 (c!340925 (totalInput!3207 thiss!29173))))))

(assert (= (and d!645359 c!340943) b!2147925))

(assert (= (and d!645359 (not c!340943)) b!2147926))

(assert (= (and b!2147926 (not res!926616)) b!2147927))

(declare-fun m!2591186 () Bool)

(assert (=> b!2147925 m!2591186))

(declare-fun m!2591188 () Bool)

(assert (=> b!2147927 m!2591188))

(assert (=> b!2147874 d!645359))

(declare-fun d!645361 () Bool)

(declare-fun lambda!80667 () Int)

(declare-fun exists!722 ((InoxSet Context!2794) Int) Bool)

(assert (=> d!645361 (= (nullableZipper!173 z!526) (exists!722 z!526 lambda!80667))))

(declare-fun bs!445483 () Bool)

(assert (= bs!445483 d!645361))

(declare-fun m!2591190 () Bool)

(assert (=> bs!445483 m!2591190))

(assert (=> b!2147878 d!645361))

(declare-fun d!645363 () Bool)

(assert (=> d!645363 (= (isEmpty!14346 lt!799694) (not ((_ is Some!4969) lt!799694)))))

(assert (=> b!2147869 d!645363))

(assert (=> b!2147869 d!645357))

(declare-fun d!645365 () Bool)

(declare-fun e!1373175 () Bool)

(assert (=> d!645365 e!1373175))

(declare-fun res!926625 () Bool)

(assert (=> d!645365 (=> res!926625 e!1373175)))

(assert (=> d!645365 (= res!926625 (not (contains!4184 (cache!3147 thiss!29173) (tuple3!3587 z!526 from!960 lastNullablePos!99))))))

(declare-fun lt!799797 () Unit!37761)

(declare-fun choose!12700 (CacheFurthestNullable!890 (InoxSet Context!2794) Int Int BalanceConc!15688) Unit!37761)

(assert (=> d!645365 (= lt!799797 (choose!12700 thiss!29173 z!526 from!960 lastNullablePos!99 (totalInput!3207 thiss!29173)))))

(assert (=> d!645365 (= (totalInput!3207 thiss!29173) (totalInput!3207 thiss!29173))))

(assert (=> d!645365 (= (lemmaIfInCacheThenValid!16 thiss!29173 z!526 from!960 lastNullablePos!99 (totalInput!3207 thiss!29173)) lt!799797)))

(declare-fun b!2147934 () Bool)

(declare-fun e!1373174 () Bool)

(assert (=> b!2147934 (= e!1373175 e!1373174)))

(declare-fun res!926623 () Bool)

(assert (=> b!2147934 (=> (not res!926623) (not e!1373174))))

(assert (=> b!2147934 (= res!926623 (>= from!960 0))))

(declare-fun b!2147935 () Bool)

(declare-fun res!926624 () Bool)

(assert (=> b!2147935 (=> (not res!926624) (not e!1373174))))

(assert (=> b!2147935 (= res!926624 (<= from!960 (size!19234 (totalInput!3207 thiss!29173))))))

(declare-fun b!2147936 () Bool)

(assert (=> b!2147936 (= e!1373174 (= (furthestNullablePosition!104 z!526 from!960 (totalInput!3207 thiss!29173) (size!19234 (totalInput!3207 thiss!29173)) lastNullablePos!99) (apply!6001 (cache!3147 thiss!29173) (tuple3!3587 z!526 from!960 lastNullablePos!99))))))

(assert (= (and d!645365 (not res!926625)) b!2147934))

(assert (= (and b!2147934 res!926623) b!2147935))

(assert (= (and b!2147935 res!926624) b!2147936))

(declare-fun m!2591192 () Bool)

(assert (=> d!645365 m!2591192))

(declare-fun m!2591194 () Bool)

(assert (=> d!645365 m!2591194))

(assert (=> b!2147935 m!2591086))

(assert (=> b!2147936 m!2591086))

(assert (=> b!2147936 m!2591086))

(assert (=> b!2147936 m!2591088))

(declare-fun m!2591196 () Bool)

(assert (=> b!2147936 m!2591196))

(assert (=> b!2147869 d!645365))

(declare-fun b!2147942 () Bool)

(assert (=> b!2147942 true))

(declare-fun d!645367 () Bool)

(declare-fun res!926630 () Bool)

(declare-fun e!1373178 () Bool)

(assert (=> d!645367 (=> (not res!926630) (not e!1373178))))

(assert (=> d!645367 (= res!926630 (valid!2209 (cache!3147 thiss!29173)))))

(assert (=> d!645367 (= (validCacheMapFurthestNullable!128 (cache!3147 thiss!29173) (totalInput!3207 thiss!29173)) e!1373178)))

(declare-fun b!2147941 () Bool)

(declare-fun res!926631 () Bool)

(assert (=> b!2147941 (=> (not res!926631) (not e!1373178))))

(declare-fun invariantList!314 (List!24639) Bool)

(assert (=> b!2147941 (= res!926631 (invariantList!314 (toList!1091 (map!4931 (cache!3147 thiss!29173)))))))

(declare-fun lambda!80670 () Int)

(declare-fun forall!5005 (List!24639 Int) Bool)

(assert (=> b!2147942 (= e!1373178 (forall!5005 (toList!1091 (map!4931 (cache!3147 thiss!29173))) lambda!80670))))

(assert (= (and d!645367 res!926630) b!2147941))

(assert (= (and b!2147941 res!926631) b!2147942))

(assert (=> d!645367 m!2591122))

(assert (=> b!2147941 m!2591124))

(declare-fun m!2591199 () Bool)

(assert (=> b!2147941 m!2591199))

(assert (=> b!2147942 m!2591124))

(declare-fun m!2591201 () Bool)

(assert (=> b!2147942 m!2591201))

(assert (=> b!2147877 d!645367))

(declare-fun bs!445484 () Bool)

(declare-fun b!2147969 () Bool)

(assert (= bs!445484 (and b!2147969 b!2147917)))

(declare-fun lambda!80673 () Int)

(assert (=> bs!445484 (= lambda!80673 lambda!80664)))

(declare-fun b!2147967 () Bool)

(declare-fun e!1373198 () Unit!37761)

(declare-fun Unit!37765 () Unit!37761)

(assert (=> b!2147967 (= e!1373198 Unit!37765)))

(declare-fun b!2147968 () Bool)

(assert (=> b!2147968 false))

(declare-fun lt!799856 () Unit!37761)

(declare-fun lt!799849 () Unit!37761)

(assert (=> b!2147968 (= lt!799856 lt!799849)))

(declare-fun lt!799838 () List!24641)

(declare-fun lt!799853 () (_ BitVec 64))

(declare-fun lt!799854 () List!24639)

(assert (=> b!2147968 (contains!4185 lt!799838 (tuple2!24411 lt!799853 lt!799854))))

(assert (=> b!2147968 (= lt!799849 (lemmaGetValueByKeyImpliesContainsTuple!10 lt!799838 lt!799853 lt!799854))))

(assert (=> b!2147968 (= lt!799854 (apply!6003 (v!29140 (underlying!5900 (cache!3147 thiss!29173))) lt!799853))))

(assert (=> b!2147968 (= lt!799838 (toList!1090 (map!4930 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))))

(declare-fun lt!799855 () Unit!37761)

(declare-fun lt!799852 () Unit!37761)

(assert (=> b!2147968 (= lt!799855 lt!799852)))

(declare-fun lt!799848 () List!24641)

(assert (=> b!2147968 (isDefined!4084 (getValueByKey!39 lt!799848 lt!799853))))

(assert (=> b!2147968 (= lt!799852 (lemmaContainsKeyImpliesGetValueByKeyDefined!26 lt!799848 lt!799853))))

(assert (=> b!2147968 (= lt!799848 (toList!1090 (map!4930 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))))

(declare-fun lt!799845 () Unit!37761)

(declare-fun lt!799844 () Unit!37761)

(assert (=> b!2147968 (= lt!799845 lt!799844)))

(declare-fun lt!799857 () List!24641)

(declare-fun containsKey!45 (List!24641 (_ BitVec 64)) Bool)

(assert (=> b!2147968 (containsKey!45 lt!799857 lt!799853)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!10 (List!24641 (_ BitVec 64)) Unit!37761)

(assert (=> b!2147968 (= lt!799844 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!10 lt!799857 lt!799853))))

(assert (=> b!2147968 (= lt!799857 (toList!1090 (map!4930 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))))

(declare-fun e!1373199 () Unit!37761)

(declare-fun Unit!37766 () Unit!37761)

(assert (=> b!2147968 (= e!1373199 Unit!37766)))

(assert (=> b!2147969 (= e!1373198 (forallContained!756 (toList!1090 (map!4930 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))) lambda!80673 (tuple2!24411 lt!799853 (apply!6003 (v!29140 (underlying!5900 (cache!3147 thiss!29173))) lt!799853))))))

(declare-fun c!340954 () Bool)

(assert (=> b!2147969 (= c!340954 (not (contains!4185 (toList!1090 (map!4930 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))) (tuple2!24411 lt!799853 (apply!6003 (v!29140 (underlying!5900 (cache!3147 thiss!29173))) lt!799853)))))))

(declare-fun lt!799847 () Unit!37761)

(assert (=> b!2147969 (= lt!799847 e!1373199)))

(declare-fun b!2147970 () Bool)

(declare-fun e!1373193 () Unit!37761)

(declare-fun Unit!37767 () Unit!37761)

(assert (=> b!2147970 (= e!1373193 Unit!37767)))

(declare-fun e!1373197 () Bool)

(declare-fun b!2147971 () Bool)

(assert (=> b!2147971 (= e!1373197 (isDefined!4085 (getPair!9 (apply!6003 (v!29140 (underlying!5900 (cache!3147 thiss!29173))) lt!799853) lt!799695)))))

(declare-fun b!2147972 () Bool)

(declare-fun e!1373195 () Unit!37761)

(assert (=> b!2147972 (= e!1373195 e!1373193)))

(declare-fun res!926639 () Bool)

(declare-fun call!128912 () Bool)

(assert (=> b!2147972 (= res!926639 call!128912)))

(declare-fun e!1373196 () Bool)

(assert (=> b!2147972 (=> (not res!926639) (not e!1373196))))

(declare-fun c!340957 () Bool)

(assert (=> b!2147972 (= c!340957 e!1373196)))

(declare-fun d!645369 () Bool)

(declare-fun lt!799839 () Bool)

(declare-fun contains!4187 (ListMap!677 tuple3!3586) Bool)

(assert (=> d!645369 (= lt!799839 (contains!4187 (map!4931 (cache!3147 thiss!29173)) lt!799695))))

(assert (=> d!645369 (= lt!799839 e!1373197)))

(declare-fun res!926638 () Bool)

(assert (=> d!645369 (=> (not res!926638) (not e!1373197))))

(declare-fun contains!4188 (MutLongMap!2852 (_ BitVec 64)) Bool)

(assert (=> d!645369 (= res!926638 (contains!4188 (v!29140 (underlying!5900 (cache!3147 thiss!29173))) lt!799853))))

(declare-fun lt!799851 () Unit!37761)

(assert (=> d!645369 (= lt!799851 e!1373195)))

(declare-fun c!340956 () Bool)

(assert (=> d!645369 (= c!340956 (contains!4187 (extractMap!72 (toList!1090 (map!4930 (v!29140 (underlying!5900 (cache!3147 thiss!29173)))))) lt!799695))))

(declare-fun lt!799840 () Unit!37761)

(assert (=> d!645369 (= lt!799840 e!1373198)))

(declare-fun c!340955 () Bool)

(assert (=> d!645369 (= c!340955 (contains!4188 (v!29140 (underlying!5900 (cache!3147 thiss!29173))) lt!799853))))

(assert (=> d!645369 (= lt!799853 (hash!544 (hashF!4689 (cache!3147 thiss!29173)) lt!799695))))

(assert (=> d!645369 (valid!2209 (cache!3147 thiss!29173))))

(assert (=> d!645369 (= (contains!4184 (cache!3147 thiss!29173) lt!799695) lt!799839)))

(declare-fun b!2147973 () Bool)

(assert (=> b!2147973 false))

(declare-fun lt!799846 () Unit!37761)

(declare-fun lt!799843 () Unit!37761)

(assert (=> b!2147973 (= lt!799846 lt!799843)))

(declare-fun lt!799842 () ListLongMap!241)

(assert (=> b!2147973 (contains!4187 (extractMap!72 (toList!1090 lt!799842)) lt!799695)))

(declare-fun lemmaInLongMapThenInGenericMap!9 (ListLongMap!241 tuple3!3586 Hashable!2766) Unit!37761)

(assert (=> b!2147973 (= lt!799843 (lemmaInLongMapThenInGenericMap!9 lt!799842 lt!799695 (hashF!4689 (cache!3147 thiss!29173))))))

(declare-fun call!128911 () ListLongMap!241)

(assert (=> b!2147973 (= lt!799842 call!128911)))

(declare-fun Unit!37768 () Unit!37761)

(assert (=> b!2147973 (= e!1373193 Unit!37768)))

(declare-fun bm!128902 () Bool)

(assert (=> bm!128902 (= call!128911 (map!4930 (v!29140 (underlying!5900 (cache!3147 thiss!29173)))))))

(declare-fun call!128908 () (_ BitVec 64))

(declare-fun lt!799850 () ListLongMap!241)

(declare-fun bm!128903 () Bool)

(assert (=> bm!128903 (= call!128912 (contains!4186 (ite c!340956 lt!799850 call!128911) call!128908))))

(declare-fun b!2147974 () Bool)

(declare-fun e!1373194 () Bool)

(declare-fun call!128909 () Bool)

(assert (=> b!2147974 (= e!1373194 call!128909)))

(declare-fun b!2147975 () Bool)

(declare-fun Unit!37769 () Unit!37761)

(assert (=> b!2147975 (= e!1373199 Unit!37769)))

(declare-fun call!128907 () List!24639)

(declare-fun bm!128904 () Bool)

(assert (=> bm!128904 (= call!128907 (apply!6004 (ite c!340956 lt!799850 call!128911) call!128908))))

(declare-fun b!2147976 () Bool)

(declare-fun lt!799841 () Unit!37761)

(assert (=> b!2147976 (= e!1373195 lt!799841)))

(assert (=> b!2147976 (= lt!799850 call!128911)))

(declare-fun lemmaInGenericMapThenInLongMap!9 (ListLongMap!241 tuple3!3586 Hashable!2766) Unit!37761)

(assert (=> b!2147976 (= lt!799841 (lemmaInGenericMapThenInLongMap!9 lt!799850 lt!799695 (hashF!4689 (cache!3147 thiss!29173))))))

(declare-fun res!926640 () Bool)

(assert (=> b!2147976 (= res!926640 call!128912)))

(assert (=> b!2147976 (=> (not res!926640) (not e!1373194))))

(assert (=> b!2147976 e!1373194))

(declare-fun bm!128905 () Bool)

(assert (=> bm!128905 (= call!128908 (hash!544 (hashF!4689 (cache!3147 thiss!29173)) lt!799695))))

(declare-fun bm!128906 () Bool)

(declare-fun call!128910 () Option!4972)

(assert (=> bm!128906 (= call!128910 (getPair!9 call!128907 lt!799695))))

(declare-fun bm!128907 () Bool)

(assert (=> bm!128907 (= call!128909 (isDefined!4085 call!128910))))

(declare-fun b!2147977 () Bool)

(assert (=> b!2147977 (= e!1373196 call!128909)))

(assert (= (and d!645369 c!340955) b!2147969))

(assert (= (and d!645369 (not c!340955)) b!2147967))

(assert (= (and b!2147969 c!340954) b!2147968))

(assert (= (and b!2147969 (not c!340954)) b!2147975))

(assert (= (and d!645369 c!340956) b!2147976))

(assert (= (and d!645369 (not c!340956)) b!2147972))

(assert (= (and b!2147976 res!926640) b!2147974))

(assert (= (and b!2147972 res!926639) b!2147977))

(assert (= (and b!2147972 c!340957) b!2147973))

(assert (= (and b!2147972 (not c!340957)) b!2147970))

(assert (= (or b!2147976 b!2147972 b!2147977 b!2147973) bm!128902))

(assert (= (or b!2147976 b!2147974 b!2147972 b!2147977) bm!128905))

(assert (= (or b!2147976 b!2147972) bm!128903))

(assert (= (or b!2147974 b!2147977) bm!128904))

(assert (= (or b!2147974 b!2147977) bm!128906))

(assert (= (or b!2147974 b!2147977) bm!128907))

(assert (= (and d!645369 res!926638) b!2147971))

(declare-fun m!2591203 () Bool)

(assert (=> bm!128906 m!2591203))

(declare-fun m!2591205 () Bool)

(assert (=> b!2147973 m!2591205))

(assert (=> b!2147973 m!2591205))

(declare-fun m!2591207 () Bool)

(assert (=> b!2147973 m!2591207))

(declare-fun m!2591209 () Bool)

(assert (=> b!2147973 m!2591209))

(declare-fun m!2591211 () Bool)

(assert (=> b!2147976 m!2591211))

(assert (=> bm!128902 m!2591130))

(declare-fun m!2591213 () Bool)

(assert (=> b!2147968 m!2591213))

(assert (=> b!2147968 m!2591130))

(declare-fun m!2591215 () Bool)

(assert (=> b!2147968 m!2591215))

(declare-fun m!2591217 () Bool)

(assert (=> b!2147968 m!2591217))

(declare-fun m!2591219 () Bool)

(assert (=> b!2147968 m!2591219))

(declare-fun m!2591221 () Bool)

(assert (=> b!2147968 m!2591221))

(declare-fun m!2591223 () Bool)

(assert (=> b!2147968 m!2591223))

(declare-fun m!2591225 () Bool)

(assert (=> b!2147968 m!2591225))

(declare-fun m!2591227 () Bool)

(assert (=> b!2147968 m!2591227))

(assert (=> b!2147968 m!2591223))

(declare-fun m!2591229 () Bool)

(assert (=> bm!128904 m!2591229))

(assert (=> b!2147969 m!2591130))

(assert (=> b!2147969 m!2591219))

(declare-fun m!2591231 () Bool)

(assert (=> b!2147969 m!2591231))

(declare-fun m!2591233 () Bool)

(assert (=> b!2147969 m!2591233))

(assert (=> d!645369 m!2591124))

(declare-fun m!2591235 () Bool)

(assert (=> d!645369 m!2591235))

(assert (=> d!645369 m!2591130))

(assert (=> d!645369 m!2591138))

(assert (=> d!645369 m!2591122))

(declare-fun m!2591237 () Bool)

(assert (=> d!645369 m!2591237))

(declare-fun m!2591239 () Bool)

(assert (=> d!645369 m!2591239))

(declare-fun m!2591241 () Bool)

(assert (=> d!645369 m!2591241))

(assert (=> d!645369 m!2591124))

(assert (=> d!645369 m!2591239))

(declare-fun m!2591243 () Bool)

(assert (=> bm!128903 m!2591243))

(assert (=> b!2147971 m!2591219))

(assert (=> b!2147971 m!2591219))

(declare-fun m!2591245 () Bool)

(assert (=> b!2147971 m!2591245))

(assert (=> b!2147971 m!2591245))

(declare-fun m!2591247 () Bool)

(assert (=> b!2147971 m!2591247))

(assert (=> bm!128905 m!2591138))

(declare-fun m!2591249 () Bool)

(assert (=> bm!128907 m!2591249))

(assert (=> b!2147876 d!645369))

(declare-fun d!645371 () Bool)

(declare-fun res!926643 () Bool)

(declare-fun e!1373202 () Bool)

(assert (=> d!645371 (=> (not res!926643) (not e!1373202))))

(assert (=> d!645371 (= res!926643 ((_ is HashMap!2766) (cache!3147 thiss!29173)))))

(assert (=> d!645371 (= (inv!32318 thiss!29173) e!1373202)))

(declare-fun b!2147980 () Bool)

(assert (=> b!2147980 (= e!1373202 (validCacheMapFurthestNullable!128 (cache!3147 thiss!29173) (totalInput!3207 thiss!29173)))))

(assert (= (and d!645371 res!926643) b!2147980))

(assert (=> b!2147980 m!2591102))

(assert (=> start!208308 d!645371))

(declare-fun d!645373 () Bool)

(assert (=> d!645373 (= (array_inv!3080 (_keys!3149 (v!29139 (underlying!5899 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))) (bvsge (size!19232 (_keys!3149 (v!29139 (underlying!5899 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))) #b00000000000000000000000000000000))))

(assert (=> b!2147870 d!645373))

(declare-fun d!645375 () Bool)

(assert (=> d!645375 (= (array_inv!3081 (_values!3132 (v!29139 (underlying!5899 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))) (bvsge (size!19233 (_values!3132 (v!29139 (underlying!5899 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))) #b00000000000000000000000000000000))))

(assert (=> b!2147870 d!645375))

(declare-fun d!645377 () Bool)

(declare-fun lambda!80676 () Int)

(declare-fun forall!5006 (List!24638 Int) Bool)

(assert (=> d!645377 (= (inv!32315 setElem!16915) (forall!5006 (exprs!1897 setElem!16915) lambda!80676))))

(declare-fun bs!445485 () Bool)

(assert (= bs!445485 d!645377))

(declare-fun m!2591251 () Bool)

(assert (=> bs!445485 m!2591251))

(assert (=> setNonEmpty!16915 d!645377))

(declare-fun d!645379 () Bool)

(declare-fun lt!799860 () Int)

(declare-fun size!19235 (List!24640) Int)

(declare-fun list!9558 (BalanceConc!15688) List!24640)

(assert (=> d!645379 (= lt!799860 (size!19235 (list!9558 (totalInput!3207 thiss!29173))))))

(declare-fun size!19236 (Conc!7963) Int)

(assert (=> d!645379 (= lt!799860 (size!19236 (c!340925 (totalInput!3207 thiss!29173))))))

(assert (=> d!645379 (= (size!19234 (totalInput!3207 thiss!29173)) lt!799860)))

(declare-fun bs!445486 () Bool)

(assert (= bs!445486 d!645379))

(declare-fun m!2591253 () Bool)

(assert (=> bs!445486 m!2591253))

(assert (=> bs!445486 m!2591253))

(declare-fun m!2591255 () Bool)

(assert (=> bs!445486 m!2591255))

(declare-fun m!2591257 () Bool)

(assert (=> bs!445486 m!2591257))

(assert (=> b!2147881 d!645379))

(declare-fun d!645381 () Bool)

(assert (=> d!645381 (= (get!7486 lt!799694) (v!29138 lt!799694))))

(assert (=> b!2147880 d!645381))

(declare-fun b!2147981 () Bool)

(declare-fun e!1373204 () Int)

(assert (=> b!2147981 (= e!1373204 lastNullablePos!99)))

(declare-fun b!2147982 () Bool)

(declare-fun e!1373203 () Bool)

(assert (=> b!2147982 (= e!1373203 (lostCauseZipper!136 z!526))))

(declare-fun b!2147984 () Bool)

(declare-fun e!1373205 () Int)

(declare-fun lt!799862 () (InoxSet Context!2794))

(assert (=> b!2147984 (= e!1373204 (furthestNullablePosition!104 lt!799862 (+ from!960 1) (totalInput!3207 thiss!29173) (size!19234 (totalInput!3207 thiss!29173)) e!1373205))))

(assert (=> b!2147984 (= lt!799862 (derivationStepZipper!103 z!526 (apply!6002 (totalInput!3207 thiss!29173) from!960)))))

(declare-fun c!340959 () Bool)

(assert (=> b!2147984 (= c!340959 (nullableZipper!173 lt!799862))))

(declare-fun b!2147985 () Bool)

(assert (=> b!2147985 (= e!1373205 from!960)))

(declare-fun b!2147983 () Bool)

(assert (=> b!2147983 (= e!1373205 lastNullablePos!99)))

(declare-fun lt!799861 () Int)

(declare-fun d!645383 () Bool)

(assert (=> d!645383 (and (>= lt!799861 (- 1)) (< lt!799861 (size!19234 (totalInput!3207 thiss!29173))) (>= lt!799861 lastNullablePos!99) (or (= lt!799861 lastNullablePos!99) (>= lt!799861 from!960)))))

(assert (=> d!645383 (= lt!799861 e!1373204)))

(declare-fun c!340958 () Bool)

(assert (=> d!645383 (= c!340958 e!1373203)))

(declare-fun res!926644 () Bool)

(assert (=> d!645383 (=> res!926644 e!1373203)))

(assert (=> d!645383 (= res!926644 (= from!960 (size!19234 (totalInput!3207 thiss!29173))))))

(assert (=> d!645383 (and (>= from!960 0) (<= from!960 (size!19234 (totalInput!3207 thiss!29173))))))

(assert (=> d!645383 (= (furthestNullablePosition!104 z!526 from!960 (totalInput!3207 thiss!29173) (size!19234 (totalInput!3207 thiss!29173)) lastNullablePos!99) lt!799861)))

(assert (= (and d!645383 (not res!926644)) b!2147982))

(assert (= (and d!645383 c!340958) b!2147981))

(assert (= (and d!645383 (not c!340958)) b!2147984))

(assert (= (and b!2147984 c!340959) b!2147985))

(assert (= (and b!2147984 (not c!340959)) b!2147983))

(assert (=> b!2147982 m!2591110))

(assert (=> b!2147984 m!2591086))

(declare-fun m!2591259 () Bool)

(assert (=> b!2147984 m!2591259))

(assert (=> b!2147984 m!2591114))

(assert (=> b!2147984 m!2591114))

(assert (=> b!2147984 m!2591116))

(declare-fun m!2591261 () Bool)

(assert (=> b!2147984 m!2591261))

(assert (=> b!2147880 d!645383))

(assert (=> b!2147880 d!645379))

(declare-fun e!1373210 () Bool)

(assert (=> b!2147870 (= tp!666490 e!1373210)))

(declare-fun setIsEmpty!16918 () Bool)

(declare-fun setRes!16918 () Bool)

(assert (=> setIsEmpty!16918 setRes!16918))

(declare-fun b!2147992 () Bool)

(declare-fun tp!666498 () Bool)

(assert (=> b!2147992 (= e!1373210 (and setRes!16918 tp!666498))))

(declare-fun condSetEmpty!16918 () Bool)

(assert (=> b!2147992 (= condSetEmpty!16918 (= (_1!14467 (_1!14468 (h!29956 (zeroValue!3110 (v!29139 (underlying!5899 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))))) ((as const (Array Context!2794 Bool)) false)))))

(declare-fun e!1373211 () Bool)

(declare-fun tp!666499 () Bool)

(declare-fun setNonEmpty!16918 () Bool)

(declare-fun setElem!16918 () Context!2794)

(assert (=> setNonEmpty!16918 (= setRes!16918 (and tp!666499 (inv!32315 setElem!16918) e!1373211))))

(declare-fun setRest!16918 () (InoxSet Context!2794))

(assert (=> setNonEmpty!16918 (= (_1!14467 (_1!14468 (h!29956 (zeroValue!3110 (v!29139 (underlying!5899 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))))) ((_ map or) (store ((as const (Array Context!2794 Bool)) false) setElem!16918 true) setRest!16918))))

(declare-fun b!2147993 () Bool)

(declare-fun tp!666500 () Bool)

(assert (=> b!2147993 (= e!1373211 tp!666500)))

(assert (= (and b!2147992 condSetEmpty!16918) setIsEmpty!16918))

(assert (= (and b!2147992 (not condSetEmpty!16918)) setNonEmpty!16918))

(assert (= setNonEmpty!16918 b!2147993))

(assert (= (and b!2147870 ((_ is Cons!24555) (zeroValue!3110 (v!29139 (underlying!5899 (v!29140 (underlying!5900 (cache!3147 thiss!29173)))))))) b!2147992))

(declare-fun m!2591263 () Bool)

(assert (=> setNonEmpty!16918 m!2591263))

(declare-fun e!1373212 () Bool)

(assert (=> b!2147870 (= tp!666485 e!1373212)))

(declare-fun setIsEmpty!16919 () Bool)

(declare-fun setRes!16919 () Bool)

(assert (=> setIsEmpty!16919 setRes!16919))

(declare-fun b!2147994 () Bool)

(declare-fun tp!666501 () Bool)

(assert (=> b!2147994 (= e!1373212 (and setRes!16919 tp!666501))))

(declare-fun condSetEmpty!16919 () Bool)

(assert (=> b!2147994 (= condSetEmpty!16919 (= (_1!14467 (_1!14468 (h!29956 (minValue!3110 (v!29139 (underlying!5899 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))))) ((as const (Array Context!2794 Bool)) false)))))

(declare-fun setElem!16919 () Context!2794)

(declare-fun tp!666502 () Bool)

(declare-fun setNonEmpty!16919 () Bool)

(declare-fun e!1373213 () Bool)

(assert (=> setNonEmpty!16919 (= setRes!16919 (and tp!666502 (inv!32315 setElem!16919) e!1373213))))

(declare-fun setRest!16919 () (InoxSet Context!2794))

(assert (=> setNonEmpty!16919 (= (_1!14467 (_1!14468 (h!29956 (minValue!3110 (v!29139 (underlying!5899 (v!29140 (underlying!5900 (cache!3147 thiss!29173))))))))) ((_ map or) (store ((as const (Array Context!2794 Bool)) false) setElem!16919 true) setRest!16919))))

(declare-fun b!2147995 () Bool)

(declare-fun tp!666503 () Bool)

(assert (=> b!2147995 (= e!1373213 tp!666503)))

(assert (= (and b!2147994 condSetEmpty!16919) setIsEmpty!16919))

(assert (= (and b!2147994 (not condSetEmpty!16919)) setNonEmpty!16919))

(assert (= setNonEmpty!16919 b!2147995))

(assert (= (and b!2147870 ((_ is Cons!24555) (minValue!3110 (v!29139 (underlying!5899 (v!29140 (underlying!5900 (cache!3147 thiss!29173)))))))) b!2147994))

(declare-fun m!2591265 () Bool)

(assert (=> setNonEmpty!16919 m!2591265))

(declare-fun mapIsEmpty!13529 () Bool)

(declare-fun mapRes!13529 () Bool)

(assert (=> mapIsEmpty!13529 mapRes!13529))

(declare-fun setIsEmpty!16924 () Bool)

(declare-fun setRes!16925 () Bool)

(assert (=> setIsEmpty!16924 setRes!16925))

(declare-fun e!1373222 () Bool)

(declare-fun tp!666523 () Bool)

(declare-fun setElem!16924 () Context!2794)

(declare-fun setNonEmpty!16924 () Bool)

(declare-fun setRes!16924 () Bool)

(assert (=> setNonEmpty!16924 (= setRes!16924 (and tp!666523 (inv!32315 setElem!16924) e!1373222))))

(declare-fun mapValue!13529 () List!24639)

(declare-fun setRest!16924 () (InoxSet Context!2794))

(assert (=> setNonEmpty!16924 (= (_1!14467 (_1!14468 (h!29956 mapValue!13529))) ((_ map or) (store ((as const (Array Context!2794 Bool)) false) setElem!16924 true) setRest!16924))))

(declare-fun setIsEmpty!16925 () Bool)

(assert (=> setIsEmpty!16925 setRes!16924))

(declare-fun mapNonEmpty!13529 () Bool)

(declare-fun tp!666522 () Bool)

(declare-fun e!1373224 () Bool)

(assert (=> mapNonEmpty!13529 (= mapRes!13529 (and tp!666522 e!1373224))))

(declare-fun mapRest!13529 () (Array (_ BitVec 32) List!24639))

(declare-fun mapKey!13529 () (_ BitVec 32))

(assert (=> mapNonEmpty!13529 (= mapRest!13526 (store mapRest!13529 mapKey!13529 mapValue!13529))))

(declare-fun condMapEmpty!13529 () Bool)

(declare-fun mapDefault!13529 () List!24639)

(assert (=> mapNonEmpty!13526 (= condMapEmpty!13529 (= mapRest!13526 ((as const (Array (_ BitVec 32) List!24639)) mapDefault!13529)))))

(declare-fun e!1373223 () Bool)

(assert (=> mapNonEmpty!13526 (= tp!666486 (and e!1373223 mapRes!13529))))

(declare-fun b!2148006 () Bool)

(declare-fun tp!666521 () Bool)

(assert (=> b!2148006 (= e!1373223 (and setRes!16925 tp!666521))))

(declare-fun condSetEmpty!16924 () Bool)

(assert (=> b!2148006 (= condSetEmpty!16924 (= (_1!14467 (_1!14468 (h!29956 mapDefault!13529))) ((as const (Array Context!2794 Bool)) false)))))

(declare-fun b!2148007 () Bool)

(declare-fun tp!666520 () Bool)

(assert (=> b!2148007 (= e!1373224 (and setRes!16924 tp!666520))))

(declare-fun condSetEmpty!16925 () Bool)

(assert (=> b!2148007 (= condSetEmpty!16925 (= (_1!14467 (_1!14468 (h!29956 mapValue!13529))) ((as const (Array Context!2794 Bool)) false)))))

(declare-fun b!2148008 () Bool)

(declare-fun e!1373225 () Bool)

(declare-fun tp!666519 () Bool)

(assert (=> b!2148008 (= e!1373225 tp!666519)))

(declare-fun b!2148009 () Bool)

(declare-fun tp!666524 () Bool)

(assert (=> b!2148009 (= e!1373222 tp!666524)))

(declare-fun tp!666518 () Bool)

(declare-fun setNonEmpty!16925 () Bool)

(declare-fun setElem!16925 () Context!2794)

(assert (=> setNonEmpty!16925 (= setRes!16925 (and tp!666518 (inv!32315 setElem!16925) e!1373225))))

(declare-fun setRest!16925 () (InoxSet Context!2794))

(assert (=> setNonEmpty!16925 (= (_1!14467 (_1!14468 (h!29956 mapDefault!13529))) ((_ map or) (store ((as const (Array Context!2794 Bool)) false) setElem!16925 true) setRest!16925))))

(assert (= (and mapNonEmpty!13526 condMapEmpty!13529) mapIsEmpty!13529))

(assert (= (and mapNonEmpty!13526 (not condMapEmpty!13529)) mapNonEmpty!13529))

(assert (= (and b!2148007 condSetEmpty!16925) setIsEmpty!16925))

(assert (= (and b!2148007 (not condSetEmpty!16925)) setNonEmpty!16924))

(assert (= setNonEmpty!16924 b!2148009))

(assert (= (and mapNonEmpty!13529 ((_ is Cons!24555) mapValue!13529)) b!2148007))

(assert (= (and b!2148006 condSetEmpty!16924) setIsEmpty!16924))

(assert (= (and b!2148006 (not condSetEmpty!16924)) setNonEmpty!16925))

(assert (= setNonEmpty!16925 b!2148008))

(assert (= (and mapNonEmpty!13526 ((_ is Cons!24555) mapDefault!13529)) b!2148006))

(declare-fun m!2591267 () Bool)

(assert (=> setNonEmpty!16924 m!2591267))

(declare-fun m!2591269 () Bool)

(assert (=> mapNonEmpty!13529 m!2591269))

(declare-fun m!2591271 () Bool)

(assert (=> setNonEmpty!16925 m!2591271))

(declare-fun e!1373226 () Bool)

(assert (=> mapNonEmpty!13526 (= tp!666489 e!1373226)))

(declare-fun setIsEmpty!16926 () Bool)

(declare-fun setRes!16926 () Bool)

(assert (=> setIsEmpty!16926 setRes!16926))

(declare-fun b!2148010 () Bool)

(declare-fun tp!666525 () Bool)

(assert (=> b!2148010 (= e!1373226 (and setRes!16926 tp!666525))))

(declare-fun condSetEmpty!16926 () Bool)

(assert (=> b!2148010 (= condSetEmpty!16926 (= (_1!14467 (_1!14468 (h!29956 mapValue!13526))) ((as const (Array Context!2794 Bool)) false)))))

(declare-fun e!1373227 () Bool)

(declare-fun tp!666526 () Bool)

(declare-fun setNonEmpty!16926 () Bool)

(declare-fun setElem!16926 () Context!2794)

(assert (=> setNonEmpty!16926 (= setRes!16926 (and tp!666526 (inv!32315 setElem!16926) e!1373227))))

(declare-fun setRest!16926 () (InoxSet Context!2794))

(assert (=> setNonEmpty!16926 (= (_1!14467 (_1!14468 (h!29956 mapValue!13526))) ((_ map or) (store ((as const (Array Context!2794 Bool)) false) setElem!16926 true) setRest!16926))))

(declare-fun b!2148011 () Bool)

(declare-fun tp!666527 () Bool)

(assert (=> b!2148011 (= e!1373227 tp!666527)))

(assert (= (and b!2148010 condSetEmpty!16926) setIsEmpty!16926))

(assert (= (and b!2148010 (not condSetEmpty!16926)) setNonEmpty!16926))

(assert (= setNonEmpty!16926 b!2148011))

(assert (= (and mapNonEmpty!13526 ((_ is Cons!24555) mapValue!13526)) b!2148010))

(declare-fun m!2591273 () Bool)

(assert (=> setNonEmpty!16926 m!2591273))

(declare-fun condSetEmpty!16929 () Bool)

(assert (=> setNonEmpty!16915 (= condSetEmpty!16929 (= setRest!16915 ((as const (Array Context!2794 Bool)) false)))))

(declare-fun setRes!16929 () Bool)

(assert (=> setNonEmpty!16915 (= tp!666484 setRes!16929)))

(declare-fun setIsEmpty!16929 () Bool)

(assert (=> setIsEmpty!16929 setRes!16929))

(declare-fun e!1373230 () Bool)

(declare-fun setNonEmpty!16929 () Bool)

(declare-fun setElem!16929 () Context!2794)

(declare-fun tp!666533 () Bool)

(assert (=> setNonEmpty!16929 (= setRes!16929 (and tp!666533 (inv!32315 setElem!16929) e!1373230))))

(declare-fun setRest!16929 () (InoxSet Context!2794))

(assert (=> setNonEmpty!16929 (= setRest!16915 ((_ map or) (store ((as const (Array Context!2794 Bool)) false) setElem!16929 true) setRest!16929))))

(declare-fun b!2148016 () Bool)

(declare-fun tp!666532 () Bool)

(assert (=> b!2148016 (= e!1373230 tp!666532)))

(assert (= (and setNonEmpty!16915 condSetEmpty!16929) setIsEmpty!16929))

(assert (= (and setNonEmpty!16915 (not condSetEmpty!16929)) setNonEmpty!16929))

(assert (= setNonEmpty!16929 b!2148016))

(declare-fun m!2591275 () Bool)

(assert (=> setNonEmpty!16929 m!2591275))

(declare-fun b!2148025 () Bool)

(declare-fun e!1373235 () Bool)

(declare-fun tp!666541 () Bool)

(declare-fun tp!666542 () Bool)

(assert (=> b!2148025 (= e!1373235 (and (inv!32316 (left!18847 (c!340925 (totalInput!3207 thiss!29173)))) tp!666542 (inv!32316 (right!19177 (c!340925 (totalInput!3207 thiss!29173)))) tp!666541))))

(declare-fun b!2148027 () Bool)

(declare-fun e!1373236 () Bool)

(declare-fun tp!666540 () Bool)

(assert (=> b!2148027 (= e!1373236 tp!666540)))

(declare-fun b!2148026 () Bool)

(declare-fun inv!32321 (IArray!15931) Bool)

(assert (=> b!2148026 (= e!1373235 (and (inv!32321 (xs!10905 (c!340925 (totalInput!3207 thiss!29173)))) e!1373236))))

(assert (=> b!2147874 (= tp!666482 (and (inv!32316 (c!340925 (totalInput!3207 thiss!29173))) e!1373235))))

(assert (= (and b!2147874 ((_ is Node!7963) (c!340925 (totalInput!3207 thiss!29173)))) b!2148025))

(assert (= b!2148026 b!2148027))

(assert (= (and b!2147874 ((_ is Leaf!11644) (c!340925 (totalInput!3207 thiss!29173)))) b!2148026))

(declare-fun m!2591277 () Bool)

(assert (=> b!2148025 m!2591277))

(declare-fun m!2591279 () Bool)

(assert (=> b!2148025 m!2591279))

(declare-fun m!2591281 () Bool)

(assert (=> b!2148026 m!2591281))

(assert (=> b!2147874 m!2591090))

(declare-fun b!2148032 () Bool)

(declare-fun e!1373239 () Bool)

(declare-fun tp!666547 () Bool)

(declare-fun tp!666548 () Bool)

(assert (=> b!2148032 (= e!1373239 (and tp!666547 tp!666548))))

(assert (=> b!2147873 (= tp!666491 e!1373239)))

(assert (= (and b!2147873 ((_ is Cons!24554) (exprs!1897 setElem!16915))) b!2148032))

(declare-fun e!1373240 () Bool)

(assert (=> b!2147885 (= tp!666488 e!1373240)))

(declare-fun setIsEmpty!16930 () Bool)

(declare-fun setRes!16930 () Bool)

(assert (=> setIsEmpty!16930 setRes!16930))

(declare-fun b!2148033 () Bool)

(declare-fun tp!666549 () Bool)

(assert (=> b!2148033 (= e!1373240 (and setRes!16930 tp!666549))))

(declare-fun condSetEmpty!16930 () Bool)

(assert (=> b!2148033 (= condSetEmpty!16930 (= (_1!14467 (_1!14468 (h!29956 mapDefault!13526))) ((as const (Array Context!2794 Bool)) false)))))

(declare-fun e!1373241 () Bool)

(declare-fun setElem!16930 () Context!2794)

(declare-fun tp!666550 () Bool)

(declare-fun setNonEmpty!16930 () Bool)

(assert (=> setNonEmpty!16930 (= setRes!16930 (and tp!666550 (inv!32315 setElem!16930) e!1373241))))

(declare-fun setRest!16930 () (InoxSet Context!2794))

(assert (=> setNonEmpty!16930 (= (_1!14467 (_1!14468 (h!29956 mapDefault!13526))) ((_ map or) (store ((as const (Array Context!2794 Bool)) false) setElem!16930 true) setRest!16930))))

(declare-fun b!2148034 () Bool)

(declare-fun tp!666551 () Bool)

(assert (=> b!2148034 (= e!1373241 tp!666551)))

(assert (= (and b!2148033 condSetEmpty!16930) setIsEmpty!16930))

(assert (= (and b!2148033 (not condSetEmpty!16930)) setNonEmpty!16930))

(assert (= setNonEmpty!16930 b!2148034))

(assert (= (and b!2147885 ((_ is Cons!24555) mapDefault!13526)) b!2148033))

(declare-fun m!2591283 () Bool)

(assert (=> setNonEmpty!16930 m!2591283))

(declare-fun b_lambda!70765 () Bool)

(assert (= b_lambda!70761 (or (and b!2147879 b_free!63399) b_lambda!70765)))

(declare-fun b_lambda!70767 () Bool)

(assert (= b_lambda!70763 (or (and b!2147879 b_free!63399) b_lambda!70767)))

(check-sat (not bm!128905) (not d!645353) (not b!2147874) (not b!2148026) (not b!2147994) (not setNonEmpty!16926) (not b!2147980) (not setNonEmpty!16924) (not b!2147917) (not d!645361) (not d!645377) (not b!2147971) (not bm!128902) (not bm!128904) (not b!2147914) (not bm!128907) (not b!2147992) (not b!2147936) (not bm!128903) (not b_lambda!70765) (not b_next!64101) (not b!2147984) (not d!645369) (not b!2148011) (not b!2148007) (not b_next!64103) (not b!2147897) (not b!2147973) (not b!2148009) (not setNonEmpty!16918) (not d!645365) (not b!2147982) (not b!2147941) (not b!2147942) (not b!2147995) (not mapNonEmpty!13529) (not b!2147935) (not b!2147899) (not b!2147968) (not b!2147993) (not b_lambda!70767) (not b!2147969) (not b!2148006) (not b!2148027) b_and!172989 (not setNonEmpty!16925) (not b!2148016) (not bm!128906) (not b!2147913) (not b!2148010) (not setNonEmpty!16929) (not b!2148025) (not setNonEmpty!16930) (not d!645367) b_and!172995 (not b!2148033) (not b!2148034) (not setNonEmpty!16919) (not b!2147976) (not b!2148032) (not b!2147927) (not b!2148008) (not d!645379) (not d!645357) (not b!2147925))
(check-sat b_and!172995 b_and!172989 (not b_next!64103) (not b_next!64101))
