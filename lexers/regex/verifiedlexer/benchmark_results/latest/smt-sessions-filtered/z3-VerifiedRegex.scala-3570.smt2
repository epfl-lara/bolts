; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206444 () Bool)

(assert start!206444)

(declare-fun b!2111404 () Bool)

(declare-fun b_free!61001 () Bool)

(declare-fun b_next!61705 () Bool)

(assert (=> b!2111404 (= b_free!61001 (not b_next!61705))))

(declare-fun tp!642801 () Bool)

(declare-fun b_and!170581 () Bool)

(assert (=> b!2111404 (= tp!642801 b_and!170581)))

(declare-fun b!2111384 () Bool)

(declare-fun b_free!61003 () Bool)

(declare-fun b_next!61707 () Bool)

(assert (=> b!2111384 (= b_free!61003 (not b_next!61707))))

(declare-fun tp!642818 () Bool)

(declare-fun b_and!170583 () Bool)

(assert (=> b!2111384 (= tp!642818 b_and!170583)))

(declare-fun b!2111393 () Bool)

(declare-fun b_free!61005 () Bool)

(declare-fun b_next!61709 () Bool)

(assert (=> b!2111393 (= b_free!61005 (not b_next!61709))))

(declare-fun tp!642817 () Bool)

(declare-fun b_and!170585 () Bool)

(assert (=> b!2111393 (= tp!642817 b_and!170585)))

(declare-fun b!2111385 () Bool)

(declare-fun b_free!61007 () Bool)

(declare-fun b_next!61711 () Bool)

(assert (=> b!2111385 (= b_free!61007 (not b_next!61711))))

(declare-fun tp!642809 () Bool)

(declare-fun b_and!170587 () Bool)

(assert (=> b!2111385 (= tp!642809 b_and!170587)))

(declare-fun e!1343026 () Bool)

(declare-fun e!1343023 () Bool)

(assert (=> b!2111384 (= e!1343026 (and e!1343023 tp!642818))))

(declare-fun mapIsEmpty!11162 () Bool)

(declare-fun mapRes!11163 () Bool)

(assert (=> mapIsEmpty!11162 mapRes!11163))

