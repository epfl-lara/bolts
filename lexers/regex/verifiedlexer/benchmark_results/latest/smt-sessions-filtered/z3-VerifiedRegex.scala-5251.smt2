; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269740 () Bool)

(assert start!269740)

(declare-fun b!2790108 () Bool)

(declare-fun b_free!78965 () Bool)

(declare-fun b_next!79669 () Bool)

(assert (=> b!2790108 (= b_free!78965 (not b_next!79669))))

(declare-fun tp!885674 () Bool)

(declare-fun b_and!203703 () Bool)

(assert (=> b!2790108 (= tp!885674 b_and!203703)))

(declare-fun b!2790102 () Bool)

(declare-fun b_free!78967 () Bool)

(declare-fun b_next!79671 () Bool)

(assert (=> b!2790102 (= b_free!78967 (not b_next!79671))))

(declare-fun tp!885683 () Bool)

(declare-fun b_and!203705 () Bool)

(assert (=> b!2790102 (= tp!885683 b_and!203705)))

(declare-fun b!2790107 () Bool)

(declare-fun b_free!78969 () Bool)

(declare-fun b_next!79673 () Bool)

(assert (=> b!2790107 (= b_free!78969 (not b_next!79673))))

(declare-fun tp!885670 () Bool)

(declare-fun b_and!203707 () Bool)

(assert (=> b!2790107 (= tp!885670 b_and!203707)))

(declare-fun b!2790115 () Bool)

(declare-fun b_free!78971 () Bool)

(declare-fun b_next!79675 () Bool)

(assert (=> b!2790115 (= b_free!78971 (not b_next!79675))))

(declare-fun tp!885677 () Bool)

(declare-fun b_and!203709 () Bool)

(assert (=> b!2790115 (= tp!885677 b_and!203709)))

(declare-fun b!2790098 () Bool)

(declare-fun e!1761454 () Bool)

(declare-datatypes ((C!16492 0))(
  ( (C!16493 (val!10180 Int)) )
))
(declare-datatypes ((List!32427 0))(
  ( (Nil!32327) (Cons!32327 (h!37747 C!16492) (t!228569 List!32427)) )
))
(declare-datatypes ((IArray!20071 0))(
  ( (IArray!20072 (innerList!10093 List!32427)) )
))
(declare-datatypes ((Conc!10033 0))(
  ( (Node!10033 (left!24508 Conc!10033) (right!24838 Conc!10033) (csize!20296 Int) (cheight!10244 Int)) (Leaf!15285 (xs!13144 IArray!20071) (csize!20297 Int)) (Empty!10033) )
))
(declare-datatypes ((BalanceConc!19680 0))(
  ( (BalanceConc!19681 (c!452943 Conc!10033)) )
))
(declare-fun totalInput!758 () BalanceConc!19680)

(declare-fun tp!885667 () Bool)

(declare-fun inv!43922 (Conc!10033) Bool)

(assert (=> b!2790098 (= e!1761454 (and (inv!43922 (c!452943 totalInput!758)) tp!885667))))

(declare-fun b!2790099 () Bool)

(declare-fun res!1164041 () Bool)

(declare-fun e!1761464 () Bool)

(assert (=> b!2790099 (=> (not res!1164041) (not e!1761464))))

