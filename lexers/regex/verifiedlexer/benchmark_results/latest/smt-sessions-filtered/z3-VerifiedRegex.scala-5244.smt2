; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269442 () Bool)

(assert start!269442)

(declare-fun b!2787722 () Bool)

(declare-fun b_free!78853 () Bool)

(declare-fun b_next!79557 () Bool)

(assert (=> b!2787722 (= b_free!78853 (not b_next!79557))))

(declare-fun tp!884339 () Bool)

(declare-fun b_and!203591 () Bool)

(assert (=> b!2787722 (= tp!884339 b_and!203591)))

(declare-fun b!2787732 () Bool)

(declare-fun b_free!78855 () Bool)

(declare-fun b_next!79559 () Bool)

(assert (=> b!2787732 (= b_free!78855 (not b_next!79559))))

(declare-fun tp!884341 () Bool)

(declare-fun b_and!203593 () Bool)

(assert (=> b!2787732 (= tp!884341 b_and!203593)))

(declare-fun b!2787740 () Bool)

(declare-fun b_free!78857 () Bool)

(declare-fun b_next!79561 () Bool)

(assert (=> b!2787740 (= b_free!78857 (not b_next!79561))))

(declare-fun tp!884329 () Bool)

(declare-fun b_and!203595 () Bool)

(assert (=> b!2787740 (= tp!884329 b_and!203595)))

(declare-fun b!2787730 () Bool)

(declare-fun b_free!78859 () Bool)

(declare-fun b_next!79563 () Bool)

(assert (=> b!2787730 (= b_free!78859 (not b_next!79563))))

(declare-fun tp!884338 () Bool)

(declare-fun b_and!203597 () Bool)

(assert (=> b!2787730 (= tp!884338 b_and!203597)))

(declare-fun mapIsEmpty!17801 () Bool)

(declare-fun mapRes!17801 () Bool)

(assert (=> mapIsEmpty!17801 mapRes!17801))

(declare-fun b!2787721 () Bool)

(declare-fun e!1759515 () Bool)

(declare-fun e!1759519 () Bool)

(assert (=> b!2787721 (= e!1759515 e!1759519)))

(declare-fun res!1163251 () Bool)

(assert (=> b!2787721 (=> (not res!1163251) (not e!1759519))))

(declare-fun testedPSize!143 () Int)

(declare-fun lt!996128 () Int)

(assert (=> b!2787721 (= res!1163251 (= testedPSize!143 lt!996128))))

(declare-datatypes ((C!16464 0))(
  ( (C!16465 (val!10166 Int)) )
))
(declare-datatypes ((List!32370 0))(
  ( (Nil!32270) (Cons!32270 (h!37690 C!16464) (t!228512 List!32370)) )
))
(declare-fun testedP!183 () List!32370)

(declare-fun size!25095 (List!32370) Int)

(assert (=> b!2787721 (= lt!996128 (size!25095 testedP!183))))

(declare-fun e!1759523 () Bool)

(declare-fun e!1759510 () Bool)

(assert (=> b!2787722 (= e!1759523 (and e!1759510 tp!884339))))

(declare-fun mapNonEmpty!17801 () Bool)

(declare-fun mapRes!17802 () Bool)

(declare-fun tp!884340 () Bool)

(declare-fun tp!884335 () Bool)

(assert (=> mapNonEmpty!17801 (= mapRes!17802 (and tp!884340 tp!884335))))

(declare-datatypes ((Hashable!3819 0))(
  ( (HashableExt!3818 (__x!21359 Int)) )
))
(declare-datatypes ((Regex!8153 0))(
  ( (ElementMatch!8153 (c!452678 C!16464)) (Concat!13241 (regOne!16818 Regex!8153) (regTwo!16818 Regex!8153)) (EmptyExpr!8153) (Star!8153 (reg!8482 Regex!8153)) (EmptyLang!8153) (Union!8153 (regOne!16819 Regex!8153) (regTwo!16819 Regex!8153)) )
))
(declare-datatypes ((List!32371 0))(
  ( (Nil!32271) (Cons!32271 (h!37691 Regex!8153) (t!228513 List!32371)) )
))
(declare-datatypes ((Context!4742 0))(
  ( (Context!4743 (exprs!2871 List!32371)) )
))
(declare-datatypes ((tuple2!32650 0))(
  ( (tuple2!32651 (_1!19305 Context!4742) (_2!19305 C!16464)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32652 0))(
  ( (tuple2!32653 (_1!19306 tuple2!32650) (_2!19306 (InoxSet Context!4742))) )
))
(declare-datatypes ((List!32372 0))(
  ( (Nil!32272) (Cons!32272 (h!37692 tuple2!32652) (t!228514 List!32372)) )
))
(declare-datatypes ((array!13887 0))(
  ( (array!13888 (arr!6189 (Array (_ BitVec 32) List!32372)) (size!25096 (_ BitVec 32))) )
))
(declare-datatypes ((array!13889 0))(
  ( (array!13890 (arr!6190 (Array (_ BitVec 32) (_ BitVec 64))) (size!25097 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7806 0))(
  ( (LongMapFixedSize!7807 (defaultEntry!4288 Int) (mask!9716 (_ BitVec 32)) (extraKeys!4152 (_ BitVec 32)) (zeroValue!4162 List!32372) (minValue!4162 List!32372) (_size!7849 (_ BitVec 32)) (_keys!4203 array!13889) (_values!4184 array!13887) (_vacant!3964 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15421 0))(
  ( (Cell!15422 (v!33875 LongMapFixedSize!7806)) )
))
(declare-datatypes ((MutLongMap!3903 0))(
  ( (LongMap!3903 (underlying!8009 Cell!15421)) (MutLongMapExt!3902 (__x!21360 Int)) )
))
(declare-datatypes ((Cell!15423 0))(
  ( (Cell!15424 (v!33876 MutLongMap!3903)) )
))
(declare-datatypes ((MutableMap!3809 0))(
  ( (MutableMapExt!3808 (__x!21361 Int)) (HashMap!3809 (underlying!8010 Cell!15423) (hashF!5851 Hashable!3819) (_size!7850 (_ BitVec 32)) (defaultValue!3980 Int)) )
))
(declare-datatypes ((CacheUp!2516 0))(
  ( (CacheUp!2517 (cache!3952 MutableMap!3809)) )
))
(declare-fun cacheUp!890 () CacheUp!2516)

(declare-fun mapKey!17802 () (_ BitVec 32))

(declare-fun mapValue!17801 () List!32372)

(declare-fun mapRest!17801 () (Array (_ BitVec 32) List!32372))

(assert (=> mapNonEmpty!17801 (= (arr!6189 (_values!4184 (v!33875 (underlying!8009 (v!33876 (underlying!8010 (cache!3952 cacheUp!890))))))) (store mapRest!17801 mapKey!17802 mapValue!17801))))

(declare-fun b!2787723 () Bool)

(declare-fun e!1759504 () Bool)

(declare-fun e!1759506 () Bool)

(declare-fun lt!996137 () MutLongMap!3903)

(get-info :version)

(assert (=> b!2787723 (= e!1759504 (and e!1759506 ((_ is LongMap!3903) lt!996137)))))

(assert (=> b!2787723 (= lt!996137 (v!33876 (underlying!8010 (cache!3952 cacheUp!890))))))

(declare-fun b!2787724 () Bool)

(declare-fun e!1759505 () Bool)

(declare-fun tp!884334 () Bool)

(assert (=> b!2787724 (= e!1759505 tp!884334)))

(declare-fun b!2787725 () Bool)

(declare-fun e!1759513 () Bool)

(declare-fun tp_is_empty!14119 () Bool)

(declare-fun tp!884336 () Bool)

(assert (=> b!2787725 (= e!1759513 (and tp_is_empty!14119 tp!884336))))

(declare-fun b!2787726 () Bool)

(declare-fun e!1759530 () Bool)

(declare-datatypes ((tuple3!5020 0))(
  ( (tuple3!5021 (_1!19307 Regex!8153) (_2!19307 Context!4742) (_3!2980 C!16464)) )
))
(declare-datatypes ((tuple2!32654 0))(
  ( (tuple2!32655 (_1!19308 tuple3!5020) (_2!19308 (InoxSet Context!4742))) )
))
(declare-datatypes ((List!32373 0))(
  ( (Nil!32273) (Cons!32273 (h!37693 tuple2!32654) (t!228515 List!32373)) )
))
(declare-datatypes ((array!13891 0))(
  ( (array!13892 (arr!6191 (Array (_ BitVec 32) List!32373)) (size!25098 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7808 0))(
  ( (LongMapFixedSize!7809 (defaultEntry!4289 Int) (mask!9717 (_ BitVec 32)) (extraKeys!4153 (_ BitVec 32)) (zeroValue!4163 List!32373) (minValue!4163 List!32373) (_size!7851 (_ BitVec 32)) (_keys!4204 array!13889) (_values!4185 array!13891) (_vacant!3965 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15425 0))(
  ( (Cell!15426 (v!33877 LongMapFixedSize!7808)) )
))
(declare-datatypes ((MutLongMap!3904 0))(
  ( (LongMap!3904 (underlying!8011 Cell!15425)) (MutLongMapExt!3903 (__x!21362 Int)) )
))
(declare-fun lt!996122 () MutLongMap!3904)

(assert (=> b!2787726 (= e!1759510 (and e!1759530 ((_ is LongMap!3904) lt!996122)))))

(declare-datatypes ((Cell!15427 0))(
  ( (Cell!15428 (v!33878 MutLongMap!3904)) )
))
(declare-datatypes ((Hashable!3820 0))(
  ( (HashableExt!3819 (__x!21363 Int)) )
))
(declare-datatypes ((MutableMap!3810 0))(
  ( (MutableMapExt!3809 (__x!21364 Int)) (HashMap!3810 (underlying!8012 Cell!15427) (hashF!5852 Hashable!3820) (_size!7852 (_ BitVec 32)) (defaultValue!3981 Int)) )
))
(declare-datatypes ((CacheDown!2634 0))(
  ( (CacheDown!2635 (cache!3953 MutableMap!3810)) )
))
(declare-fun cacheDown!1009 () CacheDown!2634)

(assert (=> b!2787726 (= lt!996122 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009))))))

(declare-fun b!2787727 () Bool)

(declare-fun res!1163246 () Bool)

(declare-fun e!1759509 () Bool)

(assert (=> b!2787727 (=> (not res!1163246) (not e!1759509))))

(declare-fun valid!3050 (CacheUp!2516) Bool)

(assert (=> b!2787727 (= res!1163246 (valid!3050 cacheUp!890))))

(declare-fun b!2787728 () Bool)

(declare-fun e!1759527 () Bool)

(declare-fun tp!884331 () Bool)

(assert (=> b!2787728 (= e!1759527 (and tp!884331 mapRes!17801))))

(declare-fun condMapEmpty!17802 () Bool)

(declare-fun mapDefault!17802 () List!32373)

(assert (=> b!2787728 (= condMapEmpty!17802 (= (arr!6191 (_values!4185 (v!33877 (underlying!8011 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32373)) mapDefault!17802)))))

(declare-fun b!2787729 () Bool)

(declare-fun e!1759520 () Bool)

(assert (=> b!2787729 (= e!1759509 (not e!1759520))))

(declare-fun res!1163257 () Bool)

(assert (=> b!2787729 (=> res!1163257 e!1759520)))

(declare-fun lt!996143 () List!32370)

(declare-fun isPrefix!2590 (List!32370 List!32370) Bool)

(assert (=> b!2787729 (= res!1163257 (not (isPrefix!2590 testedP!183 lt!996143)))))

(declare-fun lt!996123 () List!32370)

(assert (=> b!2787729 (isPrefix!2590 testedP!183 lt!996123)))

(declare-datatypes ((Unit!46490 0))(
  ( (Unit!46491) )
))
(declare-fun lt!996127 () Unit!46490)

(declare-fun testedSuffix!143 () List!32370)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1700 (List!32370 List!32370) Unit!46490)

(assert (=> b!2787729 (= lt!996127 (lemmaConcatTwoListThenFirstIsPrefix!1700 testedP!183 testedSuffix!143))))

(declare-fun e!1759533 () Bool)

(declare-fun tp!884332 () Bool)

(declare-fun tp!884323 () Bool)

(declare-fun array_inv!4431 (array!13889) Bool)

(declare-fun array_inv!4432 (array!13891) Bool)

(assert (=> b!2787730 (= e!1759533 (and tp!884338 tp!884323 tp!884332 (array_inv!4431 (_keys!4204 (v!33877 (underlying!8011 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009))))))) (array_inv!4432 (_values!4185 (v!33877 (underlying!8011 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009))))))) e!1759527))))

(declare-fun mapNonEmpty!17802 () Bool)

(declare-fun tp!884337 () Bool)

(declare-fun tp!884327 () Bool)

(assert (=> mapNonEmpty!17802 (= mapRes!17801 (and tp!884337 tp!884327))))

(declare-fun mapKey!17801 () (_ BitVec 32))

(declare-fun mapValue!17802 () List!32373)

(declare-fun mapRest!17802 () (Array (_ BitVec 32) List!32373))

(assert (=> mapNonEmpty!17802 (= (arr!6191 (_values!4185 (v!33877 (underlying!8011 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009))))))) (store mapRest!17802 mapKey!17801 mapValue!17802))))

(declare-fun b!2787731 () Bool)

(declare-fun e!1759531 () Bool)

(declare-fun tp!884324 () Bool)

(assert (=> b!2787731 (= e!1759531 (and tp!884324 mapRes!17802))))

(declare-fun condMapEmpty!17801 () Bool)

(declare-fun mapDefault!17801 () List!32372)

