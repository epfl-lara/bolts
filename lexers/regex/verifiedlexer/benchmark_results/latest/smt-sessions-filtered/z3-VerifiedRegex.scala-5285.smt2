; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271132 () Bool)

(assert start!271132)

(declare-fun b!2803439 () Bool)

(declare-fun b_free!79525 () Bool)

(declare-fun b_next!80229 () Bool)

(assert (=> b!2803439 (= b_free!79525 (not b_next!80229))))

(declare-fun tp!893830 () Bool)

(declare-fun b_and!204263 () Bool)

(assert (=> b!2803439 (= tp!893830 b_and!204263)))

(declare-fun b!2803402 () Bool)

(declare-fun b_free!79527 () Bool)

(declare-fun b_next!80231 () Bool)

(assert (=> b!2803402 (= b_free!79527 (not b_next!80231))))

(declare-fun tp!893838 () Bool)

(declare-fun b_and!204265 () Bool)

(assert (=> b!2803402 (= tp!893838 b_and!204265)))

(declare-fun b!2803425 () Bool)

(declare-fun b_free!79529 () Bool)

(declare-fun b_next!80233 () Bool)

(assert (=> b!2803425 (= b_free!79529 (not b_next!80233))))

(declare-fun tp!893834 () Bool)

(declare-fun b_and!204267 () Bool)

(assert (=> b!2803425 (= tp!893834 b_and!204267)))

(declare-fun b!2803422 () Bool)

(declare-fun b_free!79531 () Bool)

(declare-fun b_next!80235 () Bool)

(assert (=> b!2803422 (= b_free!79531 (not b_next!80235))))

(declare-fun tp!893837 () Bool)

(declare-fun b_and!204269 () Bool)

(assert (=> b!2803422 (= tp!893837 b_and!204269)))

(declare-fun b!2803401 () Bool)

(declare-fun e!1771800 () Bool)

(declare-fun e!1771807 () Bool)

(assert (=> b!2803401 (= e!1771800 e!1771807)))

(declare-fun e!1771788 () Bool)

(declare-fun e!1771779 () Bool)

(assert (=> b!2803402 (= e!1771788 (and e!1771779 tp!893838))))

(declare-fun mapNonEmpty!18445 () Bool)

(declare-fun mapRes!18445 () Bool)

(declare-fun tp!893835 () Bool)

(declare-fun tp!893825 () Bool)

(assert (=> mapNonEmpty!18445 (= mapRes!18445 (and tp!893835 tp!893825))))

(declare-fun mapKey!18446 () (_ BitVec 32))

(declare-datatypes ((C!16628 0))(
  ( (C!16629 (val!10248 Int)) )
))
(declare-datatypes ((Regex!8235 0))(
  ( (ElementMatch!8235 (c!454460 C!16628)) (Concat!13323 (regOne!16982 Regex!8235) (regTwo!16982 Regex!8235)) (EmptyExpr!8235) (Star!8235 (reg!8564 Regex!8235)) (EmptyLang!8235) (Union!8235 (regOne!16983 Regex!8235) (regTwo!16983 Regex!8235)) )
))
(declare-datatypes ((List!32707 0))(
  ( (Nil!32607) (Cons!32607 (h!38027 Regex!8235) (t!228877 List!32707)) )
))
(declare-datatypes ((Context!4906 0))(
  ( (Context!4907 (exprs!2953 List!32707)) )
))
(declare-datatypes ((tuple2!33282 0))(
  ( (tuple2!33283 (_1!19730 Context!4906) (_2!19730 C!16628)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33284 0))(
  ( (tuple2!33285 (_1!19731 tuple2!33282) (_2!19731 (InoxSet Context!4906))) )
))
(declare-datatypes ((List!32708 0))(
  ( (Nil!32608) (Cons!32608 (h!38028 tuple2!33284) (t!228878 List!32708)) )
))
(declare-fun mapRest!18446 () (Array (_ BitVec 32) List!32708))

(declare-datatypes ((Hashable!3975 0))(
  ( (HashableExt!3974 (__x!21827 Int)) )
))
(declare-datatypes ((array!14426 0))(
  ( (array!14427 (arr!6427 (Array (_ BitVec 32) List!32708)) (size!25472 (_ BitVec 32))) )
))
(declare-datatypes ((array!14428 0))(
  ( (array!14429 (arr!6428 (Array (_ BitVec 32) (_ BitVec 64))) (size!25473 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8118 0))(
  ( (LongMapFixedSize!8119 (defaultEntry!4444 Int) (mask!9913 (_ BitVec 32)) (extraKeys!4308 (_ BitVec 32)) (zeroValue!4318 List!32708) (minValue!4318 List!32708) (_size!8161 (_ BitVec 32)) (_keys!4359 array!14428) (_values!4340 array!14426) (_vacant!4120 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16045 0))(
  ( (Cell!16046 (v!34209 LongMapFixedSize!8118)) )
))
(declare-datatypes ((MutLongMap!4059 0))(
  ( (LongMap!4059 (underlying!8321 Cell!16045)) (MutLongMapExt!4058 (__x!21828 Int)) )
))
(declare-datatypes ((Cell!16047 0))(
  ( (Cell!16048 (v!34210 MutLongMap!4059)) )
))
(declare-datatypes ((MutableMap!3965 0))(
  ( (MutableMapExt!3964 (__x!21829 Int)) (HashMap!3965 (underlying!8322 Cell!16047) (hashF!6007 Hashable!3975) (_size!8162 (_ BitVec 32)) (defaultValue!4136 Int)) )
))
(declare-datatypes ((CacheUp!2668 0))(
  ( (CacheUp!2669 (cache!4108 MutableMap!3965)) )
))
(declare-fun cacheUp!890 () CacheUp!2668)

(declare-fun mapValue!18446 () List!32708)

(assert (=> mapNonEmpty!18445 (= (arr!6427 (_values!4340 (v!34209 (underlying!8321 (v!34210 (underlying!8322 (cache!4108 cacheUp!890))))))) (store mapRest!18446 mapKey!18446 mapValue!18446))))

(declare-fun setIsEmpty!24666 () Bool)

(declare-fun setRes!24666 () Bool)

(assert (=> setIsEmpty!24666 setRes!24666))

(declare-fun b!2803403 () Bool)

(declare-fun e!1771806 () Bool)

(assert (=> b!2803403 (= e!1771806 e!1771788)))

(declare-fun b!2803404 () Bool)

(declare-fun e!1771795 () Bool)

(declare-fun e!1771805 () Bool)

(assert (=> b!2803404 (= e!1771795 e!1771805)))

(declare-datatypes ((List!32709 0))(
  ( (Nil!32609) (Cons!32609 (h!38029 C!16628) (t!228879 List!32709)) )
))
(declare-datatypes ((IArray!20189 0))(
  ( (IArray!20190 (innerList!10152 List!32709)) )
))
(declare-datatypes ((Conc!10092 0))(
  ( (Node!10092 (left!24611 Conc!10092) (right!24941 Conc!10092) (csize!20414 Int) (cheight!10303 Int)) (Leaf!15378 (xs!13204 IArray!20189) (csize!20415 Int)) (Empty!10092) )
))
(declare-datatypes ((BalanceConc!19798 0))(
  ( (BalanceConc!19799 (c!454461 Conc!10092)) )
))
(declare-fun totalInput!758 () BalanceConc!19798)

(declare-fun testedPSize!143 () Int)

(declare-fun lt!1002542 () List!32709)

(declare-fun totalInputSize!205 () Int)

(declare-fun bm!182942 () Bool)

(declare-fun lt!1002537 () List!32709)

(declare-datatypes ((tuple3!5238 0))(
  ( (tuple3!5239 (_1!19732 Regex!8235) (_2!19732 Context!4906) (_3!3089 C!16628)) )
))
(declare-datatypes ((tuple2!33286 0))(
  ( (tuple2!33287 (_1!19733 tuple3!5238) (_2!19733 (InoxSet Context!4906))) )
))
(declare-datatypes ((List!32710 0))(
  ( (Nil!32610) (Cons!32610 (h!38030 tuple2!33286) (t!228880 List!32710)) )
))
(declare-datatypes ((array!14430 0))(
  ( (array!14431 (arr!6429 (Array (_ BitVec 32) List!32710)) (size!25474 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8120 0))(
  ( (LongMapFixedSize!8121 (defaultEntry!4445 Int) (mask!9914 (_ BitVec 32)) (extraKeys!4309 (_ BitVec 32)) (zeroValue!4319 List!32710) (minValue!4319 List!32710) (_size!8163 (_ BitVec 32)) (_keys!4360 array!14428) (_values!4341 array!14430) (_vacant!4121 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16049 0))(
  ( (Cell!16050 (v!34211 LongMapFixedSize!8120)) )
))
(declare-datatypes ((MutLongMap!4060 0))(
  ( (LongMap!4060 (underlying!8323 Cell!16049)) (MutLongMapExt!4059 (__x!21830 Int)) )
))
(declare-datatypes ((Cell!16051 0))(
  ( (Cell!16052 (v!34212 MutLongMap!4060)) )
))
(declare-datatypes ((Hashable!3976 0))(
  ( (HashableExt!3975 (__x!21831 Int)) )
))
(declare-datatypes ((MutableMap!3966 0))(
  ( (MutableMapExt!3965 (__x!21832 Int)) (HashMap!3966 (underlying!8324 Cell!16051) (hashF!6008 Hashable!3976) (_size!8164 (_ BitVec 32)) (defaultValue!4137 Int)) )
))
(declare-datatypes ((CacheDown!2794 0))(
  ( (CacheDown!2795 (cache!4109 MutableMap!3966)) )
))
(declare-datatypes ((tuple3!5240 0))(
  ( (tuple3!5241 (_1!19734 (InoxSet Context!4906)) (_2!19734 CacheUp!2668) (_3!3090 CacheDown!2794)) )
))
(declare-fun lt!1002533 () tuple3!5240)

(declare-fun lt!1002553 () tuple3!5240)

(declare-fun c!454455 () Bool)

(declare-fun call!182954 () Int)

(declare-fun findLongestMatchInnerZipperFast!57 ((InoxSet Context!4906) List!32709 Int List!32709 BalanceConc!19798 Int) Int)

(assert (=> bm!182942 (= call!182954 (findLongestMatchInnerZipperFast!57 (ite c!454455 (_1!19734 lt!1002553) (_1!19734 lt!1002533)) lt!1002542 (+ 1 testedPSize!143) lt!1002537 totalInput!758 totalInputSize!205))))

(declare-fun bm!182943 () Bool)

(declare-datatypes ((tuple3!5242 0))(
  ( (tuple3!5243 (_1!19735 Int) (_2!19735 CacheUp!2668) (_3!3091 CacheDown!2794)) )
))
(declare-fun lt!1002529 () tuple3!5242)

(declare-fun lt!1002544 () tuple3!5242)

(declare-fun call!182947 () Bool)

(declare-fun valid!3178 (CacheDown!2794) Bool)

(assert (=> bm!182943 (= call!182947 (valid!3178 (ite c!454455 (_3!3091 lt!1002544) (_3!3091 lt!1002529))))))

(declare-fun bm!182944 () Bool)

(declare-fun call!182955 () Bool)

(declare-fun valid!3179 (CacheUp!2668) Bool)

(assert (=> bm!182944 (= call!182955 (valid!3179 (ite c!454455 (_2!19735 lt!1002544) (_2!19735 lt!1002529))))))

(declare-fun b!2803405 () Bool)

(declare-fun e!1771787 () Bool)

(assert (=> b!2803405 (= e!1771787 (= (_1!19735 lt!1002529) call!182954))))

(declare-fun b!2803406 () Bool)

(declare-fun e!1771794 () Bool)

(declare-fun tp!893821 () Bool)

(declare-fun inv!44283 (Conc!10092) Bool)

(assert (=> b!2803406 (= e!1771794 (and (inv!44283 (c!454461 totalInput!758)) tp!893821))))

(declare-fun mapNonEmpty!18446 () Bool)

(declare-fun mapRes!18446 () Bool)

(declare-fun tp!893822 () Bool)

(declare-fun tp!893836 () Bool)

(assert (=> mapNonEmpty!18446 (= mapRes!18446 (and tp!893822 tp!893836))))

(declare-fun mapRest!18445 () (Array (_ BitVec 32) List!32710))

(declare-fun mapValue!18445 () List!32710)

(declare-fun cacheDown!1009 () CacheDown!2794)

(declare-fun mapKey!18445 () (_ BitVec 32))

(assert (=> mapNonEmpty!18446 (= (arr!6429 (_values!4341 (v!34211 (underlying!8323 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009))))))) (store mapRest!18445 mapKey!18445 mapValue!18445))))

(declare-fun b!2803407 () Bool)

(declare-datatypes ((tuple3!5244 0))(
  ( (tuple3!5245 (_1!19736 Int) (_2!19736 CacheDown!2794) (_3!3092 CacheUp!2668)) )
))
(declare-fun e!1771782 () tuple3!5244)

(assert (=> b!2803407 (= e!1771782 (tuple3!5245 (ite (= (_1!19735 lt!1002544) 0) testedPSize!143 (_1!19735 lt!1002544)) (_3!3091 lt!1002544) (_2!19735 lt!1002544)))))

(declare-fun call!182950 () tuple3!5240)

(assert (=> b!2803407 (= lt!1002553 call!182950)))

(declare-fun call!182951 () tuple3!5242)

(assert (=> b!2803407 (= lt!1002544 call!182951)))

(declare-fun res!1168072 () Bool)

(assert (=> b!2803407 (= res!1168072 call!182955)))

(declare-fun e!1771781 () Bool)

(assert (=> b!2803407 (=> (not res!1168072) (not e!1771781))))

(assert (=> b!2803407 e!1771781))

(declare-fun b!2803408 () Bool)

(declare-datatypes ((Unit!46714 0))(
  ( (Unit!46715) )
))
(declare-fun e!1771790 () Unit!46714)

(declare-fun Unit!46716 () Unit!46714)

(assert (=> b!2803408 (= e!1771790 Unit!46716)))

(declare-fun b!2803409 () Bool)

(declare-fun res!1168067 () Bool)

(declare-fun e!1771803 () Bool)

(assert (=> b!2803409 (=> (not res!1168067) (not e!1771803))))

(assert (=> b!2803409 (= res!1168067 (valid!3178 cacheDown!1009))))

(declare-fun b!2803410 () Bool)

(declare-fun e!1771797 () Bool)

(declare-fun tp!893828 () Bool)

(assert (=> b!2803410 (= e!1771797 (and tp!893828 mapRes!18446))))

(declare-fun condMapEmpty!18445 () Bool)

(declare-fun mapDefault!18445 () List!32710)

(assert (=> b!2803410 (= condMapEmpty!18445 (= (arr!6429 (_values!4341 (v!34211 (underlying!8323 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32710)) mapDefault!18445)))))

(declare-fun b!2803411 () Bool)

(declare-fun e!1771799 () Bool)

(assert (=> b!2803411 (= e!1771807 e!1771799)))

(declare-fun b!2803412 () Bool)

(declare-fun e!1771780 () Bool)

(assert (=> b!2803412 (= e!1771805 e!1771780)))

(declare-fun e!1771784 () Bool)

(declare-fun tp!893826 () Bool)

(declare-fun setElem!24666 () Context!4906)

(declare-fun setNonEmpty!24666 () Bool)

(declare-fun inv!44284 (Context!4906) Bool)

(assert (=> setNonEmpty!24666 (= setRes!24666 (and tp!893826 (inv!44284 setElem!24666) e!1771784))))

(declare-fun z!3684 () (InoxSet Context!4906))

(declare-fun setRest!24666 () (InoxSet Context!4906))

(assert (=> setNonEmpty!24666 (= z!3684 ((_ map or) (store ((as const (Array Context!4906 Bool)) false) setElem!24666 true) setRest!24666))))

(declare-fun bm!182945 () Bool)

(declare-fun call!182948 () Bool)

(declare-fun lt!1002535 () List!32709)

(declare-fun isPrefix!2649 (List!32709 List!32709) Bool)

(assert (=> bm!182945 (= call!182948 (isPrefix!2649 lt!1002535 lt!1002535))))

(declare-fun b!2803413 () Bool)

(declare-fun e!1771783 () Bool)

(declare-fun lt!1002548 () MutLongMap!4059)

(get-info :version)

(assert (=> b!2803413 (= e!1771783 (and e!1771795 ((_ is LongMap!4059) lt!1002548)))))

(assert (=> b!2803413 (= lt!1002548 (v!34210 (underlying!8322 (cache!4108 cacheUp!890))))))

(declare-fun b!2803414 () Bool)

(declare-fun e!1771796 () Bool)

(declare-fun tp!893839 () Bool)

(assert (=> b!2803414 (= e!1771796 (and tp!893839 mapRes!18445))))

(declare-fun condMapEmpty!18446 () Bool)

(declare-fun mapDefault!18446 () List!32708)

(assert (=> b!2803414 (= condMapEmpty!18446 (= (arr!6427 (_values!4340 (v!34209 (underlying!8321 (v!34210 (underlying!8322 (cache!4108 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32708)) mapDefault!18446)))))

(declare-fun b!2803415 () Bool)

(declare-fun tp!893827 () Bool)

(assert (=> b!2803415 (= e!1771784 tp!893827)))

(declare-fun b!2803416 () Bool)

(declare-fun e!1771785 () Int)

(assert (=> b!2803416 (= e!1771785 0)))

(declare-fun b!2803417 () Bool)

(assert (=> b!2803417 (= e!1771782 (tuple3!5245 (_1!19735 lt!1002529) (_3!3091 lt!1002529) (_2!19735 lt!1002529)))))

(assert (=> b!2803417 (= lt!1002533 call!182950)))

(assert (=> b!2803417 (= lt!1002529 call!182951)))

(declare-fun res!1168073 () Bool)

(assert (=> b!2803417 (= res!1168073 call!182955)))

(assert (=> b!2803417 (=> (not res!1168073) (not e!1771787))))

(assert (=> b!2803417 e!1771787))

(declare-fun b!2803418 () Bool)

(declare-fun res!1168069 () Bool)

(assert (=> b!2803418 (= res!1168069 call!182947)))

(assert (=> b!2803418 (=> (not res!1168069) (not e!1771787))))

(declare-fun b!2803419 () Bool)

(declare-fun c!454458 () Bool)

(declare-fun call!182952 () Bool)

(assert (=> b!2803419 (= c!454458 call!182952)))

(declare-fun testedP!183 () List!32709)

(assert (=> b!2803419 (= lt!1002535 testedP!183)))

(declare-fun lt!1002549 () Unit!46714)

(declare-fun call!182953 () Unit!46714)

(assert (=> b!2803419 (= lt!1002549 call!182953)))

(assert (=> b!2803419 call!182948))

(declare-fun lt!1002530 () Unit!46714)

(declare-fun call!182949 () Unit!46714)

(assert (=> b!2803419 (= lt!1002530 call!182949)))

(declare-fun e!1771778 () tuple3!5244)

(assert (=> b!2803419 (= e!1771778 (tuple3!5245 e!1771785 cacheDown!1009 cacheUp!890))))

(declare-fun res!1168076 () Bool)

(declare-fun e!1771798 () Bool)

(assert (=> start!271132 (=> (not res!1168076) (not e!1771798))))

(declare-fun lt!1002547 () List!32709)

(assert (=> start!271132 (= res!1168076 (= lt!1002547 lt!1002535))))

(declare-fun list!12231 (BalanceConc!19798) List!32709)

(assert (=> start!271132 (= lt!1002535 (list!12231 totalInput!758))))

(declare-fun testedSuffix!143 () List!32709)

(declare-fun ++!8037 (List!32709 List!32709) List!32709)

(assert (=> start!271132 (= lt!1002547 (++!8037 testedP!183 testedSuffix!143))))

(assert (=> start!271132 e!1771798))

(declare-fun inv!44285 (BalanceConc!19798) Bool)

(assert (=> start!271132 (and (inv!44285 totalInput!758) e!1771794)))

(declare-fun condSetEmpty!24666 () Bool)

(assert (=> start!271132 (= condSetEmpty!24666 (= z!3684 ((as const (Array Context!4906 Bool)) false)))))

(assert (=> start!271132 setRes!24666))

(assert (=> start!271132 true))

(declare-fun e!1771802 () Bool)

(assert (=> start!271132 e!1771802))

(declare-fun e!1771792 () Bool)

(assert (=> start!271132 e!1771792))

(declare-fun inv!44286 (CacheDown!2794) Bool)

(assert (=> start!271132 (and (inv!44286 cacheDown!1009) e!1771806)))

(declare-fun e!1771804 () Bool)

(declare-fun inv!44287 (CacheUp!2668) Bool)

(assert (=> start!271132 (and (inv!44287 cacheUp!890) e!1771804)))

(declare-fun mapIsEmpty!18445 () Bool)

(assert (=> mapIsEmpty!18445 mapRes!18446))

(declare-fun b!2803420 () Bool)

(declare-fun res!1168074 () Bool)

(assert (=> b!2803420 (=> (not res!1168074) (not e!1771803))))

(assert (=> b!2803420 (= res!1168074 (valid!3179 cacheUp!890))))

(declare-fun mapIsEmpty!18446 () Bool)

(assert (=> mapIsEmpty!18446 mapRes!18445))

(declare-fun b!2803421 () Bool)

(declare-fun res!1168070 () Bool)

(assert (=> b!2803421 (= res!1168070 call!182947)))

(assert (=> b!2803421 (=> (not res!1168070) (not e!1771781))))

(declare-fun e!1771808 () Bool)

(assert (=> b!2803422 (= e!1771808 (and e!1771783 tp!893837))))

(declare-fun b!2803423 () Bool)

(assert (=> b!2803423 (= e!1771781 (= (_1!19735 lt!1002544) call!182954))))

(declare-fun bm!182946 () Bool)

(declare-fun findLongestMatchInnerZipperFastMem!51 (CacheUp!2668 CacheDown!2794 (InoxSet Context!4906) List!32709 Int List!32709 BalanceConc!19798 Int) tuple3!5242)

(assert (=> bm!182946 (= call!182951 (findLongestMatchInnerZipperFastMem!51 (ite c!454455 (_2!19734 lt!1002553) (_2!19734 lt!1002533)) (ite c!454455 (_3!3090 lt!1002553) (_3!3090 lt!1002533)) (ite c!454455 (_1!19734 lt!1002553) (_1!19734 lt!1002533)) lt!1002542 (+ 1 testedPSize!143) lt!1002537 totalInput!758 totalInputSize!205))))

(declare-fun b!2803424 () Bool)

(declare-fun e!1771789 () tuple3!5244)

(assert (=> b!2803424 (= e!1771789 (tuple3!5245 0 cacheDown!1009 cacheUp!890))))

(declare-fun tp!893831 () Bool)

(declare-fun tp!893824 () Bool)

(declare-fun array_inv!4601 (array!14428) Bool)

(declare-fun array_inv!4602 (array!14426) Bool)

(assert (=> b!2803425 (= e!1771780 (and tp!893834 tp!893824 tp!893831 (array_inv!4601 (_keys!4359 (v!34209 (underlying!8321 (v!34210 (underlying!8322 (cache!4108 cacheUp!890))))))) (array_inv!4602 (_values!4340 (v!34209 (underlying!8321 (v!34210 (underlying!8322 (cache!4108 cacheUp!890))))))) e!1771796))))

(declare-fun b!2803426 () Bool)

(declare-fun e!1771793 () Bool)

(assert (=> b!2803426 (= e!1771793 e!1771803)))

(declare-fun res!1168066 () Bool)

(assert (=> b!2803426 (=> (not res!1168066) (not e!1771803))))

(declare-fun lt!1002540 () Int)

(assert (=> b!2803426 (= res!1168066 (= totalInputSize!205 lt!1002540))))

(declare-fun size!25475 (BalanceConc!19798) Int)

(assert (=> b!2803426 (= lt!1002540 (size!25475 totalInput!758))))

(declare-fun b!2803427 () Bool)

(declare-fun e!1771801 () Bool)

(declare-fun e!1771777 () Bool)

(assert (=> b!2803427 (= e!1771801 e!1771777)))

(declare-fun res!1168068 () Bool)

(assert (=> b!2803427 (=> (not res!1168068) (not e!1771777))))

(declare-fun lt!1002556 () tuple3!5244)

(assert (=> b!2803427 (= res!1168068 (valid!3179 (_3!3092 lt!1002556)))))

(assert (=> b!2803427 (= lt!1002556 e!1771789)))

(declare-fun c!454459 () Bool)

(declare-fun lostCauseZipper!517 ((InoxSet Context!4906)) Bool)

(assert (=> b!2803427 (= c!454459 (lostCauseZipper!517 z!3684))))

(declare-fun lt!1002558 () List!32709)

(assert (=> b!2803427 (and (= testedSuffix!143 lt!1002558) (= lt!1002558 testedSuffix!143))))

(declare-fun lt!1002551 () Unit!46714)

(declare-fun lemmaSamePrefixThenSameSuffix!1220 (List!32709 List!32709 List!32709 List!32709 List!32709) Unit!46714)

(assert (=> b!2803427 (= lt!1002551 (lemmaSamePrefixThenSameSuffix!1220 testedP!183 testedSuffix!143 testedP!183 lt!1002558 lt!1002535))))

(declare-fun getSuffix!1322 (List!32709 List!32709) List!32709)

(assert (=> b!2803427 (= lt!1002558 (getSuffix!1322 lt!1002535 testedP!183))))

(declare-fun b!2803428 () Bool)

(declare-fun tp_is_empty!14283 () Bool)

(declare-fun tp!893832 () Bool)

(assert (=> b!2803428 (= e!1771792 (and tp_is_empty!14283 tp!893832))))

(declare-fun b!2803429 () Bool)

(assert (=> b!2803429 (= e!1771785 testedPSize!143)))

(declare-fun b!2803430 () Bool)

(declare-fun lt!1002545 () MutLongMap!4060)

(assert (=> b!2803430 (= e!1771779 (and e!1771800 ((_ is LongMap!4060) lt!1002545)))))

(assert (=> b!2803430 (= lt!1002545 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009))))))

(declare-fun b!2803431 () Bool)

(declare-fun tp!893833 () Bool)

(assert (=> b!2803431 (= e!1771802 (and tp_is_empty!14283 tp!893833))))

(declare-fun bm!182947 () Bool)

(declare-fun nullableZipper!668 ((InoxSet Context!4906)) Bool)

(assert (=> bm!182947 (= call!182952 (nullableZipper!668 z!3684))))

(declare-fun b!2803432 () Bool)

(declare-fun Unit!46717 () Unit!46714)

(assert (=> b!2803432 (= e!1771790 Unit!46717)))

(declare-fun lt!1002552 () Unit!46714)

(assert (=> b!2803432 (= lt!1002552 call!182949)))

(assert (=> b!2803432 call!182948))

(declare-fun lt!1002555 () Unit!46714)

(assert (=> b!2803432 (= lt!1002555 call!182953)))

(assert (=> b!2803432 false))

(declare-fun b!2803433 () Bool)

(assert (=> b!2803433 (= c!454455 call!182952)))

(assert (=> b!2803433 (= (++!8037 lt!1002542 lt!1002537) lt!1002535)))

(declare-fun lt!1002534 () C!16628)

(assert (=> b!2803433 (= lt!1002542 (++!8037 testedP!183 (Cons!32609 lt!1002534 Nil!32609)))))

(declare-fun lt!1002541 () Unit!46714)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!904 (List!32709 C!16628 List!32709 List!32709) Unit!46714)

(assert (=> b!2803433 (= lt!1002541 (lemmaMoveElementToOtherListKeepsConcatEq!904 testedP!183 lt!1002534 lt!1002537 lt!1002535))))

(declare-fun tail!4440 (List!32709) List!32709)

(assert (=> b!2803433 (= lt!1002537 (tail!4440 testedSuffix!143))))

(declare-fun apply!7631 (BalanceConc!19798 Int) C!16628)

(assert (=> b!2803433 (= lt!1002534 (apply!7631 totalInput!758 testedPSize!143))))

(declare-fun head!6213 (List!32709) C!16628)

(assert (=> b!2803433 (isPrefix!2649 (++!8037 testedP!183 (Cons!32609 (head!6213 lt!1002558) Nil!32609)) lt!1002535)))

(declare-fun lt!1002550 () Unit!46714)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!496 (List!32709 List!32709) Unit!46714)

(assert (=> b!2803433 (= lt!1002550 (lemmaAddHeadSuffixToPrefixStillPrefix!496 testedP!183 lt!1002535))))

(declare-fun lt!1002536 () Unit!46714)

(assert (=> b!2803433 (= lt!1002536 e!1771790)))

(declare-fun c!454457 () Bool)

(declare-fun lt!1002538 () Int)

(assert (=> b!2803433 (= c!454457 (= lt!1002538 lt!1002540))))

(declare-fun size!25476 (List!32709) Int)

(assert (=> b!2803433 (<= lt!1002538 (size!25476 lt!1002535))))

(declare-fun lt!1002531 () Unit!46714)

(declare-fun lemmaIsPrefixThenSmallerEqSize!304 (List!32709 List!32709) Unit!46714)

(assert (=> b!2803433 (= lt!1002531 (lemmaIsPrefixThenSmallerEqSize!304 testedP!183 lt!1002535))))

(declare-fun drop!1760 (List!32709 Int) List!32709)

(declare-fun apply!7632 (List!32709 Int) C!16628)

(assert (=> b!2803433 (= (head!6213 (drop!1760 lt!1002535 testedPSize!143)) (apply!7632 lt!1002535 testedPSize!143))))

(declare-fun lt!1002539 () Unit!46714)

(declare-fun lemmaDropApply!964 (List!32709 Int) Unit!46714)

(assert (=> b!2803433 (= lt!1002539 (lemmaDropApply!964 lt!1002535 testedPSize!143))))

(declare-fun lt!1002554 () List!32709)

(declare-fun lt!1002546 () List!32709)

(assert (=> b!2803433 (and (= lt!1002546 testedP!183) (= lt!1002554 testedSuffix!143))))

(declare-fun lt!1002557 () Unit!46714)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!394 (List!32709 List!32709 List!32709 List!32709) Unit!46714)

(assert (=> b!2803433 (= lt!1002557 (lemmaConcatSameAndSameSizesThenSameLists!394 lt!1002546 lt!1002554 testedP!183 testedSuffix!143))))

(declare-datatypes ((tuple2!33288 0))(
  ( (tuple2!33289 (_1!19737 BalanceConc!19798) (_2!19737 BalanceConc!19798)) )
))
(declare-fun lt!1002532 () tuple2!33288)

(assert (=> b!2803433 (= lt!1002554 (list!12231 (_2!19737 lt!1002532)))))

(assert (=> b!2803433 (= lt!1002546 (list!12231 (_1!19737 lt!1002532)))))

(declare-fun splitAt!210 (BalanceConc!19798 Int) tuple2!33288)

(assert (=> b!2803433 (= lt!1002532 (splitAt!210 totalInput!758 testedPSize!143))))

(assert (=> b!2803433 (= e!1771778 e!1771782)))

(declare-fun b!2803434 () Bool)

(assert (=> b!2803434 (= e!1771777 (= (_1!19736 lt!1002556) (findLongestMatchInnerZipperFast!57 z!3684 testedP!183 testedPSize!143 testedSuffix!143 totalInput!758 totalInputSize!205)))))

(declare-fun b!2803435 () Bool)

(declare-fun res!1168071 () Bool)

(assert (=> b!2803435 (=> (not res!1168071) (not e!1771777))))

(assert (=> b!2803435 (= res!1168071 (valid!3178 (_2!19736 lt!1002556)))))

(declare-fun b!2803436 () Bool)

(assert (=> b!2803436 (= e!1771804 e!1771808)))

(declare-fun b!2803437 () Bool)

(assert (=> b!2803437 (= e!1771789 e!1771778)))

(declare-fun c!454456 () Bool)

(assert (=> b!2803437 (= c!454456 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2803438 () Bool)

(assert (=> b!2803438 (= e!1771803 (not e!1771801))))

(declare-fun res!1168075 () Bool)

(assert (=> b!2803438 (=> res!1168075 e!1771801)))

(assert (=> b!2803438 (= res!1168075 (not (isPrefix!2649 testedP!183 lt!1002535)))))

(assert (=> b!2803438 (isPrefix!2649 testedP!183 lt!1002547)))

(declare-fun lt!1002543 () Unit!46714)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1754 (List!32709 List!32709) Unit!46714)

(assert (=> b!2803438 (= lt!1002543 (lemmaConcatTwoListThenFirstIsPrefix!1754 testedP!183 testedSuffix!143))))

(declare-fun bm!182948 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!503 (List!32709 List!32709 List!32709) Unit!46714)

(assert (=> bm!182948 (= call!182953 (lemmaIsPrefixSameLengthThenSameList!503 lt!1002535 testedP!183 lt!1002535))))

(declare-fun tp!893823 () Bool)

(declare-fun tp!893829 () Bool)

(declare-fun array_inv!4603 (array!14430) Bool)

(assert (=> b!2803439 (= e!1771799 (and tp!893830 tp!893823 tp!893829 (array_inv!4601 (_keys!4360 (v!34211 (underlying!8323 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009))))))) (array_inv!4603 (_values!4341 (v!34211 (underlying!8323 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009))))))) e!1771797))))

