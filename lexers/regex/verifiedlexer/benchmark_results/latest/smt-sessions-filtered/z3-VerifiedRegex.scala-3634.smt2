; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207576 () Bool)

(assert start!207576)

(declare-fun b!2134124 () Bool)

(declare-fun b_free!62477 () Bool)

(declare-fun b_next!63181 () Bool)

(assert (=> b!2134124 (= b_free!62477 (not b_next!63181))))

(declare-fun tp!657397 () Bool)

(declare-fun b_and!172057 () Bool)

(assert (=> b!2134124 (= tp!657397 b_and!172057)))

(declare-fun b!2134121 () Bool)

(declare-fun b_free!62479 () Bool)

(declare-fun b_next!63183 () Bool)

(assert (=> b!2134121 (= b_free!62479 (not b_next!63183))))

(declare-fun tp!657404 () Bool)

(declare-fun b_and!172059 () Bool)

(assert (=> b!2134121 (= tp!657404 b_and!172059)))

(declare-fun b!2134132 () Bool)

(declare-fun b_free!62481 () Bool)

(declare-fun b_next!63185 () Bool)

(assert (=> b!2134132 (= b_free!62481 (not b_next!63185))))

(declare-fun tp!657422 () Bool)

(declare-fun b_and!172061 () Bool)

(assert (=> b!2134132 (= tp!657422 b_and!172061)))

(declare-fun b!2134119 () Bool)

(declare-fun b_free!62483 () Bool)

(declare-fun b_next!63187 () Bool)

(assert (=> b!2134119 (= b_free!62483 (not b_next!63187))))

(declare-fun tp!657413 () Bool)

(declare-fun b_and!172063 () Bool)

(assert (=> b!2134119 (= tp!657413 b_and!172063)))

(declare-fun b!2134125 () Bool)

(declare-fun b_free!62485 () Bool)

(declare-fun b_next!63189 () Bool)

(assert (=> b!2134125 (= b_free!62485 (not b_next!63189))))

(declare-fun tp!657418 () Bool)

(declare-fun b_and!172065 () Bool)

(assert (=> b!2134125 (= tp!657418 b_and!172065)))

(declare-fun b!2134139 () Bool)

(declare-fun b_free!62487 () Bool)

(declare-fun b_next!63191 () Bool)

(assert (=> b!2134139 (= b_free!62487 (not b_next!63191))))

(declare-fun tp!657406 () Bool)

(declare-fun b_and!172067 () Bool)

(assert (=> b!2134139 (= tp!657406 b_and!172067)))

(declare-fun b!2134114 () Bool)

(assert (=> b!2134114 true))

(declare-fun bs!444296 () Bool)

(declare-fun b!2134142 () Bool)

(assert (= bs!444296 (and b!2134142 b!2134114)))

(declare-fun lambda!79371 () Int)

(declare-fun lambda!79370 () Int)

(assert (=> bs!444296 (not (= lambda!79371 lambda!79370))))

(assert (=> b!2134142 true))

(declare-fun b!2134111 () Bool)

(declare-fun res!922197 () Bool)

(declare-fun e!1361881 () Bool)

(assert (=> b!2134111 (=> (not res!922197) (not e!1361881))))

