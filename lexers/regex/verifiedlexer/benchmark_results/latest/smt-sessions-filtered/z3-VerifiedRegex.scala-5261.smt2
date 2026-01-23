; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270222 () Bool)

(assert start!270222)

(declare-fun b!2795104 () Bool)

(declare-fun b_free!79125 () Bool)

(declare-fun b_next!79829 () Bool)

(assert (=> b!2795104 (= b_free!79125 (not b_next!79829))))

(declare-fun tp!888957 () Bool)

(declare-fun b_and!203863 () Bool)

(assert (=> b!2795104 (= tp!888957 b_and!203863)))

(declare-fun b!2795106 () Bool)

(declare-fun b_free!79127 () Bool)

(declare-fun b_next!79831 () Bool)

(assert (=> b!2795106 (= b_free!79127 (not b_next!79831))))

(declare-fun tp!888954 () Bool)

(declare-fun b_and!203865 () Bool)

(assert (=> b!2795106 (= tp!888954 b_and!203865)))

(declare-fun b!2795086 () Bool)

(declare-fun b_free!79129 () Bool)

(declare-fun b_next!79833 () Bool)

(assert (=> b!2795086 (= b_free!79129 (not b_next!79833))))

(declare-fun tp!888951 () Bool)

(declare-fun b_and!203867 () Bool)

(assert (=> b!2795086 (= tp!888951 b_and!203867)))

(declare-fun b!2795092 () Bool)

(declare-fun b_free!79131 () Bool)

(declare-fun b_next!79835 () Bool)

(assert (=> b!2795092 (= b_free!79131 (not b_next!79835))))

(declare-fun tp!888963 () Bool)

(declare-fun b_and!203869 () Bool)

(assert (=> b!2795092 (= tp!888963 b_and!203869)))

(declare-fun b!2795084 () Bool)

(declare-fun e!1765054 () Bool)

(declare-fun e!1765050 () Bool)