(declare-fun b!2803440 () Bool)

(assert (=> b!2803440 (= e!1771798 e!1771793)))

(declare-fun res!1168077 () Bool)

(assert (=> b!2803440 (=> (not res!1168077) (not e!1771793))))

(assert (=> b!2803440 (= res!1168077 (= testedPSize!143 lt!1002538))))

(assert (=> b!2803440 (= lt!1002538 (size!25476 testedP!183))))

(declare-fun bm!182949 () Bool)

(declare-fun derivationStepZipperMem!122 ((InoxSet Context!4906) C!16628 CacheUp!2668 CacheDown!2794) tuple3!5240)

(assert (=> bm!182949 (= call!182950 (derivationStepZipperMem!122 z!3684 lt!1002534 cacheUp!890 cacheDown!1009))))

(declare-fun bm!182950 () Bool)

(declare-fun lemmaIsPrefixRefl!1727 (List!32709 List!32709) Unit!46714)

(assert (=> bm!182950 (= call!182949 (lemmaIsPrefixRefl!1727 lt!1002535 lt!1002535))))

(assert (= (and start!271132 res!1168076) b!2803440))

(assert (= (and b!2803440 res!1168077) b!2803426))

(assert (= (and b!2803426 res!1168066) b!2803420))

(assert (= (and b!2803420 res!1168074) b!2803409))

(assert (= (and b!2803409 res!1168067) b!2803438))

(assert (= (and b!2803438 (not res!1168075)) b!2803427))

(assert (= (and b!2803427 c!454459) b!2803424))

(assert (= (and b!2803427 (not c!454459)) b!2803437))

(assert (= (and b!2803437 c!454456) b!2803419))

(assert (= (and b!2803437 (not c!454456)) b!2803433))

(assert (= (and b!2803419 c!454458) b!2803429))

(assert (= (and b!2803419 (not c!454458)) b!2803416))

(assert (= (and b!2803433 c!454457) b!2803432))

(assert (= (and b!2803433 (not c!454457)) b!2803408))

(assert (= (and b!2803433 c!454455) b!2803407))

(assert (= (and b!2803433 (not c!454455)) b!2803417))

(assert (= (and b!2803407 res!1168072) b!2803421))

(assert (= (and b!2803421 res!1168070) b!2803423))

(assert (= (and b!2803417 res!1168073) b!2803418))

(assert (= (and b!2803418 res!1168069) b!2803405))

(assert (= (or b!2803407 b!2803417) bm!182946))

(assert (= (or b!2803407 b!2803417) bm!182949))

(assert (= (or b!2803407 b!2803417) bm!182944))

(assert (= (or b!2803421 b!2803418) bm!182943))

(assert (= (or b!2803423 b!2803405) bm!182942))

(assert (= (or b!2803419 b!2803432) bm!182945))

(assert (= (or b!2803419 b!2803433) bm!182947))

(assert (= (or b!2803419 b!2803432) bm!182950))

(assert (= (or b!2803419 b!2803432) bm!182948))

(assert (= (and b!2803427 res!1168068) b!2803435))

(assert (= (and b!2803435 res!1168071) b!2803434))

(assert (= start!271132 b!2803406))

(assert (= (and start!271132 condSetEmpty!24666) setIsEmpty!24666))

(assert (= (and start!271132 (not condSetEmpty!24666)) setNonEmpty!24666))

(assert (= setNonEmpty!24666 b!2803415))

(assert (= (and start!271132 ((_ is Cons!32609) testedP!183)) b!2803431))

(assert (= (and start!271132 ((_ is Cons!32609) testedSuffix!143)) b!2803428))

(assert (= (and b!2803410 condMapEmpty!18445) mapIsEmpty!18445))

(assert (= (and b!2803410 (not condMapEmpty!18445)) mapNonEmpty!18446))

(assert (= b!2803439 b!2803410))

(assert (= b!2803411 b!2803439))

(assert (= b!2803401 b!2803411))

(assert (= (and b!2803430 ((_ is LongMap!4060) (v!34212 (underlying!8324 (cache!4109 cacheDown!1009))))) b!2803401))

(assert (= b!2803402 b!2803430))

(assert (= (and b!2803403 ((_ is HashMap!3966) (cache!4109 cacheDown!1009))) b!2803402))

(assert (= start!271132 b!2803403))

(assert (= (and b!2803414 condMapEmpty!18446) mapIsEmpty!18446))

(assert (= (and b!2803414 (not condMapEmpty!18446)) mapNonEmpty!18445))

(assert (= b!2803425 b!2803414))

(assert (= b!2803412 b!2803425))

(assert (= b!2803404 b!2803412))

(assert (= (and b!2803413 ((_ is LongMap!4059) (v!34210 (underlying!8322 (cache!4108 cacheUp!890))))) b!2803404))

(assert (= b!2803422 b!2803413))

(assert (= (and b!2803436 ((_ is HashMap!3965) (cache!4108 cacheUp!890))) b!2803422))

(assert (= start!271132 b!2803436))

(declare-fun m!3233037 () Bool)

(assert (=> b!2803427 m!3233037))

(declare-fun m!3233039 () Bool)

(assert (=> b!2803427 m!3233039))

(declare-fun m!3233041 () Bool)

(assert (=> b!2803427 m!3233041))

(declare-fun m!3233043 () Bool)

(assert (=> b!2803427 m!3233043))

(declare-fun m!3233045 () Bool)

(assert (=> bm!182944 m!3233045))

(declare-fun m!3233047 () Bool)

(assert (=> b!2803434 m!3233047))

(declare-fun m!3233049 () Bool)

(assert (=> mapNonEmpty!18446 m!3233049))

(declare-fun m!3233051 () Bool)

(assert (=> start!271132 m!3233051))

(declare-fun m!3233053 () Bool)

(assert (=> start!271132 m!3233053))

(declare-fun m!3233055 () Bool)

(assert (=> start!271132 m!3233055))

(declare-fun m!3233057 () Bool)

(assert (=> start!271132 m!3233057))

(declare-fun m!3233059 () Bool)

(assert (=> start!271132 m!3233059))

(declare-fun m!3233061 () Bool)

(assert (=> b!2803420 m!3233061))

(declare-fun m!3233063 () Bool)

(assert (=> bm!182947 m!3233063))

(declare-fun m!3233065 () Bool)

(assert (=> b!2803409 m!3233065))

(declare-fun m!3233067 () Bool)

(assert (=> bm!182943 m!3233067))

(declare-fun m!3233069 () Bool)

(assert (=> b!2803406 m!3233069))

(declare-fun m!3233071 () Bool)

(assert (=> bm!182950 m!3233071))

(declare-fun m!3233073 () Bool)

(assert (=> b!2803435 m!3233073))

(declare-fun m!3233075 () Bool)

(assert (=> b!2803438 m!3233075))

(declare-fun m!3233077 () Bool)

(assert (=> b!2803438 m!3233077))

(declare-fun m!3233079 () Bool)

(assert (=> b!2803438 m!3233079))

(declare-fun m!3233081 () Bool)

(assert (=> bm!182949 m!3233081))

(declare-fun m!3233083 () Bool)

(assert (=> b!2803426 m!3233083))

(declare-fun m!3233085 () Bool)

(assert (=> b!2803425 m!3233085))

(declare-fun m!3233087 () Bool)

(assert (=> b!2803425 m!3233087))

(declare-fun m!3233089 () Bool)

(assert (=> setNonEmpty!24666 m!3233089))

(declare-fun m!3233091 () Bool)

(assert (=> bm!182948 m!3233091))

(declare-fun m!3233093 () Bool)

(assert (=> bm!182946 m!3233093))

(declare-fun m!3233095 () Bool)

(assert (=> b!2803439 m!3233095))

(declare-fun m!3233097 () Bool)

(assert (=> b!2803439 m!3233097))

(declare-fun m!3233099 () Bool)

(assert (=> bm!182942 m!3233099))

(declare-fun m!3233101 () Bool)

(assert (=> bm!182945 m!3233101))

(declare-fun m!3233103 () Bool)

(assert (=> b!2803433 m!3233103))

(declare-fun m!3233105 () Bool)

(assert (=> b!2803433 m!3233105))

(declare-fun m!3233107 () Bool)

(assert (=> b!2803433 m!3233107))

(declare-fun m!3233109 () Bool)

(assert (=> b!2803433 m!3233109))

(declare-fun m!3233111 () Bool)

(assert (=> b!2803433 m!3233111))

(declare-fun m!3233113 () Bool)

(assert (=> b!2803433 m!3233113))

(declare-fun m!3233115 () Bool)

(assert (=> b!2803433 m!3233115))

(declare-fun m!3233117 () Bool)

(assert (=> b!2803433 m!3233117))

(declare-fun m!3233119 () Bool)

(assert (=> b!2803433 m!3233119))

(declare-fun m!3233121 () Bool)

(assert (=> b!2803433 m!3233121))

(declare-fun m!3233123 () Bool)

(assert (=> b!2803433 m!3233123))

(declare-fun m!3233125 () Bool)

(assert (=> b!2803433 m!3233125))

(declare-fun m!3233127 () Bool)

(assert (=> b!2803433 m!3233127))

(declare-fun m!3233129 () Bool)

(assert (=> b!2803433 m!3233129))

(assert (=> b!2803433 m!3233127))

(declare-fun m!3233131 () Bool)

(assert (=> b!2803433 m!3233131))

(declare-fun m!3233133 () Bool)

(assert (=> b!2803433 m!3233133))

(declare-fun m!3233135 () Bool)

(assert (=> b!2803433 m!3233135))

(declare-fun m!3233137 () Bool)

(assert (=> b!2803433 m!3233137))

(declare-fun m!3233139 () Bool)

(assert (=> b!2803433 m!3233139))

(assert (=> b!2803433 m!3233113))

(declare-fun m!3233141 () Bool)

(assert (=> mapNonEmpty!18445 m!3233141))

(declare-fun m!3233143 () Bool)

(assert (=> b!2803440 m!3233143))

(check-sat (not b!2803425) (not b_next!80235) (not bm!182945) (not bm!182943) (not b_next!80229) (not b!2803415) (not b!2803435) (not bm!182947) (not mapNonEmpty!18445) (not bm!182949) (not b!2803410) (not bm!182950) (not b!2803428) b_and!204265 (not bm!182944) (not b!2803431) (not b!2803434) tp_is_empty!14283 (not b!2803439) (not b_next!80231) (not mapNonEmpty!18446) (not b!2803438) (not b_next!80233) (not b!2803406) (not b!2803420) (not b!2803440) b_and!204269 (not b!2803409) (not b!2803433) b_and!204267 (not setNonEmpty!24666) (not bm!182946) (not b!2803427) (not b!2803414) b_and!204263 (not bm!182948) (not start!271132) (not bm!182942) (not b!2803426))
(check-sat (not b_next!80235) b_and!204265 (not b_next!80229) (not b_next!80231) (not b_next!80233) b_and!204269 b_and!204267 b_and!204263)
(get-model)

(declare-fun d!814168 () Bool)

(declare-fun validCacheMapUp!403 (MutableMap!3965) Bool)

(assert (=> d!814168 (= (valid!3179 (_3!3092 lt!1002556)) (validCacheMapUp!403 (cache!4108 (_3!3092 lt!1002556))))))

(declare-fun bs!516057 () Bool)

(assert (= bs!516057 d!814168))

(declare-fun m!3233145 () Bool)

(assert (=> bs!516057 m!3233145))

(assert (=> b!2803427 d!814168))

(declare-fun bs!516058 () Bool)

(declare-fun b!2803445 () Bool)

(declare-fun d!814170 () Bool)

(assert (= bs!516058 (and b!2803445 d!814170)))

(declare-fun lambda!103002 () Int)

(declare-fun lambda!103001 () Int)

(assert (=> bs!516058 (not (= lambda!103002 lambda!103001))))

(declare-fun bs!516059 () Bool)

(declare-fun b!2803446 () Bool)

(assert (= bs!516059 (and b!2803446 d!814170)))

(declare-fun lambda!103003 () Int)

(assert (=> bs!516059 (not (= lambda!103003 lambda!103001))))

(declare-fun bs!516060 () Bool)

(assert (= bs!516060 (and b!2803446 b!2803445)))

(assert (=> bs!516060 (= lambda!103003 lambda!103002)))

(declare-fun bm!182955 () Bool)

(declare-datatypes ((List!32711 0))(
  ( (Nil!32611) (Cons!32611 (h!38031 Context!4906) (t!228881 List!32711)) )
))
(declare-fun call!182960 () List!32711)

(declare-fun toList!1891 ((InoxSet Context!4906)) List!32711)

(assert (=> bm!182955 (= call!182960 (toList!1891 z!3684))))

(declare-fun e!1771815 () Unit!46714)

(declare-fun Unit!46718 () Unit!46714)

(assert (=> b!2803445 (= e!1771815 Unit!46718)))

(declare-fun lt!1002582 () List!32711)

(assert (=> b!2803445 (= lt!1002582 call!182960)))

(declare-fun lt!1002577 () Unit!46714)

(declare-fun lemmaNotForallThenExists!114 (List!32711 Int) Unit!46714)

(assert (=> b!2803445 (= lt!1002577 (lemmaNotForallThenExists!114 lt!1002582 lambda!103001))))

(declare-fun call!182961 () Bool)

(assert (=> b!2803445 call!182961))

(declare-fun lt!1002578 () Unit!46714)

(assert (=> b!2803445 (= lt!1002578 lt!1002577)))

(declare-fun lt!1002575 () Bool)

(declare-datatypes ((Option!6292 0))(
  ( (None!6291) (Some!6291 (v!34213 List!32709)) )
))
(declare-fun isEmpty!18143 (Option!6292) Bool)

(declare-fun getLanguageWitness!228 ((InoxSet Context!4906)) Option!6292)

(assert (=> d!814170 (= lt!1002575 (isEmpty!18143 (getLanguageWitness!228 z!3684)))))

