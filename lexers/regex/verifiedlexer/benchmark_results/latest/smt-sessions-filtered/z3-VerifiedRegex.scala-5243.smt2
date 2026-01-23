; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269370 () Bool)

(assert start!269370)

(declare-fun b!2787284 () Bool)

(declare-fun b_free!78837 () Bool)

(declare-fun b_next!79541 () Bool)

(assert (=> b!2787284 (= b_free!78837 (not b_next!79541))))

(declare-fun tp!884084 () Bool)

(declare-fun b_and!203575 () Bool)

(assert (=> b!2787284 (= tp!884084 b_and!203575)))

(declare-fun b!2787278 () Bool)

(declare-fun b_free!78839 () Bool)

(declare-fun b_next!79543 () Bool)

(assert (=> b!2787278 (= b_free!78839 (not b_next!79543))))

(declare-fun tp!884087 () Bool)

(declare-fun b_and!203577 () Bool)

(assert (=> b!2787278 (= tp!884087 b_and!203577)))

(declare-fun b!2787282 () Bool)

(declare-fun b_free!78841 () Bool)

(declare-fun b_next!79545 () Bool)

(assert (=> b!2787282 (= b_free!78841 (not b_next!79545))))

(declare-fun tp!884081 () Bool)

(declare-fun b_and!203579 () Bool)

(assert (=> b!2787282 (= tp!884081 b_and!203579)))

(declare-fun b!2787299 () Bool)

(declare-fun b_free!78843 () Bool)

(declare-fun b_next!79547 () Bool)

(assert (=> b!2787299 (= b_free!78843 (not b_next!79547))))

(declare-fun tp!884088 () Bool)

(declare-fun b_and!203581 () Bool)

(assert (=> b!2787299 (= tp!884088 b_and!203581)))

(declare-fun mapIsEmpty!17783 () Bool)

(declare-fun mapRes!17783 () Bool)

(assert (=> mapIsEmpty!17783 mapRes!17783))

(declare-fun b!2787275 () Bool)

(declare-fun res!1163102 () Bool)

(declare-fun e!1759154 () Bool)

(assert (=> b!2787275 (=> (not res!1163102) (not e!1759154))))

(declare-datatypes ((C!16460 0))(
  ( (C!16461 (val!10164 Int)) )
))
(declare-datatypes ((array!13874 0))(
  ( (array!13875 (arr!6184 (Array (_ BitVec 32) (_ BitVec 64))) (size!25087 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8151 0))(
  ( (ElementMatch!8151 (c!452624 C!16460)) (Concat!13239 (regOne!16814 Regex!8151) (regTwo!16814 Regex!8151)) (EmptyExpr!8151) (Star!8151 (reg!8480 Regex!8151)) (EmptyLang!8151) (Union!8151 (regOne!16815 Regex!8151) (regTwo!16815 Regex!8151)) )
))
(declare-datatypes ((List!32363 0))(
  ( (Nil!32263) (Cons!32263 (h!37683 Regex!8151) (t!228505 List!32363)) )
))
(declare-datatypes ((Context!4738 0))(
  ( (Context!4739 (exprs!2869 List!32363)) )
))
(declare-datatypes ((tuple3!5016 0))(
  ( (tuple3!5017 (_1!19295 Regex!8151) (_2!19295 Context!4738) (_3!2978 C!16460)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32634 0))(
  ( (tuple2!32635 (_1!19296 tuple3!5016) (_2!19296 (InoxSet Context!4738))) )
))
(declare-datatypes ((List!32364 0))(
  ( (Nil!32264) (Cons!32264 (h!37684 tuple2!32634) (t!228506 List!32364)) )
))
(declare-datatypes ((array!13876 0))(
  ( (array!13877 (arr!6185 (Array (_ BitVec 32) List!32364)) (size!25088 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7800 0))(
  ( (LongMapFixedSize!7801 (defaultEntry!4285 Int) (mask!9712 (_ BitVec 32)) (extraKeys!4149 (_ BitVec 32)) (zeroValue!4159 List!32364) (minValue!4159 List!32364) (_size!7843 (_ BitVec 32)) (_keys!4200 array!13874) (_values!4181 array!13876) (_vacant!3961 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15409 0))(
  ( (Cell!15410 (v!33868 LongMapFixedSize!7800)) )
))
(declare-datatypes ((MutLongMap!3900 0))(
  ( (LongMap!3900 (underlying!8003 Cell!15409)) (MutLongMapExt!3899 (__x!21350 Int)) )
))
(declare-datatypes ((Cell!15411 0))(
  ( (Cell!15412 (v!33869 MutLongMap!3900)) )
))
(declare-datatypes ((Hashable!3816 0))(
  ( (HashableExt!3815 (__x!21351 Int)) )
))
(declare-datatypes ((MutableMap!3806 0))(
  ( (MutableMapExt!3805 (__x!21352 Int)) (HashMap!3806 (underlying!8004 Cell!15411) (hashF!5848 Hashable!3816) (_size!7844 (_ BitVec 32)) (defaultValue!3977 Int)) )
))
(declare-datatypes ((CacheDown!2632 0))(
  ( (CacheDown!2633 (cache!3949 MutableMap!3806)) )
))
(declare-fun cacheDown!1009 () CacheDown!2632)

(declare-fun valid!3048 (CacheDown!2632) Bool)

(assert (=> b!2787275 (= res!1163102 (valid!3048 cacheDown!1009))))

(declare-fun b!2787276 () Bool)

(declare-fun e!1759166 () Bool)

(declare-fun testedPSize!143 () Int)

(declare-fun lt!995902 () Int)

(assert (=> b!2787276 (= e!1759166 (and (<= 0 testedPSize!143) (< testedPSize!143 lt!995902)))))

(declare-fun lt!995909 () C!16460)

(declare-datatypes ((Hashable!3817 0))(
  ( (HashableExt!3816 (__x!21353 Int)) )
))
(declare-datatypes ((tuple2!32636 0))(
  ( (tuple2!32637 (_1!19297 Context!4738) (_2!19297 C!16460)) )
))
(declare-datatypes ((tuple2!32638 0))(
  ( (tuple2!32639 (_1!19298 tuple2!32636) (_2!19298 (InoxSet Context!4738))) )
))
(declare-datatypes ((List!32365 0))(
  ( (Nil!32265) (Cons!32265 (h!37685 tuple2!32638) (t!228507 List!32365)) )
))
(declare-datatypes ((array!13878 0))(
  ( (array!13879 (arr!6186 (Array (_ BitVec 32) List!32365)) (size!25089 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7802 0))(
  ( (LongMapFixedSize!7803 (defaultEntry!4286 Int) (mask!9713 (_ BitVec 32)) (extraKeys!4150 (_ BitVec 32)) (zeroValue!4160 List!32365) (minValue!4160 List!32365) (_size!7845 (_ BitVec 32)) (_keys!4201 array!13874) (_values!4182 array!13878) (_vacant!3962 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15413 0))(
  ( (Cell!15414 (v!33870 LongMapFixedSize!7802)) )
))
(declare-datatypes ((MutLongMap!3901 0))(
  ( (LongMap!3901 (underlying!8005 Cell!15413)) (MutLongMapExt!3900 (__x!21354 Int)) )
))
(declare-datatypes ((Cell!15415 0))(
  ( (Cell!15416 (v!33871 MutLongMap!3901)) )
))
(declare-datatypes ((MutableMap!3807 0))(
  ( (MutableMapExt!3806 (__x!21355 Int)) (HashMap!3807 (underlying!8006 Cell!15415) (hashF!5849 Hashable!3817) (_size!7846 (_ BitVec 32)) (defaultValue!3978 Int)) )
))
(declare-datatypes ((CacheUp!2512 0))(
  ( (CacheUp!2513 (cache!3950 MutableMap!3807)) )
))
(declare-fun cacheUp!890 () CacheUp!2512)

(declare-datatypes ((tuple3!5018 0))(
  ( (tuple3!5019 (_1!19299 (InoxSet Context!4738)) (_2!19299 CacheUp!2512) (_3!2979 CacheDown!2632)) )
))
(declare-fun lt!995898 () tuple3!5018)

(declare-fun z!3684 () (InoxSet Context!4738))

(declare-fun derivationStepZipperMem!100 ((InoxSet Context!4738) C!16460 CacheUp!2512 CacheDown!2632) tuple3!5018)

(assert (=> b!2787276 (= lt!995898 (derivationStepZipperMem!100 z!3684 lt!995909 cacheUp!890 cacheDown!1009))))

(declare-fun b!2787277 () Bool)

(declare-fun e!1759147 () Bool)

(declare-fun e!1759159 () Bool)

(assert (=> b!2787277 (= e!1759147 e!1759159)))

(declare-fun res!1163097 () Bool)

(assert (=> b!2787277 (=> res!1163097 e!1759159)))

(declare-datatypes ((List!32366 0))(
  ( (Nil!32266) (Cons!32266 (h!37686 C!16460) (t!228508 List!32366)) )
))
(declare-fun testedSuffix!143 () List!32366)

(declare-fun head!6172 (List!32366) C!16460)

(assert (=> b!2787277 (= res!1163097 (not (= lt!995909 (head!6172 testedSuffix!143))))))

(declare-datatypes ((IArray!20047 0))(
  ( (IArray!20048 (innerList!10081 List!32366)) )
))
(declare-datatypes ((Conc!10021 0))(
  ( (Node!10021 (left!24488 Conc!10021) (right!24818 Conc!10021) (csize!20272 Int) (cheight!10232 Int)) (Leaf!15265 (xs!13132 IArray!20047) (csize!20273 Int)) (Empty!10021) )
))
(declare-datatypes ((BalanceConc!19656 0))(
  ( (BalanceConc!19657 (c!452625 Conc!10021)) )
))
(declare-fun totalInput!758 () BalanceConc!19656)

(declare-fun apply!7549 (BalanceConc!19656 Int) C!16460)

(assert (=> b!2787277 (= lt!995909 (apply!7549 totalInput!758 testedPSize!143))))

(declare-fun lt!995913 () List!32366)

(declare-fun drop!1726 (List!32366 Int) List!32366)

(declare-fun apply!7550 (List!32366 Int) C!16460)

(assert (=> b!2787277 (= (head!6172 (drop!1726 lt!995913 testedPSize!143)) (apply!7550 lt!995913 testedPSize!143))))

(declare-datatypes ((Unit!46484 0))(
  ( (Unit!46485) )
))
(declare-fun lt!995907 () Unit!46484)

(declare-fun lemmaDropApply!932 (List!32366 Int) Unit!46484)

(assert (=> b!2787277 (= lt!995907 (lemmaDropApply!932 lt!995913 testedPSize!143))))

(declare-fun lt!995903 () List!32366)

(declare-fun testedP!183 () List!32366)

(declare-fun lt!995891 () List!32366)

(assert (=> b!2787277 (not (or (not (= lt!995891 testedP!183)) (not (= lt!995903 testedSuffix!143))))))

(declare-fun lt!995897 () Unit!46484)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!359 (List!32366 List!32366 List!32366 List!32366) Unit!46484)

(assert (=> b!2787277 (= lt!995897 (lemmaConcatSameAndSameSizesThenSameLists!359 lt!995891 lt!995903 testedP!183 testedSuffix!143))))

(declare-fun e!1759161 () Bool)

(declare-fun tp!884072 () Bool)

(declare-fun tp!884076 () Bool)

(declare-fun e!1759156 () Bool)

(declare-fun array_inv!4428 (array!13874) Bool)

(declare-fun array_inv!4429 (array!13878) Bool)

(assert (=> b!2787278 (= e!1759161 (and tp!884087 tp!884072 tp!884076 (array_inv!4428 (_keys!4201 (v!33870 (underlying!8005 (v!33871 (underlying!8006 (cache!3950 cacheUp!890))))))) (array_inv!4429 (_values!4182 (v!33870 (underlying!8005 (v!33871 (underlying!8006 (cache!3950 cacheUp!890))))))) e!1759156))))

(declare-fun setIsEmpty!23626 () Bool)

(declare-fun setRes!23626 () Bool)

(assert (=> setIsEmpty!23626 setRes!23626))

(declare-fun setNonEmpty!23626 () Bool)

(declare-fun e!1759174 () Bool)

(declare-fun setElem!23626 () Context!4738)

(declare-fun tp!884080 () Bool)

(declare-fun inv!43832 (Context!4738) Bool)

(assert (=> setNonEmpty!23626 (= setRes!23626 (and tp!884080 (inv!43832 setElem!23626) e!1759174))))

(declare-fun setRest!23626 () (InoxSet Context!4738))

(assert (=> setNonEmpty!23626 (= z!3684 ((_ map or) (store ((as const (Array Context!4738 Bool)) false) setElem!23626 true) setRest!23626))))

(declare-fun b!2787279 () Bool)

(declare-fun e!1759160 () Bool)

(declare-fun tp_is_empty!14115 () Bool)

(declare-fun tp!884075 () Bool)

(assert (=> b!2787279 (= e!1759160 (and tp_is_empty!14115 tp!884075))))

(declare-fun b!2787280 () Bool)

(declare-fun e!1759164 () Bool)

(assert (=> b!2787280 (= e!1759164 e!1759161)))

(declare-fun b!2787281 () Bool)

(declare-fun e!1759163 () Bool)

(declare-fun e!1759155 () Bool)

(assert (=> b!2787281 (= e!1759163 e!1759155)))

(declare-fun res!1163101 () Bool)

(assert (=> b!2787281 (=> (not res!1163101) (not e!1759155))))

(declare-fun lt!995911 () Int)

(assert (=> b!2787281 (= res!1163101 (= testedPSize!143 lt!995911))))

(declare-fun size!25090 (List!32366) Int)

(assert (=> b!2787281 (= lt!995911 (size!25090 testedP!183))))

(declare-fun e!1759165 () Bool)

(declare-fun e!1759157 () Bool)

(assert (=> b!2787282 (= e!1759165 (and e!1759157 tp!884081))))

(declare-fun b!2787283 () Bool)

(declare-fun e!1759168 () Bool)

(declare-fun e!1759167 () Bool)

(assert (=> b!2787283 (= e!1759168 e!1759167)))

(declare-fun e!1759149 () Bool)

(assert (=> b!2787284 (= e!1759167 (and e!1759149 tp!884084))))

(declare-fun b!2787285 () Bool)

(declare-fun e!1759146 () Bool)

(assert (=> b!2787285 (= e!1759146 e!1759166)))

(declare-fun res!1163103 () Bool)

(assert (=> b!2787285 (=> res!1163103 e!1759166)))

(declare-fun nullableZipper!642 ((InoxSet Context!4738)) Bool)

(assert (=> b!2787285 (= res!1163103 (not (nullableZipper!642 z!3684)))))

(declare-fun lt!995894 () List!32366)

(declare-fun ++!7969 (List!32366 List!32366) List!32366)

(assert (=> b!2787285 (= (++!7969 (++!7969 testedP!183 (Cons!32266 lt!995909 Nil!32266)) lt!995894) lt!995913)))

(declare-fun lt!995893 () Unit!46484)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!878 (List!32366 C!16460 List!32366 List!32366) Unit!46484)

(assert (=> b!2787285 (= lt!995893 (lemmaMoveElementToOtherListKeepsConcatEq!878 testedP!183 lt!995909 lt!995894 lt!995913))))

(declare-fun tail!4404 (List!32366) List!32366)

(assert (=> b!2787285 (= lt!995894 (tail!4404 testedSuffix!143))))

(declare-fun lt!995899 () List!32366)

(declare-fun isPrefix!2589 (List!32366 List!32366) Bool)

(assert (=> b!2787285 (isPrefix!2589 (++!7969 testedP!183 (Cons!32266 (head!6172 lt!995899) Nil!32266)) lt!995913)))

(declare-fun lt!995905 () Unit!46484)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!469 (List!32366 List!32366) Unit!46484)

(assert (=> b!2787285 (= lt!995905 (lemmaAddHeadSuffixToPrefixStillPrefix!469 testedP!183 lt!995913))))

(declare-fun mapNonEmpty!17783 () Bool)

(declare-fun mapRes!17784 () Bool)

(declare-fun tp!884083 () Bool)

(declare-fun tp!884082 () Bool)

(assert (=> mapNonEmpty!17783 (= mapRes!17784 (and tp!884083 tp!884082))))

(declare-fun mapKey!17784 () (_ BitVec 32))

(declare-fun mapRest!17784 () (Array (_ BitVec 32) List!32365))

(declare-fun mapValue!17784 () List!32365)

(assert (=> mapNonEmpty!17783 (= (arr!6186 (_values!4182 (v!33870 (underlying!8005 (v!33871 (underlying!8006 (cache!3950 cacheUp!890))))))) (store mapRest!17784 mapKey!17784 mapValue!17784))))

(declare-fun b!2787286 () Bool)

(declare-fun e!1759162 () Bool)

(declare-fun e!1759158 () Bool)

(assert (=> b!2787286 (= e!1759162 e!1759158)))

(declare-fun b!2787287 () Bool)

(declare-fun e!1759173 () Bool)

(declare-fun tp!884071 () Bool)

(declare-fun inv!43833 (Conc!10021) Bool)

(assert (=> b!2787287 (= e!1759173 (and (inv!43833 (c!452625 totalInput!758)) tp!884071))))

(declare-fun b!2787288 () Bool)

(assert (=> b!2787288 (= e!1759159 e!1759146)))

(declare-fun res!1163098 () Bool)

(assert (=> b!2787288 (=> res!1163098 e!1759146)))

(assert (=> b!2787288 (= res!1163098 (>= lt!995911 lt!995902))))

(declare-fun lt!995892 () Unit!46484)

(declare-fun e!1759169 () Unit!46484)

(assert (=> b!2787288 (= lt!995892 e!1759169)))

(declare-fun c!452623 () Bool)

(assert (=> b!2787288 (= c!452623 (= lt!995911 lt!995902))))

(assert (=> b!2787288 (<= lt!995911 (size!25090 lt!995913))))

(declare-fun lt!995900 () Unit!46484)

(declare-fun lemmaIsPrefixThenSmallerEqSize!276 (List!32366 List!32366) Unit!46484)

(assert (=> b!2787288 (= lt!995900 (lemmaIsPrefixThenSmallerEqSize!276 testedP!183 lt!995913))))

(declare-fun b!2787289 () Bool)

(assert (=> b!2787289 (= e!1759155 e!1759154)))

(declare-fun res!1163106 () Bool)

(assert (=> b!2787289 (=> (not res!1163106) (not e!1759154))))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2787289 (= res!1163106 (= totalInputSize!205 lt!995902))))

(declare-fun size!25091 (BalanceConc!19656) Int)

(assert (=> b!2787289 (= lt!995902 (size!25091 totalInput!758))))

(declare-fun b!2787290 () Bool)

(declare-fun e!1759170 () Bool)

(declare-fun e!1759153 () Bool)

(assert (=> b!2787290 (= e!1759170 e!1759153)))

(declare-fun res!1163105 () Bool)

(assert (=> b!2787290 (=> res!1163105 e!1759153)))

(declare-fun lostCauseZipper!468 ((InoxSet Context!4738)) Bool)

(assert (=> b!2787290 (= res!1163105 (lostCauseZipper!468 z!3684))))

(assert (=> b!2787290 (and (= testedSuffix!143 lt!995899) (= lt!995899 testedSuffix!143))))

(declare-fun lt!995896 () Unit!46484)

(declare-fun lemmaSamePrefixThenSameSuffix!1169 (List!32366 List!32366 List!32366 List!32366 List!32366) Unit!46484)

(assert (=> b!2787290 (= lt!995896 (lemmaSamePrefixThenSameSuffix!1169 testedP!183 testedSuffix!143 testedP!183 lt!995899 lt!995913))))

(declare-fun getSuffix!1268 (List!32366 List!32366) List!32366)

(assert (=> b!2787290 (= lt!995899 (getSuffix!1268 lt!995913 testedP!183))))

(declare-fun b!2787291 () Bool)

(assert (=> b!2787291 (= e!1759153 e!1759147)))

(declare-fun res!1163107 () Bool)

(assert (=> b!2787291 (=> res!1163107 e!1759147)))

(assert (=> b!2787291 (= res!1163107 (not (= (++!7969 lt!995891 lt!995903) lt!995913)))))

(declare-datatypes ((tuple2!32640 0))(
  ( (tuple2!32641 (_1!19300 BalanceConc!19656) (_2!19300 BalanceConc!19656)) )
))
(declare-fun lt!995895 () tuple2!32640)

(declare-fun list!12145 (BalanceConc!19656) List!32366)

(assert (=> b!2787291 (= lt!995903 (list!12145 (_2!19300 lt!995895)))))

(assert (=> b!2787291 (= lt!995891 (list!12145 (_1!19300 lt!995895)))))

(declare-fun splitAt!148 (BalanceConc!19656 Int) tuple2!32640)

(assert (=> b!2787291 (= lt!995895 (splitAt!148 totalInput!758 testedPSize!143))))

(declare-fun b!2787292 () Bool)

(declare-fun Unit!46486 () Unit!46484)

(assert (=> b!2787292 (= e!1759169 Unit!46486)))

(declare-fun lt!995906 () Unit!46484)

(declare-fun lemmaIsPrefixRefl!1693 (List!32366 List!32366) Unit!46484)

(assert (=> b!2787292 (= lt!995906 (lemmaIsPrefixRefl!1693 lt!995913 lt!995913))))

(assert (=> b!2787292 (isPrefix!2589 lt!995913 lt!995913)))

(declare-fun lt!995904 () Unit!46484)

(declare-fun lemmaIsPrefixSameLengthThenSameList!473 (List!32366 List!32366 List!32366) Unit!46484)

(assert (=> b!2787292 (= lt!995904 (lemmaIsPrefixSameLengthThenSameList!473 lt!995913 testedP!183 lt!995913))))

(assert (=> b!2787292 false))

(declare-fun b!2787293 () Bool)

(declare-fun e!1759152 () Bool)

(declare-fun tp!884077 () Bool)

(assert (=> b!2787293 (= e!1759152 (and tp_is_empty!14115 tp!884077))))

(declare-fun b!2787294 () Bool)

(declare-fun tp!884079 () Bool)

(assert (=> b!2787294 (= e!1759174 tp!884079)))

(declare-fun b!2787295 () Bool)

(declare-fun e!1759171 () Bool)

(assert (=> b!2787295 (= e!1759171 e!1759164)))

(declare-fun b!2787296 () Bool)

(declare-fun res!1163108 () Bool)

(assert (=> b!2787296 (=> res!1163108 e!1759153)))

(assert (=> b!2787296 (= res!1163108 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2787297 () Bool)

(declare-fun lt!995912 () MutLongMap!3900)

(get-info :version)

(assert (=> b!2787297 (= e!1759157 (and e!1759162 ((_ is LongMap!3900) lt!995912)))))

(assert (=> b!2787297 (= lt!995912 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009))))))

(declare-fun b!2787298 () Bool)

(declare-fun res!1163104 () Bool)

(assert (=> b!2787298 (=> (not res!1163104) (not e!1759154))))

(declare-fun valid!3049 (CacheUp!2512) Bool)

(assert (=> b!2787298 (= res!1163104 (valid!3049 cacheUp!890))))

(declare-fun tp!884086 () Bool)

(declare-fun e!1759150 () Bool)

(declare-fun e!1759148 () Bool)

(declare-fun tp!884078 () Bool)

(declare-fun array_inv!4430 (array!13876) Bool)

(assert (=> b!2787299 (= e!1759150 (and tp!884088 tp!884086 tp!884078 (array_inv!4428 (_keys!4200 (v!33868 (underlying!8003 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009))))))) (array_inv!4430 (_values!4181 (v!33868 (underlying!8003 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009))))))) e!1759148))))