(declare-datatypes ((Hashable!3846 0))(
  ( (HashableExt!3845 (__x!21440 Int)) )
))
(declare-datatypes ((Regex!8167 0))(
  ( (ElementMatch!8167 (c!452944 C!16492)) (Concat!13255 (regOne!16846 Regex!8167) (regTwo!16846 Regex!8167)) (EmptyExpr!8167) (Star!8167 (reg!8496 Regex!8167)) (EmptyLang!8167) (Union!8167 (regOne!16847 Regex!8167) (regTwo!16847 Regex!8167)) )
))
(declare-datatypes ((List!32428 0))(
  ( (Nil!32328) (Cons!32328 (h!37748 Regex!8167) (t!228570 List!32428)) )
))
(declare-datatypes ((Context!4770 0))(
  ( (Context!4771 (exprs!2885 List!32428)) )
))
(declare-datatypes ((tuple2!32762 0))(
  ( (tuple2!32763 (_1!19386 Context!4770) (_2!19386 C!16492)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32764 0))(
  ( (tuple2!32765 (_1!19387 tuple2!32762) (_2!19387 (InoxSet Context!4770))) )
))
(declare-datatypes ((List!32429 0))(
  ( (Nil!32329) (Cons!32329 (h!37749 tuple2!32764) (t!228571 List!32429)) )
))
(declare-datatypes ((array!13981 0))(
  ( (array!13982 (arr!6230 (Array (_ BitVec 32) List!32429)) (size!25158 (_ BitVec 32))) )
))
(declare-datatypes ((array!13983 0))(
  ( (array!13984 (arr!6231 (Array (_ BitVec 32) (_ BitVec 64))) (size!25159 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7860 0))(
  ( (LongMapFixedSize!7861 (defaultEntry!4315 Int) (mask!9750 (_ BitVec 32)) (extraKeys!4179 (_ BitVec 32)) (zeroValue!4189 List!32429) (minValue!4189 List!32429) (_size!7903 (_ BitVec 32)) (_keys!4230 array!13983) (_values!4211 array!13981) (_vacant!3991 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15529 0))(
  ( (Cell!15530 (v!33933 LongMapFixedSize!7860)) )
))
(declare-datatypes ((MutLongMap!3930 0))(
  ( (LongMap!3930 (underlying!8063 Cell!15529)) (MutLongMapExt!3929 (__x!21441 Int)) )
))
(declare-datatypes ((Cell!15531 0))(
  ( (Cell!15532 (v!33934 MutLongMap!3930)) )
))
(declare-datatypes ((MutableMap!3836 0))(
  ( (MutableMapExt!3835 (__x!21442 Int)) (HashMap!3836 (underlying!8064 Cell!15531) (hashF!5878 Hashable!3846) (_size!7904 (_ BitVec 32)) (defaultValue!4007 Int)) )
))
(declare-datatypes ((CacheUp!2542 0))(
  ( (CacheUp!2543 (cache!3979 MutableMap!3836)) )
))
(declare-fun cacheUp!890 () CacheUp!2542)

(declare-fun valid!3070 (CacheUp!2542) Bool)

(assert (=> b!2790099 (= res!1164041 (valid!3070 cacheUp!890))))

(declare-fun b!2790100 () Bool)

(declare-fun e!1761460 () Bool)

(declare-fun e!1761465 () Bool)

(assert (=> b!2790100 (= e!1761460 e!1761465)))

(declare-fun b!2790101 () Bool)

(declare-fun res!1164043 () Bool)

(assert (=> b!2790101 (=> (not res!1164043) (not e!1761464))))

(declare-fun totalInputSize!205 () Int)

(declare-fun size!25160 (BalanceConc!19680) Int)

(assert (=> b!2790101 (= res!1164043 (= totalInputSize!205 (size!25160 totalInput!758)))))

(declare-fun tp!885671 () Bool)

(declare-fun e!1761457 () Bool)

(declare-fun tp!885673 () Bool)

(declare-fun e!1761467 () Bool)

(declare-fun array_inv!4460 (array!13983) Bool)

(declare-fun array_inv!4461 (array!13981) Bool)

(assert (=> b!2790102 (= e!1761457 (and tp!885683 tp!885673 tp!885671 (array_inv!4460 (_keys!4230 (v!33933 (underlying!8063 (v!33934 (underlying!8064 (cache!3979 cacheUp!890))))))) (array_inv!4461 (_values!4211 (v!33933 (underlying!8063 (v!33934 (underlying!8064 (cache!3979 cacheUp!890))))))) e!1761467))))

(declare-fun b!2790103 () Bool)

(declare-fun e!1761451 () Bool)

(declare-fun tp_is_empty!14147 () Bool)

(declare-fun tp!885681 () Bool)

(assert (=> b!2790103 (= e!1761451 (and tp_is_empty!14147 tp!885681))))

(declare-fun b!2790104 () Bool)

(declare-fun e!1761455 () Bool)

(declare-datatypes ((tuple3!5070 0))(
  ( (tuple3!5071 (_1!19388 Regex!8167) (_2!19388 Context!4770) (_3!3005 C!16492)) )
))
(declare-datatypes ((tuple2!32766 0))(
  ( (tuple2!32767 (_1!19389 tuple3!5070) (_2!19389 (InoxSet Context!4770))) )
))
(declare-datatypes ((List!32430 0))(
  ( (Nil!32330) (Cons!32330 (h!37750 tuple2!32766) (t!228572 List!32430)) )
))
(declare-datatypes ((array!13985 0))(
  ( (array!13986 (arr!6232 (Array (_ BitVec 32) List!32430)) (size!25161 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7862 0))(
  ( (LongMapFixedSize!7863 (defaultEntry!4316 Int) (mask!9751 (_ BitVec 32)) (extraKeys!4180 (_ BitVec 32)) (zeroValue!4190 List!32430) (minValue!4190 List!32430) (_size!7905 (_ BitVec 32)) (_keys!4231 array!13983) (_values!4212 array!13985) (_vacant!3992 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15533 0))(
  ( (Cell!15534 (v!33935 LongMapFixedSize!7862)) )
))
(declare-datatypes ((MutLongMap!3931 0))(
  ( (LongMap!3931 (underlying!8065 Cell!15533)) (MutLongMapExt!3930 (__x!21443 Int)) )
))
(declare-fun lt!997437 () MutLongMap!3931)

(get-info :version)

(assert (=> b!2790104 (= e!1761455 (and e!1761460 ((_ is LongMap!3931) lt!997437)))))

(declare-datatypes ((Cell!15535 0))(
  ( (Cell!15536 (v!33936 MutLongMap!3931)) )
))
(declare-datatypes ((Hashable!3847 0))(
  ( (HashableExt!3846 (__x!21444 Int)) )
))
(declare-datatypes ((MutableMap!3837 0))(
  ( (MutableMapExt!3836 (__x!21445 Int)) (HashMap!3837 (underlying!8066 Cell!15535) (hashF!5879 Hashable!3847) (_size!7906 (_ BitVec 32)) (defaultValue!4008 Int)) )
))
(declare-datatypes ((CacheDown!2662 0))(
  ( (CacheDown!2663 (cache!3980 MutableMap!3837)) )
))
(declare-fun cacheDown!1009 () CacheDown!2662)

(assert (=> b!2790104 (= lt!997437 (v!33936 (underlying!8066 (cache!3980 cacheDown!1009))))))

(declare-fun b!2790105 () Bool)

(declare-fun e!1761462 () Bool)

(declare-fun tp!885679 () Bool)

(assert (=> b!2790105 (= e!1761462 (and tp_is_empty!14147 tp!885679))))

(declare-fun b!2790106 () Bool)

(declare-fun e!1761452 () Bool)

(assert (=> b!2790106 (= e!1761465 e!1761452)))

(declare-fun tp!885680 () Bool)

(declare-fun tp!885668 () Bool)

(declare-fun e!1761469 () Bool)

(declare-fun array_inv!4462 (array!13985) Bool)

(assert (=> b!2790107 (= e!1761452 (and tp!885670 tp!885668 tp!885680 (array_inv!4460 (_keys!4231 (v!33935 (underlying!8065 (v!33936 (underlying!8066 (cache!3980 cacheDown!1009))))))) (array_inv!4462 (_values!4212 (v!33935 (underlying!8065 (v!33936 (underlying!8066 (cache!3980 cacheDown!1009))))))) e!1761469))))

(declare-fun mapIsEmpty!17909 () Bool)

(declare-fun mapRes!17909 () Bool)

(assert (=> mapIsEmpty!17909 mapRes!17909))

(declare-fun e!1761463 () Bool)

(declare-fun e!1761461 () Bool)

(assert (=> b!2790108 (= e!1761463 (and e!1761461 tp!885674))))

(declare-fun b!2790109 () Bool)

(declare-fun e!1761470 () Bool)

(assert (=> b!2790109 (= e!1761470 e!1761463)))

(declare-fun mapNonEmpty!17909 () Bool)

(declare-fun tp!885678 () Bool)

(declare-fun tp!885682 () Bool)

(assert (=> mapNonEmpty!17909 (= mapRes!17909 (and tp!885678 tp!885682))))

(declare-fun mapRest!17910 () (Array (_ BitVec 32) List!32430))

(declare-fun mapKey!17910 () (_ BitVec 32))

(declare-fun mapValue!17909 () List!32430)

(assert (=> mapNonEmpty!17909 (= (arr!6232 (_values!4212 (v!33935 (underlying!8065 (v!33936 (underlying!8066 (cache!3980 cacheDown!1009))))))) (store mapRest!17910 mapKey!17910 mapValue!17909))))

(declare-fun b!2790110 () Bool)

(declare-fun res!1164044 () Bool)

(assert (=> b!2790110 (=> (not res!1164044) (not e!1761464))))

(declare-fun valid!3071 (CacheDown!2662) Bool)

(assert (=> b!2790110 (= res!1164044 (valid!3071 cacheDown!1009))))

(declare-fun b!2790111 () Bool)

(declare-fun e!1761459 () Bool)

(declare-fun lt!997433 () MutLongMap!3930)

(assert (=> b!2790111 (= e!1761461 (and e!1761459 ((_ is LongMap!3930) lt!997433)))))

(assert (=> b!2790111 (= lt!997433 (v!33934 (underlying!8064 (cache!3979 cacheUp!890))))))

(declare-fun b!2790112 () Bool)

(declare-fun e!1761456 () Bool)

(assert (=> b!2790112 (= e!1761459 e!1761456)))

(declare-fun b!2790113 () Bool)

(declare-fun res!1164045 () Bool)

(assert (=> b!2790113 (=> (not res!1164045) (not e!1761464))))

(declare-fun testedPSize!143 () Int)

(declare-fun testedP!183 () List!32427)

(declare-fun size!25162 (List!32427) Int)

(assert (=> b!2790113 (= res!1164045 (= testedPSize!143 (size!25162 testedP!183)))))

(declare-fun mapNonEmpty!17910 () Bool)

(declare-fun mapRes!17910 () Bool)

(declare-fun tp!885676 () Bool)

(declare-fun tp!885669 () Bool)

(assert (=> mapNonEmpty!17910 (= mapRes!17910 (and tp!885676 tp!885669))))

(declare-fun mapValue!17910 () List!32429)

(declare-fun mapRest!17909 () (Array (_ BitVec 32) List!32429))

(declare-fun mapKey!17909 () (_ BitVec 32))

(assert (=> mapNonEmpty!17910 (= (arr!6230 (_values!4211 (v!33933 (underlying!8063 (v!33934 (underlying!8064 (cache!3979 cacheUp!890))))))) (store mapRest!17909 mapKey!17909 mapValue!17910))))

(declare-fun b!2790114 () Bool)

(declare-fun tp!885675 () Bool)

(assert (=> b!2790114 (= e!1761469 (and tp!885675 mapRes!17909))))

(declare-fun condMapEmpty!17910 () Bool)

(declare-fun mapDefault!17909 () List!32430)

(assert (=> b!2790114 (= condMapEmpty!17910 (= (arr!6232 (_values!4212 (v!33935 (underlying!8065 (v!33936 (underlying!8066 (cache!3980 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32430)) mapDefault!17909)))))

(declare-fun e!1761458 () Bool)

(assert (=> b!2790115 (= e!1761458 (and e!1761455 tp!885677))))

(declare-fun b!2790116 () Bool)

(declare-fun tp!885672 () Bool)

(assert (=> b!2790116 (= e!1761467 (and tp!885672 mapRes!17910))))

(declare-fun condMapEmpty!17909 () Bool)

(declare-fun mapDefault!17910 () List!32429)

(assert (=> b!2790116 (= condMapEmpty!17909 (= (arr!6230 (_values!4211 (v!33933 (underlying!8063 (v!33934 (underlying!8064 (cache!3979 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32429)) mapDefault!17910)))))

(declare-fun b!2790117 () Bool)

(assert (=> b!2790117 (= e!1761456 e!1761457)))

(declare-fun res!1164042 () Bool)

(assert (=> start!269740 (=> (not res!1164042) (not e!1761464))))

(declare-fun lt!997435 () List!32427)

(declare-fun lt!997436 () List!32427)

(assert (=> start!269740 (= res!1164042 (= lt!997435 lt!997436))))

(declare-fun list!12161 (BalanceConc!19680) List!32427)

(assert (=> start!269740 (= lt!997436 (list!12161 totalInput!758))))

(declare-fun testedSuffix!143 () List!32427)

(declare-fun ++!7981 (List!32427 List!32427) List!32427)

(assert (=> start!269740 (= lt!997435 (++!7981 testedP!183 testedSuffix!143))))

(assert (=> start!269740 e!1761464))

(declare-fun inv!43923 (BalanceConc!19680) Bool)

(assert (=> start!269740 (and (inv!43923 totalInput!758) e!1761454)))

(assert (=> start!269740 true))

(assert (=> start!269740 e!1761462))

(assert (=> start!269740 e!1761451))

(declare-fun e!1761466 () Bool)

(declare-fun inv!43924 (CacheDown!2662) Bool)

(assert (=> start!269740 (and (inv!43924 cacheDown!1009) e!1761466)))

(declare-fun inv!43925 (CacheUp!2542) Bool)

(assert (=> start!269740 (and (inv!43925 cacheUp!890) e!1761470)))

(declare-fun mapIsEmpty!17910 () Bool)

(assert (=> mapIsEmpty!17910 mapRes!17910))

(declare-fun b!2790118 () Bool)

(assert (=> b!2790118 (= e!1761466 e!1761458)))

(declare-fun b!2790119 () Bool)

(declare-fun isPrefix!2600 (List!32427 List!32427) Bool)

(assert (=> b!2790119 (= e!1761464 (not (isPrefix!2600 testedP!183 lt!997436)))))

(assert (=> b!2790119 (isPrefix!2600 testedP!183 lt!997435)))

(declare-datatypes ((Unit!46540 0))(
  ( (Unit!46541) )
))
(declare-fun lt!997434 () Unit!46540)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1709 (List!32427 List!32427) Unit!46540)

(assert (=> b!2790119 (= lt!997434 (lemmaConcatTwoListThenFirstIsPrefix!1709 testedP!183 testedSuffix!143))))

(assert (= (and start!269740 res!1164042) b!2790113))

(assert (= (and b!2790113 res!1164045) b!2790101))

(assert (= (and b!2790101 res!1164043) b!2790099))

(assert (= (and b!2790099 res!1164041) b!2790110))

(assert (= (and b!2790110 res!1164044) b!2790119))

(assert (= start!269740 b!2790098))

(assert (= (and start!269740 ((_ is Cons!32327) testedP!183)) b!2790105))

(assert (= (and start!269740 ((_ is Cons!32327) testedSuffix!143)) b!2790103))

(assert (= (and b!2790114 condMapEmpty!17910) mapIsEmpty!17909))

(assert (= (and b!2790114 (not condMapEmpty!17910)) mapNonEmpty!17909))

(assert (= b!2790107 b!2790114))

(assert (= b!2790106 b!2790107))

(assert (= b!2790100 b!2790106))

(assert (= (and b!2790104 ((_ is LongMap!3931) (v!33936 (underlying!8066 (cache!3980 cacheDown!1009))))) b!2790100))

(assert (= b!2790115 b!2790104))

(assert (= (and b!2790118 ((_ is HashMap!3837) (cache!3980 cacheDown!1009))) b!2790115))

(assert (= start!269740 b!2790118))

(assert (= (and b!2790116 condMapEmpty!17909) mapIsEmpty!17910))

(assert (= (and b!2790116 (not condMapEmpty!17909)) mapNonEmpty!17910))

(assert (= b!2790102 b!2790116))

(assert (= b!2790117 b!2790102))

(assert (= b!2790112 b!2790117))

(assert (= (and b!2790111 ((_ is LongMap!3930) (v!33934 (underlying!8064 (cache!3979 cacheUp!890))))) b!2790112))

(assert (= b!2790108 b!2790111))

(assert (= (and b!2790109 ((_ is HashMap!3836) (cache!3979 cacheUp!890))) b!2790108))

(assert (= start!269740 b!2790109))

(declare-fun m!3220481 () Bool)

(assert (=> mapNonEmpty!17910 m!3220481))

(declare-fun m!3220483 () Bool)

(assert (=> b!2790102 m!3220483))

(declare-fun m!3220485 () Bool)

(assert (=> b!2790102 m!3220485))

(declare-fun m!3220487 () Bool)

(assert (=> b!2790107 m!3220487))

(declare-fun m!3220489 () Bool)

(assert (=> b!2790107 m!3220489))

(declare-fun m!3220491 () Bool)

(assert (=> mapNonEmpty!17909 m!3220491))

(declare-fun m!3220493 () Bool)

(assert (=> start!269740 m!3220493))

(declare-fun m!3220495 () Bool)

(assert (=> start!269740 m!3220495))

(declare-fun m!3220497 () Bool)

(assert (=> start!269740 m!3220497))

(declare-fun m!3220499 () Bool)

(assert (=> start!269740 m!3220499))

(declare-fun m!3220501 () Bool)

(assert (=> start!269740 m!3220501))

(declare-fun m!3220503 () Bool)

(assert (=> b!2790113 m!3220503))

(declare-fun m!3220505 () Bool)

(assert (=> b!2790099 m!3220505))

(declare-fun m!3220507 () Bool)

(assert (=> b!2790119 m!3220507))

(declare-fun m!3220509 () Bool)

(assert (=> b!2790119 m!3220509))

(declare-fun m!3220511 () Bool)

(assert (=> b!2790119 m!3220511))

(declare-fun m!3220513 () Bool)

(assert (=> b!2790101 m!3220513))

(declare-fun m!3220515 () Bool)

(assert (=> b!2790098 m!3220515))

(declare-fun m!3220517 () Bool)

(assert (=> b!2790110 m!3220517))

(check-sat b_and!203703 b_and!203709 (not b!2790114) (not b!2790101) (not b_next!79675) (not b!2790102) tp_is_empty!14147 b_and!203705 (not b_next!79671) (not b!2790107) (not b!2790105) (not b!2790103) b_and!203707 (not start!269740) (not b!2790098) (not b_next!79673) (not b_next!79669) (not mapNonEmpty!17909) (not b!2790119) (not mapNonEmpty!17910) (not b!2790099) (not b!2790116) (not b!2790113) (not b!2790110))
(check-sat b_and!203703 b_and!203709 (not b_next!79675) b_and!203707 b_and!203705 (not b_next!79671) (not b_next!79673) (not b_next!79669))