(declare-datatypes ((C!11360 0))(
  ( (C!11361 (val!6666 Int)) )
))
(declare-datatypes ((Regex!5607 0))(
  ( (ElementMatch!5607 (c!339142 C!11360)) (Concat!9909 (regOne!11726 Regex!5607) (regTwo!11726 Regex!5607)) (EmptyExpr!5607) (Star!5607 (reg!5936 Regex!5607)) (EmptyLang!5607) (Union!5607 (regOne!11727 Regex!5607) (regTwo!11727 Regex!5607)) )
))
(declare-datatypes ((List!23513 0))(
  ( (Nil!23429) (Cons!23429 (h!28830 Regex!5607) (t!196022 List!23513)) )
))
(declare-datatypes ((Context!2354 0))(
  ( (Context!2355 (exprs!1677 List!23513)) )
))
(declare-datatypes ((tuple3!2684 0))(
  ( (tuple3!2685 (_1!13208 Regex!5607) (_2!13208 Context!2354) (_3!1806 C!11360)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22804 0))(
  ( (tuple2!22805 (_1!13209 tuple3!2684) (_2!13209 (InoxSet Context!2354))) )
))
(declare-datatypes ((List!23514 0))(
  ( (Nil!23430) (Cons!23430 (h!28831 tuple2!22804) (t!196023 List!23514)) )
))
(declare-datatypes ((array!8000 0))(
  ( (array!8001 (arr!3543 (Array (_ BitVec 32) (_ BitVec 64))) (size!18285 (_ BitVec 32))) )
))
(declare-datatypes ((array!8002 0))(
  ( (array!8003 (arr!3544 (Array (_ BitVec 32) List!23514)) (size!18286 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4630 0))(
  ( (LongMapFixedSize!4631 (defaultEntry!2680 Int) (mask!6434 (_ BitVec 32)) (extraKeys!2563 (_ BitVec 32)) (zeroValue!2573 List!23514) (minValue!2573 List!23514) (_size!4681 (_ BitVec 32)) (_keys!2612 array!8000) (_values!2595 array!8002) (_vacant!2376 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9085 0))(
  ( (Cell!9086 (v!27957 LongMapFixedSize!4630)) )
))
(declare-datatypes ((MutLongMap!2315 0))(
  ( (LongMap!2315 (underlying!4825 Cell!9085)) (MutLongMapExt!2314 (__x!15121 Int)) )
))
(declare-datatypes ((Cell!9087 0))(
  ( (Cell!9088 (v!27958 MutLongMap!2315)) )
))
(declare-datatypes ((Hashable!2229 0))(
  ( (HashableExt!2228 (__x!15122 Int)) )
))
(declare-datatypes ((MutableMap!2229 0))(
  ( (MutableMapExt!2228 (__x!15123 Int)) (HashMap!2229 (underlying!4826 Cell!9087) (hashF!4152 Hashable!2229) (_size!4682 (_ BitVec 32)) (defaultValue!2391 Int)) )
))
(declare-datatypes ((CacheDown!1528 0))(
  ( (CacheDown!1529 (cache!2610 MutableMap!2229)) )
))
(declare-fun cacheDown!1197 () CacheDown!1528)

(declare-fun tp!642806 () Bool)

(declare-fun e!1343027 () Bool)

(declare-fun e!1343024 () Bool)

(declare-fun tp!642821 () Bool)

(declare-fun array_inv!2550 (array!8000) Bool)

(declare-fun array_inv!2551 (array!8002) Bool)

(assert (=> b!2111385 (= e!1343027 (and tp!642809 tp!642806 tp!642821 (array_inv!2550 (_keys!2612 (v!27957 (underlying!4825 (v!27958 (underlying!4826 (cache!2610 cacheDown!1197))))))) (array_inv!2551 (_values!2595 (v!27957 (underlying!4825 (v!27958 (underlying!4826 (cache!2610 cacheDown!1197))))))) e!1343024))))

(declare-fun b!2111386 () Bool)

(declare-fun e!1343016 () Bool)

(declare-fun e!1343034 () Bool)

(assert (=> b!2111386 (= e!1343016 e!1343034)))

(declare-fun res!916937 () Bool)

(declare-fun e!1343035 () Bool)

(assert (=> start!206444 (=> (not res!916937) (not e!1343035))))

(declare-fun r!15329 () Regex!5607)

(declare-fun validRegex!2209 (Regex!5607) Bool)

(assert (=> start!206444 (= res!916937 (validRegex!2209 r!15329))))

(assert (=> start!206444 e!1343035))

(declare-datatypes ((List!23515 0))(
  ( (Nil!23431) (Cons!23431 (h!28832 C!11360) (t!196024 List!23515)) )
))
(declare-datatypes ((IArray!15507 0))(
  ( (IArray!15508 (innerList!7811 List!23515)) )
))
(declare-datatypes ((Conc!7751 0))(
  ( (Node!7751 (left!18209 Conc!7751) (right!18539 Conc!7751) (csize!15732 Int) (cheight!7962 Int)) (Leaf!11322 (xs!10693 IArray!15507) (csize!15733 Int)) (Empty!7751) )
))
(declare-datatypes ((BalanceConc!15264 0))(
  ( (BalanceConc!15265 (c!339143 Conc!7751)) )
))
(declare-fun input!6603 () BalanceConc!15264)

(declare-fun e!1343017 () Bool)

(declare-fun inv!31006 (BalanceConc!15264) Bool)

(assert (=> start!206444 (and (inv!31006 input!6603) e!1343017)))

(declare-fun e!1343028 () Bool)

(declare-fun inv!31007 (CacheDown!1528) Bool)

(assert (=> start!206444 (and (inv!31007 cacheDown!1197) e!1343028)))

(declare-fun e!1343036 () Bool)

(assert (=> start!206444 e!1343036))

(declare-fun totalInput!1248 () BalanceConc!15264)

(declare-fun e!1343032 () Bool)

(assert (=> start!206444 (and (inv!31006 totalInput!1248) e!1343032)))

(declare-datatypes ((tuple2!22806 0))(
  ( (tuple2!22807 (_1!13210 Context!2354) (_2!13210 C!11360)) )
))
(declare-datatypes ((tuple2!22808 0))(
  ( (tuple2!22809 (_1!13211 tuple2!22806) (_2!13211 (InoxSet Context!2354))) )
))
(declare-datatypes ((List!23516 0))(
  ( (Nil!23432) (Cons!23432 (h!28833 tuple2!22808) (t!196025 List!23516)) )
))
(declare-datatypes ((array!8004 0))(
  ( (array!8005 (arr!3545 (Array (_ BitVec 32) List!23516)) (size!18287 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4632 0))(
  ( (LongMapFixedSize!4633 (defaultEntry!2681 Int) (mask!6435 (_ BitVec 32)) (extraKeys!2564 (_ BitVec 32)) (zeroValue!2574 List!23516) (minValue!2574 List!23516) (_size!4683 (_ BitVec 32)) (_keys!2613 array!8000) (_values!2596 array!8004) (_vacant!2377 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9089 0))(
  ( (Cell!9090 (v!27959 LongMapFixedSize!4632)) )
))
(declare-datatypes ((Hashable!2230 0))(
  ( (HashableExt!2229 (__x!15124 Int)) )
))
(declare-datatypes ((MutLongMap!2316 0))(
  ( (LongMap!2316 (underlying!4827 Cell!9089)) (MutLongMapExt!2315 (__x!15125 Int)) )
))
(declare-datatypes ((Cell!9091 0))(
  ( (Cell!9092 (v!27960 MutLongMap!2316)) )
))
(declare-datatypes ((MutableMap!2230 0))(
  ( (MutableMapExt!2229 (__x!15126 Int)) (HashMap!2230 (underlying!4828 Cell!9091) (hashF!4153 Hashable!2230) (_size!4684 (_ BitVec 32)) (defaultValue!2392 Int)) )
))
(declare-datatypes ((CacheUp!1524 0))(
  ( (CacheUp!1525 (cache!2611 MutableMap!2230)) )
))
(declare-fun cacheUp!1078 () CacheUp!1524)

(declare-fun inv!31008 (CacheUp!1524) Bool)

(assert (=> start!206444 (and (inv!31008 cacheUp!1078) e!1343016)))

(declare-fun b!2111387 () Bool)

(declare-fun res!916940 () Bool)

(assert (=> b!2111387 (=> (not res!916940) (not e!1343035))))

(declare-fun valid!1829 (CacheUp!1524) Bool)

(assert (=> b!2111387 (= res!916940 (valid!1829 cacheUp!1078))))

(declare-fun b!2111388 () Bool)

(declare-fun tp!642804 () Bool)

(declare-fun tp!642802 () Bool)

(assert (=> b!2111388 (= e!1343036 (and tp!642804 tp!642802))))

(declare-fun mapIsEmpty!11163 () Bool)

(declare-fun mapRes!11162 () Bool)

(assert (=> mapIsEmpty!11163 mapRes!11162))

(declare-fun b!2111389 () Bool)

(declare-fun e!1343030 () Bool)

(declare-datatypes ((tuple2!22810 0))(
  ( (tuple2!22811 (_1!13212 BalanceConc!15264) (_2!13212 BalanceConc!15264)) )
))
(declare-fun lt!792392 () tuple2!22810)

(declare-datatypes ((tuple2!22812 0))(
  ( (tuple2!22813 (_1!13213 List!23515) (_2!13213 List!23515)) )
))
(declare-fun lt!792395 () tuple2!22812)

(declare-fun list!9479 (BalanceConc!15264) List!23515)

(assert (=> b!2111389 (= e!1343030 (= (list!9479 (_2!13212 lt!792392)) (_2!13213 lt!792395)))))

(declare-fun b!2111390 () Bool)

(declare-fun e!1343037 () Bool)

(declare-fun lt!792398 () MutLongMap!2315)

(get-info :version)

(assert (=> b!2111390 (= e!1343023 (and e!1343037 ((_ is LongMap!2315) lt!792398)))))

(assert (=> b!2111390 (= lt!792398 (v!27958 (underlying!4826 (cache!2610 cacheDown!1197))))))

(declare-fun b!2111391 () Bool)

(declare-fun e!1343033 () Bool)

(assert (=> b!2111391 (= e!1343033 e!1343027)))

(declare-fun b!2111392 () Bool)

(assert (=> b!2111392 (= e!1343037 e!1343033)))

(declare-fun e!1343025 () Bool)

(assert (=> b!2111393 (= e!1343034 (and e!1343025 tp!642817))))

(declare-fun b!2111394 () Bool)

(declare-fun tp_is_empty!9403 () Bool)

(assert (=> b!2111394 (= e!1343036 tp_is_empty!9403)))

(declare-fun b!2111395 () Bool)

(declare-fun e!1343029 () Bool)

(assert (=> b!2111395 (= e!1343029 (not true))))

(declare-fun lt!792396 () List!23515)

(declare-fun sizeTr!85 (List!23515 Int) Int)

(declare-fun size!18288 (List!23515) Int)

(assert (=> b!2111395 (= (sizeTr!85 lt!792396 0) (size!18288 lt!792396))))

(declare-datatypes ((Unit!37516 0))(
  ( (Unit!37517) )
))
(declare-fun lt!792393 () Unit!37516)

(declare-fun lemmaSizeTrEqualsSize!85 (List!23515 Int) Unit!37516)

(assert (=> b!2111395 (= lt!792393 (lemmaSizeTrEqualsSize!85 lt!792396 0))))

(assert (=> b!2111395 e!1343030))

(declare-fun res!916938 () Bool)

(assert (=> b!2111395 (=> (not res!916938) (not e!1343030))))

(assert (=> b!2111395 (= res!916938 (= (list!9479 (_1!13212 lt!792392)) (_1!13213 lt!792395)))))

(declare-fun findLongestMatch!502 (Regex!5607 List!23515) tuple2!22812)

(assert (=> b!2111395 (= lt!792395 (findLongestMatch!502 r!15329 lt!792396))))

(declare-fun lt!792391 () (InoxSet Context!2354))

(declare-fun findLongestMatchZipperFastV2!1 ((InoxSet Context!2354) BalanceConc!15264 BalanceConc!15264) tuple2!22810)

(assert (=> b!2111395 (= lt!792392 (findLongestMatchZipperFastV2!1 lt!792391 input!6603 totalInput!1248))))

(declare-fun lt!792394 () Unit!37516)

(declare-fun longestMatchV2SameAsRegex!1 (Regex!5607 (InoxSet Context!2354) BalanceConc!15264 BalanceConc!15264) Unit!37516)

(assert (=> b!2111395 (= lt!792394 (longestMatchV2SameAsRegex!1 r!15329 lt!792391 input!6603 totalInput!1248))))

(declare-fun focus!257 (Regex!5607) (InoxSet Context!2354))

(assert (=> b!2111395 (= lt!792391 (focus!257 r!15329))))

(declare-fun b!2111396 () Bool)

(declare-fun tp!642807 () Bool)

(declare-fun inv!31009 (Conc!7751) Bool)

(assert (=> b!2111396 (= e!1343017 (and (inv!31009 (c!339143 input!6603)) tp!642807))))

(declare-fun mapNonEmpty!11162 () Bool)

(declare-fun tp!642808 () Bool)

(declare-fun tp!642819 () Bool)

(assert (=> mapNonEmpty!11162 (= mapRes!11162 (and tp!642808 tp!642819))))

(declare-fun mapRest!11163 () (Array (_ BitVec 32) List!23516))

(declare-fun mapValue!11163 () List!23516)

(declare-fun mapKey!11163 () (_ BitVec 32))

(assert (=> mapNonEmpty!11162 (= (arr!3545 (_values!2596 (v!27959 (underlying!4827 (v!27960 (underlying!4828 (cache!2611 cacheUp!1078))))))) (store mapRest!11163 mapKey!11163 mapValue!11163))))

(declare-fun b!2111397 () Bool)

(declare-fun tp!642814 () Bool)

(assert (=> b!2111397 (= e!1343024 (and tp!642814 mapRes!11163))))

(declare-fun condMapEmpty!11162 () Bool)

(declare-fun mapDefault!11162 () List!23514)

(assert (=> b!2111397 (= condMapEmpty!11162 (= (arr!3544 (_values!2595 (v!27957 (underlying!4825 (v!27958 (underlying!4826 (cache!2610 cacheDown!1197))))))) ((as const (Array (_ BitVec 32) List!23514)) mapDefault!11162)))))

(declare-fun b!2111398 () Bool)

(declare-fun e!1343020 () Bool)

(declare-fun e!1343018 () Bool)

(assert (=> b!2111398 (= e!1343020 e!1343018)))

(declare-fun b!2111399 () Bool)

(declare-fun e!1343019 () Bool)

(assert (=> b!2111399 (= e!1343019 e!1343020)))

(declare-fun b!2111400 () Bool)

(declare-fun lt!792397 () MutLongMap!2316)

(assert (=> b!2111400 (= e!1343025 (and e!1343019 ((_ is LongMap!2316) lt!792397)))))

(assert (=> b!2111400 (= lt!792397 (v!27960 (underlying!4828 (cache!2611 cacheUp!1078))))))

(declare-fun b!2111401 () Bool)

(declare-fun e!1343022 () Bool)

(declare-fun tp!642816 () Bool)

(assert (=> b!2111401 (= e!1343022 (and tp!642816 mapRes!11162))))

(declare-fun condMapEmpty!11163 () Bool)

(declare-fun mapDefault!11163 () List!23516)

(assert (=> b!2111401 (= condMapEmpty!11163 (= (arr!3545 (_values!2596 (v!27959 (underlying!4827 (v!27960 (underlying!4828 (cache!2611 cacheUp!1078))))))) ((as const (Array (_ BitVec 32) List!23516)) mapDefault!11163)))))

(declare-fun b!2111402 () Bool)

(declare-fun tp!642812 () Bool)

(declare-fun tp!642811 () Bool)

(assert (=> b!2111402 (= e!1343036 (and tp!642812 tp!642811))))

(declare-fun b!2111403 () Bool)

(assert (=> b!2111403 (= e!1343028 e!1343026)))

(declare-fun tp!642815 () Bool)

(declare-fun tp!642805 () Bool)

(declare-fun array_inv!2552 (array!8004) Bool)

(assert (=> b!2111404 (= e!1343018 (and tp!642801 tp!642805 tp!642815 (array_inv!2550 (_keys!2613 (v!27959 (underlying!4827 (v!27960 (underlying!4828 (cache!2611 cacheUp!1078))))))) (array_inv!2552 (_values!2596 (v!27959 (underlying!4827 (v!27960 (underlying!4828 (cache!2611 cacheUp!1078))))))) e!1343022))))

(declare-fun mapNonEmpty!11163 () Bool)

(declare-fun tp!642803 () Bool)

(declare-fun tp!642813 () Bool)

(assert (=> mapNonEmpty!11163 (= mapRes!11163 (and tp!642803 tp!642813))))

(declare-fun mapRest!11162 () (Array (_ BitVec 32) List!23514))

(declare-fun mapValue!11162 () List!23514)

(declare-fun mapKey!11162 () (_ BitVec 32))

(assert (=> mapNonEmpty!11163 (= (arr!3544 (_values!2595 (v!27957 (underlying!4825 (v!27958 (underlying!4826 (cache!2610 cacheDown!1197))))))) (store mapRest!11162 mapKey!11162 mapValue!11162))))

(declare-fun b!2111405 () Bool)

(assert (=> b!2111405 (= e!1343035 e!1343029)))

(declare-fun res!916939 () Bool)

(assert (=> b!2111405 (=> (not res!916939) (not e!1343029))))

(declare-fun isSuffix!582 (List!23515 List!23515) Bool)

(assert (=> b!2111405 (= res!916939 (isSuffix!582 lt!792396 (list!9479 totalInput!1248)))))

(assert (=> b!2111405 (= lt!792396 (list!9479 input!6603))))

(declare-fun b!2111406 () Bool)

(declare-fun tp!642820 () Bool)

(assert (=> b!2111406 (= e!1343036 tp!642820)))

(declare-fun b!2111407 () Bool)

(declare-fun res!916936 () Bool)

(assert (=> b!2111407 (=> (not res!916936) (not e!1343035))))

(declare-fun valid!1830 (CacheDown!1528) Bool)

(assert (=> b!2111407 (= res!916936 (valid!1830 cacheDown!1197))))

(declare-fun b!2111408 () Bool)

(declare-fun tp!642810 () Bool)

(assert (=> b!2111408 (= e!1343032 (and (inv!31009 (c!339143 totalInput!1248)) tp!642810))))

(assert (= (and start!206444 res!916937) b!2111387))

(assert (= (and b!2111387 res!916940) b!2111407))

(assert (= (and b!2111407 res!916936) b!2111405))

(assert (= (and b!2111405 res!916939) b!2111395))

(assert (= (and b!2111395 res!916938) b!2111389))

(assert (= start!206444 b!2111396))

(assert (= (and b!2111397 condMapEmpty!11162) mapIsEmpty!11162))

(assert (= (and b!2111397 (not condMapEmpty!11162)) mapNonEmpty!11163))

(assert (= b!2111385 b!2111397))

(assert (= b!2111391 b!2111385))

(assert (= b!2111392 b!2111391))

(assert (= (and b!2111390 ((_ is LongMap!2315) (v!27958 (underlying!4826 (cache!2610 cacheDown!1197))))) b!2111392))

(assert (= b!2111384 b!2111390))

(assert (= (and b!2111403 ((_ is HashMap!2229) (cache!2610 cacheDown!1197))) b!2111384))

(assert (= start!206444 b!2111403))

(assert (= (and start!206444 ((_ is ElementMatch!5607) r!15329)) b!2111394))

(assert (= (and start!206444 ((_ is Concat!9909) r!15329)) b!2111388))

(assert (= (and start!206444 ((_ is Star!5607) r!15329)) b!2111406))

(assert (= (and start!206444 ((_ is Union!5607) r!15329)) b!2111402))

(assert (= start!206444 b!2111408))

(assert (= (and b!2111401 condMapEmpty!11163) mapIsEmpty!11163))

(assert (= (and b!2111401 (not condMapEmpty!11163)) mapNonEmpty!11162))

(assert (= b!2111404 b!2111401))

(assert (= b!2111398 b!2111404))

(assert (= b!2111399 b!2111398))

(assert (= (and b!2111400 ((_ is LongMap!2316) (v!27960 (underlying!4828 (cache!2611 cacheUp!1078))))) b!2111399))

(assert (= b!2111393 b!2111400))

(assert (= (and b!2111386 ((_ is HashMap!2230) (cache!2611 cacheUp!1078))) b!2111393))

(assert (= start!206444 b!2111386))

(declare-fun m!2568215 () Bool)

(assert (=> b!2111405 m!2568215))

(assert (=> b!2111405 m!2568215))

(declare-fun m!2568217 () Bool)

(assert (=> b!2111405 m!2568217))

(declare-fun m!2568219 () Bool)

(assert (=> b!2111405 m!2568219))

(declare-fun m!2568221 () Bool)

(assert (=> b!2111385 m!2568221))

(declare-fun m!2568223 () Bool)

(assert (=> b!2111385 m!2568223))

(declare-fun m!2568225 () Bool)

(assert (=> b!2111408 m!2568225))

(declare-fun m!2568227 () Bool)

(assert (=> mapNonEmpty!11163 m!2568227))

(declare-fun m!2568229 () Bool)

(assert (=> start!206444 m!2568229))

(declare-fun m!2568231 () Bool)

(assert (=> start!206444 m!2568231))

(declare-fun m!2568233 () Bool)

(assert (=> start!206444 m!2568233))

(declare-fun m!2568235 () Bool)

(assert (=> start!206444 m!2568235))

(declare-fun m!2568237 () Bool)

(assert (=> start!206444 m!2568237))

(declare-fun m!2568239 () Bool)

(assert (=> b!2111389 m!2568239))

(declare-fun m!2568241 () Bool)

(assert (=> b!2111407 m!2568241))

(declare-fun m!2568243 () Bool)

(assert (=> b!2111387 m!2568243))

(declare-fun m!2568245 () Bool)

(assert (=> mapNonEmpty!11162 m!2568245))

(declare-fun m!2568247 () Bool)

(assert (=> b!2111404 m!2568247))

(declare-fun m!2568249 () Bool)

(assert (=> b!2111404 m!2568249))

(declare-fun m!2568251 () Bool)

(assert (=> b!2111396 m!2568251))

(declare-fun m!2568253 () Bool)

(assert (=> b!2111395 m!2568253))

(declare-fun m!2568255 () Bool)

(assert (=> b!2111395 m!2568255))

(declare-fun m!2568257 () Bool)

(assert (=> b!2111395 m!2568257))

(declare-fun m!2568259 () Bool)

(assert (=> b!2111395 m!2568259))

(declare-fun m!2568261 () Bool)

(assert (=> b!2111395 m!2568261))

(declare-fun m!2568263 () Bool)

(assert (=> b!2111395 m!2568263))

(declare-fun m!2568265 () Bool)

(assert (=> b!2111395 m!2568265))

(declare-fun m!2568267 () Bool)

(assert (=> b!2111395 m!2568267))

(check-sat tp_is_empty!9403 (not b_next!61705) (not b_next!61709) (not b!2111389) (not b!2111385) (not b_next!61711) (not start!206444) (not mapNonEmpty!11163) (not b_next!61707) b_and!170583 (not mapNonEmpty!11162) (not b!2111397) (not b!2111396) b_and!170587 (not b!2111395) b_and!170581 (not b!2111408) (not b!2111407) (not b!2111404) b_and!170585 (not b!2111401) (not b!2111406) (not b!2111402) (not b!2111405) (not b!2111388) (not b!2111387))
(check-sat b_and!170587 b_and!170581 (not b_next!61705) b_and!170585 (not b_next!61709) (not b_next!61711) (not b_next!61707) b_and!170583)