(declare-fun b!2787300 () Bool)

(declare-fun res!1163100 () Bool)

(assert (=> b!2787300 (=> res!1163100 e!1759147)))

(assert (=> b!2787300 (= res!1163100 (not (= (size!25091 (_1!19300 lt!995895)) testedPSize!143)))))

(declare-fun b!2787301 () Bool)

(declare-fun tp!884070 () Bool)

(assert (=> b!2787301 (= e!1759148 (and tp!884070 mapRes!17783))))

(declare-fun condMapEmpty!17784 () Bool)

(declare-fun mapDefault!17783 () List!32364)

(assert (=> b!2787301 (= condMapEmpty!17784 (= (arr!6185 (_values!4181 (v!33868 (underlying!8003 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32364)) mapDefault!17783)))))

(declare-fun b!2787302 () Bool)

(declare-fun e!1759151 () Bool)

(assert (=> b!2787302 (= e!1759151 e!1759165)))

(declare-fun b!2787303 () Bool)

(declare-fun tp!884073 () Bool)

(assert (=> b!2787303 (= e!1759156 (and tp!884073 mapRes!17784))))

(declare-fun condMapEmpty!17783 () Bool)

(declare-fun mapDefault!17784 () List!32365)

(assert (=> b!2787303 (= condMapEmpty!17783 (= (arr!6186 (_values!4182 (v!33870 (underlying!8005 (v!33871 (underlying!8006 (cache!3950 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32365)) mapDefault!17784)))))

(declare-fun mapNonEmpty!17784 () Bool)

(declare-fun tp!884074 () Bool)

(declare-fun tp!884085 () Bool)

(assert (=> mapNonEmpty!17784 (= mapRes!17783 (and tp!884074 tp!884085))))

(declare-fun mapKey!17783 () (_ BitVec 32))

(declare-fun mapRest!17783 () (Array (_ BitVec 32) List!32364))

(declare-fun mapValue!17783 () List!32364)

(assert (=> mapNonEmpty!17784 (= (arr!6185 (_values!4181 (v!33868 (underlying!8003 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009))))))) (store mapRest!17783 mapKey!17783 mapValue!17783))))

(declare-fun b!2787304 () Bool)

(assert (=> b!2787304 (= e!1759154 (not e!1759170))))

(declare-fun res!1163096 () Bool)

(assert (=> b!2787304 (=> res!1163096 e!1759170)))

(assert (=> b!2787304 (= res!1163096 (not (isPrefix!2589 testedP!183 lt!995913)))))

(declare-fun lt!995901 () List!32366)

(assert (=> b!2787304 (isPrefix!2589 testedP!183 lt!995901)))

(declare-fun lt!995908 () Unit!46484)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1699 (List!32366 List!32366) Unit!46484)

(assert (=> b!2787304 (= lt!995908 (lemmaConcatTwoListThenFirstIsPrefix!1699 testedP!183 testedSuffix!143))))

(declare-fun b!2787305 () Bool)

(declare-fun Unit!46487 () Unit!46484)

(assert (=> b!2787305 (= e!1759169 Unit!46487)))

(declare-fun mapIsEmpty!17784 () Bool)

(assert (=> mapIsEmpty!17784 mapRes!17784))

(declare-fun res!1163099 () Bool)

(assert (=> start!269370 (=> (not res!1163099) (not e!1759163))))

(assert (=> start!269370 (= res!1163099 (= lt!995901 lt!995913))))

(assert (=> start!269370 (= lt!995913 (list!12145 totalInput!758))))

(assert (=> start!269370 (= lt!995901 (++!7969 testedP!183 testedSuffix!143))))

(assert (=> start!269370 e!1759163))

(declare-fun inv!43834 (BalanceConc!19656) Bool)

(assert (=> start!269370 (and (inv!43834 totalInput!758) e!1759173)))

(declare-fun condSetEmpty!23626 () Bool)

(assert (=> start!269370 (= condSetEmpty!23626 (= z!3684 ((as const (Array Context!4738 Bool)) false)))))

(assert (=> start!269370 setRes!23626))

(assert (=> start!269370 true))

(assert (=> start!269370 e!1759152))

(assert (=> start!269370 e!1759160))

(declare-fun inv!43835 (CacheDown!2632) Bool)

(assert (=> start!269370 (and (inv!43835 cacheDown!1009) e!1759151)))

(declare-fun inv!43836 (CacheUp!2512) Bool)

(assert (=> start!269370 (and (inv!43836 cacheUp!890) e!1759168)))

(declare-fun b!2787306 () Bool)

(declare-fun lt!995910 () MutLongMap!3901)

(assert (=> b!2787306 (= e!1759149 (and e!1759171 ((_ is LongMap!3901) lt!995910)))))

(assert (=> b!2787306 (= lt!995910 (v!33871 (underlying!8006 (cache!3950 cacheUp!890))))))

(declare-fun b!2787307 () Bool)

(assert (=> b!2787307 (= e!1759158 e!1759150)))

(assert (= (and start!269370 res!1163099) b!2787281))

(assert (= (and b!2787281 res!1163101) b!2787289))

(assert (= (and b!2787289 res!1163106) b!2787298))

(assert (= (and b!2787298 res!1163104) b!2787275))

(assert (= (and b!2787275 res!1163102) b!2787304))

(assert (= (and b!2787304 (not res!1163096)) b!2787290))

(assert (= (and b!2787290 (not res!1163105)) b!2787296))

(assert (= (and b!2787296 (not res!1163108)) b!2787291))

(assert (= (and b!2787291 (not res!1163107)) b!2787300))

(assert (= (and b!2787300 (not res!1163100)) b!2787277))

(assert (= (and b!2787277 (not res!1163097)) b!2787288))

(assert (= (and b!2787288 c!452623) b!2787292))

(assert (= (and b!2787288 (not c!452623)) b!2787305))

(assert (= (and b!2787288 (not res!1163098)) b!2787285))

(assert (= (and b!2787285 (not res!1163103)) b!2787276))

(assert (= start!269370 b!2787287))

(assert (= (and start!269370 condSetEmpty!23626) setIsEmpty!23626))

(assert (= (and start!269370 (not condSetEmpty!23626)) setNonEmpty!23626))

(assert (= setNonEmpty!23626 b!2787294))

(assert (= (and start!269370 ((_ is Cons!32266) testedP!183)) b!2787293))

(assert (= (and start!269370 ((_ is Cons!32266) testedSuffix!143)) b!2787279))

(assert (= (and b!2787301 condMapEmpty!17784) mapIsEmpty!17783))

(assert (= (and b!2787301 (not condMapEmpty!17784)) mapNonEmpty!17784))

(assert (= b!2787299 b!2787301))

(assert (= b!2787307 b!2787299))

(assert (= b!2787286 b!2787307))

(assert (= (and b!2787297 ((_ is LongMap!3900) (v!33869 (underlying!8004 (cache!3949 cacheDown!1009))))) b!2787286))

(assert (= b!2787282 b!2787297))

(assert (= (and b!2787302 ((_ is HashMap!3806) (cache!3949 cacheDown!1009))) b!2787282))

(assert (= start!269370 b!2787302))

(assert (= (and b!2787303 condMapEmpty!17783) mapIsEmpty!17784))

(assert (= (and b!2787303 (not condMapEmpty!17783)) mapNonEmpty!17783))

(assert (= b!2787278 b!2787303))

(assert (= b!2787280 b!2787278))

(assert (= b!2787295 b!2787280))

(assert (= (and b!2787306 ((_ is LongMap!3901) (v!33871 (underlying!8006 (cache!3950 cacheUp!890))))) b!2787295))

(assert (= b!2787284 b!2787306))

(assert (= (and b!2787283 ((_ is HashMap!3807) (cache!3950 cacheUp!890))) b!2787284))

(assert (= start!269370 b!2787283))

(declare-fun m!3217609 () Bool)

(assert (=> b!2787300 m!3217609))

(declare-fun m!3217611 () Bool)

(assert (=> b!2787276 m!3217611))

(declare-fun m!3217613 () Bool)

(assert (=> b!2787287 m!3217613))

(declare-fun m!3217615 () Bool)

(assert (=> b!2787299 m!3217615))

(declare-fun m!3217617 () Bool)

(assert (=> b!2787299 m!3217617))

(declare-fun m!3217619 () Bool)

(assert (=> b!2787278 m!3217619))

(declare-fun m!3217621 () Bool)

(assert (=> b!2787278 m!3217621))

(declare-fun m!3217623 () Bool)

(assert (=> start!269370 m!3217623))

(declare-fun m!3217625 () Bool)

(assert (=> start!269370 m!3217625))

(declare-fun m!3217627 () Bool)

(assert (=> start!269370 m!3217627))

(declare-fun m!3217629 () Bool)

(assert (=> start!269370 m!3217629))

(declare-fun m!3217631 () Bool)

(assert (=> start!269370 m!3217631))

(declare-fun m!3217633 () Bool)

(assert (=> b!2787291 m!3217633))

(declare-fun m!3217635 () Bool)

(assert (=> b!2787291 m!3217635))

(declare-fun m!3217637 () Bool)

(assert (=> b!2787291 m!3217637))

(declare-fun m!3217639 () Bool)

(assert (=> b!2787291 m!3217639))

(declare-fun m!3217641 () Bool)

(assert (=> b!2787281 m!3217641))

(declare-fun m!3217643 () Bool)

(assert (=> b!2787304 m!3217643))

(declare-fun m!3217645 () Bool)

(assert (=> b!2787304 m!3217645))

(declare-fun m!3217647 () Bool)

(assert (=> b!2787304 m!3217647))

(declare-fun m!3217649 () Bool)

(assert (=> b!2787285 m!3217649))

(declare-fun m!3217651 () Bool)

(assert (=> b!2787285 m!3217651))

(assert (=> b!2787285 m!3217649))

(declare-fun m!3217653 () Bool)

(assert (=> b!2787285 m!3217653))

(declare-fun m!3217655 () Bool)

(assert (=> b!2787285 m!3217655))

(declare-fun m!3217657 () Bool)

(assert (=> b!2787285 m!3217657))

(declare-fun m!3217659 () Bool)

(assert (=> b!2787285 m!3217659))

(declare-fun m!3217661 () Bool)

(assert (=> b!2787285 m!3217661))

(declare-fun m!3217663 () Bool)

(assert (=> b!2787285 m!3217663))

(assert (=> b!2787285 m!3217663))

(declare-fun m!3217665 () Bool)

(assert (=> b!2787285 m!3217665))

(declare-fun m!3217667 () Bool)

(assert (=> b!2787289 m!3217667))

(declare-fun m!3217669 () Bool)

(assert (=> b!2787290 m!3217669))

(declare-fun m!3217671 () Bool)

(assert (=> b!2787290 m!3217671))

(declare-fun m!3217673 () Bool)

(assert (=> b!2787290 m!3217673))

(declare-fun m!3217675 () Bool)

(assert (=> b!2787292 m!3217675))

(declare-fun m!3217677 () Bool)

(assert (=> b!2787292 m!3217677))

(declare-fun m!3217679 () Bool)

(assert (=> b!2787292 m!3217679))

(declare-fun m!3217681 () Bool)

(assert (=> b!2787277 m!3217681))

(declare-fun m!3217683 () Bool)

(assert (=> b!2787277 m!3217683))

(declare-fun m!3217685 () Bool)

(assert (=> b!2787277 m!3217685))

(declare-fun m!3217687 () Bool)

(assert (=> b!2787277 m!3217687))

(declare-fun m!3217689 () Bool)

(assert (=> b!2787277 m!3217689))

(declare-fun m!3217691 () Bool)

(assert (=> b!2787277 m!3217691))

(declare-fun m!3217693 () Bool)

(assert (=> b!2787277 m!3217693))

(assert (=> b!2787277 m!3217681))

(declare-fun m!3217695 () Bool)

(assert (=> b!2787288 m!3217695))

(declare-fun m!3217697 () Bool)

(assert (=> b!2787288 m!3217697))

(declare-fun m!3217699 () Bool)

(assert (=> mapNonEmpty!17783 m!3217699))

(declare-fun m!3217701 () Bool)

(assert (=> b!2787298 m!3217701))

(declare-fun m!3217703 () Bool)

(assert (=> mapNonEmpty!17784 m!3217703))

(declare-fun m!3217705 () Bool)

(assert (=> b!2787275 m!3217705))

(declare-fun m!3217707 () Bool)

(assert (=> setNonEmpty!23626 m!3217707))

(check-sat (not b!2787303) (not b!2787291) (not b_next!79543) tp_is_empty!14115 (not setNonEmpty!23626) (not b!2787304) (not b!2787288) (not b!2787299) (not b!2787293) (not mapNonEmpty!17784) (not b_next!79547) (not b!2787289) (not b!2787276) (not b!2787292) (not start!269370) (not b_next!79541) (not b!2787301) (not b!2787278) (not mapNonEmpty!17783) (not b!2787281) b_and!203575 (not b_next!79545) (not b!2787275) (not b!2787298) (not b!2787279) (not b!2787300) b_and!203579 (not b!2787287) b_and!203581 (not b!2787290) (not b!2787285) (not b!2787277) (not b!2787294) b_and!203577)
(check-sat (not b_next!79543) (not b_next!79541) b_and!203579 b_and!203581 (not b_next!79547) b_and!203577 b_and!203575 (not b_next!79545))
(get-model)

(declare-fun d!810804 () Bool)

(assert (=> d!810804 (= (array_inv!4428 (_keys!4200 (v!33868 (underlying!8003 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009))))))) (bvsge (size!25087 (_keys!4200 (v!33868 (underlying!8003 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2787299 d!810804))

(declare-fun d!810806 () Bool)

(assert (=> d!810806 (= (array_inv!4430 (_values!4181 (v!33868 (underlying!8003 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009))))))) (bvsge (size!25088 (_values!4181 (v!33868 (underlying!8003 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2787299 d!810806))

(declare-fun d!810808 () Bool)

(declare-fun lt!995916 () Int)

(assert (=> d!810808 (= lt!995916 (size!25090 (list!12145 totalInput!758)))))

(declare-fun size!25092 (Conc!10021) Int)

(assert (=> d!810808 (= lt!995916 (size!25092 (c!452625 totalInput!758)))))

(assert (=> d!810808 (= (size!25091 totalInput!758) lt!995916)))

(declare-fun bs!510966 () Bool)

(assert (= bs!510966 d!810808))

(assert (=> bs!510966 m!3217623))

(assert (=> bs!510966 m!3217623))

(declare-fun m!3217709 () Bool)

(assert (=> bs!510966 m!3217709))

(declare-fun m!3217711 () Bool)

(assert (=> bs!510966 m!3217711))

(assert (=> b!2787289 d!810808))

(declare-fun d!810810 () Bool)

(declare-fun res!1163111 () Bool)

(declare-fun e!1759177 () Bool)

(assert (=> d!810810 (=> (not res!1163111) (not e!1759177))))

(assert (=> d!810810 (= res!1163111 ((_ is HashMap!3807) (cache!3950 cacheUp!890)))))

(assert (=> d!810810 (= (inv!43836 cacheUp!890) e!1759177)))

(declare-fun b!2787310 () Bool)

(declare-fun validCacheMapUp!381 (MutableMap!3807) Bool)

(assert (=> b!2787310 (= e!1759177 (validCacheMapUp!381 (cache!3950 cacheUp!890)))))

(assert (= (and d!810810 res!1163111) b!2787310))

(declare-fun m!3217713 () Bool)

(assert (=> b!2787310 m!3217713))

(assert (=> start!269370 d!810810))

(declare-fun d!810812 () Bool)

(declare-fun isBalanced!3057 (Conc!10021) Bool)

(assert (=> d!810812 (= (inv!43834 totalInput!758) (isBalanced!3057 (c!452625 totalInput!758)))))

(declare-fun bs!510967 () Bool)

(assert (= bs!510967 d!810812))

(declare-fun m!3217715 () Bool)

(assert (=> bs!510967 m!3217715))

(assert (=> start!269370 d!810812))

(declare-fun d!810814 () Bool)

(declare-fun res!1163114 () Bool)

(declare-fun e!1759180 () Bool)

(assert (=> d!810814 (=> (not res!1163114) (not e!1759180))))

(assert (=> d!810814 (= res!1163114 ((_ is HashMap!3806) (cache!3949 cacheDown!1009)))))

(assert (=> d!810814 (= (inv!43835 cacheDown!1009) e!1759180)))

(declare-fun b!2787313 () Bool)

(declare-fun validCacheMapDown!412 (MutableMap!3806) Bool)

(assert (=> b!2787313 (= e!1759180 (validCacheMapDown!412 (cache!3949 cacheDown!1009)))))

(assert (= (and d!810814 res!1163114) b!2787313))

(declare-fun m!3217717 () Bool)

(assert (=> b!2787313 m!3217717))

(assert (=> start!269370 d!810814))

(declare-fun d!810816 () Bool)

(declare-fun list!12146 (Conc!10021) List!32366)

(assert (=> d!810816 (= (list!12145 totalInput!758) (list!12146 (c!452625 totalInput!758)))))

(declare-fun bs!510968 () Bool)

(assert (= bs!510968 d!810816))

(declare-fun m!3217719 () Bool)

(assert (=> bs!510968 m!3217719))

(assert (=> start!269370 d!810816))

(declare-fun b!2787323 () Bool)

(declare-fun e!1759186 () List!32366)

(assert (=> b!2787323 (= e!1759186 (Cons!32266 (h!37686 testedP!183) (++!7969 (t!228508 testedP!183) testedSuffix!143)))))

(declare-fun d!810818 () Bool)

(declare-fun e!1759185 () Bool)

(assert (=> d!810818 e!1759185))

(declare-fun res!1163120 () Bool)

(assert (=> d!810818 (=> (not res!1163120) (not e!1759185))))

(declare-fun lt!995919 () List!32366)

(declare-fun content!4522 (List!32366) (InoxSet C!16460))

(assert (=> d!810818 (= res!1163120 (= (content!4522 lt!995919) ((_ map or) (content!4522 testedP!183) (content!4522 testedSuffix!143))))))

(assert (=> d!810818 (= lt!995919 e!1759186)))

(declare-fun c!452628 () Bool)

(assert (=> d!810818 (= c!452628 ((_ is Nil!32266) testedP!183))))

(assert (=> d!810818 (= (++!7969 testedP!183 testedSuffix!143) lt!995919)))

(declare-fun b!2787322 () Bool)

(assert (=> b!2787322 (= e!1759186 testedSuffix!143)))

(declare-fun b!2787324 () Bool)

(declare-fun res!1163119 () Bool)

(assert (=> b!2787324 (=> (not res!1163119) (not e!1759185))))

(assert (=> b!2787324 (= res!1163119 (= (size!25090 lt!995919) (+ (size!25090 testedP!183) (size!25090 testedSuffix!143))))))

(declare-fun b!2787325 () Bool)

(assert (=> b!2787325 (= e!1759185 (or (not (= testedSuffix!143 Nil!32266)) (= lt!995919 testedP!183)))))

(assert (= (and d!810818 c!452628) b!2787322))

(assert (= (and d!810818 (not c!452628)) b!2787323))

(assert (= (and d!810818 res!1163120) b!2787324))

(assert (= (and b!2787324 res!1163119) b!2787325))

(declare-fun m!3217721 () Bool)

(assert (=> b!2787323 m!3217721))

(declare-fun m!3217723 () Bool)

(assert (=> d!810818 m!3217723))

(declare-fun m!3217725 () Bool)

(assert (=> d!810818 m!3217725))

(declare-fun m!3217727 () Bool)

(assert (=> d!810818 m!3217727))

(declare-fun m!3217729 () Bool)

(assert (=> b!2787324 m!3217729))

(assert (=> b!2787324 m!3217641))

(declare-fun m!3217731 () Bool)

(assert (=> b!2787324 m!3217731))

(assert (=> start!269370 d!810818))

(declare-fun d!810820 () Bool)

(declare-fun lt!995920 () Int)

(assert (=> d!810820 (= lt!995920 (size!25090 (list!12145 (_1!19300 lt!995895))))))

(assert (=> d!810820 (= lt!995920 (size!25092 (c!452625 (_1!19300 lt!995895))))))

(assert (=> d!810820 (= (size!25091 (_1!19300 lt!995895)) lt!995920)))

(declare-fun bs!510969 () Bool)

(assert (= bs!510969 d!810820))

(assert (=> bs!510969 m!3217637))

(assert (=> bs!510969 m!3217637))

(declare-fun m!3217733 () Bool)

(assert (=> bs!510969 m!3217733))

(declare-fun m!3217735 () Bool)

(assert (=> bs!510969 m!3217735))

(assert (=> b!2787300 d!810820))

(declare-fun bs!510970 () Bool)

(declare-fun b!2787330 () Bool)

(declare-fun d!810822 () Bool)

(assert (= bs!510970 (and b!2787330 d!810822)))

(declare-fun lambda!102274 () Int)

(declare-fun lambda!102273 () Int)

(assert (=> bs!510970 (not (= lambda!102274 lambda!102273))))

(declare-fun bs!510971 () Bool)

(declare-fun b!2787331 () Bool)

(assert (= bs!510971 (and b!2787331 d!810822)))

(declare-fun lambda!102275 () Int)

(assert (=> bs!510971 (not (= lambda!102275 lambda!102273))))

(declare-fun bs!510972 () Bool)

(assert (= bs!510972 (and b!2787331 b!2787330)))

(assert (=> bs!510972 (= lambda!102275 lambda!102274)))

(declare-fun lt!995942 () Bool)

(declare-datatypes ((Option!6272 0))(
  ( (None!6271) (Some!6271 (v!33872 List!32366)) )
))
(declare-fun isEmpty!18116 (Option!6272) Bool)

(declare-fun getLanguageWitness!202 ((InoxSet Context!4738)) Option!6272)

(assert (=> d!810822 (= lt!995942 (isEmpty!18116 (getLanguageWitness!202 z!3684)))))

(declare-fun forall!6659 ((InoxSet Context!4738) Int) Bool)

(assert (=> d!810822 (= lt!995942 (forall!6659 z!3684 lambda!102273))))

(declare-fun lt!995940 () Unit!46484)

(declare-fun e!1759193 () Unit!46484)

(assert (=> d!810822 (= lt!995940 e!1759193)))

(declare-fun c!452639 () Bool)

(assert (=> d!810822 (= c!452639 (not (forall!6659 z!3684 lambda!102273)))))

(assert (=> d!810822 (= (lostCauseZipper!468 z!3684) lt!995942)))

(declare-fun Unit!46488 () Unit!46484)

(assert (=> b!2787330 (= e!1759193 Unit!46488)))

(declare-datatypes ((List!32367 0))(
  ( (Nil!32267) (Cons!32267 (h!37687 Context!4738) (t!228509 List!32367)) )
))
(declare-fun lt!995943 () List!32367)

(declare-fun call!182512 () List!32367)

(assert (=> b!2787330 (= lt!995943 call!182512)))

(declare-fun lt!995944 () Unit!46484)

(declare-fun lemmaNotForallThenExists!94 (List!32367 Int) Unit!46484)

(assert (=> b!2787330 (= lt!995944 (lemmaNotForallThenExists!94 lt!995943 lambda!102273))))

(declare-fun call!182513 () Bool)

(assert (=> b!2787330 call!182513))

(declare-fun lt!995939 () Unit!46484)

(assert (=> b!2787330 (= lt!995939 lt!995944)))

(declare-fun lt!995938 () List!32367)

(declare-fun bm!182508 () Bool)

(declare-fun exists!991 (List!32367 Int) Bool)

(assert (=> bm!182508 (= call!182513 (exists!991 (ite c!452639 lt!995943 lt!995938) (ite c!452639 lambda!102274 lambda!102275)))))

(declare-fun bm!182507 () Bool)

(declare-fun toList!1857 ((InoxSet Context!4738)) List!32367)

(assert (=> bm!182507 (= call!182512 (toList!1857 z!3684))))

(declare-fun Unit!46489 () Unit!46484)

(assert (=> b!2787331 (= e!1759193 Unit!46489)))

(assert (=> b!2787331 (= lt!995938 call!182512)))

(declare-fun lt!995937 () Unit!46484)

(declare-fun lemmaForallThenNotExists!94 (List!32367 Int) Unit!46484)

(assert (=> b!2787331 (= lt!995937 (lemmaForallThenNotExists!94 lt!995938 lambda!102273))))

(assert (=> b!2787331 (not call!182513)))

(declare-fun lt!995941 () Unit!46484)

(assert (=> b!2787331 (= lt!995941 lt!995937)))

(assert (= (and d!810822 c!452639) b!2787330))

(assert (= (and d!810822 (not c!452639)) b!2787331))

(assert (= (or b!2787330 b!2787331) bm!182507))

(assert (= (or b!2787330 b!2787331) bm!182508))

(declare-fun m!3217737 () Bool)

(assert (=> bm!182507 m!3217737))

(declare-fun m!3217739 () Bool)

(assert (=> d!810822 m!3217739))

(assert (=> d!810822 m!3217739))

(declare-fun m!3217741 () Bool)

(assert (=> d!810822 m!3217741))

(declare-fun m!3217743 () Bool)

(assert (=> d!810822 m!3217743))

(assert (=> d!810822 m!3217743))

(declare-fun m!3217745 () Bool)

(assert (=> bm!182508 m!3217745))

(declare-fun m!3217747 () Bool)

(assert (=> b!2787331 m!3217747))

(declare-fun m!3217749 () Bool)

(assert (=> b!2787330 m!3217749))

(assert (=> b!2787290 d!810822))

(declare-fun d!810824 () Bool)

(assert (=> d!810824 (= testedSuffix!143 lt!995899)))

(declare-fun lt!995947 () Unit!46484)

(declare-fun choose!16360 (List!32366 List!32366 List!32366 List!32366 List!32366) Unit!46484)

(assert (=> d!810824 (= lt!995947 (choose!16360 testedP!183 testedSuffix!143 testedP!183 lt!995899 lt!995913))))

(assert (=> d!810824 (isPrefix!2589 testedP!183 lt!995913)))

(assert (=> d!810824 (= (lemmaSamePrefixThenSameSuffix!1169 testedP!183 testedSuffix!143 testedP!183 lt!995899 lt!995913) lt!995947)))

(declare-fun bs!510973 () Bool)

(assert (= bs!510973 d!810824))

(declare-fun m!3217751 () Bool)

(assert (=> bs!510973 m!3217751))

(assert (=> bs!510973 m!3217643))

(assert (=> b!2787290 d!810824))

(declare-fun d!810826 () Bool)

(declare-fun lt!995950 () List!32366)

(assert (=> d!810826 (= (++!7969 testedP!183 lt!995950) lt!995913)))

(declare-fun e!1759196 () List!32366)

(assert (=> d!810826 (= lt!995950 e!1759196)))

(declare-fun c!452642 () Bool)

(assert (=> d!810826 (= c!452642 ((_ is Cons!32266) testedP!183))))

(assert (=> d!810826 (>= (size!25090 lt!995913) (size!25090 testedP!183))))

(assert (=> d!810826 (= (getSuffix!1268 lt!995913 testedP!183) lt!995950)))

(declare-fun b!2787336 () Bool)

(assert (=> b!2787336 (= e!1759196 (getSuffix!1268 (tail!4404 lt!995913) (t!228508 testedP!183)))))

(declare-fun b!2787337 () Bool)

(assert (=> b!2787337 (= e!1759196 lt!995913)))

(assert (= (and d!810826 c!452642) b!2787336))

(assert (= (and d!810826 (not c!452642)) b!2787337))

(declare-fun m!3217753 () Bool)

(assert (=> d!810826 m!3217753))

(assert (=> d!810826 m!3217695))

(assert (=> d!810826 m!3217641))

(declare-fun m!3217755 () Bool)

(assert (=> b!2787336 m!3217755))

(assert (=> b!2787336 m!3217755))

(declare-fun m!3217757 () Bool)

(assert (=> b!2787336 m!3217757))

(assert (=> b!2787290 d!810826))

(declare-fun d!810828 () Bool)

(declare-fun lt!995953 () Int)

(assert (=> d!810828 (>= lt!995953 0)))

(declare-fun e!1759199 () Int)

(assert (=> d!810828 (= lt!995953 e!1759199)))

(declare-fun c!452645 () Bool)

(assert (=> d!810828 (= c!452645 ((_ is Nil!32266) testedP!183))))

(assert (=> d!810828 (= (size!25090 testedP!183) lt!995953)))

(declare-fun b!2787342 () Bool)

(assert (=> b!2787342 (= e!1759199 0)))

(declare-fun b!2787343 () Bool)

(assert (=> b!2787343 (= e!1759199 (+ 1 (size!25090 (t!228508 testedP!183))))))

(assert (= (and d!810828 c!452645) b!2787342))

(assert (= (and d!810828 (not c!452645)) b!2787343))

(declare-fun m!3217759 () Bool)

(assert (=> b!2787343 m!3217759))

(assert (=> b!2787281 d!810828))

(declare-fun b!2787345 () Bool)

(declare-fun e!1759201 () List!32366)

(assert (=> b!2787345 (= e!1759201 (Cons!32266 (h!37686 lt!995891) (++!7969 (t!228508 lt!995891) lt!995903)))))

(declare-fun d!810830 () Bool)

(declare-fun e!1759200 () Bool)

(assert (=> d!810830 e!1759200))

(declare-fun res!1163122 () Bool)

(assert (=> d!810830 (=> (not res!1163122) (not e!1759200))))

(declare-fun lt!995954 () List!32366)

(assert (=> d!810830 (= res!1163122 (= (content!4522 lt!995954) ((_ map or) (content!4522 lt!995891) (content!4522 lt!995903))))))

(assert (=> d!810830 (= lt!995954 e!1759201)))

(declare-fun c!452646 () Bool)

(assert (=> d!810830 (= c!452646 ((_ is Nil!32266) lt!995891))))

(assert (=> d!810830 (= (++!7969 lt!995891 lt!995903) lt!995954)))

(declare-fun b!2787344 () Bool)

(assert (=> b!2787344 (= e!1759201 lt!995903)))

(declare-fun b!2787346 () Bool)

(declare-fun res!1163121 () Bool)

(assert (=> b!2787346 (=> (not res!1163121) (not e!1759200))))

(assert (=> b!2787346 (= res!1163121 (= (size!25090 lt!995954) (+ (size!25090 lt!995891) (size!25090 lt!995903))))))

(declare-fun b!2787347 () Bool)

(assert (=> b!2787347 (= e!1759200 (or (not (= lt!995903 Nil!32266)) (= lt!995954 lt!995891)))))

(assert (= (and d!810830 c!452646) b!2787344))

(assert (= (and d!810830 (not c!452646)) b!2787345))

(assert (= (and d!810830 res!1163122) b!2787346))

(assert (= (and b!2787346 res!1163121) b!2787347))

(declare-fun m!3217761 () Bool)

(assert (=> b!2787345 m!3217761))

(declare-fun m!3217763 () Bool)

(assert (=> d!810830 m!3217763))

(declare-fun m!3217765 () Bool)

(assert (=> d!810830 m!3217765))

(declare-fun m!3217767 () Bool)

(assert (=> d!810830 m!3217767))

(declare-fun m!3217769 () Bool)

(assert (=> b!2787346 m!3217769))

(declare-fun m!3217771 () Bool)

(assert (=> b!2787346 m!3217771))

(declare-fun m!3217773 () Bool)

(assert (=> b!2787346 m!3217773))

(assert (=> b!2787291 d!810830))

(declare-fun d!810832 () Bool)

(assert (=> d!810832 (= (list!12145 (_2!19300 lt!995895)) (list!12146 (c!452625 (_2!19300 lt!995895))))))

(declare-fun bs!510974 () Bool)

(assert (= bs!510974 d!810832))

(declare-fun m!3217775 () Bool)

(assert (=> bs!510974 m!3217775))

(assert (=> b!2787291 d!810832))

(declare-fun d!810834 () Bool)

(assert (=> d!810834 (= (list!12145 (_1!19300 lt!995895)) (list!12146 (c!452625 (_1!19300 lt!995895))))))

(declare-fun bs!510975 () Bool)

(assert (= bs!510975 d!810834))

(declare-fun m!3217777 () Bool)

(assert (=> bs!510975 m!3217777))

(assert (=> b!2787291 d!810834))

(declare-fun d!810836 () Bool)

(declare-fun e!1759204 () Bool)

(assert (=> d!810836 e!1759204))

(declare-fun res!1163128 () Bool)

(assert (=> d!810836 (=> (not res!1163128) (not e!1759204))))

(declare-fun lt!995960 () tuple2!32640)

(assert (=> d!810836 (= res!1163128 (isBalanced!3057 (c!452625 (_1!19300 lt!995960))))))

(declare-datatypes ((tuple2!32642 0))(
  ( (tuple2!32643 (_1!19301 Conc!10021) (_2!19301 Conc!10021)) )
))
(declare-fun lt!995959 () tuple2!32642)

(assert (=> d!810836 (= lt!995960 (tuple2!32641 (BalanceConc!19657 (_1!19301 lt!995959)) (BalanceConc!19657 (_2!19301 lt!995959))))))

(declare-fun splitAt!149 (Conc!10021 Int) tuple2!32642)

(assert (=> d!810836 (= lt!995959 (splitAt!149 (c!452625 totalInput!758) testedPSize!143))))

(assert (=> d!810836 (isBalanced!3057 (c!452625 totalInput!758))))

(assert (=> d!810836 (= (splitAt!148 totalInput!758 testedPSize!143) lt!995960)))

(declare-fun b!2787352 () Bool)

(declare-fun res!1163127 () Bool)

(assert (=> b!2787352 (=> (not res!1163127) (not e!1759204))))

(assert (=> b!2787352 (= res!1163127 (isBalanced!3057 (c!452625 (_2!19300 lt!995960))))))

(declare-fun b!2787353 () Bool)

(declare-datatypes ((tuple2!32644 0))(
  ( (tuple2!32645 (_1!19302 List!32366) (_2!19302 List!32366)) )
))
(declare-fun splitAtIndex!60 (List!32366 Int) tuple2!32644)

(assert (=> b!2787353 (= e!1759204 (= (tuple2!32645 (list!12145 (_1!19300 lt!995960)) (list!12145 (_2!19300 lt!995960))) (splitAtIndex!60 (list!12145 totalInput!758) testedPSize!143)))))

(assert (= (and d!810836 res!1163128) b!2787352))

(assert (= (and b!2787352 res!1163127) b!2787353))

(declare-fun m!3217779 () Bool)

(assert (=> d!810836 m!3217779))

(declare-fun m!3217781 () Bool)

(assert (=> d!810836 m!3217781))

(assert (=> d!810836 m!3217715))

(declare-fun m!3217783 () Bool)

(assert (=> b!2787352 m!3217783))

(declare-fun m!3217785 () Bool)

(assert (=> b!2787353 m!3217785))

(declare-fun m!3217787 () Bool)

(assert (=> b!2787353 m!3217787))

(assert (=> b!2787353 m!3217623))

(assert (=> b!2787353 m!3217623))

(declare-fun m!3217789 () Bool)

(assert (=> b!2787353 m!3217789))

(assert (=> b!2787291 d!810836))

(declare-fun d!810838 () Bool)

(assert (=> d!810838 (isPrefix!2589 lt!995913 lt!995913)))

(declare-fun lt!995963 () Unit!46484)

(declare-fun choose!16361 (List!32366 List!32366) Unit!46484)

(assert (=> d!810838 (= lt!995963 (choose!16361 lt!995913 lt!995913))))

(assert (=> d!810838 (= (lemmaIsPrefixRefl!1693 lt!995913 lt!995913) lt!995963)))

(declare-fun bs!510976 () Bool)

(assert (= bs!510976 d!810838))

(assert (=> bs!510976 m!3217677))

(declare-fun m!3217791 () Bool)

(assert (=> bs!510976 m!3217791))

(assert (=> b!2787292 d!810838))

(declare-fun b!2787363 () Bool)

(declare-fun res!1163137 () Bool)

(declare-fun e!1759212 () Bool)

(assert (=> b!2787363 (=> (not res!1163137) (not e!1759212))))

(assert (=> b!2787363 (= res!1163137 (= (head!6172 lt!995913) (head!6172 lt!995913)))))

(declare-fun b!2787365 () Bool)

(declare-fun e!1759211 () Bool)

(assert (=> b!2787365 (= e!1759211 (>= (size!25090 lt!995913) (size!25090 lt!995913)))))

(declare-fun b!2787364 () Bool)

(assert (=> b!2787364 (= e!1759212 (isPrefix!2589 (tail!4404 lt!995913) (tail!4404 lt!995913)))))

(declare-fun b!2787362 () Bool)

(declare-fun e!1759213 () Bool)

(assert (=> b!2787362 (= e!1759213 e!1759212)))

(declare-fun res!1163138 () Bool)

(assert (=> b!2787362 (=> (not res!1163138) (not e!1759212))))

(assert (=> b!2787362 (= res!1163138 (not ((_ is Nil!32266) lt!995913)))))

(declare-fun d!810840 () Bool)

(assert (=> d!810840 e!1759211))

(declare-fun res!1163139 () Bool)

(assert (=> d!810840 (=> res!1163139 e!1759211)))

(declare-fun lt!995966 () Bool)

(assert (=> d!810840 (= res!1163139 (not lt!995966))))

(assert (=> d!810840 (= lt!995966 e!1759213)))

(declare-fun res!1163140 () Bool)

(assert (=> d!810840 (=> res!1163140 e!1759213)))

(assert (=> d!810840 (= res!1163140 ((_ is Nil!32266) lt!995913))))

(assert (=> d!810840 (= (isPrefix!2589 lt!995913 lt!995913) lt!995966)))

(assert (= (and d!810840 (not res!1163140)) b!2787362))

(assert (= (and b!2787362 res!1163138) b!2787363))

(assert (= (and b!2787363 res!1163137) b!2787364))

(assert (= (and d!810840 (not res!1163139)) b!2787365))

(declare-fun m!3217793 () Bool)

(assert (=> b!2787363 m!3217793))

(assert (=> b!2787363 m!3217793))

(assert (=> b!2787365 m!3217695))

(assert (=> b!2787365 m!3217695))

(assert (=> b!2787364 m!3217755))

(assert (=> b!2787364 m!3217755))

(assert (=> b!2787364 m!3217755))

(assert (=> b!2787364 m!3217755))

(declare-fun m!3217795 () Bool)

(assert (=> b!2787364 m!3217795))

(assert (=> b!2787292 d!810840))

(declare-fun d!810842 () Bool)

(assert (=> d!810842 (= lt!995913 testedP!183)))

(declare-fun lt!995969 () Unit!46484)

(declare-fun choose!16362 (List!32366 List!32366 List!32366) Unit!46484)

(assert (=> d!810842 (= lt!995969 (choose!16362 lt!995913 testedP!183 lt!995913))))

(assert (=> d!810842 (isPrefix!2589 lt!995913 lt!995913)))

(assert (=> d!810842 (= (lemmaIsPrefixSameLengthThenSameList!473 lt!995913 testedP!183 lt!995913) lt!995969)))

(declare-fun bs!510977 () Bool)

(assert (= bs!510977 d!810842))

(declare-fun m!3217797 () Bool)

(assert (=> bs!510977 m!3217797))

(assert (=> bs!510977 m!3217677))

(assert (=> b!2787292 d!810842))

(declare-fun d!810844 () Bool)

(assert (=> d!810844 (= (valid!3048 cacheDown!1009) (validCacheMapDown!412 (cache!3949 cacheDown!1009)))))

(declare-fun bs!510978 () Bool)

(assert (= bs!510978 d!810844))

(assert (=> bs!510978 m!3217717))

(assert (=> b!2787275 d!810844))

(declare-fun b!2787367 () Bool)

(declare-fun res!1163141 () Bool)

(declare-fun e!1759215 () Bool)

(assert (=> b!2787367 (=> (not res!1163141) (not e!1759215))))

(assert (=> b!2787367 (= res!1163141 (= (head!6172 testedP!183) (head!6172 lt!995913)))))

(declare-fun b!2787369 () Bool)

(declare-fun e!1759214 () Bool)

(assert (=> b!2787369 (= e!1759214 (>= (size!25090 lt!995913) (size!25090 testedP!183)))))

(declare-fun b!2787368 () Bool)

(assert (=> b!2787368 (= e!1759215 (isPrefix!2589 (tail!4404 testedP!183) (tail!4404 lt!995913)))))

(declare-fun b!2787366 () Bool)

(declare-fun e!1759216 () Bool)

(assert (=> b!2787366 (= e!1759216 e!1759215)))

(declare-fun res!1163142 () Bool)

(assert (=> b!2787366 (=> (not res!1163142) (not e!1759215))))

(assert (=> b!2787366 (= res!1163142 (not ((_ is Nil!32266) lt!995913)))))

(declare-fun d!810846 () Bool)

(assert (=> d!810846 e!1759214))

(declare-fun res!1163143 () Bool)

(assert (=> d!810846 (=> res!1163143 e!1759214)))

(declare-fun lt!995970 () Bool)

(assert (=> d!810846 (= res!1163143 (not lt!995970))))

(assert (=> d!810846 (= lt!995970 e!1759216)))

(declare-fun res!1163144 () Bool)

(assert (=> d!810846 (=> res!1163144 e!1759216)))

(assert (=> d!810846 (= res!1163144 ((_ is Nil!32266) testedP!183))))

(assert (=> d!810846 (= (isPrefix!2589 testedP!183 lt!995913) lt!995970)))

(assert (= (and d!810846 (not res!1163144)) b!2787366))

(assert (= (and b!2787366 res!1163142) b!2787367))

(assert (= (and b!2787367 res!1163141) b!2787368))

(assert (= (and d!810846 (not res!1163143)) b!2787369))

(declare-fun m!3217799 () Bool)

(assert (=> b!2787367 m!3217799))

(assert (=> b!2787367 m!3217793))

(assert (=> b!2787369 m!3217695))

(assert (=> b!2787369 m!3217641))

(declare-fun m!3217801 () Bool)

(assert (=> b!2787368 m!3217801))

(assert (=> b!2787368 m!3217755))

(assert (=> b!2787368 m!3217801))

(assert (=> b!2787368 m!3217755))

(declare-fun m!3217803 () Bool)

(assert (=> b!2787368 m!3217803))

(assert (=> b!2787304 d!810846))

(declare-fun b!2787371 () Bool)

(declare-fun res!1163145 () Bool)

(declare-fun e!1759218 () Bool)

(assert (=> b!2787371 (=> (not res!1163145) (not e!1759218))))

(assert (=> b!2787371 (= res!1163145 (= (head!6172 testedP!183) (head!6172 lt!995901)))))

(declare-fun b!2787373 () Bool)

(declare-fun e!1759217 () Bool)

(assert (=> b!2787373 (= e!1759217 (>= (size!25090 lt!995901) (size!25090 testedP!183)))))

(declare-fun b!2787372 () Bool)

(assert (=> b!2787372 (= e!1759218 (isPrefix!2589 (tail!4404 testedP!183) (tail!4404 lt!995901)))))

(declare-fun b!2787370 () Bool)

(declare-fun e!1759219 () Bool)

(assert (=> b!2787370 (= e!1759219 e!1759218)))

(declare-fun res!1163146 () Bool)

(assert (=> b!2787370 (=> (not res!1163146) (not e!1759218))))

(assert (=> b!2787370 (= res!1163146 (not ((_ is Nil!32266) lt!995901)))))

(declare-fun d!810848 () Bool)

(assert (=> d!810848 e!1759217))

(declare-fun res!1163147 () Bool)

(assert (=> d!810848 (=> res!1163147 e!1759217)))

(declare-fun lt!995971 () Bool)

(assert (=> d!810848 (= res!1163147 (not lt!995971))))

(assert (=> d!810848 (= lt!995971 e!1759219)))

(declare-fun res!1163148 () Bool)

(assert (=> d!810848 (=> res!1163148 e!1759219)))

(assert (=> d!810848 (= res!1163148 ((_ is Nil!32266) testedP!183))))

(assert (=> d!810848 (= (isPrefix!2589 testedP!183 lt!995901) lt!995971)))

(assert (= (and d!810848 (not res!1163148)) b!2787370))

(assert (= (and b!2787370 res!1163146) b!2787371))

(assert (= (and b!2787371 res!1163145) b!2787372))

(assert (= (and d!810848 (not res!1163147)) b!2787373))

(assert (=> b!2787371 m!3217799))

(declare-fun m!3217805 () Bool)

(assert (=> b!2787371 m!3217805))

(declare-fun m!3217807 () Bool)

(assert (=> b!2787373 m!3217807))

(assert (=> b!2787373 m!3217641))

(assert (=> b!2787372 m!3217801))

(declare-fun m!3217809 () Bool)

(assert (=> b!2787372 m!3217809))

(assert (=> b!2787372 m!3217801))

(assert (=> b!2787372 m!3217809))

(declare-fun m!3217811 () Bool)

(assert (=> b!2787372 m!3217811))

(assert (=> b!2787304 d!810848))

(declare-fun d!810850 () Bool)

(assert (=> d!810850 (isPrefix!2589 testedP!183 (++!7969 testedP!183 testedSuffix!143))))

(declare-fun lt!995974 () Unit!46484)

(declare-fun choose!16363 (List!32366 List!32366) Unit!46484)

(assert (=> d!810850 (= lt!995974 (choose!16363 testedP!183 testedSuffix!143))))

(assert (=> d!810850 (= (lemmaConcatTwoListThenFirstIsPrefix!1699 testedP!183 testedSuffix!143) lt!995974)))

(declare-fun bs!510979 () Bool)

(assert (= bs!510979 d!810850))

(assert (=> bs!510979 m!3217631))

(assert (=> bs!510979 m!3217631))

(declare-fun m!3217813 () Bool)

(assert (=> bs!510979 m!3217813))

(declare-fun m!3217815 () Bool)

(assert (=> bs!510979 m!3217815))

(assert (=> b!2787304 d!810850))

(declare-fun d!810852 () Bool)

(declare-fun e!1759222 () Bool)

(assert (=> d!810852 e!1759222))

(declare-fun res!1163153 () Bool)

(assert (=> d!810852 (=> (not res!1163153) (not e!1759222))))

(declare-fun lt!995977 () tuple3!5018)

(declare-fun derivationStepZipper!373 ((InoxSet Context!4738) C!16460) (InoxSet Context!4738))

(assert (=> d!810852 (= res!1163153 (= (_1!19299 lt!995977) (derivationStepZipper!373 z!3684 lt!995909)))))

(declare-fun choose!16364 ((InoxSet Context!4738) C!16460 CacheUp!2512 CacheDown!2632) tuple3!5018)

(assert (=> d!810852 (= lt!995977 (choose!16364 z!3684 lt!995909 cacheUp!890 cacheDown!1009))))

(assert (=> d!810852 (= (derivationStepZipperMem!100 z!3684 lt!995909 cacheUp!890 cacheDown!1009) lt!995977)))

(declare-fun b!2787378 () Bool)

(declare-fun res!1163154 () Bool)

(assert (=> b!2787378 (=> (not res!1163154) (not e!1759222))))

(assert (=> b!2787378 (= res!1163154 (valid!3049 (_2!19299 lt!995977)))))

(declare-fun b!2787379 () Bool)

(assert (=> b!2787379 (= e!1759222 (valid!3048 (_3!2979 lt!995977)))))

(assert (= (and d!810852 res!1163153) b!2787378))

(assert (= (and b!2787378 res!1163154) b!2787379))

(declare-fun m!3217817 () Bool)

(assert (=> d!810852 m!3217817))

(declare-fun m!3217819 () Bool)

(assert (=> d!810852 m!3217819))

(declare-fun m!3217821 () Bool)

(assert (=> b!2787378 m!3217821))

(declare-fun m!3217823 () Bool)

(assert (=> b!2787379 m!3217823))

(assert (=> b!2787276 d!810852))

(declare-fun d!810854 () Bool)

(assert (=> d!810854 (= (++!7969 (++!7969 testedP!183 (Cons!32266 lt!995909 Nil!32266)) lt!995894) lt!995913)))

(declare-fun lt!995980 () Unit!46484)

(declare-fun choose!16365 (List!32366 C!16460 List!32366 List!32366) Unit!46484)

(assert (=> d!810854 (= lt!995980 (choose!16365 testedP!183 lt!995909 lt!995894 lt!995913))))

(assert (=> d!810854 (= (++!7969 testedP!183 (Cons!32266 lt!995909 lt!995894)) lt!995913)))

(assert (=> d!810854 (= (lemmaMoveElementToOtherListKeepsConcatEq!878 testedP!183 lt!995909 lt!995894 lt!995913) lt!995980)))

(declare-fun bs!510980 () Bool)

(assert (= bs!510980 d!810854))

(assert (=> bs!510980 m!3217649))

(assert (=> bs!510980 m!3217649))

(assert (=> bs!510980 m!3217653))

(declare-fun m!3217825 () Bool)

(assert (=> bs!510980 m!3217825))

(declare-fun m!3217827 () Bool)

(assert (=> bs!510980 m!3217827))

(assert (=> b!2787285 d!810854))

(declare-fun b!2787381 () Bool)

(declare-fun res!1163155 () Bool)

(declare-fun e!1759224 () Bool)

(assert (=> b!2787381 (=> (not res!1163155) (not e!1759224))))

(assert (=> b!2787381 (= res!1163155 (= (head!6172 (++!7969 testedP!183 (Cons!32266 (head!6172 lt!995899) Nil!32266))) (head!6172 lt!995913)))))

(declare-fun b!2787383 () Bool)

(declare-fun e!1759223 () Bool)

(assert (=> b!2787383 (= e!1759223 (>= (size!25090 lt!995913) (size!25090 (++!7969 testedP!183 (Cons!32266 (head!6172 lt!995899) Nil!32266)))))))

(declare-fun b!2787382 () Bool)

(assert (=> b!2787382 (= e!1759224 (isPrefix!2589 (tail!4404 (++!7969 testedP!183 (Cons!32266 (head!6172 lt!995899) Nil!32266))) (tail!4404 lt!995913)))))

(declare-fun b!2787380 () Bool)

(declare-fun e!1759225 () Bool)

(assert (=> b!2787380 (= e!1759225 e!1759224)))

(declare-fun res!1163156 () Bool)

(assert (=> b!2787380 (=> (not res!1163156) (not e!1759224))))

(assert (=> b!2787380 (= res!1163156 (not ((_ is Nil!32266) lt!995913)))))

(declare-fun d!810856 () Bool)

(assert (=> d!810856 e!1759223))

(declare-fun res!1163157 () Bool)

(assert (=> d!810856 (=> res!1163157 e!1759223)))

(declare-fun lt!995981 () Bool)

(assert (=> d!810856 (= res!1163157 (not lt!995981))))

(assert (=> d!810856 (= lt!995981 e!1759225)))

(declare-fun res!1163158 () Bool)

(assert (=> d!810856 (=> res!1163158 e!1759225)))

(assert (=> d!810856 (= res!1163158 ((_ is Nil!32266) (++!7969 testedP!183 (Cons!32266 (head!6172 lt!995899) Nil!32266))))))

(assert (=> d!810856 (= (isPrefix!2589 (++!7969 testedP!183 (Cons!32266 (head!6172 lt!995899) Nil!32266)) lt!995913) lt!995981)))

(assert (= (and d!810856 (not res!1163158)) b!2787380))

(assert (= (and b!2787380 res!1163156) b!2787381))

(assert (= (and b!2787381 res!1163155) b!2787382))

(assert (= (and d!810856 (not res!1163157)) b!2787383))

(assert (=> b!2787381 m!3217663))

(declare-fun m!3217829 () Bool)

(assert (=> b!2787381 m!3217829))

(assert (=> b!2787381 m!3217793))

(assert (=> b!2787383 m!3217695))

(assert (=> b!2787383 m!3217663))

(declare-fun m!3217831 () Bool)

(assert (=> b!2787383 m!3217831))

(assert (=> b!2787382 m!3217663))

(declare-fun m!3217833 () Bool)

(assert (=> b!2787382 m!3217833))

(assert (=> b!2787382 m!3217755))

(assert (=> b!2787382 m!3217833))

(assert (=> b!2787382 m!3217755))

(declare-fun m!3217835 () Bool)

(assert (=> b!2787382 m!3217835))

(assert (=> b!2787285 d!810856))

(declare-fun d!810858 () Bool)

(assert (=> d!810858 (isPrefix!2589 (++!7969 testedP!183 (Cons!32266 (head!6172 (getSuffix!1268 lt!995913 testedP!183)) Nil!32266)) lt!995913)))

(declare-fun lt!995984 () Unit!46484)

(declare-fun choose!16366 (List!32366 List!32366) Unit!46484)

(assert (=> d!810858 (= lt!995984 (choose!16366 testedP!183 lt!995913))))

(assert (=> d!810858 (isPrefix!2589 testedP!183 lt!995913)))

(assert (=> d!810858 (= (lemmaAddHeadSuffixToPrefixStillPrefix!469 testedP!183 lt!995913) lt!995984)))

(declare-fun bs!510981 () Bool)

(assert (= bs!510981 d!810858))

(assert (=> bs!510981 m!3217673))

(declare-fun m!3217837 () Bool)

(assert (=> bs!510981 m!3217837))

(assert (=> bs!510981 m!3217643))

(declare-fun m!3217839 () Bool)

(assert (=> bs!510981 m!3217839))

(declare-fun m!3217841 () Bool)

(assert (=> bs!510981 m!3217841))

(declare-fun m!3217843 () Bool)

(assert (=> bs!510981 m!3217843))

(assert (=> bs!510981 m!3217841))

(assert (=> bs!510981 m!3217673))

(assert (=> b!2787285 d!810858))

(declare-fun b!2787385 () Bool)

(declare-fun e!1759227 () List!32366)

(assert (=> b!2787385 (= e!1759227 (Cons!32266 (h!37686 testedP!183) (++!7969 (t!228508 testedP!183) (Cons!32266 (head!6172 lt!995899) Nil!32266))))))

(declare-fun d!810860 () Bool)

(declare-fun e!1759226 () Bool)

(assert (=> d!810860 e!1759226))

(declare-fun res!1163160 () Bool)

(assert (=> d!810860 (=> (not res!1163160) (not e!1759226))))

(declare-fun lt!995985 () List!32366)

(assert (=> d!810860 (= res!1163160 (= (content!4522 lt!995985) ((_ map or) (content!4522 testedP!183) (content!4522 (Cons!32266 (head!6172 lt!995899) Nil!32266)))))))

(assert (=> d!810860 (= lt!995985 e!1759227)))

(declare-fun c!452647 () Bool)

(assert (=> d!810860 (= c!452647 ((_ is Nil!32266) testedP!183))))

(assert (=> d!810860 (= (++!7969 testedP!183 (Cons!32266 (head!6172 lt!995899) Nil!32266)) lt!995985)))

(declare-fun b!2787384 () Bool)

(assert (=> b!2787384 (= e!1759227 (Cons!32266 (head!6172 lt!995899) Nil!32266))))

(declare-fun b!2787386 () Bool)

(declare-fun res!1163159 () Bool)

(assert (=> b!2787386 (=> (not res!1163159) (not e!1759226))))

(assert (=> b!2787386 (= res!1163159 (= (size!25090 lt!995985) (+ (size!25090 testedP!183) (size!25090 (Cons!32266 (head!6172 lt!995899) Nil!32266)))))))

(declare-fun b!2787387 () Bool)

(assert (=> b!2787387 (= e!1759226 (or (not (= (Cons!32266 (head!6172 lt!995899) Nil!32266) Nil!32266)) (= lt!995985 testedP!183)))))

(assert (= (and d!810860 c!452647) b!2787384))

(assert (= (and d!810860 (not c!452647)) b!2787385))

(assert (= (and d!810860 res!1163160) b!2787386))

(assert (= (and b!2787386 res!1163159) b!2787387))

(declare-fun m!3217845 () Bool)

(assert (=> b!2787385 m!3217845))

(declare-fun m!3217847 () Bool)

(assert (=> d!810860 m!3217847))

(assert (=> d!810860 m!3217725))

(declare-fun m!3217849 () Bool)

(assert (=> d!810860 m!3217849))

(declare-fun m!3217851 () Bool)

(assert (=> b!2787386 m!3217851))

(assert (=> b!2787386 m!3217641))

(declare-fun m!3217853 () Bool)

(assert (=> b!2787386 m!3217853))

(assert (=> b!2787285 d!810860))

(declare-fun d!810862 () Bool)

(assert (=> d!810862 (= (head!6172 lt!995899) (h!37686 lt!995899))))

(assert (=> b!2787285 d!810862))

(declare-fun d!810864 () Bool)

(assert (=> d!810864 (= (tail!4404 testedSuffix!143) (t!228508 testedSuffix!143))))

(assert (=> b!2787285 d!810864))

(declare-fun b!2787389 () Bool)

(declare-fun e!1759229 () List!32366)

(assert (=> b!2787389 (= e!1759229 (Cons!32266 (h!37686 testedP!183) (++!7969 (t!228508 testedP!183) (Cons!32266 lt!995909 Nil!32266))))))

(declare-fun d!810866 () Bool)

(declare-fun e!1759228 () Bool)

(assert (=> d!810866 e!1759228))

(declare-fun res!1163162 () Bool)

(assert (=> d!810866 (=> (not res!1163162) (not e!1759228))))

(declare-fun lt!995986 () List!32366)

(assert (=> d!810866 (= res!1163162 (= (content!4522 lt!995986) ((_ map or) (content!4522 testedP!183) (content!4522 (Cons!32266 lt!995909 Nil!32266)))))))

(assert (=> d!810866 (= lt!995986 e!1759229)))

(declare-fun c!452648 () Bool)

(assert (=> d!810866 (= c!452648 ((_ is Nil!32266) testedP!183))))

(assert (=> d!810866 (= (++!7969 testedP!183 (Cons!32266 lt!995909 Nil!32266)) lt!995986)))

(declare-fun b!2787388 () Bool)

(assert (=> b!2787388 (= e!1759229 (Cons!32266 lt!995909 Nil!32266))))

(declare-fun b!2787390 () Bool)

(declare-fun res!1163161 () Bool)

(assert (=> b!2787390 (=> (not res!1163161) (not e!1759228))))

(assert (=> b!2787390 (= res!1163161 (= (size!25090 lt!995986) (+ (size!25090 testedP!183) (size!25090 (Cons!32266 lt!995909 Nil!32266)))))))

(declare-fun b!2787391 () Bool)

(assert (=> b!2787391 (= e!1759228 (or (not (= (Cons!32266 lt!995909 Nil!32266) Nil!32266)) (= lt!995986 testedP!183)))))

(assert (= (and d!810866 c!452648) b!2787388))

(assert (= (and d!810866 (not c!452648)) b!2787389))

(assert (= (and d!810866 res!1163162) b!2787390))

(assert (= (and b!2787390 res!1163161) b!2787391))

(declare-fun m!3217855 () Bool)

(assert (=> b!2787389 m!3217855))

(declare-fun m!3217857 () Bool)

(assert (=> d!810866 m!3217857))

(assert (=> d!810866 m!3217725))

(declare-fun m!3217859 () Bool)

(assert (=> d!810866 m!3217859))

(declare-fun m!3217861 () Bool)

(assert (=> b!2787390 m!3217861))

(assert (=> b!2787390 m!3217641))

(declare-fun m!3217863 () Bool)

(assert (=> b!2787390 m!3217863))

(assert (=> b!2787285 d!810866))

(declare-fun bs!510982 () Bool)

(declare-fun d!810868 () Bool)

(assert (= bs!510982 (and d!810868 d!810822)))

(declare-fun lambda!102278 () Int)

(assert (=> bs!510982 (not (= lambda!102278 lambda!102273))))

(declare-fun bs!510983 () Bool)

(assert (= bs!510983 (and d!810868 b!2787330)))

(assert (=> bs!510983 (not (= lambda!102278 lambda!102274))))

(declare-fun bs!510984 () Bool)

(assert (= bs!510984 (and d!810868 b!2787331)))

(assert (=> bs!510984 (not (= lambda!102278 lambda!102275))))

(declare-fun exists!992 ((InoxSet Context!4738) Int) Bool)

(assert (=> d!810868 (= (nullableZipper!642 z!3684) (exists!992 z!3684 lambda!102278))))

(declare-fun bs!510985 () Bool)

(assert (= bs!510985 d!810868))

(declare-fun m!3217865 () Bool)

(assert (=> bs!510985 m!3217865))

(assert (=> b!2787285 d!810868))

(declare-fun b!2787393 () Bool)

(declare-fun e!1759231 () List!32366)

(assert (=> b!2787393 (= e!1759231 (Cons!32266 (h!37686 (++!7969 testedP!183 (Cons!32266 lt!995909 Nil!32266))) (++!7969 (t!228508 (++!7969 testedP!183 (Cons!32266 lt!995909 Nil!32266))) lt!995894)))))

(declare-fun d!810870 () Bool)

(declare-fun e!1759230 () Bool)

(assert (=> d!810870 e!1759230))

(declare-fun res!1163164 () Bool)

(assert (=> d!810870 (=> (not res!1163164) (not e!1759230))))

(declare-fun lt!995987 () List!32366)

(assert (=> d!810870 (= res!1163164 (= (content!4522 lt!995987) ((_ map or) (content!4522 (++!7969 testedP!183 (Cons!32266 lt!995909 Nil!32266))) (content!4522 lt!995894))))))

(assert (=> d!810870 (= lt!995987 e!1759231)))

(declare-fun c!452651 () Bool)

(assert (=> d!810870 (= c!452651 ((_ is Nil!32266) (++!7969 testedP!183 (Cons!32266 lt!995909 Nil!32266))))))

(assert (=> d!810870 (= (++!7969 (++!7969 testedP!183 (Cons!32266 lt!995909 Nil!32266)) lt!995894) lt!995987)))

(declare-fun b!2787392 () Bool)

(assert (=> b!2787392 (= e!1759231 lt!995894)))

(declare-fun b!2787394 () Bool)

(declare-fun res!1163163 () Bool)

(assert (=> b!2787394 (=> (not res!1163163) (not e!1759230))))

(assert (=> b!2787394 (= res!1163163 (= (size!25090 lt!995987) (+ (size!25090 (++!7969 testedP!183 (Cons!32266 lt!995909 Nil!32266))) (size!25090 lt!995894))))))

(declare-fun b!2787395 () Bool)

(assert (=> b!2787395 (= e!1759230 (or (not (= lt!995894 Nil!32266)) (= lt!995987 (++!7969 testedP!183 (Cons!32266 lt!995909 Nil!32266)))))))

(assert (= (and d!810870 c!452651) b!2787392))

(assert (= (and d!810870 (not c!452651)) b!2787393))

(assert (= (and d!810870 res!1163164) b!2787394))

(assert (= (and b!2787394 res!1163163) b!2787395))

(declare-fun m!3217867 () Bool)

(assert (=> b!2787393 m!3217867))

(declare-fun m!3217869 () Bool)

(assert (=> d!810870 m!3217869))

(assert (=> d!810870 m!3217649))

(declare-fun m!3217871 () Bool)

(assert (=> d!810870 m!3217871))

(declare-fun m!3217873 () Bool)

(assert (=> d!810870 m!3217873))

(declare-fun m!3217875 () Bool)

(assert (=> b!2787394 m!3217875))

(assert (=> b!2787394 m!3217649))

(declare-fun m!3217877 () Bool)

(assert (=> b!2787394 m!3217877))

(declare-fun m!3217879 () Bool)

(assert (=> b!2787394 m!3217879))

(assert (=> b!2787285 d!810870))

(declare-fun d!810872 () Bool)

(declare-fun lt!995990 () C!16460)

(assert (=> d!810872 (= lt!995990 (apply!7550 (list!12145 totalInput!758) testedPSize!143))))

(declare-fun apply!7551 (Conc!10021 Int) C!16460)

(assert (=> d!810872 (= lt!995990 (apply!7551 (c!452625 totalInput!758) testedPSize!143))))

(declare-fun e!1759234 () Bool)

(assert (=> d!810872 e!1759234))

(declare-fun res!1163167 () Bool)

(assert (=> d!810872 (=> (not res!1163167) (not e!1759234))))

(assert (=> d!810872 (= res!1163167 (<= 0 testedPSize!143))))

(assert (=> d!810872 (= (apply!7549 totalInput!758 testedPSize!143) lt!995990)))

(declare-fun b!2787398 () Bool)

(assert (=> b!2787398 (= e!1759234 (< testedPSize!143 (size!25091 totalInput!758)))))

(assert (= (and d!810872 res!1163167) b!2787398))

(assert (=> d!810872 m!3217623))

(assert (=> d!810872 m!3217623))

(declare-fun m!3217881 () Bool)

(assert (=> d!810872 m!3217881))

(declare-fun m!3217883 () Bool)

(assert (=> d!810872 m!3217883))

(assert (=> b!2787398 m!3217667))

(assert (=> b!2787277 d!810872))

(declare-fun d!810874 () Bool)

(assert (=> d!810874 (= (head!6172 (drop!1726 lt!995913 testedPSize!143)) (h!37686 (drop!1726 lt!995913 testedPSize!143)))))

(assert (=> b!2787277 d!810874))

(declare-fun d!810876 () Bool)

(declare-fun lt!995993 () C!16460)

(declare-fun contains!6005 (List!32366 C!16460) Bool)

(assert (=> d!810876 (contains!6005 lt!995913 lt!995993)))

(declare-fun e!1759239 () C!16460)

(assert (=> d!810876 (= lt!995993 e!1759239)))

(declare-fun c!452654 () Bool)

(assert (=> d!810876 (= c!452654 (= testedPSize!143 0))))

(declare-fun e!1759240 () Bool)

(assert (=> d!810876 e!1759240))

(declare-fun res!1163170 () Bool)

(assert (=> d!810876 (=> (not res!1163170) (not e!1759240))))

(assert (=> d!810876 (= res!1163170 (<= 0 testedPSize!143))))

(assert (=> d!810876 (= (apply!7550 lt!995913 testedPSize!143) lt!995993)))

(declare-fun b!2787405 () Bool)

(assert (=> b!2787405 (= e!1759240 (< testedPSize!143 (size!25090 lt!995913)))))

(declare-fun b!2787406 () Bool)

(assert (=> b!2787406 (= e!1759239 (head!6172 lt!995913))))

(declare-fun b!2787407 () Bool)

(assert (=> b!2787407 (= e!1759239 (apply!7550 (tail!4404 lt!995913) (- testedPSize!143 1)))))

(assert (= (and d!810876 res!1163170) b!2787405))

(assert (= (and d!810876 c!452654) b!2787406))

(assert (= (and d!810876 (not c!452654)) b!2787407))

(declare-fun m!3217885 () Bool)

(assert (=> d!810876 m!3217885))

(assert (=> b!2787405 m!3217695))

(assert (=> b!2787406 m!3217793))

(assert (=> b!2787407 m!3217755))

(assert (=> b!2787407 m!3217755))

(declare-fun m!3217887 () Bool)

(assert (=> b!2787407 m!3217887))

(assert (=> b!2787277 d!810876))

(declare-fun d!810878 () Bool)

(assert (=> d!810878 (and (= lt!995891 testedP!183) (= lt!995903 testedSuffix!143))))

(declare-fun lt!995996 () Unit!46484)

(declare-fun choose!16367 (List!32366 List!32366 List!32366 List!32366) Unit!46484)

(assert (=> d!810878 (= lt!995996 (choose!16367 lt!995891 lt!995903 testedP!183 testedSuffix!143))))

(assert (=> d!810878 (= (++!7969 lt!995891 lt!995903) (++!7969 testedP!183 testedSuffix!143))))

(assert (=> d!810878 (= (lemmaConcatSameAndSameSizesThenSameLists!359 lt!995891 lt!995903 testedP!183 testedSuffix!143) lt!995996)))

(declare-fun bs!510986 () Bool)

(assert (= bs!510986 d!810878))

(declare-fun m!3217889 () Bool)

(assert (=> bs!510986 m!3217889))

(assert (=> bs!510986 m!3217633))

(assert (=> bs!510986 m!3217631))

(assert (=> b!2787277 d!810878))

(declare-fun d!810880 () Bool)

(assert (=> d!810880 (= (head!6172 (drop!1726 lt!995913 testedPSize!143)) (apply!7550 lt!995913 testedPSize!143))))

(declare-fun lt!995999 () Unit!46484)

(declare-fun choose!16368 (List!32366 Int) Unit!46484)

(assert (=> d!810880 (= lt!995999 (choose!16368 lt!995913 testedPSize!143))))

(declare-fun e!1759243 () Bool)

(assert (=> d!810880 e!1759243))

(declare-fun res!1163173 () Bool)

(assert (=> d!810880 (=> (not res!1163173) (not e!1759243))))

(assert (=> d!810880 (= res!1163173 (>= testedPSize!143 0))))

(assert (=> d!810880 (= (lemmaDropApply!932 lt!995913 testedPSize!143) lt!995999)))

(declare-fun b!2787410 () Bool)

(assert (=> b!2787410 (= e!1759243 (< testedPSize!143 (size!25090 lt!995913)))))

(assert (= (and d!810880 res!1163173) b!2787410))

(assert (=> d!810880 m!3217681))

(assert (=> d!810880 m!3217681))

(assert (=> d!810880 m!3217683))

(assert (=> d!810880 m!3217691))

(declare-fun m!3217891 () Bool)

(assert (=> d!810880 m!3217891))

(assert (=> b!2787410 m!3217695))

(assert (=> b!2787277 d!810880))

(declare-fun d!810882 () Bool)

(assert (=> d!810882 (= (head!6172 testedSuffix!143) (h!37686 testedSuffix!143))))

(assert (=> b!2787277 d!810882))

(declare-fun b!2787429 () Bool)

(declare-fun e!1759255 () List!32366)

(assert (=> b!2787429 (= e!1759255 Nil!32266)))

(declare-fun b!2787430 () Bool)

(declare-fun e!1759258 () Int)

(declare-fun call!182516 () Int)

(assert (=> b!2787430 (= e!1759258 call!182516)))

(declare-fun b!2787431 () Bool)

(declare-fun e!1759257 () Int)

(assert (=> b!2787431 (= e!1759257 (- call!182516 testedPSize!143))))

(declare-fun b!2787432 () Bool)

(assert (=> b!2787432 (= e!1759257 0)))

(declare-fun bm!182511 () Bool)

(assert (=> bm!182511 (= call!182516 (size!25090 lt!995913))))

(declare-fun b!2787433 () Bool)

(declare-fun e!1759256 () List!32366)

(assert (=> b!2787433 (= e!1759256 (drop!1726 (t!228508 lt!995913) (- testedPSize!143 1)))))

(declare-fun b!2787434 () Bool)

(assert (=> b!2787434 (= e!1759256 lt!995913)))

(declare-fun b!2787435 () Bool)

(assert (=> b!2787435 (= e!1759258 e!1759257)))

(declare-fun c!452664 () Bool)

(assert (=> b!2787435 (= c!452664 (>= testedPSize!143 call!182516))))

(declare-fun b!2787436 () Bool)

(assert (=> b!2787436 (= e!1759255 e!1759256)))

(declare-fun c!452665 () Bool)

(assert (=> b!2787436 (= c!452665 (<= testedPSize!143 0))))

(declare-fun b!2787437 () Bool)

(declare-fun e!1759254 () Bool)

(declare-fun lt!996002 () List!32366)

(assert (=> b!2787437 (= e!1759254 (= (size!25090 lt!996002) e!1759258))))

(declare-fun c!452666 () Bool)

(assert (=> b!2787437 (= c!452666 (<= testedPSize!143 0))))

(declare-fun d!810884 () Bool)

(assert (=> d!810884 e!1759254))

(declare-fun res!1163176 () Bool)

(assert (=> d!810884 (=> (not res!1163176) (not e!1759254))))

(assert (=> d!810884 (= res!1163176 (= ((_ map implies) (content!4522 lt!996002) (content!4522 lt!995913)) ((as const (InoxSet C!16460)) true)))))

(assert (=> d!810884 (= lt!996002 e!1759255)))

(declare-fun c!452663 () Bool)

(assert (=> d!810884 (= c!452663 ((_ is Nil!32266) lt!995913))))

(assert (=> d!810884 (= (drop!1726 lt!995913 testedPSize!143) lt!996002)))

(assert (= (and d!810884 c!452663) b!2787429))

(assert (= (and d!810884 (not c!452663)) b!2787436))

(assert (= (and b!2787436 c!452665) b!2787434))

(assert (= (and b!2787436 (not c!452665)) b!2787433))

(assert (= (and d!810884 res!1163176) b!2787437))

(assert (= (and b!2787437 c!452666) b!2787430))

(assert (= (and b!2787437 (not c!452666)) b!2787435))

(assert (= (and b!2787435 c!452664) b!2787432))

(assert (= (and b!2787435 (not c!452664)) b!2787431))

(assert (= (or b!2787430 b!2787435 b!2787431) bm!182511))

(assert (=> bm!182511 m!3217695))

(declare-fun m!3217893 () Bool)

(assert (=> b!2787433 m!3217893))

(declare-fun m!3217895 () Bool)

(assert (=> b!2787437 m!3217895))

(declare-fun m!3217897 () Bool)

(assert (=> d!810884 m!3217897))

(declare-fun m!3217899 () Bool)

(assert (=> d!810884 m!3217899))

(assert (=> b!2787277 d!810884))

(declare-fun d!810886 () Bool)

(assert (=> d!810886 (= (array_inv!4428 (_keys!4201 (v!33870 (underlying!8005 (v!33871 (underlying!8006 (cache!3950 cacheUp!890))))))) (bvsge (size!25087 (_keys!4201 (v!33870 (underlying!8005 (v!33871 (underlying!8006 (cache!3950 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2787278 d!810886))

(declare-fun d!810888 () Bool)

(assert (=> d!810888 (= (array_inv!4429 (_values!4182 (v!33870 (underlying!8005 (v!33871 (underlying!8006 (cache!3950 cacheUp!890))))))) (bvsge (size!25089 (_values!4182 (v!33870 (underlying!8005 (v!33871 (underlying!8006 (cache!3950 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2787278 d!810888))

(declare-fun d!810890 () Bool)

(declare-fun c!452669 () Bool)

(assert (=> d!810890 (= c!452669 ((_ is Node!10021) (c!452625 totalInput!758)))))

(declare-fun e!1759263 () Bool)

(assert (=> d!810890 (= (inv!43833 (c!452625 totalInput!758)) e!1759263)))

(declare-fun b!2787444 () Bool)

(declare-fun inv!43837 (Conc!10021) Bool)

(assert (=> b!2787444 (= e!1759263 (inv!43837 (c!452625 totalInput!758)))))

(declare-fun b!2787445 () Bool)

(declare-fun e!1759264 () Bool)

(assert (=> b!2787445 (= e!1759263 e!1759264)))

(declare-fun res!1163179 () Bool)

(assert (=> b!2787445 (= res!1163179 (not ((_ is Leaf!15265) (c!452625 totalInput!758))))))

(assert (=> b!2787445 (=> res!1163179 e!1759264)))

(declare-fun b!2787446 () Bool)

(declare-fun inv!43838 (Conc!10021) Bool)

(assert (=> b!2787446 (= e!1759264 (inv!43838 (c!452625 totalInput!758)))))

(assert (= (and d!810890 c!452669) b!2787444))

(assert (= (and d!810890 (not c!452669)) b!2787445))

(assert (= (and b!2787445 (not res!1163179)) b!2787446))

(declare-fun m!3217901 () Bool)

(assert (=> b!2787444 m!3217901))

(declare-fun m!3217903 () Bool)

(assert (=> b!2787446 m!3217903))

(assert (=> b!2787287 d!810890))

(declare-fun d!810892 () Bool)

(assert (=> d!810892 (= (valid!3049 cacheUp!890) (validCacheMapUp!381 (cache!3950 cacheUp!890)))))

(declare-fun bs!510987 () Bool)

(assert (= bs!510987 d!810892))

(assert (=> bs!510987 m!3217713))

(assert (=> b!2787298 d!810892))

(declare-fun d!810894 () Bool)

(declare-fun lambda!102281 () Int)

(declare-fun forall!6660 (List!32363 Int) Bool)

(assert (=> d!810894 (= (inv!43832 setElem!23626) (forall!6660 (exprs!2869 setElem!23626) lambda!102281))))

(declare-fun bs!510988 () Bool)

(assert (= bs!510988 d!810894))

(declare-fun m!3217905 () Bool)

(assert (=> bs!510988 m!3217905))

(assert (=> setNonEmpty!23626 d!810894))

(declare-fun d!810896 () Bool)

(declare-fun lt!996003 () Int)

(assert (=> d!810896 (>= lt!996003 0)))

(declare-fun e!1759265 () Int)

(assert (=> d!810896 (= lt!996003 e!1759265)))

(declare-fun c!452670 () Bool)

(assert (=> d!810896 (= c!452670 ((_ is Nil!32266) lt!995913))))

(assert (=> d!810896 (= (size!25090 lt!995913) lt!996003)))

(declare-fun b!2787447 () Bool)

(assert (=> b!2787447 (= e!1759265 0)))

(declare-fun b!2787448 () Bool)

(assert (=> b!2787448 (= e!1759265 (+ 1 (size!25090 (t!228508 lt!995913))))))

(assert (= (and d!810896 c!452670) b!2787447))

(assert (= (and d!810896 (not c!452670)) b!2787448))

(declare-fun m!3217907 () Bool)

(assert (=> b!2787448 m!3217907))

(assert (=> b!2787288 d!810896))

(declare-fun d!810898 () Bool)

(assert (=> d!810898 (<= (size!25090 testedP!183) (size!25090 lt!995913))))

(declare-fun lt!996006 () Unit!46484)

(declare-fun choose!16369 (List!32366 List!32366) Unit!46484)

(assert (=> d!810898 (= lt!996006 (choose!16369 testedP!183 lt!995913))))

(assert (=> d!810898 (isPrefix!2589 testedP!183 lt!995913)))

(assert (=> d!810898 (= (lemmaIsPrefixThenSmallerEqSize!276 testedP!183 lt!995913) lt!996006)))

(declare-fun bs!510989 () Bool)

(assert (= bs!510989 d!810898))

(assert (=> bs!510989 m!3217641))

(assert (=> bs!510989 m!3217695))

(declare-fun m!3217909 () Bool)

(assert (=> bs!510989 m!3217909))

(assert (=> bs!510989 m!3217643))

(assert (=> b!2787288 d!810898))

(declare-fun b!2787457 () Bool)

(declare-fun e!1759274 () Bool)

(declare-fun tp!884099 () Bool)

(assert (=> b!2787457 (= e!1759274 tp!884099)))

(declare-fun tp!884102 () Bool)

(declare-fun b!2787458 () Bool)

(declare-fun setRes!23629 () Bool)

(declare-fun tp!884100 () Bool)

(declare-fun e!1759272 () Bool)

(assert (=> b!2787458 (= e!1759272 (and tp!884100 (inv!43832 (_2!19295 (_1!19296 (h!37684 (zeroValue!4159 (v!33868 (underlying!8003 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009)))))))))) e!1759274 tp_is_empty!14115 setRes!23629 tp!884102))))

(declare-fun condSetEmpty!23629 () Bool)

(assert (=> b!2787458 (= condSetEmpty!23629 (= (_2!19296 (h!37684 (zeroValue!4159 (v!33868 (underlying!8003 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009)))))))) ((as const (Array Context!4738 Bool)) false)))))

(assert (=> b!2787299 (= tp!884086 e!1759272)))

(declare-fun setElem!23629 () Context!4738)

(declare-fun setNonEmpty!23629 () Bool)

(declare-fun tp!884101 () Bool)

(declare-fun e!1759273 () Bool)

(assert (=> setNonEmpty!23629 (= setRes!23629 (and tp!884101 (inv!43832 setElem!23629) e!1759273))))

(declare-fun setRest!23629 () (InoxSet Context!4738))

(assert (=> setNonEmpty!23629 (= (_2!19296 (h!37684 (zeroValue!4159 (v!33868 (underlying!8003 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4738 Bool)) false) setElem!23629 true) setRest!23629))))

(declare-fun setIsEmpty!23629 () Bool)

(assert (=> setIsEmpty!23629 setRes!23629))

(declare-fun b!2787459 () Bool)

(declare-fun tp!884103 () Bool)

(assert (=> b!2787459 (= e!1759273 tp!884103)))

(assert (= b!2787458 b!2787457))

(assert (= (and b!2787458 condSetEmpty!23629) setIsEmpty!23629))

(assert (= (and b!2787458 (not condSetEmpty!23629)) setNonEmpty!23629))

(assert (= setNonEmpty!23629 b!2787459))

(assert (= (and b!2787299 ((_ is Cons!32264) (zeroValue!4159 (v!33868 (underlying!8003 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009)))))))) b!2787458))

(declare-fun m!3217911 () Bool)

(assert (=> b!2787458 m!3217911))

(declare-fun m!3217913 () Bool)

(assert (=> setNonEmpty!23629 m!3217913))

(declare-fun b!2787460 () Bool)

(declare-fun e!1759277 () Bool)

(declare-fun tp!884104 () Bool)

(assert (=> b!2787460 (= e!1759277 tp!884104)))

(declare-fun e!1759275 () Bool)

(declare-fun setRes!23630 () Bool)

(declare-fun tp!884105 () Bool)

(declare-fun b!2787461 () Bool)

(declare-fun tp!884107 () Bool)

(assert (=> b!2787461 (= e!1759275 (and tp!884105 (inv!43832 (_2!19295 (_1!19296 (h!37684 (minValue!4159 (v!33868 (underlying!8003 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009)))))))))) e!1759277 tp_is_empty!14115 setRes!23630 tp!884107))))

(declare-fun condSetEmpty!23630 () Bool)

(assert (=> b!2787461 (= condSetEmpty!23630 (= (_2!19296 (h!37684 (minValue!4159 (v!33868 (underlying!8003 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009)))))))) ((as const (Array Context!4738 Bool)) false)))))

(assert (=> b!2787299 (= tp!884078 e!1759275)))

(declare-fun tp!884106 () Bool)

(declare-fun e!1759276 () Bool)

(declare-fun setNonEmpty!23630 () Bool)

(declare-fun setElem!23630 () Context!4738)

(assert (=> setNonEmpty!23630 (= setRes!23630 (and tp!884106 (inv!43832 setElem!23630) e!1759276))))

(declare-fun setRest!23630 () (InoxSet Context!4738))

(assert (=> setNonEmpty!23630 (= (_2!19296 (h!37684 (minValue!4159 (v!33868 (underlying!8003 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4738 Bool)) false) setElem!23630 true) setRest!23630))))

(declare-fun setIsEmpty!23630 () Bool)

(assert (=> setIsEmpty!23630 setRes!23630))

(declare-fun b!2787462 () Bool)

(declare-fun tp!884108 () Bool)

(assert (=> b!2787462 (= e!1759276 tp!884108)))

(assert (= b!2787461 b!2787460))

(assert (= (and b!2787461 condSetEmpty!23630) setIsEmpty!23630))

(assert (= (and b!2787461 (not condSetEmpty!23630)) setNonEmpty!23630))

(assert (= setNonEmpty!23630 b!2787462))

(assert (= (and b!2787299 ((_ is Cons!32264) (minValue!4159 (v!33868 (underlying!8003 (v!33869 (underlying!8004 (cache!3949 cacheDown!1009)))))))) b!2787461))

(declare-fun m!3217915 () Bool)

(assert (=> b!2787461 m!3217915))

(declare-fun m!3217917 () Bool)

(assert (=> setNonEmpty!23630 m!3217917))

(declare-fun b!2787467 () Bool)

(declare-fun e!1759280 () Bool)

(declare-fun tp!884111 () Bool)

(assert (=> b!2787467 (= e!1759280 (and tp_is_empty!14115 tp!884111))))

(assert (=> b!2787279 (= tp!884075 e!1759280)))

(assert (= (and b!2787279 ((_ is Cons!32266) (t!228508 testedSuffix!143))) b!2787467))

(declare-fun b!2787468 () Bool)

(declare-fun e!1759283 () Bool)

(declare-fun tp!884112 () Bool)

(assert (=> b!2787468 (= e!1759283 tp!884112)))

(declare-fun e!1759281 () Bool)

(declare-fun b!2787469 () Bool)

(declare-fun tp!884113 () Bool)

(declare-fun setRes!23631 () Bool)

(declare-fun tp!884115 () Bool)

(assert (=> b!2787469 (= e!1759281 (and tp!884113 (inv!43832 (_2!19295 (_1!19296 (h!37684 mapDefault!17783)))) e!1759283 tp_is_empty!14115 setRes!23631 tp!884115))))

(declare-fun condSetEmpty!23631 () Bool)

(assert (=> b!2787469 (= condSetEmpty!23631 (= (_2!19296 (h!37684 mapDefault!17783)) ((as const (Array Context!4738 Bool)) false)))))

(assert (=> b!2787301 (= tp!884070 e!1759281)))

(declare-fun e!1759282 () Bool)

(declare-fun tp!884114 () Bool)

(declare-fun setElem!23631 () Context!4738)

(declare-fun setNonEmpty!23631 () Bool)

(assert (=> setNonEmpty!23631 (= setRes!23631 (and tp!884114 (inv!43832 setElem!23631) e!1759282))))

(declare-fun setRest!23631 () (InoxSet Context!4738))

(assert (=> setNonEmpty!23631 (= (_2!19296 (h!37684 mapDefault!17783)) ((_ map or) (store ((as const (Array Context!4738 Bool)) false) setElem!23631 true) setRest!23631))))

(declare-fun setIsEmpty!23631 () Bool)

(assert (=> setIsEmpty!23631 setRes!23631))

(declare-fun b!2787470 () Bool)

(declare-fun tp!884116 () Bool)

(assert (=> b!2787470 (= e!1759282 tp!884116)))

(assert (= b!2787469 b!2787468))

(assert (= (and b!2787469 condSetEmpty!23631) setIsEmpty!23631))

(assert (= (and b!2787469 (not condSetEmpty!23631)) setNonEmpty!23631))

(assert (= setNonEmpty!23631 b!2787470))

(assert (= (and b!2787301 ((_ is Cons!32264) mapDefault!17783)) b!2787469))

(declare-fun m!3217919 () Bool)

(assert (=> b!2787469 m!3217919))

(declare-fun m!3217921 () Bool)

(assert (=> setNonEmpty!23631 m!3217921))

(declare-fun e!1759291 () Bool)

(declare-fun tp!884128 () Bool)

(declare-fun e!1759290 () Bool)

(declare-fun setRes!23634 () Bool)

(declare-fun b!2787479 () Bool)

(assert (=> b!2787479 (= e!1759290 (and (inv!43832 (_1!19297 (_1!19298 (h!37685 mapDefault!17784)))) e!1759291 tp_is_empty!14115 setRes!23634 tp!884128))))

(declare-fun condSetEmpty!23634 () Bool)

(assert (=> b!2787479 (= condSetEmpty!23634 (= (_2!19298 (h!37685 mapDefault!17784)) ((as const (Array Context!4738 Bool)) false)))))

(declare-fun b!2787480 () Bool)

(declare-fun tp!884127 () Bool)

(assert (=> b!2787480 (= e!1759291 tp!884127)))

(declare-fun b!2787481 () Bool)

(declare-fun e!1759292 () Bool)

(declare-fun tp!884126 () Bool)

(assert (=> b!2787481 (= e!1759292 tp!884126)))

(assert (=> b!2787303 (= tp!884073 e!1759290)))

(declare-fun setIsEmpty!23634 () Bool)

(assert (=> setIsEmpty!23634 setRes!23634))

(declare-fun setNonEmpty!23634 () Bool)

(declare-fun tp!884125 () Bool)

(declare-fun setElem!23634 () Context!4738)

(assert (=> setNonEmpty!23634 (= setRes!23634 (and tp!884125 (inv!43832 setElem!23634) e!1759292))))

(declare-fun setRest!23634 () (InoxSet Context!4738))

(assert (=> setNonEmpty!23634 (= (_2!19298 (h!37685 mapDefault!17784)) ((_ map or) (store ((as const (Array Context!4738 Bool)) false) setElem!23634 true) setRest!23634))))

(assert (= b!2787479 b!2787480))

(assert (= (and b!2787479 condSetEmpty!23634) setIsEmpty!23634))

(assert (= (and b!2787479 (not condSetEmpty!23634)) setNonEmpty!23634))

(assert (= setNonEmpty!23634 b!2787481))

(assert (= (and b!2787303 ((_ is Cons!32265) mapDefault!17784)) b!2787479))

(declare-fun m!3217923 () Bool)

(assert (=> b!2787479 m!3217923))

(declare-fun m!3217925 () Bool)

(assert (=> setNonEmpty!23634 m!3217925))

(declare-fun b!2787482 () Bool)

(declare-fun e!1759293 () Bool)

(declare-fun tp!884129 () Bool)

(assert (=> b!2787482 (= e!1759293 (and tp_is_empty!14115 tp!884129))))

(assert (=> b!2787293 (= tp!884077 e!1759293)))

(assert (= (and b!2787293 ((_ is Cons!32266) (t!228508 testedP!183))) b!2787482))

(declare-fun mapNonEmpty!17787 () Bool)

(declare-fun mapRes!17787 () Bool)

(declare-fun tp!884161 () Bool)

(declare-fun e!1759309 () Bool)

(assert (=> mapNonEmpty!17787 (= mapRes!17787 (and tp!884161 e!1759309))))

(declare-fun mapRest!17787 () (Array (_ BitVec 32) List!32364))

(declare-fun mapValue!17787 () List!32364)

(declare-fun mapKey!17787 () (_ BitVec 32))

(assert (=> mapNonEmpty!17787 (= mapRest!17783 (store mapRest!17787 mapKey!17787 mapValue!17787))))

(declare-fun setElem!23639 () Context!4738)

(declare-fun setRes!23639 () Bool)

(declare-fun e!1759306 () Bool)

(declare-fun tp!884157 () Bool)

(declare-fun setNonEmpty!23639 () Bool)

(assert (=> setNonEmpty!23639 (= setRes!23639 (and tp!884157 (inv!43832 setElem!23639) e!1759306))))

(declare-fun mapDefault!17787 () List!32364)

(declare-fun setRest!23640 () (InoxSet Context!4738))

(assert (=> setNonEmpty!23639 (= (_2!19296 (h!37684 mapDefault!17787)) ((_ map or) (store ((as const (Array Context!4738 Bool)) false) setElem!23639 true) setRest!23640))))

(declare-fun b!2787497 () Bool)

(declare-fun e!1759308 () Bool)

(declare-fun tp!884159 () Bool)

(declare-fun tp!884156 () Bool)

(declare-fun setRes!23640 () Bool)

(assert (=> b!2787497 (= e!1759309 (and tp!884156 (inv!43832 (_2!19295 (_1!19296 (h!37684 mapValue!17787)))) e!1759308 tp_is_empty!14115 setRes!23640 tp!884159))))

(declare-fun condSetEmpty!23640 () Bool)

(assert (=> b!2787497 (= condSetEmpty!23640 (= (_2!19296 (h!37684 mapValue!17787)) ((as const (Array Context!4738 Bool)) false)))))

(declare-fun setIsEmpty!23639 () Bool)

(assert (=> setIsEmpty!23639 setRes!23640))

(declare-fun setIsEmpty!23640 () Bool)

(assert (=> setIsEmpty!23640 setRes!23639))

(declare-fun setNonEmpty!23640 () Bool)

(declare-fun e!1759310 () Bool)

(declare-fun setElem!23640 () Context!4738)

(declare-fun tp!884152 () Bool)

(assert (=> setNonEmpty!23640 (= setRes!23640 (and tp!884152 (inv!43832 setElem!23640) e!1759310))))

(declare-fun setRest!23639 () (InoxSet Context!4738))

(assert (=> setNonEmpty!23640 (= (_2!19296 (h!37684 mapValue!17787)) ((_ map or) (store ((as const (Array Context!4738 Bool)) false) setElem!23640 true) setRest!23639))))

(declare-fun b!2787498 () Bool)

(declare-fun e!1759311 () Bool)

(declare-fun tp!884155 () Bool)

(assert (=> b!2787498 (= e!1759311 tp!884155)))

(declare-fun b!2787499 () Bool)

(declare-fun tp!884160 () Bool)

(assert (=> b!2787499 (= e!1759308 tp!884160)))

(declare-fun b!2787500 () Bool)

(declare-fun tp!884158 () Bool)

(assert (=> b!2787500 (= e!1759306 tp!884158)))

(declare-fun condMapEmpty!17787 () Bool)

(assert (=> mapNonEmpty!17784 (= condMapEmpty!17787 (= mapRest!17783 ((as const (Array (_ BitVec 32) List!32364)) mapDefault!17787)))))

(declare-fun e!1759307 () Bool)

(assert (=> mapNonEmpty!17784 (= tp!884074 (and e!1759307 mapRes!17787))))

(declare-fun b!2787501 () Bool)

(declare-fun tp!884153 () Bool)

(assert (=> b!2787501 (= e!1759310 tp!884153)))

(declare-fun tp!884154 () Bool)

(declare-fun b!2787502 () Bool)

(declare-fun tp!884162 () Bool)

(assert (=> b!2787502 (= e!1759307 (and tp!884154 (inv!43832 (_2!19295 (_1!19296 (h!37684 mapDefault!17787)))) e!1759311 tp_is_empty!14115 setRes!23639 tp!884162))))

(declare-fun condSetEmpty!23639 () Bool)

(assert (=> b!2787502 (= condSetEmpty!23639 (= (_2!19296 (h!37684 mapDefault!17787)) ((as const (Array Context!4738 Bool)) false)))))

(declare-fun mapIsEmpty!17787 () Bool)

(assert (=> mapIsEmpty!17787 mapRes!17787))

(assert (= (and mapNonEmpty!17784 condMapEmpty!17787) mapIsEmpty!17787))

(assert (= (and mapNonEmpty!17784 (not condMapEmpty!17787)) mapNonEmpty!17787))

(assert (= b!2787497 b!2787499))

(assert (= (and b!2787497 condSetEmpty!23640) setIsEmpty!23639))

(assert (= (and b!2787497 (not condSetEmpty!23640)) setNonEmpty!23640))

(assert (= setNonEmpty!23640 b!2787501))

(assert (= (and mapNonEmpty!17787 ((_ is Cons!32264) mapValue!17787)) b!2787497))

(assert (= b!2787502 b!2787498))

(assert (= (and b!2787502 condSetEmpty!23639) setIsEmpty!23640))

(assert (= (and b!2787502 (not condSetEmpty!23639)) setNonEmpty!23639))

(assert (= setNonEmpty!23639 b!2787500))

(assert (= (and mapNonEmpty!17784 ((_ is Cons!32264) mapDefault!17787)) b!2787502))

(declare-fun m!3217927 () Bool)

(assert (=> setNonEmpty!23639 m!3217927))

(declare-fun m!3217929 () Bool)

(assert (=> setNonEmpty!23640 m!3217929))

(declare-fun m!3217931 () Bool)

(assert (=> b!2787497 m!3217931))

(declare-fun m!3217933 () Bool)

(assert (=> b!2787502 m!3217933))

(declare-fun m!3217935 () Bool)

(assert (=> mapNonEmpty!17787 m!3217935))

(declare-fun b!2787503 () Bool)

(declare-fun e!1759314 () Bool)

(declare-fun tp!884163 () Bool)

(assert (=> b!2787503 (= e!1759314 tp!884163)))

(declare-fun tp!884166 () Bool)

(declare-fun b!2787504 () Bool)

(declare-fun tp!884164 () Bool)

(declare-fun e!1759312 () Bool)

(declare-fun setRes!23641 () Bool)

(assert (=> b!2787504 (= e!1759312 (and tp!884164 (inv!43832 (_2!19295 (_1!19296 (h!37684 mapValue!17783)))) e!1759314 tp_is_empty!14115 setRes!23641 tp!884166))))

(declare-fun condSetEmpty!23641 () Bool)

(assert (=> b!2787504 (= condSetEmpty!23641 (= (_2!19296 (h!37684 mapValue!17783)) ((as const (Array Context!4738 Bool)) false)))))

(assert (=> mapNonEmpty!17784 (= tp!884085 e!1759312)))

(declare-fun setElem!23641 () Context!4738)

(declare-fun setNonEmpty!23641 () Bool)

(declare-fun tp!884165 () Bool)

(declare-fun e!1759313 () Bool)

(assert (=> setNonEmpty!23641 (= setRes!23641 (and tp!884165 (inv!43832 setElem!23641) e!1759313))))

(declare-fun setRest!23641 () (InoxSet Context!4738))

(assert (=> setNonEmpty!23641 (= (_2!19296 (h!37684 mapValue!17783)) ((_ map or) (store ((as const (Array Context!4738 Bool)) false) setElem!23641 true) setRest!23641))))

(declare-fun setIsEmpty!23641 () Bool)

(assert (=> setIsEmpty!23641 setRes!23641))

(declare-fun b!2787505 () Bool)

(declare-fun tp!884167 () Bool)

(assert (=> b!2787505 (= e!1759313 tp!884167)))

(assert (= b!2787504 b!2787503))

(assert (= (and b!2787504 condSetEmpty!23641) setIsEmpty!23641))

(assert (= (and b!2787504 (not condSetEmpty!23641)) setNonEmpty!23641))

(assert (= setNonEmpty!23641 b!2787505))

(assert (= (and mapNonEmpty!17784 ((_ is Cons!32264) mapValue!17783)) b!2787504))

(declare-fun m!3217937 () Bool)

(assert (=> b!2787504 m!3217937))

(declare-fun m!3217939 () Bool)

(assert (=> setNonEmpty!23641 m!3217939))

(declare-fun b!2787510 () Bool)

(declare-fun e!1759317 () Bool)

(declare-fun tp!884172 () Bool)

(declare-fun tp!884173 () Bool)

(assert (=> b!2787510 (= e!1759317 (and tp!884172 tp!884173))))

(assert (=> b!2787294 (= tp!884079 e!1759317)))

(assert (= (and b!2787294 ((_ is Cons!32263) (exprs!2869 setElem!23626))) b!2787510))

(declare-fun setIsEmpty!23646 () Bool)

(declare-fun setRes!23647 () Bool)

(assert (=> setIsEmpty!23646 setRes!23647))

(declare-fun b!2787525 () Bool)

(declare-fun e!1759334 () Bool)

(declare-fun tp!884197 () Bool)

(assert (=> b!2787525 (= e!1759334 tp!884197)))

(declare-fun b!2787526 () Bool)

(declare-fun e!1759333 () Bool)

(declare-fun tp!884198 () Bool)

(assert (=> b!2787526 (= e!1759333 tp!884198)))

(declare-fun condMapEmpty!17790 () Bool)

(declare-fun mapDefault!17790 () List!32365)

(assert (=> mapNonEmpty!17783 (= condMapEmpty!17790 (= mapRest!17784 ((as const (Array (_ BitVec 32) List!32365)) mapDefault!17790)))))

(declare-fun e!1759330 () Bool)

(declare-fun mapRes!17790 () Bool)

(assert (=> mapNonEmpty!17783 (= tp!884083 (and e!1759330 mapRes!17790))))

(declare-fun mapNonEmpty!17790 () Bool)

(declare-fun tp!884193 () Bool)

(declare-fun e!1759335 () Bool)

(assert (=> mapNonEmpty!17790 (= mapRes!17790 (and tp!884193 e!1759335))))

(declare-fun mapRest!17790 () (Array (_ BitVec 32) List!32365))

(declare-fun mapKey!17790 () (_ BitVec 32))

(declare-fun mapValue!17790 () List!32365)

(assert (=> mapNonEmpty!17790 (= mapRest!17784 (store mapRest!17790 mapKey!17790 mapValue!17790))))

(declare-fun setRes!23646 () Bool)

(declare-fun setNonEmpty!23646 () Bool)

(declare-fun setElem!23647 () Context!4738)

(declare-fun tp!884196 () Bool)

(assert (=> setNonEmpty!23646 (= setRes!23646 (and tp!884196 (inv!43832 setElem!23647) e!1759334))))

(declare-fun setRest!23647 () (InoxSet Context!4738))

(assert (=> setNonEmpty!23646 (= (_2!19298 (h!37685 mapDefault!17790)) ((_ map or) (store ((as const (Array Context!4738 Bool)) false) setElem!23647 true) setRest!23647))))

(declare-fun b!2787527 () Bool)

(declare-fun e!1759332 () Bool)

(declare-fun tp!884194 () Bool)

(assert (=> b!2787527 (= e!1759332 tp!884194)))

(declare-fun b!2787528 () Bool)

(declare-fun tp!884195 () Bool)

(assert (=> b!2787528 (= e!1759330 (and (inv!43832 (_1!19297 (_1!19298 (h!37685 mapDefault!17790)))) e!1759332 tp_is_empty!14115 setRes!23646 tp!884195))))

(declare-fun condSetEmpty!23646 () Bool)

(assert (=> b!2787528 (= condSetEmpty!23646 (= (_2!19298 (h!37685 mapDefault!17790)) ((as const (Array Context!4738 Bool)) false)))))

(declare-fun b!2787529 () Bool)

(declare-fun e!1759331 () Bool)

(declare-fun tp!884200 () Bool)

(assert (=> b!2787529 (= e!1759331 tp!884200)))

(declare-fun b!2787530 () Bool)

(declare-fun tp!884199 () Bool)

(assert (=> b!2787530 (= e!1759335 (and (inv!43832 (_1!19297 (_1!19298 (h!37685 mapValue!17790)))) e!1759331 tp_is_empty!14115 setRes!23647 tp!884199))))

(declare-fun condSetEmpty!23647 () Bool)

(assert (=> b!2787530 (= condSetEmpty!23647 (= (_2!19298 (h!37685 mapValue!17790)) ((as const (Array Context!4738 Bool)) false)))))

(declare-fun setElem!23646 () Context!4738)

(declare-fun setNonEmpty!23647 () Bool)

(declare-fun tp!884192 () Bool)

(assert (=> setNonEmpty!23647 (= setRes!23647 (and tp!884192 (inv!43832 setElem!23646) e!1759333))))

(declare-fun setRest!23646 () (InoxSet Context!4738))

(assert (=> setNonEmpty!23647 (= (_2!19298 (h!37685 mapValue!17790)) ((_ map or) (store ((as const (Array Context!4738 Bool)) false) setElem!23646 true) setRest!23646))))

(declare-fun mapIsEmpty!17790 () Bool)

(assert (=> mapIsEmpty!17790 mapRes!17790))

(declare-fun setIsEmpty!23647 () Bool)

(assert (=> setIsEmpty!23647 setRes!23646))

(assert (= (and mapNonEmpty!17783 condMapEmpty!17790) mapIsEmpty!17790))

(assert (= (and mapNonEmpty!17783 (not condMapEmpty!17790)) mapNonEmpty!17790))

(assert (= b!2787530 b!2787529))

(assert (= (and b!2787530 condSetEmpty!23647) setIsEmpty!23646))

(assert (= (and b!2787530 (not condSetEmpty!23647)) setNonEmpty!23647))

(assert (= setNonEmpty!23647 b!2787526))

(assert (= (and mapNonEmpty!17790 ((_ is Cons!32265) mapValue!17790)) b!2787530))

(assert (= b!2787528 b!2787527))

(assert (= (and b!2787528 condSetEmpty!23646) setIsEmpty!23647))

(assert (= (and b!2787528 (not condSetEmpty!23646)) setNonEmpty!23646))

(assert (= setNonEmpty!23646 b!2787525))

(assert (= (and mapNonEmpty!17783 ((_ is Cons!32265) mapDefault!17790)) b!2787528))

(declare-fun m!3217941 () Bool)

(assert (=> b!2787528 m!3217941))

(declare-fun m!3217943 () Bool)

(assert (=> setNonEmpty!23646 m!3217943))

(declare-fun m!3217945 () Bool)

(assert (=> b!2787530 m!3217945))

(declare-fun m!3217947 () Bool)

(assert (=> mapNonEmpty!17790 m!3217947))

(declare-fun m!3217949 () Bool)

(assert (=> setNonEmpty!23647 m!3217949))

(declare-fun tp!884204 () Bool)

(declare-fun e!1759337 () Bool)

(declare-fun b!2787531 () Bool)

(declare-fun setRes!23648 () Bool)

(declare-fun e!1759336 () Bool)

(assert (=> b!2787531 (= e!1759336 (and (inv!43832 (_1!19297 (_1!19298 (h!37685 mapValue!17784)))) e!1759337 tp_is_empty!14115 setRes!23648 tp!884204))))

(declare-fun condSetEmpty!23648 () Bool)

(assert (=> b!2787531 (= condSetEmpty!23648 (= (_2!19298 (h!37685 mapValue!17784)) ((as const (Array Context!4738 Bool)) false)))))

(declare-fun b!2787532 () Bool)

(declare-fun tp!884203 () Bool)

(assert (=> b!2787532 (= e!1759337 tp!884203)))

(declare-fun b!2787533 () Bool)

(declare-fun e!1759338 () Bool)

(declare-fun tp!884202 () Bool)

(assert (=> b!2787533 (= e!1759338 tp!884202)))

(assert (=> mapNonEmpty!17783 (= tp!884082 e!1759336)))

(declare-fun setIsEmpty!23648 () Bool)

(assert (=> setIsEmpty!23648 setRes!23648))

(declare-fun tp!884201 () Bool)

(declare-fun setNonEmpty!23648 () Bool)

(declare-fun setElem!23648 () Context!4738)

(assert (=> setNonEmpty!23648 (= setRes!23648 (and tp!884201 (inv!43832 setElem!23648) e!1759338))))

(declare-fun setRest!23648 () (InoxSet Context!4738))

(assert (=> setNonEmpty!23648 (= (_2!19298 (h!37685 mapValue!17784)) ((_ map or) (store ((as const (Array Context!4738 Bool)) false) setElem!23648 true) setRest!23648))))

(assert (= b!2787531 b!2787532))

(assert (= (and b!2787531 condSetEmpty!23648) setIsEmpty!23648))

(assert (= (and b!2787531 (not condSetEmpty!23648)) setNonEmpty!23648))

(assert (= setNonEmpty!23648 b!2787533))

(assert (= (and mapNonEmpty!17783 ((_ is Cons!32265) mapValue!17784)) b!2787531))

(declare-fun m!3217951 () Bool)

(assert (=> b!2787531 m!3217951))

(declare-fun m!3217953 () Bool)

(assert (=> setNonEmpty!23648 m!3217953))

(declare-fun setRes!23649 () Bool)

(declare-fun e!1759340 () Bool)

(declare-fun b!2787534 () Bool)

(declare-fun e!1759339 () Bool)

(declare-fun tp!884208 () Bool)

(assert (=> b!2787534 (= e!1759339 (and (inv!43832 (_1!19297 (_1!19298 (h!37685 (zeroValue!4160 (v!33870 (underlying!8005 (v!33871 (underlying!8006 (cache!3950 cacheUp!890)))))))))) e!1759340 tp_is_empty!14115 setRes!23649 tp!884208))))

(declare-fun condSetEmpty!23649 () Bool)

(assert (=> b!2787534 (= condSetEmpty!23649 (= (_2!19298 (h!37685 (zeroValue!4160 (v!33870 (underlying!8005 (v!33871 (underlying!8006 (cache!3950 cacheUp!890)))))))) ((as const (Array Context!4738 Bool)) false)))))

(declare-fun b!2787535 () Bool)

(declare-fun tp!884207 () Bool)

(assert (=> b!2787535 (= e!1759340 tp!884207)))

(declare-fun b!2787536 () Bool)

(declare-fun e!1759341 () Bool)

(declare-fun tp!884206 () Bool)

(assert (=> b!2787536 (= e!1759341 tp!884206)))

(assert (=> b!2787278 (= tp!884072 e!1759339)))

(declare-fun setIsEmpty!23649 () Bool)

(assert (=> setIsEmpty!23649 setRes!23649))

(declare-fun setElem!23649 () Context!4738)

(declare-fun tp!884205 () Bool)

(declare-fun setNonEmpty!23649 () Bool)

(assert (=> setNonEmpty!23649 (= setRes!23649 (and tp!884205 (inv!43832 setElem!23649) e!1759341))))

(declare-fun setRest!23649 () (InoxSet Context!4738))

(assert (=> setNonEmpty!23649 (= (_2!19298 (h!37685 (zeroValue!4160 (v!33870 (underlying!8005 (v!33871 (underlying!8006 (cache!3950 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4738 Bool)) false) setElem!23649 true) setRest!23649))))

(assert (= b!2787534 b!2787535))

(assert (= (and b!2787534 condSetEmpty!23649) setIsEmpty!23649))

(assert (= (and b!2787534 (not condSetEmpty!23649)) setNonEmpty!23649))

(assert (= setNonEmpty!23649 b!2787536))

(assert (= (and b!2787278 ((_ is Cons!32265) (zeroValue!4160 (v!33870 (underlying!8005 (v!33871 (underlying!8006 (cache!3950 cacheUp!890)))))))) b!2787534))

(declare-fun m!3217955 () Bool)

(assert (=> b!2787534 m!3217955))

(declare-fun m!3217957 () Bool)

(assert (=> setNonEmpty!23649 m!3217957))

(declare-fun tp!884212 () Bool)

(declare-fun e!1759342 () Bool)

(declare-fun e!1759343 () Bool)

(declare-fun b!2787537 () Bool)

(declare-fun setRes!23650 () Bool)

(assert (=> b!2787537 (= e!1759342 (and (inv!43832 (_1!19297 (_1!19298 (h!37685 (minValue!4160 (v!33870 (underlying!8005 (v!33871 (underlying!8006 (cache!3950 cacheUp!890)))))))))) e!1759343 tp_is_empty!14115 setRes!23650 tp!884212))))

(declare-fun condSetEmpty!23650 () Bool)

(assert (=> b!2787537 (= condSetEmpty!23650 (= (_2!19298 (h!37685 (minValue!4160 (v!33870 (underlying!8005 (v!33871 (underlying!8006 (cache!3950 cacheUp!890)))))))) ((as const (Array Context!4738 Bool)) false)))))

(declare-fun b!2787538 () Bool)

(declare-fun tp!884211 () Bool)

(assert (=> b!2787538 (= e!1759343 tp!884211)))

(declare-fun b!2787539 () Bool)

(declare-fun e!1759344 () Bool)

(declare-fun tp!884210 () Bool)

(assert (=> b!2787539 (= e!1759344 tp!884210)))

(assert (=> b!2787278 (= tp!884076 e!1759342)))

(declare-fun setIsEmpty!23650 () Bool)

(assert (=> setIsEmpty!23650 setRes!23650))

(declare-fun setNonEmpty!23650 () Bool)

(declare-fun tp!884209 () Bool)

(declare-fun setElem!23650 () Context!4738)

(assert (=> setNonEmpty!23650 (= setRes!23650 (and tp!884209 (inv!43832 setElem!23650) e!1759344))))

(declare-fun setRest!23650 () (InoxSet Context!4738))

(assert (=> setNonEmpty!23650 (= (_2!19298 (h!37685 (minValue!4160 (v!33870 (underlying!8005 (v!33871 (underlying!8006 (cache!3950 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4738 Bool)) false) setElem!23650 true) setRest!23650))))

(assert (= b!2787537 b!2787538))

(assert (= (and b!2787537 condSetEmpty!23650) setIsEmpty!23650))

(assert (= (and b!2787537 (not condSetEmpty!23650)) setNonEmpty!23650))

(assert (= setNonEmpty!23650 b!2787539))

(assert (= (and b!2787278 ((_ is Cons!32265) (minValue!4160 (v!33870 (underlying!8005 (v!33871 (underlying!8006 (cache!3950 cacheUp!890)))))))) b!2787537))

(declare-fun m!3217959 () Bool)

(assert (=> b!2787537 m!3217959))

(declare-fun m!3217961 () Bool)

(assert (=> setNonEmpty!23650 m!3217961))

(declare-fun tp!884221 () Bool)

(declare-fun b!2787548 () Bool)

(declare-fun e!1759349 () Bool)

(declare-fun tp!884219 () Bool)

(assert (=> b!2787548 (= e!1759349 (and (inv!43833 (left!24488 (c!452625 totalInput!758))) tp!884219 (inv!43833 (right!24818 (c!452625 totalInput!758))) tp!884221))))

(declare-fun b!2787550 () Bool)

(declare-fun e!1759350 () Bool)

(declare-fun tp!884220 () Bool)

(assert (=> b!2787550 (= e!1759350 tp!884220)))

(declare-fun b!2787549 () Bool)

(declare-fun inv!43839 (IArray!20047) Bool)

(assert (=> b!2787549 (= e!1759349 (and (inv!43839 (xs!13132 (c!452625 totalInput!758))) e!1759350))))

(assert (=> b!2787287 (= tp!884071 (and (inv!43833 (c!452625 totalInput!758)) e!1759349))))

(assert (= (and b!2787287 ((_ is Node!10021) (c!452625 totalInput!758))) b!2787548))

(assert (= b!2787549 b!2787550))

(assert (= (and b!2787287 ((_ is Leaf!15265) (c!452625 totalInput!758))) b!2787549))

(declare-fun m!3217963 () Bool)

(assert (=> b!2787548 m!3217963))

(declare-fun m!3217965 () Bool)

(assert (=> b!2787548 m!3217965))

(declare-fun m!3217967 () Bool)

(assert (=> b!2787549 m!3217967))

(assert (=> b!2787287 m!3217613))

(declare-fun condSetEmpty!23653 () Bool)

(assert (=> setNonEmpty!23626 (= condSetEmpty!23653 (= setRest!23626 ((as const (Array Context!4738 Bool)) false)))))

(declare-fun setRes!23653 () Bool)

(assert (=> setNonEmpty!23626 (= tp!884080 setRes!23653)))

(declare-fun setIsEmpty!23653 () Bool)

(assert (=> setIsEmpty!23653 setRes!23653))

(declare-fun setNonEmpty!23653 () Bool)

(declare-fun tp!884226 () Bool)

(declare-fun setElem!23653 () Context!4738)

(declare-fun e!1759353 () Bool)

(assert (=> setNonEmpty!23653 (= setRes!23653 (and tp!884226 (inv!43832 setElem!23653) e!1759353))))

(declare-fun setRest!23653 () (InoxSet Context!4738))

(assert (=> setNonEmpty!23653 (= setRest!23626 ((_ map or) (store ((as const (Array Context!4738 Bool)) false) setElem!23653 true) setRest!23653))))

(declare-fun b!2787555 () Bool)

(declare-fun tp!884227 () Bool)

(assert (=> b!2787555 (= e!1759353 tp!884227)))

(assert (= (and setNonEmpty!23626 condSetEmpty!23653) setIsEmpty!23653))

(assert (= (and setNonEmpty!23626 (not condSetEmpty!23653)) setNonEmpty!23653))

(assert (= setNonEmpty!23653 b!2787555))

(declare-fun m!3217969 () Bool)

(assert (=> setNonEmpty!23653 m!3217969))

(check-sat (not bm!182507) (not b!2787390) (not b!2787446) (not setNonEmpty!23646) (not b!2787497) (not d!810838) (not b!2787368) (not b!2787343) (not b!2787367) (not d!810878) (not b!2787535) (not b!2787394) (not b!2787310) (not b!2787324) (not b!2787525) (not d!810866) (not b!2787381) (not b!2787378) (not b!2787470) (not b!2787548) (not setNonEmpty!23630) (not d!810872) (not setNonEmpty!23640) (not b!2787363) (not b!2787537) (not bm!182508) (not b!2787336) (not b!2787538) (not b!2787398) (not setNonEmpty!23648) (not d!810870) (not b!2787498) (not b!2787500) (not b_next!79543) (not b_next!79541) (not d!810812) (not setNonEmpty!23631) (not b!2787480) (not d!810852) (not setNonEmpty!23650) (not b!2787433) (not b!2787482) (not d!810820) (not b!2787323) (not b!2787468) (not b!2787549) tp_is_empty!14115 (not b!2787530) (not b!2787352) (not d!810816) (not d!810894) (not b!2787437) (not b!2787373) (not b!2787372) (not b!2787503) b_and!203575 (not b_next!79545) (not b!2787529) (not b!2787331) (not b!2787510) (not b!2787467) (not setNonEmpty!23639) (not b!2787406) (not b!2787460) (not b!2787313) (not setNonEmpty!23641) (not d!810858) (not b!2787555) (not d!810898) (not b!2787410) (not setNonEmpty!23653) (not b!2787462) (not bm!182511) (not d!810834) (not b!2787371) (not d!810854) (not setNonEmpty!23629) (not d!810880) (not b!2787539) (not d!810826) (not b!2787536) (not b!2787531) (not b!2787505) (not d!810832) (not b!2787502) (not d!810892) (not d!810822) (not b!2787407) (not b!2787379) (not b!2787353) (not b!2787383) (not b!2787444) (not d!810818) (not d!810850) (not d!810876) (not b!2787481) (not b!2787499) (not b!2787369) (not d!810884) (not d!810868) (not b!2787385) (not b!2787469) (not b!2787389) (not b!2787550) (not b!2787504) (not b!2787345) (not b!2787364) b_and!203579 (not b!2787533) (not setNonEmpty!23634) (not b!2787405) (not b!2787382) (not d!810842) (not d!810808) (not setNonEmpty!23647) (not b!2787528) (not b!2787330) (not b!2787527) (not b!2787386) (not b!2787526) (not b!2787457) (not b!2787534) (not d!810860) (not b!2787287) (not d!810830) (not setNonEmpty!23649) b_and!203581 (not b!2787393) (not b!2787532) (not b!2787479) (not b!2787459) (not d!810836) (not d!810824) (not b_next!79547) (not b!2787461) (not mapNonEmpty!17787) (not b!2787346) (not b!2787448) (not b!2787458) b_and!203577 (not b!2787365) (not mapNonEmpty!17790) (not d!810844) (not b!2787501))
(check-sat (not b_next!79543) (not b_next!79541) b_and!203579 b_and!203581 (not b_next!79547) b_and!203577 b_and!203575 (not b_next!79545))
