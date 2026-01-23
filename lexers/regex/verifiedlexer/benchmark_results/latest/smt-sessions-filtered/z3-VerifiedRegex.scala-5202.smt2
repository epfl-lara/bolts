; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!267716 () Bool)

(assert start!267716)

(declare-fun b!2765311 () Bool)

(declare-fun b_free!78085 () Bool)

(declare-fun b_next!78789 () Bool)

(assert (=> b!2765311 (= b_free!78085 (not b_next!78789))))

(declare-fun tp!874001 () Bool)

(declare-fun b_and!202823 () Bool)

(assert (=> b!2765311 (= tp!874001 b_and!202823)))

(declare-fun b!2765360 () Bool)

(declare-fun b_free!78087 () Bool)

(declare-fun b_next!78791 () Bool)

(assert (=> b!2765360 (= b_free!78087 (not b_next!78791))))

(declare-fun tp!874006 () Bool)

(declare-fun b_and!202825 () Bool)

(assert (=> b!2765360 (= tp!874006 b_and!202825)))

(declare-fun b!2765347 () Bool)

(declare-fun b_free!78089 () Bool)

(declare-fun b_next!78793 () Bool)

(assert (=> b!2765347 (= b_free!78089 (not b_next!78793))))

(declare-fun tp!873997 () Bool)

(declare-fun b_and!202827 () Bool)

(assert (=> b!2765347 (= tp!873997 b_and!202827)))

(declare-fun b!2765313 () Bool)

(declare-fun b_free!78091 () Bool)

(declare-fun b_next!78795 () Bool)

(assert (=> b!2765313 (= b_free!78091 (not b_next!78795))))

(declare-fun tp!874002 () Bool)

(declare-fun b_and!202829 () Bool)

(assert (=> b!2765313 (= tp!874002 b_and!202829)))

(declare-fun b!2765307 () Bool)

(declare-datatypes ((C!16296 0))(
  ( (C!16297 (val!10082 Int)) )
))
(declare-datatypes ((List!32035 0))(
  ( (Nil!31935) (Cons!31935 (h!37355 C!16296) (t!228155 List!32035)) )
))
(declare-datatypes ((tuple2!32022 0))(
  ( (tuple2!32023 (_1!18852 List!32035) (_2!18852 List!32035)) )
))
(declare-fun e!1743545 () tuple2!32022)

(declare-fun lt!983252 () List!32035)

(assert (=> b!2765307 (= e!1743545 (tuple2!32023 Nil!31935 lt!983252))))

(declare-fun b!2765308 () Bool)

(declare-fun e!1743534 () tuple2!32022)

(declare-fun e!1743550 () tuple2!32022)

(assert (=> b!2765308 (= e!1743534 e!1743550)))

(declare-fun lt!983198 () tuple2!32022)

(declare-fun call!180045 () tuple2!32022)

(assert (=> b!2765308 (= lt!983198 call!180045)))

(declare-fun c!448527 () Bool)

(declare-fun isEmpty!18084 (List!32035) Bool)

(assert (=> b!2765308 (= c!448527 (isEmpty!18084 (_1!18852 lt!983198)))))

(declare-fun res!1157250 () Bool)

(declare-fun e!1743549 () Bool)

(assert (=> start!267716 (=> (not res!1157250) (not e!1743549))))