(declare-fun forall!6719 ((InoxSet Context!4906) Int) Bool)

(assert (=> d!814170 (= lt!1002575 (forall!6719 z!3684 lambda!103001))))

(declare-fun lt!1002579 () Unit!46714)

(assert (=> d!814170 (= lt!1002579 e!1771815)))

(declare-fun c!454472 () Bool)

(assert (=> d!814170 (= c!454472 (not (forall!6719 z!3684 lambda!103001)))))

(assert (=> d!814170 (= (lostCauseZipper!517 z!3684) lt!1002575)))

(declare-fun Unit!46719 () Unit!46714)

(assert (=> b!2803446 (= e!1771815 Unit!46719)))

(declare-fun lt!1002576 () List!32711)

(assert (=> b!2803446 (= lt!1002576 call!182960)))

(declare-fun lt!1002581 () Unit!46714)

(declare-fun lemmaForallThenNotExists!114 (List!32711 Int) Unit!46714)

(assert (=> b!2803446 (= lt!1002581 (lemmaForallThenNotExists!114 lt!1002576 lambda!103001))))

(assert (=> b!2803446 (not call!182961)))

(declare-fun lt!1002580 () Unit!46714)

(assert (=> b!2803446 (= lt!1002580 lt!1002581)))

(declare-fun bm!182956 () Bool)

(declare-fun exists!1026 (List!32711 Int) Bool)

(assert (=> bm!182956 (= call!182961 (exists!1026 (ite c!454472 lt!1002582 lt!1002576) (ite c!454472 lambda!103002 lambda!103003)))))

(assert (= (and d!814170 c!454472) b!2803445))

(assert (= (and d!814170 (not c!454472)) b!2803446))

(assert (= (or b!2803445 b!2803446) bm!182955))

(assert (= (or b!2803445 b!2803446) bm!182956))

(declare-fun m!3233147 () Bool)

(assert (=> b!2803446 m!3233147))

(declare-fun m!3233149 () Bool)

(assert (=> bm!182956 m!3233149))

(declare-fun m!3233151 () Bool)

(assert (=> d!814170 m!3233151))

(assert (=> d!814170 m!3233151))

(declare-fun m!3233153 () Bool)

(assert (=> d!814170 m!3233153))

(declare-fun m!3233155 () Bool)

(assert (=> d!814170 m!3233155))

(assert (=> d!814170 m!3233155))

(declare-fun m!3233157 () Bool)

(assert (=> bm!182955 m!3233157))

(declare-fun m!3233159 () Bool)

(assert (=> b!2803445 m!3233159))

(assert (=> b!2803427 d!814170))

(declare-fun d!814172 () Bool)

(assert (=> d!814172 (= testedSuffix!143 lt!1002558)))

(declare-fun lt!1002585 () Unit!46714)

(declare-fun choose!16534 (List!32709 List!32709 List!32709 List!32709 List!32709) Unit!46714)

(assert (=> d!814172 (= lt!1002585 (choose!16534 testedP!183 testedSuffix!143 testedP!183 lt!1002558 lt!1002535))))

(assert (=> d!814172 (isPrefix!2649 testedP!183 lt!1002535)))

(assert (=> d!814172 (= (lemmaSamePrefixThenSameSuffix!1220 testedP!183 testedSuffix!143 testedP!183 lt!1002558 lt!1002535) lt!1002585)))

(declare-fun bs!516061 () Bool)

(assert (= bs!516061 d!814172))

(declare-fun m!3233161 () Bool)

(assert (=> bs!516061 m!3233161))

(assert (=> bs!516061 m!3233075))

(assert (=> b!2803427 d!814172))

(declare-fun d!814174 () Bool)

(declare-fun lt!1002588 () List!32709)

(assert (=> d!814174 (= (++!8037 testedP!183 lt!1002588) lt!1002535)))

(declare-fun e!1771818 () List!32709)

(assert (=> d!814174 (= lt!1002588 e!1771818)))

(declare-fun c!454475 () Bool)

(assert (=> d!814174 (= c!454475 ((_ is Cons!32609) testedP!183))))

(assert (=> d!814174 (>= (size!25476 lt!1002535) (size!25476 testedP!183))))

(assert (=> d!814174 (= (getSuffix!1322 lt!1002535 testedP!183) lt!1002588)))

(declare-fun b!2803451 () Bool)

(assert (=> b!2803451 (= e!1771818 (getSuffix!1322 (tail!4440 lt!1002535) (t!228879 testedP!183)))))

(declare-fun b!2803452 () Bool)

(assert (=> b!2803452 (= e!1771818 lt!1002535)))

(assert (= (and d!814174 c!454475) b!2803451))

(assert (= (and d!814174 (not c!454475)) b!2803452))

(declare-fun m!3233163 () Bool)

(assert (=> d!814174 m!3233163))

(assert (=> d!814174 m!3233117))

(assert (=> d!814174 m!3233143))

(declare-fun m!3233165 () Bool)

(assert (=> b!2803451 m!3233165))

(assert (=> b!2803451 m!3233165))

(declare-fun m!3233167 () Bool)

(assert (=> b!2803451 m!3233167))

(assert (=> b!2803427 d!814174))

(declare-fun d!814176 () Bool)

(declare-fun validCacheMapDown!434 (MutableMap!3966) Bool)

(assert (=> d!814176 (= (valid!3178 cacheDown!1009) (validCacheMapDown!434 (cache!4109 cacheDown!1009)))))

(declare-fun bs!516062 () Bool)

(assert (= bs!516062 d!814176))

(declare-fun m!3233169 () Bool)

(assert (=> bs!516062 m!3233169))

(assert (=> b!2803409 d!814176))

(declare-fun d!814178 () Bool)

(assert (=> d!814178 (= (valid!3178 (_2!19736 lt!1002556)) (validCacheMapDown!434 (cache!4109 (_2!19736 lt!1002556))))))

(declare-fun bs!516063 () Bool)

(assert (= bs!516063 d!814178))

(declare-fun m!3233171 () Bool)

(assert (=> bs!516063 m!3233171))

(assert (=> b!2803435 d!814178))

(declare-fun d!814180 () Bool)

(declare-fun lt!1002591 () Int)

(assert (=> d!814180 (= lt!1002591 (size!25476 (list!12231 totalInput!758)))))

(declare-fun size!25477 (Conc!10092) Int)

(assert (=> d!814180 (= lt!1002591 (size!25477 (c!454461 totalInput!758)))))

(assert (=> d!814180 (= (size!25475 totalInput!758) lt!1002591)))

(declare-fun bs!516064 () Bool)

(assert (= bs!516064 d!814180))

(assert (=> bs!516064 m!3233051))

(assert (=> bs!516064 m!3233051))

(declare-fun m!3233173 () Bool)

(assert (=> bs!516064 m!3233173))

(declare-fun m!3233175 () Bool)

(assert (=> bs!516064 m!3233175))

(assert (=> b!2803426 d!814180))

(declare-fun d!814182 () Bool)

(declare-fun lambda!103006 () Int)

(declare-fun forall!6720 (List!32707 Int) Bool)

(assert (=> d!814182 (= (inv!44284 setElem!24666) (forall!6720 (exprs!2953 setElem!24666) lambda!103006))))

(declare-fun bs!516065 () Bool)

(assert (= bs!516065 d!814182))

(declare-fun m!3233177 () Bool)

(assert (=> bs!516065 m!3233177))

(assert (=> setNonEmpty!24666 d!814182))

(declare-fun d!814184 () Bool)

(assert (=> d!814184 (= lt!1002535 testedP!183)))

(declare-fun lt!1002594 () Unit!46714)

(declare-fun choose!16535 (List!32709 List!32709 List!32709) Unit!46714)

(assert (=> d!814184 (= lt!1002594 (choose!16535 lt!1002535 testedP!183 lt!1002535))))

(assert (=> d!814184 (isPrefix!2649 lt!1002535 lt!1002535)))

(assert (=> d!814184 (= (lemmaIsPrefixSameLengthThenSameList!503 lt!1002535 testedP!183 lt!1002535) lt!1002594)))

(declare-fun bs!516066 () Bool)

(assert (= bs!516066 d!814184))

(declare-fun m!3233179 () Bool)

(assert (=> bs!516066 m!3233179))

(assert (=> bs!516066 m!3233101))

(assert (=> bm!182948 d!814184))

(declare-fun d!814186 () Bool)

(assert (=> d!814186 (= (valid!3179 (ite c!454455 (_2!19735 lt!1002544) (_2!19735 lt!1002529))) (validCacheMapUp!403 (cache!4108 (ite c!454455 (_2!19735 lt!1002544) (_2!19735 lt!1002529)))))))

(declare-fun bs!516067 () Bool)

(assert (= bs!516067 d!814186))

(declare-fun m!3233181 () Bool)

(assert (=> bs!516067 m!3233181))

(assert (=> bm!182944 d!814186))

(declare-fun b!2803464 () Bool)

(declare-fun e!1771825 () Bool)

(assert (=> b!2803464 (= e!1771825 (>= (size!25476 lt!1002535) (size!25476 lt!1002535)))))

(declare-fun d!814188 () Bool)

(assert (=> d!814188 e!1771825))

(declare-fun res!1168089 () Bool)

(assert (=> d!814188 (=> res!1168089 e!1771825)))

(declare-fun lt!1002597 () Bool)

(assert (=> d!814188 (= res!1168089 (not lt!1002597))))

(declare-fun e!1771826 () Bool)

(assert (=> d!814188 (= lt!1002597 e!1771826)))

(declare-fun res!1168087 () Bool)

(assert (=> d!814188 (=> res!1168087 e!1771826)))

(assert (=> d!814188 (= res!1168087 ((_ is Nil!32609) lt!1002535))))

(assert (=> d!814188 (= (isPrefix!2649 lt!1002535 lt!1002535) lt!1002597)))

(declare-fun b!2803463 () Bool)

(declare-fun e!1771827 () Bool)

(assert (=> b!2803463 (= e!1771827 (isPrefix!2649 (tail!4440 lt!1002535) (tail!4440 lt!1002535)))))

(declare-fun b!2803462 () Bool)

(declare-fun res!1168088 () Bool)

(assert (=> b!2803462 (=> (not res!1168088) (not e!1771827))))

(assert (=> b!2803462 (= res!1168088 (= (head!6213 lt!1002535) (head!6213 lt!1002535)))))

(declare-fun b!2803461 () Bool)

(assert (=> b!2803461 (= e!1771826 e!1771827)))

(declare-fun res!1168086 () Bool)

(assert (=> b!2803461 (=> (not res!1168086) (not e!1771827))))

(assert (=> b!2803461 (= res!1168086 (not ((_ is Nil!32609) lt!1002535)))))

(assert (= (and d!814188 (not res!1168087)) b!2803461))

(assert (= (and b!2803461 res!1168086) b!2803462))

(assert (= (and b!2803462 res!1168088) b!2803463))

(assert (= (and d!814188 (not res!1168089)) b!2803464))

(assert (=> b!2803464 m!3233117))

(assert (=> b!2803464 m!3233117))

(assert (=> b!2803463 m!3233165))

(assert (=> b!2803463 m!3233165))

(assert (=> b!2803463 m!3233165))

(assert (=> b!2803463 m!3233165))

(declare-fun m!3233183 () Bool)

(assert (=> b!2803463 m!3233183))

(declare-fun m!3233185 () Bool)

(assert (=> b!2803462 m!3233185))

(assert (=> b!2803462 m!3233185))

(assert (=> bm!182945 d!814188))

(declare-fun d!814190 () Bool)