(assert (=> b!2787731 (= condMapEmpty!17801 (= (arr!6189 (_values!4184 (v!33875 (underlying!8009 (v!33876 (underlying!8010 (cache!3952 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32372)) mapDefault!17801)))))

(declare-fun tp!884325 () Bool)

(declare-fun e!1759516 () Bool)

(declare-fun tp!884330 () Bool)

(declare-fun array_inv!4433 (array!13887) Bool)

(assert (=> b!2787732 (= e!1759516 (and tp!884341 tp!884330 tp!884325 (array_inv!4431 (_keys!4203 (v!33875 (underlying!8009 (v!33876 (underlying!8010 (cache!3952 cacheUp!890))))))) (array_inv!4433 (_values!4184 (v!33875 (underlying!8009 (v!33876 (underlying!8010 (cache!3952 cacheUp!890))))))) e!1759531))))

(declare-fun setNonEmpty!23659 () Bool)

(declare-fun setElem!23659 () Context!4742)

(declare-fun tp!884326 () Bool)

(declare-fun setRes!23659 () Bool)

(declare-fun inv!43843 (Context!4742) Bool)

(assert (=> setNonEmpty!23659 (= setRes!23659 (and tp!884326 (inv!43843 setElem!23659) e!1759505))))

(declare-fun z!3684 () (InoxSet Context!4742))

(declare-fun setRest!23659 () (InoxSet Context!4742))

(assert (=> setNonEmpty!23659 (= z!3684 ((_ map or) (store ((as const (Array Context!4742 Bool)) false) setElem!23659 true) setRest!23659))))

(declare-fun b!2787733 () Bool)

(declare-fun e!1759511 () Bool)

(declare-fun e!1759528 () Bool)

(assert (=> b!2787733 (= e!1759511 e!1759528)))

(declare-fun res!1163253 () Bool)

(assert (=> b!2787733 (=> res!1163253 e!1759528)))

(declare-fun lt!996140 () Int)

(assert (=> b!2787733 (= res!1163253 (>= lt!996128 lt!996140))))

(declare-fun lt!996131 () Unit!46490)

(declare-fun e!1759512 () Unit!46490)

(assert (=> b!2787733 (= lt!996131 e!1759512)))

(declare-fun c!452677 () Bool)

(assert (=> b!2787733 (= c!452677 (= lt!996128 lt!996140))))

(assert (=> b!2787733 (<= lt!996128 (size!25095 lt!996143))))

(declare-fun lt!996136 () Unit!46490)

(declare-fun lemmaIsPrefixThenSmallerEqSize!277 (List!32370 List!32370) Unit!46490)

(assert (=> b!2787733 (= lt!996136 (lemmaIsPrefixThenSmallerEqSize!277 testedP!183 lt!996143))))

(declare-fun b!2787734 () Bool)

(declare-fun e!1759521 () Bool)

(declare-fun e!1759508 () Bool)

(assert (=> b!2787734 (= e!1759521 e!1759508)))

(declare-fun res!1163255 () Bool)

(assert (=> b!2787734 (=> res!1163255 e!1759508)))

(declare-fun lt!996125 () List!32370)

(declare-fun lt!996124 () List!32370)

(declare-fun ++!7970 (List!32370 List!32370) List!32370)

(assert (=> b!2787734 (= res!1163255 (not (= (++!7970 lt!996125 lt!996124) lt!996143)))))

(declare-datatypes ((IArray!20049 0))(
  ( (IArray!20050 (innerList!10082 List!32370)) )
))
(declare-datatypes ((Conc!10022 0))(
  ( (Node!10022 (left!24490 Conc!10022) (right!24820 Conc!10022) (csize!20274 Int) (cheight!10233 Int)) (Leaf!15267 (xs!13133 IArray!20049) (csize!20275 Int)) (Empty!10022) )
))
(declare-datatypes ((BalanceConc!19658 0))(
  ( (BalanceConc!19659 (c!452679 Conc!10022)) )
))
(declare-datatypes ((tuple2!32656 0))(
  ( (tuple2!32657 (_1!19309 BalanceConc!19658) (_2!19309 BalanceConc!19658)) )
))
(declare-fun lt!996144 () tuple2!32656)

(declare-fun list!12147 (BalanceConc!19658) List!32370)

(assert (=> b!2787734 (= lt!996124 (list!12147 (_2!19309 lt!996144)))))

(assert (=> b!2787734 (= lt!996125 (list!12147 (_1!19309 lt!996144)))))

(declare-fun totalInput!758 () BalanceConc!19658)

(declare-fun splitAt!150 (BalanceConc!19658 Int) tuple2!32656)

(assert (=> b!2787734 (= lt!996144 (splitAt!150 totalInput!758 testedPSize!143))))

(declare-fun b!2787735 () Bool)

(declare-fun Unit!46492 () Unit!46490)

(assert (=> b!2787735 (= e!1759512 Unit!46492)))

(declare-fun b!2787736 () Bool)

(declare-fun e!1759524 () Bool)

(declare-fun tp!884328 () Bool)

(declare-fun inv!43844 (Conc!10022) Bool)

(assert (=> b!2787736 (= e!1759524 (and (inv!43844 (c!452679 totalInput!758)) tp!884328))))

(declare-fun b!2787737 () Bool)

(declare-fun e!1759518 () Bool)

(assert (=> b!2787737 (= e!1759518 (not (= testedSuffix!143 Nil!32270)))))

(declare-fun lt!996142 () C!16464)

(declare-datatypes ((tuple3!5022 0))(
  ( (tuple3!5023 (_1!19310 (InoxSet Context!4742)) (_2!19310 CacheUp!2516) (_3!2981 CacheDown!2634)) )
))
(declare-fun lt!996130 () tuple3!5022)

(declare-fun derivationStepZipperMem!101 ((InoxSet Context!4742) C!16464 CacheUp!2516 CacheDown!2634) tuple3!5022)

(assert (=> b!2787737 (= lt!996130 (derivationStepZipperMem!101 z!3684 lt!996142 cacheUp!890 cacheDown!1009))))

(declare-fun b!2787738 () Bool)

(declare-fun res!1163252 () Bool)

(assert (=> b!2787738 (=> res!1163252 e!1759521)))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2787738 (= res!1163252 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2787739 () Bool)

(assert (=> b!2787739 (= e!1759520 e!1759521)))

(declare-fun res!1163245 () Bool)

(assert (=> b!2787739 (=> res!1163245 e!1759521)))

(declare-fun lostCauseZipper!469 ((InoxSet Context!4742)) Bool)

(assert (=> b!2787739 (= res!1163245 (lostCauseZipper!469 z!3684))))

(declare-fun lt!996139 () List!32370)

(assert (=> b!2787739 (and (= testedSuffix!143 lt!996139) (= lt!996139 testedSuffix!143))))

(declare-fun lt!996138 () Unit!46490)

(declare-fun lemmaSamePrefixThenSameSuffix!1170 (List!32370 List!32370 List!32370 List!32370 List!32370) Unit!46490)

(assert (=> b!2787739 (= lt!996138 (lemmaSamePrefixThenSameSuffix!1170 testedP!183 testedSuffix!143 testedP!183 lt!996139 lt!996143))))

(declare-fun getSuffix!1269 (List!32370 List!32370) List!32370)

(assert (=> b!2787739 (= lt!996139 (getSuffix!1269 lt!996143 testedP!183))))

(declare-fun e!1759522 () Bool)

(assert (=> b!2787740 (= e!1759522 (and e!1759504 tp!884329))))

(declare-fun b!2787741 () Bool)

(declare-fun e!1759517 () Bool)

(assert (=> b!2787741 (= e!1759506 e!1759517)))

(declare-fun b!2787742 () Bool)

(assert (=> b!2787742 (= e!1759519 e!1759509)))

(declare-fun res!1163248 () Bool)

(assert (=> b!2787742 (=> (not res!1163248) (not e!1759509))))

(assert (=> b!2787742 (= res!1163248 (= totalInputSize!205 lt!996140))))

(declare-fun size!25099 (BalanceConc!19658) Int)

(assert (=> b!2787742 (= lt!996140 (size!25099 totalInput!758))))

(declare-fun setIsEmpty!23659 () Bool)

(assert (=> setIsEmpty!23659 setRes!23659))

(declare-fun b!2787743 () Bool)

(declare-fun e!1759507 () Bool)

(assert (=> b!2787743 (= e!1759507 e!1759522)))

(declare-fun b!2787744 () Bool)

(declare-fun res!1163249 () Bool)

(assert (=> b!2787744 (=> res!1163249 e!1759508)))

(assert (=> b!2787744 (= res!1163249 (not (= (size!25099 (_1!19309 lt!996144)) testedPSize!143)))))

(declare-fun b!2787745 () Bool)

(assert (=> b!2787745 (= e!1759528 e!1759518)))

(declare-fun res!1163250 () Bool)

(assert (=> b!2787745 (=> res!1163250 e!1759518)))

(declare-fun nullableZipper!643 ((InoxSet Context!4742)) Bool)

(assert (=> b!2787745 (= res!1163250 (not (nullableZipper!643 z!3684)))))

(declare-fun lt!996126 () List!32370)

(assert (=> b!2787745 (= (++!7970 (++!7970 testedP!183 (Cons!32270 lt!996142 Nil!32270)) lt!996126) lt!996143)))

(declare-fun lt!996141 () Unit!46490)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!879 (List!32370 C!16464 List!32370 List!32370) Unit!46490)

(assert (=> b!2787745 (= lt!996141 (lemmaMoveElementToOtherListKeepsConcatEq!879 testedP!183 lt!996142 lt!996126 lt!996143))))

(declare-fun tail!4405 (List!32370) List!32370)

(assert (=> b!2787745 (= lt!996126 (tail!4405 testedSuffix!143))))

(declare-fun head!6173 (List!32370) C!16464)

(assert (=> b!2787745 (isPrefix!2590 (++!7970 testedP!183 (Cons!32270 (head!6173 lt!996139) Nil!32270)) lt!996143)))

(declare-fun lt!996132 () Unit!46490)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!470 (List!32370 List!32370) Unit!46490)

(assert (=> b!2787745 (= lt!996132 (lemmaAddHeadSuffixToPrefixStillPrefix!470 testedP!183 lt!996143))))

(declare-fun b!2787746 () Bool)

(declare-fun Unit!46493 () Unit!46490)

(assert (=> b!2787746 (= e!1759512 Unit!46493)))

(declare-fun lt!996135 () Unit!46490)

(declare-fun lemmaIsPrefixRefl!1694 (List!32370 List!32370) Unit!46490)

(assert (=> b!2787746 (= lt!996135 (lemmaIsPrefixRefl!1694 lt!996143 lt!996143))))

(assert (=> b!2787746 (isPrefix!2590 lt!996143 lt!996143)))

(declare-fun lt!996129 () Unit!46490)

(declare-fun lemmaIsPrefixSameLengthThenSameList!474 (List!32370 List!32370 List!32370) Unit!46490)

(assert (=> b!2787746 (= lt!996129 (lemmaIsPrefixSameLengthThenSameList!474 lt!996143 testedP!183 lt!996143))))

(assert (=> b!2787746 false))

(declare-fun b!2787747 () Bool)

(assert (=> b!2787747 (= e!1759517 e!1759516)))

(declare-fun b!2787748 () Bool)

(declare-fun e!1759525 () Bool)

(assert (=> b!2787748 (= e!1759525 e!1759533)))

(declare-fun b!2787749 () Bool)

(declare-fun e!1759514 () Bool)

(declare-fun tp!884333 () Bool)

(assert (=> b!2787749 (= e!1759514 (and tp_is_empty!14119 tp!884333))))

(declare-fun b!2787750 () Bool)

(declare-fun res!1163256 () Bool)

(assert (=> b!2787750 (=> (not res!1163256) (not e!1759509))))

(declare-fun valid!3051 (CacheDown!2634) Bool)

(assert (=> b!2787750 (= res!1163256 (valid!3051 cacheDown!1009))))

(declare-fun res!1163254 () Bool)

(assert (=> start!269442 (=> (not res!1163254) (not e!1759515))))

(assert (=> start!269442 (= res!1163254 (= lt!996123 lt!996143))))

(assert (=> start!269442 (= lt!996143 (list!12147 totalInput!758))))

(assert (=> start!269442 (= lt!996123 (++!7970 testedP!183 testedSuffix!143))))

(assert (=> start!269442 e!1759515))

(declare-fun inv!43845 (BalanceConc!19658) Bool)

(assert (=> start!269442 (and (inv!43845 totalInput!758) e!1759524)))

(declare-fun condSetEmpty!23659 () Bool)

(assert (=> start!269442 (= condSetEmpty!23659 (= z!3684 ((as const (Array Context!4742 Bool)) false)))))

(assert (=> start!269442 setRes!23659))

(assert (=> start!269442 true))

(assert (=> start!269442 e!1759514))

(assert (=> start!269442 e!1759513))

(declare-fun e!1759529 () Bool)

(declare-fun inv!43846 (CacheDown!2634) Bool)

(assert (=> start!269442 (and (inv!43846 cacheDown!1009) e!1759529)))

(declare-fun inv!43847 (CacheUp!2516) Bool)

(assert (=> start!269442 (and (inv!43847 cacheUp!890) e!1759507)))

(declare-fun b!2787751 () Bool)

(assert (=> b!2787751 (= e!1759530 e!1759525)))

(declare-fun mapIsEmpty!17802 () Bool)

(assert (=> mapIsEmpty!17802 mapRes!17802))

(declare-fun b!2787752 () Bool)

(assert (=> b!2787752 (= e!1759508 e!1759511)))

(declare-fun res!1163247 () Bool)

(assert (=> b!2787752 (=> res!1163247 e!1759511)))

(assert (=> b!2787752 (= res!1163247 (not (= lt!996142 (head!6173 testedSuffix!143))))))

(declare-fun apply!7552 (BalanceConc!19658 Int) C!16464)

(assert (=> b!2787752 (= lt!996142 (apply!7552 totalInput!758 testedPSize!143))))

(declare-fun drop!1727 (List!32370 Int) List!32370)

(declare-fun apply!7553 (List!32370 Int) C!16464)

(assert (=> b!2787752 (= (head!6173 (drop!1727 lt!996143 testedPSize!143)) (apply!7553 lt!996143 testedPSize!143))))

(declare-fun lt!996133 () Unit!46490)

(declare-fun lemmaDropApply!933 (List!32370 Int) Unit!46490)

(assert (=> b!2787752 (= lt!996133 (lemmaDropApply!933 lt!996143 testedPSize!143))))

(assert (=> b!2787752 (not (or (not (= lt!996125 testedP!183)) (not (= lt!996124 testedSuffix!143))))))

(declare-fun lt!996134 () Unit!46490)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!360 (List!32370 List!32370 List!32370 List!32370) Unit!46490)

(assert (=> b!2787752 (= lt!996134 (lemmaConcatSameAndSameSizesThenSameLists!360 lt!996125 lt!996124 testedP!183 testedSuffix!143))))

(declare-fun b!2787753 () Bool)

(assert (=> b!2787753 (= e!1759529 e!1759523)))

(assert (= (and start!269442 res!1163254) b!2787721))

(assert (= (and b!2787721 res!1163251) b!2787742))

(assert (= (and b!2787742 res!1163248) b!2787727))

(assert (= (and b!2787727 res!1163246) b!2787750))

(assert (= (and b!2787750 res!1163256) b!2787729))

(assert (= (and b!2787729 (not res!1163257)) b!2787739))

(assert (= (and b!2787739 (not res!1163245)) b!2787738))

(assert (= (and b!2787738 (not res!1163252)) b!2787734))

(assert (= (and b!2787734 (not res!1163255)) b!2787744))

(assert (= (and b!2787744 (not res!1163249)) b!2787752))

(assert (= (and b!2787752 (not res!1163247)) b!2787733))

(assert (= (and b!2787733 c!452677) b!2787746))

(assert (= (and b!2787733 (not c!452677)) b!2787735))

(assert (= (and b!2787733 (not res!1163253)) b!2787745))

(assert (= (and b!2787745 (not res!1163250)) b!2787737))

(assert (= start!269442 b!2787736))

(assert (= (and start!269442 condSetEmpty!23659) setIsEmpty!23659))

(assert (= (and start!269442 (not condSetEmpty!23659)) setNonEmpty!23659))

(assert (= setNonEmpty!23659 b!2787724))

(assert (= (and start!269442 ((_ is Cons!32270) testedP!183)) b!2787749))

(assert (= (and start!269442 ((_ is Cons!32270) testedSuffix!143)) b!2787725))

(assert (= (and b!2787728 condMapEmpty!17802) mapIsEmpty!17801))

(assert (= (and b!2787728 (not condMapEmpty!17802)) mapNonEmpty!17802))

(assert (= b!2787730 b!2787728))

(assert (= b!2787748 b!2787730))

(assert (= b!2787751 b!2787748))

(assert (= (and b!2787726 ((_ is LongMap!3904) (v!33878 (underlying!8012 (cache!3953 cacheDown!1009))))) b!2787751))

(assert (= b!2787722 b!2787726))

(assert (= (and b!2787753 ((_ is HashMap!3810) (cache!3953 cacheDown!1009))) b!2787722))

(assert (= start!269442 b!2787753))

(assert (= (and b!2787731 condMapEmpty!17801) mapIsEmpty!17802))

(assert (= (and b!2787731 (not condMapEmpty!17801)) mapNonEmpty!17801))

(assert (= b!2787732 b!2787731))

(assert (= b!2787747 b!2787732))

(assert (= b!2787741 b!2787747))

(assert (= (and b!2787723 ((_ is LongMap!3903) (v!33876 (underlying!8010 (cache!3952 cacheUp!890))))) b!2787741))

(assert (= b!2787740 b!2787723))

(assert (= (and b!2787743 ((_ is HashMap!3809) (cache!3952 cacheUp!890))) b!2787740))

(assert (= start!269442 b!2787743))

(declare-fun m!3218071 () Bool)

(assert (=> b!2787739 m!3218071))

(declare-fun m!3218073 () Bool)

(assert (=> b!2787739 m!3218073))

(declare-fun m!3218075 () Bool)

(assert (=> b!2787739 m!3218075))

(declare-fun m!3218077 () Bool)

(assert (=> b!2787732 m!3218077))

(declare-fun m!3218079 () Bool)

(assert (=> b!2787732 m!3218079))

(declare-fun m!3218081 () Bool)

(assert (=> mapNonEmpty!17802 m!3218081))

(declare-fun m!3218083 () Bool)

(assert (=> b!2787730 m!3218083))

(declare-fun m!3218085 () Bool)

(assert (=> b!2787730 m!3218085))

(declare-fun m!3218087 () Bool)

(assert (=> b!2787745 m!3218087))

(declare-fun m!3218089 () Bool)

(assert (=> b!2787745 m!3218089))

(declare-fun m!3218091 () Bool)

(assert (=> b!2787745 m!3218091))

(declare-fun m!3218093 () Bool)

(assert (=> b!2787745 m!3218093))

(declare-fun m!3218095 () Bool)

(assert (=> b!2787745 m!3218095))

(declare-fun m!3218097 () Bool)

(assert (=> b!2787745 m!3218097))

(declare-fun m!3218099 () Bool)

(assert (=> b!2787745 m!3218099))

(assert (=> b!2787745 m!3218099))

(declare-fun m!3218101 () Bool)

(assert (=> b!2787745 m!3218101))

(assert (=> b!2787745 m!3218095))

(declare-fun m!3218103 () Bool)

(assert (=> b!2787745 m!3218103))

(declare-fun m!3218105 () Bool)

(assert (=> b!2787721 m!3218105))

(declare-fun m!3218107 () Bool)

(assert (=> b!2787746 m!3218107))

(declare-fun m!3218109 () Bool)

(assert (=> b!2787746 m!3218109))

(declare-fun m!3218111 () Bool)

(assert (=> b!2787746 m!3218111))

(declare-fun m!3218113 () Bool)

(assert (=> b!2787752 m!3218113))

(declare-fun m!3218115 () Bool)

(assert (=> b!2787752 m!3218115))

(declare-fun m!3218117 () Bool)

(assert (=> b!2787752 m!3218117))

(declare-fun m!3218119 () Bool)

(assert (=> b!2787752 m!3218119))

(declare-fun m!3218121 () Bool)

(assert (=> b!2787752 m!3218121))

(declare-fun m!3218123 () Bool)

(assert (=> b!2787752 m!3218123))

(assert (=> b!2787752 m!3218117))

(declare-fun m!3218125 () Bool)

(assert (=> b!2787752 m!3218125))

(declare-fun m!3218127 () Bool)

(assert (=> b!2787727 m!3218127))

(declare-fun m!3218129 () Bool)

(assert (=> b!2787750 m!3218129))

(declare-fun m!3218131 () Bool)

(assert (=> b!2787736 m!3218131))

(declare-fun m!3218133 () Bool)

(assert (=> b!2787729 m!3218133))

(declare-fun m!3218135 () Bool)

(assert (=> b!2787729 m!3218135))

(declare-fun m!3218137 () Bool)

(assert (=> b!2787729 m!3218137))

(declare-fun m!3218139 () Bool)

(assert (=> start!269442 m!3218139))

(declare-fun m!3218141 () Bool)

(assert (=> start!269442 m!3218141))

(declare-fun m!3218143 () Bool)

(assert (=> start!269442 m!3218143))

(declare-fun m!3218145 () Bool)

(assert (=> start!269442 m!3218145))

(declare-fun m!3218147 () Bool)

(assert (=> start!269442 m!3218147))

(declare-fun m!3218149 () Bool)

(assert (=> b!2787742 m!3218149))

(declare-fun m!3218151 () Bool)

(assert (=> mapNonEmpty!17801 m!3218151))

(declare-fun m!3218153 () Bool)

(assert (=> setNonEmpty!23659 m!3218153))

(declare-fun m!3218155 () Bool)

(assert (=> b!2787744 m!3218155))

(declare-fun m!3218157 () Bool)

(assert (=> b!2787734 m!3218157))

(declare-fun m!3218159 () Bool)

(assert (=> b!2787734 m!3218159))

(declare-fun m!3218161 () Bool)

(assert (=> b!2787734 m!3218161))

(declare-fun m!3218163 () Bool)

(assert (=> b!2787734 m!3218163))

(declare-fun m!3218165 () Bool)

(assert (=> b!2787733 m!3218165))

(declare-fun m!3218167 () Bool)

(assert (=> b!2787733 m!3218167))

(declare-fun m!3218169 () Bool)

(assert (=> b!2787737 m!3218169))

(check-sat (not b!2787749) (not b!2787732) (not b!2787733) (not b!2787725) (not b!2787724) tp_is_empty!14119 (not setNonEmpty!23659) (not b!2787737) (not b!2787742) b_and!203591 b_and!203595 (not b_next!79559) (not b!2787734) (not b!2787728) (not b_next!79557) (not b!2787736) (not mapNonEmpty!17802) (not b_next!79561) (not b!2787745) (not b!2787730) (not b!2787746) (not start!269442) (not mapNonEmpty!17801) (not b!2787721) (not b!2787750) (not b!2787727) (not b_next!79563) (not b!2787739) (not b!2787744) (not b!2787729) b_and!203597 b_and!203593 (not b!2787731) (not b!2787752))
(check-sat (not b_next!79557) (not b_next!79561) (not b_next!79563) b_and!203591 b_and!203595 (not b_next!79559) b_and!203597 b_and!203593)
(get-model)

(declare-fun d!810901 () Bool)

(assert (=> d!810901 (= (array_inv!4431 (_keys!4203 (v!33875 (underlying!8009 (v!33876 (underlying!8010 (cache!3952 cacheUp!890))))))) (bvsge (size!25097 (_keys!4203 (v!33875 (underlying!8009 (v!33876 (underlying!8010 (cache!3952 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2787732 d!810901))

(declare-fun d!810903 () Bool)

(assert (=> d!810903 (= (array_inv!4433 (_values!4184 (v!33875 (underlying!8009 (v!33876 (underlying!8010 (cache!3952 cacheUp!890))))))) (bvsge (size!25096 (_values!4184 (v!33875 (underlying!8009 (v!33876 (underlying!8010 (cache!3952 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2787732 d!810903))

(declare-fun d!810905 () Bool)

(declare-fun lt!996147 () Int)

(assert (=> d!810905 (= lt!996147 (size!25095 (list!12147 totalInput!758)))))

(declare-fun size!25100 (Conc!10022) Int)

(assert (=> d!810905 (= lt!996147 (size!25100 (c!452679 totalInput!758)))))

(assert (=> d!810905 (= (size!25099 totalInput!758) lt!996147)))

(declare-fun bs!510992 () Bool)

(assert (= bs!510992 d!810905))

(assert (=> bs!510992 m!3218139))

(assert (=> bs!510992 m!3218139))

(declare-fun m!3218171 () Bool)

(assert (=> bs!510992 m!3218171))

(declare-fun m!3218173 () Bool)

(assert (=> bs!510992 m!3218173))

(assert (=> b!2787742 d!810905))

(declare-fun d!810907 () Bool)

(declare-fun validCacheMapDown!413 (MutableMap!3810) Bool)

(assert (=> d!810907 (= (valid!3051 cacheDown!1009) (validCacheMapDown!413 (cache!3953 cacheDown!1009)))))

(declare-fun bs!510993 () Bool)

(assert (= bs!510993 d!810907))

(declare-fun m!3218175 () Bool)

(assert (=> bs!510993 m!3218175))

(assert (=> b!2787750 d!810907))

(declare-fun bs!510994 () Bool)

(declare-fun b!2787758 () Bool)

(declare-fun d!810909 () Bool)

(assert (= bs!510994 (and b!2787758 d!810909)))

(declare-fun lambda!102295 () Int)

(declare-fun lambda!102294 () Int)

(assert (=> bs!510994 (not (= lambda!102295 lambda!102294))))

(declare-fun bs!510995 () Bool)

(declare-fun b!2787759 () Bool)

(assert (= bs!510995 (and b!2787759 d!810909)))

(declare-fun lambda!102296 () Int)

(assert (=> bs!510995 (not (= lambda!102296 lambda!102294))))

(declare-fun bs!510996 () Bool)

(assert (= bs!510996 (and b!2787759 b!2787758)))

(assert (=> bs!510996 (= lambda!102296 lambda!102295)))

(declare-fun lt!996170 () Bool)

(declare-datatypes ((Option!6273 0))(
  ( (None!6272) (Some!6272 (v!33879 List!32370)) )
))
(declare-fun isEmpty!18117 (Option!6273) Bool)

(declare-fun getLanguageWitness!203 ((InoxSet Context!4742)) Option!6273)

(assert (=> d!810909 (= lt!996170 (isEmpty!18117 (getLanguageWitness!203 z!3684)))))

(declare-fun forall!6661 ((InoxSet Context!4742) Int) Bool)

(assert (=> d!810909 (= lt!996170 (forall!6661 z!3684 lambda!102294))))

(declare-fun lt!996167 () Unit!46490)

(declare-fun e!1759540 () Unit!46490)

(assert (=> d!810909 (= lt!996167 e!1759540)))

(declare-fun c!452690 () Bool)

(assert (=> d!810909 (= c!452690 (not (forall!6661 z!3684 lambda!102294)))))

(assert (=> d!810909 (= (lostCauseZipper!469 z!3684) lt!996170)))

(declare-fun bm!182517 () Bool)

(declare-datatypes ((List!32374 0))(
  ( (Nil!32274) (Cons!32274 (h!37694 Context!4742) (t!228516 List!32374)) )
))
(declare-fun lt!996166 () List!32374)

(declare-fun lt!996169 () List!32374)

(declare-fun call!182522 () Bool)

(declare-fun exists!993 (List!32374 Int) Bool)

(assert (=> bm!182517 (= call!182522 (exists!993 (ite c!452690 lt!996169 lt!996166) (ite c!452690 lambda!102295 lambda!102296)))))

(declare-fun bm!182516 () Bool)

(declare-fun call!182521 () List!32374)

(declare-fun toList!1858 ((InoxSet Context!4742)) List!32374)

(assert (=> bm!182516 (= call!182521 (toList!1858 z!3684))))

(declare-fun Unit!46494 () Unit!46490)

(assert (=> b!2787758 (= e!1759540 Unit!46494)))

(assert (=> b!2787758 (= lt!996169 call!182521)))

(declare-fun lt!996164 () Unit!46490)

(declare-fun lemmaNotForallThenExists!95 (List!32374 Int) Unit!46490)

(assert (=> b!2787758 (= lt!996164 (lemmaNotForallThenExists!95 lt!996169 lambda!102294))))

(assert (=> b!2787758 call!182522))

(declare-fun lt!996165 () Unit!46490)

(assert (=> b!2787758 (= lt!996165 lt!996164)))

(declare-fun Unit!46495 () Unit!46490)

(assert (=> b!2787759 (= e!1759540 Unit!46495)))

(assert (=> b!2787759 (= lt!996166 call!182521)))

(declare-fun lt!996171 () Unit!46490)

(declare-fun lemmaForallThenNotExists!95 (List!32374 Int) Unit!46490)

(assert (=> b!2787759 (= lt!996171 (lemmaForallThenNotExists!95 lt!996166 lambda!102294))))

(assert (=> b!2787759 (not call!182522)))

(declare-fun lt!996168 () Unit!46490)

(assert (=> b!2787759 (= lt!996168 lt!996171)))

(assert (= (and d!810909 c!452690) b!2787758))

(assert (= (and d!810909 (not c!452690)) b!2787759))

(assert (= (or b!2787758 b!2787759) bm!182516))

(assert (= (or b!2787758 b!2787759) bm!182517))

(declare-fun m!3218177 () Bool)

(assert (=> b!2787758 m!3218177))

(declare-fun m!3218179 () Bool)

(assert (=> d!810909 m!3218179))

(assert (=> d!810909 m!3218179))

(declare-fun m!3218181 () Bool)

(assert (=> d!810909 m!3218181))

(declare-fun m!3218183 () Bool)

(assert (=> d!810909 m!3218183))

(assert (=> d!810909 m!3218183))

(declare-fun m!3218185 () Bool)

(assert (=> b!2787759 m!3218185))

(declare-fun m!3218187 () Bool)

(assert (=> bm!182516 m!3218187))

(declare-fun m!3218189 () Bool)

(assert (=> bm!182517 m!3218189))

(assert (=> b!2787739 d!810909))

(declare-fun d!810911 () Bool)

(assert (=> d!810911 (= testedSuffix!143 lt!996139)))

(declare-fun lt!996174 () Unit!46490)

(declare-fun choose!16370 (List!32370 List!32370 List!32370 List!32370 List!32370) Unit!46490)

(assert (=> d!810911 (= lt!996174 (choose!16370 testedP!183 testedSuffix!143 testedP!183 lt!996139 lt!996143))))

(assert (=> d!810911 (isPrefix!2590 testedP!183 lt!996143)))

(assert (=> d!810911 (= (lemmaSamePrefixThenSameSuffix!1170 testedP!183 testedSuffix!143 testedP!183 lt!996139 lt!996143) lt!996174)))

(declare-fun bs!510997 () Bool)

(assert (= bs!510997 d!810911))

(declare-fun m!3218191 () Bool)

(assert (=> bs!510997 m!3218191))

(assert (=> bs!510997 m!3218133))

(assert (=> b!2787739 d!810911))

(declare-fun d!810913 () Bool)

(declare-fun lt!996177 () List!32370)

(assert (=> d!810913 (= (++!7970 testedP!183 lt!996177) lt!996143)))

(declare-fun e!1759543 () List!32370)

(assert (=> d!810913 (= lt!996177 e!1759543)))

(declare-fun c!452693 () Bool)

(assert (=> d!810913 (= c!452693 ((_ is Cons!32270) testedP!183))))

(assert (=> d!810913 (>= (size!25095 lt!996143) (size!25095 testedP!183))))

(assert (=> d!810913 (= (getSuffix!1269 lt!996143 testedP!183) lt!996177)))

(declare-fun b!2787764 () Bool)

(assert (=> b!2787764 (= e!1759543 (getSuffix!1269 (tail!4405 lt!996143) (t!228512 testedP!183)))))

(declare-fun b!2787765 () Bool)

(assert (=> b!2787765 (= e!1759543 lt!996143)))

(assert (= (and d!810913 c!452693) b!2787764))

(assert (= (and d!810913 (not c!452693)) b!2787765))

(declare-fun m!3218193 () Bool)

(assert (=> d!810913 m!3218193))

(assert (=> d!810913 m!3218165))

(assert (=> d!810913 m!3218105))

(declare-fun m!3218195 () Bool)

(assert (=> b!2787764 m!3218195))

(assert (=> b!2787764 m!3218195))

(declare-fun m!3218197 () Bool)

(assert (=> b!2787764 m!3218197))

(assert (=> b!2787739 d!810913))

(declare-fun d!810915 () Bool)

(assert (=> d!810915 (= (array_inv!4431 (_keys!4204 (v!33877 (underlying!8011 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009))))))) (bvsge (size!25097 (_keys!4204 (v!33877 (underlying!8011 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2787730 d!810915))

(declare-fun d!810917 () Bool)

(assert (=> d!810917 (= (array_inv!4432 (_values!4185 (v!33877 (underlying!8011 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009))))))) (bvsge (size!25098 (_values!4185 (v!33877 (underlying!8011 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2787730 d!810917))

(declare-fun d!810919 () Bool)

(declare-fun lt!996180 () Int)

(assert (=> d!810919 (>= lt!996180 0)))

(declare-fun e!1759546 () Int)

(assert (=> d!810919 (= lt!996180 e!1759546)))

(declare-fun c!452696 () Bool)

(assert (=> d!810919 (= c!452696 ((_ is Nil!32270) testedP!183))))

(assert (=> d!810919 (= (size!25095 testedP!183) lt!996180)))

(declare-fun b!2787770 () Bool)

(assert (=> b!2787770 (= e!1759546 0)))

(declare-fun b!2787771 () Bool)

(assert (=> b!2787771 (= e!1759546 (+ 1 (size!25095 (t!228512 testedP!183))))))

(assert (= (and d!810919 c!452696) b!2787770))

(assert (= (and d!810919 (not c!452696)) b!2787771))

(declare-fun m!3218199 () Bool)

(assert (=> b!2787771 m!3218199))

(assert (=> b!2787721 d!810919))

(declare-fun b!2787783 () Bool)

(declare-fun e!1759555 () Bool)

(assert (=> b!2787783 (= e!1759555 (>= (size!25095 lt!996143) (size!25095 testedP!183)))))

(declare-fun b!2787780 () Bool)

(declare-fun e!1759553 () Bool)

(declare-fun e!1759554 () Bool)

(assert (=> b!2787780 (= e!1759553 e!1759554)))

(declare-fun res!1163268 () Bool)

(assert (=> b!2787780 (=> (not res!1163268) (not e!1759554))))

(assert (=> b!2787780 (= res!1163268 (not ((_ is Nil!32270) lt!996143)))))

(declare-fun d!810921 () Bool)

(assert (=> d!810921 e!1759555))

(declare-fun res!1163266 () Bool)

(assert (=> d!810921 (=> res!1163266 e!1759555)))

(declare-fun lt!996183 () Bool)

(assert (=> d!810921 (= res!1163266 (not lt!996183))))

(assert (=> d!810921 (= lt!996183 e!1759553)))

(declare-fun res!1163269 () Bool)

(assert (=> d!810921 (=> res!1163269 e!1759553)))

(assert (=> d!810921 (= res!1163269 ((_ is Nil!32270) testedP!183))))

(assert (=> d!810921 (= (isPrefix!2590 testedP!183 lt!996143) lt!996183)))

(declare-fun b!2787782 () Bool)

(assert (=> b!2787782 (= e!1759554 (isPrefix!2590 (tail!4405 testedP!183) (tail!4405 lt!996143)))))

(declare-fun b!2787781 () Bool)

(declare-fun res!1163267 () Bool)

(assert (=> b!2787781 (=> (not res!1163267) (not e!1759554))))

(assert (=> b!2787781 (= res!1163267 (= (head!6173 testedP!183) (head!6173 lt!996143)))))

(assert (= (and d!810921 (not res!1163269)) b!2787780))

(assert (= (and b!2787780 res!1163268) b!2787781))

(assert (= (and b!2787781 res!1163267) b!2787782))

(assert (= (and d!810921 (not res!1163266)) b!2787783))

(assert (=> b!2787783 m!3218165))

(assert (=> b!2787783 m!3218105))

(declare-fun m!3218201 () Bool)

(assert (=> b!2787782 m!3218201))

(assert (=> b!2787782 m!3218195))

(assert (=> b!2787782 m!3218201))

(assert (=> b!2787782 m!3218195))

(declare-fun m!3218203 () Bool)

(assert (=> b!2787782 m!3218203))

(declare-fun m!3218205 () Bool)

(assert (=> b!2787781 m!3218205))

(declare-fun m!3218207 () Bool)

(assert (=> b!2787781 m!3218207))

(assert (=> b!2787729 d!810921))

(declare-fun b!2787787 () Bool)

(declare-fun e!1759558 () Bool)

(assert (=> b!2787787 (= e!1759558 (>= (size!25095 lt!996123) (size!25095 testedP!183)))))

(declare-fun b!2787784 () Bool)

(declare-fun e!1759556 () Bool)

(declare-fun e!1759557 () Bool)

(assert (=> b!2787784 (= e!1759556 e!1759557)))

(declare-fun res!1163272 () Bool)

(assert (=> b!2787784 (=> (not res!1163272) (not e!1759557))))

(assert (=> b!2787784 (= res!1163272 (not ((_ is Nil!32270) lt!996123)))))

(declare-fun d!810923 () Bool)

(assert (=> d!810923 e!1759558))

(declare-fun res!1163270 () Bool)

(assert (=> d!810923 (=> res!1163270 e!1759558)))

(declare-fun lt!996184 () Bool)

(assert (=> d!810923 (= res!1163270 (not lt!996184))))

(assert (=> d!810923 (= lt!996184 e!1759556)))

(declare-fun res!1163273 () Bool)

(assert (=> d!810923 (=> res!1163273 e!1759556)))

(assert (=> d!810923 (= res!1163273 ((_ is Nil!32270) testedP!183))))

(assert (=> d!810923 (= (isPrefix!2590 testedP!183 lt!996123) lt!996184)))

(declare-fun b!2787786 () Bool)

(assert (=> b!2787786 (= e!1759557 (isPrefix!2590 (tail!4405 testedP!183) (tail!4405 lt!996123)))))

(declare-fun b!2787785 () Bool)

(declare-fun res!1163271 () Bool)

(assert (=> b!2787785 (=> (not res!1163271) (not e!1759557))))

(assert (=> b!2787785 (= res!1163271 (= (head!6173 testedP!183) (head!6173 lt!996123)))))

(assert (= (and d!810923 (not res!1163273)) b!2787784))

(assert (= (and b!2787784 res!1163272) b!2787785))

(assert (= (and b!2787785 res!1163271) b!2787786))

(assert (= (and d!810923 (not res!1163270)) b!2787787))

(declare-fun m!3218209 () Bool)

(assert (=> b!2787787 m!3218209))

(assert (=> b!2787787 m!3218105))

(assert (=> b!2787786 m!3218201))

(declare-fun m!3218211 () Bool)

(assert (=> b!2787786 m!3218211))

(assert (=> b!2787786 m!3218201))

(assert (=> b!2787786 m!3218211))

(declare-fun m!3218213 () Bool)

(assert (=> b!2787786 m!3218213))

(assert (=> b!2787785 m!3218205))

(declare-fun m!3218215 () Bool)

(assert (=> b!2787785 m!3218215))

(assert (=> b!2787729 d!810923))

(declare-fun d!810925 () Bool)

(assert (=> d!810925 (isPrefix!2590 testedP!183 (++!7970 testedP!183 testedSuffix!143))))

(declare-fun lt!996187 () Unit!46490)

(declare-fun choose!16371 (List!32370 List!32370) Unit!46490)

(assert (=> d!810925 (= lt!996187 (choose!16371 testedP!183 testedSuffix!143))))

(assert (=> d!810925 (= (lemmaConcatTwoListThenFirstIsPrefix!1700 testedP!183 testedSuffix!143) lt!996187)))

(declare-fun bs!510998 () Bool)

(assert (= bs!510998 d!810925))

(assert (=> bs!510998 m!3218147))

(assert (=> bs!510998 m!3218147))

(declare-fun m!3218217 () Bool)

(assert (=> bs!510998 m!3218217))

(declare-fun m!3218219 () Bool)

(assert (=> bs!510998 m!3218219))

(assert (=> b!2787729 d!810925))

(declare-fun d!810927 () Bool)

(assert (=> d!810927 (isPrefix!2590 lt!996143 lt!996143)))

(declare-fun lt!996190 () Unit!46490)

(declare-fun choose!16372 (List!32370 List!32370) Unit!46490)

(assert (=> d!810927 (= lt!996190 (choose!16372 lt!996143 lt!996143))))

(assert (=> d!810927 (= (lemmaIsPrefixRefl!1694 lt!996143 lt!996143) lt!996190)))

(declare-fun bs!510999 () Bool)

(assert (= bs!510999 d!810927))

(assert (=> bs!510999 m!3218109))

(declare-fun m!3218221 () Bool)

(assert (=> bs!510999 m!3218221))

(assert (=> b!2787746 d!810927))

(declare-fun b!2787791 () Bool)

(declare-fun e!1759561 () Bool)

(assert (=> b!2787791 (= e!1759561 (>= (size!25095 lt!996143) (size!25095 lt!996143)))))

(declare-fun b!2787788 () Bool)

(declare-fun e!1759559 () Bool)

(declare-fun e!1759560 () Bool)

(assert (=> b!2787788 (= e!1759559 e!1759560)))

(declare-fun res!1163276 () Bool)

(assert (=> b!2787788 (=> (not res!1163276) (not e!1759560))))

(assert (=> b!2787788 (= res!1163276 (not ((_ is Nil!32270) lt!996143)))))

(declare-fun d!810929 () Bool)

(assert (=> d!810929 e!1759561))

(declare-fun res!1163274 () Bool)

(assert (=> d!810929 (=> res!1163274 e!1759561)))

(declare-fun lt!996191 () Bool)

(assert (=> d!810929 (= res!1163274 (not lt!996191))))

(assert (=> d!810929 (= lt!996191 e!1759559)))

(declare-fun res!1163277 () Bool)

(assert (=> d!810929 (=> res!1163277 e!1759559)))

(assert (=> d!810929 (= res!1163277 ((_ is Nil!32270) lt!996143))))

(assert (=> d!810929 (= (isPrefix!2590 lt!996143 lt!996143) lt!996191)))

(declare-fun b!2787790 () Bool)

(assert (=> b!2787790 (= e!1759560 (isPrefix!2590 (tail!4405 lt!996143) (tail!4405 lt!996143)))))

(declare-fun b!2787789 () Bool)

(declare-fun res!1163275 () Bool)

(assert (=> b!2787789 (=> (not res!1163275) (not e!1759560))))

(assert (=> b!2787789 (= res!1163275 (= (head!6173 lt!996143) (head!6173 lt!996143)))))

(assert (= (and d!810929 (not res!1163277)) b!2787788))

(assert (= (and b!2787788 res!1163276) b!2787789))

(assert (= (and b!2787789 res!1163275) b!2787790))

(assert (= (and d!810929 (not res!1163274)) b!2787791))

(assert (=> b!2787791 m!3218165))

(assert (=> b!2787791 m!3218165))

(assert (=> b!2787790 m!3218195))

(assert (=> b!2787790 m!3218195))

(assert (=> b!2787790 m!3218195))

(assert (=> b!2787790 m!3218195))

(declare-fun m!3218223 () Bool)

(assert (=> b!2787790 m!3218223))

(assert (=> b!2787789 m!3218207))

(assert (=> b!2787789 m!3218207))

(assert (=> b!2787746 d!810929))

(declare-fun d!810931 () Bool)

(assert (=> d!810931 (= lt!996143 testedP!183)))

(declare-fun lt!996194 () Unit!46490)

(declare-fun choose!16373 (List!32370 List!32370 List!32370) Unit!46490)

(assert (=> d!810931 (= lt!996194 (choose!16373 lt!996143 testedP!183 lt!996143))))

(assert (=> d!810931 (isPrefix!2590 lt!996143 lt!996143)))

(assert (=> d!810931 (= (lemmaIsPrefixSameLengthThenSameList!474 lt!996143 testedP!183 lt!996143) lt!996194)))

(declare-fun bs!511000 () Bool)

(assert (= bs!511000 d!810931))

(declare-fun m!3218225 () Bool)

(assert (=> bs!511000 m!3218225))

(assert (=> bs!511000 m!3218109))

(assert (=> b!2787746 d!810931))

(declare-fun d!810933 () Bool)

(declare-fun c!452699 () Bool)

(assert (=> d!810933 (= c!452699 ((_ is Node!10022) (c!452679 totalInput!758)))))

(declare-fun e!1759566 () Bool)

(assert (=> d!810933 (= (inv!43844 (c!452679 totalInput!758)) e!1759566)))

(declare-fun b!2787798 () Bool)

(declare-fun inv!43848 (Conc!10022) Bool)

(assert (=> b!2787798 (= e!1759566 (inv!43848 (c!452679 totalInput!758)))))

(declare-fun b!2787799 () Bool)

(declare-fun e!1759567 () Bool)

(assert (=> b!2787799 (= e!1759566 e!1759567)))

(declare-fun res!1163280 () Bool)

(assert (=> b!2787799 (= res!1163280 (not ((_ is Leaf!15267) (c!452679 totalInput!758))))))

(assert (=> b!2787799 (=> res!1163280 e!1759567)))

(declare-fun b!2787800 () Bool)

(declare-fun inv!43849 (Conc!10022) Bool)

(assert (=> b!2787800 (= e!1759567 (inv!43849 (c!452679 totalInput!758)))))

(assert (= (and d!810933 c!452699) b!2787798))

(assert (= (and d!810933 (not c!452699)) b!2787799))

(assert (= (and b!2787799 (not res!1163280)) b!2787800))

(declare-fun m!3218227 () Bool)

(assert (=> b!2787798 m!3218227))

(declare-fun m!3218229 () Bool)

(assert (=> b!2787800 m!3218229))

(assert (=> b!2787736 d!810933))

(declare-fun d!810935 () Bool)

(declare-fun e!1759570 () Bool)

(assert (=> d!810935 e!1759570))

(declare-fun res!1163285 () Bool)

(assert (=> d!810935 (=> (not res!1163285) (not e!1759570))))

(declare-fun lt!996197 () tuple3!5022)

(declare-fun derivationStepZipper!374 ((InoxSet Context!4742) C!16464) (InoxSet Context!4742))

(assert (=> d!810935 (= res!1163285 (= (_1!19310 lt!996197) (derivationStepZipper!374 z!3684 lt!996142)))))

(declare-fun choose!16374 ((InoxSet Context!4742) C!16464 CacheUp!2516 CacheDown!2634) tuple3!5022)

(assert (=> d!810935 (= lt!996197 (choose!16374 z!3684 lt!996142 cacheUp!890 cacheDown!1009))))

(assert (=> d!810935 (= (derivationStepZipperMem!101 z!3684 lt!996142 cacheUp!890 cacheDown!1009) lt!996197)))

(declare-fun b!2787805 () Bool)

(declare-fun res!1163286 () Bool)

(assert (=> b!2787805 (=> (not res!1163286) (not e!1759570))))

(assert (=> b!2787805 (= res!1163286 (valid!3050 (_2!19310 lt!996197)))))

(declare-fun b!2787806 () Bool)

(assert (=> b!2787806 (= e!1759570 (valid!3051 (_3!2981 lt!996197)))))

(assert (= (and d!810935 res!1163285) b!2787805))

(assert (= (and b!2787805 res!1163286) b!2787806))

(declare-fun m!3218231 () Bool)

(assert (=> d!810935 m!3218231))

(declare-fun m!3218233 () Bool)

(assert (=> d!810935 m!3218233))

(declare-fun m!3218235 () Bool)

(assert (=> b!2787805 m!3218235))

(declare-fun m!3218237 () Bool)

(assert (=> b!2787806 m!3218237))

(assert (=> b!2787737 d!810935))

(declare-fun d!810937 () Bool)

(declare-fun validCacheMapUp!382 (MutableMap!3809) Bool)

(assert (=> d!810937 (= (valid!3050 cacheUp!890) (validCacheMapUp!382 (cache!3952 cacheUp!890)))))

(declare-fun bs!511001 () Bool)

(assert (= bs!511001 d!810937))

(declare-fun m!3218239 () Bool)

(assert (=> bs!511001 m!3218239))

(assert (=> b!2787727 d!810937))

(declare-fun d!810939 () Bool)

(declare-fun res!1163289 () Bool)

(declare-fun e!1759573 () Bool)

(assert (=> d!810939 (=> (not res!1163289) (not e!1759573))))

(assert (=> d!810939 (= res!1163289 ((_ is HashMap!3809) (cache!3952 cacheUp!890)))))

(assert (=> d!810939 (= (inv!43847 cacheUp!890) e!1759573)))

(declare-fun b!2787809 () Bool)

(assert (=> b!2787809 (= e!1759573 (validCacheMapUp!382 (cache!3952 cacheUp!890)))))

(assert (= (and d!810939 res!1163289) b!2787809))

(assert (=> b!2787809 m!3218239))

(assert (=> start!269442 d!810939))

(declare-fun d!810941 () Bool)

(declare-fun isBalanced!3058 (Conc!10022) Bool)

(assert (=> d!810941 (= (inv!43845 totalInput!758) (isBalanced!3058 (c!452679 totalInput!758)))))

(declare-fun bs!511002 () Bool)

(assert (= bs!511002 d!810941))

(declare-fun m!3218241 () Bool)

(assert (=> bs!511002 m!3218241))

(assert (=> start!269442 d!810941))

(declare-fun d!810943 () Bool)

(declare-fun res!1163292 () Bool)

(declare-fun e!1759576 () Bool)

(assert (=> d!810943 (=> (not res!1163292) (not e!1759576))))

(assert (=> d!810943 (= res!1163292 ((_ is HashMap!3810) (cache!3953 cacheDown!1009)))))

(assert (=> d!810943 (= (inv!43846 cacheDown!1009) e!1759576)))

(declare-fun b!2787812 () Bool)

(assert (=> b!2787812 (= e!1759576 (validCacheMapDown!413 (cache!3953 cacheDown!1009)))))

(assert (= (and d!810943 res!1163292) b!2787812))

(assert (=> b!2787812 m!3218175))

(assert (=> start!269442 d!810943))

(declare-fun d!810945 () Bool)

(declare-fun list!12148 (Conc!10022) List!32370)

(assert (=> d!810945 (= (list!12147 totalInput!758) (list!12148 (c!452679 totalInput!758)))))

(declare-fun bs!511003 () Bool)

(assert (= bs!511003 d!810945))

(declare-fun m!3218243 () Bool)

(assert (=> bs!511003 m!3218243))

(assert (=> start!269442 d!810945))

(declare-fun b!2787823 () Bool)

(declare-fun res!1163298 () Bool)

(declare-fun e!1759582 () Bool)

(assert (=> b!2787823 (=> (not res!1163298) (not e!1759582))))

(declare-fun lt!996200 () List!32370)

(assert (=> b!2787823 (= res!1163298 (= (size!25095 lt!996200) (+ (size!25095 testedP!183) (size!25095 testedSuffix!143))))))

(declare-fun b!2787821 () Bool)

(declare-fun e!1759581 () List!32370)

(assert (=> b!2787821 (= e!1759581 testedSuffix!143)))

(declare-fun b!2787822 () Bool)

(assert (=> b!2787822 (= e!1759581 (Cons!32270 (h!37690 testedP!183) (++!7970 (t!228512 testedP!183) testedSuffix!143)))))

(declare-fun b!2787824 () Bool)

(assert (=> b!2787824 (= e!1759582 (or (not (= testedSuffix!143 Nil!32270)) (= lt!996200 testedP!183)))))

(declare-fun d!810947 () Bool)

(assert (=> d!810947 e!1759582))

(declare-fun res!1163297 () Bool)

(assert (=> d!810947 (=> (not res!1163297) (not e!1759582))))

(declare-fun content!4523 (List!32370) (InoxSet C!16464))

(assert (=> d!810947 (= res!1163297 (= (content!4523 lt!996200) ((_ map or) (content!4523 testedP!183) (content!4523 testedSuffix!143))))))

(assert (=> d!810947 (= lt!996200 e!1759581)))

(declare-fun c!452702 () Bool)

(assert (=> d!810947 (= c!452702 ((_ is Nil!32270) testedP!183))))

(assert (=> d!810947 (= (++!7970 testedP!183 testedSuffix!143) lt!996200)))

(assert (= (and d!810947 c!452702) b!2787821))

(assert (= (and d!810947 (not c!452702)) b!2787822))

(assert (= (and d!810947 res!1163297) b!2787823))

(assert (= (and b!2787823 res!1163298) b!2787824))

(declare-fun m!3218245 () Bool)

(assert (=> b!2787823 m!3218245))

(assert (=> b!2787823 m!3218105))

(declare-fun m!3218247 () Bool)

(assert (=> b!2787823 m!3218247))

(declare-fun m!3218249 () Bool)

(assert (=> b!2787822 m!3218249))

(declare-fun m!3218251 () Bool)

(assert (=> d!810947 m!3218251))

(declare-fun m!3218253 () Bool)

(assert (=> d!810947 m!3218253))

(declare-fun m!3218255 () Bool)

(assert (=> d!810947 m!3218255))

(assert (=> start!269442 d!810947))

(declare-fun d!810949 () Bool)

(assert (=> d!810949 (= (++!7970 (++!7970 testedP!183 (Cons!32270 lt!996142 Nil!32270)) lt!996126) lt!996143)))

(declare-fun lt!996203 () Unit!46490)

(declare-fun choose!16375 (List!32370 C!16464 List!32370 List!32370) Unit!46490)

(assert (=> d!810949 (= lt!996203 (choose!16375 testedP!183 lt!996142 lt!996126 lt!996143))))

(assert (=> d!810949 (= (++!7970 testedP!183 (Cons!32270 lt!996142 lt!996126)) lt!996143)))

(assert (=> d!810949 (= (lemmaMoveElementToOtherListKeepsConcatEq!879 testedP!183 lt!996142 lt!996126 lt!996143) lt!996203)))

(declare-fun bs!511004 () Bool)

(assert (= bs!511004 d!810949))

(assert (=> bs!511004 m!3218095))

(assert (=> bs!511004 m!3218095))

(assert (=> bs!511004 m!3218097))

(declare-fun m!3218257 () Bool)

(assert (=> bs!511004 m!3218257))

(declare-fun m!3218259 () Bool)

(assert (=> bs!511004 m!3218259))

(assert (=> b!2787745 d!810949))

(declare-fun e!1759585 () Bool)

(declare-fun b!2787828 () Bool)

(assert (=> b!2787828 (= e!1759585 (>= (size!25095 lt!996143) (size!25095 (++!7970 testedP!183 (Cons!32270 (head!6173 lt!996139) Nil!32270)))))))

(declare-fun b!2787825 () Bool)

(declare-fun e!1759583 () Bool)

(declare-fun e!1759584 () Bool)

(assert (=> b!2787825 (= e!1759583 e!1759584)))

(declare-fun res!1163301 () Bool)

(assert (=> b!2787825 (=> (not res!1163301) (not e!1759584))))

(assert (=> b!2787825 (= res!1163301 (not ((_ is Nil!32270) lt!996143)))))

(declare-fun d!810951 () Bool)

(assert (=> d!810951 e!1759585))

(declare-fun res!1163299 () Bool)

(assert (=> d!810951 (=> res!1163299 e!1759585)))

(declare-fun lt!996204 () Bool)

(assert (=> d!810951 (= res!1163299 (not lt!996204))))

(assert (=> d!810951 (= lt!996204 e!1759583)))

(declare-fun res!1163302 () Bool)

(assert (=> d!810951 (=> res!1163302 e!1759583)))

(assert (=> d!810951 (= res!1163302 ((_ is Nil!32270) (++!7970 testedP!183 (Cons!32270 (head!6173 lt!996139) Nil!32270))))))

(assert (=> d!810951 (= (isPrefix!2590 (++!7970 testedP!183 (Cons!32270 (head!6173 lt!996139) Nil!32270)) lt!996143) lt!996204)))

(declare-fun b!2787827 () Bool)

(assert (=> b!2787827 (= e!1759584 (isPrefix!2590 (tail!4405 (++!7970 testedP!183 (Cons!32270 (head!6173 lt!996139) Nil!32270))) (tail!4405 lt!996143)))))

(declare-fun b!2787826 () Bool)

(declare-fun res!1163300 () Bool)

(assert (=> b!2787826 (=> (not res!1163300) (not e!1759584))))

(assert (=> b!2787826 (= res!1163300 (= (head!6173 (++!7970 testedP!183 (Cons!32270 (head!6173 lt!996139) Nil!32270))) (head!6173 lt!996143)))))

(assert (= (and d!810951 (not res!1163302)) b!2787825))

(assert (= (and b!2787825 res!1163301) b!2787826))

(assert (= (and b!2787826 res!1163300) b!2787827))

(assert (= (and d!810951 (not res!1163299)) b!2787828))

(assert (=> b!2787828 m!3218165))

(assert (=> b!2787828 m!3218099))

(declare-fun m!3218261 () Bool)

(assert (=> b!2787828 m!3218261))

(assert (=> b!2787827 m!3218099))

(declare-fun m!3218263 () Bool)

(assert (=> b!2787827 m!3218263))

(assert (=> b!2787827 m!3218195))

(assert (=> b!2787827 m!3218263))

(assert (=> b!2787827 m!3218195))

(declare-fun m!3218265 () Bool)

(assert (=> b!2787827 m!3218265))

(assert (=> b!2787826 m!3218099))

(declare-fun m!3218267 () Bool)

(assert (=> b!2787826 m!3218267))

(assert (=> b!2787826 m!3218207))

(assert (=> b!2787745 d!810951))

(declare-fun b!2787831 () Bool)

(declare-fun res!1163304 () Bool)

(declare-fun e!1759587 () Bool)

(assert (=> b!2787831 (=> (not res!1163304) (not e!1759587))))

(declare-fun lt!996205 () List!32370)

(assert (=> b!2787831 (= res!1163304 (= (size!25095 lt!996205) (+ (size!25095 (++!7970 testedP!183 (Cons!32270 lt!996142 Nil!32270))) (size!25095 lt!996126))))))

(declare-fun b!2787829 () Bool)

(declare-fun e!1759586 () List!32370)

(assert (=> b!2787829 (= e!1759586 lt!996126)))

(declare-fun b!2787830 () Bool)

(assert (=> b!2787830 (= e!1759586 (Cons!32270 (h!37690 (++!7970 testedP!183 (Cons!32270 lt!996142 Nil!32270))) (++!7970 (t!228512 (++!7970 testedP!183 (Cons!32270 lt!996142 Nil!32270))) lt!996126)))))

(declare-fun b!2787832 () Bool)

(assert (=> b!2787832 (= e!1759587 (or (not (= lt!996126 Nil!32270)) (= lt!996205 (++!7970 testedP!183 (Cons!32270 lt!996142 Nil!32270)))))))

(declare-fun d!810953 () Bool)

(assert (=> d!810953 e!1759587))

(declare-fun res!1163303 () Bool)

(assert (=> d!810953 (=> (not res!1163303) (not e!1759587))))

(assert (=> d!810953 (= res!1163303 (= (content!4523 lt!996205) ((_ map or) (content!4523 (++!7970 testedP!183 (Cons!32270 lt!996142 Nil!32270))) (content!4523 lt!996126))))))

(assert (=> d!810953 (= lt!996205 e!1759586)))

(declare-fun c!452703 () Bool)

(assert (=> d!810953 (= c!452703 ((_ is Nil!32270) (++!7970 testedP!183 (Cons!32270 lt!996142 Nil!32270))))))

(assert (=> d!810953 (= (++!7970 (++!7970 testedP!183 (Cons!32270 lt!996142 Nil!32270)) lt!996126) lt!996205)))

(assert (= (and d!810953 c!452703) b!2787829))

(assert (= (and d!810953 (not c!452703)) b!2787830))

(assert (= (and d!810953 res!1163303) b!2787831))

(assert (= (and b!2787831 res!1163304) b!2787832))

(declare-fun m!3218269 () Bool)

(assert (=> b!2787831 m!3218269))

(assert (=> b!2787831 m!3218095))

(declare-fun m!3218271 () Bool)

(assert (=> b!2787831 m!3218271))

(declare-fun m!3218273 () Bool)

(assert (=> b!2787831 m!3218273))

(declare-fun m!3218275 () Bool)

(assert (=> b!2787830 m!3218275))

(declare-fun m!3218277 () Bool)

(assert (=> d!810953 m!3218277))

(assert (=> d!810953 m!3218095))

(declare-fun m!3218279 () Bool)

(assert (=> d!810953 m!3218279))

(declare-fun m!3218281 () Bool)

(assert (=> d!810953 m!3218281))

(assert (=> b!2787745 d!810953))

(declare-fun b!2787835 () Bool)

(declare-fun res!1163306 () Bool)

(declare-fun e!1759589 () Bool)

(assert (=> b!2787835 (=> (not res!1163306) (not e!1759589))))

(declare-fun lt!996206 () List!32370)

(assert (=> b!2787835 (= res!1163306 (= (size!25095 lt!996206) (+ (size!25095 testedP!183) (size!25095 (Cons!32270 (head!6173 lt!996139) Nil!32270)))))))

(declare-fun b!2787833 () Bool)

(declare-fun e!1759588 () List!32370)

(assert (=> b!2787833 (= e!1759588 (Cons!32270 (head!6173 lt!996139) Nil!32270))))

(declare-fun b!2787834 () Bool)

(assert (=> b!2787834 (= e!1759588 (Cons!32270 (h!37690 testedP!183) (++!7970 (t!228512 testedP!183) (Cons!32270 (head!6173 lt!996139) Nil!32270))))))

(declare-fun b!2787836 () Bool)

(assert (=> b!2787836 (= e!1759589 (or (not (= (Cons!32270 (head!6173 lt!996139) Nil!32270) Nil!32270)) (= lt!996206 testedP!183)))))

(declare-fun d!810955 () Bool)

(assert (=> d!810955 e!1759589))

(declare-fun res!1163305 () Bool)

(assert (=> d!810955 (=> (not res!1163305) (not e!1759589))))

(assert (=> d!810955 (= res!1163305 (= (content!4523 lt!996206) ((_ map or) (content!4523 testedP!183) (content!4523 (Cons!32270 (head!6173 lt!996139) Nil!32270)))))))

(assert (=> d!810955 (= lt!996206 e!1759588)))

(declare-fun c!452704 () Bool)

(assert (=> d!810955 (= c!452704 ((_ is Nil!32270) testedP!183))))

(assert (=> d!810955 (= (++!7970 testedP!183 (Cons!32270 (head!6173 lt!996139) Nil!32270)) lt!996206)))

(assert (= (and d!810955 c!452704) b!2787833))

(assert (= (and d!810955 (not c!452704)) b!2787834))

(assert (= (and d!810955 res!1163305) b!2787835))

(assert (= (and b!2787835 res!1163306) b!2787836))

(declare-fun m!3218283 () Bool)

(assert (=> b!2787835 m!3218283))

(assert (=> b!2787835 m!3218105))

(declare-fun m!3218285 () Bool)

(assert (=> b!2787835 m!3218285))

(declare-fun m!3218287 () Bool)

(assert (=> b!2787834 m!3218287))

(declare-fun m!3218289 () Bool)

(assert (=> d!810955 m!3218289))

(assert (=> d!810955 m!3218253))

(declare-fun m!3218291 () Bool)

(assert (=> d!810955 m!3218291))

(assert (=> b!2787745 d!810955))

(declare-fun d!810957 () Bool)

(assert (=> d!810957 (= (head!6173 lt!996139) (h!37690 lt!996139))))

(assert (=> b!2787745 d!810957))

(declare-fun d!810959 () Bool)

(assert (=> d!810959 (= (tail!4405 testedSuffix!143) (t!228512 testedSuffix!143))))

(assert (=> b!2787745 d!810959))

(declare-fun bs!511005 () Bool)

(declare-fun d!810961 () Bool)

(assert (= bs!511005 (and d!810961 d!810909)))

(declare-fun lambda!102299 () Int)

(assert (=> bs!511005 (not (= lambda!102299 lambda!102294))))

(declare-fun bs!511006 () Bool)

(assert (= bs!511006 (and d!810961 b!2787758)))

(assert (=> bs!511006 (not (= lambda!102299 lambda!102295))))

(declare-fun bs!511007 () Bool)

(assert (= bs!511007 (and d!810961 b!2787759)))

(assert (=> bs!511007 (not (= lambda!102299 lambda!102296))))

(declare-fun exists!994 ((InoxSet Context!4742) Int) Bool)

(assert (=> d!810961 (= (nullableZipper!643 z!3684) (exists!994 z!3684 lambda!102299))))

(declare-fun bs!511008 () Bool)

(assert (= bs!511008 d!810961))

(declare-fun m!3218293 () Bool)

(assert (=> bs!511008 m!3218293))

(assert (=> b!2787745 d!810961))

(declare-fun b!2787839 () Bool)

(declare-fun res!1163308 () Bool)

(declare-fun e!1759591 () Bool)

(assert (=> b!2787839 (=> (not res!1163308) (not e!1759591))))

(declare-fun lt!996207 () List!32370)

(assert (=> b!2787839 (= res!1163308 (= (size!25095 lt!996207) (+ (size!25095 testedP!183) (size!25095 (Cons!32270 lt!996142 Nil!32270)))))))

(declare-fun b!2787837 () Bool)

(declare-fun e!1759590 () List!32370)

(assert (=> b!2787837 (= e!1759590 (Cons!32270 lt!996142 Nil!32270))))

(declare-fun b!2787838 () Bool)

(assert (=> b!2787838 (= e!1759590 (Cons!32270 (h!37690 testedP!183) (++!7970 (t!228512 testedP!183) (Cons!32270 lt!996142 Nil!32270))))))

(declare-fun b!2787840 () Bool)

(assert (=> b!2787840 (= e!1759591 (or (not (= (Cons!32270 lt!996142 Nil!32270) Nil!32270)) (= lt!996207 testedP!183)))))

(declare-fun d!810963 () Bool)

(assert (=> d!810963 e!1759591))

(declare-fun res!1163307 () Bool)

(assert (=> d!810963 (=> (not res!1163307) (not e!1759591))))

(assert (=> d!810963 (= res!1163307 (= (content!4523 lt!996207) ((_ map or) (content!4523 testedP!183) (content!4523 (Cons!32270 lt!996142 Nil!32270)))))))

(assert (=> d!810963 (= lt!996207 e!1759590)))

(declare-fun c!452707 () Bool)

(assert (=> d!810963 (= c!452707 ((_ is Nil!32270) testedP!183))))

(assert (=> d!810963 (= (++!7970 testedP!183 (Cons!32270 lt!996142 Nil!32270)) lt!996207)))

(assert (= (and d!810963 c!452707) b!2787837))

(assert (= (and d!810963 (not c!452707)) b!2787838))

(assert (= (and d!810963 res!1163307) b!2787839))

(assert (= (and b!2787839 res!1163308) b!2787840))

(declare-fun m!3218295 () Bool)

(assert (=> b!2787839 m!3218295))

(assert (=> b!2787839 m!3218105))

(declare-fun m!3218297 () Bool)

(assert (=> b!2787839 m!3218297))

(declare-fun m!3218299 () Bool)

(assert (=> b!2787838 m!3218299))

(declare-fun m!3218301 () Bool)

(assert (=> d!810963 m!3218301))

(assert (=> d!810963 m!3218253))

(declare-fun m!3218303 () Bool)

(assert (=> d!810963 m!3218303))

(assert (=> b!2787745 d!810963))

(declare-fun d!810965 () Bool)

(assert (=> d!810965 (isPrefix!2590 (++!7970 testedP!183 (Cons!32270 (head!6173 (getSuffix!1269 lt!996143 testedP!183)) Nil!32270)) lt!996143)))

(declare-fun lt!996210 () Unit!46490)

(declare-fun choose!16376 (List!32370 List!32370) Unit!46490)

(assert (=> d!810965 (= lt!996210 (choose!16376 testedP!183 lt!996143))))

(assert (=> d!810965 (isPrefix!2590 testedP!183 lt!996143)))

(assert (=> d!810965 (= (lemmaAddHeadSuffixToPrefixStillPrefix!470 testedP!183 lt!996143) lt!996210)))

(declare-fun bs!511009 () Bool)

(assert (= bs!511009 d!810965))

(assert (=> bs!511009 m!3218075))

(assert (=> bs!511009 m!3218133))

(declare-fun m!3218305 () Bool)

(assert (=> bs!511009 m!3218305))

(assert (=> bs!511009 m!3218305))

(declare-fun m!3218307 () Bool)

(assert (=> bs!511009 m!3218307))

(assert (=> bs!511009 m!3218075))

(declare-fun m!3218309 () Bool)

(assert (=> bs!511009 m!3218309))

(declare-fun m!3218311 () Bool)

(assert (=> bs!511009 m!3218311))

(assert (=> b!2787745 d!810965))

(declare-fun d!810967 () Bool)

(declare-fun lt!996211 () Int)

(assert (=> d!810967 (= lt!996211 (size!25095 (list!12147 (_1!19309 lt!996144))))))

(assert (=> d!810967 (= lt!996211 (size!25100 (c!452679 (_1!19309 lt!996144))))))

(assert (=> d!810967 (= (size!25099 (_1!19309 lt!996144)) lt!996211)))

(declare-fun bs!511010 () Bool)

(assert (= bs!511010 d!810967))

(assert (=> bs!511010 m!3218161))

(assert (=> bs!511010 m!3218161))

(declare-fun m!3218313 () Bool)

(assert (=> bs!511010 m!3218313))

(declare-fun m!3218315 () Bool)

(assert (=> bs!511010 m!3218315))

(assert (=> b!2787744 d!810967))

(declare-fun b!2787843 () Bool)

(declare-fun res!1163310 () Bool)

(declare-fun e!1759593 () Bool)

(assert (=> b!2787843 (=> (not res!1163310) (not e!1759593))))

(declare-fun lt!996212 () List!32370)

(assert (=> b!2787843 (= res!1163310 (= (size!25095 lt!996212) (+ (size!25095 lt!996125) (size!25095 lt!996124))))))

(declare-fun b!2787841 () Bool)

(declare-fun e!1759592 () List!32370)

(assert (=> b!2787841 (= e!1759592 lt!996124)))

(declare-fun b!2787842 () Bool)

(assert (=> b!2787842 (= e!1759592 (Cons!32270 (h!37690 lt!996125) (++!7970 (t!228512 lt!996125) lt!996124)))))

(declare-fun b!2787844 () Bool)

(assert (=> b!2787844 (= e!1759593 (or (not (= lt!996124 Nil!32270)) (= lt!996212 lt!996125)))))

(declare-fun d!810969 () Bool)

(assert (=> d!810969 e!1759593))

(declare-fun res!1163309 () Bool)

(assert (=> d!810969 (=> (not res!1163309) (not e!1759593))))

(assert (=> d!810969 (= res!1163309 (= (content!4523 lt!996212) ((_ map or) (content!4523 lt!996125) (content!4523 lt!996124))))))

(assert (=> d!810969 (= lt!996212 e!1759592)))

(declare-fun c!452708 () Bool)

(assert (=> d!810969 (= c!452708 ((_ is Nil!32270) lt!996125))))

(assert (=> d!810969 (= (++!7970 lt!996125 lt!996124) lt!996212)))

(assert (= (and d!810969 c!452708) b!2787841))

(assert (= (and d!810969 (not c!452708)) b!2787842))

(assert (= (and d!810969 res!1163309) b!2787843))

(assert (= (and b!2787843 res!1163310) b!2787844))

(declare-fun m!3218317 () Bool)

(assert (=> b!2787843 m!3218317))

(declare-fun m!3218319 () Bool)

(assert (=> b!2787843 m!3218319))

(declare-fun m!3218321 () Bool)

(assert (=> b!2787843 m!3218321))

(declare-fun m!3218323 () Bool)

(assert (=> b!2787842 m!3218323))

(declare-fun m!3218325 () Bool)

(assert (=> d!810969 m!3218325))

(declare-fun m!3218327 () Bool)

(assert (=> d!810969 m!3218327))

(declare-fun m!3218329 () Bool)

(assert (=> d!810969 m!3218329))

(assert (=> b!2787734 d!810969))

(declare-fun d!810971 () Bool)

(assert (=> d!810971 (= (list!12147 (_2!19309 lt!996144)) (list!12148 (c!452679 (_2!19309 lt!996144))))))

(declare-fun bs!511011 () Bool)

(assert (= bs!511011 d!810971))

(declare-fun m!3218331 () Bool)

(assert (=> bs!511011 m!3218331))

(assert (=> b!2787734 d!810971))

(declare-fun d!810973 () Bool)

(assert (=> d!810973 (= (list!12147 (_1!19309 lt!996144)) (list!12148 (c!452679 (_1!19309 lt!996144))))))

(declare-fun bs!511012 () Bool)

(assert (= bs!511012 d!810973))

(declare-fun m!3218333 () Bool)

(assert (=> bs!511012 m!3218333))

(assert (=> b!2787734 d!810973))

(declare-fun d!810975 () Bool)

(declare-fun e!1759596 () Bool)

(assert (=> d!810975 e!1759596))

(declare-fun res!1163316 () Bool)

(assert (=> d!810975 (=> (not res!1163316) (not e!1759596))))

(declare-fun lt!996218 () tuple2!32656)

(assert (=> d!810975 (= res!1163316 (isBalanced!3058 (c!452679 (_1!19309 lt!996218))))))

(declare-datatypes ((tuple2!32658 0))(
  ( (tuple2!32659 (_1!19311 Conc!10022) (_2!19311 Conc!10022)) )
))
(declare-fun lt!996217 () tuple2!32658)

(assert (=> d!810975 (= lt!996218 (tuple2!32657 (BalanceConc!19659 (_1!19311 lt!996217)) (BalanceConc!19659 (_2!19311 lt!996217))))))

(declare-fun splitAt!151 (Conc!10022 Int) tuple2!32658)

(assert (=> d!810975 (= lt!996217 (splitAt!151 (c!452679 totalInput!758) testedPSize!143))))

(assert (=> d!810975 (isBalanced!3058 (c!452679 totalInput!758))))

(assert (=> d!810975 (= (splitAt!150 totalInput!758 testedPSize!143) lt!996218)))

(declare-fun b!2787849 () Bool)

(declare-fun res!1163315 () Bool)

(assert (=> b!2787849 (=> (not res!1163315) (not e!1759596))))

(assert (=> b!2787849 (= res!1163315 (isBalanced!3058 (c!452679 (_2!19309 lt!996218))))))

(declare-fun b!2787850 () Bool)

(declare-datatypes ((tuple2!32660 0))(
  ( (tuple2!32661 (_1!19312 List!32370) (_2!19312 List!32370)) )
))
(declare-fun splitAtIndex!61 (List!32370 Int) tuple2!32660)

(assert (=> b!2787850 (= e!1759596 (= (tuple2!32661 (list!12147 (_1!19309 lt!996218)) (list!12147 (_2!19309 lt!996218))) (splitAtIndex!61 (list!12147 totalInput!758) testedPSize!143)))))

(assert (= (and d!810975 res!1163316) b!2787849))

(assert (= (and b!2787849 res!1163315) b!2787850))

(declare-fun m!3218335 () Bool)

(assert (=> d!810975 m!3218335))

(declare-fun m!3218337 () Bool)

(assert (=> d!810975 m!3218337))

(assert (=> d!810975 m!3218241))

(declare-fun m!3218339 () Bool)

(assert (=> b!2787849 m!3218339))

(declare-fun m!3218341 () Bool)

(assert (=> b!2787850 m!3218341))

(declare-fun m!3218343 () Bool)

(assert (=> b!2787850 m!3218343))

(assert (=> b!2787850 m!3218139))

(assert (=> b!2787850 m!3218139))

(declare-fun m!3218345 () Bool)

(assert (=> b!2787850 m!3218345))

(assert (=> b!2787734 d!810975))

(declare-fun d!810977 () Bool)

(declare-fun lambda!102302 () Int)

(declare-fun forall!6662 (List!32371 Int) Bool)

(assert (=> d!810977 (= (inv!43843 setElem!23659) (forall!6662 (exprs!2871 setElem!23659) lambda!102302))))

(declare-fun bs!511013 () Bool)

(assert (= bs!511013 d!810977))

(declare-fun m!3218347 () Bool)

(assert (=> bs!511013 m!3218347))

(assert (=> setNonEmpty!23659 d!810977))

(declare-fun d!810979 () Bool)

(declare-fun lt!996219 () Int)

(assert (=> d!810979 (>= lt!996219 0)))

(declare-fun e!1759597 () Int)

(assert (=> d!810979 (= lt!996219 e!1759597)))

(declare-fun c!452709 () Bool)

(assert (=> d!810979 (= c!452709 ((_ is Nil!32270) lt!996143))))

(assert (=> d!810979 (= (size!25095 lt!996143) lt!996219)))

(declare-fun b!2787851 () Bool)

(assert (=> b!2787851 (= e!1759597 0)))

(declare-fun b!2787852 () Bool)

(assert (=> b!2787852 (= e!1759597 (+ 1 (size!25095 (t!228512 lt!996143))))))

(assert (= (and d!810979 c!452709) b!2787851))

(assert (= (and d!810979 (not c!452709)) b!2787852))

(declare-fun m!3218349 () Bool)

(assert (=> b!2787852 m!3218349))

(assert (=> b!2787733 d!810979))

(declare-fun d!810981 () Bool)

(assert (=> d!810981 (<= (size!25095 testedP!183) (size!25095 lt!996143))))

(declare-fun lt!996222 () Unit!46490)

(declare-fun choose!16377 (List!32370 List!32370) Unit!46490)

(assert (=> d!810981 (= lt!996222 (choose!16377 testedP!183 lt!996143))))

(assert (=> d!810981 (isPrefix!2590 testedP!183 lt!996143)))

(assert (=> d!810981 (= (lemmaIsPrefixThenSmallerEqSize!277 testedP!183 lt!996143) lt!996222)))

(declare-fun bs!511014 () Bool)

(assert (= bs!511014 d!810981))

(assert (=> bs!511014 m!3218105))

(assert (=> bs!511014 m!3218165))

(declare-fun m!3218351 () Bool)

(assert (=> bs!511014 m!3218351))

(assert (=> bs!511014 m!3218133))

(assert (=> b!2787733 d!810981))

(declare-fun d!810983 () Bool)

(assert (=> d!810983 (and (= lt!996125 testedP!183) (= lt!996124 testedSuffix!143))))

(declare-fun lt!996225 () Unit!46490)

(declare-fun choose!16378 (List!32370 List!32370 List!32370 List!32370) Unit!46490)

(assert (=> d!810983 (= lt!996225 (choose!16378 lt!996125 lt!996124 testedP!183 testedSuffix!143))))

(assert (=> d!810983 (= (++!7970 lt!996125 lt!996124) (++!7970 testedP!183 testedSuffix!143))))

(assert (=> d!810983 (= (lemmaConcatSameAndSameSizesThenSameLists!360 lt!996125 lt!996124 testedP!183 testedSuffix!143) lt!996225)))

(declare-fun bs!511015 () Bool)

(assert (= bs!511015 d!810983))

(declare-fun m!3218353 () Bool)

(assert (=> bs!511015 m!3218353))

(assert (=> bs!511015 m!3218157))

(assert (=> bs!511015 m!3218147))

(assert (=> b!2787752 d!810983))

(declare-fun d!810985 () Bool)

(assert (=> d!810985 (= (head!6173 (drop!1727 lt!996143 testedPSize!143)) (h!37690 (drop!1727 lt!996143 testedPSize!143)))))

(assert (=> b!2787752 d!810985))

(declare-fun d!810987 () Bool)

(assert (=> d!810987 (= (head!6173 (drop!1727 lt!996143 testedPSize!143)) (apply!7553 lt!996143 testedPSize!143))))

(declare-fun lt!996228 () Unit!46490)

(declare-fun choose!16379 (List!32370 Int) Unit!46490)

(assert (=> d!810987 (= lt!996228 (choose!16379 lt!996143 testedPSize!143))))

(declare-fun e!1759600 () Bool)

(assert (=> d!810987 e!1759600))

(declare-fun res!1163319 () Bool)

(assert (=> d!810987 (=> (not res!1163319) (not e!1759600))))

(assert (=> d!810987 (= res!1163319 (>= testedPSize!143 0))))

(assert (=> d!810987 (= (lemmaDropApply!933 lt!996143 testedPSize!143) lt!996228)))

(declare-fun b!2787855 () Bool)

(assert (=> b!2787855 (= e!1759600 (< testedPSize!143 (size!25095 lt!996143)))))

(assert (= (and d!810987 res!1163319) b!2787855))

(assert (=> d!810987 m!3218117))

(assert (=> d!810987 m!3218117))

(assert (=> d!810987 m!3218125))

(assert (=> d!810987 m!3218115))

(declare-fun m!3218355 () Bool)

(assert (=> d!810987 m!3218355))

(assert (=> b!2787855 m!3218165))

(assert (=> b!2787752 d!810987))

(declare-fun d!810989 () Bool)

(declare-fun lt!996231 () C!16464)

(assert (=> d!810989 (= lt!996231 (apply!7553 (list!12147 totalInput!758) testedPSize!143))))

(declare-fun apply!7554 (Conc!10022 Int) C!16464)

(assert (=> d!810989 (= lt!996231 (apply!7554 (c!452679 totalInput!758) testedPSize!143))))

(declare-fun e!1759603 () Bool)

(assert (=> d!810989 e!1759603))

(declare-fun res!1163322 () Bool)

(assert (=> d!810989 (=> (not res!1163322) (not e!1759603))))

(assert (=> d!810989 (= res!1163322 (<= 0 testedPSize!143))))

(assert (=> d!810989 (= (apply!7552 totalInput!758 testedPSize!143) lt!996231)))

(declare-fun b!2787858 () Bool)

(assert (=> b!2787858 (= e!1759603 (< testedPSize!143 (size!25099 totalInput!758)))))

(assert (= (and d!810989 res!1163322) b!2787858))

(assert (=> d!810989 m!3218139))

(assert (=> d!810989 m!3218139))

(declare-fun m!3218357 () Bool)

(assert (=> d!810989 m!3218357))

(declare-fun m!3218359 () Bool)

(assert (=> d!810989 m!3218359))

(assert (=> b!2787858 m!3218149))

(assert (=> b!2787752 d!810989))

(declare-fun d!810991 () Bool)

(declare-fun lt!996234 () C!16464)

(declare-fun contains!6006 (List!32370 C!16464) Bool)

(assert (=> d!810991 (contains!6006 lt!996143 lt!996234)))

(declare-fun e!1759608 () C!16464)

(assert (=> d!810991 (= lt!996234 e!1759608)))

(declare-fun c!452712 () Bool)

(assert (=> d!810991 (= c!452712 (= testedPSize!143 0))))

(declare-fun e!1759609 () Bool)

(assert (=> d!810991 e!1759609))

(declare-fun res!1163325 () Bool)

(assert (=> d!810991 (=> (not res!1163325) (not e!1759609))))

(assert (=> d!810991 (= res!1163325 (<= 0 testedPSize!143))))

(assert (=> d!810991 (= (apply!7553 lt!996143 testedPSize!143) lt!996234)))

(declare-fun b!2787865 () Bool)

(assert (=> b!2787865 (= e!1759609 (< testedPSize!143 (size!25095 lt!996143)))))

(declare-fun b!2787866 () Bool)

(assert (=> b!2787866 (= e!1759608 (head!6173 lt!996143))))

(declare-fun b!2787867 () Bool)

(assert (=> b!2787867 (= e!1759608 (apply!7553 (tail!4405 lt!996143) (- testedPSize!143 1)))))

(assert (= (and d!810991 res!1163325) b!2787865))

(assert (= (and d!810991 c!452712) b!2787866))

(assert (= (and d!810991 (not c!452712)) b!2787867))

(declare-fun m!3218361 () Bool)

(assert (=> d!810991 m!3218361))

(assert (=> b!2787865 m!3218165))

(assert (=> b!2787866 m!3218207))

(assert (=> b!2787867 m!3218195))

(assert (=> b!2787867 m!3218195))

(declare-fun m!3218363 () Bool)

(assert (=> b!2787867 m!3218363))

(assert (=> b!2787752 d!810991))

(declare-fun b!2787886 () Bool)

(declare-fun e!1759623 () Int)

(declare-fun call!182525 () Int)

(assert (=> b!2787886 (= e!1759623 call!182525)))

(declare-fun b!2787887 () Bool)

(declare-fun e!1759620 () List!32370)

(declare-fun e!1759622 () List!32370)

(assert (=> b!2787887 (= e!1759620 e!1759622)))

(declare-fun c!452724 () Bool)

(assert (=> b!2787887 (= c!452724 (<= testedPSize!143 0))))

(declare-fun b!2787888 () Bool)

(declare-fun e!1759621 () Int)

(assert (=> b!2787888 (= e!1759621 0)))

(declare-fun b!2787889 () Bool)

(assert (=> b!2787889 (= e!1759622 (drop!1727 (t!228512 lt!996143) (- testedPSize!143 1)))))

(declare-fun b!2787890 () Bool)

(assert (=> b!2787890 (= e!1759622 lt!996143)))

(declare-fun bm!182520 () Bool)

(assert (=> bm!182520 (= call!182525 (size!25095 lt!996143))))

(declare-fun b!2787891 () Bool)

(assert (=> b!2787891 (= e!1759620 Nil!32270)))

(declare-fun b!2787892 () Bool)

(assert (=> b!2787892 (= e!1759621 (- call!182525 testedPSize!143))))

(declare-fun b!2787893 () Bool)

(assert (=> b!2787893 (= e!1759623 e!1759621)))

(declare-fun c!452723 () Bool)

(assert (=> b!2787893 (= c!452723 (>= testedPSize!143 call!182525))))

(declare-fun d!810993 () Bool)

(declare-fun e!1759624 () Bool)

(assert (=> d!810993 e!1759624))

(declare-fun res!1163328 () Bool)

(assert (=> d!810993 (=> (not res!1163328) (not e!1759624))))

(declare-fun lt!996237 () List!32370)

(assert (=> d!810993 (= res!1163328 (= ((_ map implies) (content!4523 lt!996237) (content!4523 lt!996143)) ((as const (InoxSet C!16464)) true)))))

(assert (=> d!810993 (= lt!996237 e!1759620)))

(declare-fun c!452721 () Bool)

(assert (=> d!810993 (= c!452721 ((_ is Nil!32270) lt!996143))))

(assert (=> d!810993 (= (drop!1727 lt!996143 testedPSize!143) lt!996237)))

(declare-fun b!2787894 () Bool)

(assert (=> b!2787894 (= e!1759624 (= (size!25095 lt!996237) e!1759623))))

(declare-fun c!452722 () Bool)

(assert (=> b!2787894 (= c!452722 (<= testedPSize!143 0))))

(assert (= (and d!810993 c!452721) b!2787891))

(assert (= (and d!810993 (not c!452721)) b!2787887))

(assert (= (and b!2787887 c!452724) b!2787890))

(assert (= (and b!2787887 (not c!452724)) b!2787889))

(assert (= (and d!810993 res!1163328) b!2787894))

(assert (= (and b!2787894 c!452722) b!2787886))

(assert (= (and b!2787894 (not c!452722)) b!2787893))

(assert (= (and b!2787893 c!452723) b!2787888))

(assert (= (and b!2787893 (not c!452723)) b!2787892))

(assert (= (or b!2787886 b!2787893 b!2787892) bm!182520))

(declare-fun m!3218365 () Bool)

(assert (=> b!2787889 m!3218365))

(assert (=> bm!182520 m!3218165))

(declare-fun m!3218367 () Bool)

(assert (=> d!810993 m!3218367))

(declare-fun m!3218369 () Bool)

(assert (=> d!810993 m!3218369))

(declare-fun m!3218371 () Bool)

(assert (=> b!2787894 m!3218371))

(assert (=> b!2787752 d!810993))

(declare-fun d!810995 () Bool)

(assert (=> d!810995 (= (head!6173 testedSuffix!143) (h!37690 testedSuffix!143))))

(assert (=> b!2787752 d!810995))

(declare-fun b!2787904 () Bool)

(declare-fun setRes!23662 () Bool)

(declare-fun e!1759632 () Bool)

(declare-fun tp!884351 () Bool)

(declare-fun e!1759633 () Bool)

(assert (=> b!2787904 (= e!1759632 (and (inv!43843 (_1!19305 (_1!19306 (h!37692 (zeroValue!4162 (v!33875 (underlying!8009 (v!33876 (underlying!8010 (cache!3952 cacheUp!890)))))))))) e!1759633 tp_is_empty!14119 setRes!23662 tp!884351))))

(declare-fun condSetEmpty!23662 () Bool)

(assert (=> b!2787904 (= condSetEmpty!23662 (= (_2!19306 (h!37692 (zeroValue!4162 (v!33875 (underlying!8009 (v!33876 (underlying!8010 (cache!3952 cacheUp!890)))))))) ((as const (Array Context!4742 Bool)) false)))))

(declare-fun setIsEmpty!23662 () Bool)

(assert (=> setIsEmpty!23662 setRes!23662))

(declare-fun b!2787905 () Bool)

(declare-fun e!1759631 () Bool)

(declare-fun tp!884352 () Bool)

(assert (=> b!2787905 (= e!1759631 tp!884352)))

(declare-fun tp!884350 () Bool)

(declare-fun setElem!23662 () Context!4742)

(declare-fun setNonEmpty!23662 () Bool)

(assert (=> setNonEmpty!23662 (= setRes!23662 (and tp!884350 (inv!43843 setElem!23662) e!1759631))))

(declare-fun setRest!23662 () (InoxSet Context!4742))

(assert (=> setNonEmpty!23662 (= (_2!19306 (h!37692 (zeroValue!4162 (v!33875 (underlying!8009 (v!33876 (underlying!8010 (cache!3952 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4742 Bool)) false) setElem!23662 true) setRest!23662))))

(declare-fun b!2787903 () Bool)

(declare-fun tp!884353 () Bool)

(assert (=> b!2787903 (= e!1759633 tp!884353)))

(assert (=> b!2787732 (= tp!884330 e!1759632)))

(assert (= b!2787904 b!2787903))

(assert (= (and b!2787904 condSetEmpty!23662) setIsEmpty!23662))

(assert (= (and b!2787904 (not condSetEmpty!23662)) setNonEmpty!23662))

(assert (= setNonEmpty!23662 b!2787905))

(assert (= (and b!2787732 ((_ is Cons!32272) (zeroValue!4162 (v!33875 (underlying!8009 (v!33876 (underlying!8010 (cache!3952 cacheUp!890)))))))) b!2787904))

(declare-fun m!3218373 () Bool)

(assert (=> b!2787904 m!3218373))

(declare-fun m!3218375 () Bool)

(assert (=> setNonEmpty!23662 m!3218375))

(declare-fun e!1759635 () Bool)

(declare-fun tp!884355 () Bool)

(declare-fun e!1759636 () Bool)

(declare-fun setRes!23663 () Bool)

(declare-fun b!2787907 () Bool)

(assert (=> b!2787907 (= e!1759635 (and (inv!43843 (_1!19305 (_1!19306 (h!37692 (minValue!4162 (v!33875 (underlying!8009 (v!33876 (underlying!8010 (cache!3952 cacheUp!890)))))))))) e!1759636 tp_is_empty!14119 setRes!23663 tp!884355))))

(declare-fun condSetEmpty!23663 () Bool)

(assert (=> b!2787907 (= condSetEmpty!23663 (= (_2!19306 (h!37692 (minValue!4162 (v!33875 (underlying!8009 (v!33876 (underlying!8010 (cache!3952 cacheUp!890)))))))) ((as const (Array Context!4742 Bool)) false)))))

(declare-fun setIsEmpty!23663 () Bool)

(assert (=> setIsEmpty!23663 setRes!23663))

(declare-fun b!2787908 () Bool)

(declare-fun e!1759634 () Bool)

(declare-fun tp!884356 () Bool)

(assert (=> b!2787908 (= e!1759634 tp!884356)))

(declare-fun setNonEmpty!23663 () Bool)

(declare-fun setElem!23663 () Context!4742)

(declare-fun tp!884354 () Bool)

(assert (=> setNonEmpty!23663 (= setRes!23663 (and tp!884354 (inv!43843 setElem!23663) e!1759634))))

(declare-fun setRest!23663 () (InoxSet Context!4742))

(assert (=> setNonEmpty!23663 (= (_2!19306 (h!37692 (minValue!4162 (v!33875 (underlying!8009 (v!33876 (underlying!8010 (cache!3952 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4742 Bool)) false) setElem!23663 true) setRest!23663))))

(declare-fun b!2787906 () Bool)

(declare-fun tp!884357 () Bool)

(assert (=> b!2787906 (= e!1759636 tp!884357)))

(assert (=> b!2787732 (= tp!884325 e!1759635)))

(assert (= b!2787907 b!2787906))

(assert (= (and b!2787907 condSetEmpty!23663) setIsEmpty!23663))

(assert (= (and b!2787907 (not condSetEmpty!23663)) setNonEmpty!23663))

(assert (= setNonEmpty!23663 b!2787908))

(assert (= (and b!2787732 ((_ is Cons!32272) (minValue!4162 (v!33875 (underlying!8009 (v!33876 (underlying!8010 (cache!3952 cacheUp!890)))))))) b!2787907))

(declare-fun m!3218377 () Bool)

(assert (=> b!2787907 m!3218377))

(declare-fun m!3218379 () Bool)

(assert (=> setNonEmpty!23663 m!3218379))

(declare-fun setIsEmpty!23668 () Bool)

(declare-fun setRes!23668 () Bool)

(assert (=> setIsEmpty!23668 setRes!23668))

(declare-fun b!2787923 () Bool)

(declare-fun e!1759654 () Bool)

(declare-fun tp!884377 () Bool)

(assert (=> b!2787923 (= e!1759654 tp!884377)))

(declare-fun setIsEmpty!23669 () Bool)

(declare-fun setRes!23669 () Bool)

(assert (=> setIsEmpty!23669 setRes!23669))

(declare-fun e!1759652 () Bool)

(declare-fun setNonEmpty!23668 () Bool)

(declare-fun tp!884383 () Bool)

(declare-fun setElem!23669 () Context!4742)

(assert (=> setNonEmpty!23668 (= setRes!23668 (and tp!884383 (inv!43843 setElem!23669) e!1759652))))

(declare-fun mapDefault!17805 () List!32372)

(declare-fun setRest!23668 () (InoxSet Context!4742))

(assert (=> setNonEmpty!23668 (= (_2!19306 (h!37692 mapDefault!17805)) ((_ map or) (store ((as const (Array Context!4742 Bool)) false) setElem!23669 true) setRest!23668))))

(declare-fun e!1759650 () Bool)

(declare-fun mapValue!17805 () List!32372)

(declare-fun tp!884379 () Bool)

(declare-fun b!2787924 () Bool)

(declare-fun e!1759651 () Bool)

(assert (=> b!2787924 (= e!1759651 (and (inv!43843 (_1!19305 (_1!19306 (h!37692 mapValue!17805)))) e!1759650 tp_is_empty!14119 setRes!23669 tp!884379))))

(declare-fun condSetEmpty!23668 () Bool)

(assert (=> b!2787924 (= condSetEmpty!23668 (= (_2!19306 (h!37692 mapValue!17805)) ((as const (Array Context!4742 Bool)) false)))))

(declare-fun tp!884382 () Bool)

(declare-fun setNonEmpty!23669 () Bool)

(declare-fun setElem!23668 () Context!4742)

(assert (=> setNonEmpty!23669 (= setRes!23669 (and tp!884382 (inv!43843 setElem!23668) e!1759654))))

(declare-fun setRest!23669 () (InoxSet Context!4742))

(assert (=> setNonEmpty!23669 (= (_2!19306 (h!37692 mapValue!17805)) ((_ map or) (store ((as const (Array Context!4742 Bool)) false) setElem!23668 true) setRest!23669))))

(declare-fun mapIsEmpty!17805 () Bool)

(declare-fun mapRes!17805 () Bool)

(assert (=> mapIsEmpty!17805 mapRes!17805))

(declare-fun b!2787925 () Bool)

(declare-fun tp!884376 () Bool)

(declare-fun e!1759649 () Bool)

(declare-fun e!1759653 () Bool)

(assert (=> b!2787925 (= e!1759653 (and (inv!43843 (_1!19305 (_1!19306 (h!37692 mapDefault!17805)))) e!1759649 tp_is_empty!14119 setRes!23668 tp!884376))))

(declare-fun condSetEmpty!23669 () Bool)

(assert (=> b!2787925 (= condSetEmpty!23669 (= (_2!19306 (h!37692 mapDefault!17805)) ((as const (Array Context!4742 Bool)) false)))))

(declare-fun b!2787926 () Bool)

(declare-fun tp!884378 () Bool)

(assert (=> b!2787926 (= e!1759650 tp!884378)))

(declare-fun b!2787927 () Bool)

(declare-fun tp!884384 () Bool)

(assert (=> b!2787927 (= e!1759649 tp!884384)))

(declare-fun condMapEmpty!17805 () Bool)

(assert (=> mapNonEmpty!17801 (= condMapEmpty!17805 (= mapRest!17801 ((as const (Array (_ BitVec 32) List!32372)) mapDefault!17805)))))

(assert (=> mapNonEmpty!17801 (= tp!884340 (and e!1759653 mapRes!17805))))

(declare-fun b!2787928 () Bool)

(declare-fun tp!884381 () Bool)

(assert (=> b!2787928 (= e!1759652 tp!884381)))

(declare-fun mapNonEmpty!17805 () Bool)

(declare-fun tp!884380 () Bool)

(assert (=> mapNonEmpty!17805 (= mapRes!17805 (and tp!884380 e!1759651))))

(declare-fun mapKey!17805 () (_ BitVec 32))

(declare-fun mapRest!17805 () (Array (_ BitVec 32) List!32372))

(assert (=> mapNonEmpty!17805 (= mapRest!17801 (store mapRest!17805 mapKey!17805 mapValue!17805))))

(assert (= (and mapNonEmpty!17801 condMapEmpty!17805) mapIsEmpty!17805))

(assert (= (and mapNonEmpty!17801 (not condMapEmpty!17805)) mapNonEmpty!17805))

(assert (= b!2787924 b!2787926))

(assert (= (and b!2787924 condSetEmpty!23668) setIsEmpty!23669))

(assert (= (and b!2787924 (not condSetEmpty!23668)) setNonEmpty!23669))

(assert (= setNonEmpty!23669 b!2787923))

(assert (= (and mapNonEmpty!17805 ((_ is Cons!32272) mapValue!17805)) b!2787924))

(assert (= b!2787925 b!2787927))

(assert (= (and b!2787925 condSetEmpty!23669) setIsEmpty!23668))

(assert (= (and b!2787925 (not condSetEmpty!23669)) setNonEmpty!23668))

(assert (= setNonEmpty!23668 b!2787928))

(assert (= (and mapNonEmpty!17801 ((_ is Cons!32272) mapDefault!17805)) b!2787925))

(declare-fun m!3218381 () Bool)

(assert (=> b!2787925 m!3218381))

(declare-fun m!3218383 () Bool)

(assert (=> b!2787924 m!3218383))

(declare-fun m!3218385 () Bool)

(assert (=> setNonEmpty!23669 m!3218385))

(declare-fun m!3218387 () Bool)

(assert (=> setNonEmpty!23668 m!3218387))

(declare-fun m!3218389 () Bool)

(assert (=> mapNonEmpty!17805 m!3218389))

(declare-fun e!1759656 () Bool)

(declare-fun tp!884386 () Bool)

(declare-fun setRes!23670 () Bool)

(declare-fun e!1759657 () Bool)

(declare-fun b!2787930 () Bool)

(assert (=> b!2787930 (= e!1759656 (and (inv!43843 (_1!19305 (_1!19306 (h!37692 mapValue!17801)))) e!1759657 tp_is_empty!14119 setRes!23670 tp!884386))))

(declare-fun condSetEmpty!23670 () Bool)

(assert (=> b!2787930 (= condSetEmpty!23670 (= (_2!19306 (h!37692 mapValue!17801)) ((as const (Array Context!4742 Bool)) false)))))

(declare-fun setIsEmpty!23670 () Bool)

(assert (=> setIsEmpty!23670 setRes!23670))

(declare-fun b!2787931 () Bool)

(declare-fun e!1759655 () Bool)

(declare-fun tp!884387 () Bool)

(assert (=> b!2787931 (= e!1759655 tp!884387)))

(declare-fun setNonEmpty!23670 () Bool)

(declare-fun setElem!23670 () Context!4742)

(declare-fun tp!884385 () Bool)

(assert (=> setNonEmpty!23670 (= setRes!23670 (and tp!884385 (inv!43843 setElem!23670) e!1759655))))

(declare-fun setRest!23670 () (InoxSet Context!4742))

(assert (=> setNonEmpty!23670 (= (_2!19306 (h!37692 mapValue!17801)) ((_ map or) (store ((as const (Array Context!4742 Bool)) false) setElem!23670 true) setRest!23670))))

(declare-fun b!2787929 () Bool)

(declare-fun tp!884388 () Bool)

(assert (=> b!2787929 (= e!1759657 tp!884388)))

(assert (=> mapNonEmpty!17801 (= tp!884335 e!1759656)))

(assert (= b!2787930 b!2787929))

(assert (= (and b!2787930 condSetEmpty!23670) setIsEmpty!23670))

(assert (= (and b!2787930 (not condSetEmpty!23670)) setNonEmpty!23670))

(assert (= setNonEmpty!23670 b!2787931))

(assert (= (and mapNonEmpty!17801 ((_ is Cons!32272) mapValue!17801)) b!2787930))

(declare-fun m!3218391 () Bool)

(assert (=> b!2787930 m!3218391))

(declare-fun m!3218393 () Bool)

(assert (=> setNonEmpty!23670 m!3218393))

(declare-fun setRes!23671 () Bool)

(declare-fun tp!884390 () Bool)

(declare-fun e!1759659 () Bool)

(declare-fun e!1759660 () Bool)

(declare-fun b!2787933 () Bool)

(assert (=> b!2787933 (= e!1759659 (and (inv!43843 (_1!19305 (_1!19306 (h!37692 mapDefault!17801)))) e!1759660 tp_is_empty!14119 setRes!23671 tp!884390))))

(declare-fun condSetEmpty!23671 () Bool)

(assert (=> b!2787933 (= condSetEmpty!23671 (= (_2!19306 (h!37692 mapDefault!17801)) ((as const (Array Context!4742 Bool)) false)))))

(declare-fun setIsEmpty!23671 () Bool)

(assert (=> setIsEmpty!23671 setRes!23671))

(declare-fun b!2787934 () Bool)

(declare-fun e!1759658 () Bool)

(declare-fun tp!884391 () Bool)

(assert (=> b!2787934 (= e!1759658 tp!884391)))

(declare-fun tp!884389 () Bool)

(declare-fun setNonEmpty!23671 () Bool)

(declare-fun setElem!23671 () Context!4742)

(assert (=> setNonEmpty!23671 (= setRes!23671 (and tp!884389 (inv!43843 setElem!23671) e!1759658))))

(declare-fun setRest!23671 () (InoxSet Context!4742))

(assert (=> setNonEmpty!23671 (= (_2!19306 (h!37692 mapDefault!17801)) ((_ map or) (store ((as const (Array Context!4742 Bool)) false) setElem!23671 true) setRest!23671))))

(declare-fun b!2787932 () Bool)

(declare-fun tp!884392 () Bool)

(assert (=> b!2787932 (= e!1759660 tp!884392)))

(assert (=> b!2787731 (= tp!884324 e!1759659)))

(assert (= b!2787933 b!2787932))

(assert (= (and b!2787933 condSetEmpty!23671) setIsEmpty!23671))

(assert (= (and b!2787933 (not condSetEmpty!23671)) setNonEmpty!23671))

(assert (= setNonEmpty!23671 b!2787934))

(assert (= (and b!2787731 ((_ is Cons!32272) mapDefault!17801)) b!2787933))

(declare-fun m!3218395 () Bool)

(assert (=> b!2787933 m!3218395))

(declare-fun m!3218397 () Bool)

(assert (=> setNonEmpty!23671 m!3218397))

(declare-fun b!2787943 () Bool)

(declare-fun e!1759667 () Bool)

(declare-fun tp!884405 () Bool)

(assert (=> b!2787943 (= e!1759667 tp!884405)))

(declare-fun setIsEmpty!23674 () Bool)

(declare-fun setRes!23674 () Bool)

(assert (=> setIsEmpty!23674 setRes!23674))

(declare-fun e!1759668 () Bool)

(declare-fun tp!884403 () Bool)

(declare-fun tp!884406 () Bool)

(declare-fun b!2787944 () Bool)

(assert (=> b!2787944 (= e!1759668 (and tp!884403 (inv!43843 (_2!19307 (_1!19308 (h!37693 (zeroValue!4163 (v!33877 (underlying!8011 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009)))))))))) e!1759667 tp_is_empty!14119 setRes!23674 tp!884406))))

(declare-fun condSetEmpty!23674 () Bool)

(assert (=> b!2787944 (= condSetEmpty!23674 (= (_2!19308 (h!37693 (zeroValue!4163 (v!33877 (underlying!8011 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009)))))))) ((as const (Array Context!4742 Bool)) false)))))

(assert (=> b!2787730 (= tp!884323 e!1759668)))

(declare-fun tp!884407 () Bool)

(declare-fun setElem!23674 () Context!4742)

(declare-fun setNonEmpty!23674 () Bool)

(declare-fun e!1759669 () Bool)

(assert (=> setNonEmpty!23674 (= setRes!23674 (and tp!884407 (inv!43843 setElem!23674) e!1759669))))

(declare-fun setRest!23674 () (InoxSet Context!4742))

(assert (=> setNonEmpty!23674 (= (_2!19308 (h!37693 (zeroValue!4163 (v!33877 (underlying!8011 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4742 Bool)) false) setElem!23674 true) setRest!23674))))

(declare-fun b!2787945 () Bool)

(declare-fun tp!884404 () Bool)

(assert (=> b!2787945 (= e!1759669 tp!884404)))

(assert (= b!2787944 b!2787943))

(assert (= (and b!2787944 condSetEmpty!23674) setIsEmpty!23674))

(assert (= (and b!2787944 (not condSetEmpty!23674)) setNonEmpty!23674))

(assert (= setNonEmpty!23674 b!2787945))

(assert (= (and b!2787730 ((_ is Cons!32273) (zeroValue!4163 (v!33877 (underlying!8011 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009)))))))) b!2787944))

(declare-fun m!3218399 () Bool)

(assert (=> b!2787944 m!3218399))

(declare-fun m!3218401 () Bool)

(assert (=> setNonEmpty!23674 m!3218401))

(declare-fun b!2787946 () Bool)

(declare-fun e!1759670 () Bool)

(declare-fun tp!884410 () Bool)

(assert (=> b!2787946 (= e!1759670 tp!884410)))

(declare-fun setIsEmpty!23675 () Bool)

(declare-fun setRes!23675 () Bool)

(assert (=> setIsEmpty!23675 setRes!23675))

(declare-fun b!2787947 () Bool)

(declare-fun e!1759671 () Bool)

(declare-fun tp!884408 () Bool)

(declare-fun tp!884411 () Bool)

(assert (=> b!2787947 (= e!1759671 (and tp!884408 (inv!43843 (_2!19307 (_1!19308 (h!37693 (minValue!4163 (v!33877 (underlying!8011 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009)))))))))) e!1759670 tp_is_empty!14119 setRes!23675 tp!884411))))

(declare-fun condSetEmpty!23675 () Bool)

(assert (=> b!2787947 (= condSetEmpty!23675 (= (_2!19308 (h!37693 (minValue!4163 (v!33877 (underlying!8011 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009)))))))) ((as const (Array Context!4742 Bool)) false)))))

(assert (=> b!2787730 (= tp!884332 e!1759671)))

(declare-fun setElem!23675 () Context!4742)

(declare-fun e!1759672 () Bool)

(declare-fun setNonEmpty!23675 () Bool)

(declare-fun tp!884412 () Bool)

(assert (=> setNonEmpty!23675 (= setRes!23675 (and tp!884412 (inv!43843 setElem!23675) e!1759672))))

(declare-fun setRest!23675 () (InoxSet Context!4742))

(assert (=> setNonEmpty!23675 (= (_2!19308 (h!37693 (minValue!4163 (v!33877 (underlying!8011 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4742 Bool)) false) setElem!23675 true) setRest!23675))))

(declare-fun b!2787948 () Bool)

(declare-fun tp!884409 () Bool)

(assert (=> b!2787948 (= e!1759672 tp!884409)))

(assert (= b!2787947 b!2787946))

(assert (= (and b!2787947 condSetEmpty!23675) setIsEmpty!23675))

(assert (= (and b!2787947 (not condSetEmpty!23675)) setNonEmpty!23675))

(assert (= setNonEmpty!23675 b!2787948))

(assert (= (and b!2787730 ((_ is Cons!32273) (minValue!4163 (v!33877 (underlying!8011 (v!33878 (underlying!8012 (cache!3953 cacheDown!1009)))))))) b!2787947))

(declare-fun m!3218403 () Bool)

(assert (=> b!2787947 m!3218403))

(declare-fun m!3218405 () Bool)

(assert (=> setNonEmpty!23675 m!3218405))

(declare-fun b!2787963 () Bool)

(declare-fun e!1759688 () Bool)

(declare-fun tp!884435 () Bool)

(assert (=> b!2787963 (= e!1759688 tp!884435)))

(declare-fun setIsEmpty!23680 () Bool)

(declare-fun setRes!23680 () Bool)

(assert (=> setIsEmpty!23680 setRes!23680))

(declare-fun condMapEmpty!17808 () Bool)

(declare-fun mapDefault!17808 () List!32373)

(assert (=> mapNonEmpty!17802 (= condMapEmpty!17808 (= mapRest!17802 ((as const (Array (_ BitVec 32) List!32373)) mapDefault!17808)))))

(declare-fun e!1759685 () Bool)

(declare-fun mapRes!17808 () Bool)

(assert (=> mapNonEmpty!17802 (= tp!884337 (and e!1759685 mapRes!17808))))

(declare-fun b!2787964 () Bool)

(declare-fun e!1759687 () Bool)

(declare-fun tp!884438 () Bool)

(assert (=> b!2787964 (= e!1759687 tp!884438)))

(declare-fun b!2787965 () Bool)

(declare-fun e!1759686 () Bool)

(declare-fun tp!884441 () Bool)

(assert (=> b!2787965 (= e!1759686 tp!884441)))

(declare-fun mapIsEmpty!17808 () Bool)

(assert (=> mapIsEmpty!17808 mapRes!17808))

(declare-fun tp!884444 () Bool)

(declare-fun b!2787966 () Bool)

(declare-fun setRes!23681 () Bool)

(declare-fun mapValue!17808 () List!32373)

(declare-fun tp!884439 () Bool)

(declare-fun e!1759690 () Bool)

(assert (=> b!2787966 (= e!1759690 (and tp!884439 (inv!43843 (_2!19307 (_1!19308 (h!37693 mapValue!17808)))) e!1759686 tp_is_empty!14119 setRes!23681 tp!884444))))

(declare-fun condSetEmpty!23680 () Bool)

(assert (=> b!2787966 (= condSetEmpty!23680 (= (_2!19308 (h!37693 mapValue!17808)) ((as const (Array Context!4742 Bool)) false)))))

(declare-fun setNonEmpty!23680 () Bool)

(declare-fun e!1759689 () Bool)

(declare-fun setElem!23681 () Context!4742)

(declare-fun tp!884440 () Bool)

(assert (=> setNonEmpty!23680 (= setRes!23681 (and tp!884440 (inv!43843 setElem!23681) e!1759689))))

(declare-fun setRest!23680 () (InoxSet Context!4742))

(assert (=> setNonEmpty!23680 (= (_2!19308 (h!37693 mapValue!17808)) ((_ map or) (store ((as const (Array Context!4742 Bool)) false) setElem!23681 true) setRest!23680))))

(declare-fun b!2787967 () Bool)

(declare-fun tp!884437 () Bool)

(assert (=> b!2787967 (= e!1759689 tp!884437)))

(declare-fun mapNonEmpty!17808 () Bool)

(declare-fun tp!884436 () Bool)

(assert (=> mapNonEmpty!17808 (= mapRes!17808 (and tp!884436 e!1759690))))

(declare-fun mapKey!17808 () (_ BitVec 32))

(declare-fun mapRest!17808 () (Array (_ BitVec 32) List!32373))

(assert (=> mapNonEmpty!17808 (= mapRest!17802 (store mapRest!17808 mapKey!17808 mapValue!17808))))

(declare-fun setNonEmpty!23681 () Bool)

(declare-fun tp!884443 () Bool)

(declare-fun setElem!23680 () Context!4742)

(assert (=> setNonEmpty!23681 (= setRes!23680 (and tp!884443 (inv!43843 setElem!23680) e!1759688))))

(declare-fun setRest!23681 () (InoxSet Context!4742))

(assert (=> setNonEmpty!23681 (= (_2!19308 (h!37693 mapDefault!17808)) ((_ map or) (store ((as const (Array Context!4742 Bool)) false) setElem!23680 true) setRest!23681))))

(declare-fun tp!884445 () Bool)

(declare-fun tp!884442 () Bool)

(declare-fun b!2787968 () Bool)

(assert (=> b!2787968 (= e!1759685 (and tp!884445 (inv!43843 (_2!19307 (_1!19308 (h!37693 mapDefault!17808)))) e!1759687 tp_is_empty!14119 setRes!23680 tp!884442))))

(declare-fun condSetEmpty!23681 () Bool)

(assert (=> b!2787968 (= condSetEmpty!23681 (= (_2!19308 (h!37693 mapDefault!17808)) ((as const (Array Context!4742 Bool)) false)))))

(declare-fun setIsEmpty!23681 () Bool)

(assert (=> setIsEmpty!23681 setRes!23681))

(assert (= (and mapNonEmpty!17802 condMapEmpty!17808) mapIsEmpty!17808))

(assert (= (and mapNonEmpty!17802 (not condMapEmpty!17808)) mapNonEmpty!17808))

(assert (= b!2787966 b!2787965))

(assert (= (and b!2787966 condSetEmpty!23680) setIsEmpty!23681))

(assert (= (and b!2787966 (not condSetEmpty!23680)) setNonEmpty!23680))

(assert (= setNonEmpty!23680 b!2787967))

(assert (= (and mapNonEmpty!17808 ((_ is Cons!32273) mapValue!17808)) b!2787966))

(assert (= b!2787968 b!2787964))

(assert (= (and b!2787968 condSetEmpty!23681) setIsEmpty!23680))

(assert (= (and b!2787968 (not condSetEmpty!23681)) setNonEmpty!23681))

(assert (= setNonEmpty!23681 b!2787963))

(assert (= (and mapNonEmpty!17802 ((_ is Cons!32273) mapDefault!17808)) b!2787968))

(declare-fun m!3218407 () Bool)

(assert (=> setNonEmpty!23681 m!3218407))

(declare-fun m!3218409 () Bool)

(assert (=> mapNonEmpty!17808 m!3218409))

(declare-fun m!3218411 () Bool)

(assert (=> setNonEmpty!23680 m!3218411))

(declare-fun m!3218413 () Bool)

(assert (=> b!2787968 m!3218413))

(declare-fun m!3218415 () Bool)

(assert (=> b!2787966 m!3218415))

(declare-fun b!2787969 () Bool)

(declare-fun e!1759691 () Bool)

(declare-fun tp!884448 () Bool)

(assert (=> b!2787969 (= e!1759691 tp!884448)))

(declare-fun setIsEmpty!23682 () Bool)

(declare-fun setRes!23682 () Bool)

(assert (=> setIsEmpty!23682 setRes!23682))

(declare-fun tp!884446 () Bool)

(declare-fun b!2787970 () Bool)

(declare-fun e!1759692 () Bool)

(declare-fun tp!884449 () Bool)

(assert (=> b!2787970 (= e!1759692 (and tp!884446 (inv!43843 (_2!19307 (_1!19308 (h!37693 mapValue!17802)))) e!1759691 tp_is_empty!14119 setRes!23682 tp!884449))))

(declare-fun condSetEmpty!23682 () Bool)

(assert (=> b!2787970 (= condSetEmpty!23682 (= (_2!19308 (h!37693 mapValue!17802)) ((as const (Array Context!4742 Bool)) false)))))

(assert (=> mapNonEmpty!17802 (= tp!884327 e!1759692)))

(declare-fun tp!884450 () Bool)

(declare-fun setElem!23682 () Context!4742)

(declare-fun setNonEmpty!23682 () Bool)

(declare-fun e!1759693 () Bool)

(assert (=> setNonEmpty!23682 (= setRes!23682 (and tp!884450 (inv!43843 setElem!23682) e!1759693))))

(declare-fun setRest!23682 () (InoxSet Context!4742))

(assert (=> setNonEmpty!23682 (= (_2!19308 (h!37693 mapValue!17802)) ((_ map or) (store ((as const (Array Context!4742 Bool)) false) setElem!23682 true) setRest!23682))))

(declare-fun b!2787971 () Bool)

(declare-fun tp!884447 () Bool)

(assert (=> b!2787971 (= e!1759693 tp!884447)))

(assert (= b!2787970 b!2787969))

(assert (= (and b!2787970 condSetEmpty!23682) setIsEmpty!23682))

(assert (= (and b!2787970 (not condSetEmpty!23682)) setNonEmpty!23682))

(assert (= setNonEmpty!23682 b!2787971))

(assert (= (and mapNonEmpty!17802 ((_ is Cons!32273) mapValue!17802)) b!2787970))

(declare-fun m!3218417 () Bool)

(assert (=> b!2787970 m!3218417))

(declare-fun m!3218419 () Bool)

(assert (=> setNonEmpty!23682 m!3218419))

(declare-fun b!2787976 () Bool)

(declare-fun e!1759696 () Bool)

(declare-fun tp!884453 () Bool)

(assert (=> b!2787976 (= e!1759696 (and tp_is_empty!14119 tp!884453))))

(assert (=> b!2787749 (= tp!884333 e!1759696)))

(assert (= (and b!2787749 ((_ is Cons!32270) (t!228512 testedP!183))) b!2787976))

(declare-fun tp!884462 () Bool)

(declare-fun e!1759702 () Bool)

(declare-fun tp!884460 () Bool)

(declare-fun b!2787985 () Bool)

(assert (=> b!2787985 (= e!1759702 (and (inv!43844 (left!24490 (c!452679 totalInput!758))) tp!884460 (inv!43844 (right!24820 (c!452679 totalInput!758))) tp!884462))))

(declare-fun b!2787987 () Bool)

(declare-fun e!1759701 () Bool)

(declare-fun tp!884461 () Bool)

(assert (=> b!2787987 (= e!1759701 tp!884461)))

(declare-fun b!2787986 () Bool)

(declare-fun inv!43850 (IArray!20049) Bool)

(assert (=> b!2787986 (= e!1759702 (and (inv!43850 (xs!13133 (c!452679 totalInput!758))) e!1759701))))

(assert (=> b!2787736 (= tp!884328 (and (inv!43844 (c!452679 totalInput!758)) e!1759702))))

(assert (= (and b!2787736 ((_ is Node!10022) (c!452679 totalInput!758))) b!2787985))

(assert (= b!2787986 b!2787987))

(assert (= (and b!2787736 ((_ is Leaf!15267) (c!452679 totalInput!758))) b!2787986))

(declare-fun m!3218421 () Bool)

(assert (=> b!2787985 m!3218421))

(declare-fun m!3218423 () Bool)

(assert (=> b!2787985 m!3218423))

(declare-fun m!3218425 () Bool)

(assert (=> b!2787986 m!3218425))

(assert (=> b!2787736 m!3218131))

(declare-fun b!2787988 () Bool)

(declare-fun e!1759703 () Bool)

(declare-fun tp!884465 () Bool)

(assert (=> b!2787988 (= e!1759703 tp!884465)))

(declare-fun setIsEmpty!23683 () Bool)

(declare-fun setRes!23683 () Bool)

(assert (=> setIsEmpty!23683 setRes!23683))

(declare-fun tp!884466 () Bool)

(declare-fun tp!884463 () Bool)

(declare-fun b!2787989 () Bool)

(declare-fun e!1759704 () Bool)

(assert (=> b!2787989 (= e!1759704 (and tp!884463 (inv!43843 (_2!19307 (_1!19308 (h!37693 mapDefault!17802)))) e!1759703 tp_is_empty!14119 setRes!23683 tp!884466))))

(declare-fun condSetEmpty!23683 () Bool)

(assert (=> b!2787989 (= condSetEmpty!23683 (= (_2!19308 (h!37693 mapDefault!17802)) ((as const (Array Context!4742 Bool)) false)))))

(assert (=> b!2787728 (= tp!884331 e!1759704)))

(declare-fun setElem!23683 () Context!4742)

(declare-fun tp!884467 () Bool)

(declare-fun setNonEmpty!23683 () Bool)

(declare-fun e!1759705 () Bool)

(assert (=> setNonEmpty!23683 (= setRes!23683 (and tp!884467 (inv!43843 setElem!23683) e!1759705))))

(declare-fun setRest!23683 () (InoxSet Context!4742))

(assert (=> setNonEmpty!23683 (= (_2!19308 (h!37693 mapDefault!17802)) ((_ map or) (store ((as const (Array Context!4742 Bool)) false) setElem!23683 true) setRest!23683))))

(declare-fun b!2787990 () Bool)

(declare-fun tp!884464 () Bool)

(assert (=> b!2787990 (= e!1759705 tp!884464)))

(assert (= b!2787989 b!2787988))

(assert (= (and b!2787989 condSetEmpty!23683) setIsEmpty!23683))

(assert (= (and b!2787989 (not condSetEmpty!23683)) setNonEmpty!23683))

(assert (= setNonEmpty!23683 b!2787990))

(assert (= (and b!2787728 ((_ is Cons!32273) mapDefault!17802)) b!2787989))

(declare-fun m!3218427 () Bool)

(assert (=> b!2787989 m!3218427))

(declare-fun m!3218429 () Bool)

(assert (=> setNonEmpty!23683 m!3218429))

(declare-fun b!2787991 () Bool)

(declare-fun e!1759706 () Bool)

(declare-fun tp!884468 () Bool)

(assert (=> b!2787991 (= e!1759706 (and tp_is_empty!14119 tp!884468))))

(assert (=> b!2787725 (= tp!884336 e!1759706)))

(assert (= (and b!2787725 ((_ is Cons!32270) (t!228512 testedSuffix!143))) b!2787991))

(declare-fun condSetEmpty!23686 () Bool)

(assert (=> setNonEmpty!23659 (= condSetEmpty!23686 (= setRest!23659 ((as const (Array Context!4742 Bool)) false)))))

(declare-fun setRes!23686 () Bool)

(assert (=> setNonEmpty!23659 (= tp!884326 setRes!23686)))

(declare-fun setIsEmpty!23686 () Bool)

(assert (=> setIsEmpty!23686 setRes!23686))

(declare-fun setNonEmpty!23686 () Bool)

(declare-fun setElem!23686 () Context!4742)

(declare-fun tp!884474 () Bool)

(declare-fun e!1759709 () Bool)

(assert (=> setNonEmpty!23686 (= setRes!23686 (and tp!884474 (inv!43843 setElem!23686) e!1759709))))

(declare-fun setRest!23686 () (InoxSet Context!4742))

(assert (=> setNonEmpty!23686 (= setRest!23659 ((_ map or) (store ((as const (Array Context!4742 Bool)) false) setElem!23686 true) setRest!23686))))

(declare-fun b!2787996 () Bool)

(declare-fun tp!884473 () Bool)

(assert (=> b!2787996 (= e!1759709 tp!884473)))

(assert (= (and setNonEmpty!23659 condSetEmpty!23686) setIsEmpty!23686))

(assert (= (and setNonEmpty!23659 (not condSetEmpty!23686)) setNonEmpty!23686))

(assert (= setNonEmpty!23686 b!2787996))

(declare-fun m!3218431 () Bool)

(assert (=> setNonEmpty!23686 m!3218431))

(declare-fun b!2788001 () Bool)

(declare-fun e!1759712 () Bool)

(declare-fun tp!884479 () Bool)

(declare-fun tp!884480 () Bool)

(assert (=> b!2788001 (= e!1759712 (and tp!884479 tp!884480))))

(assert (=> b!2787724 (= tp!884334 e!1759712)))

(assert (= (and b!2787724 ((_ is Cons!32271) (exprs!2871 setElem!23659))) b!2788001))

(check-sat (not d!810969) tp_is_empty!14119 (not b!2787812) (not b!2787968) (not b_next!79557) (not b!2787976) (not b!2787925) (not bm!182517) (not b!2787786) (not b!2787963) (not b!2787908) (not b!2787736) (not d!810993) (not d!810965) (not b!2787842) (not b!2787771) (not setNonEmpty!23683) (not setNonEmpty!23668) (not b!2788001) (not b_next!79561) (not b!2787783) (not b!2787996) (not b!2787834) (not d!810991) (not bm!182516) (not b!2787843) (not b!2787805) (not bm!182520) (not b!2787855) (not b!2787800) (not b!2787923) (not setNonEmpty!23674) (not b!2787966) (not d!810913) (not b!2787906) (not b!2787764) (not b!2787781) (not b!2787965) (not b!2787849) (not b!2787866) (not d!810967) (not b!2787822) (not b!2787850) (not d!810955) (not d!810973) (not b!2787931) (not setNonEmpty!23681) (not b!2787907) (not b!2787826) (not b!2787809) (not setNonEmpty!23682) (not setNonEmpty!23669) (not b!2787985) (not d!810947) (not b!2787932) (not d!810931) (not b!2787830) (not b!2787989) (not b!2787988) (not b!2787945) (not d!810963) (not d!810945) (not b!2787933) (not d!810941) (not b!2787991) (not b_next!79563) (not b!2787759) (not b!2787927) (not d!810961) (not b!2787838) (not d!810983) (not b!2787946) (not b!2787986) (not b!2787785) (not b!2787969) (not b!2787903) (not b!2787791) (not b!2787934) (not b!2787947) (not setNonEmpty!23663) (not d!810971) (not b!2787858) (not b!2787790) (not b!2787970) (not setNonEmpty!23662) (not b!2787839) (not b!2787867) (not b!2787758) (not b!2787944) (not mapNonEmpty!17808) (not b!2787928) (not d!810925) (not b!2787787) (not b!2787948) (not b!2787894) (not b!2787823) (not b!2787798) (not d!810927) (not d!810989) (not b!2787967) (not d!810975) (not setNonEmpty!23675) (not d!810977) b_and!203593 (not b!2787926) (not b!2787865) b_and!203597 b_and!203591 (not b!2787905) (not b!2787987) (not d!810911) (not setNonEmpty!23686) (not b!2787835) (not b!2787964) (not b!2787789) (not b!2787828) (not b!2787943) (not d!810909) b_and!203595 (not b!2787924) (not b!2787971) (not b!2787782) (not b!2787904) (not b!2787806) (not d!810905) (not b!2787827) (not d!810981) (not b!2787929) (not d!810937) (not d!810949) (not b!2787889) (not mapNonEmpty!17805) (not setNonEmpty!23671) (not d!810935) (not b!2787990) (not setNonEmpty!23670) (not b_next!79559) (not d!810953) (not d!810987) (not setNonEmpty!23680) (not b!2787831) (not b!2787852) (not b!2787930) (not d!810907))
(check-sat (not b_next!79557) (not b_next!79561) (not b_next!79563) b_and!203591 b_and!203595 (not b_next!79559) b_and!203597 b_and!203593)