(declare-datatypes ((Regex!8069 0))(
  ( (ElementMatch!8069 (c!448532 C!16296)) (Concat!13157 (regOne!16650 Regex!8069) (regTwo!16650 Regex!8069)) (EmptyExpr!8069) (Star!8069 (reg!8398 Regex!8069)) (EmptyLang!8069) (Union!8069 (regOne!16651 Regex!8069) (regTwo!16651 Regex!8069)) )
))
(declare-datatypes ((List!32036 0))(
  ( (Nil!31936) (Cons!31936 (h!37356 Regex!8069) (t!228156 List!32036)) )
))
(declare-datatypes ((Context!4574 0))(
  ( (Context!4575 (exprs!2787 List!32036)) )
))
(declare-datatypes ((tuple2!32024 0))(
  ( (tuple2!32025 (_1!18853 Context!4574) (_2!18853 C!16296)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32026 0))(
  ( (tuple2!32027 (_1!18854 tuple2!32024) (_2!18854 (InoxSet Context!4574))) )
))
(declare-datatypes ((List!32037 0))(
  ( (Nil!31937) (Cons!31937 (h!37357 tuple2!32026) (t!228157 List!32037)) )
))
(declare-datatypes ((Hashable!3662 0))(
  ( (HashableExt!3661 (__x!20888 Int)) )
))
(declare-datatypes ((array!13336 0))(
  ( (array!13337 (arr!5948 (Array (_ BitVec 32) List!32037)) (size!24705 (_ BitVec 32))) )
))
(declare-datatypes ((array!13338 0))(
  ( (array!13339 (arr!5949 (Array (_ BitVec 32) (_ BitVec 64))) (size!24706 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7492 0))(
  ( (LongMapFixedSize!7493 (defaultEntry!4131 Int) (mask!9517 (_ BitVec 32)) (extraKeys!3995 (_ BitVec 32)) (zeroValue!4005 List!32037) (minValue!4005 List!32037) (_size!7535 (_ BitVec 32)) (_keys!4046 array!13338) (_values!4027 array!13336) (_vacant!3807 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14793 0))(
  ( (Cell!14794 (v!33543 LongMapFixedSize!7492)) )
))
(declare-datatypes ((MutLongMap!3746 0))(
  ( (LongMap!3746 (underlying!7695 Cell!14793)) (MutLongMapExt!3745 (__x!20889 Int)) )
))
(declare-datatypes ((Cell!14795 0))(
  ( (Cell!14796 (v!33544 MutLongMap!3746)) )
))
(declare-datatypes ((MutableMap!3652 0))(
  ( (MutableMapExt!3651 (__x!20890 Int)) (HashMap!3652 (underlying!7696 Cell!14795) (hashF!5694 Hashable!3662) (_size!7536 (_ BitVec 32)) (defaultValue!3823 Int)) )
))
(declare-datatypes ((CacheUp!2358 0))(
  ( (CacheUp!2359 (cache!3795 MutableMap!3652)) )
))
(declare-fun cacheUp!820 () CacheUp!2358)

(declare-fun valid!2919 (CacheUp!2358) Bool)

(assert (=> start!267716 (= res!1157250 (valid!2919 cacheUp!820))))

(assert (=> start!267716 e!1743549))

(declare-fun e!1743558 () Bool)

(declare-fun inv!43366 (CacheUp!2358) Bool)

(assert (=> start!267716 (and (inv!43366 cacheUp!820) e!1743558)))

(declare-datatypes ((tuple3!4742 0))(
  ( (tuple3!4743 (_1!18855 Regex!8069) (_2!18855 Context!4574) (_3!2841 C!16296)) )
))
(declare-datatypes ((tuple2!32028 0))(
  ( (tuple2!32029 (_1!18856 tuple3!4742) (_2!18856 (InoxSet Context!4574))) )
))
(declare-datatypes ((List!32038 0))(
  ( (Nil!31938) (Cons!31938 (h!37358 tuple2!32028) (t!228158 List!32038)) )
))
(declare-datatypes ((array!13340 0))(
  ( (array!13341 (arr!5950 (Array (_ BitVec 32) List!32038)) (size!24707 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7494 0))(
  ( (LongMapFixedSize!7495 (defaultEntry!4132 Int) (mask!9518 (_ BitVec 32)) (extraKeys!3996 (_ BitVec 32)) (zeroValue!4006 List!32038) (minValue!4006 List!32038) (_size!7537 (_ BitVec 32)) (_keys!4047 array!13338) (_values!4028 array!13340) (_vacant!3808 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14797 0))(
  ( (Cell!14798 (v!33545 LongMapFixedSize!7494)) )
))
(declare-datatypes ((MutLongMap!3747 0))(
  ( (LongMap!3747 (underlying!7697 Cell!14797)) (MutLongMapExt!3746 (__x!20891 Int)) )
))
(declare-datatypes ((Cell!14799 0))(
  ( (Cell!14800 (v!33546 MutLongMap!3747)) )
))
(declare-datatypes ((Hashable!3663 0))(
  ( (HashableExt!3662 (__x!20892 Int)) )
))
(declare-datatypes ((MutableMap!3653 0))(
  ( (MutableMapExt!3652 (__x!20893 Int)) (HashMap!3653 (underlying!7698 Cell!14799) (hashF!5695 Hashable!3663) (_size!7538 (_ BitVec 32)) (defaultValue!3824 Int)) )
))
(declare-datatypes ((CacheDown!2478 0))(
  ( (CacheDown!2479 (cache!3796 MutableMap!3653)) )
))
(declare-fun cacheDown!939 () CacheDown!2478)

(declare-fun e!1743533 () Bool)

(declare-fun inv!43367 (CacheDown!2478) Bool)

(assert (=> start!267716 (and (inv!43367 cacheDown!939) e!1743533)))

(declare-fun condSetEmpty!22540 () Bool)

(declare-fun z!3597 () (InoxSet Context!4574))

(assert (=> start!267716 (= condSetEmpty!22540 (= z!3597 ((as const (Array Context!4574 Bool)) false)))))

(declare-fun setRes!22540 () Bool)

(assert (=> start!267716 setRes!22540))

(declare-datatypes ((IArray!19907 0))(
  ( (IArray!19908 (innerList!10011 List!32035)) )
))
(declare-datatypes ((Conc!9951 0))(
  ( (Node!9951 (left!24363 Conc!9951) (right!24693 Conc!9951) (csize!20132 Int) (cheight!10162 Int)) (Leaf!15154 (xs!13060 IArray!19907) (csize!20133 Int)) (Empty!9951) )
))
(declare-datatypes ((BalanceConc!19516 0))(
  ( (BalanceConc!19517 (c!448533 Conc!9951)) )
))
(declare-fun input!5495 () BalanceConc!19516)

(declare-fun e!1743544 () Bool)

(declare-fun inv!43368 (BalanceConc!19516) Bool)

(assert (=> start!267716 (and (inv!43368 input!5495) e!1743544)))

(declare-fun b!2765309 () Bool)

(declare-fun e!1743532 () Bool)

(declare-datatypes ((tuple3!4744 0))(
  ( (tuple3!4745 (_1!18857 Int) (_2!18857 CacheUp!2358) (_3!2842 CacheDown!2478)) )
))
(declare-fun lt!983232 () tuple3!4744)

(declare-fun call!180049 () Int)

(assert (=> b!2765309 (= e!1743532 (= (_1!18857 lt!983232) call!180049))))

(declare-fun b!2765310 () Bool)

(declare-fun e!1743548 () Bool)

(declare-fun size!24708 (List!32035) Int)

(assert (=> b!2765310 (= e!1743548 (= 0 (size!24708 Nil!31935)))))

(declare-fun bm!180027 () Bool)

(declare-datatypes ((Unit!45983 0))(
  ( (Unit!45984) )
))
(declare-fun call!180036 () Unit!45983)

(declare-fun lemmaIsPrefixSameLengthThenSameList!451 (List!32035 List!32035 List!32035) Unit!45983)

(assert (=> bm!180027 (= call!180036 (lemmaIsPrefixSameLengthThenSameList!451 lt!983252 Nil!31935 lt!983252))))

(declare-fun tp!873994 () Bool)

(declare-fun e!1743563 () Bool)

(declare-fun e!1743540 () Bool)

(declare-fun tp!874005 () Bool)

(declare-fun array_inv!4255 (array!13338) Bool)

(declare-fun array_inv!4256 (array!13340) Bool)

(assert (=> b!2765311 (= e!1743563 (and tp!874001 tp!874005 tp!873994 (array_inv!4255 (_keys!4047 (v!33545 (underlying!7697 (v!33546 (underlying!7698 (cache!3796 cacheDown!939))))))) (array_inv!4256 (_values!4028 (v!33545 (underlying!7697 (v!33546 (underlying!7698 (cache!3796 cacheDown!939))))))) e!1743540))))

(declare-fun b!2765312 () Bool)

(declare-fun e!1743555 () Bool)

(declare-fun lt!983242 () Int)

(assert (=> b!2765312 (= e!1743555 (= lt!983242 0))))

(declare-fun e!1743565 () Bool)

(declare-fun e!1743531 () Bool)

(declare-fun tp!873998 () Bool)

(declare-fun tp!873992 () Bool)

(declare-fun array_inv!4257 (array!13336) Bool)

(assert (=> b!2765313 (= e!1743565 (and tp!874002 tp!873992 tp!873998 (array_inv!4255 (_keys!4046 (v!33543 (underlying!7695 (v!33544 (underlying!7696 (cache!3795 cacheUp!820))))))) (array_inv!4257 (_values!4027 (v!33543 (underlying!7695 (v!33544 (underlying!7696 (cache!3795 cacheUp!820))))))) e!1743531))))

(declare-fun b!2765314 () Bool)

(declare-fun c!448518 () Bool)

(declare-fun call!180041 () Bool)

(assert (=> b!2765314 (= c!448518 call!180041)))

(declare-fun lt!983264 () List!32035)

(declare-fun lt!983253 () List!32035)

(declare-fun ++!7905 (List!32035 List!32035) List!32035)

(assert (=> b!2765314 (= (++!7905 lt!983264 lt!983253) lt!983252)))

(declare-fun lt!983246 () C!16296)

(assert (=> b!2765314 (= lt!983264 (++!7905 Nil!31935 (Cons!31935 lt!983246 Nil!31935)))))

(declare-fun lt!983239 () Unit!45983)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!860 (List!32035 C!16296 List!32035 List!32035) Unit!45983)

(assert (=> b!2765314 (= lt!983239 (lemmaMoveElementToOtherListKeepsConcatEq!860 Nil!31935 lt!983246 lt!983253 lt!983252))))

(declare-fun tail!4377 (List!32035) List!32035)

(assert (=> b!2765314 (= lt!983253 (tail!4377 lt!983252))))

(declare-fun apply!7481 (BalanceConc!19516 Int) C!16296)

(assert (=> b!2765314 (= lt!983246 (apply!7481 input!5495 0))))

(declare-fun lt!983234 () List!32035)

(declare-fun isPrefix!2543 (List!32035 List!32035) Bool)

(declare-fun head!6139 (List!32035) C!16296)

(assert (=> b!2765314 (isPrefix!2543 (++!7905 Nil!31935 (Cons!31935 (head!6139 lt!983234) Nil!31935)) lt!983252)))

(declare-fun lt!983251 () Unit!45983)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!448 (List!32035 List!32035) Unit!45983)

(assert (=> b!2765314 (= lt!983251 (lemmaAddHeadSuffixToPrefixStillPrefix!448 Nil!31935 lt!983252))))

(declare-fun lt!983266 () Unit!45983)

(declare-fun e!1743547 () Unit!45983)

(assert (=> b!2765314 (= lt!983266 e!1743547)))

(declare-fun c!448526 () Bool)

(declare-fun lt!983235 () Int)

(declare-fun lt!983200 () Int)

(assert (=> b!2765314 (= c!448526 (= lt!983235 lt!983200))))

(assert (=> b!2765314 (<= lt!983235 (size!24708 lt!983252))))

(assert (=> b!2765314 (= lt!983235 (size!24708 Nil!31935))))

(declare-fun lt!983263 () Unit!45983)

(declare-fun lemmaIsPrefixThenSmallerEqSize!251 (List!32035 List!32035) Unit!45983)

(assert (=> b!2765314 (= lt!983263 (lemmaIsPrefixThenSmallerEqSize!251 Nil!31935 lt!983252))))

(declare-fun drop!1697 (List!32035 Int) List!32035)

(declare-fun apply!7482 (List!32035 Int) C!16296)

(assert (=> b!2765314 (= (head!6139 (drop!1697 lt!983252 0)) (apply!7482 lt!983252 0))))

(declare-fun lt!983231 () Unit!45983)

(declare-fun lemmaDropApply!903 (List!32035 Int) Unit!45983)

(assert (=> b!2765314 (= lt!983231 (lemmaDropApply!903 lt!983252 0))))

(declare-fun lt!983211 () List!32035)

(declare-fun lt!983267 () List!32035)

(assert (=> b!2765314 (and (= lt!983211 Nil!31935) (= lt!983267 lt!983252))))

(declare-fun lt!983265 () Unit!45983)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!329 (List!32035 List!32035 List!32035 List!32035) Unit!45983)

(assert (=> b!2765314 (= lt!983265 (lemmaConcatSameAndSameSizesThenSameLists!329 lt!983211 lt!983267 Nil!31935 lt!983252))))

(declare-datatypes ((tuple2!32030 0))(
  ( (tuple2!32031 (_1!18858 BalanceConc!19516) (_2!18858 BalanceConc!19516)) )
))
(declare-fun lt!983215 () tuple2!32030)

(declare-fun list!12059 (BalanceConc!19516) List!32035)

(assert (=> b!2765314 (= lt!983267 (list!12059 (_2!18858 lt!983215)))))

(assert (=> b!2765314 (= lt!983211 (list!12059 (_1!18858 lt!983215)))))

(declare-fun splitAt!102 (BalanceConc!19516 Int) tuple2!32030)

(assert (=> b!2765314 (= lt!983215 (splitAt!102 input!5495 0))))

(declare-datatypes ((tuple3!4746 0))(
  ( (tuple3!4747 (_1!18859 Int) (_2!18859 CacheDown!2478) (_3!2843 CacheUp!2358)) )
))
(declare-fun e!1743543 () tuple3!4746)

(declare-fun e!1743556 () tuple3!4746)

(assert (=> b!2765314 (= e!1743543 e!1743556)))

(declare-fun mapIsEmpty!17085 () Bool)

(declare-fun mapRes!17086 () Bool)

(assert (=> mapIsEmpty!17085 mapRes!17086))

(declare-fun b!2765315 () Bool)

(declare-fun Unit!45985 () Unit!45983)

(assert (=> b!2765315 (= e!1743547 Unit!45985)))

(declare-fun b!2765316 () Bool)

(declare-fun e!1743554 () Bool)

(declare-fun lt!983247 () tuple2!32022)

(assert (=> b!2765316 (= e!1743554 (= lt!983247 (tuple2!32023 Nil!31935 lt!983252)))))

(declare-fun b!2765317 () Bool)

(declare-fun e!1743566 () Unit!45983)

(declare-fun Unit!45986 () Unit!45983)

(assert (=> b!2765317 (= e!1743566 Unit!45986)))

(declare-fun b!2765318 () Bool)

(declare-fun c!448530 () Bool)

(declare-fun call!180040 () Bool)

(assert (=> b!2765318 (= c!448530 call!180040)))

(assert (=> b!2765318 (= lt!983252 Nil!31935)))

(declare-fun lt!983209 () Unit!45983)

(declare-fun call!180043 () Unit!45983)

(assert (=> b!2765318 (= lt!983209 call!180043)))

(declare-fun call!180042 () Bool)

(assert (=> b!2765318 call!180042))

(declare-fun lt!983216 () Unit!45983)

(declare-fun call!180035 () Unit!45983)

(assert (=> b!2765318 (= lt!983216 call!180035)))

(declare-fun e!1743546 () tuple2!32022)

(assert (=> b!2765318 (= e!1743546 e!1743545)))

(declare-fun bm!180028 () Bool)

(declare-fun call!180048 () (InoxSet Context!4574))

(declare-fun lt!983228 () C!16296)

(declare-fun derivationStepZipper!358 ((InoxSet Context!4574) C!16296) (InoxSet Context!4574))

(assert (=> bm!180028 (= call!180048 (derivationStepZipper!358 z!3597 lt!983228))))

(declare-fun b!2765319 () Bool)

(assert (=> b!2765319 (= e!1743534 call!180045)))

(declare-fun bm!180029 () Bool)

(declare-fun call!180037 () Unit!45983)

(declare-fun lemmaIsPrefixRefl!1669 (List!32035 List!32035) Unit!45983)

(assert (=> bm!180029 (= call!180037 (lemmaIsPrefixRefl!1669 lt!983252 lt!983252))))

(declare-fun bm!180030 () Bool)

(declare-fun call!180046 () Bool)

(declare-fun nullableZipper!623 ((InoxSet Context!4574)) Bool)

(assert (=> bm!180030 (= call!180046 (nullableZipper!623 z!3597))))

(declare-fun b!2765320 () Bool)

(declare-fun e!1743537 () tuple3!4746)

(declare-fun lt!983233 () tuple3!4744)

(assert (=> b!2765320 (= e!1743537 (tuple3!4747 0 (_3!2842 lt!983233) (_2!18857 lt!983233)))))

(declare-fun b!2765321 () Bool)

(declare-fun tp!874004 () Bool)

(assert (=> b!2765321 (= e!1743540 (and tp!874004 mapRes!17086))))

(declare-fun condMapEmpty!17086 () Bool)

(declare-fun mapDefault!17085 () List!32038)

(assert (=> b!2765321 (= condMapEmpty!17086 (= (arr!5950 (_values!4028 (v!33545 (underlying!7697 (v!33546 (underlying!7698 (cache!3796 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32038)) mapDefault!17085)))))

(declare-fun b!2765322 () Bool)

(declare-fun lt!983220 () Bool)

(assert (=> b!2765322 (= lt!983220 call!180041)))

(assert (=> b!2765322 (= lt!983252 Nil!31935)))

(declare-fun lt!983258 () Unit!45983)

(declare-fun call!180039 () Unit!45983)

(assert (=> b!2765322 (= lt!983258 call!180039)))

(declare-fun call!180050 () Bool)

(assert (=> b!2765322 call!180050))

(declare-fun lt!983241 () Unit!45983)

(declare-fun call!180047 () Unit!45983)

(assert (=> b!2765322 (= lt!983241 call!180047)))

(assert (=> b!2765322 (= e!1743543 (tuple3!4747 0 (_3!2842 lt!983233) (_2!18857 lt!983233)))))

(declare-fun setIsEmpty!22540 () Bool)

(assert (=> setIsEmpty!22540 setRes!22540))

(declare-fun bm!180031 () Bool)

(declare-fun call!180044 () Bool)

(assert (=> bm!180031 (= call!180044 (isPrefix!2543 lt!983252 lt!983252))))

(declare-fun b!2765323 () Bool)

(declare-fun res!1157253 () Bool)

(declare-fun e!1743557 () Bool)

(assert (=> b!2765323 (=> (not res!1157253) (not e!1743557))))

(declare-fun lt!983237 () tuple3!4744)

(declare-fun valid!2920 (CacheDown!2478) Bool)

(assert (=> b!2765323 (= res!1157253 (valid!2920 (_3!2842 lt!983237)))))

(declare-fun bm!180032 () Bool)

(assert (=> bm!180032 (= call!180035 (lemmaIsPrefixRefl!1669 lt!983252 lt!983252))))

(declare-fun b!2765324 () Bool)

(declare-fun e!1743541 () Bool)

(declare-fun e!1743538 () Bool)

(declare-fun lt!983197 () MutLongMap!3746)

(get-info :version)

(assert (=> b!2765324 (= e!1743541 (and e!1743538 ((_ is LongMap!3746) lt!983197)))))

(assert (=> b!2765324 (= lt!983197 (v!33544 (underlying!7696 (cache!3795 cacheUp!820))))))

(declare-fun b!2765325 () Bool)

(declare-fun e!1743530 () Int)

(declare-fun call!180033 () Int)

(assert (=> b!2765325 (= e!1743530 call!180033)))

(declare-fun mapIsEmpty!17086 () Bool)

(declare-fun mapRes!17085 () Bool)

(assert (=> mapIsEmpty!17086 mapRes!17085))

(declare-fun b!2765326 () Bool)

(declare-fun lt!983225 () tuple3!4744)

(assert (=> b!2765326 (= e!1743556 (tuple3!4747 (ite (= (_1!18857 lt!983225) 0) 0 (_1!18857 lt!983225)) (_3!2842 lt!983225) (_2!18857 lt!983225)))))

(declare-datatypes ((tuple3!4748 0))(
  ( (tuple3!4749 (_1!18860 (InoxSet Context!4574)) (_2!18860 CacheUp!2358) (_3!2844 CacheDown!2478)) )
))
(declare-fun lt!983261 () tuple3!4748)

(declare-fun call!180038 () tuple3!4748)

(assert (=> b!2765326 (= lt!983261 call!180038)))

(declare-fun call!180032 () tuple3!4744)

(assert (=> b!2765326 (= lt!983225 call!180032)))

(declare-fun res!1157245 () Bool)

(declare-fun call!180051 () Bool)

(assert (=> b!2765326 (= res!1157245 call!180051)))

(declare-fun e!1743535 () Bool)

(assert (=> b!2765326 (=> (not res!1157245) (not e!1743535))))

(assert (=> b!2765326 e!1743535))

(declare-fun bm!180033 () Bool)

(assert (=> bm!180033 (= call!180039 (lemmaIsPrefixSameLengthThenSameList!451 lt!983252 Nil!31935 lt!983252))))

(declare-fun b!2765327 () Bool)

(declare-fun e!1743553 () Bool)

(assert (=> b!2765327 (= e!1743553 e!1743563)))

(declare-fun b!2765328 () Bool)

(declare-fun lt!983207 () Int)

(assert (=> b!2765328 (= e!1743530 (ite (= lt!983207 0) 0 lt!983207))))

(assert (=> b!2765328 (= lt!983207 call!180033)))

(declare-fun bm!180034 () Bool)

(assert (=> bm!180034 (= call!180041 (nullableZipper!623 z!3597))))

(declare-fun b!2765329 () Bool)

(declare-fun e!1743561 () Bool)

(assert (=> b!2765329 (= e!1743538 e!1743561)))

(declare-fun b!2765330 () Bool)

(declare-fun e!1743529 () Bool)

(assert (=> b!2765330 (= e!1743533 e!1743529)))

(declare-fun bm!180035 () Bool)

(assert (=> bm!180035 (= call!180047 (lemmaIsPrefixRefl!1669 lt!983252 lt!983252))))

(declare-fun b!2765331 () Bool)

(declare-fun tp!874007 () Bool)

(assert (=> b!2765331 (= e!1743531 (and tp!874007 mapRes!17085))))

(declare-fun condMapEmpty!17085 () Bool)

(declare-fun mapDefault!17086 () List!32037)

(assert (=> b!2765331 (= condMapEmpty!17085 (= (arr!5948 (_values!4027 (v!33543 (underlying!7695 (v!33544 (underlying!7696 (cache!3795 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32037)) mapDefault!17086)))))

(declare-fun b!2765332 () Bool)

(assert (=> b!2765332 (= e!1743554 (= lt!983247 e!1743546))))

(declare-fun c!448520 () Bool)

(assert (=> b!2765332 (= c!448520 (= 0 lt!983200))))

(declare-fun lt!983201 () List!32035)

(declare-fun bm!180036 () Bool)

(declare-fun lt!983205 () List!32035)

(declare-fun findLongestMatchInnerZipper!13 ((InoxSet Context!4574) List!32035 Int List!32035 List!32035 Int) tuple2!32022)

(assert (=> bm!180036 (= call!180045 (findLongestMatchInnerZipper!13 call!180048 lt!983205 1 lt!983201 lt!983252 lt!983200))))

(declare-fun b!2765333 () Bool)

(declare-fun e!1743539 () Bool)

(declare-fun tp!873999 () Bool)

(assert (=> b!2765333 (= e!1743539 tp!873999)))

(declare-fun bm!180037 () Bool)

(assert (=> bm!180037 (= call!180051 (valid!2919 (ite c!448518 (_2!18857 lt!983225) (_2!18857 lt!983232))))))

(declare-fun b!2765334 () Bool)

(declare-fun e!1743542 () Bool)

(assert (=> b!2765334 (= e!1743558 e!1743542)))

(declare-fun b!2765335 () Bool)

(declare-fun lt!983226 () Bool)

(assert (=> b!2765335 (= lt!983226 call!180046)))

(assert (=> b!2765335 (= lt!983252 Nil!31935)))

(declare-fun lt!983230 () Unit!45983)

(assert (=> b!2765335 (= lt!983230 call!180036)))

(assert (=> b!2765335 call!180044))

(declare-fun lt!983222 () Unit!45983)

(assert (=> b!2765335 (= lt!983222 call!180037)))

(declare-fun e!1743551 () Int)

(assert (=> b!2765335 (= e!1743551 0)))

(declare-fun call!180052 () (InoxSet Context!4574))

(declare-fun lt!983254 () List!32035)

(declare-fun bm!180038 () Bool)

(declare-fun lt!983260 () List!32035)

(declare-fun findLongestMatchInnerZipperFast!27 ((InoxSet Context!4574) List!32035 Int List!32035 BalanceConc!19516 Int) Int)

(assert (=> bm!180038 (= call!180033 (findLongestMatchInnerZipperFast!27 call!180052 lt!983260 1 lt!983254 input!5495 lt!983200))))

(declare-fun bm!180039 () Bool)

(declare-fun lt!983210 () tuple3!4748)

(assert (=> bm!180039 (= call!180049 (findLongestMatchInnerZipperFast!27 (ite c!448518 (_1!18860 lt!983261) (_1!18860 lt!983210)) lt!983264 1 lt!983253 input!5495 lt!983200))))

(declare-fun b!2765336 () Bool)

(assert (=> b!2765336 (= e!1743557 (= (_1!18857 lt!983237) (findLongestMatchInnerZipperFast!27 z!3597 Nil!31935 0 lt!983252 input!5495 lt!983200)))))

(declare-fun b!2765337 () Bool)

(declare-fun e!1743552 () Unit!45983)

(declare-fun Unit!45987 () Unit!45983)

(assert (=> b!2765337 (= e!1743552 Unit!45987)))

(declare-fun lt!983202 () Unit!45983)

(assert (=> b!2765337 (= lt!983202 call!180035)))

(assert (=> b!2765337 call!180042))

(declare-fun lt!983199 () Unit!45983)

(assert (=> b!2765337 (= lt!983199 call!180043)))

(assert (=> b!2765337 false))

(declare-fun b!2765338 () Bool)

(assert (=> b!2765338 (= e!1743549 (not e!1743548))))

(declare-fun res!1157251 () Bool)

(assert (=> b!2765338 (=> res!1157251 e!1743548)))

(declare-fun lt!983248 () List!32035)

(assert (=> b!2765338 (= res!1157251 (not (= lt!983248 lt!983252)))))

(declare-fun lt!983213 () List!32035)

(declare-fun lt!983224 () tuple2!32030)

(assert (=> b!2765338 (= lt!983213 (list!12059 (_2!18858 lt!983224)))))

(declare-fun lt!983203 () List!32035)

(assert (=> b!2765338 (= lt!983203 (list!12059 (_1!18858 lt!983224)))))

(assert (=> b!2765338 (= lt!983224 (splitAt!102 input!5495 (_1!18857 lt!983233)))))

(assert (=> b!2765338 e!1743554))

(declare-fun c!448524 () Bool)

(declare-fun lt!983229 () Bool)

(assert (=> b!2765338 (= c!448524 lt!983229)))

(assert (=> b!2765338 (= lt!983247 (findLongestMatchInnerZipper!13 z!3597 Nil!31935 0 lt!983252 lt!983252 lt!983200))))

(assert (=> b!2765338 e!1743555))

(declare-fun c!448531 () Bool)

(assert (=> b!2765338 (= c!448531 lt!983229)))

(assert (=> b!2765338 (= lt!983242 (findLongestMatchInnerZipperFast!27 z!3597 Nil!31935 0 lt!983252 input!5495 lt!983200))))

(declare-fun lt!983250 () tuple3!4746)

(assert (=> b!2765338 (= lt!983237 (tuple3!4745 (_1!18859 lt!983250) (_3!2843 lt!983250) (_2!18859 lt!983250)))))

(assert (=> b!2765338 (= lt!983250 e!1743537)))

(declare-fun c!448529 () Bool)

(assert (=> b!2765338 (= c!448529 lt!983229)))

(declare-fun lostCauseZipper!431 ((InoxSet Context!4574)) Bool)

(assert (=> b!2765338 (= lt!983229 (lostCauseZipper!431 z!3597))))

(assert (=> b!2765338 (and (= lt!983252 lt!983234) (= lt!983234 lt!983252))))

(declare-fun lt!983259 () Unit!45983)

(declare-fun lemmaSamePrefixThenSameSuffix!1129 (List!32035 List!32035 List!32035 List!32035 List!32035) Unit!45983)

(assert (=> b!2765338 (= lt!983259 (lemmaSamePrefixThenSameSuffix!1129 Nil!31935 lt!983252 Nil!31935 lt!983234 lt!983252))))

(declare-fun getSuffix!1227 (List!32035 List!32035) List!32035)

(assert (=> b!2765338 (= lt!983234 (getSuffix!1227 lt!983252 Nil!31935))))

(assert (=> b!2765338 (isPrefix!2543 Nil!31935 lt!983248)))

(assert (=> b!2765338 (= lt!983248 (++!7905 Nil!31935 lt!983252))))

(declare-fun lt!983208 () Unit!45983)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1655 (List!32035 List!32035) Unit!45983)

(assert (=> b!2765338 (= lt!983208 (lemmaConcatTwoListThenFirstIsPrefix!1655 Nil!31935 lt!983252))))

(assert (=> b!2765338 e!1743557))

(declare-fun res!1157247 () Bool)

(assert (=> b!2765338 (=> (not res!1157247) (not e!1743557))))

(assert (=> b!2765338 (= res!1157247 (valid!2919 (_2!18857 lt!983237)))))

(declare-fun findLongestMatchInnerZipperFastMem!22 (CacheUp!2358 CacheDown!2478 (InoxSet Context!4574) List!32035 Int List!32035 BalanceConc!19516 Int) tuple3!4744)

(assert (=> b!2765338 (= lt!983237 (findLongestMatchInnerZipperFastMem!22 (_2!18857 lt!983233) (_3!2842 lt!983233) z!3597 Nil!31935 0 lt!983252 input!5495 lt!983200))))

(declare-fun e!1743564 () Bool)

(assert (=> b!2765338 e!1743564))

(declare-fun res!1157244 () Bool)

(assert (=> b!2765338 (=> (not res!1157244) (not e!1743564))))

(assert (=> b!2765338 (= res!1157244 (valid!2919 (_2!18857 lt!983233)))))

(assert (=> b!2765338 (= lt!983233 (findLongestMatchInnerZipperFastMem!22 cacheUp!820 cacheDown!939 z!3597 Nil!31935 0 lt!983252 input!5495 lt!983200))))

(declare-fun size!24709 (BalanceConc!19516) Int)

(assert (=> b!2765338 (= lt!983200 (size!24709 input!5495))))

(assert (=> b!2765338 (= lt!983252 (list!12059 input!5495))))

(declare-fun b!2765339 () Bool)

(assert (=> b!2765339 (= e!1743537 e!1743543)))

(declare-fun c!448522 () Bool)

(assert (=> b!2765339 (= c!448522 (= 0 lt!983200))))

(declare-fun b!2765340 () Bool)

(declare-fun res!1157249 () Bool)

(declare-fun call!180034 () Bool)

(assert (=> b!2765340 (= res!1157249 call!180034)))

(assert (=> b!2765340 (=> (not res!1157249) (not e!1743532))))

(declare-fun setElem!22540 () Context!4574)

(declare-fun setNonEmpty!22540 () Bool)

(declare-fun tp!873995 () Bool)

(declare-fun inv!43369 (Context!4574) Bool)

(assert (=> setNonEmpty!22540 (= setRes!22540 (and tp!873995 (inv!43369 setElem!22540) e!1743539))))

(declare-fun setRest!22540 () (InoxSet Context!4574))

(assert (=> setNonEmpty!22540 (= z!3597 ((_ map or) (store ((as const (Array Context!4574 Bool)) false) setElem!22540 true) setRest!22540))))

(declare-fun bm!180040 () Bool)

(assert (=> bm!180040 (= call!180050 (isPrefix!2543 lt!983252 lt!983252))))

(declare-fun b!2765341 () Bool)

(assert (=> b!2765341 (= e!1743561 e!1743565)))

(declare-fun mapNonEmpty!17085 () Bool)

(declare-fun tp!873996 () Bool)

(declare-fun tp!874003 () Bool)

(assert (=> mapNonEmpty!17085 (= mapRes!17085 (and tp!873996 tp!874003))))

(declare-fun mapRest!17085 () (Array (_ BitVec 32) List!32037))

(declare-fun mapKey!17086 () (_ BitVec 32))

(declare-fun mapValue!17085 () List!32037)

(assert (=> mapNonEmpty!17085 (= (arr!5948 (_values!4027 (v!33543 (underlying!7695 (v!33544 (underlying!7696 (cache!3795 cacheUp!820))))))) (store mapRest!17085 mapKey!17086 mapValue!17085))))

(declare-fun b!2765342 () Bool)

(declare-fun res!1157252 () Bool)

(assert (=> b!2765342 (=> (not res!1157252) (not e!1743564))))

(assert (=> b!2765342 (= res!1157252 (valid!2920 (_3!2842 lt!983233)))))

(declare-fun b!2765343 () Bool)

(assert (=> b!2765343 (= e!1743555 (= lt!983242 e!1743551))))

(declare-fun c!448525 () Bool)

(assert (=> b!2765343 (= c!448525 (= 0 lt!983200))))

(declare-fun b!2765344 () Bool)

(declare-fun res!1157248 () Bool)

(assert (=> b!2765344 (= res!1157248 call!180034)))

(assert (=> b!2765344 (=> (not res!1157248) (not e!1743535))))

(declare-fun bm!180041 () Bool)

(assert (=> bm!180041 (= call!180032 (findLongestMatchInnerZipperFastMem!22 (ite c!448518 (_2!18860 lt!983261) (_2!18860 lt!983210)) (ite c!448518 (_3!2844 lt!983261) (_3!2844 lt!983210)) (ite c!448518 (_1!18860 lt!983261) (_1!18860 lt!983210)) lt!983264 1 lt!983253 input!5495 lt!983200))))

(declare-fun b!2765345 () Bool)

(declare-fun res!1157246 () Bool)

(assert (=> b!2765345 (=> (not res!1157246) (not e!1743549))))

(assert (=> b!2765345 (= res!1157246 (valid!2920 cacheDown!939))))

(declare-fun b!2765346 () Bool)

(assert (=> b!2765346 (= e!1743545 (tuple2!32023 Nil!31935 Nil!31935))))

(declare-fun bm!180042 () Bool)

(assert (=> bm!180042 (= call!180040 (nullableZipper!623 z!3597))))

(declare-fun bm!180043 () Bool)

(assert (=> bm!180043 (= call!180042 (isPrefix!2543 lt!983252 lt!983252))))

(declare-fun e!1743536 () Bool)

(assert (=> b!2765347 (= e!1743529 (and e!1743536 tp!873997))))

(declare-fun b!2765348 () Bool)

(declare-fun tp!873993 () Bool)

(declare-fun inv!43370 (Conc!9951) Bool)

(assert (=> b!2765348 (= e!1743544 (and (inv!43370 (c!448533 input!5495)) tp!873993))))

(declare-fun b!2765349 () Bool)

(assert (=> b!2765349 (= e!1743550 (tuple2!32023 Nil!31935 lt!983252))))

(declare-fun b!2765350 () Bool)

(assert (=> b!2765350 (= e!1743564 (= (_1!18857 lt!983233) (findLongestMatchInnerZipperFast!27 z!3597 Nil!31935 0 lt!983252 input!5495 lt!983200)))))

(declare-fun b!2765351 () Bool)

(assert (=> b!2765351 (= e!1743556 (tuple3!4747 (_1!18857 lt!983232) (_3!2842 lt!983232) (_2!18857 lt!983232)))))

(assert (=> b!2765351 (= lt!983210 call!180038)))

(assert (=> b!2765351 (= lt!983232 call!180032)))

(declare-fun res!1157243 () Bool)

(assert (=> b!2765351 (= res!1157243 call!180051)))

(assert (=> b!2765351 (=> (not res!1157243) (not e!1743532))))

(assert (=> b!2765351 e!1743532))

(declare-fun b!2765352 () Bool)

(declare-fun e!1743559 () Bool)

(declare-fun lt!983236 () MutLongMap!3747)

(assert (=> b!2765352 (= e!1743536 (and e!1743559 ((_ is LongMap!3747) lt!983236)))))

(assert (=> b!2765352 (= lt!983236 (v!33546 (underlying!7698 (cache!3796 cacheDown!939))))))

(declare-fun bm!180044 () Bool)

(declare-fun lt!983255 () C!16296)

(assert (=> bm!180044 (= call!180052 (derivationStepZipper!358 z!3597 lt!983255))))

(declare-fun bm!180045 () Bool)

(assert (=> bm!180045 (= call!180043 (lemmaIsPrefixSameLengthThenSameList!451 lt!983252 Nil!31935 lt!983252))))

(declare-fun b!2765353 () Bool)

(declare-fun c!448528 () Bool)

(assert (=> b!2765353 (= c!448528 call!180046)))

(assert (=> b!2765353 (= (++!7905 lt!983260 lt!983254) lt!983252)))

(assert (=> b!2765353 (= lt!983260 (++!7905 Nil!31935 (Cons!31935 lt!983255 Nil!31935)))))

(declare-fun lt!983257 () Unit!45983)

(assert (=> b!2765353 (= lt!983257 (lemmaMoveElementToOtherListKeepsConcatEq!860 Nil!31935 lt!983255 lt!983254 lt!983252))))

(assert (=> b!2765353 (= lt!983254 (tail!4377 lt!983252))))

(assert (=> b!2765353 (= lt!983255 (apply!7481 input!5495 0))))

(assert (=> b!2765353 (isPrefix!2543 (++!7905 Nil!31935 (Cons!31935 (head!6139 lt!983234) Nil!31935)) lt!983252)))

(declare-fun lt!983262 () Unit!45983)

(assert (=> b!2765353 (= lt!983262 (lemmaAddHeadSuffixToPrefixStillPrefix!448 Nil!31935 lt!983252))))

(declare-fun lt!983206 () Unit!45983)

(assert (=> b!2765353 (= lt!983206 e!1743566)))

(declare-fun c!448523 () Bool)

(declare-fun lt!983218 () Int)

(assert (=> b!2765353 (= c!448523 (= lt!983218 lt!983200))))

(assert (=> b!2765353 (<= lt!983218 (size!24708 lt!983252))))

(assert (=> b!2765353 (= lt!983218 (size!24708 Nil!31935))))

(declare-fun lt!983219 () Unit!45983)

(assert (=> b!2765353 (= lt!983219 (lemmaIsPrefixThenSmallerEqSize!251 Nil!31935 lt!983252))))

(assert (=> b!2765353 (= (head!6139 (drop!1697 lt!983252 0)) (apply!7482 lt!983252 0))))

(declare-fun lt!983243 () Unit!45983)

(assert (=> b!2765353 (= lt!983243 (lemmaDropApply!903 lt!983252 0))))

(declare-fun lt!983217 () List!32035)

(declare-fun lt!983238 () List!32035)

(assert (=> b!2765353 (and (= lt!983217 Nil!31935) (= lt!983238 lt!983252))))

(declare-fun lt!983249 () Unit!45983)

(assert (=> b!2765353 (= lt!983249 (lemmaConcatSameAndSameSizesThenSameLists!329 lt!983217 lt!983238 Nil!31935 lt!983252))))

(declare-fun lt!983196 () tuple2!32030)

(assert (=> b!2765353 (= lt!983238 (list!12059 (_2!18858 lt!983196)))))

(assert (=> b!2765353 (= lt!983217 (list!12059 (_1!18858 lt!983196)))))

(assert (=> b!2765353 (= lt!983196 (splitAt!102 input!5495 0))))

(assert (=> b!2765353 (= e!1743551 e!1743530)))

(declare-fun b!2765354 () Bool)

(declare-fun Unit!45988 () Unit!45983)

(assert (=> b!2765354 (= e!1743552 Unit!45988)))

(declare-fun bm!180046 () Bool)

(assert (=> bm!180046 (= call!180034 (valid!2920 (ite c!448518 (_3!2842 lt!983225) (_3!2842 lt!983232))))))

(declare-fun b!2765355 () Bool)

(declare-fun Unit!45989 () Unit!45983)

(assert (=> b!2765355 (= e!1743547 Unit!45989)))

(declare-fun lt!983204 () Unit!45983)

(assert (=> b!2765355 (= lt!983204 call!180047)))

(assert (=> b!2765355 call!180050))

(declare-fun lt!983212 () Unit!45983)

(assert (=> b!2765355 (= lt!983212 call!180039)))

(assert (=> b!2765355 false))

(declare-fun mapNonEmpty!17086 () Bool)

(declare-fun tp!874008 () Bool)

(declare-fun tp!874000 () Bool)

(assert (=> mapNonEmpty!17086 (= mapRes!17086 (and tp!874008 tp!874000))))

(declare-fun mapRest!17086 () (Array (_ BitVec 32) List!32038))

(declare-fun mapKey!17085 () (_ BitVec 32))

(declare-fun mapValue!17086 () List!32038)

(assert (=> mapNonEmpty!17086 (= (arr!5950 (_values!4028 (v!33545 (underlying!7697 (v!33546 (underlying!7698 (cache!3796 cacheDown!939))))))) (store mapRest!17086 mapKey!17085 mapValue!17086))))

(declare-fun b!2765356 () Bool)

(assert (=> b!2765356 (= e!1743559 e!1743553)))

(declare-fun b!2765357 () Bool)

(declare-fun Unit!45990 () Unit!45983)

(assert (=> b!2765357 (= e!1743566 Unit!45990)))

(declare-fun lt!983227 () Unit!45983)

(assert (=> b!2765357 (= lt!983227 call!180037)))

(assert (=> b!2765357 call!180044))

(declare-fun lt!983223 () Unit!45983)

(assert (=> b!2765357 (= lt!983223 call!180036)))

(assert (=> b!2765357 false))

(declare-fun bm!180047 () Bool)

(declare-fun derivationStepZipperMem!89 ((InoxSet Context!4574) C!16296 CacheUp!2358 CacheDown!2478) tuple3!4748)

(assert (=> bm!180047 (= call!180038 (derivationStepZipperMem!89 z!3597 lt!983246 (_2!18857 lt!983233) (_3!2842 lt!983233)))))

(declare-fun b!2765358 () Bool)

(assert (=> b!2765358 (= e!1743535 (= (_1!18857 lt!983225) call!180049))))

(declare-fun b!2765359 () Bool)

(declare-fun c!448521 () Bool)

(assert (=> b!2765359 (= c!448521 call!180040)))

(assert (=> b!2765359 (= (++!7905 lt!983205 lt!983201) lt!983252)))

(declare-fun lt!983240 () Unit!45983)

(assert (=> b!2765359 (= lt!983240 (lemmaMoveElementToOtherListKeepsConcatEq!860 Nil!31935 lt!983228 lt!983201 lt!983252))))

(assert (=> b!2765359 (= lt!983201 (tail!4377 lt!983252))))

(assert (=> b!2765359 (isPrefix!2543 (++!7905 Nil!31935 (Cons!31935 (head!6139 lt!983234) Nil!31935)) lt!983252)))

(declare-fun lt!983256 () Unit!45983)

(assert (=> b!2765359 (= lt!983256 (lemmaAddHeadSuffixToPrefixStillPrefix!448 Nil!31935 lt!983252))))

(assert (=> b!2765359 (= lt!983205 (++!7905 Nil!31935 (Cons!31935 lt!983228 Nil!31935)))))

(assert (=> b!2765359 (= lt!983228 (head!6139 lt!983252))))

(declare-fun lt!983245 () Unit!45983)

(assert (=> b!2765359 (= lt!983245 e!1743552)))

(declare-fun c!448519 () Bool)

(declare-fun lt!983244 () Int)

(declare-fun lt!983221 () Int)

(assert (=> b!2765359 (= c!448519 (= lt!983244 lt!983221))))

(assert (=> b!2765359 (<= lt!983244 lt!983221)))

(assert (=> b!2765359 (= lt!983221 (size!24708 lt!983252))))

(assert (=> b!2765359 (= lt!983244 (size!24708 Nil!31935))))

(declare-fun lt!983214 () Unit!45983)

(assert (=> b!2765359 (= lt!983214 (lemmaIsPrefixThenSmallerEqSize!251 Nil!31935 lt!983252))))

(assert (=> b!2765359 (= e!1743546 e!1743534)))

(assert (=> b!2765360 (= e!1743542 (and e!1743541 tp!874006))))

(declare-fun b!2765361 () Bool)

(assert (=> b!2765361 (= e!1743550 lt!983198)))

(assert (= (and start!267716 res!1157250) b!2765345))

(assert (= (and b!2765345 res!1157246) b!2765338))

(assert (= (and b!2765338 res!1157244) b!2765342))

(assert (= (and b!2765342 res!1157252) b!2765350))

(assert (= (and b!2765338 res!1157247) b!2765323))

(assert (= (and b!2765323 res!1157253) b!2765336))

(assert (= (and b!2765338 c!448529) b!2765320))

(assert (= (and b!2765338 (not c!448529)) b!2765339))

(assert (= (and b!2765339 c!448522) b!2765322))

(assert (= (and b!2765339 (not c!448522)) b!2765314))

(assert (= (and b!2765314 c!448526) b!2765355))

(assert (= (and b!2765314 (not c!448526)) b!2765315))

(assert (= (and b!2765314 c!448518) b!2765326))

(assert (= (and b!2765314 (not c!448518)) b!2765351))

(assert (= (and b!2765326 res!1157245) b!2765344))

(assert (= (and b!2765344 res!1157248) b!2765358))

(assert (= (and b!2765351 res!1157243) b!2765340))

(assert (= (and b!2765340 res!1157249) b!2765309))

(assert (= (or b!2765326 b!2765351) bm!180037))

(assert (= (or b!2765326 b!2765351) bm!180047))

(assert (= (or b!2765326 b!2765351) bm!180041))

(assert (= (or b!2765358 b!2765309) bm!180039))

(assert (= (or b!2765344 b!2765340) bm!180046))

(assert (= (or b!2765322 b!2765314) bm!180034))

(assert (= (or b!2765322 b!2765355) bm!180035))

(assert (= (or b!2765322 b!2765355) bm!180033))

(assert (= (or b!2765322 b!2765355) bm!180040))

(assert (= (and b!2765338 c!448531) b!2765312))

(assert (= (and b!2765338 (not c!448531)) b!2765343))

(assert (= (and b!2765343 c!448525) b!2765335))

(assert (= (and b!2765343 (not c!448525)) b!2765353))

(assert (= (and b!2765353 c!448523) b!2765357))

(assert (= (and b!2765353 (not c!448523)) b!2765317))

(assert (= (and b!2765353 c!448528) b!2765328))

(assert (= (and b!2765353 (not c!448528)) b!2765325))

(assert (= (or b!2765328 b!2765325) bm!180044))

(assert (= (or b!2765328 b!2765325) bm!180038))

(assert (= (or b!2765335 b!2765353) bm!180030))

(assert (= (or b!2765335 b!2765357) bm!180029))

(assert (= (or b!2765335 b!2765357) bm!180027))

(assert (= (or b!2765335 b!2765357) bm!180031))

(assert (= (and b!2765338 c!448524) b!2765316))

(assert (= (and b!2765338 (not c!448524)) b!2765332))

(assert (= (and b!2765332 c!448520) b!2765318))

(assert (= (and b!2765332 (not c!448520)) b!2765359))

(assert (= (and b!2765318 c!448530) b!2765346))

(assert (= (and b!2765318 (not c!448530)) b!2765307))

(assert (= (and b!2765359 c!448519) b!2765337))

(assert (= (and b!2765359 (not c!448519)) b!2765354))

(assert (= (and b!2765359 c!448521) b!2765308))

(assert (= (and b!2765359 (not c!448521)) b!2765319))

(assert (= (and b!2765308 c!448527) b!2765349))

(assert (= (and b!2765308 (not c!448527)) b!2765361))

(assert (= (or b!2765308 b!2765319) bm!180028))

(assert (= (or b!2765308 b!2765319) bm!180036))

(assert (= (or b!2765318 b!2765359) bm!180042))

(assert (= (or b!2765318 b!2765337) bm!180032))

(assert (= (or b!2765318 b!2765337) bm!180045))

(assert (= (or b!2765318 b!2765337) bm!180043))

(assert (= (and b!2765338 (not res!1157251)) b!2765310))

(assert (= (and b!2765331 condMapEmpty!17085) mapIsEmpty!17086))

(assert (= (and b!2765331 (not condMapEmpty!17085)) mapNonEmpty!17085))

(assert (= b!2765313 b!2765331))

(assert (= b!2765341 b!2765313))

(assert (= b!2765329 b!2765341))

(assert (= (and b!2765324 ((_ is LongMap!3746) (v!33544 (underlying!7696 (cache!3795 cacheUp!820))))) b!2765329))

(assert (= b!2765360 b!2765324))

(assert (= (and b!2765334 ((_ is HashMap!3652) (cache!3795 cacheUp!820))) b!2765360))

(assert (= start!267716 b!2765334))

(assert (= (and b!2765321 condMapEmpty!17086) mapIsEmpty!17085))

(assert (= (and b!2765321 (not condMapEmpty!17086)) mapNonEmpty!17086))

(assert (= b!2765311 b!2765321))

(assert (= b!2765327 b!2765311))

(assert (= b!2765356 b!2765327))

(assert (= (and b!2765352 ((_ is LongMap!3747) (v!33546 (underlying!7698 (cache!3796 cacheDown!939))))) b!2765356))

(assert (= b!2765347 b!2765352))

(assert (= (and b!2765330 ((_ is HashMap!3653) (cache!3796 cacheDown!939))) b!2765347))

(assert (= start!267716 b!2765330))

(assert (= (and start!267716 condSetEmpty!22540) setIsEmpty!22540))

(assert (= (and start!267716 (not condSetEmpty!22540)) setNonEmpty!22540))

(assert (= setNonEmpty!22540 b!2765333))

(assert (= start!267716 b!2765348))

(declare-fun m!3188143 () Bool)

(assert (=> b!2765314 m!3188143))

(declare-fun m!3188145 () Bool)

(assert (=> b!2765314 m!3188145))

(declare-fun m!3188147 () Bool)

(assert (=> b!2765314 m!3188147))

(declare-fun m!3188149 () Bool)

(assert (=> b!2765314 m!3188149))

(declare-fun m!3188151 () Bool)

(assert (=> b!2765314 m!3188151))

(declare-fun m!3188153 () Bool)

(assert (=> b!2765314 m!3188153))

(declare-fun m!3188155 () Bool)

(assert (=> b!2765314 m!3188155))

(declare-fun m!3188157 () Bool)

(assert (=> b!2765314 m!3188157))

(declare-fun m!3188159 () Bool)

(assert (=> b!2765314 m!3188159))

(declare-fun m!3188161 () Bool)

(assert (=> b!2765314 m!3188161))

(declare-fun m!3188163 () Bool)

(assert (=> b!2765314 m!3188163))

(declare-fun m!3188165 () Bool)

(assert (=> b!2765314 m!3188165))

(declare-fun m!3188167 () Bool)

(assert (=> b!2765314 m!3188167))

(declare-fun m!3188169 () Bool)

(assert (=> b!2765314 m!3188169))

(declare-fun m!3188171 () Bool)

(assert (=> b!2765314 m!3188171))

(declare-fun m!3188173 () Bool)

(assert (=> b!2765314 m!3188173))

(declare-fun m!3188175 () Bool)

(assert (=> b!2765314 m!3188175))

(declare-fun m!3188177 () Bool)

(assert (=> b!2765314 m!3188177))

(assert (=> b!2765314 m!3188159))

(declare-fun m!3188179 () Bool)

(assert (=> b!2765314 m!3188179))

(assert (=> b!2765314 m!3188147))

(declare-fun m!3188181 () Bool)

(assert (=> b!2765314 m!3188181))

(declare-fun m!3188183 () Bool)

(assert (=> bm!180043 m!3188183))

(declare-fun m!3188185 () Bool)

(assert (=> bm!180037 m!3188185))

(declare-fun m!3188187 () Bool)

(assert (=> bm!180028 m!3188187))

(declare-fun m!3188189 () Bool)

(assert (=> bm!180035 m!3188189))

(declare-fun m!3188191 () Bool)

(assert (=> b!2765342 m!3188191))

(declare-fun m!3188193 () Bool)

(assert (=> b!2765338 m!3188193))

(declare-fun m!3188195 () Bool)

(assert (=> b!2765338 m!3188195))

(declare-fun m!3188197 () Bool)

(assert (=> b!2765338 m!3188197))

(declare-fun m!3188199 () Bool)

(assert (=> b!2765338 m!3188199))

(declare-fun m!3188201 () Bool)

(assert (=> b!2765338 m!3188201))

(declare-fun m!3188203 () Bool)

(assert (=> b!2765338 m!3188203))

(declare-fun m!3188205 () Bool)

(assert (=> b!2765338 m!3188205))

(declare-fun m!3188207 () Bool)

(assert (=> b!2765338 m!3188207))

(declare-fun m!3188209 () Bool)

(assert (=> b!2765338 m!3188209))

(declare-fun m!3188211 () Bool)

(assert (=> b!2765338 m!3188211))

(declare-fun m!3188213 () Bool)

(assert (=> b!2765338 m!3188213))

(declare-fun m!3188215 () Bool)

(assert (=> b!2765338 m!3188215))

(declare-fun m!3188217 () Bool)

(assert (=> b!2765338 m!3188217))

(declare-fun m!3188219 () Bool)

(assert (=> b!2765338 m!3188219))

(declare-fun m!3188221 () Bool)

(assert (=> b!2765338 m!3188221))

(declare-fun m!3188223 () Bool)

(assert (=> b!2765338 m!3188223))

(declare-fun m!3188225 () Bool)

(assert (=> b!2765338 m!3188225))

(declare-fun m!3188227 () Bool)

(assert (=> bm!180030 m!3188227))

(declare-fun m!3188229 () Bool)

(assert (=> mapNonEmpty!17086 m!3188229))

(assert (=> b!2765310 m!3188163))

(declare-fun m!3188231 () Bool)

(assert (=> bm!180045 m!3188231))

(assert (=> b!2765336 m!3188223))

(assert (=> bm!180042 m!3188227))

(declare-fun m!3188233 () Bool)

(assert (=> b!2765359 m!3188233))

(declare-fun m!3188235 () Bool)

(assert (=> b!2765359 m!3188235))

(assert (=> b!2765359 m!3188175))

(assert (=> b!2765359 m!3188145))

(assert (=> b!2765359 m!3188147))

(assert (=> b!2765359 m!3188149))

(assert (=> b!2765359 m!3188153))

(assert (=> b!2765359 m!3188163))

(assert (=> b!2765359 m!3188147))

(assert (=> b!2765359 m!3188169))

(declare-fun m!3188237 () Bool)

(assert (=> b!2765359 m!3188237))

(declare-fun m!3188239 () Bool)

(assert (=> b!2765359 m!3188239))

(assert (=> b!2765359 m!3188171))

(declare-fun m!3188241 () Bool)

(assert (=> bm!180038 m!3188241))

(assert (=> b!2765353 m!3188145))

(assert (=> b!2765353 m!3188147))

(assert (=> b!2765353 m!3188149))

(assert (=> b!2765353 m!3188153))

(declare-fun m!3188243 () Bool)

(assert (=> b!2765353 m!3188243))

(assert (=> b!2765353 m!3188157))

(assert (=> b!2765353 m!3188159))

(declare-fun m!3188245 () Bool)

(assert (=> b!2765353 m!3188245))

(assert (=> b!2765353 m!3188161))

(assert (=> b!2765353 m!3188163))

(assert (=> b!2765353 m!3188147))

(declare-fun m!3188247 () Bool)

(assert (=> b!2765353 m!3188247))

(assert (=> b!2765353 m!3188171))

(assert (=> b!2765353 m!3188173))

(assert (=> b!2765353 m!3188175))

(assert (=> b!2765353 m!3188177))

(declare-fun m!3188249 () Bool)

(assert (=> b!2765353 m!3188249))

(assert (=> b!2765353 m!3188159))

(assert (=> b!2765353 m!3188179))

(declare-fun m!3188251 () Bool)

(assert (=> b!2765353 m!3188251))

(assert (=> b!2765353 m!3188169))

(declare-fun m!3188253 () Bool)

(assert (=> b!2765353 m!3188253))

(declare-fun m!3188255 () Bool)

(assert (=> bm!180046 m!3188255))

(declare-fun m!3188257 () Bool)

(assert (=> bm!180036 m!3188257))

(declare-fun m!3188259 () Bool)

(assert (=> b!2765313 m!3188259))

(declare-fun m!3188261 () Bool)

(assert (=> b!2765313 m!3188261))

(assert (=> bm!180034 m!3188227))

(declare-fun m!3188263 () Bool)

(assert (=> b!2765311 m!3188263))

(declare-fun m!3188265 () Bool)

(assert (=> b!2765311 m!3188265))

(assert (=> bm!180032 m!3188189))

(assert (=> bm!180040 m!3188183))

(declare-fun m!3188267 () Bool)

(assert (=> b!2765348 m!3188267))

(declare-fun m!3188269 () Bool)

(assert (=> b!2765308 m!3188269))

(declare-fun m!3188271 () Bool)

(assert (=> start!267716 m!3188271))

(declare-fun m!3188273 () Bool)

(assert (=> start!267716 m!3188273))

(declare-fun m!3188275 () Bool)

(assert (=> start!267716 m!3188275))

(declare-fun m!3188277 () Bool)

(assert (=> start!267716 m!3188277))

(declare-fun m!3188279 () Bool)

(assert (=> b!2765323 m!3188279))

(declare-fun m!3188281 () Bool)

(assert (=> bm!180044 m!3188281))

(declare-fun m!3188283 () Bool)

(assert (=> bm!180039 m!3188283))

(declare-fun m!3188285 () Bool)

(assert (=> b!2765345 m!3188285))

(declare-fun m!3188287 () Bool)

(assert (=> bm!180041 m!3188287))

(assert (=> bm!180027 m!3188231))

(assert (=> bm!180029 m!3188189))

(declare-fun m!3188289 () Bool)

(assert (=> setNonEmpty!22540 m!3188289))

(assert (=> bm!180033 m!3188231))

(assert (=> bm!180031 m!3188183))

(assert (=> b!2765350 m!3188223))

(declare-fun m!3188291 () Bool)

(assert (=> bm!180047 m!3188291))

(declare-fun m!3188293 () Bool)

(assert (=> mapNonEmpty!17085 m!3188293))

(check-sat (not b!2765333) b_and!202827 (not b!2765310) (not start!267716) (not b!2765350) (not b!2765345) (not b_next!78793) (not bm!180040) (not bm!180031) (not bm!180027) (not b!2765313) (not b!2765311) (not b!2765342) (not setNonEmpty!22540) (not b!2765323) b_and!202823 (not bm!180034) (not bm!180043) (not bm!180047) (not b!2765314) (not b!2765321) b_and!202825 (not b!2765338) (not b!2765359) (not bm!180033) (not bm!180041) (not bm!180029) (not bm!180046) (not bm!180042) (not b!2765331) (not bm!180044) (not b!2765348) (not bm!180030) (not bm!180037) (not bm!180028) (not mapNonEmpty!17086) (not bm!180039) (not b_next!78791) b_and!202829 (not b_next!78789) (not b!2765336) (not bm!180038) (not bm!180036) (not b!2765308) (not bm!180032) (not b!2765353) (not mapNonEmpty!17085) (not bm!180035) (not bm!180045) (not b_next!78795))
(check-sat b_and!202823 b_and!202825 b_and!202827 (not b_next!78791) (not b_next!78793) (not b_next!78795) b_and!202829 (not b_next!78789))
(get-model)

(declare-fun b!2765372 () Bool)

(declare-fun e!1743574 () Bool)

(assert (=> b!2765372 (= e!1743574 (isPrefix!2543 (tail!4377 lt!983252) (tail!4377 lt!983252)))))

(declare-fun d!802957 () Bool)

(declare-fun e!1743573 () Bool)

(assert (=> d!802957 e!1743573))

(declare-fun res!1157262 () Bool)

(assert (=> d!802957 (=> res!1157262 e!1743573)))

(declare-fun lt!983270 () Bool)

(assert (=> d!802957 (= res!1157262 (not lt!983270))))

(declare-fun e!1743575 () Bool)

(assert (=> d!802957 (= lt!983270 e!1743575)))

(declare-fun res!1157264 () Bool)

(assert (=> d!802957 (=> res!1157264 e!1743575)))

(assert (=> d!802957 (= res!1157264 ((_ is Nil!31935) lt!983252))))

(assert (=> d!802957 (= (isPrefix!2543 lt!983252 lt!983252) lt!983270)))

(declare-fun b!2765371 () Bool)

(declare-fun res!1157263 () Bool)

(assert (=> b!2765371 (=> (not res!1157263) (not e!1743574))))

(assert (=> b!2765371 (= res!1157263 (= (head!6139 lt!983252) (head!6139 lt!983252)))))

(declare-fun b!2765373 () Bool)

(assert (=> b!2765373 (= e!1743573 (>= (size!24708 lt!983252) (size!24708 lt!983252)))))

(declare-fun b!2765370 () Bool)

(assert (=> b!2765370 (= e!1743575 e!1743574)))

(declare-fun res!1157265 () Bool)

(assert (=> b!2765370 (=> (not res!1157265) (not e!1743574))))

(assert (=> b!2765370 (= res!1157265 (not ((_ is Nil!31935) lt!983252)))))

(assert (= (and d!802957 (not res!1157264)) b!2765370))

(assert (= (and b!2765370 res!1157265) b!2765371))

(assert (= (and b!2765371 res!1157263) b!2765372))

(assert (= (and d!802957 (not res!1157262)) b!2765373))

(assert (=> b!2765372 m!3188169))

(assert (=> b!2765372 m!3188169))

(assert (=> b!2765372 m!3188169))

(assert (=> b!2765372 m!3188169))

(declare-fun m!3188295 () Bool)

(assert (=> b!2765372 m!3188295))

(assert (=> b!2765371 m!3188237))

(assert (=> b!2765371 m!3188237))

(assert (=> b!2765373 m!3188171))

(assert (=> b!2765373 m!3188171))

(assert (=> bm!180031 d!802957))

(declare-fun b!2765398 () Bool)

(declare-fun e!1743588 () Int)

(assert (=> b!2765398 (= e!1743588 1)))

(declare-fun lt!983375 () List!32035)

(declare-fun lt!983379 () List!32035)

(declare-fun lt!983376 () List!32035)

(declare-fun bm!180068 () Bool)

(declare-fun lt!983366 () List!32035)

(declare-fun call!180073 () Bool)

(declare-fun c!448549 () Bool)

(assert (=> bm!180068 (= call!180073 (isPrefix!2543 (ite c!448549 lt!983375 lt!983366) (ite c!448549 lt!983379 lt!983376)))))

(declare-fun b!2765399 () Bool)

(assert (=> b!2765399 (= e!1743588 0)))

(declare-fun bm!180069 () Bool)

(declare-fun call!180082 () List!32035)

(declare-fun lt!983381 () tuple2!32030)

(assert (=> bm!180069 (= call!180082 (list!12059 (ite c!448549 input!5495 (_1!18858 lt!983381))))))

(declare-fun b!2765400 () Bool)

(declare-fun e!1743590 () Int)

(declare-fun e!1743593 () Int)

(assert (=> b!2765400 (= e!1743590 e!1743593)))

(assert (=> b!2765400 (= c!448549 (= 1 lt!983200))))

(declare-fun bm!180070 () Bool)

(declare-fun c!448551 () Bool)

(assert (=> bm!180070 (= c!448551 c!448549)))

(declare-fun e!1743591 () List!32035)

(declare-fun lt!983384 () List!32035)

(declare-fun lt!983382 () List!32035)

(declare-fun call!180075 () Unit!45983)

(assert (=> bm!180070 (= call!180075 (lemmaIsPrefixSameLengthThenSameList!451 (ite c!448549 lt!983382 lt!983384) lt!983260 e!1743591))))

(declare-fun b!2765401 () Bool)

(assert (=> b!2765401 (= e!1743590 0)))

(declare-fun bm!180071 () Bool)

(declare-fun call!180077 () Bool)

(assert (=> bm!180071 (= call!180077 (nullableZipper!623 call!180052))))

(declare-fun b!2765402 () Bool)

(declare-fun c!448547 () Bool)

(assert (=> b!2765402 (= c!448547 call!180077)))

(declare-fun lt!983369 () Unit!45983)

(declare-fun lt!983390 () Unit!45983)

(assert (=> b!2765402 (= lt!983369 lt!983390)))

(declare-fun lt!983391 () C!16296)

(declare-fun lt!983368 () List!32035)

(declare-fun lt!983388 () List!32035)

(assert (=> b!2765402 (= (++!7905 (++!7905 lt!983260 (Cons!31935 lt!983391 Nil!31935)) lt!983368) lt!983388)))

(assert (=> b!2765402 (= lt!983390 (lemmaMoveElementToOtherListKeepsConcatEq!860 lt!983260 lt!983391 lt!983368 lt!983388))))

(assert (=> b!2765402 (= lt!983388 (list!12059 input!5495))))

(assert (=> b!2765402 (= lt!983368 (tail!4377 lt!983254))))

(assert (=> b!2765402 (= lt!983391 (apply!7481 input!5495 1))))

(declare-fun lt!983389 () Unit!45983)

(declare-fun lt!983386 () Unit!45983)

(assert (=> b!2765402 (= lt!983389 lt!983386)))

(declare-fun lt!983363 () List!32035)

(assert (=> b!2765402 (isPrefix!2543 (++!7905 lt!983260 (Cons!31935 (head!6139 (getSuffix!1227 lt!983363 lt!983260)) Nil!31935)) lt!983363)))

(assert (=> b!2765402 (= lt!983386 (lemmaAddHeadSuffixToPrefixStillPrefix!448 lt!983260 lt!983363))))

(assert (=> b!2765402 (= lt!983363 (list!12059 input!5495))))

(declare-fun lt!983385 () Unit!45983)

(declare-fun e!1743589 () Unit!45983)

(assert (=> b!2765402 (= lt!983385 e!1743589)))

(declare-fun c!448550 () Bool)

(assert (=> b!2765402 (= c!448550 (= (size!24708 lt!983260) (size!24709 input!5495)))))

(declare-fun lt!983359 () Unit!45983)

(declare-fun lt!983372 () Unit!45983)

(assert (=> b!2765402 (= lt!983359 lt!983372)))

(declare-fun lt!983396 () List!32035)

(assert (=> b!2765402 (<= (size!24708 lt!983260) (size!24708 lt!983396))))

(assert (=> b!2765402 (= lt!983372 (lemmaIsPrefixThenSmallerEqSize!251 lt!983260 lt!983396))))

(assert (=> b!2765402 (= lt!983396 (list!12059 input!5495))))

(declare-fun lt!983370 () Unit!45983)

(declare-fun lt!983371 () Unit!45983)

(assert (=> b!2765402 (= lt!983370 lt!983371)))

(declare-fun lt!983367 () List!32035)

(assert (=> b!2765402 (= (head!6139 (drop!1697 lt!983367 1)) (apply!7482 lt!983367 1))))

(assert (=> b!2765402 (= lt!983371 (lemmaDropApply!903 lt!983367 1))))

(assert (=> b!2765402 (= lt!983367 (list!12059 input!5495))))

(declare-fun lt!983362 () Unit!45983)

(declare-fun lt!983358 () Unit!45983)

(assert (=> b!2765402 (= lt!983362 lt!983358)))

(declare-fun lt!983387 () List!32035)

(declare-fun lt!983361 () List!32035)

(assert (=> b!2765402 (and (= lt!983361 lt!983260) (= lt!983387 lt!983254))))

(assert (=> b!2765402 (= lt!983358 (lemmaConcatSameAndSameSizesThenSameLists!329 lt!983361 lt!983387 lt!983260 lt!983254))))

(assert (=> b!2765402 (= lt!983387 (list!12059 (_2!18858 lt!983381)))))

(assert (=> b!2765402 (= lt!983361 call!180082)))

(assert (=> b!2765402 (= lt!983381 (splitAt!102 input!5495 1))))

(declare-fun e!1743592 () Int)

(assert (=> b!2765402 (= e!1743593 e!1743592)))

(declare-fun bm!180072 () Bool)

(declare-fun call!180074 () List!32035)

(assert (=> bm!180072 (= call!180074 (tail!4377 lt!983254))))

(declare-fun bm!180073 () Bool)

(declare-fun call!180079 () List!32035)

(declare-fun call!180076 () C!16296)

(assert (=> bm!180073 (= call!180079 (++!7905 lt!983260 (Cons!31935 call!180076 Nil!31935)))))

(declare-fun b!2765403 () Bool)

(declare-fun c!448546 () Bool)

(assert (=> b!2765403 (= c!448546 call!180077)))

(declare-fun lt!983393 () Unit!45983)

(declare-fun lt!983357 () Unit!45983)

(assert (=> b!2765403 (= lt!983393 lt!983357)))

(assert (=> b!2765403 (= lt!983382 lt!983260)))

(assert (=> b!2765403 (= lt!983357 call!180075)))

(assert (=> b!2765403 (= lt!983382 call!180082)))

(declare-fun lt!983374 () Unit!45983)

(declare-fun lt!983360 () Unit!45983)

(assert (=> b!2765403 (= lt!983374 lt!983360)))

(assert (=> b!2765403 call!180073))

(declare-fun call!180078 () Unit!45983)

(assert (=> b!2765403 (= lt!983360 call!180078)))

(assert (=> b!2765403 (= lt!983379 call!180082)))

(assert (=> b!2765403 (= lt!983375 call!180082)))

(assert (=> b!2765403 (= e!1743593 e!1743588)))

(declare-fun b!2765404 () Bool)

(declare-fun lt!983383 () Int)

(assert (=> b!2765404 (= e!1743592 (ite (= lt!983383 0) 1 lt!983383))))

(declare-fun call!180080 () Int)

(assert (=> b!2765404 (= lt!983383 call!180080)))

(declare-fun b!2765405 () Bool)

(assert (=> b!2765405 (= e!1743592 call!180080)))

(declare-fun bm!180075 () Bool)

(assert (=> bm!180075 (= call!180078 (lemmaIsPrefixRefl!1669 (ite c!448549 lt!983375 lt!983366) (ite c!448549 lt!983379 lt!983376)))))

(declare-fun bm!180076 () Bool)

(declare-fun call!180081 () (InoxSet Context!4574))

(assert (=> bm!180076 (= call!180081 (derivationStepZipper!358 call!180052 call!180076))))

(declare-fun lt!983394 () Int)

(declare-fun d!802959 () Bool)

(assert (=> d!802959 (= (size!24708 (_1!18852 (findLongestMatchInnerZipper!13 call!180052 lt!983260 1 lt!983254 (list!12059 input!5495) lt!983200))) lt!983394)))

(assert (=> d!802959 (= lt!983394 e!1743590)))

(declare-fun c!448548 () Bool)

(assert (=> d!802959 (= c!448548 (lostCauseZipper!431 call!180052))))

(declare-fun lt!983395 () Unit!45983)

(declare-fun Unit!45991 () Unit!45983)

(assert (=> d!802959 (= lt!983395 Unit!45991)))

(assert (=> d!802959 (= (getSuffix!1227 (list!12059 input!5495) lt!983260) lt!983254)))

(declare-fun lt!983365 () Unit!45983)

(declare-fun lt!983377 () Unit!45983)

(assert (=> d!802959 (= lt!983365 lt!983377)))

(declare-fun lt!983378 () List!32035)

(assert (=> d!802959 (= lt!983254 lt!983378)))

(assert (=> d!802959 (= lt!983377 (lemmaSamePrefixThenSameSuffix!1129 lt!983260 lt!983254 lt!983260 lt!983378 (list!12059 input!5495)))))

(assert (=> d!802959 (= lt!983378 (getSuffix!1227 (list!12059 input!5495) lt!983260))))

(declare-fun lt!983373 () Unit!45983)

(declare-fun lt!983380 () Unit!45983)

(assert (=> d!802959 (= lt!983373 lt!983380)))

(assert (=> d!802959 (isPrefix!2543 lt!983260 (++!7905 lt!983260 lt!983254))))

(assert (=> d!802959 (= lt!983380 (lemmaConcatTwoListThenFirstIsPrefix!1655 lt!983260 lt!983254))))

(assert (=> d!802959 (= (++!7905 lt!983260 lt!983254) (list!12059 input!5495))))

(assert (=> d!802959 (= (findLongestMatchInnerZipperFast!27 call!180052 lt!983260 1 lt!983254 input!5495 lt!983200) lt!983394)))

(declare-fun bm!180074 () Bool)

(assert (=> bm!180074 (= call!180076 (apply!7481 input!5495 1))))

(declare-fun b!2765406 () Bool)

(assert (=> b!2765406 (= e!1743591 (list!12059 input!5495))))

(declare-fun bm!180077 () Bool)

(assert (=> bm!180077 (= call!180080 (findLongestMatchInnerZipperFast!27 call!180081 call!180079 (+ 1 1) call!180074 input!5495 lt!983200))))

(declare-fun b!2765407 () Bool)

(declare-fun Unit!45992 () Unit!45983)

(assert (=> b!2765407 (= e!1743589 Unit!45992)))

(declare-fun b!2765408 () Bool)

(declare-fun Unit!45993 () Unit!45983)

(assert (=> b!2765408 (= e!1743589 Unit!45993)))

(assert (=> b!2765408 (= lt!983366 (list!12059 input!5495))))

(assert (=> b!2765408 (= lt!983376 (list!12059 input!5495))))

(declare-fun lt!983364 () Unit!45983)

(assert (=> b!2765408 (= lt!983364 call!180078)))

(assert (=> b!2765408 call!180073))

(declare-fun lt!983392 () Unit!45983)

(assert (=> b!2765408 (= lt!983392 lt!983364)))

(assert (=> b!2765408 (= lt!983384 (list!12059 input!5495))))

(declare-fun lt!983356 () Unit!45983)

(assert (=> b!2765408 (= lt!983356 call!180075)))

(assert (=> b!2765408 (= lt!983384 lt!983260)))

(declare-fun lt!983355 () Unit!45983)

(assert (=> b!2765408 (= lt!983355 lt!983356)))

(assert (=> b!2765408 false))

(declare-fun b!2765409 () Bool)

(assert (=> b!2765409 (= e!1743591 call!180082)))

(assert (= (and d!802959 c!448548) b!2765401))

(assert (= (and d!802959 (not c!448548)) b!2765400))

(assert (= (and b!2765400 c!448549) b!2765403))

(assert (= (and b!2765400 (not c!448549)) b!2765402))

(assert (= (and b!2765403 c!448546) b!2765398))

(assert (= (and b!2765403 (not c!448546)) b!2765399))

(assert (= (and b!2765402 c!448550) b!2765408))

(assert (= (and b!2765402 (not c!448550)) b!2765407))

(assert (= (and b!2765402 c!448547) b!2765404))

(assert (= (and b!2765402 (not c!448547)) b!2765405))

(assert (= (or b!2765404 b!2765405) bm!180072))

(assert (= (or b!2765404 b!2765405) bm!180074))

(assert (= (or b!2765404 b!2765405) bm!180076))

(assert (= (or b!2765404 b!2765405) bm!180073))

(assert (= (or b!2765404 b!2765405) bm!180077))

(assert (= (or b!2765403 b!2765408) bm!180075))

(assert (= (or b!2765403 b!2765408) bm!180068))

(assert (= (or b!2765403 b!2765402) bm!180069))

(assert (= (or b!2765403 b!2765402) bm!180071))

(assert (= (or b!2765403 b!2765408) bm!180070))

(assert (= (and bm!180070 c!448551) b!2765409))

(assert (= (and bm!180070 (not c!448551)) b!2765406))

(declare-fun m!3188297 () Bool)

(assert (=> bm!180075 m!3188297))

(assert (=> b!2765406 m!3188195))

(declare-fun m!3188299 () Bool)

(assert (=> bm!180077 m!3188299))

(declare-fun m!3188301 () Bool)

(assert (=> bm!180073 m!3188301))

(declare-fun m!3188303 () Bool)

(assert (=> bm!180074 m!3188303))

(declare-fun m!3188305 () Bool)

(assert (=> b!2765402 m!3188305))

(declare-fun m!3188307 () Bool)

(assert (=> b!2765402 m!3188307))

(declare-fun m!3188309 () Bool)

(assert (=> b!2765402 m!3188309))

(assert (=> b!2765402 m!3188201))

(declare-fun m!3188311 () Bool)

(assert (=> b!2765402 m!3188311))

(declare-fun m!3188313 () Bool)

(assert (=> b!2765402 m!3188313))

(declare-fun m!3188315 () Bool)

(assert (=> b!2765402 m!3188315))

(declare-fun m!3188317 () Bool)

(assert (=> b!2765402 m!3188317))

(declare-fun m!3188319 () Bool)

(assert (=> b!2765402 m!3188319))

(assert (=> b!2765402 m!3188315))

(declare-fun m!3188321 () Bool)

(assert (=> b!2765402 m!3188321))

(declare-fun m!3188323 () Bool)

(assert (=> b!2765402 m!3188323))

(assert (=> b!2765402 m!3188303))

(declare-fun m!3188325 () Bool)

(assert (=> b!2765402 m!3188325))

(declare-fun m!3188327 () Bool)

(assert (=> b!2765402 m!3188327))

(assert (=> b!2765402 m!3188305))

(assert (=> b!2765402 m!3188311))

(declare-fun m!3188329 () Bool)

(assert (=> b!2765402 m!3188329))

(declare-fun m!3188331 () Bool)

(assert (=> b!2765402 m!3188331))

(declare-fun m!3188333 () Bool)

(assert (=> b!2765402 m!3188333))

(declare-fun m!3188335 () Bool)

(assert (=> b!2765402 m!3188335))

(assert (=> b!2765402 m!3188195))

(declare-fun m!3188337 () Bool)

(assert (=> b!2765402 m!3188337))

(assert (=> b!2765402 m!3188325))

(declare-fun m!3188339 () Bool)

(assert (=> b!2765402 m!3188339))

(declare-fun m!3188341 () Bool)

(assert (=> b!2765402 m!3188341))

(declare-fun m!3188343 () Bool)

(assert (=> bm!180068 m!3188343))

(declare-fun m!3188345 () Bool)

(assert (=> bm!180069 m!3188345))

(assert (=> bm!180072 m!3188337))

(declare-fun m!3188347 () Bool)

(assert (=> bm!180071 m!3188347))

(declare-fun m!3188349 () Bool)

(assert (=> bm!180070 m!3188349))

(declare-fun m!3188351 () Bool)

(assert (=> d!802959 m!3188351))

(declare-fun m!3188353 () Bool)

(assert (=> d!802959 m!3188353))

(assert (=> d!802959 m!3188195))

(declare-fun m!3188355 () Bool)

(assert (=> d!802959 m!3188355))

(assert (=> d!802959 m!3188249))

(declare-fun m!3188357 () Bool)

(assert (=> d!802959 m!3188357))

(assert (=> d!802959 m!3188195))

(assert (=> d!802959 m!3188249))

(declare-fun m!3188359 () Bool)

(assert (=> d!802959 m!3188359))

(assert (=> d!802959 m!3188195))

(declare-fun m!3188361 () Bool)

(assert (=> d!802959 m!3188361))

(assert (=> d!802959 m!3188195))

(declare-fun m!3188363 () Bool)

(assert (=> d!802959 m!3188363))

(declare-fun m!3188365 () Bool)

(assert (=> bm!180076 m!3188365))

(assert (=> b!2765408 m!3188195))

(assert (=> bm!180038 d!802959))

(declare-fun b!2765410 () Bool)

(declare-fun e!1743594 () Int)

(assert (=> b!2765410 (= e!1743594 1)))

(declare-fun lt!983417 () List!32035)

(declare-fun lt!983418 () List!32035)

(declare-fun call!180083 () Bool)

(declare-fun lt!983421 () List!32035)

(declare-fun c!448555 () Bool)

(declare-fun lt!983408 () List!32035)

(declare-fun bm!180078 () Bool)

(assert (=> bm!180078 (= call!180083 (isPrefix!2543 (ite c!448555 lt!983417 lt!983408) (ite c!448555 lt!983421 lt!983418)))))

(declare-fun b!2765411 () Bool)

(assert (=> b!2765411 (= e!1743594 0)))

(declare-fun call!180092 () List!32035)

(declare-fun bm!180079 () Bool)

(declare-fun lt!983423 () tuple2!32030)

(assert (=> bm!180079 (= call!180092 (list!12059 (ite c!448555 input!5495 (_1!18858 lt!983423))))))

(declare-fun b!2765412 () Bool)

(declare-fun e!1743596 () Int)

(declare-fun e!1743599 () Int)

(assert (=> b!2765412 (= e!1743596 e!1743599)))

(assert (=> b!2765412 (= c!448555 (= 1 lt!983200))))

(declare-fun bm!180080 () Bool)

(declare-fun c!448557 () Bool)

(assert (=> bm!180080 (= c!448557 c!448555)))

(declare-fun lt!983426 () List!32035)

(declare-fun e!1743597 () List!32035)

(declare-fun call!180085 () Unit!45983)

(declare-fun lt!983424 () List!32035)

(assert (=> bm!180080 (= call!180085 (lemmaIsPrefixSameLengthThenSameList!451 (ite c!448555 lt!983424 lt!983426) lt!983264 e!1743597))))

(declare-fun b!2765413 () Bool)

(assert (=> b!2765413 (= e!1743596 0)))

(declare-fun call!180087 () Bool)

(declare-fun bm!180081 () Bool)

(assert (=> bm!180081 (= call!180087 (nullableZipper!623 (ite c!448518 (_1!18860 lt!983261) (_1!18860 lt!983210))))))

(declare-fun b!2765414 () Bool)

(declare-fun c!448553 () Bool)

(assert (=> b!2765414 (= c!448553 call!180087)))

(declare-fun lt!983411 () Unit!45983)

(declare-fun lt!983432 () Unit!45983)

(assert (=> b!2765414 (= lt!983411 lt!983432)))

(declare-fun lt!983430 () List!32035)

(declare-fun lt!983410 () List!32035)

(declare-fun lt!983433 () C!16296)

(assert (=> b!2765414 (= (++!7905 (++!7905 lt!983264 (Cons!31935 lt!983433 Nil!31935)) lt!983410) lt!983430)))

(assert (=> b!2765414 (= lt!983432 (lemmaMoveElementToOtherListKeepsConcatEq!860 lt!983264 lt!983433 lt!983410 lt!983430))))

(assert (=> b!2765414 (= lt!983430 (list!12059 input!5495))))

(assert (=> b!2765414 (= lt!983410 (tail!4377 lt!983253))))

(assert (=> b!2765414 (= lt!983433 (apply!7481 input!5495 1))))

(declare-fun lt!983431 () Unit!45983)

(declare-fun lt!983428 () Unit!45983)

(assert (=> b!2765414 (= lt!983431 lt!983428)))

(declare-fun lt!983405 () List!32035)

(assert (=> b!2765414 (isPrefix!2543 (++!7905 lt!983264 (Cons!31935 (head!6139 (getSuffix!1227 lt!983405 lt!983264)) Nil!31935)) lt!983405)))

(assert (=> b!2765414 (= lt!983428 (lemmaAddHeadSuffixToPrefixStillPrefix!448 lt!983264 lt!983405))))

(assert (=> b!2765414 (= lt!983405 (list!12059 input!5495))))

(declare-fun lt!983427 () Unit!45983)

(declare-fun e!1743595 () Unit!45983)

(assert (=> b!2765414 (= lt!983427 e!1743595)))

(declare-fun c!448556 () Bool)

(assert (=> b!2765414 (= c!448556 (= (size!24708 lt!983264) (size!24709 input!5495)))))

(declare-fun lt!983401 () Unit!45983)

(declare-fun lt!983414 () Unit!45983)

(assert (=> b!2765414 (= lt!983401 lt!983414)))

(declare-fun lt!983438 () List!32035)

(assert (=> b!2765414 (<= (size!24708 lt!983264) (size!24708 lt!983438))))

(assert (=> b!2765414 (= lt!983414 (lemmaIsPrefixThenSmallerEqSize!251 lt!983264 lt!983438))))

(assert (=> b!2765414 (= lt!983438 (list!12059 input!5495))))

(declare-fun lt!983412 () Unit!45983)

(declare-fun lt!983413 () Unit!45983)

(assert (=> b!2765414 (= lt!983412 lt!983413)))

(declare-fun lt!983409 () List!32035)

(assert (=> b!2765414 (= (head!6139 (drop!1697 lt!983409 1)) (apply!7482 lt!983409 1))))

(assert (=> b!2765414 (= lt!983413 (lemmaDropApply!903 lt!983409 1))))

(assert (=> b!2765414 (= lt!983409 (list!12059 input!5495))))

(declare-fun lt!983404 () Unit!45983)

(declare-fun lt!983400 () Unit!45983)

(assert (=> b!2765414 (= lt!983404 lt!983400)))

(declare-fun lt!983403 () List!32035)

(declare-fun lt!983429 () List!32035)

(assert (=> b!2765414 (and (= lt!983403 lt!983264) (= lt!983429 lt!983253))))

(assert (=> b!2765414 (= lt!983400 (lemmaConcatSameAndSameSizesThenSameLists!329 lt!983403 lt!983429 lt!983264 lt!983253))))

(assert (=> b!2765414 (= lt!983429 (list!12059 (_2!18858 lt!983423)))))

(assert (=> b!2765414 (= lt!983403 call!180092)))

(assert (=> b!2765414 (= lt!983423 (splitAt!102 input!5495 1))))

(declare-fun e!1743598 () Int)

(assert (=> b!2765414 (= e!1743599 e!1743598)))

(declare-fun bm!180082 () Bool)

(declare-fun call!180084 () List!32035)

(assert (=> bm!180082 (= call!180084 (tail!4377 lt!983253))))

(declare-fun bm!180083 () Bool)

(declare-fun call!180089 () List!32035)

(declare-fun call!180086 () C!16296)

(assert (=> bm!180083 (= call!180089 (++!7905 lt!983264 (Cons!31935 call!180086 Nil!31935)))))

(declare-fun b!2765415 () Bool)

(declare-fun c!448552 () Bool)

(assert (=> b!2765415 (= c!448552 call!180087)))

(declare-fun lt!983435 () Unit!45983)

(declare-fun lt!983399 () Unit!45983)

(assert (=> b!2765415 (= lt!983435 lt!983399)))

(assert (=> b!2765415 (= lt!983424 lt!983264)))

(assert (=> b!2765415 (= lt!983399 call!180085)))

(assert (=> b!2765415 (= lt!983424 call!180092)))

(declare-fun lt!983416 () Unit!45983)

(declare-fun lt!983402 () Unit!45983)

(assert (=> b!2765415 (= lt!983416 lt!983402)))

(assert (=> b!2765415 call!180083))

(declare-fun call!180088 () Unit!45983)

(assert (=> b!2765415 (= lt!983402 call!180088)))

(assert (=> b!2765415 (= lt!983421 call!180092)))

(assert (=> b!2765415 (= lt!983417 call!180092)))

(assert (=> b!2765415 (= e!1743599 e!1743594)))

(declare-fun b!2765416 () Bool)

(declare-fun lt!983425 () Int)

(assert (=> b!2765416 (= e!1743598 (ite (= lt!983425 0) 1 lt!983425))))

(declare-fun call!180090 () Int)

(assert (=> b!2765416 (= lt!983425 call!180090)))

(declare-fun b!2765417 () Bool)

(assert (=> b!2765417 (= e!1743598 call!180090)))

(declare-fun bm!180085 () Bool)

(assert (=> bm!180085 (= call!180088 (lemmaIsPrefixRefl!1669 (ite c!448555 lt!983417 lt!983408) (ite c!448555 lt!983421 lt!983418)))))

(declare-fun call!180091 () (InoxSet Context!4574))

(declare-fun bm!180086 () Bool)

(assert (=> bm!180086 (= call!180091 (derivationStepZipper!358 (ite c!448518 (_1!18860 lt!983261) (_1!18860 lt!983210)) call!180086))))

(declare-fun lt!983436 () Int)

(declare-fun d!802961 () Bool)

(assert (=> d!802961 (= (size!24708 (_1!18852 (findLongestMatchInnerZipper!13 (ite c!448518 (_1!18860 lt!983261) (_1!18860 lt!983210)) lt!983264 1 lt!983253 (list!12059 input!5495) lt!983200))) lt!983436)))

(assert (=> d!802961 (= lt!983436 e!1743596)))

(declare-fun c!448554 () Bool)

(assert (=> d!802961 (= c!448554 (lostCauseZipper!431 (ite c!448518 (_1!18860 lt!983261) (_1!18860 lt!983210))))))

(declare-fun lt!983437 () Unit!45983)

(declare-fun Unit!45994 () Unit!45983)

(assert (=> d!802961 (= lt!983437 Unit!45994)))

(assert (=> d!802961 (= (getSuffix!1227 (list!12059 input!5495) lt!983264) lt!983253)))

(declare-fun lt!983407 () Unit!45983)

(declare-fun lt!983419 () Unit!45983)

(assert (=> d!802961 (= lt!983407 lt!983419)))

(declare-fun lt!983420 () List!32035)

(assert (=> d!802961 (= lt!983253 lt!983420)))

(assert (=> d!802961 (= lt!983419 (lemmaSamePrefixThenSameSuffix!1129 lt!983264 lt!983253 lt!983264 lt!983420 (list!12059 input!5495)))))

(assert (=> d!802961 (= lt!983420 (getSuffix!1227 (list!12059 input!5495) lt!983264))))

(declare-fun lt!983415 () Unit!45983)

(declare-fun lt!983422 () Unit!45983)

(assert (=> d!802961 (= lt!983415 lt!983422)))

(assert (=> d!802961 (isPrefix!2543 lt!983264 (++!7905 lt!983264 lt!983253))))

(assert (=> d!802961 (= lt!983422 (lemmaConcatTwoListThenFirstIsPrefix!1655 lt!983264 lt!983253))))

(assert (=> d!802961 (= (++!7905 lt!983264 lt!983253) (list!12059 input!5495))))

(assert (=> d!802961 (= (findLongestMatchInnerZipperFast!27 (ite c!448518 (_1!18860 lt!983261) (_1!18860 lt!983210)) lt!983264 1 lt!983253 input!5495 lt!983200) lt!983436)))

(declare-fun bm!180084 () Bool)

(assert (=> bm!180084 (= call!180086 (apply!7481 input!5495 1))))

(declare-fun b!2765418 () Bool)

(assert (=> b!2765418 (= e!1743597 (list!12059 input!5495))))

(declare-fun bm!180087 () Bool)

(assert (=> bm!180087 (= call!180090 (findLongestMatchInnerZipperFast!27 call!180091 call!180089 (+ 1 1) call!180084 input!5495 lt!983200))))

(declare-fun b!2765419 () Bool)

(declare-fun Unit!45995 () Unit!45983)

(assert (=> b!2765419 (= e!1743595 Unit!45995)))

(declare-fun b!2765420 () Bool)

(declare-fun Unit!45996 () Unit!45983)

(assert (=> b!2765420 (= e!1743595 Unit!45996)))

(assert (=> b!2765420 (= lt!983408 (list!12059 input!5495))))

(assert (=> b!2765420 (= lt!983418 (list!12059 input!5495))))

(declare-fun lt!983406 () Unit!45983)

(assert (=> b!2765420 (= lt!983406 call!180088)))

(assert (=> b!2765420 call!180083))

(declare-fun lt!983434 () Unit!45983)

(assert (=> b!2765420 (= lt!983434 lt!983406)))

(assert (=> b!2765420 (= lt!983426 (list!12059 input!5495))))

(declare-fun lt!983398 () Unit!45983)

(assert (=> b!2765420 (= lt!983398 call!180085)))

(assert (=> b!2765420 (= lt!983426 lt!983264)))

(declare-fun lt!983397 () Unit!45983)

(assert (=> b!2765420 (= lt!983397 lt!983398)))

(assert (=> b!2765420 false))

(declare-fun b!2765421 () Bool)

(assert (=> b!2765421 (= e!1743597 call!180092)))

(assert (= (and d!802961 c!448554) b!2765413))

(assert (= (and d!802961 (not c!448554)) b!2765412))

(assert (= (and b!2765412 c!448555) b!2765415))

(assert (= (and b!2765412 (not c!448555)) b!2765414))

(assert (= (and b!2765415 c!448552) b!2765410))

(assert (= (and b!2765415 (not c!448552)) b!2765411))

(assert (= (and b!2765414 c!448556) b!2765420))

(assert (= (and b!2765414 (not c!448556)) b!2765419))

(assert (= (and b!2765414 c!448553) b!2765416))

(assert (= (and b!2765414 (not c!448553)) b!2765417))

(assert (= (or b!2765416 b!2765417) bm!180082))

(assert (= (or b!2765416 b!2765417) bm!180084))

(assert (= (or b!2765416 b!2765417) bm!180086))

(assert (= (or b!2765416 b!2765417) bm!180083))

(assert (= (or b!2765416 b!2765417) bm!180087))

(assert (= (or b!2765415 b!2765420) bm!180085))

(assert (= (or b!2765415 b!2765420) bm!180078))

(assert (= (or b!2765415 b!2765414) bm!180079))

(assert (= (or b!2765415 b!2765414) bm!180081))

(assert (= (or b!2765415 b!2765420) bm!180080))

(assert (= (and bm!180080 c!448557) b!2765421))

(assert (= (and bm!180080 (not c!448557)) b!2765418))

(declare-fun m!3188367 () Bool)

(assert (=> bm!180085 m!3188367))

(assert (=> b!2765418 m!3188195))

(declare-fun m!3188369 () Bool)

(assert (=> bm!180087 m!3188369))

(declare-fun m!3188371 () Bool)

(assert (=> bm!180083 m!3188371))

(assert (=> bm!180084 m!3188303))

(declare-fun m!3188373 () Bool)

(assert (=> b!2765414 m!3188373))

(declare-fun m!3188375 () Bool)

(assert (=> b!2765414 m!3188375))

(assert (=> b!2765414 m!3188309))

(assert (=> b!2765414 m!3188201))

(declare-fun m!3188377 () Bool)

(assert (=> b!2765414 m!3188377))

(declare-fun m!3188379 () Bool)

(assert (=> b!2765414 m!3188379))

(declare-fun m!3188381 () Bool)

(assert (=> b!2765414 m!3188381))

(declare-fun m!3188383 () Bool)

(assert (=> b!2765414 m!3188383))

(declare-fun m!3188385 () Bool)

(assert (=> b!2765414 m!3188385))

(assert (=> b!2765414 m!3188381))

(declare-fun m!3188387 () Bool)

(assert (=> b!2765414 m!3188387))

(declare-fun m!3188389 () Bool)

(assert (=> b!2765414 m!3188389))

(assert (=> b!2765414 m!3188303))

(declare-fun m!3188391 () Bool)

(assert (=> b!2765414 m!3188391))

(declare-fun m!3188393 () Bool)

(assert (=> b!2765414 m!3188393))

(assert (=> b!2765414 m!3188373))

(assert (=> b!2765414 m!3188377))

(declare-fun m!3188395 () Bool)

(assert (=> b!2765414 m!3188395))

(declare-fun m!3188397 () Bool)

(assert (=> b!2765414 m!3188397))

(declare-fun m!3188399 () Bool)

(assert (=> b!2765414 m!3188399))

(declare-fun m!3188401 () Bool)

(assert (=> b!2765414 m!3188401))

(assert (=> b!2765414 m!3188195))

(declare-fun m!3188403 () Bool)

(assert (=> b!2765414 m!3188403))

(assert (=> b!2765414 m!3188391))

(declare-fun m!3188405 () Bool)

(assert (=> b!2765414 m!3188405))

(declare-fun m!3188407 () Bool)

(assert (=> b!2765414 m!3188407))

(declare-fun m!3188409 () Bool)

(assert (=> bm!180078 m!3188409))

(declare-fun m!3188411 () Bool)

(assert (=> bm!180079 m!3188411))

(assert (=> bm!180082 m!3188403))

(declare-fun m!3188413 () Bool)

(assert (=> bm!180081 m!3188413))

(declare-fun m!3188415 () Bool)

(assert (=> bm!180080 m!3188415))

(declare-fun m!3188417 () Bool)

(assert (=> d!802961 m!3188417))

(declare-fun m!3188419 () Bool)

(assert (=> d!802961 m!3188419))

(assert (=> d!802961 m!3188195))

(declare-fun m!3188421 () Bool)

(assert (=> d!802961 m!3188421))

(assert (=> d!802961 m!3188155))

(declare-fun m!3188423 () Bool)

(assert (=> d!802961 m!3188423))

(assert (=> d!802961 m!3188195))

(assert (=> d!802961 m!3188155))

(declare-fun m!3188425 () Bool)

(assert (=> d!802961 m!3188425))

(assert (=> d!802961 m!3188195))

(declare-fun m!3188427 () Bool)

(assert (=> d!802961 m!3188427))

(assert (=> d!802961 m!3188195))

(declare-fun m!3188429 () Bool)

(assert (=> d!802961 m!3188429))

(declare-fun m!3188431 () Bool)

(assert (=> bm!180086 m!3188431))

(assert (=> b!2765420 m!3188195))

(assert (=> bm!180039 d!802961))

(declare-fun d!802963 () Bool)

(assert (=> d!802963 (= (isEmpty!18084 (_1!18852 lt!983198)) ((_ is Nil!31935) (_1!18852 lt!983198)))))

(assert (=> b!2765308 d!802963))

(declare-fun b!2765422 () Bool)

(declare-fun e!1743600 () Int)

(assert (=> b!2765422 (= e!1743600 0)))

(declare-fun c!448561 () Bool)

(declare-fun call!180093 () Bool)

(declare-fun lt!983460 () List!32035)

(declare-fun lt!983459 () List!32035)

(declare-fun lt!983450 () List!32035)

(declare-fun bm!180088 () Bool)

(declare-fun lt!983463 () List!32035)

(assert (=> bm!180088 (= call!180093 (isPrefix!2543 (ite c!448561 lt!983459 lt!983450) (ite c!448561 lt!983463 lt!983460)))))

(declare-fun b!2765423 () Bool)

(assert (=> b!2765423 (= e!1743600 0)))

(declare-fun bm!180089 () Bool)

(declare-fun lt!983465 () tuple2!32030)

(declare-fun call!180102 () List!32035)

(assert (=> bm!180089 (= call!180102 (list!12059 (ite c!448561 input!5495 (_1!18858 lt!983465))))))

(declare-fun b!2765424 () Bool)

(declare-fun e!1743602 () Int)

(declare-fun e!1743605 () Int)

(assert (=> b!2765424 (= e!1743602 e!1743605)))

(assert (=> b!2765424 (= c!448561 (= 0 lt!983200))))

(declare-fun bm!180090 () Bool)

(declare-fun c!448563 () Bool)

(assert (=> bm!180090 (= c!448563 c!448561)))

(declare-fun lt!983468 () List!32035)

(declare-fun call!180095 () Unit!45983)

(declare-fun lt!983466 () List!32035)

(declare-fun e!1743603 () List!32035)

(assert (=> bm!180090 (= call!180095 (lemmaIsPrefixSameLengthThenSameList!451 (ite c!448561 lt!983466 lt!983468) Nil!31935 e!1743603))))

(declare-fun b!2765425 () Bool)

(assert (=> b!2765425 (= e!1743602 0)))

(declare-fun bm!180091 () Bool)

(declare-fun call!180097 () Bool)

(assert (=> bm!180091 (= call!180097 (nullableZipper!623 z!3597))))

(declare-fun b!2765426 () Bool)

(declare-fun c!448559 () Bool)

(assert (=> b!2765426 (= c!448559 call!180097)))

(declare-fun lt!983453 () Unit!45983)

(declare-fun lt!983474 () Unit!45983)

(assert (=> b!2765426 (= lt!983453 lt!983474)))

(declare-fun lt!983475 () C!16296)

(declare-fun lt!983452 () List!32035)

(declare-fun lt!983472 () List!32035)

(assert (=> b!2765426 (= (++!7905 (++!7905 Nil!31935 (Cons!31935 lt!983475 Nil!31935)) lt!983452) lt!983472)))

(assert (=> b!2765426 (= lt!983474 (lemmaMoveElementToOtherListKeepsConcatEq!860 Nil!31935 lt!983475 lt!983452 lt!983472))))

(assert (=> b!2765426 (= lt!983472 (list!12059 input!5495))))

(assert (=> b!2765426 (= lt!983452 (tail!4377 lt!983252))))

(assert (=> b!2765426 (= lt!983475 (apply!7481 input!5495 0))))

(declare-fun lt!983473 () Unit!45983)

(declare-fun lt!983470 () Unit!45983)

(assert (=> b!2765426 (= lt!983473 lt!983470)))

(declare-fun lt!983447 () List!32035)

(assert (=> b!2765426 (isPrefix!2543 (++!7905 Nil!31935 (Cons!31935 (head!6139 (getSuffix!1227 lt!983447 Nil!31935)) Nil!31935)) lt!983447)))

(assert (=> b!2765426 (= lt!983470 (lemmaAddHeadSuffixToPrefixStillPrefix!448 Nil!31935 lt!983447))))

(assert (=> b!2765426 (= lt!983447 (list!12059 input!5495))))

(declare-fun lt!983469 () Unit!45983)

(declare-fun e!1743601 () Unit!45983)

(assert (=> b!2765426 (= lt!983469 e!1743601)))

(declare-fun c!448562 () Bool)

(assert (=> b!2765426 (= c!448562 (= (size!24708 Nil!31935) (size!24709 input!5495)))))

(declare-fun lt!983443 () Unit!45983)

(declare-fun lt!983456 () Unit!45983)

(assert (=> b!2765426 (= lt!983443 lt!983456)))

(declare-fun lt!983480 () List!32035)

(assert (=> b!2765426 (<= (size!24708 Nil!31935) (size!24708 lt!983480))))

(assert (=> b!2765426 (= lt!983456 (lemmaIsPrefixThenSmallerEqSize!251 Nil!31935 lt!983480))))

(assert (=> b!2765426 (= lt!983480 (list!12059 input!5495))))

(declare-fun lt!983454 () Unit!45983)

(declare-fun lt!983455 () Unit!45983)

(assert (=> b!2765426 (= lt!983454 lt!983455)))

(declare-fun lt!983451 () List!32035)

(assert (=> b!2765426 (= (head!6139 (drop!1697 lt!983451 0)) (apply!7482 lt!983451 0))))

(assert (=> b!2765426 (= lt!983455 (lemmaDropApply!903 lt!983451 0))))

(assert (=> b!2765426 (= lt!983451 (list!12059 input!5495))))

(declare-fun lt!983446 () Unit!45983)

(declare-fun lt!983442 () Unit!45983)

(assert (=> b!2765426 (= lt!983446 lt!983442)))

(declare-fun lt!983445 () List!32035)

(declare-fun lt!983471 () List!32035)

(assert (=> b!2765426 (and (= lt!983445 Nil!31935) (= lt!983471 lt!983252))))

(assert (=> b!2765426 (= lt!983442 (lemmaConcatSameAndSameSizesThenSameLists!329 lt!983445 lt!983471 Nil!31935 lt!983252))))

(assert (=> b!2765426 (= lt!983471 (list!12059 (_2!18858 lt!983465)))))

(assert (=> b!2765426 (= lt!983445 call!180102)))

(assert (=> b!2765426 (= lt!983465 (splitAt!102 input!5495 0))))

(declare-fun e!1743604 () Int)

(assert (=> b!2765426 (= e!1743605 e!1743604)))

(declare-fun bm!180092 () Bool)

(declare-fun call!180094 () List!32035)

(assert (=> bm!180092 (= call!180094 (tail!4377 lt!983252))))

(declare-fun bm!180093 () Bool)

(declare-fun call!180099 () List!32035)

(declare-fun call!180096 () C!16296)

(assert (=> bm!180093 (= call!180099 (++!7905 Nil!31935 (Cons!31935 call!180096 Nil!31935)))))

(declare-fun b!2765427 () Bool)

(declare-fun c!448558 () Bool)

(assert (=> b!2765427 (= c!448558 call!180097)))

(declare-fun lt!983477 () Unit!45983)

(declare-fun lt!983441 () Unit!45983)

(assert (=> b!2765427 (= lt!983477 lt!983441)))

(assert (=> b!2765427 (= lt!983466 Nil!31935)))

(assert (=> b!2765427 (= lt!983441 call!180095)))

(assert (=> b!2765427 (= lt!983466 call!180102)))

(declare-fun lt!983458 () Unit!45983)

(declare-fun lt!983444 () Unit!45983)

(assert (=> b!2765427 (= lt!983458 lt!983444)))

(assert (=> b!2765427 call!180093))

(declare-fun call!180098 () Unit!45983)

(assert (=> b!2765427 (= lt!983444 call!180098)))

(assert (=> b!2765427 (= lt!983463 call!180102)))

(assert (=> b!2765427 (= lt!983459 call!180102)))

(assert (=> b!2765427 (= e!1743605 e!1743600)))

(declare-fun b!2765428 () Bool)

(declare-fun lt!983467 () Int)

(assert (=> b!2765428 (= e!1743604 (ite (= lt!983467 0) 0 lt!983467))))

(declare-fun call!180100 () Int)

(assert (=> b!2765428 (= lt!983467 call!180100)))

(declare-fun b!2765429 () Bool)

(assert (=> b!2765429 (= e!1743604 call!180100)))

(declare-fun bm!180095 () Bool)

(assert (=> bm!180095 (= call!180098 (lemmaIsPrefixRefl!1669 (ite c!448561 lt!983459 lt!983450) (ite c!448561 lt!983463 lt!983460)))))

(declare-fun bm!180096 () Bool)

(declare-fun call!180101 () (InoxSet Context!4574))

(assert (=> bm!180096 (= call!180101 (derivationStepZipper!358 z!3597 call!180096))))

(declare-fun d!802965 () Bool)

(declare-fun lt!983478 () Int)

(assert (=> d!802965 (= (size!24708 (_1!18852 (findLongestMatchInnerZipper!13 z!3597 Nil!31935 0 lt!983252 (list!12059 input!5495) lt!983200))) lt!983478)))

(assert (=> d!802965 (= lt!983478 e!1743602)))

(declare-fun c!448560 () Bool)

(assert (=> d!802965 (= c!448560 (lostCauseZipper!431 z!3597))))

(declare-fun lt!983479 () Unit!45983)

(declare-fun Unit!45997 () Unit!45983)

(assert (=> d!802965 (= lt!983479 Unit!45997)))

(assert (=> d!802965 (= (getSuffix!1227 (list!12059 input!5495) Nil!31935) lt!983252)))

(declare-fun lt!983449 () Unit!45983)

(declare-fun lt!983461 () Unit!45983)

(assert (=> d!802965 (= lt!983449 lt!983461)))

(declare-fun lt!983462 () List!32035)

(assert (=> d!802965 (= lt!983252 lt!983462)))

(assert (=> d!802965 (= lt!983461 (lemmaSamePrefixThenSameSuffix!1129 Nil!31935 lt!983252 Nil!31935 lt!983462 (list!12059 input!5495)))))

(assert (=> d!802965 (= lt!983462 (getSuffix!1227 (list!12059 input!5495) Nil!31935))))

(declare-fun lt!983457 () Unit!45983)

(declare-fun lt!983464 () Unit!45983)

(assert (=> d!802965 (= lt!983457 lt!983464)))

(assert (=> d!802965 (isPrefix!2543 Nil!31935 (++!7905 Nil!31935 lt!983252))))

(assert (=> d!802965 (= lt!983464 (lemmaConcatTwoListThenFirstIsPrefix!1655 Nil!31935 lt!983252))))

(assert (=> d!802965 (= (++!7905 Nil!31935 lt!983252) (list!12059 input!5495))))

(assert (=> d!802965 (= (findLongestMatchInnerZipperFast!27 z!3597 Nil!31935 0 lt!983252 input!5495 lt!983200) lt!983478)))

(declare-fun bm!180094 () Bool)

(assert (=> bm!180094 (= call!180096 (apply!7481 input!5495 0))))

(declare-fun b!2765430 () Bool)

(assert (=> b!2765430 (= e!1743603 (list!12059 input!5495))))

(declare-fun bm!180097 () Bool)

(assert (=> bm!180097 (= call!180100 (findLongestMatchInnerZipperFast!27 call!180101 call!180099 (+ 0 1) call!180094 input!5495 lt!983200))))

(declare-fun b!2765431 () Bool)

(declare-fun Unit!45998 () Unit!45983)

(assert (=> b!2765431 (= e!1743601 Unit!45998)))

(declare-fun b!2765432 () Bool)

(declare-fun Unit!45999 () Unit!45983)

(assert (=> b!2765432 (= e!1743601 Unit!45999)))

(assert (=> b!2765432 (= lt!983450 (list!12059 input!5495))))

(assert (=> b!2765432 (= lt!983460 (list!12059 input!5495))))

(declare-fun lt!983448 () Unit!45983)

(assert (=> b!2765432 (= lt!983448 call!180098)))

(assert (=> b!2765432 call!180093))

(declare-fun lt!983476 () Unit!45983)

(assert (=> b!2765432 (= lt!983476 lt!983448)))

(assert (=> b!2765432 (= lt!983468 (list!12059 input!5495))))

(declare-fun lt!983440 () Unit!45983)

(assert (=> b!2765432 (= lt!983440 call!180095)))

(assert (=> b!2765432 (= lt!983468 Nil!31935)))

(declare-fun lt!983439 () Unit!45983)

(assert (=> b!2765432 (= lt!983439 lt!983440)))

(assert (=> b!2765432 false))

(declare-fun b!2765433 () Bool)

(assert (=> b!2765433 (= e!1743603 call!180102)))

(assert (= (and d!802965 c!448560) b!2765425))

(assert (= (and d!802965 (not c!448560)) b!2765424))

(assert (= (and b!2765424 c!448561) b!2765427))

(assert (= (and b!2765424 (not c!448561)) b!2765426))

(assert (= (and b!2765427 c!448558) b!2765422))

(assert (= (and b!2765427 (not c!448558)) b!2765423))

(assert (= (and b!2765426 c!448562) b!2765432))

(assert (= (and b!2765426 (not c!448562)) b!2765431))

(assert (= (and b!2765426 c!448559) b!2765428))

(assert (= (and b!2765426 (not c!448559)) b!2765429))

(assert (= (or b!2765428 b!2765429) bm!180092))

(assert (= (or b!2765428 b!2765429) bm!180094))

(assert (= (or b!2765428 b!2765429) bm!180096))

(assert (= (or b!2765428 b!2765429) bm!180093))

(assert (= (or b!2765428 b!2765429) bm!180097))

(assert (= (or b!2765427 b!2765432) bm!180095))

(assert (= (or b!2765427 b!2765432) bm!180088))

(assert (= (or b!2765427 b!2765426) bm!180089))

(assert (= (or b!2765427 b!2765426) bm!180091))

(assert (= (or b!2765427 b!2765432) bm!180090))

(assert (= (and bm!180090 c!448563) b!2765433))

(assert (= (and bm!180090 (not c!448563)) b!2765430))

(declare-fun m!3188433 () Bool)

(assert (=> bm!180095 m!3188433))

(assert (=> b!2765430 m!3188195))

(declare-fun m!3188435 () Bool)

(assert (=> bm!180097 m!3188435))

(declare-fun m!3188437 () Bool)

(assert (=> bm!180093 m!3188437))

(assert (=> bm!180094 m!3188161))

(declare-fun m!3188439 () Bool)

(assert (=> b!2765426 m!3188439))

(declare-fun m!3188441 () Bool)

(assert (=> b!2765426 m!3188441))

(assert (=> b!2765426 m!3188177))

(assert (=> b!2765426 m!3188201))

(declare-fun m!3188443 () Bool)

(assert (=> b!2765426 m!3188443))

(declare-fun m!3188445 () Bool)

(assert (=> b!2765426 m!3188445))

(declare-fun m!3188447 () Bool)

(assert (=> b!2765426 m!3188447))

(declare-fun m!3188449 () Bool)

(assert (=> b!2765426 m!3188449))

(assert (=> b!2765426 m!3188163))

(assert (=> b!2765426 m!3188447))

(declare-fun m!3188451 () Bool)

(assert (=> b!2765426 m!3188451))

(declare-fun m!3188453 () Bool)

(assert (=> b!2765426 m!3188453))

(assert (=> b!2765426 m!3188161))

(declare-fun m!3188455 () Bool)

(assert (=> b!2765426 m!3188455))

(declare-fun m!3188457 () Bool)

(assert (=> b!2765426 m!3188457))

(assert (=> b!2765426 m!3188439))

(assert (=> b!2765426 m!3188443))

(declare-fun m!3188459 () Bool)

(assert (=> b!2765426 m!3188459))

(declare-fun m!3188461 () Bool)

(assert (=> b!2765426 m!3188461))

(declare-fun m!3188463 () Bool)

(assert (=> b!2765426 m!3188463))

(declare-fun m!3188465 () Bool)

(assert (=> b!2765426 m!3188465))

(assert (=> b!2765426 m!3188195))

(assert (=> b!2765426 m!3188169))

(assert (=> b!2765426 m!3188455))

(declare-fun m!3188467 () Bool)

(assert (=> b!2765426 m!3188467))

(declare-fun m!3188469 () Bool)

(assert (=> b!2765426 m!3188469))

(declare-fun m!3188471 () Bool)

(assert (=> bm!180088 m!3188471))

(declare-fun m!3188473 () Bool)

(assert (=> bm!180089 m!3188473))

(assert (=> bm!180092 m!3188169))

(assert (=> bm!180091 m!3188227))

(declare-fun m!3188475 () Bool)

(assert (=> bm!180090 m!3188475))

(assert (=> d!802965 m!3188199))

(declare-fun m!3188477 () Bool)

(assert (=> d!802965 m!3188477))

(assert (=> d!802965 m!3188195))

(declare-fun m!3188479 () Bool)

(assert (=> d!802965 m!3188479))

(assert (=> d!802965 m!3188225))

(declare-fun m!3188481 () Bool)

(assert (=> d!802965 m!3188481))

(assert (=> d!802965 m!3188195))

(assert (=> d!802965 m!3188225))

(assert (=> d!802965 m!3188217))

(assert (=> d!802965 m!3188195))

(declare-fun m!3188483 () Bool)

(assert (=> d!802965 m!3188483))

(assert (=> d!802965 m!3188195))

(declare-fun m!3188485 () Bool)

(assert (=> d!802965 m!3188485))

(declare-fun m!3188487 () Bool)

(assert (=> bm!180096 m!3188487))

(assert (=> b!2765432 m!3188195))

(assert (=> b!2765350 d!802965))

(declare-fun d!802967 () Bool)

(declare-fun validCacheMapDown!390 (MutableMap!3653) Bool)

(assert (=> d!802967 (= (valid!2920 (_3!2842 lt!983237)) (validCacheMapDown!390 (cache!3796 (_3!2842 lt!983237))))))

(declare-fun bs!500270 () Bool)

(assert (= bs!500270 d!802967))

(declare-fun m!3188489 () Bool)

(assert (=> bs!500270 m!3188489))

(assert (=> b!2765323 d!802967))

(declare-fun d!802969 () Bool)

(declare-fun validCacheMapUp!359 (MutableMap!3652) Bool)

(assert (=> d!802969 (= (valid!2919 (ite c!448518 (_2!18857 lt!983225) (_2!18857 lt!983232))) (validCacheMapUp!359 (cache!3795 (ite c!448518 (_2!18857 lt!983225) (_2!18857 lt!983232)))))))

(declare-fun bs!500271 () Bool)

(assert (= bs!500271 d!802969))

(declare-fun m!3188491 () Bool)

(assert (=> bs!500271 m!3188491))

(assert (=> bm!180037 d!802969))

(assert (=> bm!180043 d!802957))

(declare-fun d!802971 () Bool)

(declare-fun c!448566 () Bool)

(assert (=> d!802971 (= c!448566 ((_ is Node!9951) (c!448533 input!5495)))))

(declare-fun e!1743610 () Bool)

(assert (=> d!802971 (= (inv!43370 (c!448533 input!5495)) e!1743610)))

(declare-fun b!2765440 () Bool)

(declare-fun inv!43371 (Conc!9951) Bool)

(assert (=> b!2765440 (= e!1743610 (inv!43371 (c!448533 input!5495)))))

(declare-fun b!2765441 () Bool)

(declare-fun e!1743611 () Bool)

(assert (=> b!2765441 (= e!1743610 e!1743611)))

(declare-fun res!1157268 () Bool)

(assert (=> b!2765441 (= res!1157268 (not ((_ is Leaf!15154) (c!448533 input!5495))))))

(assert (=> b!2765441 (=> res!1157268 e!1743611)))

(declare-fun b!2765442 () Bool)

(declare-fun inv!43372 (Conc!9951) Bool)

(assert (=> b!2765442 (= e!1743611 (inv!43372 (c!448533 input!5495)))))

(assert (= (and d!802971 c!448566) b!2765440))

(assert (= (and d!802971 (not c!448566)) b!2765441))

(assert (= (and b!2765441 (not res!1157268)) b!2765442))

(declare-fun m!3188493 () Bool)

(assert (=> b!2765440 m!3188493))

(declare-fun m!3188495 () Bool)

(assert (=> b!2765442 m!3188495))

(assert (=> b!2765348 d!802971))

(declare-fun d!802973 () Bool)

(assert (=> d!802973 (= (array_inv!4255 (_keys!4047 (v!33545 (underlying!7697 (v!33546 (underlying!7698 (cache!3796 cacheDown!939))))))) (bvsge (size!24706 (_keys!4047 (v!33545 (underlying!7697 (v!33546 (underlying!7698 (cache!3796 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2765311 d!802973))

(declare-fun d!802975 () Bool)

(assert (=> d!802975 (= (array_inv!4256 (_values!4028 (v!33545 (underlying!7697 (v!33546 (underlying!7698 (cache!3796 cacheDown!939))))))) (bvsge (size!24707 (_values!4028 (v!33545 (underlying!7697 (v!33546 (underlying!7698 (cache!3796 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2765311 d!802975))

(declare-fun d!802977 () Bool)

(assert (=> d!802977 (= lt!983252 Nil!31935)))

(declare-fun lt!983483 () Unit!45983)

(declare-fun choose!16213 (List!32035 List!32035 List!32035) Unit!45983)

(assert (=> d!802977 (= lt!983483 (choose!16213 lt!983252 Nil!31935 lt!983252))))

(assert (=> d!802977 (isPrefix!2543 lt!983252 lt!983252)))

(assert (=> d!802977 (= (lemmaIsPrefixSameLengthThenSameList!451 lt!983252 Nil!31935 lt!983252) lt!983483)))

(declare-fun bs!500272 () Bool)

(assert (= bs!500272 d!802977))

(declare-fun m!3188497 () Bool)

(assert (=> bs!500272 m!3188497))

(assert (=> bs!500272 m!3188183))

(assert (=> bm!180045 d!802977))

(declare-fun b!2765451 () Bool)

(declare-fun e!1743617 () List!32035)

(assert (=> b!2765451 (= e!1743617 (Cons!31935 (head!6139 lt!983234) Nil!31935))))

(declare-fun b!2765452 () Bool)

(assert (=> b!2765452 (= e!1743617 (Cons!31935 (h!37355 Nil!31935) (++!7905 (t!228155 Nil!31935) (Cons!31935 (head!6139 lt!983234) Nil!31935))))))

(declare-fun b!2765454 () Bool)

(declare-fun e!1743616 () Bool)

(declare-fun lt!983486 () List!32035)

(assert (=> b!2765454 (= e!1743616 (or (not (= (Cons!31935 (head!6139 lt!983234) Nil!31935) Nil!31935)) (= lt!983486 Nil!31935)))))

(declare-fun d!802979 () Bool)

(assert (=> d!802979 e!1743616))

(declare-fun res!1157274 () Bool)

(assert (=> d!802979 (=> (not res!1157274) (not e!1743616))))

(declare-fun content!4497 (List!32035) (InoxSet C!16296))

(assert (=> d!802979 (= res!1157274 (= (content!4497 lt!983486) ((_ map or) (content!4497 Nil!31935) (content!4497 (Cons!31935 (head!6139 lt!983234) Nil!31935)))))))

(assert (=> d!802979 (= lt!983486 e!1743617)))

(declare-fun c!448569 () Bool)

(assert (=> d!802979 (= c!448569 ((_ is Nil!31935) Nil!31935))))

(assert (=> d!802979 (= (++!7905 Nil!31935 (Cons!31935 (head!6139 lt!983234) Nil!31935)) lt!983486)))

(declare-fun b!2765453 () Bool)

(declare-fun res!1157273 () Bool)

(assert (=> b!2765453 (=> (not res!1157273) (not e!1743616))))

(assert (=> b!2765453 (= res!1157273 (= (size!24708 lt!983486) (+ (size!24708 Nil!31935) (size!24708 (Cons!31935 (head!6139 lt!983234) Nil!31935)))))))

(assert (= (and d!802979 c!448569) b!2765451))

(assert (= (and d!802979 (not c!448569)) b!2765452))

(assert (= (and d!802979 res!1157274) b!2765453))

(assert (= (and b!2765453 res!1157273) b!2765454))

(declare-fun m!3188499 () Bool)

(assert (=> b!2765452 m!3188499))

(declare-fun m!3188501 () Bool)

(assert (=> d!802979 m!3188501))

(declare-fun m!3188503 () Bool)

(assert (=> d!802979 m!3188503))

(declare-fun m!3188505 () Bool)

(assert (=> d!802979 m!3188505))

(declare-fun m!3188507 () Bool)

(assert (=> b!2765453 m!3188507))

(assert (=> b!2765453 m!3188163))

(declare-fun m!3188509 () Bool)

(assert (=> b!2765453 m!3188509))

(assert (=> b!2765353 d!802979))

(declare-fun b!2765455 () Bool)

(declare-fun e!1743619 () List!32035)

(assert (=> b!2765455 (= e!1743619 lt!983254)))

(declare-fun b!2765456 () Bool)

(assert (=> b!2765456 (= e!1743619 (Cons!31935 (h!37355 lt!983260) (++!7905 (t!228155 lt!983260) lt!983254)))))

(declare-fun b!2765458 () Bool)

(declare-fun e!1743618 () Bool)

(declare-fun lt!983487 () List!32035)

(assert (=> b!2765458 (= e!1743618 (or (not (= lt!983254 Nil!31935)) (= lt!983487 lt!983260)))))

(declare-fun d!802981 () Bool)

(assert (=> d!802981 e!1743618))

(declare-fun res!1157276 () Bool)

(assert (=> d!802981 (=> (not res!1157276) (not e!1743618))))

(assert (=> d!802981 (= res!1157276 (= (content!4497 lt!983487) ((_ map or) (content!4497 lt!983260) (content!4497 lt!983254))))))

(assert (=> d!802981 (= lt!983487 e!1743619)))

(declare-fun c!448570 () Bool)

(assert (=> d!802981 (= c!448570 ((_ is Nil!31935) lt!983260))))

(assert (=> d!802981 (= (++!7905 lt!983260 lt!983254) lt!983487)))

(declare-fun b!2765457 () Bool)

(declare-fun res!1157275 () Bool)

(assert (=> b!2765457 (=> (not res!1157275) (not e!1743618))))

(assert (=> b!2765457 (= res!1157275 (= (size!24708 lt!983487) (+ (size!24708 lt!983260) (size!24708 lt!983254))))))

(assert (= (and d!802981 c!448570) b!2765455))

(assert (= (and d!802981 (not c!448570)) b!2765456))

(assert (= (and d!802981 res!1157276) b!2765457))

(assert (= (and b!2765457 res!1157275) b!2765458))

(declare-fun m!3188511 () Bool)

(assert (=> b!2765456 m!3188511))

(declare-fun m!3188513 () Bool)

(assert (=> d!802981 m!3188513))

(declare-fun m!3188515 () Bool)

(assert (=> d!802981 m!3188515))

(declare-fun m!3188517 () Bool)

(assert (=> d!802981 m!3188517))

(declare-fun m!3188519 () Bool)

(assert (=> b!2765457 m!3188519))

(assert (=> b!2765457 m!3188319))

(declare-fun m!3188521 () Bool)

(assert (=> b!2765457 m!3188521))

(assert (=> b!2765353 d!802981))

(declare-fun b!2765477 () Bool)

(declare-fun e!1743634 () Int)

(declare-fun call!180105 () Int)

(assert (=> b!2765477 (= e!1743634 (- call!180105 0))))

(declare-fun b!2765478 () Bool)

(declare-fun e!1743633 () List!32035)

(assert (=> b!2765478 (= e!1743633 lt!983252)))

(declare-fun b!2765479 () Bool)

(assert (=> b!2765479 (= e!1743634 0)))

(declare-fun bm!180100 () Bool)

(assert (=> bm!180100 (= call!180105 (size!24708 lt!983252))))

(declare-fun d!802983 () Bool)

(declare-fun e!1743632 () Bool)

(assert (=> d!802983 e!1743632))

(declare-fun res!1157279 () Bool)

(assert (=> d!802983 (=> (not res!1157279) (not e!1743632))))

(declare-fun lt!983490 () List!32035)

(assert (=> d!802983 (= res!1157279 (= ((_ map implies) (content!4497 lt!983490) (content!4497 lt!983252)) ((as const (InoxSet C!16296)) true)))))

(declare-fun e!1743630 () List!32035)

(assert (=> d!802983 (= lt!983490 e!1743630)))

(declare-fun c!448581 () Bool)

(assert (=> d!802983 (= c!448581 ((_ is Nil!31935) lt!983252))))

(assert (=> d!802983 (= (drop!1697 lt!983252 0) lt!983490)))

(declare-fun b!2765480 () Bool)

(assert (=> b!2765480 (= e!1743630 e!1743633)))

(declare-fun c!448579 () Bool)

(assert (=> b!2765480 (= c!448579 (<= 0 0))))

(declare-fun b!2765481 () Bool)

(assert (=> b!2765481 (= e!1743630 Nil!31935)))

(declare-fun b!2765482 () Bool)

(declare-fun e!1743631 () Int)

(assert (=> b!2765482 (= e!1743631 e!1743634)))

(declare-fun c!448580 () Bool)

(assert (=> b!2765482 (= c!448580 (>= 0 call!180105))))

(declare-fun b!2765483 () Bool)

(assert (=> b!2765483 (= e!1743632 (= (size!24708 lt!983490) e!1743631))))

(declare-fun c!448582 () Bool)

(assert (=> b!2765483 (= c!448582 (<= 0 0))))

(declare-fun b!2765484 () Bool)

(assert (=> b!2765484 (= e!1743633 (drop!1697 (t!228155 lt!983252) (- 0 1)))))

(declare-fun b!2765485 () Bool)

(assert (=> b!2765485 (= e!1743631 call!180105)))

(assert (= (and d!802983 c!448581) b!2765481))

(assert (= (and d!802983 (not c!448581)) b!2765480))

(assert (= (and b!2765480 c!448579) b!2765478))

(assert (= (and b!2765480 (not c!448579)) b!2765484))

(assert (= (and d!802983 res!1157279) b!2765483))

(assert (= (and b!2765483 c!448582) b!2765485))

(assert (= (and b!2765483 (not c!448582)) b!2765482))

(assert (= (and b!2765482 c!448580) b!2765479))

(assert (= (and b!2765482 (not c!448580)) b!2765477))

(assert (= (or b!2765485 b!2765482 b!2765477) bm!180100))

(assert (=> bm!180100 m!3188171))

(declare-fun m!3188523 () Bool)

(assert (=> d!802983 m!3188523))

(declare-fun m!3188525 () Bool)

(assert (=> d!802983 m!3188525))

(declare-fun m!3188527 () Bool)

(assert (=> b!2765483 m!3188527))

(declare-fun m!3188529 () Bool)

(assert (=> b!2765484 m!3188529))

(assert (=> b!2765353 d!802983))

(declare-fun d!802985 () Bool)

(assert (=> d!802985 (= (head!6139 (drop!1697 lt!983252 0)) (apply!7482 lt!983252 0))))

(declare-fun lt!983493 () Unit!45983)

(declare-fun choose!16214 (List!32035 Int) Unit!45983)

(assert (=> d!802985 (= lt!983493 (choose!16214 lt!983252 0))))

(declare-fun e!1743637 () Bool)

(assert (=> d!802985 e!1743637))

(declare-fun res!1157282 () Bool)

(assert (=> d!802985 (=> (not res!1157282) (not e!1743637))))

(assert (=> d!802985 (= res!1157282 (>= 0 0))))

(assert (=> d!802985 (= (lemmaDropApply!903 lt!983252 0) lt!983493)))

(declare-fun b!2765488 () Bool)

(assert (=> b!2765488 (= e!1743637 (< 0 (size!24708 lt!983252)))))

(assert (= (and d!802985 res!1157282) b!2765488))

(assert (=> d!802985 m!3188159))

(assert (=> d!802985 m!3188159))

(assert (=> d!802985 m!3188179))

(assert (=> d!802985 m!3188157))

(declare-fun m!3188531 () Bool)

(assert (=> d!802985 m!3188531))

(assert (=> b!2765488 m!3188171))

(assert (=> b!2765353 d!802985))

(declare-fun d!802987 () Bool)

(declare-fun list!12060 (Conc!9951) List!32035)

(assert (=> d!802987 (= (list!12059 (_2!18858 lt!983196)) (list!12060 (c!448533 (_2!18858 lt!983196))))))

(declare-fun bs!500273 () Bool)

(assert (= bs!500273 d!802987))

(declare-fun m!3188533 () Bool)

(assert (=> bs!500273 m!3188533))

(assert (=> b!2765353 d!802987))

(declare-fun b!2765489 () Bool)

(declare-fun e!1743639 () List!32035)

(assert (=> b!2765489 (= e!1743639 (Cons!31935 lt!983255 Nil!31935))))

(declare-fun b!2765490 () Bool)

(assert (=> b!2765490 (= e!1743639 (Cons!31935 (h!37355 Nil!31935) (++!7905 (t!228155 Nil!31935) (Cons!31935 lt!983255 Nil!31935))))))

(declare-fun b!2765492 () Bool)

(declare-fun e!1743638 () Bool)

(declare-fun lt!983494 () List!32035)

(assert (=> b!2765492 (= e!1743638 (or (not (= (Cons!31935 lt!983255 Nil!31935) Nil!31935)) (= lt!983494 Nil!31935)))))

(declare-fun d!802989 () Bool)

(assert (=> d!802989 e!1743638))

(declare-fun res!1157284 () Bool)

(assert (=> d!802989 (=> (not res!1157284) (not e!1743638))))

(assert (=> d!802989 (= res!1157284 (= (content!4497 lt!983494) ((_ map or) (content!4497 Nil!31935) (content!4497 (Cons!31935 lt!983255 Nil!31935)))))))

(assert (=> d!802989 (= lt!983494 e!1743639)))

(declare-fun c!448583 () Bool)

(assert (=> d!802989 (= c!448583 ((_ is Nil!31935) Nil!31935))))

(assert (=> d!802989 (= (++!7905 Nil!31935 (Cons!31935 lt!983255 Nil!31935)) lt!983494)))

(declare-fun b!2765491 () Bool)

(declare-fun res!1157283 () Bool)

(assert (=> b!2765491 (=> (not res!1157283) (not e!1743638))))

(assert (=> b!2765491 (= res!1157283 (= (size!24708 lt!983494) (+ (size!24708 Nil!31935) (size!24708 (Cons!31935 lt!983255 Nil!31935)))))))

(assert (= (and d!802989 c!448583) b!2765489))

(assert (= (and d!802989 (not c!448583)) b!2765490))

(assert (= (and d!802989 res!1157284) b!2765491))

(assert (= (and b!2765491 res!1157283) b!2765492))

(declare-fun m!3188535 () Bool)

(assert (=> b!2765490 m!3188535))

(declare-fun m!3188537 () Bool)

(assert (=> d!802989 m!3188537))

(assert (=> d!802989 m!3188503))

(declare-fun m!3188539 () Bool)

(assert (=> d!802989 m!3188539))

(declare-fun m!3188541 () Bool)

(assert (=> b!2765491 m!3188541))

(assert (=> b!2765491 m!3188163))

(declare-fun m!3188543 () Bool)

(assert (=> b!2765491 m!3188543))

(assert (=> b!2765353 d!802989))

(declare-fun d!802991 () Bool)

(assert (=> d!802991 (= (head!6139 lt!983234) (h!37355 lt!983234))))

(assert (=> b!2765353 d!802991))

(declare-fun d!802993 () Bool)

(assert (=> d!802993 (= (head!6139 (drop!1697 lt!983252 0)) (h!37355 (drop!1697 lt!983252 0)))))

(assert (=> b!2765353 d!802993))

(declare-fun d!802995 () Bool)

(assert (=> d!802995 (= (list!12059 (_1!18858 lt!983196)) (list!12060 (c!448533 (_1!18858 lt!983196))))))

(declare-fun bs!500274 () Bool)

(assert (= bs!500274 d!802995))

(declare-fun m!3188545 () Bool)

(assert (=> bs!500274 m!3188545))

(assert (=> b!2765353 d!802995))

(declare-fun d!802997 () Bool)

(declare-fun e!1743642 () Bool)

(assert (=> d!802997 e!1743642))

(declare-fun res!1157290 () Bool)

(assert (=> d!802997 (=> (not res!1157290) (not e!1743642))))

(declare-fun lt!983500 () tuple2!32030)

(declare-fun isBalanced!3033 (Conc!9951) Bool)

(assert (=> d!802997 (= res!1157290 (isBalanced!3033 (c!448533 (_1!18858 lt!983500))))))

(declare-datatypes ((tuple2!32032 0))(
  ( (tuple2!32033 (_1!18861 Conc!9951) (_2!18861 Conc!9951)) )
))
(declare-fun lt!983499 () tuple2!32032)

(assert (=> d!802997 (= lt!983500 (tuple2!32031 (BalanceConc!19517 (_1!18861 lt!983499)) (BalanceConc!19517 (_2!18861 lt!983499))))))

(declare-fun splitAt!103 (Conc!9951 Int) tuple2!32032)

(assert (=> d!802997 (= lt!983499 (splitAt!103 (c!448533 input!5495) 0))))

(assert (=> d!802997 (isBalanced!3033 (c!448533 input!5495))))

(assert (=> d!802997 (= (splitAt!102 input!5495 0) lt!983500)))

(declare-fun b!2765497 () Bool)

(declare-fun res!1157289 () Bool)

(assert (=> b!2765497 (=> (not res!1157289) (not e!1743642))))

(assert (=> b!2765497 (= res!1157289 (isBalanced!3033 (c!448533 (_2!18858 lt!983500))))))

(declare-fun b!2765498 () Bool)

(declare-fun splitAtIndex!48 (List!32035 Int) tuple2!32022)

(assert (=> b!2765498 (= e!1743642 (= (tuple2!32023 (list!12059 (_1!18858 lt!983500)) (list!12059 (_2!18858 lt!983500))) (splitAtIndex!48 (list!12059 input!5495) 0)))))

(assert (= (and d!802997 res!1157290) b!2765497))

(assert (= (and b!2765497 res!1157289) b!2765498))

(declare-fun m!3188547 () Bool)

(assert (=> d!802997 m!3188547))

(declare-fun m!3188549 () Bool)

(assert (=> d!802997 m!3188549))

(declare-fun m!3188551 () Bool)

(assert (=> d!802997 m!3188551))

(declare-fun m!3188553 () Bool)

(assert (=> b!2765497 m!3188553))

(declare-fun m!3188555 () Bool)

(assert (=> b!2765498 m!3188555))

(declare-fun m!3188557 () Bool)

(assert (=> b!2765498 m!3188557))

(assert (=> b!2765498 m!3188195))

(assert (=> b!2765498 m!3188195))

(declare-fun m!3188559 () Bool)

(assert (=> b!2765498 m!3188559))

(assert (=> b!2765353 d!802997))

(declare-fun d!802999 () Bool)

(declare-fun lt!983503 () Int)

(assert (=> d!802999 (>= lt!983503 0)))

(declare-fun e!1743645 () Int)

(assert (=> d!802999 (= lt!983503 e!1743645)))

(declare-fun c!448586 () Bool)

(assert (=> d!802999 (= c!448586 ((_ is Nil!31935) lt!983252))))

(assert (=> d!802999 (= (size!24708 lt!983252) lt!983503)))

(declare-fun b!2765503 () Bool)

(assert (=> b!2765503 (= e!1743645 0)))

(declare-fun b!2765504 () Bool)

(assert (=> b!2765504 (= e!1743645 (+ 1 (size!24708 (t!228155 lt!983252))))))

(assert (= (and d!802999 c!448586) b!2765503))

(assert (= (and d!802999 (not c!448586)) b!2765504))

(declare-fun m!3188561 () Bool)

(assert (=> b!2765504 m!3188561))

(assert (=> b!2765353 d!802999))

(declare-fun d!803001 () Bool)

(assert (=> d!803001 (and (= lt!983217 Nil!31935) (= lt!983238 lt!983252))))

(declare-fun lt!983506 () Unit!45983)

(declare-fun choose!16215 (List!32035 List!32035 List!32035 List!32035) Unit!45983)

(assert (=> d!803001 (= lt!983506 (choose!16215 lt!983217 lt!983238 Nil!31935 lt!983252))))

(assert (=> d!803001 (= (++!7905 lt!983217 lt!983238) (++!7905 Nil!31935 lt!983252))))

(assert (=> d!803001 (= (lemmaConcatSameAndSameSizesThenSameLists!329 lt!983217 lt!983238 Nil!31935 lt!983252) lt!983506)))

(declare-fun bs!500275 () Bool)

(assert (= bs!500275 d!803001))

(declare-fun m!3188563 () Bool)

(assert (=> bs!500275 m!3188563))

(declare-fun m!3188565 () Bool)

(assert (=> bs!500275 m!3188565))

(assert (=> bs!500275 m!3188225))

(assert (=> b!2765353 d!803001))

(declare-fun d!803003 () Bool)

(assert (=> d!803003 (= (++!7905 (++!7905 Nil!31935 (Cons!31935 lt!983255 Nil!31935)) lt!983254) lt!983252)))

(declare-fun lt!983509 () Unit!45983)

(declare-fun choose!16216 (List!32035 C!16296 List!32035 List!32035) Unit!45983)

(assert (=> d!803003 (= lt!983509 (choose!16216 Nil!31935 lt!983255 lt!983254 lt!983252))))

(assert (=> d!803003 (= (++!7905 Nil!31935 (Cons!31935 lt!983255 lt!983254)) lt!983252)))

(assert (=> d!803003 (= (lemmaMoveElementToOtherListKeepsConcatEq!860 Nil!31935 lt!983255 lt!983254 lt!983252) lt!983509)))

(declare-fun bs!500276 () Bool)

(assert (= bs!500276 d!803003))

(assert (=> bs!500276 m!3188251))

(assert (=> bs!500276 m!3188251))

(declare-fun m!3188567 () Bool)

(assert (=> bs!500276 m!3188567))

(declare-fun m!3188569 () Bool)

(assert (=> bs!500276 m!3188569))

(declare-fun m!3188571 () Bool)

(assert (=> bs!500276 m!3188571))

(assert (=> b!2765353 d!803003))

(declare-fun d!803005 () Bool)

(assert (=> d!803005 (<= (size!24708 Nil!31935) (size!24708 lt!983252))))

(declare-fun lt!983512 () Unit!45983)

(declare-fun choose!16217 (List!32035 List!32035) Unit!45983)

(assert (=> d!803005 (= lt!983512 (choose!16217 Nil!31935 lt!983252))))

(assert (=> d!803005 (isPrefix!2543 Nil!31935 lt!983252)))

(assert (=> d!803005 (= (lemmaIsPrefixThenSmallerEqSize!251 Nil!31935 lt!983252) lt!983512)))

(declare-fun bs!500277 () Bool)

(assert (= bs!500277 d!803005))

(assert (=> bs!500277 m!3188163))

(assert (=> bs!500277 m!3188171))

(declare-fun m!3188573 () Bool)

(assert (=> bs!500277 m!3188573))

(declare-fun m!3188575 () Bool)

(assert (=> bs!500277 m!3188575))

(assert (=> b!2765353 d!803005))

(declare-fun b!2765507 () Bool)

(declare-fun e!1743647 () Bool)

(assert (=> b!2765507 (= e!1743647 (isPrefix!2543 (tail!4377 (++!7905 Nil!31935 (Cons!31935 (head!6139 lt!983234) Nil!31935))) (tail!4377 lt!983252)))))

(declare-fun d!803007 () Bool)

(declare-fun e!1743646 () Bool)

(assert (=> d!803007 e!1743646))

(declare-fun res!1157291 () Bool)

(assert (=> d!803007 (=> res!1157291 e!1743646)))

(declare-fun lt!983513 () Bool)

(assert (=> d!803007 (= res!1157291 (not lt!983513))))

(declare-fun e!1743648 () Bool)

(assert (=> d!803007 (= lt!983513 e!1743648)))

(declare-fun res!1157293 () Bool)

(assert (=> d!803007 (=> res!1157293 e!1743648)))

(assert (=> d!803007 (= res!1157293 ((_ is Nil!31935) (++!7905 Nil!31935 (Cons!31935 (head!6139 lt!983234) Nil!31935))))))

(assert (=> d!803007 (= (isPrefix!2543 (++!7905 Nil!31935 (Cons!31935 (head!6139 lt!983234) Nil!31935)) lt!983252) lt!983513)))

(declare-fun b!2765506 () Bool)

(declare-fun res!1157292 () Bool)

(assert (=> b!2765506 (=> (not res!1157292) (not e!1743647))))

(assert (=> b!2765506 (= res!1157292 (= (head!6139 (++!7905 Nil!31935 (Cons!31935 (head!6139 lt!983234) Nil!31935))) (head!6139 lt!983252)))))

(declare-fun b!2765508 () Bool)

(assert (=> b!2765508 (= e!1743646 (>= (size!24708 lt!983252) (size!24708 (++!7905 Nil!31935 (Cons!31935 (head!6139 lt!983234) Nil!31935)))))))

(declare-fun b!2765505 () Bool)

(assert (=> b!2765505 (= e!1743648 e!1743647)))

(declare-fun res!1157294 () Bool)

(assert (=> b!2765505 (=> (not res!1157294) (not e!1743647))))

(assert (=> b!2765505 (= res!1157294 (not ((_ is Nil!31935) lt!983252)))))

(assert (= (and d!803007 (not res!1157293)) b!2765505))

(assert (= (and b!2765505 res!1157294) b!2765506))

(assert (= (and b!2765506 res!1157292) b!2765507))

(assert (= (and d!803007 (not res!1157291)) b!2765508))

(assert (=> b!2765507 m!3188147))

(declare-fun m!3188577 () Bool)

(assert (=> b!2765507 m!3188577))

(assert (=> b!2765507 m!3188169))

(assert (=> b!2765507 m!3188577))

(assert (=> b!2765507 m!3188169))

(declare-fun m!3188579 () Bool)

(assert (=> b!2765507 m!3188579))

(assert (=> b!2765506 m!3188147))

(declare-fun m!3188581 () Bool)

(assert (=> b!2765506 m!3188581))

(assert (=> b!2765506 m!3188237))

(assert (=> b!2765508 m!3188171))

(assert (=> b!2765508 m!3188147))

(declare-fun m!3188583 () Bool)

(assert (=> b!2765508 m!3188583))

(assert (=> b!2765353 d!803007))

(declare-fun d!803009 () Bool)

(assert (=> d!803009 (= (tail!4377 lt!983252) (t!228155 lt!983252))))

(assert (=> b!2765353 d!803009))

(declare-fun d!803011 () Bool)

(declare-fun lt!983516 () C!16296)

(assert (=> d!803011 (= lt!983516 (apply!7482 (list!12059 input!5495) 0))))

(declare-fun apply!7483 (Conc!9951 Int) C!16296)

(assert (=> d!803011 (= lt!983516 (apply!7483 (c!448533 input!5495) 0))))

(declare-fun e!1743651 () Bool)

(assert (=> d!803011 e!1743651))

(declare-fun res!1157297 () Bool)

(assert (=> d!803011 (=> (not res!1157297) (not e!1743651))))

(assert (=> d!803011 (= res!1157297 (<= 0 0))))

(assert (=> d!803011 (= (apply!7481 input!5495 0) lt!983516)))

(declare-fun b!2765511 () Bool)

(assert (=> b!2765511 (= e!1743651 (< 0 (size!24709 input!5495)))))

(assert (= (and d!803011 res!1157297) b!2765511))

(assert (=> d!803011 m!3188195))

(assert (=> d!803011 m!3188195))

(declare-fun m!3188585 () Bool)

(assert (=> d!803011 m!3188585))

(declare-fun m!3188587 () Bool)

(assert (=> d!803011 m!3188587))

(assert (=> b!2765511 m!3188201))

(assert (=> b!2765353 d!803011))

(declare-fun d!803013 () Bool)

(declare-fun lt!983519 () C!16296)

(declare-fun contains!5991 (List!32035 C!16296) Bool)

(assert (=> d!803013 (contains!5991 lt!983252 lt!983519)))

(declare-fun e!1743657 () C!16296)

(assert (=> d!803013 (= lt!983519 e!1743657)))

(declare-fun c!448589 () Bool)

(assert (=> d!803013 (= c!448589 (= 0 0))))

(declare-fun e!1743656 () Bool)

(assert (=> d!803013 e!1743656))

(declare-fun res!1157300 () Bool)

(assert (=> d!803013 (=> (not res!1157300) (not e!1743656))))

(assert (=> d!803013 (= res!1157300 (<= 0 0))))

(assert (=> d!803013 (= (apply!7482 lt!983252 0) lt!983519)))

(declare-fun b!2765518 () Bool)

(assert (=> b!2765518 (= e!1743656 (< 0 (size!24708 lt!983252)))))

(declare-fun b!2765519 () Bool)

(assert (=> b!2765519 (= e!1743657 (head!6139 lt!983252))))

(declare-fun b!2765520 () Bool)

(assert (=> b!2765520 (= e!1743657 (apply!7482 (tail!4377 lt!983252) (- 0 1)))))

(assert (= (and d!803013 res!1157300) b!2765518))

(assert (= (and d!803013 c!448589) b!2765519))

(assert (= (and d!803013 (not c!448589)) b!2765520))

(declare-fun m!3188589 () Bool)

(assert (=> d!803013 m!3188589))

(assert (=> b!2765518 m!3188171))

(assert (=> b!2765519 m!3188237))

(assert (=> b!2765520 m!3188169))

(assert (=> b!2765520 m!3188169))

(declare-fun m!3188591 () Bool)

(assert (=> b!2765520 m!3188591))

(assert (=> b!2765353 d!803013))

(declare-fun d!803015 () Bool)

(declare-fun lt!983520 () Int)

(assert (=> d!803015 (>= lt!983520 0)))

(declare-fun e!1743658 () Int)

(assert (=> d!803015 (= lt!983520 e!1743658)))

(declare-fun c!448590 () Bool)

(assert (=> d!803015 (= c!448590 ((_ is Nil!31935) Nil!31935))))

(assert (=> d!803015 (= (size!24708 Nil!31935) lt!983520)))

(declare-fun b!2765521 () Bool)

(assert (=> b!2765521 (= e!1743658 0)))

(declare-fun b!2765522 () Bool)

(assert (=> b!2765522 (= e!1743658 (+ 1 (size!24708 (t!228155 Nil!31935))))))

(assert (= (and d!803015 c!448590) b!2765521))

(assert (= (and d!803015 (not c!448590)) b!2765522))

(declare-fun m!3188593 () Bool)

(assert (=> b!2765522 m!3188593))

(assert (=> b!2765353 d!803015))

(declare-fun d!803017 () Bool)

(assert (=> d!803017 (isPrefix!2543 (++!7905 Nil!31935 (Cons!31935 (head!6139 (getSuffix!1227 lt!983252 Nil!31935)) Nil!31935)) lt!983252)))

(declare-fun lt!983523 () Unit!45983)

(declare-fun choose!16218 (List!32035 List!32035) Unit!45983)

(assert (=> d!803017 (= lt!983523 (choose!16218 Nil!31935 lt!983252))))

(assert (=> d!803017 (isPrefix!2543 Nil!31935 lt!983252)))

(assert (=> d!803017 (= (lemmaAddHeadSuffixToPrefixStillPrefix!448 Nil!31935 lt!983252) lt!983523)))

(declare-fun bs!500278 () Bool)

(assert (= bs!500278 d!803017))

(assert (=> bs!500278 m!3188215))

(declare-fun m!3188595 () Bool)

(assert (=> bs!500278 m!3188595))

(declare-fun m!3188597 () Bool)

(assert (=> bs!500278 m!3188597))

(assert (=> bs!500278 m!3188215))

(assert (=> bs!500278 m!3188597))

(declare-fun m!3188599 () Bool)

(assert (=> bs!500278 m!3188599))

(assert (=> bs!500278 m!3188575))

(declare-fun m!3188601 () Bool)

(assert (=> bs!500278 m!3188601))

(assert (=> b!2765353 d!803017))

(declare-fun d!803019 () Bool)

(declare-fun lambda!101498 () Int)

(declare-fun forall!6614 (List!32036 Int) Bool)

(assert (=> d!803019 (= (inv!43369 setElem!22540) (forall!6614 (exprs!2787 setElem!22540) lambda!101498))))

(declare-fun bs!500279 () Bool)

(assert (= bs!500279 d!803019))

(declare-fun m!3188603 () Bool)

(assert (=> bs!500279 m!3188603))

(assert (=> setNonEmpty!22540 d!803019))

(declare-fun d!803021 () Bool)

(assert (=> d!803021 (= (array_inv!4255 (_keys!4046 (v!33543 (underlying!7695 (v!33544 (underlying!7696 (cache!3795 cacheUp!820))))))) (bvsge (size!24706 (_keys!4046 (v!33543 (underlying!7695 (v!33544 (underlying!7696 (cache!3795 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2765313 d!803021))

(declare-fun d!803023 () Bool)

(assert (=> d!803023 (= (array_inv!4257 (_values!4027 (v!33543 (underlying!7695 (v!33544 (underlying!7696 (cache!3795 cacheUp!820))))))) (bvsge (size!24705 (_values!4027 (v!33543 (underlying!7695 (v!33544 (underlying!7696 (cache!3795 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2765313 d!803023))

(declare-fun d!803025 () Bool)

(assert (=> d!803025 (isPrefix!2543 lt!983252 lt!983252)))

(declare-fun lt!983526 () Unit!45983)

(declare-fun choose!16219 (List!32035 List!32035) Unit!45983)

(assert (=> d!803025 (= lt!983526 (choose!16219 lt!983252 lt!983252))))

(assert (=> d!803025 (= (lemmaIsPrefixRefl!1669 lt!983252 lt!983252) lt!983526)))

(declare-fun bs!500280 () Bool)

(assert (= bs!500280 d!803025))

(assert (=> bs!500280 m!3188183))

(declare-fun m!3188605 () Bool)

(assert (=> bs!500280 m!3188605))

(assert (=> bm!180032 d!803025))

(assert (=> b!2765336 d!802965))

(assert (=> b!2765310 d!803015))

(assert (=> bm!180027 d!802977))

(declare-fun d!803027 () Bool)

(assert (=> d!803027 true))

(declare-fun lambda!101501 () Int)

(declare-fun flatMap!182 ((InoxSet Context!4574) Int) (InoxSet Context!4574))

(assert (=> d!803027 (= (derivationStepZipper!358 z!3597 lt!983255) (flatMap!182 z!3597 lambda!101501))))

(declare-fun bs!500281 () Bool)

(assert (= bs!500281 d!803027))

(declare-fun m!3188607 () Bool)

(assert (=> bs!500281 m!3188607))

(assert (=> bm!180044 d!803027))

(declare-fun d!803029 () Bool)

(assert (=> d!803029 (= (list!12059 (_2!18858 lt!983224)) (list!12060 (c!448533 (_2!18858 lt!983224))))))

(declare-fun bs!500282 () Bool)

(assert (= bs!500282 d!803029))

(declare-fun m!3188609 () Bool)

(assert (=> bs!500282 m!3188609))

(assert (=> b!2765338 d!803029))

(declare-fun d!803031 () Bool)

(declare-fun e!1743661 () Bool)

(assert (=> d!803031 e!1743661))

(declare-fun res!1157305 () Bool)

(assert (=> d!803031 (=> (not res!1157305) (not e!1743661))))

(declare-fun lt!983529 () tuple3!4744)

(assert (=> d!803031 (= res!1157305 (valid!2919 (_2!18857 lt!983529)))))

(declare-fun choose!16220 (CacheUp!2358 CacheDown!2478 (InoxSet Context!4574) List!32035 Int List!32035 BalanceConc!19516 Int) tuple3!4744)

(assert (=> d!803031 (= lt!983529 (choose!16220 (_2!18857 lt!983233) (_3!2842 lt!983233) z!3597 Nil!31935 0 lt!983252 input!5495 lt!983200))))

(assert (=> d!803031 (= (++!7905 Nil!31935 lt!983252) (list!12059 input!5495))))

(assert (=> d!803031 (= (findLongestMatchInnerZipperFastMem!22 (_2!18857 lt!983233) (_3!2842 lt!983233) z!3597 Nil!31935 0 lt!983252 input!5495 lt!983200) lt!983529)))

(declare-fun b!2765529 () Bool)

(declare-fun res!1157306 () Bool)

(assert (=> b!2765529 (=> (not res!1157306) (not e!1743661))))

(assert (=> b!2765529 (= res!1157306 (valid!2920 (_3!2842 lt!983529)))))

(declare-fun b!2765530 () Bool)

(assert (=> b!2765530 (= e!1743661 (= (_1!18857 lt!983529) (findLongestMatchInnerZipperFast!27 z!3597 Nil!31935 0 lt!983252 input!5495 lt!983200)))))

(assert (= (and d!803031 res!1157305) b!2765529))

(assert (= (and b!2765529 res!1157306) b!2765530))

(declare-fun m!3188611 () Bool)

(assert (=> d!803031 m!3188611))

(declare-fun m!3188613 () Bool)

(assert (=> d!803031 m!3188613))

(assert (=> d!803031 m!3188225))

(assert (=> d!803031 m!3188195))

(declare-fun m!3188615 () Bool)

(assert (=> b!2765529 m!3188615))

(assert (=> b!2765530 m!3188223))

(assert (=> b!2765338 d!803031))

(declare-fun d!803033 () Bool)

(assert (=> d!803033 (= (list!12059 (_1!18858 lt!983224)) (list!12060 (c!448533 (_1!18858 lt!983224))))))

(declare-fun bs!500283 () Bool)

(assert (= bs!500283 d!803033))

(declare-fun m!3188617 () Bool)

(assert (=> bs!500283 m!3188617))

(assert (=> b!2765338 d!803033))

(declare-fun d!803035 () Bool)

(assert (=> d!803035 (= (valid!2919 (_2!18857 lt!983233)) (validCacheMapUp!359 (cache!3795 (_2!18857 lt!983233))))))

(declare-fun bs!500284 () Bool)

(assert (= bs!500284 d!803035))

(declare-fun m!3188619 () Bool)

(assert (=> bs!500284 m!3188619))

(assert (=> b!2765338 d!803035))

(declare-fun d!803037 () Bool)

(declare-fun lt!983532 () List!32035)

(assert (=> d!803037 (= (++!7905 Nil!31935 lt!983532) lt!983252)))

(declare-fun e!1743664 () List!32035)

(assert (=> d!803037 (= lt!983532 e!1743664)))

(declare-fun c!448595 () Bool)

(assert (=> d!803037 (= c!448595 ((_ is Cons!31935) Nil!31935))))

(assert (=> d!803037 (>= (size!24708 lt!983252) (size!24708 Nil!31935))))

(assert (=> d!803037 (= (getSuffix!1227 lt!983252 Nil!31935) lt!983532)))

(declare-fun b!2765535 () Bool)

(assert (=> b!2765535 (= e!1743664 (getSuffix!1227 (tail!4377 lt!983252) (t!228155 Nil!31935)))))

(declare-fun b!2765536 () Bool)

(assert (=> b!2765536 (= e!1743664 lt!983252)))

(assert (= (and d!803037 c!448595) b!2765535))

(assert (= (and d!803037 (not c!448595)) b!2765536))

(declare-fun m!3188621 () Bool)

(assert (=> d!803037 m!3188621))

(assert (=> d!803037 m!3188171))

(assert (=> d!803037 m!3188163))

(assert (=> b!2765535 m!3188169))

(assert (=> b!2765535 m!3188169))

(declare-fun m!3188623 () Bool)

(assert (=> b!2765535 m!3188623))

(assert (=> b!2765338 d!803037))

(declare-fun d!803039 () Bool)

(assert (=> d!803039 (= lt!983252 lt!983234)))

(declare-fun lt!983535 () Unit!45983)

(declare-fun choose!16221 (List!32035 List!32035 List!32035 List!32035 List!32035) Unit!45983)

(assert (=> d!803039 (= lt!983535 (choose!16221 Nil!31935 lt!983252 Nil!31935 lt!983234 lt!983252))))

(assert (=> d!803039 (isPrefix!2543 Nil!31935 lt!983252)))

(assert (=> d!803039 (= (lemmaSamePrefixThenSameSuffix!1129 Nil!31935 lt!983252 Nil!31935 lt!983234 lt!983252) lt!983535)))

(declare-fun bs!500285 () Bool)

(assert (= bs!500285 d!803039))

(declare-fun m!3188625 () Bool)

(assert (=> bs!500285 m!3188625))

(assert (=> bs!500285 m!3188575))

(assert (=> b!2765338 d!803039))

(declare-fun d!803041 () Bool)

(declare-fun e!1743665 () Bool)

(assert (=> d!803041 e!1743665))

(declare-fun res!1157307 () Bool)

(assert (=> d!803041 (=> (not res!1157307) (not e!1743665))))

(declare-fun lt!983536 () tuple3!4744)

(assert (=> d!803041 (= res!1157307 (valid!2919 (_2!18857 lt!983536)))))

(assert (=> d!803041 (= lt!983536 (choose!16220 cacheUp!820 cacheDown!939 z!3597 Nil!31935 0 lt!983252 input!5495 lt!983200))))

(assert (=> d!803041 (= (++!7905 Nil!31935 lt!983252) (list!12059 input!5495))))

(assert (=> d!803041 (= (findLongestMatchInnerZipperFastMem!22 cacheUp!820 cacheDown!939 z!3597 Nil!31935 0 lt!983252 input!5495 lt!983200) lt!983536)))

(declare-fun b!2765537 () Bool)

(declare-fun res!1157308 () Bool)

(assert (=> b!2765537 (=> (not res!1157308) (not e!1743665))))

(assert (=> b!2765537 (= res!1157308 (valid!2920 (_3!2842 lt!983536)))))

(declare-fun b!2765538 () Bool)

(assert (=> b!2765538 (= e!1743665 (= (_1!18857 lt!983536) (findLongestMatchInnerZipperFast!27 z!3597 Nil!31935 0 lt!983252 input!5495 lt!983200)))))

(assert (= (and d!803041 res!1157307) b!2765537))

(assert (= (and b!2765537 res!1157308) b!2765538))

(declare-fun m!3188627 () Bool)

(assert (=> d!803041 m!3188627))

(declare-fun m!3188629 () Bool)

(assert (=> d!803041 m!3188629))

(assert (=> d!803041 m!3188225))

(assert (=> d!803041 m!3188195))

(declare-fun m!3188631 () Bool)

(assert (=> b!2765537 m!3188631))

(assert (=> b!2765538 m!3188223))

(assert (=> b!2765338 d!803041))

(declare-fun bs!500286 () Bool)

(declare-fun b!2765543 () Bool)

(declare-fun d!803043 () Bool)

(assert (= bs!500286 (and b!2765543 d!803043)))

(declare-fun lambda!101515 () Int)

(declare-fun lambda!101514 () Int)

(assert (=> bs!500286 (not (= lambda!101515 lambda!101514))))

(declare-fun bs!500287 () Bool)

(declare-fun b!2765544 () Bool)

(assert (= bs!500287 (and b!2765544 d!803043)))

(declare-fun lambda!101516 () Int)

(assert (=> bs!500287 (not (= lambda!101516 lambda!101514))))

(declare-fun bs!500288 () Bool)

(assert (= bs!500288 (and b!2765544 b!2765543)))

(assert (=> bs!500288 (= lambda!101516 lambda!101515)))

(declare-fun e!1743672 () Unit!45983)

(declare-fun Unit!46000 () Unit!45983)

(assert (=> b!2765544 (= e!1743672 Unit!46000)))

(declare-datatypes ((List!32039 0))(
  ( (Nil!31939) (Cons!31939 (h!37359 Context!4574) (t!228159 List!32039)) )
))
(declare-fun lt!983553 () List!32039)

(declare-fun call!180110 () List!32039)

(assert (=> b!2765544 (= lt!983553 call!180110)))

(declare-fun lt!983558 () Unit!45983)

(declare-fun lemmaForallThenNotExists!80 (List!32039 Int) Unit!45983)

(assert (=> b!2765544 (= lt!983558 (lemmaForallThenNotExists!80 lt!983553 lambda!101514))))

(declare-fun call!180111 () Bool)

(assert (=> b!2765544 (not call!180111)))

(declare-fun lt!983555 () Unit!45983)

(assert (=> b!2765544 (= lt!983555 lt!983558)))

(declare-fun Unit!46001 () Unit!45983)

(assert (=> b!2765543 (= e!1743672 Unit!46001)))

(declare-fun lt!983560 () List!32039)

(assert (=> b!2765543 (= lt!983560 call!180110)))

(declare-fun lt!983557 () Unit!45983)

(declare-fun lemmaNotForallThenExists!80 (List!32039 Int) Unit!45983)

(assert (=> b!2765543 (= lt!983557 (lemmaNotForallThenExists!80 lt!983560 lambda!101514))))

(assert (=> b!2765543 call!180111))

(declare-fun lt!983559 () Unit!45983)

(assert (=> b!2765543 (= lt!983559 lt!983557)))

(declare-fun bm!180105 () Bool)

(declare-fun c!448606 () Bool)

(declare-fun exists!967 (List!32039 Int) Bool)

(assert (=> bm!180105 (= call!180111 (exists!967 (ite c!448606 lt!983560 lt!983553) (ite c!448606 lambda!101515 lambda!101516)))))

(declare-fun lt!983556 () Bool)

(declare-datatypes ((Option!6258 0))(
  ( (None!6257) (Some!6257 (v!33547 List!32035)) )
))
(declare-fun isEmpty!18085 (Option!6258) Bool)

(declare-fun getLanguageWitness!183 ((InoxSet Context!4574)) Option!6258)

(assert (=> d!803043 (= lt!983556 (isEmpty!18085 (getLanguageWitness!183 z!3597)))))

(declare-fun forall!6615 ((InoxSet Context!4574) Int) Bool)

(assert (=> d!803043 (= lt!983556 (forall!6615 z!3597 lambda!101514))))

(declare-fun lt!983554 () Unit!45983)

(assert (=> d!803043 (= lt!983554 e!1743672)))

(assert (=> d!803043 (= c!448606 (not (forall!6615 z!3597 lambda!101514)))))

(assert (=> d!803043 (= (lostCauseZipper!431 z!3597) lt!983556)))

(declare-fun bm!180106 () Bool)

(declare-fun toList!1833 ((InoxSet Context!4574)) List!32039)

(assert (=> bm!180106 (= call!180110 (toList!1833 z!3597))))

(assert (= (and d!803043 c!448606) b!2765543))

(assert (= (and d!803043 (not c!448606)) b!2765544))

(assert (= (or b!2765543 b!2765544) bm!180105))

(assert (= (or b!2765543 b!2765544) bm!180106))

(declare-fun m!3188633 () Bool)

(assert (=> d!803043 m!3188633))

(assert (=> d!803043 m!3188633))

(declare-fun m!3188635 () Bool)

(assert (=> d!803043 m!3188635))

(declare-fun m!3188637 () Bool)

(assert (=> d!803043 m!3188637))

(assert (=> d!803043 m!3188637))

(declare-fun m!3188639 () Bool)

(assert (=> b!2765543 m!3188639))

(declare-fun m!3188641 () Bool)

(assert (=> b!2765544 m!3188641))

(declare-fun m!3188643 () Bool)

(assert (=> bm!180106 m!3188643))

(declare-fun m!3188645 () Bool)

(assert (=> bm!180105 m!3188645))

(assert (=> b!2765338 d!803043))

(declare-fun d!803045 () Bool)

(declare-fun e!1743691 () Bool)

(assert (=> d!803045 e!1743691))

(declare-fun res!1157314 () Bool)

(assert (=> d!803045 (=> (not res!1157314) (not e!1743691))))

(declare-fun lt!983619 () tuple2!32022)

(assert (=> d!803045 (= res!1157314 (= (++!7905 (_1!18852 lt!983619) (_2!18852 lt!983619)) lt!983252))))

(declare-fun e!1743695 () tuple2!32022)

(assert (=> d!803045 (= lt!983619 e!1743695)))

(declare-fun c!448620 () Bool)

(assert (=> d!803045 (= c!448620 (lostCauseZipper!431 z!3597))))

(declare-fun lt!983621 () Unit!45983)

(declare-fun Unit!46002 () Unit!45983)

(assert (=> d!803045 (= lt!983621 Unit!46002)))

(assert (=> d!803045 (= (getSuffix!1227 lt!983252 Nil!31935) lt!983252)))

(declare-fun lt!983628 () Unit!45983)

(declare-fun lt!983614 () Unit!45983)

(assert (=> d!803045 (= lt!983628 lt!983614)))

(declare-fun lt!983633 () List!32035)

(assert (=> d!803045 (= lt!983252 lt!983633)))

(assert (=> d!803045 (= lt!983614 (lemmaSamePrefixThenSameSuffix!1129 Nil!31935 lt!983252 Nil!31935 lt!983633 lt!983252))))

(assert (=> d!803045 (= lt!983633 (getSuffix!1227 lt!983252 Nil!31935))))

(declare-fun lt!983616 () Unit!45983)

(declare-fun lt!983627 () Unit!45983)

(assert (=> d!803045 (= lt!983616 lt!983627)))

(assert (=> d!803045 (isPrefix!2543 Nil!31935 (++!7905 Nil!31935 lt!983252))))

(assert (=> d!803045 (= lt!983627 (lemmaConcatTwoListThenFirstIsPrefix!1655 Nil!31935 lt!983252))))

(assert (=> d!803045 (= (++!7905 Nil!31935 lt!983252) lt!983252)))

(assert (=> d!803045 (= (findLongestMatchInnerZipper!13 z!3597 Nil!31935 0 lt!983252 lt!983252 lt!983200) lt!983619)))

(declare-fun b!2765573 () Bool)

(declare-fun e!1743696 () Bool)

(assert (=> b!2765573 (= e!1743691 e!1743696)))

(declare-fun res!1157313 () Bool)

(assert (=> b!2765573 (=> res!1157313 e!1743696)))

(assert (=> b!2765573 (= res!1157313 (isEmpty!18084 (_1!18852 lt!983619)))))

(declare-fun bm!180123 () Bool)

(declare-fun call!180132 () (InoxSet Context!4574))

(declare-fun call!180134 () C!16296)

(assert (=> bm!180123 (= call!180132 (derivationStepZipper!358 z!3597 call!180134))))

(declare-fun b!2765574 () Bool)

(declare-fun e!1743689 () Unit!45983)

(declare-fun Unit!46003 () Unit!45983)

(assert (=> b!2765574 (= e!1743689 Unit!46003)))

(declare-fun b!2765575 () Bool)

(declare-fun c!448624 () Bool)

(declare-fun call!180133 () Bool)

(assert (=> b!2765575 (= c!448624 call!180133)))

(declare-fun lt!983624 () Unit!45983)

(declare-fun lt!983623 () Unit!45983)

(assert (=> b!2765575 (= lt!983624 lt!983623)))

(declare-fun lt!983613 () C!16296)

(declare-fun lt!983631 () List!32035)

(assert (=> b!2765575 (= (++!7905 (++!7905 Nil!31935 (Cons!31935 lt!983613 Nil!31935)) lt!983631) lt!983252)))

(assert (=> b!2765575 (= lt!983623 (lemmaMoveElementToOtherListKeepsConcatEq!860 Nil!31935 lt!983613 lt!983631 lt!983252))))

(assert (=> b!2765575 (= lt!983631 (tail!4377 lt!983252))))

(assert (=> b!2765575 (= lt!983613 (head!6139 lt!983252))))

(declare-fun lt!983638 () Unit!45983)

(declare-fun lt!983629 () Unit!45983)

(assert (=> b!2765575 (= lt!983638 lt!983629)))

(assert (=> b!2765575 (isPrefix!2543 (++!7905 Nil!31935 (Cons!31935 (head!6139 (getSuffix!1227 lt!983252 Nil!31935)) Nil!31935)) lt!983252)))

(assert (=> b!2765575 (= lt!983629 (lemmaAddHeadSuffixToPrefixStillPrefix!448 Nil!31935 lt!983252))))

(declare-fun lt!983637 () List!32035)

(assert (=> b!2765575 (= lt!983637 (++!7905 Nil!31935 (Cons!31935 (head!6139 lt!983252) Nil!31935)))))

(declare-fun lt!983634 () Unit!45983)

(assert (=> b!2765575 (= lt!983634 e!1743689)))

(declare-fun c!448621 () Bool)

(assert (=> b!2765575 (= c!448621 (= (size!24708 Nil!31935) (size!24708 lt!983252)))))

(declare-fun lt!983618 () Unit!45983)

(declare-fun lt!983632 () Unit!45983)

(assert (=> b!2765575 (= lt!983618 lt!983632)))

(assert (=> b!2765575 (<= (size!24708 Nil!31935) (size!24708 lt!983252))))

(assert (=> b!2765575 (= lt!983632 (lemmaIsPrefixThenSmallerEqSize!251 Nil!31935 lt!983252))))

(declare-fun e!1743693 () tuple2!32022)

(declare-fun e!1743694 () tuple2!32022)

(assert (=> b!2765575 (= e!1743693 e!1743694)))

(declare-fun bm!180124 () Bool)

(declare-fun call!180131 () Unit!45983)

(assert (=> bm!180124 (= call!180131 (lemmaIsPrefixSameLengthThenSameList!451 lt!983252 Nil!31935 lt!983252))))

(declare-fun bm!180125 () Bool)

(declare-fun call!180129 () Bool)

(assert (=> bm!180125 (= call!180129 (isPrefix!2543 lt!983252 lt!983252))))

(declare-fun bm!180126 () Bool)

(declare-fun call!180130 () Unit!45983)

(assert (=> bm!180126 (= call!180130 (lemmaIsPrefixRefl!1669 lt!983252 lt!983252))))

(declare-fun b!2765576 () Bool)

(declare-fun e!1743690 () tuple2!32022)

(declare-fun lt!983617 () tuple2!32022)

(assert (=> b!2765576 (= e!1743690 lt!983617)))

(declare-fun b!2765577 () Bool)

(assert (=> b!2765577 (= e!1743695 (tuple2!32023 Nil!31935 lt!983252))))

(declare-fun b!2765578 () Bool)

(declare-fun c!448619 () Bool)

(assert (=> b!2765578 (= c!448619 call!180133)))

(declare-fun lt!983630 () Unit!45983)

(declare-fun lt!983635 () Unit!45983)

(assert (=> b!2765578 (= lt!983630 lt!983635)))

(assert (=> b!2765578 (= lt!983252 Nil!31935)))

(assert (=> b!2765578 (= lt!983635 call!180131)))

(declare-fun lt!983620 () Unit!45983)

(declare-fun lt!983625 () Unit!45983)

(assert (=> b!2765578 (= lt!983620 lt!983625)))

(assert (=> b!2765578 call!180129))

(assert (=> b!2765578 (= lt!983625 call!180130)))

(declare-fun e!1743692 () tuple2!32022)

(assert (=> b!2765578 (= e!1743693 e!1743692)))

(declare-fun b!2765579 () Bool)

(declare-fun Unit!46004 () Unit!45983)

(assert (=> b!2765579 (= e!1743689 Unit!46004)))

(declare-fun lt!983636 () Unit!45983)

(assert (=> b!2765579 (= lt!983636 call!180130)))

(assert (=> b!2765579 call!180129))

(declare-fun lt!983615 () Unit!45983)

(assert (=> b!2765579 (= lt!983615 lt!983636)))

(declare-fun lt!983622 () Unit!45983)

(assert (=> b!2765579 (= lt!983622 call!180131)))

(assert (=> b!2765579 (= lt!983252 Nil!31935)))

(declare-fun lt!983626 () Unit!45983)

(assert (=> b!2765579 (= lt!983626 lt!983622)))

(assert (=> b!2765579 false))

(declare-fun bm!180127 () Bool)

(assert (=> bm!180127 (= call!180134 (head!6139 lt!983252))))

(declare-fun b!2765580 () Bool)

(assert (=> b!2765580 (= e!1743690 (tuple2!32023 Nil!31935 lt!983252))))

(declare-fun bm!180128 () Bool)

(declare-fun call!180128 () List!32035)

(assert (=> bm!180128 (= call!180128 (tail!4377 lt!983252))))

(declare-fun b!2765581 () Bool)

(assert (=> b!2765581 (= e!1743694 e!1743690)))

(declare-fun call!180135 () tuple2!32022)

(assert (=> b!2765581 (= lt!983617 call!180135)))

(declare-fun c!448623 () Bool)

(assert (=> b!2765581 (= c!448623 (isEmpty!18084 (_1!18852 lt!983617)))))

(declare-fun bm!180129 () Bool)

(assert (=> bm!180129 (= call!180135 (findLongestMatchInnerZipper!13 call!180132 lt!983637 (+ 0 1) call!180128 lt!983252 lt!983200))))

(declare-fun b!2765582 () Bool)

(assert (=> b!2765582 (= e!1743694 call!180135)))

(declare-fun b!2765583 () Bool)

(assert (=> b!2765583 (= e!1743692 (tuple2!32023 Nil!31935 Nil!31935))))

(declare-fun bm!180130 () Bool)

(assert (=> bm!180130 (= call!180133 (nullableZipper!623 z!3597))))

(declare-fun b!2765584 () Bool)

(assert (=> b!2765584 (= e!1743696 (>= (size!24708 (_1!18852 lt!983619)) (size!24708 Nil!31935)))))

(declare-fun b!2765585 () Bool)

(assert (=> b!2765585 (= e!1743695 e!1743693)))

(declare-fun c!448622 () Bool)

(assert (=> b!2765585 (= c!448622 (= 0 lt!983200))))

(declare-fun b!2765586 () Bool)

(assert (=> b!2765586 (= e!1743692 (tuple2!32023 Nil!31935 lt!983252))))

(assert (= (and d!803045 c!448620) b!2765577))

(assert (= (and d!803045 (not c!448620)) b!2765585))

(assert (= (and b!2765585 c!448622) b!2765578))

(assert (= (and b!2765585 (not c!448622)) b!2765575))

(assert (= (and b!2765578 c!448619) b!2765583))

(assert (= (and b!2765578 (not c!448619)) b!2765586))

(assert (= (and b!2765575 c!448621) b!2765579))

(assert (= (and b!2765575 (not c!448621)) b!2765574))

(assert (= (and b!2765575 c!448624) b!2765581))

(assert (= (and b!2765575 (not c!448624)) b!2765582))

(assert (= (and b!2765581 c!448623) b!2765580))

(assert (= (and b!2765581 (not c!448623)) b!2765576))

(assert (= (or b!2765581 b!2765582) bm!180128))

(assert (= (or b!2765581 b!2765582) bm!180127))

(assert (= (or b!2765581 b!2765582) bm!180123))

(assert (= (or b!2765581 b!2765582) bm!180129))

(assert (= (or b!2765578 b!2765575) bm!180130))

(assert (= (or b!2765578 b!2765579) bm!180126))

(assert (= (or b!2765578 b!2765579) bm!180124))

(assert (= (or b!2765578 b!2765579) bm!180125))

(assert (= (and d!803045 res!1157314) b!2765573))

(assert (= (and b!2765573 (not res!1157313)) b!2765584))

(assert (=> b!2765575 m!3188215))

(assert (=> b!2765575 m!3188237))

(assert (=> b!2765575 m!3188171))

(assert (=> b!2765575 m!3188175))

(assert (=> b!2765575 m!3188163))

(declare-fun m!3188647 () Bool)

(assert (=> b!2765575 m!3188647))

(declare-fun m!3188649 () Bool)

(assert (=> b!2765575 m!3188649))

(assert (=> b!2765575 m!3188597))

(assert (=> b!2765575 m!3188599))

(assert (=> b!2765575 m!3188169))

(assert (=> b!2765575 m!3188597))

(assert (=> b!2765575 m!3188215))

(assert (=> b!2765575 m!3188595))

(assert (=> b!2765575 m!3188153))

(assert (=> b!2765575 m!3188649))

(declare-fun m!3188651 () Bool)

(assert (=> b!2765575 m!3188651))

(declare-fun m!3188653 () Bool)

(assert (=> b!2765575 m!3188653))

(assert (=> bm!180125 m!3188183))

(declare-fun m!3188655 () Bool)

(assert (=> b!2765584 m!3188655))

(assert (=> b!2765584 m!3188163))

(declare-fun m!3188657 () Bool)

(assert (=> b!2765581 m!3188657))

(declare-fun m!3188659 () Bool)

(assert (=> bm!180129 m!3188659))

(assert (=> bm!180124 m!3188231))

(assert (=> bm!180126 m!3188189))

(assert (=> bm!180128 m!3188169))

(assert (=> d!803045 m!3188215))

(assert (=> d!803045 m!3188217))

(declare-fun m!3188661 () Bool)

(assert (=> d!803045 m!3188661))

(assert (=> d!803045 m!3188225))

(assert (=> d!803045 m!3188481))

(assert (=> d!803045 m!3188225))

(declare-fun m!3188663 () Bool)

(assert (=> d!803045 m!3188663))

(assert (=> d!803045 m!3188199))

(declare-fun m!3188665 () Bool)

(assert (=> b!2765573 m!3188665))

(assert (=> bm!180127 m!3188237))

(declare-fun m!3188667 () Bool)

(assert (=> bm!180123 m!3188667))

(assert (=> bm!180130 m!3188227))

(assert (=> b!2765338 d!803045))

(declare-fun d!803047 () Bool)

(assert (=> d!803047 (= (list!12059 input!5495) (list!12060 (c!448533 input!5495)))))

(declare-fun bs!500289 () Bool)

(assert (= bs!500289 d!803047))

(declare-fun m!3188669 () Bool)

(assert (=> bs!500289 m!3188669))

(assert (=> b!2765338 d!803047))

(assert (=> b!2765338 d!802965))

(declare-fun b!2765587 () Bool)

(declare-fun e!1743698 () List!32035)

(assert (=> b!2765587 (= e!1743698 lt!983252)))

(declare-fun b!2765588 () Bool)

(assert (=> b!2765588 (= e!1743698 (Cons!31935 (h!37355 Nil!31935) (++!7905 (t!228155 Nil!31935) lt!983252)))))

(declare-fun b!2765590 () Bool)

(declare-fun e!1743697 () Bool)

(declare-fun lt!983639 () List!32035)

(assert (=> b!2765590 (= e!1743697 (or (not (= lt!983252 Nil!31935)) (= lt!983639 Nil!31935)))))

(declare-fun d!803049 () Bool)

(assert (=> d!803049 e!1743697))

(declare-fun res!1157316 () Bool)

(assert (=> d!803049 (=> (not res!1157316) (not e!1743697))))

(assert (=> d!803049 (= res!1157316 (= (content!4497 lt!983639) ((_ map or) (content!4497 Nil!31935) (content!4497 lt!983252))))))

(assert (=> d!803049 (= lt!983639 e!1743698)))

(declare-fun c!448625 () Bool)

(assert (=> d!803049 (= c!448625 ((_ is Nil!31935) Nil!31935))))

(assert (=> d!803049 (= (++!7905 Nil!31935 lt!983252) lt!983639)))

(declare-fun b!2765589 () Bool)

(declare-fun res!1157315 () Bool)

(assert (=> b!2765589 (=> (not res!1157315) (not e!1743697))))

(assert (=> b!2765589 (= res!1157315 (= (size!24708 lt!983639) (+ (size!24708 Nil!31935) (size!24708 lt!983252))))))

(assert (= (and d!803049 c!448625) b!2765587))

(assert (= (and d!803049 (not c!448625)) b!2765588))

(assert (= (and d!803049 res!1157316) b!2765589))

(assert (= (and b!2765589 res!1157315) b!2765590))

(declare-fun m!3188671 () Bool)

(assert (=> b!2765588 m!3188671))

(declare-fun m!3188673 () Bool)

(assert (=> d!803049 m!3188673))

(assert (=> d!803049 m!3188503))

(assert (=> d!803049 m!3188525))

(declare-fun m!3188675 () Bool)

(assert (=> b!2765589 m!3188675))

(assert (=> b!2765589 m!3188163))

(assert (=> b!2765589 m!3188171))

(assert (=> b!2765338 d!803049))

(declare-fun d!803051 () Bool)

(declare-fun lt!983642 () Int)

(assert (=> d!803051 (= lt!983642 (size!24708 (list!12059 input!5495)))))

(declare-fun size!24710 (Conc!9951) Int)

(assert (=> d!803051 (= lt!983642 (size!24710 (c!448533 input!5495)))))

(assert (=> d!803051 (= (size!24709 input!5495) lt!983642)))

(declare-fun bs!500290 () Bool)

(assert (= bs!500290 d!803051))

(assert (=> bs!500290 m!3188195))

(assert (=> bs!500290 m!3188195))

(declare-fun m!3188677 () Bool)

(assert (=> bs!500290 m!3188677))

(declare-fun m!3188679 () Bool)

(assert (=> bs!500290 m!3188679))

(assert (=> b!2765338 d!803051))

(declare-fun d!803053 () Bool)

(assert (=> d!803053 (isPrefix!2543 Nil!31935 (++!7905 Nil!31935 lt!983252))))

(declare-fun lt!983645 () Unit!45983)

(declare-fun choose!16222 (List!32035 List!32035) Unit!45983)

(assert (=> d!803053 (= lt!983645 (choose!16222 Nil!31935 lt!983252))))

(assert (=> d!803053 (= (lemmaConcatTwoListThenFirstIsPrefix!1655 Nil!31935 lt!983252) lt!983645)))

(declare-fun bs!500291 () Bool)

(assert (= bs!500291 d!803053))

(assert (=> bs!500291 m!3188225))

(assert (=> bs!500291 m!3188225))

(assert (=> bs!500291 m!3188481))

(declare-fun m!3188681 () Bool)

(assert (=> bs!500291 m!3188681))

(assert (=> b!2765338 d!803053))

(declare-fun d!803055 () Bool)

(declare-fun e!1743699 () Bool)

(assert (=> d!803055 e!1743699))

(declare-fun res!1157318 () Bool)

(assert (=> d!803055 (=> (not res!1157318) (not e!1743699))))

(declare-fun lt!983647 () tuple2!32030)

(assert (=> d!803055 (= res!1157318 (isBalanced!3033 (c!448533 (_1!18858 lt!983647))))))

(declare-fun lt!983646 () tuple2!32032)

(assert (=> d!803055 (= lt!983647 (tuple2!32031 (BalanceConc!19517 (_1!18861 lt!983646)) (BalanceConc!19517 (_2!18861 lt!983646))))))

(assert (=> d!803055 (= lt!983646 (splitAt!103 (c!448533 input!5495) (_1!18857 lt!983233)))))

(assert (=> d!803055 (isBalanced!3033 (c!448533 input!5495))))

(assert (=> d!803055 (= (splitAt!102 input!5495 (_1!18857 lt!983233)) lt!983647)))

(declare-fun b!2765591 () Bool)

(declare-fun res!1157317 () Bool)

(assert (=> b!2765591 (=> (not res!1157317) (not e!1743699))))

(assert (=> b!2765591 (= res!1157317 (isBalanced!3033 (c!448533 (_2!18858 lt!983647))))))

(declare-fun b!2765592 () Bool)

(assert (=> b!2765592 (= e!1743699 (= (tuple2!32023 (list!12059 (_1!18858 lt!983647)) (list!12059 (_2!18858 lt!983647))) (splitAtIndex!48 (list!12059 input!5495) (_1!18857 lt!983233))))))

(assert (= (and d!803055 res!1157318) b!2765591))

(assert (= (and b!2765591 res!1157317) b!2765592))

(declare-fun m!3188683 () Bool)

(assert (=> d!803055 m!3188683))

(declare-fun m!3188685 () Bool)

(assert (=> d!803055 m!3188685))

(assert (=> d!803055 m!3188551))

(declare-fun m!3188687 () Bool)

(assert (=> b!2765591 m!3188687))

(declare-fun m!3188689 () Bool)

(assert (=> b!2765592 m!3188689))

(declare-fun m!3188691 () Bool)

(assert (=> b!2765592 m!3188691))

(assert (=> b!2765592 m!3188195))

(assert (=> b!2765592 m!3188195))

(declare-fun m!3188693 () Bool)

(assert (=> b!2765592 m!3188693))

(assert (=> b!2765338 d!803055))

(declare-fun b!2765595 () Bool)

(declare-fun e!1743701 () Bool)

(assert (=> b!2765595 (= e!1743701 (isPrefix!2543 (tail!4377 Nil!31935) (tail!4377 lt!983248)))))

(declare-fun d!803057 () Bool)

(declare-fun e!1743700 () Bool)

(assert (=> d!803057 e!1743700))

(declare-fun res!1157319 () Bool)

(assert (=> d!803057 (=> res!1157319 e!1743700)))

(declare-fun lt!983648 () Bool)

(assert (=> d!803057 (= res!1157319 (not lt!983648))))

(declare-fun e!1743702 () Bool)

(assert (=> d!803057 (= lt!983648 e!1743702)))

(declare-fun res!1157321 () Bool)

(assert (=> d!803057 (=> res!1157321 e!1743702)))

(assert (=> d!803057 (= res!1157321 ((_ is Nil!31935) Nil!31935))))

(assert (=> d!803057 (= (isPrefix!2543 Nil!31935 lt!983248) lt!983648)))

(declare-fun b!2765594 () Bool)

(declare-fun res!1157320 () Bool)

(assert (=> b!2765594 (=> (not res!1157320) (not e!1743701))))

(assert (=> b!2765594 (= res!1157320 (= (head!6139 Nil!31935) (head!6139 lt!983248)))))

(declare-fun b!2765596 () Bool)

(assert (=> b!2765596 (= e!1743700 (>= (size!24708 lt!983248) (size!24708 Nil!31935)))))

(declare-fun b!2765593 () Bool)

(assert (=> b!2765593 (= e!1743702 e!1743701)))

(declare-fun res!1157322 () Bool)

(assert (=> b!2765593 (=> (not res!1157322) (not e!1743701))))

(assert (=> b!2765593 (= res!1157322 (not ((_ is Nil!31935) lt!983248)))))

(assert (= (and d!803057 (not res!1157321)) b!2765593))

(assert (= (and b!2765593 res!1157322) b!2765594))

(assert (= (and b!2765594 res!1157320) b!2765595))

(assert (= (and d!803057 (not res!1157319)) b!2765596))

(declare-fun m!3188695 () Bool)

(assert (=> b!2765595 m!3188695))

(declare-fun m!3188697 () Bool)

(assert (=> b!2765595 m!3188697))

(assert (=> b!2765595 m!3188695))

(assert (=> b!2765595 m!3188697))

(declare-fun m!3188699 () Bool)

(assert (=> b!2765595 m!3188699))

(declare-fun m!3188701 () Bool)

(assert (=> b!2765594 m!3188701))

(declare-fun m!3188703 () Bool)

(assert (=> b!2765594 m!3188703))

(declare-fun m!3188705 () Bool)

(assert (=> b!2765596 m!3188705))

(assert (=> b!2765596 m!3188163))

(assert (=> b!2765338 d!803057))

(declare-fun d!803059 () Bool)

(assert (=> d!803059 (= (valid!2919 (_2!18857 lt!983237)) (validCacheMapUp!359 (cache!3795 (_2!18857 lt!983237))))))

(declare-fun bs!500292 () Bool)

(assert (= bs!500292 d!803059))

(declare-fun m!3188707 () Bool)

(assert (=> bs!500292 m!3188707))

(assert (=> b!2765338 d!803059))

(declare-fun bs!500293 () Bool)

(declare-fun d!803061 () Bool)

(assert (= bs!500293 (and d!803061 d!803043)))

(declare-fun lambda!101519 () Int)

(assert (=> bs!500293 (not (= lambda!101519 lambda!101514))))

(declare-fun bs!500294 () Bool)

(assert (= bs!500294 (and d!803061 b!2765543)))

(assert (=> bs!500294 (not (= lambda!101519 lambda!101515))))

(declare-fun bs!500295 () Bool)

(assert (= bs!500295 (and d!803061 b!2765544)))

(assert (=> bs!500295 (not (= lambda!101519 lambda!101516))))

(declare-fun exists!968 ((InoxSet Context!4574) Int) Bool)

(assert (=> d!803061 (= (nullableZipper!623 z!3597) (exists!968 z!3597 lambda!101519))))

(declare-fun bs!500296 () Bool)

(assert (= bs!500296 d!803061))

(declare-fun m!3188709 () Bool)

(assert (=> bs!500296 m!3188709))

(assert (=> bm!180034 d!803061))

(declare-fun d!803063 () Bool)

(assert (=> d!803063 (= (valid!2920 (_3!2842 lt!983233)) (validCacheMapDown!390 (cache!3796 (_3!2842 lt!983233))))))

(declare-fun bs!500297 () Bool)

(assert (= bs!500297 d!803063))

(declare-fun m!3188711 () Bool)

(assert (=> bs!500297 m!3188711))

(assert (=> b!2765342 d!803063))

(assert (=> b!2765314 d!802979))

(assert (=> b!2765314 d!802983))

(declare-fun d!803065 () Bool)

(assert (=> d!803065 (= (list!12059 (_2!18858 lt!983215)) (list!12060 (c!448533 (_2!18858 lt!983215))))))

(declare-fun bs!500298 () Bool)

(assert (= bs!500298 d!803065))

(declare-fun m!3188713 () Bool)

(assert (=> bs!500298 m!3188713))

(assert (=> b!2765314 d!803065))

(assert (=> b!2765314 d!803005))

(assert (=> b!2765314 d!802985))

(declare-fun d!803067 () Bool)

(assert (=> d!803067 (and (= lt!983211 Nil!31935) (= lt!983267 lt!983252))))

(declare-fun lt!983649 () Unit!45983)

(assert (=> d!803067 (= lt!983649 (choose!16215 lt!983211 lt!983267 Nil!31935 lt!983252))))

(assert (=> d!803067 (= (++!7905 lt!983211 lt!983267) (++!7905 Nil!31935 lt!983252))))

(assert (=> d!803067 (= (lemmaConcatSameAndSameSizesThenSameLists!329 lt!983211 lt!983267 Nil!31935 lt!983252) lt!983649)))

(declare-fun bs!500299 () Bool)

(assert (= bs!500299 d!803067))

(declare-fun m!3188715 () Bool)

(assert (=> bs!500299 m!3188715))

(declare-fun m!3188717 () Bool)

(assert (=> bs!500299 m!3188717))

(assert (=> bs!500299 m!3188225))

(assert (=> b!2765314 d!803067))

(declare-fun d!803069 () Bool)

(assert (=> d!803069 (= (list!12059 (_1!18858 lt!983215)) (list!12060 (c!448533 (_1!18858 lt!983215))))))

(declare-fun bs!500300 () Bool)

(assert (= bs!500300 d!803069))

(declare-fun m!3188719 () Bool)

(assert (=> bs!500300 m!3188719))

(assert (=> b!2765314 d!803069))

(assert (=> b!2765314 d!802991))

(declare-fun d!803071 () Bool)

(assert (=> d!803071 (= (++!7905 (++!7905 Nil!31935 (Cons!31935 lt!983246 Nil!31935)) lt!983253) lt!983252)))

(declare-fun lt!983650 () Unit!45983)

(assert (=> d!803071 (= lt!983650 (choose!16216 Nil!31935 lt!983246 lt!983253 lt!983252))))

(assert (=> d!803071 (= (++!7905 Nil!31935 (Cons!31935 lt!983246 lt!983253)) lt!983252)))

(assert (=> d!803071 (= (lemmaMoveElementToOtherListKeepsConcatEq!860 Nil!31935 lt!983246 lt!983253 lt!983252) lt!983650)))

(declare-fun bs!500301 () Bool)

(assert (= bs!500301 d!803071))

(assert (=> bs!500301 m!3188167))

(assert (=> bs!500301 m!3188167))

(declare-fun m!3188721 () Bool)

(assert (=> bs!500301 m!3188721))

(declare-fun m!3188723 () Bool)

(assert (=> bs!500301 m!3188723))

(declare-fun m!3188725 () Bool)

(assert (=> bs!500301 m!3188725))

(assert (=> b!2765314 d!803071))

(assert (=> b!2765314 d!802993))

(declare-fun b!2765597 () Bool)

(declare-fun e!1743704 () List!32035)

(assert (=> b!2765597 (= e!1743704 lt!983253)))

(declare-fun b!2765598 () Bool)

(assert (=> b!2765598 (= e!1743704 (Cons!31935 (h!37355 lt!983264) (++!7905 (t!228155 lt!983264) lt!983253)))))

(declare-fun b!2765600 () Bool)

(declare-fun e!1743703 () Bool)

(declare-fun lt!983651 () List!32035)

(assert (=> b!2765600 (= e!1743703 (or (not (= lt!983253 Nil!31935)) (= lt!983651 lt!983264)))))

(declare-fun d!803073 () Bool)

(assert (=> d!803073 e!1743703))

(declare-fun res!1157324 () Bool)

(assert (=> d!803073 (=> (not res!1157324) (not e!1743703))))

(assert (=> d!803073 (= res!1157324 (= (content!4497 lt!983651) ((_ map or) (content!4497 lt!983264) (content!4497 lt!983253))))))

(assert (=> d!803073 (= lt!983651 e!1743704)))

(declare-fun c!448628 () Bool)

(assert (=> d!803073 (= c!448628 ((_ is Nil!31935) lt!983264))))

(assert (=> d!803073 (= (++!7905 lt!983264 lt!983253) lt!983651)))

(declare-fun b!2765599 () Bool)

(declare-fun res!1157323 () Bool)

(assert (=> b!2765599 (=> (not res!1157323) (not e!1743703))))

(assert (=> b!2765599 (= res!1157323 (= (size!24708 lt!983651) (+ (size!24708 lt!983264) (size!24708 lt!983253))))))

(assert (= (and d!803073 c!448628) b!2765597))

(assert (= (and d!803073 (not c!448628)) b!2765598))

(assert (= (and d!803073 res!1157324) b!2765599))

(assert (= (and b!2765599 res!1157323) b!2765600))

(declare-fun m!3188727 () Bool)

(assert (=> b!2765598 m!3188727))

(declare-fun m!3188729 () Bool)

(assert (=> d!803073 m!3188729))

(declare-fun m!3188731 () Bool)

(assert (=> d!803073 m!3188731))

(declare-fun m!3188733 () Bool)

(assert (=> d!803073 m!3188733))

(declare-fun m!3188735 () Bool)

(assert (=> b!2765599 m!3188735))

(assert (=> b!2765599 m!3188385))

(declare-fun m!3188737 () Bool)

(assert (=> b!2765599 m!3188737))

(assert (=> b!2765314 d!803073))

(assert (=> b!2765314 d!802997))

(assert (=> b!2765314 d!803007))

(assert (=> b!2765314 d!803009))

(assert (=> b!2765314 d!803011))

(assert (=> b!2765314 d!803013))

(assert (=> b!2765314 d!803015))

(assert (=> b!2765314 d!803017))

(declare-fun b!2765601 () Bool)

(declare-fun e!1743706 () List!32035)

(assert (=> b!2765601 (= e!1743706 (Cons!31935 lt!983246 Nil!31935))))

(declare-fun b!2765602 () Bool)

(assert (=> b!2765602 (= e!1743706 (Cons!31935 (h!37355 Nil!31935) (++!7905 (t!228155 Nil!31935) (Cons!31935 lt!983246 Nil!31935))))))

(declare-fun b!2765604 () Bool)

(declare-fun e!1743705 () Bool)

(declare-fun lt!983652 () List!32035)

(assert (=> b!2765604 (= e!1743705 (or (not (= (Cons!31935 lt!983246 Nil!31935) Nil!31935)) (= lt!983652 Nil!31935)))))

(declare-fun d!803075 () Bool)

(assert (=> d!803075 e!1743705))

(declare-fun res!1157326 () Bool)

(assert (=> d!803075 (=> (not res!1157326) (not e!1743705))))

(assert (=> d!803075 (= res!1157326 (= (content!4497 lt!983652) ((_ map or) (content!4497 Nil!31935) (content!4497 (Cons!31935 lt!983246 Nil!31935)))))))

(assert (=> d!803075 (= lt!983652 e!1743706)))

(declare-fun c!448629 () Bool)

(assert (=> d!803075 (= c!448629 ((_ is Nil!31935) Nil!31935))))

(assert (=> d!803075 (= (++!7905 Nil!31935 (Cons!31935 lt!983246 Nil!31935)) lt!983652)))

(declare-fun b!2765603 () Bool)

(declare-fun res!1157325 () Bool)

(assert (=> b!2765603 (=> (not res!1157325) (not e!1743705))))

(assert (=> b!2765603 (= res!1157325 (= (size!24708 lt!983652) (+ (size!24708 Nil!31935) (size!24708 (Cons!31935 lt!983246 Nil!31935)))))))

(assert (= (and d!803075 c!448629) b!2765601))

(assert (= (and d!803075 (not c!448629)) b!2765602))

(assert (= (and d!803075 res!1157326) b!2765603))

(assert (= (and b!2765603 res!1157325) b!2765604))

(declare-fun m!3188739 () Bool)

(assert (=> b!2765602 m!3188739))

(declare-fun m!3188741 () Bool)

(assert (=> d!803075 m!3188741))

(assert (=> d!803075 m!3188503))

(declare-fun m!3188743 () Bool)

(assert (=> d!803075 m!3188743))

(declare-fun m!3188745 () Bool)

(assert (=> b!2765603 m!3188745))

(assert (=> b!2765603 m!3188163))

(declare-fun m!3188747 () Bool)

(assert (=> b!2765603 m!3188747))

(assert (=> b!2765314 d!803075))

(assert (=> b!2765314 d!802999))

(declare-fun d!803077 () Bool)

(assert (=> d!803077 (= (valid!2920 (ite c!448518 (_3!2842 lt!983225) (_3!2842 lt!983232))) (validCacheMapDown!390 (cache!3796 (ite c!448518 (_3!2842 lt!983225) (_3!2842 lt!983232)))))))

(declare-fun bs!500302 () Bool)

(assert (= bs!500302 d!803077))

(declare-fun m!3188749 () Bool)

(assert (=> bs!500302 m!3188749))

(assert (=> bm!180046 d!803077))

(assert (=> bm!180033 d!802977))

(assert (=> bm!180040 d!802957))

(assert (=> bm!180029 d!803025))

(declare-fun d!803079 () Bool)

(declare-fun e!1743709 () Bool)

(assert (=> d!803079 e!1743709))

(declare-fun res!1157328 () Bool)

(assert (=> d!803079 (=> (not res!1157328) (not e!1743709))))

(declare-fun lt!983659 () tuple2!32022)

(assert (=> d!803079 (= res!1157328 (= (++!7905 (_1!18852 lt!983659) (_2!18852 lt!983659)) lt!983252))))

(declare-fun e!1743713 () tuple2!32022)

(assert (=> d!803079 (= lt!983659 e!1743713)))

(declare-fun c!448631 () Bool)

(assert (=> d!803079 (= c!448631 (lostCauseZipper!431 call!180048))))

(declare-fun lt!983661 () Unit!45983)

(declare-fun Unit!46005 () Unit!45983)

(assert (=> d!803079 (= lt!983661 Unit!46005)))

(assert (=> d!803079 (= (getSuffix!1227 lt!983252 lt!983205) lt!983201)))

(declare-fun lt!983668 () Unit!45983)

(declare-fun lt!983654 () Unit!45983)

(assert (=> d!803079 (= lt!983668 lt!983654)))

(declare-fun lt!983673 () List!32035)

(assert (=> d!803079 (= lt!983201 lt!983673)))

(assert (=> d!803079 (= lt!983654 (lemmaSamePrefixThenSameSuffix!1129 lt!983205 lt!983201 lt!983205 lt!983673 lt!983252))))

(assert (=> d!803079 (= lt!983673 (getSuffix!1227 lt!983252 lt!983205))))

(declare-fun lt!983656 () Unit!45983)

(declare-fun lt!983667 () Unit!45983)

(assert (=> d!803079 (= lt!983656 lt!983667)))

(assert (=> d!803079 (isPrefix!2543 lt!983205 (++!7905 lt!983205 lt!983201))))

(assert (=> d!803079 (= lt!983667 (lemmaConcatTwoListThenFirstIsPrefix!1655 lt!983205 lt!983201))))

(assert (=> d!803079 (= (++!7905 lt!983205 lt!983201) lt!983252)))

(assert (=> d!803079 (= (findLongestMatchInnerZipper!13 call!180048 lt!983205 1 lt!983201 lt!983252 lt!983200) lt!983659)))

(declare-fun b!2765605 () Bool)

(declare-fun e!1743714 () Bool)

(assert (=> b!2765605 (= e!1743709 e!1743714)))

(declare-fun res!1157327 () Bool)

(assert (=> b!2765605 (=> res!1157327 e!1743714)))

(assert (=> b!2765605 (= res!1157327 (isEmpty!18084 (_1!18852 lt!983659)))))

(declare-fun bm!180131 () Bool)

(declare-fun call!180140 () (InoxSet Context!4574))

(declare-fun call!180142 () C!16296)

(assert (=> bm!180131 (= call!180140 (derivationStepZipper!358 call!180048 call!180142))))

(declare-fun b!2765606 () Bool)

(declare-fun e!1743707 () Unit!45983)

(declare-fun Unit!46006 () Unit!45983)

(assert (=> b!2765606 (= e!1743707 Unit!46006)))

(declare-fun b!2765607 () Bool)

(declare-fun c!448635 () Bool)

(declare-fun call!180141 () Bool)

(assert (=> b!2765607 (= c!448635 call!180141)))

(declare-fun lt!983664 () Unit!45983)

(declare-fun lt!983663 () Unit!45983)

(assert (=> b!2765607 (= lt!983664 lt!983663)))

(declare-fun lt!983653 () C!16296)

(declare-fun lt!983671 () List!32035)

(assert (=> b!2765607 (= (++!7905 (++!7905 lt!983205 (Cons!31935 lt!983653 Nil!31935)) lt!983671) lt!983252)))

(assert (=> b!2765607 (= lt!983663 (lemmaMoveElementToOtherListKeepsConcatEq!860 lt!983205 lt!983653 lt!983671 lt!983252))))

(assert (=> b!2765607 (= lt!983671 (tail!4377 lt!983201))))

(assert (=> b!2765607 (= lt!983653 (head!6139 lt!983201))))

(declare-fun lt!983678 () Unit!45983)

(declare-fun lt!983669 () Unit!45983)

(assert (=> b!2765607 (= lt!983678 lt!983669)))

(assert (=> b!2765607 (isPrefix!2543 (++!7905 lt!983205 (Cons!31935 (head!6139 (getSuffix!1227 lt!983252 lt!983205)) Nil!31935)) lt!983252)))

(assert (=> b!2765607 (= lt!983669 (lemmaAddHeadSuffixToPrefixStillPrefix!448 lt!983205 lt!983252))))

(declare-fun lt!983677 () List!32035)

(assert (=> b!2765607 (= lt!983677 (++!7905 lt!983205 (Cons!31935 (head!6139 lt!983201) Nil!31935)))))

(declare-fun lt!983674 () Unit!45983)

(assert (=> b!2765607 (= lt!983674 e!1743707)))

(declare-fun c!448632 () Bool)

(assert (=> b!2765607 (= c!448632 (= (size!24708 lt!983205) (size!24708 lt!983252)))))

(declare-fun lt!983658 () Unit!45983)

(declare-fun lt!983672 () Unit!45983)

(assert (=> b!2765607 (= lt!983658 lt!983672)))

(assert (=> b!2765607 (<= (size!24708 lt!983205) (size!24708 lt!983252))))

(assert (=> b!2765607 (= lt!983672 (lemmaIsPrefixThenSmallerEqSize!251 lt!983205 lt!983252))))

(declare-fun e!1743711 () tuple2!32022)

(declare-fun e!1743712 () tuple2!32022)

(assert (=> b!2765607 (= e!1743711 e!1743712)))

(declare-fun bm!180132 () Bool)

(declare-fun call!180139 () Unit!45983)

(assert (=> bm!180132 (= call!180139 (lemmaIsPrefixSameLengthThenSameList!451 lt!983252 lt!983205 lt!983252))))

(declare-fun bm!180133 () Bool)

(declare-fun call!180137 () Bool)

(assert (=> bm!180133 (= call!180137 (isPrefix!2543 lt!983252 lt!983252))))

(declare-fun bm!180134 () Bool)

(declare-fun call!180138 () Unit!45983)

(assert (=> bm!180134 (= call!180138 (lemmaIsPrefixRefl!1669 lt!983252 lt!983252))))

(declare-fun b!2765608 () Bool)

(declare-fun e!1743708 () tuple2!32022)

(declare-fun lt!983657 () tuple2!32022)

(assert (=> b!2765608 (= e!1743708 lt!983657)))

(declare-fun b!2765609 () Bool)

(assert (=> b!2765609 (= e!1743713 (tuple2!32023 Nil!31935 lt!983252))))

(declare-fun b!2765610 () Bool)

(declare-fun c!448630 () Bool)

(assert (=> b!2765610 (= c!448630 call!180141)))

(declare-fun lt!983670 () Unit!45983)

(declare-fun lt!983675 () Unit!45983)

(assert (=> b!2765610 (= lt!983670 lt!983675)))

(assert (=> b!2765610 (= lt!983252 lt!983205)))

(assert (=> b!2765610 (= lt!983675 call!180139)))

(declare-fun lt!983660 () Unit!45983)

(declare-fun lt!983665 () Unit!45983)

(assert (=> b!2765610 (= lt!983660 lt!983665)))

(assert (=> b!2765610 call!180137))

(assert (=> b!2765610 (= lt!983665 call!180138)))

(declare-fun e!1743710 () tuple2!32022)

(assert (=> b!2765610 (= e!1743711 e!1743710)))

(declare-fun b!2765611 () Bool)

(declare-fun Unit!46007 () Unit!45983)

(assert (=> b!2765611 (= e!1743707 Unit!46007)))

(declare-fun lt!983676 () Unit!45983)

(assert (=> b!2765611 (= lt!983676 call!180138)))

(assert (=> b!2765611 call!180137))

(declare-fun lt!983655 () Unit!45983)

(assert (=> b!2765611 (= lt!983655 lt!983676)))

(declare-fun lt!983662 () Unit!45983)

(assert (=> b!2765611 (= lt!983662 call!180139)))

(assert (=> b!2765611 (= lt!983252 lt!983205)))

(declare-fun lt!983666 () Unit!45983)

(assert (=> b!2765611 (= lt!983666 lt!983662)))

(assert (=> b!2765611 false))

(declare-fun bm!180135 () Bool)

(assert (=> bm!180135 (= call!180142 (head!6139 lt!983201))))

(declare-fun b!2765612 () Bool)

(assert (=> b!2765612 (= e!1743708 (tuple2!32023 lt!983205 lt!983201))))

(declare-fun bm!180136 () Bool)

(declare-fun call!180136 () List!32035)

(assert (=> bm!180136 (= call!180136 (tail!4377 lt!983201))))

(declare-fun b!2765613 () Bool)

(assert (=> b!2765613 (= e!1743712 e!1743708)))

(declare-fun call!180143 () tuple2!32022)

(assert (=> b!2765613 (= lt!983657 call!180143)))

(declare-fun c!448634 () Bool)

(assert (=> b!2765613 (= c!448634 (isEmpty!18084 (_1!18852 lt!983657)))))

(declare-fun bm!180137 () Bool)

(assert (=> bm!180137 (= call!180143 (findLongestMatchInnerZipper!13 call!180140 lt!983677 (+ 1 1) call!180136 lt!983252 lt!983200))))

(declare-fun b!2765614 () Bool)

(assert (=> b!2765614 (= e!1743712 call!180143)))

(declare-fun b!2765615 () Bool)

(assert (=> b!2765615 (= e!1743710 (tuple2!32023 lt!983205 Nil!31935))))

(declare-fun bm!180138 () Bool)

(assert (=> bm!180138 (= call!180141 (nullableZipper!623 call!180048))))

(declare-fun b!2765616 () Bool)

(assert (=> b!2765616 (= e!1743714 (>= (size!24708 (_1!18852 lt!983659)) (size!24708 lt!983205)))))

(declare-fun b!2765617 () Bool)

(assert (=> b!2765617 (= e!1743713 e!1743711)))

(declare-fun c!448633 () Bool)

(assert (=> b!2765617 (= c!448633 (= 1 lt!983200))))

(declare-fun b!2765618 () Bool)

(assert (=> b!2765618 (= e!1743710 (tuple2!32023 Nil!31935 lt!983252))))

(assert (= (and d!803079 c!448631) b!2765609))

(assert (= (and d!803079 (not c!448631)) b!2765617))

(assert (= (and b!2765617 c!448633) b!2765610))

(assert (= (and b!2765617 (not c!448633)) b!2765607))

(assert (= (and b!2765610 c!448630) b!2765615))

(assert (= (and b!2765610 (not c!448630)) b!2765618))

(assert (= (and b!2765607 c!448632) b!2765611))

(assert (= (and b!2765607 (not c!448632)) b!2765606))

(assert (= (and b!2765607 c!448635) b!2765613))

(assert (= (and b!2765607 (not c!448635)) b!2765614))

(assert (= (and b!2765613 c!448634) b!2765612))

(assert (= (and b!2765613 (not c!448634)) b!2765608))

(assert (= (or b!2765613 b!2765614) bm!180136))

(assert (= (or b!2765613 b!2765614) bm!180135))

(assert (= (or b!2765613 b!2765614) bm!180131))

(assert (= (or b!2765613 b!2765614) bm!180137))

(assert (= (or b!2765610 b!2765607) bm!180138))

(assert (= (or b!2765610 b!2765611) bm!180134))

(assert (= (or b!2765610 b!2765611) bm!180132))

(assert (= (or b!2765610 b!2765611) bm!180133))

(assert (= (and d!803079 res!1157328) b!2765605))

(assert (= (and b!2765605 (not res!1157327)) b!2765616))

(declare-fun m!3188751 () Bool)

(assert (=> b!2765607 m!3188751))

(declare-fun m!3188753 () Bool)

(assert (=> b!2765607 m!3188753))

(assert (=> b!2765607 m!3188171))

(declare-fun m!3188755 () Bool)

(assert (=> b!2765607 m!3188755))

(declare-fun m!3188757 () Bool)

(assert (=> b!2765607 m!3188757))

(declare-fun m!3188759 () Bool)

(assert (=> b!2765607 m!3188759))

(declare-fun m!3188761 () Bool)

(assert (=> b!2765607 m!3188761))

(declare-fun m!3188763 () Bool)

(assert (=> b!2765607 m!3188763))

(declare-fun m!3188765 () Bool)

(assert (=> b!2765607 m!3188765))

(declare-fun m!3188767 () Bool)

(assert (=> b!2765607 m!3188767))

(assert (=> b!2765607 m!3188763))

(assert (=> b!2765607 m!3188751))

(declare-fun m!3188769 () Bool)

(assert (=> b!2765607 m!3188769))

(declare-fun m!3188771 () Bool)

(assert (=> b!2765607 m!3188771))

(assert (=> b!2765607 m!3188761))

(declare-fun m!3188773 () Bool)

(assert (=> b!2765607 m!3188773))

(declare-fun m!3188775 () Bool)

(assert (=> b!2765607 m!3188775))

(assert (=> bm!180133 m!3188183))

(declare-fun m!3188777 () Bool)

(assert (=> b!2765616 m!3188777))

(assert (=> b!2765616 m!3188757))

(declare-fun m!3188779 () Bool)

(assert (=> b!2765613 m!3188779))

(declare-fun m!3188781 () Bool)

(assert (=> bm!180137 m!3188781))

(declare-fun m!3188783 () Bool)

(assert (=> bm!180132 m!3188783))

(assert (=> bm!180134 m!3188189))

(assert (=> bm!180136 m!3188767))

(assert (=> d!803079 m!3188751))

(declare-fun m!3188785 () Bool)

(assert (=> d!803079 m!3188785))

(declare-fun m!3188787 () Bool)

(assert (=> d!803079 m!3188787))

(assert (=> d!803079 m!3188233))

(declare-fun m!3188789 () Bool)

(assert (=> d!803079 m!3188789))

(assert (=> d!803079 m!3188233))

(declare-fun m!3188791 () Bool)

(assert (=> d!803079 m!3188791))

(declare-fun m!3188793 () Bool)

(assert (=> d!803079 m!3188793))

(declare-fun m!3188795 () Bool)

(assert (=> b!2765605 m!3188795))

(assert (=> bm!180135 m!3188753))

(declare-fun m!3188797 () Bool)

(assert (=> bm!180131 m!3188797))

(declare-fun m!3188799 () Bool)

(assert (=> bm!180138 m!3188799))

(assert (=> bm!180036 d!803079))

(assert (=> bm!180042 d!803061))

(assert (=> bm!180030 d!803061))

(declare-fun d!803081 () Bool)

(declare-fun e!1743717 () Bool)

(assert (=> d!803081 e!1743717))

(declare-fun res!1157333 () Bool)

(assert (=> d!803081 (=> (not res!1157333) (not e!1743717))))

(declare-fun lt!983681 () tuple3!4748)

(assert (=> d!803081 (= res!1157333 (= (_1!18860 lt!983681) (derivationStepZipper!358 z!3597 lt!983246)))))

(declare-fun choose!16223 ((InoxSet Context!4574) C!16296 CacheUp!2358 CacheDown!2478) tuple3!4748)

(assert (=> d!803081 (= lt!983681 (choose!16223 z!3597 lt!983246 (_2!18857 lt!983233) (_3!2842 lt!983233)))))

(assert (=> d!803081 (= (derivationStepZipperMem!89 z!3597 lt!983246 (_2!18857 lt!983233) (_3!2842 lt!983233)) lt!983681)))

(declare-fun b!2765623 () Bool)

(declare-fun res!1157334 () Bool)

(assert (=> b!2765623 (=> (not res!1157334) (not e!1743717))))

(assert (=> b!2765623 (= res!1157334 (valid!2919 (_2!18860 lt!983681)))))

(declare-fun b!2765624 () Bool)

(assert (=> b!2765624 (= e!1743717 (valid!2920 (_3!2844 lt!983681)))))

(assert (= (and d!803081 res!1157333) b!2765623))

(assert (= (and b!2765623 res!1157334) b!2765624))

(declare-fun m!3188801 () Bool)

(assert (=> d!803081 m!3188801))

(declare-fun m!3188803 () Bool)

(assert (=> d!803081 m!3188803))

(declare-fun m!3188805 () Bool)

(assert (=> b!2765623 m!3188805))

(declare-fun m!3188807 () Bool)

(assert (=> b!2765624 m!3188807))

(assert (=> bm!180047 d!803081))

(declare-fun bs!500303 () Bool)

(declare-fun d!803083 () Bool)

(assert (= bs!500303 (and d!803083 d!803027)))

(declare-fun lambda!101520 () Int)

(assert (=> bs!500303 (= (= lt!983228 lt!983255) (= lambda!101520 lambda!101501))))

(assert (=> d!803083 true))

(assert (=> d!803083 (= (derivationStepZipper!358 z!3597 lt!983228) (flatMap!182 z!3597 lambda!101520))))

(declare-fun bs!500304 () Bool)

(assert (= bs!500304 d!803083))

(declare-fun m!3188809 () Bool)

(assert (=> bs!500304 m!3188809))

(assert (=> bm!180028 d!803083))

(assert (=> bm!180035 d!803025))

(declare-fun d!803085 () Bool)

(declare-fun e!1743718 () Bool)

(assert (=> d!803085 e!1743718))

(declare-fun res!1157335 () Bool)

(assert (=> d!803085 (=> (not res!1157335) (not e!1743718))))

(declare-fun lt!983682 () tuple3!4744)

(assert (=> d!803085 (= res!1157335 (valid!2919 (_2!18857 lt!983682)))))

(assert (=> d!803085 (= lt!983682 (choose!16220 (ite c!448518 (_2!18860 lt!983261) (_2!18860 lt!983210)) (ite c!448518 (_3!2844 lt!983261) (_3!2844 lt!983210)) (ite c!448518 (_1!18860 lt!983261) (_1!18860 lt!983210)) lt!983264 1 lt!983253 input!5495 lt!983200))))

(assert (=> d!803085 (= (++!7905 lt!983264 lt!983253) (list!12059 input!5495))))

(assert (=> d!803085 (= (findLongestMatchInnerZipperFastMem!22 (ite c!448518 (_2!18860 lt!983261) (_2!18860 lt!983210)) (ite c!448518 (_3!2844 lt!983261) (_3!2844 lt!983210)) (ite c!448518 (_1!18860 lt!983261) (_1!18860 lt!983210)) lt!983264 1 lt!983253 input!5495 lt!983200) lt!983682)))

(declare-fun b!2765625 () Bool)

(declare-fun res!1157336 () Bool)

(assert (=> b!2765625 (=> (not res!1157336) (not e!1743718))))

(assert (=> b!2765625 (= res!1157336 (valid!2920 (_3!2842 lt!983682)))))

(declare-fun b!2765626 () Bool)

(assert (=> b!2765626 (= e!1743718 (= (_1!18857 lt!983682) (findLongestMatchInnerZipperFast!27 (ite c!448518 (_1!18860 lt!983261) (_1!18860 lt!983210)) lt!983264 1 lt!983253 input!5495 lt!983200)))))

(assert (= (and d!803085 res!1157335) b!2765625))

(assert (= (and b!2765625 res!1157336) b!2765626))

(declare-fun m!3188811 () Bool)

(assert (=> d!803085 m!3188811))

(declare-fun m!3188813 () Bool)

(assert (=> d!803085 m!3188813))

(assert (=> d!803085 m!3188155))

(assert (=> d!803085 m!3188195))

(declare-fun m!3188815 () Bool)

(assert (=> b!2765625 m!3188815))

(assert (=> b!2765626 m!3188283))

(assert (=> bm!180041 d!803085))

(declare-fun d!803087 () Bool)

(assert (=> d!803087 (= (valid!2920 cacheDown!939) (validCacheMapDown!390 (cache!3796 cacheDown!939)))))

(declare-fun bs!500305 () Bool)

(assert (= bs!500305 d!803087))

(declare-fun m!3188817 () Bool)

(assert (=> bs!500305 m!3188817))

(assert (=> b!2765345 d!803087))

(declare-fun d!803089 () Bool)

(assert (=> d!803089 (= (valid!2919 cacheUp!820) (validCacheMapUp!359 (cache!3795 cacheUp!820)))))

(declare-fun bs!500306 () Bool)

(assert (= bs!500306 d!803089))

(declare-fun m!3188819 () Bool)

(assert (=> bs!500306 m!3188819))

(assert (=> start!267716 d!803089))

(declare-fun d!803091 () Bool)

(declare-fun res!1157339 () Bool)

(declare-fun e!1743721 () Bool)

(assert (=> d!803091 (=> (not res!1157339) (not e!1743721))))

(assert (=> d!803091 (= res!1157339 ((_ is HashMap!3652) (cache!3795 cacheUp!820)))))

(assert (=> d!803091 (= (inv!43366 cacheUp!820) e!1743721)))

(declare-fun b!2765629 () Bool)

(assert (=> b!2765629 (= e!1743721 (validCacheMapUp!359 (cache!3795 cacheUp!820)))))

(assert (= (and d!803091 res!1157339) b!2765629))

(assert (=> b!2765629 m!3188819))

(assert (=> start!267716 d!803091))

(declare-fun d!803093 () Bool)

(declare-fun res!1157342 () Bool)

(declare-fun e!1743724 () Bool)

(assert (=> d!803093 (=> (not res!1157342) (not e!1743724))))

(assert (=> d!803093 (= res!1157342 ((_ is HashMap!3653) (cache!3796 cacheDown!939)))))

(assert (=> d!803093 (= (inv!43367 cacheDown!939) e!1743724)))

(declare-fun b!2765632 () Bool)

(assert (=> b!2765632 (= e!1743724 (validCacheMapDown!390 (cache!3796 cacheDown!939)))))

(assert (= (and d!803093 res!1157342) b!2765632))

(assert (=> b!2765632 m!3188817))

(assert (=> start!267716 d!803093))

(declare-fun d!803095 () Bool)

(assert (=> d!803095 (= (inv!43368 input!5495) (isBalanced!3033 (c!448533 input!5495)))))

(declare-fun bs!500307 () Bool)

(assert (= bs!500307 d!803095))

(assert (=> bs!500307 m!3188551))

(assert (=> start!267716 d!803095))

(assert (=> b!2765359 d!802979))

(declare-fun d!803097 () Bool)

(assert (=> d!803097 (= (++!7905 (++!7905 Nil!31935 (Cons!31935 lt!983228 Nil!31935)) lt!983201) lt!983252)))

(declare-fun lt!983683 () Unit!45983)

(assert (=> d!803097 (= lt!983683 (choose!16216 Nil!31935 lt!983228 lt!983201 lt!983252))))

(assert (=> d!803097 (= (++!7905 Nil!31935 (Cons!31935 lt!983228 lt!983201)) lt!983252)))

(assert (=> d!803097 (= (lemmaMoveElementToOtherListKeepsConcatEq!860 Nil!31935 lt!983228 lt!983201 lt!983252) lt!983683)))

(declare-fun bs!500308 () Bool)

(assert (= bs!500308 d!803097))

(assert (=> bs!500308 m!3188239))

(assert (=> bs!500308 m!3188239))

(declare-fun m!3188821 () Bool)

(assert (=> bs!500308 m!3188821))

(declare-fun m!3188823 () Bool)

(assert (=> bs!500308 m!3188823))

(declare-fun m!3188825 () Bool)

(assert (=> bs!500308 m!3188825))

(assert (=> b!2765359 d!803097))

(declare-fun b!2765633 () Bool)

(declare-fun e!1743726 () List!32035)

(assert (=> b!2765633 (= e!1743726 lt!983201)))

(declare-fun b!2765634 () Bool)

(assert (=> b!2765634 (= e!1743726 (Cons!31935 (h!37355 lt!983205) (++!7905 (t!228155 lt!983205) lt!983201)))))

(declare-fun b!2765636 () Bool)

(declare-fun lt!983684 () List!32035)

(declare-fun e!1743725 () Bool)

(assert (=> b!2765636 (= e!1743725 (or (not (= lt!983201 Nil!31935)) (= lt!983684 lt!983205)))))

(declare-fun d!803099 () Bool)

(assert (=> d!803099 e!1743725))

(declare-fun res!1157344 () Bool)

(assert (=> d!803099 (=> (not res!1157344) (not e!1743725))))

(assert (=> d!803099 (= res!1157344 (= (content!4497 lt!983684) ((_ map or) (content!4497 lt!983205) (content!4497 lt!983201))))))

(assert (=> d!803099 (= lt!983684 e!1743726)))

(declare-fun c!448636 () Bool)

(assert (=> d!803099 (= c!448636 ((_ is Nil!31935) lt!983205))))

(assert (=> d!803099 (= (++!7905 lt!983205 lt!983201) lt!983684)))

(declare-fun b!2765635 () Bool)

(declare-fun res!1157343 () Bool)

(assert (=> b!2765635 (=> (not res!1157343) (not e!1743725))))

(assert (=> b!2765635 (= res!1157343 (= (size!24708 lt!983684) (+ (size!24708 lt!983205) (size!24708 lt!983201))))))

(assert (= (and d!803099 c!448636) b!2765633))

(assert (= (and d!803099 (not c!448636)) b!2765634))

(assert (= (and d!803099 res!1157344) b!2765635))

(assert (= (and b!2765635 res!1157343) b!2765636))

(declare-fun m!3188827 () Bool)

(assert (=> b!2765634 m!3188827))

(declare-fun m!3188829 () Bool)

(assert (=> d!803099 m!3188829))

(declare-fun m!3188831 () Bool)

(assert (=> d!803099 m!3188831))

(declare-fun m!3188833 () Bool)

(assert (=> d!803099 m!3188833))

(declare-fun m!3188835 () Bool)

(assert (=> b!2765635 m!3188835))

(assert (=> b!2765635 m!3188757))

(declare-fun m!3188837 () Bool)

(assert (=> b!2765635 m!3188837))

(assert (=> b!2765359 d!803099))

(assert (=> b!2765359 d!803005))

(declare-fun d!803101 () Bool)

(assert (=> d!803101 (= (head!6139 lt!983252) (h!37355 lt!983252))))

(assert (=> b!2765359 d!803101))

(assert (=> b!2765359 d!802991))

(assert (=> b!2765359 d!802999))

(assert (=> b!2765359 d!803007))

(assert (=> b!2765359 d!803009))

(declare-fun b!2765637 () Bool)

(declare-fun e!1743728 () List!32035)

(assert (=> b!2765637 (= e!1743728 (Cons!31935 lt!983228 Nil!31935))))

(declare-fun b!2765638 () Bool)

(assert (=> b!2765638 (= e!1743728 (Cons!31935 (h!37355 Nil!31935) (++!7905 (t!228155 Nil!31935) (Cons!31935 lt!983228 Nil!31935))))))

(declare-fun b!2765640 () Bool)

(declare-fun e!1743727 () Bool)

(declare-fun lt!983685 () List!32035)

(assert (=> b!2765640 (= e!1743727 (or (not (= (Cons!31935 lt!983228 Nil!31935) Nil!31935)) (= lt!983685 Nil!31935)))))

(declare-fun d!803103 () Bool)

(assert (=> d!803103 e!1743727))

(declare-fun res!1157346 () Bool)

(assert (=> d!803103 (=> (not res!1157346) (not e!1743727))))

(assert (=> d!803103 (= res!1157346 (= (content!4497 lt!983685) ((_ map or) (content!4497 Nil!31935) (content!4497 (Cons!31935 lt!983228 Nil!31935)))))))

(assert (=> d!803103 (= lt!983685 e!1743728)))

(declare-fun c!448637 () Bool)

(assert (=> d!803103 (= c!448637 ((_ is Nil!31935) Nil!31935))))

(assert (=> d!803103 (= (++!7905 Nil!31935 (Cons!31935 lt!983228 Nil!31935)) lt!983685)))

(declare-fun b!2765639 () Bool)

(declare-fun res!1157345 () Bool)

(assert (=> b!2765639 (=> (not res!1157345) (not e!1743727))))

(assert (=> b!2765639 (= res!1157345 (= (size!24708 lt!983685) (+ (size!24708 Nil!31935) (size!24708 (Cons!31935 lt!983228 Nil!31935)))))))

(assert (= (and d!803103 c!448637) b!2765637))

(assert (= (and d!803103 (not c!448637)) b!2765638))

(assert (= (and d!803103 res!1157346) b!2765639))

(assert (= (and b!2765639 res!1157345) b!2765640))

(declare-fun m!3188839 () Bool)

(assert (=> b!2765638 m!3188839))

(declare-fun m!3188841 () Bool)

(assert (=> d!803103 m!3188841))

(assert (=> d!803103 m!3188503))

(declare-fun m!3188843 () Bool)

(assert (=> d!803103 m!3188843))

(declare-fun m!3188845 () Bool)

(assert (=> b!2765639 m!3188845))

(assert (=> b!2765639 m!3188163))

(declare-fun m!3188847 () Bool)

(assert (=> b!2765639 m!3188847))

(assert (=> b!2765359 d!803103))

(assert (=> b!2765359 d!803015))

(assert (=> b!2765359 d!803017))

(declare-fun mapNonEmpty!17089 () Bool)

(declare-fun mapRes!17089 () Bool)

(declare-fun tp!874033 () Bool)

(declare-fun e!1743745 () Bool)

(assert (=> mapNonEmpty!17089 (= mapRes!17089 (and tp!874033 e!1743745))))

(declare-fun mapKey!17089 () (_ BitVec 32))

(declare-fun mapRest!17089 () (Array (_ BitVec 32) List!32037))

(declare-fun mapValue!17089 () List!32037)

(assert (=> mapNonEmpty!17089 (= mapRest!17085 (store mapRest!17089 mapKey!17089 mapValue!17089))))

(declare-fun e!1743741 () Bool)

(declare-fun b!2765655 () Bool)

(declare-fun tp!874034 () Bool)

(declare-fun e!1743746 () Bool)

(declare-fun setRes!22546 () Bool)

(declare-fun tp_is_empty!14003 () Bool)

(declare-fun mapDefault!17089 () List!32037)

(assert (=> b!2765655 (= e!1743741 (and (inv!43369 (_1!18853 (_1!18854 (h!37357 mapDefault!17089)))) e!1743746 tp_is_empty!14003 setRes!22546 tp!874034))))

(declare-fun condSetEmpty!22546 () Bool)

(assert (=> b!2765655 (= condSetEmpty!22546 (= (_2!18854 (h!37357 mapDefault!17089)) ((as const (Array Context!4574 Bool)) false)))))

(declare-fun setRes!22545 () Bool)

(declare-fun e!1743743 () Bool)

(declare-fun setElem!22546 () Context!4574)

(declare-fun tp!874027 () Bool)

(declare-fun setNonEmpty!22545 () Bool)

(assert (=> setNonEmpty!22545 (= setRes!22545 (and tp!874027 (inv!43369 setElem!22546) e!1743743))))

(declare-fun setRest!22545 () (InoxSet Context!4574))

(assert (=> setNonEmpty!22545 (= (_2!18854 (h!37357 mapValue!17089)) ((_ map or) (store ((as const (Array Context!4574 Bool)) false) setElem!22546 true) setRest!22545))))

(declare-fun setIsEmpty!22545 () Bool)

(assert (=> setIsEmpty!22545 setRes!22545))

(declare-fun condMapEmpty!17089 () Bool)

(assert (=> mapNonEmpty!17085 (= condMapEmpty!17089 (= mapRest!17085 ((as const (Array (_ BitVec 32) List!32037)) mapDefault!17089)))))

(assert (=> mapNonEmpty!17085 (= tp!873996 (and e!1743741 mapRes!17089))))

(declare-fun b!2765656 () Bool)

(declare-fun e!1743744 () Bool)

(declare-fun tp!874032 () Bool)

(assert (=> b!2765656 (= e!1743744 tp!874032)))

(declare-fun b!2765657 () Bool)

(declare-fun tp!874030 () Bool)

(assert (=> b!2765657 (= e!1743743 tp!874030)))

(declare-fun setIsEmpty!22546 () Bool)

(assert (=> setIsEmpty!22546 setRes!22546))

(declare-fun setNonEmpty!22546 () Bool)

(declare-fun setElem!22545 () Context!4574)

(declare-fun e!1743742 () Bool)

(declare-fun tp!874035 () Bool)

(assert (=> setNonEmpty!22546 (= setRes!22546 (and tp!874035 (inv!43369 setElem!22545) e!1743742))))

(declare-fun setRest!22546 () (InoxSet Context!4574))

(assert (=> setNonEmpty!22546 (= (_2!18854 (h!37357 mapDefault!17089)) ((_ map or) (store ((as const (Array Context!4574 Bool)) false) setElem!22545 true) setRest!22546))))

(declare-fun b!2765658 () Bool)

(declare-fun tp!874028 () Bool)

(assert (=> b!2765658 (= e!1743745 (and (inv!43369 (_1!18853 (_1!18854 (h!37357 mapValue!17089)))) e!1743744 tp_is_empty!14003 setRes!22545 tp!874028))))

(declare-fun condSetEmpty!22545 () Bool)

(assert (=> b!2765658 (= condSetEmpty!22545 (= (_2!18854 (h!37357 mapValue!17089)) ((as const (Array Context!4574 Bool)) false)))))

(declare-fun b!2765659 () Bool)

(declare-fun tp!874029 () Bool)

(assert (=> b!2765659 (= e!1743746 tp!874029)))

(declare-fun b!2765660 () Bool)

(declare-fun tp!874031 () Bool)

(assert (=> b!2765660 (= e!1743742 tp!874031)))

(declare-fun mapIsEmpty!17089 () Bool)

(assert (=> mapIsEmpty!17089 mapRes!17089))

(assert (= (and mapNonEmpty!17085 condMapEmpty!17089) mapIsEmpty!17089))

(assert (= (and mapNonEmpty!17085 (not condMapEmpty!17089)) mapNonEmpty!17089))

(assert (= b!2765658 b!2765656))

(assert (= (and b!2765658 condSetEmpty!22545) setIsEmpty!22545))

(assert (= (and b!2765658 (not condSetEmpty!22545)) setNonEmpty!22545))

(assert (= setNonEmpty!22545 b!2765657))

(assert (= (and mapNonEmpty!17089 ((_ is Cons!31937) mapValue!17089)) b!2765658))

(assert (= b!2765655 b!2765659))

(assert (= (and b!2765655 condSetEmpty!22546) setIsEmpty!22546))

(assert (= (and b!2765655 (not condSetEmpty!22546)) setNonEmpty!22546))

(assert (= setNonEmpty!22546 b!2765660))

(assert (= (and mapNonEmpty!17085 ((_ is Cons!31937) mapDefault!17089)) b!2765655))

(declare-fun m!3188849 () Bool)

(assert (=> b!2765655 m!3188849))

(declare-fun m!3188851 () Bool)

(assert (=> setNonEmpty!22545 m!3188851))

(declare-fun m!3188853 () Bool)

(assert (=> setNonEmpty!22546 m!3188853))

(declare-fun m!3188855 () Bool)

(assert (=> mapNonEmpty!17089 m!3188855))

(declare-fun m!3188857 () Bool)

(assert (=> b!2765658 m!3188857))

(declare-fun setElem!22549 () Context!4574)

(declare-fun setNonEmpty!22549 () Bool)

(declare-fun e!1743755 () Bool)

(declare-fun tp!874045 () Bool)

(declare-fun setRes!22549 () Bool)

(assert (=> setNonEmpty!22549 (= setRes!22549 (and tp!874045 (inv!43369 setElem!22549) e!1743755))))

(declare-fun setRest!22549 () (InoxSet Context!4574))

(assert (=> setNonEmpty!22549 (= (_2!18854 (h!37357 mapValue!17085)) ((_ map or) (store ((as const (Array Context!4574 Bool)) false) setElem!22549 true) setRest!22549))))

(declare-fun b!2765669 () Bool)

(declare-fun e!1743753 () Bool)

(declare-fun tp!874046 () Bool)

(declare-fun e!1743754 () Bool)

(assert (=> b!2765669 (= e!1743754 (and (inv!43369 (_1!18853 (_1!18854 (h!37357 mapValue!17085)))) e!1743753 tp_is_empty!14003 setRes!22549 tp!874046))))

(declare-fun condSetEmpty!22549 () Bool)

(assert (=> b!2765669 (= condSetEmpty!22549 (= (_2!18854 (h!37357 mapValue!17085)) ((as const (Array Context!4574 Bool)) false)))))

(declare-fun b!2765670 () Bool)

(declare-fun tp!874047 () Bool)

(assert (=> b!2765670 (= e!1743753 tp!874047)))

(assert (=> mapNonEmpty!17085 (= tp!874003 e!1743754)))

(declare-fun b!2765671 () Bool)

(declare-fun tp!874044 () Bool)

(assert (=> b!2765671 (= e!1743755 tp!874044)))

(declare-fun setIsEmpty!22549 () Bool)

(assert (=> setIsEmpty!22549 setRes!22549))

(assert (= b!2765669 b!2765670))

(assert (= (and b!2765669 condSetEmpty!22549) setIsEmpty!22549))

(assert (= (and b!2765669 (not condSetEmpty!22549)) setNonEmpty!22549))

(assert (= setNonEmpty!22549 b!2765671))

(assert (= (and mapNonEmpty!17085 ((_ is Cons!31937) mapValue!17085)) b!2765669))

(declare-fun m!3188859 () Bool)

(assert (=> setNonEmpty!22549 m!3188859))

(declare-fun m!3188861 () Bool)

(assert (=> b!2765669 m!3188861))

(declare-fun setIsEmpty!22552 () Bool)

(declare-fun setRes!22552 () Bool)

(assert (=> setIsEmpty!22552 setRes!22552))

(declare-fun b!2765680 () Bool)

(declare-fun e!1743764 () Bool)

(declare-fun tp!874060 () Bool)

(assert (=> b!2765680 (= e!1743764 tp!874060)))

(declare-fun e!1743763 () Bool)

(assert (=> b!2765321 (= tp!874004 e!1743763)))

(declare-fun setElem!22552 () Context!4574)

(declare-fun setNonEmpty!22552 () Bool)

(declare-fun tp!874059 () Bool)

(declare-fun e!1743762 () Bool)

(assert (=> setNonEmpty!22552 (= setRes!22552 (and tp!874059 (inv!43369 setElem!22552) e!1743762))))

(declare-fun setRest!22552 () (InoxSet Context!4574))

(assert (=> setNonEmpty!22552 (= (_2!18856 (h!37358 mapDefault!17085)) ((_ map or) (store ((as const (Array Context!4574 Bool)) false) setElem!22552 true) setRest!22552))))

(declare-fun tp!874061 () Bool)

(declare-fun tp!874062 () Bool)

(declare-fun b!2765681 () Bool)

(assert (=> b!2765681 (= e!1743763 (and tp!874061 (inv!43369 (_2!18855 (_1!18856 (h!37358 mapDefault!17085)))) e!1743764 tp_is_empty!14003 setRes!22552 tp!874062))))

(declare-fun condSetEmpty!22552 () Bool)

(assert (=> b!2765681 (= condSetEmpty!22552 (= (_2!18856 (h!37358 mapDefault!17085)) ((as const (Array Context!4574 Bool)) false)))))

(declare-fun b!2765682 () Bool)

(declare-fun tp!874058 () Bool)

(assert (=> b!2765682 (= e!1743762 tp!874058)))

(assert (= b!2765681 b!2765680))

(assert (= (and b!2765681 condSetEmpty!22552) setIsEmpty!22552))

(assert (= (and b!2765681 (not condSetEmpty!22552)) setNonEmpty!22552))

(assert (= setNonEmpty!22552 b!2765682))

(assert (= (and b!2765321 ((_ is Cons!31938) mapDefault!17085)) b!2765681))

(declare-fun m!3188863 () Bool)

(assert (=> setNonEmpty!22552 m!3188863))

(declare-fun m!3188865 () Bool)

(assert (=> b!2765681 m!3188865))

(declare-fun setRes!22557 () Bool)

(declare-fun setNonEmpty!22557 () Bool)

(declare-fun tp!874091 () Bool)

(declare-fun setElem!22557 () Context!4574)

(declare-fun e!1743777 () Bool)

(assert (=> setNonEmpty!22557 (= setRes!22557 (and tp!874091 (inv!43369 setElem!22557) e!1743777))))

(declare-fun mapDefault!17092 () List!32038)

(declare-fun setRest!22557 () (InoxSet Context!4574))

(assert (=> setNonEmpty!22557 (= (_2!18856 (h!37358 mapDefault!17092)) ((_ map or) (store ((as const (Array Context!4574 Bool)) false) setElem!22557 true) setRest!22557))))

(declare-fun setIsEmpty!22557 () Bool)

(declare-fun setRes!22558 () Bool)

(assert (=> setIsEmpty!22557 setRes!22558))

(declare-fun mapIsEmpty!17092 () Bool)

(declare-fun mapRes!17092 () Bool)

(assert (=> mapIsEmpty!17092 mapRes!17092))

(declare-fun mapNonEmpty!17092 () Bool)

(declare-fun tp!874092 () Bool)

(declare-fun e!1743779 () Bool)

(assert (=> mapNonEmpty!17092 (= mapRes!17092 (and tp!874092 e!1743779))))

(declare-fun mapValue!17092 () List!32038)

(declare-fun mapKey!17092 () (_ BitVec 32))

(declare-fun mapRest!17092 () (Array (_ BitVec 32) List!32038))

(assert (=> mapNonEmpty!17092 (= mapRest!17086 (store mapRest!17092 mapKey!17092 mapValue!17092))))

(declare-fun b!2765698 () Bool)

(declare-fun e!1743782 () Bool)

(declare-fun tp!874089 () Bool)

(assert (=> b!2765698 (= e!1743782 tp!874089)))

(declare-fun b!2765699 () Bool)

(declare-fun e!1743780 () Bool)

(declare-fun tp!874088 () Bool)

(assert (=> b!2765699 (= e!1743780 tp!874088)))

(declare-fun setIsEmpty!22558 () Bool)

(assert (=> setIsEmpty!22558 setRes!22557))

(declare-fun b!2765697 () Bool)

(declare-fun tp!874095 () Bool)

(assert (=> b!2765697 (= e!1743777 tp!874095)))

(declare-fun condMapEmpty!17092 () Bool)

(assert (=> mapNonEmpty!17086 (= condMapEmpty!17092 (= mapRest!17086 ((as const (Array (_ BitVec 32) List!32038)) mapDefault!17092)))))

(declare-fun e!1743781 () Bool)

(assert (=> mapNonEmpty!17086 (= tp!874008 (and e!1743781 mapRes!17092))))

(declare-fun b!2765700 () Bool)

(declare-fun tp!874090 () Bool)

(declare-fun tp!874086 () Bool)

(assert (=> b!2765700 (= e!1743781 (and tp!874086 (inv!43369 (_2!18855 (_1!18856 (h!37358 mapDefault!17092)))) e!1743782 tp_is_empty!14003 setRes!22557 tp!874090))))

(declare-fun condSetEmpty!22557 () Bool)

(assert (=> b!2765700 (= condSetEmpty!22557 (= (_2!18856 (h!37358 mapDefault!17092)) ((as const (Array Context!4574 Bool)) false)))))

(declare-fun b!2765701 () Bool)

(declare-fun e!1743778 () Bool)

(declare-fun tp!874087 () Bool)

(assert (=> b!2765701 (= e!1743778 tp!874087)))

(declare-fun setElem!22558 () Context!4574)

(declare-fun setNonEmpty!22558 () Bool)

(declare-fun tp!874093 () Bool)

(assert (=> setNonEmpty!22558 (= setRes!22558 (and tp!874093 (inv!43369 setElem!22558) e!1743778))))

(declare-fun setRest!22558 () (InoxSet Context!4574))

(assert (=> setNonEmpty!22558 (= (_2!18856 (h!37358 mapValue!17092)) ((_ map or) (store ((as const (Array Context!4574 Bool)) false) setElem!22558 true) setRest!22558))))

(declare-fun tp!874094 () Bool)

(declare-fun tp!874085 () Bool)

(declare-fun b!2765702 () Bool)

(assert (=> b!2765702 (= e!1743779 (and tp!874094 (inv!43369 (_2!18855 (_1!18856 (h!37358 mapValue!17092)))) e!1743780 tp_is_empty!14003 setRes!22558 tp!874085))))

(declare-fun condSetEmpty!22558 () Bool)

(assert (=> b!2765702 (= condSetEmpty!22558 (= (_2!18856 (h!37358 mapValue!17092)) ((as const (Array Context!4574 Bool)) false)))))

(assert (= (and mapNonEmpty!17086 condMapEmpty!17092) mapIsEmpty!17092))

(assert (= (and mapNonEmpty!17086 (not condMapEmpty!17092)) mapNonEmpty!17092))

(assert (= b!2765702 b!2765699))

(assert (= (and b!2765702 condSetEmpty!22558) setIsEmpty!22557))

(assert (= (and b!2765702 (not condSetEmpty!22558)) setNonEmpty!22558))

(assert (= setNonEmpty!22558 b!2765701))

(assert (= (and mapNonEmpty!17092 ((_ is Cons!31938) mapValue!17092)) b!2765702))

(assert (= b!2765700 b!2765698))

(assert (= (and b!2765700 condSetEmpty!22557) setIsEmpty!22558))

(assert (= (and b!2765700 (not condSetEmpty!22557)) setNonEmpty!22557))

(assert (= setNonEmpty!22557 b!2765697))

(assert (= (and mapNonEmpty!17086 ((_ is Cons!31938) mapDefault!17092)) b!2765700))

(declare-fun m!3188867 () Bool)

(assert (=> b!2765702 m!3188867))

(declare-fun m!3188869 () Bool)

(assert (=> mapNonEmpty!17092 m!3188869))

(declare-fun m!3188871 () Bool)

(assert (=> b!2765700 m!3188871))

(declare-fun m!3188873 () Bool)

(assert (=> setNonEmpty!22558 m!3188873))

(declare-fun m!3188875 () Bool)

(assert (=> setNonEmpty!22557 m!3188875))

(declare-fun setIsEmpty!22559 () Bool)

(declare-fun setRes!22559 () Bool)

(assert (=> setIsEmpty!22559 setRes!22559))

(declare-fun b!2765703 () Bool)

(declare-fun e!1743785 () Bool)

(declare-fun tp!874098 () Bool)

(assert (=> b!2765703 (= e!1743785 tp!874098)))

(declare-fun e!1743784 () Bool)

(assert (=> mapNonEmpty!17086 (= tp!874000 e!1743784)))

(declare-fun e!1743783 () Bool)

(declare-fun tp!874097 () Bool)

(declare-fun setNonEmpty!22559 () Bool)

(declare-fun setElem!22559 () Context!4574)

(assert (=> setNonEmpty!22559 (= setRes!22559 (and tp!874097 (inv!43369 setElem!22559) e!1743783))))

(declare-fun setRest!22559 () (InoxSet Context!4574))

(assert (=> setNonEmpty!22559 (= (_2!18856 (h!37358 mapValue!17086)) ((_ map or) (store ((as const (Array Context!4574 Bool)) false) setElem!22559 true) setRest!22559))))

(declare-fun tp!874099 () Bool)

(declare-fun b!2765704 () Bool)

(declare-fun tp!874100 () Bool)

(assert (=> b!2765704 (= e!1743784 (and tp!874099 (inv!43369 (_2!18855 (_1!18856 (h!37358 mapValue!17086)))) e!1743785 tp_is_empty!14003 setRes!22559 tp!874100))))

(declare-fun condSetEmpty!22559 () Bool)

(assert (=> b!2765704 (= condSetEmpty!22559 (= (_2!18856 (h!37358 mapValue!17086)) ((as const (Array Context!4574 Bool)) false)))))

(declare-fun b!2765705 () Bool)

(declare-fun tp!874096 () Bool)

(assert (=> b!2765705 (= e!1743783 tp!874096)))

(assert (= b!2765704 b!2765703))

(assert (= (and b!2765704 condSetEmpty!22559) setIsEmpty!22559))

(assert (= (and b!2765704 (not condSetEmpty!22559)) setNonEmpty!22559))

(assert (= setNonEmpty!22559 b!2765705))

(assert (= (and mapNonEmpty!17086 ((_ is Cons!31938) mapValue!17086)) b!2765704))

(declare-fun m!3188877 () Bool)

(assert (=> setNonEmpty!22559 m!3188877))

(declare-fun m!3188879 () Bool)

(assert (=> b!2765704 m!3188879))

(declare-fun tp!874107 () Bool)

(declare-fun tp!874108 () Bool)

(declare-fun b!2765714 () Bool)

(declare-fun e!1743791 () Bool)

(assert (=> b!2765714 (= e!1743791 (and (inv!43370 (left!24363 (c!448533 input!5495))) tp!874108 (inv!43370 (right!24693 (c!448533 input!5495))) tp!874107))))

(declare-fun b!2765716 () Bool)

(declare-fun e!1743790 () Bool)

(declare-fun tp!874109 () Bool)

(assert (=> b!2765716 (= e!1743790 tp!874109)))

(declare-fun b!2765715 () Bool)

(declare-fun inv!43373 (IArray!19907) Bool)

(assert (=> b!2765715 (= e!1743791 (and (inv!43373 (xs!13060 (c!448533 input!5495))) e!1743790))))

(assert (=> b!2765348 (= tp!873993 (and (inv!43370 (c!448533 input!5495)) e!1743791))))

(assert (= (and b!2765348 ((_ is Node!9951) (c!448533 input!5495))) b!2765714))

(assert (= b!2765715 b!2765716))

(assert (= (and b!2765348 ((_ is Leaf!15154) (c!448533 input!5495))) b!2765715))

(declare-fun m!3188881 () Bool)

(assert (=> b!2765714 m!3188881))

(declare-fun m!3188883 () Bool)

(assert (=> b!2765714 m!3188883))

(declare-fun m!3188885 () Bool)

(assert (=> b!2765715 m!3188885))

(assert (=> b!2765348 m!3188267))

(declare-fun setIsEmpty!22560 () Bool)

(declare-fun setRes!22560 () Bool)

(assert (=> setIsEmpty!22560 setRes!22560))

(declare-fun b!2765717 () Bool)

(declare-fun e!1743794 () Bool)

(declare-fun tp!874112 () Bool)

(assert (=> b!2765717 (= e!1743794 tp!874112)))

(declare-fun e!1743793 () Bool)

(assert (=> b!2765311 (= tp!874005 e!1743793)))

(declare-fun setElem!22560 () Context!4574)

(declare-fun tp!874111 () Bool)

(declare-fun setNonEmpty!22560 () Bool)

(declare-fun e!1743792 () Bool)

(assert (=> setNonEmpty!22560 (= setRes!22560 (and tp!874111 (inv!43369 setElem!22560) e!1743792))))

(declare-fun setRest!22560 () (InoxSet Context!4574))

(assert (=> setNonEmpty!22560 (= (_2!18856 (h!37358 (zeroValue!4006 (v!33545 (underlying!7697 (v!33546 (underlying!7698 (cache!3796 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4574 Bool)) false) setElem!22560 true) setRest!22560))))

(declare-fun tp!874114 () Bool)

(declare-fun b!2765718 () Bool)

(declare-fun tp!874113 () Bool)

(assert (=> b!2765718 (= e!1743793 (and tp!874113 (inv!43369 (_2!18855 (_1!18856 (h!37358 (zeroValue!4006 (v!33545 (underlying!7697 (v!33546 (underlying!7698 (cache!3796 cacheDown!939)))))))))) e!1743794 tp_is_empty!14003 setRes!22560 tp!874114))))

(declare-fun condSetEmpty!22560 () Bool)

(assert (=> b!2765718 (= condSetEmpty!22560 (= (_2!18856 (h!37358 (zeroValue!4006 (v!33545 (underlying!7697 (v!33546 (underlying!7698 (cache!3796 cacheDown!939)))))))) ((as const (Array Context!4574 Bool)) false)))))

(declare-fun b!2765719 () Bool)

(declare-fun tp!874110 () Bool)

(assert (=> b!2765719 (= e!1743792 tp!874110)))

(assert (= b!2765718 b!2765717))

(assert (= (and b!2765718 condSetEmpty!22560) setIsEmpty!22560))

(assert (= (and b!2765718 (not condSetEmpty!22560)) setNonEmpty!22560))

(assert (= setNonEmpty!22560 b!2765719))

(assert (= (and b!2765311 ((_ is Cons!31938) (zeroValue!4006 (v!33545 (underlying!7697 (v!33546 (underlying!7698 (cache!3796 cacheDown!939)))))))) b!2765718))

(declare-fun m!3188887 () Bool)

(assert (=> setNonEmpty!22560 m!3188887))

(declare-fun m!3188889 () Bool)

(assert (=> b!2765718 m!3188889))

(declare-fun setIsEmpty!22561 () Bool)

(declare-fun setRes!22561 () Bool)

(assert (=> setIsEmpty!22561 setRes!22561))

(declare-fun b!2765720 () Bool)

(declare-fun e!1743797 () Bool)

(declare-fun tp!874117 () Bool)

(assert (=> b!2765720 (= e!1743797 tp!874117)))

(declare-fun e!1743796 () Bool)

(assert (=> b!2765311 (= tp!873994 e!1743796)))

(declare-fun setNonEmpty!22561 () Bool)

(declare-fun e!1743795 () Bool)

(declare-fun tp!874116 () Bool)

(declare-fun setElem!22561 () Context!4574)

(assert (=> setNonEmpty!22561 (= setRes!22561 (and tp!874116 (inv!43369 setElem!22561) e!1743795))))

(declare-fun setRest!22561 () (InoxSet Context!4574))

(assert (=> setNonEmpty!22561 (= (_2!18856 (h!37358 (minValue!4006 (v!33545 (underlying!7697 (v!33546 (underlying!7698 (cache!3796 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4574 Bool)) false) setElem!22561 true) setRest!22561))))

(declare-fun tp!874119 () Bool)

(declare-fun b!2765721 () Bool)

(declare-fun tp!874118 () Bool)

(assert (=> b!2765721 (= e!1743796 (and tp!874118 (inv!43369 (_2!18855 (_1!18856 (h!37358 (minValue!4006 (v!33545 (underlying!7697 (v!33546 (underlying!7698 (cache!3796 cacheDown!939)))))))))) e!1743797 tp_is_empty!14003 setRes!22561 tp!874119))))

(declare-fun condSetEmpty!22561 () Bool)

(assert (=> b!2765721 (= condSetEmpty!22561 (= (_2!18856 (h!37358 (minValue!4006 (v!33545 (underlying!7697 (v!33546 (underlying!7698 (cache!3796 cacheDown!939)))))))) ((as const (Array Context!4574 Bool)) false)))))

(declare-fun b!2765722 () Bool)

(declare-fun tp!874115 () Bool)

(assert (=> b!2765722 (= e!1743795 tp!874115)))

(assert (= b!2765721 b!2765720))

(assert (= (and b!2765721 condSetEmpty!22561) setIsEmpty!22561))

(assert (= (and b!2765721 (not condSetEmpty!22561)) setNonEmpty!22561))

(assert (= setNonEmpty!22561 b!2765722))

(assert (= (and b!2765311 ((_ is Cons!31938) (minValue!4006 (v!33545 (underlying!7697 (v!33546 (underlying!7698 (cache!3796 cacheDown!939)))))))) b!2765721))

(declare-fun m!3188891 () Bool)

(assert (=> setNonEmpty!22561 m!3188891))

(declare-fun m!3188893 () Bool)

(assert (=> b!2765721 m!3188893))

(declare-fun condSetEmpty!22564 () Bool)

(assert (=> setNonEmpty!22540 (= condSetEmpty!22564 (= setRest!22540 ((as const (Array Context!4574 Bool)) false)))))

(declare-fun setRes!22564 () Bool)

(assert (=> setNonEmpty!22540 (= tp!873995 setRes!22564)))

(declare-fun setIsEmpty!22564 () Bool)

(assert (=> setIsEmpty!22564 setRes!22564))

(declare-fun tp!874124 () Bool)

(declare-fun setNonEmpty!22564 () Bool)

(declare-fun e!1743800 () Bool)

(declare-fun setElem!22564 () Context!4574)

(assert (=> setNonEmpty!22564 (= setRes!22564 (and tp!874124 (inv!43369 setElem!22564) e!1743800))))

(declare-fun setRest!22564 () (InoxSet Context!4574))

(assert (=> setNonEmpty!22564 (= setRest!22540 ((_ map or) (store ((as const (Array Context!4574 Bool)) false) setElem!22564 true) setRest!22564))))

(declare-fun b!2765727 () Bool)

(declare-fun tp!874125 () Bool)

(assert (=> b!2765727 (= e!1743800 tp!874125)))

(assert (= (and setNonEmpty!22540 condSetEmpty!22564) setIsEmpty!22564))

(assert (= (and setNonEmpty!22540 (not condSetEmpty!22564)) setNonEmpty!22564))

(assert (= setNonEmpty!22564 b!2765727))

(declare-fun m!3188895 () Bool)

(assert (=> setNonEmpty!22564 m!3188895))

(declare-fun b!2765732 () Bool)

(declare-fun e!1743803 () Bool)

(declare-fun tp!874130 () Bool)

(declare-fun tp!874131 () Bool)

(assert (=> b!2765732 (= e!1743803 (and tp!874130 tp!874131))))

(assert (=> b!2765333 (= tp!873999 e!1743803)))

(assert (= (and b!2765333 ((_ is Cons!31936) (exprs!2787 setElem!22540))) b!2765732))

(declare-fun setNonEmpty!22565 () Bool)

(declare-fun e!1743806 () Bool)

(declare-fun tp!874133 () Bool)

(declare-fun setRes!22565 () Bool)

(declare-fun setElem!22565 () Context!4574)

(assert (=> setNonEmpty!22565 (= setRes!22565 (and tp!874133 (inv!43369 setElem!22565) e!1743806))))

(declare-fun setRest!22565 () (InoxSet Context!4574))

(assert (=> setNonEmpty!22565 (= (_2!18854 (h!37357 (zeroValue!4005 (v!33543 (underlying!7695 (v!33544 (underlying!7696 (cache!3795 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4574 Bool)) false) setElem!22565 true) setRest!22565))))

(declare-fun b!2765733 () Bool)

(declare-fun tp!874134 () Bool)

(declare-fun e!1743805 () Bool)

(declare-fun e!1743804 () Bool)

(assert (=> b!2765733 (= e!1743805 (and (inv!43369 (_1!18853 (_1!18854 (h!37357 (zeroValue!4005 (v!33543 (underlying!7695 (v!33544 (underlying!7696 (cache!3795 cacheUp!820)))))))))) e!1743804 tp_is_empty!14003 setRes!22565 tp!874134))))

(declare-fun condSetEmpty!22565 () Bool)

(assert (=> b!2765733 (= condSetEmpty!22565 (= (_2!18854 (h!37357 (zeroValue!4005 (v!33543 (underlying!7695 (v!33544 (underlying!7696 (cache!3795 cacheUp!820)))))))) ((as const (Array Context!4574 Bool)) false)))))

(declare-fun b!2765734 () Bool)

(declare-fun tp!874135 () Bool)

(assert (=> b!2765734 (= e!1743804 tp!874135)))

(assert (=> b!2765313 (= tp!873992 e!1743805)))

(declare-fun b!2765735 () Bool)

(declare-fun tp!874132 () Bool)

(assert (=> b!2765735 (= e!1743806 tp!874132)))

(declare-fun setIsEmpty!22565 () Bool)

(assert (=> setIsEmpty!22565 setRes!22565))

(assert (= b!2765733 b!2765734))

(assert (= (and b!2765733 condSetEmpty!22565) setIsEmpty!22565))

(assert (= (and b!2765733 (not condSetEmpty!22565)) setNonEmpty!22565))

(assert (= setNonEmpty!22565 b!2765735))

(assert (= (and b!2765313 ((_ is Cons!31937) (zeroValue!4005 (v!33543 (underlying!7695 (v!33544 (underlying!7696 (cache!3795 cacheUp!820)))))))) b!2765733))

(declare-fun m!3188897 () Bool)

(assert (=> setNonEmpty!22565 m!3188897))

(declare-fun m!3188899 () Bool)

(assert (=> b!2765733 m!3188899))

(declare-fun setElem!22566 () Context!4574)

(declare-fun setNonEmpty!22566 () Bool)

(declare-fun setRes!22566 () Bool)

(declare-fun e!1743809 () Bool)

(declare-fun tp!874137 () Bool)

(assert (=> setNonEmpty!22566 (= setRes!22566 (and tp!874137 (inv!43369 setElem!22566) e!1743809))))

(declare-fun setRest!22566 () (InoxSet Context!4574))

(assert (=> setNonEmpty!22566 (= (_2!18854 (h!37357 (minValue!4005 (v!33543 (underlying!7695 (v!33544 (underlying!7696 (cache!3795 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4574 Bool)) false) setElem!22566 true) setRest!22566))))

(declare-fun e!1743807 () Bool)

(declare-fun e!1743808 () Bool)

(declare-fun b!2765736 () Bool)

(declare-fun tp!874138 () Bool)

(assert (=> b!2765736 (= e!1743808 (and (inv!43369 (_1!18853 (_1!18854 (h!37357 (minValue!4005 (v!33543 (underlying!7695 (v!33544 (underlying!7696 (cache!3795 cacheUp!820)))))))))) e!1743807 tp_is_empty!14003 setRes!22566 tp!874138))))

(declare-fun condSetEmpty!22566 () Bool)

(assert (=> b!2765736 (= condSetEmpty!22566 (= (_2!18854 (h!37357 (minValue!4005 (v!33543 (underlying!7695 (v!33544 (underlying!7696 (cache!3795 cacheUp!820)))))))) ((as const (Array Context!4574 Bool)) false)))))

(declare-fun b!2765737 () Bool)

(declare-fun tp!874139 () Bool)

(assert (=> b!2765737 (= e!1743807 tp!874139)))

(assert (=> b!2765313 (= tp!873998 e!1743808)))

(declare-fun b!2765738 () Bool)

(declare-fun tp!874136 () Bool)

(assert (=> b!2765738 (= e!1743809 tp!874136)))

(declare-fun setIsEmpty!22566 () Bool)

(assert (=> setIsEmpty!22566 setRes!22566))

(assert (= b!2765736 b!2765737))

(assert (= (and b!2765736 condSetEmpty!22566) setIsEmpty!22566))

(assert (= (and b!2765736 (not condSetEmpty!22566)) setNonEmpty!22566))

(assert (= setNonEmpty!22566 b!2765738))

(assert (= (and b!2765313 ((_ is Cons!31937) (minValue!4005 (v!33543 (underlying!7695 (v!33544 (underlying!7696 (cache!3795 cacheUp!820)))))))) b!2765736))

(declare-fun m!3188901 () Bool)

(assert (=> setNonEmpty!22566 m!3188901))

(declare-fun m!3188903 () Bool)

(assert (=> b!2765736 m!3188903))

(declare-fun e!1743812 () Bool)

(declare-fun tp!874141 () Bool)

(declare-fun setNonEmpty!22567 () Bool)

(declare-fun setElem!22567 () Context!4574)

(declare-fun setRes!22567 () Bool)

(assert (=> setNonEmpty!22567 (= setRes!22567 (and tp!874141 (inv!43369 setElem!22567) e!1743812))))

(declare-fun setRest!22567 () (InoxSet Context!4574))

(assert (=> setNonEmpty!22567 (= (_2!18854 (h!37357 mapDefault!17086)) ((_ map or) (store ((as const (Array Context!4574 Bool)) false) setElem!22567 true) setRest!22567))))

(declare-fun e!1743810 () Bool)

(declare-fun tp!874142 () Bool)

(declare-fun e!1743811 () Bool)

(declare-fun b!2765739 () Bool)

(assert (=> b!2765739 (= e!1743811 (and (inv!43369 (_1!18853 (_1!18854 (h!37357 mapDefault!17086)))) e!1743810 tp_is_empty!14003 setRes!22567 tp!874142))))

(declare-fun condSetEmpty!22567 () Bool)

(assert (=> b!2765739 (= condSetEmpty!22567 (= (_2!18854 (h!37357 mapDefault!17086)) ((as const (Array Context!4574 Bool)) false)))))

(declare-fun b!2765740 () Bool)

(declare-fun tp!874143 () Bool)

(assert (=> b!2765740 (= e!1743810 tp!874143)))

(assert (=> b!2765331 (= tp!874007 e!1743811)))

(declare-fun b!2765741 () Bool)

(declare-fun tp!874140 () Bool)

(assert (=> b!2765741 (= e!1743812 tp!874140)))

(declare-fun setIsEmpty!22567 () Bool)

(assert (=> setIsEmpty!22567 setRes!22567))

(assert (= b!2765739 b!2765740))

(assert (= (and b!2765739 condSetEmpty!22567) setIsEmpty!22567))

(assert (= (and b!2765739 (not condSetEmpty!22567)) setNonEmpty!22567))

(assert (= setNonEmpty!22567 b!2765741))

(assert (= (and b!2765331 ((_ is Cons!31937) mapDefault!17086)) b!2765739))

(declare-fun m!3188905 () Bool)

(assert (=> setNonEmpty!22567 m!3188905))

(declare-fun m!3188907 () Bool)

(assert (=> b!2765739 m!3188907))

(check-sat (not b!2765538) (not d!802979) tp_is_empty!14003 (not setNonEmpty!22564) (not b!2765484) (not d!803099) (not d!803031) (not b!2765740) (not b!2765718) (not bm!180095) (not b!2765741) (not b!2765491) b_and!202823 (not b!2765704) (not bm!180071) (not b!2765623) (not bm!180129) (not b!2765440) (not bm!180090) (not bm!180078) (not b!2765522) (not b!2765573) (not b!2765703) (not bm!180096) (not b!2765716) (not b!2765504) (not d!803103) (not b!2765544) (not bm!180091) (not b!2765671) (not bm!180092) (not setNonEmpty!22560) (not b!2765634) (not d!802989) (not d!803079) (not b!2765624) (not b!2765371) b_and!202825 (not bm!180133) (not d!803005) (not bm!180138) (not bm!180085) (not b!2765498) (not b!2765506) (not b!2765735) (not b!2765420) (not b!2765418) (not b!2765701) (not d!803043) (not bm!180131) (not b!2765639) (not b!2765717) (not d!803037) (not bm!180126) (not bm!180074) (not d!803035) (not d!803049) (not d!803067) (not d!803055) (not b!2765408) (not b!2765698) (not b!2765705) (not b!2765638) (not b!2765680) (not setNonEmpty!22561) (not d!803003) (not b!2765402) (not b!2765697) (not bm!180075) (not d!803051) (not b!2765442) (not bm!180079) (not d!802987) (not d!803001) (not bm!180086) (not setNonEmpty!22552) (not b!2765681) (not b!2765508) (not b!2765507) (not b!2765656) (not b!2765483) (not b!2765632) (not d!803029) (not bm!180097) (not bm!180088) (not b!2765660) (not bm!180068) (not b!2765739) (not b!2765613) (not d!803071) (not d!802967) (not bm!180094) (not b!2765453) (not b!2765432) (not b!2765658) (not bm!180130) (not b!2765657) (not b!2765414) (not d!803011) (not b!2765575) (not mapNonEmpty!17092) (not b!2765605) (not setNonEmpty!22567) (not bm!180105) b_and!202827 (not b!2765699) (not b!2765529) (not bm!180072) (not b!2765721) (not d!802965) (not b!2765659) (not d!803053) (not b!2765596) (not bm!180084) (not d!803033) (not b!2765589) (not setNonEmpty!22558) (not b!2765348) (not b!2765406) (not b!2765736) (not setNonEmpty!22565) (not b!2765373) (not d!803081) (not b!2765518) (not b!2765655) (not b!2765602) (not b!2765738) (not d!803095) (not bm!180124) (not d!802977) (not setNonEmpty!22566) (not b!2765490) (not d!802969) (not b!2765629) (not b!2765702) (not b!2765737) (not d!803087) (not b!2765626) (not b!2765625) (not d!803027) (not d!803061) (not setNonEmpty!22559) (not b!2765592) (not d!802997) (not b!2765488) (not d!803041) (not b_next!78791) (not b!2765584) (not b!2765722) (not d!803089) (not bm!180082) (not b!2765603) (not b!2765537) (not d!802983) (not b!2765535) (not b!2765607) (not d!803039) (not b!2765581) (not b!2765519) (not b!2765530) (not b!2765511) (not d!802995) (not d!803083) (not bm!180080) (not b!2765720) (not b!2765430) (not d!803045) (not bm!180100) (not b!2765700) (not bm!180069) (not b!2765714) (not b!2765543) (not b!2765715) (not b!2765372) (not b!2765457) (not b!2765616) (not bm!180135) (not b!2765635) (not b!2765682) (not d!803073) (not d!803017) (not bm!180123) (not bm!180087) (not b!2765594) (not b!2765669) (not b_next!78789) (not d!803025) (not b!2765452) (not bm!180125) (not d!802961) (not bm!180089) (not b!2765497) b_and!202829 (not d!803065) (not bm!180077) (not setNonEmpty!22546) (not d!803097) (not bm!180073) (not mapNonEmpty!17089) (not b!2765734) (not b!2765591) (not d!802985) (not d!803075) (not b!2765599) (not b!2765670) (not d!803019) (not b!2765719) (not bm!180136) (not bm!180132) (not b_next!78793) (not b!2765595) (not d!803047) (not d!802959) (not setNonEmpty!22557) (not d!803085) (not bm!180134) (not setNonEmpty!22549) (not d!802981) (not b!2765733) (not b!2765520) (not bm!180093) (not d!803069) (not bm!180137) (not bm!180083) (not bm!180070) (not setNonEmpty!22545) (not b!2765598) (not b!2765588) (not bm!180106) (not bm!180127) (not b_next!78795) (not d!803059) (not d!803013) (not bm!180128) (not bm!180081) (not bm!180076) (not b!2765732) (not d!803063) (not b!2765727) (not b!2765456) (not d!803077) (not b!2765426))
(check-sat b_and!202823 b_and!202825 b_and!202827 (not b_next!78791) (not b_next!78793) (not b_next!78795) b_and!202829 (not b_next!78789))
