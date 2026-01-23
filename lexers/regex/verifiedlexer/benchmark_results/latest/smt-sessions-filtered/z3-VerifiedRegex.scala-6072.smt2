; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296254 () Bool)

(assert start!296254)

(declare-fun b!3160016 () Bool)

(declare-fun b_free!82945 () Bool)

(declare-fun b_next!83649 () Bool)

(assert (=> b!3160016 (= b_free!82945 (not b_next!83649))))

(declare-fun tp!993715 () Bool)

(declare-fun b_and!209187 () Bool)

(assert (=> b!3160016 (= tp!993715 b_and!209187)))

(declare-fun b!3160021 () Bool)

(declare-fun b_free!82947 () Bool)

(declare-fun b_next!83651 () Bool)

(assert (=> b!3160021 (= b_free!82947 (not b_next!83651))))

(declare-fun tp!993708 () Bool)

(declare-fun b_and!209189 () Bool)

(assert (=> b!3160021 (= tp!993708 b_and!209189)))

(declare-fun b!3160013 () Bool)

(declare-fun e!1968666 () Bool)

(declare-fun e!1968664 () Bool)

(assert (=> b!3160013 (= e!1968666 e!1968664)))

(declare-fun b!3160014 () Bool)

(declare-fun res!1286816 () Bool)

(declare-fun e!1968670 () Bool)

(assert (=> b!3160014 (=> (not res!1286816) (not e!1968670))))