(declare-datatypes ((C!11616 0))(
  ( (C!11617 (val!6794 Int)) )
))
(declare-datatypes ((Regex!5735 0))(
  ( (ElementMatch!5735 (c!340285 C!11616)) (Concat!10037 (regOne!11982 Regex!5735) (regTwo!11982 Regex!5735)) (EmptyExpr!5735) (Star!5735 (reg!6064 Regex!5735)) (EmptyLang!5735) (Union!5735 (regOne!11983 Regex!5735) (regTwo!11983 Regex!5735)) )
))
(declare-datatypes ((List!24182 0))(
  ( (Nil!24098) (Cons!24098 (h!29499 Regex!5735) (t!196710 List!24182)) )
))
(declare-datatypes ((Context!2610 0))(
  ( (Context!2611 (exprs!1805 List!24182)) )
))
(declare-datatypes ((tuple3!3222 0))(
  ( (tuple3!3223 (_1!14015 Regex!5735) (_2!14015 Context!2610) (_3!2081 C!11616)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23868 0))(
  ( (tuple2!23869 (_1!14016 tuple3!3222) (_2!14016 (InoxSet Context!2610))) )
))
(declare-datatypes ((List!24183 0))(
  ( (Nil!24099) (Cons!24099 (h!29500 tuple2!23868) (t!196711 List!24183)) )
))
(declare-datatypes ((Hashable!2559 0))(
  ( (HashableExt!2558 (__x!16111 Int)) )
))
(declare-datatypes ((array!8979 0))(
  ( (array!8980 (arr!4001 (Array (_ BitVec 32) (_ BitVec 64))) (size!18847 (_ BitVec 32))) )
))
(declare-datatypes ((array!8981 0))(
  ( (array!8982 (arr!4002 (Array (_ BitVec 32) List!24183)) (size!18848 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5290 0))(
  ( (LongMapFixedSize!5291 (defaultEntry!3010 Int) (mask!6828 (_ BitVec 32)) (extraKeys!2893 (_ BitVec 32)) (zeroValue!2903 List!24183) (minValue!2903 List!24183) (_size!5341 (_ BitVec 32)) (_keys!2942 array!8979) (_values!2925 array!8981) (_vacant!2706 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10405 0))(
  ( (Cell!10406 (v!28659 LongMapFixedSize!5290)) )
))
(declare-datatypes ((MutLongMap!2645 0))(
  ( (LongMap!2645 (underlying!5485 Cell!10405)) (MutLongMapExt!2644 (__x!16112 Int)) )
))
(declare-datatypes ((Cell!10407 0))(
  ( (Cell!10408 (v!28660 MutLongMap!2645)) )
))
(declare-datatypes ((MutableMap!2559 0))(
  ( (MutableMapExt!2558 (__x!16113 Int)) (HashMap!2559 (underlying!5486 Cell!10407) (hashF!4482 Hashable!2559) (_size!5342 (_ BitVec 32)) (defaultValue!2721 Int)) )
))
(declare-datatypes ((CacheDown!1754 0))(
  ( (CacheDown!1755 (cache!2940 MutableMap!2559)) )
))
(declare-fun cacheDown!1098 () CacheDown!1754)

(declare-fun valid!2071 (CacheDown!1754) Bool)

(assert (=> b!2134111 (= res!922197 (valid!2071 cacheDown!1098))))

(declare-fun mapNonEmpty!12718 () Bool)

(declare-fun mapRes!12718 () Bool)

(declare-fun tp!657408 () Bool)

(declare-fun tp!657396 () Bool)

(assert (=> mapNonEmpty!12718 (= mapRes!12718 (and tp!657408 tp!657396))))

(declare-datatypes ((tuple3!3224 0))(
  ( (tuple3!3225 (_1!14017 (InoxSet Context!2610)) (_2!14017 Int) (_3!2082 Int)) )
))
(declare-datatypes ((tuple2!23870 0))(
  ( (tuple2!23871 (_1!14018 tuple3!3224) (_2!14018 Int)) )
))
(declare-datatypes ((List!24184 0))(
  ( (Nil!24100) (Cons!24100 (h!29501 tuple2!23870) (t!196712 List!24184)) )
))
(declare-fun mapValue!12719 () List!24184)

(declare-datatypes ((array!8983 0))(
  ( (array!8984 (arr!4003 (Array (_ BitVec 32) List!24184)) (size!18849 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5292 0))(
  ( (LongMapFixedSize!5293 (defaultEntry!3011 Int) (mask!6829 (_ BitVec 32)) (extraKeys!2894 (_ BitVec 32)) (zeroValue!2904 List!24184) (minValue!2904 List!24184) (_size!5343 (_ BitVec 32)) (_keys!2943 array!8979) (_values!2926 array!8983) (_vacant!2707 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10409 0))(
  ( (Cell!10410 (v!28661 LongMapFixedSize!5292)) )
))
(declare-datatypes ((List!24185 0))(
  ( (Nil!24101) (Cons!24101 (h!29502 C!11616) (t!196713 List!24185)) )
))
(declare-datatypes ((IArray!15751 0))(
  ( (IArray!15752 (innerList!7933 List!24185)) )
))
(declare-datatypes ((Conc!7873 0))(
  ( (Node!7873 (left!18569 Conc!7873) (right!18899 Conc!7873) (csize!15976 Int) (cheight!8084 Int)) (Leaf!11508 (xs!10815 IArray!15751) (csize!15977 Int)) (Empty!7873) )
))
(declare-datatypes ((MutLongMap!2646 0))(
  ( (LongMap!2646 (underlying!5487 Cell!10409)) (MutLongMapExt!2645 (__x!16114 Int)) )
))
(declare-datatypes ((Cell!10411 0))(
  ( (Cell!10412 (v!28662 MutLongMap!2646)) )
))
(declare-datatypes ((Hashable!2560 0))(
  ( (HashableExt!2559 (__x!16115 Int)) )
))
(declare-datatypes ((MutableMap!2560 0))(
  ( (MutableMapExt!2559 (__x!16116 Int)) (HashMap!2560 (underlying!5488 Cell!10411) (hashF!4483 Hashable!2560) (_size!5344 (_ BitVec 32)) (defaultValue!2722 Int)) )
))
(declare-datatypes ((BalanceConc!15508 0))(
  ( (BalanceConc!15509 (c!340286 Conc!7873)) )
))
(declare-datatypes ((CacheFurthestNullable!716 0))(
  ( (CacheFurthestNullable!717 (cache!2941 MutableMap!2560) (totalInput!3046 BalanceConc!15508)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!716)

(declare-fun mapRest!12718 () (Array (_ BitVec 32) List!24184))

(declare-fun mapKey!12720 () (_ BitVec 32))

(assert (=> mapNonEmpty!12718 (= (arr!4003 (_values!2926 (v!28661 (underlying!5487 (v!28662 (underlying!5488 (cache!2941 cacheFurthestNullable!114))))))) (store mapRest!12718 mapKey!12720 mapValue!12719))))

(declare-fun b!2134112 () Bool)

(declare-fun e!1361874 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2134112 (= e!1361874 from!1043)))

(declare-fun b!2134113 () Bool)

(declare-fun e!1361869 () Bool)

(declare-fun e!1361862 () Bool)

(assert (=> b!2134113 (= e!1361869 e!1361862)))

(declare-fun res!922199 () Bool)

(assert (=> b!2134113 (=> res!922199 e!1361862)))

(declare-fun lt!796950 () Int)

(declare-fun totalInput!851 () BalanceConc!15508)

(declare-fun lt!796949 () Int)

(declare-datatypes ((tuple2!23872 0))(
  ( (tuple2!23873 (_1!14019 Context!2610) (_2!14019 C!11616)) )
))
(declare-datatypes ((tuple2!23874 0))(
  ( (tuple2!23875 (_1!14020 tuple2!23872) (_2!14020 (InoxSet Context!2610))) )
))
(declare-datatypes ((List!24186 0))(
  ( (Nil!24102) (Cons!24102 (h!29503 tuple2!23874) (t!196714 List!24186)) )
))
(declare-datatypes ((Hashable!2561 0))(
  ( (HashableExt!2560 (__x!16117 Int)) )
))
(declare-datatypes ((array!8985 0))(
  ( (array!8986 (arr!4004 (Array (_ BitVec 32) List!24186)) (size!18850 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5294 0))(
  ( (LongMapFixedSize!5295 (defaultEntry!3012 Int) (mask!6830 (_ BitVec 32)) (extraKeys!2895 (_ BitVec 32)) (zeroValue!2905 List!24186) (minValue!2905 List!24186) (_size!5345 (_ BitVec 32)) (_keys!2944 array!8979) (_values!2927 array!8985) (_vacant!2708 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10413 0))(
  ( (Cell!10414 (v!28663 LongMapFixedSize!5294)) )
))
(declare-datatypes ((MutLongMap!2647 0))(
  ( (LongMap!2647 (underlying!5489 Cell!10413)) (MutLongMapExt!2646 (__x!16118 Int)) )
))
(declare-datatypes ((Cell!10415 0))(
  ( (Cell!10416 (v!28664 MutLongMap!2647)) )
))
(declare-datatypes ((MutableMap!2561 0))(
  ( (MutableMapExt!2560 (__x!16119 Int)) (HashMap!2561 (underlying!5490 Cell!10415) (hashF!4484 Hashable!2561) (_size!5346 (_ BitVec 32)) (defaultValue!2723 Int)) )
))
(declare-datatypes ((CacheUp!1772 0))(
  ( (CacheUp!1773 (cache!2942 MutableMap!2561)) )
))
(declare-datatypes ((tuple3!3226 0))(
  ( (tuple3!3227 (_1!14021 (InoxSet Context!2610)) (_2!14021 CacheUp!1772) (_3!2083 CacheDown!1754)) )
))
(declare-fun lt!796948 () tuple3!3226)

(declare-fun furthestNullablePosition!48 ((InoxSet Context!2610) Int BalanceConc!15508 Int Int) Int)

(assert (=> b!2134113 (= res!922199 (not (= lt!796949 (furthestNullablePosition!48 (_1!14021 lt!796948) (+ 1 from!1043) totalInput!851 lt!796950 e!1361874))))))

(declare-fun c!340284 () Bool)

(declare-fun nullableZipper!114 ((InoxSet Context!2610)) Bool)

(assert (=> b!2134113 (= c!340284 (nullableZipper!114 (_1!14021 lt!796948)))))

(declare-fun cacheUp!979 () CacheUp!1772)

(declare-fun z!3839 () (InoxSet Context!2610))

(declare-fun derivationStepZipperMem!36 ((InoxSet Context!2610) C!11616 CacheUp!1772 CacheDown!1754) tuple3!3226)

(declare-fun apply!5935 (BalanceConc!15508 Int) C!11616)

(assert (=> b!2134113 (= lt!796948 (derivationStepZipperMem!36 z!3839 (apply!5935 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun e!1361882 () Bool)

(assert (=> b!2134114 (= e!1361881 e!1361882)))

(declare-fun res!922201 () Bool)

(assert (=> b!2134114 (=> (not res!922201) (not e!1361882))))

(declare-datatypes ((StackFrame!162 0))(
  ( (StackFrame!163 (z!5809 (InoxSet Context!2610)) (from!2695 Int) (lastNullablePos!382 Int) (res!922210 Int) (totalInput!3047 BalanceConc!15508)) )
))
(declare-datatypes ((List!24187 0))(
  ( (Nil!24103) (Cons!24103 (h!29504 StackFrame!162) (t!196715 List!24187)) )
))
(declare-fun stack!8 () List!24187)

(declare-fun forall!4925 (List!24187 Int) Bool)

(assert (=> b!2134114 (= res!922201 (forall!4925 stack!8 lambda!79370))))

(declare-fun lastNullablePos!123 () Int)

(assert (=> b!2134114 (= lt!796949 (furthestNullablePosition!48 z!3839 from!1043 totalInput!851 lt!796950 lastNullablePos!123))))

(declare-fun tp!657416 () Bool)

(declare-fun e!1361858 () Bool)

(declare-fun e!1361859 () Bool)

(declare-fun b!2134115 () Bool)

(declare-fun inv!31752 (StackFrame!162) Bool)

(assert (=> b!2134115 (= e!1361859 (and (inv!31752 (h!29504 stack!8)) e!1361858 tp!657416))))

(declare-fun b!2134116 () Bool)

(declare-fun res!922206 () Bool)

(assert (=> b!2134116 (=> res!922206 e!1361869)))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2134116 (= res!922206 (= from!1043 totalInputSize!296))))

(declare-fun b!2134117 () Bool)

(declare-fun e!1361884 () Bool)

(declare-fun tp!657402 () Bool)

(assert (=> b!2134117 (= e!1361884 (and tp!657402 mapRes!12718))))

(declare-fun condMapEmpty!12720 () Bool)

(declare-fun mapDefault!12719 () List!24184)

(assert (=> b!2134117 (= condMapEmpty!12720 (= (arr!4003 (_values!2926 (v!28661 (underlying!5487 (v!28662 (underlying!5488 (cache!2941 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24184)) mapDefault!12719)))))

(declare-fun b!2134118 () Bool)

(assert (=> b!2134118 (= e!1361874 lastNullablePos!123)))

(declare-fun mapIsEmpty!12718 () Bool)

(assert (=> mapIsEmpty!12718 mapRes!12718))

(declare-fun e!1361868 () Bool)

(declare-fun e!1361876 () Bool)

(assert (=> b!2134119 (= e!1361868 (and e!1361876 tp!657413))))

(declare-fun mapNonEmpty!12719 () Bool)

(declare-fun mapRes!12720 () Bool)

(declare-fun tp!657400 () Bool)

(declare-fun tp!657399 () Bool)

(assert (=> mapNonEmpty!12719 (= mapRes!12720 (and tp!657400 tp!657399))))

(declare-fun mapKey!12719 () (_ BitVec 32))

(declare-fun mapRest!12720 () (Array (_ BitVec 32) List!24186))

(declare-fun mapValue!12718 () List!24186)

(assert (=> mapNonEmpty!12719 (= (arr!4004 (_values!2927 (v!28663 (underlying!5489 (v!28664 (underlying!5490 (cache!2942 cacheUp!979))))))) (store mapRest!12720 mapKey!12719 mapValue!12718))))

(declare-fun b!2134120 () Bool)

(declare-fun e!1361853 () Bool)

(declare-fun tp!657407 () Bool)

(assert (=> b!2134120 (= e!1361853 tp!657407)))

(declare-fun e!1361864 () Bool)

(declare-fun tp!657411 () Bool)

(declare-fun e!1361852 () Bool)

(declare-fun tp!657403 () Bool)

(declare-fun array_inv!2864 (array!8979) Bool)

(declare-fun array_inv!2865 (array!8985) Bool)

(assert (=> b!2134121 (= e!1361864 (and tp!657404 tp!657403 tp!657411 (array_inv!2864 (_keys!2944 (v!28663 (underlying!5489 (v!28664 (underlying!5490 (cache!2942 cacheUp!979))))))) (array_inv!2865 (_values!2927 (v!28663 (underlying!5489 (v!28664 (underlying!5490 (cache!2942 cacheUp!979))))))) e!1361852))))

(declare-fun b!2134122 () Bool)

(declare-fun e!1361877 () Bool)

(declare-fun tp!657417 () Bool)

(assert (=> b!2134122 (= e!1361877 tp!657417)))

(declare-fun b!2134123 () Bool)

(declare-fun e!1361870 () Bool)

(declare-fun tp!657409 () Bool)

(declare-fun inv!31753 (Conc!7873) Bool)

(assert (=> b!2134123 (= e!1361870 (and (inv!31753 (c!340286 (totalInput!3047 (h!29504 stack!8)))) tp!657409))))

(declare-fun tp!657421 () Bool)

(declare-fun setElem!15876 () Context!2610)

(declare-fun setNonEmpty!15876 () Bool)

(declare-fun setRes!15876 () Bool)

(declare-fun inv!31754 (Context!2610) Bool)

(assert (=> setNonEmpty!15876 (= setRes!15876 (and tp!657421 (inv!31754 setElem!15876) e!1361877))))

(declare-fun setRest!15876 () (InoxSet Context!2610))

(assert (=> setNonEmpty!15876 (= z!3839 ((_ map or) (store ((as const (Array Context!2610 Bool)) false) setElem!15876 true) setRest!15876))))

(declare-fun e!1361880 () Bool)

(declare-fun e!1361883 () Bool)

(assert (=> b!2134124 (= e!1361880 (and e!1361883 tp!657397))))

(declare-fun e!1361871 () Bool)

(declare-fun e!1361854 () Bool)

(assert (=> b!2134125 (= e!1361871 (and e!1361854 tp!657418))))

(declare-fun b!2134126 () Bool)

(assert (=> b!2134126 (= e!1361882 (not e!1361869))))

(declare-fun res!922203 () Bool)

(assert (=> b!2134126 (=> res!922203 e!1361869)))

(get-info :version)

(declare-datatypes ((Option!4905 0))(
  ( (None!4904) (Some!4904 (v!28665 Int)) )
))
(declare-fun get!7382 (CacheFurthestNullable!716 (InoxSet Context!2610) Int Int) Option!4905)

(assert (=> b!2134126 (= res!922203 ((_ is Some!4904) (get!7382 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2134126 (forall!4925 stack!8 lambda!79370)))

(declare-fun b!2134127 () Bool)

(declare-fun e!1361879 () Bool)

(assert (=> b!2134127 (= e!1361879 e!1361871)))

(declare-fun res!922202 () Bool)

(declare-fun e!1361872 () Bool)

(assert (=> start!207576 (=> (not res!922202) (not e!1361872))))

(assert (=> start!207576 (= res!922202 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207576 e!1361872))

(declare-fun e!1361860 () Bool)

(declare-fun inv!31755 (CacheFurthestNullable!716) Bool)

(assert (=> start!207576 (and (inv!31755 cacheFurthestNullable!114) e!1361860)))

(assert (=> start!207576 true))

(declare-fun e!1361867 () Bool)

(declare-fun inv!31756 (CacheDown!1754) Bool)

(assert (=> start!207576 (and (inv!31756 cacheDown!1098) e!1361867)))

(declare-fun inv!31757 (CacheUp!1772) Bool)

(assert (=> start!207576 (and (inv!31757 cacheUp!979) e!1361879)))

(declare-fun condSetEmpty!15877 () Bool)

(assert (=> start!207576 (= condSetEmpty!15877 (= z!3839 ((as const (Array Context!2610 Bool)) false)))))

(assert (=> start!207576 setRes!15876))

(declare-fun e!1361885 () Bool)

(declare-fun inv!31758 (BalanceConc!15508) Bool)

(assert (=> start!207576 (and (inv!31758 totalInput!851) e!1361885)))

(assert (=> start!207576 e!1361859))

(declare-fun b!2134128 () Bool)

(declare-fun e!1361875 () Bool)

(declare-fun tp!657410 () Bool)

(declare-fun mapRes!12719 () Bool)

(assert (=> b!2134128 (= e!1361875 (and tp!657410 mapRes!12719))))

(declare-fun condMapEmpty!12719 () Bool)

(declare-fun mapDefault!12718 () List!24183)

(assert (=> b!2134128 (= condMapEmpty!12719 (= (arr!4002 (_values!2925 (v!28659 (underlying!5485 (v!28660 (underlying!5486 (cache!2940 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24183)) mapDefault!12718)))))

(declare-fun b!2134129 () Bool)

(declare-fun e!1361857 () Bool)

(declare-fun lt!796945 () MutLongMap!2647)

(assert (=> b!2134129 (= e!1361854 (and e!1361857 ((_ is LongMap!2647) lt!796945)))))

(assert (=> b!2134129 (= lt!796945 (v!28664 (underlying!5490 (cache!2942 cacheUp!979))))))

(declare-fun b!2134130 () Bool)

(declare-fun e!1361861 () Bool)

(assert (=> b!2134130 (= e!1361857 e!1361861)))

(declare-fun mapIsEmpty!12719 () Bool)

(assert (=> mapIsEmpty!12719 mapRes!12720))

(declare-fun b!2134131 () Bool)

(assert (=> b!2134131 (= e!1361872 e!1361881)))

(declare-fun res!922208 () Bool)

(assert (=> b!2134131 (=> (not res!922208) (not e!1361881))))

(assert (=> b!2134131 (= res!922208 (and (= totalInputSize!296 lt!796950) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18851 (BalanceConc!15508) Int)

(assert (=> b!2134131 (= lt!796950 (size!18851 totalInput!851))))

(declare-fun tp!657398 () Bool)

(declare-fun e!1361886 () Bool)

(declare-fun tp!657412 () Bool)

(declare-fun array_inv!2866 (array!8983) Bool)

(assert (=> b!2134132 (= e!1361886 (and tp!657422 tp!657412 tp!657398 (array_inv!2864 (_keys!2943 (v!28661 (underlying!5487 (v!28662 (underlying!5488 (cache!2941 cacheFurthestNullable!114))))))) (array_inv!2866 (_values!2926 (v!28661 (underlying!5487 (v!28662 (underlying!5488 (cache!2941 cacheFurthestNullable!114))))))) e!1361884))))

(declare-fun b!2134133 () Bool)

(declare-fun e!1361855 () Bool)

(declare-fun tp!657420 () Bool)

(assert (=> b!2134133 (= e!1361855 (and (inv!31753 (c!340286 (totalInput!3046 cacheFurthestNullable!114))) tp!657420))))

(declare-fun b!2134134 () Bool)

(declare-fun e!1361887 () Bool)

(declare-fun lt!796946 () MutLongMap!2646)

(assert (=> b!2134134 (= e!1361876 (and e!1361887 ((_ is LongMap!2646) lt!796946)))))

(assert (=> b!2134134 (= lt!796946 (v!28662 (underlying!5488 (cache!2941 cacheFurthestNullable!114))))))

(declare-fun b!2134135 () Bool)

(declare-fun tp!657405 () Bool)

(assert (=> b!2134135 (= e!1361885 (and (inv!31753 (c!340286 totalInput!851)) tp!657405))))

(declare-fun b!2134136 () Bool)

(assert (=> b!2134136 (= e!1361862 (and (>= (+ 1 from!1043) 0) (<= (+ 1 from!1043) lt!796950)))))

(declare-fun b!2134137 () Bool)

(declare-fun res!922209 () Bool)

(assert (=> b!2134137 (=> (not res!922209) (not e!1361881))))

(declare-fun valid!2072 (CacheFurthestNullable!716) Bool)

(assert (=> b!2134137 (= res!922209 (valid!2072 cacheFurthestNullable!114))))

(declare-fun b!2134138 () Bool)

(declare-fun res!922207 () Bool)

(assert (=> b!2134138 (=> res!922207 e!1361869)))

(declare-fun lostCauseZipper!87 ((InoxSet Context!2610)) Bool)

(assert (=> b!2134138 (= res!922207 (lostCauseZipper!87 z!3839))))

(declare-fun e!1361856 () Bool)

(declare-fun tp!657414 () Bool)

(declare-fun tp!657424 () Bool)

(declare-fun array_inv!2867 (array!8981) Bool)

(assert (=> b!2134139 (= e!1361856 (and tp!657406 tp!657424 tp!657414 (array_inv!2864 (_keys!2942 (v!28659 (underlying!5485 (v!28660 (underlying!5486 (cache!2940 cacheDown!1098))))))) (array_inv!2867 (_values!2925 (v!28659 (underlying!5485 (v!28660 (underlying!5486 (cache!2940 cacheDown!1098))))))) e!1361875))))

(declare-fun b!2134140 () Bool)

(declare-fun res!922204 () Bool)

(assert (=> b!2134140 (=> (not res!922204) (not e!1361881))))

(declare-fun e!1361878 () Bool)

(assert (=> b!2134140 (= res!922204 e!1361878)))

(declare-fun res!922196 () Bool)

(assert (=> b!2134140 (=> res!922196 e!1361878)))

(assert (=> b!2134140 (= res!922196 (not (nullableZipper!114 z!3839)))))

(declare-fun b!2134141 () Bool)

(declare-fun res!922200 () Bool)

(assert (=> b!2134141 (=> (not res!922200) (not e!1361881))))

(assert (=> b!2134141 (= res!922200 (= (totalInput!3046 cacheFurthestNullable!114) totalInput!851))))

(declare-fun res!922205 () Bool)

(assert (=> b!2134142 (=> (not res!922205) (not e!1361882))))

(assert (=> b!2134142 (= res!922205 (forall!4925 stack!8 lambda!79371))))

(declare-fun mapNonEmpty!12720 () Bool)

(declare-fun tp!657419 () Bool)

(declare-fun tp!657423 () Bool)

(assert (=> mapNonEmpty!12720 (= mapRes!12719 (and tp!657419 tp!657423))))

(declare-fun mapRest!12719 () (Array (_ BitVec 32) List!24183))

(declare-fun mapKey!12718 () (_ BitVec 32))

(declare-fun mapValue!12720 () List!24183)

(assert (=> mapNonEmpty!12720 (= (arr!4002 (_values!2925 (v!28659 (underlying!5485 (v!28660 (underlying!5486 (cache!2940 cacheDown!1098))))))) (store mapRest!12719 mapKey!12718 mapValue!12720))))

(declare-fun setIsEmpty!15876 () Bool)

(declare-fun setRes!15877 () Bool)

(assert (=> setIsEmpty!15876 setRes!15877))

(declare-fun b!2134143 () Bool)

(declare-fun e!1361873 () Bool)

(assert (=> b!2134143 (= e!1361887 e!1361873)))

(declare-fun b!2134144 () Bool)

(declare-fun e!1361850 () Bool)

(declare-fun e!1361866 () Bool)

(assert (=> b!2134144 (= e!1361850 e!1361866)))

(declare-fun b!2134145 () Bool)

(declare-fun lt!796947 () MutLongMap!2645)

(assert (=> b!2134145 (= e!1361883 (and e!1361850 ((_ is LongMap!2645) lt!796947)))))

(assert (=> b!2134145 (= lt!796947 (v!28660 (underlying!5486 (cache!2940 cacheDown!1098))))))

(declare-fun b!2134146 () Bool)

(assert (=> b!2134146 (= e!1361861 e!1361864)))

(declare-fun b!2134147 () Bool)

(assert (=> b!2134147 (= e!1361873 e!1361886)))

(declare-fun b!2134148 () Bool)

(declare-fun res!922198 () Bool)

(assert (=> b!2134148 (=> (not res!922198) (not e!1361881))))

(declare-fun valid!2073 (CacheUp!1772) Bool)

(assert (=> b!2134148 (= res!922198 (valid!2073 cacheUp!979))))

(declare-fun b!2134149 () Bool)

(assert (=> b!2134149 (= e!1361858 (and setRes!15877 (inv!31758 (totalInput!3047 (h!29504 stack!8))) e!1361870))))

(declare-fun condSetEmpty!15876 () Bool)

(assert (=> b!2134149 (= condSetEmpty!15876 (= (z!5809 (h!29504 stack!8)) ((as const (Array Context!2610 Bool)) false)))))

(declare-fun b!2134150 () Bool)

(assert (=> b!2134150 (= e!1361866 e!1361856)))

(declare-fun setElem!15877 () Context!2610)

(declare-fun setNonEmpty!15877 () Bool)

(declare-fun tp!657415 () Bool)

(assert (=> setNonEmpty!15877 (= setRes!15877 (and tp!657415 (inv!31754 setElem!15877) e!1361853))))

(declare-fun setRest!15877 () (InoxSet Context!2610))

(assert (=> setNonEmpty!15877 (= (z!5809 (h!29504 stack!8)) ((_ map or) (store ((as const (Array Context!2610 Bool)) false) setElem!15877 true) setRest!15877))))

(declare-fun b!2134151 () Bool)

(assert (=> b!2134151 (= e!1361878 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2134152 () Bool)

(declare-fun tp!657401 () Bool)

(assert (=> b!2134152 (= e!1361852 (and tp!657401 mapRes!12720))))

(declare-fun condMapEmpty!12718 () Bool)

(declare-fun mapDefault!12720 () List!24186)

(assert (=> b!2134152 (= condMapEmpty!12718 (= (arr!4004 (_values!2927 (v!28663 (underlying!5489 (v!28664 (underlying!5490 (cache!2942 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24186)) mapDefault!12720)))))

(declare-fun b!2134153 () Bool)

(assert (=> b!2134153 (= e!1361867 e!1361880)))

(declare-fun setIsEmpty!15877 () Bool)

(assert (=> setIsEmpty!15877 setRes!15876))

(declare-fun mapIsEmpty!12720 () Bool)

(assert (=> mapIsEmpty!12720 mapRes!12719))

(declare-fun b!2134154 () Bool)

(assert (=> b!2134154 (= e!1361860 (and e!1361868 (inv!31758 (totalInput!3046 cacheFurthestNullable!114)) e!1361855))))

(assert (= (and start!207576 res!922202) b!2134131))

(assert (= (and b!2134131 res!922208) b!2134140))

(assert (= (and b!2134140 (not res!922196)) b!2134151))

(assert (= (and b!2134140 res!922204) b!2134148))

(assert (= (and b!2134148 res!922198) b!2134111))

(assert (= (and b!2134111 res!922197) b!2134137))

(assert (= (and b!2134137 res!922209) b!2134141))

(assert (= (and b!2134141 res!922200) b!2134114))

(assert (= (and b!2134114 res!922201) b!2134142))

(assert (= (and b!2134142 res!922205) b!2134126))

(assert (= (and b!2134126 (not res!922203)) b!2134116))

(assert (= (and b!2134116 (not res!922206)) b!2134138))

(assert (= (and b!2134138 (not res!922207)) b!2134113))

(assert (= (and b!2134113 c!340284) b!2134112))

(assert (= (and b!2134113 (not c!340284)) b!2134118))

(assert (= (and b!2134113 (not res!922199)) b!2134136))

(assert (= (and b!2134117 condMapEmpty!12720) mapIsEmpty!12718))

(assert (= (and b!2134117 (not condMapEmpty!12720)) mapNonEmpty!12718))

(assert (= b!2134132 b!2134117))

(assert (= b!2134147 b!2134132))

(assert (= b!2134143 b!2134147))

(assert (= (and b!2134134 ((_ is LongMap!2646) (v!28662 (underlying!5488 (cache!2941 cacheFurthestNullable!114))))) b!2134143))

(assert (= b!2134119 b!2134134))

(assert (= (and b!2134154 ((_ is HashMap!2560) (cache!2941 cacheFurthestNullable!114))) b!2134119))

(assert (= b!2134154 b!2134133))

(assert (= start!207576 b!2134154))

(assert (= (and b!2134128 condMapEmpty!12719) mapIsEmpty!12720))

(assert (= (and b!2134128 (not condMapEmpty!12719)) mapNonEmpty!12720))

(assert (= b!2134139 b!2134128))

(assert (= b!2134150 b!2134139))

(assert (= b!2134144 b!2134150))

(assert (= (and b!2134145 ((_ is LongMap!2645) (v!28660 (underlying!5486 (cache!2940 cacheDown!1098))))) b!2134144))

(assert (= b!2134124 b!2134145))

(assert (= (and b!2134153 ((_ is HashMap!2559) (cache!2940 cacheDown!1098))) b!2134124))

(assert (= start!207576 b!2134153))

(assert (= (and b!2134152 condMapEmpty!12718) mapIsEmpty!12719))

(assert (= (and b!2134152 (not condMapEmpty!12718)) mapNonEmpty!12719))

(assert (= b!2134121 b!2134152))

(assert (= b!2134146 b!2134121))

(assert (= b!2134130 b!2134146))

(assert (= (and b!2134129 ((_ is LongMap!2647) (v!28664 (underlying!5490 (cache!2942 cacheUp!979))))) b!2134130))

(assert (= b!2134125 b!2134129))

(assert (= (and b!2134127 ((_ is HashMap!2561) (cache!2942 cacheUp!979))) b!2134125))

(assert (= start!207576 b!2134127))

(assert (= (and start!207576 condSetEmpty!15877) setIsEmpty!15877))

(assert (= (and start!207576 (not condSetEmpty!15877)) setNonEmpty!15876))

(assert (= setNonEmpty!15876 b!2134122))

(assert (= start!207576 b!2134135))

(assert (= (and b!2134149 condSetEmpty!15876) setIsEmpty!15876))

(assert (= (and b!2134149 (not condSetEmpty!15876)) setNonEmpty!15877))

(assert (= setNonEmpty!15877 b!2134120))

(assert (= b!2134149 b!2134123))

(assert (= b!2134115 b!2134149))

(assert (= (and start!207576 ((_ is Cons!24103) stack!8)) b!2134115))

(declare-fun m!2582502 () Bool)

(assert (=> setNonEmpty!15876 m!2582502))

(declare-fun m!2582504 () Bool)

(assert (=> setNonEmpty!15877 m!2582504))

(declare-fun m!2582506 () Bool)

(assert (=> b!2134139 m!2582506))

(declare-fun m!2582508 () Bool)

(assert (=> b!2134139 m!2582508))

(declare-fun m!2582510 () Bool)

(assert (=> b!2134154 m!2582510))

(declare-fun m!2582512 () Bool)

(assert (=> mapNonEmpty!12718 m!2582512))

(declare-fun m!2582514 () Bool)

(assert (=> b!2134137 m!2582514))

(declare-fun m!2582516 () Bool)

(assert (=> b!2134140 m!2582516))

(declare-fun m!2582518 () Bool)

(assert (=> b!2134114 m!2582518))

(declare-fun m!2582520 () Bool)

(assert (=> b!2134114 m!2582520))

(declare-fun m!2582522 () Bool)

(assert (=> b!2134138 m!2582522))

(declare-fun m!2582524 () Bool)

(assert (=> b!2134149 m!2582524))

(declare-fun m!2582526 () Bool)

(assert (=> b!2134131 m!2582526))

(declare-fun m!2582528 () Bool)

(assert (=> start!207576 m!2582528))

(declare-fun m!2582530 () Bool)

(assert (=> start!207576 m!2582530))

(declare-fun m!2582532 () Bool)

(assert (=> start!207576 m!2582532))

(declare-fun m!2582534 () Bool)

(assert (=> start!207576 m!2582534))

(declare-fun m!2582536 () Bool)

(assert (=> b!2134135 m!2582536))

(declare-fun m!2582538 () Bool)

(assert (=> b!2134115 m!2582538))

(declare-fun m!2582540 () Bool)

(assert (=> mapNonEmpty!12719 m!2582540))

(declare-fun m!2582542 () Bool)

(assert (=> b!2134123 m!2582542))

(declare-fun m!2582544 () Bool)

(assert (=> b!2134121 m!2582544))

(declare-fun m!2582546 () Bool)

(assert (=> b!2134121 m!2582546))

(declare-fun m!2582548 () Bool)

(assert (=> b!2134113 m!2582548))

(declare-fun m!2582550 () Bool)

(assert (=> b!2134113 m!2582550))

(declare-fun m!2582552 () Bool)

(assert (=> b!2134113 m!2582552))

(assert (=> b!2134113 m!2582552))

(declare-fun m!2582554 () Bool)

(assert (=> b!2134113 m!2582554))

(declare-fun m!2582556 () Bool)

(assert (=> b!2134133 m!2582556))

(declare-fun m!2582558 () Bool)

(assert (=> b!2134111 m!2582558))

(declare-fun m!2582560 () Bool)

(assert (=> b!2134132 m!2582560))

(declare-fun m!2582562 () Bool)

(assert (=> b!2134132 m!2582562))

(declare-fun m!2582564 () Bool)

(assert (=> b!2134148 m!2582564))

(declare-fun m!2582566 () Bool)

(assert (=> b!2134126 m!2582566))

(assert (=> b!2134126 m!2582518))

(declare-fun m!2582568 () Bool)

(assert (=> b!2134142 m!2582568))

(declare-fun m!2582570 () Bool)

(assert (=> mapNonEmpty!12720 m!2582570))

(check-sat (not b!2134123) (not b!2134137) (not b!2134148) (not b!2134128) (not b!2134113) b_and!172063 (not b!2134114) (not mapNonEmpty!12718) b_and!172067 (not b!2134131) b_and!172059 (not b_next!63183) (not b_next!63189) (not b!2134111) (not b_next!63185) (not setNonEmpty!15877) b_and!172057 (not b_next!63191) (not mapNonEmpty!12720) (not setNonEmpty!15876) (not mapNonEmpty!12719) (not b!2134133) b_and!172061 (not b!2134149) (not b!2134121) (not b!2134140) (not b!2134135) (not b!2134117) b_and!172065 (not b!2134115) (not b!2134132) (not b!2134138) (not b!2134122) (not b!2134152) (not b_next!63181) (not b_next!63187) (not b!2134120) (not start!207576) (not b!2134142) (not b!2134139) (not b!2134154) (not b!2134126))
(check-sat (not b_next!63185) b_and!172057 (not b_next!63191) b_and!172061 b_and!172063 b_and!172065 (not b_next!63181) (not b_next!63187) b_and!172067 b_and!172059 (not b_next!63183) (not b_next!63189))
