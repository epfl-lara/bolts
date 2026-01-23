; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268398 () Bool)

(assert start!268398)

(declare-fun b!2774455 () Bool)

(declare-fun b_free!78357 () Bool)

(declare-fun b_next!79061 () Bool)

(assert (=> b!2774455 (= b_free!78357 (not b_next!79061))))

(declare-fun tp!878058 () Bool)

(declare-fun b_and!203095 () Bool)

(assert (=> b!2774455 (= tp!878058 b_and!203095)))

(declare-fun b!2774467 () Bool)

(declare-fun b_free!78359 () Bool)

(declare-fun b_next!79063 () Bool)

(assert (=> b!2774467 (= b_free!78359 (not b_next!79063))))

(declare-fun tp!878051 () Bool)

(declare-fun b_and!203097 () Bool)

(assert (=> b!2774467 (= tp!878051 b_and!203097)))

(declare-fun b!2774468 () Bool)

(declare-fun b_free!78361 () Bool)

(declare-fun b_next!79065 () Bool)

(assert (=> b!2774468 (= b_free!78361 (not b_next!79065))))

(declare-fun tp!878047 () Bool)

(declare-fun b_and!203099 () Bool)

(assert (=> b!2774468 (= tp!878047 b_and!203099)))

(declare-fun b!2774463 () Bool)

(declare-fun b_free!78363 () Bool)

(declare-fun b_next!79067 () Bool)

(assert (=> b!2774463 (= b_free!78363 (not b_next!79067))))

(declare-fun tp!878053 () Bool)

(declare-fun b_and!203101 () Bool)

(assert (=> b!2774463 (= tp!878053 b_and!203101)))

(declare-fun b!2774445 () Bool)

(declare-datatypes ((C!16356 0))(
  ( (C!16357 (val!10112 Int)) )
))
(declare-datatypes ((List!32157 0))(
  ( (Nil!32057) (Cons!32057 (h!37477 C!16356) (t!228285 List!32157)) )
))
(declare-datatypes ((IArray!19961 0))(
  ( (IArray!19962 (innerList!10038 List!32157)) )
))
(declare-datatypes ((Conc!9978 0))(
  ( (Node!9978 (left!24413 Conc!9978) (right!24743 Conc!9978) (csize!20186 Int) (cheight!10189 Int)) (Leaf!15196 (xs!13088 IArray!19961) (csize!20187 Int)) (Empty!9978) )
))
(declare-datatypes ((BalanceConc!19570 0))(
  ( (BalanceConc!19571 (c!450408 Conc!9978)) )
))
(declare-fun input!5495 () BalanceConc!19570)

(declare-fun e!1749876 () Bool)

(declare-fun lt!989083 () List!32157)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!8099 0))(
  ( (ElementMatch!8099 (c!450409 C!16356)) (Concat!13187 (regOne!16710 Regex!8099) (regTwo!16710 Regex!8099)) (EmptyExpr!8099) (Star!8099 (reg!8428 Regex!8099)) (EmptyLang!8099) (Union!8099 (regOne!16711 Regex!8099) (regTwo!16711 Regex!8099)) )
))
(declare-datatypes ((List!32158 0))(
  ( (Nil!32058) (Cons!32058 (h!37478 Regex!8099) (t!228286 List!32158)) )
))
(declare-datatypes ((Context!4634 0))(
  ( (Context!4635 (exprs!2817 List!32158)) )
))
(declare-fun z!3597 () (InoxSet Context!4634))

(declare-fun lt!989082 () Int)