(assert (=> d!814190 (= (array_inv!4601 (_keys!4360 (v!34211 (underlying!8323 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009))))))) (bvsge (size!25473 (_keys!4360 (v!34211 (underlying!8323 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2803439 d!814190))

(declare-fun d!814192 () Bool)

(assert (=> d!814192 (= (array_inv!4603 (_values!4341 (v!34211 (underlying!8323 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009))))))) (bvsge (size!25474 (_values!4341 (v!34211 (underlying!8323 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2803439 d!814192))

(declare-fun b!2803489 () Bool)

(declare-fun e!1771843 () Int)

(declare-fun call!182986 () Int)

(assert (=> b!2803489 (= e!1771843 call!182986)))

(declare-fun b!2803490 () Bool)

(declare-fun e!1771842 () Unit!46714)

(declare-fun Unit!46720 () Unit!46714)

(assert (=> b!2803490 (= e!1771842 Unit!46720)))

(declare-fun b!2803491 () Bool)

(declare-fun lt!1002705 () Int)

(assert (=> b!2803491 (= e!1771843 (ite (= lt!1002705 0) (+ 1 testedPSize!143) lt!1002705))))

(assert (=> b!2803491 (= lt!1002705 call!182986)))

(declare-fun lt!1002689 () List!32709)

(declare-fun lt!1002698 () List!32709)

(declare-fun lt!1002695 () List!32709)

(declare-fun c!454488 () Bool)

(declare-fun call!182987 () Bool)

(declare-fun bm!182977 () Bool)

(declare-fun lt!1002692 () List!32709)

(assert (=> bm!182977 (= call!182987 (isPrefix!2649 (ite c!454488 lt!1002698 lt!1002692) (ite c!454488 lt!1002689 lt!1002695)))))

(declare-fun call!182990 () Bool)

(declare-fun bm!182978 () Bool)

(assert (=> bm!182978 (= call!182990 (nullableZipper!668 (ite c!454455 (_1!19734 lt!1002553) (_1!19734 lt!1002533))))))

(declare-fun b!2803492 () Bool)

(declare-fun e!1771844 () List!32709)

(assert (=> b!2803492 (= e!1771844 (list!12231 totalInput!758))))

(declare-fun call!182991 () List!32709)

(declare-fun bm!182979 () Bool)

(declare-fun lt!1002712 () tuple2!33288)

(assert (=> bm!182979 (= call!182991 (list!12231 (ite c!454488 totalInput!758 (_1!19737 lt!1002712))))))

(declare-fun b!2803493 () Bool)

(declare-fun c!454491 () Bool)

(assert (=> b!2803493 (= c!454491 call!182990)))

(declare-fun lt!1002686 () Unit!46714)

(declare-fun lt!1002684 () Unit!46714)

(assert (=> b!2803493 (= lt!1002686 lt!1002684)))

(declare-fun lt!1002716 () List!32709)

(assert (=> b!2803493 (= lt!1002716 lt!1002542)))

(declare-fun call!182984 () Unit!46714)

(assert (=> b!2803493 (= lt!1002684 call!182984)))

(assert (=> b!2803493 (= lt!1002716 call!182991)))

(declare-fun lt!1002715 () Unit!46714)

(declare-fun lt!1002683 () Unit!46714)

(assert (=> b!2803493 (= lt!1002715 lt!1002683)))

(assert (=> b!2803493 call!182987))

(declare-fun call!182983 () Unit!46714)

(assert (=> b!2803493 (= lt!1002683 call!182983)))

(assert (=> b!2803493 (= lt!1002689 call!182991)))

(assert (=> b!2803493 (= lt!1002698 call!182991)))

(declare-fun e!1771841 () Int)

(declare-fun e!1771840 () Int)

(assert (=> b!2803493 (= e!1771841 e!1771840)))

(declare-fun bm!182980 () Bool)

(declare-fun call!182989 () List!32709)

(declare-fun call!182985 () C!16628)

(assert (=> bm!182980 (= call!182989 (++!8037 lt!1002542 (Cons!32609 call!182985 Nil!32609)))))

(declare-fun bm!182981 () Bool)

(declare-fun c!454493 () Bool)

(assert (=> bm!182981 (= c!454493 c!454488)))

(declare-fun lt!1002723 () List!32709)

(assert (=> bm!182981 (= call!182984 (lemmaIsPrefixSameLengthThenSameList!503 (ite c!454488 lt!1002716 lt!1002723) lt!1002542 e!1771844))))

(declare-fun b!2803494 () Bool)

(assert (=> b!2803494 (= e!1771840 0)))

(declare-fun b!2803495 () Bool)

(declare-fun e!1771845 () Int)

(assert (=> b!2803495 (= e!1771845 0)))

(declare-fun call!182988 () (InoxSet Context!4906))

(declare-fun bm!182982 () Bool)

(declare-fun derivationStepZipper!383 ((InoxSet Context!4906) C!16628) (InoxSet Context!4906))

(assert (=> bm!182982 (= call!182988 (derivationStepZipper!383 (ite c!454455 (_1!19734 lt!1002553) (_1!19734 lt!1002533)) call!182985))))

(declare-fun b!2803496 () Bool)

(assert (=> b!2803496 (= e!1771840 (+ 1 testedPSize!143))))

(declare-fun b!2803497 () Bool)

(declare-fun Unit!46721 () Unit!46714)

(assert (=> b!2803497 (= e!1771842 Unit!46721)))

(assert (=> b!2803497 (= lt!1002692 (list!12231 totalInput!758))))

(assert (=> b!2803497 (= lt!1002695 (list!12231 totalInput!758))))

(declare-fun lt!1002717 () Unit!46714)

(assert (=> b!2803497 (= lt!1002717 call!182983)))

(assert (=> b!2803497 call!182987))

(declare-fun lt!1002719 () Unit!46714)

(assert (=> b!2803497 (= lt!1002719 lt!1002717)))

(assert (=> b!2803497 (= lt!1002723 (list!12231 totalInput!758))))

(declare-fun lt!1002693 () Unit!46714)

(assert (=> b!2803497 (= lt!1002693 call!182984)))

(assert (=> b!2803497 (= lt!1002723 lt!1002542)))

(declare-fun lt!1002701 () Unit!46714)

(assert (=> b!2803497 (= lt!1002701 lt!1002693)))

(assert (=> b!2803497 false))

(declare-fun bm!182983 () Bool)

(declare-fun call!182982 () List!32709)

(assert (=> bm!182983 (= call!182986 (findLongestMatchInnerZipperFast!57 call!182988 call!182989 (+ 1 testedPSize!143 1) call!182982 totalInput!758 totalInputSize!205))))

(declare-fun b!2803498 () Bool)

(declare-fun c!454492 () Bool)

(assert (=> b!2803498 (= c!454492 call!182990)))

(declare-fun lt!1002704 () Unit!46714)

(declare-fun lt!1002711 () Unit!46714)

(assert (=> b!2803498 (= lt!1002704 lt!1002711)))

(declare-fun lt!1002691 () List!32709)

(declare-fun lt!1002708 () List!32709)

(declare-fun lt!1002721 () C!16628)

(assert (=> b!2803498 (= (++!8037 (++!8037 lt!1002542 (Cons!32609 lt!1002721 Nil!32609)) lt!1002708) lt!1002691)))

(assert (=> b!2803498 (= lt!1002711 (lemmaMoveElementToOtherListKeepsConcatEq!904 lt!1002542 lt!1002721 lt!1002708 lt!1002691))))

(assert (=> b!2803498 (= lt!1002691 (list!12231 totalInput!758))))

(assert (=> b!2803498 (= lt!1002708 (tail!4440 lt!1002537))))

(assert (=> b!2803498 (= lt!1002721 (apply!7631 totalInput!758 (+ 1 testedPSize!143)))))

(declare-fun lt!1002714 () Unit!46714)

(declare-fun lt!1002703 () Unit!46714)

(assert (=> b!2803498 (= lt!1002714 lt!1002703)))

(declare-fun lt!1002700 () List!32709)

(assert (=> b!2803498 (isPrefix!2649 (++!8037 lt!1002542 (Cons!32609 (head!6213 (getSuffix!1322 lt!1002700 lt!1002542)) Nil!32609)) lt!1002700)))

(assert (=> b!2803498 (= lt!1002703 (lemmaAddHeadSuffixToPrefixStillPrefix!496 lt!1002542 lt!1002700))))

(assert (=> b!2803498 (= lt!1002700 (list!12231 totalInput!758))))

(declare-fun lt!1002720 () Unit!46714)

(assert (=> b!2803498 (= lt!1002720 e!1771842)))

(declare-fun c!454490 () Bool)

(assert (=> b!2803498 (= c!454490 (= (size!25476 lt!1002542) (size!25475 totalInput!758)))))

(declare-fun lt!1002713 () Unit!46714)

(declare-fun lt!1002682 () Unit!46714)

(assert (=> b!2803498 (= lt!1002713 lt!1002682)))

(declare-fun lt!1002710 () List!32709)

(assert (=> b!2803498 (<= (size!25476 lt!1002542) (size!25476 lt!1002710))))

(assert (=> b!2803498 (= lt!1002682 (lemmaIsPrefixThenSmallerEqSize!304 lt!1002542 lt!1002710))))

(assert (=> b!2803498 (= lt!1002710 (list!12231 totalInput!758))))

(declare-fun lt!1002690 () Unit!46714)

(declare-fun lt!1002702 () Unit!46714)

(assert (=> b!2803498 (= lt!1002690 lt!1002702)))

(declare-fun lt!1002699 () List!32709)

(assert (=> b!2803498 (= (head!6213 (drop!1760 lt!1002699 (+ 1 testedPSize!143))) (apply!7632 lt!1002699 (+ 1 testedPSize!143)))))

(assert (=> b!2803498 (= lt!1002702 (lemmaDropApply!964 lt!1002699 (+ 1 testedPSize!143)))))

(assert (=> b!2803498 (= lt!1002699 (list!12231 totalInput!758))))

(declare-fun lt!1002687 () Unit!46714)

(declare-fun lt!1002718 () Unit!46714)

(assert (=> b!2803498 (= lt!1002687 lt!1002718)))

(declare-fun lt!1002688 () List!32709)

(declare-fun lt!1002707 () List!32709)

(assert (=> b!2803498 (and (= lt!1002707 lt!1002542) (= lt!1002688 lt!1002537))))

(assert (=> b!2803498 (= lt!1002718 (lemmaConcatSameAndSameSizesThenSameLists!394 lt!1002707 lt!1002688 lt!1002542 lt!1002537))))

(assert (=> b!2803498 (= lt!1002688 (list!12231 (_2!19737 lt!1002712)))))

(assert (=> b!2803498 (= lt!1002707 call!182991)))

(assert (=> b!2803498 (= lt!1002712 (splitAt!210 totalInput!758 (+ 1 testedPSize!143)))))

(assert (=> b!2803498 (= e!1771841 e!1771843)))

(declare-fun b!2803499 () Bool)

(assert (=> b!2803499 (= e!1771845 e!1771841)))

(assert (=> b!2803499 (= c!454488 (= (+ 1 testedPSize!143) totalInputSize!205))))

(declare-fun b!2803500 () Bool)

(assert (=> b!2803500 (= e!1771844 call!182991)))

(declare-fun bm!182984 () Bool)

(assert (=> bm!182984 (= call!182985 (apply!7631 totalInput!758 (+ 1 testedPSize!143)))))

(declare-fun bm!182985 () Bool)

(assert (=> bm!182985 (= call!182983 (lemmaIsPrefixRefl!1727 (ite c!454488 lt!1002698 lt!1002692) (ite c!454488 lt!1002689 lt!1002695)))))

(declare-fun bm!182986 () Bool)

(assert (=> bm!182986 (= call!182982 (tail!4440 lt!1002537))))

(declare-fun lt!1002685 () Int)

(declare-fun d!814194 () Bool)

(declare-datatypes ((tuple2!33290 0))(
  ( (tuple2!33291 (_1!19738 List!32709) (_2!19738 List!32709)) )
))
(declare-fun findLongestMatchInnerZipper!31 ((InoxSet Context!4906) List!32709 Int List!32709 List!32709 Int) tuple2!33290)

(assert (=> d!814194 (= (size!25476 (_1!19738 (findLongestMatchInnerZipper!31 (ite c!454455 (_1!19734 lt!1002553) (_1!19734 lt!1002533)) lt!1002542 (+ 1 testedPSize!143) lt!1002537 (list!12231 totalInput!758) totalInputSize!205))) lt!1002685)))

(assert (=> d!814194 (= lt!1002685 e!1771845)))

(declare-fun c!454489 () Bool)

(assert (=> d!814194 (= c!454489 (lostCauseZipper!517 (ite c!454455 (_1!19734 lt!1002553) (_1!19734 lt!1002533))))))

(declare-fun lt!1002709 () Unit!46714)

(declare-fun Unit!46722 () Unit!46714)

(assert (=> d!814194 (= lt!1002709 Unit!46722)))

(assert (=> d!814194 (= (getSuffix!1322 (list!12231 totalInput!758) lt!1002542) lt!1002537)))

(declare-fun lt!1002697 () Unit!46714)

(declare-fun lt!1002696 () Unit!46714)

(assert (=> d!814194 (= lt!1002697 lt!1002696)))

(declare-fun lt!1002694 () List!32709)

(assert (=> d!814194 (= lt!1002537 lt!1002694)))

(assert (=> d!814194 (= lt!1002696 (lemmaSamePrefixThenSameSuffix!1220 lt!1002542 lt!1002537 lt!1002542 lt!1002694 (list!12231 totalInput!758)))))

(assert (=> d!814194 (= lt!1002694 (getSuffix!1322 (list!12231 totalInput!758) lt!1002542))))

(declare-fun lt!1002706 () Unit!46714)

(declare-fun lt!1002722 () Unit!46714)

(assert (=> d!814194 (= lt!1002706 lt!1002722)))

(assert (=> d!814194 (isPrefix!2649 lt!1002542 (++!8037 lt!1002542 lt!1002537))))

(assert (=> d!814194 (= lt!1002722 (lemmaConcatTwoListThenFirstIsPrefix!1754 lt!1002542 lt!1002537))))

(assert (=> d!814194 (= (++!8037 lt!1002542 lt!1002537) (list!12231 totalInput!758))))

(assert (=> d!814194 (= (findLongestMatchInnerZipperFast!57 (ite c!454455 (_1!19734 lt!1002553) (_1!19734 lt!1002533)) lt!1002542 (+ 1 testedPSize!143) lt!1002537 totalInput!758 totalInputSize!205) lt!1002685)))

(assert (= (and d!814194 c!454489) b!2803495))

(assert (= (and d!814194 (not c!454489)) b!2803499))

(assert (= (and b!2803499 c!454488) b!2803493))

(assert (= (and b!2803499 (not c!454488)) b!2803498))

(assert (= (and b!2803493 c!454491) b!2803496))

(assert (= (and b!2803493 (not c!454491)) b!2803494))

(assert (= (and b!2803498 c!454490) b!2803497))

(assert (= (and b!2803498 (not c!454490)) b!2803490))

(assert (= (and b!2803498 c!454492) b!2803491))

(assert (= (and b!2803498 (not c!454492)) b!2803489))

(assert (= (or b!2803491 b!2803489) bm!182986))

(assert (= (or b!2803491 b!2803489) bm!182984))

(assert (= (or b!2803491 b!2803489) bm!182980))

(assert (= (or b!2803491 b!2803489) bm!182982))

(assert (= (or b!2803491 b!2803489) bm!182983))

(assert (= (or b!2803493 b!2803497) bm!182977))

(assert (= (or b!2803493 b!2803498) bm!182978))

(assert (= (or b!2803493 b!2803498) bm!182979))

(assert (= (or b!2803493 b!2803497) bm!182985))

(assert (= (or b!2803493 b!2803497) bm!182981))

(assert (= (and bm!182981 c!454493) b!2803500))

(assert (= (and bm!182981 (not c!454493)) b!2803492))

(assert (=> b!2803497 m!3233051))

(declare-fun m!3233187 () Bool)

(assert (=> b!2803498 m!3233187))

(declare-fun m!3233189 () Bool)

(assert (=> b!2803498 m!3233189))

(assert (=> b!2803498 m!3233083))

(declare-fun m!3233191 () Bool)

(assert (=> b!2803498 m!3233191))

(declare-fun m!3233193 () Bool)

(assert (=> b!2803498 m!3233193))

(declare-fun m!3233195 () Bool)

(assert (=> b!2803498 m!3233195))

(declare-fun m!3233197 () Bool)

(assert (=> b!2803498 m!3233197))

(declare-fun m!3233199 () Bool)

(assert (=> b!2803498 m!3233199))

(declare-fun m!3233201 () Bool)

(assert (=> b!2803498 m!3233201))

(declare-fun m!3233203 () Bool)

(assert (=> b!2803498 m!3233203))

(declare-fun m!3233205 () Bool)

(assert (=> b!2803498 m!3233205))

(declare-fun m!3233207 () Bool)

(assert (=> b!2803498 m!3233207))

(declare-fun m!3233209 () Bool)

(assert (=> b!2803498 m!3233209))

(declare-fun m!3233211 () Bool)

(assert (=> b!2803498 m!3233211))

(assert (=> b!2803498 m!3233205))

(declare-fun m!3233213 () Bool)

(assert (=> b!2803498 m!3233213))

(assert (=> b!2803498 m!3233201))

(declare-fun m!3233215 () Bool)

(assert (=> b!2803498 m!3233215))

(declare-fun m!3233217 () Bool)

(assert (=> b!2803498 m!3233217))

(declare-fun m!3233219 () Bool)

(assert (=> b!2803498 m!3233219))

(assert (=> b!2803498 m!3233197))

(assert (=> b!2803498 m!3233211))

(declare-fun m!3233221 () Bool)

(assert (=> b!2803498 m!3233221))

(assert (=> b!2803498 m!3233051))

(declare-fun m!3233223 () Bool)

(assert (=> b!2803498 m!3233223))

(declare-fun m!3233225 () Bool)

(assert (=> b!2803498 m!3233225))

(assert (=> d!814194 m!3233051))

(declare-fun m!3233227 () Bool)

(assert (=> d!814194 m!3233227))

(assert (=> d!814194 m!3233133))

(declare-fun m!3233229 () Bool)

(assert (=> d!814194 m!3233229))

(declare-fun m!3233231 () Bool)

(assert (=> d!814194 m!3233231))

(assert (=> d!814194 m!3233133))

(assert (=> d!814194 m!3233051))

(declare-fun m!3233233 () Bool)

(assert (=> d!814194 m!3233233))

(declare-fun m!3233235 () Bool)

(assert (=> d!814194 m!3233235))

(assert (=> d!814194 m!3233051))

(declare-fun m!3233237 () Bool)

(assert (=> d!814194 m!3233237))

(declare-fun m!3233239 () Bool)

(assert (=> d!814194 m!3233239))

(assert (=> d!814194 m!3233051))

(declare-fun m!3233241 () Bool)

(assert (=> bm!182977 m!3233241))

(declare-fun m!3233243 () Bool)

(assert (=> bm!182981 m!3233243))

(declare-fun m!3233245 () Bool)

(assert (=> bm!182980 m!3233245))

(declare-fun m!3233247 () Bool)

(assert (=> bm!182979 m!3233247))

(declare-fun m!3233249 () Bool)

(assert (=> bm!182985 m!3233249))

(declare-fun m!3233251 () Bool)

(assert (=> bm!182983 m!3233251))

(assert (=> b!2803492 m!3233051))

(assert (=> bm!182984 m!3233203))

(assert (=> bm!182986 m!3233189))

(declare-fun m!3233253 () Bool)

(assert (=> bm!182978 m!3233253))

(declare-fun m!3233255 () Bool)

(assert (=> bm!182982 m!3233255))

(assert (=> bm!182942 d!814194))

(declare-fun b!2803504 () Bool)

(declare-fun e!1771846 () Bool)

(assert (=> b!2803504 (= e!1771846 (>= (size!25476 lt!1002535) (size!25476 testedP!183)))))

(declare-fun d!814196 () Bool)

(assert (=> d!814196 e!1771846))

(declare-fun res!1168093 () Bool)

(assert (=> d!814196 (=> res!1168093 e!1771846)))

(declare-fun lt!1002724 () Bool)

(assert (=> d!814196 (= res!1168093 (not lt!1002724))))

(declare-fun e!1771847 () Bool)

(assert (=> d!814196 (= lt!1002724 e!1771847)))

(declare-fun res!1168091 () Bool)

(assert (=> d!814196 (=> res!1168091 e!1771847)))

(assert (=> d!814196 (= res!1168091 ((_ is Nil!32609) testedP!183))))

(assert (=> d!814196 (= (isPrefix!2649 testedP!183 lt!1002535) lt!1002724)))

(declare-fun b!2803503 () Bool)

(declare-fun e!1771848 () Bool)

(assert (=> b!2803503 (= e!1771848 (isPrefix!2649 (tail!4440 testedP!183) (tail!4440 lt!1002535)))))

(declare-fun b!2803502 () Bool)

(declare-fun res!1168092 () Bool)

(assert (=> b!2803502 (=> (not res!1168092) (not e!1771848))))

(assert (=> b!2803502 (= res!1168092 (= (head!6213 testedP!183) (head!6213 lt!1002535)))))

(declare-fun b!2803501 () Bool)

(assert (=> b!2803501 (= e!1771847 e!1771848)))

(declare-fun res!1168090 () Bool)

(assert (=> b!2803501 (=> (not res!1168090) (not e!1771848))))

(assert (=> b!2803501 (= res!1168090 (not ((_ is Nil!32609) lt!1002535)))))

(assert (= (and d!814196 (not res!1168091)) b!2803501))

(assert (= (and b!2803501 res!1168090) b!2803502))

(assert (= (and b!2803502 res!1168092) b!2803503))

(assert (= (and d!814196 (not res!1168093)) b!2803504))

(assert (=> b!2803504 m!3233117))

(assert (=> b!2803504 m!3233143))

(declare-fun m!3233257 () Bool)

(assert (=> b!2803503 m!3233257))

(assert (=> b!2803503 m!3233165))

(assert (=> b!2803503 m!3233257))

(assert (=> b!2803503 m!3233165))

(declare-fun m!3233259 () Bool)

(assert (=> b!2803503 m!3233259))

(declare-fun m!3233261 () Bool)

(assert (=> b!2803502 m!3233261))

(assert (=> b!2803502 m!3233185))

(assert (=> b!2803438 d!814196))

(declare-fun b!2803508 () Bool)

(declare-fun e!1771849 () Bool)

(assert (=> b!2803508 (= e!1771849 (>= (size!25476 lt!1002547) (size!25476 testedP!183)))))

(declare-fun d!814198 () Bool)

(assert (=> d!814198 e!1771849))

(declare-fun res!1168097 () Bool)

(assert (=> d!814198 (=> res!1168097 e!1771849)))

(declare-fun lt!1002725 () Bool)

(assert (=> d!814198 (= res!1168097 (not lt!1002725))))

(declare-fun e!1771850 () Bool)

(assert (=> d!814198 (= lt!1002725 e!1771850)))

(declare-fun res!1168095 () Bool)

(assert (=> d!814198 (=> res!1168095 e!1771850)))

(assert (=> d!814198 (= res!1168095 ((_ is Nil!32609) testedP!183))))

(assert (=> d!814198 (= (isPrefix!2649 testedP!183 lt!1002547) lt!1002725)))

(declare-fun b!2803507 () Bool)

(declare-fun e!1771851 () Bool)

(assert (=> b!2803507 (= e!1771851 (isPrefix!2649 (tail!4440 testedP!183) (tail!4440 lt!1002547)))))

(declare-fun b!2803506 () Bool)

(declare-fun res!1168096 () Bool)

(assert (=> b!2803506 (=> (not res!1168096) (not e!1771851))))

(assert (=> b!2803506 (= res!1168096 (= (head!6213 testedP!183) (head!6213 lt!1002547)))))

(declare-fun b!2803505 () Bool)

(assert (=> b!2803505 (= e!1771850 e!1771851)))

(declare-fun res!1168094 () Bool)

(assert (=> b!2803505 (=> (not res!1168094) (not e!1771851))))

(assert (=> b!2803505 (= res!1168094 (not ((_ is Nil!32609) lt!1002547)))))

(assert (= (and d!814198 (not res!1168095)) b!2803505))

(assert (= (and b!2803505 res!1168094) b!2803506))

(assert (= (and b!2803506 res!1168096) b!2803507))

(assert (= (and d!814198 (not res!1168097)) b!2803508))

(declare-fun m!3233263 () Bool)

(assert (=> b!2803508 m!3233263))

(assert (=> b!2803508 m!3233143))

(assert (=> b!2803507 m!3233257))

(declare-fun m!3233265 () Bool)

(assert (=> b!2803507 m!3233265))

(assert (=> b!2803507 m!3233257))

(assert (=> b!2803507 m!3233265))

(declare-fun m!3233267 () Bool)

(assert (=> b!2803507 m!3233267))

(assert (=> b!2803506 m!3233261))

(declare-fun m!3233269 () Bool)

(assert (=> b!2803506 m!3233269))

(assert (=> b!2803438 d!814198))

(declare-fun d!814200 () Bool)

(assert (=> d!814200 (isPrefix!2649 testedP!183 (++!8037 testedP!183 testedSuffix!143))))

(declare-fun lt!1002728 () Unit!46714)

(declare-fun choose!16536 (List!32709 List!32709) Unit!46714)

(assert (=> d!814200 (= lt!1002728 (choose!16536 testedP!183 testedSuffix!143))))

(assert (=> d!814200 (= (lemmaConcatTwoListThenFirstIsPrefix!1754 testedP!183 testedSuffix!143) lt!1002728)))

(declare-fun bs!516068 () Bool)

(assert (= bs!516068 d!814200))

(assert (=> bs!516068 m!3233059))

(assert (=> bs!516068 m!3233059))

(declare-fun m!3233271 () Bool)

(assert (=> bs!516068 m!3233271))

(declare-fun m!3233273 () Bool)

(assert (=> bs!516068 m!3233273))

(assert (=> b!2803438 d!814200))

(declare-fun d!814202 () Bool)

(assert (=> d!814202 (= (valid!3179 cacheUp!890) (validCacheMapUp!403 (cache!4108 cacheUp!890)))))

(declare-fun bs!516069 () Bool)

(assert (= bs!516069 d!814202))

(declare-fun m!3233275 () Bool)

(assert (=> bs!516069 m!3233275))

(assert (=> b!2803420 d!814202))

(declare-fun d!814204 () Bool)

(assert (=> d!814204 (= (valid!3178 (ite c!454455 (_3!3091 lt!1002544) (_3!3091 lt!1002529))) (validCacheMapDown!434 (cache!4109 (ite c!454455 (_3!3091 lt!1002544) (_3!3091 lt!1002529)))))))

(declare-fun bs!516070 () Bool)

(assert (= bs!516070 d!814204))

(declare-fun m!3233277 () Bool)

(assert (=> bs!516070 m!3233277))

(assert (=> bm!182943 d!814204))

(declare-fun d!814206 () Bool)

(declare-fun c!454496 () Bool)

(assert (=> d!814206 (= c!454496 ((_ is Node!10092) (c!454461 totalInput!758)))))

(declare-fun e!1771856 () Bool)

(assert (=> d!814206 (= (inv!44283 (c!454461 totalInput!758)) e!1771856)))

(declare-fun b!2803515 () Bool)

(declare-fun inv!44288 (Conc!10092) Bool)

(assert (=> b!2803515 (= e!1771856 (inv!44288 (c!454461 totalInput!758)))))

(declare-fun b!2803516 () Bool)

(declare-fun e!1771857 () Bool)

(assert (=> b!2803516 (= e!1771856 e!1771857)))

(declare-fun res!1168100 () Bool)

(assert (=> b!2803516 (= res!1168100 (not ((_ is Leaf!15378) (c!454461 totalInput!758))))))

(assert (=> b!2803516 (=> res!1168100 e!1771857)))

(declare-fun b!2803517 () Bool)

(declare-fun inv!44289 (Conc!10092) Bool)

(assert (=> b!2803517 (= e!1771857 (inv!44289 (c!454461 totalInput!758)))))

(assert (= (and d!814206 c!454496) b!2803515))

(assert (= (and d!814206 (not c!454496)) b!2803516))

(assert (= (and b!2803516 (not res!1168100)) b!2803517))

(declare-fun m!3233279 () Bool)

(assert (=> b!2803515 m!3233279))

(declare-fun m!3233281 () Bool)

(assert (=> b!2803517 m!3233281))

(assert (=> b!2803406 d!814206))

(declare-fun bs!516071 () Bool)

(declare-fun d!814208 () Bool)

(assert (= bs!516071 (and d!814208 d!814170)))

(declare-fun lambda!103009 () Int)

(assert (=> bs!516071 (not (= lambda!103009 lambda!103001))))

(declare-fun bs!516072 () Bool)

(assert (= bs!516072 (and d!814208 b!2803445)))

(assert (=> bs!516072 (not (= lambda!103009 lambda!103002))))

(declare-fun bs!516073 () Bool)

(assert (= bs!516073 (and d!814208 b!2803446)))

(assert (=> bs!516073 (not (= lambda!103009 lambda!103003))))

(declare-fun exists!1027 ((InoxSet Context!4906) Int) Bool)

(assert (=> d!814208 (= (nullableZipper!668 z!3684) (exists!1027 z!3684 lambda!103009))))

(declare-fun bs!516074 () Bool)

(assert (= bs!516074 d!814208))

(declare-fun m!3233283 () Bool)

(assert (=> bs!516074 m!3233283))

(assert (=> bm!182947 d!814208))

(declare-fun d!814210 () Bool)

(declare-fun e!1771860 () Bool)

(assert (=> d!814210 e!1771860))

(declare-fun res!1168105 () Bool)

(assert (=> d!814210 (=> (not res!1168105) (not e!1771860))))

(declare-fun lt!1002731 () tuple3!5240)

(assert (=> d!814210 (= res!1168105 (= (_1!19734 lt!1002731) (derivationStepZipper!383 z!3684 lt!1002534)))))

(declare-fun choose!16537 ((InoxSet Context!4906) C!16628 CacheUp!2668 CacheDown!2794) tuple3!5240)

(assert (=> d!814210 (= lt!1002731 (choose!16537 z!3684 lt!1002534 cacheUp!890 cacheDown!1009))))

(assert (=> d!814210 (= (derivationStepZipperMem!122 z!3684 lt!1002534 cacheUp!890 cacheDown!1009) lt!1002731)))

(declare-fun b!2803522 () Bool)

(declare-fun res!1168106 () Bool)

(assert (=> b!2803522 (=> (not res!1168106) (not e!1771860))))

(assert (=> b!2803522 (= res!1168106 (valid!3179 (_2!19734 lt!1002731)))))

(declare-fun b!2803523 () Bool)

(assert (=> b!2803523 (= e!1771860 (valid!3178 (_3!3090 lt!1002731)))))

(assert (= (and d!814210 res!1168105) b!2803522))

(assert (= (and b!2803522 res!1168106) b!2803523))

(declare-fun m!3233285 () Bool)

(assert (=> d!814210 m!3233285))

(declare-fun m!3233287 () Bool)

(assert (=> d!814210 m!3233287))

(declare-fun m!3233289 () Bool)

(assert (=> b!2803522 m!3233289))

(declare-fun m!3233291 () Bool)

(assert (=> b!2803523 m!3233291))

(assert (=> bm!182949 d!814210))

(declare-fun d!814212 () Bool)

(declare-fun res!1168109 () Bool)

(declare-fun e!1771863 () Bool)

(assert (=> d!814212 (=> (not res!1168109) (not e!1771863))))

(assert (=> d!814212 (= res!1168109 ((_ is HashMap!3965) (cache!4108 cacheUp!890)))))

(assert (=> d!814212 (= (inv!44287 cacheUp!890) e!1771863)))

(declare-fun b!2803526 () Bool)

(assert (=> b!2803526 (= e!1771863 (validCacheMapUp!403 (cache!4108 cacheUp!890)))))

(assert (= (and d!814212 res!1168109) b!2803526))

(assert (=> b!2803526 m!3233275))

(assert (=> start!271132 d!814212))

(declare-fun d!814214 () Bool)

(declare-fun isBalanced!3079 (Conc!10092) Bool)

(assert (=> d!814214 (= (inv!44285 totalInput!758) (isBalanced!3079 (c!454461 totalInput!758)))))

(declare-fun bs!516075 () Bool)

(assert (= bs!516075 d!814214))

(declare-fun m!3233293 () Bool)

(assert (=> bs!516075 m!3233293))

(assert (=> start!271132 d!814214))

(declare-fun d!814216 () Bool)

(declare-fun res!1168112 () Bool)

(declare-fun e!1771866 () Bool)

(assert (=> d!814216 (=> (not res!1168112) (not e!1771866))))

(assert (=> d!814216 (= res!1168112 ((_ is HashMap!3966) (cache!4109 cacheDown!1009)))))

(assert (=> d!814216 (= (inv!44286 cacheDown!1009) e!1771866)))

(declare-fun b!2803529 () Bool)

(assert (=> b!2803529 (= e!1771866 (validCacheMapDown!434 (cache!4109 cacheDown!1009)))))

(assert (= (and d!814216 res!1168112) b!2803529))

(assert (=> b!2803529 m!3233169))

(assert (=> start!271132 d!814216))

(declare-fun d!814218 () Bool)

(declare-fun list!12232 (Conc!10092) List!32709)

(assert (=> d!814218 (= (list!12231 totalInput!758) (list!12232 (c!454461 totalInput!758)))))

(declare-fun bs!516076 () Bool)

(assert (= bs!516076 d!814218))

(declare-fun m!3233295 () Bool)

(assert (=> bs!516076 m!3233295))

(assert (=> start!271132 d!814218))

(declare-fun b!2803539 () Bool)

(declare-fun e!1771871 () List!32709)

(assert (=> b!2803539 (= e!1771871 (Cons!32609 (h!38029 testedP!183) (++!8037 (t!228879 testedP!183) testedSuffix!143)))))

(declare-fun b!2803538 () Bool)

(assert (=> b!2803538 (= e!1771871 testedSuffix!143)))

(declare-fun d!814220 () Bool)

(declare-fun e!1771872 () Bool)

(assert (=> d!814220 e!1771872))

(declare-fun res!1168118 () Bool)

(assert (=> d!814220 (=> (not res!1168118) (not e!1771872))))

(declare-fun lt!1002734 () List!32709)

(declare-fun content!4549 (List!32709) (InoxSet C!16628))

(assert (=> d!814220 (= res!1168118 (= (content!4549 lt!1002734) ((_ map or) (content!4549 testedP!183) (content!4549 testedSuffix!143))))))

(assert (=> d!814220 (= lt!1002734 e!1771871)))

(declare-fun c!454501 () Bool)

(assert (=> d!814220 (= c!454501 ((_ is Nil!32609) testedP!183))))

(assert (=> d!814220 (= (++!8037 testedP!183 testedSuffix!143) lt!1002734)))

(declare-fun b!2803540 () Bool)

(declare-fun res!1168117 () Bool)

(assert (=> b!2803540 (=> (not res!1168117) (not e!1771872))))

(assert (=> b!2803540 (= res!1168117 (= (size!25476 lt!1002734) (+ (size!25476 testedP!183) (size!25476 testedSuffix!143))))))

(declare-fun b!2803541 () Bool)

(assert (=> b!2803541 (= e!1771872 (or (not (= testedSuffix!143 Nil!32609)) (= lt!1002734 testedP!183)))))

(assert (= (and d!814220 c!454501) b!2803538))

(assert (= (and d!814220 (not c!454501)) b!2803539))

(assert (= (and d!814220 res!1168118) b!2803540))

(assert (= (and b!2803540 res!1168117) b!2803541))

(declare-fun m!3233297 () Bool)

(assert (=> b!2803539 m!3233297))

(declare-fun m!3233299 () Bool)

(assert (=> d!814220 m!3233299))

(declare-fun m!3233301 () Bool)

(assert (=> d!814220 m!3233301))

(declare-fun m!3233303 () Bool)

(assert (=> d!814220 m!3233303))

(declare-fun m!3233305 () Bool)

(assert (=> b!2803540 m!3233305))

(assert (=> b!2803540 m!3233143))

(declare-fun m!3233307 () Bool)

(assert (=> b!2803540 m!3233307))

(assert (=> start!271132 d!814220))

(declare-fun d!814222 () Bool)

(declare-fun lt!1002737 () Int)

(assert (=> d!814222 (>= lt!1002737 0)))

(declare-fun e!1771875 () Int)

(assert (=> d!814222 (= lt!1002737 e!1771875)))

(declare-fun c!454504 () Bool)

(assert (=> d!814222 (= c!454504 ((_ is Nil!32609) testedP!183))))

(assert (=> d!814222 (= (size!25476 testedP!183) lt!1002737)))

(declare-fun b!2803546 () Bool)

(assert (=> b!2803546 (= e!1771875 0)))

(declare-fun b!2803547 () Bool)

(assert (=> b!2803547 (= e!1771875 (+ 1 (size!25476 (t!228879 testedP!183))))))

(assert (= (and d!814222 c!454504) b!2803546))

(assert (= (and d!814222 (not c!454504)) b!2803547))

(declare-fun m!3233309 () Bool)

(assert (=> b!2803547 m!3233309))

(assert (=> b!2803440 d!814222))

(declare-fun b!2803548 () Bool)

(declare-fun e!1771879 () Int)

(declare-fun call!182996 () Int)

(assert (=> b!2803548 (= e!1771879 call!182996)))

(declare-fun b!2803549 () Bool)

(declare-fun e!1771878 () Unit!46714)

(declare-fun Unit!46723 () Unit!46714)

(assert (=> b!2803549 (= e!1771878 Unit!46723)))

(declare-fun b!2803550 () Bool)

(declare-fun lt!1002761 () Int)

(assert (=> b!2803550 (= e!1771879 (ite (= lt!1002761 0) testedPSize!143 lt!1002761))))

(assert (=> b!2803550 (= lt!1002761 call!182996)))

(declare-fun lt!1002751 () List!32709)

(declare-fun c!454505 () Bool)

(declare-fun call!182997 () Bool)

(declare-fun lt!1002754 () List!32709)

(declare-fun lt!1002745 () List!32709)

(declare-fun bm!182987 () Bool)

(declare-fun lt!1002748 () List!32709)

(assert (=> bm!182987 (= call!182997 (isPrefix!2649 (ite c!454505 lt!1002754 lt!1002748) (ite c!454505 lt!1002745 lt!1002751)))))

(declare-fun bm!182988 () Bool)

(declare-fun call!183000 () Bool)

(assert (=> bm!182988 (= call!183000 (nullableZipper!668 z!3684))))

(declare-fun b!2803551 () Bool)

(declare-fun e!1771880 () List!32709)

(assert (=> b!2803551 (= e!1771880 (list!12231 totalInput!758))))

(declare-fun call!183001 () List!32709)

(declare-fun bm!182989 () Bool)

(declare-fun lt!1002768 () tuple2!33288)

(assert (=> bm!182989 (= call!183001 (list!12231 (ite c!454505 totalInput!758 (_1!19737 lt!1002768))))))

(declare-fun b!2803552 () Bool)

(declare-fun c!454508 () Bool)

(assert (=> b!2803552 (= c!454508 call!183000)))

(declare-fun lt!1002742 () Unit!46714)

(declare-fun lt!1002740 () Unit!46714)

(assert (=> b!2803552 (= lt!1002742 lt!1002740)))

(declare-fun lt!1002772 () List!32709)

(assert (=> b!2803552 (= lt!1002772 testedP!183)))

(declare-fun call!182994 () Unit!46714)

(assert (=> b!2803552 (= lt!1002740 call!182994)))

(assert (=> b!2803552 (= lt!1002772 call!183001)))

(declare-fun lt!1002771 () Unit!46714)

(declare-fun lt!1002739 () Unit!46714)

(assert (=> b!2803552 (= lt!1002771 lt!1002739)))

(assert (=> b!2803552 call!182997))

(declare-fun call!182993 () Unit!46714)

(assert (=> b!2803552 (= lt!1002739 call!182993)))

(assert (=> b!2803552 (= lt!1002745 call!183001)))

(assert (=> b!2803552 (= lt!1002754 call!183001)))

(declare-fun e!1771877 () Int)

(declare-fun e!1771876 () Int)

(assert (=> b!2803552 (= e!1771877 e!1771876)))

(declare-fun bm!182990 () Bool)

(declare-fun call!182999 () List!32709)

(declare-fun call!182995 () C!16628)

(assert (=> bm!182990 (= call!182999 (++!8037 testedP!183 (Cons!32609 call!182995 Nil!32609)))))

(declare-fun bm!182991 () Bool)

(declare-fun c!454510 () Bool)

(assert (=> bm!182991 (= c!454510 c!454505)))

(declare-fun lt!1002779 () List!32709)

(assert (=> bm!182991 (= call!182994 (lemmaIsPrefixSameLengthThenSameList!503 (ite c!454505 lt!1002772 lt!1002779) testedP!183 e!1771880))))

(declare-fun b!2803553 () Bool)

(assert (=> b!2803553 (= e!1771876 0)))

(declare-fun b!2803554 () Bool)

(declare-fun e!1771881 () Int)

(assert (=> b!2803554 (= e!1771881 0)))

(declare-fun bm!182992 () Bool)

(declare-fun call!182998 () (InoxSet Context!4906))

(assert (=> bm!182992 (= call!182998 (derivationStepZipper!383 z!3684 call!182995))))

(declare-fun b!2803555 () Bool)

(assert (=> b!2803555 (= e!1771876 testedPSize!143)))

(declare-fun b!2803556 () Bool)

(declare-fun Unit!46724 () Unit!46714)

(assert (=> b!2803556 (= e!1771878 Unit!46724)))

(assert (=> b!2803556 (= lt!1002748 (list!12231 totalInput!758))))

(assert (=> b!2803556 (= lt!1002751 (list!12231 totalInput!758))))

(declare-fun lt!1002773 () Unit!46714)

(assert (=> b!2803556 (= lt!1002773 call!182993)))

(assert (=> b!2803556 call!182997))

(declare-fun lt!1002775 () Unit!46714)

(assert (=> b!2803556 (= lt!1002775 lt!1002773)))

(assert (=> b!2803556 (= lt!1002779 (list!12231 totalInput!758))))

(declare-fun lt!1002749 () Unit!46714)

(assert (=> b!2803556 (= lt!1002749 call!182994)))

(assert (=> b!2803556 (= lt!1002779 testedP!183)))

(declare-fun lt!1002757 () Unit!46714)

(assert (=> b!2803556 (= lt!1002757 lt!1002749)))

(assert (=> b!2803556 false))

(declare-fun call!182992 () List!32709)

(declare-fun bm!182993 () Bool)

(assert (=> bm!182993 (= call!182996 (findLongestMatchInnerZipperFast!57 call!182998 call!182999 (+ testedPSize!143 1) call!182992 totalInput!758 totalInputSize!205))))

(declare-fun b!2803557 () Bool)

(declare-fun c!454509 () Bool)

(assert (=> b!2803557 (= c!454509 call!183000)))

(declare-fun lt!1002760 () Unit!46714)

(declare-fun lt!1002767 () Unit!46714)

(assert (=> b!2803557 (= lt!1002760 lt!1002767)))

(declare-fun lt!1002747 () List!32709)

(declare-fun lt!1002777 () C!16628)

(declare-fun lt!1002764 () List!32709)

(assert (=> b!2803557 (= (++!8037 (++!8037 testedP!183 (Cons!32609 lt!1002777 Nil!32609)) lt!1002764) lt!1002747)))

(assert (=> b!2803557 (= lt!1002767 (lemmaMoveElementToOtherListKeepsConcatEq!904 testedP!183 lt!1002777 lt!1002764 lt!1002747))))

(assert (=> b!2803557 (= lt!1002747 (list!12231 totalInput!758))))

(assert (=> b!2803557 (= lt!1002764 (tail!4440 testedSuffix!143))))

(assert (=> b!2803557 (= lt!1002777 (apply!7631 totalInput!758 testedPSize!143))))

(declare-fun lt!1002770 () Unit!46714)

(declare-fun lt!1002759 () Unit!46714)

(assert (=> b!2803557 (= lt!1002770 lt!1002759)))

(declare-fun lt!1002756 () List!32709)

(assert (=> b!2803557 (isPrefix!2649 (++!8037 testedP!183 (Cons!32609 (head!6213 (getSuffix!1322 lt!1002756 testedP!183)) Nil!32609)) lt!1002756)))

(assert (=> b!2803557 (= lt!1002759 (lemmaAddHeadSuffixToPrefixStillPrefix!496 testedP!183 lt!1002756))))

(assert (=> b!2803557 (= lt!1002756 (list!12231 totalInput!758))))

(declare-fun lt!1002776 () Unit!46714)

(assert (=> b!2803557 (= lt!1002776 e!1771878)))

(declare-fun c!454507 () Bool)

(assert (=> b!2803557 (= c!454507 (= (size!25476 testedP!183) (size!25475 totalInput!758)))))

(declare-fun lt!1002769 () Unit!46714)

(declare-fun lt!1002738 () Unit!46714)

(assert (=> b!2803557 (= lt!1002769 lt!1002738)))

(declare-fun lt!1002766 () List!32709)

(assert (=> b!2803557 (<= (size!25476 testedP!183) (size!25476 lt!1002766))))

(assert (=> b!2803557 (= lt!1002738 (lemmaIsPrefixThenSmallerEqSize!304 testedP!183 lt!1002766))))

(assert (=> b!2803557 (= lt!1002766 (list!12231 totalInput!758))))

(declare-fun lt!1002746 () Unit!46714)

(declare-fun lt!1002758 () Unit!46714)

(assert (=> b!2803557 (= lt!1002746 lt!1002758)))

(declare-fun lt!1002755 () List!32709)

(assert (=> b!2803557 (= (head!6213 (drop!1760 lt!1002755 testedPSize!143)) (apply!7632 lt!1002755 testedPSize!143))))

(assert (=> b!2803557 (= lt!1002758 (lemmaDropApply!964 lt!1002755 testedPSize!143))))

(assert (=> b!2803557 (= lt!1002755 (list!12231 totalInput!758))))

(declare-fun lt!1002743 () Unit!46714)

(declare-fun lt!1002774 () Unit!46714)

(assert (=> b!2803557 (= lt!1002743 lt!1002774)))

(declare-fun lt!1002763 () List!32709)

(declare-fun lt!1002744 () List!32709)

(assert (=> b!2803557 (and (= lt!1002763 testedP!183) (= lt!1002744 testedSuffix!143))))

(assert (=> b!2803557 (= lt!1002774 (lemmaConcatSameAndSameSizesThenSameLists!394 lt!1002763 lt!1002744 testedP!183 testedSuffix!143))))

(assert (=> b!2803557 (= lt!1002744 (list!12231 (_2!19737 lt!1002768)))))

(assert (=> b!2803557 (= lt!1002763 call!183001)))

(assert (=> b!2803557 (= lt!1002768 (splitAt!210 totalInput!758 testedPSize!143))))

(assert (=> b!2803557 (= e!1771877 e!1771879)))

(declare-fun b!2803558 () Bool)

(assert (=> b!2803558 (= e!1771881 e!1771877)))

(assert (=> b!2803558 (= c!454505 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2803559 () Bool)

(assert (=> b!2803559 (= e!1771880 call!183001)))

(declare-fun bm!182994 () Bool)

(assert (=> bm!182994 (= call!182995 (apply!7631 totalInput!758 testedPSize!143))))

(declare-fun bm!182995 () Bool)

(assert (=> bm!182995 (= call!182993 (lemmaIsPrefixRefl!1727 (ite c!454505 lt!1002754 lt!1002748) (ite c!454505 lt!1002745 lt!1002751)))))

(declare-fun bm!182996 () Bool)

(assert (=> bm!182996 (= call!182992 (tail!4440 testedSuffix!143))))

(declare-fun d!814224 () Bool)

(declare-fun lt!1002741 () Int)

(assert (=> d!814224 (= (size!25476 (_1!19738 (findLongestMatchInnerZipper!31 z!3684 testedP!183 testedPSize!143 testedSuffix!143 (list!12231 totalInput!758) totalInputSize!205))) lt!1002741)))

(assert (=> d!814224 (= lt!1002741 e!1771881)))

(declare-fun c!454506 () Bool)

(assert (=> d!814224 (= c!454506 (lostCauseZipper!517 z!3684))))

(declare-fun lt!1002765 () Unit!46714)

(declare-fun Unit!46725 () Unit!46714)

(assert (=> d!814224 (= lt!1002765 Unit!46725)))

(assert (=> d!814224 (= (getSuffix!1322 (list!12231 totalInput!758) testedP!183) testedSuffix!143)))

(declare-fun lt!1002753 () Unit!46714)

(declare-fun lt!1002752 () Unit!46714)

(assert (=> d!814224 (= lt!1002753 lt!1002752)))

(declare-fun lt!1002750 () List!32709)

(assert (=> d!814224 (= testedSuffix!143 lt!1002750)))

(assert (=> d!814224 (= lt!1002752 (lemmaSamePrefixThenSameSuffix!1220 testedP!183 testedSuffix!143 testedP!183 lt!1002750 (list!12231 totalInput!758)))))

(assert (=> d!814224 (= lt!1002750 (getSuffix!1322 (list!12231 totalInput!758) testedP!183))))

(declare-fun lt!1002762 () Unit!46714)

(declare-fun lt!1002778 () Unit!46714)

(assert (=> d!814224 (= lt!1002762 lt!1002778)))

(assert (=> d!814224 (isPrefix!2649 testedP!183 (++!8037 testedP!183 testedSuffix!143))))

(assert (=> d!814224 (= lt!1002778 (lemmaConcatTwoListThenFirstIsPrefix!1754 testedP!183 testedSuffix!143))))

(assert (=> d!814224 (= (++!8037 testedP!183 testedSuffix!143) (list!12231 totalInput!758))))

(assert (=> d!814224 (= (findLongestMatchInnerZipperFast!57 z!3684 testedP!183 testedPSize!143 testedSuffix!143 totalInput!758 totalInputSize!205) lt!1002741)))

(assert (= (and d!814224 c!454506) b!2803554))

(assert (= (and d!814224 (not c!454506)) b!2803558))

(assert (= (and b!2803558 c!454505) b!2803552))

(assert (= (and b!2803558 (not c!454505)) b!2803557))

(assert (= (and b!2803552 c!454508) b!2803555))

(assert (= (and b!2803552 (not c!454508)) b!2803553))

(assert (= (and b!2803557 c!454507) b!2803556))

(assert (= (and b!2803557 (not c!454507)) b!2803549))

(assert (= (and b!2803557 c!454509) b!2803550))

(assert (= (and b!2803557 (not c!454509)) b!2803548))

(assert (= (or b!2803550 b!2803548) bm!182996))

(assert (= (or b!2803550 b!2803548) bm!182994))

(assert (= (or b!2803550 b!2803548) bm!182990))

(assert (= (or b!2803550 b!2803548) bm!182992))

(assert (= (or b!2803550 b!2803548) bm!182993))

(assert (= (or b!2803552 b!2803556) bm!182987))

(assert (= (or b!2803552 b!2803557) bm!182988))

(assert (= (or b!2803552 b!2803557) bm!182989))

(assert (= (or b!2803552 b!2803556) bm!182995))

(assert (= (or b!2803552 b!2803556) bm!182991))

(assert (= (and bm!182991 c!454510) b!2803559))

(assert (= (and bm!182991 (not c!454510)) b!2803551))

(assert (=> b!2803556 m!3233051))

(assert (=> b!2803557 m!3233103))

(assert (=> b!2803557 m!3233111))

(assert (=> b!2803557 m!3233083))

(declare-fun m!3233311 () Bool)

(assert (=> b!2803557 m!3233311))

(declare-fun m!3233313 () Bool)

(assert (=> b!2803557 m!3233313))

(declare-fun m!3233315 () Bool)

(assert (=> b!2803557 m!3233315))

(declare-fun m!3233317 () Bool)

(assert (=> b!2803557 m!3233317))

(declare-fun m!3233319 () Bool)

(assert (=> b!2803557 m!3233319))

(declare-fun m!3233321 () Bool)

(assert (=> b!2803557 m!3233321))

(assert (=> b!2803557 m!3233137))

(declare-fun m!3233323 () Bool)

(assert (=> b!2803557 m!3233323))

(declare-fun m!3233325 () Bool)

(assert (=> b!2803557 m!3233325))

(assert (=> b!2803557 m!3233143))

(declare-fun m!3233327 () Bool)

(assert (=> b!2803557 m!3233327))

(assert (=> b!2803557 m!3233323))

(declare-fun m!3233329 () Bool)

(assert (=> b!2803557 m!3233329))

(assert (=> b!2803557 m!3233321))

(declare-fun m!3233331 () Bool)

(assert (=> b!2803557 m!3233331))

(declare-fun m!3233333 () Bool)

(assert (=> b!2803557 m!3233333))

(declare-fun m!3233335 () Bool)

(assert (=> b!2803557 m!3233335))

(assert (=> b!2803557 m!3233317))

(assert (=> b!2803557 m!3233327))

(declare-fun m!3233337 () Bool)

(assert (=> b!2803557 m!3233337))

(assert (=> b!2803557 m!3233051))

(declare-fun m!3233339 () Bool)

(assert (=> b!2803557 m!3233339))

(declare-fun m!3233341 () Bool)

(assert (=> b!2803557 m!3233341))

(assert (=> d!814224 m!3233051))

(declare-fun m!3233343 () Bool)

(assert (=> d!814224 m!3233343))

(assert (=> d!814224 m!3233059))

(assert (=> d!814224 m!3233271))

(assert (=> d!814224 m!3233079))

(assert (=> d!814224 m!3233059))

(assert (=> d!814224 m!3233051))

(declare-fun m!3233345 () Bool)

(assert (=> d!814224 m!3233345))

(declare-fun m!3233347 () Bool)

(assert (=> d!814224 m!3233347))

(assert (=> d!814224 m!3233051))

(declare-fun m!3233349 () Bool)

(assert (=> d!814224 m!3233349))

(assert (=> d!814224 m!3233039))

(assert (=> d!814224 m!3233051))

(declare-fun m!3233351 () Bool)

(assert (=> bm!182987 m!3233351))

(declare-fun m!3233353 () Bool)

(assert (=> bm!182991 m!3233353))

(declare-fun m!3233355 () Bool)

(assert (=> bm!182990 m!3233355))

(declare-fun m!3233357 () Bool)

(assert (=> bm!182989 m!3233357))

(declare-fun m!3233359 () Bool)

(assert (=> bm!182995 m!3233359))

(declare-fun m!3233361 () Bool)

(assert (=> bm!182993 m!3233361))

(assert (=> b!2803551 m!3233051))

(assert (=> bm!182994 m!3233137))

(assert (=> bm!182996 m!3233111))

(assert (=> bm!182988 m!3233063))

(declare-fun m!3233363 () Bool)

(assert (=> bm!182992 m!3233363))

(assert (=> b!2803434 d!814224))

(declare-fun d!814226 () Bool)

(assert (=> d!814226 (= (array_inv!4601 (_keys!4359 (v!34209 (underlying!8321 (v!34210 (underlying!8322 (cache!4108 cacheUp!890))))))) (bvsge (size!25473 (_keys!4359 (v!34209 (underlying!8321 (v!34210 (underlying!8322 (cache!4108 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2803425 d!814226))

(declare-fun d!814228 () Bool)

(assert (=> d!814228 (= (array_inv!4602 (_values!4340 (v!34209 (underlying!8321 (v!34210 (underlying!8322 (cache!4108 cacheUp!890))))))) (bvsge (size!25472 (_values!4340 (v!34209 (underlying!8321 (v!34210 (underlying!8322 (cache!4108 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2803425 d!814228))

(declare-fun d!814230 () Bool)

(assert (=> d!814230 (isPrefix!2649 lt!1002535 lt!1002535)))

(declare-fun lt!1002782 () Unit!46714)

(declare-fun choose!16538 (List!32709 List!32709) Unit!46714)

(assert (=> d!814230 (= lt!1002782 (choose!16538 lt!1002535 lt!1002535))))

(assert (=> d!814230 (= (lemmaIsPrefixRefl!1727 lt!1002535 lt!1002535) lt!1002782)))

(declare-fun bs!516077 () Bool)

(assert (= bs!516077 d!814230))

(assert (=> bs!516077 m!3233101))

(declare-fun m!3233365 () Bool)

(assert (=> bs!516077 m!3233365))

(assert (=> bm!182950 d!814230))

(declare-fun d!814232 () Bool)

(declare-fun e!1771884 () Bool)

(assert (=> d!814232 e!1771884))

(declare-fun res!1168123 () Bool)

(assert (=> d!814232 (=> (not res!1168123) (not e!1771884))))

(declare-fun lt!1002785 () tuple3!5242)

(assert (=> d!814232 (= res!1168123 (valid!3179 (_2!19735 lt!1002785)))))

(declare-fun choose!16539 (CacheUp!2668 CacheDown!2794 (InoxSet Context!4906) List!32709 Int List!32709 BalanceConc!19798 Int) tuple3!5242)

(assert (=> d!814232 (= lt!1002785 (choose!16539 (ite c!454455 (_2!19734 lt!1002553) (_2!19734 lt!1002533)) (ite c!454455 (_3!3090 lt!1002553) (_3!3090 lt!1002533)) (ite c!454455 (_1!19734 lt!1002553) (_1!19734 lt!1002533)) lt!1002542 (+ 1 testedPSize!143) lt!1002537 totalInput!758 totalInputSize!205))))

(assert (=> d!814232 (= (++!8037 lt!1002542 lt!1002537) (list!12231 totalInput!758))))

(assert (=> d!814232 (= (findLongestMatchInnerZipperFastMem!51 (ite c!454455 (_2!19734 lt!1002553) (_2!19734 lt!1002533)) (ite c!454455 (_3!3090 lt!1002553) (_3!3090 lt!1002533)) (ite c!454455 (_1!19734 lt!1002553) (_1!19734 lt!1002533)) lt!1002542 (+ 1 testedPSize!143) lt!1002537 totalInput!758 totalInputSize!205) lt!1002785)))

(declare-fun b!2803564 () Bool)

(declare-fun res!1168124 () Bool)

(assert (=> b!2803564 (=> (not res!1168124) (not e!1771884))))

(assert (=> b!2803564 (= res!1168124 (valid!3178 (_3!3091 lt!1002785)))))

(declare-fun b!2803565 () Bool)

(assert (=> b!2803565 (= e!1771884 (= (_1!19735 lt!1002785) (findLongestMatchInnerZipperFast!57 (ite c!454455 (_1!19734 lt!1002553) (_1!19734 lt!1002533)) lt!1002542 (+ 1 testedPSize!143) lt!1002537 totalInput!758 totalInputSize!205)))))

(assert (= (and d!814232 res!1168123) b!2803564))

(assert (= (and b!2803564 res!1168124) b!2803565))

(declare-fun m!3233367 () Bool)

(assert (=> d!814232 m!3233367))

(declare-fun m!3233369 () Bool)

(assert (=> d!814232 m!3233369))

(assert (=> d!814232 m!3233133))

(assert (=> d!814232 m!3233051))

(declare-fun m!3233371 () Bool)

(assert (=> b!2803564 m!3233371))

(assert (=> b!2803565 m!3233099))

(assert (=> bm!182946 d!814232))

(declare-fun d!814234 () Bool)

(assert (=> d!814234 (= (head!6213 lt!1002558) (h!38029 lt!1002558))))

(assert (=> b!2803433 d!814234))

(declare-fun d!814236 () Bool)

(assert (=> d!814236 (= (head!6213 (drop!1760 lt!1002535 testedPSize!143)) (h!38029 (drop!1760 lt!1002535 testedPSize!143)))))

(assert (=> b!2803433 d!814236))

(declare-fun d!814238 () Bool)

(declare-fun lt!1002788 () C!16628)

(assert (=> d!814238 (= lt!1002788 (apply!7632 (list!12231 totalInput!758) testedPSize!143))))

(declare-fun apply!7633 (Conc!10092 Int) C!16628)

(assert (=> d!814238 (= lt!1002788 (apply!7633 (c!454461 totalInput!758) testedPSize!143))))

(declare-fun e!1771887 () Bool)

(assert (=> d!814238 e!1771887))

(declare-fun res!1168127 () Bool)

(assert (=> d!814238 (=> (not res!1168127) (not e!1771887))))

(assert (=> d!814238 (= res!1168127 (<= 0 testedPSize!143))))

(assert (=> d!814238 (= (apply!7631 totalInput!758 testedPSize!143) lt!1002788)))

(declare-fun b!2803568 () Bool)

(assert (=> b!2803568 (= e!1771887 (< testedPSize!143 (size!25475 totalInput!758)))))

(assert (= (and d!814238 res!1168127) b!2803568))

(assert (=> d!814238 m!3233051))

(assert (=> d!814238 m!3233051))

(declare-fun m!3233373 () Bool)

(assert (=> d!814238 m!3233373))

(declare-fun m!3233375 () Bool)

(assert (=> d!814238 m!3233375))

(assert (=> b!2803568 m!3233083))

(assert (=> b!2803433 d!814238))

(declare-fun d!814240 () Bool)

(declare-fun e!1771890 () Bool)

(assert (=> d!814240 e!1771890))

(declare-fun res!1168132 () Bool)

(assert (=> d!814240 (=> (not res!1168132) (not e!1771890))))

(declare-fun lt!1002793 () tuple2!33288)

(assert (=> d!814240 (= res!1168132 (isBalanced!3079 (c!454461 (_1!19737 lt!1002793))))))

(declare-datatypes ((tuple2!33292 0))(
  ( (tuple2!33293 (_1!19739 Conc!10092) (_2!19739 Conc!10092)) )
))
(declare-fun lt!1002794 () tuple2!33292)

(assert (=> d!814240 (= lt!1002793 (tuple2!33289 (BalanceConc!19799 (_1!19739 lt!1002794)) (BalanceConc!19799 (_2!19739 lt!1002794))))))

(declare-fun splitAt!211 (Conc!10092 Int) tuple2!33292)

(assert (=> d!814240 (= lt!1002794 (splitAt!211 (c!454461 totalInput!758) testedPSize!143))))

(assert (=> d!814240 (isBalanced!3079 (c!454461 totalInput!758))))

(assert (=> d!814240 (= (splitAt!210 totalInput!758 testedPSize!143) lt!1002793)))

(declare-fun b!2803573 () Bool)

(declare-fun res!1168133 () Bool)

(assert (=> b!2803573 (=> (not res!1168133) (not e!1771890))))

(assert (=> b!2803573 (= res!1168133 (isBalanced!3079 (c!454461 (_2!19737 lt!1002793))))))

(declare-fun b!2803574 () Bool)

(declare-fun splitAtIndex!79 (List!32709 Int) tuple2!33290)

(assert (=> b!2803574 (= e!1771890 (= (tuple2!33291 (list!12231 (_1!19737 lt!1002793)) (list!12231 (_2!19737 lt!1002793))) (splitAtIndex!79 (list!12231 totalInput!758) testedPSize!143)))))

(assert (= (and d!814240 res!1168132) b!2803573))

(assert (= (and b!2803573 res!1168133) b!2803574))

(declare-fun m!3233377 () Bool)

(assert (=> d!814240 m!3233377))

(declare-fun m!3233379 () Bool)

(assert (=> d!814240 m!3233379))

(assert (=> d!814240 m!3233293))

(declare-fun m!3233381 () Bool)

(assert (=> b!2803573 m!3233381))

(declare-fun m!3233383 () Bool)

(assert (=> b!2803574 m!3233383))

(declare-fun m!3233385 () Bool)

(assert (=> b!2803574 m!3233385))

(assert (=> b!2803574 m!3233051))

(assert (=> b!2803574 m!3233051))

(declare-fun m!3233387 () Bool)

(assert (=> b!2803574 m!3233387))

(assert (=> b!2803433 d!814240))

(declare-fun d!814242 () Bool)

(assert (=> d!814242 (isPrefix!2649 (++!8037 testedP!183 (Cons!32609 (head!6213 (getSuffix!1322 lt!1002535 testedP!183)) Nil!32609)) lt!1002535)))

(declare-fun lt!1002797 () Unit!46714)

(declare-fun choose!16540 (List!32709 List!32709) Unit!46714)

(assert (=> d!814242 (= lt!1002797 (choose!16540 testedP!183 lt!1002535))))

(assert (=> d!814242 (isPrefix!2649 testedP!183 lt!1002535)))

(assert (=> d!814242 (= (lemmaAddHeadSuffixToPrefixStillPrefix!496 testedP!183 lt!1002535) lt!1002797)))

(declare-fun bs!516078 () Bool)

(assert (= bs!516078 d!814242))

(declare-fun m!3233389 () Bool)

(assert (=> bs!516078 m!3233389))

(declare-fun m!3233391 () Bool)

(assert (=> bs!516078 m!3233391))

(declare-fun m!3233393 () Bool)

(assert (=> bs!516078 m!3233393))

(assert (=> bs!516078 m!3233075))

(assert (=> bs!516078 m!3233391))

(assert (=> bs!516078 m!3233043))

(assert (=> bs!516078 m!3233043))

(declare-fun m!3233395 () Bool)

(assert (=> bs!516078 m!3233395))

(assert (=> b!2803433 d!814242))

(declare-fun b!2803593 () Bool)

(declare-fun e!1771903 () Int)

(declare-fun call!183004 () Int)

(assert (=> b!2803593 (= e!1771903 call!183004)))

(declare-fun b!2803594 () Bool)

(declare-fun e!1771901 () Int)

(assert (=> b!2803594 (= e!1771901 (- call!183004 testedPSize!143))))

(declare-fun b!2803595 () Bool)

(assert (=> b!2803595 (= e!1771901 0)))

(declare-fun b!2803596 () Bool)

(declare-fun e!1771904 () List!32709)

(assert (=> b!2803596 (= e!1771904 lt!1002535)))

(declare-fun b!2803597 () Bool)

(assert (=> b!2803597 (= e!1771903 e!1771901)))

(declare-fun c!454522 () Bool)

(assert (=> b!2803597 (= c!454522 (>= testedPSize!143 call!183004))))

(declare-fun d!814244 () Bool)

(declare-fun e!1771905 () Bool)

(assert (=> d!814244 e!1771905))

(declare-fun res!1168136 () Bool)

(assert (=> d!814244 (=> (not res!1168136) (not e!1771905))))

(declare-fun lt!1002800 () List!32709)

(assert (=> d!814244 (= res!1168136 (= ((_ map implies) (content!4549 lt!1002800) (content!4549 lt!1002535)) ((as const (InoxSet C!16628)) true)))))

(declare-fun e!1771902 () List!32709)

(assert (=> d!814244 (= lt!1002800 e!1771902)))

(declare-fun c!454519 () Bool)

(assert (=> d!814244 (= c!454519 ((_ is Nil!32609) lt!1002535))))

(assert (=> d!814244 (= (drop!1760 lt!1002535 testedPSize!143) lt!1002800)))

(declare-fun b!2803598 () Bool)

(assert (=> b!2803598 (= e!1771902 e!1771904)))

(declare-fun c!454521 () Bool)

(assert (=> b!2803598 (= c!454521 (<= testedPSize!143 0))))

(declare-fun b!2803599 () Bool)

(assert (=> b!2803599 (= e!1771905 (= (size!25476 lt!1002800) e!1771903))))

(declare-fun c!454520 () Bool)

(assert (=> b!2803599 (= c!454520 (<= testedPSize!143 0))))

(declare-fun bm!182999 () Bool)

(assert (=> bm!182999 (= call!183004 (size!25476 lt!1002535))))

(declare-fun b!2803600 () Bool)

(assert (=> b!2803600 (= e!1771902 Nil!32609)))

(declare-fun b!2803601 () Bool)

(assert (=> b!2803601 (= e!1771904 (drop!1760 (t!228879 lt!1002535) (- testedPSize!143 1)))))

(assert (= (and d!814244 c!454519) b!2803600))

(assert (= (and d!814244 (not c!454519)) b!2803598))

(assert (= (and b!2803598 c!454521) b!2803596))

(assert (= (and b!2803598 (not c!454521)) b!2803601))

(assert (= (and d!814244 res!1168136) b!2803599))

(assert (= (and b!2803599 c!454520) b!2803593))

(assert (= (and b!2803599 (not c!454520)) b!2803597))

(assert (= (and b!2803597 c!454522) b!2803595))

(assert (= (and b!2803597 (not c!454522)) b!2803594))

(assert (= (or b!2803593 b!2803597 b!2803594) bm!182999))

(declare-fun m!3233397 () Bool)

(assert (=> d!814244 m!3233397))

(declare-fun m!3233399 () Bool)

(assert (=> d!814244 m!3233399))

(declare-fun m!3233401 () Bool)

(assert (=> b!2803599 m!3233401))

(assert (=> bm!182999 m!3233117))

(declare-fun m!3233403 () Bool)

(assert (=> b!2803601 m!3233403))

(assert (=> b!2803433 d!814244))

(declare-fun e!1771906 () Bool)

(declare-fun b!2803605 () Bool)

(assert (=> b!2803605 (= e!1771906 (>= (size!25476 lt!1002535) (size!25476 (++!8037 testedP!183 (Cons!32609 (head!6213 lt!1002558) Nil!32609)))))))

(declare-fun d!814246 () Bool)

(assert (=> d!814246 e!1771906))

(declare-fun res!1168140 () Bool)

(assert (=> d!814246 (=> res!1168140 e!1771906)))

(declare-fun lt!1002801 () Bool)

(assert (=> d!814246 (= res!1168140 (not lt!1002801))))

(declare-fun e!1771907 () Bool)

(assert (=> d!814246 (= lt!1002801 e!1771907)))

(declare-fun res!1168138 () Bool)

(assert (=> d!814246 (=> res!1168138 e!1771907)))

(assert (=> d!814246 (= res!1168138 ((_ is Nil!32609) (++!8037 testedP!183 (Cons!32609 (head!6213 lt!1002558) Nil!32609))))))

(assert (=> d!814246 (= (isPrefix!2649 (++!8037 testedP!183 (Cons!32609 (head!6213 lt!1002558) Nil!32609)) lt!1002535) lt!1002801)))

(declare-fun b!2803604 () Bool)

(declare-fun e!1771908 () Bool)

(assert (=> b!2803604 (= e!1771908 (isPrefix!2649 (tail!4440 (++!8037 testedP!183 (Cons!32609 (head!6213 lt!1002558) Nil!32609))) (tail!4440 lt!1002535)))))

(declare-fun b!2803603 () Bool)

(declare-fun res!1168139 () Bool)

(assert (=> b!2803603 (=> (not res!1168139) (not e!1771908))))

(assert (=> b!2803603 (= res!1168139 (= (head!6213 (++!8037 testedP!183 (Cons!32609 (head!6213 lt!1002558) Nil!32609))) (head!6213 lt!1002535)))))

(declare-fun b!2803602 () Bool)

(assert (=> b!2803602 (= e!1771907 e!1771908)))

(declare-fun res!1168137 () Bool)

(assert (=> b!2803602 (=> (not res!1168137) (not e!1771908))))

(assert (=> b!2803602 (= res!1168137 (not ((_ is Nil!32609) lt!1002535)))))

(assert (= (and d!814246 (not res!1168138)) b!2803602))

(assert (= (and b!2803602 res!1168137) b!2803603))

(assert (= (and b!2803603 res!1168139) b!2803604))

(assert (= (and d!814246 (not res!1168140)) b!2803605))

(assert (=> b!2803605 m!3233117))

(assert (=> b!2803605 m!3233113))

(declare-fun m!3233405 () Bool)

(assert (=> b!2803605 m!3233405))

(assert (=> b!2803604 m!3233113))

(declare-fun m!3233407 () Bool)

(assert (=> b!2803604 m!3233407))

(assert (=> b!2803604 m!3233165))

(assert (=> b!2803604 m!3233407))

(assert (=> b!2803604 m!3233165))

(declare-fun m!3233409 () Bool)

(assert (=> b!2803604 m!3233409))

(assert (=> b!2803603 m!3233113))

(declare-fun m!3233411 () Bool)

(assert (=> b!2803603 m!3233411))

(assert (=> b!2803603 m!3233185))

(assert (=> b!2803433 d!814246))

(declare-fun b!2803607 () Bool)

(declare-fun e!1771909 () List!32709)

(assert (=> b!2803607 (= e!1771909 (Cons!32609 (h!38029 testedP!183) (++!8037 (t!228879 testedP!183) (Cons!32609 lt!1002534 Nil!32609))))))

(declare-fun b!2803606 () Bool)

(assert (=> b!2803606 (= e!1771909 (Cons!32609 lt!1002534 Nil!32609))))

(declare-fun d!814248 () Bool)

(declare-fun e!1771910 () Bool)

(assert (=> d!814248 e!1771910))

(declare-fun res!1168142 () Bool)

(assert (=> d!814248 (=> (not res!1168142) (not e!1771910))))

(declare-fun lt!1002802 () List!32709)

(assert (=> d!814248 (= res!1168142 (= (content!4549 lt!1002802) ((_ map or) (content!4549 testedP!183) (content!4549 (Cons!32609 lt!1002534 Nil!32609)))))))

(assert (=> d!814248 (= lt!1002802 e!1771909)))

(declare-fun c!454523 () Bool)

(assert (=> d!814248 (= c!454523 ((_ is Nil!32609) testedP!183))))

(assert (=> d!814248 (= (++!8037 testedP!183 (Cons!32609 lt!1002534 Nil!32609)) lt!1002802)))

(declare-fun b!2803608 () Bool)

(declare-fun res!1168141 () Bool)

(assert (=> b!2803608 (=> (not res!1168141) (not e!1771910))))

(assert (=> b!2803608 (= res!1168141 (= (size!25476 lt!1002802) (+ (size!25476 testedP!183) (size!25476 (Cons!32609 lt!1002534 Nil!32609)))))))

(declare-fun b!2803609 () Bool)

(assert (=> b!2803609 (= e!1771910 (or (not (= (Cons!32609 lt!1002534 Nil!32609) Nil!32609)) (= lt!1002802 testedP!183)))))

(assert (= (and d!814248 c!454523) b!2803606))

(assert (= (and d!814248 (not c!454523)) b!2803607))

(assert (= (and d!814248 res!1168142) b!2803608))

(assert (= (and b!2803608 res!1168141) b!2803609))

(declare-fun m!3233413 () Bool)

(assert (=> b!2803607 m!3233413))

(declare-fun m!3233415 () Bool)

(assert (=> d!814248 m!3233415))

(assert (=> d!814248 m!3233301))

(declare-fun m!3233417 () Bool)

(assert (=> d!814248 m!3233417))

(declare-fun m!3233419 () Bool)

(assert (=> b!2803608 m!3233419))

(assert (=> b!2803608 m!3233143))

(declare-fun m!3233421 () Bool)

(assert (=> b!2803608 m!3233421))

(assert (=> b!2803433 d!814248))

(declare-fun d!814250 () Bool)

(declare-fun lt!1002805 () C!16628)

(declare-fun contains!6021 (List!32709 C!16628) Bool)

(assert (=> d!814250 (contains!6021 lt!1002535 lt!1002805)))

(declare-fun e!1771916 () C!16628)

(assert (=> d!814250 (= lt!1002805 e!1771916)))

(declare-fun c!454526 () Bool)

(assert (=> d!814250 (= c!454526 (= testedPSize!143 0))))

(declare-fun e!1771915 () Bool)

(assert (=> d!814250 e!1771915))

(declare-fun res!1168145 () Bool)

(assert (=> d!814250 (=> (not res!1168145) (not e!1771915))))

(assert (=> d!814250 (= res!1168145 (<= 0 testedPSize!143))))

(assert (=> d!814250 (= (apply!7632 lt!1002535 testedPSize!143) lt!1002805)))

(declare-fun b!2803616 () Bool)

(assert (=> b!2803616 (= e!1771915 (< testedPSize!143 (size!25476 lt!1002535)))))

(declare-fun b!2803617 () Bool)

(assert (=> b!2803617 (= e!1771916 (head!6213 lt!1002535))))

(declare-fun b!2803618 () Bool)

(assert (=> b!2803618 (= e!1771916 (apply!7632 (tail!4440 lt!1002535) (- testedPSize!143 1)))))

(assert (= (and d!814250 res!1168145) b!2803616))

(assert (= (and d!814250 c!454526) b!2803617))

(assert (= (and d!814250 (not c!454526)) b!2803618))

(declare-fun m!3233423 () Bool)

(assert (=> d!814250 m!3233423))

(assert (=> b!2803616 m!3233117))

(assert (=> b!2803617 m!3233185))

(assert (=> b!2803618 m!3233165))

(assert (=> b!2803618 m!3233165))

(declare-fun m!3233425 () Bool)

(assert (=> b!2803618 m!3233425))

(assert (=> b!2803433 d!814250))

(declare-fun d!814252 () Bool)

(assert (=> d!814252 (= (tail!4440 testedSuffix!143) (t!228879 testedSuffix!143))))

(assert (=> b!2803433 d!814252))

(declare-fun b!2803620 () Bool)

(declare-fun e!1771917 () List!32709)

(assert (=> b!2803620 (= e!1771917 (Cons!32609 (h!38029 lt!1002542) (++!8037 (t!228879 lt!1002542) lt!1002537)))))

(declare-fun b!2803619 () Bool)

(assert (=> b!2803619 (= e!1771917 lt!1002537)))

(declare-fun d!814254 () Bool)

(declare-fun e!1771918 () Bool)

(assert (=> d!814254 e!1771918))

(declare-fun res!1168147 () Bool)

(assert (=> d!814254 (=> (not res!1168147) (not e!1771918))))

(declare-fun lt!1002806 () List!32709)

(assert (=> d!814254 (= res!1168147 (= (content!4549 lt!1002806) ((_ map or) (content!4549 lt!1002542) (content!4549 lt!1002537))))))

(assert (=> d!814254 (= lt!1002806 e!1771917)))

(declare-fun c!454527 () Bool)

(assert (=> d!814254 (= c!454527 ((_ is Nil!32609) lt!1002542))))

(assert (=> d!814254 (= (++!8037 lt!1002542 lt!1002537) lt!1002806)))

(declare-fun b!2803621 () Bool)

(declare-fun res!1168146 () Bool)

(assert (=> b!2803621 (=> (not res!1168146) (not e!1771918))))

(assert (=> b!2803621 (= res!1168146 (= (size!25476 lt!1002806) (+ (size!25476 lt!1002542) (size!25476 lt!1002537))))))

(declare-fun b!2803622 () Bool)

(assert (=> b!2803622 (= e!1771918 (or (not (= lt!1002537 Nil!32609)) (= lt!1002806 lt!1002542)))))

(assert (= (and d!814254 c!454527) b!2803619))

(assert (= (and d!814254 (not c!454527)) b!2803620))

(assert (= (and d!814254 res!1168147) b!2803621))

(assert (= (and b!2803621 res!1168146) b!2803622))

(declare-fun m!3233427 () Bool)

(assert (=> b!2803620 m!3233427))

(declare-fun m!3233429 () Bool)

(assert (=> d!814254 m!3233429))

(declare-fun m!3233431 () Bool)

(assert (=> d!814254 m!3233431))

(declare-fun m!3233433 () Bool)

(assert (=> d!814254 m!3233433))

(declare-fun m!3233435 () Bool)

(assert (=> b!2803621 m!3233435))

(assert (=> b!2803621 m!3233209))

(declare-fun m!3233437 () Bool)

(assert (=> b!2803621 m!3233437))

(assert (=> b!2803433 d!814254))

(declare-fun d!814256 () Bool)

(declare-fun lt!1002807 () Int)

(assert (=> d!814256 (>= lt!1002807 0)))

(declare-fun e!1771919 () Int)

(assert (=> d!814256 (= lt!1002807 e!1771919)))

(declare-fun c!454528 () Bool)

(assert (=> d!814256 (= c!454528 ((_ is Nil!32609) lt!1002535))))

(assert (=> d!814256 (= (size!25476 lt!1002535) lt!1002807)))

(declare-fun b!2803623 () Bool)

(assert (=> b!2803623 (= e!1771919 0)))

(declare-fun b!2803624 () Bool)

(assert (=> b!2803624 (= e!1771919 (+ 1 (size!25476 (t!228879 lt!1002535))))))

(assert (= (and d!814256 c!454528) b!2803623))

(assert (= (and d!814256 (not c!454528)) b!2803624))

(declare-fun m!3233439 () Bool)

(assert (=> b!2803624 m!3233439))

(assert (=> b!2803433 d!814256))

(declare-fun d!814258 () Bool)

(assert (=> d!814258 (and (= lt!1002546 testedP!183) (= lt!1002554 testedSuffix!143))))

(declare-fun lt!1002810 () Unit!46714)

(declare-fun choose!16541 (List!32709 List!32709 List!32709 List!32709) Unit!46714)

(assert (=> d!814258 (= lt!1002810 (choose!16541 lt!1002546 lt!1002554 testedP!183 testedSuffix!143))))

(assert (=> d!814258 (= (++!8037 lt!1002546 lt!1002554) (++!8037 testedP!183 testedSuffix!143))))

(assert (=> d!814258 (= (lemmaConcatSameAndSameSizesThenSameLists!394 lt!1002546 lt!1002554 testedP!183 testedSuffix!143) lt!1002810)))

(declare-fun bs!516079 () Bool)

(assert (= bs!516079 d!814258))

(declare-fun m!3233441 () Bool)

(assert (=> bs!516079 m!3233441))

(declare-fun m!3233443 () Bool)

(assert (=> bs!516079 m!3233443))

(assert (=> bs!516079 m!3233059))

(assert (=> b!2803433 d!814258))

(declare-fun d!814260 () Bool)

(assert (=> d!814260 (= (++!8037 (++!8037 testedP!183 (Cons!32609 lt!1002534 Nil!32609)) lt!1002537) lt!1002535)))

(declare-fun lt!1002813 () Unit!46714)

(declare-fun choose!16542 (List!32709 C!16628 List!32709 List!32709) Unit!46714)

(assert (=> d!814260 (= lt!1002813 (choose!16542 testedP!183 lt!1002534 lt!1002537 lt!1002535))))

(assert (=> d!814260 (= (++!8037 testedP!183 (Cons!32609 lt!1002534 lt!1002537)) lt!1002535)))

(assert (=> d!814260 (= (lemmaMoveElementToOtherListKeepsConcatEq!904 testedP!183 lt!1002534 lt!1002537 lt!1002535) lt!1002813)))

(declare-fun bs!516080 () Bool)

(assert (= bs!516080 d!814260))

(assert (=> bs!516080 m!3233135))

(assert (=> bs!516080 m!3233135))

(declare-fun m!3233445 () Bool)

(assert (=> bs!516080 m!3233445))

(declare-fun m!3233447 () Bool)

(assert (=> bs!516080 m!3233447))

(declare-fun m!3233449 () Bool)

(assert (=> bs!516080 m!3233449))

(assert (=> b!2803433 d!814260))

(declare-fun d!814262 () Bool)

(assert (=> d!814262 (= (list!12231 (_2!19737 lt!1002532)) (list!12232 (c!454461 (_2!19737 lt!1002532))))))

(declare-fun bs!516081 () Bool)

(assert (= bs!516081 d!814262))

(declare-fun m!3233451 () Bool)

(assert (=> bs!516081 m!3233451))

(assert (=> b!2803433 d!814262))

(declare-fun d!814264 () Bool)

(assert (=> d!814264 (<= (size!25476 testedP!183) (size!25476 lt!1002535))))

(declare-fun lt!1002816 () Unit!46714)

(declare-fun choose!16543 (List!32709 List!32709) Unit!46714)

(assert (=> d!814264 (= lt!1002816 (choose!16543 testedP!183 lt!1002535))))

(assert (=> d!814264 (isPrefix!2649 testedP!183 lt!1002535)))

(assert (=> d!814264 (= (lemmaIsPrefixThenSmallerEqSize!304 testedP!183 lt!1002535) lt!1002816)))

(declare-fun bs!516082 () Bool)

(assert (= bs!516082 d!814264))

(assert (=> bs!516082 m!3233143))

(assert (=> bs!516082 m!3233117))

(declare-fun m!3233453 () Bool)

(assert (=> bs!516082 m!3233453))

(assert (=> bs!516082 m!3233075))

(assert (=> b!2803433 d!814264))

(declare-fun b!2803626 () Bool)

(declare-fun e!1771920 () List!32709)

(assert (=> b!2803626 (= e!1771920 (Cons!32609 (h!38029 testedP!183) (++!8037 (t!228879 testedP!183) (Cons!32609 (head!6213 lt!1002558) Nil!32609))))))

(declare-fun b!2803625 () Bool)

(assert (=> b!2803625 (= e!1771920 (Cons!32609 (head!6213 lt!1002558) Nil!32609))))

(declare-fun d!814266 () Bool)

(declare-fun e!1771921 () Bool)

(assert (=> d!814266 e!1771921))

(declare-fun res!1168149 () Bool)

(assert (=> d!814266 (=> (not res!1168149) (not e!1771921))))

(declare-fun lt!1002817 () List!32709)

(assert (=> d!814266 (= res!1168149 (= (content!4549 lt!1002817) ((_ map or) (content!4549 testedP!183) (content!4549 (Cons!32609 (head!6213 lt!1002558) Nil!32609)))))))

(assert (=> d!814266 (= lt!1002817 e!1771920)))

(declare-fun c!454529 () Bool)

(assert (=> d!814266 (= c!454529 ((_ is Nil!32609) testedP!183))))

(assert (=> d!814266 (= (++!8037 testedP!183 (Cons!32609 (head!6213 lt!1002558) Nil!32609)) lt!1002817)))

(declare-fun b!2803627 () Bool)

(declare-fun res!1168148 () Bool)

(assert (=> b!2803627 (=> (not res!1168148) (not e!1771921))))

(assert (=> b!2803627 (= res!1168148 (= (size!25476 lt!1002817) (+ (size!25476 testedP!183) (size!25476 (Cons!32609 (head!6213 lt!1002558) Nil!32609)))))))

(declare-fun b!2803628 () Bool)

(assert (=> b!2803628 (= e!1771921 (or (not (= (Cons!32609 (head!6213 lt!1002558) Nil!32609) Nil!32609)) (= lt!1002817 testedP!183)))))

(assert (= (and d!814266 c!454529) b!2803625))

(assert (= (and d!814266 (not c!454529)) b!2803626))

(assert (= (and d!814266 res!1168149) b!2803627))

(assert (= (and b!2803627 res!1168148) b!2803628))

(declare-fun m!3233455 () Bool)

(assert (=> b!2803626 m!3233455))

(declare-fun m!3233457 () Bool)

(assert (=> d!814266 m!3233457))

(assert (=> d!814266 m!3233301))

(declare-fun m!3233459 () Bool)

(assert (=> d!814266 m!3233459))

(declare-fun m!3233461 () Bool)

(assert (=> b!2803627 m!3233461))

(assert (=> b!2803627 m!3233143))

(declare-fun m!3233463 () Bool)

(assert (=> b!2803627 m!3233463))

(assert (=> b!2803433 d!814266))

(declare-fun d!814268 () Bool)

(assert (=> d!814268 (= (list!12231 (_1!19737 lt!1002532)) (list!12232 (c!454461 (_1!19737 lt!1002532))))))

(declare-fun bs!516083 () Bool)

(assert (= bs!516083 d!814268))

(declare-fun m!3233465 () Bool)

(assert (=> bs!516083 m!3233465))

(assert (=> b!2803433 d!814268))

(declare-fun d!814270 () Bool)

(assert (=> d!814270 (= (head!6213 (drop!1760 lt!1002535 testedPSize!143)) (apply!7632 lt!1002535 testedPSize!143))))

(declare-fun lt!1002820 () Unit!46714)

(declare-fun choose!16544 (List!32709 Int) Unit!46714)

(assert (=> d!814270 (= lt!1002820 (choose!16544 lt!1002535 testedPSize!143))))

(declare-fun e!1771924 () Bool)

(assert (=> d!814270 e!1771924))

(declare-fun res!1168152 () Bool)

(assert (=> d!814270 (=> (not res!1168152) (not e!1771924))))

(assert (=> d!814270 (= res!1168152 (>= testedPSize!143 0))))

(assert (=> d!814270 (= (lemmaDropApply!964 lt!1002535 testedPSize!143) lt!1002820)))

(declare-fun b!2803631 () Bool)

(assert (=> b!2803631 (= e!1771924 (< testedPSize!143 (size!25476 lt!1002535)))))

(assert (= (and d!814270 res!1168152) b!2803631))

(assert (=> d!814270 m!3233127))

(assert (=> d!814270 m!3233127))

(assert (=> d!814270 m!3233131))

(assert (=> d!814270 m!3233119))

(declare-fun m!3233467 () Bool)

(assert (=> d!814270 m!3233467))

(assert (=> b!2803631 m!3233117))

(assert (=> b!2803433 d!814270))

(declare-fun b!2803640 () Bool)

(declare-fun e!1771931 () Bool)

(declare-fun tp!893854 () Bool)

(assert (=> b!2803640 (= e!1771931 tp!893854)))

(declare-fun setElem!24669 () Context!4906)

(declare-fun setNonEmpty!24669 () Bool)

(declare-fun tp!893850 () Bool)

(declare-fun e!1771932 () Bool)

(declare-fun setRes!24669 () Bool)

(assert (=> setNonEmpty!24669 (= setRes!24669 (and tp!893850 (inv!44284 setElem!24669) e!1771932))))

(declare-fun setRest!24669 () (InoxSet Context!4906))

(assert (=> setNonEmpty!24669 (= (_2!19733 (h!38030 mapDefault!18445)) ((_ map or) (store ((as const (Array Context!4906 Bool)) false) setElem!24669 true) setRest!24669))))

(declare-fun e!1771933 () Bool)

(assert (=> b!2803410 (= tp!893828 e!1771933)))

(declare-fun setIsEmpty!24669 () Bool)

(assert (=> setIsEmpty!24669 setRes!24669))

(declare-fun tp!893852 () Bool)

(declare-fun b!2803641 () Bool)

(declare-fun tp!893853 () Bool)

(assert (=> b!2803641 (= e!1771933 (and tp!893853 (inv!44284 (_2!19732 (_1!19733 (h!38030 mapDefault!18445)))) e!1771931 tp_is_empty!14283 setRes!24669 tp!893852))))

(declare-fun condSetEmpty!24669 () Bool)

(assert (=> b!2803641 (= condSetEmpty!24669 (= (_2!19733 (h!38030 mapDefault!18445)) ((as const (Array Context!4906 Bool)) false)))))

(declare-fun b!2803642 () Bool)

(declare-fun tp!893851 () Bool)

(assert (=> b!2803642 (= e!1771932 tp!893851)))

(assert (= b!2803641 b!2803640))

(assert (= (and b!2803641 condSetEmpty!24669) setIsEmpty!24669))

(assert (= (and b!2803641 (not condSetEmpty!24669)) setNonEmpty!24669))

(assert (= setNonEmpty!24669 b!2803642))

(assert (= (and b!2803410 ((_ is Cons!32610) mapDefault!18445)) b!2803641))

(declare-fun m!3233469 () Bool)

(assert (=> setNonEmpty!24669 m!3233469))

(declare-fun m!3233471 () Bool)

(assert (=> b!2803641 m!3233471))

(declare-fun condSetEmpty!24672 () Bool)

(assert (=> setNonEmpty!24666 (= condSetEmpty!24672 (= setRest!24666 ((as const (Array Context!4906 Bool)) false)))))

(declare-fun setRes!24672 () Bool)

(assert (=> setNonEmpty!24666 (= tp!893826 setRes!24672)))

(declare-fun setIsEmpty!24672 () Bool)

(assert (=> setIsEmpty!24672 setRes!24672))

(declare-fun setElem!24672 () Context!4906)

(declare-fun tp!893860 () Bool)

(declare-fun setNonEmpty!24672 () Bool)

(declare-fun e!1771936 () Bool)

(assert (=> setNonEmpty!24672 (= setRes!24672 (and tp!893860 (inv!44284 setElem!24672) e!1771936))))

(declare-fun setRest!24672 () (InoxSet Context!4906))

(assert (=> setNonEmpty!24672 (= setRest!24666 ((_ map or) (store ((as const (Array Context!4906 Bool)) false) setElem!24672 true) setRest!24672))))

(declare-fun b!2803647 () Bool)

(declare-fun tp!893859 () Bool)

(assert (=> b!2803647 (= e!1771936 tp!893859)))

(assert (= (and setNonEmpty!24666 condSetEmpty!24672) setIsEmpty!24672))

(assert (= (and setNonEmpty!24666 (not condSetEmpty!24672)) setNonEmpty!24672))

(assert (= setNonEmpty!24672 b!2803647))

(declare-fun m!3233473 () Bool)

(assert (=> setNonEmpty!24672 m!3233473))

(declare-fun b!2803648 () Bool)

(declare-fun e!1771937 () Bool)

(declare-fun tp!893865 () Bool)

(assert (=> b!2803648 (= e!1771937 tp!893865)))

(declare-fun tp!893861 () Bool)

(declare-fun e!1771938 () Bool)

(declare-fun setNonEmpty!24673 () Bool)

(declare-fun setElem!24673 () Context!4906)

(declare-fun setRes!24673 () Bool)

(assert (=> setNonEmpty!24673 (= setRes!24673 (and tp!893861 (inv!44284 setElem!24673) e!1771938))))

(declare-fun setRest!24673 () (InoxSet Context!4906))

(assert (=> setNonEmpty!24673 (= (_2!19733 (h!38030 (zeroValue!4319 (v!34211 (underlying!8323 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4906 Bool)) false) setElem!24673 true) setRest!24673))))

(declare-fun e!1771939 () Bool)

(assert (=> b!2803439 (= tp!893823 e!1771939)))

(declare-fun setIsEmpty!24673 () Bool)

(assert (=> setIsEmpty!24673 setRes!24673))

(declare-fun tp!893863 () Bool)

(declare-fun tp!893864 () Bool)

(declare-fun b!2803649 () Bool)

(assert (=> b!2803649 (= e!1771939 (and tp!893864 (inv!44284 (_2!19732 (_1!19733 (h!38030 (zeroValue!4319 (v!34211 (underlying!8323 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009)))))))))) e!1771937 tp_is_empty!14283 setRes!24673 tp!893863))))

(declare-fun condSetEmpty!24673 () Bool)

(assert (=> b!2803649 (= condSetEmpty!24673 (= (_2!19733 (h!38030 (zeroValue!4319 (v!34211 (underlying!8323 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009)))))))) ((as const (Array Context!4906 Bool)) false)))))

(declare-fun b!2803650 () Bool)

(declare-fun tp!893862 () Bool)

(assert (=> b!2803650 (= e!1771938 tp!893862)))

(assert (= b!2803649 b!2803648))

(assert (= (and b!2803649 condSetEmpty!24673) setIsEmpty!24673))

(assert (= (and b!2803649 (not condSetEmpty!24673)) setNonEmpty!24673))

(assert (= setNonEmpty!24673 b!2803650))

(assert (= (and b!2803439 ((_ is Cons!32610) (zeroValue!4319 (v!34211 (underlying!8323 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009)))))))) b!2803649))

(declare-fun m!3233475 () Bool)

(assert (=> setNonEmpty!24673 m!3233475))

(declare-fun m!3233477 () Bool)

(assert (=> b!2803649 m!3233477))

(declare-fun b!2803651 () Bool)

(declare-fun e!1771940 () Bool)

(declare-fun tp!893870 () Bool)

(assert (=> b!2803651 (= e!1771940 tp!893870)))

(declare-fun tp!893866 () Bool)

(declare-fun setNonEmpty!24674 () Bool)

(declare-fun setRes!24674 () Bool)

(declare-fun setElem!24674 () Context!4906)

(declare-fun e!1771941 () Bool)

(assert (=> setNonEmpty!24674 (= setRes!24674 (and tp!893866 (inv!44284 setElem!24674) e!1771941))))

(declare-fun setRest!24674 () (InoxSet Context!4906))

(assert (=> setNonEmpty!24674 (= (_2!19733 (h!38030 (minValue!4319 (v!34211 (underlying!8323 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4906 Bool)) false) setElem!24674 true) setRest!24674))))

(declare-fun e!1771942 () Bool)

(assert (=> b!2803439 (= tp!893829 e!1771942)))

(declare-fun setIsEmpty!24674 () Bool)

(assert (=> setIsEmpty!24674 setRes!24674))

(declare-fun tp!893868 () Bool)

(declare-fun tp!893869 () Bool)

(declare-fun b!2803652 () Bool)

(assert (=> b!2803652 (= e!1771942 (and tp!893869 (inv!44284 (_2!19732 (_1!19733 (h!38030 (minValue!4319 (v!34211 (underlying!8323 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009)))))))))) e!1771940 tp_is_empty!14283 setRes!24674 tp!893868))))

(declare-fun condSetEmpty!24674 () Bool)

(assert (=> b!2803652 (= condSetEmpty!24674 (= (_2!19733 (h!38030 (minValue!4319 (v!34211 (underlying!8323 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009)))))))) ((as const (Array Context!4906 Bool)) false)))))

(declare-fun b!2803653 () Bool)

(declare-fun tp!893867 () Bool)

(assert (=> b!2803653 (= e!1771941 tp!893867)))

(assert (= b!2803652 b!2803651))

(assert (= (and b!2803652 condSetEmpty!24674) setIsEmpty!24674))

(assert (= (and b!2803652 (not condSetEmpty!24674)) setNonEmpty!24674))

(assert (= setNonEmpty!24674 b!2803653))

(assert (= (and b!2803439 ((_ is Cons!32610) (minValue!4319 (v!34211 (underlying!8323 (v!34212 (underlying!8324 (cache!4109 cacheDown!1009)))))))) b!2803652))

(declare-fun m!3233479 () Bool)

(assert (=> setNonEmpty!24674 m!3233479))

(declare-fun m!3233481 () Bool)

(assert (=> b!2803652 m!3233481))

(declare-fun b!2803658 () Bool)

(declare-fun e!1771945 () Bool)

(declare-fun tp!893873 () Bool)

(assert (=> b!2803658 (= e!1771945 (and tp_is_empty!14283 tp!893873))))

(assert (=> b!2803428 (= tp!893832 e!1771945)))

(assert (= (and b!2803428 ((_ is Cons!32609) (t!228879 testedSuffix!143))) b!2803658))

(declare-fun tp!893882 () Bool)

(declare-fun b!2803667 () Bool)

(declare-fun e!1771951 () Bool)

(declare-fun tp!893880 () Bool)

(assert (=> b!2803667 (= e!1771951 (and (inv!44283 (left!24611 (c!454461 totalInput!758))) tp!893880 (inv!44283 (right!24941 (c!454461 totalInput!758))) tp!893882))))

(declare-fun b!2803669 () Bool)

(declare-fun e!1771950 () Bool)

(declare-fun tp!893881 () Bool)

(assert (=> b!2803669 (= e!1771950 tp!893881)))

(declare-fun b!2803668 () Bool)

(declare-fun inv!44290 (IArray!20189) Bool)

(assert (=> b!2803668 (= e!1771951 (and (inv!44290 (xs!13204 (c!454461 totalInput!758))) e!1771950))))

(assert (=> b!2803406 (= tp!893821 (and (inv!44283 (c!454461 totalInput!758)) e!1771951))))

(assert (= (and b!2803406 ((_ is Node!10092) (c!454461 totalInput!758))) b!2803667))

(assert (= b!2803668 b!2803669))

(assert (= (and b!2803406 ((_ is Leaf!15378) (c!454461 totalInput!758))) b!2803668))

(declare-fun m!3233483 () Bool)

(assert (=> b!2803667 m!3233483))

(declare-fun m!3233485 () Bool)

(assert (=> b!2803667 m!3233485))

(declare-fun m!3233487 () Bool)

(assert (=> b!2803668 m!3233487))

(assert (=> b!2803406 m!3233069))

(declare-fun setIsEmpty!24677 () Bool)

(declare-fun setRes!24677 () Bool)

(assert (=> setIsEmpty!24677 setRes!24677))

(declare-fun b!2803678 () Bool)

(declare-fun e!1771958 () Bool)

(declare-fun tp!893894 () Bool)

(assert (=> b!2803678 (= e!1771958 tp!893894)))

(declare-fun b!2803679 () Bool)

(declare-fun e!1771960 () Bool)

(declare-fun tp!893893 () Bool)

(assert (=> b!2803679 (= e!1771960 tp!893893)))

(declare-fun e!1771959 () Bool)

(assert (=> b!2803414 (= tp!893839 e!1771959)))

(declare-fun setElem!24677 () Context!4906)

(declare-fun tp!893892 () Bool)

(declare-fun setNonEmpty!24677 () Bool)

(assert (=> setNonEmpty!24677 (= setRes!24677 (and tp!893892 (inv!44284 setElem!24677) e!1771960))))

(declare-fun setRest!24677 () (InoxSet Context!4906))

(assert (=> setNonEmpty!24677 (= (_2!19731 (h!38028 mapDefault!18446)) ((_ map or) (store ((as const (Array Context!4906 Bool)) false) setElem!24677 true) setRest!24677))))

(declare-fun tp!893891 () Bool)

(declare-fun b!2803680 () Bool)

(assert (=> b!2803680 (= e!1771959 (and (inv!44284 (_1!19730 (_1!19731 (h!38028 mapDefault!18446)))) e!1771958 tp_is_empty!14283 setRes!24677 tp!893891))))

(declare-fun condSetEmpty!24677 () Bool)

(assert (=> b!2803680 (= condSetEmpty!24677 (= (_2!19731 (h!38028 mapDefault!18446)) ((as const (Array Context!4906 Bool)) false)))))

(assert (= b!2803680 b!2803678))

(assert (= (and b!2803680 condSetEmpty!24677) setIsEmpty!24677))

(assert (= (and b!2803680 (not condSetEmpty!24677)) setNonEmpty!24677))

(assert (= setNonEmpty!24677 b!2803679))

(assert (= (and b!2803414 ((_ is Cons!32608) mapDefault!18446)) b!2803680))

(declare-fun m!3233489 () Bool)

(assert (=> setNonEmpty!24677 m!3233489))

(declare-fun m!3233491 () Bool)

(assert (=> b!2803680 m!3233491))

(declare-fun mapNonEmpty!18449 () Bool)

(declare-fun mapRes!18449 () Bool)

(declare-fun tp!893920 () Bool)

(declare-fun e!1771976 () Bool)

(assert (=> mapNonEmpty!18449 (= mapRes!18449 (and tp!893920 e!1771976))))

(declare-fun mapValue!18449 () List!32710)

(declare-fun mapKey!18449 () (_ BitVec 32))

(declare-fun mapRest!18449 () (Array (_ BitVec 32) List!32710))

(assert (=> mapNonEmpty!18449 (= mapRest!18445 (store mapRest!18449 mapKey!18449 mapValue!18449))))

(declare-fun b!2803695 () Bool)

(declare-fun e!1771977 () Bool)

(declare-fun tp!893917 () Bool)

(assert (=> b!2803695 (= e!1771977 tp!893917)))

(declare-fun setIsEmpty!24682 () Bool)

(declare-fun setRes!24683 () Bool)

(assert (=> setIsEmpty!24682 setRes!24683))

(declare-fun b!2803696 () Bool)

(declare-fun e!1771973 () Bool)

(declare-fun tp!893921 () Bool)

(assert (=> b!2803696 (= e!1771973 tp!893921)))

(declare-fun b!2803697 () Bool)

(declare-fun e!1771978 () Bool)

(declare-fun tp!893927 () Bool)

(assert (=> b!2803697 (= e!1771978 tp!893927)))

(declare-fun tp!893926 () Bool)

(declare-fun setElem!24683 () Context!4906)

(declare-fun setRes!24682 () Bool)

(declare-fun setNonEmpty!24682 () Bool)

(assert (=> setNonEmpty!24682 (= setRes!24682 (and tp!893926 (inv!44284 setElem!24683) e!1771978))))

(declare-fun setRest!24683 () (InoxSet Context!4906))

(assert (=> setNonEmpty!24682 (= (_2!19733 (h!38030 mapValue!18449)) ((_ map or) (store ((as const (Array Context!4906 Bool)) false) setElem!24683 true) setRest!24683))))

(declare-fun setIsEmpty!24683 () Bool)

(assert (=> setIsEmpty!24683 setRes!24682))

(declare-fun mapIsEmpty!18449 () Bool)

(assert (=> mapIsEmpty!18449 mapRes!18449))

(declare-fun condMapEmpty!18449 () Bool)

(declare-fun mapDefault!18449 () List!32710)

(assert (=> mapNonEmpty!18446 (= condMapEmpty!18449 (= mapRest!18445 ((as const (Array (_ BitVec 32) List!32710)) mapDefault!18449)))))

(declare-fun e!1771975 () Bool)

(assert (=> mapNonEmpty!18446 (= tp!893822 (and e!1771975 mapRes!18449))))

(declare-fun tp!893924 () Bool)

(declare-fun tp!893922 () Bool)

(declare-fun b!2803698 () Bool)

(assert (=> b!2803698 (= e!1771975 (and tp!893924 (inv!44284 (_2!19732 (_1!19733 (h!38030 mapDefault!18449)))) e!1771973 tp_is_empty!14283 setRes!24683 tp!893922))))

(declare-fun condSetEmpty!24682 () Bool)

(assert (=> b!2803698 (= condSetEmpty!24682 (= (_2!19733 (h!38030 mapDefault!18449)) ((as const (Array Context!4906 Bool)) false)))))

(declare-fun b!2803699 () Bool)

(declare-fun e!1771974 () Bool)

(declare-fun tp!893918 () Bool)

(assert (=> b!2803699 (= e!1771974 tp!893918)))

(declare-fun setElem!24682 () Context!4906)

(declare-fun tp!893923 () Bool)

(declare-fun setNonEmpty!24683 () Bool)

(assert (=> setNonEmpty!24683 (= setRes!24683 (and tp!893923 (inv!44284 setElem!24682) e!1771974))))

(declare-fun setRest!24682 () (InoxSet Context!4906))

(assert (=> setNonEmpty!24683 (= (_2!19733 (h!38030 mapDefault!18449)) ((_ map or) (store ((as const (Array Context!4906 Bool)) false) setElem!24682 true) setRest!24682))))

(declare-fun b!2803700 () Bool)

(declare-fun tp!893919 () Bool)

(declare-fun tp!893925 () Bool)

(assert (=> b!2803700 (= e!1771976 (and tp!893925 (inv!44284 (_2!19732 (_1!19733 (h!38030 mapValue!18449)))) e!1771977 tp_is_empty!14283 setRes!24682 tp!893919))))

(declare-fun condSetEmpty!24683 () Bool)

(assert (=> b!2803700 (= condSetEmpty!24683 (= (_2!19733 (h!38030 mapValue!18449)) ((as const (Array Context!4906 Bool)) false)))))

(assert (= (and mapNonEmpty!18446 condMapEmpty!18449) mapIsEmpty!18449))

(assert (= (and mapNonEmpty!18446 (not condMapEmpty!18449)) mapNonEmpty!18449))

(assert (= b!2803700 b!2803695))

(assert (= (and b!2803700 condSetEmpty!24683) setIsEmpty!24683))

(assert (= (and b!2803700 (not condSetEmpty!24683)) setNonEmpty!24682))

(assert (= setNonEmpty!24682 b!2803697))

(assert (= (and mapNonEmpty!18449 ((_ is Cons!32610) mapValue!18449)) b!2803700))

(assert (= b!2803698 b!2803696))

(assert (= (and b!2803698 condSetEmpty!24682) setIsEmpty!24682))

(assert (= (and b!2803698 (not condSetEmpty!24682)) setNonEmpty!24683))

(assert (= setNonEmpty!24683 b!2803699))

(assert (= (and mapNonEmpty!18446 ((_ is Cons!32610) mapDefault!18449)) b!2803698))

(declare-fun m!3233493 () Bool)

(assert (=> setNonEmpty!24683 m!3233493))

(declare-fun m!3233495 () Bool)

(assert (=> setNonEmpty!24682 m!3233495))

(declare-fun m!3233497 () Bool)

(assert (=> mapNonEmpty!18449 m!3233497))

(declare-fun m!3233499 () Bool)

(assert (=> b!2803698 m!3233499))

(declare-fun m!3233501 () Bool)

(assert (=> b!2803700 m!3233501))

(declare-fun b!2803701 () Bool)

(declare-fun e!1771979 () Bool)

(declare-fun tp!893932 () Bool)

(assert (=> b!2803701 (= e!1771979 tp!893932)))

(declare-fun setElem!24684 () Context!4906)

(declare-fun e!1771980 () Bool)

(declare-fun setNonEmpty!24684 () Bool)

(declare-fun setRes!24684 () Bool)

(declare-fun tp!893928 () Bool)

(assert (=> setNonEmpty!24684 (= setRes!24684 (and tp!893928 (inv!44284 setElem!24684) e!1771980))))

(declare-fun setRest!24684 () (InoxSet Context!4906))

(assert (=> setNonEmpty!24684 (= (_2!19733 (h!38030 mapValue!18445)) ((_ map or) (store ((as const (Array Context!4906 Bool)) false) setElem!24684 true) setRest!24684))))

(declare-fun e!1771981 () Bool)

(assert (=> mapNonEmpty!18446 (= tp!893836 e!1771981)))

(declare-fun setIsEmpty!24684 () Bool)

(assert (=> setIsEmpty!24684 setRes!24684))

(declare-fun tp!893930 () Bool)

(declare-fun tp!893931 () Bool)

(declare-fun b!2803702 () Bool)

(assert (=> b!2803702 (= e!1771981 (and tp!893931 (inv!44284 (_2!19732 (_1!19733 (h!38030 mapValue!18445)))) e!1771979 tp_is_empty!14283 setRes!24684 tp!893930))))

(declare-fun condSetEmpty!24684 () Bool)

(assert (=> b!2803702 (= condSetEmpty!24684 (= (_2!19733 (h!38030 mapValue!18445)) ((as const (Array Context!4906 Bool)) false)))))

(declare-fun b!2803703 () Bool)

(declare-fun tp!893929 () Bool)

(assert (=> b!2803703 (= e!1771980 tp!893929)))

(assert (= b!2803702 b!2803701))

(assert (= (and b!2803702 condSetEmpty!24684) setIsEmpty!24684))

(assert (= (and b!2803702 (not condSetEmpty!24684)) setNonEmpty!24684))

(assert (= setNonEmpty!24684 b!2803703))

(assert (= (and mapNonEmpty!18446 ((_ is Cons!32610) mapValue!18445)) b!2803702))

(declare-fun m!3233503 () Bool)

(assert (=> setNonEmpty!24684 m!3233503))

(declare-fun m!3233505 () Bool)

(assert (=> b!2803702 m!3233505))

(declare-fun b!2803704 () Bool)

(declare-fun e!1771982 () Bool)

(declare-fun tp!893933 () Bool)

(assert (=> b!2803704 (= e!1771982 (and tp_is_empty!14283 tp!893933))))

(assert (=> b!2803431 (= tp!893833 e!1771982)))

(assert (= (and b!2803431 ((_ is Cons!32609) (t!228879 testedP!183))) b!2803704))

(declare-fun b!2803719 () Bool)

(declare-fun e!1771996 () Bool)

(declare-fun tp!893960 () Bool)

(assert (=> b!2803719 (= e!1771996 tp!893960)))

(declare-fun mapIsEmpty!18452 () Bool)

(declare-fun mapRes!18452 () Bool)

(assert (=> mapIsEmpty!18452 mapRes!18452))

(declare-fun mapValue!18452 () List!32708)

(declare-fun tp!893953 () Bool)

(declare-fun e!1771995 () Bool)

(declare-fun e!1772000 () Bool)

(declare-fun b!2803720 () Bool)

(declare-fun setRes!24690 () Bool)

(assert (=> b!2803720 (= e!1771995 (and (inv!44284 (_1!19730 (_1!19731 (h!38028 mapValue!18452)))) e!1772000 tp_is_empty!14283 setRes!24690 tp!893953))))

(declare-fun condSetEmpty!24690 () Bool)

(assert (=> b!2803720 (= condSetEmpty!24690 (= (_2!19731 (h!38028 mapValue!18452)) ((as const (Array Context!4906 Bool)) false)))))

(declare-fun setIsEmpty!24689 () Bool)

(declare-fun setRes!24689 () Bool)

(assert (=> setIsEmpty!24689 setRes!24689))

(declare-fun b!2803721 () Bool)

(declare-fun tp!893954 () Bool)

(assert (=> b!2803721 (= e!1772000 tp!893954)))

(declare-fun b!2803722 () Bool)

(declare-fun e!1771997 () Bool)

(declare-fun tp!893958 () Bool)

(assert (=> b!2803722 (= e!1771997 tp!893958)))

(declare-fun condMapEmpty!18452 () Bool)

(declare-fun mapDefault!18452 () List!32708)

(assert (=> mapNonEmpty!18445 (= condMapEmpty!18452 (= mapRest!18446 ((as const (Array (_ BitVec 32) List!32708)) mapDefault!18452)))))

(declare-fun e!1771998 () Bool)

(assert (=> mapNonEmpty!18445 (= tp!893835 (and e!1771998 mapRes!18452))))

(declare-fun setNonEmpty!24689 () Bool)

(declare-fun setElem!24690 () Context!4906)

(declare-fun tp!893957 () Bool)

(assert (=> setNonEmpty!24689 (= setRes!24689 (and tp!893957 (inv!44284 setElem!24690) e!1771996))))

(declare-fun setRest!24690 () (InoxSet Context!4906))

(assert (=> setNonEmpty!24689 (= (_2!19731 (h!38028 mapDefault!18452)) ((_ map or) (store ((as const (Array Context!4906 Bool)) false) setElem!24690 true) setRest!24690))))

(declare-fun setIsEmpty!24690 () Bool)

(assert (=> setIsEmpty!24690 setRes!24690))

(declare-fun e!1771999 () Bool)

(declare-fun b!2803723 () Bool)

(declare-fun tp!893952 () Bool)

(assert (=> b!2803723 (= e!1771998 (and (inv!44284 (_1!19730 (_1!19731 (h!38028 mapDefault!18452)))) e!1771999 tp_is_empty!14283 setRes!24689 tp!893952))))

(declare-fun condSetEmpty!24689 () Bool)

(assert (=> b!2803723 (= condSetEmpty!24689 (= (_2!19731 (h!38028 mapDefault!18452)) ((as const (Array Context!4906 Bool)) false)))))

(declare-fun mapNonEmpty!18452 () Bool)

(declare-fun tp!893955 () Bool)

(assert (=> mapNonEmpty!18452 (= mapRes!18452 (and tp!893955 e!1771995))))

(declare-fun mapRest!18452 () (Array (_ BitVec 32) List!32708))

(declare-fun mapKey!18452 () (_ BitVec 32))

(assert (=> mapNonEmpty!18452 (= mapRest!18446 (store mapRest!18452 mapKey!18452 mapValue!18452))))

(declare-fun b!2803724 () Bool)

(declare-fun tp!893959 () Bool)

(assert (=> b!2803724 (= e!1771999 tp!893959)))

(declare-fun setNonEmpty!24690 () Bool)

(declare-fun tp!893956 () Bool)

(declare-fun setElem!24689 () Context!4906)

(assert (=> setNonEmpty!24690 (= setRes!24690 (and tp!893956 (inv!44284 setElem!24689) e!1771997))))

(declare-fun setRest!24689 () (InoxSet Context!4906))

(assert (=> setNonEmpty!24690 (= (_2!19731 (h!38028 mapValue!18452)) ((_ map or) (store ((as const (Array Context!4906 Bool)) false) setElem!24689 true) setRest!24689))))

(assert (= (and mapNonEmpty!18445 condMapEmpty!18452) mapIsEmpty!18452))

(assert (= (and mapNonEmpty!18445 (not condMapEmpty!18452)) mapNonEmpty!18452))

(assert (= b!2803720 b!2803721))

(assert (= (and b!2803720 condSetEmpty!24690) setIsEmpty!24690))

(assert (= (and b!2803720 (not condSetEmpty!24690)) setNonEmpty!24690))

(assert (= setNonEmpty!24690 b!2803722))

(assert (= (and mapNonEmpty!18452 ((_ is Cons!32608) mapValue!18452)) b!2803720))

(assert (= b!2803723 b!2803724))

(assert (= (and b!2803723 condSetEmpty!24689) setIsEmpty!24689))

(assert (= (and b!2803723 (not condSetEmpty!24689)) setNonEmpty!24689))

(assert (= setNonEmpty!24689 b!2803719))

(assert (= (and mapNonEmpty!18445 ((_ is Cons!32608) mapDefault!18452)) b!2803723))

(declare-fun m!3233507 () Bool)

(assert (=> setNonEmpty!24690 m!3233507))

(declare-fun m!3233509 () Bool)

(assert (=> b!2803723 m!3233509))

(declare-fun m!3233511 () Bool)

(assert (=> setNonEmpty!24689 m!3233511))

(declare-fun m!3233513 () Bool)

(assert (=> mapNonEmpty!18452 m!3233513))

(declare-fun m!3233515 () Bool)

(assert (=> b!2803720 m!3233515))

(declare-fun setIsEmpty!24691 () Bool)

(declare-fun setRes!24691 () Bool)

(assert (=> setIsEmpty!24691 setRes!24691))

(declare-fun b!2803725 () Bool)

(declare-fun e!1772001 () Bool)

(declare-fun tp!893964 () Bool)

(assert (=> b!2803725 (= e!1772001 tp!893964)))

(declare-fun b!2803726 () Bool)

(declare-fun e!1772003 () Bool)

(declare-fun tp!893963 () Bool)

(assert (=> b!2803726 (= e!1772003 tp!893963)))

(declare-fun e!1772002 () Bool)

(assert (=> mapNonEmpty!18445 (= tp!893825 e!1772002)))

(declare-fun setNonEmpty!24691 () Bool)

(declare-fun tp!893962 () Bool)

(declare-fun setElem!24691 () Context!4906)

(assert (=> setNonEmpty!24691 (= setRes!24691 (and tp!893962 (inv!44284 setElem!24691) e!1772003))))

(declare-fun setRest!24691 () (InoxSet Context!4906))

(assert (=> setNonEmpty!24691 (= (_2!19731 (h!38028 mapValue!18446)) ((_ map or) (store ((as const (Array Context!4906 Bool)) false) setElem!24691 true) setRest!24691))))

(declare-fun tp!893961 () Bool)

(declare-fun b!2803727 () Bool)

(assert (=> b!2803727 (= e!1772002 (and (inv!44284 (_1!19730 (_1!19731 (h!38028 mapValue!18446)))) e!1772001 tp_is_empty!14283 setRes!24691 tp!893961))))

(declare-fun condSetEmpty!24691 () Bool)

(assert (=> b!2803727 (= condSetEmpty!24691 (= (_2!19731 (h!38028 mapValue!18446)) ((as const (Array Context!4906 Bool)) false)))))

(assert (= b!2803727 b!2803725))

(assert (= (and b!2803727 condSetEmpty!24691) setIsEmpty!24691))

(assert (= (and b!2803727 (not condSetEmpty!24691)) setNonEmpty!24691))

(assert (= setNonEmpty!24691 b!2803726))

(assert (= (and mapNonEmpty!18445 ((_ is Cons!32608) mapValue!18446)) b!2803727))

(declare-fun m!3233517 () Bool)

(assert (=> setNonEmpty!24691 m!3233517))

(declare-fun m!3233519 () Bool)

(assert (=> b!2803727 m!3233519))

(declare-fun setIsEmpty!24692 () Bool)

(declare-fun setRes!24692 () Bool)

(assert (=> setIsEmpty!24692 setRes!24692))

(declare-fun b!2803728 () Bool)

(declare-fun e!1772004 () Bool)

(declare-fun tp!893968 () Bool)

(assert (=> b!2803728 (= e!1772004 tp!893968)))

(declare-fun b!2803729 () Bool)

(declare-fun e!1772006 () Bool)

(declare-fun tp!893967 () Bool)

(assert (=> b!2803729 (= e!1772006 tp!893967)))

(declare-fun e!1772005 () Bool)

(assert (=> b!2803425 (= tp!893824 e!1772005)))

(declare-fun setElem!24692 () Context!4906)

(declare-fun tp!893966 () Bool)

(declare-fun setNonEmpty!24692 () Bool)

(assert (=> setNonEmpty!24692 (= setRes!24692 (and tp!893966 (inv!44284 setElem!24692) e!1772006))))

(declare-fun setRest!24692 () (InoxSet Context!4906))

(assert (=> setNonEmpty!24692 (= (_2!19731 (h!38028 (zeroValue!4318 (v!34209 (underlying!8321 (v!34210 (underlying!8322 (cache!4108 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4906 Bool)) false) setElem!24692 true) setRest!24692))))

(declare-fun b!2803730 () Bool)

(declare-fun tp!893965 () Bool)

(assert (=> b!2803730 (= e!1772005 (and (inv!44284 (_1!19730 (_1!19731 (h!38028 (zeroValue!4318 (v!34209 (underlying!8321 (v!34210 (underlying!8322 (cache!4108 cacheUp!890)))))))))) e!1772004 tp_is_empty!14283 setRes!24692 tp!893965))))

(declare-fun condSetEmpty!24692 () Bool)

(assert (=> b!2803730 (= condSetEmpty!24692 (= (_2!19731 (h!38028 (zeroValue!4318 (v!34209 (underlying!8321 (v!34210 (underlying!8322 (cache!4108 cacheUp!890)))))))) ((as const (Array Context!4906 Bool)) false)))))

(assert (= b!2803730 b!2803728))

(assert (= (and b!2803730 condSetEmpty!24692) setIsEmpty!24692))

(assert (= (and b!2803730 (not condSetEmpty!24692)) setNonEmpty!24692))

(assert (= setNonEmpty!24692 b!2803729))

(assert (= (and b!2803425 ((_ is Cons!32608) (zeroValue!4318 (v!34209 (underlying!8321 (v!34210 (underlying!8322 (cache!4108 cacheUp!890)))))))) b!2803730))

(declare-fun m!3233521 () Bool)

(assert (=> setNonEmpty!24692 m!3233521))

(declare-fun m!3233523 () Bool)

(assert (=> b!2803730 m!3233523))

(declare-fun setIsEmpty!24693 () Bool)

(declare-fun setRes!24693 () Bool)

(assert (=> setIsEmpty!24693 setRes!24693))

(declare-fun b!2803731 () Bool)

(declare-fun e!1772007 () Bool)

(declare-fun tp!893972 () Bool)

(assert (=> b!2803731 (= e!1772007 tp!893972)))

(declare-fun b!2803732 () Bool)

(declare-fun e!1772009 () Bool)

(declare-fun tp!893971 () Bool)

(assert (=> b!2803732 (= e!1772009 tp!893971)))

(declare-fun e!1772008 () Bool)

(assert (=> b!2803425 (= tp!893831 e!1772008)))

(declare-fun setElem!24693 () Context!4906)

(declare-fun setNonEmpty!24693 () Bool)

(declare-fun tp!893970 () Bool)

(assert (=> setNonEmpty!24693 (= setRes!24693 (and tp!893970 (inv!44284 setElem!24693) e!1772009))))

(declare-fun setRest!24693 () (InoxSet Context!4906))

(assert (=> setNonEmpty!24693 (= (_2!19731 (h!38028 (minValue!4318 (v!34209 (underlying!8321 (v!34210 (underlying!8322 (cache!4108 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4906 Bool)) false) setElem!24693 true) setRest!24693))))

(declare-fun tp!893969 () Bool)

(declare-fun b!2803733 () Bool)

(assert (=> b!2803733 (= e!1772008 (and (inv!44284 (_1!19730 (_1!19731 (h!38028 (minValue!4318 (v!34209 (underlying!8321 (v!34210 (underlying!8322 (cache!4108 cacheUp!890)))))))))) e!1772007 tp_is_empty!14283 setRes!24693 tp!893969))))

(declare-fun condSetEmpty!24693 () Bool)

(assert (=> b!2803733 (= condSetEmpty!24693 (= (_2!19731 (h!38028 (minValue!4318 (v!34209 (underlying!8321 (v!34210 (underlying!8322 (cache!4108 cacheUp!890)))))))) ((as const (Array Context!4906 Bool)) false)))))

(assert (= b!2803733 b!2803731))

(assert (= (and b!2803733 condSetEmpty!24693) setIsEmpty!24693))

(assert (= (and b!2803733 (not condSetEmpty!24693)) setNonEmpty!24693))

(assert (= setNonEmpty!24693 b!2803732))

(assert (= (and b!2803425 ((_ is Cons!32608) (minValue!4318 (v!34209 (underlying!8321 (v!34210 (underlying!8322 (cache!4108 cacheUp!890)))))))) b!2803733))

(declare-fun m!3233525 () Bool)

(assert (=> setNonEmpty!24693 m!3233525))

(declare-fun m!3233527 () Bool)

(assert (=> b!2803733 m!3233527))

(declare-fun b!2803738 () Bool)

(declare-fun e!1772012 () Bool)

(declare-fun tp!893977 () Bool)

(declare-fun tp!893978 () Bool)

(assert (=> b!2803738 (= e!1772012 (and tp!893977 tp!893978))))

(assert (=> b!2803415 (= tp!893827 e!1772012)))

(assert (= (and b!2803415 ((_ is Cons!32607) (exprs!2953 setElem!24666))) b!2803738))

(check-sat (not b!2803497) (not b!2803506) (not d!814194) (not setNonEmpty!24692) (not b!2803729) (not b!2803507) (not b!2803727) (not b!2803616) (not d!814266) (not b!2803529) (not b!2803641) (not d!814254) (not b!2803652) (not setNonEmpty!24672) (not b!2803504) (not d!814250) (not b!2803574) (not bm!182990) (not d!814210) (not b_next!80235) (not b!2803699) (not d!814224) (not b!2803730) (not b!2803733) (not d!814230) (not bm!182991) (not setNonEmpty!24669) (not d!814172) (not bm!182988) (not b!2803445) (not b!2803702) (not b!2803508) (not d!814268) (not bm!182992) (not d!814238) (not b!2803722) (not d!814174) (not b!2803523) (not d!814168) (not b!2803728) (not b!2803695) (not b!2803700) (not setNonEmpty!24693) (not b!2803607) (not setNonEmpty!24683) (not b!2803698) b_and!204265 (not b!2803653) (not d!814244) (not b!2803649) (not b!2803565) (not setNonEmpty!24673) (not mapNonEmpty!18452) (not b!2803620) (not bm!182983) (not b!2803627) (not bm!182979) (not b!2803556) (not b!2803617) tp_is_empty!14283 (not b_next!80229) (not d!814184) (not b!2803492) (not d!814180) (not b!2803451) (not setNonEmpty!24677) (not b!2803631) (not b!2803732) (not d!814260) (not b_next!80231) (not bm!182984) (not d!814220) (not b!2803503) (not d!814258) (not b!2803462) (not bm!182985) (not b!2803601) (not b!2803731) (not bm!182978) (not b_next!80233) (not b!2803406) (not b!2803515) (not bm!182956) (not b!2803557) (not b!2803551) (not b!2803624) (not b!2803640) b_and!204269 (not b!2803605) (not b!2803669) (not mapNonEmpty!18449) (not b!2803446) (not setNonEmpty!24684) (not b!2803618) (not d!814200) (not b!2803720) (not b!2803724) (not b!2803603) b_and!204267 (not d!814264) (not b!2803621) (not setNonEmpty!24674) (not d!814214) (not d!814204) (not b!2803678) (not d!814240) (not b!2803701) (not b!2803539) (not b!2803723) (not b!2803547) (not bm!182994) (not b!2803540) (not bm!182980) (not d!814186) (not b!2803658) (not d!814202) (not b!2803648) (not d!814218) (not b!2803679) (not bm!182955) (not bm!182977) (not b!2803498) (not d!814170) (not b!2803651) (not d!814176) (not setNonEmpty!24691) (not b!2803626) (not bm!182989) (not b!2803697) (not bm!182996) (not b!2803642) (not bm!182999) (not b!2803650) (not b!2803725) (not b!2803696) (not b!2803608) (not b!2803680) (not b!2803522) (not d!814232) (not bm!182981) (not bm!182995) (not b!2803604) b_and!204263 (not b!2803726) (not b!2803721) (not d!814270) (not b!2803526) (not b!2803704) (not b!2803719) (not b!2803667) (not b!2803568) (not bm!182986) (not bm!182987) (not d!814178) (not b!2803738) (not bm!182982) (not b!2803502) (not b!2803464) (not b!2803647) (not b!2803599) (not bm!182993) (not d!814182) (not b!2803703) (not d!814262) (not d!814208) (not b!2803463) (not b!2803573) (not b!2803564) (not d!814248) (not setNonEmpty!24682) (not setNonEmpty!24690) (not b!2803517) (not setNonEmpty!24689) (not b!2803668) (not d!814242))
(check-sat (not b_next!80235) b_and!204265 (not b_next!80229) (not b_next!80231) (not b_next!80233) b_and!204269 b_and!204267 b_and!204263)