(declare-datatypes ((array!14638 0))(
  ( (array!14639 (arr!6522 (Array (_ BitVec 32) (_ BitVec 64))) (size!26608 (_ BitVec 32))) )
))
(declare-datatypes ((C!19576 0))(
  ( (C!19577 (val!11824 Int)) )
))
(declare-datatypes ((Regex!9695 0))(
  ( (ElementMatch!9695 (c!531529 C!19576)) (Concat!15016 (regOne!19902 Regex!9695) (regTwo!19902 Regex!9695)) (EmptyExpr!9695) (Star!9695 (reg!10024 Regex!9695)) (EmptyLang!9695) (Union!9695 (regOne!19903 Regex!9695) (regTwo!19903 Regex!9695)) )
))
(declare-datatypes ((tuple2!34294 0))(
  ( (tuple2!34295 (_1!20279 Regex!9695) (_2!20279 C!19576)) )
))
(declare-datatypes ((tuple2!34296 0))(
  ( (tuple2!34297 (_1!20280 tuple2!34294) (_2!20280 Regex!9695)) )
))
(declare-datatypes ((List!35520 0))(
  ( (Nil!35396) (Cons!35396 (h!40816 tuple2!34296) (t!234585 List!35520)) )
))
(declare-datatypes ((array!14640 0))(
  ( (array!14641 (arr!6523 (Array (_ BitVec 32) List!35520)) (size!26609 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8232 0))(
  ( (LongMapFixedSize!8233 (defaultEntry!4501 Int) (mask!10757 (_ BitVec 32)) (extraKeys!4365 (_ BitVec 32)) (zeroValue!4375 List!35520) (minValue!4375 List!35520) (_size!8275 (_ BitVec 32)) (_keys!4416 array!14638) (_values!4397 array!14640) (_vacant!4177 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4032 0))(
  ( (HashableExt!4031 (__x!22454 Int)) )
))
(declare-datatypes ((Cell!16273 0))(
  ( (Cell!16274 (v!35007 LongMapFixedSize!8232)) )
))
(declare-datatypes ((MutLongMap!4116 0))(
  ( (LongMap!4116 (underlying!8461 Cell!16273)) (MutLongMapExt!4115 (__x!22455 Int)) )
))
(declare-datatypes ((Cell!16275 0))(
  ( (Cell!16276 (v!35008 MutLongMap!4116)) )
))
(declare-datatypes ((MutableMap!4022 0))(
  ( (MutableMapExt!4021 (__x!22456 Int)) (HashMap!4022 (underlying!8462 Cell!16275) (hashF!6064 Hashable!4032) (_size!8276 (_ BitVec 32)) (defaultValue!4193 Int)) )
))
(declare-datatypes ((Cache!314 0))(
  ( (Cache!315 (cache!4158 MutableMap!4022)) )
))
(declare-fun cache!429 () Cache!314)

(declare-fun valid!3203 (Cache!314) Bool)

(assert (=> b!3160014 (= res!1286816 (valid!3203 cache!429))))

(declare-fun b!3160015 () Bool)

(declare-fun e!1968665 () Bool)

(assert (=> b!3160015 (= e!1968665 e!1968666)))

(declare-fun e!1968675 () Bool)

(declare-fun e!1968668 () Bool)

(assert (=> b!3160016 (= e!1968675 (and e!1968668 tp!993715))))

(declare-fun b!3160017 () Bool)

(declare-fun r!13207 () Regex!9695)

(declare-fun e!1968673 () Bool)

(declare-fun lt!1062697 () Regex!9695)

(declare-datatypes ((List!35521 0))(
  ( (Nil!35397) (Cons!35397 (h!40817 C!19576) (t!234586 List!35521)) )
))
(declare-fun input!5974 () List!35521)

(declare-fun derivative!341 (Regex!9695 List!35521) Regex!9695)

(assert (=> b!3160017 (= e!1968673 (not (= lt!1062697 (derivative!341 r!13207 input!5974))))))

(declare-fun b!3160018 () Bool)

(assert (=> b!3160018 (= e!1968670 e!1968673)))

(declare-fun res!1286817 () Bool)

(assert (=> b!3160018 (=> res!1286817 e!1968673)))

(declare-fun validRegex!4427 (Regex!9695) Bool)

(assert (=> b!3160018 (= res!1286817 (not (validRegex!4427 lt!1062697)))))

(declare-datatypes ((tuple2!34298 0))(
  ( (tuple2!34299 (_1!20281 Regex!9695) (_2!20281 Cache!314)) )
))
(declare-fun derivativeStepMem!15 (Regex!9695 C!19576 Cache!314) tuple2!34298)

(assert (=> b!3160018 (= lt!1062697 (derivative!341 (_1!20281 (derivativeStepMem!15 r!13207 (h!40817 input!5974) cache!429)) (t!234586 input!5974)))))

(declare-fun b!3160019 () Bool)

(declare-fun e!1968671 () Bool)

(declare-fun tp!993716 () Bool)

(declare-fun tp!993711 () Bool)

(assert (=> b!3160019 (= e!1968671 (and tp!993716 tp!993711))))

(declare-fun b!3160020 () Bool)

(declare-fun tp_is_empty!16953 () Bool)

(assert (=> b!3160020 (= e!1968671 tp_is_empty!16953)))

(declare-fun res!1286815 () Bool)

(assert (=> start!296254 (=> (not res!1286815) (not e!1968670))))

(assert (=> start!296254 (= res!1286815 (validRegex!4427 r!13207))))

(assert (=> start!296254 e!1968670))

(assert (=> start!296254 e!1968671))

(declare-fun e!1968674 () Bool)

(declare-fun inv!48019 (Cache!314) Bool)

(assert (=> start!296254 (and (inv!48019 cache!429) e!1968674)))

(declare-fun e!1968672 () Bool)

(assert (=> start!296254 e!1968672))

(declare-fun tp!993717 () Bool)

(declare-fun e!1968667 () Bool)

(declare-fun tp!993705 () Bool)

(declare-fun array_inv!4670 (array!14638) Bool)

(declare-fun array_inv!4671 (array!14640) Bool)

(assert (=> b!3160021 (= e!1968664 (and tp!993708 tp!993717 tp!993705 (array_inv!4670 (_keys!4416 (v!35007 (underlying!8461 (v!35008 (underlying!8462 (cache!4158 cache!429))))))) (array_inv!4671 (_values!4397 (v!35007 (underlying!8461 (v!35008 (underlying!8462 (cache!4158 cache!429))))))) e!1968667))))

(declare-fun b!3160022 () Bool)

(declare-fun tp!993706 () Bool)

(assert (=> b!3160022 (= e!1968672 (and tp_is_empty!16953 tp!993706))))

(declare-fun b!3160023 () Bool)

(declare-fun tp!993707 () Bool)

(declare-fun tp!993712 () Bool)

(assert (=> b!3160023 (= e!1968671 (and tp!993707 tp!993712))))

(declare-fun b!3160024 () Bool)

(declare-fun tp!993714 () Bool)

(assert (=> b!3160024 (= e!1968671 tp!993714)))

(declare-fun b!3160025 () Bool)

(declare-fun res!1286814 () Bool)

(assert (=> b!3160025 (=> (not res!1286814) (not e!1968670))))

(get-info :version)

(assert (=> b!3160025 (= res!1286814 ((_ is Cons!35397) input!5974))))

(declare-fun mapIsEmpty!18683 () Bool)

(declare-fun mapRes!18683 () Bool)

(assert (=> mapIsEmpty!18683 mapRes!18683))

(declare-fun b!3160026 () Bool)

(declare-fun tp!993710 () Bool)

(assert (=> b!3160026 (= e!1968667 (and tp!993710 mapRes!18683))))

(declare-fun condMapEmpty!18683 () Bool)

(declare-fun mapDefault!18683 () List!35520)

(assert (=> b!3160026 (= condMapEmpty!18683 (= (arr!6523 (_values!4397 (v!35007 (underlying!8461 (v!35008 (underlying!8462 (cache!4158 cache!429))))))) ((as const (Array (_ BitVec 32) List!35520)) mapDefault!18683)))))

(declare-fun b!3160027 () Bool)

(assert (=> b!3160027 (= e!1968674 e!1968675)))

(declare-fun mapNonEmpty!18683 () Bool)

(declare-fun tp!993713 () Bool)

(declare-fun tp!993709 () Bool)

(assert (=> mapNonEmpty!18683 (= mapRes!18683 (and tp!993713 tp!993709))))

(declare-fun mapValue!18683 () List!35520)

(declare-fun mapRest!18683 () (Array (_ BitVec 32) List!35520))

(declare-fun mapKey!18683 () (_ BitVec 32))

(assert (=> mapNonEmpty!18683 (= (arr!6523 (_values!4397 (v!35007 (underlying!8461 (v!35008 (underlying!8462 (cache!4158 cache!429))))))) (store mapRest!18683 mapKey!18683 mapValue!18683))))

(declare-fun b!3160028 () Bool)

(declare-fun lt!1062696 () MutLongMap!4116)

(assert (=> b!3160028 (= e!1968668 (and e!1968665 ((_ is LongMap!4116) lt!1062696)))))

(assert (=> b!3160028 (= lt!1062696 (v!35008 (underlying!8462 (cache!4158 cache!429))))))

(assert (= (and start!296254 res!1286815) b!3160014))

(assert (= (and b!3160014 res!1286816) b!3160025))

(assert (= (and b!3160025 res!1286814) b!3160018))

(assert (= (and b!3160018 (not res!1286817)) b!3160017))

(assert (= (and start!296254 ((_ is ElementMatch!9695) r!13207)) b!3160020))

(assert (= (and start!296254 ((_ is Concat!15016) r!13207)) b!3160019))

(assert (= (and start!296254 ((_ is Star!9695) r!13207)) b!3160024))

(assert (= (and start!296254 ((_ is Union!9695) r!13207)) b!3160023))

(assert (= (and b!3160026 condMapEmpty!18683) mapIsEmpty!18683))

(assert (= (and b!3160026 (not condMapEmpty!18683)) mapNonEmpty!18683))

(assert (= b!3160021 b!3160026))

(assert (= b!3160013 b!3160021))

(assert (= b!3160015 b!3160013))

(assert (= (and b!3160028 ((_ is LongMap!4116) (v!35008 (underlying!8462 (cache!4158 cache!429))))) b!3160015))

(assert (= b!3160016 b!3160028))

(assert (= (and b!3160027 ((_ is HashMap!4022) (cache!4158 cache!429))) b!3160016))

(assert (= start!296254 b!3160027))

(assert (= (and start!296254 ((_ is Cons!35397) input!5974)) b!3160022))

(declare-fun m!3425364 () Bool)

(assert (=> b!3160021 m!3425364))

(declare-fun m!3425366 () Bool)

(assert (=> b!3160021 m!3425366))

(declare-fun m!3425368 () Bool)

(assert (=> start!296254 m!3425368))

(declare-fun m!3425370 () Bool)

(assert (=> start!296254 m!3425370))

(declare-fun m!3425372 () Bool)

(assert (=> b!3160014 m!3425372))

(declare-fun m!3425374 () Bool)

(assert (=> b!3160017 m!3425374))

(declare-fun m!3425376 () Bool)

(assert (=> b!3160018 m!3425376))

(declare-fun m!3425378 () Bool)

(assert (=> b!3160018 m!3425378))

(declare-fun m!3425380 () Bool)

(assert (=> b!3160018 m!3425380))

(declare-fun m!3425382 () Bool)

(assert (=> mapNonEmpty!18683 m!3425382))

(check-sat b_and!209189 (not b!3160014) (not b!3160022) (not b!3160018) (not b_next!83651) (not b!3160019) tp_is_empty!16953 (not b!3160021) (not b_next!83649) b_and!209187 (not b!3160017) (not mapNonEmpty!18683) (not start!296254) (not b!3160024) (not b!3160026) (not b!3160023))
(check-sat b_and!209189 b_and!209187 (not b_next!83649) (not b_next!83651))
(get-model)

(declare-fun d!868347 () Bool)

(assert (=> d!868347 (= (array_inv!4670 (_keys!4416 (v!35007 (underlying!8461 (v!35008 (underlying!8462 (cache!4158 cache!429))))))) (bvsge (size!26608 (_keys!4416 (v!35007 (underlying!8461 (v!35008 (underlying!8462 (cache!4158 cache!429))))))) #b00000000000000000000000000000000))))

(assert (=> b!3160021 d!868347))

(declare-fun d!868349 () Bool)

(assert (=> d!868349 (= (array_inv!4671 (_values!4397 (v!35007 (underlying!8461 (v!35008 (underlying!8462 (cache!4158 cache!429))))))) (bvsge (size!26609 (_values!4397 (v!35007 (underlying!8461 (v!35008 (underlying!8462 (cache!4158 cache!429))))))) #b00000000000000000000000000000000))))

(assert (=> b!3160021 d!868349))

(declare-fun d!868351 () Bool)

(declare-fun lt!1062700 () Regex!9695)

(assert (=> d!868351 (validRegex!4427 lt!1062700)))

(declare-fun e!1968678 () Regex!9695)

(assert (=> d!868351 (= lt!1062700 e!1968678)))

(declare-fun c!531532 () Bool)

(assert (=> d!868351 (= c!531532 ((_ is Cons!35397) input!5974))))

(assert (=> d!868351 (validRegex!4427 r!13207)))

(assert (=> d!868351 (= (derivative!341 r!13207 input!5974) lt!1062700)))

(declare-fun b!3160033 () Bool)

(declare-fun derivativeStep!2876 (Regex!9695 C!19576) Regex!9695)

(assert (=> b!3160033 (= e!1968678 (derivative!341 (derivativeStep!2876 r!13207 (h!40817 input!5974)) (t!234586 input!5974)))))

(declare-fun b!3160034 () Bool)

(assert (=> b!3160034 (= e!1968678 r!13207)))

(assert (= (and d!868351 c!531532) b!3160033))

(assert (= (and d!868351 (not c!531532)) b!3160034))

(declare-fun m!3425384 () Bool)

(assert (=> d!868351 m!3425384))

(assert (=> d!868351 m!3425368))

(declare-fun m!3425386 () Bool)

(assert (=> b!3160033 m!3425386))

(assert (=> b!3160033 m!3425386))

(declare-fun m!3425388 () Bool)

(assert (=> b!3160033 m!3425388))

(assert (=> b!3160017 d!868351))

(declare-fun b!3160053 () Bool)

(declare-fun e!1968699 () Bool)

(declare-fun e!1968694 () Bool)

(assert (=> b!3160053 (= e!1968699 e!1968694)))

(declare-fun c!531537 () Bool)

(assert (=> b!3160053 (= c!531537 ((_ is Star!9695) r!13207))))

(declare-fun b!3160054 () Bool)

(declare-fun e!1968695 () Bool)

(assert (=> b!3160054 (= e!1968694 e!1968695)))

(declare-fun res!1286829 () Bool)

(declare-fun nullable!3325 (Regex!9695) Bool)

(assert (=> b!3160054 (= res!1286829 (not (nullable!3325 (reg!10024 r!13207))))))

(assert (=> b!3160054 (=> (not res!1286829) (not e!1968695))))

(declare-fun b!3160055 () Bool)

(declare-fun e!1968696 () Bool)

(declare-fun e!1968698 () Bool)

(assert (=> b!3160055 (= e!1968696 e!1968698)))

(declare-fun res!1286831 () Bool)

(assert (=> b!3160055 (=> (not res!1286831) (not e!1968698))))

(declare-fun call!228849 () Bool)

(assert (=> b!3160055 (= res!1286831 call!228849)))

(declare-fun bm!228844 () Bool)

(declare-fun call!228850 () Bool)

(declare-fun c!531538 () Bool)

(assert (=> bm!228844 (= call!228850 (validRegex!4427 (ite c!531538 (regOne!19903 r!13207) (regTwo!19902 r!13207))))))

(declare-fun bm!228845 () Bool)

(declare-fun call!228851 () Bool)

(assert (=> bm!228845 (= call!228851 (validRegex!4427 (ite c!531537 (reg!10024 r!13207) (ite c!531538 (regTwo!19903 r!13207) (regOne!19902 r!13207)))))))

(declare-fun b!3160056 () Bool)

(declare-fun res!1286828 () Bool)

(assert (=> b!3160056 (=> res!1286828 e!1968696)))

(assert (=> b!3160056 (= res!1286828 (not ((_ is Concat!15016) r!13207)))))

(declare-fun e!1968693 () Bool)

(assert (=> b!3160056 (= e!1968693 e!1968696)))

(declare-fun b!3160057 () Bool)

(assert (=> b!3160057 (= e!1968694 e!1968693)))

(assert (=> b!3160057 (= c!531538 ((_ is Union!9695) r!13207))))

(declare-fun b!3160058 () Bool)

(declare-fun res!1286832 () Bool)

(declare-fun e!1968697 () Bool)

(assert (=> b!3160058 (=> (not res!1286832) (not e!1968697))))

(assert (=> b!3160058 (= res!1286832 call!228850)))

(assert (=> b!3160058 (= e!1968693 e!1968697)))

(declare-fun d!868353 () Bool)

(declare-fun res!1286830 () Bool)

(assert (=> d!868353 (=> res!1286830 e!1968699)))

(assert (=> d!868353 (= res!1286830 ((_ is ElementMatch!9695) r!13207))))

(assert (=> d!868353 (= (validRegex!4427 r!13207) e!1968699)))

(declare-fun b!3160059 () Bool)

(assert (=> b!3160059 (= e!1968697 call!228849)))

(declare-fun b!3160060 () Bool)

(assert (=> b!3160060 (= e!1968698 call!228850)))

(declare-fun bm!228846 () Bool)

(assert (=> bm!228846 (= call!228849 call!228851)))

(declare-fun b!3160061 () Bool)

(assert (=> b!3160061 (= e!1968695 call!228851)))

(assert (= (and d!868353 (not res!1286830)) b!3160053))

(assert (= (and b!3160053 c!531537) b!3160054))

(assert (= (and b!3160053 (not c!531537)) b!3160057))

(assert (= (and b!3160054 res!1286829) b!3160061))

(assert (= (and b!3160057 c!531538) b!3160058))

(assert (= (and b!3160057 (not c!531538)) b!3160056))

(assert (= (and b!3160058 res!1286832) b!3160059))

(assert (= (and b!3160056 (not res!1286828)) b!3160055))

(assert (= (and b!3160055 res!1286831) b!3160060))

(assert (= (or b!3160058 b!3160060) bm!228844))

(assert (= (or b!3160059 b!3160055) bm!228846))

(assert (= (or b!3160061 bm!228846) bm!228845))

(declare-fun m!3425390 () Bool)

(assert (=> b!3160054 m!3425390))

(declare-fun m!3425392 () Bool)

(assert (=> bm!228844 m!3425392))

(declare-fun m!3425394 () Bool)

(assert (=> bm!228845 m!3425394))

(assert (=> start!296254 d!868353))

(declare-fun d!868355 () Bool)

(declare-fun res!1286835 () Bool)

(declare-fun e!1968702 () Bool)

(assert (=> d!868355 (=> (not res!1286835) (not e!1968702))))

(assert (=> d!868355 (= res!1286835 ((_ is HashMap!4022) (cache!4158 cache!429)))))

(assert (=> d!868355 (= (inv!48019 cache!429) e!1968702)))

(declare-fun b!3160064 () Bool)

(declare-fun validCacheMap!40 (MutableMap!4022) Bool)

(assert (=> b!3160064 (= e!1968702 (validCacheMap!40 (cache!4158 cache!429)))))

(assert (= (and d!868355 res!1286835) b!3160064))

(declare-fun m!3425396 () Bool)

(assert (=> b!3160064 m!3425396))

(assert (=> start!296254 d!868355))

(declare-fun b!3160065 () Bool)

(declare-fun e!1968709 () Bool)

(declare-fun e!1968704 () Bool)

(assert (=> b!3160065 (= e!1968709 e!1968704)))

(declare-fun c!531539 () Bool)

(assert (=> b!3160065 (= c!531539 ((_ is Star!9695) lt!1062697))))

(declare-fun b!3160066 () Bool)

(declare-fun e!1968705 () Bool)

(assert (=> b!3160066 (= e!1968704 e!1968705)))

(declare-fun res!1286837 () Bool)

(assert (=> b!3160066 (= res!1286837 (not (nullable!3325 (reg!10024 lt!1062697))))))

(assert (=> b!3160066 (=> (not res!1286837) (not e!1968705))))

(declare-fun b!3160067 () Bool)

(declare-fun e!1968706 () Bool)

(declare-fun e!1968708 () Bool)

(assert (=> b!3160067 (= e!1968706 e!1968708)))

(declare-fun res!1286839 () Bool)

(assert (=> b!3160067 (=> (not res!1286839) (not e!1968708))))

(declare-fun call!228852 () Bool)

(assert (=> b!3160067 (= res!1286839 call!228852)))

(declare-fun bm!228847 () Bool)

(declare-fun call!228853 () Bool)

(declare-fun c!531540 () Bool)

(assert (=> bm!228847 (= call!228853 (validRegex!4427 (ite c!531540 (regOne!19903 lt!1062697) (regTwo!19902 lt!1062697))))))

(declare-fun call!228854 () Bool)

(declare-fun bm!228848 () Bool)

(assert (=> bm!228848 (= call!228854 (validRegex!4427 (ite c!531539 (reg!10024 lt!1062697) (ite c!531540 (regTwo!19903 lt!1062697) (regOne!19902 lt!1062697)))))))

(declare-fun b!3160068 () Bool)

(declare-fun res!1286836 () Bool)

(assert (=> b!3160068 (=> res!1286836 e!1968706)))

(assert (=> b!3160068 (= res!1286836 (not ((_ is Concat!15016) lt!1062697)))))

(declare-fun e!1968703 () Bool)

(assert (=> b!3160068 (= e!1968703 e!1968706)))

(declare-fun b!3160069 () Bool)

(assert (=> b!3160069 (= e!1968704 e!1968703)))

(assert (=> b!3160069 (= c!531540 ((_ is Union!9695) lt!1062697))))

(declare-fun b!3160070 () Bool)

(declare-fun res!1286840 () Bool)

(declare-fun e!1968707 () Bool)

(assert (=> b!3160070 (=> (not res!1286840) (not e!1968707))))

(assert (=> b!3160070 (= res!1286840 call!228853)))

(assert (=> b!3160070 (= e!1968703 e!1968707)))

(declare-fun d!868357 () Bool)

(declare-fun res!1286838 () Bool)

(assert (=> d!868357 (=> res!1286838 e!1968709)))

(assert (=> d!868357 (= res!1286838 ((_ is ElementMatch!9695) lt!1062697))))

(assert (=> d!868357 (= (validRegex!4427 lt!1062697) e!1968709)))

(declare-fun b!3160071 () Bool)

(assert (=> b!3160071 (= e!1968707 call!228852)))

(declare-fun b!3160072 () Bool)

(assert (=> b!3160072 (= e!1968708 call!228853)))

(declare-fun bm!228849 () Bool)

(assert (=> bm!228849 (= call!228852 call!228854)))

(declare-fun b!3160073 () Bool)

(assert (=> b!3160073 (= e!1968705 call!228854)))

(assert (= (and d!868357 (not res!1286838)) b!3160065))

(assert (= (and b!3160065 c!531539) b!3160066))

(assert (= (and b!3160065 (not c!531539)) b!3160069))

(assert (= (and b!3160066 res!1286837) b!3160073))

(assert (= (and b!3160069 c!531540) b!3160070))

(assert (= (and b!3160069 (not c!531540)) b!3160068))

(assert (= (and b!3160070 res!1286840) b!3160071))

(assert (= (and b!3160068 (not res!1286836)) b!3160067))

(assert (= (and b!3160067 res!1286839) b!3160072))

(assert (= (or b!3160070 b!3160072) bm!228847))

(assert (= (or b!3160071 b!3160067) bm!228849))

(assert (= (or b!3160073 bm!228849) bm!228848))

(declare-fun m!3425398 () Bool)

(assert (=> b!3160066 m!3425398))

(declare-fun m!3425400 () Bool)

(assert (=> bm!228847 m!3425400))

(declare-fun m!3425402 () Bool)

(assert (=> bm!228848 m!3425402))

(assert (=> b!3160018 d!868357))

(declare-fun d!868359 () Bool)

(declare-fun lt!1062701 () Regex!9695)

(assert (=> d!868359 (validRegex!4427 lt!1062701)))

(declare-fun e!1968710 () Regex!9695)

(assert (=> d!868359 (= lt!1062701 e!1968710)))

(declare-fun c!531541 () Bool)

(assert (=> d!868359 (= c!531541 ((_ is Cons!35397) (t!234586 input!5974)))))

(assert (=> d!868359 (validRegex!4427 (_1!20281 (derivativeStepMem!15 r!13207 (h!40817 input!5974) cache!429)))))

(assert (=> d!868359 (= (derivative!341 (_1!20281 (derivativeStepMem!15 r!13207 (h!40817 input!5974) cache!429)) (t!234586 input!5974)) lt!1062701)))

(declare-fun b!3160074 () Bool)

(assert (=> b!3160074 (= e!1968710 (derivative!341 (derivativeStep!2876 (_1!20281 (derivativeStepMem!15 r!13207 (h!40817 input!5974) cache!429)) (h!40817 (t!234586 input!5974))) (t!234586 (t!234586 input!5974))))))

(declare-fun b!3160075 () Bool)

(assert (=> b!3160075 (= e!1968710 (_1!20281 (derivativeStepMem!15 r!13207 (h!40817 input!5974) cache!429)))))

(assert (= (and d!868359 c!531541) b!3160074))

(assert (= (and d!868359 (not c!531541)) b!3160075))

(declare-fun m!3425404 () Bool)

(assert (=> d!868359 m!3425404))

(declare-fun m!3425406 () Bool)

(assert (=> d!868359 m!3425406))

(declare-fun m!3425408 () Bool)

(assert (=> b!3160074 m!3425408))

(assert (=> b!3160074 m!3425408))

(declare-fun m!3425410 () Bool)

(assert (=> b!3160074 m!3425410))

(assert (=> b!3160018 d!868359))

(declare-fun b!3160100 () Bool)

(declare-fun e!1968725 () tuple2!34298)

(declare-fun e!1968728 () tuple2!34298)

(assert (=> b!3160100 (= e!1968725 e!1968728)))

(declare-fun c!531558 () Bool)

(assert (=> b!3160100 (= c!531558 ((_ is Union!9695) r!13207))))

(declare-fun b!3160101 () Bool)

(declare-fun e!1968726 () tuple2!34298)

(declare-fun e!1968724 () tuple2!34298)

(assert (=> b!3160101 (= e!1968726 e!1968724)))

(declare-fun c!531556 () Bool)

(assert (=> b!3160101 (= c!531556 (nullable!3325 (regOne!19902 r!13207)))))

(declare-fun b!3160102 () Bool)

(declare-fun c!531555 () Bool)

(assert (=> b!3160102 (= c!531555 ((_ is Star!9695) r!13207))))

(assert (=> b!3160102 (= e!1968728 e!1968726)))

(declare-fun lt!1062721 () tuple2!34298)

(declare-fun call!228863 () tuple2!34298)

(declare-fun bm!228858 () Bool)

(declare-fun lt!1062724 () tuple2!34298)

(assert (=> bm!228858 (= call!228863 (derivativeStepMem!15 (ite c!531558 (regTwo!19903 r!13207) (regTwo!19902 r!13207)) (h!40817 input!5974) (ite c!531558 (_2!20281 lt!1062724) (_2!20281 lt!1062721))))))

(declare-fun b!3160103 () Bool)

(declare-fun lt!1062727 () tuple2!34298)

(declare-fun e!1968723 () tuple2!34298)

(declare-datatypes ((Unit!49750 0))(
  ( (Unit!49751) )
))
(declare-datatypes ((tuple2!34300 0))(
  ( (tuple2!34301 (_1!20282 Unit!49750) (_2!20282 Cache!314)) )
))
(declare-fun update!256 (Cache!314 Regex!9695 C!19576 Regex!9695) tuple2!34300)

(assert (=> b!3160103 (= e!1968723 (tuple2!34299 (_1!20281 lt!1062727) (_2!20282 (update!256 (_2!20281 lt!1062727) r!13207 (h!40817 input!5974) (_1!20281 lt!1062727)))))))

(declare-fun c!531557 () Bool)

(assert (=> b!3160103 (= c!531557 (or ((_ is EmptyExpr!9695) r!13207) ((_ is EmptyLang!9695) r!13207)))))

(declare-fun e!1968727 () tuple2!34298)

(assert (=> b!3160103 (= lt!1062727 e!1968727)))

(declare-fun b!3160104 () Bool)

(declare-fun lt!1062725 () tuple2!34298)

(assert (=> b!3160104 (= lt!1062725 call!228863)))

(declare-fun call!228865 () tuple2!34298)

(assert (=> b!3160104 (= lt!1062721 call!228865)))

(assert (=> b!3160104 (= e!1968724 (tuple2!34299 (Union!9695 (Concat!15016 (_1!20281 lt!1062721) (regTwo!19902 r!13207)) (_1!20281 lt!1062725)) (_2!20281 lt!1062725)))))

(declare-fun b!3160105 () Bool)

(declare-datatypes ((Option!6864 0))(
  ( (None!6863) (Some!6863 (v!35009 Regex!9695)) )
))
(declare-fun lt!1062720 () Option!6864)

(assert (=> b!3160105 (= e!1968723 (tuple2!34299 (v!35009 lt!1062720) cache!429))))

(declare-fun bm!228859 () Bool)

(declare-fun call!228864 () tuple2!34298)

(declare-fun call!228866 () tuple2!34298)

(assert (=> bm!228859 (= call!228864 call!228866)))

(declare-fun bm!228860 () Bool)

(assert (=> bm!228860 (= call!228865 call!228864)))

(declare-fun b!3160107 () Bool)

(declare-fun lt!1062728 () tuple2!34298)

(assert (=> b!3160107 (= lt!1062728 call!228863)))

(assert (=> b!3160107 (= lt!1062724 call!228866)))

(assert (=> b!3160107 (= e!1968728 (tuple2!34299 (Union!9695 (_1!20281 lt!1062724) (_1!20281 lt!1062728)) (_2!20281 lt!1062728)))))

(declare-fun b!3160108 () Bool)

(declare-fun c!531559 () Bool)

(assert (=> b!3160108 (= c!531559 ((_ is ElementMatch!9695) r!13207))))

(assert (=> b!3160108 (= e!1968727 e!1968725)))

(declare-fun b!3160109 () Bool)

(assert (=> b!3160109 (= e!1968727 (tuple2!34299 EmptyLang!9695 cache!429))))

(declare-fun b!3160110 () Bool)

(assert (=> b!3160110 (= e!1968725 (tuple2!34299 (ite (= (h!40817 input!5974) (c!531529 r!13207)) EmptyExpr!9695 EmptyLang!9695) cache!429))))

(declare-fun b!3160111 () Bool)

(declare-fun lt!1062726 () tuple2!34298)

(assert (=> b!3160111 (= lt!1062726 call!228865)))

(assert (=> b!3160111 (= e!1968724 (tuple2!34299 (Union!9695 (Concat!15016 (_1!20281 lt!1062726) (regTwo!19902 r!13207)) EmptyLang!9695) (_2!20281 lt!1062726)))))

(declare-fun bm!228861 () Bool)

(assert (=> bm!228861 (= call!228866 (derivativeStepMem!15 (ite c!531558 (regOne!19903 r!13207) (ite c!531555 (reg!10024 r!13207) (regOne!19902 r!13207))) (h!40817 input!5974) cache!429))))

(declare-fun d!868361 () Bool)

(declare-fun lt!1062723 () tuple2!34298)

(assert (=> d!868361 (= (_1!20281 lt!1062723) (derivativeStep!2876 r!13207 (h!40817 input!5974)))))

(assert (=> d!868361 (= lt!1062723 e!1968723)))

(declare-fun c!531554 () Bool)

(assert (=> d!868361 (= c!531554 ((_ is Some!6863) lt!1062720))))

(declare-fun get!11178 (Cache!314 Regex!9695 C!19576) Option!6864)

(assert (=> d!868361 (= lt!1062720 (get!11178 cache!429 r!13207 (h!40817 input!5974)))))

(assert (=> d!868361 (validRegex!4427 r!13207)))

(assert (=> d!868361 (= (derivativeStepMem!15 r!13207 (h!40817 input!5974) cache!429) lt!1062723)))

(declare-fun b!3160106 () Bool)

(declare-fun lt!1062722 () tuple2!34298)

(assert (=> b!3160106 (= e!1968726 (tuple2!34299 (Concat!15016 (_1!20281 lt!1062722) (Star!9695 (reg!10024 r!13207))) (_2!20281 lt!1062722)))))

(assert (=> b!3160106 (= lt!1062722 call!228864)))

(assert (= (and d!868361 c!531554) b!3160105))

(assert (= (and d!868361 (not c!531554)) b!3160103))

(assert (= (and b!3160103 c!531557) b!3160109))

(assert (= (and b!3160103 (not c!531557)) b!3160108))

(assert (= (and b!3160108 c!531559) b!3160110))

(assert (= (and b!3160108 (not c!531559)) b!3160100))

(assert (= (and b!3160100 c!531558) b!3160107))

(assert (= (and b!3160100 (not c!531558)) b!3160102))

(assert (= (and b!3160102 c!531555) b!3160106))

(assert (= (and b!3160102 (not c!531555)) b!3160101))

(assert (= (and b!3160101 c!531556) b!3160104))

(assert (= (and b!3160101 (not c!531556)) b!3160111))

(assert (= (or b!3160104 b!3160111) bm!228860))

(assert (= (or b!3160106 bm!228860) bm!228859))

(assert (= (or b!3160107 b!3160104) bm!228858))

(assert (= (or b!3160107 bm!228859) bm!228861))

(declare-fun m!3425412 () Bool)

(assert (=> bm!228858 m!3425412))

(assert (=> d!868361 m!3425386))

(declare-fun m!3425414 () Bool)

(assert (=> d!868361 m!3425414))

(assert (=> d!868361 m!3425368))

(declare-fun m!3425416 () Bool)

(assert (=> bm!228861 m!3425416))

(declare-fun m!3425418 () Bool)

(assert (=> b!3160101 m!3425418))

(declare-fun m!3425420 () Bool)

(assert (=> b!3160103 m!3425420))

(assert (=> b!3160018 d!868361))

(declare-fun d!868363 () Bool)

(assert (=> d!868363 (= (valid!3203 cache!429) (validCacheMap!40 (cache!4158 cache!429)))))

(declare-fun bs!539398 () Bool)

(assert (= bs!539398 d!868363))

(assert (=> bs!539398 m!3425396))

(assert (=> b!3160014 d!868363))

(declare-fun b!3160116 () Bool)

(declare-fun tp!993726 () Bool)

(declare-fun tp!993725 () Bool)

(declare-fun e!1968731 () Bool)

(declare-fun tp!993724 () Bool)

(assert (=> b!3160116 (= e!1968731 (and tp!993724 tp_is_empty!16953 tp!993725 tp!993726))))

(assert (=> b!3160021 (= tp!993717 e!1968731)))

(assert (= (and b!3160021 ((_ is Cons!35396) (zeroValue!4375 (v!35007 (underlying!8461 (v!35008 (underlying!8462 (cache!4158 cache!429)))))))) b!3160116))

(declare-fun tp!993729 () Bool)

(declare-fun e!1968732 () Bool)

(declare-fun b!3160117 () Bool)

(declare-fun tp!993727 () Bool)

(declare-fun tp!993728 () Bool)

(assert (=> b!3160117 (= e!1968732 (and tp!993727 tp_is_empty!16953 tp!993728 tp!993729))))

(assert (=> b!3160021 (= tp!993705 e!1968732)))

(assert (= (and b!3160021 ((_ is Cons!35396) (minValue!4375 (v!35007 (underlying!8461 (v!35008 (underlying!8462 (cache!4158 cache!429)))))))) b!3160117))

(declare-fun tp!993731 () Bool)

(declare-fun tp!993732 () Bool)

(declare-fun b!3160118 () Bool)

(declare-fun e!1968733 () Bool)

(declare-fun tp!993730 () Bool)

(assert (=> b!3160118 (= e!1968733 (and tp!993730 tp_is_empty!16953 tp!993731 tp!993732))))

(assert (=> b!3160026 (= tp!993710 e!1968733)))

(assert (= (and b!3160026 ((_ is Cons!35396) mapDefault!18683)) b!3160118))

(declare-fun b!3160123 () Bool)

(declare-fun e!1968736 () Bool)

(declare-fun tp!993735 () Bool)

(assert (=> b!3160123 (= e!1968736 (and tp_is_empty!16953 tp!993735))))

(assert (=> b!3160022 (= tp!993706 e!1968736)))

(assert (= (and b!3160022 ((_ is Cons!35397) (t!234586 input!5974))) b!3160123))

(declare-fun e!1968739 () Bool)

(assert (=> b!3160023 (= tp!993707 e!1968739)))

(declare-fun b!3160135 () Bool)

(declare-fun tp!993748 () Bool)

(declare-fun tp!993749 () Bool)

(assert (=> b!3160135 (= e!1968739 (and tp!993748 tp!993749))))

(declare-fun b!3160136 () Bool)

(declare-fun tp!993750 () Bool)

(assert (=> b!3160136 (= e!1968739 tp!993750)))

(declare-fun b!3160137 () Bool)

(declare-fun tp!993747 () Bool)

(declare-fun tp!993746 () Bool)

(assert (=> b!3160137 (= e!1968739 (and tp!993747 tp!993746))))

(declare-fun b!3160134 () Bool)

(assert (=> b!3160134 (= e!1968739 tp_is_empty!16953)))

(assert (= (and b!3160023 ((_ is ElementMatch!9695) (regOne!19903 r!13207))) b!3160134))

(assert (= (and b!3160023 ((_ is Concat!15016) (regOne!19903 r!13207))) b!3160135))

(assert (= (and b!3160023 ((_ is Star!9695) (regOne!19903 r!13207))) b!3160136))

(assert (= (and b!3160023 ((_ is Union!9695) (regOne!19903 r!13207))) b!3160137))

(declare-fun e!1968740 () Bool)

(assert (=> b!3160023 (= tp!993712 e!1968740)))

(declare-fun b!3160139 () Bool)

(declare-fun tp!993753 () Bool)

(declare-fun tp!993754 () Bool)

(assert (=> b!3160139 (= e!1968740 (and tp!993753 tp!993754))))

(declare-fun b!3160140 () Bool)

(declare-fun tp!993755 () Bool)

(assert (=> b!3160140 (= e!1968740 tp!993755)))

(declare-fun b!3160141 () Bool)

(declare-fun tp!993752 () Bool)

(declare-fun tp!993751 () Bool)

(assert (=> b!3160141 (= e!1968740 (and tp!993752 tp!993751))))

(declare-fun b!3160138 () Bool)

(assert (=> b!3160138 (= e!1968740 tp_is_empty!16953)))

(assert (= (and b!3160023 ((_ is ElementMatch!9695) (regTwo!19903 r!13207))) b!3160138))

(assert (= (and b!3160023 ((_ is Concat!15016) (regTwo!19903 r!13207))) b!3160139))

(assert (= (and b!3160023 ((_ is Star!9695) (regTwo!19903 r!13207))) b!3160140))

(assert (= (and b!3160023 ((_ is Union!9695) (regTwo!19903 r!13207))) b!3160141))

(declare-fun b!3160148 () Bool)

(declare-fun tp!993773 () Bool)

(declare-fun e!1968745 () Bool)

(declare-fun tp!993776 () Bool)

(declare-fun tp!993770 () Bool)

(assert (=> b!3160148 (= e!1968745 (and tp!993773 tp_is_empty!16953 tp!993770 tp!993776))))

(declare-fun condMapEmpty!18686 () Bool)

(declare-fun mapDefault!18686 () List!35520)

(assert (=> mapNonEmpty!18683 (= condMapEmpty!18686 (= mapRest!18683 ((as const (Array (_ BitVec 32) List!35520)) mapDefault!18686)))))

(declare-fun e!1968746 () Bool)

(declare-fun mapRes!18686 () Bool)

(assert (=> mapNonEmpty!18683 (= tp!993713 (and e!1968746 mapRes!18686))))

(declare-fun tp!993772 () Bool)

(declare-fun tp!993771 () Bool)

(declare-fun tp!993774 () Bool)

(declare-fun b!3160149 () Bool)

(assert (=> b!3160149 (= e!1968746 (and tp!993771 tp_is_empty!16953 tp!993772 tp!993774))))

(declare-fun mapIsEmpty!18686 () Bool)

(assert (=> mapIsEmpty!18686 mapRes!18686))

(declare-fun mapNonEmpty!18686 () Bool)

(declare-fun tp!993775 () Bool)

(assert (=> mapNonEmpty!18686 (= mapRes!18686 (and tp!993775 e!1968745))))

(declare-fun mapKey!18686 () (_ BitVec 32))

(declare-fun mapValue!18686 () List!35520)

(declare-fun mapRest!18686 () (Array (_ BitVec 32) List!35520))

(assert (=> mapNonEmpty!18686 (= mapRest!18683 (store mapRest!18686 mapKey!18686 mapValue!18686))))

(assert (= (and mapNonEmpty!18683 condMapEmpty!18686) mapIsEmpty!18686))

(assert (= (and mapNonEmpty!18683 (not condMapEmpty!18686)) mapNonEmpty!18686))

(assert (= (and mapNonEmpty!18686 ((_ is Cons!35396) mapValue!18686)) b!3160148))

(assert (= (and mapNonEmpty!18683 ((_ is Cons!35396) mapDefault!18686)) b!3160149))

(declare-fun m!3425422 () Bool)

(assert (=> mapNonEmpty!18686 m!3425422))

(declare-fun tp!993777 () Bool)

(declare-fun e!1968747 () Bool)

(declare-fun tp!993778 () Bool)

(declare-fun tp!993779 () Bool)

(declare-fun b!3160150 () Bool)

(assert (=> b!3160150 (= e!1968747 (and tp!993777 tp_is_empty!16953 tp!993778 tp!993779))))

(assert (=> mapNonEmpty!18683 (= tp!993709 e!1968747)))

(assert (= (and mapNonEmpty!18683 ((_ is Cons!35396) mapValue!18683)) b!3160150))

(declare-fun e!1968748 () Bool)

(assert (=> b!3160024 (= tp!993714 e!1968748)))

(declare-fun b!3160152 () Bool)

(declare-fun tp!993782 () Bool)

(declare-fun tp!993783 () Bool)

(assert (=> b!3160152 (= e!1968748 (and tp!993782 tp!993783))))

(declare-fun b!3160153 () Bool)

(declare-fun tp!993784 () Bool)

(assert (=> b!3160153 (= e!1968748 tp!993784)))

(declare-fun b!3160154 () Bool)

(declare-fun tp!993781 () Bool)

(declare-fun tp!993780 () Bool)

(assert (=> b!3160154 (= e!1968748 (and tp!993781 tp!993780))))

(declare-fun b!3160151 () Bool)

(assert (=> b!3160151 (= e!1968748 tp_is_empty!16953)))

(assert (= (and b!3160024 ((_ is ElementMatch!9695) (reg!10024 r!13207))) b!3160151))

(assert (= (and b!3160024 ((_ is Concat!15016) (reg!10024 r!13207))) b!3160152))

(assert (= (and b!3160024 ((_ is Star!9695) (reg!10024 r!13207))) b!3160153))

(assert (= (and b!3160024 ((_ is Union!9695) (reg!10024 r!13207))) b!3160154))

(declare-fun e!1968749 () Bool)

(assert (=> b!3160019 (= tp!993716 e!1968749)))

(declare-fun b!3160156 () Bool)

(declare-fun tp!993787 () Bool)

(declare-fun tp!993788 () Bool)

(assert (=> b!3160156 (= e!1968749 (and tp!993787 tp!993788))))

(declare-fun b!3160157 () Bool)

(declare-fun tp!993789 () Bool)

(assert (=> b!3160157 (= e!1968749 tp!993789)))

(declare-fun b!3160158 () Bool)

(declare-fun tp!993786 () Bool)

(declare-fun tp!993785 () Bool)

(assert (=> b!3160158 (= e!1968749 (and tp!993786 tp!993785))))

(declare-fun b!3160155 () Bool)

(assert (=> b!3160155 (= e!1968749 tp_is_empty!16953)))

(assert (= (and b!3160019 ((_ is ElementMatch!9695) (regOne!19902 r!13207))) b!3160155))

(assert (= (and b!3160019 ((_ is Concat!15016) (regOne!19902 r!13207))) b!3160156))

(assert (= (and b!3160019 ((_ is Star!9695) (regOne!19902 r!13207))) b!3160157))

(assert (= (and b!3160019 ((_ is Union!9695) (regOne!19902 r!13207))) b!3160158))

(declare-fun e!1968750 () Bool)

(assert (=> b!3160019 (= tp!993711 e!1968750)))

(declare-fun b!3160160 () Bool)

(declare-fun tp!993792 () Bool)

(declare-fun tp!993793 () Bool)

(assert (=> b!3160160 (= e!1968750 (and tp!993792 tp!993793))))

(declare-fun b!3160161 () Bool)

(declare-fun tp!993794 () Bool)

(assert (=> b!3160161 (= e!1968750 tp!993794)))

(declare-fun b!3160162 () Bool)

(declare-fun tp!993791 () Bool)

(declare-fun tp!993790 () Bool)

(assert (=> b!3160162 (= e!1968750 (and tp!993791 tp!993790))))

(declare-fun b!3160159 () Bool)

(assert (=> b!3160159 (= e!1968750 tp_is_empty!16953)))

(assert (= (and b!3160019 ((_ is ElementMatch!9695) (regTwo!19902 r!13207))) b!3160159))

(assert (= (and b!3160019 ((_ is Concat!15016) (regTwo!19902 r!13207))) b!3160160))

(assert (= (and b!3160019 ((_ is Star!9695) (regTwo!19902 r!13207))) b!3160161))

(assert (= (and b!3160019 ((_ is Union!9695) (regTwo!19902 r!13207))) b!3160162))

(check-sat (not b!3160074) (not b!3160054) (not bm!228861) (not b!3160103) (not d!868361) (not b!3160064) (not b!3160153) (not d!868363) (not b!3160118) (not b!3160136) (not bm!228845) (not b_next!83649) b_and!209187 (not b!3160161) (not b!3160162) (not bm!228847) (not d!868351) (not b!3160033) (not b!3160150) (not b!3160156) (not b!3160157) (not b!3160149) b_and!209189 (not b!3160140) (not b!3160135) (not bm!228844) (not mapNonEmpty!18686) (not b!3160152) (not b!3160160) (not b_next!83651) (not d!868359) (not b!3160139) (not b!3160123) (not bm!228848) (not bm!228858) (not b!3160116) tp_is_empty!16953 (not b!3160137) (not b!3160141) (not b!3160148) (not b!3160066) (not b!3160158) (not b!3160154) (not b!3160117) (not b!3160101))
(check-sat b_and!209189 b_and!209187 (not b_next!83649) (not b_next!83651))