(declare-datatypes ((tuple2!32260 0))(
  ( (tuple2!32261 (_1!19041 Context!4634) (_2!19041 C!16356)) )
))
(declare-datatypes ((tuple2!32262 0))(
  ( (tuple2!32263 (_1!19042 tuple2!32260) (_2!19042 (InoxSet Context!4634))) )
))
(declare-datatypes ((List!32159 0))(
  ( (Nil!32059) (Cons!32059 (h!37479 tuple2!32262) (t!228287 List!32159)) )
))
(declare-datatypes ((Hashable!3721 0))(
  ( (HashableExt!3720 (__x!21065 Int)) )
))
(declare-datatypes ((array!13544 0))(
  ( (array!13545 (arr!6037 (Array (_ BitVec 32) List!32159)) (size!24847 (_ BitVec 32))) )
))
(declare-datatypes ((array!13546 0))(
  ( (array!13547 (arr!6038 (Array (_ BitVec 32) (_ BitVec 64))) (size!24848 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7610 0))(
  ( (LongMapFixedSize!7611 (defaultEntry!4190 Int) (mask!9591 (_ BitVec 32)) (extraKeys!4054 (_ BitVec 32)) (zeroValue!4064 List!32159) (minValue!4064 List!32159) (_size!7653 (_ BitVec 32)) (_keys!4105 array!13546) (_values!4086 array!13544) (_vacant!3866 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15029 0))(
  ( (Cell!15030 (v!33666 LongMapFixedSize!7610)) )
))
(declare-datatypes ((MutLongMap!3805 0))(
  ( (LongMap!3805 (underlying!7813 Cell!15029)) (MutLongMapExt!3804 (__x!21066 Int)) )
))
(declare-datatypes ((Cell!15031 0))(
  ( (Cell!15032 (v!33667 MutLongMap!3805)) )
))
(declare-datatypes ((MutableMap!3711 0))(
  ( (MutableMapExt!3710 (__x!21067 Int)) (HashMap!3711 (underlying!7814 Cell!15031) (hashF!5753 Hashable!3721) (_size!7654 (_ BitVec 32)) (defaultValue!3882 Int)) )
))
(declare-datatypes ((CacheUp!2416 0))(
  ( (CacheUp!2417 (cache!3854 MutableMap!3711)) )
))
(declare-datatypes ((tuple3!4882 0))(
  ( (tuple3!4883 (_1!19043 Regex!8099) (_2!19043 Context!4634) (_3!2911 C!16356)) )
))
(declare-datatypes ((tuple2!32264 0))(
  ( (tuple2!32265 (_1!19044 tuple3!4882) (_2!19044 (InoxSet Context!4634))) )
))
(declare-datatypes ((List!32160 0))(
  ( (Nil!32060) (Cons!32060 (h!37480 tuple2!32264) (t!228288 List!32160)) )
))
(declare-datatypes ((array!13548 0))(
  ( (array!13549 (arr!6039 (Array (_ BitVec 32) List!32160)) (size!24849 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7612 0))(
  ( (LongMapFixedSize!7613 (defaultEntry!4191 Int) (mask!9592 (_ BitVec 32)) (extraKeys!4055 (_ BitVec 32)) (zeroValue!4065 List!32160) (minValue!4065 List!32160) (_size!7655 (_ BitVec 32)) (_keys!4106 array!13546) (_values!4087 array!13548) (_vacant!3867 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15033 0))(
  ( (Cell!15034 (v!33668 LongMapFixedSize!7612)) )
))
(declare-datatypes ((MutLongMap!3806 0))(
  ( (LongMap!3806 (underlying!7815 Cell!15033)) (MutLongMapExt!3805 (__x!21068 Int)) )
))
(declare-datatypes ((Cell!15035 0))(
  ( (Cell!15036 (v!33669 MutLongMap!3806)) )
))
(declare-datatypes ((Hashable!3722 0))(
  ( (HashableExt!3721 (__x!21069 Int)) )
))
(declare-datatypes ((MutableMap!3712 0))(
  ( (MutableMapExt!3711 (__x!21070 Int)) (HashMap!3712 (underlying!7816 Cell!15035) (hashF!5754 Hashable!3722) (_size!7656 (_ BitVec 32)) (defaultValue!3883 Int)) )
))
(declare-datatypes ((CacheDown!2538 0))(
  ( (CacheDown!2539 (cache!3855 MutableMap!3712)) )
))
(declare-datatypes ((tuple3!4884 0))(
  ( (tuple3!4885 (_1!19045 Int) (_2!19045 CacheUp!2416) (_3!2912 CacheDown!2538)) )
))
(declare-fun lt!989087 () tuple3!4884)

(declare-fun findLongestMatchInnerZipperFast!49 ((InoxSet Context!4634) List!32157 Int List!32157 BalanceConc!19570 Int) Int)

(assert (=> b!2774445 (= e!1749876 (= (_1!19045 lt!989087) (findLongestMatchInnerZipperFast!49 z!3597 Nil!32057 0 lt!989083 input!5495 lt!989082)))))

(declare-fun mapIsEmpty!17353 () Bool)

(declare-fun mapRes!17353 () Bool)

(assert (=> mapIsEmpty!17353 mapRes!17353))

(declare-fun b!2774446 () Bool)

(declare-fun res!1159490 () Bool)

(declare-fun e!1749857 () Bool)

(assert (=> b!2774446 (=> (not res!1159490) (not e!1749857))))

(declare-fun lt!989085 () tuple3!4884)

(declare-fun valid!2969 (CacheDown!2538) Bool)

(assert (=> b!2774446 (= res!1159490 (valid!2969 (_3!2912 lt!989085)))))

(declare-fun b!2774447 () Bool)

(declare-fun e!1749860 () Bool)

(declare-fun e!1749877 () Bool)

(declare-fun lt!989086 () MutLongMap!3805)

(get-info :version)

(assert (=> b!2774447 (= e!1749860 (and e!1749877 ((_ is LongMap!3805) lt!989086)))))

(declare-fun cacheUp!820 () CacheUp!2416)

(assert (=> b!2774447 (= lt!989086 (v!33667 (underlying!7814 (cache!3854 cacheUp!820))))))

(declare-fun b!2774448 () Bool)

(declare-fun e!1749867 () Bool)

(declare-fun e!1749856 () Bool)

(assert (=> b!2774448 (= e!1749867 (not e!1749856))))

(declare-fun res!1159487 () Bool)

(assert (=> b!2774448 (=> res!1159487 e!1749856)))

(declare-fun ++!7929 (List!32157 List!32157) List!32157)

(assert (=> b!2774448 (= res!1159487 (not (= (++!7929 Nil!32057 lt!989083) lt!989083)))))

(assert (=> b!2774448 e!1749857))

(declare-fun res!1159485 () Bool)

(assert (=> b!2774448 (=> (not res!1159485) (not e!1749857))))

(declare-fun valid!2970 (CacheUp!2416) Bool)

(assert (=> b!2774448 (= res!1159485 (valid!2970 (_2!19045 lt!989085)))))

(declare-fun findLongestMatchInnerZipperFastMem!42 (CacheUp!2416 CacheDown!2538 (InoxSet Context!4634) List!32157 Int List!32157 BalanceConc!19570 Int) tuple3!4884)

(assert (=> b!2774448 (= lt!989085 (findLongestMatchInnerZipperFastMem!42 (_2!19045 lt!989087) (_3!2912 lt!989087) z!3597 Nil!32057 0 lt!989083 input!5495 lt!989082))))

(assert (=> b!2774448 e!1749876))

(declare-fun res!1159484 () Bool)

(assert (=> b!2774448 (=> (not res!1159484) (not e!1749876))))

(declare-fun lt!989084 () Bool)

(assert (=> b!2774448 (= res!1159484 lt!989084)))

(assert (=> b!2774448 (= lt!989084 (valid!2970 (_2!19045 lt!989087)))))

(declare-fun cacheDown!939 () CacheDown!2538)

(assert (=> b!2774448 (= lt!989087 (findLongestMatchInnerZipperFastMem!42 cacheUp!820 cacheDown!939 z!3597 Nil!32057 0 lt!989083 input!5495 lt!989082))))

(declare-fun size!24850 (BalanceConc!19570) Int)

(assert (=> b!2774448 (= lt!989082 (size!24850 input!5495))))

(declare-fun list!12093 (BalanceConc!19570) List!32157)

(assert (=> b!2774448 (= lt!989083 (list!12093 input!5495))))

(declare-fun b!2774449 () Bool)

(declare-fun e!1749873 () Bool)

(declare-fun e!1749869 () Bool)

(assert (=> b!2774449 (= e!1749873 e!1749869)))

(declare-fun res!1159489 () Bool)

(assert (=> start!268398 (=> (not res!1159489) (not e!1749867))))

(assert (=> start!268398 (= res!1159489 (valid!2970 cacheUp!820))))

(assert (=> start!268398 e!1749867))

(declare-fun e!1749858 () Bool)

(declare-fun inv!43539 (CacheUp!2416) Bool)

(assert (=> start!268398 (and (inv!43539 cacheUp!820) e!1749858)))

(declare-fun e!1749870 () Bool)

(declare-fun inv!43540 (CacheDown!2538) Bool)

(assert (=> start!268398 (and (inv!43540 cacheDown!939) e!1749870)))

(declare-fun condSetEmpty!23016 () Bool)

(assert (=> start!268398 (= condSetEmpty!23016 (= z!3597 ((as const (Array Context!4634 Bool)) false)))))

(declare-fun setRes!23016 () Bool)

(assert (=> start!268398 setRes!23016))

(declare-fun e!1749872 () Bool)

(declare-fun inv!43541 (BalanceConc!19570) Bool)

(assert (=> start!268398 (and (inv!43541 input!5495) e!1749872)))

(declare-fun b!2774450 () Bool)

(declare-fun e!1749871 () Bool)

(assert (=> b!2774450 (= e!1749877 e!1749871)))

(declare-fun b!2774451 () Bool)

(declare-fun e!1749863 () Bool)

(declare-fun tp!878046 () Bool)

(declare-fun mapRes!17354 () Bool)

(assert (=> b!2774451 (= e!1749863 (and tp!878046 mapRes!17354))))

(declare-fun condMapEmpty!17354 () Bool)

(declare-fun mapDefault!17353 () List!32159)

(assert (=> b!2774451 (= condMapEmpty!17354 (= (arr!6037 (_values!4086 (v!33666 (underlying!7813 (v!33667 (underlying!7814 (cache!3854 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32159)) mapDefault!17353)))))

(declare-fun b!2774452 () Bool)

(declare-fun res!1159491 () Bool)

(assert (=> b!2774452 (=> (not res!1159491) (not e!1749876))))

(assert (=> b!2774452 (= res!1159491 (valid!2969 (_3!2912 lt!989087)))))

(declare-fun b!2774453 () Bool)

(declare-fun e!1749875 () Bool)

(assert (=> b!2774453 (= e!1749871 e!1749875)))

(declare-fun tp!878045 () Bool)

(declare-fun setNonEmpty!23016 () Bool)

(declare-fun e!1749862 () Bool)

(declare-fun setElem!23016 () Context!4634)

(declare-fun inv!43542 (Context!4634) Bool)

(assert (=> setNonEmpty!23016 (= setRes!23016 (and tp!878045 (inv!43542 setElem!23016) e!1749862))))

(declare-fun setRest!23016 () (InoxSet Context!4634))

(assert (=> setNonEmpty!23016 (= z!3597 ((_ map or) (store ((as const (Array Context!4634 Bool)) false) setElem!23016 true) setRest!23016))))

(declare-fun mapIsEmpty!17354 () Bool)

(assert (=> mapIsEmpty!17354 mapRes!17354))

(declare-fun b!2774454 () Bool)

(declare-fun e!1749874 () Bool)

(declare-fun lt!989081 () MutLongMap!3806)

(assert (=> b!2774454 (= e!1749874 (and e!1749873 ((_ is LongMap!3806) lt!989081)))))

(assert (=> b!2774454 (= lt!989081 (v!33669 (underlying!7816 (cache!3855 cacheDown!939))))))

(declare-fun tp!878057 () Bool)

(declare-fun tp!878044 () Bool)

(declare-fun e!1749859 () Bool)

(declare-fun e!1749868 () Bool)

(declare-fun array_inv!4317 (array!13546) Bool)

(declare-fun array_inv!4318 (array!13548) Bool)

(assert (=> b!2774455 (= e!1749868 (and tp!878058 tp!878044 tp!878057 (array_inv!4317 (_keys!4106 (v!33668 (underlying!7815 (v!33669 (underlying!7816 (cache!3855 cacheDown!939))))))) (array_inv!4318 (_values!4087 (v!33668 (underlying!7815 (v!33669 (underlying!7816 (cache!3855 cacheDown!939))))))) e!1749859))))

(declare-fun mapNonEmpty!17353 () Bool)

(declare-fun tp!878055 () Bool)

(declare-fun tp!878056 () Bool)

(assert (=> mapNonEmpty!17353 (= mapRes!17353 (and tp!878055 tp!878056))))

(declare-fun mapKey!17354 () (_ BitVec 32))

(declare-fun mapRest!17354 () (Array (_ BitVec 32) List!32160))

(declare-fun mapValue!17353 () List!32160)

(assert (=> mapNonEmpty!17353 (= (arr!6039 (_values!4087 (v!33668 (underlying!7815 (v!33669 (underlying!7816 (cache!3855 cacheDown!939))))))) (store mapRest!17354 mapKey!17354 mapValue!17353))))

(declare-fun b!2774456 () Bool)

(assert (=> b!2774456 (= e!1749869 e!1749868)))

(declare-fun mapNonEmpty!17354 () Bool)

(declare-fun tp!878049 () Bool)

(declare-fun tp!878043 () Bool)

(assert (=> mapNonEmpty!17354 (= mapRes!17354 (and tp!878049 tp!878043))))

(declare-fun mapRest!17353 () (Array (_ BitVec 32) List!32159))

(declare-fun mapKey!17353 () (_ BitVec 32))

(declare-fun mapValue!17354 () List!32159)

(assert (=> mapNonEmpty!17354 (= (arr!6037 (_values!4086 (v!33666 (underlying!7813 (v!33667 (underlying!7814 (cache!3854 cacheUp!820))))))) (store mapRest!17353 mapKey!17353 mapValue!17354))))

(declare-fun b!2774457 () Bool)

(declare-fun e!1749864 () Bool)

(assert (=> b!2774457 (= e!1749858 e!1749864)))

(declare-fun b!2774458 () Bool)

(declare-fun res!1159488 () Bool)

(assert (=> b!2774458 (=> res!1159488 e!1749856)))

(declare-fun size!24851 (List!32157) Int)

(assert (=> b!2774458 (= res!1159488 (not (= 0 (size!24851 Nil!32057))))))

(declare-fun b!2774459 () Bool)

(declare-fun tp!878052 () Bool)

(assert (=> b!2774459 (= e!1749859 (and tp!878052 mapRes!17353))))

(declare-fun condMapEmpty!17353 () Bool)

(declare-fun mapDefault!17354 () List!32160)

(assert (=> b!2774459 (= condMapEmpty!17353 (= (arr!6039 (_values!4087 (v!33668 (underlying!7815 (v!33669 (underlying!7816 (cache!3855 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32160)) mapDefault!17354)))))

(declare-fun b!2774460 () Bool)

(declare-fun e!1749866 () Bool)

(assert (=> b!2774460 (= e!1749870 e!1749866)))

(declare-fun b!2774461 () Bool)

(declare-fun tp!878048 () Bool)

(assert (=> b!2774461 (= e!1749862 tp!878048)))

(declare-fun b!2774462 () Bool)

(assert (=> b!2774462 (= e!1749857 (= (_1!19045 lt!989085) (findLongestMatchInnerZipperFast!49 z!3597 Nil!32057 0 lt!989083 input!5495 lt!989082)))))

(assert (=> b!2774463 (= e!1749866 (and e!1749874 tp!878053))))

(declare-fun b!2774464 () Bool)

(assert (=> b!2774464 (= e!1749856 lt!989084)))

(declare-fun b!2774465 () Bool)

(declare-fun tp!878042 () Bool)

(declare-fun inv!43543 (Conc!9978) Bool)

(assert (=> b!2774465 (= e!1749872 (and (inv!43543 (c!450408 input!5495)) tp!878042))))

(declare-fun b!2774466 () Bool)

(declare-fun res!1159486 () Bool)

(assert (=> b!2774466 (=> (not res!1159486) (not e!1749867))))

(assert (=> b!2774466 (= res!1159486 (valid!2969 cacheDown!939))))

(assert (=> b!2774467 (= e!1749864 (and e!1749860 tp!878051))))

(declare-fun setIsEmpty!23016 () Bool)

(assert (=> setIsEmpty!23016 setRes!23016))

(declare-fun tp!878050 () Bool)

(declare-fun tp!878054 () Bool)

(declare-fun array_inv!4319 (array!13544) Bool)

(assert (=> b!2774468 (= e!1749875 (and tp!878047 tp!878054 tp!878050 (array_inv!4317 (_keys!4105 (v!33666 (underlying!7813 (v!33667 (underlying!7814 (cache!3854 cacheUp!820))))))) (array_inv!4319 (_values!4086 (v!33666 (underlying!7813 (v!33667 (underlying!7814 (cache!3854 cacheUp!820))))))) e!1749863))))

(assert (= (and start!268398 res!1159489) b!2774466))

(assert (= (and b!2774466 res!1159486) b!2774448))

(assert (= (and b!2774448 res!1159484) b!2774452))

(assert (= (and b!2774452 res!1159491) b!2774445))

(assert (= (and b!2774448 res!1159485) b!2774446))

(assert (= (and b!2774446 res!1159490) b!2774462))

(assert (= (and b!2774448 (not res!1159487)) b!2774458))

(assert (= (and b!2774458 (not res!1159488)) b!2774464))

(assert (= (and b!2774451 condMapEmpty!17354) mapIsEmpty!17354))

(assert (= (and b!2774451 (not condMapEmpty!17354)) mapNonEmpty!17354))

(assert (= b!2774468 b!2774451))

(assert (= b!2774453 b!2774468))

(assert (= b!2774450 b!2774453))

(assert (= (and b!2774447 ((_ is LongMap!3805) (v!33667 (underlying!7814 (cache!3854 cacheUp!820))))) b!2774450))

(assert (= b!2774467 b!2774447))

(assert (= (and b!2774457 ((_ is HashMap!3711) (cache!3854 cacheUp!820))) b!2774467))

(assert (= start!268398 b!2774457))

(assert (= (and b!2774459 condMapEmpty!17353) mapIsEmpty!17353))

(assert (= (and b!2774459 (not condMapEmpty!17353)) mapNonEmpty!17353))

(assert (= b!2774455 b!2774459))

(assert (= b!2774456 b!2774455))

(assert (= b!2774449 b!2774456))

(assert (= (and b!2774454 ((_ is LongMap!3806) (v!33669 (underlying!7816 (cache!3855 cacheDown!939))))) b!2774449))

(assert (= b!2774463 b!2774454))

(assert (= (and b!2774460 ((_ is HashMap!3712) (cache!3855 cacheDown!939))) b!2774463))

(assert (= start!268398 b!2774460))

(assert (= (and start!268398 condSetEmpty!23016) setIsEmpty!23016))

(assert (= (and start!268398 (not condSetEmpty!23016)) setNonEmpty!23016))

(assert (= setNonEmpty!23016 b!2774461))

(assert (= start!268398 b!2774465))

(declare-fun m!3201009 () Bool)

(assert (=> setNonEmpty!23016 m!3201009))

(declare-fun m!3201011 () Bool)

(assert (=> b!2774468 m!3201011))

(declare-fun m!3201013 () Bool)

(assert (=> b!2774468 m!3201013))

(declare-fun m!3201015 () Bool)

(assert (=> b!2774462 m!3201015))

(declare-fun m!3201017 () Bool)

(assert (=> b!2774465 m!3201017))

(declare-fun m!3201019 () Bool)

(assert (=> mapNonEmpty!17354 m!3201019))

(declare-fun m!3201021 () Bool)

(assert (=> b!2774466 m!3201021))

(assert (=> b!2774445 m!3201015))

(declare-fun m!3201023 () Bool)

(assert (=> b!2774448 m!3201023))

(declare-fun m!3201025 () Bool)

(assert (=> b!2774448 m!3201025))

(declare-fun m!3201027 () Bool)

(assert (=> b!2774448 m!3201027))

(declare-fun m!3201029 () Bool)

(assert (=> b!2774448 m!3201029))

(declare-fun m!3201031 () Bool)

(assert (=> b!2774448 m!3201031))

(declare-fun m!3201033 () Bool)

(assert (=> b!2774448 m!3201033))

(declare-fun m!3201035 () Bool)

(assert (=> b!2774448 m!3201035))

(declare-fun m!3201037 () Bool)

(assert (=> b!2774446 m!3201037))

(declare-fun m!3201039 () Bool)

(assert (=> mapNonEmpty!17353 m!3201039))

(declare-fun m!3201041 () Bool)

(assert (=> start!268398 m!3201041))

(declare-fun m!3201043 () Bool)

(assert (=> start!268398 m!3201043))

(declare-fun m!3201045 () Bool)

(assert (=> start!268398 m!3201045))

(declare-fun m!3201047 () Bool)

(assert (=> start!268398 m!3201047))

(declare-fun m!3201049 () Bool)

(assert (=> b!2774452 m!3201049))

(declare-fun m!3201051 () Bool)

(assert (=> b!2774455 m!3201051))

(declare-fun m!3201053 () Bool)

(assert (=> b!2774455 m!3201053))

(declare-fun m!3201055 () Bool)

(assert (=> b!2774458 m!3201055))

(check-sat (not b!2774448) (not b_next!79063) (not b!2774462) (not b!2774455) (not start!268398) b_and!203099 (not b!2774446) (not b_next!79061) (not mapNonEmpty!17354) (not b!2774461) b_and!203101 (not b_next!79065) (not b!2774466) (not b!2774468) (not b!2774445) (not b_next!79067) (not b!2774452) b_and!203095 (not b!2774465) (not b!2774459) (not setNonEmpty!23016) b_and!203097 (not mapNonEmpty!17353) (not b!2774451) (not b!2774458))
(check-sat b_and!203095 (not b_next!79063) b_and!203099 b_and!203097 (not b_next!79061) b_and!203101 (not b_next!79065) (not b_next!79067))