(declare-datatypes ((C!16532 0))(
  ( (C!16533 (val!10200 Int)) )
))
(declare-datatypes ((array!14116 0))(
  ( (array!14117 (arr!6290 (Array (_ BitVec 32) (_ BitVec 64))) (size!25255 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8187 0))(
  ( (ElementMatch!8187 (c!453567 C!16532)) (Concat!13275 (regOne!16886 Regex!8187) (regTwo!16886 Regex!8187)) (EmptyExpr!8187) (Star!8187 (reg!8516 Regex!8187)) (EmptyLang!8187) (Union!8187 (regOne!16887 Regex!8187) (regTwo!16887 Regex!8187)) )
))
(declare-datatypes ((List!32513 0))(
  ( (Nil!32413) (Cons!32413 (h!37833 Regex!8187) (t!228673 List!32513)) )
))
(declare-datatypes ((Context!4810 0))(
  ( (Context!4811 (exprs!2905 List!32513)) )
))
(declare-datatypes ((tuple3!5110 0))(
  ( (tuple3!5111 (_1!19488 Regex!8187) (_2!19488 Context!4810) (_3!3025 C!16532)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32926 0))(
  ( (tuple2!32927 (_1!19489 tuple3!5110) (_2!19489 (InoxSet Context!4810))) )
))
(declare-datatypes ((List!32514 0))(
  ( (Nil!32414) (Cons!32414 (h!37834 tuple2!32926) (t!228674 List!32514)) )
))
(declare-datatypes ((array!14118 0))(
  ( (array!14119 (arr!6291 (Array (_ BitVec 32) List!32514)) (size!25256 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7940 0))(
  ( (LongMapFixedSize!7941 (defaultEntry!4355 Int) (mask!9800 (_ BitVec 32)) (extraKeys!4219 (_ BitVec 32)) (zeroValue!4229 List!32514) (minValue!4229 List!32514) (_size!7983 (_ BitVec 32)) (_keys!4270 array!14116) (_values!4251 array!14118) (_vacant!4031 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15689 0))(
  ( (Cell!15690 (v!34018 LongMapFixedSize!7940)) )
))
(declare-datatypes ((MutLongMap!3970 0))(
  ( (LongMap!3970 (underlying!8143 Cell!15689)) (MutLongMapExt!3969 (__x!21560 Int)) )
))
(declare-fun lt!998672 () MutLongMap!3970)

(get-info :version)

(assert (=> b!2795084 (= e!1765054 (and e!1765050 ((_ is LongMap!3970) lt!998672)))))

(declare-datatypes ((Cell!15691 0))(
  ( (Cell!15692 (v!34019 MutLongMap!3970)) )
))
(declare-datatypes ((Hashable!3886 0))(
  ( (HashableExt!3885 (__x!21561 Int)) )
))
(declare-datatypes ((MutableMap!3876 0))(
  ( (MutableMapExt!3875 (__x!21562 Int)) (HashMap!3876 (underlying!8144 Cell!15691) (hashF!5918 Hashable!3886) (_size!7984 (_ BitVec 32)) (defaultValue!4047 Int)) )
))
(declare-datatypes ((CacheDown!2702 0))(
  ( (CacheDown!2703 (cache!4019 MutableMap!3876)) )
))
(declare-fun cacheDown!1009 () CacheDown!2702)

(assert (=> b!2795084 (= lt!998672 (v!34019 (underlying!8144 (cache!4019 cacheDown!1009))))))

(declare-fun b!2795085 () Bool)

(declare-fun e!1765051 () Bool)

(declare-fun e!1765049 () Bool)

(assert (=> b!2795085 (= e!1765051 e!1765049)))

(declare-fun b!2795087 () Bool)

(declare-fun res!1165375 () Bool)

(declare-fun e!1765066 () Bool)

(assert (=> b!2795087 (=> (not res!1165375) (not e!1765066))))

(declare-fun totalInputSize!205 () Int)

(declare-datatypes ((List!32515 0))(
  ( (Nil!32415) (Cons!32415 (h!37835 C!16532) (t!228675 List!32515)) )
))
(declare-datatypes ((IArray!20109 0))(
  ( (IArray!20110 (innerList!10112 List!32515)) )
))
(declare-datatypes ((Conc!10052 0))(
  ( (Node!10052 (left!24543 Conc!10052) (right!24873 Conc!10052) (csize!20334 Int) (cheight!10263 Int)) (Leaf!15314 (xs!13164 IArray!20109) (csize!20335 Int)) (Empty!10052) )
))
(declare-datatypes ((BalanceConc!19718 0))(
  ( (BalanceConc!19719 (c!453568 Conc!10052)) )
))
(declare-fun totalInput!758 () BalanceConc!19718)

(declare-fun size!25257 (BalanceConc!19718) Int)

(assert (=> b!2795087 (= res!1165375 (= totalInputSize!205 (size!25257 totalInput!758)))))

(declare-fun mapIsEmpty!18069 () Bool)

(declare-fun mapRes!18069 () Bool)

(assert (=> mapIsEmpty!18069 mapRes!18069))

(declare-fun b!2795088 () Bool)

(declare-fun e!1765062 () Bool)

(declare-fun e!1765053 () Bool)

(declare-datatypes ((tuple2!32928 0))(
  ( (tuple2!32929 (_1!19490 Context!4810) (_2!19490 C!16532)) )
))
(declare-datatypes ((tuple2!32930 0))(
  ( (tuple2!32931 (_1!19491 tuple2!32928) (_2!19491 (InoxSet Context!4810))) )
))
(declare-datatypes ((List!32516 0))(
  ( (Nil!32416) (Cons!32416 (h!37836 tuple2!32930) (t!228676 List!32516)) )
))
(declare-datatypes ((array!14120 0))(
  ( (array!14121 (arr!6292 (Array (_ BitVec 32) List!32516)) (size!25258 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7942 0))(
  ( (LongMapFixedSize!7943 (defaultEntry!4356 Int) (mask!9801 (_ BitVec 32)) (extraKeys!4220 (_ BitVec 32)) (zeroValue!4230 List!32516) (minValue!4230 List!32516) (_size!7985 (_ BitVec 32)) (_keys!4271 array!14116) (_values!4252 array!14120) (_vacant!4032 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15693 0))(
  ( (Cell!15694 (v!34020 LongMapFixedSize!7942)) )
))
(declare-datatypes ((MutLongMap!3971 0))(
  ( (LongMap!3971 (underlying!8145 Cell!15693)) (MutLongMapExt!3970 (__x!21563 Int)) )
))
(declare-fun lt!998674 () MutLongMap!3971)

(assert (=> b!2795088 (= e!1765062 (and e!1765053 ((_ is LongMap!3971) lt!998674)))))

(declare-datatypes ((Hashable!3887 0))(
  ( (HashableExt!3886 (__x!21564 Int)) )
))
(declare-datatypes ((Cell!15695 0))(
  ( (Cell!15696 (v!34021 MutLongMap!3971)) )
))
(declare-datatypes ((MutableMap!3877 0))(
  ( (MutableMapExt!3876 (__x!21565 Int)) (HashMap!3877 (underlying!8146 Cell!15695) (hashF!5919 Hashable!3887) (_size!7986 (_ BitVec 32)) (defaultValue!4048 Int)) )
))
(declare-datatypes ((CacheUp!2582 0))(
  ( (CacheUp!2583 (cache!4020 MutableMap!3877)) )
))
(declare-fun cacheUp!890 () CacheUp!2582)

(assert (=> b!2795088 (= lt!998674 (v!34021 (underlying!8146 (cache!4020 cacheUp!890))))))

(declare-fun b!2795089 () Bool)

(declare-fun e!1765065 () Bool)

(assert (=> b!2795089 (= e!1765053 e!1765065)))

(declare-fun b!2795090 () Bool)

(declare-fun e!1765060 () Bool)

(assert (=> b!2795090 (= e!1765066 (not e!1765060))))

(declare-fun res!1165371 () Bool)

(assert (=> b!2795090 (=> res!1165371 e!1765060)))

(declare-fun testedP!183 () List!32515)

(declare-fun lt!998670 () List!32515)

(declare-fun isPrefix!2613 (List!32515 List!32515) Bool)

(assert (=> b!2795090 (= res!1165371 (not (isPrefix!2613 testedP!183 lt!998670)))))

(declare-fun lt!998671 () List!32515)

(assert (=> b!2795090 (isPrefix!2613 testedP!183 lt!998671)))

(declare-datatypes ((Unit!46578 0))(
  ( (Unit!46579) )
))
(declare-fun lt!998669 () Unit!46578)

(declare-fun testedSuffix!143 () List!32515)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1722 (List!32515 List!32515) Unit!46578)

(assert (=> b!2795090 (= lt!998669 (lemmaConcatTwoListThenFirstIsPrefix!1722 testedP!183 testedSuffix!143))))

(declare-fun mapNonEmpty!18069 () Bool)

(declare-fun mapRes!18070 () Bool)

(declare-fun tp!888948 () Bool)

(declare-fun tp!888953 () Bool)

(assert (=> mapNonEmpty!18069 (= mapRes!18070 (and tp!888948 tp!888953))))

(declare-fun mapValue!18069 () List!32516)

(declare-fun mapKey!18069 () (_ BitVec 32))

(declare-fun mapRest!18069 () (Array (_ BitVec 32) List!32516))

(assert (=> mapNonEmpty!18069 (= (arr!6292 (_values!4252 (v!34020 (underlying!8145 (v!34021 (underlying!8146 (cache!4020 cacheUp!890))))))) (store mapRest!18069 mapKey!18069 mapValue!18069))))

(declare-fun b!2795091 () Bool)

(declare-fun e!1765058 () Bool)

(declare-fun tp_is_empty!14187 () Bool)

(declare-fun tp!888956 () Bool)

(assert (=> b!2795091 (= e!1765058 (and tp_is_empty!14187 tp!888956))))

(declare-fun e!1765064 () Bool)

(assert (=> b!2795092 (= e!1765064 (and e!1765054 tp!888963))))

(declare-fun b!2795093 () Bool)

(declare-fun e!1765052 () Bool)

(declare-fun tp!888949 () Bool)

(assert (=> b!2795093 (= e!1765052 (and tp!888949 mapRes!18069))))

(declare-fun condMapEmpty!18069 () Bool)

(declare-fun mapDefault!18070 () List!32514)

(assert (=> b!2795093 (= condMapEmpty!18069 (= (arr!6291 (_values!4251 (v!34018 (underlying!8143 (v!34019 (underlying!8144 (cache!4019 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32514)) mapDefault!18070)))))

(declare-fun b!2795094 () Bool)

(declare-fun res!1165373 () Bool)

(assert (=> b!2795094 (=> (not res!1165373) (not e!1765066))))

(declare-fun valid!3113 (CacheUp!2582) Bool)

(assert (=> b!2795094 (= res!1165373 (valid!3113 cacheUp!890))))

(declare-fun b!2795095 () Bool)

(declare-fun e!1765055 () Bool)

(declare-fun tp!888950 () Bool)

(assert (=> b!2795095 (= e!1765055 (and tp_is_empty!14187 tp!888950))))

(declare-fun b!2795096 () Bool)

(declare-fun e!1765057 () Bool)

(declare-fun tp!888960 () Bool)

(assert (=> b!2795096 (= e!1765057 (and tp!888960 mapRes!18070))))

(declare-fun condMapEmpty!18070 () Bool)

(declare-fun mapDefault!18069 () List!32516)

(assert (=> b!2795096 (= condMapEmpty!18070 (= (arr!6292 (_values!4252 (v!34020 (underlying!8145 (v!34021 (underlying!8146 (cache!4020 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32516)) mapDefault!18069)))))

(declare-fun mapIsEmpty!18070 () Bool)

(assert (=> mapIsEmpty!18070 mapRes!18070))

(declare-fun tp!888962 () Bool)

(declare-fun tp!888955 () Bool)

(declare-fun array_inv!4501 (array!14116) Bool)

(declare-fun array_inv!4502 (array!14118) Bool)

(assert (=> b!2795086 (= e!1765049 (and tp!888951 tp!888962 tp!888955 (array_inv!4501 (_keys!4270 (v!34018 (underlying!8143 (v!34019 (underlying!8144 (cache!4019 cacheDown!1009))))))) (array_inv!4502 (_values!4251 (v!34018 (underlying!8143 (v!34019 (underlying!8144 (cache!4019 cacheDown!1009))))))) e!1765052))))

(declare-fun res!1165372 () Bool)

(assert (=> start!270222 (=> (not res!1165372) (not e!1765066))))

(assert (=> start!270222 (= res!1165372 (= lt!998671 lt!998670))))

(declare-fun list!12187 (BalanceConc!19718) List!32515)

(assert (=> start!270222 (= lt!998670 (list!12187 totalInput!758))))

(declare-fun ++!8001 (List!32515 List!32515) List!32515)

(assert (=> start!270222 (= lt!998671 (++!8001 testedP!183 testedSuffix!143))))

(assert (=> start!270222 e!1765066))

(declare-fun e!1765047 () Bool)

(declare-fun inv!44037 (BalanceConc!19718) Bool)

(assert (=> start!270222 (and (inv!44037 totalInput!758) e!1765047)))

(assert (=> start!270222 true))

(assert (=> start!270222 e!1765055))

(assert (=> start!270222 e!1765058))

(declare-fun e!1765056 () Bool)

(declare-fun inv!44038 (CacheDown!2702) Bool)

(assert (=> start!270222 (and (inv!44038 cacheDown!1009) e!1765056)))

(declare-fun e!1765061 () Bool)

(declare-fun inv!44039 (CacheUp!2582) Bool)

(assert (=> start!270222 (and (inv!44039 cacheUp!890) e!1765061)))

(declare-fun b!2795097 () Bool)

(assert (=> b!2795097 (= e!1765056 e!1765064)))

(declare-fun b!2795098 () Bool)

(assert (=> b!2795098 (= e!1765060 true)))

(declare-fun lt!998673 () List!32515)

(declare-fun getSuffix!1289 (List!32515 List!32515) List!32515)

(assert (=> b!2795098 (= lt!998673 (getSuffix!1289 lt!998670 testedP!183))))

(declare-fun b!2795099 () Bool)

(assert (=> b!2795099 (= e!1765050 e!1765051)))

(declare-fun b!2795100 () Bool)

(declare-fun e!1765046 () Bool)

(assert (=> b!2795100 (= e!1765065 e!1765046)))

(declare-fun b!2795101 () Bool)

(declare-fun tp!888961 () Bool)

(declare-fun inv!44040 (Conc!10052) Bool)

(assert (=> b!2795101 (= e!1765047 (and (inv!44040 (c!453568 totalInput!758)) tp!888961))))

(declare-fun mapNonEmpty!18070 () Bool)

(declare-fun tp!888947 () Bool)

(declare-fun tp!888959 () Bool)

(assert (=> mapNonEmpty!18070 (= mapRes!18069 (and tp!888947 tp!888959))))

(declare-fun mapRest!18070 () (Array (_ BitVec 32) List!32514))

(declare-fun mapValue!18070 () List!32514)

(declare-fun mapKey!18070 () (_ BitVec 32))

(assert (=> mapNonEmpty!18070 (= (arr!6291 (_values!4251 (v!34018 (underlying!8143 (v!34019 (underlying!8144 (cache!4019 cacheDown!1009))))))) (store mapRest!18070 mapKey!18070 mapValue!18070))))

(declare-fun b!2795102 () Bool)

(declare-fun e!1765048 () Bool)

(assert (=> b!2795102 (= e!1765061 e!1765048)))

(declare-fun b!2795103 () Bool)

(declare-fun res!1165374 () Bool)

(assert (=> b!2795103 (=> (not res!1165374) (not e!1765066))))

(declare-fun testedPSize!143 () Int)

(declare-fun size!25259 (List!32515) Int)

(assert (=> b!2795103 (= res!1165374 (= testedPSize!143 (size!25259 testedP!183)))))

(assert (=> b!2795104 (= e!1765048 (and e!1765062 tp!888957))))

(declare-fun b!2795105 () Bool)

(declare-fun res!1165370 () Bool)

(assert (=> b!2795105 (=> (not res!1165370) (not e!1765066))))

(declare-fun valid!3114 (CacheDown!2702) Bool)

(assert (=> b!2795105 (= res!1165370 (valid!3114 cacheDown!1009))))

(declare-fun tp!888958 () Bool)

(declare-fun tp!888952 () Bool)

(declare-fun array_inv!4503 (array!14120) Bool)

(assert (=> b!2795106 (= e!1765046 (and tp!888954 tp!888952 tp!888958 (array_inv!4501 (_keys!4271 (v!34020 (underlying!8145 (v!34021 (underlying!8146 (cache!4020 cacheUp!890))))))) (array_inv!4503 (_values!4252 (v!34020 (underlying!8145 (v!34021 (underlying!8146 (cache!4020 cacheUp!890))))))) e!1765057))))

(assert (= (and start!270222 res!1165372) b!2795103))

(assert (= (and b!2795103 res!1165374) b!2795087))

(assert (= (and b!2795087 res!1165375) b!2795094))

(assert (= (and b!2795094 res!1165373) b!2795105))

(assert (= (and b!2795105 res!1165370) b!2795090))

(assert (= (and b!2795090 (not res!1165371)) b!2795098))

(assert (= start!270222 b!2795101))

(assert (= (and start!270222 ((_ is Cons!32415) testedP!183)) b!2795095))

(assert (= (and start!270222 ((_ is Cons!32415) testedSuffix!143)) b!2795091))

(assert (= (and b!2795093 condMapEmpty!18069) mapIsEmpty!18069))

(assert (= (and b!2795093 (not condMapEmpty!18069)) mapNonEmpty!18070))

(assert (= b!2795086 b!2795093))

(assert (= b!2795085 b!2795086))

(assert (= b!2795099 b!2795085))

(assert (= (and b!2795084 ((_ is LongMap!3970) (v!34019 (underlying!8144 (cache!4019 cacheDown!1009))))) b!2795099))

(assert (= b!2795092 b!2795084))

(assert (= (and b!2795097 ((_ is HashMap!3876) (cache!4019 cacheDown!1009))) b!2795092))

(assert (= start!270222 b!2795097))

(assert (= (and b!2795096 condMapEmpty!18070) mapIsEmpty!18070))

(assert (= (and b!2795096 (not condMapEmpty!18070)) mapNonEmpty!18069))

(assert (= b!2795106 b!2795096))

(assert (= b!2795100 b!2795106))

(assert (= b!2795089 b!2795100))

(assert (= (and b!2795088 ((_ is LongMap!3971) (v!34021 (underlying!8146 (cache!4020 cacheUp!890))))) b!2795089))

(assert (= b!2795104 b!2795088))

(assert (= (and b!2795102 ((_ is HashMap!3877) (cache!4020 cacheUp!890))) b!2795104))

(assert (= start!270222 b!2795102))

(declare-fun m!3225145 () Bool)

(assert (=> b!2795094 m!3225145))

(declare-fun m!3225147 () Bool)

(assert (=> b!2795098 m!3225147))

(declare-fun m!3225149 () Bool)

(assert (=> b!2795101 m!3225149))

(declare-fun m!3225151 () Bool)

(assert (=> start!270222 m!3225151))

(declare-fun m!3225153 () Bool)

(assert (=> start!270222 m!3225153))

(declare-fun m!3225155 () Bool)

(assert (=> start!270222 m!3225155))

(declare-fun m!3225157 () Bool)

(assert (=> start!270222 m!3225157))

(declare-fun m!3225159 () Bool)

(assert (=> start!270222 m!3225159))

(declare-fun m!3225161 () Bool)

(assert (=> b!2795087 m!3225161))

(declare-fun m!3225163 () Bool)

(assert (=> b!2795106 m!3225163))

(declare-fun m!3225165 () Bool)

(assert (=> b!2795106 m!3225165))

(declare-fun m!3225167 () Bool)

(assert (=> b!2795086 m!3225167))

(declare-fun m!3225169 () Bool)

(assert (=> b!2795086 m!3225169))

(declare-fun m!3225171 () Bool)

(assert (=> b!2795103 m!3225171))

(declare-fun m!3225173 () Bool)

(assert (=> mapNonEmpty!18069 m!3225173))

(declare-fun m!3225175 () Bool)

(assert (=> mapNonEmpty!18070 m!3225175))

(declare-fun m!3225177 () Bool)

(assert (=> b!2795090 m!3225177))

(declare-fun m!3225179 () Bool)

(assert (=> b!2795090 m!3225179))

(declare-fun m!3225181 () Bool)

(assert (=> b!2795090 m!3225181))

(declare-fun m!3225183 () Bool)

(assert (=> b!2795105 m!3225183))

(check-sat (not b_next!79835) (not mapNonEmpty!18069) (not b!2795086) (not start!270222) b_and!203869 (not b!2795094) (not b!2795101) (not b!2795090) b_and!203867 (not b!2795095) (not mapNonEmpty!18070) (not b_next!79829) (not b!2795103) (not b_next!79831) b_and!203863 (not b!2795096) (not b_next!79833) b_and!203865 (not b!2795091) (not b!2795106) (not b!2795105) (not b!2795093) (not b!2795087) tp_is_empty!14187 (not b!2795098))
(check-sat (not b_next!79835) (not b_next!79831) b_and!203863 b_and!203869 b_and!203867 (not b_next!79829) (not b_next!79833) b_and!203865)
